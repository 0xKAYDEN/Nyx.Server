---------------------------------------------------------------------------------------
---160406[征服][活动脚本]儿童节-卖雪糕
---BY:魏贻逵                                    
---DATE:2016-04-06                               
---------------------------------------------------------------------------------------
--命名：ChildrenDay
--活动时间：5月30日-6月3日

-- #掩码说明：
-- #124,64 卖出3个雪糕后领取奖励 0未领奖 1领取奖励
-- #124,65 当天卖个多少个雪糕
-- #124,66 当天吃雪糕的数量
-- #124,67 邻家小丫头若雪的需求 1-8 代表8种雪糕
-- #124,68 贪嘴神童艾吃吃的需求 1-8 代表8种雪糕
-- #124,69 小跟屁虫狗娃的需求 1-8 代表8种雪糕
-- #124,70 提取水果10秒CD
-- #124,71 提取装饰食品10秒CD
-- #124,72 提取冰淇淋10秒CD

-- #动态存储说明
-- #50477
-- #data0 当天制作雪糕数量最多的user_id 
-- #data1 当天制作雪糕数量最多的数量
-- #datastr0 当天制作雪糕数量最多的user_name

-- #50478
-- #data0 昨天制作雪糕数量最多的user_id 
-- #data1 昨天制作雪糕数量最多的数量
-- #data2 =0表示未领奖 =1表示已领取奖励
-- #datastr0 昨天制作雪糕数量最多的user_name

---------------------------------------------------------------------------------------
--基本配置
local	tChildrenDay_SellIce_Cont = {}
		tChildrenDay_SellIce_Cont["Beftime"] = "2017-01-01 00:00 2017-05-31 23:59"
		tChildrenDay_SellIce_Cont["Nowtime"] = "2017-06-01 00:00 2017-06-07 23:59"
		tChildrenDay_SellIce_Cont["Awardtime"] = "2017-06-08 00:00 2017-06-08 23:59"
		tChildrenDay_SellIce_Cont["Resettime"] = "00:00 00:05"
		tChildrenDay_SellIce_Cont["Level"] = 80
		tChildrenDay_SellIce_Cont["Metempsychosis"] = 0
		tChildrenDay_SellIce_Cont["IceCreamBoxId"] = 3003764
		tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"] = 50478
		tChildrenDay_SellIce_Cont["TodayDynaGlobal"] = 50477

local	tChildrenDay_SellIce_Stc = {}
		tChildrenDay_SellIce_Stc[1] = {}
		tChildrenDay_SellIce_Stc[1]["EventType"] = 124
		tChildrenDay_SellIce_Stc[1]["DataType"] = 64

		tChildrenDay_SellIce_Stc[2] = {}
		tChildrenDay_SellIce_Stc[2]["EventType"] = 124
		tChildrenDay_SellIce_Stc[2]["DataType"] = 65

		tChildrenDay_SellIce_Stc[3] = {}
		tChildrenDay_SellIce_Stc[3]["EventType"] = 124
		tChildrenDay_SellIce_Stc[3]["DataType"] = 66

		tChildrenDay_SellIce_Stc[10632] = {}
		tChildrenDay_SellIce_Stc[10632]["EventType"] = 124
		tChildrenDay_SellIce_Stc[10632]["DataType"] = 67
		tChildrenDay_SellIce_Stc[10632][1] = 3003771
		tChildrenDay_SellIce_Stc[10632][2] = 3003772
		tChildrenDay_SellIce_Stc[10632][3] = 3003773
		tChildrenDay_SellIce_Stc[10632][4] = 3003774
		tChildrenDay_SellIce_Stc[10632][5] = 3003775
		tChildrenDay_SellIce_Stc[10632][6] = 3003776
		tChildrenDay_SellIce_Stc[10632][7] = 3003777
		tChildrenDay_SellIce_Stc[10632][8] = 3003778

		tChildrenDay_SellIce_Stc[10633] = {}
		tChildrenDay_SellIce_Stc[10633]["EventType"] = 124
		tChildrenDay_SellIce_Stc[10633]["DataType"] = 68
		tChildrenDay_SellIce_Stc[10633][1] = 3003771
		tChildrenDay_SellIce_Stc[10633][2] = 3003772
		tChildrenDay_SellIce_Stc[10633][3] = 3003773
		tChildrenDay_SellIce_Stc[10633][4] = 3003774
		tChildrenDay_SellIce_Stc[10633][5] = 3003775
		tChildrenDay_SellIce_Stc[10633][6] = 3003776
		tChildrenDay_SellIce_Stc[10633][7] = 3003777
		tChildrenDay_SellIce_Stc[10633][8] = 3003778

		tChildrenDay_SellIce_Stc[10634] = {}
		tChildrenDay_SellIce_Stc[10634]["EventType"] = 124
		tChildrenDay_SellIce_Stc[10634]["DataType"] = 69
		tChildrenDay_SellIce_Stc[10634][1] = 3003771
		tChildrenDay_SellIce_Stc[10634][2] = 3003772
		tChildrenDay_SellIce_Stc[10634][3] = 3003773
		tChildrenDay_SellIce_Stc[10634][4] = 3003774
		tChildrenDay_SellIce_Stc[10634][5] = 3003775
		tChildrenDay_SellIce_Stc[10634][6] = 3003776
		tChildrenDay_SellIce_Stc[10634][7] = 3003777
		tChildrenDay_SellIce_Stc[10634][8] = 3003778

		tChildrenDay_SellIce_Stc[10635] = {}
		tChildrenDay_SellIce_Stc[10635]["EventType"] = 124
		tChildrenDay_SellIce_Stc[10635]["DataType"] = 70
		tChildrenDay_SellIce_Stc[10635][1] = 3003765
		tChildrenDay_SellIce_Stc[10635][2] = 3003766

		tChildrenDay_SellIce_Stc[10636] = {}
		tChildrenDay_SellIce_Stc[10636]["EventType"] = 124
		tChildrenDay_SellIce_Stc[10636]["DataType"] = 71
		tChildrenDay_SellIce_Stc[10636][1] = 3003767
		tChildrenDay_SellIce_Stc[10636][2] = 3003768

		tChildrenDay_SellIce_Stc[10637] = {}
		tChildrenDay_SellIce_Stc[10637]["EventType"] = 124
		tChildrenDay_SellIce_Stc[10637]["DataType"] = 72
		tChildrenDay_SellIce_Stc[10637][1] = 3003769
		tChildrenDay_SellIce_Stc[10637][2] = 3003770

