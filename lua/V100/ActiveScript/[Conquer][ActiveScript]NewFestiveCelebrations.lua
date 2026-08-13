------------------------------------------------------------------------------------
--Name：            171102[简体征服][活动脚本]新版节日欢庆礼包制作
--Creator:      李甲
--Created:     2017/11/02
------------------------------------------------------------------------------------
--任务需求：
--礼包每日打开5次 -16967
--2每日用5次 -16968
--0每日用3次 -16969
--1每日用2次 -16970
--8每日用1次 -16971
--3008270 每日限一个 - 16972
--3008323 每日限一个 - 16973
--3303018 每日限一个 - 16974

------------------------------------------------------------------------------------
--等级需求
local tNewFestiveCelebrations_Count = {}
	tNewFestiveCelebrations_Count["ActTime"] = tActivityTime["NewFestiveCelebrations"]["AfterTime"]
	tNewFestiveCelebrations_Count["MaxLevel"] = 140
	tNewFestiveCelebrations_Count["MinLevel"] = 0
	tNewFestiveCelebrations_Count["Mete"] = 2
	
--掩码
local tNewFestiveCelebrations_Stc = {}
	tNewFestiveCelebrations_Stc[3306408] = {}
	tNewFestiveCelebrations_Stc[3306408]["EventType"] = 169
	tNewFestiveCelebrations_Stc[3306408]["DataType"] = 67
	tNewFestiveCelebrations_Stc[3306408]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3306408]["nMax"] = 5
	tNewFestiveCelebrations_Stc[3306409] = {}
	tNewFestiveCelebrations_Stc[3306409]["EventType"] = 169
	tNewFestiveCelebrations_Stc[3306409]["DataType"] = 68
	tNewFestiveCelebrations_Stc[3306409]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3306409]["nMax"] = 5
	tNewFestiveCelebrations_Stc[3306410] = {}
	tNewFestiveCelebrations_Stc[3306410]["EventType"] = 169
	tNewFestiveCelebrations_Stc[3306410]["DataType"] = 69
	tNewFestiveCelebrations_Stc[3306410]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3306410]["nMax"] = 3
	tNewFestiveCelebrations_Stc[3306411] = {}
	tNewFestiveCelebrations_Stc[3306411]["EventType"] = 169
	tNewFestiveCelebrations_Stc[3306411]["DataType"] = 70
	tNewFestiveCelebrations_Stc[3306411]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3306411]["nMax"] = 2
	tNewFestiveCelebrations_Stc[3306412] = {}
	tNewFestiveCelebrations_Stc[3306412]["EventType"] = 169
	tNewFestiveCelebrations_Stc[3306412]["DataType"] = 71
	tNewFestiveCelebrations_Stc[3306412]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3306412]["nMax"] = 1
	tNewFestiveCelebrations_Stc[3312104] = {}
	tNewFestiveCelebrations_Stc[3312104]["EventType"] = 194
	tNewFestiveCelebrations_Stc[3312104]["DataType"] = 12
	tNewFestiveCelebrations_Stc[3312104]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3312104]["nMax"] = 5
	
	tNewFestiveCelebrations_Stc[1] = {}
	tNewFestiveCelebrations_Stc[1]["EventType"] = 169
	tNewFestiveCelebrations_Stc[1]["DataType"] = 72
	tNewFestiveCelebrations_Stc[1]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[1]["nMax"] = 1
	tNewFestiveCelebrations_Stc[2] = {}
	tNewFestiveCelebrations_Stc[2]["EventType"] = 169
	tNewFestiveCelebrations_Stc[2]["DataType"] = 73
	tNewFestiveCelebrations_Stc[2]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[2]["nMax"] = 1
	tNewFestiveCelebrations_Stc[3] = {}
	tNewFestiveCelebrations_Stc[3]["EventType"] = 169
	tNewFestiveCelebrations_Stc[3]["DataType"] = 74
	tNewFestiveCelebrations_Stc[3]["nAdd"] = 1
	tNewFestiveCelebrations_Stc[3]["nMax"] = 1

--动态表
local tNewFestiveCelebrations_GlobalId = {}
	tNewFestiveCelebrations_GlobalId[1] = 51883
	tNewFestiveCelebrations_GlobalId[2] = 51884
	tNewFestiveCelebrations_GlobalId[3] = 51885
	tNewFestiveCelebrations_GlobalId[4] = 51886
	tNewFestiveCelebrations_GlobalId[5] = 51887

