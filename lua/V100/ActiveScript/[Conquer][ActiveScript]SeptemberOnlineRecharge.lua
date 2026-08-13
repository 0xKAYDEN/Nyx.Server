------------------------------------------------------------------------------------
--Name：        190822[英文征服][活动脚本]9月线上充值返天石
--Creator:      冯子鑫

--Created:     2019-08-22
------------------------------------------------------------------------------------
--任务需求：
--前缀：SeptemberOnlineRecharge_
--logId:12001581
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tSeptemberOnlineRecharge_Reward = {}
	-- ===20CPsPack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313580]
	-- ===删除: 3313580,1
	-- ===NewEMoneyLog: 10000,738
	tSeptemberOnlineRecharge_Reward[3313580] = {}
	tSeptemberOnlineRecharge_Reward[3313580]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313580]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313580]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313580]["DeleteItem"][1]["Id"] = 3313580 -- 【库】20CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313580]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313580]["RewardEMoney"]["Value"] = 20 -- 天石, 【需求】20天石
	tSeptemberOnlineRecharge_Reward[3313580]["RewardEMoney"]["NewEmoneyLog"] = "10000	738"
	tSeptemberOnlineRecharge_Reward[3313580]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313580]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313580]["RewardEffect"]["Effect"] = "angelwing"


	tSeptemberOnlineRecharge_Reward[3313581] = {}
	-- ===60CPs（B）RebatePack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313581]
	-- ===删除: 3313581,1
	-- ===NewEMoneyLog: 10000,739
	tSeptemberOnlineRecharge_Reward[3313581]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313581]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313581]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313581]["DeleteItem"][1]["Id"] = 3313581 -- 【库】60CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313581]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313581]["RewardEMoney"]["Value"] = 60 -- 天石, 【需求】60天石
	tSeptemberOnlineRecharge_Reward[3313581]["RewardEMoney"]["NewEmoneyLog"] = "10000	739"
	tSeptemberOnlineRecharge_Reward[3313581]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313581]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313581]["RewardEffect"]["Effect"] = "angelwing"


	tSeptemberOnlineRecharge_Reward[3313582] = {}
	-- ===125CPs（B）RebatePack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313582]
	-- ===删除: 3313582,1
	-- ===NewEMoneyLog: 10000,740
	tSeptemberOnlineRecharge_Reward[3313582]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313582]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313582]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313582]["DeleteItem"][1]["Id"] = 3313582 -- 【库】125CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313582]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313582]["RewardEMoney"]["Value"] = 125 -- 天石, 【需求】125天石
	tSeptemberOnlineRecharge_Reward[3313582]["RewardEMoney"]["NewEmoneyLog"] = "10000	740"
	tSeptemberOnlineRecharge_Reward[3313582]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313582]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313582]["RewardEffect"]["Effect"] = "angelwing"


	tSeptemberOnlineRecharge_Reward[3313583] = {}
	-- ===320CPsPack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313583]
	-- ===删除: 3313583,1
	-- ===NewEMoneyLog: 10000,741
	tSeptemberOnlineRecharge_Reward[3313583]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313583]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313583]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313583]["DeleteItem"][1]["Id"] = 3313583 -- 【库】320CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313583]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313583]["RewardEMoney"]["Value"] = 320 -- 天石, 【需求】320天石
	tSeptemberOnlineRecharge_Reward[3313583]["RewardEMoney"]["NewEmoneyLog"] = "10000	741"
	tSeptemberOnlineRecharge_Reward[3313583]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313583]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313583]["RewardEffect"]["Effect"] = "angelwing"


	tSeptemberOnlineRecharge_Reward[3313584] = {}
	-- ===700CPsPack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313584]
	-- ===删除: 3313584,1
	-- ===NewEMoneyLog: 10000,742
	tSeptemberOnlineRecharge_Reward[3313584]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313584]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313584]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313584]["DeleteItem"][1]["Id"] = 3313584 -- 【库】700CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313584]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313584]["RewardEMoney"]["Value"] = 700 -- 天石, 【需求】700天石
	tSeptemberOnlineRecharge_Reward[3313584]["RewardEMoney"]["NewEmoneyLog"] = "10000	742"
	tSeptemberOnlineRecharge_Reward[3313584]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313584]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313584]["RewardEffect"]["Effect"] = "angelwing"


	tSeptemberOnlineRecharge_Reward[3313585] = {}
	-- ===1599CPsPack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313585]
	-- ===删除: 3313585,1
	-- ===NewEMoneyLog: 10000,743
	tSeptemberOnlineRecharge_Reward[3313585]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313585]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313585]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313585]["DeleteItem"][1]["Id"] = 3313585 -- 【库】1599CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313585]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313585]["RewardEMoney"]["Value"] = 1599 -- 天石, 【需求】1599天石
	tSeptemberOnlineRecharge_Reward[3313585]["RewardEMoney"]["NewEmoneyLog"] = "10000	743"
	tSeptemberOnlineRecharge_Reward[3313585]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313585]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313585]["RewardEffect"]["Effect"] = "angelwing"


	tSeptemberOnlineRecharge_Reward[3313586] = {}
	-- ===8999CPsPack
	-- ===索引: tSeptemberOnlineRecharge_Reward[3313586]
	-- ===删除: 3313586,1
	-- ===NewEMoneyLog: 10000,744
	tSeptemberOnlineRecharge_Reward[3313586]["LogId"] = 12001581
	tSeptemberOnlineRecharge_Reward[3313586]["DeleteItem"] = {}
	tSeptemberOnlineRecharge_Reward[3313586]["DeleteItem"][1] = {}
	tSeptemberOnlineRecharge_Reward[3313586]["DeleteItem"][1]["Id"] = 3313586 -- 【库】8999CPs(B)Pack[属性:9]
	tSeptemberOnlineRecharge_Reward[3313586]["RewardEMoney"] = {}
	tSeptemberOnlineRecharge_Reward[3313586]["RewardEMoney"]["Value"] = 8999 -- 天石, 【需求】8999天石
	tSeptemberOnlineRecharge_Reward[3313586]["RewardEMoney"]["NewEmoneyLog"] = "10000	744"
	tSeptemberOnlineRecharge_Reward[3313586]["RewardEffect"] = {}
	tSeptemberOnlineRecharge_Reward[3313586]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSeptemberOnlineRecharge_Reward[3313586]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
function SeptemberOnlineRecharge_Reward(nItemId)
	local nMaxRewardEMoney = tSeptemberOnlineRecharge_Reward[nItemId]["RewardEMoney"]["Value"]
	if Get_UserEMoney() + nMaxRewardEMoney > G_User_MaxEmoney then
		Sys_MsgBox(tAugustRebate_Text["MoneyMax"])
		return 
	end
	RewardTemplate_UseItem(tSeptemberOnlineRecharge_Reward[nItemId])
end 

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3313580] = tItem[3313580] or {}
tItem[3313581] = tItem[3313580] or {}
tItem[3313582] = tItem[3313580] or {}
tItem[3313583] = tItem[3313580] or {}
tItem[3313584] = tItem[3313580] or {}
tItem[3313585] = tItem[3313580] or {}
tItem[3313586] = tItem[3313580] or {}
tItem[3313580]["Function"] = function(nItemId)
	SeptemberOnlineRecharge_Reward(nItemId)
end

