------------------------------------------------------------------------------------
--Name:		[简体征服][任务脚本]跨服骑马大赛-夺宝奇兵
--Purpose:	跨服骑马大赛-夺宝奇兵
--Creator: 	陈彦宏
--Created:	2016/11/04
------------------------------------------------------------------------------------

-- 命名前缀
-- ArkRaider_
-- log
-- 12000553

---------------------------------------奖励配置---------------------------------------
-- 赛马礼包
local tArkRaider_Item = {}
	tArkRaider_Item["ItemId"] = 3600035
	tArkRaider_Item["ItemNum"] = "0 1"
	
	-- 礼包打开控制
	tArkRaider_Item["Data"] = 155
	tArkRaider_Item["Type"] = 26
	tArkRaider_Item["Limit"] = 15
	tArkRaider_Item["Time"] = tActivityTime["MMO"]["ActivityTime"]
-- 宝箱
local tArkRaider_TheChest = {}
	tArkRaider_TheChest["ChestReward"] = {}
	
		-- 宝箱随机奖励
		tArkRaider_TheChest["ChestReward"][1] = {}
		tArkRaider_TheChest["ChestReward"][1]["ItemChanceSum"] = 10000

		-- 流星	1088001	12%
		tArkRaider_TheChest["ChestReward"][1][1] = {}
		tArkRaider_TheChest["ChestReward"][1][1]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][1]["ItemChance"] = 1200
		-- tArkRaider_TheChest["ChestReward"][1][1]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][1]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][1]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][1]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][1]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][1]["RewardItem"][1]["Id"] = 1088001
		tArkRaider_TheChest["ChestReward"][1][1]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][1]["LogId"] = 12000553

		-- 玄灵秘录	723341	6%
		tArkRaider_TheChest["ChestReward"][1][2] = {}
		tArkRaider_TheChest["ChestReward"][1][2]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][2]["ItemChance"] = 600
		-- tArkRaider_TheChest["ChestReward"][1][2]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][2]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][2]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][2]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][2]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][2]["RewardItem"][1]["Id"] = 723341
		tArkRaider_TheChest["ChestReward"][1][2]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][2]["LogId"] = 12000553

		-- 昆仑雪水	723017	6%
		tArkRaider_TheChest["ChestReward"][1][3] = {}
		tArkRaider_TheChest["ChestReward"][1][3]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][3]["ItemChance"] = 600
		-- tArkRaider_TheChest["ChestReward"][1][3]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][3]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][3]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][3]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][3]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][3]["RewardItem"][1]["Id"] = 723017
		tArkRaider_TheChest["ChestReward"][1][3]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][3]["LogId"] = 12000553
		
		-- 聚神丹	723700	6%
		tArkRaider_TheChest["ChestReward"][1][4] = {}
		tArkRaider_TheChest["ChestReward"][1][4]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][4]["ItemChance"] = 600
		-- tArkRaider_TheChest["ChestReward"][1][4]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][4]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][4]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][4]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][4]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][4]["RewardItem"][1]["Id"] = 723700
		tArkRaider_TheChest["ChestReward"][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][4]["LogId"] = 12000553
		
		-- 小块祈愿石	1200000	5%
		tArkRaider_TheChest["ChestReward"][1][5] = {}
		tArkRaider_TheChest["ChestReward"][1][5]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][5]["ItemChance"] = 500
		-- tArkRaider_TheChest["ChestReward"][1][5]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][5]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][5]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][5]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][5]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][5]["RewardItem"][1]["Id"] = 1200000
		tArkRaider_TheChest["ChestReward"][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][5]["LogId"] = 12000553
		
		-- 通神丹	3003125	5%
		tArkRaider_TheChest["ChestReward"][1][6] = {}
		tArkRaider_TheChest["ChestReward"][1][6]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][6]["ItemChance"] = 500
		-- tArkRaider_TheChest["ChestReward"][1][6]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][6]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][6]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][6]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][6]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][6]["RewardItem"][1]["Id"] = 3003125
		tArkRaider_TheChest["ChestReward"][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][6]["LogId"] = 12000553
		
		-- 微光星陨石	3009000	5%
		tArkRaider_TheChest["ChestReward"][1][7] = {}
		tArkRaider_TheChest["ChestReward"][1][7]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][7]["ItemChance"] = 500
		-- tArkRaider_TheChest["ChestReward"][1][7]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][7]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][7]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][7]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][7]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][7]["RewardItem"][1]["Id"] = 3009000
		tArkRaider_TheChest["ChestReward"][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
		tArkRaider_TheChest["ChestReward"][1][7]["LogId"] = 12000553
		
		-- 良品随机宝石	3003876	5%
		tArkRaider_TheChest["ChestReward"][1][8] = {}
		tArkRaider_TheChest["ChestReward"][1][8]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][8]["ItemChance"] = 500
		-- tArkRaider_TheChest["ChestReward"][1][8]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][8]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][8]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][8]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][8]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][8]["RewardItem"][1]["Id"] = 3003876
		tArkRaider_TheChest["ChestReward"][1][8]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][8]["LogId"] = 12000553
		
		-- 清心符	720128	5%
		tArkRaider_TheChest["ChestReward"][1][9] = {}
		tArkRaider_TheChest["ChestReward"][1][9]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][9]["ItemChance"] = 500
		-- tArkRaider_TheChest["ChestReward"][1][9]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][9]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][9]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][9]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][9]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][9]["RewardItem"][1]["Id"] = 720128
		tArkRaider_TheChest["ChestReward"][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][9]["LogId"] = 12000553
		
		-- 记忆宝珠	720828	3%
		tArkRaider_TheChest["ChestReward"][1][10] = {}
		tArkRaider_TheChest["ChestReward"][1][10]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][10]["ItemChance"] = 300
		-- tArkRaider_TheChest["ChestReward"][1][10]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][10]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][10]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][10]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][10]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][10]["RewardItem"][1]["Id"] = 720828
		tArkRaider_TheChest["ChestReward"][1][10]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][10]["LogId"] = 12000553
		
		-- 免费强炼丹	3003124	3%
		tArkRaider_TheChest["ChestReward"][1][11] = {}
		tArkRaider_TheChest["ChestReward"][1][11]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][11]["ItemChance"] = 300
		-- tArkRaider_TheChest["ChestReward"][1][11]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][11]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][11]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][11]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][11]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][11]["RewardItem"][1]["Id"] = 3003124
		tArkRaider_TheChest["ChestReward"][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][11]["LogId"] = 12000553
		
		-- 一帆风顺财富包	723713	3%
		tArkRaider_TheChest["ChestReward"][1][12] = {}
		tArkRaider_TheChest["ChestReward"][1][12]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][12]["ItemChance"] = 300
		-- tArkRaider_TheChest["ChestReward"][1][12]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][12]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][12]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][12]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][12]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][12]["RewardItem"][1]["Id"] = 723713
		tArkRaider_TheChest["ChestReward"][1][12]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][12]["LogId"] = 12000553
		
		-- 微光星陨石*2	3009000	3%
		tArkRaider_TheChest["ChestReward"][1][13] = {}
		tArkRaider_TheChest["ChestReward"][1][13]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][13]["ItemChance"] = 300
		-- tArkRaider_TheChest["ChestReward"][1][13]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][13]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][13]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][13]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][13]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][13]["RewardItem"][1]["Id"] = 3009000
		tArkRaider_TheChest["ChestReward"][1][13]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
		tArkRaider_TheChest["ChestReward"][1][13]["LogId"] = 12000553
		
		-- 流星卷	720027	3%
		tArkRaider_TheChest["ChestReward"][1][14] = {}
		tArkRaider_TheChest["ChestReward"][1][14]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][14]["ItemChance"] = 300
		-- tArkRaider_TheChest["ChestReward"][1][14]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][14]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][14]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][14]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][14]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][14]["RewardItem"][1]["Id"] = 720027
		tArkRaider_TheChest["ChestReward"][1][14]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][14]["LogId"] = 12000553
		
		-- +1赤炼石(赠)	730001	3%
		tArkRaider_TheChest["ChestReward"][1][15] = {}
		tArkRaider_TheChest["ChestReward"][1][15]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][15]["ItemChance"] = 300
		-- tArkRaider_TheChest["ChestReward"][1][15]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][15]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][15]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][15]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][15]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][15]["RewardItem"][1]["Id"] = 730001
		tArkRaider_TheChest["ChestReward"][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][15]["LogId"] = 12000553
		
		-- +1枣红马礼包	723855	1%
		tArkRaider_TheChest["ChestReward"][1][16] = {}
		tArkRaider_TheChest["ChestReward"][1][16]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][16]["ItemChance"] = 100
		-- tArkRaider_TheChest["ChestReward"][1][16]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][16]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][16]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][16]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][16]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][16]["RewardItem"][1]["Id"] = 723855
		tArkRaider_TheChest["ChestReward"][1][16]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][16]["LogId"] = 12000553
		
		-- +1雪脂马礼包	723856	1%
		tArkRaider_TheChest["ChestReward"][1][17] = {}
		tArkRaider_TheChest["ChestReward"][1][17]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][17]["ItemChance"] = 100
		-- tArkRaider_TheChest["ChestReward"][1][17]["DeleteItem"] = {} 
		-- tArkRaider_TheChest["ChestReward"][1][17]["DeleteItem"][1] = {}
		-- tArkRaider_TheChest["ChestReward"][1][17]["DeleteItem"][1]["Id"] = tArkRaider_Item["ItemId"]
		tArkRaider_TheChest["ChestReward"][1][17]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][17]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][17]["RewardItem"][1]["Id"] = 723856
		tArkRaider_TheChest["ChestReward"][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][17]["LogId"] = 12000553
		
		-- +1黑颈马礼包	723859	1%
		tArkRaider_TheChest["ChestReward"][1][18] = {}
		tArkRaider_TheChest["ChestReward"][1][18]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][18]["ItemChance"] = 100
		tArkRaider_TheChest["ChestReward"][1][18]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][18]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][18]["RewardItem"][1]["Id"] = 723859
		tArkRaider_TheChest["ChestReward"][1][18]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][18]["LogId"] = 12000553
		
		-- 微光星陨石*3	3009000	2%
		tArkRaider_TheChest["ChestReward"][1][19] = {}
		tArkRaider_TheChest["ChestReward"][1][19]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][19]["ItemChance"] = 200
		tArkRaider_TheChest["ChestReward"][1][19]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][19]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][19]["RewardItem"][1]["Id"] = 3009000
		tArkRaider_TheChest["ChestReward"][1][19]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
		tArkRaider_TheChest["ChestReward"][1][19]["LogId"] = 12000553
		
		-- 40点气力值	3000061	2%
		tArkRaider_TheChest["ChestReward"][1][20] = {}
		tArkRaider_TheChest["ChestReward"][1][20]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][20]["ItemChance"] = 200
		tArkRaider_TheChest["ChestReward"][1][20]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][20]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][20]["RewardItem"][1]["Id"] = 3000061
		tArkRaider_TheChest["ChestReward"][1][20]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][20]["LogId"] = 12000553
		
		-- +2赤炼石(赠)	730002	2%
		tArkRaider_TheChest["ChestReward"][1][21] = {}
		tArkRaider_TheChest["ChestReward"][1][21]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][21]["ItemChance"] = 200
		tArkRaider_TheChest["ChestReward"][1][21]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][21]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][21]["RewardItem"][1]["Id"] = 730002
		tArkRaider_TheChest["ChestReward"][1][21]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][21]["LogId"] = 12000553
		
		-- 80气力值点	3001410	2%
		tArkRaider_TheChest["ChestReward"][1][22] = {}
		tArkRaider_TheChest["ChestReward"][1][22]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][22]["ItemChance"] = 200
		tArkRaider_TheChest["ChestReward"][1][22]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][22]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][22]["RewardItem"][1]["Id"] = 3001410
		tArkRaider_TheChest["ChestReward"][1][22]["RewardItem"][1]["Attr"] = "0 1 3"
		tArkRaider_TheChest["ChestReward"][1][22]["LogId"] = 12000553
		
		-- 龙珠	1088000	0.5%
		tArkRaider_TheChest["ChestReward"][1][23] = {}
		tArkRaider_TheChest["ChestReward"][1][23]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][23]["ItemChance"] = 50
		tArkRaider_TheChest["ChestReward"][1][23]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][23]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][23]["RewardItem"][1]["Id"] = 1088000
		tArkRaider_TheChest["ChestReward"][1][23]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][23]["LogId"] = 12000553
		
		-- 明亮星陨石	3009001	0.5%
		tArkRaider_TheChest["ChestReward"][1][24] = {}
		tArkRaider_TheChest["ChestReward"][1][24]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][24]["ItemChance"] = 50
		tArkRaider_TheChest["ChestReward"][1][24]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][24]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][24]["RewardItem"][1]["Id"] = 3009001
		tArkRaider_TheChest["ChestReward"][1][24]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
		tArkRaider_TheChest["ChestReward"][1][24]["LogId"] = 12000553
		
		-- 琳琅积分卷*1	3301255	8%
		tArkRaider_TheChest["ChestReward"][1][25] = {}
		tArkRaider_TheChest["ChestReward"][1][25]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][25]["ItemChance"] = 800
		tArkRaider_TheChest["ChestReward"][1][25]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][25]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][25]["RewardItem"][1]["Id"] = 3301255
		tArkRaider_TheChest["ChestReward"][1][25]["RewardItem"][1]["Attr"] = "0 1"
		tArkRaider_TheChest["ChestReward"][1][25]["LogId"] = 12000553
		
		-- 琳琅积分卷*5	3301255	5%
		tArkRaider_TheChest["ChestReward"][1][26] = {}
		tArkRaider_TheChest["ChestReward"][1][26]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][26]["ItemChance"] = 500
		tArkRaider_TheChest["ChestReward"][1][26]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][26]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][26]["RewardItem"][1]["Id"] = 3301255
		tArkRaider_TheChest["ChestReward"][1][26]["RewardItem"][1]["Attr"] = "0 5"
		tArkRaider_TheChest["ChestReward"][1][26]["LogId"] = 12000553
		
		-- 琳琅积分卷*10	3301255	2%
		tArkRaider_TheChest["ChestReward"][1][27] = {}
		tArkRaider_TheChest["ChestReward"][1][27]["RandomItemChanceType"] = 2
		tArkRaider_TheChest["ChestReward"][1][27]["ItemChance"] = 200
		tArkRaider_TheChest["ChestReward"][1][27]["RewardItem"] = {}
		tArkRaider_TheChest["ChestReward"][1][27]["RewardItem"][1] = {}
		tArkRaider_TheChest["ChestReward"][1][27]["RewardItem"][1]["Id"] = 3301255
		tArkRaider_TheChest["ChestReward"][1][27]["RewardItem"][1]["Attr"] = "0 10"
		tArkRaider_TheChest["ChestReward"][1][27]["LogId"] = 12000553
		
