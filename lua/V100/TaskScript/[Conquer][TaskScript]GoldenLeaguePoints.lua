------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]添加黄金联赛积分
--Purpose:	添加黄金联赛积分
--Creator: 	郑鋆
--Created:	2015/08/11
------------------------------------------------------------------------------------

-- 命名前缀
-- GoldenLeaguePoints_

-- logId	18000068
-- 常量表
local tInternalTaskCheats_Count = {}
	tInternalTaskCheats_Count["MaxPoint"] = 650
	tInternalTaskCheats_Count["Max"] = G_User_GoldenLeague
	
local tGoldenLeaguePoints_Stc = {}
	tGoldenLeaguePoints_Stc["EventType"] = 137
	tGoldenLeaguePoints_Stc["DataType"] = 31

	
	
	
-- 个人竞技场礼包
local tGoldenLeaguePoints_Arenic = {}
	-- 赢场
	tGoldenLeaguePoints_Arenic["Wins"] = {}
	tGoldenLeaguePoints_Arenic["Wins"][1] = 100
	tGoldenLeaguePoints_Arenic["Wins"][2] = 150
	tGoldenLeaguePoints_Arenic["Wins"][3] = 450
	-- tGoldenLeaguePoints_Arenic["Wins"][4] = 250
	tGoldenLeaguePoints_Arenic["Wins"][9] = 0
	
	-- 参赛场
	tGoldenLeaguePoints_Arenic["Competes"] = {}
	-- tGoldenLeaguePoints_Arenic["Competes"][1] = 100
	tGoldenLeaguePoints_Arenic["Competes"][3] = 650
	tGoldenLeaguePoints_Arenic["Competes"][20] = 0
	-- tGoldenLeaguePoints_Arenic["Competes"][5] = 200
	-- tGoldenLeaguePoints_Arenic["Competes"][7] = 200

-- 个人竞技场礼包
local tGoldenLeaguePoints_ArenicReward = {}
	-- 赢场
	tGoldenLeaguePoints_ArenicReward["Wins"] = {}
	tGoldenLeaguePoints_ArenicReward["Wins"][1] = 3314674
	tGoldenLeaguePoints_ArenicReward["Wins"][2] = 3314674
	tGoldenLeaguePoints_ArenicReward["Wins"][3] = 3314674
	tGoldenLeaguePoints_ArenicReward["Wins"][9] = 3314675
	
	-- 参赛场
	tGoldenLeaguePoints_ArenicReward["Competes"] = {}
	tGoldenLeaguePoints_ArenicReward["Competes"][3] = 3314674
	tGoldenLeaguePoints_ArenicReward["Competes"][20] = 3314675

-- 组队竞技场礼包
local tGoldenLeaguePoints_TeamArenic = {}
	-- 赢场
	tGoldenLeaguePoints_TeamArenic["Wins"] = {}
	tGoldenLeaguePoints_TeamArenic["Wins"][1] = 100
	tGoldenLeaguePoints_TeamArenic["Wins"][2] = 150
	tGoldenLeaguePoints_TeamArenic["Wins"][3] = 200
	tGoldenLeaguePoints_TeamArenic["Wins"][4] = 250
	
	-- 参赛场
	tGoldenLeaguePoints_TeamArenic["Competes"] = {}
	tGoldenLeaguePoints_TeamArenic["Competes"][1] = 100
	tGoldenLeaguePoints_TeamArenic["Competes"][3] = 150
	tGoldenLeaguePoints_TeamArenic["Competes"][5] = 200
	tGoldenLeaguePoints_TeamArenic["Competes"][7] = 200

-- +3骏马可选包
local tGoldenLeaguePoints_Horse = {}
	tGoldenLeaguePoints_Horse[1] = "0 0 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	tGoldenLeaguePoints_Horse[2] = "0 0 3 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255"
	tGoldenLeaguePoints_Horse[3] = "0 0 3 0 0 0 16750080 255 150 0 3"
	
	tGoldenLeaguePoints_Horse[4] = "0 0 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150"
	tGoldenLeaguePoints_Horse[5] = "0 0 3 0 0 0 9830655 150 0 0 1 0 0 0 0 0 0 255"
	tGoldenLeaguePoints_Horse[6] = "0 0 3 0 0 0 16750080 255 150 0 1"

