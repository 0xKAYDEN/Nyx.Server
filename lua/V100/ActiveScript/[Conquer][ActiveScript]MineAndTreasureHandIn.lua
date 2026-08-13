----------------------------------------------------------------------------
--Name:			181023[英文征服][活动脚本]练气+1和练气券上交NPC制作
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018-11-23
-------------------------------------------------------------------------
-- 前缀
-- MineAndTreasureHandIn_

-- LogId 12001197

-- stc掩码说明 
-- stc (185,34)		记录上交99分券次数
-- stc (185,35)		记录上交98分券次数
-- stc (185,36)		上交练气+1次数
-- stc (193,59)		上交练气+1次数（另一物品id）

-- 全局表记录
-- global

--------------------------------------常量配置部分---------------------------------------
-- 掩码表
local tMineAndTreasureHandIn_Stc = {}
	-- 上交99分券次数
	tMineAndTreasureHandIn_Stc[3311151] = {}
	tMineAndTreasureHandIn_Stc[3311151]["EventType"] = 185
	tMineAndTreasureHandIn_Stc[3311151]["DataType"] = 34
	-- 上交98分券次数
	tMineAndTreasureHandIn_Stc[3311152] = {}
	tMineAndTreasureHandIn_Stc[3311152]["EventType"] = 185
	tMineAndTreasureHandIn_Stc[3311152]["DataType"] = 35
	-- 上交练气+1次数
	tMineAndTreasureHandIn_Stc[3311292] = {}
	tMineAndTreasureHandIn_Stc[3311292]["EventType"] = 185
	tMineAndTreasureHandIn_Stc[3311292]["DataType"] = 36
	-- 上交练气+1次数（另一物品id）
	tMineAndTreasureHandIn_Stc[711903] = {}
	tMineAndTreasureHandIn_Stc[711903]["EventType"] = 193
	tMineAndTreasureHandIn_Stc[711903]["DataType"] = 59
	-- 上交自创+1凭证数量
	tMineAndTreasureHandIn_Stc[711904] = {}
	tMineAndTreasureHandIn_Stc[711904]["EventType"] = 178
	tMineAndTreasureHandIn_Stc[711904]["DataType"] = 04
	
-- Log表
local tMineAndTreasureHandIn_Log = {}
	tMineAndTreasureHandIn_Log["Del"] = "0,0,%d,%d,12001197,0,0,0"
	-- EmoneyLog
	tMineAndTreasureHandIn_Log["Emoney"] = {}
	-- 上交+1炼气令牌
	tMineAndTreasureHandIn_Log["Emoney"][3311292] = "350	21884	0	0	1	"
	-- 上交98炼气令牌
	tMineAndTreasureHandIn_Log["Emoney"][3311152] = "350	21885	0	0	1	"
	-- 上交99炼气令牌
	tMineAndTreasureHandIn_Log["Emoney"][3311151] = "350	21886	0	0	1	"
	-- 上交+1炼气令牌（另一物品id）
	tMineAndTreasureHandIn_Log["Emoney"][711903] = "350	21884	0	0	1	"
	-- 上交自创+1凭证
	tMineAndTreasureHandIn_Log["Emoney"][711904] = "350	21491	0	0	1	"
	
	
