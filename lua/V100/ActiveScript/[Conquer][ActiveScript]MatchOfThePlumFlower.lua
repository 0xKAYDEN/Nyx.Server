------------------------------------------------------------------------------------
--Name:		170119[简体征服][活动脚本]2017年情人节花魁赛
--Creator:		陈磊
--Created:		2017/01/19
------------------------------------------------------------------------------------


--命名前缀
--tMatchOfThePlumFlower_

------------------------------------常量定义------------------------------------

local tMatchOfThePlumFlower_Cont = {}
	tMatchOfThePlumFlower_Cont["ActivityTime"] = "2017-2-16 00:00 2017-02-22 23:59"
	tMatchOfThePlumFlower_Cont["ActivityTime2"] = "2017-02-23 00:00 2017-03-10 23:59"
	tMatchOfThePlumFlower_Cont["ActivityTime3"] = "2017-02-16 00:00 2017-03-10 23:59"
	tMatchOfThePlumFlower_Cont["Web"] = "http://event.co.99.com/mrmsco2017"
	tMatchOfThePlumFlower_Cont["Level"] = 80
	tMatchOfThePlumFlower_Cont["Metempsychosis"] = 0
	tMatchOfThePlumFlower_Cont["Emoney"] = 99
	tMatchOfThePlumFlower_Cont["Money"] = 10000000
	tMatchOfThePlumFlower_Cont["Strength"] = {}
	tMatchOfThePlumFlower_Cont["Strength"][3302187] = 400
	tMatchOfThePlumFlower_Cont["Strength"][3302188] = 4000
	tMatchOfThePlumFlower_Cont["Space"] = 3 
	tMatchOfThePlumFlower_Cont["Space1"] = 1 
	tMatchOfThePlumFlower_Cont["HairCD"] = 10
	tMatchOfThePlumFlower_Cont["EmoneyLog"] = "250	4050	99	99	1	"
	tMatchOfThePlumFlower_Cont["ItemId"] = 1088000
	tMatchOfThePlumFlower_Cont["nMonopoly"] = 0
	tMatchOfThePlumFlower_Cont["ItemNum"] = 2
	tMatchOfThePlumFlower_Cont["LogId"] = 12000637
	
local tMatchOfThePlumFlower_Space = {}
	tMatchOfThePlumFlower_Space[3302224]  = 2
	tMatchOfThePlumFlower_Space[3302225]  = 1
	tMatchOfThePlumFlower_Space[3302226]  = 1
	tMatchOfThePlumFlower_Space[4]  = 1
	tMatchOfThePlumFlower_Space[5]  = 1
	tMatchOfThePlumFlower_Space[6]  = 1
	tMatchOfThePlumFlower_Space[7]  = 1
	tMatchOfThePlumFlower_Space[1]  = 0
	
	
local tMatchOfThePlumFlower_Log = {}
	tMatchOfThePlumFlower_Log["10WPoint"] = "0,0,0,0,12000637,1[1],0,0"	
	tMatchOfThePlumFlower_Log["20WPoint"] = "0,0,0,0,12000637,1[2],0,0"	
	tMatchOfThePlumFlower_Log["30WPoint"] = "0,0,0,0,12000637,1[3],0,0"	
	tMatchOfThePlumFlower_Log["Money"] = "0,0,1,30000000,12000637,2,0,0"
	tMatchOfThePlumFlower_Log["Dragon"] = "0,0,2,1088000,12000637,3,0,0"
	tMatchOfThePlumFlower_Log["PutGoods"] = "0,0,%d,%d,12000637,5,0,0"
	tMatchOfThePlumFlower_Log["StrengthReward"] = "0,0,%d,%d,12000637,4,%d,%d"	
	
local tMatchOfThePlumFlower_Strength = {}
	tMatchOfThePlumFlower_Strength[3302168] = 500
	tMatchOfThePlumFlower_Strength[3302169] = 1500
	tMatchOfThePlumFlower_Strength[3302170] = 3000
	--掩码定义
	--#掩码说明
	--#stc(155,83)	是否报名
	--#stc(155,84)	上交百合
	--#stc(155,85)	上交玫瑰
	--#stc(155,86)	上交兰花
	--#stc(155,87)	上交郁金香
	--#stc(155,88)	上交黄金玫瑰
local tMatchOfThePlumFlower_Stc = {}
	-- stc(155,83)	是否报名
	tMatchOfThePlumFlower_Stc["Join"] = {}
	tMatchOfThePlumFlower_Stc["Join"]["EventType"] = 155
	tMatchOfThePlumFlower_Stc["Join"]["DataType"] = 83
	-- stc(155,84)	百合花上交数
	tMatchOfThePlumFlower_Stc[311] = {}
	tMatchOfThePlumFlower_Stc[311]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[311]["DataType"] = 84
	-- stc(155,85)	玫瑰花上交数
	tMatchOfThePlumFlower_Stc[312] = {}
	tMatchOfThePlumFlower_Stc[312]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[312]["DataType"] = 85
	-- stc(155,86)	兰花上交数
	tMatchOfThePlumFlower_Stc[313] = {}
	tMatchOfThePlumFlower_Stc[313]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[313]["DataType"] = 86
	-- stc(155,87)	郁金香上交数
	tMatchOfThePlumFlower_Stc[314] = {}
	tMatchOfThePlumFlower_Stc[314]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[314]["DataType"] = 87
	-- stc(155,88)	黄金玫瑰上交数
	tMatchOfThePlumFlower_Stc[315] = {}
	tMatchOfThePlumFlower_Stc[315]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[315]["DataType"] = 88
	-- stc(155,93)	粉丝积分
	tMatchOfThePlumFlower_Stc["Score"] = {}
	tMatchOfThePlumFlower_Stc["Score"]["EventType"] = 155
	tMatchOfThePlumFlower_Stc["Score"]["DataType"] = 93
	-- stc(155,94)	发送奖励
	tMatchOfThePlumFlower_Stc["Award"] = {}
	tMatchOfThePlumFlower_Stc["Award"]["EventType"] = 155
	tMatchOfThePlumFlower_Stc["Award"]["DataType"] = 94
	-- stc(155,99)	每日礼包掩码
	tMatchOfThePlumFlower_Stc["Daily"] = {}
	tMatchOfThePlumFlower_Stc["Daily"]["EventType"] = 155
	tMatchOfThePlumFlower_Stc["Daily"]["DataType"] = 99
	-- stc(133,36) 情人礼帽掩码
	tMatchOfThePlumFlower_Stc[1] = {}
	tMatchOfThePlumFlower_Stc[1]["EventType"] = 133
	tMatchOfThePlumFlower_Stc[1]["DataType"] = 36
	tMatchOfThePlumFlower_Stc[2] = {}
	tMatchOfThePlumFlower_Stc[2]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[2]["DataType"] = 97
	tMatchOfThePlumFlower_Stc[3] = {}
	tMatchOfThePlumFlower_Stc[3]["EventType"] = 155
	tMatchOfThePlumFlower_Stc[3]["DataType"] = 98
	
local tMatchOfThePlumFlower_Flower = {}
--百合花选项
	tMatchOfThePlumFlower_Flower[311] = {}
	tMatchOfThePlumFlower_Flower[311][321] = 752001
	tMatchOfThePlumFlower_Flower[311][322] = 752003
	tMatchOfThePlumFlower_Flower[311][323] = 752009
	tMatchOfThePlumFlower_Flower[311][324] = 752099
	tMatchOfThePlumFlower_Flower[311][325] = 752999
--玫瑰选项
	tMatchOfThePlumFlower_Flower[312] = {}
	tMatchOfThePlumFlower_Flower[312][321] = 751001
	tMatchOfThePlumFlower_Flower[312][322] = 751003
	tMatchOfThePlumFlower_Flower[312][323] = 751009
	tMatchOfThePlumFlower_Flower[312][324] = 751099
	tMatchOfThePlumFlower_Flower[312][325] = 751999
--兰花选项
	tMatchOfThePlumFlower_Flower[313] = {}
	tMatchOfThePlumFlower_Flower[313][321] = 753001
	tMatchOfThePlumFlower_Flower[313][322] = 753003
	tMatchOfThePlumFlower_Flower[313][323] = 753009
	tMatchOfThePlumFlower_Flower[313][324] = 753099
	tMatchOfThePlumFlower_Flower[313][325] = 753999
--郁金香选项
	tMatchOfThePlumFlower_Flower[314] = {}
	tMatchOfThePlumFlower_Flower[314][321] = 754001
	tMatchOfThePlumFlower_Flower[314][322] =754003
	tMatchOfThePlumFlower_Flower[314][323] =754009
	tMatchOfThePlumFlower_Flower[314][324] = 754099
	tMatchOfThePlumFlower_Flower[314][325] = 754999
	
--宝物	
local tMatchOfThePlumFlower_Treasure = {}
	tMatchOfThePlumFlower_Treasure[411] = 3006542
	tMatchOfThePlumFlower_Treasure[412] = 3006543
	tMatchOfThePlumFlower_Treasure[413] = 3003125
	tMatchOfThePlumFlower_Treasure[414] = 720027
	tMatchOfThePlumFlower_Treasure[415] = 3003124
	tMatchOfThePlumFlower_Treasure[416] = 3002030
	tMatchOfThePlumFlower_Treasure[417] = 3003126
	tMatchOfThePlumFlower_Treasure[418] = 3002926
	tMatchOfThePlumFlower_Treasure[419] = 1088000
	tMatchOfThePlumFlower_Treasure[4110] = 1100003
	tMatchOfThePlumFlower_Treasure[4111] = 3005360
	
local tMatchOfThePlumFlower_Score = {}
	tMatchOfThePlumFlower_Score[752001] = 5
	tMatchOfThePlumFlower_Score[752003] = 15
	tMatchOfThePlumFlower_Score[752009] = 45
	tMatchOfThePlumFlower_Score[752099] = 495
	tMatchOfThePlumFlower_Score[752999] = 4995
	
	tMatchOfThePlumFlower_Score[751001] = 5
	tMatchOfThePlumFlower_Score[751003] = 15
	tMatchOfThePlumFlower_Score[751009] = 45
	tMatchOfThePlumFlower_Score[751099] = 495
	tMatchOfThePlumFlower_Score[751999] = 4995
	
	tMatchOfThePlumFlower_Score[753001] = 5
	tMatchOfThePlumFlower_Score[753003] = 15
	tMatchOfThePlumFlower_Score[753009] = 45
	tMatchOfThePlumFlower_Score[753099] = 495
	tMatchOfThePlumFlower_Score[753999] = 4995
	
	tMatchOfThePlumFlower_Score[754001] = 10
	tMatchOfThePlumFlower_Score[754003] = 30
	tMatchOfThePlumFlower_Score[754009] = 90
	tMatchOfThePlumFlower_Score[754099] = 990
	tMatchOfThePlumFlower_Score[754999] = 9990
	

	tMatchOfThePlumFlower_Score[3006542] = 5
	tMatchOfThePlumFlower_Score[3006543] = 5
	tMatchOfThePlumFlower_Score[3003125] = 30
	tMatchOfThePlumFlower_Score[720027] = 15
	tMatchOfThePlumFlower_Score[3003124] = 30
	tMatchOfThePlumFlower_Score[3002030] = 30
	tMatchOfThePlumFlower_Score[3003126] = 100
	tMatchOfThePlumFlower_Score[3002926] = 100
	tMatchOfThePlumFlower_Score[1088000] = 600
	tMatchOfThePlumFlower_Score[1100003] = 300
	tMatchOfThePlumFlower_Score[3005360] = 990
	                                                              
	
	
local tMatchOfThePlumFlower_Count = {}
	tMatchOfThePlumFlower_Count[752001] = 1
	tMatchOfThePlumFlower_Count[752003] = 3
	tMatchOfThePlumFlower_Count[752009] = 9
	tMatchOfThePlumFlower_Count[752099] = 99
	tMatchOfThePlumFlower_Count[752999] = 999
	
	tMatchOfThePlumFlower_Count[751001] =  1
	tMatchOfThePlumFlower_Count[751003] =  3 
	tMatchOfThePlumFlower_Count[751009] =  9 
	tMatchOfThePlumFlower_Count[751099] =  99 
	tMatchOfThePlumFlower_Count[751999] =  999 
	
	tMatchOfThePlumFlower_Count[753001] = 1
	tMatchOfThePlumFlower_Count[753003] = 3
	tMatchOfThePlumFlower_Count[753009] = 9
	tMatchOfThePlumFlower_Count[753099] = 99
	tMatchOfThePlumFlower_Count[753999] = 999
	
	tMatchOfThePlumFlower_Count[754001] =  1
	tMatchOfThePlumFlower_Count[754003] =  3 
	tMatchOfThePlumFlower_Count[754009] =  9 
	tMatchOfThePlumFlower_Count[754099] =  99 
	tMatchOfThePlumFlower_Count[754999] =  999 
	

local tMatchOfThePlumFlower_Package = {}
	tMatchOfThePlumFlower_Package[3302167] = {}
	tMatchOfThePlumFlower_Package[3302167]["LogId"] = 12000637
	tMatchOfThePlumFlower_Package[3302167]["RewardItem"] = {}
	tMatchOfThePlumFlower_Package[3302167]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Package[3302167]["RewardItem"][1]["Id"] = 3302167
	tMatchOfThePlumFlower_Package[3302167]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tMatchOfThePlumFlower_Package[3302167]["RewardEffect"] = {}
	tMatchOfThePlumFlower_Package[3302167]["RewardEffect"]["SzObj"] = "self"
	tMatchOfThePlumFlower_Package[3302167]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tMatchOfThePlumFlower_Package[3302213] = {}
	tMatchOfThePlumFlower_Package[3302213]["LogId"] = 12000637
	tMatchOfThePlumFlower_Package[3302213]["RewardItem"] = {}
	tMatchOfThePlumFlower_Package[3302213]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Package[3302213]["RewardItem"][1]["Id"] = 3302213
	tMatchOfThePlumFlower_Package[3302213]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Package[3302213]["RewardEffect"] = {}
	tMatchOfThePlumFlower_Package[3302213]["RewardEffect"]["SzObj"] = "self"
	tMatchOfThePlumFlower_Package[3302213]["RewardEffect"]["Effect"] = "zf2-e128"
	
