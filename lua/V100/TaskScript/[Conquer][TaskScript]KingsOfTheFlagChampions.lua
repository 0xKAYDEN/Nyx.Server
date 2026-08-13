------------------------------------------------------------------------------------
--Name：            180308[简体征服][任务脚本]第一届战旗之王积分赛
--Creator:      李甲
--Created:     2018/03/08
------------------------------------------------------------------------------------
--任务需求：
--掩码：17524 记录进入跨服战旗赛次数
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tKingsOfTheFlag_Const = {}
	--tKingsOfTheFlag_Const["ActivityTime"] = "2018-08-23 00:00 2018-09-23 23:59"
	tKingsOfTheFlag_Const["PKTime"] = "6 21:00 6 22:00"
	
local tKingsOfTheFlag_Stc = {}
	tKingsOfTheFlag_Stc["EventType"] = 175
	tKingsOfTheFlag_Stc["DataType"] = 24
local tKingsOfTheFlag_Attr = {}
	tKingsOfTheFlag_Attr[3307695] = {}
	tKingsOfTheFlag_Attr[3307695]["Monopoly"] = 0
	tKingsOfTheFlag_Attr[3307695]["AttributeNum"] = 5
	tKingsOfTheFlag_Attr[3307695]["ItemChanceSum"] = 10000
	tKingsOfTheFlag_Attr[3307695][1] = {}
	tKingsOfTheFlag_Attr[3307695][1]["RandomItemChanceType"] = 2
	tKingsOfTheFlag_Attr[3307695][1]["ItemChance"] = 9005
	tKingsOfTheFlag_Attr[3307695][1]["Item_1"] = 3 --实际为黄金属性保底数量
	tKingsOfTheFlag_Attr[3307695][2] = {}
	tKingsOfTheFlag_Attr[3307695][2]["RandomItemChanceType"] = 2
	tKingsOfTheFlag_Attr[3307695][2]["ItemChance"] = 980
	tKingsOfTheFlag_Attr[3307695][2]["Item_1"] = 4 
	tKingsOfTheFlag_Attr[3307695][3] = {}
	tKingsOfTheFlag_Attr[3307695][3]["RandomItemChanceType"] = 2
	tKingsOfTheFlag_Attr[3307695][3]["ItemChance"] = 15
	tKingsOfTheFlag_Attr[3307695][3]["Item_1"] = 5 
	
	tKingsOfTheFlag_Attr[3307696] = {}
	tKingsOfTheFlag_Attr[3307696]["Monopoly"] = 0
	tKingsOfTheFlag_Attr[3307696]["AttributeNum"] = 5
	tKingsOfTheFlag_Attr[3307696]["ItemChanceSum"] = 10000
	tKingsOfTheFlag_Attr[3307696][1] = {}
	tKingsOfTheFlag_Attr[3307696][1]["RandomItemChanceType"] = 2
	tKingsOfTheFlag_Attr[3307696][1]["ItemChance"] = 9840
	tKingsOfTheFlag_Attr[3307696][1]["Item_1"] = 4 --实际为黄金属性保底数量
	tKingsOfTheFlag_Attr[3307696][2] = {}
	tKingsOfTheFlag_Attr[3307696][2]["RandomItemChanceType"] = 2
	tKingsOfTheFlag_Attr[3307696][2]["ItemChance"] = 160
	tKingsOfTheFlag_Attr[3307696][2]["Item_1"] = 5 

local tKingsOfTheFlag_Log = {}
	tKingsOfTheFlag_Log["Log"] = {}
	tKingsOfTheFlag_Log["Log"]["GetXuanBao"] = "0,0,%d,1,12001024,2,%s,1"
	
	
