------------------------------------------------------------------------------------
--Name：            180809[简体征服][活动脚本]金币试炼盒制作
--Creator:      林旭

--Created:     2018-08-09
------------------------------------------------------------------------------------
-- 命名前缀：DemonBox_
-- stc 掩码说明
-- stc(182,06) 除妖值
-- 今日除妖值排行榜
-- [52946]第1~3玩家数据
-- [52947]第4~6玩家数据
-- [52948]第7~9玩家数据
-- [52949]第10玩家数据
-- 昨日除妖值排行榜
-- [52950]第1~3玩家数据
-- [52951]第4~6玩家数据
-- [52952]第7~9玩家数据
-- [52953]第10玩家数据
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tDemonBox_Constant = {}
	-- tDemonBox_Constant["BeforeActivityTime"] = tActivityTime["DemonBox"]["BeforeActivityTime"]
	tDemonBox_Constant["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
	-- tDemonBox_Constant["AfterActivityTime"] = tActivityTime["DemonBox"]["AfterActivityTime"]
	
	tDemonBox_Constant["RankList"] = 21856
	
	tDemonBox_Constant["EventType"] = 182
	tDemonBox_Constant["DataType"] = 06
	
	tDemonBox_Constant["KillMonster"] = {}
	tDemonBox_Constant["KillMonster"][1031] = 10
	tDemonBox_Constant["KillMonster"][1032] = 100
	tDemonBox_Constant["KillMonster"][1033] = 1000
	tDemonBox_Constant["KillMonster"][1034] = 10000
	
	tDemonBox_Constant["Price"] = {}
	tDemonBox_Constant["Price"][3310465] = 138000000
	tDemonBox_Constant["Price"][3310466] = 1380000000
	tDemonBox_Constant["Price"][3310467] = 13800000000
	tDemonBox_Constant["Price"][3310468] = 138000000000
	
	tDemonBox_Constant[3310465] = "3-1"
	tDemonBox_Constant[3310466] = "3-2"
	tDemonBox_Constant[3310467] = "3-3"
	tDemonBox_Constant[3310468] = "3-4"
	
	tDemonBox_Constant["MapId"] = {}
	tDemonBox_Constant["MapId"]["Normal"] = 1002
	tDemonBox_Constant["MapId"]["NoGift"] = 10364
	tDemonBox_Constant["NpcId"] = 21856
	tDemonBox_Constant["GenId"] = 30873
	
	tDemonBox_Constant["MonsterId"] = {}
	tDemonBox_Constant["MonsterId"][3310450] = 1031
	tDemonBox_Constant["MonsterId"][3310451] = 1032
	tDemonBox_Constant["MonsterId"][3310452] = 1033
	tDemonBox_Constant["MonsterId"][3310453] = 1034
	
	-- 普通服双龙城内
	tDemonBox_Constant["Map"] = {}
	tDemonBox_Constant["Map"][1] = {}
	tDemonBox_Constant["Map"][1]["MinCellx"] = 180
	tDemonBox_Constant["Map"][1]["MaxCellx"] = 400
	tDemonBox_Constant["Map"][1]["MaxCelly"] = 570
	tDemonBox_Constant["Map"][2] = {}
	tDemonBox_Constant["Map"][2]["MinCellx"] = 300
	tDemonBox_Constant["Map"][2]["MaxCellx"] = 520
	tDemonBox_Constant["Map"][2]["MaxCelly"] = 465
	-- 激情服双龙城内
	tDemonBox_Constant["NoGiftMap"] = {}
	tDemonBox_Constant["NoGiftMap"][1] = {}
	tDemonBox_Constant["NoGiftMap"][1]["MinCellx"] = 247
	tDemonBox_Constant["NoGiftMap"][1]["MaxCellx"] = 370
	tDemonBox_Constant["NoGiftMap"][1]["MaxCelly"] = 333
	
	-- 普通服卫兵附近
	tDemonBox_Constant["Guard"] = {}
	tDemonBox_Constant["Guard"][1] = {}
	tDemonBox_Constant["Guard"][1]["MinCellx"] = 520
	tDemonBox_Constant["Guard"][1]["MaxCellx"] = 551
	tDemonBox_Constant["Guard"][1]["MinCelly"] = 296
	tDemonBox_Constant["Guard"][1]["MaxCelly"] = 347
	tDemonBox_Constant["Guard"][2] = {}
	tDemonBox_Constant["Guard"][2]["MinCellx"] = 430
	tDemonBox_Constant["Guard"][2]["MaxCellx"] = 478
	tDemonBox_Constant["Guard"][2]["MinCelly"] = 440
	tDemonBox_Constant["Guard"][2]["MaxCelly"] = 483
	tDemonBox_Constant["Guard"][3] = {}
	tDemonBox_Constant["Guard"][3]["MinCellx"] = 656
	tDemonBox_Constant["Guard"][3]["MaxCellx"] = 703
	tDemonBox_Constant["Guard"][3]["MinCelly"] = 304
	tDemonBox_Constant["Guard"][3]["MaxCelly"] = 343
	tDemonBox_Constant["Guard"][4] = {}
	tDemonBox_Constant["Guard"][4]["MinCellx"] = 547
	tDemonBox_Constant["Guard"][4]["MaxCellx"] = 570
	tDemonBox_Constant["Guard"][4]["MinCelly"] = 546
	tDemonBox_Constant["Guard"][4]["MaxCelly"] = 589
	tDemonBox_Constant["Guard"][5] = {}
	tDemonBox_Constant["Guard"][5]["MinCellx"] = 30
	tDemonBox_Constant["Guard"][5]["MaxCellx"] = 62
	tDemonBox_Constant["Guard"][5]["MinCelly"] = 527
	tDemonBox_Constant["Guard"][5]["MaxCelly"] = 548
	tDemonBox_Constant["Guard"][6] = {}
	tDemonBox_Constant["Guard"][6]["MinCellx"] = 328
	tDemonBox_Constant["Guard"][6]["MaxCellx"] = 372
	tDemonBox_Constant["Guard"][6]["MinCelly"] = 800
	tDemonBox_Constant["Guard"][6]["MaxCelly"] = 844
	-- 激情服卫兵附近
	tDemonBox_Constant["NoGiftGuard"] = {}
	tDemonBox_Constant["NoGiftGuard"][1] = {}
	tDemonBox_Constant["NoGiftGuard"][1]["MinCellx"] = 287
	tDemonBox_Constant["NoGiftGuard"][1]["MaxCellx"] = 330
	tDemonBox_Constant["NoGiftGuard"][1]["MinCelly"] = 341
	tDemonBox_Constant["NoGiftGuard"][1]["MaxCelly"] = 392
	tDemonBox_Constant["NoGiftGuard"][2] = {}
	tDemonBox_Constant["NoGiftGuard"][2]["MinCellx"] = 238
	tDemonBox_Constant["NoGiftGuard"][2]["MaxCellx"] = 286
	tDemonBox_Constant["NoGiftGuard"][2]["MinCelly"] = 341
	tDemonBox_Constant["NoGiftGuard"][2]["MaxCelly"] = 392
	tDemonBox_Constant["NoGiftGuard"][3] = {}
	tDemonBox_Constant["NoGiftGuard"][3]["MinCellx"] = 312
	tDemonBox_Constant["NoGiftGuard"][3]["MaxCellx"] = 346
	tDemonBox_Constant["NoGiftGuard"][3]["MinCelly"] = 323
	tDemonBox_Constant["NoGiftGuard"][3]["MaxCelly"] = 350
	tDemonBox_Constant["NoGiftGuard"][4] = {}
	tDemonBox_Constant["NoGiftGuard"][4]["MinCellx"] = 382
	tDemonBox_Constant["NoGiftGuard"][4]["MaxCellx"] = 403
	tDemonBox_Constant["NoGiftGuard"][4]["MinCelly"] = 232
	tDemonBox_Constant["NoGiftGuard"][4]["MaxCelly"] = 288
	
	-- 寻路数据
local tDemonBox_FindCanUseDemonBox = {}
	tDemonBox_FindCanUseDemonBox["Normal"] = {}
	tDemonBox_FindCanUseDemonBox["Normal"]["MapId"] = 1002
	tDemonBox_FindCanUseDemonBox["Normal"]["PosX"] = 610
	tDemonBox_FindCanUseDemonBox["Normal"]["PosY"] = 429
	tDemonBox_FindCanUseDemonBox["NoGift"] = {}
	tDemonBox_FindCanUseDemonBox["NoGift"]["MapId"] = 10364
	tDemonBox_FindCanUseDemonBox["NoGift"]["PosX"] = 409
	tDemonBox_FindCanUseDemonBox["NoGift"]["PosY"] = 337
	
-- x级宝藏试炼盒对应物品id
local tDemonBox_Reward = {}
	tDemonBox_Reward["Space"] = 1
	tDemonBox_Reward[1] = {}
	tDemonBox_Reward[1]["Money"] = 1000000
	tDemonBox_Reward[1]["RewardItem"]={}
	tDemonBox_Reward[1]["RewardItem"][1] = {}
	tDemonBox_Reward[1]["RewardItem"][1]["Id"] = 3310450
	tDemonBox_Reward[1]["RewardItem"][1]["Attr"] = "0 %d"
	tDemonBox_Reward[1]["SzObj"] = "self"
	tDemonBox_Reward[1]["RewardEffect"] = {}
	tDemonBox_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_Reward[1]["Talk"] = tDemonBox_Text["GetItem"]
	tDemonBox_Reward[1]["Log"]="0,0,1,%d,12001136,2,3310450,%d"
	tDemonBox_Reward[2] = {}
	tDemonBox_Reward[2]["Money"] = 10000000
	tDemonBox_Reward[2]["RewardItem"]={}
	tDemonBox_Reward[2]["RewardItem"][1] = {}
	tDemonBox_Reward[2]["RewardItem"][1]["Id"] = 3310451
	tDemonBox_Reward[2]["RewardItem"][1]["Attr"] = "0 %d"
	tDemonBox_Reward[2]["SzObj"] = "self"
	tDemonBox_Reward[2]["RewardEffect"] = {}
	tDemonBox_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_Reward[2]["Talk"] = tDemonBox_Text["GetItem"]
	tDemonBox_Reward[2]["Log"]="0,0,1,%d,12001136,2,3310451,%d"
	tDemonBox_Reward[3] = {}
	tDemonBox_Reward[3]["Money"] = 100000000
	tDemonBox_Reward[3]["RewardItem"]={}
	tDemonBox_Reward[3]["RewardItem"][1] = {}
	tDemonBox_Reward[3]["RewardItem"][1]["Id"] = 3310452
	tDemonBox_Reward[3]["RewardItem"][1]["Attr"] = "0 %d"
	tDemonBox_Reward[3]["SzObj"] = "self"
	tDemonBox_Reward[3]["RewardEffect"] = {}
	tDemonBox_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_Reward[3]["Talk"] = tDemonBox_Text["GetItem"]
	tDemonBox_Reward[3]["Log"]="0,0,1,%d,12001136,2,3310452,%d"
	tDemonBox_Reward[4] = {}
	tDemonBox_Reward[4]["Money"] = 1000000000
	tDemonBox_Reward[4]["RewardItem"]={}
	tDemonBox_Reward[4]["RewardItem"][1] = {}
	tDemonBox_Reward[4]["RewardItem"][1]["Id"] = 3310453
	tDemonBox_Reward[4]["RewardItem"][1]["Attr"] = "0 %d"
	tDemonBox_Reward[4]["SzObj"] = "self"
	tDemonBox_Reward[4]["RewardEffect"] = {}
	tDemonBox_Reward[4]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_Reward[4]["Talk"] = tDemonBox_Text["GetItem"]
	tDemonBox_Reward[4]["Log"]="0,0,1,%d,12001136,2,3310453,%d"
	-- 礼包
	-- 修为值
	tDemonBox_Reward[3310469] = {}
	tDemonBox_Reward[3310469]["RewardRepairValue"] = {}
	tDemonBox_Reward[3310469]["RewardRepairValue"]["Value"] = 5
	tDemonBox_Reward[3310469]["DeleteItem"] = {}
	tDemonBox_Reward[3310469]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310469]["DeleteItem"][1]["Id"] = 3310469
	tDemonBox_Reward[3310469]["LogId"] = 12001136
	tDemonBox_Reward[3310469]["SzObj"] = "self"
	tDemonBox_Reward[3310469]["RewardEffect"] = {}
	tDemonBox_Reward[3310469]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310470] = {}
	tDemonBox_Reward[3310470]["RewardRepairValue"] = {}
	tDemonBox_Reward[3310470]["RewardRepairValue"]["Value"] = 50
	tDemonBox_Reward[3310470]["DeleteItem"] = {}
	tDemonBox_Reward[3310470]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310470]["DeleteItem"][1]["Id"] = 3310470
	tDemonBox_Reward[3310470]["LogId"] = 12001136
	tDemonBox_Reward[3310470]["SzObj"] = "self"
	tDemonBox_Reward[3310470]["RewardEffect"] = {}
	tDemonBox_Reward[3310470]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310471] = {}
	tDemonBox_Reward[3310471]["RewardRepairValue"] = {}
	tDemonBox_Reward[3310471]["RewardRepairValue"]["Value"] = 500
	tDemonBox_Reward[3310471]["DeleteItem"] = {}
	tDemonBox_Reward[3310471]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310471]["DeleteItem"][1]["Id"] = 3310471
	tDemonBox_Reward[3310471]["LogId"] = 12001136
	tDemonBox_Reward[3310471]["SzObj"] = "self"
	tDemonBox_Reward[3310471]["RewardEffect"] = {}
	tDemonBox_Reward[3310471]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310472] = {}
	tDemonBox_Reward[3310472]["RewardRepairValue"] = {}
	tDemonBox_Reward[3310472]["RewardRepairValue"]["Value"] = 5000
	tDemonBox_Reward[3310472]["DeleteItem"] = {}
	tDemonBox_Reward[3310472]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310472]["DeleteItem"][1]["Id"] = 3310472
	tDemonBox_Reward[3310472]["LogId"] = 12001136
	tDemonBox_Reward[3310472]["SzObj"] = "self"
	tDemonBox_Reward[3310472]["RewardEffect"] = {}
	tDemonBox_Reward[3310472]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 气力值
	tDemonBox_Reward[3310473] = {}
	tDemonBox_Reward[3310473]["RewardStrengthValue"] = {}
	tDemonBox_Reward[3310473]["RewardStrengthValue"]["Value"] = 5
	tDemonBox_Reward[3310473]["DeleteItem"] = {}
	tDemonBox_Reward[3310473]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310473]["DeleteItem"][1]["Id"] = 3310473
	tDemonBox_Reward[3310473]["LogId"] = 12001136
	tDemonBox_Reward[3310473]["SzObj"] = "self"
	tDemonBox_Reward[3310473]["RewardEffect"] = {}
	tDemonBox_Reward[3310473]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310474] = {}
	tDemonBox_Reward[3310474]["RewardStrengthValue"] = {}
	tDemonBox_Reward[3310474]["RewardStrengthValue"]["Value"] = 50
	tDemonBox_Reward[3310474]["DeleteItem"] = {}
	tDemonBox_Reward[3310474]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310474]["DeleteItem"][1]["Id"] = 3310474
	tDemonBox_Reward[3310474]["LogId"] = 12001136
	tDemonBox_Reward[3310474]["SzObj"] = "self"
	tDemonBox_Reward[3310474]["RewardEffect"] = {}
	tDemonBox_Reward[3310474]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310475] = {}
	tDemonBox_Reward[3310475]["RewardStrengthValue"] = {}
	tDemonBox_Reward[3310475]["RewardStrengthValue"]["Value"] = 500
	tDemonBox_Reward[3310475]["DeleteItem"] = {}
	tDemonBox_Reward[3310475]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310475]["DeleteItem"][1]["Id"] = 3310475
	tDemonBox_Reward[3310475]["LogId"] = 12001136
	tDemonBox_Reward[3310475]["SzObj"] = "self"
	tDemonBox_Reward[3310475]["RewardEffect"] = {}
	tDemonBox_Reward[3310475]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310476] = {}
	tDemonBox_Reward[3310476]["RewardStrengthValue"] = {}
	tDemonBox_Reward[3310476]["RewardStrengthValue"]["Value"] = 5000
	tDemonBox_Reward[3310476]["DeleteItem"] = {}
	tDemonBox_Reward[3310476]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310476]["DeleteItem"][1]["Id"] = 3310476
	tDemonBox_Reward[3310476]["LogId"] = 12001136
	tDemonBox_Reward[3310476]["SzObj"] = "self"
	tDemonBox_Reward[3310476]["RewardEffect"] = {}
	tDemonBox_Reward[3310476]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赤炼石
	tDemonBox_Reward[3310477] = {}
	tDemonBox_Reward[3310477]["RewardItem"] = {}
	tDemonBox_Reward[3310477]["RewardItem"][1] = {}
	tDemonBox_Reward[3310477]["RewardItem"][1]["Id"] = 730002
	tDemonBox_Reward[3310477]["RewardItem"][1]["Attr"] = "0 1 3"
	tDemonBox_Reward[3310477]["DeleteItem"] = {}
	tDemonBox_Reward[3310477]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310477]["DeleteItem"][1]["Id"] = 3310477
	tDemonBox_Reward[3310477]["LogId"] = 12001136
	tDemonBox_Reward[3310477]["SzObj"] = "self"
	tDemonBox_Reward[3310477]["RewardEffect"] = {}
	tDemonBox_Reward[3310477]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310478] = {}
	tDemonBox_Reward[3310478]["RewardItem"] = {}
	tDemonBox_Reward[3310478]["RewardItem"][1] = {}
	tDemonBox_Reward[3310478]["RewardItem"][1]["Id"] = 730004
	tDemonBox_Reward[3310478]["RewardItem"][1]["Attr"] = "0 1 3"
	tDemonBox_Reward[3310478]["DeleteItem"] = {}
	tDemonBox_Reward[3310478]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310478]["DeleteItem"][1]["Id"] = 3310478
	tDemonBox_Reward[3310478]["LogId"] = 12001136
	tDemonBox_Reward[3310478]["SzObj"] = "self"
	tDemonBox_Reward[3310478]["RewardEffect"] = {}
	tDemonBox_Reward[3310478]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310479] = {}
	tDemonBox_Reward[3310479]["RewardItem"] = {}
	tDemonBox_Reward[3310479]["RewardItem"][1] = {}
	tDemonBox_Reward[3310479]["RewardItem"][1]["Id"] = 730006
	tDemonBox_Reward[3310479]["RewardItem"][1]["Attr"] = "0 1 3"
	tDemonBox_Reward[3310479]["DeleteItem"] = {}
	tDemonBox_Reward[3310479]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310479]["DeleteItem"][1]["Id"] = 3310479
	tDemonBox_Reward[3310479]["LogId"] = 12001136
	tDemonBox_Reward[3310479]["SzObj"] = "self"
	tDemonBox_Reward[3310479]["RewardEffect"] = {}
	tDemonBox_Reward[3310479]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 银两
	tDemonBox_Reward[3310480] = {}
	tDemonBox_Reward[3310480]["RewardMoney"] = {}
	tDemonBox_Reward[3310480]["RewardMoney"]["Value"] = 10000000
	tDemonBox_Reward[3310480]["DeleteItem"] = {}
	tDemonBox_Reward[3310480]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310480]["DeleteItem"][1]["Id"] = 3310480
	tDemonBox_Reward[3310480]["LogId"] = 12001136
	tDemonBox_Reward[3310480]["SzObj"] = "self"
	tDemonBox_Reward[3310480]["RewardEffect"] = {}
	tDemonBox_Reward[3310480]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310481] = {}
	tDemonBox_Reward[3310481]["RewardMoney"] = {}
	tDemonBox_Reward[3310481]["RewardMoney"]["Value"] = 100000000
	tDemonBox_Reward[3310481]["DeleteItem"] = {}
	tDemonBox_Reward[3310481]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310481]["DeleteItem"][1]["Id"] = 3310481
	tDemonBox_Reward[3310481]["LogId"] = 12001136
	tDemonBox_Reward[3310481]["SzObj"] = "self"
	tDemonBox_Reward[3310481]["RewardEffect"] = {}
	tDemonBox_Reward[3310481]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310482] = {}
	tDemonBox_Reward[3310482]["RewardMoney"] = {}
	tDemonBox_Reward[3310482]["RewardMoney"]["Value"] = 1000000000
	tDemonBox_Reward[3310482]["DeleteItem"] = {}
	tDemonBox_Reward[3310482]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310482]["DeleteItem"][1]["Id"] = 3310482
	tDemonBox_Reward[3310482]["LogId"] = 12001136
	tDemonBox_Reward[3310482]["SzObj"] = "self"
	tDemonBox_Reward[3310482]["RewardEffect"] = {}
	tDemonBox_Reward[3310482]["RewardEffect"]["Effect"] = "angelwing"
	
	tDemonBox_Reward[3310465] = {}
	tDemonBox_Reward[3310465]["RewardItem"] = {}
	tDemonBox_Reward[3310465]["RewardItem"][1] = {}
	tDemonBox_Reward[3310465]["RewardItem"][1]["Id"] = 3310481
	tDemonBox_Reward[3310465]["RewardItem"][1]["Attr"] = "0 1"
	tDemonBox_Reward[3310465]["RewardItem"][2] = {}
	tDemonBox_Reward[3310465]["RewardItem"][2]["Id"] = 3310480
	tDemonBox_Reward[3310465]["RewardItem"][2]["Attr"] = "0 3"
	tDemonBox_Reward[3310465]["RewardMoney"] = {}
	tDemonBox_Reward[3310465]["RewardMoney"]["Value"] = 8000000
	tDemonBox_Reward[3310465]["DeleteItem"] = {}
	tDemonBox_Reward[3310465]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310465]["DeleteItem"][1]["Id"] = 3310465
	tDemonBox_Reward[3310465]["Talk"] = tDemonBox_Text["SellDan"]
	tDemonBox_Reward[3310465]["Log"]="0,0,3310465,1,12001136,2,3310481[3310480][1],1[3][8000000]"
	
	tDemonBox_Reward[3310466] = {}
	tDemonBox_Reward[3310466]["RewardItem"] = {}
	tDemonBox_Reward[3310466]["RewardItem"][1] = {}
	tDemonBox_Reward[3310466]["RewardItem"][1]["Id"] = 3310482
	tDemonBox_Reward[3310466]["RewardItem"][1]["Attr"] = "0 1"
	tDemonBox_Reward[3310466]["RewardItem"][2] = {}
	tDemonBox_Reward[3310466]["RewardItem"][2]["Id"] = 3310481
	tDemonBox_Reward[3310466]["RewardItem"][2]["Attr"] = "0 3"
	tDemonBox_Reward[3310466]["RewardItem"][3] = {}
	tDemonBox_Reward[3310466]["RewardItem"][3]["Id"] = 3310480
	tDemonBox_Reward[3310466]["RewardItem"][3]["Attr"] = "0 8"
	tDemonBox_Reward[3310466]["DeleteItem"] = {}
	tDemonBox_Reward[3310466]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310466]["DeleteItem"][1]["Id"] = 3310466
	tDemonBox_Reward[3310466]["Talk"] = tDemonBox_Text["SellDan"]
	tDemonBox_Reward[3310466]["Log"]="0,0,3310466,1,12001136,2,3310482[3310481][3310480],1[3][8]"
	
	tDemonBox_Reward[3310467] = {}
	tDemonBox_Reward[3310467]["RewardItem"] = {}
	tDemonBox_Reward[3310467]["RewardItem"][1] = {}
	tDemonBox_Reward[3310467]["RewardItem"][1]["Id"] = 3310482
	tDemonBox_Reward[3310467]["RewardItem"][1]["Attr"] = "0 13"
	tDemonBox_Reward[3310467]["RewardItem"][2] = {}
	tDemonBox_Reward[3310467]["RewardItem"][2]["Id"] = 3310481
	tDemonBox_Reward[3310467]["RewardItem"][2]["Attr"] = "0 8"
	tDemonBox_Reward[3310467]["DeleteItem"] = {}
	tDemonBox_Reward[3310467]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310467]["DeleteItem"][1]["Id"] = 3310467
	tDemonBox_Reward[3310467]["Talk"] = tDemonBox_Text["SellDan"]
	tDemonBox_Reward[3310467]["Log"]="0,0,3310467,1,12001136,2,3310482[3310481],13[8]"
	
	tDemonBox_Reward[3310468] = {}
	tDemonBox_Reward[3310468]["RewardItem"] = {}
	tDemonBox_Reward[3310468]["RewardItem"][1] = {}
	tDemonBox_Reward[3310468]["RewardItem"][1]["Id"] = 3310482
	tDemonBox_Reward[3310468]["RewardItem"][1]["Attr"] = "0 138"
	tDemonBox_Reward[3310468]["DeleteItem"] = {}
	tDemonBox_Reward[3310468]["DeleteItem"][1] = {}
	tDemonBox_Reward[3310468]["DeleteItem"][1]["Id"] = 3310468
	tDemonBox_Reward[3310468]["Talk"] = tDemonBox_Text["SellDan"]
	tDemonBox_Reward[3310468]["Log"]="0,0,3310468,1,12001136,2,3310482,138"
	
	-- 掉落概率
