----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]基础模板之新的任务模块.lua
--Purpose:	基于现在外部的条件重新制作的任务模板
--Creator: 	郑鋆
--Created:	2019/08/07
----------------------------------------------------------------------------

-- 命名前缀
-- NewTaskTemplate

-- logid 18000223


tNewTaskTemplate = {}		--任务配置数据
tNewTaskAcceptNpc = {}		--接任务NPC配置
tNewTaskMidNpc = {}			--中间任务NPC配置
tNewTaskHandOverNpc = {}	--交任务NPC配置
tNewTaskGossipNpc = {}		--NPC闲聊对白配置
tNewTaskMonster = {}		--怪物关联任务ID
tNewNoDialogue = {}			--不出闲聊对白的NPC
tNewTaskProfLevUp = {}		--职业进阶对应的任务

-- 任务类型	["Type"]
-- 接任务NPC	["BeginNpcId"]
-- 交任务NPC	["EndNpcId"]
-- 组队共享	["Shared"]

-- 接任务的条件需求
-- ["AcceptDemand"]
-- 1、前置任务ID	["FrontTask"]
-- 2、接任务等级	["Level"]
-- 3、职业限制以及职业阶级	["Pro"]
-- 4、战斗力需求	["CombatPower"]

-- 接任务触发的表现
-- ["Accept"]
-- 1、接任务触发剧情脚本
-- 2、接任务后触发寻路（寻路后触发函数）
-- 3、接任务后触发传送

-- 中间表现
-- ["Middle"]
-- 中间步骤NPC	["Npc"]
-- 需要读条操作	["Reading"]
--		读条的时间	["Secs"]
--		读条的文字	["Content"]
--		读条的动作	["ActionId"]
-- 中间步骤怪物	["Monster"]
-- 		掉落类型		["DropType"]	=1表示掉落背包，不配或者其他表示掉落地上
-- 		奖励			["Reward"]	掉落背包时配置的奖励
-- 中间步骤掉落/采集是否随机		["IsRandom"]


-- 掉落（采集）概率
-- ["Middle"]["Random"]
-- 失败光效
-- ["Middle"]["FailEffect"] = {}
-- ["Middle"]["FailEffect"]["SzObj"] = "self"
-- ["Middle"]["FailEffect"]["Effect"] = "self"

-- 完成任务的条件需求
-- ["CompleteDemand"]
-- 1、等级判断
-- 2、任务掩码
-- 3、坐标判断
-- 4、职业阶级
-- 5、战斗力
-- 6、任务道具
-- 7、其它任务判断
-- 8、转世判断		Metempsychosis

-- 完成任务的表现
-- ["Complete"]
-- 1、完成任务的奖励	["Reward"]
-- 2、完成任务触发的剧情脚本	["Reward"]
-- 3、后续任务ID	["NextTask"]

-- 对白集合
-- ["Msg"]

-- 副本配置
-- ["Instance"]
-- 离开副本传送配置
-- ["Instance"]["Leave"]
-- 地图ID
-- ["Instance"]["Leave"]["MapId"]
-- 地图X坐标
-- ["Instance"]["Leave"]["PosX"]
-- 地图Y坐标
-- ["Instance"]["Leave"]["PosY"]
-- 范围（没配默认为5）
-- ["Instance"]["Leave"]["Range"]

-- 副本类型
-- ["Instance"]["Type"]
-- 进入副本系统提示
-- ["Instance"]["Prompt"]
-- 进入副本105提示
-- ["Instance"]["MsgBox"]
-- 进入副本105提示确定后寻路配置
-- ["Instance"]["MsgBoxWay"]
-- 参考配置例子
-- tTaskTemplate[10001]["Instance"]["MsgBox"] = tNewQuestArea1nd_Text["Instance"][10001]
-- tTaskTemplate[10001]["Instance"]["MsgBoxWay"] = {}
-- tTaskTemplate[10001]["Instance"]["MsgBoxWay"]["PosX"] = 51
-- tTaskTemplate[10001]["Instance"]["MsgBoxWay"]["PosY"] = 43

-- 副本刷怪坐标
-- ["Instance"]["Monster"]
-- 参考配置例子
-- tTaskTemplate[10123]["Instance"]["Monster"] = {}
-- tTaskTemplate[10123]["Instance"]["Monster"][1] = {}
-- tTaskTemplate[10123]["Instance"]["Monster"][1]["PosX"] = 346
-- tTaskTemplate[10123]["Instance"]["Monster"][1]["PosY"] = 351
-- tTaskTemplate[10123]["Instance"]["Monster"][1]["GenId"] = 26975
-- tTaskTemplate[10123]["Instance"]["Monster"][1]["MonsterId"] = 5267


local tNewTaskTemplate_Text = {}
	tNewTaskTemplate_Text["RewardZhenQi"] = tRewardTemplate_Text["ZhenQi"]
	tNewTaskTemplate_Text["RewardMoney"] = tRewardTemplate_Text["Money"]
	tNewTaskTemplate_Text["RewardEMoney"] = tRewardTemplate_Text["EMoney"]
	tNewTaskTemplate_Text["RewardEMoneyMono"] = tRewardTemplate_Text["EMoneyMono"]
	tNewTaskTemplate_Text["RewardFreePractNum"] = tRewardTemplate_Text["FreePract"]
	tNewTaskTemplate_Text["RewardRepairValue"] = tRewardTemplate_Text["RepairValue"]

local tNewTaskTemplate_MidCompleteDemand = {}
local tNewTaskTemplate_NoSpace = {}

local tNewTaskTemplate_Log = {}
-- 接受任务
tNewTaskTemplate_Log["AcceptTask"] = "0,0,0,0,18000223,2[1],%d,1"
-- 完成任务
tNewTaskTemplate_Log["CompleteTask"] = "0,0,0,0,18000223,2[2],%d,1"

local tNewTaskTemplate_Count = {}
	-- 剧情特殊任务
	tNewTaskTemplate_Count["AllQuest"] = {}
	tNewTaskTemplate_Count["AllQuest"][1] = {4301,4370}
	tNewTaskTemplate_Count["AllQuest"][2] = {4392,4395,4396}
	tNewTaskTemplate_Count["AllQuest"][3] = {4406,4478}
	
------------------------------------------------------------------------检测函数--------------------------------------------------------------
-- 前置任务判断
function NewTaskTemplate_ChkFrontTask(nTaskId,nUserId)
	local nFrontTask = tNewTaskTemplate[nTaskId]["AcceptDemand"]["FrontTask"]

	if nFrontTask == nil or nFrontTask == 0 then
		return true
	end

	-- 判断前置任务是否有接
	if not Task_ChkTaskDetail(nFrontTask,nUserId) then
		return false
	end

	-- 判断前置任务是否完成
	if not Task_ChkTaskDetailValue(nFrontTask,"CompleteFlag",">=",1,nUserId) then
		return false
	end

	return true