---------------------------------------log---------------------------------------
		
local tArkRaider_Log = {}
	tArkRaider_Log["OpenBox"] = "0,0,0,0,12000553,2,3600035,1"
		
---------------------------------------宝箱相关数据配置---------------------------------------


local tArkRaider_BoxAbout = {}
	tArkRaider_BoxAbout["BoxLook"] = 1417
	tArkRaider_BoxAbout["MapId"] = 10072
	tArkRaider_BoxAbout["OwnId"] = 0
	tArkRaider_BoxAbout["PosCX"] = 3
	tArkRaider_BoxAbout["PosCY"] = 3
	tArkRaider_BoxAbout["Space"] = 1
	tArkRaider_BoxAbout["Space1"] = 3
	
	-- 前9
	tArkRaider_BoxAbout[1531] = {}
	tArkRaider_BoxAbout[1531]["nTrapType"] = 1532
	tArkRaider_BoxAbout[1531]["PosX"] = 283
	tArkRaider_BoxAbout[1531]["PosY"] = 193
	tArkRaider_BoxAbout[1532] = {}
	tArkRaider_BoxAbout[1532]["nTrapType"] = 1531
	tArkRaider_BoxAbout[1532]["PosX"] = 119
	tArkRaider_BoxAbout[1532]["PosY"] = 196
	
	tArkRaider_BoxAbout[1533] = {}
	tArkRaider_BoxAbout[1533]["nTrapType"] = 1534
	tArkRaider_BoxAbout[1533]["PosX"] = 257
	tArkRaider_BoxAbout[1533]["PosY"] = 262
	tArkRaider_BoxAbout[1534] = {}
	tArkRaider_BoxAbout[1534]["nTrapType"] = 1533
	tArkRaider_BoxAbout[1534]["PosX"] = 105
	tArkRaider_BoxAbout[1534]["PosY"] = 161
	
	tArkRaider_BoxAbout[1535] = {}
	tArkRaider_BoxAbout[1535]["nTrapType"] = 1536
	tArkRaider_BoxAbout[1535]["PosX"] = 182
	tArkRaider_BoxAbout[1535]["PosY"] = 264
	tArkRaider_BoxAbout[1536] = {}
	tArkRaider_BoxAbout[1536]["nTrapType"] = 1535
	tArkRaider_BoxAbout[1536]["PosX"] = 118
	tArkRaider_BoxAbout[1536]["PosY"] = 136
	
	tArkRaider_BoxAbout[1537] = {}
	tArkRaider_BoxAbout[1537]["nTrapType"] = 1538
	tArkRaider_BoxAbout[1537]["PosX"] = 250
	tArkRaider_BoxAbout[1537]["PosY"] = 168
	tArkRaider_BoxAbout[1538] = {}
	tArkRaider_BoxAbout[1538]["nTrapType"] = 1537
	tArkRaider_BoxAbout[1538]["PosX"] = 159
	tArkRaider_BoxAbout[1538]["PosY"] = 157
	
	tArkRaider_BoxAbout[1539] = {}
	tArkRaider_BoxAbout[1539]["nTrapType"] = 1540
	tArkRaider_BoxAbout[1539]["PosX"] = 180
	tArkRaider_BoxAbout[1539]["PosY"] = 205
	tArkRaider_BoxAbout[1540] = {}
	tArkRaider_BoxAbout[1540]["nTrapType"] = 1539
	tArkRaider_BoxAbout[1540]["PosX"] = 153
	tArkRaider_BoxAbout[1540]["PosY"] = 114
	
	tArkRaider_BoxAbout[1541] = {}
	tArkRaider_BoxAbout[1541]["nTrapType"] = 1542
	tArkRaider_BoxAbout[1541]["PosX"] = 172
	tArkRaider_BoxAbout[1541]["PosY"] = 232
	tArkRaider_BoxAbout[1542] = {}
	tArkRaider_BoxAbout[1542]["nTrapType"] = 1541
	tArkRaider_BoxAbout[1542]["PosX"] = 172
	tArkRaider_BoxAbout[1542]["PosY"] = 109
	
	tArkRaider_BoxAbout[1543] = {}
	tArkRaider_BoxAbout[1543]["nTrapType"] = 1544
	tArkRaider_BoxAbout[1543]["PosX"] = 137
	tArkRaider_BoxAbout[1543]["PosY"] = 210
	tArkRaider_BoxAbout[1544] = {}
	tArkRaider_BoxAbout[1544]["nTrapType"] = 1543
	tArkRaider_BoxAbout[1544]["PosX"] = 174
	tArkRaider_BoxAbout[1544]["PosY"] = 238
	
	tArkRaider_BoxAbout[1545] = {}
	tArkRaider_BoxAbout[1545]["nTrapType"] = 1546
	tArkRaider_BoxAbout[1545]["PosX"] = 134
	tArkRaider_BoxAbout[1545]["PosY"] = 184
	tArkRaider_BoxAbout[1546] = {}
	tArkRaider_BoxAbout[1546]["nTrapType"] = 1545
	tArkRaider_BoxAbout[1546]["PosX"] = 181
	tArkRaider_BoxAbout[1546]["PosY"] = 221
	
	tArkRaider_BoxAbout[1547] = {}
	tArkRaider_BoxAbout[1547]["nTrapType"] = 1548
	tArkRaider_BoxAbout[1547]["PosX"] = 244
	tArkRaider_BoxAbout[1547]["PosY"] = 200
	tArkRaider_BoxAbout[1548] = {}
	tArkRaider_BoxAbout[1548]["nTrapType"] = 1547
	tArkRaider_BoxAbout[1548]["PosX"] = 191
	tArkRaider_BoxAbout[1548]["PosY"] = 183
	
	-- 后9
	tArkRaider_BoxAbout[1549] = {}
	tArkRaider_BoxAbout[1549]["nTrapType"] = 1550
	tArkRaider_BoxAbout[1549]["PosX"] =  256
	tArkRaider_BoxAbout[1549]["PosY"] =  263
	tArkRaider_BoxAbout[1550] = {}
	tArkRaider_BoxAbout[1550]["nTrapType"] = 1549
	tArkRaider_BoxAbout[1550]["PosX"] = 184
	tArkRaider_BoxAbout[1550]["PosY"] = 160
	
	tArkRaider_BoxAbout[1551] = {}
	tArkRaider_BoxAbout[1551]["nTrapType"] = 1552
	tArkRaider_BoxAbout[1551]["PosX"] = 167
	tArkRaider_BoxAbout[1551]["PosY"] = 81
	tArkRaider_BoxAbout[1552] = {}
	tArkRaider_BoxAbout[1552]["nTrapType"] = 1551
	tArkRaider_BoxAbout[1552]["PosX"] = 229
	tArkRaider_BoxAbout[1552]["PosY"] = 170
	
	tArkRaider_BoxAbout[1553] = {}
	tArkRaider_BoxAbout[1553]["nTrapType"] = 1554
	tArkRaider_BoxAbout[1553]["PosX"] = 207
	tArkRaider_BoxAbout[1553]["PosY"] = 153
	tArkRaider_BoxAbout[1554] = {}
	tArkRaider_BoxAbout[1554]["nTrapType"] = 1553
	tArkRaider_BoxAbout[1554]["PosX"] = 226
	tArkRaider_BoxAbout[1554]["PosY"] = 185
	
	tArkRaider_BoxAbout[1555] = {}
	tArkRaider_BoxAbout[1555]["nTrapType"] = 1556
	tArkRaider_BoxAbout[1555]["PosX"] = 161
	tArkRaider_BoxAbout[1555]["PosY"] = 140
	tArkRaider_BoxAbout[1556] = {}
	tArkRaider_BoxAbout[1556]["nTrapType"] = 1555
	tArkRaider_BoxAbout[1556]["PosX"] = 210
	tArkRaider_BoxAbout[1556]["PosY"] = 270
	
	tArkRaider_BoxAbout[1557] = {}
	tArkRaider_BoxAbout[1557]["nTrapType"] = 1558
	tArkRaider_BoxAbout[1557]["PosX"] = 147
	tArkRaider_BoxAbout[1557]["PosY"] = 109
	tArkRaider_BoxAbout[1558] = {}
	tArkRaider_BoxAbout[1558]["nTrapType"] = 1557
	tArkRaider_BoxAbout[1558]["PosX"] = 232
	tArkRaider_BoxAbout[1558]["PosY"] = 271
	
	tArkRaider_BoxAbout[1559] = {}
	tArkRaider_BoxAbout[1559]["nTrapType"] = 1560
	tArkRaider_BoxAbout[1559]["PosX"] = 248
	tArkRaider_BoxAbout[1559]["PosY"] = 166
	tArkRaider_BoxAbout[1560] = {}
	tArkRaider_BoxAbout[1560]["nTrapType"] = 1559
	tArkRaider_BoxAbout[1560]["PosX"] = 262
	tArkRaider_BoxAbout[1560]["PosY"] = 237
	
	tArkRaider_BoxAbout[1561] = {}
	tArkRaider_BoxAbout[1561]["nTrapType"] = 1562
	tArkRaider_BoxAbout[1561]["PosX"] = 101
	tArkRaider_BoxAbout[1561]["PosY"] = 143
	tArkRaider_BoxAbout[1562] = {}
	tArkRaider_BoxAbout[1562]["nTrapType"] = 1561
	tArkRaider_BoxAbout[1562]["PosX"] = 230
	tArkRaider_BoxAbout[1562]["PosY"] = 216
	
	tArkRaider_BoxAbout[1563] = {}
	tArkRaider_BoxAbout[1563]["nTrapType"] = 1564
	tArkRaider_BoxAbout[1563]["PosX"] = 146
	tArkRaider_BoxAbout[1563]["PosY"] = 171
	tArkRaider_BoxAbout[1564] = {}
	tArkRaider_BoxAbout[1564]["nTrapType"] = 1563
	tArkRaider_BoxAbout[1564]["PosX"] = 271
	tArkRaider_BoxAbout[1564]["PosY"] = 210
	
	tArkRaider_BoxAbout[1565] = {}
	tArkRaider_BoxAbout[1565]["nTrapType"] = 1566
	tArkRaider_BoxAbout[1565]["PosX"] = 198
	tArkRaider_BoxAbout[1565]["PosY"] = 285
	tArkRaider_BoxAbout[1566] = {}
	tArkRaider_BoxAbout[1566]["nTrapType"] = 1565
	tArkRaider_BoxAbout[1566]["PosX"] = 273
	tArkRaider_BoxAbout[1566]["PosY"] = 233
	
