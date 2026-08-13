------------------------------------------------------------------------------------
--Name:			170511[英文征服][活动脚本]6月斋月大促活动
--Creator:		陈磊
--Created:		2017/05/11
------------------------------------------------------------------------------------

--命名 tRamadanSale_
--logid 12000722

--常量表
local tRamadanSale_Cont = {}
	tRamadanSale_Cont["ActivityTime"] =  "2017-06-01 00:00 2017-06-22 23:59"
	tRamadanSale_Cont["nNpcId"] = 20647
	tRamadanSale_Cont["nGlobalId"] = 51548
	
local tRamadanSale_Card = {}
	tRamadanSale_Card[1] = {3303324,3303328}
	tRamadanSale_Card[2] = {3303324,3303328,3303326}
	tRamadanSale_Card[3] = {3303324,3303328,3303326,3303327}
	tRamadanSale_Card[4] = {3303324,3303328,3303326,3303325}
	tRamadanSale_Card[5] = {3303324,3303328,3303326,3303325,3303327}
	tRamadanSale_Card[6] = {3303324,3303328,3303326,3303325,3303327}
--奖励表配置
local tRamadanSale_RewardItem = {}
	--斋月回气丹礼包
	tRamadanSale_RewardItem[3303315] = {}
	tRamadanSale_RewardItem[3303315]["Log"] = "0,0,3303084,1,12000722,2,729242[3303323],40[8]"
	tRamadanSale_RewardItem[3303315]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303315]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303315]["RewardItem"][1]["Id"] = 3303374
	tRamadanSale_RewardItem[3303315]["RewardItem"][1]["Attr"] = "0 5"
	tRamadanSale_RewardItem[3303315]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303315]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303315]["RewardItem"][2]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[3303315]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303315]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303315]["DeleteItem"][1]["Id"] = 3303315
	--斋月小抽奖券礼包
	tRamadanSale_RewardItem[3303316] = {}
	tRamadanSale_RewardItem[3303316]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303316]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303316]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303316]["RewardItem"][1]["Id"] = 711504
	tRamadanSale_RewardItem[3303316]["RewardItem"][1]["Attr"] = "0 300"
	tRamadanSale_RewardItem[3303316]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303316]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303316]["RewardItem"][2]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[3303316]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303316]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303316]["DeleteItem"][1]["Id"] = 3303316
	--斋月固化石礼包
	tRamadanSale_RewardItem[3303317] = {}
	tRamadanSale_RewardItem[3303317]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303317]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303317]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303317]["RewardItem"][1]["Id"] = 723695
	tRamadanSale_RewardItem[3303317]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303317]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303317]["RewardItem"][2]["Id"] = 723694
	tRamadanSale_RewardItem[3303317]["RewardItem"][2]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[3303317]["RewardItem"][3] = {}
	tRamadanSale_RewardItem[3303317]["RewardItem"][3]["Id"] = 3303323
	tRamadanSale_RewardItem[3303317]["RewardItem"][3]["Attr"] = "0 3"	
	tRamadanSale_RewardItem[3303317]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303317]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303317]["DeleteItem"][1]["Id"] = 3303317	
	--斋月金钢坚钻礼包
	tRamadanSale_RewardItem[3303318] = {}
	tRamadanSale_RewardItem[3303318]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303318]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303318]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303318]["RewardItem"][1]["Id"] = 1200005
	tRamadanSale_RewardItem[3303318]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303318]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303318]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303318]["RewardItem"][2]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[3303318]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303318]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303318]["DeleteItem"][1]["Id"] = 3303318	
	--斋月龙珠礼包
	tRamadanSale_RewardItem[3303319] = {}
	tRamadanSale_RewardItem[3303319]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303319]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303319]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303319]["RewardItem"][1]["Id"] = 720028
	tRamadanSale_RewardItem[3303319]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303319]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303319]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303319]["RewardItem"][2]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[3303319]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303319]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303319]["DeleteItem"][1]["Id"] = 3303319		
	--斋月+6赤炼石礼包
	tRamadanSale_RewardItem[3303320] = {}
	tRamadanSale_RewardItem[3303320]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303320]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303320]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303320]["RewardItem"][1]["Id"] = 730006
	tRamadanSale_RewardItem[3303320]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303320]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303320]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303320]["RewardItem"][2]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[3303320]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303320]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303320]["DeleteItem"][1]["Id"] = 3303320			
	--斋月+8赤炼石礼包
	tRamadanSale_RewardItem[3303321] = {}
	tRamadanSale_RewardItem[3303321]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303321]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303321]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303321]["RewardItem"][1]["Id"] = 730008
	tRamadanSale_RewardItem[3303321]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303321]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303321]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303321]["RewardItem"][2]["Attr"] = "0 8"	
	tRamadanSale_RewardItem[3303321]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303321]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303321]["DeleteItem"][1]["Id"] = 3303321	
	--斋月富豪包
	tRamadanSale_RewardItem[3303322] = {}
	tRamadanSale_RewardItem[3303322]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303322]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303322]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303322]["RewardItem"][1]["Id"] = 3005945
	tRamadanSale_RewardItem[3303322]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303322]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3303322]["RewardItem"][2]["Id"] = 3303323
	tRamadanSale_RewardItem[3303322]["RewardItem"][2]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[3303322]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303322]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303322]["DeleteItem"][1]["Id"] = 3303322	
	--斋月+8赤炼石礼包
	tRamadanSale_RewardItem[3303374] = {}
	tRamadanSale_RewardItem[3303374]["LogId"] = 12000722
	tRamadanSale_RewardItem[3303374]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303374]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303374]["RewardItem"][1]["Id"] = 729481
	tRamadanSale_RewardItem[3303374]["RewardItem"][1]["Attr"] = "0 8"
	tRamadanSale_RewardItem[3303374]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3303374]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3303374]["DeleteItem"][1]["Id"] = 3303374		
	
	--祈福卡大礼盒
	tRamadanSale_RewardItem[3303323] = {}
	tRamadanSale_RewardItem[3303323]["ItemChanceSum"] = 10000
	--友爱卡 30%
	tRamadanSale_RewardItem[3303323][1] = {}
	tRamadanSale_RewardItem[3303323][1]["RandomItemChanceType"] = 2
	tRamadanSale_RewardItem[3303323][1]["ItemChance"] = 3000
	tRamadanSale_RewardItem[3303323][1]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303323][1]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303323][1]["RewardItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[3303323][1]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303323][1]["Log"] = "0,0,3303323,1,12000722,2,3303324,1"
	-- 奉献 0.1% 
	tRamadanSale_RewardItem[3303323][2] = {}
	tRamadanSale_RewardItem[3303323][2]["RandomItemChanceType"] = 2
	tRamadanSale_RewardItem[3303323][2]["ItemChance"] = 10
	tRamadanSale_RewardItem[3303323][2]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303323][2]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303323][2]["RewardItem"][1]["Id"] = 3303325
	tRamadanSale_RewardItem[3303323][2]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303323][2]["Log"] = "0,0,3303323,1,12000722,2,3303325,1"
	--快乐 15%
	tRamadanSale_RewardItem[3303323][3] = {}
	tRamadanSale_RewardItem[3303323][3]["RandomItemChanceType"] = 2
	tRamadanSale_RewardItem[3303323][3]["ItemChance"] = 1500
	tRamadanSale_RewardItem[3303323][3]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303323][3]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303323][3]["RewardItem"][1]["Id"] = 3303326
	tRamadanSale_RewardItem[3303323][3]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303323][3]["Log"] = "0,0,3303323,1,12000722,2,3303326,1"
	--感恩 14.9%
	tRamadanSale_RewardItem[3303323][4] = {}
	tRamadanSale_RewardItem[3303323][4]["RandomItemChanceType"] = 2
	tRamadanSale_RewardItem[3303323][4]["ItemChance"] = 1490
	tRamadanSale_RewardItem[3303323][4]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303323][4]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303323][4]["RewardItem"][1]["Id"] = 3303327
	tRamadanSale_RewardItem[3303323][4]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303323][4]["Log"] = "0,0,3303323,1,12000722,2,3303327,1"
	--幸福 40%
	tRamadanSale_RewardItem[3303323][5] = {}
	tRamadanSale_RewardItem[3303323][5]["RandomItemChanceType"] = 2
	tRamadanSale_RewardItem[3303323][5]["ItemChance"] = 4000
	tRamadanSale_RewardItem[3303323][5]["RewardItem"] = {}
	tRamadanSale_RewardItem[3303323][5]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3303323][5]["RewardItem"][1]["Id"] = 3303328
	tRamadanSale_RewardItem[3303323][5]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanSale_RewardItem[3303323][5]["Log"] = "0,0,3303323,1,12000722,2,3303328,1"
	
	--组合1
	tRamadanSale_RewardItem[1] = {}
	tRamadanSale_RewardItem[1]["LogId"] = 12000722
	tRamadanSale_RewardItem[1]["RewardItem"] = {}
	tRamadanSale_RewardItem[1]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[1]["RewardItem"][1]["Id"] = 3003124
	tRamadanSale_RewardItem[1]["RewardItem"][1]["Attr"] = "0 10"
	tRamadanSale_RewardItem[1]["RewardStrengthValue"] = {}
	tRamadanSale_RewardItem[1]["RewardStrengthValue"]["Value"] = 500
	tRamadanSale_RewardItem[1]["DeleteItem"] = {}
	tRamadanSale_RewardItem[1]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[1]["DeleteItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[1]["DeleteItem"][2] = {}
	tRamadanSale_RewardItem[1]["DeleteItem"][2]["Id"] = 3303328
	tRamadanSale_RewardItem[1]["RewardEffect"] = {}
	tRamadanSale_RewardItem[1]["RewardEffect"]["SzObj"] = "self"
	tRamadanSale_RewardItem[1]["RewardEffect"]["Effect"] = "zf2-e128"
	--组合2
	tRamadanSale_RewardItem[2] = {}
	tRamadanSale_RewardItem[2]["LogId"] = 12000722
	tRamadanSale_RewardItem[2]["RewardItem"] = {}
	tRamadanSale_RewardItem[2]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[2]["RewardItem"][1]["Id"] = 3003126
	tRamadanSale_RewardItem[2]["RewardItem"][1]["Attr"] = "0 5"
	tRamadanSale_RewardItem[2]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[2]["RewardItem"][2]["Id"] = 730003
	tRamadanSale_RewardItem[2]["RewardItem"][2]["Attr"] = "0 1"
	tRamadanSale_RewardItem[2]["RewardItem"][3] = {}
	tRamadanSale_RewardItem[2]["RewardItem"][3]["Id"] = 3009001
	tRamadanSale_RewardItem[2]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tRamadanSale_RewardItem[2]["DeleteItem"] = {}
	tRamadanSale_RewardItem[2]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[2]["DeleteItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[2]["DeleteItem"][2] = {}
	tRamadanSale_RewardItem[2]["DeleteItem"][2]["Id"] = 3303328
	tRamadanSale_RewardItem[2]["DeleteItem"][3] = {}
	tRamadanSale_RewardItem[2]["DeleteItem"][3]["Id"] = 3303326
	tRamadanSale_RewardItem[2]["RewardEffect"] = {}
	tRamadanSale_RewardItem[2]["RewardEffect"]["SzObj"] = "self"
	tRamadanSale_RewardItem[2]["RewardEffect"]["Effect"] = "zf2-e128"	

	--组合3
	tRamadanSale_RewardItem[3] = {}
	tRamadanSale_RewardItem[3]["LogId"] = 12000722
	tRamadanSale_RewardItem[3]["RewardItem"] = {}
	tRamadanSale_RewardItem[3]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[3]["RewardItem"][1]["Id"] = 730003
	tRamadanSale_RewardItem[3]["RewardItem"][1]["Attr"] = "0 2"
	tRamadanSale_RewardItem[3]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[3]["RewardItem"][2]["Id"] = 3009001
	tRamadanSale_RewardItem[3]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"	
	tRamadanSale_RewardItem[3]["RewardItem"][3] = {}
	tRamadanSale_RewardItem[3]["RewardItem"][3]["Id"] = 720652
	tRamadanSale_RewardItem[3]["RewardItem"][3]["Attr"] = "0 3"	
	tRamadanSale_RewardItem[3]["RewardItem"][4] = {}
	tRamadanSale_RewardItem[3]["RewardItem"][4]["Id"] = 1088000
	tRamadanSale_RewardItem[3]["RewardItem"][4]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[3]["DeleteItem"] = {}
	tRamadanSale_RewardItem[3]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[3]["DeleteItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[3]["DeleteItem"][2] = {}
	tRamadanSale_RewardItem[3]["DeleteItem"][2]["Id"] = 3303328
	tRamadanSale_RewardItem[3]["DeleteItem"][3] = {}
	tRamadanSale_RewardItem[3]["DeleteItem"][3]["Id"] = 3303326
	tRamadanSale_RewardItem[3]["DeleteItem"][4] = {}
	tRamadanSale_RewardItem[3]["DeleteItem"][4]["Id"] = 3303327
	tRamadanSale_RewardItem[3]["RewardEffect"] = {}
	tRamadanSale_RewardItem[3]["RewardEffect"]["SzObj"] = "self"
	tRamadanSale_RewardItem[3]["RewardEffect"]["Effect"] = "zf2-e128"	
	
	--组合4
	tRamadanSale_RewardItem[4] = {}
	tRamadanSale_RewardItem[4]["LogId"] = 12000722
	tRamadanSale_RewardItem[4]["RewardItem"] = {}
	tRamadanSale_RewardItem[4]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[4]["RewardItem"][1]["Id"] = 711504
	tRamadanSale_RewardItem[4]["RewardItem"][1]["Attr"] = "0 30"
	tRamadanSale_RewardItem[4]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[4]["RewardItem"][2]["Id"] = 700073
	tRamadanSale_RewardItem[4]["RewardItem"][2]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[4]["RewardItem"][3] = {}
	tRamadanSale_RewardItem[4]["RewardItem"][3]["Id"] = 723694
	tRamadanSale_RewardItem[4]["RewardItem"][3]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[4]["RewardItem"][4] = {}
	tRamadanSale_RewardItem[4]["RewardItem"][4]["Id"] = 1088000
	tRamadanSale_RewardItem[4]["RewardItem"][4]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[4]["DeleteItem"] = {}
	tRamadanSale_RewardItem[4]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[4]["DeleteItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[4]["DeleteItem"][2] = {}
	tRamadanSale_RewardItem[4]["DeleteItem"][2]["Id"] = 3303328
	tRamadanSale_RewardItem[4]["DeleteItem"][3] = {}
	tRamadanSale_RewardItem[4]["DeleteItem"][3]["Id"] = 3303326
	tRamadanSale_RewardItem[4]["DeleteItem"][4] = {}
	tRamadanSale_RewardItem[4]["DeleteItem"][4]["Id"] = 3303325
	tRamadanSale_RewardItem[4]["RewardEffect"] = {}
	tRamadanSale_RewardItem[4]["RewardEffect"]["SzObj"] = "self"
	tRamadanSale_RewardItem[4]["RewardEffect"]["Effect"] = "zf2-e128"	
	
	--组合5
	tRamadanSale_RewardItem[5] = {}
	tRamadanSale_RewardItem[5]["LogId"] = 12000722
	tRamadanSale_RewardItem[5]["RewardItem"] = {}
	tRamadanSale_RewardItem[5]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[5]["RewardItem"][1]["Id"] = 711504
	tRamadanSale_RewardItem[5]["RewardItem"][1]["Attr"] = "0 60"
	tRamadanSale_RewardItem[5]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[5]["RewardItem"][2]["Id"] = 700073
	tRamadanSale_RewardItem[5]["RewardItem"][2]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[5]["RewardItem"][3] = {}
	tRamadanSale_RewardItem[5]["RewardItem"][3]["Id"] = 723694
	tRamadanSale_RewardItem[5]["RewardItem"][3]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[5]["RewardItem"][4] = {}
	tRamadanSale_RewardItem[5]["RewardItem"][4]["Id"] = 189645
	tRamadanSale_RewardItem[5]["RewardItem"][4]["Attr"] = "0 1 0 525600 1 0 0 1"	
	tRamadanSale_RewardItem[5]["RewardStrengthValue"] = {}
	tRamadanSale_RewardItem[5]["RewardStrengthValue"]["Value"] = 5000	
	tRamadanSale_RewardItem[5]["DeleteItem"] = {}
	tRamadanSale_RewardItem[5]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[5]["DeleteItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[5]["DeleteItem"][2] = {}
	tRamadanSale_RewardItem[5]["DeleteItem"][2]["Id"] = 3303328
	tRamadanSale_RewardItem[5]["DeleteItem"][3] = {}
	tRamadanSale_RewardItem[5]["DeleteItem"][3]["Id"] = 3303326
	tRamadanSale_RewardItem[5]["DeleteItem"][4] = {}
	tRamadanSale_RewardItem[5]["DeleteItem"][4]["Id"] = 3303325	
	tRamadanSale_RewardItem[5]["DeleteItem"][5] = {}
	tRamadanSale_RewardItem[5]["DeleteItem"][5]["Id"] = 3303327	
	tRamadanSale_RewardItem[5]["RewardEffect"] = {}
	tRamadanSale_RewardItem[5]["RewardEffect"]["SzObj"] = "self"
	tRamadanSale_RewardItem[5]["RewardEffect"]["Effect"] = "zf2-e128"		
	
	tRamadanSale_RewardItem[6] = {}
	tRamadanSale_RewardItem[6]["LogId"] = 12000722
	tRamadanSale_RewardItem[6]["RewardItem"] = {}
	tRamadanSale_RewardItem[6]["RewardItem"][1] = {}
	tRamadanSale_RewardItem[6]["RewardItem"][1]["Id"] = 711504
	tRamadanSale_RewardItem[6]["RewardItem"][1]["Attr"] = "0 30"
	tRamadanSale_RewardItem[6]["RewardItem"][2] = {}
	tRamadanSale_RewardItem[6]["RewardItem"][2]["Id"] = 700073
	tRamadanSale_RewardItem[6]["RewardItem"][2]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[6]["RewardItem"][3] = {}
	tRamadanSale_RewardItem[6]["RewardItem"][3]["Id"] = 723694
	tRamadanSale_RewardItem[6]["RewardItem"][3]["Attr"] = "0 1"	
	tRamadanSale_RewardItem[6]["RewardItem"][4] = {}
	tRamadanSale_RewardItem[6]["RewardItem"][4]["Id"] = 1088000
	tRamadanSale_RewardItem[6]["RewardItem"][4]["Attr"] = "0 2"	
	tRamadanSale_RewardItem[6]["DeleteItem"] = {}
	tRamadanSale_RewardItem[6]["DeleteItem"][1] = {}
	tRamadanSale_RewardItem[6]["DeleteItem"][1]["Id"] = 3303324
	tRamadanSale_RewardItem[6]["DeleteItem"][2] = {}
	tRamadanSale_RewardItem[6]["DeleteItem"][2]["Id"] = 3303328
	tRamadanSale_RewardItem[6]["DeleteItem"][3] = {}
	tRamadanSale_RewardItem[6]["DeleteItem"][3]["Id"] = 3303326
	tRamadanSale_RewardItem[6]["DeleteItem"][4] = {}
	tRamadanSale_RewardItem[6]["DeleteItem"][4]["Id"] = 3303325	
	tRamadanSale_RewardItem[6]["DeleteItem"][5] = {}
	tRamadanSale_RewardItem[6]["DeleteItem"][5]["Id"] = 3303327	
	tRamadanSale_RewardItem[6]["RewardEffect"] = {}
	tRamadanSale_RewardItem[6]["RewardEffect"]["SzObj"] = "self"
	tRamadanSale_RewardItem[6]["RewardEffect"]["Effect"] = "zf2-e128"		
	
-------------------------------------逻辑部分----------------------------------------------
function RamadanSale_RandomOpen(nItemId)
	if not RewardTemplate_ChkRandomSpace(tRamadanSale_RewardItem,nItemId) then 
		local nSpace = RewardTemplate_GetRandomSpace(tRamadanSale_RewardItem,nItemId) 
		User_TalkChannel2005(string.format(tRamadanSale_Text[nItemId]["NoSpace"] ,nSpace))
		return 
	end 
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		RewardTemplate_NewRandom(tRamadanSale_RewardItem,nItemId) 
	end 
end 

--判断是否有卡
function RamadanSale_ChkItem(nIndex)
	local nFlag = true 
	local sItemNameList = ""
	local nNpcId = tRamadanSale_Cont["nNpcId"]
	local k = 1
	for i,v in pairs(tRamadanSale_Card[nIndex]) do
		if not Item_ChkItem(v) then
			if k ~= #tRamadanSale_Card[nIndex] then 
				sItemNameList = sItemNameList..Get_ItemtypeName(v)..","
			else 
				sItemNameList = sItemNameList..Get_ItemtypeName(v)
			end 
			nFlag = false 
		end 		
		k = k + 1
	end
	if nFlag == true then 
		LinkNpcGossipFunc_New(nNpcId,tRamadanSale_Text["Link"][nIndex])
	else 
		tNpcGossip[nNpcId]["Text311"] = string.format(tRamadanSale_Text[nNpcId]["Text311"],sItemNameList)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end 
end


--确认兑换
function RamadanSale_Sure(nIndex)
	--背包空间不足
	local nData =Get_SysDynaGlobalData(tRamadanSale_Cont["nGlobalId"] ,0)
	if nIndex == 5 then 
		if nData >= 5 then 
				nIndex = 6
		 end 
	end 
	
	local nRewardSpace = RewardTemplate_GetRewardSpace(tRamadanSale_RewardItem[nIndex]) 
	local nDelSpace =  RewardTemplate_GetDelSpace(tRamadanSale_RewardItem[nIndex]) 
	local nSpace = nRewardSpace - nDelSpace 
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tRamadanSale_Text["NoSpace"],nSpace))
		return 
	end 
	--判断物品是否存在
	local nFlag = true 
	local sItemNameList = ""
	local nNpcId = tRamadanSale_Cont["nNpcId"]
	local k = 1
	for i,v in pairs(tRamadanSale_Card[nIndex]) do
		if not Item_ChkItem(v) then
			if k ~= #tRamadanSale_Card[nIndex] then 
				sItemNameList = sItemNameList..Get_ItemtypeName(v)..","
			else 
				sItemNameList = sItemNameList..Get_ItemtypeName(v)
			end 
			nFlag = false 
		end 		
		k = k + 1
	end
	if nFlag == true then 
		if nIndex == 5 then 
			Sys_SetSynaGlobalData(tRamadanSale_Cont["nGlobalId"],0,nData+ 1)
		end 
		RewardTemplate_UseItemAndMsg(tRamadanSale_RewardItem[nIndex])
	else 
		tNpcGossip[nNpcId]["Text311"] = string.format(tRamadanSale_Text[nNpcId]["Text311"],sItemNameList)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end 
end

-----------------------------------npc模块---------------------------------------------------
tNpcFace[4804] = 112
tNpcGossip[20647] = tNpcGossip[20647] or DefaultNpc:new{}
tNpcGossip[20647]["OptionHidden"] = 1
tNpcGossip[20647]["DialogueText"] = tRamadanSale_Text[20647]

--活动时间前
tNpcGossip[20647]["Text1-1"] = {111,112,113}
tNpcGossip[20647]["tOption1-1"] = {1}
tNpcGossip[20647]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tRamadanSale_Cont["ActivityTime"])
end

tNpcGossip[20647]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20647]["tOption1-2"] = {2,3}
tNpcGossip[20647]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tRamadanSale_Cont["ActivityTime"])
end
tNpcGossip[20647]["OptionPoint2"]="2-1"

