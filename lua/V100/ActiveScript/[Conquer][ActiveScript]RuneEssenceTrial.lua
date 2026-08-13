------------------------------------------------------------------------------------
--Name:		200425[简体征服][活动脚本]神纹试炼
--Purpose:	神纹试炼
--Creator: 	傅伟龙
--Created:	2020/04/25
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
local tRuneEssenceTrial_Cont = {}
	tRuneEssenceTrial_Cont["CostCultivation"] = 500
	tRuneEssenceTrial_Cont["TaskId"] = 4493
		--传送地图
	tRuneEssenceTrial_Cont["Map"] = {}
	tRuneEssenceTrial_Cont["Map"][1] = {}
	tRuneEssenceTrial_Cont["Map"][1]["MapId"] = 1002
	tRuneEssenceTrial_Cont["Map"][1]["PosX"] = 342
	tRuneEssenceTrial_Cont["Map"][1]["PosY"] = 445
	
	tRuneEssenceTrial_Cont["Map"][2] = {}
	tRuneEssenceTrial_Cont["Map"][2]["MapId"] = 10364
	tRuneEssenceTrial_Cont["Map"][2]["PosX"] = 249
	tRuneEssenceTrial_Cont["Map"][2]["PosY"] = 218
	
	tRuneEssenceTrial_Cont["Battle"] = {}
	tRuneEssenceTrial_Cont["Battle"][26525] = 300
	tRuneEssenceTrial_Cont["Battle"][26526] = 310
	tRuneEssenceTrial_Cont["Battle"][26527] = 320
	tRuneEssenceTrial_Cont["Battle"][26528] = 330
	tRuneEssenceTrial_Cont["Battle"][26529] = 340
	tRuneEssenceTrial_Cont["Battle"][26530] = 350
	tRuneEssenceTrial_Cont["Battle"][26531] = 360
	tRuneEssenceTrial_Cont["Battle"][26532] = 370
	tRuneEssenceTrial_Cont["Battle"][26533] = 380
	tRuneEssenceTrial_Cont["Battle"][26534] = 390
	tRuneEssenceTrial_Cont["Battle"][26535] = 400
	tRuneEssenceTrial_Cont["Battle"][26536] = 410
	tRuneEssenceTrial_Cont["Battle"][26537] = 420
	tRuneEssenceTrial_Cont["Battle"][26538] = 430
	tRuneEssenceTrial_Cont["Battle"][26539] = 440
	tRuneEssenceTrial_Cont["Battle"][26540] = 450
	tRuneEssenceTrial_Cont["Battle"][26541] = 460
	tRuneEssenceTrial_Cont["Battle"][26542] = 470
	
	tRuneEssenceTrial_Cont["FloorNum"] = {}
	tRuneEssenceTrial_Cont["FloorNum"][26525] = 1 
	tRuneEssenceTrial_Cont["FloorNum"][26526] = 2 
	tRuneEssenceTrial_Cont["FloorNum"][26527] = 3 
	tRuneEssenceTrial_Cont["FloorNum"][26528] = 4 
	tRuneEssenceTrial_Cont["FloorNum"][26529] = 5 
	tRuneEssenceTrial_Cont["FloorNum"][26530] = 6 
	tRuneEssenceTrial_Cont["FloorNum"][26531] = 7 
	tRuneEssenceTrial_Cont["FloorNum"][26532] = 8 
	tRuneEssenceTrial_Cont["FloorNum"][26533] = 9 
	tRuneEssenceTrial_Cont["FloorNum"][26534] = 10
	tRuneEssenceTrial_Cont["FloorNum"][26535] = 11
	tRuneEssenceTrial_Cont["FloorNum"][26536] = 12
	tRuneEssenceTrial_Cont["FloorNum"][26537] = 13
	tRuneEssenceTrial_Cont["FloorNum"][26538] = 14
	tRuneEssenceTrial_Cont["FloorNum"][26539] = 15
	tRuneEssenceTrial_Cont["FloorNum"][26540] = 16
	tRuneEssenceTrial_Cont["FloorNum"][26541] = 17
	tRuneEssenceTrial_Cont["FloorNum"][26542] = 18
	
	tRuneEssenceTrial_Cont["Lookface"] = 24840 
	
	--掩码
	tRuneEssenceTrial_Cont["Stc"] ={}
	tRuneEssenceTrial_Cont["Stc"]["Event"] = {}
	tRuneEssenceTrial_Cont["Stc"]["Type"] = {}
	tRuneEssenceTrial_Cont["Stc"]["Event"][1] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][1] = 73

	tRuneEssenceTrial_Cont["Stc"]["Event"][2] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][2] = 74
	
	tRuneEssenceTrial_Cont["Stc"]["Event"][3] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][3] = 75
	
	tRuneEssenceTrial_Cont["Stc"]["Event"][4] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][4] = 76
	
	tRuneEssenceTrial_Cont["Stc"]["Event"][5] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][5] = 77
	
	tRuneEssenceTrial_Cont["Stc"]["Event"][6] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][6] = 78
	
	tRuneEssenceTrial_Cont["Stc"]["Event"][7] = 220
	tRuneEssenceTrial_Cont["Stc"]["Type"][7] = 79
	
	tRuneEssenceTrial_Cont["Stc"]["Event"][8] = 224
	tRuneEssenceTrial_Cont["Stc"]["Type"][8] = 34
	
