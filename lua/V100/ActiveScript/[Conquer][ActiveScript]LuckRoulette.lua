------------------------------------------------------------------------------------
--Name:			160428[简体征服][活动脚本]试手气活动制作
--Purpose:		试手气活动制作
--Creator:		张世超
--Created:		2016/04/28
------------------------------------------------------------------------------------
-- 40240 = V100\活动脚本\[征服][活动脚本]试手气活动制作.lua
-- 40240 = V100\ActiveScript\[Conquer][ActiveScript]LuckRoulette.lua

--前缀	LuckRoulette_

-- ### cq_dyna_global_data 51166 data0 当天100倍奖励是否已领取
-- ##掩码 14483 记录每天兑换次数，玩家每天只能祈福5次。
-- ##掩码 14484 记录运势情况
-- ##掩码 14485 背包信




local tLuckRoulette_Data = {}
	--活动时间相关
	tLuckRoulette_Data["BeforeActivityTime"] = "2016-01-01 00:00 2016-08-17 23:59"
	tLuckRoulette_Data["ActivityTime"] = "2016-08-18 00:00 2016-08-24 23:59"

	
	tLuckRoulette_Data["Metempsychosis"] = 0
	tLuckRoulette_Data["Level"] = 80
	tLuckRoulette_Data["CostCP"] = 27		--话费天石
	tLuckRoulette_Data["MaxCP"] = 2700		--最高奖励天石数
	tLuckRoulette_Data["ThCP"] = 810		--全服限制替换奖励
	
	tLuckRoulette_Data["GlobId"] = 51166		
	tLuckRoulette_Data["GlobIdAward"] = 1		
	tLuckRoulette_Data["AwardMax"] = 2700
	tLuckRoulette_Data["Effect"] = "zf2-e231"

	tLuckRoulette_Data["Secs"] = 2
	tLuckRoulette_Data["ActionId"] = 100
	
	tLuckRoulette_Data["TaskID1"] = 3685	--未开出100奖励的轮盘
	tLuckRoulette_Data["TaskID2"] = 3686	--已开出100奖励的轮盘
	
	
local tLuckRoulette_Data_Log = {}
	tLuckRoulette_Data_Log["Award"] = "%s,0,0,0,12000394,2,0,0"
	tLuckRoulette_Data_Log["Emoney"] = "350	4443	27	27	1	"		--试手气的emoneylog
	tLuckRoulette_Data_Log["CPMono"] = "0,0,%s,1,12000394,2,3,%s"
	
-- 2倍天石赐福袋 350 20260
-- 3倍天石赐福袋 350 20261
-- 5倍天石赐福袋 350 20262
-- 10倍天石赐福袋 350 20263
-- 30倍天石赐福袋 350 20264
-- 100倍天石赐福袋 350 20265
	tLuckRoulette_Data_Log["AwardEmoney"] = {}
	tLuckRoulette_Data_Log["AwardEmoney"][3200234] = "350	20260	0	0	1	"
	tLuckRoulette_Data_Log["AwardEmoney"][3200235] = "350	20261	0	0	1	"
	tLuckRoulette_Data_Log["AwardEmoney"][3200236] = "350	20262	0	0	1	"
	tLuckRoulette_Data_Log["AwardEmoney"][3200237] = "350	20263	0	0	1	"
	tLuckRoulette_Data_Log["AwardEmoney"][3200238] = "350	20264	0	0	1	"
	tLuckRoulette_Data_Log["AwardEmoney"][3200239] = "350	20265	0	0	1	"
	
local tLuckRoulette_GiftData = {}
	tLuckRoulette_GiftData[3200234] = {}
	tLuckRoulette_GiftData[3200235] = {}
	tLuckRoulette_GiftData[3200236] = {}
	tLuckRoulette_GiftData[3200237] = {}
	tLuckRoulette_GiftData[3200238] = {}
	tLuckRoulette_GiftData[3200239] = {}

	tLuckRoulette_GiftData[3200234]["Amount"] = 54
	tLuckRoulette_GiftData[3200235]["Amount"] = 81
	tLuckRoulette_GiftData[3200236]["Amount"] = 135
	tLuckRoulette_GiftData[3200237]["Amount"] = 270
	tLuckRoulette_GiftData[3200238]["Amount"] = 810
	tLuckRoulette_GiftData[3200239]["Amount"] = 2700
--掩码记录
--掩码 14483 记录每天兑换次数，玩家每天只能聚宝5次。
--掩码 14484 记录玩家运气