local tDemonBox_Random = {}
	tDemonBox_Random[1] = {}
	tDemonBox_Random[1]["ItemChanceSum"] = 100000
	tDemonBox_Random[1][1] = {}
	tDemonBox_Random[1][1]["RandomItemChanceType"] = 2
	tDemonBox_Random[1][1]["ItemChance"] = 40000
	tDemonBox_Random[1][1]["Index"] = 1
	tDemonBox_Random[1][2] = {}
	tDemonBox_Random[1][2]["RandomItemChanceType"] = 2
	tDemonBox_Random[1][2]["ItemChance"] = 10000
	tDemonBox_Random[1][2]["Index"] = 2
	tDemonBox_Random[1][3] = {}
	tDemonBox_Random[1][3]["RandomItemChanceType"] = 2
	tDemonBox_Random[1][3]["ItemChance"] = 13902
	tDemonBox_Random[1][3]["Index"] = 3
	tDemonBox_Random[1][4] = {}
	tDemonBox_Random[1][4]["RandomItemChanceType"] = 2
	tDemonBox_Random[1][4]["ItemChance"] = 36000
	tDemonBox_Random[1][4]["Index"] = 4
	tDemonBox_Random[1][5] = {}
	tDemonBox_Random[1][5]["RandomItemChanceType"] = 2
	tDemonBox_Random[1][5]["ItemChance"] = 90
	tDemonBox_Random[1][5]["Index"] = 5
	tDemonBox_Random[1][6] = {}
	tDemonBox_Random[1][6]["RandomItemChanceType"] = 2
	tDemonBox_Random[1][6]["ItemChance"] = 8
	tDemonBox_Random[1][6]["Index"] = 6
	
