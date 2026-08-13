------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]德州新地图春节红包雨活动(2.13-2.17)
--Purpose:	德州新地图春节红包雨活动
--Creator: 	严振飞
--Created:	2018/01/12
------------------------------------------------------------------------------------
-- 3053	新德州地图
-- 3307127	门票碎片
-- 命名前缀
-- RedPackRain_

-- 掩码说明
--	stc(167,30)		记录-玩家今日开启红包次数

-- 动态存储表
-- 51996	data0		开关
--			data1		金币500W	每天单服限10个，抽到送金币1W。文字公告
-- 			data2		金币5000W	每天单服限1个，抽到送金币1W。文字公告
-- 			data3		全服邀请开关

-- LOG-id:12000980

----------------------------------------数据部分--------------------------------------------

-- 掩码数据
local tRedPackRain_Stc = {}
	-- 记录-玩家今日开启红包次数
	tRedPackRain_Stc[1] = {}
	tRedPackRain_Stc[1]["EventType"] = 171
	tRedPackRain_Stc[1]["DataType"] = 90
	tRedPackRain_Stc[1]["MaxNum"] = 3

-- 基础数据
local tRedPackRain_Cont = {}
	-- 动态存储表开关
	tRedPackRain_Cont["Switch"] = {51996,0}
	tRedPackRain_Cont["Invitation"] = {51996,3}

	-- 刷红包雨的数据
	tRedPackRain_Cont["MapId"] = 3053
	tRedPackRain_Cont["PosX"] = 122
	tRedPackRain_Cont["PosY"] = 110
	tRedPackRain_Cont["Cellx"] = 192
	tRedPackRain_Cont["Celly"] = 216
	tRedPackRain_Cont["ItemId"] = 3307137
	tRedPackRain_Cont["ItemNum"] = 100
	tRedPackRain_Cont["ExistTime"] = 300
	
	-- 全服邀请Id
	tRedPackRain_Cont["Invite_Id"] = 17
	tRedPackRain_Cont["Invite_Lev"] = "level >= 1"
	tRedPackRain_Cont["Invite_Time"] = 30 -- 存在时间（秒）
	tRedPackRain_Cont["Invite_StrRes1"] = 10577
	tRedPackRain_Cont["Invite_StrRes2"] = 10578

	-- 全服邀请坐标
	tRedPackRain_Cont["Invite_Pos"] = {}
	tRedPackRain_Cont["Invite_Pos"][1] = {}
	tRedPackRain_Cont["Invite_Pos"][1]["X"] = 178
	tRedPackRain_Cont["Invite_Pos"][1]["Y"] = 322

	tRedPackRain_Cont["Invite_Pos"][2] = {}
	tRedPackRain_Cont["Invite_Pos"][2]["X"] = 254
	tRedPackRain_Cont["Invite_Pos"][2]["Y"] = 322

	tRedPackRain_Cont["Invite_Pos"][3] = {}
	tRedPackRain_Cont["Invite_Pos"][3]["X"] = 312
	tRedPackRain_Cont["Invite_Pos"][3]["Y"] = 292

	tRedPackRain_Cont["Invite_Pos"][4] = {}
	tRedPackRain_Cont["Invite_Pos"][4]["X"] = 312
	tRedPackRain_Cont["Invite_Pos"][4]["Y"] = 174

	tRedPackRain_Cont["Invite_Pos"][5] = {}
	tRedPackRain_Cont["Invite_Pos"][5]["X"] = 250
	tRedPackRain_Cont["Invite_Pos"][5]["Y"] = 111

	tRedPackRain_Cont["Invite_Pos"][6] = {}
	tRedPackRain_Cont["Invite_Pos"][6]["X"] = 161
	tRedPackRain_Cont["Invite_Pos"][6]["Y"] = 111

	tRedPackRain_Cont["Invite_Pos"][7] = {}
	tRedPackRain_Cont["Invite_Pos"][7]["X"] = 125
	tRedPackRain_Cont["Invite_Pos"][7]["Y"] = 150

	tRedPackRain_Cont["Invite_Pos"][8] = {}
	tRedPackRain_Cont["Invite_Pos"][8]["X"] = 124
	tRedPackRain_Cont["Invite_Pos"][8]["Y"] = 276

