------------------------------------------------------------------------------------
--Name:		[181121[简体征服][活动脚本]熔炼炉引导任务
--Purpose:	熔炼炉引导任务
--Creator: 	严振飞
--Created:	2018/11/21
------------------------------------------------------------------------------------
-- logId: 12001223

-- #stc 掩码说明 
-- #stc(186,34) 背包信
-- #task 掩码说明
-- #4061 熔炼材料任务
-- #stc 掩码说明 
-- #stc(186,76) 正气令获得熔炼晶石
-- #stc(186,77) 打怪掉落熔炼晶石
-- #stc(186,78) 开启显著功勋礼包获得熔炼晶石
----------------------------------数据部分配置--------------------------------------------
local tMeltingStove_Data = {}
	tMeltingStove_Data["TaskId"] = {}
	tMeltingStove_Data["TaskId"]["Normal"] = 4061
	tMeltingStove_Data["TaskId"]["NoGift"] = 4062
	tMeltingStove_Data["NeedLevel"] = 80
	tMeltingStove_Data["NeedMetempsychosis"] = 0
	
local tMeltingStove_Time = {}
	tMeltingStove_Time["ActivityTime"] = tActivityTime["MeltingStove"]["ActivityTime"]

local tMeltingStove_Reward = {}
	-- 给熔炼晶石
	tMeltingStove_Reward[35016] = {}
	tMeltingStove_Reward[35016]["RewardItem"] = {}
	tMeltingStove_Reward[35016]["RewardItem"][1] = {}
	tMeltingStove_Reward[35016]["RewardItem"][1]["Id"] = 3311730
	tMeltingStove_Reward[35016]["RewardItem"][1]["Attr"] = "0 5"
	tMeltingStove_Reward[35016]["RewardEffect"] = {}
	tMeltingStove_Reward[35016]["RewardEffect"]["Effect"] = "angelwing"
	tMeltingStove_Reward[35016]["LogId"] = 12001223

local tMeltingStove_MonsterDrop = {}
	--stc = 18677 限制每人活动期间每天普通服打怪产出3个熔炼晶石
	tMeltingStove_MonsterDrop["EventType"] = 186
	tMeltingStove_MonsterDrop["DataType"] = 77
	tMeltingStove_MonsterDrop["RewardData"] = 3 ----每天限制的次数
	tMeltingStove_MonsterDrop["RewardDelay"] = 1 ---掩码的间隔时间
	tMeltingStove_MonsterDrop["RewardTimeType"] = 4 --掩码的间隔时间类型
	tMeltingStove_MonsterDrop["RewardItem"] = {}
	tMeltingStove_MonsterDrop["RewardItem"][1] = {}
	tMeltingStove_MonsterDrop["RewardItem"][1]["Id"] = 3311730 --熔炼晶石
	tMeltingStove_MonsterDrop["RewardItem"][1]["Attr"] = "0 1"
	tMeltingStove_MonsterDrop["RewardEffect"]={}
	tMeltingStove_MonsterDrop["RewardEffect"]["Effect"]="angelwing"
	tMeltingStove_MonsterDrop["LogId"] = 12001223
	tMeltingStove_MonsterDrop["LimitTalk"] = tMeltingStove_Text["DropLimit"]
	tMeltingStove_MonsterDrop["HaveReceiveNoTip"] = 1
	
local tMeltingStove_MonsterDrop_NoGift = {}
	--stc = 18677 限制每人活动期间每天普通服打怪产出5个熔炼晶石
	tMeltingStove_MonsterDrop_NoGift["EventType"] = 186
	tMeltingStove_MonsterDrop_NoGift["DataType"] = 77
	tMeltingStove_MonsterDrop_NoGift["RewardData"] = 5 ----每天限制的次数
	tMeltingStove_MonsterDrop_NoGift["RewardDelay"] = 1 ---掩码的间隔时间
	tMeltingStove_MonsterDrop_NoGift["RewardTimeType"] = 4 --掩码的间隔时间类型
	tMeltingStove_MonsterDrop_NoGift["RewardItem"] = {}
	tMeltingStove_MonsterDrop_NoGift["RewardItem"][1] = {}
	tMeltingStove_MonsterDrop_NoGift["RewardItem"][1]["Id"] = 3311730 --熔炼晶石
	tMeltingStove_MonsterDrop_NoGift["RewardItem"][1]["Attr"] = "0 1"
	tMeltingStove_MonsterDrop_NoGift["RewardEffect"]={}
	tMeltingStove_MonsterDrop_NoGift["RewardEffect"]["Effect"]="angelwing"
	tMeltingStove_MonsterDrop_NoGift["LogId"] = 12001223
	tMeltingStove_MonsterDrop_NoGift["LimitTalk"] = tMeltingStove_Text["NoGiftDropLimit"]
	tMeltingStove_MonsterDrop_NoGift["HaveReceiveNoTip"] = 1
	
local tMeltingStove_Use3007108 = {}
	--stc = 18678 限制每人活动期间每天开启显著功勋礼包产出1个熔炼晶石
	tMeltingStove_Use3007108["EventType"] = 186
	tMeltingStove_Use3007108["DataType"] = 78
	tMeltingStove_Use3007108["RewardData"] = 1 ----每天限制的次数
	tMeltingStove_Use3007108["RewardDelay"] = 1 ---掩码的间隔时间
	tMeltingStove_Use3007108["RewardTimeType"] = 4 --掩码的间隔时间类型
	tMeltingStove_Use3007108["RewardItem"] = {}
	tMeltingStove_Use3007108["RewardItem"][1] = {}
	tMeltingStove_Use3007108["RewardItem"][1]["Id"] = 3311730 --熔炼晶石
	tMeltingStove_Use3007108["RewardItem"][1]["Attr"] = "0 1"
	tMeltingStove_Use3007108["RewardEffect"]={}
	tMeltingStove_Use3007108["RewardEffect"]["Effect"]="angelwing"
	tMeltingStove_Use3007108["LogId"] = 12001223
	tMeltingStove_Use3007108["HaveReceiveNoTip"] = 1
----------------------------------逻辑部分配置--------------------------------------------
-- 乾坤八卦炉 接入
function MeltingStove_NpcMain()
	local nNpcId = Get_NpcId()
	
	-- 等级限制
	local nNeedLevel = tMeltingStove_Data["NeedLevel"]
	local nNeedMete = tMeltingStove_Data["NeedMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nNeedLevel,nNeedMete) then
		tNpcGossip[nNpcId]["tOption1-1"] = {111,112}
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 首次（未接任务）自动接任务
	local nTaskId = MeltingStove_GetTaskId()
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			tNpcGossip[nNpcId]["tOption1-1"] = {111,112}
			LinkNpcGossipFunc_New(nNpcId,"1-1")
			return
		end
	end
	
	-- 未完成任务
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		Task_SetTaskDetailData1(nTaskId,0)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		tNpcGossip[nNpcId]["tOption1-1"] = {111,112}
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 非首次开启熔炼炉界面
	User_OpenDialog(924)
end

-- 首次熔炼
function MeltingStove_Open1st(nNpcId)
	-- 等级限制
	local nNeedLevel = tMeltingStove_Data["NeedLevel"]
	local nNeedMete = tMeltingStove_Data["NeedMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nNeedLevel,nNeedMete) then
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tMeltingStove_Reward[nNpcId])
	local nItemId = tMeltingStove_Reward[nNpcId]["RewardItem"][1]["Id"]
	-- 背包空间不足且背包无熔炼晶石
	if not User_CheckLeftSpace(nSpace) and (Get_CountItemType(nItemId,0)%10000 <= 9995) then
		User_TalkChannel2005(tMeltingStove_Text["NoSpace"])
		return
	end
	
	-- 未接任务（自动接任务）
	local nTaskId = MeltingStove_GetTaskId()
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			User_OpenDialog(924)
			return
		end
	end
	
	-- 开界面
	User_OpenDialog(924)
	
	-- 未完成（完成任务）
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		MeltingStove_CompleteTask()
		-- 给熔炼晶石
		RewardTemplate_UseItem(tMeltingStove_Reward[nNpcId])
		User_TalkChannel2005(tMeltingStove_Text["GetMaterial"])
	end
end

-- 熔炼材料详情
function MeltingStove_StoveMaterial()
	local nNpcId = Get_NpcId()
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 上线给任务
function MeltingStove_AcceptTask()
	-- 等级限制
	local nNeedLevel = tMeltingStove_Data["NeedLevel"]
	local nNeedMete = tMeltingStove_Data["NeedMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nNeedLevel,nNeedMete) then
		return
	end

	-- 接到任务
	local nTaskId = MeltingStove_GetTaskId()
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	-- 接到未完成
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		-- 重置
		Task_SetTaskDetailData1(nTaskId,0)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
	end
end

-- 完成任务
function MeltingStove_CompleteTask()
		-- 等级限制
	local nNeedLevel = tMeltingStove_Data["NeedLevel"]
	local nNeedMete = tMeltingStove_Data["NeedMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nNeedLevel,nNeedMete) then
		return
	end

	-- 接到任务
	local nTaskId = MeltingStove_GetTaskId()
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	-- 接到未完成
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		Task_SetTaskDetailData1(nTaskId,1)
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
		User_TalkChannel2005(tMeltingStove_Text["CompleteTask"])
	end
end

-- 取任务ID
function MeltingStove_GetTaskId()
	-- if SpecialServer_ChkNoGiftServer() then
		-- return tMeltingStove_Data["TaskId"]["NoGift"]
	-- else
		return tMeltingStove_Data["TaskId"]["Normal"]
	-- end
end

function MeltingStove_KillMonster()
	if not Sys_ChkFullTime(tMeltingStove_Time["ActivityTime"]) then
		return
	end
	if Get_UserLevel() < tMeltingStove_Data["NeedLevel"] then
		return
	end
	
	local tReward
	local nDrop
		--判断是否激情服
	-- if SpecialServer_ChkNoGiftServer() then
		-- tReward = tMeltingStove_MonsterDrop_NoGift
		-- nDrop = 20
	-- else
		tReward = tMeltingStove_MonsterDrop
		nDrop = 10
	-- end
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	local nItemId = tReward["RewardItem"][1]["Id"]
	--背包满
	if (not User_CheckLeftSpace(nSpace)) and (Get_CountItemType(nItemId,0)%10000 == 0) then
		return
	end
	local nEvent = tReward["EventType"]
	local nType = tReward["DataType"] 
	local nLimit = tReward["RewardData"] 
	if Get_UserStatisticValue(nEvent,nType)%10000 == nLimit and not Task_StcInterval(nEvent,nType,1,4) then
		Sys_MsgBox(tReward["LimitTalk"])
		Task_AddStatistic(nEvent,nType,1,1)
	end
	-- 普通服0.1%概率掉落，激情服0.2%概率掉落
	local nRandom = math.random(1,10000)
	if nRandom > nDrop then
		return
	end
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 使用显著功勋礼包判断背包空间
function MeltingStove_Use3007108CheckSpace(nSpace)
--判断是否激情服
	-- if SpecialServer_ChkNoGiftServer() then
		-- return nSpace
	-- end
	if Get_UserLevel() < tMeltingStove_Data["NeedLevel"] then
		return nSpace
	end
	if Sys_ChkFullTime(tMeltingStove_Time["ActivityTime"]) and Task_StcInterval(tMeltingStove_Use3007108["EventType"],tMeltingStove_Use3007108["DataType"],1,4) then
		nSpace = nSpace + 1
	end
	return nSpace
end

-- 使用显著功勋礼包获得熔炼晶石
function MeltingStove_Use3007108()
--判断是否激情服
	-- if SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	if Get_UserLevel() < tMeltingStove_Data["NeedLevel"] then
		return
	end
	if Sys_ChkFullTime(tMeltingStove_Time["ActivityTime"]) and Task_StcInterval(tMeltingStove_Use3007108["EventType"],tMeltingStove_Use3007108["DataType"],1,4) then
		RewardTemplate_UseItemAndMsg(tMeltingStove_Use3007108)
	end
end
----------------------------------模块部分配置--------------------------------------------
-- 35016 乾坤五行炉
tNpcGossip[35016] = tNpcGossip[35016] or DefaultNpc:new{}
tNpcGossip[35016]["OptionHidden"] = 1
tNpcGossip[35016]["DialogueText"] = tMeltingStove_Text[35016]
tNpcGossip[35016]["Text1-1"] = {111,112,113}
tNpcGossip[35016]["tOption1-1"] = {111,112}
tNpcGossip[35016]["OptionChkFunc111"] = function ()
	-- 等级限制
	local nNeedLevel = tMeltingStove_Data["NeedLevel"]
	local nNeedMete = tMeltingStove_Data["NeedMetempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nNeedLevel,nNeedMete) then
		return false
	end
	return true
end
tNpcGossip[35016]["OptionChkFunc112"] = function ()
	-- 等级限制
	local nNeedLevel = tMeltingStove_Data["NeedLevel"]
	local nNeedMete = tMeltingStove_Data["NeedMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nNeedLevel,nNeedMete) then
		return false
	end
	return true
end
tNpcGossip[35016]["OptionFunc112"] = "MeltingStove_Open1st</N>35016"
tNpcGossip[35016]["Text2-1"] = {211,212,213,214,215,212,216}
tNpcGossip[35016]["tOption2-1"] = {211,212,213,214,215,216}
tNpcGossip[35016]["OptionPoint211"] = "2-2"
tNpcGossip[35016]["OptionPoint212"] = "2-3"
tNpcGossip[35016]["OptionPoint213"] = "2-4"
tNpcGossip[35016]["OptionPoint214"] = "2-5"
tNpcGossip[35016]["OptionPoint215"] = "2-6"
tNpcGossip[35016]["OptionPoint216"] = "2-7"
tNpcGossip[35016]["Text2-2"] = {221,212,222,223,224,225,226,227,228,229,212,230}
tNpcGossip[35016]["tOption2-2"] = {221,222}
tNpcGossip[35016]["OptionPoint221"] = "2-1"
tNpcGossip[35016]["Text2-3"] = {231,212,232,234,235,236,237,238,239,212,240}
tNpcGossip[35016]["tOption2-3"] = {221,222}
tNpcGossip[35016]["Text2-4"] = {241,212,242,243,244,245,246,247,212,248}
tNpcGossip[35016]["tOption2-4"] = {221,222}
tNpcGossip[35016]["Text2-5"] = {251,212,252,253,254,255,212,256}
tNpcGossip[35016]["tOption2-5"] = {221,222}
tNpcGossip[35016]["Text2-6"] = {261,212,262,263,264,265,212,266}
tNpcGossip[35016]["tOption2-6"] = {221,222}
tNpcGossip[35016]["Text2-7"] = {271,212,272,273,274,275,276,277,278,279,212,280}
tNpcGossip[35016]["tOption2-7"] = {221,222}
---------------------------------物品部分---------------------------------------------
tItem[3311730] = tItem[3311730] or {}
tItem[3311730]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(35016)
end

-- 上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,MeltingStove_AcceptTask)

---------------------------------怪物部分---------------------------------------------
-- local tMeltingStove_KillMonster = {}
-- tMeltingStove_KillMonster["ActivityTime"] = tMeltingStove_Time["ActivityTime"]
-- tMeltingStove_KillMonster["Function"]= MeltingStove_KillMonster
-- table.insert(tMonsterDrop_AreaLoad,tMeltingStove_KillMonster)
-- 激情服怪物掉落
-- local tMeltingStove_KillMonster_NoGift = {}
-- tMeltingStove_KillMonster_NoGift["ActivityTime"] = tMeltingStove_Time["ActivityTime"]
-- tMeltingStove_KillMonster_NoGift["Function"] = MeltingStove_KillMonster
-- tMeltingStove_KillMonster_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tMeltingStove_KillMonster_NoGift)