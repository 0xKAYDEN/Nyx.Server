------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]抽奖礼包
--Purpose:	抽奖礼包
--Creator: 	郑鋆
--Created:	2017/04/20
------------------------------------------------------------------------------------

-- 命名前缀
-- LotteryPackage_

-- 奖励表
local tLotteryPackage_Reward = {}
	-- 赤炼石+2礼包（2颗+2）
	tLotteryPackage_Reward[3303154] = {}
	tLotteryPackage_Reward[3303154]["LogId"] = 18000154
	tLotteryPackage_Reward[3303154]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303154]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303154]["DeleteItem"][1]["Id"] = 3303154
	tLotteryPackage_Reward[3303154]["RewardItem"] = {}
	tLotteryPackage_Reward[3303154]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303154]["RewardItem"][1]["Id"] = 730002
	tLotteryPackage_Reward[3303154]["RewardItem"][1]["Attr"] = "0 2"

	-- 赤炼石+3礼包（2颗+3）
	tLotteryPackage_Reward[3303155] = {}
	tLotteryPackage_Reward[3303155]["LogId"] = 18000154
	tLotteryPackage_Reward[3303155]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303155]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303155]["DeleteItem"][1]["Id"] = 3303155
	tLotteryPackage_Reward[3303155]["RewardItem"] = {}
	tLotteryPackage_Reward[3303155]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303155]["RewardItem"][1]["Id"] = 730003
	tLotteryPackage_Reward[3303155]["RewardItem"][1]["Attr"] = "0 2"

	-- 赤炼石+4礼包（2颗+4）
	tLotteryPackage_Reward[3303156] = {}
	tLotteryPackage_Reward[3303156]["LogId"] = 18000154
	tLotteryPackage_Reward[3303156]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303156]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303156]["DeleteItem"][1]["Id"] = 3303156
	tLotteryPackage_Reward[3303156]["RewardItem"] = {}
	tLotteryPackage_Reward[3303156]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303156]["RewardItem"][1]["Id"] = 730004
	tLotteryPackage_Reward[3303156]["RewardItem"][1]["Attr"] = "0 2"

	-- 赤炼石+5礼包（2颗+5）
	tLotteryPackage_Reward[3303157] = {}
	tLotteryPackage_Reward[3303157]["LogId"] = 18000154
	tLotteryPackage_Reward[3303157]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303157]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303157]["DeleteItem"][1]["Id"] = 3303157
	tLotteryPackage_Reward[3303157]["RewardItem"] = {}
	tLotteryPackage_Reward[3303157]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303157]["RewardItem"][1]["Id"] = 730005
	tLotteryPackage_Reward[3303157]["RewardItem"][1]["Attr"] = "0 2"

	-- 随机+2马礼包
	tLotteryPackage_Reward[3303158] = {}
	tLotteryPackage_Reward[3303158]["LogId"] = 18000154
	tLotteryPackage_Reward[3303158]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303158]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303158]["DeleteItem"][1]["Id"] = 3303158
	tLotteryPackage_Reward[3303158]["ItemChanceSum"] = 30000
	-- +2枣红马
	tLotteryPackage_Reward[3303158][1] = {}
	tLotteryPackage_Reward[3303158][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303158][1]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303158][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303158][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303158][1]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303158][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 2"
	-- +2雪脂马
	tLotteryPackage_Reward[3303158][2] = {}
	tLotteryPackage_Reward[3303158][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303158][2]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303158][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303158][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303158][2]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303158][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 2 0 0 0 0 0 0 150"
	-- +2黑颈马
	tLotteryPackage_Reward[3303158][3] = {}
	tLotteryPackage_Reward[3303158][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303158][3]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303158][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303158][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303158][3]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303158][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 2 0 0 0 0 0 0 255"
	
	-- 随机+3马礼包
	tLotteryPackage_Reward[3303159] = {}
	tLotteryPackage_Reward[3303159]["LogId"] = 18000154
	tLotteryPackage_Reward[3303159]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303159]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303159]["DeleteItem"][1]["Id"] = 3303159
	tLotteryPackage_Reward[3303159]["ItemChanceSum"] = 30000
	-- +3枣红马
	tLotteryPackage_Reward[3303159][1] = {}
	tLotteryPackage_Reward[3303159][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303159][1]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303159][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303159][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303159][1]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303159][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 3"
	-- +3雪脂马
	tLotteryPackage_Reward[3303159][2] = {}
	tLotteryPackage_Reward[3303159][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303159][2]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303159][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303159][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303159][2]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303159][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	-- +3黑颈马
	tLotteryPackage_Reward[3303159][3] = {}
	tLotteryPackage_Reward[3303159][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303159][3]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303159][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303159][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303159][3]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303159][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255"
	
	-- 随机+4马礼包
	tLotteryPackage_Reward[3303160] = {}
	tLotteryPackage_Reward[3303160]["LogId"] = 18000154
	tLotteryPackage_Reward[3303160]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303160]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303160]["DeleteItem"][1]["Id"] = 3303160
	tLotteryPackage_Reward[3303160]["ItemChanceSum"] = 30000
	-- +4枣红马
	tLotteryPackage_Reward[3303160][1] = {}
	tLotteryPackage_Reward[3303160][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303160][1]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303160][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303160][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303160][1]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303160][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 4"
	-- +4雪脂马
	tLotteryPackage_Reward[3303160][2] = {}
	tLotteryPackage_Reward[3303160][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303160][2]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303160][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303160][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303160][2]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303160][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"
	-- +4黑颈马
	tLotteryPackage_Reward[3303160][3] = {}
	tLotteryPackage_Reward[3303160][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303160][3]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303160][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303160][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303160][3]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303160][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 4 0 0 0 0 0 0 255"
	
	-- 随机+5马礼包
	tLotteryPackage_Reward[3303161] = {}
	tLotteryPackage_Reward[3303161]["LogId"] = 18000154
	tLotteryPackage_Reward[3303161]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303161]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303161]["DeleteItem"][1]["Id"] = 3303161
	tLotteryPackage_Reward[3303161]["ItemChanceSum"] = 30000
	-- +5枣红马
	tLotteryPackage_Reward[3303161][1] = {}
	tLotteryPackage_Reward[3303161][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303161][1]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303161][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303161][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303161][1]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303161][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 5"
	-- +5雪脂马
	tLotteryPackage_Reward[3303161][2] = {}
	tLotteryPackage_Reward[3303161][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303161][2]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303161][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303161][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303161][2]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303161][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150"
	-- +5黑颈马
	tLotteryPackage_Reward[3303161][3] = {}
	tLotteryPackage_Reward[3303161][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303161][3]["ItemChance"] = 10000
	tLotteryPackage_Reward[3303161][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303161][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303161][3]["RewardItem"][1]["Id"] = 300000
	tLotteryPackage_Reward[3303161][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 5 0 0 0 0 0 0 255"
	
	-- 良品宝石随机礼包
	tLotteryPackage_Reward[3303162] = {}
	tLotteryPackage_Reward[3303162]["LogId"] = 18000154
	tLotteryPackage_Reward[3303162]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303162]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303162]["DeleteItem"][1]["Id"] = 3303162
	tLotteryPackage_Reward[3303162]["ItemChanceSum"] = 10000
	-- 良品凤吟宝石	20%
	tLotteryPackage_Reward[3303162][1] = {}
	tLotteryPackage_Reward[3303162][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303162][1]["ItemChance"] = 2000
	tLotteryPackage_Reward[3303162][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303162][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303162][1]["RewardItem"][1]["Id"] = 700002
	tLotteryPackage_Reward[3303162][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品龙恨宝石	20%
	tLotteryPackage_Reward[3303162][2] = {}
	tLotteryPackage_Reward[3303162][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303162][2]["ItemChance"] = 2000
	tLotteryPackage_Reward[3303162][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303162][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303162][2]["RewardItem"][1]["Id"] = 700012
	tLotteryPackage_Reward[3303162][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品惊鸿宝石	15%
	tLotteryPackage_Reward[3303162][3] = {}
	tLotteryPackage_Reward[3303162][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303162][3]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303162][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303162][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303162][3]["RewardItem"][1]["Id"] = 700022
	tLotteryPackage_Reward[3303162][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品青虹宝石	15%
	tLotteryPackage_Reward[3303162][4] = {}
	tLotteryPackage_Reward[3303162][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303162][4]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303162][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303162][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303162][4]["RewardItem"][1]["Id"] = 700032
	tLotteryPackage_Reward[3303162][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品紫霞宝石	15%
	tLotteryPackage_Reward[3303162][5] = {}
	tLotteryPackage_Reward[3303162][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303162][5]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303162][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303162][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303162][5]["RewardItem"][1]["Id"] = 700052
	tLotteryPackage_Reward[3303162][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品明月宝石	15%
	tLotteryPackage_Reward[3303162][6] = {}
	tLotteryPackage_Reward[3303162][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303162][6]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303162][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303162][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303162][6]["RewardItem"][1]["Id"] = 700062
	tLotteryPackage_Reward[3303162][6]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品宝石随机礼包
	tLotteryPackage_Reward[3303163] = {}
	tLotteryPackage_Reward[3303163]["LogId"] = 18000154
	tLotteryPackage_Reward[3303163]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303163]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303163]["DeleteItem"][1]["Id"] = 3303163
	tLotteryPackage_Reward[3303163]["ItemChanceSum"] = 10000
	-- 优质凤吟宝石	20%
	tLotteryPackage_Reward[3303163][1] = {}
	tLotteryPackage_Reward[3303163][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303163][1]["ItemChance"] = 2000
	tLotteryPackage_Reward[3303163][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303163][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303163][1]["RewardItem"][1]["Id"] = 700003
	tLotteryPackage_Reward[3303163][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 优质龙恨宝石	20%
	tLotteryPackage_Reward[3303163][2] = {}
	tLotteryPackage_Reward[3303163][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303163][2]["ItemChance"] = 2000
	tLotteryPackage_Reward[3303163][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303163][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303163][2]["RewardItem"][1]["Id"] = 700013
	tLotteryPackage_Reward[3303163][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 优质惊鸿宝石	15%
	tLotteryPackage_Reward[3303163][3] = {}
	tLotteryPackage_Reward[3303163][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303163][3]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303163][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303163][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303163][3]["RewardItem"][1]["Id"] = 700023
	tLotteryPackage_Reward[3303163][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 优质青虹宝石	15%
	tLotteryPackage_Reward[3303163][4] = {}
	tLotteryPackage_Reward[3303163][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303163][4]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303163][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303163][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303163][4]["RewardItem"][1]["Id"] = 700033
	tLotteryPackage_Reward[3303163][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 优质紫霞宝石	15%
	tLotteryPackage_Reward[3303163][5] = {}
	tLotteryPackage_Reward[3303163][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303163][5]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303163][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303163][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303163][5]["RewardItem"][1]["Id"] = 700053
	tLotteryPackage_Reward[3303163][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 优质明月宝石	15%
	tLotteryPackage_Reward[3303163][6] = {}
	tLotteryPackage_Reward[3303163][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303163][6]["ItemChance"] = 1500
	tLotteryPackage_Reward[3303163][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303163][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303163][6]["RewardItem"][1]["Id"] = 700063
	tLotteryPackage_Reward[3303163][6]["RewardItem"][1]["Attr"] = "0 1"

	-- 良品宝石可选礼包3
	tLotteryPackage_Reward[3303164] = {}
	tLotteryPackage_Reward[3303164]["LogId"] = 18000154
	tLotteryPackage_Reward[3303164]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303164]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303164]["DeleteItem"][1]["Id"] = 3303164
	tLotteryPackage_Reward[3303164]["ItemChanceSum"] = 10000
	-- 良品玄元宝石	83.34%
	tLotteryPackage_Reward[3303164][1] = {}
	tLotteryPackage_Reward[3303164][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303164][1]["ItemChance"] = 8334
	tLotteryPackage_Reward[3303164][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303164][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303164][1]["RewardItem"][1]["Id"] = 700072
	tLotteryPackage_Reward[3303164][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品天怒	8.33%
	tLotteryPackage_Reward[3303164][2] = {}
	tLotteryPackage_Reward[3303164][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303164][2]["ItemChance"] = 833
	tLotteryPackage_Reward[3303164][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303164][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303164][2]["RewardItem"][1]["Id"] = 700102
	tLotteryPackage_Reward[3303164][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 良品地灵	8.33%
	tLotteryPackage_Reward[3303164][3] = {}
	tLotteryPackage_Reward[3303164][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303164][3]["ItemChance"] = 833
	tLotteryPackage_Reward[3303164][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303164][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303164][3]["RewardItem"][1]["Id"] = 700122
	tLotteryPackage_Reward[3303164][3]["RewardItem"][1]["Attr"] = "0 1"

	-- 随机+6马礼包
	tLotteryPackage_Reward[3303165] = {}
	tLotteryPackage_Reward[3303165]["LogId"] = 18000154
	tLotteryPackage_Reward[3303165]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303165]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303165]["DeleteItem"][1]["Id"] = 3303165
	tLotteryPackage_Reward[3303165]["ItemChanceSum"] = 10000
	-- +6枣红马礼包	25%
	tLotteryPackage_Reward[3303165][1] = {}
	tLotteryPackage_Reward[3303165][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303165][1]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303165][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303165][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303165][1]["RewardItem"][1]["Id"] = 723863
	tLotteryPackage_Reward[3303165][1]["RewardItem"][1]["Attr"] = "0 1"
	-- +6雪脂马礼包	25%
	tLotteryPackage_Reward[3303165][2] = {}
	tLotteryPackage_Reward[3303165][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303165][2]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303165][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303165][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303165][2]["RewardItem"][1]["Id"] = 723864
	tLotteryPackage_Reward[3303165][2]["RewardItem"][1]["Attr"] = "0 1"
	-- +6黑颈马礼包	25%
	tLotteryPackage_Reward[3303165][3] = {}
	tLotteryPackage_Reward[3303165][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303165][3]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303165][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303165][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303165][3]["RewardItem"][1]["Id"] = 723865
	tLotteryPackage_Reward[3303165][3]["RewardItem"][1]["Attr"] = "0 1"
	-- +6变幻骑宠礼包	25%
	tLotteryPackage_Reward[3303165][4] = {}
	tLotteryPackage_Reward[3303165][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303165][4]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303165][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303165][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303165][4]["RewardItem"][1]["Id"] = 720049
	tLotteryPackage_Reward[3303165][4]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品装备随机包1
	tLotteryPackage_Reward[3303166] = {}
	tLotteryPackage_Reward[3303166]["LogId"] = 18000154
	tLotteryPackage_Reward[3303166]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303166]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303166]["DeleteItem"][1]["Id"] = 3303166
	tLotteryPackage_Reward[3303166]["ItemChanceSum"] = 10000

	-- 极品乾坤战甲	2.90%
	tLotteryPackage_Reward[3303166][1] = {}
	tLotteryPackage_Reward[3303166][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][1]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][1]["RewardItem"][1]["Id"] = 130089
	tLotteryPackage_Reward[3303166][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品罗汉箍	2.90%
	tLotteryPackage_Reward[3303166][2] = {}
	tLotteryPackage_Reward[3303166][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][2]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][2]["RewardItem"][1]["Id"] = 118089
	tLotteryPackage_Reward[3303166][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品玄铁铠	2.90%
	tLotteryPackage_Reward[3303166][3] = {}
	tLotteryPackage_Reward[3303166][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][3]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][3]["RewardItem"][1]["Id"] = 131089
	tLotteryPackage_Reward[3303166][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品束发紫金冠	2.90%
	tLotteryPackage_Reward[3303166][4] = {}
	tLotteryPackage_Reward[3303166][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][4]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][4]["RewardItem"][1]["Id"] = 111089
	tLotteryPackage_Reward[3303166][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品犀甲猎褂	2.90%
	tLotteryPackage_Reward[3303166][5] = {}
	tLotteryPackage_Reward[3303166][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][5]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][5]["RewardItem"][1]["Id"] = 133079
	tLotteryPackage_Reward[3303166][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品鹿角帽	2.90%
	tLotteryPackage_Reward[3303166][6] = {}
	tLotteryPackage_Reward[3303166][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][6]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][6]["RewardItem"][1]["Id"] = 113069
	tLotteryPackage_Reward[3303166][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品元始羽衣	2.90%
	tLotteryPackage_Reward[3303166][7] = {}
	tLotteryPackage_Reward[3303166][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][7]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][7]["RewardItem"][1]["Id"] = 134099
	tLotteryPackage_Reward[3303166][7]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品七星冠	2.90%
	tLotteryPackage_Reward[3303166][8] = {}
	tLotteryPackage_Reward[3303166][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][8]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][8]["RewardItem"][1]["Id"] = 114099
	tLotteryPackage_Reward[3303166][8]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品金丝香囊	2.90%
	tLotteryPackage_Reward[3303166][9] = {}
	tLotteryPackage_Reward[3303166][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][9]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][9]["RewardItem"][1]["Id"] = 121189
	tLotteryPackage_Reward[3303166][9]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品龙睛宝链	2.90%
	tLotteryPackage_Reward[3303166][10] = {}
	tLotteryPackage_Reward[3303166][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][10]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][10]["RewardItem"][1]["Id"] = 120189
	tLotteryPackage_Reward[3303166][10]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品宝蓝镯	2.90%
	tLotteryPackage_Reward[3303166][11] = {}
	tLotteryPackage_Reward[3303166][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][11]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][11]["RewardItem"][1]["Id"] = 152189
	tLotteryPackage_Reward[3303166][11]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品碧玉耳环	2.90%
	tLotteryPackage_Reward[3303166][12] = {}
	tLotteryPackage_Reward[3303166][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][12]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][12]["RewardItem"][1]["Id"] = 117089
	tLotteryPackage_Reward[3303166][12]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品白金钻戒	2.90%
	tLotteryPackage_Reward[3303166][13] = {}
	tLotteryPackage_Reward[3303166][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][13]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][13]["RewardItem"][1]["Id"] = 150199
	tLotteryPackage_Reward[3303166][13]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品碧晶凤扳	2.90%
	tLotteryPackage_Reward[3303166][14] = {}
	tLotteryPackage_Reward[3303166][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][14]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][14]["RewardItem"][1]["Id"] = 151179
	tLotteryPackage_Reward[3303166][14]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品麒麟靴	2.90%
	tLotteryPackage_Reward[3303166][15] = {}
	tLotteryPackage_Reward[3303166][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][15]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][15]["RewardItem"][1]["Id"] = 160199
	tLotteryPackage_Reward[3303166][15]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品枫溪锦带	2.07%
	tLotteryPackage_Reward[3303166][16] = {}
	tLotteryPackage_Reward[3303166][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][16]["ItemChance"] = 207
	tLotteryPackage_Reward[3303166][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][16]["RewardItem"][1]["Id"] = 141069
	tLotteryPackage_Reward[3303166][16]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品天鹅之恋	2.07%
	tLotteryPackage_Reward[3303166][17] = {}
	tLotteryPackage_Reward[3303166][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][17]["ItemChance"] = 207
	tLotteryPackage_Reward[3303166][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][17]["RewardItem"][1]["Id"] = 142069
	tLotteryPackage_Reward[3303166][17]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品凌霄扇	2.90%
	tLotteryPackage_Reward[3303166][18] = {}
	tLotteryPackage_Reward[3303166][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][18]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][18]["RewardItem"][1]["Id"] = 201009
	tLotteryPackage_Reward[3303166][18]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品混元塔	2.90%
	tLotteryPackage_Reward[3303166][19] = {}
	tLotteryPackage_Reward[3303166][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][19]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][19]["RewardItem"][1]["Id"] = 202009
	tLotteryPackage_Reward[3303166][19]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品赤月影	2.90%
	tLotteryPackage_Reward[3303166][20] = {}
	tLotteryPackage_Reward[3303166][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][20]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][20]["RewardItem"][1]["Id"] = 135089
	tLotteryPackage_Reward[3303166][20]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品赤月之息	2.90%
	tLotteryPackage_Reward[3303166][21] = {}
	tLotteryPackage_Reward[3303166][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][21]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][21]["RewardItem"][1]["Id"] = 112069
	tLotteryPackage_Reward[3303166][21]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品宿炎护额	2.90%
	tLotteryPackage_Reward[3303166][22] = {}
	tLotteryPackage_Reward[3303166][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][22]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][22]["RewardItem"][1]["Id"] = 123069
	tLotteryPackage_Reward[3303166][22]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品月尊法箍	2.90%
	tLotteryPackage_Reward[3303166][23] = {}
	tLotteryPackage_Reward[3303166][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][23]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][23]["RewardItem"][1]["Id"] = 143069
	tLotteryPackage_Reward[3303166][23]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品苦寒柔甲	2.90%
	tLotteryPackage_Reward[3303166][24] = {}
	tLotteryPackage_Reward[3303166][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][24]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][24]["RewardItem"][1]["Id"] = 136089
	tLotteryPackage_Reward[3303166][24]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品蟠龙出渊裳	2.90%
	tLotteryPackage_Reward[3303166][25] = {}
	tLotteryPackage_Reward[3303166][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][25]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][25]["RewardItem"][1]["Id"] = 139089
	tLotteryPackage_Reward[3303166][25]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品镇海帽	2.90%
	tLotteryPackage_Reward[3303166][26] = {}
	tLotteryPackage_Reward[3303166][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][26]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][26]["RewardItem"][1]["Id"] = 144069
	tLotteryPackage_Reward[3303166][26]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品墨云冠	1.24%
	tLotteryPackage_Reward[3303166][27] = {}
	tLotteryPackage_Reward[3303166][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][27]["ItemChance"] = 124
	tLotteryPackage_Reward[3303166][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][27]["RewardItem"][1]["Id"] = 170069
	tLotteryPackage_Reward[3303166][27]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品玄素袍	8.30%
	tLotteryPackage_Reward[3303166][28] = {}
	tLotteryPackage_Reward[3303166][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][28]["ItemChance"] = 830
	tLotteryPackage_Reward[3303166][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][28]["RewardItem"][1]["Id"] = 101089
	tLotteryPackage_Reward[3303166][28]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品逐风头巾	1.24%
	tLotteryPackage_Reward[3303166][29] = {}
	tLotteryPackage_Reward[3303166][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][29]["ItemChance"] = 124
	tLotteryPackage_Reward[3303166][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][29]["RewardItem"][1]["Id"] = 148069
	tLotteryPackage_Reward[3303166][29]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品连身战衣【100级】	8.30%
	tLotteryPackage_Reward[3303166][30] = {}
	tLotteryPackage_Reward[3303166][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][30]["ItemChance"] = 830
	tLotteryPackage_Reward[3303166][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][30]["RewardItem"][1]["Id"] = 138089
	tLotteryPackage_Reward[3303166][30]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品聚灵双龙棍	1.24%
	tLotteryPackage_Reward[3303166][31] = {}
	tLotteryPackage_Reward[3303166][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][31]["ItemChance"] = 124
	tLotteryPackage_Reward[3303166][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][31]["RewardItem"][1]["Id"] = 617199
	tLotteryPackage_Reward[3303166][31]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品维京头巾	2.90%
	tLotteryPackage_Reward[3303166][32] = {}
	tLotteryPackage_Reward[3303166][32]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][32]["ItemChance"] = 290
	tLotteryPackage_Reward[3303166][32]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][32]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][32]["RewardItem"][1]["Id"] = 145069
	tLotteryPackage_Reward[3303166][32]["RewardItem"][1]["Attr"] = "0 1"
	-- 极品马鞭	3.04%
	tLotteryPackage_Reward[3303166][33] = {}
	tLotteryPackage_Reward[3303166][33]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303166][33]["ItemChance"] = 304
	tLotteryPackage_Reward[3303166][33]["RewardItem"] = {}
	tLotteryPackage_Reward[3303166][33]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303166][33]["RewardItem"][1]["Id"] = 203009
	tLotteryPackage_Reward[3303166][33]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 极品2洞装备随机包1
	tLotteryPackage_Reward[3303167] = {}
	tLotteryPackage_Reward[3303167]["LogId"] = 18000154
	tLotteryPackage_Reward[3303167]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303167]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303167]["DeleteItem"][1]["Id"] = 3303167
	tLotteryPackage_Reward[3303167]["ItemChanceSum"] = 10000

	-- 极品2洞赤霞剑	5.81%
	tLotteryPackage_Reward[3303167][1] = {}
	tLotteryPackage_Reward[3303167][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][1]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][1]["RewardItem"][1]["Id"] = 421199
	tLotteryPackage_Reward[3303167][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞乐浪檀弓	5.81%
	tLotteryPackage_Reward[3303167][2] = {}
	tLotteryPackage_Reward[3303167][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][2]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][2]["RewardItem"][1]["Id"] = 500189
	tLotteryPackage_Reward[3303167][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞虎刺坚盾	5.81%
	tLotteryPackage_Reward[3303167][3] = {}
	tLotteryPackage_Reward[3303167][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][3]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][3]["RewardItem"][1]["Id"] = 900089
	tLotteryPackage_Reward[3303167][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞沉虹斩	5.81%
	tLotteryPackage_Reward[3303167][4] = {}
	tLotteryPackage_Reward[3303167][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][4]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][4]["RewardItem"][1]["Id"] = 410199
	tLotteryPackage_Reward[3303167][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞赤霄剑	5.81%
	tLotteryPackage_Reward[3303167][5] = {}
	tLotteryPackage_Reward[3303167][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][5]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][5]["RewardItem"][1]["Id"] = 420199
	tLotteryPackage_Reward[3303167][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞索命钩	0.06%
	tLotteryPackage_Reward[3303167][6] = {}
	tLotteryPackage_Reward[3303167][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][6]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][6]["RewardItem"][1]["Id"] = 430199
	tLotteryPackage_Reward[3303167][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞雷公鞭	0.06%
	tLotteryPackage_Reward[3303167][7] = {}
	tLotteryPackage_Reward[3303167][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][7]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][7]["RewardItem"][1]["Id"] = 440199
	tLotteryPackage_Reward[3303167][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞湛金斧	0.06%
	tLotteryPackage_Reward[3303167][8] = {}
	tLotteryPackage_Reward[3303167][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][8]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][8]["RewardItem"][1]["Id"] = 450199
	tLotteryPackage_Reward[3303167][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞灿银锤	0.06%
	tLotteryPackage_Reward[3303167][9] = {}
	tLotteryPackage_Reward[3303167][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][9]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][9]["RewardItem"][1]["Id"] = 460199
	tLotteryPackage_Reward[3303167][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞珊银棒	5.81%
	tLotteryPackage_Reward[3303167][10] = {}
	tLotteryPackage_Reward[3303167][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][10]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][10]["RewardItem"][1]["Id"] = 480199
	tLotteryPackage_Reward[3303167][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞霹雳神杵	0.06%
	tLotteryPackage_Reward[3303167][11] = {}
	tLotteryPackage_Reward[3303167][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][11]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][11]["RewardItem"][1]["Id"] = 481199
	tLotteryPackage_Reward[3303167][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞虹艳匕	0.06%
	tLotteryPackage_Reward[3303167][12] = {}
	tLotteryPackage_Reward[3303167][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][12]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][12]["RewardItem"][1]["Id"] = 490199
	tLotteryPackage_Reward[3303167][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞五虎追风刀	0.06%
	tLotteryPackage_Reward[3303167][13] = {}
	tLotteryPackage_Reward[3303167][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][13]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][13]["RewardItem"][1]["Id"] = 510199
	tLotteryPackage_Reward[3303167][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞金蘸长斧	0.06%
	tLotteryPackage_Reward[3303167][14] = {}
	tLotteryPackage_Reward[3303167][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][14]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][14]["RewardItem"][1]["Id"] = 530199
	tLotteryPackage_Reward[3303167][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞八瓣铁瓜锤	0.06%
	tLotteryPackage_Reward[3303167][15] = {}
	tLotteryPackage_Reward[3303167][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][15]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][15]["RewardItem"][1]["Id"] = 540199
	tLotteryPackage_Reward[3303167][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞梅花枪	5.81%
	tLotteryPackage_Reward[3303167][16] = {}
	tLotteryPackage_Reward[3303167][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][16]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][16]["RewardItem"][1]["Id"] = 560199
	tLotteryPackage_Reward[3303167][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞银剪戟	0.06%
	tLotteryPackage_Reward[3303167][17] = {}
	tLotteryPackage_Reward[3303167][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][17]["ItemChance"] = 6
	tLotteryPackage_Reward[3303167][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][17]["RewardItem"][1]["Id"] = 580199
	tLotteryPackage_Reward[3303167][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞熟铜棍	5.81%
	tLotteryPackage_Reward[3303167][18] = {}
	tLotteryPackage_Reward[3303167][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][18]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][18]["RewardItem"][1]["Id"] = 561199
	tLotteryPackage_Reward[3303167][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞太岁宗道	5.81%
	tLotteryPackage_Reward[3303167][19] = {}
	tLotteryPackage_Reward[3303167][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][19]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][19]["RewardItem"][1]["Id"] = 601199
	tLotteryPackage_Reward[3303167][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞镇狱念珠	5.81%
	tLotteryPackage_Reward[3303167][20] = {}
	tLotteryPackage_Reward[3303167][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][20]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][20]["RewardItem"][1]["Id"] = 610199
	tLotteryPackage_Reward[3303167][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞血狱之剑	5.81%
	tLotteryPackage_Reward[3303167][21] = {}
	tLotteryPackage_Reward[3303167][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][21]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][21]["RewardItem"][1]["Id"] = 611199
	tLotteryPackage_Reward[3303167][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞恸哭火枪	5.81%
	tLotteryPackage_Reward[3303167][22] = {}
	tLotteryPackage_Reward[3303167][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][22]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][22]["RewardItem"][1]["Id"] = 612199
	tLotteryPackage_Reward[3303167][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞封魔战镰	5.81%
	tLotteryPackage_Reward[3303167][23] = {}
	tLotteryPackage_Reward[3303167][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][23]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][23]["RewardItem"][1]["Id"] = 511199
	tLotteryPackage_Reward[3303167][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞封邪飞刀	5.81%
	tLotteryPackage_Reward[3303167][24] = {}
	tLotteryPackage_Reward[3303167][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][24]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][24]["RewardItem"][1]["Id"] = 613199
	tLotteryPackage_Reward[3303167][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞赤之燃血	4.65%
	tLotteryPackage_Reward[3303167][25] = {}
	tLotteryPackage_Reward[3303167][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][25]["ItemChance"] = 465
	tLotteryPackage_Reward[3303167][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][25]["RewardItem"][1]["Id"] = 624209
	tLotteryPackage_Reward[3303167][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞聚灵双龙棍	5.81%
	tLotteryPackage_Reward[3303167][26] = {}
	tLotteryPackage_Reward[3303167][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][26]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][26]["RewardItem"][1]["Id"] = 617199
	tLotteryPackage_Reward[3303167][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞苍之怒焰	1.79%
	tLotteryPackage_Reward[3303167][27] = {}
	tLotteryPackage_Reward[3303167][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][27]["ItemChance"] = 179
	tLotteryPackage_Reward[3303167][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][27]["RewardItem"][1]["Id"] = 624199
	tLotteryPackage_Reward[3303167][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 极品2洞傲雪凌霜扇	5.81%
	tLotteryPackage_Reward[3303167][28] = {}
	tLotteryPackage_Reward[3303167][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303167][28]["ItemChance"] = 581
	tLotteryPackage_Reward[3303167][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303167][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303167][28]["RewardItem"][1]["Id"] = 626199
	tLotteryPackage_Reward[3303167][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	
	-- 极品1洞装备随机包
	tLotteryPackage_Reward[3303168] = {}
	tLotteryPackage_Reward[3303168]["LogId"] = 18000154
	tLotteryPackage_Reward[3303168]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303168]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303168]["DeleteItem"][1]["Id"] = 3303168
	tLotteryPackage_Reward[3303168]["ItemChanceSum"] = 10000

	-- 一洞极品地煞甲	4.15%
	tLotteryPackage_Reward[3303168][1] = {}
	tLotteryPackage_Reward[3303168][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][1]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][1]["RewardItem"][1]["Id"] = 130059
	tLotteryPackage_Reward[3303168][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品黄金箍	4.15%
	tLotteryPackage_Reward[3303168][2] = {}
	tLotteryPackage_Reward[3303168][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][2]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][2]["RewardItem"][1]["Id"] = 118059
	tLotteryPackage_Reward[3303168][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品虎头环锁铠	4.15%
	tLotteryPackage_Reward[3303168][3] = {}
	tLotteryPackage_Reward[3303168][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][3]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][3]["RewardItem"][1]["Id"] = 131059
	tLotteryPackage_Reward[3303168][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品凤珠点金盔	4.15%
	tLotteryPackage_Reward[3303168][4] = {}
	tLotteryPackage_Reward[3303168][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][4]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][4]["RewardItem"][1]["Id"] = 111059
	tLotteryPackage_Reward[3303168][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品野猿猎褂	4.15%
	tLotteryPackage_Reward[3303168][5] = {}
	tLotteryPackage_Reward[3303168][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][5]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][5]["RewardItem"][1]["Id"] = 133049
	tLotteryPackage_Reward[3303168][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品雪豹帽	4.15%
	tLotteryPackage_Reward[3303168][6] = {}
	tLotteryPackage_Reward[3303168][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][6]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][6]["RewardItem"][1]["Id"] = 113039
	tLotteryPackage_Reward[3303168][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品天师法衣	4.15%
	tLotteryPackage_Reward[3303168][7] = {}
	tLotteryPackage_Reward[3303168][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][7]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][7]["RewardItem"][1]["Id"] = 134059
	tLotteryPackage_Reward[3303168][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品青蛟冠	4.15%
	tLotteryPackage_Reward[3303168][8] = {}
	tLotteryPackage_Reward[3303168][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][8]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][8]["RewardItem"][1]["Id"] = 114069
	tLotteryPackage_Reward[3303168][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品龙涎香囊	2.90%
	tLotteryPackage_Reward[3303168][9] = {}
	tLotteryPackage_Reward[3303168][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][9]["ItemChance"] = 290
	tLotteryPackage_Reward[3303168][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][9]["RewardItem"][1]["Id"] = 121129
	tLotteryPackage_Reward[3303168][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品白金项链	2.90%
	tLotteryPackage_Reward[3303168][10] = {}
	tLotteryPackage_Reward[3303168][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][10]["ItemChance"] = 290
	tLotteryPackage_Reward[3303168][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][10]["RewardItem"][1]["Id"] = 120129
	tLotteryPackage_Reward[3303168][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品龙骨镯	2.90%
	tLotteryPackage_Reward[3303168][11] = {}
	tLotteryPackage_Reward[3303168][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][11]["ItemChance"] = 290
	tLotteryPackage_Reward[3303168][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][11]["RewardItem"][1]["Id"] = 152129
	tLotteryPackage_Reward[3303168][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品海洋之心	2.90%
	tLotteryPackage_Reward[3303168][12] = {}
	tLotteryPackage_Reward[3303168][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][12]["ItemChance"] = 290
	tLotteryPackage_Reward[3303168][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][12]["RewardItem"][1]["Id"] = 117069
	tLotteryPackage_Reward[3303168][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品碧玉戒指	2.90%
	tLotteryPackage_Reward[3303168][13] = {}
	tLotteryPackage_Reward[3303168][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][13]["ItemChance"] = 290
	tLotteryPackage_Reward[3303168][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][13]["RewardItem"][1]["Id"] = 150119
	tLotteryPackage_Reward[3303168][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品墨玉扳指	3.73%
	tLotteryPackage_Reward[3303168][14] = {}
	tLotteryPackage_Reward[3303168][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][14]["ItemChance"] = 373
	tLotteryPackage_Reward[3303168][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][14]["RewardItem"][1]["Id"] = 151119
	tLotteryPackage_Reward[3303168][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品云锦靴	2.90%
	tLotteryPackage_Reward[3303168][15] = {}
	tLotteryPackage_Reward[3303168][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][15]["ItemChance"] = 290
	tLotteryPackage_Reward[3303168][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][15]["RewardItem"][1]["Id"] = 160099
	tLotteryPackage_Reward[3303168][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品炎雀头带	4.15%
	tLotteryPackage_Reward[3303168][16] = {}
	tLotteryPackage_Reward[3303168][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][16]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][16]["RewardItem"][1]["Id"] = 141059
	tLotteryPackage_Reward[3303168][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品贯月紫萱	4.15%
	tLotteryPackage_Reward[3303168][17] = {}
	tLotteryPackage_Reward[3303168][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][17]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][17]["RewardItem"][1]["Id"] = 142059
	tLotteryPackage_Reward[3303168][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品凌霄扇	2.07%
	tLotteryPackage_Reward[3303168][18] = {}
	tLotteryPackage_Reward[3303168][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][18]["ItemChance"] = 207
	tLotteryPackage_Reward[3303168][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][18]["RewardItem"][1]["Id"] = 201009
	tLotteryPackage_Reward[3303168][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品混元塔	2.07%
	tLotteryPackage_Reward[3303168][19] = {}
	tLotteryPackage_Reward[3303168][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][19]["ItemChance"] = 207
	tLotteryPackage_Reward[3303168][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][19]["RewardItem"][1]["Id"] = 202009
	tLotteryPackage_Reward[3303168][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品火翼之触	4.15%
	tLotteryPackage_Reward[3303168][20] = {}
	tLotteryPackage_Reward[3303168][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][20]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][20]["RewardItem"][1]["Id"] = 112059
	tLotteryPackage_Reward[3303168][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品夜魔护额	4.15%
	tLotteryPackage_Reward[3303168][21] = {}
	tLotteryPackage_Reward[3303168][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][21]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][21]["RewardItem"][1]["Id"] = 123059
	tLotteryPackage_Reward[3303168][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品铜武魂	4.15%
	tLotteryPackage_Reward[3303168][22] = {}
	tLotteryPackage_Reward[3303168][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][22]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][22]["RewardItem"][1]["Id"] = 135059
	tLotteryPackage_Reward[3303168][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品荣枯柔甲	4.15%
	tLotteryPackage_Reward[3303168][23] = {}
	tLotteryPackage_Reward[3303168][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][23]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][23]["RewardItem"][1]["Id"] = 136059
	tLotteryPackage_Reward[3303168][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品净莲法箍	4.15%
	tLotteryPackage_Reward[3303168][24] = {}
	tLotteryPackage_Reward[3303168][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][24]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][24]["RewardItem"][1]["Id"] = 143059
	tLotteryPackage_Reward[3303168][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品定海帽	4.15%
	tLotteryPackage_Reward[3303168][25] = {}
	tLotteryPackage_Reward[3303168][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][25]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][25]["RewardItem"][1]["Id"] = 144059
	tLotteryPackage_Reward[3303168][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品猎寇裳	4.15%
	tLotteryPackage_Reward[3303168][26] = {}
	tLotteryPackage_Reward[3303168][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][26]["ItemChance"] = 415
	tLotteryPackage_Reward[3303168][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][26]["RewardItem"][1]["Id"] = 139059
	tLotteryPackage_Reward[3303168][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 一洞极品断流头巾	4.18%
	tLotteryPackage_Reward[3303168][27] = {}
	tLotteryPackage_Reward[3303168][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303168][27]["ItemChance"] = 418
	tLotteryPackage_Reward[3303168][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303168][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303168][27]["RewardItem"][1]["Id"] = 145059
	tLotteryPackage_Reward[3303168][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- 精品1洞装备随机包
	tLotteryPackage_Reward[3303169] = {}
	tLotteryPackage_Reward[3303169]["LogId"] = 18000154
	tLotteryPackage_Reward[3303169]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303169]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303169]["DeleteItem"][1]["Id"] = 3303169
	tLotteryPackage_Reward[3303169]["ItemChanceSum"] = 10000

	-- 精品一洞连身战衣【57级】	25%
	tLotteryPackage_Reward[3303169][1] = {}
	tLotteryPackage_Reward[3303169][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303169][1]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303169][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303169][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303169][1]["RewardItem"][1]["Id"] = 138058
	tLotteryPackage_Reward[3303169][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 精品一洞悲悯头巾	25%
	tLotteryPackage_Reward[3303169][2] = {}
	tLotteryPackage_Reward[3303169][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303169][2]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303169][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303169][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303169][2]["RewardItem"][1]["Id"] = 148058
	tLotteryPackage_Reward[3303169][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 精品一洞玄素袍【57级】	25%
	tLotteryPackage_Reward[3303169][3] = {}
	tLotteryPackage_Reward[3303169][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303169][3]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303169][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303169][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303169][3]["RewardItem"][1]["Id"] = 101058
	tLotteryPackage_Reward[3303169][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 精品一洞墨云冠	25%
	tLotteryPackage_Reward[3303169][4] = {}
	tLotteryPackage_Reward[3303169][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303169][4]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303169][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303169][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303169][4]["RewardItem"][1]["Id"] = 170058
	tLotteryPackage_Reward[3303169][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- 精品+8装备随机包
	tLotteryPackage_Reward[3303170] = {}
	tLotteryPackage_Reward[3303170]["LogId"] = 18000154
	tLotteryPackage_Reward[3303170]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303170]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303170]["DeleteItem"][1]["Id"] = 3303170
	tLotteryPackage_Reward[3303170]["ItemChanceSum"] = 10000

	-- ＋8精品太级剑	1.91%
	tLotteryPackage_Reward[3303170][1] = {}
	tLotteryPackage_Reward[3303170][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][1]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][1]["RewardItem"][1]["Id"] = 421078
	tLotteryPackage_Reward[3303170][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品角弓	1.91%
	tLotteryPackage_Reward[3303170][2] = {}
	tLotteryPackage_Reward[3303170][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][2]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][2]["RewardItem"][1]["Id"] = 500078
	tLotteryPackage_Reward[3303170][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品软藤盾	1.91%
	tLotteryPackage_Reward[3303170][3] = {}
	tLotteryPackage_Reward[3303170][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][3]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][3]["RewardItem"][1]["Id"] = 900008
	tLotteryPackage_Reward[3303170][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品蝉翼刀	1.91%
	tLotteryPackage_Reward[3303170][4] = {}
	tLotteryPackage_Reward[3303170][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][4]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][4]["RewardItem"][1]["Id"] = 410078
	tLotteryPackage_Reward[3303170][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品昆吾剑	1.91%
	tLotteryPackage_Reward[3303170][5] = {}
	tLotteryPackage_Reward[3303170][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][5]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][5]["RewardItem"][1]["Id"] = 420088
	tLotteryPackage_Reward[3303170][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品梅花钩	1.91%
	tLotteryPackage_Reward[3303170][6] = {}
	tLotteryPackage_Reward[3303170][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][6]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][6]["RewardItem"][1]["Id"] = 430088
	tLotteryPackage_Reward[3303170][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品少林铜锏	1.91%
	tLotteryPackage_Reward[3303170][7] = {}
	tLotteryPackage_Reward[3303170][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][7]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][7]["RewardItem"][1]["Id"] = 440088
	tLotteryPackage_Reward[3303170][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品少林斧	1.91%
	tLotteryPackage_Reward[3303170][8] = {}
	tLotteryPackage_Reward[3303170][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][8]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][8]["RewardItem"][1]["Id"] = 450088
	tLotteryPackage_Reward[3303170][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品四楞锤	1.91%
	tLotteryPackage_Reward[3303170][9] = {}
	tLotteryPackage_Reward[3303170][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][9]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][9]["RewardItem"][1]["Id"] = 460088
	tLotteryPackage_Reward[3303170][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品齐眉短棒	1.91%
	tLotteryPackage_Reward[3303170][10] = {}
	tLotteryPackage_Reward[3303170][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][10]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][10]["RewardItem"][1]["Id"] = 480088
	tLotteryPackage_Reward[3303170][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品莲花杵	1.91%
	tLotteryPackage_Reward[3303170][11] = {}
	tLotteryPackage_Reward[3303170][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][11]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][11]["RewardItem"][1]["Id"] = 481088
	tLotteryPackage_Reward[3303170][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品青龙匕	1.91%
	tLotteryPackage_Reward[3303170][12] = {}
	tLotteryPackage_Reward[3303170][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][12]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][12]["RewardItem"][1]["Id"] = 490088
	tLotteryPackage_Reward[3303170][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品滚堂刀	0.96%
	tLotteryPackage_Reward[3303170][13] = {}
	tLotteryPackage_Reward[3303170][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][13]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][13]["RewardItem"][1]["Id"] = 510088
	tLotteryPackage_Reward[3303170][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品静燕长斧	0.96%
	tLotteryPackage_Reward[3303170][14] = {}
	tLotteryPackage_Reward[3303170][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][14]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][14]["RewardItem"][1]["Id"] = 530088
	tLotteryPackage_Reward[3303170][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品幽冥锤	0.96%
	tLotteryPackage_Reward[3303170][15] = {}
	tLotteryPackage_Reward[3303170][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][15]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][15]["RewardItem"][1]["Id"] = 540088
	tLotteryPackage_Reward[3303170][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品明月枪	0.96%
	tLotteryPackage_Reward[3303170][16] = {}
	tLotteryPackage_Reward[3303170][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][16]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][16]["RewardItem"][1]["Id"] = 560088
	tLotteryPackage_Reward[3303170][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品长钺戟	0.96%
	tLotteryPackage_Reward[3303170][17] = {}
	tLotteryPackage_Reward[3303170][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][17]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][17]["RewardItem"][1]["Id"] = 580088
	tLotteryPackage_Reward[3303170][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品子午棍	0.96%
	tLotteryPackage_Reward[3303170][18] = {}
	tLotteryPackage_Reward[3303170][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][18]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][18]["RewardItem"][1]["Id"] = 561088
	tLotteryPackage_Reward[3303170][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品虎威甲	1.91%
	tLotteryPackage_Reward[3303170][19] = {}
	tLotteryPackage_Reward[3303170][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][19]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][19]["RewardItem"][1]["Id"] = 130038
	tLotteryPackage_Reward[3303170][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品精钢头箍	0.96%
	tLotteryPackage_Reward[3303170][20] = {}
	tLotteryPackage_Reward[3303170][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][20]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][20]["RewardItem"][1]["Id"] = 118038
	tLotteryPackage_Reward[3303170][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品精钢铠	1.91%
	tLotteryPackage_Reward[3303170][21] = {}
	tLotteryPackage_Reward[3303170][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][21]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][21]["RewardItem"][1]["Id"] = 131038
	tLotteryPackage_Reward[3303170][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品亮银盔	0.96%
	tLotteryPackage_Reward[3303170][22] = {}
	tLotteryPackage_Reward[3303170][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][22]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][22]["RewardItem"][1]["Id"] = 111038
	tLotteryPackage_Reward[3303170][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品豹纹猎褂	1.91%
	tLotteryPackage_Reward[3303170][23] = {}
	tLotteryPackage_Reward[3303170][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][23]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][23]["RewardItem"][1]["Id"] = 133038
	tLotteryPackage_Reward[3303170][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品狸皮帽	0.96%
	tLotteryPackage_Reward[3303170][24] = {}
	tLotteryPackage_Reward[3303170][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][24]["ItemChance"] = 96
	tLotteryPackage_Reward[3303170][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][24]["RewardItem"][1]["Id"] = 113018
	tLotteryPackage_Reward[3303170][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品七星道袍	1.91%
	tLotteryPackage_Reward[3303170][25] = {}
	tLotteryPackage_Reward[3303170][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][25]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][25]["RewardItem"][1]["Id"] = 134038
	tLotteryPackage_Reward[3303170][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品黄石冠	1.91%
	tLotteryPackage_Reward[3303170][26] = {}
	tLotteryPackage_Reward[3303170][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][26]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][26]["RewardItem"][1]["Id"] = 114038
	tLotteryPackage_Reward[3303170][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品蓝晶香囊	1.91%
	tLotteryPackage_Reward[3303170][27] = {}
	tLotteryPackage_Reward[3303170][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][27]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][27]["RewardItem"][1]["Id"] = 121088
	tLotteryPackage_Reward[3303170][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品水晶项链	1.91%
	tLotteryPackage_Reward[3303170][28] = {}
	tLotteryPackage_Reward[3303170][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][28]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][28]["RewardItem"][1]["Id"] = 120088
	tLotteryPackage_Reward[3303170][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品紫金镯	1.91%
	tLotteryPackage_Reward[3303170][29] = {}
	tLotteryPackage_Reward[3303170][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][29]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][29]["RewardItem"][1]["Id"] = 152108
	tLotteryPackage_Reward[3303170][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品流星耳环	1.91%
	tLotteryPackage_Reward[3303170][30] = {}
	tLotteryPackage_Reward[3303170][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][30]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][30]["RewardItem"][1]["Id"] = 117038
	tLotteryPackage_Reward[3303170][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品翡翠戒指	1.91%
	tLotteryPackage_Reward[3303170][31] = {}
	tLotteryPackage_Reward[3303170][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][31]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][31]["RewardItem"][1]["Id"] = 150078
	tLotteryPackage_Reward[3303170][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品象牙扳指	1.91%
	tLotteryPackage_Reward[3303170][32] = {}
	tLotteryPackage_Reward[3303170][32]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][32]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][32]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][32]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][32]["RewardItem"][1]["Id"] = 151078
	tLotteryPackage_Reward[3303170][32]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- ＋8精品鹰爪靴	1.91%
	tLotteryPackage_Reward[3303170][33] = {}
	tLotteryPackage_Reward[3303170][33]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][33]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][33]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][33]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][33]["RewardItem"][1]["Id"] = 160078
	tLotteryPackage_Reward[3303170][33]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品碧翠羽翎	1.91%
	tLotteryPackage_Reward[3303170][34] = {}
	tLotteryPackage_Reward[3303170][34]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][34]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][34]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][34]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][34]["RewardItem"][1]["Id"] = 142018
	tLotteryPackage_Reward[3303170][34]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品蔷薇头带	1.91%
	tLotteryPackage_Reward[3303170][35] = {}
	tLotteryPackage_Reward[3303170][35]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][35]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][35]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][35]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][35]["RewardItem"][1]["Id"] = 141038
	tLotteryPackage_Reward[3303170][35]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品凌霄扇	1.91%
	tLotteryPackage_Reward[3303170][36] = {}
	tLotteryPackage_Reward[3303170][36]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][36]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][36]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][36]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][36]["RewardItem"][1]["Id"] = 201008
	tLotteryPackage_Reward[3303170][36]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品混元塔	1.91%
	tLotteryPackage_Reward[3303170][37] = {}
	tLotteryPackage_Reward[3303170][37]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][37]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][37]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][37]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][37]["RewardItem"][1]["Id"] = 202008
	tLotteryPackage_Reward[3303170][37]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品惊雷丸	1.91%
	tLotteryPackage_Reward[3303170][38] = {}
	tLotteryPackage_Reward[3303170][38]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][38]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][38]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][38]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][38]["RewardItem"][1]["Id"] = 601088
	tLotteryPackage_Reward[3303170][38]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品暗影装	1.91%
	tLotteryPackage_Reward[3303170][39] = {}
	tLotteryPackage_Reward[3303170][39]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][39]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][39]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][39]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][39]["RewardItem"][1]["Id"] = 135048
	tLotteryPackage_Reward[3303170][39]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品红莲之首	1.91%
	tLotteryPackage_Reward[3303170][40] = {}
	tLotteryPackage_Reward[3303170][40]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][40]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][40]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][40]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][40]["RewardItem"][1]["Id"] = 112038
	tLotteryPackage_Reward[3303170][40]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品青翼护额	1.91%
	tLotteryPackage_Reward[3303170][41] = {}
	tLotteryPackage_Reward[3303170][41]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][41]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][41]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][41]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][41]["RewardItem"][1]["Id"] = 123038
	tLotteryPackage_Reward[3303170][41]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品马鞭	1.34%
	tLotteryPackage_Reward[3303170][42] = {}
	tLotteryPackage_Reward[3303170][42]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][42]["ItemChance"] = 134
	tLotteryPackage_Reward[3303170][42]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][42]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][42]["RewardItem"][1]["Id"] = 203008
	tLotteryPackage_Reward[3303170][42]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品流云法箍	1.91%
	tLotteryPackage_Reward[3303170][43] = {}
	tLotteryPackage_Reward[3303170][43]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][43]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][43]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][43]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][43]["RewardItem"][1]["Id"] = 143038
	tLotteryPackage_Reward[3303170][43]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品护法柔甲	1.91%
	tLotteryPackage_Reward[3303170][44] = {}
	tLotteryPackage_Reward[3303170][44]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][44]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][44]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][44]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][44]["RewardItem"][1]["Id"] = 136048
	tLotteryPackage_Reward[3303170][44]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品禅机念珠	1.91%
	tLotteryPackage_Reward[3303170][45] = {}
	tLotteryPackage_Reward[3303170][45]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][45]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][45]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][45]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][45]["RewardItem"][1]["Id"] = 610088
	tLotteryPackage_Reward[3303170][45]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品波峰刺剑	1.91%
	tLotteryPackage_Reward[3303170][46] = {}
	tLotteryPackage_Reward[3303170][46]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][46]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][46]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][46]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][46]["RewardItem"][1]["Id"] = 611088
	tLotteryPackage_Reward[3303170][46]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品龙渊裳	1.91%
	tLotteryPackage_Reward[3303170][47] = {}
	tLotteryPackage_Reward[3303170][47]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][47]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][47]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][47]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][47]["RewardItem"][1]["Id"] = 139048
	tLotteryPackage_Reward[3303170][47]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品平浪帽	1.91%
	tLotteryPackage_Reward[3303170][48] = {}
	tLotteryPackage_Reward[3303170][48]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][48]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][48]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][48]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][48]["RewardItem"][1]["Id"] = 144038
	tLotteryPackage_Reward[3303170][48]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品秘银火枪	1.91%
	tLotteryPackage_Reward[3303170][49] = {}
	tLotteryPackage_Reward[3303170][49]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][49]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][49]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][49]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][49]["RewardItem"][1]["Id"] = 612088
	tLotteryPackage_Reward[3303170][49]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品巡洋头巾	1.91%
	tLotteryPackage_Reward[3303170][50] = {}
	tLotteryPackage_Reward[3303170][50]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][50]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][50]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][50]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][50]["RewardItem"][1]["Id"] = 145038
	tLotteryPackage_Reward[3303170][50]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品星罗飞刀	1.91%
	tLotteryPackage_Reward[3303170][51] = {}
	tLotteryPackage_Reward[3303170][51]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][51]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][51]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][51]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][51]["RewardItem"][1]["Id"] = 613088
	tLotteryPackage_Reward[3303170][51]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品苍之怒焰	2.10%
	tLotteryPackage_Reward[3303170][52] = {}
	tLotteryPackage_Reward[3303170][52]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][52]["ItemChance"] = 210
	tLotteryPackage_Reward[3303170][52]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][52]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][52]["RewardItem"][1]["Id"] = 624088
	tLotteryPackage_Reward[3303170][52]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品灵龙双截棍	2.10%
	tLotteryPackage_Reward[3303170][53] = {}
	tLotteryPackage_Reward[3303170][53]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][53]["ItemChance"] = 210
	tLotteryPackage_Reward[3303170][53]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][53]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][53]["RewardItem"][1]["Id"] = 617098
	tLotteryPackage_Reward[3303170][53]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品猎魔钩镰	1.91%
	tLotteryPackage_Reward[3303170][54] = {}
	tLotteryPackage_Reward[3303170][54]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][54]["ItemChance"] = 191
	tLotteryPackage_Reward[3303170][54]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][54]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][54]["RewardItem"][1]["Id"] = 511088
	tLotteryPackage_Reward[3303170][54]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品无为如意拂尘	1.72%
	tLotteryPackage_Reward[3303170][55] = {}
	tLotteryPackage_Reward[3303170][55]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][55]["ItemChance"] = 172
	tLotteryPackage_Reward[3303170][55]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][55]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][55]["RewardItem"][1]["Id"] = 619078
	tLotteryPackage_Reward[3303170][55]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品风雷翅	1.72%
	tLotteryPackage_Reward[3303170][56] = {}
	tLotteryPackage_Reward[3303170][56]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][56]["ItemChance"] = 172
	tLotteryPackage_Reward[3303170][56]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][56]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][56]["RewardItem"][1]["Id"] = 204008
	tLotteryPackage_Reward[3303170][56]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- +8精品傲雪凌霜扇	2.16%
	tLotteryPackage_Reward[3303170][57] = {}
	tLotteryPackage_Reward[3303170][57]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303170][57]["ItemChance"] = 216
	tLotteryPackage_Reward[3303170][57]["RewardItem"] = {}
	tLotteryPackage_Reward[3303170][57]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303170][57]["RewardItem"][1]["Id"] = 626098
	tLotteryPackage_Reward[3303170][57]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	
	-- 两洞精品装备随机包
	tLotteryPackage_Reward[3303171] = {}
	tLotteryPackage_Reward[3303171]["LogId"] = 18000154
	tLotteryPackage_Reward[3303171]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303171]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303171]["DeleteItem"][1]["Id"] = 3303171
	tLotteryPackage_Reward[3303171]["ItemChanceSum"] = 10000

	-- 两洞精品天罡甲	2.05%
	tLotteryPackage_Reward[3303171][1] = {}
	tLotteryPackage_Reward[3303171][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][1]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][1]["RewardItem"][1]["Id"] = 130048
	tLotteryPackage_Reward[3303171][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品红玉头箍	2.05%
	tLotteryPackage_Reward[3303171][2] = {}
	tLotteryPackage_Reward[3303171][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][2]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][2]["RewardItem"][1]["Id"] = 118048
	tLotteryPackage_Reward[3303171][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品明光铠	2.05%
	tLotteryPackage_Reward[3303171][3] = {}
	tLotteryPackage_Reward[3303171][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][3]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][3]["RewardItem"][1]["Id"] = 131048
	tLotteryPackage_Reward[3303171][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品乌金盔	2.05%
	tLotteryPackage_Reward[3303171][4] = {}
	tLotteryPackage_Reward[3303171][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][4]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][4]["RewardItem"][1]["Id"] = 111048
	tLotteryPackage_Reward[3303171][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品狼皮猎褂	2.05%
	tLotteryPackage_Reward[3303171][5] = {}
	tLotteryPackage_Reward[3303171][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][5]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][5]["RewardItem"][1]["Id"] = 133028
	tLotteryPackage_Reward[3303171][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品豺狼帽	2.05%
	tLotteryPackage_Reward[3303171][6] = {}
	tLotteryPackage_Reward[3303171][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][6]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][6]["RewardItem"][1]["Id"] = 113028
	tLotteryPackage_Reward[3303171][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品三精法衣	2.05%
	tLotteryPackage_Reward[3303171][7] = {}
	tLotteryPackage_Reward[3303171][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][7]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][7]["RewardItem"][1]["Id"] = 134048
	tLotteryPackage_Reward[3303171][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品红云冠	2.05%
	tLotteryPackage_Reward[3303171][8] = {}
	tLotteryPackage_Reward[3303171][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][8]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][8]["RewardItem"][1]["Id"] = 114048
	tLotteryPackage_Reward[3303171][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品红豆香囊	2.05%
	tLotteryPackage_Reward[3303171][9] = {}
	tLotteryPackage_Reward[3303171][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][9]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][9]["RewardItem"][1]["Id"] = 121098
	tLotteryPackage_Reward[3303171][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品金坠项链	2.05%
	tLotteryPackage_Reward[3303171][10] = {}
	tLotteryPackage_Reward[3303171][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][10]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][10]["RewardItem"][1]["Id"] = 120098
	tLotteryPackage_Reward[3303171][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品金珠镯	2.05%
	tLotteryPackage_Reward[3303171][11] = {}
	tLotteryPackage_Reward[3303171][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][11]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][11]["RewardItem"][1]["Id"] = 152088
	tLotteryPackage_Reward[3303171][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品流苏耳环	2.05%
	tLotteryPackage_Reward[3303171][12] = {}
	tLotteryPackage_Reward[3303171][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][12]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][12]["RewardItem"][1]["Id"] = 117048
	tLotteryPackage_Reward[3303171][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品白玉戒指	2.05%
	tLotteryPackage_Reward[3303171][13] = {}
	tLotteryPackage_Reward[3303171][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][13]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][13]["RewardItem"][1]["Id"] = 150098
	tLotteryPackage_Reward[3303171][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品虎骨扳指	2.05%
	tLotteryPackage_Reward[3303171][14] = {}
	tLotteryPackage_Reward[3303171][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][14]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][14]["RewardItem"][1]["Id"] = 151098
	tLotteryPackage_Reward[3303171][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品鳄皮靴	2.05%
	tLotteryPackage_Reward[3303171][15] = {}
	tLotteryPackage_Reward[3303171][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][15]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][15]["RewardItem"][1]["Id"] = 160118
	tLotteryPackage_Reward[3303171][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品瑞云头带	6.85%
	tLotteryPackage_Reward[3303171][16] = {}
	tLotteryPackage_Reward[3303171][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][16]["ItemChance"] = 685
	tLotteryPackage_Reward[3303171][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][16]["RewardItem"][1]["Id"] = 141048
	tLotteryPackage_Reward[3303171][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品雪山狐绒	6.85%
	tLotteryPackage_Reward[3303171][17] = {}
	tLotteryPackage_Reward[3303171][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][17]["ItemChance"] = 685
	tLotteryPackage_Reward[3303171][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][17]["RewardItem"][1]["Id"] = 142048
	tLotteryPackage_Reward[3303171][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品凌霄扇	2.05%
	tLotteryPackage_Reward[3303171][18] = {}
	tLotteryPackage_Reward[3303171][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][18]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][18]["RewardItem"][1]["Id"] = 201008
	tLotteryPackage_Reward[3303171][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品混元塔	2.05%
	tLotteryPackage_Reward[3303171][19] = {}
	tLotteryPackage_Reward[3303171][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][19]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][19]["RewardItem"][1]["Id"] = 202008
	tLotteryPackage_Reward[3303171][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品上忍服	2.05%
	tLotteryPackage_Reward[3303171][20] = {}
	tLotteryPackage_Reward[3303171][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][20]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][20]["RewardItem"][1]["Id"] = 135028
	tLotteryPackage_Reward[3303171][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品白羽之首	2.05%
	tLotteryPackage_Reward[3303171][21] = {}
	tLotteryPackage_Reward[3303171][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][21]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][21]["RewardItem"][1]["Id"] = 112028
	tLotteryPackage_Reward[3303171][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品红棉护额	2.05%
	tLotteryPackage_Reward[3303171][22] = {}
	tLotteryPackage_Reward[3303171][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][22]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][22]["RewardItem"][1]["Id"] = 123028
	tLotteryPackage_Reward[3303171][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品浮生法箍	2.05%
	tLotteryPackage_Reward[3303171][23] = {}
	tLotteryPackage_Reward[3303171][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][23]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][23]["RewardItem"][1]["Id"] = 143028
	tLotteryPackage_Reward[3303171][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品金丝战袍	2.05%
	tLotteryPackage_Reward[3303171][24] = {}
	tLotteryPackage_Reward[3303171][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][24]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][24]["RewardItem"][1]["Id"] = 136028
	tLotteryPackage_Reward[3303171][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品覆波裳	2.05%
	tLotteryPackage_Reward[3303171][25] = {}
	tLotteryPackage_Reward[3303171][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][25]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][25]["RewardItem"][1]["Id"] = 139028
	tLotteryPackage_Reward[3303171][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品卫海帽	2.05%
	tLotteryPackage_Reward[3303171][26] = {}
	tLotteryPackage_Reward[3303171][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][26]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][26]["RewardItem"][1]["Id"] = 144028
	tLotteryPackage_Reward[3303171][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品海客头巾	2.05%
	tLotteryPackage_Reward[3303171][27] = {}
	tLotteryPackage_Reward[3303171][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][27]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][27]["RewardItem"][1]["Id"] = 145028
	tLotteryPackage_Reward[3303171][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品连身战衣【32级】	8.22%
	tLotteryPackage_Reward[3303171][28] = {}
	tLotteryPackage_Reward[3303171][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][28]["ItemChance"] = 822
	tLotteryPackage_Reward[3303171][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][28]["RewardItem"][1]["Id"] = 138028
	tLotteryPackage_Reward[3303171][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品功夫头巾	8.22%
	tLotteryPackage_Reward[3303171][29] = {}
	tLotteryPackage_Reward[3303171][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][29]["ItemChance"] = 822
	tLotteryPackage_Reward[3303171][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][29]["RewardItem"][1]["Id"] = 148028
	tLotteryPackage_Reward[3303171][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品风雷翅	2.05%
	tLotteryPackage_Reward[3303171][30] = {}
	tLotteryPackage_Reward[3303171][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][30]["ItemChance"] = 205
	tLotteryPackage_Reward[3303171][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][30]["RewardItem"][1]["Id"] = 204008
	tLotteryPackage_Reward[3303171][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品玄素袍	8.34%
	tLotteryPackage_Reward[3303171][31] = {}
	tLotteryPackage_Reward[3303171][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][31]["ItemChance"] = 834
	tLotteryPackage_Reward[3303171][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][31]["RewardItem"][1]["Id"] = 101028
	tLotteryPackage_Reward[3303171][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 两洞精品墨云冠	8.22%
	tLotteryPackage_Reward[3303171][32] = {}
	tLotteryPackage_Reward[3303171][32]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303171][32]["ItemChance"] = 822
	tLotteryPackage_Reward[3303171][32]["RewardItem"] = {}
	tLotteryPackage_Reward[3303171][32]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303171][32]["RewardItem"][1]["Id"] = 170028
	tLotteryPackage_Reward[3303171][32]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	
	-- 桃源灵玉
	tLotteryPackage_Reward[3303172] = {}
	tLotteryPackage_Reward[3303172]["LogId"] = 18000154
	tLotteryPackage_Reward[3303172]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303172]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303172]["DeleteItem"][1]["Id"] = 3303172
	tLotteryPackage_Reward[3303172]["RewardItem"] = {}
	tLotteryPackage_Reward[3303172]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303172]["RewardItem"][1]["Id"] = 711504
	tLotteryPackage_Reward[3303172]["RewardItem"][1]["Attr"] = "0 1"

	-- 赤炼石+1
	tLotteryPackage_Reward[3303173] = {}
	tLotteryPackage_Reward[3303173]["LogId"] = 18000154
	tLotteryPackage_Reward[3303173]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303173]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303173]["DeleteItem"][1]["Id"] = 3303173
	tLotteryPackage_Reward[3303173]["RewardItem"] = {}
	tLotteryPackage_Reward[3303173]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303173]["RewardItem"][1]["Id"] = 730001
	tLotteryPackage_Reward[3303173]["RewardItem"][1]["Attr"] = "0 1"

	-- 赤炼石+2
	tLotteryPackage_Reward[3303174] = {}
	tLotteryPackage_Reward[3303174]["LogId"] = 18000154
	tLotteryPackage_Reward[3303174]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303174]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303174]["DeleteItem"][1]["Id"] = 3303174
	tLotteryPackage_Reward[3303174]["RewardItem"] = {}
	tLotteryPackage_Reward[3303174]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303174]["RewardItem"][1]["Id"] = 730002
	tLotteryPackage_Reward[3303174]["RewardItem"][1]["Attr"] = "0 1"

	-- 赤炼石+3
	tLotteryPackage_Reward[3303175] = {}
	tLotteryPackage_Reward[3303175]["LogId"] = 18000154
	tLotteryPackage_Reward[3303175]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303175]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303175]["DeleteItem"][1]["Id"] = 3303175
	tLotteryPackage_Reward[3303175]["RewardItem"] = {}
	tLotteryPackage_Reward[3303175]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303175]["RewardItem"][1]["Id"] = 730003
	tLotteryPackage_Reward[3303175]["RewardItem"][1]["Attr"] = "0 1"

	-- 赤炼石+4
	tLotteryPackage_Reward[3303176] = {}
	tLotteryPackage_Reward[3303176]["LogId"] = 18000154
	tLotteryPackage_Reward[3303176]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303176]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303176]["DeleteItem"][1]["Id"] = 3303176
	tLotteryPackage_Reward[3303176]["RewardItem"] = {}
	tLotteryPackage_Reward[3303176]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303176]["RewardItem"][1]["Id"] = 730004
	tLotteryPackage_Reward[3303176]["RewardItem"][1]["Attr"] = "0 1"

	-- 龙珠
	tLotteryPackage_Reward[3303177] = {}
	tLotteryPackage_Reward[3303177]["LogId"] = 18000154
	tLotteryPackage_Reward[3303177]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303177]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303177]["DeleteItem"][1]["Id"] = 3303177
	tLotteryPackage_Reward[3303177]["RewardItem"] = {}
	tLotteryPackage_Reward[3303177]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303177]["RewardItem"][1]["Id"] = 1088000
	tLotteryPackage_Reward[3303177]["RewardItem"][1]["Attr"] = "0 1"

	-- 固化石
	tLotteryPackage_Reward[3303178] = {}
	tLotteryPackage_Reward[3303178]["LogId"] = 18000154
	tLotteryPackage_Reward[3303178]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303178]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303178]["DeleteItem"][1]["Id"] = 3303178
	tLotteryPackage_Reward[3303178]["RewardItem"] = {}
	tLotteryPackage_Reward[3303178]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303178]["RewardItem"][1]["Id"] = 723694
	tLotteryPackage_Reward[3303178]["RewardItem"][1]["Attr"] = "0 1"

	-- 赤炼石＋5
	tLotteryPackage_Reward[3303179] = {}
	tLotteryPackage_Reward[3303179]["LogId"] = 18000154
	tLotteryPackage_Reward[3303179]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303179]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303179]["DeleteItem"][1]["Id"] = 3303179
	tLotteryPackage_Reward[3303179]["RewardItem"] = {}
	tLotteryPackage_Reward[3303179]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303179]["RewardItem"][1]["Id"] = 730005
	tLotteryPackage_Reward[3303179]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质玄元宝石
	tLotteryPackage_Reward[3303180] = {}
	tLotteryPackage_Reward[3303180]["LogId"] = 18000154
	tLotteryPackage_Reward[3303180]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303180]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303180]["DeleteItem"][1]["Id"] = 3303180
	tLotteryPackage_Reward[3303180]["RewardItem"] = {}
	tLotteryPackage_Reward[3303180]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303180]["RewardItem"][1]["Id"] = 700073
	tLotteryPackage_Reward[3303180]["RewardItem"][1]["Attr"] = "0 1"

	-- 赤炼石+6
	tLotteryPackage_Reward[3303181] = {}
	tLotteryPackage_Reward[3303181]["LogId"] = 18000154
	tLotteryPackage_Reward[3303181]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303181]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303181]["DeleteItem"][1]["Id"] = 3303181
	tLotteryPackage_Reward[3303181]["RewardItem"] = {}
	tLotteryPackage_Reward[3303181]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303181]["RewardItem"][1]["Id"] = 730006
	tLotteryPackage_Reward[3303181]["RewardItem"][1]["Attr"] = "0 1"

	-- 金钢坚钻
	tLotteryPackage_Reward[3303182] = {}
	tLotteryPackage_Reward[3303182]["LogId"] = 18000154
	tLotteryPackage_Reward[3303182]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303182]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303182]["DeleteItem"][1]["Id"] = 3303182
	tLotteryPackage_Reward[3303182]["RewardItem"] = {}
	tLotteryPackage_Reward[3303182]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303182]["RewardItem"][1]["Id"] = 1200005
	tLotteryPackage_Reward[3303182]["RewardItem"][1]["Attr"] = "0 1"
	
	-- +7赤炼石
	tLotteryPackage_Reward[3303183] = {}
	tLotteryPackage_Reward[3303183]["LogId"] = 18000154
	tLotteryPackage_Reward[3303183]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303183]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303183]["DeleteItem"][1]["Id"] = 3303183
	tLotteryPackage_Reward[3303183]["RewardItem"] = {}
	tLotteryPackage_Reward[3303183]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303183]["RewardItem"][1]["Id"] = 730007
	tLotteryPackage_Reward[3303183]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 超大固化石
	tLotteryPackage_Reward[3303184] = {}
	tLotteryPackage_Reward[3303184]["LogId"] = 18000154
	tLotteryPackage_Reward[3303184]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303184]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303184]["DeleteItem"][1]["Id"] = 3303184
	tLotteryPackage_Reward[3303184]["RewardItem"] = {}
	tLotteryPackage_Reward[3303184]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303184]["RewardItem"][1]["Id"] = 723695
	tLotteryPackage_Reward[3303184]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 百宝箱
	tLotteryPackage_Reward[3303203] = {}
	tLotteryPackage_Reward[3303203]["LogId"] = 18000154
	tLotteryPackage_Reward[3303203]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303203]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303203]["DeleteItem"][1]["Id"] = 3303203
	tLotteryPackage_Reward[3303203]["ItemChanceSum"] = 10000

	-- 玄灵秘录	32.98%
	tLotteryPackage_Reward[3303203][1] = {}
	tLotteryPackage_Reward[3303203][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][1]["ItemChance"] = 3298
	tLotteryPackage_Reward[3303203][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][1]["RewardItem"][1]["Id"] = 723341
	tLotteryPackage_Reward[3303203][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 清心符	29.99%
	tLotteryPackage_Reward[3303203][2] = {}
	tLotteryPackage_Reward[3303203][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][2]["ItemChance"] = 2999
	tLotteryPackage_Reward[3303203][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][2]["RewardItem"][1]["Id"] = 720128
	tLotteryPackage_Reward[3303203][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 王母果篮	25%
	tLotteryPackage_Reward[3303203][3] = {}
	tLotteryPackage_Reward[3303203][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][3]["ItemChance"] = 2500
	tLotteryPackage_Reward[3303203][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][3]["RewardItem"][1]["Id"] = 723725
	tLotteryPackage_Reward[3303203][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 昆仑雪水	2.80%
	tLotteryPackage_Reward[3303203][4] = {}
	tLotteryPackage_Reward[3303203][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][4]["ItemChance"] = 280
	tLotteryPackage_Reward[3303203][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][4]["RewardItem"][1]["Id"] = 723017
	tLotteryPackage_Reward[3303203][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 涅磐灵石	3.52%
	tLotteryPackage_Reward[3303203][5] = {}
	tLotteryPackage_Reward[3303203][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][5]["ItemChance"] = 352
	tLotteryPackage_Reward[3303203][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][5]["RewardItem"][1]["Id"] = 721259
	tLotteryPackage_Reward[3303203][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 乾坤令	1.36%
	tLotteryPackage_Reward[3303203][6] = {}
	tLotteryPackage_Reward[3303203][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][6]["ItemChance"] = 136
	tLotteryPackage_Reward[3303203][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][6]["RewardItem"][1]["Id"] = 722840
	tLotteryPackage_Reward[3303203][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 大块祈愿石	0.81%
	tLotteryPackage_Reward[3303203][7] = {}
	tLotteryPackage_Reward[3303203][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][7]["ItemChance"] = 81
	tLotteryPackage_Reward[3303203][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][7]["RewardItem"][1]["Id"] = 1200001
	tLotteryPackage_Reward[3303203][7]["RewardItem"][1]["Attr"] = "0 1"
	-- 99朵百合花	0.27%
	tLotteryPackage_Reward[3303203][8] = {}
	tLotteryPackage_Reward[3303203][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][8]["ItemChance"] = 27
	tLotteryPackage_Reward[3303203][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][8]["RewardItem"][1]["Id"] = 752099
	tLotteryPackage_Reward[3303203][8]["RewardItem"][1]["Attr"] = "0 1"
	-- 完美的祈愿石	0.02%
	tLotteryPackage_Reward[3303203][9] = {}
	tLotteryPackage_Reward[3303203][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][9]["ItemChance"] = 2
	tLotteryPackage_Reward[3303203][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][9]["RewardItem"][1]["Id"] = 1200002
	tLotteryPackage_Reward[3303203][9]["RewardItem"][1]["Attr"] = "0 1"
	-- 造化天书	0.30%
	tLotteryPackage_Reward[3303203][10] = {}
	tLotteryPackage_Reward[3303203][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][10]["ItemChance"] = 30
	tLotteryPackage_Reward[3303203][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][10]["RewardItem"][1]["Id"] = 723342
	tLotteryPackage_Reward[3303203][10]["RewardItem"][1]["Attr"] = "0 1"
	-- 聚神丹	2.81%
	tLotteryPackage_Reward[3303203][11] = {}
	tLotteryPackage_Reward[3303203][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][11]["ItemChance"] = 281
	tLotteryPackage_Reward[3303203][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][11]["RewardItem"][1]["Id"] = 723700
	tLotteryPackage_Reward[3303203][11]["RewardItem"][1]["Attr"] = "0 1"
	-- 免试金牌	0.01%
	tLotteryPackage_Reward[3303203][12] = {}
	tLotteryPackage_Reward[3303203][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][12]["ItemChance"] = 1
	tLotteryPackage_Reward[3303203][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][12]["RewardItem"][1]["Id"] = 723701
	tLotteryPackage_Reward[3303203][12]["RewardItem"][1]["Attr"] = "0 1"
	-- 大乾坤袋	0.04%
	tLotteryPackage_Reward[3303203][13] = {}
	tLotteryPackage_Reward[3303203][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][13]["ItemChance"] = 4
	tLotteryPackage_Reward[3303203][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][13]["RewardItem"][1]["Id"] = 1100009
	tLotteryPackage_Reward[3303203][13]["RewardItem"][1]["Attr"] = "0 1"
	-- 999朵百合花	0.09%
	tLotteryPackage_Reward[3303203][14] = {}
	tLotteryPackage_Reward[3303203][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303203][14]["ItemChance"] = 9
	tLotteryPackage_Reward[3303203][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303203][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303203][14]["RewardItem"][1]["Id"] = 752999
	tLotteryPackage_Reward[3303203][14]["RewardItem"][1]["Attr"] = "0 1"
	
	-- [装备类]净水玉瓶礼包
	tLotteryPackage_Reward[3303204] = {}
	tLotteryPackage_Reward[3303204]["LogId"] = 18000154
	tLotteryPackage_Reward[3303204]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303204]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303204]["DeleteItem"][1]["Id"] = 3303204
	tLotteryPackage_Reward[3303204]["RewardItem"] = {}
	tLotteryPackage_Reward[3303204]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303204]["RewardItem"][1]["Id"] = 2100045
	tLotteryPackage_Reward[3303204]["RewardItem"][1]["Attr"] = "0 1"
	
	-- [装备类]1洞随机装备包
	-- 极品1洞傲雪凌霜扇
	tLotteryPackage_Reward[3303212] = {}
	tLotteryPackage_Reward[3303212]["LogId"] = 18000154
	tLotteryPackage_Reward[3303212]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303212]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303212]["DeleteItem"][1]["Id"] = 3303212
	tLotteryPackage_Reward[3303212]["RewardItem"] = {}
	tLotteryPackage_Reward[3303212]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303212]["RewardItem"][1]["Id"] = 626199
	tLotteryPackage_Reward[3303212]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- [装备类]灵宝葫芦礼包
	tLotteryPackage_Reward[3303213] = {}
	tLotteryPackage_Reward[3303213]["LogId"] = 18000154
	tLotteryPackage_Reward[3303213]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303213]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303213]["DeleteItem"][1]["Id"] = 3303213
	tLotteryPackage_Reward[3303213]["RewardItem"] = {}
	tLotteryPackage_Reward[3303213]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303213]["RewardItem"][1]["Id"] = 2100025
	tLotteryPackage_Reward[3303213]["RewardItem"][1]["Attr"] = "0 1"
	
	-- [装备类]1洞随机装备包
	-- 极品1洞太岁宗道
	tLotteryPackage_Reward[3303214] = {}
	tLotteryPackage_Reward[3303214]["LogId"] = 18000154
	tLotteryPackage_Reward[3303214]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303214]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303214]["DeleteItem"][1]["Id"] = 3303214
	tLotteryPackage_Reward[3303214]["RewardItem"] = {}
	tLotteryPackage_Reward[3303214]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303214]["RewardItem"][1]["Id"] = 601199
	tLotteryPackage_Reward[3303214]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- [装备类]2洞随机装备包
	-- 两洞精品三齿丸
	tLotteryPackage_Reward[3303215] = {}
	tLotteryPackage_Reward[3303215]["LogId"] = 18000154
	tLotteryPackage_Reward[3303215]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303215]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303215]["DeleteItem"][1]["Id"] = 3303215
	tLotteryPackage_Reward[3303215]["RewardItem"] = {}
	tLotteryPackage_Reward[3303215]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303215]["RewardItem"][1]["Id"] = 601098
	tLotteryPackage_Reward[3303215]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"

	-- 极品装备随机包1
	tLotteryPackage_Reward[3303252] = {}
	tLotteryPackage_Reward[3303252]["LogId"] = 18000154
	tLotteryPackage_Reward[3303252]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303252]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303252]["DeleteItem"][1]["Id"] = 3303252
	tLotteryPackage_Reward[3303252]["ItemChanceSum"] = 10000

	-- 100 	极品乾坤战甲'	3.55%
	tLotteryPackage_Reward[3303252][1] = {}
	tLotteryPackage_Reward[3303252][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][1]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][1]["RewardItem"][1]["Id"] = 130089
	tLotteryPackage_Reward[3303252][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品罗汉箍'	3.55%
	tLotteryPackage_Reward[3303252][2] = {}
	tLotteryPackage_Reward[3303252][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][2]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][2]["RewardItem"][1]["Id"] = 118089
	tLotteryPackage_Reward[3303252][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品玄铁铠'	3.55%
	tLotteryPackage_Reward[3303252][3] = {}
	tLotteryPackage_Reward[3303252][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][3]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][3]["RewardItem"][1]["Id"] = 131089
	tLotteryPackage_Reward[3303252][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品束发紫金冠'	3.55%
	tLotteryPackage_Reward[3303252][4] = {}
	tLotteryPackage_Reward[3303252][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][4]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][4]["RewardItem"][1]["Id"] = 111089
	tLotteryPackage_Reward[3303252][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品犀甲猎褂'	3.55%
	tLotteryPackage_Reward[3303252][5] = {}
	tLotteryPackage_Reward[3303252][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][5]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][5]["RewardItem"][1]["Id"] = 133079
	tLotteryPackage_Reward[3303252][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品鹿角帽'	3.55%
	tLotteryPackage_Reward[3303252][6] = {}
	tLotteryPackage_Reward[3303252][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][6]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][6]["RewardItem"][1]["Id"] = 113069
	tLotteryPackage_Reward[3303252][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品元始羽衣'	3.55%
	tLotteryPackage_Reward[3303252][7] = {}
	tLotteryPackage_Reward[3303252][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][7]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][7]["RewardItem"][1]["Id"] = 134099
	tLotteryPackage_Reward[3303252][7]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品七星冠'	3.55%
	tLotteryPackage_Reward[3303252][8] = {}
	tLotteryPackage_Reward[3303252][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][8]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][8]["RewardItem"][1]["Id"] = 114099
	tLotteryPackage_Reward[3303252][8]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品金丝香囊'	2.48%
	tLotteryPackage_Reward[3303252][9] = {}
	tLotteryPackage_Reward[3303252][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][9]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][9]["RewardItem"][1]["Id"] = 121189
	tLotteryPackage_Reward[3303252][9]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品龙睛宝链'	2.48%
	tLotteryPackage_Reward[3303252][10] = {}
	tLotteryPackage_Reward[3303252][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][10]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][10]["RewardItem"][1]["Id"] = 120189
	tLotteryPackage_Reward[3303252][10]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品宝蓝镯'	2.48%
	tLotteryPackage_Reward[3303252][11] = {}
	tLotteryPackage_Reward[3303252][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][11]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][11]["RewardItem"][1]["Id"] = 152189
	tLotteryPackage_Reward[3303252][11]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品碧玉耳环'	2.48%
	tLotteryPackage_Reward[3303252][12] = {}
	tLotteryPackage_Reward[3303252][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][12]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][12]["RewardItem"][1]["Id"] = 117089
	tLotteryPackage_Reward[3303252][12]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品白金钻戒'	2.48%
	tLotteryPackage_Reward[3303252][13] = {}
	tLotteryPackage_Reward[3303252][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][13]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][13]["RewardItem"][1]["Id"] = 150199
	tLotteryPackage_Reward[3303252][13]["RewardItem"][1]["Attr"] = "0 1"
	-- 90 	'极品碧晶凤扳'	3.19%
	tLotteryPackage_Reward[3303252][14] = {}
	tLotteryPackage_Reward[3303252][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][14]["ItemChance"] = 319
	tLotteryPackage_Reward[3303252][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][14]["RewardItem"][1]["Id"] = 151179
	tLotteryPackage_Reward[3303252][14]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品麒麟靴'	2.48%
	tLotteryPackage_Reward[3303252][15] = {}
	tLotteryPackage_Reward[3303252][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][15]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][15]["RewardItem"][1]["Id"] = 160199
	tLotteryPackage_Reward[3303252][15]["RewardItem"][1]["Attr"] = "0 1"
	-- 50 	'极品枫溪锦带'	1.77%
	tLotteryPackage_Reward[3303252][16] = {}
	tLotteryPackage_Reward[3303252][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][16]["ItemChance"] = 177
	tLotteryPackage_Reward[3303252][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][16]["RewardItem"][1]["Id"] = 141069
	tLotteryPackage_Reward[3303252][16]["RewardItem"][1]["Attr"] = "0 1"
	-- 50 	'极品天鹅之恋'	1.77%
	tLotteryPackage_Reward[3303252][17] = {}
	tLotteryPackage_Reward[3303252][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][17]["ItemChance"] = 177
	tLotteryPackage_Reward[3303252][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][17]["RewardItem"][1]["Id"] = 142069
	tLotteryPackage_Reward[3303252][17]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品凌霄扇'	2.48%
	tLotteryPackage_Reward[3303252][18] = {}
	tLotteryPackage_Reward[3303252][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][18]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][18]["RewardItem"][1]["Id"] = 201009
	tLotteryPackage_Reward[3303252][18]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品混元塔'	2.48%
	tLotteryPackage_Reward[3303252][19] = {}
	tLotteryPackage_Reward[3303252][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][19]["ItemChance"] = 248
	tLotteryPackage_Reward[3303252][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][19]["RewardItem"][1]["Id"] = 202009
	tLotteryPackage_Reward[3303252][19]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品赤月影'	3.55%
	tLotteryPackage_Reward[3303252][20] = {}
	tLotteryPackage_Reward[3303252][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][20]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][20]["RewardItem"][1]["Id"] = 135089
	tLotteryPackage_Reward[3303252][20]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品赤月之息'	3.55%
	tLotteryPackage_Reward[3303252][21] = {}
	tLotteryPackage_Reward[3303252][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][21]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][21]["RewardItem"][1]["Id"] = 112069
	tLotteryPackage_Reward[3303252][21]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品宿炎护额'	3.55%
	tLotteryPackage_Reward[3303252][22] = {}
	tLotteryPackage_Reward[3303252][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][22]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][22]["RewardItem"][1]["Id"] = 123069
	tLotteryPackage_Reward[3303252][22]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品月尊法箍'	3.55%
	tLotteryPackage_Reward[3303252][23] = {}
	tLotteryPackage_Reward[3303252][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][23]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][23]["RewardItem"][1]["Id"] = 143069
	tLotteryPackage_Reward[3303252][23]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品苦寒柔甲'	3.55%
	tLotteryPackage_Reward[3303252][24] = {}
	tLotteryPackage_Reward[3303252][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][24]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][24]["RewardItem"][1]["Id"] = 136089
	tLotteryPackage_Reward[3303252][24]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品蟠龙出渊裳'	3.55%
	tLotteryPackage_Reward[3303252][25] = {}
	tLotteryPackage_Reward[3303252][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][25]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][25]["RewardItem"][1]["Id"] = 139089
	tLotteryPackage_Reward[3303252][25]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品镇海帽'	3.55%
	tLotteryPackage_Reward[3303252][26] = {}
	tLotteryPackage_Reward[3303252][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][26]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][26]["RewardItem"][1]["Id"] = 144069
	tLotteryPackage_Reward[3303252][26]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品维京头巾'	3.55%
	tLotteryPackage_Reward[3303252][27] = {}
	tLotteryPackage_Reward[3303252][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][27]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][27]["RewardItem"][1]["Id"] = 145069
	tLotteryPackage_Reward[3303252][27]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品逐风头巾'	3.55%
	tLotteryPackage_Reward[3303252][28] = {}
	tLotteryPackage_Reward[3303252][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][28]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][28]["RewardItem"][1]["Id"] = 148069
	tLotteryPackage_Reward[3303252][28]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品连身战衣'	3.55%
	tLotteryPackage_Reward[3303252][29] = {}
	tLotteryPackage_Reward[3303252][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][29]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][29]["RewardItem"][1]["Id"] = 138089
	tLotteryPackage_Reward[3303252][29]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品墨云冠'	3.55%
	tLotteryPackage_Reward[3303252][30] = {}
	tLotteryPackage_Reward[3303252][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][30]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][30]["RewardItem"][1]["Id"] = 170069
	tLotteryPackage_Reward[3303252][30]["RewardItem"][1]["Attr"] = "0 1"
	-- 100 	'极品玄素袍'	3.55%
	tLotteryPackage_Reward[3303252][31] = {}
	tLotteryPackage_Reward[3303252][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][31]["ItemChance"] = 355
	tLotteryPackage_Reward[3303252][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][31]["RewardItem"][1]["Id"] = 101089
	tLotteryPackage_Reward[3303252][31]["RewardItem"][1]["Attr"] = "0 1"
	-- 70 	'极品马鞭'	2.43%
	tLotteryPackage_Reward[3303252][32] = {}
	tLotteryPackage_Reward[3303252][32]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303252][32]["ItemChance"] = 243
	tLotteryPackage_Reward[3303252][32]["RewardItem"] = {}
	tLotteryPackage_Reward[3303252][32]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303252][32]["RewardItem"][1]["Id"] = 203009
	tLotteryPackage_Reward[3303252][32]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 极品1洞装备随机包
	tLotteryPackage_Reward[3303254] = {}
	tLotteryPackage_Reward[3303254]["LogId"] = 18000154
	tLotteryPackage_Reward[3303254]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303254]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303254]["DeleteItem"][1]["Id"] = 3303254
	tLotteryPackage_Reward[3303254]["ItemChanceSum"] = 10000

	-- 70 	'极品1洞赤霞剑'	2.60%
	tLotteryPackage_Reward[3303254][1] = {}
	tLotteryPackage_Reward[3303254][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][1]["ItemChance"] = 260
	tLotteryPackage_Reward[3303254][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][1]["RewardItem"][1]["Id"] = 421199
	tLotteryPackage_Reward[3303254][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'极品1洞乐浪檀弓'	2.60%
	tLotteryPackage_Reward[3303254][2] = {}
	tLotteryPackage_Reward[3303254][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][2]["ItemChance"] = 260
	tLotteryPackage_Reward[3303254][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][2]["RewardItem"][1]["Id"] = 500189
	tLotteryPackage_Reward[3303254][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	极品1洞虎刺坚盾'	3.72%
	tLotteryPackage_Reward[3303254][3] = {}
	tLotteryPackage_Reward[3303254][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][3]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][3]["RewardItem"][1]["Id"] = 900089
	tLotteryPackage_Reward[3303254][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'极品1洞沉虹斩'	2.60%
	tLotteryPackage_Reward[3303254][4] = {}
	tLotteryPackage_Reward[3303254][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][4]["ItemChance"] = 260
	tLotteryPackage_Reward[3303254][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][4]["RewardItem"][1]["Id"] = 410199
	tLotteryPackage_Reward[3303254][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'极品1洞赤霄剑'	2.60%
	tLotteryPackage_Reward[3303254][5] = {}
	tLotteryPackage_Reward[3303254][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][5]["ItemChance"] = 260
	tLotteryPackage_Reward[3303254][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][5]["RewardItem"][1]["Id"] = 420199
	tLotteryPackage_Reward[3303254][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞索命钩'	3.72%
	tLotteryPackage_Reward[3303254][6] = {}
	tLotteryPackage_Reward[3303254][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][6]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][6]["RewardItem"][1]["Id"] = 430199
	tLotteryPackage_Reward[3303254][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞雷公鞭'	3.72%
	tLotteryPackage_Reward[3303254][7] = {}
	tLotteryPackage_Reward[3303254][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][7]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][7]["RewardItem"][1]["Id"] = 440199
	tLotteryPackage_Reward[3303254][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞湛金斧'	3.72%
	tLotteryPackage_Reward[3303254][8] = {}
	tLotteryPackage_Reward[3303254][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][8]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][8]["RewardItem"][1]["Id"] = 450199
	tLotteryPackage_Reward[3303254][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞灿银锤'	3.72%
	tLotteryPackage_Reward[3303254][9] = {}
	tLotteryPackage_Reward[3303254][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][9]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][9]["RewardItem"][1]["Id"] = 460199
	tLotteryPackage_Reward[3303254][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'极品1洞珊银棒'	2.60%
	tLotteryPackage_Reward[3303254][10] = {}
	tLotteryPackage_Reward[3303254][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][10]["ItemChance"] = 260
	tLotteryPackage_Reward[3303254][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][10]["RewardItem"][1]["Id"] = 480199
	tLotteryPackage_Reward[3303254][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞霹雳神杵'	3.72%
	tLotteryPackage_Reward[3303254][11] = {}
	tLotteryPackage_Reward[3303254][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][11]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][11]["RewardItem"][1]["Id"] = 481199
	tLotteryPackage_Reward[3303254][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞虹艳匕'	3.72%
	tLotteryPackage_Reward[3303254][12] = {}
	tLotteryPackage_Reward[3303254][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][12]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][12]["RewardItem"][1]["Id"] = 490199
	tLotteryPackage_Reward[3303254][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞五虎追风刀'	3.72%
	tLotteryPackage_Reward[3303254][13] = {}
	tLotteryPackage_Reward[3303254][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][13]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][13]["RewardItem"][1]["Id"] = 510199
	tLotteryPackage_Reward[3303254][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞金蘸长斧'	3.72%
	tLotteryPackage_Reward[3303254][14] = {}
	tLotteryPackage_Reward[3303254][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][14]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][14]["RewardItem"][1]["Id"] = 530199
	tLotteryPackage_Reward[3303254][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞八瓣铁瓜锤'	3.72%
	tLotteryPackage_Reward[3303254][15] = {}
	tLotteryPackage_Reward[3303254][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][15]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][15]["RewardItem"][1]["Id"] = 540199
	tLotteryPackage_Reward[3303254][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞梅花枪'	3.72%
	tLotteryPackage_Reward[3303254][16] = {}
	tLotteryPackage_Reward[3303254][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][16]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][16]["RewardItem"][1]["Id"] = 560199
	tLotteryPackage_Reward[3303254][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞银剪戟'	3.72%
	tLotteryPackage_Reward[3303254][17] = {}
	tLotteryPackage_Reward[3303254][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][17]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][17]["RewardItem"][1]["Id"] = 580199
	tLotteryPackage_Reward[3303254][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞熟铜棍'	3.72%
	tLotteryPackage_Reward[3303254][18] = {}
	tLotteryPackage_Reward[3303254][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][18]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][18]["RewardItem"][1]["Id"] = 561199
	tLotteryPackage_Reward[3303254][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞太岁宗道'	3.72%
	tLotteryPackage_Reward[3303254][19] = {}
	tLotteryPackage_Reward[3303254][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][19]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][19]["RewardItem"][1]["Id"] = 601199
	tLotteryPackage_Reward[3303254][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞镇狱念珠'	3.72%
	tLotteryPackage_Reward[3303254][20] = {}
	tLotteryPackage_Reward[3303254][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][20]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][20]["RewardItem"][1]["Id"] = 610199
	tLotteryPackage_Reward[3303254][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞血狱之剑'	3.72%
	tLotteryPackage_Reward[3303254][21] = {}
	tLotteryPackage_Reward[3303254][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][21]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][21]["RewardItem"][1]["Id"] = 611199
	tLotteryPackage_Reward[3303254][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞恸哭火枪'	3.72%
	tLotteryPackage_Reward[3303254][22] = {}
	tLotteryPackage_Reward[3303254][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][22]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][22]["RewardItem"][1]["Id"] = 612199
	tLotteryPackage_Reward[3303254][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞封魔战镰'	3.72%
	tLotteryPackage_Reward[3303254][23] = {}
	tLotteryPackage_Reward[3303254][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][23]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][23]["RewardItem"][1]["Id"] = 511199
	tLotteryPackage_Reward[3303254][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'极品1洞封邪飞刀'	3.72%
	tLotteryPackage_Reward[3303254][24] = {}
	tLotteryPackage_Reward[3303254][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][24]["ItemChance"] = 372
	tLotteryPackage_Reward[3303254][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][24]["RewardItem"][1]["Id"] = 613199
	tLotteryPackage_Reward[3303254][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 60 	'极品1洞苍之怒焰'	2.23%
	tLotteryPackage_Reward[3303254][25] = {}
	tLotteryPackage_Reward[3303254][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][25]["ItemChance"] = 223
	tLotteryPackage_Reward[3303254][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][25]["RewardItem"][1]["Id"] = 624199
	tLotteryPackage_Reward[3303254][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 190 	'极品1洞聚灵双龙棍'	7.06%
	tLotteryPackage_Reward[3303254][26] = {}
	tLotteryPackage_Reward[3303254][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][26]["ItemChance"] = 706
	tLotteryPackage_Reward[3303254][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][26]["RewardItem"][1]["Id"] = 617199
	tLotteryPackage_Reward[3303254][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 190 	'极品1洞傲雪凌霜扇'	7.03%
	tLotteryPackage_Reward[3303254][27] = {}
	tLotteryPackage_Reward[3303254][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303254][27]["ItemChance"] = 703
	tLotteryPackage_Reward[3303254][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303254][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303254][27]["RewardItem"][1]["Id"] = 626199
	tLotteryPackage_Reward[3303254][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- 精品2洞装备随机包1
	tLotteryPackage_Reward[3303253] = {}
	tLotteryPackage_Reward[3303253]["LogId"] = 18000154
	tLotteryPackage_Reward[3303253]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303253]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303253]["DeleteItem"][1]["Id"] = 3303253
	tLotteryPackage_Reward[3303253]["ItemChanceSum"] = 10000

	-- 70 	两洞精品天铁剑'	3.72%
	tLotteryPackage_Reward[3303253][1] = {}
	tLotteryPackage_Reward[3303253][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][1]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][1]["RewardItem"][1]["Id"] = 421088
	tLotteryPackage_Reward[3303253][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品秦弓'	3.72%
	tLotteryPackage_Reward[3303253][2] = {}
	tLotteryPackage_Reward[3303253][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][2]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][2]["RewardItem"][1]["Id"] = 500088
	tLotteryPackage_Reward[3303253][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品藤木盾'	3.72%
	tLotteryPackage_Reward[3303253][3] = {}
	tLotteryPackage_Reward[3303253][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][3]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][3]["RewardItem"][1]["Id"] = 900018
	tLotteryPackage_Reward[3303253][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品明月刀'	2.66%
	tLotteryPackage_Reward[3303253][4] = {}
	tLotteryPackage_Reward[3303253][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][4]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][4]["RewardItem"][1]["Id"] = 410098
	tLotteryPackage_Reward[3303253][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品蝶恋剑'	3.72%
	tLotteryPackage_Reward[3303253][5] = {}
	tLotteryPackage_Reward[3303253][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][5]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][5]["RewardItem"][1]["Id"] = 420098
	tLotteryPackage_Reward[3303253][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品鹿角钩'	2.66%
	tLotteryPackage_Reward[3303253][6] = {}
	tLotteryPackage_Reward[3303253][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][6]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][6]["RewardItem"][1]["Id"] = 430098
	tLotteryPackage_Reward[3303253][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品两仪鞭'	2.66%
	tLotteryPackage_Reward[3303253][7] = {}
	tLotteryPackage_Reward[3303253][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][7]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][7]["RewardItem"][1]["Id"] = 440098
	tLotteryPackage_Reward[3303253][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品康侯斧'	2.66%
	tLotteryPackage_Reward[3303253][8] = {}
	tLotteryPackage_Reward[3303253][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][8]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][8]["RewardItem"][1]["Id"] = 450098
	tLotteryPackage_Reward[3303253][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品卧瓜锤'	2.66%
	tLotteryPackage_Reward[3303253][9] = {}
	tLotteryPackage_Reward[3303253][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][9]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][9]["RewardItem"][1]["Id"] = 460098
	tLotteryPackage_Reward[3303253][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品镔铁棒'	3.72%
	tLotteryPackage_Reward[3303253][10] = {}
	tLotteryPackage_Reward[3303253][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][10]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][10]["RewardItem"][1]["Id"] = 480098
	tLotteryPackage_Reward[3303253][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品如意杵'	2.66%
	tLotteryPackage_Reward[3303253][11] = {}
	tLotteryPackage_Reward[3303253][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][11]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][11]["RewardItem"][1]["Id"] = 481098
	tLotteryPackage_Reward[3303253][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品曹公匕'	2.66%
	tLotteryPackage_Reward[3303253][12] = {}
	tLotteryPackage_Reward[3303253][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][12]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][12]["RewardItem"][1]["Id"] = 490098
	tLotteryPackage_Reward[3303253][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品六合单刀'	2.66%
	tLotteryPackage_Reward[3303253][13] = {}
	tLotteryPackage_Reward[3303253][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][13]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][13]["RewardItem"][1]["Id"] = 510098
	tLotteryPackage_Reward[3303253][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品双刃长斧'	2.66%
	tLotteryPackage_Reward[3303253][14] = {}
	tLotteryPackage_Reward[3303253][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][14]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][14]["RewardItem"][1]["Id"] = 530098
	tLotteryPackage_Reward[3303253][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品蚩尤锤'	2.66%
	tLotteryPackage_Reward[3303253][15] = {}
	tLotteryPackage_Reward[3303253][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][15]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][15]["RewardItem"][1]["Id"] = 540098
	tLotteryPackage_Reward[3303253][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品六合枪'	3.72%
	tLotteryPackage_Reward[3303253][16] = {}
	tLotteryPackage_Reward[3303253][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][16]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][16]["RewardItem"][1]["Id"] = 560098
	tLotteryPackage_Reward[3303253][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品描金戟'	2.66%
	tLotteryPackage_Reward[3303253][17] = {}
	tLotteryPackage_Reward[3303253][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][17]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][17]["RewardItem"][1]["Id"] = 580098
	tLotteryPackage_Reward[3303253][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 50 	'两洞精品少林棍'	2.66%
	tLotteryPackage_Reward[3303253][18] = {}
	tLotteryPackage_Reward[3303253][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][18]["ItemChance"] = 266
	tLotteryPackage_Reward[3303253][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][18]["RewardItem"][1]["Id"] = 561098
	tLotteryPackage_Reward[3303253][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品三齿丸'	3.72%
	tLotteryPackage_Reward[3303253][19] = {}
	tLotteryPackage_Reward[3303253][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][19]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][19]["RewardItem"][1]["Id"] = 601098
	tLotteryPackage_Reward[3303253][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品三毒念珠'	3.72%
	tLotteryPackage_Reward[3303253][20] = {}
	tLotteryPackage_Reward[3303253][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][20]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][20]["RewardItem"][1]["Id"] = 610098
	tLotteryPackage_Reward[3303253][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品暗流刺剑'	3.72%
	tLotteryPackage_Reward[3303253][21] = {}
	tLotteryPackage_Reward[3303253][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][21]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][21]["RewardItem"][1]["Id"] = 611098
	tLotteryPackage_Reward[3303253][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品鎏金火枪'	3.72%
	tLotteryPackage_Reward[3303253][22] = {}
	tLotteryPackage_Reward[3303253][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][22]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][22]["RewardItem"][1]["Id"] = 612098
	tLotteryPackage_Reward[3303253][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品荡邪钩镰'	3.72%
	tLotteryPackage_Reward[3303253][23] = {}
	tLotteryPackage_Reward[3303253][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][23]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][23]["RewardItem"][1]["Id"] = 511098
	tLotteryPackage_Reward[3303253][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品玄阳飞刀'	3.72%
	tLotteryPackage_Reward[3303253][24] = {}
	tLotteryPackage_Reward[3303253][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][24]["ItemChance"] = 372
	tLotteryPackage_Reward[3303253][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][24]["RewardItem"][1]["Id"] = 613098
	tLotteryPackage_Reward[3303253][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 60 	'两洞精品苍之怒焰'	3.19%
	tLotteryPackage_Reward[3303253][25] = {}
	tLotteryPackage_Reward[3303253][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][25]["ItemChance"] = 319
	tLotteryPackage_Reward[3303253][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][25]["RewardItem"][1]["Id"] = 624098
	tLotteryPackage_Reward[3303253][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 190 	'两洞精品聚灵双龙棍'	10.11%
	tLotteryPackage_Reward[3303253][26] = {}
	tLotteryPackage_Reward[3303253][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][26]["ItemChance"] = 1011
	tLotteryPackage_Reward[3303253][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][26]["RewardItem"][1]["Id"] = 617198
	tLotteryPackage_Reward[3303253][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 190 	'两洞精品傲雪凌霜扇'	10.14%
	tLotteryPackage_Reward[3303253][27] = {}
	tLotteryPackage_Reward[3303253][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303253][27]["ItemChance"] = 1014
	tLotteryPackage_Reward[3303253][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303253][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303253][27]["RewardItem"][1]["Id"] = 626198
	tLotteryPackage_Reward[3303253][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	
	-- 精品1洞装备随机包1
	tLotteryPackage_Reward[3303255] = {}
	tLotteryPackage_Reward[3303255]["LogId"] = 18000154
	tLotteryPackage_Reward[3303255]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303255]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303255]["DeleteItem"][1]["Id"] = 3303255
	tLotteryPackage_Reward[3303255]["ItemChanceSum"] = 10000

	-- 100 	'一洞精品地煞甲'	3.32%
	tLotteryPackage_Reward[3303255][1] = {}
	tLotteryPackage_Reward[3303255][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][1]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][1]["RewardItem"][1]["Id"] = 130058
	tLotteryPackage_Reward[3303255][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品黄金箍'	3.32%
	tLotteryPackage_Reward[3303255][2] = {}
	tLotteryPackage_Reward[3303255][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][2]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][2]["RewardItem"][1]["Id"] = 118058
	tLotteryPackage_Reward[3303255][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品虎头环锁铠'	3.32%
	tLotteryPackage_Reward[3303255][3] = {}
	tLotteryPackage_Reward[3303255][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][3]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][3]["RewardItem"][1]["Id"] = 131058
	tLotteryPackage_Reward[3303255][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品凤珠点金盔'	3.32%
	tLotteryPackage_Reward[3303255][4] = {}
	tLotteryPackage_Reward[3303255][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][4]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][4]["RewardItem"][1]["Id"] = 111058
	tLotteryPackage_Reward[3303255][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品野猿猎褂'	3.32%
	tLotteryPackage_Reward[3303255][5] = {}
	tLotteryPackage_Reward[3303255][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][5]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][5]["RewardItem"][1]["Id"] = 133048
	tLotteryPackage_Reward[3303255][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品雪豹帽'	3.32%
	tLotteryPackage_Reward[3303255][6] = {}
	tLotteryPackage_Reward[3303255][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][6]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][6]["RewardItem"][1]["Id"] = 113038
	tLotteryPackage_Reward[3303255][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品天师法衣'	3.32%
	tLotteryPackage_Reward[3303255][7] = {}
	tLotteryPackage_Reward[3303255][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][7]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][7]["RewardItem"][1]["Id"] = 134058
	tLotteryPackage_Reward[3303255][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品青蛟冠'	3.32%
	tLotteryPackage_Reward[3303255][8] = {}
	tLotteryPackage_Reward[3303255][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][8]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][8]["RewardItem"][1]["Id"] = 114068
	tLotteryPackage_Reward[3303255][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品龙涎香囊'	2.33%
	tLotteryPackage_Reward[3303255][9] = {}
	tLotteryPackage_Reward[3303255][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][9]["ItemChance"] = 233
	tLotteryPackage_Reward[3303255][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][9]["RewardItem"][1]["Id"] = 121128
	tLotteryPackage_Reward[3303255][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品白金项链'	2.33%
	tLotteryPackage_Reward[3303255][10] = {}
	tLotteryPackage_Reward[3303255][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][10]["ItemChance"] = 233
	tLotteryPackage_Reward[3303255][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][10]["RewardItem"][1]["Id"] = 120128
	tLotteryPackage_Reward[3303255][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品龙骨镯'	2.33%
	tLotteryPackage_Reward[3303255][11] = {}
	tLotteryPackage_Reward[3303255][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][11]["ItemChance"] = 233
	tLotteryPackage_Reward[3303255][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][11]["RewardItem"][1]["Id"] = 152128
	tLotteryPackage_Reward[3303255][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品海洋之心'	2.33%
	tLotteryPackage_Reward[3303255][12] = {}
	tLotteryPackage_Reward[3303255][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][12]["ItemChance"] = 233
	tLotteryPackage_Reward[3303255][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][12]["RewardItem"][1]["Id"] = 117068
	tLotteryPackage_Reward[3303255][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品碧玉戒指'	2.33%
	tLotteryPackage_Reward[3303255][13] = {}
	tLotteryPackage_Reward[3303255][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][13]["ItemChance"] = 233
	tLotteryPackage_Reward[3303255][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][13]["RewardItem"][1]["Id"] = 150118
	tLotteryPackage_Reward[3303255][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 90 	'一洞精品墨玉扳指'	2.99%
	tLotteryPackage_Reward[3303255][14] = {}
	tLotteryPackage_Reward[3303255][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][14]["ItemChance"] = 299
	tLotteryPackage_Reward[3303255][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][14]["RewardItem"][1]["Id"] = 151118
	tLotteryPackage_Reward[3303255][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品云锦靴'	2.36%
	tLotteryPackage_Reward[3303255][15] = {}
	tLotteryPackage_Reward[3303255][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][15]["ItemChance"] = 236
	tLotteryPackage_Reward[3303255][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][15]["RewardItem"][1]["Id"] = 160098
	tLotteryPackage_Reward[3303255][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品炎雀头带'	3.32%
	tLotteryPackage_Reward[3303255][16] = {}
	tLotteryPackage_Reward[3303255][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][16]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][16]["RewardItem"][1]["Id"] = 141058
	tLotteryPackage_Reward[3303255][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品贯月紫萱'	3.32%
	tLotteryPackage_Reward[3303255][17] = {}
	tLotteryPackage_Reward[3303255][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][17]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][17]["RewardItem"][1]["Id"] = 142058
	tLotteryPackage_Reward[3303255][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 50 	'一洞极品凌霄扇'	1.66%
	tLotteryPackage_Reward[3303255][18] = {}
	tLotteryPackage_Reward[3303255][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][18]["ItemChance"] = 166
	tLotteryPackage_Reward[3303255][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][18]["RewardItem"][1]["Id"] = 201009
	tLotteryPackage_Reward[3303255][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 50 	'一洞极品混元塔'	1.66%
	tLotteryPackage_Reward[3303255][19] = {}
	tLotteryPackage_Reward[3303255][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][19]["ItemChance"] = 166
	tLotteryPackage_Reward[3303255][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][19]["RewardItem"][1]["Id"] = 202009
	tLotteryPackage_Reward[3303255][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞火翼之触'	3.32%
	tLotteryPackage_Reward[3303255][20] = {}
	tLotteryPackage_Reward[3303255][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][20]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][20]["RewardItem"][1]["Id"] = 112058
	tLotteryPackage_Reward[3303255][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞夜魔护额'	3.32%
	tLotteryPackage_Reward[3303255][21] = {}
	tLotteryPackage_Reward[3303255][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][21]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][21]["RewardItem"][1]["Id"] = 123058
	tLotteryPackage_Reward[3303255][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞铜武魂'	3.32%
	tLotteryPackage_Reward[3303255][22] = {}
	tLotteryPackage_Reward[3303255][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][22]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][22]["RewardItem"][1]["Id"] = 135058
	tLotteryPackage_Reward[3303255][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞荣枯柔甲'	3.32%
	tLotteryPackage_Reward[3303255][23] = {}
	tLotteryPackage_Reward[3303255][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][23]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][23]["RewardItem"][1]["Id"] = 136058
	tLotteryPackage_Reward[3303255][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞净莲法箍'	3.32%
	tLotteryPackage_Reward[3303255][24] = {}
	tLotteryPackage_Reward[3303255][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][24]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][24]["RewardItem"][1]["Id"] = 143058
	tLotteryPackage_Reward[3303255][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞定海帽'	3.32%
	tLotteryPackage_Reward[3303255][25] = {}
	tLotteryPackage_Reward[3303255][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][25]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][25]["RewardItem"][1]["Id"] = 144058
	tLotteryPackage_Reward[3303255][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞猎寇裳'	3.32%
	tLotteryPackage_Reward[3303255][26] = {}
	tLotteryPackage_Reward[3303255][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][26]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][26]["RewardItem"][1]["Id"] = 139058
	tLotteryPackage_Reward[3303255][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞断流头巾'	3.32%
	tLotteryPackage_Reward[3303255][27] = {}
	tLotteryPackage_Reward[3303255][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][27]["ItemChance"] = 332
	tLotteryPackage_Reward[3303255][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][27]["RewardItem"][1]["Id"] = 145058
	tLotteryPackage_Reward[3303255][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞连身战衣'	4.98%
	tLotteryPackage_Reward[3303255][28] = {}
	tLotteryPackage_Reward[3303255][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][28]["ItemChance"] = 498
	tLotteryPackage_Reward[3303255][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][28]["RewardItem"][1]["Id"] = 138058
	tLotteryPackage_Reward[3303255][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞悲悯头巾'	4.98%
	tLotteryPackage_Reward[3303255][29] = {}
	tLotteryPackage_Reward[3303255][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][29]["ItemChance"] = 498
	tLotteryPackage_Reward[3303255][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][29]["RewardItem"][1]["Id"] = 148058
	tLotteryPackage_Reward[3303255][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞玄素袍'	4.98%
	tLotteryPackage_Reward[3303255][30] = {}
	tLotteryPackage_Reward[3303255][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][30]["ItemChance"] = 498
	tLotteryPackage_Reward[3303255][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][30]["RewardItem"][1]["Id"] = 101058
	tLotteryPackage_Reward[3303255][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞墨云冠'	4.98%
	tLotteryPackage_Reward[3303255][31] = {}
	tLotteryPackage_Reward[3303255][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303255][31]["ItemChance"] = 498
	tLotteryPackage_Reward[3303255][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303255][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303255][31]["RewardItem"][1]["Id"] = 170058
	tLotteryPackage_Reward[3303255][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- 精品+8装备随机包
	tLotteryPackage_Reward[3303256] = {}
	tLotteryPackage_Reward[3303256]["LogId"] = 18000154
	tLotteryPackage_Reward[3303256]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303256]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303256]["DeleteItem"][1]["Id"] = 3303256
	tLotteryPackage_Reward[3303256]["ItemChanceSum"] = 10000

	-- 70 	'＋8精品太级剑'	1.35%
	tLotteryPackage_Reward[3303256][1] = {}
	tLotteryPackage_Reward[3303256][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][1]["ItemChance"] = 135
	tLotteryPackage_Reward[3303256][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][1]["RewardItem"][1]["Id"] = 421078
	tLotteryPackage_Reward[3303256][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品角弓'	1.33%
	tLotteryPackage_Reward[3303256][2] = {}
	tLotteryPackage_Reward[3303256][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][2]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][2]["RewardItem"][1]["Id"] = 500078
	tLotteryPackage_Reward[3303256][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品软藤盾'	1.90%
	tLotteryPackage_Reward[3303256][3] = {}
	tLotteryPackage_Reward[3303256][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][3]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][3]["RewardItem"][1]["Id"] = 900008
	tLotteryPackage_Reward[3303256][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品蝉翼刀'	1.35%
	tLotteryPackage_Reward[3303256][4] = {}
	tLotteryPackage_Reward[3303256][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][4]["ItemChance"] = 135
	tLotteryPackage_Reward[3303256][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][4]["RewardItem"][1]["Id"] = 410078
	tLotteryPackage_Reward[3303256][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品昆吾剑'	1.33%
	tLotteryPackage_Reward[3303256][5] = {}
	tLotteryPackage_Reward[3303256][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][5]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][5]["RewardItem"][1]["Id"] = 420088
	tLotteryPackage_Reward[3303256][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品梅花钩'	1.90%
	tLotteryPackage_Reward[3303256][6] = {}
	tLotteryPackage_Reward[3303256][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][6]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][6]["RewardItem"][1]["Id"] = 430088
	tLotteryPackage_Reward[3303256][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品少林铜锏'	1.90%
	tLotteryPackage_Reward[3303256][7] = {}
	tLotteryPackage_Reward[3303256][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][7]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][7]["RewardItem"][1]["Id"] = 440088
	tLotteryPackage_Reward[3303256][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品少林斧'	1.90%
	tLotteryPackage_Reward[3303256][8] = {}
	tLotteryPackage_Reward[3303256][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][8]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][8]["RewardItem"][1]["Id"] = 450088
	tLotteryPackage_Reward[3303256][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品四楞锤'	1.90%
	tLotteryPackage_Reward[3303256][9] = {}
	tLotteryPackage_Reward[3303256][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][9]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][9]["RewardItem"][1]["Id"] = 460088
	tLotteryPackage_Reward[3303256][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品齐眉短棒'	1.33%
	tLotteryPackage_Reward[3303256][10] = {}
	tLotteryPackage_Reward[3303256][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][10]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][10]["RewardItem"][1]["Id"] = 480088
	tLotteryPackage_Reward[3303256][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品莲花杵'	1.90%
	tLotteryPackage_Reward[3303256][11] = {}
	tLotteryPackage_Reward[3303256][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][11]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][11]["RewardItem"][1]["Id"] = 481088
	tLotteryPackage_Reward[3303256][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品青龙匕'	1.90%
	tLotteryPackage_Reward[3303256][12] = {}
	tLotteryPackage_Reward[3303256][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][12]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][12]["RewardItem"][1]["Id"] = 490088
	tLotteryPackage_Reward[3303256][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品滚堂刀'	1.90%
	tLotteryPackage_Reward[3303256][13] = {}
	tLotteryPackage_Reward[3303256][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][13]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][13]["RewardItem"][1]["Id"] = 510088
	tLotteryPackage_Reward[3303256][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品静燕长斧'	1.90%
	tLotteryPackage_Reward[3303256][14] = {}
	tLotteryPackage_Reward[3303256][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][14]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][14]["RewardItem"][1]["Id"] = 530088
	tLotteryPackage_Reward[3303256][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品幽冥锤'	1.90%
	tLotteryPackage_Reward[3303256][15] = {}
	tLotteryPackage_Reward[3303256][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][15]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][15]["RewardItem"][1]["Id"] = 540088
	tLotteryPackage_Reward[3303256][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品明月枪'	1.90%
	tLotteryPackage_Reward[3303256][16] = {}
	tLotteryPackage_Reward[3303256][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][16]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][16]["RewardItem"][1]["Id"] = 560088
	tLotteryPackage_Reward[3303256][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品长钺戟'	1.90%
	tLotteryPackage_Reward[3303256][17] = {}
	tLotteryPackage_Reward[3303256][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][17]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][17]["RewardItem"][1]["Id"] = 580088
	tLotteryPackage_Reward[3303256][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品子午棍'	1.90%
	tLotteryPackage_Reward[3303256][18] = {}
	tLotteryPackage_Reward[3303256][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][18]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][18]["RewardItem"][1]["Id"] = 561088
	tLotteryPackage_Reward[3303256][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品虎威甲'	1.90%
	tLotteryPackage_Reward[3303256][19] = {}
	tLotteryPackage_Reward[3303256][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][19]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][19]["RewardItem"][1]["Id"] = 130038
	tLotteryPackage_Reward[3303256][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品精钢头箍'	1.90%
	tLotteryPackage_Reward[3303256][20] = {}
	tLotteryPackage_Reward[3303256][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][20]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][20]["RewardItem"][1]["Id"] = 118038
	tLotteryPackage_Reward[3303256][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品精钢铠'	1.90%
	tLotteryPackage_Reward[3303256][21] = {}
	tLotteryPackage_Reward[3303256][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][21]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][21]["RewardItem"][1]["Id"] = 131038
	tLotteryPackage_Reward[3303256][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品亮银盔'	1.90%
	tLotteryPackage_Reward[3303256][22] = {}
	tLotteryPackage_Reward[3303256][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][22]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][22]["RewardItem"][1]["Id"] = 111038
	tLotteryPackage_Reward[3303256][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品豹纹猎褂'	1.90%
	tLotteryPackage_Reward[3303256][23] = {}
	tLotteryPackage_Reward[3303256][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][23]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][23]["RewardItem"][1]["Id"] = 133038
	tLotteryPackage_Reward[3303256][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品狸皮帽'	1.90%
	tLotteryPackage_Reward[3303256][24] = {}
	tLotteryPackage_Reward[3303256][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][24]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][24]["RewardItem"][1]["Id"] = 113018
	tLotteryPackage_Reward[3303256][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品七星道袍'	1.90%
	tLotteryPackage_Reward[3303256][25] = {}
	tLotteryPackage_Reward[3303256][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][25]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][25]["RewardItem"][1]["Id"] = 134038
	tLotteryPackage_Reward[3303256][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品黄石冠'	1.90%
	tLotteryPackage_Reward[3303256][26] = {}
	tLotteryPackage_Reward[3303256][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][26]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][26]["RewardItem"][1]["Id"] = 114038
	tLotteryPackage_Reward[3303256][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品蓝晶香囊'	1.33%
	tLotteryPackage_Reward[3303256][27] = {}
	tLotteryPackage_Reward[3303256][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][27]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][27]["RewardItem"][1]["Id"] = 121088
	tLotteryPackage_Reward[3303256][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品水晶项链'	1.33%
	tLotteryPackage_Reward[3303256][28] = {}
	tLotteryPackage_Reward[3303256][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][28]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][28]["RewardItem"][1]["Id"] = 120088
	tLotteryPackage_Reward[3303256][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品紫金镯'	1.33%
	tLotteryPackage_Reward[3303256][29] = {}
	tLotteryPackage_Reward[3303256][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][29]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][29]["RewardItem"][1]["Id"] = 152108
	tLotteryPackage_Reward[3303256][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品流星耳环'	1.33%
	tLotteryPackage_Reward[3303256][30] = {}
	tLotteryPackage_Reward[3303256][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][30]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][30]["RewardItem"][1]["Id"] = 117038
	tLotteryPackage_Reward[3303256][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品翡翠戒指'	1.33%
	tLotteryPackage_Reward[3303256][31] = {}
	tLotteryPackage_Reward[3303256][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][31]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][31]["RewardItem"][1]["Id"] = 150078
	tLotteryPackage_Reward[3303256][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'＋8精品象牙扳指'	1.90%
	tLotteryPackage_Reward[3303256][32] = {}
	tLotteryPackage_Reward[3303256][32]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][32]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][32]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][32]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][32]["RewardItem"][1]["Id"] = 151078
	tLotteryPackage_Reward[3303256][32]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'＋8精品鹰爪靴'	1.33%
	tLotteryPackage_Reward[3303256][33] = {}
	tLotteryPackage_Reward[3303256][33]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][33]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][33]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][33]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][33]["RewardItem"][1]["Id"] = 160078
	tLotteryPackage_Reward[3303256][33]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品碧翠羽翎'	1.90%
	tLotteryPackage_Reward[3303256][34] = {}
	tLotteryPackage_Reward[3303256][34]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][34]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][34]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][34]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][34]["RewardItem"][1]["Id"] = 142018
	tLotteryPackage_Reward[3303256][34]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品蔷薇头带'	1.90%
	tLotteryPackage_Reward[3303256][35] = {}
	tLotteryPackage_Reward[3303256][35]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][35]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][35]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][35]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][35]["RewardItem"][1]["Id"] = 141038
	tLotteryPackage_Reward[3303256][35]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'+8精品凌霄扇'	1.33%
	tLotteryPackage_Reward[3303256][36] = {}
	tLotteryPackage_Reward[3303256][36]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][36]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][36]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][36]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][36]["RewardItem"][1]["Id"] = 201008
	tLotteryPackage_Reward[3303256][36]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'+8精品混元塔'	1.33%
	tLotteryPackage_Reward[3303256][37] = {}
	tLotteryPackage_Reward[3303256][37]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][37]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][37]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][37]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][37]["RewardItem"][1]["Id"] = 202008
	tLotteryPackage_Reward[3303256][37]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品惊雷丸'	1.90%
	tLotteryPackage_Reward[3303256][38] = {}
	tLotteryPackage_Reward[3303256][38]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][38]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][38]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][38]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][38]["RewardItem"][1]["Id"] = 601088
	tLotteryPackage_Reward[3303256][38]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品暗影装'	1.90%
	tLotteryPackage_Reward[3303256][39] = {}
	tLotteryPackage_Reward[3303256][39]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][39]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][39]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][39]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][39]["RewardItem"][1]["Id"] = 135048
	tLotteryPackage_Reward[3303256][39]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品红莲之首'	1.90%
	tLotteryPackage_Reward[3303256][40] = {}
	tLotteryPackage_Reward[3303256][40]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][40]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][40]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][40]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][40]["RewardItem"][1]["Id"] = 112038
	tLotteryPackage_Reward[3303256][40]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品青翼护额'	1.90%
	tLotteryPackage_Reward[3303256][41] = {}
	tLotteryPackage_Reward[3303256][41]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][41]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][41]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][41]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][41]["RewardItem"][1]["Id"] = 123038
	tLotteryPackage_Reward[3303256][41]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 70 	'+8精品马鞭'	1.33%
	tLotteryPackage_Reward[3303256][42] = {}
	tLotteryPackage_Reward[3303256][42]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][42]["ItemChance"] = 133
	tLotteryPackage_Reward[3303256][42]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][42]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][42]["RewardItem"][1]["Id"] = 203008
	tLotteryPackage_Reward[3303256][42]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品流云法箍'	1.90%
	tLotteryPackage_Reward[3303256][43] = {}
	tLotteryPackage_Reward[3303256][43]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][43]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][43]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][43]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][43]["RewardItem"][1]["Id"] = 143038
	tLotteryPackage_Reward[3303256][43]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品护法柔甲'	1.90%
	tLotteryPackage_Reward[3303256][44] = {}
	tLotteryPackage_Reward[3303256][44]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][44]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][44]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][44]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][44]["RewardItem"][1]["Id"] = 136048
	tLotteryPackage_Reward[3303256][44]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品禅机念珠'	1.90%
	tLotteryPackage_Reward[3303256][45] = {}
	tLotteryPackage_Reward[3303256][45]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][45]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][45]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][45]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][45]["RewardItem"][1]["Id"] = 610088
	tLotteryPackage_Reward[3303256][45]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品波峰刺剑'	1.90%
	tLotteryPackage_Reward[3303256][46] = {}
	tLotteryPackage_Reward[3303256][46]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][46]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][46]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][46]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][46]["RewardItem"][1]["Id"] = 611088
	tLotteryPackage_Reward[3303256][46]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品龙渊裳'	1.90%
	tLotteryPackage_Reward[3303256][47] = {}
	tLotteryPackage_Reward[3303256][47]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][47]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][47]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][47]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][47]["RewardItem"][1]["Id"] = 139048
	tLotteryPackage_Reward[3303256][47]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品平浪帽'	1.90%
	tLotteryPackage_Reward[3303256][48] = {}
	tLotteryPackage_Reward[3303256][48]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][48]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][48]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][48]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][48]["RewardItem"][1]["Id"] = 144038
	tLotteryPackage_Reward[3303256][48]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品秘银火枪'	1.90%
	tLotteryPackage_Reward[3303256][49] = {}
	tLotteryPackage_Reward[3303256][49]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][49]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][49]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][49]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][49]["RewardItem"][1]["Id"] = 612088
	tLotteryPackage_Reward[3303256][49]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品巡洋头巾'	1.90%
	tLotteryPackage_Reward[3303256][50] = {}
	tLotteryPackage_Reward[3303256][50]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][50]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][50]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][50]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][50]["RewardItem"][1]["Id"] = 145038
	tLotteryPackage_Reward[3303256][50]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品猎魔钩镰'	1.90%
	tLotteryPackage_Reward[3303256][51] = {}
	tLotteryPackage_Reward[3303256][51]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][51]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][51]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][51]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][51]["RewardItem"][1]["Id"] = 511088
	tLotteryPackage_Reward[3303256][51]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 100 	'+8精品星罗飞刀'	1.90%
	tLotteryPackage_Reward[3303256][52] = {}
	tLotteryPackage_Reward[3303256][52]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][52]["ItemChance"] = 190
	tLotteryPackage_Reward[3303256][52]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][52]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][52]["RewardItem"][1]["Id"] = 613088
	tLotteryPackage_Reward[3303256][52]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 80 	'+8精品苍之怒焰'	1.52%
	tLotteryPackage_Reward[3303256][53] = {}
	tLotteryPackage_Reward[3303256][53]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][53]["ItemChance"] = 150
	tLotteryPackage_Reward[3303256][53]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][53]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][53]["RewardItem"][1]["Id"] = 624088
	tLotteryPackage_Reward[3303256][53]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 110 	'+8精品灵龙双截棍'	2.11%
	tLotteryPackage_Reward[3303256][54] = {}
	tLotteryPackage_Reward[3303256][54]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][54]["ItemChance"] = 211
	tLotteryPackage_Reward[3303256][54]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][54]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][54]["RewardItem"][1]["Id"] = 617098
	tLotteryPackage_Reward[3303256][54]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"	
	-- 90 	'+8精品无为如意拂尘'	1.71%
	tLotteryPackage_Reward[3303256][55] = {}
	tLotteryPackage_Reward[3303256][55]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][55]["ItemChance"] = 171
	tLotteryPackage_Reward[3303256][55]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][55]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][55]["RewardItem"][1]["Id"] = 619078
	tLotteryPackage_Reward[3303256][55]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 90 	'+8精品风雷翅'	1.71%
	tLotteryPackage_Reward[3303256][56] = {}
	tLotteryPackage_Reward[3303256][56]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][56]["ItemChance"] = 171
	tLotteryPackage_Reward[3303256][56]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][56]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][56]["RewardItem"][1]["Id"] = 204008
	tLotteryPackage_Reward[3303256][56]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	-- 110 	'+8精品傲雪凌霜扇'	2.11%
	tLotteryPackage_Reward[3303256][57] = {}
	tLotteryPackage_Reward[3303256][57]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303256][57]["ItemChance"] = 211
	tLotteryPackage_Reward[3303256][57]["RewardItem"] = {}
	tLotteryPackage_Reward[3303256][57]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303256][57]["RewardItem"][1]["Id"] = 626098
	tLotteryPackage_Reward[3303256][57]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	
	-- 两洞精品装备随机包
	tLotteryPackage_Reward[3303257] = {}
	tLotteryPackage_Reward[3303257]["LogId"] = 18000154
	tLotteryPackage_Reward[3303257]["DeleteItem"] = {}
	tLotteryPackage_Reward[3303257]["DeleteItem"][1] = {}
	tLotteryPackage_Reward[3303257]["DeleteItem"][1]["Id"] = 3303257
	tLotteryPackage_Reward[3303257]["ItemChanceSum"] = 10000

	-- 100 	'两洞精品天罡甲'	3.40%
	tLotteryPackage_Reward[3303257][1] = {}
	tLotteryPackage_Reward[3303257][1]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][1]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][1]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][1]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][1]["RewardItem"][1]["Id"] = 130048
	tLotteryPackage_Reward[3303257][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品红玉头箍'	3.40%
	tLotteryPackage_Reward[3303257][2] = {}
	tLotteryPackage_Reward[3303257][2]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][2]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][2]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][2]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][2]["RewardItem"][1]["Id"] = 118048
	tLotteryPackage_Reward[3303257][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品明光铠'	3.40%
	tLotteryPackage_Reward[3303257][3] = {}
	tLotteryPackage_Reward[3303257][3]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][3]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][3]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][3]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][3]["RewardItem"][1]["Id"] = 131048
	tLotteryPackage_Reward[3303257][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品乌金盔'	3.40%
	tLotteryPackage_Reward[3303257][4] = {}
	tLotteryPackage_Reward[3303257][4]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][4]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][4]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][4]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][4]["RewardItem"][1]["Id"] = 111048
	tLotteryPackage_Reward[3303257][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品狼皮猎褂'	3.40%
	tLotteryPackage_Reward[3303257][5] = {}
	tLotteryPackage_Reward[3303257][5]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][5]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][5]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][5]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][5]["RewardItem"][1]["Id"] = 133028
	tLotteryPackage_Reward[3303257][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品豺狼帽'	3.40%
	tLotteryPackage_Reward[3303257][6] = {}
	tLotteryPackage_Reward[3303257][6]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][6]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][6]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][6]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][6]["RewardItem"][1]["Id"] = 113028
	tLotteryPackage_Reward[3303257][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品三精法衣'	3.40%
	tLotteryPackage_Reward[3303257][7] = {}
	tLotteryPackage_Reward[3303257][7]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][7]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][7]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][7]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][7]["RewardItem"][1]["Id"] = 134048
	tLotteryPackage_Reward[3303257][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品红云冠'	3.40%
	tLotteryPackage_Reward[3303257][8] = {}
	tLotteryPackage_Reward[3303257][8]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][8]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][8]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][8]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][8]["RewardItem"][1]["Id"] = 114048
	tLotteryPackage_Reward[3303257][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品红豆香囊'	2.38%
	tLotteryPackage_Reward[3303257][9] = {}
	tLotteryPackage_Reward[3303257][9]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][9]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][9]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][9]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][9]["RewardItem"][1]["Id"] = 121098
	tLotteryPackage_Reward[3303257][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品金坠项链'	2.38%
	tLotteryPackage_Reward[3303257][10] = {}
	tLotteryPackage_Reward[3303257][10]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][10]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][10]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][10]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][10]["RewardItem"][1]["Id"] = 120098
	tLotteryPackage_Reward[3303257][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品金珠镯'	2.38%
	tLotteryPackage_Reward[3303257][11] = {}
	tLotteryPackage_Reward[3303257][11]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][11]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][11]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][11]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][11]["RewardItem"][1]["Id"] = 152088
	tLotteryPackage_Reward[3303257][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品流苏耳环'	2.38%
	tLotteryPackage_Reward[3303257][12] = {}
	tLotteryPackage_Reward[3303257][12]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][12]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][12]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][12]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][12]["RewardItem"][1]["Id"] = 117048
	tLotteryPackage_Reward[3303257][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品白玉戒指'	2.38%
	tLotteryPackage_Reward[3303257][13] = {}
	tLotteryPackage_Reward[3303257][13]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][13]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][13]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][13]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][13]["RewardItem"][1]["Id"] = 150098
	tLotteryPackage_Reward[3303257][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品虎骨扳指'	2.38%
	tLotteryPackage_Reward[3303257][14] = {}
	tLotteryPackage_Reward[3303257][14]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][14]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][14]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][14]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][14]["RewardItem"][1]["Id"] = 151098
	tLotteryPackage_Reward[3303257][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品鳄皮靴'	2.38%
	tLotteryPackage_Reward[3303257][15] = {}
	tLotteryPackage_Reward[3303257][15]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][15]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][15]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][15]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][15]["RewardItem"][1]["Id"] = 160118
	tLotteryPackage_Reward[3303257][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品瑞云头带'	3.40%
	tLotteryPackage_Reward[3303257][16] = {}
	tLotteryPackage_Reward[3303257][16]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][16]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][16]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][16]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][16]["RewardItem"][1]["Id"] = 141048
	tLotteryPackage_Reward[3303257][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品雪山狐绒'	3.40%
	tLotteryPackage_Reward[3303257][17] = {}
	tLotteryPackage_Reward[3303257][17]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][17]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][17]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][17]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][17]["RewardItem"][1]["Id"] = 142048
	tLotteryPackage_Reward[3303257][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品凌霄扇'	2.38%
	tLotteryPackage_Reward[3303257][18] = {}
	tLotteryPackage_Reward[3303257][18]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][18]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][18]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][18]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][18]["RewardItem"][1]["Id"] = 201008
	tLotteryPackage_Reward[3303257][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品混元塔'	2.38%
	tLotteryPackage_Reward[3303257][19] = {}
	tLotteryPackage_Reward[3303257][19]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][19]["ItemChance"] = 238
	tLotteryPackage_Reward[3303257][19]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][19]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][19]["RewardItem"][1]["Id"] = 202008
	tLotteryPackage_Reward[3303257][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品上忍服'	3.40%
	tLotteryPackage_Reward[3303257][20] = {}
	tLotteryPackage_Reward[3303257][20]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][20]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][20]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][20]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][20]["RewardItem"][1]["Id"] = 135028
	tLotteryPackage_Reward[3303257][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品白羽之首'	3.40%
	tLotteryPackage_Reward[3303257][21] = {}
	tLotteryPackage_Reward[3303257][21]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][21]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][21]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][21]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][21]["RewardItem"][1]["Id"] = 112028
	tLotteryPackage_Reward[3303257][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品红棉护额'	3.40%
	tLotteryPackage_Reward[3303257][22] = {}
	tLotteryPackage_Reward[3303257][22]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][22]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][22]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][22]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][22]["RewardItem"][1]["Id"] = 123028
	tLotteryPackage_Reward[3303257][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品浮生法箍'	3.40%
	tLotteryPackage_Reward[3303257][23] = {}
	tLotteryPackage_Reward[3303257][23]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][23]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][23]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][23]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][23]["RewardItem"][1]["Id"] = 143028
	tLotteryPackage_Reward[3303257][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品金丝战袍'	3.40%
	tLotteryPackage_Reward[3303257][24] = {}
	tLotteryPackage_Reward[3303257][24]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][24]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][24]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][24]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][24]["RewardItem"][1]["Id"] = 136028
	tLotteryPackage_Reward[3303257][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品覆波裳'	3.40%
	tLotteryPackage_Reward[3303257][25] = {}
	tLotteryPackage_Reward[3303257][25]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][25]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][25]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][25]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][25]["RewardItem"][1]["Id"] = 139028
	tLotteryPackage_Reward[3303257][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品卫海帽'	3.40%
	tLotteryPackage_Reward[3303257][26] = {}
	tLotteryPackage_Reward[3303257][26]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][26]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][26]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][26]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][26]["RewardItem"][1]["Id"] = 144028
	tLotteryPackage_Reward[3303257][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品海客头巾'	3.40%
	tLotteryPackage_Reward[3303257][27] = {}
	tLotteryPackage_Reward[3303257][27]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][27]["ItemChance"] = 340
	tLotteryPackage_Reward[3303257][27]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][27]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][27]["RewardItem"][1]["Id"] = 145028
	tLotteryPackage_Reward[3303257][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品连身战衣'	4.08%
	tLotteryPackage_Reward[3303257][28] = {}
	tLotteryPackage_Reward[3303257][28]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][28]["ItemChance"] = 408
	tLotteryPackage_Reward[3303257][28]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][28]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][28]["RewardItem"][1]["Id"] = 138028
	tLotteryPackage_Reward[3303257][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品功夫头巾'	4.08%
	tLotteryPackage_Reward[3303257][29] = {}
	tLotteryPackage_Reward[3303257][29]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][29]["ItemChance"] = 408
	tLotteryPackage_Reward[3303257][29]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][29]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][29]["RewardItem"][1]["Id"] = 148028
	tLotteryPackage_Reward[3303257][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 30 	'两洞精品风雷翅'	1.02%
	tLotteryPackage_Reward[3303257][30] = {}
	tLotteryPackage_Reward[3303257][30]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][30]["ItemChance"] = 102
	tLotteryPackage_Reward[3303257][30]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][30]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][30]["RewardItem"][1]["Id"] = 204008
	tLotteryPackage_Reward[3303257][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品玄素袍'	4.10%
	tLotteryPackage_Reward[3303257][31] = {}
	tLotteryPackage_Reward[3303257][31]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][31]["ItemChance"] = 410
	tLotteryPackage_Reward[3303257][31]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][31]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][31]["RewardItem"][1]["Id"] = 101028
	tLotteryPackage_Reward[3303257][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品墨云冠'	4.10%
	tLotteryPackage_Reward[3303257][32] = {}
	tLotteryPackage_Reward[3303257][32]["RandomItemChanceType"] = 2
	tLotteryPackage_Reward[3303257][32]["ItemChance"] = 410
	tLotteryPackage_Reward[3303257][32]["RewardItem"] = {}
	tLotteryPackage_Reward[3303257][32]["RewardItem"][1] = {}
	tLotteryPackage_Reward[3303257][32]["RewardItem"][1]["Id"] = 170028
	tLotteryPackage_Reward[3303257][32]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
-- dyh 修改，修改新服百宝箱的概率。
	local tLotteryPackage_NewReward = {}
	tLotteryPackage_NewReward[3303203] = {}
	tLotteryPackage_NewReward[3303203]["LogId"] = 18000154
	tLotteryPackage_NewReward[3303203]["DeleteItem"] = {}
	tLotteryPackage_NewReward[3303203]["DeleteItem"][1] = {}
	tLotteryPackage_NewReward[3303203]["DeleteItem"][1]["Id"] = 3303203
	tLotteryPackage_NewReward[3303203]["ItemChanceSum"] = 10000

	-- 玄灵秘录	37.00%
	tLotteryPackage_NewReward[3303203][1] = {}
	tLotteryPackage_NewReward[3303203][1]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][1]["ItemChance"] = 3700
	tLotteryPackage_NewReward[3303203][1]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][1]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][1]["RewardItem"][1]["Id"] = 723341
	tLotteryPackage_NewReward[3303203][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 清心符	13.52%                 
	tLotteryPackage_NewReward[3303203][2] = {}
	tLotteryPackage_NewReward[3303203][2]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][2]["ItemChance"] = 1352
	tLotteryPackage_NewReward[3303203][2]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][2]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][2]["RewardItem"][1]["Id"] = 3303222
	tLotteryPackage_NewReward[3303203][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 王母果篮	32.31%                 
	tLotteryPackage_NewReward[3303203][3] = {}
	tLotteryPackage_NewReward[3303203][3]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][3]["ItemChance"] = 3231
	tLotteryPackage_NewReward[3303203][3]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][3]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][3]["RewardItem"][1]["Id"] = 723725
	tLotteryPackage_NewReward[3303203][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 昆仑雪水	0.8%                   
	tLotteryPackage_NewReward[3303203][4] = {}
	tLotteryPackage_NewReward[3303203][4]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][4]["ItemChance"] = 80
	tLotteryPackage_NewReward[3303203][4]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][4]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][4]["RewardItem"][1]["Id"] = 723017
	tLotteryPackage_NewReward[3303203][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 涅磐灵石	0%                     
	tLotteryPackage_NewReward[3303203][5] = {}
	tLotteryPackage_NewReward[3303203][5]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][5]["ItemChance"] = 0
	tLotteryPackage_NewReward[3303203][5]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][5]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][5]["RewardItem"][1]["Id"] = 721259
	tLotteryPackage_NewReward[3303203][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 乾坤令	1.36%                  
	tLotteryPackage_NewReward[3303203][6] = {}
	tLotteryPackage_NewReward[3303203][6]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][6]["ItemChance"] = 136
	tLotteryPackage_NewReward[3303203][6]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][6]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][6]["RewardItem"][1]["Id"] = 722840
	tLotteryPackage_NewReward[3303203][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 大块祈愿石	8%                 
	tLotteryPackage_NewReward[3303203][7] = {}
	tLotteryPackage_NewReward[3303203][7]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][7]["ItemChance"] = 800
	tLotteryPackage_NewReward[3303203][7]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][7]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][7]["RewardItem"][1]["Id"] = 1200001
	tLotteryPackage_NewReward[3303203][7]["RewardItem"][1]["Attr"] = "0 1"
	-- 99朵百合花	0.27%              
	tLotteryPackage_NewReward[3303203][8] = {}
	tLotteryPackage_NewReward[3303203][8]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][8]["ItemChance"] = 27
	tLotteryPackage_NewReward[3303203][8]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][8]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][8]["RewardItem"][1]["Id"] = 752099
	tLotteryPackage_NewReward[3303203][8]["RewardItem"][1]["Attr"] = "0 1"
	-- 完美的祈愿石	4%                 
	tLotteryPackage_NewReward[3303203][9] = {}
	tLotteryPackage_NewReward[3303203][9]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][9]["ItemChance"] = 400
	tLotteryPackage_NewReward[3303203][9]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][9]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][9]["RewardItem"][1]["Id"] = 1200002
	tLotteryPackage_NewReward[3303203][9]["RewardItem"][1]["Attr"] = "0 1"
	-- 造化天书	1.30%                  
	tLotteryPackage_NewReward[3303203][10] = {}
	tLotteryPackage_NewReward[3303203][10]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][10]["ItemChance"] = 130
	tLotteryPackage_NewReward[3303203][10]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][10]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][10]["RewardItem"][1]["Id"] = 723342
	tLotteryPackage_NewReward[3303203][10]["RewardItem"][1]["Attr"] = "0 1"
	-- 聚神丹	1.3%                   
	tLotteryPackage_NewReward[3303203][11] = {}
	tLotteryPackage_NewReward[3303203][11]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][11]["ItemChance"] = 130
	tLotteryPackage_NewReward[3303203][11]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][11]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][11]["RewardItem"][1]["Id"] = 723700
	tLotteryPackage_NewReward[3303203][11]["RewardItem"][1]["Attr"] = "0 1"
	-- 免试金牌	0.01%                  
	tLotteryPackage_NewReward[3303203][12] = {}
	tLotteryPackage_NewReward[3303203][12]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][12]["ItemChance"] = 1
	tLotteryPackage_NewReward[3303203][12]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][12]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][12]["RewardItem"][1]["Id"] = 723701
	tLotteryPackage_NewReward[3303203][12]["RewardItem"][1]["Attr"] = "0 1"
	-- 大乾坤袋	0.04%                  
	tLotteryPackage_NewReward[3303203][13] = {}
	tLotteryPackage_NewReward[3303203][13]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][13]["ItemChance"] = 4
	tLotteryPackage_NewReward[3303203][13]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][13]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][13]["RewardItem"][1]["Id"] = 1100009
	tLotteryPackage_NewReward[3303203][13]["RewardItem"][1]["Attr"] = "0 1"
	-- 999朵百合花	0.09%              
	tLotteryPackage_NewReward[3303203][14] = {}
	tLotteryPackage_NewReward[3303203][14]["RandomItemChanceType"] = 2
	tLotteryPackage_NewReward[3303203][14]["ItemChance"] = 9
	tLotteryPackage_NewReward[3303203][14]["RewardItem"] = {}
	tLotteryPackage_NewReward[3303203][14]["RewardItem"][1] = {}
	tLotteryPackage_NewReward[3303203][14]["RewardItem"][1]["Id"] = 752999
	tLotteryPackage_NewReward[3303203][14]["RewardItem"][1]["Attr"] = "0 1"
	
