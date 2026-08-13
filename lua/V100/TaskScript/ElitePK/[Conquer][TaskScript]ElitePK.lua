----------------------------------------------------------------------------
--Name:		[征服][功能脚本]精英PK赛礼包.lua
--Purpose:	精英PK赛礼包
--Creator: 	郑鋆
--Created:	2016/08/05
----------------------------------------------------------------------------


-- 命名前缀
-- ElitePK_

-- 参与礼包
-- 720713	精英PK赛礼包		精英PK赛	每参加一场精英PK赛所获得的奖品，右键点击使用，可获得60分钟经验奖励。	9240700

-- 100级以下
-- 720714	良品钧天武尊礼包	精英PK赛	良品礼包：在精英PK赛中，获得100级以下组别PK竞技头名的侠士所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。	9175650
-- 720718	良品御刃武魂礼包	精英PK赛	良品礼包：在精英PK赛中，获得100级以下组别PK竞技亚军的侠士所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。	9176280
-- 720722	良品苍岚武贲礼包	精英PK赛	良品礼包：在精英PK赛中，获得100级以下组别PK竞技季军的侠士所赢取的奖赏，内含丰厚奖励。右键点击打开。	9176350
-- 720726	良品精装豪侠礼包	精英PK赛	良品礼包：乃是在100级以下组别精英PK赛中，入围八强决赛的武林豪侠所荣获的礼包，内含丰厚奖励。右键点击打开。	9176400

-- 100-119
-- 720715	上品钧天武尊礼包	精英PK赛	上品礼包：在精英PK赛中，获得100—119级别PK竞技头名的侠士所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。	9180820
-- 720719	上品御刃武魂礼包	精英PK赛	上品礼包：在精英PK赛中，获得100—119级别PK竞技亚军的侠士所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。	9180830
-- 720723	上品苍岚武贲礼包	精英PK赛	上品礼包：在精英PK赛中，获得100—119级别PK竞技季军的侠士所赢取的奖赏，内含丰厚奖励。右键点击打开。	9180840
-- 720727	上品精装豪侠礼包	精英PK赛	上品礼包：乃是在100—119级别精英PK赛中，入围八强决赛的武林豪侠所荣获的礼包，内含丰厚奖励。右键点击打开。	9180850

-- 120-129
-- 720716	优质钧天武尊礼包	精英PK赛	优质礼包：在精英PK赛中，获得120—129级别PK竞技头名的侠士所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。	9180870
-- 720720	优质御刃武魂礼包	精英PK赛	优质礼包：在精英PK赛中，获得120—129级别PK竞技亚军的侠士所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。	9180880
-- 720724	优质苍岚武贲礼包	精英PK赛	优质礼包：在精英PK赛中，获得120—129级别PK竞技季军的侠士所赢取的奖赏，内含丰厚奖励。右键点击打开。	9180890
-- 720728	优质精装豪侠礼包	精英PK赛	优质礼包：乃是在120—129级别精英PK赛中，入围八强决赛的武林豪侠所荣获的礼包，内含丰厚奖励。右键点击打开。	9180900

-- 130级以上
-- 720717	极品钧天武尊礼包	精英PK赛	极品礼包：在精英PK赛中，获得130级以上组别PK竞技头名的侠士所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。	9176450
-- 720721	极品御刃武魂礼包	精英PK赛	极品礼包：在精英PK赛中，获得130级以上组别PK竞技亚军的侠士所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。	9176500
-- 720725	极品苍岚武贲礼包	精英PK赛	极品礼包：在精英PK赛中，获得130级以上组别PK竞技季军的侠士所赢取的奖赏，内含丰厚奖励。右键点击打开。	9176550
-- 720729	极品精装豪侠礼包	精英PK赛	极品礼包：乃是在130级以上精英PK赛中，入围八强决赛的武林豪侠所荣获的礼包，内含丰厚奖励。右键点击打开。	9180800					

--职业PK赛，物品接lua
-- 3307012	Refined职业PK赛冠军礼盒	职业PK赛	礼包：等级组1-99
-- 3307013	Refined职业PK赛冠军礼盒	职业PK赛	礼包：等级组100-119
-- 3307014	Refined职业PK赛冠军礼盒	职业PK赛	礼包：等级组120-129
-- 3307015	Refined职业PK赛冠军礼盒	职业PK赛	礼包：等级组130+

