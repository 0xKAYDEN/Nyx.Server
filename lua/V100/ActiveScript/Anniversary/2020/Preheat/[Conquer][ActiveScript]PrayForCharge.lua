------------------------------------------------------------------------------------
--Name:		200317[简体征服][活动脚本]周年庆预热-充能水晶
--Creator: 	戴鑫海
--Created:	2020/03/17
------------------------------------------------------------------------------------
--lua 41776
--stc (217 56)上交的灵珠数量
--	  (218 06)水晶等级
--	  (218 07)领过的精粹数量
----------------------------------数据部分配置----------------------------------
local tPrayForCharge_Data = {}
	tPrayForCharge_Data["StartTime"] = 1586793600
	tPrayForCharge_Data["ItemId"] = 3315792
local tPrayForCharge_stc = {}
	tPrayForCharge_stc["Handin"] = {}
	tPrayForCharge_stc["Handin"]["EventType"] = 217
	tPrayForCharge_stc["Handin"]["DataType"] = 56
	
	tPrayForCharge_stc["Rank"] = {}
	tPrayForCharge_stc["Rank"]["EventType"] = 218
	tPrayForCharge_stc["Rank"]["DataType"] = 06

	tPrayForCharge_stc["ChkRank"] = {}
	tPrayForCharge_stc["ChkRank"]["EventType"] = 217
	tPrayForCharge_stc["ChkRank"]["DataType"] = 57
	
	tPrayForCharge_stc["Receive"] = {}
	tPrayForCharge_stc["Receive"]["EventType"] = 218
	tPrayForCharge_stc["Receive"]["DataType"] = 07

	tPrayForCharge_stc["LevUp"] = {}
	tPrayForCharge_stc["LevUp"][2] = {}
	tPrayForCharge_stc["LevUp"][2]["EventType"] = 218
	tPrayForCharge_stc["LevUp"][2]["DataType"] = 97
	
	tPrayForCharge_stc["LevUp"][3] = {}
	tPrayForCharge_stc["LevUp"][3]["EventType"] = 218
	tPrayForCharge_stc["LevUp"][3]["DataType"] = 98

	tPrayForCharge_stc["LevUp"][4] = {}
	tPrayForCharge_stc["LevUp"][4]["EventType"] = 218
	tPrayForCharge_stc["LevUp"][4]["DataType"] = 99

	tPrayForCharge_stc["LevUp"][5] = {}
	tPrayForCharge_stc["LevUp"][5]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][5]["DataType"] = 01
	
	tPrayForCharge_stc["LevUp"][6] = {}
	tPrayForCharge_stc["LevUp"][6]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][6]["DataType"] = 02
	
	tPrayForCharge_stc["LevUp"][7] = {}
	tPrayForCharge_stc["LevUp"][7]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][7]["DataType"] = 03
	
	tPrayForCharge_stc["LevUp"][8] = {}
	tPrayForCharge_stc["LevUp"][8]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][8]["DataType"] = 04
	
	tPrayForCharge_stc["LevUp"][9] = {}
	tPrayForCharge_stc["LevUp"][9]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][9]["DataType"] = 05
	
	tPrayForCharge_stc["LevUp"][10] = {}
	tPrayForCharge_stc["LevUp"][10]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][10]["DataType"] = 06
	
	tPrayForCharge_stc["LevUp"][11] = {}
	tPrayForCharge_stc["LevUp"][11]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][11]["DataType"] = 07

	tPrayForCharge_stc["LevUp"][12] = {}
	tPrayForCharge_stc["LevUp"][12]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][12]["DataType"] = 08

	tPrayForCharge_stc["LevUp"][13] = {}
	tPrayForCharge_stc["LevUp"][13]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][13]["DataType"] = 09

	tPrayForCharge_stc["LevUp"][14] = {}
	tPrayForCharge_stc["LevUp"][14]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][14]["DataType"] = 10

	tPrayForCharge_stc["LevUp"][15] = {}
	tPrayForCharge_stc["LevUp"][15]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][15]["DataType"] = 11

	tPrayForCharge_stc["LevUp"][16] = {}
	tPrayForCharge_stc["LevUp"][16]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][16]["DataType"] = 12
	
	tPrayForCharge_stc["LevUp"][17] = {}
	tPrayForCharge_stc["LevUp"][17]["EventType"] = 219
	tPrayForCharge_stc["LevUp"][17]["DataType"] = 13
	
	tPrayForCharge_stc["Reward"] = {}
	tPrayForCharge_stc["Reward"]["EventType"] = 219
	tPrayForCharge_stc["Reward"]["DataType"] = 14
	
