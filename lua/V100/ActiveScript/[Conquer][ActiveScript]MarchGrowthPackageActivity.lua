------------------------------------------------------------------------------------
--Name：            180208[英文征服][活动脚本]英文征服3月全职业成长宝活动
--Creator:      李甲
--Created:     2018/02/08
------------------------------------------------------------------------------------
--任务需求：
--17333 是否购买过装备追加开洞包
--17334 是否购买过自创炼气精炼包
--17335 是否购买过神魂淬炼包
--17336 装备追加开洞包每天开1次 可开7次
--17337 自创炼气精炼包每天开1次 可开7次
--17338 神魂淬炼包每天开1次 可开7次
--17339 龙珠*1 限购买30个
--17340 赤练石+3 限购买30个
--17341 30级极品马鞭赠限购买1个
--17342 100级极品混元塔赠 限购买1个
--17343 100级极品凌霄扇赠 限购买1个
--17344 100级极品风雷翅赠 限购买1个
--17345 灵宝葫芦赠 限购买1个
--17346 5000修行值 限购买20个
--17347 强炼丹*100 限购买200个
--17348 通神丹*100 限购买200个
--17349 明亮星陨石*6 限购买30个
------------------------------------------------------------------------------------
----------------------------------表配置部分--------------------------------------------
local tMarchGrowthPackage_Const = {}
	tMarchGrowthPackage_Const["ActivityTime"] = tActivityTime["MarchGrowthPackage"]["ActivityTime"]
	tMarchGrowthPackage_Const["BeforeTime"] = tActivityTime["MarchGrowthPackage"]["BeforeTime"]
	tMarchGrowthPackage_Const["AfterTime"] = tActivityTime["MarchGrowthPackage"]["AfterTime"]
	tMarchGrowthPackage_Const["Level"] = 80
	tMarchGrowthPackage_Const["Metempsychosis"] = 1


local tMarchGrowthPackage_Rward = {}
--热门道具NPC
	tMarchGrowthPackage_Rward[21441] = {}
	tMarchGrowthPackage_Rward[21441]["LogId"] = 12001004
	
	tMarchGrowthPackage_Rward[21441][1] = {}
	tMarchGrowthPackage_Rward[21441][1]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][1]["DataType1"] = 39
	tMarchGrowthPackage_Rward[21441][1]["Ceiling"] = 30
	tMarchGrowthPackage_Rward[21441][1]["NeedMoney"] = 5550000 
	tMarchGrowthPackage_Rward[21441][1]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][1]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][1]["RewardItem"][1]["Id"] = 1088000 --龙珠*1
	tMarchGrowthPackage_Rward[21441][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][2] = {}
	tMarchGrowthPackage_Rward[21441][2]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][2]["DataType1"] = 40
	tMarchGrowthPackage_Rward[21441][2]["Ceiling"] = 30
	tMarchGrowthPackage_Rward[21441][2]["NeedMoney"] = 5100000 
	tMarchGrowthPackage_Rward[21441][2]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][2]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][2]["RewardItem"][1]["Id"] = 730003 --赤练石+3
	tMarchGrowthPackage_Rward[21441][2]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][3] = {}
	tMarchGrowthPackage_Rward[21441][3]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][3]["DataType1"] = 41
	tMarchGrowthPackage_Rward[21441][3]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21441][3]["NeedMoney"] = 25500000 
	tMarchGrowthPackage_Rward[21441][3]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][3]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][3]["RewardItem"][1]["Id"] = 203009 --30级极品马鞭赠
	tMarchGrowthPackage_Rward[21441][3]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][4] = {}
	tMarchGrowthPackage_Rward[21441][4]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][4]["DataType1"] = 42
	tMarchGrowthPackage_Rward[21441][4]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21441][4]["NeedMoney"] = 25500000 
	tMarchGrowthPackage_Rward[21441][4]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][4]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][4]["RewardItem"][1]["Id"] = 202009 --100级极品混元塔赠
	tMarchGrowthPackage_Rward[21441][4]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][5] = {}
	tMarchGrowthPackage_Rward[21441][5]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][5]["DataType1"] = 43
	tMarchGrowthPackage_Rward[21441][5]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21441][5]["NeedMoney"] = 25500000 
	tMarchGrowthPackage_Rward[21441][5]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][5]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][5]["RewardItem"][1]["Id"] = 201009 --100级极品凌霄扇赠
	tMarchGrowthPackage_Rward[21441][5]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][6] = {}
	tMarchGrowthPackage_Rward[21441][6]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][6]["DataType1"] = 44
	tMarchGrowthPackage_Rward[21441][6]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21441][6]["NeedMoney"] = 109650000 
	tMarchGrowthPackage_Rward[21441][6]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][6]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][6]["RewardItem"][1]["Id"] = 204009 --100级极品风雷翅赠
	tMarchGrowthPackage_Rward[21441][6]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][7] = {}
	tMarchGrowthPackage_Rward[21441][7]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][7]["DataType1"] = 45
	tMarchGrowthPackage_Rward[21441][7]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21441][7]["NeedMoney"] = 344250000 
	tMarchGrowthPackage_Rward[21441][7]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][7]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][7]["RewardItem"][1]["Id"] = 3000309 --灵宝葫芦赠
	tMarchGrowthPackage_Rward[21441][7]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][8] = {}
	tMarchGrowthPackage_Rward[21441][8]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][8]["DataType1"] = 46
	tMarchGrowthPackage_Rward[21441][8]["Ceiling"] = 20
	tMarchGrowthPackage_Rward[21441][8]["NeedMoney"] = 42500000 
	tMarchGrowthPackage_Rward[21441][8]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][8]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][8]["RewardItem"][1]["Id"] = 3307499 --5000修行值
	tMarchGrowthPackage_Rward[21441][8]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21441][9] = {}
	tMarchGrowthPackage_Rward[21441][9]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][9]["DataType1"] = 47
	tMarchGrowthPackage_Rward[21441][9]["Ceiling"] = 200
	tMarchGrowthPackage_Rward[21441][9]["NeedMoney"] = 34000000 
	tMarchGrowthPackage_Rward[21441][9]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][9]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][9]["RewardItem"][1]["Id"] = 3003124 --强炼丹*100
	tMarchGrowthPackage_Rward[21441][9]["RewardItem"][1]["Attr"] = "0 100 3"
	
	tMarchGrowthPackage_Rward[21441][10] = {}
	tMarchGrowthPackage_Rward[21441][10]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][10]["DataType1"] = 48
	tMarchGrowthPackage_Rward[21441][10]["Ceiling"] = 200
	tMarchGrowthPackage_Rward[21441][10]["NeedMoney"] = 25500000 
	tMarchGrowthPackage_Rward[21441][10]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][10]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][10]["RewardItem"][1]["Id"] = 3003125 --通神丹*100
	tMarchGrowthPackage_Rward[21441][10]["RewardItem"][1]["Attr"] = "0 100 3"
	
	tMarchGrowthPackage_Rward[21441][11] = {}
	tMarchGrowthPackage_Rward[21441][11]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21441][11]["DataType1"] = 49
	tMarchGrowthPackage_Rward[21441][11]["Ceiling"] = 30
	tMarchGrowthPackage_Rward[21441][11]["NeedMoney"] = 20400000 
	tMarchGrowthPackage_Rward[21441][11]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21441][11]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21441][11]["RewardItem"][1]["Id"] = 3307500 --明亮星陨石*6
	tMarchGrowthPackage_Rward[21441][11]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	
