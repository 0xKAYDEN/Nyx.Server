------------------------------------------------------------------------------------
--Name:			190724[英文征服][活动脚本]8月王者服美术新制作相关发奖action（8.22）
--Creator: 		茅志伟
--Created:		2019/07/24
------------------------------------------------------------------------------------

-- 命名前缀 tKingServerCoatAction_

-- lua.ini = 41431
-- 41431 = V100\ActiveScript\[Conquer][ActiveScript]KingServerCoatAction.lua
-- 41431 = V100\活动脚本\[征服][活动脚本]8月王者服美术新制作相关发奖action（8.22）.lua
-- LogId = 12001532
-- EMoneyBuyLog = 10000	0646

local tKingServerCoatAction_Pack = {}
	-- ===最强王者至尊宝箱
	-- ===索引:tKingServerCoatAction_Pack[3322401]
	-- ===删除:3322401,1
	-- ===
	tKingServerCoatAction_Pack[3322401] = {}
	tKingServerCoatAction_Pack[3322401]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322401]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322401]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322401]["DeleteItem"][1]["Id"] = 3322401 -- 【库】SupremeTreasurePack[属性:9]
	tKingServerCoatAction_Pack[3322401]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322401]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322401]["RewardItem"][1]["Id"] = 3322751 -- 100000CPsChest[3322751][属性:9][叠加:0][金币:0], 【表格】10W非赠天石
	tKingServerCoatAction_Pack[3322401]["RewardItem"][1]["Attr"] = "0 1" -- 100000CPsChest*1
	tKingServerCoatAction_Pack[3322401]["RewardItem"][2] = {}
	tKingServerCoatAction_Pack[3322401]["RewardItem"][2]["Id"] = 2168905 -- GiltDragonPendant[2168905][属性:9][叠加:0][金币:1], 【表格】180天鎏金祥龙佩
	tKingServerCoatAction_Pack[3322401]["RewardItem"][2]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的GiltDragonPendant*1
	tKingServerCoatAction_Pack[3322401]["RewardItem"][3] = {}
	tKingServerCoatAction_Pack[3322401]["RewardItem"][3]["Id"] = 2100085 -- GoldTrophy[2100085][属性:9][叠加:0][金币:0], 【表格】王者纪念杯
	tKingServerCoatAction_Pack[3322401]["RewardItem"][3]["Attr"] = "0 2 0 0 0 0 0 1" -- GoldTrophy*2
	tKingServerCoatAction_Pack[3322401]["RewardTitle"] = {}
	tKingServerCoatAction_Pack[3322401]["RewardTitle"]["TitleType"] = 2145 -- 【库】, 【表格】90天时效王者称号
	tKingServerCoatAction_Pack[3322401]["RewardTitle"]["TitleId"] = 2145
	tKingServerCoatAction_Pack[3322401]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:, 【需求】90天时效王者称号
	tKingServerCoatAction_Pack[3322401]["RewardWing"] = {}
	tKingServerCoatAction_Pack[3322401]["RewardWing"]["TitleType"] = 6030 -- 【库】, 【表格】90天时效王者翅膀
	tKingServerCoatAction_Pack[3322401]["RewardWing"]["TitleId"] = 6030
	tKingServerCoatAction_Pack[3322401]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:, 【需求】90天时效王者翅膀
	tKingServerCoatAction_Pack[3322401]["RewardItem"][4] = {}
	tKingServerCoatAction_Pack[3322401]["RewardItem"][4]["Id"] = 195865 -- 00[195865][属性:9][叠加:0][金币:0], 【表格】永久时效王者外套
	tKingServerCoatAction_Pack[3322401]["RewardItem"][4]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑00*1
	tKingServerCoatAction_Pack[3322401]["RewardItem"][5] = {}
	tKingServerCoatAction_Pack[3322401]["RewardItem"][5]["Id"] = 200647 -- SeaDragon(Holy)[200647][属性:0][叠加:0][金币:0], 【表格】90天时效金色海马坐骑
	tKingServerCoatAction_Pack[3322401]["RewardItem"][5]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的1%神佑SeaDragon(Holy)*1
	tKingServerCoatAction_Pack[3322401]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322401]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322401]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322402] = {}
	-- ===王者黄金至宝箱
	-- ===索引:tKingServerCoatAction_Pack[3322402]
	-- ===删除:3322402,1
	-- ===
	tKingServerCoatAction_Pack[3322402]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322402]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322402]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322402]["DeleteItem"][1]["Id"] = 3322402 -- 【库】GoldTreasurePack[属性:9]
	tKingServerCoatAction_Pack[3322402]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322402]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322402]["RewardItem"][1]["Id"] = 3322752 -- 50000CPsChest[3322752][属性:9][叠加:0][金币:0], 【表格】5W非赠天石
	tKingServerCoatAction_Pack[3322402]["RewardItem"][1]["Attr"] = "0 1" -- 50000CPsChest*1
	tKingServerCoatAction_Pack[3322402]["RewardItem"][2] = {}
	tKingServerCoatAction_Pack[3322402]["RewardItem"][2]["Id"] = 2100085 -- GoldTrophy[2100085][属性:9][叠加:0][金币:0], 【表格】王者纪念杯
	tKingServerCoatAction_Pack[3322402]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1" -- GoldTrophy*1
	tKingServerCoatAction_Pack[3322402]["RewardItem"][3] = {}
	tKingServerCoatAction_Pack[3322402]["RewardItem"][3]["Id"] = 3322407 -- GoldSelectionPack[3322407][属性:9][叠加:0][金币:0], 【表格】30W气力值或者璀璨星陨石*10
	tKingServerCoatAction_Pack[3322402]["RewardItem"][3]["Attr"] = "0 1" -- GoldSelectionPack*1
	tKingServerCoatAction_Pack[3322402]["RewardTitle"] = {}
	tKingServerCoatAction_Pack[3322402]["RewardTitle"]["TitleType"] = 2145 -- 【库】, 【表格】30天时效王者称号
	tKingServerCoatAction_Pack[3322402]["RewardTitle"]["TitleId"] = 2145
	tKingServerCoatAction_Pack[3322402]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:, 【需求】30天时效王者称号
	tKingServerCoatAction_Pack[3322402]["RewardWing"] = {}
	tKingServerCoatAction_Pack[3322402]["RewardWing"]["TitleType"] = 6030 -- 【库】, 【表格】30天时效王者翅膀
	tKingServerCoatAction_Pack[3322402]["RewardWing"]["TitleId"] = 6030
	tKingServerCoatAction_Pack[3322402]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:, 【需求】30天时效王者翅膀
	tKingServerCoatAction_Pack[3322402]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322402]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322402]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322403] = {}
	-- ===王者白银至宝箱
	-- ===索引:tKingServerCoatAction_Pack[3322403]
	-- ===删除:3322403,1
	-- ===
	tKingServerCoatAction_Pack[3322403]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322403]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322403]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322403]["DeleteItem"][1]["Id"] = 3322403 -- 【库】SilverTreasurePack[属性:9]
	tKingServerCoatAction_Pack[3322403]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322403]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322403]["RewardItem"][1]["Id"] = 3322753 -- 30000CPsChest[3322753][属性:9][叠加:0][金币:0], 【表格】3W非赠天石
	tKingServerCoatAction_Pack[3322403]["RewardItem"][1]["Attr"] = "0 1" -- 30000CPsChest*1
	tKingServerCoatAction_Pack[3322403]["RewardItem"][2] = {}
	tKingServerCoatAction_Pack[3322403]["RewardItem"][2]["Id"] = 2100085 -- GoldTrophy[2100085][属性:9][叠加:0][金币:0], 【表格】王者纪念杯
	tKingServerCoatAction_Pack[3322403]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1" -- GoldTrophy*1
	tKingServerCoatAction_Pack[3322403]["RewardItem"][3] = {}
	tKingServerCoatAction_Pack[3322403]["RewardItem"][3]["Id"] = 3322408 -- SilverSelectionPack[3322408][属性:9][叠加:0][金币:0], 【表格】10W气力值或者璀璨星陨石*3
	tKingServerCoatAction_Pack[3322403]["RewardItem"][3]["Attr"] = "0 1" -- SilverSelectionPack*1
	tKingServerCoatAction_Pack[3322403]["RewardTitle"] = {}
	tKingServerCoatAction_Pack[3322403]["RewardTitle"]["TitleType"] = 2145 -- 【库】, 【表格】30天时效王者称号
	tKingServerCoatAction_Pack[3322403]["RewardTitle"]["TitleId"] = 2145
	tKingServerCoatAction_Pack[3322403]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:, 【需求】30天时效王者称号
	tKingServerCoatAction_Pack[3322403]["RewardWing"] = {}
	tKingServerCoatAction_Pack[3322403]["RewardWing"]["TitleType"] = 6030 -- 【库】, 【表格】30天时效王者翅膀
	tKingServerCoatAction_Pack[3322403]["RewardWing"]["TitleId"] = 6030
	tKingServerCoatAction_Pack[3322403]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:, 【需求】30天时效王者翅膀
	tKingServerCoatAction_Pack[3322403]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322403]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322403]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322404] = {}
	-- ===王者青铜至宝箱
	-- ===索引:tKingServerCoatAction_Pack[3322404]
	-- ===删除:3322404,1
	-- ===
	tKingServerCoatAction_Pack[3322404]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322404]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322404]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322404]["DeleteItem"][1]["Id"] = 3322404 -- 【库】BronzeTreasurePack[属性:9]
	tKingServerCoatAction_Pack[3322404]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322404]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322404]["RewardItem"][1]["Id"] = 3322754 -- 10000CPsChest[3322754][属性:9][叠加:0][金币:0], 【表格】1W非赠天石
	tKingServerCoatAction_Pack[3322404]["RewardItem"][1]["Attr"] = "0 1" -- 10000CPsChest*1
	tKingServerCoatAction_Pack[3322404]["RewardItem"][2] = {}
	tKingServerCoatAction_Pack[3322404]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*10
	tKingServerCoatAction_Pack[3322404]["RewardItem"][2]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的RadiantStarStone*10
	tKingServerCoatAction_Pack[3322404]["RewardStrengthValue"] = {}
	tKingServerCoatAction_Pack[3322404]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】50000气力值
	tKingServerCoatAction_Pack[3322404]["RewardItem"][3] = {}
	tKingServerCoatAction_Pack[3322404]["RewardItem"][3]["Id"] = 3322757 -- 5000CPs(B)Chest[3322757][属性:9][叠加:0][金币:0], 【表格】5000赠品天石（赠）
	tKingServerCoatAction_Pack[3322404]["RewardItem"][3]["Attr"] = "0 1" -- 5000CPs(B)Chest*1
	tKingServerCoatAction_Pack[3322404]["RewardItem"][4] = {}
	tKingServerCoatAction_Pack[3322404]["RewardItem"][4]["Id"] = 195865 -- 00[195865][属性:9][叠加:0][金币:0], 【表格】30天时效王者外套
	tKingServerCoatAction_Pack[3322404]["RewardItem"][4]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的00*1
	tKingServerCoatAction_Pack[3322404]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322404]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322405] = {}
	-- ===王者珍藏礼盒
	-- ===索引:tKingServerCoatAction_Pack[3322405]
	-- ===删除:3322405,1
	-- ===
	tKingServerCoatAction_Pack[3322405]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322405]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322405]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322405]["DeleteItem"][1]["Id"] = 3322405 -- 【库】ClassicTreasurePack[属性:9]
	tKingServerCoatAction_Pack[3322405]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322405]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322405]["RewardItem"][1]["Id"] = 3322755 -- 3000CPsChest[3322755][属性:9][叠加:0][金币:0], 【表格】3000非赠天石
	tKingServerCoatAction_Pack[3322405]["RewardItem"][1]["Attr"] = "0 1" -- 3000CPsChest*1
	tKingServerCoatAction_Pack[3322405]["RewardItem"][2] = {}
	tKingServerCoatAction_Pack[3322405]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tKingServerCoatAction_Pack[3322405]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tKingServerCoatAction_Pack[3322405]["RewardStrengthValue"] = {}
	tKingServerCoatAction_Pack[3322405]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tKingServerCoatAction_Pack[3322405]["RewardItem"][3] = {}
	tKingServerCoatAction_Pack[3322405]["RewardItem"][3]["Id"] = 195865 -- 00[195865][属性:9][叠加:0][金币:0], 【表格】30天时效王者外套
	tKingServerCoatAction_Pack[3322405]["RewardItem"][3]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的00*1
	tKingServerCoatAction_Pack[3322405]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322405]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322406] = {}
	-- ===王者精装礼盒
	-- ===索引:tKingServerCoatAction_Pack[3322406]
	-- ===删除:3322406,1
	-- ===
	tKingServerCoatAction_Pack[3322406]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322406]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322406]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322406]["DeleteItem"][1]["Id"] = 3322406 -- 【库】EliteTreasurePack[属性:9]
	tKingServerCoatAction_Pack[3322406]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322406]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322406]["RewardItem"][1]["Id"] = 3322756 -- 1000CPsChest[3322756][属性:9][叠加:0][金币:0], 【表格】1000非赠天石
	tKingServerCoatAction_Pack[3322406]["RewardItem"][1]["Attr"] = "0 1" -- 1000CPsChest*1
	tKingServerCoatAction_Pack[3322406]["RewardItem"][2] = {}
	tKingServerCoatAction_Pack[3322406]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tKingServerCoatAction_Pack[3322406]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tKingServerCoatAction_Pack[3322406]["RewardStrengthValue"] = {}
	tKingServerCoatAction_Pack[3322406]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tKingServerCoatAction_Pack[3322406]["RewardItem"][3] = {}
	tKingServerCoatAction_Pack[3322406]["RewardItem"][3]["Id"] = 195865 -- 00[195865][属性:9][叠加:0][金币:0], 【表格】30天时效王者外套
	tKingServerCoatAction_Pack[3322406]["RewardItem"][3]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的00*1
	tKingServerCoatAction_Pack[3322406]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322406]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322407] = {}
	-- ===王者黄金可选包
	-- ===索引:tKingServerCoatAction_Pack[3322407][1]
	-- ===删除:3322407,1
	-- ===
	tKingServerCoatAction_Pack[3322407][1] = {}
	tKingServerCoatAction_Pack[3322407][1]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322407][1]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322407][1]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322407][1]["DeleteItem"][1]["Id"] = 3322407 -- 【库】GoldSelectionPack[属性:9]
	tKingServerCoatAction_Pack[3322407][1]["RewardStrengthValue"] = {}
	tKingServerCoatAction_Pack[3322407][1]["RewardStrengthValue"]["Value"] = 300000 -- 气力值, 【需求】300000气力值
	tKingServerCoatAction_Pack[3322407][1]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322407][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322407][1]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322407][2] = {}
	-- ===王者黄金可选包
	-- ===索引:tKingServerCoatAction_Pack[3322407][2]
	-- ===删除:3322407,1
	-- ===
	tKingServerCoatAction_Pack[3322407][2]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322407][2]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322407][2]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322407][2]["DeleteItem"][1]["Id"] = 3322407 -- 【库】GoldSelectionPack[属性:9]
	tKingServerCoatAction_Pack[3322407][2]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322407][2]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322407][2]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*10
	tKingServerCoatAction_Pack[3322407][2]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的SplendidStarStone*10
	tKingServerCoatAction_Pack[3322407][2]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322407][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322407][2]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322408] = {}
	-- ===王者白银可选包
	-- ===索引:tKingServerCoatAction_Pack[3322408][1]
	-- ===删除:3322408,1
	-- ===
	tKingServerCoatAction_Pack[3322408][1] = {}
	tKingServerCoatAction_Pack[3322408][1]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322408][1]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322408][1]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322408][1]["DeleteItem"][1]["Id"] = 3322408 -- 【库】SilverSelectionPack[属性:9]
	tKingServerCoatAction_Pack[3322408][1]["RewardStrengthValue"] = {}
	tKingServerCoatAction_Pack[3322408][1]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】100000气力值
	tKingServerCoatAction_Pack[3322408][1]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322408][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322408][1]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322408][2] = {}
	-- ===王者白银可选包
	-- ===索引:tKingServerCoatAction_Pack[3322408][2]
	-- ===删除:3322408,1
	-- ===
	tKingServerCoatAction_Pack[3322408][2]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322408][2]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322408][2]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322408][2]["DeleteItem"][1]["Id"] = 3322408 -- 【库】SilverSelectionPack[属性:9]
	tKingServerCoatAction_Pack[3322408][2]["RewardItem"] = {}
	tKingServerCoatAction_Pack[3322408][2]["RewardItem"][1] = {}
	tKingServerCoatAction_Pack[3322408][2]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*3
	tKingServerCoatAction_Pack[3322408][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的SplendidStarStone*3
	tKingServerCoatAction_Pack[3322408][2]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322408][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322408][2]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322751] = {}
	-- ===100000天石宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322751]
	-- ===删除:3322751,1
	-- ===
	tKingServerCoatAction_Pack[3322751]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322751]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322751]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322751]["DeleteItem"][1]["Id"] = 3322751 -- 【库】100000CPsChest[属性:9]
	tKingServerCoatAction_Pack[3322751]["RewardEMoney"] = {}
	tKingServerCoatAction_Pack[3322751]["RewardEMoney"]["Value"] = 100000 -- 天石, 【需求】100000天石
	tKingServerCoatAction_Pack[3322751]["EmoneyLog"] = "10000	0646	-100000	-100000	0	"
	tKingServerCoatAction_Pack[3322751]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322751]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322751]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322752] = {}
	-- ===50000天石宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322752]
	-- ===删除:3322752,1
	-- ===
	tKingServerCoatAction_Pack[3322752]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322752]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322752]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322752]["DeleteItem"][1]["Id"] = 3322752 -- 【库】50000CPsChest[属性:9]
	tKingServerCoatAction_Pack[3322752]["RewardEMoney"] = {}
	tKingServerCoatAction_Pack[3322752]["RewardEMoney"]["Value"] = 50000 -- 天石, 【需求】50000天石
	tKingServerCoatAction_Pack[3322752]["EmoneyLog"] = "10000	0646	-50000	-50000	0	"
	tKingServerCoatAction_Pack[3322752]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322752]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322752]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322753] = {}
	-- ===30000天石宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322753]
	-- ===删除:3322753,1
	-- ===
	tKingServerCoatAction_Pack[3322753]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322753]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322753]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322753]["DeleteItem"][1]["Id"] = 3322753 -- 【库】30000CPsChest[属性:9]
	tKingServerCoatAction_Pack[3322753]["RewardEMoney"] = {}
	tKingServerCoatAction_Pack[3322753]["RewardEMoney"]["Value"] = 30000 -- 天石, 【需求】30000天石
	tKingServerCoatAction_Pack[3322753]["EmoneyLog"] = "10000	0646	-30000	-30000	0	"
	tKingServerCoatAction_Pack[3322753]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322753]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322753]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322754] = {}
	-- ===10000天石宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322754]
	-- ===删除:3322754,1
	-- ===
	tKingServerCoatAction_Pack[3322754]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322754]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322754]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322754]["DeleteItem"][1]["Id"] = 3322754 -- 【库】10000CPsChest[属性:9]
	tKingServerCoatAction_Pack[3322754]["RewardEMoney"] = {}
	tKingServerCoatAction_Pack[3322754]["RewardEMoney"]["Value"] = 10000 -- 天石, 【需求】10000天石
	tKingServerCoatAction_Pack[3322754]["EmoneyLog"] = "10000	0646	-10000	-10000	0	"
	tKingServerCoatAction_Pack[3322754]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322754]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322754]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322755] = {}
	-- ===3000天石宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322755]
	-- ===删除:3322755,1
	-- ===
	tKingServerCoatAction_Pack[3322755]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322755]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322755]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322755]["DeleteItem"][1]["Id"] = 3322755 -- 【库】3000CPsChest[属性:9]
	tKingServerCoatAction_Pack[3322755]["RewardEMoney"] = {}
	tKingServerCoatAction_Pack[3322755]["RewardEMoney"]["Value"] = 3000 -- 天石, 【需求】3000天石
	tKingServerCoatAction_Pack[3322755]["EmoneyLog"] = "10000	0646	-3000	-3000	0	"
	tKingServerCoatAction_Pack[3322755]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322755]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322755]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322756] = {}
	-- ===1000天石宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322756]
	-- ===删除:3322756,1
	-- ===
	tKingServerCoatAction_Pack[3322756]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322756]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322756]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322756]["DeleteItem"][1]["Id"] = 3322756 -- 【库】1000CPsChest[属性:9]
	tKingServerCoatAction_Pack[3322756]["RewardEMoney"] = {}
	tKingServerCoatAction_Pack[3322756]["RewardEMoney"]["Value"] = 1000 -- 天石, 【需求】1000天石
	tKingServerCoatAction_Pack[3322756]["EmoneyLog"] = "10000	0646	-1000	-1000	0	"
	tKingServerCoatAction_Pack[3322756]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322756]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322756]["RewardEffect"]["Effect"] = "angelwing"


	tKingServerCoatAction_Pack[3322757] = {}
	-- ===5000天石（赠）宝盒
	-- ===索引:tKingServerCoatAction_Pack[3322757]
	-- ===删除:3322757,1
	-- ===
	tKingServerCoatAction_Pack[3322757]["LogId"] = 12001532
	tKingServerCoatAction_Pack[3322757]["DeleteItem"] = {}
	tKingServerCoatAction_Pack[3322757]["DeleteItem"][1] = {}
	tKingServerCoatAction_Pack[3322757]["DeleteItem"][1]["Id"] = 3322757 -- 【库】5000CPs(B)Chest[属性:9]
	tKingServerCoatAction_Pack[3322757]["RewardEMoneyMono"] = {}
	tKingServerCoatAction_Pack[3322757]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000天石（赠）
	tKingServerCoatAction_Pack[3322757]["EmoneyLog"] = "10000	0646	0	0	-5000	"
	tKingServerCoatAction_Pack[3322757]["RewardEffect"] = {}
	tKingServerCoatAction_Pack[3322757]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServerCoatAction_Pack[3322757]["RewardEffect"]["Effect"] = "angelwing"












