------------------------------------------------------------------------------------
--Name:		180108[英文征服][活动脚本]一月份德州锦标赛+SNG长期赛事配置
--Creator: 	兰瑞妹
--Created:	2018/01/08
------------------------------------------------------------------------------------

-- 命名前缀
-- January_Props_
-- logid 12000976

-- #stc 掩码说明 
-- #stc(171,99) 每天开启黄金精框次数，上限50

-- 常量表
local tJanuary_Props_Count = {}
	-- 更新包后直接删除
	tJanuary_Props_Count["UpdateAfterTime"] = tActivityTime["TexasProps"]["UpdateAfterTime"]
	-- 更新后门票使用时间
	tJanuary_Props_Count["ItemUseTime"] = tActivityTime["TexasProps"]["ItemUseTime"]
	
	-- 删除给多个物品的属性
	tJanuary_Props_Count["Attr"] = "0 %d"
	
	-- 对白对应物品id
	tJanuary_Props_Count["StartId"] = 3307119
	
	-- 输入框长度
	tJanuary_Props_Count["Length"] = 15
	
	-- 门票碎片购买银两
	tJanuary_Props_Count["Money"] = 60000
	-- 后台金币上限
	tJanuary_Props_Count["MoneyLimit"] = 2100000000
	
	
-- Log表
local tJanuary_Props_Log = {}
	-- 过期删除
	tJanuary_Props_Log["OverDue"] = "0,0,%d,1,12000976,2,0,0"

-- stc掩码
local tJanuary_Props_Stc = {}
	-- 每天开启黄金精框次数，上限50
	tJanuary_Props_Stc[1] = {}
	tJanuary_Props_Stc[1]["EventType"] = 171
	tJanuary_Props_Stc[1]["DataType"] = 99
	tJanuary_Props_Stc[1]["Limit"] = 50
	
