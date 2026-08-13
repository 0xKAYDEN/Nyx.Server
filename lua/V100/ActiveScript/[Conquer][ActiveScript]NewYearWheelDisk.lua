------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]元旦轮盘活动
--Purpose:	元旦轮盘活动
--Creator: 	郑鋆
--Created:	2015/12/30
------------------------------------------------------------------------------------

-- 命名规则
-- NewYearWheelDisk_

-- 掩码说明
-- 139	76 获得吉星高照大礼包
-- 139	77 获得鸿运当头大礼包

-- logID	12000290

-- 常量表
local tNewYearWheelDisk_Constant = {}
	tNewYearWheelDisk_Constant["ActiveTime"] = "2016-01-04 00:00 2016-01-07 23:59"
	tNewYearWheelDisk_Constant["UseTime"] = "2016-01-04 00:00 2016-01-10 23:59"
	tNewYearWheelDisk_Constant["GlobalId"] = 50993
	tNewYearWheelDisk_Constant["NeedLevel"] = 120
	tNewYearWheelDisk_Constant["NeedMetempsychosis"] = 1
	
	tNewYearWheelDisk_Constant["Log"] = "0,0,%d,1,12000290,2,%d,%d"
	tNewYearWheelDisk_Constant["EmoneyLog"] = "250	4051	-%d	-%d	1	"

local tNewYearWheelDisk_Stc = {}
	tNewYearWheelDisk_Stc["EventType"] = 139
	tNewYearWheelDisk_Stc["DataType"] = 76