tArkRaider_BoxAbout["Random"] = {}
	tArkRaider_BoxAbout["Random"][1] = {}
	tArkRaider_BoxAbout["Random"][1]["PosX"] = 108
	tArkRaider_BoxAbout["Random"][1]["PosY"] = 173
	
	tArkRaider_BoxAbout["Random"][2] = {}
	tArkRaider_BoxAbout["Random"][2]["PosX"] = 140
	tArkRaider_BoxAbout["Random"][2]["PosY"] = 140
	
	tArkRaider_BoxAbout["Random"][3] = {}
	tArkRaider_BoxAbout["Random"][3]["PosX"] = 173
	tArkRaider_BoxAbout["Random"][3]["PosY"] = 107
	
	tArkRaider_BoxAbout["Random"][4] = {}
	tArkRaider_BoxAbout["Random"][4]["PosX"] = 158
	tArkRaider_BoxAbout["Random"][4]["PosY"] = 223
	
	tArkRaider_BoxAbout["Random"][5] = {}
	tArkRaider_BoxAbout["Random"][5]["PosX"] = 190
	tArkRaider_BoxAbout["Random"][5]["PosY"] = 190
	
	tArkRaider_BoxAbout["Random"][6] = {}
	tArkRaider_BoxAbout["Random"][6]["PosX"] = 221
	tArkRaider_BoxAbout["Random"][6]["PosY"] = 157
	
	tArkRaider_BoxAbout["Random"][7] = {}
	tArkRaider_BoxAbout["Random"][7]["PosX"] = 208
	tArkRaider_BoxAbout["Random"][7]["PosY"] = 273
	
	tArkRaider_BoxAbout["Random"][8] = {}
	tArkRaider_BoxAbout["Random"][8]["PosX"] = 241
	tArkRaider_BoxAbout["Random"][8]["PosY"] = 241
	
	tArkRaider_BoxAbout["Random"][9] = {}
	tArkRaider_BoxAbout["Random"][9]["PosX"] = 273
	tArkRaider_BoxAbout["Random"][9]["PosY"] = 209
