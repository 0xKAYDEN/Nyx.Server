------------------------------------------------------------------------------------
--Name：            200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
--Creator:      江宇君
--Created:     2020/05/14
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀： IrrigateSacredTree_

-- stc掩码
	-- stc(222,41) 领取每日馈赠礼盒
	-- stc(222,80) 浇灌的甘露数量 即 当前积分
	-- stc(222,83) 领取免费好礼
	-- stc(222,84) 限购 3316237,'夏日礼盒' 10个
	-- stc(222,85) 限购 3316238,'夏日精装礼盒' 10个
	-- stc(222,86) 限购 3316239,'夏日珍宝礼盒' 5个
	-- stc(222,87) 限购 3316240,'夏日豪华礼盒' 10个
	-- stc(222,88) 限购 3316241,'夏日至尊礼盒' 5个
	-- stc(223,32) 打怪掉落甘露 每日可获得23个, 最多可获得:（345）
	-- stc(223,33) 打开个人竞技场礼包得甘露 每日可获得5个, 最多可获得:（75）
	-- stc(223,34) 使用正气令得甘露 可获得2个, 最多可获得:（30）
	
-- global
	-- 54621 排行榜
	-- 54482 服务器区分 data0 =1 表示上 =0 表示不上该活动

-- log 12002011
-- emoneybuy 100001904
----------------------------------表配置部分--------------------------------------------
local tIrrigateSacredTree_NpcGetReward = {}
	tIrrigateSacredTree_NpcGetReward[3316234] = {}
	-- ===只领取每日灌溉礼盒
	-- ===索引: tIrrigateSacredTree_NpcGetReward[3316234][1]
	tIrrigateSacredTree_NpcGetReward[3316234][1] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][1]["LogId"] = 12002011
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardItem"] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardItem"][1]["Id"] = 3316234 -- DailyPresentPack[3316234][属性:9][叠加:0][金币:0], 【表格】每日馈赠礼盒
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardItem"][1]["Attr"] = "0 1" -- DailyPresentPack*1
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardEffect"] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_NpcGetReward[3316234][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===第2、5、8、12、15天领取每日灌溉礼盒+盛夏果实转盘
	-- ===索引: tIrrigateSacredTree_NpcGetReward[3316234][2]
	tIrrigateSacredTree_NpcGetReward[3316234][2] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][2]["LogId"] = 12002011
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"][1]["Id"] = 3316234 -- DailyPresentPack[3316234][属性:9][叠加:0][金币:0], 【表格】每日馈赠礼盒
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"][1]["Attr"] = "0 1" -- DailyPresentPack*1
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"][2] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"][2]["Id"] = 3316235 -- SummerFruitWheel[3316235][属性:9][叠加:0][金币:0], 【表格】盛夏果实转盘
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardItem"][2]["Attr"] = "0 1" -- SummerFruitWheel*1
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardEffect"] = {}
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_NpcGetReward[3316234][2]["RewardEffect"]["Effect"] = "angelwing"

	tIrrigateSacredTree_NpcGetReward["Copy"] = {}
	tIrrigateSacredTree_NpcGetReward["Copy"]["LogId"] = 12002011
	tIrrigateSacredTree_NpcGetReward["Copy"]["LogStep"] = "2[1]"
	tIrrigateSacredTree_NpcGetReward["Copy"]["RewardItem"] = {}
	
	
local tIrrigateSacredTree_BuyPack = {}
	-- ===3316237,'夏日礼盒' 购买夏日礼盒
	-- ===索引: tIrrigateSacredTree_BuyPack[3316237]
	tIrrigateSacredTree_BuyPack[3316237] = {}
	tIrrigateSacredTree_BuyPack[3316237]["LogId"] = 12002011
	tIrrigateSacredTree_BuyPack[3316237]["RewardItem"] = {}
	tIrrigateSacredTree_BuyPack[3316237]["RewardItem"][1] = {}
	tIrrigateSacredTree_BuyPack[3316237]["RewardItem"][1]["Id"] = 3316237 -- SummerPack[3316237][属性:9][叠加:0][金币:0], 【表格】夏日礼盒
	tIrrigateSacredTree_BuyPack[3316237]["RewardItem"][1]["Attr"] = "0 1" -- SummerPack*1
	tIrrigateSacredTree_BuyPack[3316237]["RewardEffect"] = {}
	tIrrigateSacredTree_BuyPack[3316237]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_BuyPack[3316237]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316238,'夏日精装礼盒' 购买夏日精装礼盒
	-- ===索引: tIrrigateSacredTree_BuyPack[3316238]
	tIrrigateSacredTree_BuyPack[3316238] = {}
	tIrrigateSacredTree_BuyPack[3316238]["LogId"] = 12002011
	tIrrigateSacredTree_BuyPack[3316238]["RewardItem"] = {}
	tIrrigateSacredTree_BuyPack[3316238]["RewardItem"][1] = {}
	tIrrigateSacredTree_BuyPack[3316238]["RewardItem"][1]["Id"] = 3316238 -- EliteSummerPack[3316238][属性:9][叠加:0][金币:0], 【表格】夏日精装礼盒
	tIrrigateSacredTree_BuyPack[3316238]["RewardItem"][1]["Attr"] = "0 1" -- EliteSummerPack*1
	tIrrigateSacredTree_BuyPack[3316238]["RewardEffect"] = {}
	tIrrigateSacredTree_BuyPack[3316238]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_BuyPack[3316238]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316239,'夏日珍宝礼盒' 购买夏日珍宝礼盒
	-- ===索引: tIrrigateSacredTree_BuyPack[3316239]
	tIrrigateSacredTree_BuyPack[3316239] = {}
	tIrrigateSacredTree_BuyPack[3316239]["LogId"] = 12002011
	tIrrigateSacredTree_BuyPack[3316239]["RewardItem"] = {}
	tIrrigateSacredTree_BuyPack[3316239]["RewardItem"][1] = {}
	tIrrigateSacredTree_BuyPack[3316239]["RewardItem"][1]["Id"] = 3316239 -- ValuedSummerPack[3316239][属性:9][叠加:0][金币:0], 【表格】夏日珍宝礼盒
	tIrrigateSacredTree_BuyPack[3316239]["RewardItem"][1]["Attr"] = "0 1" -- ValuedSummerPack*1
	tIrrigateSacredTree_BuyPack[3316239]["RewardEffect"] = {}
	tIrrigateSacredTree_BuyPack[3316239]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_BuyPack[3316239]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316240,'夏日豪华礼盒' 购买夏日豪华礼盒
	-- ===索引: tIrrigateSacredTree_BuyPack[3316240]
	tIrrigateSacredTree_BuyPack[3316240] = {}
	tIrrigateSacredTree_BuyPack[3316240]["LogId"] = 12002011
	tIrrigateSacredTree_BuyPack[3316240]["RewardItem"] = {}
	tIrrigateSacredTree_BuyPack[3316240]["RewardItem"][1] = {}
	tIrrigateSacredTree_BuyPack[3316240]["RewardItem"][1]["Id"] = 3316240 -- DeluxeSummerPack[3316240][属性:9][叠加:0][金币:0], 【表格】夏日豪华礼盒
	tIrrigateSacredTree_BuyPack[3316240]["RewardItem"][1]["Attr"] = "0 1" -- DeluxeSummerPack*1
	tIrrigateSacredTree_BuyPack[3316240]["RewardEffect"] = {}
	tIrrigateSacredTree_BuyPack[3316240]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_BuyPack[3316240]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316241,'夏日至尊礼盒' 购买夏日至尊礼盒
	-- ===索引: tIrrigateSacredTree_BuyPack[3316241]
	tIrrigateSacredTree_BuyPack[3316241] = {}
	tIrrigateSacredTree_BuyPack[3316241]["LogId"] = 12002011
	tIrrigateSacredTree_BuyPack[3316241]["RewardItem"] = {}
	tIrrigateSacredTree_BuyPack[3316241]["RewardItem"][1] = {}
	tIrrigateSacredTree_BuyPack[3316241]["RewardItem"][1]["Id"] = 3316241 -- SuperSummerPack[3316241][属性:9][叠加:0][金币:0], 【表格】夏日至尊礼盒
	tIrrigateSacredTree_BuyPack[3316241]["RewardItem"][1]["Attr"] = "0 1" -- SuperSummerPack*1
	tIrrigateSacredTree_BuyPack[3316241]["RewardEffect"] = {}
	tIrrigateSacredTree_BuyPack[3316241]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_BuyPack[3316241]["RewardEffect"]["Effect"] = "angelwing"


