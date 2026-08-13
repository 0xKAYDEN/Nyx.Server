----------------------------------------------------------------------------
--Name:		[征服][公用函数]任务函数.lua
--Purpose:	任务函数接口
--Creator: 	林锦
--Created:	2014/06/26
----------------------------------------------------------------------------
---------------------------------命名规范----------------------------------
------------------------------actiontype的分类------------------------------
--Sys  任务所有
--Send 消息发送
--Get  获得属性
--Set  修改属性
--Chk  检查属性
--Del  删除属性
--Add  添加属性
------------------------------------------------------------------------------
-- 任务函数命名前缀词：Task_
--例子：
--// 判断任务是否存在. 参数说明: idUser表示用户ID, idTask表示任务ID. 如果不存在返回false, 存在返回true.
--bool IsExistTaskDetail(int idUser, int idTask);

--function Task_ChkTaskDetailExist(nUserId,nTsakid)
--
--end

------------------------------------------------------------------------------

--设置用户统计数据
--nUserId 玩家id 默认为0
--nType 目前只能为1
--nSubType 目前只能为1-3
--nData 设置的值 大于等于0
--nSave 是否即时写库，0或1
--返回设置成功或失败 bool型
function Task_SetStatisticDaily(nType,nSubType,nData,nSave,nUserId)
	if type(nType) ~= "number" or nType%1 ~= 0 or nType <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatisticDaily 第一个参数nType大于0")
		return
	end
	
	if type(nSubType) ~= "number" or nSubType%1 ~= 0 or nSubType <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatisticDaily 第二个参数nSubType大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatisticDaily 第三个参数nData只能大于等于 0")
		return
	end
	
	if nSave ~= 0 and nSave ~= 1 then
		Sys_SaveAbnormalLog("函数 Task_SetStatisticDaily 第四个参数nSave只能为 0-1")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatisticDaily 第五个参数nUserId为整型并且大于等于0")
		return
	end
	
	Sys_SetStcLog(nType,nSubType,nData,nUserId)
	if SetUserStatisticDaily(nUserId,nType,nSubType,nData,nSave) then
		-- 判断是否排行榜段
		if nType == 300 then
			Sys_SaveRankingListLog(nType,nSubType,nData,nUserId)
		end
		
		return true
	else
		return false
	end
end

--删除用户统计数据
--nUserId 玩家id 默认为0
--nType 目前只能为1
--nSubType 目前只能为1-3
--返回删除成功或失败 bool型
function Task_DelStatisticDaily(nType,nSubType,nUserId)
	if nType ~= 1 then
		Sys_SaveAbnormalLog("函数 Task_DelStatisticDaily 第一个参数只能为 1")
		return
	end
	
	if nSubType ~= 1 and nSubType ~= 2 and nSubType ~= 3 then
		Sys_SaveAbnormalLog("函数 Task_DelStatisticDaily 第二个参数只能为 1-3")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_DelStatisticDaily 第三个参数nUserId为整型并且大于等于0")
		return
	end
	
	return DeleteUserStatisticDaily(nUserId,nType,nSubType);
end

--检查用户统计数据是否存在
--nUserId 玩家id 默认为0
--nType 目前只能为1
--nSubType 目前只能为1-3
--返回检查成功或失败 bool型
function Task_ChkStatisticDaily(nType,nSubType,nUserId)
	if nType ~= 1 then
		Sys_SaveAbnormalLog("函数 Task_ChkStatisticDaily 第一个参数nType只能为 1")
		return
	end
	
	if nSubType ~= 1 and nSubType ~= 2 and nSubType ~= 3 then
		Sys_SaveAbnormalLog("函数 Task_ChkStatisticDaily 第二个参数nSubType只能为 1-3")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_ChkStatisticDaily 第三个参数nUserId为整型并且大于等于0")
		return
	end
	
	return IsexitUserStatisticDaily(nType,nSubType,nUserId);
end

