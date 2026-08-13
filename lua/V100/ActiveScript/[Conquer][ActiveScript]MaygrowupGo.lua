------------------------------------------------------------------------------------
--Name:		180502[英文征服][活动脚本]5月成长冲刺活动
--Creator: 	黄啸
--Created:	2018/05/02
------------------------------------------------------------------------------------

-- 命名前缀
-- MaygrowupGo_
--------------------------------------常量部分-------------------------------------------

local tMaygrowupGo_ActivityTime = {}
tMaygrowupGo_ActivityTime["BeforeTime"] = tActivityTime["MaygrowupGo"]["BeforeTime"]
tMaygrowupGo_ActivityTime["ActivityTime"] = tActivityTime["MaygrowupGo"]["ActivityTime"]
tMaygrowupGo_ActivityTime["ItemId"] = {}
--炼气
tMaygrowupGo_ActivityTime["ItemId"][3308745] = tActivityTime["MaygrowupGo"][3308745]
tMaygrowupGo_ActivityTime["ItemId"][3308847] = tActivityTime["MaygrowupGo"][3308847]
tMaygrowupGo_ActivityTime["ItemId"][3308848] = tActivityTime["MaygrowupGo"][3308848]
tMaygrowupGo_ActivityTime["ItemId"][3308849] = tActivityTime["MaygrowupGo"][3308849]
tMaygrowupGo_ActivityTime["ItemId"][3308850] = tActivityTime["MaygrowupGo"][3308850]
tMaygrowupGo_ActivityTime["ItemId"][3308851] = tActivityTime["MaygrowupGo"][3308851]
tMaygrowupGo_ActivityTime["ItemId"][3308852] = tActivityTime["MaygrowupGo"][3308852]
--练功
tMaygrowupGo_ActivityTime["ItemId"][3308746] = tActivityTime["MaygrowupGo"][3308746]
tMaygrowupGo_ActivityTime["ItemId"][3308853] = tActivityTime["MaygrowupGo"][3308853]
tMaygrowupGo_ActivityTime["ItemId"][3308854] = tActivityTime["MaygrowupGo"][3308854]
tMaygrowupGo_ActivityTime["ItemId"][3308855] = tActivityTime["MaygrowupGo"][3308855]
tMaygrowupGo_ActivityTime["ItemId"][3308856] = tActivityTime["MaygrowupGo"][3308856]
tMaygrowupGo_ActivityTime["ItemId"][3308857] = tActivityTime["MaygrowupGo"][3308857]
tMaygrowupGo_ActivityTime["ItemId"][3308858] = tActivityTime["MaygrowupGo"][3308858]


