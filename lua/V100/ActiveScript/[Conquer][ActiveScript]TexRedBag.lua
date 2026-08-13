------------------------------------------------------------------------------------
--Name：           190917[英文征服][活动脚本]德州红包活动（10.15-10.25）
--Creator:      杨艳
--Created:     2019/09/17
------------------------------------------------------------------------------------
--命名前缀
--TexRedBag_

--logid： 12001633

--STC掩码表：
-- 204 64  记录玩家每日可以领红包数量
-- 204 65  背包信



--------------------------------------------------数据部分-----------------------------------------------------

local tTexRedBag_Data = {}
	tTexRedBag_Data["Limit"] = {}
	tTexRedBag_Data["Limit"]["GlobalId"] = 53746
	tTexRedBag_Data["Limit"]["User"] = 3
	-- 测试数据
	-- tTexRedBag_Data["Limit"]["Hour"] = 2
	-- tTexRedBag_Data["Limit"]["Day"] = 3
	-- 每小时限量
	tTexRedBag_Data["Limit"]["Hour"] = 766
	-- 每天限量
	tTexRedBag_Data["Limit"]["Day"] = 3830
	--活动开启时间
	tTexRedBag_Data["ActivityTime"] = "11:00 15:59"

local tTexRedBag_Stc = {}
	tTexRedBag_Stc["EventType"] = {}
	tTexRedBag_Stc["DataType"] = {}
	
	--记录玩家每日可领三次红包
	tTexRedBag_Stc["EventType"][1] = 204
	tTexRedBag_Stc["DataType"][1] = 64
	
