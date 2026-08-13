------------------------------------------------------------------------------------
--Name:		180417[简体征服][活动脚本]通天塔返气力活动（4.21-4.30）
--Creator: 	姚曦宇
--Created:	2018/14/17
------------------------------------------------------------------------------------
-- Stc
-- 120分钟经验包首次打开 176 01
-- 300分钟经验包首次打开 176 02
-- 600分钟经验包首次打开 176 03
-- 1200分钟经验包首次打开 176 04
-- 1%经验包首次打开 176 05
-- 2%经验包首次打开 176 06

-- logid：12001058
-- 同一前缀：BabelRewardStrength_
------------------------------------------------------------------------------------
local tBabelRewardStrength_Cont = {}
	tBabelRewardStrength_Cont["ActivityTime"] = tActivityTime["BabelRewardStrength"]["ActivityTime"]
	tBabelRewardStrength_Cont["DelTime"] = tActivityTime["BabelRewardStrength"]["DelTime"]
	tBabelRewardStrength_Cont["NewDelTime"] = tActivityTime["BabelRewardStrength"]["NewDelTime"]
	tBabelRewardStrength_Cont["DelLog"] = "0,0,%d,%d,12001058,2,0,0"
	tBabelRewardStrength_Cont["ExpEvertPercent"] = 3925
	tBabelRewardStrength_Cont["ExpPoolLevel"] = 140
	
	
local tBabelRewardStrength_AwardItem = {}
-- 120分钟经验包碎片
	tBabelRewardStrength_AwardItem[3308499] = {}
	tBabelRewardStrength_AwardItem[3308499]["DelTime"] = 1
	tBabelRewardStrength_AwardItem[3308499]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308499]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308499]["DeleteItem"][1]["Id"] = 3308499
	tBabelRewardStrength_AwardItem[3308499]["DeleteItem"][1]["ItemNum"] = 20
	tBabelRewardStrength_AwardItem[3308499]["DeleteItem"][1]["NoItem"] = tBabelRewardStrength_Text["NoItem"]
	tBabelRewardStrength_AwardItem[3308499]["RewardItem"] = {}
	tBabelRewardStrength_AwardItem[3308499]["RewardItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308499]["RewardItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308499]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tBabelRewardStrength_AwardItem[3308499]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308499]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308499]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308499]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308499]["LogStep"] = "2"