local tIrrigateSacredTree_Reward = {}
	-- ===3316234,'每日馈赠礼盒' 过期删除
	-- ===索引: tIrrigateSacredTree_Reward[3316234]
	-- ===删除: 3316234,1
	tIrrigateSacredTree_Reward[3316234] = {}
	tIrrigateSacredTree_Reward[3316234][1] = {}
	tIrrigateSacredTree_Reward[3316234][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316234][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316234][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316234][1]["DeleteItem"][1]["Id"] = 3316234 -- 【库】DailyPresentPack[属性:9]
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】5个甘露
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"][1]["Attr"] = "0 5" -- SweetDew*5
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"][2] = {}
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】1颗+2赤炼石（赠）
	tIrrigateSacredTree_Reward[3316234][1]["RewardItem"][2]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2Stone（赠）*1
	tIrrigateSacredTree_Reward[3316234][1]["RewardStrengthValue"] = {}
	tIrrigateSacredTree_Reward[3316234][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500点气力值
	tIrrigateSacredTree_Reward[3316234][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316234][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316234][1]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316236] = {}
	-- ===3316236,'神木积分礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316236][1]
	-- ===删除: 3316236,1
	tIrrigateSacredTree_Reward[3316236][1] = {}
	tIrrigateSacredTree_Reward[3316236][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316236][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316236][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][1]["DeleteItem"][1]["Id"] = 3316236 -- 【库】TreePointsPack[属性:9]
	tIrrigateSacredTree_Reward[3316236][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316236][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][1]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】1颗+3赤炼石（赠）
	tIrrigateSacredTree_Reward[3316236][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +3Stone（赠）*1
	tIrrigateSacredTree_Reward[3316236][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316236][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316236][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316236,'神木积分礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316236][2]
	-- ===删除: 3316236,1
	tIrrigateSacredTree_Reward[3316236][2] = {}
	tIrrigateSacredTree_Reward[3316236][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316236][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316236][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][2]["DeleteItem"][1]["Id"] = 3316236 -- 【库】TreePointsPack[属性:9]
	tIrrigateSacredTree_Reward[3316236][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316236][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][2]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】1颗明亮星陨石（赠）
	tIrrigateSacredTree_Reward[3316236][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tIrrigateSacredTree_Reward[3316236][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316236][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316236][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316236,'神木积分礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316236][3]
	-- ===删除: 3316236,1
	tIrrigateSacredTree_Reward[3316236][3] = {}
	tIrrigateSacredTree_Reward[3316236][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316236][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316236][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][3]["DeleteItem"][1]["Id"] = 3316236 -- 【库】TreePointsPack[属性:9]
	tIrrigateSacredTree_Reward[3316236][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316236][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][3]["RewardItem"][1]["Id"] = 3316242 -- 7-day3-starGarmentPack[3316242][属性:9][叠加:0][金币:0], 【表格】1个7天3星时装外套可选包（赠）
	tIrrigateSacredTree_Reward[3316236][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7-day3-starGarmentPack*1
	tIrrigateSacredTree_Reward[3316236][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316236][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316236][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316236,'神木积分礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316236][4]
	-- ===删除: 3316236,1
	tIrrigateSacredTree_Reward[3316236][4] = {}
	tIrrigateSacredTree_Reward[3316236][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316236][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316236][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][4]["DeleteItem"][1]["Id"] = 3316236 -- 【库】TreePointsPack[属性:9]
	tIrrigateSacredTree_Reward[3316236][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316236][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316236][4]["RewardItem"][1]["Id"] = 3316243 -- 7-day3-starMountArmorPack[3316243][属性:9][叠加:0][金币:0], 【表格】1个7天3星坐骑外套可选包（赠）
	tIrrigateSacredTree_Reward[3316236][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7-day3-starMountArmorPack*1
	tIrrigateSacredTree_Reward[3316236][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316236][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316236][4]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316237] = {}
	-- ===3316237,'夏日礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316237][1]
	-- ===删除: 3316237,1
	tIrrigateSacredTree_Reward[3316237][1] = {}
	tIrrigateSacredTree_Reward[3316237][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316237][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316237][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][1]["DeleteItem"][1]["Id"] = 3316237 -- 【库】SummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316237][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316237][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][1]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】1颗+4赤炼石（赠）
	tIrrigateSacredTree_Reward[3316237][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +4Stone（赠）*1
	tIrrigateSacredTree_Reward[3316237][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316237][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316237][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316237,'夏日礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316237][2]
	-- ===删除: 3316237,1
	tIrrigateSacredTree_Reward[3316237][2] = {}
	tIrrigateSacredTree_Reward[3316237][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316237][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316237][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][2]["DeleteItem"][1]["Id"] = 3316237 -- 【库】SummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316237][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316237][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][2]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】4颗明亮星陨石（赠）
	tIrrigateSacredTree_Reward[3316237][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的BrightStarStone*4
	tIrrigateSacredTree_Reward[3316237][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316237][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316237][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316237,'夏日礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316237][3]
	-- ===删除: 3316237,1
	tIrrigateSacredTree_Reward[3316237][3] = {}
	tIrrigateSacredTree_Reward[3316237][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316237][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316237][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][3]["DeleteItem"][1]["Id"] = 3316237 -- 【库】SummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316237][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316237][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][3]["RewardItem"][1]["Id"] = 3316244 -- 15-day4-starGarmentPack[3316244][属性:9][叠加:0][金币:0], 【表格】1个15天4星时装外套可选包（赠）
	tIrrigateSacredTree_Reward[3316237][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 15-day4-starGarmentPack*1
	tIrrigateSacredTree_Reward[3316237][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316237][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316237][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316237,'夏日礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316237][4]
	-- ===删除: 3316237,1
	tIrrigateSacredTree_Reward[3316237][4] = {}
	tIrrigateSacredTree_Reward[3316237][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316237][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316237][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][4]["DeleteItem"][1]["Id"] = 3316237 -- 【库】SummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316237][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316237][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316237][4]["RewardItem"][1]["Id"] = 3316245 -- 15-day4-starMountArmorPack[3316245][属性:9][叠加:0][金币:0], 【表格】1个15天4星坐骑外套可选包（赠）
	tIrrigateSacredTree_Reward[3316237][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 15-day4-starMountArmorPack*1
	tIrrigateSacredTree_Reward[3316237][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316237][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316237][4]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316238] = {}
	-- ===3316238,'夏日精装礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316238][1]
	-- ===删除: 3316238,1
	tIrrigateSacredTree_Reward[3316238][1] = {}
	tIrrigateSacredTree_Reward[3316238][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316238][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316238][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][1]["DeleteItem"][1]["Id"] = 3316238 -- 【库】EliteSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316238][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316238][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][1]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】1颗+5赤炼石（赠）
	tIrrigateSacredTree_Reward[3316238][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +5Stone（赠）*1
	tIrrigateSacredTree_Reward[3316238][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316238][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316238][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316238,'夏日精装礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316238][2]
	-- ===删除: 3316238,1
	tIrrigateSacredTree_Reward[3316238][2] = {}
	tIrrigateSacredTree_Reward[3316238][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316238][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316238][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][2]["DeleteItem"][1]["Id"] = 3316238 -- 【库】EliteSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316238][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316238][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][2]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】1颗晶莹星陨石（赠）
	tIrrigateSacredTree_Reward[3316238][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tIrrigateSacredTree_Reward[3316238][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316238][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316238][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316238,'夏日精装礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316238][3]
	-- ===删除: 3316238,1
	tIrrigateSacredTree_Reward[3316238][3] = {}
	tIrrigateSacredTree_Reward[3316238][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316238][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316238][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][3]["DeleteItem"][1]["Id"] = 3316238 -- 【库】EliteSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316238][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316238][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][3]["RewardItem"][1]["Id"] = 3316246 -- 30-day4-starGarmentPack[3316246][属性:9][叠加:0][金币:0], 【表格】1个30天4星时装外套可选包（赠）
	tIrrigateSacredTree_Reward[3316238][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 30-day4-starGarmentPack*1
	tIrrigateSacredTree_Reward[3316238][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316238][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316238][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316238,'夏日精装礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316238][4]
	-- ===删除: 3316238,1
	tIrrigateSacredTree_Reward[3316238][4] = {}
	tIrrigateSacredTree_Reward[3316238][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316238][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316238][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][4]["DeleteItem"][1]["Id"] = 3316238 -- 【库】EliteSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316238][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316238][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316238][4]["RewardItem"][1]["Id"] = 3316247 -- 30-day4-starMountArmorPack[3316247][属性:9][叠加:0][金币:0], 【表格】1个30天4星坐骑外套可选包（赠）
	tIrrigateSacredTree_Reward[3316238][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 30-day4-starMountArmorPack*1
	tIrrigateSacredTree_Reward[3316238][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316238][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316238][4]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316239] = {}
	-- ===3316239,'夏日珍宝礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316239][1]
	-- ===删除: 3316239,1
	tIrrigateSacredTree_Reward[3316239][1] = {}
	tIrrigateSacredTree_Reward[3316239][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316239][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316239][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][1]["DeleteItem"][1]["Id"] = 3316239 -- 【库】ValuedSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316239][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316239][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][1]["RewardItem"][1]["Id"] = 730007 -- +7Stone[730007][属性:0][叠加:0][金币:0], 【表格】1颗+7赤炼石（赠）
	tIrrigateSacredTree_Reward[3316239][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +7Stone（赠）*1
	tIrrigateSacredTree_Reward[3316239][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316239][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316239][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316239,'夏日珍宝礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316239][2]
	-- ===删除: 3316239,1
	tIrrigateSacredTree_Reward[3316239][2] = {}
	tIrrigateSacredTree_Reward[3316239][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316239][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316239][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][2]["DeleteItem"][1]["Id"] = 3316239 -- 【库】ValuedSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316239][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316239][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][2]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】1颗璀璨星陨石（赠）
	tIrrigateSacredTree_Reward[3316239][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tIrrigateSacredTree_Reward[3316239][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316239][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316239][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316239,'夏日珍宝礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316239][3]
	-- ===删除: 3316239,1
	tIrrigateSacredTree_Reward[3316239][3] = {}
	tIrrigateSacredTree_Reward[3316239][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316239][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316239][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][3]["DeleteItem"][1]["Id"] = 3316239 -- 【库】ValuedSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316239][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316239][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][3]["RewardItem"][1]["Id"] = 3316250 -- 80-day5-starGarmentPack[3316250][属性:9][叠加:0][金币:0], 【表格】1个80天5星时装外套可选包（赠）
	tIrrigateSacredTree_Reward[3316239][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 80-day5-starGarmentPack*1
	tIrrigateSacredTree_Reward[3316239][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316239][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316239][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316239,'夏日珍宝礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316239][4]
	-- ===删除: 3316239,1
	tIrrigateSacredTree_Reward[3316239][4] = {}
	tIrrigateSacredTree_Reward[3316239][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316239][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316239][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][4]["DeleteItem"][1]["Id"] = 3316239 -- 【库】ValuedSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316239][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316239][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316239][4]["RewardItem"][1]["Id"] = 3316251 -- 80-day5-starMountArmorPack[3316251][属性:9][叠加:0][金币:0], 【表格】1个80天5星坐骑外套可选包（赠）
	tIrrigateSacredTree_Reward[3316239][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 80-day5-starMountArmorPack*1
	tIrrigateSacredTree_Reward[3316239][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316239][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316239][4]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316240] = {}
	-- ===3316240,'夏日豪华礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316240][1]
	-- ===删除: 3316240,1
	tIrrigateSacredTree_Reward[3316240][1] = {}
	tIrrigateSacredTree_Reward[3316240][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316240][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316240][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][1]["DeleteItem"][1]["Id"] = 3316240 -- 【库】DeluxeSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316240][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316240][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][1]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】1颗+6赤炼石（赠）
	tIrrigateSacredTree_Reward[3316240][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +6Stone（赠）*1
	tIrrigateSacredTree_Reward[3316240][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316240][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316240][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316240,'夏日豪华礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316240][2]
	-- ===删除: 3316240,1
	tIrrigateSacredTree_Reward[3316240][2] = {}
	tIrrigateSacredTree_Reward[3316240][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316240][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316240][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][2]["DeleteItem"][1]["Id"] = 3316240 -- 【库】DeluxeSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316240][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316240][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][2]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】4颗晶莹星陨石（赠）
	tIrrigateSacredTree_Reward[3316240][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的RadiantStarStone*4
	tIrrigateSacredTree_Reward[3316240][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316240][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316240][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316240,'夏日豪华礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316240][3]
	-- ===删除: 3316240,1
	tIrrigateSacredTree_Reward[3316240][3] = {}
	tIrrigateSacredTree_Reward[3316240][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316240][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316240][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][3]["DeleteItem"][1]["Id"] = 3316240 -- 【库】DeluxeSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316240][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316240][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][3]["RewardItem"][1]["Id"] = 3316248 -- 120-day4-starGarmentPack[3316248][属性:9][叠加:0][金币:0], 【表格】1个120天4星时装外套可选包（赠）
	tIrrigateSacredTree_Reward[3316240][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 120-day4-starGarmentPack*1
	tIrrigateSacredTree_Reward[3316240][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316240][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316240][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316240,'夏日豪华礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316240][4]
	-- ===删除: 3316240,1
	tIrrigateSacredTree_Reward[3316240][4] = {}
	tIrrigateSacredTree_Reward[3316240][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316240][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316240][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][4]["DeleteItem"][1]["Id"] = 3316240 -- 【库】DeluxeSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316240][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316240][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316240][4]["RewardItem"][1]["Id"] = 3316249 -- 120-day4-starMountArmorPack[3316249][属性:9][叠加:0][金币:0], 【表格】1个120天4星坐骑外套可选包（赠）
	tIrrigateSacredTree_Reward[3316240][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 120-day4-starMountArmorPack*1
	tIrrigateSacredTree_Reward[3316240][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316240][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316240][4]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316241] = {}
	-- ===3316241,'夏日至尊礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316241][1]
	-- ===删除: 3316241,1
	tIrrigateSacredTree_Reward[3316241][1] = {}
	tIrrigateSacredTree_Reward[3316241][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316241][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316241][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][1]["DeleteItem"][1]["Id"] = 3316241 -- 【库】SuperSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316241][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316241][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][1]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】1颗+8赤炼石（赠）
	tIrrigateSacredTree_Reward[3316241][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +8Stone（赠）*1
	tIrrigateSacredTree_Reward[3316241][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316241][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316241][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316241,'夏日至尊礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316241][2]
	-- ===删除: 3316241,1
	tIrrigateSacredTree_Reward[3316241][2] = {}
	tIrrigateSacredTree_Reward[3316241][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316241][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316241][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][2]["DeleteItem"][1]["Id"] = 3316241 -- 【库】SuperSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316241][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316241][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][2]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】3颗璀璨星陨石（赠）
	tIrrigateSacredTree_Reward[3316241][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的SplendidStarStone*3
	tIrrigateSacredTree_Reward[3316241][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316241][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316241][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316241,'夏日至尊礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316241][3]
	-- ===删除: 3316241,1
	tIrrigateSacredTree_Reward[3316241][3] = {}
	tIrrigateSacredTree_Reward[3316241][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316241][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316241][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][3]["DeleteItem"][1]["Id"] = 3316241 -- 【库】SuperSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316241][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316241][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][3]["RewardItem"][1]["Id"] = 3316252 -- 250-day5-starGarmentPack[3316252][属性:9][叠加:0][金币:0], 【表格】1个250天5星时装外套可选包（赠）
	tIrrigateSacredTree_Reward[3316241][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 250-day5-starGarmentPack*1
	tIrrigateSacredTree_Reward[3316241][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316241][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316241][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316241,'夏日至尊礼盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316241][4]
	-- ===删除: 3316241,1
	tIrrigateSacredTree_Reward[3316241][4] = {}
	tIrrigateSacredTree_Reward[3316241][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316241][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316241][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][4]["DeleteItem"][1]["Id"] = 3316241 -- 【库】SuperSummerPack[属性:9]
	tIrrigateSacredTree_Reward[3316241][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316241][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316241][4]["RewardItem"][1]["Id"] = 3316253 -- 250-day5-starMountArmorPack[3316253][属性:9][叠加:0][金币:0], 【表格】1个250天5星坐骑外套可选包（赠）
	tIrrigateSacredTree_Reward[3316241][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 250-day5-starMountArmorPack*1
	tIrrigateSacredTree_Reward[3316241][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316241][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316241][4]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316242] = {}
	-- ===3316242,'7天3星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316242][1]
	-- ===删除: 3316242,1
	tIrrigateSacredTree_Reward[3316242][1] = {}
	tIrrigateSacredTree_Reward[3316242][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316242][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316242][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][1]["DeleteItem"][1]["Id"] = 3316242 -- 【库】7-day3-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316242][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316242][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][1]["RewardItem"][1]["Id"] = 187355 -- BeachSuit[187355][属性:0][叠加:0][金币:0], 【表格】BeachSuit（赠）
	tIrrigateSacredTree_Reward[3316242][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑BeachSuit（赠）*1
	tIrrigateSacredTree_Reward[3316242][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316242][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316242][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316242,'7天3星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316242][2]
	-- ===删除: 3316242,1
	tIrrigateSacredTree_Reward[3316242][2] = {}
	tIrrigateSacredTree_Reward[3316242][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316242][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316242][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][2]["DeleteItem"][1]["Id"] = 3316242 -- 【库】7-day3-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316242][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316242][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][2]["RewardItem"][1]["Id"] = 193725 -- ImmortalRobe[193725][属性:0][叠加:0][金币:100], 【表格】ImmortalRobe（赠）
	tIrrigateSacredTree_Reward[3316242][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑ImmortalRobe（赠）*1
	tIrrigateSacredTree_Reward[3316242][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316242][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316242][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316242,'7天3星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316242][3]
	-- ===删除: 3316242,1
	tIrrigateSacredTree_Reward[3316242][3] = {}
	tIrrigateSacredTree_Reward[3316242][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316242][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316242][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][3]["DeleteItem"][1]["Id"] = 3316242 -- 【库】7-day3-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316242][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316242][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][3]["RewardItem"][1]["Id"] = 194375 -- AngelicRobe[194375][属性:8][叠加:0][金币:0], 【表格】AngelicRobe（赠）
	tIrrigateSacredTree_Reward[3316242][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑AngelicRobe（赠）*1
	tIrrigateSacredTree_Reward[3316242][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316242][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316242][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316242,'7天3星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316242][4]
	-- ===删除: 3316242,1
	tIrrigateSacredTree_Reward[3316242][4] = {}
	tIrrigateSacredTree_Reward[3316242][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316242][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316242][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][4]["DeleteItem"][1]["Id"] = 3316242 -- 【库】7-day3-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316242][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316242][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][4]["RewardItem"][1]["Id"] = 195635 -- StarSea[195635][属性:0][叠加:0][金币:0], 【表格】StarSea（赠）
	tIrrigateSacredTree_Reward[3316242][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑StarSea（赠）*1
	tIrrigateSacredTree_Reward[3316242][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316242][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316242][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316242,'7天3星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316242][5]
	-- ===删除: 3316242,1
	tIrrigateSacredTree_Reward[3316242][5] = {}
	tIrrigateSacredTree_Reward[3316242][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316242][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316242][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][5]["DeleteItem"][1]["Id"] = 3316242 -- 【库】7-day3-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316242][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316242][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316242][5]["RewardItem"][1]["Id"] = 196185 -- FinalSurvivor[196185][属性:0][叠加:0][金币:0], 【表格】FinalSurvior（赠）
	tIrrigateSacredTree_Reward[3316242][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FinalSurvivor（赠）*1
	tIrrigateSacredTree_Reward[3316242][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316242][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316242][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316243] = {}
	-- ===3316243,'7天3星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316243][1]
	-- ===删除: 3316243,1
	tIrrigateSacredTree_Reward[3316243][1] = {}
	tIrrigateSacredTree_Reward[3316243][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316243][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316243][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][1]["DeleteItem"][1]["Id"] = 3316243 -- 【库】7-day3-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316243][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316243][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][1]["RewardItem"][1]["Id"] = 200570 -- AzureLotus[200570][属性:0][叠加:0][金币:0], 【表格】AzureLotus（赠）
	tIrrigateSacredTree_Reward[3316243][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑AzureLotus（赠）*1
	tIrrigateSacredTree_Reward[3316243][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316243][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316243][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316243,'7天3星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316243][2]
	-- ===删除: 3316243,1
	tIrrigateSacredTree_Reward[3316243][2] = {}
	tIrrigateSacredTree_Reward[3316243][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316243][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316243][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][2]["DeleteItem"][1]["Id"] = 3316243 -- 【库】7-day3-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316243][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316243][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][2]["RewardItem"][1]["Id"] = 200407 -- JadeHare[200407][属性:0][叠加:0][金币:0], 【表格】JadeHare（赠）
	tIrrigateSacredTree_Reward[3316243][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑JadeHare（赠）*1
	tIrrigateSacredTree_Reward[3316243][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316243][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316243][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316243,'7天3星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316243][3]
	-- ===删除: 3316243,1
	tIrrigateSacredTree_Reward[3316243][3] = {}
	tIrrigateSacredTree_Reward[3316243][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316243][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316243][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][3]["DeleteItem"][1]["Id"] = 3316243 -- 【库】7-day3-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316243][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316243][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][3]["RewardItem"][1]["Id"] = 200437 -- GoldGlobefish[200437][属性:0][叠加:0][金币:0], 【表格】GoldGlobefish（赠）
	tIrrigateSacredTree_Reward[3316243][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑GoldGlobefish（赠）*1
	tIrrigateSacredTree_Reward[3316243][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316243][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316243][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316243,'7天3星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316243][4]
	-- ===删除: 3316243,1
	tIrrigateSacredTree_Reward[3316243][4] = {}
	tIrrigateSacredTree_Reward[3316243][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316243][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316243][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][4]["DeleteItem"][1]["Id"] = 3316243 -- 【库】7-day3-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316243][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316243][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][4]["RewardItem"][1]["Id"] = 200474 -- FlameFox[200474][属性:0][叠加:0][金币:100], 【表格】FlameFox（赠）
	tIrrigateSacredTree_Reward[3316243][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FlameFox（赠）*1
	tIrrigateSacredTree_Reward[3316243][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316243][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316243][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316243,'7天3星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316243][5]
	-- ===删除: 3316243,1
	tIrrigateSacredTree_Reward[3316243][5] = {}
	tIrrigateSacredTree_Reward[3316243][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316243][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316243][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][5]["DeleteItem"][1]["Id"] = 3316243 -- 【库】7-day3-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316243][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316243][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316243][5]["RewardItem"][1]["Id"] = 200481 -- SpiritLion[200481][属性:0][叠加:0][金币:0], 【表格】SpiritLion（赠）
	tIrrigateSacredTree_Reward[3316243][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑SpiritLion（赠）*1
	tIrrigateSacredTree_Reward[3316243][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316243][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316243][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316244] = {}
	-- ===3316244,'15天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316244][1]
	-- ===删除: 3316244,1
	tIrrigateSacredTree_Reward[3316244][1] = {}
	tIrrigateSacredTree_Reward[3316244][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316244][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316244][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][1]["DeleteItem"][1]["Id"] = 3316244 -- 【库】15-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316244][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316244][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][1]["RewardItem"][1]["Id"] = 191075 -- MyersJumpsuit[191075][属性:0][叠加:0][金币:0], 【表格】MyersJumpsuit（赠）
	tIrrigateSacredTree_Reward[3316244][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑MyersJumpsuit（赠）*1
	tIrrigateSacredTree_Reward[3316244][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316244][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316244][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316244,'15天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316244][2]
	-- ===删除: 3316244,1
	tIrrigateSacredTree_Reward[3316244][2] = {}
	tIrrigateSacredTree_Reward[3316244][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316244][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316244][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][2]["DeleteItem"][1]["Id"] = 3316244 -- 【库】15-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316244][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316244][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][2]["RewardItem"][1]["Id"] = 194405 -- FoxSpirit(Charm)[194405][属性:8][叠加:0][金币:0], 【表格】FoxSpirit（Charm）（赠）
	tIrrigateSacredTree_Reward[3316244][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑FoxSpirit(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316244][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316244][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316244][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316244,'15天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316244][3]
	-- ===删除: 3316244,1
	tIrrigateSacredTree_Reward[3316244][3] = {}
	tIrrigateSacredTree_Reward[3316244][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316244][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316244][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][3]["DeleteItem"][1]["Id"] = 3316244 -- 【库】15-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316244][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316244][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][3]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】FairyTale（赠）
	tIrrigateSacredTree_Reward[3316244][3]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑FairyTale（赠）*1
	tIrrigateSacredTree_Reward[3316244][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316244][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316244][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316244,'15天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316244][4]
	-- ===删除: 3316244,1
	tIrrigateSacredTree_Reward[3316244][4] = {}
	tIrrigateSacredTree_Reward[3316244][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316244][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316244][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][4]["DeleteItem"][1]["Id"] = 3316244 -- 【库】15-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316244][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316244][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][4]["RewardItem"][1]["Id"] = 192495 -- MidsummerSuit[192495][属性:0][叠加:0][金币:0], 【表格】MidsummerSuit（赠）
	tIrrigateSacredTree_Reward[3316244][4]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑MidsummerSuit（赠）*1
	tIrrigateSacredTree_Reward[3316244][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316244][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316244][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316244,'15天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316244][5]
	-- ===删除: 3316244,1
	tIrrigateSacredTree_Reward[3316244][5] = {}
	tIrrigateSacredTree_Reward[3316244][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316244][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316244][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][5]["DeleteItem"][1]["Id"] = 3316244 -- 【库】15-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316244][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316244][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316244][5]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】ColorOfWind（赠）
	tIrrigateSacredTree_Reward[3316244][5]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑ColorOfWind（赠）*1
	tIrrigateSacredTree_Reward[3316244][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316244][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316244][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316245] = {}
	-- ===3316245,'15天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316245][1]
	-- ===删除: 3316245,1
	tIrrigateSacredTree_Reward[3316245][1] = {}
	tIrrigateSacredTree_Reward[3316245][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316245][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316245][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][1]["DeleteItem"][1]["Id"] = 3316245 -- 【库】15-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316245][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316245][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][1]["RewardItem"][1]["Id"] = 200500 -- Fuleco[200500][属性:0][叠加:0][金币:0], 【表格】Fuleco（赠）
	tIrrigateSacredTree_Reward[3316245][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑Fuleco（赠）*1
	tIrrigateSacredTree_Reward[3316245][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316245][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316245][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316245,'15天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316245][2]
	-- ===删除: 3316245,1
	tIrrigateSacredTree_Reward[3316245][2] = {}
	tIrrigateSacredTree_Reward[3316245][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316245][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316245][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][2]["DeleteItem"][1]["Id"] = 3316245 -- 【库】15-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316245][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316245][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][2]["RewardItem"][1]["Id"] = 200574 -- SnowLotus[200574][属性:0][叠加:0][金币:0], 【表格】SnowLotus（赠）
	tIrrigateSacredTree_Reward[3316245][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑SnowLotus（赠）*1
	tIrrigateSacredTree_Reward[3316245][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316245][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316245][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316245,'15天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316245][3]
	-- ===删除: 3316245,1
	tIrrigateSacredTree_Reward[3316245][3] = {}
	tIrrigateSacredTree_Reward[3316245][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316245][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316245][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][3]["DeleteItem"][1]["Id"] = 3316245 -- 【库】15-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316245][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316245][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][3]["RewardItem"][1]["Id"] = 200495 -- LoveHorse[200495][属性:0][叠加:0][金币:100], 【表格】LoveHorse（赠）
	tIrrigateSacredTree_Reward[3316245][3]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑LoveHorse（赠）*1
	tIrrigateSacredTree_Reward[3316245][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316245][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316245][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316245,'15天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316245][4]
	-- ===删除: 3316245,1
	tIrrigateSacredTree_Reward[3316245][4] = {}
	tIrrigateSacredTree_Reward[3316245][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316245][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316245][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][4]["DeleteItem"][1]["Id"] = 3316245 -- 【库】15-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316245][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316245][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][4]["RewardItem"][1]["Id"] = 200591 -- StarRoosterEndlessHope[200591][属性:8][叠加:0][金币:0], 【表格】StarRoosterEndlessHope（赠）
	tIrrigateSacredTree_Reward[3316245][4]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑StarRoosterEndlessHope（赠）*1
	tIrrigateSacredTree_Reward[3316245][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316245][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316245][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316245,'15天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316245][5]
	-- ===删除: 3316245,1
	tIrrigateSacredTree_Reward[3316245][5] = {}
	tIrrigateSacredTree_Reward[3316245][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316245][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316245][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][5]["DeleteItem"][1]["Id"] = 3316245 -- 【库】15-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316245][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316245][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316245][5]["RewardItem"][1]["Id"] = 200622 -- RadiantHusky[200622][属性:0][叠加:0][金币:0], 【表格】RadiantHusky（赠）
	tIrrigateSacredTree_Reward[3316245][5]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑RadiantHusky（赠）*1
	tIrrigateSacredTree_Reward[3316245][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316245][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316245][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316246] = {}
	-- ===3316246,'30天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316246][1]
	-- ===删除: 3316246,1
	tIrrigateSacredTree_Reward[3316246][1] = {}
	tIrrigateSacredTree_Reward[3316246][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316246][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316246][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][1]["DeleteItem"][1]["Id"] = 3316246 -- 【库】30-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316246][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316246][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][1]["RewardItem"][1]["Id"] = 191075 -- MyersJumpsuit[191075][属性:0][叠加:0][金币:0], 【表格】MyersJumpsuit（赠）
	tIrrigateSacredTree_Reward[3316246][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MyersJumpsuit（赠）*1
	tIrrigateSacredTree_Reward[3316246][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316246][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316246][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316246,'30天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316246][2]
	-- ===删除: 3316246,1
	tIrrigateSacredTree_Reward[3316246][2] = {}
	tIrrigateSacredTree_Reward[3316246][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316246][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316246][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][2]["DeleteItem"][1]["Id"] = 3316246 -- 【库】30-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316246][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316246][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][2]["RewardItem"][1]["Id"] = 194405 -- FoxSpirit(Charm)[194405][属性:8][叠加:0][金币:0], 【表格】FoxSpirit（Charm）（赠）
	tIrrigateSacredTree_Reward[3316246][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FoxSpirit(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316246][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316246][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316246][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316246,'30天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316246][3]
	-- ===删除: 3316246,1
	tIrrigateSacredTree_Reward[3316246][3] = {}
	tIrrigateSacredTree_Reward[3316246][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316246][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316246][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][3]["DeleteItem"][1]["Id"] = 3316246 -- 【库】30-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316246][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316246][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][3]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】FairyTale（赠）
	tIrrigateSacredTree_Reward[3316246][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FairyTale（赠）*1
	tIrrigateSacredTree_Reward[3316246][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316246][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316246][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316246,'30天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316246][4]
	-- ===删除: 3316246,1
	tIrrigateSacredTree_Reward[3316246][4] = {}
	tIrrigateSacredTree_Reward[3316246][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316246][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316246][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][4]["DeleteItem"][1]["Id"] = 3316246 -- 【库】30-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316246][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316246][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][4]["RewardItem"][1]["Id"] = 192495 -- MidsummerSuit[192495][属性:0][叠加:0][金币:0], 【表格】MidsummerSuit（赠）
	tIrrigateSacredTree_Reward[3316246][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MidsummerSuit（赠）*1
	tIrrigateSacredTree_Reward[3316246][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316246][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316246][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316246,'30天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316246][5]
	-- ===删除: 3316246,1
	tIrrigateSacredTree_Reward[3316246][5] = {}
	tIrrigateSacredTree_Reward[3316246][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316246][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316246][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][5]["DeleteItem"][1]["Id"] = 3316246 -- 【库】30-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316246][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316246][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316246][5]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】ColorOfWind（赠）
	tIrrigateSacredTree_Reward[3316246][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ColorOfWind（赠）*1
	tIrrigateSacredTree_Reward[3316246][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316246][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316246][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316247] = {}
	-- ===3316247,'30天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316247][1]
	-- ===删除: 3316247,1
	tIrrigateSacredTree_Reward[3316247][1] = {}
	tIrrigateSacredTree_Reward[3316247][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316247][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316247][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][1]["DeleteItem"][1]["Id"] = 3316247 -- 【库】30-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316247][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316247][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][1]["RewardItem"][1]["Id"] = 200500 -- Fuleco[200500][属性:0][叠加:0][金币:0], 【表格】Fuleco（赠）
	tIrrigateSacredTree_Reward[3316247][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑Fuleco（赠）*1
	tIrrigateSacredTree_Reward[3316247][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316247][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316247][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316247,'30天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316247][2]
	-- ===删除: 3316247,1
	tIrrigateSacredTree_Reward[3316247][2] = {}
	tIrrigateSacredTree_Reward[3316247][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316247][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316247][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][2]["DeleteItem"][1]["Id"] = 3316247 -- 【库】30-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316247][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316247][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][2]["RewardItem"][1]["Id"] = 200574 -- SnowLotus[200574][属性:0][叠加:0][金币:0], 【表格】SnowLotus（赠）
	tIrrigateSacredTree_Reward[3316247][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑SnowLotus（赠）*1
	tIrrigateSacredTree_Reward[3316247][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316247][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316247][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316247,'30天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316247][3]
	-- ===删除: 3316247,1
	tIrrigateSacredTree_Reward[3316247][3] = {}
	tIrrigateSacredTree_Reward[3316247][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316247][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316247][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][3]["DeleteItem"][1]["Id"] = 3316247 -- 【库】30-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316247][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316247][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][3]["RewardItem"][1]["Id"] = 200495 -- LoveHorse[200495][属性:0][叠加:0][金币:100], 【表格】LoveHorse（赠）
	tIrrigateSacredTree_Reward[3316247][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LoveHorse（赠）*1
	tIrrigateSacredTree_Reward[3316247][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316247][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316247][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316247,'30天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316247][4]
	-- ===删除: 3316247,1
	tIrrigateSacredTree_Reward[3316247][4] = {}
	tIrrigateSacredTree_Reward[3316247][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316247][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316247][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][4]["DeleteItem"][1]["Id"] = 3316247 -- 【库】30-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316247][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316247][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][4]["RewardItem"][1]["Id"] = 200591 -- StarRoosterEndlessHope[200591][属性:8][叠加:0][金币:0], 【表格】StarRoosterEndlessHope（赠）
	tIrrigateSacredTree_Reward[3316247][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑StarRoosterEndlessHope（赠）*1
	tIrrigateSacredTree_Reward[3316247][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316247][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316247][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316247,'30天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316247][5]
	-- ===删除: 3316247,1
	tIrrigateSacredTree_Reward[3316247][5] = {}
	tIrrigateSacredTree_Reward[3316247][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316247][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316247][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][5]["DeleteItem"][1]["Id"] = 3316247 -- 【库】30-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316247][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316247][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316247][5]["RewardItem"][1]["Id"] = 200622 -- RadiantHusky[200622][属性:0][叠加:0][金币:0], 【表格】RadiantHusky（赠）
	tIrrigateSacredTree_Reward[3316247][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RadiantHusky（赠）*1
	tIrrigateSacredTree_Reward[3316247][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316247][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316247][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316248] = {}
	-- ===3316248,'120天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316248][1]
	-- ===删除: 3316248,1
	tIrrigateSacredTree_Reward[3316248][1] = {}
	tIrrigateSacredTree_Reward[3316248][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316248][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316248][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][1]["DeleteItem"][1]["Id"] = 3316248 -- 【库】120-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316248][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316248][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][1]["RewardItem"][1]["Id"] = 191075 -- MyersJumpsuit[191075][属性:0][叠加:0][金币:0], 【表格】MyersJumpsuit（赠）
	tIrrigateSacredTree_Reward[3316248][1]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑MyersJumpsuit（赠）*1
	tIrrigateSacredTree_Reward[3316248][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316248][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316248][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316248,'120天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316248][2]
	-- ===删除: 3316248,1
	tIrrigateSacredTree_Reward[3316248][2] = {}
	tIrrigateSacredTree_Reward[3316248][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316248][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316248][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][2]["DeleteItem"][1]["Id"] = 3316248 -- 【库】120-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316248][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316248][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][2]["RewardItem"][1]["Id"] = 194405 -- FoxSpirit(Charm)[194405][属性:8][叠加:0][金币:0], 【表格】FoxSpirit（Charm）（赠）
	tIrrigateSacredTree_Reward[3316248][2]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑FoxSpirit(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316248][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316248][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316248][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316248,'120天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316248][3]
	-- ===删除: 3316248,1
	tIrrigateSacredTree_Reward[3316248][3] = {}
	tIrrigateSacredTree_Reward[3316248][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316248][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316248][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][3]["DeleteItem"][1]["Id"] = 3316248 -- 【库】120-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316248][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316248][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][3]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】FairyTale（赠）
	tIrrigateSacredTree_Reward[3316248][3]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑FairyTale（赠）*1
	tIrrigateSacredTree_Reward[3316248][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316248][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316248][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316248,'120天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316248][4]
	-- ===删除: 3316248,1
	tIrrigateSacredTree_Reward[3316248][4] = {}
	tIrrigateSacredTree_Reward[3316248][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316248][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316248][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][4]["DeleteItem"][1]["Id"] = 3316248 -- 【库】120-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316248][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316248][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][4]["RewardItem"][1]["Id"] = 192495 -- MidsummerSuit[192495][属性:0][叠加:0][金币:0], 【表格】MidsummerSuit（赠）
	tIrrigateSacredTree_Reward[3316248][4]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑MidsummerSuit（赠）*1
	tIrrigateSacredTree_Reward[3316248][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316248][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316248][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316248,'120天4星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316248][5]
	-- ===删除: 3316248,1
	tIrrigateSacredTree_Reward[3316248][5] = {}
	tIrrigateSacredTree_Reward[3316248][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316248][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316248][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][5]["DeleteItem"][1]["Id"] = 3316248 -- 【库】120-day4-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316248][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316248][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316248][5]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】ColorOfWind（赠）
	tIrrigateSacredTree_Reward[3316248][5]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑ColorOfWind（赠）*1
	tIrrigateSacredTree_Reward[3316248][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316248][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316248][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316249] = {}
	-- ===3316249,'120天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316249][1]
	-- ===删除: 3316249,1
	tIrrigateSacredTree_Reward[3316249][1] = {}
	tIrrigateSacredTree_Reward[3316249][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316249][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316249][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][1]["DeleteItem"][1]["Id"] = 3316249 -- 【库】120-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316249][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316249][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][1]["RewardItem"][1]["Id"] = 200500 -- Fuleco[200500][属性:0][叠加:0][金币:0], 【表格】Fuleco（赠）
	tIrrigateSacredTree_Reward[3316249][1]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑Fuleco（赠）*1
	tIrrigateSacredTree_Reward[3316249][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316249][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316249][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316249,'120天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316249][2]
	-- ===删除: 3316249,1
	tIrrigateSacredTree_Reward[3316249][2] = {}
	tIrrigateSacredTree_Reward[3316249][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316249][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316249][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][2]["DeleteItem"][1]["Id"] = 3316249 -- 【库】120-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316249][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316249][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][2]["RewardItem"][1]["Id"] = 200574 -- SnowLotus[200574][属性:0][叠加:0][金币:0], 【表格】SnowLotus（赠）
	tIrrigateSacredTree_Reward[3316249][2]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑SnowLotus（赠）*1
	tIrrigateSacredTree_Reward[3316249][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316249][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316249][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316249,'120天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316249][3]
	-- ===删除: 3316249,1
	tIrrigateSacredTree_Reward[3316249][3] = {}
	tIrrigateSacredTree_Reward[3316249][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316249][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316249][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][3]["DeleteItem"][1]["Id"] = 3316249 -- 【库】120-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316249][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316249][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][3]["RewardItem"][1]["Id"] = 200495 -- LoveHorse[200495][属性:0][叠加:0][金币:100], 【表格】LoveHorse（赠）
	tIrrigateSacredTree_Reward[3316249][3]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑LoveHorse（赠）*1
	tIrrigateSacredTree_Reward[3316249][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316249][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316249][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316249,'120天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316249][4]
	-- ===删除: 3316249,1
	tIrrigateSacredTree_Reward[3316249][4] = {}
	tIrrigateSacredTree_Reward[3316249][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316249][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316249][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][4]["DeleteItem"][1]["Id"] = 3316249 -- 【库】120-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316249][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316249][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][4]["RewardItem"][1]["Id"] = 200591 -- StarRoosterEndlessHope[200591][属性:8][叠加:0][金币:0], 【表格】StarRoosterEndlessHope（赠）
	tIrrigateSacredTree_Reward[3316249][4]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑StarRoosterEndlessHope（赠）*1
	tIrrigateSacredTree_Reward[3316249][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316249][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316249][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3316249,'120天4星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316249][5]
	-- ===删除: 3316249,1
	tIrrigateSacredTree_Reward[3316249][5] = {}
	tIrrigateSacredTree_Reward[3316249][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316249][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316249][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][5]["DeleteItem"][1]["Id"] = 3316249 -- 【库】120-day4-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316249][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316249][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316249][5]["RewardItem"][1]["Id"] = 200622 -- StarRoosterEndlessHope[200591][属性:8][叠加:0][金币:0], 【表格】StarRoosterEndlessHope（赠）
	tIrrigateSacredTree_Reward[3316249][5]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑StarRoosterEndlessHope（赠）*1
	tIrrigateSacredTree_Reward[3316249][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316249][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316249][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316250] = {}
	-- ===3316250,'80天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316250][1]
	-- ===删除: 3316250,1
	tIrrigateSacredTree_Reward[3316250][1] = {}
	tIrrigateSacredTree_Reward[3316250][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316250][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316250][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][1]["DeleteItem"][1]["Id"] = 3316250 -- 【库】80-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316250][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316250][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][1]["RewardItem"][1]["Id"] = 195605 -- RockingRomance(Fantasy)[195605][属性:0][叠加:0][金币:0], 【表格】RockingRomance（Fantasy）（赠）
	tIrrigateSacredTree_Reward[3316250][1]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tIrrigateSacredTree_Reward[3316250][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316250][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316250][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316250,'80天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316250][2]
	-- ===删除: 3316250,1
	tIrrigateSacredTree_Reward[3316250][2] = {}
	tIrrigateSacredTree_Reward[3316250][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316250][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316250][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][2]["DeleteItem"][1]["Id"] = 3316250 -- 【库】80-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316250][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316250][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][2]["RewardItem"][1]["Id"] = 195405 -- BlossomRomance(Charm)[195405][属性:0][叠加:0][金币:0], 【表格】BlossomRomance（Charm）（赠）
	tIrrigateSacredTree_Reward[3316250][2]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑BlossomRomance(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316250][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316250][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316250][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316250,'80天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316250][3]
	-- ===删除: 3316250,1
	tIrrigateSacredTree_Reward[3316250][3] = {}
	tIrrigateSacredTree_Reward[3316250][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316250][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316250][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][3]["DeleteItem"][1]["Id"] = 3316250 -- 【库】80-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316250][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316250][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][3]["RewardItem"][1]["Id"] = 193275 -- BlossomRomance(Charm)[195405][属性:0][叠加:0][金币:0], 【表格】RobeofDarkness（Hades）（NoHelmet）（赠）
	tIrrigateSacredTree_Reward[3316250][3]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑BlossomRomance(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316250][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316250][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316250][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316250,'80天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316250][4]
	-- ===删除: 3316250,1
	tIrrigateSacredTree_Reward[3316250][4] = {}
	tIrrigateSacredTree_Reward[3316250][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316250][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316250][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][4]["DeleteItem"][1]["Id"] = 3316250 -- 【库】80-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316250][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316250][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][4]["RewardItem"][1]["Id"] = 195845 -- RemoteRomance(Firmness)[195845][属性:0][叠加:0][金币:0], 【表格】RemoteRomance（Firmness）（赠）
	tIrrigateSacredTree_Reward[3316250][4]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑RemoteRomance(Firmness)（赠）*1
	tIrrigateSacredTree_Reward[3316250][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316250][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316250][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316250,'80天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316250][5]
	-- ===删除: 3316250,1
	tIrrigateSacredTree_Reward[3316250][5] = {}
	tIrrigateSacredTree_Reward[3316250][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316250][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316250][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][5]["DeleteItem"][1]["Id"] = 3316250 -- 【库】80-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316250][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316250][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316250][5]["RewardItem"][1]["Id"] = 194875 -- BrightPurpleRomance[194875][属性:8][叠加:0][金币:0], 【表格】BrightPurpleRomance（赠）
	tIrrigateSacredTree_Reward[3316250][5]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑BrightPurpleRomance（赠）*1
	tIrrigateSacredTree_Reward[3316250][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316250][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316250][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316251] = {}
	-- ===3316251,'80天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316251][1]
	-- ===删除: 3316251,1
	tIrrigateSacredTree_Reward[3316251][1] = {}
	tIrrigateSacredTree_Reward[3316251][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316251][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316251][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][1]["DeleteItem"][1]["Id"] = 3316251 -- 【库】80-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316251][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316251][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][1]["RewardItem"][1]["Id"] = 200573 -- RadiantLotus[200573][属性:0][叠加:0][金币:0], 【表格】RadiantLotus（赠）
	tIrrigateSacredTree_Reward[3316251][1]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑RadiantLotus（赠）*1
	tIrrigateSacredTree_Reward[3316251][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316251][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316251][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316251,'80天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316251][2]
	-- ===删除: 3316251,1
	tIrrigateSacredTree_Reward[3316251][2] = {}
	tIrrigateSacredTree_Reward[3316251][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316251][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316251][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][2]["DeleteItem"][1]["Id"] = 3316251 -- 【库】80-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316251][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316251][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][2]["RewardItem"][1]["Id"] = 200596 -- CelestialFox(Fantasy)[200596][属性:0][叠加:0][金币:0], 【表格】CelestialFox（Fantasy）（赠）
	tIrrigateSacredTree_Reward[3316251][2]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑CelestialFox(Fantasy)（赠）*1
	tIrrigateSacredTree_Reward[3316251][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316251][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316251][2]["RewardEffect"]["Effect"] = "angelwing"


	-- -- ===3316251,'80天5星坐骑外套可选包'
	-- -- ===索引: tIrrigateSacredTree_Reward[3316251][3]
	-- -- ===删除: 3316251,1
	-- tIrrigateSacredTree_Reward[3316251][3] = {}
	-- tIrrigateSacredTree_Reward[3316251][3]["LogId"] = 12002011
	-- tIrrigateSacredTree_Reward[3316251][3]["DeleteItem"] = {}
	-- tIrrigateSacredTree_Reward[3316251][3]["DeleteItem"][1] = {}
	-- tIrrigateSacredTree_Reward[3316251][3]["DeleteItem"][1]["Id"] = 3316251 -- 【库】80-day5-starMountArmorPack[属性:9]
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardItem"] = {}
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardItem"][1] = {}
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardItem"][1]["Id"] = 200621 -- RadiantSamoyed[200621][属性:0][叠加:0][金币:0], 【表格】RadiantSamoyed（赠）
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑RadiantSamoyed（赠）*1
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardEffect"] = {}
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tIrrigateSacredTree_Reward[3316251][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316251,'80天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316251][4]
	-- ===删除: 3316251,1
	tIrrigateSacredTree_Reward[3316251][4] = {}
	tIrrigateSacredTree_Reward[3316251][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316251][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316251][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][4]["DeleteItem"][1]["Id"] = 3316251 -- 【库】80-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316251][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316251][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][4]["RewardItem"][1]["Id"] = 200564 -- SuperVictorAlpaca[200564][属性:0][叠加:0][金币:0], 【表格】SuperVictorAlpaca（赠）
	tIrrigateSacredTree_Reward[3316251][4]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑SuperVictorAlpaca（赠）*1
	tIrrigateSacredTree_Reward[3316251][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316251][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316251][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316251,'80天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316251][5]
	-- ===删除: 3316251,1
	tIrrigateSacredTree_Reward[3316251][5] = {}
	tIrrigateSacredTree_Reward[3316251][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316251][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316251][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][5]["DeleteItem"][1]["Id"] = 3316251 -- 【库】80-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316251][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316251][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316251][5]["RewardItem"][1]["Id"] = 200639 -- AzureFox(Freedom)[200639][属性:0][叠加:0][金币:0], 【表格】AzureFox（Freedom）（赠）
	tIrrigateSacredTree_Reward[3316251][5]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑AzureFox(Freedom)（赠）*1
	tIrrigateSacredTree_Reward[3316251][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316251][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316251][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316252] = {}
	-- ===3316252,'250天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316252][1]
	-- ===删除: 3316252,1
	tIrrigateSacredTree_Reward[3316252][1] = {}
	tIrrigateSacredTree_Reward[3316252][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316252][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316252][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][1]["DeleteItem"][1]["Id"] = 3316252 -- 【库】250-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316252][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316252][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][1]["RewardItem"][1]["Id"] = 195605 -- RockingRomance(Fantasy)[195605][属性:0][叠加:0][金币:0], 【表格】RockingRomance（Fantasy）（赠）
	tIrrigateSacredTree_Reward[3316252][1]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tIrrigateSacredTree_Reward[3316252][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316252][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316252][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316252,'250天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316252][2]
	-- ===删除: 3316252,1
	tIrrigateSacredTree_Reward[3316252][2] = {}
	tIrrigateSacredTree_Reward[3316252][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316252][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316252][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][2]["DeleteItem"][1]["Id"] = 3316252 -- 【库】250-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316252][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316252][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][2]["RewardItem"][1]["Id"] = 195405 -- BlossomRomance(Charm)[195405][属性:0][叠加:0][金币:0], 【表格】BlossomRomance（Charm）（赠）
	tIrrigateSacredTree_Reward[3316252][2]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑BlossomRomance(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316252][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316252][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316252][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316252,'250天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316252][3]
	-- ===删除: 3316252,1
	tIrrigateSacredTree_Reward[3316252][3] = {}
	tIrrigateSacredTree_Reward[3316252][3]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316252][3]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316252][3]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][3]["DeleteItem"][1]["Id"] = 3316252 -- 【库】250-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316252][3]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316252][3]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][3]["RewardItem"][1]["Id"] = 193275 -- BlossomRomance(Charm)[195405][属性:0][叠加:0][金币:0], 【表格】RobeofDarkness（Hades）（NoHelmet）（赠）
	tIrrigateSacredTree_Reward[3316252][3]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑BlossomRomance(Charm)（赠）*1
	tIrrigateSacredTree_Reward[3316252][3]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316252][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316252][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316252,'250天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316252][4]
	-- ===删除: 3316252,1
	tIrrigateSacredTree_Reward[3316252][4] = {}
	tIrrigateSacredTree_Reward[3316252][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316252][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316252][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][4]["DeleteItem"][1]["Id"] = 3316252 -- 【库】250-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316252][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316252][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][4]["RewardItem"][1]["Id"] = 195845 -- RemoteRomance(Firmness)[195845][属性:0][叠加:0][金币:0], 【表格】RemoteRomance（Firmness）（赠）
	tIrrigateSacredTree_Reward[3316252][4]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑RemoteRomance(Firmness)（赠）*1
	tIrrigateSacredTree_Reward[3316252][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316252][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316252][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316252,'250天5星时装外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316252][5]
	-- ===删除: 3316252,1
	tIrrigateSacredTree_Reward[3316252][5] = {}
	tIrrigateSacredTree_Reward[3316252][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316252][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316252][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][5]["DeleteItem"][1]["Id"] = 3316252 -- 【库】250-day5-starGarmentPack[属性:9]
	tIrrigateSacredTree_Reward[3316252][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316252][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316252][5]["RewardItem"][1]["Id"] = 194875 -- BrightPurpleRomance[194875][属性:8][叠加:0][金币:0], 【表格】BrightPurpleRomance（赠）
	tIrrigateSacredTree_Reward[3316252][5]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑BrightPurpleRomance（赠）*1
	tIrrigateSacredTree_Reward[3316252][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316252][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316252][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316253] = {}
	-- ===3316253,'250天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316253][1]
	-- ===删除: 3316253,1
	tIrrigateSacredTree_Reward[3316253][1] = {}
	tIrrigateSacredTree_Reward[3316253][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316253][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316253][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][1]["DeleteItem"][1]["Id"] = 3316253 -- 【库】250-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316253][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316253][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][1]["RewardItem"][1]["Id"] = 200573 -- RadiantLotus[200573][属性:0][叠加:0][金币:0], 【表格】RadiantLotus（赠）
	tIrrigateSacredTree_Reward[3316253][1]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑RadiantLotus（赠）*1
	tIrrigateSacredTree_Reward[3316253][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316253][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316253][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316253,'250天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316253][2]
	-- ===删除: 3316253,1
	tIrrigateSacredTree_Reward[3316253][2] = {}
	tIrrigateSacredTree_Reward[3316253][2]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316253][2]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316253][2]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][2]["DeleteItem"][1]["Id"] = 3316253 -- 【库】250-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316253][2]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316253][2]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][2]["RewardItem"][1]["Id"] = 200596 -- CelestialFox(Fantasy)[200596][属性:0][叠加:0][金币:0], 【表格】CelestialFox（Fantasy）（赠）
	tIrrigateSacredTree_Reward[3316253][2]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑CelestialFox(Fantasy)（赠）*1
	tIrrigateSacredTree_Reward[3316253][2]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316253][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316253][2]["RewardEffect"]["Effect"] = "angelwing"


	-- -- ===3316253,'250天5星坐骑外套可选包'
	-- -- ===索引: tIrrigateSacredTree_Reward[3316253][3]
	-- -- ===删除: 3316253,1
	-- tIrrigateSacredTree_Reward[3316253][3] = {}
	-- tIrrigateSacredTree_Reward[3316253][3]["LogId"] = 12002011
	-- tIrrigateSacredTree_Reward[3316253][3]["DeleteItem"] = {}
	-- tIrrigateSacredTree_Reward[3316253][3]["DeleteItem"][1] = {}
	-- tIrrigateSacredTree_Reward[3316253][3]["DeleteItem"][1]["Id"] = 3316253 -- 【库】250-day5-starMountArmorPack[属性:9]
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardItem"] = {}
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardItem"][1] = {}
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardItem"][1]["Id"] = 200621 -- RadiantSamoyed[200621][属性:0][叠加:0][金币:0], 【表格】RadiantSamoyed（赠）
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑RadiantSamoyed（赠）*1
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardEffect"] = {}
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tIrrigateSacredTree_Reward[3316253][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316253,'250天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316253][4]
	-- ===删除: 3316253,1
	tIrrigateSacredTree_Reward[3316253][4] = {}
	tIrrigateSacredTree_Reward[3316253][4]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316253][4]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316253][4]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][4]["DeleteItem"][1]["Id"] = 3316253 -- 【库】250-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316253][4]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316253][4]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][4]["RewardItem"][1]["Id"] = 200564 -- SuperVictorAlpaca[200564][属性:0][叠加:0][金币:0], 【表格】SuperVictorAlpaca（赠）
	tIrrigateSacredTree_Reward[3316253][4]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑SuperVictorAlpaca（赠）*1
	tIrrigateSacredTree_Reward[3316253][4]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316253][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316253][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316253,'250天5星坐骑外套可选包'
	-- ===索引: tIrrigateSacredTree_Reward[3316253][5]
	-- ===删除: 3316253,1
	tIrrigateSacredTree_Reward[3316253][5] = {}
	tIrrigateSacredTree_Reward[3316253][5]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316253][5]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316253][5]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][5]["DeleteItem"][1]["Id"] = 3316253 -- 【库】250-day5-starMountArmorPack[属性:9]
	tIrrigateSacredTree_Reward[3316253][5]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316253][5]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316253][5]["RewardItem"][1]["Id"] = 200639 -- AzureFox(Freedom)[200639][属性:0][叠加:0][金币:0], 【表格】AzureFox（Freedom）（赠）
	tIrrigateSacredTree_Reward[3316253][5]["RewardItem"][1]["Attr"] = "0 1 3 360000 1 0 0 1" -- 250天时效(激活)的1%神佑AzureFox(Freedom)（赠）*1
	tIrrigateSacredTree_Reward[3316253][5]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316253][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316253][5]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316254] = {}
	-- ===3316254,'神木王者宝盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316254][1]
	-- ===删除: 3316254,1
	-- ===EMoneyLog:1000,01904
	tIrrigateSacredTree_Reward[3316254][1] = {}
	tIrrigateSacredTree_Reward[3316254][1]["LogId"] = 12002011
	-- tIrrigateSacredTree_Reward[3316254][1]["EmoneyLog"] = "1000	1904	0	0	1	"
	tIrrigateSacredTree_Reward[3316254][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316254][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316254][1]["DeleteItem"][1]["Id"] = 3316254 -- 【库】GoldTreePack[属性:9]
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][1]["Id"] = 4200009 -- P9Anima[4200009][属性:584][叠加:99][金币:0], 【表格】P9龙魂*1
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][1]["Attr"] = "0 1" -- P9Anima*1
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][2] = {}
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】赠天机果*3
	tIrrigateSacredTree_Reward[3316254][1]["RewardItem"][2]["Attr"] = "0 3" -- MysteryFruit*3
	tIrrigateSacredTree_Reward[3316254][1]["RewardEMoneyMono"] = {}
	tIrrigateSacredTree_Reward[3316254][1]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tIrrigateSacredTree_Reward[3316254][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1904"
	tIrrigateSacredTree_Reward[3316254][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316254][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316254][1]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316255] = {}
	-- ===3316255,'神木强者宝盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316255][1]
	-- ===删除: 3316255,1
	-- ===EMoneyLog:1000,01904
	tIrrigateSacredTree_Reward[3316255][1] = {}
	tIrrigateSacredTree_Reward[3316255][1]["LogId"] = 12002011
	-- tIrrigateSacredTree_Reward[3316255][1]["EmoneyLog"] = "1000	1904	0	0	1	"
	tIrrigateSacredTree_Reward[3316255][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316255][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316255][1]["DeleteItem"][1]["Id"] = 3316255 -- 【库】SilverTreePack[属性:9]
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][1]["Id"] = 4200008 -- P8Anima[4200008][属性:584][叠加:99][金币:0], 【表格】P8龙魂*1
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][1]["Attr"] = "0 1" -- P8Anima*1
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][2] = {}
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】赠天机果*2
	tIrrigateSacredTree_Reward[3316255][1]["RewardItem"][2]["Attr"] = "0 2" -- MysteryFruit*2
	tIrrigateSacredTree_Reward[3316255][1]["RewardEMoneyMono"] = {}
	tIrrigateSacredTree_Reward[3316255][1]["RewardEMoneyMono"]["Value"] = 800 -- 天石（赠）, 【需求】800天石（赠）
	tIrrigateSacredTree_Reward[3316255][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1904"
	tIrrigateSacredTree_Reward[3316255][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316255][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316255][1]["RewardEffect"]["Effect"] = "angelwing"


	tIrrigateSacredTree_Reward[3316256] = {}
	-- ===3316256,'神木达人宝盒'
	-- ===索引: tIrrigateSacredTree_Reward[3316256][1]
	-- ===删除: 3316256,1
	-- ===EMoneyLog:1000,01904
	tIrrigateSacredTree_Reward[3316256][1] = {}
	tIrrigateSacredTree_Reward[3316256][1]["LogId"] = 12002011
	-- tIrrigateSacredTree_Reward[3316256][1]["EmoneyLog"] = "1000	1904	0	0	1	"
	tIrrigateSacredTree_Reward[3316256][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316256][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316256][1]["DeleteItem"][1]["Id"] = 3316256 -- 【库】WoodenTreePack[属性:9]
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][1]["Id"] = 4200007 -- P7Anima[4200007][属性:584][叠加:99][金币:0], 【表格】P7龙魂*1
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][1]["Attr"] = "0 1" -- P7Anima*1
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][2] = {}
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】赠天机果*1
	tIrrigateSacredTree_Reward[3316256][1]["RewardItem"][2]["Attr"] = "0 1" -- MysteryFruit*1
	tIrrigateSacredTree_Reward[3316256][1]["RewardEMoneyMono"] = {}
	tIrrigateSacredTree_Reward[3316256][1]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500天石（赠）
	tIrrigateSacredTree_Reward[3316256][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1904"
	tIrrigateSacredTree_Reward[3316256][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316256][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316256][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316392,'5个甘露礼盒' 过期删除
	-- ===索引: tIrrigateSacredTree_Reward[3316392]
	-- ===删除: 3316392,1
	tIrrigateSacredTree_Reward[3316392] = {}
	tIrrigateSacredTree_Reward[3316392][1] = {}
	tIrrigateSacredTree_Reward[3316392][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316392][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316392][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316392][1]["DeleteItem"][1]["Id"] = 3316392 -- 【库】5*SweetDewPack[属性:9]
	tIrrigateSacredTree_Reward[3316392][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316392][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316392][1]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】5个甘露
	tIrrigateSacredTree_Reward[3316392][1]["RewardItem"][1]["Attr"] = "0 5" -- SweetDew*5
	tIrrigateSacredTree_Reward[3316392][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316392][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316392][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316393,'10个甘露礼盒' 过期删除
	-- ===索引: tIrrigateSacredTree_Reward[3316393]
	-- ===删除: 3316393,1
	tIrrigateSacredTree_Reward[3316393] = {}
	tIrrigateSacredTree_Reward[3316393][1] = {}
	tIrrigateSacredTree_Reward[3316393][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316393][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316393][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316393][1]["DeleteItem"][1]["Id"] = 3316393 -- 【库】10*SweetDewPack[属性:9]
	tIrrigateSacredTree_Reward[3316393][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316393][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316393][1]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】10个甘露
	tIrrigateSacredTree_Reward[3316393][1]["RewardItem"][1]["Attr"] = "0 10" -- SweetDew*10
	tIrrigateSacredTree_Reward[3316393][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316393][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316393][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316394,'50个甘露礼盒' 过期删除
	-- ===索引: tIrrigateSacredTree_Reward[3316394]
	-- ===删除: 3316394,1
	tIrrigateSacredTree_Reward[3316394] = {}
	tIrrigateSacredTree_Reward[3316394][1] = {}
	tIrrigateSacredTree_Reward[3316394][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316394][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316394][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316394][1]["DeleteItem"][1]["Id"] = 3316394 -- 【库】50*SweetDewPack[属性:9]
	tIrrigateSacredTree_Reward[3316394][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316394][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316394][1]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】50个甘露
	tIrrigateSacredTree_Reward[3316394][1]["RewardItem"][1]["Attr"] = "0 50" -- SweetDew*50（[错误]物品数量超10个）
	tIrrigateSacredTree_Reward[3316394][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316394][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316394][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3316395,'100个甘露礼盒' 过期删除
	-- ===索引: tIrrigateSacredTree_Reward[3316395]
	-- ===删除: 3316395,1
	tIrrigateSacredTree_Reward[3316395] = {}
	tIrrigateSacredTree_Reward[3316395][1] = {}
	tIrrigateSacredTree_Reward[3316395][1]["LogId"] = 12002011
	tIrrigateSacredTree_Reward[3316395][1]["DeleteItem"] = {}
	tIrrigateSacredTree_Reward[3316395][1]["DeleteItem"][1] = {}
	tIrrigateSacredTree_Reward[3316395][1]["DeleteItem"][1]["Id"] = 3316395 -- 【库】100*SweetDewPack[属性:9]
	tIrrigateSacredTree_Reward[3316395][1]["RewardItem"] = {}
	tIrrigateSacredTree_Reward[3316395][1]["RewardItem"][1] = {}
	tIrrigateSacredTree_Reward[3316395][1]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】100个甘露
	tIrrigateSacredTree_Reward[3316395][1]["RewardItem"][1]["Attr"] = "0 100" -- SweetDew*100（[错误]物品数量超10个）
	tIrrigateSacredTree_Reward[3316395][1]["RewardEffect"] = {}
	tIrrigateSacredTree_Reward[3316395][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_Reward[3316395][1]["RewardEffect"]["Effect"] = "angelwing"


local tIrrigateSacredTree_ExtraGetReward = {}
	-- ===额外产出甘露 打怪掉落
	-- ===索引: tIrrigateSacredTree_ExtraGetReward[1]
	tIrrigateSacredTree_ExtraGetReward[1] = {}
	tIrrigateSacredTree_ExtraGetReward[1]["LogId"] = 12002011
	tIrrigateSacredTree_ExtraGetReward[1]["RewardItem"] = {}
	tIrrigateSacredTree_ExtraGetReward[1]["RewardItem"][1] = {}
	tIrrigateSacredTree_ExtraGetReward[1]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】1个甘露
	tIrrigateSacredTree_ExtraGetReward[1]["RewardItem"][1]["Attr"] = "0 1" -- SweetDew*1
			-- 1天（零点重置）, 可获得23个, 最多可获得:（345）
	tIrrigateSacredTree_ExtraGetReward[1]["EventType"] = 223
	tIrrigateSacredTree_ExtraGetReward[1]["DataType"] = 32
	tIrrigateSacredTree_ExtraGetReward[1]["RewardDelay"] = 1
	tIrrigateSacredTree_ExtraGetReward[1]["RewardTimeType"] = 4
	tIrrigateSacredTree_ExtraGetReward[1]["RewardData"] = 23
	tIrrigateSacredTree_ExtraGetReward[1]["RewardTotalData"] = 345
	tIrrigateSacredTree_ExtraGetReward[1]["RewardEffect"] = {}
	tIrrigateSacredTree_ExtraGetReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_ExtraGetReward[1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===额外产出甘露 打开个人竞技场礼包
	-- ===索引: tIrrigateSacredTree_ExtraGetReward[2]
	tIrrigateSacredTree_ExtraGetReward[2] = {}
	tIrrigateSacredTree_ExtraGetReward[2]["LogId"] = 12002011
	tIrrigateSacredTree_ExtraGetReward[2]["RewardItem"] = {}
	tIrrigateSacredTree_ExtraGetReward[2]["RewardItem"][1] = {}
	tIrrigateSacredTree_ExtraGetReward[2]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】1个甘露
	tIrrigateSacredTree_ExtraGetReward[2]["RewardItem"][1]["Attr"] = "0 1" -- SweetDew*1
			-- 1天（零点重置）, 可获得5个, 最多可获得:（75）
	tIrrigateSacredTree_ExtraGetReward[2]["EventType"] = 223
	tIrrigateSacredTree_ExtraGetReward[2]["DataType"] = 33
	tIrrigateSacredTree_ExtraGetReward[2]["RewardDelay"] = 1
	tIrrigateSacredTree_ExtraGetReward[2]["RewardTimeType"] = 4
	tIrrigateSacredTree_ExtraGetReward[2]["RewardData"] = 5
	tIrrigateSacredTree_ExtraGetReward[2]["RewardTotalData"] = 75
	tIrrigateSacredTree_ExtraGetReward[2]["RewardEffect"] = {}
	tIrrigateSacredTree_ExtraGetReward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_ExtraGetReward[2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===额外产出甘露 使用正气令
	-- ===索引: tIrrigateSacredTree_ExtraGetReward[3]
	tIrrigateSacredTree_ExtraGetReward[3] = {}
	tIrrigateSacredTree_ExtraGetReward[3]["LogId"] = 12002011
	tIrrigateSacredTree_ExtraGetReward[3]["RewardItem"] = {}
	tIrrigateSacredTree_ExtraGetReward[3]["RewardItem"][1] = {}
	tIrrigateSacredTree_ExtraGetReward[3]["RewardItem"][1]["Id"] = 3316233 -- SweetDew[3316233][属性:9][叠加:10000][金币:0], 【表格】1个甘露
	tIrrigateSacredTree_ExtraGetReward[3]["RewardItem"][1]["Attr"] = "0 2" -- SweetDew*2
			-- 1天（零点重置）, 可获得2个, 最多可获得:（30）
	tIrrigateSacredTree_ExtraGetReward[3]["EventType"] = 223
	tIrrigateSacredTree_ExtraGetReward[3]["DataType"] = 34
	tIrrigateSacredTree_ExtraGetReward[3]["RewardDelay"] = 1
	tIrrigateSacredTree_ExtraGetReward[3]["RewardTimeType"] = 4
	tIrrigateSacredTree_ExtraGetReward[3]["RewardData"] = 1
	tIrrigateSacredTree_ExtraGetReward[3]["RewardTotalData"] = 15
	tIrrigateSacredTree_ExtraGetReward[3]["RewardEffect"] = {}
	tIrrigateSacredTree_ExtraGetReward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIrrigateSacredTree_ExtraGetReward[3]["RewardEffect"]["Effect"] = "angelwing"


local tIrrigateSacredTree_Cont = {}
	
	-- 等级限制数据
	tIrrigateSacredTree_Cont["LevAndMete"] = {}
	tIrrigateSacredTree_Cont["LevAndMete"]["Level"] = 1
	tIrrigateSacredTree_Cont["LevAndMete"]["Mete"] = 2
	
	-- 掩码
	tIrrigateSacredTree_Cont["Stc"] = {}
	
	-- 领取每日馈赠礼盒
	tIrrigateSacredTree_Cont["Stc"][3316234] = {}
	tIrrigateSacredTree_Cont["Stc"][3316234]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316234]["DataType"] = 41
	tIrrigateSacredTree_Cont["Stc"][3316234]["Complete"] = {}
	tIrrigateSacredTree_Cont["Stc"][3316234]["Complete"][2] = 2
	tIrrigateSacredTree_Cont["Stc"][3316234]["Complete"][5] = 5
	tIrrigateSacredTree_Cont["Stc"][3316234]["Complete"][8] = 8
	tIrrigateSacredTree_Cont["Stc"][3316234]["Complete"][12] = 12
	tIrrigateSacredTree_Cont["Stc"][3316234]["Complete"][15] = 15
	
	-- 浇灌的甘露数量 即 当前积分
	tIrrigateSacredTree_Cont["Stc"][3316233] = {}
	tIrrigateSacredTree_Cont["Stc"][3316233]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316233]["DataType"] = 80
	
	-- 领取免费好礼
	tIrrigateSacredTree_Cont["Stc"][3316236] = {}
	tIrrigateSacredTree_Cont["Stc"][3316236]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316236]["DataType"] = 83
	tIrrigateSacredTree_Cont["Stc"][3316236]["Complete"] = {}
	tIrrigateSacredTree_Cont["Stc"][3316236]["Complete"][1] = 1 -- 50积分免费好礼
	tIrrigateSacredTree_Cont["Stc"][3316236]["Complete"][2] = 2 -- 100积分免费好礼
	tIrrigateSacredTree_Cont["Stc"][3316236]["Complete"][3] = 4 -- 200积分免费好礼
	
	-- 限购夏日礼盒10个
	tIrrigateSacredTree_Cont["Stc"][3316237] = {}
	tIrrigateSacredTree_Cont["Stc"][3316237]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316237]["DataType"] = 84
	tIrrigateSacredTree_Cont["Stc"][3316237]["Complete"] = 10
	
	-- 限购夏日精装礼盒10个
	tIrrigateSacredTree_Cont["Stc"][3316238] = {}
	tIrrigateSacredTree_Cont["Stc"][3316238]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316238]["DataType"] = 85
	tIrrigateSacredTree_Cont["Stc"][3316238]["Complete"] = 10
	
	-- 限购夏日珍宝礼盒10个
	tIrrigateSacredTree_Cont["Stc"][3316239] = {}
	tIrrigateSacredTree_Cont["Stc"][3316239]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316239]["DataType"] = 86
	tIrrigateSacredTree_Cont["Stc"][3316239]["Complete"] = 5
	
	-- 限购夏日豪华礼盒10个
	tIrrigateSacredTree_Cont["Stc"][3316240] = {}
	tIrrigateSacredTree_Cont["Stc"][3316240]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316240]["DataType"] = 87
	tIrrigateSacredTree_Cont["Stc"][3316240]["Complete"] = 10
	
	-- 限购夏日至尊礼盒10个
	tIrrigateSacredTree_Cont["Stc"][3316241] = {}
	tIrrigateSacredTree_Cont["Stc"][3316241]["EventType"] = 222
	tIrrigateSacredTree_Cont["Stc"][3316241]["DataType"] = 88
	tIrrigateSacredTree_Cont["Stc"][3316241]["Complete"] = 5
	
	
	-- 物品id
	tIrrigateSacredTree_Cont["ItemId"] = {}
	-- 3316233,'甘露'
	tIrrigateSacredTree_Cont["ItemId"][1] = 3316233
	-- 3316234,'每日馈赠礼盒'
	tIrrigateSacredTree_Cont["ItemId"][2] = 3316234
	
	-- 积分
	tIrrigateSacredTree_Cont["Point"] = {}
	-- 需要的积分
	tIrrigateSacredTree_Cont["Point"]["Range"] = {}
	tIrrigateSacredTree_Cont["Point"]["Range"][1] = 50
	tIrrigateSacredTree_Cont["Point"]["Range"][2] = 100
	tIrrigateSacredTree_Cont["Point"]["Range"][3] = 200
	-- 对应的对白编号
	tIrrigateSacredTree_Cont["Point"]["Dialog"] = {}
	tIrrigateSacredTree_Cont["Point"]["Dialog"][1] = {"Text381", "3-8"}
	tIrrigateSacredTree_Cont["Point"]["Dialog"][2] = {"Text391", "3-9"}
	tIrrigateSacredTree_Cont["Point"]["Dialog"][3] = {"Text3101","3-10"}
	
	-- 购买特惠礼盒需要的天石
	tIrrigateSacredTree_Cont["NeedMoney"] = {}
	tIrrigateSacredTree_Cont["NeedMoney"][3316237] = 49
	tIrrigateSacredTree_Cont["NeedMoney"][3316238] = 99
	tIrrigateSacredTree_Cont["NeedMoney"][3316239] = 999
	tIrrigateSacredTree_Cont["NeedMoney"][3316240] = 399
	tIrrigateSacredTree_Cont["NeedMoney"][3316241] = 2999
	
	
	-- Log
	tIrrigateSacredTree_Cont["Log"] = {}
	-- 上交删除甘露 物品id 物品数量
	tIrrigateSacredTree_Cont["Log"]["DelSweetDew"] = "0,0,%d,%d,12002011,3[1],0,0"
	-- 过期/不在服务器 删除物品 物品id 物品数量
	tIrrigateSacredTree_Cont["Log"]["DelTimeOut"] = "0,0,%d,%d,12002011,3[2],0,0"
	-- 购买礼盒
	tIrrigateSacredTree_Cont["Log"]["EMoney"] = "1000	1904	%d	%d	1	"
	
	-- global
	tIrrigateSacredTree_Cont["Global"] = {}
	-- 排行榜global
	tIrrigateSacredTree_Cont["Global"]["Ranking"] = {}
	tIrrigateSacredTree_Cont["Global"]["Ranking"]["Id"] = 54621
	tIrrigateSacredTree_Cont["Global"]["Ranking"]["Index"] = 26588
	tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data0"] = 2000
	tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] = 1500
	tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] = 1000
	-- 服务器区分global 服务器区分 data0 =1 表示上 =0 表示不上该活动
	tIrrigateSacredTree_Cont["Global"]["ServerDisting"] = {}
	tIrrigateSacredTree_Cont["Global"]["ServerDisting"]["Id"] = 54482
	tIrrigateSacredTree_Cont["Global"]["ServerDisting"]["Data0"] = 1
	
	-- 邮件发奖action
	tIrrigateSacredTree_Cont["RankingReward"] = {}
	tIrrigateSacredTree_Cont["RankingReward"][1] = 577960
	tIrrigateSacredTree_Cont["RankingReward"][2] = 577961
	tIrrigateSacredTree_Cont["RankingReward"][3] = 577962
	
	

