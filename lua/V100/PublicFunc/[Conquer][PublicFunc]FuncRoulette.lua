----------------------------------------------------------------------------------------
--Name:		[简体征服][公用函数]轮盘函数
--Creator:		郑鋆
--Created:		2018/01/03
----------------------------------------------------------------------------------------

-- 命名前缀
-- RouletteFunc_

-- // 轮盘抽奖, 次数由lua自己记录是不是首次抽奖
-- void ProcessTaskReward(OBJID idUser, OBJID idTask)
function ProcessTaskReward(nUserId,nTaskId)
	RouletteMould_Extract(nUserId,nTaskId)
end

-- // 轮盘十连抽
-- void ProcessTenTaskReward(OBJID idUser, OBJID idTask)
function ProcessTenTaskReward(nUserId,nTaskId)
	RouletteMould_TenExtract(nUserId,nTaskId)
end

-- // 轮盘领奖
-- void ProecssGetTaskReward(OBJID idUser)
function ProecssGetTaskReward(nUserId)
	RouletteMould_Reward(nUserId)
end

-- // 轮盘重抽
-- void ProcessTaskRewardAgain(OBJID idUser, OBJID idTask)
function ProcessTaskRewardAgain(nUserId,nTaskId)
	RouletteMould_Again(nUserId,nTaskId)
end

-- // 发送轮盘所处的进度, 参1:查询的玩家ID
-- 建议：
-- 内部实现是调用SendTaskReward的lua接口(现在己经有了)，idTask填所得的任务进度id,
-- nAction填0
-- SendTaskReward(idUser, action=0, 当前轮盘id, 免费次数)
function SendTaskRewardProgress(nUserId)
	RouletteMould_Schedule(nUserId)
end

-- // 购买所有物品, 参1:玩家ID, 参2:任务ID
-- TaskRewardBuyAllItem(OBJID idUser, OBJID idTask)
-- 建议：
-- 内部实现是调用SendTaskReward的lua接口(现在己经有了)，idTask填所得的任务进度id,
-- nAction填11，通知客户端扣款成功
-- SendTaskReward(idUser, action=11, 下一个轮盘id, 免费次数)
function TaskRewardBuyAllItem(nUserId,nTaskId)
	RouletteMould_BuyAllItem(nUserId,nTaskId)
end


-- // 发送轮盘抽奖消息, 参1: idUser玩家ID, 参2: idTask任务ID, 参3：消息子类型, 成功返回true, 失败返回false。
-- bool SendTaskReward(OBJID idUser, OBJID idTask, int nSubType)
-- subType类型：
-- 0 表示弹出抽奖界面(idTask填任务ID, 即目前cq_task_reward_type表中的id，后续由任务自己定义)
-- 1 公布抽奖信息(抽中奖品的索引, idTask填0-7索引值)
-- 6 重抽消耗检测条件失败时下发(idTask填任务ID, 即目前cq_task_reward_type表中的id，后续由任务自己定义)
-- 9 公布德州抽奖结果(抽中奖品的索引, idTask填0-7索引值)
function RouletteFunc_SendReward(nTaskId,nType,nUserId,nFreeNum)
	
	if nFreeNum == nil then 
       nFreeNum = 1
	elseif type(nFreeNum) ~= "number" or  nFreeNum < 0 or nFreeNum%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_SendReward 中 [nRouletteId]:[".. nRouletteId .."] 的 nFreeNum 必须为整数且不小于0。")
		return
	end
	
	return SendTaskReward(nUserId,nTaskId,nType,nFreeNum)
end

-- 打开轮盘界面
function RouletteFunc_Open(nRouletteId,nUserId,nFreeNum)
	if type(nRouletteId) ~= "number" or  nRouletteId <= 0 or nRouletteId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_Open 的 [nRouletteId]:[".. nRouletteId .."] 必须为整数且大于0。")
		return
	end
	
	if nUserId == nil then 
       nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_Open 中 [nRouletteId]:[".. nRouletteId .."] 的 nUserId 必须为整数且不小于0。")
		return
	end
	
	if nFreeNum == nil then 
       nFreeNum = 1
	elseif type(nFreeNum) ~= "number" or  nFreeNum < 0 or nFreeNum%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_Open 中 [nRouletteId]:[".. nRouletteId .."] 的 nFreeNum 必须为整数且不小于0。")
		return
	end
	
	return SendTaskReward(nUserId,nRouletteId,0,nFreeNum)
end