--节日礼包
local tNewFestiveCelebrations_Reward = {}
	tNewFestiveCelebrations_Reward[3306408] = {}
	tNewFestiveCelebrations_Reward[3306408]["LogId"] = 12000928
	--二转以下
	tNewFestiveCelebrations_Reward[3306408][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][1]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][1]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][1]["DeleteItem"][1]["Id"] = 3306408
	tNewFestiveCelebrations_Reward[3306408][1][1]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][1]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][1]["RewardItem"][1]["Id"] = 3008957 --60分钟经验包
	tNewFestiveCelebrations_Reward[3306408][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tNewFestiveCelebrations_Reward[3306408][1][2] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2]["ItemChanceSum"] = 10000
	tNewFestiveCelebrations_Reward[3306408][1][2][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][1]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][1]["ItemChance"] = 600
	tNewFestiveCelebrations_Reward[3306408][1][2][1]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][1]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][1]["RewardItem"][1]["Id"] = 723017 -- 昆仑雪水
	tNewFestiveCelebrations_Reward[3306408][1][2][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][2] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][2]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][2]["ItemChance"] = 900
	tNewFestiveCelebrations_Reward[3306408][1][2][2]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][2]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][2]["RewardItem"][1]["Id"] = 1200001 -- 大祈愿石
	tNewFestiveCelebrations_Reward[3306408][1][2][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][3] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][3]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][3]["ItemChance"] = 1050
	tNewFestiveCelebrations_Reward[3306408][1][2][3]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][3]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][3]["RewardItem"][1]["Id"] = 3303084 -- 日常任务完成令
	tNewFestiveCelebrations_Reward[3306408][1][2][3]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][1][2][4] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][4]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][4]["ItemChance"] = 1050
	tNewFestiveCelebrations_Reward[3306408][1][2][4]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][4]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][4]["RewardItem"][1]["Id"] = 3303085 -- 国境任务完成令
	tNewFestiveCelebrations_Reward[3306408][1][2][4]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][1][2][5] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][5]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][5]["ItemChance"] = 650
	tNewFestiveCelebrations_Reward[3306408][1][2][5]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][5]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][5]["RewardItem"][1]["Id"] = 3005132 -- 优质宝石礼包
	tNewFestiveCelebrations_Reward[3306408][1][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][1][2][6] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][6]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][6]["ItemChance"] = 800
	tNewFestiveCelebrations_Reward[3306408][1][2][6]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][6]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][6]["RewardItem"][1]["Id"] = 720828 -- 记忆宝珠
	tNewFestiveCelebrations_Reward[3306408][1][2][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][7] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][7]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][7]["ItemChance"] = 550
	tNewFestiveCelebrations_Reward[3306408][1][2][7]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][7]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][7]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tNewFestiveCelebrations_Reward[3306408][1][2][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][8] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][8]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][8]["ItemChance"] = 500
	tNewFestiveCelebrations_Reward[3306408][1][2][8]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][8]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][8]["RewardItem"][1]["Id"] = 1100003 -- 乾坤袋（小）
	tNewFestiveCelebrations_Reward[3306408][1][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][1][2][9] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][9]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][9]["ItemChance"] = 550
	tNewFestiveCelebrations_Reward[3306408][1][2][9]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][9]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][9]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石
	tNewFestiveCelebrations_Reward[3306408][1][2][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][10] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][10]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][10]["ItemChance"] = 200
	tNewFestiveCelebrations_Reward[3306408][1][2][10]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][10]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][10]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石
	tNewFestiveCelebrations_Reward[3306408][1][2][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][11] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][11]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][11]["ItemChance"] = 550
	tNewFestiveCelebrations_Reward[3306408][1][2][11]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][11]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][11]["RewardItem"][1]["Id"] = 3303247 --  +2马匹（赠）福禄袋
	tNewFestiveCelebrations_Reward[3306408][1][2][11]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][1][2][12] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][12]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][12]["ItemChance"] = 200
	tNewFestiveCelebrations_Reward[3306408][1][2][12]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][12]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][12]["RewardItem"][1]["Id"] = 3303246 --  +3马匹（赠）福禄袋
	tNewFestiveCelebrations_Reward[3306408][1][2][12]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][1][2][13] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][13]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][13]["ItemChance"] = 600
	tNewFestiveCelebrations_Reward[3306408][1][2][13]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][13]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][13]["RewardItem"][1]["Id"] = 3001407 -- 天道酬勤卷轴
	tNewFestiveCelebrations_Reward[3306408][1][2][13]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tNewFestiveCelebrations_Reward[3306408][1][2][14] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][14]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][14]["ItemChance"] = 1000
	tNewFestiveCelebrations_Reward[3306408][1][2][14]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][14]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][14]["RewardItem"][1]["Id"] = 730001 -- 试炼之地传送卷  改为 赤炼石+1
	tNewFestiveCelebrations_Reward[3306408][1][2][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][15] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][15]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][15]["ItemChance"] = 100
	tNewFestiveCelebrations_Reward[3306408][1][2][15]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][15]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][15]["RewardItem"][1]["Id"] = 728596 -- 九转聚神丹碎片
	tNewFestiveCelebrations_Reward[3306408][1][2][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][16] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][16]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][16]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][1][2][16]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][16]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][16]["RewardItem"][1]["Id"] = 1088000 -- 龙珠
	tNewFestiveCelebrations_Reward[3306408][1][2][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][1][2][17] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][17]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][1][2][17]["ItemChance"] = 300
	tNewFestiveCelebrations_Reward[3306408][1][2][17]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][17]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][1][2][17]["RewardItem"][1]["Id"] = 3306409 -- 节庆字牌【2】
	tNewFestiveCelebrations_Reward[3306408][1][2][17]["RewardItem"][1]["Attr"] = "0 1"
	
	--二转未满级
	tNewFestiveCelebrations_Reward[3306408][2] = {}
	tNewFestiveCelebrations_Reward[3306408][2][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][1]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][1]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][1]["DeleteItem"][1]["Id"] = 3306408
	tNewFestiveCelebrations_Reward[3306408][2][1]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][1]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][1]["RewardItem"][1]["Id"] = 3008959 --120分钟经验包
	tNewFestiveCelebrations_Reward[3306408][2][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tNewFestiveCelebrations_Reward[3306408][2][3] = {}
	tNewFestiveCelebrations_Reward[3306408][2][3]["RewardZhenQi"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][3]["RewardZhenQi"]["Value"] = 1
	tNewFestiveCelebrations_Reward[3306408][2][4] = {}
	tNewFestiveCelebrations_Reward[3306408][2][4]["RewardFreePractNum"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][4]["RewardFreePractNum"]["Value"] = 1
	tNewFestiveCelebrations_Reward[3306408][2][2] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2]["ItemChanceSum"] = 10000
	tNewFestiveCelebrations_Reward[3306408][2][2][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][1]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][1]["ItemChance"] = 1700
	tNewFestiveCelebrations_Reward[3306408][2][2][1]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][1]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][1]["RewardItem"][1]["Id"] = 3200660  -- 200气力值精装包
	tNewFestiveCelebrations_Reward[3306408][2][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][2] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][2]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][2]["ItemChance"] = 600
	tNewFestiveCelebrations_Reward[3306408][2][2][2]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][2]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][2]["RewardItem"][1]["Id"] = 3200661 -- 300气力值精装包
	tNewFestiveCelebrations_Reward[3306408][2][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][3] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][3]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][3]["ItemChance"] = 690
	tNewFestiveCelebrations_Reward[3306408][2][2][3]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][3]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][3]["RewardItem"][1]["Id"] = 3303084 -- 日常任务完成令
	tNewFestiveCelebrations_Reward[3306408][2][2][3]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][2][2][4] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][4]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][4]["ItemChance"] = 700
	tNewFestiveCelebrations_Reward[3306408][2][2][4]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][4]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][4]["RewardItem"][1]["Id"] = 3303085 -- 国境任务完成令
	tNewFestiveCelebrations_Reward[3306408][2][2][4]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][2][2][5] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][5]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][5]["ItemChance"] = 600
	tNewFestiveCelebrations_Reward[3306408][2][2][5]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][5]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][5]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tNewFestiveCelebrations_Reward[3306408][2][2][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][6] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][6]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][6]["ItemChance"] = 300
	tNewFestiveCelebrations_Reward[3306408][2][2][6]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][6]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][6]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tNewFestiveCelebrations_Reward[3306408][2][2][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][7] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][7]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][7]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][2][2][7]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][7]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][7]["RewardItem"][1]["Id"] = 3008222 -- 岫山玉碎片
	tNewFestiveCelebrations_Reward[3306408][2][2][7]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][2][2][8] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][8]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][8]["ItemChance"] = 810
	tNewFestiveCelebrations_Reward[3306408][2][2][8]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][8]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][8]["RewardItem"][1]["Id"] = 3003125 -- 通神丹
	tNewFestiveCelebrations_Reward[3306408][2][2][8]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][9] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][9]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][9]["ItemChance"] = 500
	tNewFestiveCelebrations_Reward[3306408][2][2][9]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][9]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][9]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石
	tNewFestiveCelebrations_Reward[3306408][2][2][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][10] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][10]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][10]["ItemChance"] = 100
	tNewFestiveCelebrations_Reward[3306408][2][2][10]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][10]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][10]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石
	tNewFestiveCelebrations_Reward[3306408][2][2][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][11] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][11]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][11]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][2][2][11]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][11]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][11]["RewardItem"][1]["Id"] = 3303247 --  +2马匹（赠）福禄袋
	tNewFestiveCelebrations_Reward[3306408][2][2][11]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][12] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][12]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][12]["ItemChance"] = 100
	tNewFestiveCelebrations_Reward[3306408][2][2][12]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][12]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][12]["RewardItem"][1]["Id"] = 3303246 --  +3马匹（赠）福禄袋
	tNewFestiveCelebrations_Reward[3306408][2][2][12]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][13] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][13]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][13]["ItemChance"] = 500
	tNewFestiveCelebrations_Reward[3306408][2][2][13]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][13]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][13]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹
	tNewFestiveCelebrations_Reward[3306408][2][2][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][14] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][14]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][14]["ItemChance"] = 0
	tNewFestiveCelebrations_Reward[3306408][2][2][14]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][14]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][14]["RewardItem"][1]["Id"] = 3303519 -- 魔武通玄丹碎片
	tNewFestiveCelebrations_Reward[3306408][2][2][14]["RewardItem"][1]["Attr"] = "0 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][15] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][15]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][15]["ItemChance"] = 200
	tNewFestiveCelebrations_Reward[3306408][2][2][15]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][15]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][15]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹
	tNewFestiveCelebrations_Reward[3306408][2][2][15]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][16] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][16]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][16]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][2][2][16]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][16]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][16]["RewardItem"][1]["Id"] = 720128 -- 清心符
	tNewFestiveCelebrations_Reward[3306408][2][2][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][17] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][17]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][17]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][2][2][17]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][17]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][17]["RewardItem"][1]["Id"] = 3001407 -- 天道酬勤卷轴
	tNewFestiveCelebrations_Reward[3306408][2][2][17]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][18] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][18]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][18]["ItemChance"] = 1000
	tNewFestiveCelebrations_Reward[3306408][2][2][18]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][18]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][18]["RewardItem"][1]["Id"] = 730001 -- 试炼之地传送卷  改为 赤炼石+1
	tNewFestiveCelebrations_Reward[3306408][2][2][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][2][2][19] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["ItemChance"] = 100
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["GlobalId"] = 51883
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["MaxData"] = 1
	tNewFestiveCelebrations_Reward[3306408][2][2][19]["FullIndex"] = 3
	tNewFestiveCelebrations_Reward[3306408][2][2][20] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][20]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][20]["ItemChance"] = 300
	tNewFestiveCelebrations_Reward[3306408][2][2][20]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][20]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][20]["RewardItem"][1]["Id"] = 3306409 -- 节庆字牌【2】
	tNewFestiveCelebrations_Reward[3306408][2][2][20]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][21] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][21]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][21]["ItemChance"] = 150
	tNewFestiveCelebrations_Reward[3306408][2][2][21]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][21]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][21]["RewardItem"][1]["Id"] = 3306410 -- 节庆字牌【0】
	tNewFestiveCelebrations_Reward[3306408][2][2][21]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][22] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["ItemChance"] = 40
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["RewardItem"][1]["Id"] = 3306411 -- 节庆字牌【1】
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["GlobalId"] = 51886
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["MaxData"] = 10
	tNewFestiveCelebrations_Reward[3306408][2][2][22]["FullIndex"] = 3
	tNewFestiveCelebrations_Reward[3306408][2][2][23] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["ItemChance"] = 10
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["RewardItem"][1]["Id"] = 3306412 -- 节庆字牌【8】
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["GlobalId"] = 51887
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["MaxData"] = 1
	tNewFestiveCelebrations_Reward[3306408][2][2][23]["FullIndex"] = 3
	
	
	--满级
	tNewFestiveCelebrations_Reward[3306408][3] = {}
	tNewFestiveCelebrations_Reward[3306408][3][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][1]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][1]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][1]["DeleteItem"][1]["Id"] = 3306408
	tNewFestiveCelebrations_Reward[3306408][3][1]["RewardStrengthValue"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][1]["RewardStrengthValue"]["Value"] = 50
	tNewFestiveCelebrations_Reward[3306408][3][3] = {}
	tNewFestiveCelebrations_Reward[3306408][3][3]["RewardZhenQi"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][3]["RewardZhenQi"]["Value"] = 1
	tNewFestiveCelebrations_Reward[3306408][3][4] = {}
	tNewFestiveCelebrations_Reward[3306408][3][4]["RewardFreePractNum"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][4]["RewardFreePractNum"]["Value"] = 1
	tNewFestiveCelebrations_Reward[3306408][3][2] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2]["ItemChanceSum"] = 10000
	tNewFestiveCelebrations_Reward[3306408][3][2][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][1]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][1]["ItemChance"] = 1800
	tNewFestiveCelebrations_Reward[3306408][3][2][1]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][1]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][1]["RewardItem"][1]["Id"] = 3200660 -- 200气力值精装包
	tNewFestiveCelebrations_Reward[3306408][3][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][2] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][2]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][2]["ItemChance"] = 500
	tNewFestiveCelebrations_Reward[3306408][3][2][2]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][2]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tNewFestiveCelebrations_Reward[3306408][3][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][3] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][3]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][3]["ItemChance"] = 300
	tNewFestiveCelebrations_Reward[3306408][3][2][3]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][3]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][3]["RewardItem"][1]["Id"] = 3008221 -- 岫山玉
	tNewFestiveCelebrations_Reward[3306408][3][2][3]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][3][2][4] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][4]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][4]["ItemChance"] = 800
	tNewFestiveCelebrations_Reward[3306408][3][2][4]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][4]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][4]["RewardItem"][1]["Id"] = 3008222 -- 岫山玉碎片
	tNewFestiveCelebrations_Reward[3306408][3][2][4]["RewardItem"][1]["Attr"] = "0 2"
	tNewFestiveCelebrations_Reward[3306408][3][2][5] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][5]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][5]["ItemChance"] = 900
	tNewFestiveCelebrations_Reward[3306408][3][2][5]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][5]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][5]["RewardItem"][1]["Id"] = 3003125 -- 通神丹
	tNewFestiveCelebrations_Reward[3306408][3][2][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][6] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][6]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][6]["ItemChance"] = 700
	tNewFestiveCelebrations_Reward[3306408][3][2][6]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][6]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][6]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石
	tNewFestiveCelebrations_Reward[3306408][3][2][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][7] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][7]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][7]["ItemChance"] = 350
	tNewFestiveCelebrations_Reward[3306408][3][2][7]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][7]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石
	tNewFestiveCelebrations_Reward[3306408][3][2][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][8] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][8]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][8]["ItemChance"] = 700
	tNewFestiveCelebrations_Reward[3306408][3][2][8]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][8]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][8]["RewardItem"][1]["Id"] = 3303247 --  +2马匹（赠）福禄袋
	tNewFestiveCelebrations_Reward[3306408][3][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][9] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][9]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][9]["ItemChance"] = 350
	tNewFestiveCelebrations_Reward[3306408][3][2][9]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][9]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][9]["RewardItem"][1]["Id"] = 3303246 --  +3马匹（赠）福禄袋
	tNewFestiveCelebrations_Reward[3306408][3][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][10] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][10]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][10]["ItemChance"] = 600
	tNewFestiveCelebrations_Reward[3306408][3][2][10]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][10]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][10]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹
	tNewFestiveCelebrations_Reward[3306408][3][2][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][11] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][11]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][11]["ItemChance"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][11]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][11]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][11]["RewardItem"][1]["Id"] = 3303519 -- 魔武通玄丹碎片
	tNewFestiveCelebrations_Reward[3306408][3][2][11]["RewardItem"][1]["Attr"] = "0 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][12] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][12]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][12]["ItemChance"] = 600
	tNewFestiveCelebrations_Reward[3306408][3][2][12]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][12]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][12]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹
	tNewFestiveCelebrations_Reward[3306408][3][2][12]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][13] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][13]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][13]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][3][2][13]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][13]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][13]["RewardItem"][1]["Id"] = 3008224 -- 昆仑玉碎片
	tNewFestiveCelebrations_Reward[3306408][3][2][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][14] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][14]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][14]["ItemChance"] = 150
	tNewFestiveCelebrations_Reward[3306408][3][2][14]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][14]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][14]["RewardItem"][1]["Id"] = 3008270 -- 3星时装制衣册残页
	tNewFestiveCelebrations_Reward[3306408][3][2][14]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][15] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][15]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][15]["ItemChance"] = 150
	tNewFestiveCelebrations_Reward[3306408][3][2][15]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][15]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][15]["RewardItem"][1]["Id"] = 3008323 -- 3星坐骑制衣册残页
	tNewFestiveCelebrations_Reward[3306408][3][2][15]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][16] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["ItemChance"] = 100
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["GlobalId"] = 51883
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["MaxData"] = 1
	tNewFestiveCelebrations_Reward[3306408][3][2][16]["FullIndex"] = 22
	tNewFestiveCelebrations_Reward[3306408][3][2][17] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["ItemChance"] = 100
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["RewardItem"][1]["Id"] = 3008223 -- 昆仑玉
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["GlobalId"] = 51885
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["MaxData"] = 1
	tNewFestiveCelebrations_Reward[3306408][3][2][17]["FullIndex"] = 22
	tNewFestiveCelebrations_Reward[3306408][3][2][18] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][18]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][18]["ItemChance"] = 400
	tNewFestiveCelebrations_Reward[3306408][3][2][18]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][18]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][18]["RewardItem"][1]["Id"] = 3306409 -- 节庆字牌【2】
	tNewFestiveCelebrations_Reward[3306408][3][2][18]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][19] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][19]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][19]["ItemChance"] = 200
	tNewFestiveCelebrations_Reward[3306408][3][2][19]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][19]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][19]["RewardItem"][1]["Id"] = 3306410 -- 节庆字牌【0】
	tNewFestiveCelebrations_Reward[3306408][3][2][19]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][20] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["ItemChance"] = 90
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["RewardItem"][1]["Id"] = 3306411 -- 节庆字牌【1】
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["GlobalId"] = 51886
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["MaxData"] = 10
	tNewFestiveCelebrations_Reward[3306408][3][2][20]["FullIndex"] = 23
	tNewFestiveCelebrations_Reward[3306408][3][2][21] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["ItemChance"] = 10
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["RewardItem"][1]["Id"] = 3306412 -- 节庆字牌【8】
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["GlobalId"] = 51887
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["Pos"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["MaxData"] = 1
	tNewFestiveCelebrations_Reward[3306408][3][2][21]["FullIndex"] = 23
	tNewFestiveCelebrations_Reward[3306408][3][2][22] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][22]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][22]["ItemChance"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][22]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][22]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][22]["RewardItem"][1]["Id"] = 3003124 -- 免费强炼丹
	tNewFestiveCelebrations_Reward[3306408][3][2][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewFestiveCelebrations_Reward[3306408][3][2][23] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][23]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][23]["ItemChance"] = 0
	tNewFestiveCelebrations_Reward[3306408][3][2][23]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][23]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][23]["RewardItem"][1]["Id"] = 3303084 -- 日常任务完成令
	tNewFestiveCelebrations_Reward[3306408][3][2][23]["RewardItem"][1]["Attr"] = "0 1"
	tNewFestiveCelebrations_Reward[3306408][3][2][24] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][24]["RandomItemChanceType"] = 2
	tNewFestiveCelebrations_Reward[3306408][3][2][24]["ItemChance"] = 800
	tNewFestiveCelebrations_Reward[3306408][3][2][24]["RewardItem"] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][24]["RewardItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306408][3][2][24]["RewardItem"][1]["Id"] = 3200661 -- 300气力值精装包
	tNewFestiveCelebrations_Reward[3306408][3][2][24]["RewardItem"][1]["Attr"] = "0 1"
	

	tNewFestiveCelebrations_Reward[3306409] = {}
	tNewFestiveCelebrations_Reward[3306409]["LogId"] = 12000930
	tNewFestiveCelebrations_Reward[3306409]["GetStrengthValue"] = 30
	tNewFestiveCelebrations_Reward[3306409]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306409]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306409]["DeleteItem"][1]["Id"] = 3306409
	tNewFestiveCelebrations_Reward[3306409]["EventType"] = 169
	tNewFestiveCelebrations_Reward[3306409]["DataType"] = 68
	tNewFestiveCelebrations_Reward[3306409]["RewardData"] = 5
	tNewFestiveCelebrations_Reward[3306409]["RewardDelay"] = 1
	tNewFestiveCelebrations_Reward[3306409]["RewardTimeType"] = 4
	tNewFestiveCelebrations_Reward[3306409]["RewardStrengthValue"] = {}
	tNewFestiveCelebrations_Reward[3306409]["RewardStrengthValue"]["Value"] = 30
	
	tNewFestiveCelebrations_Reward[3306410] = {}
	tNewFestiveCelebrations_Reward[3306410]["LogId"] = 12000930
	tNewFestiveCelebrations_Reward[3306410]["GetStrengthValue"] = 50
	tNewFestiveCelebrations_Reward[3306410]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306410]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306410]["DeleteItem"][1]["Id"] = 3306410
	tNewFestiveCelebrations_Reward[3306410]["EventType"] = 169
	tNewFestiveCelebrations_Reward[3306410]["DataType"] = 69
	tNewFestiveCelebrations_Reward[3306410]["RewardData"] = 3
	tNewFestiveCelebrations_Reward[3306410]["RewardDelay"] = 1
	tNewFestiveCelebrations_Reward[3306410]["RewardTimeType"] = 4
	tNewFestiveCelebrations_Reward[3306410]["RewardStrengthValue"] = {}
	tNewFestiveCelebrations_Reward[3306410]["RewardStrengthValue"]["Value"] = 50
	
	tNewFestiveCelebrations_Reward[3306411] = {}
	tNewFestiveCelebrations_Reward[3306411]["LogId"] = 12000930
	tNewFestiveCelebrations_Reward[3306411]["GetStrengthValue"] = 100
	tNewFestiveCelebrations_Reward[3306411]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306411]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306411]["DeleteItem"][1]["Id"] = 3306411
	tNewFestiveCelebrations_Reward[3306411]["EventType"] = 169
	tNewFestiveCelebrations_Reward[3306411]["DataType"] = 70
	tNewFestiveCelebrations_Reward[3306411]["RewardData"] = 2
	tNewFestiveCelebrations_Reward[3306411]["RewardDelay"] = 1
	tNewFestiveCelebrations_Reward[3306411]["RewardTimeType"] = 4
	tNewFestiveCelebrations_Reward[3306411]["RewardStrengthValue"] = {}
	tNewFestiveCelebrations_Reward[3306411]["RewardStrengthValue"]["Value"] = 100
	
	tNewFestiveCelebrations_Reward[3306412] = {}
	tNewFestiveCelebrations_Reward[3306412]["LogId"] = 12000930
	tNewFestiveCelebrations_Reward[3306412]["GetStrengthValue"] = 300
	tNewFestiveCelebrations_Reward[3306412]["DeleteItem"] = {}
	tNewFestiveCelebrations_Reward[3306412]["DeleteItem"][1] = {}
	tNewFestiveCelebrations_Reward[3306412]["DeleteItem"][1]["Id"] = 3306412
	tNewFestiveCelebrations_Reward[3306412]["EventType"] = 169
	tNewFestiveCelebrations_Reward[3306412]["DataType"] = 71
	tNewFestiveCelebrations_Reward[3306412]["RewardData"] = 1
	tNewFestiveCelebrations_Reward[3306412]["RewardDelay"] = 1
	tNewFestiveCelebrations_Reward[3306412]["RewardTimeType"] = 4
	tNewFestiveCelebrations_Reward[3306412]["RewardStrengthValue"] = {}
	tNewFestiveCelebrations_Reward[3306412]["RewardStrengthValue"]["Value"] = 300
