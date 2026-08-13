------------------------------------------------------------------------------------
--190417[简体征服][任务脚本]百兵谱支线任务格子三
--SQL BY:黄啸
--DATE:2019-04-18
------------------------------------------------------------------------------------
-- 命名前缀
-- OneHundredWeapon_
-- LogId:18000200
---------------------------------------------------------------------------------------



--前往总地图
local tOneHundredWeapon_latticeThree_Map = {}
tOneHundredWeapon_latticeThree_Map["TransportMap"] = 10497
tOneHundredWeapon_latticeThree_Map["TransportPosX"] = 66
tOneHundredWeapon_latticeThree_Map["TransportPosY"] = 65
tOneHundredWeapon_latticeThree_Map["TaskId"] = 794
tOneHundredWeapon_latticeThree_Map["NextTaskId"] = 0

--进入副本地图
local tOneHundredWeapon_Fubeng = {}
tOneHundredWeapon_Fubeng[2331] = {}
tOneHundredWeapon_Fubeng[2331]["instancetype"] = 272
tOneHundredWeapon_Fubeng[2331]["ItemId"] = 3321120
tOneHundredWeapon_Fubeng[2331]["nPosX"] = 53
tOneHundredWeapon_Fubeng[2331]["nPosY"] = 67
tOneHundredWeapon_Fubeng[2331]["nGenId"] = 27078
tOneHundredWeapon_Fubeng[2331]["nMonsterId"] = 3537
tOneHundredWeapon_Fubeng[2332] = {}
tOneHundredWeapon_Fubeng[2332]["instancetype"] = 273
tOneHundredWeapon_Fubeng[2332]["ItemId"] = 3321121
tOneHundredWeapon_Fubeng[2332]["nPosX"] = 35
tOneHundredWeapon_Fubeng[2332]["nPosY"] = 40
tOneHundredWeapon_Fubeng[2332]["nGenId"] = 27079
tOneHundredWeapon_Fubeng[2332]["nMonsterId"] = 3538
tOneHundredWeapon_Fubeng[2333] = {}
tOneHundredWeapon_Fubeng[2333]["instancetype"] = 274
tOneHundredWeapon_Fubeng[2333]["ItemId"] = 3321122
tOneHundredWeapon_Fubeng[2333]["nPosX"] = 140
tOneHundredWeapon_Fubeng[2333]["nPosY"] = 99
tOneHundredWeapon_Fubeng[2333]["nGenId"] = 27080
tOneHundredWeapon_Fubeng[2333]["nMonsterId"] = 3539
tOneHundredWeapon_Fubeng["Back"] = {}
tOneHundredWeapon_Fubeng["Back"]["First"] = {}
tOneHundredWeapon_Fubeng["Back"]["First"]["MapId"] = 10497
tOneHundredWeapon_Fubeng["Back"]["First"]["PosX"] = 66
tOneHundredWeapon_Fubeng["Back"]["First"]["PosY"] = 65
tOneHundredWeapon_Fubeng["Back"]["Original"] = {}
tOneHundredWeapon_Fubeng["Back"]["Original"]["MapId"] = 1002
tOneHundredWeapon_Fubeng["Back"]["Original"]["PosX"] = 347
tOneHundredWeapon_Fubeng["Back"]["Original"]["PosY"] = 467
tOneHundredWeapon_Fubeng["Back"]["Original"]["JMapId"] = 10364
tOneHundredWeapon_Fubeng["Back"]["Original"]["JPosX"] = 298
tOneHundredWeapon_Fubeng["Back"]["Original"]["JPosY"] = 293

--杀怪物掉落相关物品
local tOneHundredWeapon_MonsterDrop = {}
tOneHundredWeapon_MonsterDrop[3537] = {}
tOneHundredWeapon_MonsterDrop[3537]["RewardItem"] = {} 
tOneHundredWeapon_MonsterDrop[3537]["RewardItem"][1] = {} 
tOneHundredWeapon_MonsterDrop[3537]["RewardItem"][1]["Id"] = 3321120
tOneHundredWeapon_MonsterDrop[3537]["RewardItem"][1]["Attr"] = "0 1"
tOneHundredWeapon_MonsterDrop[3537]["LogId"] = 18000200

tOneHundredWeapon_MonsterDrop[3538] = {}
tOneHundredWeapon_MonsterDrop[3538]["RewardItem"] = {} 
tOneHundredWeapon_MonsterDrop[3538]["RewardItem"][1] = {} 
tOneHundredWeapon_MonsterDrop[3538]["RewardItem"][1]["Id"] = 3321121
tOneHundredWeapon_MonsterDrop[3538]["RewardItem"][1]["Attr"] = "0 1"
tOneHundredWeapon_MonsterDrop[3538]["LogId"] = 18000200

