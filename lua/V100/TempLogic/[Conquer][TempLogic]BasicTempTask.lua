----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]基础模板之任务模块.lua
--Purpose:	基础模板之任务模块
--Creator: 	林静、郑鋆、严振飞、王倩娜、郑江文
--Created:	2015/05/13
----------------------------------------------------------------------------

-- 时间检测函数表
tTimeChkFunc = {}
tTimeChkFunc[1] = Sys_ChkFullTime
tTimeChkFunc[2] = Sys_ChkDateTime
tTimeChkFunc[3] = Sys_ChkMonthTime
tTimeChkFunc[4] = Sys_ChkWeedTime
tTimeChkFunc[5] = Sys_ChkDayTime
tTimeChkFunc[6] = Sys_ChkMinute

-- 接受任务条件函数表
local tAcceptTaskJudge = {}
tAcceptTaskJudge[100] = Accept_ChkTime				--任务时间判断
tAcceptTaskJudge[200] = Accept_ChkLevel				--任务等级判断
tAcceptTaskJudge[300] = Accept_ChkSex					--任务需求性别判断
tAcceptTaskJudge[400] = Accept_ChkTaskDetail			--taskDetail任务掩码检测
tAcceptTaskJudge[500] = Accept_ChkRevStc				--stc任务掩码检测
tAcceptTaskJudge[600] = Accept_ChkSpace				--检测背包空间
tAcceptTaskJudge[700] = Accept_ChkFrontTask			--前置任务检测
tAcceptTaskJudge[800] = Accept_ChkFrontStc			--前置Stc检测
tAcceptTaskJudge[900] = Accept_ChkMap					--地点检测(判断是否在允许做该任务的地图/坐标范围内)
tAcceptTaskJudge[1000] = Accept_ChkPro				--判断职业是否符合任务条件
tAcceptTaskJudge[1100] = Accept_ChkGang				--判断帮派是否符合任务条件
tAcceptTaskJudge[1200] = Accept_ChkGangRank			--判断帮派职位是否符合任务条件
tAcceptTaskJudge[1300] = Accept_ChkItem				--判断是否持有接任务所必须的物品
tAcceptTaskJudge[1400] = Accept_ChkMoney				--判断是否持有接任务所需要的足够的游戏币
tAcceptTaskJudge[1500] = Accept_ChkEMoney				--判断是否持有接任务所需要的足够的天石
tAcceptTaskJudge[1600] = Accept_ChkMonoEMoney			--判断是否持有接任务所需要的足够的赠品天石
tAcceptTaskJudge[1700] = Accept_ChkVip				--判断是否持有接任务所需要的VIP等级
tAcceptTaskJudge[1800] = Accept_ChkTransform			--判断是否变身状态下
-- tAcceptTaskJudge[1900] = Accept_ChkTeam				--组队条件

-- 接受任务条件不符合时给予的提示
local tAcceptTaskPrompt = {}
tAcceptTaskPrompt[100] = "NotActiveTime"
tAcceptTaskPrompt[200] = "NotLevel"
tAcceptTaskPrompt[300] = "MeetSex"
tAcceptTaskPrompt[400] = "MeetTask"
tAcceptTaskPrompt[500] = "MeetStc"
tAcceptTaskPrompt[600] = "MeetSpace"
tAcceptTaskPrompt[700] = "MeetFrontTask"
tAcceptTaskPrompt[800] = "MeetFrontStc"
tAcceptTaskPrompt[900] = "MeetMap"
tAcceptTaskPrompt[1000] = "MeetPro"
tAcceptTaskPrompt[1100] = "MeetGang"
tAcceptTaskPrompt[1200] = "MeetGangRank"
tAcceptTaskPrompt[1300] = "MeetItem"
tAcceptTaskPrompt[1400] = "MeetMoney"
tAcceptTaskPrompt[1500] = "MeetEMoney"
tAcceptTaskPrompt[1600] = "MeetMonoEMoney"
tAcceptTaskPrompt[1700] = "MeetVIP"
tAcceptTaskPrompt[1800] = "MeetTransform"

-- 接受任务函数表
local tAcceptTask = {}
tAcceptTask[100] = Accept_SetTaskDetail						--taskDetail任务掩码设值
tAcceptTask[200] = Accept_SetRevStc							--stc任务掩码设值
tAcceptTask[300] = Accept_GetRevItem						--给任务物品
tAcceptTask[400] = Accept_AddEffect							--给光效
tAcceptTask[500] = Accept_PrintLog							--给log
tAcceptTask[600] = Accept_GotoSomeWhere						--自动寻路
tAcceptTask[700] = Accept_CreateInstance					--进入副本