----------------------------------表配置部分--------------------------------------------
--寻路传送
local tNewFestiveCelebrations_FindMainNpc = {}
	tNewFestiveCelebrations_FindMainNpc["NpcId"] = 11244
	tNewFestiveCelebrations_FindMainNpc["MapId"] = 1002
	tNewFestiveCelebrations_FindMainNpc["CellX"] = 345
	tNewFestiveCelebrations_FindMainNpc["CellY"] = 452
	
----------------------------------逻辑部分---------------------------------------------
--通过玩家转世及等级判断礼包
function Get_NewFestiveCelebrationsPackIndex()
	local nIndex = 0
	local nUserId = Get_UserId()
	local nUserLevel = Get_UserLevel(nUserId)
	local nUserMete = Get_UserMetempsychosis(nUserId)
	local nMaxLevel = tNewFestiveCelebrations_Count["MaxLevel"]
	local nMete = tNewFestiveCelebrations_Count["Mete"]
	if nUserMete < nMete then
		nIndex = 1
	elseif nUserLevel < nMaxLevel then
		nIndex = 2
	else
		nIndex = 3
	end
	return nIndex
end
--3008270 每日限一个 - 16972
--3008323 每日限一个 - 16973
--3303018 每日限一个 - 16974
--开礼包
function Get_NewFestiveCelebrationsPack(nItemId)
	local nUserId = Get_UserId()
	NewFestiveCelebrations_Nextday(nUserId)
	local nIndex = Get_NewFestiveCelebrationsPackIndex()
	local tReward = CommonFunc_Copy(tNewFestiveCelebrations_Reward[3306408][nIndex][1])
	if (nItemId == 3312104) then
		tReward["DeleteItem"][1]["Id"] = 3312104
	end
	local tReward1 = CommonFunc_Copy(tNewFestiveCelebrations_Reward[3306408][nIndex])
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReward)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReward)
	local nRandomSpace = RewardTemplate_GetRandomSpace(tReward1,2,nUserId)
	local nSpace = nGetRewardSpace - nDelRewardSpace + nRandomSpace
	--礼包每日限定打开5次
	local nEvent = tNewFestiveCelebrations_Stc[3306408]["EventType"]
	local nData = tNewFestiveCelebrations_Stc[3306408]["DataType"]
	local nAdd = tNewFestiveCelebrations_Stc[3306408]["nAdd"]
	local nMax = tNewFestiveCelebrations_Stc[3306408]["nMax"]
	
	--2019.03.13 觉醒珍宝礼盒 3312104 复用此逻辑 新增限量打开掩码 不走同一套 修改提示
	if (nItemId == 3312104) then
		nEvent = tNewFestiveCelebrations_Stc[3312104]["EventType"]
		nData = tNewFestiveCelebrations_Stc[3312104]["DataType"]
	end
	
	if Task_ChkStcValue(nEvent,nData,">=",nMax) then 
		if (nItemId == 3312104) then
			User_TalkChannel2005(tTrojanAwakenI_Text["MsgBox"]["3312104Limit"]) --提示超过五次
		else
			User_TalkChannel2005(tNewFestiveCelebrations_Text["OpenMax"]) --提示超过五次
		end
		return
	end
	--高级特殊经验丹每日限一个后给免费强炼丹
	local nEvent1 = tNewFestiveCelebrations_Stc[1]["EventType"]
	local nData1 = tNewFestiveCelebrations_Stc[1]["DataType"]
	local nMax1 = tNewFestiveCelebrations_Stc[1]["nMax"]
	if Task_ChkStcValue(nEvent1,nData1,">=",nMax1) then 
		tReward1[2][21]["RewardItem"][1]["Id"] = 3003124
	end
	--3星时装制衣册残页每日限一个后给免费强炼丹
	local nEvent2 = tNewFestiveCelebrations_Stc[2]["EventType"]
	local nData2 = tNewFestiveCelebrations_Stc[2]["DataType"]
	local nMax2 = tNewFestiveCelebrations_Stc[2]["nMax"]
	if Task_ChkStcValue(nEvent2,nData2,">=",nMax2) then 
		tReward1[2][15]["RewardItem"][1]["Id"] = 3003124
	end
	--3星坐骑制衣册残页每日限一个后给免费强炼丹
	local nEvent3 = tNewFestiveCelebrations_Stc[3]["EventType"]
	local nData3 = tNewFestiveCelebrations_Stc[3]["DataType"]
	local nMax3 = tNewFestiveCelebrations_Stc[3]["nMax"]
	if Task_ChkStcValue(nEvent3,nData3,">=",nMax3) then 
		tReward1[2][16]["RewardItem"][1]["Id"] = 3003124
	end
	if not User_CheckLeftSpace(nSpace,nUserId) then --提示玩家背包空间不足
		User_TalkChannel2005(string.format(tNewFestiveCelebrations_Text["NoSpace"],nSpace))
		return 
	end
	--礼包打开加掩码
	Task_AddStatistic(nEvent,nData,nAdd,1)
	--增加活跃度
	Task_AddActivityTaskSchedule(101,nUserId)
	--固定发奖
	RewardTemplate_UseItem(tReward)
	--真气模板与免费修炼次数模板单独发奖
	local tRewardZhenQi = tNewFestiveCelebrations_Reward[3306408][nIndex][3]
	local tRewardFreePractNum = tNewFestiveCelebrations_Reward[3306408][nIndex][4]
	if tRewardZhenQi~= nil and tRewardFreePractNum ~= nil then
	        --判断是否自创武功
		if User_IsAlreadyCreateGongFu(nUserId) then
		--判断真气上限
			local nZhenQi = Get_UserGongFuQiLev(nUserId)
			local nFreePractNum = Get_UserGongFureePractNum(nUserId)
			local nAddZhenQi =tRewardZhenQi["RewardZhenQi"]["Value"]
			local nAddFreePractNum = tRewardFreePractNum["RewardFreePractNum"]["Value"]
			if nZhenQi + nAddZhenQi > G_User_MaxZhenQi then
				local nLeft = G_User_MaxZhenQi - nZhenQi
				if nLeft > 0 then
					tAward["RewardZhenQi"]["Value"] = nLeft
				end
			end
			RewardTemplate_UseItem(tRewardZhenQi)
			if nFreePractNum + nAddFreePractNum <= G_User_FreePractice then
				RewardTemplate_UseItem(tRewardFreePractNum)
			end
		end
	end
	--获取随机奖励的id和name，随机到特定物品加掩码
	local tGiveReward,sStr = RewardTemplate_NewRandom(tReward1,2)
	local nGiveItemId = tGiveReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	local nAdd1 = tNewFestiveCelebrations_Stc[1]["nAdd"]
	if nGiveItemId == 3303018 then 
		Task_SetStatistic(nEvent1,nData1,nAdd1,1)
	end
	local nAdd2 = tNewFestiveCelebrations_Stc[2]["nAdd"]
	if nGiveItemId == 3008270 then
		Task_SetStatistic(nEvent2,nData2,nAdd2,1)
	end
	local nAdd3 = tNewFestiveCelebrations_Stc[3]["nAdd"]
	if nGiveItemId == 3008323 then
		Task_SetStatistic(nEvent3,nData3,nAdd3,1)
	end
	if nGiveItemId == 3009002 or nGiveItemId == 728596 or nGiveItemId == 3007102 or nGiveItemId == 3008223 then --检测到物品则全服公告
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tNewFestiveCelebrations_Text["GetGift"],sUserName,sStr))
	elseif nGiveItemId == 3306412 then
		User_TalkChannel2005("进入")
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tNewFestiveCelebrations_Text["GetNumber8"],sUserName))
	end