tOneHundredWeapon_MonsterDrop[3539] = {}
tOneHundredWeapon_MonsterDrop[3539]["RewardItem"] = {} 
tOneHundredWeapon_MonsterDrop[3539]["RewardItem"][1] = {} 
tOneHundredWeapon_MonsterDrop[3539]["RewardItem"][1]["Id"] = 3321122
tOneHundredWeapon_MonsterDrop[3539]["RewardItem"][1]["Attr"] = "0 1"
tOneHundredWeapon_MonsterDrop[3539]["LogId"] = 18000200

local tOneHundredWeapon_latticeThree_ConnectItem = {}
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"] = {}
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["LogId"] = 18000200
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"] = {}
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][1] = {} 
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][1]["Id"] = 3321120
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][1]["Attr"] = "0 1"
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][2] = {} 
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][2]["Id"] = 3321121
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][2]["Attr"] = "0 1"
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][3] = {} 
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][3]["Id"] = 3321122
tOneHundredWeapon_latticeThree_ConnectItem["ItemId"]["DeleteItem"][3]["Attr"] = "0 1"

--相关掩码记录
local tOneHundredWeapon_Stc = {}
tOneHundredWeapon_Stc["EvenType"] = 193
tOneHundredWeapon_Stc["DataType"] = 60
tOneHundredWeapon_Stc["Effect"] = "accession"
tOneHundredWeapon_Stc["SuccessEffect"] = "accession"
tOneHundredWeapon_Stc["Self"] = "self"



--读条相关数据
local tOneHundredWeapon_Readlong = {}
tOneHundredWeapon_Readlong["ExploreTime"] = 3
tOneHundredWeapon_Readlong["ExploreText"] = tOneHundredWeapon_latticeThree_Text["ExploreText"]
tOneHundredWeapon_Readlong["ExploreActionId"] = 220

--------------------------------------逻辑部分-------------------------------------------
--开启格子4
function OneHundredWeapon_MyBlock(nUserId)

	local nTaskId = tOneHundredWeapon_latticeThree_Map["TaskId"]
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		
		RewardTemplate_UseItemAndMsg(tOneHundredWeapon_latticeThree_ConnectItem["ItemId"],nUserId)
		--完成该活动
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
		--修改掩码
		local nEvent = tOneHundredWeapon_Stc["EvenType"]
		local nData = tOneHundredWeapon_Stc["DataType"]
		Task_AddStatistic(nEvent,nData,1,0,nUserId)
		
		local sSelf = tOneHundredWeapon_Stc["Self"]
		local sEffect = tOneHundredWeapon_Stc["SuccessEffect"]
		-- 播放光效
		User_EffectAdd(sSelf,sEffect,nUserId)
		Sys_MsgBox(tOneHundredWeapon_latticeThree_Text["SuccessBlock"],nil,nil,nUserId)
		
		--全服公告
		local sName = Get_UserName(nUserId)
		local sText = string.format(tOneHundredWeapon_latticeThree_Text["BroadcastAll"],sName)
		Sys_SystemBroadcast(sText)
	end
	
end


