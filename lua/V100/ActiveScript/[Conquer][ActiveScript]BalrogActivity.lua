------------------------------------------------------------------------------------
--Name：            171024[英文征服][活动脚本]正气令使用
--Creator:      杨艳
--Created:     2017/10/24
------------------------------------------------------------------------------------

--命名规范 BalrogActivity_

------------------------------------------------------------------------------------
local tBalrogActivity_cont = {}
	tBalrogActivity_cont["ActivityTime"] = "2017-10-24 00:00 2017-11-09 23:59"
	tBalrogActivity_cont["NeedLevel"] = 80
	tBalrogActivity_cont["NeedMetempsychosis"] = 0
	tBalrogActivity_cont["EventType"] = 134
	tBalrogActivity_cont["DataType"] = 46
	



----------------------------------------逻辑部分--------------------------------------------
--正气令添加精元
function BalrogActivity_Add()
	-- 活动时间判断
	if not Sys_ChkFullTime(tBalrogActivity_cont["ActivityTime"]) then
		return false
	end

	-- 等级判断
		if not User_JudgeLevelAndMetempsychosis(tBalrogActivity_cont["NeedLevel"],tBalrogActivity_cont["NeedMetempsychosis"]) then
			return false
		end 

	local nEvent = tBalrogActivity_cont["EventType"]
	local nType = tBalrogActivity_cont["DataType"]
	
	--掩码+100
	Task_AddStatistic(nEvent,nType,100,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	User_TalkChannel2005('You received 100 Spirits!')
	
end 
