------------------------------------------------------------------------------------
--Name:		190212[简体征服][活动脚本]春节龙鼎玩法(融魂)
--Purpose:	灵珠玩法-融魂
--Creator: 	黄啸
--Created:	2019/02/12
------------------------------------------------------------------------------------
--前缀DragonSoulConnectNpc_
--logid:12001292

-- 灵珠说明
-- 4200001 1阶灵珠
-- 4200002 2阶灵珠
-- 4200003 3阶灵珠
-- 4200004 4阶灵珠
-- 4200005 5阶灵珠
-- 4200006 6阶灵珠
-- 4200007 7阶灵珠
-- 4200008 8阶灵珠
-- 4200009 9阶灵珠
-- 4200010 10阶灵珠
-- 4200011 11阶灵珠
-- 4200012 12阶灵珠
-- 4200013 13阶灵珠
-- 4200014 14阶灵珠
-- 4200015 15阶灵珠
-- 4200016 16阶灵珠
-- 4200017 17阶灵珠
-- 4200018 18阶灵珠

----------------------------------数据部分配置----------------------------------
--跳转网页
local tDragonSoulConnectNpc_Stcwel = {}
tDragonSoulConnectNpc_Stcwel["Wel"] = "https://co.99.com/guide/event/anima_introduction.shtml"