local tElitePK_Constant = {}
	-- 不能获得经验地图
	tElitePK_Constant["NoExp"] = 1099511627776
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]
local tElitePK_Item = {}
local tElitePK_Item_NoGift = {}
	-- 100级以下
	-- 720714	良品钧天武尊礼包
	tElitePK_Item[720714] = {}
	tElitePK_Item[720714]["Space"] = 3
	tElitePK_Item[720714]["EmoneyTop"] = 999999785
	tElitePK_Item[720714]["RewardNoNeedTip"] = 1
	tElitePK_Item[720714]["LogId"] = 10000156
	tElitePK_Item[720714]["AddExp"] = 1
	tElitePK_Item[720714]["Level"] = 100
	tElitePK_Item[720714]["Stc"] = {}
	tElitePK_Item[720714]["Stc"]["EventType"] = 100
	tElitePK_Item[720714]["Stc"]["DataType"] = 1
	tElitePK_Item[720714]["Stc"]["Data"] = 1
	tElitePK_Item[720714]["RewardItem"] = {}
	tElitePK_Item[720714]["RewardItem"][1] = {}
	tElitePK_Item[720714]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720714]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720714]["RewardItem"][2] = {}
	tElitePK_Item[720714]["RewardItem"][2]["Id"] = 3310761 -- 明亮星陨石礼包
	tElitePK_Item[720714]["RewardItem"][2]["Attr"] = "0 1" 
	tElitePK_Item[720714]["RewardItem"][3] = {}
	tElitePK_Item[720714]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720714]["RewardItem"][3]["Attr"] = "0 10 3"
	tElitePK_Item[720714]["RewardEMoney"] = {}
	tElitePK_Item[720714]["RewardEMoney"]["Value"] = 215
	tElitePK_Item[720714]["RewardExpTime"] = {}
	tElitePK_Item[720714]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720714]["RewardStrengthValue"] = {}
	tElitePK_Item[720714]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_Item[720714]["RewardEffect"] = {}
	tElitePK_Item[720714]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720714]["ProcessTask"] = 38
	tElitePK_Item[720714]["Condition"] = 0
	tElitePK_Item[720714]["Value"] = 1
	tElitePK_Item[720714]["AddStrengthValue"] = 1000

    -- 720718	良品御刃武魂礼包
	tElitePK_Item[720718] = {}
	tElitePK_Item[720718]["Space"] = 3
	tElitePK_Item[720718]["RewardNoNeedTip"] = 1
	tElitePK_Item[720718]["LogId"] = 10000156
	tElitePK_Item[720718]["AddExp"] = 0.5
	tElitePK_Item[720718]["Level"] = 100
	tElitePK_Item[720718]["Stc"] = {}
	tElitePK_Item[720718]["Stc"]["EventType"] = 100
	tElitePK_Item[720718]["Stc"]["DataType"] = 1
	tElitePK_Item[720718]["Stc"]["Data"] = 1
	tElitePK_Item[720718]["RewardItem"] = {}
	tElitePK_Item[720718]["RewardItem"][1] = {}
	tElitePK_Item[720718]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720718]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720718]["RewardItem"][2] = {}
	tElitePK_Item[720718]["RewardItem"][2]["Id"] = 3307068 -- 8颗微光星陨石礼包
	tElitePK_Item[720718]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720718]["RewardItem"][3] = {}
	tElitePK_Item[720718]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720718]["RewardItem"][3]["Attr"] = "0 8 3"
	tElitePK_Item[720718]["RewardExpTime"] = {}
	tElitePK_Item[720718]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720718]["RewardStrengthValue"] = {}
	tElitePK_Item[720718]["RewardStrengthValue"]["Value"] = 800
	tElitePK_Item[720718]["RewardEffect"] = {}
	tElitePK_Item[720718]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720718]["ProcessTask"] = 38
	tElitePK_Item[720718]["Condition"] = 0
	tElitePK_Item[720718]["Value"] = 2
	tElitePK_Item[720718]["AddStrengthValue"] = 800

    -- 720722	良品苍岚武贲礼包
	tElitePK_Item[720722] = {}
	tElitePK_Item[720722]["Space"] = 3
	tElitePK_Item[720722]["RewardNoNeedTip"] = 1
	tElitePK_Item[720722]["LogId"] = 10000156
	tElitePK_Item[720722]["AddExp"] = 0.3
	tElitePK_Item[720722]["Level"] = 100
	tElitePK_Item[720722]["Stc"] = {}
	tElitePK_Item[720722]["Stc"]["EventType"] = 100
	tElitePK_Item[720722]["Stc"]["DataType"] = 1
	tElitePK_Item[720722]["Stc"]["Data"] = 1
	tElitePK_Item[720722]["RewardItem"] = {}
	tElitePK_Item[720722]["RewardItem"][1] = {}
	tElitePK_Item[720722]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720722]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720722]["RewardItem"][2] = {}
	tElitePK_Item[720722]["RewardItem"][2]["Id"] = 3306979 -- 5颗微光星陨石礼包
	tElitePK_Item[720722]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720722]["RewardItem"][3] = {}
	tElitePK_Item[720722]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720722]["RewardItem"][3]["Attr"] = "0 5 3"
	tElitePK_Item[720722]["RewardExpTime"] = {}
	tElitePK_Item[720722]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720722]["RewardStrengthValue"] = {}
	tElitePK_Item[720722]["RewardStrengthValue"]["Value"] = 500
	tElitePK_Item[720722]["RewardEffect"] = {}
	tElitePK_Item[720722]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720722]["ProcessTask"] = 38
	tElitePK_Item[720722]["Condition"] = 0
	tElitePK_Item[720722]["Value"] = 3
	tElitePK_Item[720722]["AddStrengthValue"] = 500

    -- 720726	良品精装豪侠礼包
	tElitePK_Item[720726] = {}
	tElitePK_Item[720726]["Space"] = 3
	tElitePK_Item[720726]["RewardNoNeedTip"] = 1
	tElitePK_Item[720726]["LogId"] = 10000156
	tElitePK_Item[720726]["AddExp"] = 0.15
	tElitePK_Item[720726]["Level"] = 100
	tElitePK_Item[720726]["Stc"] = {}
	tElitePK_Item[720726]["Stc"]["EventType"] = 100
	tElitePK_Item[720726]["Stc"]["DataType"] = 1
	tElitePK_Item[720726]["Stc"]["Data"] = 1
	tElitePK_Item[720726]["RewardItem"] = {}
	tElitePK_Item[720726]["RewardItem"][1] = {}
	tElitePK_Item[720726]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720726]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720726]["RewardItem"][2] = {}
	tElitePK_Item[720726]["RewardItem"][2]["Id"] = 3306978 -- 3颗微光星陨石礼包
	tElitePK_Item[720726]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720726]["RewardItem"][3] = {}
	tElitePK_Item[720726]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720726]["RewardItem"][3]["Attr"] = "0 3 3"
	tElitePK_Item[720726]["RewardExpTime"] = {}
	tElitePK_Item[720726]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720726]["RewardStrengthValue"] = {}
	tElitePK_Item[720726]["RewardStrengthValue"]["Value"] = 300
	tElitePK_Item[720726]["RewardEffect"] = {}
	tElitePK_Item[720726]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720726]["ProcessTask"] = 38
	tElitePK_Item[720726]["Condition"] = 0
	tElitePK_Item[720726]["Value"] = 8
	tElitePK_Item[720726]["AddStrengthValue"] = 300

	-- 100-119
	-- 720715	上品钧天武尊礼包
	tElitePK_Item[720715] = {}
	tElitePK_Item[720715]["Space"] = 3
	tElitePK_Item[720715]["EmoneyTop"] = 999999785
	tElitePK_Item[720715]["RewardNoNeedTip"] = 1
	tElitePK_Item[720715]["LogId"] = 10000156
	tElitePK_Item[720715]["AddExp"] = 1
	tElitePK_Item[720715]["Level"] = 120
	tElitePK_Item[720715]["Stc"] = {}
	tElitePK_Item[720715]["Stc"]["EventType"] = 100
	tElitePK_Item[720715]["Stc"]["DataType"] = 1
	tElitePK_Item[720715]["Stc"]["Data"] = 1
	tElitePK_Item[720715]["RewardItem"] = {}
	tElitePK_Item[720715]["RewardItem"][1] = {}
	tElitePK_Item[720715]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720715]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720715]["RewardItem"][2] = {}
	tElitePK_Item[720715]["RewardItem"][2]["Id"] = 3310761 -- 明亮星陨石礼包
	tElitePK_Item[720715]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720715]["RewardItem"][3] = {}
	tElitePK_Item[720715]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720715]["RewardItem"][3]["Attr"] = "0 10 3"
	tElitePK_Item[720715]["RewardExpTime"] = {}
	tElitePK_Item[720715]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720715]["RewardStrengthValue"] = {}
	tElitePK_Item[720715]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_Item[720715]["RewardEMoney"] = {}
	tElitePK_Item[720715]["RewardEMoney"]["Value"] = 215
	tElitePK_Item[720715]["RewardEffect"] = {}
	tElitePK_Item[720715]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720715]["ProcessTask"] = 38
	tElitePK_Item[720715]["Condition"] = 0
	tElitePK_Item[720715]["Value"] = 1
	tElitePK_Item[720715]["AddStrengthValue"] = 1000

	-- 720719	上品御刃武魂礼包
	tElitePK_Item[720719] = {}
	tElitePK_Item[720719]["Space"] = 3
	tElitePK_Item[720719]["RewardNoNeedTip"] = 1
	tElitePK_Item[720719]["LogId"] = 10000156
	tElitePK_Item[720719]["AddExp"] = 0.5
	tElitePK_Item[720719]["Level"] = 120
	tElitePK_Item[720719]["Stc"] = {}
	tElitePK_Item[720719]["Stc"]["EventType"] = 100
	tElitePK_Item[720719]["Stc"]["DataType"] = 1
	tElitePK_Item[720719]["Stc"]["Data"] = 1
	tElitePK_Item[720719]["RewardItem"] = {}
	tElitePK_Item[720719]["RewardItem"][1] = {}
	tElitePK_Item[720719]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720719]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720719]["RewardItem"][2] = {}
	tElitePK_Item[720719]["RewardItem"][2]["Id"] = 3307068 -- 八颗微光星陨石礼包
	tElitePK_Item[720719]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720719]["RewardItem"][3] = {}
	tElitePK_Item[720719]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720719]["RewardItem"][3]["Attr"] = "0 8 3"
	tElitePK_Item[720719]["RewardExpTime"] = {}
	tElitePK_Item[720719]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720719]["RewardStrengthValue"] = {}
	tElitePK_Item[720719]["RewardStrengthValue"]["Value"] = 800
	tElitePK_Item[720719]["RewardEffect"] = {}
	tElitePK_Item[720719]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720719]["ProcessTask"] = 38
	tElitePK_Item[720719]["Condition"] = 0
	tElitePK_Item[720719]["Value"] = 2
	tElitePK_Item[720719]["AddStrengthValue"] = 800

	-- 720723	上品苍岚武贲礼包
	tElitePK_Item[720723] = {}
	tElitePK_Item[720723]["Space"] = 3
	tElitePK_Item[720723]["RewardNoNeedTip"] = 1
	tElitePK_Item[720723]["LogId"] = 10000156
	tElitePK_Item[720723]["AddExp"] = 0.3
	tElitePK_Item[720723]["Level"] = 120
	tElitePK_Item[720723]["Stc"] = {}
	tElitePK_Item[720723]["Stc"]["EventType"] = 100
	tElitePK_Item[720723]["Stc"]["DataType"] = 1
	tElitePK_Item[720723]["Stc"]["Data"] = 1
	tElitePK_Item[720723]["RewardItem"] = {}
	tElitePK_Item[720723]["RewardItem"][1] = {}
	tElitePK_Item[720723]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720723]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720723]["RewardItem"][2] = {}
	tElitePK_Item[720723]["RewardItem"][2]["Id"] = 3306979 -- 五颗微光星陨石礼包
	tElitePK_Item[720723]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720723]["RewardItem"][3] = {}
	tElitePK_Item[720723]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720723]["RewardItem"][3]["Attr"] = "0 5 3"
	tElitePK_Item[720723]["RewardExpTime"] = {}
	tElitePK_Item[720723]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720723]["RewardStrengthValue"] = {}
	tElitePK_Item[720723]["RewardStrengthValue"]["Value"] = 500
	tElitePK_Item[720723]["RewardEffect"] = {}
	tElitePK_Item[720723]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720723]["ProcessTask"] = 38
	tElitePK_Item[720723]["Condition"] = 0
	tElitePK_Item[720723]["Value"] = 3
	tElitePK_Item[720723]["AddStrengthValue"] = 500

	-- 720727	上品精装豪侠礼包
	tElitePK_Item[720727] = {}
	tElitePK_Item[720727]["Space"] = 3
	tElitePK_Item[720727]["RewardNoNeedTip"] = 1
	tElitePK_Item[720727]["LogId"] = 10000156
	tElitePK_Item[720727]["AddExp"] = 0.15
	tElitePK_Item[720727]["Level"] = 120
	tElitePK_Item[720727]["Stc"] = {}
	tElitePK_Item[720727]["Stc"]["EventType"] = 100
	tElitePK_Item[720727]["Stc"]["DataType"] = 1
	tElitePK_Item[720727]["Stc"]["Data"] = 1
	tElitePK_Item[720727]["RewardItem"] = {}
	tElitePK_Item[720727]["RewardItem"][1] = {}
	tElitePK_Item[720727]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720727]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720727]["RewardItem"][2] = {}
	tElitePK_Item[720727]["RewardItem"][2]["Id"] = 3306978 -- 三颗微光星陨石礼包
	tElitePK_Item[720727]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720727]["RewardItem"][3] = {}
	tElitePK_Item[720727]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720727]["RewardItem"][3]["Attr"] = "0 3 3"
	tElitePK_Item[720727]["RewardExpTime"] = {}
	tElitePK_Item[720727]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720727]["RewardStrengthValue"] = {}
	tElitePK_Item[720727]["RewardStrengthValue"]["Value"] = 300
	tElitePK_Item[720727]["RewardEffect"] = {}
	tElitePK_Item[720727]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720727]["ProcessTask"] = 38
	tElitePK_Item[720727]["Condition"] = 0
	tElitePK_Item[720727]["Value"] = 8
	tElitePK_Item[720727]["AddStrengthValue"] = 300

	-- 120-129
	-- 720716	优质钧天武尊礼包
	tElitePK_Item[720716] = {}
	tElitePK_Item[720716]["Space"] = 3
	tElitePK_Item[720716]["EmoneyTop"] = 999999785
	tElitePK_Item[720716]["RewardNoNeedTip"] = 1
	tElitePK_Item[720716]["LogId"] = 10000156
	tElitePK_Item[720716]["AddExp"] = 1
	tElitePK_Item[720716]["Level"] = 130
	tElitePK_Item[720716]["Stc"] = {}
	tElitePK_Item[720716]["Stc"]["EventType"] = 100
	tElitePK_Item[720716]["Stc"]["DataType"] = 1
	tElitePK_Item[720716]["Stc"]["Data"] = 1
	tElitePK_Item[720716]["RewardItem"] = {}
	tElitePK_Item[720716]["RewardItem"][1] = {}
	tElitePK_Item[720716]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720716]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720716]["RewardItem"][2] = {}
	tElitePK_Item[720716]["RewardItem"][2]["Id"] = 3310761 -- 明亮星陨石礼包
	tElitePK_Item[720716]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720716]["RewardItem"][3] = {}
	tElitePK_Item[720716]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720716]["RewardItem"][3]["Attr"] = "0 10 3"
	tElitePK_Item[720716]["RewardEMoney"] = {}
	tElitePK_Item[720716]["RewardEMoney"]["Value"] = 215
	tElitePK_Item[720716]["RewardExpTime"] = {}
	tElitePK_Item[720716]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720716]["RewardStrengthValue"] = {}
	tElitePK_Item[720716]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_Item[720716]["RewardEffect"] = {}
	tElitePK_Item[720716]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720716]["ProcessTask"] = 38
	tElitePK_Item[720716]["Condition"] = 0
	tElitePK_Item[720716]["Value"] = 1
	tElitePK_Item[720716]["AddStrengthValue"] = 1000
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720716]["PrivilegeGlobal"] = {}
	tElitePK_Item[720716]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720716]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720716]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720716]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720716]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720716]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720716]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720716]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720716]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 3"

	-- 720720	优质御刃武魂礼包
	tElitePK_Item[720720] = {}
	tElitePK_Item[720720]["Space"] = 3
	tElitePK_Item[720720]["RewardNoNeedTip"] = 1
	tElitePK_Item[720720]["LogId"] = 10000156
	tElitePK_Item[720720]["AddExp"] = 0.5
	tElitePK_Item[720720]["Level"] = 130
	tElitePK_Item[720720]["Stc"] = {}
	tElitePK_Item[720720]["Stc"]["EventType"] = 100
	tElitePK_Item[720720]["Stc"]["DataType"] = 1
	tElitePK_Item[720720]["Stc"]["Data"] = 1
	tElitePK_Item[720720]["RewardItem"] = {}
	tElitePK_Item[720720]["RewardItem"][1] = {}
	tElitePK_Item[720720]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720720]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720720]["RewardItem"][2] = {}
	tElitePK_Item[720720]["RewardItem"][2]["Id"] = 3307068 -- 八颗微光星陨石礼包
	tElitePK_Item[720720]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720720]["RewardItem"][3] = {}
	tElitePK_Item[720720]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720720]["RewardItem"][3]["Attr"] = "0 8 3"
	tElitePK_Item[720720]["RewardExpTime"] = {}
	tElitePK_Item[720720]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720720]["RewardStrengthValue"] = {}
	tElitePK_Item[720720]["RewardStrengthValue"]["Value"] = 800
	tElitePK_Item[720720]["RewardEffect"] = {}
	tElitePK_Item[720720]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720720]["ProcessTask"] = 38
	tElitePK_Item[720720]["Condition"] = 0
	tElitePK_Item[720720]["Value"] = 2
	tElitePK_Item[720720]["AddStrengthValue"] = 800
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720720]["PrivilegeGlobal"] = {}
	tElitePK_Item[720720]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720720]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720720]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720720]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720720]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720720]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720720]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720720]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720720]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 2"

	-- 720724	优质苍岚武贲礼包
	tElitePK_Item[720724] = {}
	tElitePK_Item[720724]["Space"] = 3
	tElitePK_Item[720724]["RewardNoNeedTip"] = 1
	tElitePK_Item[720724]["LogId"] = 10000156
	tElitePK_Item[720724]["AddExp"] = 0.3
	tElitePK_Item[720724]["Level"] = 130
	tElitePK_Item[720724]["Stc"] = {}
	tElitePK_Item[720724]["Stc"]["EventType"] = 100
	tElitePK_Item[720724]["Stc"]["DataType"] = 1
	tElitePK_Item[720724]["Stc"]["Data"] = 1
	tElitePK_Item[720724]["RewardItem"] = {}
	tElitePK_Item[720724]["RewardItem"][1] = {}
	tElitePK_Item[720724]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720724]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720724]["RewardItem"][2] = {}
	tElitePK_Item[720724]["RewardItem"][2]["Id"] = 3306979 -- 五颗微光星陨石礼包
	tElitePK_Item[720724]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720724]["RewardItem"][3] = {}
	tElitePK_Item[720724]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720724]["RewardItem"][3]["Attr"] = "0 5 3"
	tElitePK_Item[720724]["RewardExpTime"] = {}
	tElitePK_Item[720724]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720724]["RewardStrengthValue"] = {}
	tElitePK_Item[720724]["RewardStrengthValue"]["Value"] = 500
	tElitePK_Item[720724]["RewardEffect"] = {}
	tElitePK_Item[720724]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720724]["ProcessTask"] = 38
	tElitePK_Item[720724]["Condition"] = 0
	tElitePK_Item[720724]["Value"] = 3
	tElitePK_Item[720724]["AddStrengthValue"] = 500
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720724]["PrivilegeGlobal"] = {}
	tElitePK_Item[720724]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720724]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720724]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720724]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720724]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720724]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720724]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720724]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720724]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 1"

	-- 720728	优质精装豪侠礼包
	tElitePK_Item[720728] = {}
	tElitePK_Item[720728]["Space"] = 3
	tElitePK_Item[720728]["RewardNoNeedTip"] = 1
	tElitePK_Item[720728]["LogId"] = 10000156
	tElitePK_Item[720728]["AddExp"] = 0.15
	tElitePK_Item[720728]["Level"] = 130
	tElitePK_Item[720728]["Stc"] = {}
	tElitePK_Item[720728]["Stc"]["EventType"] = 100
	tElitePK_Item[720728]["Stc"]["DataType"] = 1
	tElitePK_Item[720728]["Stc"]["Data"] = 1
	tElitePK_Item[720728]["RewardItem"] = {}
	tElitePK_Item[720728]["RewardItem"][1] = {}
	tElitePK_Item[720728]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_Item[720728]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720728]["RewardItem"][2] = {}
	tElitePK_Item[720728]["RewardItem"][2]["Id"] = 3306978 -- 三颗微光星陨石礼包
	tElitePK_Item[720728]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720728]["RewardItem"][3] = {}
	tElitePK_Item[720728]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_Item[720728]["RewardItem"][3]["Attr"] = "0 3 3"
	tElitePK_Item[720728]["RewardExpTime"] = {}
	tElitePK_Item[720728]["RewardExpTime"]["Value"] = 0
	tElitePK_Item[720728]["RewardStrengthValue"] = {}
	tElitePK_Item[720728]["RewardStrengthValue"]["Value"] = 300
	tElitePK_Item[720728]["RewardEffect"] = {}
	tElitePK_Item[720728]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720728]["ProcessTask"] = 38
	tElitePK_Item[720728]["Condition"] = 0
	tElitePK_Item[720728]["Value"] = 8
	tElitePK_Item[720728]["AddStrengthValue"] = 300

	-- 130级以上
	-- 720717	极品钧天武尊礼包
	tElitePK_Item[720717] = {}
	tElitePK_Item[720717]["Space"] = 4
	tElitePK_Item[720717]["EmoneyTop"] = 999999355
	tElitePK_Item[720717]["RewardNoNeedTip"] = 1
	tElitePK_Item[720717]["LogId"] = 10000156
	tElitePK_Item[720717]["Stc"] = {}
	tElitePK_Item[720717]["Stc"]["EventType"] = 100
	tElitePK_Item[720717]["Stc"]["DataType"] = 1
	tElitePK_Item[720717]["Stc"]["Data"] = 5
	tElitePK_Item[720717]["RewardItem"] = {}
	tElitePK_Item[720717]["RewardItem"][1] = {}
	tElitePK_Item[720717]["RewardItem"][1]["Id"] = 720049 -- 1个+6变幻骑宠礼包 
	tElitePK_Item[720717]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item[720717]["RewardItem"][2] = {}
	tElitePK_Item[720717]["RewardItem"][2]["Id"] = 3004247 -- P7武器神魂可选包
	tElitePK_Item[720717]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720717]["RewardItem"][3] = {}
	tElitePK_Item[720717]["RewardItem"][3]["Id"] = 3306981 -- 5个明亮星陨石礼包
	tElitePK_Item[720717]["RewardItem"][3]["Attr"] = "0 1"
	tElitePK_Item[720717]["RewardItem"][4] = {}
	tElitePK_Item[720717]["RewardItem"][4]["Id"] = 3311759 -- 神纹源晶赠*3
	tElitePK_Item[720717]["RewardItem"][4]["Attr"] = "0 3 3"
	tElitePK_Item[720717]["RewardEMoney"] = {}
	tElitePK_Item[720717]["RewardEMoney"]["Value"] = 645
	tElitePK_Item[720717]["RewardStrengthValue"] = {}
	tElitePK_Item[720717]["RewardStrengthValue"]["Value"] = 3000
	tElitePK_Item[720717]["RewardEffect"] = {}
	tElitePK_Item[720717]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720717]["ProcessTask"] = 38
	tElitePK_Item[720717]["Condition"] = 0
	tElitePK_Item[720717]["Value"] = 1
	tElitePK_Item[720717]["Global"] = {}
	tElitePK_Item[720717]["Global"]["Id"] = 50527
	tElitePK_Item[720717]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item[720717]["Global"]["Pos"] = 0
	tElitePK_Item[720717]["Global"]["Data"] = 1
	tElitePK_Item[720717]["Global"]["Space"] = 1
	tElitePK_Item[720717]["Global"]["RewardItem"] = {}
	tElitePK_Item[720717]["Global"]["RewardItem"][1] = {}
	tElitePK_Item[720717]["Global"]["RewardItem"][1]["Id"] = 3004089
	tElitePK_Item[720717]["Global"]["RewardItem"][1]["Attr"] = "0 1"
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720717]["PrivilegeGlobal"] = {}
	tElitePK_Item[720717]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720717]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720717]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720717]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720717]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720717]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720717]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720717]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720717]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 7"
	-- 720717	极品钧天武尊礼包激情服
	tElitePK_Item_NoGift[720717] = {}
	tElitePK_Item_NoGift[720717]["Space"] = 3
	tElitePK_Item_NoGift[720717]["EmoneyTop"] = 999999355
	tElitePK_Item_NoGift[720717]["RewardNoNeedTip"] = 1
	tElitePK_Item_NoGift[720717]["LogId"] = 10000156
	tElitePK_Item_NoGift[720717]["Stc"] = {}
	tElitePK_Item_NoGift[720717]["Stc"]["EventType"] = 100
	tElitePK_Item_NoGift[720717]["Stc"]["DataType"] = 1
	tElitePK_Item_NoGift[720717]["Stc"]["Data"] = 5
	tElitePK_Item_NoGift[720717]["RewardItem"] = {}
	tElitePK_Item_NoGift[720717]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720717]["RewardItem"][1]["Id"] = 720049 -- 1个+6变幻骑宠礼包 
	tElitePK_Item_NoGift[720717]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_Item_NoGift[720717]["RewardItem"][2] = {}
	tElitePK_Item_NoGift[720717]["RewardItem"][2]["Id"] = 720128 -- 清心符
	tElitePK_Item_NoGift[720717]["RewardItem"][2]["Attr"] = "0 5 3"
	tElitePK_Item_NoGift[720717]["RewardItem"][3] = {}
	tElitePK_Item_NoGift[720717]["RewardItem"][3]["Id"] = 3306981 -- 5个明亮星陨石礼包
	tElitePK_Item_NoGift[720717]["RewardItem"][3]["Attr"] = "0 1"
	tElitePK_Item_NoGift[720717]["RewardEMoney"] = {}
	tElitePK_Item_NoGift[720717]["RewardEMoney"]["Value"] = 645
	tElitePK_Item_NoGift[720717]["RewardStrengthValue"] = {}
	tElitePK_Item_NoGift[720717]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_Item_NoGift[720717]["RewardEffect"] = {}
	tElitePK_Item_NoGift[720717]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item_NoGift[720717]["ProcessTask"] = 38
	tElitePK_Item_NoGift[720717]["Condition"] = 0
	tElitePK_Item_NoGift[720717]["Value"] = 1
	tElitePK_Item_NoGift[720717]["Global"] = {}
	tElitePK_Item_NoGift[720717]["Global"]["Id"] = 50527
	tElitePK_Item_NoGift[720717]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item_NoGift[720717]["Global"]["Pos"] = 0
	tElitePK_Item_NoGift[720717]["Global"]["Data"] = 1
	tElitePK_Item_NoGift[720717]["Global"]["Space"] = 1
	tElitePK_Item_NoGift[720717]["Global"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720717]["Global"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720717]["Global"]["RewardItem"][1]["Id"] = 3004089
	tElitePK_Item_NoGift[720717]["Global"]["RewardItem"][1]["Attr"] = "0 1"
	-- 新服福利活动新增额外奖励
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"] = {}
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item_NoGift[720717]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 7"

	-- 720721	极品御刃武魂礼包
	tElitePK_Item[720721] = {}
	tElitePK_Item[720721]["Space"] = 3
	tElitePK_Item[720721]["EmoneyTop"] = 999999785
	tElitePK_Item[720721]["RewardNoNeedTip"] = 1
	tElitePK_Item[720721]["LogId"] = 10000156
	tElitePK_Item[720721]["Stc"] = {}
	tElitePK_Item[720721]["Stc"]["EventType"] = 100
	tElitePK_Item[720721]["Stc"]["DataType"] = 1
	tElitePK_Item[720721]["Stc"]["Data"] = 3
	tElitePK_Item[720721]["RewardItem"] = {}
	tElitePK_Item[720721]["RewardItem"][1] = {}
	tElitePK_Item[720721]["RewardItem"][1]["Id"] = 3004247 -- P7武器神魂可选包
	tElitePK_Item[720721]["RewardItem"][1]["Attr"] = "0 1" 
	tElitePK_Item[720721]["RewardItem"][2] = {}
	tElitePK_Item[720721]["RewardItem"][2]["Id"] = 3306980 -- 3个明亮星陨石礼包
	tElitePK_Item[720721]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720721]["RewardItem"][3] = {}
	tElitePK_Item[720721]["RewardItem"][3]["Id"] = 3311759 -- 神纹源晶赠*2
	tElitePK_Item[720721]["RewardItem"][3]["Attr"] = "0 2 3"
	tElitePK_Item[720721]["RewardEMoney"] = {}
	tElitePK_Item[720721]["RewardEMoney"]["Value"] = 215
	tElitePK_Item[720721]["RewardStrengthValue"] = {}
	tElitePK_Item[720721]["RewardStrengthValue"]["Value"] = 2000
	tElitePK_Item[720721]["RewardEffect"] = {}
	tElitePK_Item[720721]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720721]["ProcessTask"] = 38
	tElitePK_Item[720721]["Condition"] = 0
	tElitePK_Item[720721]["Value"] = 2
	tElitePK_Item[720721]["Global"] = {}
	tElitePK_Item[720721]["Global"]["Id"] = 50527
	tElitePK_Item[720721]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item[720721]["Global"]["Pos"] = 0
	tElitePK_Item[720721]["Global"]["Data"] = 1
	tElitePK_Item[720721]["Global"]["Space"] = 1
	tElitePK_Item[720721]["Global"]["RewardItem"] = {}
	tElitePK_Item[720721]["Global"]["RewardItem"][1] = {}
	tElitePK_Item[720721]["Global"]["RewardItem"][1]["Id"] = 3004088
	tElitePK_Item[720721]["Global"]["RewardItem"][1]["Attr"] = "0 2"
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720721]["PrivilegeGlobal"] = {}
	tElitePK_Item[720721]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720721]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720721]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720721]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720721]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720721]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720721]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720721]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720721]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 6"
	-- 720721	极品御刃武魂礼包激情服
	tElitePK_Item_NoGift[720721] = {}
	tElitePK_Item_NoGift[720721]["Space"] = 2
	tElitePK_Item_NoGift[720721]["EmoneyTop"] = 999999785
	tElitePK_Item_NoGift[720721]["RewardNoNeedTip"] = 1
	tElitePK_Item_NoGift[720721]["LogId"] = 10000156
	tElitePK_Item_NoGift[720721]["Stc"] = {}
	tElitePK_Item_NoGift[720721]["Stc"]["EventType"] = 100
	tElitePK_Item_NoGift[720721]["Stc"]["DataType"] = 1
	tElitePK_Item_NoGift[720721]["Stc"]["Data"] = 3
	tElitePK_Item_NoGift[720721]["RewardItem"] = {}
	tElitePK_Item_NoGift[720721]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720721]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tElitePK_Item_NoGift[720721]["RewardItem"][1]["Attr"] = "0 3 3" 
	tElitePK_Item_NoGift[720721]["RewardItem"][2] = {}
	tElitePK_Item_NoGift[720721]["RewardItem"][2]["Id"] = 3306980 -- 3个明亮星陨石礼包
	tElitePK_Item_NoGift[720721]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item_NoGift[720721]["RewardEMoney"] = {}
	tElitePK_Item_NoGift[720721]["RewardEMoney"]["Value"] = 215
	tElitePK_Item_NoGift[720721]["RewardStrengthValue"] = {}
	tElitePK_Item_NoGift[720721]["RewardStrengthValue"]["Value"] = 800
	tElitePK_Item_NoGift[720721]["RewardEffect"] = {}
	tElitePK_Item_NoGift[720721]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item_NoGift[720721]["ProcessTask"] = 38
	tElitePK_Item_NoGift[720721]["Condition"] = 0
	tElitePK_Item_NoGift[720721]["Value"] = 2
	tElitePK_Item_NoGift[720721]["Global"] = {}
	tElitePK_Item_NoGift[720721]["Global"]["Id"] = 50527
	tElitePK_Item_NoGift[720721]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item_NoGift[720721]["Global"]["Pos"] = 0
	tElitePK_Item_NoGift[720721]["Global"]["Data"] = 1
	tElitePK_Item_NoGift[720721]["Global"]["Space"] = 1
	tElitePK_Item_NoGift[720721]["Global"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720721]["Global"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720721]["Global"]["RewardItem"][1]["Id"] = 3004088
	tElitePK_Item_NoGift[720721]["Global"]["RewardItem"][1]["Attr"] = "0 2"
	-- 新服福利活动新增额外奖励
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"] = {}
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item_NoGift[720721]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 6"

	-- 720725	极品苍岚武贲礼包
	tElitePK_Item[720725] = {}
	tElitePK_Item[720725]["Space"] = 3
	tElitePK_Item[720725]["EmoneyTop"] = 999999925
	tElitePK_Item[720725]["RewardNoNeedTip"] = 1
	tElitePK_Item[720725]["LogId"] = 10000156
	tElitePK_Item[720725]["Stc"] = {}
	tElitePK_Item[720725]["Stc"]["EventType"] = 100
	tElitePK_Item[720725]["Stc"]["DataType"] = 1
	tElitePK_Item[720725]["Stc"]["Data"] = 2
	tElitePK_Item[720725]["RewardItem"] = {}
	tElitePK_Item[720725]["RewardItem"][1] = {}
	tElitePK_Item[720725]["RewardItem"][1]["Id"] = 729122 -- P6武器神魂可选包 
	tElitePK_Item[720725]["RewardItem"][1]["Attr"] = "0 1" 
	tElitePK_Item[720725]["RewardItem"][2] = {}
	tElitePK_Item[720725]["RewardItem"][2]["Id"] = 3300612 -- 2个明亮星陨石礼包
	tElitePK_Item[720725]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720725]["RewardItem"][3] = {}
	tElitePK_Item[720725]["RewardItem"][3]["Id"] = 3311759 -- 神纹源晶赠*2
	tElitePK_Item[720725]["RewardItem"][3]["Attr"] = "0 2 3"
	tElitePK_Item[720725]["RewardStrengthValue"] = {}
	tElitePK_Item[720725]["RewardStrengthValue"]["Value"] = 1500
	tElitePK_Item[720725]["RewardEMoney"] = {}
	tElitePK_Item[720725]["RewardEMoney"]["Value"] = 75
	tElitePK_Item[720725]["RewardEffect"] = {}
	tElitePK_Item[720725]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720725]["ProcessTask"] = 38
	tElitePK_Item[720725]["Condition"] = 0
	tElitePK_Item[720725]["Value"] = 3
	tElitePK_Item[720725]["Global"] = {}
	tElitePK_Item[720725]["Global"]["Id"] = 50527
	tElitePK_Item[720725]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item[720725]["Global"]["Pos"] = 0
	tElitePK_Item[720725]["Global"]["Data"] = 1
	tElitePK_Item[720725]["Global"]["Space"] = 1
	tElitePK_Item[720725]["Global"]["RewardItem"] = {}
	tElitePK_Item[720725]["Global"]["RewardItem"][1] = {}
	tElitePK_Item[720725]["Global"]["RewardItem"][1]["Id"] = 3004088
	tElitePK_Item[720725]["Global"]["RewardItem"][1]["Attr"] = "0 1"
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720725]["PrivilegeGlobal"] = {}
	tElitePK_Item[720725]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720725]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720725]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720725]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720725]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720725]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720725]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720725]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720725]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 4"

	-- 720725	极品苍岚武贲礼包激情服
	tElitePK_Item_NoGift[720725] = {}
	tElitePK_Item_NoGift[720725]["Space"] = 2
	tElitePK_Item_NoGift[720725]["EmoneyTop"] = 999999925
	tElitePK_Item_NoGift[720725]["RewardNoNeedTip"] = 1
	tElitePK_Item_NoGift[720725]["LogId"] = 10000156
	tElitePK_Item_NoGift[720725]["Stc"] = {}
	tElitePK_Item_NoGift[720725]["Stc"]["EventType"] = 100
	tElitePK_Item_NoGift[720725]["Stc"]["DataType"] = 1
	tElitePK_Item_NoGift[720725]["Stc"]["Data"] = 2
	tElitePK_Item_NoGift[720725]["RewardItem"] = {}
	tElitePK_Item_NoGift[720725]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720725]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tElitePK_Item_NoGift[720725]["RewardItem"][1]["Attr"] = "0 2 3" 
	tElitePK_Item_NoGift[720725]["RewardItem"][2] = {}
	tElitePK_Item_NoGift[720725]["RewardItem"][2]["Id"] = 3300612 -- 2个明亮星陨石礼包
	tElitePK_Item_NoGift[720725]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item_NoGift[720725]["RewardStrengthValue"] = {}
	tElitePK_Item_NoGift[720725]["RewardStrengthValue"]["Value"] = 500
	tElitePK_Item_NoGift[720725]["RewardEMoney"] = {}
	tElitePK_Item_NoGift[720725]["RewardEMoney"]["Value"] = 75
	tElitePK_Item_NoGift[720725]["RewardEffect"] = {}
	tElitePK_Item_NoGift[720725]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item_NoGift[720725]["ProcessTask"] = 38
	tElitePK_Item_NoGift[720725]["Condition"] = 0
	tElitePK_Item_NoGift[720725]["Value"] = 3
	tElitePK_Item_NoGift[720725]["Global"] = {}
	tElitePK_Item_NoGift[720725]["Global"]["Id"] = 50527
	tElitePK_Item_NoGift[720725]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item_NoGift[720725]["Global"]["Pos"] = 0
	tElitePK_Item_NoGift[720725]["Global"]["Data"] = 1
	tElitePK_Item_NoGift[720725]["Global"]["Space"] = 1
	tElitePK_Item_NoGift[720725]["Global"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720725]["Global"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720725]["Global"]["RewardItem"][1]["Id"] = 3004088
	tElitePK_Item_NoGift[720725]["Global"]["RewardItem"][1]["Attr"] = "0 1"
	-- 新服福利活动新增额外奖励
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"] = {}
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item_NoGift[720725]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 4"

	-- 720729	极品精装豪侠礼包
	tElitePK_Item[720729] = {}
	tElitePK_Item[720729]["Space"] = 3
	tElitePK_Item[720729]["EmoneyTop"] = 999999975
	tElitePK_Item[720729]["RewardNoNeedTip"] = 1
	tElitePK_Item[720729]["LogId"] = 10000156
	tElitePK_Item[720729]["Stc"] = {}
	tElitePK_Item[720729]["Stc"]["EventType"] = 100
	tElitePK_Item[720729]["Stc"]["DataType"] = 1
	tElitePK_Item[720729]["Stc"]["Data"] = 1
	tElitePK_Item[720729]["RewardItem"] = {}
	tElitePK_Item[720729]["RewardItem"][1] = {}
	tElitePK_Item[720729]["RewardItem"][1]["Id"] = 729122 -- P6武器神魂可选包 
	tElitePK_Item[720729]["RewardItem"][1]["Attr"] = "0 1" 
	tElitePK_Item[720729]["RewardItem"][2] = {}
	tElitePK_Item[720729]["RewardItem"][2]["Id"] = 3310761 -- 1个明亮星陨石礼包
	tElitePK_Item[720729]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item[720729]["RewardItem"][3] = {}
	tElitePK_Item[720729]["RewardItem"][3]["Id"] = 3311759 -- 神纹源晶赠
	tElitePK_Item[720729]["RewardItem"][3]["Attr"] = "0 1 3"
	tElitePK_Item[720729]["RewardStrengthValue"] = {}
	tElitePK_Item[720729]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_Item[720729]["RewardEMoney"] = {}
	tElitePK_Item[720729]["RewardEMoney"]["Value"] = 25
	tElitePK_Item[720729]["RewardEffect"] = {}
	tElitePK_Item[720729]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item[720729]["ProcessTask"] = 38
	tElitePK_Item[720729]["Condition"] = 0
	tElitePK_Item[720729]["Value"] = 8
	tElitePK_Item[720729]["Global"] = {}
	tElitePK_Item[720729]["Global"]["Id"] = 50527
	tElitePK_Item[720729]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item[720729]["Global"]["Pos"] = 0
	tElitePK_Item[720729]["Global"]["Data"] = 1
	tElitePK_Item[720729]["Global"]["Space"] = 1
	tElitePK_Item[720729]["Global"]["RewardItem"] = {}
	tElitePK_Item[720729]["Global"]["RewardItem"][1] = {}
	tElitePK_Item[720729]["Global"]["RewardItem"][1]["Id"] = 3004087
	tElitePK_Item[720729]["Global"]["RewardItem"][1]["Attr"] = "0 5"
	-- 新服福利活动新增额外奖励
	tElitePK_Item[720729]["PrivilegeGlobal"] = {}
	tElitePK_Item[720729]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item[720729]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item[720729]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item[720729]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item[720729]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item[720729]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item[720729]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item[720729]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item[720729]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 2"
	-- 720729	极品精装豪侠礼包
	tElitePK_Item_NoGift[720729] = {}
	tElitePK_Item_NoGift[720729]["Space"] = 2
	tElitePK_Item_NoGift[720729]["EmoneyTop"] = 999999975
	tElitePK_Item_NoGift[720729]["RewardNoNeedTip"] = 1
	tElitePK_Item_NoGift[720729]["LogId"] = 10000156
	tElitePK_Item_NoGift[720729]["Stc"] = {}
	tElitePK_Item_NoGift[720729]["Stc"]["EventType"] = 100
	tElitePK_Item_NoGift[720729]["Stc"]["DataType"] = 1
	tElitePK_Item_NoGift[720729]["Stc"]["Data"] = 1
	tElitePK_Item_NoGift[720729]["RewardItem"] = {}
	tElitePK_Item_NoGift[720729]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720729]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tElitePK_Item_NoGift[720729]["RewardItem"][1]["Attr"] = "0 1 3" 
	tElitePK_Item_NoGift[720729]["RewardItem"][2] = {}
	tElitePK_Item_NoGift[720729]["RewardItem"][2]["Id"] = 3310761 -- 2个明亮星陨石礼包
	tElitePK_Item_NoGift[720729]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_Item_NoGift[720729]["RewardStrengthValue"] = {}
	tElitePK_Item_NoGift[720729]["RewardStrengthValue"]["Value"] = 300
	tElitePK_Item_NoGift[720729]["RewardEMoney"] = {}
	tElitePK_Item_NoGift[720729]["RewardEMoney"]["Value"] = 25
	tElitePK_Item_NoGift[720729]["RewardEffect"] = {}
	tElitePK_Item_NoGift[720729]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_Item_NoGift[720729]["ProcessTask"] = 38
	tElitePK_Item_NoGift[720729]["Condition"] = 0
	tElitePK_Item_NoGift[720729]["Value"] = 8
	tElitePK_Item_NoGift[720729]["Global"] = {}
	tElitePK_Item_NoGift[720729]["Global"]["Id"] = 50527
	tElitePK_Item_NoGift[720729]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_Item_NoGift[720729]["Global"]["Pos"] = 0
	tElitePK_Item_NoGift[720729]["Global"]["Data"] = 1
	tElitePK_Item_NoGift[720729]["Global"]["Space"] = 1
	tElitePK_Item_NoGift[720729]["Global"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720729]["Global"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720729]["Global"]["RewardItem"][1]["Id"] = 3004087
	tElitePK_Item_NoGift[720729]["Global"]["RewardItem"][1]["Attr"] = "0 5"
	-- 新服福利活动新增额外奖励
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"] = {}
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_Item_NoGift[720729]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 2"
	

