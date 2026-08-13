------------------------------------------------------------------------------------
--Name：            190304[英文征服][活动脚本]充值返利（4.25-4.30）
--Creator:      林嘉鑫
--Created:     2019-03-04
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


--------------------------------------数据部分配置-------------------------------------
local tRechargeRebate2019April_Item = {}
	-- ===10CPsBag
	-- ===索引: 3320438
	-- ===删除: 3320438,1
	-- ===EMoneyLog: 350,22148
	tRechargeRebate2019April_Item[3320438] = {}
	tRechargeRebate2019April_Item[3320438]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320438]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320438]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320438]["DeleteItem"][1]["Id"] = 3320438 -- 【库】10CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320438]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320438]["RewardEMoney"]["Value"] = 10 -- 天石
	tRechargeRebate2019April_Item[3320438]["EmoneyLog"] = "350	22148	-10	-10	1	"
	tRechargeRebate2019April_Item[3320438]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320438]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320438]["RewardEffect"]["Effect"] = "angelwing"


	-- ===100CPsBag
	-- ===索引: 3320439
	-- ===删除: 3320439,1
	-- ===EMoneyLog: 350,22149
	tRechargeRebate2019April_Item[3320439] = {}
	tRechargeRebate2019April_Item[3320439]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320439]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320439]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320439]["DeleteItem"][1]["Id"] = 3320439 -- 【库】100CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320439]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320439]["RewardEMoney"]["Value"] = 100 -- 天石
	tRechargeRebate2019April_Item[3320439]["EmoneyLog"] = "350	22149	-100	-100	1	"
	tRechargeRebate2019April_Item[3320439]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320439]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320439]["RewardEffect"]["Effect"] = "angelwing"


	-- ===600CPsBag
	-- ===索引: 3320440
	-- ===删除: 3320440,1
	-- ===EMoneyLog: 350,22150
	tRechargeRebate2019April_Item[3320440] = {}
	tRechargeRebate2019April_Item[3320440]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320440]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320440]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320440]["DeleteItem"][1]["Id"] = 3320440 -- 【库】600CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320440]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320440]["RewardEMoney"]["Value"] = 600 -- 天石
	tRechargeRebate2019April_Item[3320440]["EmoneyLog"] = "350	22150	-600	-600	1	"
	tRechargeRebate2019April_Item[3320440]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320440]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320440]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1000CPsBag
	-- ===索引: 3320441
	-- ===删除: 3320441,1
	-- ===EMoneyLog: 350,22151
	tRechargeRebate2019April_Item[3320441] = {}
	tRechargeRebate2019April_Item[3320441]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320441]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320441]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320441]["DeleteItem"][1]["Id"] = 3320441 -- 【库】1000CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320441]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320441]["RewardEMoney"]["Value"] = 1000 -- 天石
	tRechargeRebate2019April_Item[3320441]["EmoneyLog"] = "350	22151	-1000	-1000	1	"
	tRechargeRebate2019April_Item[3320441]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320441]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320441]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4200CPsBag
	-- ===索引: 3320442
	-- ===删除: 3320442,1
	-- ===EMoneyLog: 350,22152
	tRechargeRebate2019April_Item[3320442] = {}
	tRechargeRebate2019April_Item[3320442]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320442]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320442]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320442]["DeleteItem"][1]["Id"] = 3320442 -- 【库】4200CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320442]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320442]["RewardEMoney"]["Value"] = 4200 -- 天石
	tRechargeRebate2019April_Item[3320442]["EmoneyLog"] = "350	22152	-4200	-4200	1	"
	tRechargeRebate2019April_Item[3320442]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320442]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320442]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4600CPsBag
	-- ===索引: 3320443
	-- ===删除: 3320443,1
	-- ===EMoneyLog: 350,22153
	tRechargeRebate2019April_Item[3320443] = {}
	tRechargeRebate2019April_Item[3320443]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320443]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320443]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320443]["DeleteItem"][1]["Id"] = 3320443 -- 【库】4600CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320443]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320443]["RewardEMoney"]["Value"] = 4600 -- 天石
	tRechargeRebate2019April_Item[3320443]["EmoneyLog"] = "350	22153	-4600	-4600	1	"
	tRechargeRebate2019April_Item[3320443]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320443]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320443]["RewardEffect"]["Effect"] = "angelwing"


	-- ===18000CPsBag
	-- ===索引: 3320444
	-- ===删除: 3320444,1
	-- ===EMoneyLog: 350,22154
	tRechargeRebate2019April_Item[3320444] = {}
	tRechargeRebate2019April_Item[3320444]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320444]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320444]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320444]["DeleteItem"][1]["Id"] = 3320444 -- 【库】18000CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320444]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320444]["RewardEMoney"]["Value"] = 18000 -- 天石
	tRechargeRebate2019April_Item[3320444]["EmoneyLog"] = "350	22154	-18000	-18000	1	"
	tRechargeRebate2019April_Item[3320444]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320444]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320444]["RewardEffect"]["Effect"] = "angelwing"


	-- ===35000CPsBag
	-- ===索引: 3320445
	-- ===删除: 3320445,1
	-- ===EMoneyLog: 350,22155
	tRechargeRebate2019April_Item[3320445] = {}
	tRechargeRebate2019April_Item[3320445]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320445]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320445]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320445]["DeleteItem"][1]["Id"] = 3320445 -- 【库】35000CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320445]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320445]["RewardEMoney"]["Value"] = 35000 -- 天石
	tRechargeRebate2019April_Item[3320445]["EmoneyLog"] = "350	22155	-35000	-35000	1	"
	tRechargeRebate2019April_Item[3320445]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320445]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320445]["RewardEffect"]["Effect"] = "angelwing"


	-- ===55000CPsBag
	-- ===索引: 3320446
	-- ===删除: 3320446,1
	-- ===EMoneyLog: 350,22156
	tRechargeRebate2019April_Item[3320446] = {}
	tRechargeRebate2019April_Item[3320446]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320446]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320446]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320446]["DeleteItem"][1]["Id"] = 3320446 -- 【库】55000CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320446]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320446]["RewardEMoney"]["Value"] = 55000 -- 天石
	tRechargeRebate2019April_Item[3320446]["EmoneyLog"] = "350	22156	-55000	-55000	1	"
	tRechargeRebate2019April_Item[3320446]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320446]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320446]["RewardEffect"]["Effect"] = "angelwing"


	-- ===110000CPsBag
	-- ===索引: 3320447
	-- ===删除: 3320447,1
	-- ===EMoneyLog: 350,22157
	tRechargeRebate2019April_Item[3320447] = {}
	tRechargeRebate2019April_Item[3320447]["LogId"] = 12001318
	tRechargeRebate2019April_Item[3320447]["DeleteItem"] = {}
	tRechargeRebate2019April_Item[3320447]["DeleteItem"][1] = {}
	tRechargeRebate2019April_Item[3320447]["DeleteItem"][1]["Id"] = 3320447 -- 【库】110000CPsBag[属性:9]
	tRechargeRebate2019April_Item[3320447]["RewardEMoney"] = {}
	tRechargeRebate2019April_Item[3320447]["RewardEMoney"]["Value"] = 110000 -- 天石
	tRechargeRebate2019April_Item[3320447]["EmoneyLog"] = "350	22157	-110000	-110000	1	"
	tRechargeRebate2019April_Item[3320447]["RewardEffect"] = {}
	tRechargeRebate2019April_Item[3320447]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019April_Item[3320447]["RewardEffect"]["Effect"] = "angelwing"




--------------------------------------逻辑部分配置-------------------------------------------

--------------------------------------模块部分配置-------------------------------------------
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3320438] = tItem[3320438] or {}
tItem[3320438]["Function"] = function(nItemId,sItemName)
	local nMax = G_User_MaxEmoney
	local nEmoney = Get_UserEMoney()
	local nAddEmoney = tRechargeRebate2019April_Item[nItemId]["RewardEMoney"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoney then
		User_TalkChannel2005(tRechargeRebate2019April_Text["Msg"]["MaxEMoneyTip"])
		return
	end
	RewardTemplate_UseItemAndMsg(tRechargeRebate2019April_Item[nItemId])
end
tItem[3320439] = tItem[3320438] or {}
tItem[3320440] = tItem[3320438] or {}
tItem[3320441] = tItem[3320438] or {}
tItem[3320442] = tItem[3320438] or {}
tItem[3320443] = tItem[3320438] or {}
tItem[3320444] = tItem[3320438] or {}
tItem[3320445] = tItem[3320438] or {}
tItem[3320446] = tItem[3320438] or {}
tItem[3320447] = tItem[3320438] or {}