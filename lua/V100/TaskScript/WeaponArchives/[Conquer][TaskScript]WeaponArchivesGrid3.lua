------------------------------------------------------------------------------------
--Name:			190417[简体征服][任务脚本]勇士百兵谱支线任务
--Creator:		吴志宏
--Created:		2019/04/17
------------------------------------------------------------------------------------
-- 前缀
-- WeaponArchivesGrid3_

-- LogId 18000203

-- 掩码说明 
-- stc 
-- 193,78		是否已刷新
-- 193,79		杀怪数（七大罪）
-- 193,80		是否完成挑战
-- 193,60		记录开启御魂空间的掩码

-- task
-- 6996			第三格子任务完成状态

-- 全局表记录
-- global	

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tWeaponArchivesGrid3_Cont = {}
	-- 任务ID
	tWeaponArchivesGrid3_Cont["TaskId"] = 6996
	-- 副本ID
	tWeaponArchivesGrid3_Cont["InstanceId"] = 276
	
	-- 读条
	tWeaponArchivesGrid3_Cont["Explore"] = {}
	tWeaponArchivesGrid3_Cont["Explore"]["Secs"] = 3
	tWeaponArchivesGrid3_Cont["Explore"]["ActionId"] = 220
	
	-- 击杀光效
	tWeaponArchivesGrid3_Cont["Effect"] = {}
	tWeaponArchivesGrid3_Cont["Effect"]["Name"] = "accession"
	tWeaponArchivesGrid3_Cont["Effect"]["PosX"] = 163
	tWeaponArchivesGrid3_Cont["Effect"]["PosY"] = 170
	
	-- 陷阱返回坐标
	tWeaponArchivesGrid3_Cont["Entrance"] = {}
	-- 普通服
	tWeaponArchivesGrid3_Cont["Entrance"]["Normal"] = {}
	tWeaponArchivesGrid3_Cont["Entrance"]["Normal"]["MapId"] = 1000
	tWeaponArchivesGrid3_Cont["Entrance"]["Normal"]["PosX"] = 513
	tWeaponArchivesGrid3_Cont["Entrance"]["Normal"]["PosY"] = 592
	-- 激情服
	tWeaponArchivesGrid3_Cont["Entrance"]["Special"] = {}
	tWeaponArchivesGrid3_Cont["Entrance"]["Special"]["MapId"] = 10367
	tWeaponArchivesGrid3_Cont["Entrance"]["Special"]["PosX"] = 513
	tWeaponArchivesGrid3_Cont["Entrance"]["Special"]["PosY"] = 592
	
	-- 怪物数据
	tWeaponArchivesGrid3_Cont["Monster"] = {}
	-- 傲慢
	tWeaponArchivesGrid3_Cont["Monster"][1] = {}
	tWeaponArchivesGrid3_Cont["Monster"][1]["Id"] = 5362
	tWeaponArchivesGrid3_Cont["Monster"][1]["PosX"] = 152
	tWeaponArchivesGrid3_Cont["Monster"][1]["PosY"] = 160
	tWeaponArchivesGrid3_Cont["Monster"][1]["GenId"] = 27083
	-- 嫉妒
	tWeaponArchivesGrid3_Cont["Monster"][2] = {}
	tWeaponArchivesGrid3_Cont["Monster"][2]["Id"] = 5363
	tWeaponArchivesGrid3_Cont["Monster"][2]["PosX"] = 159
	tWeaponArchivesGrid3_Cont["Monster"][2]["PosY"] = 161
	tWeaponArchivesGrid3_Cont["Monster"][2]["GenId"] = 27084
	-- 愤怒
	tWeaponArchivesGrid3_Cont["Monster"][3] = {}
	tWeaponArchivesGrid3_Cont["Monster"][3]["Id"] = 5364
	tWeaponArchivesGrid3_Cont["Monster"][3]["PosX"] = 173
	tWeaponArchivesGrid3_Cont["Monster"][3]["PosY"] = 163
	tWeaponArchivesGrid3_Cont["Monster"][3]["GenId"] = 27085
	-- 懒惰
	tWeaponArchivesGrid3_Cont["Monster"][4] = {}
	tWeaponArchivesGrid3_Cont["Monster"][4]["Id"] = 5365
	tWeaponArchivesGrid3_Cont["Monster"][4]["PosX"] = 171
	tWeaponArchivesGrid3_Cont["Monster"][4]["PosY"] = 175
	tWeaponArchivesGrid3_Cont["Monster"][4]["GenId"] = 27086
	-- 贪婪
	tWeaponArchivesGrid3_Cont["Monster"][5] = {}
	tWeaponArchivesGrid3_Cont["Monster"][5]["Id"] = 5366
	tWeaponArchivesGrid3_Cont["Monster"][5]["PosX"] = 165
	tWeaponArchivesGrid3_Cont["Monster"][5]["PosY"] = 184
	tWeaponArchivesGrid3_Cont["Monster"][5]["GenId"] = 27087
	-- 暴食
	tWeaponArchivesGrid3_Cont["Monster"][6] = {}
	tWeaponArchivesGrid3_Cont["Monster"][6]["Id"] = 5367
	tWeaponArchivesGrid3_Cont["Monster"][6]["PosX"] = 159
	tWeaponArchivesGrid3_Cont["Monster"][6]["PosY"] = 173
	tWeaponArchivesGrid3_Cont["Monster"][6]["GenId"] = 27088
	-- 色欲
	tWeaponArchivesGrid3_Cont["Monster"][7] = {}
	tWeaponArchivesGrid3_Cont["Monster"][7]["Id"] = 5368
	tWeaponArchivesGrid3_Cont["Monster"][7]["PosX"] = 155
	tWeaponArchivesGrid3_Cont["Monster"][7]["PosY"] = 177
	tWeaponArchivesGrid3_Cont["Monster"][7]["GenId"] = 27089


