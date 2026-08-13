------------------------------------------------------------------------------------
--Name:		170418[英文征服][活动脚本]精准推送图片更新
--Purpose:	精准推送图片更新
--Creator: 	陈琳
--Created:	2017/04/18
------------------------------------------------------------------------------------
-- 命名前缀
-- TexasActivity_

-- lua.ini
-- 40509

-- 掩码
-- stc(159,40) 记录每天推送次数
-- stc(160,94) 记录每天弹链接1次数
-- stc(160,95) 记录每天弹链接2次数
-- stc(160,66) 记录每天弹链接CopokerWebPage次数
-- stc(160,67) 记录每天弹链接次数 锦标赛
-- stc(165,68) 记录每天推送图片的情况
-- stc(170,09) 记录每天推送多米诺图片的情况

-- stc(171,24) 记录每天推送的链接（new） 圣诞期间

-----------------------------------------------------------------------------
-- 【英文征服】棋牌圣诞节活动游戏内推图需求
-- 需求：
-- 1、850*680强推图：
-- 推送时间：12.21-12.23
-- 推送范围：德州大厅、domino大厅
-- 每个账号每天首次登录时弹出，使用附件宣传图1
-- 2、活动预告页内嵌弹窗（850*480）
-- 推送时间：12.24-12.26
-- 推送范围：全区全服
-- 地址：http://co.99.com/guide/event/2017/christmaseventforeshow/client/
-- 3、活动页内嵌弹窗（850*480）
-- 推送时间：12.28-12.30
-- 推送范围：全区全服
-- 地址：co.99.com/guide/event/2017/christmasevent/client/

-- 请安排制作制作全区全服内嵌弹窗上线时间：2018.1.18-2018.1.21当天玩家首次登录弹出，每个账号每天一次。
-- 弹窗内嵌页地址：http://co.99.com/guide/event/2018/goldrush/client/如有问题，请及时沟通，谢谢！

