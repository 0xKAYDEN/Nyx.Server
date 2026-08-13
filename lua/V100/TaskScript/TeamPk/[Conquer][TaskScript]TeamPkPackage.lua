----------------------------------------------------------------------------
--Name:		[征服][任务脚本]组队PK赛礼包.lua
--Purpose:	组队PK赛礼包
--Creator: 	郑鋆
--Created:	2017/06/06
----------------------------------------------------------------------------

-- 命名前缀
-- TeamPkPackage_

-- 720794	良品圣皇武尊礼包	9203600	组队PK赛	良品礼包：在组队PK赛中，获得100级以下上组别PK竞技桂冠的队伍所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。
-- 720795	上品圣皇武尊礼包	9203650	组队PK赛	上品礼包：在组队PK赛中，获得100—119级别PK竞技桂冠的队伍所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。
-- 720796	优质圣皇武尊礼包	9203670	组队PK赛	优质礼包：在组队PK赛中，获得120—129级别PK竞技桂冠的队伍所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。
-- 720797	极品圣皇武尊礼包	9203150	组队PK赛	极品礼包：在组队PK赛中，获得130级以上组别PK竞技桂冠的队伍所赢取的奖赏，内含令人艳羡的至尊好礼。右键点击打开。
-- 720798	良品翔龙武昭礼包	9203700	组队PK赛	良品礼包：在组队PK赛中，获得100级以下上组别PK竞技亚军的队伍所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。
-- 720799	上品翔龙武昭礼包	9203750	组队PK赛	上品礼包：在组队PK赛中，获得100—119级别PK竞技亚军的队伍所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。
-- 720800	优质翔龙武昭礼包	9203770	组队PK赛	优质礼包：在组队PK赛中，获得120—129级别PK竞技亚军的队伍所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。
-- 720801	极品翔龙武昭礼包	9203300	组队PK赛	极品礼包：在组队PK赛中，获得130级以上组别PK竞技亚军的队伍所赢取的奖赏，内含价值不菲的豪礼。右键点击打开。
-- 720802	良品破穹武烈礼包	9203800	组队PK赛	良品礼包：在组队PK赛中，获得100级以下上组别PK竞技季军的队伍所赢取的奖赏，内含丰厚奖励。右键点击打开。
-- 720803	上品破穹武烈礼包	9203850	组队PK赛	上品礼包：在组队PK赛中，获得100—119级别PK竞技季军的队伍所赢取的奖赏，内含丰厚奖励。右键点击打开。
-- 720804	优质破穹武烈礼包	9203870	组队PK赛	优质礼包：在组队PK赛中，获得120—129级别PK竞技季军的队伍所赢取的奖赏，内含丰厚奖励。右键点击打开。
-- 720805	极品破穹武烈礼包	9203400	组队PK赛	极品礼包：在组队PK赛中，获得130级以上组别PK竞技季军的队伍所赢取的奖赏，内含丰厚奖励。右键点击打开。
-- 720806	良品精装群雄礼包	9203900	组队PK赛	良品礼包：乃是在100级以下级别组队PK赛中，入围决赛八强的江湖新贵队伍所荣获的礼包，内含丰厚奖励。右键点击打开。
-- 720807	上品精装群雄礼包	9203950	组队PK赛	上品礼包：乃是在100—119级别组队PK赛中，入围决赛八强的江湖新贵队伍所荣获的礼包，内含丰厚奖励。右键点击打开。
-- 720808	优质精装群雄礼包	9203970	组队PK赛	优质礼包：乃是在120—129级别组队PK赛中，入围决赛八强的江湖新贵队伍所荣获的礼包，内含丰厚奖励。右键点击打开。
-- 720809	极品精装群雄礼包	9203500	组队PK赛	极品礼包：乃是在130级以上组队PK赛中，入围决赛八强的江湖新贵队伍所荣获的礼包，内含丰厚奖励。右键点击打开。

