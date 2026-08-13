------------------------------------------------------------------------------------
--Name：            200331[英文征服][活动脚本]4月德州红包活动（4.14-5.28）
--Creator:      蔡颖静
--Created:     2020-03-31
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------
local tAprilTexasRedBag_Data={}

--玩家每日领红包限制
tAprilTexasRedBag_Data["Stc"]={}
tAprilTexasRedBag_Data["Stc"]["EachHourEvent"]=218
tAprilTexasRedBag_Data["Stc"]["EachHourType"]=32
tAprilTexasRedBag_Data["Stc"]["EachHourLimit"]=3

tAprilTexasRedBag_Data["Global"]={}
-- 动态码
tAprilTexasRedBag_Data["Global"]["Id"]=54382
-- 每小时限量
tAprilTexasRedBag_Data["Global"]["HourLimit"]=200
-- 每天限量
tAprilTexasRedBag_Data["Global"]["DayLimit"]=1800
--活动开启时间
tAprilTexasRedBag_Data["ActivityTime"] = "06:00 14:59"

-- ===红包奖励
-- ===索引:tAprilTexasRedBag_Data["Money"]
-- ===
-- ===
-- ===
-- ===
tAprilTexasRedBag_Data["Money"] = {}

tAprilTexasRedBag_Data["Money"][1] = {}
tAprilTexasRedBag_Data["Money"][1]["ItemChanceSum"] = 10000
tAprilTexasRedBag_Data["Money"][1]["LogId"] = 12001934
-- 2W - 50%
tAprilTexasRedBag_Data["Money"][1][1] = {}
tAprilTexasRedBag_Data["Money"][1][1]["RandomItemChanceType"] = 2
tAprilTexasRedBag_Data["Money"][1][1]["ItemChance"] = 5000
tAprilTexasRedBag_Data["Money"][1][1]["RewardMoney"] = {}
tAprilTexasRedBag_Data["Money"][1][1]["RewardMoney"]["Value"] = 20000 -- 金币, 【需求】2W
tAprilTexasRedBag_Data["Money"][1][1]["RewardEffect"] = {}
tAprilTexasRedBag_Data["Money"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAprilTexasRedBag_Data["Money"][1][1]["RewardEffect"]["Effect"] = "angelwing"
tAprilTexasRedBag_Data["Money"][1][1]["EmoneyLog"] = "1000	1719	0	0	1	"
-- 5W - 20%
tAprilTexasRedBag_Data["Money"][1][2] = {}
tAprilTexasRedBag_Data["Money"][1][2]["RandomItemChanceType"] = 2
tAprilTexasRedBag_Data["Money"][1][2]["ItemChance"] = 2000
tAprilTexasRedBag_Data["Money"][1][2]["RewardMoney"] = {}
tAprilTexasRedBag_Data["Money"][1][2]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】5W
tAprilTexasRedBag_Data["Money"][1][2]["RewardEffect"] = {}
tAprilTexasRedBag_Data["Money"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAprilTexasRedBag_Data["Money"][1][2]["RewardEffect"]["Effect"] = "angelwing"
tAprilTexasRedBag_Data["Money"][1][2]["EmoneyLog"] = "1000	1720	0	0	1	"
-- 10W - 15%
tAprilTexasRedBag_Data["Money"][1][3] = {}
tAprilTexasRedBag_Data["Money"][1][3]["RandomItemChanceType"] = 2
tAprilTexasRedBag_Data["Money"][1][3]["ItemChance"] = 1500
tAprilTexasRedBag_Data["Money"][1][3]["RewardMoney"] = {}
tAprilTexasRedBag_Data["Money"][1][3]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W
tAprilTexasRedBag_Data["Money"][1][3]["RewardEffect"] = {}
tAprilTexasRedBag_Data["Money"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAprilTexasRedBag_Data["Money"][1][3]["RewardEffect"]["Effect"] = "angelwing"
tAprilTexasRedBag_Data["Money"][1][3]["EmoneyLog"] = "1000	1721	0	0	1	"
-- 20w - 10%
tAprilTexasRedBag_Data["Money"][1][4] = {}
tAprilTexasRedBag_Data["Money"][1][4]["RandomItemChanceType"] = 2
tAprilTexasRedBag_Data["Money"][1][4]["ItemChance"] = 1000
tAprilTexasRedBag_Data["Money"][1][4]["RewardMoney"] = {}
tAprilTexasRedBag_Data["Money"][1][4]["RewardMoney"]["Value"] = 200000 -- 金币, 【需求】20w
tAprilTexasRedBag_Data["Money"][1][4]["RewardEffect"] = {}
tAprilTexasRedBag_Data["Money"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAprilTexasRedBag_Data["Money"][1][4]["RewardEffect"]["Effect"] = "angelwing"
tAprilTexasRedBag_Data["Money"][1][4]["EmoneyLog"] = "1000	1722	0	0	1	"
-- 100W - 5%
tAprilTexasRedBag_Data["Money"][1][5] = {}
tAprilTexasRedBag_Data["Money"][1][5]["RandomItemChanceType"] = 2
tAprilTexasRedBag_Data["Money"][1][5]["ItemChance"] = 500
tAprilTexasRedBag_Data["Money"][1][5]["RewardMoney"] = {}
tAprilTexasRedBag_Data["Money"][1][5]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】100W
tAprilTexasRedBag_Data["Money"][1][5]["RewardEffect"] = {}
tAprilTexasRedBag_Data["Money"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAprilTexasRedBag_Data["Money"][1][5]["RewardEffect"]["Effect"] = "angelwing"
tAprilTexasRedBag_Data["Money"][1][5]["EmoneyLog"] = "1000	1723	0	0	1	"
		-- 【动态掩码（54382, data2）】全服限量:（900）, 超限给编号（3）-
tAprilTexasRedBag_Data["Money"][1][5]["GlobalId"] = 54382
tAprilTexasRedBag_Data["Money"][1][5]["Pos"] = 2
tAprilTexasRedBag_Data["Money"][1][5]["MaxData"] = 440
tAprilTexasRedBag_Data["Money"][1][5]["FullIndex"] = 3
		-- 【动态掩码（54382, data3）】单日限量:（20）, 超限给编号（3）-
tAprilTexasRedBag_Data["Money"][1][5]["OtherPos"] = 3
tAprilTexasRedBag_Data["Money"][1][5]["OtherMaxData"] = 20
tAprilTexasRedBag_Data["Money"][1][5]["OtherFullIndex"] = 3

tAprilTexasRedBag_Data["MoneyLimit"]=1000000
----------------------------------逻辑部分---------------------------------------------
function AprilTexasRedBag_GetRedBag(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["AprilTexasRedBag"]["ActivityTime"]) then 
		return 
	end 
	
	if not Sys_ChkDayTime(tAprilTexasRedBag_Data["ActivityTime"]) then 
		return LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
		
	local nAprilTexasRedBag_EachHourEvent=tAprilTexasRedBag_Data["Stc"]["EachHourEvent"]
	local nAprilTexasRedBag_EachHourType=tAprilTexasRedBag_Data["Stc"]["EachHourType"]
	local nAprilTexasRedBag_EachHourLimit=tAprilTexasRedBag_Data["Stc"]["EachHourLimit"]
	
	local nAprilTexasRedBag_GlobalId=tAprilTexasRedBag_Data["Global"]["Id"]
	local nAprilTexasRedBag_HourLimit=tAprilTexasRedBag_Data["Global"]["HourLimit"]
	local nAprilTexasRedBag_DayLimit=tAprilTexasRedBag_Data["Global"]["DayLimit"]
	
	local nAprilTexasRedBag_NowHourLimit = Get_SysDynaGlobalData0(nAprilTexasRedBag_GlobalId)
	local nAprilTexasRedBag_NowDayLimit = Get_SysDynaGlobalData1(nAprilTexasRedBag_GlobalId)
	
	--隔天清掩码
	Task_StcReset(nAprilTexasRedBag_EachHourEvent,nAprilTexasRedBag_EachHourType)
	
	if Get_UserStatisticValue(nAprilTexasRedBag_EachHourEvent,nAprilTexasRedBag_EachHourType) >= nAprilTexasRedBag_EachHourLimit then
		return LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
	
	--超过每日限量
	if nAprilTexasRedBag_NowDayLimit >= nAprilTexasRedBag_DayLimit then
		return LinkNpcGossipFunc_New(nNpcId,"2-4")
	else 
		--超过每小时限量
		if nAprilTexasRedBag_NowHourLimit >= nAprilTexasRedBag_HourLimit then
			return LinkNpcGossipFunc_New(nNpcId,"2-3")
		end 
	end 

	--金币满判断
	if not User_CanPutMoney2Bag(tAprilTexasRedBag_Data["MoneyLimit"]) then
		return LinkNpcGossipFunc_New(nNpcId,"2-5")
	end 
	
	--打掩码
	Task_AddStatistic(nAprilTexasRedBag_EachHourEvent,nAprilTexasRedBag_EachHourType,1,1)
	Task_SetStcTimestamp(nAprilTexasRedBag_EachHourEvent,nAprilTexasRedBag_EachHourType,0)
	
	--增加动态码
	Sys_SetSynaGlobalData0(nAprilTexasRedBag_GlobalId,nAprilTexasRedBag_NowHourLimit+1)
	Sys_SetSynaGlobalData1(nAprilTexasRedBag_GlobalId,nAprilTexasRedBag_NowDayLimit+1)
	
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tAprilTexasRedBag_Data["Money"],1)
	local nAprilTexasRedBag_RewardMoney=tNewReward[1]["tAward"][1]["RewardMoney"]["Value"]
	Sys_MsgBox(string.format(tAprilTexasRedBag_Text["Msg"]["Talk"][1],nAprilTexasRedBag_RewardMoney))
end 
		
		

----------------------------------NPC部分---------------------------------------------
tNpcGossip[26226] = tNpcGossip[26226] or DefaultNpc:new{}
tNpcGossip[26226]["OptionHidden"] = 1
tNpcGossip[26226]["DialogueText"] = tAprilTexasRedBag_Text[26226]

--活动时间前
tNpcGossip[26226]["Text1-1"] = {111,112}
tNpcGossip[26226]["tOption1-1"] = {111}
tNpcGossip[26226]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AprilTexasRedBag"]["ActivityTime"])
end

--活动时间后
tNpcGossip[26226]["Text1-2"] = {131}
tNpcGossip[26226]["tOption1-2"] = {131}
tNpcGossip[26226]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AprilTexasRedBag"]["ActivityTime"])
end

--活动中
tNpcGossip[26226]["Text1-3"] = {121,122,123}
tNpcGossip[26226]["tOption1-3"] = {121}
tNpcGossip[26226]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["AprilTexasRedBag"]["ActivityTime"])
end
tNpcGossip[26226]["OptionFunc121"] = "AprilTexasRedBag_GetRedBag</N>26226"

--不在每日活动时间点
tNpcGossip[26226]["Text2-1"] = {211}
tNpcGossip[26226]["tOption2-1"] = {211}

--今日已领完
tNpcGossip[26226]["Text2-2"] = {221}
tNpcGossip[26226]["tOption2-2"] = {221}

--已到达每小时发放限量
tNpcGossip[26226]["Text2-3"] = {231}
tNpcGossip[26226]["tOption2-3"] = {231}

--到达每日发放限量
tNpcGossip[26226]["Text2-4"] = {241}
tNpcGossip[26226]["tOption2-4"] = {241}

--金币满
tNpcGossip[26226]["Text2-5"] = {251}
tNpcGossip[26226]["tOption2-5"] = {251}

-----------------------------------------------------------------------------------------------------
-- 每天清除动态码
tGlobalData_Info[543821] = {}
tGlobalData_Info[543821]["Time"] = {}
tGlobalData_Info[543821]["Time"]["ActivityTime"] = tActivityTime["AprilTexasRedBag"]["ActivityTime"]
tGlobalData_Info[543821]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[543821]["Rest"] = {}
tGlobalData_Info[543821]["Rest"]["GlobalId"] = {54382}
tGlobalData_Info[543821]["Rest"]["Pos"] = {0,1,3}

-- 每小时清除限量
tGlobalData_Info[543822] = {}
tGlobalData_Info[543822]["Time"] = {}
tGlobalData_Info[543822]["Time"]["ActivityTime"] = tActivityTime["AprilTexasRedBag"]["ActivityTime"]
tGlobalData_Info[543822]["Time"]["ClearTime"] = {}
tGlobalData_Info[543822]["Time"]["ClearTime"][1] = "06:00 06:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][2] = "07:00 07:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][3] = "08:00 08:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][4] = "09:00 09:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][5] = "10:00 10:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][6] = "11:00 11:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][7] = "12:00 12:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][8] = "13:00 13:02"
tGlobalData_Info[543822]["Time"]["ClearTime"][9] = "14:00 14:02"
tGlobalData_Info[543822]["Rest"] = {}
tGlobalData_Info[543822]["Rest"]["GlobalId"] = {54382}
tGlobalData_Info[543822]["Rest"]["Pos"] = {0}