-- 融魂概率
local tDragonSoulConnectNpc_Reward = {}
	--=========[1阶灵珠,4200001]=========
	tDragonSoulConnectNpc_Reward[4200001] = {}
	tDragonSoulConnectNpc_Reward[4200001]["ItemChanceSum"] = 10000
	-- 9阶灵珠
	tDragonSoulConnectNpc_Reward[4200001][1] = {}
	tDragonSoulConnectNpc_Reward[4200001][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200001][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200001][1]["Item_1"] = {1,4200009}

	-- 7阶灵珠
	tDragonSoulConnectNpc_Reward[4200001][2] = {}
	tDragonSoulConnectNpc_Reward[4200001][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200001][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200001][2]["Item_1"] = {2,4200007}

	-- 3阶灵珠
	tDragonSoulConnectNpc_Reward[4200001][3] = {}
	tDragonSoulConnectNpc_Reward[4200001][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200001][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200001][3]["Item_1"] = {3,4200003}

	-- 2阶灵珠
	tDragonSoulConnectNpc_Reward[4200001][4] = {}
	tDragonSoulConnectNpc_Reward[4200001][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200001][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200001][4]["Item_1"] = {4,4200002}

	-- 1阶灵珠
	tDragonSoulConnectNpc_Reward[4200001][5] = {}
	tDragonSoulConnectNpc_Reward[4200001][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200001][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200001][5]["Item_1"] = {5,4200001}

	-- 10分钟经验
	tDragonSoulConnectNpc_Reward[4200001][6] = {}
	tDragonSoulConnectNpc_Reward[4200001][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200001][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200001][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200001][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200001][6]["RewardExpTime"]["Value"] = 10	


	--=========[2阶灵珠,4200002]=========
	tDragonSoulConnectNpc_Reward[4200002] = {}
	tDragonSoulConnectNpc_Reward[4200002]["ItemChanceSum"] = 10000
	-- 10阶灵珠
	tDragonSoulConnectNpc_Reward[4200002][1] = {}
	tDragonSoulConnectNpc_Reward[4200002][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200002][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200002][1]["Item_1"] = {1,4200010}

	-- 8阶灵珠
	tDragonSoulConnectNpc_Reward[4200002][2] = {}
	tDragonSoulConnectNpc_Reward[4200002][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200002][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200002][2]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200002][2]["Item_1"] = {2,4200008}

	-- 4阶灵珠
	tDragonSoulConnectNpc_Reward[4200002][3] = {}
	tDragonSoulConnectNpc_Reward[4200002][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200002][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200002][3]["Item_1"] = {3,4200004}

	-- 3阶灵珠
	tDragonSoulConnectNpc_Reward[4200002][4] = {}
	tDragonSoulConnectNpc_Reward[4200002][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200002][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200002][4]["Item_1"] = {4,4200003}

	-- 2阶灵珠
	tDragonSoulConnectNpc_Reward[4200002][5] = {}
	tDragonSoulConnectNpc_Reward[4200002][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200002][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200002][5]["Item_1"] = {5,4200002}

	-- 20分钟经验
	tDragonSoulConnectNpc_Reward[4200002][6] = {}
	tDragonSoulConnectNpc_Reward[4200002][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200002][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200002][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200002][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200002][6]["RewardExpTime"]["Value"] = 20	



	--=========[3阶灵珠,4200003]=========
	tDragonSoulConnectNpc_Reward[4200003] = {}
	tDragonSoulConnectNpc_Reward[4200003]["ItemChanceSum"] = 10000
	-- 11阶灵珠
	tDragonSoulConnectNpc_Reward[4200003][1] = {}
	tDragonSoulConnectNpc_Reward[4200003][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200003][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200003][1]["Item_1"] = {1,4200011}

	-- 9阶灵珠
	tDragonSoulConnectNpc_Reward[4200003][2] = {}
	tDragonSoulConnectNpc_Reward[4200003][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200003][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200003][2]["Item_1"] = {2,4200009}

	-- 5阶灵珠
	tDragonSoulConnectNpc_Reward[4200003][3] = {}
	tDragonSoulConnectNpc_Reward[4200003][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200003][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200003][3]["Item_1"] = {3,4200005}

	-- 4阶灵珠
	tDragonSoulConnectNpc_Reward[4200003][4] = {}
	tDragonSoulConnectNpc_Reward[4200003][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200003][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200003][4]["Item_1"] = {4,4200004}

	-- 3阶灵珠
	tDragonSoulConnectNpc_Reward[4200003][5] = {}
	tDragonSoulConnectNpc_Reward[4200003][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200003][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200003][5]["Item_1"] = {5,4200003}

	-- 30分钟经验
	tDragonSoulConnectNpc_Reward[4200003][6] = {}
	tDragonSoulConnectNpc_Reward[4200003][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200003][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200003][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200003][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200003][6]["RewardExpTime"]["Value"] = 30	



	--=========[4阶灵珠,4200004]=========
	tDragonSoulConnectNpc_Reward[4200004] = {}
	tDragonSoulConnectNpc_Reward[4200004]["ItemChanceSum"] = 10000
	-- 12阶灵珠
	tDragonSoulConnectNpc_Reward[4200004][1] = {}
	tDragonSoulConnectNpc_Reward[4200004][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200004][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200004][1]["Item_1"] = {1,4200012}

	-- 10阶灵珠
	tDragonSoulConnectNpc_Reward[4200004][2] = {}
	tDragonSoulConnectNpc_Reward[4200004][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200004][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200004][2]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200004][2]["Item_1"] = {2,4200010}

	-- 6阶灵珠
	tDragonSoulConnectNpc_Reward[4200004][3] = {}
	tDragonSoulConnectNpc_Reward[4200004][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200004][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200004][3]["Item_1"] = {3,4200006}

	-- 5阶灵珠
	tDragonSoulConnectNpc_Reward[4200004][4] = {}
	tDragonSoulConnectNpc_Reward[4200004][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200004][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200004][4]["Item_1"] = {4,4200005}

	-- 4阶灵珠
	tDragonSoulConnectNpc_Reward[4200004][5] = {}
	tDragonSoulConnectNpc_Reward[4200004][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200004][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200004][5]["Item_1"] = {5,4200004}

	-- 50分钟经验
	tDragonSoulConnectNpc_Reward[4200004][6] = {}
	tDragonSoulConnectNpc_Reward[4200004][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200004][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200004][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200004][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200004][6]["RewardExpTime"]["Value"] = 50	



	--=========[5阶灵珠,4200005]=========
	tDragonSoulConnectNpc_Reward[4200005] = {}
	tDragonSoulConnectNpc_Reward[4200005]["ItemChanceSum"] = 10000
	-- 13阶灵珠
	tDragonSoulConnectNpc_Reward[4200005][1] = {}
	tDragonSoulConnectNpc_Reward[4200005][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200005][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200005][1]["Item_1"] = {1,4200013}

	-- 11阶灵珠
	tDragonSoulConnectNpc_Reward[4200005][2] = {}
	tDragonSoulConnectNpc_Reward[4200005][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200005][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200005][2]["Item_1"] = {2,4200011}

	-- 7阶灵珠
	tDragonSoulConnectNpc_Reward[4200005][3] = {}
	tDragonSoulConnectNpc_Reward[4200005][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200005][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200005][3]["Item_1"] = {3,4200007}

	-- 6阶灵珠
	tDragonSoulConnectNpc_Reward[4200005][4] = {}
	tDragonSoulConnectNpc_Reward[4200005][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200005][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200005][4]["Item_1"] = {4,4200006}

	-- 5阶灵珠
	tDragonSoulConnectNpc_Reward[4200005][5] = {}
	tDragonSoulConnectNpc_Reward[4200005][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200005][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200005][5]["Item_1"] = {5,4200005}

	-- 100分钟经验
	tDragonSoulConnectNpc_Reward[4200005][6] = {}
	tDragonSoulConnectNpc_Reward[4200005][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200005][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200005][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200005][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200005][6]["RewardExpTime"]["Value"] = 100	



	--=========[6阶灵珠,4200006]=========
	tDragonSoulConnectNpc_Reward[4200006] = {}
	tDragonSoulConnectNpc_Reward[4200006]["ItemChanceSum"] = 10000
	-- 14阶灵珠
	tDragonSoulConnectNpc_Reward[4200006][1] = {}
	tDragonSoulConnectNpc_Reward[4200006][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200006][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200006][1]["Item_1"] = {1,4200014}

	-- 12阶灵珠
	tDragonSoulConnectNpc_Reward[4200006][2] = {}
	tDragonSoulConnectNpc_Reward[4200006][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200006][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200006][2]["Item_1"] = {2,4200012}

	-- 8阶灵珠
	tDragonSoulConnectNpc_Reward[4200006][3] = {}
	tDragonSoulConnectNpc_Reward[4200006][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200006][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200006][3]["Item_1"] = {3,4200008}

	-- 7阶灵珠
	tDragonSoulConnectNpc_Reward[4200006][4] = {}
	tDragonSoulConnectNpc_Reward[4200006][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200006][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200006][4]["Item_1"] = {4,4200007}

	-- 6阶灵珠
	tDragonSoulConnectNpc_Reward[4200006][5] = {}
	tDragonSoulConnectNpc_Reward[4200006][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200006][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200006][5]["Item_1"] = {5,4200006}

	-- 150分钟经验
	tDragonSoulConnectNpc_Reward[4200006][6] = {}
	tDragonSoulConnectNpc_Reward[4200006][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200006][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200006][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200006][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200006][6]["RewardExpTime"]["Value"] = 150	



	--=========[7阶灵珠,4200007]=========
	tDragonSoulConnectNpc_Reward[4200007] = {}
	tDragonSoulConnectNpc_Reward[4200007]["ItemChanceSum"] = 10000
	-- 15阶灵珠
	tDragonSoulConnectNpc_Reward[4200007][1] = {}
	tDragonSoulConnectNpc_Reward[4200007][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200007][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200007][1]["Item_1"] = {1,4200015}

	-- 13阶灵珠
	tDragonSoulConnectNpc_Reward[4200007][2] = {}
	tDragonSoulConnectNpc_Reward[4200007][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200007][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200007][2]["Item_1"] = {2,4200013}

	-- 9阶灵珠
	tDragonSoulConnectNpc_Reward[4200007][3] = {}
	tDragonSoulConnectNpc_Reward[4200007][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200007][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200007][3]["Item_1"] = {3,4200009}

	-- 8阶灵珠
	tDragonSoulConnectNpc_Reward[4200007][4] = {}
	tDragonSoulConnectNpc_Reward[4200007][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200007][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200007][4]["Item_1"] = {4,4200008}

	-- 7阶灵珠
	tDragonSoulConnectNpc_Reward[4200007][5] = {}
	tDragonSoulConnectNpc_Reward[4200007][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200007][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200007][5]["Item_1"] = {5,4200007}

	-- 200分钟经验
	tDragonSoulConnectNpc_Reward[4200007][6] = {}
	tDragonSoulConnectNpc_Reward[4200007][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200007][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200007][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200007][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200007][6]["RewardExpTime"]["Value"] = 200	



	--=========[8阶灵珠,4200008]=========
	tDragonSoulConnectNpc_Reward[4200008] = {}
	tDragonSoulConnectNpc_Reward[4200008]["ItemChanceSum"] = 10000
	-- 16阶灵珠
	tDragonSoulConnectNpc_Reward[4200008][1] = {}
	tDragonSoulConnectNpc_Reward[4200008][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200008][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200008][1]["Item_1"] = {1,4200016}

	-- 14阶灵珠
	tDragonSoulConnectNpc_Reward[4200008][2] = {}
	tDragonSoulConnectNpc_Reward[4200008][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200008][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200008][2]["Item_1"] = {2,4200014}

	-- 10阶灵珠
	tDragonSoulConnectNpc_Reward[4200008][3] = {}
	tDragonSoulConnectNpc_Reward[4200008][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200008][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200008][3]["Item_1"] = {3,4200010}

	-- 9阶灵珠
	tDragonSoulConnectNpc_Reward[4200008][4] = {}
	tDragonSoulConnectNpc_Reward[4200008][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200008][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200008][4]["Item_1"] = {4,4200009}

	-- 8阶灵珠
	tDragonSoulConnectNpc_Reward[4200008][5] = {}
	tDragonSoulConnectNpc_Reward[4200008][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200008][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200008][5]["Item_1"] = {5,4200008}

	-- 250分钟经验
	tDragonSoulConnectNpc_Reward[4200008][6] = {}
	tDragonSoulConnectNpc_Reward[4200008][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200008][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200008][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200008][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200008][6]["RewardExpTime"]["Value"] = 250	
	tDragonSoulConnectNpc_Reward[4200008][6]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200008][6]["RewardItem"][1] = {}
	tDragonSoulConnectNpc_Reward[4200008][6]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulConnectNpc_Reward[4200008][6]["RewardItem"][1]["Attr"] = "0 2"
	tDragonSoulConnectNpc_Reward[4200008][6]["LogId"] = 12001292


	--=========[9阶灵珠,4200009]=========
	tDragonSoulConnectNpc_Reward[4200009] = {}
	tDragonSoulConnectNpc_Reward[4200009]["ItemChanceSum"] = 10000
	-- 17阶灵珠
	tDragonSoulConnectNpc_Reward[4200009][1] = {}
	tDragonSoulConnectNpc_Reward[4200009][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200009][1]["ItemChance"] = 1
	tDragonSoulConnectNpc_Reward[4200009][1]["Item_1"] = {1,4200017}

	-- 15阶灵珠
	tDragonSoulConnectNpc_Reward[4200009][2] = {}
	tDragonSoulConnectNpc_Reward[4200009][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200009][2]["ItemChance"] = 9
	tDragonSoulConnectNpc_Reward[4200009][2]["Item_1"] = {2,4200015}

	-- 11阶灵珠
	tDragonSoulConnectNpc_Reward[4200009][3] = {}
	tDragonSoulConnectNpc_Reward[4200009][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200009][3]["ItemChance"] = 3740
	tDragonSoulConnectNpc_Reward[4200009][3]["Item_1"] = {3,4200011}

	-- 10阶灵珠
	tDragonSoulConnectNpc_Reward[4200009][4] = {}
	tDragonSoulConnectNpc_Reward[4200009][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200009][4]["ItemChance"] = 1250
	tDragonSoulConnectNpc_Reward[4200009][4]["Item_1"] = {4,4200010}

	-- 9阶灵珠
	tDragonSoulConnectNpc_Reward[4200009][5] = {}
	tDragonSoulConnectNpc_Reward[4200009][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200009][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200009][5]["Item_1"] = {5,4200009}

	-- 300分钟经验
	tDragonSoulConnectNpc_Reward[4200009][6] = {}
	tDragonSoulConnectNpc_Reward[4200009][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200009][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200009][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200009][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200009][6]["RewardExpTime"]["Value"] = 300	
	tDragonSoulConnectNpc_Reward[4200009][6]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200009][6]["RewardItem"][1] = {}
	tDragonSoulConnectNpc_Reward[4200009][6]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulConnectNpc_Reward[4200009][6]["RewardItem"][1]["Attr"] = "0 4"
	tDragonSoulConnectNpc_Reward[4200009][6]["LogId"] = 12001292


	--=========[10阶灵珠,4200010]=========
	tDragonSoulConnectNpc_Reward[4200010] = {}
	tDragonSoulConnectNpc_Reward[4200010]["ItemChanceSum"] = 10000
	-- 17阶灵珠
	tDragonSoulConnectNpc_Reward[4200010][1] = {}
	tDragonSoulConnectNpc_Reward[4200010][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200010][1]["ItemChance"] = 2
	tDragonSoulConnectNpc_Reward[4200010][1]["Item_1"] = {1,4200017}

	-- 15阶灵珠
	tDragonSoulConnectNpc_Reward[4200010][2] = {}
	tDragonSoulConnectNpc_Reward[4200010][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200010][2]["ItemChance"] = 18
	tDragonSoulConnectNpc_Reward[4200010][2]["Item_1"] = {2,4200015}

	-- 12阶灵珠
	tDragonSoulConnectNpc_Reward[4200010][3] = {}
	tDragonSoulConnectNpc_Reward[4200010][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200010][3]["ItemChance"] = 3755
	tDragonSoulConnectNpc_Reward[4200010][3]["Item_1"] = {3,4200012}

	-- 11阶灵珠
	tDragonSoulConnectNpc_Reward[4200010][4] = {}
	tDragonSoulConnectNpc_Reward[4200010][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200010][4]["ItemChance"] = 1225
	tDragonSoulConnectNpc_Reward[4200010][4]["Item_1"] = {4,4200011}

	-- 10阶灵珠
	tDragonSoulConnectNpc_Reward[4200010][5] = {}
	tDragonSoulConnectNpc_Reward[4200010][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200010][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200010][5]["Item_1"] = {5,4200010}

	-- 500分钟经验
	tDragonSoulConnectNpc_Reward[4200010][6] = {}
	tDragonSoulConnectNpc_Reward[4200010][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200010][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200010][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200010][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200010][6]["RewardExpTime"]["Value"] = 500	
	tDragonSoulConnectNpc_Reward[4200010][6]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200010][6]["RewardItem"][1] = {}
	tDragonSoulConnectNpc_Reward[4200010][6]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulConnectNpc_Reward[4200010][6]["RewardItem"][1]["Attr"] = "0 8"
	tDragonSoulConnectNpc_Reward[4200010][6]["LogId"] = 12001292


	--=========[11阶灵珠,4200011]=========
	tDragonSoulConnectNpc_Reward[4200011] = {}
	tDragonSoulConnectNpc_Reward[4200011]["ItemChanceSum"] = 10000
	-- 17阶灵珠
	tDragonSoulConnectNpc_Reward[4200011][1] = {}
	tDragonSoulConnectNpc_Reward[4200011][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200011][1]["ItemChance"] = 3
	tDragonSoulConnectNpc_Reward[4200011][1]["Item_1"] = {1,4200017}

	-- 15阶灵珠
	tDragonSoulConnectNpc_Reward[4200011][2] = {}
	tDragonSoulConnectNpc_Reward[4200011][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200011][2]["ItemChance"] = 37
	tDragonSoulConnectNpc_Reward[4200011][2]["Item_1"] = {2,4200015}

	-- 13阶灵珠
	tDragonSoulConnectNpc_Reward[4200011][3] = {}
	tDragonSoulConnectNpc_Reward[4200011][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200011][3]["ItemChance"] = 3800
	tDragonSoulConnectNpc_Reward[4200011][3]["Item_1"] = {3,4200013}

	-- 12阶灵珠
	tDragonSoulConnectNpc_Reward[4200011][4] = {}
	tDragonSoulConnectNpc_Reward[4200011][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200011][4]["ItemChance"] = 1160
	tDragonSoulConnectNpc_Reward[4200011][4]["Item_1"] = {4,4200012}

	-- 11阶灵珠
	tDragonSoulConnectNpc_Reward[4200011][5] = {}
	tDragonSoulConnectNpc_Reward[4200011][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200011][5]["ItemChance"] = 1000
	tDragonSoulConnectNpc_Reward[4200011][5]["Item_1"] = {5,4200011,1}

	-- 800分钟经验
	tDragonSoulConnectNpc_Reward[4200011][6] = {}
	tDragonSoulConnectNpc_Reward[4200011][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200011][6]["ItemChance"] = 4000
	tDragonSoulConnectNpc_Reward[4200011][6]["Item_1"] = {6,0,2}
	tDragonSoulConnectNpc_Reward[4200011][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200011][6]["RewardExpTime"]["Value"] = 800	
	tDragonSoulConnectNpc_Reward[4200011][6]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200011][6]["RewardItem"][1] = {}
	tDragonSoulConnectNpc_Reward[4200011][6]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulConnectNpc_Reward[4200011][6]["RewardItem"][1]["Attr"] = "0 16"
	tDragonSoulConnectNpc_Reward[4200011][6]["LogId"] = 12001292



	--=========[12阶灵珠,4200012]=========
	tDragonSoulConnectNpc_Reward[4200012] = {}
	tDragonSoulConnectNpc_Reward[4200012]["ItemChanceSum"] = 10000
	-- 17阶灵珠
	tDragonSoulConnectNpc_Reward[4200012][1] = {}
	tDragonSoulConnectNpc_Reward[4200012][1]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200012][1]["ItemChance"] = 4
	tDragonSoulConnectNpc_Reward[4200012][1]["Item_1"] = {1,4200017}

	-- 15阶灵珠
	tDragonSoulConnectNpc_Reward[4200012][2] = {}
	tDragonSoulConnectNpc_Reward[4200012][2]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200012][2]["ItemChance"] = 698
	tDragonSoulConnectNpc_Reward[4200012][2]["Item_1"] = {2,4200015}

	-- 14阶灵珠
	tDragonSoulConnectNpc_Reward[4200012][3] = {}
	tDragonSoulConnectNpc_Reward[4200012][3]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200012][3]["ItemChance"] = 0
	tDragonSoulConnectNpc_Reward[4200012][3]["Item_1"] = {3,4200014}

	-- 13阶灵珠
	tDragonSoulConnectNpc_Reward[4200012][4] = {}
	tDragonSoulConnectNpc_Reward[4200012][4]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200012][4]["ItemChance"] = 4298
	tDragonSoulConnectNpc_Reward[4200012][4]["Item_1"] = {4,4200013}

	-- 12阶灵珠
	tDragonSoulConnectNpc_Reward[4200012][5] = {}
	tDragonSoulConnectNpc_Reward[4200012][5]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200012][5]["ItemChance"] = 5000
	tDragonSoulConnectNpc_Reward[4200012][5]["Item_1"] = {5,4200012,2}

	-- 1200分钟经验
	tDragonSoulConnectNpc_Reward[4200012][6] = {}
	tDragonSoulConnectNpc_Reward[4200012][6]["RandomItemChanceType"] = 2
	tDragonSoulConnectNpc_Reward[4200012][6]["ItemChance"] = 0
	tDragonSoulConnectNpc_Reward[4200012][6]["Item_1"] = {6,0}
	tDragonSoulConnectNpc_Reward[4200012][6]["RewardExpTime"] = {}
	tDragonSoulConnectNpc_Reward[4200012][6]["RewardExpTime"]["Value"] = 1200	
	tDragonSoulConnectNpc_Reward[4200012][6]["RewardItem"] = {}
	tDragonSoulConnectNpc_Reward[4200012][6]["RewardItem"][1] = {}
	tDragonSoulConnectNpc_Reward[4200012][6]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulConnectNpc_Reward[4200012][6]["RewardItem"][1]["Attr"] = "0 32"
	tDragonSoulConnectNpc_Reward[4200012][6]["LogId"] = 12001292