---------------------------------------配表---------------------------------------
local TexasActivity_Data = {}
	-- 推送时间
	TexasActivity_Data["Pic"] = "2017-10-12 00:00 2017-10-17 23:59"
	TexasActivity_Data["PicOne"] = "2017-10-12 00:00 2017-10-14 23:59"
	TexasActivity_Data["PicTwo"] = "2017-10-15 00:00 2017-10-17 23:59"
	TexasActivity_Data["LinkTime"] = "2018-09-15 00:00 2018-09-18 23:59"
	TexasActivity_Data["LinkTimeOne"] = "2017-08-10 00:00 2017-08-10 11:00"
	TexasActivity_Data["LinkTimeTwo"] = "2017-08-10 11:30 2017-08-11 11:00"
	TexasActivity_Data["CopokerTime"] = "2018-06-23 00:00 2018-07-17 23:59"
	TexasActivity_Data["TournamentTime"] = "2018-10-11 00:00 2018-10-17 23:59"
	TexasActivity_Data["DuominuoTime"] = "2020-07-28 00:00 2020-08-17 23:59"
	
	TexasActivity_Data["GoldrushTime"] = "2018-07-31 00:00 2018-08-04 23:59"
	
	--圣诞节背包信活动时间
	TexasActivity_Data["Christmasday"] = "2017-12-20 00:00 2018-01-03 23:59"
	-- 活动页内嵌弹窗
	TexasActivity_Data["Link_2"] = "2018-05-08 00:00 2018-05-10 23:59"
	--制作全区全服内嵌弹窗
	TexasActivity_Data["NewWeb"] = "2019-05-02 00:00 2019-05-04 23:59"
	
	TexasActivity_Data["NewWebDouble"] = "2018-09-25 00:00 2018-09-28 23:59"
	--游戏内弹窗制作 （12.26-12.31）
	TexasActivity_Data["NewWeb2"] = "2020-01-14 00:00 2020-01-20 23:59"
	

	TexasActivity_Data["Lighting"] = "2020-06-18 00:00 2020-06-22 23:59"
	-- 水果机桃源灵玉版本宣传制作（和运营沟通，配置长期，下一个广告图时候直接下架）
	TexasActivity_Data["FruitMachine"] = "2020-06-18 00:00 2020-06-22 23:59"
	
	-- 推送图片索引
	TexasActivity_Data["Title"] = {}
	TexasActivity_Data["Title"][1] = 1022
	TexasActivity_Data["Title"][2] = 1023
	TexasActivity_Data["Title"][3] = 1080
	TexasActivity_Data["Title"][4] = 1081
	TexasActivity_Data["Title"]["MobileCO"] = 1076
	TexasActivity_Data["TournamentTitle"] = 1031
	TexasActivity_Data["DuominuoTitle"] = 1026
	TexasActivity_Data["DuominuoTitleNew"] = 1071
	
	-- 链接
	TexasActivity_Data["WebPage"] = {}
	TexasActivity_Data["WebPage"][1] = "http://grandwinner.99.com/show/goldmining/"
	TexasActivity_Data["WebPage"][2] = "http://co.99.com/guide/event/2017/tournament/ingame/p2.html"
	TexasActivity_Data["CopokerWebPage"] = "http://co.99.com/guide/event/2018/worldcup/client.shtml"
	TexasActivity_Data["TournamentWebPage"] = "http://event.co.99.com/SiegeNewBoss/"
	TexasActivity_Data["WebPage_2"] = "http://co.99.com/guide/event/2018/grandwinner/client/"
	
	TexasActivity_Data["Goldrush"] = "http://co.99.com/guide/event/2018/cps/client/"
	
	TexasActivity_Data["NewWebPage"] = "https://co.99.com/guide/event/2019/client/0422/1.shtml"
	
	TexasActivity_Data["NewWebPageDouble"] = "https://grandwinner.99.com/show/newserver2/"
	--游戏内弹窗制作 （12.26-12.31）
	TexasActivity_Data["NewWebPage2"] = "https://co.99.com/guide/event/2020/client/pubgmall/1.shtml"
	
	TexasActivity_Data["LightingWeb"] = "https://bit.ly/2Y7V1T9"
	
	-- 地图
	TexasActivity_Data["MapId"] = {}
	TexasActivity_Data["MapId"]["Texas"] = 3053
	TexasActivity_Data["MapId"]["Domino"] = 3053
	
	TexasActivity_Data["Stc"] = {}
	-- stc(159,40) 记录每天推送次数
	TexasActivity_Data["Stc"]["NoviceGuide"] = {}
	TexasActivity_Data["Stc"]["NoviceGuide"][1] = {}
	TexasActivity_Data["Stc"]["NoviceGuide"][1]["EventType"] = 159
	TexasActivity_Data["Stc"]["NoviceGuide"][1]["DataType"] = 40
	TexasActivity_Data["Stc"]["NoviceGuide"][1]["MaxTimes"] = 1
	-- stc(163,86) 记录每天推送次数
	TexasActivity_Data["Stc"]["NoviceGuide"][2] = {}
	TexasActivity_Data["Stc"]["NoviceGuide"][2]["EventType"] = 163
	TexasActivity_Data["Stc"]["NoviceGuide"][2]["DataType"] = 86
	TexasActivity_Data["Stc"]["NoviceGuide"][2]["MaxTimes"] = 1
	-- stc(160,94) 记录每天弹链接1次数
	TexasActivity_Data["Stc"][1] = {}
	TexasActivity_Data["Stc"][1]["EventType"] = 180
	TexasActivity_Data["Stc"][1]["DataType"] = 51
	TexasActivity_Data["Stc"][1]["MaxTimes"] = 1
	-- stc(160,95) 记录每天弹链接2次数
	TexasActivity_Data["Stc"][2] = {}
	TexasActivity_Data["Stc"][2]["EventType"] = 160
	TexasActivity_Data["Stc"][2]["DataType"] = 95
	TexasActivity_Data["Stc"][2]["MaxTimes"] = 1
	-- stc(171,24) 记录每天弹链接(new)
	TexasActivity_Data["Stc"][3] = {}
	TexasActivity_Data["Stc"][3]["EventType"] = 171
	TexasActivity_Data["Stc"][3]["DataType"] = 24
	TexasActivity_Data["Stc"][3]["MaxTimes"] = 1
	-- stc(160,66) 记录每天弹链接CopokerWebPage次数
	TexasActivity_Data["Stc"]["Copoker"] = {}
	TexasActivity_Data["Stc"]["Copoker"]["EventType"] = 160
	TexasActivity_Data["Stc"]["Copoker"]["DataType"] = 66
	TexasActivity_Data["Stc"]["Copoker"]["MaxTimes"] = 1
	-- stc(160,67) 记录每天弹链接次数 锦标赛
	TexasActivity_Data["Stc"]["Tournament"] = {}
	TexasActivity_Data["Stc"]["Tournament"]["EventType"] = 160
	TexasActivity_Data["Stc"]["Tournament"]["DataType"] = 67
	TexasActivity_Data["Stc"]["Tournament"]["MaxTimes"] = 1
	-- stc(165,68) 记录每天推送图片的情况
	TexasActivity_Data["Stc"]["Pic"] = {}
	TexasActivity_Data["Stc"]["Pic"]["EventType"] = 165
	TexasActivity_Data["Stc"]["Pic"]["DataType"] = 68
	TexasActivity_Data["Stc"]["Pic"]["MaxTimes"] = 1
	-- stc(211,18) 记录奥马哈推送
	TexasActivity_Data["Stc"]["OmahaPic"] = {}
	TexasActivity_Data["Stc"]["OmahaPic"]["EventType"] = 211
	TexasActivity_Data["Stc"]["OmahaPic"]["DataType"] = 18
	TexasActivity_Data["Stc"]["OmahaPic"]["MaxTimes"] = 1
	
	-- stc(170,09) 记录每天推送多米诺图片的情况
	TexasActivity_Data["Stc"]["DuominuoPic"] = {}
	TexasActivity_Data["Stc"]["DuominuoPic"]["EventType"] = 170
	TexasActivity_Data["Stc"]["DuominuoPic"]["DataType"] = 9
	TexasActivity_Data["Stc"]["DuominuoPic"]["MaxTimes"] = 1
	
	-- stc(172,04) 记录每天推送次数
	TexasActivity_Data["Stc"]["Goldrush"] = {}
	TexasActivity_Data["Stc"]["Goldrush"]["EventType"] = 172
	TexasActivity_Data["Stc"]["Goldrush"]["DataType"] = 4
	TexasActivity_Data["Stc"]["Goldrush"]["MaxTimes"] = 1
	
	-- stc(172,04) 记录每天推送次数
	TexasActivity_Data["Stc"]["NewWeb"] = {}
	TexasActivity_Data["Stc"]["NewWeb"]["EventType"] = 183
	TexasActivity_Data["Stc"]["NewWeb"]["DataType"] = 21
	TexasActivity_Data["Stc"]["NewWeb"]["MaxTimes"] = 1
	
	-- stc(172,04) 记录每天推送次数
	TexasActivity_Data["Stc"]["NewWebDouble"] = {}
	TexasActivity_Data["Stc"]["NewWebDouble"]["EventType"] = 183
	TexasActivity_Data["Stc"]["NewWebDouble"]["DataType"] = 47
	TexasActivity_Data["Stc"]["NewWebDouble"]["MaxTimes"] = 1
	
	-- stc(213,08) 记录每天推送次数
	TexasActivity_Data["Stc"]["WebPush"] = {}
	TexasActivity_Data["Stc"]["WebPush"]["EventType"] = 213
	TexasActivity_Data["Stc"]["WebPush"]["DataType"] = 08
	TexasActivity_Data["Stc"]["WebPush"]["MaxTimes"] = 1

	--
	TexasActivity_Data["Stc"]["Lighting"] = {}
	TexasActivity_Data["Stc"]["Lighting"]["EventType"] = 218
	TexasActivity_Data["Stc"]["Lighting"]["DataType"] = 75
	TexasActivity_Data["Stc"]["Lighting"]["MaxTimes"] = 1

	--
	TexasActivity_Data["Stc"]["MobileCO"] = {}
	TexasActivity_Data["Stc"]["MobileCO"]["EventType"] = 218
	TexasActivity_Data["Stc"]["MobileCO"]["DataType"] = 31
	TexasActivity_Data["Stc"]["MobileCO"]["MaxTimes"] = 1
	
	-- 水果机桃源灵玉版本宣传制作
	TexasActivity_Data["Stc"]["FruitMachine"] = {}
	TexasActivity_Data["Stc"]["FruitMachine"]["EventType"] = 225
	TexasActivity_Data["Stc"]["FruitMachine"]["DataType"] = 52
	TexasActivity_Data["Stc"]["FruitMachine"]["MaxTimes"] = 1
	