-- 交任务条件函数表
local tHandOverTaskJudge = {}
tHandOverTaskJudge[100] = Accept_ChkTime					--任务时间判断
tHandOverTaskJudge[200] = Accept_ChkLevel					--任务等级判断
tHandOverTaskJudge[300] = Accept_ChkSex					--任务需求性别判断
tHandOverTaskJudge[400] = HandOver_ChkItem				--交任务需求物品判断
tHandOverTaskJudge[500] = HandOver_ChkMonster				--交任务需求怪物数量检测
tHandOverTaskJudge[600] = HandOver_ChkMoney				--交任务需求金币上限
tHandOverTaskJudge[700] = HandOver_ChkEMoney				--交任务需求天石上限
tHandOverTaskJudge[800] = HandOver_ChkMonoEMoney			--交任务需求赠品天石上限
tHandOverTaskJudge[900] = HandOver_ChkSpace					--交任务检测背包空间
tHandOverTaskJudge[1000] = HandOver_ChkStc					--交任务检测STC掩码
tHandOverTaskJudge[1100] = HandOver_ChkTaskDetailData		--交任务taskDetail的Data位
tHandOverTaskJudge[1200] = HandOver_ChkTaskComplete			--交任务判断该任务是已经完成了
tHandOverTaskJudge[1500] = HandOver_ChkZhenQi		--交任务真气上限

-- 交任务条件不符合时给予的提示
local tHandOverTaskPrompt = {}
tHandOverTaskPrompt[100] = "NotActiveTime"
tHandOverTaskPrompt[200] = "NotLevel"
tHandOverTaskPrompt[300] = "MeetSex"
tHandOverTaskPrompt[400] = "HandOverItem"
tHandOverTaskPrompt[500] = "HandOverMonster"
tHandOverTaskPrompt[600] = "HandOverMoney"
tHandOverTaskPrompt[700] = "HandOverEMoney"
tHandOverTaskPrompt[800] = "HandOverMonoEMoney"
tHandOverTaskPrompt[900] = "HandOverSpace"
tHandOverTaskPrompt[1000] = "HandOverStc"
tHandOverTaskPrompt[1100] = "HandOverDetail"
tHandOverTaskPrompt[1200] = "HandOverComplete"
tHandOverTaskPrompt[1500] = "HandOverZhenQi"

-- 交任务函数表
local tHandOverTask = {}
tHandOverTask[100] = HandOver_DelItem						--删除任务物品
tHandOverTask[200] = HandOver_SetTaskDetail				--taskDetail任务置完成
tHandOverTask[300] = HandOver_SetStc						--STC掩码设完成
tHandOverTask[400] = HandOver_RewExp						--给经验点奖励
tHandOverTask[500] = HandOver_RewExpTime					--给经验时间奖励
tHandOverTask[600] = HandOver_RewardMoney					--给金币奖励
tHandOverTask[700] = HandOver_RewardEMoney				--给天石奖励
tHandOverTask[800] = HandOver_RewardMonoEMoney			--给赠品天石奖励
tHandOverTask[900] = HandOver_RewardEffect				--播光效
tHandOverTask[1000] = HandOver_RewCultivation				--给修行值
tHandOverTask[1100] = HandOver_RewStrengthValue			--给气力值
tHandOverTask[1200] = HandOver_RewardItem					--给物品
tHandOverTask[1300] = HandOver_RewardProItem				--给职业装备
tHandOverTask[1400] = HandOver_RewLog						--给log
tHandOverTask[1500] = HandOver_RewardZhenQi				--给真气
tHandOverTask[1600] = HandOver_RewardRandom				--随机给奖励

-- 任务怪的判断表
local tMonsterTask = {}
tMonsterTask[100] = Accept_ChkTime						--任务时间判断
tMonsterTask[200] = Accept_ChkLevel						--任务等级判断
tMonsterTask[300] = MonsterTask_Chk						--检测任务是否有接
tMonsterTask[400] = MonsterTask_ChkStc					--检测stc掩码
tMonsterTask[500] = MonsterTask_ChkSpace					--怪物掉落需要检测背包空间
tMonsterTask[600] = MonsterTask_ChkNeedItem				--杀怪是否需要携带任务物品
tMonsterTask[700] = MonsterTask_SetCount					--怪物计数
tMonsterTask[800] = MonsterTask_MustFallItem				--杀怪必掉任务物品
tMonsterTask[900] = MonsterTask_SpecificDropItem			--满足杀怪数量后才掉落任务物品
tMonsterTask[1000] = MonsterTask_SpecificDropItem			--满足杀怪数量后才掉落任务物品
tMonsterTask[1100] = MonsterTask_ProbabilityDropItem		--有概率掉落任务物品
tMonsterTask[1200] = MonsterTask_ChkNeedEffect			--杀怪是否需要加光效