end

-- 玩家等级判断
function NewTaskTemplate_ChkAcceptLevel(nTaskId,nUserId)
	local nLevel = tNewTaskTemplate[nTaskId]["AcceptDemand"]["Level"]

	if nLevel == nil or nLevel == 0 then
		return true
	end

	local nUserLev = Get_UserLevel(nUserId)
	return nUserLev >= nLevel
end

-- 职业限制判断
function NewTaskTemplate_ChkAcceptPro(nTaskId,nUserId)
	local tPro = tNewTaskTemplate[nTaskId]["AcceptDemand"]["Pro"]

	if tPro == nil then
		return true
	end

	local nUserPro = Get_NewUserProfession(nUserId)
	local nPro = math.floor(nUserPro/1000)
	local nUserProLevel = nUserPro % 1000
	local bPro = false

	-- 判断是否在需求的职业里面
	for i,v in pairs(tPro) do
		if nPro == v then
			bPro = true
			break
		end
	end

	if not bPro then
		return false
	end

	local nProLevel = tNewTaskTemplate[nTaskId]["AcceptDemand"]["ProLevel"]
	if nProLevel == nil then
		return true
	end
	return nUserProLevel >= nProLevel
end

-- 战斗力判断
function NewTaskTemplate_ChkAcceptCombatPower(nTaskId,nUserId)
	local nCombatPower = tNewTaskTemplate[nTaskId]["AcceptDemand"]["CombatPower"]

	if nCombatPower == nil or nCombatPower == 0 then
		return true
	end

	local nUserCombatPower = Get_UserBattleLevel(nUserId)
	return nUserCombatPower >= nCombatPower
end

-- npc统一对白
function NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,sType,nUserId)
	if nNpcId == nil or tNewTaskTemplate[nTaskId]["Msg"] == nil then
		return
	end

	local sIndex = tNewTaskTemplate[nTaskId]["Msg"][sType]
	if sIndex == nil then
		return
	end
	LinkNpcGossipFunc_New(nNpcId,sIndex,nil,nil,nUserId)
end

-- 玩家等级判断
function NewTaskTemplate_ChkCompleteLevel(nTaskId,nUserId)
	local nLevel = tNewTaskTemplate[nTaskId]["CompleteDemand"]["Level"]

	if nLevel == nil or nLevel == 0 then
		return true
	end

	local nUserLev = Get_UserLevel(nUserId)
	return nUserLev >= nLevel
end

-- 玩家转世判断
function NewTaskTemplate_ChkCompleteMetempsychosis(nTaskId,nUserId)
	local nMetempsychosis = tNewTaskTemplate[nTaskId]["CompleteDemand"]["Metempsychosis"]

	if nMetempsychosis == nil or nMetempsychosis == 0 then
		return true
	end

	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	return nUserMetempsychosis >= nMetempsychosis
end

-- 玩家坐标判断
function NewTaskTemplate_ChkUserPos(nTaskId,nUserId)
	local tPos = tNewTaskTemplate[nTaskId]["CompleteDemand"]["Pos"]

	if tPos == nil or type(tPos) ~= "table" or tPos["MapId"] == nil then
		return true
	end

	local nUserMapId = Get_UserMapId(nUserId)

	if nUserMapId ~= tPos["MapId"] then
		return false
	end

	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	local nPosX = tPos["PosX"]
	local nPosY = tPos["PosY"]
	local nRange = tPos["Range"]

	if nUserPosX < nPosX - nRange or nUserPosX > nPosX + nRange then
		return false
	end

	if nUserPosY < nPosY - nRange or nUserPosY > nPosY + nRange then
		return false
	end

	return true
end

-- 职业阶级
function NewTaskTemplate_ChkUserProLevel(nTaskId,nUserId)
	local nProLevel = tNewTaskTemplate[nTaskId]["CompleteDemand"]["ProLevel"]

	if nProLevel == nil or nProLevel == 0 then
		return true
	end

	local nUserPro = Get_NewUserProfession(nUserId)
	local nUserProLevel = nUserPro % 1000
	return nUserProLevel >= nProLevel
end

-- 战斗力判断
function NewTaskTemplate_ChkCompleteCombatPower(nTaskId,nUserId)
	local nCombatPower = tNewTaskTemplate[nTaskId]["CompleteDemand"]["CombatPower"]

	if nCombatPower == nil or nCombatPower == 0 then
		return true
	end

	local nUserCombatPower = Get_UserBattleLevel(nUserId)
	return nUserCombatPower >= nCombatPower
end

-- 任务掩码
function NewTaskTemplate_ChkCompleteTaskData(nTaskId,nUserId)
	local tTaskData = tNewTaskTemplate[nTaskId]["CompleteDemand"]["TaskData"]

	if tTaskData == nil or type(tTaskData) ~= "table" then
		return true
	end

	for i,v in pairs (tTaskData) do
		if not Task_ChkTaskDetailValue(nTaskId,tostring(i),">=",v,nUserId) then
			return false
		end
	end

	return true
end

-- 任务道具
function NewTaskTemplate_ChkCompleteItem(nTaskId,nUserId)
	local tNeedItem = tNewTaskTemplate[nTaskId]["CompleteDemand"]["NeedItem"]

	if tNeedItem == nil or type(tNeedItem) ~= "table" then
		return true
	end

	for i,v in pairs(tNeedItem) do
		local nItemId = v["Id"]
		local nMonopoly = v["Monopoly"] or 1
		local nSash = v["Sash"] or 0
		local nItemNum = v["ItemNum"] or 1
		local nSaveTime = v["SaveTime"] or 1
		nSaveTime = RewardTemplate_DelSaveItem(nItemId,nSaveTime)
		
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nSash,nUserId,nSaveTime) then
			return false
		end
	end

	return true
end

-- 采集或者怪物掉落道具检测
function NewTaskTemplate_ChkItem(tInfo,nUserId)
	local nItemId = tInfo["ItemId"]
	local nItemNum = tInfo["ItemNum"] or 1
	local nMonopoly = tInfo["Monopoly"] or 1
	local nSash = tInfo["Sash"] or 0
	local nSaveTime = tInfo["SaveTime"] or 1

	if Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nSash,nUserId,nSaveTime) then
		return true
	end

	return false
end

