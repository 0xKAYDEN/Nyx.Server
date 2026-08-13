------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2016欧洲杯活动-促销
--Purpose:	2016欧洲杯活动-促销
--Creator: 	郑鋆
--Created:	2016/05/20
------------------------------------------------------------------------------------

-- 命名规则
-- EuropeanCup_Promot

-- 145 43	首次单人竞技场给加油喇叭
-- 145 44	首次组队给加油喇叭

local tEuropeanCup_Promot_Constant = {}
	tEuropeanCup_Promot_Constant["ActivityTime"] = "2016-06-16 00:00 2016-07-16 23:59"

local tEuropeanCup_Promot_Stc = {}
	tEuropeanCup_Promot_Stc["EventType"] = 145
	tEuropeanCup_Promot_Stc["DataType"] = 45

	tEuropeanCup_Promot_Stc[10] = {}
	tEuropeanCup_Promot_Stc[10]["EventType"] = 145
	tEuropeanCup_Promot_Stc[10]["DataType"] = 43
	
	tEuropeanCup_Promot_Stc[11] = {}
	tEuropeanCup_Promot_Stc[11]["EventType"] = 145
	tEuropeanCup_Promot_Stc[11]["DataType"] = 44

local tEuropeanCup_Promot_Reward = {}
-- 3200359,'初级球迷礼包'
tEuropeanCup_Promot_Reward[3200359] = {}
tEuropeanCup_Promot_Reward[3200359]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200359]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200359]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200359]["RewardItem"][1]["Attr"] = "0 2"
tEuropeanCup_Promot_Reward[3200359]["Log"] = "0,0,3200359,1,12000408,2,3200358,2"
tEuropeanCup_Promot_Reward[3200359]["Talk"] = tEuropeanCup_Promot_Text[3200359]

-- 3200360,'中级球迷礼包'
tEuropeanCup_Promot_Reward[3200360] = {}
tEuropeanCup_Promot_Reward[3200360]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200360]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200360]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200360]["RewardItem"][1]["Attr"] = "0 3"
tEuropeanCup_Promot_Reward[3200360]["Log"] = "0,0,3200360,1,12000408,2,3200358,3"
tEuropeanCup_Promot_Reward[3200360]["Talk"] = tEuropeanCup_Promot_Text[3200360]

-- 3200361,'高级球迷礼包'
tEuropeanCup_Promot_Reward[3200361] = {}
tEuropeanCup_Promot_Reward[3200361]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200361]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200361]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200361]["RewardItem"][1]["Attr"] = "0 4"
tEuropeanCup_Promot_Reward[3200361]["Log"] = "0,0,3200361,1,12000408,2,3200358,4"
tEuropeanCup_Promot_Reward[3200361]["Talk"] = tEuropeanCup_Promot_Text[3200361]

-- 3200362,'资深球迷礼包'
tEuropeanCup_Promot_Reward[3200362] = {}
tEuropeanCup_Promot_Reward[3200362]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200362]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200362]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200362]["RewardItem"][1]["Attr"] = "0 6"
tEuropeanCup_Promot_Reward[3200362]["Log"] = "0,0,3200362,1,12000408,2,3200358,6"
tEuropeanCup_Promot_Reward[3200362]["Talk"] = tEuropeanCup_Promot_Text[3200362]

-- 3200363,'铁杆球迷礼包'
tEuropeanCup_Promot_Reward[3200363] = {}
tEuropeanCup_Promot_Reward[3200363]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200363]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200363]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200363]["RewardItem"][1]["Attr"] = "0 7"
tEuropeanCup_Promot_Reward[3200363]["Log"] = "0,0,3200363,1,12000408,2,3200358,7"
tEuropeanCup_Promot_Reward[3200363]["Talk"] = tEuropeanCup_Promot_Text[3200363]