tNpcGossip[20647]["Text1-3"] = {131}
tNpcGossip[20647]["tOption1-3"] = {4}
tNpcGossip[20647]["ChkFunc1-3"] = function ()
	return CommonFunc_GetAfterActivityTime(tRamadanSale_Cont["ActivityTime"])
end

tNpcGossip[20647]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[20647]["tOption2-1"] = {5,6,7,8,9,10}
tNpcGossip[20647]["OptionFunc5"] = "RamadanSale_ChkItem</N>1" 
tNpcGossip[20647]["OptionFunc6"] = "RamadanSale_ChkItem</N>2" 
tNpcGossip[20647]["OptionFunc7"] = "RamadanSale_ChkItem</N>3" 
tNpcGossip[20647]["OptionFunc8"] = "RamadanSale_ChkItem</N>4" 
tNpcGossip[20647]["OptionFunc9"] = "RamadanSale_ChkItem</N>5" 


tNpcGossip[20647]["Text2-2"] = {221}
tNpcGossip[20647]["tOption2-2"] = {221,222}
tNpcGossip[20647]["OptionFunc221"] = "RamadanSale_Sure</N>1" 

tNpcGossip[20647]["Text2-3"] = {231}
tNpcGossip[20647]["tOption2-3"] = {231,232}
tNpcGossip[20647]["OptionFunc231"] = "RamadanSale_Sure</N>2" 