-- 奖励表
local tTeamPkPackage_Reward = {}
local tTeamPkPackage_Reward_NoGift = {}

	-- 720794	良品圣皇武尊礼包	9203600
	tTeamPkPackage_Reward[720794] = {}
	tTeamPkPackage_Reward[720794]["LogId"] = 10000249
	tTeamPkPackage_Reward[720794]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720794]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720794]["DeleteItem"][1]["Id"] = 720794
	tTeamPkPackage_Reward[720794]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720794]["RewardEMoney"]["Value"] = 645
	tTeamPkPackage_Reward[720794]["RewardItem"] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720794]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720794]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][2]["Id"] = 720894    -- 玄灵秘录大礼包5
	tTeamPkPackage_Reward[720794]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward[720794]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720794]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward[720794]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720794]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][3]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720794]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720794]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720794]["RewardItem"][4]["Attr"] = "0 1"
	-- 明亮星陨石精装包  强效护心丹尊享包
	tTeamPkPackage_Reward[720794]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][5]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_Reward[720794]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720794]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720794]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720794]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720794]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720794]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720794]["RewardEffect"]["Effect"] = "angelwing"

	-- 720795	上品圣皇武尊礼包	9203650
	tTeamPkPackage_Reward[720795] = {}
	tTeamPkPackage_Reward[720795]["LogId"] = 10000249
	tTeamPkPackage_Reward[720795]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720795]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720795]["DeleteItem"][1]["Id"] = 720795
	tTeamPkPackage_Reward[720795]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720795]["RewardEMoney"]["Value"] = 645
	tTeamPkPackage_Reward[720795]["RewardItem"] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720795]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720795]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][2]["Id"] = 720894    -- 玄灵秘录大礼包5
	tTeamPkPackage_Reward[720795]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward[720795]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720795]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward[720795]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720795]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][3]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720795]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720795]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720795]["RewardItem"][4]["Attr"] = "0 1"
	-- 明亮星陨石精装包  强效护心丹尊享包
	tTeamPkPackage_Reward[720795]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][5]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_Reward[720795]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720795]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720795]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720795]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720795]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720795]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720795]["RewardEffect"]["Effect"] = "angelwing"

	-- 720796	优质圣皇武尊礼包	9203670
	tTeamPkPackage_Reward[720796] = {}
	tTeamPkPackage_Reward[720796]["LogId"] = 10000249
	tTeamPkPackage_Reward[720796]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720796]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720796]["DeleteItem"][1]["Id"] = 720796
	tTeamPkPackage_Reward[720796]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720796]["RewardEMoney"]["Value"] = 645
	tTeamPkPackage_Reward[720796]["RewardItem"] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720796]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720796]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][2]["Id"] = 720894    -- 玄灵秘录大礼包5
	tTeamPkPackage_Reward[720796]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward[720796]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720796]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward[720796]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720796]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][3]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720796]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720796]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720796]["RewardItem"][4]["Attr"] = "0 1"
	-- 明亮星陨石精装包  强效护心丹尊享包
	tTeamPkPackage_Reward[720796]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][5]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_Reward[720796]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720796]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720796]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720796]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720796]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720796]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720796]["RewardEffect"]["Effect"] = "angelwing"

	-- 720797	极品圣皇武尊礼包	9203150
	tTeamPkPackage_Reward[720797] = {}
	tTeamPkPackage_Reward[720797]["LogId"] = 10000249
	tTeamPkPackage_Reward[720797]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720797]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720797]["DeleteItem"][1]["Id"] = 720797
	tTeamPkPackage_Reward[720797]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720797]["RewardEMoney"]["Value"] = 1075
	tTeamPkPackage_Reward[720797]["RewardItem"] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward[720797]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720797]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][2]["Id"] = 3306981    -- 明亮星陨石高级包
	tTeamPkPackage_Reward[720797]["RewardItem"][2]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720797]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][3]["Id"] = 3313563    -- 5个赠品黄色神纹精粹*50礼包
	tTeamPkPackage_Reward[720797]["RewardItem"][3]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720797]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][4]["Id"] = 3313567    -- 5个人参果*5
	tTeamPkPackage_Reward[720797]["RewardItem"][4]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720797]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][5]["Id"] = 720888    -- 五光十色豪华礼包5
	tTeamPkPackage_Reward[720797]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720797]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720797]["RewardItem"][6]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720797]["RewardItem"][6]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720797]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720797]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720797]["RewardEffect"]["Effect"] = "angelwing"

	-- 720797	极品圣皇武尊礼包激情服	9203150
	tTeamPkPackage_Reward_NoGift[720797] = {}
	tTeamPkPackage_Reward_NoGift[720797]["LogId"] = 10000249
	tTeamPkPackage_Reward_NoGift[720797]["DeleteItem"] = {}
	tTeamPkPackage_Reward_NoGift[720797]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720797]["DeleteItem"][1]["Id"] = 720797
	tTeamPkPackage_Reward_NoGift[720797]["RewardEMoney"] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardEMoney"]["Value"] = 1075
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][2] = {}
	-- tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][2]["Id"] = 720883    -- 造化天书豪华礼包10
	-- tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][2] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][2]["Id"] = 3306981    -- 明亮星陨石高级包
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][2]["Attr"] = "0 5"
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][3] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][3]["Id"] = 720885    -- 豪华玄元礼包5
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][3]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][4] = {}
	-- tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][4]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][4] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][4]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][4]["Attr"] = "0 15"
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][5] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][5]["Id"] = 720887    -- 1万点骑宠积分大礼包5
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][6] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][6]["Id"] = 720888    -- 五光十色豪华礼包5
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][6]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][7] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][7]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward_NoGift[720797]["RewardItem"][7]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720797]["RewardEffect"] = {}
	tTeamPkPackage_Reward_NoGift[720797]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward_NoGift[720797]["RewardEffect"]["Effect"] = "angelwing"

	-- 720798	良品翔龙武昭礼包	9203700
	tTeamPkPackage_Reward[720798] = {}
	tTeamPkPackage_Reward[720798]["LogId"] = 10000249
	tTeamPkPackage_Reward[720798]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720798]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720798]["DeleteItem"][1]["Id"] = 720798
	tTeamPkPackage_Reward[720798]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720798]["RewardEMoney"]["Value"] = 430
	tTeamPkPackage_Reward[720798]["RewardItem"] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720798]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720798]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][2]["Id"] = 720895    -- 玄灵秘录礼包4
	tTeamPkPackage_Reward[720798]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward[720798]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720798]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包4
	-- tTeamPkPackage_Reward[720798]["RewardItem"][3]["Attr"] = "0 4"
	tTeamPkPackage_Reward[720798]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][3]["Id"] = 720899    -- 5千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720798]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720798]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][4]["Id"] = 720903    -- 武器外套包3
	tTeamPkPackage_Reward[720798]["RewardItem"][4]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720798]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720798]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720798]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720798]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720798]["RewardItem"][6]["Attr"] = "0 4"
	tTeamPkPackage_Reward[720798]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720798]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720798]["RewardEffect"]["Effect"] = "angelwing"

	-- 720799	上品翔龙武昭礼包	9203750
	tTeamPkPackage_Reward[720799] = {}
	tTeamPkPackage_Reward[720799]["LogId"] = 10000249
	tTeamPkPackage_Reward[720799]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720799]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720799]["DeleteItem"][1]["Id"] = 720799
	tTeamPkPackage_Reward[720799]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720799]["RewardEMoney"]["Value"] = 430
	tTeamPkPackage_Reward[720799]["RewardItem"] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720799]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720799]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][2]["Id"] = 720895    -- 玄灵秘录礼包4
	tTeamPkPackage_Reward[720799]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward[720799]["RewardItem"][2] = {}
	-- tTeamPkPackage_Reward[720799]["RewardItem"][2]["Id"] = 720902    -- 技能宝典礼包4
	-- tTeamPkPackage_Reward[720799]["RewardItem"][2]["Attr"] = "0 4"
	tTeamPkPackage_Reward[720799]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][3]["Id"] = 720899    -- 5千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720799]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720799]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][4]["Id"] = 720903    -- 武器外套包3
	tTeamPkPackage_Reward[720799]["RewardItem"][4]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720799]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720799]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720799]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720799]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720799]["RewardItem"][6]["Attr"] = "0 4"
	tTeamPkPackage_Reward[720799]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720799]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720799]["RewardEffect"]["Effect"] = "angelwing"

	-- 720800	优质翔龙武昭礼包	9203770
	tTeamPkPackage_Reward[720800] = {}
	tTeamPkPackage_Reward[720800]["LogId"] = 10000249
	tTeamPkPackage_Reward[720800]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720800]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720800]["DeleteItem"][1]["Id"] = 720800
	tTeamPkPackage_Reward[720800]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720800]["RewardEMoney"]["Value"] = 430
	tTeamPkPackage_Reward[720800]["RewardItem"] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720800]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720800]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][2]["Id"] = 720895    -- 玄灵秘录礼包4
	tTeamPkPackage_Reward[720800]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward[720800]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720800]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包4
	-- tTeamPkPackage_Reward[720800]["RewardItem"][3]["Attr"] = "0 4"
	tTeamPkPackage_Reward[720800]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][3]["Id"] = 720899    -- 5千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720800]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720800]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][4]["Id"] = 720903    -- 武器外套包3
	tTeamPkPackage_Reward[720800]["RewardItem"][4]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720800]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720800]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720800]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720800]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720800]["RewardItem"][6]["Attr"] = "0 4"
	tTeamPkPackage_Reward[720800]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720800]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720800]["RewardEffect"]["Effect"] = "angelwing"

	-- 720801	极品翔龙武昭礼包	9203300
	tTeamPkPackage_Reward[720801] = {}
	tTeamPkPackage_Reward[720801]["LogId"] = 10000249
	tTeamPkPackage_Reward[720801]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720801]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720801]["DeleteItem"][1]["Id"] = 720801
	tTeamPkPackage_Reward[720801]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720801]["RewardEMoney"]["Value"] = 645
	tTeamPkPackage_Reward[720801]["RewardItem"] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward[720801]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720801]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][2]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720801]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720801]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][3]["Id"] = 720893    --五光十色大礼包3
	tTeamPkPackage_Reward[720801]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720801]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][4]["Id"] = 3306980    -- 明亮星陨石中级包
	tTeamPkPackage_Reward[720801]["RewardItem"][4]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720801]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][5]["Id"] = 3313564    --赠品黄色神纹精粹*30礼包
	tTeamPkPackage_Reward[720801]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720801]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720801]["RewardItem"][6]["Id"] = 3313568    -- 5个人参果*3礼包
	tTeamPkPackage_Reward[720801]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720801]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720801]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720801]["RewardEffect"]["Effect"] = "angelwing"

	-- 720801	极品翔龙武昭礼包激情服	9203300
	tTeamPkPackage_Reward_NoGift[720801] = {}
	tTeamPkPackage_Reward_NoGift[720801]["LogId"] = 10000249
	tTeamPkPackage_Reward_NoGift[720801]["DeleteItem"] = {}
	tTeamPkPackage_Reward_NoGift[720801]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720801]["DeleteItem"][1]["Id"] = 720801
	tTeamPkPackage_Reward_NoGift[720801]["RewardEMoney"] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardEMoney"]["Value"] = 645
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][2] = {}
	-- tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][2]["Id"] = 720890    -- 造化天书大礼包5
	-- tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][2] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][2]["Id"] = 720892    -- 玄元大礼包3
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][4] = {}
	-- tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][4]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][3] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][3]["Id"] = 720896    -- 8千点骑宠积分大礼包5
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][4] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][5] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][5]["Id"] = 720893    --五光十色大礼包3
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][6] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][6]["Id"] = 3306980    -- 明亮星陨石中级包
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][7] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][7]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward_NoGift[720801]["RewardItem"][7]["Attr"] = "0 10"
	tTeamPkPackage_Reward_NoGift[720801]["RewardEffect"] = {}
	tTeamPkPackage_Reward_NoGift[720801]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward_NoGift[720801]["RewardEffect"]["Effect"] = "angelwing"

	-- 720802	良品破穹武烈礼包	9203800
	tTeamPkPackage_Reward[720802] = {}
	tTeamPkPackage_Reward[720802]["LogId"] = 10000249
	tTeamPkPackage_Reward[720802]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720802]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720802]["DeleteItem"][1]["Id"] = 720802
	tTeamPkPackage_Reward[720802]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720802]["RewardEMoney"]["Value"] = 215
	tTeamPkPackage_Reward[720802]["RewardItem"] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720802]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720802]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录3
	tTeamPkPackage_Reward[720802]["RewardItem"][2]["Attr"] = "0 3"
	-- tTeamPkPackage_Reward[720802]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720802]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包3
	-- tTeamPkPackage_Reward[720802]["RewardItem"][3]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720802]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][3]["Id"] = 720900    -- 3千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720802]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720802]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][4]["Id"] = 720903    -- 武器外套包2
	tTeamPkPackage_Reward[720802]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720802]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720802]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720802]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720802]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720802]["RewardItem"][6]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720802]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720802]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720802]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 720803	上品破穹武烈礼包	9203850
	tTeamPkPackage_Reward[720803] = {}
	tTeamPkPackage_Reward[720803]["LogId"] = 10000249
	tTeamPkPackage_Reward[720803]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720803]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720803]["DeleteItem"][1]["Id"] = 720803
	tTeamPkPackage_Reward[720803]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720803]["RewardEMoney"]["Value"] = 215
	tTeamPkPackage_Reward[720803]["RewardItem"] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720803]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720803]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录3
	tTeamPkPackage_Reward[720803]["RewardItem"][2]["Attr"] = "0 3"
	-- tTeamPkPackage_Reward[720803]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720803]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包3
	-- tTeamPkPackage_Reward[720803]["RewardItem"][3]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720803]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][3]["Id"] = 720900    -- 3千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720803]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720803]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][4]["Id"] = 720903    -- 武器外套包2
	tTeamPkPackage_Reward[720803]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720803]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720803]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720803]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720803]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720803]["RewardItem"][6]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720803]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720803]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720803]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 720804	优质破穹武烈礼包	9203870
	tTeamPkPackage_Reward[720804] = {}
	tTeamPkPackage_Reward[720804]["LogId"] = 10000249
	tTeamPkPackage_Reward[720804]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720804]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720804]["DeleteItem"][1]["Id"] = 720804
	tTeamPkPackage_Reward[720804]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720804]["RewardEMoney"]["Value"] = 215
	tTeamPkPackage_Reward[720804]["RewardItem"] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720804]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720804]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录3
	tTeamPkPackage_Reward[720804]["RewardItem"][2]["Attr"] = "0 3"
	-- tTeamPkPackage_Reward[720804]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720804]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包3
	-- tTeamPkPackage_Reward[720804]["RewardItem"][3]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720804]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][3]["Id"] = 720900    -- 3千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720804]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720804]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][4]["Id"] = 720903    -- 武器外套包2
	tTeamPkPackage_Reward[720804]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720804]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720804]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720804]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720804]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720804]["RewardItem"][6]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720804]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720804]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720804]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 720805	极品破穹武烈礼包	9203400
	tTeamPkPackage_Reward[720805] = {}
	tTeamPkPackage_Reward[720805]["LogId"] = 10000249
	tTeamPkPackage_Reward[720805]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720805]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720805]["DeleteItem"][1]["Id"] = 720805
	tTeamPkPackage_Reward[720805]["RewardEMoney"] = {}
	tTeamPkPackage_Reward[720805]["RewardEMoney"]["Value"] = 430
	tTeamPkPackage_Reward[720805]["RewardItem"] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward[720805]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720805]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][2]["Id"] = 723717    -- 【财富类】五光十色包2
	tTeamPkPackage_Reward[720805]["RewardItem"][2]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720805]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][3]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_Reward[720805]["RewardItem"][3]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720805]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][4]["Id"] = 3313565    -- 5个赠品黄色神纹精粹*20礼包
	tTeamPkPackage_Reward[720805]["RewardItem"][4]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720805]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][5]["Id"] = 3313569    -- 5个人参果*2礼包
	tTeamPkPackage_Reward[720805]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720805]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720805]["RewardItem"][6]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720805]["RewardItem"][6]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720805]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720805]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720805]["RewardEffect"]["Effect"] = "angelwing"

	-- 720805	极品破穹武烈礼包	9203400
	tTeamPkPackage_Reward_NoGift[720805] = {}
	tTeamPkPackage_Reward_NoGift[720805]["LogId"] = 10000249
	tTeamPkPackage_Reward_NoGift[720805]["DeleteItem"] = {}
	tTeamPkPackage_Reward_NoGift[720805]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720805]["DeleteItem"][1]["Id"] = 720805
	tTeamPkPackage_Reward_NoGift[720805]["RewardEMoney"] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardEMoney"]["Value"] = 430
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][2] = {}
	-- tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][2]["Id"] = 720890    -- 造化天书大礼包5
	-- tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][2] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][2]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][3] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][3]["Id"] = 720897    -- 7千点骑宠积分大礼包5
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][4] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][4]["Id"] = 723717    -- 【财富类】五光十色包2
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][5] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][5]["Id"] = 700073    -- 优质玄元宝石2
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][5]["Attr"] = "0 2"
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][6] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][6]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][7] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][7]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward_NoGift[720805]["RewardItem"][7]["Attr"] = "0 5"
	tTeamPkPackage_Reward_NoGift[720805]["RewardEffect"] = {}
	tTeamPkPackage_Reward_NoGift[720805]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward_NoGift[720805]["RewardEffect"]["Effect"] = "angelwing"

	-- 720806	良品精装群雄礼包	9203900
	tTeamPkPackage_Reward[720806] = {}
	tTeamPkPackage_Reward[720806]["LogId"] = 10000249
	tTeamPkPackage_Reward[720806]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720806]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720806]["DeleteItem"][1]["Id"] = 720806
	tTeamPkPackage_Reward[720806]["RewardItem"] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720806]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720806]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录2
	tTeamPkPackage_Reward[720806]["RewardItem"][2]["Attr"] = "0 2"
	-- tTeamPkPackage_Reward[720806]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720806]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包2
	-- tTeamPkPackage_Reward[720806]["RewardItem"][3]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720806]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][3]["Id"] = 720901    -- 2千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720806]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720806]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][4]["Id"] = 720903    -- 武器外套包1
	tTeamPkPackage_Reward[720806]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720806]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][5]["Id"] = 3306979    -- 微光星陨石高级包
	tTeamPkPackage_Reward[720806]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720806]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720806]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720806]["RewardItem"][6]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720806]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720806]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720806]["RewardEffect"]["Effect"] = "angelwing"

	-- 720807	上品精装群雄礼包	9203950
	tTeamPkPackage_Reward[720807] = {}
	tTeamPkPackage_Reward[720807]["LogId"] = 10000249
	tTeamPkPackage_Reward[720807]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720807]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720807]["DeleteItem"][1]["Id"] = 720807
	tTeamPkPackage_Reward[720807]["RewardItem"] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720807]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720807]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录2
	tTeamPkPackage_Reward[720807]["RewardItem"][2]["Attr"] = "0 2"
	-- tTeamPkPackage_Reward[720807]["RewardItem"][2] = {}
	-- tTeamPkPackage_Reward[720807]["RewardItem"][2]["Id"] = 720902    -- 技能宝典礼包2
	-- tTeamPkPackage_Reward[720807]["RewardItem"][2]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720807]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][3]["Id"] = 720901    -- 2千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720807]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720807]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][4]["Id"] = 720903    -- 武器外套包1
	tTeamPkPackage_Reward[720807]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720807]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][5]["Id"] = 3306979    -- 微光星陨石高级包
	tTeamPkPackage_Reward[720807]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720807]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720807]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720807]["RewardItem"][6]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720807]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720807]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720807]["RewardEffect"]["Effect"] = "angelwing"

	-- 720808	优质精装群雄礼包	9203970
	tTeamPkPackage_Reward[720808] = {}
	tTeamPkPackage_Reward[720808]["LogId"] = 10000249
	tTeamPkPackage_Reward[720808]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720808]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720808]["DeleteItem"][1]["Id"] = 720808
	tTeamPkPackage_Reward[720808]["RewardItem"] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_Reward[720808]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720808]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录2
	tTeamPkPackage_Reward[720808]["RewardItem"][2]["Attr"] = "0 2"
	-- tTeamPkPackage_Reward[720808]["RewardItem"][3] = {}
	-- tTeamPkPackage_Reward[720808]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包2
	-- tTeamPkPackage_Reward[720808]["RewardItem"][3]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720808]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][3]["Id"] = 720901    -- 2千点骑宠积分大礼包5
	tTeamPkPackage_Reward[720808]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720808]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][4]["Id"] = 720903    -- 武器外套包1
	tTeamPkPackage_Reward[720808]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720808]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][5]["Id"] = 3306979    -- 微光星陨石高级包
	tTeamPkPackage_Reward[720808]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_Reward[720808]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720808]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_Reward[720808]["RewardItem"][6]["Attr"] = "0 2"
	tTeamPkPackage_Reward[720808]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720808]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720808]["RewardEffect"]["Effect"] = "angelwing"

	-- 720809	极品精装群雄礼包	9203500
	tTeamPkPackage_Reward[720809] = {}
	tTeamPkPackage_Reward[720809]["LogId"] = 10000249
	tTeamPkPackage_Reward[720809]["DeleteItem"] = {}
	tTeamPkPackage_Reward[720809]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[720809]["DeleteItem"][1]["Id"] = 720809
	tTeamPkPackage_Reward[720809]["RewardItem"] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward[720809]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720809]["RewardItem"][2] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][2]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward[720809]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720809]["RewardItem"][3] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][3]["Id"] = 723717    -- 【财富类】五光十色包
	tTeamPkPackage_Reward[720809]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_Reward[720809]["RewardItem"][4] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][4]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward[720809]["RewardItem"][4]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720809]["RewardItem"][5] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][5]["Id"] = 3313566    -- 5个赠品黄色神纹精粹*10礼包
	tTeamPkPackage_Reward[720809]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720809]["RewardItem"][6] = {}
	tTeamPkPackage_Reward[720809]["RewardItem"][6]["Id"] = 3313570    -- 5个人参果*1礼包
	tTeamPkPackage_Reward[720809]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward[720809]["RewardEffect"] = {}
	tTeamPkPackage_Reward[720809]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward[720809]["RewardEffect"]["Effect"] = "angelwing"

	-- 720809	极品精装群雄礼包激情服	9203500
	tTeamPkPackage_Reward_NoGift[720809] = {}
	tTeamPkPackage_Reward_NoGift[720809]["LogId"] = 10000249
	tTeamPkPackage_Reward_NoGift[720809]["DeleteItem"] = {}
	tTeamPkPackage_Reward_NoGift[720809]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720809]["DeleteItem"][1]["Id"] = 720809
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][1] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][2] = {}
	-- tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][2]["Id"] = 720890    -- 造化天书大礼包5
	-- tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][2] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][2]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][3] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][3]["Id"] = 700073    -- 优质玄元宝石1
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][3]["Attr"] = "0 1"
	-- tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][5] = {}
	-- tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][5]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][4] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][5] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][5]["Id"] = 723717    -- 【财富类】五光十色包
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][6] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][6]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][7] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][7]["Id"] = 3300601    -- 强效护心丹豪华包
	tTeamPkPackage_Reward_NoGift[720809]["RewardItem"][7]["Attr"] = "0 5"
	tTeamPkPackage_Reward_NoGift[720809]["RewardEffect"] = {}
	tTeamPkPackage_Reward_NoGift[720809]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_Reward_NoGift[720809]["RewardEffect"]["Effect"] = "angelwing"

	-- 7月新服活动制作
	local tTeamPkPackage_JulyNewServer = {}
	
	tTeamPkPackage_JulyNewServer ["GlobalId"] = 52911
	
	-- 720794	良品圣皇武尊礼包	9203600
	tTeamPkPackage_JulyNewServer[720794] = {}
	tTeamPkPackage_JulyNewServer[720794]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720794]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720794]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720794]["DeleteItem"][1]["Id"] = 720794
	tTeamPkPackage_JulyNewServer[720794]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardEMoneyMono"]["Value"] = 1935
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][2]["Id"] = 720894    -- 玄灵秘录大礼包5
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720794]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720794]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_JulyNewServer[720794]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][3]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][4]["Attr"] = "0 1"
	-- 明亮星陨石精装包  强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][5]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720794]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720794]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720794]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720794]["RewardEffect"]["Effect"] = "angelwing"

	-- 720795	上品圣皇武尊礼包	9203650
	tTeamPkPackage_JulyNewServer[720795] = {}
	tTeamPkPackage_JulyNewServer[720795]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720795]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720795]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720795]["DeleteItem"][1]["Id"] = 720795
	tTeamPkPackage_JulyNewServer[720795]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardEMoneyMono"]["Value"] = 1935
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][2]["Id"] = 720894    -- 玄灵秘录大礼包5
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720795]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720795]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_JulyNewServer[720795]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][3]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][4]["Attr"] = "0 1"
	-- 明亮星陨石精装包  强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][5]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720795]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720795]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720795]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720795]["RewardEffect"]["Effect"] = "angelwing"

	-- 720796	优质圣皇武尊礼包	9203670
	tTeamPkPackage_JulyNewServer[720796] = {}
	tTeamPkPackage_JulyNewServer[720796]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720796]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720796]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720796]["DeleteItem"][1]["Id"] = 720796
	tTeamPkPackage_JulyNewServer[720796]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardEMoneyMono"]["Value"] = 1935
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][2]["Id"] = 720894    -- 玄灵秘录大礼包5
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720796]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720796]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_JulyNewServer[720796]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][3]["Id"] = 720898    -- 6千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][4]["Attr"] = "0 1"
	-- 明亮星陨石精装包  强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][5]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720796]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720796]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720796]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720796]["RewardEffect"]["Effect"] = "angelwing"

	-- 720797	极品圣皇武尊礼包	9203150
	tTeamPkPackage_JulyNewServer[720797] = {}
	tTeamPkPackage_JulyNewServer[720797]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720797]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720797]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720797]["DeleteItem"][1]["Id"] = 720797
	tTeamPkPackage_JulyNewServer[720797]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardEMoneyMono"]["Value"] = 3225
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720797]["RewardItem"][2] = {}
	-- tTeamPkPackage_JulyNewServer[720797]["RewardItem"][2]["Id"] = 720883    -- 造化天书豪华礼包10
	-- tTeamPkPackage_JulyNewServer[720797]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][2]["Id"] = 3306981    -- 明亮星陨石高级包
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][2]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][3]["Id"] = 720885    -- 豪华玄元礼包5
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][3]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720797]["RewardItem"][4] = {}
	-- tTeamPkPackage_JulyNewServer[720797]["RewardItem"][4]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_JulyNewServer[720797]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][4]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][4]["Attr"] = "0 15"
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][5]["Id"] = 720887    -- 1万点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][6]["Id"] = 720888    -- 五光十色豪华礼包5
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][6]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][7] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][7]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_JulyNewServer[720797]["RewardItem"][7]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720797]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720797]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720797]["RewardEffect"]["Effect"] = "angelwing"

	-- 720798	良品翔龙武昭礼包	9203700
	tTeamPkPackage_JulyNewServer[720798] = {}
	tTeamPkPackage_JulyNewServer[720798]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720798]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720798]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720798]["DeleteItem"][1]["Id"] = 720798
	tTeamPkPackage_JulyNewServer[720798]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardEMoneyMono"]["Value"] = 1290
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][2]["Id"] = 720895    -- 玄灵秘录礼包4
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720798]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720798]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包4
	-- tTeamPkPackage_JulyNewServer[720798]["RewardItem"][3]["Attr"] = "0 4"
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][3]["Id"] = 720899    -- 5千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][4]["Id"] = 720903    -- 武器外套包3
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][4]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720798]["RewardItem"][6]["Attr"] = "0 4"
	tTeamPkPackage_JulyNewServer[720798]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720798]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720798]["RewardEffect"]["Effect"] = "angelwing"

	-- 720799	上品翔龙武昭礼包	9203750
	tTeamPkPackage_JulyNewServer[720799] = {}
	tTeamPkPackage_JulyNewServer[720799]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720799]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720799]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720799]["DeleteItem"][1]["Id"] = 720799
	tTeamPkPackage_JulyNewServer[720799]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardEMoneyMono"]["Value"] = 1290
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][2]["Id"] = 720895    -- 玄灵秘录礼包4
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720799]["RewardItem"][2] = {}
	-- tTeamPkPackage_JulyNewServer[720799]["RewardItem"][2]["Id"] = 720902    -- 技能宝典礼包4
	-- tTeamPkPackage_JulyNewServer[720799]["RewardItem"][2]["Attr"] = "0 4"
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][3]["Id"] = 720899    -- 5千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][4]["Id"] = 720903    -- 武器外套包3
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][4]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720799]["RewardItem"][6]["Attr"] = "0 4"
	tTeamPkPackage_JulyNewServer[720799]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720799]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720799]["RewardEffect"]["Effect"] = "angelwing"

	-- 720800	优质翔龙武昭礼包	9203770
	tTeamPkPackage_JulyNewServer[720800] = {}
	tTeamPkPackage_JulyNewServer[720800]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720800]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720800]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720800]["DeleteItem"][1]["Id"] = 720800
	tTeamPkPackage_JulyNewServer[720800]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardEMoneyMono"]["Value"] = 1290
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][2]["Id"] = 720895    -- 玄灵秘录礼包4
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720800]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720800]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包4
	-- tTeamPkPackage_JulyNewServer[720800]["RewardItem"][3]["Attr"] = "0 4"
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][3]["Id"] = 720899    -- 5千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][4]["Id"] = 720903    -- 武器外套包3
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][4]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][5]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720800]["RewardItem"][6]["Attr"] = "0 4"
	tTeamPkPackage_JulyNewServer[720800]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720800]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720800]["RewardEffect"]["Effect"] = "angelwing"

	-- 720801	极品翔龙武昭礼包	9203300
	tTeamPkPackage_JulyNewServer[720801] = {}
	tTeamPkPackage_JulyNewServer[720801]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720801]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720801]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720801]["DeleteItem"][1]["Id"] = 720801
	tTeamPkPackage_JulyNewServer[720801]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardEMoneyMono"]["Value"] = 1935
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720801]["RewardItem"][2] = {}
	-- tTeamPkPackage_JulyNewServer[720801]["RewardItem"][2]["Id"] = 720890    -- 造化天书大礼包5
	-- tTeamPkPackage_JulyNewServer[720801]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][2]["Id"] = 720892    -- 玄元大礼包3
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720801]["RewardItem"][4] = {}
	-- tTeamPkPackage_JulyNewServer[720801]["RewardItem"][4]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_JulyNewServer[720801]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][3]["Id"] = 720896    -- 8千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][4]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][4]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][5]["Id"] = 720893    --五光十色大礼包3
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][5]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][6]["Id"] = 3306980    -- 明亮星陨石中级包
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][7] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][7]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720801]["RewardItem"][7]["Attr"] = "0 10"
	tTeamPkPackage_JulyNewServer[720801]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720801]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720801]["RewardEffect"]["Effect"] = "angelwing"

	-- 720802	良品破穹武烈礼包	9203800
	tTeamPkPackage_JulyNewServer[720802] = {}
	tTeamPkPackage_JulyNewServer[720802]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720802]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720802]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720802]["DeleteItem"][1]["Id"] = 720802
	tTeamPkPackage_JulyNewServer[720802]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardEMoneyMono"]["Value"] = 645
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录3
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][2]["Attr"] = "0 3"
	-- tTeamPkPackage_JulyNewServer[720802]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720802]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包3
	-- tTeamPkPackage_JulyNewServer[720802]["RewardItem"][3]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][3]["Id"] = 720900    -- 3千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][4]["Id"] = 720903    -- 武器外套包2
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720802]["RewardItem"][6]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720802]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720802]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720802]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 720803	上品破穹武烈礼包	9203850
	tTeamPkPackage_JulyNewServer[720803] = {}
	tTeamPkPackage_JulyNewServer[720803]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720803]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720803]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720803]["DeleteItem"][1]["Id"] = 720803
	tTeamPkPackage_JulyNewServer[720803]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardEMoneyMono"]["Value"] = 645
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录3
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][2]["Attr"] = "0 3"
	-- tTeamPkPackage_JulyNewServer[720803]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720803]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包3
	-- tTeamPkPackage_JulyNewServer[720803]["RewardItem"][3]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][3]["Id"] = 720900    -- 3千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][4]["Id"] = 720903    -- 武器外套包2
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720803]["RewardItem"][6]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720803]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720803]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720803]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 720804	优质破穹武烈礼包	9203870
	tTeamPkPackage_JulyNewServer[720804] = {}
	tTeamPkPackage_JulyNewServer[720804]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720804]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720804]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720804]["DeleteItem"][1]["Id"] = 720804
	tTeamPkPackage_JulyNewServer[720804]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardEMoneyMono"]["Value"] = 645
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][1]["Id"] = 720889    -- 特制仙境船票大礼包3
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][1]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][2]["Id"] = 723341    -- 玄灵秘录3
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][2]["Attr"] = "0 3"
	-- tTeamPkPackage_JulyNewServer[720804]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720804]["RewardItem"][3]["Id"] = 720902    -- 技能宝典礼包3
	-- tTeamPkPackage_JulyNewServer[720804]["RewardItem"][3]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][3]["Id"] = 720900    -- 3千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][4]["Id"] = 720903    -- 武器外套包2
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][5]["Id"] = 3310761    -- 明亮星陨石包
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][5]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][6]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720804]["RewardItem"][6]["Attr"] = "0 3"
	tTeamPkPackage_JulyNewServer[720804]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720804]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720804]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 720805	极品破穹武烈礼包	9203400
	tTeamPkPackage_JulyNewServer[720805] = {}
	tTeamPkPackage_JulyNewServer[720805]["LogId"] = 10000249
	tTeamPkPackage_JulyNewServer[720805]["DeleteItem"] = {}
	tTeamPkPackage_JulyNewServer[720805]["DeleteItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720805]["DeleteItem"][1]["Id"] = 720805
	tTeamPkPackage_JulyNewServer[720805]["RewardEMoneyMono"] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardEMoneyMono"]["Value"] = 1290
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][1] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][1]["Id"] = 720882    -- 特制仙境船票豪华礼包5
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][1]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720805]["RewardItem"][2] = {}
	-- tTeamPkPackage_JulyNewServer[720805]["RewardItem"][2]["Id"] = 720890    -- 造化天书大礼包5
	-- tTeamPkPackage_JulyNewServer[720805]["RewardItem"][2]["Attr"] = "0 1"
	-- tTeamPkPackage_JulyNewServer[720805]["RewardItem"][3] = {}
	-- tTeamPkPackage_JulyNewServer[720805]["RewardItem"][3]["Id"] = 720886    -- 技能宝典大礼包5
	-- tTeamPkPackage_JulyNewServer[720805]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][2] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][2]["Id"] = 720904    -- 豪华武器外套礼包5
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][2]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][3] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][3]["Id"] = 720897    -- 7千点骑宠积分大礼包5
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][3]["Attr"] = "0 1"
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][4] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][4]["Id"] = 723717    -- 【财富类】五光十色包2
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][4]["Attr"] = "0 2"
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][5] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][5]["Id"] = 700073    -- 优质玄元宝石2
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][5]["Attr"] = "0 2"
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][6] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][6]["Id"] = 3300612    -- 明亮星陨石精装包
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][6]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][7] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][7]["Id"] = 3300602    -- 强效护心丹尊享包
	tTeamPkPackage_JulyNewServer[720805]["RewardItem"][7]["Attr"] = "0 5"
	tTeamPkPackage_JulyNewServer[720805]["RewardEffect"] = {}
	tTeamPkPackage_JulyNewServer[720805]["RewardEffect"]["SzObj"] = "self"
	tTeamPkPackage_JulyNewServer[720805]["RewardEffect"]["Effect"] = "angelwing"

	

	
