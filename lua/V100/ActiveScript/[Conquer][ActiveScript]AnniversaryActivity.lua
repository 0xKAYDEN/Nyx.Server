------------------------------------------------------------------------------------
--Name：       190212[简体征服][活动脚本]周年庆小活动复用
--Creator:     江宇君
--Created:     2019/02/12
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            180222[简体征服][活动脚本]2018年周年庆小活动
--Creator:      杨艳
--Created:     2018/02/22
------------------------------------------------------------------------------------

--命名前缀
--AnniversaryActivity_
-- 掩码记录：17412 - 17417
-- stc(174,12)	记录玩家是否燃放烟花
-- stc(174,13)	是否领取烟花
-- stc(174,14)	怪物掉落每日获得的贺卡数量
-- stc(174,15)	怪物掉落每日获得的纪念币数量
-- stc(174,16)	盗火小妖掉落每日获得的贺卡数量
-- stc(174,17)	背包信

--logid： 12001013
-- taskid: 6874
------------------------------------------------------------------------------------

	
--数据部分
local tAnniversaryActivity_cont = {}
	tAnniversaryActivity_cont["TaskId"] = 6874
	
	--等级要求
	tAnniversaryActivity_cont["Level"] = 80
	tAnniversaryActivity_cont["MinMeto"] = 0
	
	--寻路放烟花
	tAnniversaryActivity_cont["FireWork"] = {}
	tAnniversaryActivity_cont["FireWork"]["MapId"] = 1002
	tAnniversaryActivity_cont["FireWork"]["PosX1"] = 381
	tAnniversaryActivity_cont["FireWork"]["PosX2"] = 362
	tAnniversaryActivity_cont["FireWork"]["PosY1"] = 368
	tAnniversaryActivity_cont["FireWork"]["PosY2"] = 362
	tAnniversaryActivity_cont["FireWork"]["GoToMap"] = 1002
	tAnniversaryActivity_cont["FireWork"]["GoToPosX"] = 372
	tAnniversaryActivity_cont["FireWork"]["GoToPosY"] = 364
	
	--npc数据
	tAnniversaryActivity_cont["NPC"] = {}
	tAnniversaryActivity_cont["NPC"]["nNpcId"] = 22661 --周年庆礼官
	tAnniversaryActivity_cont["NPC"]["nNpcId1"] = 22660 --周年庆
	
	-- npc在普通服数据
	--周年庆礼官 22661
	tAnniversaryActivity_cont["NPC"]["CellX"] = 340
	tAnniversaryActivity_cont["NPC"]["CellY"] = 487
	tAnniversaryActivity_cont["NPC"]["Mapid"] = 1002
	
	--周年庆 22660
	tAnniversaryActivity_cont["NPC"]["CellX1"] = 340
	tAnniversaryActivity_cont["NPC"]["CellY1"] = 491
	tAnniversaryActivity_cont["NPC"]["Mapid1"] = 1002
	
	--掩码记录
	tAnniversaryActivity_cont["EventType"] = {}
	tAnniversaryActivity_cont["DataType"] = {}
	
	--stc(174,12)	记录玩家是否燃放烟花
	tAnniversaryActivity_cont["EventType"][1] = 174
	tAnniversaryActivity_cont["DataType"][1] = 12
	
	-- stc(174,13)	是否领取烟花
	tAnniversaryActivity_cont["EventType"][2] = 174
	tAnniversaryActivity_cont["DataType"][2] = 13
	
	-- stc(174,14)	怪物掉落每日获得的贺卡数量
	tAnniversaryActivity_cont["EventType"][3] = 174
	tAnniversaryActivity_cont["DataType"][3] = 14
	
	-- stc(174,15)	怪物掉落每日获得的纪念币数量
	tAnniversaryActivity_cont["EventType"][4] = 174
	tAnniversaryActivity_cont["DataType"][4] = 15
	
	-- stc(174,16)	盗火小妖掉落每日获得的贺卡数量
	tAnniversaryActivity_cont["EventType"][5] = 174
	tAnniversaryActivity_cont["DataType"][5] = 16
	
	--怪物数据
	tAnniversaryActivity_cont["Monster"] = {}
	
	--每日怪物掉落贺卡数量
	tAnniversaryActivity_cont["Monster"]["CardNum"] = 10
	tAnniversaryActivity_cont["Monster"]["CardChanceSum"] = 100
	tAnniversaryActivity_cont["Monster"]["CardChance"] = 5
	-- tAnniversaryActivity_cont["Monster"]["CardChance"] = 50
	
	--每日怪物掉落纪念币数量
	tAnniversaryActivity_cont["Monster"]["CoinsNum "] = 20
	tAnniversaryActivity_cont["Monster"]["CoinsChanceSum"] = 100
	tAnniversaryActivity_cont["Monster"]["CoinsChance"] = 3
	-- tAnniversaryActivity_cont["Monster"]["CoinsChance"] = 50
	
	--每日盗火小怪掉落贺卡数量
	tAnniversaryActivity_cont["Monster"]["CardNum1"] = 5
	
	tAnniversaryActivity_cont["MonsterNew"] = {}
	tAnniversaryActivity_cont["MonsterNew"][1] = {4744,24345,1002,475,514}
	tAnniversaryActivity_cont["MonsterNew"][2] = {4744,24345,1002,517,484}
	tAnniversaryActivity_cont["MonsterNew"][3] = {4744,24345,1002,600,417}
	tAnniversaryActivity_cont["MonsterNew"][4] = {4744,24345,1002,540,260}
	tAnniversaryActivity_cont["MonsterNew"][5] = {4744,24345,1002,660,359}
	tAnniversaryActivity_cont["MonsterNew"][6] = {4744,24345,1002,362,691}
	tAnniversaryActivity_cont["MonsterNew"][7] = {4744,24345,1002,236,628}
	tAnniversaryActivity_cont["MonsterNew"][8] = {4744,24345,1002,485,646}
	tAnniversaryActivity_cont["MonsterNew"][9] = {4744,24345,1000,623,671}
	tAnniversaryActivity_cont["MonsterNew"][10] = {4744,24345,1000,709,677}
	tAnniversaryActivity_cont["MonsterNew"][11] = {4744,24345,1000,758,593}
	tAnniversaryActivity_cont["MonsterNew"][12] = {4744,24345,1000,671,484}
	tAnniversaryActivity_cont["MonsterNew"][13] = {4744,24345,1000,563,404}
	tAnniversaryActivity_cont["MonsterNew"][14] = {4744,24345,1011,285,331}
	tAnniversaryActivity_cont["MonsterNew"][15] = {4744,24345,1011,299,415}
	tAnniversaryActivity_cont["MonsterNew"][16] = {4744,24345,1011,390,506}
	tAnniversaryActivity_cont["MonsterNew"][17] = {4744,24345,1011,480,547}
	tAnniversaryActivity_cont["MonsterNew"][18] = {4744,24345,1011,554,511}
	tAnniversaryActivity_cont["MonsterNew"][19] = {4744,24345,1011,590,406}
	tAnniversaryActivity_cont["MonsterNew"][20] = {4744,24345,1011,710,416}
	tAnniversaryActivity_cont["MonsterNew"][21] = {4744,24345,1011,663,697}
	tAnniversaryActivity_cont["MonsterNew"][22] = {4744,24345,1011,796,703}
	tAnniversaryActivity_cont["MonsterNew"][23] = {4744,24345,1011,775,617}
	tAnniversaryActivity_cont["MonsterNew"][24] = {4744,24345,1015,837,644}
	tAnniversaryActivity_cont["MonsterNew"][25] = {4744,24345,1015,930,678}	
	tAnniversaryActivity_cont["MonsterNew"][26] = {4744,24345,1015,929,795}
	tAnniversaryActivity_cont["MonsterNew"][27] = {4744,24345,1015,811,798}
	tAnniversaryActivity_cont["MonsterNew"][28] = {4744,24345,1015,526,697}
	tAnniversaryActivity_cont["MonsterNew"][29] = {4744,24345,1015,441,592}
	tAnniversaryActivity_cont["MonsterNew"][30] = {4744,24345,1015,443,520}
	tAnniversaryActivity_cont["MonsterNew"][31] = {4744,24345,1015,325,256}
	tAnniversaryActivity_cont["MonsterNew"][32] = {4744,24345,1015,320,172}
	tAnniversaryActivity_cont["MonsterNew"][33] = {4744,24345,1015,410,201}
	tAnniversaryActivity_cont["MonsterNew"][34] = {4744,24345,1020,219,222}
	tAnniversaryActivity_cont["MonsterNew"][35] = {4744,24345,1020,219,340}
	tAnniversaryActivity_cont["MonsterNew"][36] = {4744,24345,1020,215,540}
	tAnniversaryActivity_cont["MonsterNew"][37] = {4744,24345,1020,369,623}
	tAnniversaryActivity_cont["MonsterNew"][38] = {4744,24345,1020,606,796}
	tAnniversaryActivity_cont["MonsterNew"][39] = {4744,24345,1020,649,685}
	tAnniversaryActivity_cont["MonsterNew"][40] = {4744,24345,10137,258,268}
	tAnniversaryActivity_cont["MonsterNew"][41] = {4744,24345,10137,440,220}
	tAnniversaryActivity_cont["MonsterNew"][42] = {4744,24345,10137,453,703}
	tAnniversaryActivity_cont["MonsterNew"][43] = {4744,24345,10137,552,748}
	tAnniversaryActivity_cont["MonsterNew"][44] = {4744,24345,10137,500,635}
	tAnniversaryActivity_cont["MonsterNew"][45] = {4744,24345,10137,495,564}

	
