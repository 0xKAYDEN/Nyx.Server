------------------------------------------------------------------------------------
--Name：            190705[英文征服][活动脚本]金币大狂欢（8.6-8.31）
--Creator:      蔡颖静
--Created:     2019/07/05
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tCoinCarnival_
--logid:12001506
--luaini:41391

----------------------------------表配置部分--------------------------------------------
local tCoinCarnival_Data={}

tCoinCarnival_Data["Stc"]={}

--是否已领取过转盘
tCoinCarnival_Data["Stc"]["GetReward"]={}
tCoinCarnival_Data["Stc"]["GetReward"]["EventType"]=200
tCoinCarnival_Data["Stc"]["GetReward"]["DataType"]=48

--上交凭证计数
tCoinCarnival_Data["Stc"]["HandIn"]={}
tCoinCarnival_Data["Stc"]["HandIn"]["EventType"]=200
tCoinCarnival_Data["Stc"]["HandIn"]["DataType"]=49

--凡品锁妖盒
-- tCoinCarnival_Data[3322481]={}
-- tCoinCarnival_Data[3322481][1] = {}
-- tCoinCarnival_Data[3322481][1]["ItemChanceSum"] = 10000
-- tCoinCarnival_Data[3322481][1]["LogId"] = 12001506

-- 0.01% 1亿3800万
-- tCoinCarnival_Data[3322481][1][1] = {}
-- tCoinCarnival_Data[3322481][1][1]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][1]["ItemChance"] = 1
-- tCoinCarnival_Data[3322481][1][1]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322481][1][1]["RewardMoney"]["Value"] = 138000000
-- tCoinCarnival_Data[3322481][1][1]["Gold"] = true
-- tCoinCarnival_Data[3322481][1][1]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 2700W
-- tCoinCarnival_Data[3322481][1][2] = {}
-- tCoinCarnival_Data[3322481][1][2]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][2]["ItemChance"] = 10
-- tCoinCarnival_Data[3322481][1][2]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322481][1][2]["RewardMoney"]["Value"] = 27000000
-- tCoinCarnival_Data[3322481][1][2]["Gold"] = true
-- tCoinCarnival_Data[3322481][1][2]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 37% 200W
-- tCoinCarnival_Data[3322481][1][3] = {}
-- tCoinCarnival_Data[3322481][1][3]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][3]["ItemChance"] = 3700
-- tCoinCarnival_Data[3322481][1][3]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322481][1][3]["RewardMoney"]["Value"] = 2000000
-- tCoinCarnival_Data[3322481][1][3]["Gold"] = true
-- tCoinCarnival_Data[3322481][1][3]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 100W
-- tCoinCarnival_Data[3322481][1][4] = {}
-- tCoinCarnival_Data[3322481][1][4]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][4]["ItemChance"] = 1289
-- tCoinCarnival_Data[3322481][1][4]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322481][1][4]["RewardMoney"]["Value"] = 1000000
-- tCoinCarnival_Data[3322481][1][4]["Gold"] = true
-- tCoinCarnival_Data[3322481][1][4]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 50W
-- tCoinCarnival_Data[3322481][1][5] = {}
-- tCoinCarnival_Data[3322481][1][5]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][5]["ItemChance"] = 1000
-- tCoinCarnival_Data[3322481][1][5]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322481][1][5]["RewardMoney"]["Value"] = 500000
-- tCoinCarnival_Data[3322481][1][5]["Gold"] = true
-- tCoinCarnival_Data[3322481][1][5]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 39% 100气力
-- tCoinCarnival_Data[3322481][1][6] = {}
-- tCoinCarnival_Data[3322481][1][6]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][6]["ItemChance"] = 3900
-- tCoinCarnival_Data[3322481][1][6]["RewardStrengthValue"] = {}
-- tCoinCarnival_Data[3322481][1][6]["RewardStrengthValue"]["Value"] = 100
-- tCoinCarnival_Data[3322481][1][6]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 1% 1张积分凭证B
-- tCoinCarnival_Data[3322481][1][7] = {}
-- tCoinCarnival_Data[3322481][1][7]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322481][1][7]["ItemChance"] = 100
-- tCoinCarnival_Data[3322481][1][7]["RewardItem"] = {}
-- tCoinCarnival_Data[3322481][1][7]["RewardItem"][1]={}
-- tCoinCarnival_Data[3322481][1][7]["RewardItem"][1]["Id"] = 3322486 
-- tCoinCarnival_Data[3322481][1][7]["RewardItem"][1]["Attr"] = "0 1" 
-- tCoinCarnival_Data[3322481][1][7]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322481][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322481][1][7]["RewardEffect"]["Effect"] = "angelwing"

-- 良品锁妖盒
-- tCoinCarnival_Data[3322482]={}
-- tCoinCarnival_Data[3322482][1] = {}
-- tCoinCarnival_Data[3322482][1]["ItemChanceSum"] = 10000
-- tCoinCarnival_Data[3322482][1]["LogId"] = 12001506

-- 0.01% 6亿9000万
-- tCoinCarnival_Data[3322482][1][1] = {}
-- tCoinCarnival_Data[3322482][1][1]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][1]["ItemChance"] = 1
-- tCoinCarnival_Data[3322482][1][1]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322482][1][1]["RewardMoney"]["Value"] = 690000000
-- tCoinCarnival_Data[3322482][1][1]["Gold"] = true
-- tCoinCarnival_Data[3322482][1][1]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 1亿3500万
-- tCoinCarnival_Data[3322482][1][2] = {}
-- tCoinCarnival_Data[3322482][1][2]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][2]["ItemChance"] = 10
-- tCoinCarnival_Data[3322482][1][2]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322482][1][2]["RewardMoney"]["Value"] = 135000000
-- tCoinCarnival_Data[3322482][1][2]["Gold"] = true
-- tCoinCarnival_Data[3322482][1][2]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 37% 1000W
-- tCoinCarnival_Data[3322482][1][3] = {}
-- tCoinCarnival_Data[3322482][1][3]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][3]["ItemChance"] = 3700
-- tCoinCarnival_Data[3322482][1][3]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322482][1][3]["RewardMoney"]["Value"] = 10000000
-- tCoinCarnival_Data[3322482][1][3]["Gold"] = true
-- tCoinCarnival_Data[3322482][1][3]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 500W
-- tCoinCarnival_Data[3322482][1][4] = {}
-- tCoinCarnival_Data[3322482][1][4]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][4]["ItemChance"] = 1289
-- tCoinCarnival_Data[3322482][1][4]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322482][1][4]["RewardMoney"]["Value"] = 5000000
-- tCoinCarnival_Data[3322482][1][4]["Gold"] = true
-- tCoinCarnival_Data[3322482][1][4]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 250W
-- tCoinCarnival_Data[3322482][1][5] = {}
-- tCoinCarnival_Data[3322482][1][5]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][5]["ItemChance"] = 1000
-- tCoinCarnival_Data[3322482][1][5]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322482][1][5]["RewardMoney"]["Value"] = 2500000
-- tCoinCarnival_Data[3322482][1][5]["Gold"] = true
-- tCoinCarnival_Data[3322482][1][5]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 35% 200气力
-- tCoinCarnival_Data[3322482][1][6] = {}
-- tCoinCarnival_Data[3322482][1][6]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][6]["ItemChance"] = 3500
-- tCoinCarnival_Data[3322482][1][6]["RewardStrengthValue"] = {}
-- tCoinCarnival_Data[3322482][1][6]["RewardStrengthValue"]["Value"] = 200
-- tCoinCarnival_Data[3322482][1][6]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 5% 1张积分凭证B
-- tCoinCarnival_Data[3322482][1][7] = {}
-- tCoinCarnival_Data[3322482][1][7]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322482][1][7]["ItemChance"] = 500
-- tCoinCarnival_Data[3322482][1][7]["RewardItem"] = {}
-- tCoinCarnival_Data[3322482][1][7]["RewardItem"][1]={}
-- tCoinCarnival_Data[3322482][1][7]["RewardItem"][1]["Id"] = 3322486 
-- tCoinCarnival_Data[3322482][1][7]["RewardItem"][1]["Attr"] = "0 1" 
-- tCoinCarnival_Data[3322482][1][7]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322482][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322482][1][7]["RewardEffect"]["Effect"] = "angelwing"

-- 优品锁妖盒
-- tCoinCarnival_Data[3322483]={}
-- tCoinCarnival_Data[3322483][1] = {}
-- tCoinCarnival_Data[3322483][1]["ItemChanceSum"] = 10000
-- tCoinCarnival_Data[3322483][1]["LogId"] = 12001506