--明亮星陨石精品包，3306213
	tTeamPkPackage_Reward[3306213] = {}
	tTeamPkPackage_Reward[3306213]["LogId"] = 10000249
	tTeamPkPackage_Reward[3306213]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306213]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306213]["DeleteItem"][1]["Id"] = 3306213
	tTeamPkPackage_Reward[3306213]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306213]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306213]["RewardItem"][1]["Id"] = 3009001
	tTeamPkPackage_Reward[3306213]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
--兑换券包，3305656
	tTeamPkPackage_Reward[3305656] = {}
	tTeamPkPackage_Reward[3305656]["LogId"] = 10000249
	tTeamPkPackage_Reward[3305656]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3305656]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3305656]["DeleteItem"][1]["Id"] = 3305656
	tTeamPkPackage_Reward[3305656]["RewardItem"] = {}
	tTeamPkPackage_Reward[3305656]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3305656]["RewardItem"][1]["Id"] = 3303695
	tTeamPkPackage_Reward[3305656]["RewardItem"][1]["Attr"] = "0 990"
	
	
--7天时效技能外套
	tTeamPkPackage_Reward[3306235] = {}
	--地狱烈焰【极品】技能外套
	tTeamPkPackage_Reward[3306235][1] = {}
	tTeamPkPackage_Reward[3306235][1]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][1]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][1]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][1]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][1]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][1]["RewardItem"][1]["Id"] = 3303078
	tTeamPkPackage_Reward[3306235][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][1]["Log"] = "0,0,3306235,1,12000554,2,3303078,1"
	--万箭齐发【极品】技能外套
	tTeamPkPackage_Reward[3306235][2] = {}
	tTeamPkPackage_Reward[3306235][2]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][2]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][2]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][2]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][2]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][2]["RewardItem"][1]["Id"] = 3303079
	tTeamPkPackage_Reward[3306235][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][2]["Log"] = "0,0,3306235,1,12000554,2,3303079,1"
	--紫刃斩天【极品】技能外套
	tTeamPkPackage_Reward[3306235][3] = {}
	tTeamPkPackage_Reward[3306235][3]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][3]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][3]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][3]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][3]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][3]["RewardItem"][1]["Id"] = 3303081
	tTeamPkPackage_Reward[3306235][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][3]["Log"] = "0,0,3306235,1,12000554,2,3303081,1"
	--天火流星落【极品】技能外套
	tTeamPkPackage_Reward[3306235][4] = {}
	tTeamPkPackage_Reward[3306235][4]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][4]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][4]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][4]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][4]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][4]["RewardItem"][1]["Id"] = 3303080
	tTeamPkPackage_Reward[3306235][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][4]["Log"] = "0,0,3306235,1,12000554,2,3303080,1"
	--炽日天剑技能外套
	tTeamPkPackage_Reward[3306235][5] = {}
	tTeamPkPackage_Reward[3306235][5]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][5]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][5]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][5]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][5]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][5]["RewardItem"][1]["Id"] = 3303082
	tTeamPkPackage_Reward[3306235][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][5]["Log"] = "0,0,3306235,1,12000554,2,3303082,1"
	--龙卷狂沙技能外套
	tTeamPkPackage_Reward[3306235][6] = {}
	tTeamPkPackage_Reward[3306235][6]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][6]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][6]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][6]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][6]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][6]["RewardItem"][1]["Id"] = 3303071
	tTeamPkPackage_Reward[3306235][6]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][6]["Log"] = "0,0,3306235,1,12000554,2,3303071,1"
	--致命电流技能外套
	tTeamPkPackage_Reward[3306235][7] = {}
	tTeamPkPackage_Reward[3306235][7]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][7]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][7]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][7]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][7]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][7]["RewardItem"][1]["Id"] = 3303072
	tTeamPkPackage_Reward[3306235][7]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][7]["Log"] = "0,0,3306235,1,12000554,2,3303072,1"
	--无影黑旋风技能外套
	tTeamPkPackage_Reward[3306235][8] = {}
	tTeamPkPackage_Reward[3306235][8]["DeleteItem"] = {}
	tTeamPkPackage_Reward[3306235][8]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][8]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][8]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][8]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][8]["RewardItem"][1]["Id"] = 3303083
	tTeamPkPackage_Reward[3306235][8]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][8]["Log"] = "0,0,3306235,1,12000554,2,3303083,1"
	--幸运四叶草技能外套
	tTeamPkPackage_Reward[3306235][9] = {}
	tTeamPkPackage_Reward[3306235][9]["DeleteItem"] = {} 
	tTeamPkPackage_Reward[3306235][9]["DeleteItem"][1] = {}
	tTeamPkPackage_Reward[3306235][9]["DeleteItem"][1]["Id"] = 3306235
	tTeamPkPackage_Reward[3306235][9]["RewardItem"] = {}
	tTeamPkPackage_Reward[3306235][9]["RewardItem"][1] = {}
	tTeamPkPackage_Reward[3306235][9]["RewardItem"][1]["Id"] = 3303693
	tTeamPkPackage_Reward[3306235][9]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tTeamPkPackage_Reward[3306235][9]["Log"] = "0,0,3306235,1,12000554,2,3303693,1"


