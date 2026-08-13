------------------------------------------------------------------------------------
--Name：            180626[简体征服][活动脚本]调整版本6-帮派矿洞玩法-死神榜
--Creator:      王贤
--Created:     2018/06/26
------------------------------------------------------------------------------------
--任务需求：
-- 矿洞PK：
-- 杀人不加PK值，但是还是会掉落身上物品
-- 地图无视战斗力禁止锁魂，可以水道复活，可以原地复活
-- 在矿洞中杀人会获得死神榜积分，每日击杀可得该玩家的30%积分，死亡损失30%(每次至少1点，为0不再扣)

-- 矿洞死神榜:
-- 在矿洞中，击杀任意玩家均可获得对方30%积分，死亡损失30%（每次至少1点，为0不扣）
-- 积分排行前10的玩家可以上死神榜
-- 上榜玩家将携带特殊的光效，每日清掉
-- 每日23点根据排名发放气力值奖励

------------------------------------------------------------------------------------
-- stc(178, 63)  记录玩家身上的死神榜积分
-- stc(179, 46)  记录玩家身上的死神榜积分
------------------------------------------------------------------------------------
-- 前缀
-- DeathList_

-- LogId： 12001101
----------------------------------表配置部分--------------------------------------------
-- 死神榜前20名玩家
tRankingFunc_Info[23018] = {}
tRankingFunc_Info[23018]["DayTime"] = {}
tRankingFunc_Info[23018]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[23018]["Reset"] = 1
tRankingFunc_Info[23018]["Global"] = {52710,52711,52712,52713,52714,52715,52716,52717}
tRankingFunc_Info[23018]["RankNum"] = 20
tRankingFunc_Info[23018]["RankMode"] = 3


local tDeathList_Data = {}
-- 每次击杀增加死神榜积分
tDeathList_Data["KillUserScore"] = 5
-- 掩码
tDeathList_Data["Stc"] = {}
tDeathList_Data["Stc"]["Event"] = {}
tDeathList_Data["Stc"]["Data"] = {}
-- stc(178, 63)  记录玩家身上的死神榜积分
tDeathList_Data["Stc"]["Event"][1] = 178
tDeathList_Data["Stc"]["Data"][1] = 63
-- stc(179, 46)  记录玩家当天击杀的数量
tDeathList_Data["Stc"]["Event"][2] = 179
tDeathList_Data["Stc"]["Data"][2] = 46

tDeathList_Data["GlobalId"] = {}
tDeathList_Data["GlobalId"][1] = 52710
tDeathList_Data["GlobalId"][2] = 52711
tDeathList_Data["GlobalId"][3] = 52712
tDeathList_Data["GlobalId"][4] = 52713
tDeathList_Data["GlobalId"][5] = 52714
tDeathList_Data["GlobalId"][6] = 52715
tDeathList_Data["GlobalId"][7] = 52716
tDeathList_Data["GlobalId"][8] = 52717

-- 矿洞地图ID
tDeathList_Data["Map"] = 10348
-- 排行榜
tDeathList_Data["RankIndex"] = 23018
-- 死神榜发放奖励
tDeathList_Data["Letter"] = {}
tDeathList_Data["Letter"]["ActionId"] = {}
tDeathList_Data["Letter"]["ActionId"][1] = 569475
tDeathList_Data["Letter"]["ActionId"][2] = 569476
tDeathList_Data["Letter"]["ActionId"][3] = 569477
tDeathList_Data["Letter"]["ActionId"][4] = 569478
tDeathList_Data["Letter"]["ActionId"][5] = 569479
tDeathList_Data["Letter"]["ActionId"][6] = 569480
tDeathList_Data["Letter"]["ActionId"][7] = 569481
tDeathList_Data["Letter"]["ActionId"][8] = 569482
tDeathList_Data["Letter"]["ActionId"][9] = 569483
tDeathList_Data["Letter"]["ActionId"][10] = 569484
-- 保存时间
tDeathList_Data["Letter"]["ExistDay"] = 7
-- 发送人
tDeathList_Data["Letter"]["Sender"] = tDeathList_Text[23018]["Letter"]["Sender"]
-- 发送内容
tDeathList_Data["Letter"]["Title"] = tDeathList_Text[23018]["Letter"]["Title"]
-- 发送标题
tDeathList_Data["Letter"]["Content"] = tDeathList_Text[23018]["Letter"]["Content"]