tNpcGossip[20647]["Text2-4"] = {241}
tNpcGossip[20647]["tOption2-4"] = {241,242}
tNpcGossip[20647]["OptionFunc241"] = "RamadanSale_Sure</N>3" 

tNpcGossip[20647]["Text2-5"] = {251}
tNpcGossip[20647]["tOption2-5"] = {251,252}
tNpcGossip[20647]["OptionFunc251"] = "RamadanSale_Sure</N>4" 

tNpcGossip[20647]["Text2-6"] = {261}
tNpcGossip[20647]["tOption2-6"] = {261,262}
tNpcGossip[20647]["OptionFunc261"] = "RamadanSale_Sure</N>5" 

tNpcGossip[20647]["Text3-1"] = {311,312}
tNpcGossip[20647]["tOption3-1"] = {11}

-------------------------------------物品模块----------------------------------------------
tItemFace[3303406] = 623
tItem[3303315] = tItem[3303315] or {}
tItem[3303315]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tRamadanSale_RewardItem[nItemId])
end
tItem[3303316] = tItem[3303315]
tItem[3303317] = tItem[3303315]
tItem[3303318] = tItem[3303315]
tItem[3303319] = tItem[3303315]
tItem[3303320] = tItem[3303315]
tItem[3303321] = tItem[3303315]
tItem[3303322] = tItem[3303315]
tItem[3303374] = tItem[3303315]

tItem[3303323] = tItem[3303323] or {}
tItem[3303323]["Function"] = function(nItemId,sItemName)
	RamadanSale_RandomOpen(nItemId)
end
	