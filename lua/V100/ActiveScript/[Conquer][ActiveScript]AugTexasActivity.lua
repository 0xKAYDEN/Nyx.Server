------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]德州八月运营活动
--Creator:		翁清海
--Created:		2018/08/08
------------------------------------------------------------------------------------

--命名前缀
--AugTexasActivity_

--logid:12001135

--------------------------------------------数据部分配置--------------------------------------------
local tAugTexasActivity_Cont = {}
	--淘金券id
	tAugTexasActivity_Cont["Item"] = 3310440
	--跳转网页
	tAugTexasActivity_Cont["Web"] = {}
	tAugTexasActivity_Cont["Web"][1] = "https://coevent.99.com/dailysignin"
	tAugTexasActivity_Cont["Web"][2] = "https://grandwinner.99.com/homepage/?#goldmining"
	--logid
	tAugTexasActivity_Cont["LogId"] = 12001135
	--购买豪客赛贵宾票
	tAugTexasActivity_Cont["BuyTicket"] = {}
	tAugTexasActivity_Cont["BuyTicket"][1] = 500000000
	tAugTexasActivity_Cont["BuyTicket"][2] = 5000
	--购买豪客赛贵宾票限量
	tAugTexasActivity_Cont["Global"] = {}
	tAugTexasActivity_Cont["Global"]["Id"] = 53466
	tAugTexasActivity_Cont["Global"]["Limit"] = 30
	
local tAugTexasActivity_Stc = {}
	--上交的淘金券
	tAugTexasActivity_Stc["Hand"] = {}
	tAugTexasActivity_Stc["Hand"]["Event"] = 181
	tAugTexasActivity_Stc["Hand"]["Type"] = 50
	
local tAugTexasActivity_Log = {}
	tAugTexasActivity_Log["DelItem"] = "0,0,%d,%d,12001135,2,0,0"
	
local tAugTexasActivity_ELog = {}
	tAugTexasActivity_ELog["Buy"] = "1000	557"
	
