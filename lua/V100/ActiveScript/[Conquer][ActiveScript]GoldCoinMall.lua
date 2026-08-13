------------------------------------------------------------------------------------
--Name：        190318[英文征服][活动脚本]金币商城4月2日
--Creator:      叶方琪
--Created:     2019/03/21
------------------------------------------------------------------------------------
--任务需求

-----------------------------------------------------------------------------------
--命名前缀 GoldCoinMall_

--logID 12001337

--天石log 能统计到打卡多少个包就行
--EmoneyLog 100000224


----------------------------------表配置部分--------------------------------------------

local tGoldCoinMall_Reward = {}
	-- ===Bound+1StonePack
	-- ===索引: 3320680
	-- ===删除: 3320680,1
	-- ===EMoneyLog: 10000,228
	tGoldCoinMall_Reward[3320680] = {}
	tGoldCoinMall_Reward[3320680]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320680]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320680]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320680]["DeleteItem"][1]["Id"] = 3320680 -- 【库】Bound+1StonePack[属性:9]
	tGoldCoinMall_Reward[3320680]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320680]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320680]["RewardItem"][1]["Id"] = 730001 -- 【库】+1Stone[属性:0]【表格】赤炼石+1
	tGoldCoinMall_Reward[3320680]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone(赠)*1
	tGoldCoinMall_Reward[3320680]["LogForEmoney"] = "1000	228"

	-- ===Bound+2StonePack
	-- ===索引: 3320681
	-- ===删除: 3320681,1
	-- ===EMoneyLog: 10000,229
	tGoldCoinMall_Reward[3320681] = {}
	tGoldCoinMall_Reward[3320681]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320681]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320681]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320681]["DeleteItem"][1]["Id"] = 3320681 -- 【库】Bound+2StonePack[属性:9]
	tGoldCoinMall_Reward[3320681]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320681]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320681]["RewardItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0]【表格】赤炼石+2
	tGoldCoinMall_Reward[3320681]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone(赠)*1
	tGoldCoinMall_Reward[3320681]["LogForEmoney"] = "1000	229"

	-- ===Bound+3StonePack
	-- ===索引: 3320682
	-- ===删除: 3320682,1
	-- ===EMoneyLog: 10000,230
	tGoldCoinMall_Reward[3320682] = {}
	tGoldCoinMall_Reward[3320682]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320682]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320682]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320682]["DeleteItem"][1]["Id"] = 3320682 -- 【库】Bound+3StonePack[属性:9]
	tGoldCoinMall_Reward[3320682]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320682]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320682]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0]【表格】赤炼石+3
	tGoldCoinMall_Reward[3320682]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone(赠)*1
	tGoldCoinMall_Reward[3320682]["LogForEmoney"] = "1000	230"

	-- ===Bound+4StonePack
	-- ===索引: 3320683
	-- ===删除: 3320683,1
	-- ===EMoneyLog: 10000,231
	tGoldCoinMall_Reward[3320683] = {}
	tGoldCoinMall_Reward[3320683]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320683]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320683]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320683]["DeleteItem"][1]["Id"] = 3320683 -- 【库】Bound+4StonePack[属性:9]
	tGoldCoinMall_Reward[3320683]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320683]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320683]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0]【表格】赤炼石+4
	tGoldCoinMall_Reward[3320683]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone(赠)*1
	tGoldCoinMall_Reward[3320683]["LogForEmoney"] = "1000	231"

	-- ===Bound+5StonePack
	-- ===索引: 3320684
	-- ===删除: 3320684,1
	-- ===EMoneyLog: 10000,232
	tGoldCoinMall_Reward[3320684] = {}
	tGoldCoinMall_Reward[3320684]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320684]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320684]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320684]["DeleteItem"][1]["Id"] = 3320684 -- 【库】Bound+5StonePack[属性:9]
	tGoldCoinMall_Reward[3320684]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320684]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320684]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0]【表格】赤炼石+5
	tGoldCoinMall_Reward[3320684]["RewardItem"][1]["Attr"] = "0 1 3" -- +5Stone(赠)*1
	tGoldCoinMall_Reward[3320684]["LogForEmoney"] = "1000	232"

	-- ===Bound+6StonePack
	-- ===索引: 3320685
	-- ===删除: 3320685,1
	-- ===EMoneyLog: 10000,233
	tGoldCoinMall_Reward[3320685] = {}
	tGoldCoinMall_Reward[3320685]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320685]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320685]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320685]["DeleteItem"][1]["Id"] = 3320685 -- 【库】Bound+6StonePack[属性:9]
	tGoldCoinMall_Reward[3320685]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320685]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320685]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】赤炼石+6
	tGoldCoinMall_Reward[3320685]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone(赠)*1
	tGoldCoinMall_Reward[3320685]["LogForEmoney"] = "1000	233"

	-- ===Bound+1SteedPack
	-- ===索引: 3320686
	-- ===删除: 3320686,1
	-- ===EMoneyLog: 10000,234
	tGoldCoinMall_Reward[3320686] = {}
	tGoldCoinMall_Reward[3320686]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320686]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320686]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320686]["DeleteItem"][1]["Id"] = 3320686 -- 【库】Bound+1SteedPack[属性:9]
	tGoldCoinMall_Reward[3320686]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320686]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320686]["RewardItem"][1]["Id"] = 300000 -- 【库】Steed[属性:0]【表格】马匹+1
	tGoldCoinMall_Reward[3320686]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 1" -- Steed(赠)*1
	tGoldCoinMall_Reward[3320686]["LogForEmoney"] = "1000	234"

	-- ===Bound+2SteedPack
	-- ===索引: 3320687
	-- ===删除: 3320687,1
	-- ===EMoneyLog: 10000,235
	tGoldCoinMall_Reward[3320687] = {}
	tGoldCoinMall_Reward[3320687]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320687]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320687]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320687]["DeleteItem"][1]["Id"] = 3320687 -- 【库】Bound+2SteedPack[属性:9]
	tGoldCoinMall_Reward[3320687]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320687]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320687]["RewardItem"][1]["Id"] = 300000 -- 【库】Steed[属性:0]【表格】马匹+2
	tGoldCoinMall_Reward[3320687]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 2" -- Steed(赠)*1
	tGoldCoinMall_Reward[3320687]["LogForEmoney"] = "1000	235"

	-- ===Bound+3SteedPack
	-- ===索引: 3320688
	-- ===删除: 3320688,1
	-- ===EMoneyLog: 10000,236
	tGoldCoinMall_Reward[3320688] = {}
	tGoldCoinMall_Reward[3320688]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320688]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320688]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320688]["DeleteItem"][1]["Id"] = 3320688 -- 【库】Bound+3SteedPack[属性:9]
	tGoldCoinMall_Reward[3320688]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320688]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320688]["RewardItem"][1]["Id"] = 300000 -- 【库】Steed[属性:0]【表格】马匹+3
	tGoldCoinMall_Reward[3320688]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3" -- Steed(赠)*1
	tGoldCoinMall_Reward[3320688]["LogForEmoney"] = "1000	236"

	-- ===Bound+4SteedPack
	-- ===索引: 3320689
	-- ===删除: 3320689,1
	-- ===EMoneyLog: 10000,237
	tGoldCoinMall_Reward[3320689] = {}
	tGoldCoinMall_Reward[3320689]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320689]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320689]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320689]["DeleteItem"][1]["Id"] = 3320689 -- 【库】Bound+4SteedPack[属性:9]
	tGoldCoinMall_Reward[3320689]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320689]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320689]["RewardItem"][1]["Id"] = 300000 -- 【库】Steed[属性:0]【表格】马匹+4
	tGoldCoinMall_Reward[3320689]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4" -- Steed(赠)*1
	tGoldCoinMall_Reward[3320689]["LogForEmoney"] = "1000	237"

	-- ===Bound+5SteedPack
	-- ===索引: 3320690
	-- ===删除: 3320690,1
	-- ===EMoneyLog: 10000,238
	tGoldCoinMall_Reward[3320690] = {}
	tGoldCoinMall_Reward[3320690]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320690]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320690]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320690]["DeleteItem"][1]["Id"] = 3320690 -- 【库】Bound+5SteedPack[属性:9]
	tGoldCoinMall_Reward[3320690]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320690]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320690]["RewardItem"][1]["Id"] = 300000 -- 【库】Steed[属性:0]【表格】马匹+5
	tGoldCoinMall_Reward[3320690]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5" -- Steed(赠)*1
	tGoldCoinMall_Reward[3320690]["LogForEmoney"] = "1000	238"

	-- ===Bound+6SteedPack
	-- ===索引: 3320691
	-- ===删除: 3320691,1
	-- ===EMoneyLog: 10000,239
	tGoldCoinMall_Reward[3320691] = {}
	tGoldCoinMall_Reward[3320691]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320691]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320691]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320691]["DeleteItem"][1]["Id"] = 3320691 -- 【库】Bound+6SteedPack[属性:9]
	tGoldCoinMall_Reward[3320691]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320691]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320691]["RewardItem"][1]["Id"] = 300000 -- 【库】Steed[属性:0]【表格】马匹+6
	tGoldCoinMall_Reward[3320691]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 6" -- Steed(赠)*1
	tGoldCoinMall_Reward[3320691]["LogForEmoney"] = "1000	239"

	-- ===BoundVitalPillPack
	-- ===索引: 3320692
	-- ===删除: 3320692,1
	-- ===EMoneyLog: 10000,240
	tGoldCoinMall_Reward[3320692] = {}
	tGoldCoinMall_Reward[3320692]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320692]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320692]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320692]["DeleteItem"][1]["Id"] = 3320692 -- 【库】BoundVitalPillPack[属性:9]
	tGoldCoinMall_Reward[3320692]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320692]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320692]["RewardItem"][1]["Id"] = 729242 -- 【库】Vital~Pill[属性:0]【表格】回气丹
	tGoldCoinMall_Reward[3320692]["RewardItem"][1]["Attr"] = "0 1 3" -- Vital~Pill(赠)*1
	tGoldCoinMall_Reward[3320692]["LogForEmoney"] = "1000	240"

	-- ===BoundFavoredPillPack
	-- ===索引: 3320693
	-- ===删除: 3320693,1
	-- ===EMoneyLog: 10000,241
	tGoldCoinMall_Reward[3320693] = {}
	tGoldCoinMall_Reward[3320693]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320693]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320693]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320693]["DeleteItem"][1]["Id"] = 3320693 -- 【库】BoundFavoredPillPack[属性:9]
	tGoldCoinMall_Reward[3320693]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320693]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320693]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0]【表格】免费强炼丹
	tGoldCoinMall_Reward[3320693]["RewardItem"][1]["Attr"] = "0 1 3" -- FavoredTrainingPill(赠)*1
	tGoldCoinMall_Reward[3320693]["LogForEmoney"] = "1000	241"

	-- ===BoundSpecialPillPack
	-- ===索引: 3320694
	-- ===删除: 3320694,1
	-- ===EMoneyLog: 10000,242
	tGoldCoinMall_Reward[3320694] = {}
	tGoldCoinMall_Reward[3320694]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320694]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320694]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320694]["DeleteItem"][1]["Id"] = 3320694 -- 【库】BoundSpecialPillPack[属性:9]
	tGoldCoinMall_Reward[3320694]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320694]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320694]["RewardItem"][1]["Id"] = 3003125 -- 【库】SpecialTrainingPill[属性:0]【表格】通神丹
	tGoldCoinMall_Reward[3320694]["RewardItem"][1]["Attr"] = "0 1 3" -- SpecialTrainingPill(赠)*1
	tGoldCoinMall_Reward[3320694]["LogForEmoney"] = "1000	242"

	-- ===BoundSeniorPillPack
	-- ===索引: 3320695
	-- ===删除: 3320695,1
	-- ===EMoneyLog: 10000,243
	tGoldCoinMall_Reward[3320695] = {}
	tGoldCoinMall_Reward[3320695]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320695]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320695]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320695]["DeleteItem"][1]["Id"] = 3320695 -- 【库】BoundSeniorPillPack[属性:9]
	tGoldCoinMall_Reward[3320695]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320695]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320695]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]【表格】究极通神丹
	tGoldCoinMall_Reward[3320695]["RewardItem"][1]["Attr"] = "0 1 3" -- SeniorTrainingPill(赠)*1
	tGoldCoinMall_Reward[3320695]["LogForEmoney"] = "1000	243"

	-- ===BoundProtectionPillPack
	-- ===索引: 3320696
	-- ===删除: 3320696,1
	-- ===EMoneyLog: 10000,244
	tGoldCoinMall_Reward[3320696] = {}
	tGoldCoinMall_Reward[3320696]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320696]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320696]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320696]["DeleteItem"][1]["Id"] = 3320696 -- 【库】BoundProtectionPillPack[属性:9]
	tGoldCoinMall_Reward[3320696]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320696]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320696]["RewardItem"][1]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9]【表格】强效护心丹
	tGoldCoinMall_Reward[3320696]["RewardItem"][1]["Attr"] = "0 1" -- SuperProtectionPill*1
	tGoldCoinMall_Reward[3320696]["LogForEmoney"] = "1000	244"

	-- ===BoundTwilightStonePack
	-- ===索引: 3320697
	-- ===删除: 3320697,1
	-- ===EMoneyLog: 10000,245
	tGoldCoinMall_Reward[3320697] = {}
	tGoldCoinMall_Reward[3320697]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320697]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320697]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320697]["DeleteItem"][1]["Id"] = 3320697 -- 【库】BoundTwilightStonePack[属性:9]
	tGoldCoinMall_Reward[3320697]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320697]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320697]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9]【表格】微光星陨石
	tGoldCoinMall_Reward[3320697]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tGoldCoinMall_Reward[3320697]["LogForEmoney"] = "1000	245"

	-- ===BoundBrightStonePack
	-- ===索引: 3320698
	-- ===删除: 3320698,1
	-- ===EMoneyLog: 10000,246
	tGoldCoinMall_Reward[3320698] = {}
	tGoldCoinMall_Reward[3320698]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320698]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320698]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320698]["DeleteItem"][1]["Id"] = 3320698 -- 【库】BoundBrightStonePack[属性:9]
	tGoldCoinMall_Reward[3320698]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320698]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320698]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石
	tGoldCoinMall_Reward[3320698]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tGoldCoinMall_Reward[3320698]["LogForEmoney"] = "1000	246"

	-- ===BoundRadiantStonePack
	-- ===索引: 3320699
	-- ===删除: 3320699,1
	-- ===EMoneyLog: 10000,247
	tGoldCoinMall_Reward[3320699] = {}
	tGoldCoinMall_Reward[3320699]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320699]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320699]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320699]["DeleteItem"][1]["Id"] = 3320699 -- 【库】BoundRadiantStonePack[属性:9]
	tGoldCoinMall_Reward[3320699]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320699]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320699]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9]【表格】晶莹星陨石
	tGoldCoinMall_Reward[3320699]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tGoldCoinMall_Reward[3320699]["LogForEmoney"] = "1000	247"

	-- ===BoundPermanentStonePack
	-- ===索引: 3320700
	-- ===删除: 3320700,1
	-- ===EMoneyLog: 10000,248
	tGoldCoinMall_Reward[3320700] = {}
	tGoldCoinMall_Reward[3320700]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320700]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320700]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320700]["DeleteItem"][1]["Id"] = 3320700 -- 【库】BoundPermanentStonePack[属性:9]
	tGoldCoinMall_Reward[3320700]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320700]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320700]["RewardItem"][1]["Id"] = 723694 -- 【库】PermanentStone[属性:0]【表格】小固化石
	tGoldCoinMall_Reward[3320700]["RewardItem"][1]["Attr"] = "0 1 3" -- PermanentStone(赠)*1
	tGoldCoinMall_Reward[3320700]["LogForEmoney"] = "1000	248"

	-- ===BoundBigPermanentStonePack
	-- ===索引: 3320701
	-- ===删除: 3320701,1
	-- ===EMoneyLog: 10000,249
	tGoldCoinMall_Reward[3320701] = {}
	tGoldCoinMall_Reward[3320701]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320701]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320701]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320701]["DeleteItem"][1]["Id"] = 3320701 -- 【库】BoundBigPermanentStonePack[属性:9]
	tGoldCoinMall_Reward[3320701]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320701]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320701]["RewardItem"][1]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0]【表格】大固化石
	tGoldCoinMall_Reward[3320701]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone(赠)*1
	tGoldCoinMall_Reward[3320701]["LogForEmoney"] = "1000	249"

	-- ===BoundlStarTowerPack
	-- ===索引: 3320702
	-- ===删除: 3320702,1
	-- ===EMoneyLog: 10000,250
	tGoldCoinMall_Reward[3320702] = {}
	tGoldCoinMall_Reward[3320702]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320702]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320702]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320702]["DeleteItem"][1]["Id"] = 3320702 -- 【库】BoundlStarTowerPack[属性:9]
	tGoldCoinMall_Reward[3320702]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320702]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320702]["RewardItem"][1]["Id"] = 202009 -- 【库】StarTower[属性:0]【表格】极品100级混元塔
	tGoldCoinMall_Reward[3320702]["RewardItem"][1]["Attr"] = "0 1 3" -- StarTower(赠)*1
	tGoldCoinMall_Reward[3320702]["LogForEmoney"] = "1000	250"

	-- ===BoundHeavenFanPack
	-- ===索引: 3320703
	-- ===删除: 3320703,1
	-- ===EMoneyLog: 10000,251
	tGoldCoinMall_Reward[3320703] = {}
	tGoldCoinMall_Reward[3320703]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320703]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320703]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320703]["DeleteItem"][1]["Id"] = 3320703 -- 【库】BoundHeavenFanPack[属性:9]
	tGoldCoinMall_Reward[3320703]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320703]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320703]["RewardItem"][1]["Id"] = 201009 -- 【库】HeavenFan[属性:0]【表格】极品100级凌霄扇
	tGoldCoinMall_Reward[3320703]["RewardItem"][1]["Attr"] = "0 1 3" -- HeavenFan(赠)*1
	tGoldCoinMall_Reward[3320703]["LogForEmoney"] = "1000	251"

	-- ===BoundGourdPack
	-- ===索引: 3320704
	-- ===删除: 3320704,1
	-- ===EMoneyLog: 10000,252
	tGoldCoinMall_Reward[3320704] = {}
	tGoldCoinMall_Reward[3320704]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320704]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320704]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320704]["DeleteItem"][1]["Id"] = 3320704 -- 【库】BoundGourdPack[属性:9]
	tGoldCoinMall_Reward[3320704]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320704]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320704]["RewardItem"][1]["Id"] = 2100025 -- 【库】MiraculousGourd[属性:0]【表格】灵宝葫芦
	tGoldCoinMall_Reward[3320704]["RewardItem"][1]["Attr"] = "0 1 3" -- MiraculousGourd(赠)*1
	tGoldCoinMall_Reward[3320704]["LogForEmoney"] = "1000	252"

	-- ===BoundMagicalBottlePack
	-- ===索引: 3320705
	-- ===删除: 3320705,1
	-- ===EMoneyLog: 10000,253
	tGoldCoinMall_Reward[3320705] = {}
	tGoldCoinMall_Reward[3320705]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320705]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320705]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320705]["DeleteItem"][1]["Id"] = 3320705 -- 【库】BoundMagicalBottlePack[属性:9]
	tGoldCoinMall_Reward[3320705]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320705]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320705]["RewardItem"][1]["Id"] = 2100045 -- 【库】MagicalBottle[属性:0]【表格】净水玉瓶
	tGoldCoinMall_Reward[3320705]["RewardItem"][1]["Attr"] = "0 1 3" -- MagicalBottle(赠)*1
	tGoldCoinMall_Reward[3320705]["LogForEmoney"] = "1000	253"

	-- ===BoundSuperWhipPack
	-- ===索引: 3320706
	-- ===删除: 3320706,1
	-- ===EMoneyLog: 10000,254
	tGoldCoinMall_Reward[3320706] = {}
	tGoldCoinMall_Reward[3320706]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320706]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320706]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320706]["DeleteItem"][1]["Id"] = 3320706 -- 【库】BoundSuperWhipPack[属性:9]
	tGoldCoinMall_Reward[3320706]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320706]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320706]["RewardItem"][1]["Id"] = 203009 -- 【库】RidingCrop[属性:0]【表格】极品30级马鞭
	tGoldCoinMall_Reward[3320706]["RewardItem"][1]["Attr"] = "0 1 3" -- RidingCrop(赠)*1
	tGoldCoinMall_Reward[3320706]["LogForEmoney"] = "1000	254"

	-- ===BoundSuperWingPack
	-- ===索引: 3320707
	-- ===删除: 3320707,1
	-- ===EMoneyLog: 10000,255
	tGoldCoinMall_Reward[3320707] = {}
	tGoldCoinMall_Reward[3320707]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320707]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320707]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320707]["DeleteItem"][1]["Id"] = 3320707 -- 【库】BoundSuperWingPack[属性:9]
	tGoldCoinMall_Reward[3320707]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320707]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320707]["RewardItem"][1]["Id"] = 204009 -- 【库】TempestWing[属性:0]【表格】极品100级风雷翅
	tGoldCoinMall_Reward[3320707]["RewardItem"][1]["Attr"] = "0 1 3" -- TempestWing(赠)*1
	tGoldCoinMall_Reward[3320707]["LogForEmoney"] = "1000	255"

	-- ===BoundToughDrillPack
	-- ===索引: 3320708
	-- ===删除: 3320708,1
	-- ===EMoneyLog: 10000,256
	tGoldCoinMall_Reward[3320708] = {}
	tGoldCoinMall_Reward[3320708]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320708]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320708]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320708]["DeleteItem"][1]["Id"] = 3320708 -- 【库】BoundToughDrillPack[属性:9]
	tGoldCoinMall_Reward[3320708]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320708]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320708]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0]【表格】金钢尖钻
	tGoldCoinMall_Reward[3320708]["RewardItem"][1]["Attr"] = "0 1 3" -- ToughDrill(赠)*1
	tGoldCoinMall_Reward[3320708]["LogForEmoney"] = "1000	256"

	-- ===BoundEXPBallPack
	-- ===索引: 3320709
	-- ===删除: 3320709,1
	-- ===EMoneyLog: 10000,257
	tGoldCoinMall_Reward[3320709] = {}
	tGoldCoinMall_Reward[3320709]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320709]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320709]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320709]["DeleteItem"][1]["Id"] = 3320709 -- 【库】BoundEXPBallPack[属性:9]
	tGoldCoinMall_Reward[3320709]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320709]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320709]["RewardItem"][1]["Id"] = 722146 -- 【库】EXPOrb[属性:11]【表格】经验球（EXPBall）
	tGoldCoinMall_Reward[3320709]["RewardItem"][1]["Attr"] = "0 1" -- EXPOrb*1
	tGoldCoinMall_Reward[3320709]["LogForEmoney"] = "1000	257"

	-- ===BoundSuperTortoiseGemPack
	-- ===索引: 3320710
	-- ===删除: 3320710,1
	-- ===EMoneyLog: 10000,258
	tGoldCoinMall_Reward[3320710] = {}
	tGoldCoinMall_Reward[3320710]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320710]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320710]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320710]["DeleteItem"][1]["Id"] = 3320710 -- 【库】BoundSuperTortoiseGemPack[属性:9]
	tGoldCoinMall_Reward[3320710]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320710]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320710]["RewardItem"][1]["Id"] = 700073 -- 【库】TortoiseGem[属性:0]【表格】优质玄元宝石
	tGoldCoinMall_Reward[3320710]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseGem(赠)*1
	tGoldCoinMall_Reward[3320710]["LogForEmoney"] = "1000	258"

	-- ===BoundSuperThunderGemPack
	-- ===索引: 3320711
	-- ===删除: 3320711,1
	-- ===EMoneyLog: 10000,259
	tGoldCoinMall_Reward[3320711] = {}
	tGoldCoinMall_Reward[3320711]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320711]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320711]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320711]["DeleteItem"][1]["Id"] = 3320711 -- 【库】BoundSuperThunderGemPack[属性:9]
	tGoldCoinMall_Reward[3320711]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320711]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320711]["RewardItem"][1]["Id"] = 700103 -- 【库】ThunderGem[属性:0]【表格】优质天怒宝石
	tGoldCoinMall_Reward[3320711]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem(赠)*1
	tGoldCoinMall_Reward[3320711]["LogForEmoney"] = "1000	259"

	-- ===BoundSuperGloryGemPack
	-- ===索引: 3320712
	-- ===删除: 3320712,1
	-- ===EMoneyLog: 10000,260
	tGoldCoinMall_Reward[3320712] = {}
	tGoldCoinMall_Reward[3320712]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320712]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320712]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320712]["DeleteItem"][1]["Id"] = 3320712 -- 【库】BoundSuperGloryGemPack[属性:9]
	tGoldCoinMall_Reward[3320712]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320712]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320712]["RewardItem"][1]["Id"] = 700123 -- 【库】GloryGem[属性:0]【表格】优质地灵宝石
	tGoldCoinMall_Reward[3320712]["RewardItem"][1]["Attr"] = "0 1 3" -- GloryGem(赠)*1
	tGoldCoinMall_Reward[3320712]["LogForEmoney"] = "1000	260"

	-- ===BoundSuperDragonGemPack
	-- ===索引: 3320713
	-- ===删除: 3320713,1
	-- ===EMoneyLog: 10000,261
	tGoldCoinMall_Reward[3320713] = {}
	tGoldCoinMall_Reward[3320713]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320713]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320713]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320713]["DeleteItem"][1]["Id"] = 3320713 -- 【库】BoundSuperDragonGemPack[属性:9]
	tGoldCoinMall_Reward[3320713]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320713]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320713]["RewardItem"][1]["Id"] = 700013 -- 【库】DragonGem[属性:0]【表格】优质龙恨宝石
	tGoldCoinMall_Reward[3320713]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonGem(赠)*1
	tGoldCoinMall_Reward[3320713]["LogForEmoney"] = "1000	261"

	-- ===BoundSuperPhoenixGemPack
	-- ===索引: 3320714
	-- ===删除: 3320714,1
	-- ===EMoneyLog: 10000,262
	tGoldCoinMall_Reward[3320714] = {}
	tGoldCoinMall_Reward[3320714]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320714]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320714]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320714]["DeleteItem"][1]["Id"] = 3320714 -- 【库】BoundSuperPhoenixGemPack[属性:9]
	tGoldCoinMall_Reward[3320714]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320714]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320714]["RewardItem"][1]["Id"] = 700003 -- 【库】PhoenixGem[属性:0]【表格】优质凤鸣宝石
	tGoldCoinMall_Reward[3320714]["RewardItem"][1]["Attr"] = "0 1 3" -- PhoenixGem(赠)*1
	tGoldCoinMall_Reward[3320714]["LogForEmoney"] = "1000	262"

	-- ===BoundExemptionTokenPack
	-- ===索引: 3320715
	-- ===删除: 3320715,1
	-- ===EMoneyLog: 10000,263
	tGoldCoinMall_Reward[3320715] = {}
	tGoldCoinMall_Reward[3320715]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320715]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320715]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320715]["DeleteItem"][1]["Id"] = 3320715 -- 【库】BoundExemptionTokenPack[属性:9]
	tGoldCoinMall_Reward[3320715]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320715]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320715]["RewardItem"][1]["Id"] = 723701 -- 【库】ExemptionToken[属性:0]【表格】免试金牌
	tGoldCoinMall_Reward[3320715]["RewardItem"][1]["Attr"] = "0 1 3" -- ExemptionToken(赠)*1
	tGoldCoinMall_Reward[3320715]["LogForEmoney"] = "1000	263"

	-- ===BoundLotteryTicketPack
	-- ===索引: 3320716
	-- ===删除: 3320716,1
	-- ===EMoneyLog: 10000,264
	tGoldCoinMall_Reward[3320716] = {}
	tGoldCoinMall_Reward[3320716]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320716]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320716]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320716]["DeleteItem"][1]["Id"] = 3320716 -- 【库】BoundLotteryTicketPack[属性:9]
	tGoldCoinMall_Reward[3320716]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320716]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320716]["RewardItem"][1]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9]【表格】小抽奖券*1
	tGoldCoinMall_Reward[3320716]["RewardItem"][1]["Attr"] = "0 1" -- SmallLotteryTicket*1
	tGoldCoinMall_Reward[3320716]["LogForEmoney"] = "1000	264"

	-- ===BoundMeteorPack
	-- ===索引: 3320717
	-- ===删除: 3320717,1
	-- ===EMoneyLog: 10000,265
	tGoldCoinMall_Reward[3320717] = {}
	tGoldCoinMall_Reward[3320717]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320717]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320717]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320717]["DeleteItem"][1]["Id"] = 3320717 -- 【库】BoundMeteorPack[属性:9]
	tGoldCoinMall_Reward[3320717]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320717]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320717]["RewardItem"][1]["Id"] = 1088001 -- 【库】Meteor[属性:0]【表格】流星
	tGoldCoinMall_Reward[3320717]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor(赠)*1
	tGoldCoinMall_Reward[3320717]["LogForEmoney"] = "1000	265"

	-- ===BoundDragonBallPack
	-- ===索引: 3320718
	-- ===删除: 3320718,1
	-- ===EMoneyLog: 10000,266
	tGoldCoinMall_Reward[3320718] = {}
	tGoldCoinMall_Reward[3320718]["LogId"] = 12001337
	tGoldCoinMall_Reward[3320718]["DeleteItem"] = {}
	tGoldCoinMall_Reward[3320718]["DeleteItem"][1] = {}
	tGoldCoinMall_Reward[3320718]["DeleteItem"][1]["Id"] = 3320718 -- 【库】BoundDragonBallPack[属性:9]
	tGoldCoinMall_Reward[3320718]["RewardItem"] = {}
	tGoldCoinMall_Reward[3320718]["RewardItem"][1] = {}
	tGoldCoinMall_Reward[3320718]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tGoldCoinMall_Reward[3320718]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tGoldCoinMall_Reward[3320718]["LogForEmoney"] = "1000	266"
	
---------------------------------------------逻辑--------------------------------------------------

function GoldCoinMall_UseBagItem(nItemId)
	RewardTemplate_UseItemAndMsg(tGoldCoinMall_Reward[nItemId])
	local nUserId = Get_UserId()
	local sEmoney = tGoldCoinMall_Reward[nItemId]["LogForEmoney"]
	--天石log 
	sEmoney = string.format("%s	0	0	1	",sEmoney)
	--sEmoney = string.format("%s	0	0	%d	",sEmoney,nValues)
	Sys_SaveEmoneyBuy(sEmoney,nUserId)
end

---------------------------------------------npc模板----------------------------------------------------


---------------------------------------------物品模板----------------------------------------------------


--使用礼包

for i=3320680,3320718 do
	tItem[i] =  tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		GoldCoinMall_UseBagItem(nItemId)
	end
end


