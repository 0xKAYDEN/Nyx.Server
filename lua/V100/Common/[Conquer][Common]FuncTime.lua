----------------------------------------------------------------------------
--Name:		[征服][常用函数]时间函数.lua
--Purpose:	判断活动时间的相关函数
--Creator: 	郑鋆
--Created:	2019/03/26
----------------------------------------------------------------------------

-- 命名前缀
-- FuncTime_





-- 判断活动时间
function FuncTime_ChkActivityTime(tTimeInfo)
	if type(tTimeInfo) ~= "table" or tTimeInfo["ActivityTime"] == nil then
		return true
	end

	if type(tTimeInfo["ActivityTime"]) == "table" then
		for i,v in pairs(tTimeInfo["ActivityTime"]) do
			if Sys_ChkFullTime(v) then
				return true
			end
		end
	elseif Sys_ChkFullTime(tTimeInfo["ActivityTime"]) then
		return true
	end

	return false
end

-- 清零时间判断
function FuncTime_ChkClearTime(tTimeInfo)
	if type(tTimeInfo) ~= "table" or tTimeInfo["ClearTime"] == nil then
		return true
	end

	local fFunc = Sys_ChkDayTime
	if tTimeInfo["ClearType"] ~= nil then
		fFunc = Sys_ChkMinute
	end

	if type(tTimeInfo["ClearTime"]) == "table" then
		for i,v in pairs(tTimeInfo["ClearTime"]) do
			if fFunc(v) then
				return true
			end
		end
	elseif fFunc(tTimeInfo["ClearTime"]) then
		return true
	end

	return false
end

-- 活动时间转成文字对白
-- 2019年4月27日15:00至5月26日23:59
function FuncTime_ChangeText(sTime)
	local sBeginYear,sBeginMonth,sBeginDay,sBeginHour,sBeginMinute,sEndYear,sEndMonth,sEndDay,sEndHour,sEndMinute = CommonFunc_AnalysisActivityTime(sTime)
	local sBeginHourText = sBeginHour .. ":" .. sBeginMinute
	local sEndHourText = sEndHour .. ":" .. sEndMinute
	local sTimeText = string.format(tRewardTemplate_Text["TimeText"],sBeginYear,sBeginMonth,sBeginDay,sBeginHourText,sEndYear,sEndMonth,sEndDay,sEndHourText)
	return sTimeText
end