--周礼包NPC
	tMarchGrowthPackage_Rward[21442] = {}
	tMarchGrowthPackage_Rward[21442]["LogId"] = 12001004
	
	tMarchGrowthPackage_Rward[21442][1] = {}
	tMarchGrowthPackage_Rward[21442][1]["Name"] = tMarchGrowthPackage_Text[3307496]["Name"]
	tMarchGrowthPackage_Rward[21442][1]["NeedMoney"] = 42500000 
	tMarchGrowthPackage_Rward[21442][1]["NeedEMoney"] = 499 
	tMarchGrowthPackage_Rward[21442][1]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21442][1]["DataType1"] = 33
	tMarchGrowthPackage_Rward[21442][1]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21442][1]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21442][1]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21442][1]["RewardItem"][1]["Id"] = 3307496 --装备追加开洞包
	tMarchGrowthPackage_Rward[21442][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21442][2] = {}
	tMarchGrowthPackage_Rward[21442][2]["Name"] = tMarchGrowthPackage_Text[3307497]["Name"]
	tMarchGrowthPackage_Rward[21442][2]["NeedMoney"] = 42500000 
	tMarchGrowthPackage_Rward[21442][2]["NeedEMoney"] = 499 
	tMarchGrowthPackage_Rward[21442][2]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21442][2]["DataType1"] = 34
	tMarchGrowthPackage_Rward[21442][2]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21442][2]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21442][2]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21442][2]["RewardItem"][1]["Id"] = 3307497 --自创炼气精炼包
	tMarchGrowthPackage_Rward[21442][2]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tMarchGrowthPackage_Rward[21442][3] = {}
	tMarchGrowthPackage_Rward[21442][3]["Name"] = tMarchGrowthPackage_Text[3307498]["Name"]
	tMarchGrowthPackage_Rward[21442][3]["NeedMoney"] = 42500000 
	tMarchGrowthPackage_Rward[21442][3]["NeedEMoney"] = 499 
	tMarchGrowthPackage_Rward[21442][3]["EventType1"] = 173
	tMarchGrowthPackage_Rward[21442][3]["DataType1"] = 35
	tMarchGrowthPackage_Rward[21442][3]["Ceiling"] = 1
	tMarchGrowthPackage_Rward[21442][3]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[21442][3]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[21442][3]["RewardItem"][1]["Id"] = 3307498 --神魂淬炼固化包
	tMarchGrowthPackage_Rward[21442][3]["RewardItem"][1]["Attr"] = "0 1 3"
--5000修行值包
	tMarchGrowthPackage_Rward[3307499] = {}
	tMarchGrowthPackage_Rward[3307499]["LogId"] = 12001004
	tMarchGrowthPackage_Rward[3307499]["DeleteItem"] = {}
	tMarchGrowthPackage_Rward[3307499]["DeleteItem"][1] = {}
	tMarchGrowthPackage_Rward[3307499]["DeleteItem"][1]["Id"] = 3307499
	tMarchGrowthPackage_Rward[3307499]["RewardCultivation"] = {}
	tMarchGrowthPackage_Rward[3307499]["RewardCultivation"]["Value"] = 5000
	
--明亮星陨石*6包
	tMarchGrowthPackage_Rward[3307500] = {}
	tMarchGrowthPackage_Rward[3307500]["LogId"] = 12001004
	tMarchGrowthPackage_Rward[3307500]["DeleteItem"] = {}
	tMarchGrowthPackage_Rward[3307500]["DeleteItem"][1] = {}
	tMarchGrowthPackage_Rward[3307500]["DeleteItem"][1]["Id"] = 3307500
	tMarchGrowthPackage_Rward[3307500]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307500]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307500]["RewardItem"][1]["Id"] = 3009001 
	tMarchGrowthPackage_Rward[3307500]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"

--装备追加开洞包
	tMarchGrowthPackage_Rward[3307496] = {}
	tMarchGrowthPackage_Rward[3307496]["FirstName"] = tMarchGrowthPackage_Text[3307496]["GetFirstName"]
	tMarchGrowthPackage_Rward[3307496]["LastName"] = tMarchGrowthPackage_Text[3307496]["GetLastName"]
	tMarchGrowthPackage_Rward[3307496]["LogId"] = 12001004
	tMarchGrowthPackage_Rward[3307496]["EventType1"] = 173
	tMarchGrowthPackage_Rward[3307496]["DataType1"] = 36
	tMarchGrowthPackage_Rward[3307496]["TotalData"] = 7
	tMarchGrowthPackage_Rward[3307496][1] = {}
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][1]["Id"] = 730003 
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][2] = {}
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][2]["Id"] = 3008994 
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][2]["Attr"] = "0 2"
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][3] = {}
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][3]["Id"] = 3007031 
	tMarchGrowthPackage_Rward[3307496][1]["RewardItem"][3]["Attr"] = "0 1"
	
	tMarchGrowthPackage_Rward[3307496][2] = {}
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][1]["Id"] = 730003 
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][2] = {}
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][2]["Id"] = 3008994 
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][2]["Attr"] = "0 2"
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][3] = {}
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][3]["Id"] = 3007031 
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][3]["Attr"] = "0 1"
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][4] = {}
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][4]["Id"] = 3307586 
	tMarchGrowthPackage_Rward[3307496][2]["RewardItem"][4]["Attr"] = "0 1"
	
--自创炼气精炼包
	tMarchGrowthPackage_Rward[3307497] = {}
	tMarchGrowthPackage_Rward[3307497]["FirstName"] = tMarchGrowthPackage_Text[3307497]["GetFirstName"]
	tMarchGrowthPackage_Rward[3307497]["LastName"] = tMarchGrowthPackage_Text[3307497]["GetLastName"]
	tMarchGrowthPackage_Rward[3307497]["LogId"] = 12001004
	tMarchGrowthPackage_Rward[3307497]["EventType1"] = 173
	tMarchGrowthPackage_Rward[3307497]["DataType1"] = 37
	tMarchGrowthPackage_Rward[3307497]["TotalData"] = 7
	tMarchGrowthPackage_Rward[3307497][1] = {}
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][1]["Id"] = 3304196 
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][2] = {}
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][2]["Id"] = 3002926 
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][2]["Attr"] = "0 3"
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][3] = {}
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][3]["Id"] = 3009000 
	tMarchGrowthPackage_Rward[3307497][1]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
	
	tMarchGrowthPackage_Rward[3307497][2] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][1]["Id"] = 3304196 
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][2] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][2]["Id"] = 3002926 
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][2]["Attr"] = "0 3"
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][3] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][3]["Id"] = 3009000 
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][4] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][4]["Id"] = 3304199 
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][4]["Attr"] = "0 1 3"
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][5] = {}
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][5]["Id"] = 3009001 
	tMarchGrowthPackage_Rward[3307497][2]["RewardItem"][5]["Attr"] = "0 3 0 2880 1"