local tTexRedBag_Award = {}
	-- ===红包奖励
	-- ===索引: tTexRedBag_Award[1]
	-- ===
	-- ===
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 350,22537
	tTexRedBag_Award[1] = {}
	tTexRedBag_Award[1]["ItemChanceSum"] = 10000
	tTexRedBag_Award[1]["LogId"] = 12001633
	tTexRedBag_Award[1]["LogStep"] = " 2[1]"
	-- tTexRedBag_Award[1]["EmoneyLog"] = "350	22537	0	0	1	"
	-- 5W - 50%
	tTexRedBag_Award[1][1] = {}
	tTexRedBag_Award[1][1]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][1]["ItemChance"] = 5000
	tTexRedBag_Award[1][1]["RewardMoney"] = {}
	tTexRedBag_Award[1][1]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】5W
	tTexRedBag_Award[1][1]["RewardEffect"] = {}
	tTexRedBag_Award[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][1]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][1]["EmoneyLog"] = "350	22537	0	0	1	"
	-- tTexRedBag_Award[1][1]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][1]
	-- tTexRedBag_Award[1][1]["TalkFlag"] = 105
	-- 10W - 20%
	tTexRedBag_Award[1][2] = {}
	tTexRedBag_Award[1][2]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][2]["ItemChance"] = 2000
	tTexRedBag_Award[1][2]["RewardMoney"] = {}
	tTexRedBag_Award[1][2]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W
	tTexRedBag_Award[1][2]["RewardEffect"] = {}
	tTexRedBag_Award[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][2]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][2]["EmoneyLog"] = "350	22538	0	0	1	"
	-- tTexRedBag_Award[1][2]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][2]
	-- tTexRedBag_Award[1][2]["TalkFlag"] = 105
	-- 20W - 15%
	tTexRedBag_Award[1][3] = {}
	tTexRedBag_Award[1][3]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][3]["ItemChance"] = 1500
	tTexRedBag_Award[1][3]["RewardMoney"] = {}
	tTexRedBag_Award[1][3]["RewardMoney"]["Value"] = 200000 -- 金币, 【需求】20W
	tTexRedBag_Award[1][3]["RewardEffect"] = {}
	tTexRedBag_Award[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][3]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][3]["EmoneyLog"] = "350	22539	0	0	1	"
	-- tTexRedBag_Award[1][3]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][3]
	-- tTexRedBag_Award[1][3]["TalkFlag"] = 105
	-- 50w - 10%
	tTexRedBag_Award[1][4] = {}
	tTexRedBag_Award[1][4]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][4]["ItemChance"] = 1000
	tTexRedBag_Award[1][4]["RewardMoney"] = {}
	tTexRedBag_Award[1][4]["RewardMoney"]["Value"] = 500000 -- 金币, 【需求】50w
	tTexRedBag_Award[1][4]["RewardEffect"] = {}
	tTexRedBag_Award[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][4]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][4]["EmoneyLog"] = "350	22540	0	0	1	"
	-- tTexRedBag_Award[1][4]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][4]
	-- tTexRedBag_Award[1][4]["TalkFlag"] = 105
	-- 100W - 2%
	tTexRedBag_Award[1][5] = {}
	tTexRedBag_Award[1][5]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][5]["ItemChance"] = 200
	tTexRedBag_Award[1][5]["RewardMoney"] = {}
	tTexRedBag_Award[1][5]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】100W
	tTexRedBag_Award[1][5]["RewardEffect"] = {}
	tTexRedBag_Award[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][5]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][5]["EmoneyLog"] = "350	22541	0	0	1	"
	-- tTexRedBag_Award[1][5]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][5]
	-- tTexRedBag_Award[1][5]["TalkFlag"] = 105
			-- 【动态掩码（53747, data1）】全服限量:（50）
	tTexRedBag_Award[1][5]["GlobalId"] = 53747
	tTexRedBag_Award[1][5]["Pos"] = 1
	tTexRedBag_Award[1][5]["MaxData"] = 50
	tTexRedBag_Award[1][5]["FullIndex"] = 2
	-- 500W - 2%
	tTexRedBag_Award[1][6] = {}
	tTexRedBag_Award[1][6]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][6]["ItemChance"] = 200
	tTexRedBag_Award[1][6]["RewardMoney"] = {}
	tTexRedBag_Award[1][6]["RewardMoney"]["Value"] = 5000000 -- 金币, 【需求】500W
	tTexRedBag_Award[1][6]["RewardEffect"] = {}
	tTexRedBag_Award[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][6]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][6]["EmoneyLog"] = "350	22542	0	0	1	"
	-- tTexRedBag_Award[1][6]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][6]
	-- tTexRedBag_Award[1][6]["TalkFlag"] = 105
			-- 【动态掩码（53747, data2）】全服限量:（10）
	tTexRedBag_Award[1][6]["GlobalId"] = 53747
	tTexRedBag_Award[1][6]["Pos"] = 2
	tTexRedBag_Award[1][6]["MaxData"] = 10
	tTexRedBag_Award[1][6]["FullIndex"] = 2
	-- 1000W - 1%
	tTexRedBag_Award[1][7] = {}
	tTexRedBag_Award[1][7]["RandomItemChanceType"] = 2
	tTexRedBag_Award[1][7]["ItemChance"] = 100
	tTexRedBag_Award[1][7]["RewardMoney"] = {}
	tTexRedBag_Award[1][7]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】1000W
	tTexRedBag_Award[1][7]["RewardEffect"] = {}
	tTexRedBag_Award[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexRedBag_Award[1][7]["RewardEffect"]["Effect"] = "angelwing"
	tTexRedBag_Award[1][7]["EmoneyLog"] = "350	22543	0	0	1	"
	-- tTexRedBag_Award[1][7]["Talk"] = tTexRedBag_Text["Msg"]["Talk"][7]
	-- tTexRedBag_Award[1][7]["TalkFlag"] = 105
			-- 【动态掩码（53747, data3）】全服限量:（5）
	tTexRedBag_Award[1][7]["GlobalId"] = 53747
	tTexRedBag_Award[1][7]["Pos"] = 3
	tTexRedBag_Award[1][7]["MaxData"] = 5
	tTexRedBag_Award[1][7]["FullIndex"] = 2

---------------------------------------------------逻辑部分-------------------------------------------------------

--操作玩家掩码
function TexRedBag_SetStc(nEvent,nData,nGlobalId,nHourLimit,nDayLimit,nUserId)
	local nUserId = nUserId or Get_UserId()
	if Task_AddStatistic(nEvent,nData,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nData,0,nUserId) then 
		Sys_SetSynaGlobalData0(nGlobalId,nHourLimit+1)
		Sys_SetSynaGlobalData1(nGlobalId,nDayLimit+1)
		return true
	else
		return false
	end
end 

--领红包
function TexRedBag_GetRedBag(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	if not Sys_ChkDayTime(tTexRedBag_Data["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nUserId = Get_UserId()
	local nEvent = tTexRedBag_Stc["EventType"][1]
	local nData = tTexRedBag_Stc["DataType"][1]
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nValue >= tTexRedBag_Data["Limit"]["User"] then 
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end 
	local nGlobalId = tTexRedBag_Data["Limit"]["GlobalId"]
	local nHourLimit = Get_SysDynaGlobalData0(nGlobalId)
	local nDayLimit = Get_SysDynaGlobalData1(nGlobalId)
	if nHourLimit >= tTexRedBag_Data["Limit"]["Hour"] then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end 
	if nDayLimit >= tTexRedBag_Data["Limit"]["Day"] then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end 
	if not User_CanPutMoney2Bag(tTexRedBag_Award[1][7]["RewardMoney"]["Value"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end 
	
	if TexRedBag_SetStc(nEvent,nData,nGlobalId,nHourLimit,nDayLimit,nUserId) then	
		
		local tNewReward,sRewardStr = RewardTemplate_RandomReward(tTexRedBag_Award,1,nUserId)
		Sys_MsgBox(string.format(tTexRedBag_Text["Msg"]["Talk"][1],sRewardStr))
	end 
	
end 
--重置每小时限量
function TexRedBag_ResetHourGlobal()
	if not Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"]) then 
		return
	end
	local nGlobalId = tTexRedBag_Data["Limit"]["GlobalId"]
	local nData4 = Get_SysDynaGlobalData4(nGlobalId)
	if nData4 > 0 then 
		return
	end 
	Sys_SetSynaGlobalData0(nGlobalId,0)
	Sys_SetSynaGlobalData4(nGlobalId,1)
end 

function TexRedBag_ResetHourGlobalnFlag()
	if not Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"]) then 
		return
	end
	local nGlobalId = tTexRedBag_Data["Limit"]["GlobalId"]
	local nData4 = Get_SysDynaGlobalData4(nGlobalId)
	if nData4 > 0 then 
		Sys_SetSynaGlobalData4(nGlobalId,0)
	end 

end 

--重置每天限量
function TexRedBag_ResetDayGlobal()
	if not Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"]) then 
		return
	end
	local nGlobalId = tTexRedBag_Data["Limit"]["GlobalId"]
	local nData5 = Get_SysDynaGlobalData5(nGlobalId)
	if nData5 > 0 then 
		return
	end 
	--清除奖励限量
	local nGlobalId1 = tTexRedBag_Award[1][5]["GlobalId"]
	Sys_SetSynaGlobalData1(nGlobalId1,0)
	Sys_SetSynaGlobalData2(nGlobalId1,0)
	Sys_SetSynaGlobalData3(nGlobalId1,0)

	Sys_SetSynaGlobalData1(nGlobalId,0)
	Sys_SetSynaGlobalData0(nGlobalId,0)
	Sys_SetSynaGlobalData5(nGlobalId,1)
end 

function TexRedBag_ResetDayGlobalnFlag()
	if not Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"]) then 
		return
	end
	local nGlobalId = tTexRedBag_Data["Limit"]["GlobalId"]
	local nData5 = Get_SysDynaGlobalData5(nGlobalId)
	if nData5 > 0 then 
		Sys_SetSynaGlobalData5(nGlobalId,0)
	end 

end 
---------------------------------------------npc部分-------------------------------------------
-- 24952,'德州福利大使',2,51310
tNpcFace[5131] = 41

tNpcGossip[24952] = tNpcGossip[24952] or DefaultNpc:new{}
tNpcGossip[24952]["OptionHidden"] = 1
tNpcGossip[24952]["DialogueText"] = tTexRedBag_Text[24952]

--活动时间前
tNpcGossip[24952]["Text1-1"] = {111,112}
tNpcGossip[24952]["Text111"] = tTexRedBag_Text[24952]["Text111"]
tNpcGossip[24952]["Text112"] = tTexRedBag_Text[24952]["Text112"]

tNpcGossip[24952]["tOption1-1"] = {111}
tNpcGossip[24952]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TexRedBag"]["ActivityTime"])
end
tNpcGossip[24952]["Option111"] = tTexRedBag_Text[24952]["Option111"] 

-- 活动时间中
tNpcGossip[24952]["Text1-2"] = {121,122,123}
tNpcGossip[24952]["Text121"] = tTexRedBag_Text[24952]["Text121"]
tNpcGossip[24952]["Text122"] = tTexRedBag_Text[24952]["Text122"]
tNpcGossip[24952]["Text123"] = tTexRedBag_Text[24952]["Text123"]

tNpcGossip[24952]["tOption1-2"] = {121}
tNpcGossip[24952]["ChkFunc1-2"] = function()

	return Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"]) 
end

tNpcGossip[24952]["Option121"] = tTexRedBag_Text[24952]["Option121"] 
tNpcGossip[24952]["Option122"] = tTexRedBag_Text[24952]["Option122"] 
tNpcGossip[24952]["OptionFunc121"] = "TexRedBag_GetRedBag</N>24952"

--活动时间后
tNpcGossip[24952]["Text1-3"] = {131}
tNpcGossip[24952]["Text131"] = tTexRedBag_Text[24952]["Text131"]

tNpcGossip[24952]["tOption1-3"] = {131}
tNpcGossip[24952]["ChkFunc1-3"] = function()
	
	return not Sys_ChkFullTime(tActivityTime["TexRedBag"]["ActivityTime"])
end
tNpcGossip[24952]["Option131"] = tTexRedBag_Text[24952]["Option131"] 

--不在活动时间点
tNpcGossip[24952]["Text2-1"] = {211}
tNpcGossip[24952]["Text211"] = tTexRedBag_Text[24952]["Text211"]

tNpcGossip[24952]["tOption2-1"] = {211}
tNpcGossip[24952]["Option211"] = tTexRedBag_Text[24952]["Option211"] 

--玩家领取达到上限
tNpcGossip[24952]["Text2-2"] = {221}
tNpcGossip[24952]["Text221"] = tTexRedBag_Text[24952]["Text221"]

tNpcGossip[24952]["tOption2-2"] = {221}
tNpcGossip[24952]["Option221"] = tTexRedBag_Text[24952]["Option221"] 

-- 每小时上限
tNpcGossip[24952]["Text2-3"] = {231}
tNpcGossip[24952]["Text231"] = tTexRedBag_Text[24952]["Text231"]

tNpcGossip[24952]["tOption2-3"] = {231}
tNpcGossip[24952]["Option231"] = tTexRedBag_Text[24952]["Option231"] 

-- 每天上限
tNpcGossip[24952]["Text2-4"] = {241}
tNpcGossip[24952]["Text241"] = tTexRedBag_Text[24952]["Text241"]

tNpcGossip[24952]["tOption2-4"] = {241}
tNpcGossip[24952]["Option241"] = tTexRedBag_Text[24952]["Option241"] 

-- 金币上限
tNpcGossip[24952]["Text2-5"] = {251}
tNpcGossip[24952]["Text251"] = tTexRedBag_Text[24952]["Text251"]

tNpcGossip[24952]["tOption2-5"] = {251}
tNpcGossip[24952]["Option251"] = tTexRedBag_Text[24952]["Option251"] 

-----------------------------------------------------时间自检----------------------------------------------

local tTexRedBag_Time = {}
--时间自检重置每小时红包数
tTexRedBag_Time[1] = {}
tTexRedBag_Time[1]["Type"] = 2
tTexRedBag_Time[1]["TimeType"] = 4
tTexRedBag_Time[1]["Multiple"] = {}
tTexRedBag_Time[1]["Multiple"][1]  = "11:00 11:02"
tTexRedBag_Time[1]["Multiple"][2]  = "12:00 12:02"
tTexRedBag_Time[1]["Multiple"][3]  = "13:00 13:02"
tTexRedBag_Time[1]["Multiple"][4]  = "14:00 14:02"
tTexRedBag_Time[1]["Multiple"][5]  = "15:00 15:02"
tTexRedBag_Time[1]["Func"] = TexRedBag_ResetHourGlobal
table.insert(tSystemTime_InitialData,tTexRedBag_Time[1])

tTexRedBag_Time[2] = {}
tTexRedBag_Time[2]["Type"] = 2
tTexRedBag_Time[2]["TimeType"] = 4
tTexRedBag_Time[2]["Multiple"] = {}
tTexRedBag_Time[2]["Multiple"][1]  = "11:03 11:05"
tTexRedBag_Time[2]["Multiple"][2]  = "12:03 12:05"
tTexRedBag_Time[2]["Multiple"][3]  = "13:03 13:05"
tTexRedBag_Time[2]["Multiple"][4]  = "14:03 14:05"
tTexRedBag_Time[2]["Multiple"][5]  = "15:03 15:05"
tTexRedBag_Time[2]["Func"] = TexRedBag_ResetHourGlobalnFlag
table.insert(tSystemTime_InitialData,tTexRedBag_Time[2])

tTexRedBag_Time[3] = {}
tTexRedBag_Time[3]["Type"] = 2
tTexRedBag_Time[3]["TimeType"] = 4
tTexRedBag_Time[3]["Multiple"] = {}
tTexRedBag_Time[3]["Multiple"][1]  = "00:00 00:02"
tTexRedBag_Time[3]["Func"] = TexRedBag_ResetDayGlobal
table.insert(tSystemTime_InitialData,tTexRedBag_Time[3])

tTexRedBag_Time[4] = {}
tTexRedBag_Time[4]["Type"] = 2
tTexRedBag_Time[4]["TimeType"] = 4
tTexRedBag_Time[4]["Multiple"] = {}
tTexRedBag_Time[4]["Multiple"][1]  = "00:03 00:05"
tTexRedBag_Time[4]["Func"] = TexRedBag_ResetDayGlobalnFlag
table.insert(tSystemTime_InitialData,tTexRedBag_Time[4])