--物品
local tAnniversaryActivity_Item = {}
	-- 周年庆烟花
	tAnniversaryActivity_Item[3307544] = 3307544
	
	-- 周年庆纪念币
	tAnniversaryActivity_Item[3307543] = 3307543
	
	--周年庆贺卡
	tAnniversaryActivity_Item[3307545] = 3307545
	
	--年运通宝
	tAnniversaryActivity_Item[3301454] = 3301454

--贺卡奖励
local tAnniversaryActivity_CardAward = {}
	tAnniversaryActivity_CardAward[3307545] = {}
	tAnniversaryActivity_CardAward[3307545]["ItemChanceSum"] = 10000

	--周年庆纪念币 3307543 35%
	tAnniversaryActivity_CardAward[3307545][1] = {}
	tAnniversaryActivity_CardAward[3307545][1]["RandomItemChanceType"] = 2
	tAnniversaryActivity_CardAward[3307545][1]["ItemChance"] = 3500
	tAnniversaryActivity_CardAward[3307545][1]["RewardItem"] = {}
	tAnniversaryActivity_CardAward[3307545][1]["RewardItem"][1] = {}
	tAnniversaryActivity_CardAward[3307545][1]["RewardItem"][1]["Id"] = 3307543
	tAnniversaryActivity_CardAward[3307545][1]["RewardItem"][1]["Attr"] = "0 5"
	tAnniversaryActivity_CardAward[3307545][1]["Log"] = "0,0,0,0,12001013,2,3307543,5"
	
	--周年庆纪念币 3307543 20%
	tAnniversaryActivity_CardAward[3307545][2] = {}
	tAnniversaryActivity_CardAward[3307545][2]["RandomItemChanceType"] = 2
	tAnniversaryActivity_CardAward[3307545][2]["ItemChance"] = 2000
	tAnniversaryActivity_CardAward[3307545][2]["RewardItem"] = {}
	tAnniversaryActivity_CardAward[3307545][2]["RewardItem"][1] = {}
	tAnniversaryActivity_CardAward[3307545][2]["RewardItem"][1]["Id"] = 3307543
	tAnniversaryActivity_CardAward[3307545][2]["RewardItem"][1]["Attr"] = "0 8"
	tAnniversaryActivity_CardAward[3307545][2]["Log"] = "0,0,0,0,12001013,2,3307543,8"

	--周年庆纪念币 3307543 15%
	tAnniversaryActivity_CardAward[3307545][3] = {}
	tAnniversaryActivity_CardAward[3307545][3]["RandomItemChanceType"] = 2
	tAnniversaryActivity_CardAward[3307545][3]["ItemChance"] = 1500
	tAnniversaryActivity_CardAward[3307545][3]["RewardItem"] = {}
	tAnniversaryActivity_CardAward[3307545][3]["RewardItem"][1] = {}
	tAnniversaryActivity_CardAward[3307545][3]["RewardItem"][1]["Id"] = 3307543
	tAnniversaryActivity_CardAward[3307545][3]["RewardItem"][1]["Attr"] = "0 10"
	tAnniversaryActivity_CardAward[3307545][3]["Log"] = "0,0,0,0,12001013,2,3307543,10"

	--年庆纪念币 3307543 8%
	tAnniversaryActivity_CardAward[3307545][4] = {}
	tAnniversaryActivity_CardAward[3307545][4]["RandomItemChanceType"] = 2
	tAnniversaryActivity_CardAward[3307545][4]["ItemChance"] = 800
	tAnniversaryActivity_CardAward[3307545][4]["RewardItem"] = {}
	tAnniversaryActivity_CardAward[3307545][4]["RewardItem"][1] = {}
	tAnniversaryActivity_CardAward[3307545][4]["RewardItem"][1]["Id"] = 3307543
	tAnniversaryActivity_CardAward[3307545][4]["RewardItem"][1]["Attr"] = "0 15"
	tAnniversaryActivity_CardAward[3307545][4]["Log"] = "0,0,0,0,12001013,2,3307543,15"

	-- 5赠点天石  15%
	tAnniversaryActivity_CardAward[3307545][5] = {}
	tAnniversaryActivity_CardAward[3307545][5]["RandomItemChanceType"] = 2
	tAnniversaryActivity_CardAward[3307545][5]["ItemChance"] = 1500
	tAnniversaryActivity_CardAward[3307545][5]["RewardEMoneyMono"] = {}
	tAnniversaryActivity_CardAward[3307545][5]["RewardEMoneyMono"]["Value"] = 5
	tAnniversaryActivity_CardAward[3307545][5]["Log"] = "0,0,0,0,12001013,2,3,5"
	
	-- 10赠点天石  7%
	tAnniversaryActivity_CardAward[3307545][6] = {}
	tAnniversaryActivity_CardAward[3307545][6]["RandomItemChanceType"] = 2
	tAnniversaryActivity_CardAward[3307545][6]["ItemChance"] = 700
	tAnniversaryActivity_CardAward[3307545][6]["RewardEMoneyMono"] = {}
	tAnniversaryActivity_CardAward[3307545][6]["RewardEMoneyMono"]["Value"] = 10
	tAnniversaryActivity_CardAward[3307545][6]["Log"] = "0,0,0,0,12001013,2,3,10"