-- 掩码表
local tWeaponArchivesGrid3_Stc = {}
	-- 是否已刷新
	tWeaponArchivesGrid3_Stc["Refresh"] = {}
	tWeaponArchivesGrid3_Stc["Refresh"]["Event"] = 193
	tWeaponArchivesGrid3_Stc["Refresh"]["Type"] = 78
	tWeaponArchivesGrid3_Stc["Refresh"]["Limit"] = 1
	
	-- 杀怪数（七大罪）
	tWeaponArchivesGrid3_Stc["KillNum"] = {}
	tWeaponArchivesGrid3_Stc["KillNum"]["Event"] = 193
	tWeaponArchivesGrid3_Stc["KillNum"]["Type"] = 79
	tWeaponArchivesGrid3_Stc["KillNum"]["Limit"] = 7
	
	-- 是否完成挑战
	tWeaponArchivesGrid3_Stc["Complete"] = {}
	tWeaponArchivesGrid3_Stc["Complete"]["Event"] = 193
	tWeaponArchivesGrid3_Stc["Complete"]["Type"] = 80
	tWeaponArchivesGrid3_Stc["Complete"]["Limit"] = 1
	
	-- 记录开启御魂空间的掩码
	tWeaponArchivesGrid3_Stc["GridNum"] = {}
	tWeaponArchivesGrid3_Stc["GridNum"]["Event"] = 193
	tWeaponArchivesGrid3_Stc["GridNum"]["Type"] = 60