local tLuckRoulette_Stc = {}
	tLuckRoulette_Stc["EventType"] = 144
	tLuckRoulette_Stc["DataType"] = 83
	tLuckRoulette_Stc["MaxTime"] = 5

	tLuckRoulette_Stc["EventLuck"] = 144
	tLuckRoulette_Stc["DataLuck"] = 84
	






--------------------------------------------------------------------------------------逻辑部分
--对白接口
function LuckRoulette_Main()
	local nNpcId = Get_NpcId()
	
	if not User_JudgeLevelAndMetempsychosis(tLuckRoulette_Data["Level"],tLuckRoulette_Data["Metempsychosis"]) or (Sys_ChkFullTime(tLuckRoulette_Data["BeforeActivityTime"])) then
	-- if not User_JudgeLevelAndMetempsychosis(tLuckRoulette_Data["Level"],tLuckRoulette_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end	
	
	if not Sys_ChkFullTime(tLuckRoulette_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	
	local nEventType = tLuckRoulette_Stc["EventType"]
	local nDataType = tLuckRoulette_Stc["DataType"]
	Task_StcReset(nEventType,nDataType)	
	local nLeftTime = tLuckRoulette_Stc["MaxTime"]-Get_UserStatisticValue(nEventType,nDataType)
	tNpcGossip[nNpcId]["Text125"] = string.format(tLuckRoulette_Text[11071]["Text125"],nLeftTime)
	LinkNpcGossipFunc_New(nNpcId,"1-2")
	return
end

--查看当前运势
function LuckRoulette_Luck(nNpcId)
	local nEventType = tLuckRoulette_Stc["EventLuck"]
	local nDataType = tLuckRoulette_Stc["DataLuck"]
	Task_StcReset(nEventType,nDataType,0,0,300)	--5分钟清零
	-- Task_StcReset(nEventType,nDataType,0,10)	--5分钟清零
	local nMark = Get_UserStatisticValue(nEventType,nDataType) or 0

	if nMark == 0 then
		nMark = math.random(#tLuckRoulette_Text["Luck"])
		Task_SetStatistic(nEventType,nDataType,nMark,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)	
	end

	tNpcGossip[nNpcId]["Text311"] = tLuckRoulette_Text["Luck"][nMark] [1]
	tNpcGossip[nNpcId]["Text312"] = tLuckRoulette_Text["Luck"][nMark] [2]
	tNpcGossip[nNpcId]["Text313"] = tLuckRoulette_Text["Luck"][nMark] [3]
	tNpcGossip[nNpcId]["Text314"] = tLuckRoulette_Text["Luck"][nMark] [4]
	tNpcGossip[nNpcId]["Text315"] = tLuckRoulette_Text["Luck"][nMark] [5]
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end


--我要祈福（27天石）。
function LuckRoulette_BuyChk(nNpcId)
	if not Sys_ChkFullTime(tLuckRoulette_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	local nEventType = tLuckRoulette_Stc["EventType"]
	local nDataType = tLuckRoulette_Stc["DataType"]
	Task_StcReset(nEventType,nDataType)
	--无剩余次数
	if Task_ChkStcValue(nEventType,nDataType,">=",tLuckRoulette_Stc["MaxTime"]) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["NoTimes"])
		return
	end
	
	--天石不足
	if not (Get_UserEMoney() >= tLuckRoulette_Data["CostCP"]) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["NoCPs"])
		return
	end	
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["Nospace"])
		return
	end	
	local nTaskId = 0
	if Get_SysDynaGlobalData0(tLuckRoulette_Data["GlobId"]) >= tLuckRoulette_Data["GlobIdAward"] then
		nTaskId = tLuckRoulette_Data["TaskID1"]
	else
		nTaskId = tLuckRoulette_Data["TaskID2"]
	end	
	if not Task_ChkTaskDetail(nTaskId) then
	-- 新增任务掩码 
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end	
	User_TaskReward(nTaskId,0) --轮盘抽奖
end	

function LuckRoulette_Buy()
	if not Sys_ChkFullTime(tLuckRoulette_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local nEventType = tLuckRoulette_Stc["EventType"]
	local nDataType = tLuckRoulette_Stc["DataType"]
	Task_StcReset(nEventType,nDataType)
	--无剩余次数
	if Task_ChkStcValue(nEventType,nDataType,">=",tLuckRoulette_Stc["MaxTime"]) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["NoTimes"])
		return
	end
	
	--天石不足
	if not (Get_UserEMoney() >= tLuckRoulette_Data["CostCP"]) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["NoCPs"])
		return
	end	
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["Nospace"])
		return
	end	
	if User_AddEMoney(-tLuckRoulette_Data["CostCP"]) then
		local nTime = Get_UserStatisticValue(nEventType,nDataType)
		Task_SetStatistic(nEventType,nDataType,nTime+1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)	
		
		local nTaskId = 0
		if Get_SysDynaGlobalData0(tLuckRoulette_Data["GlobId"]) >= tLuckRoulette_Data["GlobIdAward"] then
			nTaskId = tLuckRoulette_Data["TaskID1"]
		else
			nTaskId = tLuckRoulette_Data["TaskID2"]
		end	
		if not Task_ChkTaskDetail(nTaskId) then
		-- 新增任务掩码 
			if not Task_AddTaskDetail(nTaskId) then
				return
			end
		end
		User_TaskReward(nTaskId,1) --轮盘抽奖
		Sys_SaveActionFestivalLog(string.format(tLuckRoulette_Data_Log["Award"],tLuckRoulette_Data["CostCP"]))
		Sys_SaveEmoneyBuy(tLuckRoulette_Data_Log["Emoney"])
	end