-- 奖励表
local tNewYearWheelDisk_Reward = {}
	-- 500分钟经验（满级给250气力）
	tNewYearWheelDisk_Reward[3008304] = {}
	tNewYearWheelDisk_Reward[3008304]["Exp"] = 500
	tNewYearWheelDisk_Reward[3008304]["Strength"] = 250

	-- 300气力值
	tNewYearWheelDisk_Reward[3008305] = {}
	tNewYearWheelDisk_Reward[3008305]["Strength"] = 300
	tNewYearWheelDisk_Reward[3008305]["Log"] = "0,0,3008305,1,12000290,2,12,300"
	
	-- 250点修行值
	tNewYearWheelDisk_Reward[3008306] = {}
	tNewYearWheelDisk_Reward[3008306]["Cultivation"] = 250
	tNewYearWheelDisk_Reward[3008306]["Log"] = "0,0,3008306,1,12000290,2,6,250"
	
	-- 10个强炼丹（赠）+4个激活时效护心丹
	tNewYearWheelDisk_Reward[3008307] = {}
	tNewYearWheelDisk_Reward[3008307]["Space"] = 4
	tNewYearWheelDisk_Reward[3008307]["Item"] = {}
	tNewYearWheelDisk_Reward[3008307]["Item"][1] = {}
	tNewYearWheelDisk_Reward[3008307]["Item"][1]["Id"] = 3003124
	tNewYearWheelDisk_Reward[3008307]["Item"][1]["Attr"] = "0 10 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearWheelDisk_Reward[3008307]["Item"][2] = {}
	tNewYearWheelDisk_Reward[3008307]["Item"][2]["Id"] = 3002029
	tNewYearWheelDisk_Reward[3008307]["Item"][2]["Attr"] = "0 4 0 0 1"
	tNewYearWheelDisk_Reward[3008307]["Log"] = "0,0,3008307,1,12000290,2,3003124[3002029],10[4]"

	-- 10个究极通神丹（赠）
	tNewYearWheelDisk_Reward[3008309] = {}
	tNewYearWheelDisk_Reward[3008309]["Item"] = {}
	tNewYearWheelDisk_Reward[3008309]["Item"][1] = {}
	tNewYearWheelDisk_Reward[3008309]["Item"][1]["Id"] = 3003126
	tNewYearWheelDisk_Reward[3008309]["Item"][1]["Attr"] = "0 10 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearWheelDisk_Reward[3008309]["Log"] = "0,0,3008309,1,12000290,2,3003126,10"
	
	-- 赤炼石+4（赠）
	tNewYearWheelDisk_Reward[3008310] = {}
	tNewYearWheelDisk_Reward[3008310]["Item"] = {}
	tNewYearWheelDisk_Reward[3008310]["Item"][1] = {}
	tNewYearWheelDisk_Reward[3008310]["Item"][1]["Id"] = 730004
	tNewYearWheelDisk_Reward[3008310]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearWheelDisk_Reward[3008310]["Log"] = "0,0,3008310,1,12000290,2,730004,1"

	-- 白骏马+4包（赠）该礼包打开后有10%几率获得非赠
	tNewYearWheelDisk_Reward[3008311] = {}
	tNewYearWheelDisk_Reward[3008311]["StartRandom"] = 10
	tNewYearWheelDisk_Reward[3008311]["EndRandom"] = 100
	tNewYearWheelDisk_Reward[3008311]["MaxData"] = 15
	tNewYearWheelDisk_Reward[3008311]["GlobalPos"] = 3
	tNewYearWheelDisk_Reward[3008311]["ItemId"] = 300000
	tNewYearWheelDisk_Reward[3008311]["NonGrant"] = "0 1 0 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"
	tNewYearWheelDisk_Reward[3008311]["Grant"] = "0 1 3 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150 0 3"
	tNewYearWheelDisk_Reward[3008311]["Msg"] = "SnowHorseMsg"
	tNewYearWheelDisk_Reward[3008311]["Log"] = "0,0,3008311,1,12000290,1[5],300000,1"

	-- 1000分钟经验（满级给500气力）
	tNewYearWheelDisk_Reward[3008313] = {}
	tNewYearWheelDisk_Reward[3008313]["Exp"] = 1000
	tNewYearWheelDisk_Reward[3008313]["Strength"] = 500

	-- 1000气力值
	tNewYearWheelDisk_Reward[3008314] = {}
	tNewYearWheelDisk_Reward[3008314]["Strength"] = 1000
	tNewYearWheelDisk_Reward[3008314]["Log"] = "0,0,3008314,1,12000290,2,12,1000"
	
	-- 500点修行值
	tNewYearWheelDisk_Reward[3008315] = {}
	tNewYearWheelDisk_Reward[3008315]["Cultivation"] = 500
	tNewYearWheelDisk_Reward[3008315]["Log"] = "0,0,3008315,1,12000290,2,6,500"
	
	-- 50个强炼丹（赠）+10个激活时效护心丹
	tNewYearWheelDisk_Reward[3008316] = {}
	tNewYearWheelDisk_Reward[3008316]["Space"] = 10
	tNewYearWheelDisk_Reward[3008316]["Item"] = {}
	tNewYearWheelDisk_Reward[3008316]["Item"][1] = {}
	tNewYearWheelDisk_Reward[3008316]["Item"][1]["Id"] = 3003124
	tNewYearWheelDisk_Reward[3008316]["Item"][1]["Attr"] = "0 50 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearWheelDisk_Reward[3008316]["Item"][2] = {}
	tNewYearWheelDisk_Reward[3008316]["Item"][2]["Id"] = 3002029
	tNewYearWheelDisk_Reward[3008316]["Item"][2]["Attr"] = "0 10 0 0 1"
	tNewYearWheelDisk_Reward[3008316]["Log"] = "0,0,3008316,1,12000290,2,3003124[3002029],50[10]"
	
	-- 200点赠点天石，该礼包打开后有10%几率获得非赠
	tNewYearWheelDisk_Reward[3008317] = {}
	tNewYearWheelDisk_Reward[3008317]["Emoney"] = 200
	tNewYearWheelDisk_Reward[3008317]["StartRandom"] = 10
	tNewYearWheelDisk_Reward[3008317]["EndRandom"] = 100
	tNewYearWheelDisk_Reward[3008317]["MaxData"] = 5000
	tNewYearWheelDisk_Reward[3008317]["GlobalPos"] = 1
	
	-- 20个究极通神丹（赠）
	tNewYearWheelDisk_Reward[3008318] = {}
	tNewYearWheelDisk_Reward[3008318]["Item"] = {}
	tNewYearWheelDisk_Reward[3008318]["Item"][1] = {}
	tNewYearWheelDisk_Reward[3008318]["Item"][1]["Id"] = 3003126
	tNewYearWheelDisk_Reward[3008318]["Item"][1]["Attr"] = "0 20 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearWheelDisk_Reward[3008318]["Log"] = "0,0,3008318,1,12000290,2,3003126,20"
	
	-- 赤炼石+5（赠）该礼包打开后有10%几率获得非赠
	tNewYearWheelDisk_Reward[3008319] = {}
	tNewYearWheelDisk_Reward[3008319]["StartRandom"] = 10
	tNewYearWheelDisk_Reward[3008319]["EndRandom"] = 100
	tNewYearWheelDisk_Reward[3008319]["MaxData"] = 10
	tNewYearWheelDisk_Reward[3008319]["GlobalPos"] = 4
	tNewYearWheelDisk_Reward[3008319]["ItemId"] = 730005
	tNewYearWheelDisk_Reward[3008319]["NonGrant"] = "0 1"
	tNewYearWheelDisk_Reward[3008319]["Grant"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearWheelDisk_Reward[3008319]["Msg"] = "5StoneMsg"
	tNewYearWheelDisk_Reward[3008319]["Log"] = "0,0,3008319,1,12000290,1[6],730005,1"

	-- 白骏马+4包（赠）
	tNewYearWheelDisk_Reward[3008320] = {}
	tNewYearWheelDisk_Reward[3008320]["Item"] = {}
	tNewYearWheelDisk_Reward[3008320]["Item"][1] = {}
	tNewYearWheelDisk_Reward[3008320]["Item"][1]["Id"] = 300000
	tNewYearWheelDisk_Reward[3008320]["Item"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150 0 3"
	tNewYearWheelDisk_Reward[3008320]["Log"] = "0,0,3008320,1,12000290,2,300000,1"
	
-----------------------------------逻辑部分------------------------------------------------
-- 经验包
function NewYearWheelDisk_UseExp(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sLog = ""
		local sContent = ""
		
		if Get_UserLevel() < G_User_MaxLev then
			-- 加经验
			User_AddExpTime(tNewYearWheelDisk_Reward[nItemId]["Exp"])
			sLog = string.format(tNewYearWheelDisk_Constant["Log"],nItemId,4,tNewYearWheelDisk_Reward[nItemId]["Exp"])
			sContent = string.format(tNewYearWheelDisk_Text["Exp"],tNewYearWheelDisk_Reward[nItemId]["Exp"])
		else
			-- 加气力
			User_AddStrengthValue(tNewYearWheelDisk_Reward[nItemId]["Strength"])
			sLog = string.format(tNewYearWheelDisk_Constant["Log"],nItemId,12,tNewYearWheelDisk_Reward[nItemId]["Strength"])
			sContent = string.format(tNewYearWheelDisk_Text["Strength"],tNewYearWheelDisk_Reward[nItemId]["Strength"])
		end

		NewYearWheelDisk_Common(sLog,sContent)
	end
end

function NewYearWheelDisk_Common(sLog,sContent)
	-- 打log
	Sys_SaveActionFestivalLog(sLog)
	-- 给提示
	User_TalkChannel2005(sContent)
end

-- 简单的礼包使用
function NewYearWheelDisk_UsePackage(nItemId)
	-- 判断背包空间
	if tNewYearWheelDisk_Reward[nItemId]["Space"] ~= nil then
		if not User_CheckLeftSpace(tNewYearWheelDisk_Reward[nItemId]["Space"]) then
			User_TalkChannel2005(tNewYearWheelDisk_Text[nItemId]["NoSpace"])
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sLog = tNewYearWheelDisk_Reward[nItemId]["Log"]
		local sContent = ""
		
		-- 加气力
		if tNewYearWheelDisk_Reward[nItemId]["Strength"] ~= nil then
			User_AddStrengthValue(tNewYearWheelDisk_Reward[nItemId]["Strength"])
			sContent = string.format(tNewYearWheelDisk_Text["Strength"],tNewYearWheelDisk_Reward[nItemId]["Strength"])
		end
		
		-- 加修行值
		if tNewYearWheelDisk_Reward[nItemId]["Cultivation"] ~= nil then
			User_AddCultivation(tNewYearWheelDisk_Reward[nItemId]["Cultivation"])
			sContent = string.format(tNewYearWheelDisk_Text["Cultivation"],tNewYearWheelDisk_Reward[nItemId]["Cultivation"])
		end
		
		-- 给物品
		if tNewYearWheelDisk_Reward[nItemId]["Item"] ~= nil and type(tNewYearWheelDisk_Reward[nItemId]["Item"]) == "table" then
			for i,v in pairs(tNewYearWheelDisk_Reward[nItemId]["Item"]) do
				Item_AddNewItem(v["Id"],v["Attr"])
			end
			sContent = tNewYearWheelDisk_Text[nItemId]["Reward"]
		end

		NewYearWheelDisk_Common(sLog,sContent)
	end
end

-- 限制包
function NewYearWheelDisk_UseLimitPackage(nItemId)
	local bMono = false
	local nGlobalId = tNewYearWheelDisk_Constant["GlobalId"]
	local nMaxData = tNewYearWheelDisk_Reward[nItemId]["MaxData"]
	local nGlobalPos = tNewYearWheelDisk_Reward[nItemId]["GlobalPos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nGlobalPos)
	local sLog = ""
	local sContent = tNewYearWheelDisk_Text[nItemId]["Grant"]
	
	-- 判断是否获得非赠
	local nStartNum = tNewYearWheelDisk_Reward[nItemId]["StartRandom"]
	local nEndNum = tNewYearWheelDisk_Reward[nItemId]["EndRandom"]
	
	if Sys_Random(nStartNum,nEndNum) then
		bMono = true
		sContent = tNewYearWheelDisk_Text[nItemId]["NonGrant"]
	end

	-- 判断天石上限
	if tNewYearWheelDisk_Reward[nItemId]["Emoney"] ~= nil then
		local nUserEmoney = Get_UserMonoEMoney()
		local nMaxEmoney = G_User_MaxEmoneyMono
		
		if nData + tNewYearWheelDisk_Reward[nItemId]["Emoney"] > nMaxData then
			bMono = false
		end
		
		if bMono then
			nUserEmoney = Get_UserEMoney()
			nMaxEmoney = G_User_MaxEmoney
		end
		
		if nUserEmoney + tNewYearWheelDisk_Reward[nItemId]["Emoney"] > nMaxEmoney then
			User_TalkChannel2005(tNewYearWheelDisk_Text["NoEmoney"])
			return
		end
	end
	
	-- 删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给天石
		if tNewYearWheelDisk_Reward[nItemId]["Emoney"] ~= nil then
			if bMono then
				Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,nData + tNewYearWheelDisk_Reward[nItemId]["Emoney"])
				User_AddEMoney(tNewYearWheelDisk_Reward[nItemId]["Emoney"])
				sLog = string.format("0,0,%d,1,12000290,1[3],%d,%d",nItemId,2,tNewYearWheelDisk_Reward[nItemId]["Emoney"])
				-- 系统公告
				local sUserName = Get_UserName()
				Sys_SystemBroadcast(string.format(tNewYearWheelDisk_Text["EmoneyMsg"],sUserName,tNewYearWheelDisk_Reward[nItemId]["Emoney"]))
				
				-- 打emoneylog
				Sys_SaveEmoneyBuy(string.format(tNewYearWheelDisk_Constant["EmoneyLog"],tNewYearWheelDisk_Reward[nItemId]["Emoney"],tNewYearWheelDisk_Reward[nItemId]["Emoney"]))
			else
				User_AddEMoneyMono(tNewYearWheelDisk_Reward[nItemId]["Emoney"])
				sLog = string.format(tNewYearWheelDisk_Constant["Log"],nItemId,3,tNewYearWheelDisk_Reward[nItemId]["Emoney"])
			end
		end

		-- 给物品
		if tNewYearWheelDisk_Reward[nItemId]["ItemId"] ~= nil then
			if bMono then
				Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,nData + 1)
				Item_AddNewItem(tNewYearWheelDisk_Reward[nItemId]["ItemId"],tNewYearWheelDisk_Reward[nItemId]["NonGrant"])
				sLog = tNewYearWheelDisk_Reward[nItemId]["Log"]
				
				-- 系统公告
				local sUserName = Get_UserName()
				local sIndex = tNewYearWheelDisk_Reward[nItemId]["Msg"]
				Sys_SystemBroadcast(string.format(tNewYearWheelDisk_Text[sIndex],sUserName))
			else
				Item_AddNewItem(tNewYearWheelDisk_Reward[nItemId]["ItemId"],tNewYearWheelDisk_Reward[nItemId]["Grant"])
				sLog = string.format(tNewYearWheelDisk_Constant["Log"],nItemId,tNewYearWheelDisk_Reward[nItemId]["ItemId"],1)
			end
		end

		NewYearWheelDisk_Common(sLog,sContent)
	end
end

-- 上线获得吉星高照大礼包
function NewYearWheelDisk_OnLine()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tNewYearWheelDisk_Constant["ActiveTime"]) then
		return
	end

	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tNewYearWheelDisk_Constant["NeedLevel"],tNewYearWheelDisk_Constant["NeedMetempsychosis"]) then
		return
	end
	
	-- 掩码判断
	local nEvent = tNewYearWheelDisk_Stc["EventType"]
	local nType = tNewYearWheelDisk_Stc["DataType"]
	
	-- 判断是否领取过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nType,1,4) then
			return
		else
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tNewYearWheelDisk_Text["NoSpace"])
		return
	end
	
	-- 设掩码值
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给物品
	Item_AddItem(3008303)
	
	-- 打log
	Sys_SaveActionFestivalLog("0,0,0,0,12000290,1[1],3008303,1")
	
	-- 给提示
	User_TalkChannel2005(tNewYearWheelDisk_Text["Reward"])
