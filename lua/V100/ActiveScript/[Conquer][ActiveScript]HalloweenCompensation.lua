------------------------------------------------------------------------------------
--Name：        191028[简体征服][活动脚本]万圣节延迟更新奖励
--Creator:      耿力兀
--Created:     2019-10-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--lua.ini 41595 
--前缀：HalloweenCompensation_

----------------------------------表配置部分--------------------------------------------
local tHalloweenCompensation_Date = {}
	tHalloweenCompensation_Date["Level"] = 80
	tHalloweenCompensation_Date["Metempsychosis"] = 0
	tHalloweenCompensation_Date["EventType"] = 208
	tHalloweenCompensation_Date["DataType"] = 87
	tHalloweenCompensation_Date["ActionId"] = 575038
	tHalloweenCompensation_Date["ExistDay"] = 7
	
----------------------------------逻辑部分---------------------------------------------
function HalloweenCompensation_Email()
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["HalloweenCompensation"]["ActivityTime"]) then
		return 
	end 
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tHalloweenCompensation_Date["Level"],tHalloweenCompensation_Date["Metempsychosis"]) then
		return
	end
	local nEvent = tHalloweenCompensation_Date["EventType"]
	local nType = tHalloweenCompensation_Date["DataType"]
	--隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nDate = Get_UserStatisticValue(nEvent,nType)
	if nDate >0 then 
		return 
	end 
	Task_SetStatistic(nEvent,nType,1,1) 
	Task_SetStcTimestamp(nEvent, nType,0)
	-- 发奖
	local nActionId =tHalloweenCompensation_Date["ActionId"]
	local nExistDay =tHalloweenCompensation_Date["ExistDay"]
	local sSender = tHalloweenCompensation_Text["Sender"]
	local sTitle = tHalloweenCompensation_Text["Title"]
	local sContent = tHalloweenCompensation_Text["Content"]  
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end 


--上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,HalloweenCompensation_Email)