local tMatchOfThePlumFlower_Reward = {}

	tMatchOfThePlumFlower_Reward[3302167] = {}
	tMatchOfThePlumFlower_Reward[3302167]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][1]["Id"] = 3009001
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][2] = {}
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][2]["Id"] = 194375
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][2]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][3] = {}
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][3]["Id"] = 3302212
	tMatchOfThePlumFlower_Reward[3302167]["RewardItem"][3]["Attr"] = "0 2 0 10080 1"
	tMatchOfThePlumFlower_Reward[3302167]["RewardStrengthValue"] = {}
	tMatchOfThePlumFlower_Reward[3302167]["RewardStrengthValue"]["Value"] = 1000
	tMatchOfThePlumFlower_Reward[3302167]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302167]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302167]["DeleteItem"][1]["Id"] = 3302167
	
	--低配碎片合成衣服
	tMatchOfThePlumFlower_Reward[3302168] = {}
	tMatchOfThePlumFlower_Reward[3302168]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302168]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302168]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302168]["RewardItem"][1]["Id"] = 3302246
	tMatchOfThePlumFlower_Reward[3302168]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302168]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302168]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302168]["DeleteItem"][1]["Id"] = 3302168
	tMatchOfThePlumFlower_Reward[3302168]["DeleteItem"][1]["ItemNum"] = 10
	tMatchOfThePlumFlower_Reward[3302168]["RewardEffect"] = {}
	tMatchOfThePlumFlower_Reward[3302168]["RewardEffect"]["SzObj"] = "self"
	tMatchOfThePlumFlower_Reward[3302168]["RewardEffect"]["Effect"] = "recovery"		
	--低配光效花神时装碎片合成礼包
	tMatchOfThePlumFlower_Reward[3302169] = {}
	tMatchOfThePlumFlower_Reward[3302169]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302169]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302169]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302169]["RewardItem"][1]["Id"] = 3302247
	tMatchOfThePlumFlower_Reward[3302169]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302169]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302169]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302169]["DeleteItem"][1]["Id"] = 3302169
	tMatchOfThePlumFlower_Reward[3302169]["DeleteItem"][1]["ItemNum"] = 10	
	tMatchOfThePlumFlower_Reward[3302169]["RewardEffect"] = {}
	tMatchOfThePlumFlower_Reward[3302169]["RewardEffect"]["SzObj"] = "self"
	tMatchOfThePlumFlower_Reward[3302169]["RewardEffect"]["Effect"] = "zf2-e280"	

	--高配光效花神时装碎片合成衣服
	tMatchOfThePlumFlower_Reward[3302170] = {}
	tMatchOfThePlumFlower_Reward[3302170]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302170]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302170]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302170]["RewardItem"][1]["Id"] = 3302248
	tMatchOfThePlumFlower_Reward[3302170]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302170]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302170]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302170]["DeleteItem"][1]["Id"] = 3302170
	tMatchOfThePlumFlower_Reward[3302170]["DeleteItem"][1]["ItemNum"] = 10	
	tMatchOfThePlumFlower_Reward[3302170]["RewardEffect"] = {}
	tMatchOfThePlumFlower_Reward[3302170]["RewardEffect"]["SzObj"] = "self"
	tMatchOfThePlumFlower_Reward[3302170]["RewardEffect"]["Effect"] = "accession"

	--每日礼包
	tMatchOfThePlumFlower_Reward[3302213] = {}
	tMatchOfThePlumFlower_Reward[3302213]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"][1]["Id"] = 194375
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"][1]["Attr"] = "0 1 3 180 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"][2] = {}
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"][2]["Id"] = 3008965 
	tMatchOfThePlumFlower_Reward[3302213]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302213]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302213]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302213]["DeleteItem"][1]["Id"] = 3302213
	tMatchOfThePlumFlower_Reward[3302213]["Talk"] = tMatchOfThePlumFlower_Text["OpenPack"] 
	
	
	--绝世发型礼包
	tMatchOfThePlumFlower_Reward[3302204] = {}
	tMatchOfThePlumFlower_Reward[3302204][1] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][1]["Id"] = 3302205
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][2] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][2]["Id"] = 3302207
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][3] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][3]["Id"] = 3302209
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][3]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][4] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][4]["Id"] = 3302211
	tMatchOfThePlumFlower_Reward[3302204][1]["RewardItem"][4]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302204][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302204][1]["DeleteItem"][1]["Id"] = 3302204		
	
	tMatchOfThePlumFlower_Reward[3302204][2] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][1]["Id"] = 3302205
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][2] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][2]["Id"] = 3302206
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][3] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][3]["Id"] = 3302208
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][3]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][4] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][4]["Id"] = 3302210
	tMatchOfThePlumFlower_Reward[3302204][2]["RewardItem"][4]["Attr"] = "0 1 0 1440 1"
	tMatchOfThePlumFlower_Reward[3302204][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302204][2]["DeleteItem"][1]["Id"] = 3302204			
	
	--永久发型可选包
	tMatchOfThePlumFlower_Reward[3302205] = {}
	tMatchOfThePlumFlower_Reward[3302205][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302205][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][1]["RewardItem"][1]["Id"] = 3005975
	tMatchOfThePlumFlower_Reward[3302205][1]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302205][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][1]["DeleteItem"][1]["Id"] = 3302205	
	tMatchOfThePlumFlower_Reward[3302205][2] = {}
	tMatchOfThePlumFlower_Reward[3302205][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302205][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][2]["RewardItem"][1]["Id"] = 3302200
	tMatchOfThePlumFlower_Reward[3302205][2]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302205][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][2]["DeleteItem"][1]["Id"] = 3302205	
	tMatchOfThePlumFlower_Reward[3302205][3] = {}
	tMatchOfThePlumFlower_Reward[3302205][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302205][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][3]["RewardItem"][1]["Id"] = 3302202
	tMatchOfThePlumFlower_Reward[3302205][3]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302205][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][3]["DeleteItem"][1]["Id"] = 3302205	
	tMatchOfThePlumFlower_Reward[3302205][4] = {}
	tMatchOfThePlumFlower_Reward[3302205][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302205][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][4]["RewardItem"][1]["Id"] = 3005978
	tMatchOfThePlumFlower_Reward[3302205][4]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302205][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][4]["DeleteItem"][1]["Id"] = 3302205
	tMatchOfThePlumFlower_Reward[3302205][5] = {}
	tMatchOfThePlumFlower_Reward[3302205][5]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302205][5]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][5]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][5]["RewardItem"][1]["Id"] = 3302201
	tMatchOfThePlumFlower_Reward[3302205][5]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302205][5]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][5]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][5]["DeleteItem"][1]["Id"] = 3302205	
	tMatchOfThePlumFlower_Reward[3302205][6] = {}
	tMatchOfThePlumFlower_Reward[3302205][6]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302205][6]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][6]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][6]["RewardItem"][1]["Id"] = 3302203
	tMatchOfThePlumFlower_Reward[3302205][6]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302205][6]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302205][6]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302205][6]["DeleteItem"][1]["Id"] = 3302205		
	
	tMatchOfThePlumFlower_Reward[3302212] = {}
	tMatchOfThePlumFlower_Reward[3302212][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302212][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][1]["RewardItem"][1]["Id"] = 350107
	tMatchOfThePlumFlower_Reward[3302212][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302212][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][1]["DeleteItem"][1]["Id"] = 3302212	
	tMatchOfThePlumFlower_Reward[3302212][2] = {}
	tMatchOfThePlumFlower_Reward[3302212][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302212][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][2]["RewardItem"][1]["Id"] = 360207
	tMatchOfThePlumFlower_Reward[3302212][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302212][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][2]["DeleteItem"][1]["Id"] = 3302212
	tMatchOfThePlumFlower_Reward[3302212][3] = {}
	tMatchOfThePlumFlower_Reward[3302212][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302212][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][3]["RewardItem"][1]["Id"] = 370047
	tMatchOfThePlumFlower_Reward[3302212][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302212][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][3]["DeleteItem"][1]["Id"] = 3302212
	tMatchOfThePlumFlower_Reward[3302212][4] = {}
	tMatchOfThePlumFlower_Reward[3302212][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302212][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][4]["RewardItem"][1]["Id"] = 380053
	tMatchOfThePlumFlower_Reward[3302212][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302212][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302212][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302212][4]["DeleteItem"][1]["Id"] = 3302212
	
	tMatchOfThePlumFlower_Reward[3302221] = {}
	tMatchOfThePlumFlower_Reward[3302221][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302221][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][1]["RewardItem"][1]["Id"] = 350108
	tMatchOfThePlumFlower_Reward[3302221][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302221][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][1]["DeleteItem"][1]["Id"] = 3302221
	tMatchOfThePlumFlower_Reward[3302221][2] = {}
	tMatchOfThePlumFlower_Reward[3302221][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302221][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][2]["RewardItem"][1]["Id"] = 360208
	tMatchOfThePlumFlower_Reward[3302221][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302221][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][2]["DeleteItem"][1]["Id"] = 3302221
	tMatchOfThePlumFlower_Reward[3302221][3] = {}
	tMatchOfThePlumFlower_Reward[3302221][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302221][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][3]["RewardItem"][1]["Id"] = 370048
	tMatchOfThePlumFlower_Reward[3302221][3]["RewardItem"][1]["Attr"] = "0 1 3 86400 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302221][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][3]["DeleteItem"][1]["Id"] = 3302221
	tMatchOfThePlumFlower_Reward[3302221][4] = {}
	tMatchOfThePlumFlower_Reward[3302221][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302221][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][4]["RewardItem"][1]["Id"] = 380054
	tMatchOfThePlumFlower_Reward[3302221][4]["RewardItem"][1]["Attr"] = "0 1 3 86400 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302221][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302221][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302221][4]["DeleteItem"][1]["Id"] = 3302221
	
	tMatchOfThePlumFlower_Reward[3302222] = {}
	tMatchOfThePlumFlower_Reward[3302222][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302222][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][1]["RewardItem"][1]["Id"] = 350108
	tMatchOfThePlumFlower_Reward[3302222][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302222][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][1]["DeleteItem"][1]["Id"] = 3302222
	tMatchOfThePlumFlower_Reward[3302222][2] = {}
	tMatchOfThePlumFlower_Reward[3302222][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302222][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][2]["RewardItem"][1]["Id"] = 360208
	tMatchOfThePlumFlower_Reward[3302222][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302222][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][2]["DeleteItem"][1]["Id"] = 3302222	
	tMatchOfThePlumFlower_Reward[3302222][3] = {}
	tMatchOfThePlumFlower_Reward[3302222][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302222][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][3]["RewardItem"][1]["Id"] = 370048
	tMatchOfThePlumFlower_Reward[3302222][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302222][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][3]["DeleteItem"][1]["Id"] = 3302222
	tMatchOfThePlumFlower_Reward[3302222][4] = {}
	tMatchOfThePlumFlower_Reward[3302222][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302222][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][4]["RewardItem"][1]["Id"] = 380054
	tMatchOfThePlumFlower_Reward[3302222][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302222][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302222][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302222][4]["DeleteItem"][1]["Id"] = 3302222	
	
	tMatchOfThePlumFlower_Reward[3302223] = {}
	tMatchOfThePlumFlower_Reward[3302223][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302223][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][1]["RewardItem"][1]["Id"] = 350108
	tMatchOfThePlumFlower_Reward[3302223][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302223][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][1]["DeleteItem"][1]["Id"] = 3302223
	tMatchOfThePlumFlower_Reward[3302223][2] = {}
	tMatchOfThePlumFlower_Reward[3302223][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302223][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][2]["RewardItem"][1]["Id"] = 360208
	tMatchOfThePlumFlower_Reward[3302223][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302223][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][2]["DeleteItem"][1]["Id"] = 3302223	
	tMatchOfThePlumFlower_Reward[3302223][3] = {}
	tMatchOfThePlumFlower_Reward[3302223][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302223][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][3]["RewardItem"][1]["Id"] = 370048
	tMatchOfThePlumFlower_Reward[3302223][3]["RewardItem"][1]["Attr"] = "0 1 3 21600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302223][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][3]["DeleteItem"][1]["Id"] = 3302223
	tMatchOfThePlumFlower_Reward[3302223][4] = {}
	tMatchOfThePlumFlower_Reward[3302223][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302223][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][4]["RewardItem"][1]["Id"] = 380054
	tMatchOfThePlumFlower_Reward[3302223][4]["RewardItem"][1]["Attr"] = "0 1 3 21600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302223][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302223][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302223][4]["DeleteItem"][1]["Id"] = 3302223	
		
	
	
	tMatchOfThePlumFlower_Reward[3302234] = {}
	tMatchOfThePlumFlower_Reward[3302234][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302234][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][1]["RewardItem"][1]["Id"] = 350108
	tMatchOfThePlumFlower_Reward[3302234][1]["RewardItem"][1]["Attr"] = "0 1 3 172800 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302234][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][1]["DeleteItem"][1]["Id"] = 3302234
	tMatchOfThePlumFlower_Reward[3302234][2] = {}
	tMatchOfThePlumFlower_Reward[3302234][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302234][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][2]["RewardItem"][1]["Id"] = 360208
	tMatchOfThePlumFlower_Reward[3302234][2]["RewardItem"][1]["Attr"] = "0 1 3 172800 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302234][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][2]["DeleteItem"][1]["Id"] = 3302234
	tMatchOfThePlumFlower_Reward[3302234][3] = {}
	tMatchOfThePlumFlower_Reward[3302234][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302234][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][3]["RewardItem"][1]["Id"] = 370048
	tMatchOfThePlumFlower_Reward[3302234][3]["RewardItem"][1]["Attr"] = "0 1 3 172800 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302234][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][3]["DeleteItem"][1]["Id"] = 3302234
	tMatchOfThePlumFlower_Reward[3302234][4] = {}
	tMatchOfThePlumFlower_Reward[3302234][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302234][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][4]["RewardItem"][1]["Id"] = 380054
	tMatchOfThePlumFlower_Reward[3302234][4]["RewardItem"][1]["Attr"] = "0 1 3 172800 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302234][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302234][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302234][4]["DeleteItem"][1]["Id"] = 3302234		
	
	tMatchOfThePlumFlower_Reward[3302237] = {}
	tMatchOfThePlumFlower_Reward[3302237][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302237][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][1]["RewardItem"][1]["Id"] = 350108
	tMatchOfThePlumFlower_Reward[3302237][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302237][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][1]["DeleteItem"][1]["Id"] = 3302237
	tMatchOfThePlumFlower_Reward[3302237][2] = {}
	tMatchOfThePlumFlower_Reward[3302237][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302237][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][2]["RewardItem"][1]["Id"] = 360208
	tMatchOfThePlumFlower_Reward[3302237][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302237][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][2]["DeleteItem"][1]["Id"] = 3302237	
	tMatchOfThePlumFlower_Reward[3302237][3] = {}
	tMatchOfThePlumFlower_Reward[3302237][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302237][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][3]["RewardItem"][1]["Id"] = 370048
	tMatchOfThePlumFlower_Reward[3302237][3]["RewardItem"][1]["Attr"] = "0 1 3 129600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302237][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][3]["DeleteItem"][1]["Id"] = 3302237
	tMatchOfThePlumFlower_Reward[3302237][4] = {}
	tMatchOfThePlumFlower_Reward[3302237][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302237][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][4]["RewardItem"][1]["Id"] = 380054
	tMatchOfThePlumFlower_Reward[3302237][4]["RewardItem"][1]["Attr"] = "0 1 3 129600 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302237][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302237][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302237][4]["DeleteItem"][1]["Id"] = 3302237	
	
	