end
--掩码隔天重置
function NewFestiveCelebrations_Nextday(nUserId)
	for i = 1,3 do
		local nEvent = tNewFestiveCelebrations_Stc[i]["EventType"]
		local nType = tNewFestiveCelebrations_Stc[i]["DataType"]
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	local nEvent = tNewFestiveCelebrations_Stc[3306408]["EventType"]
	local nType = tNewFestiveCelebrations_Stc[3306408]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nEvent = tNewFestiveCelebrations_Stc[3312104]["EventType"]
	local nType = tNewFestiveCelebrations_Stc[3312104]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
end

--检测并删除背包中存在的字牌
function NewFestiveCelebrations_CheckCard()
	if not Sys_ChkFullTime(tNewFestiveCelebrations_Count["ActTime"]) then
		for i = 3306409,3306412 do
			if Item_ChkItem(i) and Item_DelAllItemByType(i) then
				User_TalkChannel2005(tNewFestiveCelebrations_Text["DelItem"])
			end
		end
		return false
	end
	return true
end
--检测字牌是否全套显示不同对白
function NewFestiveCelebrations_DialogShow(nItemId)
	if NewFestiveCelebrations_CheckCard() then --满足活动时间
		local nUserId = Get_UserId()
		--NewFestiveCelebrations_Nextday(nUserId) --掩码隔天重置
		if not Item_ChkItem(3306409) or not Item_ChkItem(3306410) or not Item_ChkItem(3306411) or not Item_ChkItem(3306412) then --字牌不成套
			Sys_DialogItemFace(nItemId)
			Sys_DialogText(tNewFestiveCelebrations_Text[nItemId]["Text111"])
			Sys_DialogOption(tNewFestiveCelebrations_Text[nItemId]["Option1"],"</F>NewFestiveCelebrations_UseCard</N>"..nItemId) --使用字牌
			Sys_DialogOption(tNewFestiveCelebrations_Text[nItemId]["Option3"])
			Sys_DialogEnd()
		else --字牌成套
			Sys_DialogItemFace(nItemId)
			Sys_DialogText(tNewFestiveCelebrations_Text[nItemId]["Text111"])
			Sys_DialogOption(tNewFestiveCelebrations_Text[nItemId]["Option1"],"</F>NewFestiveCelebrations_UseCard</N>"..nItemId) --使用字牌
			Sys_DialogOption(tNewFestiveCelebrations_Text[nItemId]["Option4"],"</F>NewFestiveCelebrations_FindNpc") --寻路至NPC（同地图寻路，不同地图传送）
			Sys_DialogEnd()
		end
	end
