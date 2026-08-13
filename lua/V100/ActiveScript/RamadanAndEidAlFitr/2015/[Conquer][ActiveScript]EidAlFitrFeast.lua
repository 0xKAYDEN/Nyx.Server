------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]开斋的盛宴
--Purpose:		2015年斋月节和开斋节活动之开斋的盛宴
--Creator: 		郑鋆
--Created:		2015/3/20
------------------------------------------------------------------------------------
-- 命名规则
-- EidAlFitrFeast2015_

-- 掩码说明
-- stc(133,71) 0未接，1已接，2完成
-- stc(133,72) 玩家上交的最大数
-- stc(133,73) 当日奖励领取过

-- 常量表
local tEidAlFitrFeast2015_Constant = {}
	-- 活动时间
	tEidAlFitrFeast2015_Constant["BeforeActivityTime"] = "2017-03-17 00:00 2017-06-24 23:59"
	tEidAlFitrFeast2015_Constant["ActivityTime"] = "2017-06-25 00:00 2017-06-27 23:59"
	tEidAlFitrFeast2015_Constant["RewardTime"] = "2017-06-26 00:00 2017-06-28 23:59"
	
	-- 玩家等级要求
	tEidAlFitrFeast2015_Constant["Metempsychosis"] = 0
	tEidAlFitrFeast2015_Constant["Level"] = 80
	
	-- stc掩码
	tEidAlFitrFeast2015_Constant["EventType"] = 133
	tEidAlFitrFeast2015_Constant[1] = {}
	tEidAlFitrFeast2015_Constant[1]["DataType"] = 71
	tEidAlFitrFeast2015_Constant[2] = {}
	tEidAlFitrFeast2015_Constant[2]["DataType"] = 72
	tEidAlFitrFeast2015_Constant[3] = {}
	tEidAlFitrFeast2015_Constant[3]["DataType"] = 73
	
	tEidAlFitrFeast2015_Constant["AcceptData"] = 1
	tEidAlFitrFeast2015_Constant["CompleteData"] = 2
	
	-- 任务时间
	tEidAlFitrFeast2015_Constant["TaskTime"] = 60
	
	-- 需要的背包空间
	tEidAlFitrFeast2015_Constant["ItemSpace"] = 1
	
	-- 任务需求物品数量
	tEidAlFitrFeast2015_Constant["CompleteNum"] = 10
	
	tEidAlFitrFeast2015_Constant["AddAttr"] = "0 %d"
	
	-- 牛肉	3006173
	tEidAlFitrFeast2015_Constant["BeefItem"] = 3006173
	-- 花生 3006174
	tEidAlFitrFeast2015_Constant["PeanutItem"] = 3006174
	-- 鲜果 3006175
	tEidAlFitrFeast2015_Constant["FreshFruitItem"] = 3006175
	
	-- 上交物品光效
	tEidAlFitrFeast2015_Constant["HandFoodEffect"] = "dispel"
	tEidAlFitrFeast2015_Constant["RewardEffect"] = "relive1"

	tEidAlFitrFeast2015_Constant["FestivalId"] = 3422
	tEidAlFitrFeast2015_Constant["LogId"] = 12000056
	tEidAlFitrFeast2015_Constant["RewardItemLog"] = "0,0,0,0,12000056,2,%d,%d"
	
	-- 首名奖励
	tEidAlFitrFeast2015_Constant["FirstItemId"] = 1088000
	tEidAlFitrFeast2015_Constant["FirstLog"] = "0,0,0,0,12000056,2,1088000,1"
	tEidAlFitrFeast2015_Constant["FirstEffect"] = "accession5"
	
	-- 摘花生和果子的范围
	tEidAlFitrFeast2015_Constant["SubRange"] = 5
	tEidAlFitrFeast2015_Constant["AddRange"] = 10
	
	-- 读条
	tEidAlFitrFeast2015_Constant["Secs"] = {}
	tEidAlFitrFeast2015_Constant["Secs"][1] = 3
	tEidAlFitrFeast2015_Constant["Secs"][2] = 6
	tEidAlFitrFeast2015_Constant["ActionId"] = 220
	
	-- 自动寻路
	tEidAlFitrFeast2015_Constant["Goto"] = {}
	tEidAlFitrFeast2015_Constant["Goto"]["NpcId"] = 18396
	tEidAlFitrFeast2015_Constant["Goto"]["MapId"] = 3934
	tEidAlFitrFeast2015_Constant["Goto"]["PosX"] = 40
	tEidAlFitrFeast2015_Constant["Goto"]["PosY"] = 56
	
	-- 弓手职业ID
	tEidAlFitrFeast2015_Constant["MinPro"] = 40
	tEidAlFitrFeast2015_Constant["MaxPro"] = 45

-- 活动地图坐标配置
local tEidAlFitrFeast2015_MapInfo = {}
	tEidAlFitrFeast2015_MapInfo[1] = {}
	tEidAlFitrFeast2015_MapInfo[1]["MapId"] = 3934
	tEidAlFitrFeast2015_MapInfo[1]["BoundX"] = 43
	tEidAlFitrFeast2015_MapInfo[1]["BoundY"] = 52
	tEidAlFitrFeast2015_MapInfo[1]["BoundCX"] = 3
	tEidAlFitrFeast2015_MapInfo[1]["BoundCY"] = 3
	tEidAlFitrFeast2015_MapInfo[1]["Time"] = "2017-06-25 00:00 2017-06-28 23:59"
	
	tEidAlFitrFeast2015_MapInfo[2] = {}
	tEidAlFitrFeast2015_MapInfo[2]["MapId"] = 1002
	tEidAlFitrFeast2015_MapInfo[2]["BoundX"] = 273
	tEidAlFitrFeast2015_MapInfo[2]["BoundY"] = 385
	tEidAlFitrFeast2015_MapInfo[2]["BoundCX"] = 3
	tEidAlFitrFeast2015_MapInfo[2]["BoundCY"] = 3
	tEidAlFitrFeast2015_MapInfo[2]["Time"] = "2017-03-18 00:00 2017-06-28 23:59"