local tLotteryPackage_StriveReward = {}
	--百宝箱
	tLotteryPackage_StriveReward[3303203] = tLotteryPackage_NewReward[3303203]
	-- 精品1洞装备随机包1
	tLotteryPackage_StriveReward[3303255] = {}
	tLotteryPackage_StriveReward[3303255]["LogId"] = 18000154
	tLotteryPackage_StriveReward[3303255]["DeleteItem"] = {}
	tLotteryPackage_StriveReward[3303255]["DeleteItem"][1] = {}
	tLotteryPackage_StriveReward[3303255]["DeleteItem"][1]["Id"] = 3303255
	tLotteryPackage_StriveReward[3303255]["ItemChanceSum"] = 10000

	-- 100 	'一洞精品地煞甲'	4.32%
	tLotteryPackage_StriveReward[3303255][1] = {}
	tLotteryPackage_StriveReward[3303255][1]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][1]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][1]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][1]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][1]["RewardItem"][1]["Id"] = 130058
	tLotteryPackage_StriveReward[3303255][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品黄金箍'	4.32%
	tLotteryPackage_StriveReward[3303255][2] = {}
	tLotteryPackage_StriveReward[3303255][2]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][2]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][2]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][2]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][2]["RewardItem"][1]["Id"] = 118058
	tLotteryPackage_StriveReward[3303255][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品虎头环锁铠'	4.32%
	tLotteryPackage_StriveReward[3303255][3] = {}
	tLotteryPackage_StriveReward[3303255][3]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][3]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][3]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][3]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][3]["RewardItem"][1]["Id"] = 131058
	tLotteryPackage_StriveReward[3303255][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品凤珠点金盔'	4.32%
	tLotteryPackage_StriveReward[3303255][4] = {}
	tLotteryPackage_StriveReward[3303255][4]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][4]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][4]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][4]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][4]["RewardItem"][1]["Id"] = 111058
	tLotteryPackage_StriveReward[3303255][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品野猿猎褂'	4.32%
	tLotteryPackage_StriveReward[3303255][5] = {}
	tLotteryPackage_StriveReward[3303255][5]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][5]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][5]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][5]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][5]["RewardItem"][1]["Id"] = 133048
	tLotteryPackage_StriveReward[3303255][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品雪豹帽'	4.32%
	tLotteryPackage_StriveReward[3303255][6] = {}
	tLotteryPackage_StriveReward[3303255][6]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][6]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][6]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][6]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][6]["RewardItem"][1]["Id"] = 113038
	tLotteryPackage_StriveReward[3303255][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品天师法衣'	4.32%
	tLotteryPackage_StriveReward[3303255][7] = {}
	tLotteryPackage_StriveReward[3303255][7]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][7]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][7]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][7]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][7]["RewardItem"][1]["Id"] = 134058
	tLotteryPackage_StriveReward[3303255][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品青蛟冠'	4.32%
	tLotteryPackage_StriveReward[3303255][8] = {}
	tLotteryPackage_StriveReward[3303255][8]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][8]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][8]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][8]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][8]["RewardItem"][1]["Id"] = 114068
	tLotteryPackage_StriveReward[3303255][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品龙涎香囊'	4.32%
	tLotteryPackage_StriveReward[3303255][9] = {}
	tLotteryPackage_StriveReward[3303255][9]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][9]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][9]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][9]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][9]["RewardItem"][1]["Id"] = 121128
	tLotteryPackage_StriveReward[3303255][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品白金项链'	0.5%
	tLotteryPackage_StriveReward[3303255][10] = {}
	tLotteryPackage_StriveReward[3303255][10]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][10]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][10]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][10]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][10]["RewardItem"][1]["Id"] = 120128
	tLotteryPackage_StriveReward[3303255][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品龙骨镯'	0.5%
	tLotteryPackage_StriveReward[3303255][11] = {}
	tLotteryPackage_StriveReward[3303255][11]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][11]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][11]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][11]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][11]["RewardItem"][1]["Id"] = 152128
	tLotteryPackage_StriveReward[3303255][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品海洋之心'	0.5%
	tLotteryPackage_StriveReward[3303255][12] = {}
	tLotteryPackage_StriveReward[3303255][12]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][12]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][12]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][12]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][12]["RewardItem"][1]["Id"] = 117068
	tLotteryPackage_StriveReward[3303255][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品碧玉戒指'	0.5%
	tLotteryPackage_StriveReward[3303255][13] = {}
	tLotteryPackage_StriveReward[3303255][13]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][13]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][13]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][13]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][13]["RewardItem"][1]["Id"] = 150118
	tLotteryPackage_StriveReward[3303255][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 90 	'一洞精品墨玉扳指'	0.5%
	tLotteryPackage_StriveReward[3303255][14] = {}
	tLotteryPackage_StriveReward[3303255][14]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][14]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][14]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][14]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][14]["RewardItem"][1]["Id"] = 151118
	tLotteryPackage_StriveReward[3303255][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 70 	'一洞精品云锦靴'	0.5%
	tLotteryPackage_StriveReward[3303255][15] = {}
	tLotteryPackage_StriveReward[3303255][15]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][15]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][15]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][15]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][15]["RewardItem"][1]["Id"] = 160098
	tLotteryPackage_StriveReward[3303255][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品炎雀头带'	0.5%
	tLotteryPackage_StriveReward[3303255][16] = {}
	tLotteryPackage_StriveReward[3303255][16]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][16]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][16]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][16]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][16]["RewardItem"][1]["Id"] = 141058
	tLotteryPackage_StriveReward[3303255][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'一洞精品贯月紫萱'	0.5%
	tLotteryPackage_StriveReward[3303255][17] = {}
	tLotteryPackage_StriveReward[3303255][17]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][17]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][17]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][17]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][17]["RewardItem"][1]["Id"] = 142058
	tLotteryPackage_StriveReward[3303255][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 50 	'一洞极品凌霄扇'	0.5%
	tLotteryPackage_StriveReward[3303255][18] = {}
	tLotteryPackage_StriveReward[3303255][18]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][18]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][18]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][18]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][18]["RewardItem"][1]["Id"] = 201009
	tLotteryPackage_StriveReward[3303255][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 50 	'一洞极品混元塔'	0.5%
	tLotteryPackage_StriveReward[3303255][19] = {}
	tLotteryPackage_StriveReward[3303255][19]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][19]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303255][19]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][19]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][19]["RewardItem"][1]["Id"] = 202009
	tLotteryPackage_StriveReward[3303255][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞火翼之触'	4.32%
	tLotteryPackage_StriveReward[3303255][20] = {}
	tLotteryPackage_StriveReward[3303255][20]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][20]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][20]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][20]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][20]["RewardItem"][1]["Id"] = 112058
	tLotteryPackage_StriveReward[3303255][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞夜魔护额'	4.32%
	tLotteryPackage_StriveReward[3303255][21] = {}
	tLotteryPackage_StriveReward[3303255][21]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][21]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][21]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][21]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][21]["RewardItem"][1]["Id"] = 123058
	tLotteryPackage_StriveReward[3303255][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞铜武魂'	4.32%
	tLotteryPackage_StriveReward[3303255][22] = {}
	tLotteryPackage_StriveReward[3303255][22]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][22]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][22]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][22]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][22]["RewardItem"][1]["Id"] = 135058
	tLotteryPackage_StriveReward[3303255][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞荣枯柔甲'	4.32%
	tLotteryPackage_StriveReward[3303255][23] = {}
	tLotteryPackage_StriveReward[3303255][23]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][23]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][23]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][23]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][23]["RewardItem"][1]["Id"] = 136058
	tLotteryPackage_StriveReward[3303255][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞净莲法箍'	4.00%
	tLotteryPackage_StriveReward[3303255][24] = {}
	tLotteryPackage_StriveReward[3303255][24]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][24]["ItemChance"] = 400
	tLotteryPackage_StriveReward[3303255][24]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][24]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][24]["RewardItem"][1]["Id"] = 143058
	tLotteryPackage_StriveReward[3303255][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞定海帽'	4.28%
	tLotteryPackage_StriveReward[3303255][25] = {}
	tLotteryPackage_StriveReward[3303255][25]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][25]["ItemChance"] = 428
	tLotteryPackage_StriveReward[3303255][25]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][25]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][25]["RewardItem"][1]["Id"] = 144058
	tLotteryPackage_StriveReward[3303255][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞猎寇裳'	4.32%
	tLotteryPackage_StriveReward[3303255][26] = {}
	tLotteryPackage_StriveReward[3303255][26]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][26]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][26]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][26]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][26]["RewardItem"][1]["Id"] = 139058
	tLotteryPackage_StriveReward[3303255][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 100 	'精品一洞断流头巾'	4.32%
	tLotteryPackage_StriveReward[3303255][27] = {}
	tLotteryPackage_StriveReward[3303255][27]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][27]["ItemChance"] = 432
	tLotteryPackage_StriveReward[3303255][27]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][27]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][27]["RewardItem"][1]["Id"] = 145058
	tLotteryPackage_StriveReward[3303255][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞连身战衣'	5.98%
	tLotteryPackage_StriveReward[3303255][28] = {}
	tLotteryPackage_StriveReward[3303255][28]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][28]["ItemChance"] = 598
	tLotteryPackage_StriveReward[3303255][28]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][28]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][28]["RewardItem"][1]["Id"] = 138058
	tLotteryPackage_StriveReward[3303255][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞悲悯头巾'	5.98%
	tLotteryPackage_StriveReward[3303255][29] = {}
	tLotteryPackage_StriveReward[3303255][29]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][29]["ItemChance"] = 598
	tLotteryPackage_StriveReward[3303255][29]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][29]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][29]["RewardItem"][1]["Id"] = 148058
	tLotteryPackage_StriveReward[3303255][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞玄素袍'	4.98%
	tLotteryPackage_StriveReward[3303255][30] = {}
	tLotteryPackage_StriveReward[3303255][30]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][30]["ItemChance"] = 498
	tLotteryPackage_StriveReward[3303255][30]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][30]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][30]["RewardItem"][1]["Id"] = 101058
	tLotteryPackage_StriveReward[3303255][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	-- 150 	'精品一洞墨云冠'	4.98%
	tLotteryPackage_StriveReward[3303255][31] = {}
	tLotteryPackage_StriveReward[3303255][31]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303255][31]["ItemChance"] = 498
	tLotteryPackage_StriveReward[3303255][31]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303255][31]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303255][31]["RewardItem"][1]["Id"] = 170058
	tLotteryPackage_StriveReward[3303255][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	
	-- 两洞精品装备随机包
	tLotteryPackage_StriveReward[3303257] = {}
	tLotteryPackage_StriveReward[3303257]["LogId"] = 18000154
	tLotteryPackage_StriveReward[3303257]["DeleteItem"] = {}
	tLotteryPackage_StriveReward[3303257]["DeleteItem"][1] = {}
	tLotteryPackage_StriveReward[3303257]["DeleteItem"][1]["Id"] = 3303257
	tLotteryPackage_StriveReward[3303257]["ItemChanceSum"] = 10000

	-- 100 	'两洞精品天罡甲'	4.40%
	tLotteryPackage_StriveReward[3303257][1] = {}
	tLotteryPackage_StriveReward[3303257][1]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][1]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][1]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][1]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][1]["RewardItem"][1]["Id"] = 130048
	tLotteryPackage_StriveReward[3303257][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品红玉头箍'	4.40%
	tLotteryPackage_StriveReward[3303257][2] = {}
	tLotteryPackage_StriveReward[3303257][2]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][2]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][2]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][2]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][2]["RewardItem"][1]["Id"] = 118048
	tLotteryPackage_StriveReward[3303257][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品明光铠'	4.40%
	tLotteryPackage_StriveReward[3303257][3] = {}
	tLotteryPackage_StriveReward[3303257][3]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][3]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][3]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][3]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][3]["RewardItem"][1]["Id"] = 131048
	tLotteryPackage_StriveReward[3303257][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品乌金盔'	4.40%
	tLotteryPackage_StriveReward[3303257][4] = {}
	tLotteryPackage_StriveReward[3303257][4]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][4]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][4]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][4]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][4]["RewardItem"][1]["Id"] = 111048
	tLotteryPackage_StriveReward[3303257][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品狼皮猎褂'	4.40%
	tLotteryPackage_StriveReward[3303257][5] = {}
	tLotteryPackage_StriveReward[3303257][5]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][5]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][5]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][5]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][5]["RewardItem"][1]["Id"] = 133028
	tLotteryPackage_StriveReward[3303257][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品豺狼帽'	4.40%
	tLotteryPackage_StriveReward[3303257][6] = {}
	tLotteryPackage_StriveReward[3303257][6]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][6]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][6]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][6]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][6]["RewardItem"][1]["Id"] = 113028
	tLotteryPackage_StriveReward[3303257][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品三精法衣'	4.40%
	tLotteryPackage_StriveReward[3303257][7] = {}
	tLotteryPackage_StriveReward[3303257][7]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][7]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][7]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][7]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][7]["RewardItem"][1]["Id"] = 134048
	tLotteryPackage_StriveReward[3303257][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品红云冠'	4.40%
	tLotteryPackage_StriveReward[3303257][8] = {}
	tLotteryPackage_StriveReward[3303257][8]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][8]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][8]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][8]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][8]["RewardItem"][1]["Id"] = 114048
	tLotteryPackage_StriveReward[3303257][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品红豆香囊'	0.5%
	tLotteryPackage_StriveReward[3303257][9] = {}
	tLotteryPackage_StriveReward[3303257][9]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][9]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][9]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][9]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][9]["RewardItem"][1]["Id"] = 121098
	tLotteryPackage_StriveReward[3303257][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品金坠项链'	0.5%
	tLotteryPackage_StriveReward[3303257][10] = {}
	tLotteryPackage_StriveReward[3303257][10]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][10]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][10]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][10]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][10]["RewardItem"][1]["Id"] = 120098
	tLotteryPackage_StriveReward[3303257][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品金珠镯'	0.5%
	tLotteryPackage_StriveReward[3303257][11] = {}
	tLotteryPackage_StriveReward[3303257][11]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][11]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][11]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][11]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][11]["RewardItem"][1]["Id"] = 152088
	tLotteryPackage_StriveReward[3303257][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品流苏耳环'	0.5%
	tLotteryPackage_StriveReward[3303257][12] = {}
	tLotteryPackage_StriveReward[3303257][12]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][12]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][12]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][12]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][12]["RewardItem"][1]["Id"] = 117048
	tLotteryPackage_StriveReward[3303257][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品白玉戒指'	0.5%
	tLotteryPackage_StriveReward[3303257][13] = {}
	tLotteryPackage_StriveReward[3303257][13]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][13]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][13]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][13]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][13]["RewardItem"][1]["Id"] = 150098
	tLotteryPackage_StriveReward[3303257][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品虎骨扳指'	0.5%
	tLotteryPackage_StriveReward[3303257][14] = {}
	tLotteryPackage_StriveReward[3303257][14]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][14]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][14]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][14]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][14]["RewardItem"][1]["Id"] = 151098
	tLotteryPackage_StriveReward[3303257][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品鳄皮靴'	0.5%
	tLotteryPackage_StriveReward[3303257][15] = {}
	tLotteryPackage_StriveReward[3303257][15]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][15]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][15]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][15]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][15]["RewardItem"][1]["Id"] = 160118
	tLotteryPackage_StriveReward[3303257][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品瑞云头带'	4.40%
	tLotteryPackage_StriveReward[3303257][16] = {}
	tLotteryPackage_StriveReward[3303257][16]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][16]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][16]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][16]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][16]["RewardItem"][1]["Id"] = 141048
	tLotteryPackage_StriveReward[3303257][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品雪山狐绒'	4.40%
	tLotteryPackage_StriveReward[3303257][17] = {}
	tLotteryPackage_StriveReward[3303257][17]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][17]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][17]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][17]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][17]["RewardItem"][1]["Id"] = 142048
	tLotteryPackage_StriveReward[3303257][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品凌霄扇'	0.5%
	tLotteryPackage_StriveReward[3303257][18] = {}
	tLotteryPackage_StriveReward[3303257][18]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][18]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][18]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][18]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][18]["RewardItem"][1]["Id"] = 201008
	tLotteryPackage_StriveReward[3303257][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 70 	'两洞精品混元塔'	0.5%
	tLotteryPackage_StriveReward[3303257][19] = {}
	tLotteryPackage_StriveReward[3303257][19]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][19]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][19]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][19]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][19]["RewardItem"][1]["Id"] = 202008
	tLotteryPackage_StriveReward[3303257][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品上忍服'	4.40%
	tLotteryPackage_StriveReward[3303257][20] = {}
	tLotteryPackage_StriveReward[3303257][20]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][20]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][20]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][20]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][20]["RewardItem"][1]["Id"] = 135028
	tLotteryPackage_StriveReward[3303257][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品白羽之首'	4.40%
	tLotteryPackage_StriveReward[3303257][21] = {}
	tLotteryPackage_StriveReward[3303257][21]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][21]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][21]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][21]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][21]["RewardItem"][1]["Id"] = 112028
	tLotteryPackage_StriveReward[3303257][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品红棉护额'	4.40%
	tLotteryPackage_StriveReward[3303257][22] = {}
	tLotteryPackage_StriveReward[3303257][22]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][22]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][22]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][22]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][22]["RewardItem"][1]["Id"] = 123028
	tLotteryPackage_StriveReward[3303257][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品浮生法箍'	4.40%
	tLotteryPackage_StriveReward[3303257][23] = {}
	tLotteryPackage_StriveReward[3303257][23]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][23]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][23]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][23]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][23]["RewardItem"][1]["Id"] = 143028
	tLotteryPackage_StriveReward[3303257][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品金丝战袍'	4.40%
	tLotteryPackage_StriveReward[3303257][24] = {}
	tLotteryPackage_StriveReward[3303257][24]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][24]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][24]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][24]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][24]["RewardItem"][1]["Id"] = 136028
	tLotteryPackage_StriveReward[3303257][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品覆波裳'	4.40%
	tLotteryPackage_StriveReward[3303257][25] = {}
	tLotteryPackage_StriveReward[3303257][25]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][25]["ItemChance"] = 440
	tLotteryPackage_StriveReward[3303257][25]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][25]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][25]["RewardItem"][1]["Id"] = 139028
	tLotteryPackage_StriveReward[3303257][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品卫海帽'	4.24%
	tLotteryPackage_StriveReward[3303257][26] = {}
	tLotteryPackage_StriveReward[3303257][26]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][26]["ItemChance"] = 424
	tLotteryPackage_StriveReward[3303257][26]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][26]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][26]["RewardItem"][1]["Id"] = 144028
	tLotteryPackage_StriveReward[3303257][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 100 	'两洞精品海客头巾'	4.00%
	tLotteryPackage_StriveReward[3303257][27] = {}
	tLotteryPackage_StriveReward[3303257][27]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][27]["ItemChance"] = 400
	tLotteryPackage_StriveReward[3303257][27]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][27]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][27]["RewardItem"][1]["Id"] = 145028
	tLotteryPackage_StriveReward[3303257][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品连身战衣'	4.08%
	tLotteryPackage_StriveReward[3303257][28] = {}
	tLotteryPackage_StriveReward[3303257][28]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][28]["ItemChance"] = 408
	tLotteryPackage_StriveReward[3303257][28]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][28]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][28]["RewardItem"][1]["Id"] = 138028
	tLotteryPackage_StriveReward[3303257][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品功夫头巾'	4.08%
	tLotteryPackage_StriveReward[3303257][29] = {}
	tLotteryPackage_StriveReward[3303257][29]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][29]["ItemChance"] = 408
	tLotteryPackage_StriveReward[3303257][29]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][29]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][29]["RewardItem"][1]["Id"] = 148028
	tLotteryPackage_StriveReward[3303257][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 30 	'两洞精品风雷翅'	0.5%
	tLotteryPackage_StriveReward[3303257][30] = {}
	tLotteryPackage_StriveReward[3303257][30]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][30]["ItemChance"] = 50
	tLotteryPackage_StriveReward[3303257][30]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][30]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][30]["RewardItem"][1]["Id"] = 204008
	tLotteryPackage_StriveReward[3303257][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品玄素袍'	4.10%
	tLotteryPackage_StriveReward[3303257][31] = {}
	tLotteryPackage_StriveReward[3303257][31]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][31]["ItemChance"] = 410
	tLotteryPackage_StriveReward[3303257][31]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][31]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][31]["RewardItem"][1]["Id"] = 101028
	tLotteryPackage_StriveReward[3303257][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	-- 120 	'两洞精品墨云冠'	4.10%
	tLotteryPackage_StriveReward[3303257][32] = {}
	tLotteryPackage_StriveReward[3303257][32]["RandomItemChanceType"] = 2
	tLotteryPackage_StriveReward[3303257][32]["ItemChance"] = 410
	tLotteryPackage_StriveReward[3303257][32]["RewardItem"] = {}
	tLotteryPackage_StriveReward[3303257][32]["RewardItem"][1] = {}
	tLotteryPackage_StriveReward[3303257][32]["RewardItem"][1]["Id"] = 170028
	tLotteryPackage_StriveReward[3303257][32]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	
local tLotteryPackage_Data = {}
	tLotteryPackage_Data["Global"] = 51131
	tLotteryPackage_Data["GlobalStrive"] = 52599
	tLotteryPackage_Data["Item"] = 3303203
--------------------------------------------------------------测试模块-------------------------------------------------------------
-- tProbabil_Test["LotteryPackage"] = {}
-- tProbabil_Test["LotteryPackage"]["Table"] = tLotteryPackage_Reward
-- tProbabil_Test["LotteryPackage"]["Index"] = {3303158,3303159,3303160,3303161,3303162,3303163,3303164,3303165,3303166,3303167,3303168,3303169,3303170,3303171,3303203}
-- tProbabil_Test["LotteryPackage"]["Times"] = 10000
-- tProbabil_Test["LotteryPackage"]["LogName"] = "测试log"

-- 测试命令
-- /callluafunc </F>Probabil_Main</S>LotteryPackage
	
--------------------------------------------------------------逻辑配置-------------------------------------------------------------
function LotteryPackage_UseRandomItem(nItemId)
	local nUserId = Get_UserId()
	
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tLotteryPackage_Reward,nItemId,nUserId) then
		User_TalkChannel2005(tHalloween2015_Witch_Text["SpaceFull"])
		return
	end
	
	-- 删除物品
	if not RewardTemplate_DelItem(tLotteryPackage_Reward[nItemId],nUserId) then
		return false
	end
	
	--新服判断
	if tLotteryPackage_NewReward[nItemId] ~= nil then
		local nNewServer = Get_SysDynaGlobalData0(tLotteryPackage_Data["Global"])
		if nNewServer == 1 then
			RewardTemplate_NewRandom(tLotteryPackage_NewReward,nItemId,nUserId)
			return
		end
	end
	
	--奋斗服判断
	if tLotteryPackage_StriveReward[nItemId] ~= nil then
		local nNewServer = Get_SysDynaGlobalData0(tLotteryPackage_Data["GlobalStrive"])
		if nNewServer == 1 then
			RewardTemplate_NewRandom(tLotteryPackage_StriveReward,nItemId,nUserId)
			return
		end
	end
	
	RewardTemplate_NewRandom(tLotteryPackage_Reward,nItemId,nUserId)