--------------------------
--天阶赛部分:
local	tGoldenLeaguePoints_Tjs = {}
		tGoldenLeaguePoints_Tjs["Time"] = tActivityTime["TianjieSai"]["ActivityTime"]
		tGoldenLeaguePoints_Tjs["Global"] = 50990 --开关控制
		tGoldenLeaguePoints_Tjs["RacehorseGlobal"] = 50252 --记录赛马名次
		-- 天阶赛获得积分场次
		tGoldenLeaguePoints_Tjs["Wins"] = {}
		tGoldenLeaguePoints_Tjs["Wins"][1] = 1
		tGoldenLeaguePoints_Tjs["Wins"][2] = 1
		tGoldenLeaguePoints_Tjs["Wins"][3] = 1
		tGoldenLeaguePoints_Tjs["Wins"][4] = 1
		tGoldenLeaguePoints_Tjs["Competes"] = {}
		tGoldenLeaguePoints_Tjs["Competes"][1] = 1
		tGoldenLeaguePoints_Tjs["Competes"][3] = 1
		tGoldenLeaguePoints_Tjs["Competes"][5] = 1
		tGoldenLeaguePoints_Tjs["Competes"][7] = 1

local	tGoldenLeaguePoints_Tjs_Stc = {}
		tGoldenLeaguePoints_Tjs_Stc[1] = {}  --总积分
		tGoldenLeaguePoints_Tjs_Stc[1]["EventType"] = 112
		tGoldenLeaguePoints_Tjs_Stc[1]["DataType"] = 65

		tGoldenLeaguePoints_Tjs_Stc[2] = {}  --个人排位赛
		tGoldenLeaguePoints_Tjs_Stc[2]["EventType"] = 112
		tGoldenLeaguePoints_Tjs_Stc[2]["DataType"] = 75

		tGoldenLeaguePoints_Tjs_Stc[3] = {}  --组队排位赛
		tGoldenLeaguePoints_Tjs_Stc[3]["EventType"] = 112
		tGoldenLeaguePoints_Tjs_Stc[3]["DataType"] = 76

		tGoldenLeaguePoints_Tjs_Stc[4] = {}  --赛马
		tGoldenLeaguePoints_Tjs_Stc[4]["EventType"] = 113
		tGoldenLeaguePoints_Tjs_Stc[4]["DataType"] = 92

local	tInternalTaskCheats_TjshorseRace = {}  --赛马名次配置
		tInternalTaskCheats_TjshorseRace[1] = 30
		tInternalTaskCheats_TjshorseRace[2] = 20
		tInternalTaskCheats_TjshorseRace[3] = 10
		tInternalTaskCheats_TjshorseRace["Log"] = "0,0,0,0,10000872,2,35,%d"

local tGoldenLeaguePoints_GoldenFragment = {}
	tGoldenLeaguePoints_GoldenFragment["ActivityTime"] = "2016-12-08 00:00 2016-12-21 23:59"
	tGoldenLeaguePoints_GoldenFragment["Competes"] = {}
	tGoldenLeaguePoints_GoldenFragment["Competes"][9] = 3004915
	tGoldenLeaguePoints_GoldenFragment["Log"] = "0,0,0,0,10002346,2[2],3004915,1"
	
--新老服区分globalid 
local tGoldenLeaguePoints_NewGlobalId = {}
tGoldenLeaguePoints_NewGlobalId["Global"] = 53779

	-- 激情服使用+3马包 返还气力
