------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]练气狂欢周
--Creator:		翁清海
--Created:		2018/06/14
------------------------------------------------------------------------------------

--命名前缀
--StrengthCrazyWeek_

--logid:12001094

--------------------------------------------数据部分配置--------------------------------------------
--记录玩家选择的物品id
local tStrengthCrazyWeek_HandItemId = {}

local tStrengthCrazyWeek_Cont = {}
	--内嵌网页
	tStrengthCrazyWeek_Cont["Web"] = "https://coevent.99.com/chitrainer"
	
local tStrengthCrazyWeek_Time = {}
	tStrengthCrazyWeek_Time["ActivityTime"] = tActivityTime["StrengthCrazyWeek"]["ActivityTime"]
	tStrengthCrazyWeek_Time["NpcTime"] = tActivityTime["StrengthCrazyWeek"]["NpcTime"]
	tStrengthCrazyWeek_Time["ItemTime"] = tActivityTime["StrengthCrazyWeek"]["ItemTime"]
	
local tStrengthCrazyWeek_Log = {}
	tStrengthCrazyWeek_Log["DelItem"] = "0,0,%d,%d,12001094,2,0,0"
	
local tStrengthCrazyWeek_EMoneyLog = {}
	tStrengthCrazyWeek_EMoneyLog["Hand"] = {}
	tStrengthCrazyWeek_EMoneyLog["Hand"][711903] = "350	21490	0	0	1	"
	tStrengthCrazyWeek_EMoneyLog["Hand"][711904] = "350	21491	0	0	1	"
	tStrengthCrazyWeek_EMoneyLog["Hand"][3309716] = "350	21486	0	0	1	"
	tStrengthCrazyWeek_EMoneyLog["Hand"][3309717] = "350	21487	0	0	1	"
	tStrengthCrazyWeek_EMoneyLog["Hand"][3309718] = "350	21488	0	0	1	"
	tStrengthCrazyWeek_EMoneyLog["Hand"][3309719] = "350	21489	0	0	1	"
	
local tStrengthCrazyWeek_Stc = {}
	--上交练气+1凭证数量
	tStrengthCrazyWeek_Stc[711903] = {}
	tStrengthCrazyWeek_Stc[711903]["Event"] = 178
	tStrengthCrazyWeek_Stc[711903]["Type"] = 03
	--上交自创+1凭证数量
	tStrengthCrazyWeek_Stc[711904] = {}
	tStrengthCrazyWeek_Stc[711904]["Event"] = 178
	tStrengthCrazyWeek_Stc[711904]["Type"] = 04
	--上交95练气属性令
	tStrengthCrazyWeek_Stc[3309716] = {}
	tStrengthCrazyWeek_Stc[3309716]["Event"] = 178
	tStrengthCrazyWeek_Stc[3309716]["Type"] = 05
	--上交96练气属性令
	tStrengthCrazyWeek_Stc[3309717] = {}
	tStrengthCrazyWeek_Stc[3309717]["Event"] = 178
	tStrengthCrazyWeek_Stc[3309717]["Type"] = 06
	--上交97练气属性令
	tStrengthCrazyWeek_Stc[3309718] = {}
	tStrengthCrazyWeek_Stc[3309718]["Event"] = 178
	tStrengthCrazyWeek_Stc[3309718]["Type"] = 07
	--上交98练气属性令
	tStrengthCrazyWeek_Stc[3309719] = {}
	tStrengthCrazyWeek_Stc[3309719]["Event"] = 178
	tStrengthCrazyWeek_Stc[3309719]["Type"] = 08
	