----------------------------------------逻辑部分-------------------------------------
-- 上交物品
function MineAndTreasureHandIn_HandInItem(nNpcId,nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 判断物品是否存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		local sMsg = string.format(tMineAndTreasureHandIn_Text["NotHaveItem"],sItemName)
		Sys_MsgBox(sMsg)
		return false
	end
	
	-- 二次确认
	tNpcGossip[nNpcId]["Text211"] = string.format(tMineAndTreasureHandIn_Text[nNpcId]["Text211"],sItemName)
	tNpcGossip[nNpcId]["OptionFunc211"] = "MineAndTreasureHandIn_Confirm</N>" .. nNpcId .. "</N>" .. nItemId 
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return true
end

-- 二次确认
function MineAndTreasureHandIn_Confirm(nNpcId,nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 判断物品是否存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		local sMsg = string.format(tMineAndTreasureHandIn_Text["NotHaveItem"],sItemName)
		Sys_MsgBox(sMsg)
		return false
	end
	
	-- 删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 置掩码
		local nEvent = tMineAndTreasureHandIn_Stc[nItemId]["EventType"]
		local nType = tMineAndTreasureHandIn_Stc[nItemId]["DataType"]
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		-- 运营要取数据用 这里先记emoney log
		Sys_SaveEmoneyBuy(tMineAndTreasureHandIn_Log["Emoney"][nItemId])
		
		tNpcGossip[nNpcId]["Text311"] = string.format(tMineAndTreasureHandIn_Text[nNpcId]["Text311"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return true
	end
end

-- 前往提升炼气属性
function MineAndTreasureHandIn_OpenWeb(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	User_SendWebPage(tMineAndTreasureHandIn_Text["Web"])
	return true
end


----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 气功大师 23499
tNpcFace[6383] = 57
tNpcGossip[23499] = tNpcGossip[23499] or DefaultNpc:new{}
tNpcGossip[23499]["OptionHidden"] = 1
tNpcGossip[23499]["DialogueText"] = tMineAndTreasureHandIn_Text[23499]

-- 活动前
tNpcGossip[23499]["Text1-1"] = {111,112}
tNpcGossip[23499]["tOption1-1"] = {111}
tNpcGossip[23499]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"])
end

-- 活动后
tNpcGossip[23499]["Text1-2"] = {121}
tNpcGossip[23499]["tOption1-2"] = {121}
tNpcGossip[23499]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"])
end

-- 活动中·等级满足
tNpcGossip[23499]["Text1-3"] = {131,132}
-- tNpcGossip[23499]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23499]["tOption1-3"] = {135,136,134}
tNpcGossip[23499]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"])
end

tNpcGossip[23499]["OptionFunc131"] = "MineAndTreasureHandIn_HandInItem</N>23499</N>3311151"
tNpcGossip[23499]["OptionFunc132"] = "MineAndTreasureHandIn_HandInItem</N>23499</N>3311152"
tNpcGossip[23499]["OptionFunc133"] = "MineAndTreasureHandIn_HandInItem</N>23499</N>3311292"
tNpcGossip[23499]["OptionFunc134"] = "MineAndTreasureHandIn_OpenWeb</N>23499"
tNpcGossip[23499]["OptionFunc135"] = "MineAndTreasureHandIn_HandInItem</N>23499</N>711903"
tNpcGossip[23499]["OptionFunc136"] = "MineAndTreasureHandIn_HandInItem</N>23499</N>711904"


-- 二次确认
tNpcGossip[23499]["Text2-1"] = {211}
tNpcGossip[23499]["tOption2-1"] = {211,212}


-- 成功提交
tNpcGossip[23499]["Text3-1"] = {311}
tNpcGossip[23499]["tOption3-1"] = {311,312}

tNpcGossip[23499]["OptionFunc311"] = "MineAndTreasureHandIn_OpenWeb</N>23499"


-------------------------------物品模板
tItem[3311292] = tItem[3311292] or {}
tItem[3311292]["Function"] = function(nItemId,sItemName)
	-- 在上交时间之前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"]) then
		Sys_MsgBox(tMineAndTreasureHandIn_Text["NotTime"])
		return false
	end
	
	-- 超过可使用时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMineAndTreasureHandIn_Text["OutTime"])
			
			-- 记录删除log
			local sLog = string.format(tMineAndTreasureHandIn_Log["Del"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return false
	end
	
	-- 可使用
	if Sys_ChkFullTime(tActivityTime["MineAndTreasureHandIn"]["ActTime"] ) then
		-- 寻路
		NpcPosition_PathFind(23499)
		return true
	end
end