local tHorsePackBackStrength_Reward={}
tHorsePackBackStrength_Reward["NoBound"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007283] = {}
tHorsePackBackStrength_Reward["NoBound"][3007283]["DeleteItem"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007283]["DeleteItem"][1] = {}
tHorsePackBackStrength_Reward["NoBound"][3007283]["DeleteItem"][1]["Id"] = 3007283
tHorsePackBackStrength_Reward["NoBound"][3007283]["RewardStrengthValue"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007283]["RewardStrengthValue"]["Value"] = 500
tHorsePackBackStrength_Reward["NoBound"][3007283]["RewardEffect"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007283]["RewardEffect"]["Effect"] = "zf2-e128"
tHorsePackBackStrength_Reward["NoBound"][3007283]["LogId"] = 18000068
-- 激情服使用+1马包 返还气力
tHorsePackBackStrength_Reward["NoBound"][3007287] = {}
tHorsePackBackStrength_Reward["NoBound"][3007287]["DeleteItem"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007287]["DeleteItem"][1] = {}
tHorsePackBackStrength_Reward["NoBound"][3007287]["DeleteItem"][1]["Id"] = 3007287
tHorsePackBackStrength_Reward["NoBound"][3007287]["RewardStrengthValue"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007287]["RewardStrengthValue"]["Value"] = 50
tHorsePackBackStrength_Reward["NoBound"][3007287]["RewardEffect"] = {}
tHorsePackBackStrength_Reward["NoBound"][3007287]["RewardEffect"]["Effect"] = "zf2-e128"
tHorsePackBackStrength_Reward["NoBound"][3007287]["LogId"] = 18000068
--------------------------------------------逻辑部分-----------------------------------------------
-- 判断是否新服天阶赛
function GoldenLeaguePoints_NewSeverTjs()
	if Get_SysDynaGlobalData2(tGoldenLeaguePoints_Tjs["Global"]) == 1 then
		tGoldenLeaguePoints_Tjs["Time"] = tActivityTime["TianjieSai"]["NewActivityTime"]
		tInternalTaskCheats_TjshorseRace[1] = 15
		tInternalTaskCheats_TjshorseRace[2] = 10
		tInternalTaskCheats_TjshorseRace[3] = 5
	end
end

-- 判断是否可以加黄金联赛积分
function GoldenLeaguePoints_Chk(nPoint)
	local nEvent = tGoldenLeaguePoints_Stc["EventType"]
	local nType = tGoldenLeaguePoints_Stc["DataType"]
	
	-- 判断掩码是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	-- 判断今天是否已达上限
	if Task_ChkStcValue(nEvent,nType,">=",tInternalTaskCheats_Count["MaxPoint"]) then
		User_TalkChannel2005(string.format(tInternalTaskCheats_Text["Top"],tInternalTaskCheats_Count["MaxPoint"]))
		return false
	end
	
	return true
end

-- 添加黄金联赛积分
function GoldenLeaguePoints_Add(nPoint,nNowUserId)
	-- 获取玩家黄金联赛积分
	local nUserId = nNowUserId or Get_UserId()
	local nUserPoint = Get_UserLeaguePoint(nUserId)
	
	if nUserPoint >= tInternalTaskCheats_Count["Max"] then
		User_TalkChannel2005(tInternalTaskCheats_Text["Max"],nUserId)
		return false
	end
		
	local nEvent = tGoldenLeaguePoints_Stc["EventType"]
	local nType = tGoldenLeaguePoints_Stc["DataType"]
	
	-- 判断掩码是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	--添加仓库增加的黄金联赛积分上限
	local nGolden_Limit = tInternalTaskCheats_Count["MaxPoint"] + Get_UserStorageGoldenLimit(nUserId)
	
	-- 判断今天是否已达上限
	if Task_ChkStcValue(nEvent,nType,">=",nGolden_Limit,nUserId) then
		User_TalkChannel2005(string.format(tInternalTaskCheats_Text["Top"],nGolden_Limit),nUserId)
		return false
	end
	
	local nAddPoint = nPoint
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nPoint + nData > nGolden_Limit then
		nAddPoint = nGolden_Limit - nData
	end
	
	if nUserPoint + nAddPoint > tInternalTaskCheats_Count["Max"] then
		nAddPoint = tInternalTaskCheats_Count["Max"] - nUserPoint
	end
	
	-- 加掩码
	Task_AddStatistic(nEvent,nType,nAddPoint,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	-- 加积分
	User_AddLeaguePoint(nAddPoint,nUserId)
	
	-- 打log
	Sys_SaveActionFestivalLog(string.format("0,0,0,0,10002361,2,21,%d",nAddPoint),nUserId)
	
	-- 给提示
	User_TalkChannel2005(string.format(tInternalTaskCheats_Text["GolderLeaguePoint"],nAddPoint),nUserId)
	return true
end

-- 个人排位赛 赢场
function GoldenLeaguePoints_Arenic_Wins(nUserId,nFieldNum)
	local nUserId = nUserId or Get_UserId()
	--内嵌世界版图探索活动
	MapExploration_AddStc(22,nUserId)
	GoldenLeaguePoints_NewSeverTjs()
	if Sys_ChkFullTime(tGoldenLeaguePoints_Tjs["Time"]) and tGoldenLeaguePoints_Tjs["Wins"][nFieldNum] ~= nil then
		if Get_SysDynaGlobalData1(tGoldenLeaguePoints_Tjs["Global"]) == 1 then
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[1]["EventType"],tGoldenLeaguePoints_Tjs_Stc[1]["DataType"],1,1,nUserId)
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[2]["EventType"],tGoldenLeaguePoints_Tjs_Stc[2]["DataType"],1,1,nUserId)
			User_TalkChannel2005(tTjs_Text["Text111"],nUserId)
		end
	end
	if tGoldenLeaguePoints_Arenic["Wins"][nFieldNum] == nil then
		return
	end
	
	local nAddPoint = tGoldenLeaguePoints_Arenic["Wins"][nFieldNum]
	GoldenLeaguePoints_Add(nAddPoint,nUserId)

	if nFieldNum == 4 then
		CoatWarehouse_Sale_ArenicWins(3, nUserId)
	end
	if nAddPoint ~= 0 then
		GoldenLeaguePoints_Add(nAddPoint,nUserId)
	end
	local nItemId = tGoldenLeaguePoints_ArenicReward["Wins"][nFieldNum]
	if Item_AddNewItem(nItemId,"0 1",nUserId)then
		User_TalkChannel2005(tInternalTaskCheats_Text["ArenicWins"],nUserId)
	end