---------------------------------------怪物型陷阱配置---------------------------------------
local tArkRaider_MonsterTrap = {}
	-- 保护状态
	tArkRaider_MonsterTrap[2810] = {}
	tArkRaider_MonsterTrap[2810][1] = {}
	tArkRaider_MonsterTrap[2810][1]["PropId"] = 8336
	tArkRaider_MonsterTrap[2810][1]["Times"] = 1
	tArkRaider_MonsterTrap[2810][1]["Effect"] = "eidolon"

	-- 叹号
	tArkRaider_MonsterTrap[2807] = {}
	-- 加速                
	tArkRaider_MonsterTrap[2807][1] = {}
	tArkRaider_MonsterTrap[2807][1]["PropId"] = 8332
	tArkRaider_MonsterTrap[2807][1]["Times"] = 3
	tArkRaider_MonsterTrap[2807][1]["Effect"] = "eidolon"
	-- 回体                
	tArkRaider_MonsterTrap[2807][2] = {}
	tArkRaider_MonsterTrap[2807][2]["PropId"] = 8331
	tArkRaider_MonsterTrap[2807][2]["Times"] = 1
	tArkRaider_MonsterTrap[2807][2]["Effect"] = "eidolon"

	-- 道具问号
	tArkRaider_MonsterTrap[2808] = {}
	-- 泥浆炸弹            
	tArkRaider_MonsterTrap[2808][1] = {}
	tArkRaider_MonsterTrap[2808][1]["PropId"] = 8335
	tArkRaider_MonsterTrap[2808][1]["Times"] = 3
	tArkRaider_MonsterTrap[2808][1]["Effect"] = "eidolon"
	-- 眩晕锤子            
	tArkRaider_MonsterTrap[2808][2] = {}
	tArkRaider_MonsterTrap[2808][2]["PropId"] = 8337
	tArkRaider_MonsterTrap[2808][2]["Times"] = 1
	tArkRaider_MonsterTrap[2808][2]["Effect"] = "eidolon"
	-- 震荡炸弹            
	tArkRaider_MonsterTrap[2808][3] = {}
	tArkRaider_MonsterTrap[2808][3]["PropId"] = 8330
	tArkRaider_MonsterTrap[2808][3]["Times"] = 1
	tArkRaider_MonsterTrap[2808][3]["Effect"] = "eidolon"
	-- 尖叫炸弹
	tArkRaider_MonsterTrap[2808][4] = {}
	tArkRaider_MonsterTrap[2808][4]["PropId"] = 8334
	tArkRaider_MonsterTrap[2808][4]["Times"] = 1
	tArkRaider_MonsterTrap[2808][4]["Effect"] = "eidolon"
	
	-- 状态问号
	tArkRaider_MonsterTrap[2809] = {}
	-- 眩晕状态            
	tArkRaider_MonsterTrap[2809][1] = {}
	tArkRaider_MonsterTrap[2809][1]["Status"] = 55
	tArkRaider_MonsterTrap[2809][1]["Power"] = 0
	tArkRaider_MonsterTrap[2809][1]["Secs"] = 5
	tArkRaider_MonsterTrap[2809][1]["Times"] = 0
	tArkRaider_MonsterTrap[2809][1]["RemainTime"] = 5
	tArkRaider_MonsterTrap[2809][1]["EndTime"] = 1
	-- 反向状态            
	tArkRaider_MonsterTrap[2809][2] = {}
	tArkRaider_MonsterTrap[2809][2]["Status"] = 57
	tArkRaider_MonsterTrap[2809][2]["Power"] = 0
	tArkRaider_MonsterTrap[2809][2]["Secs"] = 15
	tArkRaider_MonsterTrap[2809][2]["Times"] = 0
	tArkRaider_MonsterTrap[2809][2]["RemainTime"] = 15
	tArkRaider_MonsterTrap[2809][2]["EndTime"] = 1
	-- 减速状态            
	tArkRaider_MonsterTrap[2809][3] = {}
	tArkRaider_MonsterTrap[2809][3]["Status"] = 50
	tArkRaider_MonsterTrap[2809][3]["Power"] = 25
	tArkRaider_MonsterTrap[2809][3]["Secs"] = 10
	tArkRaider_MonsterTrap[2809][3]["Times"] = 0
	tArkRaider_MonsterTrap[2809][3]["RemainTime"] = 10
	tArkRaider_MonsterTrap[2809][3]["EndTime"] = 1
	-- 回体状态            
	tArkRaider_MonsterTrap[2809][4] = {}
	tArkRaider_MonsterTrap[2809][4]["Status"] = 53
	tArkRaider_MonsterTrap[2809][4]["Power"] = 2000
	tArkRaider_MonsterTrap[2809][4]["Secs"] = 0
	tArkRaider_MonsterTrap[2809][4]["Times"] = 0
	tArkRaider_MonsterTrap[2809][4]["RemainTime"] = 0
	tArkRaider_MonsterTrap[2809][4]["EndTime"] = 1
	-- 加速状态            
	tArkRaider_MonsterTrap[2809][5] = {}
	tArkRaider_MonsterTrap[2809][5]["Status"] = 49
	tArkRaider_MonsterTrap[2809][5]["Power"] = 25
	tArkRaider_MonsterTrap[2809][5]["Secs"] = 15
	tArkRaider_MonsterTrap[2809][5]["Times"] = 0
	tArkRaider_MonsterTrap[2809][5]["RemainTime"] = 15
	tArkRaider_MonsterTrap[2809][5]["EndTime"] = 1

	
