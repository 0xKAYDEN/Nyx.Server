------------------------------------------------------------------------------------
--Name:170725[英文征服][活动脚本]金币礼包和发奖action制作
--Purpose:夏日大作战外套发奖id
--Creator:傅伟龙
--Created:2017/07/25
------------------------------------------------------------------------------------
-- 前缀
-- tMoneyBagReward_

------------------------------------------------------------------------------------
local tMoneyBagReward_Reward = {}
	tMoneyBagReward_Reward[3304417] = {}
	tMoneyBagReward_Reward[3304417]["Space"] = 10
	tMoneyBagReward_Reward[3304417]["DeleteItem"] = {}
	tMoneyBagReward_Reward[3304417]["DeleteItem"][1] = {}
	tMoneyBagReward_Reward[3304417]["DeleteItem"][1]["Id"] = 3304417
	tMoneyBagReward_Reward[3304417]["RewardItem"] = {}
	tMoneyBagReward_Reward[3304417]["RewardItem"][1] = {}
	tMoneyBagReward_Reward[3304417]["RewardItem"][1]["Id"] = 723723
	tMoneyBagReward_Reward[3304417]["RewardItem"][1]["Attr"] = "0 10"
	tMoneyBagReward_Reward[3304417]["RewardEffect"] = {}
	tMoneyBagReward_Reward[3304417]["RewardEffect"]["Effect"] = "zf2-e128"
	tMoneyBagReward_Reward[3304417]["Log"] = "0,0,3304417,1,12000803,2,723723,10"
	
-------------------------------------逻辑------------------------------------------

function MoneyBagReward_OpenBag(nItemId)

	RewardTemplate_UseItem(tMoneyBagReward_Reward[nItemId])

end

--------------------------------------------物品模板---------------------------------------
tItem[3304417] = tItem[3304417] or {}
tItem[3304417]["Function"] = function(nItemId,sItemName)
	MoneyBagReward_OpenBag(nItemId)
end

