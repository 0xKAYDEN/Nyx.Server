------------------------------------------------------------------------------------
--Name:			181014[英文征服][活动脚本]寻矿觅宝发奖礼包和action制作
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018/10/14
------------------------------------------------------------------------------------
-- 前缀
-- MineAndTreasurePack_

-- LogId 12001187

-- stc掩码说明 
-- stc 

-- 全局表记录
-- global

--------------------------------------常量配置部分---------------------------------------
-- Log表
local tMineAndTreasurePack_Log = {}
	tMineAndTreasurePack_Log["Del"] = "0,0,%d,%d,12001187,0,0,0"

-- 奖励表
local tMineAndTreasurePack_Reward = {}
	-- 13天石包
	tMineAndTreasurePack_Reward[3311129] = {}
	tMineAndTreasurePack_Reward[3311129]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311129]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311129]["DeleteItem"][1]["Id"] = 3311129
	tMineAndTreasurePack_Reward[3311129]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311129]["RewardEMoney"]["Value"] = 13
	tMineAndTreasurePack_Reward[3311129]["EmoneyLog"] = "350	21867	-13	-13	1	"
	tMineAndTreasurePack_Reward[3311129]["LogId"] = 12001187
	-- 49天石包
	tMineAndTreasurePack_Reward[3311130] = {}
	tMineAndTreasurePack_Reward[3311130]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311130]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311130]["DeleteItem"][1]["Id"] = 3311130
	tMineAndTreasurePack_Reward[3311130]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311130]["RewardEMoney"]["Value"] = 49
	tMineAndTreasurePack_Reward[3311130]["EmoneyLog"] = "350	21868	-49	-49	1	"
	tMineAndTreasurePack_Reward[3311130]["LogId"] = 12001187
	-- 108天石包
	tMineAndTreasurePack_Reward[3311131] = {}
	tMineAndTreasurePack_Reward[3311131]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311131]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311131]["DeleteItem"][1]["Id"] = 3311131
	tMineAndTreasurePack_Reward[3311131]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311131]["RewardEMoney"]["Value"] = 108
	tMineAndTreasurePack_Reward[3311131]["EmoneyLog"] = "350	21869	-108	-108	1	"
	tMineAndTreasurePack_Reward[3311131]["LogId"] = 12001187
	-- 135天石包
	tMineAndTreasurePack_Reward[3311132] = {}
	tMineAndTreasurePack_Reward[3311132]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311132]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311132]["DeleteItem"][1]["Id"] = 3311132
	tMineAndTreasurePack_Reward[3311132]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311132]["RewardEMoney"]["Value"] = 135
	tMineAndTreasurePack_Reward[3311132]["EmoneyLog"] = "350	21870	-135	-135	1	"
	tMineAndTreasurePack_Reward[3311132]["LogId"] = 12001187
	-- 490天石包
	tMineAndTreasurePack_Reward[3311133] = {}
	tMineAndTreasurePack_Reward[3311133]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311133]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311133]["DeleteItem"][1]["Id"] = 3311133
	tMineAndTreasurePack_Reward[3311133]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311133]["RewardEMoney"]["Value"] = 490
	tMineAndTreasurePack_Reward[3311133]["EmoneyLog"] = "350	21871	-490	-490	1	"
	tMineAndTreasurePack_Reward[3311133]["LogId"] = 12001187
	-- 1080天石包
	tMineAndTreasurePack_Reward[3311134] = {}
	tMineAndTreasurePack_Reward[3311134]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311134]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311134]["DeleteItem"][1]["Id"] = 3311134
	tMineAndTreasurePack_Reward[3311134]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311134]["RewardEMoney"]["Value"] = 1080
	tMineAndTreasurePack_Reward[3311134]["EmoneyLog"] = "350	21872	-1080	-1080	1	"
	tMineAndTreasurePack_Reward[3311134]["LogId"] = 12001187
	-- 1350天石包
	tMineAndTreasurePack_Reward[3311135] = {}
	tMineAndTreasurePack_Reward[3311135]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311135]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311135]["DeleteItem"][1]["Id"] = 3311135
	tMineAndTreasurePack_Reward[3311135]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311135]["RewardEMoney"]["Value"] = 1350
	tMineAndTreasurePack_Reward[3311135]["EmoneyLog"] = "350	21873	-1350	-1350	1	"
	tMineAndTreasurePack_Reward[3311135]["LogId"] = 12001187
	-- 4900天石包
	tMineAndTreasurePack_Reward[3311136] = {}
	tMineAndTreasurePack_Reward[3311136]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311136]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311136]["DeleteItem"][1]["Id"] = 3311136
	tMineAndTreasurePack_Reward[3311136]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311136]["RewardEMoney"]["Value"] = 4900
	tMineAndTreasurePack_Reward[3311136]["EmoneyLog"] = "350	21874	-4900	-4900	1	"
	tMineAndTreasurePack_Reward[3311136]["LogId"] = 12001187
	-- 10800天石包
	tMineAndTreasurePack_Reward[3311137] = {}
	tMineAndTreasurePack_Reward[3311137]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311137]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311137]["DeleteItem"][1]["Id"] = 3311137
	tMineAndTreasurePack_Reward[3311137]["RewardEMoney"] = {}
	tMineAndTreasurePack_Reward[3311137]["RewardEMoney"]["Value"] = 10800
	tMineAndTreasurePack_Reward[3311137]["EmoneyLog"] = "350	21875	-10800	-10800	1	"
	tMineAndTreasurePack_Reward[3311137]["LogId"] = 12001187
	-- 250气力值包
	tMineAndTreasurePack_Reward[3311138] = {}
	tMineAndTreasurePack_Reward[3311138]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311138]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311138]["DeleteItem"][1]["Id"] = 3311138
	tMineAndTreasurePack_Reward[3311138]["RewardStrengthValue"] = {}    
	tMineAndTreasurePack_Reward[3311138]["RewardStrengthValue"]["Value"] = 250
	tMineAndTreasurePack_Reward[3311138]["LogId"] = 12001187
	-- 4000气力值包
	tMineAndTreasurePack_Reward[3311142] = {}
	tMineAndTreasurePack_Reward[3311142]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311142]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311142]["DeleteItem"][1]["Id"] = 3311142
	tMineAndTreasurePack_Reward[3311142]["RewardStrengthValue"] = {}    
	tMineAndTreasurePack_Reward[3311142]["RewardStrengthValue"]["Value"] = 4000
	tMineAndTreasurePack_Reward[3311142]["LogId"] = 12001187
	-- 40000气力值包
	tMineAndTreasurePack_Reward[3311145] = {}
	tMineAndTreasurePack_Reward[3311145]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311145]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311145]["DeleteItem"][1]["Id"] = 3311145
	tMineAndTreasurePack_Reward[3311145]["RewardStrengthValue"] = {}    
	tMineAndTreasurePack_Reward[3311145]["RewardStrengthValue"]["Value"] = 40000
	tMineAndTreasurePack_Reward[3311145]["LogId"] = 12001187
	-- 300000气力值包
	tMineAndTreasurePack_Reward[3311147] = {}
	tMineAndTreasurePack_Reward[3311147]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311147]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311147]["DeleteItem"][1]["Id"] = 3311147
	tMineAndTreasurePack_Reward[3311147]["RewardStrengthValue"] = {}    
	tMineAndTreasurePack_Reward[3311147]["RewardStrengthValue"]["Value"] = 300000
	tMineAndTreasurePack_Reward[3311147]["LogId"] = 12001187
	-- 500000气力值包
	tMineAndTreasurePack_Reward[3311148] = {}
	tMineAndTreasurePack_Reward[3311148]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311148]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311148]["DeleteItem"][1]["Id"] = 3311148
	tMineAndTreasurePack_Reward[3311148]["RewardStrengthValue"] = {}    
	tMineAndTreasurePack_Reward[3311148]["RewardStrengthValue"]["Value"] = 500000
	tMineAndTreasurePack_Reward[3311148]["LogId"] = 12001187
	-- 金牌矿工宝箱
	tMineAndTreasurePack_Reward[3311149] = {}
	tMineAndTreasurePack_Reward[3311149]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311149]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311149]["DeleteItem"][1]["Id"] = 3311149
	tMineAndTreasurePack_Reward[3311149]["RewardItem"] = {}
	tMineAndTreasurePack_Reward[3311149]["RewardItem"][1] = {}
	tMineAndTreasurePack_Reward[3311149]["RewardItem"][1]["Id"] = 0
	tMineAndTreasurePack_Reward[3311149]["RewardItem"][1]["Attr"] = "0 1"
	tMineAndTreasurePack_Reward[3311149]["LogId"] = 12001187
	-- 银牌矿工宝箱
	tMineAndTreasurePack_Reward[3311150] = {}
	tMineAndTreasurePack_Reward[3311150]["DeleteItem"] = {}
	tMineAndTreasurePack_Reward[3311150]["DeleteItem"][1] = {}
	tMineAndTreasurePack_Reward[3311150]["DeleteItem"][1]["Id"] = 3311150
	tMineAndTreasurePack_Reward[3311150]["RewardItem"] = {}
	tMineAndTreasurePack_Reward[3311150]["RewardItem"][1] = {}
	tMineAndTreasurePack_Reward[3311150]["RewardItem"][1]["Id"] = 0
	tMineAndTreasurePack_Reward[3311150]["RewardItem"][1]["Attr"] = "0 1"
	tMineAndTreasurePack_Reward[3311150]["LogId"] = 12001187
	
	
