------------------------------------------------------------------------------------
--Name：        190610[英文征服][活动脚本]灵兽养成记发奖礼包和action
--Creator:      耿力兀
--Created:     2019-06-10
------------------------------------------------------------------------------------
--任务需求：
--前缀：CrecimientoFondo_
--logID：12001381
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tCrecimientoFondo_Reward = {}
	-- ===BeastOwnerPack
	-- ===索引: tCrecimientoFondo_Reward[3312304]
	-- ===删除: 3312304,1
	tCrecimientoFondo_Reward[3312304] = {}
	tCrecimientoFondo_Reward[3312304]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312304]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312304]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312304]["DeleteItem"][1]["Id"] = 3312304 -- 【库】BeastOwnerPack[属性:9]
	tCrecimientoFondo_Reward[3312304]["RewardItem"] = {}
	tCrecimientoFondo_Reward[3312304]["RewardItem"][1] = {}
	tCrecimientoFondo_Reward[3312304]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tCrecimientoFondo_Reward[3312304]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tCrecimientoFondo_Reward[3312304]["RewardItem"][2] = {}
	tCrecimientoFondo_Reward[3312304]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tCrecimientoFondo_Reward[3312304]["RewardItem"][2]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5


	tCrecimientoFondo_Reward[3312305] = {}
	-- ===BeastVeteranPack
	-- ===索引: tCrecimientoFondo_Reward[3312305]
	-- ===删除: 3312305,1
	tCrecimientoFondo_Reward[3312305]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312305]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312305]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312305]["DeleteItem"][1]["Id"] = 3312305 -- 【库】BeastVeteranPack[属性:8]
	tCrecimientoFondo_Reward[3312305]["RewardItem"] = {}
	tCrecimientoFondo_Reward[3312305]["RewardItem"][1] = {}
	tCrecimientoFondo_Reward[3312305]["RewardItem"][1]["Id"] = 3009104 -- 【库】RedBodhiBean[属性:9], 【表格】血菩提
	tCrecimientoFondo_Reward[3312305]["RewardItem"][1]["Attr"] = "0 2" -- RedBodhiBean*2
	tCrecimientoFondo_Reward[3312305]["RewardItem"][2] = {}
	tCrecimientoFondo_Reward[3312305]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tCrecimientoFondo_Reward[3312305]["RewardItem"][2]["Attr"] = "0 150 3" -- UniversalRuneEssence*150


	tCrecimientoFondo_Reward[3312306] = {}
	-- ===BeastElitePack
	-- ===索引: tCrecimientoFondo_Reward[3312306]
	-- ===删除: 3312306,1
	tCrecimientoFondo_Reward[3312306]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312306]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312306]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312306]["DeleteItem"][1]["Id"] = 3312306 -- 【库】BeastElitePack[属性:8]
	tCrecimientoFondo_Reward[3312306]["RewardItem"] = {}
	tCrecimientoFondo_Reward[3312306]["RewardItem"][1] = {}
	tCrecimientoFondo_Reward[3312306]["RewardItem"][1]["Id"] = 3009103 -- 【库】SoulFruit[属性:9], 【表格】天灵果
	tCrecimientoFondo_Reward[3312306]["RewardItem"][1]["Attr"] = "0 3" -- SoulFruit*3
	tCrecimientoFondo_Reward[3312306]["RewardItem"][2] = {}
	tCrecimientoFondo_Reward[3312306]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tCrecimientoFondo_Reward[3312306]["RewardItem"][2]["Attr"] = "0 100 3" -- UniversalRuneEssence*100


	tCrecimientoFondo_Reward[3312307] = {}
	-- ===BeastMasterPack
	-- ===索引: tCrecimientoFondo_Reward[3312307]
	-- ===删除: 3312307,1
	tCrecimientoFondo_Reward[3312307]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312307]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312307]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312307]["DeleteItem"][1]["Id"] = 3312307 -- 【库】BeastMasterPack[属性:8]
	tCrecimientoFondo_Reward[3312307]["RewardItem"] = {}
	tCrecimientoFondo_Reward[3312307]["RewardItem"][1] = {}
	tCrecimientoFondo_Reward[3312307]["RewardItem"][1]["Id"] = 3009102 -- 【库】MoonFruit[属性:9], 【表格】辉月果
	tCrecimientoFondo_Reward[3312307]["RewardItem"][1]["Attr"] = "0 3" -- MoonFruit*3
	tCrecimientoFondo_Reward[3312307]["RewardItem"][2] = {}
	tCrecimientoFondo_Reward[3312307]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tCrecimientoFondo_Reward[3312307]["RewardItem"][2]["Attr"] = "0 70 3" -- UniversalRuneEssence*70


	tCrecimientoFondo_Reward[3312308] = {}
	-- ===488CPs（B）Bag
	-- ===索引: tCrecimientoFondo_Reward[3312308]
	-- ===删除: 3312308,1
	-- ===EMoneyLog:10000,0361
	tCrecimientoFondo_Reward[3312308]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312308]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312308]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312308]["DeleteItem"][1]["Id"] = 3312308 -- 【库】488CPs(B)Bag[属性:9]
	tCrecimientoFondo_Reward[3312308]["RewardEMoneyMono"] = {}
	tCrecimientoFondo_Reward[3312308]["RewardEMoneyMono"]["Value"] = 488 -- 天石（赠）, 【需求】488赠品天石
	tCrecimientoFondo_Reward[3312308]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	361"


	tCrecimientoFondo_Reward[3312309] = {}
	-- ===2888CPs（B）Bag
	-- ===索引: tCrecimientoFondo_Reward[3312309]
	-- ===删除: 3312309,1
	-- ===EMoneyLog:10000,0361
	tCrecimientoFondo_Reward[3312309]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312309]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312309]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312309]["DeleteItem"][1]["Id"] = 3312309 -- 【库】2888CPs(B)Bag[属性:9]
	tCrecimientoFondo_Reward[3312309]["RewardEMoneyMono"] = {}
	tCrecimientoFondo_Reward[3312309]["RewardEMoneyMono"]["Value"] = 2888 -- 天石（赠）, 【需求】2888赠品天石
	tCrecimientoFondo_Reward[3312309]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	361"


	tCrecimientoFondo_Reward[3312310] = {}
	-- ===4888CPs（B）Bag
	-- ===索引: tCrecimientoFondo_Reward[3312310]
	-- ===删除: 3312310,1
	-- ===EMoneyLog:10000,0361
	tCrecimientoFondo_Reward[3312310]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312310]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312310]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312310]["DeleteItem"][1]["Id"] = 3312310 -- 【库】4888CPs(B)Bag[属性:9]
	tCrecimientoFondo_Reward[3312310]["RewardEMoneyMono"] = {}
	tCrecimientoFondo_Reward[3312310]["RewardEMoneyMono"]["Value"] = 4888 -- 天石（赠）, 【需求】4888赠品天石
	tCrecimientoFondo_Reward[3312310]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	361"


	tCrecimientoFondo_Reward[3312311] = {}
	-- ===6888CPs（B）Bag
	-- ===索引: tCrecimientoFondo_Reward[3312311]
	-- ===删除: 3312311,1
	-- ===EMoneyLog:10000,0361
	tCrecimientoFondo_Reward[3312311]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312311]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312311]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312311]["DeleteItem"][1]["Id"] = 3312311 -- 【库】6888CPs(B)Bag[属性:9]
	tCrecimientoFondo_Reward[3312311]["RewardEMoneyMono"] = {}
	tCrecimientoFondo_Reward[3312311]["RewardEMoneyMono"]["Value"] = 6888 -- 天石（赠）, 【需求】6888赠品天石
	tCrecimientoFondo_Reward[3312311]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	361"


	tCrecimientoFondo_Reward[3312312] = {}
	-- ===7888CPs（B）Bag
	-- ===索引: tCrecimientoFondo_Reward[3312312]
	-- ===删除: 3312312,1
	-- ===EMoneyLog:10000,0361
	tCrecimientoFondo_Reward[3312312]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312312]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312312]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312312]["DeleteItem"][1]["Id"] = 3312312 -- 【库】7888CPs(B)Bag[属性:9]
	tCrecimientoFondo_Reward[3312312]["RewardEMoneyMono"] = {}
	tCrecimientoFondo_Reward[3312312]["RewardEMoneyMono"]["Value"] = 7888 -- 天石（赠）, 【需求】7888赠品天石
	tCrecimientoFondo_Reward[3312312]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	361"


	tCrecimientoFondo_Reward[3312313] = {}
	-- ===10888CPs（B）Bag
	-- ===索引: tCrecimientoFondo_Reward[3312313]
	-- ===删除: 3312313,1
	-- ===EMoneyLog:10000,361
	tCrecimientoFondo_Reward[3312313]["LogId"] = 12001381
	tCrecimientoFondo_Reward[3312313]["DeleteItem"] = {}
	tCrecimientoFondo_Reward[3312313]["DeleteItem"][1] = {}
	tCrecimientoFondo_Reward[3312313]["DeleteItem"][1]["Id"] = 3312313 -- 【库】10888CPs(B)Bag[属性:9]
	tCrecimientoFondo_Reward[3312313]["RewardEMoneyMono"] = {}
	tCrecimientoFondo_Reward[3312313]["RewardEMoneyMono"]["Value"] = 10888 -- 天石（赠）, 【需求】10888赠品天石
	tCrecimientoFondo_Reward[3312313]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	361"

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312304] = tItem[3312304] or {}
tItem[3312304]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tCrecimientoFondo_Reward[nItemId])
end

tItem[3312305] = tItem[3312304] or {}
tItem[3312306] = tItem[3312304] or {}
tItem[3312307] = tItem[3312304] or {}

tItem[3312308] = tItem[3312308] or {}
tItem[3312308]["Function"] = function(nItemId,sItemName)
	-- 判断赠点天石上限
	local nMaxRewardMonoEMoney = tCrecimientoFondo_Reward[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tCrecimientoFondo_Text["Msg"])
		return 
	end
	RewardTemplate_UseItem(tCrecimientoFondo_Reward[nItemId])
end
tItem[3312309] = tItem[3312308] or {}
tItem[3312310] = tItem[3312308] or {}
tItem[3312311] = tItem[3312308] or {}
tItem[3312312] = tItem[3312308] or {}
tItem[3312313] = tItem[3312308] or {}