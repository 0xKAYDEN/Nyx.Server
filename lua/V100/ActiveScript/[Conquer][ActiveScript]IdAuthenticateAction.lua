------------------------------------------------------------------------------------
--Name:		180519[简体征服][活动脚本]制作帐号鉴定活动礼包发奖ID
--Purpose:	制作帐号鉴定活动礼包发奖ID
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
-- logid：12001086

------------------------------------------------------------------------------------
local tIdAuthenticateAction_Cont = {}
--活动时间
-- tIdAuthenticateAction_Cont["BefTime"] = tActivityTime["IdAuthenticateAction"]["BefTime"]
tIdAuthenticateAction_Cont["ActTime"] = tActivityTime["IdAuthenticateAction"]["ActTime"]


local tIdAuthenticateAction_Stc = {}
tIdAuthenticateAction_Stc[3309604] = {}
tIdAuthenticateAction_Stc[3309604][1] ={}
tIdAuthenticateAction_Stc[3309604][1]["EventType"] = 177
tIdAuthenticateAction_Stc[3309604][1]["DataType"] = 66
tIdAuthenticateAction_Stc[3309604][1]["Data"] = 7

tIdAuthenticateAction_Stc[3309604][2] ={}
tIdAuthenticateAction_Stc[3309604][2]["EventType"] = 177
tIdAuthenticateAction_Stc[3309604][2]["DataType"] = 67

tIdAuthenticateAction_Stc[3309605] = {}
tIdAuthenticateAction_Stc[3309605][1] ={}
tIdAuthenticateAction_Stc[3309605][1]["EventType"] = 177
tIdAuthenticateAction_Stc[3309605][1]["DataType"] = 68
tIdAuthenticateAction_Stc[3309605][1]["Data"] = 7

tIdAuthenticateAction_Stc[3309605][2] ={}
tIdAuthenticateAction_Stc[3309605][2]["EventType"] = 177
tIdAuthenticateAction_Stc[3309605][2]["DataType"] = 69

tIdAuthenticateAction_Stc[3309606] = {}
tIdAuthenticateAction_Stc[3309606][1] ={}
tIdAuthenticateAction_Stc[3309606][1]["EventType"] = 177
tIdAuthenticateAction_Stc[3309606][1]["DataType"] = 70
tIdAuthenticateAction_Stc[3309606][1]["Data"] = 7

tIdAuthenticateAction_Stc[3309606][2] ={}
tIdAuthenticateAction_Stc[3309606][2]["EventType"] = 177
tIdAuthenticateAction_Stc[3309606][2]["DataType"] = 71

tIdAuthenticateAction_Stc[3309607] = {}
tIdAuthenticateAction_Stc[3309607][1] ={}
tIdAuthenticateAction_Stc[3309607][1]["EventType"] = 177
tIdAuthenticateAction_Stc[3309607][1]["DataType"] = 72
tIdAuthenticateAction_Stc[3309607][1]["Data"] = 7

tIdAuthenticateAction_Stc[3309607][2] ={}
tIdAuthenticateAction_Stc[3309607][2]["EventType"] = 177
tIdAuthenticateAction_Stc[3309607][2]["DataType"] = 73

