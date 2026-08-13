------------------------------------------------------------------------------------
--Name:		200331[英文征服][活动脚本]60天签到礼包
--Purpose:	
--Creator: 	杨志翔
--Created:	
------------------------------------------------------------------------------------
--41785
--前缀Signin60P
--stc
--logid 12001937
--emoneylog 1000 01727
local tSignin60P_Cont = {}
tSignin60P_Cont["Stc"] = {}
tSignin60P_Cont["Stc"]["Event"] = 218
tSignin60P_Cont["Stc"]["Data"] = 34
tSignin60P_Cont["Stc"]["LoginEvent"] = 218
tSignin60P_Cont["Stc"]["LoginData"] = 40
tSignin60P_Cont["ActTime"] = tActivityTime["Signin60P"]["ActivityTime"]
tSignin60P_Cont["Flower"] = 21
tSignin60P_Cont["Item"] = 3330499
tSignin60P_Cont["Warm"] = 3330501
tSignin60P_Cont["Ticket"] = 3330500
tSignin60P_Cont["Web"] = "https://www.facebook.com/ConquerOnline/"

local tSignin60P_LoginReward = {}
tSignin60P_LoginReward[1] = {}
tSignin60P_LoginReward[1]["LogId"] = 12001937
tSignin60P_LoginReward[1]["RewardItem"] = {}
tSignin60P_LoginReward[1]["RewardItem"][1] = {}
tSignin60P_LoginReward[1]["RewardItem"][1]["Id"] = 3330499 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】3009000
tSignin60P_LoginReward[1]["RewardItem"][1]["Attr"] = "0 1" -- 2天时效(激活)的TwilightStarStone*5
tSignin60P_LoginReward[1]["RewardEffect"] = {}
tSignin60P_LoginReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSignin60P_LoginReward[1]["RewardEffect"]["Effect"] = "angelwing"

