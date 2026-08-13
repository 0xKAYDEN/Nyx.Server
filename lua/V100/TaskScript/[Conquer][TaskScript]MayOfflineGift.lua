------------------------------------------------------------------------------------
--Name:			180425[英文征服][任务脚本]5月线下活动相关发奖action制作
--Purpose:		线下活动
--Creator:		wzh
--Created:		2018-04-25
------------------------------------------------------------------------------------
-- 前缀
-- MayOfflineGift_

-- LogId 18000174

-- stc掩码说明 
-- stc 176,37		记录奋斗江湖大礼盒领奖次数


---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tMayOfflineGift_Cont = {}
	-- 转世要求
	tMayOfflineGift_Cont["Metempsychosis"] = 0
	
	-- 等级
	tMayOfflineGift_Cont["Level"] = {}
	tMayOfflineGift_Cont["Level"][1] = 20
	tMayOfflineGift_Cont["Level"][2] = 30
	tMayOfflineGift_Cont["Level"][3] = 40
	tMayOfflineGift_Cont["Level"][4] = 50
	tMayOfflineGift_Cont["Level"][5] = 60
	tMayOfflineGift_Cont["Level"][6] = 70
	tMayOfflineGift_Cont["Level"][7] = 80
	tMayOfflineGift_Cont["Level"][8] = 90
	tMayOfflineGift_Cont["Level"][9] = 100
	tMayOfflineGift_Cont["Level"][10] = 105
	tMayOfflineGift_Cont["Level"][11] = 110
	tMayOfflineGift_Cont["Level"][12] = 115
	tMayOfflineGift_Cont["Level"][13] = 120
	tMayOfflineGift_Cont["Level"][14] = 125
	tMayOfflineGift_Cont["Level"][15] = 130
	tMayOfflineGift_Cont["Level"][16] = 135
	tMayOfflineGift_Cont["Level"][17] = 136
	tMayOfflineGift_Cont["Level"][18] = 137
	tMayOfflineGift_Cont["Level"][19] = 138
	tMayOfflineGift_Cont["Level"][20] = 139
	tMayOfflineGift_Cont["Level"][21] = 140
	
-- LOG表
local tMayOfflineGift_Log = {}
	tMayOfflineGift_Log["Del"] = "0,0,%d,1,18000174,2,0,0"
	
-- 掩码表
local tMayOfflineGift_Stc = {}
	-- 记录奋斗江湖大礼盒领奖次数
	tMayOfflineGift_Stc[1] = {}
	tMayOfflineGift_Stc[1]["EventType"] = 176
	tMayOfflineGift_Stc[1]["DataType"] = 37
	tMayOfflineGift_Stc[1]["Limit"] = 21