--------------------------------------------------逻辑部分
--天石礼包逻辑
function KingServerCoatAction_RewardEMoney(nItemId)
	local nEMoney = tKingServerCoatAction_Pack[nItemId]["RewardEMoney"]["Value"]
	if Get_UserEMoney() + nEMoney > G_User_MaxEmoney then 
		User_TalkChannel2005(tKingServerCoatAction_Text["Sys_MsgBox"]["NoEMoney"])
		return
	end  
	RewardTemplate_UseItemAndMsg(tKingServerCoatAction_Pack[nItemId])
end
--可选包逻辑
function KingServerCoatAction_ChoicePack(nItemId,nChoNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tKingServerCoatAction_Pack[nItemId][nChoNum])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tKingServerCoatAction_Text["Sys_MsgBox"]["NoSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tKingServerCoatAction_Pack[nItemId][nChoNum])
end
--赠点礼包逻辑
function KingServerCoatAction_RewardEMoneyMon(nItemId)
	local nMonoEMoney = tKingServerCoatAction_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nMonoEMoney > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tKingServerCoatAction_Text["Sys_MsgBox"]["NoMonoEMoney"])
		return
	end  
	RewardTemplate_UseItemAndMsg(tKingServerCoatAction_Pack[nItemId])
end






------------------------------------------------对白模板
--王者黄金可选包
tItemFace[3322407] = 1430
tItem[3322407] = tItem[3322407] or {}
tItem[3322407]["DialogueText"] = tKingServerCoatAction_Text[3322407]
tItem[3322407]["Text1-1"] = {111}
tItem[3322407]["tOption1-1"] = {111,112}
tItem[3322407]["OptionFunc111"] = "KingServerCoatAction_ChoicePack</N>3322407</N>1</N>111"
tItem[3322407]["OptionFunc112"] = "KingServerCoatAction_ChoicePack</N>3322407</N>2</N>112"