end
--使用字牌
function NewFestiveCelebrations_UseCard(nItemId) 
	local nEvent = tNewFestiveCelebrations_Stc[nItemId]["EventType"]
	local nData = tNewFestiveCelebrations_Stc[nItemId]["DataType"]
	local nAdd = tNewFestiveCelebrations_Stc[nItemId]["nAdd"]
	local nMax = tNewFestiveCelebrations_Stc[nItemId]["nMax"]
	local tReward = tNewFestiveCelebrations_Reward[nItemId]
	if not Item_ChkItem(nItemId) then --二次检测不存在则return
		User_TalkChannel2005(tNewFestiveCelebrations_Text[nItemId]["NoItem"]) --提示玩家背包无该物品
		return
	end
	RewardTemplate_UseItem(tReward)
end

--寻路NPC
function NewFestiveCelebrations_FindNpc()
	
	local nUserId = Get_UserId()
	local nNpcId = tNewFestiveCelebrations_FindMainNpc["NpcId"]
	local nMapId = tNewFestiveCelebrations_FindMainNpc["MapId"]
	local nNowMapId = Get_UserMapId(nUserId)
	local nCellX = tNewFestiveCelebrations_FindMainNpc["CellX"]
	local nCellY = tNewFestiveCelebrations_FindMainNpc["CellY"]
	if not Item_ChkItem(3306409) or not Item_ChkItem(3306410) or not Item_ChkItem(3306411) or not Item_ChkItem(3306412) then
		User_TalkChannel2005(tNewFestiveCelebrations_Text["NOAllCard"])
		return
	end
	--判断是否同地图
	if nNowMapId ~= nMapId then
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,0) --传送
	else
		NpcPosition_PathFind(nNpcId)--寻路
	end