-- local tDemonBox_MonsterDrop = {}
-- -- 一级妖魔
	-- tDemonBox_MonsterDrop[1031] = {}
	-- tDemonBox_MonsterDrop[1031][1] = {}
	-- tDemonBox_MonsterDrop[1031][1]["ItemChanceSum"] = 10000
	-- tDemonBox_MonsterDrop[1031][1][1] = {}
	-- tDemonBox_MonsterDrop[1031][1][1]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1031][1][1]["ItemChance"] = 5500
	-- tDemonBox_MonsterDrop[1031][1][1]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1031][1][1]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1031][1][1]["ItemId"][1]["Id"] = 3310469
	-- tDemonBox_MonsterDrop[1031][1][1]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1031][1][2] = {}
	-- tDemonBox_MonsterDrop[1031][1][2]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1031][1][2]["ItemChance"] = 45
	-- tDemonBox_MonsterDrop[1031][1][2]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1031][1][2]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1031][1][2]["ItemId"][1]["Id"] = 3310473
	-- tDemonBox_MonsterDrop[1031][1][2]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1031][2] = {}
	-- tDemonBox_MonsterDrop[1031][2]["Item"] = 0
	-- tDemonBox_MonsterDrop[1031][2]["Money"] = 500000
	-- tDemonBox_MonsterDrop[1031][3] = {}
	-- tDemonBox_MonsterDrop[1031][3]["Item"] = 0
	-- tDemonBox_MonsterDrop[1031][3]["Money"] = 1000000
	-- tDemonBox_MonsterDrop[1031][4] = {}
	-- tDemonBox_MonsterDrop[1031][4]["Item"] = 0
	-- tDemonBox_MonsterDrop[1031][4]["Money"] = 2000000
	-- tDemonBox_MonsterDrop[1031][5] = {}
	-- tDemonBox_MonsterDrop[1031][5]["Money"] = 7000000
	-- tDemonBox_MonsterDrop[1031][5]["Item"] = 1
	-- tDemonBox_MonsterDrop[1031][5]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1031][5]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1031][5]["ItemId"][1]["Id"] = 3310480
	-- tDemonBox_MonsterDrop[1031][5]["ItemId"][1]["Number"] = 2
	-- tDemonBox_MonsterDrop[1031][6] = {}
	-- tDemonBox_MonsterDrop[1031][6]["Money"] = 0
	-- tDemonBox_MonsterDrop[1031][6]["Item"] = 1
	-- tDemonBox_MonsterDrop[1031][6]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1031][6]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1031][6]["ItemId"][1]["Id"] = 3310465
	-- tDemonBox_MonsterDrop[1031][6]["ItemId"][1]["Number"] = 1
	
-- -- 二级妖魔
	-- tDemonBox_MonsterDrop[1032] = {}
	-- tDemonBox_MonsterDrop[1032][1] = {}
	-- tDemonBox_MonsterDrop[1032][1]["ItemChanceSum"] = 10000
	-- tDemonBox_MonsterDrop[1032][1][1] = {}
	-- tDemonBox_MonsterDrop[1032][1][1]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1032][1][1]["ItemChance"] = 3300
	-- tDemonBox_MonsterDrop[1032][1][1]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1032][1][1]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1032][1][1]["ItemId"][1]["Id"] = 3310470
	-- tDemonBox_MonsterDrop[1032][1][1]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1032][1][2] = {}
	-- tDemonBox_MonsterDrop[1032][1][2]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1032][1][2]["ItemChance"] = 6700
	-- tDemonBox_MonsterDrop[1032][1][2]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1032][1][2]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1032][1][2]["ItemId"][1]["Id"] = 3310474
	-- tDemonBox_MonsterDrop[1032][1][2]["ItemId"][1]["Number"] = 1
	-- -- 赤炼石
	-- -- tDemonBox_MonsterDrop[1032][1][3] = {}
	-- -- tDemonBox_MonsterDrop[1032][1][3]["RandomItemChanceType"] = 2
	-- -- tDemonBox_MonsterDrop[1032][1][3]["ItemChance"] = 1000
	-- -- tDemonBox_MonsterDrop[1032][1][3]["ItemId"] = {}
	-- -- tDemonBox_MonsterDrop[1032][1][3]["ItemId"][1] = {}
	-- -- tDemonBox_MonsterDrop[1032][1][3]["ItemId"][1]["Id"] = 3310477
	-- -- tDemonBox_MonsterDrop[1032][1][3]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1032][2] = {}
	-- tDemonBox_MonsterDrop[1032][2]["Item"] = 0
	-- tDemonBox_MonsterDrop[1032][2]["Money"] = 5000000
	-- tDemonBox_MonsterDrop[1032][3] = {}
	-- tDemonBox_MonsterDrop[1032][3]["Item"] = 1
	-- tDemonBox_MonsterDrop[1032][3]["Money"] = 0
	-- tDemonBox_MonsterDrop[1032][3]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1032][3]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1032][3]["ItemId"][1]["Id"] = 3310480
	-- tDemonBox_MonsterDrop[1032][3]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1032][4] = {}
	-- tDemonBox_MonsterDrop[1032][4]["Item"] = 1
	-- tDemonBox_MonsterDrop[1032][4]["Money"] = 0
	-- tDemonBox_MonsterDrop[1032][4]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1032][4]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1032][4]["ItemId"][1]["Id"] = 3310480
	-- tDemonBox_MonsterDrop[1032][4]["ItemId"][1]["Number"] = 2
	-- tDemonBox_MonsterDrop[1032][5] = {}
	-- tDemonBox_MonsterDrop[1032][5]["Money"] = 0
	-- tDemonBox_MonsterDrop[1032][5]["Item"] = 2
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"][1]["Id"] = 3310480
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"][1]["Number"] = 7
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"][2] = {}
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"][2]["Id"] = 3310481
	-- tDemonBox_MonsterDrop[1032][5]["ItemId"][2]["Number"] = 2
	-- tDemonBox_MonsterDrop[1032][6] = {}
	-- tDemonBox_MonsterDrop[1032][6]["Money"] = 0
	-- tDemonBox_MonsterDrop[1032][6]["Item"] = 1
	-- tDemonBox_MonsterDrop[1032][6]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1032][6]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1032][6]["ItemId"][1]["Id"] = 3310466
	-- tDemonBox_MonsterDrop[1032][6]["ItemId"][1]["Number"] = 1
	
-- -- 三级妖魔
	-- tDemonBox_MonsterDrop[1033] = {}
	-- tDemonBox_MonsterDrop[1033][1] = {}
	-- tDemonBox_MonsterDrop[1033][1]["ItemChanceSum"] = 10000
	-- tDemonBox_MonsterDrop[1033][1][1] = {}
	-- tDemonBox_MonsterDrop[1033][1][1]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1033][1][1]["ItemChance"] = 3100
	-- tDemonBox_MonsterDrop[1033][1][1]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][1][1]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][1][1]["ItemId"][1]["Id"] = 3310471
	-- tDemonBox_MonsterDrop[1033][1][1]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1033][1][2] = {}
	-- tDemonBox_MonsterDrop[1033][1][2]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1033][1][2]["ItemChance"] = 6900
	-- tDemonBox_MonsterDrop[1033][1][2]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][1][2]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][1][2]["ItemId"][1]["Id"] = 3310475
	-- tDemonBox_MonsterDrop[1033][1][2]["ItemId"][1]["Number"] = 1
	-- -- 赤炼石
	-- -- tDemonBox_MonsterDrop[1033][1][3] = {}
	-- -- tDemonBox_MonsterDrop[1033][1][3]["RandomItemChanceType"] = 2
	-- -- tDemonBox_MonsterDrop[1033][1][3]["ItemChance"] = 900
	-- -- tDemonBox_MonsterDrop[1033][1][3]["ItemId"] = {}
	-- -- tDemonBox_MonsterDrop[1033][1][3]["ItemId"][1] = {}
	-- -- tDemonBox_MonsterDrop[1033][1][3]["ItemId"][1]["Id"] = 3310478
	-- -- tDemonBox_MonsterDrop[1033][1][3]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1033][2] = {}
	-- tDemonBox_MonsterDrop[1033][2]["Item"] = 1
	-- tDemonBox_MonsterDrop[1033][2]["Money"] = 0
	-- tDemonBox_MonsterDrop[1033][2]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][2]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][2]["ItemId"][1]["Id"] = 3310480
	-- tDemonBox_MonsterDrop[1033][2]["ItemId"][1]["Number"] = 5
	-- tDemonBox_MonsterDrop[1033][3] = {}
	-- tDemonBox_MonsterDrop[1033][3]["Item"] = 1
	-- tDemonBox_MonsterDrop[1033][3]["Money"] = 0
	-- tDemonBox_MonsterDrop[1033][3]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][3]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][3]["ItemId"][1]["Id"] = 3310481
	-- tDemonBox_MonsterDrop[1033][3]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1033][4] = {}
	-- tDemonBox_MonsterDrop[1033][4]["Item"] = 1
	-- tDemonBox_MonsterDrop[1033][4]["Money"] = 0
	-- tDemonBox_MonsterDrop[1033][4]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][4]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][4]["ItemId"][1]["Id"] = 3310481
	-- tDemonBox_MonsterDrop[1033][4]["ItemId"][1]["Number"] = 2
	-- tDemonBox_MonsterDrop[1033][5] = {}
	-- tDemonBox_MonsterDrop[1033][5]["Money"] = 0
	-- tDemonBox_MonsterDrop[1033][5]["Item"] = 2
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"][1]["Id"] = 3310481
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"][1]["Number"] = 7
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"][2] = {}
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"][2]["Id"] = 3310482
	-- tDemonBox_MonsterDrop[1033][5]["ItemId"][2]["Number"] = 2
	-- tDemonBox_MonsterDrop[1033][6] = {}
	-- tDemonBox_MonsterDrop[1033][6]["Money"] = 0
	-- tDemonBox_MonsterDrop[1033][6]["Item"] = 1
	-- tDemonBox_MonsterDrop[1033][6]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1033][6]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1033][6]["ItemId"][1]["Id"] = 3310467
	-- tDemonBox_MonsterDrop[1033][6]["ItemId"][1]["Number"] = 1
	
-- -- 四级妖魔
	-- tDemonBox_MonsterDrop[1034] = {}
	-- tDemonBox_MonsterDrop[1034][1] = {}
	-- tDemonBox_MonsterDrop[1034][1]["ItemChanceSum"] = 10000
	-- tDemonBox_MonsterDrop[1034][1][1] = {}
	-- tDemonBox_MonsterDrop[1034][1][1]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1034][1][1]["ItemChance"] = 3000
	-- tDemonBox_MonsterDrop[1034][1][1]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][1][1]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][1][1]["ItemId"][1]["Id"] = 3310472
	-- tDemonBox_MonsterDrop[1034][1][1]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1034][1][2] = {}
	-- tDemonBox_MonsterDrop[1034][1][2]["RandomItemChanceType"] = 2
	-- tDemonBox_MonsterDrop[1034][1][2]["ItemChance"] = 7000
	-- tDemonBox_MonsterDrop[1034][1][2]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][1][2]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][1][2]["ItemId"][1]["Id"] = 3310476
	-- tDemonBox_MonsterDrop[1034][1][2]["ItemId"][1]["Number"] = 1
	-- -- 赤炼石
	-- -- tDemonBox_MonsterDrop[1034][1][3] = {}
	-- -- tDemonBox_MonsterDrop[1034][1][3]["RandomItemChanceType"] = 2
	-- -- tDemonBox_MonsterDrop[1034][1][3]["ItemChance"] = 1000
	-- -- tDemonBox_MonsterDrop[1034][1][3]["ItemId"] = {}
	-- -- tDemonBox_MonsterDrop[1034][1][3]["ItemId"][1] = {}
	-- -- tDemonBox_MonsterDrop[1034][1][3]["ItemId"][1]["Id"] = 3310479
	-- -- tDemonBox_MonsterDrop[1034][1][3]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1034][2] = {}
	-- tDemonBox_MonsterDrop[1034][2]["Item"] = 1
	-- tDemonBox_MonsterDrop[1034][2]["Money"] = 0
	-- tDemonBox_MonsterDrop[1034][2]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][2]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][2]["ItemId"][1]["Id"] = 3310481
	-- tDemonBox_MonsterDrop[1034][2]["ItemId"][1]["Number"] = 5
	-- tDemonBox_MonsterDrop[1034][3] = {}
	-- tDemonBox_MonsterDrop[1034][3]["Item"] = 1
	-- tDemonBox_MonsterDrop[1034][3]["Money"] = 0
	-- tDemonBox_MonsterDrop[1034][3]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][3]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][3]["ItemId"][1]["Id"] = 3310482
	-- tDemonBox_MonsterDrop[1034][3]["ItemId"][1]["Number"] = 1
	-- tDemonBox_MonsterDrop[1034][4] = {}
	-- tDemonBox_MonsterDrop[1034][4]["Item"] = 1
	-- tDemonBox_MonsterDrop[1034][4]["Money"] = 0
	-- tDemonBox_MonsterDrop[1034][4]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][4]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][4]["ItemId"][1]["Id"] = 3310482
	-- tDemonBox_MonsterDrop[1034][4]["ItemId"][1]["Number"] = 2
	-- tDemonBox_MonsterDrop[1034][5] = {}
	-- tDemonBox_MonsterDrop[1034][5]["Money"] = 0
	-- tDemonBox_MonsterDrop[1034][5]["Item"] = 1
	-- tDemonBox_MonsterDrop[1034][5]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][5]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][5]["ItemId"][1]["Id"] = 3310482
	-- tDemonBox_MonsterDrop[1034][5]["ItemId"][1]["Number"] = 27
	-- tDemonBox_MonsterDrop[1034][6] = {}
	-- tDemonBox_MonsterDrop[1034][6]["Money"] = 0
	-- tDemonBox_MonsterDrop[1034][6]["Item"] = 1
	-- tDemonBox_MonsterDrop[1034][6]["ItemId"] = {}
	-- tDemonBox_MonsterDrop[1034][6]["ItemId"][1] = {}
	-- tDemonBox_MonsterDrop[1034][6]["ItemId"][1]["Id"] = 3310468
	-- tDemonBox_MonsterDrop[1034][6]["ItemId"][1]["Number"] = 1
	