local tIdAuthenticateAction_RewandItem = {}
	
	tIdAuthenticateAction_RewandItem[3309027] = {}
	tIdAuthenticateAction_RewandItem[3309027][1] = {}
	tIdAuthenticateAction_RewandItem[3309027][1]["ItemChanceSum"] = 10000
	
	tIdAuthenticateAction_RewandItem[3309027][1][1] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][1]["RandomItemChanceType"] = 2
	tIdAuthenticateAction_RewandItem[3309027][1][1]["ItemChance"] = 1900
	tIdAuthenticateAction_RewandItem[3309027][1][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][1]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309027][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 2"
	tIdAuthenticateAction_RewandItem[3309027][1][1]["Log"] = "0,0,3309027,1,12001086,2,300000,1"
	
	tIdAuthenticateAction_RewandItem[3309027][1][2] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][2]["RandomItemChanceType"] = 2
	tIdAuthenticateAction_RewandItem[3309027][1][2]["ItemChance"] = 4940
	tIdAuthenticateAction_RewandItem[3309027][1][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][2]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309027][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 3"
	tIdAuthenticateAction_RewandItem[3309027][1][2]["Log"] = "0,0,3309027,1,12001086,2,300000,1"
	
	tIdAuthenticateAction_RewandItem[3309027][1][3] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][3]["RandomItemChanceType"] = 2
	tIdAuthenticateAction_RewandItem[3309027][1][3]["ItemChance"] = 3150
	tIdAuthenticateAction_RewandItem[3309027][1][3]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][3]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][3]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309027][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 4"
	tIdAuthenticateAction_RewandItem[3309027][1][3]["Log"] = "0,0,3309027,1,12001086,2,300000,1"
	
	tIdAuthenticateAction_RewandItem[3309027][1][4] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][4]["RandomItemChanceType"] = 2
	tIdAuthenticateAction_RewandItem[3309027][1][4]["ItemChance"] = 10
	tIdAuthenticateAction_RewandItem[3309027][1][4]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][4]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309027][1][4]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309027][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 6"
	tIdAuthenticateAction_RewandItem[3309027][1][4]["Log"] = "0,0,3309027,1,12001086,2,300000,1"
	
	--S级账号礼包
	tIdAuthenticateAction_RewandItem[3309028]={}
	tIdAuthenticateAction_RewandItem[3309028][1]={}
	tIdAuthenticateAction_RewandItem[3309028][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309028][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["DeleteItem"][1]["Id"] = 3309028
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][1]["Id"] = 3008193
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][2]["Id"] = 3008315
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][3]["Id"] = 3305375
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][4]["Id"] = 3309065
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][4]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][5] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][5]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardItem"][5]["Attr"] = "0 10 3"
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309028][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--二期新增s-4s礼包
	-- 3310609,'S级账号鉴定礼包',0
	tIdAuthenticateAction_RewandItem[3310609]={}
	tIdAuthenticateAction_RewandItem[3310609][1]={}
	tIdAuthenticateAction_RewandItem[3310609][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3310609][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3310609][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310609][1]["DeleteItem"][1]["Id"] = 3310609
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"][1]["Id"] = 3008190
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"][2]["Id"] = 3200337
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3310609][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3310610,'SS级账号鉴定礼包',
	tIdAuthenticateAction_RewandItem[3310610]={}
	tIdAuthenticateAction_RewandItem[3310610][1]={}
	tIdAuthenticateAction_RewandItem[3310610][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3310610][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["DeleteItem"][1]["Id"] = 3310610
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][1]["Id"] = 3008193
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][2]["Id"] = 3009001
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][3]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardItem"][3]["Attr"] = "0 50 3"
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3310610][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3310611,'SSS级账号鉴定礼包'
	tIdAuthenticateAction_RewandItem[3310611]={}
	tIdAuthenticateAction_RewandItem[3310611][1]={}
	tIdAuthenticateAction_RewandItem[3310611][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3310611][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["DeleteItem"][1]["Id"] = 3310611
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][1]["Id"] = 3305452
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][2]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][2]["Attr"] = "0 5"
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][3]["Id"] = 3309067
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][4]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardItem"][4]["Attr"] = "0 30 3"
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3310611][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3310612,'SSSS级账号鉴定礼包
	tIdAuthenticateAction_RewandItem[3310612]={}
	tIdAuthenticateAction_RewandItem[3310612][1]={}
	tIdAuthenticateAction_RewandItem[3310612][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3310612][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["DeleteItem"][1]["Id"] = 3310612
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][1]["Id"] = 3008202
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][2]["Id"] = 3306319
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][3]["Id"] = 3309068
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][4]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardItem"][4]["Attr"] = "0 50 3"
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3310612][1]["RewardEffect"]["Effect"] = "zf2-e128"
	

	--SS级账号礼包
	tIdAuthenticateAction_RewandItem[3309029]={}
	tIdAuthenticateAction_RewandItem[3309029][1]={}
	tIdAuthenticateAction_RewandItem[3309029][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309029][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["DeleteItem"][1]["Id"] = 3309029
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][1]["Id"] = 3008198
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][2]["Id"] = 3306318
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][3]["Id"] = 3309066
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][4]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardItem"][4]["Attr"] = "0 30 3"
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309029][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--1%神佑 勇士传奇【联盟王者】
	tIdAuthenticateAction_RewandItem[3310586]={}
	tIdAuthenticateAction_RewandItem[3310586][1]={}
	tIdAuthenticateAction_RewandItem[3310586][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3310586][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3310586][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310586][1]["DeleteItem"][1]["Id"] = 3310586
	tIdAuthenticateAction_RewandItem[3310586][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3310586][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3310586][1]["RewardItem"][1]["Id"] = 195365
	tIdAuthenticateAction_RewandItem[3310586][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tIdAuthenticateAction_RewandItem[3310586][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3310586][1]["RewardEffect"]["Effect"] = "zf2-e128"

	
	--SSS级账号礼包
	tIdAuthenticateAction_RewandItem[3309030]={}
	tIdAuthenticateAction_RewandItem[3309030][1]={}
	tIdAuthenticateAction_RewandItem[3309030][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309030][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["DeleteItem"][1]["Id"] = 3309030
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][1]["Id"] = 3305452
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][2]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][2]["Attr"] = "0 5"
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][3]["Id"] = 3309067
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][4]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardItem"][4]["Attr"] = "0 30 3"
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309030][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--SSSS级账号礼包
	tIdAuthenticateAction_RewandItem[3309031]={}
	tIdAuthenticateAction_RewandItem[3309031][1]={}
	tIdAuthenticateAction_RewandItem[3309031][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309031][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["DeleteItem"][1]["Id"] = 3309031
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][1]["Id"] = 3008202
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][2]["Id"] = 3306319
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][3]["Id"] = 3309068
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][4]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardItem"][4]["Attr"] = "0 50 3"
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309031][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--5000气力超值包
	tIdAuthenticateAction_RewandItem[3309032]={}
	tIdAuthenticateAction_RewandItem[3309032][1]={}
	tIdAuthenticateAction_RewandItem[3309032][1]["EmoneyCost"] = 799
	tIdAuthenticateAction_RewandItem[3309032][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309032][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309032][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309032][1]["DeleteItem"][1]["Id"] = 3309032
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"][2]["Id"] = 3309033
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309032][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309033]={}
	tIdAuthenticateAction_RewandItem[3309033][1]={}
	tIdAuthenticateAction_RewandItem[3309033][1]["EmoneyCost"] = 799
	tIdAuthenticateAction_RewandItem[3309033][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309033][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309033][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309033][1]["DeleteItem"][1]["Id"] = 3309033
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"][2]["Id"] = 3309034
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309033][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309034]={}
	tIdAuthenticateAction_RewandItem[3309034][1]={}
	tIdAuthenticateAction_RewandItem[3309034][1]["EmoneyCost"] = 799
	tIdAuthenticateAction_RewandItem[3309034][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309034][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309034][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309034][1]["DeleteItem"][1]["Id"] = 3309034
	tIdAuthenticateAction_RewandItem[3309034][1]["RewardItem"] ={}
	tIdAuthenticateAction_RewandItem[3309034][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309034][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309034][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309034][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309034][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--晶莹星陨石超值包
	tIdAuthenticateAction_RewandItem[3309035]={}
	tIdAuthenticateAction_RewandItem[3309035][1]={}
	tIdAuthenticateAction_RewandItem[3309035][1]["EmoneyCost"] = 599
	tIdAuthenticateAction_RewandItem[3309035][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309035][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309035][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309035][1]["DeleteItem"][1]["Id"] = 3309035
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"][2]["Id"] = 3309036
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309035][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309036]={}
	tIdAuthenticateAction_RewandItem[3309036][1]={}
	tIdAuthenticateAction_RewandItem[3309036][1]["EmoneyCost"] = 599
	tIdAuthenticateAction_RewandItem[3309036][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309036][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309036][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309036][1]["DeleteItem"][1]["Id"] = 3309036
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"][2]["Id"] = 3309037
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309036][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309037]={}
	tIdAuthenticateAction_RewandItem[3309037][1]={}
	tIdAuthenticateAction_RewandItem[3309037][1]["EmoneyCost"] = 599
	tIdAuthenticateAction_RewandItem[3309037][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309037][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309037][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309037][1]["DeleteItem"][1]["Id"] = 3309037
	tIdAuthenticateAction_RewandItem[3309037][1]["RewardItem"] ={}
	tIdAuthenticateAction_RewandItem[3309037][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309037][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309037][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309037][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309037][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--随机黄色神纹超值包
	tIdAuthenticateAction_RewandItem[3309038]={}
	tIdAuthenticateAction_RewandItem[3309038][1]={}
	tIdAuthenticateAction_RewandItem[3309038][1]["EmoneyCost"] = 899
	tIdAuthenticateAction_RewandItem[3309038][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309038][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309038][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309038][1]["DeleteItem"][1]["Id"] = 3309038
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"][2]["Id"] = 3309039
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309038][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309039]={}
	tIdAuthenticateAction_RewandItem[3309039][1]={}
	tIdAuthenticateAction_RewandItem[3309039][1]["EmoneyCost"] = 899
	tIdAuthenticateAction_RewandItem[3309039][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309039][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309039][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309039][1]["DeleteItem"][1]["Id"] = 3309039
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"][2]["Id"] = 3309040
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309039][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309040]={}
	tIdAuthenticateAction_RewandItem[3309040][1]={}
	tIdAuthenticateAction_RewandItem[3309040][1]["EmoneyCost"] = 899
	tIdAuthenticateAction_RewandItem[3309040][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309040][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309040][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309040][1]["DeleteItem"][1]["Id"] = 3309040
	tIdAuthenticateAction_RewandItem[3309040][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309040][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309040][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309040][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309040][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309040][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--5000气力值优惠包
	tIdAuthenticateAction_RewandItem[3309041]={}
	tIdAuthenticateAction_RewandItem[3309041][1]={}
	tIdAuthenticateAction_RewandItem[3309041][1]["EmoneyCost"] = 599
	tIdAuthenticateAction_RewandItem[3309041][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309041][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309041][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309041][1]["DeleteItem"][1]["Id"] = 3309041
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"][2]["Id"] = 3309042
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309041][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309042]={}
	tIdAuthenticateAction_RewandItem[3309042][1]={}
	tIdAuthenticateAction_RewandItem[3309042][1]["EmoneyCost"] = 599
	tIdAuthenticateAction_RewandItem[3309042][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309042][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309042][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309042][1]["DeleteItem"][1]["Id"] = 3309042
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"][2]["Id"] = 3309043
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309042][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309043]={}
	tIdAuthenticateAction_RewandItem[3309043][1]={}
	tIdAuthenticateAction_RewandItem[3309043][1]["EmoneyCost"] = 599
	tIdAuthenticateAction_RewandItem[3309043][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309043][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309043][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309043][1]["DeleteItem"][1]["Id"] = 3309043
	tIdAuthenticateAction_RewandItem[3309043][1]["RewardItem"] ={}
	tIdAuthenticateAction_RewandItem[3309043][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309043][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309043][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309043][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309043][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--晶莹星陨石优惠包
	tIdAuthenticateAction_RewandItem[3309044]={}
	tIdAuthenticateAction_RewandItem[3309044][1]={}
	tIdAuthenticateAction_RewandItem[3309044][1]["EmoneyCost"] = 399
	tIdAuthenticateAction_RewandItem[3309044][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309044][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309044][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309044][1]["DeleteItem"][1]["Id"] = 3309044
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"][2]["Id"] = 3309045
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309044][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309045]={}
	tIdAuthenticateAction_RewandItem[3309045][1]={}
	tIdAuthenticateAction_RewandItem[3309045][1]["EmoneyCost"] = 399
	tIdAuthenticateAction_RewandItem[3309045][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309045][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309045][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309045][1]["DeleteItem"][1]["Id"] = 3309045
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"][2]["Id"] = 3309046
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309045][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309046]={}
	tIdAuthenticateAction_RewandItem[3309046][1]={}
	tIdAuthenticateAction_RewandItem[3309046][1]["EmoneyCost"] = 399
	tIdAuthenticateAction_RewandItem[3309046][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309046][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309046][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309046][1]["DeleteItem"][1]["Id"] = 3309046
	tIdAuthenticateAction_RewandItem[3309046][1]["RewardItem"] ={}
	tIdAuthenticateAction_RewandItem[3309046][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309046][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309046][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309046][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309046][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--随机黄色神纹优惠包
	tIdAuthenticateAction_RewandItem[3309047]={}
	tIdAuthenticateAction_RewandItem[3309047][1]={}
	tIdAuthenticateAction_RewandItem[3309047][1]["EmoneyCost"] = 699
	tIdAuthenticateAction_RewandItem[3309047][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309047][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309047][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309047][1]["DeleteItem"][1]["Id"] = 3309047
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"][2]["Id"] = 3309048
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309047][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309048]={}
	tIdAuthenticateAction_RewandItem[3309048][1]={}
	tIdAuthenticateAction_RewandItem[3309048][1]["EmoneyCost"] = 699
	tIdAuthenticateAction_RewandItem[3309048][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309048][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309048][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309048][1]["DeleteItem"][1]["Id"] = 3309048
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"][2]["Id"] = 3309049
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309048][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309049]={}
	tIdAuthenticateAction_RewandItem[3309049][1]={}
	tIdAuthenticateAction_RewandItem[3309049][1]["EmoneyCost"] = 699
	tIdAuthenticateAction_RewandItem[3309049][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309049][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309049][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309049][1]["DeleteItem"][1]["Id"] = 3309049
	tIdAuthenticateAction_RewandItem[3309049][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309049][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309049][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309049][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309049][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309049][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--5000气力尊享包
	tIdAuthenticateAction_RewandItem[3309050]={}
	tIdAuthenticateAction_RewandItem[3309050][1]={}
	tIdAuthenticateAction_RewandItem[3309050][1]["EmoneyCost"] = 350
	tIdAuthenticateAction_RewandItem[3309050][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309050][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309050][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309050][1]["DeleteItem"][1]["Id"] = 3309050
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"][2]["Id"] = 3309051
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309050][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309051]={}
	tIdAuthenticateAction_RewandItem[3309051][1]={}
	tIdAuthenticateAction_RewandItem[3309051][1]["EmoneyCost"] = 350
	tIdAuthenticateAction_RewandItem[3309051][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309051][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309051][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309051][1]["DeleteItem"][1]["Id"] = 3309051
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"][2]["Id"] = 3309052
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309051][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309052]={}
	tIdAuthenticateAction_RewandItem[3309052][1]={}
	tIdAuthenticateAction_RewandItem[3309052][1]["EmoneyCost"] = 350
	tIdAuthenticateAction_RewandItem[3309052][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309052][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309052][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309052][1]["DeleteItem"][1]["Id"] = 3309052
	tIdAuthenticateAction_RewandItem[3309052][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309052][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309052][1]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309052][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309052][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309052][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--晶莹星陨石尊享包
	tIdAuthenticateAction_RewandItem[3309053]={}
	tIdAuthenticateAction_RewandItem[3309053][1]={}
	tIdAuthenticateAction_RewandItem[3309053][1]["EmoneyCost"] = 270
	tIdAuthenticateAction_RewandItem[3309053][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309053][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309053][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309053][1]["DeleteItem"][1]["Id"] = 3309053
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"][2]["Id"] = 3309054
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309053][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309054]={}
	tIdAuthenticateAction_RewandItem[3309054][1]={}
	tIdAuthenticateAction_RewandItem[3309054][1]["EmoneyCost"] = 270
	tIdAuthenticateAction_RewandItem[3309054][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309054][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309054][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309054][1]["DeleteItem"][1]["Id"] = 3309054
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"][2]["Id"] = 3309055
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309054][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309055]={}
	tIdAuthenticateAction_RewandItem[3309055][1]={}
	tIdAuthenticateAction_RewandItem[3309055][1]["EmoneyCost"] = 270
	tIdAuthenticateAction_RewandItem[3309055][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309055][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309055][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309055][1]["DeleteItem"][1]["Id"] = 3309055
	tIdAuthenticateAction_RewandItem[3309055][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309055][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309055][1]["RewardItem"][1]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309055][1]["RewardItem"][1]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309055][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309055][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--随机黄色神纹尊享包
	tIdAuthenticateAction_RewandItem[3309056]={}
	tIdAuthenticateAction_RewandItem[3309056][1]={}
	tIdAuthenticateAction_RewandItem[3309056][1]["EmoneyCost"] = 399
	tIdAuthenticateAction_RewandItem[3309056][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309056][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309056][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309056][1]["DeleteItem"][1]["Id"] = 3309056
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"][2]["Id"] = 3309057
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309056][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309057]={}
	tIdAuthenticateAction_RewandItem[3309057][1]={}
	tIdAuthenticateAction_RewandItem[3309057][1]["EmoneyCost"] = 399
	tIdAuthenticateAction_RewandItem[3309057][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309057][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309057][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309057][1]["DeleteItem"][1]["Id"] = 3309057
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"][2]["Id"] = 3309058
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309057][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309058]={}
	tIdAuthenticateAction_RewandItem[3309058][1]={}
	tIdAuthenticateAction_RewandItem[3309058][1]["EmoneyCost"] = 399
	tIdAuthenticateAction_RewandItem[3309058][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309058][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309058][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309058][1]["DeleteItem"][1]["Id"] = 3309058
	tIdAuthenticateAction_RewandItem[3309058][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309058][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309058][1]["RewardItem"][1]["Id"] = 3306919
	tIdAuthenticateAction_RewandItem[3309058][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309058][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309058][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 点点星光礼包
	tIdAuthenticateAction_RewandItem[3309059]={}
	tIdAuthenticateAction_RewandItem[3309059][1]={}
	tIdAuthenticateAction_RewandItem[3309059][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309059][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309059][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309059][1]["DeleteItem"][1]["Id"] = 3309059
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"][1]["Id"] = 3002027
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"][2]["Id"] = 3006536
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309059][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309059][2]={}
	tIdAuthenticateAction_RewandItem[3309059][2]["EmoneyCost"] = 18
	tIdAuthenticateAction_RewandItem[3309059][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardNoNeedTip"] = 1
	tIdAuthenticateAction_RewandItem[3309059][2]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309059][2]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309059][2]["DeleteItem"][1]["Id"] = 3309059
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardItem"][1]["Id"] = 3309060
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309059][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 星光闪耀礼包
	tIdAuthenticateAction_RewandItem[3309060]={}
	tIdAuthenticateAction_RewandItem[3309060][1]={}
	tIdAuthenticateAction_RewandItem[3309060][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309060][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["DeleteItem"][1]["Id"] = 3309060
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][1]["Id"] = 3008190
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][2]["Id"] = 3009000
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][2]["Attr"] = "0 5"
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][3]["Id"] = 3003125
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardItem"][3]["Attr"] = "0 3 3"
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309060][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309060][2]={}
	tIdAuthenticateAction_RewandItem[3309060][2]["EmoneyCost"] = 88
	tIdAuthenticateAction_RewandItem[3309060][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardNoNeedTip"] = 1
	tIdAuthenticateAction_RewandItem[3309060][2]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309060][2]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309060][2]["DeleteItem"][1]["Id"] = 3309060
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardItem"][1]["Id"] = 3309061
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309060][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 漫天繁星礼包
	tIdAuthenticateAction_RewandItem[3309061]={}
	tIdAuthenticateAction_RewandItem[3309061][1]={}
	tIdAuthenticateAction_RewandItem[3309061][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309061][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["DeleteItem"][1]["Id"] = 3309061
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][1]["Id"] = 3008193
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][2]["Id"] = 3009001
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][2]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][3]["Id"] = 3002030
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardItem"][3]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309061][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309061][2]={}
	tIdAuthenticateAction_RewandItem[3309061][2]["EmoneyCost"] = 188
	tIdAuthenticateAction_RewandItem[3309061][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardNoNeedTip"] = 1
	tIdAuthenticateAction_RewandItem[3309061][2]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309061][2]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309061][2]["DeleteItem"][1]["Id"] = 3309061
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardItem"][1]["Id"] = 3309062
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309061][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 星光璀璨礼包
	tIdAuthenticateAction_RewandItem[3309062]={}
	tIdAuthenticateAction_RewandItem[3309062][1]={}
	tIdAuthenticateAction_RewandItem[3309062][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309062][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["DeleteItem"][1]["Id"] = 3309062
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][1]["Id"] = 3008196
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][2]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][3]["Id"] = 3003126
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardItem"][3]["Attr"] = "0 3 3"
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309062][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309062][2]={}
	tIdAuthenticateAction_RewandItem[3309062][2]["EmoneyCost"] = 288
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardNoNeedTip"] = 1
	tIdAuthenticateAction_RewandItem[3309062][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309062][2]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309062][2]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309062][2]["DeleteItem"][1]["Id"] = 3309062
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardItem"][1]["Id"] = 3309063
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309062][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 群星闪耀礼包
	tIdAuthenticateAction_RewandItem[3309063]={}
	tIdAuthenticateAction_RewandItem[3309063][1]={}
	tIdAuthenticateAction_RewandItem[3309063][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309063][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["DeleteItem"][1]["Id"] = 3309063
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][1]["Id"] = 3001035
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][2]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][2]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][3]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardItem"][3]["Attr"] = "0 10 3"
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309063][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--+3专属武器礼盒
	tIdAuthenticateAction_RewandItem[3309065] = {}
	tIdAuthenticateAction_RewandItem[3309065]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["DeleteItem"][1]["Id"] = 3309065
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"] = {}
	--勇士
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1]["Pro"] = {{10,15}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1]["Item"][1]["Id"] = 410219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--战士
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2]["Pro"] = {{20,25}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2]["Item"][1]["Id"] = 624219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--弓手
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3]["Pro"] = {{40,45}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3]["Item"][1]["Id"] = 500209
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--忍者
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4]["Pro"] = {{50,55}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4]["Item"][1]["Id"] = 601219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--武僧
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5]["Pro"] = {{60,65}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5]["Item"][1]["Id"] = 610219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--海盗
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6]["Pro"] = {{70,75}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6]["Item"][1]["Id"] = 611219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--小龙
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7]["Pro"] = {{80,85}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7]["Item"][1]["Id"] = 617219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--道士
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8]["Pro"] = {{100,145}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8]["Item"][1]["Id"] = 421219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--铁扇门
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9]["Pro"] = {{160,165}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9]["Item"][1]["Id"] = 626219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	--雷神
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10]["Pro"] = {{90,95}}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10]["Item"][1]["Id"] = 681219
	tIdAuthenticateAction_RewandItem[3309065]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 3 255"
	
	--+4专属武器礼盒
	tIdAuthenticateAction_RewandItem[3309066] = {}
	tIdAuthenticateAction_RewandItem[3309066]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["DeleteItem"][1]["Id"] = 3309066
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"] = {}
	--勇士
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1]["Pro"] = {{10,15}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1]["Item"][1]["Id"] = 410219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--战士
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2]["Pro"] = {{20,25}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2]["Item"][1]["Id"] = 624219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--弓手
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3]["Pro"] = {{40,45}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3]["Item"][1]["Id"] = 500209
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--忍者
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4]["Pro"] = {{50,55}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4]["Item"][1]["Id"] = 601219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--武僧
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5]["Pro"] = {{60,65}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5]["Item"][1]["Id"] = 610219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--海盗
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6]["Pro"] = {{70,75}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6]["Item"][1]["Id"] = 611219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--小龙
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7]["Pro"] = {{80,85}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7]["Item"][1]["Id"] = 617219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--道士
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8]["Pro"] = {{100,145}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8]["Item"][1]["Id"] = 421219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--铁扇门
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9]["Pro"] = {{160,165}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9]["Item"][1]["Id"] = 626219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"
	--雷神
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10]["Pro"] = {{90,95}}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10]["Item"][1]["Id"] = 681219
	tIdAuthenticateAction_RewandItem[3309066]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 4 255"

	--+6专属武器礼盒
	tIdAuthenticateAction_RewandItem[3309067] = {}
	tIdAuthenticateAction_RewandItem[3309067]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["DeleteItem"][1]["Id"] = 3309067
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"] = {}
	--勇士
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1]["Pro"] = {{10,15}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1]["Item"][1]["Id"] = 410219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--战士
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2]["Pro"] = {{20,25}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2]["Item"][1]["Id"] = 624219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--弓手
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3]["Pro"] = {{40,45}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3]["Item"][1]["Id"] = 500209
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--忍者
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4]["Pro"] = {{50,55}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4]["Item"][1]["Id"] = 601219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--武僧
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5]["Pro"] = {{60,65}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5]["Item"][1]["Id"] = 610219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--海盗
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6]["Pro"] = {{70,75}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6]["Item"][1]["Id"] = 611219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--小龙
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7]["Pro"] = {{80,85}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7]["Item"][1]["Id"] = 617219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--道士
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8]["Pro"] = {{100,145}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8]["Item"][1]["Id"] = 421219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--铁扇门
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9]["Pro"] = {{160,165}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9]["Item"][1]["Id"] = 626219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"
	--雷神
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10]["Pro"] = {{90,95}}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10]["Item"][1]["Id"] = 681219
	tIdAuthenticateAction_RewandItem[3309067]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 255"

	--+8专属武器礼盒
	tIdAuthenticateAction_RewandItem[3309068] = {}
	tIdAuthenticateAction_RewandItem[3309068]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["DeleteItem"][1]["Id"] = 3309068
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"] = {}
	--勇士
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1]["Pro"] = {{10,15}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1]["Item"][1]["Id"] = 410219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--战士
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2]["Pro"] = {{20,25}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2]["Item"][1]["Id"] = 624219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--弓手
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3]["Pro"] = {{40,45}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3]["Item"][1]["Id"] = 500209
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--忍者
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4]["Pro"] = {{50,55}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4]["Item"][1]["Id"] = 601219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--武僧
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5]["Pro"] = {{60,65}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5]["Item"][1]["Id"] = 610219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--海盗
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6]["Pro"] = {{70,75}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6]["Item"][1]["Id"] = 611219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--小龙
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7]["Pro"] = {{80,85}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7]["Item"][1]["Id"] = 617219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--道士
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8]["Pro"] = {{100,145}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8]["Item"][1]["Id"] = 421219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--铁扇门
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9]["Pro"] = {{160,165}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9]["Item"][1]["Id"] = 626219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	--雷神
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10]["Pro"] = {{90,95}}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10]["Item"][1]["Id"] = 681219
	tIdAuthenticateAction_RewandItem[3309068]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 255"
	
	
	-- 一帆风顺礼盒
	tIdAuthenticateAction_RewandItem[3309604]={}
	tIdAuthenticateAction_RewandItem[3309604][1]={}
	tIdAuthenticateAction_RewandItem[3309604][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"][1]["Id"] = 727412
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"][2]["Id"] = 723017
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309604][2]={}
	tIdAuthenticateAction_RewandItem[3309604][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"][1]["Id"] = 3006245
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"][2]["Id"] = 723017
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardItem"][2]["Attr"] = "0 2 3"
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309604][3]={}
	tIdAuthenticateAction_RewandItem[3309604][3]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"][1]["Id"] = 1200000
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"][2]["Id"] = 730002
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardItem"][2]["Attr"] = "0 1 3 4320 1"
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][3]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309604][4]={}
	tIdAuthenticateAction_RewandItem[3309604][4]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"][1]["Id"] = 3008315
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"][2]["Id"] = 3309627
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][4]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309604][5]={}
	tIdAuthenticateAction_RewandItem[3309604][5]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"][1]["Id"] = 1200001
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"][2]["Id"] = 3002030
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][5]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309604][6]={}
	tIdAuthenticateAction_RewandItem[3309604][6]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"][1]["Id"] = 729852
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"][2]["Id"] = 3006245
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardItem"][2]["Attr"] = "0 3 3"
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][6]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309604][7]={}
	tIdAuthenticateAction_RewandItem[3309604][7]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"][1]["Id"] = 3005128
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"][2]["Id"] = 1200002
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309604][7]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 平步青云礼盒
	tIdAuthenticateAction_RewandItem[3309605]={}
	tIdAuthenticateAction_RewandItem[3309605][1]={}
	tIdAuthenticateAction_RewandItem[3309605][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"][1]["Id"] = 1200000
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"][2]["Id"] = 723017
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardItem"][2]["Attr"] = "0 2 3"
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309605][2]={}
	tIdAuthenticateAction_RewandItem[3309605][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"][1]["Id"] = 3006245
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"][1]["Attr"] = "0 5 3"
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"][2]["Id"] = 723017
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardItem"][2]["Attr"] = "0 2 3"
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309605][3]={}
	tIdAuthenticateAction_RewandItem[3309605][3]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"][1]["Id"] = 1200001
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"][2]["Id"] = 3008315
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][3]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309605][4]={}
	tIdAuthenticateAction_RewandItem[3309605][4]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"][1]["Id"] = 3006246
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"][2]["Id"] = 730003
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardItem"][2]["Attr"] = "0 1 3 4320 1"
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][4]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309605][5]={}
	tIdAuthenticateAction_RewandItem[3309605][5]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"][1]["Id"] = 729852
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"][2]["Id"] = 3008193
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][5]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309605][6]={}
	tIdAuthenticateAction_RewandItem[3309605][6]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"][1]["Id"] = 1200002
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"][2]["Id"] = 3309617
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][6]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309605][7]={}
	tIdAuthenticateAction_RewandItem[3309605][7]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][2]["Id"] = 3309626
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][3]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardItem"][3]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309605][7]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 青云直上礼包
	tIdAuthenticateAction_RewandItem[3309606]={}
	tIdAuthenticateAction_RewandItem[3309606][1]={}
	tIdAuthenticateAction_RewandItem[3309606][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"][1]["Id"] = 1200002
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"][2]["Id"] = 729852
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309606][2]={}
	tIdAuthenticateAction_RewandItem[3309606][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"][1]["Id"] = 3008193
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"][2]["Id"] = 730005
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardItem"][2]["Attr"] = "0 1 3 4320 1"
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309606][3]={}
	tIdAuthenticateAction_RewandItem[3309606][3]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][1]["Id"] = 3002926
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][1]["Attr"] = "0 10"
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][2]["Id"] = 1088000
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][2]["Attr"] = "0 3 3"
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][3]["Id"] = 3009002
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardItem"][3]["Attr"] = "0 3"
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][3]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309606][4]={}
	tIdAuthenticateAction_RewandItem[3309606][4]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"][1]["Id"] = 3309618
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"][2]["Id"] = 3306918
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][4]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309606][5]={}
	tIdAuthenticateAction_RewandItem[3309606][5]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"][2]["Id"] = 3303100
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][5]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309606][6]={}
	tIdAuthenticateAction_RewandItem[3309606][6]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][1]["Id"] = 3309620
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][2]["Id"] = 3309619
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][3]["Id"] = 4060001 
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardItem"][3]["Attr"] = "0 30 3"
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][6]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309606][7]={}
	tIdAuthenticateAction_RewandItem[3309606][7]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][1]["Id"] = 3008201
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][2]["Id"] = 3309622
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][3]["Id"] = 3306319 
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardItem"][3]["Attr"] = "0 1 0 4320 1"
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309606][7]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 一步登天礼包
	tIdAuthenticateAction_RewandItem[3309607]={}
	tIdAuthenticateAction_RewandItem[3309607][1]={}
	tIdAuthenticateAction_RewandItem[3309607][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][1]["Id"] = 1200002
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][2]["Id"] = 3309621
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][3]["Id"] = 3002030 
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][3]["Attr"] = "0 20"
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][4]["Id"] = 3002926 
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardItem"][4]["Attr"] = "0 5"
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309607][2]={}
	tIdAuthenticateAction_RewandItem[3309607][2]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][1]["Id"] = 3309617
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][2]["Id"] = 3306510
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][3]["Id"] = 4060001
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardItem"][3]["Attr"] = "0 50 3"
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309607][3]={}
	tIdAuthenticateAction_RewandItem[3309607][3]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][1]["Id"] = 3008198
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][2]["Id"] = 3309623
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][3]["Id"] = 3002926
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardItem"][3]["Attr"] = "0 10"
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][3]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309607][4]={}
	tIdAuthenticateAction_RewandItem[3309607][4]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"][1]["Id"] = 3007604 
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"][2]["Id"] = 3306319
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardItem"][2]["Attr"] = "0 1 0 4320 1"
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][4]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309607][5]={}
	tIdAuthenticateAction_RewandItem[3309607][5]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"][1]["Id"] = 3303261
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"][2]["Id"] = 3303100 
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardItem"][2]["Attr"] = "0 3 3"
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][5]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309607][6]={}
	tIdAuthenticateAction_RewandItem[3309607][6]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"][1]["Id"] = 3309624
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"][1]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"][2]["Id"] = 3303261 
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardItem"][2]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][6]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tIdAuthenticateAction_RewandItem[3309607][7]={}
	tIdAuthenticateAction_RewandItem[3309607][7]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][1]["Id"] = 3008201
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][2]["Id"] = 3309625
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][2]["Attr"] = "0 1"
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][3]["Id"] = 3306319 
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardItem"][3]["Attr"] = "0 2 0 4320 1"
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309607][7]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	-- 3000点修行值礼包
	tIdAuthenticateAction_RewandItem[3309617]={}
	tIdAuthenticateAction_RewandItem[3309617][1]={}
	tIdAuthenticateAction_RewandItem[3309617][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309617][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309617][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309617][1]["DeleteItem"][1]["Id"] = 3309617
	tIdAuthenticateAction_RewandItem[3309617][1]["RewardCultivation"] = {}
	tIdAuthenticateAction_RewandItem[3309617][1]["RewardCultivation"]["Value"] = 3000
	tIdAuthenticateAction_RewandItem[3309617][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309617][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 5000点修行值礼包
	tIdAuthenticateAction_RewandItem[3309618]={}
	tIdAuthenticateAction_RewandItem[3309618][1]={}
	tIdAuthenticateAction_RewandItem[3309618][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309618][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309618][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309618][1]["DeleteItem"][1]["Id"] = 3309618
	tIdAuthenticateAction_RewandItem[3309618][1]["RewardCultivation"] = {}
	tIdAuthenticateAction_RewandItem[3309618][1]["RewardCultivation"]["Value"] = 5000
	tIdAuthenticateAction_RewandItem[3309618][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309618][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 8000点修行值礼包
	tIdAuthenticateAction_RewandItem[3309619]={}
	tIdAuthenticateAction_RewandItem[3309619][1]={}
	tIdAuthenticateAction_RewandItem[3309619][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309619][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309619][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309619][1]["DeleteItem"][1]["Id"] = 3309619
	tIdAuthenticateAction_RewandItem[3309619][1]["RewardCultivation"] = {}
	tIdAuthenticateAction_RewandItem[3309619][1]["RewardCultivation"]["Value"] = 8000
	tIdAuthenticateAction_RewandItem[3309619][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309619][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+4枣红马（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309620]={}
	tIdAuthenticateAction_RewandItem[3309620][1]={}
	tIdAuthenticateAction_RewandItem[3309620][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309620][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309620][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309620][1]["DeleteItem"][1]["Id"] = 3309620
	tIdAuthenticateAction_RewandItem[3309620][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309620][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309620][1]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309620][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4"
	tIdAuthenticateAction_RewandItem[3309620][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309620][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+5枣红马（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309621]={}
	tIdAuthenticateAction_RewandItem[3309621][1]={}
	tIdAuthenticateAction_RewandItem[3309621][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309621][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309621][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309621][1]["DeleteItem"][1]["Id"] = 3309621
	tIdAuthenticateAction_RewandItem[3309621][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309621][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309621][1]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309621][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5"
	tIdAuthenticateAction_RewandItem[3309621][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309621][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+4马鞭（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309622]={}
	tIdAuthenticateAction_RewandItem[3309622][1]={}
	tIdAuthenticateAction_RewandItem[3309622][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309622][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309622][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309622][1]["DeleteItem"][1]["Id"] = 3309622
	tIdAuthenticateAction_RewandItem[3309622][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309622][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309622][1]["RewardItem"][1]["Id"] = 203009
	tIdAuthenticateAction_RewandItem[3309622][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tIdAuthenticateAction_RewandItem[3309622][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309622][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+5马鞭（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309623]={}
	tIdAuthenticateAction_RewandItem[3309623][1]={}
	tIdAuthenticateAction_RewandItem[3309623][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309623][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309623][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309623][1]["DeleteItem"][1]["Id"] = 3309623
	tIdAuthenticateAction_RewandItem[3309623][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309623][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309623][1]["RewardItem"][1]["Id"] = 203009
	tIdAuthenticateAction_RewandItem[3309623][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5"
	tIdAuthenticateAction_RewandItem[3309623][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309623][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--极品+5凌霄扇（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309624]={}
	tIdAuthenticateAction_RewandItem[3309624][1]={}
	tIdAuthenticateAction_RewandItem[3309624][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309624][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309624][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309624][1]["DeleteItem"][1]["Id"] = 3309624
	tIdAuthenticateAction_RewandItem[3309624][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309624][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309624][1]["RewardItem"][1]["Id"] = 201009
	tIdAuthenticateAction_RewandItem[3309624][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5"
	tIdAuthenticateAction_RewandItem[3309624][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309624][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--极品+5混元塔（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309625]={}
	tIdAuthenticateAction_RewandItem[3309625][1]={}
	tIdAuthenticateAction_RewandItem[3309625][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309625][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309625][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309625][1]["DeleteItem"][1]["Id"] = 3309625
	tIdAuthenticateAction_RewandItem[3309625][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309625][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309625][1]["RewardItem"][1]["Id"] = 202009
	tIdAuthenticateAction_RewandItem[3309625][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5"
	tIdAuthenticateAction_RewandItem[3309625][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309625][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+3枣红马（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309627]={}
	tIdAuthenticateAction_RewandItem[3309627][1]={}
	tIdAuthenticateAction_RewandItem[3309627][1]["LogId"] = 12001086
	tIdAuthenticateAction_RewandItem[3309627][1]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309627][1]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309627][1]["DeleteItem"][1]["Id"] = 3309627
	tIdAuthenticateAction_RewandItem[3309627][1]["RewardItem"] = {}
	tIdAuthenticateAction_RewandItem[3309627][1]["RewardItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309627][1]["RewardItem"][1]["Id"] = 300000
	tIdAuthenticateAction_RewandItem[3309627][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3"
	tIdAuthenticateAction_RewandItem[3309627][1]["RewardEffect"] = {}
	tIdAuthenticateAction_RewandItem[3309627][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--115级极品武器（赠）礼盒
	tIdAuthenticateAction_RewandItem[3309626] = {}
	tIdAuthenticateAction_RewandItem[3309626]["DeleteItem"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["DeleteItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["DeleteItem"][1]["Id"] = 3309626
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"] = {}
	--勇士
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1]["Pro"] = {{10,15}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1]["Item"][1]["Id"] = 410229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	--战士
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2]["Pro"] = {{20,25}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2]["Item"][1]["Id"] = 624229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	--弓手
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3]["Pro"] = {{40,45}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3]["Item"][1]["Id"] = 500219
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	--忍者
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4]["Pro"] = {{50,55}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4]["Item"][1]["Id"] = 601229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	--武僧
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5]["Pro"] = {{60,65}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5]["Item"][1]["Id"] = 610229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	--海盗
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6]["Pro"] = {{70,75}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6]["Item"][1]["Id"] = 611229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	--小龙
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7]["Pro"] = {{80,85}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7]["Item"][1]["Id"] = 617229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	--道士
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8]["Pro"] = {{100,145}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8]["Item"][1]["Id"] = 421229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	--铁扇门
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9]["Pro"] = {{160,165}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9]["Item"][1]["Id"] = 626229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	--雷神
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10]["Log"] =  12001086
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10]["Pro"] = {{90,95}}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10]["Item"] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10]["Item"][1] = {}
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10]["Item"][1]["Id"] = 681229
	tIdAuthenticateAction_RewandItem[3309626]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
	
	
	-- 礼包使用次数
	local tIdAuthenticateAction_Time ={}
	tIdAuthenticateAction_Time[3309032] = 3
	tIdAuthenticateAction_Time[3309033] = 2
	tIdAuthenticateAction_Time[3309034] = 1
	tIdAuthenticateAction_Time[3309035] = 3
	tIdAuthenticateAction_Time[3309036] = 2
	tIdAuthenticateAction_Time[3309037] = 1
	tIdAuthenticateAction_Time[3309038] = 3
	tIdAuthenticateAction_Time[3309039] = 2
	tIdAuthenticateAction_Time[3309040] = 1
	tIdAuthenticateAction_Time[3309041] = 3
	tIdAuthenticateAction_Time[3309042] = 2
	tIdAuthenticateAction_Time[3309043] = 1
	tIdAuthenticateAction_Time[3309044] = 3
	tIdAuthenticateAction_Time[3309045] = 2
	tIdAuthenticateAction_Time[3309046] = 1
	tIdAuthenticateAction_Time[3309047] = 3
	tIdAuthenticateAction_Time[3309048] = 2
	tIdAuthenticateAction_Time[3309049] = 1
	tIdAuthenticateAction_Time[3309050] = 3
	tIdAuthenticateAction_Time[3309051] = 2
	tIdAuthenticateAction_Time[3309052] = 1
	tIdAuthenticateAction_Time[3309053] = 3
	tIdAuthenticateAction_Time[3309054] = 2
	tIdAuthenticateAction_Time[3309055] = 1
	tIdAuthenticateAction_Time[3309056] = 3
	tIdAuthenticateAction_Time[3309057] = 2
	tIdAuthenticateAction_Time[3309058] = 1
	