--设置用户stc掩码
--nUserId 玩家id 默认为0
--nEvent 事件id,大于0
--nType Type,大于0
--nData 设置的值,大于等于0
--nSave 是否即时写库，0或1
--返回设置用户stc掩码成功或失败 bool型
function Task_SetStatistic(nEvent,nType,nData,nSave,nUserId)
	if type(nEvent) ~= "number" or nEvent%1 ~= 0 or nEvent <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."] 第一个参数nEvent为整型并且大于0")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."] 第二个参数nType为整型并且大于等于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."] 第三个参数nData为整型并且大于等于0")
		return
	end
	
	if nSave ~= 0 and nSave ~= 1 then
		Sys_SaveAbnormalLog("函数 Task_SetStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."] 第四个参数nSave只能为 0-1")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."] 第五个参数nUserId为整型并且大于等于0")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[10],nUserId)
		end
	end
	Sys_SetStcLog(nEvent,nType,nData,nUserId)
	if SetUserStatistic(nUserId,nEvent,nType,nData,nSave) then
		-- 判断是否排行榜段
		if nEvent == 300 then
			Sys_SaveRankingListLog(nEvent,nType,nData,nUserId)
		end
		
		return true
	else
		return false
	end
end

--设置用户stc掩码时间戳
--nUserId 玩家id 默认为0
--nEvent 事件id,大于0
--nType Type,大于0
--nData 时间戳,大于等于0
--返回设置用户stc掩码时间戳成功或失败 bool型
function Task_SetStcTimestamp(nEvent,nType,nData,nUserId)
	if type(nEvent) ~= "number" or nEvent%1 ~= 0 or nEvent <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStcTimestamp [nEvent,nType]:[".. nEvent ..",".. nType .."]第一个参数nEvent为整型并且大于0")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStcTimestamp [nEvent,nType]:[".. nEvent ..",".. nType .."]第二个参数nType为整型并且大于等于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStcTimestamp [nEvent,nType]:[".. nEvent ..",".. nType .."]第三个参数nData为整型并且大于等于0")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetStcTimestamp [nEvent,nType]:[".. nEvent ..",".. nType .."]第四个参数nUserId为整型并且大于等于0")
		return
	end
	return SetUserStcTimestamp(nUserId,nEvent,nType,nData);
end

--删除stc用户掩码
--nUserId 玩家id 默认为0
--nEvent 事件id,大于0
--nType Type,大于0
--返回删除用户stc掩码成功或失败 bool型
function Task_DelStatistic(nEvent,nType,nUserId)
	if type(nEvent) ~= "number" or nEvent%1 ~= 0 or nEvent <= 0 then
		Sys_SaveAbnormalLog("函数 Task_DelStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."]第一个参数nEvent为整型并且大于0")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 Task_DelStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."]第二个参数nType为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_DelStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	return DeleteUserStatistic(nUserId,nEvent,nType);
end

--检查用户stc掩码是否存在
--nUserId 玩家id 默认为0
--nEvent 事件id,大于0
--nType Type,大于0
--返回检查用户stc掩码是否存在成功或失败 bool型
function Task_ChkStatistic(nEvent,nType,nUserId)
	if type(nEvent) ~= "number" or nEvent%1 ~= 0 or nEvent <= 0 then
		Sys_SaveAbnormalLog("函数 Task_ChkStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."]第一个参数nEvent为整型并且大于0")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 Task_ChkStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."]第二个参数nType为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_ChkStatistic [nEvent,nType]:[".. nEvent ..",".. nType .."]第三个参数nUserId为整型并且大于等于0")
		return
	end
	
	return IsexitUserStatistic(nUserId,nEvent,nType);
end