local tElitePK_JulyNewServer = {}
tElitePK_JulyNewServer["GlobalId"] = 52911
	-- 100级以下
	-- 720714	良品钧天武尊礼包
	tElitePK_JulyNewServer[720714] = {}
	tElitePK_JulyNewServer[720714]["Space"] = 3
	tElitePK_JulyNewServer[720714]["EmoneyTop"] = 999999785
	tElitePK_JulyNewServer[720714]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720714]["LogId"] = 10000156
	tElitePK_JulyNewServer[720714]["AddExp"] = 1
	tElitePK_JulyNewServer[720714]["Level"] = 100
	tElitePK_JulyNewServer[720714]["Stc"] = {}
	tElitePK_JulyNewServer[720714]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720714]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720714]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720714]["RewardItem"] = {}
	tElitePK_JulyNewServer[720714]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720714]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720714]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720714]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720714]["RewardItem"][2]["Id"] = 3310761 -- 明亮星陨石礼包
	tElitePK_JulyNewServer[720714]["RewardItem"][2]["Attr"] = "0 1" 
	tElitePK_JulyNewServer[720714]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720714]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720714]["RewardItem"][3]["Attr"] = "0 10 3"
	tElitePK_JulyNewServer[720714]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720714]["RewardEMoneyMono"]["Value"] = 645
	tElitePK_JulyNewServer[720714]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720714]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720714]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720714]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_JulyNewServer[720714]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720714]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720714]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720714]["Condition"] = 0
	tElitePK_JulyNewServer[720714]["Value"] = 1
	tElitePK_JulyNewServer[720714]["AddStrengthValue"] = 1000

    -- 720718	良品御刃武魂礼包
	tElitePK_JulyNewServer[720718] = {}
	tElitePK_JulyNewServer[720718]["Space"] = 3
	tElitePK_JulyNewServer[720718]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720718]["LogId"] = 10000156
	tElitePK_JulyNewServer[720718]["AddExp"] = 0.5
	tElitePK_JulyNewServer[720718]["Level"] = 100
	tElitePK_JulyNewServer[720718]["Stc"] = {}
	tElitePK_JulyNewServer[720718]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720718]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720718]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720718]["RewardItem"] = {}
	tElitePK_JulyNewServer[720718]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720718]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720718]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720718]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720718]["RewardItem"][2]["Id"] = 3307068 -- 8颗微光星陨石礼包
	tElitePK_JulyNewServer[720718]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720718]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720718]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720718]["RewardItem"][3]["Attr"] = "0 8 3"
	tElitePK_JulyNewServer[720718]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720718]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720718]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720718]["RewardStrengthValue"]["Value"] = 800
	tElitePK_JulyNewServer[720718]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720718]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720718]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720718]["Condition"] = 0
	tElitePK_JulyNewServer[720718]["Value"] = 2
	tElitePK_JulyNewServer[720718]["AddStrengthValue"] = 800

    -- 720722	良品苍岚武贲礼包
	tElitePK_JulyNewServer[720722] = {}
	tElitePK_JulyNewServer[720722]["Space"] = 3
	tElitePK_JulyNewServer[720722]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720722]["LogId"] = 10000156
	tElitePK_JulyNewServer[720722]["AddExp"] = 0.3
	tElitePK_JulyNewServer[720722]["Level"] = 100
	tElitePK_JulyNewServer[720722]["Stc"] = {}
	tElitePK_JulyNewServer[720722]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720722]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720722]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720722]["RewardItem"] = {}
	tElitePK_JulyNewServer[720722]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720722]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720722]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720722]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720722]["RewardItem"][2]["Id"] = 3306979 -- 5颗微光星陨石礼包
	tElitePK_JulyNewServer[720722]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720722]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720722]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720722]["RewardItem"][3]["Attr"] = "0 5 3"
	tElitePK_JulyNewServer[720722]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720722]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720722]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720722]["RewardStrengthValue"]["Value"] = 500
	tElitePK_JulyNewServer[720722]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720722]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720722]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720722]["Condition"] = 0
	tElitePK_JulyNewServer[720722]["Value"] = 3
	tElitePK_JulyNewServer[720722]["AddStrengthValue"] = 500

    -- 720726	良品精装豪侠礼包
	tElitePK_JulyNewServer[720726] = {}
	tElitePK_JulyNewServer[720726]["Space"] = 3
	tElitePK_JulyNewServer[720726]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720726]["LogId"] = 10000156
	tElitePK_JulyNewServer[720726]["AddExp"] = 0.15
	tElitePK_JulyNewServer[720726]["Level"] = 100
	tElitePK_JulyNewServer[720726]["Stc"] = {}
	tElitePK_JulyNewServer[720726]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720726]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720726]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720726]["RewardItem"] = {}
	tElitePK_JulyNewServer[720726]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720726]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720726]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720726]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720726]["RewardItem"][2]["Id"] = 3306978 -- 3颗微光星陨石礼包
	tElitePK_JulyNewServer[720726]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720726]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720726]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720726]["RewardItem"][3]["Attr"] = "0 3 3"
	tElitePK_JulyNewServer[720726]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720726]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720726]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720726]["RewardStrengthValue"]["Value"] = 300
	tElitePK_JulyNewServer[720726]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720726]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720726]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720726]["Condition"] = 0
	tElitePK_JulyNewServer[720726]["Value"] = 8
	tElitePK_JulyNewServer[720726]["AddStrengthValue"] = 300

	-- 100-119
	-- 720715	上品钧天武尊礼包
	tElitePK_JulyNewServer[720715] = {}
	tElitePK_JulyNewServer[720715]["Space"] = 3
	tElitePK_JulyNewServer[720715]["EmoneyTop"] = 999999785
	tElitePK_JulyNewServer[720715]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720715]["LogId"] = 10000156
	tElitePK_JulyNewServer[720715]["AddExp"] = 1
	tElitePK_JulyNewServer[720715]["Level"] = 120
	tElitePK_JulyNewServer[720715]["Stc"] = {}
	tElitePK_JulyNewServer[720715]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720715]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720715]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720715]["RewardItem"] = {}
	tElitePK_JulyNewServer[720715]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720715]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720715]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720715]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720715]["RewardItem"][2]["Id"] = 3310761 -- 明亮星陨石礼包
	tElitePK_JulyNewServer[720715]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720715]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720715]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720715]["RewardItem"][3]["Attr"] = "0 10 3"
	tElitePK_JulyNewServer[720715]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720715]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720715]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720715]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_JulyNewServer[720715]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720715]["RewardEMoneyMono"]["Value"] = 645
	tElitePK_JulyNewServer[720715]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720715]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720715]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720715]["Condition"] = 0
	tElitePK_JulyNewServer[720715]["Value"] = 1
	tElitePK_JulyNewServer[720715]["AddStrengthValue"] = 1000

	-- 720719	上品御刃武魂礼包
	tElitePK_JulyNewServer[720719] = {}
	tElitePK_JulyNewServer[720719]["Space"] = 3
	tElitePK_JulyNewServer[720719]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720719]["LogId"] = 10000156
	tElitePK_JulyNewServer[720719]["AddExp"] = 0.5
	tElitePK_JulyNewServer[720719]["Level"] = 120
	tElitePK_JulyNewServer[720719]["Stc"] = {}
	tElitePK_JulyNewServer[720719]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720719]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720719]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720719]["RewardItem"] = {}
	tElitePK_JulyNewServer[720719]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720719]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720719]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720719]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720719]["RewardItem"][2]["Id"] = 3307068 -- 八颗微光星陨石礼包
	tElitePK_JulyNewServer[720719]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720719]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720719]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720719]["RewardItem"][3]["Attr"] = "0 8 3"
	tElitePK_JulyNewServer[720719]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720719]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720719]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720719]["RewardStrengthValue"]["Value"] = 800
	tElitePK_JulyNewServer[720719]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720719]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720719]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720719]["Condition"] = 0
	tElitePK_JulyNewServer[720719]["Value"] = 2
	tElitePK_JulyNewServer[720719]["AddStrengthValue"] = 800

	-- 720723	上品苍岚武贲礼包
	tElitePK_JulyNewServer[720723] = {}
	tElitePK_JulyNewServer[720723]["Space"] = 3
	tElitePK_JulyNewServer[720723]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720723]["LogId"] = 10000156
	tElitePK_JulyNewServer[720723]["AddExp"] = 0.3
	tElitePK_JulyNewServer[720723]["Level"] = 120
	tElitePK_JulyNewServer[720723]["Stc"] = {}
	tElitePK_JulyNewServer[720723]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720723]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720723]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720723]["RewardItem"] = {}
	tElitePK_JulyNewServer[720723]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720723]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720723]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720723]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720723]["RewardItem"][2]["Id"] = 3306979 -- 五颗微光星陨石礼包
	tElitePK_JulyNewServer[720723]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720723]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720723]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720723]["RewardItem"][3]["Attr"] = "0 5 3"
	tElitePK_JulyNewServer[720723]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720723]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720723]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720723]["RewardStrengthValue"]["Value"] = 500
	tElitePK_JulyNewServer[720723]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720723]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720723]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720723]["Condition"] = 0
	tElitePK_JulyNewServer[720723]["Value"] = 3
	tElitePK_JulyNewServer[720723]["AddStrengthValue"] = 500

	-- 720727	上品精装豪侠礼包
	tElitePK_JulyNewServer[720727] = {}
	tElitePK_JulyNewServer[720727]["Space"] = 3
	tElitePK_JulyNewServer[720727]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720727]["LogId"] = 10000156
	tElitePK_JulyNewServer[720727]["AddExp"] = 0.15
	tElitePK_JulyNewServer[720727]["Level"] = 120
	tElitePK_JulyNewServer[720727]["Stc"] = {}
	tElitePK_JulyNewServer[720727]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720727]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720727]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720727]["RewardItem"] = {}
	tElitePK_JulyNewServer[720727]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720727]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720727]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720727]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720727]["RewardItem"][2]["Id"] = 3306978 -- 三颗微光星陨石礼包
	tElitePK_JulyNewServer[720727]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720727]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720727]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720727]["RewardItem"][3]["Attr"] = "0 3 3"
	tElitePK_JulyNewServer[720727]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720727]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720727]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720727]["RewardStrengthValue"]["Value"] = 300
	tElitePK_JulyNewServer[720727]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720727]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720727]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720727]["Condition"] = 0
	tElitePK_JulyNewServer[720727]["Value"] = 8
	tElitePK_JulyNewServer[720727]["AddStrengthValue"] = 300

	-- 120-129
	-- 720716	优质钧天武尊礼包
	tElitePK_JulyNewServer[720716] = {}
	tElitePK_JulyNewServer[720716]["Space"] = 3
	tElitePK_JulyNewServer[720716]["EmoneyTop"] = 999999785
	tElitePK_JulyNewServer[720716]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720716]["LogId"] = 10000156
	tElitePK_JulyNewServer[720716]["AddExp"] = 1
	tElitePK_JulyNewServer[720716]["Level"] = 130
	tElitePK_JulyNewServer[720716]["Stc"] = {}
	tElitePK_JulyNewServer[720716]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720716]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720716]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720716]["RewardItem"] = {}
	tElitePK_JulyNewServer[720716]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720716]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720716]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720716]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720716]["RewardItem"][2]["Id"] = 3310761 -- 明亮星陨石礼包
	tElitePK_JulyNewServer[720716]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720716]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720716]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720716]["RewardItem"][3]["Attr"] = "0 10 3"
	tElitePK_JulyNewServer[720716]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720716]["RewardEMoneyMono"]["Value"] = 645
	tElitePK_JulyNewServer[720716]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720716]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720716]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720716]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_JulyNewServer[720716]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720716]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720716]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720716]["Condition"] = 0
	tElitePK_JulyNewServer[720716]["Value"] = 1
	tElitePK_JulyNewServer[720716]["AddStrengthValue"] = 1000
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720716]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 3"

	-- 720720	优质御刃武魂礼包
	tElitePK_JulyNewServer[720720] = {}
	tElitePK_JulyNewServer[720720]["Space"] = 3
	tElitePK_JulyNewServer[720720]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720720]["LogId"] = 10000156
	tElitePK_JulyNewServer[720720]["AddExp"] = 0.5
	tElitePK_JulyNewServer[720720]["Level"] = 130
	tElitePK_JulyNewServer[720720]["Stc"] = {}
	tElitePK_JulyNewServer[720720]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720720]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720720]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720720]["RewardItem"] = {}
	tElitePK_JulyNewServer[720720]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720720]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720720]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720720]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720720]["RewardItem"][2]["Id"] = 3307068 -- 八颗微光星陨石礼包
	tElitePK_JulyNewServer[720720]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720720]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720720]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720720]["RewardItem"][3]["Attr"] = "0 8 3"
	tElitePK_JulyNewServer[720720]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720720]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720720]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720720]["RewardStrengthValue"]["Value"] = 800
	tElitePK_JulyNewServer[720720]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720720]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720720]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720720]["Condition"] = 0
	tElitePK_JulyNewServer[720720]["Value"] = 2
	tElitePK_JulyNewServer[720720]["AddStrengthValue"] = 800
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720720]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 2"

	-- 720724	优质苍岚武贲礼包
	tElitePK_JulyNewServer[720724] = {}
	tElitePK_JulyNewServer[720724]["Space"] = 3
	tElitePK_JulyNewServer[720724]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720724]["LogId"] = 10000156
	tElitePK_JulyNewServer[720724]["AddExp"] = 0.3
	tElitePK_JulyNewServer[720724]["Level"] = 130
	tElitePK_JulyNewServer[720724]["Stc"] = {}
	tElitePK_JulyNewServer[720724]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720724]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720724]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720724]["RewardItem"] = {}
	tElitePK_JulyNewServer[720724]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720724]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720724]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720724]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720724]["RewardItem"][2]["Id"] = 3306979 -- 五颗微光星陨石礼包
	tElitePK_JulyNewServer[720724]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720724]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720724]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720724]["RewardItem"][3]["Attr"] = "0 5 3"
	tElitePK_JulyNewServer[720724]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720724]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720724]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720724]["RewardStrengthValue"]["Value"] = 500
	tElitePK_JulyNewServer[720724]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720724]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720724]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720724]["Condition"] = 0
	tElitePK_JulyNewServer[720724]["Value"] = 3
	tElitePK_JulyNewServer[720724]["AddStrengthValue"] = 500
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720724]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 1"

	-- 720728	优质精装豪侠礼包
	tElitePK_JulyNewServer[720728] = {}
	tElitePK_JulyNewServer[720728]["Space"] = 3
	tElitePK_JulyNewServer[720728]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720728]["LogId"] = 10000156
	tElitePK_JulyNewServer[720728]["AddExp"] = 0.15
	tElitePK_JulyNewServer[720728]["Level"] = 130
	tElitePK_JulyNewServer[720728]["Stc"] = {}
	tElitePK_JulyNewServer[720728]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720728]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720728]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720728]["RewardItem"] = {}
	tElitePK_JulyNewServer[720728]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720728]["RewardItem"][1]["Id"] = 3306997 -- 极品淬炼礼包
	tElitePK_JulyNewServer[720728]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720728]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720728]["RewardItem"][2]["Id"] = 3306978 -- 三颗微光星陨石礼包
	tElitePK_JulyNewServer[720728]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720728]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720728]["RewardItem"][3]["Id"] = 3003124 -- 免费强炼丹
	tElitePK_JulyNewServer[720728]["RewardItem"][3]["Attr"] = "0 3 3"
	tElitePK_JulyNewServer[720728]["RewardExpTime"] = {}
	tElitePK_JulyNewServer[720728]["RewardExpTime"]["Value"] = 0
	tElitePK_JulyNewServer[720728]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720728]["RewardStrengthValue"]["Value"] = 300
	tElitePK_JulyNewServer[720728]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720728]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720728]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720728]["Condition"] = 0
	tElitePK_JulyNewServer[720728]["Value"] = 8
	tElitePK_JulyNewServer[720728]["AddStrengthValue"] = 300

	-- 130级以上
	-- 720717	极品钧天武尊礼包
	tElitePK_JulyNewServer[720717] = {}
	tElitePK_JulyNewServer[720717]["Space"] = 3
	tElitePK_JulyNewServer[720717]["EmoneyTop"] = 999999355
	tElitePK_JulyNewServer[720717]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720717]["LogId"] = 10000156
	tElitePK_JulyNewServer[720717]["Stc"] = {}
	tElitePK_JulyNewServer[720717]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720717]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720717]["Stc"]["Data"] = 5
	tElitePK_JulyNewServer[720717]["RewardItem"] = {}
	tElitePK_JulyNewServer[720717]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720717]["RewardItem"][1]["Id"] = 720049 -- 1个+6变幻骑宠礼包 
	tElitePK_JulyNewServer[720717]["RewardItem"][1]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720717]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720717]["RewardItem"][2]["Id"] = 720128 -- 清心符
	tElitePK_JulyNewServer[720717]["RewardItem"][2]["Attr"] = "0 5 3"
	tElitePK_JulyNewServer[720717]["RewardItem"][3] = {}
	tElitePK_JulyNewServer[720717]["RewardItem"][3]["Id"] = 3306981 -- 5个明亮星陨石礼包
	tElitePK_JulyNewServer[720717]["RewardItem"][3]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720717]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720717]["RewardEMoneyMono"]["Value"] = 1935
	tElitePK_JulyNewServer[720717]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720717]["RewardStrengthValue"]["Value"] = 1000
	tElitePK_JulyNewServer[720717]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720717]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720717]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720717]["Condition"] = 0
	tElitePK_JulyNewServer[720717]["Value"] = 1
	tElitePK_JulyNewServer[720717]["Global"] = {}
	tElitePK_JulyNewServer[720717]["Global"]["Id"] = 50527
	tElitePK_JulyNewServer[720717]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_JulyNewServer[720717]["Global"]["Pos"] = 0
	tElitePK_JulyNewServer[720717]["Global"]["Data"] = 1
	tElitePK_JulyNewServer[720717]["Global"]["Space"] = 1
	tElitePK_JulyNewServer[720717]["Global"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720717]["Global"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720717]["Global"]["RewardItem"][1]["Id"] = 3004089
	tElitePK_JulyNewServer[720717]["Global"]["RewardItem"][1]["Attr"] = "0 1"
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720717]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 7"

	-- 720721	极品御刃武魂礼包
	tElitePK_JulyNewServer[720721] = {}
	tElitePK_JulyNewServer[720721]["Space"] = 2
	tElitePK_JulyNewServer[720721]["EmoneyTop"] = 999999785
	tElitePK_JulyNewServer[720721]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720721]["LogId"] = 10000156
	tElitePK_JulyNewServer[720721]["Stc"] = {}
	tElitePK_JulyNewServer[720721]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720721]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720721]["Stc"]["Data"] = 3
	tElitePK_JulyNewServer[720721]["RewardItem"] = {}
	tElitePK_JulyNewServer[720721]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720721]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tElitePK_JulyNewServer[720721]["RewardItem"][1]["Attr"] = "0 3 3" 
	tElitePK_JulyNewServer[720721]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720721]["RewardItem"][2]["Id"] = 3306980 -- 3个明亮星陨石礼包
	tElitePK_JulyNewServer[720721]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720721]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720721]["RewardEMoneyMono"]["Value"] = 645
	tElitePK_JulyNewServer[720721]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720721]["RewardStrengthValue"]["Value"] = 800
	tElitePK_JulyNewServer[720721]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720721]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720721]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720721]["Condition"] = 0
	tElitePK_JulyNewServer[720721]["Value"] = 2
	tElitePK_JulyNewServer[720721]["Global"] = {}
	tElitePK_JulyNewServer[720721]["Global"]["Id"] = 50527
	tElitePK_JulyNewServer[720721]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_JulyNewServer[720721]["Global"]["Pos"] = 0
	tElitePK_JulyNewServer[720721]["Global"]["Data"] = 1
	tElitePK_JulyNewServer[720721]["Global"]["Space"] = 1
	tElitePK_JulyNewServer[720721]["Global"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720721]["Global"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720721]["Global"]["RewardItem"][1]["Id"] = 3004088
	tElitePK_JulyNewServer[720721]["Global"]["RewardItem"][1]["Attr"] = "0 2"
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720721]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 6"

	-- 720725	极品苍岚武贲礼包
	tElitePK_JulyNewServer[720725] = {}
	tElitePK_JulyNewServer[720725]["Space"] = 2
	tElitePK_JulyNewServer[720725]["EmoneyTop"] = 999999925
	tElitePK_JulyNewServer[720725]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720725]["LogId"] = 10000156
	tElitePK_JulyNewServer[720725]["Stc"] = {}
	tElitePK_JulyNewServer[720725]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720725]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720725]["Stc"]["Data"] = 2
	tElitePK_JulyNewServer[720725]["RewardItem"] = {}
	tElitePK_JulyNewServer[720725]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720725]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tElitePK_JulyNewServer[720725]["RewardItem"][1]["Attr"] = "0 2 3" 
	tElitePK_JulyNewServer[720725]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720725]["RewardItem"][2]["Id"] = 3300612 -- 2个明亮星陨石礼包
	tElitePK_JulyNewServer[720725]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720725]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720725]["RewardStrengthValue"]["Value"] = 500
	tElitePK_JulyNewServer[720725]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720725]["RewardEMoneyMono"]["Value"] = 225
	tElitePK_JulyNewServer[720725]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720725]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720725]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720725]["Condition"] = 0
	tElitePK_JulyNewServer[720725]["Value"] = 3
	tElitePK_JulyNewServer[720725]["Global"] = {}
	tElitePK_JulyNewServer[720725]["Global"]["Id"] = 50527
	tElitePK_JulyNewServer[720725]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_JulyNewServer[720725]["Global"]["Pos"] = 0
	tElitePK_JulyNewServer[720725]["Global"]["Data"] = 1
	tElitePK_JulyNewServer[720725]["Global"]["Space"] = 1
	tElitePK_JulyNewServer[720725]["Global"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720725]["Global"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720725]["Global"]["RewardItem"][1]["Id"] = 3004088
	tElitePK_JulyNewServer[720725]["Global"]["RewardItem"][1]["Attr"] = "0 1"
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720725]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 4"

	-- 720729	极品精装豪侠礼包
	tElitePK_JulyNewServer[720729] = {}
	tElitePK_JulyNewServer[720729]["Space"] = 2
	tElitePK_JulyNewServer[720729]["EmoneyTop"] = 999999975
	tElitePK_JulyNewServer[720729]["RewardNoNeedTip"] = 1
	tElitePK_JulyNewServer[720729]["LogId"] = 10000156
	tElitePK_JulyNewServer[720729]["Stc"] = {}
	tElitePK_JulyNewServer[720729]["Stc"]["EventType"] = 100
	tElitePK_JulyNewServer[720729]["Stc"]["DataType"] = 1
	tElitePK_JulyNewServer[720729]["Stc"]["Data"] = 1
	tElitePK_JulyNewServer[720729]["RewardItem"] = {}
	tElitePK_JulyNewServer[720729]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720729]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tElitePK_JulyNewServer[720729]["RewardItem"][1]["Attr"] = "0 1 3" 
	tElitePK_JulyNewServer[720729]["RewardItem"][2] = {}
	tElitePK_JulyNewServer[720729]["RewardItem"][2]["Id"] = 3310761 -- 2个明亮星陨石礼包
	tElitePK_JulyNewServer[720729]["RewardItem"][2]["Attr"] = "0 1"
	tElitePK_JulyNewServer[720729]["RewardStrengthValue"] = {}
	tElitePK_JulyNewServer[720729]["RewardStrengthValue"]["Value"] = 300
	tElitePK_JulyNewServer[720729]["RewardEMoneyMono"] = {}
	tElitePK_JulyNewServer[720729]["RewardEMoneyMono"]["Value"] = 75
	tElitePK_JulyNewServer[720729]["RewardEffect"] = {}
	tElitePK_JulyNewServer[720729]["RewardEffect"]["Effect"] = "angelwing"
	tElitePK_JulyNewServer[720729]["ProcessTask"] = 38
	tElitePK_JulyNewServer[720729]["Condition"] = 0
	tElitePK_JulyNewServer[720729]["Value"] = 8
	tElitePK_JulyNewServer[720729]["Global"] = {}
	tElitePK_JulyNewServer[720729]["Global"]["Id"] = 50527
	tElitePK_JulyNewServer[720729]["Global"]["ActivityTime"] = tActivityTime["ShenYuElitePK"]["ActivityTime"]
	tElitePK_JulyNewServer[720729]["Global"]["Pos"] = 0
	tElitePK_JulyNewServer[720729]["Global"]["Data"] = 1
	tElitePK_JulyNewServer[720729]["Global"]["Space"] = 1
	tElitePK_JulyNewServer[720729]["Global"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720729]["Global"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720729]["Global"]["RewardItem"][1]["Id"] = 3004087
	tElitePK_JulyNewServer[720729]["Global"]["RewardItem"][1]["Attr"] = "0 5"
	-- 新服福利活动新增额外奖励
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"] = {}
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["Id"] = 51418
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["ActivityTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["Pos"] = 0
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["Data"] = 1
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["Space"] = 1
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["RewardItem"] = {}
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["RewardItem"][1] = {}
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["RewardItem"][1]["Id"] = 3301544
	tElitePK_JulyNewServer[720729]["PrivilegeGlobal"]["RewardItem"][1]["Attr"] = "0 2"
	
	
-- 天阶赛
local tElitePK_DayTournament = {}
	tElitePK_DayTournament["ActivityTime"] = tActivityTime["TianjieSai"]["ActivityTime"]
	tElitePK_DayTournament["Global"] = 50990
	tElitePK_DayTournament["Stc"] = {}
	tElitePK_DayTournament["Stc"][1] = {}
	tElitePK_DayTournament["Stc"][1]["EventType"] = 113
	tElitePK_DayTournament["Stc"][1]["DataType"] = 62
	tElitePK_DayTournament["Stc"][2] = {}
	tElitePK_DayTournament["Stc"][2]["EventType"] = 112
	tElitePK_DayTournament["Stc"][2]["DataType"] = 65
	tElitePK_DayTournament["Stc"][3] = {}
	tElitePK_DayTournament["Stc"][3]["EventType"] = 112
	tElitePK_DayTournament["Stc"][3]["DataType"] = 80

	tElitePK_DayTournament["Score"] = {}
	tElitePK_DayTournament["Score"][720714] = 50
	tElitePK_DayTournament["Score"][720718] = 30
	tElitePK_DayTournament["Score"][720722] = 20
	tElitePK_DayTournament["Score"][720726] = 10
	
	tElitePK_DayTournament["Score"][720715] = 50
	tElitePK_DayTournament["Score"][720719] = 30
	tElitePK_DayTournament["Score"][720723] = 20
	tElitePK_DayTournament["Score"][720727] = 10

	tElitePK_DayTournament["Score"][720716] = 50
	tElitePK_DayTournament["Score"][720720] = 30
	tElitePK_DayTournament["Score"][720724] = 20
	tElitePK_DayTournament["Score"][720728] = 10
	
	tElitePK_DayTournament["Score"][720717] = 50
	tElitePK_DayTournament["Score"][720721] = 30
	tElitePK_DayTournament["Score"][720725] = 20
	tElitePK_DayTournament["Score"][720729] = 10

-- 随机物品
local tElitePK_Random = {}
	tElitePK_Random[1] = {}
	tElitePK_Random[1]["ItemChanceSum"] = 22400
	
	tElitePK_Random[1][1] = {}
	tElitePK_Random[1][1]["RandomItemChanceType"] = 2
	tElitePK_Random[1][1]["ItemChance"] = 800
	tElitePK_Random[1][1]["RewardItem"] = {}
	tElitePK_Random[1][1]["RewardItem"][1] = {}
	tElitePK_Random[1][1]["RewardItem"][1]["Id"] = 724404
	tElitePK_Random[1][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][2] = {}
	tElitePK_Random[1][2]["RandomItemChanceType"] = 2
	tElitePK_Random[1][2]["ItemChance"] = 800
	tElitePK_Random[1][2]["RewardItem"] = {}
	tElitePK_Random[1][2]["RewardItem"][1] = {}
	tElitePK_Random[1][2]["RewardItem"][1]["Id"] = 724409
	tElitePK_Random[1][2]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][3] = {}
	tElitePK_Random[1][3]["RandomItemChanceType"] = 2
	tElitePK_Random[1][3]["ItemChance"] = 800
	tElitePK_Random[1][3]["RewardItem"] = {}
	tElitePK_Random[1][3]["RewardItem"][1] = {}
	tElitePK_Random[1][3]["RewardItem"][1]["Id"] = 724414
	tElitePK_Random[1][3]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][4] = {}
	tElitePK_Random[1][4]["RandomItemChanceType"] = 2
	tElitePK_Random[1][4]["ItemChance"] = 800
	tElitePK_Random[1][4]["RewardItem"] = {}
	tElitePK_Random[1][4]["RewardItem"][1] = {}
	tElitePK_Random[1][4]["RewardItem"][1]["Id"] = 724389
	tElitePK_Random[1][4]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][5] = {}
	tElitePK_Random[1][5]["RandomItemChanceType"] = 2
	tElitePK_Random[1][5]["ItemChance"] = 800
	tElitePK_Random[1][5]["RewardItem"] = {}
	tElitePK_Random[1][5]["RewardItem"][1] = {}
	tElitePK_Random[1][5]["RewardItem"][1]["Id"] = 724419
	tElitePK_Random[1][5]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][6] = {}
	tElitePK_Random[1][6]["RandomItemChanceType"] = 2
	tElitePK_Random[1][6]["ItemChance"] = 800
	tElitePK_Random[1][6]["RewardItem"] = {}
	tElitePK_Random[1][6]["RewardItem"][1] = {}
	tElitePK_Random[1][6]["RewardItem"][1]["Id"] = 724424
	tElitePK_Random[1][6]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][7] = {}
	tElitePK_Random[1][7]["RandomItemChanceType"] = 2
	tElitePK_Random[1][7]["ItemChance"] = 800
	tElitePK_Random[1][7]["RewardItem"] = {}
	tElitePK_Random[1][7]["RewardItem"][1] = {}
	tElitePK_Random[1][7]["RewardItem"][1]["Id"] = 724429
	tElitePK_Random[1][7]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][8] = {}
	tElitePK_Random[1][8]["RandomItemChanceType"] = 2
	tElitePK_Random[1][8]["ItemChance"] = 800
	tElitePK_Random[1][8]["RewardItem"] = {}
	tElitePK_Random[1][8]["RewardItem"][1] = {}
	tElitePK_Random[1][8]["RewardItem"][1]["Id"] = 724434
	tElitePK_Random[1][8]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][9] = {}
	tElitePK_Random[1][9]["RandomItemChanceType"] = 2
	tElitePK_Random[1][9]["ItemChance"] = 800
	tElitePK_Random[1][9]["RewardItem"] = {}
	tElitePK_Random[1][9]["RewardItem"][1] = {}
	tElitePK_Random[1][9]["RewardItem"][1]["Id"] = 724439
	tElitePK_Random[1][9]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][10] = {}
	tElitePK_Random[1][10]["RandomItemChanceType"] = 2
	tElitePK_Random[1][10]["ItemChance"] = 800
	tElitePK_Random[1][10]["RewardItem"] = {}
	tElitePK_Random[1][10]["RewardItem"][1] = {}
	tElitePK_Random[1][10]["RewardItem"][1]["Id"] = 724444
	tElitePK_Random[1][10]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][11] = {}
	tElitePK_Random[1][11]["RandomItemChanceType"] = 2
	tElitePK_Random[1][11]["ItemChance"] = 800
	tElitePK_Random[1][11]["RewardItem"] = {}
	tElitePK_Random[1][11]["RewardItem"][1] = {}
	tElitePK_Random[1][11]["RewardItem"][1]["Id"] = 724394
	tElitePK_Random[1][11]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][12] = {}
	tElitePK_Random[1][12]["RandomItemChanceType"] = 2
	tElitePK_Random[1][12]["ItemChance"] = 800
	tElitePK_Random[1][12]["RewardItem"] = {}
	tElitePK_Random[1][12]["RewardItem"][1] = {}
	tElitePK_Random[1][12]["RewardItem"][1]["Id"] = 724453
	tElitePK_Random[1][12]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][13] = {}
	tElitePK_Random[1][13]["RandomItemChanceType"] = 2
	tElitePK_Random[1][13]["ItemChance"] = 800
	tElitePK_Random[1][13]["RewardItem"] = {}
	tElitePK_Random[1][13]["RewardItem"][1] = {}
	tElitePK_Random[1][13]["RewardItem"][1]["Id"] = 724458
	tElitePK_Random[1][13]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][14] = {}
	tElitePK_Random[1][14]["RandomItemChanceType"] = 2
	tElitePK_Random[1][14]["ItemChance"] = 800
	tElitePK_Random[1][14]["RewardItem"] = {}
	tElitePK_Random[1][14]["RewardItem"][1] = {}
	tElitePK_Random[1][14]["RewardItem"][1]["Id"] = 724463
	tElitePK_Random[1][14]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][15] = {}
	tElitePK_Random[1][15]["RandomItemChanceType"] = 2
	tElitePK_Random[1][15]["ItemChance"] = 800
	tElitePK_Random[1][15]["RewardItem"] = {}
	tElitePK_Random[1][15]["RewardItem"][1] = {}
	tElitePK_Random[1][15]["RewardItem"][1]["Id"] = 724472
	tElitePK_Random[1][15]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][16] = {}
	tElitePK_Random[1][16]["RandomItemChanceType"] = 2
	tElitePK_Random[1][16]["ItemChance"] = 800
	tElitePK_Random[1][16]["RewardItem"] = {}
	tElitePK_Random[1][16]["RewardItem"][1] = {}
	tElitePK_Random[1][16]["RewardItem"][1]["Id"] = 724477
	tElitePK_Random[1][16]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][17] = {}
	tElitePK_Random[1][17]["RandomItemChanceType"] = 2
	tElitePK_Random[1][17]["ItemChance"] = 800
	tElitePK_Random[1][17]["RewardItem"] = {}
	tElitePK_Random[1][17]["RewardItem"][1] = {}
	tElitePK_Random[1][17]["RewardItem"][1]["Id"] = 724487
	tElitePK_Random[1][17]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][18] = {}
	tElitePK_Random[1][18]["RandomItemChanceType"] = 2
	tElitePK_Random[1][18]["ItemChance"] = 800
	tElitePK_Random[1][18]["RewardItem"] = {}
	tElitePK_Random[1][18]["RewardItem"][1] = {}
	tElitePK_Random[1][18]["RewardItem"][1]["Id"] = 724482
	tElitePK_Random[1][18]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][19] = {}
	tElitePK_Random[1][19]["RandomItemChanceType"] = 2
	tElitePK_Random[1][19]["ItemChance"] = 800
	tElitePK_Random[1][19]["RewardItem"] = {}
	tElitePK_Random[1][19]["RewardItem"][1] = {}
	tElitePK_Random[1][19]["RewardItem"][1]["Id"] = 724492
	tElitePK_Random[1][19]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][20] = {}
	tElitePK_Random[1][20]["RandomItemChanceType"] = 2
	tElitePK_Random[1][20]["ItemChance"] = 800
	tElitePK_Random[1][20]["RewardItem"] = {}
	tElitePK_Random[1][20]["RewardItem"][1] = {}
	tElitePK_Random[1][20]["RewardItem"][1]["Id"] = 724497
	tElitePK_Random[1][20]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][21] = {}
	tElitePK_Random[1][21]["RandomItemChanceType"] = 2
	tElitePK_Random[1][21]["ItemChance"] = 800
	tElitePK_Random[1][21]["RewardItem"] = {}
	tElitePK_Random[1][21]["RewardItem"][1] = {}
	tElitePK_Random[1][21]["RewardItem"][1]["Id"] = 724352
	tElitePK_Random[1][21]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][22] = {}
	tElitePK_Random[1][22]["RandomItemChanceType"] = 2
	tElitePK_Random[1][22]["ItemChance"] = 800
	tElitePK_Random[1][22]["RewardItem"] = {}
	tElitePK_Random[1][22]["RewardItem"][1] = {}
	tElitePK_Random[1][22]["RewardItem"][1]["Id"] = 724357
	tElitePK_Random[1][22]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][23] = {}
	tElitePK_Random[1][23]["RandomItemChanceType"] = 2
	tElitePK_Random[1][23]["ItemChance"] = 800
	tElitePK_Random[1][23]["RewardItem"] = {}
	tElitePK_Random[1][23]["RewardItem"][1] = {}
	tElitePK_Random[1][23]["RewardItem"][1]["Id"] = 724362
	tElitePK_Random[1][23]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][24] = {}
	tElitePK_Random[1][24]["RandomItemChanceType"] = 2
	tElitePK_Random[1][24]["ItemChance"] = 800
	tElitePK_Random[1][24]["RewardItem"] = {}
	tElitePK_Random[1][24]["RewardItem"][1] = {}
	tElitePK_Random[1][24]["RewardItem"][1]["Id"] = 724367
	tElitePK_Random[1][24]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][25] = {}
	tElitePK_Random[1][25]["RandomItemChanceType"] = 2
	tElitePK_Random[1][25]["ItemChance"] = 800
	tElitePK_Random[1][25]["RewardItem"] = {}
	tElitePK_Random[1][25]["RewardItem"][1] = {}
	tElitePK_Random[1][25]["RewardItem"][1]["Id"] = 724519
	tElitePK_Random[1][25]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][26] = {}
	tElitePK_Random[1][26]["RandomItemChanceType"] = 2
	tElitePK_Random[1][26]["ItemChance"] = 800
	tElitePK_Random[1][26]["RewardItem"] = {}
	tElitePK_Random[1][26]["RewardItem"][1] = {}
	tElitePK_Random[1][26]["RewardItem"][1]["Id"] = 724372
	tElitePK_Random[1][26]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][27] = {}
	tElitePK_Random[1][27]["RandomItemChanceType"] = 2
	tElitePK_Random[1][27]["ItemChance"] = 800
	tElitePK_Random[1][27]["RewardItem"] = {}
	tElitePK_Random[1][27]["RewardItem"][1] = {}
	tElitePK_Random[1][27]["RewardItem"][1]["Id"] = 724377
	tElitePK_Random[1][27]["RewardItem"][1]["Attr"] = "0 1"
	
	tElitePK_Random[1][28] = {}
	tElitePK_Random[1][28]["RandomItemChanceType"] = 2
	tElitePK_Random[1][28]["ItemChance"] = 800
	tElitePK_Random[1][28]["RewardItem"] = {}
	tElitePK_Random[1][28]["RewardItem"][1] = {}
	tElitePK_Random[1][28]["RewardItem"][1]["Id"] = 724384
	tElitePK_Random[1][28]["RewardItem"][1]["Attr"] = "0 1"