local tIdAuthenticateAction_Log = {}
--物品过期删除
tIdAuthenticateAction_Log["TimeOut"] = "0,0,%d,1,12001086,0,0,0"

---------------------------------------物品逻辑---------------------------------------------
function IdAuthenticateAction_ChkItem(nItemId)

	local nMoneyCost = tIdAuthenticateAction_RewandItem[nItemId][1]["EmoneyCost"]
	local nItemId1 = tIdAuthenticateAction_RewandItem[nItemId][1]["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nItemId1)
	local nItemTime = tIdAuthenticateAction_Time[nItemId]
	
	tItem[nItemId]["Text111"] = string.format(tIdAuthenticateAction_Text[3309032]["Text111"],nMoneyCost,sItemName)
	tItem[nItemId]["Text112"] = string.format(tIdAuthenticateAction_Text[3309032]["Text112"],nItemTime)
	tItem[nItemId]["Option111"] = string.format(tIdAuthenticateAction_Text[3309032]["Option111"],nMoneyCost)
	
end

function IdAuthenticateAction_PackText(nItemId,nType)
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] =tIdAuthenticateAction_Text[3309032]
	tItem[nItemId]["Text1-1"] = {111,112}
	tItem[nItemId]["tOption1-1"] = {111,112}
	-- tItem[nItemId]["OptionPoint111"]="2-1"
	tItem[nItemId]["OptionFunc111"]="IdAuthenticateAction_OpenLinkRight</N>"..nItemId
	tItem[nItemId]["ChkFunc1-1"] =function()
	local nEmoney = tIdAuthenticateAction_RewandItem[nItemId][1]["EmoneyCost"]
	

		IdAuthenticateAction_ChkItem(nItemId)
		return true
	end
