------------------------------------------------------------------------------------
--Name：        190322[简体征服][活动脚本]灵兽道具掉落修改
--Creator:     傅伟龙
--Created:     2019-03-22
------------------------------------------------------------------------------------
--SpiritAnimalInstancet

--logId:10002449



-----------------------------------数据部分配置--------------------------------------
--临时表
local tSpiritAnimalInstancet_TempTable = {}

local tSpiritAnimalInstancet_Cont = {}
	
	tSpiritAnimalInstancet_Cont["Metempsychosis"] = 2		--转世需求
	tSpiritAnimalInstancet_Cont["Level"] = 0		--等级需求
	
	--副本id
	tSpiritAnimalInstancet_Cont["InstanceId"] = 253
	-- 怪物id
	tSpiritAnimalInstancet_Cont["MonsterId"] = 4988
	
	tSpiritAnimalInstancet_Cont["Map"] = {}
	tSpiritAnimalInstancet_Cont["Map"][1] = {}
	tSpiritAnimalInstancet_Cont["Map"][1]["MapId"] = 1002
	tSpiritAnimalInstancet_Cont["Map"][1]["PosX"] = 410 
	tSpiritAnimalInstancet_Cont["Map"][1]["PosY"] = 354
	
	tSpiritAnimalInstancet_Cont["Map"][2] = {}
	tSpiritAnimalInstancet_Cont["Map"][2]["MapId"] = 10364
	tSpiritAnimalInstancet_Cont["Map"][2]["PosX"] = 313
	tSpiritAnimalInstancet_Cont["Map"][2]["PosY"] = 340

--掩码
local tSpiritAnimalInstancet_Stc = {}
	tSpiritAnimalInstancet_Stc[1] = {}
	tSpiritAnimalInstancet_Stc[1]["EventType"] = 191 
	tSpiritAnimalInstancet_Stc[1]["DataType"] = 22
	tSpiritAnimalInstancet_Stc[1]["RewardData"] = 100
	tSpiritAnimalInstancet_Stc[1]["OutData"] = 101
	
local tSpiritAnimalInstancet_RewardItem = {}
	tSpiritAnimalInstancet_RewardItem[4988] = {}
	tSpiritAnimalInstancet_RewardItem[4988]["RewardItem"] = {}
	tSpiritAnimalInstancet_RewardItem[4988]["RewardItem"][1] = {}
	tSpiritAnimalInstancet_RewardItem[4988]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tSpiritAnimalInstancet_RewardItem[4988]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	
--怪物掉落log
local tSpiritAnimalInstancet_log = {}
	tSpiritAnimalInstancet_log["MonsterLog"] = "0,0,0,0,12001315,2,3009100,%d"

---------------------------------------------物品逻辑---------------------------------------

--传送回双龙城
function SpiritAnimalInstancet_ChgCentralPlain()
	local nUserId = Get_UserId()
	
	local nIndex = 1
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nMapId = tSpiritAnimalInstancet_Cont["Map"][nIndex]["MapId"]
	local nPoX = tSpiritAnimalInstancet_Cont["Map"][nIndex]["PosX"] 
	local nPoY = tSpiritAnimalInstancet_Cont["Map"][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
	
end

--进入副本
function SpiritAnimalInstancet_EnterInstance(nItemId)
	
	--等级要求
	if not User_JudgeLevelAndMetempsychosis(tSpiritAnimalInstancet_Cont["Level"],tSpiritAnimalInstancet_Cont["Metempsychosis"]) then
		Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["NoLevel"])
		return
	end
	
	if Item_ChkItem(nItemId) then
		local nUserId = Get_UserId()
		if Get_UserTeamNumbers(nUserId) >= 2 then
			Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["MsgTeam"])
			return
		end
		
		local nUserMapId = Get_UserMapId()
		
		if nUserMapId ~= 1002 and nUserMapId ~= 10364 and nUserMapId ~= 1036 then
			Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["MapLimite"])
			User_TalkChannel2005(tSpiritAnimalInstancet_Text["MsgBox"]["MapLimite"])
			return
		end
		
		local nEvent = tSpiritAnimalInstancet_Stc[1]["EventType"]
		local nType = tSpiritAnimalInstancet_Stc[1]["DataType"]
		local nData = tSpiritAnimalInstancet_Stc[1]["RewardData"]
		
		-- 判断人参果掉落是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			tSpiritAnimalInstancet_TempTable = {}
		end
		--掉落上限不进副本
		if Task_ChkStcValue(nEvent,nType,">=",nData) then
			Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["InstancetLimite"])
			User_TalkChannel2005(tSpiritAnimalInstancet_Text["MsgBox"]["InstancetLimite"])
			return
		end
		
		-- SpiritAnimalInstancet_ChgCentralPlain()
		
		if Item_DelItem(nItemId) then
			local nInstanceId = tSpiritAnimalInstancet_Cont["InstanceId"]
			
			if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
				local nMapId =Get_UserMapId()
				local nMonsterId = tSpiritAnimalInstancet_Cont["MonsterId"]
				--刷怪
				Map_CreateDynaGenerator(nMapId,25,25,50,50,7,0,51,nMonsterId,0,0,nUserId)
				
			end
			
		end
	end