------------------------------------------------------------------------逻辑部分--------------------------------------------------------------
-- 接任务条件判断
function NewTaskTemplate_AcceptDemand(nTaskId,nUserId)
	-- 判断任务是否已接
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return false,false
	end

	-- 判断是否有需求条件
	if tNewTaskTemplate[nTaskId]["AcceptDemand"] == nil or type(tNewTaskTemplate[nTaskId]["AcceptDemand"]) ~= "table" then
		return true,false
	end

	local nNpcId = tNewTaskTemplate[nTaskId]["BeginNpcId"]
	-- 前置任务判断
	if not NewTaskTemplate_ChkFrontTask(nTaskId,nUserId) then
		-- NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"FrontTask",nUserId)
		return false,false
	end

	-- 玩家等级判断
	if not NewTaskTemplate_ChkAcceptLevel(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"AcceptLevel",nUserId)
		return false,true
	end

	-- 职业限制判断
	if not NewTaskTemplate_ChkAcceptPro(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"AcceptPro",nUserId)
		return false,true
	end

	-- 战斗力判断
	if not NewTaskTemplate_ChkAcceptCombatPower(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"AcceptCombatPower",nUserId)
		return false,true
	end

	return true,false
end

-- 接关联任务
function NewTaskTemplate_AcceptAssociat(nTaskId,nUserId)
	-- 判断任务类型是否为7
	if tNewTaskTemplate[nTaskId]["Type"] ~= 7 then
		return false
	end

	if tNewTaskTemplate[nTaskId]["Accept"]["Associat"] == nil then
		return false
	end

	for i,v in pairs(tNewTaskTemplate[nTaskId]["Accept"]["Associat"]) do
		-- 判断任务是否已接
		if Task_ChkTaskDetail(v,nUserId) then
			-- Task_AddTaskDetail(v,0,nUserId)
			if Task_ChkTaskDetailValue(v,"CompleteFlag",">=",1,nUserId) then 
				NewTaskTemplate_TaskCount(v,nUserId)
			end
		end
	end
end

-- 接任务
function NewTaskTemplate_Accept(nTaskId,nUserId)
	-- 接受任务
	if not Task_AddTaskDetail(nTaskId,0,nUserId) then
		return false
	end
	
	-- 记录log
	local sNewTaskTemplate_AcceptTask = tNewTaskTemplate_Log["AcceptTask"]
	Sys_SaveActionTaskLog(string.format(sNewTaskTemplate_AcceptTask,nTaskId),nUserId)

	-- 判断接任务之后是否有操作
	if tNewTaskTemplate[nTaskId]["Accept"] == nil or type(tNewTaskTemplate[nTaskId]["Accept"]) ~= "table" then
		return true
	end

	-- 是否给满XP
	if tNewTaskTemplate[nTaskId]["Accept"]["Xp"] ~= nil then
		User_SetXp(100,nUserId)
	end

	-- 接关联的任务(任务类型7，完成指定任务次数)
	NewTaskTemplate_Clear(nUserId)
	NewTaskTemplate_AcceptAssociat(nTaskId,nUserId)

	-- 接任务对白
	if not NewTaskTemplate_ChkDetection(nTaskId,nUserId) then
		local nNpcId = Get_NpcId()
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"NoCompleteTask",nUserId)
	end

	-- 播放剧情脚本
	if tNewTaskTemplate[nTaskId]["Accept"]["PlotId"] ~= nil then
		User_PlayPlot(tNewTaskTemplate[nTaskId]["Accept"]["PlotId"],nUserId)
	end

	-- 播放漫画
	if tNewTaskTemplate[nTaskId]["Accept"]["NoviceId"] ~= nil then
		User_NoviceTeaching(tNewTaskTemplate[nTaskId]["Accept"]["NoviceId"],nUserId)
	end

	-- 触发寻路
	-- if tNewTaskTemplate[nTaskId]["Accept"]["Find"] ~= nil then
		-- 判断是否寻路到NPC处
		-- if tNewTaskTemplate[nTaskId]["Accept"]["Find"]["NpcId"] ~= nil then
			-- NpcPosition_PathFind(tNewTaskTemplate[nTaskId]["Accept"]["Find"]["NpcId"])
		-- else
			-- local nPosX = tNewTaskTemplate[nTaskId]["Accept"]["Find"]["PosX"]
			-- local nPosY = tNewTaskTemplate[nTaskId]["Accept"]["Find"]["PosY"]
			-- local nMapId = tNewTaskTemplate[nTaskId]["Accept"]["Find"]["MapId"]
			-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
		-- end
		-- return
	-- end

	-- 触发传送
	-- if tNewTaskTemplate[nTaskId]["Accept"]["Transfer"] ~= nil then
		-- local nMapId = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["MapId"]
		-- local nPosX = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["PosX"]
		-- local nPosY = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["PosY"]
		-- local nBoundCX = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["BoundCX"] or 5
		-- local nBoundCY = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["BoundCY"] or 5
		-- local nCheck = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["Check"] or 0
		-- User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundCX,nBoundCY,nCheck,nUserId)
		-- return
	-- end
end

-- 交任务条件判断
function NewTaskTemplate_CompleteDemand(nTaskId,nUserId)
	-- 判断是否有需求条件
	if tNewTaskTemplate[nTaskId]["CompleteDemand"] == nil or type(tNewTaskTemplate[nTaskId]["CompleteDemand"]) ~= "table" then
		return false
	end

	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end

	-- 判断任务是否已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return false
	end

	local nNpcId = tNewTaskTemplate[nTaskId]["EndNpcId"]
	-- 等级判断
	if not NewTaskTemplate_ChkCompleteLevel(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"NoLevel",nUserId)
		return false
	end

	-- 转世判断
	if not NewTaskTemplate_ChkCompleteMetempsychosis(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"NoMetempsychosis",nUserId)
		return false
	end

	-- 坐标判断
	if not NewTaskTemplate_ChkUserPos(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"CompletePos",nUserId)
		return false
	end

	-- 职业阶级
	if not NewTaskTemplate_ChkUserProLevel(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"ProLevel",nUserId)
		return false
	end

	-- 战斗力
	if not NewTaskTemplate_ChkCompleteCombatPower(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"CompleteCombatPower",nUserId)
		return false
	end

	-- 任务掩码
	if not NewTaskTemplate_ChkCompleteTaskData(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"CompleteTaskData",nUserId)
		return false
	end

	-- 任务道具
	if not NewTaskTemplate_ChkCompleteItem(nTaskId,nUserId) then
		NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"CompleteItem",nUserId)
		return false
	end

	-- 背包空间判断
	if tNewTaskTemplate[nTaskId]["Complete"] ~= nil and tNewTaskTemplate[nTaskId]["Complete"]["Reward"] ~= nil then
		local bFlag,sCoent = RewardTemplate_UpperLimit(tNewTaskTemplate[nTaskId]["Complete"]["Reward"],nUserId)

		if not bFlag then
			-- 判断是否要出105弹框提示
			if tNewTaskTemplate[nTaskId]["Complete"]["Prompt"] ~= nil then
				if sCoent ~= nil and sCoent ~= "" then
					Sys_MsgBox(string.format(tRewardTemplate_Text["NoComplete"],sCoent),nil,nil,nUserId)
				end
			end

			NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"NoSpace",nUserId)
			return false
		end
	end

	return true