-- 奖励表
local tWeaponArchivesGrid3_Reward = {}
	-- 获得圣人之石
	tWeaponArchivesGrid3_Reward[24131] = {}
	tWeaponArchivesGrid3_Reward[24131]["RewardItem"] = {}
	tWeaponArchivesGrid3_Reward[24131]["RewardItem"][1] = {}
	tWeaponArchivesGrid3_Reward[24131]["RewardItem"][1]["Id"] = 3321128
	tWeaponArchivesGrid3_Reward[24131]["RewardItem"][1]["Attr"] = "0 1"
	tWeaponArchivesGrid3_Reward[24131]["RewardEffect"] = {}
	tWeaponArchivesGrid3_Reward[24131]["RewardEffect"]["Effect"] = "zf2-e128"
	tWeaponArchivesGrid3_Reward[24131]["LogId"] = 18000203
	tWeaponArchivesGrid3_Reward[24131]["LogStep"] = "1[1]"



----------------------------------------逻辑部分-------------------------------------
-- 副本入口触发
function WeaponArchivesGrid3_InstanceChk(nTaskId)
	-- 未接受任务
	if not Task_ChkTaskDetail(nTaskId) then
		Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["NoTask"])
		return false
	end
	
	-- 已完成任务
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["AreadyComplete"])
		return false
	end
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["HaveATeam"])
		return false
	end
	
	-- 进入副本
	local nInstanceId = tWeaponArchivesGrid3_Cont["InstanceId"]
	if User_EnterInstance(nInstanceId,0,0,0) then
		-- 掩码·是否已刷新
		local nEvent_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Event"]
		local nType_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Type"]
		-- 掩码·杀怪数（七大罪）
		local nEvent_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Event"]
		local nType_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Type"]
		-- 掩码·是否完成挑战
		local nEvent_Complete = tWeaponArchivesGrid3_Stc["Complete"]["Event"]
		local nType_Complete = tWeaponArchivesGrid3_Stc["Complete"]["Type"]
		
		-- 掩码重置
		Task_SetStatistic(nEvent_Refresh,nType_Refresh,0,1)
		Task_SetStcTimestamp(nEvent_Refresh,nType_Refresh,0)
		Task_SetStatistic(nEvent_KillNum,nType_KillNum,0,1)
		Task_SetStcTimestamp(nEvent_KillNum,nType_KillNum,0)
		Task_SetStatistic(nEvent_Complete,nType_Complete,0,1)
		Task_SetStcTimestamp(nEvent_Complete,nType_Complete,0)
	end
	
	return true
end

-- 副本NPC触发
function WeaponArchivesGrid3_NpcChk(nNpcId)
	-- 掩码·是否已刷新
	local nEvent_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Event"]
	local nType_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Type"]
	local nLimit_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Limit"]
	-- 掩码·杀怪数（七大罪）
	local nEvent_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Event"]
	local nType_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Type"]
	local nLimit_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Limit"]
	
	-- 完成击杀
	if Task_ChkStcValue(nEvent_KillNum,nType_KillNum,">=",nLimit_KillNum) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return true
	end
	
	-- 已刷新
	if Task_ChkStcValue(nEvent_Refresh,nType_Refresh,">=",nLimit_Refresh) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return true
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
	return true
end

-- 刷新七大罪
function WeaponArchivesGrid3_RefreshMonster()
	-- 掩码·是否已刷新
	local nEvent_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Event"]
	local nType_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Type"]
	local nLimit_Refresh = tWeaponArchivesGrid3_Stc["Refresh"]["Limit"]
	
	-- 掩码置已刷新状态
	Task_SetStatistic(nEvent_Refresh,nType_Refresh,nLimit_Refresh,1)
	Task_SetStcTimestamp(nEvent_Refresh,nType_Refresh,0)
	
	-- 刷新七大罪
	local nMapId = Get_UserMapId()
	for i=1, 7 do
		local nMonsterId = tWeaponArchivesGrid3_Cont["Monster"][i]["Id"]
		local nPosX = tWeaponArchivesGrid3_Cont["Monster"][i]["PosX"]
		local nPosY = tWeaponArchivesGrid3_Cont["Monster"][i]["PosY"]
		local nGenId = tWeaponArchivesGrid3_Cont["Monster"][i]["GenId"]
		
		-- 刷新怪物
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
	
	Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["Refresh"])
	User_TalkChannel2005(tWeaponArchivesGrid3_Text[2005]["Refresh"])
	return true