end

-- 个人排位赛 参赛场
function GoldenLeaguePoints_Arenic_Competes(nUserId,nFieldNum)
	GoldenLeaguePoints_NewSeverTjs()
	if Sys_ChkFullTime(tGoldenLeaguePoints_Tjs["Time"]) and tGoldenLeaguePoints_Tjs["Competes"][nFieldNum] ~= nil then
		if Get_SysDynaGlobalData1(tGoldenLeaguePoints_Tjs["Global"]) == 1 then
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[1]["EventType"],tGoldenLeaguePoints_Tjs_Stc[1]["DataType"],1,1,nUserId)
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[2]["EventType"],tGoldenLeaguePoints_Tjs_Stc[2]["DataType"],1,1,nUserId)
			User_TalkChannel2005(tTjs_Text["Text111"],nUserId)
		end
	end
	-- 参与第二场可获得1活跃币
	if nFieldNum == 2 then
		NewHandInHand_GetReward(1,6,nUserId)
	end
	if tGoldenLeaguePoints_Arenic["Competes"][nFieldNum] == nil then
		return
	end
	
	local nAddPoint = tGoldenLeaguePoints_Arenic["Competes"][nFieldNum]
	if nAddPoint ~= 0 then
		GoldenLeaguePoints_Add(nAddPoint,nUserId)
	end
	
	-- if nFieldNum == 5 then
		-- Dailypoint_RewardDraw(2,nUserId)
	-- end
	
	local nItemId = tGoldenLeaguePoints_ArenicReward["Competes"][nFieldNum]
	if Item_AddNewItem(nItemId,"0 1",nUserId)then
		User_TalkChannel2005(tInternalTaskCheats_Text["ArenicCompetes"],nUserId)
	end
end

--个人排位赛参赛9场获得战衣碎片
function GoldenLeaguePoints_Arenic_Competes_GiveFragment(nUserId,nFieldNum)
	if not Sys_ChkFullTime(tGoldenLeaguePoints_GoldenFragment["ActivityTime"]) then
		return
	end
	
	if tGoldenLeaguePoints_GoldenFragment["Competes"][nFieldNum] == nil then
		return
	end
	
	local nItemId = tGoldenLeaguePoints_GoldenFragment["Competes"][nFieldNum]
	
	if Item_AddNewItem(nItemId,"0 1",nUserId)then
		local sLog = tGoldenLeaguePoints_GoldenFragment["Log"]
		User_TalkChannel2005(tInternalTaskCheats_Text["GetGoldenFragment"],nUserId)
		Sys_SaveActionFestivalLog(sLog,nUserId)
	end

end