end

-- 交任务
function NewTaskTemplate_Complete(nTaskId,nUserId)
	-- 设置任务完成
	if not Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId) then
		return
	end
	
	-- 记录log
	local sNewTaskTemplate_CompleteTask = tNewTaskTemplate_Log["CompleteTask"]
	Sys_SaveActionTaskLog(string.format(sNewTaskTemplate_CompleteTask,nTaskId),nUserId)

	if tNewTaskTemplate[nTaskId]["Complete"] == nil or type(tNewTaskTemplate[nTaskId]["Complete"]) ~= "table" then
		return true
	end

	-- 给予完成任务的奖励
	if tNewTaskTemplate[nTaskId]["Complete"]["Reward"] ~= nil then
		RewardTemplate_UseItemAndMsg(tNewTaskTemplate[nTaskId]["Complete"]["Reward"],nUserId)
	end

	-- 关联任务(任务类型7，完成指定任务次数)
	-- NewTaskTemplate_TaskCount(nTaskId,nUserId)
	NewTaskTemplate_Clear(nUserId)

	-- 后续任务
	if tNewTaskTemplate[nTaskId]["Complete"]["NextTask"] ~= nil then
		NewTaskTemplate_AcceptMain(tNewTaskTemplate[nTaskId]["Complete"]["NextTask"],nUserId)
	end
	
	-- 完成任务后触发的剧情表现
	if tNewTaskTemplate[nTaskId]["Complete"]["PlotId"] ~= nil then
		User_PlayPlot(tNewTaskTemplate[nTaskId]["Complete"]["PlotId"],nUserId)
	end

	-- 完成任务弹窗界面窗口
	if tNewTaskTemplate[nTaskId]["Complete"]["DialogId"] ~= nil then
		User_OpenDialog(tNewTaskTemplate[nTaskId]["Complete"]["DialogId"],0,nUserId)
	end

	-- 完成任务弹漫画界面
	if tNewTaskTemplate[nTaskId]["Complete"]["NoviceId"] ~= nil then
		User_NoviceTeaching(tNewTaskTemplate[nTaskId]["Complete"]["NoviceId"],nUserId)
	end
	
	-- 接任务额外函数
	if tNewTaskTemplate[nTaskId]["Complete"]["CompleteFunc"] ~= nil and type(tNewTaskTemplate[nTaskId]["Complete"]["CompleteFunc"]) == "function"  then
		tNewTaskTemplate[nTaskId]["Complete"]["CompleteFunc"](nTaskId,nUserId)
	end
end

-- 检测之前是否有检测过
function NewTaskTemplate_ChkDetection(nTaskId,nUserId)
	if tNewTaskTemplate_MidCompleteDemand[nUserId] == nil then
		return false
	end

	if tNewTaskTemplate_MidCompleteDemand[nUserId][nTaskId] == nil then
		return false
	end

	return true
end

function NewTaskTemplate_SetDetection(nTaskId,nUserId)
	if tNewTaskTemplate_MidCompleteDemand[nUserId] == nil then
		tNewTaskTemplate_MidCompleteDemand[nUserId] = {}
	end

	tNewTaskTemplate_MidCompleteDemand[nUserId][nTaskId] = true
end

-- 中间任务中判断玩家是否满足完成任务条件
function NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId)
	-- 判断是否有需求条件
	if tNewTaskTemplate[nTaskId]["CompleteDemand"] == nil or type(tNewTaskTemplate[nTaskId]["CompleteDemand"]) ~= "table" then
		return false
	end

	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end

	-- 任务道具
	if not NewTaskTemplate_ChkCompleteItem(nTaskId,nUserId) then
		return false
	end

	-- 判断该任务是否已检测过，满足完成任务条件
	if NewTaskTemplate_ChkDetection(nTaskId,nUserId) then
		return true
	end

	-- 判断任务是否已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return false
	end

	-- 任务掩码
	if not NewTaskTemplate_ChkCompleteTaskData(nTaskId,nUserId) then
		return false
	end

	NewTaskTemplate_SetDetection(nTaskId,nUserId)

	-- 判断任务类型
	if tNewTaskTemplate[nTaskId]["Type"] == 8 then
		if tNewTaskTemplate[nTaskId]["Instance"] == nil then
			return
		end

		if tNewTaskTemplate[nTaskId]["Instance"]["Leave"] == nil or type(tNewTaskTemplate[nTaskId]["Instance"]["Leave"]) ~= "table" then
			return
		end

		local nMapId = tNewTaskTemplate[nTaskId]["Instance"]["Leave"]["MapId"]
		local nPosX = tNewTaskTemplate[nTaskId]["Instance"]["Leave"]["PosX"]
		local nPosY = tNewTaskTemplate[nTaskId]["Instance"]["Leave"]["PosY"]
		local nRange = tNewTaskTemplate[nTaskId]["Instance"]["Leave"]["Range"] or 5
		
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,nil,nUserId)
	end

	-- 105提示框
	if tNewTaskTemplate[nTaskId]["Msg"]["HandTask"] ~= nil then
		Sys_MsgBox(tNewTaskTemplate[nTaskId]["Msg"]["HandTask"],string.format("NewTaskTemplate_FindHandNpc</N>%d</N>%d",nTaskId,nUserId),nil,nUserId)
	end

	return true
end

-- 寻路到交任务NPC
function NewTaskTemplate_FindHandNpc(nTaskId,nUserId)
	-- 结束自动挂机
	User_StopHangUp(nUserId)
	-- 触发传送
	if tNewTaskTemplate[nTaskId]["Complete"]["Transfer"] ~= nil then
		local nMapId = tNewTaskTemplate[nTaskId]["Complete"]["Transfer"]["MapId"]
		local nPosX = tNewTaskTemplate[nTaskId]["Complete"]["Transfer"]["PosX"]
		local nPosY = tNewTaskTemplate[nTaskId]["Complete"]["Transfer"]["PosY"]
		local nBoundCX = tNewTaskTemplate[nTaskId]["Complete"]["Transfer"]["BoundCX"] or 5
		local nBoundCY = tNewTaskTemplate[nTaskId]["Complete"]["Transfer"]["BoundCY"] or 5
		local nCheck = tNewTaskTemplate[nTaskId]["Complete"]["Transfer"]["Check"] or 0
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundCX,nBoundCY,nCheck,nUserId)
		return
	end
	
	local nNpcId = tNewTaskTemplate[nTaskId]["EndNpcId"]
	NpcPosition_PathFind(nNpcId)
end