end

-- 轮盘使用
function NewYearWheelDisk_Use(nItemId,nTask)
	if not Sys_ChkFullTime(tNewYearWheelDisk_Constant["UseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tNewYearWheelDisk_Text[nItemId]["NoTime"])
		end
		
		return
	end
	
	if not Task_ChkTaskDetail(nTask) then
		if not Task_AddTaskDetail(nTask) then
			User_TalkChannel2005(tNewYearWheelDisk_Text["NoTask"])
			return
		end
	end
	
	if Task_ChkTaskDetailValue(nTask,"CompleteFlag","==",0) then
		if not Task_SetTaskDetailCompleteFlag(nTask,1) then
			User_TalkChannel2005(tNewYearWheelDisk_Text["NoTask"])
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if nItemId == 3008312 then
			Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000290,1[2],0,0",nItemId))
		end
		
		User_TaskReward(nTask)
	end
end

-- 隔天清零
function NewYearWheelDisk_Rest()
	local nGlobalId = tNewYearWheelDisk_Constant["GlobalId"]
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	
	if nData == 1 then
		return
	end
	
	if Sys_ChkDayTime("00:00 00:01") then
		Sys_ResetAllSynaGlobalData(nGlobalId)
		Sys_SetSynaGlobalData0(nGlobalId,1)
	end
end

--// 关闭重置限制
function NewYearWheelDisk_ResetLimit()
	Sys_SetSynaGlobalData0(tNewYearWheelDisk_Constant["GlobalId"],0)
end

-----------------------------------物品配置------------------------------------------------
-- 吉星高照大礼包
tItem[3008303] = tItem[3008303] or {}
tItem[3008303]["Function"] = function(nItemId,sItemName)
	NewYearWheelDisk_Use(nItemId,3593)
end

-- 鸿运当头大礼包
tItem[3008312] = tItem[3008312] or {}
tItem[3008312]["Function"] = function(nItemId,sItemName)
	NewYearWheelDisk_Use(nItemId,3594)
end

tItem[3008304] = tItem[3008304] or {}
tItem[3008304]["Function"] = function(nItemId,sItemName)
	NewYearWheelDisk_UseExp(nItemId)
end

tItem[3008305] = tItem[3008305] or {}
tItem[3008305]["Function"] = function(nItemId,sItemName)
	NewYearWheelDisk_UsePackage(nItemId)
end

tItem[3008306] = tItem[3008305]
tItem[3008307] = tItem[3008305]
tItem[3008309] = tItem[3008305]

tItem[3008308] = tItem[3008308] or {}
tItem[3008308]["Function"] = function(nItemId,sItemName)
	NewYearWheelDisk_UseLimitPackage(nItemId)
end

tItem[3008310] = tItem[3008305]
tItem[3008311] = tItem[3008308]
tItem[3008313] = tItem[3008304]
tItem[3008314] = tItem[3008305]
tItem[3008315] = tItem[3008305]
tItem[3008316] = tItem[3008305]
tItem[3008317] = tItem[3008308]
tItem[3008318] = tItem[3008305]
tItem[3008319] = tItem[3008308]
tItem[3008320] = tItem[3008305]

------------------------------------------------------
--'00:00 00:03'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],NewYearWheelDisk_Rest)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],NewYearWheelDisk_Rest)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],NewYearWheelDisk_ResetLimit)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],NewYearWheelDisk_ResetLimit)

-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,NewYearWheelDisk_OnLine)