---------------------------------------宝箱逻辑---------------------------------------

-- 宝箱陷阱逻辑
function ArkRaider_Reward(nTrapId,nTrapType)
	-- User_TalkChannel2005("nTrapId:"..nTrapId)
	-- User_TalkChannel2005("nTrapType:"..nTrapType)
	-- 背包检查，满出提示
	if not User_CheckLeftSpace(tArkRaider_BoxAbout["Space"]) then
		Sys_MsgBox(tArkRaider_Text["NoSpace"])
		return
	end
	-- 删除成功给物品
	if Trap_EraseMapTrap(nTrapId) then 
		
		local nRandom = math.random(1,9)
		local nRandomX = math.random(10,26)
		local nRandomY = math.random(10,26)
		local nRanX = math.random(1,2)
		local nRanY = math.random(1,2)
		if nRanX == 2 then
			nRanX = -1
		end
		if nRanY == 2 then
			nRanY = -1
		end
		if (nRandomX + nRandomY) >= 26 then
			nRandomX = math.floor(26 - nRandomX)
			nRandomY = math.floor(26 - nRandomY)
		end
		
		local nPosx = tArkRaider_BoxAbout["Random"][nRandom]["PosX"] + (nRanX * nRandomX)
		local nPosy = tArkRaider_BoxAbout["Random"][nRandom]["PosY"] + (nRanY * nRandomY)
		-- User_TalkChannel2005("nPosx"..nPosx)
		-- User_TalkChannel2005("nPosy"..nPosy)
		
			Trap_CreateMapTrap(tArkRaider_BoxAbout[nTrapType]["nTrapType"],tArkRaider_BoxAbout["BoxLook"],tArkRaider_BoxAbout["OwnId"],tArkRaider_BoxAbout["MapId"],nPosx,nPosy,tArkRaider_BoxAbout["PosCX"],tArkRaider_BoxAbout["PosCY"])
			-- 给奖成功，出提示打log
			if Item_AddNewItem(tArkRaider_Item["ItemId"],tArkRaider_Item["ItemNum"]) then
				Sys_SaveActionFestivalLog(tArkRaider_Log["OpenBox"])
				User_TalkChannel2005(tArkRaider_Text["GetReward"])
			end
		end
		