local tAugTexasActivity_Reword = {}
	--淘金券*2
	tAugTexasActivity_Reword[3310441] = {}
	tAugTexasActivity_Reword[3310441]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310441]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310441]["DeleteItem"][1]["Id"] = 3310441
	tAugTexasActivity_Reword[3310441]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310441]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310441]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310441]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310441]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310441]["RewardItem"][1]["Id"] = 3310440
	tAugTexasActivity_Reword[3310441]["RewardItem"][1]["Attr"] = "0 2"
	tAugTexasActivity_Reword[3310441]["LogId"] =12001135
	--淘金券*3
	tAugTexasActivity_Reword[3310442] = {}
	tAugTexasActivity_Reword[3310442]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310442]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310442]["DeleteItem"][1]["Id"] = 3310442
	tAugTexasActivity_Reword[3310442]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310442]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310442]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310442]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310442]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310442]["RewardItem"][1]["Id"] = 3310440
	tAugTexasActivity_Reword[3310442]["RewardItem"][1]["Attr"] = "0 3"
	tAugTexasActivity_Reword[3310442]["LogId"] =12001135
	--淘金券*4
	tAugTexasActivity_Reword[3310443] = {}
	tAugTexasActivity_Reword[3310443]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310443]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310443]["DeleteItem"][1]["Id"] = 3310443
	tAugTexasActivity_Reword[3310443]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310443]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310443]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310443]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310443]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310443]["RewardItem"][1]["Id"] = 3310440
	tAugTexasActivity_Reword[3310443]["RewardItem"][1]["Attr"] = "0 4"
	tAugTexasActivity_Reword[3310443]["LogId"] =12001135
	--淘金券*5
	tAugTexasActivity_Reword[3310444] = {}
	tAugTexasActivity_Reword[3310444]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310444]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310444]["DeleteItem"][1]["Id"] = 3310444
	tAugTexasActivity_Reword[3310444]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310444]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310444]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310444]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310444]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310444]["RewardItem"][1]["Id"] = 3310440
	tAugTexasActivity_Reword[3310444]["RewardItem"][1]["Attr"] = "0 5"
	tAugTexasActivity_Reword[3310444]["LogId"] =12001135
	--扑克币*2
	tAugTexasActivity_Reword[3310445] = {}
	tAugTexasActivity_Reword[3310445]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310445]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310445]["DeleteItem"][1]["Id"] = 3310445
	tAugTexasActivity_Reword[3310445]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310445]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310445]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310445]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310445]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310445]["RewardItem"][1]["Id"] = 3304719
	tAugTexasActivity_Reword[3310445]["RewardItem"][1]["Attr"] = "0 2"
	tAugTexasActivity_Reword[3310445]["LogId"] =12001135
	--扑克币*5
	tAugTexasActivity_Reword[3310446] = {}
	tAugTexasActivity_Reword[3310446]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310446]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310446]["DeleteItem"][1]["Id"] = 3310446
	tAugTexasActivity_Reword[3310446]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310446]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310446]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310446]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310446]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310446]["RewardItem"][1]["Id"] = 3304719
	tAugTexasActivity_Reword[3310446]["RewardItem"][1]["Attr"] = "0 5"
	tAugTexasActivity_Reword[3310446]["LogId"] =12001135
	--扑克币*8
	tAugTexasActivity_Reword[3310447] = {}
	tAugTexasActivity_Reword[3310447]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310447]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310447]["DeleteItem"][1]["Id"] = 3310447
	tAugTexasActivity_Reword[3310447]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310447]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310447]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310447]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310447]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310447]["RewardItem"][1]["Id"] = 3304719
	tAugTexasActivity_Reword[3310447]["RewardItem"][1]["Attr"] = "0 8"
	tAugTexasActivity_Reword[3310447]["LogId"] =12001135
	--扑克币*10
	tAugTexasActivity_Reword[3310448] = {}
	tAugTexasActivity_Reword[3310448]["DeleteItem"] = {}
	tAugTexasActivity_Reword[3310448]["DeleteItem"][1] = {}
	tAugTexasActivity_Reword[3310448]["DeleteItem"][1]["Id"] = 3310448
	tAugTexasActivity_Reword[3310448]["RewardEffect"] = {}
	tAugTexasActivity_Reword[3310448]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword[3310448]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword[3310448]["RewardItem"] = {}
	tAugTexasActivity_Reword[3310448]["RewardItem"][1] = {}
	tAugTexasActivity_Reword[3310448]["RewardItem"][1]["Id"] = 3304719
	tAugTexasActivity_Reword[3310448]["RewardItem"][1]["Attr"] = "0 10"
	tAugTexasActivity_Reword[3310448]["LogId"] =12001135
	--豪客赛门票
	tAugTexasActivity_Reword["BuyTicket"] = {}
	tAugTexasActivity_Reword["BuyTicket"]["RewardEffect"] = {}
	tAugTexasActivity_Reword["BuyTicket"]["RewardEffect"]["SzObj"] = "self"
	tAugTexasActivity_Reword["BuyTicket"]["RewardEffect"]["Effect"] = "angelwing"
	tAugTexasActivity_Reword["BuyTicket"]["RewardItem"] = {}
	tAugTexasActivity_Reword["BuyTicket"]["RewardItem"][1] = {}
	tAugTexasActivity_Reword["BuyTicket"]["RewardItem"][1]["Id"] = 3322134
	tAugTexasActivity_Reword["BuyTicket"]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tAugTexasActivity_Reword["BuyTicket"]["LogId"] =12001135
	
--------------------------------------------逻辑部分配置--------------------------------------------
--跳转网址
function AugTexasActivity_Web(nIndex)
	local sWeb = tAugTexasActivity_Cont["Web"][nIndex]
	
	if nIndex == 1 then
		User_OpenWebPageEx(sWeb)
	else
		User_SendWebPage(sWeb)
	end