-- 奖励表
local tMayOfflineGift_Reward = {}
	-- 抱团闯荡礼盒
	tMayOfflineGift_Reward[3308593] = {}
	tMayOfflineGift_Reward[3308593]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308593]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308593]["DeleteItem"][1]["Id"] = 3308593
	tMayOfflineGift_Reward[3308593]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308593]["RewardEMoneyMono"]["Value"] = 3000
	tMayOfflineGift_Reward[3308593]["LogId"] = 18000174
	-- 名扬四海礼盒
	tMayOfflineGift_Reward[3308594] = {}
	tMayOfflineGift_Reward[3308594]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308594]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308594]["DeleteItem"][1]["Id"] = 3308594
	tMayOfflineGift_Reward[3308594]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308594]["RewardEMoneyMono"]["Value"] = 1000
	tMayOfflineGift_Reward[3308594]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308594]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308594]["RewardItem"][1]["Id"] = 192565
	tMayOfflineGift_Reward[3308594]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMayOfflineGift_Reward[3308594]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308594]["RewardItem"][2]["Id"] = 730005
	tMayOfflineGift_Reward[3308594]["RewardItem"][2]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308594]["RewardItem"][3] = {}
	tMayOfflineGift_Reward[3308594]["RewardItem"][3]["Id"] = 3308597
	tMayOfflineGift_Reward[3308594]["RewardItem"][3]["Attr"] = "0 1"
	tMayOfflineGift_Reward[3308594]["LogId"] = 18000174
	-- 威震八方礼盒
	tMayOfflineGift_Reward[3308595] = {}
	tMayOfflineGift_Reward[3308595]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308595]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308595]["DeleteItem"][1]["Id"] = 3308595
	tMayOfflineGift_Reward[3308595]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308595]["RewardEMoneyMono"]["Value"] = 2000
	tMayOfflineGift_Reward[3308595]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308595]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308595]["RewardItem"][1]["Id"] = 3009002
	tMayOfflineGift_Reward[3308595]["RewardItem"][1]["Attr"] = "0 3"
	tMayOfflineGift_Reward[3308595]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308595]["RewardItem"][2]["Id"] = 730005
	tMayOfflineGift_Reward[3308595]["RewardItem"][2]["Attr"] = "0 2 3"
	tMayOfflineGift_Reward[3308595]["LogId"] = 18000174
	-- 斗战天下礼盒
	tMayOfflineGift_Reward[3308596] = {}
	tMayOfflineGift_Reward[3308596]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308596]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308596]["DeleteItem"][1]["Id"] = 3308596
	tMayOfflineGift_Reward[3308596]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308596]["RewardEMoneyMono"]["Value"] = 3000
	tMayOfflineGift_Reward[3308596]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308596]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308596]["RewardItem"][1]["Id"] = 200595
	tMayOfflineGift_Reward[3308596]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMayOfflineGift_Reward[3308596]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308596]["RewardItem"][2]["Id"] = 730006
	tMayOfflineGift_Reward[3308596]["RewardItem"][2]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308596]["LogId"] = 18000174
	-- EndlessDance赠礼包
	tMayOfflineGift_Reward[3308598] = {}
	tMayOfflineGift_Reward[3308598]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308598]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308598]["DeleteItem"][1]["Id"] = 3308598
	tMayOfflineGift_Reward[3308598]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308598]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308598]["RewardItem"][1]["Id"] = 188925
	tMayOfflineGift_Reward[3308598]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tMayOfflineGift_Reward[3308598]["LogId"] = 18000174
	-- 流星卷大礼包
	tMayOfflineGift_Reward[3308599] = {}
	tMayOfflineGift_Reward[3308599]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308599]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308599]["DeleteItem"][1]["Id"] = 3308599
	tMayOfflineGift_Reward[3308599]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308599]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308599]["RewardItem"][1]["Id"] = 3301827
	tMayOfflineGift_Reward[3308599]["RewardItem"][1]["Attr"] = "0 3"
	tMayOfflineGift_Reward[3308599]["LogId"] = 18000174
	-- 随机黄色神纹大礼盒
	tMayOfflineGift_Reward[3308600] = {}
	tMayOfflineGift_Reward[3308600]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308600]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308600]["DeleteItem"][1]["Id"] = 3308600
	tMayOfflineGift_Reward[3308600]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308600]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308600]["RewardItem"][1]["Id"] = 3306919
	tMayOfflineGift_Reward[3308600]["RewardItem"][1]["Attr"] = "0 3"
	tMayOfflineGift_Reward[3308600]["LogId"] = 18000174
	-- 天梯钻石礼盒
	tMayOfflineGift_Reward[3308601] = {}
	tMayOfflineGift_Reward[3308601]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308601]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308601]["DeleteItem"][1]["Id"] = 3308601
	tMayOfflineGift_Reward[3308601]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308601]["RewardEMoneyMono"]["Value"] = 60000
	tMayOfflineGift_Reward[3308601]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308601]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308601]["RewardItem"][1]["Id"] = 189135
	tMayOfflineGift_Reward[3308601]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- tMayOfflineGift_Reward[3308601]["RewardItem"][2] = {}
	-- tMayOfflineGift_Reward[3308601]["RewardItem"][2]["Id"] = 3303776
	-- tMayOfflineGift_Reward[3308601]["RewardItem"][2]["Attr"] = "0 1 0 525600 1"
	tMayOfflineGift_Reward[3308601]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308601]["RewardItem"][2]["Id"] = 200533
	tMayOfflineGift_Reward[3308601]["RewardItem"][2]["Attr"] = "0 1 3 43200 1"
	tMayOfflineGift_Reward[3308601]["RewardWing"] = {}
	tMayOfflineGift_Reward[3308601]["RewardWing"]["TitleType"] = 6017
	tMayOfflineGift_Reward[3308601]["RewardWing"]["TitleId"] = 6017
	tMayOfflineGift_Reward[3308601]["RewardWing"]["SaveTime"] = 525600
	tMayOfflineGift_Reward[3308601]["Talk"] = tMayOfflineGift_Text["GetReward"]
	tMayOfflineGift_Reward[3308601]["LogId"] = 18000174
	-- 天梯黄金礼盒
	tMayOfflineGift_Reward[3308602] = {}
	tMayOfflineGift_Reward[3308602]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308602]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308602]["DeleteItem"][1]["Id"] = 3308602
	tMayOfflineGift_Reward[3308602]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308602]["RewardEMoneyMono"]["Value"] = 45000
	tMayOfflineGift_Reward[3308602]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308602]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308602]["RewardItem"][1]["Id"] = 192635
	tMayOfflineGift_Reward[3308602]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMayOfflineGift_Reward[3308602]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308602]["RewardItem"][2]["Id"] = 200572
	tMayOfflineGift_Reward[3308602]["RewardItem"][2]["Attr"] = "0 1 3 259200 1 0 0 1"
	tMayOfflineGift_Reward[3308602]["LogId"] = 18000174
	-- 天梯白银礼盒
	tMayOfflineGift_Reward[3308603] = {}
	tMayOfflineGift_Reward[3308603]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308603]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308603]["DeleteItem"][1]["Id"] = 3308603
	tMayOfflineGift_Reward[3308603]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308603]["RewardEMoneyMono"]["Value"] = 25000
	tMayOfflineGift_Reward[3308603]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308603]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308603]["RewardItem"][1]["Id"] = 193225
	tMayOfflineGift_Reward[3308603]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMayOfflineGift_Reward[3308603]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308603]["RewardItem"][2]["Id"] = 200572
	tMayOfflineGift_Reward[3308603]["RewardItem"][2]["Attr"] = "0 1 3 259200 1 0 0 1"
	tMayOfflineGift_Reward[3308603]["LogId"] = 18000174
	-- 天梯青铜礼盒
	tMayOfflineGift_Reward[3308604] = {}
	tMayOfflineGift_Reward[3308604]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308604]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308604]["DeleteItem"][1]["Id"] = 3308604
	tMayOfflineGift_Reward[3308604]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308604]["RewardEMoneyMono"]["Value"] = 15000
	tMayOfflineGift_Reward[3308604]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308604]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308604]["RewardItem"][1]["Id"] = 193225
	tMayOfflineGift_Reward[3308604]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMayOfflineGift_Reward[3308604]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308604]["RewardItem"][2]["Id"] = 200572
	tMayOfflineGift_Reward[3308604]["RewardItem"][2]["Attr"] = "0 1 3 259200 1 0 0 1"
	tMayOfflineGift_Reward[3308604]["LogId"] = 18000174
	
	-- 奋斗江湖大礼盒
	tMayOfflineGift_Reward[3308605] = {}
	-- 20级
	tMayOfflineGift_Reward[3308605][1] = {}
	tMayOfflineGift_Reward[3308605][1]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][1]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][1]["RewardItem"][1]["Id"] = 1200000
	tMayOfflineGift_Reward[3308605][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][1]["LogId"] = 18000174
	-- 30级
	tMayOfflineGift_Reward[3308605][2] = {}
	tMayOfflineGift_Reward[3308605][2]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][2]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][2]["RewardItem"][1]["Id"] = 730002
	tMayOfflineGift_Reward[3308605][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tMayOfflineGift_Reward[3308605][2]["LogId"] = 18000174
	-- 40级
	tMayOfflineGift_Reward[3308605][3] = {}
	tMayOfflineGift_Reward[3308605][3]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][3]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][3]["RewardItem"][1]["Id"] = 723017
	tMayOfflineGift_Reward[3308605][3]["RewardItem"][1]["Attr"] = "0 3 3"
	tMayOfflineGift_Reward[3308605][3]["LogId"] = 18000174
	-- 50级
	tMayOfflineGift_Reward[3308605][4] = {}
	tMayOfflineGift_Reward[3308605][4]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][4]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][4]["RewardItem"][1]["Id"] = 700012
	tMayOfflineGift_Reward[3308605][4]["RewardItem"][1]["Attr"] = "0 2 3"
	tMayOfflineGift_Reward[3308605][4]["LogId"] = 18000174
	-- 60级
	tMayOfflineGift_Reward[3308605][5] = {}
	tMayOfflineGift_Reward[3308605][5]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][5]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][5]["RewardItem"][1]["Id"] = 730002
	tMayOfflineGift_Reward[3308605][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tMayOfflineGift_Reward[3308605][5]["LogId"] = 18000174
	-- 70级
	tMayOfflineGift_Reward[3308605][6] = {}
	tMayOfflineGift_Reward[3308605][6]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][6]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][6]["RewardItem"][1]["Id"] = 730003
	tMayOfflineGift_Reward[3308605][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][6]["LogId"] = 18000174
	-- 80级
	tMayOfflineGift_Reward[3308605][7] = {}
	tMayOfflineGift_Reward[3308605][7]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][7]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][7]["RewardItem"][1]["Id"] = 3001407
	tMayOfflineGift_Reward[3308605][7]["RewardItem"][1]["Attr"] = "0 2 3"
	tMayOfflineGift_Reward[3308605][7]["LogId"] = 18000174
	-- 90级
	tMayOfflineGift_Reward[3308605][8] = {}
	tMayOfflineGift_Reward[3308605][8]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][8]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][8]["RewardItem"][1]["Id"] = 730003
	tMayOfflineGift_Reward[3308605][8]["RewardItem"][1]["Attr"] = "0 3 3"
	tMayOfflineGift_Reward[3308605][8]["LogId"] = 18000174
	-- 100级
	tMayOfflineGift_Reward[3308605][9] = {}
	tMayOfflineGift_Reward[3308605][9]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][9]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][9]["RewardItem"][1]["Id"] = 3001499
	tMayOfflineGift_Reward[3308605][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][9]["LogId"] = 18000174
	-- 105级
	tMayOfflineGift_Reward[3308605][10] = {}
	tMayOfflineGift_Reward[3308605][10]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][10]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][10]["RewardItem"][1]["Id"] = 3006277
	tMayOfflineGift_Reward[3308605][10]["RewardItem"][1]["Attr"] = "0 3"
	tMayOfflineGift_Reward[3308605][10]["LogId"] = 18000174
	-- 110级
	tMayOfflineGift_Reward[3308605][11] = {}
	tMayOfflineGift_Reward[3308605][11]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][11]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][11]["RewardItem"][1]["Id"] = 3001035
	tMayOfflineGift_Reward[3308605][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][11]["LogId"] = 18000174
	-- 115级
	tMayOfflineGift_Reward[3308605][12] = {}
	tMayOfflineGift_Reward[3308605][12]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][12]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][12]["RewardItem"][1]["Id"] = 1088000
	tMayOfflineGift_Reward[3308605][12]["RewardItem"][1]["Attr"] = "0 3 3"
	tMayOfflineGift_Reward[3308605][12]["LogId"] = 18000174
	-- 120级
	tMayOfflineGift_Reward[3308605][13] = {}
	tMayOfflineGift_Reward[3308605][13]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][13]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][13]["RewardItem"][1]["Id"] = 3003124
	tMayOfflineGift_Reward[3308605][13]["RewardItem"][1]["Attr"] = "0 100 3"
	tMayOfflineGift_Reward[3308605][13]["LogId"] = 18000174
	-- 125级
	tMayOfflineGift_Reward[3308605][14] = {}
	tMayOfflineGift_Reward[3308605][14]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][14]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][14]["RewardItem"][1]["Id"] = 3003126
	tMayOfflineGift_Reward[3308605][14]["RewardItem"][1]["Attr"] = "0 20 3"
	tMayOfflineGift_Reward[3308605][14]["LogId"] = 18000174
	-- 130级
	tMayOfflineGift_Reward[3308605][15] = {}
	tMayOfflineGift_Reward[3308605][15]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308605][15]["RewardEMoneyMono"]["Value"] = 500
	tMayOfflineGift_Reward[3308605][15]["LogId"] = 18000174
	-- 135级
	tMayOfflineGift_Reward[3308605][16] = {}
	tMayOfflineGift_Reward[3308605][16]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][16]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][16]["RewardItem"][1]["Id"] = 1088000
	tMayOfflineGift_Reward[3308605][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][16]["LogId"] = 18000174
	-- 136级
	tMayOfflineGift_Reward[3308605][17] = {}
	tMayOfflineGift_Reward[3308605][17]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][17]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][17]["RewardItem"][1]["Id"] = 723694
	tMayOfflineGift_Reward[3308605][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][17]["LogId"] = 18000174
	-- 137级
	tMayOfflineGift_Reward[3308605][18] = {}
	tMayOfflineGift_Reward[3308605][18]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][18]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][18]["RewardItem"][1]["Id"] = 723744
	tMayOfflineGift_Reward[3308605][18]["RewardItem"][1]["Attr"] = "0 1"
	tMayOfflineGift_Reward[3308605][18]["LogId"] = 18000174
	-- 138级
	tMayOfflineGift_Reward[3308605][19] = {}
	tMayOfflineGift_Reward[3308605][19]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][19]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][19]["RewardItem"][1]["Id"] = 730004
	tMayOfflineGift_Reward[3308605][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][19]["RewardItem"][2] = {}
	tMayOfflineGift_Reward[3308605][19]["RewardItem"][2]["Id"] = 3303532
	tMayOfflineGift_Reward[3308605][19]["RewardItem"][2]["Attr"] = "0 1"
	tMayOfflineGift_Reward[3308605][19]["LogId"] = 18000174
	-- 139级
	tMayOfflineGift_Reward[3308605][20] = {}
	tMayOfflineGift_Reward[3308605][20]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308605][20]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308605][20]["RewardItem"][1]["Id"] = 1200005
	tMayOfflineGift_Reward[3308605][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayOfflineGift_Reward[3308605][20]["LogId"] = 18000174
	-- 140级
	tMayOfflineGift_Reward[3308605][21] = {}
	tMayOfflineGift_Reward[3308605][21]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308605][21]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308605][21]["DeleteItem"][1]["Id"] = 3308605
	tMayOfflineGift_Reward[3308605][21]["RewardEMoneyMono"] = {}
	tMayOfflineGift_Reward[3308605][21]["RewardEMoneyMono"]["Value"] = 1500
	tMayOfflineGift_Reward[3308605][21]["LogId"] = 18000174
	
	-- +5马匹赠礼盒
	tMayOfflineGift_Reward[3308597] = {}
	-- +5黑颈马（赠）
	tMayOfflineGift_Reward[3308597][1] = {}
	tMayOfflineGift_Reward[3308597][1]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308597][1]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308597][1]["DeleteItem"][1]["Id"] = 3308597
	tMayOfflineGift_Reward[3308597][1]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308597][1]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308597][1]["RewardItem"][1]["Id"] = 300000
	tMayOfflineGift_Reward[3308597][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 5 0 0 0 0 0 0 255"
	tMayOfflineGift_Reward[3308597][1]["LogId"] = 18000174
	-- +5雪脂马（赠）
	tMayOfflineGift_Reward[3308597][2] = {}
	tMayOfflineGift_Reward[3308597][2]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308597][2]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308597][2]["DeleteItem"][1]["Id"] = 3308597
	tMayOfflineGift_Reward[3308597][2]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308597][2]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308597][2]["RewardItem"][1]["Id"] = 300000
	tMayOfflineGift_Reward[3308597][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150"
	tMayOfflineGift_Reward[3308597][2]["LogId"] = 18000174
	-- +5枣红马（赠）
	tMayOfflineGift_Reward[3308597][3] = {}
	tMayOfflineGift_Reward[3308597][3]["DeleteItem"] = {}
	tMayOfflineGift_Reward[3308597][3]["DeleteItem"][1] = {}
	tMayOfflineGift_Reward[3308597][3]["DeleteItem"][1]["Id"] = 3308597
	tMayOfflineGift_Reward[3308597][3]["RewardItem"] = {}
	tMayOfflineGift_Reward[3308597][3]["RewardItem"][1] = {}
	tMayOfflineGift_Reward[3308597][3]["RewardItem"][1]["Id"] = 300000
	tMayOfflineGift_Reward[3308597][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5"
	tMayOfflineGift_Reward[3308597][3]["LogId"] = 18000174
	
-----------------------------------------------逻辑部分-----------------------------------------
-- 使用普通礼包
function MayOfflineGift_UsePack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 是否需要判断赠点上限
	if tMayOfflineGift_Reward[nItemId]["RewardEMoneyMono"] ~= nil then
		-- 赠点上限判断
		if Get_UserMonoEMoney() + tMayOfflineGift_Reward[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tMayOfflineGift_Text["FullEmoneyMono"])
			return
		end
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMayOfflineGift_Reward[nItemId]) - 1
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tMayOfflineGift_Text["FullBag"],nSpace))
		return
	end
	
	RewardTemplate_UseItem(tMayOfflineGift_Reward[nItemId])