--周年赠点包
local tAnniversaryActivity_EmoneyMoMoAward = {}
	tAnniversaryActivity_EmoneyMoMoAward["RewardEMoneyMono"] = {}
	tAnniversaryActivity_EmoneyMoMoAward["RewardEMoneyMono"]["Value"] = 20
	tAnniversaryActivity_EmoneyMoMoAward["DeleteItem"] = {}
	tAnniversaryActivity_EmoneyMoMoAward["DeleteItem"][1] = {}
	tAnniversaryActivity_EmoneyMoMoAward["DeleteItem"][1]["Id"] = 3307546
	tAnniversaryActivity_EmoneyMoMoAward["Log"] = "0,0,3307546,1,12001013,2,3,20"

--奖励表
local tAnniversaryActivity_Award = {}
	--烟花奖励 给贺卡
	tAnniversaryActivity_Award["FireWork"] = {}
	tAnniversaryActivity_Award["FireWork"]["RewardItem"] = {}
	tAnniversaryActivity_Award["FireWork"]["RewardItem"][1] = {}
	tAnniversaryActivity_Award["FireWork"]["RewardItem"][1]["Id"] = 3307545
	tAnniversaryActivity_Award["FireWork"]["RewardItem"][1]["Attr"] = "0 1"
	tAnniversaryActivity_Award["FireWork"]["Log"] = "0,0,0,0,12001013,2,3307545,1"
	
	--给烟花
	tAnniversaryActivity_Award["GetFireWork"] = {}
	tAnniversaryActivity_Award["GetFireWork"]["RewardItem"] = {}
	tAnniversaryActivity_Award["GetFireWork"]["RewardItem"][1] = {}
	tAnniversaryActivity_Award["GetFireWork"]["RewardItem"][1]["Id"] = 3307544
	tAnniversaryActivity_Award["GetFireWork"]["RewardItem"][1]["Attr"] = "0 1"
	tAnniversaryActivity_Award["GetFireWork"]["Log"] = "0,0,0,0,12001013,2,3307544,1"
	
	--给纪念币
	tAnniversaryActivity_Award["GetCoins"] = {}
	tAnniversaryActivity_Award["GetCoins"]["RewardItem"] = {}
	tAnniversaryActivity_Award["GetCoins"]["RewardItem"][1] = {}
	tAnniversaryActivity_Award["GetCoins"]["RewardItem"][1]["Id"] = 3307543
	tAnniversaryActivity_Award["GetCoins"]["RewardItem"][1]["Attr"] = "0 1"
	tAnniversaryActivity_Award["GetCoins"]["Log"] = "0,0,0,0,12001013,2,3307543,1"
	
	