end

--上交淘金券
function AugTexasActivity_Hand(nNum)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nItemId = tAugTexasActivity_Cont["Item"]
	local nNowNum = 0
	
	--检查是否有淘金券
	if nNum == nil then
		if not Item_ChkItem(nItemId,nil,nil,nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		end
		
		nNowNum = Get_CountItemType(nItemId,0,nil,nil,nUserId)
	else
		if not Item_ChkMulItem(nItemId,nItemId,nNum,nil,nil,nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		end
		
		nNowNum = nNum
	end
	
	--扣除物品
	if not Item_DelMulItem(nItemId,nItemId,nNowNum,nil,nil,nUserId) then
		return
	end
	
	--记掩码
	local nEvent = tAugTexasActivity_Stc["Hand"]["Event"]
	local nType = tAugTexasActivity_Stc["Hand"]["Type"]
	
	Task_AddStatistic(nEvent,nType,nNowNum,1,nUserId)
	
	--打log
	Sys_SaveActionRewardLog(string.format(tAugTexasActivity_Log["DelItem"],nItemId, nNowNum), nUserId)
	
	--提示
	tNpcGossip[nNpcId]["Text321"] = string.format(tAugTexasActivity_Text[23147]["Text321"], nNowNum)
	
	LinkNpcGossipFunc_New(nNpcId, "3-2")
end

--购买豪客赛贵宾票
function AugTexasActivity_BuyTicket(nIndex, nFlag)
	local nNpcId = Get_NpcId()
	
	local bTime = false
	
	--时间判断
	for k,v in pairs(tActivityTime["AugTexasActivity"]["Buy"]) do
		if Sys_ChkFullTime(v) then
			bTime = true
			break
		end
	end
	
	local nUserId = Get_UserId()
	
	if not bTime then
		Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["BuyTime"],nil,nil,nUserId)
		return
	end
	
	local nItemId = tAugTexasActivity_Reword["BuyTicket"]["RewardItem"][1]["Id"]
	local nCount = Get_CountItemType(nItemId,0)
	nCount = nCount + Get_CountItemType(nItemId,10)
	nCount = nCount + Get_CountItemType(nItemId,40)
	
	--玩家已经拥有，无需再次购买
	if nCount > 0 then
		Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["AlreadyHave"],nil,nil,nUserId)
		return
	end
	
	--判断全服限量
	local nGlobalId = tAugTexasActivity_Cont["Global"]["Id"]
	local nGlobalLimit = tAugTexasActivity_Cont["Global"]["Limit"]
	local nNowGlobalData = Get_SysDynaGlobalData0(nGlobalId)
	
	if nNowGlobalData >= nGlobalLimit then
		Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["BuynGlobalLimit"],nil,nil,nUserId)
		return
	end
	
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tAugTexasActivity_Reword["BuyTicket"],nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["NoSpace"],nil,nil,nUserId)
		return
	end
	
	local nNeedMoney = tAugTexasActivity_Cont["BuyTicket"][nIndex]
	
	--判断银两或者天石
	if nIndex == 1 then
		--银两不足
		if not User_CanPutMoney2Bag(-nNeedMoney,nUserId) then
			Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["NoMoney"],nil,nil,nUserId)
			return
		end
		
		if nFlag == nil then
			--弹二次确认对白
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		else
			local nLogId = tAugTexasActivity_Cont["LogId"]
			
			--扣除银两
			if not User_AddMoneyNew(-nNeedMoney,nLogId,nUserId) then
				return
			end
		end
	elseif nIndex == 2 then
		--天石不足
		if Get_UserEMoney(nUserId) < nNeedMoney then
			Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
		
		if nFlag == nil then
			--弹二次确认对白
			LinkNpcGossipFunc_New(nNpcId, "3-2")
			return
		else
			local sEmoneyBuyLog = tAugTexasActivity_ELog["Buy"]
			
			--扣除天石
			if not User_AddEMoneyAndLog(-nNeedMoney,sEmoneyBuyLog,nUserId) then
				return
			end
		end
	end
	
	--全服限量+1
	Sys_SetSynaGlobalData0(nGlobalId,nNowGlobalData + 1)
	
	--给奖
	RewardTemplate_UseItemAndMsg(tAugTexasActivity_Reword["BuyTicket"],nUserId)
	
	--提示
	Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["BuySucc"],nil,nil,nUserId)