local tSignin60P_SignReward = {}
	-- ===第一天
	-- ===索引:tSignin60P_SignReward[1]
	-- ===
	tSignin60P_SignReward[1] = {}
	tSignin60P_SignReward[1]["LogId"] = 12001937
	tSignin60P_SignReward[1]["RewardItem"] = {}
	tSignin60P_SignReward[1]["RewardItem"][1] = {}
	tSignin60P_SignReward[1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】3009000
	tSignin60P_SignReward[1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tSignin60P_SignReward[1]["RewardEffect"] = {}
	tSignin60P_SignReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[2] = {}
	-- ===第2天
	-- ===索引:tSignin60P_SignReward[2]
	-- ===
	tSignin60P_SignReward[2]["LogId"] = 12001937
	tSignin60P_SignReward[2]["RewardItem"] = {}
	tSignin60P_SignReward[2]["RewardItem"][1] = {}
	tSignin60P_SignReward[2]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[2]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneFragment（赠）*1
	tSignin60P_SignReward[2]["RewardEffect"] = {}
	tSignin60P_SignReward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[3] = {}
	-- ===第3天
	-- ===索引:tSignin60P_SignReward[3]
	-- ===
	tSignin60P_SignReward[3]["LogId"] = 12001937
	tSignin60P_SignReward[3]["RewardItem"] = {}
	tSignin60P_SignReward[3]["RewardItem"][1] = {}
	tSignin60P_SignReward[3]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】730002
	tSignin60P_SignReward[3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +2Stone（赠）*1
	tSignin60P_SignReward[3]["RewardEffect"] = {}
	tSignin60P_SignReward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[4] = {}
	-- ===第4天
	-- ===索引:tSignin60P_SignReward[4]
	-- ===
	tSignin60P_SignReward[4]["LogId"] = 12001937
	tSignin60P_SignReward[4]["RewardStrengthValue"] = {}
	tSignin60P_SignReward[4]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tSignin60P_SignReward[4]["RewardEffect"] = {}
	tSignin60P_SignReward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[4]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[5] = {}
	-- ===第5天
	-- ===索引:tSignin60P_SignReward[5]
	-- ===
	tSignin60P_SignReward[5]["LogId"] = 12001937
	tSignin60P_SignReward[5]["RewardItem"] = {}
	tSignin60P_SignReward[5]["RewardItem"][1] = {}
	tSignin60P_SignReward[5]["RewardItem"][1]["Id"] = 3326948 -- Level1CPTreasureBowl[3326948][属性:9][叠加:10000][金币:0], 【表格】3326948
	tSignin60P_SignReward[5]["RewardItem"][1]["Attr"] = "0 1" -- Level1CPTreasureBowl*1
	tSignin60P_SignReward[5]["RewardEffect"] = {}
	tSignin60P_SignReward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[5]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[6] = {}
	-- ===第6天
	-- ===索引:tSignin60P_SignReward[6]
	-- ===
	tSignin60P_SignReward[6]["LogId"] = 12001937
	tSignin60P_SignReward[6]["RewardItem"] = {}
	tSignin60P_SignReward[6]["RewardItem"][1] = {}
	tSignin60P_SignReward[6]["RewardItem"][1]["Id"] = 3330503 --  3330503 【库里没有该物品】, 【表格】3330503
	tSignin60P_SignReward[6]["RewardItem"][1]["Attr"] = "0 1" --  3330503 【库里没有该物品】*1
	tSignin60P_SignReward[6]["RewardEffect"] = {}
	tSignin60P_SignReward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[6]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[7] = {}
	-- ===第7天
	-- ===索引:tSignin60P_SignReward[7]
	-- ===
	tSignin60P_SignReward[7]["LogId"] = 12001937
	tSignin60P_SignReward[7]["RewardItem"] = {}
	tSignin60P_SignReward[7]["RewardItem"][1] = {}
	tSignin60P_SignReward[7]["RewardItem"][1]["Id"] = 3330500 --  3330500 【库里没有该物品】, 【表格】3330500
	tSignin60P_SignReward[7]["RewardItem"][1]["Attr"] = "0 1" --  3330500 【库里没有该物品】*1
	tSignin60P_SignReward[7]["RewardEffect"] = {}
	tSignin60P_SignReward[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[7]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[8] = {}
	-- ===第8天
	-- ===索引:tSignin60P_SignReward[8]
	-- ===
	tSignin60P_SignReward[8]["LogId"] = 12001937
	tSignin60P_SignReward[8]["RewardItem"] = {}
	tSignin60P_SignReward[8]["RewardItem"][1] = {}
	tSignin60P_SignReward[8]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSignin60P_SignReward[8]["RewardEffect"] = {}
	tSignin60P_SignReward[8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[8]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[9] = {}
	-- ===第9天
	-- ===索引:tSignin60P_SignReward[9]
	-- ===
	tSignin60P_SignReward[9]["LogId"] = 12001937
	tSignin60P_SignReward[9]["RewardItem"] = {}
	tSignin60P_SignReward[9]["RewardItem"][1] = {}
	tSignin60P_SignReward[9]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[9]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneFragment（赠）*1
	tSignin60P_SignReward[9]["RewardEffect"] = {}
	tSignin60P_SignReward[9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[9]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[10] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[10]
	-- ===
	tSignin60P_SignReward[10]["LogId"] = 12001937
	tSignin60P_SignReward[10]["RewardItem"] = {}
	tSignin60P_SignReward[10]["RewardItem"][1] = {}
	tSignin60P_SignReward[10]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】730002
	tSignin60P_SignReward[10]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- +2Stone（赠）*2
	tSignin60P_SignReward[10]["RewardEffect"] = {}
	tSignin60P_SignReward[10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[10]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[11] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[11]
	-- ===
	tSignin60P_SignReward[11]["LogId"] = 12001937
	tSignin60P_SignReward[11]["RewardCultivation"] = {}
	tSignin60P_SignReward[11]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】修行值
	tSignin60P_SignReward[11]["RewardEffect"] = {}
	tSignin60P_SignReward[11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[11]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[12] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[12]
	-- ===
	tSignin60P_SignReward[12]["LogId"] = 12001937
	tSignin60P_SignReward[12]["RewardItem"] = {}
	tSignin60P_SignReward[12]["RewardItem"][1] = {}
	tSignin60P_SignReward[12]["RewardItem"][1]["Id"] = 3330502 --  3330502 【库里没有该物品】, 【表格】3330502
	tSignin60P_SignReward[12]["RewardItem"][1]["Attr"] = "0 1" --  3330502 【库里没有该物品】*1
	tSignin60P_SignReward[12]["RewardEffect"] = {}
	tSignin60P_SignReward[12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[12]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[13] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[13]
	-- ===
	tSignin60P_SignReward[13]["LogId"] = 12001937
	tSignin60P_SignReward[13]["RewardItem"] = {}
	tSignin60P_SignReward[13]["RewardItem"][1] = {}
	tSignin60P_SignReward[13]["RewardItem"][1]["Id"] = 3330504 --  3330504 【库里没有该物品】, 【表格】3330504
	tSignin60P_SignReward[13]["RewardItem"][1]["Attr"] = "0 1" --  3330504 【库里没有该物品】*1
	tSignin60P_SignReward[13]["RewardEffect"] = {}
	tSignin60P_SignReward[13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[13]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[14] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[14]
	-- ===
	tSignin60P_SignReward[14]["LogId"] = 12001937
	tSignin60P_SignReward[14]["RewardItem"] = {}
	tSignin60P_SignReward[14]["RewardItem"][1] = {}
	tSignin60P_SignReward[14]["RewardItem"][1]["Id"] = 3330501 --  3330501 【库里没有该物品】, 【表格】3330501
	tSignin60P_SignReward[14]["RewardItem"][1]["Attr"] = "0 1" --  3330501 【库里没有该物品】*1
	tSignin60P_SignReward[14]["RewardEffect"] = {}
	tSignin60P_SignReward[14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[14]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[15] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[15]
	-- ===
	tSignin60P_SignReward[15]["LogId"] = 12001937
	tSignin60P_SignReward[15]["RewardItem"] = {}
	tSignin60P_SignReward[15]["RewardItem"][1] = {}
	tSignin60P_SignReward[15]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[15]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSignin60P_SignReward[15]["RewardEffect"] = {}
	tSignin60P_SignReward[15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[15]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[16] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[16]
	-- ===
	tSignin60P_SignReward[16]["LogId"] = 12001937
	tSignin60P_SignReward[16]["RewardItem"] = {}
	tSignin60P_SignReward[16]["RewardItem"][1] = {}
	tSignin60P_SignReward[16]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[16]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneFragment（赠）*1
	tSignin60P_SignReward[16]["RewardEffect"] = {}
	tSignin60P_SignReward[16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[16]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[17] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[17]
	-- ===
	tSignin60P_SignReward[17]["LogId"] = 12001937
	tSignin60P_SignReward[17]["RewardItem"] = {}
	tSignin60P_SignReward[17]["RewardItem"][1] = {}
	tSignin60P_SignReward[17]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】730003
	tSignin60P_SignReward[17]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +3Stone（赠）*1
	tSignin60P_SignReward[17]["RewardEffect"] = {}
	tSignin60P_SignReward[17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[17]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[18] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[18]
	-- ===
	tSignin60P_SignReward[18]["LogId"] = 12001937
	tSignin60P_SignReward[18]["RewardRepairValue"] = {}
	tSignin60P_SignReward[18]["RewardRepairValue"]["Value"] = 800 -- 修为值, 【需求】800修为值
	tSignin60P_SignReward[18]["RewardEffect"] = {}
	tSignin60P_SignReward[18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[18]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[19] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[19]
	-- ===
	tSignin60P_SignReward[19]["LogId"] = 12001937
	tSignin60P_SignReward[19]["RewardItem"] = {}
	tSignin60P_SignReward[19]["RewardItem"][1] = {}
	tSignin60P_SignReward[19]["RewardItem"][1]["Id"] = 3326948 -- Level1CPTreasureBowl[3326948][属性:9][叠加:10000][金币:0], 【表格】3326948
	tSignin60P_SignReward[19]["RewardItem"][1]["Attr"] = "0 1" -- Level1CPTreasureBowl*1
	tSignin60P_SignReward[19]["RewardEffect"] = {}
	tSignin60P_SignReward[19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[19]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[20] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[20]
	-- ===
	tSignin60P_SignReward[20]["LogId"] = 12001937
	tSignin60P_SignReward[20]["RewardItem"] = {}
	tSignin60P_SignReward[20]["RewardItem"][1] = {}
	tSignin60P_SignReward[20]["RewardItem"][1]["Id"] = 3330505 --  3330505 【库里没有该物品】, 【表格】3330505
	tSignin60P_SignReward[20]["RewardItem"][1]["Attr"] = "0 1" --  3330505 【库里没有该物品】*1
	tSignin60P_SignReward[20]["RewardEffect"] = {}
	tSignin60P_SignReward[20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[20]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[21] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[21][1]
	-- ===
	tSignin60P_SignReward[21][1] = {}
	tSignin60P_SignReward[21][1]["LogId"] = 12001937
	tSignin60P_SignReward[21][1]["RewardItem"] = {}
	tSignin60P_SignReward[21][1]["RewardItem"][1] = {}
	tSignin60P_SignReward[21][1]["RewardItem"][1]["Id"] = 754099 -- 99Tulips[754099][属性:8][叠加:0][金币:0], 【表格】754099
	tSignin60P_SignReward[21][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 99Tulips（赠）*1
	tSignin60P_SignReward[21][1]["RewardEffect"] = {}
	tSignin60P_SignReward[21][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[21][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[21][2] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[21][2]
	-- ===
	tSignin60P_SignReward[21][2]["LogId"] = 12001937
	tSignin60P_SignReward[21][2]["RewardItem"] = {}
	tSignin60P_SignReward[21][2]["RewardItem"][1] = {}
	tSignin60P_SignReward[21][2]["RewardItem"][1]["Id"] = 755099 -- 99Kisses[755099][属性:8][叠加:0][金币:0], 【表格】755099
	tSignin60P_SignReward[21][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 99Kisses（赠）*1
	tSignin60P_SignReward[21][2]["RewardEffect"] = {}
	tSignin60P_SignReward[21][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[21][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[22] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[22]
	-- ===
	tSignin60P_SignReward[22]["LogId"] = 12001937
	tSignin60P_SignReward[22]["RewardItem"] = {}
	tSignin60P_SignReward[22]["RewardItem"][1] = {}
	tSignin60P_SignReward[22]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[22]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSignin60P_SignReward[22]["RewardEffect"] = {}
	tSignin60P_SignReward[22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[22]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[23] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[23]
	-- ===
	tSignin60P_SignReward[23]["LogId"] = 12001937
	tSignin60P_SignReward[23]["RewardItem"] = {}
	tSignin60P_SignReward[23]["RewardItem"][1] = {}
	tSignin60P_SignReward[23]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[23]["RewardItem"][1]["Attr"] = "0 2 3" -- YellowRuneFragment（赠）*2
	tSignin60P_SignReward[23]["RewardEffect"] = {}
	tSignin60P_SignReward[23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[23]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[24] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[24]
	-- ===
	tSignin60P_SignReward[24]["LogId"] = 12001937
	tSignin60P_SignReward[24]["RewardItem"] = {}
	tSignin60P_SignReward[24]["RewardItem"][1] = {}
	tSignin60P_SignReward[24]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】730003
	tSignin60P_SignReward[24]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +3Stone（赠）*1
	tSignin60P_SignReward[24]["RewardEffect"] = {}
	tSignin60P_SignReward[24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[24]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[25] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[25]
	-- ===
	tSignin60P_SignReward[25]["LogId"] = 12001937
	tSignin60P_SignReward[25]["RewardStrengthValue"] = {}
	tSignin60P_SignReward[25]["RewardStrengthValue"]["Value"] = 1200 -- 气力值, 【需求】气力值
	tSignin60P_SignReward[25]["RewardEffect"] = {}
	tSignin60P_SignReward[25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[25]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[26] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[26]
	-- ===
	tSignin60P_SignReward[26]["LogId"] = 12001937
	tSignin60P_SignReward[26]["RewardItem"] = {}
	tSignin60P_SignReward[26]["RewardItem"][1] = {}
	tSignin60P_SignReward[26]["RewardItem"][1]["Id"] = 3330502 --  3330502 【库里没有该物品】, 【表格】3330502
	tSignin60P_SignReward[26]["RewardItem"][1]["Attr"] = "0 1" --  3330502 【库里没有该物品】*1
	tSignin60P_SignReward[26]["RewardEffect"] = {}
	tSignin60P_SignReward[26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[26]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[27] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[27]
	-- ===
	tSignin60P_SignReward[27]["LogId"] = 12001937
	tSignin60P_SignReward[27]["RewardItem"] = {}
	tSignin60P_SignReward[27]["RewardItem"][1] = {}
	tSignin60P_SignReward[27]["RewardItem"][1]["Id"] = 3330506 --  3330506 【库里没有该物品】, 【表格】3330506
	tSignin60P_SignReward[27]["RewardItem"][1]["Attr"] = "0 1" --  3330506 【库里没有该物品】*1
	tSignin60P_SignReward[27]["RewardEffect"] = {}
	tSignin60P_SignReward[27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[27]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[28] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[28]
	-- ===
	tSignin60P_SignReward[28]["LogId"] = 12001937
	tSignin60P_SignReward[28]["RewardItem"] = {}
	tSignin60P_SignReward[28]["RewardItem"][1] = {}
	tSignin60P_SignReward[28]["RewardItem"][1]["Id"] = 3330500 --  3330500 【库里没有该物品】, 【表格】3330500
	tSignin60P_SignReward[28]["RewardItem"][1]["Attr"] = "0 1" --  3330500 【库里没有该物品】*1
	tSignin60P_SignReward[28]["RewardEffect"] = {}
	tSignin60P_SignReward[28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[28]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[29] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[29]
	-- ===
	tSignin60P_SignReward[29]["LogId"] = 12001937
	tSignin60P_SignReward[29]["RewardItem"] = {}
	tSignin60P_SignReward[29]["RewardItem"][1] = {}
	tSignin60P_SignReward[29]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[29]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSignin60P_SignReward[29]["RewardEffect"] = {}
	tSignin60P_SignReward[29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[29]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[30] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[30]
	-- ===
	tSignin60P_SignReward[30]["LogId"] = 12001937
	tSignin60P_SignReward[30]["RewardItem"] = {}
	tSignin60P_SignReward[30]["RewardItem"][1] = {}
	tSignin60P_SignReward[30]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[30]["RewardItem"][1]["Attr"] = "0 2 3" -- YellowRuneFragment（赠）*2
	tSignin60P_SignReward[30]["RewardEffect"] = {}
	tSignin60P_SignReward[30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[30]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[31] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[31]
	-- ===
	tSignin60P_SignReward[31]["LogId"] = 12001937
	tSignin60P_SignReward[31]["RewardItem"] = {}
	tSignin60P_SignReward[31]["RewardItem"][1] = {}
	tSignin60P_SignReward[31]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】730003
	tSignin60P_SignReward[31]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +3Stone（赠）*1
	tSignin60P_SignReward[31]["RewardEffect"] = {}
	tSignin60P_SignReward[31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[31]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[32] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[32]
	-- ===
	tSignin60P_SignReward[32]["LogId"] = 12001937
	tSignin60P_SignReward[32]["RewardRepairValue"] = {}
	tSignin60P_SignReward[32]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tSignin60P_SignReward[32]["RewardEffect"] = {}
	tSignin60P_SignReward[32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[32]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[33] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[33]
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_SignReward[33]["LogId"] = 12001937
	tSignin60P_SignReward[33]["RewardEMoneyMono"] = {}
	tSignin60P_SignReward[33]["RewardEMoneyMono"]["Value"] = 150 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_SignReward[33]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_SignReward[33]["RewardEffect"] = {}
	tSignin60P_SignReward[33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[33]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[34] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[34]
	-- ===
	-- ===
	tSignin60P_SignReward[34]["LogId"] = 12001937
	tSignin60P_SignReward[34]["RewardTitle"] = {}
	tSignin60P_SignReward[34]["RewardTitle"]["TitleType"] = 2134 -- 【库】Tycoon, 【表格】称号
	tSignin60P_SignReward[34]["RewardTitle"]["TitleId"] = 2134
	tSignin60P_SignReward[34]["RewardTitle"]["SaveTime"] = 21600 -- 15天时效的[称号]:Tycoon, 【需求】称号
	tSignin60P_SignReward[34]["RewardEffect"] = {}
	tSignin60P_SignReward[34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[34]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[35] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[35]
	-- ===
	-- ===
	tSignin60P_SignReward[35]["LogId"] = 12001937
	tSignin60P_SignReward[35]["RewardItem"] = {}
	tSignin60P_SignReward[35]["RewardItem"][1] = {}
	tSignin60P_SignReward[35]["RewardItem"][1]["Id"] = 3330501 --  3330501 【库里没有该物品】, 【表格】3330501
	tSignin60P_SignReward[35]["RewardItem"][1]["Attr"] = "0 1" --  3330501 【库里没有该物品】*1
	tSignin60P_SignReward[35]["RewardEffect"] = {}
	tSignin60P_SignReward[35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[35]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[36] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[36]
	-- ===
	-- ===
	tSignin60P_SignReward[36]["LogId"] = 12001937
	tSignin60P_SignReward[36]["RewardItem"] = {}
	tSignin60P_SignReward[36]["RewardItem"][1] = {}
	tSignin60P_SignReward[36]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[36]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSignin60P_SignReward[36]["RewardEffect"] = {}
	tSignin60P_SignReward[36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[36]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[37] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[37]
	-- ===
	-- ===
	tSignin60P_SignReward[37]["LogId"] = 12001937
	tSignin60P_SignReward[37]["RewardItem"] = {}
	tSignin60P_SignReward[37]["RewardItem"][1] = {}
	tSignin60P_SignReward[37]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[37]["RewardItem"][1]["Attr"] = "0 2 3" -- YellowRuneFragment（赠）*2
	tSignin60P_SignReward[37]["RewardEffect"] = {}
	tSignin60P_SignReward[37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[37]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[38] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[38]
	-- ===
	-- ===
	tSignin60P_SignReward[38]["LogId"] = 12001937
	tSignin60P_SignReward[38]["RewardItem"] = {}
	tSignin60P_SignReward[38]["RewardItem"][1] = {}
	tSignin60P_SignReward[38]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】730003
	tSignin60P_SignReward[38]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +3Stone（赠）*1
	tSignin60P_SignReward[38]["RewardEffect"] = {}
	tSignin60P_SignReward[38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[38]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[39] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[39]
	-- ===
	-- ===
	tSignin60P_SignReward[39]["LogId"] = 12001937
	tSignin60P_SignReward[39]["RewardCultivation"] = {}
	tSignin60P_SignReward[39]["RewardCultivation"]["Value"] = 1200 -- 修行值, 【需求】1200修行值
	tSignin60P_SignReward[39]["RewardEffect"] = {}
	tSignin60P_SignReward[39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[39]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[40] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[40]
	-- ===
	-- ===
	tSignin60P_SignReward[40]["LogId"] = 12001937
	tSignin60P_SignReward[40]["RewardItem"] = {}
	tSignin60P_SignReward[40]["RewardItem"][1] = {}
	tSignin60P_SignReward[40]["RewardItem"][1]["Id"] = 3330502 --  3330502 【库里没有该物品】, 【表格】3330502
	tSignin60P_SignReward[40]["RewardItem"][1]["Attr"] = "0 1" --  3330502 【库里没有该物品】*1
	tSignin60P_SignReward[40]["RewardEffect"] = {}
	tSignin60P_SignReward[40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[40]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[41] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[41]
	-- ===
	-- ===
	tSignin60P_SignReward[41]["LogId"] = 12001937
	tSignin60P_SignReward[41]["RewardWing"] = {}
	tSignin60P_SignReward[41]["RewardWing"]["TitleType"] = 6032 -- 
	tSignin60P_SignReward[41]["RewardWing"]["TitleId"] = 6032
	tSignin60P_SignReward[41]["RewardWing"]["SaveTime"] = 10080 -- 
	tSignin60P_SignReward[41]["RewardEffect"] = {}
	tSignin60P_SignReward[41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[41]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[42] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[42]
	-- ===
	-- ===
	tSignin60P_SignReward[42]["LogId"] = 12001937
	tSignin60P_SignReward[42]["RewardItem"] = {}
	tSignin60P_SignReward[42]["RewardItem"][1] = {}
	tSignin60P_SignReward[42]["RewardItem"][1]["Id"] = 3330500 --  3330500 【库里没有该物品】, 【表格】3330500
	tSignin60P_SignReward[42]["RewardItem"][1]["Attr"] = "0 1" --  3330500 【库里没有该物品】*1
	tSignin60P_SignReward[42]["RewardEffect"] = {}
	tSignin60P_SignReward[42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[42]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[43] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[43]
	-- ===
	-- ===
	tSignin60P_SignReward[43]["LogId"] = 12001937
	tSignin60P_SignReward[43]["RewardItem"] = {}
	tSignin60P_SignReward[43]["RewardItem"][1] = {}
	tSignin60P_SignReward[43]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[43]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSignin60P_SignReward[43]["RewardEffect"] = {}
	tSignin60P_SignReward[43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[43]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[44] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[44]
	-- ===
	-- ===
	tSignin60P_SignReward[44]["LogId"] = 12001937
	tSignin60P_SignReward[44]["RewardItem"] = {}
	tSignin60P_SignReward[44]["RewardItem"][1] = {}
	tSignin60P_SignReward[44]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[44]["RewardItem"][1]["Attr"] = "0 3 3" -- YellowRuneFragment（赠）*3
	tSignin60P_SignReward[44]["RewardEffect"] = {}
	tSignin60P_SignReward[44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[44]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[45] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[45]
	-- ===
	-- ===
	tSignin60P_SignReward[45]["LogId"] = 12001937
	tSignin60P_SignReward[45]["RewardItem"] = {}
	tSignin60P_SignReward[45]["RewardItem"][1] = {}
	tSignin60P_SignReward[45]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赠+3赤炼石*1
	tSignin60P_SignReward[45]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +3Stone（赠）*1
	tSignin60P_SignReward[45]["RewardEffect"] = {}
	tSignin60P_SignReward[45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[45]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[46] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[46]
	-- ===
	-- ===
	tSignin60P_SignReward[46]["LogId"] = 12001937
	tSignin60P_SignReward[46]["RewardStrengthValue"] = {}
	tSignin60P_SignReward[46]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tSignin60P_SignReward[46]["RewardEffect"] = {}
	tSignin60P_SignReward[46]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[46]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[47] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[47]
	-- ===
	-- ===
	tSignin60P_SignReward[47]["LogId"] = 12001937
	tSignin60P_SignReward[47]["RewardItem"] = {}
	tSignin60P_SignReward[47]["RewardItem"][1] = {}
	tSignin60P_SignReward[47]["RewardItem"][1]["Id"] = 3326948 -- Level1CPTreasureBowl[3326948][属性:9][叠加:10000][金币:0], 【表格】赠点聚宝盆*2
	tSignin60P_SignReward[47]["RewardItem"][1]["Attr"] = "0 2" -- Level1CPTreasureBowl*2
	tSignin60P_SignReward[47]["RewardEffect"] = {}
	tSignin60P_SignReward[47]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[47]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[48] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[48]
	-- ===
	-- ===
	tSignin60P_SignReward[48]["LogId"] = 12001937
	tSignin60P_SignReward[48]["RewardItem"] = {}
	tSignin60P_SignReward[48]["RewardItem"][1] = {}
	tSignin60P_SignReward[48]["RewardItem"][1]["Id"] = 3330508 --  3330508 【库里没有该物品】, 【表格】3330508
	tSignin60P_SignReward[48]["RewardItem"][1]["Attr"] = "0 1" --  3330508 【库里没有该物品】*1
	tSignin60P_SignReward[48]["RewardEffect"] = {}
	tSignin60P_SignReward[48]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[48]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[49] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[49]
	-- ===
	-- ===
	tSignin60P_SignReward[49]["LogId"] = 12001937
	tSignin60P_SignReward[49]["RewardItem"] = {}
	tSignin60P_SignReward[49]["RewardItem"][1] = {}
	tSignin60P_SignReward[49]["RewardItem"][1]["Id"] = 3330500 --  3330500 【库里没有该物品】, 【表格】3330500
	tSignin60P_SignReward[49]["RewardItem"][1]["Attr"] = "0 1" --  3330500 【库里没有该物品】*1
	tSignin60P_SignReward[49]["RewardEffect"] = {}
	tSignin60P_SignReward[49]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[49]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[50] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[50]
	-- ===
	-- ===
	tSignin60P_SignReward[50]["LogId"] = 12001937
	tSignin60P_SignReward[50]["RewardItem"] = {}
	tSignin60P_SignReward[50]["RewardItem"][1] = {}
	tSignin60P_SignReward[50]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】3009001
	tSignin60P_SignReward[50]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tSignin60P_SignReward[50]["RewardEffect"] = {}
	tSignin60P_SignReward[50]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[50]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[51] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[51]
	-- ===
	-- ===
	tSignin60P_SignReward[51]["LogId"] = 12001937
	tSignin60P_SignReward[51]["RewardItem"] = {}
	tSignin60P_SignReward[51]["RewardItem"][1] = {}
	tSignin60P_SignReward[51]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[51]["RewardItem"][1]["Attr"] = "0 3 3" -- YellowRuneFragment（赠）*3
	tSignin60P_SignReward[51]["RewardEffect"] = {}
	tSignin60P_SignReward[51]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[51]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[52] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[52]
	-- ===
	-- ===
	tSignin60P_SignReward[52]["LogId"] = 12001937
	tSignin60P_SignReward[52]["RewardItem"] = {}
	tSignin60P_SignReward[52]["RewardItem"][1] = {}
	tSignin60P_SignReward[52]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】730004
	tSignin60P_SignReward[52]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +4Stone（赠）*1
	tSignin60P_SignReward[52]["RewardEffect"] = {}
	tSignin60P_SignReward[52]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[52]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[53] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[53]
	-- ===
	-- ===
	tSignin60P_SignReward[53]["LogId"] = 12001937
	tSignin60P_SignReward[53]["RewardRepairValue"] = {}
	tSignin60P_SignReward[53]["RewardRepairValue"]["Value"] = 1500 -- 修为值, 【需求】1500修为值
	tSignin60P_SignReward[53]["RewardEffect"] = {}
	tSignin60P_SignReward[53]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[53]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[54] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[54]
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_SignReward[54]["LogId"] = 12001937
	tSignin60P_SignReward[54]["RewardEMoneyMono"] = {}
	tSignin60P_SignReward[54]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300赠品天石
	tSignin60P_SignReward[54]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_SignReward[54]["RewardEffect"] = {}
	tSignin60P_SignReward[54]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[54]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[55] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[55]
	-- ===
	-- ===
	tSignin60P_SignReward[55]["LogId"] = 12001937
	tSignin60P_SignReward[55]["RewardItem"] = {}
	tSignin60P_SignReward[55]["RewardItem"][1] = {}
	tSignin60P_SignReward[55]["RewardItem"][1]["Id"] = 3330507 --  3330507 【库里没有该物品】, 【表格】3330507
	tSignin60P_SignReward[55]["RewardItem"][1]["Attr"] = "0 1" --  3330507 【库里没有该物品】*1
	tSignin60P_SignReward[55]["RewardEffect"] = {}
	tSignin60P_SignReward[55]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[55]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[56] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[56]
	-- ===
	-- ===
	tSignin60P_SignReward[56]["LogId"] = 12001937
	tSignin60P_SignReward[56]["RewardItem"] = {}
	tSignin60P_SignReward[56]["RewardItem"][1] = {}
	tSignin60P_SignReward[56]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】3001044
	tSignin60P_SignReward[56]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tSignin60P_SignReward[56]["RewardEffect"] = {}
	tSignin60P_SignReward[56]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[56]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[57] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[57]
	-- ===
	-- ===
	tSignin60P_SignReward[57]["LogId"] = 12001937
	tSignin60P_SignReward[57]["RewardItem"] = {}
	tSignin60P_SignReward[57]["RewardItem"][1] = {}
	tSignin60P_SignReward[57]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】3009002
	tSignin60P_SignReward[57]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tSignin60P_SignReward[57]["RewardEffect"] = {}
	tSignin60P_SignReward[57]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[57]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[58] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[58]
	-- ===
	-- ===
	tSignin60P_SignReward[58]["LogId"] = 12001937
	tSignin60P_SignReward[58]["RewardItem"] = {}
	tSignin60P_SignReward[58]["RewardItem"][1] = {}
	tSignin60P_SignReward[58]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】3314253
	tSignin60P_SignReward[58]["RewardItem"][1]["Attr"] = "0 5 3" -- YellowRuneFragment（赠）*5
	tSignin60P_SignReward[58]["RewardEffect"] = {}
	tSignin60P_SignReward[58]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[58]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[59] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[59]
	-- ===
	-- ===
	tSignin60P_SignReward[59]["LogId"] = 12001937
	tSignin60P_SignReward[59]["RewardItem"] = {}
	tSignin60P_SignReward[59]["RewardItem"][1] = {}
	tSignin60P_SignReward[59]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】730005
	tSignin60P_SignReward[59]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +5Stone（赠）*1
	tSignin60P_SignReward[59]["RewardEffect"] = {}
	tSignin60P_SignReward[59]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[59]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_SignReward[60] = {}
	-- ===
	-- ===索引:tSignin60P_SignReward[60]
	-- ===删除:3330499,1
	-- ===
	-- ===
	tSignin60P_SignReward[60]["LogId"] = 12001937
	tSignin60P_SignReward[60]["DeleteItem"] = {}
	tSignin60P_SignReward[60]["DeleteItem"][1] = {}
	tSignin60P_SignReward[60]["DeleteItem"][1]["Id"] = 3330499 -- 【库】 3330499 【库里没有该物品】[属性:]
	tSignin60P_SignReward[60]["RewardItem"] = {}
	tSignin60P_SignReward[60]["RewardItem"][1] = {}
	tSignin60P_SignReward[60]["RewardItem"][1]["Id"] = 3330501 --  3330501 【库里没有该物品】, 【表格】3330501
	tSignin60P_SignReward[60]["RewardItem"][1]["Attr"] = "0 2" --  3330501 【库里没有该物品】*2
	tSignin60P_SignReward[60]["RewardEffect"] = {}
	tSignin60P_SignReward[60]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_SignReward[60]["RewardEffect"]["Effect"] = "angelwing"


local tSignin60P_Reward = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330503][1]
	-- ===删除:3330503,1
	-- ===
	-- ===
	tSignin60P_Reward[3330503] = {}
	tSignin60P_Reward[3330503][1] = {}
	tSignin60P_Reward[3330503][1]["LogId"] = 12001937
	tSignin60P_Reward[3330503][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330503][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330503][1]["DeleteItem"][1]["Id"] = 3330503 -- 【库】 3330503 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330503][1]["RewardItem"] = {}
	tSignin60P_Reward[3330503][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330503][1]["RewardItem"][1]["Id"] = 196115 -- WhiteWaltz(Eternity)[196115][属性:0][叠加:0][金币:0], 【表格】196115
	tSignin60P_Reward[3330503][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑WhiteWaltz(Eternity)（赠）*1
	tSignin60P_Reward[3330503][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330503][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330503][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330503][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330503][2]
	-- ===删除:3330503,1
	-- ===
	-- ===
	tSignin60P_Reward[3330503][2]["LogId"] = 12001937
	tSignin60P_Reward[3330503][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330503][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330503][2]["DeleteItem"][1]["Id"] = 3330503 -- 【库】 3330503 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330503][2]["RewardItem"] = {}
	tSignin60P_Reward[3330503][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330503][2]["RewardItem"][1]["Id"] = 196195 -- FinalSurvivor(Supreme)[196195][属性:0][叠加:0][金币:0], 【表格】196195
	tSignin60P_Reward[3330503][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FinalSurvivor(Supreme)（赠）*1
	tSignin60P_Reward[3330503][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330503][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330503][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330503][3] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330503][3]
	-- ===删除:3330503,1
	-- ===
	-- ===
	tSignin60P_Reward[3330503][3]["LogId"] = 12001937
	tSignin60P_Reward[3330503][3]["DeleteItem"] = {}
	tSignin60P_Reward[3330503][3]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330503][3]["DeleteItem"][1]["Id"] = 3330503 -- 【库】 3330503 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330503][3]["RewardItem"] = {}
	tSignin60P_Reward[3330503][3]["RewardItem"][1] = {}
	tSignin60P_Reward[3330503][3]["RewardItem"][1]["Id"] = 195925 -- NightMaster[195925][属性:0][叠加:0][金币:0], 【表格】195925
	tSignin60P_Reward[3330503][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑NightMaster（赠）*1
	tSignin60P_Reward[3330503][3]["RewardEffect"] = {}
	tSignin60P_Reward[3330503][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330503][3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330504] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330504][1]
	-- ===删除:3330504,1
	-- ===
	-- ===
	tSignin60P_Reward[3330504][1] = {}
	tSignin60P_Reward[3330504][1]["LogId"] = 12001937
	tSignin60P_Reward[3330504][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330504][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330504][1]["DeleteItem"][1]["Id"] = 3330504 -- 【库】 3330504 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330504][1]["RewardItem"] = {}
	tSignin60P_Reward[3330504][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330504][1]["RewardItem"][1]["Id"] = 200661 -- AstralDeer[200661][属性:0][叠加:0][金币:0], 【表格】200661
	tSignin60P_Reward[3330504][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑AstralDeer（赠）*1
	tSignin60P_Reward[3330504][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330504][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330504][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330504][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330504][2]
	-- ===删除:3330504,1
	-- ===
	-- ===
	tSignin60P_Reward[3330504][2]["LogId"] = 12001937
	tSignin60P_Reward[3330504][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330504][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330504][2]["DeleteItem"][1]["Id"] = 3330504 -- 【库】 3330504 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330504][2]["RewardItem"] = {}
	tSignin60P_Reward[3330504][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330504][2]["RewardItem"][1]["Id"] = 200494 -- MoneyHorse[200494][属性:0][叠加:0][金币:100], 【表格】200494
	tSignin60P_Reward[3330504][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑MoneyHorse（赠）*1
	tSignin60P_Reward[3330504][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330504][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330504][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330504][3] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330504][3]
	-- ===删除:3330504,1
	-- ===
	-- ===
	tSignin60P_Reward[3330504][3]["LogId"] = 12001937
	tSignin60P_Reward[3330504][3]["DeleteItem"] = {}
	tSignin60P_Reward[3330504][3]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330504][3]["DeleteItem"][1]["Id"] = 3330504 -- 【库】 3330504 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330504][3]["RewardItem"] = {}
	tSignin60P_Reward[3330504][3]["RewardItem"][1] = {}
	tSignin60P_Reward[3330504][3]["RewardItem"][1]["Id"] = 200606 -- SoulChariot[200606][属性:0][叠加:0][金币:0], 【表格】200606
	tSignin60P_Reward[3330504][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑SoulChariot（赠）*1
	tSignin60P_Reward[3330504][3]["RewardEffect"] = {}
	tSignin60P_Reward[3330504][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330504][3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330505] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330505][1]
	-- ===删除:3330505,1
	-- ===
	-- ===
	tSignin60P_Reward[3330505][1] = {}
	tSignin60P_Reward[3330505][1]["LogId"] = 12001937
	tSignin60P_Reward[3330505][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330505][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330505][1]["DeleteItem"][1]["Id"] = 3330505 -- 【库】 3330505 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330505][1]["RewardItem"] = {}
	tSignin60P_Reward[3330505][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330505][1]["RewardItem"][1]["Id"] = 196115 -- WhiteWaltz(Eternity)[196115][属性:0][叠加:0][金币:0], 【表格】196115
	tSignin60P_Reward[3330505][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑WhiteWaltz(Eternity)（赠）*1
	tSignin60P_Reward[3330505][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330505][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330505][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330505][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330505][2]
	-- ===删除:3330505,1
	-- ===
	-- ===
	tSignin60P_Reward[3330505][2]["LogId"] = 12001937
	tSignin60P_Reward[3330505][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330505][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330505][2]["DeleteItem"][1]["Id"] = 3330505 -- 【库】 3330505 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330505][2]["RewardItem"] = {}
	tSignin60P_Reward[3330505][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330505][2]["RewardItem"][1]["Id"] = 196195 -- FinalSurvivor(Supreme)[196195][属性:0][叠加:0][金币:0], 【表格】196195
	tSignin60P_Reward[3330505][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑FinalSurvivor(Supreme)（赠）*1
	tSignin60P_Reward[3330505][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330505][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330505][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330505][3] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330505][3]
	-- ===删除:3330505,1
	-- ===
	-- ===
	tSignin60P_Reward[3330505][3]["LogId"] = 12001937
	tSignin60P_Reward[3330505][3]["DeleteItem"] = {}
	tSignin60P_Reward[3330505][3]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330505][3]["DeleteItem"][1]["Id"] = 3330505 -- 【库】 3330505 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330505][3]["RewardItem"] = {}
	tSignin60P_Reward[3330505][3]["RewardItem"][1] = {}
	tSignin60P_Reward[3330505][3]["RewardItem"][1]["Id"] = 195925 -- NightMaster[195925][属性:0][叠加:0][金币:0], 【表格】195925
	tSignin60P_Reward[3330505][3]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑NightMaster（赠）*1
	tSignin60P_Reward[3330505][3]["RewardEffect"] = {}
	tSignin60P_Reward[3330505][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330505][3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330506] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330506][1]
	-- ===删除:3330506,1
	-- ===
	-- ===
	tSignin60P_Reward[3330506][1] = {}
	tSignin60P_Reward[3330506][1]["LogId"] = 12001937
	tSignin60P_Reward[3330506][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330506][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330506][1]["DeleteItem"][1]["Id"] = 3330506 -- 【库】 3330506 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330506][1]["RewardItem"] = {}
	tSignin60P_Reward[3330506][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330506][1]["RewardItem"][1]["Id"] = 200661 -- AstralDeer[200661][属性:0][叠加:0][金币:0], 【表格】200661
	tSignin60P_Reward[3330506][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑AstralDeer（赠）*1
	tSignin60P_Reward[3330506][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330506][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330506][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330506][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330506][2]
	-- ===删除:3330506,1
	-- ===
	-- ===
	tSignin60P_Reward[3330506][2]["LogId"] = 12001937
	tSignin60P_Reward[3330506][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330506][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330506][2]["DeleteItem"][1]["Id"] = 3330506 -- 【库】 3330506 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330506][2]["RewardItem"] = {}
	tSignin60P_Reward[3330506][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330506][2]["RewardItem"][1]["Id"] = 200494 -- MoneyHorse[200494][属性:0][叠加:0][金币:100], 【表格】200494
	tSignin60P_Reward[3330506][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑MoneyHorse（赠）*1
	tSignin60P_Reward[3330506][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330506][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330506][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330506][3] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330506][3]
	-- ===删除:3330506,1
	-- ===
	-- ===
	tSignin60P_Reward[3330506][3]["LogId"] = 12001937
	tSignin60P_Reward[3330506][3]["DeleteItem"] = {}
	tSignin60P_Reward[3330506][3]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330506][3]["DeleteItem"][1]["Id"] = 3330506 -- 【库】 3330506 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330506][3]["RewardItem"] = {}
	tSignin60P_Reward[3330506][3]["RewardItem"][1] = {}
	tSignin60P_Reward[3330506][3]["RewardItem"][1]["Id"] = 200606 -- SoulChariot[200606][属性:0][叠加:0][金币:0], 【表格】200606
	tSignin60P_Reward[3330506][3]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑SoulChariot（赠）*1
	tSignin60P_Reward[3330506][3]["RewardEffect"] = {}
	tSignin60P_Reward[3330506][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330506][3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330508] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330508][1]
	-- ===删除:3330508,1
	-- ===
	-- ===
	tSignin60P_Reward[3330508][1] = {}
	tSignin60P_Reward[3330508][1]["LogId"] = 12001937
	tSignin60P_Reward[3330508][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330508][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330508][1]["DeleteItem"][1]["Id"] = 3330508 -- 【库】 3330508 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330508][1]["RewardItem"] = {}
	tSignin60P_Reward[3330508][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330508][1]["RewardItem"][1]["Id"] = 360220 -- GlitteringWave[360220][属性:0][叠加:0][金币:0], 【表格】360220
	tSignin60P_Reward[3330508][1]["RewardItem"][1]["Attr"] = "0 1 3" -- GlitteringWave（赠）*1
	tSignin60P_Reward[3330508][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330508][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330508][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330508][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330508][2]
	-- ===删除:3330508,1
	-- ===
	-- ===
	tSignin60P_Reward[3330508][2]["LogId"] = 12001937
	tSignin60P_Reward[3330508][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330508][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330508][2]["DeleteItem"][1]["Id"] = 3330508 -- 【库】 3330508 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330508][2]["RewardItem"] = {}
	tSignin60P_Reward[3330508][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330508][2]["RewardItem"][1]["Id"] = 350022 -- ShatteredRainbow[350022][属性:0][叠加:0][金币:0], 【表格】350022
	tSignin60P_Reward[3330508][2]["RewardItem"][1]["Attr"] = "0 1 3" -- ShatteredRainbow（赠）*1
	tSignin60P_Reward[3330508][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330508][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330508][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330508][3] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330508][3]
	-- ===删除:3330508,1
	-- ===
	-- ===
	tSignin60P_Reward[3330508][3]["LogId"] = 12001937
	tSignin60P_Reward[3330508][3]["DeleteItem"] = {}
	tSignin60P_Reward[3330508][3]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330508][3]["DeleteItem"][1]["Id"] = 3330508 -- 【库】 3330508 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330508][3]["RewardItem"] = {}
	tSignin60P_Reward[3330508][3]["RewardItem"][1] = {}
	tSignin60P_Reward[3330508][3]["RewardItem"][1]["Id"] = 370008 -- HeavenThunder[370008][属性:0][叠加:0][金币:0], 【表格】370008
	tSignin60P_Reward[3330508][3]["RewardItem"][1]["Attr"] = "0 1 3" -- HeavenThunder（赠）*1
	tSignin60P_Reward[3330508][3]["RewardEffect"] = {}
	tSignin60P_Reward[3330508][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330508][3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330508][4] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330508][4]
	-- ===删除:3330508,1
	-- ===
	-- ===
	tSignin60P_Reward[3330508][4]["LogId"] = 12001937
	tSignin60P_Reward[3330508][4]["DeleteItem"] = {}
	tSignin60P_Reward[3330508][4]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330508][4]["DeleteItem"][1]["Id"] = 3330508 -- 【库】 3330508 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330508][4]["RewardItem"] = {}
	tSignin60P_Reward[3330508][4]["RewardItem"][1] = {}
	tSignin60P_Reward[3330508][4]["RewardItem"][1]["Id"] = 380010 -- ImmortalShield[380010][属性:0][叠加:0][金币:0], 【表格】380010
	tSignin60P_Reward[3330508][4]["RewardItem"][1]["Attr"] = "0 1 3" -- ImmortalShield（赠）*1
	tSignin60P_Reward[3330508][4]["RewardEffect"] = {}
	tSignin60P_Reward[3330508][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330508][4]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330507] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330507][1]
	-- ===删除:3330507,1
	-- ===
	-- ===
	tSignin60P_Reward[3330507][1] = {}
	tSignin60P_Reward[3330507][1]["LogId"] = 12001937
	tSignin60P_Reward[3330507][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330507][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330507][1]["DeleteItem"][1]["Id"] = 3330507 -- 【库】 3330507 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330507][1]["RewardItem"] = {}
	tSignin60P_Reward[3330507][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330507][1]["RewardItem"][1]["Id"] = 183335 -- RightStarSuit[183335][属性:0][叠加:0][金币:100], 【表格】183335
	tSignin60P_Reward[3330507][1]["RewardItem"][1]["Attr"] = "0 1 3" -- RightStarSuit（赠）*1
	tSignin60P_Reward[3330507][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330507][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330507][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330507][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330507][2]
	-- ===删除:3330507,1
	-- ===
	-- ===
	tSignin60P_Reward[3330507][2]["LogId"] = 12001937
	tSignin60P_Reward[3330507][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330507][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330507][2]["DeleteItem"][1]["Id"] = 3330507 -- 【库】 3330507 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330507][2]["RewardItem"] = {}
	tSignin60P_Reward[3330507][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330507][2]["RewardItem"][1]["Id"] = 192185 -- AssassinSuit[192185][属性:0][叠加:0][金币:0], 【表格】192185
	tSignin60P_Reward[3330507][2]["RewardItem"][1]["Attr"] = "0 1 3" -- AssassinSuit（赠）*1
	tSignin60P_Reward[3330507][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330507][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330507][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330507][3] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330507][3]
	-- ===删除:3330507,1
	-- ===
	-- ===
	tSignin60P_Reward[3330507][3]["LogId"] = 12001937
	tSignin60P_Reward[3330507][3]["DeleteItem"] = {}
	tSignin60P_Reward[3330507][3]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330507][3]["DeleteItem"][1]["Id"] = 3330507 -- 【库】 3330507 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330507][3]["RewardItem"] = {}
	tSignin60P_Reward[3330507][3]["RewardItem"][1] = {}
	tSignin60P_Reward[3330507][3]["RewardItem"][1]["Id"] = 188165 -- MatadorSuit[188165][属性:0][叠加:0][金币:100], 【表格】188165
	tSignin60P_Reward[3330507][3]["RewardItem"][1]["Attr"] = "0 1 3" -- MatadorSuit（赠）*1
	tSignin60P_Reward[3330507][3]["RewardEffect"] = {}
	tSignin60P_Reward[3330507][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330507][3]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330509] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330509]
	-- ===删除:3330509,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330509]["LogId"] = 12001937
	tSignin60P_Reward[3330509]["DeleteItem"] = {}
	tSignin60P_Reward[3330509]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330509]["DeleteItem"][1]["Id"] = 3330509 -- 【库】 3330509 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330509]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330509]["RewardEMoneyMono"]["Value"] = 2000 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330509]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330509]["RewardEffect"] = {}
	tSignin60P_Reward[3330509]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330509]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330510] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330510]
	-- ===删除:3330510,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330510]["LogId"] = 12001937
	tSignin60P_Reward[3330510]["DeleteItem"] = {}
	tSignin60P_Reward[3330510]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330510]["DeleteItem"][1]["Id"] = 3330510 -- 【库】 3330510 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330510]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330510]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330510]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330510]["RewardEffect"] = {}
	tSignin60P_Reward[3330510]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330510]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330511] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330511]
	-- ===删除:3330511,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330511]["LogId"] = 12001937
	tSignin60P_Reward[3330511]["DeleteItem"] = {}
	tSignin60P_Reward[3330511]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330511]["DeleteItem"][1]["Id"] = 3330511 -- 【库】 3330511 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330511]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330511]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330511]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330511]["RewardEffect"] = {}
	tSignin60P_Reward[3330511]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330511]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330512] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330512]
	-- ===删除:3330512,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330512]["LogId"] = 12001937
	tSignin60P_Reward[3330512]["DeleteItem"] = {}
	tSignin60P_Reward[3330512]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330512]["DeleteItem"][1]["Id"] = 3330512 -- 【库】 3330512 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330512]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330512]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330512]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330512]["RewardEffect"] = {}
	tSignin60P_Reward[3330512]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330512]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330513] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330513]
	-- ===删除:3330513,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330513]["LogId"] = 12001937
	tSignin60P_Reward[3330513]["DeleteItem"] = {}
	tSignin60P_Reward[3330513]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330513]["DeleteItem"][1]["Id"] = 3330513 -- 【库】 3330513 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330513]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330513]["RewardEMoneyMono"]["Value"] = 150 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330513]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330513]["RewardEffect"] = {}
	tSignin60P_Reward[3330513]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330513]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330514] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330514]
	-- ===删除:3330514,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330514]["LogId"] = 12001937
	tSignin60P_Reward[3330514]["DeleteItem"] = {}
	tSignin60P_Reward[3330514]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330514]["DeleteItem"][1]["Id"] = 3330514 -- 【库】 3330514 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330514]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330514]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330514]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330514]["RewardEffect"] = {}
	tSignin60P_Reward[3330514]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330514]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330515] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330515]
	-- ===删除:3330515,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330515]["LogId"] = 12001937
	tSignin60P_Reward[3330515]["DeleteItem"] = {}
	tSignin60P_Reward[3330515]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330515]["DeleteItem"][1]["Id"] = 3330515 -- 【库】 3330515 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330515]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330515]["RewardEMoneyMono"]["Value"] = 80 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330515]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330515]["RewardEffect"] = {}
	tSignin60P_Reward[3330515]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330515]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330516] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330516]
	-- ===删除:3330516,1
	-- ===NewEmoneyLog:1000,01727
	-- ===
	tSignin60P_Reward[3330516]["LogId"] = 12001937
	tSignin60P_Reward[3330516]["DeleteItem"] = {}
	tSignin60P_Reward[3330516]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330516]["DeleteItem"][1]["Id"] = 3330516 -- 【库】 3330516 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330516]["RewardEMoneyMono"] = {}
	tSignin60P_Reward[3330516]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】天石（赠）
	tSignin60P_Reward[3330516]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1727"
	tSignin60P_Reward[3330516]["RewardEffect"] = {}
	tSignin60P_Reward[3330516]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330516]["RewardEffect"]["Effect"] = "angelwing"

	tSignin60P_Reward[3330501] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330501][1][1]
	-- ===删除:3330501,1
	-- ===
	-- ===
	tSignin60P_Reward[3330501][1] = {}
	tSignin60P_Reward[3330501][1][1] = {}
	tSignin60P_Reward[3330501][1][1]["LogId"] = 12001937
	tSignin60P_Reward[3330501][1][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330501][1][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330501][1][1]["DeleteItem"][1]["Id"] = 3330501 -- 【库】 3330501 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330501][1][1]["RewardItem"] = {}
	tSignin60P_Reward[3330501][1][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330501][1][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tSignin60P_Reward[3330501][1][1]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tSignin60P_Reward[3330501][1][1]["RewardItem"][2] = {}
	tSignin60P_Reward[3330501][1][1]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】3009101
	tSignin60P_Reward[3330501][1][1]["RewardItem"][2]["Attr"] = "0 1" -- DragonFruit*1
	tSignin60P_Reward[3330501][1][1]["RewardItem"][3] = {}
	tSignin60P_Reward[3330501][1][1]["RewardItem"][3]["Id"] = 754009 -- 9Tulips[754009][属性:8][叠加:0][金币:0], 【表格】754009
	tSignin60P_Reward[3330501][1][1]["RewardItem"][3]["Attr"] = "0 5 3" -- 9Tulips（赠）*5
	tSignin60P_Reward[3330501][1][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330501][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330501][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330501][1][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330501][1][2]
	-- ===删除:3330501,1
	-- ===
	-- ===
	tSignin60P_Reward[3330501][1][2]["LogId"] = 12001937
	tSignin60P_Reward[3330501][1][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330501][1][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330501][1][2]["DeleteItem"][1]["Id"] = 3330501 -- 【库】 3330501 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330501][1][2]["RewardItem"] = {}
	tSignin60P_Reward[3330501][1][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330501][1][2]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tSignin60P_Reward[3330501][1][2]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tSignin60P_Reward[3330501][1][2]["RewardItem"][2] = {}
	tSignin60P_Reward[3330501][1][2]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】3009101
	tSignin60P_Reward[3330501][1][2]["RewardItem"][2]["Attr"] = "0 1" -- DragonFruit*1
	tSignin60P_Reward[3330501][1][2]["RewardItem"][3] = {}
	tSignin60P_Reward[3330501][1][2]["RewardItem"][3]["Id"] = 755009 -- 9Kisses[755009][属性:8][叠加:0][金币:0], 【表格】755009
	tSignin60P_Reward[3330501][1][2]["RewardItem"][3]["Attr"] = "0 5 3" -- 9Kisses（赠）*5
	tSignin60P_Reward[3330501][1][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330501][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330501][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330501][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330501][2][1]
	-- ===删除:3330501,1
	-- ===删除:3330500,1
	-- ===
	tSignin60P_Reward[3330501][2][1] = {}
	tSignin60P_Reward[3330501][2][1]["LogId"] = 12001937
	tSignin60P_Reward[3330501][2][1]["DeleteItem"] = {}
	tSignin60P_Reward[3330501][2][1]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330501][2][1]["DeleteItem"][1]["Id"] = 3330501 -- 【库】 3330501 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330501][2][1]["DeleteItem"][2] = {}
	tSignin60P_Reward[3330501][2][1]["DeleteItem"][2]["Id"] = 3330500 -- 【库】 3330500 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330501][2][1]["RewardItem"] = {}
	tSignin60P_Reward[3330501][2][1]["RewardItem"][1] = {}
	tSignin60P_Reward[3330501][2][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tSignin60P_Reward[3330501][2][1]["RewardItem"][1]["Attr"] = "0 20 3" -- UniversalRuneEssence（赠）*20
	tSignin60P_Reward[3330501][2][1]["RewardItem"][2] = {}
	tSignin60P_Reward[3330501][2][1]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】3009101
	tSignin60P_Reward[3330501][2][1]["RewardItem"][2]["Attr"] = "0 2" -- DragonFruit*2
	tSignin60P_Reward[3330501][2][1]["RewardItem"][3] = {}
	tSignin60P_Reward[3330501][2][1]["RewardItem"][3]["Id"] = 754009 -- 9Tulips[754009][属性:8][叠加:0][金币:0], 【表格】754009
	tSignin60P_Reward[3330501][2][1]["RewardItem"][3]["Attr"] = "0 10 3" -- 9Tulips（赠）*10
	tSignin60P_Reward[3330501][2][1]["RewardEffect"] = {}
	tSignin60P_Reward[3330501][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330501][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tSignin60P_Reward[3330501][2][2] = {}
	-- ===
	-- ===索引:tSignin60P_Reward[3330501][2][2]
	-- ===删除:3330501,1
	-- ===删除:3330500,1
	-- ===
	-- ===
	tSignin60P_Reward[3330501][2][2]["LogId"] = 12001937
	tSignin60P_Reward[3330501][2][2]["DeleteItem"] = {}
	tSignin60P_Reward[3330501][2][2]["DeleteItem"][1] = {}
	tSignin60P_Reward[3330501][2][2]["DeleteItem"][1]["Id"] = 3330501 -- 【库】 3330501 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330501][2][2]["DeleteItem"][2] = {}
	tSignin60P_Reward[3330501][2][2]["DeleteItem"][2]["Id"] = 3330500 -- 【库】 3330500 【库里没有该物品】[属性:]
	tSignin60P_Reward[3330501][2][2]["RewardItem"] = {}
	tSignin60P_Reward[3330501][2][2]["RewardItem"][1] = {}
	tSignin60P_Reward[3330501][2][2]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tSignin60P_Reward[3330501][2][2]["RewardItem"][1]["Attr"] = "0 20 3" -- UniversalRuneEssence（赠）*20
	tSignin60P_Reward[3330501][2][2]["RewardItem"][2] = {}
	tSignin60P_Reward[3330501][2][2]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】3009101
	tSignin60P_Reward[3330501][2][2]["RewardItem"][2]["Attr"] = "0 2" -- DragonFruit*2
	tSignin60P_Reward[3330501][2][2]["RewardItem"][3] = {}
	tSignin60P_Reward[3330501][2][2]["RewardItem"][3]["Id"] = 755009 -- 9Kisses[755009][属性:8][叠加:0][金币:0], 【表格】755009
	tSignin60P_Reward[3330501][2][2]["RewardItem"][3]["Attr"] = "0 10 3" -- 9Kisses（赠）*10
	tSignin60P_Reward[3330501][2][2]["RewardEffect"] = {}
	tSignin60P_Reward[3330501][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSignin60P_Reward[3330501][2][2]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------------------------------------------------------------------------------------
--打开X选1包
function Signin60P_ChooseReward(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tSignin60P_Reward[nItemId][nIndex])
end
--暖心礼包使用
function Signin60P_WarmPack(nIndex)
	if not Item_ChkItem(tSignin60P_Cont["Warm"]) then
		return
	end
	if nIndex == 2 then
		if not Item_ChkItem(tSignin60P_Cont["Ticket"]) then
			Sys_MsgBox(tSignin60P_Text["MsgBox"]["Ticket"])
			return
		end
	end
	local nSex= Get_UserSex()
	RewardTemplate_UseItemAndMsg(tSignin60P_Reward[tSignin60P_Cont["Warm"]][nIndex][nSex])
end

--打开网页
function Signin60P_OpenWeb()
	User_SendWebPage(tSignin60P_Cont["Web"])
end
--签到选项跳转
function Signin60P_SignChK()
	if not Item_ChkItem(tSignin60P_Cont["Item"]) then
		return
	end
	if not Task_StcInterval(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"],1,4) then
		--You`ve claimed the reward today, so you can`t claim it again.
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["Interval"])
		return
	end
	local nSignin60P_Stc = Get_UserStatisticValue(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"])+1
	--给花分性别给
	
	if nSignin60P_Stc == tSignin60P_Cont["Flower"] then
		local nSex = Get_UserSex()
		if RewardTemplate_UseItemAndMsg(tSignin60P_SignReward[nSignin60P_Stc][nSex]) then
			Task_AddStatistic(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"],1,1)
			Task_SetStcTimestamp(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"],0)
			local sRewardText = string.format(tSignin60P_Text["MsgBox"]["Reward"],tSignin60P_RewardName[21][nSex])
			Sys_MsgBox(sRewardText)
		end
	else
		--其他正常发
		if RewardTemplate_UseItemAndMsg(tSignin60P_SignReward[nSignin60P_Stc]) then
			Task_AddStatistic(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"],1,1)
			Task_SetStcTimestamp(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"],0)
			local sRewardText = string.format(tSignin60P_Text["MsgBox"]["Reward"],tSignin60P_RewardName[nSignin60P_Stc])
			Sys_MsgBox(sRewardText)
		end
	end
end

function Signin60P_Refresh(nIndex)
	if nIndex == 1 then
		tItem[3330499]["tOption3-1"] = {311,313}
	elseif nIndex == 6 then 
		tItem[3330499]["tOption3-1"] = {312,313}
	else
		tItem[3330499]["tOption3-1"] = {311,312,313}
	end
	local nNext = (nIndex+1)
	local nPrevious = (nIndex-1)
	tItem[3330499]["OptionFunc311"] = string.format("Signin60P_Refresh</N>%s",nNext)
	tItem[3330499]["OptionFunc312"] = string.format("Signin60P_Refresh</N>%s",nPrevious)
	if nIndex == 3 then
		local nSex = Get_UserSex()
		tItem[3330499]["Text313"] = string.format(tSignin60P_Text[3330499]["Text313"],nIndex*10-9,tSignin60P_RewardName[nIndex*10-9][nSex])
	else 
		tItem[3330499]["Text313"] = string.format(tSignin60P_Text[3330499]["Text313"],nIndex*10-9,tSignin60P_RewardName[nIndex*10-9])
	end
	tItem[3330499]["Text314"] = string.format(tSignin60P_Text[3330499]["Text314"],nIndex*10-8,tSignin60P_RewardName[nIndex*10-8])
	tItem[3330499]["Text315"] = string.format(tSignin60P_Text[3330499]["Text315"],nIndex*10-7,tSignin60P_RewardName[nIndex*10-7])
	tItem[3330499]["Text316"] = string.format(tSignin60P_Text[3330499]["Text316"],nIndex*10-6,tSignin60P_RewardName[nIndex*10-6])
	tItem[3330499]["Text317"] = string.format(tSignin60P_Text[3330499]["Text317"],nIndex*10-5,tSignin60P_RewardName[nIndex*10-5])
	tItem[3330499]["Text318"] = string.format(tSignin60P_Text[3330499]["Text318"],nIndex*10-4,tSignin60P_RewardName[nIndex*10-4])
	tItem[3330499]["Text319"] = string.format(tSignin60P_Text[3330499]["Text319"],nIndex*10-3,tSignin60P_RewardName[nIndex*10-3])
	tItem[3330499]["Text3110"] = string.format(tSignin60P_Text[3330499]["Text3110"],nIndex*10-2,tSignin60P_RewardName[nIndex*10-2])
	tItem[3330499]["Text3111"] = string.format(tSignin60P_Text[3330499]["Text3111"],nIndex*10-1,tSignin60P_RewardName[nIndex*10-1])
	tItem[3330499]["Text3112"] = string.format(tSignin60P_Text[3330499]["Text3112"],nIndex*10,tSignin60P_RewardName[nIndex*10])
	LinkItemGossipFunc_New(3330499,"3-1")

end


------------------------------------------
tItemFace[3330499] = 2889
tItem[3330499] = tItem[3330499] or {}
tItem[3330499]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	local nSignin60P_Stc = Get_UserStatisticValue(tSignin60P_Cont["Stc"]["Event"],tSignin60P_Cont["Stc"]["Data"])+1
	if nSignin60P_Stc == 21 then 
		local nSex = Get_UserSex()
		tItem[3330499]["Text112"] = string.format(tSignin60P_Text[3330499]["Text112"],nSignin60P_Stc,tSignin60P_RewardName[nSignin60P_Stc][nSex])
	else
		tItem[3330499]["Text112"] = string.format(tSignin60P_Text[3330499]["Text112"],nSignin60P_Stc,tSignin60P_RewardName[nSignin60P_Stc])
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3330499]["DialogueText"] = tSignin60P_Text[3330499]
tItem[3330499]["Text1-1"] = {111,112}
tItem[3330499]["tOption1-1"] = {111,112,113}
--领取每日奖励
tItem[3330499]["OptionFunc111"] = "Signin60P_SignChK"
--查看总奖励
tItem[3330499]["OptionFunc112"] = "Signin60P_Refresh</N>1"
--跳转页面
tItem[3330499]["OptionFunc113"] = "Signin60P_OpenWeb"

tItem[3330499]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
tItem[3330499]["tOption3-1"] = {311,312,313}
tItem[3330499]["OptionFunc311"] = ""
tItem[3330499]["OptionFunc312"] = ""
tItem[3330499]["OptionPoint313"] = "1-1"

tItem[3330500] = tItem[3330500] or {}
tItem[3330500]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
end


--温馨礼盒
tItemFace[3330501] = 1024
tItem[3330501] = tItem[3330501] or {}
tItem[3330501]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330501]["DialogueText"] = tSignin60P_Text[3330501]
tItem[3330501]["Text1-1"] = {111,112}
tItem[3330501]["tOption1-1"] = {111,112}
tItem[3330501]["OptionFunc111"] = "Signin60P_WarmPack</N>1"
tItem[3330501]["OptionFunc112"] = "Signin60P_WarmPack</N>2"

--外套7天3选1
tItemFace[3330503] = 2594
tItem[3330503] = tItem[3330503] or {}
tItem[3330503]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330503]["DialogueText"] = tSignin60P_Text[3330503]
tItem[3330503]["Text1-1"] = {111,112}
tItem[3330503]["tOption1-1"] = {111,112,113}
tItem[3330503]["OptionFunc111"] = "Signin60P_ChooseReward</N>3330503</N>1"
tItem[3330503]["OptionFunc112"] = "Signin60P_ChooseReward</N>3330503</N>2"
tItem[3330503]["OptionFunc113"] = "Signin60P_ChooseReward</N>3330503</N>3"


--坐骑7天3选1
tItemFace[3330504] = 2593
tItem[3330504] = tItem[3330504] or {}
tItem[3330504]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330504]["DialogueText"] = tSignin60P_Text[3330504]
tItem[3330504]["Text1-1"] = {111,112}
tItem[3330504]["tOption1-1"] = {111,112,113}
tItem[3330504]["OptionFunc111"] = "Signin60P_ChooseReward</N>3330504</N>1"
tItem[3330504]["OptionFunc112"] = "Signin60P_ChooseReward</N>3330504</N>2"
tItem[3330504]["OptionFunc113"] = "Signin60P_ChooseReward</N>3330504</N>3"

--外套15天3选1
tItemFace[3330505] = 2890

tItem[3330505] = tItem[3330505] or {}
tItem[3330505]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330505]["DialogueText"] = tSignin60P_Text[3330503]
tItem[3330505]["Text1-1"] = {111,112}
tItem[3330505]["tOption1-1"] = {111,112,113}
tItem[3330505]["OptionFunc111"] = "Signin60P_ChooseReward</N>3330505</N>1"
tItem[3330505]["OptionFunc112"] = "Signin60P_ChooseReward</N>3330505</N>2"
tItem[3330505]["OptionFunc113"] = "Signin60P_ChooseReward</N>3330505</N>3"

--zuoji15天3选1
tItemFace[3330506] = 2271
tItem[3330506] = tItem[3330506] or {}
tItem[3330506]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330506]["DialogueText"] = tSignin60P_Text[3330504]
tItem[3330506]["Text1-1"] = {111,112}
tItem[3330506]["tOption1-1"] = {111,112,113}
tItem[3330506]["OptionFunc111"] = "Signin60P_ChooseReward</N>3330506</N>1"
tItem[3330506]["OptionFunc112"] = "Signin60P_ChooseReward</N>3330506</N>2"
tItem[3330506]["OptionFunc113"] = "Signin60P_ChooseReward</N>3330506</N>3"


--永久外套3选1
tItemFace[3330507] =950
tItem[3330507] = tItem[3330507] or {}
tItem[3330507]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330507]["DialogueText"] = tSignin60P_Text[3330507]
tItem[3330507]["Text1-1"] = {111,112}
tItem[3330507]["tOption1-1"] = {111,112,113}
tItem[3330507]["OptionFunc111"] = "Signin60P_ChooseReward</N>3330507</N>1"
tItem[3330507]["OptionFunc112"] = "Signin60P_ChooseReward</N>3330507</N>2"
tItem[3330507]["OptionFunc113"] = "Signin60P_ChooseReward</N>3330507</N>3"