local tRuneEssenceTrial_InstanceNpc = {}
	tRuneEssenceTrial_InstanceNpc[720] = {54,59,97500234}
	tRuneEssenceTrial_InstanceNpc[721] = {54,59,97500235}
	tRuneEssenceTrial_InstanceNpc[722] = {54,59,97500236}
	tRuneEssenceTrial_InstanceNpc[723] = {54,59,97500237}
	tRuneEssenceTrial_InstanceNpc[724] = {54,59,97500238}
	tRuneEssenceTrial_InstanceNpc[725] = {54,59,97500239}
	tRuneEssenceTrial_InstanceNpc[726] = {54,59,97500240}
	tRuneEssenceTrial_InstanceNpc[727] = {54,59,97500241}
	tRuneEssenceTrial_InstanceNpc[728] = {54,59,97500242}
	tRuneEssenceTrial_InstanceNpc[729] = {54,59,97500243}
	tRuneEssenceTrial_InstanceNpc[730] = {54,59,97500244}
	tRuneEssenceTrial_InstanceNpc[731] = {54,59,97500245}
	tRuneEssenceTrial_InstanceNpc[732] = {54,59,97500246}
	tRuneEssenceTrial_InstanceNpc[733] = {54,59,97500247}
	tRuneEssenceTrial_InstanceNpc[734] = {54,59,97500248}
	tRuneEssenceTrial_InstanceNpc[735] = {54,59,97500249}
	tRuneEssenceTrial_InstanceNpc[736] = {54,59,97500250}
	tRuneEssenceTrial_InstanceNpc[737] = {54,59,97500251}
	

	
local tRuneEssenceTrial_Monster = {}
	tRuneEssenceTrial_Monster[26525] = {6456,10842,55,60,26564}
	tRuneEssenceTrial_Monster[26526] = {6457,10843,55,60,26564}
	tRuneEssenceTrial_Monster[26527] = {6458,10844,55,60,26564}
	tRuneEssenceTrial_Monster[26528] = {6459,10845,55,60,26564}
	tRuneEssenceTrial_Monster[26529] = {6460,10846,55,60,26564}
	tRuneEssenceTrial_Monster[26530] = {6461,10847,55,60,26564}
	tRuneEssenceTrial_Monster[26531] = {6462,10848,55,60,26564}
	tRuneEssenceTrial_Monster[26532] = {6463,10849,55,60,26564}
	tRuneEssenceTrial_Monster[26533] = {6464,10850,55,60,26564}
	tRuneEssenceTrial_Monster[26534] = {6465,10851,55,60,26564}
	tRuneEssenceTrial_Monster[26535] = {6466,10852,55,60,26564}
	tRuneEssenceTrial_Monster[26536] = {6467,10853,55,60,26564}
	tRuneEssenceTrial_Monster[26537] = {6468,10854,55,60,26564}
	tRuneEssenceTrial_Monster[26538] = {6469,10855,55,60,26564}
	tRuneEssenceTrial_Monster[26539] = {6470,10856,55,60,26564}
	tRuneEssenceTrial_Monster[26540] = {6471,10857,55,60,26564}
	tRuneEssenceTrial_Monster[26541] = {6472,10858,55,60,26564}
	tRuneEssenceTrial_Monster[26542] = {6473,10859,55,60,26564}

local tRuneEssenceTrial_ClrStatus ={}
	tRuneEssenceTrial_ClrStatus["Status"] = {133,134,138,139,140,141,142,143,144}

	
	---- 状态