-- 首位动态存储配置
local tEidAlFitrFeast2015_Global = {}
	tEidAlFitrFeast2015_Global[1] = {}
	tEidAlFitrFeast2015_Global[1]["Time"] = "2017-06-25 00:00 2017-06-25 23:59"
	tEidAlFitrFeast2015_Global[1]["RewardTime"] = "2017-06-26 00:00 2017-06-26 23:59"
	tEidAlFitrFeast2015_Global[1]["GlobalId"] = 50861
	tEidAlFitrFeast2015_Global[1]["GlobalData"] = 1
	tEidAlFitrFeast2015_Global[1]["UserGlobalId"] = 50862
	
	tEidAlFitrFeast2015_Global[2] = {}
	tEidAlFitrFeast2015_Global[2]["Time"] = "2017-06-26 00:00 2017-06-26 23:59"
	tEidAlFitrFeast2015_Global[2]["RewardTime"] = "2017-06-27 00:00 2017-06-27 23:59"
	tEidAlFitrFeast2015_Global[2]["GlobalId"] = 50861
	tEidAlFitrFeast2015_Global[2]["GlobalData"] = 2
	tEidAlFitrFeast2015_Global[2]["UserGlobalId"] = 50862
	
	tEidAlFitrFeast2015_Global[3] = {}
	tEidAlFitrFeast2015_Global[3]["Time"] = "2017-06-27 00:00 2017-06-27 23:59"
	tEidAlFitrFeast2015_Global[3]["RewardTime"] = "2017-06-28 00:00 2017-06-28 23:59"
	tEidAlFitrFeast2015_Global[3]["GlobalId"] = 50861
	tEidAlFitrFeast2015_Global[3]["GlobalData"] = 3
	tEidAlFitrFeast2015_Global[3]["UserGlobalId"] = 50862

local tEidAlFitrFeast2015_TaskItem = {}
	tEidAlFitrFeast2015_TaskItem[1] = {}
	tEidAlFitrFeast2015_TaskItem[1]["ItemId"] = 3006174
	tEidAlFitrFeast2015_TaskItem[1]["ItemNum"] = 1
	
	tEidAlFitrFeast2015_TaskItem[2] = {}
	tEidAlFitrFeast2015_TaskItem[2]["ItemChanceSum"] = 1000
	tEidAlFitrFeast2015_TaskItem[2]["ItemId"] = 3006175
	
	tEidAlFitrFeast2015_TaskItem[2][1] = {}
	tEidAlFitrFeast2015_TaskItem[2][1]["RandomItemChanceType"] = 2
	tEidAlFitrFeast2015_TaskItem[2][1]["ItemChance"] = 500
	tEidAlFitrFeast2015_TaskItem[2][1]["Item_1"] = 1
	
	tEidAlFitrFeast2015_TaskItem[2][2] = {}
	tEidAlFitrFeast2015_TaskItem[2][2]["RandomItemChanceType"] = 2
	tEidAlFitrFeast2015_TaskItem[2][2]["ItemChance"] = 400
	tEidAlFitrFeast2015_TaskItem[2][2]["Item_1"] = 2
	
	tEidAlFitrFeast2015_TaskItem[2][3] = {}
	tEidAlFitrFeast2015_TaskItem[2][3]["RandomItemChanceType"] = 2
	tEidAlFitrFeast2015_TaskItem[2][3]["ItemChance"] = 100
	tEidAlFitrFeast2015_TaskItem[2][3]["Item_1"] = 3

-- 怪物掉落配置
local tEidAlFitrFeast2015_Monster = {}
	tEidAlFitrFeast2015_Monster[1] = {}
	tEidAlFitrFeast2015_Monster[1][1] = {}
	tEidAlFitrFeast2015_Monster[1][1]["RandomItemChanceType"] = 3
	tEidAlFitrFeast2015_Monster[1][1]["ItemSelfChanceSum"] = 100
	tEidAlFitrFeast2015_Monster[1][1]["ItemChance"] = 15
	tEidAlFitrFeast2015_Monster[1][1]["Item_1"] = 3006173
	
	tEidAlFitrFeast2015_Monster[2] = {}
	tEidAlFitrFeast2015_Monster[2][1] = {}
	tEidAlFitrFeast2015_Monster[2][1]["RandomItemChanceType"] = 3
	tEidAlFitrFeast2015_Monster[2][1]["ItemSelfChanceSum"] = 100
	tEidAlFitrFeast2015_Monster[2][1]["ItemChance"] = 30
	tEidAlFitrFeast2015_Monster[2][1]["Item_1"] = 3006173

--------------------------------------逻辑部分-----------------------------------------	
-- 传送进活动地图
function EidAlFitrFeast2015_ChgMapInto(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tEidAlFitrFeast2015_Constant["Level"],tEidAlFitrFeast2015_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	-- 传送进活动地图
	EidAlFitrFeast2015_ChgMap(1)
end

-- 传送地图
function EidAlFitrFeast2015_ChgMap(nType)
	local nTime = tEidAlFitrFeast2015_MapInfo[nType]["Time"]
	
	if not Sys_ChkFullTime(nTime) then
		return
	end

	local nMapId = tEidAlFitrFeast2015_MapInfo[nType]["MapId"]
	local nBoundX = tEidAlFitrFeast2015_MapInfo[nType]["BoundX"]
	local nBoundY = tEidAlFitrFeast2015_MapInfo[nType]["BoundY"]
	local nBoundCX = tEidAlFitrFeast2015_MapInfo[nType]["BoundCX"]
	local nBoundCY = tEidAlFitrFeast2015_MapInfo[nType]["BoundCY"]

	if Get_NpcMapID() ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY)
	User_TalkChannel2005(tEidAlFitrFeast2015_Text["ChgMap"][nType])
