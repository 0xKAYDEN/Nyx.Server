------------------------------------------------------------------------------------
--Name：            190530[英文征服][活动脚本]充值返还（6.17-6.30）
--Creator:      林嘉鑫
--Created:     2019-05-30
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tRechargeRebate2019June_Item = {}
	-- ===BrightStarStone*5Pack
	-- ===索引: tRechargeRebate2019June_Item[3321831]
	-- ===删除: 3321831,1
	-- ===EMoneyLog: 350,22190
	tRechargeRebate2019June_Item[3321831] = {}
	tRechargeRebate2019June_Item[3321831]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321831]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321831]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321831]["DeleteItem"][1]["Id"] = 3321831 -- 【库】BrightStarStone*5Pack[属性:9]
	tRechargeRebate2019June_Item[3321831]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321831]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321831]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tRechargeRebate2019June_Item[3321831]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tRechargeRebate2019June_Item[3321831]["EmoneyLog"] = "350	22190	0	0	1	"
	tRechargeRebate2019June_Item[3321831]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321831]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321831]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321832] = {}
	-- ===RuneCrystal*2Pack
	-- ===索引: tRechargeRebate2019June_Item[3321832]
	-- ===删除: 3321832,1
	-- ===EMoneyLog: 350,22191
	tRechargeRebate2019June_Item[3321832]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321832]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321832]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321832]["DeleteItem"][1]["Id"] = 3321832 -- 【库】RuneCrystal*2Pack[属性:9]
	tRechargeRebate2019June_Item[3321832]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321832]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321832]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*2
	tRechargeRebate2019June_Item[3321832]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tRechargeRebate2019June_Item[3321832]["EmoneyLog"] = "350	22191	0	0	1	"
	tRechargeRebate2019June_Item[3321832]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321832]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321832]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321833] = {}
	-- ===RuneCrystal*3Pack
	-- ===索引: tRechargeRebate2019June_Item[3321833]
	-- ===删除: 3321833,1
	-- ===EMoneyLog: 350,22192
	tRechargeRebate2019June_Item[3321833]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321833]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321833]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321833]["DeleteItem"][1]["Id"] = 3321833 -- 【库】RuneCrystal*3Pack[属性:9]
	tRechargeRebate2019June_Item[3321833]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321833]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321833]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*3
	tRechargeRebate2019June_Item[3321833]["RewardItem"][1]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tRechargeRebate2019June_Item[3321833]["EmoneyLog"] = "350	22192	0	0	1	"
	tRechargeRebate2019June_Item[3321833]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321833]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321833]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321834] = {}
	-- ===MysticRuneStone*12Pack
	-- ===索引: tRechargeRebate2019June_Item[3321834]
	-- ===删除: 3321834,1
	-- ===EMoneyLog: 350,22193
	tRechargeRebate2019June_Item[3321834]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321834]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321834]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321834]["DeleteItem"][1]["Id"] = 3321834 -- 【库】MysticRuneStone*12Pack[属性:9]
	tRechargeRebate2019June_Item[3321834]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321834]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321834]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】赠良品神纹源晶*12
	tRechargeRebate2019June_Item[3321834]["RewardItem"][1]["Attr"] = "0 12" -- MysticRuneStone*12
	tRechargeRebate2019June_Item[3321834]["EmoneyLog"] = "350	22193	0	0	1	"
	tRechargeRebate2019June_Item[3321834]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321834]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321834]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321835] = {}
	-- ===DivineRuneStone*2Pack
	-- ===索引: tRechargeRebate2019June_Item[3321835]
	-- ===删除: 3321835,1
	-- ===EMoneyLog: 350,22194
	tRechargeRebate2019June_Item[3321835]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321835]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321835]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321835]["DeleteItem"][1]["Id"] = 3321835 -- 【库】DivineRuneStone*2Pack[属性:9]
	tRechargeRebate2019June_Item[3321835]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321835]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321835]["RewardItem"][1]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】赠优质神纹源晶*2
	tRechargeRebate2019June_Item[3321835]["RewardItem"][1]["Attr"] = "0 2" -- DivineRuneStone*2
	tRechargeRebate2019June_Item[3321835]["EmoneyLog"] = "350	22194	0	0	1	"
	tRechargeRebate2019June_Item[3321835]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321835]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321835]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321836] = {}
	-- ===+8Stone*2Pack
	-- ===索引: tRechargeRebate2019June_Item[3321836]
	-- ===删除: 3321836,1
	-- ===EMoneyLog: 350,22195
	tRechargeRebate2019June_Item[3321836]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321836]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321836]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321836]["DeleteItem"][1]["Id"] = 3321836 -- 【库】+8Stone*2Pack[属性:9]
	tRechargeRebate2019June_Item[3321836]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321836]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321836]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】赠品+8赤练石*2
	tRechargeRebate2019June_Item[3321836]["RewardItem"][1]["Attr"] = "0 2 3" -- +8Stone（赠）*2
	tRechargeRebate2019June_Item[3321836]["EmoneyLog"] = "350	22195	0	0	1	"
	tRechargeRebate2019June_Item[3321836]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321836]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321836]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321837] = {}
	-- ===UniversalRuneEssence*5000Pack
	-- ===索引: tRechargeRebate2019June_Item[3321837]
	-- ===删除: 3321837,1
	-- ===EMoneyLog: 350,22196
	tRechargeRebate2019June_Item[3321837]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321837]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321837]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321837]["DeleteItem"][1]["Id"] = 3321837 -- 【库】UniversalRuneEssence*5000Pack[属性:9]
	tRechargeRebate2019June_Item[3321837]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321837]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321837]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】赠万能神纹精粹*5000
	tRechargeRebate2019June_Item[3321837]["RewardItem"][1]["Attr"] = "0 5000 3" -- UniversalRuneEssence（赠）*5000
	tRechargeRebate2019June_Item[3321837]["EmoneyLog"] = "350	22196	0	0	1	"
	tRechargeRebate2019June_Item[3321837]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321837]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321837]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321838] = {}
	-- ===WonderLampPack
	-- ===索引: tRechargeRebate2019June_Item[3321838]
	-- ===删除: 3321838,1
	-- ===EMoneyLog: 350,22197
	tRechargeRebate2019June_Item[3321838]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321838]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321838]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321838]["DeleteItem"][1]["Id"] = 3321838 -- 【库】WonderLampPack[属性:9]
	tRechargeRebate2019June_Item[3321838]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321838]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321838]["RewardItem"][1]["Id"] = 2168665 -- 【库】WonderLamp[属性:9], 【表格】非赠佩饰WonderLamp*1
	tRechargeRebate2019June_Item[3321838]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- WonderLamp*1
	tRechargeRebate2019June_Item[3321838]["EmoneyLog"] = "350	22197	0	0	1	"
	tRechargeRebate2019June_Item[3321838]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321838]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321838]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeRebate2019June_Item[3321839] = {}
	-- ===Winner-take-allPack
	-- ===索引: tRechargeRebate2019June_Item[3321839]
	-- ===删除: 3321839,1
	-- ===EMoneyLog: 350,22198
	tRechargeRebate2019June_Item[3321839]["LogId"] = 12001441
	tRechargeRebate2019June_Item[3321839]["DeleteItem"] = {}
	tRechargeRebate2019June_Item[3321839]["DeleteItem"][1] = {}
	tRechargeRebate2019June_Item[3321839]["DeleteItem"][1]["Id"] = 3321839 -- 【库】Winner-take-allPack[属性:9]
	tRechargeRebate2019June_Item[3321839]["RewardItem"] = {}
	tRechargeRebate2019June_Item[3321839]["RewardItem"][1] = {}
	tRechargeRebate2019June_Item[3321839]["RewardItem"][1]["Id"] = 192635 -- 【库】Winner-take-all[属性:0], 【表格】赠360天时效神佑-1 Winner-take-all*1
	tRechargeRebate2019June_Item[3321839]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑Winner-take-all（赠）*1
	tRechargeRebate2019June_Item[3321839]["RewardItem"][2] = {}
	tRechargeRebate2019June_Item[3321839]["RewardItem"][2]["Id"] = 200471 -- 【库】LightningSnake[属性:0], 【表格】赠360天时效神佑-1 LightningSnake*1
	tRechargeRebate2019June_Item[3321839]["RewardItem"][2]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑LightningSnake（赠）*1
	tRechargeRebate2019June_Item[3321839]["RewardEMoneyMono"] = {}
	tRechargeRebate2019June_Item[3321839]["RewardEMoneyMono"]["Value"] = 100000 -- 天石（赠）, 【需求】10万赠品天石
	tRechargeRebate2019June_Item[3321839]["EmoneyLog"] = "350	22198	0	0	1	"
	tRechargeRebate2019June_Item[3321839]["RewardEffect"] = {}
	tRechargeRebate2019June_Item[3321839]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeRebate2019June_Item[3321839]["RewardEffect"]["Effect"] = "angelwing"


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3321831] = tItem[3321831] or {}
tItem[3321831]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tRechargeRebate2019June_Item[nItemId])
end
tItem[3321832] = tItem[3321831] or {}
tItem[3321833] = tItem[3321831] or {}
tItem[3321834] = tItem[3321831] or {}
tItem[3321835] = tItem[3321831] or {}
tItem[3321836] = tItem[3321831] or {}
tItem[3321837] = tItem[3321831] or {}
tItem[3321838] = tItem[3321831] or {}
tItem[3321839] = tItem[3321831] or {}