-- 0.01% 13亿8000万
-- tCoinCarnival_Data[3322483][1][1] = {}
-- tCoinCarnival_Data[3322483][1][1]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][1]["ItemChance"] = 1
-- tCoinCarnival_Data[3322483][1][1]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322483][1][1]["RewardMoney"]["Value"] = 1380000000
-- tCoinCarnival_Data[3322483][1][1]["Gold"] = true
-- tCoinCarnival_Data[3322483][1][1]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 2亿7000W
-- tCoinCarnival_Data[3322483][1][2] = {}
-- tCoinCarnival_Data[3322483][1][2]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][2]["ItemChance"] = 10
-- tCoinCarnival_Data[3322483][1][2]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322483][1][2]["RewardMoney"]["Value"] = 270000000
-- tCoinCarnival_Data[3322483][1][2]["Gold"] = true
-- tCoinCarnival_Data[3322483][1][2]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 37% 2000W
-- tCoinCarnival_Data[3322483][1][3] = {}
-- tCoinCarnival_Data[3322483][1][3]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][3]["ItemChance"] = 3700
-- tCoinCarnival_Data[3322483][1][3]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322483][1][3]["RewardMoney"]["Value"] = 20000000
-- tCoinCarnival_Data[3322483][1][3]["Gold"] = true
-- tCoinCarnival_Data[3322483][1][3]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 1000W
-- tCoinCarnival_Data[3322483][1][4] = {}
-- tCoinCarnival_Data[3322483][1][4]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][4]["ItemChance"] = 1289
-- tCoinCarnival_Data[3322483][1][4]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322483][1][4]["RewardMoney"]["Value"] = 10000000
-- tCoinCarnival_Data[3322483][1][4]["Gold"] = true
-- tCoinCarnival_Data[3322483][1][4]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 500W
-- tCoinCarnival_Data[3322483][1][5] = {}
-- tCoinCarnival_Data[3322483][1][5]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][5]["ItemChance"] = 1000
-- tCoinCarnival_Data[3322483][1][5]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322483][1][5]["RewardMoney"]["Value"] = 5000000
-- tCoinCarnival_Data[3322483][1][5]["Gold"] = true
-- tCoinCarnival_Data[3322483][1][5]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 35% 500气力
-- tCoinCarnival_Data[3322483][1][6] = {}
-- tCoinCarnival_Data[3322483][1][6]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][6]["ItemChance"] = 3500
-- tCoinCarnival_Data[3322483][1][6]["RewardStrengthValue"] = {}
-- tCoinCarnival_Data[3322483][1][6]["RewardStrengthValue"]["Value"] = 500
-- tCoinCarnival_Data[3322483][1][6]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 5% 5张积分凭证B
-- tCoinCarnival_Data[3322483][1][7] = {}
-- tCoinCarnival_Data[3322483][1][7]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322483][1][7]["ItemChance"] = 500
-- tCoinCarnival_Data[3322483][1][7]["RewardItem"] = {}
-- tCoinCarnival_Data[3322483][1][7]["RewardItem"][1]={}
-- tCoinCarnival_Data[3322483][1][7]["RewardItem"][1]["Id"] = 3322486 
-- tCoinCarnival_Data[3322483][1][7]["RewardItem"][1]["Attr"] = "0 5" 
-- tCoinCarnival_Data[3322483][1][7]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322483][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322483][1][7]["RewardEffect"]["Effect"] = "angelwing"

-- 精品锁妖盒
-- tCoinCarnival_Data[3322484]={}
-- tCoinCarnival_Data[3322484][1] = {}
-- tCoinCarnival_Data[3322484][1]["ItemChanceSum"] = 10000
-- tCoinCarnival_Data[3322484][1]["LogId"] = 12001506

-- 0.03% 21亿
-- tCoinCarnival_Data[3322484][1][1] = {}
-- tCoinCarnival_Data[3322484][1][1]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][1]["ItemChance"] = 3
-- tCoinCarnival_Data[3322484][1][1]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322484][1][1]["RewardMoney"]["Value"] = 2100000000
-- tCoinCarnival_Data[3322484][1][1]["Gold"] = true
-- tCoinCarnival_Data[3322484][1][1]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 13.5亿
-- tCoinCarnival_Data[3322484][1][2] = {}
-- tCoinCarnival_Data[3322484][1][2]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][2]["ItemChance"] = 10
-- tCoinCarnival_Data[3322484][1][2]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322484][1][2]["RewardMoney"]["Value"] = 1350000000
-- tCoinCarnival_Data[3322484][1][2]["Gold"] = true
-- tCoinCarnival_Data[3322484][1][2]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 36.98% 1亿
-- tCoinCarnival_Data[3322484][1][3] = {}
-- tCoinCarnival_Data[3322484][1][3]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][3]["ItemChance"] = 3698
-- tCoinCarnival_Data[3322484][1][3]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322484][1][3]["RewardMoney"]["Value"] = 100000000
-- tCoinCarnival_Data[3322484][1][3]["Gold"] = true
-- tCoinCarnival_Data[3322484][1][3]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 5000W
-- tCoinCarnival_Data[3322484][1][4] = {}
-- tCoinCarnival_Data[3322484][1][4]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][4]["ItemChance"] = 1289
-- tCoinCarnival_Data[3322484][1][4]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322484][1][4]["RewardMoney"]["Value"] = 50000000
-- tCoinCarnival_Data[3322484][1][4]["Gold"] = true
-- tCoinCarnival_Data[3322484][1][4]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 2500W
-- tCoinCarnival_Data[3322484][1][5] = {}
-- tCoinCarnival_Data[3322484][1][5]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][5]["ItemChance"] = 1000
-- tCoinCarnival_Data[3322484][1][5]["RewardMoney"] = {}
-- tCoinCarnival_Data[3322484][1][5]["RewardMoney"]["Value"] = 25000000
-- tCoinCarnival_Data[3322484][1][5]["Gold"] = true
-- tCoinCarnival_Data[3322484][1][5]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 35% 2000气力
-- tCoinCarnival_Data[3322484][1][6] = {}
-- tCoinCarnival_Data[3322484][1][6]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][6]["ItemChance"] = 3500
-- tCoinCarnival_Data[3322484][1][6]["RewardStrengthValue"] = {}
-- tCoinCarnival_Data[3322484][1][6]["RewardStrengthValue"]["Value"] = 2000
-- tCoinCarnival_Data[3322484][1][6]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 5% 10张积分凭证B
-- tCoinCarnival_Data[3322484][1][7] = {}
-- tCoinCarnival_Data[3322484][1][7]["RandomItemChanceType"] = 2
-- tCoinCarnival_Data[3322484][1][7]["ItemChance"] = 500
-- tCoinCarnival_Data[3322484][1][7]["RewardItem"] = {}
-- tCoinCarnival_Data[3322484][1][7]["RewardItem"][1]={}
-- tCoinCarnival_Data[3322484][1][7]["RewardItem"][1]["Id"] = 3322486 
-- tCoinCarnival_Data[3322484][1][7]["RewardItem"][1]["Attr"] = "0 10" 
-- tCoinCarnival_Data[3322484][1][7]["RewardEffect"] = {}
-- tCoinCarnival_Data[3322484][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCoinCarnival_Data[3322484][1][7]["RewardEffect"]["Effect"] = "angelwing"


--2颗明亮星陨石包
tCoinCarnival_Data[3322490] = {}
tCoinCarnival_Data[3322490]["LogId"] = 12001506
tCoinCarnival_Data[3322490]["DeleteItem"] = {}
tCoinCarnival_Data[3322490]["DeleteItem"][1]={}
tCoinCarnival_Data[3322490]["DeleteItem"][1]["Id"]=3322490
tCoinCarnival_Data[3322490]["RewardItem"] = {}
tCoinCarnival_Data[3322490]["RewardItem"][1] = {}
tCoinCarnival_Data[3322490]["RewardItem"][1]["Id"] = 3009001
tCoinCarnival_Data[3322490]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tCoinCarnival_Data[3322490]["RewardEffect"] = {}
tCoinCarnival_Data[3322490]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322490]["RewardEffect"]["Effect"] = "angelwing"

--+3赤炼石（赠）包
tCoinCarnival_Data[3322491] = {}
tCoinCarnival_Data[3322491]["LogId"] = 12001506
tCoinCarnival_Data[3322491]["DeleteItem"] = {}
tCoinCarnival_Data[3322491]["DeleteItem"][1]={}
tCoinCarnival_Data[3322491]["DeleteItem"][1]["Id"]=3322491
tCoinCarnival_Data[3322491]["RewardItem"] = {}
tCoinCarnival_Data[3322491]["RewardItem"][1] = {}
tCoinCarnival_Data[3322491]["RewardItem"][1]["Id"] = 730003
tCoinCarnival_Data[3322491]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinCarnival_Data[3322491]["RewardEffect"] = {}
tCoinCarnival_Data[3322491]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322491]["RewardEffect"]["Effect"] = "angelwing"

--1000气力值包
tCoinCarnival_Data[3322492] = {}
tCoinCarnival_Data[3322492]["LogId"] = 12001506
tCoinCarnival_Data[3322492]["DeleteItem"] = {}
tCoinCarnival_Data[3322492]["DeleteItem"][1]={}
tCoinCarnival_Data[3322492]["DeleteItem"][1]["Id"]=3322492
tCoinCarnival_Data[3322492]["RewardStrengthValue"] = {}
tCoinCarnival_Data[3322492]["RewardStrengthValue"]["Value"] = 1000
tCoinCarnival_Data[3322492]["RewardEffect"] = {}
tCoinCarnival_Data[3322492]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322492]["RewardEffect"]["Effect"] = "angelwing"

--500天石（赠）包
tCoinCarnival_Data[3322493] = {}
tCoinCarnival_Data[3322493]["LogId"] = 12001506
tCoinCarnival_Data[3322493]["DeleteItem"] = {}
tCoinCarnival_Data[3322493]["DeleteItem"][1]={}
tCoinCarnival_Data[3322493]["DeleteItem"][1]["Id"]=3322493
tCoinCarnival_Data[3322493]["RewardEMoneyMono"] = {}
tCoinCarnival_Data[3322493]["RewardEMoneyMono"]["Value"] = 500
tCoinCarnival_Data[3322493]["EmoneyLog"] = "10000	0645	0	0	-500	"
tCoinCarnival_Data[3322493]["RewardEffect"] = {}
tCoinCarnival_Data[3322493]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322493]["RewardEffect"]["Effect"] = "angelwing"


--PermanentStone(B)Pack
tCoinCarnival_Data[3322730] = {}
tCoinCarnival_Data[3322730]["LogId"] = 12001506
tCoinCarnival_Data[3322730]["DeleteItem"] = {}
tCoinCarnival_Data[3322730]["DeleteItem"][1]={}
tCoinCarnival_Data[3322730]["DeleteItem"][1]["Id"]=3322730
tCoinCarnival_Data[3322730]["RewardItem"] = {}
tCoinCarnival_Data[3322730]["RewardItem"][1] = {}
tCoinCarnival_Data[3322730]["RewardItem"][1]["Id"] = 723694
tCoinCarnival_Data[3322730]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinCarnival_Data[3322730]["RewardEffect"] = {}
tCoinCarnival_Data[3322730]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322730]["RewardEffect"]["Effect"] = "angelwing"

