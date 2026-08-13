------------------------------------------------------------------------------------
--Name:			[简体征服][任务脚本]勇士百兵谱-剑
--Creator:		翁清海
--Created:		2019/04/18
------------------------------------------------------------------------------------

--命名前缀
--HundredsOfSoldiersSword_

--logid:18000201

--------------------------------------------数据部分配置--------------------------------------------
local tHundredsOfSoldiersSword_Cont = {}
	tHundredsOfSoldiersSword_Cont["TaskId"] = {}
	tHundredsOfSoldiersSword_Cont["TaskId"][1] = {}
	--前置任务id
	tHundredsOfSoldiersSword_Cont["TaskId"][1]["Front"] = 1083
	--任务id
	tHundredsOfSoldiersSword_Cont["TaskId"][1]["Now"] = 4099
	tHundredsOfSoldiersSword_Cont["TaskId"][2] = {}
	--前置任务id激情服
	tHundredsOfSoldiersSword_Cont["TaskId"][2]["Front"] = 1091
	--任务id激情服
	tHundredsOfSoldiersSword_Cont["TaskId"][2]["Now"] = 4178
	--副本id
	tHundredsOfSoldiersSword_Cont["Instancetype"] = 275
	--副本MapDoc
	tHundredsOfSoldiersSword_Cont["MapDoc"] = 1205
	--副本时间
	tHundredsOfSoldiersSword_Cont["Time"] = 600
	--Boss死亡光效
	tHundredsOfSoldiersSword_Cont["BossEffect"] = "accession"
	--读条
	tHundredsOfSoldiersSword_Cont["Explore"] = {}
	tHundredsOfSoldiersSword_Cont["Explore"]["Secs"] = 3
	tHundredsOfSoldiersSword_Cont["Explore"]["ActionId"] = 220
	--寻路坐标
	tHundredsOfSoldiersSword_Cont["Goto"] = {}
	tHundredsOfSoldiersSword_Cont["Goto"]["MapId"] = 1011
	tHundredsOfSoldiersSword_Cont["Goto"]["PosX"] = 238
	tHundredsOfSoldiersSword_Cont["Goto"]["PosY"] = 247
	tHundredsOfSoldiersSword_Cont["GotoNoGift"] = {}
	tHundredsOfSoldiersSword_Cont["GotoNoGift"]["MapId"] = 10365
	tHundredsOfSoldiersSword_Cont["GotoNoGift"]["PosX"] = 238
	tHundredsOfSoldiersSword_Cont["GotoNoGift"]["PosY"] = 247
	tHundredsOfSoldiersSword_Cont["GotoAwake"] = {}
	tHundredsOfSoldiersSword_Cont["GotoAwake"]["PosX"] = 115
	tHundredsOfSoldiersSword_Cont["GotoAwake"]["PosY"] = 105
	--传送id
	tHundredsOfSoldiersSword_Cont["BoundTrans"] = {}
	tHundredsOfSoldiersSword_Cont["BoundTrans"][1] = {}
	tHundredsOfSoldiersSword_Cont["BoundTrans"][1]["MapId"] = 10656
	tHundredsOfSoldiersSword_Cont["BoundTrans"][1]["PosX"] = 74
	tHundredsOfSoldiersSword_Cont["BoundTrans"][1]["PosY"] = 74
	tHundredsOfSoldiersSword_Cont["BoundTrans"][2] = {}
	tHundredsOfSoldiersSword_Cont["BoundTrans"][2]["MapId"] = 10656
	tHundredsOfSoldiersSword_Cont["BoundTrans"][2]["PosX"] = 74
	tHundredsOfSoldiersSword_Cont["BoundTrans"][2]["PosY"] = 74
	--动态NPC配置
	tHundredsOfSoldiersSword_Cont["DynNpc"] = {}
	tHundredsOfSoldiersSword_Cont["DynNpc"]["Sort"] = 1
	tHundredsOfSoldiersSword_Cont["DynNpc"]["Type"] = 2
	tHundredsOfSoldiersSword_Cont["DynNpc"]["LookFace"] = 37180
	tHundredsOfSoldiersSword_Cont["DynNpc"]["Action"] = 97306782
	tHundredsOfSoldiersSword_Cont["DynNpc"]["PosX"] = 115
	tHundredsOfSoldiersSword_Cont["DynNpc"]["PosY"] = 105
	