local tDemonBox_MonsterDrop = {}
	-- ===一级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1031][1]
	tDemonBox_MonsterDrop[1031] = {}
	tDemonBox_MonsterDrop[1031][1] = {}
	tDemonBox_MonsterDrop[1031][1]["ItemChanceSum"] = 10000
	tDemonBox_MonsterDrop[1031][1]["LogId"] = 12001136
	-- 修为值10点 - 55%
	tDemonBox_MonsterDrop[1031][1][1] = {}
	tDemonBox_MonsterDrop[1031][1][1]["RandomItemChanceType"] = 2
	tDemonBox_MonsterDrop[1031][1][1]["ItemChance"] = 5500
	tDemonBox_MonsterDrop[1031][1][1]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][1][1]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][1][1]["RewardItem"][1]["Id"] = 3314210 -- 杨枝甘露[3314210][属性:8][叠加:10000][金币:0], 【表格】修为值10点
	tDemonBox_MonsterDrop[1031][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 杨枝甘露（赠）*1
	tDemonBox_MonsterDrop[1031][1][1]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵龙叶 - 45%
	tDemonBox_MonsterDrop[1031][1][2] = {}
	tDemonBox_MonsterDrop[1031][1][2]["RandomItemChanceType"] = 2
	tDemonBox_MonsterDrop[1031][1][2]["ItemChance"] = 4500
	tDemonBox_MonsterDrop[1031][1][2]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][1][2]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][1][2]["RewardItem"][1]["Id"] = 3330460 -- 灵龙叶[3330460][属性:11][叠加:10000][金币:0], 【表格】灵龙叶
	tDemonBox_MonsterDrop[1031][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 灵龙叶*1
	tDemonBox_MonsterDrop[1031][1][2]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1031][2] = {}
	-- ===一级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1031][2]
	tDemonBox_MonsterDrop[1031][2]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1031][2]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][2]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][2]["RewardItem"][1]["Id"] = 3314192 -- 安居乐业财宝箱[3314192][属性:8][叠加:10000][金币:0], 【表格】50W银两
	tDemonBox_MonsterDrop[1031][2]["RewardItem"][1]["Attr"] = "0 5 3" -- 安居乐业财宝箱（赠）*5
	tDemonBox_MonsterDrop[1031][2]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][2]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1031][3] = {}
	-- ===一级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1031][3]
	tDemonBox_MonsterDrop[1031][3]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1031][3]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][3]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][3]["RewardItem"][1]["Id"] = 3314193 -- 腰缠万贯财宝箱[3314193][属性:8][叠加:10000][金币:0], 【表格】100W银两
	tDemonBox_MonsterDrop[1031][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 腰缠万贯财宝箱（赠）*1
	tDemonBox_MonsterDrop[1031][3]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][3]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1031][4] = {}
	-- ===一级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1031][4]
	tDemonBox_MonsterDrop[1031][4]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1031][4]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][4]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][4]["RewardItem"][1]["Id"] = 3314193 -- 腰缠万贯财宝箱[3314193][属性:8][叠加:10000][金币:0], 【表格】200W银两
	tDemonBox_MonsterDrop[1031][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 腰缠万贯财宝箱（赠）*2
	tDemonBox_MonsterDrop[1031][4]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][4]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1031][5] = {}
	-- ===一级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1031][5]
	tDemonBox_MonsterDrop[1031][5]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1031][5]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][5]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][5]["RewardItem"][1]["Id"] = 3314193 -- 腰缠万贯财宝箱[3314193][属性:8][叠加:10000][金币:0], 【表格】2700W银两
	tDemonBox_MonsterDrop[1031][5]["RewardItem"][1]["Attr"] = "0 27 3" -- 腰缠万贯财宝箱（赠）*27
	tDemonBox_MonsterDrop[1031][5]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][5]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1031][6] = {}
	-- ===一级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1031][6]
	tDemonBox_MonsterDrop[1031][6]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1031][6]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1031][6]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1031][6]["RewardItem"][1]["Id"] = 3314193 -- 腰缠万贯财宝箱[3314193][属性:8][叠加:10000][金币:0], 【表格】13800W银两
	tDemonBox_MonsterDrop[1031][6]["RewardItem"][1]["Attr"] = "0 138 3" -- 腰缠万贯财宝箱（赠）*138
	tDemonBox_MonsterDrop[1031][6]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1031][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1031][6]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1032] = {}
	-- ===二级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1032][1]
	tDemonBox_MonsterDrop[1032][1] = {}
	tDemonBox_MonsterDrop[1032][1]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1032][1]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1032][1]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1032][1]["RewardItem"][1]["Id"] = 3330460 -- 灵龙叶[3330460][属性:11][叠加:10000][金币:0], 【表格】灵龙叶
	tDemonBox_MonsterDrop[1032][1]["RewardItem"][1]["Attr"] = "0 5" -- 灵龙叶*5
	tDemonBox_MonsterDrop[1032][1]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1032][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1032][1]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1032][2] = {}
	-- ===二级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1032][2]
	tDemonBox_MonsterDrop[1032][2]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1032][2]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1032][2]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1032][2]["RewardItem"][1]["Id"] = 3314193 -- 腰缠万贯财宝箱[3314193][属性:8][叠加:10000][金币:0], 【表格】500W银两
	tDemonBox_MonsterDrop[1032][2]["RewardItem"][1]["Attr"] = "0 5 3" -- 腰缠万贯财宝箱（赠）*5
	tDemonBox_MonsterDrop[1032][2]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1032][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1032][2]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1032][3] = {}
	-- ===二级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1032][3]
	tDemonBox_MonsterDrop[1032][3]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1032][3]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1032][3]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1032][3]["RewardItem"][1]["Id"] = 3314194 -- 金玉满堂财宝箱[3314194][属性:8][叠加:10000][金币:0], 【表格】1000W银两
	tDemonBox_MonsterDrop[1032][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 金玉满堂财宝箱（赠）*1
	tDemonBox_MonsterDrop[1032][3]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1032][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1032][3]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1032][4] = {}
	-- ===二级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1032][4]
	tDemonBox_MonsterDrop[1032][4]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1032][4]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1032][4]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1032][4]["RewardItem"][1]["Id"] = 3314194 -- 金玉满堂财宝箱[3314194][属性:8][叠加:10000][金币:0], 【表格】2000W银两
	tDemonBox_MonsterDrop[1032][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 金玉满堂财宝箱（赠）*2
	tDemonBox_MonsterDrop[1032][4]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1032][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1032][4]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1032][5] = {}
	-- ===二级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1032][5]
	tDemonBox_MonsterDrop[1032][5]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1032][5]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1032][5]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1032][5]["RewardItem"][1]["Id"] = 3314194 -- 金玉满堂财宝箱[3314194][属性:8][叠加:10000][金币:0], 【表格】27000W银两
	tDemonBox_MonsterDrop[1032][5]["RewardItem"][1]["Attr"] = "0 27 3" -- 金玉满堂财宝箱（赠）*27
	tDemonBox_MonsterDrop[1032][5]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1032][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1032][5]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1032][6] = {}
	-- ===二级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1032][6]
	tDemonBox_MonsterDrop[1032][6]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1032][6]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1032][6]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1032][6]["RewardItem"][1]["Id"] = 3314194 -- 金玉满堂财宝箱[3314194][属性:8][叠加:10000][金币:0], 【表格】138000W银两
	tDemonBox_MonsterDrop[1032][6]["RewardItem"][1]["Attr"] = "0 138 3" -- 金玉满堂财宝箱（赠）*138
	tDemonBox_MonsterDrop[1032][6]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1032][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1032][6]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1033] = {}
	-- ===三级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1033][1]
	tDemonBox_MonsterDrop[1033][1] = {}
	tDemonBox_MonsterDrop[1033][1]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1033][1]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1033][1]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1033][1]["RewardItem"][1]["Id"] = 3330461 -- 圣龙果[3330461][属性:11][叠加:10000][金币:0], 【表格】圣龙果
	tDemonBox_MonsterDrop[1033][1]["RewardItem"][1]["Attr"] = "0 5" -- 圣龙果*5
	tDemonBox_MonsterDrop[1033][1]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1033][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1033][1]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1033][2] = {}
	-- ===三级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1033][2]
	tDemonBox_MonsterDrop[1033][2]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1033][2]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1033][2]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1033][2]["RewardItem"][1]["Id"] = 3314194 -- 金玉满堂财宝箱[3314194][属性:8][叠加:10000][金币:0], 【表格】5000W银两
	tDemonBox_MonsterDrop[1033][2]["RewardItem"][1]["Attr"] = "0 5 3" -- 金玉满堂财宝箱（赠）*5
	tDemonBox_MonsterDrop[1033][2]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1033][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1033][2]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1033][3] = {}
	-- ===三级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1033][3]
	tDemonBox_MonsterDrop[1033][3]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1033][3]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1033][3]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1033][3]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】10000W银两
	tDemonBox_MonsterDrop[1033][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 富可敌国财宝箱（赠）*1
	tDemonBox_MonsterDrop[1033][3]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1033][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1033][3]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1033][4] = {}
	-- ===三级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1033][4]
	tDemonBox_MonsterDrop[1033][4]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1033][4]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1033][4]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1033][4]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】20000W银两
	tDemonBox_MonsterDrop[1033][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 富可敌国财宝箱（赠）*2
	tDemonBox_MonsterDrop[1033][4]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1033][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1033][4]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1033][5] = {}
	-- ===三级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1033][5]
	tDemonBox_MonsterDrop[1033][5]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1033][5]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1033][5]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1033][5]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】270000W银两
	tDemonBox_MonsterDrop[1033][5]["RewardItem"][1]["Attr"] = "0 27 3" -- 富可敌国财宝箱（赠）*27
	tDemonBox_MonsterDrop[1033][5]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1033][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1033][5]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1033][6] = {}
	-- ===三级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1033][6]
	tDemonBox_MonsterDrop[1033][6]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1033][6]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1033][6]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1033][6]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】1380000W银两
	tDemonBox_MonsterDrop[1033][6]["RewardItem"][1]["Attr"] = "0 138 3" -- 富可敌国财宝箱（赠）*138
	tDemonBox_MonsterDrop[1033][6]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1033][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1033][6]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1034] = {}
	-- ===四级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1034][1]
	tDemonBox_MonsterDrop[1034][1] = {}
	tDemonBox_MonsterDrop[1034][1]["ItemChanceSum"] = 10000
	tDemonBox_MonsterDrop[1034][1]["LogId"] = 12001136
	-- 圣龙果 - 70%
	tDemonBox_MonsterDrop[1034][1][1] = {}
	tDemonBox_MonsterDrop[1034][1][1]["RandomItemChanceType"] = 2
	tDemonBox_MonsterDrop[1034][1][1]["ItemChance"] = 7000
	tDemonBox_MonsterDrop[1034][1][1]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][1][1]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][1][1]["RewardItem"][1]["Id"] = 3330461 -- SacredDragonFruit[3330461][属性:11][叠加:10000][金币:0], 【表格】圣龙果
	tDemonBox_MonsterDrop[1034][1][1]["RewardItem"][1]["Attr"] = "0 55" -- SacredDragonFruit*55（[错误]物品数量超10个）
	tDemonBox_MonsterDrop[1034][1][1]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 双人坐骑碎片 - 30%
	tDemonBox_MonsterDrop[1034][1][2] = {}
	tDemonBox_MonsterDrop[1034][1][2]["RandomItemChanceType"] = 2
	tDemonBox_MonsterDrop[1034][1][2]["ItemChance"] = 3000
	tDemonBox_MonsterDrop[1034][1][2]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][1][2]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][1][2]["RewardItem"][1]["Id"] = 3330474 -- HeavenDragonFragment[3330474][属性:9][叠加:10000][金币:0], 【表格】双人坐骑碎片
	tDemonBox_MonsterDrop[1034][1][2]["RewardItem"][1]["Attr"] = "0 1" -- HeavenDragonFragment*1
	tDemonBox_MonsterDrop[1034][1][2]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1034][2] = {}
	-- ===四级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1034][2]
	tDemonBox_MonsterDrop[1034][2]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1034][2]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][2]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][2]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】50000W银两
	tDemonBox_MonsterDrop[1034][2]["RewardItem"][1]["Attr"] = "0 5 3" -- 富可敌国财宝箱（赠）*5
	tDemonBox_MonsterDrop[1034][2]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][2]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1034][3] = {}
	-- ===四级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1034][3]
	tDemonBox_MonsterDrop[1034][3]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1034][3]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][3]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][3]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】100000W银两
	tDemonBox_MonsterDrop[1034][3]["RewardItem"][1]["Attr"] = "0 10 3" -- 富可敌国财宝箱（赠）*10
	tDemonBox_MonsterDrop[1034][3]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][3]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1034][4] = {}
	-- ===四级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1034][4]
	tDemonBox_MonsterDrop[1034][4]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1034][4]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][4]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][4]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】200000W银两
	tDemonBox_MonsterDrop[1034][4]["RewardItem"][1]["Attr"] = "0 20 3" -- 富可敌国财宝箱（赠）*20
	tDemonBox_MonsterDrop[1034][4]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][4]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1034][5] = {}
	-- ===四级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1034][5]
	tDemonBox_MonsterDrop[1034][5]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1034][5]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][5]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][5]["RewardItem"][1]["Id"] = 3314195 -- 富可敌国财宝箱[3314195][属性:8][叠加:10000][金币:0], 【表格】2700000W银两
	tDemonBox_MonsterDrop[1034][5]["RewardItem"][1]["Attr"] = "0 270 3" -- 富可敌国财宝箱（赠）*270
	tDemonBox_MonsterDrop[1034][5]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][5]["RewardEffect"]["Effect"] = "angelwing"


	tDemonBox_MonsterDrop[1034][6] = {}
	-- ===四级瑞兽
	-- ===索引:tDemonBox_MonsterDrop[1034][6]
	tDemonBox_MonsterDrop[1034][6]["LogId"] = 12001136
	tDemonBox_MonsterDrop[1034][6]["RewardItem"] = {}
	tDemonBox_MonsterDrop[1034][6]["RewardItem"][1] = {}
	tDemonBox_MonsterDrop[1034][6]["RewardItem"][1]["Id"] = 3314195 -- EnviousWealthChest[3314195][属性:8][叠加:10000][金币:0], 【表格】13800000W银两
	tDemonBox_MonsterDrop[1034][6]["RewardItem"][1]["Attr"] = "0 1380 3" -- EnviousWealthChest（赠）*1380（[错误]物品数量超10个）
	tDemonBox_MonsterDrop[1034][6]["RewardEffect"] = {}
	tDemonBox_MonsterDrop[1034][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDemonBox_MonsterDrop[1034][6]["RewardEffect"]["Effect"] = "angelwing"
	
local tDemonBox_SellBox = {}
	tDemonBox_SellBox[3310450] = {}
	tDemonBox_SellBox[3310450]["Money"] = 990000
	tDemonBox_SellBox[3310450]["DeleteItem"] = {}
	tDemonBox_SellBox[3310450]["DeleteItem"][1] = {}
	tDemonBox_SellBox[3310450]["DeleteItem"][1]["Id"] = 3310450
	tDemonBox_SellBox[3310450]["DeleteItem"][1]["ItemNum"] = 1
	tDemonBox_SellBox[3310450]["RewardMoney"] = {}
	tDemonBox_SellBox[3310450]["RewardMoney"]["Value"] = 990000
	tDemonBox_SellBox[3310450]["RewardEffect"] = {}
	tDemonBox_SellBox[3310450]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_SellBox[3310450]["LogId"] = 12001136
	
	tDemonBox_SellBox[3310451] = {}
	tDemonBox_SellBox[3310451]["Money"] = 9900000
	tDemonBox_SellBox[3310451]["DeleteItem"] = {}
	tDemonBox_SellBox[3310451]["DeleteItem"][1] = {}
	tDemonBox_SellBox[3310451]["DeleteItem"][1]["Id"] = 3310451
	tDemonBox_SellBox[3310451]["DeleteItem"][1]["ItemNum"] = 1
	tDemonBox_SellBox[3310451]["RewardMoney"] = {}
	tDemonBox_SellBox[3310451]["RewardMoney"]["Value"] = 9900000
	tDemonBox_SellBox[3310451]["RewardEffect"] = {}
	tDemonBox_SellBox[3310451]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_SellBox[3310451]["LogId"] = 12001136
	
	tDemonBox_SellBox[3310452] = {}
	tDemonBox_SellBox[3310452]["Money"] = 99000000
	tDemonBox_SellBox[3310452]["DeleteItem"] = {}
	tDemonBox_SellBox[3310452]["DeleteItem"][1] = {}
	tDemonBox_SellBox[3310452]["DeleteItem"][1]["Id"] = 3310452
	tDemonBox_SellBox[3310452]["DeleteItem"][1]["ItemNum"] = 1
	tDemonBox_SellBox[3310452]["RewardItem"] = {}
	tDemonBox_SellBox[3310452]["RewardItem"][1] = {}
	tDemonBox_SellBox[3310452]["RewardItem"][1]["Id"] = 3310480
	tDemonBox_SellBox[3310452]["RewardItem"][1]["Attr"] = "0 %d"
	tDemonBox_SellBox[3310452]["RewardMoney"] = {}
	tDemonBox_SellBox[3310452]["RewardMoney"]["Value"] = 9000000
	tDemonBox_SellBox[3310452]["RewardEffect"] = {}
	tDemonBox_SellBox[3310452]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_SellBox[3310452]["LogId"] = 12001136
	
	tDemonBox_SellBox[3310453] = {}
	tDemonBox_SellBox[3310453]["Money"] = 990000000
	tDemonBox_SellBox[3310453]["DeleteItem"] = {}
	tDemonBox_SellBox[3310453]["DeleteItem"][1] = {}
	tDemonBox_SellBox[3310453]["DeleteItem"][1]["Id"] = 3310453
	tDemonBox_SellBox[3310453]["DeleteItem"][1]["ItemNum"] = 1
	tDemonBox_SellBox[3310453]["RewardItem"] = {}
	tDemonBox_SellBox[3310453]["RewardItem"][1] = {}
	tDemonBox_SellBox[3310453]["RewardItem"][1]["Id"] = 3310480
	tDemonBox_SellBox[3310453]["RewardItem"][1]["Attr"] = "0 %d"
	tDemonBox_SellBox[3310453]["RewardItem"][2] = {}
	tDemonBox_SellBox[3310453]["RewardItem"][2]["Id"] = 3310481
	tDemonBox_SellBox[3310453]["RewardItem"][2]["Attr"] = "0 %d"
	tDemonBox_SellBox[3310453]["RewardEffect"] = {}
	tDemonBox_SellBox[3310453]["RewardEffect"]["Effect"] = "angelwing"
	tDemonBox_SellBox[3310453]["LogId"] = 12001136
	
	-- 新服标志
local nDemonBox_GlobalId = 51131
----------------------------------逻辑部分---------------------------------------------
-- 判断活动是否开启
function DemonBox_JudgeOpen()
	-- local nGlobalId = nDemonBox_GlobalId
	-- local nData = Get_SysDynaGlobalData0(nGlobalId)
	
	-- 激情服新服例行活动
	-- if nData >= 1 and SpecialServer_ChkNoGiftServer() then
		-- return true
	-- else
	if Sys_ChkFullTime(tDemonBox_Constant["ActivityTime"]) then
		return true
	end
	
	return false
end

-- 购买试炼盒
function DemonBox_BuyDemonBox(nNpcId,nData,nNum)
	if not DemonBox_JudgeOpen() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nItemId = tDemonBox_Reward[nData]["RewardItem"][1]["Id"]
	local nMoney = tDemonBox_Reward[nData]["Money"]
	local nSpace = tDemonBox_Reward["Space"]
	-- 背包空间不足
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
		-- 银两不足
	if not User_CanPutMoney2Bag(-1*nMoney*nNum) then
		User_TalkChannel2005(tRewardTemplate_Text["NoMoney"])
		return
	end
	local tReward = CommonFunc_Copy(tDemonBox_Reward[nData])
	tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nNum)
	tReward["Log"] = string.format(tReward["Log"],nMoney*nNum,nNum)
	if User_AddMoney(-1*nMoney*nNum) then
		tReward["Talk"] = string.format(tDemonBox_Text["GetItem"],nNum,Get_ItemtypeName(nItemId))
		RewardTemplate_UseItemAndMsg(tReward)
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
end