-- 中间步骤的判断
function NewTaskTemplate_MidDemand(nNpcId,nTaskId,nUserId)
	-- 判断是否有中间步骤
	if tNewTaskTemplate[nTaskId]["Middle"] == nil or type(tNewTaskTemplate[nTaskId]["Middle"]) ~= "table" then
		return false
	end

	-- 判断该任务中间步骤是否有NPC配置
	if tNewTaskTemplate[nTaskId]["Middle"]["Npc"] == nil or type(tNewTaskTemplate[nTaskId]["Middle"]["Npc"]) ~= "table" then
		return false
	end

	local tNpc = tNewTaskTemplate[nTaskId]["Middle"]["Npc"][nNpcId]
	
	if tNpc == nil or type(tNpc) ~= "table" then
		return false
	end

	-- 判断该任务是否已接
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end

	-- 判断任务是否已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return false
	end

	-- 判断是已满足交任务条件
	if NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId) then
		return false
	end

	-- 判断是否采集任务
	if tNewTaskTemplate[nTaskId]["Type"] == 6 then
		-- 检测采集道具是否已满足
		if NewTaskTemplate_ChkItem(tNpc,nUserId) then
			return false
		end

		-- 检测背包空间
		if not RewardTemplate_UpperLimit(tNewTaskTemplate[nTaskId]["Middle"]["Npc"][nNpcId]["Reward"],nUserId) then
			return false
		end

		return true
	end

	-- 判断该NPC是否已完成对应步骤
	local nIndex = tNpc["Index"]
	local nData = tNpc["Data"] or 1

	if Task_ChkTaskDetailValue(nTaskId,tostring(nIndex),">=",nData,nUserId) then
		return false
	end

	return true
end

-- 移动NPC
-- tNpc["Pos"] = {{1,2},{3,4},{5,6}}
function NewTaskTemplate_MoveNpc(nNpcId,nTaskId,nUserId)
	local tNpc = tNewTaskTemplate[nTaskId]["Middle"]["Npc"][nNpcId]
	local tPos = tNpc["Pos"]

	if tPos == nil or #tPos <= 1 then
		return
	end

	local tNewPos = {}
	local nNowPosX = Get_NpcPositionX(nNpcId)
	local nNowPosY = Get_NpcPositionY(nNpcId)
	local nMapId = Get_NpcMapID(nNpcId)

	for i,v in pairs(tPos) do
		if not (v[1] == nNowPosX and v[2] == nNowPosY) then
			table.insert(tNewPos,v)
		end
	end

	local nRandom = math.random(1,#tNewPos)
	Npc_MoveNpcPos(nNpcId,nMapId,tNewPos[nRandom][1],tNewPos[nRandom][2])
end

-- 中间任务操作
function NewTaskTemplate_Mid(nNpcId,nTaskId,nUserId)
	-- 中间步骤的判断
	if not NewTaskTemplate_MidDemand(nNpcId,nTaskId,nUserId) then
		return false
	end

	-- 判断是否采集任务
	if tNewTaskTemplate[nTaskId]["Type"] == 6 then
		NewTaskTemplate_MoveNpc(nNpcId,nTaskId,nUserId)
		-- 随机概率
		if not NewTaskTemplate_RandomAward(nTaskId) then
			if tNewTaskTemplate[nTaskId]["Msg"]["CollectFail"] ~= nil then
				Sys_MsgBox(tNewTaskTemplate[nTaskId]["Msg"]["CollectFail"],nil,nil,nUserId)
			end
			
			if tNewTaskTemplate[nTaskId]["Middle"]["FailEffect"] ~= nil then
				local sSzobj = tNewTaskTemplate[nTaskId]["Middle"]["FailEffect"]["SzObj"] or "self"
				local sEffect = tNewTaskTemplate[nTaskId]["Middle"]["FailEffect"]["Effect"]
				User_EffectAdd(sSzobj,sEffect,nUserId)
			end
			
			-- 接失败函数
			if tNewTaskTemplate[nTaskId]["Middle"]["FailFunc"] ~= nil then
				if tNewTaskTemplate[nTaskId]["Middle"]["FailFunc"](nTaskId,nUserId) then
					RewardTemplate_UseItemAndMsg(tNewTaskTemplate[nTaskId]["Middle"]["Npc"][nNpcId]["Reward"],nUserId)
					NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId)
					return
				end
			end
			
			return false
		end

		RewardTemplate_UseItemAndMsg(tNewTaskTemplate[nTaskId]["Middle"]["Npc"][nNpcId]["Reward"],nUserId)
		NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId)
		
		if tNewTaskTemplate[nTaskId]["Middle"]["MiddleFunc"] ~= nil then
			tNewTaskTemplate[nTaskId]["Middle"]["MiddleFunc"](nTaskId,nUserId)
		end
		return
	end

	-- 设值
	local tNpc = tNewTaskTemplate[nTaskId]["Middle"]["Npc"][nNpcId]
	local nIndex = tNpc["Index"]
	local nData = tNpc["Data"] or 1

	Task_SetTaskDetailData(nTaskId,nData,tostring(nIndex),nUserId)
	NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId)
end

-- 中间任务接口
function NewTaskTemplate_MidMain(nNpcId,nTaskId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 判断是否有中间步骤
	if tNewTaskTemplate[nTaskId]["Middle"] == nil or type(tNewTaskTemplate[nTaskId]["Middle"]) ~= "table" then
		return false
	end

	-- 判断是否读条
	if tNewTaskTemplate[nTaskId]["Middle"]["Reading"] ~= nil and type(tNewTaskTemplate[nTaskId]["Middle"]["Reading"]) == "table" then
		local sFunc = string.format("NewTaskTemplate_Mid</N>%d</N>%d",nNpcId,nTaskId)
		local nSecs = tNewTaskTemplate[nTaskId]["Middle"]["Reading"]["Secs"]
		local sContent = tNewTaskTemplate[nTaskId]["Middle"]["Reading"]["Content"]
		local nActionId = tNewTaskTemplate[nTaskId]["Middle"]["Reading"]["ActionId"]

		User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
		return
	end

	NewTaskTemplate_Mid(nNpcId,nTaskId,nUserId)
end

-- 怪物任务检测
function NewTaskTemplate_MonsterDemand(nMonsterId,nTaskId,nUserId)
	-- 判断是否有中间步骤
	if tNewTaskTemplate[nTaskId]["Middle"] == nil or type(tNewTaskTemplate[nTaskId]["Middle"]) ~= "table" then
		return false
	end

	-- 判断该任务中间步骤是否有NPC配置
	if tNewTaskTemplate[nTaskId]["Middle"]["Monster"] == nil or type(tNewTaskTemplate[nTaskId]["Middle"]["Monster"]) ~= "table" then
		return false
	end

	local tMonster = tNewTaskTemplate[nTaskId]["Middle"]["Monster"][nMonsterId]
	
	if tMonster == nil or type(tMonster) ~= "table" then
		return false
	end

	-- 判断该任务是否已接
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end

	-- 判断任务是否已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return false
	end

	-- 判断是已满足交任务条件
	if NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId) then
		return false
	end

	local nType = tNewTaskTemplate[nTaskId]["Type"]
	-- 判断是杀怪计数类型
	if nType == 4 or nType == 8 then
		-- 判断该怪物是否已完成对应步骤
		local nIndex = tMonster["Index"]
		local nData = tMonster["Data"] or 1
		if Task_ChkTaskDetailValue(nTaskId,tostring(nIndex),">=",nData,nUserId) then
			return false
		end

		return true
	-- 还是杀怪掉落类型
	elseif nType == 5 then
		-- 判断任务道具是否已满足
		if NewTaskTemplate_ChkItem(tMonster,nUserId) then
			return false
		end

		return true
	end