--神魂淬炼包
	tMarchGrowthPackage_Rward[3307498] = {}
	tMarchGrowthPackage_Rward[3307498]["FirstName"] = tMarchGrowthPackage_Text[3307498]["GetFirstName"]
	tMarchGrowthPackage_Rward[3307498]["LastName"] = tMarchGrowthPackage_Text[3307498]["GetLastName"]
	tMarchGrowthPackage_Rward[3307498]["LogId"] = 12001004
	tMarchGrowthPackage_Rward[3307498]["EventType1"] = 173
	tMarchGrowthPackage_Rward[3307498]["DataType1"] = 38
	tMarchGrowthPackage_Rward[3307498]["TotalData"] = 7
	tMarchGrowthPackage_Rward[3307498][1] = {}
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"][1]["Id"] = 3315497 
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"][2] = {}
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"][2]["Id"] = 3004245 
	tMarchGrowthPackage_Rward[3307498][1]["RewardItem"][2]["Attr"] = "0 3"
	
	tMarchGrowthPackage_Rward[3307498][2] = {}
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"] = {}
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][1] = {}
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][1]["Id"] = 3315497 
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][2] = {}
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][2]["Id"] = 3004245 
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][2]["Attr"] = "0 3"
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][3] = {}
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][3]["Id"] = 723694 
	tMarchGrowthPackage_Rward[3307498][2]["RewardItem"][3]["Attr"] = "0 1 3"

	--15级极品2D武器礼盒(赠)
	local tMarchGrowthPackage_Pack = {}
	--精品武器礼包
	tMarchGrowthPackage_Pack[3307586] = {}
	--勇士
	tMarchGrowthPackage_Pack[3307586][10] = {}
	tMarchGrowthPackage_Pack[3307586][10]["DialogIndex"] = "6-1"
	--下面武器三选一
	tMarchGrowthPackage_Pack[3307586][10]["Option"] = {}
	--赠品修罗刀
	tMarchGrowthPackage_Pack[3307586][10]["Option"][1] = {}
	tMarchGrowthPackage_Pack[3307586][10]["Option"][1]["Item_ID"] = 410029
	tMarchGrowthPackage_Pack[3307586][10]["Option"][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品青冥剑
	tMarchGrowthPackage_Pack[3307586][10]["Option"][2] = {}
	tMarchGrowthPackage_Pack[3307586][10]["Option"][2]["Item_ID"] = 420029
	tMarchGrowthPackage_Pack[3307586][10]["Option"][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品短木棒
	tMarchGrowthPackage_Pack[3307586][10]["Option"][3] = {}
	tMarchGrowthPackage_Pack[3307586][10]["Option"][3]["Item_ID"] = 480029
	tMarchGrowthPackage_Pack[3307586][10]["Option"][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--战士
	tMarchGrowthPackage_Pack[3307586][20] = {}
	tMarchGrowthPackage_Pack[3307586][20]["DialogIndex"] = "7-1"
	--下面武器三选一
	tMarchGrowthPackage_Pack[3307586][20]["Option"] = {}
	--赠品朱缨枪
	tMarchGrowthPackage_Pack[3307586][20]["Option"][1] = {}
	tMarchGrowthPackage_Pack[3307586][20]["Option"][1]["Item_ID"] = 560029
	tMarchGrowthPackage_Pack[3307586][20]["Option"][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品蜡木棍
	tMarchGrowthPackage_Pack[3307586][20]["Option"][2] = {}
	tMarchGrowthPackage_Pack[3307586][20]["Option"][2]["Item_ID"] = 561029
	tMarchGrowthPackage_Pack[3307586][20]["Option"][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品软藤盾
	tMarchGrowthPackage_Pack[3307586][20]["Option"][3] = {}
	tMarchGrowthPackage_Pack[3307586][20]["Option"][3]["Item_ID"] = 900009
	tMarchGrowthPackage_Pack[3307586][20]["Option"][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--弓手
	tMarchGrowthPackage_Pack[3307586][40] = {}
	tMarchGrowthPackage_Pack[3307586][40]["DialogIndex"] = "8-1"
	--下面武器二选一
	tMarchGrowthPackage_Pack[3307586][40]["Option"] = {}
	--赠品猎弓
	tMarchGrowthPackage_Pack[3307586][40]["Option"][1] = {}
	tMarchGrowthPackage_Pack[3307586][40]["Option"][1]["Item_ID"] = 500019
	tMarchGrowthPackage_Pack[3307586][40]["Option"][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品狼牙飞刀
	tMarchGrowthPackage_Pack[3307586][40]["Option"][2] = {}
	tMarchGrowthPackage_Pack[3307586][40]["Option"][2]["Item_ID"] = 613019
	tMarchGrowthPackage_Pack[3307586][40]["Option"][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--刺客
	tMarchGrowthPackage_Pack[3307586][50] = {}
	tMarchGrowthPackage_Pack[3307586][50]["DialogIndex"] = "9-1"
	--下面武器二选一
	tMarchGrowthPackage_Pack[3307586][50]["Option"] = {}
	--赠品武藏钩镰
	tMarchGrowthPackage_Pack[3307586][50]["Option"][1] = {}
	tMarchGrowthPackage_Pack[3307586][50]["Option"][1]["Item_ID"] = 511029
	tMarchGrowthPackage_Pack[3307586][50]["Option"][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品精钢切
	tMarchGrowthPackage_Pack[3307586][50]["Option"][2] = {}
	tMarchGrowthPackage_Pack[3307586][50]["Option"][2]["Item_ID"] = 601029
	tMarchGrowthPackage_Pack[3307586][50]["Option"][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--武僧
	tMarchGrowthPackage_Pack[3307586][60] = {}
	tMarchGrowthPackage_Pack[3307586][60]["Item"] = {}
	--直接获得一件赠品金蝉念珠
	tMarchGrowthPackage_Pack[3307586][60]["Item"] = {}
	tMarchGrowthPackage_Pack[3307586][60]["Item"]["Item_ID"] = 610029
	tMarchGrowthPackage_Pack[3307586][60]["Item"]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--海盗
	tMarchGrowthPackage_Pack[3307586][70] = {}
	tMarchGrowthPackage_Pack[3307586][70]["DialogIndex"] = "10-1"
	--下面武器二选一
	tMarchGrowthPackage_Pack[3307586][70]["Option"] = {}
	--赠品勇者佩剑
	tMarchGrowthPackage_Pack[3307586][70]["Option"][1] = {}
	tMarchGrowthPackage_Pack[3307586][70]["Option"][1]["Item_ID"] = 611029
	tMarchGrowthPackage_Pack[3307586][70]["Option"][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"
	--赠品中级火枪
	tMarchGrowthPackage_Pack[3307586][70]["Option"][2] = {}
	tMarchGrowthPackage_Pack[3307586][70]["Option"][2]["Item_ID"] = 612029
	tMarchGrowthPackage_Pack[3307586][70]["Option"][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--截拳
	tMarchGrowthPackage_Pack[3307586][80] = {}
	tMarchGrowthPackage_Pack[3307586][80]["Item"] = {}
	--直接获得一件赠品枣木双截棍
	tMarchGrowthPackage_Pack[3307586][80]["Item"] = {}
	tMarchGrowthPackage_Pack[3307586][80]["Item"]["Item_ID"] = 617029
	tMarchGrowthPackage_Pack[3307586][80]["Item"]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	--道士
	tMarchGrowthPackage_Pack[3307586][100] = {}
	tMarchGrowthPackage_Pack[3307586][100]["Item"] = {}
	--直接获得一件赠品驱邪剑
	tMarchGrowthPackage_Pack[3307586][100]["Item"] = {}
	tMarchGrowthPackage_Pack[3307586][100]["Item"]["Item_ID"] = 421029
	tMarchGrowthPackage_Pack[3307586][100]["Item"]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

	
	--铁扇门
	tMarchGrowthPackage_Pack[3307586][160] = {}
	tMarchGrowthPackage_Pack[3307586][160]["Item"] = {}
	--直接获得一件赠品驱邪剑
	tMarchGrowthPackage_Pack[3307586][160]["Item"] = {}
	tMarchGrowthPackage_Pack[3307586][160]["Item"]["Item_ID"] = 626029
	tMarchGrowthPackage_Pack[3307586][160]["Item"]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 255 255"

local tMarchGrowthPackage_Log = {}
	tMarchGrowthPackage_Log["SuperWeaponPack"] = "0,0,%d,1,12001004,2,%d,1"
----------------------------------EmoneyLog---------------------------------------
local tMarchGrowthPackage_EmoneyLog = {}
	tMarchGrowthPackage_EmoneyLog[21442] = {}
	tMarchGrowthPackage_EmoneyLog[21442][1] = "350	31185	499	499	1	"
	tMarchGrowthPackage_EmoneyLog[21442][2] = "350	31186	499	499	1	"
	tMarchGrowthPackage_EmoneyLog[21442][3] = "350	31187	499	499	1	"
	tMarchGrowthPackage_EmoneyLog[21442][4] = "350	31199	0	0	42500000	"
	tMarchGrowthPackage_EmoneyLog[21442][5] = "350	31200	0	0	42500000	"
	tMarchGrowthPackage_EmoneyLog[21442][6] = "350	31201	0	0	42500000	"
	tMarchGrowthPackage_EmoneyLog[21441] = {}
	tMarchGrowthPackage_EmoneyLog[21441][1] = "350	31188	0	0	5550000	"
	tMarchGrowthPackage_EmoneyLog[21441][2] = "350	31189	0	0	5100000	"
	tMarchGrowthPackage_EmoneyLog[21441][3] = "350	31190	0	0	25500000	"
	tMarchGrowthPackage_EmoneyLog[21441][4] = "350	31191	0	0	25500000	"
	tMarchGrowthPackage_EmoneyLog[21441][5] = "350	31192	0	0	25500000	"
	tMarchGrowthPackage_EmoneyLog[21441][6] = "350	31193	0	0	109650000	"
	tMarchGrowthPackage_EmoneyLog[21441][7] = "350	31194	0	0	344250000	"
	tMarchGrowthPackage_EmoneyLog[21441][8] = "350	31195	0	0	42500000	"
	tMarchGrowthPackage_EmoneyLog[21441][9] = "350	31196	0	0	34000000	"
	tMarchGrowthPackage_EmoneyLog[21441][10] = "350	31197	0	0	25500000	"
	tMarchGrowthPackage_EmoneyLog[21441][11] = "350	31198	0	0	20400000	"
	
----------------------------------逻辑部分---------------------------------------------
function MarchGrowthPackage_UseWeaponPack(nItemId)
	if Item_ChkItem(nItemId) then
		local tPack = tMarchGrowthPackage_Pack[nItemId]
		--判断职业，获得对应的物品ID  
		local nPro = Get_UserProfession()
		if nPro >= 100 and nPro <= 145  then
			nPro = 100
		elseif nPro >= 160 and nPro <= 165 then
			nPro = 160
		else
			nPro = nPro - nPro % 10
		end

		--0表示不再配置表的共用职业
		if tPack[nPro] == nil then
			nPro = 0
		end

		if tPack[nPro]["DialogIndex"] ~= nil then
			LinkItemGossipFunc_New(nItemId,tPack[nPro]["DialogIndex"])
			return 
		end

		MarchGrowthPackage_Reward(nItemId,tPack[nPro]["Item"]["Item_ID"],tPack[nPro]["Item"]["ItemAttr"])
	end
end 

--选项
function MarchGrowthPackage_SelectOption(nPackId,nPro,nOption)
	local tItem = tMarchGrowthPackage_Pack[nPackId][nPro]["Option"][nOption]
	MarchGrowthPackage_Reward(nPackId,tItem["Item_ID"],tItem["ItemAttr"]) 
end
--获得物品
function MarchGrowthPackage_Reward(nPackId,nItemId,sItemAttr)
	if not Item_ChkAccItem(nPackId,1) then
		return
	end
	if not Item_DelItem(nPackId) then
		return
	end 
	Item_AddNewItem(nItemId,sItemAttr)
	
	Sys_SaveActionFestivalLog(string.format(tMarchGrowthPackage_Log["SuperWeaponPack"],nPackId,nItemId))
	User_TalkChannel2005(string.format(tNewServicePacks_Text["AwardItem"],tNewServicePacks_Text["ItemName"][nItemId]))
end 

----文字更新
function MarchGrowthPackage_ShowText(nNpcId,nIndex)
	local nUserId = Get_UserId()
	local nEvent = tMarchGrowthPackage_Rward[nNpcId][nIndex]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nNpcId][nIndex]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[nNpcId][nIndex]["Ceiling"]
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	--超过购买次数限制
	if nNpcId == 21441 then
		if nValue >= nCeiling then
			local nIndex1 = 130 + nIndex
			local sText = string.format(tMarchGrowthPackage_Text[21441]["Option"..nIndex1], 0)
			tNpcGossip[21441]["Option"..nIndex1] = sText
			return
		else
			local nLeft = nCeiling - nValue
			local nIndex1 = 130 + nIndex
			local sText = string.format(tMarchGrowthPackage_Text[21441]["Option"..nIndex1], nLeft)
			tNpcGossip[21441]["Option"..nIndex1] = sText
			return 
		end
	elseif nNpcId == 21442 then
		if nValue >= nCeiling then
			tNpcGossip[21442]["Option14"..nIndex] = tMarchGrowthPackage_Text[21442]["Option14"..nIndex.."_Haved"]
		end
		return
	end
end
--礼包文字更新
function MarchGrowthPackage_ShowPackageText(nItemId)
	local nEvent = tMarchGrowthPackage_Rward[nItemId]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nItemId]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[nItemId]["TotalData"]
	local nUserId = Get_UserId()
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	local sFirstName = tMarchGrowthPackage_Rward[nItemId]["FirstName"]
	local sLastName = tMarchGrowthPackage_Rward[nItemId]["LastName"]
	if nValue >= nCeiling - 1 then
		tItem[nItemId]["Text111"] = string.format(tMarchGrowthPackage_Text[3307496]["Text211"],sLastName)
	else
		tItem[nItemId]["Text111"] = string.format(tMarchGrowthPackage_Text[3307496]["Text111"],sFirstName,sFirstName)
	end
end
--判断是否可以购买
function MarchGrowthPackage_IsGetGift(nNpcId,nIndex)
	local nUserId = Get_UserId()
	local nEvent = tMarchGrowthPackage_Rward[nNpcId][nIndex]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nNpcId][nIndex]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[nNpcId][nIndex]["Ceiling"]
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	--活动后
	if not Sys_ChkFullTime(tMarchGrowthPackage_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--已购买过礼包
	if nValue >= nCeiling then 
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	Sys_DialogText(tMarchGrowthPackage_Text[nNpcId][nIndex]["Text161"])
	Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId][nIndex]["Option161"],"</F>MarchGrowthPackage_IsSecondary</N>"..nNpcId.."</N>"..nIndex.."</N>".. 1)
	Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId][nIndex]["Option161_Gold"],"</F>MarchGrowthPackage_IsSecondary</N>"..nNpcId.."</N>"..nIndex.."</N>".. 2)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
function MarchGrowthPackage_IsSecondary(nNpcId,nIndex,nIndex1)
	--nIndex1 标记金币2或天石1
	if nIndex1 == 1 then 
		Sys_DialogText(tMarchGrowthPackage_Text[nNpcId][nIndex]["Text171"])
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId][nIndex]["Option171"],"</F>MarchGrowthPackage_GetWeekGift</N>"..nNpcId.."</N>"..nIndex.."</N>"..nIndex1)
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId][nIndex]["Option172"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		Sys_DialogText(tMarchGrowthPackage_Text[nNpcId][nIndex]["Text171_Gold"])
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId][nIndex]["Option171"],"</F>MarchGrowthPackage_GetWeekGift</N>"..nNpcId.."</N>"..nIndex.."</N>"..nIndex1)
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId][nIndex]["Option172"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end
function MarchGrowthPackage_CheckItemCount(nNpcId,nIndex,nLeft,sItemName,nValue)
	local nCount = tonumber(Get_SysAcceptStr())
	local nNeedMoney = tMarchGrowthPackage_Rward[nNpcId][nIndex]["NeedMoney"] * nCount
	local nCeiling = tMarchGrowthPackage_Rward[nNpcId][nIndex]["Ceiling"]
	--输入有误
	if not (nCount >= 1 and nCount <= 10)then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
		return
	end
	--超过购买次数限制
	if (nValue + nCount - 1) >= nCeiling then
		Sys_DialogText(string.format(tMarchGrowthPackage_Text[nNpcId]["Text181"],nLeft,sItemName))
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId]["Option181"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return 
	end
	Sys_DialogText(string.format(tMarchGrowthPackage_Text[nNpcId]["Text151"],nNeedMoney,sItemName,nCount))
	Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId]["Option151"],"</F>MarchGrowthPackage_GetNormalGift</N>"..nNpcId.."</N>"..nIndex.."</N>"..nCount)
	Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId]["Option152"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
----银两NPC直卖
function MarchGrowthPackage_GetNormalGift(nNpcId,nIndex,nCount)
	local nUserId = Get_UserId()
	local nNeedMoney = tMarchGrowthPackage_Rward[nNpcId][nIndex]["NeedMoney"] * nCount
	local nEvent = tMarchGrowthPackage_Rward[nNpcId][nIndex]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nNpcId][nIndex]["DataType1"]
	local tTempReward = CommonFunc_Copy(tMarchGrowthPackage_Rward[nNpcId])
	local nGetNum = 0
	if nIndex == 9 or nIndex == 10 then
		nGetNum = nCount * 100
	else
		nGetNum = nCount
	end
	tTempReward[nIndex]["RewardItem"][1]["Attr"] = "0 "..nGetNum.." 3"
	
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tTempReward[nIndex],nUserId) then 
		LinkNpcGossipFunc_New(nNpcId,"1-9")
		return 
	end
	--提示金币不足
	if not User_CanPutMoney2Bag(-nNeedMoney,nUserId) then 
		Sys_DialogText(tMarchGrowthPackage_Text[21442]["Text181_Gold"])
		Sys_DialogOption(tMarchGrowthPackage_Text[21442]["Option181"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	if User_AddMoney(-nNeedMoney)then
		Task_AddStatistic(nEvent,nData,nCount,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		Sys_SaveEmoneyBuy(tMarchGrowthPackage_EmoneyLog[nNpcId][nIndex]) --打log
		RewardTemplate_UseItemAndMsg(tTempReward[nIndex])
	end
end


function MarchGrowthPackage_CheckNormalIndex(nNpcId,nIndex)
	local nNeedMoney = tMarchGrowthPackage_Rward[nNpcId][nIndex]["NeedMoney"]
	local sItemName = tMarchGrowthPackage_Text["Name"][nIndex]
	local nEvent = tMarchGrowthPackage_Rward[nNpcId][nIndex]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nNpcId][nIndex]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[nNpcId][nIndex]["Ceiling"]
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nLeft = nCeiling - nValue
	if nLeft < 0 then
		nLeft = 0
	end
	if nIndex == 10 or nIndex == 9 then
		Sys_DialogText(string.format(tMarchGrowthPackage_Text[nNpcId]["Text161"],sItemName,nNeedMoney))
		Sys_DialogText(string.format(tMarchGrowthPackage_Text[nNpcId]["Text162"],nLeft))
		Sys_DialogOptEdit(tMarchGrowthPackage_Text[nNpcId]["Option161"],32,"</F>MarchGrowthPackage_CheckItemCount</N>"..nNpcId.."</N>"..nIndex.."</N>"..nLeft.."</S>"..sItemName.."</N>"..nValue)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		Sys_DialogText(string.format(tMarchGrowthPackage_Text[nNpcId]["Text151"],nNeedMoney,sItemName,1))
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId]["Option151"],"</F>MarchGrowthPackage_GetNormalGift</N>"..nNpcId.."</N>"..nIndex.."</N>".. 1)
		Sys_DialogOption(tMarchGrowthPackage_Text[nNpcId]["Option152"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

----周礼包NPC直卖
function MarchGrowthPackage_GetWeekGift(nNpcId,nIndex,nIndex1)
	local nUserId = Get_UserId()
	local nUserEMoney = Get_UserEMoney()
	local nNeedMoney = tMarchGrowthPackage_Rward[nNpcId][nIndex]["NeedMoney"]
	local nNeedEMoney = tMarchGrowthPackage_Rward[nNpcId][nIndex]["NeedEMoney"]
	--活动后
	if not Sys_ChkFullTime(tMarchGrowthPackage_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nEvent = tMarchGrowthPackage_Rward[nNpcId][nIndex]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nNpcId][nIndex]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[nNpcId][nIndex]["Ceiling"]
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	--超过购买次数限制
	if nValue >= nCeiling then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return 
	end
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tMarchGrowthPackage_Rward[nNpcId][nIndex],nUserId) then 
		LinkNpcGossipFunc_New(nNpcId,"1-9")
		return 
	end
	--天石或银两不足
	if nIndex1 == 1 then 
		if nUserEMoney < nNeedEMoney then 
			Sys_DialogText(tMarchGrowthPackage_Text[21442]["Text181"])
			Sys_DialogOption(tMarchGrowthPackage_Text[21442]["Option181"],"</F>NULL")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
		if User_AddEMoney(-nNeedEMoney)then
			Task_AddStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			Sys_SaveEmoneyBuy(tMarchGrowthPackage_EmoneyLog[nNpcId][nIndex]) --打log
			RewardTemplate_UseItem(tMarchGrowthPackage_Rward[nNpcId][nIndex])
		end
	else
		local nNewIndex = 3 + nIndex
		if not User_CanPutMoney2Bag(-nNeedMoney,nUserId) then 
			Sys_DialogText(tMarchGrowthPackage_Text[21442]["Text181_Gold"])
			Sys_DialogOption(tMarchGrowthPackage_Text[21442]["Option181"],"</F>NULL")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
		if User_AddMoney(-nNeedMoney)then
			Task_AddStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			Sys_SaveEmoneyBuy(tMarchGrowthPackage_EmoneyLog[nNpcId][nNewIndex]) --打log
			RewardTemplate_UseItem(tMarchGrowthPackage_Rward[nNpcId][nIndex])
		end
	end
end
----打开周礼包
function MarchGrowthPackage_OpenRitesPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tMarchGrowthPackage_Rward[nItemId]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[nItemId]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[nItemId]["TotalData"]
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	local tRward
	if nValue >= nCeiling - 1 then
		tRward = tMarchGrowthPackage_Rward[nItemId][2]
	else
		tRward = tMarchGrowthPackage_Rward[nItemId][1]
	end
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tRward)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tRward)
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local nUserId = Get_UserId()
	
	local sFirstName = tMarchGrowthPackage_Rward[nItemId]["FirstName"]
	local sLastName = tMarchGrowthPackage_Rward[nItemId]["LastName"]
	
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tRward,nUserId) then 
		User_TalkChannel2005(string.format(tMarchGrowthPackage_Text["NoSpace"],nSpace))
		Sys_MsgBox(string.format(tMarchGrowthPackage_Text["NoSpace"],nSpace))
		return 
	end
	-- 判断是否间隔1天
	if not Task_StcInterval(nEvent,nData,1,4)then
		Sys_MsgBox(tMarchGrowthPackage_Text["Opened"])
		return
	end
	--每天可打开一次，可打开7次
	if nValue >= nCeiling - 1 then
		if Item_DelItem(nItemId) then
			Task_AddStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			RewardTemplate_UseItem(tRward)
		end
	else
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_UseItem(tRward)
	end