--二次确认
	tItem[nItemId]["Text2-1"] = {211}
	tItem[nItemId]["tOption2-1"] = {211,212}
	tItem[nItemId]["ChkFunc2-1"] =function()
	local nEmoney = tIdAuthenticateAction_RewandItem[nItemId][1]["EmoneyCost"]
		tItem[nItemId]["Text211"]=string.format(tIdAuthenticateAction_Text[3309032]["Text211"],nEmoney)
		return true
	end
	tItem[nItemId]["OptionFunc211"]="IdAuthenticateAction_OpenPack</N>"..nItemId
end

--检测过期物品
function IdAuthenticateAction_OpenLinkRight(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end


-- 花费天石开礼包
function IdAuthenticateAction_OpenPack(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end
	
	--检测玩家是否拥有足够天石
	local nEmoney = tIdAuthenticateAction_RewandItem[nItemId][1]["EmoneyCost"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		User_TalkChannel2005(tIdAuthenticateAction_Text["MsgNoEmoney"])
		return
	end
	
	--检测背包空间
	if not RewardTemplate_CheckSpace(tIdAuthenticateAction_RewandItem[nItemId][1]) then
		User_TalkChannel2005(tIdAuthenticateAction_Text["NoSpace"])
		return
	end
	
	--扣除天石给奖励
	if Item_ChkItem(nItemId) then
		if User_AddEMoney(-nEmoney) then
			RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId][1])
			-- Sys_SaveEmoneyBuy(tPlayerBargain_Reward[nItemId]["EmoneyLog"])
		end
	end
end

-- 升级礼包
function IdAuthenticateAction_UpLevPack(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end
	
	--检测玩家是否拥有足够天石
	local nEmoney = tIdAuthenticateAction_RewandItem[nItemId][2]["EmoneyCost"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	--检测背包空间
	if not RewardTemplate_CheckSpace(tIdAuthenticateAction_RewandItem[nItemId][2]) then
		User_TalkChannel2005(tIdAuthenticateAction_Text["UpNoSpace"])
		return
	end
	
	--扣除天石给奖励
	if Item_ChkItem(nItemId) then
		if User_AddEMoney(-nEmoney) then
			RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId][2])
			-- Sys_SaveEmoneyBuy(tPlayerBargain_Reward[nItemId]["EmoneyLog"])
			local nItemReward = tIdAuthenticateAction_RewandItem[nItemId][2]["RewardItem"][1]["Id"]
			local sItemName = Get_ItemtypeName(nItemReward)
			User_TalkChannel2005(string.format(tIdAuthenticateAction_Text["RewardItem"],sItemName))
		end
	end
end

--升级全部礼包
function IdAuthenticateAction_UpAllLevPack(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end

	--检测玩家是否拥有足够天石
	local nEmoney = tIdAuthenticateAction_RewandItem[nItemId][2]["EmoneyCost"] * nItemNum
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	--检测背包空间
	if not RewardTemplate_CheckSpace(tIdAuthenticateAction_RewandItem[nItemId][2]) then
		User_TalkChannel2005(tIdAuthenticateAction_Text["UpNoSpace"])
		return
	end
	--扣除天石给奖励
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		if User_AddEMoney(-nEmoney) then
			for i= 1,nItemNum do
				RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId][2])
				-- Sys_SaveEmoneyBuy(tPlayerBargain_Reward[nItemId]["EmoneyLog"])
			end
			local nItemReward = tIdAuthenticateAction_RewandItem[nItemId][2]["RewardItem"][1]["Id"]
			local sItemName = Get_ItemtypeName(nItemReward)
			User_TalkChannel2005(string.format(tIdAuthenticateAction_Text["RewardAllItem"],nItemNum,sItemName))
		end
	end