------------------------------------------------------逻辑---------------------------------------

-- Npc接受任务函数的接口
-- nNpcId	NPC调用的话就传NPCID，物品调用传物品ID
-- nType	=1,表示是NPC调用	=2,表示是物品调用
function Task_IsCreatByNpc(nTaskId,nNpcId,nType)
	-- 判断任务是否可以接受
	if not Task_IsReceived(nTaskId,nNpcId,nType) then
		return false
	end
	
	-- 接受任务
	Task_AcceptTask(nTaskId,nNpcId,nType)
end

-- NPC交任务函数的接口
function Task_IsHandOverByNpc(nTaskId,nNpcId,nType)
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		return
	end
	
	
	-- 判断任务是否可交
	if not Task_IsHandOver(nTaskId,nNpcId,nType) then
		return false
	end
	
	-- 交任务
	Task_HandOverTask(nTaskId,nNpcId,nType)
end

------------------------------------------------------任务判断函数---------------------------------------
-- NPC接受任务判断
function Task_IsReceived(nTaskId,nNpcId,nType)
	-- 接受任务条件表是否有配，没有给他默认配置
	local tReceived = tTaskTemplate[nTaskId]["IsReceived"] or {}

	-- 任务条件判断
	for i,v in pairs(tReceived) do
		local func = tAcceptTaskJudge[v]

		if not Task_IsJudge(func,nTaskId) then
			local str = tAcceptTaskPrompt[v]
			local sIndex = tTaskTemplate[nTaskId][str]
			
			Task_NpcDialog(nTaskId,nNpcId,sIndex,nType)
			return false
		end
	end
	
	-- 其它的判断条件
	if tTaskTemplate[nTaskId]["RevFunc"] ~= nil and type(tTaskTemplate[nTaskId]["RevFunc"]) == "function" then
		return tTaskTemplate[nTaskId]["RevFunc"](nTaskId)
	end
	
	return true
end

function Task_IsJudge(func,nTaskId)
	if func == nil or type(func) ~= "function" then
		return false
	end
	
	return func(nTaskId)
end

-- 任务对白提示
function Task_NpcDialog(nTaskId,nNpcId,sIndex,nType)
	if sIndex ~= nil then
		if nType == 1 then
			LinkNpcGossipFunc_New(nNpcId,sIndex)
		elseif nType == 2 then
			LinkItemGossipFunc_New(nNpcId,sIndex)
		end
	end
end

-- 接受任务
function Task_AcceptTask(nTaskId,nNpcId,nType)
	-- 接受任务条件表是否有配，没有给他默认配置
	local tAccept = tTaskTemplate[nTaskId]["AcceptTask"] or {}

	-- 任务掩码先设值
	for i,v in pairs(tAccept) do
		if v == 100 or v == 200 then
			local func = tAcceptTask[v]

			if not Task_IsJudge(func,nTaskId) then
				return false
			end
		end
	end

	-- 表现执行
	for i,v in pairs(tAccept) do
		if v ~= 100 and v ~= 200 then
			local func = tAcceptTask[v]
			if not Task_IsJudge(func,nTaskId) then
				return false
			end
		end
	end

	-- 其它的判断条件
	if tTaskTemplate[nTaskId]["AcceptFunc"] ~= nil and type(tTaskTemplate[nTaskId]["AcceptFunc"]) == "function" then
		return tTaskTemplate[nTaskId]["AcceptFunc"](nTaskId)
	end
	
	Sys_SaveActionTaskLog(string.format("0,0,0,0,%d,1,0,0",nTaskId))
	
	-- 接任务对白
	local sIndex = tTaskTemplate[nTaskId]["MeetAccept"]	
	Task_NpcDialog(nTaskId,nNpcId,sIndex,nType)
	
	return true
end

-- 交任务判断条件逻辑
function Task_IsHandOver(nTaskId,nNpcId,nType)
	-- 接受任务条件表是否有配，没有给他默认配置
	local tReceived = tTaskTemplate[nTaskId]["IsHandOver"] or {}

	-- 任务条件判断
	for i,v in pairs(tReceived) do
		local func = tHandOverTaskJudge[v]

		if not Task_IsJudge(func,nTaskId) then
			local str = tHandOverTaskPrompt[v]
			local sIndex = tTaskTemplate[nTaskId][str]
			
			Task_NpcDialog(nTaskId,nNpcId,sIndex,nType)
			return false
		end
	end

	-- 其它的判断条件
	if tTaskTemplate[nTaskId]["RewFunc"] ~= nil and type(tTaskTemplate[nTaskId]["RewFunc"]) == "function" then
		return tTaskTemplate[nTaskId]["RewFunc"](nTaskId)
	end
	
	return true