local tMaygrowupGo_Opengift = {}
	tMaygrowupGo_Opengift[3308702] = {}
	tMaygrowupGo_Opengift[3308702]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308702]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308702]["RewardItem"][1]["Id"] = 3308737
	tMaygrowupGo_Opengift[3308702]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308702]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308702]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308702]["RewardItem"][2]["Attr"] = "0 5"
	tMaygrowupGo_Opengift[3308702]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308702]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308702]["DeleteItem"][1]["Id"] = 3308702
	tMaygrowupGo_Opengift[3308702]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308703] = {}
	tMaygrowupGo_Opengift[3308703]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308703]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308703]["RewardItem"][1]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308703]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308703]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308703]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308703]["RewardItem"][2]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308703]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308703]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308703]["DeleteItem"][1]["Id"] = 3308703
	tMaygrowupGo_Opengift[3308703]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308704] = {}
	tMaygrowupGo_Opengift[3308704]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308704]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308704]["RewardItem"][1]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308704]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308704]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308704]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308704]["RewardItem"][2]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308704]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308704]["RewardItem"][3]["Id"] = 700102
	tMaygrowupGo_Opengift[3308704]["RewardItem"][3]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308704]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308704]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308704]["DeleteItem"][1]["Id"] = 3308704
	tMaygrowupGo_Opengift[3308704]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308705] = {}
	tMaygrowupGo_Opengift[3308705]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308705]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308705]["RewardItem"][1]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308705]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308705]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308705]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308705]["RewardItem"][2]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308705]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308705]["RewardItem"][3]["Id"] = 3001063
	tMaygrowupGo_Opengift[3308705]["RewardItem"][3]["Attr"] = "0 2"
	tMaygrowupGo_Opengift[3308705]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308705]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308705]["DeleteItem"][1]["Id"] = 3308705
	tMaygrowupGo_Opengift[3308705]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308706] = {}
	tMaygrowupGo_Opengift[3308706]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308706]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308706]["RewardItem"][1]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308706]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308706]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308706]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308706]["RewardItem"][2]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308706]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308706]["RewardItem"][3]["Id"] = 723694
	tMaygrowupGo_Opengift[3308706]["RewardItem"][3]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308706]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308706]["RewardItem"][4]["Id"] = 3308871
	tMaygrowupGo_Opengift[3308706]["RewardItem"][4]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308706]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308706]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308706]["DeleteItem"][1]["Id"] = 3308706
	tMaygrowupGo_Opengift[3308706]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308707] = {}
	tMaygrowupGo_Opengift[3308707]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308707]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308707]["RewardItem"][1]["Id"] = 3308739
	tMaygrowupGo_Opengift[3308707]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308707]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308707]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308707]["RewardItem"][2]["Attr"] = "0 20"
	tMaygrowupGo_Opengift[3308707]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308707]["RewardItem"][3]["Id"] = 1088000
	tMaygrowupGo_Opengift[3308707]["RewardItem"][3]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308707]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308707]["RewardItem"][4]["Id"] = 3306370
	tMaygrowupGo_Opengift[3308707]["RewardItem"][4]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308707]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308707]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308707]["DeleteItem"][1]["Id"] = 3308707
	tMaygrowupGo_Opengift[3308707]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308708] = {}
	tMaygrowupGo_Opengift[3308708]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308708]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308708]["RewardItem"][1]["Id"] = 3308739
	tMaygrowupGo_Opengift[3308708]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308708]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308708]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308708]["RewardItem"][2]["Attr"] = "0 20"
	tMaygrowupGo_Opengift[3308708]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308708]["RewardItem"][3]["Id"] = 730005
	tMaygrowupGo_Opengift[3308708]["RewardItem"][3]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308708]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308708]["RewardItem"][4]["Id"] = 3306370
	tMaygrowupGo_Opengift[3308708]["RewardItem"][4]["Attr"] = "0 3 3"
	tMaygrowupGo_Opengift[3308708]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308708]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308708]["DeleteItem"][1]["Id"] = 3308708
	tMaygrowupGo_Opengift[3308708]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308709] = {}
	tMaygrowupGo_Opengift[3308709]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308709]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308709]["RewardItem"][1]["Id"] = 3001060
	tMaygrowupGo_Opengift[3308709]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308709]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308709]["RewardItem"][2]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308709]["RewardItem"][2]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308709]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308709]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308709]["DeleteItem"][1]["Id"] = 3308709
	tMaygrowupGo_Opengift[3308709]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308710] = {}
	tMaygrowupGo_Opengift[3308710]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308710]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308710]["RewardItem"][1]["Id"] = 3007392
	tMaygrowupGo_Opengift[3308710]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308710]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308710]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308710]["RewardItem"][2]["Attr"] = "0 3"
	tMaygrowupGo_Opengift[3308710]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308710]["RewardItem"][3]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308710]["RewardItem"][3]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308710]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308710]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308710]["DeleteItem"][1]["Id"] = 3308710
	tMaygrowupGo_Opengift[3308710]["LogId"] = 12001068

	tMaygrowupGo_Opengift[3308711] = {}
	tMaygrowupGo_Opengift[3308711]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308711]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308711]["RewardItem"][1]["Id"] = 3007392
	tMaygrowupGo_Opengift[3308711]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308711]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308711]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308711]["RewardItem"][2]["Attr"] = "0 5"
	tMaygrowupGo_Opengift[3308711]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308711]["RewardItem"][3]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308711]["RewardItem"][3]["Attr"] = "0 15 3"
	tMaygrowupGo_Opengift[3308711]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308711]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308711]["DeleteItem"][1]["Id"] = 3308711
	tMaygrowupGo_Opengift[3308711]["LogId"] = 12001068

	tMaygrowupGo_Opengift[3308712] = {}
	tMaygrowupGo_Opengift[3308712]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308712]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308712]["RewardItem"][1]["Id"] = 3007392
	tMaygrowupGo_Opengift[3308712]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308712]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308712]["RewardItem"][2]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308712]["RewardItem"][2]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308712]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308712]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308712]["RewardItem"][3]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308712]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308712]["RewardItem"][4]["Id"] = 3003126
	tMaygrowupGo_Opengift[3308712]["RewardItem"][4]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308712]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308712]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308712]["DeleteItem"][1]["Id"] = 3308712
	tMaygrowupGo_Opengift[3308712]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308713] = {}
	tMaygrowupGo_Opengift[3308713]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308713]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308713]["RewardItem"][1]["Id"] = 729481
	tMaygrowupGo_Opengift[3308713]["RewardItem"][1]["Attr"] = "0 2"
	tMaygrowupGo_Opengift[3308713]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308713]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308713]["RewardItem"][2]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308713]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308713]["RewardItem"][3]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308713]["RewardItem"][3]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308713]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308713]["RewardItem"][4]["Id"] = 3007392
	tMaygrowupGo_Opengift[3308713]["RewardItem"][4]["Attr"] = "0 2"
	tMaygrowupGo_Opengift[3308713]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308713]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308713]["DeleteItem"][1]["Id"] = 3308713
	tMaygrowupGo_Opengift[3308713]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308714] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"][1]["Id"] = 3007032
	tMaygrowupGo_Opengift[3308714]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308714]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"][2]["Id"] = 729481
	tMaygrowupGo_Opengift[3308714]["RewardItem"][2]["Attr"] = "0 3"
	tMaygrowupGo_Opengift[3308714]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308714]["RewardItem"][3]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308714]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"][4]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308714]["RewardItem"][4]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308714]["RewardItem"][5] = {}
	tMaygrowupGo_Opengift[3308714]["RewardItem"][5]["Id"] = 3003126
	tMaygrowupGo_Opengift[3308714]["RewardItem"][5]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308714]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308714]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308714]["DeleteItem"][1]["Id"] = 3308714
	tMaygrowupGo_Opengift[3308714]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308715] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"][1]["Id"] = 3007032
	tMaygrowupGo_Opengift[3308715]["RewardItem"][1]["Attr"] = "0 2"
	tMaygrowupGo_Opengift[3308715]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"][2]["Id"] = 729481
	tMaygrowupGo_Opengift[3308715]["RewardItem"][2]["Attr"] = "0 3"
	tMaygrowupGo_Opengift[3308715]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308715]["RewardItem"][3]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308715]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"][4]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308715]["RewardItem"][4]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308715]["RewardItem"][5] = {}
	tMaygrowupGo_Opengift[3308715]["RewardItem"][5]["Id"] = 3306370
	tMaygrowupGo_Opengift[3308715]["RewardItem"][5]["Attr"] = "0 3 3"
	tMaygrowupGo_Opengift[3308715]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308715]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308715]["DeleteItem"][1]["Id"] = 3308715
	tMaygrowupGo_Opengift[3308715]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308716] = {}
	tMaygrowupGo_Opengift[3308716]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308716]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308716]["RewardItem"][1]["Id"] = 730002
	tMaygrowupGo_Opengift[3308716]["RewardItem"][1]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308716]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308716]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308716]["DeleteItem"][1]["Id"] = 3308716
	tMaygrowupGo_Opengift[3308716]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308717] = {}
	tMaygrowupGo_Opengift[3308717]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308717]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308717]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308717]["RewardItem"][1]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308717]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308717]["RewardItem"][2]["Id"] = 3305396
	tMaygrowupGo_Opengift[3308717]["RewardItem"][2]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308717]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308717]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308717]["DeleteItem"][1]["Id"] = 3308717
	tMaygrowupGo_Opengift[3308717]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308718] = {}
	tMaygrowupGo_Opengift[3308718]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308718]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308718]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308718]["RewardItem"][1]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308718]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308718]["RewardItem"][2]["Id"] = 3007032
	tMaygrowupGo_Opengift[3308718]["RewardItem"][2]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308718]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308718]["RewardItem"][3]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308718]["RewardItem"][3]["Attr"] = "0 20 3"
	tMaygrowupGo_Opengift[3308718]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308718]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308718]["DeleteItem"][1]["Id"] = 3308718
	tMaygrowupGo_Opengift[3308718]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308719] = {}
	tMaygrowupGo_Opengift[3308719]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308719]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308719]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308719]["RewardItem"][1]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308719]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308719]["RewardItem"][2]["Id"] = 3007032
	tMaygrowupGo_Opengift[3308719]["RewardItem"][2]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308719]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308719]["RewardItem"][3]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308719]["RewardItem"][3]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308719]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308719]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308719]["DeleteItem"][1]["Id"] = 3308719
	tMaygrowupGo_Opengift[3308719]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308720] = {}
	tMaygrowupGo_Opengift[3308720]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308720]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308720]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308720]["RewardItem"][1]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308720]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308720]["RewardItem"][2]["Id"] = 700122
	tMaygrowupGo_Opengift[3308720]["RewardItem"][2]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308720]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308720]["RewardItem"][3]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308720]["RewardItem"][3]["Attr"] = "0 20 3"
	tMaygrowupGo_Opengift[3308720]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308720]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308720]["DeleteItem"][1]["Id"] = 3308720
	tMaygrowupGo_Opengift[3308720]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308721] = {}
	tMaygrowupGo_Opengift[3308721]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308721]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308721]["RewardItem"][1]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308721]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308721]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308721]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308721]["RewardItem"][2]["Attr"] = "0 20"
	tMaygrowupGo_Opengift[3308721]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308721]["RewardItem"][3]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308721]["RewardItem"][3]["Attr"] = "0 20 3"
	tMaygrowupGo_Opengift[3308721]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308721]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308721]["DeleteItem"][1]["Id"] = 3308721
	tMaygrowupGo_Opengift[3308721]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308722] = {}
	tMaygrowupGo_Opengift[3308722]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308722]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308722]["RewardItem"][1]["Id"] = 3306370
	tMaygrowupGo_Opengift[3308722]["RewardItem"][1]["Attr"] = "0 3 3"
	tMaygrowupGo_Opengift[3308722]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308722]["RewardItem"][2]["Id"] = 3308739
	tMaygrowupGo_Opengift[3308722]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308722]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308722]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308722]["RewardItem"][3]["Attr"] = "0 20"
	tMaygrowupGo_Opengift[3308722]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308722]["RewardItem"][4]["Id"] = 700102
	tMaygrowupGo_Opengift[3308722]["RewardItem"][4]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308722]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308722]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308722]["DeleteItem"][1]["Id"] = 3308722
	tMaygrowupGo_Opengift[3308722]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308723] = {}
	tMaygrowupGo_Opengift[3308723]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308723]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308723]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308723]["RewardItem"][1]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308723]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308723]["RewardItem"][2]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308723]["RewardItem"][2]["Attr"] = "0 5 3"
	tMaygrowupGo_Opengift[3308723]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308723]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308723]["DeleteItem"][1]["Id"] = 3308723
	tMaygrowupGo_Opengift[3308723]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308724] = {}
	tMaygrowupGo_Opengift[3308724]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308724]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308724]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308724]["RewardItem"][1]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308724]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308724]["RewardItem"][2]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308724]["RewardItem"][2]["Attr"] = "0 5 3"
	tMaygrowupGo_Opengift[3308724]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308724]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308724]["DeleteItem"][1]["Id"] = 3308724
	tMaygrowupGo_Opengift[3308724]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308725] = {}
	tMaygrowupGo_Opengift[3308725]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308725]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308725]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308725]["RewardItem"][1]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308725]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308725]["RewardItem"][2]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308725]["RewardItem"][2]["Attr"] = "0 5 3"
	tMaygrowupGo_Opengift[3308725]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308725]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308725]["DeleteItem"][1]["Id"] = 3308725
	tMaygrowupGo_Opengift[3308725]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308726] = {}
	tMaygrowupGo_Opengift[3308726]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308726]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308726]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308726]["RewardItem"][1]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308726]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308726]["RewardItem"][2]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308726]["RewardItem"][2]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308726]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308726]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308726]["DeleteItem"][1]["Id"] = 3308726
	tMaygrowupGo_Opengift[3308726]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308727] = {}
	tMaygrowupGo_Opengift[3308727]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308727]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308727]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308727]["RewardItem"][1]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308727]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308727]["RewardItem"][2]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308727]["RewardItem"][2]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308727]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308727]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308727]["DeleteItem"][1]["Id"] = 3308727
	tMaygrowupGo_Opengift[3308727]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308728] = {}
	tMaygrowupGo_Opengift[3308728]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308728]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308728]["RewardItem"][1]["Id"] = 730003
	tMaygrowupGo_Opengift[3308728]["RewardItem"][1]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308728]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308728]["RewardItem"][2]["Id"] = 700122
	tMaygrowupGo_Opengift[3308728]["RewardItem"][2]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308728]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308728]["RewardItem"][3]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308728]["RewardItem"][3]["Attr"] = "0 20 3"
	tMaygrowupGo_Opengift[3308728]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308728]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308728]["DeleteItem"][1]["Id"] = 3308728
	tMaygrowupGo_Opengift[3308728]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308729] = {}
	tMaygrowupGo_Opengift[3308729]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308729]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308729]["RewardItem"][1]["Id"] = 3306370
	tMaygrowupGo_Opengift[3308729]["RewardItem"][1]["Attr"] = "0 3 3"
	tMaygrowupGo_Opengift[3308729]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308729]["RewardItem"][2]["Id"] = 3308739
	tMaygrowupGo_Opengift[3308729]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308729]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308729]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308729]["RewardItem"][3]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308729]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308729]["RewardItem"][4]["Id"] = 700102
	tMaygrowupGo_Opengift[3308729]["RewardItem"][4]["Attr"] = "0 1 3"
	tMaygrowupGo_Opengift[3308729]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308729]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308729]["DeleteItem"][1]["Id"] = 3308729
	tMaygrowupGo_Opengift[3308729]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308730] = {}
	tMaygrowupGo_Opengift[3308730]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308730]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308730]["RewardItem"][1]["Id"] = 3308737
	tMaygrowupGo_Opengift[3308730]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308730]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308730]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308730]["DeleteItem"][1]["Id"] = 3308730
	tMaygrowupGo_Opengift[3308730]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308731] = {}
	tMaygrowupGo_Opengift[3308731]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308731]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308731]["RewardItem"][1]["Id"] = 3308737
	tMaygrowupGo_Opengift[3308731]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308731]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308731]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308731]["RewardItem"][2]["Attr"] = "0 2"
	tMaygrowupGo_Opengift[3308731]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308731]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308731]["DeleteItem"][1]["Id"] = 3308731
	tMaygrowupGo_Opengift[3308731]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308732] = {}
	tMaygrowupGo_Opengift[3308732]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308732]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308732]["RewardItem"][1]["Id"] = 3005895
	tMaygrowupGo_Opengift[3308732]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308732]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308732]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308732]["RewardItem"][2]["Attr"] = "0 3"
	tMaygrowupGo_Opengift[3308732]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308732]["RewardItem"][3]["Id"] = 3003126
	tMaygrowupGo_Opengift[3308732]["RewardItem"][3]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308732]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308732]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308732]["DeleteItem"][1]["Id"] = 3308732
	tMaygrowupGo_Opengift[3308732]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308733] = {}
	tMaygrowupGo_Opengift[3308733]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308733]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308733]["RewardItem"][1]["Id"] = 3005895
	tMaygrowupGo_Opengift[3308733]["RewardItem"][1]["Attr"] = "0 2"
	tMaygrowupGo_Opengift[3308733]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308733]["RewardItem"][2]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308733]["RewardItem"][2]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308733]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308733]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308733]["RewardItem"][3]["Attr"] = "0 5"
	tMaygrowupGo_Opengift[3308733]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308733]["RewardItem"][4]["Id"] = 3003126
	tMaygrowupGo_Opengift[3308733]["RewardItem"][4]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308733]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308733]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308733]["DeleteItem"][1]["Id"] = 3308733
	tMaygrowupGo_Opengift[3308733]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308734] = {}
	tMaygrowupGo_Opengift[3308734]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308734]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308734]["RewardItem"][1]["Id"] = 3005895
	tMaygrowupGo_Opengift[3308734]["RewardItem"][1]["Attr"] = "0 3"
	tMaygrowupGo_Opengift[3308734]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308734]["RewardItem"][2]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308734]["RewardItem"][2]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308734]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308734]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308734]["RewardItem"][3]["Attr"] = "0 10"
	tMaygrowupGo_Opengift[3308734]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308734]["RewardItem"][4]["Id"] = 3003126
	tMaygrowupGo_Opengift[3308734]["RewardItem"][4]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308734]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308734]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308734]["DeleteItem"][1]["Id"] = 3308734
	tMaygrowupGo_Opengift[3308734]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308735] = {}
	tMaygrowupGo_Opengift[3308735]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308735]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308735]["RewardItem"][1]["Id"] = 3003124
	tMaygrowupGo_Opengift[3308735]["RewardItem"][1]["Attr"] = "0 10 3"
	tMaygrowupGo_Opengift[3308735]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308735]["RewardItem"][2]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308735]["RewardItem"][2]["Attr"] = "0 15"
	tMaygrowupGo_Opengift[3308735]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308735]["RewardItem"][3]["Id"] = 3003126
	tMaygrowupGo_Opengift[3308735]["RewardItem"][3]["Attr"] = "0 2 3"
	tMaygrowupGo_Opengift[3308735]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308735]["RewardItem"][4]["Id"] = 3005895
	tMaygrowupGo_Opengift[3308735]["RewardItem"][4]["Attr"] = "0 4"
	tMaygrowupGo_Opengift[3308735]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308735]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308735]["DeleteItem"][1]["Id"] = 3308735
	tMaygrowupGo_Opengift[3308735]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308736] = {}
	tMaygrowupGo_Opengift[3308736]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308736]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308736]["RewardItem"][1]["Id"] = 3306370
	tMaygrowupGo_Opengift[3308736]["RewardItem"][1]["Attr"] = "0 6 3"
	tMaygrowupGo_Opengift[3308736]["RewardItem"][2] = {}
	tMaygrowupGo_Opengift[3308736]["RewardItem"][2]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308736]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tMaygrowupGo_Opengift[3308736]["RewardItem"][3] = {}
	tMaygrowupGo_Opengift[3308736]["RewardItem"][3]["Id"] = 3002030
	tMaygrowupGo_Opengift[3308736]["RewardItem"][3]["Attr"] = "0 20"
	tMaygrowupGo_Opengift[3308736]["RewardItem"][4] = {}
	tMaygrowupGo_Opengift[3308736]["RewardItem"][4]["Id"] = 4050001
	tMaygrowupGo_Opengift[3308736]["RewardItem"][4]["Attr"] = "0 20 3"
	tMaygrowupGo_Opengift[3308736]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308736]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308736]["DeleteItem"][1]["Id"] = 3308736
	tMaygrowupGo_Opengift[3308736]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308737] = {}
	tMaygrowupGo_Opengift[3308737]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308737]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308737]["RewardItem"][1]["Id"] = 3009001
	tMaygrowupGo_Opengift[3308737]["RewardItem"][1]["Attr"] = "0 1"
	tMaygrowupGo_Opengift[3308737]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308737]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308737]["DeleteItem"][1]["Id"] = 3308737
	tMaygrowupGo_Opengift[3308737]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308738] = {}
	tMaygrowupGo_Opengift[3308738]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308738]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308738]["RewardItem"][1]["Id"] = 3009001
	tMaygrowupGo_Opengift[3308738]["RewardItem"][1]["Attr"] = "0 3"
	tMaygrowupGo_Opengift[3308738]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308738]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308738]["DeleteItem"][1]["Id"] = 3308738
	tMaygrowupGo_Opengift[3308738]["LogId"] = 12001068
	
	tMaygrowupGo_Opengift[3308739] = {}
	tMaygrowupGo_Opengift[3308739]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308739]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308739]["RewardItem"][1]["Id"] = 3009001
	tMaygrowupGo_Opengift[3308739]["RewardItem"][1]["Attr"] = "0 5"
	tMaygrowupGo_Opengift[3308739]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308739]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308739]["DeleteItem"][1]["Id"] = 3308739
	tMaygrowupGo_Opengift[3308739]["LogId"] = 12001068
	