end

-- 隔天清零
function EidAlFitrFeast2015_Reset()
	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]
	local nHandStcType = tEidAlFitrFeast2015_Constant[2]["DataType"]
	local nRewardStcType = tEidAlFitrFeast2015_Constant[3]["DataType"]
	
	Task_SetStatistic(nEvent,nTaskStcType,0,1)
	Task_SetStcTimestamp(nEvent,nTaskStcType,0,0)
	Task_SetStatistic(nEvent,nHandStcType,0,1)
	Task_SetStatistic(nEvent,nRewardStcType,0,1)
end

-- 接受任务判断
function EidAlFitrFeast2015_JudgeAccept(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]
	local nHandStcType = tEidAlFitrFeast2015_Constant[2]["DataType"]
	local nTaskValue = Get_UserStatisticValue(nEvent,nTaskStcType)
	
	-- 判断玩家是否接任务
	if nTaskValue > 0 then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nTaskStcType,1,4) then
			EidAlFitrFeast2015_Reset()
		elseif nTaskValue >= tEidAlFitrFeast2015_Constant["CompleteData"] then
			return
		elseif Task_StcInterval(nEvent,nTaskStcType,tEidAlFitrFeast2015_Constant["TaskTime"],0) then
			if Task_ChkStcValue(nEvent,nHandStcType,">=",tEidAlFitrFeast2015_Constant["CompleteNum"]) then
				LinkNpcGossipFunc_New(nNpcId,"2-3")
				return
			end
		else
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	-- 删除旧的任务物品
	-- 牛肉	3006173
	local nBeefItemId = tEidAlFitrFeast2015_Constant["BeefItem"]
	
	if Item_ChkItem(nBeefItemId) then
		Item_DelAllItemByType(nBeefItemId)
	end
	
	-- 花生 3006174
	local nPeanutItemId = tEidAlFitrFeast2015_Constant["PeanutItem"]
	
	if Item_ChkItem(nPeanutItemId) then
		Item_DelAllItemByType(nPeanutItemId)
	end
	
	-- 鲜果 3006175
	local nFreshFruitItemId = tEidAlFitrFeast2015_Constant["FreshFruitItem"]
	
	if Item_ChkItem(nFreshFruitItemId) then
		Item_DelAllItemByType(nFreshFruitItemId)
	end
	
	-- 设掩码值
	Task_SetStatistic(nEvent,nTaskStcType,tEidAlFitrFeast2015_Constant["AcceptData"],1)
	Task_SetStcTimestamp(nEvent,nTaskStcType,0,0)
	Task_SetStatistic(nEvent,nHandStcType,0,1)
	
	-- 倒计时显示
	User_SetTimer(tEidAlFitrFeast2015_Constant["TaskTime"],nil,1)

	User_TalkChannel2005(tEidAlFitrFeast2015_Text["AcceptMsg"])
end