----------------------------------逻辑部分---------------------------------------------
-- 服务器区分
-- true/false -- 上/不上
function IrrigateSacredTree_ServerDisting()
	local nIrrigateSacredTree_Global = tIrrigateSacredTree_Cont["Global"]["ServerDisting"]["Id"]
	local nIrrigateSacredTree_Data0 = tIrrigateSacredTree_Cont["Global"]["ServerDisting"]["Data0"]
	
	if Get_SysDynaGlobalData0(nIrrigateSacredTree_Global) < nIrrigateSacredTree_Data0 then
		return false
	end
	
	return true
end

-- 获取掩码(掩码下标)
-- 返回 玩家掩码值
function IrrigateSacredTree_GetStcValue(nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	local nIrrigateSacredTree_EventType = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_Index]["EventType"]
	local nIrrigateSacredTree_DataType = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_Index]["DataType"]
	
	return Get_UserStatisticValue(nIrrigateSacredTree_EventType, nIrrigateSacredTree_DataType, nIrrigateSacredTree_UserId)
end

-- 是否隔天(掩码下标)
-- 返回 true/false -- 超过/未超过
function IrrigateSacredTree_StcInterval(nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	local nIrrigateSacredTree_EventType = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_Index]["EventType"]
	local nIrrigateSacredTree_DataType = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_Index]["DataType"]
	
	if Task_StcInterval(nIrrigateSacredTree_EventType, nIrrigateSacredTree_DataType,1,4) then
		return true
	end
	
	return false
