------------------------------------------------------------------------------------
--Name：         190416[简体征服][任务脚本]勇士百兵谱支线任务
--Creator:      耿力兀
--Created:     2019-04-16
------------------------------------------------------------------------------------
--任务需求：
--前缀：DragonToothDagger_
------------------------------------------------------------------------------------
--stc:  197 42

----------------------------------表配置部分--------------------------------------------
local tDragonToothDagger_TaskData = {}
	tDragonToothDagger_TaskData["TaskNPC"] = 23965
	tDragonToothDagger_TaskData["MonsterId"] = 1047
	tDragonToothDagger_TaskData["GeneratorId"] = 27077
	tDragonToothDagger_TaskData["Effect"] = "accession"
	tDragonToothDagger_TaskData["KillBossEffect"] = "fire1"
	tDragonToothDagger_TaskData["Lookface"] = 17150
	tDragonToothDagger_TaskData["WeaponId"] = 490
	tDragonToothDagger_TaskData["TaskId"] = 793
	tDragonToothDagger_TaskData["FrontTask"] = {}
	tDragonToothDagger_TaskData["FrontTask"][1] = 1089
	tDragonToothDagger_TaskData["FrontTask"][2] = 1097
	tDragonToothDagger_TaskData["Instance"] = 282
local tDragonToothDagger_Stc = {}	
	tDragonToothDagger_Stc["Event"] = 197
	tDragonToothDagger_Stc["Data"] = 20
	tDragonToothDagger_Stc["Task"] = {}
	tDragonToothDagger_Stc["Task"]["Event"] = 197
	tDragonToothDagger_Stc["Task"]["Data"] = 42
	
local tDragonToothDagger_MapData = {}
	--祭坛范围
	tDragonToothDagger_MapData["MapId"]=10364
	tDragonToothDagger_MapData["PosX1"]=485
	tDragonToothDagger_MapData["PosX2"]=545
	tDragonToothDagger_MapData["PosY1"]=723
	tDragonToothDagger_MapData["PosY2"]=778
	--普通服祭坛
	tDragonToothDagger_MapData["PTMapId"]=1002
	tDragonToothDagger_MapData["PTPosX1"]=416
	tDragonToothDagger_MapData["PTPosX2"]=470
	tDragonToothDagger_MapData["PTPosY1"]=640
	tDragonToothDagger_MapData["PTPosY2"]=690
	--boss位置
	tDragonToothDagger_MapData["BossPosX"]=111
	tDragonToothDagger_MapData["BossPosY"]=129
	--觉醒NPC位置
	tDragonToothDagger_MapData["NPCPosX"]=110
	tDragonToothDagger_MapData["NPCPosY"]=113
	--传送位置
	tDragonToothDagger_MapData["CHPosX"]=515
	tDragonToothDagger_MapData["CHPosY"]=746
	tDragonToothDagger_MapData["PTCHPosX"]=439
	tDragonToothDagger_MapData["PTCHPosY"]=664
	tDragonToothDagger_MapData["Range"]=3
	
local tDragonToothDagger_Reward = {}
	tDragonToothDagger_Reward[3312277] = {}
	tDragonToothDagger_Reward[3312277]["NeedSpace"] = 1
	tDragonToothDagger_Reward[3312277]["RewardItem"] = {}
	tDragonToothDagger_Reward[3312277]["RewardItem"][1] = {}
	tDragonToothDagger_Reward[3312277]["RewardItem"][1]["Id"] = 3312277
	tDragonToothDagger_Reward[3312277]["RewardItem"][1]["Attr"] = "0 1"

----------------------------------逻辑部分---------------------------------------------
--完成前置任务
function DragonToothDagger_FrontTask(nNpcId)
	local nIndex = 1
	local nUserId = Get_UserId()
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	local nFrontTaskId = tDragonToothDagger_TaskData["FrontTask"][nIndex]
	if Task_ChkTaskDetail(nFrontTaskId,nUserId) and Task_ChkTaskDetailValue(nFrontTaskId,"CompleteFlag","==",0,nUserId) then
		Task_SetTaskDetailCompleteFlag(nFrontTaskId,1)
	end 
	--接任务对白
	LinkNpcGossipFunc_New(nNpcId,"1-3") 