--ToughDrill(B)Pack
tCoinCarnival_Data[3322731] = {}
tCoinCarnival_Data[3322731]["LogId"] = 12001506
tCoinCarnival_Data[3322731]["DeleteItem"] = {}
tCoinCarnival_Data[3322731]["DeleteItem"][1]={}
tCoinCarnival_Data[3322731]["DeleteItem"][1]["Id"]=3322731
tCoinCarnival_Data[3322731]["RewardItem"] = {}
tCoinCarnival_Data[3322731]["RewardItem"][1] = {}
tCoinCarnival_Data[3322731]["RewardItem"][1]["Id"] = 1200005
tCoinCarnival_Data[3322731]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinCarnival_Data[3322731]["RewardEffect"] = {}
tCoinCarnival_Data[3322731]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322731]["RewardEffect"]["Effect"] = "angelwing"

--+6Stone(B)Pack
tCoinCarnival_Data[3322732] = {}
tCoinCarnival_Data[3322732]["LogId"] = 12001506
tCoinCarnival_Data[3322732]["DeleteItem"] = {}
tCoinCarnival_Data[3322732]["DeleteItem"][1]={}
tCoinCarnival_Data[3322732]["DeleteItem"][1]["Id"]=3322732
tCoinCarnival_Data[3322732]["RewardItem"] = {}
tCoinCarnival_Data[3322732]["RewardItem"][1] = {}
tCoinCarnival_Data[3322732]["RewardItem"][1]["Id"] = 730006
tCoinCarnival_Data[3322732]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinCarnival_Data[3322732]["RewardEffect"] = {}
tCoinCarnival_Data[3322732]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322732]["RewardEffect"]["Effect"] = "angelwing"

--1000修行值包+c凭证
tCoinCarnival_Data[3322494] = {}
tCoinCarnival_Data[3322494]["LogId"] = 12001506
tCoinCarnival_Data[3322494]["DeleteItem"] = {}
tCoinCarnival_Data[3322494]["DeleteItem"][1]={}
tCoinCarnival_Data[3322494]["DeleteItem"][1]["Id"]=3322494
tCoinCarnival_Data[3322494]["RewardCultivation"] = {}
tCoinCarnival_Data[3322494]["RewardCultivation"]["Value"] = 1000
tCoinCarnival_Data[3322494]["RewardItem"] = {}
tCoinCarnival_Data[3322494]["RewardItem"][1] = {}
tCoinCarnival_Data[3322494]["RewardItem"][1]["Id"] = 3322487
tCoinCarnival_Data[3322494]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data[3322494]["EmoneyLog"] = "350	22452	0	0	1	"
tCoinCarnival_Data[3322494]["RewardEffect"] = {}
tCoinCarnival_Data[3322494]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322494]["RewardEffect"]["Effect"] = "angelwing"

--500气力值包+c凭证
tCoinCarnival_Data[3322495] = {}
tCoinCarnival_Data[3322495]["LogId"] = 12001506
tCoinCarnival_Data[3322495]["DeleteItem"] = {}
tCoinCarnival_Data[3322495]["DeleteItem"][1]={}
tCoinCarnival_Data[3322495]["DeleteItem"][1]["Id"]=3322495
tCoinCarnival_Data[3322495]["RewardStrengthValue"] = {}
tCoinCarnival_Data[3322495]["RewardStrengthValue"]["Value"] = 500
tCoinCarnival_Data[3322495]["RewardItem"] = {}
tCoinCarnival_Data[3322495]["RewardItem"][1] = {}
tCoinCarnival_Data[3322495]["RewardItem"][1]["Id"] = 3322487
tCoinCarnival_Data[3322495]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data[3322495]["EmoneyLog"] = "350	22452	0	0	1	"
tCoinCarnival_Data[3322495]["RewardEffect"] = {}
tCoinCarnival_Data[3322495]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322495]["RewardEffect"]["Effect"] = "angelwing"

--龙珠（赠）包+c凭证
tCoinCarnival_Data[3322496] = {}
tCoinCarnival_Data[3322496]["LogId"] = 12001506
tCoinCarnival_Data[3322496]["DeleteItem"] = {}
tCoinCarnival_Data[3322496]["DeleteItem"][1]={}
tCoinCarnival_Data[3322496]["DeleteItem"][1]["Id"]=3322496
tCoinCarnival_Data[3322496]["RewardItem"] = {}
tCoinCarnival_Data[3322496]["RewardItem"][1] = {}
tCoinCarnival_Data[3322496]["RewardItem"][1]["Id"] = 1088000
tCoinCarnival_Data[3322496]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinCarnival_Data[3322496]["RewardItem"][2] = {}
tCoinCarnival_Data[3322496]["RewardItem"][2]["Id"] = 3322487
tCoinCarnival_Data[3322496]["RewardItem"][2]["Attr"] = "0 1"
tCoinCarnival_Data[3322496]["EmoneyLog"] = "350	22452	0	0	1	"
tCoinCarnival_Data[3322496]["RewardEffect"] = {}
tCoinCarnival_Data[3322496]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322496]["RewardEffect"]["Effect"] = "angelwing"

--神纹源晶（赠）包+c凭证
tCoinCarnival_Data[3322498] = {}
tCoinCarnival_Data[3322498]["LogId"] = 12001506
tCoinCarnival_Data[3322498]["DeleteItem"] = {}
tCoinCarnival_Data[3322498]["DeleteItem"][1]={}
tCoinCarnival_Data[3322498]["DeleteItem"][1]["Id"]=3322498
tCoinCarnival_Data[3322498]["RewardItem"] = {}
tCoinCarnival_Data[3322498]["RewardItem"][1] = {}
tCoinCarnival_Data[3322498]["RewardItem"][1]["Id"] = 3311759
tCoinCarnival_Data[3322498]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinCarnival_Data[3322498]["RewardItem"][2] = {}
tCoinCarnival_Data[3322498]["RewardItem"][2]["Id"] = 3322487
tCoinCarnival_Data[3322498]["RewardItem"][2]["Attr"] = "0 1"
tCoinCarnival_Data[3322498]["EmoneyLog"] = "350	22452	0	0	1	"
tCoinCarnival_Data[3322498]["RewardEffect"] = {}
tCoinCarnival_Data[3322498]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322498]["RewardEffect"]["Effect"] = "angelwing"

--20个黄色神纹精粹（赠）包
tCoinCarnival_Data[3322499] = {}
tCoinCarnival_Data[3322499]["LogId"] = 12001506
tCoinCarnival_Data[3322499]["DeleteItem"] = {}
tCoinCarnival_Data[3322499]["DeleteItem"][1]={}
tCoinCarnival_Data[3322499]["DeleteItem"][1]["Id"]=3322499
tCoinCarnival_Data[3322499]["RewardItem"] = {}
tCoinCarnival_Data[3322499]["RewardItem"][1] = {}
tCoinCarnival_Data[3322499]["RewardItem"][1]["Id"] = 4050001
tCoinCarnival_Data[3322499]["RewardItem"][1]["Attr"] = "0 20 3"
tCoinCarnival_Data[3322499]["RewardEffect"] = {}
tCoinCarnival_Data[3322499]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322499]["RewardEffect"]["Effect"] = "angelwing"

--1颗人参果包+c凭证
tCoinCarnival_Data[3322516] = {}
tCoinCarnival_Data[3322516]["LogId"] = 12001506
tCoinCarnival_Data[3322516]["DeleteItem"] = {}
tCoinCarnival_Data[3322516]["DeleteItem"][1]={}
tCoinCarnival_Data[3322516]["DeleteItem"][1]["Id"]=3322516
tCoinCarnival_Data[3322516]["RewardItem"] = {}
tCoinCarnival_Data[3322516]["RewardItem"][1] = {}
tCoinCarnival_Data[3322516]["RewardItem"][1]["Id"] = 3009100
tCoinCarnival_Data[3322516]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data[3322516]["RewardItem"][2] = {}
tCoinCarnival_Data[3322516]["RewardItem"][2]["Id"] = 3322487
tCoinCarnival_Data[3322516]["RewardItem"][2]["Attr"] = "0 1"
tCoinCarnival_Data[3322516]["EmoneyLog"] = "350	22452	0	0	1	"
tCoinCarnival_Data[3322516]["RewardEffect"] = {}
tCoinCarnival_Data[3322516]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322516]["RewardEffect"]["Effect"] = "angelwing"

--3000修为值包+c凭证
tCoinCarnival_Data[3322497] = {}
tCoinCarnival_Data[3322497]["LogId"] = 12001506
tCoinCarnival_Data[3322497]["DeleteItem"] = {}
tCoinCarnival_Data[3322497]["DeleteItem"][1]={}
tCoinCarnival_Data[3322497]["DeleteItem"][1]["Id"]=3322497
tCoinCarnival_Data[3322497]["RewardRepairValue"] = {}
tCoinCarnival_Data[3322497]["RewardRepairValue"]["Value"] = 3000
tCoinCarnival_Data[3322497]["RewardItem"] = {}
tCoinCarnival_Data[3322497]["RewardItem"][1] = {}
tCoinCarnival_Data[3322497]["RewardItem"][1]["Id"] = 3322487
tCoinCarnival_Data[3322497]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data[3322497]["EmoneyLog"] = "350	22452	0	0	1	"
tCoinCarnival_Data[3322497]["RewardEffect"] = {}
tCoinCarnival_Data[3322497]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322497]["RewardEffect"]["Effect"] = "angelwing"