local tHundredsOfSoldiersSword_Stc = {}
	--完成任务总掩码
	tHundredsOfSoldiersSword_Stc[1] = {}
	tHundredsOfSoldiersSword_Stc[1]["EventType"] = 197
	tHundredsOfSoldiersSword_Stc[1]["DataType"] = 20
	--完成任务掩码
	tHundredsOfSoldiersSword_Stc[2] = {}
	tHundredsOfSoldiersSword_Stc[2]["EventType"] = 196
	tHundredsOfSoldiersSword_Stc[2]["DataType"] = 05
	
--怪物信息
local tHundredsOfSoldiersSword_BossInfo = {}
	tHundredsOfSoldiersSword_BossInfo[1] = {}
	tHundredsOfSoldiersSword_BossInfo[1]["PosGenId"] = {}
	tHundredsOfSoldiersSword_BossInfo[1]["PosGenId"][1] = {123,112,27141}
	tHundredsOfSoldiersSword_BossInfo[1]["MonsterId"] = 5361
	tHundredsOfSoldiersSword_BossInfo[2] = {}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"] = {}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][1] = {462,426,27081}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][2] = {409,445,27082}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][3] = {387,391,27132}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][4] = {367,347,27133}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][5] = {331,351,27134}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][6] = {318,298,27135}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][7] = {299,255,27136}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][8] = {258,246,27137}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][9] = {221,249,27138}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][10] = {171,191,27139}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][11] = {170,158,27140}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][12] = {302,362,27143}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][13] = {492,445,27144}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][14] = {426,409,27145}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][15] = {210,190,27146}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][16] = {398,422,27149}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][17] = {300,283,27150}
	tHundredsOfSoldiersSword_BossInfo[2]["PosGenId"][18] = {144,122,27151}
	tHundredsOfSoldiersSword_BossInfo[2]["MonsterId"] = 5360

--------------------------------------------逻辑部分配置--------------------------------------------
--判断是否可以接取任务
function HundredsOfSoldiersSword_ChkTask(nTaskId)
	local nUserId = Get_UserId()
	
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","<=",0,nUserId) then
			return true
		else
			return false
		end
	else
		return false
	end
end

--完成前置任务，接当前任务
function HundredsOfSoldiersSword_Accept()
	local nUserId = Get_UserId()
	
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nFrontTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Front"]
	
	--没有前置任务
	if not Task_ChkTaskDetail(nFrontTaskId,nUserId) then
		return
	end
	
	--任务置完成
	Task_SetTaskDetailCompleteFlag(nFrontTaskId,1,nUserId)
	
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Now"]
	
	--接下一个任务
	Task_AddTaskDetail(nTaskId,nil,nUserId)
	
	local nNpcId = Get_NpcId()
	
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end

--寻路至剑冢
function HundredsOfSoldiersSword_GotoInstance()
	local nUserId = Get_UserId()
	
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Now"]
	
	--没有任务
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	local nMapId = tHundredsOfSoldiersSword_Cont["Goto"]["MapId"]
	local nPosX = tHundredsOfSoldiersSword_Cont["Goto"]["PosX"]
	local nPosY = tHundredsOfSoldiersSword_Cont["Goto"]["PosY"]
	
	--激情服寻路坐标不一样
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tHundredsOfSoldiersSword_Cont["GotoNoGift"]["MapId"]
		nPosX = tHundredsOfSoldiersSword_Cont["GotoNoGift"]["PosX"]
		nPosY = tHundredsOfSoldiersSword_Cont["GotoNoGift"]["PosY"]
	end
	
	--寻路
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0,nUserId)
end

--进入剑冢
function HundredsOfSoldiersSword_IntoInstance(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Now"]
	
	--没有任务的不让进
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	--任务完成的不让进
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">",0,nUserId) then
		Sys_MsgBox(tHundredsOfSoldiersSword_Text["MsgBox"]["HasSword"],nil,nil,nUserId)
		return
	end
	
	local nInstanceType = tHundredsOfSoldiersSword_Cont["Instancetype"]
	
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		--刷新怪物
		HundredsOfSoldiersSword_RefreshMonster(nUserId)
		
		--显示倒计时
		User_SetTimer(tHundredsOfSoldiersSword_Cont["Time"],nil,1,nUserId)
		
		--提示
		Sys_MsgBox(tHundredsOfSoldiersSword_Text["MsgBox"]["Into"],nil,nil,nUserId)
	end
end

--判断当前地图是否存在BOSS
function HundredsOfSoldiersSword_ChkBossExist(nMapId)
	for k,v in pairs(tHundredsOfSoldiersSword_BossInfo) do
		if Get_SysTempData(1,nMapId,v["MonsterId"]) > 0 then
			return true
		end
	end
	
	return false
end