-- 组队排位赛 赢场
function GoldenLeaguePoints_Arenic_TeamWins(nUserId,nFieldNum)
	GoldenLeaguePoints_NewSeverTjs()
	if tGoldenLeaguePoints_TeamArenic["Wins"][nFieldNum] == nil then
		return
	end
	
	local nAddPoint = tGoldenLeaguePoints_TeamArenic["Wins"][nFieldNum]
	GoldenLeaguePoints_Add(nAddPoint,nUserId)

	if nFieldNum == 4 then
		CoatWarehouse_Sale_ArenicWins(4, nUserId)
	end
	
	if Item_AddNewItem(3007308,"0 1",nUserId)then
		User_TalkChannel2005(tInternalTaskCheats_Text["ArenicTeamWins"],nUserId)
	end
	
	if Sys_ChkFullTime(tGoldenLeaguePoints_Tjs["Time"]) then
		if Get_SysDynaGlobalData1(tGoldenLeaguePoints_Tjs["Global"]) == 1 then
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[1]["EventType"],tGoldenLeaguePoints_Tjs_Stc[1]["DataType"],1,1,nUserId)
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[3]["EventType"],tGoldenLeaguePoints_Tjs_Stc[3]["DataType"],1,1,nUserId)
			User_TalkChannel2005(tTjs_Text["Text111"],nUserId)
		end
	end

end

-- 组队排位赛 参赛场
function GoldenLeaguePoints_Arenic_TeamCompetes(nUserId,nFieldNum)
	GoldenLeaguePoints_NewSeverTjs()
	-- 参与第二场可获得1活跃币
	if nFieldNum == 2 then
		NewHandInHand_GetReward(1,7,nUserId)
	end
	if tGoldenLeaguePoints_TeamArenic["Competes"][nFieldNum] == nil then
		return
	end
	
	local nAddPoint = tGoldenLeaguePoints_TeamArenic["Competes"][nFieldNum]
	GoldenLeaguePoints_Add(nAddPoint,nUserId)
	
	-- if nFieldNum == 5 then
		-- Dailypoint_RewardDraw(3,nUserId)
	-- end
	
	if Item_AddNewItem(3007308,"0 1",nUserId)then
		User_TalkChannel2005(tInternalTaskCheats_Text["ArenicTeamCompetes"],nUserId)
	end
	
	if Sys_ChkFullTime(tGoldenLeaguePoints_Tjs["Time"]) then
		if Get_SysDynaGlobalData1(tGoldenLeaguePoints_Tjs["Global"]) == 1 then
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[1]["EventType"],tGoldenLeaguePoints_Tjs_Stc[1]["DataType"],1,1,nUserId)
			Task_AddStatistic(tGoldenLeaguePoints_Tjs_Stc[3]["EventType"],tGoldenLeaguePoints_Tjs_Stc[3]["DataType"],1,1,nUserId)
			User_TalkChannel2005(tTjs_Text["Text111"],nUserId)
		end
	end
	
	--191211[英文征服][活动脚本]老玩家召回（1.7-1.31）
	RecallOfOldPlayers_CompleteTask(4)
end


-- 骑宠，玩家冲过终点是触发
function GoldenLeaguePoints_RideArriveTerminal(nUserId)
	GoldenLeaguePoints_NewSeverTjs()
	GoldenLeaguePoints_Add(100,nUserId)