-- 120分钟经验包
	tBabelRewardStrength_AwardItem[3308500] = {}
	tBabelRewardStrength_AwardItem[3308500][1] = {}
	tBabelRewardStrength_AwardItem[3308500][1][1] = {}
	tBabelRewardStrength_AwardItem[3308500][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308500][1][1]["DeleteItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308500][1][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][1]["RewardExpTime"]["Value"] = 120
	tBabelRewardStrength_AwardItem[3308500][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308500][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308500][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308500][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308500][1][2] = {}
	tBabelRewardStrength_AwardItem[3308500][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308500][1][2]["DeleteItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308500][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][2]["RewardStrengthValue"]["Value"] = 60
	tBabelRewardStrength_AwardItem[3308500][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308500][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308500][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308500][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308500][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308500][1][3] = {}
	tBabelRewardStrength_AwardItem[3308500][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308500][1][3]["DeleteItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308500][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][3]["RewardStrengthValue"]["Value"] = 60
	tBabelRewardStrength_AwardItem[3308500][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308500][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308500][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308500][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308500][1][3]["LogStep"] = "2"	
	-- 首次打开
	tBabelRewardStrength_AwardItem[3308500][2] = {}
	tBabelRewardStrength_AwardItem[3308500][2][1] = {}
	tBabelRewardStrength_AwardItem[3308500][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308500][2][1]["DeleteItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308500][2][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][1]["RewardExpTime"]["Value"] = 360
	tBabelRewardStrength_AwardItem[3308500][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308500][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308500][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308500][2][1]["DataType"] = 01
    tBabelRewardStrength_AwardItem[3308500][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308500][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308500][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308500][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308500][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308500][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308500][2][1]["Talk"] = tBabelRewardStrength_Text[3308500][1]
	tBabelRewardStrength_AwardItem[3308500][2][2] = {}
	tBabelRewardStrength_AwardItem[3308500][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308500][2][2]["DeleteItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308500][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][2]["RewardStrengthValue"]["Value"] = 180
	tBabelRewardStrength_AwardItem[3308500][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308500][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308500][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308500][2][2]["DataType"] = 01
    tBabelRewardStrength_AwardItem[3308500][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308500][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308500][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308500][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308500][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308500][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308500][2][2]["Talk"] = tBabelRewardStrength_Text[3308500][2]
	tBabelRewardStrength_AwardItem[3308500][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308500][2][3] = {}
	tBabelRewardStrength_AwardItem[3308500][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308500][2][3]["DeleteItem"][1]["Id"] = 3308500
	tBabelRewardStrength_AwardItem[3308500][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][3]["RewardStrengthValue"]["Value"] = 180
	tBabelRewardStrength_AwardItem[3308500][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308500][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308500][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308500][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308500][2][3]["DataType"] = 01
    tBabelRewardStrength_AwardItem[3308500][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308500][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308500][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308500][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308500][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308500][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308500][2][3]["Talk"] = tBabelRewardStrength_Text[3308500][3]
	
-- 300分钟经验包
	tBabelRewardStrength_AwardItem[3308501] = {}
	tBabelRewardStrength_AwardItem[3308501][1] = {}
	tBabelRewardStrength_AwardItem[3308501][1][1] = {}
	tBabelRewardStrength_AwardItem[3308501][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308501][1][1]["DeleteItem"][1]["Id"] = 3308501
	tBabelRewardStrength_AwardItem[3308501][1][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][1]["RewardExpTime"]["Value"] = 300
	tBabelRewardStrength_AwardItem[3308501][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308501][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308501][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308501][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308501][1][2] = {}
	tBabelRewardStrength_AwardItem[3308501][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308501][1][2]["DeleteItem"][1]["Id"] = 3308501
	tBabelRewardStrength_AwardItem[3308501][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][2]["RewardStrengthValue"]["Value"] = 150
	tBabelRewardStrength_AwardItem[3308501][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308501][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308501][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308501][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308501][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308501][1][3] = {}
	tBabelRewardStrength_AwardItem[3308501][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308501][1][3]["DeleteItem"][1]["Id"] = 3308501
	tBabelRewardStrength_AwardItem[3308501][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][3]["RewardStrengthValue"]["Value"] = 150
	tBabelRewardStrength_AwardItem[3308501][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308501][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308501][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308501][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308501][1][3]["LogStep"] = "2"	

	-- 首次打开
	tBabelRewardStrength_AwardItem[3308501][2] = {}
	tBabelRewardStrength_AwardItem[3308501][2][1] = {}
	tBabelRewardStrength_AwardItem[3308501][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308501][2][1]["DeleteItem"][1]["Id"] = 3308501
	tBabelRewardStrength_AwardItem[3308501][2][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][1]["RewardExpTime"]["Value"] = 900
	tBabelRewardStrength_AwardItem[3308501][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308501][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308501][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308501][2][1]["DataType"] = 02
    tBabelRewardStrength_AwardItem[3308501][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308501][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308501][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308501][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308501][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308501][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308501][2][1]["Talk"] = tBabelRewardStrength_Text[3308501][1]
	tBabelRewardStrength_AwardItem[3308501][2][2] = {}
	tBabelRewardStrength_AwardItem[3308501][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308501][2][2]["DeleteItem"][1]["Id"] = 3308501
	tBabelRewardStrength_AwardItem[3308501][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][2]["RewardStrengthValue"]["Value"] = 450
	tBabelRewardStrength_AwardItem[3308501][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308501][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308501][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308501][2][2]["DataType"] = 02
    tBabelRewardStrength_AwardItem[3308501][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308501][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308501][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308501][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308501][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308501][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308501][2][2]["Talk"] = tBabelRewardStrength_Text[3308501][2]
	tBabelRewardStrength_AwardItem[3308501][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308501][2][3] = {}
	tBabelRewardStrength_AwardItem[3308501][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308501][2][3]["DeleteItem"][1]["Id"] = 3308501
	tBabelRewardStrength_AwardItem[3308501][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][3]["RewardStrengthValue"]["Value"] = 450
	tBabelRewardStrength_AwardItem[3308501][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308501][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308501][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308501][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308501][2][3]["DataType"] = 02
    tBabelRewardStrength_AwardItem[3308501][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308501][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308501][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308501][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308501][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308501][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308501][2][3]["Talk"] = tBabelRewardStrength_Text[3308501][3]
	
-- 600分钟经验包
	tBabelRewardStrength_AwardItem[3308502] = {}
	tBabelRewardStrength_AwardItem[3308502][1] = {}
	tBabelRewardStrength_AwardItem[3308502][1][1] = {}
	tBabelRewardStrength_AwardItem[3308502][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308502][1][1]["DeleteItem"][1]["Id"] = 3308502
	tBabelRewardStrength_AwardItem[3308502][1][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][1]["RewardExpTime"]["Value"] = 600
	tBabelRewardStrength_AwardItem[3308502][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308502][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308502][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308502][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308502][1][2] = {}
	tBabelRewardStrength_AwardItem[3308502][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308502][1][2]["DeleteItem"][1]["Id"] = 3308502
	tBabelRewardStrength_AwardItem[3308502][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][2]["RewardStrengthValue"]["Value"] = 300
	tBabelRewardStrength_AwardItem[3308502][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308502][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308502][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308502][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308502][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308502][1][3] = {}
	tBabelRewardStrength_AwardItem[3308502][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308502][1][3]["DeleteItem"][1]["Id"] = 3308502
	tBabelRewardStrength_AwardItem[3308502][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][3]["RewardStrengthValue"]["Value"] = 300
	tBabelRewardStrength_AwardItem[3308502][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308502][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308502][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308502][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308502][1][3]["LogStep"] = "2"	
	-- 首次打开
	tBabelRewardStrength_AwardItem[3308502][2] = {}
	tBabelRewardStrength_AwardItem[3308502][2][1] = {}
	tBabelRewardStrength_AwardItem[3308502][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308502][2][1]["DeleteItem"][1]["Id"] = 3308502
	tBabelRewardStrength_AwardItem[3308502][2][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][1]["RewardExpTime"]["Value"] = 1800
	tBabelRewardStrength_AwardItem[3308502][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308502][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308502][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308502][2][1]["DataType"] = 03
    tBabelRewardStrength_AwardItem[3308502][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308502][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308502][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308502][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308502][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308502][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308502][2][1]["Talk"] = tBabelRewardStrength_Text[3308502][1]
	tBabelRewardStrength_AwardItem[3308502][2][2] = {}
	tBabelRewardStrength_AwardItem[3308502][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308502][2][2]["DeleteItem"][1]["Id"] = 3308502
	tBabelRewardStrength_AwardItem[3308502][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][2]["RewardStrengthValue"]["Value"] = 900
	tBabelRewardStrength_AwardItem[3308502][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308502][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308502][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308502][2][2]["DataType"] = 03
    tBabelRewardStrength_AwardItem[3308502][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308502][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308502][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308502][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308502][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308502][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308502][2][2]["Talk"] = tBabelRewardStrength_Text[3308502][2]
	tBabelRewardStrength_AwardItem[3308502][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308502][2][3] = {}
	tBabelRewardStrength_AwardItem[3308502][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308502][2][3]["DeleteItem"][1]["Id"] = 3308502
	tBabelRewardStrength_AwardItem[3308502][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][3]["RewardStrengthValue"]["Value"] = 900
	tBabelRewardStrength_AwardItem[3308502][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308502][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308502][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308502][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308502][2][3]["DataType"] = 03
    tBabelRewardStrength_AwardItem[3308502][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308502][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308502][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308502][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308502][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308502][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308502][2][3]["Talk"] = tBabelRewardStrength_Text[3308502][3]
	
-- 1200分钟经验包
	tBabelRewardStrength_AwardItem[3308503] = {}
	tBabelRewardStrength_AwardItem[3308503][1] = {}
	tBabelRewardStrength_AwardItem[3308503][1][1] = {}
	tBabelRewardStrength_AwardItem[3308503][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308503][1][1]["DeleteItem"][1]["Id"] = 3308503
	tBabelRewardStrength_AwardItem[3308503][1][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][1]["RewardExpTime"]["Value"] = 1200
	tBabelRewardStrength_AwardItem[3308503][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308503][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308503][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308503][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308503][1][2] = {}
	tBabelRewardStrength_AwardItem[3308503][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308503][1][2]["DeleteItem"][1]["Id"] = 3308503
	tBabelRewardStrength_AwardItem[3308503][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][2]["RewardStrengthValue"]["Value"] = 600
	tBabelRewardStrength_AwardItem[3308503][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308503][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308503][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308503][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308503][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308503][1][3] = {}
	tBabelRewardStrength_AwardItem[3308503][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308503][1][3]["DeleteItem"][1]["Id"] = 3308503
	tBabelRewardStrength_AwardItem[3308503][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][3]["RewardStrengthValue"]["Value"] = 600
	tBabelRewardStrength_AwardItem[3308503][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308503][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308503][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308503][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308503][1][3]["LogStep"] = "2"	
	-- 首次打开
	tBabelRewardStrength_AwardItem[3308503][2] = {}
	tBabelRewardStrength_AwardItem[3308503][2][1] = {}
	tBabelRewardStrength_AwardItem[3308503][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308503][2][1]["DeleteItem"][1]["Id"] = 3308503
	tBabelRewardStrength_AwardItem[3308503][2][1]["RewardExpTime"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][1]["RewardExpTime"]["Value"] = 3600
	tBabelRewardStrength_AwardItem[3308503][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308503][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308503][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308503][2][1]["DataType"] = 04
    tBabelRewardStrength_AwardItem[3308503][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308503][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308503][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308503][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308503][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308503][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308503][2][1]["Talk"] = tBabelRewardStrength_Text[3308503][1]
	tBabelRewardStrength_AwardItem[3308503][2][2] = {}
	tBabelRewardStrength_AwardItem[3308503][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308503][2][2]["DeleteItem"][1]["Id"] = 3308503
	tBabelRewardStrength_AwardItem[3308503][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][2]["RewardStrengthValue"]["Value"] = 1800
	tBabelRewardStrength_AwardItem[3308503][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308503][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308503][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308503][2][2]["DataType"] = 04
    tBabelRewardStrength_AwardItem[3308503][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308503][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308503][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308503][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308503][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308503][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308503][2][2]["Talk"] = tBabelRewardStrength_Text[3308503][2]
	tBabelRewardStrength_AwardItem[3308503][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308503][2][3] = {}
	tBabelRewardStrength_AwardItem[3308503][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308503][2][3]["DeleteItem"][1]["Id"] = 3308503
	tBabelRewardStrength_AwardItem[3308503][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][3]["RewardStrengthValue"]["Value"] = 1800
	tBabelRewardStrength_AwardItem[3308503][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308503][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308503][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308503][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308503][2][3]["DataType"] = 04
    tBabelRewardStrength_AwardItem[3308503][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308503][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308503][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308503][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308503][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308503][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308503][2][3]["Talk"] = tBabelRewardStrength_Text[3308503][3]
	
-- 1%经验包
	tBabelRewardStrength_AwardItem[3308504] = {}
	tBabelRewardStrength_AwardItem[3308504][1] = {}
	tBabelRewardStrength_AwardItem[3308504][1][1] = {}
	tBabelRewardStrength_AwardItem[3308504][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308504][1][1]["DeleteItem"][1]["Id"] = 3308504
	tBabelRewardStrength_AwardItem[3308504][1][1]["RewardExpPercent"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][1]["RewardExpPercent"]["Value"] = 1
	tBabelRewardStrength_AwardItem[3308504][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308504][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308504][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308504][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308504][1][2] = {}
	tBabelRewardStrength_AwardItem[3308504][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308504][1][2]["DeleteItem"][1]["Id"] = 3308504
	tBabelRewardStrength_AwardItem[3308504][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][2]["RewardStrengthValue"]["Value"] = 2000
	tBabelRewardStrength_AwardItem[3308504][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308504][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308504][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308504][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308504][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308504][1][3] = {}
	tBabelRewardStrength_AwardItem[3308504][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308504][1][3]["DeleteItem"][1]["Id"] = 3308504
	tBabelRewardStrength_AwardItem[3308504][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][3]["RewardStrengthValue"]["Value"] = 2000
	tBabelRewardStrength_AwardItem[3308504][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308504][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308504][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308504][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308504][1][3]["LogStep"] = "2"	
	-- 首次打开
	tBabelRewardStrength_AwardItem[3308504][2] = {}
	tBabelRewardStrength_AwardItem[3308504][2][1] = {}
	tBabelRewardStrength_AwardItem[3308504][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308504][2][1]["DeleteItem"][1]["Id"] = 3308504
	tBabelRewardStrength_AwardItem[3308504][2][1]["RewardExpPercent"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][1]["RewardExpPercent"]["Value"] = 3
	tBabelRewardStrength_AwardItem[3308504][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308504][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308504][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308504][2][1]["DataType"] = 05
    tBabelRewardStrength_AwardItem[3308504][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308504][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308504][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308504][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308504][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308504][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308504][2][1]["Talk"] = tBabelRewardStrength_Text[3308504][1]
	tBabelRewardStrength_AwardItem[3308504][2][2] = {}
	tBabelRewardStrength_AwardItem[3308504][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308504][2][2]["DeleteItem"][1]["Id"] = 3308504
	tBabelRewardStrength_AwardItem[3308504][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][2]["RewardStrengthValue"]["Value"] = 6000
	tBabelRewardStrength_AwardItem[3308504][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308504][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308504][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308504][2][2]["DataType"] = 05
    tBabelRewardStrength_AwardItem[3308504][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308504][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308504][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308504][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308504][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308504][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308504][2][2]["Talk"] = tBabelRewardStrength_Text[3308504][2]
	tBabelRewardStrength_AwardItem[3308504][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308504][2][3] = {}
	tBabelRewardStrength_AwardItem[3308504][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308504][2][3]["DeleteItem"][1]["Id"] = 3308504
	tBabelRewardStrength_AwardItem[3308504][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][3]["RewardStrengthValue"]["Value"] = 6000
	tBabelRewardStrength_AwardItem[3308504][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308504][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308504][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308504][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308504][2][3]["DataType"] = 05
    tBabelRewardStrength_AwardItem[3308504][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308504][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308504][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308504][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308504][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308504][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308504][2][3]["Talk"] = tBabelRewardStrength_Text[3308504][3]
	
-- 2%经验包
	tBabelRewardStrength_AwardItem[3308505] = {}
	tBabelRewardStrength_AwardItem[3308505][1] = {}
	tBabelRewardStrength_AwardItem[3308505][1][1] = {}
	tBabelRewardStrength_AwardItem[3308505][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][1][1]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][1][1]["RewardExpPercent"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][1]["RewardExpPercent"]["Value"] = 2
	tBabelRewardStrength_AwardItem[3308505][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308505][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308505][1][2] = {}
	tBabelRewardStrength_AwardItem[3308505][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][1][2]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][2]["RewardStrengthValue"]["Value"] = 4000
	tBabelRewardStrength_AwardItem[3308505][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308505][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308505][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308505][1][3] = {}
	tBabelRewardStrength_AwardItem[3308505][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][1][3]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][3]["RewardStrengthValue"]["Value"] = 4000
	tBabelRewardStrength_AwardItem[3308505][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308505][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][1][3]["LogStep"] = "2"	
	-- 首次打开
	tBabelRewardStrength_AwardItem[3308505][2] = {}
	tBabelRewardStrength_AwardItem[3308505][2][1] = {}
	tBabelRewardStrength_AwardItem[3308505][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][2][1]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][2][1]["RewardExpPercent"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][1]["RewardExpPercent"]["Value"] = 6
	tBabelRewardStrength_AwardItem[3308505][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308505][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308505][2][1]["DataType"] = 06
    tBabelRewardStrength_AwardItem[3308505][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308505][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308505][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308505][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308505][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308505][2][1]["Talk"] = tBabelRewardStrength_Text[3308505][1]
	tBabelRewardStrength_AwardItem[3308505][2][2] = {}
	tBabelRewardStrength_AwardItem[3308505][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][2][2]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][2]["RewardStrengthValue"]["Value"] = 12000
	tBabelRewardStrength_AwardItem[3308505][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308505][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308505][2][2]["DataType"] = 06
    tBabelRewardStrength_AwardItem[3308505][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308505][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308505][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308505][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308505][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308505][2][2]["Talk"] = tBabelRewardStrength_Text[3308505][2]
	tBabelRewardStrength_AwardItem[3308505][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308505][2][3] = {}
	tBabelRewardStrength_AwardItem[3308505][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][2][3]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][3]["RewardStrengthValue"]["Value"] = 12000
	tBabelRewardStrength_AwardItem[3308505][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308505][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308505][2][3]["DataType"] = 06
    tBabelRewardStrength_AwardItem[3308505][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308505][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308505][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308505][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308505][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308505][2][3]["Talk"] = tBabelRewardStrength_Text[3308505][3]
	-- 2000赠点
	tBabelRewardStrength_AwardItem[3308505][3] = {}
	tBabelRewardStrength_AwardItem[3308505][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308505][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308505][3]["DeleteItem"][1]["Id"] = 3308505
	tBabelRewardStrength_AwardItem[3308505][3]["RewardEMoneyMono"] = {}
	tBabelRewardStrength_AwardItem[3308505][3]["RewardEMoneyMono"]["Value"] = 2000
	tBabelRewardStrength_AwardItem[3308505][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308505][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308505][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308505][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308505][3]["LogStep"] = "2"	
	