-- 额外奖励
local tElitePK_ExtraBonus = {}
	-- 跨服精英PK赛
	tElitePK_ExtraBonus[1] = {}
	tElitePK_ExtraBonus[1]["ActivityTime"] = "2020-07-23 00:00 2020-08-13 23:59"
	tElitePK_ExtraBonus[1][720717] = {}
	tElitePK_ExtraBonus[1][720717]["Index"] = 1
	tElitePK_ExtraBonus[1][720721] = {}
	tElitePK_ExtraBonus[1][720721]["Index"] = 1
	tElitePK_ExtraBonus[1][720725] = {}
	tElitePK_ExtraBonus[1][720725]["Index"] = 1
	tElitePK_ExtraBonus[1][720729] = {}
	tElitePK_ExtraBonus[1][720729]["Index"] = 1
	tElitePK_ExtraBonus[1][720716] = {}
	tElitePK_ExtraBonus[1][720716]["Index"] = 1
	tElitePK_ExtraBonus[1][720720] = {}
	tElitePK_ExtraBonus[1][720720]["Index"] = 1
	tElitePK_ExtraBonus[1][720724] = {}
	tElitePK_ExtraBonus[1][720724]["Index"] = 1
	tElitePK_ExtraBonus[1][720728] = {}
	tElitePK_ExtraBonus[1][720728]["Index"] = 1
	tElitePK_ExtraBonus[1][720715] = {}
	tElitePK_ExtraBonus[1][720715]["Index"] = 1
	tElitePK_ExtraBonus[1][720719] = {}
	tElitePK_ExtraBonus[1][720719]["Index"] = 1
	tElitePK_ExtraBonus[1][720723] = {}
	tElitePK_ExtraBonus[1][720723]["Index"] = 1
	tElitePK_ExtraBonus[1][720727] = {}
	tElitePK_ExtraBonus[1][720727]["Index"] = 1

	-- 奖励类型
	tElitePK_ExtraBonus[1][1] = {}
	tElitePK_ExtraBonus[1][1]["Space"] = 1
	tElitePK_ExtraBonus[1][1]["RewardItem"] = {}
	tElitePK_ExtraBonus[1][1]["RewardItem"][1] = {}
	tElitePK_ExtraBonus[1][1]["RewardItem"][1]["Id"] = 3300020
	tElitePK_ExtraBonus[1][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 帮派建设 精英PK赛120+级段 第一名礼包增加200个大理石 第二名礼包增加120个大理石 第三名礼包增加80个大理石
	-- tElitePK_ExtraBonus[2] = {}
	-- tElitePK_ExtraBonus[2]["ActivityTime"] = "2017-03-20 00:00 2017-04-10 23:59"
	-- tElitePK_ExtraBonus[2][720716] = {}
	-- tElitePK_ExtraBonus[2][720716]["Index"] = 1
	-- tElitePK_ExtraBonus[2][720720] = {}
	-- tElitePK_ExtraBonus[2][720720]["Index"] = 2
	-- tElitePK_ExtraBonus[2][720724] = {}
	-- tElitePK_ExtraBonus[2][720724]["Index"] = 3
	-- tElitePK_ExtraBonus[2][720717] = {}
	-- tElitePK_ExtraBonus[2][720717]["Index"] = 4
	-- tElitePK_ExtraBonus[2][720721] = {}
	-- tElitePK_ExtraBonus[2][720721]["Index"] = 5
	-- tElitePK_ExtraBonus[2][720725] = {}
	-- tElitePK_ExtraBonus[2][720725]["Index"] = 6
	-- tElitePK_ExtraBonus[2][1] = {}
	-- tElitePK_ExtraBonus[2][1]["Space"] = 2
	-- tElitePK_ExtraBonus[2][1]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[2][1]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[2][1]["RewardItem"][1]["Id"] = 3003496
	-- tElitePK_ExtraBonus[2][1]["RewardItem"][1]["Attr"] = "0 200"
	-- tElitePK_ExtraBonus[2][2] = {}
	-- tElitePK_ExtraBonus[2][2]["Space"] = 2
	-- tElitePK_ExtraBonus[2][2]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[2][2]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[2][2]["RewardItem"][1]["Id"] = 3003496
	-- tElitePK_ExtraBonus[2][2]["RewardItem"][1]["Attr"] = "0 120"
	-- tElitePK_ExtraBonus[2][3] = {}
	-- tElitePK_ExtraBonus[2][3]["Space"] = 1
	-- tElitePK_ExtraBonus[2][3]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[2][3]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[2][3]["RewardItem"][1]["Id"] = 3003496
	-- tElitePK_ExtraBonus[2][3]["RewardItem"][1]["Attr"] = "0 80"
	-- tElitePK_ExtraBonus[2][4] = {}
	-- tElitePK_ExtraBonus[2][4]["Space"] = 2
	-- tElitePK_ExtraBonus[2][4]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[2][4]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[2][4]["RewardItem"][1]["Id"] = 3003496
	-- tElitePK_ExtraBonus[2][4]["RewardItem"][1]["Attr"] = "0 200"
	-- tElitePK_ExtraBonus[2][5] = {}
	-- tElitePK_ExtraBonus[2][5]["Space"] = 2
	-- tElitePK_ExtraBonus[2][5]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[2][5]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[2][5]["RewardItem"][1]["Id"] = 3003496
	-- tElitePK_ExtraBonus[2][5]["RewardItem"][1]["Attr"] = "0 120"
	-- tElitePK_ExtraBonus[2][6] = {}
	-- tElitePK_ExtraBonus[2][6]["Space"] = 1
	-- tElitePK_ExtraBonus[2][6]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[2][6]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[2][6]["RewardItem"][1]["Id"] = 3003496
	-- tElitePK_ExtraBonus[2][6]["RewardItem"][1]["Attr"] = "0 80"

	-- 跨服组队PK赛
	-- tElitePK_ExtraBonus[3] = {}
	-- tElitePK_ExtraBonus[3]["ActivityTime"] = tActivityTime["ServerTeamPk"]["Ticket"]
	-- tElitePK_ExtraBonus[3][720717] = {}
	-- tElitePK_ExtraBonus[3][720717]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720721] = {}
	-- tElitePK_ExtraBonus[3][720721]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720725] = {}
	-- tElitePK_ExtraBonus[3][720725]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720729] = {}
	-- tElitePK_ExtraBonus[3][720729]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720716] = {}
	-- tElitePK_ExtraBonus[3][720716]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720720] = {}
	-- tElitePK_ExtraBonus[3][720720]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720724] = {}
	-- tElitePK_ExtraBonus[3][720724]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720728] = {}
	-- tElitePK_ExtraBonus[3][720728]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720715] = {}
	-- tElitePK_ExtraBonus[3][720715]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720719] = {}
	-- tElitePK_ExtraBonus[3][720719]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720723] = {}
	-- tElitePK_ExtraBonus[3][720723]["Index"] = 1
	-- tElitePK_ExtraBonus[3][720727] = {}
	-- tElitePK_ExtraBonus[3][720727]["Index"] = 1

	-- 奖励类型
	-- tElitePK_ExtraBonus[3][1] = {}
	-- tElitePK_ExtraBonus[3][1]["Space"] = 1
	-- tElitePK_ExtraBonus[3][1]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[3][1]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[3][1]["RewardItem"][1]["Id"] = 3303237
	-- tElitePK_ExtraBonus[3][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- --7月第一届CO地图争霸活动
	-- tElitePK_ExtraBonus[4] = {}
	-- tElitePK_ExtraBonus[4]["ActivityTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
	-- tElitePK_ExtraBonus[4][720717] = {}
	-- tElitePK_ExtraBonus[4][720717]["Index"] = 1
	-- tElitePK_ExtraBonus[4][720721] = {}
	-- tElitePK_ExtraBonus[4][720721]["Index"] = 2
	-- tElitePK_ExtraBonus[4][720725] = {}
	-- tElitePK_ExtraBonus[4][720725]["Index"] = 3
	-- tElitePK_ExtraBonus[4][720729] = {}
	-- tElitePK_ExtraBonus[4][720729]["Index"] = 4
	-- tElitePK_ExtraBonus[4][720716] = {}
	-- tElitePK_ExtraBonus[4][720716]["Index"] = 1
	-- tElitePK_ExtraBonus[4][720720] = {}
	-- tElitePK_ExtraBonus[4][720720]["Index"] = 2
	-- tElitePK_ExtraBonus[4][720724] = {}
	-- tElitePK_ExtraBonus[4][720724]["Index"] = 3
	-- tElitePK_ExtraBonus[4][720728] = {}
	-- tElitePK_ExtraBonus[4][720728]["Index"] = 4
	-- tElitePK_ExtraBonus[4][720715] = {}
	-- tElitePK_ExtraBonus[4][720715]["Index"] = 1
	-- tElitePK_ExtraBonus[4][720719] = {}
	-- tElitePK_ExtraBonus[4][720719]["Index"] = 2
	-- tElitePK_ExtraBonus[4][720723] = {}
	-- tElitePK_ExtraBonus[4][720723]["Index"] = 3
	-- tElitePK_ExtraBonus[4][720727] = {}
	-- tElitePK_ExtraBonus[4][720727]["Index"] = 4
	-- tElitePK_ExtraBonus[4][720714] = {}
	-- tElitePK_ExtraBonus[4][720714]["Index"] = 1
	-- tElitePK_ExtraBonus[4][720718] = {}
	-- tElitePK_ExtraBonus[4][720718]["Index"] = 2
	-- tElitePK_ExtraBonus[4][720722] = {}
	-- tElitePK_ExtraBonus[4][720722]["Index"] = 3
	-- tElitePK_ExtraBonus[4][720726] = {}
	-- tElitePK_ExtraBonus[4][720726]["Index"] = 4

	-- -- 奖励类型
	-- tElitePK_ExtraBonus[4][1] = {}
	-- tElitePK_ExtraBonus[4][1]["Space"] = 1
	-- tElitePK_ExtraBonus[4][1]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[4][1]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[4][1]["RewardItem"][1]["Id"] = 3309765
	-- tElitePK_ExtraBonus[4][1]["RewardItem"][1]["Attr"] = "0 30"
	
	-- tElitePK_ExtraBonus[4][2] = {}
	-- tElitePK_ExtraBonus[4][2]["Space"] = 1
	-- tElitePK_ExtraBonus[4][2]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[4][2]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[4][2]["RewardItem"][1]["Id"] = 3309765
	-- tElitePK_ExtraBonus[4][2]["RewardItem"][1]["Attr"] = "0 20"
	
	-- tElitePK_ExtraBonus[4][3] = {}
	-- tElitePK_ExtraBonus[4][3]["Space"] = 1
	-- tElitePK_ExtraBonus[4][3]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[4][3]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[4][3]["RewardItem"][1]["Id"] = 3309765
	-- tElitePK_ExtraBonus[4][3]["RewardItem"][1]["Attr"] = "0 15"
	
	-- tElitePK_ExtraBonus[4][4] = {}
	-- tElitePK_ExtraBonus[4][4]["Space"] = 1
	-- tElitePK_ExtraBonus[4][4]["RewardItem"] = {}
	-- tElitePK_ExtraBonus[4][4]["RewardItem"][1] = {}
	-- tElitePK_ExtraBonus[4][4]["RewardItem"][1]["Id"] = 3309765
	-- tElitePK_ExtraBonus[4][4]["RewardItem"][1]["Attr"] = "0 10"
--8颗微光星陨石
local tElitePK_Starstone = {}
local tElitePK_Starstone_NoGift = {}
tElitePK_Starstone[3307068] = {}
tElitePK_Starstone[3307068]["RewardItem"] = {}
tElitePK_Starstone[3307068]["RewardItem"][1] = {} 
tElitePK_Starstone[3307068]["RewardItem"][1]["Id"] = 3009000
tElitePK_Starstone[3307068]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
tElitePK_Starstone[3307068]["LogId"] = 10000156
tElitePK_Starstone[3307068]["DeleteItem"] = {}
tElitePK_Starstone[3307068]["DeleteItem"][1] = {}
tElitePK_Starstone[3307068]["DeleteItem"][1]["Id"] = 3307068

--四颗明亮星陨石礼包
tElitePK_Starstone[3307069] = {}
tElitePK_Starstone[3307069]["RewardItem"] = {}
tElitePK_Starstone[3307069]["RewardItem"][1] = {} 
tElitePK_Starstone[3307069]["RewardItem"][1]["Id"] = 3009001
tElitePK_Starstone[3307069]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
tElitePK_Starstone[3307069]["LogId"] = 10000156
tElitePK_Starstone[3307069]["DeleteItem"] = {}
tElitePK_Starstone[3307069]["DeleteItem"][1] = {}
tElitePK_Starstone[3307069]["DeleteItem"][1]["Id"] = 3307069

--两颗回气丹(赠)
tElitePK_Starstone[3307016] = {}
tElitePK_Starstone[3307016]["RewardItem"] = {}
tElitePK_Starstone[3307016]["RewardItem"][1] = {} 
tElitePK_Starstone[3307016]["RewardItem"][1]["Id"] = 729242
tElitePK_Starstone[3307016]["RewardItem"][1]["Attr"] = "0 2 3 2880 1"
tElitePK_Starstone[3307016]["LogId"] = 10000156
tElitePK_Starstone[3307016]["DeleteItem"] = {}
tElitePK_Starstone[3307016]["DeleteItem"][1] = {}
tElitePK_Starstone[3307016]["DeleteItem"][1]["Id"] = 3307016

--三颗回气丹(赠)
tElitePK_Starstone[3307017] = {}
tElitePK_Starstone[3307017]["RewardItem"] = {}
tElitePK_Starstone[3307017]["RewardItem"][1] = {} 
tElitePK_Starstone[3307017]["RewardItem"][1]["Id"] = 729242
tElitePK_Starstone[3307017]["RewardItem"][1]["Attr"] = "0 3 3 2880 1"
tElitePK_Starstone[3307017]["LogId"] = 10000156
tElitePK_Starstone[3307017]["DeleteItem"] = {}
tElitePK_Starstone[3307017]["DeleteItem"][1] = {}
tElitePK_Starstone[3307017]["DeleteItem"][1]["Id"] = 3307017

--四颗回气丹(赠)
tElitePK_Starstone[3307018] = {}
tElitePK_Starstone[3307018]["RewardItem"] = {}
tElitePK_Starstone[3307018]["RewardItem"][1] = {} 
tElitePK_Starstone[3307018]["RewardItem"][1]["Id"] = 729242
tElitePK_Starstone[3307018]["RewardItem"][1]["Attr"] = "0 4 3 2880 1"
tElitePK_Starstone[3307018]["LogId"] = 10000156
tElitePK_Starstone[3307018]["DeleteItem"] = {}
tElitePK_Starstone[3307018]["DeleteItem"][1] = {}
tElitePK_Starstone[3307018]["DeleteItem"][1]["Id"] = 3307018

--五颗回气丹(赠)
tElitePK_Starstone[3307019] = {}
tElitePK_Starstone[3307019]["RewardItem"] = {}
tElitePK_Starstone[3307019]["RewardItem"][1] = {} 
tElitePK_Starstone[3307019]["RewardItem"][1]["Id"] = 729242
tElitePK_Starstone[3307019]["RewardItem"][1]["Attr"] = "0 5 3 2880 1"
tElitePK_Starstone[3307019]["LogId"] = 10000156
tElitePK_Starstone[3307019]["DeleteItem"] = {}
tElitePK_Starstone[3307019]["DeleteItem"][1] = {}
tElitePK_Starstone[3307019]["DeleteItem"][1]["Id"] = 3307019

--Refined职业PK赛冠军礼盒
tElitePK_Starstone[3307012] = {}
tElitePK_Starstone[3307012]["RewardItem"] = {}
tElitePK_Starstone[3307012]["RewardItem"][1] = {} 
tElitePK_Starstone[3307012]["RewardItem"][1]["Id"] = 728884
tElitePK_Starstone[3307012]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_Starstone[3307012]["RewardItem"][2] = {} 
tElitePK_Starstone[3307012]["RewardItem"][2]["Id"] = 3307746
tElitePK_Starstone[3307012]["RewardItem"][2]["Attr"] = "0 1"
tElitePK_Starstone[3307012]["RewardItem"][3] = {} 
tElitePK_Starstone[3307012]["RewardItem"][3]["Id"] = 3307016
tElitePK_Starstone[3307012]["RewardItem"][3]["Attr"] = "0 1"
tElitePK_Starstone[3307012]["LogId"] = 10000156
tElitePK_Starstone[3307012]["DeleteItem"] = {}
tElitePK_Starstone[3307012]["DeleteItem"][1] = {}
tElitePK_Starstone[3307012]["DeleteItem"][1]["Id"] = 3307012

--Unique职业PK赛冠军礼盒
tElitePK_Starstone[3307013] = {}
tElitePK_Starstone[3307013]["RewardItem"] = {}
tElitePK_Starstone[3307013]["RewardItem"][1] = {} 
tElitePK_Starstone[3307013]["RewardItem"][1]["Id"] = 728885
tElitePK_Starstone[3307013]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_Starstone[3307013]["RewardItem"][2] = {} 
tElitePK_Starstone[3307013]["RewardItem"][2]["Id"] = 3307747
tElitePK_Starstone[3307013]["RewardItem"][2]["Attr"] = "0 1"
tElitePK_Starstone[3307013]["RewardItem"][3] = {} 
tElitePK_Starstone[3307013]["RewardItem"][3]["Id"] = 3307017
tElitePK_Starstone[3307013]["RewardItem"][3]["Attr"] = "0 1"
tElitePK_Starstone[3307013]["LogId"] = 10000156
tElitePK_Starstone[3307013]["DeleteItem"] = {}
tElitePK_Starstone[3307013]["DeleteItem"][1] = {}
tElitePK_Starstone[3307013]["DeleteItem"][1]["Id"] = 3307013

--Elite职业PK赛冠军礼盒
tElitePK_Starstone[3307014] = {}
tElitePK_Starstone[3307014]["RewardItem"] = {}
tElitePK_Starstone[3307014]["RewardItem"][1] = {} 
tElitePK_Starstone[3307014]["RewardItem"][1]["Id"] = 728886
tElitePK_Starstone[3307014]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_Starstone[3307014]["RewardItem"][2] = {} 
tElitePK_Starstone[3307014]["RewardItem"][2]["Id"] = 3307748
tElitePK_Starstone[3307014]["RewardItem"][2]["Attr"] = "0 1"
tElitePK_Starstone[3307014]["RewardItem"][3] = {} 
tElitePK_Starstone[3307014]["RewardItem"][3]["Id"] = 3307018
tElitePK_Starstone[3307014]["RewardItem"][3]["Attr"] = "0 1"
tElitePK_Starstone[3307014]["LogId"] = 10000156
tElitePK_Starstone[3307014]["DeleteItem"] = {}
tElitePK_Starstone[3307014]["DeleteItem"][1] = {}
tElitePK_Starstone[3307014]["DeleteItem"][1]["Id"] = 3307014

--Super职业PK赛冠军礼盒
tElitePK_Starstone[3307015] = {}
tElitePK_Starstone[3307015]["RewardItem"] = {}
tElitePK_Starstone[3307015]["RewardItem"][1] = {} 
tElitePK_Starstone[3307015]["RewardItem"][1]["Id"] = 728887
tElitePK_Starstone[3307015]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_Starstone[3307015]["RewardItem"][2] = {} 
tElitePK_Starstone[3307015]["RewardItem"][2]["Id"] = 3307749
tElitePK_Starstone[3307015]["RewardItem"][2]["Attr"] = "0 1"
tElitePK_Starstone[3307015]["RewardItem"][3] = {} 
tElitePK_Starstone[3307015]["RewardItem"][3]["Id"] = 3307019
tElitePK_Starstone[3307015]["RewardItem"][3]["Attr"] = "0 1"
tElitePK_Starstone[3307015]["RewardItem"][4] = {} 
tElitePK_Starstone[3307015]["RewardItem"][4]["Id"] = 3009100
tElitePK_Starstone[3307015]["RewardItem"][4]["Attr"] = "0 5"
tElitePK_Starstone[3307015]["LogId"] = 10000156
tElitePK_Starstone[3307015]["DeleteItem"] = {}
tElitePK_Starstone[3307015]["DeleteItem"][1] = {}
tElitePK_Starstone[3307015]["DeleteItem"][1]["Id"] = 3307015

--Super职业PK赛冠军礼盒激情服
tElitePK_Starstone_NoGift[3307015] = {}
tElitePK_Starstone_NoGift[3307015]["RewardItem"] = {}
tElitePK_Starstone_NoGift[3307015]["RewardItem"][1] = {} 
tElitePK_Starstone_NoGift[3307015]["RewardItem"][1]["Id"] = 728887
tElitePK_Starstone_NoGift[3307015]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_Starstone_NoGift[3307015]["RewardItem"][2] = {} 
tElitePK_Starstone_NoGift[3307015]["RewardItem"][2]["Id"] = 3307749
tElitePK_Starstone_NoGift[3307015]["RewardItem"][2]["Attr"] = "0 1"
tElitePK_Starstone_NoGift[3307015]["RewardItem"][3] = {} 
tElitePK_Starstone_NoGift[3307015]["RewardItem"][3]["Id"] = 3307019
tElitePK_Starstone_NoGift[3307015]["RewardItem"][3]["Attr"] = "0 1"
tElitePK_Starstone_NoGift[3307015]["LogId"] = 10000156
tElitePK_Starstone_NoGift[3307015]["DeleteItem"] = {}
tElitePK_Starstone_NoGift[3307015]["DeleteItem"][1] = {}
tElitePK_Starstone_NoGift[3307015]["DeleteItem"][1]["Id"] = 3307015

-- 勇士特权月	如果勇士职业获得了精英PK赛冠军，可以额外获得奖励
local tElitePK_PrivilegeMonthExtra = {}
	-- ===精英pK赛冠军,130级以上
	-- ===索引: tElitePK_PrivilegeMonthExtra[720717]
	-- ===
	tElitePK_PrivilegeMonthExtra[720717] = {}
	tElitePK_PrivilegeMonthExtra[720717]["LogId"] = 12001426
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"] = {}
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"][1] = {}
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"][1]["Id"] = 3319013 -- 【库】(+1)稀有黄色神纹随机包(赠)[属性:9], 【表格】（+1）稀有黄色神纹随机
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"][2] = {}
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"][2]["Id"] = 3009101 -- 【库】龙鳞果[属性:9], 【表格】龙鳞果*100
	tElitePK_PrivilegeMonthExtra[720717]["RewardItem"][2]["Attr"] = "0 100" -- 龙鳞果*100
	tElitePK_PrivilegeMonthExtra[720717]["RewardStrengthValue"] = {}
	tElitePK_PrivilegeMonthExtra[720717]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tElitePK_PrivilegeMonthExtra[720717]["RewardEffect"] = {}
	tElitePK_PrivilegeMonthExtra[720717]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tElitePK_PrivilegeMonthExtra[720717]["RewardEffect"]["Effect"] = "angelwing"


	tElitePK_PrivilegeMonthExtra[720716] = {}
	-- ===精英pK赛冠军,120~129级
	-- ===索引: tElitePK_PrivilegeMonthExtra[720716]
	-- ===
	tElitePK_PrivilegeMonthExtra[720716]["LogId"] = 12001426
	tElitePK_PrivilegeMonthExtra[720716]["RewardItem"] = {}
	tElitePK_PrivilegeMonthExtra[720716]["RewardItem"][1] = {}
	tElitePK_PrivilegeMonthExtra[720716]["RewardItem"][1]["Id"] = 3009101 -- 【库】龙鳞果[属性:9], 【表格】龙鳞果*100
	tElitePK_PrivilegeMonthExtra[720716]["RewardItem"][1]["Attr"] = "0 100" -- 龙鳞果*100
	tElitePK_PrivilegeMonthExtra[720716]["RewardStrengthValue"] = {}
	tElitePK_PrivilegeMonthExtra[720716]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tElitePK_PrivilegeMonthExtra[720716]["RewardEffect"] = {}
	tElitePK_PrivilegeMonthExtra[720716]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tElitePK_PrivilegeMonthExtra[720716]["RewardEffect"]["Effect"] = "angelwing"


	tElitePK_PrivilegeMonthExtra[720715] = {}
	-- ===精英pK赛冠军,110~119级
	-- ===索引: tElitePK_PrivilegeMonthExtra[720715]
	-- ===
	tElitePK_PrivilegeMonthExtra[720715]["LogId"] = 12001426
	tElitePK_PrivilegeMonthExtra[720715]["RewardItem"] = {}
	tElitePK_PrivilegeMonthExtra[720715]["RewardItem"][1] = {}
	tElitePK_PrivilegeMonthExtra[720715]["RewardItem"][1]["Id"] = 3009101 -- 【库】龙鳞果[属性:9], 【表格】龙鳞果*50
	tElitePK_PrivilegeMonthExtra[720715]["RewardItem"][1]["Attr"] = "0 50" -- 龙鳞果*50
	tElitePK_PrivilegeMonthExtra[720715]["RewardStrengthValue"] = {}
	tElitePK_PrivilegeMonthExtra[720715]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tElitePK_PrivilegeMonthExtra[720715]["RewardEffect"] = {}
	tElitePK_PrivilegeMonthExtra[720715]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tElitePK_PrivilegeMonthExtra[720715]["RewardEffect"]["Effect"] = "angelwing"


	tElitePK_PrivilegeMonthExtra[720714] = {}
	-- ===精英pK赛冠军,100级以下
	-- ===索引: tElitePK_PrivilegeMonthExtra[720714]
	-- ===
	tElitePK_PrivilegeMonthExtra[720714]["LogId"] = 12001426
	tElitePK_PrivilegeMonthExtra[720714]["RewardItem"] = {}
	tElitePK_PrivilegeMonthExtra[720714]["RewardItem"][1] = {}
	tElitePK_PrivilegeMonthExtra[720714]["RewardItem"][1]["Id"] = 3009101 -- 【库】龙鳞果[属性:9], 【表格】龙鳞果*30
	tElitePK_PrivilegeMonthExtra[720714]["RewardItem"][1]["Attr"] = "0 30" -- 龙鳞果*30
	tElitePK_PrivilegeMonthExtra[720714]["RewardStrengthValue"] = {}
	tElitePK_PrivilegeMonthExtra[720714]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tElitePK_PrivilegeMonthExtra[720714]["RewardEffect"] = {}
	tElitePK_PrivilegeMonthExtra[720714]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tElitePK_PrivilegeMonthExtra[720714]["RewardEffect"]["Effect"] = "angelwing"

local tElitePK_OctoberSever = {}

-- ===索引: tElitePK_OctoberSever[720717]
-- ===删除: 720717,1
tElitePK_OctoberSever[720717] = {}
tElitePK_OctoberSever[720717]["RewardItem"] = {}
tElitePK_OctoberSever[720717]["RewardItem"][1] = {}
tElitePK_OctoberSever[720717]["RewardItem"][1]["Id"] = 3314014 -- 【库】 3314014 【1000CPsPack】[属性:8]
tElitePK_OctoberSever[720717]["RewardItem"][1]["Attr"] = "0 2"
tElitePK_OctoberSever[720717]["RewardEffect"] = {}
tElitePK_OctoberSever[720717]["RewardEffect"]["SzObj"] = "self"
tElitePK_OctoberSever[720717]["RewardEffect"]["Effect"] = "angelwing"

-- ===索引: tElitePK_OctoberSever[720721]
-- ===删除: 720721,1
tElitePK_OctoberSever[720721] = {}
tElitePK_OctoberSever[720721]["RewardItem"] = {}
tElitePK_OctoberSever[720721]["RewardItem"][1] = {}
tElitePK_OctoberSever[720721]["RewardItem"][1]["Id"] = 3314017 -- 【库】 3314017【500CPsPack】[属性:8]
tElitePK_OctoberSever[720721]["RewardItem"][1]["Attr"] = "0 3"
tElitePK_OctoberSever[720721]["RewardEffect"] = {}
tElitePK_OctoberSever[720721]["RewardEffect"]["SzObj"] = "self"
tElitePK_OctoberSever[720721]["RewardEffect"]["Effect"] = "angelwing"

-- ===索引: tElitePK_OctoberSever[720725]
-- ===删除: 720725,1
tElitePK_OctoberSever[720725] = {}
tElitePK_OctoberSever[720725]["RewardItem"] = {}
tElitePK_OctoberSever[720725]["RewardItem"][1] = {}
tElitePK_OctoberSever[720725]["RewardItem"][1]["Id"] = 3314014 -- 【库】 3314014 【1000CPsPack】[属性:8]
tElitePK_OctoberSever[720725]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_OctoberSever[720725]["RewardEffect"] = {}
tElitePK_OctoberSever[720725]["RewardEffect"]["SzObj"] = "self"
tElitePK_OctoberSever[720725]["RewardEffect"]["Effect"] = "angelwing"

-- ===索引: tElitePK_OctoberSever[720729]
-- ===删除: 720729,1
tElitePK_OctoberSever[720729] = {}
tElitePK_OctoberSever[720729]["RewardItem"] = {}
tElitePK_OctoberSever[720729]["RewardItem"][1] = {}
tElitePK_OctoberSever[720729]["RewardItem"][1]["Id"] = 3314017 -- 【库】 3314017【500CPsPack】[属性:8]
tElitePK_OctoberSever[720729]["RewardItem"][1]["Attr"] = "0 1"
tElitePK_OctoberSever[720729]["RewardEffect"] = {}
tElitePK_OctoberSever[720729]["RewardEffect"]["SzObj"] = "self"
tElitePK_OctoberSever[720729]["RewardEffect"]["Effect"] = "angelwing"

--新老服区分globalid 
local tElitePK_NewGlobalId = {}
tElitePK_NewGlobalId["Global"] = 53779
--------------------------------逻辑部分------------------------------------------
-- 判断是否新服天阶赛
function ElitePK_NewSeverTjs()
	if Get_SysDynaGlobalData2(tElitePK_DayTournament["Global"]) == 1 then
		tElitePK_DayTournament["ActivityTime"] = tActivityTime["TianjieSai"]["NewActivityTime"]
	end
end

--新礼包打开礼包
function ElitePK_OpenPack(nItemId)
	local nUserId = Get_UserId()
	--内嵌世界版图探索活动
	if nItemId == 3307012 or nItemId == 3307013 or nItemId == 3307014 or nItemId == 3307015 then
		MapExploration_AddStc(29,nUserId)
	end 
	
	local tReward = CommonFunc_Copy(tElitePK_Starstone[nItemId])
	if SpecialServer_ChkNoGiftServer() then
		if tElitePK_Starstone_NoGift[nItemId] ~= nil then
			tReward = CommonFunc_Copy(tElitePK_Starstone_NoGift[nItemId])
		end
	end

	if Item_ChkMulItem(nItemId,nItemId,1) then
		local nSpace = RewardTemplate_GetRewardSpace(tReward)
		
		--7月第一届CO地图争霸活动
		if nItemId == 3307012 or nItemId == 3307013 or nItemId == 3307014 or nItemId == 3307015 then
			if  Sys_ChkFullTime(tActivityTime["CoMapCompetition"]["ActTime"]) then
				nSpace = nSpace + 1
			end
		end
		
		
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tElitePK_Text["NoSpace"],nSpace))
			return
		end
		RewardTemplate_UseItemAndMsg(tReward)
		
		if nItemId == 3307012 or nItemId == 3307013 or nItemId == 3307014 or nItemId == 3307015 then
			CoMapCompetition_Pack(7)

			--王者服
			KingServer_Reward(12)
			
			--10月新服
			OctNewServer_PKScore(nItemId)
		end
	end