end

-- 置掩码(掩码下标, 加的掩码值)
-- 返回 true/false -- 成功/失败
function IrrigateSacredTree_AddStcValue(nIrrigateSacredTree_Index, nIrrigateSacredTree_Data)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	local nIrrigateSacredTree_EventType = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_Index]["EventType"]
	local nIrrigateSacredTree_DataType = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_Index]["DataType"]
	
	if Task_AddStatistic(nIrrigateSacredTree_EventType, nIrrigateSacredTree_DataType, nIrrigateSacredTree_Data, 1, nIrrigateSacredTree_UserId) then
		Task_SetStcTimestamp(nIrrigateSacredTree_EventType, nIrrigateSacredTree_DataType, 0)
		return true
	end
	
	return false
end


-- 判断玩家等级转世(玩家id)
-- 返回 true/false -- 达到/未达到
function IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_NowUserId)	
	local nIrrigateSacredTree_UserId = nIrrigateSacredTree_NowUserId or Get_UserId()

	local nIrrigateSacredTree_Level = tIrrigateSacredTree_Cont["LevAndMete"]["Level"]
	local nIrrigateSacredTree_Mete = tIrrigateSacredTree_Cont["LevAndMete"]["Mete"]
	
	return User_JudgeLevelAndMetempsychosis(nIrrigateSacredTree_Level,nIrrigateSacredTree_Mete,nIrrigateSacredTree_UserId)