-- 2%经验包
	tBabelRewardStrength_AwardItem[3308048] = {}
	tBabelRewardStrength_AwardItem[3308048][1] = {}
	tBabelRewardStrength_AwardItem[3308048][1][1] = {}
	tBabelRewardStrength_AwardItem[3308048][1][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][1][1]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][1][1]["RewardExpPercent"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][1]["RewardExpPercent"]["Value"] = 2
	tBabelRewardStrength_AwardItem[3308048][1][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308048][1][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][1][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308048][1][2] = {}
	tBabelRewardStrength_AwardItem[3308048][1][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][1][2]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][1][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][2]["RewardStrengthValue"]["Value"] = 4000
	tBabelRewardStrength_AwardItem[3308048][1][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308048][1][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][1][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308048][1][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308048][1][3] = {}
	tBabelRewardStrength_AwardItem[3308048][1][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][1][3]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][1][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][3]["RewardStrengthValue"]["Value"] = 4000
	tBabelRewardStrength_AwardItem[3308048][1][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][1][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308048][1][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][1][3]["LogStep"] = "2"	
	-- 首次打开
	tBabelRewardStrength_AwardItem[3308048][2] = {}
	tBabelRewardStrength_AwardItem[3308048][2][1] = {}
	tBabelRewardStrength_AwardItem[3308048][2][1]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][1]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][2][1]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][2][1]["RewardExpPercent"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][1]["RewardExpPercent"]["Value"] = 6
	tBabelRewardStrength_AwardItem[3308048][2][1]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][1]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308048][2][1]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308048][2][1]["DataType"] = 06
    tBabelRewardStrength_AwardItem[3308048][2][1]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308048][2][1]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308048][2][1]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308048][2][1]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308048][2][1]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][2][1]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308048][2][1]["Talk"] = tBabelRewardStrength_Text[3308048][1]
	tBabelRewardStrength_AwardItem[3308048][2][2] = {}
	tBabelRewardStrength_AwardItem[3308048][2][2]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][2]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][2][2]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][2][2]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][2]["RewardStrengthValue"]["Value"] = 12000
	tBabelRewardStrength_AwardItem[3308048][2][2]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][2]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308048][2][2]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308048][2][2]["DataType"] = 06
    tBabelRewardStrength_AwardItem[3308048][2][2]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308048][2][2]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308048][2][2]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308048][2][2]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308048][2][2]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][2][2]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308048][2][2]["Talk"] = tBabelRewardStrength_Text[3308048][2]
	tBabelRewardStrength_AwardItem[3308048][2][2]["Msg"] = 1
	tBabelRewardStrength_AwardItem[3308048][2][3] = {}
	tBabelRewardStrength_AwardItem[3308048][2][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][2][3]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][2][3]["RewardStrengthValue"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][3]["RewardStrengthValue"]["Value"] = 12000
	tBabelRewardStrength_AwardItem[3308048][2][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][2][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
    tBabelRewardStrength_AwardItem[3308048][2][3]["EventType"] = 176
    tBabelRewardStrength_AwardItem[3308048][2][3]["DataType"] = 06
    tBabelRewardStrength_AwardItem[3308048][2][3]["RewardData"] = 1
    tBabelRewardStrength_AwardItem[3308048][2][3]["RewardDelay"] = 1
    tBabelRewardStrength_AwardItem[3308048][2][3]["RewardTimeType"] = 4
    tBabelRewardStrength_AwardItem[3308048][2][3]["HaveReceiveNoTip"] = 1
	tBabelRewardStrength_AwardItem[3308048][2][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][2][3]["LogStep"] = "2"	
	tBabelRewardStrength_AwardItem[3308048][2][3]["Talk"] = tBabelRewardStrength_Text[3308048][3]
	-- 2000赠点
	tBabelRewardStrength_AwardItem[3308048][3] = {}
	tBabelRewardStrength_AwardItem[3308048][3]["DeleteItem"] = {}
	tBabelRewardStrength_AwardItem[3308048][3]["DeleteItem"][1] = {}
	tBabelRewardStrength_AwardItem[3308048][3]["DeleteItem"][1]["Id"] = 3308048
	tBabelRewardStrength_AwardItem[3308048][3]["RewardEMoneyMono"] = {}
	tBabelRewardStrength_AwardItem[3308048][3]["RewardEMoneyMono"]["Value"] = 2000
	tBabelRewardStrength_AwardItem[3308048][3]["RewardEffect"] = {}
	tBabelRewardStrength_AwardItem[3308048][3]["RewardEffect"]["SzObj"] = "self" 
	tBabelRewardStrength_AwardItem[3308048][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBabelRewardStrength_AwardItem[3308048][3]["LogId"] = 12001058
	tBabelRewardStrength_AwardItem[3308048][3]["LogStep"] = "2"	
	

	
	
	
	
	
	
	
-- 指向对白
function BabelRewardStrength_Dialog(nNpcId,nIndex)
	LinkNpcGossipFunc_New(nNpcId,"1-"..nIndex)
end
	
-- 使用物品
function BabelRewardStrength_UseItem(nItemTypeId,nAwardType)
	local nUserId = Get_UserId()
	-- 过期删除
	if tBabelRewardStrength_AwardItem[nItemTypeId]["DelTime"] ~= nil then
		if not Sys_ChkFullTime(tBabelRewardStrength_Cont["DelTime"]) then
			local nNum = Get_CountItemType(nItemTypeId,0)
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				Sys_SaveActionFestivalLog(string.format(tBabelRewardStrength_Cont["DelLog"],nItemTypeId,nNum))
			end
			return
		end
	end
	if tBabelRewardStrength_AwardItem[nItemTypeId][1] == nil or tBabelRewardStrength_AwardItem[nItemTypeId][1][1] == nil or tBabelRewardStrength_AwardItem[nItemTypeId][1][2] == nil then
		return
	end
	if tBabelRewardStrength_AwardItem[nItemTypeId][2] == nil or tBabelRewardStrength_AwardItem[nItemTypeId][2][1] == nil or tBabelRewardStrength_AwardItem[nItemTypeId][2][2] == nil then
		return
	end
	-- 判断是否每日首次
	local nEvent = tBabelRewardStrength_AwardItem[nItemTypeId][2][1]["EventType"]
	local nType = tBabelRewardStrength_AwardItem[nItemTypeId][2][1]["DataType"]
	local nFirstTime = 1
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	if Task_ChkStcValue(nEvent,nType,"<",1,nUserId) then
		nFirstTime = 2
	end
	-- 判断经验池
	if nAwardType == nil then
		local nExpToGet
		nAwardType = 1
		if Get_UserLevel(nUserId) >= tBabelRewardStrength_Cont["ExpPoolLevel"] then
			if tBabelRewardStrength_AwardItem[nItemTypeId][nFirstTime][1]["RewardExpTime"] ~= nil then
				nExpToGet = tBabelRewardStrength_AwardItem[nItemTypeId][nFirstTime][1]["RewardExpTime"]["Value"]
			elseif tBabelRewardStrength_AwardItem[nItemTypeId][nFirstTime][1]["RewardExpPercent"] ~= nil then
				nExpToGet = tBabelRewardStrength_AwardItem[nItemTypeId][nFirstTime][1]["RewardExpPercent"]["Value"] * tBabelRewardStrength_Cont["ExpEvertPercent"]
			else
				return
			end
			local nSurplusExp = math.ceil(Get_UserSurplusExp(nUserId)/10)
			if nSurplusExp < nExpToGet then
				nAwardType = 2
			end
		elseif Get_UserLevel(nUserId) >= G_User_MaxLev then
			nAwardType = 2
		end
	end
	local bReward = RewardTemplate_UseItemAndMsg(tBabelRewardStrength_AwardItem[nItemTypeId][nFirstTime][nAwardType],nUserId)
	if not bReward then
		return
	end
	if tBabelRewardStrength_AwardItem[nItemTypeId][nFirstTime][nAwardType]["Msg"] ~= nil then
		if tBabelRewardStrength_Text["Msg"][nItemTypeId] ~= nil and tBabelRewardStrength_Text["Msg"][nItemTypeId][nFirstTime] ~= nil then
			Sys_MsgBox(tBabelRewardStrength_Text["Msg"][nItemTypeId][nFirstTime],nil,nil,nUserId)
		end
	end
end

-- 获得天石
function BabelRewardStrength_GetMonoEmoney(nItemTypeId,nIndex)
	RewardTemplate_UseItemAndMsg(tBabelRewardStrength_AwardItem[nItemTypeId][nIndex])
end

-- 判断新服
function BabelRewardStrength_ChkNewServer()
	if Get_SysDynaGlobalData0(51131) >= 1 then
		return true
	else
		return false
	end
end
	
---------------------------------------------NPC模块---------------------------------------------
-- 传送使
tNpcFace[5499] = 8
tNpcGossip[7675] = tNpcGossip[7675] or DefaultNpc:new{}
tNpcGossip[7675]["OptionHidden"] = 1
tNpcGossip[7675]["DialogueText"] = tBabelRewardStrength_Text[7675]
tNpcGossip[7675]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
tNpcGossip[7675]["ChkFunc1-1"] = function()
	if BabelRewardStrength_ChkNewServer() then
		tNpcGossip[7675]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1114,1113}
	else
		tNpcGossip[7675]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
	end
	return true
end
tNpcGossip[7675]["tOption1-1"] = {111}


-- 120分钟礼包碎片
tItem[3308499] = tItem[3308499] or {}
tItem[3308499]["Function"] = function(nItemTypeId,sItemName)
	local nUserId = Get_UserId()
	
	--判断新老服时间
	local nTime
	if BabelRewardStrength_ChkNewServer() then
		nTime = tBabelRewardStrength_Cont["NewDelTime"]
	else
		nTime = tBabelRewardStrength_Cont["DelTime"]
	end
	
	-- 过期删除
	if tBabelRewardStrength_AwardItem[nItemTypeId]["DelTime"] ~= nil then
		if not Sys_ChkFullTime(nTime) then
			local nNum = Get_CountItemType(nItemTypeId,0)
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				User_TalkChannel2005(tBabelRewardStrength_Text["OverTime"])
				Sys_SaveActionFestivalLog(string.format(tBabelRewardStrength_Cont["DelLog"],nItemTypeId,nNum))
			end
			return
		end
	end	
	-- 判断数量
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,20) then
		Sys_MsgBox(tBabelRewardStrength_Text["NoItem"],nil,nil,nUserId)
		return
	end
	RewardTemplate_UseItemAndMsg(tBabelRewardStrength_AwardItem[nItemTypeId])