end

-- 概率判断是否有掉落（采集）
function NewTaskTemplate_RandomAward(nTaskId)
	local nRandom = tNewTaskTemplate[nTaskId]["Middle"]["IsRandom"]
	if nRandom == nil then
		return true
	end

	local nFlat,tAward = Probabil_RandomAward(tNewTaskTemplate[nTaskId]["Middle"],"Random")

	if next(tAward) == nil then
		return true
	end

	local tReward = MonsterTask_GetItemId(tAward[1])
	if tReward == nil then
		return true
	end

	local nItemId = tReward["Item_1"]
	if nItemId == nil or type(nItemId) ~= "number" then
		return false
	end

	return true
end

-- 怪物任务触发操作
function NewTaskTemplate_Monster(nMonsterId,nTaskId,nUserId)
	local nType = tNewTaskTemplate[nTaskId]["Type"]
	local tMonster = tNewTaskTemplate[nTaskId]["Middle"]["Monster"][nMonsterId]

	-- 判断是杀怪计数类型
	if nType == 4 or nType == 8 then
		-- 判断是否要组队共享
		if tNewTaskTemplate[nTaskId]["Shared"] == 1 then
			-- 判断队伍人数
			local nTeamNum = Get_UserTeamNumbers(nUserId)
			if nTeamNum >= 2 then
				local sFunc = string.format("NewTaskTemplate_Shared</N>%d</N>%d",nMonsterId,nTaskId)
				local nRange = tNewTaskTemplate[nTaskId]["Range"] or 2
				User_TeamExeFuncByTeamer(nRange,sFunc,nUserId)
				return
			end
		end

		local nIndex = tMonster["Index"]
		Task_AddTaskDetailData(nTaskId,1,tostring(nIndex),nUserId)

		-- 判断是已满足交任务条件
		NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId)

	-- 还是杀怪掉落类型
	elseif nType == 5 then
		-- 判断是掉落地上还是背包
		if tMonster["DropType"] == 1 then
			-- 背包空间判断
			if not RewardTemplate_CheckSpace(tMonster["Reward"],nUserId) then
				-- 105弹框
				if tNewTaskTemplate[nTaskId]["Msg"]["MonsterNoSpace"] ~= nil then
					if tNewTaskTemplate_NoSpace[nUserId] == nil then
						Sys_MsgBox(tNewTaskTemplate[nTaskId]["Msg"]["MonsterNoSpace"],"NewTaskTemplate_Clear</N>" .. nUserId,"NewTaskTemplate_Clear</N>" .. nUserId,nUserId)
					end
				end
				return
			end
		end

		-- 随机概率
		if not NewTaskTemplate_RandomAward(nTaskId) then
			return false
		end

		if tMonster["DropType"] == 1 then
			RewardTemplate_UseItemAndMsg(tMonster["Reward"],nUserId)
			NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId)
		else
			local nItemId = tMonster["ItemId"]
			local nItemNum = tMonster["DropNum"] or 1
			local nRange = tMonster["DropRange"] or 1
		
			Monster_DropMultiItem(nItemId,nItemNum,nRange)
		end
	end
end

function NewTaskTemplate_Clear(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	tNewTaskTemplate_NoSpace[nUserId] = nil
	tNewTaskTemplate_MidCompleteDemand[nUserId] = nil
end

-- 组队共享
function NewTaskTemplate_Shared(nMonsterId,nTaskId,nUserId)
	if NewTaskTemplate_MonsterDemand(nMonsterId,nTaskId,nUserId) then
		local tMonster = tNewTaskTemplate[nTaskId]["Middle"]["Monster"][nMonsterId]
		local nIndex = tMonster["Index"]
		Task_AddTaskDetailData(nTaskId,1,tostring(nIndex),nUserId)
	end
end

-- 服务器启动后自动加载
function NewTaskTemplate_StartServer()
	tNewTaskAcceptNpc = {}		--接任务NPC配置
	tNewTaskMidNpc = {}			--中间任务NPC配置
	tNewTaskHandOverNpc = {}	--交任务NPC配置
	tNewTaskMonster = {}		--怪物关联任务ID

	for i,v in pairs(tNewTaskTemplate) do
		-- 接任务NPC
		if v["BeginNpcId"] ~= nil then
			if tNewTaskAcceptNpc[v["BeginNpcId"]] == nil then
				tNewTaskAcceptNpc[v["BeginNpcId"]] = {}
			end
			table.insert(tNewTaskAcceptNpc[v["BeginNpcId"]],i)
		end

		-- 交任务NPC
		if v["EndNpcId"] ~= nil then
			if tNewTaskHandOverNpc[v["EndNpcId"]] == nil then
				tNewTaskHandOverNpc[v["EndNpcId"]] = {}
			end
			table.insert(tNewTaskHandOverNpc[v["EndNpcId"]],i)
		end

		-- 中间任务NPC
		if v["Middle"] ~= nil and v["Middle"]["Npc"] ~= nil then
			for a,b in pairs(v["Middle"]["Npc"]) do
				if tNewTaskMidNpc[a] == nil then
					tNewTaskMidNpc[a] = {}
				end
				table.insert(tNewTaskMidNpc[a],i)
			end
		end

		-- 怪物关联
		if v["Middle"] ~= nil and v["Middle"]["Monster"] ~= nil then
			for a,b in pairs(v["Middle"]["Monster"]) do
				if tNewTaskMonster[a] == nil then
					tNewTaskMonster[a] = {}
				end
				table.insert(tNewTaskMonster[a],i)
			end
		end
	end
end

function NewTaskTemplate_ChkAssociatTask(tInfo,nUserId)
	local nAssociatTaskId = tInfo["TaskId"]
	local nIndex = tInfo["Index"]
	if nAssociatTaskId == nil or nIndex == nil then
		return false
	end

	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nAssociatTaskId,nUserId) then
		return false
	end

	-- 判断任务是否已完成
	if Task_ChkTaskDetailValue(nAssociatTaskId,"CompleteFlag",">=",1,nUserId) then
		return false
	end

	if tNewTaskTemplate[nAssociatTaskId] == nil or tNewTaskTemplate[nAssociatTaskId]["CompleteDemand"] == nil or tNewTaskTemplate[nAssociatTaskId]["CompleteDemand"]["TaskData"] == nil then
		return false
	end

	-- 判断该任务是否满足完成任务了
	local tTaskData = tNewTaskTemplate[nAssociatTaskId]["CompleteDemand"]["TaskData"]
	if Task_ChkTaskDetailValue(nAssociatTaskId,tostring(nIndex),">=",tTaskData[nIndex],nUserId) then
		return false
	end

	Task_AddTaskDetailData(nAssociatTaskId,1,tostring(nIndex),nUserId)

	-- 判断任务是否完成
	NewTaskTemplate_MidChkCompleteDemand(nAssociatTaskId,nUserId)