local tPrayForCharge_Cont = {}
	tPrayForCharge_Cont["Effect"]="zf2-e128"
	
local tPrayForCharge_Rank = {}
	tPrayForCharge_Rank[1] = {0,1}
	tPrayForCharge_Rank[2] = {4,3}
	tPrayForCharge_Rank[3] = {8,5}
	tPrayForCharge_Rank[4] = {12,7}
	tPrayForCharge_Rank[5] = {17,9}
	tPrayForCharge_Rank[6] = {22,12}
	tPrayForCharge_Rank[7] = {28,15}
	tPrayForCharge_Rank[8] = {34,18}
	tPrayForCharge_Rank[9] = {41,21}
	tPrayForCharge_Rank[10] = {48,24}
	tPrayForCharge_Rank[11] = {56,27}
	tPrayForCharge_Rank[12] = {65,30}
	tPrayForCharge_Rank[13] = {76,32}
	tPrayForCharge_Rank[14] = {88,34}
	tPrayForCharge_Rank[15] = {101,36}
	tPrayForCharge_Rank[16] = {115,38}
	tPrayForCharge_Rank[17] = {135,40}
local tPrayForCharge_Timeset = {}

local tPrayForCharge_Reward = {}
	-- ===灵珠精粹
	-- ===索引: tPrayForCharge_Reward[3315792]
	tPrayForCharge_Reward[3315792] = {}
	tPrayForCharge_Reward[3315792]["LogId"] = 12001915
	tPrayForCharge_Reward[3315792]["RewardItem"] = {}
	tPrayForCharge_Reward[3315792]["RewardItem"][1] = {}
	tPrayForCharge_Reward[3315792]["RewardItem"][1]["Id"] = 3315792 --  3315792 【库里没有该物品】, 【表格】灵珠碎片
	tPrayForCharge_Reward[3315792]["RewardItem"][1]["Attr"] = "0 1" --  3315792 【库里没有该物品】*1
	tPrayForCharge_Reward[3315792]["RewardEffect"] = {}
	tPrayForCharge_Reward[3315792]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForCharge_Reward[3315792]["RewardEffect"]["Effect"] = "angelwing"
-----------------------------逻辑配置-----------------

function PrayForCharge_Uplev()
	local nPrayForCharge_UserId = Get_UserId()
	local nPrayForCharge_Event = tPrayForCharge_stc["Handin"]["EventType"]
	local nPrayForCharge_Data = tPrayForCharge_stc["Handin"]["DataType"]
	local nPrayForCharge_LevEvent = tPrayForCharge_stc["Rank"]["EventType"]
	local nPrayForCharge_LevData = tPrayForCharge_stc["Rank"]["DataType"]
	local nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId) or 0
	local nPrayForCharge_Start = tPrayForCharge_Data["StartTime"]
	local nPrayForCharge_Now = os.time()
	if nPrayForCharge_Lev == 0 or nil then
		Task_SetStatistic(nPrayForCharge_LevEvent,nPrayForCharge_LevData,1,1)
		Task_SetStcTimestamp(nPrayForCharge_LevEvent,nPrayForCharge_LevData,0)

		nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId)
	end
	if nPrayForCharge_Lev >= 17 then 
		return
	end
	for i = nPrayForCharge_Lev + 1,17 do
		local nPrayForCharge_Point = Get_UserStatisticValue(nPrayForCharge_Event,nPrayForCharge_Data,nPrayForCharge_UserId)
		if nPrayForCharge_Point >= tPrayForCharge_Rank[i][1] then
			Task_SetStatistic(nPrayForCharge_LevEvent,nPrayForCharge_LevData,i,1)
			Task_SetStcTimestamp(nPrayForCharge_LevEvent,nPrayForCharge_LevData,0)
			Task_SetStatistic(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],nPrayForCharge_Now,1)
			Task_SetStcTimestamp(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],0)
		end
	end