end	

-- 120分钟除魔礼包
tItemFace[3308500] = 1434
tItem[3308500] = tItem[3308500] or {}
tItem[3308500]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308500]["DialogueText"] = tBabelRewardStrength_Text[3308500]
tItem[3308500]["Text1-1"] = {111,112,113,114,115}
tItem[3308500]["tOption1-1"] = {111,112,113}
tItem[3308500]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308500"
tItem[3308500]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308500</N>3"

-- 300分钟除魔礼包
tItemFace[3308501] = 1435
tItem[3308501] = tItem[3308501] or {}
tItem[3308501]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308501]["DialogueText"] = tBabelRewardStrength_Text[3308501]
tItem[3308501]["Text1-1"] = {111,112,113,114,115}
tItem[3308501]["tOption1-1"] = {111,112,113}
tItem[3308501]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308501"
tItem[3308501]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308501</N>3"

-- 600分钟除魔礼包
tItemFace[3308502] = 1436
tItem[3308502] = tItem[3308502] or {}
tItem[3308502]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308502]["DialogueText"] = tBabelRewardStrength_Text[3308502]
tItem[3308502]["Text1-1"] = {111,112,113,114,115}
tItem[3308502]["tOption1-1"] = {111,112,113}
tItem[3308502]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308502"
tItem[3308502]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308502</N>3"

