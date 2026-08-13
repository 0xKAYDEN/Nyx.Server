
------------------------------------------------------------------------------------
--Name:			190215[英文征服][活动脚本]灵珠兑换商店线上部分制作
--Purpose:		灵珠兑换商店线上部分制作
--Creator:		茅志伟
--Created:		2019/02/15
------------------------------------------------------------------------------------
-- 命名前缀 tDragonSpiritWithdrawal_

-- lua.ini 41142
-- 41142 = V100\ActiveScript\[Conquer][ActiveScript]DragonSpiritWithdrawal.lua
-- logId = 12001314

--掩码介绍
--190,55 背包信
--190,56 记录12 阶灵珠上交数量
--190,57 记录13 阶灵珠上交数量
--190,58 记录14 阶灵珠上交数量
--190,59 记录15 阶灵珠上交数量
--190,60 记录16 阶灵珠上交数量
--190,61 记录17 阶灵珠上交数量
--190,62 记录18 阶灵珠上交数量
--190,63 记录19 阶灵珠上交数量
--190,64 记录屏蔽二次确认情况

--global 介绍
--53250 记录每日全服玩家12-17阶灵珠上交情况
--53251 记录每日全服玩家18-19阶灵珠上交情况
--53252 记录每月全服玩家12-17阶灵珠上交情况
--53253 记录每月全服玩家18-19阶灵珠上交情况


local tDragonSpiritWithdrawal_Stc = {}
--12阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200012] = {}
tDragonSpiritWithdrawal_Stc[4200012]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200012]["DataType"] = 56
--13阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200013] = {}
tDragonSpiritWithdrawal_Stc[4200013]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200013]["DataType"] = 57
--14阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200014] = {}
tDragonSpiritWithdrawal_Stc[4200014]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200014]["DataType"] = 58
--15阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200015] = {}
tDragonSpiritWithdrawal_Stc[4200015]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200015]["DataType"] = 59
--16阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200016] = {}
tDragonSpiritWithdrawal_Stc[4200016]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200016]["DataType"] = 60
--17阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200017] = {}
tDragonSpiritWithdrawal_Stc[4200017]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200017]["DataType"] = 61
--18阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200018] = {}
tDragonSpiritWithdrawal_Stc[4200018]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200018]["DataType"] = 62
--19阶灵珠上交数量
tDragonSpiritWithdrawal_Stc[4200019] = {}
tDragonSpiritWithdrawal_Stc[4200019]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[4200019]["DataType"] = 63
--记录二次确认屏蔽情况
tDragonSpiritWithdrawal_Stc[1] = {}
tDragonSpiritWithdrawal_Stc[1]["EventType"] = 190
tDragonSpiritWithdrawal_Stc[1]["DataType"] = 64


local tDragonSpiritWithdrawal_Data = {}

tDragonSpiritWithdrawal_Data[12] = 4200012
tDragonSpiritWithdrawal_Data[13] = 4200013
tDragonSpiritWithdrawal_Data[14] = 4200014
tDragonSpiritWithdrawal_Data[15] = 4200015
tDragonSpiritWithdrawal_Data[16] = 4200016
tDragonSpiritWithdrawal_Data[17] = 4200017
tDragonSpiritWithdrawal_Data[18] = 4200018
tDragonSpiritWithdrawal_Data[19] = 4200019

tDragonSpiritWithdrawal_Data["GlobalId"] = {}
tDragonSpiritWithdrawal_Data["GlobalId"][1] = 53250
tDragonSpiritWithdrawal_Data["GlobalId"][2] = 53251
tDragonSpiritWithdrawal_Data["GlobalId"][3] = 53252
tDragonSpiritWithdrawal_Data["GlobalId"][4] = 53253

tDragonSpiritWithdrawal_Data["DayGlobal"] = {}
tDragonSpiritWithdrawal_Data["DayGlobal"][12] = {53250,0}
tDragonSpiritWithdrawal_Data["DayGlobal"][13] = {53250,1}
tDragonSpiritWithdrawal_Data["DayGlobal"][14] = {53250,2}
tDragonSpiritWithdrawal_Data["DayGlobal"][15] = {53250,3}
tDragonSpiritWithdrawal_Data["DayGlobal"][16] = {53250,4}
tDragonSpiritWithdrawal_Data["DayGlobal"][17] = {53250,5}
tDragonSpiritWithdrawal_Data["DayGlobal"][18] = {53251,0}
tDragonSpiritWithdrawal_Data["DayGlobal"][19] = {53251,1}