--新增+4马匹打开获得
	tMaygrowupGo_Opengift[3308871] = {}
	tMaygrowupGo_Opengift[3308871]["RewardItem"] = {}
	tMaygrowupGo_Opengift[3308871]["RewardItem"][1] = {}
	tMaygrowupGo_Opengift[3308871]["RewardItem"][1]["Id"] = 300000
	tMaygrowupGo_Opengift[3308871]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4"
	tMaygrowupGo_Opengift[3308871]["DeleteItem"] = {}
	tMaygrowupGo_Opengift[3308871]["DeleteItem"][1] = {}
	tMaygrowupGo_Opengift[3308871]["DeleteItem"][1]["Id"] = 3308871
	tMaygrowupGo_Opengift[3308871]["LogId"] = 12001068
	
	
local tMaygrowupGo_Emoneyitem = {}
--自创武功的emoney_log
tMaygrowupGo_Emoneyitem[1] = {3308746,"350	21343	0	0	1	"}
--炼气的emoney_log
tMaygrowupGo_Emoneyitem[2] = {3308745,"350	21342	0	0	1	"}

--炼气的emoney_log
tMaygrowupGo_Emoneyitem[3] = {3308847,"350	21342	0	0	1	"}
tMaygrowupGo_Emoneyitem[4] = {3308848,"350	21342	0	0	1	"}
tMaygrowupGo_Emoneyitem[5] = {3308849,"350	21342	0	0	1	"}
tMaygrowupGo_Emoneyitem[6] = {3308850,"350	21342	0	0	1	"}
tMaygrowupGo_Emoneyitem[7] = {3308851,"350	21342	0	0	1	"}
tMaygrowupGo_Emoneyitem[8] = {3308852,"350	21342	0	0	1	"}
--自创武功的emoney_log
tMaygrowupGo_Emoneyitem[9] = {3308853,"350	21343	0	0	1	"}
tMaygrowupGo_Emoneyitem[10] = {3308854,"350	21343	0	0	1	"}
tMaygrowupGo_Emoneyitem[11] = {3308855,"350	21343	0	0	1	"}
tMaygrowupGo_Emoneyitem[12] = {3308856,"350	21343	0	0	1	"}
tMaygrowupGo_Emoneyitem[13] = {3308857,"350	21343	0	0	1	"}
tMaygrowupGo_Emoneyitem[14] = {3308858,"350	21343	0	0	1	"}
local tMaygrowupGo_Webconnection = {}
tMaygrowupGo_Webconnection["url"] = "https://coevent.99.com/growthbooster202001/"