local tRedPackRain_Reward = {}
	-- 红包使用
	tRedPackRain_Reward[3307137] = {}
	tRedPackRain_Reward[3307137]["ItemChanceSum"] = 10000
	tRedPackRain_Reward[3307137]["LogId"] = 12000980
	tRedPackRain_Reward[3307137]["EventType"] = tRedPackRain_Stc[1]["EventType"]
	tRedPackRain_Reward[3307137]["DataType"] = tRedPackRain_Stc[1]["DataType"]
	tRedPackRain_Reward[3307137]["RewardData"] = tRedPackRain_Stc[1]["MaxNum"]
	-- tRedPackRain_Reward[3307137]["RewardDelay"] = 1
	-- tRedPackRain_Reward[3307137]["RewardTimeType"] = 4
	tRedPackRain_Reward[3307137]["StcFullNoReward"] = 1 -- 超过限制不给奖励

	-- 门票碎片*1	物品	赠	20.0%
	tRedPackRain_Reward[3307137][1] = {}
	tRedPackRain_Reward[3307137][1]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][1]["ItemChance"] = 2000
	tRedPackRain_Reward[3307137][1]["GongGao"] = false
	tRedPackRain_Reward[3307137][1]["RewardItem"]={}
	tRedPackRain_Reward[3307137][1]["RewardItem"][1]={}
	tRedPackRain_Reward[3307137][1]["RewardItem"][1]["Id"]= 3307127
	tRedPackRain_Reward[3307137][1]["RewardItem"][1]["Attr"]= "0 1 3"
	-- 门票碎片*5	物品	赠	5.0%
	tRedPackRain_Reward[3307137][2] = {}
	tRedPackRain_Reward[3307137][2]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][2]["ItemChance"] = 500
	tRedPackRain_Reward[3307137][2]["GongGao"] = false
	tRedPackRain_Reward[3307137][2]["RewardItem"]={}
	tRedPackRain_Reward[3307137][2]["RewardItem"][1]={}
	tRedPackRain_Reward[3307137][2]["RewardItem"][1]["Id"]= 3307127
	tRedPackRain_Reward[3307137][2]["RewardItem"][1]["Attr"]= "0 5 3"
	-- 门票碎片*10	物品	赠	1.0%
	tRedPackRain_Reward[3307137][3] = {}
	tRedPackRain_Reward[3307137][3]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][3]["ItemChance"] = 100
	tRedPackRain_Reward[3307137][3]["GongGao"] = false
	tRedPackRain_Reward[3307137][3]["RewardItem"]={}
	tRedPackRain_Reward[3307137][3]["RewardItem"][1]={}
	tRedPackRain_Reward[3307137][3]["RewardItem"][1]["Id"]= 3307127
	tRedPackRain_Reward[3307137][3]["RewardItem"][1]["Attr"]= "0 10 3"
	-- Domino币 5000	直接发	20.0%
	tRedPackRain_Reward[3307137][4] = {}
	tRedPackRain_Reward[3307137][4]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][4]["ItemChance"] = 2000
	tRedPackRain_Reward[3307137][4]["GongGao"] = false
	tRedPackRain_Reward[3307137][4]["RewardBeans"] = {}--[20]
	tRedPackRain_Reward[3307137][4]["RewardBeans"]["Value"] = 5000
	-- 金币1W			直接发	30.0%
	tRedPackRain_Reward[3307137][5] = {}
	tRedPackRain_Reward[3307137][5]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][5]["ItemChance"] = 3000
	tRedPackRain_Reward[3307137][5]["GongGao"] = false
	tRedPackRain_Reward[3307137][5]["RewardMoney"] = {}--[1]
	tRedPackRain_Reward[3307137][5]["RewardMoney"]["Value"] = 10000
	tRedPackRain_Reward[3307137][5]["Gold"] = true
	-- 金币5W			直接发	20.0%
	tRedPackRain_Reward[3307137][6] = {}
	tRedPackRain_Reward[3307137][6]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][6]["ItemChance"] = 2000
	tRedPackRain_Reward[3307137][6]["GongGao"] = false
	tRedPackRain_Reward[3307137][6]["RewardMoney"] = {}--[1]
	tRedPackRain_Reward[3307137][6]["RewardMoney"]["Value"] = 50000
	tRedPackRain_Reward[3307137][6]["Gold"] = true
	-- 金币50W			直接发	2.0%
	tRedPackRain_Reward[3307137][7] = {}
	tRedPackRain_Reward[3307137][7]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][7]["ItemChance"] = 200
	tRedPackRain_Reward[3307137][7]["GongGao"] = true
	tRedPackRain_Reward[3307137][7]["RewardMoney"] = {}--[1]
	tRedPackRain_Reward[3307137][7]["RewardMoney"]["Value"] = 500000
	tRedPackRain_Reward[3307137][7]["Gold"] = true
	-- 金币500W			直接发	1.8%
	tRedPackRain_Reward[3307137][8] = {}
	tRedPackRain_Reward[3307137][8]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][8]["ItemChance"] = 180
	tRedPackRain_Reward[3307137][8]["GongGao"] = true
	tRedPackRain_Reward[3307137][8]["GlobalId"] = 51996
	tRedPackRain_Reward[3307137][8]["Pos"] = 1
	tRedPackRain_Reward[3307137][8]["MaxData"] = 10
	tRedPackRain_Reward[3307137][8]["FullIndex"] = 5
	tRedPackRain_Reward[3307137][8]["RewardMoney"] = {}--[1]
	tRedPackRain_Reward[3307137][8]["RewardMoney"]["Value"] = 5000000
	tRedPackRain_Reward[3307137][8]["Gold"] = true
	-- 金币5000W		直接发	0.2%
	tRedPackRain_Reward[3307137][9] = {}
	tRedPackRain_Reward[3307137][9]["RandomItemChanceType"] = 2
	tRedPackRain_Reward[3307137][9]["ItemChance"] = 20
	tRedPackRain_Reward[3307137][9]["GongGao"] = true
	tRedPackRain_Reward[3307137][9]["GlobalId"] = 51996
	tRedPackRain_Reward[3307137][9]["Pos"] = 2
	tRedPackRain_Reward[3307137][9]["MaxData"] = 1
	tRedPackRain_Reward[3307137][9]["FullIndex"] = 5
	tRedPackRain_Reward[3307137][9]["RewardMoney"] = {}--[1]
	tRedPackRain_Reward[3307137][9]["RewardMoney"]["Value"] = 50000000
	tRedPackRain_Reward[3307137][9]["Gold"] = true