local nTexasActivity_Data = 3307052
local sTexasActivity_Data = "https://coevent.99.com/Wishing_Card/"

local tTexasActivity_Log = {}
tTexasActivity_Log["DelItem"] = "0,0,%d,%d,18000183,2,0,0"
---------------------------------------逻辑--------------------------------
-- 跳出弹框
function TexasActivity_NoviceGuide()
	-- 判断时间
	local nIndex = 0
	if Sys_ChkFullTime(TexasActivity_Data["PicOne"]) then
		nIndex = 1
	elseif Sys_ChkFullTime(TexasActivity_Data["PicTwo"]) then
		nIndex = 2
	end
	if nIndex == 0 then
		return
	end
	-- if not Sys_ChkFullTime(TexasActivity_Data["Pic"]) then
		-- return
	-- end
	
	-- 判断地图
	-- local nUserMapId = Get_UserMapId()
	-- local nTexasMapId = TexasActivity_Data["MapId"]["Texas"]
	-- if nUserMapId ~= nTexasMapId then
		-- return
	-- end
	
	local nEventType = TexasActivity_Data["Stc"]["NoviceGuide"][nIndex]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["NoviceGuide"][nIndex]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["NoviceGuide"][nIndex]["MaxTimes"]
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
	local nTitleId = TexasActivity_Data["Title"][nIndex]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_NoviceTeaching(nTitleId,nUserId)