tDragonSpiritWithdrawal_Data["MonthGlobal"] = {}
tDragonSpiritWithdrawal_Data["MonthGlobal"][12] = {53252,0}
tDragonSpiritWithdrawal_Data["MonthGlobal"][13] = {53252,1}
tDragonSpiritWithdrawal_Data["MonthGlobal"][14] = {53252,2}
tDragonSpiritWithdrawal_Data["MonthGlobal"][15] = {53252,3}
tDragonSpiritWithdrawal_Data["MonthGlobal"][16] = {53252,4}
tDragonSpiritWithdrawal_Data["MonthGlobal"][17] = {53252,5}
tDragonSpiritWithdrawal_Data["MonthGlobal"][18] = {53253,0}
tDragonSpiritWithdrawal_Data["MonthGlobal"][19] = {53253,1}

local tDragonSpiritWithdrawal_Log = {}
tDragonSpiritWithdrawal_Log["DeleteItem"] = "0,0,%d,%d,0,12001314,2,0,0"

----------------------------------------------------逻辑
--第一层上交判断是否携带灵珠
function DragonSpiritWithdrawal_ChoiceDragon(nNpcId,nNum)
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	local nItemId = tDragonSpiritWithdrawal_Data[nNum]
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["NotDragonSpirit1"],nNum),"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>1-3")
		return
	else
		tNpcGossip[nNpcId]["Text221"] = string.format(tDragonSpiritWithdrawal_Text[nNpcId]["Text221"],nNum)
		tNpcGossip[nNpcId]["OptionFunc221"] = "DragonSpiritWithdrawal_DragonCount</N>" ..nNpcId.. "</N>1</N>" ..nItemId.. "</N>" ..nNum
		tNpcGossip[nNpcId]["OptionFunc222"] = "DragonSpiritWithdrawal_DragonCount</N>" ..nNpcId.. "</N>5</N>" ..nItemId.. "</N>" ..nNum
		tNpcGossip[nNpcId]["OptionFunc223"] = "DragonSpiritWithdrawal_DragonCount</N>" ..nNpcId.. "</N>0</N>" ..nItemId.. "</N>" ..nNum
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end 
end 
--第二层上交判断所选灵珠数量
function DragonSpiritWithdrawal_DragonCount(nNpcId,nNum,nItemId,nlevel)
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	if nNum == 0 then 
		nNum = Get_CountItemType(nItemId,0)
		if nNum == 0 then 
			Sys_MsgBox(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["NotDragonSpirit2"],"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>1-3")
			return
		end 
	else
		if not Item_ChkMulItem(nItemId,nItemId,nNum) then 
			Sys_MsgBox(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["NotDragonSpirit2"],"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>1-3")
			return
		end 
	end 
	local nEventType1 = tDragonSpiritWithdrawal_Stc[1]["EventType"]
	local nDataType1 = tDragonSpiritWithdrawal_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 == 0 then 
		tNpcGossip[nNpcId]["Text231"] = string.format(tDragonSpiritWithdrawal_Text[nNpcId]["Text231"],nNum,nlevel)
		tNpcGossip[nNpcId]["OptionFunc231"] = "DragonSpiritWithdrawal_HandIn</N>" ..nNum.. "</N>" ..nItemId.. "</N>" ..nlevel
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	else 
		if Item_ChkMulItem(nItemId,nItemId,nNum) then 
			if Item_DelMulItem(nItemId,nItemId,nNum) then 
				local nEventType = tDragonSpiritWithdrawal_Stc[nItemId]["EventType"]
				local nDataType = tDragonSpiritWithdrawal_Stc[nItemId]["DataType"]
				Task_AddStatistic(nEventType,nDataType,nNum,1)
				Task_SetStcTimestamp(nEventType,nDataType,0)
				local nDayGlobalId = tDragonSpiritWithdrawal_Data["DayGlobal"][nlevel][1]
				local nMonthGlobalId = tDragonSpiritWithdrawal_Data["MonthGlobal"][nlevel][1]
				local nDayPos = tDragonSpiritWithdrawal_Data["DayGlobal"][nlevel][2]
				local nMonthPos = tDragonSpiritWithdrawal_Data["MonthGlobal"][nlevel][2]
				local nDayData = Get_SysDynaGlobalData(nDayGlobalId,nDayPos)
				local nMonthData = Get_SysDynaGlobalData(nMonthGlobalId,nMonthPos)
				nDayData = nDayData + nNum
				nMonthData = nMonthData + nNum
				Sys_SetSynaGlobalData(nDayGlobalId,nDayPos,nDayData)
				Sys_SetSynaGlobalData(nMonthGlobalId,nMonthPos,nMonthData)
				Sys_MsgBox(string.format(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["HaveDragonSpirit"],nNum,nlevel))
				--删除灵珠log
				local nLogText = string.format(tDragonSpiritWithdrawal_Log["DeleteItem"],nItemId,nNum)
				Sys_SaveActionFestivalLog(nLogText)
			end 
		else 
			Sys_MsgBox(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["NotDragonSpirit2"],"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>1-3")
			return
		end 
	end 