-- 上交食物对白判断
function EidAlFitrFeast2015_HandFoodText(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]
	local nHandStcType = tEidAlFitrFeast2015_Constant[2]["DataType"]
	local nTaskValue = Get_UserStatisticValue(nEvent,nTaskStcType)

	-- 判断玩家是否接受任务
	if nTaskValue <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nTaskStcType,1,4) then
		EidAlFitrFeast2015_Reset()
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断是否完成任务
	if nTaskValue >= tEidAlFitrFeast2015_Constant["CompleteData"] then
		return
	end
	
	-- 判断任务时间是否超时
	if Task_StcInterval(nEvent,nTaskStcType,tEidAlFitrFeast2015_Constant["TaskTime"],0) then
		if Task_ChkStcValue(nEvent,nHandStcType,">=",tEidAlFitrFeast2015_Constant["CompleteNum"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end

-- 上交食物
function EidAlFitrFeast2015_HandFood(nNpcId,nItemNum)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]
	local nHandStcType = tEidAlFitrFeast2015_Constant[2]["DataType"]
	local nTaskValue = Get_UserStatisticValue(nEvent,nTaskStcType)
	local nHandValue = Get_UserStatisticValue(nEvent,nHandStcType)

	-- 判断是否是接受任务状态
	if nTaskValue ~= tEidAlFitrFeast2015_Constant["AcceptData"] then
		return
	end
	
	-- 判断任务是否超时
	if Task_StcInterval(nEvent,nTaskStcType,tEidAlFitrFeast2015_Constant["TaskTime"],0) then
		if nHandValue >= tEidAlFitrFeast2015_Constant["CompleteNum"] then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
	end
	
	-- 牛肉	3006173
	local nBeefItemId = tEidAlFitrFeast2015_Constant["BeefItem"]
	-- 鲜果 3006175
	local nFreshFruitItemId = tEidAlFitrFeast2015_Constant["FreshFruitItem"]
	
	-- 检测物品数量是否满足
	if not Item_ChkMulItem(nBeefItemId,nFreshFruitItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 删除任务物品
	Item_DelMulItem(nBeefItemId,nFreshFruitItemId,nItemNum)
	
	-- 设掩码
	Task_AddStatistic(nEvent,nHandStcType,nItemNum,1)

	-- 给光效
	User_EffectAdd("self",tEidAlFitrFeast2015_Constant["HandFoodEffect"])
	
	-- 给提示
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	
	-- 更新首名信息
	for nIndex = 1,#tEidAlFitrFeast2015_Global do
		local nTime = tEidAlFitrFeast2015_Global[nIndex]["Time"]
		
		if Sys_ChkFullTime(nTime) then
			local nGlobalId = tEidAlFitrFeast2015_Global[nIndex]["GlobalId"]
			local nData = tEidAlFitrFeast2015_Global[nIndex]["GlobalData"]
			local nValue = Get_SysDynaGlobalData(nGlobalId,nData)
			
			if nHandValue + nItemNum > nValue then
				local nUserId = Get_UserId()
				local sUserName = Get_UserName(nUserId)
				local nUserGlobalId = tEidAlFitrFeast2015_Global[nIndex]["UserGlobalId"]

				Sys_SetSynaGlobalData(nGlobalId,nData,nHandValue + nItemNum)
				Sys_SetSynaGlobalData(nUserGlobalId,nData,nUserId)
				Sys_SetSynaGlobalDataStr(nUserGlobalId,nData,sUserName)
			end
			
			break
		end
	end
end

-- 领取谢礼
function EidAlFitrFeast2015_RewardItem(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]
	local nHandStcType = tEidAlFitrFeast2015_Constant[2]["DataType"]

	-- 判断是否隔天
	if Task_StcInterval(nEvent,nTaskStcType,1,4) then
		EidAlFitrFeast2015_Reset()
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	
	-- 判断是否是接任务状态
	local nTaskValue = Get_UserStatisticValue(nEvent,nTaskStcType)
	
	if nTaskValue > tEidAlFitrFeast2015_Constant["AcceptData"] then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	elseif nTaskValue ~= tEidAlFitrFeast2015_Constant["AcceptData"] then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	
	-- 判断是否满足领取奖励条件
	local nHandValue = Get_UserStatisticValue(nEvent,nHandStcType)
	
	if nHandValue < tEidAlFitrFeast2015_Constant["CompleteNum"] then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	-- 判断是否已领取过奖励
	local nRewardStcType = tEidAlFitrFeast2015_Constant[3]["DataType"]
	
	if Task_ChkStcValue(nEvent,nRewardStcType,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tEidAlFitrFeast2015_Constant["ItemSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 设置掩码值
	Task_SetStatistic(nEvent,nTaskStcType,tEidAlFitrFeast2015_Constant["CompleteData"],1)
	Task_SetStatistic(nEvent,nHandStcType,0,1)
	Task_SetStatistic(nEvent,nRewardStcType,tEidAlFitrFeast2015_Constant["CompleteData"],1)
	
	-- 给奖励
	FestivalGeneralPackage_GetGift(tEidAlFitrFeast2015_Constant["FestivalId"],tEidAlFitrFeast2015_Constant["LogId"])
	-- 播光效
	User_EffectAdd("self",tEidAlFitrFeast2015_Constant["RewardEffect"])
	-- 给提示
	User_TalkChannel2005(tEidAlFitrFeast2015_Text["RewardMsg"])
end

-- 领取首名之礼
function EidAlFitrFeast2015_RewardFirstItem(nNpcId)
	-- 判断是否在领取奖励的时间里
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["RewardTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 获取玩家ID
	local nUserId = Get_UserId()
	
	-- 判断是否满足领取首名奖励的
	for nIndex = 1,#tEidAlFitrFeast2015_Global do
		local nTime = tEidAlFitrFeast2015_Global[nIndex]["RewardTime"]
		
		if Sys_ChkFullTime(nTime) then
			local nUserGlobalId = tEidAlFitrFeast2015_Global[nIndex]["UserGlobalId"]
			local nData = tEidAlFitrFeast2015_Global[nIndex]["GlobalData"]
			local nRewardUserId = Get_SysDynaGlobalData(nUserGlobalId,nData)
			local nRewardName = Get_SysDynaGlobalDataStr(nUserGlobalId,nData)
			
			-- 判断首名奖励是否领取过
			if nRewardName == tEidAlFitrFeast2015_Text["Award"] then
				LinkNpcGossipFunc_New(nNpcId,"5-3")
				return
			end
			
			-- 判断该玩家是否是首名奖励的玩家
			if nUserId ~= nRewardUserId then
				LinkNpcGossipFunc_New(nNpcId,"5-4")
				return
			end
			
			-- 判断背包空间
			if not User_CheckLeftSpace(tEidAlFitrFeast2015_Constant["ItemSpace"]) then
				LinkNpcGossipFunc_New(nNpcId,"5-2")
				return
			end
			
			-- 设置动态掩码值
			Sys_SetSynaGlobalDataStr(nUserGlobalId,nData,tEidAlFitrFeast2015_Text["Award"])
			
			-- 给奖励
			Item_AddItem(tEidAlFitrFeast2015_Constant["FirstItemId"])
			
			-- 打log
			Sys_SaveActionFestivalLog(tEidAlFitrFeast2015_Constant["FirstLog"])
			
			-- 播光效
			User_EffectAdd("self",tEidAlFitrFeast2015_Constant["FirstEffect"])
			
			-- 给提示
			Sys_SystemBroadcast(string.format(tEidAlFitrFeast2015_Text["FirstMsg"],nRewardName))
			break
		end
	end
end

-- 查询上交次数和首名记录
function EidAlFitrFeast2015_Query(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 获取今天排名信息
	local nGlobalValue = 0
	local sGlobalValue = ""
	
	for nIndex = 1,#tEidAlFitrFeast2015_Global do
		local nTime = tEidAlFitrFeast2015_Global[nIndex]["Time"]
		
		if Sys_ChkFullTime(nTime) then
			local nGlobalId = tEidAlFitrFeast2015_Global[nIndex]["GlobalId"]
			local nUserGlobalId = tEidAlFitrFeast2015_Global[nIndex]["UserGlobalId"]
			local nPos = tEidAlFitrFeast2015_Global[nIndex]["GlobalData"]
			
			nGlobalValue = Get_SysDynaGlobalData(nGlobalId,nPos)
			sGlobalValue = Get_SysDynaGlobalDataStr(nUserGlobalId,nPos)
			break
		end
	end
	
	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]
	local nUserData = Get_UserStatisticValue(nEvent,nTaskStcType)
	
	local sQueryMsg = string.format(tEidAlFitrFeast2015_Text["QueryMsg"],nUserData,sGlobalValue,nGlobalValue)
	
	Sys_DialogText(sQueryMsg)
	Sys_DialogOption(tEidAlFitrFeast2015_Text[nNpcId]["Option16"])
	Sys_DialogFace()
	Sys_DialogEnd()
end

-- 获取花生，果子的任务物品
function EidAlFitrFeast2015_AcquisitTaskItem(nType)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]

	-- 判断是否隔天
	if Task_StcInterval(nEvent,nTaskStcType,1,4) then
		return
	end
	
	if not Task_ChkStcValue(nEvent,nTaskStcType,"==",tEidAlFitrFeast2015_Constant["AcceptData"]) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tEidAlFitrFeast2015_Constant["ItemSpace"]) then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["BackpackFull"])
		return
	end
	
	local nNpcPosX = Get_NpcPositionX()
	local nNpcPosY = Get_NpcPositionY()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	
	-- 判断玩家是否在NPC附近
	if nNpcPosX - tEidAlFitrFeast2015_Constant["SubRange"] >= nUserPosX then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["NotRange"][nType])
		return
	end
	
	if nNpcPosY - tEidAlFitrFeast2015_Constant["SubRange"] >= nUserPosY then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["NotRange"][nType])
		return
	end

	if nNpcPosX + tEidAlFitrFeast2015_Constant["AddRange"] <= nUserPosX then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["NotRange"][nType])
		return
	end
	
	if nNpcPosY + tEidAlFitrFeast2015_Constant["AddRange"] <= nUserPosY then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["NotRange"][nType])
		return
	end

	-- 读条
	User_SetExplore(tEidAlFitrFeast2015_Constant["Secs"][nType],tEidAlFitrFeast2015_Text["Acquisit"],tEidAlFitrFeast2015_Constant["ActionId"],string.format("EidAlFitrFeast2015_RewardTaskItem</N>%d",nType))
