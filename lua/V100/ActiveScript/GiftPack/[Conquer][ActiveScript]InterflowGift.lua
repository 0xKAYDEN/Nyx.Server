------------------------------------------------------------------------------------
--Name:			181201[英文征服][活动脚本]12月互通服上线领取礼包
--Purpose:		互通服上线礼包
--Creator:		吴志宏
--Created:		2018-12-04
------------------------------------------------------------------------------------
-- 前缀
-- InterflowGift

-- LogId 12001238

-- stc掩码说明 
-- stc 186,85	第几次打开礼包
-- stc 186,86	今天是否打开过礼包
-- stc 186,88	是否领取过礼包

-- 全局表说明
-- global 53142		互通服标识	data0=1时为互通服

---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tInterflowGift_Cont = {}
	-- 等级限制
	tInterflowGift_Cont["Level"] = 50
	tInterflowGift_Cont["Metempsychosis"] = 0
	
	-- 互通服标识
	tInterflowGift_Cont["Global"] = 53142
	
	-- 筹码奖励
	tInterflowGift_Cont["RewardNum"] = {}
	tInterflowGift_Cont["RewardNum"][1] = 500000
	tInterflowGift_Cont["RewardNum"][2] = 500000
	tInterflowGift_Cont["RewardNum"][3] = 500000
	tInterflowGift_Cont["RewardNum"][4] = 500000
	tInterflowGift_Cont["RewardNum"][5] = 1000000

-- 掩码表
local tInterflowGift_Stc = {}
	-- 第几次打开礼包
	tInterflowGift_Stc[1] = {}
	tInterflowGift_Stc[1]["EventType"] = 186
	tInterflowGift_Stc[1]["DataType"] = 85
	-- 今天是否打开过礼包
	tInterflowGift_Stc[2] = {}
	tInterflowGift_Stc[2]["EventType"] = 186
	tInterflowGift_Stc[2]["DataType"] = 86
	-- 是否领取过礼包
	tInterflowGift_Stc[3] = {}
	tInterflowGift_Stc[3]["EventType"] = 186
	tInterflowGift_Stc[3]["DataType"] = 88
	
-- 奖励表
local tInterflowGift_Reward = {}
	tInterflowGift_Reward["GetPack"] = {}
	tInterflowGift_Reward["GetPack"]["RewardItem"] = {}
	tInterflowGift_Reward["GetPack"]["RewardItem"][1] = {}
	tInterflowGift_Reward["GetPack"]["RewardItem"][1]["Id"] = 3311817
	tInterflowGift_Reward["GetPack"]["RewardItem"][1]["Attr"] = "0 1"
	tInterflowGift_Reward["GetPack"]["LogId"] = 12001238
	
	