end
----打开普通礼包
function MarchGrowthPackage_OpenNormal(nItemId)
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tMarchGrowthPackage_Rward[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tMarchGrowthPackage_Rward[nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local nUserId = Get_UserId()
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tMarchGrowthPackage_Rward[nItemId],nUserId) then 
		User_TalkChannel2005(string.format(tMarchGrowthPackage_Text["NoSpace"],nSpace))
		return 
	end
	RewardTemplate_UseItem(tMarchGrowthPackage_Rward[nItemId])
end
--是否隐藏对白选项
function MarchGrowthPackage_ShowOptionText(nIndex)
	local nEvent = tMarchGrowthPackage_Rward[21441][nIndex]["EventType1"]
	local nData = tMarchGrowthPackage_Rward[21441][nIndex]["DataType1"]
	local nCeiling = tMarchGrowthPackage_Rward[21441][nIndex]["Ceiling"]
	local nValue = Get_UserStatisticValue(nEvent,nData)
	if nValue >= nCeiling then
		return false
	else
		return true
	end
end
--对白选项全部隐藏后显示活动后对白 
function MarchGrowthPackage_CloseOptionText()
	--是否显示活动后对白
	local bMark = true
	for i=1,11 do
		if MarchGrowthPackage_ShowOptionText(i) then 
			bMark =false
		end
	end
	if bMark == false then
		return false
	else
		return true
	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[4938] = 64
tNpcGossip[21441]= tNpcGossip[21441] or DefaultNpc:new{}
tNpcGossip[21441]["OptionHidden"] = 1
--活动前
tNpcGossip[21441]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21441]["Text111"] = tMarchGrowthPackage_Text[21441]["Text111"]
tNpcGossip[21441]["Text112"] = tMarchGrowthPackage_Text[21441]["Text112"]
tNpcGossip[21441]["Text113"] = tMarchGrowthPackage_Text[21441]["Text113"]
tNpcGossip[21441]["Text114"] = tMarchGrowthPackage_Text[21441]["Text114"]
tNpcGossip[21441]["Text115"] = tMarchGrowthPackage_Text[21441]["Text115"]
tNpcGossip[21441]["tOption1-1"] = {111}
tNpcGossip[21441]["Option111"] = tMarchGrowthPackage_Text[21441]["Option111"]
tNpcGossip[21441]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["BeforeTime"])
end
----活动后
tNpcGossip[21441]["Text1-2"] = {121}
tNpcGossip[21441]["Text121"] = tMarchGrowthPackage_Text[21441]["Text121"]
tNpcGossip[21441]["tOption1-2"] = {121}
tNpcGossip[21441]["Option121"] = tMarchGrowthPackage_Text[21441]["Option121"]
tNpcGossip[21441]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["AfterTime"]) or MarchGrowthPackage_CloseOptionText()
end
----活动中
tNpcGossip[21441]["Text1-3"] = {131,132}
tNpcGossip[21441]["Text131"] = tMarchGrowthPackage_Text[21441]["Text131"]
tNpcGossip[21441]["Text132"] = tMarchGrowthPackage_Text[21441]["Text132"]
tNpcGossip[21441]["tOption1-3"] = {131,132,133,134,135,136,137,138,139,140,141}
tNpcGossip[21441]["Option131"] = tMarchGrowthPackage_Text[21441]["Option131"]
tNpcGossip[21441]["Option132"] = tMarchGrowthPackage_Text[21441]["Option132"]
tNpcGossip[21441]["Option133"] = tMarchGrowthPackage_Text[21441]["Option133"]
tNpcGossip[21441]["Option134"] = tMarchGrowthPackage_Text[21441]["Option134"]
tNpcGossip[21441]["Option135"] = tMarchGrowthPackage_Text[21441]["Option135"]
tNpcGossip[21441]["Option136"] = tMarchGrowthPackage_Text[21441]["Option136"]
tNpcGossip[21441]["Option137"] = tMarchGrowthPackage_Text[21441]["Option137"]
tNpcGossip[21441]["Option138"] = tMarchGrowthPackage_Text[21441]["Option138"]
tNpcGossip[21441]["Option139"] = tMarchGrowthPackage_Text[21441]["Option139"]
tNpcGossip[21441]["Option140"] = tMarchGrowthPackage_Text[21441]["Option140"]
tNpcGossip[21441]["Option141"] = tMarchGrowthPackage_Text[21441]["Option141"]
tNpcGossip[21441]["ChkFunc1-3"] = function ()
	for i = 1,11 do
		MarchGrowthPackage_ShowText(21441,i)
	end
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tMarchGrowthPackage_Const["Level"],tMarchGrowthPackage_Const["Metempsychosis"]) and not MarchGrowthPackage_CloseOptionText()
end