--给转盘
tCoinCarnival_Data[3322480] = {}
tCoinCarnival_Data[3322480]["LogId"] = 12001506
tCoinCarnival_Data[3322480]["RewardItem"] = {}
tCoinCarnival_Data[3322480]["RewardItem"][1] = {}
tCoinCarnival_Data[3322480]["RewardItem"][1]["Id"] = 3322480
tCoinCarnival_Data[3322480]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data[3322480]["RewardEffect"] = {}
tCoinCarnival_Data[3322480]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3322480]["RewardEffect"]["Effect"] = "angelwing"

--11月金币消耗
tCoinCarnival_Data[3326468] = {}
tCoinCarnival_Data[3326468]["LogId"] = 12001506
tCoinCarnival_Data[3326468]["RewardItem"] = {}
tCoinCarnival_Data[3326468]["RewardItem"][1] = {}
tCoinCarnival_Data[3326468]["RewardItem"][1]["Id"] = 3326468
tCoinCarnival_Data[3326468]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data[3326468]["RewardEffect"] = {}
tCoinCarnival_Data[3326468]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data[3326468]["RewardEffect"]["Effect"] = "angelwing"

--锁妖盒价格
tCoinCarnival_Data["Price"] = {}
tCoinCarnival_Data["Price"][3322481]=1000000
tCoinCarnival_Data["Price"][3322482]=5000000
tCoinCarnival_Data["Price"][3322483]=10000000
tCoinCarnival_Data["Price"][3322484]=50000000

--购买锁妖盒

tCoinCarnival_Data["LotteryBox"] = {}
--	凡品锁妖盒
tCoinCarnival_Data["LotteryBox"][3322481] = {}
tCoinCarnival_Data["LotteryBox"][3322481]["LogId"] = 12001506
tCoinCarnival_Data["LotteryBox"][3322481]["RewardMoney"] = {}
tCoinCarnival_Data["LotteryBox"][3322481]["RewardMoney"]["Value"] = -1000000
tCoinCarnival_Data["LotteryBox"][3322481]["Gold"] = true
tCoinCarnival_Data["LotteryBox"][3322481]["RewardItem"] = {}
tCoinCarnival_Data["LotteryBox"][3322481]["RewardItem"][1] = {}
tCoinCarnival_Data["LotteryBox"][3322481]["RewardItem"][1]["Id"] = 3322481
tCoinCarnival_Data["LotteryBox"][3322481]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data["LotteryBox"][3322481]["EmoneyLog"] = "350	22448	0	0	-1000000	"
tCoinCarnival_Data["LotteryBox"][3322481]["RewardEffect"] = {}
tCoinCarnival_Data["LotteryBox"][3322481]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data["LotteryBox"][3322481]["RewardEffect"]["Effect"] = "angelwing"
tCoinCarnival_Data["LotteryBox"][3322481]["RewardNoNeedTip"] = 1

--	良品锁妖盒
tCoinCarnival_Data["LotteryBox"][3322482] = {}
tCoinCarnival_Data["LotteryBox"][3322482]["LogId"] = 12001506
tCoinCarnival_Data["LotteryBox"][3322482]["RewardMoney"] = {}
tCoinCarnival_Data["LotteryBox"][3322482]["RewardMoney"]["Value"] = -5000000
tCoinCarnival_Data["LotteryBox"][3322482]["Gold"] = true
tCoinCarnival_Data["LotteryBox"][3322482]["RewardItem"] = {}
tCoinCarnival_Data["LotteryBox"][3322482]["RewardItem"][1] = {}
tCoinCarnival_Data["LotteryBox"][3322482]["RewardItem"][1]["Id"] = 3322482
tCoinCarnival_Data["LotteryBox"][3322482]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data["LotteryBox"][3322482]["EmoneyLog"] = "350	22449	0	0	-5000000	"
tCoinCarnival_Data["LotteryBox"][3322482]["RewardEffect"] = {}
tCoinCarnival_Data["LotteryBox"][3322482]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data["LotteryBox"][3322482]["RewardEffect"]["Effect"] = "angelwing"
tCoinCarnival_Data["LotteryBox"][3322482]["RewardNoNeedTip"] = 1

--	优品锁妖盒
tCoinCarnival_Data["LotteryBox"][3322483] = {}
tCoinCarnival_Data["LotteryBox"][3322483]["LogId"] = 12001506
tCoinCarnival_Data["LotteryBox"][3322483]["RewardMoney"] = {}
tCoinCarnival_Data["LotteryBox"][3322483]["RewardMoney"]["Value"] = -10000000
tCoinCarnival_Data["LotteryBox"][3322483]["Gold"] = true
tCoinCarnival_Data["LotteryBox"][3322483]["RewardItem"] = {}
tCoinCarnival_Data["LotteryBox"][3322483]["RewardItem"][1] = {}
tCoinCarnival_Data["LotteryBox"][3322483]["RewardItem"][1]["Id"] = 3322483
tCoinCarnival_Data["LotteryBox"][3322483]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data["LotteryBox"][3322483]["EmoneyLog"] = "350	22450	0	0	-10000000	"
tCoinCarnival_Data["LotteryBox"][3322483]["RewardEffect"] = {}
tCoinCarnival_Data["LotteryBox"][3322483]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data["LotteryBox"][3322483]["RewardEffect"]["Effect"] = "angelwing"
tCoinCarnival_Data["LotteryBox"][3322483]["RewardNoNeedTip"] = 1

--	精品锁妖盒
tCoinCarnival_Data["LotteryBox"][3322484] = {}
tCoinCarnival_Data["LotteryBox"][3322484]["LogId"] = 12001506
tCoinCarnival_Data["LotteryBox"][3322484]["RewardMoney"] = {}
tCoinCarnival_Data["LotteryBox"][3322484]["RewardMoney"]["Value"] = -50000000
tCoinCarnival_Data["LotteryBox"][3322484]["Gold"] = true
tCoinCarnival_Data["LotteryBox"][3322484]["RewardItem"] = {}
tCoinCarnival_Data["LotteryBox"][3322484]["RewardItem"][1] = {}
tCoinCarnival_Data["LotteryBox"][3322484]["RewardItem"][1]["Id"] = 3322484
tCoinCarnival_Data["LotteryBox"][3322484]["RewardItem"][1]["Attr"] = "0 1"
tCoinCarnival_Data["LotteryBox"][3322484]["EmoneyLog"] = "350	22451	0	0	-50000000	"
tCoinCarnival_Data["LotteryBox"][3322484]["RewardEffect"] = {}
tCoinCarnival_Data["LotteryBox"][3322484]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data["LotteryBox"][3322484]["RewardEffect"]["Effect"] = "angelwing"
tCoinCarnival_Data["LotteryBox"][3322484]["RewardNoNeedTip"] = 1

--上交凭证
tCoinCarnival_Data["HandIn"]={}
tCoinCarnival_Data["HandIn"]["LogId"] = 12001506
tCoinCarnival_Data["HandIn"]["DeleteItem"] = {}
tCoinCarnival_Data["HandIn"]["DeleteItem"][1]={}
tCoinCarnival_Data["HandIn"]["DeleteItem"][1]["Id"]=3322488
tCoinCarnival_Data["HandIn"]["DeleteItem"][1]["ItemNum"] = 1
tCoinCarnival_Data["HandIn"]["EmoneyLog"] = "350	22453	0	0	%d	"
tCoinCarnival_Data["HandIn"]["RewardEffect"] = {}
tCoinCarnival_Data["HandIn"]["RewardEffect"]["SzObj"] = "self"
tCoinCarnival_Data["HandIn"]["RewardEffect"]["Effect"] = "angelwing"


--财富凭证合成