local tRuneEssenceTrial_Status = {}
	-- 血
	tRuneEssenceTrial_Status[1] = {}
	tRuneEssenceTrial_Status[1]["Status"] = {138}
	tRuneEssenceTrial_Status[1]["Power"] = {1000,10000}
	tRuneEssenceTrial_Status[1]["WaterPower"] = {3000,10000}
	tRuneEssenceTrial_Status[1]["Secs"] = 90
	tRuneEssenceTrial_Status[1]["Times"] = 0
	tRuneEssenceTrial_Status[1]["RemainTime"] = 60
	tRuneEssenceTrial_Status[1]["EndTime"] = 1
	tRuneEssenceTrial_Status[1]["AddLife"] = 1

	-- 攻击
	tRuneEssenceTrial_Status[2] = {}
	tRuneEssenceTrial_Status[2]["Status"] = {139,140}
	tRuneEssenceTrial_Status[2]["Power"] = {3000,10000}
	tRuneEssenceTrial_Status[2]["WaterPower"] = {5000,15000}
	tRuneEssenceTrial_Status[2]["Secs"] = 90
	tRuneEssenceTrial_Status[2]["Times"] = 0
	tRuneEssenceTrial_Status[2]["RemainTime"] = 60
	tRuneEssenceTrial_Status[2]["EndTime"] = 1
	
	-- 最终伤害
	tRuneEssenceTrial_Status[3] = {}
	tRuneEssenceTrial_Status[3]["Status"] = {143,144}
	tRuneEssenceTrial_Status[3]["Power"] = {1000,3000}
	tRuneEssenceTrial_Status[3]["WaterPower"] = {3500,5000}
	tRuneEssenceTrial_Status[3]["Secs"] = 90
	tRuneEssenceTrial_Status[3]["Times"] = 0
	tRuneEssenceTrial_Status[3]["RemainTime"] = 60
	tRuneEssenceTrial_Status[3]["EndTime"] = 1
	
	-- 伤害减免
	tRuneEssenceTrial_Status[4] = {}
	tRuneEssenceTrial_Status[4]["Status"] = {142,142}
	tRuneEssenceTrial_Status[4]["Power"] = {1000,3000}
	tRuneEssenceTrial_Status[4]["WaterPower"] = {3500,5000}
	tRuneEssenceTrial_Status[4]["Secs"] = 90
	tRuneEssenceTrial_Status[4]["Times"] = 0
	tRuneEssenceTrial_Status[4]["RemainTime"] = 60
	tRuneEssenceTrial_Status[4]["EndTime"] = 1
	
	-- 暴击
	tRuneEssenceTrial_Status[5] = {}
	tRuneEssenceTrial_Status[5]["Status"] = {133,134}
	tRuneEssenceTrial_Status[5]["Power"] = {10,50}
	tRuneEssenceTrial_Status[5]["WaterPower"] = {30,50}
	tRuneEssenceTrial_Status[5]["Secs"] = 90
	tRuneEssenceTrial_Status[5]["Times"] = 0
	tRuneEssenceTrial_Status[5]["RemainTime"] = 60
	tRuneEssenceTrial_Status[5]["EndTime"] = 1
	
	local tRuneEssenceTrial_ProStatus = {}
	tRuneEssenceTrial_ProStatus[1] = {}
	tRuneEssenceTrial_ProStatus[1]["Status"] = 136
	tRuneEssenceTrial_ProStatus[1]["Power"] = 150
	tRuneEssenceTrial_ProStatus[1]["Secs"] = 90
	tRuneEssenceTrial_ProStatus[1]["Times"] = 0
	tRuneEssenceTrial_ProStatus[1]["RemainTime"] = 60
	tRuneEssenceTrial_ProStatus[1]["EndTime"] = 1

	
	local tRuneEssenceTrial_RandomReward = {}
	tRuneEssenceTrial_RandomReward["MonsterDropReward"] = {}
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["LogId"] = 12001823
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["LogStep"] = "1[3]"
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"] = {}
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][1] = {}
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][1]["Id"] = 3330770
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][1]["Attr"] = "0 %d"
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][2] = {}
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][2]["Id"] = 3330766
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][2]["Attr"] = "0 %d"
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardEffect"] = {}
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneEssenceTrial_RandomReward[3330768] = {} 
	tRuneEssenceTrial_RandomReward[3330768]["LogId"] = 12001793
	tRuneEssenceTrial_RandomReward[3330768]["DeleteItem"] = {}
	tRuneEssenceTrial_RandomReward[3330768]["DeleteItem"][1] = {}
	tRuneEssenceTrial_RandomReward[3330768]["DeleteItem"][1]["Id"] = 3330768
	tRuneEssenceTrial_RandomReward[3330768]["DeleteItem"][1]["ItemNum"] = 1
	tRuneEssenceTrial_RandomReward[3330768]["RewardItem"] = {}
	tRuneEssenceTrial_RandomReward[3330768]["RewardItem"][1] = {}
	tRuneEssenceTrial_RandomReward[3330768]["RewardItem"][1]["Id"] = 3330766 
	tRuneEssenceTrial_RandomReward[3330768]["RewardItem"][1]["Attr"] = "0 10" 
	tRuneEssenceTrial_RandomReward[3330768]["RewardEffect"] = {}
	tRuneEssenceTrial_RandomReward[3330768]["RewardEffect"]["SzObj"] = "self"
	tRuneEssenceTrial_RandomReward[3330768]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneEssenceTrial_RandomReward[3330769] = {}
	tRuneEssenceTrial_RandomReward[3330769]["LogId"] = 12001823
	tRuneEssenceTrial_RandomReward[3330769]["LogStep"] = "1[3]"
	tRuneEssenceTrial_RandomReward[3330769]["DeleteItem"] = {}
	tRuneEssenceTrial_RandomReward[3330769]["DeleteItem"][1] = {}
	tRuneEssenceTrial_RandomReward[3330769]["DeleteItem"][1]["Id"] = 3330769
	tRuneEssenceTrial_RandomReward[3330769]["DeleteItem"][1]["ItemNum"] = 1
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"] = {}
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][1] = {}
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][1]["Id"] = 3330770
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][1]["Attr"] = "0 %d"
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][2] = {}
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][2]["Id"] = 3330766
	tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][2]["Attr"] = "0 %d"
	tRuneEssenceTrial_RandomReward[3330769]["RewardEffect"] = {}
	tRuneEssenceTrial_RandomReward[3330769]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneEssenceTrial_RandomReward[3330769]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------------
