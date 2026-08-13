--------------------------------------------------------------------------------
---Name:160616[英文征服][任务脚本]7月暑期纪念币发奖action制作
--Creator: 	许乐
--Created:	2016-06-16
--------------------------------------------------------------------------------
--前缀 MemoryCoinsPack_

--itemid 3200545-3200550
--action 564240-564245
--logid 12000429
--luaid 40279

-- 3200545	狂欢节青铜礼包
-- 3200546	狂欢节白银礼包
-- 3200547	狂欢节黄金礼包
-- 3200548	狂欢节白金礼包
-- 3200549	狂欢节翡翠礼包
-- 3200550	狂欢节宝石礼包

------------------------------------------常量表配置--------------------------------------
local tMemoryCoinsPack_Reward = {}
	-- 3200545	狂欢节青铜礼包
	tMemoryCoinsPack_Reward[3200545] = {}
	tMemoryCoinsPack_Reward[3200545]["DeleteItem"] = {}
	tMemoryCoinsPack_Reward[3200545]["DeleteItem"][1] = {}
	tMemoryCoinsPack_Reward[3200545]["DeleteItem"][1]["Id"] = 3200545
	tMemoryCoinsPack_Reward[3200545]["RewardItem"] = {}
	tMemoryCoinsPack_Reward[3200545]["RewardItem"][1] = {}
	tMemoryCoinsPack_Reward[3200545]["RewardItem"][1]["Id"] = 3200531
	tMemoryCoinsPack_Reward[3200545]["RewardItem"][1]["Attr"] = "0 1"
	tMemoryCoinsPack_Reward[3200545]["Log"] = "0,0,3200545,1,12000429,2,3200531,1"
	tMemoryCoinsPack_Reward[3200545]["Talk"] = tMemoryCoinsPack_Text[3200545]
	-- 3200546	狂欢节白银礼包
	tMemoryCoinsPack_Reward[3200546] = {}
	tMemoryCoinsPack_Reward[3200546]["DeleteItem"] = {}
	tMemoryCoinsPack_Reward[3200546]["DeleteItem"][1] = {}
	tMemoryCoinsPack_Reward[3200546]["DeleteItem"][1]["Id"] = 3200546
	tMemoryCoinsPack_Reward[3200546]["RewardItem"] = {}
	tMemoryCoinsPack_Reward[3200546]["RewardItem"][1] = {}
	tMemoryCoinsPack_Reward[3200546]["RewardItem"][1]["Id"] = 3200531
	tMemoryCoinsPack_Reward[3200546]["RewardItem"][1]["Attr"] = "0 2"
	tMemoryCoinsPack_Reward[3200546]["Log"] = "0,0,3200546,1,12000429,2,3200531,2"
	tMemoryCoinsPack_Reward[3200546]["Talk"] = tMemoryCoinsPack_Text[3200546]
	-- 3200547	狂欢节黄金礼包
	tMemoryCoinsPack_Reward[3200547] = {}
	tMemoryCoinsPack_Reward[3200547]["DeleteItem"] = {}
	tMemoryCoinsPack_Reward[3200547]["DeleteItem"][1] = {}
	tMemoryCoinsPack_Reward[3200547]["DeleteItem"][1]["Id"] = 3200547
	tMemoryCoinsPack_Reward[3200547]["RewardItem"] = {}
	tMemoryCoinsPack_Reward[3200547]["RewardItem"][1] = {}
	tMemoryCoinsPack_Reward[3200547]["RewardItem"][1]["Id"] = 3200531
	tMemoryCoinsPack_Reward[3200547]["RewardItem"][1]["Attr"] = "0 3"
	tMemoryCoinsPack_Reward[3200547]["Log"] = "0,0,3200547,1,12000429,2,3200531,3"
	tMemoryCoinsPack_Reward[3200547]["Talk"] = tMemoryCoinsPack_Text[3200547]
	-- 3200548	狂欢节白金礼包
	tMemoryCoinsPack_Reward[3200548] = {}
	tMemoryCoinsPack_Reward[3200548]["DeleteItem"] = {}
	tMemoryCoinsPack_Reward[3200548]["DeleteItem"][1] = {}
	tMemoryCoinsPack_Reward[3200548]["DeleteItem"][1]["Id"] = 3200548
	tMemoryCoinsPack_Reward[3200548]["RewardItem"] = {}
	tMemoryCoinsPack_Reward[3200548]["RewardItem"][1] = {}
	tMemoryCoinsPack_Reward[3200548]["RewardItem"][1]["Id"] = 3200531
	tMemoryCoinsPack_Reward[3200548]["RewardItem"][1]["Attr"] = "0 5"
	tMemoryCoinsPack_Reward[3200548]["Log"] = "0,0,3200548,1,12000429,2,3200531,5"
	tMemoryCoinsPack_Reward[3200548]["Talk"] = tMemoryCoinsPack_Text[3200548]
	-- 3200549	狂欢节翡翠礼包
	tMemoryCoinsPack_Reward[3200549] = {}
	tMemoryCoinsPack_Reward[3200549]["DeleteItem"] = {}
	tMemoryCoinsPack_Reward[3200549]["DeleteItem"][1] = {}
	tMemoryCoinsPack_Reward[3200549]["DeleteItem"][1]["Id"] = 3200549
	tMemoryCoinsPack_Reward[3200549]["RewardItem"] = {}
	tMemoryCoinsPack_Reward[3200549]["RewardItem"][1] = {}
	tMemoryCoinsPack_Reward[3200549]["RewardItem"][1]["Id"] = 3200531
	tMemoryCoinsPack_Reward[3200549]["RewardItem"][1]["Attr"] = "0 6"
	tMemoryCoinsPack_Reward[3200549]["Log"] = "0,0,3200549,1,12000429,2,3200531,6"
	tMemoryCoinsPack_Reward[3200549]["Talk"] = tMemoryCoinsPack_Text[3200549]
	-- 3200550	狂欢节宝石礼包
	tMemoryCoinsPack_Reward[3200550] = {}
	tMemoryCoinsPack_Reward[3200550]["DeleteItem"] = {}
	tMemoryCoinsPack_Reward[3200550]["DeleteItem"][1] = {}
	tMemoryCoinsPack_Reward[3200550]["DeleteItem"][1]["Id"] = 3200550
	tMemoryCoinsPack_Reward[3200550]["RewardItem"] = {}
	tMemoryCoinsPack_Reward[3200550]["RewardItem"][1] = {}
	tMemoryCoinsPack_Reward[3200550]["RewardItem"][1]["Id"] = 3200531
	tMemoryCoinsPack_Reward[3200550]["RewardItem"][1]["Attr"] = "0 20"
	tMemoryCoinsPack_Reward[3200550]["Log"] = "0,0,3200550,1,12000429,2,3200531,20"
	tMemoryCoinsPack_Reward[3200550]["Talk"] = tMemoryCoinsPack_Text[3200550]

-------------------------------------------物品模板----------------------------------
-- 3200545	狂欢节青铜礼包
tItem[3200545] = tItem[3200545] or {}
tItem[3200545]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tMemoryCoinsPack_Reward[nItemId])
end
tItem[3200546]=tItem[3200545]	-- 3200546	狂欢节白银礼包
tItem[3200547]=tItem[3200545]	-- 3200547	狂欢节黄金礼包
tItem[3200548]=tItem[3200545]	-- 3200548	狂欢节白金礼包
tItem[3200549]=tItem[3200545]	-- 3200549	狂欢节翡翠礼包
tItem[3200550]=tItem[3200545]	-- 3200550	狂欢节宝石礼包