--给玩家相应的经验
local tDragonSoulConnectNpc_Experiences = {}
tDragonSoulConnectNpc_Experiences["Experience"] = {}
tDragonSoulConnectNpc_Experiences["Experience"]["RewardExpTime"] = {}
tDragonSoulConnectNpc_Experiences["Experience"]["RewardExpTime"]["Value"] = 1200
tDragonSoulConnectNpc_Experiences["Experience"]["LogId"] = 12001292

--新服给玩家相应的轮盘奖励
--10阶
local tDragonSoulConnectNpc_Rountine = {}
--11阶
tDragonSoulConnectNpc_Rountine[1] = {}
tDragonSoulConnectNpc_Rountine[1]["RewardItem"] = {}
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][1] = {} 
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][1]["Id"] = 4200011
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][1]["Attr"] = "0 1"
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][1]["PreciousType"] = 302
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][2] = {} 
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][2]["Id"] = 3320157
tDragonSoulConnectNpc_Rountine[1]["RewardItem"][2]["Attr"] = "0 1"
tDragonSoulConnectNpc_Rountine[1]["LogId"] = 12001292
--12阶
tDragonSoulConnectNpc_Rountine[2] = {}
tDragonSoulConnectNpc_Rountine[2]["RewardItem"] = {}
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][1] = {} 
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][1]["Id"] = 4200012
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][1]["Attr"] = "0 1"
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][1]["PreciousType"] = 302
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][2] = {} 
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][2]["Id"] = 3320158
tDragonSoulConnectNpc_Rountine[2]["RewardItem"][2]["Attr"] = "0 1"
tDragonSoulConnectNpc_Rountine[2]["LogId"] = 12001292
--11阶全败给中级金币轮盘
tDragonSoulConnectNpc_Rountine[3] = {}
tDragonSoulConnectNpc_Rountine[3]["RewardItem"] = {}
tDragonSoulConnectNpc_Rountine[3]["RewardItem"][1] = {} 
tDragonSoulConnectNpc_Rountine[3]["RewardItem"][1]["Id"] = 3320158
tDragonSoulConnectNpc_Rountine[3]["RewardItem"][1]["Attr"] = "0 1"
tDragonSoulConnectNpc_Rountine[3]["LogId"] = 12001292