end

-- 职业进阶回调
function NewTaskTemplate_ProfLevUp(nUserId,nPro)
	-- 解析成具体职阶
	local nProLev = Get_UserProLev(nPro,nUserId)

	-- 判断是否有任务数据
	if tNewTaskProfLevUp[nProLev] == nil or type(tNewTaskProfLevUp[nProLev]) ~= "table" then
		return
	end

	local tNeedPro = tNewTaskProfLevUp[nProLev]["Pro"]

	-- 判断需要的职业
	if tNeedPro ~= nil then
		local bProType = false
		local nProType = Get_UserProType(nPro,nUserId)
		for i,v in pairs(tNeedPro) do
			if v == nProType then
				bProType = true
				break
			end
		end

		if not bProType then
			return
		end
	end

	local nTaskId = tNewTaskProfLevUp[nProLev]["TaskId"]

	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	else
		-- 判断任务是否已完成
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
			return
		end
	end

	-- 设置任务完成
	if not Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId) then
		return
	end

	return
end

------------------------------------------------------------------开放接口--------------------------------------------------------------------
-- 接任务接口
function NewTaskTemplate_AcceptMain(nTaskId,nNowUserId)
	-- 判断任务模板数据是否有配置
	if tNewTaskTemplate[nTaskId] == nil or type(nTaskId) ~= "number" then
		return false
	end

	local nUserId = nNowUserId or Get_UserId()
	-- 接任务判断
	if not NewTaskTemplate_AcceptDemand(nTaskId,nUserId) then
		return false
	end

	-- 接任务
	NewTaskTemplate_Accept(nTaskId,nUserId)
end

-- 交任务接口
function NewTaskTemplate_CompleteMain(nTaskId,nNowUserId)
	-- 判断任务模板数据是否有配置
	if tNewTaskTemplate[nTaskId] == nil or type(nTaskId) ~= "number" then
		return false
	end

	local nUserId = nNowUserId or Get_UserId()
	-- 交任务判断
	if not NewTaskTemplate_CompleteDemand(nTaskId,nUserId) then
		return false
	end

	-- 交任务
	NewTaskTemplate_Complete(nTaskId,nUserId)
end

-- 任务计数
function NewTaskTemplate_TaskCount(nTaskId,nUserId)
	-- 判断任务模板数据是否有配置
	if tNewTaskTemplate[nTaskId] == nil or type(nTaskId) ~= "number" then
		return false
	end

	if tNewTaskTemplate[nTaskId]["Complete"] == nil or tNewTaskTemplate[nTaskId]["Complete"]["Associat"] == nil then
		return false
	end

	-- 循环判断
	for i,v in pairs(tNewTaskTemplate[nTaskId]["Complete"]["Associat"]) do
		NewTaskTemplate_ChkAssociatTask(v,nUserId)
	end
end

-- 接任务后未完成任务对白，该接口只触发寻路
function NewTaskTemplate_Find(nTaskId)
	-- 触发寻路
	if tNewTaskTemplate[nTaskId]["Accept"]["Find"] ~= nil then
		-- 判断是否寻路到NPC处
		if tNewTaskTemplate[nTaskId]["Accept"]["Find"]["NpcId"] ~= nil then
			NpcPosition_PathFind(tNewTaskTemplate[nTaskId]["Accept"]["Find"]["NpcId"])
		else
			local nPosX = tNewTaskTemplate[nTaskId]["Accept"]["Find"]["PosX"]
			local nPosY = tNewTaskTemplate[nTaskId]["Accept"]["Find"]["PosY"]
			local nMapId = tNewTaskTemplate[nTaskId]["Accept"]["Find"]["MapId"]
			Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
		end
		-- return
		
	-- 触发传送
	elseif tNewTaskTemplate[nTaskId]["Accept"]["Transfer"] ~= nil then
		local nMapId = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["MapId"]
		local nPosX = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["PosX"]
		local nPosY = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["PosY"]
		local nBoundCX = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["BoundCX"] or 5
		local nBoundCY = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["BoundCY"] or 5
		local nCheck = tNewTaskTemplate[nTaskId]["Accept"]["Transfer"]["Check"] or 0
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundCX,nBoundCY,nCheck,nUserId)
		-- return
	end
	
	-- 接任务函数
	if tNewTaskTemplate[nTaskId]["Accept"]["AcceptFunc"] ~= nil and type(tNewTaskTemplate[nTaskId]["Accept"]["AcceptFunc"]) == "function"  then
		tNewTaskTemplate[nTaskId]["Accept"]["AcceptFunc"](nTaskId,nUserId)
	end
	
	-- 播放剧情
	if tNewTaskTemplate[nTaskId]["Accept"]["NewPlotId"] ~= nil then
		User_PlayPlot(tNewTaskTemplate[nTaskId]["Accept"]["NewPlotId"],nUserId)
	end
	
	-- 判断是否有配置副本配置
	if tNewTaskTemplate[nTaskId]["Instance"] ~= nil then
		-- 创建副本成功
		if Instance_Enter(tNewTaskTemplate[nTaskId]["Instance"],nUserId) then
			if tNewTaskTemplate[nTaskId]["Middle"] == nil or tNewTaskTemplate[nTaskId]["Middle"]["Monster"] == nil then
				return false
			end

			-- 清除任务掩码
			local tMonster = tNewTaskTemplate[nTaskId]["Middle"]["Monster"]
			for i,v in pairs(tMonster) do
				local nIndex = v["Index"]
				Task_SetTaskDetailData(nTaskId,0,tostring(nIndex),nUserId)
			end
		end
	end
	
	return
end