local tStrengthCrazyWeek_Reward = {}
	--1000000点气力包
	tStrengthCrazyWeek_Reward[3309720] = {}
	tStrengthCrazyWeek_Reward[3309720]["DeleteItem"] = {}
	tStrengthCrazyWeek_Reward[3309720]["DeleteItem"][1] = {}
	tStrengthCrazyWeek_Reward[3309720]["DeleteItem"][1]["Id"] = 3309720
	tStrengthCrazyWeek_Reward[3309720]["RewardStrengthValue"] = {}
	tStrengthCrazyWeek_Reward[3309720]["RewardStrengthValue"]["Value"] = 1000000
	tStrengthCrazyWeek_Reward[3309720]["RewardEffect"] = {}
	tStrengthCrazyWeek_Reward[3309720]["RewardEffect"]["SzObj"] = "self"
	tStrengthCrazyWeek_Reward[3309720]["RewardEffect"]["Effect"] = "zf2-e128"
	tStrengthCrazyWeek_Reward[3309720]["LogId"] =12001094
	--100000点气力包
	tStrengthCrazyWeek_Reward[3309721] = {}
	tStrengthCrazyWeek_Reward[3309721]["DeleteItem"] = {}
	tStrengthCrazyWeek_Reward[3309721]["DeleteItem"][1] = {}
	tStrengthCrazyWeek_Reward[3309721]["DeleteItem"][1]["Id"] = 3309721
	tStrengthCrazyWeek_Reward[3309721]["RewardStrengthValue"] = {}
	tStrengthCrazyWeek_Reward[3309721]["RewardStrengthValue"]["Value"] = 100000
	tStrengthCrazyWeek_Reward[3309721]["RewardEffect"] = {}
	tStrengthCrazyWeek_Reward[3309721]["RewardEffect"]["SzObj"] = "self"
	tStrengthCrazyWeek_Reward[3309721]["RewardEffect"]["Effect"] = "zf2-e128"
	tStrengthCrazyWeek_Reward[3309721]["LogId"] =12001094
	--12000点气力包
	tStrengthCrazyWeek_Reward[3309722] = {}
	tStrengthCrazyWeek_Reward[3309722]["DeleteItem"] = {}
	tStrengthCrazyWeek_Reward[3309722]["DeleteItem"][1] = {}
	tStrengthCrazyWeek_Reward[3309722]["DeleteItem"][1]["Id"] = 3309722
	tStrengthCrazyWeek_Reward[3309722]["RewardStrengthValue"] = {}
	tStrengthCrazyWeek_Reward[3309722]["RewardStrengthValue"]["Value"] = 12000
	tStrengthCrazyWeek_Reward[3309722]["RewardEffect"] = {}
	tStrengthCrazyWeek_Reward[3309722]["RewardEffect"]["SzObj"] = "self"
	tStrengthCrazyWeek_Reward[3309722]["RewardEffect"]["Effect"] = "zf2-e128"
	tStrengthCrazyWeek_Reward[3309722]["LogId"] =12001094
	
--------------------------------------------逻辑部分配置--------------------------------------------
--提交凭证
function StrengthCrazyWeek_HandItem(nNowItemId, nIndex)
	--活动时间判断
	if not Sys_ChkFullTime(tStrengthCrazyWeek_Time["ActivityTime"]) then
		LinkNpcMain()
		return
	end
	
	local nUserId = Get_UserId()
	local nItemId = nNowItemId
	
	--如果不传id，则直接获取
	if nItemId == nil then
		if tStrengthCrazyWeek_HandItemId[nUserId] == nil then
			return
		end
		
		nItemId = tStrengthCrazyWeek_HandItemId[nUserId]
	end
	
	--检查是否有物品
	if not Item_ChkItem(nItemId) then
		local sItemName = Get_ItemtypeName(nItemId)
		Sys_MsgBox(string.format(tStrengthCrazyWeek_Text["MsgBox"]["NoItem"], sItemName))
		return
	end
	
	local nNpcId = Get_NpcId()
	
	--是否有二次确认
	if nIndex == 1 then
		tStrengthCrazyWeek_HandItemId[nUserId] = nItemId
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	
	--扣除物品，打掩码，打log
	if Item_DelItem(nItemId) then
		local nEvent = tStrengthCrazyWeek_Stc[nItemId]["Event"]
		local nType = tStrengthCrazyWeek_Stc[nItemId]["Type"]
		
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		
		Sys_SaveEmoneyBuy(tStrengthCrazyWeek_EMoneyLog["Hand"][nItemId])
		Sys_SaveActionRewardLog(string.format(tStrengthCrazyWeek_Log["DelItem"], nItemId, 1))
	end
	
	--提交成功
	LinkNpcGossipFunc_New(nNpcId, "2-2")
end

--链接网页
function StrengthCrazyWeek_LinkWeb()
	--活动时间判断
	if not Sys_ChkFullTime(tStrengthCrazyWeek_Time["ActivityTime"]) then
		LinkNpcMain()
		return
	end
	
	User_SendWebDialog(tStrengthCrazyWeek_Cont["Web"])
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--促销大使
tNpcFace[6106] = 186
tNpcGossip[22994] = tNpcGossip[22994] or DefaultNpc:new{}
tNpcGossip[22994]["DialogueText"] = tStrengthCrazyWeek_Text[22994]
tNpcGossip[22994]["OptionHidden"] = 1

--活动时间前
tNpcGossip[22994]["Text1-1"] = {111,112,113,114}
tNpcGossip[22994]["tOption1-1"] = {111}
tNpcGossip[22994]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tStrengthCrazyWeek_Time["NpcTime"])
end