--王者白银可选包
tItemFace[3322408] = 2283
tItem[3322408] = tItem[3322408] or {}
tItem[3322408]["DialogueText"] = tKingServerCoatAction_Text[3322408]
tItem[3322408]["Text1-1"] = {111}
tItem[3322408]["tOption1-1"] = {111,112}
tItem[3322408]["OptionFunc111"] = "KingServerCoatAction_ChoicePack</N>3322408</N>1</N>111"
tItem[3322408]["OptionFunc112"] = "KingServerCoatAction_ChoicePack</N>3322408</N>2</N>112"


tItem[3322401] = tItem[3322401] or {}
tItem[3322401]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tKingServerCoatAction_Pack[nItemId])
end
tItem[3322402] = tItem[3322401] or {}
tItem[3322403] = tItem[3322401] or {}
tItem[3322404] = tItem[3322401] or {}
tItem[3322405] = tItem[3322401] or {}
tItem[3322406] = tItem[3322401] or {}
-- 天石礼包
tItem[3322751] = tItem[3322751] or {}
tItem[3322751]["Function"] = function(nItemId,sItemName)
	KingServerCoatAction_RewardEMoney(nItemId)
end
tItem[3322752] = tItem[3322751] or {}
tItem[3322753] = tItem[3322751] or {}
tItem[3322754] = tItem[3322751] or {}
tItem[3322755] = tItem[3322751] or {}
tItem[3322756] = tItem[3322751] or {}
-- 天石(赠)礼包
tItem[3322757] = tItem[3322757] or {}
tItem[3322757]["Function"] = function(nItemId,sItemName)
	KingServerCoatAction_RewardEMoneyMon(nItemId)
end