-- 3200364,'狂热球迷礼包'
tEuropeanCup_Promot_Reward[3200364] = {}
tEuropeanCup_Promot_Reward[3200364]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200364]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200364]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200364]["RewardItem"][1]["Attr"] = "0 10"
tEuropeanCup_Promot_Reward[3200364]["Log"] = "0,0,3200364,1,12000408,2,3200358,10"
tEuropeanCup_Promot_Reward[3200364]["Talk"] = tEuropeanCup_Promot_Text[3200364]

-- 3200365,'殿堂球迷礼包'
tEuropeanCup_Promot_Reward[3200365] = {}
tEuropeanCup_Promot_Reward[3200365]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200365]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200365]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200365]["RewardItem"][1]["Attr"] = "0 11"
tEuropeanCup_Promot_Reward[3200365]["Log"] = "0,0,3200365,1,12000408,2,3200358,11"
tEuropeanCup_Promot_Reward[3200365]["Talk"] = tEuropeanCup_Promot_Text[3200365]

-- 3200368,'入门球迷礼包'
tEuropeanCup_Promot_Reward[3200368] = {}
tEuropeanCup_Promot_Reward[3200368]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200368]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200368]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200368]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[3200368]["Log"] = "0,0,3200368,1,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[3200368]["Talk"] = tEuropeanCup_Promot_Text[3200368]

-- 3200369,'特制入门球迷礼包'
tEuropeanCup_Promot_Reward[3200369] = {}
tEuropeanCup_Promot_Reward[3200369]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3200369]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3200369]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3200369]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[3200369]["Log"] = "0,0,3200369,1,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[3200369]["Talk"] = tEuropeanCup_Promot_Text[3200369]

-- 矿洞冒险	2
tEuropeanCup_Promot_Reward[1] = {}
tEuropeanCup_Promot_Reward[1]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[1]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[1]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[1]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[1]["Talk"] = tEuropeanCup_Promot_Text[1]

-- 战场杀敌	4
tEuropeanCup_Promot_Reward[2] = {}
tEuropeanCup_Promot_Reward[2]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[2]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[2]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[2]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[2]["Talk"] = tEuropeanCup_Promot_Text[2]

-- 决战冥城	4
tEuropeanCup_Promot_Reward[3] = {}
tEuropeanCup_Promot_Reward[3]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[3]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[3]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[3]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[3]["Talk"] = tEuropeanCup_Promot_Text[3]
-- 显著功勋礼包
tEuropeanCup_Promot_Reward[10] = {}
tEuropeanCup_Promot_Reward[10]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[10]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[10]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[10]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[10]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[10]["Talk"] = tEuropeanCup_Promot_Text["3007108"]
-- 卓越功勋礼包
tEuropeanCup_Promot_Reward[11] = {}
tEuropeanCup_Promot_Reward[11]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[11]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[11]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[11]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[11]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[11]["Talk"] = tEuropeanCup_Promot_Text["3007109"]

-- 首次单人竞技场给加油喇叭
tEuropeanCup_Promot_Reward[4] = {}
tEuropeanCup_Promot_Reward[4]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[4]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[4]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[4]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[4]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[4]["Talk"] = tEuropeanCup_Promot_Text[4]

-- 首次组队给加油喇叭
tEuropeanCup_Promot_Reward[5] = {}
tEuropeanCup_Promot_Reward[5]["RewardItem"] = {}
tEuropeanCup_Promot_Reward[5]["RewardItem"][1] = {}
tEuropeanCup_Promot_Reward[5]["RewardItem"][1]["Id"] = 3200358
tEuropeanCup_Promot_Reward[5]["RewardItem"][1]["Attr"] = "0 1"
tEuropeanCup_Promot_Reward[5]["Log"] = "0,0,0,0,12000408,2,3200358,1"
tEuropeanCup_Promot_Reward[5]["Talk"] = tEuropeanCup_Promot_Text[5]