-- 奖励表
local tJanuary_Props_Reward = {}
	-- 3305476	PokerStarMatch(800K)TicketFragmen
	-- 过期删除
	tJanuary_Props_Reward[3305476] = {}
	tJanuary_Props_Reward[3305476]["ActivityTime"] = tJanuary_Props_Count["UpdateAfterTime"]
	tJanuary_Props_Reward[3305476]["LogId"] = 12000976
	tJanuary_Props_Reward[3305476]["UseItem"] = {}
	tJanuary_Props_Reward[3305476]["UseItem"]["Num"] = 1
	tJanuary_Props_Reward[3305476]["UseItem"]["SaveTime"] = 1
	tJanuary_Props_Reward[3305476]["OverdueTalk"] = tJanuary_Props_Text["OverdueTalk"][2]
	
	-- 3306399	PokerMasterMatch(5KK)TicketFragment
	-- 过期删除
	tJanuary_Props_Reward[3306399] = {}
	tJanuary_Props_Reward[3306399]["ActivityTime"] = tJanuary_Props_Count["UpdateAfterTime"]
	tJanuary_Props_Reward[3306399]["LogId"] = 12000976
	tJanuary_Props_Reward[3306399]["UseItem"] = {}
	tJanuary_Props_Reward[3306399]["UseItem"]["Num"] = 1
	tJanuary_Props_Reward[3305476]["UseItem"]["SaveTime"] = 1
	tJanuary_Props_Reward[3306399]["OverdueTalk"] = tJanuary_Props_Text["OverdueTalk"][2]
	
	-- 3305534	PokerLegendMatchTicketFragment
	-- 过期删除
	tJanuary_Props_Reward[3305534] = {}
	tJanuary_Props_Reward[3305534]["ActivityTime"] = tJanuary_Props_Count["UpdateAfterTime"]
	tJanuary_Props_Reward[3305534]["LogId"] = 12000976
	tJanuary_Props_Reward[3305534]["UseItem"] = {}
	tJanuary_Props_Reward[3305534]["UseItem"]["Num"] = 1
	tJanuary_Props_Reward[3305476]["UseItem"]["SaveTime"] = 1
	tJanuary_Props_Reward[3305534]["OverdueTalk"] = tJanuary_Props_Text["OverdueTalk"][2]
	
	-- 3305477	PokerStarMatch(800K)Ticket	16张通用门票碎片
	tJanuary_Props_Reward[3305477] = {}
	tJanuary_Props_Reward[3305477]["ActivityTime"] = tActivityTime["TexasProps"]["ItemUseTime"]
	tJanuary_Props_Reward[3305477]["LogId"] = 12000976
	tJanuary_Props_Reward[3305477]["UseItem"] = {}
	tJanuary_Props_Reward[3305477]["UseItem"]["Monopoly"] = 1
	tJanuary_Props_Reward[3305477]["UseItem"]["Num"] = 1
	tJanuary_Props_Reward[3305477]["UseItem"]["SaveTime"] = 1
	tJanuary_Props_Reward[3305477]["UseItem"]["Sash"] = 0
	tJanuary_Props_Reward[3305477]["OverdueTalk"] = tJanuary_Props_Text["OverdueTalk"][1]
	tJanuary_Props_Reward[3305477]["Reward"] = {}
	tJanuary_Props_Reward[3305477]["Reward"]["RewardItem"] = {}
	tJanuary_Props_Reward[3305477]["Reward"]["RewardItem"][1]={}
	tJanuary_Props_Reward[3305477]["Reward"]["RewardItem"][1]["Id"]=3307127
	tJanuary_Props_Reward[3305477]["Reward"]["RewardItem"][1]["Attr"]="0 16"
	tJanuary_Props_Reward[3305477]["Reward"]["RewardEffect"] = {}
	tJanuary_Props_Reward[3305477]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_Props_Reward[3305477]["Msg"]= {}
	tJanuary_Props_Reward[3305477]["Msg"]["NoSpace"] = tJanuary_Props_Text["NoSpace"]
	
	-- 3305478	PokerMastermatch(5KK)Ticket	100张通用门票碎片
	tJanuary_Props_Reward[3305478] = {}
	tJanuary_Props_Reward[3305478]["ActivityTime"] = tActivityTime["TexasProps"]["ItemUseTime"]
	tJanuary_Props_Reward[3305478]["LogId"] = 12000976
	tJanuary_Props_Reward[3305478]["UseItem"] = {}
	tJanuary_Props_Reward[3305478]["UseItem"]["Monopoly"] = 1
	tJanuary_Props_Reward[3305478]["UseItem"]["Num"] = 1
	tJanuary_Props_Reward[3305478]["UseItem"]["SaveTime"] = 1
	tJanuary_Props_Reward[3305478]["UseItem"]["Sash"] = 0
	tJanuary_Props_Reward[3305478]["OverdueTalk"] = tJanuary_Props_Text["OverdueTalk"][1]
	tJanuary_Props_Reward[3305478]["Reward"] = {}
	tJanuary_Props_Reward[3305478]["Reward"]["RewardItem"] = {}
	tJanuary_Props_Reward[3305478]["Reward"]["RewardItem"][1]={}
	tJanuary_Props_Reward[3305478]["Reward"]["RewardItem"][1]["Id"]=3307127
	tJanuary_Props_Reward[3305478]["Reward"]["RewardItem"][1]["Attr"] ="0 100"
	tJanuary_Props_Reward[3305478]["Reward"]["RewardEffect"] = {}
	tJanuary_Props_Reward[3305478]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_Props_Reward[3305478]["Msg"] = {}
	tJanuary_Props_Reward[3305478]["Msg"]["NoSpace"] = tJanuary_Props_Text["NoSpace"]
	
	-- 3305535	PokerLegendMatch(50KK)Ticket
	tJanuary_Props_Reward[3305535] = {}
	tJanuary_Props_Reward[3305535]["ActivityTime"] = tActivityTime["TexasProps"]["ItemUseTime"]
	tJanuary_Props_Reward[3305535]["LogId"] = 12000976
	tJanuary_Props_Reward[3305535]["UseItem"] = {}
	tJanuary_Props_Reward[3305535]["UseItem"]["Monopoly"] = 1
	tJanuary_Props_Reward[3305535]["UseItem"]["Num"] = 1
	tJanuary_Props_Reward[3305535]["UseItem"]["SaveTime"] = 1
	tJanuary_Props_Reward[3305535]["UseItem"]["Sash"] = 0
	tJanuary_Props_Reward[3305535]["OverdueTalk"] = tJanuary_Props_Text["OverdueTalk"][1]
	tJanuary_Props_Reward[3305535]["Reward"] = {}
	tJanuary_Props_Reward[3305535]["Reward"]["RewardItem"] = {}
	tJanuary_Props_Reward[3305535]["Reward"]["RewardItem"][1]={}
	tJanuary_Props_Reward[3305535]["Reward"]["RewardItem"][1]["Id"]=3307127
	tJanuary_Props_Reward[3305535]["Reward"]["RewardItem"][1]["Attr"]="0 1000"
	tJanuary_Props_Reward[3305535]["Reward"]["RewardEffect"] = {}
	tJanuary_Props_Reward[3305535]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_Props_Reward[3305535]["Msg"] = {}
	tJanuary_Props_Reward[3305535]["Msg"]["NoSpace"] = tJanuary_Props_Text["NoSpace"]
	
	-- 3307117,'GoldRawOre'
	tJanuary_Props_Reward[3307117] = {}
	tJanuary_Props_Reward[3307117]["LogId"] = 12000976
	tJanuary_Props_Reward[3307117]["UseItem"] = {}
	tJanuary_Props_Reward[3307117]["UseItem"]["Monopoly"] = 1
	tJanuary_Props_Reward[3307117]["UseItem"]["Num"] = 10
	tJanuary_Props_Reward[3307117]["UseItem"]["SaveTime"] = 0
	tJanuary_Props_Reward[3307117]["UseItem"]["Sash"] = 0
	tJanuary_Props_Reward[3307117]["Reward"] = {}
	tJanuary_Props_Reward[3307117]["Reward"]["RewardItem"] = {}
	tJanuary_Props_Reward[3307117]["Reward"]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307117]["Reward"]["RewardItem"][1]["Id"]=3307118
	tJanuary_Props_Reward[3307117]["Reward"]["RewardItem"][1]["Attr"]="0 1"
	tJanuary_Props_Reward[3307117]["Reward"]["RewardEffect"] = {}
	tJanuary_Props_Reward[3307117]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_Props_Reward[3307117]["Reward"]["Talk"] = tJanuary_Props_Text[3307117]["Reward"]
	tJanuary_Props_Reward[3307117]["Msg"]= {}
	tJanuary_Props_Reward[3307117]["Msg"]["NoSpace"] = tJanuary_Props_Text[3307117]["NoSpace"]
	tJanuary_Props_Reward[3307117]["Msg"]["NoItem"] = tJanuary_Props_Text[3307117]["NoItem"]
	
	-- 3307118,'GoldRefinedOre'
	tJanuary_Props_Reward[3307118] = {}
	tJanuary_Props_Reward[3307118]["LogId"] = 12000976
	tJanuary_Props_Reward[3307118]["DeleteItem"] = {}
	tJanuary_Props_Reward[3307118]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307118]["DeleteItem"][1]["Id"] = 3307118
	tJanuary_Props_Reward[3307118]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307118]["DeleteItem"][1]["ItemNum"] = 1
	tJanuary_Props_Reward[3307118]["RewardMoney"] = {}
	tJanuary_Props_Reward[3307118]["RewardMoney"]["Value"] = 10000
	tJanuary_Props_Reward[3307118]["RewardEffect"]={}
	tJanuary_Props_Reward[3307118]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307118]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307118]["Talk"] = tJanuary_Props_Text[3307118]["Talk"] 
	
	-- 3307127,'UniversalTicketFragment'
	tJanuary_Props_Reward[3307127] = {}
	-- PokerRookieMatch(100K)Ticket(2张门票碎片)
	tJanuary_Props_Reward[3307127][1] = {}
	tJanuary_Props_Reward[3307127][1]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][1]["DeleteItem"] = {}
	tJanuary_Props_Reward[3307127][1]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][1]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][1]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][1]["DeleteItem"][1]["ItemNum"] = 2
	tJanuary_Props_Reward[3307127][1]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][1]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][1]["RewardItem"][1]["Id"] = 3307119
	tJanuary_Props_Reward[3307127][1]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][1]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][1]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][1]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][1]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerRookieMatch(500K)Ticket(10张门票碎片)
	tJanuary_Props_Reward[3307127][2] = {}
	tJanuary_Props_Reward[3307127][2]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][2]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][2]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][2]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][2]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][2]["DeleteItem"][1]["ItemNum"] = 10
	tJanuary_Props_Reward[3307127][2]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][2]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][2]["RewardItem"][1]["Id"] = 3307120
	tJanuary_Props_Reward[3307127][2]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][2]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][2]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][2]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][2]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerStarMatch(1KK)Ticket(20张门票碎片)
	tJanuary_Props_Reward[3307127][3] = {}
	tJanuary_Props_Reward[3307127][3]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][3]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][3]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][3]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][3]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][3]["DeleteItem"][1]["ItemNum"] = 20
	tJanuary_Props_Reward[3307127][3]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][3]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][3]["RewardItem"][1]["Id"] = 3307121
	tJanuary_Props_Reward[3307127][3]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][3]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][3]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][3]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][3]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerStarMatch(2KK)Ticket(40张门票碎片)
	tJanuary_Props_Reward[3307127][4] = {}
	tJanuary_Props_Reward[3307127][4]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][4]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][4]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][4]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][4]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][4]["DeleteItem"][1]["ItemNum"] = 40
	tJanuary_Props_Reward[3307127][4]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][4]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][4]["RewardItem"][1]["Id"] = 3307122
	tJanuary_Props_Reward[3307127][4]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][4]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][4]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][4]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][4]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerStarMatch(5KK)Ticket(100张门票碎片)
	tJanuary_Props_Reward[3307127][5] = {}
	tJanuary_Props_Reward[3307127][5]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][5]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][5]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][5]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][5]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][5]["DeleteItem"][1]["ItemNum"] = 100
	tJanuary_Props_Reward[3307127][5]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][5]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][5]["RewardItem"][1]["Id"] = 3307123
	tJanuary_Props_Reward[3307127][5]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][5]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][5]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][5]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][5]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerStarMatch(10KK)Ticket(200张门票碎片)
	tJanuary_Props_Reward[3307127][6] = {}
	tJanuary_Props_Reward[3307127][6]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][6]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][6]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][6]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][6]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][6]["DeleteItem"][1]["ItemNum"] = 200
	tJanuary_Props_Reward[3307127][6]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][6]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][6]["RewardItem"][1]["Id"] = 3307124
	tJanuary_Props_Reward[3307127][6]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][6]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][6]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][6]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][6]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerStarMatch(20KK)Ticket(400张门票碎片)
	tJanuary_Props_Reward[3307127][7] = {}
	tJanuary_Props_Reward[3307127][7]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][7]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][7]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][7]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][7]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][7]["DeleteItem"][1]["ItemNum"] = 400
	tJanuary_Props_Reward[3307127][7]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][7]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][7]["RewardItem"][1]["Id"] = 3307125
	tJanuary_Props_Reward[3307127][7]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][7]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][7]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][7]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][7]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	-- PokerStarMatch(50KK)Ticket(1000张门票碎片)
	tJanuary_Props_Reward[3307127][8] = {}
	tJanuary_Props_Reward[3307127][8]["LogId"] = 12000976
	tJanuary_Props_Reward[3307127][8]["DeleteItem"]={}
	tJanuary_Props_Reward[3307127][8]["DeleteItem"][1]={}
	tJanuary_Props_Reward[3307127][8]["DeleteItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[3307127][8]["DeleteItem"][1]["SaveTime"] = 0
	tJanuary_Props_Reward[3307127][8]["DeleteItem"][1]["ItemNum"] = 1000
	tJanuary_Props_Reward[3307127][8]["RewardItem"]={}
	tJanuary_Props_Reward[3307127][8]["RewardItem"][1]={}
	tJanuary_Props_Reward[3307127][8]["RewardItem"][1]["Id"] = 3307126
	tJanuary_Props_Reward[3307127][8]["RewardItem"][1]["Attr"]="0 1 0 2880 1"
	tJanuary_Props_Reward[3307127][8]["RewardEffect"]={}
	tJanuary_Props_Reward[3307127][8]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[3307127][8]["RewardEffect"]["Effect"]="angelwing"
	tJanuary_Props_Reward[3307127][8]["Talk"] = tJanuary_Props_Text[3307127][1]["Success"]
	
	-- 购买门票碎片
	tJanuary_Props_Reward[1] = {}
	tJanuary_Props_Reward[1]["RewardItem"]={}
	tJanuary_Props_Reward[1]["RewardItem"][1]={}
	tJanuary_Props_Reward[1]["RewardItem"][1]["Id"] = 3307127
	tJanuary_Props_Reward[1]["RewardItem"][1]["Attr"] = ""
	tJanuary_Props_Reward[1]["Log"] = "0,0,1,%d,12000976,2,3307127,%d"
	tJanuary_Props_Reward[1]["RewardEffect"]={}
	tJanuary_Props_Reward[1]["RewardEffect"]["SzObj"]="self"
	tJanuary_Props_Reward[1]["RewardEffect"]["Effect"]="angelwing"
	
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function January_Props_GetStcValue(nIndex,nUserId)
	local nEvent = tJanuary_Props_Stc[nIndex]["EventType"]
	local nType = tJanuary_Props_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function January_Props_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tJanuary_Props_Stc[nIndex]["EventType"]
	local nType = tJanuary_Props_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function January_Props_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tJanuary_Props_Stc[nIndex]["EventType"]
	local nType = tJanuary_Props_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function January_Props_ClearStcInterval(nIndex,nUserId)
	local nEvent = tJanuary_Props_Stc[nIndex]["EventType"]
	local nType = tJanuary_Props_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

---------------------------------------------------物品-------------------------------------------
-- 3307118 Gold Refined Ore
function January_Props_UseItem(nItemId)
	-- 掩码上限检查
	-- 隔天清除
	January_Props_ClearStcInterval(1)
	local nLimit = tJanuary_Props_Stc[1]["Limit"]
	local nData = January_Props_GetStcValue(1)
	if nData > nLimit then
		return
	end
	
	-- 金钱上线检查
	local nMoney = tJanuary_Props_Reward[nItemId]["RewardMoney"]["Value"]
	if not User_CanPutMoney2Bag(nMoney) then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId]["FullMoney"])
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId]["NoItem"])
		return
	end
	
	January_Props_AddStcValue(1,1)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tJanuary_Props_Reward[nItemId])