end

function PrayForCharge_GetNum(nPrayForCharge_length)
	local nPrayForCharge_Now = os.time()
	local nPrayForCharge_Start = tPrayForCharge_Data["StartTime"]
	local nPrayForCharge_UserId = Get_UserId()
	local nPrayForCharge_LevEvent = tPrayForCharge_stc["Rank"]["EventType"]
	local nPrayForCharge_LevData = tPrayForCharge_stc["Rank"]["DataType"]
	local nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId)
	local nPrayForCharge_Event = tPrayForCharge_stc["Receive"]["EventType"]
	local nPrayForCharge_Data = tPrayForCharge_stc["Receive"]["DataType"] 
	local nPrayForCharge_ReceiveNum = Get_UserStatisticValue(nPrayForCharge_Event,nPrayForCharge_Data,nPrayForCharge_UserId)
	local nPrayForCharge_Num = 0
	for i =2,nPrayForCharge_length do 
		tPrayForCharge_Timeset[i] = Get_UserStatisticValue(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],nPrayForCharge_UserId)
	end
	if nPrayForCharge_length == 0 then
		nPrayForCharge_length = 1
		Task_SetStatistic(nPrayForCharge_LevEvent,nPrayForCharge_LevData,1,1)
		Task_SetStcTimestamp(nPrayForCharge_LevEvent,nPrayForCharge_LevData,0)
	end
	if nPrayForCharge_length == 1 then
		nPrayForCharge_Num = (nPrayForCharge_Now - nPrayForCharge_Start)*1/7200 - nPrayForCharge_ReceiveNum
		return nPrayForCharge_Num
	end
	if nPrayForCharge_length == 2 then
		nPrayForCharge_Num = ((nPrayForCharge_Now - tPrayForCharge_Timeset[2])*3/7200) + (tPrayForCharge_Timeset[2]-nPrayForCharge_Start)*(1/7200) - nPrayForCharge_ReceiveNum
		return nPrayForCharge_Num
	end
	if nPrayForCharge_length == 3 then
		nPrayForCharge_Num = ((nPrayForCharge_Now - tPrayForCharge_Timeset[3])*5/7200) + (tPrayForCharge_Timeset[2]-nPrayForCharge_Start)*(1/7200) + (tPrayForCharge_Timeset[3]-tPrayForCharge_Timeset[2])*(3/7200) - nPrayForCharge_ReceiveNum
		return nPrayForCharge_Num
	end
	local nPrayForCharge_Tail = tPrayForCharge_Rank[nPrayForCharge_Lev][2]
	for i = 2,nPrayForCharge_length-1 do
		nPrayForCharge_Num = nPrayForCharge_Num + (tPrayForCharge_Timeset[i+1]-tPrayForCharge_Timeset[i])*(tPrayForCharge_Rank[i][2]/7200)
	end
	nPrayForCharge_Num = nPrayForCharge_Num + (tPrayForCharge_Timeset[2]-nPrayForCharge_Start)*(tPrayForCharge_Rank[1][2]/7200)+(nPrayForCharge_Now - tPrayForCharge_Timeset[nPrayForCharge_length])*(nPrayForCharge_Tail/7200) - nPrayForCharge_ReceiveNum
	return nPrayForCharge_Num
end

function PrayForCharge_Receive()
	local nPrayForCharge_UserId = Get_UserId()
	local nPrayForCharge_length = 0
	local nPrayForCharge_ItemId = tPrayForCharge_Data["ItemId"]
	for i = 2,17 do
		local nPrayForCharge_Up = Get_UserStatisticValue(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],nPrayForCharge_UserId)
		if nPrayForCharge_Up > 0 then
			nPrayForCharge_length = i
		end
	end
	local nPrayForCharge_Event = tPrayForCharge_stc["Receive"]["EventType"]
	local nPrayForCharge_Data = tPrayForCharge_stc["Receive"]["DataType"]
	local nPrayForCharge_Num = math.floor(PrayForCharge_GetNum(nPrayForCharge_length))
	if nPrayForCharge_Num < 0 then
		nPrayForCharge_Num = 0
	end
	
	-- 先判断获得数量是否为0
	if nPrayForCharge_Num == 0 then
		Sys_MsgBox(tPrayForCharge_Text["Msg"]["Full"])
		return
	end
	
	local tReward = CommonFunc_Copy(tPrayForCharge_Reward[nPrayForCharge_ItemId])
	tReward["RewardItem"][1]["Attr"] = "0 "..nPrayForCharge_Num
	local bPrayForCharge_Judge = TermsOfUse_Main(nPrayForCharge_ItemId,tReward)
	if not bPrayForCharge_Judge then
		return
	end
	
	Task_AddStatistic(nPrayForCharge_Event,nPrayForCharge_Data,nPrayForCharge_Num,1)
	Task_SetStcTimestamp(nPrayForCharge_Event,nPrayForCharge_Data,0)
	RewardTemplate_UseItemAndMsg(tReward)