--log表
local tAnniversaryActivity_Log = {}
	tAnniversaryActivity_Log["DelItem"] = "0,0,%d,1,12001013,3,0,0" --删除任务物品
	tAnniversaryActivity_Log["DelAllItem"] = "0,0,%d,%d,12001013,2,0,0"		

		--光效
local tAnniversaryActivity_Effect = {}
	tAnniversaryActivity_Effect[1] = {}
	tAnniversaryActivity_Effect[1][1] = "self"
	tAnniversaryActivity_Effect[1][2] = "FF17"

---------------------------------逻辑部分---------------------------------------------
-- function tAnniversaryActivity_OnLine()
	-- local nUserId = Get_UserId()
	-- local nTaskId = tAnniversaryActivity_cont["TaskId"]
	-- if not Task_ChkTaskDetail(nTaskId, nUserId) then
		-- Task_AddTaskDetail(nTaskId, 0, nUserId)
	-- end
	-- if Task_ChkTaskDetail(nTaskId, nUserId) and Task_DetailInterval(nTaskId, 1, 4, nUserId) then
		-- Task_SetTaskDetailData1(nTaskId, 0, nUserId)
		-- Task_SetTaskDetailCompleteFlag(nTaskId, 0, nUserId)
	-- end
		

-- end

--打开兑换商店
function AnniversaryActivity_OpenExShop()

	local nUserId = Get_UserId()
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end

	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end

	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		
		User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["Nolev"])
		return
	end

	User_OpenExchangeShop(tAnniversaryActivity_cont["NPC"]["nNpcId"],nUserId)

end

--盗火小怪掉落
function AnniversaryActivity_MonsterDrop(nMonsterId)

	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end

	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end

	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end
	
	-- 判断每日获得贺卡上限5次
	local nEvent = tAnniversaryActivity_cont["EventType"][5]
	local nData = tAnniversaryActivity_cont["DataType"][5]
	
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end

	if Task_ChkStcValue(nEvent, nData, ">=", tAnniversaryActivity_cont["Monster"]["CardNum1"]) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		Sys_MsgBox(tAnniversaryActivity_Text["Sys"]["LimitCard1"])
		return
	end
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["SpaceCard"])
		return
	end

	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItem(tAnniversaryActivity_Award["FireWork"])
	