--创建怪物
function RuneEssenceTrial_RefalshBoss(nRuneEssenceTrial_NpcId)
	local nRuneEssenceTrial_UserId =  Get_UserId()
	local nRuneEssenceTrial_UserMapId = Get_UserMapId()
	local nRuneEssenceTrial_MonsterId = tRuneEssenceTrial_Monster[nRuneEssenceTrial_NpcId][1]
	local nRuneEssenceTrial_Cellx = tRuneEssenceTrial_Monster[nRuneEssenceTrial_NpcId][3]
	local nRuneEssenceTrial_Celly = tRuneEssenceTrial_Monster[nRuneEssenceTrial_NpcId][4]
	local nRuneEssenceTrial_GenId = tRuneEssenceTrial_Monster[nRuneEssenceTrial_NpcId][5]
	Monster_DelMonster(nRuneEssenceTrial_UserMapId,nRuneEssenceTrial_MonsterId)
	Monster_Death(nRuneEssenceTrial_MonsterId,nRuneEssenceTrial_UserMapId)
	
	local nMapId = Get_UserMapId(nRuneEssenceTrial_UserId)
	local sName = tRuneEssenceTrial_Text["NpcName"][720]
	local nLookface = tRuneEssenceTrial_Cont["Lookface"]
	-- Npc_DelDynaNpc(nMapId, "name" , sName)
	
	local nUserMapDoc = Get_MapDoc(nMapId)
	
	if nUserMapDoc ~= 10428 then
		return
	end
	
	local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][8]
	local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][8]
	
	if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 1) then
		return
	end
	
	Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 1)
	Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
	
	-- 刷新怪物
	Monster_AddAndCount(nRuneEssenceTrial_UserMapId,nRuneEssenceTrial_Cellx,nRuneEssenceTrial_Celly,nRuneEssenceTrial_GenId,nRuneEssenceTrial_MonsterId)
	RuneEssenceTrial_AddRStatus(1,nRuneEssenceTrial_UserId)
	
	
	local sRuneEssenceTrial_MosterName = tRuneEssenceTrial_Text["MosterName"][nRuneEssenceTrial_MonsterId]
	Sys_MsgBox(string.format(tRuneEssenceTrial_Text["MsgBox"]["MosterRush"],sRuneEssenceTrial_MosterName))
	
	local nTaskId = tRuneEssenceTrial_Cont["TaskId"]
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	Task_SetTaskDetailData6(nTaskId,1)
end

function RuneEssenceTrial_AddRushStatus()
	local nRuneEssenceTrial_NowUserId =  Get_UserId()
	RuneEssenceTrial_AddRStatus(1,nRuneEssenceTrial_NowUserId)
end

--加buff
function RuneEssenceTrial_AddRStatus(nClrStatus,nRuneEssenceTrial_NowUserId)
	local nRuneEssenceTrial_UserId = nRuneEssenceTrial_NowUserId or Get_UserId()
	--是否删除buff
	if nClrStatus == 1 then
		for i = 1,#tRuneEssenceTrial_ClrStatus["Status"] do
			local nStatus = tRuneEssenceTrial_ClrStatus["Status"][i]
			if User_ChkRoleStatus(nStatus,nRuneEssenceTrial_UserId) then
				User_DelRoleStatus(nStatus,nRuneEssenceTrial_UserId)
			end
		end
	end
	local nMapId = Get_UserMapId(nRuneEssenceTrial_UserId)
	local nUserMapDoc = Get_MapDoc(nMapId)
	
	if nUserMapDoc ~= 10428 then
		return
	end
	
	for nIndex = 1,#tRuneEssenceTrial_Status do
		local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][nIndex+1]
		local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][nIndex+1]
		for i = 1,#tRuneEssenceTrial_Status[nIndex]["Status"] do
			
			local nStatus = tRuneEssenceTrial_Status[nIndex]["Status"][i]
			-- local nPower =  tRuneEssenceTrial_Status[nIndex]["Power"]
			-- local nPowerMin = tRuneEssenceTrial_Status[nIndex]["Power"][1] --随机最小值
			-- local nPowerMax = tRuneEssenceTrial_Status[nIndex]["Power"][2] --随机最大值
			-- local nRuneEssenceTrial_Pro = Get_NewUserProfession()
			-- 判断是否为水道
			-- if nRuneEssenceTrial_Pro >= 13002 and nRuneEssenceTrial_Pro <= 13099 then
				-- nPowerMin = tRuneEssenceTrial_Status[nIndex]["WaterPower"][1]
				-- nPowerMax = tRuneEssenceTrial_Status[nIndex]["WaterPower"][2]
			-- end
			-- local nPower =  math.random(nPowerMin,nPowerMax)
			local nPower = Get_UserStatisticValue(nRuneEssenceTrial_Event,nRuneEssenceTrial_Type)
			local nSecs = tRuneEssenceTrial_Status[nIndex]["Secs"]
			local nTimes = tRuneEssenceTrial_Status[nIndex]["Times"]
			local nRemainTime = tRuneEssenceTrial_Status[nIndex]["RemainTime"]
			local nEndTime = tRuneEssenceTrial_Status[nIndex]["EndTime"]
			if nPower ~= 0 then
				User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,0,0,0,nRuneEssenceTrial_UserId)
			end
			if tRuneEssenceTrial_Status[nIndex]["AddLife"] ~= nil then
				-- 获取玩家最大血量
				local nUserLife = Get_UserMaxLife()
				User_AddLife(nUserLife)
			end
			local nRuneEssenceTrial_Pro = Get_NewUserProfession()
			-- 判断是否为武僧
			if nRuneEssenceTrial_Pro >= 6000 and nRuneEssenceTrial_Pro <= 6099 then
				local nProStatus = tRuneEssenceTrial_ProStatus[1]["Status"]
				local nProPower = tRuneEssenceTrial_ProStatus[1]["Power"]
				local nProSecs = tRuneEssenceTrial_ProStatus[1]["Secs"]
				local nProTimes = tRuneEssenceTrial_ProStatus[1]["Times"]
				local nProRemainTime = tRuneEssenceTrial_ProStatus[1]["RemainTime"]
				local nProEndTime = tRuneEssenceTrial_ProStatus[1]["EndTime"]
				--清楚buff
				if User_ChkRoleStatus(nProStatus,nRuneEssenceTrial_UserId) then
					User_DelRoleStatus(nProStatus,nRuneEssenceTrial_UserId)
				end
				
				User_AddRoleStatus(nProStatus,nProPower,nProSecs,nProTimes,nProRemainTime,nProEndTime,0,0,0,nRuneEssenceTrial_UserId)
			end
			
			
			--记录玩家当前buff
			
			-- Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, nPower, 1)
			-- Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
			
		end
	end