--活动时间后
tNpcGossip[22994]["Text1-2"] = {121}
tNpcGossip[22994]["tOption1-2"] = {121}
tNpcGossip[22994]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tStrengthCrazyWeek_Time["NpcTime"])
end

--气功大师
tNpcFace[6107] = 85
tNpcGossip[22995] = tNpcGossip[22995] or DefaultNpc:new{}
tNpcGossip[22995]["DialogueText"] = tStrengthCrazyWeek_Text[22995]
tNpcGossip[22995]["OptionHidden"] = 1

--活动时间前
tNpcGossip[22995]["Text1-1"] = {111,112,113,114}
tNpcGossip[22995]["tOption1-1"] = {111}
tNpcGossip[22995]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tStrengthCrazyWeek_Time["ActivityTime"])
end

--活动时间后
tNpcGossip[22995]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[22995]["tOption1-2"] = {121,122,123,124}
tNpcGossip[22995]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tStrengthCrazyWeek_Time["ActivityTime"])
end
tNpcGossip[22995]["OptionPoint121"] = "2-1"--提交练气属性令
tNpcGossip[22995]["OptionFunc122"] = "StrengthCrazyWeek_HandItem</N>711903"--提交练气+1凭证
tNpcGossip[22995]["OptionFunc123"] = "StrengthCrazyWeek_HandItem</N>711904"--提交自创+1凭证
tNpcGossip[22995]["OptionFunc124"] = "StrengthCrazyWeek_LinkWeb"--前往使用令牌

--活动时间后
tNpcGossip[22995]["Text1-3"] = {131}
tNpcGossip[22995]["tOption1-3"] = {131}
tNpcGossip[22995]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tStrengthCrazyWeek_Time["ActivityTime"])
end

--提交练气属性令
tNpcGossip[22995]["Text2-1"] = {211}
tNpcGossip[22995]["tOption2-1"] = {211,212,213,214}
tNpcGossip[22995]["OptionFunc211"] = "StrengthCrazyWeek_HandItem</N>3309716</N>1"--95分炼气属性令
tNpcGossip[22995]["OptionFunc212"] = "StrengthCrazyWeek_HandItem</N>3309717</N>1"--96分炼气属性令
tNpcGossip[22995]["OptionFunc213"] = "StrengthCrazyWeek_HandItem</N>3309718</N>1"--97分炼气属性令
tNpcGossip[22995]["OptionFunc214"] = "StrengthCrazyWeek_HandItem</N>3309719</N>1"--98分炼气属性令

--提交成功
tNpcGossip[22995]["Text2-2"] = {221}
tNpcGossip[22995]["tOption2-2"] = {221,222}
tNpcGossip[22995]["OptionFunc221"] = "StrengthCrazyWeek_LinkWeb"--前往使用

--提交二次确认
tNpcGossip[22995]["Text2-3"] = {231}
tNpcGossip[22995]["tOption2-3"] = {231,232}
tNpcGossip[22995]["OptionFunc231"] = "StrengthCrazyWeek_HandItem"--确定使用

--提交成功
tNpcGossip[22995]["Text2-4"] = {241}
tNpcGossip[22995]["tOption2-4"] = {241,242}
tNpcGossip[22995]["OptionFunc241"] = "StrengthCrazyWeek_LinkWeb"--前往使用

---------------------------------------------物品模块---------------------------------------------
--1000000点气力包
tItem[3309720] = tItem[3309720] or {}
tItem[3309720]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tStrengthCrazyWeek_Reward[nItemId])
end

--100000点气力包
tItem[3309721] = tItem[3309720] or {}

--12000点气力包
tItem[3309722] = tItem[3309720] or {}

--95分练气属性令
tItem[3309716] = tItem[3309716] or {}
tItem[3309716]["Function"] = function(nItemId,sItemName)
	--过期删除
	if not Sys_ChkFullTime(tStrengthCrazyWeek_Time["ItemTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local nNum = Get_CountItemType(nItemId,0)
			Sys_SaveActionRewardLog(string.format(tStrengthCrazyWeek_Log["DelItem"], nItemId, nNum))
			User_TalkChannel2005(tStrengthCrazyWeek_Text["Channel2005"]["ItemTimeOut"])
		end
	end
end

--96分练气属性令
tItem[3309717] = tItem[3309716] or {}

--97分练气属性令
tItem[3309718] = tItem[3309716] or {}

--98分练气属性令
tItem[3309719] = tItem[3309716] or {}

---------------------------------------------怪物模块---------------------------------------------

---------------------------------------------陷阱模块---------------------------------------------

