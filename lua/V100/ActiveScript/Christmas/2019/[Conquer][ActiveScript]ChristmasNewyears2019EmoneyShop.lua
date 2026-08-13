------------------------------------------------------------------------------------
--Name：            191119[简体征服][活动脚本]全球圣诞嘉年华-天石商店
--Creator:      杨志翔
--Created:     2019-11-19
------------------------------------------------------------------------------------
--任务需求：
--3327002 圣诞福袋
--3327003 元旦福袋
--3327004 人物外套碎片
--3327005 无光效外套（赠）包
--3327006 光效外套（赠）包
--3327014 无光效外套包
--3327015 光效外套包
--3327016 7天武器外套包
--前缀 Christmas_Newyears2019EmoneyShop

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tChristmas_Newyears2019EmoneyShop_Cont = {}
	tChristmas_Newyears2019EmoneyShop_Cont["ActTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"] 
	tChristmas_Newyears2019EmoneyShop_Cont["ItemTime"] = tActivityTime["ChristmasStocking"]["ActivityTime"]
	tChristmas_Newyears2019EmoneyShop_Cont["NpcId"] = 25621
	tChristmas_Newyears2019EmoneyShop_Cont["HairId"] = 79
	
local tChristmas_Newyears2019EmoneyShop_Reward = {}
	-- ===圣诞福袋
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327002]
	-- ===删除: 3327002,1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmas_Newyears2019EmoneyShop_Reward[3327002]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002]["DeleteItem"][1]["Id"] = 3327002 -- 【库】 3327002 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327002]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327002]["LogStep"] = " 7[1]"
	-- 2000气力值-- 【必给】
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1]["RandomItemChanceType"] = 1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1]["RewardStrengthValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效人物外套碎片-- 【必给】
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RandomItemChanceType"] = 1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardItem"][1]["Id"] = 3327004 -- 圣诞光效时装外套碎片[3327004][属性:9][叠加:0][金币:0], 【表格】光效人物外套碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardItem"][1]["Attr"] = "0 1" -- 圣诞光效时装外套碎片*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["ItemChance"] = 300
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][1] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+5 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6 - 12%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["ItemChance"] = 1200
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][2] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+7 - 2%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["ItemChance"] = 200
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardItem"][1]["Id"] = 730007 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+7
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][3] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 10000气力值 - 3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["ItemChance"] = 300
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["RewardStrengthValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 30000气力值 - 5.7%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["ItemChance"] = 570
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardStrengthValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][4] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 固化石 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 超大固化石 - 0.3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["ItemChance"] = 30
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardItem"][1]["Attr"] = "0 1" -- 超大固化石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][5] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 999朵红玫瑰 - 1%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["ItemChance"] = 100
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardItem"][1]["Id"] = 751999 -- 999朵红玫瑰[751999][属性:8][叠加:0][金币:0], 【表格】999朵红玫瑰
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardItem"][1]["Attr"] = "0 1" -- 999朵红玫瑰*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵百合花 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardItem"][1]["Id"] = 752999 -- 999朵百合花[752999][属性:8][叠加:0][金币:0], 【表格】999朵百合花
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵兰花 - 1.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["ItemChance"] = 150
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardItem"][1]["Id"] = 753999 -- 999朵兰花[753999][属性:8][叠加:0][金币:0], 【表格】999朵兰花
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardItem"][1]["Attr"] = "0 1" -- 999朵兰花*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 999个飞吻 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardItem"][1]["Id"] = 755999 -- 999个飞吻[755999][属性:8][叠加:0][金币:0], 【表格】999个飞吻
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardItem"][1]["Attr"] = "0 1" -- 999个飞吻*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 999封情书 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardItem"][1]["Id"] = 756999 -- 999封情书[756999][属性:8][叠加:0][金币:0], 【表格】999封情书
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardItem"][1]["Attr"] = "0 1" -- 999封情书*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000修为值 - 3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["ItemChance"] = 300
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["RewardRepairValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000修为值 - 8%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["ItemChance"] = 800
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["RewardRepairValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000修为值
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 30000修为值 - 6%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["ItemChance"] = 600
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardRepairValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardRepairValue"]["Value"] = 30000 -- 修为值, 【需求】30000修为值
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][6] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][19]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 血菩提 - 8%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["ItemChance"] = 800
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardItem"][1]["Attr"] = "0 1" -- 血菩提*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][7] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][21]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 光效人物外套碎片 - 12%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["ItemChance"] = 1200
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardItem"][1]["Id"] = 3327004 -- 圣诞光效时装外套碎片[3327004][属性:9][叠加:0][金币:0], 【表格】光效人物外套碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardItem"][1]["Attr"] = "0 1" -- 圣诞光效时装外套碎片*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][8] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][22]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 光效人物外套碎片 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardItem"][1]["Id"] = 3327004 -- 圣诞光效时装外套碎片[3327004][属性:9][叠加:0][金币:0], 【表格】光效人物外套碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardItem"][1]["Attr"] = "0 3" -- 圣诞光效时装外套碎片*3
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][9] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][23]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 光效人物外套碎片 - 3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["ItemChance"] = 300
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardItem"][1]["Id"] = 3327004 -- 圣诞光效时装外套碎片[3327004][属性:9][叠加:0][金币:0], 【表格】光效人物外套碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardItem"][1]["Attr"] = "0 5" -- 圣诞光效时装外套碎片*5
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][10] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][24]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 无光效人物外套 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardItem"][1]["Id"] = 3327288 --  195945 【库里没有该物品】, 【表格】无光效人物外套
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardItem"][1]["Attr"] = "0 1" --  195945 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327002][11] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327002][25]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】