end

-- 合成门票
function January_Props_SyntheticTicket(nItemId,nIndex)
	local tReward = tJanuary_Props_Reward[nItemId][nIndex]
	local nNeedItemNum = tReward["DeleteItem"][1]["ItemNum"]
	-- 通用门票碎片不足
	if not Item_ChkMulItem(nItemId,nItemId,nNeedItemNum) then
		local sText = tJanuary_Props_Text[nItemId][1]["NoItem"]
		User_TalkChannel2005(string.format(sText,nNeedItemNum))
		return
	end
	
	-- 背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sText = tJanuary_Props_Text[nItemId][1]["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpaceNum))
		return
	end
	
	-- 给奖励
	local sSuccess = tJanuary_Props_Text[nItemId][1]["Success"]
	local sItemName = Get_ItemtypeName(tReward["RewardItem"][1]["Id"])
	tReward["Talk"] = string.format(sSuccess,nNeedItemNum,sItemName)
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 显示输入框对白
function January_Props_BuyTicket(nItemId)
	-- 显示对白
	Sys_DialogText(tJanuary_Props_Text[nItemId]["Text221"])
	Sys_DialogText(tJanuary_Props_Text[nItemId]["Text222"])
	Sys_DialogOptEdit(tJanuary_Props_Text[nItemId]["Input"],tJanuary_Props_Count["Length"],"January_Props_SureToSend</N>"..nItemId)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

-- 输入框处理
function January_Props_SureToSend(nItemId)
	local nNumber = tonumber(Get_SysAcceptStr())
	-- 输入数量，失败，输入内容有误
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId][2]["OutInput"])
		return
	end
	
	local sAttr = tJanuary_Props_Count["Attr"]
	local tReward = CommonFunc_Copy(tJanuary_Props_Reward[1])
	tReward["RewardItem"][1]["Attr"] = string.format(sAttr,nNumber)
	
	-- 门票数量超过
	local nMoney = tJanuary_Props_Count["Money"]*nNumber
	if nMoney > tJanuary_Props_Count["MoneyLimit"] then
		LinkItemGossipFunc_New(nItemId,"2-4")
		return
	end
	
	-- 输入数量，成功，背包空间不足无法购买
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId][2]["NoSpace"])
		return
	end
	
	-- 【输入数量，成功，银两不足无法购买】
	if not User_CanPutMoney2Bag(-nMoney) then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId][2]["NoMoney"])
		return
	end
	
	-- 初始化二次确认对标
	local sText = tJanuary_Props_Text[nItemId]["Text231"]
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[nItemId]["Text231"] = string.format(sText,nMoney,nNumber,sItemName)
	local sOption = tJanuary_Props_Text[nItemId]["Option231"]
	tItem[nItemId]["Option231"] = string.format(sOption,nMoney)
	-- 选项函数
	tItem[nItemId]["OptionFunc231"] = "January_Props_SureBuy</N>".. nItemId .."</N>".. nNumber
	LinkItemGossipFunc_New(nItemId,"2-3")