end

--新礼包获得相关奖励
function ElitePK_GetAward(nItemId,nTip)
	
	local nUserId = Get_UserId()

	-- 检测当前地图是否可以加经验
	local nMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nMapId)
	local bGlobal = false
	local bPriGlobal = false
	
	if Sys_ParseNumbersContain(tElitePK_Constant["NoExp"],nMapType) then
		User_TalkChannel2005(tElitePK_Text["NoExp"],nUserId)
		return
	end
	
	-- 判断背包空间
	local nSpace = tElitePK_Item[nItemId]["Space"]
	local nAddSpace = ElitePK_GetSpace(nItemId)
	nSpace = nSpace + nAddSpace
	
	-- 7月第一届CO地图争霸活动
	if  Sys_ChkFullTime(tActivityTime["CoMapCompetition"]["ActTime"]) then
		nSpace = nSpace + 1
	end
	
	local bFlag, nPMExtraSpace = ElitePK_PrivilegeMonthExtraSpace(nItemId)
	nSpace = nSpace + nPMExtraSpace
	
	--日常得积分
	if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		if not CommonFunc_ChkGoldServer() then
			nSpace = nSpace +1
		end
	end
	
	if tElitePK_Item[nItemId]["Global"] ~= nil then
		if Sys_ChkFullTime(tElitePK_Item[nItemId]["Global"]["ActivityTime"]) then
		local nGlobalId = tElitePK_Item[nItemId]["Global"]["Id"]
		local nPos = tElitePK_Item[nItemId]["Global"]["Pos"]
		local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
		
		if nData == tElitePK_Item[nItemId]["Global"]["Data"] then
			bGlobal = true
			nSpace = nSpace + tElitePK_Item[nItemId]["Global"]["Space"]
			end
		end
	end
	if tElitePK_Item[nItemId]["PrivilegeGlobal"] ~= nil then
		if Sys_ChkFullTime(tElitePK_Item[nItemId]["PrivilegeGlobal"]["ActivityTime"]) then
			local nGlobalId = tElitePK_Item[nItemId]["PrivilegeGlobal"]["Id"]
			local nPos = tElitePK_Item[nItemId]["PrivilegeGlobal"]["Pos"]
			local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
			if nData == tElitePK_Item[nItemId]["PrivilegeGlobal"]["Data"] then
				bPriGlobal = true
				nSpace = nSpace + tElitePK_Item[nItemId]["PrivilegeGlobal"]["Space"]
			end
		end
	end
	
	--10月新服2背包空间判断
	local nGetGlobalId = Get_SysDynaGlobalData0(tElitePK_NewGlobalId["Global"])
	if nGetGlobalId == 1 and Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["HundredActivityTime"]) 
		and tElitePK_OctoberSever[nItemId] ~= nil then
		nSpace = nSpace + 1
	end
	
	if not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(string.format(tElitePK_Text["NoSpace"],nSpace),nUserId)
		return
	end
	
	-- 判断天石上限
	local nEmoneyTop = tElitePK_Item[nItemId]["EmoneyTop"]
	
	if nEmoneyTop ~= nil then
		local nUserEmoney = Get_UserEMoney()
		
		if not (nUserEmoney < nEmoneyTop) then
			User_TalkChannel2005(tElitePK_Text["EmoneyTop"],nUserId)
			return
		end
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local sIndex = "Talk"
	-- 判断等级
	local nLevel = Get_UserLevel(nUserId)
	local nNeedLevel = tElitePK_Item[nItemId]["Level"]
	
	--经验和气力值在130以上就不加了
	
	--1加经验,2加气力
	if nNeedLevel ~= nil and nLevel < nNeedLevel then
		if nTip == 1 then
			local nAddTime = math.floor(tUpLevTime[nLevel]*tElitePK_Item[nItemId]["AddExp"])
			sIndex = "Exp"
			nAddTime = math.ceil(nAddTime/10)
			--User_AddExpTime(nAddTime,nUserId)
			tElitePK_Item[nItemId]["RewardExpTime"]["Value"] = nAddTime
			tElitePK_Item[nItemId]["RewardStrengthValue"]["Value"] = 0
		end 
		if nTip == 2 then
			tElitePK_Item[nItemId]["RewardStrengthValue"]["Value"] = tElitePK_Item[nItemId]["AddStrengthValue"]
			tElitePK_Item[nItemId]["RewardExpTime"]["Value"] = 0
		end
	end
	
	
	-- 给奖励
	if nTip == 3 then
		if nItemId == 720717 then
			ElitePKChampionshipWings()
		end
		
		--7月新服
		if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
			RewardTemplate_UseItem(tElitePK_JulyNewServer[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId]["NewSuccess"])
		else
			local tReward = CommonFunc_Copy(tElitePK_Item[nItemId])
			local sTalk = tElitePK_SelectItem[nItemId]["Success"]
			if SpecialServer_ChkNoGiftServer() then
				if tElitePK_Item_NoGift[nItemId] ~= nil then
					tReward = CommonFunc_Copy(tElitePK_Item_NoGift[nItemId])
					sTalk = tElitePK_SelectItem_NoGift[nItemId]["Success"]
				end
			end
			RewardTemplate_UseItemAndMsg(tReward,nUserId)
			--User_TalkChannel2005(sTalk)
		end
		
	else
		--7月新服
		if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
			RewardTemplate_UseItem(tElitePK_JulyNewServer[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId][nTip]["NewSuccess"])
		else
			RewardTemplate_UseItem(tElitePK_Item[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId][nTip]["Success"])
		end
	end

	
	
	if nItemId >=720714 and nItemId <= 720717 then
		Dailypoint_RewardDraw(10)
	end
	if nItemId >=720718 and nItemId <= 720721 then
		Dailypoint_RewardDraw(11)
	end
	if nItemId >=720722 and nItemId <= 720725 then
		Dailypoint_RewardDraw(12)
	end
	if nItemId >=720726 and nItemId <= 720729 then
		Dailypoint_RewardDraw(9)
	end
	-- 7月第一届CO地图争霸活动
	if nItemId >=720714 and nItemId <= 720717 then
		CoMapCompetition_Pack(nItemId,3)
	end
	if nItemId >=720718 and nItemId <= 720721 then
		CoMapCompetition_Pack(nItemId,4)
	end
	if nItemId >=720722 and nItemId <= 720725 then
		CoMapCompetition_Pack(nItemId,5)
	end
	if nItemId >=720726 and nItemId <= 720729 then
		CoMapCompetition_Pack(nItemId,6)
	end
	
	if nItemId >=720714 and nItemId <= 720717 then
		--内嵌世界版图探索活动
		MapExploration_AddStc(28,nUserId)
	end
	if nItemId >=720718 and nItemId <= 720721 then
		--内嵌世界版图探索活动
		MapExploration_AddStc(30,nUserId)
	end
	if nItemId >=720722 and nItemId <= 720725 then
		--内嵌世界版图探索活动
		MapExploration_AddStc(31,nUserId)
	end
	if nItemId >=720726 and nItemId <= 720729 then
		--内嵌世界版图探索活动
		MapExploration_AddStc(32,nUserId)
	end
	
	if bGlobal then
		RewardTemplate_UseItemAndMsg(tElitePK_Item[nItemId]["Global"],nUserId)
	end
	if bPriGlobal then
		RewardTemplate_UseItemAndMsg(tElitePK_Item[nItemId]["PrivilegeGlobal"],nUserId)
	end
	
	--191211[英文征服][活动脚本]老玩家召回（1.7-1.31）
	RecallOfOldPlayers_CompleteTask(3)
	
	-- 额外活动奖励
	ElitePK_RewardExtraBonus(nItemId,nUserId)
	
	-- 勇士特权月奖励
	ElitePK_PrivilegeMonthExtra(nItemId, nUserId)
	
	-- 天阶赛
	ElitePK_AddScore(nItemId,nUserId)
	
	--王者服
	if nItemId == 720717 or nItemId == 720721 or nItemId == 720725 or nItemId == 720729 then
		KingServer_Reward(6, nItemId)
	end
	-- 阶段性任务
	ElitePK_AddProcessTask(nItemId,nUserId)

	--副职业修行月
	if  nItemId == 720725 or nItemId == 720724 then--季军
		SecondProGrowth_SendTicket(15)
	elseif nItemId == 720721 or nItemId == 720720 then--亚军
		SecondProGrowth_SendTicket(16)
	elseif nItemId == 720717 or nItemId == 720716 then--冠军
		SecondProGrowth_SendTicket(17)
	end
	
	if nItemId >=720714 and nItemId <= 720729 then
		OctNewServer_PKScore(nItemId)
	end
	
	--10月新服奖励获得
	if nGetGlobalId == 1 and Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["HundredActivityTime"]) 
		and tElitePK_OctoberSever[nItemId] ~= nil then
		RewardTemplate_UseItemAndMsg(tElitePK_OctoberSever[nItemId])
	end
	
