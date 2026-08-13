------------------------------------------------------------------------------------
--Name：        190301[简体征服][活动脚本]人参果掉落增加限量
--Creator:      耿力兀
--Created:     2019-03-01
------------------------------------------------------------------------------------
--任务需求：
--人参果掉落改成二转以上才能掉，每天限量100个
--数据库config 配置为：掉落概率：10/10000 等级藐视范围100 等级蔑视后概率为：原概率/3 掉落时间：永久生效
------------------------------------------------------------------------------------
--前缀：GinsengFruit_
--LogId： 12001315
--Stc掩码  191 22 人参果每日掉落上限
----------------------------------表配置部分--------------------------------------------
local tGinsengFruit_Data={}	--任务需求
	tGinsengFruit_Data["Metempsychosis"] = 2		--转世需求
	tGinsengFruit_Data["Level"] = 0		--等级需求
	tGinsengFruit_Data["Scorn"] = 100 	--等级蔑视范围
	tGinsengFruit_Data["Log"] ="0,0,%d,%d,12001315,2,3009100,1"		--怪物掉落log
	
local tGinsengFruit_AcquireItem = {}
	--=========[人参果掉落概率等级蔑视后概率]=========
	tGinsengFruit_AcquireItem[1] = {}
	tGinsengFruit_AcquireItem[1]["ItemChanceSum"] = 10000
	tGinsengFruit_AcquireItem[1]["LogId"] = 12001315
	-- 人参果 - 0.10%  --概率修改为1% --fwl
	tGinsengFruit_AcquireItem[1][1] = {}
	tGinsengFruit_AcquireItem[1][1]["RandomItemChanceType"] = 2
	tGinsengFruit_AcquireItem[1][1]["ItemChance"] = 100
	tGinsengFruit_AcquireItem[1][1]["RewardItem"] = {}
	tGinsengFruit_AcquireItem[1][1]["RewardItem"][1] = {}
	tGinsengFruit_AcquireItem[1][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tGinsengFruit_AcquireItem[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	-- 玩家cq_statistic掩码
	tGinsengFruit_AcquireItem[1][1]["EventType"] = 191 -- 需手动配：[cq_statistic]表event_type
	tGinsengFruit_AcquireItem[1][1]["DataType"] = 22 -- 需手动配：[cq_statistic]表data_type
	tGinsengFruit_AcquireItem[1][1]["RewardData"] = 100 -- 每天限制的次数
	tGinsengFruit_AcquireItem[1][1]["RewardDelay"] = 1 -- 掩码的间隔时间
	tGinsengFruit_AcquireItem[1][1]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）

	-- 无 - 99.00%  --概率修改为1% --fwl
	tGinsengFruit_AcquireItem[1][2] = {}
	tGinsengFruit_AcquireItem[1][2]["RandomItemChanceType"] = 2
	tGinsengFruit_AcquireItem[1][2]["ItemChance"] = 9900


	--=========[人参果掉落概率（等级藐视）]=========
	tGinsengFruit_AcquireItem[2] = {}
	tGinsengFruit_AcquireItem[2]["ItemChanceSum"] = 10000
	tGinsengFruit_AcquireItem[2]["LogId"] = 12001315
	-- 人参果 - 0.03% --概率修改为0.3% --fwl
	tGinsengFruit_AcquireItem[2][1] = {}
	tGinsengFruit_AcquireItem[2][1]["RandomItemChanceType"] = 2
	tGinsengFruit_AcquireItem[2][1]["ItemChance"] = 30
	tGinsengFruit_AcquireItem[2][1]["RewardItem"] = {}
	tGinsengFruit_AcquireItem[2][1]["RewardItem"][1] = {}
	tGinsengFruit_AcquireItem[2][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tGinsengFruit_AcquireItem[2][1]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	-- 玩家cq_statistic掩码
	tGinsengFruit_AcquireItem[2][1]["EventType"] = 191 -- 需手动配：[cq_statistic]表event_type
	tGinsengFruit_AcquireItem[2][1]["DataType"] = 22 -- 需手动配：[cq_statistic]表data_type
	tGinsengFruit_AcquireItem[2][1]["RewardData"] = 100 -- 每天限制的次数
	tGinsengFruit_AcquireItem[2][1]["RewardDelay"] = 1 -- 掩码的间隔时间
	tGinsengFruit_AcquireItem[2][1]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）

	-- 无 - 99.97%  --概率修改为0.3% --fwl
	tGinsengFruit_AcquireItem[2][2] = {}
	tGinsengFruit_AcquireItem[2][2]["RandomItemChanceType"] = 2
	tGinsengFruit_AcquireItem[2][2]["ItemChance"] = 9970

----------------------------------逻辑部分---------------------------------------------
function GinsengFruit_KillReward(nMonsterId)
	--等级要求
	if not User_JudgeLevelAndMetempsychosis(tGinsengFruit_Data["Level"],tGinsengFruit_Data["Metempsychosis"]) then
		return
	end
	
	local nIndex = 1
	--等级超过怪物100级 等级蔑视效果
	if Get_UserLevel() >= Get_MonsterLevel() + tGinsengFruit_Data["Scorn"] then
		nIndex = 2
	end

	-- 背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tGinsengFruit_AcquireItem,nIndex)
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	local nEvent = tGinsengFruit_AcquireItem[nIndex][1]["EventType"]
	local nType = tGinsengFruit_AcquireItem[nIndex][1]["DataType"]
	-- 判断人参果掉落是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nNowSingleData = nData%10000

--每日上限
	if nNowSingleData >= tGinsengFruit_AcquireItem[nIndex][1]["RewardData"] then 
		if nNowSingleData == tGinsengFruit_AcquireItem[nIndex][1]["RewardData"] then 
			Task_AddStatistic(nEvent, nType, 1, 1)
			Task_SetStcTimestamp(nEvent, nType, 0)
			--上限提示
			Sys_MsgBox(tGinsengFruit_Text["Max"])	
		end 
		return 
	end 

	local nMapId = Get_UserMapId()
	local sRewardlog = string.format(tGinsengFruit_Data["Log"],nMapId,nMonsterId)
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tGinsengFruit_AcquireItem,nIndex)	
	if sRewardStr ~= "" then 
		Sys_SaveActionRewardLog(sRewardlog)
	end 
	
end

---------------------------------怪物掉落--------------------------------------------
--全区全服全片区怪物掉落
local tGinsengFruit_KillReward = {}
	tGinsengFruit_KillReward["Function"]=GinsengFruit_KillReward
	table.insert(tMonsterDrop_AreaLoad,tGinsengFruit_KillReward)	
	
--激情服怪物掉落
-- local tGinsengFruit_KillReward_NoGift = {}
	-- tGinsengFruit_KillReward_NoGift["Function"] = GinsengFruit_KillReward
	-- tGinsengFruit_KillReward_NoGift["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tGinsengFruit_KillReward_NoGift)
