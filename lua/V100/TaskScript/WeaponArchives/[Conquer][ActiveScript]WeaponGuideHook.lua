------------------------------------------------------------------------------------
--Name：            190417[简体征服][活动脚本]勇士百兵谱支线任务之钩
--Creator:      蔡颖静
--Created:     2019/04/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tWeaponGuideHook_
--lua.ini:41235
----------------------------------表配置部分--------------------------------------------
local tWeaponGuideHook_Data={}

--副本id
tWeaponGuideHook_Data["InstanceId"]=259

--是否已经获得印记 stc(193,57)
tWeaponGuideHook_Data["Stc"]={}
tWeaponGuideHook_Data["Stc"]["GotEvent"]=193
tWeaponGuideHook_Data["Stc"]["GotType"]=57

--是否已经获得道具 stc(193,83)
tWeaponGuideHook_Data["Stc"]["ItemEvent"]=193
tWeaponGuideHook_Data["Stc"]["ItemType"]=83

--玩家杀怪数掩码 stc(194,21)
tWeaponGuideHook_Data["Stc"]["KillEvent"]=194
tWeaponGuideHook_Data["Stc"]["KillType"]=21

--任务首对白
tWeaponGuideHook_Data["Stc"]["FirstDiaEvent"]=197
tWeaponGuideHook_Data["Stc"]["FirstDiaKillType"]=28

--主npc任务掩码
tWeaponGuideHook_Data["Stc"]["NPCEvent"]=197
tWeaponGuideHook_Data["Stc"]["NPCType"]=20

tWeaponGuideHook_Data["Stc"]["Monster"]={}
tWeaponGuideHook_Data["Stc"]["Monster"][4989]={}
tWeaponGuideHook_Data["Stc"]["Monster"][4989]["Event"]=194
tWeaponGuideHook_Data["Stc"]["Monster"][4989]["Type"]=41

tWeaponGuideHook_Data["Stc"]["Monster"][4992]={}
tWeaponGuideHook_Data["Stc"]["Monster"][4992]["Event"]=194
tWeaponGuideHook_Data["Stc"]["Monster"][4992]["Type"]=42

tWeaponGuideHook_Data["Stc"]["Monster"][4993]={}
tWeaponGuideHook_Data["Stc"]["Monster"][4993]["Event"]=194
tWeaponGuideHook_Data["Stc"]["Monster"][4993]["Type"]=43

tWeaponGuideHook_Data["Stc"]["Monster"][4994]={}
tWeaponGuideHook_Data["Stc"]["Monster"][4994]["Event"]=194
tWeaponGuideHook_Data["Stc"]["Monster"][4994]["Type"]=44

-- 读条
tWeaponGuideHook_Data["Loading"]={}
tWeaponGuideHook_Data["Loading"]["Secs"] = 1
tWeaponGuideHook_Data["Loading"]["ActionId"] = 220

--传送回双龙城坐标
tWeaponGuideHook_Data["TransPos"]={}

--普通服
tWeaponGuideHook_Data["TransPos"][1020]={}
tWeaponGuideHook_Data["TransPos"][1020]["PosX"]=548
tWeaponGuideHook_Data["TransPos"][1020]["PosY"]=486
tWeaponGuideHook_Data["TransPos"][1020]["Range"]=3

--激情服
tWeaponGuideHook_Data["TransPos"][10366]={}
tWeaponGuideHook_Data["TransPos"][10366]["PosX"]=548
tWeaponGuideHook_Data["TransPos"][10366]["PosY"]=486
tWeaponGuideHook_Data["TransPos"][10366]["Range"]=3


--副口入口
tWeaponGuideHook_Data["TransPos"][10484]={}
tWeaponGuideHook_Data["TransPos"][10484]["PosX"]=326
tWeaponGuideHook_Data["TransPos"][10484]["PosY"]=324
tWeaponGuideHook_Data["TransPos"][10484]["Range"]=3

tWeaponGuideHook_Data["MapId"]={}
tWeaponGuideHook_Data["MapId"]["Normal"]=1020
tWeaponGuideHook_Data["MapId"]["Special"]=10366

--任务面板掩码
tWeaponGuideHook_Data["TaskId"]={}
tWeaponGuideHook_Data["TaskId"][1]=4125
tWeaponGuideHook_Data["TaskId"][2]=4100

