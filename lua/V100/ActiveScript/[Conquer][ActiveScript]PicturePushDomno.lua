------------------------------------------------------------------------------------
--Name:		180104[英文征服][活动脚本]新版德州扑克地图制作
--Purpose:	新版德州扑克地图制作
--Creator: 	傅伟龙
--Created:	2018/01/04
------------------------------------------------------------------------------------
-- 命名前缀
-- PicturePushDomno_

--掩码
-- stc(171,93) 记录每天推送多米诺图片的情况
-- stc(173,02) 金币多米诺推送
-- stc(173,55) 德州新地图春节红包强推图
---------------------------------------表配置---------------------------------------
local tPicturePushDomno_Data = {}
tPicturePushDomno_Data["DuominuoTime"] = "2018-01-25 00:00 2018-01-27 23:59"
tPicturePushDomno_Data["MoneyDuominuoTime"] = "2018-02-01 00:00 2018-02-03 23:59"
tPicturePushDomno_Data["RedPacketDuominuoTime"] = "2018-08-30 00:00 2018-09-01 23:59"


-- stc(171,93) 记录每天推送多米诺图片的情况
tPicturePushDomno_Data["Stc"] = {}
tPicturePushDomno_Data["Stc"]["DuominuoPic"] = {}
tPicturePushDomno_Data["Stc"]["DuominuoPic"]["EventType"] = 171
tPicturePushDomno_Data["Stc"]["DuominuoPic"]["DataType"] = 93
tPicturePushDomno_Data["Stc"]["DuominuoPic"]["MaxTimes"] = 1
-- 金币多米诺推送
tPicturePushDomno_Data["Stc"][1] = {}
tPicturePushDomno_Data["Stc"][1]["EventType"] = 173
tPicturePushDomno_Data["Stc"][1]["DataType"] = 02
tPicturePushDomno_Data["Stc"][1]["MaxTimes"] = 1

-- 德州新地图春节红包强推图
tPicturePushDomno_Data["Stc"][2] = {}
tPicturePushDomno_Data["Stc"][2]["EventType"] = 173
tPicturePushDomno_Data["Stc"][2]["DataType"] = 55
tPicturePushDomno_Data["Stc"][2]["MaxTimes"] = 1

--全局表
tPicturePushDomno_Data["global"] = 51995

-- 推送图片索引
tPicturePushDomno_Data["DuominuoTitleNew"] = 1028
tPicturePushDomno_Data["DuominuoTitleMoney"] = 1029
tPicturePushDomno_Data["RedPacketDuominuo"] = 1041
-------------------------------------逻辑------------------------------------------

-- 多米诺 图片推送
function PicturePushDomno_Duominuo()

	-- local nGlobalId = tPicturePushDomno_Data["global"]
	-- local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	-- if nData0 == 0 then
		-- return
	-- end
	
	if not Sys_ChkFullTime(tPicturePushDomno_Data["DuominuoTime"]) then
		return
	end
	
	
	-- 判断掩码
	-- stc(171,93) 记录每天推送图片的情况
	local nEventType = tPicturePushDomno_Data["Stc"]["DuominuoPic"]["EventType"]
	local nDataType = tPicturePushDomno_Data["Stc"]["DuominuoPic"]["DataType"]
	local nMaxTimes = tPicturePushDomno_Data["Stc"]["DuominuoPic"]["MaxTimes"]
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end
	
	-- 判断次数
	-- 次数 >= 1 时
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxTimes,nUserId) then
		return
	end
	
	-- 次数 == 0 时
	local nTitleId = tPicturePushDomno_Data["DuominuoTitleNew"]

	local nUserId = Get_UserId()
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	User_NoviceTeaching(nTitleId,nUserId)
	
end

function PicturePushDomno_MoneyDuominuo()
	
	if not Sys_ChkFullTime(tPicturePushDomno_Data["MoneyDuominuoTime"]) then
		return
	end
	
	
	-- 判断掩码
	-- stc(171,93) 记录每天推送图片的情况
	local nEventType = tPicturePushDomno_Data["Stc"][1]["EventType"]
	local nDataType = tPicturePushDomno_Data["Stc"][1]["DataType"] 
	local nMaxTimes = tPicturePushDomno_Data["Stc"][1]["MaxTimes"] 
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end
	
	-- 判断次数
	-- 次数 >= 1 时
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxTimes,nUserId) then
		return
	end
	
	-- 次数 == 0 时
	local nTitleId = tPicturePushDomno_Data["DuominuoTitleMoney"]

	local nUserId = Get_UserId()
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	User_NoviceTeaching(nTitleId,nUserId)
	
end

function PicturePushDomno_RedPacketDuominuoTime()
	
	if not Sys_ChkFullTime(tPicturePushDomno_Data["RedPacketDuominuoTime"]) then
		return
	end
	
	
	-- 判断掩码
	-- stc(171,93) 记录每天推送图片的情况
	local nEventType = tPicturePushDomno_Data["Stc"][2]["EventType"]
	local nDataType = tPicturePushDomno_Data["Stc"][2]["DataType"] 
	local nMaxTimes = tPicturePushDomno_Data["Stc"][2]["MaxTimes"] 
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end
	
	-- 判断次数
	-- 次数 >= 1 时
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxTimes,nUserId) then
		return
	end
	
	-- 次数 == 0 时
	local nTitleId = tPicturePushDomno_Data["RedPacketDuominuo"]

	local nUserId = Get_UserId()
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	User_NoviceTeaching(nTitleId,nUserId)
	
end


---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,PicturePushDomno_Duominuo)
table.insert(tSystem_PlayLogin_Func,PicturePushDomno_MoneyDuominuo)
table.insert(tSystem_PlayLogin_Func,PicturePushDomno_RedPacketDuominuoTime)