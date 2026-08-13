------------------------------------------------------------------------------------
--Name：            170823[英文征服][活动脚本]精炼提升免费福利包
--Creator:      杨艳
--Created:     2017/08/23
------------------------------------------------------------------------------------
--任务需求：
--活动更新后，自动发两个礼包到玩家身上。礼包上说明是精炼系统福利包，要求所有玩家共享福利，免费提升精炼等级！								
-- 明亮星陨石福利月包	新制作	赠	RadiantStarStone*150	3009001	5	非赠，不可交易	"
-- 每天可领取1颗晶莹星陨石。最多可以获得30颗。"	"星陨石两天激活时效
-- 礼包10.31过期"
-- 晶莹星陨石福利周包	新制作	赠	RadiantStarStone*20	3009002	1	非赠，不可交易	"
-- 每隔7天可以打开一次礼包，每次获得5颗晶莹星陨石。最多可以打开4次。"	"星陨石两天激活时效
-- 礼包12.07过期"

------------------------------------------------------------------------------------
--命名前缀
--RefinedPromotion_
------------------------------------------------------------------------------------
--礼包种类
local tRefinedPromotion_GiftType = {}
	-- 3304813 明亮星陨石福利月礼包
	tRefinedPromotion_GiftType[3304813] = {}
	tRefinedPromotion_GiftType[3304813][1] = {}
	tRefinedPromotion_GiftType[3304813][1]["Log"] = "0,0,0,0,12000844,2,3009001,5"
	tRefinedPromotion_GiftType[3304813][1]["EventType"] = 165
	tRefinedPromotion_GiftType[3304813][1]["DataType"] = 12
	tRefinedPromotion_GiftType[3304813][1]["RewardDelay"] = 1
	tRefinedPromotion_GiftType[3304813][1]["RewardTimeType"] = 4
	tRefinedPromotion_GiftType[3304813][1]["RewardData"] = 1
	tRefinedPromotion_GiftType[3304813][1]["RewardTotalData"] = 30
	tRefinedPromotion_GiftType[3304813][1]["RewardItem"] = {}
	tRefinedPromotion_GiftType[3304813][1]["RewardItem"][1] = {}
	tRefinedPromotion_GiftType[3304813][1]["RewardItem"][1]["Id"] = 3009001
	tRefinedPromotion_GiftType[3304813][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	
	-- 3304814 晶莹星陨石福利周礼包
	tRefinedPromotion_GiftType[3304814] = {}
	tRefinedPromotion_GiftType[3304814][1] = {}
	tRefinedPromotion_GiftType[3304814][1]["Log"] = "0,0,0,0,12000844,2,3009002,1"
	tRefinedPromotion_GiftType[3304814][1]["EventType"] = 165
	tRefinedPromotion_GiftType[3304814][1]["DataType"] = 13
	tRefinedPromotion_GiftType[3304814][1]["RewardDelay"] = 7
	tRefinedPromotion_GiftType[3304814][1]["RewardTimeType"] = 4
	tRefinedPromotion_GiftType[3304814][1]["RewardData"] = 1
	tRefinedPromotion_GiftType[3304814][1]["RewardTotalData"] = 4
	tRefinedPromotion_GiftType[3304814][1]["RewardItem"] = {}
	tRefinedPromotion_GiftType[3304814][1]["RewardItem"][1] = {}
	tRefinedPromotion_GiftType[3304814][1]["RewardItem"][1]["Id"] = 3009002
	tRefinedPromotion_GiftType[3304814][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"	
	
--log删除表
local tRefinedPromotion_DelLog = {}
	tRefinedPromotion_DelLog[3304813] ="0,0,3304813,1,12000844,2,0,0" 
	tRefinedPromotion_DelLog[3304814] ="0,0,3304814,1,12000844,2,0,0"
--STC掩码
local tRefinedPromotion_Stc = {}
--stc(165,12) 记录月礼包
	tRefinedPromotion_Stc[1] = {}
	tRefinedPromotion_Stc[1]["EventType"] = 165
	tRefinedPromotion_Stc[1]["DataType"]= 12
--stc(165,13) 记录周礼包
	tRefinedPromotion_Stc[2] = {}
	tRefinedPromotion_Stc[2]["EventType"] = 165
	tRefinedPromotion_Stc[2]["DataType"] = 13	

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--晶莹星陨石福利月礼包
tItem[3304813] = tItem[3304813] or {}
tItem[3304813]["Function"] = function(nItemId,sItemName)

	if CommonFunc_GetBeforeActivityTime(tActivityTime["Refined"]["ItemTimesUseTimes"]) then
		return
	end

	if Sys_ChkFullTime(tActivityTime["Refined"]["ItemTimesUseTimes"]) then
	
		local nData = Get_UserStatisticValue(tRefinedPromotion_Stc[1]["EventType"],tRefinedPromotion_Stc[1]["DataType"])
		
		local nSigleData = nData%10000
		local nNowTotalData = (nData-nSigleData)/10000		
		--User_TalkChannel2005("次数===" .. nNowTotalData .. "\n掩码值==" .. nData)
		--是否>=30次  
		if nNowTotalData >= 30 then
			if Item_ChkItem(nItemId) then
				Item_DelItem(nItemId)
				Sys_SaveActionRewardLog(tRefinedPromotion_DelLog[nItemId])
			end
			return
		end
		--判断今天是否领取过奖励
		if not RewardTemplate_JudgmentStc(tRefinedPromotion_GiftType[nItemId][1]) then
			User_TalkChannel2005(tRefinedPromotion_Text["Aready_Open"])	
			return
		end 
		-- 是否==29次是删除礼包给奖励
		if nNowTotalData == 29 then
			if Item_DelItem(nItemId) then
				Sys_SaveActionRewardLog(tRefinedPromotion_DelLog[nItemId])
				RewardTemplate_UseItemAndMsg(tRefinedPromotion_GiftType[nItemId][1])
				User_TalkChannel2005(tRefinedPromotion_Text["Get_Last_Gift"])			
			end
		
		else

			-- 判断空间给奖励
			if RewardTemplate_CheckSpace(tRefinedPromotion_GiftType[nItemId][1]) then
				RewardTemplate_UseItemAndMsg(tRefinedPromotion_GiftType[nItemId][1])
				
				User_TalkChannel2005(tRefinedPromotion_Text["Get_Gift"])
			end
		end	
	else
		-- RewardTemplate_DelItem(tRefinedPromotion_GiftType[nItemId][2])
		Item_DelItem(nItemId)
		Sys_SaveActionRewardLog(tRefinedPromotion_DelLog[nItemId])
		-- RewardTemplate_UseItemAndMsg(tRefinedPromotion_GiftType[nItemId][2])
		User_TalkChannel2005(tRefinedPromotion_Text["Time_End"])
	end
end

--晶莹星陨石福利周礼包
tItem[3304814] = tItem[3304814] or {}
tItem[3304814]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Refined"]["ItemTimesUseTimes"]) then
		return
	end

	if Sys_ChkFullTime(tActivityTime["Refined"]["ItemTimesUseTimes"]) then
	
		--是否超过4次 
		local nData = Get_UserStatisticValue(tRefinedPromotion_Stc[2]["EventType"],tRefinedPromotion_Stc[2]["DataType"])
		-- local nNowTotalData = (nData - nData)/10000
		local nNowSingleData = nData%10000
		local nSigleData = (nData - nNowSingleData)/10000	
		--User_TalkChannel2005("次数===" .. nSigleData .. "\n掩码值==" .. nData)
		if nSigleData >= 4 then
			if Item_ChkItem(nItemId) then
				Item_DelItem(nItemId)
				Sys_SaveActionRewardLog(tRefinedPromotion_DelLog[nItemId])
			end
			return
		end
		--判断七天是否领取过奖励
		if not RewardTemplate_JudgmentStc(tRefinedPromotion_GiftType[nItemId][1]) then
			User_TalkChannel2005(tRefinedPromotion_Text["Less_SevenDay"])	
			return
		end 
		-- 是否==3次是删除礼包给奖励
		if nSigleData == 3 then
			if Item_DelItem(nItemId) then
				Sys_SaveActionRewardLog(tRefinedPromotion_DelLog[nItemId])
				RewardTemplate_UseItemAndMsg(tRefinedPromotion_GiftType[nItemId][1])
				User_TalkChannel2005(tRefinedPromotion_Text["Get_Fourth_Gift"])			
			end
		else
		-- 判断空间给奖励
			if RewardTemplate_CheckSpace(tRefinedPromotion_GiftType[nItemId][1]) then
				RewardTemplate_UseItemAndMsg(tRefinedPromotion_GiftType[nItemId][1])
				User_TalkChannel2005(tRefinedPromotion_Text["Get_Gift_1"])
			end
		end
	else	
		Item_DelItem(nItemId) 
		Sys_SaveActionRewardLog(tRefinedPromotion_DelLog[nItemId])
		-- RewardTemplate_UseItemAndMsg(tRefinedPromotion_GiftType[nItemId][2])
		User_TalkChannel2005(tRefinedPromotion_Text["Time_End"])
	end
end