---------------------------------逻辑部分-----------------------------------------
function EuropeanCup_Promot_Use(nItemId)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tEuropeanCup_Promot_Text["BeOverdue"])
		end
		
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tEuropeanCup_Promot_Reward[nItemId])
	end
end

-- 特制入门球迷礼包
function EuropeanCup_Promot_Special(nItemId)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tEuropeanCup_Promot_Text["BeOverdue"])
		end
		
		return
	end
	
	-- 判断今天是否使用过
	local nEvent = tEuropeanCup_Promot_Stc["EventType"]
	local nType = tEuropeanCup_Promot_Stc["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	elseif Task_ChkStcValue(nEvent,nType,">=",1) then
		User_TalkChannel2005(tEuropeanCup_Promot_Text["NoTime"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		RewardTemplate_Reward(tEuropeanCup_Promot_Reward[nItemId])
	end
end

function EuropeanCup_Promot_RewardItem(nType)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		return
	end
	
	RewardTemplate_Reward(tEuropeanCup_Promot_Reward[nType])
end

-- 跨服功勋值礼包使用获得
function EuropeanCup_Promot_MeritoriousService(nIndex)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tEuropeanCup_Promot_Stc[nIndex]["EventType"]
	local nType = tEuropeanCup_Promot_Stc[nIndex]["DataType"]

	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_Reward(tEuropeanCup_Promot_Reward[nIndex])
	end
end

-- 首次单人竞技场
function EuropeanCup_Promot_Arenic(nUserId,nFieldNum)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tEuropeanCup_Promot_Stc[10]["EventType"]
	local nType = tEuropeanCup_Promot_Stc[10]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	elseif Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_Reward(tEuropeanCup_Promot_Reward[4],nUserId)
end

-- 首次组队竞技场
function EuropeanCup_Promot_TeamArenic(nUserId,nFieldNum)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tEuropeanCup_Promot_Stc[11]["EventType"]
	local nType = tEuropeanCup_Promot_Stc[11]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	elseif Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_Reward(tEuropeanCup_Promot_Reward[5],nUserId)
end
------------------------------------礼包配置--------------------------------------
-- 3200359,'初级球迷礼包'
tItem[3200359] = tItem[3200359] or {}
tItem[3200359]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200360,'中级球迷礼包'
tItem[3200360] = tItem[3200360] or {}
tItem[3200360]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200361,'高级球迷礼包'
tItem[3200361] = tItem[3200361] or {}
tItem[3200361]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200362,'资深球迷礼包'
tItem[3200362] = tItem[3200362] or {}
tItem[3200362]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200363,'铁杆球迷礼包'
tItem[3200363] = tItem[3200363] or {}
tItem[3200363]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200364,'狂热球迷礼包'
tItem[3200364] = tItem[3200364] or {}
tItem[3200364]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200365,'殿堂球迷礼包'
tItem[3200365] = tItem[3200365] or {}
tItem[3200365]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200368,'入门球迷礼包'
tItem[3200368] = tItem[3200368] or {}
tItem[3200368]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Use(nItemId)
end

-- 3200369,'特制入门球迷礼包'
tItem[3200369] = tItem[3200369] or {}
tItem[3200369]["Function"] = function(nItemId,sItemName)
	EuropeanCup_Promot_Special(nItemId)
end

-- 3200358,'加油喇叭'
tItem[3200358] = tItem[3200358] or {}
tItem[3200358]["Function"] = function(nItemId,sItemName)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanCup_Promot_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tEuropeanCup_Promot_Text["BeOverdue"])
		end
		
		return
	end
	
	NpcPosition_PathFind(19270)
end


-- tTeamArenicCompetes["tFunction"] = tTeamArenicCompetes["tFunction"] or {}
-- table.insert(tTeamArenicCompetes["tFunction"],EuropeanCup_Promot_TeamArenic)

-- tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
-- table.insert(tArenicCompetes["tFunction"],EuropeanCup_Promot_Arenic)