end

-- 确认购买门票
function January_Props_SureBuy(nItemId,nNumber)
	local sAttr = tJanuary_Props_Count["Attr"]
	local tReward = CommonFunc_Copy(tJanuary_Props_Reward[1])
	tReward["RewardItem"][1]["Attr"] = string.format(sAttr,nNumber)
	-- 门票数量超过
	local nMoney = tJanuary_Props_Count["Money"]*nNumber
	if nMoney > tJanuary_Props_Count["MoneyLimit"] then
		LinkItemGossipFunc_New(nItemId,"2-4")
		return
	end
	
	-- 输入数量，成功，背包空间不足无法购买
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId][2]["NoSpace"])
		return
	end
	
	-- 【输入数量，成功，银两不足无法购买】
	if not User_CanPutMoney2Bag(-nMoney) then
		User_TalkChannel2005(tJanuary_Props_Text[nItemId][2]["NoMoney"])
		return
	end
	
	-- 提示文字
	local sItemName = Get_ItemtypeName(nItemId)
	local sTalk = tJanuary_Props_Text[nItemId][2]["Success"]
	tReward["Talk"] = string.format(sTalk,nMoney,nNumber,sItemName)
	-- log初始化
	local sLog = tJanuary_Props_Reward[1]["Log"]
	tReward["Log"] = string.format(sLog,nMoney,nNumber)
	
	-- 扣除金币
	if not User_AddMoney(-1*nMoney) then
		return
	end
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tReward)
end
--------------------------------------物品模块-------------------------------------------
-- 3305476	PokerStarMatch(800K)TicketFragmen
tItem[3305476] = tItem[3305476] or {}
tItem[3305476]["Function"] = function(nItemId,sItemName)
	SimpleItem_Main(tJanuary_Props_Reward[nItemId],nItemId)