-- 兑换银两
function DemonBox_SellDan(nNpcId,nItemId)
	if not DemonBox_JudgeOpen() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	-- 无此种内丹
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	if nItemId == 3310465 then
		local nMoney = tDemonBox_Reward[nItemId]["RewardMoney"]["Value"]
		-- 银两过多
		if not User_CanPutMoney2Bag(nMoney) then
			Sys_MsgBox(tDemonBox_Text["NoMoreMoney"])
			return
		end
	end
	local nSpace = RewardTemplate_GetRewardSpace(tDemonBox_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
		return
	end
	tDemonBox_Reward[nItemId]["Talk"] = string.format(tDemonBox_Text["SellDan"],Get_ItemtypeName(nItemId),tDemonBox_Constant["Price"][nItemId])
	if RewardTemplate_UseItemAndMsg(tDemonBox_Reward[nItemId]) then
		Sys_SystemBroadcast(string.format(tDemonBox_Text["SellDanBroadcast"],Get_UserName(),Get_ItemtypeName(nItemId),tDemonBox_Constant["Price"][nItemId]))
	end
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

-- 判断是否在双龙城内
function DemonBox_InCity()
	local nCellx = Get_UserPositionX()
	local nCelly = Get_UserPositionY()
	-- 判断是否激情服
	if not SpecialServer_ChkNoGiftServer() then
		if tDemonBox_Constant["Map"][1]["MinCellx"] < nCellx and nCellx < tDemonBox_Constant["Map"][1]["MaxCellx"] and nCelly < tDemonBox_Constant["Map"][1]["MaxCelly"] then
			return true
		end
		if tDemonBox_Constant["Map"][2]["MinCellx"] < nCellx and nCellx < tDemonBox_Constant["Map"][2]["MaxCellx"] and nCelly < tDemonBox_Constant["Map"][2]["MaxCelly"] then
			return true
		end
		return false
	else
		if tDemonBox_Constant["NoGiftMap"][1]["MinCellx"] < nCellx and nCellx < tDemonBox_Constant["NoGiftMap"][1]["MaxCellx"] and nCelly < tDemonBox_Constant["NoGiftMap"][1]["MaxCelly"] then
			return true
		end
		return false
	end
end

-- 判断是否在卫兵附近
function DemonBox_AroundGuard()
	local nCellx = Get_UserPositionX()
	local nCelly = Get_UserPositionY()
	-- 判断是否激情服
	if not SpecialServer_ChkNoGiftServer() then
		for i=1,#tDemonBox_Constant["Guard"] do
			if tDemonBox_Constant["Guard"][i]["MinCellx"] < nCellx and nCellx < tDemonBox_Constant["Guard"][i]["MaxCellx"] and nCelly < tDemonBox_Constant["Guard"][i]["MaxCelly"] and nCelly > tDemonBox_Constant["Guard"][i]["MinCelly"] then
				return false
			end
		end
		return true
	else
		for i=1,#tDemonBox_Constant["NoGiftGuard"] do
			if tDemonBox_Constant["NoGiftGuard"][i]["MinCellx"] < nCellx and nCellx < tDemonBox_Constant["NoGiftGuard"][i]["MaxCellx"] and nCelly < tDemonBox_Constant["NoGiftGuard"][i]["MaxCelly"] and nCelly > tDemonBox_Constant["NoGiftGuard"][i]["MinCelly"] then
				return false
			end
		end
		return true
	end
end

function DemonBox_FindCanUseDemonBox()
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		local nMapId = tDemonBox_FindCanUseDemonBox["NoGift"]["MapId"]
		local nPosX = tDemonBox_FindCanUseDemonBox["NoGift"]["PosX"]
		local nPosY = tDemonBox_FindCanUseDemonBox["NoGift"]["PosY"]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1)
	else
		local nMapId = tDemonBox_FindCanUseDemonBox["Normal"]["MapId"]
		local nPosX = tDemonBox_FindCanUseDemonBox["Normal"]["PosX"]
		local nPosY = tDemonBox_FindCanUseDemonBox["Normal"]["PosY"]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1)
	end
end

-- 使用试炼盒前判断时间和位置
function DemonBox_BeforeUseDemonBox(nItemId)
	if not DemonBox_JudgeOpen() then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_MsgBox(tDemonBox_Text["TimeOut"])
		end
		return false
	end
	local nMapId = Get_UserMapId()
	local nNeedMapId
	if SpecialServer_ChkNoGiftServer() then
		nNeedMapId = tDemonBox_Constant["MapId"]["NoGift"]
	else
		nNeedMapId = tDemonBox_Constant["MapId"]["Normal"]
	end
	if DemonBox_InCity() or nMapId ~= nNeedMapId then
		if Get_UserHouseId() ~= nMapId then
			Sys_MsgBox(tDemonBox_Text["InCity"],"DemonBox_FindCanUseDemonBox")
			return false
		end
	end
	if not DemonBox_AroundGuard() then
		Sys_MsgBox(tDemonBox_Text["AroundGuard"])
		return false
	end
	return true
end

-- 使用试炼盒
function DemonBox_UseDemonBox(nItemId)
	if not DemonBox_BeforeUseDemonBox(nItemId) then
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nMapId = Get_UserMapId()
		local nCellx = Get_UserPositionX()+math.random(-3,3)
		local nCelly = Get_UserPositionY()+math.random(-3,3)
		local nMonsterId = tDemonBox_Constant["MonsterId"][nItemId]
		Sys_MsgBox(tDemonBox_Text["Release"])
		Monster_AddMonster(nMapId,nCellx,nCelly,tDemonBox_Constant["GenId"],nMonsterId)
		if nItemId == 3310453 then
			Sys_SystemBroadcast(string.format(tDemonBox_Text["Broadcast"],Get_UserName()))
		end
	end
	return true
end

function DemonBox_UseAllDemonBox(nItemId)
	if not DemonBox_BeforeUseDemonBox(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum > 10 then
		nItemNum = 10
	end
	for i=1,nItemNum do
		DemonBox_UseDemonBox(nItemId)
	end
end

-- 卖内丹判断
function DemonBox_JudgeDan(nNpcId,nItemId)
	if not DemonBox_JudgeOpen() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	-- 无此种内丹
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,tDemonBox_Constant[nItemId])
end

-- 重写邮件文字
function DemonBox_MailText(nIndex)
	-- 特殊处理
	for i,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		v["Content"] = string.format(v["Content"],i)
	end
end

function DemonBox_RankList()
	local nRankId = tDemonBox_Constant["RankList"]
	if not DemonBox_JudgeOpen() then
		LinkNpcGossipFunc_New(nRankId,"1-2")
		return
	end
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,tRankingFunc_Info[nRankId]["RankNum"] do
		local sMiddle = ""
		local sRight = ""
		if tRankList ~= nil then
			if tRankList[i] ~= nil then
				sMiddle = tostring(tRankList[i]["Score"])
				sRight = tRankList[i]["UserName"]
			else
				sMiddle = "0"
				sRight = tDemonBox_Text[nRankId]["Null"]
			end
		else
			sMiddle = "0"
			sRight = tDemonBox_Text[nRankId]["Null"]
		end
		local sLeft = string.format(tDemonBox_Text[nRankId]["Rank"], i)
		local sLast = tDemonBox_Text[nRankId]["Award"][i]
		local sText = Sys_CenterAline(sLeft,8,sMiddle,21,sRight,34,sLast,48)
		tNpcGossip[nRankId]["Text51".. (6+i)] = string.format(tDemonBox_Text[nRankId]["Text51".. (6+i)],sText)
	end
	local nNowRank
	if tRankList ~= nil then
		nNowRank = RankingFunc_GetUserInRank(nRankId)
	else
		nNowRank = 0
	end
	local nEvent = tDemonBox_Constant["EventType"]
	local nType = tDemonBox_Constant["DataType"]
	local nKillMonster = Get_UserStatisticValue(nEvent,nType)
	if nNowRank == 0 then
		tNpcGossip[nRankId]["Text5-1"] = {116,511,512,513,517,518,519,5110,5111,5112,5113,5114,5115,5116,512,514,516}
		tNpcGossip[nRankId]["Text516"] = string.format(tDemonBox_Text[nRankId]["Text516"],nKillMonster)
	else
		tNpcGossip[nRankId]["Text5-1"] = {116,511,512,513,517,518,519,5110,5111,5112,5113,5114,5115,5116,512,514,515}
		tNpcGossip[nRankId]["Text515"] = string.format(tDemonBox_Text[nRankId]["Text515"],nKillMonster,nNowRank)
	end
end