--获得光效
tWeaponGuideHook_Data["Effect"]={}
tWeaponGuideHook_Data["Effect"]["Obj"] = "self"
tWeaponGuideHook_Data["Effect"]["EffectName"] = "accession"

--进入副本获得道具
tWeaponGuideHook_Data["Enter"]={}
tWeaponGuideHook_Data["Enter"]["RewardItem"] = {}
tWeaponGuideHook_Data["Enter"]["RewardItem"][1] = {}
tWeaponGuideHook_Data["Enter"]["RewardItem"][1]["Id"] = 3321148
tWeaponGuideHook_Data["Enter"]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
tWeaponGuideHook_Data["Enter"]["RewardEffect"] = {}
tWeaponGuideHook_Data["Enter"]["RewardEffect"]["Effect"] = "zf2-e285"
tWeaponGuideHook_Data["Enter"]["LogId"] = 12001379

--任务道具
tWeaponGuideHook_Data["TaksItem"]=3321148


--怪物id，genid
tWeaponGuideHook_Data["Monster"]={}
tWeaponGuideHook_Data["Monster"]["MonsterId"]=4989
tWeaponGuideHook_Data["Monster"]["GenId"]=27112
--刷怪坐标
tWeaponGuideHook_Data["Monster"]["RefreshPos"]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][1]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][1]["PosX"]=537
tWeaponGuideHook_Data["Monster"]["RefreshPos"][1]["PosY"]=500

tWeaponGuideHook_Data["Monster"]["RefreshPos"][2]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][2]["PosX"]=551
tWeaponGuideHook_Data["Monster"]["RefreshPos"][2]["PosY"]=457

tWeaponGuideHook_Data["Monster"]["RefreshPos"][3]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][3]["PosX"]=549
tWeaponGuideHook_Data["Monster"]["RefreshPos"][3]["PosY"]=385

tWeaponGuideHook_Data["Monster"]["RefreshPos"][4]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][4]["PosX"]=518
tWeaponGuideHook_Data["Monster"]["RefreshPos"][4]["PosY"]=305

tWeaponGuideHook_Data["Monster"]["RefreshPos"][5]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][5]["PosX"]=513
tWeaponGuideHook_Data["Monster"]["RefreshPos"][5]["PosY"]=249

tWeaponGuideHook_Data["Monster"]["RefreshPos"][6]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][6]["PosX"]=410
tWeaponGuideHook_Data["Monster"]["RefreshPos"][6]["PosY"]=168

tWeaponGuideHook_Data["Monster"]["RefreshPos"][7]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][7]["PosX"]=454
tWeaponGuideHook_Data["Monster"]["RefreshPos"][7]["PosY"]=229

tWeaponGuideHook_Data["Monster"]["RefreshPos"][8]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][8]["PosX"]=438
tWeaponGuideHook_Data["Monster"]["RefreshPos"][8]["PosY"]=282

tWeaponGuideHook_Data["Monster"]["RefreshPos"][9]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][9]["PosX"]=444
tWeaponGuideHook_Data["Monster"]["RefreshPos"][9]["PosY"]=343

tWeaponGuideHook_Data["Monster"]["RefreshPos"][10]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][10]["PosX"]=431
tWeaponGuideHook_Data["Monster"]["RefreshPos"][10]["PosY"]=421

tWeaponGuideHook_Data["Monster"]["RefreshPos"][11]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][11]["PosX"]=386
tWeaponGuideHook_Data["Monster"]["RefreshPos"][11]["PosY"]=417

tWeaponGuideHook_Data["Monster"]["RefreshPos"][12]={}
tWeaponGuideHook_Data["Monster"]["RefreshPos"][12]["PosX"]=354
tWeaponGuideHook_Data["Monster"]["RefreshPos"][12]["PosY"]=343

tWeaponGuideHook_Data["DynaNpc"]={}
tWeaponGuideHook_Data["DynaNpc"]["Task0"]=94489010
tWeaponGuideHook_Data["DynaNpc"]["Lookface"]=45056
-- tWeaponGuideHook_Data["DynaNpc"]["MapId"]=10484
tWeaponGuideHook_Data["DynaNpc"]["PosX"]=326
tWeaponGuideHook_Data["DynaNpc"]["PosY"]=324