end

-- 3306399	PokerMasterMatch(5KK)TicketFragment
tItem[3306399] = tItem[3305476]
-- 3305534	PokerLegendMatchTicketFragment
tItem[3305534] = tItem[3305476]

-- 3305477	PokerStarMatch(800K)Ticket	16张通用门票碎片
tItem[3305477] = tItem[3305477] or {}
tItem[3305477]["Function"] = function(nItemId,sItemName)
	local tReward = CommonFunc_Copy(tJanuary_Props_Reward[nItemId])
	local nMonopoly = tJanuary_Props_Reward[nItemId]["UseItem"]["Monopoly"]
	local nItemNum = Get_CountItemType(nItemId,0,nMonopoly)
	tReward["UseItem"]["Num"] = nItemNum
	local nGiveNum = CommonFunc_GetItemNum(tReward["Reward"]["RewardItem"][1]["Attr"])*nItemNum
	local sAttr = tJanuary_Props_Count["Attr"]
	tReward["Reward"]["RewardItem"][1]["Attr"] = string.format(sAttr,nGiveNum)
	SimpleItem_Main(tReward,nItemId)
end
-- 3305478	PokerMastermatch(5KK)Ticket
tItem[3305478] = tItem[3305477]
-- 3305535	PokerLegendMatch(50KK)Ticket
tItem[3305535] = tItem[3305477]