-- 天阶赛	
local tTeamPkPackage_DayOrder = {}
	tTeamPkPackage_DayOrder["ActivityTime"] = tActivityTime["TianjieSai"]["ActivityTime"]
	tTeamPkPackage_DayOrder["Global"] = 50990
	tTeamPkPackage_DayOrder["Stc"] = {}
	tTeamPkPackage_DayOrder["Stc"][1] = {}
	tTeamPkPackage_DayOrder["Stc"][1]["EventType"] = 112
	tTeamPkPackage_DayOrder["Stc"][1]["DataType"] = 77
	tTeamPkPackage_DayOrder["Stc"][2] = {}
	tTeamPkPackage_DayOrder["Stc"][2]["EventType"] = 112
	tTeamPkPackage_DayOrder["Stc"][2]["DataType"] = 65

	tTeamPkPackage_DayOrder["Score"] = {}
	tTeamPkPackage_DayOrder["Score"][720794] = 50
	tTeamPkPackage_DayOrder["Score"][720795] = 50
	tTeamPkPackage_DayOrder["Score"][720796] = 50
	tTeamPkPackage_DayOrder["Score"][720797] = 100
	tTeamPkPackage_DayOrder["Score"][720798] = 30
	tTeamPkPackage_DayOrder["Score"][720799] = 30
	tTeamPkPackage_DayOrder["Score"][720800] = 30
	tTeamPkPackage_DayOrder["Score"][720801] = 60
	tTeamPkPackage_DayOrder["Score"][720802] = 20
	tTeamPkPackage_DayOrder["Score"][720803] = 20
	tTeamPkPackage_DayOrder["Score"][720804] = 20
	tTeamPkPackage_DayOrder["Score"][720805] = 40
	tTeamPkPackage_DayOrder["Score"][720806] = 10
	tTeamPkPackage_DayOrder["Score"][720807] = 10
	tTeamPkPackage_DayOrder["Score"][720808] = 10
	tTeamPkPackage_DayOrder["Score"][720809] = 20