--一般服融合失败奖励获得
--一般服给奖励物品
local tDragonSoulConnectNpc_NormalItemId = {}
tDragonSoulConnectNpc_NormalItemId["Award"] = {}
tDragonSoulConnectNpc_NormalItemId["Award"]["RewardItem"] = {}
tDragonSoulConnectNpc_NormalItemId["Award"]["RewardItem"][1] = {} 
tDragonSoulConnectNpc_NormalItemId["Award"]["RewardItem"][1]["Id"] = 4200001
tDragonSoulConnectNpc_NormalItemId["Award"]["RewardItem"][1]["Attr"] = "0 1"
tDragonSoulConnectNpc_NormalItemId["Award"]["RewardItem"][1]["PreciousType"] = 302
tDragonSoulConnectNpc_NormalItemId["Award"]["LogId"] = 12001292


--随机玩家失败后是损失灵珠个数
local tDragonSoulConnectNpc_LostNum = {}
tDragonSoulConnectNpc_LostNum["Lost"] = {}
tDragonSoulConnectNpc_LostNum["Lost"][1] = {}
tDragonSoulConnectNpc_LostNum["Lost"][1]["ItemChanceSum"] = 10000

tDragonSoulConnectNpc_LostNum["Lost"][1][1] = {}
tDragonSoulConnectNpc_LostNum["Lost"][1][1]["RandomItemChanceType"] = 2
tDragonSoulConnectNpc_LostNum["Lost"][1][1]["ItemChance"] = 5000
tDragonSoulConnectNpc_LostNum["Lost"][1][1]["Item_1"] = 1

tDragonSoulConnectNpc_LostNum["Lost"][1][2] = {}
tDragonSoulConnectNpc_LostNum["Lost"][1][2]["RandomItemChanceType"] = 2
tDragonSoulConnectNpc_LostNum["Lost"][1][2]["ItemChance"] = 5000
tDragonSoulConnectNpc_LostNum["Lost"][1][2]["Item_1"] = 2


--背包空间不足的情况下
-- 邮件数据
--一般服发奖
local tDragonSoulConnectNpc_Mail_Normal = {}
	tDragonSoulConnectNpc_Mail_Normal[4200001] = 571145
	tDragonSoulConnectNpc_Mail_Normal[4200002] = 571146
	tDragonSoulConnectNpc_Mail_Normal[4200003] = 571147
	tDragonSoulConnectNpc_Mail_Normal[4200004] = 571148
	tDragonSoulConnectNpc_Mail_Normal[4200005] = 571149
	tDragonSoulConnectNpc_Mail_Normal[4200006] = 571150
	tDragonSoulConnectNpc_Mail_Normal[4200007] = 571151
	tDragonSoulConnectNpc_Mail_Normal[4200008] = 571152
	tDragonSoulConnectNpc_Mail_Normal[4200009] = 571153
	tDragonSoulConnectNpc_Mail_Normal[4200010] = 571154
	tDragonSoulConnectNpc_Mail_Normal[4200011] = 571155
	tDragonSoulConnectNpc_Mail_Normal[4200012] = 571156
	tDragonSoulConnectNpc_Mail_Normal[4200013] = 571157
	tDragonSoulConnectNpc_Mail_Normal[4200014] = 571158
	tDragonSoulConnectNpc_Mail_Normal[4200015] = 571159
	tDragonSoulConnectNpc_Mail_Normal[4200016] = 571160
	tDragonSoulConnectNpc_Mail_Normal[4200017] = 571161
	tDragonSoulConnectNpc_Mail_Normal[4200018] = 571162
	
	tDragonSoulConnectNpc_Mail_Normal["ExistDay"] = 30
	
--特殊服发奖
local tDragonSoulConnectNpc_Mail_Special = {}
	tDragonSoulConnectNpc_Mail_Special[1] = {571164,3320157}
	tDragonSoulConnectNpc_Mail_Special[2] = {571165,3320158}
	tDragonSoulConnectNpc_Mail_Special[3] = 7433328
	