-- 奖励表
tDeathList_Reward = {}
-- 3000气力值
tDeathList_Reward[3309993] = {}
tDeathList_Reward[3309993]["DeleteItem"] = {}
tDeathList_Reward[3309993]["DeleteItem"][1] = {}
tDeathList_Reward[3309993]["DeleteItem"][1]["Id"] = 3309993
tDeathList_Reward[3309993]["RewardStrengthValue"] = {}
tDeathList_Reward[3309993]["RewardStrengthValue"]["Value"] = 3000
tDeathList_Reward[3309993]["LogId"] = 12001101
tDeathList_Reward[3309993]["RewardEffect"] = {}
tDeathList_Reward[3309993]["RewardEffect"]["Effect"] = "zf2-e128"
-- 2000气力值
tDeathList_Reward[3309994] = {}
tDeathList_Reward[3309994]["DeleteItem"] = {}
tDeathList_Reward[3309994]["DeleteItem"][1] = {}
tDeathList_Reward[3309994]["DeleteItem"][1]["Id"] = 3309994
tDeathList_Reward[3309994]["RewardStrengthValue"] = {}
tDeathList_Reward[3309994]["RewardStrengthValue"]["Value"] = 2000
tDeathList_Reward[3309994]["LogId"] = 12001101
tDeathList_Reward[3309994]["RewardEffect"] = {}
tDeathList_Reward[3309994]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1000气力值
tDeathList_Reward[3309995] = {}
tDeathList_Reward[3309995]["DeleteItem"] = {}
tDeathList_Reward[3309995]["DeleteItem"][1] = {}
tDeathList_Reward[3309995]["DeleteItem"][1]["Id"] = 3309995
tDeathList_Reward[3309995]["RewardStrengthValue"] = {}
tDeathList_Reward[3309995]["RewardStrengthValue"]["Value"] = 1000
tDeathList_Reward[3309995]["LogId"] = 12001101
tDeathList_Reward[3309995]["RewardEffect"] = {}
tDeathList_Reward[3309995]["RewardEffect"]["Effect"] = "zf2-e128"
-- 800气力值
tDeathList_Reward[3309996] = {}
tDeathList_Reward[3309996]["DeleteItem"] = {}
tDeathList_Reward[3309996]["DeleteItem"][1] = {}
tDeathList_Reward[3309996]["DeleteItem"][1]["Id"] = 3309996
tDeathList_Reward[3309996]["RewardStrengthValue"] = {}
tDeathList_Reward[3309996]["RewardStrengthValue"]["Value"] = 800
tDeathList_Reward[3309996]["LogId"] = 12001101
tDeathList_Reward[3309996]["RewardEffect"] = {}
tDeathList_Reward[3309996]["RewardEffect"]["Effect"] = "zf2-e128"
-- 700气力值
tDeathList_Reward[3309997] = {}
tDeathList_Reward[3309997]["DeleteItem"] = {}
tDeathList_Reward[3309997]["DeleteItem"][1] = {}
tDeathList_Reward[3309997]["DeleteItem"][1]["Id"] = 3309997
tDeathList_Reward[3309997]["RewardStrengthValue"] = {}
tDeathList_Reward[3309997]["RewardStrengthValue"]["Value"] = 700
tDeathList_Reward[3309997]["LogId"] = 12001101
tDeathList_Reward[3309997]["RewardEffect"] = {}
tDeathList_Reward[3309997]["RewardEffect"]["Effect"] = "zf2-e128"
-- 600气力值
tDeathList_Reward[3309998] = {}
tDeathList_Reward[3309998]["DeleteItem"] = {}
tDeathList_Reward[3309998]["DeleteItem"][1] = {}
tDeathList_Reward[3309998]["DeleteItem"][1]["Id"] = 3309998
tDeathList_Reward[3309998]["RewardStrengthValue"] = {}
tDeathList_Reward[3309998]["RewardStrengthValue"]["Value"] = 600
tDeathList_Reward[3309998]["LogId"] = 12001101
tDeathList_Reward[3309998]["RewardEffect"] = {}
tDeathList_Reward[3309998]["RewardEffect"]["Effect"] = "zf2-e128"
-- 500气力值
tDeathList_Reward[3309999] = {}
tDeathList_Reward[3309999]["DeleteItem"] = {}
tDeathList_Reward[3309999]["DeleteItem"][1] = {}
tDeathList_Reward[3309999]["DeleteItem"][1]["Id"] = 3309999
tDeathList_Reward[3309999]["RewardStrengthValue"] = {}
tDeathList_Reward[3309999]["RewardStrengthValue"]["Value"] = 500
tDeathList_Reward[3309999]["LogId"] = 12001101
tDeathList_Reward[3309999]["RewardEffect"] = {}
tDeathList_Reward[3309999]["RewardEffect"]["Effect"] = "zf2-e128"
-- 300气力值
tDeathList_Reward[3310000] = {}
tDeathList_Reward[3310000]["DeleteItem"] = {}
tDeathList_Reward[3310000]["DeleteItem"][1] = {}
tDeathList_Reward[3310000]["DeleteItem"][1]["Id"] = 3310000
tDeathList_Reward[3310000]["RewardStrengthValue"] = {}
tDeathList_Reward[3310000]["RewardStrengthValue"]["Value"] = 300
tDeathList_Reward[3310000]["LogId"] = 12001101
tDeathList_Reward[3310000]["RewardEffect"] = {}
tDeathList_Reward[3310000]["RewardEffect"]["Effect"] = "zf2-e128"