end

-- 获得任务物品
function EidAlFitrFeast2015_RewardTaskItem(nType,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		return
	end
	
	local nItemId = tEidAlFitrFeast2015_TaskItem[nType]["ItemId"]
	local nItemNum = 0
	
	-- 获取获得任务物品的数量
	if tEidAlFitrFeast2015_TaskItem[nType]["ItemChanceSum"] ~= nil then
		local nFlat,tAward = Probabil_RandomAward(tEidAlFitrFeast2015_TaskItem,nType)
		nItemNum = tAward[1]["tAward"][1]["Item_1"]
	else
		nItemNum = tEidAlFitrFeast2015_TaskItem[nType]["ItemNum"]
	end

	-- 添加任务物品
	local sAttr = string.format(tEidAlFitrFeast2015_Constant["AddAttr"],nItemNum)
	Item_AddNewItem(nItemId,sAttr,nUserId)
	
	-- 打log
	Sys_SaveActionFestivalLog(string.format(tEidAlFitrFeast2015_Constant["RewardItemLog"],nItemId,nItemNum),nUserId)
	
	-- 给提示
	local sMsg = string.format(tEidAlFitrFeast2015_Text["AwardItem"][nType],nItemNum)
	User_TalkChannel2005(sMsg,nUserId)
	
	EidAlFitrFeast2015_CollectItemFull()
end

-- 收集满
function EidAlFitrFeast2015_CollectItemFull()
	-- 牛肉	3006173
	local nBeefItemId = tEidAlFitrFeast2015_Constant["BeefItem"]
	-- 鲜果 3006175
	local nFreshFruitItemId = tEidAlFitrFeast2015_Constant["FreshFruitItem"]
	local nItemNum = tEidAlFitrFeast2015_Constant["CompleteNum"]
	
	-- 检测物品数量是否满足
	if Item_ChkMulItem(nBeefItemId,nFreshFruitItemId,nItemNum) then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["CollectFull"])

		-- 自动寻路
		local nPosX = tEidAlFitrFeast2015_Constant["Goto"]["PosX"]
		local nPosY = tEidAlFitrFeast2015_Constant["Goto"]["PosY"]
		local nMapId = tEidAlFitrFeast2015_Constant["Goto"]["MapId"]
		local nNpcId = tEidAlFitrFeast2015_Constant["Goto"]["NpcId"]
		
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
end