end
--动态码重置
function NewFestiveCelebrations_ResetAllList()
	for i = 1,5 do
		local nGlobalId = tNewFestiveCelebrations_GlobalId[i]
		Sys_ResetAllSynaGlobalData(nGlobalId)
	end
end

tItemFace[3306409] = 1068
tItemFace[3306410] = 1069
tItemFace[3306411] = 1070
tItemFace[3306412] = 1071
--------物品无对白模板
tItem[3306408] = tItem[3306408] or {}
tItem[3306408]["Function"] = function(nItemId,sItemName)
	Get_NewFestiveCelebrationsPack(3306408)
end

tItem[3306409] = tItem[3306409] or {}
tItem[3306409]["Function"] = function(nItemId,sItemName)
	NewFestiveCelebrations_DialogShow(3306409)
end

tItem[3306410] = tItem[3306410] or {}
tItem[3306410]["Function"] = function(nItemId,sItemName)
	NewFestiveCelebrations_DialogShow(3306410)
end

tItem[3306411] = tItem[3306411] or {}
tItem[3306411]["Function"] = function(nItemId,sItemName)
	NewFestiveCelebrations_DialogShow(3306411)
end

tItem[3306412] = tItem[3306412] or {}
tItem[3306412]["Function"] = function(nItemId,sItemName)
	NewFestiveCelebrations_DialogShow(3306412)