end

-- 领取奋斗江湖大礼盒奖励
function MayOfflineGift_GetReward(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tMayOfflineGift_Text[nItemId]["NoItem"])
		return false
	end
	
	local nEvent = tMayOfflineGift_Stc[1]["EventType"]
	local nType = tMayOfflineGift_Stc[1]["DataType"]
	local nLimit = tMayOfflineGift_Stc[1]["Limit"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断等级
	local nNeedLevel = tMayOfflineGift_Cont["Level"][nData+1]
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	if nLevel < nNeedLevel then
		return false
	end
	
	-- 判断是否达到领取上限
	if nData >= nLimit then
		return false
	end
	
	-- 是否需要判断赠点上限
	if tMayOfflineGift_Reward[nItemId][nData+1]["RewardEMoneyMono"] ~= nil then
		-- 赠点上限判断
		if Get_UserMonoEMoney() + tMayOfflineGift_Reward[nItemId][nData+1]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tMayOfflineGift_Text["FullEmoneyMono"])
			return
		end
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMayOfflineGift_Reward[nItemId][nData+1])
	if nData+1 == nLimit then
		nSpace = 0
	end
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tMayOfflineGift_Text[nItemId]["FullBag"],nSpace))
		return
	end
	
	-- 置掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	RewardTemplate_UseItem(tMayOfflineGift_Reward[nItemId][nData+1])
	LinkItemGossipFunc_New(nItemId,"1-2")