-- 公布单抽的抽奖信息
function RouletteFunc_Publish(nRouletteId,nUserId,nFreeNum)
	if type(nRouletteId) ~= "number" or  nRouletteId < 0 or nRouletteId > 13 or nRouletteId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_Publish 的 [nRouletteId]:[".. nRouletteId .."] 必须为整数且大于0。")
		return
	end
	
	if nUserId == nil then 
       nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_Publish 中 [nRouletteId]:[".. nRouletteId .."] 的 nUserId 必须为整数且不小于0。")
		return
	end
	
	if nFreeNum == nil then 
       nFreeNum = 1
	elseif type(nFreeNum) ~= "number" or  nFreeNum < 0 or nFreeNum%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_Publish 中 [nRouletteId]:[".. nRouletteId .."] 的 nFreeNum 必须为整数且不小于0。")
		return
	end
	
	return SendTaskReward(nUserId,nRouletteId,1,nFreeNum)
end

-- // 发送轮盘十连抽的结果, 参1: idUser玩家ID, 参2: pszIndex十连抽字符串"%d %d ......%d"格式, 成功反回true, 失败返回false。
-- bool SendTenTaskReward(OBJID idUser, const char* pszIndex);
function RouletteFunc_SendTenReward(sIndex,nUserId)

	return SendTenTaskReward(nUserId,sIndex)
end
--查询轮盘进度
function RouletteFunc_QuerySchedule(nRouletteId,nUserId,nFreeNum)
	if type(nRouletteId) ~= "number" or  nRouletteId <= 0 or nRouletteId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_QuerySchedule 的 [nRouletteId]:[".. nRouletteId .."] 必须为整数且大于0。")
		return
	end
	
	if nUserId == nil then 
       nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_QuerySchedule 中 [nRouletteId]:[".. nRouletteId .."] 的 nUserId 必须为整数且不小于0。")
		return
	end
	
	if nFreeNum == nil then 
       nFreeNum = 1
	elseif type(nFreeNum) ~= "number" or  nFreeNum < 0 or nFreeNum%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_QuerySchedule 中 [nRouletteId]:[".. nRouletteId .."] 的 nFreeNum 必须为整数且不小于0。")
		return
	end
	
	return SendTaskReward(nUserId,nRouletteId,10,nFreeNum)
end

-- 增加德州轮盘次数的
-- AddUserTexasLotteryTimes
-- 参数1：玩家ID，参数2：抽奖次数，正数表示增加，负数表示减少
-- 返回值，成功返回true，失败返回false
function RouletteFunc_AddTexasLotteryTimes(nTime,nUserId)
	if type(nTime) ~= "number" or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 RouletteFunc_AddTexasLotteryTimes 中 [nTime]:[".. nTime .."] 的 nTime 必须为整数")
		return 
	end
	
	if nUserId == nil then 
       nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_AddTexasLotteryTimes 中 [nTime]:[".. nTime .."] 的 nUserId 必须为整数且不小于0。")
		return
	end
	
	return AddUserTexasLotteryTimes(nUserId,nTime)
end

-- 获取玩家德州抽奖次数
-- GetUserTexasLotteryTimes
-- 参数1：玩家ID
-- 返回值：玩家德州抽奖次数
function RouletteFunc_GetTexasLotteryTimes(nUserId)
	if nUserId == nil then 
       nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_GetTexasLotteryTimes 中 [nUserId]:[".. nUserId .."] 的 nUserId 必须为整数且不小于0。")
		return
	end
	
	return GetUserTexasLotteryTimes(nUserId)
end

-- // 提供给lua的接口
-- // 轮盘抽奖结果入库，参1:玩家id, 参2:任务id, 参3:奖品
-- bool TaskRewardResult(OBJID idUser, OBJID idTask, OBJID idItemType)
-- 注：抽奖所得，任务可通过系统提示给出, 此接口只负责写排名列表，自己可看到自己抽到
-- 的东西，其它玩家打开界面才能刷新
function RouletteFunc_TaskRewardResult(nRouletteId,nItemId,nUserId) 
	
	if type(nRouletteId) ~= "number" or  nRouletteId < 0 or nRouletteId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_TaskRewardResult 的 [nRouletteId]:[".. nRouletteId .."] 必须为整数且大于0。")
		return
	end
	
	if type(nItemId) ~= "number" or  nItemId < 0  or nItemId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_TaskRewardResult 的 [nRouletteId]:[".. nRouletteId .."] 的nItemId必须为整数且大于0。")
		return
	end
	
	if nUserId == nil then 
       nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
	    Sys_SaveAbnormalLog("函数 RouletteFunc_TaskRewardResult 中 [nRouletteId]:[".. nRouletteId .."] 的 nUserId 必须为整数且不小于0。")
		return
	end
	return TaskRewardResult(nUserId,nRouletteId,nItemId)
end