----------------------------------------函数部分--------------------------------------------
-- 红包使用函数
function RedPackRain_OpenItem(nItemId,sItemName)
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["RedPackRain"]["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sDelText = string.format(tRedPackRain_Text["DelItem"],sItemName)
			User_TalkChannel2005(sDelText)
			Sys_MsgBox(sDelText)
		end
		return
	end
	
	-- 是否超过使用限制
	local nEvent = tRedPackRain_Stc[1]["EventType"]
	local nType = tRedPackRain_Stc[1]["DataType"]
	local nMaxNum = tRedPackRain_Stc[1]["MaxNum"]
	if Task_ChkStcValue(nEvent,nType,">=",nMaxNum) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tRedPackRain_Text["NoUse"])
			Sys_MsgBox(tRedPackRain_Text["NoUse"])
		end
		return
	end
	
	-- 金币上限
	local nBagMoneyNum = tRedPackRain_Reward[nItemId][9]["RewardMoney"]["Value"]
	if not User_CanPutMoney2Bag(nBagMoneyNum,nUserId) then
		Sys_MsgBox(tRewardTemplate_Text["Money"])
		return
	end
	
	-- 多米诺币上限
	local nBagBeansNum = tRedPackRain_Reward[nItemId][4]["RewardBeans"]["Value"]
	-- if not User_CanPutBeans2Bag(nBagBeansNum,nUserId) then
		-- Sys_MsgBox(tRewardTemplate_Text["Beans"])
		-- return
	-- end
	
	-- 删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给奖励
		local tNewReward,sRewardStr = RewardTemplate_NewRandom(tRedPackRain_Reward,nItemId)
		
		-- 提示
		Sys_MsgBox(string.format(tRedPackRain_Text["Getreward"],sRewardStr))
		
		-- 是否出全服公告
		if sRewardStr ~= "" then
			if tNewReward[1]["tAward"][1]["GongGao"] then
				local sUserName =Get_UserName()
				local sText = string.format(tRedPackRain_Text["ShowBroad"],sUserName,sRewardStr)
				Sys_SystemBroadcast(sText)
			end
		end
	end
