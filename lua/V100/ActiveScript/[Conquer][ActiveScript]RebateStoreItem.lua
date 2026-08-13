------------------------------------------------------------------------------------
--Name:		190726[简体征服][活动脚本]返利积分商城
--Purpose:	返利积分商城
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------
--前缀RebateStoreItem_
--logid:12001535
------------------------------------------------------------------------------------
local tRebateStoreItem_Cont = {}
	tRebateStoreItem_Cont["GiftItemId"] = 723694
	-- 新增 等级要求
	tRebateStoreItem_Cont["nLevel"] = 70
	tRebateStoreItem_Cont["nMetempsychosis"] = 0
-- local tRebateStoreItem_Contribution = {}
-- tRebateStoreItem_Contribution[3322760] = 3000000
-- tRebateStoreItem_Contribution[3322761] = 6000000
-- tRebateStoreItem_Contribution[3322762] = 10000000

local tRebateStoreItem_RewandItem = {}
	-- 300万贡献勋章
	tRebateStoreItem_RewandItem[3322760] = {}
	tRebateStoreItem_RewandItem[3322760]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322760]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322760]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322760]["DeleteItem"][1]["Id"] = 3322760 -- 【库】300万贡献勋章[属性:8]
	tRebateStoreItem_RewandItem[3322760]["RewardDonate"] = {}
	tRebateStoreItem_RewandItem[3322760]["RewardDonate"]["Value"] = 3000000
	tRebateStoreItem_RewandItem[3322760]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322760]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322760]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 600万贡献勋章
	tRebateStoreItem_RewandItem[3322761] = {}
	tRebateStoreItem_RewandItem[3322761]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322761]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322761]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322761]["DeleteItem"][1]["Id"] = 3322761 -- 【库】600万贡献勋章[属性:8]
	tRebateStoreItem_RewandItem[3322761]["RewardDonate"] = {}
	tRebateStoreItem_RewandItem[3322761]["RewardDonate"]["Value"] = 6000000
	tRebateStoreItem_RewandItem[3322761]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322761]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322761]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 1000万贡献勋章
	tRebateStoreItem_RewandItem[3322762] = {}
	tRebateStoreItem_RewandItem[3322762]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322762]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322762]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322762]["DeleteItem"][1]["Id"] = 3322762 -- 【库】1000万贡献勋章[属性:8]
	tRebateStoreItem_RewandItem[3322762]["RewardDonate"] = {}
	tRebateStoreItem_RewandItem[3322762]["RewardDonate"]["Value"] = 10000000
	tRebateStoreItem_RewandItem[3322762]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322762]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322762]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 10000万贡献勋章
	tRebateStoreItem_RewandItem[3322813] = {}
	tRebateStoreItem_RewandItem[3322813]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322813]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322813]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322813]["DeleteItem"][1]["Id"] = 3322813 -- 【库】10000万贡献勋章[属性:8]
	tRebateStoreItem_RewandItem[3322813]["RewardDonate"] = {}
	tRebateStoreItem_RewandItem[3322813]["RewardDonate"]["Value"] = 100000000
	tRebateStoreItem_RewandItem[3322813]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322813]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322813]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 50亿爵位金
	tRebateStoreItem_RewandItem[3322937] = {}
	tRebateStoreItem_RewandItem[3322937]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322937]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322937]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322937]["DeleteItem"][1]["Id"] = 3322937 -- 【库】50亿爵位金[属性:8]
	tRebateStoreItem_RewandItem[3322937]["RewardDonate"] = {}
	tRebateStoreItem_RewandItem[3322937]["RewardDonate"]["Value"] = 5000000000
	tRebateStoreItem_RewandItem[3322937]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322937]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322937]["RewardEffect"]["Effect"] = "angelwing"

	-- 10亿爵位金
	tRebateStoreItem_RewandItem[3322944] = {}
	tRebateStoreItem_RewandItem[3322944]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322944]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322944]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322944]["DeleteItem"][1]["Id"] = 3322944 -- 【库】10亿爵位金[属性:8]
	tRebateStoreItem_RewandItem[3322944]["RewardDonate"] = {}
	tRebateStoreItem_RewandItem[3322944]["RewardDonate"]["Value"] = 1000000000
	tRebateStoreItem_RewandItem[3322944]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322944]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322944]["RewardEffect"]["Effect"] = "angelwing"

	-- ===神纹精粹*10礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322763]
	-- ===删除: 3322763,1
	-- ===
	tRebateStoreItem_RewandItem[3322763] = {}
	tRebateStoreItem_RewandItem[3322763]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322763]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322763]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322763]["DeleteItem"][1]["Id"] = 3322763 -- 【库】万能神纹精粹包[属性:8]
	tRebateStoreItem_RewandItem[3322763]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322763]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322763]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tRebateStoreItem_RewandItem[3322763]["RewardItem"][1]["Attr"] = "0 10" -- 万能神纹精粹*10
	tRebateStoreItem_RewandItem[3322763]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322763]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322763]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322764] = {}
	-- ===神纹精粹*100礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322764]
	-- ===删除: 3322764,1
	-- ===
	tRebateStoreItem_RewandItem[3322764]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322764]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322764]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322764]["DeleteItem"][1]["Id"] = 3322764 -- 【库】万能神纹精粹精装包[属性:8]
	tRebateStoreItem_RewandItem[3322764]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322764]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322764]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tRebateStoreItem_RewandItem[3322764]["RewardItem"][1]["Attr"] = "0 100" -- 万能神纹精粹*100
	tRebateStoreItem_RewandItem[3322764]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322764]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322764]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322765] = {}
	-- ===神纹精粹*1000礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322765]
	-- ===删除: 3322765,1
	-- ===
	tRebateStoreItem_RewandItem[3322765]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322765]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322765]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322765]["DeleteItem"][1]["Id"] = 3322765 -- 【库】万能神纹精粹豪华包[属性:8]
	tRebateStoreItem_RewandItem[3322765]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322765]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322765]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tRebateStoreItem_RewandItem[3322765]["RewardItem"][1]["Attr"] = "0 1000" -- 万能神纹精粹*1000
	tRebateStoreItem_RewandItem[3322765]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322765]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322765]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322766] = {}
	-- ===明亮星陨石（时效）
	-- ===索引: tRebateStoreItem_RewandItem[3322766]
	-- ===删除: 3322766,1
	-- ===
	tRebateStoreItem_RewandItem[3322766]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322766]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322766]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322766]["DeleteItem"][1]["Id"] = 3322766 -- 【库】明亮星陨石礼包[属性:8]
	tRebateStoreItem_RewandItem[3322766]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322766]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322766]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tRebateStoreItem_RewandItem[3322766]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tRebateStoreItem_RewandItem[3322766]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322766]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322766]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322767] = {}
	-- ===晶莹星陨石（时效）
	-- ===索引: tRebateStoreItem_RewandItem[3322767]
	-- ===删除: 3322767,1
	-- ===
	tRebateStoreItem_RewandItem[3322767]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322767]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322767]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322767]["DeleteItem"][1]["Id"] = 3322767 -- 【库】晶莹星陨石礼包[属性:11]
	tRebateStoreItem_RewandItem[3322767]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322767]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322767]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tRebateStoreItem_RewandItem[3322767]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tRebateStoreItem_RewandItem[3322767]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322767]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322767]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322768] = {}
	-- ===璀璨星陨石（时效）
	-- ===索引: tRebateStoreItem_RewandItem[3322768]
	-- ===删除: 3322768,1
	-- ===
	tRebateStoreItem_RewandItem[3322768]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322768]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322768]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322768]["DeleteItem"][1]["Id"] = 3322768 -- 【库】璀璨星陨石礼包[属性:11]
	tRebateStoreItem_RewandItem[3322768]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322768]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322768]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tRebateStoreItem_RewandItem[3322768]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tRebateStoreItem_RewandItem[3322768]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322768]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322768]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322769] = {}
	-- ===神兵灵魄*10礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322769]
	-- ===删除: 3322769,1
	-- ===
	tRebateStoreItem_RewandItem[3322769]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322769]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322769]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322769]["DeleteItem"][1]["Id"] = 3322769 -- 【库】神兵灵魄大礼包[属性:8]
	tRebateStoreItem_RewandItem[3322769]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322769]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322769]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tRebateStoreItem_RewandItem[3322769]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tRebateStoreItem_RewandItem[3322769]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322769]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322769]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322770] = {}
	-- ===神兵灵魄*100礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322770]
	-- ===删除: 3322770,1
	-- ===
	tRebateStoreItem_RewandItem[3322770]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322770]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322770]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322770]["DeleteItem"][1]["Id"] = 3322770 -- 【库】神兵灵魄精装包[属性:8]
	tRebateStoreItem_RewandItem[3322770]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322770]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322770]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tRebateStoreItem_RewandItem[3322770]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tRebateStoreItem_RewandItem[3322770]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322770]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322770]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322771] = {}
	-- ===神兵灵魄*1000礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322771]
	-- ===删除: 3322771,1
	-- ===
	tRebateStoreItem_RewandItem[3322771]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322771]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322771]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322771]["DeleteItem"][1]["Id"] = 3322771 -- 【库】神兵灵魄豪华包[属性:8]
	tRebateStoreItem_RewandItem[3322771]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322771]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322771]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tRebateStoreItem_RewandItem[3322771]["RewardItem"][1]["Attr"] = "0 1000" -- 神兵灵魄*1000
	tRebateStoreItem_RewandItem[3322771]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322771]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322771]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322772] = {}
	-- ===炼魂石*10礼包
	-- ===索引: tRebateStoreItem_RewandItem[3322772]
	-- ===删除: 3322772,1
	-- ===
	tRebateStoreItem_RewandItem[3322772]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322772]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322772]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322772]["DeleteItem"][1]["Id"] = 3322772 -- 【库】炼魂石大礼包[属性:8]
	tRebateStoreItem_RewandItem[3322772]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322772]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322772]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石
	tRebateStoreItem_RewandItem[3322772]["RewardItem"][1]["Attr"] = "0 10" -- 炼魂石*10
	tRebateStoreItem_RewandItem[3322772]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322772]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322772]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322776] = {}
	-- ===天火麒麟坐骑外套包
	-- ===索引: tRebateStoreItem_RewandItem[3322776]
	-- ===删除: 3322776,1
	-- ===
	tRebateStoreItem_RewandItem[3322776]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322776]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322776]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322776]["DeleteItem"][1]["Id"] = 3322776 -- 【库】天火麒麟坐骑外套包[属性:9]
	tRebateStoreItem_RewandItem[3322776]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322776]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322776]["RewardItem"][1]["Id"] = 200654 -- 天火麒麟[200654][属性:0][叠加:0][金币:0], 【表格】天火麒麟
	tRebateStoreItem_RewandItem[3322776]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑天火麒麟*1
	tRebateStoreItem_RewandItem[3322776]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322776]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322776]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322777] = {}
	-- ===天火神麟?曜日外套包
	-- ===索引: tRebateStoreItem_RewandItem[3322777]
	-- ===删除: 3322777,1
	-- ===
	tRebateStoreItem_RewandItem[3322777]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322777]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322777]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322777]["DeleteItem"][1]["Id"] = 3322777 -- 【库】天火神麟·曜日外套包[属性:9]
	tRebateStoreItem_RewandItem[3322777]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322777]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322777]["RewardItem"][1]["Id"] = 200655 -- 天火神麟?曜日[200655][属性:0][叠加:0][金币:0], 【表格】天火神麟?曜日
	tRebateStoreItem_RewandItem[3322777]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑天火神麟?曜日*1
	tRebateStoreItem_RewandItem[3322777]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322777]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322777]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3322811] = {}
	-- ===天八卦龙纹佩礼盒
	-- ===索引: tRebateStoreItem_RewandItem[3322811][1]
	-- ===删除: 33322811,1
	-- ===
	tRebateStoreItem_RewandItem[3322811]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322811]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322811]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322811]["DeleteItem"][1]["Id"] = 3322811 -- 【库】 3322811 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3322811]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322811]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322811]["RewardItem"][1]["Id"] = 2169035 -- 八卦龙纹佩【贵族专属】[2169035][属性:9][叠加:0][金币:1], 【表格】八卦龙纹佩【贵族专属】
	tRebateStoreItem_RewandItem[3322811]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的八卦龙纹佩【贵族专属】*1
	tRebateStoreItem_RewandItem[3322811]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322811]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322811]["RewardEffect"]["Effect"] = "angelwing"

	
	tRebateStoreItem_RewandItem[3323034] = {}
	-- ===1000000气力值礼包
	-- ===索引: tRebateStoreItem_RewandItem[3323034]
	-- ===删除: 3323034,1
	-- ===
	tRebateStoreItem_RewandItem[3323034]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323034]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323034]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323034]["DeleteItem"][1]["Id"] = 3323034 -- 【库】1KKChiPtsPack[属性:9]
	tRebateStoreItem_RewandItem[3323034]["RewardStrengthValue"] = {}
	tRebateStoreItem_RewandItem[3323034]["RewardStrengthValue"]["Value"] = 1000000 -- 气力值, 【需求】1000000气力值
	tRebateStoreItem_RewandItem[3323034]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323034]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3323036] = {}
	-- ===100个万能神纹精粹（赠）礼包
	-- ===索引: tRebateStoreItem_RewandItem[3323036]
	-- ===删除: 3323036,1
	-- ===
	tRebateStoreItem_RewandItem[3323036]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323036]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323036]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323036]["DeleteItem"][1]["Id"] = 3323036 -- 【库】100UniversalRuneEssences(B)Pack[属性:9]
	tRebateStoreItem_RewandItem[3323036]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323036]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323036]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】100个万能神纹精粹
	tRebateStoreItem_RewandItem[3323036]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tRebateStoreItem_RewandItem[3323036]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323036]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323036]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323037] = {}
	-- ===1000个万能神纹精粹（赠）礼包
	-- ===索引: tRebateStoreItem_RewandItem[3323037]
	-- ===删除: 3323037,1
	-- ===
	tRebateStoreItem_RewandItem[3323037]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323037]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323037]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323037]["DeleteItem"][1]["Id"] = 3323037 -- 【库】1000UniversalRuneEssences(B)Pack[属性:9]
	tRebateStoreItem_RewandItem[3323037]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323037]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323037]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】1000个万能神纹精粹
	tRebateStoreItem_RewandItem[3323037]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tRebateStoreItem_RewandItem[3323037]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323037]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323037]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323038] = {}
	-- ===15天时效天八卦龙纹佩礼盒
	-- ===索引: tRebateStoreItem_RewandItem[3323038]
	-- ===删除: 3323038,1
	-- ===
	tRebateStoreItem_RewandItem[3323038]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323038]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323038]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323038]["DeleteItem"][1]["Id"] = 3323038 -- 【库】15DNobleAccessory[属性:11]
	tRebateStoreItem_RewandItem[3323038]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323038]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323038]["RewardItem"][1]["Id"] = 2169035 -- UniversalDragonJade(Noble)[2169035][属性:9][叠加:0][金币:0], 【表格】八卦龙纹佩【贵族专属】
	tRebateStoreItem_RewandItem[3323038]["RewardItem"][1]["Attr"] = "0 1 0 21600 1 0 0 1" -- 15天时效(激活)的UniversalDragonJade(Noble)*1
	tRebateStoreItem_RewandItem[3323038]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323038]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323038]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323039] = {}
	-- ===30天时效御天神龙礼盒【逍遥版】
	-- ===索引: tRebateStoreItem_RewandItem[3323039]
	-- ===删除: 3323039,1
	-- ===
	tRebateStoreItem_RewandItem[3323039]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323039]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323039]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323039]["DeleteItem"][1]["Id"] = 3323039 -- 【库】30DCelestialDragon(Freedom)Box[属性:8]
	tRebateStoreItem_RewandItem[3323039]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323039]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323039]["RewardItem"][1]["Id"] = 205000 -- CelestialDragon(Freedom)[205000][属性:0][叠加:0][金币:0], 【表格】御天神龙【逍遥版】
	tRebateStoreItem_RewandItem[3323039]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialDragon(Freedom)*1
	tRebateStoreItem_RewandItem[3323039]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323039]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323039]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3323045] = {}
	-- ===蜜桃之恋?唯一
	-- ===索引: tRebateStoreItem_RewandItem[3323045]
	-- ===删除: 3323045,1
	-- ===
	tRebateStoreItem_RewandItem[3323045]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323045]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323045]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323045]["DeleteItem"][1]["Id"] = 3323045 -- 【库】SweetnessofLove(Eternal)Pack[属性:9]
	tRebateStoreItem_RewandItem[3323045]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323045]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323045]["RewardItem"][1]["Id"] = 195795 -- SweetnessofLove(Eternal)[195795][属性:0][叠加:0][金币:0], 【表格】蜜桃之恋?唯一
	tRebateStoreItem_RewandItem[3323045]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SweetnessofLove(Eternal)*1
	tRebateStoreItem_RewandItem[3323045]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323045]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323045]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3323047] = {}
	-- ===SirenSongPack
	-- ===索引: tRebateStoreItem_RewandItem[3323047][1]
	-- ===删除: 3323047,1
	-- ===
	tRebateStoreItem_RewandItem[3323047]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323047]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323047]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323047]["DeleteItem"][1]["Id"] = 3323047 -- SirenSongPack[属性:11]
	tRebateStoreItem_RewandItem[3323047]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323047]["RewardTitle"]["TitleType"] = 6017 -- 【库】MasterofJustice, 【表格】SirenSong
	tRebateStoreItem_RewandItem[3323047]["RewardTitle"]["TitleId"] = 6017
	tRebateStoreItem_RewandItem[3323047]["RewardTitle"]["SaveTime"] = 0 -- 7天时效的[称号]:SirenSong, 【需求】SirenSong
	tRebateStoreItem_RewandItem[3323047]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323047]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323047]["RewardEffect"]["Effect"] = "angelwing"

	
	tRebateStoreItem_RewandItem[3322818] = {}
	-- ===30天神纹随机包
	-- ===索引: tRebateStoreItem_RewandItem[3322818][1]
	-- ===删除:3322818,1
	-- ===
	tRebateStoreItem_RewandItem[3322818][1] = {}
	tRebateStoreItem_RewandItem[3322818][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322818][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1]["DeleteItem"][1]["Id"] = 3322818 -- 【库】30天随机+9黄色神纹宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322818][1]["LogId"] = 12001535
	-- 破玄元（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][1]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的破玄元(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][2] = {}
	tRebateStoreItem_RewandItem[3322818][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][2]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的撼星诀(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][3] = {}
	tRebateStoreItem_RewandItem[3322818][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][3]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的血回元(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][4] = {}
	tRebateStoreItem_RewandItem[3322818][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][4]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的万物生(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][5] = {}
	tRebateStoreItem_RewandItem[3322818][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][5]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的无懈可击(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][6] = {}
	tRebateStoreItem_RewandItem[3322818][1][6]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][6]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的狂暴克星(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][7] = {}
	tRebateStoreItem_RewandItem[3322818][1][7]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][7]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的风卷残云(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][8] = {}
	tRebateStoreItem_RewandItem[3322818][1][8]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][8]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的回灵术(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][9] = {}
	tRebateStoreItem_RewandItem[3322818][1][9]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][9]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的杀破狼(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][10] = {}
	tRebateStoreItem_RewandItem[3322818][1][10]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][10]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的追命(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][11] = {}
	tRebateStoreItem_RewandItem[3322818][1][11]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][11]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的奔雷不息(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][12] = {}
	tRebateStoreItem_RewandItem[3322818][1][12]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][12]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的安魂定魄(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][13] = {}
	tRebateStoreItem_RewandItem[3322818][1][13]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][13]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的夺魂(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][14] = {}
	tRebateStoreItem_RewandItem[3322818][1][14]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][14]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的狂暴净化(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][15] = {}
	tRebateStoreItem_RewandItem[3322818][1][15]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][15]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的怒海狂涛(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][16] = {}
	tRebateStoreItem_RewandItem[3322818][1][16]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][16]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的饮血盛宴(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][1][17] = {}
	tRebateStoreItem_RewandItem[3322818][1][17]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][17]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的生命汲取(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][18] = {}
	tRebateStoreItem_RewandItem[3322818][1][18]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][18]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的策马扬鞭(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][19] = {}
	tRebateStoreItem_RewandItem[3322818][1][19]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][19]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的攻城掠地(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][1][20] = {}
	tRebateStoreItem_RewandItem[3322818][1][20]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][20]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的神罗天征(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][1][21] = {}
	tRebateStoreItem_RewandItem[3322818][1][21]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][21]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的爆炎诀(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][1][22] = {}
	tRebateStoreItem_RewandItem[3322818][1][22]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][22]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的清心诀(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][1][23] = {}
	tRebateStoreItem_RewandItem[3322818][1][23]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][23]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的祭灵诀(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 0.52%
	tRebateStoreItem_RewandItem[3322818][1][24] = {}
	tRebateStoreItem_RewandItem[3322818][1][24]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][24]["ItemChance"] = 52
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的横扫千军(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.70%
	tRebateStoreItem_RewandItem[3322818][1][25] = {}
	tRebateStoreItem_RewandItem[3322818][1][25]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][25]["ItemChance"] = 270
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的涅槃重生(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.50%
	tRebateStoreItem_RewandItem[3322818][1][26] = {}
	tRebateStoreItem_RewandItem[3322818][1][26]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][26]["ItemChance"] = 50
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的锋芒毕露(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.70%
	tRebateStoreItem_RewandItem[3322818][1][27] = {}
	tRebateStoreItem_RewandItem[3322818][1][27]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][27]["ItemChance"] = 270
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的魂兮归来(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.50%
	tRebateStoreItem_RewandItem[3322818][1][28] = {}
	tRebateStoreItem_RewandItem[3322818][1][28]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][28]["ItemChance"] = 50
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的玄武护体(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][29] = {}
	tRebateStoreItem_RewandItem[3322818][1][29]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][29]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的天衣无缝(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][30] = {}
	tRebateStoreItem_RewandItem[3322818][1][30]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][30]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的例无虚发(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][31] = {}
	tRebateStoreItem_RewandItem[3322818][1][31]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][31]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的审判(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 0.53%
	tRebateStoreItem_RewandItem[3322818][1][32] = {}
	tRebateStoreItem_RewandItem[3322818][1][32]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][32]["ItemChance"] = 53
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的斗转星移(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][33] = {}
	tRebateStoreItem_RewandItem[3322818][1][33]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][33]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的乾坤护法(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][1][34] = {}
	tRebateStoreItem_RewandItem[3322818][1][34]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][34]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的威慑(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 0.75%
	tRebateStoreItem_RewandItem[3322818][1][35] = {}
	tRebateStoreItem_RewandItem[3322818][1][35]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][35]["ItemChance"] = 75
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的会心一击(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 0.53%
	tRebateStoreItem_RewandItem[3322818][1][36] = {}
	tRebateStoreItem_RewandItem[3322818][1][36]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][36]["ItemChance"] = 53
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的致命准星(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 暴击伤害加成（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][37] = {}
	tRebateStoreItem_RewandItem[3322818][1][37]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][37]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardItem"][1]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】暴击伤害加成（+9）
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的绝命破(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][38] = {}
	tRebateStoreItem_RewandItem[3322818][1][38]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][38]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的乾坤妙法(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][39] = {}
	tRebateStoreItem_RewandItem[3322818][1][39]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][39]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的罡气护体(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][40] = {}
	tRebateStoreItem_RewandItem[3322818][1][40]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][40]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的沧澜破(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][41] = {}
	tRebateStoreItem_RewandItem[3322818][1][41]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][41]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的妙手回春(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][42] = {}
	tRebateStoreItem_RewandItem[3322818][1][42]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][42]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+9）
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的碎魔屏障(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][43] = {}
	tRebateStoreItem_RewandItem[3322818][1][43]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][43]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+9）
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的天地化盾(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][43]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][1][44] = {}
	tRebateStoreItem_RewandItem[3322818][1][44]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][44]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的碎玄元(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][44]["RewardEffect"]["Effect"] = "angelwing"
	-- 不死之身（+9） - 0.00%
	tRebateStoreItem_RewandItem[3322818][1][45] = {}
	tRebateStoreItem_RewandItem[3322818][1][45]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][1][45]["ItemChance"] = 0
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardItem"][1]["Id"] = 4034909 -- 不死之身(+9)[4034909][属性:8][叠加:0][金币:0], 【表格】不死之身（+9）
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的不死之身(+9)*1
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][1][45]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322818][2] = {}
	-- ===30天神纹随机包
	-- ===索引: tRebateStoreItem_RewandItem[3322818][2]
	-- ===删除:3322818,1
	-- ===
	tRebateStoreItem_RewandItem[3322818][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322818][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2]["DeleteItem"][1]["Id"] = 3322818 -- 【库】30天随机+9黄色神纹宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322818][2]["LogId"] = 12001535
	-- 破玄元（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][1]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的破玄元(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][2] = {}
	tRebateStoreItem_RewandItem[3322818][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][2]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的撼星诀(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][3] = {}
	tRebateStoreItem_RewandItem[3322818][2][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][3]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的血回元(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][4] = {}
	tRebateStoreItem_RewandItem[3322818][2][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][4]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的万物生(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][5] = {}
	tRebateStoreItem_RewandItem[3322818][2][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][5]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的无懈可击(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][6] = {}
	tRebateStoreItem_RewandItem[3322818][2][6]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][6]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的狂暴克星(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][7] = {}
	tRebateStoreItem_RewandItem[3322818][2][7]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][7]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的风卷残云(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][8] = {}
	tRebateStoreItem_RewandItem[3322818][2][8]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][8]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的回灵术(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][9] = {}
	tRebateStoreItem_RewandItem[3322818][2][9]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][9]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的杀破狼(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][10] = {}
	tRebateStoreItem_RewandItem[3322818][2][10]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][10]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的追命(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][11] = {}
	tRebateStoreItem_RewandItem[3322818][2][11]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][11]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的奔雷不息(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][12] = {}
	tRebateStoreItem_RewandItem[3322818][2][12]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][12]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的安魂定魄(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][13] = {}
	tRebateStoreItem_RewandItem[3322818][2][13]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][13]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的夺魂(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][14] = {}
	tRebateStoreItem_RewandItem[3322818][2][14]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][14]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的狂暴净化(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][15] = {}
	tRebateStoreItem_RewandItem[3322818][2][15]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][15]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的怒海狂涛(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][16] = {}
	tRebateStoreItem_RewandItem[3322818][2][16]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][16]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的饮血盛宴(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 3.81%
	tRebateStoreItem_RewandItem[3322818][2][17] = {}
	tRebateStoreItem_RewandItem[3322818][2][17]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][17]["ItemChance"] = 381
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的生命汲取(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][18] = {}
	tRebateStoreItem_RewandItem[3322818][2][18]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][18]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的策马扬鞭(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][19] = {}
	tRebateStoreItem_RewandItem[3322818][2][19]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][19]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的攻城掠地(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][2][20] = {}
	tRebateStoreItem_RewandItem[3322818][2][20]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][20]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的神罗天征(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][2][21] = {}
	tRebateStoreItem_RewandItem[3322818][2][21]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][21]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的爆炎诀(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.00%
	tRebateStoreItem_RewandItem[3322818][2][22] = {}
	tRebateStoreItem_RewandItem[3322818][2][22]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][22]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的清心诀(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） -2.00%
	tRebateStoreItem_RewandItem[3322818][2][23] = {}
	tRebateStoreItem_RewandItem[3322818][2][23]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][23]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的祭灵诀(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 0.52%
	tRebateStoreItem_RewandItem[3322818][2][24] = {}
	tRebateStoreItem_RewandItem[3322818][2][24]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][24]["ItemChance"] = 52
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的横扫千军(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.70%
	tRebateStoreItem_RewandItem[3322818][2][25] = {}
	tRebateStoreItem_RewandItem[3322818][2][25]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][25]["ItemChance"] = 270
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的涅槃重生(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.50%
	tRebateStoreItem_RewandItem[3322818][2][26] = {}
	tRebateStoreItem_RewandItem[3322818][2][26]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][26]["ItemChance"] = 50
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的锋芒毕露(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.70%
	tRebateStoreItem_RewandItem[3322818][2][27] = {}
	tRebateStoreItem_RewandItem[3322818][2][27]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][27]["ItemChance"] = 270
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的魂兮归来(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.50%
	tRebateStoreItem_RewandItem[3322818][2][28] = {}
	tRebateStoreItem_RewandItem[3322818][2][28]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][28]["ItemChance"] = 50
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的玄武护体(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][29] = {}
	tRebateStoreItem_RewandItem[3322818][2][29]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][29]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的天衣无缝(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][30] = {}
	tRebateStoreItem_RewandItem[3322818][2][30]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][30]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的例无虚发(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][31] = {}
	tRebateStoreItem_RewandItem[3322818][2][31]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][31]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的审判(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 0.53%
	tRebateStoreItem_RewandItem[3322818][2][32] = {}
	tRebateStoreItem_RewandItem[3322818][2][32]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][32]["ItemChance"] = 53
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的斗转星移(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][33] = {}
	tRebateStoreItem_RewandItem[3322818][2][33]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][33]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的乾坤护法(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 1.50%
	tRebateStoreItem_RewandItem[3322818][2][34] = {}
	tRebateStoreItem_RewandItem[3322818][2][34]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][34]["ItemChance"] = 150
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的威慑(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 0.75%
	tRebateStoreItem_RewandItem[3322818][2][35] = {}
	tRebateStoreItem_RewandItem[3322818][2][35]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][35]["ItemChance"] = 75
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的会心一击(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 1.53%
	tRebateStoreItem_RewandItem[3322818][2][36] = {}
	tRebateStoreItem_RewandItem[3322818][2][36]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][36]["ItemChance"] = 153
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的致命准星(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 暴击伤害加成（+9） - 0.00%
	tRebateStoreItem_RewandItem[3322818][2][37] = {}
	tRebateStoreItem_RewandItem[3322818][2][37]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][37]["ItemChance"] = 0
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardItem"][1]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】暴击伤害加成（+9）
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的绝命破(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][38] = {}
	tRebateStoreItem_RewandItem[3322818][2][38]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][38]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的乾坤妙法(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][39] = {}
	tRebateStoreItem_RewandItem[3322818][2][39]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][39]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的罡气护体(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][40] = {}
	tRebateStoreItem_RewandItem[3322818][2][40]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][40]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的沧澜破(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][41] = {}
	tRebateStoreItem_RewandItem[3322818][2][41]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][41]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的妙手回春(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][42] = {}
	tRebateStoreItem_RewandItem[3322818][2][42]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][42]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+9）
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的碎魔屏障(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][43] = {}
	tRebateStoreItem_RewandItem[3322818][2][43]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][43]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+9）
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的天地化盾(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][43]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1.00%
	tRebateStoreItem_RewandItem[3322818][2][44] = {}
	tRebateStoreItem_RewandItem[3322818][2][44]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][44]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的碎玄元(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][44]["RewardEffect"]["Effect"] = "angelwing"
	-- 不死之身（+9） - 0.00%
	tRebateStoreItem_RewandItem[3322818][2][45] = {}
	tRebateStoreItem_RewandItem[3322818][2][45]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322818][2][45]["ItemChance"] = 0
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardItem"][1]["Id"] = 4034909 -- 不死之身(+9)[4034909][属性:8][叠加:0][金币:0], 【表格】不死之身（+9）
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的不死之身(+9)（赠）*1
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322818][2][45]["RewardEffect"]["Effect"] = "angelwing"

	
	tRebateStoreItem_RewandItem[3322812] = {}
	-- ===光效坐骑碎片
	-- ===索引: tRebateStoreItem_RewandItem[3322812][1]
	-- ===删除: 3322812,50
	-- ===
	tRebateStoreItem_RewandItem[3322812][1] = {}
	tRebateStoreItem_RewandItem[3322812][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322812][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322812][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322812][1]["DeleteItem"][1]["Id"] = 3322812 -- 【库】曜日结晶[属性:9]
	tRebateStoreItem_RewandItem[3322812][1]["DeleteItem"][1]["ItemNum"] = 50
	tRebateStoreItem_RewandItem[3322812][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322812][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322812][1]["RewardItem"][1]["Id"] = 200655 -- 天火神麟·曜日[200655][属性:0][叠加:0][金币:0], 【表格】天火神麟?曜日
	tRebateStoreItem_RewandItem[3322812][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑天火神麟·曜日（赠）*1
	tRebateStoreItem_RewandItem[3322812][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322812][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322812][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322812][2] = {}
	-- ===光效坐骑碎片
	-- ===索引: tRebateStoreItem_RewandItem[3322812][2]
	-- ===删除: 3322812,1
	tRebateStoreItem_RewandItem[3322812][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322812][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322812][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322812][2]["DeleteItem"][1]["Id"] = 3322812 -- 【库】曜日结晶[属性:9]
	tRebateStoreItem_RewandItem[3322812][2]["LogId"] = 12001535
	-- 光效坐骑碎片 - 48.00%
	tRebateStoreItem_RewandItem[3322812][2][1] = {}
	tRebateStoreItem_RewandItem[3322812][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322812][2][1]["ItemChance"] = 4800
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardItem"][1]["Id"] = 3322812 --  3322812 【库里没有该物品】, 【表格】光效坐骑碎片
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3322812 【库里没有该物品】*1
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322812][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 52.00%
	tRebateStoreItem_RewandItem[3322812][2][2] = {}
	tRebateStoreItem_RewandItem[3322812][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322812][2][2]["ItemChance"] = 5200
	
		tRebateStoreItem_RewandItem[3323044] = {}
	-- ===蜜桃之恋?唯一碎片
	-- ===索引: tRebateStoreItem_RewandItem[3323044][1]
	-- ===删除: 3323044,50
	-- ===
	tRebateStoreItem_RewandItem[3323044][1] = {}
	tRebateStoreItem_RewandItem[3323044][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323044][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323044][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323044][1]["DeleteItem"][1]["Id"] = 3323044 -- 【库】EternalLoveFragment[属性:8]
	tRebateStoreItem_RewandItem[3323044][1]["DeleteItem"][1]["ItemNum"] = 50
	tRebateStoreItem_RewandItem[3323044][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323044][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323044][1]["RewardItem"][1]["Id"] = 195795 -- SweetnessofLove(Eternal)[195795][属性:0][叠加:0][金币:0], 【表格】蜜桃之恋?唯一
	tRebateStoreItem_RewandItem[3323044][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑SweetnessofLove(Eternal)（赠）*1
	tRebateStoreItem_RewandItem[3323044][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323044][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323044][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323044][2] = {}
	-- ===蜜桃之恋?唯一碎片
	-- ===索引: tRebateStoreItem_RewandItem[3323044][2]
	-- ===删除: 3323044,1
	tRebateStoreItem_RewandItem[3323044][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323044][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323044][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323044][2]["DeleteItem"][1]["Id"] = 3323044 -- 【库】EternalLoveFragment[属性:8]
	tRebateStoreItem_RewandItem[3323044][2]["LogId"] = 12001535
	-- 蜜桃之恋?唯一碎片 - 48.00%
	tRebateStoreItem_RewandItem[3323044][2][1] = {}
	tRebateStoreItem_RewandItem[3323044][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323044][2][1]["ItemChance"] = 4800
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardItem"][1]["Id"] = 3323044 -- EternalLoveFragment[3323044][属性:8][叠加:1][金币:0], 【表格】蜜桃之恋?唯一碎片
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardItem"][1]["Attr"] = "0 2" -- EternalLoveFragment*1
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323044][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 52.00%
	tRebateStoreItem_RewandItem[3323044][2][2] = {}
	tRebateStoreItem_RewandItem[3323044][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323044][2][2]["ItemChance"] = 5200
	tRebateStoreItem_RewandItem[3323044][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323044][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323044][2][2]["RewardEffect"]["Effect"] = "angelwing"

	
	
	tRebateStoreItem_RewandItem[3322816] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][1]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][1] = {}
	tRebateStoreItem_RewandItem[3322816][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][1]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][1]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322816][1]["RewardTitle"]["TitleType"] = 2123 -- 【库】侠义冠天下, 【表格】侠义冠天下
	tRebateStoreItem_RewandItem[3322816][1]["RewardTitle"]["TitleId"] = 2123
	tRebateStoreItem_RewandItem[3322816][1]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:侠义冠天下, 【需求】侠义冠天下
	tRebateStoreItem_RewandItem[3322816][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322816][2] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][2]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][2]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][2]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322816][2]["RewardTitle"]["TitleType"] = 2124 -- 【库】豪情万丈, 【表格】豪情万丈
	tRebateStoreItem_RewandItem[3322816][2]["RewardTitle"]["TitleId"] = 2124
	tRebateStoreItem_RewandItem[3322816][2]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:豪情万丈, 【需求】豪情万丈
	tRebateStoreItem_RewandItem[3322816][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322816][3] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][3]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][3]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][3]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322816][3]["RewardTitle"]["TitleType"] = 2025 -- 【库】一表人才, 【表格】一表人才（男性专属）
	tRebateStoreItem_RewandItem[3322816][3]["RewardTitle"]["TitleId"] = 2025
	tRebateStoreItem_RewandItem[3322816][3]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:一表人才, 【需求】一表人才（男性专属）
	tRebateStoreItem_RewandItem[3322816][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322816][4] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][4]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][4]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][4]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322816][4]["RewardTitle"]["TitleType"] = 2085 -- 【库】小鲜肉, 【表格】小鲜肉（男性专属）
	tRebateStoreItem_RewandItem[3322816][4]["RewardTitle"]["TitleId"] = 2085
	tRebateStoreItem_RewandItem[3322816][4]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:小鲜肉, 【需求】小鲜肉（男性专属）
	tRebateStoreItem_RewandItem[3322816][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322816][5] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][5]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][5]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][5]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][5]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322816][5]["RewardTitle"]["TitleType"] = 2022 -- 【库】楚楚动人, 【表格】楚楚动人（女性专属）
	tRebateStoreItem_RewandItem[3322816][5]["RewardTitle"]["TitleId"] = 2022
	tRebateStoreItem_RewandItem[3322816][5]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:楚楚动人, 【需求】楚楚动人（女性专属）
	tRebateStoreItem_RewandItem[3322816][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][5]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322816][6] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][6]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][6]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][6]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][6]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][6]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][6]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322816][6]["RewardTitle"]["TitleType"] = 2092 -- 【库】小仙女, 【表格】小仙女（女性专属）
	tRebateStoreItem_RewandItem[3322816][6]["RewardTitle"]["TitleId"] = 2092
	tRebateStoreItem_RewandItem[3322816][6]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:小仙女, 【需求】小仙女（女性专属）
	tRebateStoreItem_RewandItem[3322816][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][6]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3322816][7] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][6]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322816][7]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322816][7]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322816][7]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322816][7]["DeleteItem"][1]["Id"] = 3322816 -- 【库】30天稀有称号可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322816][7]["RewardStrengthValue"] = {}
	tRebateStoreItem_RewandItem[3322816][7]["RewardStrengthValue"]["Value"] = 5000
	tRebateStoreItem_RewandItem[3322816][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322816][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322816][7]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3322817] = {}
	-- ===30天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322817][1]
	-- ===删除: 3322817,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][1] = {}
	tRebateStoreItem_RewandItem[3322817][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][1]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][1]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322817][1]["RewardTitle"]["TitleType"] = 6023 -- 【库】紫芒星辰翼, 【表格】紫芒星辰翼
	tRebateStoreItem_RewandItem[3322817][1]["RewardTitle"]["TitleId"] = 6023
	tRebateStoreItem_RewandItem[3322817][1]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:紫芒星辰翼, 【需求】紫芒星辰翼
	tRebateStoreItem_RewandItem[3322817][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322817][2] = {}
	-- ===30天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322817][2]
	-- ===删除: 3322817,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][2]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][2]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322817][2]["RewardTitle"]["TitleType"] = 6017 -- 【库】海妖之歌, 【表格】海妖之歌
	tRebateStoreItem_RewandItem[3322817][2]["RewardTitle"]["TitleId"] = 6017
	tRebateStoreItem_RewandItem[3322817][2]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:海妖之歌, 【需求】海妖之歌
	tRebateStoreItem_RewandItem[3322817][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322817][3] = {}
	-- ===30天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322817][3]
	-- ===删除: 3322817,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][3]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][3]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322817][3]["RewardTitle"]["TitleType"] = 6008 -- 【库】紫电裂空羽, 【表格】紫电裂空羽
	tRebateStoreItem_RewandItem[3322817][3]["RewardTitle"]["TitleId"] = 6008
	tRebateStoreItem_RewandItem[3322817][3]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:紫电裂空羽, 【需求】紫电裂空羽
	tRebateStoreItem_RewandItem[3322817][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322817][4] = {}
	-- ===30天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322817][4]
	-- ===删除: 3322817,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][4]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][4]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322817][4]["RewardTitle"]["TitleType"] = 6003 -- 【库】星痕凝冰羽, 【表格】星痕凝冰羽
	tRebateStoreItem_RewandItem[3322817][4]["RewardTitle"]["TitleId"] = 22
	tRebateStoreItem_RewandItem[3322817][4]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:星痕凝冰羽, 【需求】星痕凝冰羽
	tRebateStoreItem_RewandItem[3322817][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322817][5] = {}
	-- ===30天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322817][5]
	-- ===删除: 3322817,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][5]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][5]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][5]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322817][5]["RewardTitle"]["TitleType"] = 6004 -- 【库】月华流光羽 , 【表格】月华流光羽
	tRebateStoreItem_RewandItem[3322817][5]["RewardTitle"]["TitleId"] = 23
	tRebateStoreItem_RewandItem[3322817][5]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:月华流光羽 , 【需求】月华流光羽
	tRebateStoreItem_RewandItem[3322817][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][5]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322817][6] = {}
	-- ===30天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322817][6]
	-- ===删除: 3322817,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][6]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][6]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][6]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][6]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][6]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322817][6]["RewardTitle"]["TitleType"] = 6013 -- 【库】碧痕霓虹羽（绿色）, 【表格】碧痕霓虹羽
	tRebateStoreItem_RewandItem[3322817][6]["RewardTitle"]["TitleId"] = 6013
	tRebateStoreItem_RewandItem[3322817][6]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:碧痕霓虹羽（绿色）, 【需求】碧痕霓虹羽
	tRebateStoreItem_RewandItem[3322817][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][6]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322817][7] = {}
	-- ===30天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3322816][6]
	-- ===删除: 3322816,1
	-- ===
	tRebateStoreItem_RewandItem[3322817][7]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322817][7]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322817][7]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322817][7]["DeleteItem"][1]["Id"] = 3322817 -- 【库】30天稀有翅膀可选宝盒[属性:11]
	tRebateStoreItem_RewandItem[3322817][7]["RewardStrengthValue"] = {}
	tRebateStoreItem_RewandItem[3322817][7]["RewardStrengthValue"]["Value"] = 5000
	tRebateStoreItem_RewandItem[3322817][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322817][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322817][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3323035] = {}
	tRebateStoreItem_RewandItem[3323035][1] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][1][1]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][1][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][1][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][1]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardItem"][1]["Id"] = 3305414 -- DivineWood[3305414][属性:9][叠加:1][金币:0], 【表格】圣灵神木
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的DivineWood（赠）*1
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][1][2] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][1][2]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][1][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][1][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][2]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardItem"][1]["Id"] = 3305415 -- Life`sEye[3305415][属性:9][叠加:1][金币:0], 【表格】轮回之眼
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的Life`sEye（赠）*1
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][1][3] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][1][3]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][1][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][1][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][3]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardItem"][1]["Id"] = 3305416 -- DivinePanacea[3305416][属性:9][叠加:1][金币:0], 【表格】神宝仙丹
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的DivinePanacea（赠）*1
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][1][4] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][1][4]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][1][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][1][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][4]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardItem"][1]["Id"] = 3305417 -- BoundlessHeart[3305417][属性:9][叠加:1][金币:0], 【表格】空灵佛心
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的BoundlessHeart（赠）*1
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][1][5] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][1][5]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][1][5]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][1][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][5]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardItem"][1]["Id"] = 3307449 -- HeartoftheSea[3307449][属性:9][叠加:0][金币:0], 【表格】海之心
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的HeartoftheSea（赠）*1
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][1][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3323035][2] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][2][1]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][2][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][2][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][1]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardItem"][1]["Id"] = 3305414 -- DivineWood[3305414][属性:9][叠加:1][金币:0], 【表格】圣灵神木
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的DivineWood（赠）*1
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3323035][2][2] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][2][2]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][2][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][2][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][2]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardItem"][1]["Id"] = 3305415 -- Life`sEye[3305415][属性:9][叠加:1][金币:0], 【表格】轮回之眼
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的Life`sEye（赠）*1
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][2][3] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][2][3]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][2][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][2][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][3]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardItem"][1]["Id"] = 3305416 -- DivinePanacea[3305416][属性:9][叠加:1][金币:0], 【表格】神宝仙丹
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的DivinePanacea（赠）*1
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][2][4] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][2][4]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][2][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][2][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][4]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardItem"][1]["Id"] = 3305417 -- BoundlessHeart[3305417][属性:9][叠加:1][金币:0], 【表格】空灵佛心
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的BoundlessHeart（赠）*1
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323035][2][5] = {}
	-- ===史诗武器转化道具（赠）可选包
	-- ===索引: tRebateStoreItem_RewandItem[3323035][2][5]
	-- ===删除: 3323035,1
	-- ===
	tRebateStoreItem_RewandItem[3323035][2][5]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323035][2][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][5]["DeleteItem"][1]["Id"] = 3323035 -- 【库】EpicMaterial(B)SelectionPack[属性:9]
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardItem"][1]["Id"] = 3307449 -- HeartoftheSea[3307449][属性:9][叠加:0][金币:0], 【表格】海之心
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的HeartoftheSea（赠）*1
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323035][2][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tRebateStoreItem_RewandItem[3323041] = {}
	-- ===7天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323041][1]
	-- ===删除: 3323041,1
	-- ===
	tRebateStoreItem_RewandItem[3323041][1] = {}
	tRebateStoreItem_RewandItem[3323041][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323041][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323041][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323041][1]["DeleteItem"][1]["Id"] = 3323041 -- 【库】7DTitleSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323041][1]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323041][1]["RewardTitle"]["TitleType"] = 2123 -- 【库】MasterofJustice, 【表格】侠义冠天下
	tRebateStoreItem_RewandItem[3323041][1]["RewardTitle"]["TitleId"] = 2123
	tRebateStoreItem_RewandItem[3323041][1]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:MasterofJustice, 【需求】侠义冠天下
	tRebateStoreItem_RewandItem[3323041][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323041][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323041][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323041][2] = {}
	-- ===7天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323041][2]
	-- ===删除: 3323041,1
	-- ===
	tRebateStoreItem_RewandItem[3323041][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323041][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323041][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323041][2]["DeleteItem"][1]["Id"] = 3323041 -- 【库】7DTitleSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323041][2]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323041][2]["RewardTitle"]["TitleType"] = 2124 -- 【库】HeroicPride, 【表格】豪情万丈
	tRebateStoreItem_RewandItem[3323041][2]["RewardTitle"]["TitleId"] = 2124
	tRebateStoreItem_RewandItem[3323041][2]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:HeroicPride, 【需求】豪情万丈
	tRebateStoreItem_RewandItem[3323041][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323041][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323041][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323041][3] = {}
	-- ===7天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323041][3]
	-- ===删除: 3323041,1
	-- ===
	tRebateStoreItem_RewandItem[3323041][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323041][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323041][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323041][3]["DeleteItem"][1]["Id"] = 3323041 -- 【库】7DTitleSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323041][3]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323041][3]["RewardTitle"]["TitleType"] = 2025 -- 【库】Wise, 【表格】一表人才（男性专属）
	tRebateStoreItem_RewandItem[3323041][3]["RewardTitle"]["TitleId"] = 2025
	tRebateStoreItem_RewandItem[3323041][3]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:Wise, 【需求】一表人才（男性专属）
	tRebateStoreItem_RewandItem[3323041][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323041][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323041][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323041][4] = {}
	-- ===7天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323041][4]
	-- ===删除: 3323041,1
	-- ===
	tRebateStoreItem_RewandItem[3323041][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323041][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323041][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323041][4]["DeleteItem"][1]["Id"] = 3323041 -- 【库】7DTitleSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323041][4]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323041][4]["RewardTitle"]["TitleType"] = 2085 -- 【库】HansomeBoy, 【表格】小鲜肉（男性专属）
	tRebateStoreItem_RewandItem[3323041][4]["RewardTitle"]["TitleId"] = 2085
	tRebateStoreItem_RewandItem[3323041][4]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:HansomeBoy, 【需求】小鲜肉（男性专属）
	tRebateStoreItem_RewandItem[3323041][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323041][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323041][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323041][5] = {}
	-- ===7天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323041][6]
	-- ===删除: 3323041,1
	-- ===
	tRebateStoreItem_RewandItem[3323041][5]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323041][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323041][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323041][5]["DeleteItem"][1]["Id"] = 3323041 -- 【库】7DTitleSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323041][5]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323041][5]["RewardTitle"]["TitleType"] = 2022 -- 【库】Beauty, 【表格】楚楚动人（女性专属）
	tRebateStoreItem_RewandItem[3323041][5]["RewardTitle"]["TitleId"] = 2022
	tRebateStoreItem_RewandItem[3323041][5]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:Beauty, 【需求】楚楚动人（女性专属）
	
	
	tRebateStoreItem_RewandItem[3323041][6] = {}
	-- ===7天稀有称号可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323041][6]
	-- ===删除: 3323041,1
	-- ===
	tRebateStoreItem_RewandItem[3323041][6]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323041][6]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323041][6]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323041][6]["DeleteItem"][1]["Id"] = 3323041 -- 【库】7DTitleSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323041][6]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323041][6]["RewardTitle"]["TitleType"] = 2092 -- 【库】FairyGirl, 【表格】小仙女（女性专属）
	tRebateStoreItem_RewandItem[3323041][6]["RewardTitle"]["TitleId"] = 2092
	tRebateStoreItem_RewandItem[3323041][6]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:FairyGirl, 【需求】小仙女（女性专属）
	tRebateStoreItem_RewandItem[3323041][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323041][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323041][6]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3323042] = {}
	-- ===7天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323042][1]
	-- ===删除: 3323042,1
	-- ===
	tRebateStoreItem_RewandItem[3323042][1] = {}
	tRebateStoreItem_RewandItem[3323042][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323042][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323042][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323042][1]["DeleteItem"][1]["Id"] = 3323042 -- 【库】7DWingsSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323042][1]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323042][1]["RewardTitle"]["TitleType"] = 6005 -- 【库】FairyWings, 【表格】棉花糖之恋
	tRebateStoreItem_RewandItem[3323042][1]["RewardTitle"]["TitleId"] = 6005
	tRebateStoreItem_RewandItem[3323042][1]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:FairyWings, 【需求】棉花糖之恋
	tRebateStoreItem_RewandItem[3323042][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323042][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323042][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323042][2] = {}
	-- ===7天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323042][2]
	-- ===删除: 3323042,1
	-- ===
	tRebateStoreItem_RewandItem[3323042][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323042][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323042][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323042][2]["DeleteItem"][1]["Id"] = 3323042 -- 【库】7DWingsSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323042][2]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323042][2]["RewardTitle"]["TitleType"] = 6009 -- 【库】WingsofPlanet, 【表格】快乐星球
	tRebateStoreItem_RewandItem[3323042][2]["RewardTitle"]["TitleId"] = 6009
	tRebateStoreItem_RewandItem[3323042][2]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:WingsofPlanet, 【需求】快乐星球
	tRebateStoreItem_RewandItem[3323042][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323042][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323042][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323042][3] = {}
	-- ===7天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323042][3]
	-- ===删除: 3323042,1
	-- ===
	tRebateStoreItem_RewandItem[3323042][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323042][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323042][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323042][3]["DeleteItem"][1]["Id"] = 3323042 -- 【库】7DWingsSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323042][3]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323042][3]["RewardTitle"]["TitleType"] = 6015 -- 【库】StarlightWings, 【表格】星痕凝冰羽
	tRebateStoreItem_RewandItem[3323042][3]["RewardTitle"]["TitleId"] = 6015
	tRebateStoreItem_RewandItem[3323042][3]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:StarlightWings, 【需求】星痕凝冰羽
	tRebateStoreItem_RewandItem[3323042][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323042][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323042][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323042][4] = {}
	-- ===7天稀有翅膀可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323042][4]
	-- ===删除: 3323042,1
	-- ===
	tRebateStoreItem_RewandItem[3323042][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323042][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323042][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323042][4]["DeleteItem"][1]["Id"] = 3323042 -- 【库】7DWingsSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323042][4]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3323042][4]["RewardTitle"]["TitleType"] = 6016 -- 【库】MoonlightWings, 【表格】月华流光羽
	tRebateStoreItem_RewandItem[3323042][4]["RewardTitle"]["TitleId"] = 6016
	tRebateStoreItem_RewandItem[3323042][4]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:MoonlightWings, 【需求】月华流光羽
	tRebateStoreItem_RewandItem[3323042][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323042][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323042][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323043] = {}
	-- ===7天稀有外套可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323043][1]
	-- ===删除: 3323043,1
	-- ===
	tRebateStoreItem_RewandItem[3323043][1] = {}
	tRebateStoreItem_RewandItem[3323043][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323043][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323043][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][1]["DeleteItem"][1]["Id"] = 3323043 -- 【库】7DFashionSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323043][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323043][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][1]["RewardItem"][1]["Id"] = 200494 -- MoneyHorse[200494][属性:0][叠加:0][金币:100], 【表格】马上有人民币【马年绝版】
	tRebateStoreItem_RewandItem[3323043][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的MoneyHorse*1
	tRebateStoreItem_RewandItem[3323043][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323043][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323043][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323043][2] = {}
	-- ===7天稀有外套可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323043][2]
	-- ===删除: 3323043,1
	-- ===
	tRebateStoreItem_RewandItem[3323043][2]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323043][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323043][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][2]["DeleteItem"][1]["Id"] = 3323043 -- 【库】7DFashionSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323043][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323043][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][2]["RewardItem"][1]["Id"] = 200532 -- ChariotofTime[200532][属性:0][叠加:0][金币:0], 【表格】时空之轮战车
	tRebateStoreItem_RewandItem[3323043][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的ChariotofTime*1
	tRebateStoreItem_RewandItem[3323043][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323043][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323043][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323043][3] = {}
	-- ===7天稀有外套可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323043][3]
	-- ===删除: 3323043,1
	-- ===
	tRebateStoreItem_RewandItem[3323043][3]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323043][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323043][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][3]["DeleteItem"][1]["Id"] = 3323043 -- 【库】7DFashionSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323043][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323043][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][3]["RewardItem"][1]["Id"] = 200533 -- ThunderMotorcycle[200533][属性:0][叠加:0][金币:0], 【表格】霹雳龙马摩托
	tRebateStoreItem_RewandItem[3323043][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的ThunderMotorcycle*1
	tRebateStoreItem_RewandItem[3323043][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323043][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323043][3]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323043][4] = {}
	-- ===7天稀有外套可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323043][4]
	-- ===删除: 3323043,1
	-- ===
	tRebateStoreItem_RewandItem[3323043][4]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323043][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323043][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][4]["DeleteItem"][1]["Id"] = 3323043 -- 【库】7DFashionSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323043][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323043][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][4]["RewardItem"][1]["Id"] = 195075 -- BlessedStar(Splendor)[195075][属性:0][叠加:0][金币:0], 【表格】福星天降【华彩版】
	tRebateStoreItem_RewandItem[3323043][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的BlessedStar(Splendor)*1
	tRebateStoreItem_RewandItem[3323043][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323043][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323043][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323043][5] = {}
	-- ===7天稀有外套可选宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323043][5]
	-- ===删除: 3323043,1
	-- ===
	tRebateStoreItem_RewandItem[3323043][5]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323043][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323043][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][5]["DeleteItem"][1]["Id"] = 3323043 -- 【库】7DFashionSelectionBag[属性:11]
	tRebateStoreItem_RewandItem[3323043][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323043][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323043][5]["RewardItem"][1]["Id"] = 195045 -- BlissfulForeverHeart[195045][属性:8][叠加:0][金币:0], 【表格】轻舞飞扬-盈波
	tRebateStoreItem_RewandItem[3323043][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的BlissfulForeverHeart*1
	tRebateStoreItem_RewandItem[3323043][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323043][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323043][5]["RewardEffect"]["Effect"] = "angelwing"

	
	
local tRebateStoreItem_RandomItemProperty = {}
	tRebateStoreItem_RandomItemProperty[3322818] = {}
	tRebateStoreItem_RandomItemProperty[3322818][1] = {}
	tRebateStoreItem_RandomItemProperty[3322818][1]["ItemChanceSum"] = 10000
	
	tRebateStoreItem_RandomItemProperty[3322818][1][1] = {}
	tRebateStoreItem_RandomItemProperty[3322818][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RandomItemProperty[3322818][1][1]["ItemChance"] = 1000
	tRebateStoreItem_RandomItemProperty[3322818][1][1]["Item"] = 1
	-- 无 - 52.00%
	tRebateStoreItem_RandomItemProperty[3322818][1][2] = {}
	tRebateStoreItem_RandomItemProperty[3322818][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RandomItemProperty[3322818][1][2]["ItemChance"] = 9000
	tRebateStoreItem_RandomItemProperty[3322818][1][2]["Item"] = 2
	
--高级神器礼包
local tRebateStoreItem_GoldAttributeNum = {}
	tRebateStoreItem_GoldAttributeNum[3322773] = {}
	tRebateStoreItem_GoldAttributeNum[3322773][5] = {} --此处5代表随机出来的属性条数
	tRebateStoreItem_GoldAttributeNum[3322773][5]["ItemChanceSum"] = 10000
	tRebateStoreItem_GoldAttributeNum[3322773][5][1] = {}
	tRebateStoreItem_GoldAttributeNum[3322773][5][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322773][5][1]["ItemChance"] = 0
	tRebateStoreItem_GoldAttributeNum[3322773][5][1]["Item_1"] = 5 
	tRebateStoreItem_GoldAttributeNum[3322773][5][2] = {}
	tRebateStoreItem_GoldAttributeNum[3322773][5][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322773][5][2]["ItemChance"] = 50
	tRebateStoreItem_GoldAttributeNum[3322773][5][2]["Item_1"] = 4 
	tRebateStoreItem_GoldAttributeNum[3322773][5][3] = {}
	tRebateStoreItem_GoldAttributeNum[3322773][5][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322773][5][3]["ItemChance"] = 250
	tRebateStoreItem_GoldAttributeNum[3322773][5][3]["Item_1"] = 3 
	tRebateStoreItem_GoldAttributeNum[3322773][5][4] = {}
	tRebateStoreItem_GoldAttributeNum[3322773][5][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322773][5][4]["ItemChance"] = 700
	tRebateStoreItem_GoldAttributeNum[3322773][5][4]["Item_1"] = 2 
	tRebateStoreItem_GoldAttributeNum[3322773][5][5] = {}
	tRebateStoreItem_GoldAttributeNum[3322773][5][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322773][5][5]["ItemChance"] = 9000
	tRebateStoreItem_GoldAttributeNum[3322773][5][5]["Item_1"] = 1 
	
	tRebateStoreItem_GoldAttributeNum[3322774] = {}
	tRebateStoreItem_GoldAttributeNum[3322774][5] = {} --此处5代表随机出来的属性条数
	tRebateStoreItem_GoldAttributeNum[3322774][5]["ItemChanceSum"] = 10000
	tRebateStoreItem_GoldAttributeNum[3322774][5][1] = {}
	tRebateStoreItem_GoldAttributeNum[3322774][5][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322774][5][1]["ItemChance"] = 10000
	tRebateStoreItem_GoldAttributeNum[3322774][5][1]["Item_1"] = 5 
	tRebateStoreItem_GoldAttributeNum[3322774][5][2] = {}
	tRebateStoreItem_GoldAttributeNum[3322774][5][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322774][5][2]["ItemChance"] = 0
	tRebateStoreItem_GoldAttributeNum[3322774][5][2]["Item_1"] = 4 
	tRebateStoreItem_GoldAttributeNum[3322774][5][3] = {}
	tRebateStoreItem_GoldAttributeNum[3322774][5][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_GoldAttributeNum[3322774][5][3]["ItemChance"] = 0
	tRebateStoreItem_GoldAttributeNum[3322774][5][3]["Item_1"] = 3 
	
	tRebateStoreItem_RewandItem[3322820] = {}
	-- ===海天之恋·绝恋碎片
	-- ===索引: tRebateStoreItem_RewandItem[3322820][1]
	-- ===删除: 3322820,50
	-- ===
	tRebateStoreItem_RewandItem[3322820]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322820]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322820]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322820]["DeleteItem"][1]["Id"] = 3322820 -- 【库】 3322820 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3322820]["DeleteItem"][1]["ItemNum"] = 50
	tRebateStoreItem_RewandItem[3322820]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322820]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322820]["RewardItem"][1]["Id"] = 195845 --  195845 【库里没有该物品】, 【表格】海天之恋·绝恋
	tRebateStoreItem_RewandItem[3322820]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 195845 【库里没有该物品】（赠）*1
	tRebateStoreItem_RewandItem[3322820]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322820]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322820]["RewardEffect"]["Effect"] = "angelwing"

	
	tRebateStoreItem_RewandItem[3322940] = {}
	-- ===30天称号随机包
	-- ===索引: tRebateStoreItem_RewandItem[3322940][1]
	-- ===删除:3322940,1
	-- ===
	tRebateStoreItem_RewandItem[3322940][1] = {}
	tRebateStoreItem_RewandItem[3322940][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322940][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322940][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322940][1]["DeleteItem"][1]["Id"] = 3322940 -- 【库】30天称号随机包[属性:8]
	tRebateStoreItem_RewandItem[3322940][1]["LogId"] = 12001535
	-- 侠义冠天下 - 25.00%
	tRebateStoreItem_RewandItem[3322940][1][1] = {}
	tRebateStoreItem_RewandItem[3322940][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][1][1]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardTitle"]["TitleType"] = 2123 -- 【库】侠义冠天下, 【表格】侠义冠天下
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardTitle"]["TitleId"] = 2123
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:侠义冠天下, 【需求】侠义冠天下
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪情万丈 - 25.00%
	tRebateStoreItem_RewandItem[3322940][1][2] = {}
	tRebateStoreItem_RewandItem[3322940][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][1][2]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardTitle"]["TitleType"] = 2124 -- 【库】豪情万丈, 【表格】豪情万丈
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardTitle"]["TitleId"] = 2124
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:豪情万丈, 【需求】豪情万丈
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 一表人才（男性专属） - 25.00%
	tRebateStoreItem_RewandItem[3322940][1][3] = {}
	tRebateStoreItem_RewandItem[3322940][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][1][3]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardTitle"]["TitleType"] = 2025 -- 【库】一表人才, 【表格】一表人才（男性专属）
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardTitle"]["TitleId"] = 2025
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:一表人才, 【需求】一表人才（男性专属）
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 小鲜肉（男性专属） - 25.00%
	tRebateStoreItem_RewandItem[3322940][1][4] = {}
	tRebateStoreItem_RewandItem[3322940][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][1][4]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardTitle"]["TitleType"] = 2085 -- 【库】小鲜肉, 【表格】小鲜肉（男性专属）
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardTitle"]["TitleId"] = 2085
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:小鲜肉, 【需求】小鲜肉（男性专属）
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322940][2] = {}
	-- ===30天称号随机包
	-- ===索引: tRebateStoreItem_RewandItem[3322940][2]
	-- ===删除:3322940,1
	-- ===
	tRebateStoreItem_RewandItem[3322940][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322940][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322940][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322940][2]["DeleteItem"][1]["Id"] = 3322940 -- 【库】30天称号随机包[属性:8]
	tRebateStoreItem_RewandItem[3322940][2]["LogId"] = 12001535
	-- 侠义冠天下 - 25.00%
	tRebateStoreItem_RewandItem[3322940][2][1] = {}
	tRebateStoreItem_RewandItem[3322940][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][2][1]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardTitle"]["TitleType"] = 2123 -- 【库】侠义冠天下, 【表格】侠义冠天下
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardTitle"]["TitleId"] = 2123
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:侠义冠天下, 【需求】侠义冠天下
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪情万丈 - 25.00%
	tRebateStoreItem_RewandItem[3322940][2][2] = {}
	tRebateStoreItem_RewandItem[3322940][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][2][2]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardTitle"]["TitleType"] = 2124 -- 【库】豪情万丈, 【表格】豪情万丈
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardTitle"]["TitleId"] = 2124
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:豪情万丈, 【需求】豪情万丈
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 楚楚动人（女性专属） - 25.00%
	tRebateStoreItem_RewandItem[3322940][2][3] = {}
	tRebateStoreItem_RewandItem[3322940][2][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][2][3]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardTitle"]["TitleType"] = 2022 -- 【库】楚楚动人, 【表格】楚楚动人（女性专属）
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardTitle"]["TitleId"] = 2022
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:楚楚动人, 【需求】楚楚动人（女性专属）
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 小仙女（女性专属） - 25.00%
	tRebateStoreItem_RewandItem[3322940][2][4] = {}
	tRebateStoreItem_RewandItem[3322940][2][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322940][2][4]["ItemChance"] = 2500
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardTitle"] = {}
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardTitle"]["TitleType"] = 2092 -- 【库】小仙女, 【表格】小仙女（女性专属）
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardTitle"]["TitleId"] = 2092
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:小仙女, 【需求】小仙女（女性专属）
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322940][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322941] = {}
	-- ===30天翅膀随机包
	-- ===索引: tRebateStoreItem_RewandItem[3322941][1]
	-- ===删除:3322941,1
	-- ===
	tRebateStoreItem_RewandItem[3322941][1] = {}
	tRebateStoreItem_RewandItem[3322941][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322941][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322941][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322941][1]["DeleteItem"][1]["Id"] = 3322941 -- 【库】30天翅膀随机包[属性:8]
	tRebateStoreItem_RewandItem[3322941][1]["LogId"] = 12001535
	-- 碧痕霓虹羽（绿色） - 22.50%
	tRebateStoreItem_RewandItem[3322941][1][1] = {}
	tRebateStoreItem_RewandItem[3322941][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322941][1][1]["ItemChance"] = 2250
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardWing"] = {}
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardWing"]["TitleType"] = 6013 -- 【库】碧痕霓虹羽（绿色）, 【表格】碧痕霓虹羽（绿色）
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardWing"]["TitleId"] = 6013
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:碧痕霓虹羽（绿色）, 【需求】碧痕霓虹羽（绿色）
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322941][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 橙光霓虹羽（橙色） - 22.50%
	tRebateStoreItem_RewandItem[3322941][1][2] = {}
	tRebateStoreItem_RewandItem[3322941][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322941][1][2]["ItemChance"] = 2250
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardWing"] = {}
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardWing"]["TitleType"] = 6014 -- 【库】橙光霓虹羽（橙色）, 【表格】橙光霓虹羽（橙色）
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardWing"]["TitleId"] = 6014
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:橙光霓虹羽（橙色）, 【需求】橙光霓虹羽（橙色）
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322941][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 流焰霓虹羽（红色） - 22.50%
	tRebateStoreItem_RewandItem[3322941][1][3] = {}
	tRebateStoreItem_RewandItem[3322941][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322941][1][3]["ItemChance"] = 2250
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardWing"] = {}
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardWing"]["TitleType"] = 6015 -- 【库】流焰霓虹羽（红色）, 【表格】流焰霓虹羽（红色）
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardWing"]["TitleId"] = 6015
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:流焰霓虹羽（红色）, 【需求】流焰霓虹羽（红色）
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322941][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明光霓虹羽（黄色） - 22.50%
	tRebateStoreItem_RewandItem[3322941][1][4] = {}
	tRebateStoreItem_RewandItem[3322941][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322941][1][4]["ItemChance"] = 2250
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardWing"] = {}
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardWing"]["TitleType"] = 6016 -- 【库】明光霓虹羽（黄色）, 【表格】明光霓虹羽（黄色）
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardWing"]["TitleId"] = 6016
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:明光霓虹羽（黄色）, 【需求】明光霓虹羽（黄色）
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322941][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 海妖之歌 - 5.00%
	tRebateStoreItem_RewandItem[3322941][1][5] = {}
	tRebateStoreItem_RewandItem[3322941][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322941][1][5]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardWing"] = {}
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardWing"]["TitleType"] = 6017 -- 【库】海妖之歌, 【表格】海妖之歌
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardWing"]["TitleId"] = 6017
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:海妖之歌, 【需求】海妖之歌
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322941][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫芒星辰翼 - 5.00%
	tRebateStoreItem_RewandItem[3322941][1][6] = {}
	tRebateStoreItem_RewandItem[3322941][1][6]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322941][1][6]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardWing"] = {}
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardWing"]["TitleType"] = 6023 -- 【库】紫芒星辰翼, 【表格】紫芒星辰翼
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardWing"]["TitleId"] = 6023
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:紫芒星辰翼, 【需求】紫芒星辰翼
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322941][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3322942] = {}
	-- ===幻彩珠
	-- ===索引: tRebateStoreItem_RewandItem[3322942][1]
	-- ===删除:3322942,1
	-- ===
	tRebateStoreItem_RewandItem[3322942][1] = {}
	tRebateStoreItem_RewandItem[3322942][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322942][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322942][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322942][1]["DeleteItem"][1]["Id"] = 3322942 -- 【库】幻彩珠[属性:8]
	tRebateStoreItem_RewandItem[3322942][1]["LogId"] = 12001535
	-- 萌动喵耳 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][1] = {}
	tRebateStoreItem_RewandItem[3322942][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][1]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][1]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][1]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][1]["RewardHair"]["HairId"] = 35
	tRebateStoreItem_RewandItem[3322942][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄狐灵耳 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][2] = {}
	tRebateStoreItem_RewandItem[3322942][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][2]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][2]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][2]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][2]["RewardHair"]["HairId"] = 36
	tRebateStoreItem_RewandItem[3322942][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 动感潮流 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][3] = {}
	tRebateStoreItem_RewandItem[3322942][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][3]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][3]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][3]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][3]["RewardHair"]["HairId"] = 37
	tRebateStoreItem_RewandItem[3322942][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔发奇缘 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][4] = {}
	tRebateStoreItem_RewandItem[3322942][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][4]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][4]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][4]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][4]["RewardHair"]["HairId"] = 38
	tRebateStoreItem_RewandItem[3322942][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 淘气喵耳 -10.00%
	tRebateStoreItem_RewandItem[3322942][1][5] = {}
	tRebateStoreItem_RewandItem[3322942][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][5]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][5]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][5]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][5]["RewardHair"]["HairId"] = 34
	tRebateStoreItem_RewandItem[3322942][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 幽游狐耳 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][6] = {}
	tRebateStoreItem_RewandItem[3322942][1][6]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][6]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][6]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][6]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][6]["RewardHair"]["HairId"] = 30
	tRebateStoreItem_RewandItem[3322942][1][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 冰雪星辰 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][7] = {}
	tRebateStoreItem_RewandItem[3322942][1][7]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][7]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][7]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][7]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][7]["RewardHair"]["HairId"] = 77
	tRebateStoreItem_RewandItem[3322942][1][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 日月神冠 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][8] = {}
	tRebateStoreItem_RewandItem[3322942][1][8]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][8]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][8]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][8]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][8]["RewardHair"]["HairId"] = 76
	tRebateStoreItem_RewandItem[3322942][1][8]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 桃花千树 - 10.00%
	tRebateStoreItem_RewandItem[3322942][1][9] = {}
	tRebateStoreItem_RewandItem[3322942][1][9]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][9]["ItemChance"] = 1000
	tRebateStoreItem_RewandItem[3322942][1][9]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][9]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][9]["RewardHair"]["HairId"] = 31
	tRebateStoreItem_RewandItem[3322942][1][9]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 情人礼帽 - 5.00%
	tRebateStoreItem_RewandItem[3322942][1][10] = {}
	tRebateStoreItem_RewandItem[3322942][1][10]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][10]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3322942][1][10]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][10]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][10]["RewardHair"]["HairId"] = 32
	tRebateStoreItem_RewandItem[3322942][1][10]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 倾城之恋 - 5.00%
	tRebateStoreItem_RewandItem[3322942][1][11] = {}
	tRebateStoreItem_RewandItem[3322942][1][11]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322942][1][11]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3322942][1][11]["RewardHair"] = {}
	tRebateStoreItem_RewandItem[3322942][1][11]["RewardHair"]["SaveTime"] = 43200
	tRebateStoreItem_RewandItem[3322942][1][11]["RewardHair"]["HairId"] = 63
	tRebateStoreItem_RewandItem[3322942][1][11]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322942][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322942][1][11]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3322943] = {}
	-- ===浣石露
	-- ===索引: tRebateStoreItem_RewandItem[3322943]
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3322943]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3322943]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322943]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322943]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tRebateStoreItem_RewandItem[3322943]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tRebateStoreItem_RewandItem[3322943]["RewardNoNeedTip"] = 1
	tRebateStoreItem_RewandItem[3322943]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322943]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322943]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3322950] = {}
	-- ===30天翅膀随机包
	-- ===索引: tRebateStoreItem_RewandItem[3322950][1]
	-- ===删除:3322950,1
	-- ===
	tRebateStoreItem_RewandItem[3322950][1] = {}
	tRebateStoreItem_RewandItem[3322950][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3322950][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3322950][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3322950][1]["DeleteItem"][1]["Id"] = 3322950 -- 【库】 3322950 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3322950][1]["LogId"] = 12001535
	-- 99朵郁金香 - 20.00%
	tRebateStoreItem_RewandItem[3322950][1][1] = {}
	tRebateStoreItem_RewandItem[3322950][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322950][1][1]["ItemChance"] = 100
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardItem"][1]["Id"] = 754099 -- 99朵郁金香[754099][属性:8][叠加:0][金币:0], 【表格】99朵郁金香
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的99朵郁金香*1
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322950][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 99朵兰花 - 20.00%
	tRebateStoreItem_RewandItem[3322950][1][2] = {}
	tRebateStoreItem_RewandItem[3322950][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322950][1][2]["ItemChance"] = 3300
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardItem"][1]["Id"] = 753099 -- 99朵兰花[753099][属性:8][叠加:0][金币:0], 【表格】99朵兰花
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的99朵兰花*1
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322950][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 99朵百合花 - 20.00%
	tRebateStoreItem_RewandItem[3322950][1][3] = {}
	tRebateStoreItem_RewandItem[3322950][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322950][1][3]["ItemChance"] = 3300
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardItem"][1]["Id"] = 752099 -- 99朵百合花[752099][属性:8][叠加:0][金币:0], 【表格】99朵百合花
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的99朵百合花*1
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322950][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 99朵红玫瑰 - 20.00%
	tRebateStoreItem_RewandItem[3322950][1][4] = {}
	tRebateStoreItem_RewandItem[3322950][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322950][1][4]["ItemChance"] = 3300
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardItem"][1]["Id"] = 751099 -- 99朵红玫瑰[751099][属性:8][叠加:0][金币:0], 【表格】99朵红玫瑰
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的99朵红玫瑰*1
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322950][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 99朵玫瑰 - 20.00%
	tRebateStoreItem_RewandItem[3322950][1][5] = {}
	tRebateStoreItem_RewandItem[3322950][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3322950][1][5]["ItemChance"] = 0
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardItem"][1]["Id"] = 723459 -- 99朵玫瑰[723459][属性:0][叠加:0][金币:0], 【表格】99朵玫瑰
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的99朵玫瑰*1
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3322950][1][5]["RewardEffect"]["Effect"] = "angelwing"

	--30天怀旧武器可选包
	tRebateStoreItem_RewandItem[3323048] = {}
	tRebateStoreItem_RewandItem[3323048][1] = {}
	tRebateStoreItem_RewandItem[3323048][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][1]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][1]["RewardItem"][1]["Id"] = 370008
	tRebateStoreItem_RewandItem[3323048][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][1]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][1]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][2] = {}
	tRebateStoreItem_RewandItem[3323048][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][2]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][2]["RewardItem"][1]["Id"] = 350022
	tRebateStoreItem_RewandItem[3323048][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][2]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][2]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][3] = {}
	tRebateStoreItem_RewandItem[3323048][3]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][3]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][3]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][3]["RewardItem"][1]["Id"] = 380010
	tRebateStoreItem_RewandItem[3323048][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][3]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][3]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][4] = {}
	tRebateStoreItem_RewandItem[3323048][4]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][4]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][4]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][4]["RewardItem"][1]["Id"] = 360220
	tRebateStoreItem_RewandItem[3323048][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][4]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][4]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][5] = {}
	tRebateStoreItem_RewandItem[3323048][5]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][5]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][5]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][5]["RewardItem"][1]["Id"] = 360221
	tRebateStoreItem_RewandItem[3323048][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][5]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][5]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][6] = {}
	tRebateStoreItem_RewandItem[3323048][6]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][6]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][6]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][6]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][6]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][6]["RewardItem"][1]["Id"] = 360222
	tRebateStoreItem_RewandItem[3323048][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][6]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][6]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][7] = {}
	tRebateStoreItem_RewandItem[3323048][7]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][7]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][7]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][7]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][7]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][7]["RewardItem"][1]["Id"] = 360223
	tRebateStoreItem_RewandItem[3323048][7]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][7]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][7]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][8] = {}
	tRebateStoreItem_RewandItem[3323048][8]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][8]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][8]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][8]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][8]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][8]["RewardItem"][1]["Id"] = 360224
	tRebateStoreItem_RewandItem[3323048][8]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][8]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][8]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][8]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][9] = {}
	tRebateStoreItem_RewandItem[3323048][9]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][9]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][9]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][9]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][9]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][9]["RewardItem"][1]["Id"] = 360225
	tRebateStoreItem_RewandItem[3323048][9]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][9]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][9]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][9]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][10] = {}
	tRebateStoreItem_RewandItem[3323048][10]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][10]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][10]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][10]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][10]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][10]["RewardItem"][1]["Id"] = 360226
	tRebateStoreItem_RewandItem[3323048][10]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][10]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][10]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][10]["LogId"] =12001090
	tRebateStoreItem_RewandItem[3323048][11] = {}
	tRebateStoreItem_RewandItem[3323048][11]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323048][11]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][11]["DeleteItem"][1]["Id"] = 3323048
	tRebateStoreItem_RewandItem[3323048][11]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323048][11]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323048][11]["RewardItem"][1]["Id"] = 360227
	tRebateStoreItem_RewandItem[3323048][11]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRebateStoreItem_RewandItem[3323048][11]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323048][11]["RewardEffect"]["SzObj"] = "self"
	tRebateStoreItem_RewandItem[3323048][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tRebateStoreItem_RewandItem[3323048][11]["LogId"] =12001090
	
	tRebateStoreItem_RewandItem[3323482] = {}
	-- ===5星坐骑外套碎片（赠）
	-- ===索引: tRebateStoreItem_RewandItem[3323482][1]
	-- ===删除:3323482,20
	-- ===
	tRebateStoreItem_RewandItem[3323482][1] = {}
	tRebateStoreItem_RewandItem[3323482][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323482][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323482][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][1]["DeleteItem"][1]["Id"] = 3323482 -- 【库】 3323482 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323482][1]["DeleteItem"][1]["ItemNum"] = 20
	tRebateStoreItem_RewandItem[3323482][1]["LogId"] = 12001535
	-- CelestialDragon（Star）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323482][1][1] = {}
	tRebateStoreItem_RewandItem[3323482][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][1][1]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardItem"][1]["Id"] = 200646 -- 灵霄海龙【星辰版】[200646][属性:0][叠加:0][金币:0], 【表格】CelestialDragon（Star）*1
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑灵霄海龙【星辰版】（赠）*1
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- MythicBeast*1 - 20.00%
	tRebateStoreItem_RewandItem[3323482][1][2] = {}
	tRebateStoreItem_RewandItem[3323482][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][1][2]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardItem"][1]["Id"] = 200580 -- 玄冰圣兽[200580][属性:8][叠加:0][金币:0], 【表格】MythicBeast*1
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑玄冰圣兽（赠）*1
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- GentleAntelope[Exclusive]*1 - 20.00%
	tRebateStoreItem_RewandItem[3323482][1][3] = {}
	tRebateStoreItem_RewandItem[3323482][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][1][3]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardItem"][1]["Id"] = 200524 -- 至善神羚【羊年绝版】[200524][属性:0][叠加:0][金币:0], 【表格】GentleAntelope[Exclusive]*1
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑至善神羚【羊年绝版】（赠）*1
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- SoulChariot*1 - 20.00%
	tRebateStoreItem_RewandItem[3323482][1][4] = {}
	tRebateStoreItem_RewandItem[3323482][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][1][4]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardItem"][1]["Id"] = 200606 -- 灵魂战车[200606][属性:0][叠加:0][金币:0], 【表格】SoulChariot*1
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑灵魂战车（赠）*1
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- CelestialDragon（Freedom）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323482][1][5] = {}
	tRebateStoreItem_RewandItem[3323482][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][1][5]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardItem"][1]["Id"] = 205000 -- 御天神龙【逍遥版】[205000][属性:0][叠加:0][金币:0], 【表格】CelestialDragon（Freedom）*1
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑御天神龙【逍遥版】（赠）*1
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323482][2] = {}
	-- ===5星坐骑外套碎片（赠）
	-- ===索引: tRebateStoreItem_RewandItem[3323482][2]
	-- ===删除:3323482,1
	tRebateStoreItem_RewandItem[3323482][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323482][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323482][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][2]["DeleteItem"][1]["Id"] = 3323482 -- 【库】 3323482 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323482][2]["LogId"] = 12001535
	-- 5星坐骑外套碎片（赠） - 48.00%
	tRebateStoreItem_RewandItem[3323482][2][1] = {}
	tRebateStoreItem_RewandItem[3323482][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][2][1]["ItemChance"] = 4800
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardItem"][1]["Id"] = 3323482 --  3323482 【库里没有该物品】, 【表格】5星坐骑外套碎片（赠）
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3323482 【库里没有该物品】*2
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 52.00%
	tRebateStoreItem_RewandItem[3323482][2][2] = {}
	tRebateStoreItem_RewandItem[3323482][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323482][2][2]["ItemChance"] = 5200
	tRebateStoreItem_RewandItem[3323482][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323482][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323482][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323483] = {}
	-- ===5星时装外套碎片（赠）
	-- ===索引: tRebateStoreItem_RewandItem[3323483][1]
	-- ===删除:3323483,20
	-- ===
	tRebateStoreItem_RewandItem[3323483][1] = {}
	tRebateStoreItem_RewandItem[3323483][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323483][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323483][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][1]["DeleteItem"][1]["Id"] = 3323483 -- 【库】 3323483 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323483][1]["DeleteItem"][1]["ItemNum"] = 20
	tRebateStoreItem_RewandItem[3323483][1]["LogId"] = 12001535
	-- FlamingWarrior（Elite）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323483][1][1] = {}
	tRebateStoreItem_RewandItem[3323483][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][1][1]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardItem"][1]["Id"] = 195715 -- 勇霸天下·无双[195715][属性:0][叠加:0][金币:0], 【表格】FlamingWarrior（Elite）*1
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑勇霸天下·无双（赠）*1
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- CommanderRobe（Wealth）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323483][1][2] = {}
	tRebateStoreItem_RewandItem[3323483][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][1][2]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardItem"][1]["Id"] = 195575 -- 天蓬朱衣【鸿福】时装外套[195575][属性:8][叠加:0][金币:0], 【表格】CommanderRobe（Wealth）*1
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑天蓬朱衣【鸿福】时装外套（赠）*1
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- RockingRomance（Fantasy）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323483][1][3] = {}
	tRebateStoreItem_RewandItem[3323483][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][1][3]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardItem"][1]["Id"] = 195605 -- 浪漫进行时【梦幻版】[195605][属性:0][叠加:0][金币:0], 【表格】RockingRomance（Fantasy）*1
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑浪漫进行时【梦幻版】（赠）*1
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- StarSea（Hymn）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323483][1][4] = {}
	tRebateStoreItem_RewandItem[3323483][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][1][4]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardItem"][1]["Id"] = 195645 -- 魂梦星海·圣歌[195645][属性:0][叠加:0][金币:0], 【表格】StarSea（Hymn）*1
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑魂梦星海·圣歌（赠）*1
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- PokerMaster（Legend）*1 - 20.00%
	tRebateStoreItem_RewandItem[3323483][1][5] = {}
	tRebateStoreItem_RewandItem[3323483][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][1][5]["ItemChance"] = 2000
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardItem"][1]["Id"] = 195225 -- 卡牌大师【传奇版】[195225][属性:0][叠加:0][金币:0], 【表格】PokerMaster（Legend）*1
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑卡牌大师【传奇版】（赠）*1
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323483][2] = {}
	-- ===5星时装外套碎片（赠）
	-- ===索引: tRebateStoreItem_RewandItem[3323483][2]
	-- ===删除:3323483,1
	tRebateStoreItem_RewandItem[3323483][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323483][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323483][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][2]["DeleteItem"][1]["Id"] = 3323483 -- 【库】 3323483 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323483][2]["LogId"] = 12001535
	-- 5星时装外套碎片 - 48.00%
	tRebateStoreItem_RewandItem[3323483][2][1] = {}
	tRebateStoreItem_RewandItem[3323483][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][2][1]["ItemChance"] = 4800
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardItem"][1]["Id"] = 3323483 --  3323483 【库里没有该物品】, 【表格】5星时装外套碎片
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3323483 【库里没有该物品】*2
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 52.00%
	tRebateStoreItem_RewandItem[3323483][2][2] = {}
	tRebateStoreItem_RewandItem[3323483][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323483][2][2]["ItemChance"] = 5200
	tRebateStoreItem_RewandItem[3323483][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323483][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323483][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323484] = {}
	-- ===九天玄鸟碎片
	-- ===索引: tRebateStoreItem_RewandItem[3323484][1]
	-- ===删除: 3323484,50
	-- ===
	tRebateStoreItem_RewandItem[3323484][1] = {}
	tRebateStoreItem_RewandItem[3323484][1]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323484][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323484][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323484][1]["DeleteItem"][1]["Id"] = 3323484 -- 【库】 3323484 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323484][1]["DeleteItem"][1]["ItemNum"] = 50
	tRebateStoreItem_RewandItem[3323484][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323484][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323484][1]["RewardItem"][1]["Id"] = 200575 -- 九天玄鸟[200575][属性:9][叠加:0][金币:0], 【表格】九天玄鸟
	tRebateStoreItem_RewandItem[3323484][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑九天玄鸟*1
	tRebateStoreItem_RewandItem[3323484][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323484][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323484][1]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323484][2] = {}
	-- ===九天玄鸟碎片
	-- ===索引: tRebateStoreItem_RewandItem[3323484][2]
	-- ===删除: 3323484,1
	tRebateStoreItem_RewandItem[3323484][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323484][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323484][2]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323484][2]["DeleteItem"][1]["Id"] = 3323484 -- 【库】 3323484 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323484][2]["LogId"] = 12001535
	-- 九天玄鸟碎片 - 48.00%
	tRebateStoreItem_RewandItem[3323484][2][1] = {}
	tRebateStoreItem_RewandItem[3323484][2][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323484][2][1]["ItemChance"] = 4800
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardItem"][1]["Id"] = 3323484 --  3323484 【库里没有该物品】, 【表格】九天玄鸟碎片
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3323484 【库里没有该物品】*2
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323484][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 52.00%
	tRebateStoreItem_RewandItem[3323484][2][2] = {}
	tRebateStoreItem_RewandItem[3323484][2][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323484][2][2]["ItemChance"] = 5200
	tRebateStoreItem_RewandItem[3323484][2][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323484][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323484][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323485] = {}
	-- ===3天+6黄色神纹宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323485][1]
	-- ===删除:3323485,1
	-- ===
	tRebateStoreItem_RewandItem[3323485][1] = {}
	tRebateStoreItem_RewandItem[3323485][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323485][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1]["DeleteItem"][1]["Id"] = 3323485 -- 【库】 3323485 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323485][1]["LogId"] = 12001535
	-- 破玄元（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][1]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardItem"][1]["Id"] = 4030106 -- 破玄元(+6)[4030106][属性:8][叠加:0][金币:0], 【表格】破玄元（+6）
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的破玄元(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][2] = {}
	tRebateStoreItem_RewandItem[3323485][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][2]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardItem"][1]["Id"] = 4030206 -- 撼星诀(+6)[4030206][属性:8][叠加:0][金币:0], 【表格】撼星诀（+6）
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的撼星诀(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][3] = {}
	tRebateStoreItem_RewandItem[3323485][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][3]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardItem"][1]["Id"] = 4030306 -- 血回元(+6)[4030306][属性:8][叠加:0][金币:0], 【表格】血回元（+6）
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的血回元(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][4] = {}
	tRebateStoreItem_RewandItem[3323485][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][4]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardItem"][1]["Id"] = 4030406 -- 万物生(+6)[4030406][属性:8][叠加:0][金币:0], 【表格】万物生（+6）
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的万物生(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][5] = {}
	tRebateStoreItem_RewandItem[3323485][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][5]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardItem"][1]["Id"] = 4030506 -- 无懈可击(+6)[4030506][属性:8][叠加:0][金币:0], 【表格】无懈可击（+6）
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的无懈可击(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][6] = {}
	tRebateStoreItem_RewandItem[3323485][1][6]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][6]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardItem"][1]["Id"] = 4030606 -- 狂暴克星(+6)[4030606][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+6）
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的狂暴克星(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+6） - 5.90%
	tRebateStoreItem_RewandItem[3323485][1][7] = {}
	tRebateStoreItem_RewandItem[3323485][1][7]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][7]["ItemChance"] = 590
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardItem"][1]["Id"] = 4030706 -- 风卷残云(+6)[4030706][属性:8][叠加:0][金币:0], 【表格】风卷残云（+6）
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的风卷残云(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+6） - 5.90%
	tRebateStoreItem_RewandItem[3323485][1][8] = {}
	tRebateStoreItem_RewandItem[3323485][1][8]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][8]["ItemChance"] = 590
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardItem"][1]["Id"] = 4030806 -- 回灵术(+6)[4030806][属性:8][叠加:0][金币:0], 【表格】回灵术（+6）
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的回灵术(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][9] = {}
	tRebateStoreItem_RewandItem[3323485][1][9]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][9]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardItem"][1]["Id"] = 4030906 -- 杀破狼(+6)[4030906][属性:8][叠加:0][金币:0], 【表格】杀破狼（+6）
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的杀破狼(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][10] = {}
	tRebateStoreItem_RewandItem[3323485][1][10]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][10]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardItem"][1]["Id"] = 4031006 -- 追命(+6)[4031006][属性:8][叠加:0][金币:0], 【表格】追命（+6）
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的追命(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][11] = {}
	tRebateStoreItem_RewandItem[3323485][1][11]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][11]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardItem"][1]["Id"] = 4031106 -- 奔雷不息(+6)[4031106][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+6）
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的奔雷不息(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][12] = {}
	tRebateStoreItem_RewandItem[3323485][1][12]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][12]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardItem"][1]["Id"] = 4031206 -- 安魂定魄(+6)[4031206][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+6）
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的安魂定魄(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][13] = {}
	tRebateStoreItem_RewandItem[3323485][1][13]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][13]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardItem"][1]["Id"] = 4031306 -- 夺魂(+6)[4031306][属性:8][叠加:0][金币:0], 【表格】夺魂（+6）
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的夺魂(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][14] = {}
	tRebateStoreItem_RewandItem[3323485][1][14]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][14]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardItem"][1]["Id"] = 4033606 -- 狂暴净化(+6)[4033606][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+6）
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的狂暴净化(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][15] = {}
	tRebateStoreItem_RewandItem[3323485][1][15]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][15]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardItem"][1]["Id"] = 4033106 -- 怒海狂涛(+6)[4033106][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+6）
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的怒海狂涛(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][16] = {}
	tRebateStoreItem_RewandItem[3323485][1][16]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][16]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardItem"][1]["Id"] = 4033706 -- 饮血盛宴(+6)[4033706][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+6）
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的饮血盛宴(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+6） - 5.88%
	tRebateStoreItem_RewandItem[3323485][1][17] = {}
	tRebateStoreItem_RewandItem[3323485][1][17]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323485][1][17]["ItemChance"] = 588
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardItem"][1]["Id"] = 4033806 -- 生命汲取(+6)[4033806][属性:8][叠加:0][金币:0], 【表格】生命汲取（+6）
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的生命汲取(+6)*1
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323485][1][17]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323486] = {}
	-- ===1天+3稀有黄色神纹宝盒
	-- ===索引: tRebateStoreItem_RewandItem[3323486][1]
	-- ===删除:3323486,1
	-- ===
	tRebateStoreItem_RewandItem[3323486][1] = {}
	tRebateStoreItem_RewandItem[3323486][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRebateStoreItem_RewandItem[3323486][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1]["DeleteItem"][1]["Id"] = 3323486 -- 【库】 3323486 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323486][1]["LogId"] = 12001535
	-- 策马扬鞭（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][1]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][1]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardItem"][1]["Id"] = 4031403 -- 策马扬鞭(+3)[4031403][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+3）
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的策马扬鞭(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][2] = {}
	tRebateStoreItem_RewandItem[3323486][1][2]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][2]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardItem"][1]["Id"] = 4031503 -- 攻城掠地(+3)[4031503][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+3）
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的攻城掠地(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+3） - 4.00%
	tRebateStoreItem_RewandItem[3323486][1][3] = {}
	tRebateStoreItem_RewandItem[3323486][1][3]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][3]["ItemChance"] = 800
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardItem"][1]["Id"] = 4032003 -- 神罗天征(+3)[4032003][属性:8][叠加:0][金币:0], 【表格】神罗天征（+3）
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的神罗天征(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+3） - 4.00%
	tRebateStoreItem_RewandItem[3323486][1][4] = {}
	tRebateStoreItem_RewandItem[3323486][1][4]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][4]["ItemChance"] = 800
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardItem"][1]["Id"] = 4032103 -- 爆炎诀(+3)[4032103][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+3）
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的爆炎诀(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+3） - 8.00%
	tRebateStoreItem_RewandItem[3323486][1][5] = {}
	tRebateStoreItem_RewandItem[3323486][1][5]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][5]["ItemChance"] = 800
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardItem"][1]["Id"] = 4032203 -- 清心诀(+3)[4032203][属性:8][叠加:0][金币:0], 【表格】清心诀（+3）
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的清心诀(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+3） - 8.00%
	tRebateStoreItem_RewandItem[3323486][1][6] = {}
	tRebateStoreItem_RewandItem[3323486][1][6]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][6]["ItemChance"] = 800
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardItem"][1]["Id"] = 4032403 -- 祭灵诀(+3)[4032403][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+3）
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的祭灵诀(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+3） - 3.00%
	tRebateStoreItem_RewandItem[3323486][1][7] = {}
	tRebateStoreItem_RewandItem[3323486][1][7]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][7]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardItem"][1]["Id"] = 4032503 -- 横扫千军(+3)[4032503][属性:8][叠加:0][金币:0], 【表格】横扫千军（+3）
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的横扫千军(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+3） - 8.00%
	tRebateStoreItem_RewandItem[3323486][1][8] = {}
	tRebateStoreItem_RewandItem[3323486][1][8]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][8]["ItemChance"] = 800
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardItem"][1]["Id"] = 4032603 -- 涅槃重生(+3)[4032603][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+3）
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的涅槃重生(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+3） - 3.00%
	tRebateStoreItem_RewandItem[3323486][1][9] = {}
	tRebateStoreItem_RewandItem[3323486][1][9]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][9]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardItem"][1]["Id"] = 4032703 -- 锋芒毕露(+3)[4032703][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+3）
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的锋芒毕露(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+3） - 8.00%
	tRebateStoreItem_RewandItem[3323486][1][10] = {}
	tRebateStoreItem_RewandItem[3323486][1][10]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][10]["ItemChance"] = 800
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardItem"][1]["Id"] = 4032803 -- 魂兮归来(+3)[4032803][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+3）
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的魂兮归来(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+3） - 3.00%
	tRebateStoreItem_RewandItem[3323486][1][11] = {}
	tRebateStoreItem_RewandItem[3323486][1][11]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][11]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardItem"][1]["Id"] = 4031603 -- 玄武护体(+3)[4031603][属性:8][叠加:0][金币:0], 【表格】玄武护体（+3）
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的玄武护体(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][12] = {}
	tRebateStoreItem_RewandItem[3323486][1][12]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][12]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardItem"][1]["Id"] = 4032303 -- 天衣无缝(+3)[4032303][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+3）
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的天衣无缝(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][13] = {}
	tRebateStoreItem_RewandItem[3323486][1][13]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][13]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardItem"][1]["Id"] = 4032903 -- 例无虚发(+3)[4032903][属性:8][叠加:0][金币:0], 【表格】例无虚发（+3）
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的例无虚发(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][14] = {}
	tRebateStoreItem_RewandItem[3323486][1][14]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][14]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardItem"][1]["Id"] = 4033003 -- 审判(+3)[4033003][属性:8][叠加:0][金币:0], 【表格】审判（+3）
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的审判(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+3） - 3.00%
	tRebateStoreItem_RewandItem[3323486][1][15] = {}
	tRebateStoreItem_RewandItem[3323486][1][15]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][15]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardItem"][1]["Id"] = 4033903 -- 斗转星移(+3)[4033903][属性:8][叠加:0][金币:0], 【表格】斗转星移（+3）
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的斗转星移(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][16] = {}
	tRebateStoreItem_RewandItem[3323486][1][16]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][16]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardItem"][1]["Id"] = 4034003 -- 乾坤护法(+3)[4034003][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+3）
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的乾坤护法(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+3） - 5.00%
	tRebateStoreItem_RewandItem[3323486][1][17] = {}
	tRebateStoreItem_RewandItem[3323486][1][17]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][17]["ItemChance"] = 500
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardItem"][1]["Id"] = 4034103 -- 威慑(+3)[4034103][属性:8][叠加:0][金币:0], 【表格】威慑（+3）
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的威慑(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+3） - 3.00%
	tRebateStoreItem_RewandItem[3323486][1][18] = {}
	tRebateStoreItem_RewandItem[3323486][1][18]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][18]["ItemChance"] = 300
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardItem"][1]["Id"] = 4033403 -- 会心一击(+3)[4033403][属性:8][叠加:0][金币:0], 【表格】会心一击（+3）
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的会心一击(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+3） - 2.00%
	tRebateStoreItem_RewandItem[3323486][1][19] = {}
	tRebateStoreItem_RewandItem[3323486][1][19]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][19]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardItem"][1]["Id"] = 4033303 -- 致命准星(+3)[4033303][属性:8][叠加:0][金币:0], 【表格】致命准星（+3）
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的致命准星(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫气东来（+3） - 4.00%
	tRebateStoreItem_RewandItem[3323486][1][20] = {}
	tRebateStoreItem_RewandItem[3323486][1][20]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][20]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardItem"][1]["Id"] = 4035203 -- 紫气东来(+3)[4035203][属性:8][叠加:0][金币:0], 【表格】紫气东来（+3）
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的紫气东来(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 天行有常（+3） - 4.00%
	tRebateStoreItem_RewandItem[3323486][1][21] = {}
	tRebateStoreItem_RewandItem[3323486][1][21]["RandomItemChanceType"] = 2
	tRebateStoreItem_RewandItem[3323486][1][21]["ItemChance"] = 200
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardItem"][1]["Id"] = 4035103 -- 天行有常(+3)[4035103][属性:8][叠加:0][金币:0], 【表格】天行有常（+3）
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的天行有常(+3)*1
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323486][1][21]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3323487] = {}
	-- ===真气礼包*10礼盒
	-- ===索引: tRebateStoreItem_RewandItem[3323487]
	-- ===删除: 3323487,1
	-- ===
	tRebateStoreItem_RewandItem[3323487]["LogId"] = 12001535
	tRebateStoreItem_RewandItem[3323487]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3323487]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3323487]["DeleteItem"][1]["Id"] = 3323487 -- 【库】 3323487 【库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3323487]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3323487]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3323487]["RewardItem"][1]["Id"] = 3006542 -- 真气礼包[3006542][属性:9][叠加:10000][金币:0], 【表格】真气礼包
	tRebateStoreItem_RewandItem[3323487]["RewardItem"][1]["Attr"] = "0 10" -- 真气礼包*10
	tRebateStoreItem_RewandItem[3323487]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3323487]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3323487]["RewardEffect"]["Effect"] = "angelwing"

	-- ===秘术精华礼包
	-- ===索引:tRebateStoreItem_RewandItem[3330830]
	-- ===删除: 3330830,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330830] = {}
	tRebateStoreItem_RewandItem[3330830]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330830]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330830]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330830]["DeleteItem"][1]["Id"] = 3330830 -- 【库】 3330830 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330830]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330830]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330830]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*10
	tRebateStoreItem_RewandItem[3330830]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tRebateStoreItem_RewandItem[3330830]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330830]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330830]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3330831] = {}
	-- ===秘术精华礼包
	-- ===索引:tRebateStoreItem_RewandItem[3330831]
	-- ===删除: 3330831,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330831]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330831]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330831]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330831]["DeleteItem"][1]["Id"] = 3330831 -- 【库】 3330831 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330831]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330831]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330831]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*30
	tRebateStoreItem_RewandItem[3330831]["RewardItem"][1]["Attr"] = "0 30" -- 秘术精华*30（[错误]物品数量超10个）
	tRebateStoreItem_RewandItem[3330831]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330831]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330831]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3330832] = {}
	-- ===血狱花礼包
	-- ===索引:tRebateStoreItem_RewandItem[3330832]
	-- ===删除: 3330832,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330832]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330832]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330832]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330832]["DeleteItem"][1]["Id"] = 3330832 -- 【库】 3330832 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330832]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330832]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330832]["RewardItem"][1]["Id"] = 3327203 -- 血狱花[3327203][属性:8][叠加:10000][金币:0], 【表格】血狱花*40
	tRebateStoreItem_RewandItem[3330832]["RewardItem"][1]["Attr"] = "0 40 3" -- 血狱花（赠）*40（[错误]物品数量超10个）
	tRebateStoreItem_RewandItem[3330832]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330832]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330832]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3330833] = {}
	tRebateStoreItem_RewandItem[3330833][1] = {}
	-- ===2洞+6-5忍者衣服*1
	-- ===索引:tRebateStoreItem_RewandItem[3330833][1]
	-- ===删除: 3330833,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330833][1]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330833][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330833][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330833][1]["DeleteItem"][1]["Id"] = 3330833 -- 【库】 3330833 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330833][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330833][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330833][1]["RewardItem"][1]["Id"] = 135009 -- 下忍服[135009][属性:0][叠加:0][金币:390], 【表格】2洞+6-5忍者衣服*1
	tRebateStoreItem_RewandItem[3330833][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255" -- 5%神佑（追加+6）下忍服（赠）*1
	tRebateStoreItem_RewandItem[3330833][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330833][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330833][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3330833][2] = {}
	-- ===2洞+6-5忍者衣服*1
	-- ===索引:tRebateStoreItem_RewandItem[3330833][2]
	-- ===删除: 3330833,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330833][2]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330833][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330833][2]["DeleteItem"][2] = {}
	tRebateStoreItem_RewandItem[3330833][2]["DeleteItem"][2]["Id"] = 3330833 -- 【库】 3330833 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330833][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330833][2]["RewardItem"][2] = {}
	tRebateStoreItem_RewandItem[3330833][2]["RewardItem"][2]["Id"] = 135009 -- 下忍服[135009][属性:0][叠加:0][金币:390], 【表格】2洞+6-5忍者衣服*1
	tRebateStoreItem_RewandItem[3330833][2]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255" -- 5%神佑（追加+6）下忍服（赠）*1
	tRebateStoreItem_RewandItem[3330833][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330833][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330833][2]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3330834] = {}
	tRebateStoreItem_RewandItem[3330834][1] = {}
	-- ===2洞+6-5忍者头*1
	-- ===索引:tRebateStoreItem_RewandItem[3330834][1]
	-- ===删除: 3330834,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330834][1]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330834][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330834][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330834][1]["DeleteItem"][1]["Id"] = 3330834 -- 【库】 3330834 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330834][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330834][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330834][1]["RewardItem"][1]["Id"] = 123029 -- 红棉护额[123029][属性:0][叠加:0][金币:500], 【表格】2洞+6-5忍者衣服*1
	tRebateStoreItem_RewandItem[3330834][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255" -- 5%神佑（追加+6）红棉护额（赠）*1
	tRebateStoreItem_RewandItem[3330834][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330834][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330834][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3330834][2] = {}
	-- ===2洞+6-5忍者头*1
	-- ===索引:tRebateStoreItem_RewandItem[3330834][2]
	-- ===删除: 3330834,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330834][2]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330834][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330834][2]["DeleteItem"][2] = {}
	tRebateStoreItem_RewandItem[3330834][2]["DeleteItem"][2]["Id"] = 3330834 -- 【库】 3330834 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330834][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330834][2]["RewardItem"][2] = {}
	tRebateStoreItem_RewandItem[3330834][2]["RewardItem"][2]["Id"] = 123029 -- 红棉护额[123029][属性:0][叠加:0][金币:500], 【表格】2洞+6-5忍者衣服*1
	tRebateStoreItem_RewandItem[3330834][2]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255" -- 5%神佑（追加+6）红棉护额（赠）*1
	tRebateStoreItem_RewandItem[3330834][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330834][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330834][2]["RewardEffect"]["Effect"] = "angelwing"

	tRebateStoreItem_RewandItem[3330835] = {}
	tRebateStoreItem_RewandItem[3330835][1] = {}
	-- ===2洞+8-7忍者衣服*1
	-- ===索引:tRebateStoreItem_RewandItem[3330835][1]
	-- ===删除: 3330835,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330835][1]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330835][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330835][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330835][1]["DeleteItem"][1]["Id"] = 3330835 -- 【库】 3330835 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330835][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330835][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330835][1]["RewardItem"][1]["Id"] = 135009 -- 下忍服[135009][属性:0][叠加:0][金币:390], 【表格】2洞+8-7忍者衣服*1
	tRebateStoreItem_RewandItem[3330835][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 0 0 8 255 255" -- 7%神佑（追加+8）下忍服（赠）*1
	tRebateStoreItem_RewandItem[3330835][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330835][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330835][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3330835][2] = {}
	-- ===2洞+8-7忍者衣服*1
	-- ===索引:tRebateStoreItem_RewandItem[3330835][2]
	-- ===删除: 3330835,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330835][2]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330835][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330835][2]["DeleteItem"][2] = {}
	tRebateStoreItem_RewandItem[3330835][2]["DeleteItem"][2]["Id"] = 3330835 -- 【库】 3330835 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330835][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330835][2]["RewardItem"][2] = {}
	tRebateStoreItem_RewandItem[3330835][2]["RewardItem"][2]["Id"] = 135009 -- 下忍服[135009][属性:0][叠加:0][金币:390], 【表格】2洞+8-7忍者衣服*1
	tRebateStoreItem_RewandItem[3330835][2]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255" -- 7%神佑（追加+8）下忍服（赠）*1
	tRebateStoreItem_RewandItem[3330835][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330835][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330835][2]["RewardEffect"]["Effect"] = "angelwing"




	tRebateStoreItem_RewandItem[3330836] = {}
	tRebateStoreItem_RewandItem[3330836][1] = {}
	-- ===2洞+8-7忍者头*1
	-- ===索引:tRebateStoreItem_RewandItem[3330836][1]
	-- ===删除: 3330836,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330836][1]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330836][1]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330836][1]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330836][1]["DeleteItem"][1]["Id"] = 3330836 -- 【库】 3330836 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330836][1]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330836][1]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330836][1]["RewardItem"][1]["Id"] = 123029 -- 红棉护额[123029][属性:0][叠加:0][金币:500], 【表格】2洞+8-7忍者衣服*1
	tRebateStoreItem_RewandItem[3330836][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 0 0 8 255 255" -- 7%神佑（追加+8）红棉护额（赠）*1
	tRebateStoreItem_RewandItem[3330836][1]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330836][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330836][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tRebateStoreItem_RewandItem[3330836][2] = {}
	-- ===2洞+8-7忍者头*1
	-- ===索引:tRebateStoreItem_RewandItem[3330836][2]
	-- ===删除: 3330836,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330836][2]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330836][2]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330836][2]["DeleteItem"][2] = {}
	tRebateStoreItem_RewandItem[3330836][2]["DeleteItem"][2]["Id"] = 3330836 -- 【库】 3330836 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330836][2]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330836][2]["RewardItem"][2] = {}
	tRebateStoreItem_RewandItem[3330836][2]["RewardItem"][2]["Id"] = 123029 -- 红棉护额[123029][属性:0][叠加:0][金币:500], 【表格】2洞+8-7忍者衣服*1
	tRebateStoreItem_RewandItem[3330836][2]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255" -- 7%神佑（追加+8）红棉护额（赠）*1
	tRebateStoreItem_RewandItem[3330836][2]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330836][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330836][2]["RewardEffect"]["Effect"] = "angelwing"
	
	

	tRebateStoreItem_RewandItem[3330837] = {}
	-- ===五星永久赠神佑1吃鸡外套
	-- ===索引:tRebateStoreItem_RewandItem[3330837]
	-- ===删除: 3330837,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330837]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330837]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330837]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330837]["DeleteItem"][1]["Id"] = 3330837 -- 【库】 3330837 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330837]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330837]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330837]["RewardItem"][1]["Id"] = 196195 -- 绝地求生·军神[196195][属性:0][叠加:0][金币:0], 【表格】五星永久赠神佑1吃鸡外套*1
	tRebateStoreItem_RewandItem[3330837]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑绝地求生·军神（赠）*1
	tRebateStoreItem_RewandItem[3330837]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330837]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330837]["RewardEffect"]["Effect"] = "angelwing"


	tRebateStoreItem_RewandItem[3330838] = {}
	-- ===九转乾坤露
	-- ===索引:tRebateStoreItem_RewandItem[3330838]
	-- ===删除: 3330838,1
	-- ===
	-- ===
	tRebateStoreItem_RewandItem[3330838]["LogId"] = 12000400
	tRebateStoreItem_RewandItem[3330838]["DeleteItem"] = {}
	tRebateStoreItem_RewandItem[3330838]["DeleteItem"][1] = {}
	tRebateStoreItem_RewandItem[3330838]["DeleteItem"][1]["Id"] = 3330838 -- 【库】 3330838 【cnzf7库里没有该物品】[属性:]
	tRebateStoreItem_RewandItem[3330838]["RewardItem"] = {}
	tRebateStoreItem_RewandItem[3330838]["RewardItem"][1] = {}
	tRebateStoreItem_RewandItem[3330838]["RewardItem"][1]["Id"] = 711083 -- 乾坤九转神露[711083][属性:8][叠加:10][金币:0], 【表格】九转乾坤露*3
	tRebateStoreItem_RewandItem[3330838]["RewardItem"][1]["Attr"] = "0 3 3" -- 乾坤九转神露（赠）*3
	tRebateStoreItem_RewandItem[3330838]["RewardEffect"] = {}
	tRebateStoreItem_RewandItem[3330838]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRebateStoreItem_RewandItem[3330838]["RewardEffect"]["Effect"] = "angelwing"



	
	local tRebateStoreItem_Log = {}
	tRebateStoreItem_Log["UseAftiaItem"] = "0,0,%d,0,12001535,2,%s,1"
------------------------------------------物品逻辑-----------------------------------------
function RebateStoreItem_OpenArtifactBox(nItemId)
	
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace =  WarriorsPromotion_JudgeSpace(nItemId) + 1
	
	if (tMemoryBin == nil and nReturnMoney == nil) or (not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"])) then

		if User_CheckLeftSpace(nSpace) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				
				local nFlag,tReward = Probabil_RandomAward(tRebateStoreItem_GoldAttributeNum[nItemId],5)
				local nGoldAttrNum = tReward[1]["tAward"][1]["Item_1"]
				
				
				local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,5,0,0,nGoldAttrNum,0)
				local sItemName = Get_ItemtypeName(nXuanBaoId)
				Sys_MsgBox(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
				User_TalkChannel2005(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
				
				local sStr1 = Get_ItemData1(nItem)
				local sStr2 = Get_ItemData2(nItem)
				local sStr3 = Get_ItemData3(nItem)
				local sStr4 = Get_ItemData4(nItem)
				local sStr5 = Get_ItemData5(nItem)
				local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
				WarriorsPromotion_JudgeNinjaItem(nItemId)
				Sys_SaveActionFestivalLog(string.format(tRebateStoreItem_Log["UseAftiaItem"],nItemId,sAttr))
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		-- 有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) and CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
			
				
				local nFlag,tReward = Probabil_RandomAward(tRebateStoreItem_GoldAttributeNum[nItemId],5)
				local nGoldAttrNum = tReward[1]["tAward"][1]["Item_1"]
				
				
				local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,5,0,0,nGoldAttrNum,0)
				local sItemName = Get_ItemtypeName(nXuanBaoId)
				Sys_MsgBox(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
				User_TalkChannel2005(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
				
				local sStr1 = Get_ItemData1(nItem)
				local sStr2 = Get_ItemData2(nItem)
				local sStr3 = Get_ItemData3(nItem)
				local sStr4 = Get_ItemData4(nItem)
				local sStr5 = Get_ItemData5(nItem)
				local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
				WarriorsPromotion_JudgeNinjaItem(nItemId)
				Sys_SaveActionFestivalLog(string.format(tRebateStoreItem_Log["UseAftiaItem"],nItemId,sAttr))
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
end
 
 --50个合成
 function RebateStoreItem_UseItem(nItemId)
	--判断物品是否存在
	if not Item_ChkMulItem(nItemId, nItemId, 50) then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"][nItemId])
		return
	end
	RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId][1])
 end
 
 
function RebateStoreItem_RomUseItem(nItemId)
	--判断物品是否存在
	if not Item_ChkMulItem(nItemId, nItemId, 20) then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"][nItemId])
		return
	end
	
	RewardTemplate_RandomReward(tRebateStoreItem_RewandItem[nItemId],1)
 end
 
function RebateStoreItem__UseOneDebris(nItemId)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	
	local tNewReward,sRewardStr = RewardTemplate_RandomReward(tRebateStoreItem_RewandItem[nItemId],2)
	
	if tNewReward[1]["tAward"][1]["RewardItem"] == nil then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"]["false"])
	end
	
end
 
function RebateStoreItem_UseItemBag(nItemId,nIndex,nSex)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	-- 性别判断
	local nUserSex = Get_UserSex(nUserId)
	
	if nSex ~=nil and nUserSex ~= nSex then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"]["Sex"])
		return
	end
	
	
	RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId][nIndex])
	local sText = tRebateStoreItem_Text["ItemName"][nItemId][nIndex]
	
	if nIndex ~= 7 then
		User_TalkChannel2005(string.format(tRebateStoreItem_Text["ItemName"]["Talk"],sText))
	end
end

function RebateStoreItem_WashGift(nItemId)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nGiftId = tRebateStoreItem_Cont["GiftItemId"]
	
	if not Item_ChkMulItem(nGiftId,nGiftId,1,2,0,nUserId) then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"]["NoItem"])
		return 
	end
	
	if Item_DelItem(nItemId) and Item_DelMulItem(nGiftId,nGiftId,1,2,0,nUserId) then
		RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId])
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"]["Reward"])
	end
	
end

function RebateStoreItem_ItemChoose(nItemId, nIndex)
	if tRebateStoreItem_RewandItem[nItemId] == nil then
		return
	end
	
	if tRebateStoreItem_RewandItem[nItemId][nIndex] == nil then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tRebateStoreItem_RewandItem[nItemId][nIndex])
end

function RebateStoreItem_NewItemChoose(nItemId, nIndex)
	if tRebateStoreItem_RewandItem[nItemId] == nil then
		return
	end
	
	if SpecialServer_ChkNoGiftServer() or SpecialServer_ChkGreenServer() then
		
		RewardTemplate_UseItemAndMsg(tRebateStoreItem_RewandItem[nItemId][2][nIndex])
	else
		RewardTemplate_UseItemAndMsg(tRebateStoreItem_RewandItem[nItemId][1][nIndex])
	end
end


function RebateStoreItem_ItemChooseWind(nItemId,nIndex,nSex)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	-- 性别判断
	local nUserSex = Get_UserSex(nUserId)
	
	if nSex ~=nil and nUserSex ~= nSex then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"]["Sex"])
		return
	end
	
	
	RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId][nIndex])
	local sText = tRebateStoreItem_Text["ItemName"][nItemId][nIndex]
	
	User_TalkChannel2005(string.format(tRebateStoreItem_Text["ItemName"]["DayTalk"],sText))

end

------------------------------------------物品模板-----------------------------------------
tItem[3322937] = tItem[3322937] or {}
tItem[3322937]["Function"] = function (nItemId,sItemName)
	if User_JudgeLevelAndMetempsychosis(tRebateStoreItem_Cont["nLevel"],tRebateStoreItem_Cont["nMetempsychosis"]) then 
		RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId])
	else
		User_TalkChannel2005(tStandardize_RewardPoolProps_Text["DonateLevelLimit"])
		return
	end
end
tItem[3322760] = tItem[3322937] or {}
tItem[3322761] = tItem[3322937] or {}
tItem[3322762] = tItem[3322937] or {}
tItem[3322813] = tItem[3322937] or {}
tItem[3322944] = tItem[3322937] or {}


tItem[3322763] = tItem[3322763] or {}
tItem[3322763]["Function"] = function (nItemId,sItemName)
	RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId])
end
tItem[3322764] = tItem[3322763] or {}
tItem[3322765] = tItem[3322763] or {}
tItem[3322766] = tItem[3322763] or {}
tItem[3322767] = tItem[3322763] or {}
tItem[3322768] = tItem[3322763] or {}
tItem[3322769] = tItem[3322763] or {}
tItem[3322770] = tItem[3322763] or {}
tItem[3322771] = tItem[3322763] or {}
tItem[3322772] = tItem[3322763] or {}
tItem[3322776] = tItem[3322763] or {}
tItem[3322777] = tItem[3322763] or {}
tItem[3322811] = tItem[3322763] or {}
tItem[3323034] = tItem[3322763] or {}
tItem[3323036] = tItem[3322763] or {}
tItem[3323037] = tItem[3322763] or {}
tItem[3323038] = tItem[3322763] or {}
tItem[3323039] = tItem[3322763] or {}
tItem[3323045] = tItem[3322763] or {}
tItem[3323047] = tItem[3322763] or {}
tItem[3323487] = tItem[3322763] or {}
tItem[3330830] = tItem[3322763] or {}
tItem[3330831] = tItem[3322763] or {}
tItem[3330832] = tItem[3322763] or {}
tItem[3330837] = tItem[3322763] or {}
tItem[3330838] = tItem[3322763] or {}


tItem[3330833] = tItem[3330833] or {}
tItem[3330833]["Function"] = function (nItemId,sItemName)
	if SpecialServer_ChkNoGiftServer()  or SpecialServer_ChkGreenServer() then
		RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId][2])
	else
		RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId][1])
	end
end
tItem[3330834] = tItem[3330833] or {}
tItem[3330835] = tItem[3330833] or {}
tItem[3330836] = tItem[3330833] or {}

tItem[3322773] = tItem[3322773] or {}
tItem[3322773]["Function"] = function (nItemId,sItemName)
	RebateStoreItem_OpenArtifactBox(nItemId)
end
tItem[3322774] = tItem[3322773] or {}

tItem[3322775] = tItem[3322775] or {}
tItem[3322775]["Function"] = function (nItemId,sItemName)
	User_OpenDialog(1001)
end

tItem[3322818] = tItem[3322818] or {}
tItem[3322818]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local flat,tNum = Probabil_RandomAward(tRebateStoreItem_RandomItemProperty[3322818],1) 
	local nIndex = tNum[1]["tAward"][1]["Item"]
	
	RewardTemplate_RandomReward(tRebateStoreItem_RewandItem[nItemId],nIndex)
end

tItem[3322940] = tItem[3322940] or {}
tItem[3322940]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	local nUserSex = Get_UserSex(nUserId)
	
	local tNewReward,sRewardStr = RewardTemplate_RandomReward(tRebateStoreItem_RewandItem[nItemId],nUserSex)
	
	local nTitleId = tNewReward[1]["tAward"][1]["RewardTitle"]["TitleId"]
	local sText = tRebateStoreItem_Text["ItemName"][nTitleId]
	User_TalkChannel2005(string.format(tRebateStoreItem_Text["ItemName"]["Talk"],sText))
	
	
end

tItem[3322941] = tItem[3322941] or {}
tItem[3322941]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local tNewReward,sRewardStr = RewardTemplate_RandomReward(tRebateStoreItem_RewandItem[nItemId],1)
	local nTitleId = tNewReward[1]["tAward"][1]["RewardWing"]["TitleId"]
	local sText = tRebateStoreItem_Text["ItemName"][nTitleId]
	User_TalkChannel2005(string.format(tRebateStoreItem_Text["ItemName"]["Talk"],sText))
	
end

tItem[3322942] = tItem[3322942] or {}
tItem[3322942]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local flat,tNum = Probabil_RandomAward(tRebateStoreItem_RewandItem[nItemId],1) 
	local nHairId = tNum[1]["tAward"][1]["RewardHair"]["HairId"]
	local nTime = tNum[1]["tAward"][1]["RewardHair"]["SaveTime"]
	
	User_HairFaceAward(0,nHairId,nTime,nUserId)
	local sText = tRebateStoreItem_Text["HairName"][nHairId]
	User_TalkChannel2005(string.format(tRebateStoreItem_Text["ItemName"]["Talk"],sText))
	
	
	
end

tItem[3322943] = tItem[3322943] or {}
tItem[3322943]["Function"] = function(nItemId,sItemName)
	
	RebateStoreItem_WashGift(nItemId)
end
-- 
tItemFace[3322812] = 2447
tItem[3322812] = tItem[3322812] or {}
tItem[3322812]["OptionHidden"] = 1
tItem[3322812]["DialogueText"] = tRebateStoreItem_Text[3322812]

tItem[3322812]["Text1-1"] = {111,112,113,114,115}
tItem[3322812]["tOption1-1"] = {111,112}
tItem[3322812]["OptionFunc111"]="RebateStoreItem_UseItem</N>3322812"
tItem[3322812]["OptionFunc112"]="RebateStoreItem__UseOneDebris</N>3322812"

tItemFace[3323044] = 2464
tItem[3323044] = tItem[3323044] or {}
tItem[3323044]["OptionHidden"] = 1
tItem[3323044]["DialogueText"] = tRebateStoreItem_Text[3323044]

tItem[3323044]["Text1-1"] = {111,112,113}
tItem[3323044]["tOption1-1"] = {111,112}
tItem[3323044]["OptionFunc111"]="RebateStoreItem_UseItem</N>3323044"
tItem[3323044]["OptionFunc112"]="RebateStoreItem__UseOneDebris</N>3323044"

tItemFace[3322816] = 2448
tItem[3322816] = tItem[3322816] or {}
tItem[3322816]["OptionHidden"] = 1
tItem[3322816]["DialogueText"] = tRebateStoreItem_Text[3322816]

tItem[3322816]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3322816]["tOption1-1"] = {111,112,113,114,115,116,117}
tItem[3322816]["OptionFunc111"]="RebateStoreItem_UseItemBag</N>3322816</N>1"
tItem[3322816]["OptionFunc112"]="RebateStoreItem_UseItemBag</N>3322816</N>2"
tItem[3322816]["OptionFunc113"]="RebateStoreItem_UseItemBag</N>3322816</N>3</N>1"
tItem[3322816]["OptionFunc114"]="RebateStoreItem_UseItemBag</N>3322816</N>4</N>1"
tItem[3322816]["OptionFunc115"]="RebateStoreItem_UseItemBag</N>3322816</N>5</N>2"
tItem[3322816]["OptionFunc116"]="RebateStoreItem_UseItemBag</N>3322816</N>6</N>2"
tItem[3322816]["OptionFunc117"]="RebateStoreItem_UseItemBag</N>3322816</N>7"

tItemFace[3322817] = 2449
tItem[3322817] = tItem[3322817] or {}
tItem[3322817]["OptionHidden"] = 1
tItem[3322817]["DialogueText"] = tRebateStoreItem_Text[3322817]

tItem[3322817]["Text1-1"] = {111,112,113,116,117}
tItem[3322817]["tOption1-1"] = {111,112,116,117}
tItem[3322817]["OptionFunc111"]="RebateStoreItem_UseItemBag</N>3322817</N>1"
tItem[3322817]["OptionFunc112"]="RebateStoreItem_UseItemBag</N>3322817</N>2"
tItem[3322817]["OptionFunc113"]="RebateStoreItem_UseItemBag</N>3322817</N>3"
tItem[3322817]["OptionFunc114"]="RebateStoreItem_UseItemBag</N>3322817</N>4"
tItem[3322817]["OptionFunc115"]="RebateStoreItem_UseItemBag</N>3322817</N>5"
tItem[3322817]["OptionFunc116"]="RebateStoreItem_UseItemBag</N>3322817</N>6"
tItem[3322817]["OptionFunc117"]="RebateStoreItem_UseItemBag</N>3322817</N>7"

tItem[3322820] = tItem[3322820] or {}
tItem[3322820]["Function"] = function (nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkMulItem(nItemId, nItemId, 50) then
		User_TalkChannel2005(tRebateStoreItem_Text["TalkChannel"]["NONum1"])
		return
	end
	RewardTemplate_UseItem(tRebateStoreItem_RewandItem[nItemId])
end

tItem[3322950] = tItem[3322950] or {}
tItem[3322950]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_RandomReward(tRebateStoreItem_RewandItem[nItemId],1)
end
tItem[3323485] = tItem[3322950] or {}
tItem[3323486] = tItem[3322950] or {}

tItemFace[3323041] = 1532
tItem[3323041] = tItem[3323041] or {}
tItem[3323041]["OptionHidden"] = 1
tItem[3323041]["DialogueText"] = tRebateStoreItem_Text[3323041]

tItem[3323041]["Text1-1"] = {111}
tItem[3323041]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3323041]["OptionFunc111"]="RebateStoreItem_ItemChooseWind</N>3323041</N>1"
tItem[3323041]["OptionFunc112"]="RebateStoreItem_ItemChooseWind</N>3323041</N>2"
tItem[3323041]["OptionFunc113"]="RebateStoreItem_ItemChooseWind</N>3323041</N>3</N>1"
tItem[3323041]["OptionFunc114"]="RebateStoreItem_ItemChooseWind</N>3323041</N>4</N>1"
tItem[3323041]["OptionFunc115"]="RebateStoreItem_ItemChooseWind</N>3323041</N>5</N>2"
tItem[3323041]["OptionFunc116"]="RebateStoreItem_ItemChooseWind</N>3323041</N>6</N>2"


tItemFace[3323042] = 1930
tItem[3323042] = tItem[3323042] or {}
tItem[3323042]["OptionHidden"] = 1
tItem[3323042]["DialogueText"] = tRebateStoreItem_Text[3323042]

tItem[3323042]["Text1-1"] = {111,112,113,116,117}
tItem[3323042]["tOption1-1"] = {111,112,113,114}
tItem[3323042]["OptionFunc111"]="RebateStoreItem_ItemChooseWind</N>3323042</N>1"
tItem[3323042]["OptionFunc112"]="RebateStoreItem_ItemChooseWind</N>3323042</N>2"
tItem[3323042]["OptionFunc113"]="RebateStoreItem_ItemChooseWind</N>3323042</N>3"
tItem[3323042]["OptionFunc114"]="RebateStoreItem_ItemChooseWind</N>3323042</N>4"


--30天怀旧武器可选包
tItemFace[3323035] = 2289
tItem[3323035] = tItem[3323035] or {}
tItem[3323035]["DialogueText"] = tRebateStoreItem_Text[3323035]
tItem[3323035]["Text1-1"] = {111}
tItem[3323035]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tItem[3323035]["OptionFunc111"] = "RebateStoreItem_NewItemChoose</N>3323035</N>1"
tItem[3323035]["OptionFunc112"] = "RebateStoreItem_NewItemChoose</N>3323035</N>2"
tItem[3323035]["OptionFunc113"] = "RebateStoreItem_NewItemChoose</N>3323035</N>3"
tItem[3323035]["OptionFunc114"] = "RebateStoreItem_NewItemChoose</N>3323035</N>4"
tItem[3323035]["OptionFunc115"] = "RebateStoreItem_NewItemChoose</N>3323035</N>5"

tItemFace[3323043] = 2463
tItem[3323043] = tItem[3323043] or {}
tItem[3323043]["DialogueText"] = tRebateStoreItem_Text[3323043]
tItem[3323043]["Text1-1"] = {111}
tItem[3323043]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tItem[3323043]["OptionFunc111"] = "RebateStoreItem_ItemChoose</N>3323043</N>1"
tItem[3323043]["OptionFunc112"] = "RebateStoreItem_ItemChoose</N>3323043</N>2"
tItem[3323043]["OptionFunc113"] = "RebateStoreItem_ItemChoose</N>3323043</N>3"
tItem[3323043]["OptionFunc114"] = "RebateStoreItem_ItemChoose</N>3323043</N>4"
tItem[3323043]["OptionFunc115"] = "RebateStoreItem_ItemChoose</N>3323043</N>5"

--30天怀旧武器可选包
tItemFace[3323048] = 2281
tItem[3323048] = tItem[3323048] or {}
tItem[3323048]["DialogueText"] = tRebateStoreItem_Text[3323048]
tItem[3323048]["Text1-1"] = {111}
tItem[3323048]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tItem[3323048]["OptionFunc111"] = "RebateStoreItem_ItemChoose</N>3323048</N>1"
tItem[3323048]["OptionFunc112"] = "RebateStoreItem_ItemChoose</N>3323048</N>2"
tItem[3323048]["OptionFunc113"] = "RebateStoreItem_ItemChoose</N>3323048</N>3"
tItem[3323048]["OptionFunc114"] = "RebateStoreItem_ItemChoose</N>3323048</N>4"
tItem[3323048]["OptionFunc115"] = "RebateStoreItem_ItemChoose</N>3323048</N>5"
tItem[3323048]["OptionFunc116"] = "RebateStoreItem_ItemChoose</N>3323048</N>6"
tItem[3323048]["OptionFunc117"] = "RebateStoreItem_ItemChoose</N>3323048</N>7"
tItem[3323048]["OptionFunc118"] = "RebateStoreItem_ItemChoose</N>3323048</N>8"
tItem[3323048]["OptionFunc119"] = "RebateStoreItem_ItemChoose</N>3323048</N>9"
tItem[3323048]["OptionFunc1110"] = "RebateStoreItem_ItemChoose</N>3323048</N>10"
tItem[3323048]["OptionFunc1111"] = "RebateStoreItem_ItemChoose</N>3323048</N>11"

tItemFace[3323484] = 2491
tItem[3323484] = tItem[3323484] or {}
tItem[3323484]["OptionHidden"] = 1
tItem[3323484]["DialogueText"] = tRebateStoreItem_Text[3323484]

tItem[3323484]["Text1-1"] = {111,112}
tItem[3323484]["tOption1-1"] = {111,112}
tItem[3323484]["OptionFunc111"]="RebateStoreItem_UseItem</N>3323484"
tItem[3323484]["OptionFunc112"]="RebateStoreItem__UseOneDebris</N>3323484"

tItemFace[3323482] = 2492
tItem[3323482] = tItem[3323482] or {}
tItem[3323482]["OptionHidden"] = 1
tItem[3323482]["DialogueText"] = tRebateStoreItem_Text[3323482]

tItem[3323482]["Text1-1"] = {111,112}
tItem[3323482]["tOption1-1"] = {111,112}
tItem[3323482]["OptionFunc111"]="RebateStoreItem_RomUseItem</N>3323482"
tItem[3323482]["OptionFunc112"]="RebateStoreItem__UseOneDebris</N>3323482"

tItemFace[3323483] = 2493
tItem[3323483] = tItem[3323483] or {}
tItem[3323483]["OptionHidden"] = 1
tItem[3323483]["DialogueText"] = tRebateStoreItem_Text[3323483]

tItem[3323483]["Text1-1"] = {111,112}
tItem[3323483]["tOption1-1"] = {111,112}
tItem[3323483]["OptionFunc111"]="RebateStoreItem_RomUseItem</N>3323483"
tItem[3323483]["OptionFunc112"]="RebateStoreItem__UseOneDebris</N>3323483"