local tChristmas_Newyears2019EmoneyShop_DelFragment = {}
	-- ===删除碎片
	-- ===索引:tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]
	-- ===删除: 3327004,2
	-- ===
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004] = {}
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]["LogStep"] = "7[5]"
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]["DeleteItem"][1]["Id"] = 3327004 -- 【库】圣诞光效时装外套碎片[属性:9]
	tChristmas_Newyears2019EmoneyShop_DelFragment[3327004]["DeleteItem"][1]["ItemNum"] = 2


local tChristmas_Newyears2019EmoneyShop_MergeFragment = {}
	-- ===合成碎片
	-- ===索引:tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]
	-- ===删除: 3327004,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]["DeleteItem"][1]["Id"] = 3327004 -- 【库】圣诞光效时装外套碎片[属性:9]
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004]["LogStep"] = " 7[6]"
	-- 两个碎片 - 50%
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["ItemChance"] = 4800
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardItem"][1]["Id"] = 3327004 -- 圣诞光效时装外套碎片[3327004][属性:9][叠加:0][金币:0], 【表格】两个碎片
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardItem"][1]["Attr"] = "0 2" -- 圣诞光效时装外套碎片*2
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 50%
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][2] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][2]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_MergeFragment[3327004][2]["ItemChance"] = 5200


local tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat = {}
	-- ===合成人物外套
	-- ===索引:tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004]
	-- ===删除: 3327004,50
	-- ===
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["LogStep"] = "7[8]"
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["DeleteItem"][1]["Id"] = 3327004 -- 【库】 3327004 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["DeleteItem"][1]["ItemNum"] = 50
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardItem"][1]["Id"] = 195955 --  195955 【库里没有该物品】, 【表格】光效人物外套
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" --  195955 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][1]["RewardEffect"]["Effect"] = "angelwing"

	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["LogStep"] = "7[7]"
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["DeleteItem"][1]["Id"] = 3327004 -- 【库】 3327004 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["DeleteItem"][1]["ItemNum"] = 25
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardItem"][1]["Id"] = 195945 --  195955 【库里没有该物品】, 【表格】光效人物外套
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" --  195955 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[3327004][2]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327003] = {}
	-- ===元旦福袋
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327003]
	-- ===删除: 3327003,1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmas_Newyears2019EmoneyShop_Reward[3327003]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003]["DeleteItem"][1]["Id"] = 3327003 -- 【库】 3327003 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327003]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327003]["LogStep"] = " 7[2]"
	-- 2000气力值-- 【必给】
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1]["RandomItemChanceType"] = 1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1]["RewardStrengthValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹碎片-- 【必给】
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RandomItemChanceType"] = 1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardItem"][1]["Attr"] = "0 5" -- 黄色神纹碎片*5
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["ItemChance"] = 300
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][1] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+5 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6 - 12%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["ItemChance"] = 1200
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][2] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+7 - 2%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["ItemChance"] = 200
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardItem"][1]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】赤炼石+7
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+7赤炼石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][3] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 10000气力值 - 4%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["ItemChance"] = 400
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["RewardStrengthValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 30000气力值 - 5.7%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["ItemChance"] = 570
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardStrengthValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][4] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 固化石 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 超大固化石 - 0.3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["ItemChance"] = 30
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardItem"][1]["Attr"] = "0 1" -- 超大固化石*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][5] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 999朵红玫瑰 - 1%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["ItemChance"] = 100
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardItem"][1]["Id"] = 751999 -- 999朵红玫瑰[751999][属性:8][叠加:0][金币:0], 【表格】999朵红玫瑰
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardItem"][1]["Attr"] = "0 1" -- 999朵红玫瑰*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵百合花 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardItem"][1]["Id"] = 752999 -- 999朵百合花[752999][属性:8][叠加:0][金币:0], 【表格】999朵百合花
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵兰花 - 1.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["ItemChance"] = 150
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardItem"][1]["Id"] = 753999 -- 999朵兰花[753999][属性:8][叠加:0][金币:0], 【表格】999朵兰花
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardItem"][1]["Attr"] = "0 1" -- 999朵兰花*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 999个飞吻 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardItem"][1]["Id"] = 755999 -- 999个飞吻[755999][属性:8][叠加:0][金币:0], 【表格】999个飞吻
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardItem"][1]["Attr"] = "0 1" -- 999个飞吻*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 999封情书 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardItem"][1]["Id"] = 756999 -- 999封情书[756999][属性:8][叠加:0][金币:0], 【表格】999封情书
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardItem"][1]["Attr"] = "0 1" -- 999封情书*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000修为值 - 3%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["ItemChance"] = 300
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["RewardRepairValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000修为值 - 15%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["ItemChance"] = 1500
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["RewardRepairValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000修为值
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 30000修为值 - 6%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["ItemChance"] = 600
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardRepairValue"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardRepairValue"]["Value"] = 30000 -- 修为值, 【需求】30000修为值
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][6] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][19]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["ItemChance"] = 500
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 血菩提 - 8%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["ItemChance"] = 800
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardItem"][1]["Attr"] = "0 1" -- 血菩提*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][7] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][21]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 稀有黄色神纹碎片 - 15%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["ItemChance"] = 1500
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardItem"][1]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹碎片*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][8] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][22]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 稀有黄色神纹碎片 - 1.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["ItemChance"] = 150
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardItem"][1]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardItem"][1]["Attr"] = "0 3" -- 稀有黄色神纹碎片*3
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][9] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][23]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 稀有黄色神纹碎片 - 0.5%
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RandomItemChanceType"] = 2
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["ItemChance"] = 50
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardItem"][1]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardItem"][1]["Attr"] = "0 5" -- 稀有黄色神纹碎片*5
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardBroadCast"] = tChristmas_Newyears2019EmoneyShop_Text["RewardBroadCast"][3327003][10] -- 全服公告
	tChristmas_Newyears2019EmoneyShop_Reward[3327003][24]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】

	tChristmas_Newyears2019EmoneyShop_Reward[3327005] = {}
	-- ===无光效外套赠包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327005]
	-- ===删除: 3327005,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["LogStep"] = "7[9]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["DeleteItem"][1]["Id"] = 3327005 -- 【库】 3327005 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardItem"][1]["Id"] = 195945 --  195945 【库里没有该物品】, 【表格】无光效人物外套
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 195945 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327005]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327006] = {}
	-- ===光效外套赠包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327006]
	-- ===删除: 3327006,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["LogStep"] = "7[10]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["DeleteItem"][1]["Id"] = 3327006 -- 【库】 3327006 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardItem"][1]["Id"] = 195955 --  195955 【库里没有该物品】, 【表格】光效人物外套
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 195955 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327006]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327014] = {}
	-- ===无光效外套包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327014]
	-- ===删除: 3327014,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["LogStep"] = "7[11]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["DeleteItem"][1]["Id"] = 3327014 -- 【库】 3327014 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardItem"][1]["Id"] = 195945 --  195945 【库里没有该物品】, 【表格】无光效人物外套
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 195945 【库里没有该物品】*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327014]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327015] = {}
	-- ===光效外套包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327015]
	-- ===删除: 3327015,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["LogStep"] = "7[12]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["DeleteItem"][1]["Id"] = 3327015 -- 【库】 3327015 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardItem"][1]["Id"] = 195955 --  195955 【库里没有该物品】, 【表格】光效人物外套
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 195955 【库里没有该物品】*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327015]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327016] = {}
	-- ===7天武器外套包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]
	-- ===删除: 3327016,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["LogStep"] = "7[3]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["DeleteItem"][1]["Id"] = 3327016 -- 【库】 3327016 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardItem"][1]["Id"] = 350171 --  350171 【库里没有该物品】, 【表格】圣诞长武
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的 350171 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][1]["RewardEffect"]["Effect"] = "angelwing"

	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2] = {}
	-- ===7天武器外套包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]
	-- ===删除: 3327016,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["LogStep"] = "7[3]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["DeleteItem"][1]["Id"] = 3327016 -- 【库】 3327016 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardItem"][1]["Id"] = 360308 --  360308 【库里没有该物品】, 【表格】圣诞短武
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 7天时效(激活)的 360308 【库里没有该物品】（赠）*2
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][2]["RewardEffect"]["Effect"] = "angelwing"

	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3] = {}
	-- ===7天武器外套包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]
	-- ===删除: 3327016,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["LogStep"] = "7[3]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["DeleteItem"][1]["Id"] = 3327016 -- 【库】 3327016 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardItem"][1]["Id"] = 370051 --  370051 【库里没有该物品】, 【表格】圣诞弓
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的 370051 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][3]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4] = {}
	-- ===7天武器外套包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]
	-- ===删除: 3327016,1
	-- ===
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["LogStep"] = "7[3]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["DeleteItem"][1]["Id"] = 3327016 -- 【库】 3327016 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"][1]["Id"] = 380060 --  380060 【库里没有该物品】, 【表格】圣诞盾
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的 380060 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"][2] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"][2]["Id"] = 350171 --  350171 【库里没有该物品】, 【表格】圣诞长武
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardItem"][2]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的 350171 【库里没有该物品】（赠）*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327016][4]["RewardEffect"]["Effect"] = "angelwing"


	tChristmas_Newyears2019EmoneyShop_Reward[3327288] = {}
	-- ===可选包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]
	-- ===删除: 3327288,1
	-- ===LogStep: 7[13]
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["LogStep"] = "7[13]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["DeleteItem"][1]["Id"] = 3327288 -- 【库】 3327288 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardItem"][1]["Id"] = 195945 --  195945 【库里没有该物品】, 【表格】无光效外套
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 195945 【库里没有该物品】*1
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][1]["RewardEffect"]["Effect"] = "angelwing"
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2] = {}
	-- ===可选包
	-- ===索引:tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]
	-- ===删除: 3327288,1
	-- ===LogStep: 7[14]
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["LogId"] = 12001739
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["LogStep"] = "7[14]"
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["DeleteItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["DeleteItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["DeleteItem"][1]["Id"] = 3327288 -- 【库】 3327288 【库里没有该物品】[属性:]
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardItem"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardItem"][1] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardItem"][1]["Id"] = 3327002 --  3327002 【库里没有该物品】, 【表格】圣诞福袋
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardItem"][1]["Attr"] = "0 3" --  3327002 【库里没有该物品】*3
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardEffect"] = {}
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmas_Newyears2019EmoneyShop_Reward[3327288][2]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
function Christmas_Newyears2019EmoneyShop_OpenEmoneyShop(nNpcId)
	if not Sys_ChkFullTime(tChristmas_Newyears2019EmoneyShop_Cont["ActTime"]) then 
		return 
	end
	User_OpenDialog()