function DemonBox_RankUpdate(nMonsterId)
	local nRankId = tDemonBox_Constant["RankList"]
	local nEvent = tDemonBox_Constant["EventType"]
	local nType = tDemonBox_Constant["DataType"]
	local nKillMonster = Get_UserStatisticValue(nEvent,nType)
	-- 除妖值
	local nKillMonsterScore = tDemonBox_Constant["KillMonster"][nMonsterId]
	local nScore = nKillMonster+nKillMonsterScore
	Task_SetStatistic(nEvent,nType,nScore,1)
	if nScore >= 100000 then
		RankingFunc_SetInfo(nRankId,nScore)
	end
end

-- 杀怪掉落
function DemonBox_KillMonster(nMonsterId)
	DemonBox_RankUpdate(nMonsterId)
	local tTab = RewardTemplate_Random(tDemonBox_Random,1)
	local nNumIndex = tTab[1]["tAward"][1]["Index"]
	local nMonMapId = Get_MonsterMapID()
	local nMonCellx = Get_MonsterPosX()
	local nMonCelly = Get_MonsterPosY()
	local tReward
	local nItemId
	local nItemNum
	if tDemonBox_MonsterDrop[nMonsterId][nNumIndex][1] ~= nil then
		DemonBox_RandomReward(tDemonBox_MonsterDrop[nMonsterId],nNumIndex)
	else
		DemonBox_UseItemAndMsg(tDemonBox_MonsterDrop[nMonsterId][nNumIndex])
	end
-- -- 怪物无掉落金币部分继续随机取奖励
	-- if nNumIndex == 1 then
		-- tReward = RewardTemplate_Random(tDemonBox_MonsterDrop[nMonsterId],1)
		-- nItemId = tReward[1]["tAward"][1]["ItemId"][1]["Id"]
		-- nItemNum = tReward[1]["tAward"][1]["ItemId"][1]["Number"]
		-- Map_DropMultiItems(nMonMapId,nItemId,nMonCellx,nMonCelly,4,4,nItemNum,300)
		-- return
	-- end
-- -- 怪物掉落金币部分
	-- if nNumIndex ~= 1 then
		-- User_MediaPlay("sound/DropMoney.wav")
		-- if tDemonBox_MonsterDrop[nMonsterId][nNumIndex]["Item"] >= 1 then
			-- for i=1,tDemonBox_MonsterDrop[nMonsterId][nNumIndex]["Item"] do
				-- nItemId = tDemonBox_MonsterDrop[nMonsterId][nNumIndex]["ItemId"][i]["Id"]
				-- nItemNum = tDemonBox_MonsterDrop[nMonsterId][nNumIndex]["ItemId"][i]["Number"]
				-- if nNumIndex ~= 6 then
					-- Map_DropMultiItems(nMonMapId,nItemId,nMonCellx,nMonCelly,4,4,nItemNum,300)
				-- else
				-- -- 掉落内丹强插背包
					-- Item_AddItem(nItemId,0,nItemNum)
				-- -- 背包已满提示
					-- local nDropNum = Get_CountItemType(nItemId,0)
					-- if not User_CheckLeftSpace(1) and nDropNum%9999 == 0 then
						-- User_TalkChannel2005(tDemonBox_Text["DropDanNoSpace"])
					-- end
				-- -- 掉落内丹出公告
					-- Sys_SystemBroadcast(string.format(tDemonBox_Text["DropDan"][nItemId],Get_UserName()))
				-- end
			-- end
		-- end
		-- local nMoney = tDemonBox_MonsterDrop[nMonsterId][nNumIndex]["Money"]
		-- if nMoney >= 1 then
			-- Monster_SysDropMoney(nMoney)
		-- end
		-- return
	-- end
end

function DemonBox_ClickBroadCast(nNpcId)
	local nUserMapId = Get_UserMapId()
	local nMapId = tDemonBox_Constant["MapId"]
	if nUserMapId == nMapId then
		NpcPosition_PathFind(nNpcId)
	else
		User_TalkChannel2005(tDemonBox_Text["NpcPos"])
	end
end

-- 交还试炼盒一次确认
function DemonBox_BeforeSellBox(nNpcId,nItemId,nData,sLink)
	if not DemonBox_JudgeOpen() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	local nUserItemNum = Get_CountItemType(nItemId,0)
	if nUserItemNum == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	-- 全部交还
	local nSellItemNum = nData
	if nSellItemNum == 0 then
		nSellItemNum = Get_CountItemType(nItemId,0)
	end
	if nUserItemNum < nSellItemNum then
		tNpcGossip[nNpcId]["Text261"] = string.format(tDemonBox_Text[nNpcId]["Text261"],Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,sLink)
	end
end

-- 交还试炼盒二次确认
function DemonBox_SellBox(nNpcId,nItemId,nData)
	if not DemonBox_JudgeOpen() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	local nUserItemNum = Get_CountItemType(nItemId,0)
	if nUserItemNum == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	local nSellItemNum = nData
	-- 全部交还
	if nSellItemNum == 0 then
		nSellItemNum = Get_CountItemType(nItemId,0)
	end
	if nUserItemNum < nSellItemNum then
		tNpcGossip[nNpcId]["Text261"] = string.format(tDemonBox_Text[nNpcId]["Text261"],Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	local tReward = CommonFunc_Copy(tDemonBox_SellBox[nItemId])
	local nMoney
	if nItemId ~= 3310453 then
		nMoney = tReward["RewardMoney"]["Value"]*nSellItemNum
	else
		nMoney = 0
	end
	if not User_CanPutMoney2Bag(nMoney) then
		Sys_MsgBox(tDemonBox_Text["NoMoreMoney"])
		return
	end
	tReward["DeleteItem"][1]["ItemNum"] = nSellItemNum
	if nItemId == 3310450 or nItemId == 3310451 then
		tReward["RewardMoney"]["Value"] = nMoney
	elseif nItemId == 3310452 then
		tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nSellItemNum*9)
		tReward["RewardMoney"]["Value"] = nMoney
	else
		tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nSellItemNum*9)
		tReward["RewardItem"][2]["Attr"] = string.format(tReward["RewardItem"][2]["Attr"],nSellItemNum*9)
	end
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tDemonBox_Text["SellBoxNoSpace"])
		return
	end
	tReward["Talk"] = string.format(tDemonBox_Text["SellBox"],nSellItemNum,Get_ItemtypeName(nItemId),tReward["Money"]*nSellItemNum)
	RewardTemplate_UseItemAndMsg(tReward)
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