end 

--领取召龙令
function DragonToothDagger_RewardItem(nItemId,nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	Task_AddTaskDetail(nTaskId,0,nUserId)
	local nSpace = tDragonToothDagger_Reward[nItemId]["NeedSpace"]
	--判断背包空间
	if not User_CheckLeftSpace(nSpace)then 
		LinkNpcGossipFunc_New(nNpcId,"1-5") 
		return 
	end 
	
	--有任务且未完成时给物品出寻路
	if Task_ChkTaskDetail(nTaskId,nUserId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0,nUserId) then
		RewardTemplate_UseItemAndMsg(tDragonToothDagger_Reward[nItemId])
		--弹出提示寻路
		Sys_MsgBox(tDragonToothDagger_Text["GotoMap"],"DragonToothDagger_BackCaty")
	end 
end 

--补领召龙令
function DragonToothDagger_ReissueItem(nTaskId,nItemId)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	--有任务且未完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0,nUserId) then
		local nSpace = tDragonToothDagger_Reward[nItemId]["NeedSpace"]
		--判断背包空间
		if not User_CheckLeftSpace(nSpace)then 
			LinkNpcGossipFunc_New(nNpcId,"1-5") 
			return 
		end 
		RewardTemplate_UseItemAndMsg(tDragonToothDagger_Reward[nItemId])
		--补领成功
		LinkNpcGossipFunc_New(nNpcId,"1-6") 
	end 
end 

--使用召龙令
function DragonToothDagger_UseItem(nItemId)
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	--判断是否在指定区域
	if not DragonToothDagger_ChkMap() then 
		DragonToothDagger_BackCaty()
	else 
		--删除物品进入副本
		if  Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			DragonToothDagger_Changemap(nTaskId)
		end 
	end 
end 

--进入副本
function DragonToothDagger_Changemap(nTaskId)
	local nUserId = Get_UserId()
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0,nUserId) then
		local nInstanceType = tDragonToothDagger_TaskData["Instance"]
		User_EnterInstance(nInstanceType)
		--召唤怪物
		local nMonsterId = tDragonToothDagger_TaskData["MonsterId"]
		local nGeneratorId = tDragonToothDagger_TaskData["GeneratorId"]
		local nMapId = Get_UserMapId()
		local nCellx = tDragonToothDagger_MapData["BossPosX"]
		local nCelly = tDragonToothDagger_MapData["BossPosY"]
		Monster_AddMonster(nMapId,nCellx,nCelly,nGeneratorId,nMonsterId)
		--弹出提示寻路
		Sys_MsgBox(tDragonToothDagger_Text["Boss"],"Sys_GotoSomeWhere</N>"..nCellx.."</N>"..nCelly.."</N>"..nMapId)
	end
end


--判断是否在指定区域
function DragonToothDagger_ChkMap()
	local nUserMapId = Get_UserMapId()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()	
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		if nUserMapId == tDragonToothDagger_MapData["MapId"] then
			if nUserPosX >= tDragonToothDagger_MapData["PosX1"] and nUserPosX <= tDragonToothDagger_MapData["PosX2"] then
				if nUserPosY >= tDragonToothDagger_MapData["PosY1"] and nUserPosY <= tDragonToothDagger_MapData["PosY2"] then
					return true
				end
			end
		end
	return false
	end
	
	if nUserMapId == tDragonToothDagger_MapData["PTMapId"] then
		if nUserPosX >= tDragonToothDagger_MapData["PTPosX1"] and nUserPosX <= tDragonToothDagger_MapData["PTPosX2"] then
			if nUserPosY >= tDragonToothDagger_MapData["PTPosY1"] and nUserPosY <= tDragonToothDagger_MapData["PTPosY2"] then
				return true
			end
		end
	end
	return false