-- 1200分钟除魔礼包
tItemFace[3308503] = 1437
tItem[3308503] = tItem[3308503] or {}
tItem[3308503]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308503]["DialogueText"] = tBabelRewardStrength_Text[3308503]
tItem[3308503]["Text1-1"] = {111,112,113,114,115}
tItem[3308503]["tOption1-1"] = {111,112,113}
tItem[3308503]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308503"
tItem[3308503]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308503</N>3"

-- 1%除魔礼包
tItemFace[3308504] = 1438
tItem[3308504] = tItem[3308504] or {}
tItem[3308504]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308504]["DialogueText"] = tBabelRewardStrength_Text[3308504]
tItem[3308504]["Text1-1"] = {111,112,113,114,115}
tItem[3308504]["tOption1-1"] = {111,112,113}
tItem[3308504]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308504"
tItem[3308504]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308504</N>3"

-- 2%除魔礼包
tItemFace[3308505] = 1430
tItem[3308505] = tItem[3308505] or {}
tItem[3308505]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308505]["DialogueText"] = tBabelRewardStrength_Text[3308505]
tItem[3308505]["Text1-1"] = {111,112,113,114,115}
tItem[3308505]["tOption1-1"] = {111,112,113}
tItem[3308505]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308505"
tItem[3308505]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308505</N>3"

-- 2%除魔礼包
tItemFace[3308048] = 1430
tItem[3308048] = tItem[3308048] or {}
tItem[3308048]["Function"] = function(nItemTypeId,sItemName)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3308048]["DialogueText"] = tBabelRewardStrength_Text[3308048]
tItem[3308048]["Text1-1"] = {111,112,113,114,115}
tItem[3308048]["tOption1-1"] = {111,112,113,114}
tItem[3308048]["OptionFunc111"]="BabelRewardStrength_UseItem</N>3308048"
tItem[3308048]["OptionFunc112"]="BabelRewardStrength_UseItem</N>3308048</N>3"
tItem[3308048]["OptionFunc113"]="BabelRewardStrength_GetMonoEmoney</N>3308048</N>3"