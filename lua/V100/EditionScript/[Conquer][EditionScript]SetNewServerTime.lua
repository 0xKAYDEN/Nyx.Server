----------------------------------------------------------------------------
--Name:		[征服][功能脚本]设置新服的活动时间
--Purpose:	设置新服的活动时间
--Creator: 	严振飞
--Created:	2017/04/27
----------------------------------------------------------------------------

-- 命名前缀
-- SetNewServerTime_


-- 说明
-- 动态存储表 51131
-- data0 	= 1 表示为新服（即新服开启）
--			= 0 表示为正常服（即新服关闭）

-- datastr0 	服务器开启时间（当datastro = "" 且 data0 = 1 时：自动获取开服时间） 例如：`datastr0` = '2017-04-06 00:00'
-- 				以下活动通过datastr0自动后延设置活动日期：
-- 				【南宫促衣】：开服一周 （当`datastr0` = '2017-04-06 00:00' 此时 活动时间为：'2017-04-06 00:00 2017-04-12'）
-- 				【新服主题周】：开服四周（当`datastr0` = '2017-04-06 00:00' 此时 活动时间为：'2017-04-06 00:00 2017-05-03'）

-- datastr2		【新服周卡包】：开服一个月（当`datastr0` = '2017-04-06 00:00' 此时 活动时间为：'2017-04-06 00:00 2017-05-06'）
-- datastr5		【天机果】：开服一个月（当`datastr0` = '2017-04-06 00:00' 此时 活动时间为：'2017-04-06 00:00 2017-05-06'）
-- datastr4		激情服开服前7天时间

-- 策划配置方式
-- （1）自动配置：`data0`= 1，datastr0 = "", `datastr2` = '', `datastr5` = '' 时，服务器开启自动配置新服活动时间
-- （2）手动配置：`data0`= 1，datastr0~5有值时。新服时间则以手动配置的准


------------------------------------------------------------------------------------
-- 新服活动时间，可以参考【南宫促衣】和【新服主题周】
-- 【南宫促衣】  V100\ActiveScript\[Conquer][ActiveScript]CoatWarehouseSale.lua
-- 【新服主题周】  V100\TaskScript\NewServer\[Conquer][TaskScript]NewServerWeeks.lua

-- 51131的datastr1~~datastr5存储位置固定下面这5个
local SetNewServerTime_Activity = {}
	-- datastr1【未使用】
	SetNewServerTime_Activity[1] = {}

	-- datastr2【新服周卡包】：开服一个月
	SetNewServerTime_Activity[2] = {}
	SetNewServerTime_Activity[2]["ActTimeDay"] = 30

	-- datastr3【打宝新服礼包】
	SetNewServerTime_Activity[3] = {}
	SetNewServerTime_Activity[3]["ActTimeDay"] = 30

	-- datastr4【未使用】
	SetNewServerTime_Activity[4] = {}
	SetNewServerTime_Activity[4]["ActTimeDay"] = 7

	-- datastr5【天机果】
	SetNewServerTime_Activity[5] = {}
	SetNewServerTime_Activity[5]["ActTimeDay"] = 30
	
-----------------------------------------固定数据-----------------------------------
local SetNewServerTime_GlobalId = 51131
-----------------------------------------函数部分-----------------------------------

-- 开服设置新服活动时间
function SetNewServerTime_OpenServer()
	local nGlobalId = SetNewServerTime_GlobalId
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	
	-- 不是新服则不设置活动时间
	if nData0 == 0 then
		return
	end
	
	--获取开服时间
	local sStr0 = Get_SysDynaGlobalDataStr0(nGlobalId)
	if sStr0 == "" then
		local sTime = os.date("%Y-%m-%d %H:%M")
		Sys_SetSynaGlobalDataStr0(nGlobalId,sTime)
	end
	
	sStr0 = Get_SysDynaGlobalDataStr0(nGlobalId)
	
	for nPos,v in ipairs(SetNewServerTime_Activity) do
		if v["ActTimeDay"] ~= nil then
			local sAllTime = Get_ActivityAllTime(sStr0,v["ActTimeDay"])
			Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sAllTime)
		end
	end
	
	-- 新服是否关闭操作
	SetNewServerTime_CloseNewServer()
end

-- 关新服操作
function SetNewServerTime_CloseNewServer()
	local nGlobalId = SetNewServerTime_GlobalId
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	
	if nData >= 1 then
		local sActivityTime = ""
		local nNowSec = 0
		for nPos,v in ipairs(SetNewServerTime_Activity) do
			if v["ActTimeDay"] ~= nil then
				local sAllTime = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
				if sAllTime ~= "" then
					--从日期字符串中截取出年月日时分秒  
					local Y = string.sub(sAllTime,18,21)  
					local M = string.sub(sAllTime,23,24)  
					local D = string.sub(sAllTime,26,27)  
					local H = string.sub(sAllTime,29,30)  
					local MM = string.sub(sAllTime,32,33)
					
					local nSec = os.time{year = Y, month = M, day = D, hour = H, min = MM} 
					
					if nSec >= nNowSec then
						nNowSec = nSec
						sActivityTime = sAllTime
					end
				end
			end
		end
		
		if not Sys_ChkFullTime(sActivityTime) then
			Sys_SetSynaGlobalData0(nGlobalId,0)
		end
	end
end

-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],SetNewServerTime_OpenServer)