----------------------------------逻辑部分---------------------------------------------
-- 气力值礼包使用
function DeathList_StrengthPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tDeathList_Reward[nItemId])
end

-- 判断活动地图
function DeathList_JudgeMap(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local nFlag = false
	local nMineMapId = tDeathList_Data["Map"]
	
	if nMineMapId == nMapId then
		nFlag = true
	end
	
	return nFlag
end

-- 击杀玩家
function DeathList_KillPlayer(nUserId, nBeKilled)
	-- 判断是否在活动地图
	if not DeathList_JudgeMap(nUserId) then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	
	local nUserRankFirst = RankingFunc_GetUserInRank(tDeathList_Data["RankIndex"], nUserId)
	
	local nDeathEvent = tDeathList_Data["Stc"]["Event"][1]
	local nDeathData = tDeathList_Data["Stc"]["Data"][1]
	local nEvent = tDeathList_Data["Stc"]["Event"][2]
	local nData = tDeathList_Data["Stc"]["Data"][2]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	end
	if Task_StcInterval(nEvent, nData, 1, 4, nBeKilled) then
		Task_SetStatistic(nEvent, nData, 0, 1, nBeKilled)
		Task_SetStcTimestamp(nEvent, nData, 0, nBeKilled)
	end
	if Task_StcInterval(nDeathEvent, nDeathData, 1, 4, nUserId) then
		Task_SetStatistic(nDeathEvent, nDeathData, 0, 1, nUserId)
		Task_SetStcTimestamp(nDeathEvent, nDeathData, 0, nUserId)
	end
	if Task_StcInterval(nDeathEvent, nDeathData, 1, 4, nBeKilled) then
		Task_SetStatistic(nDeathEvent, nDeathData, 0, 1, nBeKilled)
		Task_SetStcTimestamp(nDeathEvent, nDeathData, 0, nBeKilled)
	end
	-- 获取玩家死神榜积分
	local nKillerDeathScore = Get_UserStatisticValue(nDeathEvent, nDeathData, nUserId)
	-- 获取被击杀者死神榜积分
	local nBeKillDeathScore = Get_UserStatisticValue(nDeathEvent, nDeathData, nBeKilled)
	
	-- 被击杀者扣除死亡榜积分
	local nReduceScore = math.ceil(nBeKillDeathScore * 0.3)
	-- 每次至少1点，为0不再扣
	if nReduceScore == 0 and nBeKillDeathScore > 0 then
		nReduceScore = 1
	end
	local nNowBeKillScore = nBeKillDeathScore - nReduceScore
	if nNowBeKillScore < 0 then
		nNowBeKillScore = 0
	end
	Task_SetStatistic(nDeathEvent, nDeathData, nNowBeKillScore, 1, nBeKilled)
	Task_SetStcTimestamp(nDeathEvent, nDeathData, 0, nBeKilled)
	-- 写入排行榜
	RankingFunc_SetInfo(tDeathList_Data["RankIndex"], nNowBeKillScore, nBeKilled)
	
	-- 保底增加死神榜分数
	local nAddDeath = tDeathList_Data["KillUserScore"]
	nAddDeath = nReduceScore + nAddDeath
	local nNowKillerScore = nKillerDeathScore + nAddDeath
	if nNowKillerScore < 0 then
		nNowKillerScore = 0
	end
	Task_SetStatistic(nDeathEvent, nDeathData, nNowKillerScore, 1, nUserId)
	Task_SetStcTimestamp(nDeathEvent, nDeathData, 0, nUserId)
	-- 增加击杀数
	Task_AddStatistic(nEvent, nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	local nUserDayKill = Get_UserStatisticValue(nEvent, nData, nUserId)
	local sUserName = Get_UserName(nUserId)
	-- 提示
	if nUserDayKill == 5 or nUserDayKill == 10 or nUserDayKill == 20 or nUserDayKill == 50 or nUserDayKill == 100 then
		Sys_SystemBroadcast(string.format(tDeathList_Text["SysTalk"]["DayKill"][nUserDayKill], sUserName))
	end
	-- 写入排行榜
	RankingFunc_SetInfo(tDeathList_Data["RankIndex"], nNowKillerScore, nUserId)
	-- 重新排序排行榜
	RankingFunc_RestSortRankingList(tDeathList_Data["RankIndex"])
	local sTalk = string.format(tDeathList_Text["SysTalk"]["KillUser"], nAddDeath)
	User_TalkChannel2005(sTalk, nUserId)
	local nUserRankLast = RankingFunc_GetUserInRank(tDeathList_Data["RankIndex"], nUserId)
	if nUserRankFirst ~= 1 and nUserRankLast == 1 then
		Sys_SystemBroadcast(string.format(tDeathList_Text["SysTalk"]["KingChange"], sUserName))
	end
	
end


-- 榜单排名赋值
function DeathList_SetRankDialog(nIndex)
	local nDeathEvent = tDeathList_Data["Stc"]["Event"][1]
	local nDeathData = tDeathList_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nDeathEvent, nDeathData, 1, 4) then
		Task_SetStatistic(nDeathEvent, nDeathData, 0, 1)
		Task_SetStcTimestamp(nDeathEvent, nDeathData, 0)
	end
	-- 重新排序排行榜
	RankingFunc_RestSortRankingList(tDeathList_Data["RankIndex"])
	local tRankData = RankingFunc_GetNowData(tDeathList_Data["RankIndex"])
	local sName = ""
	local sScore = ""
	local nUserRank = 0
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
			if tRankData[i]["UserId"] == Get_UserId() then
				nUserRank = i
			end
		else
			sScore = tDeathList_Text[23018]["Dialog"]["Score"]
			sName = tDeathList_Text[23018]["Dialog"]["Name"]
		end
		tNpcGossip[23018]["Text" .. nIndex + i - 1] = string.format(tDeathList_Text["List"],Sys_Alignment(tostring(tDeathList_Text[23018]["Rank"][i]), 2, tostring(sName), 14, tostring(sScore), 34, tDeathList_Text[23018]["Dialog"]["Reward"][i], 45))
	end
	-- local nDeathEvent = tDeathList_Data["Stc"]["Event"][1]
	-- local nDeathData = tDeathList_Data["Stc"]["Data"][1]
	local nUserScore = Get_UserStatisticValue(nDeathEvent, nDeathData)
	if nUserRank > 0 then
		tNpcGossip[23018]["Text125"] = string.format(tDeathList_Text[23018]["Text125"], tDeathList_Text[23018]["Rank"][nUserRank], nUserScore)
	else
		tNpcGossip[23018]["Text125"] = string.format(tDeathList_Text[23018]["Text125"], tDeathList_Text[23018]["Rank"]["Not"], nUserScore)
	end
	
end

-- 榜上玩家发放奖励
function DeathList_SendMailReward()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local tRankData = RankingFunc_GetNowData(tDeathList_Data["RankIndex"])
	for j = 1, 10 do
		if tRankData[j] ~= nil and tonumber(tRankData[j]["UserId"]) > 0 then
			local nPlayerId = tRankData[j]["UserId"]
			local nActionId = tDeathList_Data["Letter"]["ActionId"][j]
			local nExistDay = tDeathList_Data["Letter"]["ExistDay"]
			local sSender = tDeathList_Data["Letter"]["Sender"]
			local sTitle = tDeathList_Data["Letter"]["Title"]
			local sContent = tDeathList_Data["Letter"]["Content"]
			Sys_SendMail(nPlayerId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
		end
	end
	for i = 1, 8 do
		local nGlobalId = tDeathList_Data["GlobalId"][i]
		Sys_ResetAllSynaGlobalData(nGlobalId)
		Sys_ResetAllSynaGlobalTime(nGlobalId)
		Sys_ResetAllSynaGlobalDataStr(nGlobalId)
	end
end


----------------------------------NPC部分---------------------------------------------
tNpcFace[4155] = 841
tNpcGossip[23018]= tNpcGossip[23018] or DefaultNpc:new{}
tNpcGossip[23018]["OptionHidden"] = 1
tNpcGossip[23018]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125}
tNpcGossip[23018]["Text111"] = tDeathList_Text[23018]["Text111"]
tNpcGossip[23018]["Text112"] = tDeathList_Text[23018]["Text112"]
tNpcGossip[23018]["Text113"] = tDeathList_Text[23018]["Text113"]
tNpcGossip[23018]["Text114"] = tDeathList_Text[23018]["Text114"]
tNpcGossip[23018]["Text115"] = tDeathList_Text[23018]["Text115"]
tNpcGossip[23018]["Text116"] = tDeathList_Text[23018]["Text116"]
tNpcGossip[23018]["Text117"] = tDeathList_Text[23018]["Text117"]
tNpcGossip[23018]["Text118"] = tDeathList_Text[23018]["Text118"]
tNpcGossip[23018]["Text119"] = tDeathList_Text[23018]["Text119"]
tNpcGossip[23018]["Text120"] = tDeathList_Text[23018]["Text120"]
tNpcGossip[23018]["Text121"] = tDeathList_Text[23018]["Text121"]
tNpcGossip[23018]["Text122"] = tDeathList_Text[23018]["Text122"]
tNpcGossip[23018]["Text123"] = tDeathList_Text[23018]["Text123"]
tNpcGossip[23018]["Text124"] = tDeathList_Text[23018]["Text124"]
tNpcGossip[23018]["Text125"] = tDeathList_Text[23018]["Text125"]
tNpcGossip[23018]["ChkFunc1-1"]= function()
	DeathList_SetRankDialog(114)
	return true
end
tNpcGossip[23018]["tOption1-1"] = {111, 112}
tNpcGossip[23018]["Option111"] = tDeathList_Text[23018]["Option111"]
tNpcGossip[23018]["Option112"] = tDeathList_Text[23018]["Option112"]
tNpcGossip[23018]["OptionPoint112"] = "2-1"
-- 血气值详情
tNpcGossip[23018]["Text2-1"] = {211, 212, 213, 214, 215, 216}
tNpcGossip[23018]["Text211"] = tDeathList_Text[23018]["Text211"]
tNpcGossip[23018]["Text212"] = tDeathList_Text[23018]["Text212"]
tNpcGossip[23018]["Text213"] = tDeathList_Text[23018]["Text213"]
tNpcGossip[23018]["Text214"] = tDeathList_Text[23018]["Text214"]
tNpcGossip[23018]["Text215"] = tDeathList_Text[23018]["Text215"]
tNpcGossip[23018]["Text216"] = tDeathList_Text[23018]["Text216"]
tNpcGossip[23018]["tOption2-1"] = {211}
tNpcGossip[23018]["Option211"] = tDeathList_Text[23018]["Option211"]
tNpcGossip[23018]["OptionPoint211"] = "1-1"

-- 使用气力礼包
tItem[3309993] = tItem[3309993] or {}
tItem[3309993]["Function"] = function(nItemId,sItemName)
    DeathList_StrengthPackage(nItemId)
end

tItem[3309994] = tItem[3309993]
tItem[3309995] = tItem[3309993]
tItem[3309996] = tItem[3309993]
tItem[3309997] = tItem[3309993]
tItem[3309998] = tItem[3309993]
tItem[3309999] = tItem[3309993]
tItem[3310000] = tItem[3309993]

---------------------------------杀人触发----------------------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"], DeathList_KillPlayer)

--------------------------------------时间自检-------------------------------------------
local tDeathList_ChkTime = {}
tDeathList_ChkTime[1] = {}
tDeathList_ChkTime[1]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
tDeathList_ChkTime[1]["Type"] = 2
tDeathList_ChkTime[1]["TimeType"] = 4
tDeathList_ChkTime[1]["Time"] = "23:59 23:59"
tDeathList_ChkTime[1]["Func"] = DeathList_SendMailReward
table.insert(tSystemTime_InitialData,tDeathList_ChkTime[1])