end

function ElitePK_ChkUseItem(nItemId,nTip)
	local nUserId = Get_UserId()

	-- 检测是否天阶赛
	if not ElitePK_ChkDayTournament(nItemId,nTip,nUserId) then
		return
	end
	
	--ElitePK_UseItem(nItemId,nUserId)
	ElitePK_GetAward(nItemId,nTip)
end

function ElitePK_UseItem(nItemId,nTip,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 检测当前地图是否可以加经验
	local nMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nMapId)
	local bGlobal = false
	local bPriGlobal = false
	
	if Sys_ParseNumbersContain(tElitePK_Constant["NoExp"],nMapType) then
		User_TalkChannel2005(tElitePK_Text["NoExp"],nUserId)
		return
	end
	
	-- 判断背包空间
	local nSpace = tElitePK_Item[nItemId]["Space"]
	local nAddSpace = ElitePK_GetSpace(nItemId)
	nSpace = nSpace + nAddSpace
	
	-- 7月第一届CO地图争霸活动
	if  Sys_ChkFullTime(tActivityTime["CoMapCompetition"]["ActTime"]) then
		nSpace = nSpace + 1
	end
	
	local bFlag, nPMExtraSpace = ElitePK_PrivilegeMonthExtraSpace(nItemId)
	nSpace = nSpace + nPMExtraSpace
	
	--日常得积分
	-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpace = nSpace +1
		-- end
	-- end
	
	if tElitePK_Item[nItemId]["Global"] ~= nil then
		if Sys_ChkFullTime(tElitePK_Item[nItemId]["Global"]["ActivityTime"]) then
		local nGlobalId = tElitePK_Item[nItemId]["Global"]["Id"]
		local nPos = tElitePK_Item[nItemId]["Global"]["Pos"]
		local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
		
		if nData == tElitePK_Item[nItemId]["Global"]["Data"] then
			bGlobal = true
			nSpace = nSpace + tElitePK_Item[nItemId]["Global"]["Space"]
			end
		end
	end
	if tElitePK_Item[nItemId]["PrivilegeGlobal"] ~= nil then
		if Sys_ChkFullTime(tElitePK_Item[nItemId]["PrivilegeGlobal"]["ActivityTime"]) then
			local nGlobalId = tElitePK_Item[nItemId]["PrivilegeGlobal"]["Id"]
			local nPos = tElitePK_Item[nItemId]["PrivilegeGlobal"]["Pos"]
			local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
			if nData == tElitePK_Item[nItemId]["PrivilegeGlobal"]["Data"] then
				bPriGlobal = true
				nSpace = nSpace + tElitePK_Item[nItemId]["PrivilegeGlobal"]["Space"]
			end
		end
	end
	
	-- 随机物品背包空间判断
	nSpace = nSpace + 5
	
	if not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(string.format(tElitePK_Text["NoSpace"],nSpace),nUserId)
		return
	end
	
	-- 判断天石上限
	local nEmoneyTop = tElitePK_Item[nItemId]["EmoneyTop"]
	
	if nEmoneyTop ~= nil then
		local nUserEmoney = Get_UserEMoney()
		
		if not (nUserEmoney < nEmoneyTop) then
			User_TalkChannel2005(tElitePK_Text["EmoneyTop"],nUserId)
			return
		end
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local sIndex = "Talk"
	-- 判断等级
	local nLevel = Get_UserLevel(nUserId)
	local nNeedLevel = tElitePK_Item[nItemId]["Level"]
	
	--经验和气力值在130以上就不加了
	
	--1加经验,2加气力
	if nNeedLevel ~= nil and nLevel < nNeedLevel then
		if nTip == 1 then
			local nAddTime = math.floor(tUpLevTime[nLevel]*tElitePK_Item[nItemId]["AddExp"])
			sIndex = "Exp"
			nAddTime = math.ceil(nAddTime/10)
			--User_AddExpTime(nAddTime,nUserId)
			tElitePK_Item[nItemId]["RewardExpTime"]["Value"] = nAddTime
			tElitePK_Item[nItemId]["RewardStrengthValue"]["Value"] = 0
		end 
		if nTip == 2 then
			tElitePK_Item[nItemId]["RewardStrengthValue"]["Value"] = tElitePK_Item[nItemId]["AddStrengthValue"]
			tElitePK_Item[nItemId]["RewardExpTime"]["Value"] = 0
		end
	end
	
	
	-- 给奖励
	if nTip == 3 then
		if nItemId == 720717 then
			ElitePKChampionshipWings()
		end
		
		--7月新服
		if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
			RewardTemplate_UseItem(tElitePK_JulyNewServer[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId]["Success"])
		else
			RewardTemplate_UseItem(tElitePK_Item[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId]["Success"])
		end
		
	else
		--7月新服
		if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
			RewardTemplate_UseItem(tElitePK_JulyNewServer[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId][nTip]["Success"])
		else
			RewardTemplate_UseItem(tElitePK_Item[nItemId],nUserId)
			User_TalkChannel2005(tElitePK_SelectItem[nItemId][nTip]["Success"])
		end
	end

	
	local nEvent = tElitePK_Item[nItemId]["Stc"]["EventType"]
	local nType = tElitePK_Item[nItemId]["Stc"]["DataType"]
	
	if nEvent ~= nil and nType ~= nil then
		local nSetData = tElitePK_Item[nItemId]["Stc"]["Data"]
		Task_SetStatistic(nEvent,nType,nSetData,1,nUserId)
	end


	
	-- 给奖励
	-- RewardTemplate_UseItemAndMsg(tElitePK_Item[nItemId],nUserId)
	-- if nItemId >=720714 and nItemId <= 720717 then
		-- Dailypoint_RewardDraw(10)
	-- end
	-- if nItemId >=720718 and nItemId <= 720721 then
		-- Dailypoint_RewardDraw(11)
	-- end
	-- if nItemId >=720722 and nItemId <= 720725 then
		-- Dailypoint_RewardDraw(12)
	-- end
	-- if nItemId >=720726 and nItemId <= 720729 then
		-- Dailypoint_RewardDraw(9)
	-- end
	
	-- 7月第一届CO地图争霸活动
	if nItemId >=720714 and nItemId <= 720717 then
		CoMapCompetition_Pack(nItemId,3)
	end
	if nItemId >=720718 and nItemId <= 720721 then
		CoMapCompetition_Pack(nItemId,4)
	end
	if nItemId >=720722 and nItemId <= 720725 then
		CoMapCompetition_Pack(nItemId,5)
	end
	if nItemId >=720726 and nItemId <= 720729 then
		CoMapCompetition_Pack(nItemId,6)
	end
	
	-- 额外奖励
	if nEvent ~= nil and nType ~= nil then
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		local nCalLoop = 0
		while nData > 0 do
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ElitePK_UseItem 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			nData = nData - 1
			Task_SetStatistic(nEvent,nType,nData,1,nUserId)
			
			-- 给奖励
			RewardTemplate_NewRandom(tElitePK_Random,1,nUserId)
		end
	end
	
	if bGlobal then
		RewardTemplate_UseItemAndMsg(tElitePK_Item[nItemId]["Global"],nUserId)
	end
	if bPriGlobal then
		RewardTemplate_UseItemAndMsg(tElitePK_Item[nItemId]["PrivilegeGlobal"],nUserId)
	end

	-- 额外活动奖励
	ElitePK_RewardExtraBonus(nItemId,nUserId)
	
	-- 勇士特权月奖励
	ElitePK_PrivilegeMonthExtra(nItemId, nUserId)
	
	-- 天阶赛
	ElitePK_AddScore(nItemId,nUserId)
	
	
	-- 阶段性任务
	ElitePK_AddProcessTask(nItemId,nUserId)