local tDragonSoulConnectNpc_Data = {}
	tDragonSoulConnectNpc_Data["DCity"] = {}
	tDragonSoulConnectNpc_Data["DCity"]["Normal"] = 1002
	tDragonSoulConnectNpc_Data["DCity"]["NoGift"] = 10364
	--副本id
	tDragonSoulConnectNpc_Data["Instancetype"] = {}
	tDragonSoulConnectNpc_Data["Instancetype"]["Normal"] = 228
	tDragonSoulConnectNpc_Data["Instancetype"]["NoGift"] = 229
	tDragonSoulConnectNpc_Data["Instancetype"]["MapId"] = 10429
	tDragonSoulConnectNpc_Data["Instancetype"]["nPosX"] = 53
	tDragonSoulConnectNpc_Data["Instancetype"]["nPosY"] = 71
	tDragonSoulConnectNpc_Data["Instancetype"]["nGenId"] = 26788
	tDragonSoulConnectNpc_Data["Instancetype"]["nMonsterId"] = 2984
	tDragonSoulConnectNpc_Data["Instancetype"]["Effect"] = "DragonSoul_lqsk"
	tDragonSoulConnectNpc_Data["Instancetype"]["NpcEffect"] = "DragonSoul_lqjj"
	tDragonSoulConnectNpc_Data["Instancetype"]["Traptype"] = 2278
	tDragonSoulConnectNpc_Data["Instancetype"]["Traplook"] = 811
	tDragonSoulConnectNpc_Data["Instancetype"]["Trapx"] = 41
	tDragonSoulConnectNpc_Data["Instancetype"]["Trapy"] = 66
	
	--传送点
	tDragonSoulConnectNpc_Data["BoundTrans"] = {}
	tDragonSoulConnectNpc_Data["BoundTrans"][1] = {}
	tDragonSoulConnectNpc_Data["BoundTrans"][1]["MapId"] = 1002
	tDragonSoulConnectNpc_Data["BoundTrans"][1]["PosX"] = 350
	tDragonSoulConnectNpc_Data["BoundTrans"][1]["PosY"] = 422
	tDragonSoulConnectNpc_Data["BoundTrans"][2] = {}
	tDragonSoulConnectNpc_Data["BoundTrans"][2]["MapId"] = 10364
	tDragonSoulConnectNpc_Data["BoundTrans"][2]["PosX"] = 313
	tDragonSoulConnectNpc_Data["BoundTrans"][2]["PosY"] = 296
	--动态NPC
	tDragonSoulConnectNpc_Data["RefreshNpc"] = {}
	tDragonSoulConnectNpc_Data["RefreshNpc"]["Sort"] = 1
	tDragonSoulConnectNpc_Data["RefreshNpc"]["Type"] = 2
	tDragonSoulConnectNpc_Data["RefreshNpc"]["LookFace"] = 34390
	tDragonSoulConnectNpc_Data["RefreshNpc"]["Action"] = 94488079
	tDragonSoulConnectNpc_Data["RefreshNpc"]["PosX"] = 54
	tDragonSoulConnectNpc_Data["RefreshNpc"]["PosY"] = 58
	tDragonSoulConnectNpc_Data["RefreshNpc"]["Bound"] = 3
	--记录玩家相关掩码
	--存贮玩家进入副本时候的地图
	tDragonSoulConnectNpc_Data["Stc"] = {}
	tDragonSoulConnectNpc_Data["Stc"]["EventType"] = 190
	tDragonSoulConnectNpc_Data["Stc"]["DataType"] = 13
	--玩家要熔铸成功以后才能出地图
	tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"] = 190
	tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"] = 16

	tDragonSoulConnectNpc_Data["Tip"] = {}
	tDragonSoulConnectNpc_Data["Tip"][1] = 4200001
	tDragonSoulConnectNpc_Data["Tip"][2] = 4200002
	tDragonSoulConnectNpc_Data["Tip"][3] = 4200003
	tDragonSoulConnectNpc_Data["Tip"][4] = 4200004
	tDragonSoulConnectNpc_Data["Tip"][5] = 4200005
	tDragonSoulConnectNpc_Data["Tip"][6] = 4200006
	tDragonSoulConnectNpc_Data["Tip"][7] = 4200007
	tDragonSoulConnectNpc_Data["Tip"][8] = 4200008
	tDragonSoulConnectNpc_Data["Tip"][9] = 4200009
	tDragonSoulConnectNpc_Data["Tip"][10] = 4200010
	tDragonSoulConnectNpc_Data["Tip"][11] = 4200011
	tDragonSoulConnectNpc_Data["Tip"][12] = 4200012
	
local tDragonSoulConnectNpc_Log = {}
	-- 放入灵珠
tDragonSoulConnectNpc_Log["DeleteDragen"] = "0,0,%d,%d,12001292,1[1],0,0"

--读条
local tDragonSoulConnectNpc_Activity = {}
tDragonSoulConnectNpc_Activity["Second"] = 2
tDragonSoulConnectNpc_Activity["Action"] = 100

--传送出地图播放光效
local tDragonSoulConnectNpc_Effect = {}
tDragonSoulConnectNpc_Effect[1] = {}
tDragonSoulConnectNpc_Effect[1]["EffectObj"] = "self"
tDragonSoulConnectNpc_Effect[1]["Effect"] = "DragonSoul_rhcg"
tDragonSoulConnectNpc_Effect[2] = {}
tDragonSoulConnectNpc_Effect[2]["EffectObj"] = "self"
tDragonSoulConnectNpc_Effect[2]["Effect"] = "DragonSoul_rhsb"

----------------------------------逻辑部分配置----------------------------------

--怪的光效设置
function DragonSoulConnectNpc_FirstRecastLoad(nMonsterId)

	local nNewUserId = Get_UserId()
	---玩家计时开始掩码置1
	local nEventype = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
	local nDatatype = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
	Task_SetStatistic(nEventype,nDatatype,1,1,nNewUserId)
	Task_SetStcTimestamp(nEventype,nDatatype,0,nNewUserId)
	
	--怪
	local nSeconds = tDragonSoulConnectNpc_Activity["Second"]
	local nMapid = Get_UserMapId(nNewUserId)
	local nPosx = Get_MonsterPosX()
	local nPosy = Get_MonsterPosY()
	local sEffect = tDragonSoulConnectNpc_Data["Instancetype"]["Effect"]
	Map_Effect(nMapid,nPosx,nPosy,sEffect)
	local sFunc = "DragonSoulConnectNpc_Monster</N>"..nMonsterId.. "</N>".. nNewUserId
	--计时器
	User_SetTimer(nSeconds,sFunc,0)
	
end

-- 杀怪融魂(计时器)
function DragonSoulConnectNpc_RecastLoad(nMonsterId,nNewUserId)
	local nSeconds = tDragonSoulConnectNpc_Activity["Second"]
	local nMapid = Get_UserMapId(nNewUserId)
	local sFunc = "DragonSoulConnectNpc_Monster</N>".. nMonsterId .."</N>".. nNewUserId

	local sNpcEffect = tDragonSoulConnectNpc_Data["Instancetype"]["NpcEffect"]
	
	--升龙鼎
	local nNpcPosx = tDragonSoulConnectNpc_Data["RefreshNpc"]["PosX"]
	local nNpcPosy = tDragonSoulConnectNpc_Data["RefreshNpc"]["PosY"]
	Map_Effect(nMapid,nNpcPosx,nNpcPosy,sNpcEffect)
	
	--计时器
	User_SetTimer(nSeconds,sFunc,0,nNewUserId)
	
end