-- 怪物掉落
function EidAlFitrFeast2015_KillMonster()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tEidAlFitrFeast2015_Constant["EventType"]
	local nTaskStcType = tEidAlFitrFeast2015_Constant[1]["DataType"]

	-- 判断是否隔天
	if Task_StcInterval(nEvent,nTaskStcType,1,4) then
		return
	end
	
	if not Task_ChkStcValue(nEvent,nTaskStcType,"==",tEidAlFitrFeast2015_Constant["AcceptData"]) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tEidAlFitrFeast2015_Constant["ItemSpace"]) then
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["BackpackFull"])
		return
	end
	
	-- 获取玩家职业
	local nPro = Get_UserProfession()
	local nFlat
	local tAward
	
	if nPro >= tEidAlFitrFeast2015_Constant["MinPro"] and nPro <= tEidAlFitrFeast2015_Constant["MaxPro"] then
		nFlat,tAward = Probabil_RandomAward(tEidAlFitrFeast2015_Monster,1)
	else
		nFlat,tAward = Probabil_RandomAward(tEidAlFitrFeast2015_Monster,2)
	end

	if next(tAward[1]["tSelfItemChanceAward"]) ~= nil then
		local nItemId = tAward[1]["tSelfItemChanceAward"][1]["Item_1"]
		
		-- 添加物品
		Item_AddItem(nItemId)
		
		-- 打log
		Sys_SaveActionFestivalLog(string.format(tEidAlFitrFeast2015_Constant["RewardItemLog"],nItemId,1))
		
		-- 给提示
		User_TalkChannel2005(tEidAlFitrFeast2015_Text["AwardItem"][3])
		
		EidAlFitrFeast2015_CollectItemFull()
	end
end

--------------------------------------NPC模块-------------------------------------------
-- 主礼阿訇
tNpcFace[2978] = 22
tNpcGossip[18395] = tNpcGossip[18395] or DefaultNpc:new{}
tNpcGossip[18395]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[18395]["Text1-1"] = {111,112}
tNpcGossip[18395]["Text111"] = tEidAlFitrFeast2015_Text[18395]["111"]
tNpcGossip[18395]["Text112"] = tEidAlFitrFeast2015_Text[18395]["112"]
tNpcGossip[18395]["tOption1-1"] = {1}
tNpcGossip[18395]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18395]["Text1-2"] = {121,122,123}
tNpcGossip[18395]["Text121"] = tEidAlFitrFeast2015_Text[18395]["121"]
tNpcGossip[18395]["Text122"] = tEidAlFitrFeast2015_Text[18395]["122"]
tNpcGossip[18395]["Text123"] = tEidAlFitrFeast2015_Text[18395]["123"]
tNpcGossip[18395]["tOption1-2"] = {3,4,7}
tNpcGossip[18395]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18395]["Text1-3"] = {131}
tNpcGossip[18395]["Text131"] = tEidAlFitrFeast2015_Text[18395]["131"]
tNpcGossip[18395]["tOption1-3"] = {2,8}

-- 等级不够
tNpcGossip[18395]["Text2-1"] = {211}
tNpcGossip[18395]["Text211"] = tEidAlFitrFeast2015_Text[18395]["211"]
tNpcGossip[18395]["tOption2-1"] = {5}

-- 能详细说说吗
tNpcGossip[18395]["Text3-1"] = {311,312,313}
tNpcGossip[18395]["Text311"] = tEidAlFitrFeast2015_Text[18395]["311"]
tNpcGossip[18395]["Text312"] = tEidAlFitrFeast2015_Text[18395]["312"]
tNpcGossip[18395]["Text313"] = tEidAlFitrFeast2015_Text[18395]["313"]
tNpcGossip[18395]["tOption3-1"] = {6}

-- 选项
tNpcGossip[18395]["Option1"] = tEidAlFitrFeast2015_Text[18395]["Option1"]
tNpcGossip[18395]["Option2"] = tEidAlFitrFeast2015_Text[18395]["Option2"]
tNpcGossip[18395]["Option3"] = tEidAlFitrFeast2015_Text[18395]["Option3"]
tNpcGossip[18395]["OptionFunc3"]="EidAlFitrFeast2015_ChgMapInto</N>18395"
tNpcGossip[18395]["Option4"] = tEidAlFitrFeast2015_Text[18395]["Option4"]
tNpcGossip[18395]["OptionPoint4"]="3"
tNpcGossip[18395]["Option5"] = tEidAlFitrFeast2015_Text[18395]["Option5"]
tNpcGossip[18395]["Option6"] = tEidAlFitrFeast2015_Text[18395]["Option6"]
tNpcGossip[18395]["Option7"] = tEidAlFitrFeast2015_Text[18395]["Option7"]
tNpcGossip[18395]["Option8"] = tEidAlFitrFeast2015_Text[18395]["Option8"]
tNpcGossip[18395]["OptionFunc8"]="EidAlFitrFeast2015_RewardFirstItem</N>18395"
tNpcGossip[18395]["OptionChkFunc8"] = function ()
	return Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["RewardTime"])
end

-- 领取首名之礼?背包满
tNpcGossip[18395]["Text5-2"] = {521}
tNpcGossip[18395]["Text521"] = tEidAlFitrFeast2015_Text[18395]["521"]
tNpcGossip[18395]["tOption5-2"] = {15}

-- 领取首名之礼?已领取过
tNpcGossip[18395]["Text5-3"] = {531}
tNpcGossip[18395]["Text531"] = tEidAlFitrFeast2015_Text[18395]["531"]
tNpcGossip[18395]["tOption5-3"] = {30}

tNpcGossip[18395]["Text5-4"] = {541}
tNpcGossip[18395]["Text541"] = tEidAlFitrFeast2015_Text[18395]["541"]
tNpcGossip[18395]["tOption5-4"] = {31}

tNpcGossip[18395]["Option15"] = tEidAlFitrFeast2015_Text[18395]["Option15"]
tNpcGossip[18395]["Option30"] = tEidAlFitrFeast2015_Text[18395]["Option30"]
tNpcGossip[18395]["Option31"] = tEidAlFitrFeast2015_Text[18395]["Option31"]