end

--邪龙死亡
function DragonToothDagger_KillBoss(nMonsterId)
	local nUserId = Get_UserId()
	User_Screffect(1,nUserId)
	--播光效
	User_EffectAdd("self", tDragonToothDagger_TaskData["KillBossEffect"],nUserId)
	local nMapId = Get_UserMapId()
	local nCellx = tDragonToothDagger_MapData["NPCPosX"]
	local nCelly = tDragonToothDagger_MapData["NPCPosY"]
	local nLookface = tDragonToothDagger_TaskData["Lookface"]
	Npc_CreateDynaNpc("NPC",2,0,nLookface,0,0,nMapId,nCellx,nCelly,0,0,0,97306781)
	Map_Effect(nMapId,nCellx,nCelly,"zf2-e280_1")
	Sys_MsgBox(tDragonToothDagger_Text["KillBoss"],"Sys_GotoSomeWhere</N>"..nCellx.."</N>"..nCelly.."</N>"..nMapId)
end 

--透明NPC
function DragonToothDagger_Finish()
	local nUserId = Get_UserId()
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0,nUserId) then
		--读条
		local sContent = tDragonToothDagger_Text["WaitTime"] 
		local sfunc = "DragonToothDagger_FinishTask</N>"..nUserId
		User_SetExplore(3,sContent,220,sfunc,nil,nUserId)
	end
end 

function DragonToothDagger_FinishTask(nUserId)
	local nUserId =nUserId or Get_UserId()
	--播光效
	User_EffectAdd("self", tDragonToothDagger_TaskData["Effect"],nUserId)
	--完成任务
	Task_SetTaskDetailData1(tDragonToothDagger_TaskData["TaskId"],1,nUserId)
	Task_SetTaskDetailCompleteFlag(tDragonToothDagger_TaskData["TaskId"],1, nUserId)
	User_EffectAdd('self', 'accession', nUserId)
	-- 打掩码
	local nEventType = tDragonToothDagger_Stc["Event"]
	local nDataType = tDragonToothDagger_Stc["Data"] 
	local nTaskEventType = tDragonToothDagger_Stc["Task"]["Event"]
	local nTaskDataType = tDragonToothDagger_Stc["Task"]["Data"] 
	Task_AddStatistic(nEventType,nDataType,1,1,nUserId)
	Task_AddStatistic(nTaskEventType,nTaskDataType,1,1,nUserId)
	User_AwardHundredWeapon(tDragonToothDagger_TaskData["WeaponId"],nUserId)
	--提示传送
	Sys_MsgBox(tDragonToothDagger_Text["Finish"],"HundredsOfSoldiersSword_BoundTrans","HundredsOfSoldiersSword_BoundTrans",nUserId)
end 

--传送回祭坛
function DragonToothDagger_BackCaty(nUserId)
	local nMapId = tDragonToothDagger_MapData["PTMapId"]
	local nCellx = tDragonToothDagger_MapData["PTCHPosX"]
	local nCelly = tDragonToothDagger_MapData["PTCHPosY"]
	local nRange = tDragonToothDagger_MapData["Range"]
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tDragonToothDagger_MapData["MapId"]
		nCellx = tDragonToothDagger_MapData["CHPosX"]
		nCelly = tDragonToothDagger_MapData["CHPosY"]
	end 
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1,nUserId)
end 


--触发陷阱
function DragonToothDagger_Leave()
	local nUserId =Get_UserId()
	Sys_MsgBox(tDragonToothDagger_Text["Back"],"DragonToothDagger_BackCaty</N>"..nUserId)
end 
----------------------------------NPC部分---------------------------------------------
--圣兽祖龙
tNpcFace[1703] = 18
tNpcGossip[23965] = tNpcGossip[23965] or DefaultNpc:new{}
tNpcGossip[23965]["OptionHidden"] = 1
tNpcGossip[23965]["DialogueText"] = tDragonToothDagger_Text[23965]
 -- 闲聊对白(793)
