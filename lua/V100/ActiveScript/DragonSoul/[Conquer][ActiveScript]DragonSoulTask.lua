------------------------------------------------------------------------------------
--Name:		190131[简体征服][活动脚本]灵珠玩法-副本任务部分
--Purpose:	灵珠玩法-副本任务部分
--Creator: 	洪聪敏
--Created:	2019/02/15
------------------------------------------------------------------------------------
--前缀:DragonSoulTask_
--logid:12001297
--luaini:41144

--Stc:(190,18) 记录玩家挑战副本次数
--Stc:(190,21) 记录玩家出首次对白
--Stc:(190,33) 记录玩家是否三个月未登陆

--动态表：
--53246：data0：记录全服灵珠掉落 灵珠产出8000次之后，不再产出灵珠，只给非灵珠

------------------------------------------------------------------------------------
--常量
--新服战斗力区间
local tDragonSoulTask_NewLevel = {}
	tDragonSoulTask_NewLevel[1] = {0,220}    --0~219
	tDragonSoulTask_NewLevel[2] = {221,270}  --221~270
	tDragonSoulTask_NewLevel[3] = {271,320}  --271~320
	tDragonSoulTask_NewLevel[4] = {321,9999} --321以上
--老服战斗力区间
local tDragonSoulTask_OldLevel = {}
	tDragonSoulTask_OldLevel[1] = {0,250}    --0~249
	tDragonSoulTask_OldLevel[2] = {251,300}  --250~300
	tDragonSoulTask_OldLevel[3] = {301,350}  --301~350
	tDragonSoulTask_OldLevel[4] = {351,9999} --351以上
	
	--等级区间
local tDragonSoulTask_Level = {}
	tDragonSoulTask_Level[1] = {0,125}
	tDragonSoulTask_Level[2] = {125,129}
	tDragonSoulTask_Level[3] = {130,134}
	tDragonSoulTask_Level[4] = {135,139}
	tDragonSoulTask_Level[5] = {140,140}
	
	local tDragonSoulTask_Cont = {}
	tDragonSoulTask_Cont["Level"] = 0
	tDragonSoulTask_Cont["Metempsychosis"] = 2
	tDragonSoulTask_Cont["NoGifMetempsychosis"] = 1
	tDragonSoulTask_Cont["Space"] = 1 
	tDragonSoulTask_Cont["TaskId"] = 6946 
	tDragonSoulTask_Cont["LastDay"] = 90 
	tDragonSoulTask_Cont["Limit"] = 8000 
	tDragonSoulTask_Cont["LevelMin"] = 80
	
	tDragonSoulTask_Cont["ChgMap"] = {}
	--普通服
	tDragonSoulTask_Cont["ChgMap"]["MapId"] = 1002 
	tDragonSoulTask_Cont["ChgMap"]["nPosX"] = 347 
	tDragonSoulTask_Cont["ChgMap"]["nPosY"] = 404 
	
	tDragonSoulTask_Cont["NoGifChgMap"] = {}
	--激情服
	tDragonSoulTask_Cont["NoGifChgMap"]["MapId"] = 1036 
	tDragonSoulTask_Cont["NoGifChgMap"]["nPosX"] = 305
	tDragonSoulTask_Cont["NoGifChgMap"]["nPosY"] = 266 	
	
	tDragonSoulTask_Cont["AddMonster"] = {}
	tDragonSoulTask_Cont["AddMonster"]["nPosX"] = 50 
	tDragonSoulTask_Cont["AddMonster"]["nPosY"] = 53 
	
	
	--副本ID
	tDragonSoulTask_Cont["InstanceId"] = 230
	--怪物ID
	tDragonSoulTask_Cont["MonsterId"] = {}
	tDragonSoulTask_Cont["MonsterId"][1] = {3532,26789}
	tDragonSoulTask_Cont["MonsterId"][2] = {3533,26790}
	tDragonSoulTask_Cont["MonsterId"][3] = {3534,26791}
	tDragonSoulTask_Cont["MonsterId"][4] = {3535,26792}
	
	
	local tDragonSoulTask_Global = {}
	--新服动态表
	tDragonSoulTask_Global["NewServer"] = 51131
	--限量动态表
	tDragonSoulTask_Global["Limit"] = 53246
	