end

function Christmas_Newyears2019EmoneyShop_MergeFragment1(nItemId)
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return
	end

	if not Sys_ChkFullTime(tChristmas_Newyears2019EmoneyShop_Cont["ItemTime"]) then 
		local tDelTable = CommonFunc_Copy(tChristmas_Newyears2019EmoneyShop_DelFragment[nItemId])
		local nItemNum = Get_CountItemType(nItemId,0)
		tDelTable["DeleteItem"][1]["ItemNum"] = nItemNum
		if RewardTemplate_UseItemAndMsg(tDelTable) then
			Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["TimeOut"])
		end
		return 
	end
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["NoSpace"])
		return 
	end
	local nUserId = Get_UserId()
	--local nNpcId = tChristmas_Newyears2019EmoneyShop_Cont["NpcId"]

	local tAward,sStr= RewardTemplate_RandomReward(tChristmas_Newyears2019EmoneyShop_MergeFragment,nItemId)
	if tAward[1]["tAward"][1]["RewardItem"] == nil then
		Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["MergeFail"],"LinkItemGossipFunc_New</N>"..nItemId.."</S>1-1")
	else
		LinkItemGossipFunc_New(nItemId,"2-1")
	end
end

function Christmas_Newyears2019EmoneyShop_MergeFragment2Coat(nItemId,nIndex)
	if not Sys_ChkFullTime(tChristmas_Newyears2019EmoneyShop_Cont["ItemTime"]) then 
		local tDelTable = CommonFunc_Copy(tChristmas_Newyears2019EmoneyShop_DelFragment[nItemId])
		local nItemNum = Get_CountItemType(nItemId,0)
		tDelTable["DeleteItem"][1]["ItemNum"] = nItemNum
		if RewardTemplate_UseItemAndMsg(tDelTable) then
			Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["TimeOut"])
		end
		return 
	end
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["NoSpace"])
		return 
	end
	local nItemName = tChristmas_Newyears2019EmoneyShop_Text["ItemName"][nItemId][nIndex]
	if not RewardTemplate_UseItemAndMsg(tChristmas_Newyears2019EmoneyShop_MergeFragment2Coat[nItemId][nIndex]) then
		Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["CoatFail"])
		return 
	end
	Sys_MsgBox(string.format(tChristmas_Newyears2019EmoneyShop_Text["CoatSuccess"][nItemId],nItemName))