--刷新任务怪
function HundredsOfSoldiersSword_RefreshMonster(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	--判断当前地图是否有BOSS，有就不刷新
	if HundredsOfSoldiersSword_ChkBossExist(nMapId) then
		return
	end
	
	for k,v in pairs(tHundredsOfSoldiersSword_BossInfo) do
		local nMonsterId = v["MonsterId"]
		
		for i,j in pairs(v["PosGenId"]) do
			local nPosX = j[1]
			local nPosY = j[2]
			local nGenId = j[3]
			
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		end
	end
end

--小怪逻辑
function HundredsOfSoldiersSword_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	Monster_Death(nMonsterId,nMapId)
end

--怪物逻辑
function HundredsOfSoldiersSword_KillBoss(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	Monster_Death(nMonsterId,nMapId)
	
	--震屏效果
	User_Screffect(1,nUserId)
	
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()
	local sEffectName = tHundredsOfSoldiersSword_Cont["BossEffect"]
	
	--光效
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	
	--刷新动态NPC
	HundredsOfSoldiersSword_RefresBox(nMapId,nUserId)
	
	Sys_MsgBox(tHundredsOfSoldiersSword_Text["MsgBox"]["KillBoss"],"HundredsOfSoldiersSword_FindNpc",nil,nUserId)
end

--寻路
function HundredsOfSoldiersSword_FindNpc()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	local nPosX = tHundredsOfSoldiersSword_Cont["GotoAwake"]["PosX"]
	local nPosY = tHundredsOfSoldiersSword_Cont["GotoAwake"]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0,nUserId)
end

--判断当前地图是否有NPC
function HundredsOfSoldiersSword_ChkBoxExist(nUserId)
	if Get_NpcCount(nUserId) > 0 then
		return true
	else
		return false
	end
end

--刷新动态NPC
function HundredsOfSoldiersSword_RefresBox(nNowMapId,nUserId)
	--判断当前地图是否有NPC
	if HundredsOfSoldiersSword_ChkBoxExist(nUserId) then
		return
	end
	
	local nMapId = nNowMapId or Get_UserMapId(nUserId)
	local sName = tHundredsOfSoldiersSword_Text["NpcName"]
	local nSort = tHundredsOfSoldiersSword_Cont["DynNpc"]["Sort"]
	local nType = tHundredsOfSoldiersSword_Cont["DynNpc"]["Type"]
	local nLookFace = tHundredsOfSoldiersSword_Cont["DynNpc"]["LookFace"]
	local nAction = tHundredsOfSoldiersSword_Cont["DynNpc"]["Action"]
	local nPosX = tHundredsOfSoldiersSword_Cont["DynNpc"]["PosX"]
	local nPosY = tHundredsOfSoldiersSword_Cont["DynNpc"]["PosY"]
	
	return Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--动态NPC接入
function HundredsOfSoldiersSword_Link()
	local nUserId = Get_UserId()
	
	--读条
	local nSecs = tHundredsOfSoldiersSword_Cont["Explore"]["Secs"]
	local nActionId = tHundredsOfSoldiersSword_Cont["Explore"]["ActionId"]
	local sContent = tHundredsOfSoldiersSword_Text["Explore"]
	local sFunc = "HundredsOfSoldiersSword_ExploreSucc"
	
	User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
end

--读条成功后触发
function HundredsOfSoldiersSword_ExploreSucc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Now"]
	
	--没有任务的返回
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	--任务完成的返回
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">",0,nUserId) then
		return
	end
	
	--任务置完成
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	
	--总掩码+1
	local nEvent = tHundredsOfSoldiersSword_Stc[1]["EventType"]
	local nType = tHundredsOfSoldiersSword_Stc[1]["DataType"]
	
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	
	-- 任务掩码置完成
	nEvent = tHundredsOfSoldiersSword_Stc[2]["EventType"]
	nType = tHundredsOfSoldiersSword_Stc[2]["DataType"]
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	
	--解锁兵魂
	User_AwardHundredWeapon(420, nUserId)
	
	--传送出地图
	HundredsOfSoldiersSword_BoundTrans(nUserId)
	
	--光效
	User_EffectAdd("self","accession",nUserId)
	
	Sys_MsgBox(tHundredsOfSoldiersSword_Text["MsgBox"]["ExploreSucc"],nil,nil,nUserId)
end