-- -- 额外奖励表
local tTeamPkPackage_Additional = {}
	-- 跨服组队PK赛
	tTeamPkPackage_Additional[1] = {}
	tTeamPkPackage_Additional[1]["ActivityTime"] = tActivityTime["ServerTeamPk"]["Ticket"]
	tTeamPkPackage_Additional[1]["UseItem"] = {720795,720796,720797,720799,720800,720801,720803,720804,720805,720807,720808,720809}
	tTeamPkPackage_Additional[1]["RewardItem"] = {}
	tTeamPkPackage_Additional[1]["RewardItem"][1] = {}
	tTeamPkPackage_Additional[1]["RewardItem"][1]["Id"] = 3303237
	tTeamPkPackage_Additional[1]["RewardItem"][1]["Attr"] = "0 5"
	
	
	-- -- 7月第一届CO地图争霸活动
	-- tTeamPkPackage_Additional[2] = {}
	-- tTeamPkPackage_Additional[2]["ActivityTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
	-- tTeamPkPackage_Additional[2]["UseItem"] = {720794,720795,720796,720797}
	-- tTeamPkPackage_Additional[2]["RewardItem"] = {}
	-- tTeamPkPackage_Additional[2]["RewardItem"][1] = {}
	-- tTeamPkPackage_Additional[2]["RewardItem"][1]["Id"] = 3309765
	-- tTeamPkPackage_Additional[2]["RewardItem"][1]["Attr"] = "0 30"
	
	-- tTeamPkPackage_Additional[3] = {}
	-- tTeamPkPackage_Additional[3]["ActivityTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
	-- tTeamPkPackage_Additional[3]["UseItem"] = {720798,720799,720800,720801}
	-- tTeamPkPackage_Additional[3]["RewardItem"] = {}
	-- tTeamPkPackage_Additional[3]["RewardItem"][1] = {}
	-- tTeamPkPackage_Additional[3]["RewardItem"][1]["Id"] = 3309765
	-- tTeamPkPackage_Additional[3]["RewardItem"][1]["Attr"] = "0 20"
	
	-- tTeamPkPackage_Additional[4] = {}
	-- tTeamPkPackage_Additional[4]["ActivityTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
	-- tTeamPkPackage_Additional[4]["UseItem"] = {720802,720803,720804,720805}
	-- tTeamPkPackage_Additional[4]["RewardItem"] = {}
	-- tTeamPkPackage_Additional[4]["RewardItem"][1] = {}
	-- tTeamPkPackage_Additional[4]["RewardItem"][1]["Id"] = 3309765
	-- tTeamPkPackage_Additional[4]["RewardItem"][1]["Attr"] = "0 15"
	
	-- tTeamPkPackage_Additional[5] = {}
	-- tTeamPkPackage_Additional[5]["ActivityTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
	-- tTeamPkPackage_Additional[5]["UseItem"] = {720806,720807,720808,720809}
	-- tTeamPkPackage_Additional[5]["RewardItem"] = {}
	-- tTeamPkPackage_Additional[5]["RewardItem"][1] = {}
	-- tTeamPkPackage_Additional[5]["RewardItem"][1]["Id"] = 3309765
	-- tTeamPkPackage_Additional[5]["RewardItem"][1]["Attr"] = "0 10"
--10月新服新增天石礼包奖励
local tTeamPkPackage_Cpgift = {}
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[3314014]
-- ===删除: 3314014,1
tTeamPkPackage_Cpgift[3314014] = {}
tTeamPkPackage_Cpgift[3314014]["DeleteItem"] = {} 
tTeamPkPackage_Cpgift[3314014]["DeleteItem"][1] = {}
tTeamPkPackage_Cpgift[3314014]["DeleteItem"][1]["Id"] = 3314014
tTeamPkPackage_Cpgift[3314014]["RewardEMoney"] = {}
tTeamPkPackage_Cpgift[3314014]["RewardEMoney"]["Value"] = 1000 -- 天石, 【需求】300天石
tTeamPkPackage_Cpgift[3314014]["RewardEMoney"]["EmoneyLog"] = "10000	1038	-1000	-1000	1	"
tTeamPkPackage_Cpgift[3314014]["LogId"] = 10000249
tTeamPkPackage_Cpgift[3314014]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[3314014]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[3314014]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[3314015]
-- ===删除: 3314015,1
tTeamPkPackage_Cpgift[3314015] = {}
tTeamPkPackage_Cpgift[3314015]["DeleteItem"] = {} 
tTeamPkPackage_Cpgift[3314015]["DeleteItem"][1] = {}
tTeamPkPackage_Cpgift[3314015]["DeleteItem"][1]["Id"] = 3314015
tTeamPkPackage_Cpgift[3314015]["RewardEMoney"] = {}
tTeamPkPackage_Cpgift[3314015]["RewardEMoney"]["Value"] = 100 -- 天石, 【需求】100天石
tTeamPkPackage_Cpgift[3314015]["RewardEMoney"]["EmoneyLog"] = "10000	1038	-100	-100	1	"
tTeamPkPackage_Cpgift[3314015]["LogId"] = 10000249
tTeamPkPackage_Cpgift[3314015]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[3314015]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[3314015]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[3314016]
-- ===删除: 3314016,1
tTeamPkPackage_Cpgift[3314016] = {}
tTeamPkPackage_Cpgift[3314016]["DeleteItem"] = {} 
tTeamPkPackage_Cpgift[3314016]["DeleteItem"][1] = {}
tTeamPkPackage_Cpgift[3314016]["DeleteItem"][1]["Id"] = 3314016
tTeamPkPackage_Cpgift[3314016]["RewardEMoney"] = {}
tTeamPkPackage_Cpgift[3314016]["RewardEMoney"]["Value"] = 50 -- 天石, 【需求】50天石
tTeamPkPackage_Cpgift[3314016]["RewardEMoney"]["EmoneyLog"] = "10000	1038	-50	-50	1	"
tTeamPkPackage_Cpgift[3314016]["LogId"] = 10000249
tTeamPkPackage_Cpgift[3314016]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[3314016]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[3314016]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[3314017]
-- ===删除: 3314017,1
tTeamPkPackage_Cpgift[3314017] = {}
tTeamPkPackage_Cpgift[3314017]["DeleteItem"] = {} 
tTeamPkPackage_Cpgift[3314017]["DeleteItem"][1] = {}
tTeamPkPackage_Cpgift[3314017]["DeleteItem"][1]["Id"] = 3314017
tTeamPkPackage_Cpgift[3314017]["RewardEMoney"] = {}
tTeamPkPackage_Cpgift[3314017]["RewardEMoney"]["Value"] = 500 -- 天石, 【需求】500天石
tTeamPkPackage_Cpgift[3314017]["RewardEMoney"]["EmoneyLog"] = "10000	1038	-500	-500	1	"
tTeamPkPackage_Cpgift[3314017]["LogId"] = 10000249
tTeamPkPackage_Cpgift[3314017]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[3314017]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[3314017]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[3314018]
-- ===删除: 3314018,1
tTeamPkPackage_Cpgift[3314018] = {}
tTeamPkPackage_Cpgift[3314018]["DeleteItem"] = {} 
tTeamPkPackage_Cpgift[3314018]["DeleteItem"][1] = {}
tTeamPkPackage_Cpgift[3314018]["DeleteItem"][1]["Id"] = 3314018
tTeamPkPackage_Cpgift[3314018]["RewardEMoney"] = {}
tTeamPkPackage_Cpgift[3314018]["RewardEMoney"]["Value"] = 10000 -- 天石, 【需求】1000天石
tTeamPkPackage_Cpgift[3314018]["RewardEMoney"]["EmoneyLog"] = "10000	1038	-10000	-10000	1	"
tTeamPkPackage_Cpgift[3314018]["LogId"] = 10000249
tTeamPkPackage_Cpgift[3314018]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[3314018]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[3314018]["RewardEffect"]["Effect"] = "angelwing"

--给玩家相应的奖励
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[720797]
-- ===删除: 720797,1
tTeamPkPackage_Cpgift[720797] = {}
tTeamPkPackage_Cpgift[720797]["RewardItem"] = {}
tTeamPkPackage_Cpgift[720797]["RewardItem"][1] = {}
tTeamPkPackage_Cpgift[720797]["RewardItem"][1]["Id"] = 3314014 -- 【库】 3314014 【1000CPsPack】[属性:8]
tTeamPkPackage_Cpgift[720797]["RewardItem"][1]["Attr"] = "0 2"
tTeamPkPackage_Cpgift[720797]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[720797]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[720797]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[720801]
-- ===删除: 720801,1
tTeamPkPackage_Cpgift[720801] = {}
tTeamPkPackage_Cpgift[720801]["RewardItem"] = {}
tTeamPkPackage_Cpgift[720801]["RewardItem"][1] = {}
tTeamPkPackage_Cpgift[720801]["RewardItem"][1]["Id"] = 3314014 -- 【库】 3314014 【1000CPsPack】[属性:8]
tTeamPkPackage_Cpgift[720801]["RewardItem"][1]["Attr"] = "0 1"
tTeamPkPackage_Cpgift[720801]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[720801]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[720801]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[720805]
-- ===删除: 720805,1
tTeamPkPackage_Cpgift[720805] = {}
tTeamPkPackage_Cpgift[720805]["RewardItem"] = {}
tTeamPkPackage_Cpgift[720805]["RewardItem"][1] = {}
tTeamPkPackage_Cpgift[720805]["RewardItem"][1]["Id"] = 3314017 -- 【库】 3314017 【500CPsPack】[属性:8]
tTeamPkPackage_Cpgift[720805]["RewardItem"][1]["Attr"] = "0 1"
tTeamPkPackage_Cpgift[720805]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[720805]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[720805]["RewardEffect"]["Effect"] = "angelwing"
-- ===StarSeaPack
-- ===索引: tTeamPkPackage_Cpgift[720797]
-- ===删除: 720797,1
tTeamPkPackage_Cpgift[720809] = {}
tTeamPkPackage_Cpgift[720809]["RewardItem"] = {}
tTeamPkPackage_Cpgift[720809]["RewardItem"][1] = {}
tTeamPkPackage_Cpgift[720809]["RewardItem"][1]["Id"] = 3314016 -- 【库】 3314016 【50CPsPack】[属性:8]
tTeamPkPackage_Cpgift[720809]["RewardItem"][1]["Attr"] = "0 5"
tTeamPkPackage_Cpgift[720809]["RewardEffect"] = {}
tTeamPkPackage_Cpgift[720809]["RewardEffect"]["SzObj"] = "self"
tTeamPkPackage_Cpgift[720809]["RewardEffect"]["Effect"] = "angelwing"

--新老服区分globalid 
local tTeamPkPackage_NewGlobalId = {}
tTeamPkPackage_NewGlobalId["Global"] = 53779
--------------------------------------------------------------------逻辑部分-------------------------------------------------------------------
-- 判断是否新服天阶赛
function TeamPkPackage_NewSeverTjs()
	if Get_SysDynaGlobalData2(tTeamPkPackage_DayOrder["Global"]) == 1 then
		tTeamPkPackage_DayOrder["ActivityTime"] = tActivityTime["TianjieSai"]["NewActivityTime"]
	end
end

function TeamPkPackage_Main(nItemId,sItemName)
	TeamPkPackage_NewSeverTjs()
	-- 判断是否天阶赛
	if Sys_ChkFullTime(tTeamPkPackage_DayOrder["ActivityTime"]) then
		local nEvent = tTeamPkPackage_DayOrder["Stc"][1]["EventType"]
		local nType = tTeamPkPackage_DayOrder["Stc"][1]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		if not TeamPkPackage_ChkReward() then
			Sys_MsgBox(tTeamPkPackage_Text["RewardDayOrder"],string.format("TeamPkPackage_Use</N>%d</S>%s",nItemId,sItemName))
			return
		end
	end
	
	if nItemId >=720794 and nItemId <= 720805 then		
		--检测是否为7月新服
		if Get_SysDynaGlobalData0(tTeamPkPackage_JulyNewServer ["GlobalId"]) == 1 then
			TeamPkPackage_JulyNewServerUse(nItemId,sItemName)
			return
		end
	end
	
	
	TeamPkPackage_Use(nItemId,sItemName)
end

function TeamPkPackage_Use(nItemId,sItemName)
	-- 判断背包空间
	if not TeamPkPackage_ChkSpace(nItemId) then
		return
	end
	
	-- 判断天石上限
	if not TeamPkPackage_ChkEMoney(nItemId) then
		return
	end
	
	local tReward = CommonFunc_Copy(tTeamPkPackage_Reward[nItemId])
	if SpecialServer_ChkNoGiftServer() then--激情服获得旧奖励
		if tTeamPkPackage_Reward_NoGift[nItemId] ~= nil then
			tReward = CommonFunc_Copy(tTeamPkPackage_Reward_NoGift[nItemId])
		end
	end

	-- 获得原有奖励
	if RewardTemplate_UseItemAndMsg(tReward) then
		-- 获得天阶赛积分
		TeamPkPackage_RewardScore(nItemId)
		-- 获得额外奖励
		TeamPkPackage_RewardAdditional(nItemId)
		-- 琳琅嘉年华
		-- if nItemId >=720794 and nItemId <= 720797 then
			-- Dailypoint_RewardDraw(10)
		-- end
		-- if nItemId >=720798 and nItemId <= 720801 then
			-- Dailypoint_RewardDraw(11)
		-- end
		-- if nItemId >=720802 and nItemId <= 720805 then
			-- Dailypoint_RewardDraw(12)
		-- end
		-- if nItemId >=720806 and nItemId <= 720809 then
			-- Dailypoint_RewardDraw(9)
		-- end
		-- 7月第一届CO地图争霸活动
		if nItemId >=720794 and nItemId <= 720797 then
			CoMapCompetition_Pack(nItemId,3)
		end
		if nItemId >=720798 and nItemId <= 720801 then
			CoMapCompetition_Pack(nItemId,4)
		end
		if nItemId >=720802 and nItemId <= 720805 then
			CoMapCompetition_Pack(nItemId,5)
		end
		if nItemId >=720806 and nItemId <= 720809 then
			CoMapCompetition_Pack(nItemId,6)
		end
		--王者服
		if nItemId == 720797 or nItemId == 720801 or nItemId == 720805 or nItemId == 720809 then
			KingServer_Reward(3, nItemId)
		end
		--副职业修行月
		if nItemId == 720796 or nItemId == 720797 then
			SecondProGrowth_SendPacket(10)--组队PK赛冠军
		elseif nItemId == 720801 or nItemId == 720800 then
			SecondProGrowth_SendPacket(9)--组队PK赛亚军
		elseif nItemId == 720804 or nItemId ==720805 then
			SecondProGrowth_SendPacket(8)--组队PK赛季军
		elseif nItemId ==720808 or nItemId == 720809 then
			SecondProGrowth_SendPacket(7)--组队PK赛8强
		end
		
		--10月新服
		if nItemId >=720794 and nItemId <= 720809 then
			OctNewServer_PKScore(nItemId)
		end
		
		--10月新服2月
		local nGetGlobalId = Get_SysDynaGlobalData0(tTeamPkPackage_NewGlobalId["Global"])
		if nGetGlobalId == 1 and Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["HundredActivityTime"]) 
			and tTeamPkPackage_Cpgift[nItemId] ~= nil then
			RewardTemplate_UseItemAndMsg(tTeamPkPackage_Cpgift[nItemId])
		end
		
	end
end

function TeamPkPackage_JulyNewServerUse(nItemId,sItemName)
	-- 判断背包空间
	if not TeamPkPackage_ChkSpace(nItemId) then
		return
	end
	
	-- 判断天石上限
	if not TeamPkPackage_ChkEMoneyMono(nItemId) then
		return
	end
	
	
	-- 获得原有奖励
	if RewardTemplate_UseItemAndMsg(tTeamPkPackage_JulyNewServer[nItemId]) then
		-- 获得天阶赛积分
		TeamPkPackage_RewardScore(nItemId)
		-- 获得额外奖励
		TeamPkPackage_RewardAdditional(nItemId)
		-- 琳琅嘉年华
		-- if nItemId >=720794 and nItemId <= 720797 then
			-- Dailypoint_RewardDraw(10)
		-- end
		-- if nItemId >=720798 and nItemId <= 720801 then
			-- Dailypoint_RewardDraw(11)
		-- end
		-- if nItemId >=720802 and nItemId <= 720805 then
			-- Dailypoint_RewardDraw(12)
		-- end
		-- if nItemId >=720806 and nItemId <= 720809 then
			-- Dailypoint_RewardDraw(9)
		-- end
		-- 7月第一届CO地图争霸活动
		if nItemId >=720794 and nItemId <= 720797 then
			CoMapCompetition_Pack(nItemId,3)
		end
		if nItemId >=720798 and nItemId <= 720801 then
			CoMapCompetition_Pack(nItemId,4)
		end
		if nItemId >=720802 and nItemId <= 720805 then
			CoMapCompetition_Pack(nItemId,5)
		end
		if nItemId >=720806 and nItemId <= 720809 then
			CoMapCompetition_Pack(nItemId,6)
		end
	end
end




function TeamPkPackage_RewardScore(nItemId)
	-- 判断是否天阶赛
	if not Sys_ChkFullTime(tTeamPkPackage_DayOrder["ActivityTime"]) then
		return
	end
	
	-- 判断是否领取天阶赛积分
	if not TeamPkPackage_ChkReward() then
		return
	end
	
	local nEvent = tTeamPkPackage_DayOrder["Stc"][1]["EventType"]
	local nType = tTeamPkPackage_DayOrder["Stc"][1]["DataType"]
	local nTotalEvent = tTeamPkPackage_DayOrder["Stc"][2]["EventType"]
	local nTotalType = tTeamPkPackage_DayOrder["Stc"][2]["DataType"]
	local nScore = tTeamPkPackage_DayOrder["Score"][nItemId]
	
	Task_AddStatistic(nTotalEvent,nTotalType,nScore,1)
	Task_AddStatistic(nEvent,nType,nScore,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	User_TalkChannel2005(string.format(tTeamPkPackage_Text["HaveDayOrder"],nScore))
end

-- 判断是否可以领取天阶赛积分
function TeamPkPackage_ChkReward()
	local nEvent = tTeamPkPackage_DayOrder["Stc"][1]["EventType"]
	local nType = tTeamPkPackage_DayOrder["Stc"][1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	if nData == 0 then
		return true
	end
	
	-- 判断是否隔了一周
	if Task_StcInterval(nEvent,nType,7,1) then
		return true
	end
	
	return false
end

function TeamPkPackage_ChkRewardAdditional(nItemId,tTable)
	if not Sys_ChkFullTime(tTable["ActivityTime"]) then
		return false
	end
	
	for i,v in pairs(tTable["UseItem"]) do
		if v == nItemId then
			return true
		end
	end

	return false
end

-- 获取额外奖励的背包空间
function TeamPkPackage_GetAdditionalSpace(nItemId)
	local nSpace = 0
	
	for i,v in pairs(tTeamPkPackage_Additional) do
		if TeamPkPackage_ChkRewardAdditional(nItemId,v) then
			nSpace = nSpace + RewardTemplate_GetRewardSpace(v)
		end
	end

	return nSpace
end

-- 判断背包空间
function TeamPkPackage_ChkSpace(nItemId)
	local nSubSpace = RewardTemplate_GetDelSpace(tTeamPkPackage_Reward[nItemId])
	local nRewardSpace = RewardTemplate_GetRewardSpace(tTeamPkPackage_Reward[nItemId])
	local nAdditionalSpace = TeamPkPackage_GetAdditionalSpace(nItemId)

	local nSpace = nRewardSpace + nAdditionalSpace - nSubSpace
	
	-- 琳琅嘉年华
	-- if Sys_ChkFullTime(tActivityTime["LinLang"]["ActivityTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpace = nSpace + 1
		-- end
	-- end
	
	-- 7月第一届CO地图争霸活动
	if  Sys_ChkFullTime(tActivityTime["CoMapCompetition"]["ActTime"]) then
		nSpace = nSpace + 1
	end
	
	--10月新服活动背包空间判断
	local nGetGlobalId = Get_SysDynaGlobalData0(tTeamPkPackage_NewGlobalId["Global"])
	if nGetGlobalId == 1 and Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["HundredActivityTime"]) 
		and tTeamPkPackage_Cpgift[nItemId] ~= nil then
		nSpace = nSpace + 1
	end
	
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tTeamPkPackage_Text["Space"],nSpace))
		return false
	end
	
	return true
end

-- 获得额外奖励
function TeamPkPackage_RewardAdditional(nItemId)
	for i,v in pairs(tTeamPkPackage_Additional) do
		if TeamPkPackage_ChkRewardAdditional(nItemId,v) then
			RewardTemplate_UseItemAndMsg(v)
		end
	end
end

-- 判断天石上限
function TeamPkPackage_ChkEMoney(nItemId)
	if tTeamPkPackage_Reward[nItemId]["RewardEMoney"] == nil then
		return true
	end
	
	local nEMoney = Get_UserEMoney()
	local nAddEMoney = tTeamPkPackage_Reward[nItemId]["RewardEMoney"]["Value"]
	
	if nEMoney + nAddEMoney > G_User_MaxEmoney then
		User_TalkChannel2005(tTeamPkPackage_Text["MaxEMoney"])
		return false
	end
	
	return true
end

-- 判断赠天石上限
function TeamPkPackage_ChkEMoneyMono(nItemId)
	if tTeamPkPackage_Reward[nItemId]["RewardEMoneyMono"] == nil then
		return true
	end
	
	local nEMoneyMono = Get_UserMonoEMoney()
	local nAddEMoneyMono = tTeamPkPackage_Reward[nItemId]["RewardEMoneyMono"]["Value"]
	
	if nEMoneyMono + nAddEMoneyMono > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tTeamPkPackage_Text["MaxEMoneyMono"])
		return false
	end
	
	return true
end

--明亮星陨石精品包和兑换券包，3306213，3305656
function TeamPkPackage_NewPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--修改为新的战火重燃礼包打开时间
	if not Sys_ChkFullTime(tActivityTime["Summer"]["NewExchange"]) then
		--接过期对白
		User_TalkChannel2005(tInterServiceTeamPk_Text["TimeOut"])
		Item_DelAllItemByType(nItemId)
		return
	end
	RewardTemplate_UseItemAndMsg(tTeamPkPackage_Reward[nItemId])
end

--7天技能外套包
function TeamPkPackage_SkillPackageChk(nItemId)
	if not Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		--接过期对白
		User_TalkChannel2005(tInterServiceTeamPk_Text["TimeOut"])
		Item_DelAllItemByType(nItemId)
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
--7天技能外套包
function TeamPkPackage_SkillPackageOpen(nItemTypeId ,nIndex)
	RewardTemplate_UseItemAndMsg(tTeamPkPackage_Reward[nItemTypeId][nIndex])
end

--天石礼包打开获得
function TeamPkPackage_OpenGiftStone(nItemId)
	if tTeamPkPackage_Cpgift[nItemId]["RewardEMoney"] == nil then
		return false
	end
	
	local nEMoney = Get_UserEMoney()
	local nAddEMoney = tTeamPkPackage_Cpgift[nItemId]["RewardEMoney"]["Value"]
	
	if nEMoney + nAddEMoney > G_User_MaxEmoney then
		User_TalkChannel2005(tTeamPkPackage_Text["MaxEMoney"])
		return false
	end
	
	
	RewardTemplate_UseItemAndMsg(tTeamPkPackage_Cpgift[nItemId])
	return true
end
---------------------------------------------------------------------物品配置------------------------------------------------------------------
tItem[720794] = tItem[720794] or {}
tItem[720794]["Function"] = function(nItemId,sItemName)
	TeamPkPackage_Main(nItemId,sItemName)
end

tItem[3306213] = tItem[3306213] or {}
tItem[3306213]["Function"] = function(nItemId,sItemName)
	TeamPkPackage_NewPackage(nItemId)
end

tItem[3305656] = tItem[3305656] or {}
tItem[3305656]["Function"] = function(nItemId,sItemName)
	TeamPkPackage_NewPackage(nItemId)
end

--7天豪华技能外套包
tItemFace[3306235] = 846
tItem[3306235] = tItem[3306235] or {}
tItem[3306235]["Function"] = function(nItemId,sItemName)
	TeamPkPackage_SkillPackageChk(nItemId)
end

tItem[3306235]["DialogueText"] = tTeamPkPackage_Text[3306235]
tItem[3306235]["Text1-1"] = {111}
tItem[3306235]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3306235]["OptionFunc111"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>1"
tItem[3306235]["OptionFunc112"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>2"
tItem[3306235]["OptionFunc113"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>3"
tItem[3306235]["OptionFunc114"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>4"
tItem[3306235]["OptionFunc115"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>5"
tItem[3306235]["OptionFunc116"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>6"
tItem[3306235]["OptionFunc117"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>7"
tItem[3306235]["OptionFunc118"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>8"
tItem[3306235]["OptionFunc119"] = "TeamPkPackage_SkillPackageOpen</N>3306235</N>9"
	



tItem[720795] = tItem[720794]
tItem[720796] = tItem[720794]
tItem[720797] = tItem[720794]
tItem[720798] = tItem[720794]
tItem[720799] = tItem[720794]
tItem[720800] = tItem[720794]
tItem[720801] = tItem[720794]
tItem[720802] = tItem[720794]
tItem[720803] = tItem[720794]
tItem[720804] = tItem[720794]
tItem[720805] = tItem[720794]
tItem[720806] = tItem[720794]
tItem[720807] = tItem[720794]
tItem[720808] = tItem[720794]
tItem[720809] = tItem[720794]

--10月新服2新增天石礼包
tItem[3314014] = tItem[3314014] or {}
tItem[3314014]["Function"] = function(nItemId,sItemName)
	TeamPkPackage_OpenGiftStone(nItemId)
end
tItem[3314015] = tItem[3314014]
tItem[3314016] = tItem[3314014]
tItem[3314017] = tItem[3314014]
tItem[3314018] = tItem[3314014]