-- 通用播放光效
function DragonSoulConnectNpc_AddEffect(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local sObj = tDragonSoulConnectNpc_Effect[nIndex]["EffectObj"]
	local sEffect = tDragonSoulConnectNpc_Effect[nIndex]["Effect"]
	
	User_EffectAdd(sObj,sEffect,nNowUserId)
end


--怪物杀死怪物掉落相关物品
function DragonSoulConnectNpc_Monster(nMonsterId,nNewUserId)
	
	local nUserId = nNewUserId
	local nEventType = tDragonSoulConnectNpc_Data["Stc"]["EventType"]
	local nDataType = tDragonSoulConnectNpc_Data["Stc"]["DataType"]
	
	local nEventypeRead = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
	local nDatatypeRead = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
	
	local nStcTip = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	local nItemId = tDragonSoulConnectNpc_Data["Tip"][nStcTip]
	
	local nDragenId = 1
	--若玩家如今背包中没有物品则直接传送回原地图
	if not Item_ChkMulItem(nItemId,nItemId,2,0,0,nUserId) then
		User_TalkChannel2005(string.format(tDragonSoulConnectNpc_Text["105"]["NoItemDragen"],nStcTip),nUserId)
		
		---玩家计时结束掩码置0
		Task_SetStatistic(nEventypeRead,nDatatypeRead,0,1,nUserId)
		Task_SetStcTimestamp(nEventypeRead,nDatatypeRead,0,nUserId)
		
		--传送出副本
		DragonSoulConnectNpc_Leadout(nUserId)
		return
	end
	
	--判断玩家背包空间是否充足
	--1.足够直接塞玩家背包
	--2.不够塞发邮件
	
	local tTotalAward = CommonFunc_Copy(tDragonSoulConnectNpc_Reward)
	
	--活动时间内不给经验，给转盘
	if tTotalAward[nItemId][6]["RewardItem"] ~= nil then
		if Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
			tTotalAward[nItemId][6]["RewardExpTime"] = nil
		else
			tTotalAward[nItemId][6]["RewardItem"] = nil
		end
	end
	
	local flat,tNum = Probabil_RandomAward(tTotalAward,nItemId)
	local nReward = tNum[1]["tAward"][1]["Item_1"]
	--玩家是否获得经验
	-- local nExperience = tNum[1]["tAward"][1]["RewardExpTime"]
	
	--得到nSuccess：5,6都是失败的
	local nSuccess = nReward[1]
	--玩家获得的物品
	local nItemIdGet = nReward[2]
	--玩家是否有可能获得额外的轮盘
	local nRountione = nReward[3]
	
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		nDragenId = 2
	end
	
	local nEffectflash = 1
	--给玩家身上添加光效
	if nSuccess >= 5 and nSuccess <= 6 then
		nEffectflash = 2
	end
	DragonSoulConnectNpc_AddEffect(nEffectflash,nUserId)
	
	--固定扣除两个
	--失败的情况给经验，这个都直接给不判断背包空间
	if nSuccess == 6 then
		
		
		if Item_ChkMulItem(nItemId,nItemId,2,0,0,nUserId) then
			Item_DelMulItem(nItemId,nItemId,2,0,0,nUserId)
			
			
			--融合阶段
			--User_AddProcessTaskSchedule(1031,0,1,nUserId)
			
			
			
			
			-- 贵重物品统计
			if nItemId >= 4200001 and nItemId <= 4200018 then
				Sys_DecNosuchStatisticCount(352,nItemId,2)
			end
			local sDellog = string.format(tDragonSoulConnectNpc_Log["DeleteDragen"],nItemId,2)
			Sys_SaveActionFestivalLog(sDellog,nUserId)
			
			-- 十八变
			EighteenChanges_Fusion(nItemId,1,0,nUserId)
			
			if tNum[1]["tAward"][1]["RewardExpTime"] ~= nil then
				--玩家经验未满才给经验，满了啥不给
				local nUserLev = Get_UserLevel(nUserId)
				-- if nUserLev < 150 and (not User_ChkSurplusExp(nUserId)) then
				if nUserLev < G_User_MaxLev then
					local nValue = tNum[1]["tAward"][1]["RewardExpTime"]["Value"]
					--local nFullvalue = nExperience["FullValue"]
					local tAward = CommonFunc_Copy(tDragonSoulConnectNpc_Experiences["Experience"])
					
					tAward["RewardExpTime"]["Value"] = nValue
					--tAward["RewardExpTime"]["FullValue"] = nFullvalue
					RewardTemplate_UseItemAndMsg(tAward,nUserId)
				end
			elseif tNum[1]["tAward"][1]["RewardItem"] ~= nil then
				--给转盘
				RewardTemplate_Reward(tNum[1]["tAward"][1],nUserId)
			end
			
			--在激情服，11层全输额外给一个中级轮盘
			if nDragenId == 2 and nRountione ~= nil then
				local tTableSpecial = tDragonSoulConnectNpc_Rountine[3] 
				local nSpaceSpecial = RewardTemplate_GetRewardSpace(tTableSpecial,nUserId)
				
				local nRountineItem = tDragonSoulConnectNpc_Mail_Special[nRountione][2]
				local sName = Get_ItemtypeName(nRountineItem)
				
				--玩家背包空间不足邮件发奖
				if not User_CheckLeftSpace(nSpaceSpecial,nUserId) then
					--发送邮件
					DragonSoulConnectNpc_Special_Mail(0,nRountione,nUserId)
					Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text["ContentSpecialEleven"],sName),nil,nil,nUserId)
				else
					RewardTemplate_UseItemAndMsg(tTableSpecial,nUserId)
					Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text[23737]["Text120"],nStcTip,sName),nil,nil,nUserId)
				end
			else
				--105提示
				Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text[23737]["Text115"],2,nStcTip),nil,nil,nUserId)
			end
			
		end
		
		---玩家计时结束掩码置0
		Task_SetStatistic(nEventypeRead,nDatatypeRead,0,1,nUserId)
		Task_SetStcTimestamp(nEventypeRead,nDatatypeRead,0,nUserId)
		
		--传送出副本
		DragonSoulConnectNpc_Leadout(nUserId)
		
		--battlepass加进度
		-- BattlePassTaskTest_TaskAddProgress(11,1,nUserId)
		
		--战令积分返利
		BattlePassTaskTest_ScoreAdd(1,nItemId,nUserId)
		
		return
		
	end
	
	--玩家失败情况
	--判断新老服
	--判断背包空间
	local nNewItemName = Get_ItemtypeName(nItemIdGet)
	
	--固定扣除1个
	if nSuccess == 5 then
		
		if Item_ChkMulItem(nItemId,nItemId,2,0,0,nUserId) then
			
			Item_DelMulItem(nItemId,nItemId,2,0,0,nUserId)
			
			--融合阶段
			--User_AddProcessTaskSchedule(1031,0,1,nUserId)
			
			-- 贵重物品统计
			if nItemId >= 4200001 and nItemId <= 4200018 then
				Sys_DecNosuchStatisticCount(352,nItemId,2)
			end
			local sDellog = string.format(tDragonSoulConnectNpc_Log["DeleteDragen"],nItemId,2)
			Sys_SaveActionFestivalLog(sDellog,nUserId)
			-- 十八变
			EighteenChanges_Fusion(nItemId,1,0,nUserId)
			
			local tTable = {}
			--激情服中且是11阶-12阶
			if nDragenId == 2 and nRountione ~= nil then
			
				local nRountineItem = tDragonSoulConnectNpc_Mail_Special[nRountione][2]
				local sName = Get_ItemtypeName(nRountineItem)
				tTable = tDragonSoulConnectNpc_Rountine[nRountione]
				--判断背包空间
				local nSpace = RewardTemplate_GetRewardSpace(tTable,nUserId)
				if not User_CheckLeftSpace(nSpace,nUserId) then
					--发送邮件
					DragonSoulConnectNpc_Special_Mail(nItemId,nRountione,nUserId)
					Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text[23737]["Text119"],nStcTip,sName),nil,nil,nUserId)
				else
					--背包空间足够，塞玩家背包
					--105提示
					RewardTemplate_UseItemAndMsg(tTable,nUserId)
					Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text[23737]["Text116"],nStcTip,sName),nil,nil,nUserId)
				end
				
			else
				tTable = CommonFunc_Copy(tDragonSoulConnectNpc_NormalItemId["Award"])
				tTable["RewardItem"][1]["Id"] = nItemId

				RewardTemplate_UseItemAndMsg(tTable,nUserId)
				Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text[23737]["Text118"],nStcTip),nil,nil,nUserId)
				
			end
			
		end
		
		---玩家计时结束掩码置0
		Task_SetStatistic(nEventypeRead,nDatatypeRead,0,1,nUserId)
		Task_SetStcTimestamp(nEventypeRead,nDatatypeRead,0,nUserId)
		
		--传送出副本
		DragonSoulConnectNpc_Leadout(nUserId)
		--battlepass加进度
		-- BattlePassTaskTest_TaskAddProgress(11,1,nUserId)
		
		--战令积分返利
		BattlePassTaskTest_ScoreAdd(1,nItemId,nUserId)
		
		return
	end
	
	--排除以上情况玩家融魂成功
	if Item_ChkMulItem(nItemId,nItemId,2,0,0,nUserId) then
		
		Item_DelMulItem(nItemId,nItemId,2,0,0,nUserId)
		
		--融合阶段
		--User_AddProcessTaskSchedule(1031,0,1,nUserId)
		
		-- 贵重物品统计
		if nItemId >= 4200001 and nItemId <= 4200018 then
			Sys_DecNosuchStatisticCount(352,nItemId,2)
		end
		local sDellog = string.format(tDragonSoulConnectNpc_Log["DeleteDragen"],nItemId,2)
		Sys_SaveActionFestivalLog(sDellog,nUserId)
		-- 十八变
		EighteenChanges_Fusion(nItemId,2,nItemIdGet,nUserId)
		
		local tNoramlTable = CommonFunc_Copy(tDragonSoulConnectNpc_NormalItemId["Award"])
		tNoramlTable["RewardItem"][1]["Id"] = nItemIdGet
		local nSpace = RewardTemplate_GetRewardSpace(tNoramlTable,nUserId)
		if not User_CheckLeftSpace(nSpace,nUserId) then 
			--发送邮件
			DragonSoulConnectNpc_Mail(nItemIdGet,nUserId)
			Sys_MsgBox(tDragonSoulConnectNpc_Text[23737]["Text117"],nil,nil,nUserId)
		else
			RewardTemplate_UseItemAndMsg(tNoramlTable,nUserId)
			Sys_MsgBox(string.format(tDragonSoulConnectNpc_Text[23737]["Text114"],nNewItemName),nil,nil,nUserId)
		end
		
	end
	
	--大奖励出全服公告
	if nSuccess >= 1 and nSuccess <= 2 then
		local nSname = Get_UserName(nUserId)
		local nRankTip = nStcTip
		local sWriteText = tDragonSoulConnectNpc_Text["105"]["Broadcast"]
		if nDragenId == 2 then
			sWriteText = tDragonSoulConnectNpc_Text["105"]["BroadcastSpecail"]
		end
		
		local sWriteTextAll = string.format(sWriteText,nSname,nRankTip,nNewItemName)
		Sys_TalkBroadcast(sWriteTextAll)
	end
	--融合大成功阶段
	--if nSuccess >= 1 and nSuccess <= 3 then
		--User_AddProcessTaskSchedule(1033,0,1,nUserId)
	--end
	--融合成功阶段
	--if nSuccess == 4 then
		--User_AddProcessTaskSchedule(1032,0,1,nUserId)
	--end
	--融合提升总阶数
	local nUplev = nItemIdGet - nItemId
	--if nUplev > 0 then
		--User_AddProcessTaskSchedule(1034,0,nUplev,nUserId)
	--end
	
	if nUplev >= 3 then
		local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>23735"
		local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(0),Get_UserName(nUserId),Get_ItemtypeName(nItemId),Get_ItemtypeName(nItemIdGet),sFun)
		if nItemId >= 4200003 then
			Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
		elseif nItemId >= 4200002 then
			if nItemIdGet >= 4200004 then
				Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
			else
				Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
			end
		end
	elseif nUplev >= 0 then
		local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>23735"
		local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(0),Get_UserName(nUserId),Get_ItemtypeName(nItemId),Get_ItemtypeName(nItemIdGet),sFun)
		if nItemIdGet >= 4200004 then
			Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
		elseif nItemIdGet >= 4200003 then
			Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
		end
	end
	
	---玩家计时结束掩码置0
	Task_SetStatistic(nEventypeRead,nDatatypeRead,0,1,nUserId)
	Task_SetStcTimestamp(nEventypeRead,nDatatypeRead,0,nUserId)
	
	--传送出副本
	DragonSoulConnectNpc_Leadout(nUserId)
	--battlepass加进度
	-- BattlePassTaskTest_TaskAddProgress(11,1,nUserId)
	return