end

-- 领取每日馈赠礼盒(礼包id, 奖励表下标)
-- nIrrigateSacredTree_Index =1 表示 只领取每日馈赠礼盒 =2 表示 领取每日馈赠礼盒+盛夏果实转盘
function IrrigateSacredTree_DailyPresentPack(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 是否隔天
	if not IrrigateSacredTree_StcInterval(nIrrigateSacredTree_ItemId) then
		return
	end
	
	-- 判断是第几天领取
	local nIrrigateSacredTree_Complete = IrrigateSacredTree_GetStcValue(nIrrigateSacredTree_ItemId)
	if tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_ItemId]["Complete"][nIrrigateSacredTree_Complete+1] ~= nil then
		nIrrigateSacredTree_Index = 2
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tIrrigateSacredTree_NpcGetReward[nIrrigateSacredTree_ItemId][nIrrigateSacredTree_Index]) then
		return
	end
	
	-- 打掩码
	if not IrrigateSacredTree_AddStcValue(nIrrigateSacredTree_ItemId,1) then
		return
	end
	
	-- 领取每日馈赠礼盒
	RewardTemplate_UseItemAndMsg(tIrrigateSacredTree_NpcGetReward[nIrrigateSacredTree_ItemId][nIrrigateSacredTree_Index])
end

-- 领取免费好礼(物品id)3316236
function IrrigateSacredTree_GetFreeReward(nIrrigateSacredTree_ItemId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 获取玩家当前积分
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	local nIrrigateSacredTree_Range = IrrigateSacredTree_ChkPorintsRange(nIrrigateSacredTree_Points)
	
	-- 积分不足 不可领取
	if nIrrigateSacredTree_Range == nil or nIrrigateSacredTree_Range == 0 then
		Sys_MsgBox(tIrrigateSacredTree_Text["Sys"][26588]["PointLimit"])
		return
	end
	
	local nIrrigateSacredTree_AllPoints = 0
	local nIrrigateSacredTree_GotFreeReward = IrrigateSacredTree_GetStcValue(nIrrigateSacredTree_ItemId)
	-- 所有奖励都已领取
	for i,v in ipairs(tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_ItemId]["Complete"]) do
		nIrrigateSacredTree_AllPoints = nIrrigateSacredTree_AllPoints + v
	end
	
	if nIrrigateSacredTree_GotFreeReward == nIrrigateSacredTree_AllPoints then
		Sys_MsgBox(tIrrigateSacredTree_Text["Sys"][26588]["NoReward"])
		return
	end
	
	-- 玩家当前未领取的奖励 对应的档次
	local tIrrigateSacredTree_NoGetReward = {}
	
	-- 获取当前已领取的免费好礼掩码
	-- 判断当前免费好礼是否已领取
	for i = 1, nIrrigateSacredTree_Range do
		-- 领取该奖励需要的奖励掩码
		local nIrrigateSacredTree_Reward_Need = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_ItemId]["Complete"][i]
		-- 判断奖励掩码是否打上
		if not Sys_ParseNumbersContain(nIrrigateSacredTree_Reward_Need,nIrrigateSacredTree_GotFreeReward) then
			-- 当前积分奖励未领取 插入奖励档次存储表 1-6
			table.insert(tIrrigateSacredTree_NoGetReward,nIrrigateSacredTree_Reward_Need)
		end
	end
	
	if #tIrrigateSacredTree_NoGetReward == 0 then
		Sys_MsgBox(tIrrigateSacredTree_Text["Sys"][26588]["NoReward"])
		return
	end
	
	-- 复制临时奖励表
	local tIrrigateSacredTree_Reward_User = CommonFunc_Copy(tIrrigateSacredTree_NpcGetReward["Copy"])
	
	-- 循环创建玩家奖励表
	for i,v in ipairs(tIrrigateSacredTree_NoGetReward) do
		tIrrigateSacredTree_Reward_User["RewardItem"][i] = {}
		tIrrigateSacredTree_Reward_User["RewardItem"][i]["Id"] = nIrrigateSacredTree_ItemId
		tIrrigateSacredTree_Reward_User["RewardItem"][i]["Attr"] = "0 1"
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tIrrigateSacredTree_Reward_User) then
		return
	end
	
	-- for循环记录玩家掩码
	for i,v in ipairs(tIrrigateSacredTree_NoGetReward) do
		-- 记录玩家领取的奖励掩码
		-- 打掩码
		if not IrrigateSacredTree_AddStcValue(nIrrigateSacredTree_ItemId,v) then
			return
		end
	end
	
	-- 给玩家奖励
	if RewardTemplate_UseItemAndMsg(tIrrigateSacredTree_Reward_User) then
		Sys_MsgBox(tIrrigateSacredTree_Text["Sys"][26588]["PointEnough"])
	end
end

-- 计算当前积分所在区间(玩家当前积分)
-- 玩家所在积分区间
function IrrigateSacredTree_ChkPorintsRange(nIrrigateSacredTree_Points)
	
	if nIrrigateSacredTree_Points >= tIrrigateSacredTree_Cont["Point"]["Range"][1] and nIrrigateSacredTree_Points < tIrrigateSacredTree_Cont["Point"]["Range"][2] then
		return 1
	elseif nIrrigateSacredTree_Points >= tIrrigateSacredTree_Cont["Point"]["Range"][2] and nIrrigateSacredTree_Points < tIrrigateSacredTree_Cont["Point"]["Range"][3] then
		return 2
	elseif nIrrigateSacredTree_Points >= tIrrigateSacredTree_Cont["Point"]["Range"][3] then
		return 3
	end
	
	return nil
end

-- 检测背包中是否有甘露(npcId, 物品索引下标)
function IrrigateSacredTree_ChkSweetDew(nIrrigateSacredTree_NpcId, nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	local nIrrigateSacredTree_ItemId = tIrrigateSacredTree_Cont["ItemId"][nIrrigateSacredTree_Index]
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 没有甘露
	if not Item_ChkMulItem(nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemId, 1) then
		LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"2-2")
end

-- 一键浇灌(npcId, 物品索引下标)(上交甘露)
function IrrigateSacredTree_WaterTree(nIrrigateSacredTree_NpcId, nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	local nIrrigateSacredTree_ItemId = tIrrigateSacredTree_Cont["ItemId"][nIrrigateSacredTree_Index]
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text231"] = tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text231"]
	local sIrrigateSacredTree_Text231 = tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text231"]
	
	-- 没有甘露
	if not Item_ChkMulItem(nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemId, 1) then
		LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"2-1")
		return
	end
	
	local nIrrigateSacredTree_ItemNum = Get_CountItemType(nIrrigateSacredTree_ItemId, 0)
	
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text231"] = string.format(sIrrigateSacredTree_Text231,nIrrigateSacredTree_ItemNum,nIrrigateSacredTree_ItemNum)
	tNpcGossip[nIrrigateSacredTree_NpcId]["OptionFunc231"] = "IrrigateSacredTree_WaterTreeComfirm</N>26588</N>"..nIrrigateSacredTree_ItemId
	
	LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"2-3")
end

-- 确认浇灌(NpcId, 甘露id)(确认上交)
function IrrigateSacredTree_WaterTreeComfirm(nIrrigateSacredTree_NpcId,nIrrigateSacredTree_ItemId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 背包甘露数量
	local nIrrigateSacredTree_ItemNum = Get_CountItemType(nIrrigateSacredTree_ItemId, 0)
	
	if nIrrigateSacredTree_ItemNum <= 0 or nIrrigateSacredTree_ItemNum == nil then
		LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"2-1")
		return
	end
	
	-- 甘露数量不足
	if not Item_ChkMulItem(nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemNum) then
		LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"2-1")
		return
	end
	
	-- 删除甘露
	if not Item_DelMulItem(nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemNum) then
		return
	end
	
	-- 删除物品 打LOG
	Sys_SaveActionFestivalLog(string.format(tIrrigateSacredTree_Cont["Log"]["DelSweetDew"],nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum))
	
	-- 打掩码
	if not IrrigateSacredTree_AddStcValue(nIrrigateSacredTree_ItemId, nIrrigateSacredTree_ItemNum) then
		return
	end
	
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(nIrrigateSacredTree_ItemId)
	
	local nIrrigateSacredTree_RankingIndex = tIrrigateSacredTree_Cont["Global"]["Ranking"]["Index"]
	
	RankingFunc_SetInfo(nIrrigateSacredTree_RankingIndex,nIrrigateSacredTree_Points,nIrrigateSacredTree_UserId)
	Sys_MsgBox(tIrrigateSacredTree_Text["Sys"][nIrrigateSacredTree_NpcId]["Success"], "LinkNpcGossipFunc_New</N>"..nIrrigateSacredTree_NpcId.."</S>4-4",nil,nIrrigateSacredTree_UserId)