local tDragonSoulTask_Stc = {}
	--记录玩家挑战副本次数
	tDragonSoulTask_Stc[1] = {}
	tDragonSoulTask_Stc[1]["EventType"] = 190
	tDragonSoulTask_Stc[1]["DataType"] = 18
	
	--记录玩家出首次对白
	tDragonSoulTask_Stc[2] = {}
	tDragonSoulTask_Stc[2]["EventType"] = 190
	tDragonSoulTask_Stc[2]["DataType"] = 21

	--记录玩家是否三个月未登陆
	tDragonSoulTask_Stc[3] = {}
	tDragonSoulTask_Stc[3]["EventType"] = 190
	tDragonSoulTask_Stc[3]["DataType"] = 33
	
--奖励部分
--灵珠奖励
local tDragonSoulTask_RewardItem = {}
	tDragonSoulTask_RewardItem[1] = {}
	tDragonSoulTask_RewardItem[1]["ItemChanceSum"] = 10000
	tDragonSoulTask_RewardItem[1]["LogId"] = 12001297
	-- 2阶灵珠 - 70%
	tDragonSoulTask_RewardItem[1][1] = {}
	tDragonSoulTask_RewardItem[1][1]["RandomItemChanceType"] = 2
	tDragonSoulTask_RewardItem[1][1]["ItemChance"] = 7000
	tDragonSoulTask_RewardItem[1][1]["RewardItem"] = {}
	tDragonSoulTask_RewardItem[1][1]["RewardItem"][1] = {}
	tDragonSoulTask_RewardItem[1][1]["RewardItem"][1]["Id"] = 4200002 
	tDragonSoulTask_RewardItem[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulTask_RewardItem[1][1]["RewardItem"][1]["PreciousType"] = 307
	tDragonSoulTask_RewardItem[1][1]["RewardEffect"] = {}
	tDragonSoulTask_RewardItem[1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3阶灵珠 - 27%
	tDragonSoulTask_RewardItem[1][2] = {}
	tDragonSoulTask_RewardItem[1][2]["RandomItemChanceType"] = 2
	tDragonSoulTask_RewardItem[1][2]["ItemChance"] = 2700
	tDragonSoulTask_RewardItem[1][2]["RewardItem"] = {}
	tDragonSoulTask_RewardItem[1][2]["RewardItem"][1] = {}
	tDragonSoulTask_RewardItem[1][2]["RewardItem"][1]["Id"] = 4200003 
	tDragonSoulTask_RewardItem[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulTask_RewardItem[1][2]["RewardItem"][1]["PreciousType"] = 307
	tDragonSoulTask_RewardItem[1][2]["RewardEffect"] = {}
	tDragonSoulTask_RewardItem[1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 5阶灵珠 - 3%
	tDragonSoulTask_RewardItem[1][3] = {}
	tDragonSoulTask_RewardItem[1][3]["RandomItemChanceType"] = 2
	tDragonSoulTask_RewardItem[1][3]["ItemChance"] = 300
	tDragonSoulTask_RewardItem[1][3]["RewardItem"] = {}
	tDragonSoulTask_RewardItem[1][3]["RewardItem"][1] = {}
	tDragonSoulTask_RewardItem[1][3]["RewardItem"][1]["Id"] = 4200005 
	tDragonSoulTask_RewardItem[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulTask_RewardItem[1][3]["RewardItem"][1]["PreciousType"] = 307
	tDragonSoulTask_RewardItem[1][3]["RewardEffect"] = {}
	tDragonSoulTask_RewardItem[1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	
local tDragonSoulTask_RewardStarStone = {}
	tDragonSoulTask_RewardStarStone[1] = {}
	tDragonSoulTask_RewardStarStone[1]["ItemChanceSum"] = 10000
	tDragonSoulTask_RewardStarStone[1]["LogId"] = 12001297
	-- 明亮星陨石 - 90%
	tDragonSoulTask_RewardStarStone[1][1] = {}
	tDragonSoulTask_RewardStarStone[1][1]["RandomItemChanceType"] = 2
	tDragonSoulTask_RewardStarStone[1][1]["ItemChance"] = 9000
	tDragonSoulTask_RewardStarStone[1][1]["RewardItem"] = {}
	tDragonSoulTask_RewardStarStone[1][1]["RewardItem"][1] = {}
	tDragonSoulTask_RewardStarStone[1][1]["RewardItem"][1]["Id"] = 3009001 
	tDragonSoulTask_RewardStarStone[1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDragonSoulTask_RewardStarStone[1][1]["RewardEffect"] = {}
	tDragonSoulTask_RewardStarStone[1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 晶莹星陨石 - 10%
	tDragonSoulTask_RewardStarStone[1][2] = {}
	tDragonSoulTask_RewardStarStone[1][2]["RandomItemChanceType"] = 2
	tDragonSoulTask_RewardStarStone[1][2]["ItemChance"] = 1000
	tDragonSoulTask_RewardStarStone[1][2]["RewardItem"] = {}
	tDragonSoulTask_RewardStarStone[1][2]["RewardItem"][1] = {}
	tDragonSoulTask_RewardStarStone[1][2]["RewardItem"][1]["Id"] = 3009002 
	tDragonSoulTask_RewardStarStone[1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDragonSoulTask_RewardStarStone[1][2]["RewardEffect"] = {}
	tDragonSoulTask_RewardStarStone[1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
---战斗力掉落灵珠概率
	tDragonSoulTask_BattleDrop = {}
	--251~300
	tDragonSoulTask_BattleDrop[1] ={}
	tDragonSoulTask_BattleDrop[1][1] ={}
	tDragonSoulTask_BattleDrop[1][1]["ItemChanceSum"] = 10000
	tDragonSoulTask_BattleDrop[1][1][1]={}
	tDragonSoulTask_BattleDrop[1][1][1]["RandomItemChanceType"] = 2
	tDragonSoulTask_BattleDrop[1][1][1]["ItemChance"] = 2000
	tDragonSoulTask_BattleDrop[1][1][1]["Item_1"] = "Pearl"
	tDragonSoulTask_BattleDrop[1][1][2]={}
	tDragonSoulTask_BattleDrop[1][1][2]["RandomItemChanceType"] = 2
	tDragonSoulTask_BattleDrop[1][1][2]["ItemChance"] = 8000
	tDragonSoulTask_BattleDrop[1][1][2]["Item_1"] = "Stone"
	
	--301-350
	
	tDragonSoulTask_BattleDrop[1][2] ={}
	tDragonSoulTask_BattleDrop[1][2]["ItemChanceSum"] = 10000
	tDragonSoulTask_BattleDrop[1][2][1]={}
	tDragonSoulTask_BattleDrop[1][2][1]["RandomItemChanceType"] = 2
	tDragonSoulTask_BattleDrop[1][2][1]["ItemChance"] = 4000
	tDragonSoulTask_BattleDrop[1][2][1]["Item_1"] = "Pearl"
	tDragonSoulTask_BattleDrop[1][2][2]={}
	tDragonSoulTask_BattleDrop[1][2][2]["RandomItemChanceType"] = 2
	tDragonSoulTask_BattleDrop[1][2][2]["ItemChance"] = 6000
	tDragonSoulTask_BattleDrop[1][2][2]["Item_1"] = "Stone"
	
	--350以上
	tDragonSoulTask_BattleDrop[1][3] ={}
	tDragonSoulTask_BattleDrop[1][3]["ItemChanceSum"] = 10000
	tDragonSoulTask_BattleDrop[1][3][1]={}
	tDragonSoulTask_BattleDrop[1][3][1]["RandomItemChanceType"] = 2
	tDragonSoulTask_BattleDrop[1][3][1]["ItemChance"] = 8000
	tDragonSoulTask_BattleDrop[1][3][1]["Item_1"] = "Pearl"
	tDragonSoulTask_BattleDrop[1][3][2]={}
	tDragonSoulTask_BattleDrop[1][3][2]["RandomItemChanceType"] = 2
	tDragonSoulTask_BattleDrop[1][3][2]["ItemChance"] = 2000
	tDragonSoulTask_BattleDrop[1][3][2]["Item_1"] = "Stone"
	
	--气力值奖励
	local tDragonSoulTask_RewardStrength = {}
	tDragonSoulTask_RewardStrength[1] = {}
	tDragonSoulTask_RewardStrength[1]["RewardStrengthValue"] = {}
	tDragonSoulTask_RewardStrength[1]["RewardStrengthValue"]["Value"] = 500
	tDragonSoulTask_RewardStrength[1]["LogId"] = 12001297
	
	tDragonSoulTask_RewardStrength[2] = {}
	tDragonSoulTask_RewardStrength[2]["RewardStrengthValue"] = {}
	tDragonSoulTask_RewardStrength[2]["RewardStrengthValue"]["Value"] = 1000
	tDragonSoulTask_RewardStrength[2]["LogId"] = 12001297
	
	tDragonSoulTask_RewardStrength[3] = {}
	tDragonSoulTask_RewardStrength[3]["RewardStrengthValue"] = {}
	tDragonSoulTask_RewardStrength[3]["RewardStrengthValue"]["Value"] = 2000
	tDragonSoulTask_RewardStrength[3]["LogId"] = 12001297
	
	tDragonSoulTask_RewardStrength[4] = {}
	tDragonSoulTask_RewardStrength[4]["RewardStrengthValue"] = {}
	tDragonSoulTask_RewardStrength[4]["RewardStrengthValue"]["Value"] = 3000
	tDragonSoulTask_RewardStrength[4]["LogId"] = 12001297
	
	
--------------------------------逻辑部分--------------------------------------------
	--击杀怪物
function DragonSoulTask_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nEvent = tDragonSoulTask_Stc[1]["EventType"]
	local nType = tDragonSoulTask_Stc[1]["DataType"]
	local nGlobalId = tDragonSoulTask_Global["Limit"]
	local nTimeEvent = tDragonSoulTask_Stc[3]["EventType"]
	local nTimeType = tDragonSoulTask_Stc[3]["DataType"]
	local tReward = {}
	local nLevel = tDragonSoulTask_Cont["Level"]
	local nMete = tDragonSoulTask_Cont["Metempsychosis"]
	--激情服1转
	if SpecialServer_ChkNoGiftServer() then
		nMete = tDragonSoulTask_Cont["NoGifMetempsychosis"]
	end
	
	--获取玩家战斗力
	local nBattleLevel = Get_UserBattleLevel()
	--当前战斗力区间
	local nBattle = DragonSoulTask_JudgeLevel(nBattleLevel)
	--灵珠任务ID
	local nTaskId = tDragonSoulTask_Cont["TaskId"] 
	--限量
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,0)
	local sItemName = ""
	local nMetempsychosis = Get_UserMetempsychosis(nUserId)
	
	--获取玩家挑战次数
	local nUserLevel = Get_UserLevel()
	local nChangeNum = 0
	for i,v in ipairs(tDragonSoulTask_Level) do
		if nUserLevel >= v[1] and nUserLevel <= v[2] then
			nChangeNum = i
		end
	end
	
	--击杀次数判断
	if Task_ChkStcValue(nEvent,nType,">=",nChangeNum,nUserId) then
		return
	end
	--判断转世
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		nBattle = 1
	end
	
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) then 
		--完成任务
		if Task_ChkStcValue(nEvent,nType,"==",1,nUserId) then
			if Task_ChkTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,1)
				Task_SetTaskDetailCompleteFlag(nTaskId,1)
			end
		end
		--必给气力奖励
		RewardTemplate_UseItem(tDragonSoulTask_RewardStrength[nBattle])
		--三个月未登录的玩家\全服限量满\战斗力250以下\二转以下 只能获得星陨石
		if Task_ChkStcValue(nTimeEvent,nTimeType,">=",1,nUserId) or nGlobalData >= tDragonSoulTask_Cont["Limit"] or nBattle == 1 then
			tReward = RewardTemplate_NewRandomNoTip(tDragonSoulTask_RewardStarStone,1,nUserId)
			nRewardId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			sItemName = Get_ItemtypeName(nRewardId)
			if nRewardId ~=nil and nRewardId == 3009002 then
				--出公告
				local sBroadCast = string.format(tDragonSoulTask_Text["BroadCast"],sUserName,sItemName)
				Sys_SystemBroadcast(sBroadCast)
			end
		else
			--其他玩家按战斗力给奖励
			local flat,tAward = Probabil_RandomAward(tDragonSoulTask_BattleDrop[1],nBattle-1)
			local nItemId = tAward[1]["tAward"][1]["Item_1"]
			if tostring(nItemId) == "Pearl" then
				tReward = RewardTemplate_NewRandomNoTip(tDragonSoulTask_RewardItem,1,nUserId)
				--增加动态码
				Sys_SetSynaGlobalData0(nGlobalId,nGlobalData+1)
			else
				tReward = RewardTemplate_NewRandomNoTip(tDragonSoulTask_RewardStarStone,1,nUserId)
			end
			local nRewardId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			sItemName = Get_ItemtypeName(nRewardId)
			if nRewardId ~=nil and nRewardId ~= 4200002 and nRewardId ~= 3009001 then
				--出公告
				local sBroadCast = string.format(tDragonSoulTask_Text["BroadCast"],sUserName,sItemName)
				Sys_SystemBroadcast(sBroadCast)
			end
		end
	end
	--传送回双龙城
	DragonSoulTask_ChgMap()
	Sys_MsgBox(string.format(tDragonSoulTask_Text["Msg105"]["Back"],sItemName))
end
	--进入副本
function DragonSoulTask_IntoInstance(nNpcId)
	local nUserId = Get_UserId()
	local nUserLevel = Get_UserLevel(nUserId)
	local nLevel = tDragonSoulTask_Cont["Level"]
	local nMete = tDragonSoulTask_Cont["Metempsychosis"]
	--获取玩家战斗力
	local nBattleLevel = Get_UserBattleLevel()
	local nEvent = tDragonSoulTask_Stc[1]["EventType"]
	local nType = tDragonSoulTask_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) 
	local nLayer = tDragonSoulTask_Cont["InstanceId"]
	local nBattle  = DragonSoulTask_JudgeLevel(nBattleLevel)
	--激情服1转
	if SpecialServer_ChkNoGiftServer() then
		nMete = tDragonSoulTask_Cont["NoGifMetempsychosis"]
		tNpcGossip[23746]["Text211"] = tDragonSoulTask_Text[23746]["Text212"]
	end
	--获取玩家挑战次数
	local nChangeNum = 0
	for i,v in ipairs(tDragonSoulTask_Level) do
		if nUserLevel >= v[1] and nUserLevel <= v[2] then
			nChangeNum = i
		end
	end
	
	
	--第二次挑战开始需2转
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		--转世等级判断
		if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end
	
	--完成全部挑战
	if Task_ChkStcValue(nEvent,nType,">=",5,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	else
		if Task_ChkStcValue(nEvent,nType,">=",nChangeNum,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end

	
	--判断背包是否有空位
	if not User_CheckLeftSpace(tDragonSoulTask_Cont["Space"]) then
		Sys_MsgBox(tDragonSoulTask_Text["Msg105"]["Space"])
		return
	end
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tDragonSoulTask_Text["Msg105"]["HaveATeam"])
		return false
	end
	
	--进入副本
	if User_EnterInstance(nLayer,0,0,nUserId) then 
		Sys_MsgBox(tDragonSoulTask_Text["Msg105"]["Enter"])
		--刷新怪物
		local nMapId = Get_UserMapId()
		local nPosX = tDragonSoulTask_Cont["AddMonster"]["nPosX"]
		local nPosY = tDragonSoulTask_Cont["AddMonster"]["nPosY"]
		local nMonsterId = tDragonSoulTask_Cont["MonsterId"][nBattle][1]
		local nGenId = tDragonSoulTask_Cont["MonsterId"][nBattle][2]
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
end
	
--根据等级获取玩家挑战层数和可挑战次数
function DragonSoulTask_JudgeLevel(nBattleLevel)
	local nLayer = tDragonSoulTask_Cont["InstanceId"]
	local nMonsterId = 0
	local nGenId = 0
	local nChangeNum = 0
	local nLevel = tDragonSoulTask_Cont["Level"]
	local nMete = tDragonSoulTask_Cont["Metempsychosis"]
	local tDragonSoulTask_BattleLevel = tDragonSoulTask_OldLevel
	-- 判断是否新服
	if Get_SysDynaGlobalData(tDragonSoulTask_Global["NewServer"],0) == 1 then
		tDragonSoulTask_BattleLevel = tDragonSoulTask_NewLevel
	end
	
	for i,v in ipairs(tDragonSoulTask_BattleLevel) do
		if nBattleLevel >= v[1] and nBattleLevel <= v[2] then
			nBattle = i
			return nBattle
		end
	end
end


function DragonSoulTask_ChgMap()
	local nUserId = Get_UserId()
	--传送回双龙城
	local nMapId = 0 
	local nCellx = 0
	local nCelly = 0
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tDragonSoulTask_Cont["NoGifChgMap"]["MapId"]
		nCellx = tDragonSoulTask_Cont["NoGifChgMap"]["nPosX"]
		nCelly = tDragonSoulTask_Cont["NoGifChgMap"]["nPosY"]
	else
		nMapId = tDragonSoulTask_Cont["ChgMap"]["MapId"]
		nCellx = tDragonSoulTask_Cont["ChgMap"]["nPosX"]
		nCelly = tDragonSoulTask_Cont["ChgMap"]["nPosY"]
	end
	User_ChgMap(nMapId,nCellx,nCelly,0,nUserId)
end
--上线触发判断玩家上次登陆时间
function DragonSoulTask_LogIn()
	local nUserId = Get_UserId() 
	local nEvent = tDragonSoulTask_Stc[3]["EventType"]
	local nType = tDragonSoulTask_Stc[3]["DataType"]
	local nLastDay = Get_UserLastLoginTime(nUserId)
	local nTaskId = tDragonSoulTask_Cont["TaskId"]
	--获取玩家等级
	local nLevel = Get_UserLevel(nUserId)
	--上一次登陆是3个月前，掩码置1
	if nLastDay > tDragonSoulTask_Cont["LastDay"] then
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
	end
	
	-- if nLevel >= tDragonSoulTask_Cont["LevelMin"] then
		-- --给任务
		-- if not Task_ChkTaskDetail(nTaskId) then
			-- if not Task_AddTaskDetail(nTaskId) then
				-- return
			-- end
		-- end
		
		-- -- 接到未完成
		-- if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			-- -- 重置
			-- Task_SetTaskDetailData1(nTaskId,0)
			-- Task_SetTaskDetailCompleteFlag(nTaskId,0)
		-- end
	-- end
end
--------------------------------陷阱部分--------------------------------
tTrap[143] = tTrap[143] or {}
tTrap[143]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	Sys_MsgBox(tDragonSoulTask_Text["ChgMap"],"DragonSoulTask_ChgMap",nil,nUserId)
end
--------------------------------NPC部分--------------------------------
tNpcFace[6268] = 86
tNpcGossip[23746]=tNpcGossip[23746]	or	DefaultNpc:new{}
tNpcGossip[23746]["OptionHidden"]=1
tNpcGossip[23746]["DialogueText"]=tDragonSoulTask_Text[23746]
--首次对白--只显示一次
tNpcGossip[23746]["Text1-1"]={111,112,113,114}
tNpcGossip[23746]["tOption1-1"]={111}
tNpcGossip[23746]["ChkFunc1-1"]  = function ()
	local nUserId = Get_UserId()
	local nEvent = tDragonSoulTask_Stc[2]["EventType"]
	local nType = tDragonSoulTask_Stc[2]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		return true
	else
		return false
	end
end
tNpcGossip[23746]["OptionPoint111"] = "1-2"

tNpcGossip[23746]["Text1-2"]={121,122,123,124,125,126,127,128}
tNpcGossip[23746]["tOption1-2"]={121,122}
tNpcGossip[23746]["ChkFunc1-2"]  = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23746]["Text127"] = tDragonSoulTask_Text[23746]["Text129"]
	end
	return true
end
tNpcGossip[23746]["OptionChkFunc121"]  = function ()
	local nUserId = Get_UserId()
	local nEvent = tDragonSoulTask_Stc[1]["EventType"]
	local nType = tDragonSoulTask_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	tNpcGossip[23746]["Option121"] = string.format(tDragonSoulTask_Text[23746]["Option121"],nData)
	return true
end
tNpcGossip[23746]["OptionFunc121"] = "DragonSoulTask_IntoInstance</N>23746"
tNpcGossip[23746]["OptionPoint122"] = "4-1"

--等级不足
tNpcGossip[23746]["Text2-1"]={211}
tNpcGossip[23746]["tOption2-1"]={211}
--完成全部挑战
tNpcGossip[23746]["Text3-1"]={311}
tNpcGossip[23746]["tOption3-1"]={311}
--战斗力详情
tNpcGossip[23746]["Text4-1"]={411,412,413,414,415,416,417,418,419,4110,4111,4112}
tNpcGossip[23746]["tOption4-1"]={411}
--------------------------------怪物部分-----------------------------------------------
local tDragonSoulTask_KillMonster = {}
	tDragonSoulTask_KillMonster["Function"] = DragonSoulTask_KillMonster
	tDragonSoulTask_KillMonster["MonsterId"] = {3532,3533,3534,3535,3536}
table.insert(tMonsterDrop_AreaLoad,tDragonSoulTask_KillMonster)
--------------------------------上线触发-----------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,DragonSoulTask_LogIn)