end

-- 随机怪物型道具陷阱
function ArkRaider_ToolMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nRandom = math.random(1,#tArkRaider_MonsterTrap[nMonsterId])
	local nPropId = tArkRaider_MonsterTrap[nMonsterId][nRandom]["PropId"]
	local nUnRemainTime = tArkRaider_MonsterTrap[nMonsterId][nRandom]["Times"]
	User_AddPropStatus(nPropId,nUnRemainTime,nUserId)
	
	local sEffect = tArkRaider_MonsterTrap[nMonsterId][nRandom]["Effect"]
	-- 加光效
	if sEffect ~= nil then
		User_EffectAdd("self",sEffect)
	end
	
	-- User_TalkChannel2007()
	
end


-- 随机怪物型状态陷阱
function ArkRaider_BuffMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nRandom = math.random(1,#tArkRaider_MonsterTrap[nMonsterId])
	local nStatus = tArkRaider_MonsterTrap[nMonsterId][nRandom]["Status"]
	local nPower =  tArkRaider_MonsterTrap[nMonsterId][nRandom]["Power"]
	local nSecs = tArkRaider_MonsterTrap[nMonsterId][nRandom]["Secs"]
	local nTimes = tArkRaider_MonsterTrap[nMonsterId][nRandom]["Times"]
	local nRemainTime = tArkRaider_MonsterTrap[nMonsterId][nRandom]["RemainTime"]
	local nEndTime = tArkRaider_MonsterTrap[nMonsterId][nRandom]["EndTime"]

	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,0,0,0,nUserId)

	local sEffect = tArkRaider_MonsterTrap[nMonsterId]["Effect_1"]
	-- 加光效
	if sEffect ~= nil then
		User_EffectAdd("self",sEffect)
	end
	
	-- User_TalkChannel2007()
	
end

--物品逻辑
function ArkRaider_OpenPack(nItemId)
	-- 活动时间外删除
	if not Sys_ChkFullTime(tArkRaider_Item["Time"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tArkRaider_Text["OverTime"])
			return
		end
	end
	
	-- 背包空间判断
	if not User_CheckLeftSpace(tArkRaider_BoxAbout["Space1"]) then
		Sys_MsgBox(tArkRaider_Text["NoSpace"])
		return
	end
	local nEvent = tArkRaider_Item["Data"] 
	local nType = tArkRaider_Item["Type"] 
	local nLimit = tArkRaider_Item["Limit"]
	-- 隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStcTimestamp(nEvent,nType,0,0)
		Task_SetStatistic(nEvent,nType,0,1)
	end
	local nHave = tonumber(Get_UserStatisticValue(nEvent,nType))
	if nHave >= nLimit then
		Sys_MsgBox(tArkRaider_Text["OpenLimit"])
		return
	end
	
	-- 给奖
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		nHave = nHave + 1
		Task_SetStatistic(nEvent,nType,nHave,1)
		RewardTemplate_NewRandom(tArkRaider_TheChest["ChestReward"],1)
	end
end


---------------------------------------礼包逻辑------------------------------------
tItem[3600035] = tItem[3600035] or {}
tItem[3600035]["Function"] = function(nItemId,sItemName)
	ArkRaider_OpenPack(nItemId)
end

---------------------------------------怪物型陷阱------------------------------------
-- 保护状态
-- tMonster[2810] = tMonster[2810] or {}
-- tMonster[2810]["tFunction"] = tMonster[2810]["tFunction"] or {}
-- table.insert(tMonster[2810]["tFunction"],ArkRaider_ToolMonster)

-- 感叹号
-- tMonster[2807] = tMonster[2807] or {}
-- tMonster[2807]["tFunction"] = tMonster[2807]["tFunction"] or {}
-- table.insert(tMonster[2807]["tFunction"],ArkRaider_ToolMonster)

-- 道具问号
-- tMonster[2808] = tMonster[2808] or {}
-- tMonster[2808]["tFunction"] = tMonster[2808]["tFunction"] or {}
-- table.insert(tMonster[2808]["tFunction"],ArkRaider_ToolMonster)

-- 状态问号
-- tMonster[2809] = tMonster[2809] or {}
-- tMonster[2809]["tFunction"] = tMonster[2809]["tFunction"] or {}
-- table.insert(tMonster[2809]["tFunction"],ArkRaider_BuffMonster)

---------------------------------------陷阱宝箱---------------------------------------

--traptypeid= 1531-1566
-- for i = 1531,1566 do
	-- tTrap[i] = tTrap[i] or {}
	-- tTrap[i]["Function"] = function(nTrapId,nTrapType)
		-- ArkRaider_Reward(nTrapId,nTrapType)
	-- end
-- end

---------------------------------------npc逻辑------------------------------------
--	观众
-- 头像配置
tNpcFace[4462] = 1
tNpcFace[4463] = 19
tNpcFace[4464] = 64

tNpcFace[4465] = 68
tNpcFace[4466] = 5
tNpcFace[4467] = 22

tNpcFace[4468] = 4
tNpcFace[4469] = 84
tNpcFace[4470] = 27

tNpcFace[4471] = 23
tNpcFace[4472] = 4
tNpcFace[4473] = 17

tNpcFace[4474] = 23
tNpcFace[4475] = 55
--npcid= 11333-11346
for i = 11333,11346 do
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["Text1-1"] = {111}
	tNpcGossip[i]["Text111"] = tArkRaider_Text["Text"][i]
	tNpcGossip[i]["tOption1-1"] = {1}
	tNpcGossip[i]["Option1"] = tArkRaider_Text["Option"][i]
end

-- 离场NPC补充
for i = 11350,11353 do
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["DialogueText"] = tHorseRidingMatch_Text[i]
	tNpcGossip[i]["Text1-1"] = {111}
	tNpcGossip[i]["tOption1-1"] = {1,2}
	tNpcGossip[i]["OptionFunc1"] = "HorseRidingMatch_LeaveMatchMap"
end