end

-- 抢购特惠礼盒
function IrrigateSacredTree_CanBuyPack(nIrrigateSacredTree_NpcId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 获取当前积分
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	
	
	-- 确定积分区间
	local nIrrigateSacredTree_Range = IrrigateSacredTree_ChkPorintsRange(nIrrigateSacredTree_Points)
	if nIrrigateSacredTree_Range == nil or nIrrigateSacredTree_Range == 0 then
		return
	end
	
	local sIrrigateSacredTree_DialogText = tIrrigateSacredTree_Cont["Point"]["Dialog"][nIrrigateSacredTree_Range][1]
	tNpcGossip[nIrrigateSacredTree_NpcId][tostring(sIrrigateSacredTree_DialogText)] = ""
	tNpcGossip[nIrrigateSacredTree_NpcId][tostring(sIrrigateSacredTree_DialogText)] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId][nIrrigateSacredTree_Range],nIrrigateSacredTree_Points)
	LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId, tostring(tIrrigateSacredTree_Cont["Point"]["Dialog"][nIrrigateSacredTree_Range][2]))
end

-- 确认花费xx天石抢购（x天石）
function IrrigateSacredTree_BuyPack(nIrrigateSacredTree_NpcId, nIrrigateSacredTree_ItemId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 获取当前特惠礼盒购买次数
	local nIrrigateSacredTree_NowTimes = IrrigateSacredTree_GetStcValue(nIrrigateSacredTree_ItemId)
	-- 当前特惠礼盒限购次数
	local nIrrigateSacredTree_CompleteTimes = tIrrigateSacredTree_Cont["Stc"][nIrrigateSacredTree_ItemId]["Complete"]
	
	-- 购买次数已达上限
	if nIrrigateSacredTree_NowTimes >= nIrrigateSacredTree_CompleteTimes then
		Sys_MsgBox(string.format(tIrrigateSacredTree_Text["Sys"][nIrrigateSacredTree_NpcId]["BuyLimit"],tIrrigateSacredTree_Text["ItemName"][nIrrigateSacredTree_ItemId]))
		return
	end
	
	-- 获取玩家天石数量
	local nIrrigateSacredTree_UserEMoney = Get_UserEMoney(nIrrigateSacredTree_UserId)
	local nIrrigateSacredTree_NeedEMoney = tIrrigateSacredTree_Cont["NeedMoney"][nIrrigateSacredTree_ItemId]
	
	-- 购买次数未达上限 判断天石是否足够
	if nIrrigateSacredTree_UserEMoney < nIrrigateSacredTree_NeedEMoney then
		Sys_MsgBox(tIrrigateSacredTree_Text["Sys"][nIrrigateSacredTree_NpcId]["EMoneyLimit"])
		return
	end
	
	-- 天石足够 判断背包空间
	if not RewardTemplate_CheckSpace(tIrrigateSacredTree_BuyPack[nIrrigateSacredTree_ItemId]) then
		return
	end
	
	-- 打掩码
	if not IrrigateSacredTree_AddStcValue(nIrrigateSacredTree_ItemId,1) then
		return
	end
	
	if not User_AddEMoney(-nIrrigateSacredTree_NeedEMoney) then
		return
	end
	
	Sys_SaveEmoneyBuy(string.format(tIrrigateSacredTree_Cont["Log"]["EMoney"],nIrrigateSacredTree_NeedEMoney,nIrrigateSacredTree_NeedEMoney))
	
	if RewardTemplate_UseItemAndMsg(tIrrigateSacredTree_BuyPack[nIrrigateSacredTree_ItemId]) then
		Sys_MsgBox(string.format(tIrrigateSacredTree_Text["Sys"][nIrrigateSacredTree_NpcId]["EMoneyEnough"],tIrrigateSacredTree_Text["ItemName"][nIrrigateSacredTree_ItemId]))
	end
end

-- 查看排行榜(npcid)
function IrrigateSacredTree_LookRanking(nIrrigateSacredTree_NpcId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	local sIrrigateSacredTree_Text411 = tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text411"]
	local sIrrigateSacredTree_Text412 = tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"]
	local sIrrigateSacredTree_Text413 = tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"]
	local sIrrigateSacredTree_Text418 = tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text418"]
	
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text411"] = ""
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = ""
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = ""
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text418"] = ""
	
	-- 排行榜下标
	local nIrrigateSacredTree_RankingIndex = tIrrigateSacredTree_Cont["Global"]["Ranking"]["Index"]
	
	-- local nIrrigateSacredTree_RankUserId = 0
	-- local sIrrigateSacredTree_RankUserName = ""
	-- local nIrrigateSacredTree_RankUserScore = 0
	-- local sIrrigateSacredTree_RankText = ""
	
	-- 排行榜表数据
	local tIrrigateSacredTree_RankingData = RankingFunc_GetNowData(nIrrigateSacredTree_RankingIndex)
	
	-- 获取玩家当前掩码值 - 积分
	local nIrrigateSacredTree_Point = IrrigateSacredTree_GetStcValue(3316233)
	tNpcGossip[nIrrigateSacredTree_NpcId]["Text418"] = string.format(sIrrigateSacredTree_Text418,nIrrigateSacredTree_Point)
	
	-- 积分基础分值
	local tIrrigateSacredTree_RankUserScoreNone = {}
		tIrrigateSacredTree_RankUserScoreNone[1] = tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data0"]
		tIrrigateSacredTree_RankUserScoreNone[2] = tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"]
		tIrrigateSacredTree_RankUserScoreNone[3] = tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"]
	
	local sIrrigateSacredTree_RankUserNameNone = "None"
	-- 排行榜为空时
	if tIrrigateSacredTree_RankingData == nil or #tIrrigateSacredTree_RankingData == 0 then
		
		for i = 1, 3 do
			
			-- 排行榜总文本
			local sIrrigateSacredTree_RankTextNone = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNone)
		end
		LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
		return
	end
	
	-- 判断分值区间 显示在排行榜
	local nIrrigateSacredTree_Length = #tIrrigateSacredTree_RankingData
	
	-- 只有一个人
	if nIrrigateSacredTree_Length == 1 then
		local sIrrigateSacredTree_RankUserName1 = tIrrigateSacredTree_RankingData[1]["UserName"]
		local nIrrigateSacredTree_RankUserScore1 = tIrrigateSacredTree_RankingData[1]["Score"]
		
		-- 名字处理 -- 海外使用
		sIrrigateSacredTree_RankUserName1 = string.gsub(sIrrigateSacredTree_RankUserName1, "<", " ")
		sIrrigateSacredTree_RankUserName1 = string.gsub(sIrrigateSacredTree_RankUserName1, ">", " ")
		
		-- 大于2000
		if nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data0"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(1),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text411"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text411"],sIrrigateSacredTree_RankTextNum1)
			
			for i = 2, 3 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		-- 大于1500
		elseif nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(2),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum1)
			
			for i = 1, 3, 2 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		-- 大于1000
		elseif nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum1)
			
			for i = 1, 2 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		else
			for i = 1, 3 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		end
		return
	end
		
	-- 有两个人
	if nIrrigateSacredTree_Length == 2 then
		local sIrrigateSacredTree_RankUserName1 = tIrrigateSacredTree_RankingData[1]["UserName"]
		local nIrrigateSacredTree_RankUserScore1 = tIrrigateSacredTree_RankingData[1]["Score"]
		-- User_TalkChannel2005("score1 = "..nIrrigateSacredTree_RankUserScore1)
		local sIrrigateSacredTree_RankUserName2 = tIrrigateSacredTree_RankingData[2]["UserName"]
		local nIrrigateSacredTree_RankUserScore2 = tIrrigateSacredTree_RankingData[2]["Score"]
		-- User_TalkChannel2005("score2 = "..nIrrigateSacredTree_RankUserScore2)
		
		-- 名字处理 -- 海外使用
		sIrrigateSacredTree_RankUserName1 = string.gsub(sIrrigateSacredTree_RankUserName1, "<", " ")
		sIrrigateSacredTree_RankUserName1 = string.gsub(sIrrigateSacredTree_RankUserName1, ">", " ")
		
		sIrrigateSacredTree_RankUserName2 = string.gsub(sIrrigateSacredTree_RankUserName2, "<", " ")
		sIrrigateSacredTree_RankUserName2 = string.gsub(sIrrigateSacredTree_RankUserName2, ">", " ")
		
		-- 第一个人大于2000
		if nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data0"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(1),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text411"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text411"],sIrrigateSacredTree_RankTextNum1)
			
			-- 第二个人大于1500
			if nIrrigateSacredTree_RankUserScore2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
				local sIrrigateSacredTree_RankTextNum2 = Sys_Alignment(tostring(2),0,tostring(nIrrigateSacredTree_RankUserScore2),45,sIrrigateSacredTree_RankUserName2,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum2)
				-- User_TalkChannel2005("score2..1 = "..nIrrigateSacredTree_RankUserScore2)
				local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(3),0,tostring(tIrrigateSacredTree_RankUserScoreNone[3]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum3)
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			-- 第二个人大于1000
			elseif nIrrigateSacredTree_RankUserScore2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
				local sIrrigateSacredTree_RankTextNum2 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore2),45,sIrrigateSacredTree_RankUserName2,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum2)
				-- User_TalkChannel2005("score2..2 = "..nIrrigateSacredTree_RankUserScore2)
				local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(2),0,tostring(tIrrigateSacredTree_RankUserScoreNone[2]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum3)
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			else
				for i = 2, 3 do
					-- 排行榜总文本
					local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
					tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
				end
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			end
			
		-- 第一个人大于1500
		elseif nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(2),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum1)
			
			-- 第二个人大于1000
			if nIrrigateSacredTree_RankUserScore2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
				local sIrrigateSacredTree_RankTextNum2 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore2),45,sIrrigateSacredTree_RankUserName2,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum2)
				
				local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(1),0,tostring(tIrrigateSacredTree_RankUserScoreNone[1]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text411"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text411"],sIrrigateSacredTree_RankTextNum3)
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			else
				for i = 1, 3, 2 do
					-- 排行榜总文本
					local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
					tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
				end
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			end
			
		-- 第一个人大于1000
		elseif nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum1)
			
			-- 其余名次存空
			for i = 1, 2 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		else
			-- 其余名次存空
			for i = 1, 3 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		end
	end
		
	-- 有三个人
	if nIrrigateSacredTree_Length == 3 then
		local sIrrigateSacredTree_RankUserName1 = tIrrigateSacredTree_RankingData[1]["UserName"]
		local nIrrigateSacredTree_RankUserScore1 = tIrrigateSacredTree_RankingData[1]["Score"]
		
		local sIrrigateSacredTree_RankUserName2 = tIrrigateSacredTree_RankingData[2]["UserName"]
		local nIrrigateSacredTree_RankUserScore2 = tIrrigateSacredTree_RankingData[2]["Score"]
		
		local sIrrigateSacredTree_RankUserName3 = tIrrigateSacredTree_RankingData[3]["UserName"]
		local nIrrigateSacredTree_RankUserScore3 = tIrrigateSacredTree_RankingData[3]["Score"]
		
		-- 名字处理 -- 海外使用
		sIrrigateSacredTree_RankUserName1 = string.gsub(sIrrigateSacredTree_RankUserName1, "<", " ")
		sIrrigateSacredTree_RankUserName1 = string.gsub(sIrrigateSacredTree_RankUserName1, ">", " ")
		
		sIrrigateSacredTree_RankUserName2 = string.gsub(sIrrigateSacredTree_RankUserName2, "<", " ")
		sIrrigateSacredTree_RankUserName2 = string.gsub(sIrrigateSacredTree_RankUserName2, ">", " ")
		
		sIrrigateSacredTree_RankUserName3 = string.gsub(sIrrigateSacredTree_RankUserName3, "<", " ")
		sIrrigateSacredTree_RankUserName3 = string.gsub(sIrrigateSacredTree_RankUserName3, ">", " ")
		
		-- 第一个人大于2000
		if nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data0"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(1),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text411"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text411"],sIrrigateSacredTree_RankTextNum1)
			
			-- 第二个人大于1500
			if nIrrigateSacredTree_RankUserScore2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
				local sIrrigateSacredTree_RankTextNum2 = Sys_Alignment(tostring(2),0,tostring(nIrrigateSacredTree_RankUserScore2),45,sIrrigateSacredTree_RankUserName2,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum2)
				
				-- 第三个人大于1000
				if nIrrigateSacredTree_RankUserScore3 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
					local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore3),45,sIrrigateSacredTree_RankUserName3,90)
					tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum3)
				else
					local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(3),0,tostring(tIrrigateSacredTree_RankUserScoreNone[3]),45,sIrrigateSacredTree_RankUserNameNone,90)
					tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum3)
				end
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			end
			
			-- 第二个人大于1000
			if nIrrigateSacredTree_RankUserScore2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
				local sIrrigateSacredTree_RankTextNum2 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore2),45,sIrrigateSacredTree_RankUserName2,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum2)
				
				local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(2),0,tostring(tIrrigateSacredTree_RankUserScoreNone[2]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum3)
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			else
				for i = 2, 3 do
					-- 排行榜总文本
					local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
					tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
				end
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			end
			return
		-- 第一个人大于1500
		elseif nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(2),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text412"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text412"],sIrrigateSacredTree_RankTextNum1)
			
			-- 第二个人大于1000
			if nIrrigateSacredTree_RankUserScore2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
				local sIrrigateSacredTree_RankTextNum2 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore2),45,sIrrigateSacredTree_RankUserName2,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum2)
				
				local sIrrigateSacredTree_RankTextNum3 = Sys_Alignment(tostring(1),0,tostring(tIrrigateSacredTree_RankUserScoreNone[1]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text411"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text411"],sIrrigateSacredTree_RankTextNum3)
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			else
				for i = 1, 3, 2 do
					-- 排行榜总文本
					local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
					tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
				end
				LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
				return
			end
			return
		-- 第一个人大于1000
		elseif nIrrigateSacredTree_RankUserScore1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
			local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(3),0,tostring(nIrrigateSacredTree_RankUserScore1),45,sIrrigateSacredTree_RankUserName1,90)
			tNpcGossip[nIrrigateSacredTree_NpcId]["Text413"] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text413"],sIrrigateSacredTree_RankTextNum1)
			
			for i = 1, 2 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
			return
		else
			for i = 1, 3 do
				-- 排行榜总文本
				local sIrrigateSacredTree_RankTextNum1 = Sys_Alignment(tostring(i),0,tostring(tIrrigateSacredTree_RankUserScoreNone[i]),45,sIrrigateSacredTree_RankUserNameNone,90)
				tNpcGossip[nIrrigateSacredTree_NpcId]["Text41"..i] = string.format(tIrrigateSacredTree_Text[nIrrigateSacredTree_NpcId]["Text41"..i],sIrrigateSacredTree_RankTextNum1)
			end
			LinkNpcGossipFunc_New(nIrrigateSacredTree_NpcId,"4-1")
		end
	end
end

-- 打开天石商店
function IrrigateSacredTree_OpenShop(nIrrigateSacredTree_NpcId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	-- if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		-- return
	-- end
	
	User_OpenDialog(0,nIrrigateSacredTree_NpcId)
end

-- 打开可选包
function IrrigateSacredTree_ChossPack(nIrrigateSacredTree_ItemId, nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	tItem[nIrrigateSacredTree_ItemId]["Text211"] = ""
	local sIrrigateSacredTree_Text211 = tIrrigateSacredTree_Text[nIrrigateSacredTree_ItemId]["Text211"]
	
	-- 不在活动时间
	if (not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])) or (not IrrigateSacredTree_ServerDisting()) then
		-- 删除物品
		local nIrrigateSacredTree_ItemNum = Get_CountItemType(nIrrigateSacredTree_ItemId,0)
		if not Item_DelMulItem(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum) then
			return
		end
		
		-- 删除所有物品 打log
		Sys_SaveActionFestivalLog(string.format(tIrrigateSacredTree_Cont["Log"]["DelTimeOut"],nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum))
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	if not Item_ChkMulItem(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemId,1) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tIrrigateSacredTree_Reward[nIrrigateSacredTree_ItemId]) then
		return
	end
	
	tItem[nIrrigateSacredTree_ItemId]["Text211"] = string.format(sIrrigateSacredTree_Text211,tIrrigateSacredTree_Text["Choose"][nIrrigateSacredTree_ItemId][nIrrigateSacredTree_Index])
	tItem[nIrrigateSacredTree_ItemId]["OptionFunc211"] = "IrrigateSacredTree_OpenPack</N>"..nIrrigateSacredTree_ItemId.."</N>"..nIrrigateSacredTree_Index
	LinkItemGossipFunc_New(nIrrigateSacredTree_ItemId,"2-1")
end

function IrrigateSacredTree_UseItem(nIrrigateSacredTree_ItemId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	-- 不在活动时间
	if (not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])) or (not IrrigateSacredTree_ServerDisting()) then
		-- 删除物品
		local nIrrigateSacredTree_ItemNum = Get_CountItemType(nIrrigateSacredTree_ItemId,0)
		if not Item_DelMulItem(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum) then
			return
		end
		
		-- 删除所有物品 打log
		Sys_SaveActionFestivalLog(string.format(tIrrigateSacredTree_Cont["Log"]["DelTimeOut"],nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum))
		return
	end
	
	NpcPosition_PathFind(26588)
end

-- 打开礼包
function IrrigateSacredTree_OpenPack(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	
	if nIrrigateSacredTree_ItemId ~= 3316254 and nIrrigateSacredTree_ItemId ~= 3316255 and nIrrigateSacredTree_ItemId ~= 3316256 then
		-- 不在活动时间
		if (not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])) or (not IrrigateSacredTree_ServerDisting()) then
			-- 删除物品
			local nIrrigateSacredTree_ItemNum = Get_CountItemType(nIrrigateSacredTree_ItemId,0)
			if not Item_DelMulItem(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum) then
				return
			end
			
			-- 删除所有物品 打log
			Sys_SaveActionFestivalLog(string.format(tIrrigateSacredTree_Cont["Log"]["DelTimeOut"],nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemNum))
			return
		end
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	if not Item_ChkMulItem(nIrrigateSacredTree_ItemId,nIrrigateSacredTree_ItemId,1) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tIrrigateSacredTree_Reward[nIrrigateSacredTree_ItemId][nIrrigateSacredTree_Index]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tIrrigateSacredTree_Reward[nIrrigateSacredTree_ItemId][nIrrigateSacredTree_Index])
end