----------------------------------------逻辑部分-------------------------------------
-- 使用天石包
function MineAndTreasurePack_UseCpPack(nItemId)
	-- 异常·物品不存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nEmoney = tMineAndTreasurePack_Reward[nItemId]["RewardEMoney"]["Value"]
	-- 天石达上限
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney + nEmoney > G_User_MaxEmoney then
		Sys_MsgBox(tMineAndTreasurePack_Text["FullEmoney"])
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tMineAndTreasurePack_Reward[nItemId])
	return true
end

-- 使用可选包
function MineAndTreasurePack_ChooseItem(nItemId,nChooseItem)
	-- 异常·物品不存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local tReward = CommonFunc_Copy(tMineAndTreasurePack_Reward[nItemId])
	tReward["RewardItem"][1]["Id"] = nChooseItem
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		local sMsg = string.format(tMineAndTreasurePack_Text["FullBag"],nSpace)
		Sys_MsgBox(sMsg)
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tReward)
	return true
end


----------------------------------------模板部分-------------------------------------
-------------------------------物品模板
-- 3311129 13天石包
-- 3311130 49天石包
-- 3311131 108天石包
-- 3311132 135天石包
-- 3311133 490天石包
-- 3311134 1080天石包
-- 3311135 1350天石包
-- 3311136 4900天石包
-- 3311137 10800天石包
tItem[3311129] = tItem[3311129] or {}
tItem[3311130] = tItem[3311129] or {}
tItem[3311131] = tItem[3311129] or {}
tItem[3311132] = tItem[3311129] or {}
tItem[3311133] = tItem[3311129] or {}
tItem[3311134] = tItem[3311129] or {}
tItem[3311135] = tItem[3311129] or {}
tItem[3311136] = tItem[3311129] or {}
tItem[3311137] = tItem[3311129] or {}
tItem[3311129]["Function"] = function(nItemId,sItemName)
	MineAndTreasurePack_UseCpPack(nItemId)