end

-- 阶段性任务
function ElitePK_AddProcessTask(nItemId,nUserId)
	local nTaskId = tElitePK_Item[nItemId]["ProcessTask"]
	local nCondition = tElitePK_Item[nItemId]["Condition"]
	local nValue = tElitePK_Item[nItemId]["Value"]
	
	User_AddProcessTaskSchedule(nTaskId,nCondition,nValue,nUserId)
end

-- 天阶赛判断
function ElitePK_ChkDayTournament(nItemId,nTip,nUserId)
	if not Sys_ChkFullTime(tElitePK_DayTournament["ActivityTime"]) then
		return true
	end
	
	local nEvent = tElitePK_DayTournament["Stc"][1]["EventType"]
	local nType = tElitePK_DayTournament["Stc"][1]["DataType"]
	
	if Task_StcInterval(nEvent,nType,7,4) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	elseif Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		local sFunc = string.format("ElitePK_UseItem</N>%d</N>%d",nItemId,nTip)
		Sys_MsgBox(tElitePK_Text["HaveOpen"],"ElitePK_UseItem</N>" .. nItemId .. "</N>" .. nTip)
		return false
	end
	
	return true
end

-- 天阶赛加积分
function ElitePK_AddScore(nItemId,nUserId)
	ElitePK_NewSeverTjs()
	if not Sys_ChkFullTime(tElitePK_DayTournament["ActivityTime"]) then
		return true
	end
	
	Task_AddStatistic(tElitePK_DayTournament["Stc"][2]["EventType"],tElitePK_DayTournament["Stc"][2]["DataType"],tElitePK_DayTournament["Score"][nItemId],1,nUserId)
	Task_AddStatistic(tElitePK_DayTournament["Stc"][3]["EventType"],tElitePK_DayTournament["Stc"][3]["DataType"],tElitePK_DayTournament["Score"][nItemId],1,nUserId)
	
	local nEvent = tElitePK_DayTournament["Stc"][1]["EventType"]
	local nType = tElitePK_DayTournament["Stc"][1]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	-- 打log
	Sys_SaveActionFestivalLog(string.format("0,0,0,0,10000872,2,27,%d",tElitePK_DayTournament["Score"][nItemId]*2))
	User_TalkChannel2005(string.format(tElitePK_Text["DayTournament"],tElitePK_DayTournament["Score"][nItemId]))