local tKingsOfTheFlag_Reward = {}
	tKingsOfTheFlag_Reward[3307697] = {}
	tKingsOfTheFlag_Reward[3307697]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307697]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307697]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307697]["DeleteItem"][1]["Id"]= 3307697
	tKingsOfTheFlag_Reward[3307697]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307697]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307697]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307697]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307697]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307697]["RewardItem"][1]["Attr"] = "0 20"
	tKingsOfTheFlag_Reward[3307697]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307697]["RewardStrengthValue"]["Value"] = 3000
	
	tKingsOfTheFlag_Reward[3307698] = {}
	tKingsOfTheFlag_Reward[3307698]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307698]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307698]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307698]["DeleteItem"][1]["Id"]= 3307698
	tKingsOfTheFlag_Reward[3307698]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307698]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307698]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307698]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307698]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307698]["RewardItem"][1]["Attr"] = "0 15"
	tKingsOfTheFlag_Reward[3307698]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307698]["RewardStrengthValue"]["Value"] = 3000
	
	tKingsOfTheFlag_Reward[3307699] = {}
	tKingsOfTheFlag_Reward[3307699]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307699]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307699]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307699]["DeleteItem"][1]["Id"]= 3307699
	tKingsOfTheFlag_Reward[3307699]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307699]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307699]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307699]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307699]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307699]["RewardItem"][1]["Attr"] = "0 12"
	tKingsOfTheFlag_Reward[3307699]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307699]["RewardStrengthValue"]["Value"] = 3000
	
	tKingsOfTheFlag_Reward[3307700] = {}
	tKingsOfTheFlag_Reward[3307700]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307700]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307700]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307700]["DeleteItem"][1]["Id"]= 3307700
	tKingsOfTheFlag_Reward[3307700]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307700]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307700]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307700]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307700]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307700]["RewardItem"][1]["Attr"] = "0 10"
	tKingsOfTheFlag_Reward[3307700]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307700]["RewardStrengthValue"]["Value"] = 2000
	
	tKingsOfTheFlag_Reward[3307701] = {}
	tKingsOfTheFlag_Reward[3307701]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307701]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307701]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307701]["DeleteItem"][1]["Id"]= 3307701
	tKingsOfTheFlag_Reward[3307701]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307701]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307701]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307701]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307701]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307701]["RewardItem"][1]["Attr"] = "0 9"
	tKingsOfTheFlag_Reward[3307701]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307701]["RewardStrengthValue"]["Value"] = 2000
	
	tKingsOfTheFlag_Reward[3307702] = {}
	tKingsOfTheFlag_Reward[3307702]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307702]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307702]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307702]["DeleteItem"][1]["Id"]= 3307702
	tKingsOfTheFlag_Reward[3307702]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307702]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307702]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307702]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307702]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307702]["RewardItem"][1]["Attr"] = "0 8"
	tKingsOfTheFlag_Reward[3307702]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307702]["RewardStrengthValue"]["Value"] = 2000
	
	tKingsOfTheFlag_Reward[3307703] = {}
	tKingsOfTheFlag_Reward[3307703]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307703]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307703]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307703]["DeleteItem"][1]["Id"]= 3307703
	tKingsOfTheFlag_Reward[3307703]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307703]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307703]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307703]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307703]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307703]["RewardItem"][1]["Attr"] = "0 7"
	tKingsOfTheFlag_Reward[3307703]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307703]["RewardStrengthValue"]["Value"] = 2000
	
	tKingsOfTheFlag_Reward[3307704] = {}
	tKingsOfTheFlag_Reward[3307704]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307704]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307704]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307704]["DeleteItem"][1]["Id"]= 3307704
	tKingsOfTheFlag_Reward[3307704]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307704]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307704]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307704]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307704]["RewardItem"][1]["Id"] = 3306370
	tKingsOfTheFlag_Reward[3307704]["RewardItem"][1]["Attr"] = "0 6"
	tKingsOfTheFlag_Reward[3307704]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307704]["RewardStrengthValue"]["Value"] = 2000
	
	tKingsOfTheFlag_Reward[3307705] = {}
	tKingsOfTheFlag_Reward[3307705]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307705]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307705]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307705]["DeleteItem"][1]["Id"]= 3307705
	tKingsOfTheFlag_Reward[3307705]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307705]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307705]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307705]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307705]["RewardItem"][1]["Id"] = 3009001
	tKingsOfTheFlag_Reward[3307705]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tKingsOfTheFlag_Reward[3307705]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307705]["RewardStrengthValue"]["Value"] = 500
	
	tKingsOfTheFlag_Reward[3307706] = {}
	tKingsOfTheFlag_Reward[3307706]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307706]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307706]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307706]["DeleteItem"][1]["Id"]= 3307706
	tKingsOfTheFlag_Reward[3307706]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307706]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307706]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307706]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307706]["RewardItem"][1]["Id"] = 3009001
	tKingsOfTheFlag_Reward[3307706]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tKingsOfTheFlag_Reward[3307706]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307706]["RewardStrengthValue"]["Value"] = 1000
	
	tKingsOfTheFlag_Reward[3307707] = {}
	tKingsOfTheFlag_Reward[3307707]["LogId"] = 12001024
	tKingsOfTheFlag_Reward[3307707]["DeleteItem"]={}
	tKingsOfTheFlag_Reward[3307707]["DeleteItem"][1]={}
	tKingsOfTheFlag_Reward[3307707]["DeleteItem"][1]["Id"]= 3307707
	tKingsOfTheFlag_Reward[3307707]["RewardEffect"] = {}
	tKingsOfTheFlag_Reward[3307707]["RewardEffect"]["Effect"] = "zf2-e128"
	tKingsOfTheFlag_Reward[3307707]["RewardItem"] = {}
	tKingsOfTheFlag_Reward[3307707]["RewardItem"][1] = {}
	tKingsOfTheFlag_Reward[3307707]["RewardItem"][1]["Id"] = 3009001
	tKingsOfTheFlag_Reward[3307707]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tKingsOfTheFlag_Reward[3307707]["RewardStrengthValue"] = {}
	tKingsOfTheFlag_Reward[3307707]["RewardStrengthValue"]["Value"] = 1500
	