end

-- 使用马匹礼盒
function MayOfflineGift_Choose(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tMayOfflineGift_Text[nItemId]["NoItem"])
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMayOfflineGift_Reward[nItemId][nIndex]) - 1 
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tMayOfflineGift_Text["FullBag"],nSpace))
		return
	end
	
	RewardTemplate_UseItem(tMayOfflineGift_Reward[nItemId][nIndex])
end
-----------------------------------------------模板部分-----------------------------------------
-------------------------------物品模板
-- 物品头像
-- +5马匹赠礼盒
tItemFace[3308597] = 1441
tItem[3308597] = tItem[3308597] or {}
tItem[3308597]["DialogueText"] = tMayOfflineGift_Text[3308597]
tItem[3308597]["Text1-1"] = {111,112}
tItem[3308597]["tOption1-1"] = {111,112,113}

tItem[3308597]["OptionFunc111"] = "MayOfflineGift_Choose</N>3308597</N>1"
tItem[3308597]["OptionFunc112"] = "MayOfflineGift_Choose</N>3308597</N>2"
tItem[3308597]["OptionFunc113"] = "MayOfflineGift_Choose</N>3308597</N>3"

-- 奋斗江湖大礼盒
tItemFace[3308605] = 1442
tItem[3308605] = tItem[3308605] or {}
tItem[3308605]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	local nEvent = tMayOfflineGift_Stc[1]["EventType"]
	local nType = tMayOfflineGift_Stc[1]["DataType"]
	local nLimit = tMayOfflineGift_Stc[1]["Limit"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 是否已领取所有奖励
	if nData >= nLimit then
		-- 删礼盒
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sLog = string.format(tMayOfflineGift_Log["Del"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return
	end
	
	-- 判断等级
	local nNeedLevel = tMayOfflineGift_Cont["Level"][nData+1]
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	if nLevel < nNeedLevel then
		Sys_MsgBox(tMayOfflineGift_Text[nItemId]["LevelNotEnough"])
		return
	end
	
	-- 接对白
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3308605]["DialogueText"] = tMayOfflineGift_Text[3308605]
tItem[3308605]["Text1-1"] = {111,112,113,114,115}
tItem[3308605]["tOption1-1"] = {111}
tItem[3308605]["ChkFunc1-1"] = function()
	local nEvent = tMayOfflineGift_Stc[1]["EventType"]
	local nType = tMayOfflineGift_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nNeedLevel = tMayOfflineGift_Cont["Level"][nData+1]
	local sReward = tMayOfflineGift_Text[3308605]["Reward"][nData+1]
	
	tItem[3308605]["Text113"] = string.format(tMayOfflineGift_Text[3308605]["Text113"],nNeedLevel)
	tItem[3308605]["Text114"] = string.format(tMayOfflineGift_Text[3308605]["Text114"],sReward)
	return true
end

tItem[3308605]["OptionFunc111"] = "MayOfflineGift_GetReward</N>3308605"

tItem[3308605]["Text1-2"] = {121,122,123,124,125,126}
tItem[3308605]["tOption1-2"] = {121}
tItem[3308605]["ChkFunc1-2"] = function()
	local nEvent = tMayOfflineGift_Stc[1]["EventType"]
	local nType = tMayOfflineGift_Stc[1]["DataType"]
	local nLimit = tMayOfflineGift_Stc[1]["Limit"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local sReward = tMayOfflineGift_Text[3308605]["Reward"][nData]
	
	-- 是否已领取所有奖励
	tItem[3308605]["Text123"] = string.format(tMayOfflineGift_Text[3308605]["Text123"],sReward)
	if nData >= nLimit then
		tItem[3308605]["Text1-2"] = {121,122,123,126}
	else
		local nNeedLevel = tMayOfflineGift_Cont["Level"][nData+1]
		local sNextReward = tMayOfflineGift_Text[3308605]["Reward"][nData+1]
		tItem[3308605]["Text124"] = string.format(tMayOfflineGift_Text[3308605]["Text124"],nNeedLevel)
		tItem[3308605]["Text125"] = string.format(tMayOfflineGift_Text[3308605]["Text125"],sNextReward)
		tItem[3308605]["Text1-2"] = {121,122,123,124,125,126}
	end
	
	return true
end

-- 3308593 抱团闯荡礼盒
-- 3308594 名扬四海礼盒
-- 3308595 威震八方礼盒
-- 3308596 斗战天下礼盒
-- 3308598 EndlessDance赠礼包
-- 3308599 流星卷大礼包
-- 3308600 随机黄色神纹大礼盒
-- 3308601 天梯钻石礼盒
-- 3308602 天梯黄金礼盒
-- 3308603 天梯白银礼盒
-- 3308604 天梯青铜礼盒
tItem[3308593] = tItem[3308593] or {}
tItem[3308594] = tItem[3308593] or {}
tItem[3308595] = tItem[3308593] or {}
tItem[3308596] = tItem[3308593] or {}
tItem[3308598] = tItem[3308593] or {}
tItem[3308599] = tItem[3308593] or {}
tItem[3308600] = tItem[3308593] or {}
tItem[3308601] = tItem[3308593] or {}
tItem[3308602] = tItem[3308593] or {}
tItem[3308603] = tItem[3308593] or {}
tItem[3308604] = tItem[3308593] or {}
tItem[3308593]["Function"] = function(nItemId,sItemName)
	MayOfflineGift_UsePack(nItemId)
end