-- 打怪掉落
function IrrigateSacredTree_KillMonster(nIrrigateSacredTree_MonsterId)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	-- 概率掉落
	if Sys_Random(1000,10000) then
		IrrigateSacredTree_ExtraGetReward(1)
	end
	
end

-- 额外产出甘露
function IrrigateSacredTree_ExtraGetReward(nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return
	end
	
	local nIrrigateSacredTree_Space = IrrigateSacredTree_ExtraChkSpace(nIrrigateSacredTree_Index)
	
	if nIrrigateSacredTree_Space == 0 or nIrrigateSacredTree_Space == nil then
		return
	end
	
	if not User_CheckLeftSpace(nIrrigateSacredTree_Space) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tIrrigateSacredTree_ExtraGetReward[nIrrigateSacredTree_Index])
end

-- 额外产出甘露 背包空间判断
-- 返回 所需的背包空间
function IrrigateSacredTree_ExtraChkSpace(nIrrigateSacredTree_Index)
	local nIrrigateSacredTree_UserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return 0
	end
	
	-- 服务器区分判断
	if not IrrigateSacredTree_ServerDisting() then
		return 0
	end
	
	-- 等级判断
	if not IrrigateSacredTree_ChkLevAndMete(nIrrigateSacredTree_UserId) then
		return 0
	end
	
	if not RewardTemplate_JudgmentStc(tIrrigateSacredTree_ExtraGetReward[nIrrigateSacredTree_Index]) then
		return 0
	end
	
	local nIrrigateSacredTree_Space = RewardTemplate_GetRewardSpace(tIrrigateSacredTree_ExtraGetReward[nIrrigateSacredTree_Index])
	
	return nIrrigateSacredTree_Space
end

-- 时间自检发排行榜奖励
function IrrigateSacredTree_RankingReward()
	-- 不在活动时间内 不在活动服务器内
	if (not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["RankingTime"])) or (not IrrigateSacredTree_ServerDisting()) then
		return
	end
	
	local nIrrigateSacredTree_Global = tIrrigateSacredTree_Cont["Global"]["Ranking"]["Id"]
	
	if Get_SysDynaGlobalTime0(nIrrigateSacredTree_Global) > 0 then
		return
	end
	
	-- 取 1 2 3 名 分值数据
	local nIrrigateSacredTree_No1 = Get_SysDynaGlobalData0(nIrrigateSacredTree_Global)
	local nIrrigateSacredTree_No2 = Get_SysDynaGlobalData2(nIrrigateSacredTree_Global)
	local nIrrigateSacredTree_No3 = Get_SysDynaGlobalData4(nIrrigateSacredTree_Global)
	
	-- 第 1 2 3 名 发奖action
	local nIrrigateSacredTree_ActionNo1 = tIrrigateSacredTree_Cont["RankingReward"][1]
	local nIrrigateSacredTree_ActionNo2 = tIrrigateSacredTree_Cont["RankingReward"][2]
	local nIrrigateSacredTree_ActionNo3 = tIrrigateSacredTree_Cont["RankingReward"][3]
	
	-- 邮件内容
	local sIrrigateSacredTree_Sender  = tIrrigateSacredTree_Text["Email"]["Sender"]
	local sIrrigateSacredTree_Title = tIrrigateSacredTree_Text["Email"]["Title"]
	local sIrrigateSacredTree_Content = tIrrigateSacredTree_Text["Email"]["Content"]
	
	if not Sys_SetSynaGlobalTime0(nIrrigateSacredTree_Global, 1) then
		return
	end
	
	-- 第一名 大于2000
	if nIrrigateSacredTree_No1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data0"] then
		local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData1(nIrrigateSacredTree_Global)
		Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo1,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,1))
		
		-- 第二名 大于1500
		if nIrrigateSacredTree_No2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
			local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData3(nIrrigateSacredTree_Global)
			Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo2,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,2))
			
			-- 第三名 大于1000
			if nIrrigateSacredTree_No3 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
				local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData5(nIrrigateSacredTree_Global)
				Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo3,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,3))
			end
			return
		elseif nIrrigateSacredTree_No2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
			local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData3(nIrrigateSacredTree_Global)
			Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo3,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,3))
		end
		return
	end
		
	-- 第一名 大于 1500
	if nIrrigateSacredTree_No1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data2"] then
		local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData1(nIrrigateSacredTree_Global)
		Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo2,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,2))
		
		-- 第二名 大于 1000
		if nIrrigateSacredTree_No2 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
			local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData3(nIrrigateSacredTree_Global)
			Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo3,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,3))
		end
		return 
	end
	
	-- 第一名 大于1000
	if nIrrigateSacredTree_No1 >= tIrrigateSacredTree_Cont["Global"]["Ranking"]["Data4"] then
		local nIrrigateSacredTree_UserId = Get_SysDynaGlobalData1(nIrrigateSacredTree_Global)
		Sys_SendMail(nIrrigateSacredTree_UserId, 0,0, nIrrigateSacredTree_ActionNo3,0,7,sIrrigateSacredTree_Sender,sIrrigateSacredTree_Title,string.format(sIrrigateSacredTree_Content,3))
	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[2557] = 638

-- 26588,'凤凰树'
tNpcGossip[26588] = tNpcGossip[26588] or DefaultNpc:new{}
tNpcGossip[26588]["OptionHidden"] = 1
tNpcGossip[26588]["DialogueText"] = tIrrigateSacredTree_Text[26588]

-- 活动前
tNpcGossip[26588]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[26588]["tOption1-1"] = {111}
tNpcGossip[26588]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])
end

-- 活动后
tNpcGossip[26588]["Text1-2"] = {121}
tNpcGossip[26588]["tOption1-2"] = {121}
tNpcGossip[26588]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])
end

-- 活动中
-- 等级达到
tNpcGossip[26588]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[26588]["tOption1-3"] = {131}
tNpcGossip[26588]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return false
	end
	
	return not IrrigateSacredTree_ChkLevAndMete()
end

-- 等级未达到
tNpcGossip[26588]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[26588]["tOption1-4"] = {141,142,143,144}
tNpcGossip[26588]["ChkFunc1-4"]= function()
	if not Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		return false
	end
	
	return IrrigateSacredTree_ChkLevAndMete()
end
tNpcGossip[26588]["OptionFunc141"] = "IrrigateSacredTree_ChkSweetDew</N>26588</N>1"
tNpcGossip[26588]["OptionFunc142"] = "IrrigateSacredTree_DailyPresentPack</N>3316234</N>1"
tNpcGossip[26588]["OptionChkFunc142"] = function ()
	return IrrigateSacredTree_StcInterval(3316234)
end
tNpcGossip[26588]["OptionPoint143"] = "3-1"
tNpcGossip[26588]["OptionFunc144"] = "IrrigateSacredTree_LookRanking</N>26588"


-- 接 tIrrigateSacredTree_Text[26588]["Option141"]
-- 【背包中没有甘露】
tNpcGossip[26588]["Text2-1"] = {211,212}
tNpcGossip[26588]["tOption2-1"] = {211}

-- 【背包中有甘露】
tNpcGossip[26588]["Text2-2"] = {221}
tNpcGossip[26588]["tOption2-2"] = {221}
tNpcGossip[26588]["OptionFunc221"] = "IrrigateSacredTree_WaterTree</N>26588</N>1"

-- 一键浇灌
tNpcGossip[26588]["Text2-3"] = {231}
tNpcGossip[26588]["tOption2-3"] = {231,232}

-- 查看夏日积分好礼
tNpcGossip[26588]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110}
tNpcGossip[26588]["tOption3-1"] = {311,312,313,314,315,316}
tNpcGossip[26588]["ChkFunc3-1"]= function()
	tNpcGossip[26588]["Text3110"] = ""
	local sIrrigateSacredTree_Text3110 = tIrrigateSacredTree_Text[26588]["Text3110"]
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	tNpcGossip[26588]["Text3110"] = string.format(sIrrigateSacredTree_Text3110,nIrrigateSacredTree_Points)
	return true
end
-- 领取免费好礼
tNpcGossip[26588]["OptionFunc311"] = "IrrigateSacredTree_GetFreeReward</N>3316236"
tNpcGossip[26588]["OptionChkFunc311"] = function()
	
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316236)
	
	local nIrrigateSacredTree_AllPoints = 0
	
	for i,v in ipairs(tIrrigateSacredTree_Cont["Stc"][3316236]["Complete"]) do
		nIrrigateSacredTree_AllPoints = nIrrigateSacredTree_AllPoints + v
	end
	
	if nIrrigateSacredTree_AllPoints == nIrrigateSacredTree_Points then
		return false
	end
	
	return true
end
-- 抢购特惠礼盒 50 
tNpcGossip[26588]["OptionPoint312"] = "3-8"
tNpcGossip[26588]["OptionChkFunc312"] = function()
	
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	
	if nIrrigateSacredTree_Points < tIrrigateSacredTree_Cont["Point"]["Range"][1] then
		return false
	end
	
	local nIrrigateSacredTree_Times = IrrigateSacredTree_GetStcValue(3316237)
	
	if nIrrigateSacredTree_Times >= tIrrigateSacredTree_Cont["Stc"][3316237]["Complete"] then
		return false
	end
	
	return true
end
-- 抢购特惠礼盒 100 
tNpcGossip[26588]["OptionPoint313"] = "3-9"
tNpcGossip[26588]["OptionChkFunc313"] = function()
	
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	
	if nIrrigateSacredTree_Points < tIrrigateSacredTree_Cont["Point"]["Range"][2] then
		return false
	end
	
	local nIrrigateSacredTree_Times1 = IrrigateSacredTree_GetStcValue(3316238)
	local nIrrigateSacredTree_Times2 = IrrigateSacredTree_GetStcValue(3316239)
	
	if nIrrigateSacredTree_Times1 >= tIrrigateSacredTree_Cont["Stc"][3316238]["Complete"] and nIrrigateSacredTree_Times2 >= tIrrigateSacredTree_Cont["Stc"][3316239]["Complete"] then
		return false
	end
	
	return true
end
-- 抢购特惠礼盒 200 
tNpcGossip[26588]["OptionPoint314"] = "3-10"
tNpcGossip[26588]["OptionChkFunc314"] = function()
	
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	
	if nIrrigateSacredTree_Points < tIrrigateSacredTree_Cont["Point"]["Range"][3] then
		return false
	end
	
	local nIrrigateSacredTree_Times1 = IrrigateSacredTree_GetStcValue(3316240)
	local nIrrigateSacredTree_Times2 = IrrigateSacredTree_GetStcValue(3316241)
	
	if nIrrigateSacredTree_Times1 >= tIrrigateSacredTree_Cont["Stc"][3316240]["Complete"] and nIrrigateSacredTree_Times2 >= tIrrigateSacredTree_Cont["Stc"][3316241]["Complete"] then
		return false
	end
	
	return true
end

tNpcGossip[26588]["OptionPoint315"] = "3-2"
tNpcGossip[26588]["OptionPoint316"] = "3-3"

-- 查看免费好礼详情 神木积分礼盒详情
tNpcGossip[26588]["Text3-2"] = {321,322,323,324,325,326,327,328,329,3210,3211,3212,3213}
tNpcGossip[26588]["tOption3-2"] = {321}

-- 查看特惠礼盒详情 夏日至尊礼盒
tNpcGossip[26588]["Text3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311,3312,3313,3314,3316}
tNpcGossip[26588]["tOption3-3"] = {331,332,333,334,335}
tNpcGossip[26588]["OptionPoint331"] = "3-4" -- 夏日豪华礼盒
tNpcGossip[26588]["OptionPoint332"] = "3-5" -- 夏日珍宝礼盒
tNpcGossip[26588]["OptionPoint333"] = "3-6" -- 夏日精装礼盒
tNpcGossip[26588]["OptionPoint334"] = "3-7" -- 夏日礼盒
tNpcGossip[26588]["OptionPoint335"] = "3-1" -- 返回上一页

-- 查看特惠礼盒详情 夏日豪华礼盒
tNpcGossip[26588]["Text3-4"] = {341,342,343,344,345,346,347,348,349,3410,3411,3412,3413}
tNpcGossip[26588]["tOption3-4"] = {341,342,343,344,345}
tNpcGossip[26588]["OptionPoint341"] = "3-3" -- 夏日至尊礼盒
tNpcGossip[26588]["OptionPoint342"] = "3-5" -- 夏日珍宝礼盒
tNpcGossip[26588]["OptionPoint343"] = "3-6" -- 夏日精装礼盒
tNpcGossip[26588]["OptionPoint344"] = "3-7" -- 夏日礼盒
tNpcGossip[26588]["OptionPoint345"] = "3-1" -- 返回上一页

-- 查看特惠礼盒详情 查看夏日珍宝礼盒详情
tNpcGossip[26588]["Text3-5"] = {351,352,353,354,355,356,357,358,359,3510,3511,3512,3513,3514,3516}
tNpcGossip[26588]["tOption3-5"] = {351,352,353,354,355}
tNpcGossip[26588]["OptionPoint351"] = "3-3" -- 夏日至尊礼盒
tNpcGossip[26588]["OptionPoint352"] = "3-4" -- 夏日豪华礼盒
tNpcGossip[26588]["OptionPoint353"] = "3-6" -- 夏日精装礼盒
tNpcGossip[26588]["OptionPoint354"] = "3-7" -- 夏日礼盒
tNpcGossip[26588]["OptionPoint355"] = "3-1" -- 返回上一页

-- 查看特惠礼盒详情 查看夏日精装礼盒详情
tNpcGossip[26588]["Text3-6"] = {361,362,363,364,365,366,367,368,369,3610,3611,3612,3613}
tNpcGossip[26588]["tOption3-6"] = {361,362,363,364,365}
tNpcGossip[26588]["OptionPoint361"] = "3-3" -- 夏日至尊礼盒
tNpcGossip[26588]["OptionPoint362"] = "3-4" -- 夏日豪华礼盒
tNpcGossip[26588]["OptionPoint363"] = "3-5" -- 夏日珍宝礼盒
tNpcGossip[26588]["OptionPoint364"] = "3-7" -- 夏日礼盒
tNpcGossip[26588]["OptionPoint365"] = "3-1" -- 返回上一页

-- 查看特惠礼盒详情 查看夏日礼盒详情
tNpcGossip[26588]["Text3-7"] = {371,372,373,374,375,376,377,378,379,3710,3711,3712,3713}
tNpcGossip[26588]["tOption3-7"] = {371,372,373,374,375}
tNpcGossip[26588]["OptionPoint371"] = "3-3" -- 夏日至尊礼盒
tNpcGossip[26588]["OptionPoint372"] = "3-4" -- 夏日豪华礼盒
tNpcGossip[26588]["OptionPoint373"] = "3-5" -- 夏日珍宝礼盒
tNpcGossip[26588]["OptionPoint374"] = "3-6" -- 夏日精装礼盒
tNpcGossip[26588]["OptionPoint375"] = "3-1" -- 返回上一页

-- 抢购特惠礼盒 夏日礼盒
tNpcGossip[26588]["Text3-8"] = {381,382}
tNpcGossip[26588]["tOption3-8"] = {381}
tNpcGossip[26588]["OptionPoint381"] = "3-11"
tNpcGossip[26588]["ChkFunc3-8"]= function()
	tNpcGossip[26588]["Text381"] = ""
	local sIrrigateSacredTree_Text381 = tIrrigateSacredTree_Text[26588]["Text381"]
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	tNpcGossip[26588]["Text381"] = string.format(sIrrigateSacredTree_Text381,nIrrigateSacredTree_Points)
	return true
end

-- 抢购特惠礼盒 夏日精装礼盒 夏日珍宝礼盒
tNpcGossip[26588]["Text3-9"] = {391,392,393}
tNpcGossip[26588]["tOption3-9"] = {391,392}
tNpcGossip[26588]["OptionPoint391"] = "3-12"
tNpcGossip[26588]["OptionChkFunc391"] = function()
	local nIrrigateSacredTree_Times = IrrigateSacredTree_GetStcValue(3316238)
	
	if nIrrigateSacredTree_Times >= tIrrigateSacredTree_Cont["Stc"][3316238]["Complete"] then
		return false
	end
	
	return true
end

tNpcGossip[26588]["OptionPoint392"] = "3-13"
tNpcGossip[26588]["OptionChkFunc392"] = function()
	local nIrrigateSacredTree_Times = IrrigateSacredTree_GetStcValue(3316239)
	
	if nIrrigateSacredTree_Times >= tIrrigateSacredTree_Cont["Stc"][3316239]["Complete"] then
		return false
	end
	
	return true
end
tNpcGossip[26588]["ChkFunc3-9"]= function()
	tNpcGossip[26588]["Text391"] = ""
	local sIrrigateSacredTree_Text391 = tIrrigateSacredTree_Text[26588]["Text391"]
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	tNpcGossip[26588]["Text391"] = string.format(sIrrigateSacredTree_Text391,nIrrigateSacredTree_Points)
	return true
end

-- 抢购特惠礼盒 夏日豪华礼盒 夏日至尊礼盒
tNpcGossip[26588]["Text3-10"] = {3101,3102,3103}
tNpcGossip[26588]["tOption3-10"] = {3101,3102}
tNpcGossip[26588]["OptionPoint3101"] = "3-14"
tNpcGossip[26588]["OptionChkFunc3101"] = function()
	local nIrrigateSacredTree_Times = IrrigateSacredTree_GetStcValue(3316240)
	
	if nIrrigateSacredTree_Times >= tIrrigateSacredTree_Cont["Stc"][3316240]["Complete"] then
		return false
	end
	
	return true
end
tNpcGossip[26588]["OptionPoint3102"] = "3-15"
tNpcGossip[26588]["OptionChkFunc3102"] = function()
	local nIrrigateSacredTree_Times = IrrigateSacredTree_GetStcValue(3316241)
	
	if nIrrigateSacredTree_Times >= tIrrigateSacredTree_Cont["Stc"][3316241]["Complete"] then
		return false
	end
	
	return true
end
tNpcGossip[26588]["ChkFunc3-10"]= function()
	tNpcGossip[26588]["Text3101"] = ""
	local sIrrigateSacredTree_Text3101 = tIrrigateSacredTree_Text[26588]["Text3101"]
	local nIrrigateSacredTree_Points = IrrigateSacredTree_GetStcValue(3316233)
	tNpcGossip[26588]["Text3101"] = string.format(sIrrigateSacredTree_Text3101,nIrrigateSacredTree_Points)
	return true
end

-- 购买夏日礼盒（49天石）。
tNpcGossip[26588]["Text3-11"] = {3111,3112,3113,3114,3115,3116,3117,3118,3119,31110,31111,31112,31113}
tNpcGossip[26588]["tOption3-11"] = {3111,3112}
tNpcGossip[26588]["OptionFunc3111"] = "IrrigateSacredTree_BuyPack</N>26588</N>3316237"

-- 购买夏日精装礼盒（99天石）。
tNpcGossip[26588]["Text3-12"] = {3121,3122,3123,3124,3125,3126,3127,3128,3129,31210,31211,31212,31213}
tNpcGossip[26588]["tOption3-12"] = {3121,3122}
tNpcGossip[26588]["OptionFunc3121"] = "IrrigateSacredTree_BuyPack</N>26588</N>3316238"

-- 购买夏日珍宝礼盒（999天石）。
tNpcGossip[26588]["Text3-13"] = {3131,3132,3133,3134,3135,3136,3137,3138,3139,31310,31311,31312,31313,31314,31316}
tNpcGossip[26588]["tOption3-13"] = {3131,3132}
tNpcGossip[26588]["OptionFunc3131"] = "IrrigateSacredTree_BuyPack</N>26588</N>3316239"

-- 购买夏日豪华礼盒（399天石）。
tNpcGossip[26588]["Text3-14"] = {3141,3142,3143,3144,3145,3146,3147,3148,3149,31410,31411,31412,31413}
tNpcGossip[26588]["tOption3-14"] = {3141,3142}
tNpcGossip[26588]["OptionFunc3141"] = "IrrigateSacredTree_BuyPack</N>26588</N>3316240"

-- 购买夏日至尊礼盒（2999天石）。
tNpcGossip[26588]["Text3-15"] = {3151,3152,3153,3154,3155,3156,3157,3158,3159,31510,31511,31512,31513,31514,31516}
tNpcGossip[26588]["tOption3-15"] = {3151,3152}
tNpcGossip[26588]["OptionFunc3151"] = "IrrigateSacredTree_BuyPack</N>26588</N>3316241"

-- 查看夏日积分排行榜
tNpcGossip[26588]["Text4-1"] = {414,415,416,411,412,413,417,418}
tNpcGossip[26588]["tOption4-1"] = {411,412}
tNpcGossip[26588]["OptionPoint411"] = "4-2"
tNpcGossip[26588]["OptionPoint412"] = "1-4"

-- 查看排行榜奖励
tNpcGossip[26588]["Text4-2"] = {421,422,423,424,425,426,427,428}
tNpcGossip[26588]["tOption4-2"] = {421,422}

tNpcFace[2559] = 2623
-- 26590,'皮皮'
-- 活动前
tNpcGossip[26590] = tNpcGossip[26590] or DefaultNpc:new{}
tNpcGossip[26590]["OptionHidden"] = 1
tNpcGossip[26590]["DialogueText"] = tIrrigateSacredTree_Text[26590]
tNpcGossip[26590]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[26590]["tOption1-1"] = {111}
tNpcGossip[26590]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])
end

