------------------------------------------------------------------------------------
--Name：            200714[英文征服][活动脚本]8月精准营销（8.11-长期）
--Creator:      林嘉鑫
--Created:     2020-07-14
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAugPrecisionPush_Pack = {}
	-- ===二转令牌礼包
	-- ===索引: tAugPrecisionPush_Pack[3332031]
	-- ===删除: 3332031,1
	-- ===EmoneyLog: 350,23205
	tAugPrecisionPush_Pack[3332031] = {}
	tAugPrecisionPush_Pack[3332031]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332031]["EmoneyLog"] = "350	23205	270	270	1	"
	tAugPrecisionPush_Pack[3332031]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332031]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332031]["DeleteItem"][1]["Id"] = 3332031 -- 【库】2ndRebirthTokenPack[属性:9]
	tAugPrecisionPush_Pack[3332031]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332031]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332031]["RewardItem"][1]["Id"] = 723701 -- ExemptionToken[723701][属性:0][叠加:0][金币:0], 【表格】免试金牌
	tAugPrecisionPush_Pack[3332031]["RewardItem"][1]["Attr"] = "0 1 3" -- ExemptionToken（赠）*1
	tAugPrecisionPush_Pack[3332031]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332031]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332031]["RewardEffect"]["Effect"] = "angelwing"


	-- ===指定炼气+1礼包
	-- ===索引: tAugPrecisionPush_Pack[3332032]
	-- ===删除: 3332032,1
	-- ===EmoneyLog: 350,23206
	tAugPrecisionPush_Pack[3332032] = {}
	tAugPrecisionPush_Pack[3332032]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332032]["EmoneyLog"] = "350	23206	79999	79999	1	"
	tAugPrecisionPush_Pack[3332032]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332032]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332032]["DeleteItem"][1]["Id"] = 3332032 -- 【库】Chi~AmuletPack[属性:9]
	tAugPrecisionPush_Pack[3332032]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332032]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332032]["RewardItem"][1]["Id"] = 3332041 -- ChiAmulet[3332041][属性:9][叠加:1][金币:0], 【表格】指定任意炼气+1
	tAugPrecisionPush_Pack[3332032]["RewardItem"][1]["Attr"] = "0 1" -- ChiAmulet*1
	tAugPrecisionPush_Pack[3332032]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332032]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332032]["RewardEffect"]["Effect"] = "angelwing"


	-- ===百兵谱强化礼包
	-- ===索引: tAugPrecisionPush_Pack[3332033]
	-- ===删除: 3332033,1
	-- ===EmoneyLog: 350,23207
	tAugPrecisionPush_Pack[3332033] = {}
	tAugPrecisionPush_Pack[3332033]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332033]["EmoneyLog"] = "350	23207	2700	2700	1	"
	tAugPrecisionPush_Pack[3332033]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332033]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332033]["DeleteItem"][1]["Id"] = 3332033 -- 【库】WeaponArchivePack[属性:9]
	tAugPrecisionPush_Pack[3332033]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332033]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332033]["RewardItem"][1]["Id"] = 3321098 -- EpicSpirit[3305425][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*100
	tAugPrecisionPush_Pack[3332033]["RewardItem"][1]["Attr"] = "0 100" -- EpicSpirit*100（[错误]物品数量超10个）
	tAugPrecisionPush_Pack[3332033]["RewardItem"][2] = {}
	tAugPrecisionPush_Pack[3332033]["RewardItem"][2]["Id"] = 3321108 -- ChaosJade[3321108][属性:9][叠加:10000][金币:0], 【表格】鸿蒙炼魂玉*10
	tAugPrecisionPush_Pack[3332033]["RewardItem"][2]["Attr"] = "0 10" -- ChaosJade*10
	tAugPrecisionPush_Pack[3332033]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332033]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332033]["RewardEffect"]["Effect"] = "angelwing"


	-- ===转服凭证礼包
	-- ===索引: tAugPrecisionPush_Pack[3332034]
	-- ===删除: 3332034,1
	-- ===EmoneyLog: 350,23208
	tAugPrecisionPush_Pack[3332034] = {}
	tAugPrecisionPush_Pack[3332034]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332034]["EmoneyLog"] = "350	23208	3333	3333	1	"
	tAugPrecisionPush_Pack[3332034]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332034]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332034]["DeleteItem"][1]["Id"] = 3332034 -- 【库】TransferCert.Pack[属性:9]
	tAugPrecisionPush_Pack[3332034]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332034]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332034]["RewardItem"][1]["Id"] = 3314623 -- ServerTransferToken[3314623][属性:8][叠加:1][金币:0], 【表格】转服凭证
	tAugPrecisionPush_Pack[3332034]["RewardItem"][1]["Attr"] = "0 1 3" -- ServerTransferToken（赠）*1
	tAugPrecisionPush_Pack[3332034]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332034]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7天时效1亿爵位勋章
	-- ===索引: tAugPrecisionPush_Pack[3332035]
	-- ===删除: 3332035,1
	-- ===EmoneyLog: 350,23209
	tAugPrecisionPush_Pack[3332035] = {}
	tAugPrecisionPush_Pack[3332035]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332035]["EmoneyLog"] = "350	23209	599	599	1	"
	tAugPrecisionPush_Pack[3332035]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332035]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332035]["DeleteItem"][1]["Id"] = 3332035 -- 【库】ContributionMedalPack[属性:9]
	tAugPrecisionPush_Pack[3332035]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332035]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332035]["RewardItem"][1]["Id"] = 3322813 -- 100KKContributionMedal[3322813][属性:8][叠加:1][金币:0], 【表格】7天时效1亿爵位勋章
	tAugPrecisionPush_Pack[3332035]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的100KKContributionMedal（赠）*1
	tAugPrecisionPush_Pack[3332035]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332035]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332035]["RewardEffect"]["Effect"] = "angelwing"


	-- ===限时周卡包
	-- ===索引: tAugPrecisionPush_Pack[3332036]
	-- ===删除: 3332036,1
	-- ===EmoneyLog: 350,23210
	tAugPrecisionPush_Pack[3332036] = {}
	tAugPrecisionPush_Pack[3332036]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332036]["EmoneyLog"] = "350	23210	4500	4500	1	"
	tAugPrecisionPush_Pack[3332036]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332036]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332036]["DeleteItem"][1]["Id"] = 3332036 -- 【库】WeeklyCardPack[属性:265]
	tAugPrecisionPush_Pack[3332036]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332036]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332036]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石（两天时效）*7
	tAugPrecisionPush_Pack[3332036]["RewardItem"][1]["Attr"] = "0 7 0 2880 1" -- 2天时效(激活)的RadiantStarStone*7
	tAugPrecisionPush_Pack[3332036]["RewardItem"][2] = {}
	tAugPrecisionPush_Pack[3332036]["RewardItem"][2]["Id"] = 3009103 -- SoulFruit[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果*7
	tAugPrecisionPush_Pack[3332036]["RewardItem"][2]["Attr"] = "0 7" -- SoulFruit*7
	tAugPrecisionPush_Pack[3332036]["RewardItem"][3] = {}
	tAugPrecisionPush_Pack[3332036]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100
	tAugPrecisionPush_Pack[3332036]["RewardItem"][3]["Attr"] = "0 100 3" -- UniversalRuneEssence*100
	tAugPrecisionPush_Pack[3332036]["RewardItem"][4] = {}
	tAugPrecisionPush_Pack[3332036]["RewardItem"][4]["Id"] = 3332043 -- Pharaohs[3332043][属性:9][叠加:1][金币:0], 【表格】7天三星赠神佑1法老外套*1
	tAugPrecisionPush_Pack[3332036]["RewardItem"][4]["Attr"] = "0 1 0 10080 1" -- 2天时效(激活)的Pharaohs*1
	tAugPrecisionPush_Pack[3332036]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332036]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332036]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水果机抽奖券
	-- ===索引: tAugPrecisionPush_Pack[3332037]
	-- ===删除: 3332037,1
	-- ===EmoneyLog: 350,23211
	tAugPrecisionPush_Pack[3332037] = {}
	tAugPrecisionPush_Pack[3332037]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332037]["EmoneyLog"] = "350	23211	27	27	1	"
	tAugPrecisionPush_Pack[3332037]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332037]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332037]["DeleteItem"][1]["Id"] = 3332037 -- 【库】LotteryTicketPack[属性:9]
	tAugPrecisionPush_Pack[3332037]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332037]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332037]["RewardItem"][1]["Id"] = 3332042 -- FruitLotteryTicket[3332042][属性:9][叠加:1][金币:0], 【表格】水果机抽奖券
	tAugPrecisionPush_Pack[3332037]["RewardItem"][1]["Attr"] = "0 1" -- FruitLotteryTicket*1
	tAugPrecisionPush_Pack[3332037]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332037]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332037]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赠+8赤炼石礼包
	-- ===索引: tAugPrecisionPush_Pack[3332038]
	-- ===删除: 3332038,1
	-- ===EmoneyLog: 350,23212
	tAugPrecisionPush_Pack[3332038] = {}
	tAugPrecisionPush_Pack[3332038]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332038]["EmoneyLog"] = "350	23212	4500	4500	1	"
	tAugPrecisionPush_Pack[3332038]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332038]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332038]["DeleteItem"][1]["Id"] = 3332038 -- 【库】Super+StonePack[属性:9]
	tAugPrecisionPush_Pack[3332038]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332038]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332038]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石
	tAugPrecisionPush_Pack[3332038]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAugPrecisionPush_Pack[3332038]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332038]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332038]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7天称号翅膀外套可选包
	-- ===索引: tAugPrecisionPush_Pack[3332039]
	-- ===删除: 3332039,1
	-- ===EmoneyLog: 350,23213
	tAugPrecisionPush_Pack[3332039] = {}
	tAugPrecisionPush_Pack[3332039]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332039]["EmoneyLog"] = "350	23213	90	90	1	"
	tAugPrecisionPush_Pack[3332039]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332039]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332039]["DeleteItem"][1]["Id"] = 3332039 -- 【库】TitleWingPack[属性:9]
	tAugPrecisionPush_Pack[3332039]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332039]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332039]["RewardItem"][1]["Id"] = 3323041 -- 7DTitleSelectionBag[3323041][属性:11][叠加:1][金币:0], 【表格】7天时效称号可选包
	tAugPrecisionPush_Pack[3332039]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7DTitleSelectionBag*1
	tAugPrecisionPush_Pack[3332039]["RewardItem"][2] = {}
	tAugPrecisionPush_Pack[3332039]["RewardItem"][2]["Id"] = 3323042 -- 7DWingsSelectionBag[3323042][属性:11][叠加:1][金币:0], 【表格】7天时效翅膀可选包
	tAugPrecisionPush_Pack[3332039]["RewardItem"][2]["Attr"] = "0 1 0 10080 1" -- 7DWingsSelectionBag*1
	tAugPrecisionPush_Pack[3332039]["RewardItem"][3] = {}
	tAugPrecisionPush_Pack[3332039]["RewardItem"][3]["Id"] = 3323043 -- 7DFashionSelectionBag[3323043][属性:11][叠加:1][金币:0], 【表格】7天时效外套可选包
	tAugPrecisionPush_Pack[3332039]["RewardItem"][3]["Attr"] = "0 1 0 10080 1" -- 7DFashionSelectionBag*1
	tAugPrecisionPush_Pack[3332039]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332039]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332039]["RewardEffect"]["Effect"] = "angelwing"


	-- ===高级神器大礼包
	-- ===索引: tAugPrecisionPush_Pack[3332040]
	-- ===删除: 3332040,1
	-- ===EmoneyLog: 350,23214
	tAugPrecisionPush_Pack[3332040] = {}
	tAugPrecisionPush_Pack[3332040]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332040]["EmoneyLog"] = "350	23214	330	330	1	"
	tAugPrecisionPush_Pack[3332040]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332040]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332040]["DeleteItem"][1]["Id"] = 3332040 -- 【库】SeniorRelicPack[属性:9]
	tAugPrecisionPush_Pack[3332040]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332040]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332040]["RewardItem"][1]["Id"] = 3322219 -- LuxuryRelicChest[3322219][属性:9][叠加:10000][金币:0], 【表格】高级神器礼包
	tAugPrecisionPush_Pack[3332040]["RewardItem"][1]["Attr"] = "0 10" -- LuxuryRelicChest*10
	tAugPrecisionPush_Pack[3332040]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332040]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332040]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7天三星赠神佑1法老外套
	-- ===索引: tAugPrecisionPush_Pack[3332043]
	-- ===删除: 3332043,1
	tAugPrecisionPush_Pack[3332043] = {}
	tAugPrecisionPush_Pack[3332043]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332043]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332043]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332043]["DeleteItem"][1]["Id"] = 3332043
	tAugPrecisionPush_Pack[3332043]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332043]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332043]["RewardItem"][1]["Id"] = 196295
	tAugPrecisionPush_Pack[3332043]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tAugPrecisionPush_Pack[3332043]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332043]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332043]["RewardEffect"]["Effect"] = "angelwing"


	tAugPrecisionPush_Pack[3332042] = {}
	-- ===水果机抽奖券
	-- ===索引: tAugPrecisionPush_Pack[3332042]
	-- ===删除: 3332042,1
	tAugPrecisionPush_Pack[3332042][1] = {}
	tAugPrecisionPush_Pack[3332042][1]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][1]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][1]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][1]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][1]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][1]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][1]["RewardItem"][1]["Id"] = 3316456
	tAugPrecisionPush_Pack[3332042][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][1]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][1]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAugPrecisionPush_Pack[3332042][2] = {}
	tAugPrecisionPush_Pack[3332042][2]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][2]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][2]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][2]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][2]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][2]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][2]["RewardItem"][1]["Id"] = 3316457
	tAugPrecisionPush_Pack[3332042][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][2]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAugPrecisionPush_Pack[3332042][3] = {}
	tAugPrecisionPush_Pack[3332042][3]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][3]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][3]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][3]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][3]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][3]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][3]["RewardItem"][1]["Id"] = 3316458
	tAugPrecisionPush_Pack[3332042][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][3]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][3]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAugPrecisionPush_Pack[3332042][4] = {}
	tAugPrecisionPush_Pack[3332042][4]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][4]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][4]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][4]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][4]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][4]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][4]["RewardItem"][1]["Id"] = 3316459
	tAugPrecisionPush_Pack[3332042][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][4]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][4]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAugPrecisionPush_Pack[3332042][5] = {}
	tAugPrecisionPush_Pack[3332042][5]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][5]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][5]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][5]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][5]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][5]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][5]["RewardItem"][1]["Id"] = 3316460
	tAugPrecisionPush_Pack[3332042][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][5]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAugPrecisionPush_Pack[3332042][6] = {}
	tAugPrecisionPush_Pack[3332042][6]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][6]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][6]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][6]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][6]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][6]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][6]["RewardItem"][1]["Id"] = 3316461
	tAugPrecisionPush_Pack[3332042][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][6]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][6]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAugPrecisionPush_Pack[3332042][7] = {}
	tAugPrecisionPush_Pack[3332042][7]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][7]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][7]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][7]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][7]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][7]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][7]["RewardItem"][1]["Id"] = 3316462
	tAugPrecisionPush_Pack[3332042][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][7]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tAugPrecisionPush_Pack[3332042][8] = {}
	tAugPrecisionPush_Pack[3332042][8]["LogId"] = 10002472
	tAugPrecisionPush_Pack[3332042][8]["DeleteItem"] = {}
	tAugPrecisionPush_Pack[3332042][8]["DeleteItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][8]["DeleteItem"][1]["Id"] = 3332042 -- 【库】FruitLotteryTicket[属性:9]
	tAugPrecisionPush_Pack[3332042][8]["RewardItem"] = {}
	tAugPrecisionPush_Pack[3332042][8]["RewardItem"][1] = {}
	tAugPrecisionPush_Pack[3332042][8]["RewardItem"][1]["Id"] = 3316463
	tAugPrecisionPush_Pack[3332042][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tAugPrecisionPush_Pack[3332042][8]["RewardEffect"] = {}
	tAugPrecisionPush_Pack[3332042][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugPrecisionPush_Pack[3332042][8]["RewardEffect"]["Effect"] = "angelwing"


local tAugPrecisionPush_Data = {}
	tAugPrecisionPush_Data[1] = 190
	tAugPrecisionPush_Data[2] = 190
	tAugPrecisionPush_Data[3] = 190
	tAugPrecisionPush_Data[4] = 190
	tAugPrecisionPush_Data[5] = 190
	tAugPrecisionPush_Data[6] = 2500
	tAugPrecisionPush_Data[7] = 1500
	tAugPrecisionPush_Data[8] = 2000
	tAugPrecisionPush_Data[9] = 200
	tAugPrecisionPush_Data[10] = 450
	tAugPrecisionPush_Data[11] = 250
	tAugPrecisionPush_Data[12] = 450
	tAugPrecisionPush_Data[13] = 250
	
	tAugPrecisionPush_Data["Base"] = {}
	tAugPrecisionPush_Data["Base"][1] = 10
	tAugPrecisionPush_Data["Base"][2] = 10
	tAugPrecisionPush_Data["Base"][3] = 10
	tAugPrecisionPush_Data["Base"][4] = 10
	tAugPrecisionPush_Data["Base"][5] = 10
	tAugPrecisionPush_Data["Base"][6] = 1000
	tAugPrecisionPush_Data["Base"][7] = 500
	tAugPrecisionPush_Data["Base"][8] = 500
	tAugPrecisionPush_Data["Base"][9] = 50
	tAugPrecisionPush_Data["Base"][10] = 50
	tAugPrecisionPush_Data["Base"][11] = 50
	tAugPrecisionPush_Data["Base"][12] = 50
	tAugPrecisionPush_Data["Base"][13] = 50
	
	tAugPrecisionPush_Data["Limit"] = {}
	tAugPrecisionPush_Data["Limit"]["Level"] = 80
	tAugPrecisionPush_Data["Limit"]["Meter"] = 1
	
	
	tAugPrecisionPush_Data["NpcId"] = 26984
	tAugPrecisionPush_Data["Time"] = 7200
	tAugPrecisionPush_Data["ItemId"] = {}
	tAugPrecisionPush_Data["ItemId"][1] = 3332031
	tAugPrecisionPush_Data["ItemId"][2] = 3332032
	tAugPrecisionPush_Data["ItemId"][3] = 3332033
	tAugPrecisionPush_Data["ItemId"][4] = 3332034
	
local tAugPrecisionPush_Stc = {}
	tAugPrecisionPush_Stc[1] = {}
	tAugPrecisionPush_Stc[1]["Event"] = 225
	tAugPrecisionPush_Stc[1]["Type"] = 86
	tAugPrecisionPush_Stc[2] = {}
	tAugPrecisionPush_Stc[2]["Event"] = 225
	tAugPrecisionPush_Stc[2]["Type"] = 87
	tAugPrecisionPush_Stc[3] = {}
	tAugPrecisionPush_Stc[3]["Event"] = 225
	tAugPrecisionPush_Stc[3]["Type"] = 88
	tAugPrecisionPush_Stc[4] = {}
	tAugPrecisionPush_Stc[4]["Event"] = 225
	tAugPrecisionPush_Stc[4]["Type"] = 89



local tAugPrecisionPush_Log = {}
	tAugPrecisionPush_Log["ChiLog"] = "0,0,%d,1,10002472,2[1],%d,1"

----------------------------------逻辑部分---------------------------------------------
-- 选择气门
function AugPrecisionPush_ChiPower(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	--获取玩家该门的4条属性
	local nUserId = Get_UserId()
	local nChi_Index = 0
	-- 检测玩家已开启的炼气门
	for i = 1,4 do
		if Get_AssignTypeAndValue(i,1,nUserId) == 0 then
			break
		end
		nChi_Index = nChi_Index + 1
	end
	if nChi_Index < nIndex then
		--阁下尚未开启该门
		User_TalkChannel2005(tAugPrecisionPush_Text["Msg"]["Fail"][1],nUserId)
		return
	end
	local nAttribute_Index = 0
	local tNum = {}
	-- 检测玩家已开启的炼气门
	for j = 1,4 do
		local nChi_Num = Get_AssignTypeAndValue(nIndex,j,nUserId)
		local nChi_Type = math.modf(nChi_Num/10000)
		local nChi_Data = math.fmod(nChi_Num,10000)
		local nChi_NewData = (nChi_Data - tAugPrecisionPush_Data["Base"][nChi_Type])/tAugPrecisionPush_Data[nChi_Type]
		if nChi_NewData < 1 then
			table.insert(tNum, 21 ..j)
			nAttribute_Index = nAttribute_Index + 1
		end
	end
	if nAttribute_Index <= 0 then
		User_TalkChannel2005(tAugPrecisionPush_Text["Msg"]["Fail"][2],nUserId)
		return
	end
	tItem[nItemId]["tOption2-1"] = tNum
	tItem[3332041]["OptionFunc211"] = "AugPrecisionPush_ChiAttribute</N>"..nItemId.."</N>"..nIndex.."</N>1"
	tItem[3332041]["OptionFunc212"] = "AugPrecisionPush_ChiAttribute</N>"..nItemId.."</N>"..nIndex.."</N>2"
	tItem[3332041]["OptionFunc213"] = "AugPrecisionPush_ChiAttribute</N>"..nItemId.."</N>"..nIndex.."</N>3"
	tItem[3332041]["OptionFunc214"] = "AugPrecisionPush_ChiAttribute</N>"..nItemId.."</N>"..nIndex.."</N>4"
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 选择属性条数
function AugPrecisionPush_ChiAttribute(nItemId,nIndex,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	--获取玩家该门的4条属性
	local nUserId = Get_UserId()
	local nChi_Index = 0
	-- 检测玩家已开启的炼气门
	for i = 1,4 do
		if Get_AssignTypeAndValue(i,1,nUserId) == 0 then
			break
		end
		nChi_Index = nChi_Index + 1
	end
	if nChi_Index < nIndex then
		--阁下尚未开启该门
		User_TalkChannel2005(tAugPrecisionPush_Text["Msg"]["Fail"][1],nUserId)
		return
	end
	--给分数赋值
	local nChi_Num = Get_AssignTypeAndValue(nIndex,nNum,nUserId)
	local nChi_Type = math.modf(nChi_Num/10000)
	local nChi_Data = math.fmod(nChi_Num,10000)
	local nChi_NewData = (nChi_Data - tAugPrecisionPush_Data["Base"][nChi_Type])/tAugPrecisionPush_Data[nChi_Type]
	if nChi_NewData >= 1 then
		User_TalkChannel2005(tAugPrecisionPush_Text["Msg"]["Fail"][2],nUserId)
		return
	end
	local nChi_AfterData = nChi_NewData + 0.01
	if nChi_AfterData > 1 then
		nChi_AfterData = 1
	end
	local nChi_AfterNum = math.floor(nChi_AfterData * tAugPrecisionPush_Data[nChi_Type] + 0.5) + tAugPrecisionPush_Data["Base"][nChi_Type] + nChi_Type * 10000
		-- 删除物品
	if not Item_DelItem(nItemId) then
		return
	end
	if User_SetAssignTypeAndValue(nIndex, nNum, nChi_AfterNum, nUserId) then
		--将玩家的xx门的第X条属性修改为x分
		--记录log 格式为abccdddd 第a门第b条属性修改为第cc种属性的dddd属性值
		local sLog = string.format(tAugPrecisionPush_Log["ChiLog"], nChi_Num + nIndex * 10000000 + nNum * 1000000, nChi_AfterNum + nIndex * 10000000 + nNum * 1000000)
		local sMsgBox = string.format(tAugPrecisionPush_Text["Msg"]["Success"][nIndex],nNum,math.modf(nChi_AfterData * 100))
		Sys_MsgBox(sMsgBox)
		Sys_SaveActionFestivalLog(sLog,nUserId)
	end
end

function AugPrecisionPush_GetReward(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tAugPrecisionPush_Pack[nItemId][nIndex])
end

-- 升级商店
function AugPrecisionPush_Uplev()
	local nLevel = tAugPrecisionPush_Data["Limit"]["Level"]
	local nMeto = tAugPrecisionPush_Data["Limit"]["Meter"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		return
	end
	local nEvent = tAugPrecisionPush_Stc[1]["Event"]
	local nType = tAugPrecisionPush_Stc[1]["Type"]
	--获取掩码值
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >= 1 then
		return
	end
	--掩码设置
	if not Task_AddStatistic(nEvent,nType,1,1) then
		return
	end
	AugPrecisionPush_OpenShop(1)
end

-- 开启商店
function AugPrecisionPush_OpenShop(nItemNum)
	local nNpcId = tAugPrecisionPush_Data["NpcId"]
	local nTime = tAugPrecisionPush_Data["Time"]
	local nItemId = tAugPrecisionPush_Data["ItemId"][nItemNum]
	--打开商店
	Sys_SendShopItem(nNpcId,nItemId,1,1,nTime)
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3332031] = tItem[3332031] or {}
tItem[3332031]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tAugPrecisionPush_Pack[nItemId])
end
tItem[3332032] = tItem[3332031]
tItem[3332033] = tItem[3332031]
tItem[3332034] = tItem[3332031]
tItem[3332035] = tItem[3332031]
tItem[3332036] = tItem[3332031]
tItem[3332037] = tItem[3332031]
tItem[3332038] = tItem[3332031]
tItem[3332039] = tItem[3332031]
tItem[3332040] = tItem[3332031]
tItem[3332043] = tItem[3332031]

--------物品有对白模板
tItemFace[3332041] = 1417
tItem[3332041] = tItem[3332041] or {}
tItem[3332041]["DialogueText"] = tAugPrecisionPush_Text[3332041]
tItem[3332041]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--获取玩家该门的4条属性
	local nUserId = Get_UserId()
	local nChi_Index = 0
	local tNum = {}
	-- 检测玩家已开启的炼气门
	for i = 1,4 do
		if Get_AssignTypeAndValue(i,1,nUserId) == 0 then
			break
		end
		table.insert(tNum, 11 ..i)
		nChi_Index = nChi_Index + 1
	end
	if nChi_Index <= 0 then
		Sys_MsgBox(tAugPrecisionPush_Text["Msg"]["Fail"][3])
		return
	end
	tItem[nItemId]["tOption1-1"] = tNum
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3332041]["Text1-1"] = {111}
tItem[3332041]["tOption1-1"] = {111,112,113,114}
tItem[3332041]["OptionFunc111"] = "AugPrecisionPush_ChiPower</N>3332041</N>1"
tItem[3332041]["OptionFunc112"] = "AugPrecisionPush_ChiPower</N>3332041</N>2"
tItem[3332041]["OptionFunc113"] = "AugPrecisionPush_ChiPower</N>3332041</N>3"
tItem[3332041]["OptionFunc114"] = "AugPrecisionPush_ChiPower</N>3332041</N>4"

tItem[3332041]["Text2-1"] = {211}
tItem[3332041]["tOption2-1"] = {211,212,213,214}

tItemFace[3332042] = 795
tItem[3332042] = tItem[3332042] or {}
tItem[3332042]["DialogueText"] = tAugPrecisionPush_Text[3332042]
tItem[3332042]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3332042]["Text1-1"] = {111}
tItem[3332042]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3332042]["OptionFunc111"] = "AugPrecisionPush_GetReward</N>3332042</N>1"
tItem[3332042]["OptionFunc112"] = "AugPrecisionPush_GetReward</N>3332042</N>2"
tItem[3332042]["OptionFunc113"] = "AugPrecisionPush_GetReward</N>3332042</N>3"
tItem[3332042]["OptionFunc114"] = "AugPrecisionPush_GetReward</N>3332042</N>4"
tItem[3332042]["OptionFunc115"] = "AugPrecisionPush_GetReward</N>3332042</N>5"
tItem[3332042]["OptionFunc116"] = "AugPrecisionPush_GetReward</N>3332042</N>6"
tItem[3332042]["OptionFunc117"] = "AugPrecisionPush_GetReward</N>3332042</N>7"
tItem[3332042]["OptionFunc118"] = "AugPrecisionPush_GetReward</N>3332042</N>8"