end	

-- 获取额外活动的背包空间
function ElitePK_GetSpace(nItemId)
	local nSpace = 0
	
	for i,v in pairs(tElitePK_ExtraBonus) do
		if v[nItemId] ~= nil and Sys_ChkFullTime(v["ActivityTime"]) then
			local nIndex = v[nItemId]["Index"]
			nSpace = nSpace + v[nIndex]["Space"]
		end
	end

	return nSpace
end

-- 获取额外奖励
function ElitePK_RewardExtraBonus(nItemId,nUserId)
	for i,v in pairs(tElitePK_ExtraBonus) do
		if v[nItemId] ~= nil and Sys_ChkFullTime(v["ActivityTime"]) then
			local nIndex = v[nItemId]["Index"]
			RewardTemplate_Reward(v[nIndex],nUserId)
		end
	end
end

-- 勇士特权月	如果勇士职业获得了精英PK赛冠军，可以额外获得奖励
function ElitePK_PrivilegeMonthExtraSpace(nItemId)
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["NanjaPrivilege"]["ActivityTime"]) then
		return false, 0
	end
	
	if nItemId == 720714 or nItemId == 720715 or nItemId == 720716 or nItemId == 720717 then
		local nPro = Get_NewUserProfession(nUserId)
		if nPro >= 5000 and nPro <= 5099 then
			return true, RewardTemplate_GetRewardSpace(tElitePK_PrivilegeMonthExtra[nItemId])
		else
			return false, 0
		end
	end
	return false, 0
end

function ElitePK_PrivilegeMonthExtra(nItemId)
	local nUserId = Get_UserId()
	
	local bFlag, nSpace = ElitePK_PrivilegeMonthExtraSpace(nItemId)
	
	if not bFlag then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tElitePK_PrivilegeMonthExtra[nItemId])
end

-----------------------------------物品配置---------------------------------------
tItem[720714] = tItem[720714] or {}
tItem[720714]["DialogueText"] = tElitePK_SelectItem[720714]
tItem[720714]["Text1-1"] ={111,112}
tItem[720714]["tOption1-1"] = {1,2}
tItem[720714]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720714</N>1"
tItem[720714]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720714</N>2"
tItem[720714]["ChkFunc1-1"] = function ()
	if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
		tItem[720714]["Text111"] = tElitePK_SelectItem[720714]["NewText111"]
	end
	return true
end
--[[
tItem[720714]["Function"] = function(nItemId,sItemName)
	ElitePK_ChkUseItem(nItemId)
end
]]--


tItem[720718] = tItem[720718] or {}
tItem[720718]["DialogueText"] = tElitePK_SelectItem[720718]
tItem[720718]["Text1-1"] ={111,112}
tItem[720718]["tOption1-1"] = {1,2}
tItem[720718]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720718</N>1"
tItem[720718]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720718</N>2"

tItem[720722] = tItem[720722] or {}
tItem[720722]["DialogueText"] = tElitePK_SelectItem[720722]
tItem[720722]["Text1-1"] ={111,112}
tItem[720722]["tOption1-1"] = {1,2}
tItem[720722]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720722</N>1"
tItem[720722]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720722</N>2"

tItem[720726] = tItem[720726] or {}
tItem[720726]["DialogueText"] = tElitePK_SelectItem[720726]
tItem[720726]["Text1-1"] ={111,112}
tItem[720726]["tOption1-1"] = {1,2}
tItem[720726]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720726</N>1"
tItem[720726]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720726</N>2"

tItem[720715] = tItem[720715] or {}
tItem[720715]["DialogueText"] = tElitePK_SelectItem[720715]
tItem[720715]["Text1-1"] ={111,112}
tItem[720715]["tOption1-1"] = {1,2}
tItem[720715]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720715</N>1"
tItem[720715]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720715</N>2"
tItem[720715]["ChkFunc1-1"] = function ()
	if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
		tItem[720715]["Text111"] = tElitePK_SelectItem[720715]["NewText111"]
	end
	return true
end

tItem[720719] = tItem[720719] or {}
tItem[720719]["DialogueText"] = tElitePK_SelectItem[720719]
tItem[720719]["Text1-1"] ={111,112}
tItem[720719]["tOption1-1"] = {1,2}
tItem[720719]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720719</N>1"
tItem[720719]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720719</N>2"

tItem[720723] = tItem[720723] or {}
tItem[720723]["DialogueText"] = tElitePK_SelectItem[720723]
tItem[720723]["Text1-1"] ={111,112}
tItem[720723]["tOption1-1"] = {1,2}
tItem[720723]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720723</N>1"
tItem[720723]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720723</N>2"

tItem[720727] = tItem[720727] or {}
tItem[720727]["DialogueText"] = tElitePK_SelectItem[720727]
tItem[720727]["Text1-1"] ={111,112}
tItem[720727]["tOption1-1"] = {1,2}
tItem[720727]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720727</N>1"
tItem[720727]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720727</N>2"

tItem[720716] = tItem[720716] or {}
tItem[720716]["DialogueText"] = tElitePK_SelectItem[720716]
tItem[720716]["Text1-1"] ={111,112}
tItem[720716]["tOption1-1"] = {1,2}
tItem[720716]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720716</N>1"
tItem[720716]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720716</N>2"
tItem[720716]["ChkFunc1-1"] = function ()
	if Get_SysDynaGlobalData0(tElitePK_JulyNewServer["GlobalId"]) == 1 then
		tItem[720716]["Text111"] = tElitePK_SelectItem[720716]["NewText111"]
	end
	return true
end

tItem[720720] = tItem[720720] or {}
tItem[720720]["DialogueText"] = tElitePK_SelectItem[720720]
tItem[720720]["Text1-1"] ={111,112}
tItem[720720]["tOption1-1"] = {1,2}
tItem[720720]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720720</N>1"
tItem[720720]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720720</N>2"

tItem[720724] = tItem[720724] or {}
tItem[720724]["DialogueText"] = tElitePK_SelectItem[720724]
tItem[720724]["Text1-1"] ={111,112}
tItem[720724]["tOption1-1"] = {1,2}
tItem[720724]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720724</N>1"
tItem[720724]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720724</N>2"

tItem[720728] = tItem[720728] or {}
tItem[720728]["DialogueText"] = tElitePK_SelectItem[720728]
tItem[720728]["Text1-1"] ={111,112}
tItem[720728]["tOption1-1"] = {1,2}
tItem[720728]["OptionFunc1"] = "ElitePK_ChkUseItem</N>720728</N>1"
tItem[720728]["OptionFunc2"] = "ElitePK_ChkUseItem</N>720728</N>2"

tItem[720717] = tItem[720717] or {}
tItem[720717]["Function"] = function(nItemId,sItemName)
	ElitePK_ChkUseItem(nItemId,3)
end
tItem[720721] = tItem[720717]
tItem[720725] = tItem[720717]
tItem[720729] = tItem[720717]

tItem[3300020] = tItem[3300020] or {}
tItem[3300020]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(19424)
end

--八颗微光星陨石礼包
tItem[3307068] = tItem[3307068] or {}
tItem[3307068]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end
--四颗明亮星陨石礼包
tItem[3307069] = tItem[3307069] or {}
tItem[3307069]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--两颗回气丹
tItem[3307016] = tItem[3307016] or {}
tItem[3307016]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--三颗回气丹
tItem[3307017] = tItem[3307017] or {}
tItem[3307017]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--四颗回气丹
tItem[3307018] = tItem[3307018] or {}
tItem[3307018]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--五颗回气丹
tItem[3307019] = tItem[3307019] or {}
tItem[3307019]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--Refined职业PK赛冠军礼盒
tItem[3307012] = tItem[3307012] or {}
tItem[3307012]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--Unique职业PK赛冠军礼盒
tItem[3307013] = tItem[3307013] or {}
tItem[3307013]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--Elite职业PK赛冠军礼盒
tItem[3307014] = tItem[3307014] or {}
tItem[3307014]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end

--Super职业PK赛冠军礼盒
tItem[3307015] = tItem[3307015] or {}
tItem[3307015]["Function"] = function(nItemId,sItemName)
	ElitePK_OpenPack(nItemId)
end