----------------------------------逻辑部分---------------------------------------------
-- 获取获得的玄宝黄金属性数量
function Xuanbao_GetAttrNum(nItemId)
	local nFlag,tReward = Probabil_RandomAward(tKingsOfTheFlag_Attr,nItemId)
	
	return tReward[1]["tAward"][1]["Item_1"]
end
-- 获得玄宝
function KingsOfTheFlag_GetXuanBao(nItemId)
	local nAttrNum = Xuanbao_GetAttrNum(nItemId)
	local nMonopoly = tKingsOfTheFlag_Attr[nItemId]["Monopoly"]
	local nAttributeNum = tKingsOfTheFlag_Attr[nItemId]["AttributeNum"]
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		local nXuanBaoId,nItem = Xuanbao_Reward(0,nMonopoly,10,0,0,nAttributeNum,0,0,nAttrNum)
		if nXuanBaoId ~= 0 then
			local sItemName = Get_ItemtypeName(nXuanBaoId)
			local sContent = string.format(tKingsOfTheFlag_Text["GetXuanBao"],sItemName)
			User_TalkChannel2005(sContent)
			
			local sStr1 = Get_ItemData1(nItem)
			local sStr2 = Get_ItemData2(nItem)
			local sStr3 = Get_ItemData3(nItem)
			local sStr4 = Get_ItemData4(nItem)
			local sStr5 = Get_ItemData5(nItem)
			local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
			local sLog = string.format(tKingsOfTheFlag_Log["Log"]["GetXuanBao"],nItemId,sAttr)
			Sys_SaveActionFestivalLog(sLog)
			User_EffectAdd("self","zf2-e128")
		end
	end
end

--打开礼包
function KingsOfTheFlag_GetReward(nItemId)
	
	local nUserId = Get_UserId()
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tKingsOfTheFlag_Reward[nItemId],nUserId) then 
		User_TalkChannel2005(tKingsOfTheFlag_Text["BagFull"])
		return 
	end
	RewardTemplate_UseItem(tKingsOfTheFlag_Reward[nItemId])
