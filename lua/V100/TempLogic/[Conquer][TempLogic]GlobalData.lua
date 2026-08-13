----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]动态存储表清零.lua
--Purpose:	动态存储表清零
--Creator: 	郑鋆
--Created:	2019/03/27
----------------------------------------------------------------------------


-- 命名前缀
-- GlobalData_

-- ["Time"] = {}								存放活动相关的时间数据
-- ["Time"]["ActivityTime"] = {}					存放活动时间（单个时间的配成字符，多个时间段的用表存放）
-- ["Time"]["ClearTime"] = {}					存放清零时间（单个时间的配成字符，多个时间段的用表存放）
-- ["Rest"] = {}								存放需要清理的数据
-- ["Rest"]["GlobalId"] = {519201}				存放清楚的动态存储ID
-- ["Rest"]["Pos"] = {519201}					存放清楚的动态存储ID的位置（没配默认全清）

--示例
-- tGlobalData_Info[1] = {}
-- tGlobalData_Info[1]["Time"] = {}
-- tGlobalData_Info[1]["Time"]["ActivityTime"] = "2019-03-20 00:00 2019-05-06 23:59"
-- tGlobalData_Info[1]["Time"]["ClearTime"] = "00:00 00:59"
-- tGlobalData_Info[1]["Rest"] = {}
-- tGlobalData_Info[1]["Rest"]["GlobalId"] = {53199}
-- tGlobalData_Info[1]["Rest"]["Pos"] = {0}


tGlobalData_Info = {}

-- 常量数据
local tGlobalData_Constant = {}
	-- 默认清零时间
	tGlobalData_Constant["RestTime"] = "00:00 00:02"

local tGlobalData_Clear = {}
	tGlobalData_Clear["Type"] = 2
	tGlobalData_Clear["TimeType"] = 4
	tGlobalData_Clear["Multiple"] = {}
	tGlobalData_Clear["Multiple"][1] = "00:00 00:05"
	tGlobalData_Clear["Multiple"][2] = "01:00 01:05"
	tGlobalData_Clear["Multiple"][3] = "02:00 02:05"
	tGlobalData_Clear["Multiple"][4] = "03:00 03:05"
	tGlobalData_Clear["Multiple"][5] = "04:00 04:05"
	tGlobalData_Clear["Multiple"][6] = "05:00 05:05"
	tGlobalData_Clear["Multiple"][7] = "06:00 06:05"
	tGlobalData_Clear["Multiple"][8] = "07:00 07:05"
	tGlobalData_Clear["Multiple"][9] = "08:00 08:05"
	tGlobalData_Clear["Multiple"][10] = "09:00 09:05"
	tGlobalData_Clear["Multiple"][11] = "10:00 10:05"
	tGlobalData_Clear["Multiple"][12] = "11:00 11:05"
	tGlobalData_Clear["Multiple"][13] = "12:00 12:05"
	tGlobalData_Clear["Multiple"][14] = "13:00 13:05"
	tGlobalData_Clear["Multiple"][15] = "14:00 14:05"
	tGlobalData_Clear["Multiple"][16] = "15:00 15:05"
	tGlobalData_Clear["Multiple"][17] = "16:00 16:05"
	tGlobalData_Clear["Multiple"][18] = "17:00 17:05"
	tGlobalData_Clear["Multiple"][19] = "18:00 18:05"
	tGlobalData_Clear["Multiple"][20] = "19:00 19:05"
	tGlobalData_Clear["Multiple"][21] = "20:00 20:05"
	tGlobalData_Clear["Multiple"][22] = "21:00 21:05"
	tGlobalData_Clear["Multiple"][23] = "22:00 22:05"
	tGlobalData_Clear["Multiple"][24] = "23:00 23:05"

-------存放清零开关
local tGlobalData_Switch = {}

-- 主函数
function GlobalData_Main()
	for i,v in pairs(tGlobalData_Info) do
		GlobalData_Clear(i,v)
	end
end

-- 动态存储表清零
function GlobalData_Clear(nIndex,tGlobalInfo)
	-- 活动时间判断
	if not FuncTime_ChkActivityTime(tGlobalInfo["Time"]) then
		return false
	end

	-- 清零时间判断
	if not FuncTime_ChkClearTime(tGlobalInfo["Time"]) then
		tGlobalData_Switch[nIndex] = nil
		return false
	end

	-- 清零开关判断
	if tGlobalData_Switch[nIndex] ~= nil then
		return
	end

	-- 清零操作
	if not GlobalData_ClearGlobal(tGlobalInfo["Rest"]) then
		return
	end

	-- 清零开关关闭
	tGlobalData_Switch[nIndex] = true
end

-- 清零操作
function GlobalData_ClearGlobal(tRest)
	if type(tRest) ~= "table" or tRest["GlobalId"] == nil then
		return true
	end

	if type(tRest["GlobalId"]) == "table" then
		for i,v in pairs(tRest["GlobalId"]) do
			GlobalData_ResetGlobal(v,tRest["Pos"])
		end
	end

	return true
end

function GlobalData_ResetGlobal(nGlobalId,tPos)
	-- 表示全部清楚
	if tPos == nil then
		Sys_ResetAllSynaGlobalData(nGlobalId)
		Sys_ResetAllSynaGlobalDataStr(nGlobalId)
		Sys_ResetAllSynaGlobalTime(nGlobalId)
	else
		for i,v in pairs(tPos) do
			Sys_SetSynaGlobalData(nGlobalId,v,0)
			Sys_SetSynaGlobalDataStr(nGlobalId,v,"")
			Sys_SetSynaGlobalTime(nGlobalId,v,0)
		end
	end
end

-- 服务器启动的时候加载
function GlobalData_Start()
	for i,v in pairs(tGlobalData_Info) do
		GlobalData_Init(v)
	end

	-- 重载时间自检的数据
	tGlobalData_Clear["Func"] = GlobalData_Main
	table.insert(tSystemTime_InitialData,tGlobalData_Clear)
	SystemTime_ServerStart()
end

function GlobalData_Init(tGlobalInfo)
	-- 活动时间判断
	if not FuncTime_ChkActivityTime(tGlobalInfo["Time"]) then
		return false
	end

	if type(tGlobalInfo["Time"]) == "table" then
		if tGlobalInfo["Time"]["ClearTime"] ~= nil then
			if type(tGlobalInfo["Time"]["ClearTime"]) == "table" then
				for i,v in pairs(tGlobalInfo["Time"]["ClearTime"]) do
					table.insert(tGlobalData_Clear["Multiple"],v)
				end
			else
				table.insert(tGlobalData_Clear["Multiple"],tGlobalInfo["Time"]["ClearTime"])
			end
		else
			tGlobalInfo["Time"]["ClearTime"] = tGlobalData_Constant["RestTime"]
		end
	end
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],GlobalData_Start)