end

--全服公告，开赛前3小时
function AugTexasActivity_BroadCast()
	if Sys_ChkFullTime(tActivityTime["AugTexasActivity"]["ActivityTime"]) then
		Sys_SystemBroadcast(tAugTexasActivity_Text["BroadCast"]["Begin"])
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--礼物大使
tNpcFace[6176] = 155
tNpcGossip[23147] = tNpcGossip[23147] or DefaultNpc:new{}
tNpcGossip[23147]["DialogueText"] = tAugTexasActivity_Text[23147]
tNpcGossip[23147]["OptionHidden"] = 1

--活动时间前
tNpcGossip[23147]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23147]["tOption1-1"] = {111}
tNpcGossip[23147]["ChkFunc1-1"] = function()
	return false
end

--活动时间后
tNpcGossip[23147]["Text1-2"] = {121}
tNpcGossip[23147]["tOption1-2"] = {121}
tNpcGossip[23147]["ChkFunc1-2"] = function()
	return false
end

--活动时间内
tNpcGossip[23147]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23147]["tOption1-3"] = {131,132,133}
tNpcGossip[23147]["ChkFunc1-3"] = function()
	return true
end
tNpcGossip[23147]["OptionFunc131"] = "AugTexasActivity_Web</N>1"--弹出免登陆内嵌框
tNpcGossip[23147]["OptionPoint132"] = "2-1"--上交淘金券
tNpcGossip[23147]["OptionFunc133"] = "AugTexasActivity_Web</N>2"--跳转外部网址

--上交淘金券
tNpcGossip[23147]["Text2-1"] = {211}
tNpcGossip[23147]["tOption2-1"] = {211,212,213,214}
tNpcGossip[23147]["OptionFunc211"] = "AugTexasActivity_Hand</N>1"--1张
tNpcGossip[23147]["OptionFunc212"] = "AugTexasActivity_Hand</N>5"--5张
tNpcGossip[23147]["OptionFunc213"] = "AugTexasActivity_Hand</N>10"--10张
tNpcGossip[23147]["OptionFunc214"] = "AugTexasActivity_Hand"--全部

--淘金券不足
tNpcGossip[23147]["Text3-1"] = {311}
tNpcGossip[23147]["tOption3-1"] = {311}

--上交成功
tNpcGossip[23147]["Text3-2"] = {321}
tNpcGossip[23147]["tOption3-2"] = {321,322}
tNpcGossip[23147]["OptionFunc321"] = "AugTexasActivity_Web</N>2"--跳转外部网址
tNpcGossip[23147]["OptionPoint322"] = "2-1"

tNpcGossip[23148] = tNpcGossip[23147]
tNpcGossip[23149] = tNpcGossip[23147]
tNpcGossip[23150] = tNpcGossip[23147]
tNpcGossip[23151] = tNpcGossip[23147]
tNpcGossip[23152] = tNpcGossip[23147]
tNpcGossip[23153] = tNpcGossip[23147]
tNpcGossip[23154] = tNpcGossip[23147]
tNpcGossip[23155] = tNpcGossip[23147]
tNpcGossip[23156] = tNpcGossip[23147]
tNpcGossip[23174] = tNpcGossip[23147]

--杰克
tNpcFace[5298] = 29
tNpcGossip[24339] = tNpcGossip[24339] or DefaultNpc:new{}
tNpcGossip[24339]["DialogueText"] = tAugTexasActivity_Text[24339]
tNpcGossip[24339]["OptionHidden"] = 1