end



-- 图片推送
function TexasActivity_OmahaPicSet()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["LightingEternity"]["ActTime"]) then
		return
	end
	
	
	-- 判断掩码
	local nEventType = TexasActivity_Data["Stc"]["OmahaPic"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["OmahaPic"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["OmahaPic"]["MaxTimes"]
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
	local nTitleId = TexasActivity_Data["TournamentTitle"]
	local nUserId = Get_UserId()
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	User_NoviceTeaching(nTitleId,nUserId)
end


-- 弹链接
function TexasActivity_WebPage()
	-- if not Sys_ChkFullTime(TexasActivity_Data["Christmasday"]) then
		-- --删除过期的圣诞卡片
		-- if Item_ChkMulItem(nTexasActivity_Data,nTexasActivity_Data,1) then
			-- Item_DelMulItem(nTexasActivity_Data,nTexasActivity_Data,1)
		-- end
	-- end
	
	-- 时间
	if not Sys_ChkFullTime(TexasActivity_Data["LinkTime"]) then
		return
	end
	

	-- local nIndex = 0
	-- if Sys_ChkFullTime(TexasActivity_Data["LinkTimeOne"]) then
		-- nIndex = 1
	-- elseif Sys_ChkFullTime(TexasActivity_Data["LinkTimeTwo"]) then
		-- nIndex = 2
	-- end
	-- if nIndex == 0 then
		-- return
	-- end
	
	-- 地图
	local nUserMapId = Get_UserMapId()
	local nTexasMapId = TexasActivity_Data["MapId"]["Texas"]
	if nUserMapId ~= nTexasMapId then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"][1]["EventType"]
	local nDataType = TexasActivity_Data["Stc"][1]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"][1]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["WebPage"][1]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
end

-- 弹链接(new)
function TexasActivity_WebPageNew()
	-- 判断时间
	if not Sys_ChkFullTime(TexasActivity_Data["Link_2"]) then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"][3]["EventType"]
	local nDataType = TexasActivity_Data["Stc"][3]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"][3]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["WebPage_2"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
end

function TexasActivity_Copoker()
	-- 时间
	if not Sys_ChkFullTime(TexasActivity_Data["CopokerTime"]) then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"]["Copoker"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["Copoker"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["Copoker"]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["CopokerWebPage"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
	-- User_SendWebPage(sWebPage)
end

-- 图片推送
function TexasActivity_Tournament()
	-- 判断时间
	if not Sys_ChkFullTime(TexasActivity_Data["TournamentTime"]) then
		return
	end
	
	-- 判断掩码
	-- stc(165,68) 记录每天推送图片的情况
	local nEventType = TexasActivity_Data["Stc"]["Pic"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["Pic"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["Pic"]["MaxTimes"]
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
	local nTitleId = TexasActivity_Data["TournamentTitle"]
	local nUserId = Get_UserId()
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	User_NoviceTeaching(nTitleId,nUserId)
end

-- 锦标赛 进德州大厅弹内嵌
function TexasActivity_TournamentWebDialog()
	-- 时间
	if not Sys_ChkFullTime(TexasActivity_Data["TournamentTime"]) then
		return
	end
	
	-- 地图
	-- local nUserMapId = Get_UserMapId()
	-- local nTexasMapId = TexasActivity_Data["MapId"]["Texas"]
	-- if nUserMapId ~= nTexasMapId then
		-- return
	-- end
	
	local nEventType = TexasActivity_Data["Stc"]["Tournament"]["EventType"] 
	local nDataType = TexasActivity_Data["Stc"]["Tournament"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["Tournament"]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["TournamentWebPage"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	-- User_SendWebDialog(sWebPage)
	User_SendWebPage(sWebPage)
end

-- 多米诺 图片推送
function TexasActivity_Duominuo()
	if not Sys_ChkFullTime(TexasActivity_Data["DuominuoTime"]) then
		return
	end
	
	-- 判断地图
	local nUserMapId = Get_UserMapId()
	local nTexasMapId = TexasActivity_Data["MapId"]["Texas"]
	local nDominoMapId = TexasActivity_Data["MapId"]["Domino"]
	-- if nUserMapId == nTexasMapId or nUserMapId == nDominoMapId then
		-- 判断掩码
		-- stc(170,09) 记录每天推送图片的情况
		local nEventType = TexasActivity_Data["Stc"]["DuominuoPic"]["EventType"]
		local nDataType = TexasActivity_Data["Stc"]["DuominuoPic"]["DataType"]
		local nMaxTimes = TexasActivity_Data["Stc"]["DuominuoPic"]["MaxTimes"]
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
		local nTitleId = TexasActivity_Data["DuominuoTitleNew"]

		local nUserId = Get_UserId()
		Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
		User_NoviceTeaching(nTitleId,nUserId)
	-- end
end

--圣诞卡片
function TexasActivity_GoWeb(nItemId)
	if not Sys_ChkFullTime(TexasActivity_Data["Christmasday"]) then
		--删除过期的圣诞卡片
		if Item_ChkMulItem(nTexasActivity_Data,nTexasActivity_Data,1) then
			Item_DelMulItem(nTexasActivity_Data,nTexasActivity_Data,1)
		end
		return
	end
	
	local sWebPage = sTexasActivity_Data
	User_SendWebPage(sWebPage)
end

--
function TexasActivity_Goldrush()
	if not Sys_ChkFullTime(TexasActivity_Data["GoldrushTime"]) then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"]["Goldrush"]["EventType"] 
	local nDataType = TexasActivity_Data["Stc"]["Goldrush"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["Goldrush"]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["Goldrush"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
end

-- 3310185	NewPoker&DominoMiniClient
function TexasActivity_DominuoLetter(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["DominuoLetter"]["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId)  then
			Sys_SaveActionFestivalLog(string.format(tTexasActivity_Log["DelItem"],nItemId,1))
			User_TalkChannel2005(tTexasActivity_Text[nItemId]["TimeOut"])
			return
		end
	end
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
function TexasActivity_DominuoLetter1()
	local sWeb = tTexasActivity_Text[3310185]["Web1"]
	User_SendWebDialog(sWeb)
end
function TexasActivity_DominuoLetter2()
	local sWeb = tTexasActivity_Text[3310185]["Web2"]
	User_SendWebPage(sWeb)
end

--制作全区全服内嵌弹窗 9.21-9.24
function TexasActivity_NewWeb()
	if not Sys_ChkFullTime(TexasActivity_Data["NewWeb"]) then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"]["NewWeb"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["NewWeb"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["NewWeb"]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["NewWebPage"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
end

--制作全区全服内嵌弹窗 9.25-9.28
function TexasActivity_NewWebDouble()
	if not Sys_ChkFullTime(TexasActivity_Data["NewWebDouble"]) then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"]["NewWebDouble"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["NewWebDouble"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["NewWebDouble"]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["NewWebPageDouble"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
end

--游戏内弹窗制作 （12.26-12.31）
function TexasActivity_NewWeb2()
	if not Sys_ChkFullTime(TexasActivity_Data["NewWeb2"]) then
		return
	end
	
	local nEventType = TexasActivity_Data["Stc"]["WebPush"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["WebPush"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["WebPush"]["MaxTimes"]
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
	local sWebPage = TexasActivity_Data["NewWebPage2"]
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_SendWebDialog(sWebPage)
end


function TexasActivity_Lighting()
	if not Sys_ChkFullTime(TexasActivity_Data["Lighting"]) then 
		return 
	end
	local nEventType = TexasActivity_Data["Stc"]["Lighting"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["Lighting"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["Lighting"]["MaxTimes"]
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxTimes,nUserId) then
		return
	end
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	-- User_NoviceTeaching(TexasActivity_Data["Title"][4])
	User_SendWebDialog(TexasActivity_Data["LightingWeb"])
end

function TexasActivity_MobileCOLetter(nTexasActivity_ItemId)
	if not Item_ChkItem(nTexasActivity_ItemId) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["MobileCO"]["ActivityTime"]) then
		if Item_ChkItem(nTexasActivity_ItemId) and Item_DelItem(nTexasActivity_ItemId)  then
			Sys_SaveActionFestivalLog(string.format(tTexasActivity_Log["DelItem"],nTexasActivity_ItemId,1))
			User_TalkChannel2005(tTexasActivity_Text[nTexasActivity_ItemId]["TimeOut"])
			return
		end
	end
	if Item_ChkItem(nTexasActivity_ItemId) then
		LinkItemGossipFunc_New(nTexasActivity_ItemId,"1-1")
	end
end

function TexasActivity_MobileCO()
	if not Sys_ChkFullTime(tActivityTime["MobileCO"]["ActivityTime"]) then 
		return 
	end
	local nEventType = TexasActivity_Data["Stc"]["MobileCO"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["MobileCO"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["MobileCO"]["MaxTimes"]
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxTimes,nUserId) then
		return
	end
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_NoviceTeaching(TexasActivity_Data["Title"]["MobileCO"])
end

-- 水果机桃源灵玉版本宣传制作
function TexasActivity_FruitMachine()
	if not Sys_ChkFullTime(TexasActivity_Data["FruitMachine"]) then 
		return 
	end
	local nEventType = TexasActivity_Data["Stc"]["FruitMachine"]["EventType"]
	local nDataType = TexasActivity_Data["Stc"]["FruitMachine"]["DataType"]
	local nMaxTimes = TexasActivity_Data["Stc"]["FruitMachine"]["MaxTimes"]
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxTimes,nUserId) then
		return
	end
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	User_NoviceTeaching(TexasActivity_Data["Title"][4])
end

---------------------------------------背包信逻辑--------------------------------
tItem[3307052] = tItem[3307052] or {}
tItem[3307052]["Function"] = function(nItemId,sItemName)
	TexasActivity_GoWeb(nItemId)
end
-- 3310185	NewPoker&DominoMiniClient
tItemFace[3310185] = 1634
tItem[3310185] = tItem[3310185] or {}
tItem[3310185]["Function"] = function(nItemId,sItemName)
	TexasActivity_DominuoLetter(nItemId)
end
tItem[3310185]["DialogueText"] = tTexasActivity_Text[3310185]
tItem[3310185]["Text1-1"] = {111,112,113}
tItem[3310185]["tOption1-1"] = {1,2}
tItem[3310185]["OptionFunc1"] = "TexasActivity_DominuoLetter1"
tItem[3310185]["OptionFunc2"] = "TexasActivity_DominuoLetter2"
-- 3330497,'MobileCOInvitation'
tItem[3330497] = tItem[3330497] or {}
tItem[3330497]["Function"] = function(nItemId,sItemName)
	TexasActivity_MobileCOLetter(nItemId)
end
tItem[3330497]["DialogueText"] = tTexasActivity_Text[3330497]
tItem[3330497]["Text1-1"] = {111,112,113,114,115}
tItem[3330497]["tOption1-1"] = {1,2}
tItem[3330497]["OptionFunc1"] = "User_SendWebPage</S>https://play.google.com/store/apps/details?id=com.Tq.CQ2ClientAndroid"
tItem[3330497]["OptionFunc2"] = "User_SendWebPage</S>https://itunes.apple.com/us/app/conquer-online/id459012102"

-- 3330498,'COMoblieLuckyLetter
tItemFace[3330498] = 352
tItem[3330498] = tItem[3330498] or {}
tItem[3330498]["DialogueText"] = tTexasActivity_Text[3330498]
tItem[3330498]["Text1-1"] = {111,112,113,114}
tItem[3330498]["tOption1-1"] = {1,2}
tItem[3330498]["OptionFunc1"] = "User_SendWebPage</S>https://itunes.apple.com/us/app/conquer-online/id459012102?mt=8&ign-mpt=uo%3D4"
tItem[3330498]["OptionFunc2"] = "User_SendWebPage</S>https://play.google.com/store/apps/details?id=com.Tq.CQ2ClientAndroid"

---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_NoviceGuide)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_WebPage)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_OmahaPicSet)


tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_WebPageNew)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_Copoker)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_Tournament)

-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,TexasActivity_TournamentWebDialog)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_Duominuo)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_Goldrush)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_NewWeb)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_NewWebDouble)

--游戏内弹窗制作 （12.26-12.31）
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_NewWeb2)

--游戏内弹窗制作 （12.26-12.31）
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_Lighting)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_MobileCO)

-- 水果机桃源灵玉版本宣传制作
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TexasActivity_FruitMachine)