tCoinCarnival_Data["Compose"] = {}
tCoinCarnival_Data["Compose"]["LogId"] = 12001506
tCoinCarnival_Data["Compose"]["DeleteItem"] = {}
tCoinCarnival_Data["Compose"]["DeleteItem"][1] = {}
tCoinCarnival_Data["Compose"]["DeleteItem"][1]["Id"] = 3322485 -- 紫色积分凭证
tCoinCarnival_Data["Compose"]["DeleteItem"][2] = {}
tCoinCarnival_Data["Compose"]["DeleteItem"][2]["Id"] = 3322486 -- 蓝色积分凭证
tCoinCarnival_Data["Compose"]["DeleteItem"][3] = {}
tCoinCarnival_Data["Compose"]["DeleteItem"][3]["Id"] = 3322487 -- 绿色积分凭证
tCoinCarnival_Data["Compose"]["RewardItem"] = {}
tCoinCarnival_Data["Compose"]["RewardItem"][1] = {}
tCoinCarnival_Data["Compose"]["RewardItem"][1]["Id"] = 3322488 -- 财富积分凭证
tCoinCarnival_Data["Compose"]["RewardItem"][1]["Attr"] = "0 1" -- 财富积分凭证*1
tCoinCarnival_Data["Compose"]["RewardEffect"] = {}
tCoinCarnival_Data["Compose"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data["Compose"]["RewardEffect"]["Effect"] = "angelwing"


tCoinCarnival_Data["Log"] = {}
tCoinCarnival_Data["Log"]["Overtime"]="0,0,%d,%d,12001506,1,0,0"

tCoinCarnival_Data["Web"]="https://coevent.99.com/silvercarnival1907/client/"


tCoinCarnival_Data["DemonBox"] = {}

tCoinCarnival_Data["DemonBox"][1] = {}
tCoinCarnival_Data["DemonBox"][1]["MapId"] = 1002
tCoinCarnival_Data["DemonBox"][1]["MapXmin"] = 140
tCoinCarnival_Data["DemonBox"][1]["MapXmax"] = 540
tCoinCarnival_Data["DemonBox"][1]["MapYmin"] = 150
tCoinCarnival_Data["DemonBox"][1]["MapYmax"] = 570

tCoinCarnival_Data["DemonBox"][2] = {}
tCoinCarnival_Data["DemonBox"][2]["MapId"] = 1011
tCoinCarnival_Data["DemonBox"][2]["MapXmin"] = 151
tCoinCarnival_Data["DemonBox"][2]["MapXmax"] = 249
tCoinCarnival_Data["DemonBox"][2]["MapYmin"] = 192
tCoinCarnival_Data["DemonBox"][2]["MapYmax"] = 298

tCoinCarnival_Data["DemonBox"][3] = {}
tCoinCarnival_Data["DemonBox"][3]["MapId"] = 1020
tCoinCarnival_Data["DemonBox"][3]["MapXmin"] = 514
tCoinCarnival_Data["DemonBox"][3]["MapXmax"] = 590
tCoinCarnival_Data["DemonBox"][3]["MapYmin"] = 482
tCoinCarnival_Data["DemonBox"][3]["MapYmax"] = 618

tCoinCarnival_Data["DemonBox"][4] = {}
tCoinCarnival_Data["DemonBox"][4]["MapId"] = 1000
tCoinCarnival_Data["DemonBox"][4]["MapXmin"] = 442
tCoinCarnival_Data["DemonBox"][4]["MapXmax"] = 547
tCoinCarnival_Data["DemonBox"][4]["MapYmin"] = 535
tCoinCarnival_Data["DemonBox"][4]["MapYmax"] = 702

tCoinCarnival_Data["DemonBox"][5] = {}
tCoinCarnival_Data["DemonBox"][5]["MapId"] = 1015
tCoinCarnival_Data["DemonBox"][5]["MapXmin"] = 683
tCoinCarnival_Data["DemonBox"][5]["MapXmax"] = 783
tCoinCarnival_Data["DemonBox"][5]["MapYmin"] = 499
tCoinCarnival_Data["DemonBox"][5]["MapYmax"] = 617

tCoinCarnival_Data["DemonBox"][6] = {}
tCoinCarnival_Data["DemonBox"][6]["MapId"] = 1039
tCoinCarnival_Data["DemonBox"][7] = {}
tCoinCarnival_Data["DemonBox"][7]["MapId"] = 1006
tCoinCarnival_Data["DemonBox"][8] = {}
tCoinCarnival_Data["DemonBox"][8]["MapId"] = 1511
tCoinCarnival_Data["DemonBox"][9] = {}
tCoinCarnival_Data["DemonBox"][9]["MapId"] = 1008
tCoinCarnival_Data["DemonBox"][10] = {}
tCoinCarnival_Data["DemonBox"][10]["MapId"] = 1858
tCoinCarnival_Data["DemonBox"][11] = {}
tCoinCarnival_Data["DemonBox"][11]["MapId"] = 3053
tCoinCarnival_Data["DemonBox"][12] = {}
tCoinCarnival_Data["DemonBox"][12]["MapId"] = 1860
tCoinCarnival_Data["DemonBox"][13] = {}
tCoinCarnival_Data["DemonBox"][13]["MapId"] = 1950
tCoinCarnival_Data["DemonBox"][14] = {}
tCoinCarnival_Data["DemonBox"][14]["MapId"] = 1036
tCoinCarnival_Data["DemonBox"][15] = {}
tCoinCarnival_Data["DemonBox"][15]["MapId"] = 10364

tCoinCarnival_Data["DemonBox"]["Monster"]={}
tCoinCarnival_Data["DemonBox"]["Monster"][3322481]={}
tCoinCarnival_Data["DemonBox"]["Monster"][3322481]["MonsterId"] = 5693
tCoinCarnival_Data["DemonBox"]["Monster"][3322481]["GenId"] = 28675

tCoinCarnival_Data["DemonBox"]["Monster"][3322482]={}
tCoinCarnival_Data["DemonBox"]["Monster"][3322482]["MonsterId"] = 5694
tCoinCarnival_Data["DemonBox"]["Monster"][3322482]["GenId"] = 28676

tCoinCarnival_Data["DemonBox"]["Monster"][3322483]={}
tCoinCarnival_Data["DemonBox"]["Monster"][3322483]["MonsterId"] = 5695
tCoinCarnival_Data["DemonBox"]["Monster"][3322483]["GenId"] = 28677

tCoinCarnival_Data["DemonBox"]["Monster"][3322484]={}
tCoinCarnival_Data["DemonBox"]["Monster"][3322484]["MonsterId"] = 5696
tCoinCarnival_Data["DemonBox"]["Monster"][3322484]["GenId"] = 28678

tCoinCarnival_Data["DemonBox"]["KillMonster"]={}
tCoinCarnival_Data["DemonBox"]["KillMonster"][5693]=3322787
tCoinCarnival_Data["DemonBox"]["KillMonster"][5694]=3322788
tCoinCarnival_Data["DemonBox"]["KillMonster"][5695]=3322789
tCoinCarnival_Data["DemonBox"]["KillMonster"][5696]=3322790


--凡品锁妖盒掉落
tCoinCarnival_Data[3322787]={}
tCoinCarnival_Data[3322787][1] = {}
tCoinCarnival_Data[3322787][1]["ItemChanceSum"] = 10000
tCoinCarnival_Data[3322787][1]["LogId"] = 12001506

-- 0.01% 1亿3800万 
-- 修改：0%
tCoinCarnival_Data[3322787][1][1] = {}
tCoinCarnival_Data[3322787][1][1]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][1]["ItemChance"] = 0
tCoinCarnival_Data[3322787][1][1]["RewardMoney"] = {}
tCoinCarnival_Data[3322787][1][1]["RewardMoney"]["Value"] = 138000000
tCoinCarnival_Data[3322787][1][1]["Gold"] = true
tCoinCarnival_Data[3322787][1][1]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 2700W
-- 修改：0%
tCoinCarnival_Data[3322787][1][2] = {}
tCoinCarnival_Data[3322787][1][2]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][2]["ItemChance"] = 0
tCoinCarnival_Data[3322787][1][2]["RewardMoney"] = {}
tCoinCarnival_Data[3322787][1][2]["RewardMoney"]["Value"] = 27000000
tCoinCarnival_Data[3322787][1][2]["Gold"] = true
tCoinCarnival_Data[3322787][1][2]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 37% 200W
-- 修改：30%
tCoinCarnival_Data[3322787][1][3] = {}
tCoinCarnival_Data[3322787][1][3]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][3]["ItemChance"] = 3000
tCoinCarnival_Data[3322787][1][3]["RewardMoney"] = {}
tCoinCarnival_Data[3322787][1][3]["RewardMoney"]["Value"] = 2000000
tCoinCarnival_Data[3322787][1][3]["Gold"] = true
tCoinCarnival_Data[3322787][1][3]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 100W
-- 修改：20%
tCoinCarnival_Data[3322787][1][4] = {}
tCoinCarnival_Data[3322787][1][4]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][4]["ItemChance"] = 2000
tCoinCarnival_Data[3322787][1][4]["RewardMoney"] = {}
tCoinCarnival_Data[3322787][1][4]["RewardMoney"]["Value"] = 1000000
tCoinCarnival_Data[3322787][1][4]["Gold"] = true
tCoinCarnival_Data[3322787][1][4]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 50W
tCoinCarnival_Data[3322787][1][5] = {}
tCoinCarnival_Data[3322787][1][5]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][5]["ItemChance"] = 1000
tCoinCarnival_Data[3322787][1][5]["RewardMoney"] = {}
tCoinCarnival_Data[3322787][1][5]["RewardMoney"]["Value"] = 500000
tCoinCarnival_Data[3322787][1][5]["Gold"] = true
tCoinCarnival_Data[3322787][1][5]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 39% 100气力
-- 修改：40%
tCoinCarnival_Data[3322787][1][6] = {}
tCoinCarnival_Data[3322787][1][6]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][6]["ItemChance"] = 4000
tCoinCarnival_Data[3322787][1][6]["RewardStrengthValue"] = {}
tCoinCarnival_Data[3322787][1][6]["RewardStrengthValue"]["Value"] = 100
tCoinCarnival_Data[3322787][1][6]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 1% 1张积分凭证B
tCoinCarnival_Data[3322787][1][7] = {}
tCoinCarnival_Data[3322787][1][7]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322787][1][7]["ItemChance"] = 0
tCoinCarnival_Data[3322787][1][7]["RewardItem"] = {}
tCoinCarnival_Data[3322787][1][7]["RewardItem"][1]={}
tCoinCarnival_Data[3322787][1][7]["RewardItem"][1]["Id"] = 3322486 
tCoinCarnival_Data[3322787][1][7]["RewardItem"][1]["Attr"] = "0 1" 
tCoinCarnival_Data[3322787][1][7]["RewardEffect"] = {}
tCoinCarnival_Data[3322787][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322787][1][7]["RewardEffect"]["Effect"] = "angelwing"

--良品锁妖盒
tCoinCarnival_Data[3322788]={}
tCoinCarnival_Data[3322788][1] = {}
tCoinCarnival_Data[3322788][1]["ItemChanceSum"] = 10000
tCoinCarnival_Data[3322788][1]["LogId"] = 12001506