end

function IdAuthenticateAction_UseItem(nItemId)
	
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end
	
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRewardSpace(tIdAuthenticateAction_RewandItem[nItemId][1])-RewardTemplate_GetDelSpace(tIdAuthenticateAction_RewandItem[nItemId][1])
		if not(User_CheckLeftSpace(nSpace)) then
		--提示
			User_TalkChannel2005(string.format(tIdAuthenticateAction_Text["MsgSpace"],nSpace))
		return 
		end
		RewardTemplate_UseItemAndMsg(tIdAuthenticateAction_RewandItem[nItemId][1])
	end
end

function IdAuthenticateAction_UseExceed(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end
	
	--是否全部开完7次礼包
	if Item_ChkItem(nItemId) then
		local nEvent1 = tIdAuthenticateAction_Stc[nItemId][1]["EventType"]
		local nType1 = tIdAuthenticateAction_Stc[nItemId][1]["DataType"]
		local nMaxData1= tIdAuthenticateAction_Stc[nItemId][1]["Data"]
		--是否开启过礼包
		if Task_ChkStcValue(nEvent1,nType1,">=",nMaxData1) then
			if Item_DelItem(nItemId) then
			end
			return 
		end
		
		local nTime = Get_UserStatisticValue(nEvent1,nType1)
		local sItemName = ""
		
		if nTime == nil or nTime == 0 then
			nTime = 0
		end
		
		local nEvent2 = tIdAuthenticateAction_Stc[nItemId][2]["EventType"]
		local nType2 = tIdAuthenticateAction_Stc[nItemId][2]["DataType"]
	
		--隔天重置
		if Task_StcInterval(nEvent2,nType2,1,4) then
			Task_SetStatistic(nEvent2,nType2,0,1)
			Task_SetStcTimestamp(nEvent2,nType2,0)
		end
		
		--今日是否开启过礼包
		if Task_ChkStcValue(nEvent2,nType2,">=",1) then
			sItemName = tIdAuthenticateAction_Text["Reward"][nItemId][nTime+1]
			tItem[nItemId]["Text112"] = string.format(tIdAuthenticateAction_Text[3309604]["Text112"],sItemName)
			
			LinkItemGossipFunc_New(nItemId,"1-1")
			return 
		end
		
		--今日是否开启过礼包
		if Task_ChkStcValue(nEvent2,nType2,">=",1) then
			sItemName = tIdAuthenticateAction_Text["Reward"][nItemId][nTime+1]
			tItem[nItemId]["Text112"] = string.format(tIdAuthenticateAction_Text[3309604]["Text112"],sItemName)
			
			LinkItemGossipFunc_New(nItemId,"1-1")
			return 
		end
		
		if Task_ChkStcValue(nEvent1,nType1,"==",6) then
			sItemName = tIdAuthenticateAction_Text["Reward"][nItemId][nTime+1]
			tItem[nItemId]["Text131"] = string.format(tIdAuthenticateAction_Text[3309604]["Text131"],sItemName)
			LinkItemGossipFunc_New(nItemId,"1-3")
			return 
		else
			sItemName = tIdAuthenticateAction_Text["Reward"][nItemId][nTime+1]
			local sItemName2 = tIdAuthenticateAction_Text["Reward"][nItemId][nTime+2]
			tItem[nItemId]["Text121"] = string.format(tIdAuthenticateAction_Text[3309604]["Text121"],nTime+1,sItemName)
			tItem[nItemId]["Text122"] = string.format(tIdAuthenticateAction_Text[3309604]["Text122"],sItemName2)
			LinkItemGossipFunc_New(nItemId,"1-2")
			return
		end
	
	end
end


function IdAuthenticateAction_UseSignInPack(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		end
		return
	end
	
	if Item_ChkItem(nItemId) then
		
		local nEvent2 = tIdAuthenticateAction_Stc[nItemId][2]["EventType"]
		local nType2 = tIdAuthenticateAction_Stc[nItemId][2]["DataType"]
	
		--隔天重置
		if Task_StcInterval(nEvent2,nType2,1,4) then
			Task_SetStatistic(nEvent2,nType2,0,1)
			Task_SetStcTimestamp(nEvent2,nType2,0)
		end
		--是否开启过礼包
		if Task_ChkStcValue(nEvent2,nType2,">=",1) then
			LinkItemGossipFunc_New(nItemId,"1-1")
			return 
		end
		
		local nEvent1 = tIdAuthenticateAction_Stc[nItemId][1]["EventType"]
		local nType1 = tIdAuthenticateAction_Stc[nItemId][1]["DataType"]
		local nMaxData1= tIdAuthenticateAction_Stc[nItemId][1]["Data"]
		--是否开启过礼包
		if Task_ChkStcValue(nEvent1,nType1,">=",nMaxData1) then
			if Item_DelItem(nItemId) then
			end
			return 
		end
		
		local nTime = Get_UserStatisticValue(nEvent1,nType1)
		
		if nTime == nil or nTime == 0 then
			nTime = 0
		end
		--检测背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tIdAuthenticateAction_RewandItem[nItemId][nTime+1])
		if not(User_CheckLeftSpace(nSpace)) then
			--提示
			User_TalkChannel2005(string.format(tIdAuthenticateAction_Text["MsgSpace"],nSpace))
			return 
		end
		
		if Task_ChkStcValue(nEvent1,nType1,"==",6) then
			if Item_DelItem(nItemId) then
				nTime = nTime +1
				Task_AddStatistic(nEvent1,nType1,1,1)
				Task_SetStcTimestamp(nEvent1,nType1,0)
				
				Task_AddStatistic(nEvent2,nType2,1,1)
				Task_SetStcTimestamp(nEvent2,nType2,0)
				RewardTemplate_Reward(tIdAuthenticateAction_RewandItem[nItemId][nTime])
			end
		else
			nTime = nTime +1
			Task_AddStatistic(nEvent1,nType1,1,1)
			Task_SetStcTimestamp(nEvent1,nType1,0)
			
			Task_AddStatistic(nEvent2,nType2,1,1)
			Task_SetStcTimestamp(nEvent2,nType2,0)
			RewardTemplate_Reward(tIdAuthenticateAction_RewandItem[nItemId][nTime])
		end
		
	end
	
end


--------------------------------物品模板--------------------------------------
tItemFace[3309032] = 1523
tItemFace[3309033] = 1523
tItemFace[3309034] = 1523
tItemFace[3309035] = 1524
tItemFace[3309036] = 1524
tItemFace[3309037] = 1524
tItemFace[3309038] = 1525
tItemFace[3309039] = 1525
tItemFace[3309040] = 1525
tItemFace[3309041] = 1526
tItemFace[3309042] = 1526
tItemFace[3309043] = 1526
tItemFace[3309044] = 1527
tItemFace[3309045] = 1527
tItemFace[3309046] = 1527
tItemFace[3309047] = 1528
tItemFace[3309048] = 1528
tItemFace[3309049] = 1528
tItemFace[3309050] = 1529
tItemFace[3309051] = 1529
tItemFace[3309052] = 1529
tItemFace[3309053] = 1530
tItemFace[3309054] = 1530
tItemFace[3309055] = 1530
tItemFace[3309056] = 1531
tItemFace[3309057] = 1531
tItemFace[3309058] = 1531
tItemFace[3309059] = 1532
tItemFace[3309060] = 1533
tItemFace[3309061] = 1749
tItemFace[3309062] = 1750
tItemFace[3309604] = 1595
tItemFace[3309605] = 909
tItemFace[3309606] = 1596
tItemFace[3309607] = 1597


-- tItem[3309027] = tItem[3309027] or {}
-- tItem[3309027]["Function"] = function(nItemId,sItemName)
	-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- local nSpace = RewardTemplate_GetRandomSpace(tIdAuthenticateAction_RewandItem[nItemId],1) - 1
		-- if not(User_CheckLeftSpace(nSpace)) then
		-- -- 提示
			-- User_TalkChannel2005(string.format(tIdAuthenticateAction_Text["MsgSpace"],nSpace))
		-- return 
		-- end
		-- RewardTemplate_NewRandom(tIdAuthenticateAction_RewandItem[nItemId],1)
	-- end
-- end

-- for nItemId= 3309032,3309058 do
	-- IdAuthenticateAction_PackText(nItemId,1)
-- end

-- tItem[3309059] = tItem[3309059] or {}
-- tItem[3309059]["DialogueText"] =tIdAuthenticateAction_Text[3309059]
-- tItem[3309059]["Text1-1"] = {111,112,113}
-- tItem[3309059]["tOption1-1"] = {111,112}
-- tItem[3309059]["OptionFunc111"]="IdAuthenticateAction_UseItem</N>3309059"
-- tItem[3309059]["OptionPoint112"] = "2-4"

-- tItem[3309059]["Text2-1"] = {211}
-- tItem[3309059]["tOption2-1"] = {211,212}

-- tItem[3309059]["Text2-2"] = {221}
-- tItem[3309059]["tOption2-2"] = {221,222}
-- tItem[3309059]["OptionFunc221"]="IdAuthenticateAction_UpLevPack</N>3309059"

-- tItem[3309059]["Text2-3"] = {231}
-- tItem[3309059]["tOption2-3"] = {231,232}
-- tItem[3309059]["OptionFunc231"]="IdAuthenticateAction_UpAllLevPack</N>3309059"
-- tItem[3309059]["ChkFunc2-3"] = function ()
	-- local nItemNum = Get_CountItemType(3309059,0)
	-- local nEmoney = tIdAuthenticateAction_RewandItem[3309059][2]["EmoneyCost"] * nItemNum
	-- tItem[3309059]["Text231"] = string.format(tIdAuthenticateAction_Text[3309059]["Text231"],nEmoney)
	-- return true
-- end

-- tItem[3309059]["Text2-4"] = {241}
-- tItem[3309059]["tOption2-4"] = {241,242}
-- tItem[3309059]["OptionPoint241"] = "2-2"
-- tItem[3309059]["OptionPoint242"] = "2-3"

-- tItem[3309060] = tItem[3309060] or {}
-- tItem[3309060]["DialogueText"] =tIdAuthenticateAction_Text[3309060]
-- tItem[3309060]["Text1-1"] = {111,112,113}
-- tItem[3309060]["tOption1-1"] = {111,112}
-- tItem[3309060]["OptionFunc111"]="IdAuthenticateAction_UseItem</N>3309060"
-- tItem[3309060]["OptionPoint112"] = "2-4"

-- tItem[3309060]["Text2-1"] = {211}
-- tItem[3309060]["tOption2-1"] = {211,212}

-- tItem[3309060]["Text2-2"] = {221}
-- tItem[3309060]["tOption2-2"] = {221,222}
-- tItem[3309060]["OptionFunc221"]="IdAuthenticateAction_UpLevPack</N>3309060"

-- tItem[3309060]["Text2-3"] = {231}
-- tItem[3309060]["tOption2-3"] = {231,232}
-- tItem[3309060]["OptionFunc231"]="IdAuthenticateAction_UpAllLevPack</N>3309060"
-- tItem[3309060]["ChkFunc2-3"] = function ()
	-- local nItemNum = Get_CountItemType(3309060,0)
	-- local nEmoney = tIdAuthenticateAction_RewandItem[3309060][2]["EmoneyCost"] * nItemNum
	-- tItem[3309060]["Text231"] = string.format(tIdAuthenticateAction_Text[3309060]["Text231"],nEmoney)
	-- return true
-- end

-- tItem[3309060]["Text2-4"] = {241}
-- tItem[3309060]["tOption2-4"] = {241,242}
-- tItem[3309060]["OptionPoint241"] = "2-2"
-- tItem[3309060]["OptionPoint242"] = "2-3"

-- tItem[3309061] = tItem[3309061] or {}
-- tItem[3309061]["DialogueText"] =tIdAuthenticateAction_Text[3309061]
-- tItem[3309061]["Text1-1"] = {111,112,113}
-- tItem[3309061]["tOption1-1"] = {111,112}
-- tItem[3309061]["OptionFunc111"]="IdAuthenticateAction_UseItem</N>3309061"
-- tItem[3309061]["OptionPoint112"] = "2-4"

-- tItem[3309061]["Text2-1"] = {211}
-- tItem[3309061]["tOption2-1"] = {211,212}

-- tItem[3309061]["Text2-2"] = {221}
-- tItem[3309061]["tOption2-2"] = {221,222}
-- tItem[3309061]["OptionFunc221"]="IdAuthenticateAction_UpLevPack</N>3309061"

-- tItem[3309061]["Text2-3"] = {231}
-- tItem[3309061]["tOption2-3"] = {231,232}
-- tItem[3309061]["OptionFunc231"]="IdAuthenticateAction_UpAllLevPack</N>3309061"
-- tItem[3309061]["ChkFunc2-3"] = function ()
	-- local nItemNum = Get_CountItemType(3309061,0)
	-- local nEmoney = tIdAuthenticateAction_RewandItem[3309061][2]["EmoneyCost"] * nItemNum
	-- tItem[3309061]["Text231"] = string.format(tIdAuthenticateAction_Text[3309061]["Text231"],nEmoney)
	-- return true
-- end

-- tItem[3309061]["Text2-4"] = {241}
-- tItem[3309061]["tOption2-4"] = {241,242}
-- tItem[3309061]["OptionPoint241"] = "2-2"
-- tItem[3309061]["OptionPoint242"] = "2-3"

-- tItem[3309062] = tItem[3309062] or {}
-- tItem[3309062]["DialogueText"] =tIdAuthenticateAction_Text[3309062]
-- tItem[3309062]["Text1-1"] = {111,112,113}
-- tItem[3309062]["tOption1-1"] = {111,112}
-- tItem[3309062]["OptionFunc111"]="IdAuthenticateAction_UseItem</N>3309062"
-- tItem[3309062]["OptionPoint112"] = "2-4"

-- tItem[3309062]["Text2-1"] = {211}
-- tItem[3309062]["tOption2-1"] = {211,212}

-- tItem[3309062]["Text2-2"] = {221}
-- tItem[3309062]["tOption2-2"] = {221,222}
-- tItem[3309062]["OptionFunc221"]="IdAuthenticateAction_UpLevPack</N>3309062"

-- tItem[3309062]["Text2-3"] = {231}
-- tItem[3309062]["tOption2-3"] = {231,232}
-- tItem[3309062]["OptionFunc231"]="IdAuthenticateAction_UpAllLevPack</N>3309062"
-- tItem[3309062]["ChkFunc2-3"] = function ()
	-- local nItemNum = Get_CountItemType(3309062,0)
	-- local nEmoney = tIdAuthenticateAction_RewandItem[3309062][2]["EmoneyCost"] * nItemNum
	-- tItem[3309062]["Text231"] = string.format(tIdAuthenticateAction_Text[3309062]["Text231"],nEmoney)
	-- return true
-- end

-- tItem[3309062]["Text2-4"] = {241}
-- tItem[3309062]["tOption2-4"] = {241,242}
-- tItem[3309062]["OptionPoint241"] = "2-2"
-- tItem[3309062]["OptionPoint242"] = "2-3"

-- tItem[3309063] = tItem[3309063] or {}
-- tItem[3309063]["Function"] = function(nItemId,sItemName)
	-- IdAuthenticateAction_UseItem(nItemId)
-- end

-- tItem[3309028] = tItem[3309028] or {}
-- tItem[3309028]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId][1])
-- end
-- tItem[3309029] = tItem[3309028] or {}
-- tItem[3309030] = tItem[3309028] or {}
-- tItem[3309031] = tItem[3309028] or {}
tItem[3309617] = tItem[3309617] or {}
tItem[3309617]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId][1])
end