end

-- 领取圣人之石
function WeaponArchivesGrid3_GetStone(nNpcId)
	-- 掩码·是否完成挑战
	local nEvent_Complete = tWeaponArchivesGrid3_Stc["Complete"]["Event"]
	local nType_Complete = tWeaponArchivesGrid3_Stc["Complete"]["Type"]
	local nLimit_Complete = tWeaponArchivesGrid3_Stc["Complete"]["Limit"]
	local nData_Complete = Get_UserStatisticValue(nEvent_Complete,nType_Complete)
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tWeaponArchivesGrid3_Reward[nNpcId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["NoSpace"])
		return false
	end
	
	-- 掩码置已完成
	Task_SetStatistic(nEvent_Complete,nType_Complete,nLimit_Complete,1)
	Task_SetStcTimestamp(nEvent_Complete,nType_Complete,0)
	
	-- 给圣人之石
	if nData_Complete ~= nLimit_Complete then
		RewardTemplate_UseItemAndMsg(tWeaponArchivesGrid3_Reward[nNpcId])
	end
	
	-- 传出副本
	WeaponArchivesGrid3_TrapBackConfirm()
	
	-- 出105提示
	Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["GetStone"],"User_OpenDialog</N>153")
	
	return true
end

-- 击杀七大罪
function WeaponArchivesGrid3_KillMonster(nMonsterId)
	-- 掩码·杀怪数（七大罪）
	local nEvent_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Event"]
	local nType_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Type"]
	local nLimit_KillNum = tWeaponArchivesGrid3_Stc["KillNum"]["Limit"]
	
	-- 掩码计数+1
	Task_AddStatistic(nEvent_KillNum,nType_KillNum,1,1)
	Task_SetStcTimestamp(nEvent_KillNum,nType_KillNum,0)
	
	-- 添加光效
	local nMapId = Get_UserMapId()
	local nPosX = tWeaponArchivesGrid3_Cont["Effect"]["PosX"]
	local nPosY = tWeaponArchivesGrid3_Cont["Effect"]["PosY"]
	local sEffectName = tWeaponArchivesGrid3_Cont["Effect"]["Name"]
	Map_Effect(nMapId,nPosX,nPosY,sEffectName)
	
	-- 添加提示
	local sMonsterName = tWeaponArchivesGrid3_Text["MonsterName"][nMonsterId]
	User_TalkChannel2005(string.format(tWeaponArchivesGrid3_Text[2005]["KillMonster"],sMonsterName))
	
	-- 完成击杀
	if Task_ChkStcValue(nEvent_KillNum,nType_KillNum,"==",nLimit_KillNum) then
		Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["KillComplete"])
	end
	
	return true
end

-- 陷阱触发
function WeaponArchivesGrid3_TrapBack()
	Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["Back"],"WeaponArchivesGrid3_TrapBackConfirm")
end

-- 确认返回
function WeaponArchivesGrid3_TrapBackConfirm()
	-- 判断激情服
	local nMapId = tWeaponArchivesGrid3_Cont["Entrance"]["Normal"]["MapId"]
	local nCellX = tWeaponArchivesGrid3_Cont["Entrance"]["Normal"]["PosX"]
	local nCellY = tWeaponArchivesGrid3_Cont["Entrance"]["Normal"]["PosY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponArchivesGrid3_Cont["Entrance"]["Special"]["MapId"]
		nCellX = tWeaponArchivesGrid3_Cont["Entrance"]["Special"]["PosX"]
		nCellY = tWeaponArchivesGrid3_Cont["Entrance"]["Special"]["PosY"]
	end
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,3,3,1)
	return true
end