local tMaygrowupGo_Npclocation = {}
tMaygrowupGo_Npclocation["Mapid"] = 1002
tMaygrowupGo_Npclocation["Postx"] = 341
tMaygrowupGo_Npclocation["Posty"] = 455

--过期物品log添加
local tMaygrowupGo_Deleteitemid = {}
tMaygrowupGo_Deleteitemid["log"] = "0,0,%d,1,12001068,2,0,1"

--------------------------------------逻辑部分-------------------------------------------
--勋章隔天删除
function MaygrowupGo_TicketDelete(nItemId)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tMaygrowupGo_ActivityTime["ItemId"][nItemId]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tLuaRes[10004])
		local sReadlog = string.format(tMaygrowupGo_Deleteitemid["log"],nItemId)
		Sys_SaveActionFestivalLog(sReadlog)
		return
	end
	
	--点击物品寻路到Npc处
	local nMapId = tMaygrowupGo_Npclocation["Mapid"]
	local nPosX = tMaygrowupGo_Npclocation["Postx"]
	local nPosY = tMaygrowupGo_Npclocation["Posty"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
	
end

--五一冲刺发奖礼包
function MaygrowupGo_OpenPackgift(nItemId)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tMaygrowupGo_Opengift[nItemId]) then
		Sys_MsgBox(tAnniversary2015_Like_Text["SpaceFull"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tMaygrowupGo_Opengift[nItemId])
	
end

--上交勋章
function MaygrowupGo_AwardTicketpack(nNpcId)
	
	local nTip = 0
	for i,v in pairs(tMaygrowupGo_Emoneyitem) do
		if Item_ChkItem(v[1]) and Item_DelItem(v[1]) then
			--记录emoney_log
			
			if not Sys_ChkFullTime(tMaygrowupGo_ActivityTime["ItemId"][v[1]]) then
				User_TalkChannel2005(tLuaRes[10004])
			else
				Sys_SaveEmoneyBuy(v[2])
				nTip = 1
			end 
			
		end
	end
	
	--跳转网页
	if nTip == 1 then
		User_TalkChannel2005(tMaygrowupGo_Text[22863]["Text118"])
		User_SendWebPage(tMaygrowupGo_Webconnection["url"])
	else
		User_TalkChannel2005(tMaygrowupGo_Text[22863]["Text117"])
	end
end

--------------------------------------NPC模块-------------------------------------------

tNpcFace[6054] = 184
tNpcGossip[22863] = tNpcGossip[22863] or DefaultNpc:new{}
tNpcGossip[22863]["OptionHidden"] = 1
tNpcGossip[22863]["DialogueText"] = tMaygrowupGo_Text[22863] 

-- 活动前
tNpcGossip[22863]["Text1-1"] = {111,112,113,1131,114}
tNpcGossip[22863]["tOption1-1"] = {1}
tNpcGossip[22863]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMaygrowupGo_ActivityTime["BeforeTime"])
end