--天阶赛增加积分
	if Sys_ChkFullTime(tGoldenLeaguePoints_Tjs["Time"]) and Get_SysDynaGlobalData1(tGoldenLeaguePoints_Tjs["Global"]) == 1 then
		local nEventType = tGoldenLeaguePoints_Tjs_Stc[4]["EventType"]
		local nDataType = tGoldenLeaguePoints_Tjs_Stc[4]["DataType"]
		local nAllEventType = tGoldenLeaguePoints_Tjs_Stc[1]["EventType"]
		local nAllDataType = tGoldenLeaguePoints_Tjs_Stc[1]["DataType"]

		if Task_ChkStcValue(nEventType,nDataType,"==",0,nUserId) or Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		local	nSysDynaGlobalData0 = Get_SysDynaGlobalData0(tGoldenLeaguePoints_Tjs["RacehorseGlobal"]) + 1
		local	nFlag = 0
			Sys_SetSynaGlobalData0(tGoldenLeaguePoints_Tjs["RacehorseGlobal"],nSysDynaGlobalData0)
			if nSysDynaGlobalData0 <= 1 then
				nFlag = 1
			elseif nSysDynaGlobalData0 <= 10 then
				nFlag = 2
			else
				nFlag = 3
			end
			local nData = tInternalTaskCheats_TjshorseRace[nFlag]
			local sLog = string.format(tInternalTaskCheats_TjshorseRace["Log"],nData)
			local sText = string.format(tInternalTaskCheats_TjshorseRace_Text[1],nData)
			Task_AddStatistic(nEventType,nDataType,nData,1,nUserId)
			Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
			Task_AddStatistic(nAllEventType,nAllDataType,nData,1,nUserId)
			Sys_SaveActionFestivalLog(sLog,nUserId)
			User_TalkChannel2005(sText,nUserId)
		end
	end
	NewHandInHand_GetReward(1,8,nUserId)
end

-- 武功，每次修炼时触发：
function GoldenLeaguePoints_TrainGongFu(nUserId,nTrainNum)
	GoldenLeaguePoints_Add(10,nUserId)
end

-- 获得+3马匹
function GoldenLeaguePoints_RewardTheHorses(nItemId,nType)
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		Item_AddNewItem(300000,tGoldenLeaguePoints_Horse[nType])
		Sys_SaveActionTaskLog(string.format("0,0,%d,1,18000068,2,300000,1",nItemId))
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId][nType])
	end
end

function GoldenLeaguePoints_ServerJudge(nItemId)
	local nGlobalId = tGoldenLeaguePoints_NewGlobalId["Global"]
	local nGetGlobalId = Get_SysDynaGlobalData0(nGlobalId)
	if SpecialServer_ChkNoGiftServer() or (nGetGlobalId == 1) then 
		if RewardTemplate_UseItem(tHorsePackBackStrength_Reward["NoBound"][nItemId]) then 
			return
		end
		return
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end 
end 