end 
--确定上交
function DragonSpiritWithdrawal_HandIn(nNum,nItemId,nlevel)
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	if Item_ChkMulItem(nItemId,nItemId,nNum) then 
		if Item_DelMulItem(nItemId,nItemId,nNum) then 
			local nEventType = tDragonSpiritWithdrawal_Stc[nItemId]["EventType"]
			local nDataType = tDragonSpiritWithdrawal_Stc[nItemId]["DataType"]
			Task_AddStatistic(nEventType,nDataType,nNum,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			local nDayGlobalId = tDragonSpiritWithdrawal_Data["DayGlobal"][nlevel][1]
			local nMonthGlobalId = tDragonSpiritWithdrawal_Data["MonthGlobal"][nlevel][1]
			local nDayPos = tDragonSpiritWithdrawal_Data["DayGlobal"][nlevel][2]
			local nMonthPos = tDragonSpiritWithdrawal_Data["MonthGlobal"][nlevel][2]
			local nDayData = Get_SysDynaGlobalData(nDayGlobalId,nDayPos)
			local nMonthData = Get_SysDynaGlobalData(nMonthGlobalId,nMonthPos)
			nDayData = nDayData + nNum
			nMonthData = nMonthData + nNum
			Sys_SetSynaGlobalData(nDayGlobalId,nDayPos,nDayData)
			Sys_SetSynaGlobalData(nMonthGlobalId,nMonthPos,nMonthData)
			Sys_MsgBox(string.format(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["HaveDragonSpirit"],nNum,nlevel))
			--删除灵珠log
			local nLogText = string.format(tDragonSpiritWithdrawal_Log["DeleteItem"],nItemId,nNum)
			Sys_SaveActionFestivalLog(nLogText)
		end 
	else 
		Sys_MsgBox(string.format(tDragonSpiritWithdrawal_Text["Sys_MsgBox"]["NotDragonSpirit2"],nNum,nlevel),"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>1-3")
	end 
end 

--屏蔽二次确认
function DragonSpiritWithdrawal_ShieldConfirm()
	local nEventType = tDragonSpiritWithdrawal_Stc[1]["EventType"]
	local nDataType = tDragonSpiritWithdrawal_Stc[1]["DataType"]
	Task_SetStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
end 
--上线重置二次确认状态
function DragonSpiritWithdrawal_NoShield()
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	local nEventType = tDragonSpiritWithdrawal_Stc[1]["EventType"]
	local nDataType = tDragonSpiritWithdrawal_Stc[1]["DataType"]
	Task_SetStatistic(nEventType,nDataType,0,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
end 

--内嵌页面
function DragonSpiritWithdrawal_SendWebDialog()
	User_SendWebDialog("https://coevent.99.com/animaexchangeshop/")
end 

--上交数量显示
function DragonSpiritWithdrawal_NumDialog(nNpcId)
	for i = 12,19 do 
		local nDayGlobalId = tDragonSpiritWithdrawal_Data["DayGlobal"][i][1]
		local nMonthGlobalId = tDragonSpiritWithdrawal_Data["MonthGlobal"][i][1]
		local nDayPos = tDragonSpiritWithdrawal_Data["DayGlobal"][i][2]
		local nMonthPos = tDragonSpiritWithdrawal_Data["MonthGlobal"][i][2]
		local nDayData = Get_SysDynaGlobalData(nDayGlobalId,nDayPos)
		local nMonthData = Get_SysDynaGlobalData(nMonthGlobalId,nMonthPos)
		local nText = i + 2 
		tNpcGossip[nNpcId]["Text26" ..nText] = string.format(tDragonSpiritWithdrawal_Text[nNpcId]["Text26" ..nText],nDayData,nMonthData)
	end 
	LinkNpcGossipFunc_New(nNpcId,"2-6")
end 
--每日清理动态码
function DragonSpiritWithdrawal_ClearGlobalDay()
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	local GolobalId1 = tDragonSpiritWithdrawal_Data["GlobalId"][1]
	local GolobalId2 = tDragonSpiritWithdrawal_Data["GlobalId"][2]
	local data2 = Get_SysDynaGlobalData2(GolobalId2)
	if data2 == 0 then 
	--重置每日上交灵珠全服数量
		Sys_SetSynaGlobalData0(GolobalId1,0)
		Sys_SetSynaGlobalData1(GolobalId1,0)
		Sys_SetSynaGlobalData2(GolobalId1,0)
		Sys_SetSynaGlobalData3(GolobalId1,0)
		Sys_SetSynaGlobalData4(GolobalId1,0)
		Sys_SetSynaGlobalData5(GolobalId1,0)
		Sys_SetSynaGlobalData0(GolobalId2,0)
		Sys_SetSynaGlobalData1(GolobalId2,0)
		--设置重置动态码表示位，data2 = 1 表示已经重置
		Sys_SetSynaGlobalData2(GolobalId2,1)
	end 
end 
--重置 动态码表示为
function DragonSpiritWithdrawal_ClearGlobalIdentification()
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	local GolobalId2 = tDragonSpiritWithdrawal_Data["GlobalId"][2]
	local data2 = Get_SysDynaGlobalData2(GolobalId2)
	if data2 == 1 then
		Sys_SetSynaGlobalData2(GolobalId2,0)
	end 
end 

--每月清理动态码
function DragonSpiritWithdrawal_ClearGlobalMonth()
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	local GolobalId3 = tDragonSpiritWithdrawal_Data["GlobalId"][3]
	local GolobalId4 = tDragonSpiritWithdrawal_Data["GlobalId"][4]
	local data2 = Get_SysDynaGlobalData2(GolobalId4)
	if data2 == 0 then 
	--重置每日上交灵珠全服数量
		Sys_SetSynaGlobalData0(GolobalId3,0)
		Sys_SetSynaGlobalData1(GolobalId3,0)
		Sys_SetSynaGlobalData2(GolobalId3,0)
		Sys_SetSynaGlobalData3(GolobalId3,0)
		Sys_SetSynaGlobalData4(GolobalId3,0)
		Sys_SetSynaGlobalData5(GolobalId3,0)
		Sys_SetSynaGlobalData0(GolobalId4,0)
		Sys_SetSynaGlobalData1(GolobalId4,0)
		--设置重置动态码表示位，data2 = 1 表示已经重置
		Sys_SetSynaGlobalData2(GolobalId4,1)
	end 
end 
--重置 动态码表示为（月）
function DragonSpiritWithdrawal_ClearGlobalIdentificationMonth()
	if not Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]) then 
		return
	end 
	local GolobalId4 = tDragonSpiritWithdrawal_Data["GlobalId"][4]
	local data2 = Get_SysDynaGlobalData2(GolobalId4)
	if data2 == 1 then
		Sys_SetSynaGlobalData2(GolobalId4,0)
	end 