end
	
--------------------------------------------------------------物品配置-------------------------------------------------------------
-- -- 赤炼石+2礼包（2颗+2）
-- tItem[3303154] = tItem[3303154] or {}
-- tItem[3303154]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+3礼包（2颗+3）
-- tItem[3303155] = tItem[3303155] or {}
-- tItem[3303155]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+4礼包（2颗+4）
-- tItem[3303156] = tItem[3303156] or {}
-- tItem[3303156]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+5礼包（2颗+5）
-- tItem[3303157] = tItem[3303157] or {}
-- tItem[3303157]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 随机+2马礼包
-- tItem[3303158] = tItem[3303158] or {}
-- tItem[3303158]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 随机+3马礼包
-- tItem[3303159] = tItem[3303159] or {}
-- tItem[3303159]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 随机+4马礼包
-- tItem[3303160] = tItem[3303160] or {}
-- tItem[3303160]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 随机+5马礼包
-- tItem[3303161] = tItem[3303161] or {}
-- tItem[3303161]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 良品宝石随机礼包
-- tItem[3303162] = tItem[3303162] or {}
-- tItem[3303162]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 极品宝石随机礼包
-- tItem[3303163] = tItem[3303163] or {}
-- tItem[3303163]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- 良品宝石随机礼包3
tItem[3303164] = tItem[3303164] or {}
tItem[3303164]["Function"] = function(nItemId,sItemName)
	LotteryPackage_UseRandomItem(nItemId)