end

--每十分钟刷新小boss
function AnniversaryActivity_NewMonster()
	
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	
	for k, v in pairs(tAnniversaryActivity_cont["MonsterNew"]) do
		local nMapId =v[3]
		local nMonsterId = v[1]
		local nGenId = v[2]
		local nPosX = v[4] 
		local nPosY = v[5]
		
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,nil,nil,nil,10) 
	end
	Sys_SystemBroadcast(tAnniversaryActivity_Text["Sys"]["BossAppear"])
end

--全区击杀获得周年纪念币
function AnniversaryActivity_KillMonsterForCoins(nMonsterId)

	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end
	
	-- 判断每日获得纪念币上限
	local nEvent = tAnniversaryActivity_cont["EventType"][4]
	local nData = 	tAnniversaryActivity_cont["DataType"][4] 
	
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	if Task_ChkStcValue(nEvent, nData, ">=", tAnniversaryActivity_cont["Monster"]["CoinsNum "]) then
		if Task_ChkStcValue(nEvent, nData, "==", tAnniversaryActivity_cont["Monster"]["CoinsNum "]) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_MsgBox(tAnniversaryActivity_Text["Sys"]["LimitCoins"])
		end
		return
	end
	
	if Sys_Random(tAnniversaryActivity_cont["Monster"]["CoinsChance"],tAnniversaryActivity_cont["Monster"]["CoinsChanceSum"]) then
		
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["SpaceCoins"])
			return
		end
		
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItem(tAnniversaryActivity_Award["GetCoins"])
	end

end


--全区击杀获得贺卡
function AnniversaryActivity_KillMonsterForCard(nMonsterId)
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end
	
	-- 判断每日获得贺卡上限10次
	local nEvent = tAnniversaryActivity_cont["EventType"][3]
	local nData = tAnniversaryActivity_cont["DataType"][3]
	
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	if Task_ChkStcValue(nEvent, nData, ">=", tAnniversaryActivity_cont["Monster"]["CardNum"]) then
		if Task_ChkStcValue(nEvent, nData, "==", tAnniversaryActivity_cont["Monster"]["CardNum"]) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_MsgBox(tAnniversaryActivity_Text["Sys"]["LimitCard"])
		end
		return
	end
	
	if Sys_Random(tAnniversaryActivity_cont["Monster"]["CardChance"],tAnniversaryActivity_cont["Monster"]["CardChanceSum"]) then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["SpaceCard"])
			return
		end
		
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItem(tAnniversaryActivity_Award["FireWork"])
	end
	
end


--接1 领取烟花
function tAnniversaryActivity_GetFireWork(nItemId)

	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end

	--判断时间
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tAnniversaryActivity_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["FireWorkOverTime"])
			end
		end	
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end
	
	local nEvent = tAnniversaryActivity_cont["EventType"][2] 
	local nData = tAnniversaryActivity_cont["DataType"][2] 
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["HaveGot"])
		return
	end

	--判断背包
	if not RewardTemplate_CheckSpace(tAnniversaryActivity_Award["FireWork"]) then
		User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["FireWorkFullBag"])
		return
	end

	--置掩码 
	Task_AddStatistic(nEvent,nData,1,1)
	Task_SetStcTimestamp(nEvent,nData,0)
		
	RewardTemplate_UseItem(tAnniversaryActivity_Award["GetFireWork"])
	Sys_MsgBox(tAnniversaryActivity_Text["Sys"]["GetFireWork"],"AnniversaryActivity_UseFireWork</N>3307544")

end

--- 判断玩家是否在固定点
function AnniversaryActivity_ChkMap()

	local nUserMapId = Get_UserMapId()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	
	if nUserMapId == tAnniversaryActivity_cont["FireWork"]["MapId"] then
		if nUserPosX <= tAnniversaryActivity_cont["FireWork"]["PosX1"] and nUserPosX >= tAnniversaryActivity_cont["FireWork"]["PosX2"] then
			if nUserPosY <= tAnniversaryActivity_cont["FireWork"]["PosY1"] and nUserPosY >= tAnniversaryActivity_cont["FireWork"]["PosY2"] then
				return false
			end
		end
	end
	return true
end

-- 判断是否在双龙城
function AnniversaryActivity_ChkCentralPlain()
	local nUserMapId = Get_UserMapId()
	
	if nUserMapId == tAnniversaryActivity_cont["FireWork"]["MapId"] then
		return false
	end
	return true
end

-- 自动寻路到燃放烟花地点
function AnniversaryActivity_MoveToFireWorkMap()

	if AnniversaryActivity_ChkCentralPlain() then
		User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["ChkMap"])
		return
	end
	
	local nPosX = tAnniversaryActivity_cont["FireWork"]["GoToPosX"]
	local nPosY = tAnniversaryActivity_cont["FireWork"]["GoToPosY"]
	local nMapId = tAnniversaryActivity_cont["FireWork"]["GoToMap"]
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId)