-- 新服排行榜控制时间
function DemonBox_SetGlobal()
	local nGlobalId = nDemonBox_GlobalId
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	-- 非激情新服设置为正常活动时间
	if not SpecialServer_ChkNoGiftServer() then
		tRankingFunc_Info[21856]["ActiveTime"] = tDemonBox_Constant["ActivityTime"]
		tRankingFunc_Info[21856]["Mail"]["ActiveTime"] = tActivityTime["DemonBox"]["RankActivityTime"]
	end
	if nData >= 1 then
		local sActivityTime = Get_SysDynaGlobalDataStr(nGlobalId,5)
		local sNewServerTime = Get_SysDynaGlobalDataStr(nGlobalId,0)
		-- 激情新服首月活动
		local nActDays = 30
		local sActTime,sRankBeginTime = Get_ActivityAllTime(sNewServerTime,nActDays)
		local sRankTime,sRankFinishTime = Get_ActivityAllTime(sRankBeginTime,1)
		tDemonBox_Constant["ActivityTime"] = sActTime
		tRankingFunc_Info[21856]["ActiveTime"] = sActTime
		tRankingFunc_Info[21856]["Mail"]["ActiveTime"] = sRankTime
	end
	-- 重写活动时间文字
	local sBeginYear,sBeginMonth,sBeginDay,sBeginHour,sBeginMinute,sEndYear,sEndMonth,sEndDay,sEndHour,sEndMinute = CommonFunc_AnalysisActivityTime(tDemonBox_Constant["ActivityTime"])
	tNpcGossip[21856]["Text111"] = string.format(tDemonBox_Text[21856]["Text111"],sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
	tNpcGossip[21856]["Text114"] = string.format(tDemonBox_Text[21856]["Text114"],sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
	tNpcGossip[21856]["Text141"] = string.format(tDemonBox_Text[21856]["Text141"],sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
	tNpcGossip[21856]["Text156"] = string.format(tDemonBox_Text[21856]["Text156"],sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
	tNpcGossip[21857]["Text123"] = string.format(tDemonBox_Text[21857]["Text123"],sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
	tNpcGossip[21856]["Text511"] = string.format(tDemonBox_Text[21856]["Text511"],sBeginMonth,sBeginDay,sEndMonth,sEndDay)
	-- 重新加载排行榜数据
	RankingFunc_StartServer()
end

-- 强插用
function DemonBox_RandomReward(tTable,nIndex,nNowUserId)
	if type(tTable[nIndex]) ~= "table" then
		return false
	end

	local nUserId = nNowUserId or Get_UserId()
	tRewardTemplate_DelItemTypeLog[nUserId] = ""
	tRewardTemplate_DelItemNumLog[nUserId] = ""

	-- 判断是否给通用提示
	if tTable[nIndex]["NoTip"] == nil then
		tRewardTemplate_NewRewardItem[nUserId] = 1
	else
		tRewardTemplate_NewRewardItem[nUserId] = nil
	end

	-- -- 上限及背包空间判断
	-- if not RewardTemplate_RandomUpperLimit(tTable,nIndex,nUserId) then
		-- return false
	-- end
	
	-- 花费上限判断
	if not RewardTemplate_Cost(tTable[nIndex],nUserId) then
		return false
	end

	-- 删除物品
	if not RewardTemplate_DelItem(tTable[nIndex],nUserId) then
		return false
	end

	local nFlag,tReward = Probabil_RandomAward(tTable,nIndex)
	local tChar = {"tAward","tAbsoluteAward","tSelfItemChanceAward"}
	local sRewardStr = ""
	local tNewReward = {}

	for i = 1,#tReward do
		tNewReward[i] = {}
		for j,v in pairs(tChar) do
			local tAward = tReward[i][v]
			tNewReward[i][v] = {}
			
			if tAward ~= nil and next(tAward) ~= nil then
				for m,n in pairs (tAward) do
					local sTemp,tNewAward = RewardTemplate_GiveRandom(n,tTable[nIndex],nUserId)
					if tNewAward ~= nil then
						table.insert(tNewReward[i][v],tNewAward)
						-- 判断是否需要打emoneybuylog
						if tNewAward["EmoneyLog"] ~= nil then
							Sys_SaveEmoneyBuy(tNewAward["EmoneyLog"],nUserId)
						end
					end
					if sTemp ~= nil and sTemp ~= "" then
						if sRewardStr == nil or sRewardStr == "" then
							sRewardStr = sTemp
						else
							sRewardStr = string.format(tLuaRes[10026],sRewardStr,tRewardTemplate_Text["Punctuat"],sTemp)
						end
					end
				end
			end
		end
	end
	
	return tNewReward,sRewardStr
end

-- 强插用
function DemonBox_UseItemAndMsg(tReward,nNowUserId,bJudge)
	local nUserId = nNowUserId or Get_UserId()
	tRewardTemplate_DelItemTypeLog[nUserId] = ""
	tRewardTemplate_DelItemNumLog[nUserId] = ""
	tRewardTemplate_NewRewardItem[nUserId] = 1
	
	-- 掩码判断
	local nEvent = tReward["EventType"]
	local nType = tReward["DataType"]
	
	if (bJudge ~= nil) and (not bJudge) then
		return false
	end
	
	if bJudge == nil then
		if (nEvent ~= nil or nType ~= nil) and not RewardTemplate_JudgmentStc(tReward,nUserId) then
			return false
		end
		
		-- -- 上限判断
		-- if not RewardTemplate_UpperLimit(tReward,nUserId) then
			-- return false
		-- end
	end
	
	-- 花费上限判断
	if not RewardTemplate_Cost(tReward,nUserId) then
		return false
	end

	-- 是否要删除物品
	if not RewardTemplate_DelItem(tReward,nUserId) then
		return false
	end
	-- 设置掩码
	if (nEvent ~= nil or nType ~= nil) then
		RewardTemplate_SetStc(tReward,nUserId)
	end
	
	-- 给奖励
	local sRewardStr = RewardTemplate_Reward(tReward,nUserId)
	
	if tReward["EmoneyLog"] ~= nil then
		Sys_SaveEmoneyBuy(tReward["EmoneyLog"],nUserId)
	end
	
	return true,sRewardStr
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[1281] = 67
tNpcGossip[21856]= tNpcGossip[21856] or DefaultNpc:new{}
tNpcGossip[21856]["OptionHidden"] = 1
tNpcGossip[21856]["DialogueText"] = tDemonBox_Text[21856]
-- 活动前
tNpcGossip[21856]["Text1-1"] = {116,111,112,113,114,115}
tNpcGossip[21856]["ChkFunc1-1"]= function()
	return false
end
tNpcGossip[21856]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[21856]["Text1-2"] = {116,121,122}
tNpcGossip[21856]["ChkFunc1-2"]= function()
	return not DemonBox_JudgeOpen()
end
tNpcGossip[21856]["tOption1-2"] = {121}
-- 活动中
tNpcGossip[21856]["Text1-3"] = {116,111,131,113,132,115}
tNpcGossip[21856]["ChkFunc1-3"]= function()
	return DemonBox_JudgeOpen()
end
tNpcGossip[21856]["tOption1-3"] = {131,134,136,132}
tNpcGossip[21856]["OptionPoint131"] = "1-4"
tNpcGossip[21856]["OptionPoint132"] = "1-5"
tNpcGossip[21856]["OptionPoint134"] = "1-8"
tNpcGossip[21856]["OptionPoint136"] = "5-1"

-- 求取宝藏试炼盒
tNpcGossip[21856]["Text1-4"] = {116,141,142}
tNpcGossip[21856]["tOption1-4"] = {141,142,143,144}
tNpcGossip[21856]["OptionPoint141"] = "2-1"
tNpcGossip[21856]["OptionPoint142"] = "2-2"
tNpcGossip[21856]["OptionPoint143"] = "2-3"
tNpcGossip[21856]["OptionPoint144"] = "2-4"
tNpcGossip[21856]["OptionPoint145"] = "1-3"
-- 宝藏试炼规则
tNpcGossip[21856]["Text1-5"] = {151,152,153,154,155,156,157,152}
tNpcGossip[21856]["tOption1-5"] = {151}
tNpcGossip[21856]["OptionPoint151"] = "1-3"
-- 银两不足
tNpcGossip[21856]["Text1-6"] = {161}
tNpcGossip[21856]["tOption1-6"] = {151}
-- 背包空间不足
tNpcGossip[21856]["Text1-7"] = {171}
tNpcGossip[21856]["tOption1-7"] = {171}

-- 妖魔内丹兑换银两
tNpcGossip[21856]["Text1-8"] = {116,181,182}
tNpcGossip[21856]["tOption1-8"] = {181,182,183,184}
tNpcGossip[21856]["OptionFunc181"] = "DemonBox_JudgeDan</N>21856</N>3310465"
tNpcGossip[21856]["OptionFunc182"] = "DemonBox_JudgeDan</N>21856</N>3310466"
tNpcGossip[21856]["OptionFunc183"] = "DemonBox_JudgeDan</N>21856</N>3310467"
tNpcGossip[21856]["OptionFunc184"] = "DemonBox_JudgeDan</N>21856</N>3310468"
tNpcGossip[21856]["OptionPoint185"] = "1-3"

-- 选择购买数量
tNpcGossip[21856]["Text2-1"] = {116,211}
tNpcGossip[21856]["tOption2-1"] = {211,212,213,214}
-- tNpcGossip[21856]["OptionPoint211"] = "4-1"
-- tNpcGossip[21856]["OptionPoint212"] = "4-2"
-- tNpcGossip[21856]["OptionPoint213"] = "4-3"
tNpcGossip[21856]["OptionPoint214"] = "1-4"
tNpcGossip[21856]["OptionFunc211"] = "DemonBox_BuyDemonBox</N>21856</N>1</N>1"
tNpcGossip[21856]["OptionFunc212"] = "DemonBox_BuyDemonBox</N>21856</N>1</N>5"
tNpcGossip[21856]["OptionFunc213"] = "DemonBox_BuyDemonBox</N>21856</N>1</N>10"

tNpcGossip[21856]["Text2-2"] = {116,221}
tNpcGossip[21856]["tOption2-2"] = {221,222,223,214}
-- tNpcGossip[21856]["OptionPoint221"] = "4-4"
-- tNpcGossip[21856]["OptionPoint222"] = "4-5"
-- tNpcGossip[21856]["OptionPoint223"] = "4-6"
tNpcGossip[21856]["OptionFunc221"] = "DemonBox_BuyDemonBox</N>21856</N>2</N>1"
tNpcGossip[21856]["OptionFunc222"] = "DemonBox_BuyDemonBox</N>21856</N>2</N>5"
tNpcGossip[21856]["OptionFunc223"] = "DemonBox_BuyDemonBox</N>21856</N>2</N>10"

tNpcGossip[21856]["Text2-3"] = {116,231}
tNpcGossip[21856]["tOption2-3"] = {231,232,233,214}
-- tNpcGossip[21856]["OptionPoint231"] = "4-7"
-- tNpcGossip[21856]["OptionPoint232"] = "4-8"
-- tNpcGossip[21856]["OptionPoint233"] = "4-9"
tNpcGossip[21856]["OptionFunc231"] = "DemonBox_BuyDemonBox</N>21856</N>3</N>1"
tNpcGossip[21856]["OptionFunc232"] = "DemonBox_BuyDemonBox</N>21856</N>3</N>5"
tNpcGossip[21856]["OptionFunc233"] = "DemonBox_BuyDemonBox</N>21856</N>3</N>10"

-- 四级试炼盒二次确认
tNpcGossip[21856]["Text2-4"] = {116,241}
tNpcGossip[21856]["tOption2-4"] = {241,214}
tNpcGossip[21856]["OptionFunc241"] = "DemonBox_BuyDemonBox</N>21856</N>4</N>1"

-- 兑换银两二次确认
tNpcGossip[21856]["Text3-1"] = {116,311}
tNpcGossip[21856]["tOption3-1"] = {311,185}
tNpcGossip[21856]["OptionFunc311"] = "DemonBox_SellDan</N>21856</N>3310465"

tNpcGossip[21856]["Text3-2"] = {116,321}
tNpcGossip[21856]["tOption3-2"] = {321,185}
tNpcGossip[21856]["OptionFunc321"] = "DemonBox_SellDan</N>21856</N>3310466"

tNpcGossip[21856]["Text3-3"] = {116,331}
tNpcGossip[21856]["tOption3-3"] = {331,185}
tNpcGossip[21856]["OptionFunc331"] = "DemonBox_SellDan</N>21856</N>3310467"

tNpcGossip[21856]["Text3-4"] = {116,341}
tNpcGossip[21856]["tOption3-4"] = {341,185}
tNpcGossip[21856]["OptionFunc341"] = "DemonBox_SellDan</N>21856</N>3310468"
-- 无此内丹
tNpcGossip[21856]["Text3-5"] = {116,351}
tNpcGossip[21856]["tOption3-5"] = {351}
tNpcGossip[21856]["OptionPoint351"] = "1-3"

-- 二次确认
-- 一级试炼盒
tNpcGossip[21856]["Text4-1"] = {116,411}
tNpcGossip[21856]["tOption4-1"] = {411,214}
tNpcGossip[21856]["OptionFunc411"] = "DemonBox_BuyDemonBox</N>21856</N>1</N>1"
tNpcGossip[21856]["Text4-2"] = {116,421}
tNpcGossip[21856]["tOption4-2"] = {421,214}
tNpcGossip[21856]["OptionFunc421"] = "DemonBox_BuyDemonBox</N>21856</N>1</N>5"
tNpcGossip[21856]["Text4-3"] = {116,431}
tNpcGossip[21856]["tOption4-3"] = {431,214}
tNpcGossip[21856]["OptionFunc431"] = "DemonBox_BuyDemonBox</N>21856</N>1</N>10"
-- 二级试炼盒
tNpcGossip[21856]["Text4-4"] = {116,441}
tNpcGossip[21856]["tOption4-4"] = {441,214}
tNpcGossip[21856]["OptionFunc441"] = "DemonBox_BuyDemonBox</N>21856</N>2</N>1"
tNpcGossip[21856]["Text4-5"] = {116,451}
tNpcGossip[21856]["tOption4-5"] = {451,214}
tNpcGossip[21856]["OptionFunc451"] = "DemonBox_BuyDemonBox</N>21856</N>2</N>5"
tNpcGossip[21856]["Text4-6"] = {116,461}
tNpcGossip[21856]["tOption4-6"] = {461,214}
tNpcGossip[21856]["OptionFunc461"] = "DemonBox_BuyDemonBox</N>21856</N>2</N>10"
-- 三级试炼盒
tNpcGossip[21856]["Text4-7"] = {116,471}
tNpcGossip[21856]["tOption4-7"] = {471,214}
tNpcGossip[21856]["OptionFunc471"] = "DemonBox_BuyDemonBox</N>21856</N>3</N>1"
tNpcGossip[21856]["Text4-8"] = {116,481}
tNpcGossip[21856]["tOption4-8"] = {481,214}
tNpcGossip[21856]["OptionFunc481"] = "DemonBox_BuyDemonBox</N>21856</N>3</N>5"
tNpcGossip[21856]["Text4-9"] = {116,491}
tNpcGossip[21856]["tOption4-9"] = {491,214}
tNpcGossip[21856]["OptionFunc491"] = "DemonBox_BuyDemonBox</N>21856</N>3</N>10"

-- 排行榜
tNpcGossip[21856]["Text5-1"] = {116,511,512,513,517,518,519,5110,5111,5112,5113,5114,5115,5116,512,514,515,516}
tNpcGossip[21856]["tOption5-1"] = {513,512}
tNpcGossip[21856]["OptionPoint512"] = "1-3"
tNpcGossip[21856]["OptionPoint513"] = "6-1"
tNpcGossip[21856]["ChkFunc5-1"]= function()
	DemonBox_RankList()
	return true
end

-- 除妖值详解
tNpcGossip[21856]["Text6-1"] = {116,611,612,613,614,615,616,617,612}
tNpcGossip[21856]["tOption6-1"] = {611}
tNpcGossip[21856]["OptionPoint611"] = "5-1"

-- tNpcFace[1322] = 406
-- tNpcGossip[21857]= tNpcGossip[21857] or DefaultNpc:new{}
-- tNpcGossip[21857]["OptionHidden"] = 1
-- tNpcGossip[21857]["DialogueText"] = tDemonBox_Text[21857]
-- tNpcGossip[21857]["Text1-1"] = {111,112}
-- tNpcGossip[21857]["tOption1-1"] = {111}
-- tNpcGossip[21857]["ChkFunc1-1"]= function()
	-- return not DemonBox_JudgeOpen()
-- end
-- -- 交还闲置试炼盒
-- tNpcGossip[21857]["Text1-2"] = {111,121,122,123,124,122}
-- tNpcGossip[21857]["tOption1-2"] = {121,122,123,124}
-- tNpcGossip[21857]["OptionFunc121"] = "DemonBox_BeforeSellBox</N>21857</N>3310450</N>1</S>2-2"
-- tNpcGossip[21857]["OptionFunc122"] = "DemonBox_BeforeSellBox</N>21857</N>3310451</N>1</S>2-3"
-- tNpcGossip[21857]["OptionFunc123"] = "DemonBox_BeforeSellBox</N>21857</N>3310452</N>1</S>2-4"
-- tNpcGossip[21857]["OptionFunc124"] = "DemonBox_BeforeSellBox</N>21857</N>3310453</N>1</S>2-5"

-- -- 交还一级
-- tNpcGossip[21857]["Text2-2"] = {111,221}
-- tNpcGossip[21857]["tOption2-2"] = {221,222,223,224}
-- tNpcGossip[21857]["OptionFunc221"] = "DemonBox_BeforeSellBox</N>21857</N>3310450</N>1</S>3-1"
-- tNpcGossip[21857]["OptionFunc222"] = "DemonBox_BeforeSellBox</N>21857</N>3310450</N>5</S>3-2"
-- tNpcGossip[21857]["OptionFunc223"] = "DemonBox_BeforeSellBox</N>21857</N>3310450</N></S>3-3"
-- tNpcGossip[21857]["OptionPoint224"] = "1-2"
-- tNpcGossip[21857]["ChkFunc2-2"]= function()
	-- local nItemNum = Get_CountItemType(3310450,0)
	-- if nItemNum < 5 then
		-- tNpcGossip[21857]["tOption2-2"] = {221,223,224}
	-- else
		-- tNpcGossip[21857]["tOption2-2"] = {221,222,223,224}
	-- end
	-- return true
-- end

-- -- 交还二级
-- tNpcGossip[21857]["Text2-3"] = {111,231}
-- tNpcGossip[21857]["tOption2-3"] = {231,232,233,224}
-- tNpcGossip[21857]["OptionFunc231"] = "DemonBox_BeforeSellBox</N>21857</N>3310451</N>1</S>3-4"
-- tNpcGossip[21857]["OptionFunc232"] = "DemonBox_BeforeSellBox</N>21857</N>3310451</N>5</S>3-5"
-- tNpcGossip[21857]["OptionFunc233"] = "DemonBox_BeforeSellBox</N>21857</N>3310451</N></S>3-6"
-- tNpcGossip[21857]["ChkFunc2-3"]= function()
	-- local nItemNum = Get_CountItemType(3310451,0)
	-- if nItemNum < 5 then
		-- tNpcGossip[21857]["tOption2-3"] = {231,233,224}
	-- else
		-- tNpcGossip[21857]["tOption2-3"] = {231,232,233,224}
	-- end
	-- return true
-- end
-- -- 交还三级
-- tNpcGossip[21857]["Text2-4"] = {111,241}
-- tNpcGossip[21857]["tOption2-4"] = {241,242,243,224}
-- tNpcGossip[21857]["OptionFunc241"] = "DemonBox_BeforeSellBox</N>21857</N>3310452</N>1</S>3-7"
-- tNpcGossip[21857]["OptionFunc242"] = "DemonBox_BeforeSellBox</N>21857</N>3310452</N>5</S>3-8"
-- tNpcGossip[21857]["OptionFunc243"] = "DemonBox_BeforeSellBox</N>21857</N>3310452</N></S>3-9"
-- tNpcGossip[21857]["ChkFunc2-4"]= function()
	-- local nItemNum = Get_CountItemType(3310452,0)
	-- if nItemNum < 5 then
		-- tNpcGossip[21857]["tOption2-4"] = {241,243,224}
	-- else
		-- tNpcGossip[21857]["tOption2-4"] = {241,242,243,224}
	-- end
	-- return true
-- end

-- -- 交还四级
-- tNpcGossip[21857]["Text2-5"] = {111,251}
-- tNpcGossip[21857]["tOption2-5"] = {251,252,253,224}
-- tNpcGossip[21857]["OptionFunc251"] = "DemonBox_BeforeSellBox</N>21857</N>3310453</N>1</S>4-1"
-- tNpcGossip[21857]["OptionFunc252"] = "DemonBox_BeforeSellBox</N>21857</N>3310453</N>5</S>4-2"
-- tNpcGossip[21857]["OptionFunc253"] = "DemonBox_BeforeSellBox</N>21857</N>3310453</N></S>4-3"
-- tNpcGossip[21857]["ChkFunc2-5"]= function()
	-- local nItemNum = Get_CountItemType(3310453,0)
	-- if nItemNum < 5 then
		-- tNpcGossip[21857]["tOption2-5"] = {251,253,224}
	-- else
		-- tNpcGossip[21857]["tOption2-5"] = {251,252,253,224}
	-- end
	-- return true
-- end

-- -- 道具不足
-- tNpcGossip[21857]["Text2-6"] = {111,261}
-- tNpcGossip[21857]["tOption2-6"] = {261}
-- tNpcGossip[21857]["OptionPoint261"] = "1-2"
-- -- 没有道具
-- tNpcGossip[21857]["Text2-7"] = {111,271}
-- tNpcGossip[21857]["tOption2-7"] = {261}

-- -- 二次确认
-- -- 一级试炼盒
-- tNpcGossip[21857]["Text3-1"] = {111,311}
-- tNpcGossip[21857]["tOption3-1"] = {311,224}
-- tNpcGossip[21857]["OptionFunc311"] = "DemonBox_SellBox</N>21857</N>3310450</N>1"
-- tNpcGossip[21857]["Text3-2"] = {111,321}
-- tNpcGossip[21857]["tOption3-2"] = {321,224}
-- tNpcGossip[21857]["OptionFunc321"] = "DemonBox_SellBox</N>21857</N>3310450</N>5"
-- tNpcGossip[21857]["Text3-3"] = {111,331}
-- tNpcGossip[21857]["tOption3-3"] = {331,224}
-- tNpcGossip[21857]["OptionFunc331"] = "DemonBox_SellBox</N>21857</N>3310450</N>"
-- tNpcGossip[21857]["ChkFunc3-3"]= function()
	-- local nItemNum = Get_CountItemType(3310450,0)
	-- tNpcGossip[21857]["Text331"] = string.format(tDemonBox_Text[21857]["Text331"],nItemNum,tDemonBox_SellBox[3310450]["Money"]*nItemNum)
	-- return true
-- end
-- -- 二级试炼盒
-- tNpcGossip[21857]["Text3-4"] = {111,341}
-- tNpcGossip[21857]["tOption3-4"] = {341,224}
-- tNpcGossip[21857]["OptionFunc341"] = "DemonBox_SellBox</N>21857</N>3310451</N>1"
-- tNpcGossip[21857]["Text3-5"] = {111,351}
-- tNpcGossip[21857]["tOption3-5"] = {351,224}
-- tNpcGossip[21857]["OptionFunc351"] = "DemonBox_SellBox</N>21857</N>3310451</N>5"
-- tNpcGossip[21857]["Text3-6"] = {111,361}
-- tNpcGossip[21857]["tOption3-6"] = {361,224}
-- tNpcGossip[21857]["OptionFunc361"] = "DemonBox_SellBox</N>21857</N>3310451</N>"
-- tNpcGossip[21857]["ChkFunc3-6"]= function()
	-- local nItemNum = Get_CountItemType(3310451,0)
	-- tNpcGossip[21857]["Text361"] = string.format(tDemonBox_Text[21857]["Text361"],nItemNum,tDemonBox_SellBox[3310451]["Money"]*nItemNum)
	-- return true
-- end
-- -- 三级试炼盒
-- tNpcGossip[21857]["Text3-7"] = {111,371}
-- tNpcGossip[21857]["tOption3-7"] = {371,224}
-- tNpcGossip[21857]["OptionFunc371"] = "DemonBox_SellBox</N>21857</N>3310452</N>1"
-- tNpcGossip[21857]["Text3-8"] = {111,381}
-- tNpcGossip[21857]["tOption3-8"] = {381,224}
-- tNpcGossip[21857]["OptionFunc381"] = "DemonBox_SellBox</N>21857</N>3310452</N>5"
-- tNpcGossip[21857]["Text3-9"] = {111,391}
-- tNpcGossip[21857]["tOption3-9"] = {391,224}
-- tNpcGossip[21857]["OptionFunc391"] = "DemonBox_SellBox</N>21857</N>3310452</N>"
-- tNpcGossip[21857]["ChkFunc3-9"]= function()
	-- local nItemNum = Get_CountItemType(3310452,0)
	-- tNpcGossip[21857]["Text391"] = string.format(tDemonBox_Text[21857]["Text391"],nItemNum,tDemonBox_SellBox[3310452]["Money"]*nItemNum)
	-- return true
-- end
-- -- 四级试炼盒
-- tNpcGossip[21857]["Text4-1"] = {111,411}
-- tNpcGossip[21857]["tOption4-1"] = {411,224}
-- tNpcGossip[21857]["OptionFunc411"] = "DemonBox_SellBox</N>21857</N>3310453</N>1"
-- tNpcGossip[21857]["Text4-2"] = {111,421}
-- tNpcGossip[21857]["tOption4-2"] = {421,224}
-- tNpcGossip[21857]["OptionFunc421"] = "DemonBox_SellBox</N>21857</N>3310453</N>5"
-- tNpcGossip[21857]["Text4-3"] = {111,431}
-- tNpcGossip[21857]["tOption4-3"] = {431,224}
-- tNpcGossip[21857]["OptionFunc431"] = "DemonBox_SellBox</N>21857</N>3310453</N>"
-- tNpcGossip[21857]["ChkFunc4-3"]= function()
	-- local nItemNum = Get_CountItemType(3310453,0)
	-- tNpcGossip[21857]["Text431"] = string.format(tDemonBox_Text[21857]["Text431"],nItemNum,tDemonBox_SellBox[3310453]["Money"]*nItemNum)
	-- return true
-- end
---------------------------------物品部分---------------------------------------------
tItemFace[3310450] = 1672
tItemFace[3310451] = 1673
tItemFace[3310452] = 1674
tItemFace[3310453] = 1675
-- 一级试炼盒
tItem[3310450] = tItem[3310450] or {}
tItem[3310450]["Function"] = function(nItemId,sItemName)
	if not DemonBox_BeforeUseDemonBox(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	else
		DemonBox_UseDemonBox(nItemId)
	end
end
tItem[3310450]["DialogueText"] = tDemonBox_Text[3310450]
tItem[3310450]["Text1-1"] = {111,112}
tItem[3310450]["tOption1-1"] = {111,112}
tItem[3310450]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3310450,0)
	tItem[3310450]["Text111"] = string.format(tDemonBox_Text[3310450]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3310450]["Option112"] = string.format(tDemonBox_Text[3310450]["Option112"],10)
	else
		tItem[3310450]["Option112"] = string.format(tDemonBox_Text[3310450]["Option112"],nItemNum)
	end
	return true
end
tItem[3310450]["OptionFunc111"] = "DemonBox_UseDemonBox</N>3310450"
tItem[3310450]["OptionFunc112"] = "DemonBox_UseAllDemonBox</N>3310450"
-- 二级试炼盒
tItem[3310451] = tItem[3310451] or {}
tItem[3310451]["Function"] = function(nItemId,sItemName)
	if not DemonBox_BeforeUseDemonBox(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	else
		DemonBox_UseDemonBox(nItemId)
	end
end

tItem[3310451]["DialogueText"] = tDemonBox_Text[3310451]
tItem[3310451]["Text1-1"] = {111,112}
tItem[3310451]["tOption1-1"] = {111,112}
tItem[3310451]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3310451,0)
	tItem[3310451]["Text111"] = string.format(tDemonBox_Text[3310451]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3310451]["Option112"] = string.format(tDemonBox_Text[3310451]["Option112"],10)
	else
		tItem[3310451]["Option112"] = string.format(tDemonBox_Text[3310451]["Option112"],nItemNum)
	end
	return true
end
tItem[3310451]["OptionFunc111"] = "DemonBox_UseDemonBox</N>3310451"
tItem[3310451]["OptionFunc112"] = "DemonBox_UseAllDemonBox</N>3310451"

-- 三级试炼盒
tItem[3310452] = tItem[3310452] or {}
tItem[3310452]["Function"] = function(nItemId,sItemName)
	if not DemonBox_BeforeUseDemonBox(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	else
		DemonBox_UseDemonBox(nItemId)
	end
end
tItem[3310452]["DialogueText"] = tDemonBox_Text[3310452]
tItem[3310452]["Text1-1"] = {111,112}
tItem[3310452]["tOption1-1"] = {111,112}
tItem[3310452]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3310452,0)
	tItem[3310452]["Text111"] = string.format(tDemonBox_Text[3310452]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3310452]["Option112"] = string.format(tDemonBox_Text[3310452]["Option112"],10)
	else
		tItem[3310452]["Option112"] = string.format(tDemonBox_Text[3310452]["Option112"],nItemNum)
	end
	return true
end
tItem[3310452]["OptionFunc111"] = "DemonBox_UseDemonBox</N>3310452"
tItem[3310452]["OptionFunc112"] = "DemonBox_UseAllDemonBox</N>3310452"
-- 四级试炼盒
tItem[3310453] = tItem[3310453] or {}
tItem[3310453]["Function"] = function(nItemId,sItemName)
	if not DemonBox_BeforeUseDemonBox(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	else
		DemonBox_UseDemonBox(nItemId)
	end
end
tItem[3310453]["DialogueText"] = tDemonBox_Text[3310453]
tItem[3310453]["Text1-1"] = {111,112}
tItem[3310453]["tOption1-1"] = {111,112}
tItem[3310453]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3310453,0)
	tItem[3310453]["Text111"] = string.format(tDemonBox_Text[3310453]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3310453]["Option112"] = string.format(tDemonBox_Text[3310453]["Option112"],10)
	else
		tItem[3310453]["Option112"] = string.format(tDemonBox_Text[3310453]["Option112"],nItemNum)
	end
	return true
end
tItem[3310453]["OptionFunc111"] = "DemonBox_UseDemonBox</N>3310453"
tItem[3310453]["OptionFunc112"] = "DemonBox_UseAllDemonBox</N>3310453"

-- -- 内丹
-- tItem[3310465] = tItem[3310465] or {}
-- tItem[3310465]["Function"] = function(nItemId,sItemName)
	-- if not DemonBox_JudgeOpen() then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- Sys_MsgBox(tDemonBox_Text["DanTimeOut"])
		-- end
		-- return
	-- end
	-- NpcPosition_PathFind(tDemonBox_Constant["NpcId"])
-- end
-- for i=3310465,3310468 do 
	-- tItem[i] = tItem[3310465]
-- end
-- -- 礼包
-- tItem[3310469] = tItem[3310469] or {}
-- tItem[3310469]["Function"] = function(nItemId,sItemName)
	-- if not DemonBox_JudgeOpen() then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- Sys_MsgBox(tDemonBox_Text["PackageTimeOut"])
		-- end
		-- return
	-- end
	-- RewardTemplate_UseItemAndMsg(tDemonBox_Reward[nItemId])
-- end
-- for i=3310469,3310479 do 
	-- tItem[i] = tItem[3310469]
-- end
-- -- 金币包
-- tItem[3310480] = tItem[3310480] or {}
-- tItem[3310480]["Function"] = function(nItemId,sItemName)
	-- --判断是否在德州比赛，是禁用这个段的礼包
	-- if User_IsUserInGame() then			
		-- User_TalkChannel2005(tSpecItem_Use_Msg["NotUseMsg"])
		-- return
	-- end	
	-- RewardTemplate_UseItemAndMsg(tDemonBox_Reward[nItemId])
-- end
-- for i=3310480,3310482 do 
	-- tItem[i] = tItem[3310480]
-- end
---------------------------------怪物部分---------------------------------------------
local tDemonBox_KillMonster = {}
tDemonBox_KillMonster["Function"]= DemonBox_KillMonster
tDemonBox_KillMonster["MonsterId"] = {1031,1032,1033,1034}
table.insert(tMonsterDrop_AreaLoad,tDemonBox_KillMonster)
-- 激情服
-- local tDemonBox_KillMonster_NoGift = {}
-- tDemonBox_KillMonster_NoGift["Function"]= DemonBox_KillMonster
-- tDemonBox_KillMonster_NoGift["MonsterId"] = {1031,1032,1033,1034}
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tDemonBox_KillMonster_NoGift)

--排行榜
	-- tRankingFunc_Info[21856] = {}
	-- tRankingFunc_Info[21856]["ActiveTime"] = tDemonBox_Constant["ActivityTime"]
	-- tRankingFunc_Info[21856]["DayTime"] = {}
	-- tRankingFunc_Info[21856]["DayTime"][1] = "00:00 23:59"
	-- tRankingFunc_Info[21856]["Reset"] = 1
	-- tRankingFunc_Info[21856]["Global"] = {52946,52947,52948,52949}
	-- tRankingFunc_Info[21856]["BeforeGlobal"] = {52950,52951,52952,52953}
	-- tRankingFunc_Info[21856]["RankNum"] = 10
	
	-- tRankingFunc_Info[21856]["Mail"] = {}
	-- tRankingFunc_Info[21856]["Mail"]["ActiveTime"] = tActivityTime["DemonBox"]["RankActivityTime"]
	-- tRankingFunc_Info[21856]["Mail"]["RewardTime"] = {}
	-- tRankingFunc_Info[21856]["Mail"]["RewardTime"][1] = "00:00 00:05"
	-- tRankingFunc_Info[21856]["Mail"]["HaveFunc"] = DemonBox_MailText
	-- tRankingFunc_Info[21856]["Mail"]["Reward"] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1]["RewardRank"] = 1
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1]["ActionId"] = 568697
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][1]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2]["RewardRank"] = 2
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2]["ActionId"] = 568696
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][2]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3]["RewardRank"] = 3
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3]["ActionId"] = 568695
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][3]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4]["RewardRank"] = 4
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4]["ActionId"] = 568694
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][4]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5]["RewardRank"] = 5
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5]["ActionId"] = 568694
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][5]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6]["RewardRank"] = 6
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6]["ActionId"] = 568694
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][6]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7]["RewardRank"] = 7
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7]["ActionId"] = 568693
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][7]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8]["RewardRank"] = 8
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8]["ActionId"] = 568693
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][8]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9]["RewardRank"] = 9
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9]["ActionId"] = 568693
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][9]["Content"] = tDemonBox_Text["Mail"]["Content"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10] = {}
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10]["RewardRank"] = 10
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10]["ActionId"] = 568693
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10]["ExistDay"] = 30
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10]["Title"] = tDemonBox_Text["Mail"]["Title"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10]["Sender"] = tDemonBox_Text["Mail"]["Sender"]
	-- tRankingFunc_Info[21856]["Mail"]["Reward"][10]["Content"] = tDemonBox_Text["Mail"]["Content"]
	
-- 服务器启动触发
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],DemonBox_SetGlobal)