--永久武器4选1
tItemFace[3330508] = 951
tItem[3330508] = tItem[3330508] or {}
tItem[3330508]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tSignin60P_Cont["ActTime"]) then
		--过期删包
		Item_DelAllItemByType(nItemId)
		Sys_MsgBox(tSignin60P_Text["MsgBox"]["TimeOut"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330508]["DialogueText"] = tSignin60P_Text[3330508]
tItem[3330508]["Text1-1"] = {111,112}
tItem[3330508]["tOption1-1"] = {111,112,113,114}
tItem[3330508]["OptionFunc111"] = "Signin60P_ChooseReward</N>3330508</N>1"
tItem[3330508]["OptionFunc112"] = "Signin60P_ChooseReward</N>3330508</N>2"
tItem[3330508]["OptionFunc113"] = "Signin60P_ChooseReward</N>3330508</N>3"
tItem[3330508]["OptionFunc114"] = "Signin60P_ChooseReward</N>3330508</N>4"

--zendian
--2000
tItem[3330509] = tItem[3330509] or {}
tItem[3330509]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSignin60P_Reward[nItemId])
end
tItem[3330510] = tItem[3330509]
tItem[3330511] = tItem[3330509]
tItem[3330512] = tItem[3330509]
tItem[3330513] = tItem[3330509]
tItem[3330514] = tItem[3330509]
tItem[3330515] = tItem[3330509]
tItem[3330516] = tItem[3330509]


