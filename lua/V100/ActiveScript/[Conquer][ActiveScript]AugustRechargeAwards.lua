------------------------------------------------------------------------------------
--Name：            160720[英文征服][任务脚本]8月充值有礼发奖action制作(8.2)
--Creator:      陈莺
--Created:     2016/07/20
------------------------------------------------------------------------------------
---物品
-- 3200858,'星陨石豪华礼包
-- 3200859,'星陨石至尊礼包
-- 3200860,'步步高升礼包 '
-- 3200861,'福星高照礼包 '
-- 3200862,'吉祥如意礼包',
-- 3200863,'鸿运当头礼包 '
---logid  12000467

---命名规范
-- AugustRechargeAwards_
----------------------------------表配置部分--------------------------------------------
local tAugustRechargeAwards_Item = {}
	tAugustRechargeAwards_Item["Effect"] = "angelwing"
	tAugustRechargeAwards_Item[3200858] = {}  -- 星陨石豪华礼包
	tAugustRechargeAwards_Item[3200858]["Space"] = 2
	tAugustRechargeAwards_Item[3200858]["RewardItem"] = {}
	tAugustRechargeAwards_Item[3200858]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200858]["RewardItem"][1]["Id"] = 3009001
	tAugustRechargeAwards_Item[3200858]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tAugustRechargeAwards_Item[3200858]["Log"] = "0,0,3200858,1,12000467,2,3009001,3"
	tAugustRechargeAwards_Item[3200858]["RewardNoNeedTip"] = 1

	tAugustRechargeAwards_Item[3200859] = {}  --星陨石至尊礼包
	tAugustRechargeAwards_Item[3200859]["Space"] = 5
	tAugustRechargeAwards_Item[3200859]["RewardItem"] = {}
	tAugustRechargeAwards_Item[3200859]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200859]["RewardItem"][1]["Id"] = 3009001
	tAugustRechargeAwards_Item[3200859]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tAugustRechargeAwards_Item[3200859]["Log"] = "0,0,3200859,1,12000467,2,3009001,6"
	tAugustRechargeAwards_Item[3200859]["RewardNoNeedTip"] = 1

	tAugustRechargeAwards_Item[3200860] = {}  --步步高升礼包
	tAugustRechargeAwards_Item[3200860][1] = {}
	tAugustRechargeAwards_Item[3200860][1]["ItemChanceSum"] = 10000
	tAugustRechargeAwards_Item[3200860][1][1] = {}
	tAugustRechargeAwards_Item[3200860][1][1]["RandomItemChanceType"] = 2
	tAugustRechargeAwards_Item[3200860][1][1]["ItemChance"] = 7000
	tAugustRechargeAwards_Item[3200860][1][1]["RewardItem"] = {}
	tAugustRechargeAwards_Item[3200860][1][1]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200860][1][1]["RewardItem"][1]["Id"] = 192495
	tAugustRechargeAwards_Item[3200860][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tAugustRechargeAwards_Item[3200860][1][1]["Log"] = "0,0,3200860,1,12000453,2,192495,1"

	tAugustRechargeAwards_Item[3200860][1][2] = {}  
	tAugustRechargeAwards_Item[3200860][1][2]["RandomItemChanceType"] = 2
	tAugustRechargeAwards_Item[3200860][1][2]["ItemChance"] = 3000
	tAugustRechargeAwards_Item[3200860][1][2]["RewardItem"] = {}
	tAugustRechargeAwards_Item[3200860][1][2]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200860][1][2]["RewardItem"][1]["Id"] = 711903
	tAugustRechargeAwards_Item[3200860][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tAugustRechargeAwards_Item[3200860][1][2]["Log"] = "0,0,3200860,1,12000453,2,711903,1"

	tAugustRechargeAwards_Item[3200861] = {}  --福星高照礼包
	tAugustRechargeAwards_Item[3200861]["Space"] = 8
	tAugustRechargeAwards_Item[3200861]["RewardItem"] = {}  
	tAugustRechargeAwards_Item[3200861]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200861]["RewardItem"][1]["Id"] = 730007
	tAugustRechargeAwards_Item[3200861]["RewardItem"][1]["Attr"] = "0 1"
	tAugustRechargeAwards_Item[3200861]["RewardItem"][2] = {}
	tAugustRechargeAwards_Item[3200861]["RewardItem"][2]["Id"] = 3009002
	tAugustRechargeAwards_Item[3200861]["RewardItem"][2]["Attr"] = "0 8 0 2880 1"
	tAugustRechargeAwards_Item[3200861]["Log"] = "0,0,3200861,1,12000467,2,730007[3009002],1[8]"
	tAugustRechargeAwards_Item[3200861]["RewardNoNeedTip"] = 1

	tAugustRechargeAwards_Item[3200862] = {}  -- 吉祥如意礼包
	tAugustRechargeAwards_Item[3200862]["Space"] = 6
	tAugustRechargeAwards_Item[3200862]["RewardItem"] = {}
	tAugustRechargeAwards_Item[3200862]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200862]["RewardItem"][1]["Id"] = 730006
	tAugustRechargeAwards_Item[3200862]["RewardItem"][1]["Attr"] = "0 1"
	tAugustRechargeAwards_Item[3200862]["RewardItem"][2] = {}
	tAugustRechargeAwards_Item[3200862]["RewardItem"][2]["Id"] = 3009002
	tAugustRechargeAwards_Item[3200862]["RewardItem"][2]["Attr"] = "0 6 0 2880 1"
	tAugustRechargeAwards_Item[3200862]["Log"] = "0,0,3200862,1,12000467,2,730007[3009002],1[6]"
	tAugustRechargeAwards_Item[3200862]["RewardNoNeedTip"] = 1

	tAugustRechargeAwards_Item[3200863] = {}  --鸿运当头礼包
	tAugustRechargeAwards_Item[3200863]["Space"] = 3
	tAugustRechargeAwards_Item[3200863]["RewardItem"] = {}
	tAugustRechargeAwards_Item[3200863]["RewardItem"][1] = {}
	tAugustRechargeAwards_Item[3200863]["RewardItem"][1]["Id"] = 730006
	tAugustRechargeAwards_Item[3200863]["RewardItem"][1]["Attr"] = "0 1"
	tAugustRechargeAwards_Item[3200863]["RewardItem"][2] = {}
	tAugustRechargeAwards_Item[3200863]["RewardItem"][2]["Id"] = 3009002
	tAugustRechargeAwards_Item[3200863]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tAugustRechargeAwards_Item[3200863]["Log"] = "0,0,3200862,1,12000467,2,730007[3009002],1[3]"
	tAugustRechargeAwards_Item[3200863]["RewardNoNeedTip"] = 1


----------------------------------逻辑部分---------------------------------------------
function AugustRechargeAwards_OpenItem(nItemId)
---检测背包空间
	local nSpace = tAugustRechargeAwards_Item[nItemId]["Space"]
	if nSpace ~= nil then
		if not User_CheckLeftSpace(nSpace) then
			local sSpace = string.format(tAugustRechargeAwards_Text["NoSpace"] ,nSpace)
			Sys_MsgBox(sSpace)
			return
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if nItemId == 3200860 then  --随机给
			RewardTemplate_Random(tAugustRechargeAwards_Item[3200860],1)
		else
			RewardTemplate_Reward(tAugustRechargeAwards_Item[nItemId])
		--出提示
			User_TalkChannel2005(tAugustRechargeAwards_Text[nItemId])
		end
		User_EffectAdd("self",tAugustRechargeAwards_Item["Effect"])  --光效
	end
end
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3200858] = tItem[3200858] or {}
tItem[3200858]["Function"] = function(nItemId,sItemName)
	AugustRechargeAwards_OpenItem(nItemId)
end

for i = 3200859,3200863 do
	tItem[i] = tItem[3200858] or {}
end