--偶像海选赛冠军大奖
	tMatchOfThePlumFlower_Reward[3302224] = {}
	tMatchOfThePlumFlower_Reward[3302224][2] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"][1]["Id"] = 3302221
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"][1]["Attr"] = "0 2"
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"][2] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"][2]["Id"] = 3302205
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardItem"][2]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardTitle"]["TitleType"] =  2044
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardTitle"]["TitleId"] = 2044
	tMatchOfThePlumFlower_Reward[3302224][2]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302224][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302224][2]["DeleteItem"][1]["Id"] = 3302224

	tMatchOfThePlumFlower_Reward[3302224][1] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"][1]["Id"] = 3302221
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"][1]["Attr"] = "0 2"
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"][2] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"][2]["Id"] = 3302205
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardItem"][2]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardTitle"]["TitleType"] =  2045
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardTitle"]["TitleId"] = 2045
	tMatchOfThePlumFlower_Reward[3302224][1]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302224][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302224][1]["DeleteItem"][1]["Id"] = 3302224
	
--偶像海选赛亚军大奖
	tMatchOfThePlumFlower_Reward[3302225] = {}
	tMatchOfThePlumFlower_Reward[3302225][2] = {}
	tMatchOfThePlumFlower_Reward[3302225][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardItem"][1]["Id"] = 3302222
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardItem"][1]["Attr"] = "0 2"
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardTitle"]["TitleType"] =  2044
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardTitle"]["TitleId"] = 2044
	tMatchOfThePlumFlower_Reward[3302225][2]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302225][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302225][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302225][2]["DeleteItem"][1]["Id"] = 3302225

	tMatchOfThePlumFlower_Reward[3302225][1] = {}
	tMatchOfThePlumFlower_Reward[3302225][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardItem"][1]["Id"] = 3302222
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardItem"][1]["Attr"] = "0 2"
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardTitle"]["TitleType"] =  2045
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardTitle"]["TitleId"] = 2045
	tMatchOfThePlumFlower_Reward[3302225][1]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302225][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302225][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302225][1]["DeleteItem"][1]["Id"] = 3302225	
	
--偶像海选赛季军大奖
	tMatchOfThePlumFlower_Reward[3302226] = {}
	tMatchOfThePlumFlower_Reward[3302226][2] = {}
	tMatchOfThePlumFlower_Reward[3302226][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardItem"][1]["Id"] = 3302223
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardItem"][1]["Attr"] = "0 2"
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardTitle"]["TitleType"] =  2044
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardTitle"]["TitleId"] = 2044
	tMatchOfThePlumFlower_Reward[3302226][2]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302226][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302226][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302226][2]["DeleteItem"][1]["Id"] = 3302226

	tMatchOfThePlumFlower_Reward[3302226][1] = {}
	tMatchOfThePlumFlower_Reward[3302226][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardItem"][1]["Id"] = 3302223
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardItem"][1]["Attr"] = "0 2"
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardTitle"]["TitleType"] =  2045
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardTitle"]["TitleId"] = 2045
	tMatchOfThePlumFlower_Reward[3302226][1]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302226][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302226][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302226][1]["DeleteItem"][1]["Id"] = 3302226		
	
--偶像总决赛冠军大奖 
	tMatchOfThePlumFlower_Reward[3302227] = {}
	tMatchOfThePlumFlower_Reward[3302227][2] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardItem"][1]["Id"] = 3302230
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardTitle"]["TitleType"] =  2040
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardTitle"]["TitleId"] = 2040
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardWing"] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardWing"]["TitleType"] =  6012
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardWing"]["TitleId"] = 6012
	tMatchOfThePlumFlower_Reward[3302227][2]["RewardWing"]["SaveTime"] = 0
	tMatchOfThePlumFlower_Reward[3302227][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302227][2]["DeleteItem"][1]["Id"] = 3302227

	tMatchOfThePlumFlower_Reward[3302227][1] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardItem"][1]["Id"] = 3302230
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardTitle"] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardTitle"]["TitleType"] =  2041
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardTitle"]["TitleId"] = 2041
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardTitle"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardWing"] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardWing"]["TitleType"] =  6012
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardWing"]["TitleId"] = 6012
	tMatchOfThePlumFlower_Reward[3302227][1]["RewardWing"]["SaveTime"] = 0
	tMatchOfThePlumFlower_Reward[3302227][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302227][1]["DeleteItem"][1]["Id"] = 3302227		
--偶像总决赛亚军大奖
	tMatchOfThePlumFlower_Reward[3302228] = {}
	tMatchOfThePlumFlower_Reward[3302228]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302228]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302228]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302228]["RewardItem"][1]["Id"] = 3302231
	tMatchOfThePlumFlower_Reward[3302228]["RewardItem"][1]["Attr"] = "0 1"
	tMatchOfThePlumFlower_Reward[3302228]["RewardWing"] = {}
	tMatchOfThePlumFlower_Reward[3302228]["RewardWing"]["TitleType"] =  6012
	tMatchOfThePlumFlower_Reward[3302228]["RewardWing"]["TitleId"] = 6012
	tMatchOfThePlumFlower_Reward[3302228]["RewardWing"]["SaveTime"] = 525600
	tMatchOfThePlumFlower_Reward[3302228]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302228]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302228]["DeleteItem"][1]["Id"] = 3302228	
