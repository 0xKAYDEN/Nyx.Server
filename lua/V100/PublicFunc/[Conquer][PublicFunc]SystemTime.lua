----------------------------------------------------------------------------
--Name:		[征服][公共函数]时间自检功能.lua
--Purpose:	时间自检功能
--Creator: 	郑鋆
--Created:	2017/05/23
----------------------------------------------------------------------------

-- 制作人员配置的表（服务器启动时对该表进行类型分解）
tSystemTime_InitialData = {}
tSystemTime_InitialData_NoGift = {}
-- ActivityTime		活动时间
-- Type		时间自检类型（=1,表示移动NPC，=2表示重置动态存储值，=3，表示刷怪，=4表示地图玩家清零，=5表示刷陷阱，=6表示其它）（没配该字段默认是其它）
-- TimeType	自检的时间的类型
-- Time		自检的时间（下面是时间类型对应的格式）
			-- //TimeType=1-检查年某天时间Time="mm-dd hh:mm mm-dd hh:mm",
			-- //TimeType=2-检查月某天时间Time="dd hh:mm dd hh:mm",
			-- //TimeType=3-检查周某天时间Time="dd hh:mm dd hh:mm"(周一~周六为1~6,周日为0),
			-- //TimeType=4-检查日时间Time="hh:mm hh:mm",
			-- //TimeType=5-检查小时时间Time="mm mm"(每个小时的第几分到底几分).
-- Multiple	多个时间段
-- Func		执行的函数

-- 每500毫秒执行一次（尽量不要用）
tSystemTime_Each = {}

-- 检测后数据
local tSystemTime_Data = {}

-- 每分钟需要执行的数据
local tSystemTime_RealTime = {}

-- 控制开关
local tSystemTime_Control = {}
	-- 初始化开关
	tSystemTime_Control["Inital"] = true
	-- 筛选数据开关
	tSystemTime_Control["Filter"] = false
	-- 自检开关
	tSystemTime_Control["SelfCheck"] = false
	-- 筛选的索引下标
	tSystemTime_Control["FilterIndex"] = 0
	-- 自检的下表索引
	tSystemTime_Control["SelfIndex"] = 0
	
-- 常量数据
local tSystemTime_Constant = {}
	-- 总的时间次数
	tSystemTime_Constant["Total"] = 120
	-- 筛选数据的时间次数
	tSystemTime_Constant["Filter"] = 2
	-- 最后预留不执行任何操作的次数
	tSystemTime_Constant["Reserve"] = 2
	-- 当前索引
	tSystemTime_Constant["Index"] = 0

-------------------------------------------------------------------主逻辑部分------------------------------------------------------------------
function System_Prompet()
	local nSec = tonumber(os.date("%S"))
	
	-- 判断是否是0秒
	if nSec == 0 then
		SystemTime_InitalData()
	end
	
	-- 筛选数据
	if tSystemTime_Control["Filter"] then
		SystemTime_FilterData()
	end
	
	-- 自检函数
	if tSystemTime_Control["SelfCheck"] and (tSystemTime_Constant["Index"] > tSystemTime_Constant["Filter"]) then
		SystemTime_SelfCheck()
	end
	
	tSystemTime_Constant["Index"] = tSystemTime_Constant["Index"] + 1
	--每500毫秒执行一次（尽量不要用）
	if tSystemTime_Each ~= nil then
		for _,func in pairs(tSystemTime_Each) do
			if func ~= nil and type(func) == "function" then
				func(nSec)
			end
		end
	end
end

-- 初始化数据
function SystemTime_InitalData()
	if not tSystemTime_Control["Inital"] then
		return
	end
	-- 筛选数据开关打开
	tSystemTime_Control["Filter"] = true
	-- 筛选的索引下标
	tSystemTime_Control["FilterIndex"] = 0
	-- 自检的下表索引
	tSystemTime_Control["SelfIndex"] = 0
	-- 初始化开关关闭
	tSystemTime_Control["Inital"] = false
	tSystemTime_Constant["Index"] = 0
	tSystemTime_RealTime = {}
end