-- 活动后
tNpcGossip[26590]["Text1-2"] = {121}
tNpcGossip[26590]["tOption1-2"] = {121}
tNpcGossip[26590]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])
end


-- 活动中
tNpcGossip[26590]["Text1-3"] = {131,132}
tNpcGossip[26590]["tOption1-3"] = {131}
tNpcGossip[26590]["OptionFunc131"] = "IrrigateSacredTree_OpenShop</N>26590"

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 3316233,'甘露'
tItem[3316233] = tItem[3316233] or {}
tItem[3316233]["Function"] = function(nIrrigateSacredTree_ItemId,sItemName)
	IrrigateSacredTree_UseItem(nIrrigateSacredTree_ItemId)
end

-- 3316234,'每日馈赠礼盒'
tItem[3316234] = tItem[3316234] or {}
tItem[3316234]["Function"] = function(nIrrigateSacredTree_ItemId,sItemName)
	IrrigateSacredTree_OpenPack(nIrrigateSacredTree_ItemId,1)
end

-- 3316392,'5个甘露礼盒'
-- 3316393,'10个甘露礼盒'
-- 3316394,'50个甘露礼盒'
-- 3316395,'100个甘露礼盒'
-- 3316254,'神木王者宝盒'
-- 3316255,'神木强者宝盒'
-- 3316256,'神木达人宝盒'
tItem[3316392] = tItem[3316234]
tItem[3316393] = tItem[3316234]
tItem[3316394] = tItem[3316234]
tItem[3316395] = tItem[3316234]
tItem[3316254] = tItem[3316234]
tItem[3316255] = tItem[3316234]
tItem[3316256] = tItem[3316234]


--------物品有对白模板
-- 3316236,'神木积分礼盒'
tItem[3316236] = tItem[3316236] or {}
tItem[3316236]["DialogueText"] = tIrrigateSacredTree_Text[3316236]

tItem[3316236]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tItem[3316236]["tOption1-1"] = {111,112,113,114}
tItem[3316236]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316236</N>1"
tItem[3316236]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316236</N>2"
tItem[3316236]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316236</N>3"
tItem[3316236]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316236</N>4"

tItem[3316236]["Text2-1"] = {211}
tItem[3316236]["tOption2-1"] = {211,212}

-- 3316237,'夏日礼盒'
tItem[3316237] = tItem[3316237] or {}
tItem[3316237]["DialogueText"] = tIrrigateSacredTree_Text[3316237]

tItem[3316237]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tItem[3316237]["tOption1-1"] = {111,112,113,114}
tItem[3316237]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316237</N>1"
tItem[3316237]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316237</N>2"
tItem[3316237]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316237</N>3"
tItem[3316237]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316237</N>4"

tItem[3316237]["Text2-1"] = {211}
tItem[3316237]["tOption2-1"] = {211,212}

-- 3316238,'夏日精装礼盒'
tItem[3316238] = tItem[3316238] or {}
tItem[3316238]["DialogueText"] = tIrrigateSacredTree_Text[3316238]

tItem[3316238]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tItem[3316238]["tOption1-1"] = {111,112,113,114}
tItem[3316238]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316238</N>1"
tItem[3316238]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316238</N>2"
tItem[3316238]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316238</N>3"
tItem[3316238]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316238</N>4"

tItem[3316238]["Text2-1"] = {211}
tItem[3316238]["tOption2-1"] = {211,212}

-- 3316239,'夏日精装礼盒'
tItem[3316239] = tItem[3316239] or {}
tItem[3316239]["DialogueText"] = tIrrigateSacredTree_Text[3316239]

tItem[3316239]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1115,1116}
tItem[3316239]["tOption1-1"] = {111,112,113,114}
tItem[3316239]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316239</N>1"
tItem[3316239]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316239</N>2"
tItem[3316239]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316239</N>3"
tItem[3316239]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316239</N>4"

tItem[3316239]["Text2-1"] = {211}
tItem[3316239]["tOption2-1"] = {211,212}

-- 3316240,'夏日豪华礼盒'
tItem[3316240] = tItem[3316240] or {}
tItem[3316240]["DialogueText"] = tIrrigateSacredTree_Text[3316240]

tItem[3316240]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tItem[3316240]["tOption1-1"] = {111,112,113,114}
tItem[3316240]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316240</N>1"
tItem[3316240]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316240</N>2"
tItem[3316240]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316240</N>3"
tItem[3316240]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316240</N>4"

tItem[3316240]["Text2-1"] = {211}
tItem[3316240]["tOption2-1"] = {211,212}

-- 3316241,'夏日至尊礼盒'
tItem[3316241] = tItem[3316241] or {}
tItem[3316241]["DialogueText"] = tIrrigateSacredTree_Text[3316241]

tItem[3316241]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1115,1116}
tItem[3316241]["tOption1-1"] = {111,112,113,114}
tItem[3316241]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316241</N>1"
tItem[3316241]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316241</N>2"
tItem[3316241]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316241</N>3"
tItem[3316241]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316241</N>4"

tItem[3316241]["Text2-1"] = {211}
tItem[3316241]["tOption2-1"] = {211,212}

-- 3316242,'7天3星时装外套可选包'
tItem[3316242] = tItem[3316242] or {}
tItem[3316242]["DialogueText"] = tIrrigateSacredTree_Text[3316242]

tItem[3316242]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316242]["tOption1-1"] = {111,112,113,114,115}
tItem[3316242]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316242</N>1"
tItem[3316242]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316242</N>2"
tItem[3316242]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316242</N>3"
tItem[3316242]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316242</N>4"
tItem[3316242]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316242</N>5"

tItem[3316242]["Text2-1"] = {211}
tItem[3316242]["tOption2-1"] = {211,212}

-- 3316243,'7天3星坐骑外套可选包'
tItem[3316243] = tItem[3316243] or {}
tItem[3316243]["DialogueText"] = tIrrigateSacredTree_Text[3316243]

tItem[3316243]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316243]["tOption1-1"] = {111,112,113,114,115}
tItem[3316243]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316243</N>1"
tItem[3316243]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316243</N>2"
tItem[3316243]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316243</N>3"
tItem[3316243]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316243</N>4"
tItem[3316243]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316243</N>5"

tItem[3316243]["Text2-1"] = {211}
tItem[3316243]["tOption2-1"] = {211,212}

-- 3316244,'15天4星时装外套可选包'
tItem[3316244] = tItem[3316244] or {}
tItem[3316244]["DialogueText"] = tIrrigateSacredTree_Text[3316244]

tItem[3316244]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316244]["tOption1-1"] = {111,112,113,114,115}
tItem[3316244]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316244</N>1"
tItem[3316244]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316244</N>2"
tItem[3316244]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316244</N>3"
tItem[3316244]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316244</N>4"
tItem[3316244]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316244</N>5"

tItem[3316244]["Text2-1"] = {211}
tItem[3316244]["tOption2-1"] = {211,212}

-- 3316245,'15天4星坐骑外套可选包'
tItem[3316245] = tItem[3316245] or {}
tItem[3316245]["DialogueText"] = tIrrigateSacredTree_Text[3316245]

tItem[3316245]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316245]["tOption1-1"] = {111,112,113,114,115}
tItem[3316245]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316245</N>1"
tItem[3316245]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316245</N>2"
tItem[3316245]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316245</N>3"
tItem[3316245]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316245</N>4"
tItem[3316245]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316245</N>5"

tItem[3316245]["Text2-1"] = {211}
tItem[3316245]["tOption2-1"] = {211,212}

-- 3316246,'30天4星时装外套可选包'
tItem[3316246] = tItem[3316246] or {}
tItem[3316246]["DialogueText"] = tIrrigateSacredTree_Text[3316246]

tItem[3316246]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316246]["tOption1-1"] = {111,112,113,114,115}
tItem[3316246]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316246</N>1"
tItem[3316246]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316246</N>2"
tItem[3316246]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316246</N>3"
tItem[3316246]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316246</N>4"
tItem[3316246]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316246</N>5"

tItem[3316246]["Text2-1"] = {211}
tItem[3316246]["tOption2-1"] = {211,212}

-- 3316247,'30天4星坐骑外套可选包'
tItem[3316247] = tItem[3316247] or {}
tItem[3316247]["DialogueText"] = tIrrigateSacredTree_Text[3316247]

tItem[3316247]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316247]["tOption1-1"] = {111,112,113,114,115}
tItem[3316247]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316247</N>1"
tItem[3316247]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316247</N>2"
tItem[3316247]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316247</N>3"
tItem[3316247]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316247</N>4"
tItem[3316247]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316247</N>5"

tItem[3316247]["Text2-1"] = {211}
tItem[3316247]["tOption2-1"] = {211,212}

-- 3316248,'120天4星时装外套可选包'
tItem[3316248] = tItem[3316248] or {}
tItem[3316248]["DialogueText"] = tIrrigateSacredTree_Text[3316248]

tItem[3316248]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316248]["tOption1-1"] = {111,112,113,114,115}
tItem[3316248]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316248</N>1"
tItem[3316248]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316248</N>2"
tItem[3316248]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316248</N>3"
tItem[3316248]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316248</N>4"
tItem[3316248]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316248</N>5"

tItem[3316248]["Text2-1"] = {211}
tItem[3316248]["tOption2-1"] = {211,212}

-- 3316249,'120天4星坐骑外套可选包'
tItem[3316249] = tItem[3316249] or {}
tItem[3316249]["DialogueText"] = tIrrigateSacredTree_Text[3316249]

tItem[3316249]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316249]["tOption1-1"] = {111,112,113,114,115}
tItem[3316249]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316249</N>1"
tItem[3316249]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316249</N>2"
tItem[3316249]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316249</N>3"
tItem[3316249]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316249</N>4"
tItem[3316249]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316249</N>5"

tItem[3316249]["Text2-1"] = {211}
tItem[3316249]["tOption2-1"] = {211,212}

-- 3316250,'80天5星时装外套可选包'
tItem[3316250] = tItem[3316250] or {}
tItem[3316250]["DialogueText"] = tIrrigateSacredTree_Text[3316250]

tItem[3316250]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316250]["tOption1-1"] = {111,112,113,114,115}
tItem[3316250]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316250</N>1"
tItem[3316250]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316250</N>2"
tItem[3316250]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316250</N>3"
tItem[3316250]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316250</N>4"
tItem[3316250]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316250</N>5"

tItem[3316250]["Text2-1"] = {211}
tItem[3316250]["tOption2-1"] = {211,212}

-- 3316251,'80天5星坐骑外套可选包'
tItem[3316251] = tItem[3316251] or {}
tItem[3316251]["DialogueText"] = tIrrigateSacredTree_Text[3316251]

tItem[3316251]["Text1-1"] = {111,112,113,114,116,117,118,119}
tItem[3316251]["tOption1-1"] = {111,112,114,115}
tItem[3316251]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316251</N>1"
tItem[3316251]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316251</N>2"
-- tItem[3316251]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316251</N>3"
tItem[3316251]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316251</N>4"
tItem[3316251]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316251</N>5"

tItem[3316251]["Text2-1"] = {211}
tItem[3316251]["tOption2-1"] = {211,212}

-- 3316252,'250天5星时装外套可选包'
tItem[3316252] = tItem[3316252] or {}
tItem[3316252]["DialogueText"] = tIrrigateSacredTree_Text[3316252]

tItem[3316252]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316252]["tOption1-1"] = {111,112,113,114,115}
tItem[3316252]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316252</N>1"
tItem[3316252]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316252</N>2"
tItem[3316252]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316252</N>3"
tItem[3316252]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316252</N>4"
tItem[3316252]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316252</N>5"

tItem[3316252]["Text2-1"] = {211}
tItem[3316252]["tOption2-1"] = {211,212}

-- 3316253,'250天5星坐骑外套可选包'
tItem[3316253] = tItem[3316253] or {}
tItem[3316253]["DialogueText"] = tIrrigateSacredTree_Text[3316253]

tItem[3316253]["Text1-1"] = {111,112,113,114,116,117,118,119}
tItem[3316253]["tOption1-1"] = {111,112,114,115}
tItem[3316253]["OptionFunc111"]="IrrigateSacredTree_ChossPack</N>3316253</N>1"
tItem[3316253]["OptionFunc112"]="IrrigateSacredTree_ChossPack</N>3316253</N>2"
-- tItem[3316253]["OptionFunc113"]="IrrigateSacredTree_ChossPack</N>3316253</N>3"
tItem[3316253]["OptionFunc114"]="IrrigateSacredTree_ChossPack</N>3316253</N>4"
tItem[3316253]["OptionFunc115"]="IrrigateSacredTree_ChossPack</N>3316253</N>5"

tItem[3316253]["Text2-1"] = {211}
tItem[3316253]["tOption2-1"] = {211,212}


---------------------------------怪物部分---------------------------------------------
local tIrrigateSacredTree_KillMonster = {}

-- 片区怪掉落 普通服
tIrrigateSacredTree_KillMonster[1] = {}
tIrrigateSacredTree_KillMonster[1]["ActivityTime"] = tActivityTime["IrrigateSacredTree"]["ActivityTime"]
tIrrigateSacredTree_KillMonster[1]["Function"]= IrrigateSacredTree_KillMonster

-- 片区怪掉落 激情服
tIrrigateSacredTree_KillMonster[2] = {}
tIrrigateSacredTree_KillMonster[2]["ActivityTime"] = tActivityTime["IrrigateSacredTree"]["ActivityTime"]
tIrrigateSacredTree_KillMonster[2]["Function"]= IrrigateSacredTree_KillMonster
tIrrigateSacredTree_KillMonster[2]["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	
table.insert(tMonsterDrop_AreaLoad,tIrrigateSacredTree_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tIrrigateSacredTree_KillMonster[2])

------------------------------------------排行榜--------------------------------------------
-- 神木灌溉前三名排行榜
tRankingFunc_Info[26588] = {}
tRankingFunc_Info[26588]["ActiveTime"] = tActivityTime["IrrigateSacredTree"]["ActivityTime"]
tRankingFunc_Info[26588]["DayTime"] = {}
tRankingFunc_Info[26588]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[26588]["Reset"] = 1
tRankingFunc_Info[26588]["RankMode"] = 1
tRankingFunc_Info[26588]["Global"] = {54621}
tRankingFunc_Info[26588]["RankNum"] = 3


-- 时间自检发排行榜奖励
local tIrrigateSacredTree_OnTime = {}
	tIrrigateSacredTree_OnTime[1] = {}
	tIrrigateSacredTree_OnTime[1]["ActivityTime"] = tActivityTime["IrrigateSacredTree"]["RankingTime"]
	tIrrigateSacredTree_OnTime[1]["Type"] = 2
	tIrrigateSacredTree_OnTime[1]["TimeType"] = 4
	tIrrigateSacredTree_OnTime[1]["Multiple"] = {}
	tIrrigateSacredTree_OnTime[1]["Multiple"][1]  = "00:00 00:05"
	tIrrigateSacredTree_OnTime[1]["Func"] = IrrigateSacredTree_RankingReward
	
table.insert(tSystemTime_InitialData,tIrrigateSacredTree_OnTime[1])

-- 邮件发奖
-- tRankingFunc_Info[26588]["Mail"] = {}
-- tRankingFunc_Info[26588]["Mail"]["ActiveTime"] = tActivityTime["IrrigateSacredTree"]["RankingTime"]
-- tRankingFunc_Info[26588]["Mail"]["RewardTime"] = {}
-- tRankingFunc_Info[26588]["Mail"]["RewardTime"][1] = "00:00 00:05"
-- tRankingFunc_Info[26588]["Mail"]["Reward"] = {}
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1] = {}
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1]["RewardRank"] = 1
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1]["ActionId"] = 577960
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1]["ExistDay"] = 7
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1]["Title"] = tIrrigateSacredTree_Text["Email"]["Sender"]
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1]["Sender"] = tIrrigateSacredTree_Text["Email"]["Title"]
-- tRankingFunc_Info[26588]["Mail"]["Reward"][1]["Content"] = string.format(tIrrigateSacredTree_Text["Email"]["Content"],1)
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2] = {}
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2]["RewardRank"] = 2
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2]["ActionId"] = 577961
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2]["ExistDay"] = 7
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2]["Title"] = tIrrigateSacredTree_Text["Email"]["Sender"]
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2]["Sender"] = tIrrigateSacredTree_Text["Email"]["Title"]
-- tRankingFunc_Info[26588]["Mail"]["Reward"][2]["Content"] = string.format(tIrrigateSacredTree_Text["Email"]["Content"],2)
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3] = {}
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3]["RewardRank"] = 3
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3]["ActionId"] = 577962
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3]["ExistDay"] = 7
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3]["Title"] = tIrrigateSacredTree_Text["Email"]["Sender"]
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3]["Sender"] = tIrrigateSacredTree_Text["Email"]["Title"]
-- tRankingFunc_Info[26588]["Mail"]["Reward"][3]["Content"] = string.format(tIrrigateSacredTree_Text["Email"]["Content"],3)