end
--BUFF 数值刷新
function RuneEssenceTrial_RushStatusNum(nRuneEssenceTrial_NowUserId)
	local nRuneEssenceTrial_UserId = nRuneEssenceTrial_NowUserId or Get_UserId()
	for nIndex = 1,#tRuneEssenceTrial_Status do
		local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][nIndex+1]
		local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][nIndex+1]
		local nPower =  tRuneEssenceTrial_Status[nIndex]["Power"]
		local nPowerMin = tRuneEssenceTrial_Status[nIndex]["Power"][1] --随机最小值
		local nPowerMax = tRuneEssenceTrial_Status[nIndex]["Power"][2] --随机最大值
		local nRuneEssenceTrial_Pro = Get_NewUserProfession()
		-- 判断是否为水道
		if (nRuneEssenceTrial_Pro >= 13002 and nRuneEssenceTrial_Pro <= 13099) or (nRuneEssenceTrial_Pro >= 14002 and nRuneEssenceTrial_Pro <= 14099) then
			nPowerMin = tRuneEssenceTrial_Status[nIndex]["WaterPower"][1]
			nPowerMax = tRuneEssenceTrial_Status[nIndex]["WaterPower"][2]
		end
		local nPower =  math.random(nPowerMin,nPowerMax)
		Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, nPower, 1)
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
	end
end

--buff免费刷新
function RuneEssenceTrial_RushStatus(nRuneEssenceTrial_NpcId)
	local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][1]
	local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][1]
	local nRuneEssenceTrial_UserId =  Get_UserId()
	local nUserMapId = Get_UserMapId(nRuneEssenceTrial_UserId)
	local nUserMapDoc = Get_MapDoc(nUserMapId)
	
	if nUserMapDoc ~= 10428 then
		return
	end
	
	-- 掩码隔天清零
	if Task_StcInterval(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 4) then
		Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0, 1)
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
	end
	
	-- 已使用晚免费次数
	if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 3) then
		return
	end
	
	if Task_AddStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 1) then
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
		RuneEssenceTrial_RushStatusNum(nRuneEssenceTrial_UserId)
		LinkNpcGossipFunc_New(nRuneEssenceTrial_NpcId,"1-1")
	end
	
end

-- --buff花费刷新
function RuneEssenceTrial_CostRushStatus(nRuneEssenceTrial_NpcId)
	local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][1]
	local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][1]
	local nRuneEssenceTrial_UserId =  Get_UserId()
	-- 掩码隔天清零
	if Task_StcInterval(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 4) then
		Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0, 1)
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
	end
	
	-- 已使用晚免费次数
	if not Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 3) then
		return
	end
	
	local nRuneEssenceTrial_Cost = tRuneEssenceTrial_Cont["CostCultivation"]
	local nRuneEssenceTrial_UserCul = Get_UserCultivation()
	-- 修行值不足
	if nRuneEssenceTrial_Cost > nRuneEssenceTrial_UserCul then
		Sys_MsgBox(tRuneEssenceTrial_Text["MsgBox"]["TranNoCul"])
		return
	end
	local nUserMapId = Get_UserMapId(nRuneEssenceTrial_UserId)
	local nUserMapDoc = Get_MapDoc(nUserMapId)
	
	if nUserMapDoc ~= 10428 then
		return
	end
	
	--刷新buff
	if User_AddCultivation((-1) * nRuneEssenceTrial_Cost) then
		
		RuneEssenceTrial_RushStatusNum(nRuneEssenceTrial_UserId)
		LinkNpcGossipFunc_New(nRuneEssenceTrial_NpcId,"1-1")
	end
	
end