end

-- 判断出对白否
function Task_IsOpenDialog(nTaskId,nNpcId,nType)
	-- 接受任务条件表是否有配，没有给他默认配置
	local tReceived = tTaskTemplate[nTaskId]["IsHandOver"] or {}

	-- 任务条件判断
	local func = tHandOverTaskJudge[1100]
	if not Task_IsJudge(func,nTaskId) then
		return false
	end

	return true
end

-- 交任务
function Task_HandOverTask(nTaskId,nNpcId,nType)
	-- 交任务条件表是否有配，没有给他默认配置
	local tHandOver = tTaskTemplate[nTaskId]["HandOverTask"] or {}
	-- 删除任务物品
	-- for i,v in pairs(tHandOver) do
		-- if v == 100 then
			-- local func = tHandOverTask[v]

			-- if not Task_IsJudge(func,nTaskId) then
				-- return false
			-- end
			-- break
		-- end
	-- end

	-- 设掩码值
	for i,v in pairs(tHandOver) do
		if v == 200 or v == 300 then
			local func = tHandOverTask[v]

			if not Task_IsJudge(func,nTaskId) then
				return false
			end
		end
	end

	-- 表现执行
	for i,v in pairs(tHandOver) do
		local func = tHandOverTask[v]

		if not Task_IsJudge(func,nTaskId) then
			return false
		end
	end
	
	Sys_SaveActionTaskLog(string.format("0,0,0,0,%d,2,0,0",nTaskId))
	
	-- 自己写的交任务函数
	if tTaskTemplate[nTaskId]["HandOverFunc"] ~= nil and type(tTaskTemplate[nTaskId]["HandOverFunc"]) == "function" then
		tTaskTemplate[nTaskId]["HandOverFunc"](nTaskId)
	end
	
	-- 任务奖励的提示
	if tTaskTemplate[nTaskId]["RewardMsg"] ~= nil then
		User_TalkChannel2005(tTaskTemplate[nTaskId]["RewardMsg"])
	end
	
	-- 判断是否有后续任务
	if tTaskTemplate[nTaskId]["PostTaskId"] ~= nil then
		HandOver_PostTask(nTaskId,nNpcId,nType)
	end
end

-- 怪物死亡触发的函数
function Task_KillMonster(nMonsterId)
	-- 判断这个怪物是否有配任务
	if tTaskMonster[nMonsterId] == nil then
		return
	end
	
	for _,v in pairs (tTaskMonster[nMonsterId]) do
		Task_ChkMonster(v,nMonsterId)
	end
end

-- 任务_怪物任务检测
function Task_ChkMonster(nTaskId,nMonsterId)
	-- 判断任务表有无
	if tTaskTemplate[nTaskId] == nil then
		return
	end
	local tMonster = tTaskTemplate[nTaskId]["MonsterTask"] or {}

	-- 表现执行
	for i = 1,6 do
		-- 多个怪物掉同一物品
		local tReqMonster = tTaskTemplate[nTaskId]["ReqMonsterId".. i] or {}
		for m,n in ipairs(tReqMonster) do
			local nNeedMonsterId = n
			
			if nNeedMonsterId == nil then
				break
			end
				
			if nNeedMonsterId == nMonsterId then
				for a,v in pairs(tMonster) do
					local func = tMonsterTask[v]
					
					if func == nil or type(func) ~= "function" then
						return false
					end
		
					local isJudge = func(nTaskId,nMonsterId,i)
					
					if not isJudge then
						return false
					end
				end
			end
		end
	end
	
	-- 自己写的交任务函数
	if tTaskTemplate[nTaskId]["MonsterFunc"] ~= nil and type(tTaskTemplate[nTaskId]["MonsterFunc"]) == "function" then
		tTaskTemplate[nTaskId]["MonsterFunc"](nTaskId,nMonsterId)
	end
end

-- 接任务和交任务的起始对白
-- nType = 1表示是接任务的起始对白，= 2表示是交任务的起始对白
function Task_Dialogue(nTaskId,nNpcId,sIndex,nType)
	if tText[nNpcId] == nil then
		return
	end
	
	
end