--偶像总决赛季军大奖
	tMatchOfThePlumFlower_Reward[3302229] = {}
	tMatchOfThePlumFlower_Reward[3302229]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302229]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302229]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302229]["RewardItem"][1]["Id"] = 193565
	tMatchOfThePlumFlower_Reward[3302229]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302229]["RewardWing"] = {}
	tMatchOfThePlumFlower_Reward[3302229]["RewardWing"]["TitleType"] =  6012
	tMatchOfThePlumFlower_Reward[3302229]["RewardWing"]["TitleId"] = 6012
	tMatchOfThePlumFlower_Reward[3302229]["RewardWing"]["SaveTime"] = 262800
	tMatchOfThePlumFlower_Reward[3302229]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302229]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302229]["DeleteItem"][1]["Id"] = 3302229	
	
	tMatchOfThePlumFlower_Reward[3302230] = {}
	tMatchOfThePlumFlower_Reward[3302230][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302230][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302230][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][1]["RewardItem"][1]["Id"] = 194395
	tMatchOfThePlumFlower_Reward[3302230][1]["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302230][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302230][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][1]["DeleteItem"][1]["Id"] = 3302230
	tMatchOfThePlumFlower_Reward[3302230][2] = {}
	tMatchOfThePlumFlower_Reward[3302230][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302230][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302230][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][2]["RewardItem"][1]["Id"] = 193625
	tMatchOfThePlumFlower_Reward[3302230][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302230][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302230][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][2]["DeleteItem"][1]["Id"] = 3302230
	tMatchOfThePlumFlower_Reward[3302230][3] = {}
	tMatchOfThePlumFlower_Reward[3302230][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302230][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302230][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][3]["RewardItem"][1]["Id"] = 193565
	tMatchOfThePlumFlower_Reward[3302230][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302230][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302230][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302230][3]["DeleteItem"][1]["Id"] = 3302230
	
	tMatchOfThePlumFlower_Reward[3302231] = {}
	tMatchOfThePlumFlower_Reward[3302231][1] = {}
	tMatchOfThePlumFlower_Reward[3302231][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302231][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302231][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302231][1]["RewardItem"][1]["Id"] = 193625
	tMatchOfThePlumFlower_Reward[3302231][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302231][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302231][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302231][1]["DeleteItem"][1]["Id"] = 3302231
	tMatchOfThePlumFlower_Reward[3302231][2] = {}
	tMatchOfThePlumFlower_Reward[3302231][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302231][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302231][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302231][2]["RewardItem"][1]["Id"] = 193565
	tMatchOfThePlumFlower_Reward[3302231][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302231][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302231][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302231][2]["DeleteItem"][1]["Id"] = 3302231
	
	tMatchOfThePlumFlower_Reward[3302232] = {}
	tMatchOfThePlumFlower_Reward[3302232]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302232]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302232]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302232]["RewardItem"][1]["Id"] = 3009001
	tMatchOfThePlumFlower_Reward[3302232]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMatchOfThePlumFlower_Reward[3302232]["RewardStrengthValue"] = {}
	tMatchOfThePlumFlower_Reward[3302232]["RewardStrengthValue"]["Value"] = 1000
	tMatchOfThePlumFlower_Reward[3302232]["RewardEMoneyMono"] = {}
	tMatchOfThePlumFlower_Reward[3302232]["RewardEMoneyMono"]["Value"] = 100
	tMatchOfThePlumFlower_Reward[3302232]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302232]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302232]["DeleteItem"][1]["Id"] = 3302232
	
	tMatchOfThePlumFlower_Reward[3302233] = {}
	tMatchOfThePlumFlower_Reward[3302233][4] = {}
	tMatchOfThePlumFlower_Reward[3302233][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302233][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][4]["RewardItem"][1]["Id"] = 3302222
	tMatchOfThePlumFlower_Reward[3302233][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tMatchOfThePlumFlower_Reward[3302233][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][4]["DeleteItem"][1]["Id"] = 3302233
	tMatchOfThePlumFlower_Reward[3302233][4]["DeleteItem"][1]["ItemNum"] = 4	
	tMatchOfThePlumFlower_Reward[3302233][4]["DeleteItem"][1]["NoItem"] = tMatchOfThePlumFlower_Text["NoItem"][4]	
	
	tMatchOfThePlumFlower_Reward[3302233][5] = {}	
	tMatchOfThePlumFlower_Reward[3302233][5]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302233][5]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][5]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][5]["RewardItem"][1]["Id"] = 3302221
	tMatchOfThePlumFlower_Reward[3302233][5]["RewardItem"][1]["Attr"] = "0 1 0 86400 1"
	tMatchOfThePlumFlower_Reward[3302233][5]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][5]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][5]["DeleteItem"][1]["Id"] = 3302233
	tMatchOfThePlumFlower_Reward[3302233][5]["DeleteItem"][1]["ItemNum"] = 5
	tMatchOfThePlumFlower_Reward[3302233][5]["DeleteItem"][1]["NoItem"] = tMatchOfThePlumFlower_Text["NoItem"][5]	
	
	tMatchOfThePlumFlower_Reward[3302233][6] = {}	
	tMatchOfThePlumFlower_Reward[3302233][6]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302233][6]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][6]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][6]["RewardItem"][1]["Id"] = 3302237
	tMatchOfThePlumFlower_Reward[3302233][6]["RewardItem"][1]["Attr"] = "0 1 0 129600 1"
	tMatchOfThePlumFlower_Reward[3302233][6]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][6]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][6]["DeleteItem"][1]["Id"] = 3302233
	tMatchOfThePlumFlower_Reward[3302233][6]["DeleteItem"][1]["ItemNum"] = 6
	tMatchOfThePlumFlower_Reward[3302233][6]["DeleteItem"][1]["NoItem"] = tMatchOfThePlumFlower_Text["NoItem"][6]		
	
	tMatchOfThePlumFlower_Reward[3302233][7] = {}	
	tMatchOfThePlumFlower_Reward[3302233][7]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302233][7]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][7]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][7]["RewardItem"][1]["Id"] = 3302234
	tMatchOfThePlumFlower_Reward[3302233][7]["RewardItem"][1]["Attr"] = "0 1 0 172800 1"
	tMatchOfThePlumFlower_Reward[3302233][7]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][7]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][7]["DeleteItem"][1]["Id"] = 3302233
	tMatchOfThePlumFlower_Reward[3302233][7]["DeleteItem"][1]["ItemNum"] = 7
	tMatchOfThePlumFlower_Reward[3302233][7]["DeleteItem"][1]["NoItem"] = tMatchOfThePlumFlower_Text["NoItem"][7]		

	tMatchOfThePlumFlower_Reward[3302233][1] = {}	
	tMatchOfThePlumFlower_Reward[3302233][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302233][1]["RewardStrengthValue"] = {}
	tMatchOfThePlumFlower_Reward[3302233][1]["RewardStrengthValue"]["Value"] = 1000
	tMatchOfThePlumFlower_Reward[3302233][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302233][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302233][1]["DeleteItem"][1]["Id"] = 3302233
	tMatchOfThePlumFlower_Reward[3302233][1]["Talk"] =  tMatchOfThePlumFlower_Text["Talk3"]	
	
	tMatchOfThePlumFlower_Reward[3302246] = {}
	tMatchOfThePlumFlower_Reward[3302246][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302246][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302246][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][1]["RewardItem"][1]["Id"] = 194375
	tMatchOfThePlumFlower_Reward[3302246][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302246][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302246][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][1]["DeleteItem"][1]["Id"] = 3302246
	tMatchOfThePlumFlower_Reward[3302246][2] = {}
	tMatchOfThePlumFlower_Reward[3302246][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302246][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302246][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][2]["RewardItem"][1]["Id"] = 193515
	tMatchOfThePlumFlower_Reward[3302246][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302246][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302246][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][2]["DeleteItem"][1]["Id"] = 3302246
	tMatchOfThePlumFlower_Reward[3302246][3] = {}
	tMatchOfThePlumFlower_Reward[3302246][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302246][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302246][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][3]["RewardItem"][1]["Id"] = 188905
	tMatchOfThePlumFlower_Reward[3302246][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302246][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302246][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302246][3]["DeleteItem"][1]["Id"] = 3302246	
	
	tMatchOfThePlumFlower_Reward[3302247] = {}
	tMatchOfThePlumFlower_Reward[3302247][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302247][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302247][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][1]["RewardItem"][1]["Id"] = 194385
	tMatchOfThePlumFlower_Reward[3302247][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302247][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302247][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][1]["DeleteItem"][1]["Id"] = 3302247
	tMatchOfThePlumFlower_Reward[3302247][2] = {}
	tMatchOfThePlumFlower_Reward[3302247][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302247][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302247][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][2]["RewardItem"][1]["Id"] = 193115
	tMatchOfThePlumFlower_Reward[3302247][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302247][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302247][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][2]["DeleteItem"][1]["Id"] = 3302247
	tMatchOfThePlumFlower_Reward[3302247][3] = {}
	tMatchOfThePlumFlower_Reward[3302247][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302247][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302247][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][3]["RewardItem"][1]["Id"] = 192495
	tMatchOfThePlumFlower_Reward[3302247][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302247][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302247][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302247][3]["DeleteItem"][1]["Id"] = 3302247	
	
	tMatchOfThePlumFlower_Reward[3302248] = {}
	tMatchOfThePlumFlower_Reward[3302248][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302248][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302248][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][1]["RewardItem"][1]["Id"] = 194395
	tMatchOfThePlumFlower_Reward[3302248][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302248][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302248][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][1]["DeleteItem"][1]["Id"] = 3302248
	tMatchOfThePlumFlower_Reward[3302248][2] = {}
	tMatchOfThePlumFlower_Reward[3302248][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302248][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302248][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][2]["RewardItem"][1]["Id"] = 193445
	tMatchOfThePlumFlower_Reward[3302248][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302248][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302248][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][2]["DeleteItem"][1]["Id"] = 3302248
	tMatchOfThePlumFlower_Reward[3302248][3] = {}
	tMatchOfThePlumFlower_Reward[3302248][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302248][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302248][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][3]["RewardItem"][1]["Id"] = 193555
	tMatchOfThePlumFlower_Reward[3302248][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMatchOfThePlumFlower_Reward[3302248][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302248][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302248][3]["DeleteItem"][1]["Id"] = 3302248	
	
	--7天时效1%神佑花神武器外套礼包
	tMatchOfThePlumFlower_Reward[3302339] = {}
	tMatchOfThePlumFlower_Reward[3302339][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][1]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302339][1]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][1]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][1]["RewardItem"][1]["Id"] = 350108
	tMatchOfThePlumFlower_Reward[3302339][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302339][1]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][1]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][1]["DeleteItem"][1]["Id"] = 3302339	
	tMatchOfThePlumFlower_Reward[3302339][2] = {}
	tMatchOfThePlumFlower_Reward[3302339][2]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302339][2]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][2]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][2]["RewardItem"][1]["Id"] = 360208
	tMatchOfThePlumFlower_Reward[3302339][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302339][2]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][2]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][2]["DeleteItem"][1]["Id"] = 3302339
	tMatchOfThePlumFlower_Reward[3302339][3] = {}
	tMatchOfThePlumFlower_Reward[3302339][3]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302339][3]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][3]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][3]["RewardItem"][1]["Id"] = 370048
	tMatchOfThePlumFlower_Reward[3302339][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302339][3]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][3]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][3]["DeleteItem"][1]["Id"] = 3302339
	tMatchOfThePlumFlower_Reward[3302339][4] = {}
	tMatchOfThePlumFlower_Reward[3302339][4]["LogId"] = 12000637
	tMatchOfThePlumFlower_Reward[3302339][4]["RewardItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][4]["RewardItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][4]["RewardItem"][1]["Id"] = 380054
	tMatchOfThePlumFlower_Reward[3302339][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tMatchOfThePlumFlower_Reward[3302339][4]["DeleteItem"] = {}
	tMatchOfThePlumFlower_Reward[3302339][4]["DeleteItem"][1] = {}
	tMatchOfThePlumFlower_Reward[3302339][4]["DeleteItem"][1]["Id"] = 3302339	
	
local	tMatchOfThePlumFlower_Num= {}
	tMatchOfThePlumFlower_Num[10000] = 10000
	tMatchOfThePlumFlower_Num[20000] = 20000
	tMatchOfThePlumFlower_Num[100000] = 100000
	tMatchOfThePlumFlower_Num[200000] = 200000
	tMatchOfThePlumFlower_Num[400000] = 400000
	
local tMatchOfThePlumFlower_FlowerTopic = {}
	tMatchOfThePlumFlower_FlowerTopic[1] = {}
	tMatchOfThePlumFlower_FlowerTopic[1]["Time"] = "2017-02-24 00:00 2017-02-24 23:59"
	tMatchOfThePlumFlower_FlowerTopic[2] = {}
	tMatchOfThePlumFlower_FlowerTopic[2]["Time"] = "2017-02-26 00:00 2017-02-26 23:59"	
	tMatchOfThePlumFlower_FlowerTopic[3] = {}
	tMatchOfThePlumFlower_FlowerTopic[3]["Time"] = "2017-02-28 00:00 2017-02-28 23:59"	
	tMatchOfThePlumFlower_FlowerTopic[4] = {}
	tMatchOfThePlumFlower_FlowerTopic[4]["Time"] = "2017-03-02 00:00 2017-03-02 23:59"	

	
local tMatchOfThePlumFlower_Hair = {}
	-- “情人礼帽”体验券（女）
	tMatchOfThePlumFlower_Hair[3302206]  = {}
	tMatchOfThePlumFlower_Hair[3302206]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302206]["typeId"] = 32
	tMatchOfThePlumFlower_Hair[3302206]["sex"] = 2
	tMatchOfThePlumFlower_Hair[3302206]["stc"] = 1
	tMatchOfThePlumFlower_Hair[3302206]["del"] = 1
	-- “情人礼帽”体验券（男）
	tMatchOfThePlumFlower_Hair[3302207]  = {}
	tMatchOfThePlumFlower_Hair[3302207]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302207]["typeId"] = 32
	tMatchOfThePlumFlower_Hair[3302207]["sex"] = 1	
	tMatchOfThePlumFlower_Hair[3302207]["stc"] = 1
	tMatchOfThePlumFlower_Hair[3302207]["del"] = 1
	-- “动感潮流”体验券（女）
	tMatchOfThePlumFlower_Hair[3302208]  = {}
	tMatchOfThePlumFlower_Hair[3302208]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302208]["typeId"] = 37
	tMatchOfThePlumFlower_Hair[3302208]["sex"] = 2
	tMatchOfThePlumFlower_Hair[3302208]["stc"] = 2
	tMatchOfThePlumFlower_Hair[3302208]["del"] = 1
	-- “动感潮流”体验券（男）
	tMatchOfThePlumFlower_Hair[3302209]  = {}
	tMatchOfThePlumFlower_Hair[3302209]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302209]["typeId"] = 37
	tMatchOfThePlumFlower_Hair[3302209]["sex"] = 1	
	tMatchOfThePlumFlower_Hair[3302209]["stc"] = 2
	tMatchOfThePlumFlower_Hair[3302209]["del"] = 1
	-- “魔发奇缘”体验券（女）
	tMatchOfThePlumFlower_Hair[3302210]  = {}
	tMatchOfThePlumFlower_Hair[3302210]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302210]["typeId"] = 38
	tMatchOfThePlumFlower_Hair[3302210]["sex"] = 2
	tMatchOfThePlumFlower_Hair[3302210]["stc"] = 3
	tMatchOfThePlumFlower_Hair[3302210]["del"] = 1
	-- “魔发奇缘”体验券（女）
	tMatchOfThePlumFlower_Hair[3302211]  = {}
	tMatchOfThePlumFlower_Hair[3302211]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302211]["typeId"] = 38
	tMatchOfThePlumFlower_Hair[3302211]["sex"] = 1
	tMatchOfThePlumFlower_Hair[3302211]["stc"] = 3
	tMatchOfThePlumFlower_Hair[3302211]["del"] = 1
	-- 动感潮流（女）
	tMatchOfThePlumFlower_Hair[3302200]  = {}
	tMatchOfThePlumFlower_Hair[3302200]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302200]["typeId"] = 37
	tMatchOfThePlumFlower_Hair[3302200]["sex"] = 2
	tMatchOfThePlumFlower_Hair[3302200]["stc"] = 2
	tMatchOfThePlumFlower_Hair[3302200]["del"] = 2
	-- “动感潮流”（男）
	tMatchOfThePlumFlower_Hair[3302201]  = {}
	tMatchOfThePlumFlower_Hair[3302201]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302201]["typeId"] = 37
	tMatchOfThePlumFlower_Hair[3302201]["sex"] = 1	
	tMatchOfThePlumFlower_Hair[3302201]["stc"] = 2
	tMatchOfThePlumFlower_Hair[3302201]["del"] = 2
	-- “魔发奇缘”（女）
	tMatchOfThePlumFlower_Hair[3302202]  = {}
	tMatchOfThePlumFlower_Hair[3302202]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302202]["typeId"] = 38
	tMatchOfThePlumFlower_Hair[3302202]["sex"] = 2
	tMatchOfThePlumFlower_Hair[3302202]["stc"] = 3
	tMatchOfThePlumFlower_Hair[3302202]["del"] = 1
	-- “魔发奇缘”（女）
	tMatchOfThePlumFlower_Hair[3302203]  = {}
	tMatchOfThePlumFlower_Hair[3302203]["schgmapType"] = "style"  
	tMatchOfThePlumFlower_Hair[3302203]["typeId"] = 38
	tMatchOfThePlumFlower_Hair[3302203]["sex"] = 1
	tMatchOfThePlumFlower_Hair[3302203]["stc"] = 3
	tMatchOfThePlumFlower_Hair[3302203]["del"] = 1

------------------------------逻辑部分--------------------------------------------
function MatchOfThePlumFlower_Join(nNpcId,nSex)
	
	local nEventType = tMatchOfThePlumFlower_Stc["Join"]["EventType"]
	local nDataType = tMatchOfThePlumFlower_Stc["Join"]["DataType"]
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) then 
		return
	end 
	--为男性
	if Get_UserSex() == nSex then 
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return 
	end 
	--已经报名过
	if Task_ChkStcValue(nEventType,nDataType,">=",1)  then 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return 
	end 

		LinkNpcGossipFunc_New(nNpcId,"2-3")
end