--传送回双龙城
function RuneEssenceTrial_ChgBossMap(nClrStatus)
	local nRuneEssenceTrial_UserId = Get_UserId()
	--是否删除buff
	if nClrStatus == 1 then
		for i = 1,#tRuneEssenceTrial_ClrStatus["Status"] do
			local nStatus = tRuneEssenceTrial_ClrStatus["Status"][i]
			if User_ChkRoleStatus(nStatus,nRuneEssenceTrial_UserId) then
				User_DelRoleStatus(nStatus,nRuneEssenceTrial_UserId)
			end
		end
	end

	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nMapId = tRuneEssenceTrial_Cont["Map"][nIndex]["MapId"]
	local nPoX = tRuneEssenceTrial_Cont["Map"][nIndex]["PosX"] 
	local nPoY = tRuneEssenceTrial_Cont["Map"][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
end
------------------------------怪物逻辑---------------------------------------------
--怪物掉落
function RuneEssenceTrial_KillMonsterDrop(nMonsterId)
	local nRuneEssenceTrial_UserId = Get_UserId()
	for i = 1,#tRuneEssenceTrial_ClrStatus["Status"] do
		local nStatus = tRuneEssenceTrial_ClrStatus["Status"][i]
		if User_ChkRoleStatus(nStatus,nRuneEssenceTrial_UserId) then
			User_DelRoleStatus(nStatus,nRuneEssenceTrial_UserId)
		end
	end
	
	local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][8]
	local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][8]
	
	if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 2) then
		return
	end
	
	if Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 2, 1) then
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
		BattlePassTaskTest_CompleteInstance(32,nUserId)
	end
	
	
	local nTaskId = tRuneEssenceTrial_Cont["TaskId"]
	
	if Task_ChkTaskDetail(nTaskId) and  Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then	
		return 
	end
	
	if Task_SetTaskDetailData6(nTaskId,1) then
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
	end
	
	
	
	-- local tRuneEssenceTrial_Reward = CommonFunc_Copy(tRuneEssenceTrial_RandomReward["MonsterDropReward"]) 
	
	-- local nRuneEssenceTrial_ItemNum1 = math.random(20,40)
	-- local nRuneEssenceTrial_ItemNum2 = 100 - nRuneEssenceTrial_ItemNum1

	-- tRuneEssenceTrial_Reward["RewardItem"][1]["Attr"] = string.format(tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][1]["Attr"],nRuneEssenceTrial_ItemNum1)
	-- tRuneEssenceTrial_Reward["RewardItem"][2]["Attr"] = string.format(tRuneEssenceTrial_RandomReward["MonsterDropReward"]["RewardItem"][2]["Attr"],nRuneEssenceTrial_ItemNum2)
	
	-- local nRuneEssenceTrial_UserSpace = RewardTemplate_GetRewardSpace(tRuneEssenceTrial_Reward)
	-- if not User_CheckLeftSpace(nRuneEssenceTrial_UserSpace) then
		-- User_TalkChannel2005(tRuneEssenceTrial_Text["TalkChannel"]["NoSpace"])
		-- return
	-- end
	-- --获得奖励
	-- RewardTemplate_UseItem(tRuneEssenceTrial_Reward)
	
end

--屏蔽二次确认
function RuneEssenceTrial_ShieldSecondConfirm()
	local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][7]
	local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][7]
	
	-- 判断隔天
	if Task_StcInterval(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 4) then
		Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0, 1)
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
	end
	
	if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 1) then
		return
	end
	
	if Task_AddStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 1) then
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
	end
	
end


--创建任务
function RuneEssenceTrial_AddTaskDetail()
	local nTaskId = tRuneEssenceTrial_Cont["TaskId"]
	
	if Task_ChkTaskDetail(nTaskId) then	
		return true
	end
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		return true
	else
		return false
	end
end

function RuneEssenceTrial_EnterInstance(nRuneEssenceTrial_Instancetype, nRuneEssenceTrial_MapId, nRuneEssenceTrial_UserId)

	if tRuneEssenceTrial_InstanceNpc[nRuneEssenceTrial_Instancetype] == nil then
		return
	end
	
	for nIndex = 1,#tRuneEssenceTrial_Status do
		local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][nIndex+1]
		local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][nIndex+1]

		Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0, 1,nRuneEssenceTrial_UserId)
		Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0,nRuneEssenceTrial_UserId)
	end
	
	local nRuneEssenceTrial_EventInt = tRuneEssenceTrial_Cont["Stc"]["Event"][8]
	local nRuneEssenceTrial_TypeInt = tRuneEssenceTrial_Cont["Stc"]["Type"][8]
	
	Task_SetStatistic(nRuneEssenceTrial_EventInt, nRuneEssenceTrial_TypeInt, 0, 1,nRuneEssenceTrial_UserId)
	Task_SetStcTimestamp(nRuneEssenceTrial_EventInt, nRuneEssenceTrial_TypeInt, 0,nRuneEssenceTrial_UserId)
	
	RuneEssenceTrial_CreateInstanceNpc(nRuneEssenceTrial_Instancetype,nRuneEssenceTrial_MapId,nRuneEssenceTrial_UserId)
end