end
-------------------------------------------怪物逻辑------------------------------------
--怪物掉落
function SpiritAnimalInstancet_KillMonster(nMonsterId)
	--等级要求
	if not User_JudgeLevelAndMetempsychosis(tSpiritAnimalInstancet_Cont["Level"],tSpiritAnimalInstancet_Cont["Metempsychosis"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	
	local nEvent = tSpiritAnimalInstancet_Stc[1]["EventType"]
	local nType = tSpiritAnimalInstancet_Stc[1]["DataType"]
	local nData = tSpiritAnimalInstancet_Stc[1]["RewardData"]
	
	-- 判断是否隔天，隔天重置掩码和临时表
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		tSpiritAnimalInstancet_TempTable = {}
		
	end
	
	--掉落上限
	if Task_ChkStcValue(nEvent,nType,">",nData) then
		return
	elseif Task_ChkStcValue(nEvent,nType,">=",nData) then
		Task_SetStatistic(nEvent,nType,tSpiritAnimalInstancet_Stc[1]["OutData"],1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["RewardLimite"],"SpiritAnimalInstancet_ChgCentralPlain","NULL",nUserId)
		User_TalkChannel2005(tSpiritAnimalInstancet_Text["MsgBox"]["RewardLimite"])
		return
	end
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tSpiritAnimalInstancet_RewardItem[nMonsterId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["MsgNoSpace"])
		User_TalkChannel2005(tSpiritAnimalInstancet_Text["MsgBox"]["MsgNoSpace"])
		return
	end
	--
	local nStcData =  Get_UserStatisticValue(nEvent,nType)
	if nStcData == nil then
		nStcData = 0
	end
	
	--临时表操作
	if tSpiritAnimalInstancet_TempTable[nUserId] == nil then
		tSpiritAnimalInstancet_TempTable[nUserId] = {}
		tSpiritAnimalInstancet_TempTable[nUserId][1] = nUserId
		tSpiritAnimalInstancet_TempTable[nUserId][2] = nStcData
	end
	--掉落数量
	tSpiritAnimalInstancet_TempTable[nUserId][2] = tSpiritAnimalInstancet_TempTable[nUserId][2] + 1
	
	
	
	--每获得10个打一次掩码
	if tSpiritAnimalInstancet_TempTable[nUserId][2] %10 == 0 then
		Task_SetStatistic(nEvent,nType,tSpiritAnimalInstancet_TempTable[nUserId][2],1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	RewardTemplate_Reward(tSpiritAnimalInstancet_RewardItem[nMonsterId])
	
	--在获得50个和100个是打log
	if tSpiritAnimalInstancet_TempTable[nUserId][2] == 50 or tSpiritAnimalInstancet_TempTable[nUserId][2] == 100 then
		local sLog = string.format(tSpiritAnimalInstancet_log["MonsterLog"],tSpiritAnimalInstancet_TempTable[nUserId][2])
		Sys_SaveActionFestivalLog(sLog)
	end
	
end

-------------------------------------------物品模板------------------------------------
tItemFace[3320781] = 2156

tItem[3320781] = tItem[3320781] or {}
tItem[3320781]["DialogueText"] =tSpiritAnimalInstancet_Text[3320781]
tItem[3320781]["Text1-1"] = {111,112,113,114}
tItem[3320781]["tOption1-1"] = {111,112}
tItem[3320781]["OptionFunc111"]="SpiritAnimalInstancet_EnterInstance</N>3320781"

--------------------------------------------陷阱模板----------------------------------
tTrap[2305]= tTrap[2305] or {}
tTrap[2305]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tSpiritAnimalInstancet_Text["MsgBox"]["FromMap"],"SpiritAnimalInstancet_ChgCentralPlain","NULL",nUserId)
end

--------------------------------------------怪物模板----------------------------------
local tSpiritAnimalInstancet_Monst ={}

	tSpiritAnimalInstancet_Monst[1] = {}
	tSpiritAnimalInstancet_Monst[1]["Function"] = SpiritAnimalInstancet_KillMonster
	tSpiritAnimalInstancet_Monst[1]["MonsterId"] = {4988}
	table.insert(tMonsterDrop_AreaLoad,tSpiritAnimalInstancet_Monst[1])
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tSpiritAnimalInstancet_Monst[1])
	