--二次确认是否报名
function MatchOfThePlumFlower_ConfirmJoin(nNpcId,nIndex)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) then 
		return
	end 
	if nIndex == 1 then 
		tNpcGossip[nNpcId]["Text241"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text241"],tMatchOfThePlumFlower_Text["Emoney"])
	elseif nIndex == 2 then 
		tNpcGossip[nNpcId]["Text241"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text241"],tMatchOfThePlumFlower_Text["Gold"])
	elseif nIndex == 3 then 
		tNpcGossip[nNpcId]["Text241"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text241"],tMatchOfThePlumFlower_Text["Dragon"])
	end 
	tNpcGossip[nNpcId]["OptionFunc241"] = "MatchOfThePlumFlower_PayJoin</N>"..nNpcId.."</N>"..nIndex
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

function MatchOfThePlumFlower_PayJoin(nNpcId,nIndex)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) then 
		return
	end 
	local nEventType = tMatchOfThePlumFlower_Stc["Join"]["EventType"]
	local nDataType = tMatchOfThePlumFlower_Stc["Join"]["DataType"]
	if nIndex == 1 then 
		local nNeedEMoney =tMatchOfThePlumFlower_Cont["Emoney"] 
		--判断天石是否够
		if Get_UserEMoney() < nNeedEMoney then
			tNpcGossip[nNpcId]["Text261"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text261"],tMatchOfThePlumFlower_Text["Emoney"])
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		end 
		if User_AddEMoney(-nNeedEMoney) then
			Task_SetStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			if not User_CheckLeftSpace(tMatchOfThePlumFlower_Cont["Space1"]) then
			MatchOfThePlumFlower_SendMail(565131)
			else
			RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Package[3302167])
			end 	
			--打log
			Sys_SaveEmoneyBuy(tMatchOfThePlumFlower_Cont["EmoneyLog"])
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		end 
	elseif  nIndex == 2 then 
		local nNeedMoney =tMatchOfThePlumFlower_Cont["Money"] 
		if not User_CanPutMoney2Bag((-1)*nNeedMoney) then 
			tNpcGossip[nNpcId]["Text261"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text261"],tMatchOfThePlumFlower_Text["Gold"])
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return 
		end 
		if User_AddMoneyNew((-1)*nNeedMoney,tMatchOfThePlumFlower_Cont["LogId"]) then
			Task_SetStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			if not User_CheckLeftSpace(tMatchOfThePlumFlower_Cont["Space1"]) then
				MatchOfThePlumFlower_SendMail(565131)
			else
				RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Package[3302167])
			end 	
			--打log
			Sys_SaveActionFestivalLog(tMatchOfThePlumFlower_Log["Money"])
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		end 
	elseif  nIndex == 3 then 
		local nItemNum = tMatchOfThePlumFlower_Cont["ItemNum"]
		local nItemId = tMatchOfThePlumFlower_Cont["ItemId"]	
		local nMonopoly = tMatchOfThePlumFlower_Cont["nMonopoly"]		
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
			tNpcGossip[nNpcId]["Text261"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text261"],tMatchOfThePlumFlower_Text["Dragon"])
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return 
		end 
		if Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) and Item_DelMulItem(nItemId,nItemId,nItemNum,nMonopoly)   then
			Task_SetStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			if not User_CheckLeftSpace(tMatchOfThePlumFlower_Cont["Space1"]) then
				MatchOfThePlumFlower_SendMail(565131)
			else
				RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Package[3302167])
			end 	
			--打log
			Sys_SaveActionFestivalLog(tMatchOfThePlumFlower_Log["Dragon"])
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		end 
	end 
end

--上交花朵
function MatchOfThePlumFlower_PutFlower(nNpcId)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		return
	end 
	if nNpcId == 20349 then 
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	else 
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end 
end

--选择朵数
function  MatchOfThePlumFlower_ChooseCount(nNpcId,nIndex)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		return
	end 
	tNpcGossip[nNpcId]["Text321"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text321"],tMatchOfThePlumFlower_Text["Flower"][nIndex])
	tNpcGossip[nNpcId]["tOption3-2"] = {}
	local nMonopoly = tMatchOfThePlumFlower_Cont["nMonopoly"]
	for i,v in pairs(tMatchOfThePlumFlower_Flower[nIndex]) do
		if Item_ChkItem(v,nMonopoly) then
			table.insert(tNpcGossip[nNpcId]["tOption3-2"],i)
			tNpcGossip[nNpcId]["OptionFunc"..i] = "MatchOfThePlumFlower_EnterFlower</N>"..nNpcId.."</N>"..v.."</N>1</N>"..nIndex
		end
	end
	table.insert(tNpcGossip[nNpcId]["tOption3-2"],326)
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end
--上交鲜花确认
function MatchOfThePlumFlower_EnterFlower(nNpcId,nItemId,nFlag,nIndex)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		return
	end 
	--名称
	local sItemName = Get_ItemtypeName(nItemId)
	if nFlag == 1 then 
		Sys_DialogText(string.format(tMatchOfThePlumFlower_Text["Text"],sItemName))
	else 
		Sys_DialogText(string.format(tMatchOfThePlumFlower_Text["Text2"],sItemName))
	end
	if nFlag == 1 then 
		Sys_DialogOptEdit("",32,"MatchOfThePlumFlower_GiveFlower</N>"..nNpcId.."</N>"..nItemId.."</N>1</N>"..nFlag.."</N>"..nIndex)
		Sys_DialogOption(tMatchOfThePlumFlower_Text["Option1"],"</F>MatchOfThePlumFlower_GiveFlower</N>"..nNpcId.."</N>"..nItemId.."</N>2</N>"..nFlag.."</N>"..nIndex)
		Sys_DialogEnd()
	else 
		Sys_DialogOptEdit("",32,"MatchOfThePlumFlower_GiveFlower</N>"..nNpcId.."</N>"..nItemId.."</N>1</N>"..nFlag)
		Sys_DialogOption(tMatchOfThePlumFlower_Text["Option1"],"</F>MatchOfThePlumFlower_GiveFlower</N>"..nNpcId.."</N>"..nItemId.."</N>2</N>"..nFlag)
		Sys_DialogEnd()
	end 
end

--删除物品，给积分
function MatchOfThePlumFlower_GiveFlower(nNpcId,nItemId,nIndex,nFlag,nType)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		return
	end 
	local nMonopoly = 1
	if nFlag == 1 then 
		nMonopoly = 0
	end 
	User_TalkChannel2005(tostring(nMonopoly))
	--选择朵数
	local nNum = 0 
	if nIndex == 1 then 
		local sWord = Get_SysAcceptStr()
		--判断是否是数字
		if  tonumber(sWord) ~= nil then 
		--判断是否是整数
			nNum = tonumber(sWord)
			if not Item_ChkMulItem(nItemId,nItemId,nNum,nMonopoly) then
				if nFlag == 1 then 
					LinkNpcGossipFunc_New(nNpcId,"3-3")
				else 
					LinkNpcGossipFunc_New(nNpcId,"4-2")
				end 
				return
			end
		else 
			return 
		end
	else 
	--全部上交
		nNum = Get_CountItemType(nItemId,0,nMonopoly)
		if not Item_ChkMulItem(nItemId,nItemId,nNum,nMonopoly) then
			if nFlag == 1 then 
				LinkNpcGossipFunc_New(nNpcId,"3-3")
			else 
				LinkNpcGossipFunc_New(nNpcId,"4-2")
			end 
			return
		end
	end
	--本次获得的积分数
	local nScore = nNum * tMatchOfThePlumFlower_Score[nItemId]
	if Item_ChkMulItem(nItemId,nItemId,nNum,nMonopoly) and Item_DelMulItem(nItemId,nItemId,nNum,nMonopoly) then
		local nEventType = tMatchOfThePlumFlower_Stc["Score"]["EventType"]
		local nDataType = tMatchOfThePlumFlower_Stc["Score"]["DataType"]
		if nFlag == 1 then 
			local nEventType2 = tMatchOfThePlumFlower_Stc[nType]["EventType"]
			local nDataType2 = tMatchOfThePlumFlower_Stc[nType]["DataType"]
			local nTotalNum = nNum * tMatchOfThePlumFlower_Count[nItemId]
			Task_AddStatistic(nEventType2,nDataType2,nTotalNum,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end 
		Task_AddStatistic(nEventType,nDataType,nScore,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		--光效
		User_EffectAdd("self","angelwing")
		Sys_SaveActionFestivalLog(string.format(tMatchOfThePlumFlower_Log["PutGoods"],nItemId,nNum))
		MatchOfThePlumFlower_SendAward(nNpcId,nNum,nScore,nItemId,nFlag)
		MatchOfThePlumFlower_Daily(565132)
	end
end

--粉丝积分判断
function MatchOfThePlumFlower_SendAward(nNpcId,nNum,nScore,nItemId,nFlag)
	local nEventType = tMatchOfThePlumFlower_Stc["Score"]["EventType"]
	local nDataType = tMatchOfThePlumFlower_Stc["Score"]["DataType"]
	local nEventType2 = tMatchOfThePlumFlower_Stc["Award"]["EventType"]
	local nDataType2 = tMatchOfThePlumFlower_Stc["Award"]["DataType"]
	local nEventType3 = tMatchOfThePlumFlower_Stc["Daily"]["EventType"]
	local nTypeType3 = tMatchOfThePlumFlower_Stc["Daily"]["DataType"]
	--是否隔天
	MatchOfThePlumFlower_Clean(nEventType3,nTypeType3)

	
	local nCount1 = 0
	local nCount2 = 0
	local nCount3 = 0
	local nNoSpace = 0
	--取当前总积分
	local nTotalScore = Get_UserStatisticValue(nEventType,nDataType)
	--取领奖掩码
	local nAward = Get_UserStatisticValue(nEventType2,nDataType2)
	--如果不大于10万
	if nAward <10 then 
		--还未达到领奖条件
		local nLogFlag = 0 
		if nTotalScore - (tMatchOfThePlumFlower_Num[10000] *nAward) < tMatchOfThePlumFlower_Num[10000] then 
			local sItemName = Get_ItemtypeName(nItemId)
			if nFlag == 1 then
				tNpcGossip[nNpcId]["Text341"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text341"],nNum,sItemName)
				tNpcGossip[nNpcId]["Text342"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text342"],nScore,nTotalScore)
					--还未领取
				if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
					LinkNpcGossipFunc_New(nNpcId,"3-7")
				else
					LinkNpcGossipFunc_New(nNpcId,"3-4")
				end
			elseif nFlag == 2 then 
				tNpcGossip[nNpcId]["Text431"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text431"],nNum,sItemName)
				tNpcGossip[nNpcId]["Text432"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text432"],nScore,nTotalScore)
				if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
					LinkNpcGossipFunc_New(nNpcId,"4-4")
				else
					LinkNpcGossipFunc_New(nNpcId,"4-3")
				end
			end
		else 
			--如果超过10W 就等于10万
			local nTemp = nTotalScore
			if  nTotalScore >= tMatchOfThePlumFlower_Num[100000] then 
				nTemp = tMatchOfThePlumFlower_Num[100000]
				nLogFlag = 1 
			end
			--尚未领取的奖励
			local nAwardScore = nTemp -  (tMatchOfThePlumFlower_Num[10000] *nAward) 
			-- 本次可以领取几个
			nCount1 = math.floor(nAwardScore/tMatchOfThePlumFlower_Num[10000])
			--打奖励掩码
			Task_AddStatistic(nEventType2,nDataType2,nCount1,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			--强插背包
			if not User_CheckLeftSpace(1) then
				nNoSpace = 1 
			end 
			Item_AddItem(3302168,0,nCount1)
		end
		if nLogFlag == 1 then 
			Sys_SaveActionFestivalLog(tMatchOfThePlumFlower_Log["10WPoint"])
		end 
	end 
	--如果不大于20万
	nAward = Get_UserStatisticValue(nEventType2,nDataType2)
	if nAward >= 10 and nAward <20 then 
		--还未达到领奖条件
		local nLogFlag2 = 0 
		if nTotalScore - (tMatchOfThePlumFlower_Num[10000] *nAward) < tMatchOfThePlumFlower_Num[10000] then 
			local sItemName = Get_ItemtypeName(nItemId)
			if nFlag == 1 then
				tNpcGossip[nNpcId]["Text341"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text341"],nNum,sItemName)
				tNpcGossip[nNpcId]["Text342"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text342"],nScore,nTotalScore)
					--还未领取
				if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
					LinkNpcGossipFunc_New(nNpcId,"3-7")
				else
					LinkNpcGossipFunc_New(nNpcId,"3-4")
				end
			elseif nFlag == 2 then 
				tNpcGossip[nNpcId]["Text431"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text431"],nNum,sItemName)
				tNpcGossip[nNpcId]["Text432"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text432"],nScore,nTotalScore)
				if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
					LinkNpcGossipFunc_New(nNpcId,"4-4")
				else
					LinkNpcGossipFunc_New(nNpcId,"4-3")
				end
			end
		else 
			--如果超过20W 就等于20万
			local nTemp = nTotalScore
			if  nTotalScore >= tMatchOfThePlumFlower_Num[200000] then 
				nTemp = tMatchOfThePlumFlower_Num[200000]
				nLogFlag2 = 1
			end
			--尚未领取的奖励
			local nAwardScore = nTemp -  (tMatchOfThePlumFlower_Num[10000] *nAward) 
			-- 本次可以领取几个
			nCount2 = math.floor(nAwardScore/tMatchOfThePlumFlower_Num[10000])
			--打奖励掩码
			Task_AddStatistic(nEventType2,nDataType2,nCount2,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			if not User_CheckLeftSpace(1) then
				nNoSpace = 1 
			end 
			--强插背包
			Item_AddItem(3302169,0,nCount2)
		end
		if nLogFlag2 == 1 then 
			Sys_SaveActionFestivalLog(tMatchOfThePlumFlower_Log["20WPoint"])
		end 
	end 
	--如果不大于40万
	nAward = Get_UserStatisticValue(nEventType2,nDataType2)
	if nAward >= 20 and nAward <40 then 
		--还未达到领奖条件
		local nLogFlag3 = 0 
		if nTotalScore - (tMatchOfThePlumFlower_Num[10000] *nAward) < tMatchOfThePlumFlower_Num[20000] then 
			local sItemName = Get_ItemtypeName(nItemId)
			if nFlag == 1 then
				tNpcGossip[nNpcId]["Text341"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text341"],nNum,sItemName)
				tNpcGossip[nNpcId]["Text342"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text342"],nScore,nTotalScore)
					--还未领取
				if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
					LinkNpcGossipFunc_New(nNpcId,"3-7")
				else
					LinkNpcGossipFunc_New(nNpcId,"3-4")
				end
			elseif nFlag == 2 then 
				tNpcGossip[nNpcId]["Text431"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text431"],nNum,sItemName)
				tNpcGossip[nNpcId]["Text432"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text432"],nScore,nTotalScore)
				if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
					LinkNpcGossipFunc_New(nNpcId,"4-4")
				else
					LinkNpcGossipFunc_New(nNpcId,"4-3")
				end
			end
		else 
			--如果超过50W 就等于50万
			local nTemp = nTotalScore
			if  nTotalScore >= tMatchOfThePlumFlower_Num[400000] then 
				nTemp = tMatchOfThePlumFlower_Num[400000]
				nLogFlag3 = 1
			end
			--尚未领取的奖励
			local nAwardScore = nTemp -  (tMatchOfThePlumFlower_Num[10000] *nAward) 
			-- 本次可以领取几个
			nCount3 = math.floor(nAwardScore/tMatchOfThePlumFlower_Num[20000])
			--打奖励掩码
			Task_AddStatistic(nEventType2,nDataType2,nCount3*2,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			if not User_CheckLeftSpace(1) then
				nNoSpace = 1 
			end 
			--强插背包
			Item_AddItem(3302170,0,nCount3)
		end
		if nLogFlag3 == 1 then 
			Sys_SaveActionFestivalLog(tMatchOfThePlumFlower_Log["30WPoint"])
		end 
	end 
	-- 判断 每个奖励是否有发送
	local sStr  = ""
	local sTemp = ""
	if nCount1 ~= 0 then 
		local sItemName = Get_ItemtypeName(3302168)
		if sStr == "" then 
			sTemp = string.format(tMatchOfThePlumFlower_Text[3302168],tMatchOfThePlumFlower_Text["Null"],nCount1,sItemName)
		else
			sTemp = string.format(tMatchOfThePlumFlower_Text[3302168],tMatchOfThePlumFlower_Text["And"],nCount1,sItemName)
		end
		sStr = sStr..sTemp
	end 
	
	if nCount2 ~= 0 then 
		local sItemName = Get_ItemtypeName(3302169)
		if sStr == "" then 
			sTemp = string.format(tMatchOfThePlumFlower_Text[3302169],tMatchOfThePlumFlower_Text["Null"],nCount2,sItemName)
		else
			sTemp = string.format(tMatchOfThePlumFlower_Text[3302169],tMatchOfThePlumFlower_Text["And"],nCount2,sItemName)
		end
		sStr = sStr..sTemp
	end 
	
	if nCount3 ~= 0 then 
		local sItemName = Get_ItemtypeName(3302170)
		if sStr == "" then 
			sTemp = string.format(tMatchOfThePlumFlower_Text[3302170],tMatchOfThePlumFlower_Text["Null"],nCount3,sItemName)
		else
			sTemp = string.format(tMatchOfThePlumFlower_Text[3302170],tMatchOfThePlumFlower_Text["And"],nCount3,sItemName)
		end
		sStr = sStr..sTemp
	end 
	
	local nTotalNum = nCount1 +nCount2 +nCount3 
	if nTotalNum == 0 then 
		local sItemName = Get_ItemtypeName(nItemId)
		if nFlag == 1 then
			tNpcGossip[nNpcId]["Text341"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text341"],nNum,sItemName)
			tNpcGossip[nNpcId]["Text342"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text342"],nScore,nTotalScore)
				--还未领取
			if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
				LinkNpcGossipFunc_New(nNpcId,"3-7")
			else
				LinkNpcGossipFunc_New(nNpcId,"3-4")
			end
		elseif nflag ==2 then 
			tNpcGossip[nNpcId]["Text431"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text431"],nNum,sItemName)
			tNpcGossip[nNpcId]["Text432"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text432"],nScore,nTotalScore)
			if not Task_ChkStcValue(nEventType3,nTypeType3,"==",1) then 	
				LinkNpcGossipFunc_New(nNpcId,"4-4")
			else
				LinkNpcGossipFunc_New(nNpcId,"4-3")
			end
		end
		return
	end 
	if nNoSpace == 1 then
		--光效
		if nFlag ~=3 then 
			User_EffectAdd("self","eidolon")
			tNpcGossip[nNpcId]["Text361"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text361"],nTotalScore,sStr)
			LinkNpcGossipFunc_New(nNpcId,"3-6")
		else 
			User_EffectAdd("self","eidolon")
			Sys_MsgBox(string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text361"],nTotalScore,sStr))
		end 
		return
	end
	--光效
	if nFlag ~= 3 then 
		User_EffectAdd("self","eidolon")
		tNpcGossip[nNpcId]["Text351"] = string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text351"],nTotalScore,sStr)
		LinkNpcGossipFunc_New(nNpcId,"3-5")
	else
		User_EffectAdd("self","eidolon")
		Sys_MsgBox(string.format(tMatchOfThePlumFlower_Text[nNpcId]["Text351"],nTotalScore,sStr))
	end 
end

--判断宝物
function MatchOfThePlumFlower_PutTreasure(nNpcId)
	if not Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		return
	end 
	--判断背包宝物数量
	tNpcGossip[nNpcId]["tOption4-1"] = {}
	for i,v in pairs(tMatchOfThePlumFlower_Treasure) do
			if Item_ChkItem(v) then
				table.insert(tNpcGossip[nNpcId]["tOption4-1"],i)
			end 
	end  
	table.insert(tNpcGossip[nNpcId]["tOption4-1"],4112)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end


--打开随机礼包
function MatchOfThePlumFlower_Open(nItemId)
	 if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tMatchOfThePlumFlower_Reward,nItemId)
	end
end

--花瓣碎片合成
function  MatchOfThePlumFlower_Compose(nItemId,nIndex)

	local nCount = Get_CountItemType(nItemId,0)
	if nIndex == 1 then
		if CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) then
			return 
		end 
		if nCount < 15 then 
			Sys_MsgBox(tMatchOfThePlumFlower_Text[nItemId]["NoEnough"])
			return 
		end 
		RewardTemplate_UseItem(tMatchOfThePlumFlower_Reward[nItemId][nIndex])
	else 
		if not CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) then
			return 
		end 
		local nStrength = 	tMatchOfThePlumFlower_Cont["Strength"][nItemId] * nCount 
		local tTable = CommonFunc_Copy(tMatchOfThePlumFlower_Reward[nItemId][nIndex])
		tTable["RewardStrengthValue"]["Value"] = nStrength
		tTable["DeleteItem"][1]["ItemNum"] = nCount
		tTable["Talk"] = string.format(tMatchOfThePlumFlower_Text[nItemId]["Talk2"],nCount,nStrength)
		RewardTemplate_UseItem(tTable)
	end  
end
--发型礼包选项显示
function MatchOfThePlumFlower_ShowOption(nItemId)
	local nSex = Get_UserSex()
	if nSex == 2 then 
		tItem[nItemId]["tOption1-1"] = {1,2,3,7}
	else 
		tItem[nItemId]["tOption1-1"] = {4,5,6,7}
	end 
	return true 
end

function MatchOfThePlumFlower_OpenHairPackage(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nIndex])
end

function MatchOfThePlumFlower_JudgeSex(nItemId)
	local nSex = Get_UserSex()
	--判断背包空间
	if not User_CheckLeftSpace(tMatchOfThePlumFlower_Cont["Space"]) then
		Sys_MsgBox(tMatchOfThePlumFlower_Text["NoSpace"])
		return
	end
	MatchOfThePlumFlower_OpenHairPackage(nItemId,nSex)
end

-- 发型
function MatchOfThePlumFlower_Hair(nItemId)
	local nStc = tMatchOfThePlumFlower_Hair[nItemId]["stc"] 
	local nEvent_7 = tMatchOfThePlumFlower_Stc[nStc]["EventType"]
	local nType_7 = tMatchOfThePlumFlower_Stc[nStc]["DataType"]
	--判断性别
	local nSex = Get_UserSex()
	local nHairSex =  tMatchOfThePlumFlower_Hair[nItemId]["sex"]
 	if nSex ~= nHairSex then 
		Sys_MsgBox(tMatchOfThePlumFlower_Text["HairSex"][nHairSex])
		return
	end 
	-- 发型更换10秒CD
	if not Task_StcInterval(nEvent_7,nType_7,tMatchOfThePlumFlower_Cont["HairCD"],0) then
		if not Task_ChkStcValue(nEvent_7,nType_7,"==",0) then
			Sys_MsgBox(tMatchOfThePlumFlower_Text["HairCD"])
			return 
		end
	end
	
	local nDel = tMatchOfThePlumFlower_Hair[nItemId]["del"]
	if nDel ==1 then 
		-- 删物品+置掩码+换发型
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent_7,nType_7,1,1)
			Task_SetStcTimestamp(nEvent_7,nType_7,0)
			if not User_HairFaceCheckExist(0,tMatchOfThePlumFlower_Hair[nItemId]["typeId"]) then
				User_HairFaceAward(0,tMatchOfThePlumFlower_Hair[nItemId]["typeId"],0)
			end
			User_ChangeUserHair(tMatchOfThePlumFlower_Hair[nItemId]["typeId"])
			User_TalkChannel2005(tMatchOfThePlumFlower_Text["ChageHair"])
		end
	else 
		Task_SetStatistic(nEvent_7,nType_7,1,1)
		Task_SetStcTimestamp(nEvent_7,nType_7,0)
		if not User_HairFaceCheckExist(0,tMatchOfThePlumFlower_Hair[nItemId]["typeId"]) then
			User_HairFaceAward(0,tMatchOfThePlumFlower_Hair[nItemId]["typeId"],0)
		end
		User_ChangeUserHair(tMatchOfThePlumFlower_Hair[nItemId]["typeId"])
		User_TalkChannel2005(tMatchOfThePlumFlower_Text["ChageHair"])
	end 
end

--打开商店
function MatchOfThePlumFlower_OpenShop(nNpcId)
	if CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) then
		 LinkNpcGossipFunc_New(nNpcId,"1-6")
		 return
	end
	User_OpenDialog(0,nNpcId,0)
end

--碎片选项显示
function MatchOfThePlumFlower_ShowOption2(nItemId)
	if  CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) then 
		tItem[nItemId]["tOption1-1"] = {2}
	else 
		tItem[nItemId]["tOption1-1"] = {1}
	end 
	return true 
end

--打开每日礼包
function  MatchOfThePlumFlower_OpenDayPack(nItemId)
		--判断背包空间
	if not User_CheckLeftSpace(tMatchOfThePlumFlower_Cont["Space1"]) then
		Sys_MsgBox(tMatchOfThePlumFlower_Text["NoSpace2"])
		return
	end
	if RewardTemplate_UseItem(tMatchOfThePlumFlower_Reward[nItemId]) then
		Task_AddStatistic(tMatchOfThePlumFlower_Stc["Score"]["EventType"],tMatchOfThePlumFlower_Stc["Score"]["DataType"],3000,1)
		Task_SetStcTimestamp(tMatchOfThePlumFlower_Stc["Score"]["EventType"],tMatchOfThePlumFlower_Stc["Score"]["DataType"],0)
		MatchOfThePlumFlower_SendAward(20349,0,0,132016,3,0,0)
	end 
end

--邮件发奖
function MatchOfThePlumFlower_SendMail(ActionId)
		local nUserId = Get_UserId()
		local sSender = tMatchOfThePlumFlower_Text["Send"]["Sender"]
		local sTitle = tMatchOfThePlumFlower_Text["Send"]["Title"]
		local sContent  = tMatchOfThePlumFlower_Text["Send"]["sContent"]
		Sys_SendMail(nUserId,0,0,ActionId,0,30,sSender,sTitle,sContent)
end 

--发送每日礼包
function MatchOfThePlumFlower_Daily(ActionId)
	local nEventType = tMatchOfThePlumFlower_Stc["Daily"]["EventType"]
	local nTypeType = tMatchOfThePlumFlower_Stc["Daily"]["DataType"]
	--是否隔天
	MatchOfThePlumFlower_Clean(nEventType,nTypeType)
	--还未领取
	if not Task_ChkStcValue(nEventType,nTypeType,"==",1) then 
		--打掩码给奖励
		Task_SetStatistic(nEventType,nTypeType,1,1)
		Task_SetStcTimestamp(nEventType,nTypeType,0)
		if not User_CheckLeftSpace(tMatchOfThePlumFlower_Cont["Space1"]) then
			MatchOfThePlumFlower_SendMail(565132)
		else
			RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Package[3302213])
		end
	end
end 
--清掩码
function MatchOfThePlumFlower_Clean(nEventType,nTypeType)
	if Task_StcInterval(nEventType,nTypeType,1,4) then
		Task_SetStatistic(nEventType,nTypeType,0,1)
		Task_SetStcTimestamp(nEventType,nTypeType,0)
	end 
end 

function MatchOfThePlumFlower_OpenWeb()
	local nUserId = Get_UserId()
	User_SendWebDialog(tMatchOfThePlumFlower_Cont["Web"])
end

function MatchOfThePlumFlower_JudgeTalk(nNpcId)
	if Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	elseif Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	end 
end 

--武器碎片合成
function MatchOfThePlumFlower_OpenPackage(nItemId,nIndex)
	--所需背包空间
	local nSpace = tMatchOfThePlumFlower_Space[nIndex]
	--背包中的数量
	local nCount = Get_CountItemType(nItemId,0)
	if nCount < nIndex then
		Sys_MsgBox(tMatchOfThePlumFlower_Text["NoItem"][nIndex])
		return
	end 	
	if nSpace ==0 then 
		RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nIndex])
	else
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(tMatchOfThePlumFlower_Text["Space"][nIndex])
			return
		end
		RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nIndex])
	end 
end

-- 碎片使用
function MatchOfThePlumFlower_PiecesUser(nItemId)
	local nNum = Get_CountItemType(nItemId,0)
	local nStrength = 	tMatchOfThePlumFlower_Strength[nItemId] * nNum 
	if CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then 
			User_AddStrengthValue(nStrength)
			local sStrength = string.format(tRewardTemplate_Text["RewardStrengthValue"],nStrength)
			local sContent = string.format(tRewardTemplate_Text["Main"],sStrength)
			User_TalkChannel2005(sContent)
			Sys_SaveActionFestivalLog(string.format(tMatchOfThePlumFlower_Log["StrengthReward"],nItemId,nNum,12,tonumber(nStrength)))
		end 
	end 
	if Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime3"]) then 
		RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId])
	end 
end



------------------------------NPC部分--------------------------------------------
tNpcFace[4662] = 394
tNpcFace[5193] = 5
tNpcFace[5192] = 137
tNpcGossip[20333] = tNpcGossip[20333] or DefaultNpc:new{}
tNpcGossip[20333]["OptionHidden"] = 1
tNpcGossip[20333]["DialogueText"] = tMatchOfThePlumFlower_Text[20333]

--活动时间前
tNpcGossip[20333]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20333]["tOption1-1"] = {1}
tNpcGossip[20333]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime"])
end
--活动中等级不足
tNpcGossip[20333]["Text1-2"] = {121,122,123,124,125,126,127}
tNpcGossip[20333]["tOption1-2"] = {2}
tNpcGossip[20333]["ChkFunc1-2"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

--海选活动中等级满足(未报名)
tNpcGossip[20333]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20333]["tOption1-3"] = {3,5,6,7}
tNpcGossip[20333]["OptionFunc3"] = "MatchOfThePlumFlower_Join</N>20333</N>1" 
tNpcGossip[20333]["OptionPoint7"]="9-1"
--tNpcGossip[20333]["OptionFunc4"] = "MatchOfThePlumFlower_PutFlower</N>20333" 
tNpcGossip[20333]["OptionPoint4"]="3-1"
tNpcGossip[20333]["OptionFunc5"] = "MatchOfThePlumFlower_OpenShop</N>20333" 
tNpcGossip[20333]["OptionFunc6"] = "MatchOfThePlumFlower_OpenWeb" 
tNpcGossip[20333]["ChkFunc1-3"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nScore= Get_UserStatisticValue(155,93)
	local nJoin= Get_UserStatisticValue(155,83)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) and nJoin == 0
end

--海选活动中等级满足
tNpcGossip[20333]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[20333]["tOption1-4"] = {5,6,7}
tNpcGossip[20333]["ChkFunc1-4"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nScore= Get_UserStatisticValue(155,93)
	local nJoin= Get_UserStatisticValue(155,83)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) and nJoin == 1
end


--决赛中等级不足
tNpcGossip[20333]["Text1-5"] = {151,152,153,154,155}
tNpcGossip[20333]["tOption1-5"] = {151}
tNpcGossip[20333]["ChkFunc1-5"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

tNpcGossip[20333]["Text1-6"] = {161,162,164,165,166,167}
tNpcGossip[20333]["tOption1-6"] = {4,5,6,161}
tNpcGossip[20333]["OptionPoint161"]="8-1"
tNpcGossip[20333]["ChkFunc1-6"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

--活动时间后
tNpcGossip[20333]["Text1-7"] = {171}
tNpcGossip[20333]["tOption1-7"] = {171,172}
tNpcGossip[20333]["OptionFunc171"] = "MatchOfThePlumFlower_OpenWeb" 
tNpcGossip[20333]["ChkFunc1-7"] = function ()
	return CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime2"])
end

tNpcGossip[20333]["Text8-1"] = {811,812,813,814,815,816,817,818,819}
tNpcGossip[20333]["tOption8-1"] = {912,913,811}

--已经报名过
tNpcGossip[20333]["Text2-1"] = {211}
tNpcGossip[20333]["tOption2-1"] = {211}
--性别不对
tNpcGossip[20333]["Text2-2"] = {221}
tNpcGossip[20333]["tOption2-2"] = {221}
--满足条件
tNpcGossip[20333]["Text2-3"] = {231}
tNpcGossip[20333]["tOption2-3"] = {231,232,233,234}
tNpcGossip[20333]["OptionFunc231"] = "MatchOfThePlumFlower_ConfirmJoin</N>20333</N>1" 
tNpcGossip[20333]["OptionFunc232"] = "MatchOfThePlumFlower_ConfirmJoin</N>20333</N>2" 
tNpcGossip[20333]["OptionFunc233"] = "MatchOfThePlumFlower_ConfirmJoin</N>20333</N>3" 

--二次确认报名
tNpcGossip[20333]["Text2-4"] = {241}
tNpcGossip[20333]["tOption2-4"] = {241,242}

tNpcGossip[20333]["Text2-5"] = {251,252,253}
tNpcGossip[20333]["tOption2-5"] = {251,252}
tNpcGossip[20333]["OptionFunc251"] = "MatchOfThePlumFlower_OpenWeb" 

tNpcGossip[20333]["Text2-6"] = {261}
tNpcGossip[20333]["tOption2-6"] = {261}

tNpcGossip[20333]["Text9-1"] = {911,912,913,914,915,916,917,918,919}
tNpcGossip[20333]["tOption9-1"] = {911,912,913,914}
tNpcGossip[20333]["OptionPoint911"]="9-3"
tNpcGossip[20333]["OptionPoint912"]="9-4"
tNpcGossip[20333]["OptionPoint913"]="9-5"



tNpcGossip[20333]["Text9-3"] = {931,932,933,934,935,936,937,938}
tNpcGossip[20333]["tOption9-3"] = {931}

tNpcGossip[20333]["Text9-4"] = {941,942,943,944,945,946,947,948}
tNpcGossip[20333]["tOption9-4"] = {941}

tNpcGossip[20333]["Text9-5"] = {951,952,953,954,955,956,957,958,959,9510}
tNpcGossip[20333]["tOption9-5"] = {951}

tNpcGossip[20333]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
tNpcGossip[20333]["tOption3-1"] = {311,312,313,314,316}
tNpcGossip[20333]["OptionFunc311"] = "MatchOfThePlumFlower_ChooseCount</N>20333</N>311" 
tNpcGossip[20333]["OptionFunc312"] = "MatchOfThePlumFlower_ChooseCount</N>20333</N>312" 
tNpcGossip[20333]["OptionFunc313"] = "MatchOfThePlumFlower_ChooseCount</N>20333</N>313" 
tNpcGossip[20333]["OptionFunc314"] = "MatchOfThePlumFlower_ChooseCount</N>20333</N>314" 
tNpcGossip[20333]["OptionFunc315"] = "MatchOfThePlumFlower_ChooseCount</N>20333</N>315" 
tNpcGossip[20333]["OptionFunc316"] = "MatchOfThePlumFlower_PutTreasure</N>20333" 
tNpcGossip[20333]["ChkFunc3-1"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nIndex = 0
	local nScore= Get_UserStatisticValue(155,93)
	tNpcGossip[20333]["Text3113"] = string.format(tMatchOfThePlumFlower_Text[20333]["Text3113"],nScore)
	for i,v in pairs(tMatchOfThePlumFlower_FlowerTopic) do 
		for x,y in pairs(v) do 
			if Sys_ChkFullTime(y) then 
				nIndex = i
			end 
		end 
	end 
	if nIndex ~= 0 then 
		tNpcGossip[20333]["Text312"] = string.format(tMatchOfThePlumFlower_Text[20333]["Text312"],tMatchOfThePlumFlower_Text["Flower"][nIndex],tMatchOfThePlumFlower_Text["Flower"][nIndex])
		tNpcGossip[20333]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
	else 
		tNpcGossip[20333]["Text3-1"] = {311,315,316,317,318,319,3110,3111,3112,3113}
	end 
	tNpcGossip[20333]["tOption3-1"]= {}
	local nMonopoly = tMatchOfThePlumFlower_Cont["nMonopoly"]
	for i,v in pairs(tMatchOfThePlumFlower_Flower) do
		for x,y in pairs(v) do
			if Item_ChkItem(y,nMonopoly) then
				table.insert(tNpcGossip[20333]["tOption3-1"],i)
				break
			end 
		end 
	end  
	table.insert(tNpcGossip[20333]["tOption3-1"],316)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

tNpcGossip[20333]["Text3-2"] = {321}
tNpcGossip[20333]["tOption3-2"] = {321,322,323,324,325,326}

tNpcGossip[20333]["Text3-3"] = {331}
tNpcGossip[20333]["tOption3-3"] = {331}

tNpcGossip[20333]["Text3-4"] = {341,342}
tNpcGossip[20333]["tOption3-4"] = {6,341}
tNpcGossip[20333]["OptionFunc341"] = "MatchOfThePlumFlower_PutFlower</N>20333" 

tNpcGossip[20333]["Text3-7"] = {341,342,373}
tNpcGossip[20333]["tOption3-7"] = {6,341}

tNpcGossip[20333]["Text3-5"] = {351}
tNpcGossip[20333]["tOption3-5"] = {351}

tNpcGossip[20333]["Text3-6"] = {361}
tNpcGossip[20333]["tOption3-6"] = {361}

tNpcGossip[20333]["Text4-1"] = {411,412,413,414,415,416,417,418,419}
tNpcGossip[20333]["tOption4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112}
tNpcGossip[20333]["OptionFunc411"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3006542</N>2"
tNpcGossip[20333]["OptionFunc412"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3006543</N>2"
tNpcGossip[20333]["OptionFunc413"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3003125</N>2"
tNpcGossip[20333]["OptionFunc414"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>720027</N>2"
tNpcGossip[20333]["OptionFunc415"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3003124</N>2"
tNpcGossip[20333]["OptionFunc416"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3002030</N>2"
tNpcGossip[20333]["OptionFunc417"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3003126</N>2"
tNpcGossip[20333]["OptionFunc418"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3002926</N>2"
tNpcGossip[20333]["OptionFunc419"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>1088000</N>2"
tNpcGossip[20333]["OptionFunc4110"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>1100003</N>2"
tNpcGossip[20333]["OptionFunc4111"] = "MatchOfThePlumFlower_EnterFlower</N>20333</N>3005360</N>2"

tNpcGossip[20333]["Text4-2"] = {421}
tNpcGossip[20333]["tOption4-2"] = {421}

tNpcGossip[20333]["Text4-3"] = {431,432}
tNpcGossip[20333]["tOption4-3"] = {431}
tNpcGossip[20333]["OptionFunc431"] = "MatchOfThePlumFlower_PutFlower</N>20333" 

tNpcGossip[20333]["Text4-4"] = {431,432,441}
tNpcGossip[20333]["tOption4-4"] = {431}

local tTable = CommonFunc_Copy( tNpcGossip[20333])
tTable["DialogueText"] = tMatchOfThePlumFlower_Text[20334]
tTable["OptionFunc3"] = "MatchOfThePlumFlower_Join</N>20334</N>2" 
tTable["OptionFunc5"] = "MatchOfThePlumFlower_OpenShop</N>20334" 
tTable["OptionFunc231"] = "MatchOfThePlumFlower_ConfirmJoin</N>20334</N>1" 
tTable["OptionFunc232"] = "MatchOfThePlumFlower_ConfirmJoin</N>20334</N>2" 
tTable["OptionFunc233"] = "MatchOfThePlumFlower_ConfirmJoin</N>20334</N>3" 
tTable["OptionFunc311"] = "MatchOfThePlumFlower_ChooseCount</N>20334</N>311" 
tTable["OptionFunc312"] = "MatchOfThePlumFlower_ChooseCount</N>20334</N>312" 
tTable["OptionFunc313"] = "MatchOfThePlumFlower_ChooseCount</N>20334</N>313" 
tTable["OptionFunc314"] = "MatchOfThePlumFlower_ChooseCount</N>20334</N>314" 
tTable["OptionFunc315"] = "MatchOfThePlumFlower_ChooseCount</N>20334</N>315" 
tTable["OptionFunc316"] = "MatchOfThePlumFlower_PutTreasure</N>20334" 
tTable["OptionFunc411"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3006542</N>2"
tTable["OptionFunc412"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3006543</N>2"
tTable["OptionFunc413"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3003125</N>2"
tTable["OptionFunc414"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>720027</N>2"
tTable["OptionFunc415"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3003124</N>2"
tTable["OptionFunc416"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3002030</N>2"
tTable["OptionFunc417"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3003126</N>2"
tTable["OptionFunc418"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3002926</N>2"
tTable["OptionFunc419"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>1088000</N>2"
tTable["OptionFunc4110"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>1100003</N>2"
tTable["OptionFunc4111"] = "MatchOfThePlumFlower_EnterFlower</N>20334</N>3005360</N>2"
tTable["OptionFunc431"] = "MatchOfThePlumFlower_PutFlower</N>20334" 
tTable["OptionFunc341"] = "MatchOfThePlumFlower_PutFlower</N>20334" 
tTable["ChkFunc1-3"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nScore= Get_UserStatisticValue(155,93)
	local nJoin= Get_UserStatisticValue(155,83)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) and  nJoin == 0
end

tTable["ChkFunc1-4"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nScore= Get_UserStatisticValue(155,93)
	local nJoin= Get_UserStatisticValue(155,83)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) and nJoin == 1
end

tTable["ChkFunc3-1"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nIndex = 0
	local nScore= Get_UserStatisticValue(155,93)
	tNpcGossip[20334]["Text3113"] = string.format(tMatchOfThePlumFlower_Text[20334]["Text3113"],nScore)
	for i,v in pairs(tMatchOfThePlumFlower_FlowerTopic) do 
		for x,y in pairs(v) do 
			if Sys_ChkFullTime(y) then 
				nIndex = i
			end 
		end 
	end 
	if nIndex ~= 0 then 
		tNpcGossip[20334]["Text312"] = string.format(tMatchOfThePlumFlower_Text[20334]["Text312"],tMatchOfThePlumFlower_Text["Flower"][nIndex],tMatchOfThePlumFlower_Text["Flower"][nIndex])
		tNpcGossip[20334]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
	else 
		tNpcGossip[20334]["Text3-1"] = {311,315,316,317,318,319,3110,3111,3112,3113}
	end 
	tNpcGossip[20334]["tOption3-1"]= {}
	local nMonopoly = tMatchOfThePlumFlower_Cont["nMonopoly"]
	for i,v in pairs(tMatchOfThePlumFlower_Flower) do
		for x,y in pairs(v) do
			if Item_ChkItem(y,nMonopoly) then
				table.insert(tNpcGossip[20334]["tOption3-1"],i)
				break
			end 
		end 
	end  
	table.insert(tNpcGossip[20334]["tOption3-1"],316)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end



tTable["ChkFunc1-6"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

tNpcGossip[20334] = tTable


tNpcGossip[20349] = tNpcGossip[20349] or DefaultNpc:new{}
tNpcGossip[20349]["OptionHidden"] = 1
tNpcGossip[20349]["DialogueText"] = tMatchOfThePlumFlower_Text[20349]

--活动时间前
tNpcGossip[20349]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20349]["tOption1-1"] = {1}
tNpcGossip[20349]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime"])
end
--活动中等级不足
tNpcGossip[20349]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20349]["tOption1-2"] = {2}
tNpcGossip[20349]["ChkFunc1-2"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

tNpcGossip[20349]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310}
tNpcGossip[20349]["tOption1-3"] = {311,312,313,314,315,316}
tNpcGossip[20349]["OptionFunc311"] = "MatchOfThePlumFlower_ChooseCount</N>20349</N>311" 
tNpcGossip[20349]["OptionFunc312"] = "MatchOfThePlumFlower_ChooseCount</N>20349</N>312" 
tNpcGossip[20349]["OptionFunc313"] = "MatchOfThePlumFlower_ChooseCount</N>20349</N>313" 
tNpcGossip[20349]["OptionFunc314"] = "MatchOfThePlumFlower_ChooseCount</N>20349</N>314" 
tNpcGossip[20349]["OptionFunc315"] = "MatchOfThePlumFlower_ChooseCount</N>20349</N>315" 
tNpcGossip[20349]["OptionFunc316"] = "MatchOfThePlumFlower_PutTreasure</N>20349" 
tNpcGossip[20349]["ChkFunc1-3"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nScore= Get_UserStatisticValue(155,93)
	tNpcGossip[20349]["Text139"] = string.format(tMatchOfThePlumFlower_Text[20349]["Text139"],nScore)
	tNpcGossip[20349]["tOption1-3"]= {}
	local nMonopoly = tMatchOfThePlumFlower_Cont["nMonopoly"]
	for i,v in pairs(tMatchOfThePlumFlower_Flower) do
		for x,y in pairs(v) do
			if Item_ChkItem(y,nMonopoly) then
				table.insert(tNpcGossip[20349]["tOption1-3"],i)
				break
			end 
		end 
	end  
	table.insert(tNpcGossip[20349]["tOption1-3"],316)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) 
end


--决赛中等级不足
tNpcGossip[20349]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[20349]["tOption1-4"] = {141}
tNpcGossip[20349]["ChkFunc1-4"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

tNpcGossip[20349]["Text1-5"] = {151,152,153,154,155,156,157,158,159,1510,1511,1512,1513}
tNpcGossip[20349]["tOption1-5"] = {311,312,313,314,315,316}
tNpcGossip[20349]["ChkFunc1-5"] = function ()
	local nLevel = tMatchOfThePlumFlower_Cont["Level"] 
	local nMetempsychosis = tMatchOfThePlumFlower_Cont["Metempsychosis"] 
	local nIndex = 0
	local nScore= Get_UserStatisticValue(155,93)
	tNpcGossip[20349]["Text1513"] = string.format(tMatchOfThePlumFlower_Text[20349]["Text1513"],nScore)
	for i,v in pairs(tMatchOfThePlumFlower_FlowerTopic) do 
		for x,y in pairs(v) do 
			if Sys_ChkFullTime(y) then 
				nIndex = i
			end 
		end 
	end 
	if nIndex ~= 0 then 
		tNpcGossip[20349]["Text152"] = string.format(tMatchOfThePlumFlower_Text[20349]["Text152"],tMatchOfThePlumFlower_Text["Flower"][nIndex],tMatchOfThePlumFlower_Text["Flower"][nIndex])
		tNpcGossip[20349]["Text1-5"] = {151,152,153,154,155,156,157,158,159,1510,1511,1512,1513}
	else 
		tNpcGossip[20349]["Text1-5"] = {151,155,156,157,158,159,1510,1511,1512,1513}
	end 
	tNpcGossip[20349]["tOption1-5"]= {}
	local nMonopoly = tMatchOfThePlumFlower_Cont["nMonopoly"]
	for i,v in pairs(tMatchOfThePlumFlower_Flower) do
		for x,y in pairs(v) do
			if Item_ChkItem(y,nMonopoly) then
				table.insert(tNpcGossip[20349]["tOption1-5"],i)
				break
			end 
		end 
	end  
	table.insert(tNpcGossip[20349]["tOption1-5"],316)
	return Sys_ChkFullTime(tMatchOfThePlumFlower_Cont["ActivityTime2"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

tNpcGossip[20349]["Text1-6"] = {161}
tNpcGossip[20349]["tOption1-6"] = {161,162}
tNpcGossip[20349]["OptionFunc161"] = "MatchOfThePlumFlower_OpenWeb" 
tNpcGossip[20349]["ChkFunc1-6"] = function ()
	return CommonFunc_GetAfterActivityTime(tMatchOfThePlumFlower_Cont["ActivityTime2"])
end

tNpcGossip[20349]["Text3-2"] = {321}
tNpcGossip[20349]["tOption3-2"] = {321,322,323,324,325,326}
tNpcGossip[20349]["OptionFunc326"] = "MatchOfThePlumFlower_JudgeTalk</N>20349" 

tNpcGossip[20349]["Text3-3"] = {331}
tNpcGossip[20349]["tOption3-3"] = {331}

tNpcGossip[20349]["Text3-4"] = {341,342}
tNpcGossip[20349]["tOption3-4"] = {6,341}
tNpcGossip[20349]["OptionFunc341"] = "MatchOfThePlumFlower_PutFlower</N>20349" 

tNpcGossip[20349]["Text3-7"] = {341,342,373}
tNpcGossip[20349]["tOption3-7"] = {6,341}

tNpcGossip[20349]["Text3-5"] = {351}
tNpcGossip[20349]["tOption3-5"] = {351}

tNpcGossip[20349]["Text3-6"] = {361}
tNpcGossip[20349]["tOption3-6"] = {361}

tNpcGossip[20349]["Text4-1"] = {411,412,413,414,415,416,417,418,419}
tNpcGossip[20349]["tOption4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112}
tNpcGossip[20349]["OptionFunc411"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3006542</N>2"
tNpcGossip[20349]["OptionFunc412"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3006543</N>2"
tNpcGossip[20349]["OptionFunc413"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3003125</N>2"
tNpcGossip[20349]["OptionFunc414"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>720027</N>2"
tNpcGossip[20349]["OptionFunc415"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3003124</N>2"
tNpcGossip[20349]["OptionFunc416"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3002030</N>2"
tNpcGossip[20349]["OptionFunc417"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3003126</N>2"
tNpcGossip[20349]["OptionFunc418"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3002926</N>2"
tNpcGossip[20349]["OptionFunc419"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>1088000</N>2"
tNpcGossip[20349]["OptionFunc4110"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>1100003</N>2"
tNpcGossip[20349]["OptionFunc4111"] = "MatchOfThePlumFlower_EnterFlower</N>20349</N>3005360</N>2"

tNpcGossip[20349]["Text4-2"] = {421}
tNpcGossip[20349]["tOption4-2"] = {421}

tNpcGossip[20349]["Text4-3"] = {431,432}
tNpcGossip[20349]["tOption4-3"] = {431}
tNpcGossip[20349]["OptionFunc431"] = "MatchOfThePlumFlower_PutFlower</N>20349" 

tNpcGossip[20349]["Text4-4"] = {431,432,441}
tNpcGossip[20349]["tOption4-4"] = {431}


--------------------------物品模块------------------------------
tItem[3302204] = tItem[3302204] or {}
tItem[3302204]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_JudgeSex(nItemId)
end

tItem[3302167] = tItem[3302167] or {}
tItem[3302167]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId])
end

tItem[3302168] = tItem[3302168] or {}
tItem[3302168]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_PiecesUser(nItemId)
end

tItem[3302169] = tItem[3302169] or {}
tItem[3302169]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_PiecesUser(nItemId)
end

tItem[3302170] = tItem[3302170] or {}
tItem[3302170]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_PiecesUser(nItemId)
end

tItem[3302205] = tItem[3302205] or {}
tItem[3302205]["DialogueText"] = tMatchOfThePlumFlower_Text[3302205]
tItem[3302205]["Text1-1"] = {111}
tItem[3302205]["tOption1-1"] = {1,2,3,4,5,6,7}
tItem[3302205]["ChkFunc1-1"] = function ()
	return MatchOfThePlumFlower_ShowOption(3302205)
end
tItem[3302205]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302205</N>1" 
tItem[3302205]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302205</N>2" 
tItem[3302205]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302205</N>3" 
tItem[3302205]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302205</N>4" 
tItem[3302205]["OptionFunc5"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302205</N>5" 
tItem[3302205]["OptionFunc6"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302205</N>6" 

tItem[3302212] = tItem[3302212] or {}
tItem[3302212]["DialogueText"] = tMatchOfThePlumFlower_Text[3302212]
tItem[3302212]["Text1-1"] = {111}
tItem[3302212]["tOption1-1"] = {1,2,3,4,5}
tItem[3302212]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302212</N>1" 
tItem[3302212]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302212</N>2" 
tItem[3302212]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302212</N>3" 
tItem[3302212]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302212</N>4" 

tItem[3302221] = tItem[3302221] or {}
tItem[3302221]["DialogueText"] = tMatchOfThePlumFlower_Text[3302221]
tItem[3302221]["Text1-1"] = {111}
tItem[3302221]["tOption1-1"] = {1,2,3,4,5}
tItem[3302221]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302221</N>1" 
tItem[3302221]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302221</N>2" 
tItem[3302221]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302221</N>3" 
tItem[3302221]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302221</N>4" 

tItem[3302222] = tItem[3302222] or {}
tItem[3302222]["DialogueText"] = tMatchOfThePlumFlower_Text[3302222]
tItem[3302222]["Text1-1"] = {111}
tItem[3302222]["tOption1-1"] = {1,2,3,4,5}
tItem[3302222]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302222</N>1" 
tItem[3302222]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302222</N>2" 
tItem[3302222]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302222</N>3" 
tItem[3302222]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302222</N>4" 

tItem[3302223] = tItem[3302223] or {}
tItem[3302223]["DialogueText"] = tMatchOfThePlumFlower_Text[3302223]
tItem[3302223]["Text1-1"] = {111}
tItem[3302223]["tOption1-1"] = {1,2,3,4,5}
tItem[3302223]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302223</N>1" 
tItem[3302223]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302223</N>2" 
tItem[3302223]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302223</N>3" 
tItem[3302223]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302223</N>4" 

--“情人礼帽”体验券（女）
tItem[3302206] = tItem[3302206] or {}
tItem[3302206]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--“情人礼帽”体验券（男）
tItem[3302207] = tItem[3302207] or {}
tItem[3302207]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--“动感潮流”体验券（女）
tItem[3302208] = tItem[3302208] or {}
tItem[3302208]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--“动感潮流”体验券（男）
tItem[3302209] = tItem[3302209] or {}
tItem[3302209]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--“魔发奇缘”体验券（女）
tItem[3302210] = tItem[3302210] or {}
tItem[3302210]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--“魔发奇缘”体验券（男）
tItem[3302211] = tItem[3302211] or {}
tItem[3302211]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--动感潮流（女）
tItem[3302200] = tItem[3302200] or {}
tItem[3302200]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--动感潮流（男）
tItem[3302201] = tItem[3302201] or {}
tItem[3302201]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--魔发奇缘（女）
tItem[3302202] = tItem[3302202] or {}
tItem[3302202]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end
--魔发奇缘（男）
tItem[3302203] = tItem[3302203] or {}
tItem[3302203]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_Hair(nItemId)
end

--每日礼包
tItem[3302213] = tItem[3302213] or {}
tItem[3302213]["Function"] = function(nItemId,sItemName)
	MatchOfThePlumFlower_OpenDayPack(nItemId)
end

--偶像海选赛冠军大奖
tItem[3302224] = tItem[3302224] or {}
tItem[3302224]["Function"] = function(nItemId,sItemName)
	if not User_CheckLeftSpace(tMatchOfThePlumFlower_Space[nItemId]) then
		Sys_MsgBox(tMatchOfThePlumFlower_Text["Space"][nItemId])
		return
	end
	local nSex = Get_UserSex()
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nSex])
end

--偶像海选赛亚军大奖
tItem[3302225] = tItem[3302225] or {}
tItem[3302225]["Function"] = function(nItemId,sItemName)
	if not User_CheckLeftSpace(tMatchOfThePlumFlower_Space[nItemId]) then
		Sys_MsgBox(tMatchOfThePlumFlower_Text["Space"][nItemId])
		return
	end
	local nSex = Get_UserSex()
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nSex])
end

--偶像海选赛季军大奖
tItem[3302226] = tItem[3302226] or {}
tItem[3302226]["Function"] = function(nItemId,sItemName)
	if not User_CheckLeftSpace(tMatchOfThePlumFlower_Space[nItemId]) then
		Sys_MsgBox(tMatchOfThePlumFlower_Text["Space"][nItemId])
		return
	end
	local nSex = Get_UserSex()
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nSex])
end

--偶像总决赛冠军大奖
tItem[3302227] = tItem[3302227] or {}
tItem[3302227]["Function"] = function(nItemId,sItemName)
	local nSex = Get_UserSex()
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId][nSex])
end

--偶像总决赛亚军大奖
tItem[3302228] = tItem[3302228] or {}
tItem[3302228]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId])
end

--偶像总决赛季军大奖
tItem[3302229] = tItem[3302229] or {}
tItem[3302229]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId])
end

--偶像大赛荣耀礼包
tItem[3302232] = tItem[3302232] or {}
tItem[3302232]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMatchOfThePlumFlower_Reward[nItemId])
end

--120天花神武器外套包
tItem[3302234] = tItem[3302234] or {}
tItem[3302234]["DialogueText"] = tMatchOfThePlumFlower_Text[3302234]
tItem[3302234]["Text1-1"] = {111}
tItem[3302234]["tOption1-1"] = {1,2,3,4,5}
tItem[3302234]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302234</N>1" 
tItem[3302234]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302234</N>2" 
tItem[3302234]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302234</N>3" 
tItem[3302234]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302234</N>4" 

--90天花神武器外套包
tItem[3302237] = tItem[3302237] or {}
tItem[3302237]["DialogueText"] = tMatchOfThePlumFlower_Text[3302237]
tItem[3302237]["Text1-1"] = {111}
tItem[3302237]["tOption1-1"] = {1,2,3,4,5}
tItem[3302237]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302237</N>1" 
tItem[3302237]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302237</N>2" 
tItem[3302237]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302237</N>3" 
tItem[3302237]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302237</N>4" 

tItem[3302230] = tItem[3302230] or {}
tItem[3302230]["DialogueText"] = tMatchOfThePlumFlower_Text[3302230]
tItem[3302230]["Text1-1"] = {111}
tItem[3302230]["tOption1-1"] = {1,2,3,4}
tItem[3302230]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302230</N>1" 
tItem[3302230]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302230</N>2" 
tItem[3302230]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302230</N>3" 

tItem[3302231] = tItem[3302231] or {}
tItem[3302231]["DialogueText"] = tMatchOfThePlumFlower_Text[3302231]
tItem[3302231]["Text1-1"] = {111}
tItem[3302231]["tOption1-1"] = {1,2,3}
tItem[3302231]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302231</N>1" 
tItem[3302231]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302231</N>2" 


tItem[3302233] = tItem[3302233] or {}
tItem[3302233]["DialogueText"] = tMatchOfThePlumFlower_Text[3302233]
tItem[3302233]["Text1-1"] = {111,112}
tItem[3302233]["tOption1-1"] = {1,2,3,4,5}
tItem[3302233]["OptionFunc1"] = "MatchOfThePlumFlower_OpenPackage</N>3302233</N>4" 
tItem[3302233]["OptionFunc2"] = "MatchOfThePlumFlower_OpenPackage</N>3302233</N>5" 
tItem[3302233]["OptionFunc3"] = "MatchOfThePlumFlower_OpenPackage</N>3302233</N>6" 
tItem[3302233]["OptionFunc4"] = "MatchOfThePlumFlower_OpenPackage</N>3302233</N>7" 
tItem[3302233]["OptionFunc5"] = "MatchOfThePlumFlower_OpenPackage</N>3302233</N>1" 

tItem[3302246] = tItem[3302246] or {}
tItem[3302246]["DialogueText"] = tMatchOfThePlumFlower_Text[3302246]
tItem[3302246]["Text1-1"] = {111}
tItem[3302246]["tOption1-1"] = {1,2,3,4}
tItem[3302246]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302246</N>1" 
tItem[3302246]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302246</N>2" 
tItem[3302246]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302246</N>3" 

tItem[3302247] = tItem[3302247] or {}
tItem[3302247]["DialogueText"] = tMatchOfThePlumFlower_Text[3302247]
tItem[3302247]["Text1-1"] = {111}
tItem[3302247]["tOption1-1"] = {1,2,3,4}
tItem[3302247]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302247</N>1" 
tItem[3302247]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302247</N>2" 
tItem[3302247]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302247</N>3" 

tItem[3302248] = tItem[3302248] or {}
tItem[3302248]["DialogueText"] = tMatchOfThePlumFlower_Text[3302248]
tItem[3302248]["Text1-1"] = {111}
tItem[3302248]["tOption1-1"] = {1,2,3,4}
tItem[3302248]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302248</N>1" 
tItem[3302248]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302248</N>2" 
tItem[3302248]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302248</N>3" 

--7天偶像光效武器外套包
tItemFace[3302339] = 1558
tItem[3302339] = tItem[3302339] or {}
tItem[3302339]["DialogueText"] = tMatchOfThePlumFlower_Text[3302339]
tItem[3302339]["Text1-1"] = {111}
tItem[3302339]["tOption1-1"] = {1,2,3,4,5}
tItem[3302339]["OptionFunc1"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302339</N>1" 
tItem[3302339]["OptionFunc2"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302339</N>2" 
tItem[3302339]["OptionFunc3"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302339</N>4" 
tItem[3302339]["OptionFunc4"] = "MatchOfThePlumFlower_OpenHairPackage</N>3302339</N>3"  