--创建副本npc
function RuneEssenceTrial_CreateInstanceNpc(nTypeNpc,nRuneEssenceTrial_MapId,nRuneEssenceTrial_UserId)
	
	local nMapId = nRuneEssenceTrial_MapId or Get_UserMapId(nRuneEssenceTrial_UserId)
	local nPosX = tRuneEssenceTrial_InstanceNpc[nTypeNpc][1]
	local nPosY = tRuneEssenceTrial_InstanceNpc[nTypeNpc][2]
	local sName = tRuneEssenceTrial_Text["NpcName"][720]
	local nTask0 = tRuneEssenceTrial_InstanceNpc[nTypeNpc][3]
	local nLookface = tRuneEssenceTrial_Cont["Lookface"]
	Npc_DelDynaNpc(nMapId, "name" , sName)
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)

end


function RuneEssenceTrial_NpcMain(nRuneEssenceTrial_NpcId)
	LinkNpcGossipFunc_New(nRuneEssenceTrial_NpcId,"1-1")
end
---------------------------------npc模板-----------------------------------------
tNpcFace[2484] = 52
tNpcFace[2485] = 1

for nNpcId =26525 , 26542 do
	tNpcGossip[nNpcId] = tNpcGossip[nNpcId] or DefaultNpc:new{}
	tNpcGossip[nNpcId]["OptionHidden"] = 1
	tNpcGossip[nNpcId]["DialogueText"] = tRuneEssenceTrial_Text[26525]
	
	tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
	tNpcGossip[nNpcId]["tOption1-1"] = {111,112,114,113,115}
	tNpcGossip[nNpcId]["OptionFunc111"] = "RuneEssenceTrial_RefalshBoss</N>" .. nNpcId
	tNpcGossip[nNpcId]["OptionPoint112"] = "2-1"
	-- tNpcGossip[nNpcId]["OptionFunc113"] = "RuneEssenceTrial_ChgBossMap</N>1"
	tNpcGossip[nNpcId]["OptionPoint113"] = "2-2"
	tNpcGossip[nNpcId]["OptionFunc114"] = "RuneEssenceTrial_RushStatus</N>" .. nNpcId
	tNpcGossip[nNpcId]["OptionFunc115"] = "RuneEssenceTrial_AddRushStatus</N>" .. nNpcId
	tNpcGossip[nNpcId]["ChkFunc1-1"] = function ()
		local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][1]
		local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][1]
		
		local nRuneEssenceTrial_EventInt = tRuneEssenceTrial_Cont["Stc"]["Event"][8]
		local nRuneEssenceTrial_TypeInt = tRuneEssenceTrial_Cont["Stc"]["Type"][8]
		
		-- 掩码隔天清零
		if Task_StcInterval(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 4) then
			Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0, 1)
			Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
		end
		
		
		if Task_ChkStcValue(nRuneEssenceTrial_EventInt, nRuneEssenceTrial_TypeInt, ">=", 1) then
			
			if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 3) then
				tNpcGossip[nNpcId]["tOption1-1"] = {115,112,113}
			else
				local nStcDate = Get_UserStatisticValue(nRuneEssenceTrial_Event,nRuneEssenceTrial_Type)
				tNpcGossip[nNpcId]["Option114"] = string.format(tRuneEssenceTrial_Text[26525]["Option114"],(3-nStcDate))
				tNpcGossip[nNpcId]["tOption1-1"] = {115,114,113}
			end
		else
			-- 已使用晚免费次数
			if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 3) then
				tNpcGossip[nNpcId]["tOption1-1"] = {111,112,113}
			else
				local nStcDate = Get_UserStatisticValue(nRuneEssenceTrial_Event,nRuneEssenceTrial_Type)
				tNpcGossip[nNpcId]["Option114"] = string.format(tRuneEssenceTrial_Text[26525]["Option114"],(3-nStcDate))
				tNpcGossip[nNpcId]["tOption1-1"] = {111,114,113}
			end
		
		end
		
		
		
		tNpcGossip[nNpcId]["Text111"] = string.format(tRuneEssenceTrial_Text[26525]["Text111"],tRuneEssenceTrial_Cont["FloorNum"][nNpcId])
		tNpcGossip[nNpcId]["Text113"] = string.format(tRuneEssenceTrial_Text[26525]["Text113"],tRuneEssenceTrial_Cont["Battle"][nNpcId])
		local tRuneEssenceTrial_StcDate = {}
		for i = 2 , 6 do
			local nRuneEssenceTrial_Event1 = tRuneEssenceTrial_Cont["Stc"]["Event"][i]
			local nRuneEssenceTrial_Type1 = tRuneEssenceTrial_Cont["Stc"]["Type"][i]
			tRuneEssenceTrial_StcDate[i] = Get_UserStatisticValue(nRuneEssenceTrial_Event1,nRuneEssenceTrial_Type1)
			tNpcGossip[nNpcId]["Text11" .. i+2] = string.format(tRuneEssenceTrial_Text[26525]["Text11" .. i+2],tRuneEssenceTrial_StcDate[i])
		end
		

		
		if RuneEssenceTrial_AddTaskDetail() then
		end
		
		return true
	end
	
	tNpcGossip[nNpcId]["Text2-1"] = {211}
	tNpcGossip[nNpcId]["tOption2-1"] = {211,212,213,214}
	tNpcGossip[nNpcId]["OptionPoint211"] = "3-1"
	tNpcGossip[nNpcId]["OptionFunc212"] = "RuneEssenceTrial_ShieldSecondConfirm"
	tNpcGossip[nNpcId]["OptionFunc213"] = "RuneEssenceTrial_CostRushStatus</N>" .. nNpcId
	tNpcGossip[nNpcId]["ChkFunc2-1"] = function ()
		local nRuneEssenceTrial_Event = tRuneEssenceTrial_Cont["Stc"]["Event"][7]
		local nRuneEssenceTrial_Type = tRuneEssenceTrial_Cont["Stc"]["Type"][7]
		
		-- 掩码隔天清零
		if Task_StcInterval(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 1, 4) then
			Task_SetStatistic(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0, 1)
			Task_SetStcTimestamp(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, 0)
		end
		
		-- 屏蔽二次确认
		if Task_ChkStcValue(nRuneEssenceTrial_Event, nRuneEssenceTrial_Type, ">=", 1) then
			tNpcGossip[nNpcId]["tOption2-1"] = {213,214}
		else
			tNpcGossip[nNpcId]["tOption2-1"] = {211,212,214}
		end
		
		return true
	end
	
	tNpcGossip[nNpcId]["Text2-2"] = {221}
	tNpcGossip[nNpcId]["tOption2-2"] = {221,222}
	tNpcGossip[nNpcId]["OptionFunc221"] = "RuneEssenceTrial_ChgBossMap</N>1"
	
	tNpcGossip[nNpcId]["Text3-1"] = {311}
	tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	tNpcGossip[nNpcId]["OptionFunc311"] = "RuneEssenceTrial_CostRushStatus</N>" .. nNpcId
