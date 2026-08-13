------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]指定服务器礼包发放
--Purpose:	指定服务器礼包发放
--Creator: 	吴文鑫
--Created:	2017/02/17
------------------------------------------------------------------------------------

--156,27 玩家是否领取过礼包
--12000649

-- 礼包获得方式：上线自动发背包
-- 获得人群：1转110及以上玩家（只针对能进国境的玩家开放）
-- 礼包内容：赤练石+3*2（赠），气力值2000点，内功值2000点
-- 活动时间：2.18-2.20
-- 备注：
-- 1. 每个角色只能领取一次，领过不再发，丢弃不补领
-- 2. 活动时间3天，礼包有效期15天，过期未打开消失


-- 常量表
local tTheSpecifiedServerPacks_Constant = {}
	-- 活动时间
	tTheSpecifiedServerPacks_Constant["ActivityTime"] = "2017-02-18 00:00 2017-02-20 23:59"
	--玩家等级要求
	tTheSpecifiedServerPacks_Constant["Metempsychosis"] = 0
	tTheSpecifiedServerPacks_Constant["Level"] = 80
	--背包空间
	tTheSpecifiedServerPacks_Constant["Space"] = 1
	
local tTheSpecifiedServerPacks_Stc = {}
	tTheSpecifiedServerPacks_Stc["EventType"] = 156
	tTheSpecifiedServerPacks_Stc["DataType"] = 27
	
--礼包配置
local tTheSpecifiedServerPacks_SpecifiedPacks = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardItem"] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardItem"][1] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardItem"][1]["Id"] = 730003
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardItem"][1]["Attr"] = "0 2 3" 
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardStrengthValue"] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardStrengthValue"]["Value"] = 2000
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardRepairValue"] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["RewardRepairValue"]["Value"] = 2000
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["LogId"] = "12000649"
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["DeleteItem"] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["DeleteItem"][1] = {}
	tTheSpecifiedServerPacks_SpecifiedPacks[3302365]["DeleteItem"][1]["Id"] = 3302365
	
--发放礼包
local tTheSpecifiedServerPacks_GivePack = {}
	tTheSpecifiedServerPacks_GivePack["RewardItem"] = {}
	tTheSpecifiedServerPacks_GivePack["RewardItem"][1] = {}
	tTheSpecifiedServerPacks_GivePack["RewardItem"][1]["Id"] = 3302365
	tTheSpecifiedServerPacks_GivePack["RewardItem"][1]["Attr"] = "0 1 0 21600 1" 
	tTheSpecifiedServerPacks_GivePack["LogId"] = "12000649"
	
	
	
---------------------------------------------------逻辑
--上线给礼包
function TheSpecifiedServerPacks_GetPack()
	local nEvent = tTheSpecifiedServerPacks_Stc["EventType"]
	local nData = tTheSpecifiedServerPacks_Stc["DataType"]
	
	--判断是否为发放的服务器
	-- if TheSpecifiedServerPacks_ChkServerName() then
		--判断是否活动时间内
		if Sys_ChkFullTime(tTheSpecifiedServerPacks_Constant["ActivityTime"]) then
			--判断等级是否满足
			if User_JudgeLevelAndMetempsychosis(tTheSpecifiedServerPacks_Constant["Level"],tTheSpecifiedServerPacks_Constant["Metempsychosis"]) then
				--判断掩码是否为0
				if Task_ChkStcValue(nEvent,nData,"==",0) then
					--判断背包空间
					if User_CheckLeftSpace(tTheSpecifiedServerPacks_Constant["Space"]) then
						Task_SetStatistic(nEvent,nData,1,1)
						RewardTemplate_UseItemAndMsg(tTheSpecifiedServerPacks_GivePack)
					else
						User_TalkChannel2005(tTheSpecifiedServerPacks_Text["NoSpace"])
					end
				end
			end
		end
	-- end

end

function TheSpecifiedServerPacks_ChkServerName()
	local sServerName = Get_SysServerName()
	for k,v in ipairs (tTheSpecifiedServerPacks_Text["Name"]) do
		if sServerName == v then
			return true
		end
	end
	return false
end


--物品打开配置
function TheSpecifiedServerPacks_OpenPack(nItemId)
	RewardTemplate_UseItemAndMsg(tTheSpecifiedServerPacks_SpecifiedPacks[nItemId])
end

--------------------------------------物品配置-------------------------------------------
--星陨石礼包
tItem[3302365] = tItem[3302365] or {}
tItem[3302365]["Function"] = function(nItemId,sItemName)
	TheSpecifiedServerPacks_OpenPack(nItemId)
end


--上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TheSpecifiedServerPacks_GetPack)