end




function Christmas_Newyears2019EmoneyShop_DelFragment(nItemId)
	if not Sys_ChkFullTime(tChristmas_Newyears2019EmoneyShop_Cont["ItemTime"]) then 
		local tDelTable = CommonFunc_Copy(tChristmas_Newyears2019EmoneyShop_DelFragment[nItemId])
		local nItemNum = Get_CountItemType(nItemId,0)
		tDelTable["DeleteItem"][1]["ItemNum"] = nItemNum
		if RewardTemplate_UseItemAndMsg(tDelTable) then
			Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["TimeOut"])
		end
		return 
	end
end

function Christmas_Newyears2019EmoneyShop_OpenExchangeShop(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end
function Christmas_Newyears2019EmoneyShop_UseWeaponPack(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tChristmas_Newyears2019EmoneyShop_Reward[nItemId][nIndex])
end
----------------------------------NPC部分---------------------------------------------
	tNpcFace[2188] = 2694
	tNpcGossip[25621] = tNpcGossip[25621] or DefaultNpc:new{}
	tNpcGossip[25621]["DialogueText"] = tChristmas_Newyears2019EmoneyShop_Text[25621]
	tNpcGossip[25621]["OptionHidden"] = 1
	--对商店的
	tNpcGossip[25621]["Text1-1"] = {111,112,113,114,115}
	tNpcGossip[25621]["tOption1-1"] = {111,112,113,114}
	--打开商店
	tNpcGossip[25621]["OptionFunc111"] = "Christmas_Newyears2019EmoneyShop_OpenEmoneyShop</N>25621"
	tNpcGossip[25621]["OptionFunc112"] = "Christmas_Newyears2019EmoneyShop_OpenExchangeShop</N>25621"
	--了解详情
	tNpcGossip[25621]["OptionPoint113"] = "2-1"
	--礼包详情
	tNpcGossip[25621]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
	tNpcGossip[25621]["tOption2-1"] = {211}

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--圣诞和元旦福袋
tItem[3327002] = tItem[3327002] or {}
tItem[3327002]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tChristmas_Newyears2019EmoneyShop_Reward,nItemId)
end
tItem[3327003] = tItem[3327002]