end

-- -- 马+6随机包
-- tItem[3303165] = tItem[3303165] or {}
-- tItem[3303165]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 极品装备随机包1
-- tItem[3303166] = tItem[3303166] or {}
-- tItem[3303166]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 极品2洞装备随机包1
-- tItem[3303167] = tItem[3303167] or {}
-- tItem[3303167]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 极品1洞装备随机包
-- tItem[3303168] = tItem[3303168] or {}
-- tItem[3303168]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 精品1洞装备随机包
-- tItem[3303169] = tItem[3303169] or {}
-- tItem[3303169]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 精品+8装备随机包
tItem[3303170] = tItem[3303170] or {}
tItem[3303170]["Function"] = function(nItemId,sItemName)
	LotteryPackage_UseRandomItem(nItemId)
end

-- -- 两洞精品装备随机包
-- tItem[3303171] = tItem[3303171] or {}
-- tItem[3303171]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 桃源灵玉
-- tItem[3303172] = tItem[3303172] or {}
-- tItem[3303172]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+1
-- tItem[3303173] = tItem[3303173] or {}
-- tItem[3303173]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+2
-- tItem[3303174] = tItem[3303174] or {}
-- tItem[3303174]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+3
-- tItem[3303175] = tItem[3303175] or {}
-- tItem[3303175]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石＋4
-- tItem[3303176] = tItem[3303176] or {}
-- tItem[3303176]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 龙珠
-- tItem[3303177] = tItem[3303177] or {}
-- tItem[3303177]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- 固化石
tItem[3303178] = tItem[3303178] or {}
tItem[3303178]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
end