-- 创建副本
function NewTaskTemplate_CreateInstance(nTaskId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()

	-- 判断任务模板数据是否有配置
	if tNewTaskTemplate[nTaskId] == nil or type(nTaskId) ~= "number" then
		return false
	end

	-- 判断是否有配置副本配置
	if tNewTaskTemplate[nTaskId]["Instance"] == nil then
		return false
	end

	-- 判断任务是否已接受
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end

	-- 判断任务是否已经完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return false
	end
	
	-- 任务掩码
	if NewTaskTemplate_MidChkCompleteDemand(nTaskId,nUserId) then
		return false
	end
	
	if tNewTaskTemplate[nTaskId]["CompleteDemand"] ~= nil and type(tNewTaskTemplate[nTaskId]["CompleteDemand"]) == "table" then
		if NewTaskTemplate_ChkCompleteItem(nTaskId,nUserId) and NewTaskTemplate_ChkCompleteTaskData(nTaskId,nUserId) then
			return false
		end
	end

	-- 创建副本成功
	if Instance_Enter(tNewTaskTemplate[nTaskId]["Instance"],nUserId) then
		-- 进入副本初始化函数
		if tNewTaskTemplate[nTaskId]["Instance"]["InitFunc"] ~= nil then
			tNewTaskTemplate[nTaskId]["Instance"]["InitFunc"](nTaskId,nUserId)
		end
		if tNewTaskTemplate[nTaskId]["Middle"] == nil or tNewTaskTemplate[nTaskId]["Middle"]["Monster"] == nil then
			return false
		end

		-- 清除任务掩码
		local tMonster = tNewTaskTemplate[nTaskId]["Middle"]["Monster"]
		for i,v in pairs(tMonster) do
			local nIndex = v["Index"]
			Task_SetTaskDetailData(nTaskId,0,tostring(nIndex),nUserId)
		end
	end
end

-- 检测显示对白
function NewTaskTemplate_ChkShowDialog(nNewTaskTemplate_TaskId)
	-- 检测是否是剧情任务
	local tNewTaskTemplate_SpeTaskId = tNewTaskTemplate_Count["AllQuest"][1]
	if SpecialServer_ChkNoGiftServer() then
		tNewTaskTemplate_SpeTaskId = tNewTaskTemplate_Count["AllQuest"][3]
	end
	local nNewTaskTemplate_StartId = tNewTaskTemplate_SpeTaskId[1]
	local nNewTaskTemplate_EndId = tNewTaskTemplate_SpeTaskId[2]
	if nNewTaskTemplate_TaskId < nNewTaskTemplate_StartId then
		return false
	end
	if nNewTaskTemplate_TaskId > nNewTaskTemplate_EndId then
		for i,v in pairs(tNewTaskTemplate_Count["AllQuest"][2]) do
			if nNewTaskTemplate_TaskId == v then
				return true
			end
		end
		return false
	end
	
	-- 检测是否是忍者
	-- 获取玩家职阶
	local nNewTaskTemplate_ProLev = Get_NewUserProfession()
	-- 获取玩家职业类型
	local nNewTaskTemplate_Pro = Get_UserProType(nNewTaskTemplate_ProLev)
	
	if nNewTaskTemplate_Pro ~= tNewTaskTemplate_Count["ProType"] then
		return false
	end
	
	-- 检测剧情任务等级
	return true
end

-- NPC的主接(固定的actionId)
function NewTaskTemplate_NpcMain()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()

	-- 判断是否有可交任务
	if tNewTaskHandOverNpc[nNpcId] ~= nil and type(tNewTaskHandOverNpc[nNpcId]) == "table" then
		for i,nTaskId in pairs(tNewTaskHandOverNpc[nNpcId]) do
			-- 判断任务是否已完成
			if Task_ChkTaskDetail(nTaskId,nUserId) and (not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId)) then
				NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"Complete",nUserId)
				return
			end
		end
	end

	-- 判断是否有可接任务
	if tNewTaskAcceptNpc[nNpcId] ~= nil and type(tNewTaskAcceptNpc[nNpcId]) == "table" then
		for i,nTaskId in pairs(tNewTaskAcceptNpc[nNpcId]) do
			local bAccept,bDialogue = NewTaskTemplate_AcceptDemand(nTaskId,nUserId)
			if bAccept then
				NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"Accept",nUserId)
				return
			else
				local bNewDialogue = NewTaskTemplate_ChkShowDialog(nTaskId)
				if bDialogue and bNewDialogue then
					return
				end
			end
		end
	end

	-- 判断是否有中间步骤任务
	if tNewTaskMidNpc[nNpcId] ~= nil and type(tNewTaskMidNpc[nNpcId]) == "table" then
		for i,nTaskId in pairs(tNewTaskMidNpc[nNpcId]) do
			if NewTaskTemplate_MidDemand(nNpcId,nTaskId,nUserId) then
				if tNewTaskTemplate[nTaskId]["Msg"] == nil or tNewTaskTemplate[nTaskId]["Msg"]["Middle"] == nil or tNewTaskTemplate[nTaskId]["Msg"]["Middle"][nNpcId] == nil then
					NewTaskTemplate_MidMain(nNpcId,nTaskId,nUserId)
				else
					LinkNpcGossipFunc_New(nNpcId,tNewTaskTemplate[nTaskId]["Msg"]["Middle"][nNpcId],nil,nil,nUserId)
				end
				return
			end
		end
	end

	-- 判断是否有已接未完成的任务
	if tNewTaskAcceptNpc[nNpcId] ~= nil and type(tNewTaskAcceptNpc[nNpcId]) == "table" then
		for i,nTaskId in pairs(tNewTaskAcceptNpc[nNpcId]) do
			if Task_ChkTaskDetail(nTaskId,nUserId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0,nUserId) then
				NewTaskTemplate_NpcDialogue(nTaskId,nNpcId,"NoCompleteTask",nUserId)
				return
			end
		end
	end

	if tNewTaskGossipNpc[nNpcId] == nil then
		if tNewNoDialogue[nNpcId] == nil then
			LinkNpcMain()
		end
	else
		if nNpcId == 25850 then
			if NinjaQuest_ChkQuest(nNpcId) then
				return
			end
		end
		if nNpcId == 25852 then
			if NinjaQuest_ChkNewQuest(nNpcId) then
				return
			end
		end
		local nRandom = math.random(1,#tNewTaskGossipNpc[nNpcId])
		LinkNpcGossipFunc_New(nNpcId,tNewTaskGossipNpc[nNpcId][nRandom],nil,nil,nUserId)
	end
end

-- 怪物死亡触发
function NewTaskTemplate_MonsterMain(nMonsterId)
	if tNewTaskMonster[nMonsterId] == nil then
		return
	end

	local nUserId = Get_UserId()
	for i,nTaskId in pairs(tNewTaskMonster[nMonsterId]) do
		if NewTaskTemplate_MonsterDemand(nMonsterId,nTaskId,nUserId) then
			NewTaskTemplate_Monster(nMonsterId,nTaskId,nUserId)
		end
	end
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],NewTaskTemplate_StartServer)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,NewTaskTemplate_Clear)

table.insert(tGetProfLevUpReward["tFunction"],NewTaskTemplate_ProfLevUp)