--切地图
function HundredsOfSoldiersSword_BoundTrans(nNowUserId)
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	if tHundredsOfSoldiersSword_Cont["BoundTrans"][nIndex] == nil then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tHundredsOfSoldiersSword_Cont["BoundTrans"][nIndex]["MapId"]
	local nBoundX = tHundredsOfSoldiersSword_Cont["BoundTrans"][nIndex]["PosX"]
	local nBoundY = tHundredsOfSoldiersSword_Cont["BoundTrans"][nIndex]["PosY"]
	
	User_SetTimer(1,nil,1,nUserId)
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,0,nUserId)
	
	User_TalkChannel2005(tHundredsOfSoldiersSword_Text["Channel2005"]["GoBack"][nIndex],nUserId)
end

--返回双龙城
function HundredsOfSoldiersSword_GoBack(nTrapId,nTrapType)
	local sText = tHundredsOfSoldiersSword_Text["MsgBox"]["GoBackTwinCity"]
	
	if SpecialServer_ChkNoGiftServer() then
		sText = tHundredsOfSoldiersSword_Text["MsgBox"]["GoBackMarket"]
	end
	
	local nUserId = Get_UserId()
	
	Sys_MsgBox(sText,"HundredsOfSoldiersSword_BoundTrans",nil,nUserId)
end

--陷阱提示
function HundredsOfSoldiersSword_TrapTips(nTrapId,nTrapType)
	local sMsgBox = tHundredsOfSoldiersSword_Text["MsgBox"]["TrapTip"][nTrapType]
	
	Sys_MsgBox(sMsgBox)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--步惊天
tNpcFace[5191] = 31
tNpcGossip[24129]= tNpcGossip[24129] or DefaultNpc:new{}
tNpcGossip[24129]["DialogueText"] = tHundredsOfSoldiersSword_Text[24129]
tNpcGossip[24129]["OptionHidden"] = 1

--闲聊
tNpcGossip[24129]["Text1-1"] = {111,112}
tNpcGossip[24129]["ChkFunc1-1"] = function ()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nFrontTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Front"]
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Now"]
	
	local bFlag = HundredsOfSoldiersSword_ChkTask(nTaskId)
	local bFrontFlag = HundredsOfSoldiersSword_ChkTask(nFrontTaskId)
	
	if bFlag or bFrontFlag then
		return false
	else
		return true
	end
end
tNpcGossip[24129]["tOption1-1"] = {111}

--任务
tNpcGossip[24129]["Text1-2"] = {121,122,123,124}
tNpcGossip[24129]["ChkFunc1-2"] = function ()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Now"]
	
	return HundredsOfSoldiersSword_ChkTask(nTaskId)
end
tNpcGossip[24129]["tOption1-2"] = {121}
tNpcGossip[24129]["OptionFunc121"] = "HundredsOfSoldiersSword_GotoInstance"

--前置任务
tNpcGossip[24129]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[24129]["ChkFunc1-3"] = function ()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nTaskId = tHundredsOfSoldiersSword_Cont["TaskId"][nIndex]["Front"]
	
	return HundredsOfSoldiersSword_ChkTask(nTaskId)
end
tNpcGossip[24129]["tOption1-3"] = {131}
tNpcGossip[24129]["OptionFunc131"] = "HundredsOfSoldiersSword_Accept"
---------------------------------------------物品模块---------------------------------------------

---------------------------------------------怪物模块---------------------------------------------
local tHundredsOfSoldiersSword_KillBoss = {}
	tHundredsOfSoldiersSword_KillBoss["Function"]= HundredsOfSoldiersSword_KillBoss
	tHundredsOfSoldiersSword_KillBoss["MonsterId"] = {5361}
	
	table.insert(tMonsterDrop_AreaLoad,tHundredsOfSoldiersSword_KillBoss)

local tHundredsOfSoldiersSword_KillMonster = {}
	tHundredsOfSoldiersSword_KillMonster["Function"]= HundredsOfSoldiersSword_KillMonster
	tHundredsOfSoldiersSword_KillMonster["MonsterId"] = {5360}
	
	table.insert(tMonsterDrop_AreaLoad,tHundredsOfSoldiersSword_KillMonster)

---------------------------------------------陷阱模块---------------------------------------------
tTrap[2336] = tTrap[2336] or {}
tTrap[2336]["Function"] = function(nTrapId,nTrapType)
	HundredsOfSoldiersSword_IntoInstance(nTrapId,nTrapType)
end

tTrap[2337] = tTrap[2337] or {}
tTrap[2337]["Function"] = function(nTrapId,nTrapType)
	HundredsOfSoldiersSword_GoBack(nTrapId,nTrapType)
end

tTrap[2346] = tTrap[2346] or {}
tTrap[2346]["Function"] = function(nTrapId,nTrapType)
	HundredsOfSoldiersSword_TrapTips(nTrapId,nTrapType)
end
tTrap[2347] = tTrap[2346]
tNpcFace[1597] = 2323