--------------------------------------------物品部分-----------------------------------------------
-- 豪华护心丹礼包
tItem[3007285] = tItem[3007285] or {}
tItem[3007285]["Function"] = function(nItemId,sItemName)
	-- 判断玩家是否自创武功
	local nUserId = Get_UserId()
	if not User_IsAlreadyCreateGongFu(nUserId) then
		User_TalkChannel2005(tInternalTaskCheats_Text["NoGongFu"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(14) then
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Space"])
		return
	end
	
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		Item_AddItem(3002029,0,15,0,0,1)
		
		-- 打log
		Sys_SaveActionTaskLog("0,0,3007285,1,18000068,2,3002029,1")
		
		-- 给提示
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Reward"])
	end
end

-- 黄金修炼礼包
tItem[3007284] = tItem[3007284] or {}
tItem[3007284]["Function"] = function(nItemId,sItemName)
	-- 判断玩家是否自创武功
	local nUserId = Get_UserId()
	if not User_IsAlreadyCreateGongFu(nUserId) then
		User_TalkChannel2005(tInternalTaskCheats_Text["NoGongFu"])
		return
	end
	
	-- 判断玩家修炼次数是否达上限
	local nQenuineqi = Get_UserGongFureePractNum()
	local nAddNum = 100000
	
	-- 判断免费修炼次数
	if nQenuineqi > G_User_FreePractice - nAddNum then
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["FreePractice"])
		return
	end

	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		User_AddGongFuFreePractNum(nAddNum)
		
		-- 打log
		Sys_SaveActionTaskLog("0,0,3007284,1,18000068,2,17,10")
		
		-- 给提示
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Reward"])
	end
end

-- 豪华七星断续礼包
tItem[3007286] = tItem[3007286] or {}
tItem[3007286]["Function"] = function(nItemId,sItemName)
	-- 判断背包空间
	if not User_CheckLeftSpace(3) then
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Space"])
		return
	end
	
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		Item_AddItem(1003010,0,20,3)
		
		-- 打log
		Sys_SaveActionTaskLog("0,0,3007286,1,18000068,2,1003010,20")

		-- 给提示
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Reward"])
	end
end

--------------------------------------------天阶赛上线积分调整-----------------------------------------------

function Tjs_Repair()
local	nNum = 0
local 	nUserId = Get_UserId()

local	tTjs ={}
		tTjs[1] =  Get_UserStatisticValue(112,72)
		tTjs[2] =  Get_UserStatisticValue(112,73)
		tTjs[3] =  Get_UserStatisticValue(112,75)
		tTjs[4] =  Get_UserStatisticValue(112,76)
		tTjs[5] =  Get_UserStatisticValue(112,77)
		tTjs[6] =  Get_UserStatisticValue(112,78)
		tTjs[7] =  Get_UserStatisticValue(112,79)
		tTjs[8] =  Get_UserStatisticValue(112,80)
		tTjs[9] =  Get_UserStatisticValue(112,81)
		tTjs[10] = Get_UserStatisticValue(112,82)
		tTjs[11] = Get_UserStatisticValue(112,83)
		tTjs[12] = Get_UserStatisticValue(112,85)
		tTjs[13] = Get_UserStatisticValue(112,86)
		tTjs[14] = Get_UserStatisticValue(113,92)
		tTjs[15] = Get_UserStatisticValue(138,44)

	for i = 1,15 do
		nNum = tTjs[i] + nNum
	end
	Task_SetStatistic(112,65,nNum,1,nUserId)
end


-- +3骏马可选包
tItemFace[3007283] = 1896
tItem[3007283] = tItem[3007283] or {}
tItem[3007283]["Function"] = function(nItemId,sItemName)
	GoldenLeaguePoints_ServerJudge(nItemId)
end

tItem[3007283]["Text1-1"] = {111}
tItem[3007283]["Text111"] = tInternalTaskCheats_Text[3007283]["111"]
tItem[3007283]["tOption1-1"] = {1,2,3}
tItem[3007283]["Option1"] = tInternalTaskCheats_Text[3007283]["Option1"]
tItem[3007283]["OptionPoint1"]="2-1"
tItem[3007283]["Option2"] = tInternalTaskCheats_Text[3007283]["Option2"]
tItem[3007283]["OptionPoint2"]="2-2"
tItem[3007283]["Option3"] = tInternalTaskCheats_Text[3007283]["Option3"]
tItem[3007283]["OptionPoint3"]="2-3"

tItem[3007283]["Text2-1"] = {211}
tItem[3007283]["Text211"] = tInternalTaskCheats_Text[3007283]["211"]
tItem[3007283]["tOption2-1"] = {4,5}
tItem[3007283]["Option4"] = tInternalTaskCheats_Text[3007283]["Option4"]
tItem[3007283]["OptionFunc4"]="GoldenLeaguePoints_RewardTheHorses</N>3007283</N>1"
tItem[3007283]["Option5"] = tInternalTaskCheats_Text[3007283]["Option5"]

tItem[3007283]["Text2-2"] = {221}
tItem[3007283]["Text221"] = tInternalTaskCheats_Text[3007283]["221"]
tItem[3007283]["tOption2-2"] = {6,7}
tItem[3007283]["Option6"] = tInternalTaskCheats_Text[3007283]["Option6"]
tItem[3007283]["OptionFunc6"]="GoldenLeaguePoints_RewardTheHorses</N>3007283</N>2"
tItem[3007283]["Option7"] = tInternalTaskCheats_Text[3007283]["Option7"]

tItem[3007283]["Text2-3"] = {231}
tItem[3007283]["Text231"] = tInternalTaskCheats_Text[3007283]["231"]
tItem[3007283]["tOption2-3"] = {8,9}
tItem[3007283]["Option8"] = tInternalTaskCheats_Text[3007283]["Option8"]
tItem[3007283]["OptionFunc8"]="GoldenLeaguePoints_RewardTheHorses</N>3007283</N>3"
tItem[3007283]["Option9"] = tInternalTaskCheats_Text[3007283]["Option9"]

-- +1骏马可选包
tItem[3007287] = tItem[3007287] or {}
tItem[3007287]["Function"] = function(nItemId,sItemName)
	GoldenLeaguePoints_ServerJudge(nItemId)
end
tItem[3007287]["Text1-1"] = {111}
tItem[3007287]["Text111"] = tInternalTaskCheats_Text[3007287]["111"]
tItem[3007287]["tOption1-1"] = {1,2,3}
tItem[3007287]["Option1"] = tInternalTaskCheats_Text[3007287]["Option1"]
tItem[3007287]["OptionPoint1"]="2-1"
tItem[3007287]["Option2"] = tInternalTaskCheats_Text[3007287]["Option2"]
tItem[3007287]["OptionPoint2"]="2-2"
tItem[3007287]["Option3"] = tInternalTaskCheats_Text[3007287]["Option3"]
tItem[3007287]["OptionPoint3"]="2-3"

tItem[3007287]["Text2-1"] = {211}
tItem[3007287]["Text211"] = tInternalTaskCheats_Text[3007287]["211"]
tItem[3007287]["tOption2-1"] = {4,5}
tItem[3007287]["Option4"] = tInternalTaskCheats_Text[3007287]["Option4"]
tItem[3007287]["OptionFunc4"]="GoldenLeaguePoints_RewardTheHorses</N>3007287</N>4"
tItem[3007287]["Option5"] = tInternalTaskCheats_Text[3007287]["Option5"]

tItem[3007287]["Text2-2"] = {221}
tItem[3007287]["Text221"] = tInternalTaskCheats_Text[3007287]["221"]
tItem[3007287]["tOption2-2"] = {6,7}
tItem[3007287]["Option6"] = tInternalTaskCheats_Text[3007287]["Option6"]
tItem[3007287]["OptionFunc6"]="GoldenLeaguePoints_RewardTheHorses</N>3007287</N>5"
tItem[3007287]["Option7"] = tInternalTaskCheats_Text[3007287]["Option7"]

tItem[3007287]["Text2-3"] = {231}
tItem[3007287]["Text231"] = tInternalTaskCheats_Text[3007287]["231"]
tItem[3007287]["tOption2-3"] = {8,9}
tItem[3007287]["Option8"] = tInternalTaskCheats_Text[3007287]["Option8"]
tItem[3007287]["OptionFunc8"]="GoldenLeaguePoints_RewardTheHorses</N>3007287</N>6"
tItem[3007287]["Option9"] = tInternalTaskCheats_Text[3007287]["Option9"]

-- 豪华三清回魂散礼包
tItem[3007434] = tItem[3007434] or {}
tItem[3007434]["Function"] = function(nItemId,sItemName)
	-- 判断背包空间
	if not User_CheckLeftSpace(3) then
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Space"])
		return
	end
	
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		Item_AddItem(1004010,0,20,3)
		User_EffectAdd("self","angelwing")
		-- 打log
		Sys_SaveActionTaskLog("0,0,3007434,1,18000068,2,1004010,20")

		-- 给提示
		User_TalkChannel2005(tInternalTaskCheats_Text[nItemId]["Reward"])
	end
end

------------------------------------------------------------------------------------------------
-- 个人排位赛：	赢场：
tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
table.insert(tArenicWins["tFunction"],GoldenLeaguePoints_Arenic_Wins)

-- 个人排位赛：	参赛场
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"],GoldenLeaguePoints_Arenic_Competes)

-- 组队排位赛：	赢场：
tTeamArenicWins["tFunction"] = tTeamArenicWins["tFunction"] or {}
table.insert(tTeamArenicWins["tFunction"],GoldenLeaguePoints_Arenic_TeamWins)

-- 组队排位赛：	参赛场
tTeamArenicCompetes["tFunction"] = tTeamArenicCompetes["tFunction"] or {}
table.insert(tTeamArenicCompetes["tFunction"],GoldenLeaguePoints_Arenic_TeamCompetes)

-- 骑宠，玩家冲过终点是触发
tRideArrive["tFunction"] = tRideArrive["tFunction"] or {}
table.insert(tRideArrive["tFunction"],GoldenLeaguePoints_RideArriveTerminal)

-- 武功，每次修炼时触发：
tTrainGongFu["tFunction"] = tTrainGongFu["tFunction"] or {}
table.insert(tTrainGongFu["tFunction"],GoldenLeaguePoints_TrainGongFu)

--上线促发
table.insert(tSystem_PlayLogin_Func,Tjs_Repair)


--临时，黄金战衣活动，9场给战衣碎片
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"],GoldenLeaguePoints_Arenic_Competes_GiveFragment)