-- 活动后
tNpcGossip[22863]["Text1-2"] = {115}
tNpcGossip[22863]["tOption1-2"] = {2}
tNpcGossip[22863]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tMaygrowupGo_ActivityTime["ActivityTime"])
end

-- 活动中
tNpcGossip[22863]["Text1-3"] = {116,1161}
tNpcGossip[22863]["tOption1-3"] = {3}
tNpcGossip[22863]["OptionFunc3"]="MaygrowupGo_AwardTicketpack</N>22863"

--------------------------------------物品模块-------------------------------------------
-- 相关礼包
tItem[3308702] = tItem[3308702] or {}
tItem[3308702]["Function"] = function(nItemId,sItemName)
	MaygrowupGo_OpenPackgift(nItemId)
end

tItem[3308703] = tItem[3308702]
tItem[3308704] = tItem[3308702]
tItem[3308705] = tItem[3308702]
tItem[3308706] = tItem[3308702]
tItem[3308707] = tItem[3308702]
tItem[3308708] = tItem[3308702]
tItem[3308709] = tItem[3308702]
tItem[3308710] = tItem[3308702]
tItem[3308711] = tItem[3308702]

tItem[3308712] = tItem[3308702]
tItem[3308713] = tItem[3308702]
tItem[3308714] = tItem[3308702]
tItem[3308715] = tItem[3308702]
tItem[3308716] = tItem[3308702]
tItem[3308717] = tItem[3308702]
tItem[3308718] = tItem[3308702]
tItem[3308719] = tItem[3308702]
tItem[3308720] = tItem[3308702]
tItem[3308721] = tItem[3308702]

