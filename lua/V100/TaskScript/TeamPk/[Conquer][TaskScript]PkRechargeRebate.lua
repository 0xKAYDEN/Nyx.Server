----------------------------------------------------------------------------
--Name:		[征服][任务脚本]跨服组队PK赛主题活动-充值返利.lua
--Purpose:	充值返利
--Creator: 	郑鋆
--Created:	2017/07/04
----------------------------------------------------------------------------

-- 命名前缀
-- PkRechargeRebate_

-- 奖励表
local tPkRechargeRebate_Reward = {}
	-- 3303957,'一阶夏日外套返利包'
	-- 1000张兑换券
	tPkRechargeRebate_Reward[3303957] = {}
	tPkRechargeRebate_Reward[3303957]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303957]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303957]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303957]["DeleteItem"][1]["Id"] = 3303957
	tPkRechargeRebate_Reward[3303957]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303957]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303957]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303957]["RewardItem"][1]["Attr"] = "0 1000"

    -- 3303958,'二阶夏日外套返利包'
	-- 1个高级时装抽奖道具+3000张兑换券
	tPkRechargeRebate_Reward[3303958] = {}
	tPkRechargeRebate_Reward[3303958]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303958]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303958]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303958]["DeleteItem"][1]["Id"] = 3303958
	tPkRechargeRebate_Reward[3303958]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303958]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303958]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303958]["RewardItem"][1]["Attr"] = "0 3000"
	tPkRechargeRebate_Reward[3303958]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303958]["RewardItem"][2]["Id"] = 3303716
	tPkRechargeRebate_Reward[3303958]["RewardItem"][2]["Attr"] = "0 1"

    -- 3303959,'三阶夏日外套返利包'
	-- 1个翅膀外套抽奖道具+5000张兑换券
	tPkRechargeRebate_Reward[3303959] = {}
	tPkRechargeRebate_Reward[3303959]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303959]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303959]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303959]["DeleteItem"][1]["Id"] = 3303959
	tPkRechargeRebate_Reward[3303959]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303959]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303959]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303959]["RewardItem"][1]["Attr"] = "0 5000"
	tPkRechargeRebate_Reward[3303959]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303959]["RewardItem"][2]["Id"] = 3303712
	tPkRechargeRebate_Reward[3303959]["RewardItem"][2]["Attr"] = "0 1"
	
    -- 3303960,'四阶夏日外套返利包'
	-- 3个翅膀抽奖道具+10000张兑换券
	tPkRechargeRebate_Reward[3303960] = {}
	tPkRechargeRebate_Reward[3303960]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303960]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303960]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303960]["DeleteItem"][1]["Id"] = 3303960
	tPkRechargeRebate_Reward[3303960]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303960]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303960]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303960]["RewardItem"][1]["Attr"] = "0 10000"
	tPkRechargeRebate_Reward[3303960]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303960]["RewardItem"][2]["Id"] = 3303712
	tPkRechargeRebate_Reward[3303960]["RewardItem"][2]["Attr"] = "0 3"
	
    -- 3303961,'五阶夏日外套返利包'
	-- 5个翅膀抽奖道具+15000张兑换券
	tPkRechargeRebate_Reward[3303961] = {}
	tPkRechargeRebate_Reward[3303961]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303961]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303961]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303961]["DeleteItem"][1]["Id"] = 3303961
	tPkRechargeRebate_Reward[3303961]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303961]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303961]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303961]["RewardItem"][1]["Attr"] = "0 15000"
	tPkRechargeRebate_Reward[3303961]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303961]["RewardItem"][2]["Id"] = 3303712
	tPkRechargeRebate_Reward[3303961]["RewardItem"][2]["Attr"] = "0 5"

    -- 3303962,'六阶夏日外套返利包'
	-- 2个高级翅膀抽奖道具+20000张兑换券
	tPkRechargeRebate_Reward[3303962] = {}
	tPkRechargeRebate_Reward[3303962]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303962]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303962]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303962]["DeleteItem"][1]["Id"] = 3303962
	tPkRechargeRebate_Reward[3303962]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303962]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303962]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303962]["RewardItem"][1]["Attr"] = "0 20000"
	tPkRechargeRebate_Reward[3303962]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303962]["RewardItem"][2]["Id"] = 3303717
	tPkRechargeRebate_Reward[3303962]["RewardItem"][2]["Attr"] = "0 2"

    -- 3303963,'七阶夏日外套返利包'
	-- 3个高级翅膀抽奖道具+30000张兑换券
	tPkRechargeRebate_Reward[3303963] = {}
	tPkRechargeRebate_Reward[3303963]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303963]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303963]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303963]["DeleteItem"][1]["Id"] = 3303963
	tPkRechargeRebate_Reward[3303963]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303963]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303963]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303963]["RewardItem"][1]["Attr"] = "0 30000"
	tPkRechargeRebate_Reward[3303963]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303963]["RewardItem"][2]["Id"] = 3303717
	tPkRechargeRebate_Reward[3303963]["RewardItem"][2]["Attr"] = "0 3"

    -- 3303964,'八阶夏日外套返利包'
	-- 5个高级翅膀抽奖道具+1个凤凰碎片+7天时效凤凰体验+50000张兑换券
	tPkRechargeRebate_Reward[3303964] = {}
	tPkRechargeRebate_Reward[3303964]["LogId"] = 12000760
	tPkRechargeRebate_Reward[3303964]["DeleteItem"] = {}
	tPkRechargeRebate_Reward[3303964]["DeleteItem"][1] = {}
	tPkRechargeRebate_Reward[3303964]["DeleteItem"][1]["Id"] = 3303964
	tPkRechargeRebate_Reward[3303964]["RewardItem"] = {}
	tPkRechargeRebate_Reward[3303964]["RewardItem"][1] = {}
	tPkRechargeRebate_Reward[3303964]["RewardItem"][1]["Id"] = 3303695
	tPkRechargeRebate_Reward[3303964]["RewardItem"][1]["Attr"] = "0 50000"
	tPkRechargeRebate_Reward[3303964]["RewardItem"][2] = {}
	tPkRechargeRebate_Reward[3303964]["RewardItem"][2]["Id"] = 3303717
	tPkRechargeRebate_Reward[3303964]["RewardItem"][2]["Attr"] = "0 5"
	tPkRechargeRebate_Reward[3303964]["RewardItem"][3] = {}
	tPkRechargeRebate_Reward[3303964]["RewardItem"][3]["Id"] = 3300036
	tPkRechargeRebate_Reward[3303964]["RewardItem"][3]["Attr"] = "0 1"
	tPkRechargeRebate_Reward[3303964]["RewardItem"][4] = {}
	tPkRechargeRebate_Reward[3303964]["RewardItem"][4]["Id"] = 200575
	tPkRechargeRebate_Reward[3303964]["RewardItem"][4]["Attr"] = "0 1 3 10080 1 0 0 1"

	
------------------------------------------------------------------物品配置----------------------------------------------------------------------	
-- 一阶夏日外套返利包
tItem[3303957] = tItem[3303957] or {}
tItem[3303957]["Function"] = function(nItemId,sItemName)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tPkRechargeRebate_Text["BeOverdue"])
		end
		
		return
	end
	
	RewardTemplate_UseItemAndMsg(tPkRechargeRebate_Reward[nItemId])
end
	
-- 二阶夏日外套返利包
-- 三阶夏日外套返利包
-- 四阶夏日外套返利包
-- 五阶夏日外套返利包
-- 六阶夏日外套返利包
-- 七阶夏日外套返利包
-- 八阶夏日外套返利包
tItem[3303957] = tItem[3303957]
tItem[3303958] = tItem[3303957]
tItem[3303959] = tItem[3303957]
tItem[3303960] = tItem[3303957]
tItem[3303961] = tItem[3303957]
tItem[3303962] = tItem[3303957]
tItem[3303963] = tItem[3303957]
tItem[3303964] = tItem[3303957]