tWeaponGuideHook_Data["MonsterPos"]={}
tWeaponGuideHook_Data["MonsterPos"][4989]={}
tWeaponGuideHook_Data["MonsterPos"][4989]["PosX"]=550
tWeaponGuideHook_Data["MonsterPos"][4989]["PosY"]=511

tWeaponGuideHook_Data["MonsterPos"][4992]={}
tWeaponGuideHook_Data["MonsterPos"][4992]["PosX"]=476
tWeaponGuideHook_Data["MonsterPos"][4992]["PosY"]=197

tWeaponGuideHook_Data["MonsterPos"][4993]={}
tWeaponGuideHook_Data["MonsterPos"][4993]["PosX"]=166
tWeaponGuideHook_Data["MonsterPos"][4993]["PosY"]=147

tWeaponGuideHook_Data["MonsterPos"][4994]={}
tWeaponGuideHook_Data["MonsterPos"][4994]["PosX"]=179
tWeaponGuideHook_Data["MonsterPos"][4994]["PosY"]=459

--断魂位置
tWeaponGuideHook_Data["MonsterPos"][100000]={}
tWeaponGuideHook_Data["MonsterPos"][100000]["PosX"]=324
tWeaponGuideHook_Data["MonsterPos"][100000]["PosY"]=324

--光效陷阱
tWeaponGuideHook_Data["TrapType"]={}
tWeaponGuideHook_Data["TrapType"]["Look"]=2350
tWeaponGuideHook_Data["TrapType"]["Range"]=2
tWeaponGuideHook_Data["TrapType"][4989]=2350
tWeaponGuideHook_Data["TrapType"][4992]=2351
tWeaponGuideHook_Data["TrapType"][4993]=2352
tWeaponGuideHook_Data["TrapType"][4994]=2353


tWeaponGuideHook_Data["MonsterPosId"]={4989,4992,4993,4994}

tWeaponGuideHook_Data["PreTaskId"]={}
tWeaponGuideHook_Data["PreTaskId"]["Normal"]=1086
tWeaponGuideHook_Data["PreTaskId"]["Special"]=1094
----------------------------------逻辑部分---------------------------------------------
--接受任务
function WeaponGuideHook_AcceptTask()
	--前置任务区分激情服
	local nPreTaskId=tWeaponGuideHook_Data["PreTaskId"]["Normal"]
	
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponGuideHook_Data["PreTaskId"]["Special"]
	end 
	
	--完成前置任务
	if Task_ChkTaskDetail(nPreTaskId) then
		Task_SetTaskDetailData6(nPreTaskId,1)
		Task_SetTaskDetailData7(nPreTaskId,os.time())
	
		Task_SetTaskDetailCompleteFlag(nPreTaskId,1)
	end
	
	--接受任务
	local nTaskId=tWeaponGuideHook_Data["TaskId"][1]
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	
	--对白跳转
	LinkNpcGossipFunc_New(24123,"1-2")
end
	

--进入副本
function WeaponGuideHook_EnterInstance()

	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tWeaponGuideHook_Text["SystemTips"]["HaveATeam"])
		return 
	end

	local nTaskId=tWeaponGuideHook_Data["TaskId"][1]
	--接受任务
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	
	
	local nItemEvent=tWeaponGuideHook_Data["Stc"]["ItemEvent"]
	local nItemType=tWeaponGuideHook_Data["Stc"]["ItemType"]
	
	--给任务道具
	if Task_ChkStcValue(nItemEvent,nItemType,"==",0) then
		--加掩码
		Task_AddStatistic(nItemEvent,nItemType,1,1)
		Task_SetStcTimestamp(nItemEvent,nItemType,0)
		
		--获得物品
		RewardTemplate_UseItem(tWeaponGuideHook_Data["Enter"])
		
	end 
	
	local nInstanceId = tWeaponGuideHook_Data["InstanceId"]

	if User_EnterInstance(nInstanceId,0,0,0) then
		--清掩码
		WeaponGuideHook_RefreshMonster()
		local nUserId = Get_UserId()
		-- local sFunc =  "NpcPosition_PathFind</N>24134"
		Sys_MsgBox(tWeaponGuideHook_Text["SystemTips"]["Enterinstance"])
		return
	end
	
end