end

----------------------------------------
--时间自检（重置动态存储表）
function RedPackRain_ResetGlobalId()
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["RedPackRain"]["ActTime"]) then
		return
	end

	-- 开关判断
	local nGlobalId = tRedPackRain_Cont["Switch"][1]
	local nSwitchPos = tRedPackRain_Cont["Switch"][2]
	local nData0 = Get_SysDynaGlobalData(nGlobalId,nSwitchPos)
	if nData0 ~= 0 then
		return
	end
	
	-- 重置存储表
	Sys_ResetAllSynaGlobalData(nGlobalId)
	
	-- 关闭开关
	Sys_SetSynaGlobalData(nGlobalId,nSwitchPos,1)
end

-- 重新打开开关
function RedPackRain_OpenSwitch()
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["RedPackRain"]["ActTime"]) then
		return
	end
	
	-- 开关判断
	local nGlobalId = tRedPackRain_Cont["Switch"][1]
	local nSwitchPos = tRedPackRain_Cont["Switch"][2]
	local nData0 = Get_SysDynaGlobalData(nGlobalId,nSwitchPos)
	if nData0 == 0 then
		return
	end
	
	-- 打开开关
	Sys_SetSynaGlobalData(nGlobalId,nSwitchPos,0)
end

----------------------------------------
-- 刷天石雨
function RedPackRain_DoRain()
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["RedPackRain"]["ActTime"]) then
		return
	end

	-- 地图批量产生指定物品
	local nMapId = tRedPackRain_Cont["MapId"]
	local nPosX = tRedPackRain_Cont["PosX"]
	local nPosY = tRedPackRain_Cont["PosY"]
	local nCellx = tRedPackRain_Cont["Cellx"]
	local nCelly = tRedPackRain_Cont["Celly"]
	local nItemId = tRedPackRain_Cont["ItemId"]
	local nItemNum = tRedPackRain_Cont["ItemNum"]
	local nExistTime = tRedPackRain_Cont["ExistTime"]
	Map_DropMultiItems(nMapId, nItemId, nPosX, nPosY, nCellx, nCelly, nItemNum, nExistTime)
end

----------------------------------------
-- 全服公告
function RedPackRain_Notice()
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["RedPackRain"]["ActTime"]) then
		return
	end

	-- 出公告
	Sys_SystemBroadcast(tRedPackRain_Text["Notice"])
end