end 

---------------------------------------------------Npc对白

tNpcFace[6494] = 57
tNpcGossip[23745] = tNpcGossip[23745] or DefaultNpc:new{}
tNpcGossip[23745]["OptionHidden"] = 1
tNpcGossip[23745]["DialogueText"] = tDragonSpiritWithdrawal_Text[23745]
--活动前
tNpcGossip[23745]["Text1-1"] = {111,112,113,114}
tNpcGossip[23745]["tOption1-1"] = {111}
tNpcGossip[23745]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"])
end
--活动后
tNpcGossip[23745]["Text1-2"] = {121}
tNpcGossip[23745]["tOption1-2"] = {121}
tNpcGossip[23745]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"])
end
--活动中
tNpcGossip[23745]["Text1-3"] = {131,132,133,134}
tNpcGossip[23745]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23745]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["DragonSpiritWithdrawal"]["ActionTime"])
end
tNpcGossip[23745]["OptionPoint131"] = "2-1"
tNpcGossip[23745]["OptionPoint132"] = "2-5"
tNpcGossip[23745]["OptionFunc133"] = "DragonSpiritWithdrawal_SendWebDialog"
tNpcGossip[23745]["OptionFunc134"] = "DragonSpiritWithdrawal_NumDialog</N>23745"
--接1、上交灵珠（12-19阶）
tNpcGossip[23745]["Text2-1"] = {211}
tNpcGossip[23745]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[23745]["OptionFunc211"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>12"
tNpcGossip[23745]["OptionFunc212"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>13"
tNpcGossip[23745]["OptionFunc213"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>14"
tNpcGossip[23745]["OptionFunc214"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>15"
tNpcGossip[23745]["OptionFunc215"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>16"
tNpcGossip[23745]["OptionFunc216"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>17"
tNpcGossip[23745]["OptionFunc217"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>18"
tNpcGossip[23745]["OptionFunc218"] = "DragonSpiritWithdrawal_ChoiceDragon</N>23745</N>19"
--接1-1~1-8、
--【灵珠足够】
tNpcGossip[23745]["Text2-2"] = {221}
tNpcGossip[23745]["tOption2-2"] = {221,222,223}

--接1-1-1~1-1-3、
--【灵珠足够】
tNpcGossip[23745]["Text2-3"] = {231}
tNpcGossip[23745]["tOption2-3"] = {231,232}
tNpcGossip[23745]["OptionPoint232"] = "2-4"
--接1-x-x-2、屏蔽二次确认。
tNpcGossip[23745]["Text2-4"] = {241}
tNpcGossip[23745]["tOption2-4"] = {241,242}
tNpcGossip[23745]["OptionFunc241"] = "DragonSpiritWithdrawal_ShieldConfirm"
--接2、查看可兑宝物
tNpcGossip[23745]["Text2-5"] = {2511,2512,2513,2514,2515,2516,2517,2518,2519,2520,2521,2522}
tNpcGossip[23745]["tOption2-5"] = {251}
--接4、查看兑奖情况
tNpcGossip[23745]["Text2-6"] = {2611,2612,2613,2614,2615,2616,2617,2618,2619,2620,2621,2622}
tNpcGossip[23745]["tOption2-6"] = {261}


----------------------------------------时间自检----------------------------
--每日清理动态码
local tDragonSpiritWithdrawal_ClearGlobalDay = {}
	tDragonSpiritWithdrawal_ClearGlobalDay["Type"] = 6
	tDragonSpiritWithdrawal_ClearGlobalDay["TimeType"] = 4
	tDragonSpiritWithdrawal_ClearGlobalDay["Multiple"] = {}
	tDragonSpiritWithdrawal_ClearGlobalDay["Multiple"][1] = "00:00 00:05"
	tDragonSpiritWithdrawal_ClearGlobalDay["Func"] = DragonSpiritWithdrawal_ClearGlobalDay
table.insert(tSystemTime_InitialData,tDragonSpiritWithdrawal_ClearGlobalDay)

--重置动态码标识
--每日清理动态表
local tDragonSpiritWithdrawal_ClearGlobalIdentification = {}
	tDragonSpiritWithdrawal_ClearGlobalIdentification["Type"] = 6
	tDragonSpiritWithdrawal_ClearGlobalIdentification["TimeType"] = 4
	tDragonSpiritWithdrawal_ClearGlobalIdentification["Multiple"] = {}
	tDragonSpiritWithdrawal_ClearGlobalIdentification["Multiple"][1] = "00:06 00:10"
	tDragonSpiritWithdrawal_ClearGlobalIdentification["Func"] = DragonSpiritWithdrawal_ClearGlobalIdentification
table.insert(tSystemTime_InitialData,tDragonSpiritWithdrawal_ClearGlobalIdentification)

--每月清理动态码
local tDragonSpiritWithdrawal_ClearGlobalMonth = {}
	tDragonSpiritWithdrawal_ClearGlobalMonth["Type"] = 6
	tDragonSpiritWithdrawal_ClearGlobalMonth["TimeType"] = 2
	tDragonSpiritWithdrawal_ClearGlobalMonth["Multiple"] = {}
	tDragonSpiritWithdrawal_ClearGlobalMonth["Multiple"][1] = "01 00:00 01 00:05"
	tDragonSpiritWithdrawal_ClearGlobalMonth["Func"] = DragonSpiritWithdrawal_ClearGlobalMonth
table.insert(tSystemTime_InitialData,tDragonSpiritWithdrawal_ClearGlobalMonth)

--重置动态码标识
--每月清理动态表
local tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth = {}
	tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth["Type"] = 6
	tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth["TimeType"] = 2
	tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth["Multiple"] = {}
	tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth["Multiple"][1] = "01 00:06 01 00:10"
	tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth["Func"] = DragonSpiritWithdrawal_ClearGlobalIdentificationMonth
table.insert(tSystemTime_InitialData,tDragonSpiritWithdrawal_ClearGlobalIdentificationMonth)

--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,DragonSpiritWithdrawal_NoShield)