-- 0.01% 6亿9000万
-- 修改：0%
tCoinCarnival_Data[3322788][1][1] = {}
tCoinCarnival_Data[3322788][1][1]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][1]["ItemChance"] = 0
tCoinCarnival_Data[3322788][1][1]["RewardMoney"] = {}
tCoinCarnival_Data[3322788][1][1]["RewardMoney"]["Value"] = 690000000
tCoinCarnival_Data[3322788][1][1]["Gold"] = true
tCoinCarnival_Data[3322788][1][1]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 1亿3500万
-- 修改：0%
tCoinCarnival_Data[3322788][1][2] = {}
tCoinCarnival_Data[3322788][1][2]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][2]["ItemChance"] = 0
tCoinCarnival_Data[3322788][1][2]["RewardMoney"] = {}
tCoinCarnival_Data[3322788][1][2]["RewardMoney"]["Value"] = 135000000
tCoinCarnival_Data[3322788][1][2]["Gold"] = true
tCoinCarnival_Data[3322788][1][2]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 37% 1000W
-- 修改：30%
tCoinCarnival_Data[3322788][1][3] = {}
tCoinCarnival_Data[3322788][1][3]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][3]["ItemChance"] = 3000
tCoinCarnival_Data[3322788][1][3]["RewardMoney"] = {}
tCoinCarnival_Data[3322788][1][3]["RewardMoney"]["Value"] = 10000000
tCoinCarnival_Data[3322788][1][3]["Gold"] = true
tCoinCarnival_Data[3322788][1][3]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 500W
-- 修改：20%
tCoinCarnival_Data[3322788][1][4] = {}
tCoinCarnival_Data[3322788][1][4]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][4]["ItemChance"] = 2000
tCoinCarnival_Data[3322788][1][4]["RewardMoney"] = {}
tCoinCarnival_Data[3322788][1][4]["RewardMoney"]["Value"] = 5000000
tCoinCarnival_Data[3322788][1][4]["Gold"] = true
tCoinCarnival_Data[3322788][1][4]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 250W
tCoinCarnival_Data[3322788][1][5] = {}
tCoinCarnival_Data[3322788][1][5]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][5]["ItemChance"] = 1000
tCoinCarnival_Data[3322788][1][5]["RewardMoney"] = {}
tCoinCarnival_Data[3322788][1][5]["RewardMoney"]["Value"] = 2500000
tCoinCarnival_Data[3322788][1][5]["Gold"] = true
tCoinCarnival_Data[3322788][1][5]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 35% 200气力
-- 修改：40%
tCoinCarnival_Data[3322788][1][6] = {}
tCoinCarnival_Data[3322788][1][6]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][6]["ItemChance"] = 4000
tCoinCarnival_Data[3322788][1][6]["RewardStrengthValue"] = {}
tCoinCarnival_Data[3322788][1][6]["RewardStrengthValue"]["Value"] = 200
tCoinCarnival_Data[3322788][1][6]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 5% 1张积分凭证B
tCoinCarnival_Data[3322788][1][7] = {}
tCoinCarnival_Data[3322788][1][7]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322788][1][7]["ItemChance"] = 0
tCoinCarnival_Data[3322788][1][7]["RewardItem"] = {}
tCoinCarnival_Data[3322788][1][7]["RewardItem"][1]={}
tCoinCarnival_Data[3322788][1][7]["RewardItem"][1]["Id"] = 3322486 
tCoinCarnival_Data[3322788][1][7]["RewardItem"][1]["Attr"] = "0 1" 
tCoinCarnival_Data[3322788][1][7]["RewardEffect"] = {}
tCoinCarnival_Data[3322788][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322788][1][7]["RewardEffect"]["Effect"] = "angelwing"

--优品锁妖盒
tCoinCarnival_Data[3322789]={}
tCoinCarnival_Data[3322789][1] = {}
tCoinCarnival_Data[3322789][1]["ItemChanceSum"] = 10000
tCoinCarnival_Data[3322789][1]["LogId"] = 12001506

-- 0.01% 13亿8000万
-- 修改：0%
tCoinCarnival_Data[3322789][1][1] = {}
tCoinCarnival_Data[3322789][1][1]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][1]["ItemChance"] = 0
tCoinCarnival_Data[3322789][1][1]["RewardMoney"] = {}
tCoinCarnival_Data[3322789][1][1]["RewardMoney"]["Value"] = 1380000000
tCoinCarnival_Data[3322789][1][1]["Gold"] = true
tCoinCarnival_Data[3322789][1][1]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 2亿7000W
-- 修改：0%
tCoinCarnival_Data[3322789][1][2] = {}
tCoinCarnival_Data[3322789][1][2]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][2]["ItemChance"] = 0
tCoinCarnival_Data[3322789][1][2]["RewardMoney"] = {}
tCoinCarnival_Data[3322789][1][2]["RewardMoney"]["Value"] = 270000000
tCoinCarnival_Data[3322789][1][2]["Gold"] = true
tCoinCarnival_Data[3322789][1][2]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 37% 2000W
-- 修改：30%
tCoinCarnival_Data[3322789][1][3] = {}
tCoinCarnival_Data[3322789][1][3]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][3]["ItemChance"] = 3000
tCoinCarnival_Data[3322789][1][3]["RewardMoney"] = {}
tCoinCarnival_Data[3322789][1][3]["RewardMoney"]["Value"] = 20000000
tCoinCarnival_Data[3322789][1][3]["Gold"] = true
tCoinCarnival_Data[3322789][1][3]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 1000W
-- 修改：20%
tCoinCarnival_Data[3322789][1][4] = {}
tCoinCarnival_Data[3322789][1][4]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][4]["ItemChance"] = 2000
tCoinCarnival_Data[3322789][1][4]["RewardMoney"] = {}
tCoinCarnival_Data[3322789][1][4]["RewardMoney"]["Value"] = 10000000
tCoinCarnival_Data[3322789][1][4]["Gold"] = true
tCoinCarnival_Data[3322789][1][4]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 500W
tCoinCarnival_Data[3322789][1][5] = {}
tCoinCarnival_Data[3322789][1][5]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][5]["ItemChance"] = 1000
tCoinCarnival_Data[3322789][1][5]["RewardMoney"] = {}
tCoinCarnival_Data[3322789][1][5]["RewardMoney"]["Value"] = 5000000
tCoinCarnival_Data[3322789][1][5]["Gold"] = true
tCoinCarnival_Data[3322789][1][5]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 35% 500气力
-- 修改：40%
tCoinCarnival_Data[3322789][1][6] = {}
tCoinCarnival_Data[3322789][1][6]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][6]["ItemChance"] = 4000
tCoinCarnival_Data[3322789][1][6]["RewardStrengthValue"] = {}
tCoinCarnival_Data[3322789][1][6]["RewardStrengthValue"]["Value"] = 500
tCoinCarnival_Data[3322789][1][6]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 5% 5张积分凭证B
tCoinCarnival_Data[3322789][1][7] = {}
tCoinCarnival_Data[3322789][1][7]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322789][1][7]["ItemChance"] = 0
tCoinCarnival_Data[3322789][1][7]["RewardItem"] = {}
tCoinCarnival_Data[3322789][1][7]["RewardItem"][1]={}
tCoinCarnival_Data[3322789][1][7]["RewardItem"][1]["Id"] = 3322486 
tCoinCarnival_Data[3322789][1][7]["RewardItem"][1]["Attr"] = "0 5" 
tCoinCarnival_Data[3322789][1][7]["RewardEffect"] = {}
tCoinCarnival_Data[3322789][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322789][1][7]["RewardEffect"]["Effect"] = "angelwing"

--精品锁妖盒
tCoinCarnival_Data[3322790]={}
tCoinCarnival_Data[3322790][1] = {}
tCoinCarnival_Data[3322790][1]["ItemChanceSum"] = 10000
tCoinCarnival_Data[3322790][1]["LogId"] = 12001506

-- 0.03% 21亿
-- 修改：0%
tCoinCarnival_Data[3322790][1][1] = {}
tCoinCarnival_Data[3322790][1][1]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][1]["ItemChance"] = 0
tCoinCarnival_Data[3322790][1][1]["RewardMoney"] = {}
tCoinCarnival_Data[3322790][1][1]["RewardMoney"]["Value"] = 2100000000
tCoinCarnival_Data[3322790][1][1]["Gold"] = true
tCoinCarnival_Data[3322790][1][1]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][1]["RewardEffect"]["Effect"] = "angelwing"

-- 0.1% 13.5亿
-- 修改：0%
tCoinCarnival_Data[3322790][1][2] = {}
tCoinCarnival_Data[3322790][1][2]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][2]["ItemChance"] = 0
tCoinCarnival_Data[3322790][1][2]["RewardMoney"] = {}
tCoinCarnival_Data[3322790][1][2]["RewardMoney"]["Value"] = 1350000000
tCoinCarnival_Data[3322790][1][2]["Gold"] = true
tCoinCarnival_Data[3322790][1][2]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][2]["RewardEffect"]["Effect"] = "angelwing"

-- 36.98% 1亿
-- 修改：30%
tCoinCarnival_Data[3322790][1][3] = {}
tCoinCarnival_Data[3322790][1][3]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][3]["ItemChance"] = 3000
tCoinCarnival_Data[3322790][1][3]["RewardMoney"] = {}
tCoinCarnival_Data[3322790][1][3]["RewardMoney"]["Value"] = 100000000
tCoinCarnival_Data[3322790][1][3]["Gold"] = true
tCoinCarnival_Data[3322790][1][3]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 12.89% 5000W
-- 修改：20%
tCoinCarnival_Data[3322790][1][4] = {}
tCoinCarnival_Data[3322790][1][4]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][4]["ItemChance"] = 2000
tCoinCarnival_Data[3322790][1][4]["RewardMoney"] = {}
tCoinCarnival_Data[3322790][1][4]["RewardMoney"]["Value"] = 50000000
tCoinCarnival_Data[3322790][1][4]["Gold"] = true
tCoinCarnival_Data[3322790][1][4]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 10% 2500W
tCoinCarnival_Data[3322790][1][5] = {}
tCoinCarnival_Data[3322790][1][5]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][5]["ItemChance"] = 1000
tCoinCarnival_Data[3322790][1][5]["RewardMoney"] = {}
tCoinCarnival_Data[3322790][1][5]["RewardMoney"]["Value"] = 25000000
tCoinCarnival_Data[3322790][1][5]["Gold"] = true
tCoinCarnival_Data[3322790][1][5]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][5]["RewardEffect"]["Effect"] = "angelwing"

-- 35% 2000气力
-- 修改：40%
tCoinCarnival_Data[3322790][1][6] = {}
tCoinCarnival_Data[3322790][1][6]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][6]["ItemChance"] = 4000
tCoinCarnival_Data[3322790][1][6]["RewardStrengthValue"] = {}
tCoinCarnival_Data[3322790][1][6]["RewardStrengthValue"]["Value"] = 2000
tCoinCarnival_Data[3322790][1][6]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][6]["RewardEffect"]["Effect"] = "angelwing"