end

--烟花使用
function AnniversaryActivity_UseFireWork(nItemId)

	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then
		return
	end

	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tAnniversaryActivity_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tAnniversaryActivity_Text[3307544]["OverTime"])
			end
		end	
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end

	local nEvent = tAnniversaryActivity_cont["EventType"][1] 
	local nData = tAnniversaryActivity_cont["DataType"][1] 
	-- 判断是否隔天

	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		User_TalkChannel2005(tAnniversaryActivity_Text["Sys"]["FullTimes"])
		return
	end

	--判断是否在指定地点
	if AnniversaryActivity_ChkMap() then
		Sys_MsgBox(tAnniversaryActivity_Text["Sys"]["ErroMap"], "AnniversaryActivity_MoveToFireWorkMap")
		return
	end
	
	if not RewardTemplate_CheckSpace(tAnniversaryActivity_Award["FireWork"]) then
		return
	end
	
	if Item_DelItem(nItemId) then
		local sDelItemLog = string.format(tAnniversaryActivity_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sDelItemLog)
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		
		-- local nTaskId = tAnniversaryActivity_cont["TaskId"]
		-- if not Task_ChkTaskDetail(nTaskId, nUserId) then
			-- Task_AddTaskDetail(nTaskId, 0, nUserId)
		-- end
		-- if Task_ChkTaskDetail(nTaskId, nUserId) and Task_DetailInterval(nTaskId, 1, 4, nUserId) then
			-- Task_SetTaskDetailData1(nTaskId, 0, nUserId)
			-- Task_SetTaskDetailCompleteFlag(nTaskId, 0, nUserId)
		-- end
		
		-- Task_SetTaskDetailData1(tNewDailyPK_Data["TaskId"], nData1, nUserId)
	
		--全服公告
		local sUserName = Get_UserName()
		Sys_SystemBroadcast(string.format(tAnniversaryActivity_Text["Sys"]["ServerMsgtoGo"],sUserName))
		-- Sys_SystemBroadcast(string.format(tAnniversaryActivity_Text["Sys"]["ServerMsg"],sUserName))
		Sys_TalkBroadcast(string.format(tAnniversaryActivity_Text["Sys"]["ServerMsg"],sUserName))
		--给光效       
		if User_EffectDel(tAnniversaryActivity_Effect[1][1],tAnniversaryActivity_Effect[1][2]) then
			User_EffectAdd(tAnniversaryActivity_Effect[1][1],tAnniversaryActivity_Effect[1][2])
		end
		
		--给奖励
		RewardTemplate_UseItem(tAnniversaryActivity_Award["FireWork"])
		Sys_MsgBox(tAnniversaryActivity_Text["Sys"]["GetFireAward"])
	end

end

-- 周年庆贺卡使用
function AnniversaryActivity_Use(nItemId)

	local nUserId = Get_UserId()
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end

	--判断时间 （做批量删除）
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			local nCount = Get_CountItemType(nItemId,0)
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tAnniversaryActivity_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tAnniversaryActivity_Text[3307545]["OverTime"])
			end
		end	
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end
	
	--赠点上限判断
	if Get_UserMonoEMoney() + 10 > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tAnniversaryActivity_Text[3307545]["EmoneyMoMoLimit"])
		return
	end
	
	-- if not RewardTemplate_EMoneyMonoLimit(10,nUserId) then
		-- User_TalkChannel2005(tAnniversaryActivity_Text[3307545]["EmoneyMoMoLimit"])
		-- return
	-- end
	--背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRandomSpace(tAnniversaryActivity_CardAward,3307545)) then 		
		User_TalkChannel2005(string.format(tAnniversaryActivity_Text[3307545]["BagFull"],RewardTemplate_GetRandomSpace(tAnniversaryActivity_CardAward,3307545)))
		return
	end 
	if Item_DelItem(nItemId) then
		local sDelItemLog = string.format(tAnniversaryActivity_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sDelItemLog)
		RewardTemplate_NewRandom(tAnniversaryActivity_CardAward,3307545)
	end
end

--赠点包使用
function AnniversaryActivity_EmoneyMoMoUse(nItemId)
	--赠点上限判断？？
	if Get_UserMonoEMoney() + 20 > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tAnniversaryActivity_Text[3307545]["EmoneyMoMoLimit"])
		return
	end
	RewardTemplate_UseItem(tAnniversaryActivity_EmoneyMoMoAward)
end