-- tItem[3309618] = tItem[3309028] or {}
-- tItem[3309619] = tItem[3309028] or {}
-- tItem[3309620] = tItem[3309028] or {}
-- tItem[3309621] = tItem[3309028] or {}
-- tItem[3309622] = tItem[3309028] or {}
-- tItem[3309623] = tItem[3309028] or {}
-- tItem[3309624] = tItem[3309028] or {}
-- tItem[3309625] = tItem[3309028] or {}
-- tItem[3309627] = tItem[3309028] or {}
-- -- 1%神佑 勇士传奇【联盟王者】
-- tItem[3310586] = tItem[3309028] or {}

-- -- 3310609,'S级账号鉴定礼包',0
-- -- 3310610,'SS级账号鉴定礼包',
-- -- 3310611,'SSS级账号鉴定礼包'
-- -- 3310612,'SSSS级账号鉴定礼包
-- tItem[3310609] = tItem[3310609] or {}
-- tItem[3310609]["Function"] = function(nItemId,sItemName)
	-- local nItemNum = Get_CountItemType(nItemId,0)
	-- if not Sys_ChkFullTime(tIdAuthenticateAction_Cont["ActTime"]) then
		-- if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			-- User_TalkChannel2005(tIdAuthenticateAction_Text["TimeOut"])
			-- Sys_SaveActionFestivalLog(string.format(tIdAuthenticateAction_Log["TimeOut"],nItemId))
		-- end
		-- return
	-- end
	-- RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId][1])