end
function PrayForCharge_Login()
	local nPrayForCharge_UserId = Get_UserId()
	local nPrayForCharge_LevEvent = tPrayForCharge_stc["Rank"]["EventType"]
	local nPrayForCharge_LevData = tPrayForCharge_stc["Rank"]["DataType"]
	local nPrayForCharge_Event = tPrayForCharge_stc["Reward"]["EventType"]
	local nPrayForCharge_Data = tPrayForCharge_stc["Reward"]["DataType"]
	local nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId) or 0
	local nPrayForCharge_ChkLevEvent = tPrayForCharge_stc["ChkRank"]["EventType"]
	local nPrayForCharge_ChkLevData = tPrayForCharge_stc["ChkRank"]["DataType"]
	local nPrayForCharge_ChkLev = Get_UserStatisticValue(nPrayForCharge_ChkLevEvent,nPrayForCharge_ChkLevData,nPrayForCharge_UserId) or 0
	local nPrayForCharge_Per
	
	if tPrayForCharge_Rank[nPrayForCharge_Lev] == nil then
		nPrayForCharge_Per = 0
	else
		nPrayForCharge_Per = tPrayForCharge_Rank[nPrayForCharge_Lev][2]
	end

	local nPrayForCharge_Now = 1587139200
	local nPrayForCharge_Num = nPrayForCharge_Per*3*12
	local nPrayForCharge_ItemId = tPrayForCharge_Data["ItemId"]
	if not Sys_ChkFullTime(tActivityTime["PrayForCharge"]["ActivityTime"]) then
		return
	end
	if Task_ChkStcValue(nPrayForCharge_Event,nPrayForCharge_Data,">=",1,nPrayForCharge_UserId) then
		return
	end
	if nPrayForCharge_ChkLev == 0 or tPrayForCharge_Rank[nPrayForCharge_Lev][2] == 0 then 
		return
	end
	if nPrayForCharge_ChkLev ~= nPrayForCharge_Lev then
		Task_SetStatistic(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_ChkLev,1)
		Task_SetStcTimestamp(nPrayForCharge_LevEvent,nPrayForCharge_LevData,0)
		nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId)
		nPrayForCharge_Per = tPrayForCharge_Rank[nPrayForCharge_Lev][2]
	end
	for i = 2 , nPrayForCharge_Lev do
		if Get_UserStatisticValue(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],nPrayForCharge_UserId) == 0 or nil then
			Task_SetStatistic(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],nPrayForCharge_Now,1)
			Task_SetStcTimestamp(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],0)
		end
	end
	local tReward = CommonFunc_Copy(tPrayForCharge_Reward[nPrayForCharge_ItemId])
	tReward["RewardItem"][1]["Attr"] = "0 "..nPrayForCharge_Num
	local bPrayForCharge_Judge = TermsOfUse_Main(nPrayForCharge_ItemId,tReward)
	if not bPrayForCharge_Judge then
		return
	end
	Task_AddStatistic(nPrayForCharge_Event,nPrayForCharge_Data,1,1)
	Task_SetStcTimestamp(nPrayForCharge_Event,nPrayForCharge_Data,0)
	RewardTemplate_UseItemAndMsg(tReward)
end
------------------------------模块部分配置----------------------------------