--设置用户任务掩码对应字段值
--索引值对照表如下：
--task_detail表
--SCRIPT_PARAM_TASKDETAIL_ID				= 2251,（不能设置）
--SCRIPT_PARAM_TASKDETAIL_Task_ID			= 2252,（不能设置）
--SCRIPT_PARAM_TASKDETAIL_TASK_ID			= 2253,（不能设置）
--SCRIPT_PARAM_TASKDETAIL_COMPLETE_FLAG	= 2254,
--SCRIPT_PARAM_TASKDETAIL_NOTIFY_FLAG		= 2255,
--SCRIPT_PARAM_TASKDETAIL_DATA1			= 2256,
--SCRIPT_PARAM_TASKDETAIL_DATA2			= 2257,
--SCRIPT_PARAM_TASKDETAIL_DATA3			= 2258,
--SCRIPT_PARAM_TASKDETAIL_DATA4			= 2259,
--SCRIPT_PARAM_TASKDETAIL_DATA5			= 2260,
--SCRIPT_PARAM_TASKDETAIL_DATA6			= 2261,
--SCRIPT_PARAM_TASKDETAIL_DATA7			= 2262,
--SCRIPT_PARAM_TASKDETAIL_TASK_OVERTIME	= 2263,
--SCRIPT_PARAM_TASKDETAIL_TYPE			= 2264,（不能设置）
--以下针对各个索引进行封装