tItem[3327005] = tItem[3327005] or {}
tItem[3327005]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tChristmas_Newyears2019EmoneyShop_Reward[nItemId])
end
tItem[3327006] = tItem[3327005]
tItem[3327014] = tItem[3327005]
tItem[3327015] = tItem[3327015] or {}
tItem[3327015]["Function"] = function(nItemId,sItemName)
	if RewardTemplate_UseItemAndMsg(tChristmas_Newyears2019EmoneyShop_Reward[nItemId]) then
		if not User_HairFaceCheckExist(0,tChristmas_Newyears2019EmoneyShop_Cont["HairId"]) then
			User_HairFaceAward(0,tChristmas_Newyears2019EmoneyShop_Cont["HairId"],0)
		end
	end
end
tItemFace[3327016] = 2590
tItem[3327016] = tItem[3327016] or {}
tItem[3327016]["DialogueText"] = tChristmas_Newyears2019EmoneyShop_Text[3327016]
tItem[3327016]["Function"] = function(nItemId,sItemName)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3327016]["Text1-1"] = {111}
tItem[3327016]["tOption1-1"]= {111,112,113,114}
tItem[3327016]["OptionFunc111"] = "Christmas_Newyears2019EmoneyShop_UseWeaponPack</N>3327016</N>1"	
tItem[3327016]["OptionFunc112"] = "Christmas_Newyears2019EmoneyShop_UseWeaponPack</N>3327016</N>2"	
tItem[3327016]["OptionFunc113"] = "Christmas_Newyears2019EmoneyShop_UseWeaponPack</N>3327016</N>3"	
tItem[3327016]["OptionFunc114"] = "Christmas_Newyears2019EmoneyShop_UseWeaponPack</N>3327016</N>4"	


--碎片
tItemFace[3327004] = 2693
tItem[3327004] = tItem[3327004] or {}
tItem[3327004]["Function"] = function(nItemId) 
	if not Sys_ChkFullTime(tChristmas_Newyears2019EmoneyShop_Cont["ItemTime"]) then
		local tDelTable = CommonFunc_Copy(tChristmas_Newyears2019EmoneyShop_DelFragment[nItemId])
		local nItemNum = Get_CountItemType(nItemId,0)
		tDelTable["DeleteItem"][1]["ItemNum"] = nItemNum
		if RewardTemplate_UseItemAndMsg(tDelTable) then
			Sys_MsgBox(tChristmas_Newyears2019EmoneyShop_Text["TimeOut"])
		end
		return false
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
	return  
end
tItem[3327004]["DialogueText"] = tChristmas_Newyears2019EmoneyShop_Text[3327004]

tItem[3327004]["Text1-1"] = {111,112}
tItem[3327004]["tOption1-1"]= {111,112,113}
tItem[3327004]["OptionFunc111"] = "Christmas_Newyears2019EmoneyShop_MergeFragment1</N>3327004"	
tItem[3327004]["OptionFunc112"] = "Christmas_Newyears2019EmoneyShop_MergeFragment2Coat</N>3327004</N>2"
tItem[3327004]["OptionFunc113"] = "Christmas_Newyears2019EmoneyShop_MergeFragment2Coat</N>3327004</N>1"

tItem[3327004]["Text2-1"] = {211}
tItem[3327004]["tOption2-1"] = {211,212}
tItem[3327004]["OptionPoint211"] = "1-1" 

tItemFace[3327288] = 2708
tItem[3327288] = tItem[3327288] or {}
tItem[3327288]["Function"] = function(nItemId) 
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3327288]["DialogueText"] = tChristmas_Newyears2019EmoneyShop_Text[3327288]
tItem[3327288]["Text1-1"] = {111}
tItem[3327288]["tOption1-1"]= {111,112}
tItem[3327288]["OptionFunc111"] = "Christmas_Newyears2019EmoneyShop_UseWeaponPack</N>3327288</N>1"
tItem[3327288]["OptionFunc112"] = "Christmas_Newyears2019EmoneyShop_UseWeaponPack</N>3327288</N>2"