--返回总地图
function OneHundredWeapon_ReturnMap(nTrapId,nTrapType)

	local nUserId = Get_UserId()
	local nMapId = tOneHundredWeapon_Fubeng["Back"]["Original"]["MapId"]
	local nBoundX = tOneHundredWeapon_Fubeng["Back"]["Original"]["PosX"]
	local nBoundY = tOneHundredWeapon_Fubeng["Back"]["Original"]["PosY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tOneHundredWeapon_Fubeng["Back"]["Original"]["JMapId"]
		nBoundX = tOneHundredWeapon_Fubeng["Back"]["Original"]["JPosX"]
		nBoundY = tOneHundredWeapon_Fubeng["Back"]["Original"]["JPosY"]
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
	
end

--返回上一层地图
function OneHundredWeapon_LastMap(nTrapId,nTrapType)
	
	--若玩家物品能拿到了，则返回双龙城
	local nItemOne = tOneHundredWeapon_Fubeng[2331]["ItemId"]
	local nItemTwo = tOneHundredWeapon_Fubeng[2332]["ItemId"]
	local nItemThree = tOneHundredWeapon_Fubeng[2333]["ItemId"]
	if Item_ChkMulItem(nItemOne,nItemOne,1) and Item_ChkMulItem(nItemTwo,nItemTwo,1) and Item_ChkMulItem(nItemThree,nItemThree,1) then
		OneHundredWeapon_ReturnMap()
		return
	end
	

	local nUserId = Get_UserId()
	local nMapId = tOneHundredWeapon_Fubeng["Back"]["First"]["MapId"]
	local nBoundX = tOneHundredWeapon_Fubeng["Back"]["First"]["PosX"]
	local nBoundY = tOneHundredWeapon_Fubeng["Back"]["First"]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
	
end

-- 融合物品
function OneHundredWeapon_latticeThree_OpenBag()

	local nUserId = Get_UserId()
	local nTaskId = tOneHundredWeapon_latticeThree_Map["TaskId"]
	if (not Task_ChkTaskDetail(nTaskId,nUserId)) or (Get_TaskDetailCompleteFlag(nTaskId) == 1) then
		User_TalkChannel2005(tOneHundredWeapon_latticeThree_Text["NoUse"])
		return 
	end

	local nTaskId = tOneHundredWeapon_latticeThree_Map["TaskId"]
	local nTaskNextId = tOneHundredWeapon_latticeThree_Map["NextTaskId"]
	local nItemIdOne = tOneHundredWeapon_MonsterDrop[3537]["RewardItem"][1]["Id"]
	local nItemIdTwo = tOneHundredWeapon_MonsterDrop[3538]["RewardItem"][1]["Id"]
	local nItemIdThree = tOneHundredWeapon_MonsterDrop[3539]["RewardItem"][1]["Id"]
	if Item_ChkMulItem(nItemIdOne,nItemIdOne,1) and Item_ChkMulItem(nItemIdTwo,nItemIdTwo,1) and Item_ChkMulItem(nItemIdThree,nItemIdThree,1) then
		
		--读条开启物品
		local nSecs = tOneHundredWeapon_Readlong["ExploreTime"]
		local sContent = tOneHundredWeapon_Readlong["ExploreText"]
		local nActionId = tOneHundredWeapon_Readlong["ExploreActionId"]
		local sFunc = string.format("OneHundredWeapon_MyBlock</N>%d",nUserId)
		User_SetExplore(nSecs,sContent,nActionId,sFunc)
		
		--成功开启第4格御魂空间
	else
		Sys_MsgBox(tOneHundredWeapon_latticeThree_Text["NoItem"])
	end
	
end

--二次确认进入副本
function OneHundredWeapon_EnterTwice(nTrapType)
	local nUserId = Get_UserId()
	local nInstanceType = tOneHundredWeapon_Fubeng[nTrapType]["instancetype"]
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		
		--创建怪
		local nMapId = Get_UserMapId()
		local nPosX = tOneHundredWeapon_Fubeng[nTrapType]["nPosX"]
		local nPosY = tOneHundredWeapon_Fubeng[nTrapType]["nPosY"]
		local nGenId = tOneHundredWeapon_Fubeng[nTrapType]["nGenId"]
		local nMonsterId = tOneHundredWeapon_Fubeng[nTrapType]["nMonsterId"]
		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		
		local sTextEnter = tOneHundredWeapon_latticeThree_Text[nTrapType]["Here"]
		Sys_MsgBox(sTextEnter)
		User_TalkChannel2005(sTextEnter)
	end
end

--进入副本陷阱
function OneHundredWeapon_GoTalk(nTrapId,nTrapType)
	
	local nUserId = Get_UserId()
	local nTaskId = tOneHundredWeapon_latticeThree_Map["TaskId"]
	if (not Task_ChkTaskDetail(nTaskId,nUserId)) or (Get_TaskDetailCompleteFlag(nTaskId) == 1) then
		User_TalkChannel2005(tOneHundredWeapon_latticeThree_Text["Noneed"])
		return 
	end
	
	--判断玩家背包空间中是否有对应物品，有也不用进入副本
	local nItemId = tOneHundredWeapon_Fubeng[nTrapType]["ItemId"]
	if Item_ChkMulItem(nItemId,nItemId,1) then
		local sHaveString = tOneHundredWeapon_latticeThree_Text[nTrapType]["HavedItem"]
		Sys_MsgBox(sHaveString)
		User_TalkChannel2005(sHaveString)
		return
	end
	--新增二次确认添加
	local sTextEnter = tOneHundredWeapon_latticeThree_Text[nTrapType]["SecondSure"]
	Sys_MsgBox(sTextEnter,"OneHundredWeapon_EnterTwice</N>"..nTrapType)
	
end

--进入地图
function OneHundredWeapon_EnterMap(nTrapId,nTrapType)

	local nUserId = nUserId or Get_UserId()
	local nTaskId = tOneHundredWeapon_latticeThree_Map["TaskId"]
	if (not Task_ChkTaskDetail(nTaskId,nUserId)) or (Get_TaskDetailCompleteFlag(nTaskId) == 1) then
		User_TalkChannel2005(tOneHundredWeapon_latticeThree_Text["Noneed"])
		return 
	end
	
	-- 切地图传送
	local nMapId = tOneHundredWeapon_latticeThree_Map["TransportMap"]
	local nPosX = tOneHundredWeapon_latticeThree_Map["TransportPosX"]
	local nPosY = tOneHundredWeapon_latticeThree_Map["TransportPosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId)
	
	local sTextEnter = tOneHundredWeapon_latticeThree_Text["Enter"]
	Sys_MsgBox(sTextEnter)
	User_TalkChannel2005(sTextEnter)
end

--打开背包传送出地图
function OneHundredWeapon_ExitMap()

	User_OpenDialog(153)
	OneHundredWeapon_LastMap()
	
end


--怪物掉落
function OneHundredWeapon_MonsterDrop(nMonsterId)
	local nUserId = Get_UserId()
	local nTaskId = tOneHundredWeapon_latticeThree_Map["TaskId"]
	
	if (not Task_ChkTaskDetail(nTaskId,nUserId)) or (Get_TaskDetailCompleteFlag(nTaskId) == 1) then
		return 
	end
	
	--震屏
	User_Screffect(1,nUserId)
	
	local sSelf = tOneHundredWeapon_Stc["Self"]
	local sEffect = tOneHundredWeapon_Stc["Effect"]
	-- 播放光效
	User_EffectAdd(sSelf,sEffect)
	
	--105提示
	local sTextEnter = tOneHundredWeapon_latticeThree_Text[nMonsterId]["Defeat"]
	
	local nSpace = RewardTemplate_GetRewardSpace(tOneHundredWeapon_MonsterDrop[nMonsterId],nUserId)
	if User_CheckLeftSpace(nSpace,nUserId) then 
		RewardTemplate_UseItemAndMsg(tOneHundredWeapon_MonsterDrop[nMonsterId],nUserId)
	else
		--提示背包空间满
		Sys_MsgBox(tOneHundredWeapon_latticeThree_Text["MaxSpace"],nil,nil,nUserId)
		--满直接强插
		RewardTemplate_Reward(tOneHundredWeapon_MonsterDrop[nMonsterId],nUserId)
		return
	end
	
	local nItemIdOne = tOneHundredWeapon_MonsterDrop[3537]["RewardItem"][1]["Id"]
	local nItemIdTwo = tOneHundredWeapon_MonsterDrop[3538]["RewardItem"][1]["Id"]
	local nItemIdThree = tOneHundredWeapon_MonsterDrop[3539]["RewardItem"][1]["Id"]
	if Item_ChkMulItem(nItemIdOne,nItemIdOne,1) and Item_ChkMulItem(nItemIdTwo,nItemIdTwo,1) and Item_ChkMulItem(nItemIdThree,nItemIdThree,1) then
		sTextEnter = tOneHundredWeapon_latticeThree_Text["HaveAllItem"]
		Sys_MsgBox(sTextEnter,"OneHundredWeapon_ExitMap",nil,nUserId)
		User_TalkChannel2005(sTextEnter)
	else
		Sys_MsgBox(sTextEnter,"OneHundredWeapon_LastMap",nil,nUserId)
	end
	
	--传送回原地图
	--OneHundredWeapon_LastMap()
end


--------------------------------------物品模块-------------------------------------------
--凤血
--海晶
--星芒
tItem[3321120] = tItem[3321120] or {}
tItem[3321120]["Function"] = function(nItemId,sItemName)
	OneHundredWeapon_latticeThree_OpenBag(nItemId)
end
tItem[3321121] = tItem[3321120] or {}
tItem[3321122] = tItem[3321120] or {}

----------------------------------怪物部分----------------------------------
tMonster[3537] = tMonster[3537] or {}
tMonster[3537]["tFunction"] = tMonster[3537]["tFunction"] or {}
table.insert(tMonster[3537]["tFunction"],OneHundredWeapon_MonsterDrop)

tMonster[3538] = tMonster[3537] or {}
tMonster[3539] = tMonster[3537] or {}

---------------------------------------------陷阱模块---------------------------------------------
--进入第一层地图
tTrap[2335] = tTrap[2335] or {}
tTrap[2335]["Function"] = function(nTrapId,nTrapType)
	OneHundredWeapon_EnterMap(nTrapId,nTrapType)
end

--进入副本陷阱
tTrap[2331] = tTrap[2331] or {}
tTrap[2331]["Function"] = function(nTrapId,nTrapType)
	OneHundredWeapon_GoTalk(nTrapId,nTrapType)
end

tTrap[2332] = tTrap[2331] or {}
tTrap[2333] = tTrap[2331] or {}


--离开总地图，要判断是否是激情服
tTrap[2334] = tTrap[2334] or {}
tTrap[2334]["Function"] = function(nTrapId,nTrapType)
	OneHundredWeapon_ReturnMap(nTrapId,nTrapType)
end

--离开副本地图，回到前一个地图
tTrap[2345] = tTrap[2345] or {}
tTrap[2345]["Function"] = function(nTrapId,nTrapType)
	OneHundredWeapon_LastMap(nTrapId,nTrapType)
end