-- 使用圣人之石·读条
function WeaponArchivesGrid3_UseStone(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nTaskId = tWeaponArchivesGrid3_Cont["TaskId"]
	
	-- 删物品
	if Item_ChkMulItem(nItemId,nItemId,1,0,nil,nNowUserId) and Item_DelMulItem(nItemId,nItemId,1,0,nil,nNowUserId) then
		-- 已使用过
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nNowUserId) then
			Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["AreadyUse"],nil,nil,nNowUserId)
			return false
		end
		
		-- 置Task掩码为已完成状态
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
		-- 开启格子数+1
		local nEvent_GridNum = tWeaponArchivesGrid3_Stc["GridNum"]["Event"]
		local ntype_GridNum = tWeaponArchivesGrid3_Stc["GridNum"]["Type"]
		Task_AddStatistic(nEvent_GridNum,ntype_GridNum,1,1,nNowUserId)
		Task_SetStcTimestamp(nEvent_GridNum,ntype_GridNum,0,nNowUserId)
		
		-- 调用接口开启第3格御魂空间
		
		
		-- 出提示
		Sys_MsgBox(tWeaponArchivesGrid3_Text[105]["TaskComplete"],nil,nil,nNowUserId)
		
		-- 全服公告
		local sUserName = Get_UserName(nNowUserId)
		Sys_SystemBroadcast(string.format(tWeaponArchivesGrid3_Text["Braotcast"],sUserName))
		
		-- 添加光效
		local sEffectName = tWeaponArchivesGrid3_Cont["Effect"]["Name"]
		User_EffectAdd("self",sEffectName,nNowUserId)
		
		return true
	end
end


----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 孔圣人 24131
tNpcFace[1704] = 6
tNpcGossip[24131] = tNpcGossip[24131] or DefaultNpc:new{}
tNpcGossip[24131]["OptionHidden"] = 1
tNpcGossip[24131]["DialogueText"] = tWeaponArchivesGrid3_Text[24131]

-- 未开启挑战
tNpcGossip[24131]["Text1-1"] = {111,112,113}
tNpcGossip[24131]["tOption1-1"] = {111}

-- 挑战中
tNpcGossip[24131]["Text1-2"] = {121,122}
tNpcGossip[24131]["tOption1-2"] = {121}

-- 完成挑战
tNpcGossip[24131]["Text1-3"] = {131,132}
tNpcGossip[24131]["tOption1-3"] = {131}

tNpcGossip[24131]["OptionPoint111"] = "2-1" 
tNpcGossip[24131]["OptionFunc131"] = "WeaponArchivesGrid3_GetStone</N>24131" 


-- 确认刷新
tNpcGossip[24131]["Text2-1"] = {211,212}
tNpcGossip[24131]["tOption2-1"] = {211}

tNpcGossip[24131]["OptionFunc211"] = "WeaponArchivesGrid3_RefreshMonster" 



-------------------------------物品模板
-- 圣人之石
tItem[3321128] = tItem[3321128] or {}
tItem[3321128]["Function"] = function(nItemId,sItemName)
	local nTaskId = tWeaponArchivesGrid3_Cont["TaskId"]
	
	-- 未接受任务
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	local nUserId = Get_UserId()
	local nSecs = tWeaponArchivesGrid3_Cont["Explore"]["Secs"]
	local sContent = tWeaponArchivesGrid3_Text["ExploreContent"]
	local nActionId = tWeaponArchivesGrid3_Cont["Explore"]["ActionId"]
	local sFunc = string.format("WeaponArchivesGrid3_UseStone</N>%d",nItemId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc,"NULL",nUserId)
end


-------------------------------怪物掉落
local tWeaponArchivesGrid3_Monster = {}
	-- 七大罪
	tWeaponArchivesGrid3_Monster[1] = {}
	tWeaponArchivesGrid3_Monster[1]["Function"] = WeaponArchivesGrid3_KillMonster
	tWeaponArchivesGrid3_Monster[1]["MonsterId"] = {5362,5363,5364,5365,5366,5367,5368}
	table.insert(tMonsterDrop_AreaLoad,tWeaponArchivesGrid3_Monster[1])