tNpcGossip[23965]["Text1-1"] = {111,112}
tNpcGossip[23965]["tOption1-1"] = {111}
tNpcGossip[23965]["ChkFunc1-1"]= function()
	local nUserId = Get_UserId()
	local nIndex = 1
	if SpecialServer_ChkNoGiftServer() then		
		nIndex = 2
	end
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	local nFrontTask = tDragonToothDagger_TaskData["FrontTask"][nIndex]
	
	--玩家有前置任务
	if Task_ChkTaskDetail(nFrontTask, nUserId)then
		--有觉醒任务
		if Task_ChkTaskDetail(nTaskId, nUserId)then
			if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1,nUserId)then
				return true
			end
			return false
		end
		return false
	end 	
	return true
end

--交前置任务同时接任务
tNpcGossip[23965]["Text1-2"] = {111,121,122,123,124,125}
tNpcGossip[23965]["tOption1-2"] = {121}
tNpcGossip[23965]["OptionFunc121"] = "DragonToothDagger_FrontTask</N>23965"
tNpcGossip[23965]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()
	local nIndex = 1
	if SpecialServer_ChkNoGiftServer() then		
		nIndex = 2
	end
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	local nFrontTask = tDragonToothDagger_TaskData["FrontTask"][nIndex]
	--前置任务未完成
	if Task_ChkTaskDetailValue(nFrontTask,"CompleteFlag","==",0,nUserId)then
		return true 
	end 
	return false
end 

tNpcGossip[23965]["Text1-3"] = {111,131,132}
tNpcGossip[23965]["tOption1-3"] = {131}
tNpcGossip[23965]["OptionFunc131"] = "DragonToothDagger_RewardItem</N>3312277</N>23965"
tNpcGossip[23965]["ChkFunc1-3"] = function ()
	--已接任务
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	if Task_ChkTaskDetail(nTaskId, nUserId)then
		return false
	end 
	return true
end
 --已接任务对白(793)
tNpcGossip[23965]["Text1-4"] = {111,141}
tNpcGossip[23965]["tOption1-4"] = {141,142}
tNpcGossip[23965]["OptionFunc141"] = "DragonToothDagger_BackCaty"
tNpcGossip[23965]["OptionFunc142"] = "DragonToothDagger_ReissueItem</N>793</N>3312277"
tNpcGossip[23965]["OptionChkFunc142"] = function ()
	local nTaskId = tDragonToothDagger_TaskData["TaskId"]
	if  Task_ChkTaskDetail(nTaskId, nUserId) and Item_ChkItem(3312277) then
		return false
	else 
		return true
	end 
end

 -- 接任务背包不足(793)
tNpcGossip[23965]["Text1-5"] = {151}
tNpcGossip[23965]["tOption1-5"] = {151}

 -- 补领成功对白(793)
tNpcGossip[23965]["Text1-6"] = {161}
tNpcGossip[23965]["tOption1-6"] = {161}
tNpcGossip[23965]["OptionFunc161"] = "DragonToothDagger_BackCaty"

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312277] = tItem[3312277] or {}
tItem[3312277]["Function"] = function(nItemId)
	DragonToothDagger_UseItem(nItemId)
end
---------------------------------陷阱部分---------------------------------------------
tTrap[161] = tTrap[161] or {}
tTrap[161]["Function"] = function(nTrapId,nTrapType)
	DragonToothDagger_Leave()
end
---------------------------------怪物部分---------------------------------------------
local tDragonToothDagger_KillBoss = {}
tDragonToothDagger_KillBoss["Function"]= DragonToothDagger_KillBoss
tDragonToothDagger_KillBoss["MonsterId"] = {1047}
table.insert(tMonsterDrop_AreaLoad,tDragonToothDagger_KillBoss)