local	tChildrenDay_SellIce_IceFormula = {}
		tChildrenDay_SellIce_IceFormula[1] = {}
		tChildrenDay_SellIce_IceFormula[1][1] = 3003764
		tChildrenDay_SellIce_IceFormula[1][2] = 3003765
		tChildrenDay_SellIce_IceFormula[1][3] = 3003767
		tChildrenDay_SellIce_IceFormula[1][4] = 3003769
		tChildrenDay_SellIce_IceFormula[1][5] = 3003771

		tChildrenDay_SellIce_IceFormula[2] = {}
		tChildrenDay_SellIce_IceFormula[2][1] = 3003764
		tChildrenDay_SellIce_IceFormula[2][2] = 3003765
		tChildrenDay_SellIce_IceFormula[2][3] = 3003767
		tChildrenDay_SellIce_IceFormula[2][4] = 3003770
		tChildrenDay_SellIce_IceFormula[2][5] = 3003772

		tChildrenDay_SellIce_IceFormula[3] = {}
		tChildrenDay_SellIce_IceFormula[3][1] = 3003764
		tChildrenDay_SellIce_IceFormula[3][2] = 3003765
		tChildrenDay_SellIce_IceFormula[3][3] = 3003768
		tChildrenDay_SellIce_IceFormula[3][4] = 3003769
		tChildrenDay_SellIce_IceFormula[3][5] = 3003773

		tChildrenDay_SellIce_IceFormula[4] = {}
		tChildrenDay_SellIce_IceFormula[4][1] = 3003764
		tChildrenDay_SellIce_IceFormula[4][2] = 3003765
		tChildrenDay_SellIce_IceFormula[4][3] = 3003768
		tChildrenDay_SellIce_IceFormula[4][4] = 3003770
		tChildrenDay_SellIce_IceFormula[4][5] = 3003774

		tChildrenDay_SellIce_IceFormula[5] = {}
		tChildrenDay_SellIce_IceFormula[5][1] = 3003764
		tChildrenDay_SellIce_IceFormula[5][2] = 3003766
		tChildrenDay_SellIce_IceFormula[5][3] = 3003767
		tChildrenDay_SellIce_IceFormula[5][4] = 3003769
		tChildrenDay_SellIce_IceFormula[5][5] = 3003775

		tChildrenDay_SellIce_IceFormula[6] = {}
		tChildrenDay_SellIce_IceFormula[6][1] = 3003764
		tChildrenDay_SellIce_IceFormula[6][2] = 3003766
		tChildrenDay_SellIce_IceFormula[6][3] = 3003767
		tChildrenDay_SellIce_IceFormula[6][4] = 3003770
		tChildrenDay_SellIce_IceFormula[6][5] = 3003776

		tChildrenDay_SellIce_IceFormula[7] = {}
		tChildrenDay_SellIce_IceFormula[7][1] = 3003764
		tChildrenDay_SellIce_IceFormula[7][2] = 3003766
		tChildrenDay_SellIce_IceFormula[7][3] = 3003768
		tChildrenDay_SellIce_IceFormula[7][4] = 3003769
		tChildrenDay_SellIce_IceFormula[7][5] = 3003777

		tChildrenDay_SellIce_IceFormula[8] = {}
		tChildrenDay_SellIce_IceFormula[8][1] = 3003764
		tChildrenDay_SellIce_IceFormula[8][2] = 3003766
		tChildrenDay_SellIce_IceFormula[8][3] = 3003768
		tChildrenDay_SellIce_IceFormula[8][4] = 3003770
		tChildrenDay_SellIce_IceFormula[8][5] = 3003778


local	tChildrenDay_SellIce_Log = {}
		tChildrenDay_SellIce_Log["FestivalId"] = 3285
		tChildrenDay_SellIce_Log["LogId"] = 10002197
		tChildrenDay_SellIce_Log[1] = "0,0,0,0,10002197,1[1],0,0"
		tChildrenDay_SellIce_Log[2] = "0,0,0,0,10002197,1[2],0,0"
		tChildrenDay_SellIce_Log[3] = "0,0,0,0,10002197,1[3],0,0"
		tChildrenDay_SellIce_Log[4] = "0,0,0,0,10002197,2,%d,1"
		tChildrenDay_SellIce_Log[5] = "0,0,%d,1,10002197,3,0,0"
		tChildrenDay_SellIce_Log[6] = "0,0,%d,1,10002197,2,4,5"
		tChildrenDay_SellIce_Log[7] = "0,0,%d,1,10002197,2,6,5"

