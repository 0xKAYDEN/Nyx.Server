------------------------------------------------------------------------------------
--Name:			161223[英文征服][活动脚本]bee渠道推广礼包及发奖
--Purpose:		bee渠道推广礼包及发奖
--Creator:		洪易恒
--Created:		2016/12/23
------------------------------------------------------------------------------------
--命名前缀  tBeePromotion_
--Log id = 12000615
--EmoneyLog id = 350	20469

------------------------------数据部分---------------------------
local tBeePromotion_Reward = {}
	--精装财富礼包 3302011
	tBeePromotion_Reward[3302011] = {}
	tBeePromotion_Reward[3302011]["RewardItem"] = {}
	tBeePromotion_Reward[3302011]["RewardItem"][1] = {}
	tBeePromotion_Reward[3302011]["RewardItem"][1]["Id"] = 3300364
	tBeePromotion_Reward[3302011]["RewardItem"][1]["Attr"] = "0 1"
	tBeePromotion_Reward[3302011]["RewardItem"][2] = {}
	tBeePromotion_Reward[3302011]["RewardItem"][2]["Id"] = 3006025
	tBeePromotion_Reward[3302011]["RewardItem"][2]["Attr"] = "0 1"
	tBeePromotion_Reward[3302011]["DeleteItem"] = {}
	tBeePromotion_Reward[3302011]["DeleteItem"][1] = {}
	tBeePromotion_Reward[3302011]["DeleteItem"][1]["Id"] = 3302011
	tBeePromotion_Reward[3302011]["LogId"] = 12000615
	
	--豪华财富礼包 3302012
	tBeePromotion_Reward[3302012] = {}
	tBeePromotion_Reward[3302012]["RewardEMoneyMono"] = {}
	tBeePromotion_Reward[3302012]["RewardEMoneyMono"]["Value"] = 10000
	tBeePromotion_Reward[3302012]["RewardEMoneyMono"]["EmoneyLog"] = "350	20469	0	0	10000	"
	tBeePromotion_Reward[3302012]["DeleteItem"] = {}
	tBeePromotion_Reward[3302012]["DeleteItem"][1] = {}
	tBeePromotion_Reward[3302012]["DeleteItem"][1]["Id"] = 3302012
	tBeePromotion_Reward[3302012]["LogId"] = 12000615
	
------------------------------逻辑部分---------------------------
--物品使用函数
function BeePromotion_UseGiftBag(nItemId)
	RewardTemplate_UseItem(tBeePromotion_Reward[nItemId])
end

------------------------------模板部分---------------------------
--精装财富礼包 3302011
tItem[3302011] = tItem[3302011] or {}
	tItem[3302011]["Function"] = function(nItemId,sItemName)
		BeePromotion_UseGiftBag(nItemId)
	end
	
--豪华财富礼包 3302012
tItem[3302012] = tItem[3302011]