-- 5% 10张积分凭证B
tCoinCarnival_Data[3322790][1][7] = {}
tCoinCarnival_Data[3322790][1][7]["RandomItemChanceType"] = 2
tCoinCarnival_Data[3322790][1][7]["ItemChance"] = 0
tCoinCarnival_Data[3322790][1][7]["RewardItem"] = {}
tCoinCarnival_Data[3322790][1][7]["RewardItem"][1]={}
tCoinCarnival_Data[3322790][1][7]["RewardItem"][1]["Id"] = 3322486 
tCoinCarnival_Data[3322790][1][7]["RewardItem"][1]["Attr"] = "0 10" 
tCoinCarnival_Data[3322790][1][7]["RewardEffect"] = {}
tCoinCarnival_Data[3322790][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCoinCarnival_Data[3322790][1][7]["RewardEffect"]["Effect"] = "angelwing"

tCoinCarnival_Data["MaxMoney"]={}
tCoinCarnival_Data["MaxMoney"][3322787]=27000000
tCoinCarnival_Data["MaxMoney"][3322788]=690000000
tCoinCarnival_Data["MaxMoney"][3322789]=1380000000
tCoinCarnival_Data["MaxMoney"][3322790]=2100000000
----------------------------------逻辑部分---------------------------------------------
function CoinCarnival_GetWheelCheck(nItemID)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	--判断背包是否有转盘
	if not Item_ChkMulItem(nItemID,nItemID,1) then
		--是否为首次领取
		local nGetRewardEvent=tCoinCarnival_Data["Stc"]["GetReward"]["EventType"]
		local nGetRewardType=tCoinCarnival_Data["Stc"]["GetReward"]["DataType"]
		
		if Get_UserStatisticValue(nGetRewardEvent,nGetRewardType) < 1 then 
			tNpcGossip[24483]["OptionFunc211"]="CoinCarnival_GetWheel</N>" .. nItemID
			LinkNpcGossipFunc_New(24483,"2-1")
		else
			tNpcGossip[24483]["OptionFunc221"]="CoinCarnival_GetWheel</N>" .. nItemID
			LinkNpcGossipFunc_New(24483,"2-2")
		end 
	else
		LinkNpcGossipFunc_New(24483,"2-3")
	end 
end 


function CoinCarnival_GetWheel(nItemID)	
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	
	--是否为首次领取
	local nGetRewardEvent=tCoinCarnival_Data["Stc"]["GetReward"]["EventType"]
	local nGetRewardType=tCoinCarnival_Data["Stc"]["GetReward"]["DataType"]
	
	--判断背包是否有转盘
	if not Item_ChkMulItem(nItemID,nItemID,1) then

		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tCoinCarnival_Data[nItemID])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tCoinCarnival_Data[nItemID])
		local nSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nSpace) then
			return Sys_MsgBox(tCoinCarnival_Text["SystemTips"]["NoSpace"])
		end
		
		--给转盘
		if RewardTemplate_UseItem(tCoinCarnival_Data[nItemID]) then
			if Get_UserStatisticValue(nGetRewardEvent,nGetRewardType) < 1 then 
				Task_AddStatistic(nGetRewardEvent,nGetRewardType,1,1)
				Task_SetStcTimestamp(nGetRewardEvent,nGetRewardType,0)
				return
			end 
		end
			
	else
		LinkNpcGossipFunc_New(24483,"2-3")
	end 
end 

function CoinCarnival_LotteryBoxShow(nItemID)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	
	local sItemName=tCoinCarnival_Text["Item"][nItemID]["ItemName"]
	local sItemDesc=tCoinCarnival_Text["Item"][nItemID]["ItemDesc"]
	local sNeedMoney=tCoinCarnival_Text["Item"][nItemID]["ItemPrice"]
	
	tNpcGossip[24483]["Text411"] = string.format(tCoinCarnival_Text[24483]["Text411"], sItemName ,sNeedMoney,sItemDesc)
	tNpcGossip[24483]["OptionFunc411"]="CoinCarnival_LotteryBoxBuyCheck</S>" .. sItemName .. "</S>" .. sNeedMoney .. "</N>" .. nItemID
	
	LinkNpcGossipFunc_New(24483,"4-1")
end 

function CoinCarnival_LotteryBoxBuyCheck(sItemName,sNeedMoney,nItemID)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	
	--判断金币是否充足
	if not User_CanPutMoney2Bag(-tCoinCarnival_Data["Price"][nItemID]) then
		Sys_MsgBox(tCoinCarnival_Text["SystemTips"]["NoMoney"])
		return 
	end
	
	tNpcGossip[24483]["Text511"] = string.format(tCoinCarnival_Text[24483]["Text511"], sItemName ,sNeedMoney)
	tNpcGossip[24483]["OptionFunc511"]="CoinCarnival_LotteryBoxBuy</N>" .. nItemID
	
	LinkNpcGossipFunc_New(24483,"5-1")
end 

function CoinCarnival_LotteryBoxBuy(nItemID)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	
	--判断金币是否充足
	if not User_CanPutMoney2Bag(-tCoinCarnival_Data["Price"][nItemID]) then
		return Sys_MsgBox(tCoinCarnival_Text["SystemTips"]["NoMoney"])
	end
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tCoinCarnival_Data["LotteryBox"][nItemID])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tCoinCarnival_Data["LotteryBox"][nItemID])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(tCoinCarnival_Text["SystemTips"]["NoSpace"])
	end
	
	--购买
	if RewardTemplate_UseItem(tCoinCarnival_Data["LotteryBox"][nItemID]) then
		return
	end
	
end 

	
--打开翻牌界面
function CoinCarnival_CardLottery(nType)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	
	User_OpenRewardInterface(nType)
end 

--重抽
function CoinCarnival_OpenCards(nNowUserId,nType)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end

	local nUserId = nNowUserId or Get_UserId()
	
	User_OpenRewardInterface(nType,nUserId)
end

--上交凭证
function CoinCarnival_HandIn(nItemID,nNum)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end

	local nHandInEvent=tCoinCarnival_Data["Stc"]["HandIn"]["EventType"]
	local nHandInType=tCoinCarnival_Data["Stc"]["HandIn"]["DataType"]
	
	local nOwnNum = Get_CountItemType(nItemID,0)
	--上交全部，背包无物品///部分上交，物品数量不足
	if (nNum==0 and nOwnNum==0) or (nNum~=0 and not Item_ChkMulItem(nItemID,nItemID,nNum)) then
		return LinkNpcGossipFunc_New(24484,"3-2")
	end
	
	local nHandInNum=0
	if nNum==0 then 
		nHandInNum=nOwnNum
	else
		nHandInNum=nNum
	end 
	
	local tReward=CommonFunc_Copy(tCoinCarnival_Data["HandIn"]) 
	tReward["DeleteItem"][1]["ItemNum"]=nHandInNum
	tReward["EmoneyLog"]=string.format(tCoinCarnival_Data["HandIn"]["EmoneyLog"],nHandInNum)
	
	--上交
	if RewardTemplate_UseItem(tReward) then
		--加掩码
		Task_AddStatistic(nHandInEvent,nHandInType,nHandInNum,1)
		Task_SetStcTimestamp(nHandInEvent,nHandInType,0)
		
		tNpcGossip[24484]["Text311"] = string.format(tCoinCarnival_Text[24484]["Text311"], nHandInNum)
		tNpcGossip[24484]["OptionFunc311"]="CoinCarnival_OffLineLink"
	
		LinkNpcGossipFunc_New(24484,"3-1")
	end
end
		
--锁妖盒使用
function CoinCarnival_LotteryBoxUse(nItemId)
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tCoinCarnival_Data[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["UseNoSpace"])
		return 
	end
	
	--金币上限判断
	if not User_CanPutMoney2Bag(tCoinCarnival_Data["MaxMoney"][nItemId]) then
		User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["MoneyFull"])
		return 
	end 
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tCoinCarnival_Data[nItemId],1)
	end 
end 

--寻路到点石成金npc
function CoinCarnival_FindDSCJ(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	
	--寻路至npc处
	NpcPosition_PathFind(nNpcId)
end

function CoinCarnival_OffLineLink()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return 
	end
	local sWebPage =tCoinCarnival_Data["Web"]
	User_SendWebPage(sWebPage)
end

function CoinCarnival_MonsterCall(nItemId)
	local nUserMapId = Get_UserMapId()
	local nMapDoc = Get_MapDoc(nUserMapId)
	local nPlayerX = Get_UserPositionX()
	local nPlayerY = Get_UserPositionY()
	local nMonsterId = tCoinCarnival_Data["DemonBox"]["Monster"][nItemId]["MonsterId"]
	local nGenId = tCoinCarnival_Data["DemonBox"]["Monster"][nItemId]["GenId"]
	
	for i = 1 , 5 do
		local nMapId = tCoinCarnival_Data["DemonBox"][i]["MapId"]
		local nMinX = tCoinCarnival_Data["DemonBox"][i]["MapXmin"]
		local nMaxX = tCoinCarnival_Data["DemonBox"][i]["MapXmax"]
		local nMinY = tCoinCarnival_Data["DemonBox"][i]["MapYmin"]
		local nMaxY = tCoinCarnival_Data["DemonBox"][i]["MapYmax"]
		
		
		
		if nUserMapId==nMapId then 
			if nMinX < nPlayerX and nPlayerX < nMaxX and nMinY < nPlayerY and nPlayerY <nMaxY then 
				User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["unbelievable"])
				return
			end 
		end 
	end 
	
	for j = 6 , 15 do 
		local nMapId1 = tCoinCarnival_Data["DemonBox"][j]["MapId"]
		if nUserMapId==nMapId1 then 
			User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["unbelievable"])
			return 
		end 
	end 
	
	if nMapDoc == 900000 then 
		User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["unbelievable"])
		return
	end 	
	
	--刷怪
	if Item_ChkItem(nItemId) then 
		if Item_DelItem(nItemId) then
			Monster_AddMonster(nUserMapId,nPlayerX,nPlayerY,nGenId,nMonsterId)
		end 
	else
		return
	end