-- end
-- tItem[3310610] = tItem[3310609] or {}
-- tItem[3310611] = tItem[3310609] or {}
-- tItem[3310612] = tItem[3310609] or {}



-- tItem[3309065] = tItem[3309065] or {}
-- tItem[3309065]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItem(tIdAuthenticateAction_RewandItem[nItemId])
-- end
-- tItem[3309066] = tItem[3309065] or {}
-- tItem[3309067] = tItem[3309065] or {}
-- tItem[3309068] = tItem[3309065] or {}
-- tItem[3309626] = tItem[3309065] or {}


-- tItem[3309604] = tItem[3309604] or {}
-- tItem[3309604]["DialogueText"] =tIdAuthenticateAction_Text[3309604]
-- tItem[3309604]["Text1-1"] = {111,112}
-- tItem[3309604]["tOption1-1"] = {111}

-- tItem[3309604]["Function"] = function(nItemId,sItemName)
	-- IdAuthenticateAction_UseExceed(nItemId)
-- end

-- tItem[3309604]["Text1-2"] = {121,122}
-- tItem[3309604]["tOption1-2"] = {121,122}
-- tItem[3309604]["OptionFunc121"]="IdAuthenticateAction_UseSignInPack</N>3309604"

-- tItem[3309604]["Text1-3"] = {131}
-- tItem[3309604]["tOption1-3"] = {131,132}
-- tItem[3309604]["OptionFunc131"]="IdAuthenticateAction_UseSignInPack</N>3309604"