-------------------------------------------------NPC逻辑-------------------------------------------------
--隔天清掩码
function ChildrenDay_SellIce_NextDay()
	for i = 1,3 do
		if Task_StcInterval(tChildrenDay_SellIce_Stc[i]["EventType"],tChildrenDay_SellIce_Stc[i]["DataType"],1,4) then
			Task_SetStatistic(tChildrenDay_SellIce_Stc[i]["EventType"],tChildrenDay_SellIce_Stc[i]["DataType"],0,1)
			Task_SetStcTimestamp(tChildrenDay_SellIce_Stc[i]["EventType"],tChildrenDay_SellIce_Stc[i]["DataType"],0)
		end
	end
end

--将50477的数据移到50478
function ChildrenDay_SellIce_MoveDynaGlobal()
	if Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) or Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Awardtime"])  then
		if Sys_ChkDayTime(tChildrenDay_SellIce_Cont["Resettime"]) then
			local nData5 = Get_SysDynaGlobalData5(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
			local nData0 = Get_SysDynaGlobalData0(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
			local nData1 = Get_SysDynaGlobalData1(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
			local sData0 = Get_SysDynaGlobalDataStr0(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
			if nData5 == 0 then
				Sys_SetSynaGlobalData0(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"],nData0)
				Sys_SetSynaGlobalData1(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"],nData1)
				Sys_SetSynaGlobalData2(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"],0)
				Sys_SetSynaGlobalDataStr0(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"],sData0)
				Sys_ResetAllSynaGlobalData(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
				Sys_ResetAllSynaGlobalDataStr(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
				Sys_SetSynaGlobalData5(tChildrenDay_SellIce_Cont["TodayDynaGlobal"],1)
			end
		else
			Sys_SetSynaGlobalData5(tChildrenDay_SellIce_Cont["TodayDynaGlobal"],0)
		end
	end
end

--领取雪糕包装盒。
function ChildrenDay_SellIce_Option3_10631(nNpcId)
--0:00领奖的时候，先刷新前一天的数据
	ChildrenDay_SellIce_MoveDynaGlobal()
--判断活动时间
	if not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--等级判断
	if not User_JudgeLevelAndMetempsychosis(tChildrenDay_SellIce_Cont["Level"],tChildrenDay_SellIce_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
--是否已有包装盒
	if Item_ChkItem(tChildrenDay_SellIce_Cont["IceCreamBoxId"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
--背包判断
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
--领包装盒
	Item_AddItem(tChildrenDay_SellIce_Cont["IceCreamBoxId"])
	Sys_SaveActionFestivalLog(tChildrenDay_SellIce_Log[1])
	User_TalkChannel2005(tChildrenDay_SellIce_Text[nNpcId][1])
end

--领取报酬。
function ChildrenDay_SellIce_Option4_10631(nNpcId)
--0:00领奖的时候，先刷新前一天的数据
	ChildrenDay_SellIce_MoveDynaGlobal()
--判断活动时间
	if not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--隔天清掩码
	ChildrenDay_SellIce_NextDay()
--已领取过奖励
	if Task_ChkStcValue(tChildrenDay_SellIce_Stc[1]["EventType"],tChildrenDay_SellIce_Stc[1]["DataType"],">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
--未卖出3个雪糕
	if not Task_ChkStcValue(tChildrenDay_SellIce_Stc[2]["EventType"],tChildrenDay_SellIce_Stc[2]["DataType"],">=",3) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--背包判断
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
--领取奖励
	Task_SetStatistic(tChildrenDay_SellIce_Stc[1]["EventType"],tChildrenDay_SellIce_Stc[1]["DataType"],1,1)
	Task_SetStcTimestamp(tChildrenDay_SellIce_Stc[1]["EventType"],tChildrenDay_SellIce_Stc[1]["DataType"],0)
	FestivalGeneralPackage_GetGift(tChildrenDay_SellIce_Log["FestivalId"],tChildrenDay_SellIce_Log["LogId"])
	Sys_SaveActionFestivalLog(tChildrenDay_SellIce_Log[2])
	LinkNpcGossipFunc_New(nNpcId,"2-7")
end

--领取前一天“贩售达人”奖励。
function ChildrenDay_SellIce_Option5_10631(nNpcId)
--0:00领奖的时候，先刷新前一天的数据
	ChildrenDay_SellIce_MoveDynaGlobal()
	local nData0 = Get_SysDynaGlobalData0(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"])
	local nUserId = Get_UserId()
	local nData2 = Get_SysDynaGlobalData2(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"])
--不是第一名
	if nData0 ~= nUserId then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
--已领奖
	if nData2 >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
--判断背包
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-8")
		return
	end
--领取奖励
	Sys_SetSynaGlobalData2(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"],1)
	FestivalGeneralPackage_GetGift(tChildrenDay_SellIce_Log["FestivalId"],tChildrenDay_SellIce_Log["LogId"])
	Sys_SaveActionFestivalLog(tChildrenDay_SellIce_Log[3])
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

--查看今天的“贩售达人”。
function ChildrenDay_SellIce_Option6_10631(nNpcId)
	ChildrenDay_SellIce_MoveDynaGlobal()
	local sData0 = Get_SysDynaGlobalDataStr0(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
	local nData1 = Get_SysDynaGlobalData1(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
	local nStc = Get_UserStatisticValue(tChildrenDay_SellIce_Stc[2]["EventType"],tChildrenDay_SellIce_Stc[2]["DataType"])
	if nData1 > 0 then
		tNpcGossip[10631]["Text342"] = string.format(tChildrenDay_SellIce_Text[10631]["Text342"],sData0)
		tNpcGossip[10631]["Text343"] = string.format(tChildrenDay_SellIce_Text[10631]["Text343"],nData1)
		tNpcGossip[10631]["Text344"] = string.format(tChildrenDay_SellIce_Text[10631]["Text344"],nStc)
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-5")
	end
end

--查看昨天的“贩售达人”。
function ChildrenDay_SellIce_Option7_10631(nNpcId)
	ChildrenDay_SellIce_MoveDynaGlobal()
	local sData0 = Get_SysDynaGlobalDataStr0(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"])
	local nData1 = Get_SysDynaGlobalData1(tChildrenDay_SellIce_Cont["YesterdayDynaGlobal"])
	if nData1 > 0 then
		tNpcGossip[10631]["Text362"] = string.format(tChildrenDay_SellIce_Text[10631]["Text362"],sData0)
		tNpcGossip[10631]["Text363"] = string.format(tChildrenDay_SellIce_Text[10631]["Text363"],nData1)
		LinkNpcGossipFunc_New(nNpcId,"3-6")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-7")
	end
end

--邻家小丫头若雪 贪嘴神童艾吃吃 小跟屁虫狗娃
--活动时间内出对白判断
function ChildrenDay_SellIce_Children()
	local nNpcId = Get_NpcId()
	local nEventType = tChildrenDay_SellIce_Stc[nNpcId]["EventType"]
	local nDataType = tChildrenDay_SellIce_Stc[nNpcId]["DataType"]
	local nStc = Get_UserStatisticValue(nEventType,nDataType)
	if Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) then
		ChildrenDay_SellIce_NextDay()
--不同情况设置掩码
		if nStc == 0 then
			nStc = math.random(1,8)
		end
		if nStc > 0 and Task_StcInterval(nEventType,nDataType,120,0) then
			local nNum = math.random(1,7)
			if nStc == nNum then
				nStc = 8
			else
				nStc = nNum
			end
		end
		Task_SetStatistic(nEventType,nDataType,nStc,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)

--根据掩码值出对话
		for i = 1,8 do
			if Task_ChkStcValue (nEventType,nDataType,"==",i) then
				tNpcGossip[nNpcId]["Text121"] = tChildrenDay_SellIce_Text[nNpcId]["Text121"][i]
				tNpcGossip[nNpcId]["OptionFunc2"]="ChildrenDay_SellIce_IceCream</N>"..nNpcId
				return true
			end
		end
	else
		return false
	end
end

--给你，这是你要的雪糕
function ChildrenDay_SellIce_IceCream(nNpcId)
	if not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
--隔天清掩码
	ChildrenDay_SellIce_NextDay()
	local nEventType = tChildrenDay_SellIce_Stc[nNpcId]["EventType"]
	local nDataType = tChildrenDay_SellIce_Stc[nNpcId]["DataType"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	local nItemId = tChildrenDay_SellIce_Stc[nNpcId][nData]
--超过120秒
	if Task_StcInterval(nEventType,nDataType,120,0) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
--删物品加掩码
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nEventType1 = tChildrenDay_SellIce_Stc[2]["EventType"]
		local nDataType1 = tChildrenDay_SellIce_Stc[2]["DataType"]
		local nData1 = Get_UserStatisticValue(nEventType1,nDataType1) + 1
		local nGlobalData1 = Get_SysDynaGlobalData1(tChildrenDay_SellIce_Cont["TodayDynaGlobal"])
		local nUserId = Get_UserId()
		local sName = Get_UserName(nUserId)
		Task_SetStatistic(nEventType1,nDataType1,nData1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		Task_SetStatistic(nEventType,nDataType,0,1)
		if nGlobalData1 < nData1 then
			Sys_SetSynaGlobalData0(tChildrenDay_SellIce_Cont["TodayDynaGlobal"],nUserId)
			Sys_SetSynaGlobalData1(tChildrenDay_SellIce_Cont["TodayDynaGlobal"],nData1)
			Sys_SetSynaGlobalDataStr0(tChildrenDay_SellIce_Cont["TodayDynaGlobal"],sName)
		end
		if nData1 == 3 then
			Sys_MsgBox(tChildrenDay_SellIce_Text[nNpcId][1])
		end
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

-- 水果提取箱
-- 装饰食品提取箱
-- 冰淇淋提取箱
function ChildrenDay_SellIce_Box(nNpcId,nOption)
	if not Item_ChkItem(3003764) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	local nEventType = tChildrenDay_SellIce_Stc[nNpcId]["EventType"]
	local nDataType = tChildrenDay_SellIce_Stc[nNpcId]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEventType,nDataType,"==",0) or Task_StcInterval(nEventType,nDataType,10,0) then
		User_SetExplore(2,tChildrenDay_SellIce_Text[nNpcId][1],220,"ChildrenDay_SellIce_Box_1</N>"..nNpcId.."</N>"..nOption.."</N>"..nUserId)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

--读条后触发
function ChildrenDay_SellIce_Box_1(nNpcId,nOption,nUserId)
	if not User_CheckLeftSpace(1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	local nEventType = tChildrenDay_SellIce_Stc[nNpcId]["EventType"]
	local nDataType = tChildrenDay_SellIce_Stc[nNpcId]["DataType"]
	local nItemId = tChildrenDay_SellIce_Stc[nNpcId][nOption]
	local sItemName = Get_ItemtypeName(nItemId)
	local sLog = string.format(tChildrenDay_SellIce_Log[4],nItemId)
	local sText = string.format(tChildrenDay_SellIce_Text[nNpcId][2],sItemName)
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	Item_AddNewItem(nItemId,"0 1",nUserId)
	Sys_SaveActionFestivalLog(sLog,nUserId)
	User_TalkChannel2005(sText,nUserId)
end

-------------------------------------------------物品逻辑-------------------------------------------------
--雪糕包装盒
function ChildrenDay_SellIce_Item3003764(nItemId)
--过期删除物品
	if not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sLog = string.format(tChildrenDay_SellIce_Log[5],nItemId)
			User_TalkChannel2005(tChildrenDay_SellIce_Text[nItemId][1])
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
--出对话
	LinkItemGossipFunc_New(nItemId,"1-1")
end

function ChildrenDay_SellIce_Item3003764_1(nItemId,nOption)
	local nUserId = Get_UserId()
	for i = 1,4 do
		if not Item_ChkItem(tChildrenDay_SellIce_IceFormula[nOption][i]) then
			User_TalkChannel2005(tChildrenDay_SellIce_Text[nItemId][3])
			return
		end
	end

	User_SetExplore(2,tChildrenDay_SellIce_Text[nItemId][2],100,"ChildrenDay_SellIce_Item3003764_2</N>"..nItemId.."</N>"..nOption.."</N>"..nUserId)
end


function ChildrenDay_SellIce_Item3003764_2(nItemId,nOption,nUserId)
--检测
	for i = 1,4 do
		if not Item_ChkItem(tChildrenDay_SellIce_IceFormula[nOption][i],1,0,nUserId) then
			User_TalkChannel2005(tChildrenDay_SellIce_Text[nItemId][3],nUserId)
			return
		end
	end
--删除
	for i = 1,4 do
		if not Item_DelItem(tChildrenDay_SellIce_IceFormula[nOption][i],1,0,nUserId) then
			return
		end
	end
	local nAddItemId = tChildrenDay_SellIce_IceFormula[nOption][5]
	local sItemName = Get_ItemtypeName(nAddItemId)
	local sLog = string.format(tChildrenDay_SellIce_Log[4],nAddItemId)
	local sText = string.format(tChildrenDay_SellIce_Text[nItemId][4],sItemName)
	Item_AddNewItem(nAddItemId,"0 1 0 60 1",nUserId)
	Sys_SaveActionFestivalLog(sLog,nUserId)
	User_TalkChannel2005(sText,nUserId)

end

--雪糕
function ChildrenDay_SellIce_Item3003771(nItemId)
--过期删除物品
	if not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sLog = string.format(tChildrenDay_SellIce_Log[5],nItemId)
			User_TalkChannel2005(tChildrenDay_SellIce_Text[3003771][1])
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
--隔天清掩码
	ChildrenDay_SellIce_NextDay()
	local nEventType = tChildrenDay_SellIce_Stc[3]["EventType"]
	local nDataType = tChildrenDay_SellIce_Stc[3]["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,">=",10) then
		User_TalkChannel2005(tChildrenDay_SellIce_Text[3003771][2])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		local nLevel = Get_UserLevel()
		if nLevel < G_User_MaxLev then
			local sLog = string.format(tChildrenDay_SellIce_Log[6],nItemId)
			User_AddExpTime(5)
			User_TalkChannel2005(tChildrenDay_SellIce_Text[3003771][3])
			Sys_SaveActionFestivalLog(sLog)
		else
			local sLog = string.format(tChildrenDay_SellIce_Log[7],nItemId)
			User_AddCultivation(5)
			User_TalkChannel2005(tChildrenDay_SellIce_Text[3003771][4])
			Sys_SaveActionFestivalLog(sLog)
		end
	end
end


-------------------------------------------------NPC模板-------------------------------------------------
--雪糕店老板嘻根
tNpcFace[2985] = 27
tNpcGossip[10631] = tNpcGossip[10631] or DefaultNpc:new{}
tNpcGossip[10631]["OptionHidden"] = 1

--活动前
tNpcGossip[10631]["Text1-1"] = {111,112,113,114}
tNpcGossip[10631]["Text111"] = tChildrenDay_SellIce_Text[10631]["Text111"]
tNpcGossip[10631]["Text112"] = tChildrenDay_SellIce_Text[10631]["Text112"]
tNpcGossip[10631]["Text113"] = tChildrenDay_SellIce_Text[10631]["Text113"]
tNpcGossip[10631]["Text114"] = tChildrenDay_SellIce_Text[10631]["Text114"]
tNpcGossip[10631]["tOption1-1"] = {1}
tNpcGossip[10631]["Option1"] = tChildrenDay_SellIce_Text[10631]["Option1"]
tNpcGossip[10631]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Beftime"])
end

--活动后
tNpcGossip[10631]["Text1-2"] = {121}
tNpcGossip[10631]["Text121"] = tChildrenDay_SellIce_Text[10631]["Text121"]
tNpcGossip[10631]["tOption1-2"] = {2}
tNpcGossip[10631]["Option2"] = tChildrenDay_SellIce_Text[10631]["Option2"]
tNpcGossip[10631]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Beftime"]) and not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) and not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Awardtime"])
end 

--活动中
tNpcGossip[10631]["Text1-3"] = {131,112,113,114}
tNpcGossip[10631]["Text131"] = tChildrenDay_SellIce_Text[10631]["Text131"]
tNpcGossip[10631]["tOption1-3"] = {3,4,5,6,7,8,9}
tNpcGossip[10631]["Option3"] = tChildrenDay_SellIce_Text[10631]["Option3"]
tNpcGossip[10631]["Option4"] = tChildrenDay_SellIce_Text[10631]["Option4"]
tNpcGossip[10631]["Option5"] = tChildrenDay_SellIce_Text[10631]["Option5"]
tNpcGossip[10631]["Option6"] = tChildrenDay_SellIce_Text[10631]["Option6"]
tNpcGossip[10631]["Option7"] = tChildrenDay_SellIce_Text[10631]["Option7"]
tNpcGossip[10631]["Option8"] = tChildrenDay_SellIce_Text[10631]["Option8"]
tNpcGossip[10631]["Option9"] = tChildrenDay_SellIce_Text[10631]["Option9"]
tNpcGossip[10631]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) or Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Awardtime"])
end

tNpcGossip[10631]["OptionChkFunc3"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
end
tNpcGossip[10631]["OptionChkFunc4"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
end
tNpcGossip[10631]["OptionChkFunc5"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) or Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Awardtime"])
end
tNpcGossip[10631]["OptionChkFunc6"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
end
tNpcGossip[10631]["OptionChkFunc7"] = function ()
	return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"]) or Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Awardtime"])
end

tNpcGossip[10631]["OptionFunc3"]="ChildrenDay_SellIce_Option3_10631</N>10631"
tNpcGossip[10631]["OptionFunc4"]="ChildrenDay_SellIce_Option4_10631</N>10631"
tNpcGossip[10631]["OptionFunc5"]="ChildrenDay_SellIce_Option5_10631</N>10631"
tNpcGossip[10631]["OptionFunc6"]="ChildrenDay_SellIce_Option6_10631</N>10631"
tNpcGossip[10631]["OptionFunc7"]="ChildrenDay_SellIce_Option7_10631</N>10631"
tNpcGossip[10631]["OptionPoint8"]="4-1"

tNpcGossip[10631]["Text2-1"] = {211}
tNpcGossip[10631]["Text211"] = tChildrenDay_SellIce_Text[10631]["Text211"]
tNpcGossip[10631]["tOption2-1"] = {20}
tNpcGossip[10631]["Option20"] = tChildrenDay_SellIce_Text[10631]["Option20"]

tNpcGossip[10631]["Text2-2"] = {221}
tNpcGossip[10631]["Text221"] = tChildrenDay_SellIce_Text[10631]["Text221"]
tNpcGossip[10631]["tOption2-2"] = {21}
tNpcGossip[10631]["Option21"] = tChildrenDay_SellIce_Text[10631]["Option21"]

tNpcGossip[10631]["Text2-3"] = {231}
tNpcGossip[10631]["Text231"] = tChildrenDay_SellIce_Text[10631]["Text231"]
tNpcGossip[10631]["tOption2-3"] = {22}
tNpcGossip[10631]["Option22"] = tChildrenDay_SellIce_Text[10631]["Option22"]

tNpcGossip[10631]["Text2-4"] = {241}
tNpcGossip[10631]["Text241"] = tChildrenDay_SellIce_Text[10631]["Text241"]
tNpcGossip[10631]["tOption2-4"] = {23}
tNpcGossip[10631]["Option23"] = tChildrenDay_SellIce_Text[10631]["Option23"]

tNpcGossip[10631]["Text2-5"] = {251}
tNpcGossip[10631]["Text251"] = tChildrenDay_SellIce_Text[10631]["Text251"]
tNpcGossip[10631]["tOption2-5"] = {24}
tNpcGossip[10631]["Option24"] = tChildrenDay_SellIce_Text[10631]["Option24"]

tNpcGossip[10631]["Text2-6"] = {261}
tNpcGossip[10631]["Text261"] = tChildrenDay_SellIce_Text[10631]["Text261"]
tNpcGossip[10631]["tOption2-6"] = {25}
tNpcGossip[10631]["Option25"] = tChildrenDay_SellIce_Text[10631]["Option25"]

tNpcGossip[10631]["Text2-7"] = {271}
tNpcGossip[10631]["Text271"] = tChildrenDay_SellIce_Text[10631]["Text271"]
tNpcGossip[10631]["tOption2-7"] = {26}
tNpcGossip[10631]["Option26"] = tChildrenDay_SellIce_Text[10631]["Option26"]

tNpcGossip[10631]["Text3-1"] = {311}
tNpcGossip[10631]["Text311"] = tChildrenDay_SellIce_Text[10631]["Text311"]
tNpcGossip[10631]["tOption3-1"] = {30}
tNpcGossip[10631]["Option30"] = tChildrenDay_SellIce_Text[10631]["Option30"]

tNpcGossip[10631]["Text3-2"] = {321}
tNpcGossip[10631]["Text321"] = tChildrenDay_SellIce_Text[10631]["Text321"]
tNpcGossip[10631]["tOption3-2"] = {31}
tNpcGossip[10631]["Option31"] = tChildrenDay_SellIce_Text[10631]["Option31"]

tNpcGossip[10631]["Text3-3"] = {331}
tNpcGossip[10631]["Text331"] = tChildrenDay_SellIce_Text[10631]["Text331"]
tNpcGossip[10631]["tOption3-3"] = {32}
tNpcGossip[10631]["Option32"] = tChildrenDay_SellIce_Text[10631]["Option32"]

tNpcGossip[10631]["Text3-4"] = {341,342,343,344,345}
tNpcGossip[10631]["Text341"] = tChildrenDay_SellIce_Text[10631]["Text341"]
tNpcGossip[10631]["Text342"] = tChildrenDay_SellIce_Text[10631]["Text342"]
tNpcGossip[10631]["Text343"] = tChildrenDay_SellIce_Text[10631]["Text343"]
tNpcGossip[10631]["Text344"] = tChildrenDay_SellIce_Text[10631]["Text344"]
tNpcGossip[10631]["Text345"] = tChildrenDay_SellIce_Text[10631]["Text345"]
tNpcGossip[10631]["tOption3-4"] = {33}
tNpcGossip[10631]["Option33"] = tChildrenDay_SellIce_Text[10631]["Option33"]

tNpcGossip[10631]["Text3-5"] = {351}
tNpcGossip[10631]["Text351"] = tChildrenDay_SellIce_Text[10631]["Text351"]
tNpcGossip[10631]["tOption3-5"] = {34}
tNpcGossip[10631]["Option34"] = tChildrenDay_SellIce_Text[10631]["Option34"]

tNpcGossip[10631]["Text3-6"] = {361,362,363,364}
tNpcGossip[10631]["Text361"] = tChildrenDay_SellIce_Text[10631]["Text361"]
tNpcGossip[10631]["Text362"] = tChildrenDay_SellIce_Text[10631]["Text362"]
tNpcGossip[10631]["Text363"] = tChildrenDay_SellIce_Text[10631]["Text363"]
tNpcGossip[10631]["Text364"] = tChildrenDay_SellIce_Text[10631]["Text364"]
tNpcGossip[10631]["tOption3-6"] = {35}
tNpcGossip[10631]["Option35"] = tChildrenDay_SellIce_Text[10631]["Option35"]

tNpcGossip[10631]["Text3-7"] = {371}
tNpcGossip[10631]["Text371"] = tChildrenDay_SellIce_Text[10631]["Text371"]
tNpcGossip[10631]["tOption3-7"] = {36}
tNpcGossip[10631]["Option36"] = tChildrenDay_SellIce_Text[10631]["Option36"]

tNpcGossip[10631]["Text3-8"] = {381}
tNpcGossip[10631]["Text381"] = tChildrenDay_SellIce_Text[10631]["Text381"]
tNpcGossip[10631]["tOption3-8"] = {37}
tNpcGossip[10631]["Option37"] = tChildrenDay_SellIce_Text[10631]["Option37"]

tNpcGossip[10631]["Text4-1"] = {411,412,413}
tNpcGossip[10631]["Text411"] = tChildrenDay_SellIce_Text[10631]["Text411"]
tNpcGossip[10631]["Text412"] = tChildrenDay_SellIce_Text[10631]["Text412"]
tNpcGossip[10631]["Text413"] = tChildrenDay_SellIce_Text[10631]["Text413"]
tNpcGossip[10631]["tOption4-1"] = {40}
tNpcGossip[10631]["Option40"] = tChildrenDay_SellIce_Text[10631]["Option40"]
tNpcGossip[10631]["OptionPoint40"]="5-1"

tNpcGossip[10631]["Text5-1"] = {511,512,513}
tNpcGossip[10631]["Text511"] = tChildrenDay_SellIce_Text[10631]["Text511"]
tNpcGossip[10631]["Text512"] = tChildrenDay_SellIce_Text[10631]["Text512"]
tNpcGossip[10631]["Text513"] = tChildrenDay_SellIce_Text[10631]["Text513"]
tNpcGossip[10631]["tOption5-1"] = {41}
tNpcGossip[10631]["Option41"] = tChildrenDay_SellIce_Text[10631]["Option41"]

--邻家小丫头若雪
tNpcFace[2986] = 155
tNpcGossip[10632] = tNpcGossip[10632] or DefaultNpc:new{}
tNpcGossip[10632]["OptionHidden"] = 1

--贪嘴神童艾吃吃
tNpcFace[2987] = 68
tNpcGossip[10633] = tNpcGossip[10633] or DefaultNpc:new{}
tNpcGossip[10633]["OptionHidden"] = 1

--小跟屁虫狗娃
tNpcFace[2988] = 41
tNpcGossip[10634] = tNpcGossip[10634] or DefaultNpc:new{}
tNpcGossip[10634]["OptionHidden"] = 1

for i= 10632,10634 do
--活动前后
	tNpcGossip[i]["Text1-1"] = {111}
	tNpcGossip[i]["Text111"] = tChildrenDay_SellIce_Text[i]["Text111"]
	tNpcGossip[i]["tOption1-1"] = {1}
	tNpcGossip[i]["Option1"] = tChildrenDay_SellIce_Text[i]["Option1"]
	tNpcGossip[i]["ChkFunc1-1"] = function ()
		return not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
	end
--活动中
	tNpcGossip[i]["Text1-2"] = {121}
	tNpcGossip[i]["tOption1-2"] = {2}
	tNpcGossip[i]["Option2"] = tChildrenDay_SellIce_Text[i]["Option2"]
	tNpcGossip[i]["ChkFunc1-2"] = function ()
		return ChildrenDay_SellIce_Children()
	end
	tNpcGossip[i]["Text2-1"] = {211}
	tNpcGossip[i]["Text211"] = tChildrenDay_SellIce_Text[i]["Text211"]
	tNpcGossip[i]["tOption2-1"] = {10}
	tNpcGossip[i]["Option10"] = tChildrenDay_SellIce_Text[i]["Option10"]

	tNpcGossip[i]["Text2-2"] = {221}
	tNpcGossip[i]["Text221"] = tChildrenDay_SellIce_Text[i]["Text221"]
	tNpcGossip[i]["tOption2-2"] = {11}
	tNpcGossip[i]["Option11"] = tChildrenDay_SellIce_Text[i]["Option11"]
	
	tNpcGossip[i]["Text2-3"] = {231}
	tNpcGossip[i]["Text231"] = tChildrenDay_SellIce_Text[i]["Text231"]
	tNpcGossip[i]["tOption2-3"] = {12}
	tNpcGossip[i]["Option12"] = tChildrenDay_SellIce_Text[i]["Option12"]

end

--水果提取箱
tNpcGossip[10635] = tNpcGossip[10635] or DefaultNpc:new{}
tNpcGossip[10635]["OptionHidden"] = 1

--装饰食品提取箱
tNpcGossip[10636] = tNpcGossip[10636] or DefaultNpc:new{}
tNpcGossip[10636]["OptionHidden"] = 1

--冰淇淋提取箱
tNpcGossip[10637] = tNpcGossip[10637] or DefaultNpc:new{}
tNpcGossip[10637]["OptionHidden"] = 1

for i= 10635,10637 do
	tNpcGossip[i]["Text1-1"] = {111}
	tNpcGossip[i]["Text111"] = tChildrenDay_SellIce_Text[i]["Text111"]
	tNpcGossip[i]["tOption1-1"] = {1,2,3}
	tNpcGossip[i]["Option1"] = tChildrenDay_SellIce_Text[i]["Option1"]
	tNpcGossip[i]["Option2"] = tChildrenDay_SellIce_Text[i]["Option2"]
	tNpcGossip[i]["Option3"] = tChildrenDay_SellIce_Text[i]["Option3"]
	tNpcGossip[i]["OptionChkFunc1"] = function ()
		return not Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
	end
	tNpcGossip[i]["OptionChkFunc2"] = function ()
		return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
	end
	tNpcGossip[i]["OptionChkFunc3"] = function ()
		return Sys_ChkFullTime(tChildrenDay_SellIce_Cont["Nowtime"])
	end
	tNpcGossip[i]["OptionFunc2"]="ChildrenDay_SellIce_Box</N>"..i.."</N>1"
	tNpcGossip[i]["OptionFunc3"]="ChildrenDay_SellIce_Box</N>"..i.."</N>2"

	tNpcGossip[i]["Text2-1"] = {211}
	tNpcGossip[i]["Text211"] = tChildrenDay_SellIce_Text[i]["Text211"]
	tNpcGossip[i]["tOption2-1"] = {10}
	tNpcGossip[i]["Option10"] = tChildrenDay_SellIce_Text[i]["Option10"]

	tNpcGossip[i]["Text2-2"] = {221}
	tNpcGossip[i]["Text221"] = tChildrenDay_SellIce_Text[i]["Text221"]
	tNpcGossip[i]["tOption2-2"] = {11}
	tNpcGossip[i]["Option11"] = tChildrenDay_SellIce_Text[i]["Option11"]

	tNpcGossip[i]["Text2-3"] = {231}
	tNpcGossip[i]["Text231"] = tChildrenDay_SellIce_Text[i]["Text231"]
	tNpcGossip[i]["tOption2-3"] = {12}
	tNpcGossip[i]["Option12"] = tChildrenDay_SellIce_Text[i]["Option12"]

end

-------------------------------------------------物品模板-------------------------------------------------
tItem[3003764] = tItem[3003764] or {}
tItem[3003764]["Function"] = function (nItemId)
	ChildrenDay_SellIce_Item3003764(nItemId)
end
tItem[3003764]["Text1-1"] = {111}
tItem[3003764]["Text111"] =  tChildrenDay_SellIce_Text[3003764]["Text111"]
tItem[3003764]["tOption1-1"] = {1,2,3,4,5,6,7,8}
tItem[3003764]["Option1"] = tChildrenDay_SellIce_Text[3003764]["Option1"]
tItem[3003764]["Option2"] = tChildrenDay_SellIce_Text[3003764]["Option2"]
tItem[3003764]["Option3"] = tChildrenDay_SellIce_Text[3003764]["Option3"]
tItem[3003764]["Option4"] = tChildrenDay_SellIce_Text[3003764]["Option4"]
tItem[3003764]["Option5"] = tChildrenDay_SellIce_Text[3003764]["Option5"]
tItem[3003764]["Option6"] = tChildrenDay_SellIce_Text[3003764]["Option6"]
tItem[3003764]["Option7"] = tChildrenDay_SellIce_Text[3003764]["Option7"]
tItem[3003764]["Option8"] = tChildrenDay_SellIce_Text[3003764]["Option8"]

tItem[3003764]["OptionFunc1"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>1"
tItem[3003764]["OptionFunc2"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>2"
tItem[3003764]["OptionFunc3"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>3"
tItem[3003764]["OptionFunc4"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>4"
tItem[3003764]["OptionFunc5"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>5"
tItem[3003764]["OptionFunc6"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>6"
tItem[3003764]["OptionFunc7"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>7"
tItem[3003764]["OptionFunc8"] = "ChildrenDay_SellIce_Item3003764_1</N>3003764</N>8"

for i = 3003771,3003778 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function (nItemId)
	ChildrenDay_SellIce_Item3003771(nItemId)
	end
end

--时间检测
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
-- table.insert(tOntimerMin_HM[0005],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0006] = tOntimerMin_HM[0006] or {}
-- table.insert(tOntimerMin_HM[0006],ChildrenDay_SellIce_MoveDynaGlobal)
-- tOntimerMin_HM[0007] = tOntimerMin_HM[0007] or {}
-- table.insert(tOntimerMin_HM[0007],ChildrenDay_SellIce_MoveDynaGlobal)