-- 执礼穆斯林
tNpcFace[2979] = 49
tNpcGossip[18396] = tNpcGossip[18396] or DefaultNpc:new{}
tNpcGossip[18396]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[18396]["Text1-1"] = {111,112}
tNpcGossip[18396]["Text111"] = tEidAlFitrFeast2015_Text[18396]["111"]
tNpcGossip[18396]["Text112"] = tEidAlFitrFeast2015_Text[18396]["112"]
tNpcGossip[18396]["tOption1-1"] = {1}
tNpcGossip[18396]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18396]["Text1-2"] = {121,122,123}
tNpcGossip[18396]["Text121"] = tEidAlFitrFeast2015_Text[18396]["121"]
tNpcGossip[18396]["Text122"] = tEidAlFitrFeast2015_Text[18396]["122"]
tNpcGossip[18396]["Text123"] = tEidAlFitrFeast2015_Text[18396]["123"]
tNpcGossip[18396]["tOption1-2"] = {3,4,5,6,7,8,9,21}
tNpcGossip[18396]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18396]["Text1-3"] = {131}
tNpcGossip[18396]["Text131"] = tEidAlFitrFeast2015_Text[18396]["131"]
tNpcGossip[18396]["tOption1-3"] = {2}

-- 我要去收集食材
tNpcGossip[18396]["Text2-1"] = {211,212}
tNpcGossip[18396]["Text211"] = tEidAlFitrFeast2015_Text[18396]["211"]
tNpcGossip[18396]["Text212"] = tEidAlFitrFeast2015_Text[18396]["212"]
tNpcGossip[18396]["tOption2-1"] = {10}

-- 我要去收集食材?已有任务
tNpcGossip[18396]["Text2-2"] = {221}
tNpcGossip[18396]["Text221"] = tEidAlFitrFeast2015_Text[18396]["221"]
tNpcGossip[18396]["tOption2-2"] = {11}

tNpcGossip[18396]["Text2-3"] = {231}
tNpcGossip[18396]["Text231"] = tEidAlFitrFeast2015_Text[18396]["231"]
tNpcGossip[18396]["tOption2-3"] = {16}

-- 这是你需要的食材
tNpcGossip[18396]["Text3-1"] = {311}
tNpcGossip[18396]["Text311"] = tEidAlFitrFeast2015_Text[18396]["311"]
tNpcGossip[18396]["tOption3-1"] = {22}

-- 这是你需要的食材?未接过任务/任务超时
tNpcGossip[18396]["Text3-2"] = {321}
tNpcGossip[18396]["Text321"] = tEidAlFitrFeast2015_Text[18396]["321"]
tNpcGossip[18396]["tOption3-2"] = {23,24}

-- 这是你需要的食材?材料不够
tNpcGossip[18396]["Text3-3"] = {331,332}
tNpcGossip[18396]["Text331"] = tEidAlFitrFeast2015_Text[18396]["331"]
tNpcGossip[18396]["Text332"] = tEidAlFitrFeast2015_Text[18396]["332"]
tNpcGossip[18396]["tOption3-3"] = {12}

tNpcGossip[18396]["Text3-4"] = {341}
tNpcGossip[18396]["Text341"] = tEidAlFitrFeast2015_Text[18396]["341"]
tNpcGossip[18396]["tOption3-4"] = {17,18,19,20,25}

-- 领取谢礼
tNpcGossip[18396]["Text4-1"] = {411}
tNpcGossip[18396]["Text411"] = tEidAlFitrFeast2015_Text[18396]["411"]
tNpcGossip[18396]["tOption4-1"] = {13}

-- 领取谢礼?背包满
tNpcGossip[18396]["Text4-2"] = {421}
tNpcGossip[18396]["Text421"] = tEidAlFitrFeast2015_Text[18396]["421"]
tNpcGossip[18396]["tOption4-2"] = {14}

-- 领取谢礼?已领取过了
tNpcGossip[18396]["Text4-3"] = {431}
tNpcGossip[18396]["Text431"] = tEidAlFitrFeast2015_Text[18396]["431"]
tNpcGossip[18396]["tOption4-3"] = {26}

tNpcGossip[18396]["Text4-4"] = {441}
tNpcGossip[18396]["Text441"] = tEidAlFitrFeast2015_Text[18396]["441"]
tNpcGossip[18396]["tOption4-4"] = {27}

tNpcGossip[18396]["Text4-5"] = {451}
tNpcGossip[18396]["Text451"] = tEidAlFitrFeast2015_Text[18396]["451"]
tNpcGossip[18396]["tOption4-5"] = {28}

-- 领取首名之礼
tNpcGossip[18396]["Text5-1"] = {511,512}
tNpcGossip[18396]["Text511"] = tEidAlFitrFeast2015_Text[18396]["511"]
tNpcGossip[18396]["Text512"] = tEidAlFitrFeast2015_Text[18396]["512"]
tNpcGossip[18396]["tOption5-1"] = {29}

-- 领取首名之礼?背包满
tNpcGossip[18396]["Text5-2"] = {521}
tNpcGossip[18396]["Text521"] = tEidAlFitrFeast2015_Text[18396]["521"]
tNpcGossip[18396]["tOption5-2"] = {15}

-- 领取首名之礼?已领取过
tNpcGossip[18396]["Text5-3"] = {531}
tNpcGossip[18396]["Text531"] = tEidAlFitrFeast2015_Text[18396]["531"]
tNpcGossip[18396]["tOption5-3"] = {30}

tNpcGossip[18396]["Text5-4"] = {541}
tNpcGossip[18396]["Text541"] = tEidAlFitrFeast2015_Text[18396]["541"]
tNpcGossip[18396]["tOption5-4"] = {31}

-- 能详细说说吗
tNpcGossip[18396]["Text7-1"] = {711,712,713,714}
tNpcGossip[18396]["Text711"] = tEidAlFitrFeast2015_Text[18396]["711"]
tNpcGossip[18396]["Text712"] = tEidAlFitrFeast2015_Text[18396]["712"]
tNpcGossip[18396]["Text713"] = tEidAlFitrFeast2015_Text[18396]["713"]
tNpcGossip[18396]["Text714"] = tEidAlFitrFeast2015_Text[18396]["714"]
tNpcGossip[18396]["tOption7-1"] = {32}