tNpcGossip[21441]["OptionFunc131"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>1"
tNpcGossip[21441]["OptionFunc132"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>2"
tNpcGossip[21441]["OptionFunc133"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>3"
tNpcGossip[21441]["OptionFunc134"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>4"
tNpcGossip[21441]["OptionFunc135"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>5"
tNpcGossip[21441]["OptionFunc136"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>6"
tNpcGossip[21441]["OptionFunc137"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>7"
tNpcGossip[21441]["OptionFunc138"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>8"
tNpcGossip[21441]["OptionFunc139"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>9"
tNpcGossip[21441]["OptionFunc140"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>10"
tNpcGossip[21441]["OptionFunc141"] = "MarchGrowthPackage_CheckNormalIndex</N>21441</N>11"
for i=1,11 do
	local nIndex = 130 + i
	tNpcGossip[21441]["OptionChkFunc"..nIndex] = function ()
		return MarchGrowthPackage_ShowOptionText(i)
	end
end

--等级未达到
tNpcGossip[21441]["Text1-4"] = {141,142,143,144}
tNpcGossip[21441]["Text141"] = tMarchGrowthPackage_Text[21441]["Text141"]
tNpcGossip[21441]["Text142"] = tMarchGrowthPackage_Text[21441]["Text142"]
tNpcGossip[21441]["Text143"] = tMarchGrowthPackage_Text[21441]["Text143"]
tNpcGossip[21441]["Text144"] = tMarchGrowthPackage_Text[21441]["Text144"]
tNpcGossip[21441]["tOption1-4"] = {145}
tNpcGossip[21441]["Option145"] = tMarchGrowthPackage_Text[21441]["Option145"]
tNpcGossip[21441]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tMarchGrowthPackage_Const["Level"],tMarchGrowthPackage_Const["Metempsychosis"])
end
tNpcGossip[21441]["Text1-5"] = {151}
tNpcGossip[21441]["Text151"] = tMarchGrowthPackage_Text[21441]["Text151"]
tNpcGossip[21441]["tOption1-5"] = {151,152}
tNpcGossip[21441]["Option151"] = tMarchGrowthPackage_Text[21441]["Option151"]
tNpcGossip[21441]["Option152"] = tMarchGrowthPackage_Text[21441]["Option152"]

tNpcGossip[21441]["Text1-7"] = {171}
tNpcGossip[21441]["Text171"] = tMarchGrowthPackage_Text[21441]["Text171"]
tNpcGossip[21441]["tOption1-7"] = {171}
tNpcGossip[21441]["Option171"] = tMarchGrowthPackage_Text[21441]["Option171"]
tNpcGossip[21441]["OptionPoint171"] = "1-3"

tNpcGossip[21441]["Text1-9"] = {191}
tNpcGossip[21441]["Text191"] = tMarchGrowthPackage_Text[21442]["Text191"]
tNpcGossip[21441]["tOption1-9"] = {191}
tNpcGossip[21441]["Option191"] = tMarchGrowthPackage_Text[21442]["Option191"]

tNpcFace[4937] = 112
tNpcGossip[21442]= tNpcGossip[21442] or DefaultNpc:new{}
tNpcGossip[21442]["OptionHidden"] = 1
----活动前
tNpcGossip[21442]["Text1-1"] = {111,112,113,114}
tNpcGossip[21442]["Text111"] = tMarchGrowthPackage_Text[21442]["Text111"]
tNpcGossip[21442]["Text112"] = tMarchGrowthPackage_Text[21442]["Text112"]
tNpcGossip[21442]["Text113"] = tMarchGrowthPackage_Text[21442]["Text113"]
tNpcGossip[21442]["Text114"] = tMarchGrowthPackage_Text[21442]["Text114"]
tNpcGossip[21442]["tOption1-1"] = {111}
tNpcGossip[21442]["Option111"] = tMarchGrowthPackage_Text[21442]["Option111"]
tNpcGossip[21442]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["BeforeTime"])
end
--活动后
tNpcGossip[21442]["Text1-2"] = {121}
tNpcGossip[21442]["Text121"] = tMarchGrowthPackage_Text[21442]["Text121"]
tNpcGossip[21442]["tOption1-2"] = {121}
tNpcGossip[21442]["Option121"] = tMarchGrowthPackage_Text[21442]["Option121"]
tNpcGossip[21442]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["AfterTime"])
end
--活动中
--等级未达到
tNpcGossip[21442]["Text1-3"] = {131,132,133,134}
tNpcGossip[21442]["Text131"] = tMarchGrowthPackage_Text[21442]["Text131"]
tNpcGossip[21442]["Text132"] = tMarchGrowthPackage_Text[21442]["Text132"]
tNpcGossip[21442]["Text133"] = tMarchGrowthPackage_Text[21442]["Text133"]
tNpcGossip[21442]["Text134"] = tMarchGrowthPackage_Text[21442]["Text134"]
tNpcGossip[21442]["tOption1-3"] = {131}
tNpcGossip[21442]["Option131"] = tMarchGrowthPackage_Text[21442]["Option131"]
tNpcGossip[21442]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tMarchGrowthPackage_Const["Level"],tMarchGrowthPackage_Const["Metempsychosis"])
end
--等级达到
tNpcGossip[21442]["Text1-4"] = {141,142,143,144}
tNpcGossip[21442]["Text141"] = tMarchGrowthPackage_Text[21442]["Text141"]
tNpcGossip[21442]["Text142"] = tMarchGrowthPackage_Text[21442]["Text142"]
tNpcGossip[21442]["Text143"] = tMarchGrowthPackage_Text[21442]["Text143"]
tNpcGossip[21442]["Text144"] = tMarchGrowthPackage_Text[21442]["Text144"]
tNpcGossip[21442]["ChkFunc1-4"] = function ()
	for i = 1,3 do
		MarchGrowthPackage_ShowText(21442,i)
	end
	return Sys_ChkFullTime(tMarchGrowthPackage_Const["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tMarchGrowthPackage_Const["Level"],tMarchGrowthPackage_Const["Metempsychosis"])
end
tNpcGossip[21442]["tOption1-4"] = {141,142,143,144}
tNpcGossip[21442]["Option141"] = tMarchGrowthPackage_Text[21442]["Option141"]
tNpcGossip[21442]["Option142"] = tMarchGrowthPackage_Text[21442]["Option142"]
tNpcGossip[21442]["Option143"] = tMarchGrowthPackage_Text[21442]["Option143"]
tNpcGossip[21442]["Option144"] = tMarchGrowthPackage_Text[21442]["Option144"]
tNpcGossip[21442]["OptionFunc141"] = "MarchGrowthPackage_IsGetGift</N>21442</N>1"
tNpcGossip[21442]["OptionFunc142"] = "MarchGrowthPackage_IsGetGift</N>21442</N>2"
tNpcGossip[21442]["OptionFunc143"] = "MarchGrowthPackage_IsGetGift</N>21442</N>3"

tNpcGossip[21442]["Text1-5"] = {151}
tNpcGossip[21442]["Text151"] = tMarchGrowthPackage_Text[21442]["Text151"]
tNpcGossip[21442]["tOption1-5"] = {151}
tNpcGossip[21442]["Option151"] = tMarchGrowthPackage_Text[21442]["Option151"]
tNpcGossip[21442]["OptionPoint151"] = "1-4"


tNpcGossip[21442]["Text1-9"] = {191}
tNpcGossip[21442]["Text191"] = tMarchGrowthPackage_Text[21442]["Text191"]
tNpcGossip[21442]["tOption1-9"] = {191}
tNpcGossip[21442]["Option191"] = tMarchGrowthPackage_Text[21442]["Option191"]



---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3307499] = tItem[3307499] or {}
tItem[3307499]["Function"] = function(nItemId,sItemName)
	MarchGrowthPackage_OpenNormal(nItemId)
end
tItem[3307500] = tItem[3307500] or {}
tItem[3307500]["Function"] = function(nItemId,sItemName)
	MarchGrowthPackage_OpenNormal(nItemId)
end
tItemFace[3307496] = 692
tItemFace[3307497] = 953
tItemFace[3307498] = 963
tItemFace[3307539] = 795
--------物品有对白模板
tItem[3307496] = tItem[3307496] or {}
tItem[3307496]["Text1-1"] = {111}
tItem[3307496]["Text111"] = tMarchGrowthPackage_Text[3307496]["Text111"]
tItem[3307496]["ChkFunc1-1"] = function() 
	MarchGrowthPackage_ShowPackageText(3307496)
	return true
end
tItem[3307496]["tOption1-1"] = {111,112}
tItem[3307496]["Option111"] = tMarchGrowthPackage_Text[3307496]["Option111"]
tItem[3307496]["OptionFunc111"]="MarchGrowthPackage_OpenRitesPackage</N>3307496"
tItem[3307496]["Option112"] = tMarchGrowthPackage_Text[3307496]["Option112"]


tItem[3307497] = tItem[3307497] or {}
tItem[3307497]["Text1-1"] = {111}
tItem[3307497]["Text111"] = tMarchGrowthPackage_Text[3307496]["Text111"]
tItem[3307497]["ChkFunc1-1"] = function() 
	MarchGrowthPackage_ShowPackageText(3307497)
	return true
end
tItem[3307497]["tOption1-1"] = {111,112}
tItem[3307497]["Option111"] = tMarchGrowthPackage_Text[3307496]["Option111"]
tItem[3307497]["OptionFunc111"]="MarchGrowthPackage_OpenRitesPackage</N>3307497"
tItem[3307497]["Option112"] = tMarchGrowthPackage_Text[3307496]["Option112"]


tItem[3307498] = tItem[3307498] or {}
tItem[3307498]["Text1-1"] = {111}
tItem[3307498]["Text111"] = tMarchGrowthPackage_Text[3307496]["Text111"]
tItem[3307498]["ChkFunc1-1"] = function() 
	MarchGrowthPackage_ShowPackageText(3307498)
	return true
end
tItem[3307498]["tOption1-1"] = {111,112}
tItem[3307498]["Option111"] = tMarchGrowthPackage_Text[3307496]["Option111"]
tItem[3307498]["OptionFunc111"]="MarchGrowthPackage_OpenRitesPackage</N>3307498"
tItem[3307498]["Option112"] = tMarchGrowthPackage_Text[3307496]["Option112"]
--15级极品2D武器礼盒
tItem[3307586]=tItem[3307586] or {}
tItem[3307586]["Function"]=function(nItemId,sItemName)
    MarchGrowthPackage_UseWeaponPack(nItemId)
end

--武器勇士对话
tItem[3307586]["Text6-1"] = {111}
tItem[3307586]["Text111"] = tNewServicePacks_Text["Weapon"]
tItem[3307586]["tOption6-1"] = {61,62,63,64}
tItem[3307586]["Option61"] = tNewServicePacks_Text["ItemName"][410029]
tItem[3307586]["Option62"] = tNewServicePacks_Text["ItemName"][420029]
tItem[3307586]["Option63"] = tNewServicePacks_Text["ItemName"][480029]
tItem[3307586]["Option64"] = tNewServicePacks_Text["ReGive"]
tItem[3307586]["OptionFunc61"] = "MarchGrowthPackage_SelectOption</N>3307586</N>10</N>1"
tItem[3307586]["OptionFunc62"] = "MarchGrowthPackage_SelectOption</N>3307586</N>10</N>2"
tItem[3307586]["OptionFunc63"] = "MarchGrowthPackage_SelectOption</N>3307586</N>10</N>3"

--武器战士对话
tItem[3307586]["Text7-1"] = {111}
tItem[3307586]["tOption7-1"] = {71,72,73,64}
tItem[3307586]["Option71"] = tNewServicePacks_Text["ItemName"][560029]
tItem[3307586]["Option72"] = tNewServicePacks_Text["ItemName"][561029]
tItem[3307586]["Option73"] = tNewServicePacks_Text["ItemName"][900009]
tItem[3307586]["OptionFunc71"] = "MarchGrowthPackage_SelectOption</N>3307586</N>20</N>1"
tItem[3307586]["OptionFunc72"] = "MarchGrowthPackage_SelectOption</N>3307586</N>20</N>2"
tItem[3307586]["OptionFunc73"] = "MarchGrowthPackage_SelectOption</N>3307586</N>20</N>3"

--武器弓手对话
tItem[3307586]["Text8-1"] = {111}
tItem[3307586]["tOption8-1"] = {81,82,64}
tItem[3307586]["Option81"] = tNewServicePacks_Text["ItemName"][500019]
tItem[3307586]["Option82"] = tNewServicePacks_Text["ItemName"][613019]
tItem[3307586]["OptionFunc81"] = "MarchGrowthPackage_SelectOption</N>3307586</N>40</N>1"
tItem[3307586]["OptionFunc82"] = "MarchGrowthPackage_SelectOption</N>3307586</N>40</N>2"

--武器刺客对话
tItem[3307586]["Text9-1"] = {111}
tItem[3307586]["tOption9-1"] = {91,92,64}
tItem[3307586]["Option91"] = tNewServicePacks_Text["ItemName"][511029]
tItem[3307586]["Option92"] = tNewServicePacks_Text["ItemName"][601029]
tItem[3307586]["OptionFunc91"] = "MarchGrowthPackage_SelectOption</N>3307586</N>50</N>1"
tItem[3307586]["OptionFunc92"] = "MarchGrowthPackage_SelectOption</N>3307586</N>50</N>2"

--武器海盗对话
tItem[3307586]["Text10-1"] = {111}
tItem[3307586]["tOption10-1"] = {101,102,64}
tItem[3307586]["Option101"] = tNewServicePacks_Text["ItemName"][611029]
tItem[3307586]["Option102"] = tNewServicePacks_Text["ItemName"][612029]
tItem[3307586]["OptionFunc101"] = "MarchGrowthPackage_SelectOption</N>3307586</N>70</N>1"
tItem[3307586]["OptionFunc102"] = "MarchGrowthPackage_SelectOption</N>3307586</N>70</N>2"