end

tNpcGossip[26543] = tNpcGossip[26543] or DefaultNpc:new{}
tNpcGossip[26543]["OptionHidden"] = 1
tNpcGossip[26543]["DialogueText"] = tRuneEssenceTrial_Text[26543]

tNpcGossip[26543]["Text1-1"] = {111,112,113,114}
tNpcGossip[26543]["tOption1-1"] = {111}
tNpcGossip[26543]["OptionFunc111"] = "User_OpenExchangeShop</N>26543"
tNpcGossip[26543]["ChkFunc1-1"] = function()
	local nTaskId = tRuneEssenceTrial_Cont["TaskId"]
	--检测任务是否存在
	if Task_ChkTaskDetail(nTaskId) and (not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1)) then	
		return false
	end
	return true
end

tNpcGossip[26543]["Text1-2"] = {121,122,123}
tNpcGossip[26543]["tOption1-2"] = {121}
tNpcGossip[26543]["OptionPoint121"] ="2-1"
tNpcGossip[26543]["ChkFunc1-2"] = function()
	local nTaskId = tRuneEssenceTrial_Cont["TaskId"]
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	return true
end
---------------------------------物品部分---------------------------------------------
tItem[3330766] = tItem[3330766] or {}
tItem[3330766]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(26543)
end
tItem[3330770] = tItem[3330766] or {}


tItem[3330767] = tItem[3330767] or {}
tItem[3330767]["Function"] = function(nItemId,sItemName)
	User_OpenDialog(2200)
end

tItem[3330768] = tItem[3330768] or {}
tItem[3330768]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tRuneEssenceTrial_RandomReward[3330768])
end

tItem[3330769] = tItem[3330769] or {}
tItem[3330769]["Function"] = function(nItemId,sItemName)
	local tRuneEssenceTrial_Reward = CommonFunc_Copy(tRuneEssenceTrial_RandomReward[3330769]) 
	
	local nRuneEssenceTrial_ItemNum1 = math.random(20,40)
	local nRuneEssenceTrial_ItemNum2 = 100 - nRuneEssenceTrial_ItemNum1

	tRuneEssenceTrial_Reward["RewardItem"][1]["Attr"] = string.format(tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][1]["Attr"],nRuneEssenceTrial_ItemNum1)
	tRuneEssenceTrial_Reward["RewardItem"][2]["Attr"] = string.format(tRuneEssenceTrial_RandomReward[3330769]["RewardItem"][2]["Attr"],nRuneEssenceTrial_ItemNum2)
	
	local nRuneEssenceTrial_UserSpace = RewardTemplate_GetRewardSpace(tRuneEssenceTrial_Reward)
	if not User_CheckLeftSpace(nRuneEssenceTrial_UserSpace) then
		User_TalkChannel2005(tRuneEssenceTrial_Text["TalkChannel"]["NoSpace"])
		return
	end
	--获得奖励
	RewardTemplate_UseItem(tRuneEssenceTrial_Reward)
end
---------------------------------怪物部分---------------------------------------------
-- 副本怪物掉落
local tRuneEssenceTrial_NewMonsterDrop = {}
tRuneEssenceTrial_NewMonsterDrop["Function"] = RuneEssenceTrial_KillMonsterDrop
tRuneEssenceTrial_NewMonsterDrop["MonsterId"] = {6456,6457,6458,6459,6460,6461,6462,6463,6464,6465,6466,6467,6468,6469,6470,6471,6472,6473}
table.insert(tMonsterDrop_AreaLoad,tRuneEssenceTrial_NewMonsterDrop)

-- 进入副本npc
table.insert(tProcessAfterCreateInstance["tFunction"], RuneEssenceTrial_EnterInstance)