-- 选项
tNpcGossip[18396]["Option1"] = tEidAlFitrFeast2015_Text[18396]["Option1"]
tNpcGossip[18396]["Option2"] = tEidAlFitrFeast2015_Text[18396]["Option2"]
tNpcGossip[18396]["Option3"] = tEidAlFitrFeast2015_Text[18396]["Option3"]
tNpcGossip[18396]["OptionFunc3"]="EidAlFitrFeast2015_JudgeAccept</N>18396"
tNpcGossip[18396]["Option4"] = tEidAlFitrFeast2015_Text[18396]["Option4"]
tNpcGossip[18396]["OptionFunc4"]="EidAlFitrFeast2015_HandFoodText</N>18396"
tNpcGossip[18396]["Option5"] = tEidAlFitrFeast2015_Text[18396]["Option5"]
tNpcGossip[18396]["OptionFunc5"]="EidAlFitrFeast2015_RewardItem</N>18396"
tNpcGossip[18396]["Option6"] = tEidAlFitrFeast2015_Text[18396]["Option6"]
tNpcGossip[18396]["OptionFunc6"]="EidAlFitrFeast2015_RewardFirstItem</N>18396"
tNpcGossip[18396]["OptionChkFunc6"] = function ()
	return Sys_ChkFullTime(tEidAlFitrFeast2015_Constant["RewardTime"])
end
tNpcGossip[18396]["Option7"] = tEidAlFitrFeast2015_Text[18396]["Option7"]
tNpcGossip[18396]["OptionFunc7"]="EidAlFitrFeast2015_Query</N>18396"
tNpcGossip[18396]["Option8"] = tEidAlFitrFeast2015_Text[18396]["Option8"]
tNpcGossip[18396]["OptionFunc8"]="EidAlFitrFeast2015_ChgMap</N>2"
tNpcGossip[18396]["Option9"] = tEidAlFitrFeast2015_Text[18396]["Option9"]
tNpcGossip[18396]["OptionPoint9"]="7"
tNpcGossip[18396]["Option10"] = tEidAlFitrFeast2015_Text[18396]["Option10"]
tNpcGossip[18396]["Option11"] = tEidAlFitrFeast2015_Text[18396]["Option11"]
tNpcGossip[18396]["Option12"] = tEidAlFitrFeast2015_Text[18396]["Option12"]
tNpcGossip[18396]["Option13"] = tEidAlFitrFeast2015_Text[18396]["Option13"]
tNpcGossip[18396]["Option14"] = tEidAlFitrFeast2015_Text[18396]["Option14"]
tNpcGossip[18396]["Option15"] = tEidAlFitrFeast2015_Text[18396]["Option15"]
tNpcGossip[18396]["Option16"] = tEidAlFitrFeast2015_Text[18396]["Option16"]
tNpcGossip[18396]["Option17"] = tEidAlFitrFeast2015_Text[18396]["Option17"]
tNpcGossip[18396]["OptionFunc17"]="EidAlFitrFeast2015_HandFood</N>18396</N>1"
tNpcGossip[18396]["Option18"] = tEidAlFitrFeast2015_Text[18396]["Option18"]
tNpcGossip[18396]["OptionFunc18"]="EidAlFitrFeast2015_HandFood</N>18396</N>3"
tNpcGossip[18396]["Option19"] = tEidAlFitrFeast2015_Text[18396]["Option19"]
tNpcGossip[18396]["OptionFunc19"]="EidAlFitrFeast2015_HandFood</N>18396</N>5"
tNpcGossip[18396]["Option20"] = tEidAlFitrFeast2015_Text[18396]["Option20"]
tNpcGossip[18396]["OptionFunc20"]="EidAlFitrFeast2015_HandFood</N>18396</N>10"
tNpcGossip[18396]["Option21"] = tEidAlFitrFeast2015_Text[18396]["Option21"]
tNpcGossip[18396]["Option22"] = tEidAlFitrFeast2015_Text[18396]["Option22"]
tNpcGossip[18396]["Option23"] = tEidAlFitrFeast2015_Text[18396]["Option23"]
tNpcGossip[18396]["OptionFunc23"]="EidAlFitrFeast2015_JudgeAccept</N>18396"
tNpcGossip[18396]["Option24"] = tEidAlFitrFeast2015_Text[18396]["Option24"]
tNpcGossip[18396]["Option25"] = tEidAlFitrFeast2015_Text[18396]["Option25"]
tNpcGossip[18396]["Option26"] = tEidAlFitrFeast2015_Text[18396]["Option26"]
tNpcGossip[18396]["Option27"] = tEidAlFitrFeast2015_Text[18396]["Option27"]
tNpcGossip[18396]["Option28"] = tEidAlFitrFeast2015_Text[18396]["Option28"]
tNpcGossip[18396]["Option29"] = tEidAlFitrFeast2015_Text[18396]["Option29"]
tNpcGossip[18396]["Option30"] = tEidAlFitrFeast2015_Text[18396]["Option30"]
tNpcGossip[18396]["Option31"] = tEidAlFitrFeast2015_Text[18396]["Option31"]
tNpcGossip[18396]["Option32"] = tEidAlFitrFeast2015_Text[18396]["Option32"]

--	7685	牛
-- tMonster[7685] = tMonster[7685] or {}
-- tMonster[7685]["tFunction"] = tMonster[7685]["tFunction"] or {}
-- table.insert(tMonster[7685]["tFunction"],EidAlFitrFeast2015_KillMonster)