-- 赤炼石＋5
tItem[3303179] = tItem[3303179] or {}
tItem[3303179]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
end

-- -- 优质玄元宝石
-- tItem[3303180] = tItem[3303180] or {}
-- tItem[3303180]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 赤炼石+6
-- tItem[3303181] = tItem[3303181] or {}
-- tItem[3303181]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 金钢坚钻
-- tItem[3303182] = tItem[3303182] or {}
-- tItem[3303182]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- +7赤炼石
tItem[3303183] = tItem[3303183] or {}
tItem[3303183]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
end

-- 超大固化石
tItem[3303184] = tItem[3303184] or {}
tItem[3303184]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
end

-- 百宝箱
tItem[3303203] = tItem[3303203] or {}
tItem[3303203]["Function"] = function(nItemId,sItemName)
	LotteryPackage_UseRandomItem(nItemId)
end

-- -- [装备类]净水玉瓶礼包
-- tItem[3303204] = tItem[3303204] or {}
-- tItem[3303204]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- [装备类]1洞随机装备包
-- tItem[3303212] = tItem[3303212] or {}
-- tItem[3303212]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- [装备类]灵宝葫芦礼包
-- tItem[3303213] = tItem[3303213] or {}
-- tItem[3303213]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- [装备类]1洞随机装备包
-- tItem[3303214] = tItem[3303214] or {}
-- tItem[3303214]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- [装备类]2洞随机装备包
-- tItem[3303215] = tItem[3303215] or {}
-- tItem[3303215]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tLotteryPackage_Reward[nItemId])
-- end

-- -- 【装备类】随机装备包
-- tItem[3303252] = tItem[3303252] or {}
-- tItem[3303252]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- -- 【装备类】2洞随机装备包
-- tItem[3303253] = tItem[3303253] or {}
-- tItem[3303253]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end

-- 【装备类】1洞随机装备包
tItem[3303254] = tItem[3303254] or {}
tItem[3303254]["Function"] = function(nItemId,sItemName)
	LotteryPackage_UseRandomItem(nItemId)
end

-- 【装备类】1洞随机装备包
tItem[3303255] = tItem[3303255] or {}
tItem[3303255]["Function"] = function(nItemId,sItemName)
	LotteryPackage_UseRandomItem(nItemId)
end

-- 【装备类】+8随机装备礼包
tItem[3303256] = tItem[3303256] or {}
tItem[3303256]["Function"] = function(nItemId,sItemName)
	LotteryPackage_UseRandomItem(nItemId)
end

-- 【装备类】2洞随机装备包
-- tItem[3303257] = tItem[3303257] or {}
-- tItem[3303257]["Function"] = function(nItemId,sItemName)
	-- LotteryPackage_UseRandomItem(nItemId)
-- end