--Npc 26136 祥麟
tNpcFace[2426] = 2892
tNpcGossip[26136] = tNpcGossip[26136] or DefaultNpc:new{}
tNpcGossip[26136]["OptionHidden"] = 1
tNpcGossip[26136]["DialogueText"] = tPrayForCharge_Text[26136]

tNpcGossip[26136]["Text1-1"] = {111,112,113,114}
tNpcGossip[26136]["tOption1-1"] = {1}
tNpcGossip[26136]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["PrayForCharge"]["ActivityTime"])
end

tNpcGossip[26136]["Text1-2"] = {121,122}
tNpcGossip[26136]["tOption1-2"] = {2}
tNpcGossip[26136]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["PrayForCharge"]["ActivityTime"])
end

tNpcGossip[26136]["Text1-3"] = {121,131,132,133,134,135,136,133}
tNpcGossip[26136]["tOption1-3"] = {3,4}
tNpcGossip[26136]["ChkFunc1-3"] = function()
	local nPrayForCharge_UserId = Get_UserId()
	local nPrayForCharge_Event = tPrayForCharge_stc["Handin"]["EventType"]
	local nPrayForCharge_Data = tPrayForCharge_stc["Handin"]["DataType"]
	local nPrayForCharge_LevEvent = tPrayForCharge_stc["Rank"]["EventType"]
	local nPrayForCharge_LevData = tPrayForCharge_stc["Rank"]["DataType"]
	local nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId) or 0
	local nPrayForCharge_Point = Get_UserStatisticValue(nPrayForCharge_Event,nPrayForCharge_Data,nPrayForCharge_UserId)
	local nPrayForCharge_length = 0
	local nPrayForCharge_Start = tPrayForCharge_Data["StartTime"]
	if nPrayForCharge_Lev == 0 or nil then
		Task_SetStatistic(nPrayForCharge_LevEvent,nPrayForCharge_LevData,1,1)
		Task_SetStcTimestamp(nPrayForCharge_LevEvent,nPrayForCharge_LevData,0)
		nPrayForCharge_Lev = Get_UserStatisticValue(nPrayForCharge_LevEvent,nPrayForCharge_LevData,nPrayForCharge_UserId)
	end
	for i = 2,17 do
		local nPrayForCharge_Up = Get_UserStatisticValue(tPrayForCharge_stc["LevUp"][i]["EventType"],tPrayForCharge_stc["LevUp"][i]["DataType"],nPrayForCharge_UserId)
		if nPrayForCharge_Up > 0 then
			nPrayForCharge_length = i
		end
	end
	local nPrayForCharge_Num = math.floor(PrayForCharge_GetNum(nPrayForCharge_length))
	if nPrayForCharge_Num < 0 then
		nPrayForCharge_Num = 0
	end
	local nPrayForCharge_Creat = tPrayForCharge_Rank[nPrayForCharge_Lev][2]
	if nPrayForCharge_Lev >= 17 then
		tNpcGossip[26136]["Text1-3"] = {121,131,132,133,134,136,133}
		tNpcGossip[26136]["Text132"] = string.format(tPrayForCharge_Text[26136]["Text132"],nPrayForCharge_Creat)
		tNpcGossip[26136]["Text134"] = tPrayForCharge_Text[26136]["Text1341"]
		tNpcGossip[26136]["Text136"] = string.format(tPrayForCharge_Text[26136]["Text136"],nPrayForCharge_Num)
		return true
	end
	local nPrayForCharge_Next = tPrayForCharge_Rank[nPrayForCharge_Lev+1][1] - nPrayForCharge_Point
	if nPrayForCharge_Next < 0 then
		nPrayForCharge_Next = 0 
	end
	tNpcGossip[26136]["Text132"] = string.format(tPrayForCharge_Text[26136]["Text132"],nPrayForCharge_Creat)
	tNpcGossip[26136]["Text134"] = string.format(tPrayForCharge_Text[26136]["Text134"],nPrayForCharge_Lev,nPrayForCharge_Next)
	tNpcGossip[26136]["Text136"] = string.format(tPrayForCharge_Text[26136]["Text136"],nPrayForCharge_Num)
	return true
end

tNpcGossip[26136]["OptionFunc3"] = "PrayForCharge_Receive"

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
--table.insert(tSystem_PlayLogin_Func,PrayForCharge_Login)