-- 筛选数据
function SystemTime_FilterData()
	local nTotalNum = 0
	local nYear = tonumber(os.date("%Y"))
	local nMonth = tonumber(os.date("%m"))
	local nDay = tonumber(os.date("%d"))
	local nWDay = tonumber(os.date("%w"))
	local nHour = tonumber(os.date("%H"))
	local nMinute = tonumber(os.date("%M"))
	local nTime = os.time()
	local nIndex = tSystemTime_Control["FilterIndex"] + 1
	local nInterval = tSystemTime_Constant["Filter"]
	local nMaxIndex = nIndex + math.ceil(#tSystemTime_Data/nInterval)

	for i = nIndex,nMaxIndex do
		tSystemTime_Control["FilterIndex"] = tSystemTime_Control["FilterIndex"] + 1
		
		if tSystemTime_Data[i] == nil then
			break
		end
		
		local v = tSystemTime_Data[i]
		
		-- 判断是否符合条件的数据
		if SystemTime_ChkFilter(v,nYear,nMonth,nDay,nWDay,nHour,nMinute,nTime) then
			table.insert(tSystemTime_RealTime,v)
		end
	end
	
	-- 全部筛选完数据
	if tSystemTime_Control["FilterIndex"] >= #tSystemTime_Data then
		-- 进行排序
		table.sort(tSystemTime_RealTime,SystemTime_Sort)
		-- 筛选数据开关关闭
		tSystemTime_Control["Filter"] = false
		-- 自检开关打开
		tSystemTime_Control["SelfCheck"] = true
	end
end

-- 数据比较
function SystemTime_Sort(a,b)
	return a["Type"] < b["Type"]
end

-- 筛选数据检测
function SystemTime_ChkFilter(tData,nYear,nMonth,nDay,nWDay,nHour,nMinute,nTime)
	local tActivity = tData["Activity"]
	local tTime = tData["Time"]
	local tMultiple = tData["Multiple"]
	local nTimeType = tData["TimeType"]
	
	-- 检测活动时间
	if tActivity ~= nil then
		local nBeginTime = os.time{year = tonumber(tActivity["BeginYear"]),month = tonumber(tActivity["BeginMonth"]),day = tonumber(tActivity["BeginDay"]),hour = tonumber(tActivity["BeginHour"]),min = tonumber(tActivity["BeginMinute"]),sec = 0}
		local nEndTime = os.time{year = tonumber(tActivity["EndYear"]),month = tonumber(tActivity["EndMonth"]),day = tonumber(tActivity["EndDay"]),hour = tonumber(tActivity["EndHour"]),min = tonumber(tActivity["EndMinute"]),sec = 0}

		if nTime < nBeginTime or nTime > nEndTime then
			return false
		end
	end
	
	-- 检测具体的自检时间
	if tTime ~= nil then
		if nTimeType == 3 then
			return SystemTime_ChkMDay(tTime,nWDay,nHour,nMinute)
		else
			local nBeginMonth = tonumber(tTime["BeginMonth"]) or nMonth
			local nBeginDay = tonumber(tTime["BeginDay"]) or nDay
			local nBeginHour = tonumber(tTime["BeginHour"]) or nHour
			local nBeginMinute = tonumber(tTime["BeginMinute"]) or nMinute
			local nEndMonth = tonumber(tTime["EndMonth"]) or nMonth
			local nEndDay = tonumber(tTime["EndDay"]) or nDay
			local nEndHour = tonumber(tTime["EndHour"]) or nHour
			local nEndMinute = tonumber(tTime["EndMinute"]) or nMinute
			local nBeginTime = os.time{year = nYear,month = nBeginMonth,day = nBeginDay,hour = nBeginHour,min = nBeginMinute,sec = 0}
			local nEndTime = os.time{year = nYear,month = nEndMonth,day = nEndDay,hour = nEndHour,min = nEndMinute,sec = 0}

			if nTime < nBeginTime or nTime > nEndTime then
				return false
			end
		end
	elseif tMultiple ~= nil then
		for i,v in pairs(tMultiple) do
			if SystemTime_Compare(v,nTimeType,nYear,nMonth,nDay,nWDay,nHour,nMinute,nTime) then
				return true
			end
		end
		
		return false
	end
	
	return true
end

function SystemTime_Compare(tTime,nTimeType,nYear,nMonth,nDay,nWDay,nHour,nMinute,nTime)
	if nTimeType == 3 then
		return SystemTime_ChkMDay(tTime,nWDay,nHour,nMinute)
	else
		local nBeginMonth = tonumber(tTime["BeginMonth"]) or nMonth
		local nBeginDay = tonumber(tTime["BeginDay"]) or nDay
		local nBeginHour = tonumber(tTime["BeginHour"]) or nHour
		local nBeginMinute = tonumber(tTime["BeginMinute"]) or nMinute
		local nEndMonth = tonumber(tTime["EndMonth"]) or nMonth
		local nEndDay = tonumber(tTime["EndDay"]) or nDay
		local nEndHour = tonumber(tTime["EndHour"]) or nHour
		local nEndMinute = tonumber(tTime["EndMinute"]) or nMinute
		local nBeginTime = os.time{year = nYear,month = nBeginMonth,day = nBeginDay,hour = nBeginHour,min = nBeginMinute,sec = 0}
		local nEndTime = os.time{year = nYear,month = nEndMonth,day = nEndDay,hour = nEndHour,min = nEndMinute,sec = 0}

		if nTime < nBeginTime or nTime > nEndTime then
			return false
		end
	end
	
	return true
end

-- 设置每500毫秒需要执行的数据量
function SystemTime_SetExecutTime()
	local nTotalNum = #tSystemTime_RealTime
	local nIndex = tSystemTime_Control["SelfIndex"] + 1
	local nInterval = tSystemTime_Constant["Total"] - tSystemTime_Constant["Filter"] - tSystemTime_Constant["Reserve"]
	local nMaxIndex = nIndex + math.ceil(nTotalNum/nInterval)
	
	if nMaxIndex > nTotalNum then
		nMaxIndex = nTotalNum
	end
	
	return nIndex,nMaxIndex
end

-- 时间自检
function SystemTime_SelfCheck()
	local nIndex,nMaxIndex = SystemTime_SetExecutTime()
	local nDay = tonumber(os.date("%d"))
	local nWDay = tonumber(os.date("%w"))
	local nHour = tonumber(os.date("%H"))
	local nMinute = tonumber(os.date("%M"))
	
	for i = nIndex,nMaxIndex do
		tSystemTime_Control["SelfIndex"] = tSystemTime_Control["SelfIndex"] + 1
		
		local tData = tSystemTime_RealTime[i]
		if tData == nil then
			break
		end
		
		local func = tData["Func"]
		
		if func ~= nil and type(func) == "function" then
			func(nHour,nMinute,nDay,nWDay)
		end
	end
	
	if tSystemTime_Control["SelfIndex"] >= #tSystemTime_RealTime then
		-- 自检操作关闭
		tSystemTime_Control["SelfCheck"] = false
		-- 初始化开关打开
		tSystemTime_Control["Inital"] = true
	end
end

----------------------------------------------------------服务器加载部分------------------------------------------------------------------------------
-- 服务器加载时调用
function SystemTime_ServerStart()
	tSystemTime_Data = {}
	if type(tSystemTime_InitialData) ~= nil and next(tSystemTime_InitialData) == nil then
		return
	end
	
	for i,v in pairs(tSystemTime_InitialData) do
		if SystemTime_ChkData(v) then
			SystemTime_InsertData(v)
		end
	end
	
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer()then
		if type(tSystemTime_InitialData_NoGift) ~= nil and next(tSystemTime_InitialData_NoGift) == nil then
			return
		end
		
		for i,v in pairs(tSystemTime_InitialData_NoGift) do
			if SystemTime_ChkData(v) then
				SystemTime_InsertData(v)
			end
		end
	end
end

function SystemTime_ChkData(tTime)
	if tTime["ActivityTime"] == nil then
		return true
	end
	
	if CommonFunc_GetBeforeActivityTime(tTime["ActivityTime"]) then
		return true
	elseif Sys_ChkFullTime(tTime["ActivityTime"]) then
		return true
	end
	
	return false
end

function SystemTime_AnalysisTime(nType,sTime)
	local tTime = {}
	
	if nType == 5 then
		-- "mm mm"
		tTime["BeginMinute"],tTime["EndMinute"] = CommonFunc_AnalysisHourTime(sTime)
	elseif nType == 4 then
		-- "hh:mm hh:mm"
		tTime["BeginHour"],tTime["BeginMinute"],tTime["EndHour"],tTime["EndMinute"] = CommonFunc_AnalysisDayTime(sTime)
	elseif nType == 3 then
		-- "dd hh:mm dd hh:mm"
		tTime["BeginWDay"],tTime["BeginHour"],tTime["BeginMinute"],tTime["EndWDay"],tTime["EndHour"],tTime["EndMinute"] = CommonFunc_AnalysisWDayTime(sTime)
	elseif nType == 2 then
		-- "dd hh:mm dd hh:mm"
		tTime["BeginDay"],tTime["BeginHour"],tTime["BeginMinute"],tTime["EndDay"],tTime["EndHour"],tTime["EndMinute"] = CommonFunc_AnalysisWDayTime(sTime)
	elseif nType == 1 then
		-- "mm-dd hh:mm mm-dd hh:mm"
		tTime["BeginMonth"],tTime["BeginDay"],tTime["BeginHour"],tTime["BeginMinute"],tTime["EndMonth"],tTime["EndDay"],tTime["EndHour"],tTime["EndMinute"] = CommonFunc_AnalysisYearTime(sTime)
	end
	
	return tTime
end

function SystemTime_InsertData(tTime)
	local tInsertTable = {}
	tInsertTable["Type"] = tTime["Type"] or 6
	
	if tTime["ActivityTime"] ~= nil then
		local t = {}
		t["BeginYear"],t["BeginMonth"],t["BeginDay"],t["BeginHour"],t["BeginMinute"],t["EndYear"],t["EndMonth"],t["EndDay"],t["EndHour"],t["EndMinute"] = CommonFunc_AnalysisActivityTime(tTime["ActivityTime"])
		tInsertTable["Activity"] = t
	end
	
	-- 判断存放的时间格式
	if tTime["TimeType"] ~= nil then
		tInsertTable["TimeType"] = tTime["TimeType"]
		if tTime["Time"] ~= nil then
			tInsertTable["Time"] = SystemTime_AnalysisTime(tTime["TimeType"],tTime["Time"])
		end
		
		if tTime["Multiple"] ~= nil then
			tInsertTable["Multiple"] = {}
			for i,v in pairs(tTime["Multiple"]) do
				tInsertTable["Multiple"][i] = SystemTime_AnalysisTime(tTime["TimeType"],v)
				
			end
		end
	end
	
	tInsertTable["Func"] = tTime["Func"]
	table.insert(tSystemTime_Data,tInsertTable)
end

-- 检测周时间
function SystemTime_ChkMDay(tTime,nWDay,nHour,nMinute)
	local nBeginWDay = tonumber(tTime["BeginWDay"])
	local nEndWDay = tonumber(tTime["EndWDay"])
	local nBeginHour = tonumber(tTime["BeginHour"])
	local nBeginMinute = tonumber(tTime["BeginMinute"])
	local nEndHour = tonumber(tTime["EndHour"])
	local nEndMinute = tonumber(tTime["EndMinute"])

	if nBeginWDay == nil or nEndWDay == nil then
		return false
	end
	
	if nBeginWDay == 0 then
		nBeginWDay = 7
	end
	
	if nEndWDay == 0 then
		nEndWDay = 7
	end
	
	if nWDay == 0 then
		nWDay = 7
	end

	if nBeginWDay > nWDay or nWDay > nEndWDay then
		return false
	end
	
	if nBeginWDay == nEndWDay then
		if nBeginHour > nHour or nEndHour < nHour then
			return false
		end
		
		if nBeginHour == nEndHour then
			if nBeginMinute > nMinute or nEndMinute < nMinute then
				return false
			end
		elseif nBeginHour == nHour then
			if nBeginMinute > nMinute then
				return false
			end
		elseif nEndHour == nHour then
			if nEndMinute < nMinute then
				return false
			end
		end
		
		return true
	end
	
	if nWDay == nEndWDay then
		if nEndHour < nHour then
			return false
		end
		
		if (nEndHour == nHour) and (nEndMinute < nMinute) then
			return false
		end
		
		return true
	end
	
	if nWDay == nBeginWDay then
		if nBeginHour > nHour then
			return false
		end
		
		if (nBeginHour == nHour) and (nBeginMinute > nMinute) then
			return false
		end
	end
	
	return true
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],SystemTime_ServerStart)