tItem[3308722] = tItem[3308702]
tItem[3308723] = tItem[3308702]
tItem[3308724] = tItem[3308702]
tItem[3308725] = tItem[3308702]
tItem[3308726] = tItem[3308702]
tItem[3308727] = tItem[3308702]
tItem[3308728] = tItem[3308702]
tItem[3308729] = tItem[3308702]
tItem[3308730] = tItem[3308702]
tItem[3308731] = tItem[3308702]

tItem[3308732] = tItem[3308702]
tItem[3308733] = tItem[3308702]
tItem[3308734] = tItem[3308702]
tItem[3308735] = tItem[3308702]
tItem[3308736] = tItem[3308702]

--明亮星陨石包
tItem[3308737] = tItem[3308702]
tItem[3308738] = tItem[3308702]
tItem[3308739] = tItem[3308702]

--+4马匹礼包打开获得
tItem[3308871] = tItem[3308702]

--相关勋章，只能在当天使用，目前只写炼功和练气的
tItem[3308745] = tItem[3308745] or {}
tItem[3308745]["Function"] = function(nItemId,sItemName)
	MaygrowupGo_TicketDelete(nItemId)
end
tItem[3308847] = tItem[3308745]
tItem[3308848] = tItem[3308745]
tItem[3308849] = tItem[3308745]
tItem[3308850] = tItem[3308745]
tItem[3308851] = tItem[3308745]
tItem[3308852] = tItem[3308745]

tItem[3308746] = tItem[3308745]
tItem[3308853] = tItem[3308745]
tItem[3308854] = tItem[3308745]
tItem[3308855] = tItem[3308745]
tItem[3308856] = tItem[3308745]
tItem[3308857] = tItem[3308745]
tItem[3308858] = tItem[3308745]