--活动时间前、中
tNpcGossip[24339]["Text1-1"] = {111,112,113,114}
tNpcGossip[24339]["tOption1-1"] = {111,112,113}
tNpcGossip[24339]["ChkFunc1-1"] = function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["AugTexasActivity"]["ActivityTime"]) then
		return false
	end
	
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AugTexasActivity"]["ActivityTime"]) then
		tNpcGossip[24339]["tOption1-1"] = {113,111}
	else
		tNpcGossip[24339]["tOption1-1"] = {112,113}
	end
	
	return true
end
tNpcGossip[24339]["OptionPoint112"] = "2-2"
tNpcGossip[24339]["OptionPoint113"] = "2-1"

--活动时间后
tNpcGossip[24339]["Text1-2"] = {121}
tNpcGossip[24339]["tOption1-2"] = {121}
tNpcGossip[24339]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AugTexasActivity"]["ActivityTime"])
end

--查看豪侠赛大奖
tNpcGossip[24339]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[24339]["tOption2-1"] = {211}
tNpcGossip[24339]["OptionPoint211"] = "1"

--购买豪客赛贵宾票
tNpcGossip[24339]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[24339]["tOption2-2"] = {222}
tNpcGossip[24339]["OptionFunc221"] = "AugTexasActivity_BuyTicket</N>1"
tNpcGossip[24339]["OptionFunc222"] = "AugTexasActivity_BuyTicket</N>2"

--银两二次确认
tNpcGossip[24339]["Text3-1"] = {311,312}
tNpcGossip[24339]["tOption3-1"] = {311,312}
tNpcGossip[24339]["OptionFunc311"] = "AugTexasActivity_BuyTicket</N>1</N>1"
tNpcGossip[24339]["OptionPoint312"] = "2-2"

--天石二次确认
tNpcGossip[24339]["Text3-2"] = {321,322}
tNpcGossip[24339]["tOption3-2"] = {321,322}
tNpcGossip[24339]["OptionFunc321"] = "AugTexasActivity_BuyTicket</N>2</N>1"
tNpcGossip[24339]["OptionPoint322"] = "2-2"

---------------------------------------------物品模块---------------------------------------------
--淘金券
tItem[3310440] = tItem[3310440] or {}
tItem[3310440]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nNpcId = 0
	
	-- if nMapId == 1002 then
		-- nNpcId = 23174
	if nMapId == 3053 then
		nNpcId = 23147
	else
		Sys_MsgBox(tAugTexasActivity_Text["MsgBox"]["UserItem"])
		return
	end
	
	NpcPosition_PathFind(nNpcId)
end

--二星淘金券礼包
tItem[3310441] = tItem[3310441] or {}
tItem[3310441]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAugTexasActivity_Reword[nItemId])
end

--三星淘金券礼包
tItem[3310442] = tItem[3310441]
--四星淘金券礼包
tItem[3310443] = tItem[3310441]
--五星淘金券礼包
tItem[3310444] = tItem[3310441]
--一星扑克币礼包
tItem[3310445] = tItem[3310441]
--二星扑克币礼包
tItem[3310446] = tItem[3310441]
--三星扑克币礼包
tItem[3310447] = tItem[3310441]
--四星扑克币礼包
tItem[3310448] = tItem[3310441]

---------------------------------------------时间自检---------------------------------------------

local tAugTexasActivity_Time = {}
tAugTexasActivity_Time["TimeType"] = 1
tAugTexasActivity_Time["Multiple"] = {}
tAugTexasActivity_Time["Multiple"][1] = "09-20 07:59 09-20 07:59"
tAugTexasActivity_Time["Multiple"][2] = "09-27 07:59 09-27 07:59"
tAugTexasActivity_Time["Func"] = AugTexasActivity_BroadCast
table.insert(tSystemTime_InitialData,tAugTexasActivity_Time)
