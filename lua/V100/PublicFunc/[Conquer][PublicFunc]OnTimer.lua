----------------------------------------------------------------------------
--Name:		[征服][公用函数]定时器函数.lua
--Purpose:	定时器函数
--Creator: 	郑鋆
--Created:	2019/10/09
----------------------------------------------------------------------------
---------------------------------命名规范----------------------------------

-- 命名前缀
-- OnTimer_

-- 玩家定时器
local tOnTimer_UserConfig = {}
-- ["Func"]
-- ["Time"]
-- ["UserId"]

-- 系统定时器
local tOnTimer_SysConfig = {}
-- ["Func"]
-- ["Time"]
local nOnTimer_NowTime = 0

---------------------------------------------------逻辑部分----------------------------------------------------------------
function OnTimer_Main()
	local nNowTime = os.time()

	if nNowTime == nOnTimer_NowTime then
		return
	end

	nOnTimer_NowTime = nNowTime
	-- 调用玩家定时器
	OnTimer_User(nNowTime)
	-- 调用系统定时器
	OnTimer_Sys(nNowTime)
end

-- 玩家定时器
function OnTimer_User(nNowTime)
	local tIndex = {}
	-- 筛选有哪个计时器到时了
	for i,v in pairs(tOnTimer_UserConfig) do
		if v["Time"] <= nNowTime and v["CarriedOut"] == nil then
			table.insert(tIndex,i)

			local sFunc,tParam = OnTimer_Analysis(v["Func"])
			local func = _G[sFunc]
			local nUserId = v["UserId"]
			tParam[#tParam+1] = nUserId
			
			func(table.unpack(tParam))
			v["CarriedOut"] = 1
		end
	end

	-- 没有计时器到点
	if #tIndex == 0 then
		return
	end

	for i = 1,#tIndex do
		local nIndex = tIndex[i]
		-- table.remove(tOnTimer_UserConfig,nIndex)
		tOnTimer_UserConfig[nIndex] = nil
	end
end

-- 系统定时器
function OnTimer_Sys(nNowTime)
	local tIndex = {}
	-- 筛选有哪个计时器到时了
	for i,v in pairs(tOnTimer_SysConfig) do
		if v["Time"] <= nNowTime and v["CarriedOut"] == nil then
			table.insert(tIndex,i)

			local sFunc,tParam = OnTimer_Analysis(v["Func"])
			local func = _G[sFunc]
			func(table.unpack(tParam))
			v["CarriedOut"] = 1
		end
	end

	-- 没有计时器到点
	if #tIndex == 0 then
		return
	end

	for i,nIndex in pairs(tIndex) do
		-- table.remove(tOnTimer_SysConfig,nIndex)
		tOnTimer_SysConfig[nIndex] = nil
	end
end

-- 函数字符串解析
function OnTimer_Analysis(str)
	local nIndex = string.find(str,"</")
	local tInfo = {}
	local nNewIndex = 0

	if nIndex == nil then
		return str,tInfo
	end

	local sFunc = string.sub(str,1,nIndex - 1)
	local sNewStr = string.sub(str,nIndex,- 1)

	local nCalLoop = 0
	while true do
		if nCalLoop > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 OnTimer_Analysis 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		local sType = string.sub(sNewStr,3,3)
		sNewStr = string.sub(sNewStr,5,-1)
		local nAnalysisIndex = string.find(sNewStr,"</")
		nNewIndex = nNewIndex + 1

		if nAnalysisIndex == nil then
			if sType == "N" then
				tInfo[nNewIndex] = tonumber(sNewStr)
			elseif sType == "S" then
				tInfo[nNewIndex] = tostring(sNewStr)
			end
			break
		else
			local sParam = string.sub(sNewStr,1,nAnalysisIndex - 1)
			sNewStr = string.sub(sNewStr,nAnalysisIndex,- 1)

			if sType == "N" then
				tInfo[nNewIndex] = tonumber(sParam)
			elseif sType == "S" then
				tInfo[nNewIndex] = tostring(sParam)
			end
		end
	end

	return sFunc,tInfo
end

-- 设置玩家定时器
function OnTimer_SetUserTimer(nTimeDelay,sFunc,nUserId)
	local nNowTime = os.time()
	local tInfo = {}
	tInfo["Time"] = nNowTime + nTimeDelay
	tInfo["Func"] = sFunc
	tInfo["UserId"] = nUserId or Get_UserId()
	table.insert(tOnTimer_UserConfig,tInfo)
end

-- 设置系统定时器
function OnTimer_SetSysTimer(nTimeDelay,sFunc)
	local nNowTime = os.time()
	local tInfo = {}
	tInfo["Time"] = nNowTime + nTimeDelay
	tInfo["Func"] = sFunc

	table.insert(tOnTimer_SysConfig,tInfo)
end
-- 删除玩家定时器
function OnTimer_DelUserTimer(sFunc,nUserId)
	if nUserId  <= 0 or type(nUserId) ~= "number" then
		return
	end
	
	for i,v in pairs(tOnTimer_UserConfig) do
		if v["UserId"] == nUserId and v["Func"] == sFunc then
			-- table.remove(tOnTimer_UserConfig,i)
			tOnTimer_UserConfig[i] = nil
			break
		end
	end
end

---------------------------------时间自检---------------------------------------------
tSystemTime_Each = tSystemTime_Each or {}
table.insert(tSystemTime_Each,OnTimer_Main)