end

-- 3311138 250气力值包
-- 3311142 4000气力值包
-- 3311145 40000气力值包
-- 3311147 300000气力值包
-- 3311148 500000气力值包
tItem[3311138] = tItem[3311138] or {}
tItem[3311142] = tItem[3311138] or {}
tItem[3311145] = tItem[3311138] or {}
tItem[3311147] = tItem[3311138] or {}
tItem[3311148] = tItem[3311138] or {}
tItem[3311138]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMineAndTreasurePack_Reward[nItemId])
end

-- 3311151 99分炼气属性令
-- 3311152 98分炼气属性令
tItem[3311151] = tItem[3311151] or {}
tItem[3311152] = tItem[3311151] or {}
tItem[3311151]["Function"] = function(nItemId,sItemName)
	-- 在可使用时间之前
	if Sys_ChkFullTime(tActivityTime["MineAndTreasurePack"]["BeforeTime"]) then
		Sys_MsgBox(tMineAndTreasurePack_Text["NotTime"])
		return false
	end
	
	-- 超过可使用时间
	if Sys_ChkFullTime(tActivityTime["MineAndTreasurePack"]["AfterTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMineAndTreasurePack_Text["OutTime"])
			
			-- 记录删除log
			local sLog = string.format(tMineAndTreasurePack_Log["Del"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return false
	end
	
	-- 可使用
	if Sys_ChkFullTime(tActivityTime["MineAndTreasurePack"]["UseTime"]) then
		-- 寻路
		NpcPosition_PathFind(23499)
		return true
	end
end

-- 金牌矿工宝箱
tItemFace[3311149] = 1895
tItem[3311149] = tItem[3311149] or {}
tItem[3311149]["OptionHidden"] = 1
tItem[3311149]["DialogueText"] = tMineAndTreasurePack_Text[3311149]

tItem[3311149]["Text1-1"] = {111}
tItem[3311149]["tOption1-1"] = {111,112}

tItem[3311149]["OptionFunc111"] = "MineAndTreasurePack_ChooseItem</N>3311149</N>3311151"
tItem[3311149]["OptionFunc112"] = "MineAndTreasurePack_ChooseItem</N>3311149</N>3311148"

-- 银牌矿工宝箱
tItemFace[3311150] = 766
tItem[3311150] = tItem[3311150] or {}
tItem[3311150]["OptionHidden"] = 1
tItem[3311150]["DialogueText"] = tMineAndTreasurePack_Text[3311150]

tItem[3311150]["Text1-1"] = {111}
tItem[3311150]["tOption1-1"] = {111,112}

tItem[3311150]["OptionFunc111"] = "MineAndTreasurePack_ChooseItem</N>3311150</N>3311152"
tItem[3311150]["OptionFunc112"] = "MineAndTreasurePack_ChooseItem</N>3311150</N>3311147"