--领取断魂
function WeaponGuideHook_GetItem()

	local nGotEvent=tWeaponGuideHook_Data["Stc"]["GotEvent"]

	local nGotType=tWeaponGuideHook_Data["Stc"]["GotType"]
	--已获取
	if Task_ChkStcValue(nGotEvent,nGotType,">=",1) then
		return 
	end 
	
	--读条中
	local nUserId = Get_UserId()
	local nSecs = tWeaponGuideHook_Data["Loading"]["Secs"]
	local sContent = tWeaponGuideHook_Text["SystemTips"]["LoadingContent"]
	local nActionId = tWeaponGuideHook_Data["Loading"]["ActionId"]
	local sFunc = "WeaponGuideHook_GetItemLoading</N>"..nUserId
	User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
end 

--领取断魂读条
function WeaponGuideHook_GetItemLoading(nUserId)

	local nGotEvent=tWeaponGuideHook_Data["Stc"]["GotEvent"]
	local nGotType=tWeaponGuideHook_Data["Stc"]["GotType"]
	
	
	local nNPCEvent=tWeaponGuideHook_Data["Stc"]["NPCEvent"]
	local nNPCType=tWeaponGuideHook_Data["Stc"]["NPCType"]
	
	--已获取
	if Task_ChkStcValue(nGotEvent,nGotType,">=",1,nUserId) then
		return 
	end 
	--没有任务
	local nTaskId=tWeaponGuideHook_Data["TaskId"][2]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return 
	end 
	--任务完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">",0,nUserId) then
		return
	end
	--加掩码
	Task_AddStatistic(nGotEvent,nGotType,1,1,nUserId)
	Task_SetStcTimestamp(nGotEvent,nGotType,0,nUserId)
	
	Task_AddStatistic(nNPCEvent,nNPCType,1,1,nUserId)
	Task_SetStcTimestamp(nNPCEvent,nNPCType,0,nUserId)
	
	--完成任务
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_SetTaskDetailData6(nTaskId,1,nUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	end
	--解锁兵魂，后续程序提供接口后增加
	User_AwardHundredWeapon(430, nUserId)

	-- 判断激情服
	local nMapId = tWeaponGuideHook_Data["MapId"]["Normal"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponGuideHook_Data["MapId"]["Special"]
	end
	
	--出提示
	local sFunc =  "User_UserRandBoundTrans</N>10656</N>78</N>64</N>2</N>2" .. nUserId
	Sys_MsgBox(tWeaponGuideHook_Text["SystemTips"]["105Tip"],sFunc,sFunc,nUserId)
	
	--出光效
	User_EffectAdd(tWeaponGuideHook_Data["Effect"]["Obj"],tWeaponGuideHook_Data["Effect"]["EffectName"],nUserId)
	
	--删除任务道具
	if Item_ChkItem(tWeaponGuideHook_Data["TaksItem"],0,0,nUserId) and Item_DelItem(tWeaponGuideHook_Data["TaksItem"],0,0,nUserId) then
		return
	end 
end
	
-- 传送
function WeaponGuideHook_ChgMap(nMapId,nUserId)
	local nCellX = tWeaponGuideHook_Data["TransPos"][nMapId]["PosX"]
	local nCellY = tWeaponGuideHook_Data["TransPos"][nMapId]["PosY"]
	local nRange = tWeaponGuideHook_Data["TransPos"][nMapId]["Range"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,nUserId)
end

--离开迷宫
function WeaponGuideHook_Exit()
	-- 判断激情服
	local nMapId = tWeaponGuideHook_Data["MapId"]["Normal"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponGuideHook_Data["MapId"]["Special"]
	end
	
	local nUserId = Get_UserId()
	WeaponGuideHook_ChgMap(nMapId,nUserId)
	
		--清玩家杀怪掩码
	local nKillEvent=tWeaponGuideHook_Data["Stc"]["KillEvent"]
	local nKillType=tWeaponGuideHook_Data["Stc"]["KillType"]
	
	Task_SetStatistic(nKillEvent,nKillType,0,1)
	Task_SetStcTimestamp(nKillEvent,nKillType,0)
	
	--清道具掩码
	local nItemEvent=tWeaponGuideHook_Data["Stc"]["ItemEvent"]
	local nItemType=tWeaponGuideHook_Data["Stc"]["ItemType"]
	
	Task_SetStatistic(nItemEvent,nItemType,0,1)
	Task_SetStcTimestamp(nItemEvent,nItemType,0)
	
	--删除任务道具
	if Item_ChkItem(tWeaponGuideHook_Data["TaksItem"],0,0,nUserId) and Item_DelItem(tWeaponGuideHook_Data["TaksItem"],0,0,nUserId) then
		return
	end 
end 

--任务道具使用
function WeaponGuideHook_ItemUse(nItemId)
	local nUserId = Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nUserMapdoc =Get_MapDoc(nUserMap)

	if nUserMapdoc~=10484 then
		return 
	end
	
	local nCellX = tWeaponGuideHook_Data["TransPos"][10484]["PosX"]
	local nCellY = tWeaponGuideHook_Data["TransPos"][10484]["PosY"]
	local nRange = tWeaponGuideHook_Data["TransPos"][10484]["Range"]
	User_UserRandBoundTrans(nUserMap,nCellX,nCellY,nRange,nRange,nUserId)
end 

--清玩家杀怪掩码
function WeaponGuideHook_RefreshMonster()
	local nMapId = Get_UserMapId()
	
	--清玩家杀怪掩码
	local nKillEvent=tWeaponGuideHook_Data["Stc"]["KillEvent"]
	local nKillType=tWeaponGuideHook_Data["Stc"]["KillType"]
	
	Task_SetStatistic(nKillEvent,nKillType,0,1)
	Task_SetStcTimestamp(nKillEvent,nKillType,0)
	
	local nLen = #tWeaponGuideHook_Data["MonsterPosId"]
	
	for i=1,nLen do 
		local nMonsterId=tWeaponGuideHook_Data["MonsterPosId"][i]
		local nMonsterEvent=tWeaponGuideHook_Data["Stc"]["Monster"][nMonsterId]["Event"]
		local nMonsterType=tWeaponGuideHook_Data["Stc"]["Monster"][nMonsterId]["Type"]
		Task_SetStatistic(nMonsterEvent,nMonsterType,0,1)
		Task_SetStcTimestamp(nMonsterEvent,nMonsterType,0)
	end 
	
	--删除上一轮陷阱
	local nTrapType1=tWeaponGuideHook_Data["TrapType"][4989]
	local nTrapType2=tWeaponGuideHook_Data["TrapType"][4992]
	local nTrapType3=tWeaponGuideHook_Data["TrapType"][4993]
	local nTrapType4=tWeaponGuideHook_Data["TrapType"][4994]
	
	Trap_DelMapTrap(nMapId,nTrapType1)
	Trap_DelMapTrap(nMapId,nTrapType2)
	Trap_DelMapTrap(nMapId,nTrapType3)
	Trap_DelMapTrap(nMapId,nTrapType4)
	
	--清任务面板值
	for i=1,2 do 
		local nTaskId=tWeaponGuideHook_Data["TaskId"][i]
		if Task_ChkTaskDetail(nTaskId) then
			Task_SetTaskDetailData6(nTaskId,0)
			Task_SetTaskDetailData7(nTaskId,os.time())
			
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
		end 
	end
	--清道具掩码
	-- local nItemEvent=tWeaponGuideHook_Data["Stc"]["ItemEvent"]
	-- local nItemType=tWeaponGuideHook_Data["Stc"]["ItemType"]
	
	-- Task_SetStatistic(nItemEvent,nItemType,0,1)
	-- Task_SetStcTimestamp(nItemEvent,nItemType,0)
	
	--清理怪物
	-- local nMonsterId=tWeaponGuideHook_Data["Monster"]["MonsterId"]
	-- local nMapId=10484
	-- local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	-- if nMonsterNum >0 then 
		-- for i=1,nMonsterNum do 
			-- Monster_DelMonster(nMapId,nMonsterId)
		-- end 
		-- Sys_SetTempData(1,nMapId,nMonsterId,0)
	-- end 
	
	--重新随机四个点刷怪
	-- local tRefresh = {}
	-- for i=1,4 do 
		-- local nIndex = WeaponGuideHook_RandomCoordinate(tRefresh)
		-- local nPosX = tWeaponGuideHook_Data["Monster"]["RefreshPos"][nIndex]["PosX"]
		-- local nPosY = tWeaponGuideHook_Data["Monster"]["RefreshPos"][nIndex]["PosY"]
		-- local nMonsterGenId = tWeaponGuideHook_Data["Monster"]["GenId"]
		
		-- Monster_AddMonster(nMapId, nPosX, nPosY, nMonsterGenId, nMonsterId)
		-- tRefresh[#tRefresh+1] = nIndex
	-- end 
end 


----每次击杀后增加掩码
function WeaponGuideHook_KillMonster(nMonsterId)
	
	local nKillEvent=tWeaponGuideHook_Data["Stc"]["KillEvent"]
	local nKillType=tWeaponGuideHook_Data["Stc"]["KillType"]
	
	local nMonsterEvent=tWeaponGuideHook_Data["Stc"]["Monster"][nMonsterId]["Event"]
	local nMonsterType=tWeaponGuideHook_Data["Stc"]["Monster"][nMonsterId]["Type"]
	
	--加掩码
	Task_AddStatistic(nKillEvent,nKillType,1,1)
	Task_SetStcTimestamp(nKillEvent,nKillType,0)
	
	if Task_ChkStcValue(nMonsterEvent,nMonsterType,"==",0) then
		Task_AddStatistic(nMonsterEvent,nMonsterType,1,1)
		Task_SetStcTimestamp(nMonsterEvent,nMonsterType,0)
	end 
	
	--加任务面板掩码
	local nTaskId=tWeaponGuideHook_Data["TaskId"][1]
	if Task_ChkTaskDetail(nTaskId) then
		local nData6=Get_TaskDetailData6(nTaskId)
		nData6=nData6+1
		Task_SetTaskDetailData6(nTaskId,nData6)
		Task_SetTaskDetailData7(nTaskId,os.time())
		if nData6==4 then 
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
		
			local nNextTaskId=tWeaponGuideHook_Data["TaskId"][2]
			if not Task_ChkTaskDetail(nNextTaskId) then
				Task_AddTaskDetail(nNextTaskId)
			end
		end
	end 
	
	
	local nLeftNum= 4-Get_UserStatisticValue(nKillEvent,nKillType)
	

	
	if Task_ChkStcValue(nKillEvent,nKillType,"<",4) then
		local sTip=string.format(tWeaponGuideHook_Text["SystemTips"]["KillMonster"],nLeftNum)
		-- local nNextMonsterId=WeaponGuideHook_FindMonsterIndex()
		-- local sFunc =  "WeaponGuideHook_FindMonster</N>" .. nNextMonsterId
		-- Sys_MsgBox(sTip,sFunc,nil)
		Sys_MsgBox(sTip)
	end 
	
	--已经杀了4只
	if Task_ChkStcValue(nKillEvent,nKillType,"==",4) then
		--移出npc
		local nTask0=tWeaponGuideHook_Data["DynaNpc"]["Task0"]
		local nLookface=tWeaponGuideHook_Data["DynaNpc"]["Lookface"]
		local nMapId=Get_UserMapId()
		local nPosX=tWeaponGuideHook_Data["DynaNpc"]["PosX"]
		local nPosY=tWeaponGuideHook_Data["DynaNpc"]["PosY"]
		local sNpcName = tWeaponGuideHook_Text["NpcName"]
		Npc_CreateDynaNpc(sNpcName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		
		--震屏
		User_Screffect(1) --屏幕效果
		local sFunc =  "WeaponGuideHook_FindMonster</N>100000"
		Sys_MsgBox(tWeaponGuideHook_Text["SystemTips"]["KillMonsterFinish"],sFunc,nil)
	end
	
	
	local nTrapType=tWeaponGuideHook_Data["TrapType"][nMonsterId]
	local nLook=tWeaponGuideHook_Data["TrapType"]["Look"]
	local nMapId = Get_UserMapId()
	local nPosX=tWeaponGuideHook_Data["MonsterPos"][nMonsterId]["PosX"]
	local nPosY=tWeaponGuideHook_Data["MonsterPos"][nMonsterId]["PosY"]
	local nPosCX=tWeaponGuideHook_Data["TrapType"]["Range"]
	local nPosCY=tWeaponGuideHook_Data["TrapType"]["Range"]
	
	--创建光效陷阱
	Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,nPosCX,nPosCY)
end


-- 随机坐标点`返回坐标索引序号
function WeaponGuideHook_RandomCoordinate(tRefresh)
	local nLen = #tWeaponGuideHook_Data["Monster"]["RefreshPos"]
	local nRandomNum = math.random(1,nLen)
	
	if #tRefresh > 0 then
		for i=1, #tRefresh do
			if tRefresh[i] == nRandomNum then
				nRandomNum = WeaponGuideHook_RandomCoordinate(tRefresh)
			end
		end
	end
	
	return nRandomNum
end 

--寻找怪物
function WeaponGuideHook_FindMonster(nMonsterId)
	
	if  nMonsterId==0 then 
		nMonsterId=4992
	end 
	
	local nMapId = Get_UserMapId()
	
	local nPosX=tWeaponGuideHook_Data["MonsterPos"][nMonsterId]["PosX"]
	local nPosY=tWeaponGuideHook_Data["MonsterPos"][nMonsterId]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end 


--踩阵眼  给提示
function WeaponGuideHook_TrapTip()
	local nMapId = Get_UserMapId()
	local nNextMonsterId=0
	
	local nKillEvent=tWeaponGuideHook_Data["Stc"]["KillEvent"]
	local nKillType=tWeaponGuideHook_Data["Stc"]["KillType"]
	
	if Task_ChkStcValue(nKillEvent,nKillType,">=",4) then
		nNextMonsterId=100000
	else
		nNextMonsterId=WeaponGuideHook_FindMonsterIndex()
	end 
	
	
	local sFunc="WeaponGuideHook_FindMonster</N>" .. nNextMonsterId
	Sys_MsgBox(tWeaponGuideHook_Text["SystemTips"]["TrapTip"],sFunc,nil)
end 


function WeaponGuideHook_FindMonsterIndex()
	local nLen = #tWeaponGuideHook_Data["MonsterPosId"]
	local nRandomNum = 0
	for i=1,nLen do 
		local nMonsterId=tWeaponGuideHook_Data["MonsterPosId"][i]
		local nMapId = Get_UserMapId()
	
		local nMonsterEvent=tWeaponGuideHook_Data["Stc"]["Monster"][nMonsterId]["Event"]
		local nMonsterType=tWeaponGuideHook_Data["Stc"]["Monster"][nMonsterId]["Type"]
	
		if Task_ChkStcValue(nMonsterEvent,nMonsterType,"==",0) then
			nRandomNum=i
			break
		end 
	end 
	
	local nNextMonsterId=0
	if nRandomNum==0 then 
		nNextMonsterId=100000
	else
		nNextMonsterId=tWeaponGuideHook_Data["MonsterPosId"][nRandomNum]
	end 
	return nNextMonsterId
end 
----------------------------------NPC部分---------------------------------------------
--沙旦
tNpcFace[6480] = 59
--未获取
tNpcGossip[24123]= tNpcGossip[24123] or DefaultNpc:new{}
tNpcGossip[24123]["OptionHidden"] = 1
tNpcGossip[24123]["DialogueText"] = tWeaponGuideHook_Text[24123]

--任务对白

--任务首对白
tNpcGossip[24123]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24123]["tOption1-1"] = {111}
tNpcGossip[24123]["ChkFunc1-1"]= function()
	local nPreTaskId=tWeaponGuideHook_Data["PreTaskId"]["Normal"]
	
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponGuideHook_Data["PreTaskId"]["Special"]
	end 
	
	if Task_ChkTaskDetail(nPreTaskId) then
		local nGotEvent=tWeaponGuideHook_Data["Stc"]["GotEvent"]
		local nGotType=tWeaponGuideHook_Data["Stc"]["GotType"]
	
		--任务首对白掩码
		local nFirstDiaEvent=tWeaponGuideHook_Data["Stc"]["FirstDiaEvent"]
		local nFirstDiaKillType=tWeaponGuideHook_Data["Stc"]["FirstDiaKillType"]
	
		--首次点npc
		if Task_ChkStcValue(nFirstDiaEvent,nFirstDiaKillType,"==",0) then
			--加掩码
			Task_AddStatistic(nFirstDiaEvent,nFirstDiaKillType,1,1)
			Task_SetStcTimestamp(nFirstDiaEvent,nFirstDiaKillType,0)
			--未获得
			if Task_ChkStcValue(nGotEvent,nGotType,"==",0) then
				return true
			else
				return false
			end 
		else
			return false
		end
	else
		return false
	end 
end 
tNpcGossip[24123]["OptionFunc111"] = "WeaponGuideHook_AcceptTask"

--任务主对白
tNpcGossip[24123]["Text1-2"] = {121,122,123}
tNpcGossip[24123]["tOption1-2"] = {121}
tNpcGossip[24123]["ChkFunc1-2"]= function()
	local nGotEvent=tWeaponGuideHook_Data["Stc"]["GotEvent"]
	local nGotType=tWeaponGuideHook_Data["Stc"]["GotType"]
	--任务首对白掩码
	local nFirstDiaEvent=tWeaponGuideHook_Data["Stc"]["FirstDiaEvent"]
	local nFirstDiaKillType=tWeaponGuideHook_Data["Stc"]["FirstDiaKillType"]
	
	--未获得
	if Task_ChkStcValue(nFirstDiaEvent,nFirstDiaKillType,">",0) then
		if Task_ChkStcValue(nGotEvent,nGotType,"==",0) then
			return true
		else
			return false
		end 
	else
		return false
	end
end 

tNpcGossip[24123]["OptionFunc121"] = "WeaponGuideHook_EnterInstance"

--闲聊对白
tNpcGossip[24123]["Text1-3"] = {131,132}
tNpcGossip[24123]["tOption1-3"] = {131}
tNpcGossip[24123]["ChkFunc1-3"]= function()
	local nGotEvent=tWeaponGuideHook_Data["Stc"]["GotEvent"]
	local nGotType=tWeaponGuideHook_Data["Stc"]["GotType"]
		--任务首对白掩码
	local nFirstDiaEvent=tWeaponGuideHook_Data["Stc"]["FirstDiaEvent"]
	local nFirstDiaKillType=tWeaponGuideHook_Data["Stc"]["FirstDiaKillType"]
	
	local nPreTaskId=tWeaponGuideHook_Data["PreTaskId"]["Normal"]
	
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponGuideHook_Data["PreTaskId"]["Special"]
	end 
	
	
	if not Task_ChkTaskDetail(nPreTaskId) then
		return true
	else
	
		if Task_ChkStcValue(nFirstDiaEvent,nFirstDiaKillType,">",0) then
			--获得
			if Task_ChkStcValue(nGotEvent,nGotType,">",0) then
				return true
			else
				return false
			end
		else
			return false
		end 
	end 
end 


--警告牌
-- tNpcFace[4507] = 59
tNpcGossip[24134]= tNpcGossip[24134] or DefaultNpc:new{}
tNpcGossip[24134]["OptionHidden"] = 1
tNpcGossip[24134]["DialogueText"] = tWeaponGuideHook_Text[24134]

tNpcGossip[24134]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24134]["tOption1-1"] = {1}

tNpcGossip[24134]["OptionFunc1"] = "WeaponGuideHook_FindMonster</N>0"
--------------------------------陷阱部分---------------------------

tTrap[2340] = tTrap[2340] or {}
tTrap[2340]["Function"] = function(nTrapId,nTrapType)
	WeaponGuideHook_Exit()
end

--第一处阵眼
tTrap[2350] = tTrap[2350] or {}
tTrap[2350]["Function"] = function(nTrapId,nTrapType)
	WeaponGuideHook_TrapTip()
end

--第二处阵眼
tTrap[2351] = tTrap[2351] or {}
tTrap[2351]["Function"] = function(nTrapId,nTrapType)
	WeaponGuideHook_TrapTip()
end

--第三处阵眼
tTrap[2352] = tTrap[2352] or {}
tTrap[2352]["Function"] = function(nTrapId,nTrapType)
	WeaponGuideHook_TrapTip()
end

--第四处阵眼
tTrap[2353] = tTrap[2353] or {}
tTrap[2353]["Function"] = function(nTrapId,nTrapType)
	WeaponGuideHook_TrapTip()
end


-----------------------------物品使用-----------------------------
tItem[3321148] = tItem[3321148] or {}
tItem[3321148]["Function"] = function(nItemId,sItemName)
		--出提示
	local sFunc =  "WeaponGuideHook_ItemUse</N>" .. nItemId
	Sys_MsgBox(tWeaponGuideHook_Text["SystemTips"]["UseItem"],sFunc,nil)
	-- WeaponGuideHook_ItemUse(nItemId)
end


-----------------------------怪物部分--------------------------
	--杀怪触发
	tWeaponGuideHook_KillMonster={}
	tWeaponGuideHook_KillMonster["Function"]= WeaponGuideHook_KillMonster
	tWeaponGuideHook_KillMonster["MonsterId"] = {4989,4992,4993,4994}
	table.insert(tMonsterDrop_AreaLoad,tWeaponGuideHook_KillMonster)