end
--打开时限礼包
function KingsOfTheFlag_GetTimeLimitReward(nItemId)
	if not Sys_ChkFullTime(tActivityTime["tKingsOfTheFlagActivity"]["DeleteTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
			User_TalkChannel2005(tKingsOfTheFlag_Text["TimeOut"])
		end
		return
	end
	local nUserId = Get_UserId()
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tKingsOfTheFlag_Reward[nItemId],nUserId) then 
		User_TalkChannel2005(tKingsOfTheFlag_Text["BagFull"])
		return 
	end
	RewardTemplate_UseItem(tKingsOfTheFlag_Reward[nItemId])
end
function KingsOfTheFlag_OpenURL()
	User_SendWebDialog("https://coevent.99.com/ctf1808/client/")
end
--判断玩家是否加入帮派
function KingsOfTheFlag_ChkUserGuild()
	local nUserGuildId = Get_UserGuildId(nUserId)
	if nUserGuildId ~= 0 then
		return true
	else
		return false
	end
end
function KingsOfTheFlag_AddStc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tKingsOfTheFlag_Stc["EventType"]
	local nType = tKingsOfTheFlag_Stc["DataType"]

	local nUserGuildId = Get_UserGuildId(nUserId)
	if nUserGuildId ~= 0 then
		if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
			return
		end
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end
function KingsOfTheFlag_ChckMap()
	Map_UserExeFunc(2057,-1,"KingsOfTheFlag_AddStc")
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[4936] = 74
tNpcGossip[21451]= tNpcGossip[21451] or DefaultNpc:new{}
tNpcGossip[21451]["OptionHidden"] = 1
tNpcGossip[21451]["DialogueText"] = tKingsOfTheFlag_Text[21451]
tNpcGossip[21451]["Text1-1"] = {111,112,113,114,115}

tNpcGossip[21451]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"]) and KingsOfTheFlag_ChkUserGuild()
end
tNpcGossip[21451]["tOption1-1"] = {111,112}

tNpcGossip[21451]["OptionFunc111"] = "KingsOfTheFlag_OpenURL"

--未加入帮派
tNpcGossip[21451]["Text1-2"] = {121,122,123,125}

tNpcGossip[21451]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"]) and not KingsOfTheFlag_ChkUserGuild()
end
tNpcGossip[21451]["tOption1-2"] = {121}
tNpcGossip[21451]["Option121"] = tKingsOfTheFlag_Text[21451]["Option121"]

--活动前
tNpcGossip[21451]["Text1-3"] = {131,132,133,134}

tNpcGossip[21451]["ChkFunc1-3"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"])
end
tNpcGossip[21451]["tOption1-3"] = {131}

--活动后
tNpcGossip[21451]["Text1-4"] = {141,142}
tNpcGossip[21451]["ChkFunc1-4"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"])
end
tNpcGossip[21451]["tOption1-4"] = {141}

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3307695] = tItem[3307695] or {}
tItem[3307695]["Function"] = function(nItemId,sItemName)
	KingsOfTheFlag_GetXuanBao(nItemId)
end
tItem[3307696] = tItem[3307695]


tItem[3307697] = tItem[3307697] or {}
tItem[3307697]["Function"] = function(nItemId,sItemName)
	KingsOfTheFlag_GetReward(nItemId)
end
tItem[3307698] = tItem[3307697]
tItem[3307699] = tItem[3307697]
tItem[3307700] = tItem[3307697]
tItem[3307701] = tItem[3307697]
tItem[3307702] = tItem[3307697]
tItem[3307703] = tItem[3307697]
tItem[3307704] = tItem[3307697]

tItem[3307705] = tItem[3307705] or {}
tItem[3307705]["Function"] = function(nItemId,sItemName)
	KingsOfTheFlag_GetTimeLimitReward(nItemId)
end
tItem[3307706] = tItem[3307705]
tItem[3307707] = tItem[3307705]

--------------------------------------------时间自检模板---------------------------------------
-- 活动结束后，发奖
local tKingsOfTheFlag_AddStc = {}
	tKingsOfTheFlag_AddStc[1] = {}
	tKingsOfTheFlag_AddStc[1]["ActivityTime"] = tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"]
	tKingsOfTheFlag_AddStc[1]["Type"] = 6
	tKingsOfTheFlag_AddStc[1]["TimeType"] = 3
	tKingsOfTheFlag_AddStc[1]["Time"] = "6 21:00 6 22:00"
	tKingsOfTheFlag_AddStc[1]["Func"] = KingsOfTheFlag_ChckMap
	
	tKingsOfTheFlag_AddStc[2] = {}
	tKingsOfTheFlag_AddStc[2]["ActivityTime"] = tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"]
	tKingsOfTheFlag_AddStc[2]["Type"] = 6
	tKingsOfTheFlag_AddStc[2]["TimeType"] = 3
	tKingsOfTheFlag_AddStc[2]["Time"] = "2 20:50 2 22:30"
	tKingsOfTheFlag_AddStc[2]["Func"] = KingsOfTheFlag_ChckMap

	table.insert(tSystemTime_InitialData,tKingsOfTheFlag_AddStc[1])
	table.insert(tSystemTime_InitialData,tKingsOfTheFlag_AddStc[2])