end
--------时间自检
local NewFestiveCelebrations_OnTime = {}
	--00:00点 12:00刷新物品
	NewFestiveCelebrations_OnTime[1] = {}
	--NewFestiveCelebrations_OnTime[1]["ActivityTime"] = "2017-11-09 00:00 2018-12-31 23:59"
	NewFestiveCelebrations_OnTime[1]["Type"] = 2
	NewFestiveCelebrations_OnTime[1]["TimeType"] = 4
	NewFestiveCelebrations_OnTime[1]["Multiple"] = {}
	NewFestiveCelebrations_OnTime[1]["Multiple"][1]  = "00:00 00:00"
	NewFestiveCelebrations_OnTime[1]["Func"] = NewFestiveCelebrations_ResetAllList

table.insert(tSystemTime_InitialData,NewFestiveCelebrations_OnTime[1])

-- tProbabil_Test["MonsterDrop"] = {}
-- tProbabil_Test["MonsterDrop"]["Table"] = tNewFestiveCelebrations_Reward[3306408][1]
-- tProbabil_Test["MonsterDrop"]["Index"] = {2}
-- tProbabil_Test["MonsterDrop"]["Times"] = 10000
-- tProbabil_Test["MonsterDrop"]["LogName"] = "[Conquer][ActiveScript]NewFestiveCelebrations.log"
-- /callluafunc </F>Probabil_Main</S>MonsterDrop