-- 3307117,'GoldRawOre'
tItem[3307117] = tItem[3305476]

-- 3307118,'GoldRefinedOre'
tItemFace[3307118] = 1250
tItem[3307118] = tItem[3307118] or {}
tItem[3307118]["DialogueText"] = tJanuary_Props_Text[3307118]
tItem[3307118]["Text1-1"] = {111,112}
tItem[3307118]["tOption1-1"] = {111,112}
-- 1、兑换10000银两（还可兑换X次）     ====兑换成功，刷新对白界面
tItem[3307118]["OptionFunc111"] = "January_Props_UseItem</N>3307118"
tItem[3307118]["OptionChkFunc111"] = function()
	January_Props_ClearStcInterval(1)
	local nData = January_Props_GetStcValue(1)
	local nLimit = tJanuary_Props_Stc[1]["Limit"]
	local nHave = nLimit - nData
	if nHave <= 0 then
		return false
	end
	local sText = tJanuary_Props_Text[3307118]["Option111"]
	tItem[3307118]["Option111"] = string.format(sText,nHave)
	return true
end
-- 2、参加Gold Rush Match（10K）。
tItem[3307118]["OptionFunc112"] = "User_OpenDialog</N>770"


-- 3307127,'UniversalTicketFragment'
tItemFace[3307127] = 1251
tItem[3307127] = tItem[3307127] or {}
tItem[3307127]["DialogueText"] = tJanuary_Props_Text[3307127]
-- 【使用道具，NPC对白】
tItem[3307127]["Text1-1"] = {111,112}
tItem[3307127]["tOption1-1"] = {111,112}
-- 1、合成门票。
tItem[3307127]["OptionPoint111"] = "2-1"
-- 2、购买通用门票碎片（60000银两）。
tItem[3307127]["OptionFunc112"] = "January_Props_BuyTicket</N>3307127"

-- 【接1、合成门票，NPC对白】
tItem[3307127]["Text2-1"] = {211}
tItem[3307127]["tOption2-1"] = {211,212,213,214,215,216,217,218}
-- 【门票名】（XX张门票碎片）。
for a,b in pairs(tItem[3307127]["tOption2-1"]) do
	tItem[3307127]["OptionFunc"..b] = "January_Props_SyntheticTicket</N>3307127</N>"..a
end

-- 【接2、购买通用门票碎片，NPC对白】
tItem[3307127]["Text2-2"] = {221,222}

-- 【输入数量，成功，NPC对白】
tItem[3307127]["Text2-3"] = {231}
tItem[3307127]["tOption2-3"] = {231,232}
-- 2-1、确定购买（XX银两）。
-- 2-2、下次购买。

-- 【输入数量，失败，单次购买数量超过35000张】
tItem[3307127]["Text2-4"] = {241}
tItem[3307127]["tOption2-4"] = {241}
-- 重新输入
tItem[3307127]["OptionFunc241"] = "January_Props_BuyTicket</N>3307127"