end 
	
--杀怪
function CoinCarnival_KillMonster(nMonsterId)

	local nItemId=tCoinCarnival_Data["DemonBox"]["KillMonster"][nMonsterId]
	
	local nLogText = "0,0,0,0,12001506,2," .. nItemId .. ",1"
	Monster_SysDropItem(nItemId)
	Sys_SaveActionFestivalLog(nLogText)
end 
	
----------------------------------NPC部分---------------------------------------------
--维克托
tNpcFace[5116] = 50
tNpcGossip[24483]= tNpcGossip[24483] or DefaultNpc:new{}
tNpcGossip[24483]["OptionHidden"] = 1
tNpcGossip[24483]["DialogueText"] = tCoinCarnival_Text[24483]

--活动前
tNpcGossip[24483]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24483]["tOption1-1"] = {111}
tNpcGossip[24483]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CoinCarnival"]["ActTime"])
end


--活动后
tNpcGossip[24483]["Text1-2"] = {121}
tNpcGossip[24483]["tOption1-2"] = {121}
tNpcGossip[24483]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["CoinCarnival"]["ActTime"])
end

--活动中
tNpcGossip[24483]["Text1-3"] = {131,132,134,135}
tNpcGossip[24483]["tOption1-3"] = {134}
tNpcGossip[24483]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return false
	else
		--是否已领过转盘
		-- local nGetRewardEvent=tCoinCarnival_Data["Stc"]["GetReward"]["EventType"]
		-- local nGetRewardType=tCoinCarnival_Data["Stc"]["GetReward"]["DataType"]
		
		-- if Get_UserStatisticValue(nGetRewardEvent,nGetRewardType) >= 1 then 
			-- tNpcGossip[24483]["Option131"] = tCoinCarnival_Text[24483]["Option135"]
		-- else
			-- tNpcGossip[24483]["Option131"] = tCoinCarnival_Text[24483]["Option131"]
		-- end 
		return true
	end 
end 

tNpcGossip[24483]["OptionFunc131"] = "CoinCarnival_GetWheelCheck</N>3326468"
tNpcGossip[24483]["OptionPoint132"] = "3-1"
tNpcGossip[24483]["OptionFunc133"] = "CoinCarnival_CardLottery</N>40"
tNpcGossip[24483]["OptionFunc134"] = "CoinCarnival_FindDSCJ</N>23704"

--领取成功
tNpcGossip[24483]["Text2-1"] = {211,212}
tNpcGossip[24483]["tOption2-1"] = {211}

--补领成功
tNpcGossip[24483]["Text2-2"] = {221,222}
tNpcGossip[24483]["tOption2-2"] = {221}

--身上已有
tNpcGossip[24483]["Text2-3"] = {231,232}
tNpcGossip[24483]["tOption2-3"] = {231}

--购买银两锁妖盒
tNpcGossip[24483]["Text3-1"] = {311}
tNpcGossip[24483]["tOption3-1"] = {311,312,313,314}
tNpcGossip[24483]["OptionFunc311"] = "CoinCarnival_LotteryBoxShow</N>3322481"
tNpcGossip[24483]["OptionFunc312"] = "CoinCarnival_LotteryBoxShow</N>3322482"
tNpcGossip[24483]["OptionFunc313"] = "CoinCarnival_LotteryBoxShow</N>3322483"
tNpcGossip[24483]["OptionFunc314"] = "CoinCarnival_LotteryBoxShow</N>3322484"

tNpcGossip[24483]["Text4-1"] = {411}
tNpcGossip[24483]["tOption4-1"] = {411,412}

tNpcGossip[24483]["Text5-1"] = {511}
tNpcGossip[24483]["tOption5-1"] = {511,512}


--艾达
tNpcFace[5117] = 119
tNpcGossip[24484]= tNpcGossip[24484] or DefaultNpc:new{}
tNpcGossip[24484]["OptionHidden"] = 1
tNpcGossip[24484]["DialogueText"] = tCoinCarnival_Text[24484]

--活动前
tNpcGossip[24484]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24484]["tOption1-1"] = {111}
tNpcGossip[24484]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CoinCarnival"]["ActTime"])
end

--活动后
tNpcGossip[24484]["Text1-2"] = {121}
tNpcGossip[24484]["tOption1-2"] = {121}
tNpcGossip[24484]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["CoinCarnival"]["ActTime"])
end

--活动中
tNpcGossip[24484]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[24484]["tOption1-3"] = {131,132}
tNpcGossip[24484]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["CoinCarnival"]["ActTime"])  then
		return false
	else
		return true
	end 
end 

tNpcGossip[24484]["OptionPoint131"] = "2-1"
tNpcGossip[24484]["OptionFunc132"] = "CoinCarnival_OffLineLink"

tNpcGossip[24484]["Text2-1"] = {211}
tNpcGossip[24484]["tOption2-1"] = {211,212,213}
tNpcGossip[24484]["OptionFunc211"] = "CoinCarnival_HandIn</N>3322488</N>1"
tNpcGossip[24484]["OptionFunc212"] = "CoinCarnival_HandIn</N>3322488</N>10"
tNpcGossip[24484]["OptionFunc213"] = "CoinCarnival_HandIn</N>3322488</N>0"

tNpcGossip[24484]["Text3-1"] = {311}
tNpcGossip[24484]["tOption3-1"] = {311,312}

tNpcGossip[24484]["Text3-2"] = {321}
tNpcGossip[24484]["tOption3-2"] = {321}
---------------------------------物品部分---------------------------------------------
--凭证使用
tItem[3322485] = tItem[3322485] or {}
tItem[3322485]["Function"] = function(nItemId,sItemName)
	
	local tReward = CommonFunc_Copy(tCoinCarnival_Data["Compose"]["DeleteItem"])
	
	-- 过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["CoinCarnival"]["ActTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tCoinCarnival_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			return
		end 
	end 
	
	-- 检测是否有对应凭证
	for i, v in ipairs(tReward) do
		if not Item_ChkMulItem(tReward[i]["Id"], tReward[i]["Id"], 1) then
			return User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["NoItem"])
		end
	end
	
	if RewardTemplate_UseItemAndMsg(tCoinCarnival_Data["Compose"]) then 
		return User_TalkChannel2005(tCoinCarnival_Text["SystemTips"]["Succeed"])
	end 
end

tItem[3322486] = tItem[3322485]
tItem[3322487] = tItem[3322485]

tItem[3322488] = tItem[3322488] or {}
tItem[3322488]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["CoinCarnival"]["ActTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tCoinCarnival_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			return
		end 
	end 
	
	--寻路到艾达
	NpcPosition_PathFind(24484)
		
end 

--锁妖盒掉落使用
tItem[3322787] = tItem[3322787] or {}
tItem[3322787]["Function"] = function(nItemId,sItemName)
	CoinCarnival_LotteryBoxUse(nItemId)
end 
tItem[3322788] = tItem[3322787]
tItem[3322789] = tItem[3322787]
tItem[3322790] = tItem[3322787]

--锁妖盒使用
tItemFace[3322481] = 2441
tItemFace[3322482] = 2442
tItemFace[3322483] = 2443
tItemFace[3322484] = 2444

for i =3322481,3322484 do
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] = tCoinCarnival_Text[i]
	tItem[i]["Text1-1"] = {111,112,113}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["OptionFunc111"] = "CoinCarnival_MonsterCall</N>" .. i
end 


--普通礼包使用
tItem[3322490] = tItem[3322490] or {}
tItem[3322490]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tCoinCarnival_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tCoinCarnival_Data[nItemId],nUserId,bJudge)
end

tItem[3322491] = tItem[3322490]
tItem[3322492] = tItem[3322490]
tItem[3322493] = tItem[3322490]
tItem[3322494] = tItem[3322490]
tItem[3322495] = tItem[3322490]
tItem[3322496] = tItem[3322490]
tItem[3322497] = tItem[3322490]
tItem[3322498] = tItem[3322490]
tItem[3322499] = tItem[3322490]
tItem[3322516] = tItem[3322490]

tItem[3322730] = tItem[3322490]
tItem[3322731] = tItem[3322490]
tItem[3322732] = tItem[3322490]

--转盘使用
tItem[3322480] = tItem[3322480] or {}
tItem[3322480]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(7048)
end

--十一月金币消耗活动
tItem[3326468] = tItem[3326468] or {}
tItem[3326468]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(7081)
end
------------------ 动态存储表清零------------------
tGlobalData_Info[53489] = {}
tGlobalData_Info[53489]["Time"] = {}
tGlobalData_Info[53489]["Time"]["ClearTime"] = {}
tGlobalData_Info[53489]["Time"]["ClearTime"][1] = "00:00 00:01"
tGlobalData_Info[53489]["Rest"] = {}
tGlobalData_Info[53489]["Rest"]["GlobalId"] = {53489}
tGlobalData_Info[53489]["Rest"]["Pos"] = {1,3}

---------------------------------怪物模板------------------------------------
local tCoinCarnival_KillMonster = {}
	tCoinCarnival_KillMonster["Function"] = CoinCarnival_KillMonster
	tCoinCarnival_KillMonster["MonsterId"] = {5693,5694,5695,5696}
table.insert(tMonsterDrop_AreaLoad,tCoinCarnival_KillMonster)


--------------------------------------翻牌器-------------------------------------------
tCardsLotteryAgainCost[40] = tCardsLotteryAgainCost[40] or {}
tCardsLotteryAgainCost[40]["tFunction"] = tCardsLotteryAgainCost[40]["tFunction"] or {}
table.insert(tCardsLotteryAgainCost[40]["tFunction"],CoinCarnival_OpenCards)