-- 全服邀请
function RedPackRain_Invitation()
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["RedPackRain"]["ActTime"]) then
		return
	end
	
	-- 开关判断
	local nGlobalId = tRedPackRain_Cont["Invitation"][1]
	local nSwitchPos = tRedPackRain_Cont["Invitation"][2]
	local nData = Get_SysDynaGlobalData(nGlobalId,nSwitchPos)
	if nData ~= 0 then
		return
	end

	-- 置开关
	Sys_SetSynaGlobalData(nGlobalId,nSwitchPos,1)
	
	-- 全服邀请
	local nMapId = tRedPackRain_Cont["MapId"]
	local nInviteId = tRedPackRain_Cont["Invite_Id"]
	local sInviteLev = tRedPackRain_Cont["Invite_Lev"]
	local nStrSendInviteId = tRedPackRain_Cont["Invite_StrRes1"]
	local nStrTransOKId = tRedPackRain_Cont["Invite_StrRes2"]
	local nCloseSecs = tRedPackRain_Cont["Invite_Time"]
	
	-- 面向所以玩家
	Sys_InviteFilter(nInviteId,sInviteLev)
	Sys_InviteTrans(nMapId,tRedPackRain_Cont["Invite_Pos"],nStrSendInviteId,nStrTransOKId,nInviteId,nCloseSecs)
end

----------------------------------------配置部分--------------------------------------------

-- 红包
tItem[3307137] = tItem[3307137] or {}
tItem[3307137]["Function"] = function(nItemId,sItemName)
	RedPackRain_OpenItem(nItemId,sItemName)
end

----------------------------------------
--时间自检（重置动态存储表）
local tRedPackRain_Time1 = {}
tRedPackRain_Time1["Type"] = 2
tRedPackRain_Time1["TimeType"] = 4
tRedPackRain_Time1["Multiple"] = {}
tRedPackRain_Time1["Multiple"][1] = "00:00 00:03"
tRedPackRain_Time1["Func"] = RedPackRain_ResetGlobalId
table.insert(tSystemTime_InitialData,tRedPackRain_Time1)

--开启动态存储表开关
local tRedPackRain_Time2 = {}
tRedPackRain_Time2["Type"] = 2
tRedPackRain_Time2["TimeType"] = 4
tRedPackRain_Time2["Multiple"] = {}
tRedPackRain_Time2["Multiple"][1] = "00:04 00:06"
tRedPackRain_Time2["Func"] = RedPackRain_OpenSwitch
table.insert(tSystemTime_InitialData,tRedPackRain_Time2)

-- 刷天石雨
local tRedPackRain_Time3 = {}
tRedPackRain_Time3["Type"] = 6
tRedPackRain_Time3["TimeType"] = 4
tRedPackRain_Time3["Multiple"] = {}
tRedPackRain_Time3["Multiple"][1] = "12:00 12:00"
tRedPackRain_Time3["Multiple"][2] = "12:01 12:01"
tRedPackRain_Time3["Multiple"][3] = "12:02 12:02"
tRedPackRain_Time3["Multiple"][4] = "12:03 12:03"
tRedPackRain_Time3["Multiple"][5] = "12:04 12:04"
tRedPackRain_Time3["Multiple"][6] = "12:05 12:05"
tRedPackRain_Time3["Func"] = RedPackRain_DoRain
table.insert(tSystemTime_InitialData,tRedPackRain_Time3)

-- 全服公告
local tRedPackRain_Time4 = {}
tRedPackRain_Time4["Type"] = 2
tRedPackRain_Time4["TimeType"] = 4
tRedPackRain_Time4["Multiple"] = {}
tRedPackRain_Time4["Multiple"][1] = "11:55 11:55"
tRedPackRain_Time4["Func"] = RedPackRain_Notice
table.insert(tSystemTime_InitialData,tRedPackRain_Time4)

-- 全服邀请
local tRedPackRain_Time5 = {}
tRedPackRain_Time5["Type"] = 2
tRedPackRain_Time5["TimeType"] = 4
tRedPackRain_Time5["Multiple"] = {}
tRedPackRain_Time5["Multiple"][1] = "11:59 11:59"
tRedPackRain_Time5["Func"] = RedPackRain_Invitation
table.insert(tSystemTime_InitialData,tRedPackRain_Time5)