end 




function LuckRoulette_Broadcast(nAwardCPMono)
	local sContent = tLuckRoulette_Text["Broadcast"][nAwardCPMono] or ""
	
	if not (sContent == "") then
		sContent = string.format(sContent,Get_UserName())
		Sys_SystemBroadcast(sContent)
	end
end

function LuckRoulette_GetAwardCPMono(nItemId)
	local nAmount = tLuckRoulette_GiftData[nItemId]["Amount"]


	if (Get_UserMonoEMoney()+nAmount >= G_User_MaxEmoneyMono) then
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["CPMonoLimit"])
		return
	end
	
	if (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		if nAmount == tLuckRoulette_Data["AwardMax"] then
			Sys_SetSynaGlobalData0(tLuckRoulette_Data["GlobId"],tLuckRoulette_Data["GlobIdAward"])
		end
		User_AddEMoneyMono(nAmount)
		User_EffectAdd("self",tLuckRoulette_Data["Effect"])
		Sys_SaveActionFestivalLog(string.format(tLuckRoulette_Data_Log["CPMono"],nItemId,nAmount))
		Sys_SaveEmoneyBuy(tLuckRoulette_Data_Log["AwardEmoney"][nItemId])
		Sys_MsgBox(tLuckRoulette_Text["Msg"]["Award"][nAmount])
		LuckRoulette_Broadcast(nAmount)
	end		
end


function LuckRoulette_GlobIdReset()
	if not Sys_ChkFullTime(tLuckRoulette_Data["ActivityTime"]) then
		return
	end

	if Get_SysDynaGlobalData1(tLuckRoulette_Data["GlobId"]) == 0 then
		Sys_SetSynaGlobalData0(tLuckRoulette_Data["GlobId"],0)
		Sys_SetSynaGlobalData1(tLuckRoulette_Data["GlobId"],1)
	end	
end

function LuckRoulette_GlobIdResetFlag()
	if not Sys_ChkFullTime(tLuckRoulette_Data["ActivityTime"]) then
		return
	end
	
	if Get_SysDynaGlobalData1(tLuckRoulette_Data["GlobId"]) >= 1 then
		Sys_SetSynaGlobalData1(tLuckRoulette_Data["GlobId"],0)
	end	
end



--------------------------------------------------------------------------------------Npc部分
tNpcGossip[11071] = tNpcGossip[11071] or DefaultNpc:new{}
tNpcGossip[11071]["OptionHidden"] = 1

--玩家等级不足
tNpcGossip[11071]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[11071]["tOption1-1"] = {111}
tNpcGossip[11071]["Text111"] = tLuckRoulette_Text[11071]["Text111"]
tNpcGossip[11071]["Text112"] = tLuckRoulette_Text[11071]["Text112"]
tNpcGossip[11071]["Text113"] = tLuckRoulette_Text[11071]["Text113"]
tNpcGossip[11071]["Text114"] = tLuckRoulette_Text[11071]["Text114"]
tNpcGossip[11071]["Text115"] = tLuckRoulette_Text[11071]["Text115"]
tNpcGossip[11071]["Text116"] = tLuckRoulette_Text[11071]["Text116"]
tNpcGossip[11071]["Option111"] = tLuckRoulette_Text[11071]["Option111"]

--主对白
tNpcGossip[11071]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[11071]["tOption1-2"] = {121}
tNpcGossip[11071]["Text121"] = tLuckRoulette_Text[11071]["Text121"]
tNpcGossip[11071]["Text122"] = tLuckRoulette_Text[11071]["Text122"]
tNpcGossip[11071]["Text123"] = tLuckRoulette_Text[11071]["Text123"]
tNpcGossip[11071]["Text124"] = tLuckRoulette_Text[11071]["Text124"]
tNpcGossip[11071]["Text125"] = tLuckRoulette_Text[11071]["Text125"]
tNpcGossip[11071]["Text126"] = tLuckRoulette_Text[11071]["Text126"]
tNpcGossip[11071]["Option121"] = tLuckRoulette_Text[11071]["Option121"]
tNpcGossip[11071]["Option122"] = tLuckRoulette_Text[11071]["Option122"]
tNpcGossip[11071]["OptionFunc121"] = "LuckRoulette_BuyChk</N>11071"
tNpcGossip[11071]["OptionFunc122"] = "LuckRoulette_Luck</N>11071"

tNpcGossip[11071]["Text1-4"] = {141}
tNpcGossip[11071]["tOption1-4"] = {141}
tNpcGossip[11071]["Text141"] = tLuckRoulette_Text[11071]["Text141"]
tNpcGossip[11071]["Option141"] = tLuckRoulette_Text[11071]["Option141"]

--查看当前运势
tNpcGossip[11071]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[11071]["tOption3-1"] = {311,312}
tNpcGossip[11071]["Text311"] = tLuckRoulette_Text[11071]["Text311"]
tNpcGossip[11071]["Text312"] = tLuckRoulette_Text[11071]["Text312"]
tNpcGossip[11071]["Text313"] = tLuckRoulette_Text[11071]["Text313"]
tNpcGossip[11071]["Text314"] = tLuckRoulette_Text[11071]["Text314"]
tNpcGossip[11071]["Text315"] = tLuckRoulette_Text[11071]["Text315"]
tNpcGossip[11071]["Text316"] = tLuckRoulette_Text[11071]["Text316"]
tNpcGossip[11071]["Option311"] = tLuckRoulette_Text[11071]["Option311"]
tNpcGossip[11071]["Option312"] = tLuckRoulette_Text[11071]["Option312"]
tNpcGossip[11071]["OptionFunc311"] = "LuckRoulette_BuyChk</N>11071"

tNpcGossip[11158] = tNpcGossip[11071] or DefaultNpc:new{}
tNpcGossip[11159] = tNpcGossip[11071] or DefaultNpc:new{}
tNpcGossip[11160] = tNpcGossip[11071] or DefaultNpc:new{}
tNpcGossip[11161] = tNpcGossip[11071] or DefaultNpc:new{}
tNpcGossip[11162] = tNpcGossip[11071] or DefaultNpc:new{}
tNpcGossip[11158]["OptionHidden"] = 1
tNpcGossip[11159]["OptionHidden"] = 1
tNpcGossip[11160]["OptionHidden"] = 1
tNpcGossip[11161]["OptionHidden"] = 1
tNpcGossip[11162]["OptionHidden"] = 1




tItem[3200234] = tItem[3200234] or {}
tItem[3200234]["Function"] = function(nItemId,sItemName)
	LuckRoulette_GetAwardCPMono(nItemId)
end
tItem[3200235] = tItem[3200235] or {}
tItem[3200235]["Function"] = function(nItemId,sItemName)
	LuckRoulette_GetAwardCPMono(nItemId)
end
tItem[3200236] = tItem[3200236] or {}
tItem[3200236]["Function"] = function(nItemId,sItemName)
	LuckRoulette_GetAwardCPMono(nItemId)
end
tItem[3200237] = tItem[3200237] or {}
tItem[3200237]["Function"] = function(nItemId,sItemName)
	LuckRoulette_GetAwardCPMono(nItemId)
end
tItem[3200238] = tItem[3200238] or {}
tItem[3200238]["Function"] = function(nItemId,sItemName)
	LuckRoulette_GetAwardCPMono(nItemId)
end
tItem[3200239] = tItem[3200239] or {}
tItem[3200239]["Function"] = function(nItemId,sItemName)
	LuckRoulette_GetAwardCPMono(nItemId)
end


--时间函数触发
--'00:00'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],LuckRoulette_GlobIdReset)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],LuckRoulette_GlobIdReset)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],LuckRoulette_GlobIdResetFlag)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],LuckRoulette_GlobIdResetFlag)



