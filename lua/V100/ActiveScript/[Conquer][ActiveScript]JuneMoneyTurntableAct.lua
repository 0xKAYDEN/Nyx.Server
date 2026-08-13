------------------------------------------------------------------------------------
--Name:		180514[英文征服][活动脚本]6月金币转盘活动
--Purpose:	6月金币转盘活动
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
-- 前缀
-- JuneMoneyTurntableAct_

-- logid：12001082


-- 掩码
-- 177 15 背包信
------------------------------------------------------------------------------------
local tJuneMoneyTurntableAct_Cont = {}
--活动时间
tJuneMoneyTurntableAct_Cont["BefTime"] = tActivityTime["JuneMoneyTurntableAct"]["BefTime"]
tJuneMoneyTurntableAct_Cont["ActTime"] = tActivityTime["JuneMoneyTurntableAct"]["ActTime"]

--等级、转世
tJuneMoneyTurntableAct_Cont["Level"] = 80
tJuneMoneyTurntableAct_Cont["Mete"] = 1

local tJuneMoneyTurntableAct_RewandItem = {}
	
	--TwilightStarPack(2)
	tJuneMoneyTurntableAct_RewandItem[3308992]={}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["DeleteItem"][1]["Id"] = 3308992
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["RewardItem"][1]["Id"] = 3009000
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["RewardItem"][1]["Attr"] = "0 2"
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308992][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--TwilightStarPack(5)
	tJuneMoneyTurntableAct_RewandItem[3308993]={}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["DeleteItem"][1]["Id"] = 3308993
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["RewardItem"][1]["Id"] = 3009000
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["RewardItem"][1]["Attr"] = "0 5"
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308993][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--JoyfulBrightStarPack
	tJuneMoneyTurntableAct_RewandItem[3308994]={}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["DeleteItem"][1]["Id"] = 3308994
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["RewardItem"][1]["Id"] = 3009001
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["RewardItem"][1]["Attr"] = "0 1"
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308994][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--JoyfulBrightStarPack(2)
	tJuneMoneyTurntableAct_RewandItem[3308995]={}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["DeleteItem"][1]["Id"] = 3308995
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["RewardItem"][1]["Id"] = 3009001
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["RewardItem"][1]["Attr"] = "0 2"
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308995][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--JoyfulBrightStarPack(3)
	tJuneMoneyTurntableAct_RewandItem[3308996]={}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["DeleteItem"][1]["Id"] = 3308996
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["RewardItem"][1]["Id"] = 3009001
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["RewardItem"][1]["Attr"] = "0 3"
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308996][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--JoyfulBrightStarPack(5)
	tJuneMoneyTurntableAct_RewandItem[3308997]={}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["DeleteItem"][1]["Id"] = 3308997
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["RewardItem"][1]["Id"] = 3009001
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["RewardItem"][1]["Attr"] = "0 5"
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308997][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--JoyfulRadiantStarPack
	tJuneMoneyTurntableAct_RewandItem[3308998]={}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["DeleteItem"][1]["Id"] = 3308998
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["RewardItem"][1]["Id"] = 3009002
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["RewardItem"][1]["Attr"] = "0 1"
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308998][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--JoyfulRadiantStarPack(2)
	tJuneMoneyTurntableAct_RewandItem[3308999]={}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]={}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["DeleteItem"][1]["Id"] = 3308999
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["RewardItem"][1]["Id"] = 3009002
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["RewardItem"][1]["Attr"] = "0 2"
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3308999][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--YellowRuneEssence(B)*2
	tJuneMoneyTurntableAct_RewandItem[3309000]={}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["DeleteItem"][1]["Id"] = 3309000
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["RewardItem"][1]["Id"] = 4050001
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309000][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--YellowRuneEssence(B)*10
	tJuneMoneyTurntableAct_RewandItem[3309001]={}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["DeleteItem"][1]["Id"] = 3309001
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["RewardItem"][1]["Id"] = 4050001
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309001][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--YellowRuneEssence(B)*20
	tJuneMoneyTurntableAct_RewandItem[3309002]={}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["DeleteItem"][1]["Id"] = 3309002
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["RewardItem"][1]["Id"] = 4050001
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["RewardItem"][1]["Attr"] = "0 20 3"
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309002][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--2+1Stone(B)Pack
	tJuneMoneyTurntableAct_RewandItem[3309003]={}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["DeleteItem"][1]["Id"] = 3309003
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["RewardItem"][1]["Id"] = 730001
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309003][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--2+2Stone(B)Pack
	tJuneMoneyTurntableAct_RewandItem[3309004]={}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["DeleteItem"][1]["Id"] = 3309004
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["RewardItem"][1]["Id"] = 730002
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309004][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+5Stone(B)Pack
	tJuneMoneyTurntableAct_RewandItem[3309005]={}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["DeleteItem"][1]["Id"] = 3309005
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["RewardItem"][1]["Id"] = 730005
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309005][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+300ChiPointsPack(B)
	tJuneMoneyTurntableAct_RewandItem[3309006]={}
	tJuneMoneyTurntableAct_RewandItem[3309006][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["DeleteItem"][1]["Id"] = 3309006
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["RewardStrengthValue"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["RewardStrengthValue"]["Value"] = 300
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309006][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--SpecialTrainingPill(B)*5
	tJuneMoneyTurntableAct_RewandItem[3309007]={}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["DeleteItem"][1]["Id"] = 3309007
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["RewardItem"][1]["Id"] = 3003125
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309007][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--SeniorTrainingPill(B)*2
	tJuneMoneyTurntableAct_RewandItem[3309008]={}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["DeleteItem"][1]["Id"] = 3309008
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["RewardItem"][1]["Id"] = 3003126
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309008][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--SuperProtectionPill(B)*2
	tJuneMoneyTurntableAct_RewandItem[3309009]={}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["DeleteItem"][1]["Id"] = 3309009
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["RewardItem"][1]["Id"] = 3002030
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309009][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--EndeavorScroll(B)*3
	tJuneMoneyTurntableAct_RewandItem[3309010]={}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["DeleteItem"][1]["Id"] = 3309010
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["RewardItem"][1]["Id"] = 3001407
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309010][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--MeteorScroll(B)*5
	tJuneMoneyTurntableAct_RewandItem[3309011]={}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["DeleteItem"][1]["Id"] = 3309011
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["RewardItem"][1]["Id"] = 720027
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309011][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--PenitenceAmulet(B)*5
	tJuneMoneyTurntableAct_RewandItem[3309012]={}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["DeleteItem"][1]["Id"] = 3309012
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["RewardItem"][1]["Id"] = 720128
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309012][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--ExemptionToken(B)Pack',
	tJuneMoneyTurntableAct_RewandItem[3309013]={}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]={}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["DeleteItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["DeleteItem"][1]["Id"] = 3309013
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["RewardItem"][1]["Id"] = 723701
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309013][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--极品+4DarkCloudHat礼盒 
	tJuneMoneyTurntableAct_RewandItem[3309014]={}
	tJuneMoneyTurntableAct_RewandItem[3309014][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["RewardItem"][1]["Id"] = 170009
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 4 255"
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["DeleteItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["DeleteItem"][1]["Id"] = 3309014
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309014][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--极品+4MysticWindrobe礼盒 
	tJuneMoneyTurntableAct_RewandItem[3309015] = {}
	tJuneMoneyTurntableAct_RewandItem[3309015][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["RewardItem"][1]["Id"] = 101009
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 4 255"
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["DeleteItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["DeleteItem"][1]["Id"] = 3309015
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309015][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--极品+4PrideFan礼盒 
	tJuneMoneyTurntableAct_RewandItem[3309016] ={}
	tJuneMoneyTurntableAct_RewandItem[3309016][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["RewardItem"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["RewardItem"][1]["Id"] = 626029
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 4 255"
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["DeleteItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["DeleteItem"][1]["Id"] = 3309016
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309016][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+4苍之怒焰礼包(拳套)
	tJuneMoneyTurntableAct_RewandItem[3309017] = {}
	tJuneMoneyTurntableAct_RewandItem[3309017][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["DeleteItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["DeleteItem"][1]["Id"] = 3309017
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["RewardItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["RewardItem"][1]["Id"] = 624029
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["RewardItem"][1]["Attr"] ="0 1 0 0 0 0 0 5 0 0 4 255"
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309017][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+4无为如意拂尘礼包
	tJuneMoneyTurntableAct_RewandItem[3309018] = {}
	tJuneMoneyTurntableAct_RewandItem[3309018][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["DeleteItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["DeleteItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["DeleteItem"][1]["Id"] = 3309018
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["RewardItem"] = {} 
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["RewardItem"][1] = {}
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["RewardItem"][1]["Id"] = 619029
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 4"
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["LogId"] = 12001082
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["RewardEffect"] = {}
	tJuneMoneyTurntableAct_RewandItem[3309018][1]["RewardEffect"]["Effect"] = "zf2-e128"
---------------------------------------NPC逻辑---------------------------------------------
function JuneMoneyTurntableAct_NpcMain(nNpcId)
	--活动前
	if Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["BefTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	
	--活动后
	if not Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"])then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--活动中
	local nLevel = tJuneMoneyTurntableAct_Cont["Level"]
	local nMete = tJuneMoneyTurntableAct_Cont["Mete"]
	if Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--活动中
	User_OpenDialog(0,nNpcId,0)
end

---------------------------------------NPC配置---------------------------------------------
-- 转盘商人
tNpcFace[4622] = 5
tNpcGossip[22965] = tNpcGossip[22965] or DefaultNpc:new{}
tNpcGossip[22965]["OptionHidden"] = 1
tNpcGossip[22965]["DialogueText"] = tJuneMoneyTurntableAct_Text[22965]

--活动前
tNpcGossip[22965]["Text1-1"] = {111,112,113,114}
tNpcGossip[22965]["tOption1-1"] = {111}
tNpcGossip[22965]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["BefTime"])
end

--活动后
tNpcGossip[22965]["Text1-2"] = {121}
tNpcGossip[22965]["tOption1-2"] = {121}
tNpcGossip[22965]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"])
end

--活动中（等级不足）
tNpcGossip[22965]["Text1-3"] = {131,132,133,134}
tNpcGossip[22965]["tOption1-3"] = {131}
tNpcGossip[22965]["ChkFunc1-3"] = function ()
	local nLevel = tJuneMoneyTurntableAct_Cont["Level"]
	local nMete = tJuneMoneyTurntableAct_Cont["Mete"]
	return  Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end

-- 装备商人
tNpcFace[4623] = 47
tNpcGossip[22966] = tNpcGossip[22966] or DefaultNpc:new{}
tNpcGossip[22966]["OptionHidden"] = 1
tNpcGossip[22966]["DialogueText"] = tJuneMoneyTurntableAct_Text[22966]

--活动前
tNpcGossip[22966]["Text1-1"] = {111,112,113}
tNpcGossip[22966]["tOption1-1"] = {111}
tNpcGossip[22966]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["BefTime"])
end

--活动后
tNpcGossip[22966]["Text1-2"] = {121}
tNpcGossip[22966]["tOption1-2"] = {121}
tNpcGossip[22966]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"])
end

--活动中（等级不足）
tNpcGossip[22966]["Text1-3"] = {131,132,133}
tNpcGossip[22966]["tOption1-3"] = {131}
tNpcGossip[22966]["ChkFunc1-3"] = function ()
	local nLevel = tJuneMoneyTurntableAct_Cont["Level"]
	local nMete = tJuneMoneyTurntableAct_Cont["Mete"]
	return  Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end

-- 装备商人
tNpcFace[4624] = 64
tNpcGossip[22967] = tNpcGossip[22967] or DefaultNpc:new{}
tNpcGossip[22967]["OptionHidden"] = 1
tNpcGossip[22967]["DialogueText"] = tJuneMoneyTurntableAct_Text[22967]

--活动前
tNpcGossip[22967]["Text1-1"] = {111,112,113}
tNpcGossip[22967]["tOption1-1"] = {111}
tNpcGossip[22967]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["BefTime"])
end

--活动后
tNpcGossip[22967]["Text1-2"] = {121}
tNpcGossip[22967]["tOption1-2"] = {121}
tNpcGossip[22967]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"])
end

--活动中（等级不足）
tNpcGossip[22967]["Text1-3"] = {131,132,133}
tNpcGossip[22967]["tOption1-3"] = {131}
tNpcGossip[22967]["ChkFunc1-3"] = function ()
	local nLevel = tJuneMoneyTurntableAct_Cont["Level"]
	local nMete = tJuneMoneyTurntableAct_Cont["Mete"]
	return  Sys_ChkFullTime(tJuneMoneyTurntableAct_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end

--------------------------------物品模板--------------------------------------
tItemFace[3309019] = 1520
tItem[3308992] = tItem[3308992] or {}
tItem[3308992]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tJuneMoneyTurntableAct_RewandItem[nItemId][1])
end

tItem[3308993] = tItem[3308992] or {}
tItem[3308994] = tItem[3308992] or {}
tItem[3308995] = tItem[3308992] or {}
tItem[3308996] = tItem[3308992] or {}
tItem[3308997] = tItem[3308992] or {}
tItem[3308998] = tItem[3308992] or {}
tItem[3308999] = tItem[3308992] or {}
tItem[3309000] = tItem[3308992] or {}
tItem[3309001] = tItem[3308992] or {}
tItem[3309002] = tItem[3308992] or {}
tItem[3309003] = tItem[3308992] or {}
tItem[3309004] = tItem[3308992] or {}
tItem[3309005] = tItem[3308992] or {}
tItem[3309006] = tItem[3308992] or {}
tItem[3309007] = tItem[3308992] or {}
tItem[3309008] = tItem[3308992] or {}
tItem[3309009] = tItem[3308992] or {}
tItem[3309010] = tItem[3308992] or {}
tItem[3309011] = tItem[3308992] or {}
tItem[3309012] = tItem[3308992] or {}
tItem[3309013] = tItem[3308992] or {}
tItem[3309014] = tItem[3308992] or {}
tItem[3309015] = tItem[3308992] or {}
tItem[3309016] = tItem[3308992] or {}
tItem[3309017] = tItem[3308992] or {}
tItem[3309018] = tItem[3308992] or {}


tItem[3308988] = tItem[3308988] or {}
tItem[3308988]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3977)
end

tItem[3308989] = tItem[3308989] or {}
tItem[3308989]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3978)
end

tItem[3308990] = tItem[3308990] or {}
tItem[3308990]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3979)
end

tItem[3308991] = tItem[3308991] or {}
tItem[3308991]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3980)
end