--纪念币使用导航
function AnniversaryActivity_GoNpc(nItemId)
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		return
	end
	
	--判断时间 
	if not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tAnniversaryActivity_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				Item_AddItem(tAnniversaryActivity_Item[3301454],nil,nCount)
				User_TalkChannel2005(string.format(tAnniversaryActivity_Text["Sys"]["Change"],nCount))
			end
		end	
		
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) then
		return
	end
	
	local nPosX = tAnniversaryActivity_cont["NPC"]["CellX"]
	local nPosY = tAnniversaryActivity_cont["NPC"]["CellY"]
	local nMapId = tAnniversaryActivity_cont["NPC"]["Mapid"]
	local nNpcId = tAnniversaryActivity_cont["NPC"]["nNpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end

function AnniversaryActivity_JoinTheActivity(nFlag)
	local nPosX = tAnniversaryActivity_cont["NPC"]["CellX1"]
	local nPosY = tAnniversaryActivity_cont["NPC"]["CellY1"]
	local nMapId = tAnniversaryActivity_cont["NPC"]["Mapid1"]
	local nNpcId = tAnniversaryActivity_cont["NPC"]["nNpcId1"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end


---------------------------------npc部分---------------------------------------------
---------------------------npc庆周年 22660
tNpcFace[4418] = 6   --头像

tNpcGossip[22660] = tNpcGossip[22660] or DefaultNpc:new{}
tNpcGossip[22660]["OptionHidden"] = 1

--活动时间前
tNpcGossip[22660]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22660]["Text111"] = tAnniversaryActivity_Text[22660]["Text111"]
tNpcGossip[22660]["Text112"] = tAnniversaryActivity_Text[22660]["Text112"]
tNpcGossip[22660]["Text113"] = tAnniversaryActivity_Text[22660]["Text113"]
tNpcGossip[22660]["Text114"] = tAnniversaryActivity_Text[22660]["Text114"]
tNpcGossip[22660]["Text115"] = tAnniversaryActivity_Text[22660]["Text115"]

tNpcGossip[22660]["tOption1-1"] = {1}
tNpcGossip[22660]["Option1"] = tAnniversaryActivity_Text[22660]["Option1"]
tNpcGossip[22660]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryActivity"]["ActivityTime"])
end

--活动时间中
tNpcGossip[22660]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[22660]["Text121"] = tAnniversaryActivity_Text[22660]["Text121"]
tNpcGossip[22660]["Text122"] = tAnniversaryActivity_Text[22660]["Text122"]
tNpcGossip[22660]["Text123"] = tAnniversaryActivity_Text[22660]["Text123"]
tNpcGossip[22660]["Text124"] = tAnniversaryActivity_Text[22660]["Text124"]
tNpcGossip[22660]["Text125"] = tAnniversaryActivity_Text[22660]["Text125"]
tNpcGossip[22660]["Text126"] = tAnniversaryActivity_Text[22660]["Text126"]

tNpcGossip[22660]["tOption1-2"] = {31,32,33}
tNpcGossip[22660]["Option31"] = tAnniversaryActivity_Text[22660]["Option31"] 
tNpcGossip[22660]["OptionFunc31"] = "tAnniversaryActivity_GetFireWork</N>3307544"
tNpcGossip[22660]["OptionChkFunc31"] = function ()
	local nUserId = Get_UserId()
	-- 领取完屏蔽选项
	local nEvent = tAnniversaryActivity_cont["EventType"][2]
	local nType = tAnniversaryActivity_cont["DataType"][2] 
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	--隔天判断
	if  nTimes == 0 or nTimes == nil or Task_StcInterval(nEvent,nType,1,4,nUserId) then
		return true
	end
	return false 
end


tNpcGossip[22660]["Option32"] = tAnniversaryActivity_Text[22660]["Option32"]
tNpcGossip[22660]["OptionPoint32"] = "3-2"

tNpcGossip[22660]["Text3-2"] = {321,322,323,324,325,326,327,328,329}
tNpcGossip[22660]["Text321"] = tAnniversaryActivity_Text[22660]["Text321"]
tNpcGossip[22660]["Text322"] = tAnniversaryActivity_Text[22660]["Text322"]
tNpcGossip[22660]["Text323"] = tAnniversaryActivity_Text[22660]["Text323"]
tNpcGossip[22660]["Text324"] = tAnniversaryActivity_Text[22660]["Text324"]
tNpcGossip[22660]["Text325"] = tAnniversaryActivity_Text[22660]["Text325"]
tNpcGossip[22660]["Text326"] = tAnniversaryActivity_Text[22660]["Text326"]
tNpcGossip[22660]["Text327"] = tAnniversaryActivity_Text[22660]["Text327"]
tNpcGossip[22660]["Text328"] = tAnniversaryActivity_Text[22660]["Text328"]
tNpcGossip[22660]["Text329"] = tAnniversaryActivity_Text[22660]["Text329"]

tNpcGossip[22660]["tOption3-2"] = {321}
tNpcGossip[22660]["Option321"] = tAnniversaryActivity_Text[22660]["Option321"]

tNpcGossip[22660]["Option33"] = tAnniversaryActivity_Text[22660]["Option33"]

tNpcGossip[22660]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"]) 
end

--活动时间后
tNpcGossip[22660]["Text1-3"] = {131,132}
tNpcGossip[22660]["Text131"] = tAnniversaryActivity_Text[22660]["Text131"]
tNpcGossip[22660]["Text132"] = tAnniversaryActivity_Text[22660]["Text132"]
tNpcGossip[22660]["tOption1-3"] = {21}
tNpcGossip[22660]["Option21"] = tAnniversaryActivity_Text[22660]["Option21"]
tNpcGossip[22660]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"])
end

--等级要求
tNpcGossip[22660]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[22660]["Text141"] = tAnniversaryActivity_Text[22660]["Text141"] 
tNpcGossip[22660]["Text142"] = tAnniversaryActivity_Text[22660]["Text142"] 
tNpcGossip[22660]["Text143"] = tAnniversaryActivity_Text[22660]["Text143"] 
tNpcGossip[22660]["Text144"] = tAnniversaryActivity_Text[22660]["Text144"] 
tNpcGossip[22660]["Text145"] = tAnniversaryActivity_Text[22660]["Text145"] 
tNpcGossip[22660]["Text146"] = tAnniversaryActivity_Text[22660]["Text146"] 
tNpcGossip[22660]["Text147"] = tAnniversaryActivity_Text[22660]["Text147"] 

tNpcGossip[22660]["tOption1-4"] = {41}
tNpcGossip[22660]["Option41"] = tAnniversaryActivity_Text[22660]["Option41"]
tNpcGossip[22660]["ChkFunc1-4"] = function()
	return  Sys_ChkFullTime(tActivityTime["AnniversaryActivity"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tAnniversaryActivity_cont["Level"], tAnniversaryActivity_cont["MinMeto"])
end



---------------------------------物品部分---------------------------------------------
--周年纪念币 3307543 导航到兑换npc处
tItem[3307543] = tItem[3307543] or {}
tItem[3307543]["Function"] = function(nItemId,sItemName)
	AnniversaryActivity_GoNpc(nItemId)
end

--周年庆烟花 3307544 
tItem[3307544] = tItem[3307544] or {}
tItem[3307544]["Function"] = function(nItemId,sItemName)
	AnniversaryActivity_UseFireWork(nItemId)
end

-- 周年庆贺卡 3307545
tItem[3307545] = tItem[3307545] or {}
tItem[3307545]["Function"] = function(nItemId,sItemName)
	AnniversaryActivity_Use(nItemId)
end

--周年赠点包 3307546
tItem[3307546] = tItem[3307546] or {}
tItem[3307546]["Function"] = function(nItemId,sItemName)
	AnniversaryActivity_EmoneyMoMoUse(nItemId)
end


---------------------------------------------怪物模板---------------------------------------------
-- 击杀获得贺卡  全区
local tAnniversaryActivity_CardMonster = {}
tAnniversaryActivity_CardMonster["ActivityTime"] = tActivityTime["AnniversaryActivity"]["ActivityTime"]
tAnniversaryActivity_CardMonster["Function"]= AnniversaryActivity_KillMonsterForCard
table.insert(tMonsterDrop_AreaLoad,tAnniversaryActivity_CardMonster)

-- 击杀获得纪念币  全区
local tAnniversaryActivity_CoinsMonster = {}
tAnniversaryActivity_CoinsMonster["ActivityTime"] = tActivityTime["AnniversaryActivity"]["ActivityTime"]
tAnniversaryActivity_CoinsMonster["Function"]= AnniversaryActivity_KillMonsterForCoins
table.insert(tMonsterDrop_AreaLoad,tAnniversaryActivity_CoinsMonster)

-- 盗火小妖	4744
tMonster[4744] = tMonster[4744] or {}
tMonster[4744]["tFunction"] = tMonster[4744]["tFunction"] or {}
table.insert(tMonster[4744]["tFunction"],AnniversaryActivity_MonsterDrop)

--------------------------------------------------时间自检--------------------------------------------------------------
local tAnniversaryActivity_OnTime = {}
	-- 每10分钟执行
	tAnniversaryActivity_OnTime[1] = {}
	tAnniversaryActivity_OnTime[1]["Type"] = 1
	tAnniversaryActivity_OnTime[1]["TimeType"] = 5
	tAnniversaryActivity_OnTime[1]["Multiple"] = {}
	tAnniversaryActivity_OnTime[1]["Multiple"][1]  = "00 00"
	tAnniversaryActivity_OnTime[1]["Multiple"][2]  = "10 10"
	tAnniversaryActivity_OnTime[1]["Multiple"][3]  = "20 20"
	tAnniversaryActivity_OnTime[1]["Multiple"][4]  = "30 30"
	tAnniversaryActivity_OnTime[1]["Multiple"][5]  = "40 40"
	tAnniversaryActivity_OnTime[1]["Multiple"][6]  = "50 50"
	tAnniversaryActivity_OnTime[1]["Multiple"][7]  = "60 60"
	tAnniversaryActivity_OnTime[1]["Func"] = AnniversaryActivity_NewMonster

table.insert(tSystemTime_InitialData,tAnniversaryActivity_OnTime[1])