end

-- 发邮件一般物品函数
function DragonSoulConnectNpc_Mail(nSoulId,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	
	local nActionId= tDragonSoulConnectNpc_Mail_Normal[nSoulId]
	
	-- 发邮件
	if nActionId ~= nil then
		local sSoulName = Get_ItemtypeName(nSoulId)
		local nExistDay = tDragonSoulConnectNpc_Mail_Normal["ExistDay"]
		local sSender = tDragonSoulConnectNpc_Text["Sender"]
		local sTitle = tDragonSoulConnectNpc_Text["Title"]
		local sContent = string.format(tDragonSoulConnectNpc_Text["Content"],sSoulName)
		Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		-- 贵重物品统计
		Sys_IncNosuchStatisticCount(302,nSoulId,1)
	end
end

--发邮件特殊物品
function DragonSoulConnectNpc_Special_Mail(nSoulId,nTip,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	
	local nActionId= tDragonSoulConnectNpc_Mail_Special[nTip][1]
	
	if nSoulId == 0 then
		nActionId = tDragonSoulConnectNpc_Mail_Special[3]
	end
	
	-- 发邮件
	if nActionId ~= nil then

		local sSoulName = Get_ItemtypeName(tDragonSoulConnectNpc_Mail_Special[nTip][2])
		local nExistDay = tDragonSoulConnectNpc_Mail_Normal["ExistDay"]
		local sSender = tDragonSoulConnectNpc_Text["FuseSender"]
		local sTitle = tDragonSoulConnectNpc_Text["Title"]
		local sContent = ""
		if nSoulId ~= 0 then
			local sFirstName = Get_ItemtypeName(nSoulId)
			sContent = string.format(tDragonSoulConnectNpc_Text["ContentSpecial"],sFirstName,sSoulName)
		else
			sContent = string.format(tDragonSoulConnectNpc_Text["ContentSpecialEleven"],sSoulName)
		end
		Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		-- 贵重物品统计
		if nSoulId >= 4200001 and nSoulId <= 4200018 then
			Sys_IncNosuchStatisticCount(302,nSoulId,1)
		end
	end
end


--动态NPC接入
function DragonSoulConnectNpc_LinkNpc(nNpcId)
	LinkNpcGossipFunc_New(nNpcId, "1")
end

--刷新NPC
function DragonSoulConnectNpc_RefreshNpc(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local sName = tDragonSoulConnectNpc_Text["Sender"]
	local nSort = tDragonSoulConnectNpc_Data["RefreshNpc"]["Sort"]
	local nType = tDragonSoulConnectNpc_Data["RefreshNpc"]["Type"]
	local nLookFace = tDragonSoulConnectNpc_Data["RefreshNpc"]["LookFace"]
	local nAction = tDragonSoulConnectNpc_Data["RefreshNpc"]["Action"]
	local nPosX = tDragonSoulConnectNpc_Data["RefreshNpc"]["PosX"]
	local nPosY = tDragonSoulConnectNpc_Data["RefreshNpc"]["PosY"]
	
	return Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--进入副本
function DragonSoulConnectNpc_IntoInstance(nTip)
	
	local nItemId = tDragonSoulConnectNpc_Data["Tip"][nTip]
	if not Item_ChkMulItem(nItemId,nItemId,2) then
		User_TalkChannel2005(string.format(tDragonSoulConnectNpc_Text["105"]["NoItemDragen"],nTip))
		return
	end
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 1 then
		Sys_MsgBox(tDragonSoulNpc_Text["105"]["HaveTeam"])
		return
	end
	
	-- 判断激情服
	local nCityId = tDragonSoulConnectNpc_Data["DCity"]["Normal"]
	local sText = tDragonSoulNpc_Text["105"]["NotInTwinCity"]
	local nInstanceType = tDragonSoulConnectNpc_Data["Instancetype"]["Normal"]
	
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tDragonSoulConnectNpc_Data["DCity"]["NoGift"]
		sText = tDragonSoulNpc_Text["105"]["NotInMarket"]
		nInstanceType = tDragonSoulConnectNpc_Data["Instancetype"]["NoGift"]
	end
	
	-- 不在双龙城
	local nMapId = Get_UserMapId()
	if nMapId ~= nCityId then
		Sys_MsgBox(sText)
		return
	end
	
	local nUserId = Get_UserId()
	
	--进入副本
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		
		--记录玩家相关掩码
		local nEvent = tDragonSoulConnectNpc_Data["Stc"]["EventType"]
		local nData = tDragonSoulConnectNpc_Data["Stc"]["DataType"]
		
		Task_SetStatistic(nEvent,nData,nTip,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		
	---玩家计时开始掩码置0
		local nEventype = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
		local nDatatype = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
		
		Task_SetStatistic(nEventype,nDatatype,0,1,nUserId)
		Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
		
		--刷新NPC
		DragonSoulConnectNpc_RefreshNpc(nUserId)
		nMapId = Get_UserMapId()
		--副本刷新怪物
		local nPosX = tDragonSoulConnectNpc_Data["Instancetype"]["nPosX"]
		local nPosY = tDragonSoulConnectNpc_Data["Instancetype"]["nPosY"]
		local nGenId = tDragonSoulConnectNpc_Data["Instancetype"]["nGenId"]
		local nMonsterId = tDragonSoulConnectNpc_Data["Instancetype"]["nMonsterId"]
		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		
		--创建陷阱
		local nNewTrapType = tDragonSoulConnectNpc_Data["Instancetype"]["Traptype"]
		local nNewTrapLook = tDragonSoulConnectNpc_Data["Instancetype"]["Traplook"]
		local nNewPosX = tDragonSoulConnectNpc_Data["Instancetype"]["Trapx"]
		local nNewPosY = tDragonSoulConnectNpc_Data["Instancetype"]["Trapy"]
		Trap_CreateMapTrap(nNewTrapType,nNewTrapLook,0,nMapId,nNewPosX,nNewPosY,1,1)
		
		--公告进入地图
		local sTextEnter = string.format(tDragonSoulConnectNpc_Text["105"]["EnterMap"],nTip)
		Sys_MsgBox(sTextEnter)
		User_TalkChannel2005(sTextEnter)
	end
end


--跳转网页
function DragonSoulConnectNpc_OpenWel()
	User_SendWebPage(tDragonSoulConnectNpc_Stcwel["Wel"])
end


--跳转回双龙城
function DragonSoulConnectNpc_BoundTrans(nIndex,nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	local nEvent = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
	local nType = tDragonSoulConnectNpc_Data["Stc"]["EventTypeEnter"]
	if Task_ChkStcValue(nEvent,nType,"==",1,nUserId) then
		local sText = tDragonSoulConnectNpc_Text["Loading"]
		Sys_MsgBox(sText,nil,nil,nUserId)
		return false
	end
	
	
	if tDragonSoulConnectNpc_Data["BoundTrans"][nIndex] == nil then
		return
	end
	
	local nMapId = tDragonSoulConnectNpc_Data["BoundTrans"][nIndex]["MapId"]
	local nBoundX = tDragonSoulConnectNpc_Data["BoundTrans"][nIndex]["PosX"]
	local nBoundY = tDragonSoulConnectNpc_Data["BoundTrans"][nIndex]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
end

--副本陷阱返回
function DragonSoulConnectNpc_OpenWel_GoBackToCity(nTrapId,nTrapType)
	local sText = tDragonSoulConnectNpc_Text["105"]["GoBackTwinCity"]
	local sFunc = "DragonSoulConnectNpc_BoundTrans</N>1"
	
	if SpecialServer_ChkNoGiftServer() then
		sText = tDragonSoulConnectNpc_Text["105"]["SpecialGoBackTwinCity"]
		sFunc = "DragonSoulConnectNpc_BoundTrans</N>2"
	end
	
	local nUserId = Get_UserId()
	Sys_MsgBox(sText,sFunc,nil,nUserId)
end

--杀怪后强行传出副本
function DragonSoulConnectNpc_Leadout(nUserId)
	local nTip = 1
	if SpecialServer_ChkNoGiftServer() then
		nTip = 2
	end
	DragonSoulConnectNpc_BoundTrans(nTip,nUserId)
end

----------------------------------模块部分配置----------------------------------
-- 【融魂】铸龙台
--介绍游戏规则以及调整网页
tNpcFace[3439] = 2093
tNpcGossip[23737] = tNpcGossip[23737] or DefaultNpc:new{}
tNpcGossip[23737]["OptionHidden"] = 1
tNpcGossip[23737]["DialogueText"] = tDragonSoulConnectNpc_Text[23737]

tNpcGossip[23737]["Text1-1"] = {111}
tNpcGossip[23737]["tOption1-1"] = {1,2}
tNpcGossip[23737]["OptionPoint1"] = "2-1"

tNpcGossip[23737]["Text2-1"] = {112}
tNpcGossip[23737]["tOption2-1"] = {3,4,5}
tNpcGossip[23737]["OptionPoint3"] = "3-1"
tNpcGossip[23737]["OptionFunc4"] = "DragonSoulConnectNpc_OpenWel"
tNpcGossip[23737]["OptionPoint5"] = "1"

tNpcGossip[23737]["Text3-1"] = {113}
tNpcGossip[23737]["tOption3-1"] = {7}
tNpcGossip[23737]["OptionPoint7"] = "1"


----------------------------------怪物部分----------------------------------
tMonster[2984] = tMonster[2984] or {}
tMonster[2984]["tFunction"] = tMonster[2984]["tFunction"] or {}
table.insert(tMonster[2984]["tFunction"],DragonSoulConnectNpc_FirstRecastLoad)

----------------------------------陷阱部分----------------------------------
tTrap[2278] = tTrap[2278] or {}
tTrap[2278]["Function"] = function(nTrapId,nTrapType)
	DragonSoulConnectNpc_OpenWel_GoBackToCity(nTrapId,nTrapType)
end