--设置用户任务掩码CompleteFlag
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailCompleteFlag(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailCompleteFlag [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailCompleteFlag [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailCompleteFlag [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end
	
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		-- 新任务模板，任务计数
		NewTaskTemplate_TaskCount(nTaskId,nUserId)
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_COMPLETE_FLAG,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailCompleteFlag 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码NotifyFlag
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailNotifyFlag(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailNotifyFlag [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailNotifyFlag [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailNotifyFlag [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_NOTIFY_FLAG,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailNotifyFlag 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data1
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData1(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData1 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData1 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData1 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA1,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData1 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data2
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData2(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData2 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData2 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData2 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA2,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData2 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data3
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData3(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData3 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData3 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData3 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA3,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData3 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data4
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData4(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData4 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData4 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData4 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA4,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData4 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data5
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData5(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData5 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData5 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData5 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA5,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData5 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data6
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData6(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData6 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData6 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData6 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA6,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData6 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Data7
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailData7(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData7 [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData7 [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailData7 [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_DATA7,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailData7 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--设置用户任务掩码Overtime
--nTaskId Taskid,大于0
--nData 设置的值,大于等于0
--nUserId 玩家id 默认为0
--返回设置成功或失败 bool型
function Task_SetTaskDetailTaskOvertime(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailTaskOvertime [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailTaskOvertime [nTaskId]:[".. nTaskId .."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetTaskDetailTaskOvertime [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_TASKDETAIL_TASK_OVERTIME,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetTaskDetailTaskOvertime 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end


--Task_detail 时间间隔（天、秒）判断函数

--判断Task_Detai掩码时间戳是否超过多少时间
--nQuestId掩码id
--nDelay，延时时间
--nTimeType，延时类型，默认0。0:秒；1:分钟；2：小时；3，天（绝对时间）;4,天（相对时间）。
--超过，返回ture
--未超过，返回false
function Task_DetailInterval(nQuestId,nDelay,nTimeType,nUserId)
	local nTaskTime = Get_TaskDetailData7(nQuestId,nUserId)
	local nNow = os.time()
--nTaskTime返回nil，表示传入参数错误。报log。
	if nTaskTime == nil then
		Sys_SaveAbnormalLog("函数 Task_DetailInterval [nQuestId]:[".. nQuestId .."]传入的参数:nQuestId格式错误。玩家Id："..Get_UserId())
		return false
	end
--返回0，表示玩家该掩码未使用过，或者未有时间戳操作，直接返回true
	if nTaskTime == 0 then
		return true
	end

	if type(nDelay) ~= "number" or nDelay%1 ~= 0 or nDelay <= 0 then
		Sys_SaveAbnormalLog("函数 Task_DetailInterval [nQuestId]:[".. nQuestId .."]第三个参数 nDelay 为整型并且大于0")
		return
	end

	if nTimeType == nil then
		nTimeType = 0
	elseif type(nTimeType) ~= "number" or nTimeType < 0 or nTimeType > 4 or nTimeType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Task_DetailInterval [nQuestId]:[".. nQuestId .."] 中 nTimeType 只能传0~3的整数")
		return
	end
--秒，直接减
	if nTimeType == 0 then
		return nNow - nTaskTime >= nDelay
	end
--分钟，先除以60
	if nTimeType == 1 then
		return (nNow - nTaskTime)/60 >= nDelay
	end
--小时，先除3600=60*60
	if nTimeType == 2 then
		return (nNow - nTaskTime)/3600 >= nDelay
	end
--天，先除86400=60*60*24 (绝对时间)
	if nTimeType == 3 then
		return (nNow - nTaskTime)/86400 >= nDelay
	end
--天(相对时间)
	if nTimeType == 4 then
		local sYear
		local sMonth
		local sDay
		local sNowYear
		local sNowMonth
		local sNowDay
		local sNowTime
		local sTime
		sNowTime = os.date("%Y%m%d",nNow - (nDelay - 1)*86400)
		sTime = os.date("%Y%m%d",nTaskTime)
		
		sYear = string.sub(sTime,1,4)
		sMonth = string.sub(sTime,5,6)
		sDay = string.sub(sTime,7,8)
		sNowYear = string.sub(sNowTime,1,4)
		sNowMonth = string.sub(sNowTime,5,6)
		sNowDay = string.sub(sNowTime,7,8)
		
		if tonumber(sYear) < tonumber(sNowYear) then
			return true
		elseif tonumber(sYear) > tonumber(sNowYear) then
			return false
		elseif tonumber(sMonth) < tonumber(sNowMonth) then
			return true
		elseif tonumber(sMonth) > tonumber(sNowMonth) then
			return false
		elseif tonumber(sDay) < tonumber(sNowDay) then
			return true
		else
			return false
		end
	end

end


--新增用户任务掩码
--nUserId 玩家id 默认为0
--nTaskId Taskid,大于0
--nLimitTime 限时时间，单位：秒。0表示非限时。
--返回新增用户任务掩码成功或失败 bool型
function Task_AddTaskDetail(nTaskId,nLimitTime,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetail [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if nLimitTime == nil then
		nLimitTime = 0
	elseif type(nLimitTime) ~= "number" or nLimitTime%1 ~= 0 or nLimitTime < 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetail [nTaskId]:[".. nTaskId .."]第二个参数nLimitTime为整型并且>=0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetail [nTaskId]:[".. nTaskId .."]第三个参数nUserId为整型并且大于等于0")
		return
	end
	
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		Sys_SaveAbnormalLog(string.format("函数 Task_AddTaskDetail 中玩家身上已有任务ID为%d的掩码",nTaskId))
		return false
	else
		if AddTaskDetail(nUserId,nTaskId,nLimitTime) then
			Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
			return true
		end
		return false
	end
end

--删除用户任务掩码
--nUserId 玩家id 默认为0
--nTaskId Taskid,大于0
--返回删除用户任务掩码成功或失败 bool型
function Task_DelTaskDetail(nTaskId,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_DelTaskDetail [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_DelTaskDetail [nTaskId]:[".. nTaskId .."]第二个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return DeleteTaskDetail(nUserId,nTaskId)
	else
		Sys_SaveAbnormalLog(string.format("函数 DeleteTaskDetail 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end

--检查用户任务掩码是否存在
--nUserId 玩家id 默认为0
--nTaskId Taskid,大于0
--返回检查用户任务掩码是否存在成功或失败 bool型
function Task_ChkTaskDetail(nTaskId,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_ChkTaskDetail [nTaskId]:[".. nTaskId .."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_ChkTaskDetail [nTaskId]:[".. nTaskId .."]第二个参数nUserId为整型并且大于等于0")
		return
	end
	
	return IsExistTaskDetail(nUserId,nTaskId);
end


--判断stc掩码时间戳是否超过多少时间
--nEvent,nType,stc掩码id
--nDelay，延时时间
--nTimeType，延时类型，默认0。0:秒；1:分钟；2：小时；3，天（绝对时间）;4,天（相对时间）。
--超过，返回ture
--未超过，返回false
function Task_StcInterval(nEvent,nType,nDelay,nTimeType,nUserId)
	local nStcTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
	local nNow = os.time()
--nStcTime返回nil，表示传入参数错误。报log。
	if nStcTime == nil then
		Sys_SaveAbnormalLog("函数 Task_StcInterval 传入的参数[nEvent,nType]:["..nEvent..","..nType.."]格式错误。玩家Id："..Get_UserId())
		return false
	end
--返回0，表示玩家该掩码未使用过，或者未有时间戳操作，直接返回true
	if nStcTime == 0 then
		return true
	end

	if type(nDelay) ~= "number" or nDelay%1 ~= 0 or nDelay <= 0 then
		Sys_SaveAbnormalLog("函数 Task_StcInterval [nEvent,nType]:["..nEvent..","..nType.."]第三个参数 nDelay 为整型并且大于0")
		return
	end

	if nTimeType == nil then
		nTimeType = 0
	elseif type(nTimeType) ~= "number" or nTimeType < 0 or nTimeType > 5 or nTimeType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Task_StcInterval [nEvent,nType]:["..nEvent..","..nType.."]中 nTimeType 只能传0~5的整数")
		return
	end
--秒，直接减
	if nTimeType == 0 then
		return nNow - nStcTime >= nDelay
	end
--分钟，先除以60
	if nTimeType == 1 then
		return (nNow - nStcTime)/60 >= nDelay
	end
--小时，先除3600=60*60
	if nTimeType == 2 then
		return (nNow - nStcTime)/3600 >= nDelay
	end
--天，先除86400=60*60*24 (绝对时间)
	if nTimeType == 3 then
		return (nNow - nStcTime)/86400 >= nDelay
	end
--天(相对时间)
	if nTimeType == 4 then
		local sYear
		local sMonth
		local sDay
		local sNowYear
		local sNowMonth
		local sNowDay
		local sNowTime
		local sTime
		sNowTime = os.date("%Y%m%d",nNow - (nDelay - 1)*86400)
		sTime = os.date("%Y%m%d",nStcTime)
		sYear = string.sub(sTime,1,4)
		sMonth = string.sub(sTime,5,6)
		sDay = string.sub(sTime,7,8)
		sNowYear = string.sub(sNowTime,1,4)
		sNowMonth = string.sub(sNowTime,5,6)
		sNowDay = string.sub(sNowTime,7,8)
		
		if tonumber(sYear) < tonumber(sNowYear) then
			return true
		elseif tonumber(sYear) > tonumber(sNowYear) then
			return false
		elseif tonumber(sMonth) < tonumber(sNowMonth) then
			return true
		elseif tonumber(sMonth) > tonumber(sNowMonth) then
			return false
		elseif tonumber(sDay) < tonumber(sNowDay) then
			return true
		else
			return false
		end
	end
	--周(相对时间)
	if nTimeType == 5 then
		-- 判断两个日期与2016年01月04日（周一）的差（周一开始算一周的第一天）， 除以7的商是否相同，相同则是同一周,依次类推，相隔nDelay周
		local nOldTime = os.time{year=2016,month = 01,day = 04,hour = 0,min=0,sec=0}
		local nWeekSec = 86400*7 --一周的秒数
		if (math.floor((nNow - nOldTime)/(nWeekSec))) - (math.floor((nStcTime- nOldTime)/(nWeekSec))) > (nDelay-1) then
			return true
		else
			return false
		end
	end
end

--对用户stc掩码进行加减
--nUserId 玩家id 默认为0
--nEvent 事件id,大于0
--nType Type,大于0
--nData 加减的值(减的话，这个值传负数进来就可以了)
--nSave 是否即时写库，0或1
--返回设置用户stc掩码成功或失败 bool型
function Task_AddStatistic(nEvent,nType,nData,nSave,nUserId)
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nValue == nil then
		Sys_SaveAbnormalLog("函数 Task_AddStatistic 传入的参数[nEvent,nType]:["..nEvent..","..nType.."]格式错误。玩家Id："..Get_UserId())
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Task_AddStatistic [nEvent,nType]:["..nEvent..","..nType.."]中 nData 只能传整数")
		return
	end
	
	local sNewValue = nValue + nData
	local sReturnValue = Task_SetStatistic(nEvent,nType,sNewValue,nSave,nUserId)
	
	if sReturnValue == nil then
		Sys_SaveAbnormalLog("函数 Task_AddStatistic [nEvent,nType]:["..nEvent..","..nType.."]传入的参数[nSave]:["..nSave.."]格式错误。玩家Id："..Get_UserId())
		return false
	else
		return true
	end
end

--对用户stc掩码进行判断
--nUserId 玩家id 默认为0
--nEvent 事件id,大于0
--nType Type,大于0
-- sOpt 操作符 只能传 ">=",">","<=","<","==","~=" 这几个操作符
-- nData 判断的值
function Task_ChkStcValue(nEvent,nType,sOpt,nData,nUserId)
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nValue == nil then
		Sys_SaveAbnormalLog("函数 Task_ChkStcValue 传入的参数[nEvent,nType]:["..nEvent..","..nType.."]格式错误。玩家Id："..Get_UserId())
		return
	end
	
	if sOpt == nil or type(sOpt) ~= "string" or (sOpt ~= ">=" and sOpt ~= ">" and sOpt ~= "<=" and sOpt ~= "<" and sOpt ~= "==" and sOpt ~= "~=") then
		Sys_SaveAbnormalLog("函数 Task_ChkStcValue [nEvent,nType]:["..nEvent..","..nType.."]中 sOpt 传入的格式有错")
		return
	end
	
	if nData == nil or type(nData) ~= "number" then
		Sys_SaveAbnormalLog("函数 Task_ChkStcValue [nEvent,nType]:["..nEvent..","..nType.."]中 nData 只能传数字")
		return
	end
	
	if sOpt == ">=" then
		return nValue >= nData
	end
	
	if sOpt == ">" then
		return nValue > nData
	end
	
	if sOpt == "<=" then
		return nValue <= nData
	end
	
	if sOpt == "<" then
		return nValue < nData
	end
	
	if sOpt == "==" then
		return nValue == nData
	end
	
	if sOpt == "~=" then
		return nValue ~= nData
	end
end

-- 判断用户任务掩码值
--nUserId 玩家id 默认为0
-- nQuestId 任务掩码ID
-- sPos 对应的任务字段 只能传 "CompleteFlag"，"NotifyFlag"，"1"，"2"，"3"，"4"，"5"，"6"，"7"，"OverTime"，"OverTimeSec"
-- sOpt 操作符 只能传 ">=",">","<=","<","==","~=" 这几个操作符
-- nData 判断的值
function Task_ChkTaskDetailValue(nQuestId,sPos,sOpt,nData,nUserId)
	local nValue = Get_TaskDetail(nQuestId,sPos,nUserId)
	
	if nValue == nil then
		Sys_SaveAbnormalLog("函数 Task_ChkTaskDetailValue 传入的参数[nQuestId,sPos]:["..nQuestId..","..sPos .."]格式错误。玩家Id："..Get_UserId())
		return
	end
	
	if sOpt == nil or type(sOpt) ~= "string" or (sOpt ~= ">=" and sOpt ~= ">" and sOpt ~= "<=" and sOpt ~= "<" and sOpt ~= "==" and sOpt ~= "~=") then
		Sys_SaveAbnormalLog("函数 Task_ChkTaskDetailValue [nQuestId,sPos]:["..nQuestId..","..sPos .."]中 sOpt 传入的格式有错")
		return
	end
	
	if nData == nil or type(nData) ~= "number" then
		Sys_SaveAbnormalLog("函数 Task_ChkTaskDetailValue [nQuestId,sPos]:["..nQuestId..","..sPos .."]中 nData 只能传数字")
		return
	end
	
	if sOpt == ">=" then
		return nValue >= nData
	end
	
	if sOpt == ">" then
		return nValue > nData
	end
	
	if sOpt == "<=" then
		return nValue <= nData
	end
	
	if sOpt == "<" then
		return nValue < nData
	end
	
	if sOpt == "==" then
		return nValue == nData
	end
	
	if sOpt == "~=" then
		return nValue ~= nData
	end
end

--2015.01.08
--新添加弹出玩家跨服任务累积界面

--	// 弹出任务累积的界面，成功返回true，否则返回false
--	// 参数1: 玩家ID,  参数2: 任务ID,  

function Task_OpenTaskAccumulateWindow(nTaskId,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Get_CompleteOSTaskAmount [nTaskId]:["..nTaskId.."]中 nUserId 只能传大于等于0的整数")
		return
	end

	if type(nTaskId) ~= "number" or nTaskId <= 0 or nTaskId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Get_CompleteOSTaskAmount [nTaskId]:["..nTaskId.."]中 nTaskId 只能传大于0的整数")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return OpenTaskAccumulateWindow(nUserId,nTaskId)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_OpenTaskAccumulateWindow 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end


-- 2015.01.09
-- 设置玩家task_detail中max_accumulate_times 值
function Task_SetMaxAccumulateTimes(nTaskId,nData,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_SetMaxAccumulateTimes [nTaskId]:["..nTaskId.."]第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetMaxAccumulateTimes [nTaskId]:["..nTaskId.."]第二个参数nData为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_SetMaxAccumulateTimes [nTaskId]:["..nTaskId.."]第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		return SetTaskDetailData(nUserId,nTaskId,G_MAX_ACCUMULATE_TIMES,nData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_SetMaxAccumulateTimes 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end


--掩码清零，打时间戳
--nEvent,nType,stc掩码id
--nTimeType，延时类型，默认0。0:秒；1:分钟；2：小时；3，天（绝对时间）;4,天（相对时间）。
--nDelay，延时时间
--默认隔天清零,nTimeType=4,nDelay=1

function Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	if type(nEvent) ~= "number" or nEvent%1 ~= 0 or nEvent <= 0 then
		Sys_SaveAbnormalLog("函数 Task_StcReset [nEvent,nType]:[".. nEvent ..",".. nType .."]第一个参数nEvent为整型并且大于0")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 Task_StcReset [nEvent,nType]:[".. nEvent ..",".. nType .."]第二个参数nType为整型并且大于等于0")
		return
	end
	
	if nTimeType == nil then
		nTimeType = 4
	elseif type(nTimeType) ~= "number" or nTimeType < 0 or nTimeType > 4 or nTimeType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Task_StcReset [nEvent,nType]:[".. nEvent ..",".. nType .."]中 nTimeType 只能传0~3的整数")
		return
	end
	
	if nDelay ==nil then
		nDelay = 1	
	elseif type(nDelay) ~= "number" or nDelay%1 ~= 0 or nDelay <= 0 then
		Sys_SaveAbnormalLog("函数 Task_StcReset [nEvent,nType]:[".. nEvent ..",".. nType .."]第三个参数 nDelay 为整型并且大于0")
		return
	end

	if Task_ChkStatistic(nEvent,nType,nUserId) then
		if not Task_StcInterval(nEvent,nType,nDelay,nTimeType,nUserId) then
			return
		end
	end
	
	--置零，打时间戳
	Task_SetStatistic(nEvent,nType,0,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

end

-- 任务增加活跃度
-- AddActivityTaskSchedule
--玩家ID   任务类型

function Task_AddActivityTaskSchedule(TaskType,nUserId)
	if nUserId == nil then
		nUserId = 0
	end

	if type(TaskType) ~= "number" or TaskType%1 ~= 0 or TaskType <= 0 then
		Sys_SaveAbnormalLog("函数 Task_AddActivityTaskSchedule 中参数[TaskType]:[".. TaskType .."]为整型并且大于0")
		return
	end	

	AddActivityTaskSchedule(nUserId,TaskType)
end


---2017.13.13
-- // 检测任务触发NPC条件, 参1：idUser表示玩家ID; 参2：nType表示触发类型; 参3：表示NPC的ID或物品的ID
-- bool TaskCheckNpcCondition(OBJID idUser, int nType, OBJID idTaskNpc)

-- nType:
-- 0：表示NPC
-- 1：表示远程NPC
-- 2：表示远程仓库
-- 3：物品

function Task_CheckNpcCondition(nType,nTaskNpcId,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_CheckNpcCondition 中nUserId为整型并且大于等于0")
		return
	end
	
	if type(nType) ~= "number" or (nType ~= 0 and nType ~= 1 and nType ~= 2 and nType ~= 3) then
		Sys_SaveAbnormalLog("函数 Task_CheckNpcCondition 中nType只能传0,1,2,3")
		return
	end
	
	if type(nTaskNpcId) ~= "number" or nTaskNpcId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Task_CheckNpcCondition 中nTaskNpcId为整型并且大于等于0")
		return
	end
	
	return TaskCheckNpcCondition(nUserId,nType,nTaskNpcId)
end

--设置
function Task_AddTaskDetailData(nTaskId,nData,sPos,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 or nTaskId <= 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetailData 第一个参数nTaskId为整型并且大于0")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetailData 第二个参数nData为整型并且大于等于0")
		return
	end
	
	if sPos == "CompleteFlag" then
		nIndex = G_TASKDETAIL_COMPLETE_FLAG
	elseif sPos == "NotifyFlag" then
		nIndex = G_TASKDETAIL_NOTIFY_FLAG
	elseif sPos == "1" then
		nIndex = G_TASKDETAIL_DATA1
	elseif sPos == "2" then
		nIndex = G_TASKDETAIL_DATA2
	elseif sPos == "3" then
		nIndex = G_TASKDETAIL_DATA3
	elseif sPos == "4" then
		nIndex = G_TASKDETAIL_DATA4
	elseif sPos == "5" then
		nIndex = G_TASKDETAIL_DATA5
	elseif sPos == "6" then
		nIndex = G_TASKDETAIL_DATA6
	elseif sPos == "7" then
		nIndex = G_TASKDETAIL_DATA7
	elseif sPos == "OverTime" then
		nIndex = G_TASKDETAIL_TASK_OVERTIME
	elseif sPos == "OverTimeSec" then
		nIndex = G_TASKDETAIL_TASK_OVERTIME_SEC
	end
	
	if nIndex == 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetailData 中 sPos 传入的格式有错")
		return
	end
	
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Task_AddTaskDetailData 第三个参数nUserId为整型并且大于等于0")
		return
	end

	if Task_ChkTaskDetail(nTaskId,nUserId) then
		local nNowData = GetTaskDetailData(nUserId,nTaskId,nIndex)
		return SetTaskDetailData(nUserId,nTaskId,nIndex,nData + nNowData)
	else
		Sys_SaveAbnormalLog(string.format("函数 Task_AddTaskDetailData 中玩家身上没有任务ID为%d的掩码",nTaskId))
		return
	end
end