-- tItem[3309605] = tItem[3309605] or {}
-- tItem[3309605]["DialogueText"] =tIdAuthenticateAction_Text[3309604]
-- tItem[3309605]["Text1-1"] = {111,112}
-- tItem[3309605]["tOption1-1"] = {111}

-- tItem[3309605]["Function"] = function(nItemId,sItemName)
	-- IdAuthenticateAction_UseExceed(nItemId)
-- end

-- tItem[3309605]["Text1-2"] = {121,122}
-- tItem[3309605]["tOption1-2"] = {121,122}
-- tItem[3309605]["OptionFunc121"]="IdAuthenticateAction_UseSignInPack</N>3309605"

-- tItem[3309605]["Text1-3"] = {131}
-- tItem[3309605]["tOption1-3"] = {131,132}
-- tItem[3309605]["OptionFunc131"]="IdAuthenticateAction_UseSignInPack</N>3309605"

-- tItem[3309606] = tItem[3309606] or {}
-- tItem[3309606]["DialogueText"] =tIdAuthenticateAction_Text[3309604]
-- tItem[3309606]["Text1-1"] = {111,112}
-- tItem[3309606]["tOption1-1"] = {111}

-- tItem[3309606]["Function"] = function(nItemId,sItemName)
	-- IdAuthenticateAction_UseExceed(nItemId)
-- end

-- tItem[3309606]["Text1-2"] = {121,122}
-- tItem[3309606]["tOption1-2"] = {121,122}
-- tItem[3309606]["OptionFunc121"]="IdAuthenticateAction_UseSignInPack</N>3309606"

-- tItem[3309606]["Text1-3"] = {131}
-- tItem[3309606]["tOption1-3"] = {131,132}
-- tItem[3309606]["OptionFunc131"]="IdAuthenticateAction_UseSignInPack</N>3309606"

-- tItem[3309607] = tItem[3309607] or {}
-- tItem[3309607]["DialogueText"] =tIdAuthenticateAction_Text[3309604]
-- tItem[3309607]["Text1-1"] = {111,112}
-- tItem[3309607]["tOption1-1"] = {111}

-- tItem[3309607]["Function"] = function(nItemId,sItemName)
	-- IdAuthenticateAction_UseExceed(nItemId)
-- end

-- tItem[3309607]["Text1-2"] = {121,122}
-- tItem[3309607]["tOption1-2"] = {121,122}
-- tItem[3309607]["OptionFunc121"]="IdAuthenticateAction_UseSignInPack</N>3309607"

-- tItem[3309607]["Text1-3"] = {131}
-- tItem[3309607]["tOption1-3"] = {131,132}
-- tItem[3309607]["OptionFunc131"]="IdAuthenticateAction_UseSignInPack</N>3309607"