-----------------------------------------------逻辑部分-----------------------------------------
-- 打开礼包
function InterflowGift_OpenPack(nItemId)
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tInterflowGift_Cont["Level"],tInterflowGift_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 判断互通服
	local nGlobalId = tInterflowGift_Cont["Global"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,0)
	if nGlobalData == 0 then
		return false
	end
	
	local nEvent_2 = tInterflowGift_Stc[2]["EventType"]
	local nType_2 = tInterflowGift_Stc[2]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_2,nType_2,1,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 判断今日是否打开过礼包
	if nData_2 == 1 then
		Sys_MsgBox(tInterflowGift_Text[105]["AlreadyOpen"])
		return false
	end
	
	local nEvent_1 = tInterflowGift_Stc[1]["EventType"]
	local nType_1 = tInterflowGift_Stc[1]["DataType"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nRewardNum = tInterflowGift_Cont["RewardNum"][nData_1]
	
	-- 判断玩家是否可以放入这么多多米诺币
	-- if not User_CanPutBeans2Bag(nRewardNum) then
		-- Sys_MsgBox(tInterflowGift_Text[105]["Full"])
		-- return false
	-- end
	
	-- 第5次打开要删除礼包
	if nData_1 == 5 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 置掩码
			Task_AddStatistic(nEvent_1,nType_1,1,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
			
			Task_SetStatistic(nEvent_2,nType_2,1,1)
			Task_SetStcTimestamp(nEvent_2,nType_2,0)
		
			-- 给多米诺币
			if User_AddBeans(nRewardNum) then
				local sReward = tInterflowGift_Text[nItemId]["Reward"][nData_1]
				User_TalkChannel2005(string.format(tInterflowGift_Text[2005]["GetReward"],sReward))
				User_EffectAdd("self","angelwing")
				return true
			end
		end
	else
		-- 置掩码
		Task_AddStatistic(nEvent_1,nType_1,1,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		Task_SetStatistic(nEvent_2,nType_2,1,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
		
		-- 给多米诺币
		if User_AddBeans(nRewardNum) then
			local sReward = tInterflowGift_Text[nItemId]["Reward"][nData_1]
			User_TalkChannel2005(string.format(tInterflowGift_Text[2005]["GetReward"],sReward))
			User_EffectAdd("self","angelwing")
			return true
		end
	end
end

-- 上线给礼包
function InterflowGift_GivePack()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["InterflowGift"]["ActTime"]) then
		return false
	end
	
	-- 判断互通服
	local nGlobalId = tInterflowGift_Cont["Global"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,0)
	if nGlobalData == 0 then
		return false
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tInterflowGift_Cont["Level"],tInterflowGift_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_3 = tInterflowGift_Stc[3]["EventType"]
	local nType_3 = tInterflowGift_Stc[3]["DataType"]
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	-- 已领取
	if nData_3 == 1 then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tInterflowGift_Reward["GetPack"])
	
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tInterflowGift_Text[2005]["NoSpace"])
		return false
	end
	
	-- 置掩码·给礼包
	Task_SetStatistic(nEvent_3,nType_3,1,1)
	Task_SetStcTimestamp(nEvent_3,nType_3,0)
	
	RewardTemplate_UseItemAndMsg(tInterflowGift_Reward["GetPack"])
	return true
end


-----------------------------------------------模板部分-----------------------------------------
-------------------------------物品模板
-- 多米诺币礼盒
tItemFace[3311817] = 524
tItem[3311817] = tItem[3311817] or {}
tItem[3311817]["OptionHidden"] = 1
tItem[3311817]["DialogueText"] = tInterflowGift_Text[3311817]
tItem[3311817]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3311817]["tOption1-1"] = {111,112,113,114}
tItem[3311817]["ChkFunc1-1"] = function()
	local nEvent_1 = tInterflowGift_Stc[1]["EventType"]
	local nType_1 = tInterflowGift_Stc[1]["DataType"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 第一次打开设置掩码为1
	if nData_1 == 0 then 
		Task_SetStatistic(nEvent_1,nType_1,1,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		nData_1 = 1
	end
	
	tItem[3311817]["Text115"] = string.format(tInterflowGift_Text[3311817]["Text115"],nData_1)
	local sReward = tInterflowGift_Text[3311817]["Reward"][nData_1]
	tItem[3311817]["Text116"] = string.format(tInterflowGift_Text[3311817]["Text116"],sReward)
	
	-- 判断最后一次打开
	if nData_1 == 5 then 
		tItem[3311817]["Text1-1"] = {111,112,113,114,115,116,118}
	elseif nData_1 < 5 then
		local sNextReward = tInterflowGift_Text[3311817]["Reward"][nData_1+1]
		tItem[3311817]["Text117"] = string.format(tInterflowGift_Text[3311817]["Text117"],sNextReward)
		tItem[3311817]["Text1-1"] = {111,112,113,114,115,116,117,118}
	else
		return false
	end
	
	local nEvent_2 = tInterflowGift_Stc[2]["EventType"]
	local nType_2 = tInterflowGift_Stc[2]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_2,nType_2,1,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 判断今日是否打开过礼包
	if nData_2 == 1 then
		tItem[3311817]["tOption1-1"] = {112,113,114}
	else
		tItem[3311817]["tOption1-1"] = {111,113,114}
	end
	
	return true
end

tItem[3311817]["OptionFunc111"] = "InterflowGift_OpenPack</N>3311817"
tItem[3311817]["OptionFunc112"] = "InterflowGift_OpenPack</N>3311817"
tItem[3311817]["OptionFunc113"] = "NpcPosition_PathFind</N>6297"


-------------------------------上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,InterflowGift_GivePack)

