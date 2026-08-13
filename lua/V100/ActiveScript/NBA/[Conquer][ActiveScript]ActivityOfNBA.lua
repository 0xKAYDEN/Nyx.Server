------------------------------------------------------------------------------------
--Name：        170321[简体征服][活动脚本]NBA活动制作(4.13-4.26)
--Creator:      陈莺
--Created:     2017/03/21
------------------------------------------------------------------------------------
--任务需求：
-- 请根据附件内容制作NBA活动，暂定时间4.13-4.26

--命名规范
--ActivityOfNBA_

--logid:
-- 12000684

--掩码说明  14704 - 14708

--动态存储表
-- 51494	记录第一名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51495	记录第二名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51496	记录第三名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51497	记录第四名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51498	记录第五名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51499	记录第六名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51500	记录第七名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51501	记录第八名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51502	记录第九名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51503	记录第十名玩家数据	data1	玩家分数	data2	记录玩家ID	datastr1	玩家名字(可更改)	datastr2	玩家名字
-- 51504	记录NBA巨星的今日人气值	data1	火箭队	data2	湖人队	data3	骑士队	data4	勇士	Str5	表示已清过
-- 51505	记录NBA巨星的昨日人气值	data1	火箭队	data2	湖人队	data3	骑士队	data4	勇士	data5	表示昨日最后一名巨星编号


----------------------------------表配置部分--------------------------------------------
local tActivityOfNBA_Data = {}
	tActivityOfNBA_Data["Bef_Time"]= tActivityTime["ActivityOfNBA"]["Bef_Time"]
	tActivityOfNBA_Data["Now_Time"]= tActivityTime["ActivityOfNBA"]["Now_Time"]
	tActivityOfNBA_Data["Aft_Time"]= tActivityTime["ActivityOfNBA"]["Aft_Time"]  --领排行榜时间
	tActivityOfNBA_Data["OneDay_Time"]= tActivityTime["ActivityOfNBA"]["OneDay_Time"]  --活动后一天(支持NBA巨星时间)
	tActivityOfNBA_Data["ClearTime"]= "00:01 00:03"  --清动态码
	tActivityOfNBA_Data["RewardTime"] = tActivityTime["ActivityOfNBA"]["RewardTime"]  --冠军礼包打开时间
	tActivityOfNBA_Data["MailTime"] = tActivityTime["ActivityOfNBA"]["MailTime"]  --冠军礼包获得时间
	
	tActivityOfNBA_Data["Level"] = 80
	tActivityOfNBA_Data["Metempsychosis"] = 0
	tActivityOfNBA_Data["Cartoon"] = 1013
	tActivityOfNBA_Data["Instance"] = 82
	tActivityOfNBA_Data["MapId"] = 1002
	tActivityOfNBA_Data["PosX"] = 320
	tActivityOfNBA_Data["PosY"] = 445

	tActivityOfNBA_Data["Num"] = {20,15,10,6,6,6,3,3,3,3}

	tActivityOfNBA_Data["NpcId"] = {20472,20475,20476,20495,20496}
	
	tActivityOfNBA_Data["Action"] = 568358
	
	tActivityOfNBA_Data["Web"] = "http://co.99.com/guide/event/2018/dreammanager2/"
	
local tActivityOfNBA_Coat = {}
	tActivityOfNBA_Coat[194695] = 203
	tActivityOfNBA_Coat[194705] = 204
	tActivityOfNBA_Coat[194715] = 205
	tActivityOfNBA_Coat[194725] = 206
	-- 新增四件光效
	tActivityOfNBA_Coat[195175] = 249
	tActivityOfNBA_Coat[195185] = 250
	tActivityOfNBA_Coat[195195] = 251
	tActivityOfNBA_Coat[195205] = 252
	
local tActivityOfNBA_Stc = {}
	tActivityOfNBA_Stc["Build"] = {}  -- = 1 已建球队
	tActivityOfNBA_Stc["Build"]["EventType"] = 158
	tActivityOfNBA_Stc["Build"]["DataType"] = 30
	tActivityOfNBA_Stc["Build"]["Data"] = 1
	
	tActivityOfNBA_Stc["Support"] = {}  -- 记录当天已支持过NBA巨星
	tActivityOfNBA_Stc["Support"]["EventType"] = 158
	tActivityOfNBA_Stc["Support"]["DataType"] = 31
	
	tActivityOfNBA_Stc["Grade"] = {}  -- 记录玩家最高实力评分
	tActivityOfNBA_Stc["Grade"]["EventType"] = 158
	tActivityOfNBA_Stc["Grade"]["DataType"] = 32
	
	tActivityOfNBA_Stc["Score"] = {}  -- 记录玩家实时实力评分
	tActivityOfNBA_Stc["Score"]["EventType"] = 158
	tActivityOfNBA_Stc["Score"]["DataType"] = 33
	
	tActivityOfNBA_Stc["Rank"] = {}  -- 记录玩家领取排行榜奖励
	tActivityOfNBA_Stc["Rank"]["EventType"] = 158
	tActivityOfNBA_Stc["Rank"]["DataType"] = 35
	
	tActivityOfNBA_Stc["Equip"] = {}  -- 二进制记录卡片是否有加装备（wzr提供）
	tActivityOfNBA_Stc["Equip"]["EventType"] = 158
	tActivityOfNBA_Stc["Equip"]["DataType"] = 26
	
	tActivityOfNBA_Stc["Name"] = {}  -- 排行榜前十改名字记录
	tActivityOfNBA_Stc["Name"]["EventType"] = 158
	tActivityOfNBA_Stc["Name"]["DataType"] = 48
	
	tActivityOfNBA_Stc["Reward"] = {}  -- 记录玩家领取战力大奖1
	tActivityOfNBA_Stc["Reward"]["EventType"] = 158
	tActivityOfNBA_Stc["Reward"]["DataType"] = 34
	
	-- tActivityOfNBA_Stc["Reward"][2] = {}
	-- tActivityOfNBA_Stc["Reward"][2]["EventType"] = 159
	-- tActivityOfNBA_Stc["Reward"][2]["DataType"] = 20
	
---战力大奖2进制掩码记录领取
local tActivityOfNBA_RewardStc = {}
	tActivityOfNBA_RewardStc[1] = {}
	tActivityOfNBA_RewardStc[1][3000] = 1
	tActivityOfNBA_RewardStc[1][7000] = 2
	tActivityOfNBA_RewardStc[1][11000] = 4
	tActivityOfNBA_RewardStc[1][15000] = 8
	tActivityOfNBA_RewardStc[1][19000] = 16
	tActivityOfNBA_RewardStc[1][25000] = 32
	tActivityOfNBA_RewardStc[1][28000] = 64
	tActivityOfNBA_RewardStc[1][31000] = 128
	--第二个选项
	tActivityOfNBA_RewardStc[1][1000] = 256
	tActivityOfNBA_RewardStc[1][5000] = 512
	tActivityOfNBA_RewardStc[1][9000] = 1024
	--第三个选项
	tActivityOfNBA_RewardStc[2] = {}
	tActivityOfNBA_RewardStc[2][13000] = 1
	tActivityOfNBA_RewardStc[2][17000] = 2
	tActivityOfNBA_RewardStc[2][21000] = 4
	tActivityOfNBA_RewardStc[2][26000] = 8
	--第四个选项
	tActivityOfNBA_RewardStc[2][23000] = 16
	tActivityOfNBA_RewardStc[2][27000] = 32
	tActivityOfNBA_RewardStc[2][29000] = 64
	tActivityOfNBA_RewardStc[2][30000] = 128
	tActivityOfNBA_RewardStc[2][32000] = 256
	tActivityOfNBA_RewardStc[2][33000] = 512
	tActivityOfNBA_RewardStc[2][34000] = 1024
	tActivityOfNBA_RewardStc[2][35000] = 2048

	
	
-----正选球员
	tActivityOfNBA_Stc["Player"] = {}
	tActivityOfNBA_Stc["Player"][1] = {}  
	tActivityOfNBA_Stc["Player"][1]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][1]["DataType"] = 36

	tActivityOfNBA_Stc["Player"][2] = {} 
	tActivityOfNBA_Stc["Player"][2]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][2]["DataType"] = 37

	tActivityOfNBA_Stc["Player"][3] = {} 
	tActivityOfNBA_Stc["Player"][3]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][3]["DataType"] = 38

	tActivityOfNBA_Stc["Player"][4] = {} 
	tActivityOfNBA_Stc["Player"][4]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][4]["DataType"] = 39

	tActivityOfNBA_Stc["Player"][5] = {} 
	tActivityOfNBA_Stc["Player"][5]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][5]["DataType"] = 40
--替补球员
	tActivityOfNBA_Stc["Player"][6] = {}  
	tActivityOfNBA_Stc["Player"][6]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][6]["DataType"] = 41

	tActivityOfNBA_Stc["Player"][7] = {} 
	tActivityOfNBA_Stc["Player"][7]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][7]["DataType"] = 42

	tActivityOfNBA_Stc["Player"][8] = {} 
	tActivityOfNBA_Stc["Player"][8]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][8]["DataType"] = 43

	tActivityOfNBA_Stc["Player"][9] = {} 
	tActivityOfNBA_Stc["Player"][9]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][9]["DataType"] = 44

	tActivityOfNBA_Stc["Player"][10] = {} 
	tActivityOfNBA_Stc["Player"][10]["EventType"] = 158
	tActivityOfNBA_Stc["Player"][10]["DataType"] = 45

local tActivityOfNBA_Reward = {}
	tActivityOfNBA_Reward[1] = {}
	tActivityOfNBA_Reward[1]["LogId"] = 12000684
	tActivityOfNBA_Reward[1]["LogStep"] = "1"
	tActivityOfNBA_Reward[1]["Space"] = 2
	tActivityOfNBA_Reward[1]["RewardItem"] = {}
	tActivityOfNBA_Reward[1]["RewardItem"][1] = {}
	tActivityOfNBA_Reward[1]["RewardItem"][1]["Id"] = 3302875  --球队花名册
	tActivityOfNBA_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Reward[1]["RewardItem"][2] = {}
	tActivityOfNBA_Reward[1]["RewardItem"][2]["Id"] = 3302804  --球队资金500个
	tActivityOfNBA_Reward[1]["RewardItem"][2]["Attr"] = "0 500"
	tActivityOfNBA_Reward[1]["RewardEffect"] = {}
	tActivityOfNBA_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	--支持球星
	tActivityOfNBA_Reward[2] = {}
	tActivityOfNBA_Reward[2]["LogId"] = 12000684
	tActivityOfNBA_Reward[2]["Space"] = 1
	tActivityOfNBA_Reward[2]["RewardItem"] = {}
	tActivityOfNBA_Reward[2]["RewardItem"][1] = {}
	tActivityOfNBA_Reward[2]["RewardItem"][1]["Id"] = 3302804  --球队资金
	tActivityOfNBA_Reward[2]["RewardItem"][1]["Attr"] = "0 100"
	tActivityOfNBA_Reward[2]["RewardEffect"] = {}
	tActivityOfNBA_Reward[2]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tActivityOfNBA_Reward[2]["Num"] = 100
	
	tActivityOfNBA_Reward[3] = {}
	tActivityOfNBA_Reward[3]["LogId"] = 12000684
	tActivityOfNBA_Reward[3]["Space"] = 1
	tActivityOfNBA_Reward[3]["RewardItem"] = {}
	tActivityOfNBA_Reward[3]["RewardItem"][1] = {}
	tActivityOfNBA_Reward[3]["RewardItem"][1]["Id"] = 3302804  --球队资金
	tActivityOfNBA_Reward[3]["RewardItem"][1]["Attr"] = "0 200"
	tActivityOfNBA_Reward[3]["RewardEffect"] = {}
	tActivityOfNBA_Reward[3]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	tActivityOfNBA_Reward[3]["Num"] = 200
--补领球队花名册
	tActivityOfNBA_Reward[4] = {}
	tActivityOfNBA_Reward[4]["LogId"] = 12000684
	tActivityOfNBA_Reward[4]["Space"] = 1
	tActivityOfNBA_Reward[4]["RewardItem"] = {}
	tActivityOfNBA_Reward[4]["RewardItem"][1] = {}
	tActivityOfNBA_Reward[4]["RewardItem"][1]["Id"] = 3302875  --球队花名册
	tActivityOfNBA_Reward[4]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Reward[4]["RewardEffect"] = {}
	tActivityOfNBA_Reward[4]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward[4]["RewardEffect"]["Effect"] = "angelwing"
	
---排行榜奖励
	tActivityOfNBA_Reward["Rank"] = {}
	tActivityOfNBA_Reward["Rank"][1] = {}
	tActivityOfNBA_Reward["Rank"][1]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][1]["LogStep"] = "2[1]"
	tActivityOfNBA_Reward["Rank"][1]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][1]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][1]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][1]["RewardItem"][1]["Attr"] = "0 20"
	tActivityOfNBA_Reward["Rank"][1]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][1]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tActivityOfNBA_Reward["Rank"][2] = {}
	tActivityOfNBA_Reward["Rank"][2]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][2]["LogStep"] = "2[2]"
	tActivityOfNBA_Reward["Rank"][2]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][2]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][2]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][2]["RewardItem"][1]["Attr"] = "0 15"
	tActivityOfNBA_Reward["Rank"][2]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][2]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][2]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][3] = {}
	tActivityOfNBA_Reward["Rank"][3]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][3]["LogStep"] = "2[3]"
	tActivityOfNBA_Reward["Rank"][3]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][3]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][3]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][3]["RewardItem"][1]["Attr"] = "0 10"
	tActivityOfNBA_Reward["Rank"][3]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][3]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][3]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][4] = {}
	tActivityOfNBA_Reward["Rank"][4]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][4]["LogStep"] = "2[4]"
	tActivityOfNBA_Reward["Rank"][4]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][4]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][4]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][4]["RewardItem"][1]["Attr"] = "0 6"
	tActivityOfNBA_Reward["Rank"][4]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][4]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][4]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][5] = {}
	tActivityOfNBA_Reward["Rank"][5]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][5]["LogStep"] = "2[5]"
	tActivityOfNBA_Reward["Rank"][5]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][5]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][5]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][5]["RewardItem"][1]["Attr"] = "0 6"
	tActivityOfNBA_Reward["Rank"][5]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][5]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][5]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][6] = {}
	tActivityOfNBA_Reward["Rank"][6]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][6]["LogStep"] = "2[6]"
	tActivityOfNBA_Reward["Rank"][6]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][6]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][6]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][6]["RewardItem"][1]["Attr"] = "0 6"
	tActivityOfNBA_Reward["Rank"][6]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][6]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][6]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][7] = {}
	tActivityOfNBA_Reward["Rank"][7]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][7]["LogStep"] = "2[7]"
	tActivityOfNBA_Reward["Rank"][7]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][7]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][7]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][7]["RewardItem"][1]["Attr"] = "0 3"
	tActivityOfNBA_Reward["Rank"][7]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][7]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][7]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][8] = {}
	tActivityOfNBA_Reward["Rank"][8]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][8]["LogStep"] = "2[8]"
	tActivityOfNBA_Reward["Rank"][8]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][8]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][8]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][8]["RewardItem"][1]["Attr"] = "0 3"
	tActivityOfNBA_Reward["Rank"][8]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][8]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][8]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][9] = {}
	tActivityOfNBA_Reward["Rank"][9]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][9]["LogStep"] = "2[9]"
	tActivityOfNBA_Reward["Rank"][9]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][9]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][9]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][9]["RewardItem"][1]["Attr"] = "0 3"
	tActivityOfNBA_Reward["Rank"][9]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][9]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][9]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Reward["Rank"][10] = {}
	tActivityOfNBA_Reward["Rank"][10]["LogId"] = 12000684
	tActivityOfNBA_Reward["Rank"][10]["LogStep"] = "2[10]"
	tActivityOfNBA_Reward["Rank"][10]["RewardItem"] = {}
	tActivityOfNBA_Reward["Rank"][10]["RewardItem"][1] = {}
	tActivityOfNBA_Reward["Rank"][10]["RewardItem"][1]["Id"] = 3303351  --NBA经验特饮
	tActivityOfNBA_Reward["Rank"][10]["RewardItem"][1]["Attr"] = "0 3"
	tActivityOfNBA_Reward["Rank"][10]["RewardEffect"] = {}
	tActivityOfNBA_Reward["Rank"][10]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Reward["Rank"][10]["RewardEffect"]["Effect"] = "angelwing"


local tActivityOfNBA_GlobId = {}
	tActivityOfNBA_GlobId[1] = 51494
	tActivityOfNBA_GlobId[2] = 51495
	tActivityOfNBA_GlobId[3] = 51496
	tActivityOfNBA_GlobId[4] = 51497
	tActivityOfNBA_GlobId[5] = 51498
	tActivityOfNBA_GlobId[6] = 51499
	tActivityOfNBA_GlobId[7] = 51500
	tActivityOfNBA_GlobId[8] = 51501
	tActivityOfNBA_GlobId[9] = 51502
	tActivityOfNBA_GlobId[10] = 51503
	tActivityOfNBA_GlobId["NowNum"] = 51504  --今日巨星人气值
	tActivityOfNBA_GlobId["AftNum"] = 51505  --昨日巨星人气值

--表示支持过巨星npc
local tActivityOfNBA_Num = {}
	tActivityOfNBA_Num[1] = 1
	tActivityOfNBA_Num[2] = 2
	tActivityOfNBA_Num[3] = 4
	tActivityOfNBA_Num[4] = 8
	
local tActivityOfNBA_NpcId = {}  --npc编号
	tActivityOfNBA_NpcId[20449] = 1
	tActivityOfNBA_NpcId[20450] = 2
	tActivityOfNBA_NpcId[20451] = 3
	tActivityOfNBA_NpcId[20452] = 4

local tActivityOfNBA_Score = {}  --分数达到给物品
	tActivityOfNBA_Score[1] = {}
	tActivityOfNBA_Score[1]["Score"] = 1000
	tActivityOfNBA_Score[1]["Space"] = 1
	tActivityOfNBA_Score[1]["LogId"] = 12000684
	tActivityOfNBA_Score[1]["RewardItem"] = {}
	tActivityOfNBA_Score[1]["RewardItem"][1] = {}
	tActivityOfNBA_Score[1]["RewardItem"][1]["Id"] = 3302801  --补给包*1
	tActivityOfNBA_Score[1]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[1]["RewardEffect"] = {}
	tActivityOfNBA_Score[1]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[1]["RewardEffect"]["Effect"] = "angelwing"

	
	tActivityOfNBA_Score[2] = {}
	tActivityOfNBA_Score[2]["Score"] = 3000
	tActivityOfNBA_Score[2]["Space"] = 1
	tActivityOfNBA_Score[2]["LogId"] = 12000684
	tActivityOfNBA_Score[2]["RewardItem"] = {}
	tActivityOfNBA_Score[2]["RewardItem"][1] = {}
	tActivityOfNBA_Score[2]["RewardItem"][1]["Id"] = 3302876  --1天时效随机球衣包
	tActivityOfNBA_Score[2]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[2]["RewardEffect"] = {}
	tActivityOfNBA_Score[2]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[2]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[3] = {}
	tActivityOfNBA_Score[3]["Score"] = 5000
	tActivityOfNBA_Score[3]["Space"] = 1
	tActivityOfNBA_Score[3]["LogId"] = 12000684
	tActivityOfNBA_Score[3]["RewardItem"] = {}
	tActivityOfNBA_Score[3]["RewardItem"][1] = {}
	tActivityOfNBA_Score[3]["RewardItem"][1]["Id"] = 3302801  --补给包*2
	tActivityOfNBA_Score[3]["RewardItem"][1]["Attr"] = "0 2"
	tActivityOfNBA_Score[3]["RewardEffect"] = {}
	tActivityOfNBA_Score[3]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[3]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[4] = {}
	tActivityOfNBA_Score[4]["Score"] = 7000
	tActivityOfNBA_Score[4]["Space"] = 1
	tActivityOfNBA_Score[4]["LogId"] = 12000684
	tActivityOfNBA_Score[4]["RewardItem"] = {}
	tActivityOfNBA_Score[4]["RewardItem"][1] = {}
	tActivityOfNBA_Score[4]["RewardItem"][1]["Id"] = 3302877  --7天时效随机球衣包
	tActivityOfNBA_Score[4]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[4]["RewardEffect"] = {}
	tActivityOfNBA_Score[4]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[4]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[5] = {}
	tActivityOfNBA_Score[5]["Score"] = 9000
	tActivityOfNBA_Score[5]["Space"] = 1
	tActivityOfNBA_Score[5]["LogId"] = 12000684
	tActivityOfNBA_Score[5]["RewardItem"] = {}
	tActivityOfNBA_Score[5]["RewardItem"][1] = {}
	tActivityOfNBA_Score[5]["RewardItem"][1]["Id"] = 3302801  --补给包*3
	tActivityOfNBA_Score[5]["RewardItem"][1]["Attr"] = "0 3"
	tActivityOfNBA_Score[5]["RewardEffect"] = {}
	tActivityOfNBA_Score[5]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[5]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[6] = {}
	tActivityOfNBA_Score[6]["Score"] = 11000
	tActivityOfNBA_Score[6]["Space"] = 1
	tActivityOfNBA_Score[6]["LogId"] = 12000684
	tActivityOfNBA_Score[6]["RewardItem"] = {}
	tActivityOfNBA_Score[6]["RewardItem"][1] = {}
	tActivityOfNBA_Score[6]["RewardItem"][1]["Id"] = 3302878  --15天时效随机球衣包
	tActivityOfNBA_Score[6]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[6]["RewardEffect"] = {}
	tActivityOfNBA_Score[6]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[6]["RewardEffect"]["Effect"] = "angelwing"


	tActivityOfNBA_Score[7] = {}
	tActivityOfNBA_Score[7]["Score"] = 13000
	tActivityOfNBA_Score[7]["Space"] = 1
	tActivityOfNBA_Score[7]["LogId"] = 12000684
	tActivityOfNBA_Score[7]["RewardItem"] = {}
	tActivityOfNBA_Score[7]["RewardItem"][1] = {}
	tActivityOfNBA_Score[7]["RewardItem"][1]["Id"] = 3302806  --球星凭证*1
	tActivityOfNBA_Score[7]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[7]["RewardEffect"] = {}
	tActivityOfNBA_Score[7]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[7]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[8] = {}
	tActivityOfNBA_Score[8]["Score"] = 15000
	tActivityOfNBA_Score[8]["Space"] = 1
	tActivityOfNBA_Score[8]["LogId"] = 12000684
	tActivityOfNBA_Score[8]["RewardItem"] = {}
	tActivityOfNBA_Score[8]["RewardItem"][1] = {}
	tActivityOfNBA_Score[8]["RewardItem"][1]["Id"] = 3302879  --30天时效随机球衣包
	tActivityOfNBA_Score[8]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[8]["RewardEffect"] = {}
	tActivityOfNBA_Score[8]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[8]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[9] = {}
	tActivityOfNBA_Score[9]["Score"] = 17000
	tActivityOfNBA_Score[9]["Space"] = 2
	tActivityOfNBA_Score[9]["LogId"] = 12000684
	tActivityOfNBA_Score[9]["RewardItem"] = {}
	tActivityOfNBA_Score[9]["RewardItem"][1] = {}
	tActivityOfNBA_Score[9]["RewardItem"][1]["Id"] = 3302806  --球星凭证*2
	tActivityOfNBA_Score[9]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[9]["RewardEffect"] = {}
	tActivityOfNBA_Score[9]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[9]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[10] = {}
	tActivityOfNBA_Score[10]["Score"] = 19000
	tActivityOfNBA_Score[10]["Space"] = 1
	tActivityOfNBA_Score[10]["LogId"] = 12000684
	tActivityOfNBA_Score[10]["RewardItem"] = {}
	tActivityOfNBA_Score[10]["RewardItem"][1] = {}
	tActivityOfNBA_Score[10]["RewardItem"][1]["Id"] = 3302880  --永久时效随机球衣包
	tActivityOfNBA_Score[10]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[10]["RewardItem"][2] = {}
	-- tActivityOfNBA_Score[10]["RewardItem"][2]["Id"] = 3303351  --NBA经验特饮
	-- tActivityOfNBA_Score[10]["RewardItem"][2]["Attr"] = "0 1"
	tActivityOfNBA_Score[10]["RewardEffect"] = {}
	tActivityOfNBA_Score[10]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[10]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Score[11] = {}
	tActivityOfNBA_Score[11]["Score"] = 21000
	tActivityOfNBA_Score[11]["AddScore"] = 1000
	tActivityOfNBA_Score[11]["Num"] = 11
	tActivityOfNBA_Score[11]["Space"] = 1
	tActivityOfNBA_Score[11]["LogId"] = 12000684
	tActivityOfNBA_Score[11]["RewardItem"] = {}
	tActivityOfNBA_Score[11]["RewardItem"][1] = {}
	tActivityOfNBA_Score[11]["RewardItem"][1]["Id"] = 3302807  --兑换道具*1
	tActivityOfNBA_Score[11]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Score[11]["RewardEffect"] = {}
	tActivityOfNBA_Score[11]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Score[11]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[12] = {}
	-- tActivityOfNBA_Score[12]["Score"] = 23000
	-- tActivityOfNBA_Score[12]["Space"] = 1
	-- tActivityOfNBA_Score[12]["LogId"] = 12000684
	-- tActivityOfNBA_Score[12]["RewardItem"] = {}
	-- tActivityOfNBA_Score[12]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[12]["RewardItem"][1]["Id"] = 3302807  --兑换道具*1
	-- tActivityOfNBA_Score[12]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[12]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[12]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[12]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[13] = {}
	-- tActivityOfNBA_Score[13]["Score"] = 25000
	-- tActivityOfNBA_Score[13]["Space"] = 2
	-- tActivityOfNBA_Score[13]["LogId"] = 12000684
	-- tActivityOfNBA_Score[13]["RewardItem"] = {}
	-- tActivityOfNBA_Score[13]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[13]["RewardItem"][1]["Id"] = 3302888  --永久时效可选球衣包*1
	-- tActivityOfNBA_Score[13]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[13]["RewardItem"][2] = {}
	-- tActivityOfNBA_Score[13]["RewardItem"][2]["Id"] = 3303351  --NBA经验特饮
	-- tActivityOfNBA_Score[13]["RewardItem"][2]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[13]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[13]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[13]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[14] = {}
	-- tActivityOfNBA_Score[14]["Score"] = 26000
	-- tActivityOfNBA_Score[14]["Space"] = 5
	-- tActivityOfNBA_Score[14]["LogId"] = 12000684
	-- tActivityOfNBA_Score[14]["RewardItem"] = {}
	-- tActivityOfNBA_Score[14]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[14]["RewardItem"][1]["Id"] = 3302806  --球星凭证*5
	-- tActivityOfNBA_Score[14]["RewardItem"][1]["Attr"] = "0 5"
	-- tActivityOfNBA_Score[14]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[14]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[14]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[15] = {}
	-- tActivityOfNBA_Score[15]["Score"] = 27000
	-- tActivityOfNBA_Score[15]["Space"] = 1
	-- tActivityOfNBA_Score[15]["LogId"] = 12000684
	-- tActivityOfNBA_Score[15]["RewardItem"] = {}
	-- tActivityOfNBA_Score[15]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[15]["RewardItem"][1]["Id"] = 3302807  --兑换道具*1
	-- tActivityOfNBA_Score[15]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[15]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[15]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[15]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[16] = {}
	-- tActivityOfNBA_Score[16]["Score"] = 28000
	-- tActivityOfNBA_Score[16]["Space"] = 2
	-- tActivityOfNBA_Score[16]["LogId"] = 12000684
	-- tActivityOfNBA_Score[16]["RewardItem"] = {}
	-- tActivityOfNBA_Score[16]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[16]["RewardItem"][1]["Id"] = 3302885  --永久时效可选球衣包
	-- tActivityOfNBA_Score[16]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[16]["RewardItem"][2] = {}
	-- tActivityOfNBA_Score[16]["RewardItem"][2]["Id"] = 3303351  --NBA经验特饮
	-- tActivityOfNBA_Score[16]["RewardItem"][2]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[16]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[16]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[16]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[17] = {}
	-- tActivityOfNBA_Score[17]["Score"] = 29000
	-- tActivityOfNBA_Score[17]["Space"] = 1
	-- tActivityOfNBA_Score[17]["LogId"] = 12000684
	-- tActivityOfNBA_Score[17]["RewardItem"] = {}
	-- tActivityOfNBA_Score[17]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[17]["RewardItem"][1]["Id"] = 3302807  --兑换道具*1
	-- tActivityOfNBA_Score[17]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[17]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[17]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[17]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[18] = {}
	-- tActivityOfNBA_Score[18]["Score"] = 30000
	-- tActivityOfNBA_Score[18]["Space"] = 1
	-- tActivityOfNBA_Score[18]["LogId"] = 12000684
	-- tActivityOfNBA_Score[18]["RewardItem"] = {}
	-- tActivityOfNBA_Score[18]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[18]["RewardItem"][1]["Id"] = 3302807  --兑换道具*1
	-- tActivityOfNBA_Score[18]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[18]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[18]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[18]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[19] = {}
	-- tActivityOfNBA_Score[19]["Score"] = 31000
	-- tActivityOfNBA_Score[19]["Space"] = 2
	-- tActivityOfNBA_Score[19]["LogId"] = 12000684
	-- tActivityOfNBA_Score[19]["RewardItem"] = {}
	-- tActivityOfNBA_Score[19]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[19]["RewardItem"][1]["Id"] = 3302885  --永久时效可选球衣包
	-- tActivityOfNBA_Score[19]["RewardItem"][1]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[19]["RewardItem"][2] = {}
	-- tActivityOfNBA_Score[19]["RewardItem"][2]["Id"] = 3303351  --NBA经验特饮
	-- tActivityOfNBA_Score[19]["RewardItem"][2]["Attr"] = "0 1"
	-- tActivityOfNBA_Score[19]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[19]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[19]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[20] = {}
	-- tActivityOfNBA_Score[20]["Score"] = 32000
	-- tActivityOfNBA_Score[20]["Space"] = 2
	-- tActivityOfNBA_Score[20]["LogId"] = 12000684
	-- tActivityOfNBA_Score[20]["RewardItem"] = {}
	-- tActivityOfNBA_Score[20]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[20]["RewardItem"][1]["Id"] = 3302807  --兑换道具*2
	-- tActivityOfNBA_Score[20]["RewardItem"][1]["Attr"] = "0 2"
	-- tActivityOfNBA_Score[20]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[20]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[20]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[21] = {}
	-- tActivityOfNBA_Score[21]["Score"] = 33000
	-- tActivityOfNBA_Score[21]["Space"] = 2
	-- tActivityOfNBA_Score[21]["LogId"] = 12000684
	-- tActivityOfNBA_Score[21]["RewardItem"] = {}
	-- tActivityOfNBA_Score[21]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[21]["RewardItem"][1]["Id"] = 3302807  --兑换道具*2
	-- tActivityOfNBA_Score[21]["RewardItem"][1]["Attr"] = "0 2"
	-- tActivityOfNBA_Score[21]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[21]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[21]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[22] = {}
	-- tActivityOfNBA_Score[22]["Score"] = 34000
	-- tActivityOfNBA_Score[22]["Space"] = 2
	-- tActivityOfNBA_Score[22]["LogId"] = 12000684
	-- tActivityOfNBA_Score[22]["RewardItem"] = {}
	-- tActivityOfNBA_Score[22]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[22]["RewardItem"][1]["Id"] = 3302807  --兑换道具*2
	-- tActivityOfNBA_Score[22]["RewardItem"][1]["Attr"] = "0 2"
	-- tActivityOfNBA_Score[22]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[22]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[22]["RewardEffect"]["Effect"] = "angelwing"

	-- tActivityOfNBA_Score[23] = {}
	-- tActivityOfNBA_Score[23]["Score"] = 35000
	-- tActivityOfNBA_Score[23]["Space"] = 2
	-- tActivityOfNBA_Score[23]["LogId"] = 12000684
	-- tActivityOfNBA_Score[23]["RewardItem"] = {}
	-- tActivityOfNBA_Score[23]["RewardItem"][1] = {}
	-- tActivityOfNBA_Score[23]["RewardItem"][1]["Id"] = 3302807  --兑换道具*2
	-- tActivityOfNBA_Score[23]["RewardItem"][1]["Attr"] = "0 2"
	-- tActivityOfNBA_Score[23]["RewardEffect"] = {}
	-- tActivityOfNBA_Score[23]["RewardEffect"]["SzObj"] = "self"
	-- tActivityOfNBA_Score[23]["RewardEffect"]["Effect"] = "angelwing"

--兄弟卡片
	tActivityOfNBA_BrotherCard = {}
	tActivityOfNBA_BrotherCard[3302820] = {3302825,500}  --哈登与霍华德
	tActivityOfNBA_BrotherCard[3302821] = {3302839,500}  --库里与汤普森
	tActivityOfNBA_BrotherCard[3302822] = {3302837,500}  --哈登与霍华德
	tActivityOfNBA_BrotherCard[3302823] = {3302826,500}  --姚明与阿里扎
	tActivityOfNBA_BrotherCard[3302824] = {3302832,500}  --詹姆斯与欧文
	
	tActivityOfNBA_BrotherCard[3302825] = {3302820,500}  --科比与尼克杨
	tActivityOfNBA_BrotherCard[3302839] = {3302821,500}  --库里与汤普森
	tActivityOfNBA_BrotherCard[3302837] = {3302822,500}  --哈登与霍华德
	tActivityOfNBA_BrotherCard[3302826] = {3302823,500}  --姚明与阿里扎
	tActivityOfNBA_BrotherCard[3302832] = {3302824,500}  --詹姆斯与欧文

------装备二进制掩码标示
local tActivityOfNBA_Equip = {}
	tActivityOfNBA_Equip[1] = {}
	tActivityOfNBA_Equip[1][3302820] = {1,1250}    --科比专属战靴
	tActivityOfNBA_Equip[1][3302821] = {2,1200}     --库里专属战靴
	tActivityOfNBA_Equip[1][3302822] = {4,1250}    --哈登专属战靴
	tActivityOfNBA_Equip[1][3302823] = {8,1200}     --姚明专属战靴
	tActivityOfNBA_Equip[1][3302824] = {16,1250}    --詹姆斯专属战靴
	
	tActivityOfNBA_Equip[2] = {}
	tActivityOfNBA_Equip[2][3302820] = {32,1200}    --科比专属护腕
	tActivityOfNBA_Equip[2][3302821] = {64,1250}    --库里专属护腕
	tActivityOfNBA_Equip[2][3302822] = {128,1200}   --姚明专属护腕
	tActivityOfNBA_Equip[2][3302823] = {256,1300}   --哈登专属护腕
	tActivityOfNBA_Equip[2][3302824] = {512,1250}   --詹姆斯专属护腕

local tActivityOfNBA_ItemCard = {}
	tActivityOfNBA_ItemCard[1] = {}
	tActivityOfNBA_ItemCard[1]["ItemId"] = 3302820  --球星卡·科比
	tActivityOfNBA_ItemCard[1]["ItemGrade"] = 2600  --分数
	tActivityOfNBA_ItemCard[2] = {}
	tActivityOfNBA_ItemCard[2]["ItemId"] = 3302822  --球星卡·哈登
	tActivityOfNBA_ItemCard[2]["ItemGrade"] = 2550  --分数
	tActivityOfNBA_ItemCard[3] = {}
	tActivityOfNBA_ItemCard[3]["ItemId"] = 3302821  --球星卡·库里
	tActivityOfNBA_ItemCard[3]["ItemGrade"] = 2550  --分数
	tActivityOfNBA_ItemCard[4] = {}
	tActivityOfNBA_ItemCard[4]["ItemId"] = 3302823  --球星卡·姚明
	tActivityOfNBA_ItemCard[4]["ItemGrade"] = 2500  --分数
	tActivityOfNBA_ItemCard[5] = {}
	tActivityOfNBA_ItemCard[5]["ItemId"] = 3302824  --球星卡·詹姆斯
	tActivityOfNBA_ItemCard[5]["ItemGrade"] = 2500  --分数
	tActivityOfNBA_ItemCard[6] = {}
	tActivityOfNBA_ItemCard[6]["ItemId"] = 3302825  --球星卡·霍华德
	tActivityOfNBA_ItemCard[6]["ItemGrade"] = 1900  --分数
	tActivityOfNBA_ItemCard[7] = {}
	tActivityOfNBA_ItemCard[7]["ItemId"] = 3302836  --球星卡·马里昂
	tActivityOfNBA_ItemCard[7]["ItemGrade"] = 1880  --分数
	tActivityOfNBA_ItemCard[8] = {}
	tActivityOfNBA_ItemCard[8]["ItemId"] = 3302838  --球星卡·纳什
	tActivityOfNBA_ItemCard[8]["ItemGrade"] = 1880  --分数
	tActivityOfNBA_ItemCard[9] = {}
	tActivityOfNBA_ItemCard[9]["ItemId"] = 3302827  --球星卡·阿里扎
	tActivityOfNBA_ItemCard[9]["ItemGrade"] = 1850  --分数
	tActivityOfNBA_ItemCard[10] = {}
	tActivityOfNBA_ItemCard[10]["ItemId"] = 3302826  --球星卡·贝弗利
	tActivityOfNBA_ItemCard[10]["ItemGrade"] = 1850  --分数
	tActivityOfNBA_ItemCard[11] = {}
	tActivityOfNBA_ItemCard[11]["ItemId"] = 3302837  --球星卡·尼克杨
	tActivityOfNBA_ItemCard[11]["ItemGrade"] = 1820  --分数
	tActivityOfNBA_ItemCard[12] = {}
	tActivityOfNBA_ItemCard[12]["ItemId"] = 3302828  --球星卡·布鲁尔
	tActivityOfNBA_ItemCard[12]["ItemGrade"] = 1800  --分数
	tActivityOfNBA_ItemCard[13] = {}
	tActivityOfNBA_ItemCard[13]["ItemId"] = 3302831  --球星卡·伊格达拉
	tActivityOfNBA_ItemCard[13]["ItemGrade"] = 1800  --分数
	tActivityOfNBA_ItemCard[14] = {}
	tActivityOfNBA_ItemCard[14]["ItemId"] = 3302839  --球星卡·希伯特
	tActivityOfNBA_ItemCard[14]["ItemGrade"] = 1790  --分数
	tActivityOfNBA_ItemCard[15] = {}
	tActivityOfNBA_ItemCard[15]["ItemId"] = 3302835  --球星卡·史密斯
	tActivityOfNBA_ItemCard[15]["ItemGrade"] = 1780  --分数
	tActivityOfNBA_ItemCard[16] = {}
	tActivityOfNBA_ItemCard[16]["ItemId"] = 3302833  --球星卡·欧文
	tActivityOfNBA_ItemCard[16]["ItemGrade"] = 1780  --分数
	tActivityOfNBA_ItemCard[17] = {}
	tActivityOfNBA_ItemCard[17]["ItemId"] = 3302834  --球星卡·乐福
	tActivityOfNBA_ItemCard[17]["ItemGrade"] = 1750  --分数
	tActivityOfNBA_ItemCard[18] = {}
	tActivityOfNBA_ItemCard[18]["ItemId"] = 3302832  --球星卡·利文斯顿
	tActivityOfNBA_ItemCard[18]["ItemGrade"] = 1730  --分数
	tActivityOfNBA_ItemCard[19] = {}
	tActivityOfNBA_ItemCard[19]["ItemId"] = 3302840  --球星卡·希尔
	tActivityOfNBA_ItemCard[19]["ItemGrade"] = 1700  --分数
	tActivityOfNBA_ItemCard[20] = {}
	tActivityOfNBA_ItemCard[20]["ItemId"] = 3302829  --球星卡·汤普森
	tActivityOfNBA_ItemCard[20]["ItemGrade"] = 1700  --分数
	tActivityOfNBA_ItemCard[21] = {}
	tActivityOfNBA_ItemCard[21]["ItemId"] = 3302830  --球星卡·杜兰特
	tActivityOfNBA_ItemCard[21]["ItemGrade"] = 1700  --分数
	tActivityOfNBA_ItemCard[22] = {}
	tActivityOfNBA_ItemCard[22]["ItemId"] = 3302843  --球星卡·敏捷的后卫
	tActivityOfNBA_ItemCard[22]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[23] = {}
	tActivityOfNBA_ItemCard[23]["ItemId"] = 3302841  --球星卡·强壮的中锋
	tActivityOfNBA_ItemCard[23]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[24] = {}
	tActivityOfNBA_ItemCard[24]["ItemId"] = 3302842  --球星卡·高大的中锋
	tActivityOfNBA_ItemCard[24]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[25] = {}
	tActivityOfNBA_ItemCard[25]["ItemId"] = 3302844  --球星卡·灵活的后卫
	tActivityOfNBA_ItemCard[25]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[26] = {}
	tActivityOfNBA_ItemCard[26]["ItemId"] = 3302845  --球星卡·犀利的后卫
	tActivityOfNBA_ItemCard[26]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[27] = {}
	tActivityOfNBA_ItemCard[27]["ItemId"] = 3302846  --球星卡·精准的后卫
	tActivityOfNBA_ItemCard[27]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[28] = {}
	tActivityOfNBA_ItemCard[28]["ItemId"] = 3302847  --球星卡·彪悍的小前
	tActivityOfNBA_ItemCard[28]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[29] = {}
	tActivityOfNBA_ItemCard[29]["ItemId"] = 3302848  --球星卡·刚健的小前
	tActivityOfNBA_ItemCard[29]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[30] = {}
	tActivityOfNBA_ItemCard[30]["ItemId"] = 3302849  --球星卡·威猛的大前
	tActivityOfNBA_ItemCard[30]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[31] = {}
	tActivityOfNBA_ItemCard[31]["ItemId"] = 3302850  --球星卡·坚韧的大前
	tActivityOfNBA_ItemCard[31]["ItemGrade"] = 1200  --分数
	tActivityOfNBA_ItemCard[32] = {}
	tActivityOfNBA_ItemCard[32]["ItemId"] = 3302851  --球星卡·普通的中锋
	tActivityOfNBA_ItemCard[32]["ItemGrade"] = 600  --分数
	tActivityOfNBA_ItemCard[33] = {}
	tActivityOfNBA_ItemCard[33]["ItemId"] = 3302852  --球星卡·普通的控卫
	tActivityOfNBA_ItemCard[33]["ItemGrade"] = 600  --分数
	tActivityOfNBA_ItemCard[34] = {}
	tActivityOfNBA_ItemCard[34]["ItemId"] = 3302853  --球星卡·普通的分卫
	tActivityOfNBA_ItemCard[34]["ItemGrade"] = 600  --分数
	tActivityOfNBA_ItemCard[35] = {}
	tActivityOfNBA_ItemCard[35]["ItemId"] = 3302854  --球星卡·普通的小前
	tActivityOfNBA_ItemCard[35]["ItemGrade"] = 600  --分数
	tActivityOfNBA_ItemCard[36] = {}
	tActivityOfNBA_ItemCard[36]["ItemId"] = 3302855  --球星卡·普通的大前
	tActivityOfNBA_ItemCard[36]["ItemGrade"] = 600  --分数




local tActivityOfNBA_NpcFace = {} --
	--透明球星
	tActivityOfNBA_NpcFace[1] = 46790  --第一位球星
	tActivityOfNBA_NpcFace[2] = 46910  --第二位球星
	tActivityOfNBA_NpcFace[3] = 47100  --第三位球星
	tActivityOfNBA_NpcFace[4] = 47110  --第四位球星
	tActivityOfNBA_NpcFace[5] = 47120  --第五位球星
	--天王npcx
	tActivityOfNBA_NpcFace["Npcx"] = {}
	tActivityOfNBA_NpcFace["Npcx"][3302820] = {53270,53530,53540,53550,53560}  --第一位球星  哈登
	tActivityOfNBA_NpcFace["Npcx"][3302822] = {53280,53570,53580,53590,53600}  --第二位球星  詹姆斯
	tActivityOfNBA_NpcFace["Npcx"][3302823] = {53290,53610,53620,53630,53640}  --第三位球星  杜兰特
	tActivityOfNBA_NpcFace["Npcx"][3302821] = {53300,53650,53660,53670,53680}  --第四位球星  库里
	tActivityOfNBA_NpcFace["Npcx"][3302824] = {53310,53690,53700,53710,53720}  --第五位球星  欧文

	--普通npcx
	tActivityOfNBA_NpcFace["Npc"] = {}
	tActivityOfNBA_NpcFace["Npc"][1] = 53320  --第一位球星
	tActivityOfNBA_NpcFace["Npc"][2] = 53330  --第二位球星
	tActivityOfNBA_NpcFace["Npc"][3] = 53340  --第三位球星
	tActivityOfNBA_NpcFace["Npc"][4] = 53350  --第四位球星
	tActivityOfNBA_NpcFace["Npc"][5] = 53520  --第五位球星

	--普通显示名字的透明npc
	tActivityOfNBA_NpcFace[3302820] = 47130  --科比          哈登
	tActivityOfNBA_NpcFace[3302822] = 47140  --哈登          杜兰特
	tActivityOfNBA_NpcFace[3302823] = 47150  --姚明          库里
	tActivityOfNBA_NpcFace[3302821] = 47160  --库里          詹姆斯
	tActivityOfNBA_NpcFace[3302824] = 47170  --詹姆斯        欧文
	tActivityOfNBA_NpcFace[3302825] = 47180  --霍华德        霍华德
	tActivityOfNBA_NpcFace[3302826] = 47190  --贝弗利        汤普森
	tActivityOfNBA_NpcFace[3302828] = 47200  --布鲁尔        伊格达拉
	tActivityOfNBA_NpcFace[3302840] = 47210  --希尔          雷阿伦
	tActivityOfNBA_NpcFace[3302827] = 47220  --阿里扎        戈登
	tActivityOfNBA_NpcFace[3302843] = 47230  --敏捷的后卫    
	tActivityOfNBA_NpcFace[3302831] = 47240  --伊格达拉      利文斯顿
	tActivityOfNBA_NpcFace[3302834] = 47250  --乐福          克拉克森
	tActivityOfNBA_NpcFace[3302838] = 47260  --纳什          林书豪
	tActivityOfNBA_NpcFace[3302830] = 47270  --格林          隆多
	tActivityOfNBA_NpcFace[3302841] = 47280  --强壮的中锋   
	tActivityOfNBA_NpcFace[3302829] = 47290  --汤普森        加内特
	tActivityOfNBA_NpcFace[3302837] = 47300  --尼克杨        格林
	tActivityOfNBA_NpcFace[3302842] = 47310  --高大的中锋    
	tActivityOfNBA_NpcFace[3302839] = 47320  --希伯特        乐福
	tActivityOfNBA_NpcFace[3302832] = 47330  --格林          皮尔斯
	tActivityOfNBA_NpcFace[3302844] = 47340  --灵活的后卫
	tActivityOfNBA_NpcFace[3302836] = 47350  --马里昂        保罗
	tActivityOfNBA_NpcFace[3302835] = 47360  --史密斯        史密斯
	tActivityOfNBA_NpcFace[3302833] = 47370  --欧文          小托马斯
	tActivityOfNBA_NpcFace[3302845] = 47380  --犀利的后卫
	tActivityOfNBA_NpcFace[3302846] = 47390  --精准的后卫
	tActivityOfNBA_NpcFace[3302847] = 47400  --彪悍的小前
	tActivityOfNBA_NpcFace[3302848] = 47410  --刚健的小前
	tActivityOfNBA_NpcFace[3302849] = 47420  --威猛的大前
	tActivityOfNBA_NpcFace[3302850] = 47430  --坚韧的大前
	tActivityOfNBA_NpcFace[3302851] = 47440  --普通的中锋
	tActivityOfNBA_NpcFace[3302852] = 47450  --普通的控卫
	tActivityOfNBA_NpcFace[3302853] = 47460  --普通的分卫
	tActivityOfNBA_NpcFace[3302854] = 47470  --普通的小前
	tActivityOfNBA_NpcFace[3302855] = 47480  --普通的大前

local tActivityOfNBA_NpcPos = {} --动态npc位置
	tActivityOfNBA_NpcPos[1] = {}
	tActivityOfNBA_NpcPos[1][1] = {10134,56,48,94482126}
	tActivityOfNBA_NpcPos[1][2] = {10134,51,53,94039120}
	tActivityOfNBA_NpcPos[1][3] = {10134,63,54,94039121}
	tActivityOfNBA_NpcPos[1][4] = {10134,51,43,94039122}
	tActivityOfNBA_NpcPos[1][5] = {10134,60,43,94039123}

	tActivityOfNBA_NpcPos[2] = {}
	tActivityOfNBA_NpcPos[2][1] = {10134,55,47,94482126}
	tActivityOfNBA_NpcPos[2][2] = {10134,50,52,94039120}
	tActivityOfNBA_NpcPos[2][3] = {10134,62,53,94039121}
	tActivityOfNBA_NpcPos[2][4] = {10134,50,42,94039122}
	tActivityOfNBA_NpcPos[2][5] = {10134,59,42,94039123}
	
local tActivityOfNBA_NpcIdPos = {} --动态npc位置
	tActivityOfNBA_NpcIdPos[1] = 20472
	tActivityOfNBA_NpcIdPos[2] = 20495
	tActivityOfNBA_NpcIdPos[3] = 20496
	tActivityOfNBA_NpcIdPos[4] = 20475
	tActivityOfNBA_NpcIdPos[5] = 20476
	
local tActivityOfNBA_Pos = {}
	tActivityOfNBA_Pos[20474] = {}
	tActivityOfNBA_Pos[20474]["X"] = 325
	tActivityOfNBA_Pos[20474]["y"] = 442

	tActivityOfNBA_Pos[20496] = {}
	tActivityOfNBA_Pos[20496]["X"] = 61
	tActivityOfNBA_Pos[20496]["y"] = 53
	
	tActivityOfNBA_Pos[20472] = {}
	tActivityOfNBA_Pos[20472]["X"] = 56
	tActivityOfNBA_Pos[20472]["y"] = 48

	tActivityOfNBA_Pos[20495] = {}
	tActivityOfNBA_Pos[20495]["X"] = 51
	tActivityOfNBA_Pos[20495]["y"] = 53

	tActivityOfNBA_Pos[20475] = {}
	tActivityOfNBA_Pos[20475]["X"] = 51
	tActivityOfNBA_Pos[20475]["y"] = 43

	tActivityOfNBA_Pos[20476] = {}
	tActivityOfNBA_Pos[20476]["X"] = 59
	tActivityOfNBA_Pos[20476]["y"] = 43



local tActivityOfNBA_NpcStc = {} -- 存放动态npcid
	tActivityOfNBA_NpcStc[1] = {}
	tActivityOfNBA_NpcStc[1][1] = {}
	tActivityOfNBA_NpcStc[1][1]["EventType"] = 159
	tActivityOfNBA_NpcStc[1][1]["DataType"] = 21

	tActivityOfNBA_NpcStc[1][2] = {}
	tActivityOfNBA_NpcStc[1][2]["EventType"] = 159
	tActivityOfNBA_NpcStc[1][2]["DataType"] = 22

	tActivityOfNBA_NpcStc[1][3] = {}
	tActivityOfNBA_NpcStc[1][3]["EventType"] = 159
	tActivityOfNBA_NpcStc[1][3]["DataType"] = 23

	tActivityOfNBA_NpcStc[1][4] = {}
	tActivityOfNBA_NpcStc[1][4]["EventType"] = 159
	tActivityOfNBA_NpcStc[1][4]["DataType"] = 24

	tActivityOfNBA_NpcStc[1][5] = {}
	tActivityOfNBA_NpcStc[1][5]["EventType"] = 159
	tActivityOfNBA_NpcStc[1][5]["DataType"] = 25
	
	tActivityOfNBA_NpcStc[2] = {}
	tActivityOfNBA_NpcStc[2][1] = {}
	tActivityOfNBA_NpcStc[2][1]["EventType"] = 159
	tActivityOfNBA_NpcStc[2][1]["DataType"] = 26

	tActivityOfNBA_NpcStc[2][2] = {}
	tActivityOfNBA_NpcStc[2][2]["EventType"] = 159
	tActivityOfNBA_NpcStc[2][2]["DataType"] = 27

	tActivityOfNBA_NpcStc[2][3] = {}
	tActivityOfNBA_NpcStc[2][3]["EventType"] = 159
	tActivityOfNBA_NpcStc[2][3]["DataType"] = 28

	tActivityOfNBA_NpcStc[2][4] = {}
	tActivityOfNBA_NpcStc[2][4]["EventType"] = 159
	tActivityOfNBA_NpcStc[2][4]["DataType"] = 29

	tActivityOfNBA_NpcStc[2][5] = {}
	tActivityOfNBA_NpcStc[2][5]["EventType"] = 159
	tActivityOfNBA_NpcStc[2][5]["DataType"] = 30

----物品产出
	local tActivityOfNBA_Get = {}
	tActivityOfNBA_Get[1] = {} --正气令

	tActivityOfNBA_Get[1]["LogId"] = 12000684
	tActivityOfNBA_Get[1]["Space"] = 1
	tActivityOfNBA_Get[1]["RewardItem"] = {}
	tActivityOfNBA_Get[1]["RewardItem"][1] = {}
	tActivityOfNBA_Get[1]["RewardItem"][1]["Id"] = 3302804  --金币
	tActivityOfNBA_Get[1]["RewardItem"][1]["Attr"] = "0 150"
	tActivityOfNBA_Get[1]["RewardEffect"] = {}
	tActivityOfNBA_Get[1]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Get[1]["RewardEffect"]["Effect"] = "angelwing"

	tActivityOfNBA_Get[2] = {} --显著功勋礼包
	tActivityOfNBA_Get[2]["EventType"] = 158
	tActivityOfNBA_Get[2]["DataType"] = 46
	tActivityOfNBA_Get[2]["RewardDelay"] = 1
	tActivityOfNBA_Get[2]["RewardTimeType"] = 4
	tActivityOfNBA_Get[2]["RewardData"] = 1
	tActivityOfNBA_Get[2]["LogId"] = 12000684
	tActivityOfNBA_Get[2]["Space"] = 1
	tActivityOfNBA_Get[2]["RewardItem"] = {}
	tActivityOfNBA_Get[2]["RewardItem"][1] = {}
	tActivityOfNBA_Get[2]["RewardItem"][1]["Id"] = 3302804  --金币
	tActivityOfNBA_Get[2]["RewardItem"][1]["Attr"] = "0 300"
	tActivityOfNBA_Get[2]["RewardEffect"] = {}
	tActivityOfNBA_Get[2]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Get[2]["RewardEffect"]["Effect"] = "angelwing"
	tActivityOfNBA_Get[2]["HaveReceiveNoTip"] = 1

	tActivityOfNBA_Get[3] = {} --杀怪
	tActivityOfNBA_Get[3]["EventType"] = 158
	tActivityOfNBA_Get[3]["DataType"] = 47
	tActivityOfNBA_Get[3]["RewardDelay"] = 1
	tActivityOfNBA_Get[3]["RewardTimeType"] = 4
	tActivityOfNBA_Get[3]["RewardData"] = 100
	tActivityOfNBA_Get[3]["LogId"] = 12000684
	tActivityOfNBA_Get[3]["Space"] = 1
	tActivityOfNBA_Get[3]["RewardItem"] = {}
	tActivityOfNBA_Get[3]["RewardItem"][1] = {}
	tActivityOfNBA_Get[3]["RewardItem"][1]["Id"] = 3302804  --金币
	tActivityOfNBA_Get[3]["RewardItem"][1]["Attr"] = "0 1"
	tActivityOfNBA_Get[3]["RewardEffect"] = {}
	tActivityOfNBA_Get[3]["RewardEffect"]["SzObj"] = "self"
	tActivityOfNBA_Get[3]["RewardEffect"]["Effect"] = "angelwing"
	tActivityOfNBA_Get[3]["Random"] = 1500--1500  --概率
	tActivityOfNBA_Get[3]["HaveReceiveNoTip"] = 1
	
	
	
local tActivityOfNBA_UseBag = {}
-- VIP特训卡
	tActivityOfNBA_UseBag[3308589] = {}
	tActivityOfNBA_UseBag[3308589][1] = {}
	tActivityOfNBA_UseBag[3308589][1]["ItemChanceSum"] = 10000
	
	tActivityOfNBA_UseBag[3308589][1][1] = {}
	tActivityOfNBA_UseBag[3308589][1][1]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308589][1][1]["ItemChance"] = 1000
	tActivityOfNBA_UseBag[3308589][1][1]["Grade"] = 100
	
	tActivityOfNBA_UseBag[3308589][1][2] = {}
	tActivityOfNBA_UseBag[3308589][1][2]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308589][1][2]["ItemChance"] = 1500
	tActivityOfNBA_UseBag[3308589][1][2]["Grade"] = 200
	
	tActivityOfNBA_UseBag[3308589][1][3] = {}
	tActivityOfNBA_UseBag[3308589][1][3]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308589][1][3]["ItemChance"] = 5500
	tActivityOfNBA_UseBag[3308589][1][3]["Grade"] = 300
	
	tActivityOfNBA_UseBag[3308589][1][4] = {}
	tActivityOfNBA_UseBag[3308589][1][4]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308589][1][4]["ItemChance"] = 1500
	tActivityOfNBA_UseBag[3308589][1][4]["Grade"] = 500
	
	tActivityOfNBA_UseBag[3308589][1][5] = {}
	tActivityOfNBA_UseBag[3308589][1][5]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308589][1][5]["ItemChance"] = 500
	tActivityOfNBA_UseBag[3308589][1][5]["Grade"] = 1000
	-- 普通特训卡
	tActivityOfNBA_UseBag[3308590] = {}
	tActivityOfNBA_UseBag[3308590][1] = {}
	tActivityOfNBA_UseBag[3308590][1]["ItemChanceSum"] = 10000

	tActivityOfNBA_UseBag[3308590][1][1] = {}
	tActivityOfNBA_UseBag[3308590][1][1]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308590][1][1]["ItemChance"] = 1000
	tActivityOfNBA_UseBag[3308590][1][1]["Grade"] = 10
	
	tActivityOfNBA_UseBag[3308590][1][2] = {}
	tActivityOfNBA_UseBag[3308590][1][2]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308590][1][2]["ItemChance"] = 2000
	tActivityOfNBA_UseBag[3308590][1][2]["Grade"] = 20
	
	tActivityOfNBA_UseBag[3308590][1][3] = {}
	tActivityOfNBA_UseBag[3308590][1][3]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308590][1][3]["ItemChance"] = 5500
	tActivityOfNBA_UseBag[3308590][1][3]["Grade"] = 30
	
	tActivityOfNBA_UseBag[3308590][1][4] = {}
	tActivityOfNBA_UseBag[3308590][1][4]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308590][1][4]["ItemChance"] = 1000
	tActivityOfNBA_UseBag[3308590][1][4]["Grade"] = 50
	
	tActivityOfNBA_UseBag[3308590][1][5] = {}
	tActivityOfNBA_UseBag[3308590][1][5]["RandomItemChanceType"] = 2
	tActivityOfNBA_UseBag[3308590][1][5]["ItemChance"] = 500
	tActivityOfNBA_UseBag[3308590][1][5]["Grade"] = 100

	
	tActivityOfNBA_UseBag[3308049] = {}
	tActivityOfNBA_UseBag[3308049]["DeleteItem"] = {}
	tActivityOfNBA_UseBag[3308049]["DeleteItem"][1] = {}
	tActivityOfNBA_UseBag[3308049]["DeleteItem"][1]["Id"] = 3308049
	tActivityOfNBA_UseBag[3308049]["RewardItem"] = {}
	tActivityOfNBA_UseBag[3308049]["RewardItem"][1] = {}
	tActivityOfNBA_UseBag[3308049]["RewardItem"][1]["Id"] = 195365     --凯尔特人
	tActivityOfNBA_UseBag[3308049]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tActivityOfNBA_UseBag[3308049]["RewardEffect"]={}
	tActivityOfNBA_UseBag[3308049]["RewardEffect"]["Effect"]="angelwing"
	tActivityOfNBA_UseBag[3308049]["LogId"] = 12000689
	
	tActivityOfNBA_UseBag[3309725] = {}
	tActivityOfNBA_UseBag[3309725]["DeleteItem"] = {}
	tActivityOfNBA_UseBag[3309725]["DeleteItem"][1] = {}
	tActivityOfNBA_UseBag[3309725]["DeleteItem"][1]["Id"] = 3309725
	tActivityOfNBA_UseBag[3309725]["DeleteItem"][2] = {}
	tActivityOfNBA_UseBag[3309725]["DeleteItem"][2]["Id"] = 195365
	tActivityOfNBA_UseBag[3309725]["DeleteItem"][2]["Monopoly"] = 2
	tActivityOfNBA_UseBag[3309725]["RewardItem"] = {}
	tActivityOfNBA_UseBag[3309725]["RewardItem"][1] = {}
	tActivityOfNBA_UseBag[3309725]["RewardItem"][1]["Id"] = 195365     --勇士
	tActivityOfNBA_UseBag[3309725]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tActivityOfNBA_UseBag[3309725]["RewardEffect"]={}
	tActivityOfNBA_UseBag[3309725]["RewardEffect"]["Effect"]="angelwing"
	tActivityOfNBA_UseBag[3309725]["LogId"] = 12000689
	
local tActivityOfNBA_Log = {}
	tActivityOfNBA_Log["Over"] = "0,0,%d,%d,12000684,3,0,0"
	tActivityOfNBA_Log["Log"] = "0,0,%d,%d,12000684,2,0,0"
	tActivityOfNBA_Log["AddGrade"] = "0,0,%d,1,12000684,2[1],%d,0"
	
local tActivityOfNBA_GetStc = {}
	tActivityOfNBA_GetStc[1] = {} ---记录已集齐8件
	tActivityOfNBA_GetStc[1]["EventType"] = 176
	tActivityOfNBA_GetStc[1]["DataType"] = 35
	
	tActivityOfNBA_GetStc[2] = {} ---记录首次登入
	tActivityOfNBA_GetStc[2]["EventType"] = 176
	tActivityOfNBA_GetStc[2]["DataType"] = 38
	
	tActivityOfNBA_GetStc[3] = {} ---记录广播
	tActivityOfNBA_GetStc[3]["EventType"] = 176
	tActivityOfNBA_GetStc[3]["DataType"] = 59
	
local tActivityOfNBA_CoatId = {}
	tActivityOfNBA_CoatId[1] = {195175,195185,195195,195205,194695,194705,194715,194725}

local tActivityOfNBA_EmoneyLog = {}
	tActivityOfNBA_EmoneyLog[1] = "350	20572	0	0	1	"  ----组建球队（没用到）
	tActivityOfNBA_EmoneyLog[2] = "350	20573	0	0	1	"  ----获得球队花名册
	tActivityOfNBA_EmoneyLog[3] = "350	20574	0	0	%d	"  ----获得排行榜奖励
	tActivityOfNBA_EmoneyLog[4] = "350	20575	0	0	1	"  ----获得战斗力奖励

----------------------------------npc逻辑部分---------------------------------------------

function ActivityOfNBA_Go(nNpcId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosx = tActivityOfNBA_Pos[nNpcId]["X"]
	local nPosy = tActivityOfNBA_Pos[nNpcId]["y"]
	if nNpcId == 20495 then
		nNpcId = 0
	end
	if Sys_GotoSomeWhere(nPosx,nPosy,nMapId,nNpcId) then
		if  nNpcId == 0 then
			LinkNpcGossipFunc_New(20495,"1-1")
		end
	end
end
function ActivityOfNBA_Goto(nNpcId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end
	local nUserId = Get_UserId()
	if nNpcId == 20448 then
		if Get_UserTeamNumbers(nUserId) > 0 then  --组队无法进入副本
			Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NoGoto"])
			return
		end
		User_EnterInstance(tActivityOfNBA_Data["Instance"])     --进副本
		ActivityOfNBA_GotoPlay(nNpcId)
		return
	end
	local nMapId = tActivityOfNBA_Data["MapId"]
	local nPosX = tActivityOfNBA_Data["PosX"]
	local nPosY = tActivityOfNBA_Data["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1)
end

function ActivityOfNBA_GotoPlay(nNpcId)
	--检测掩码有哪些npc
	local nUserId = Get_UserId()
	for i = 1, 2 do
		for j = 1,5 do
			local nEvent = tActivityOfNBA_NpcStc[i][j]["EventType"]
			local nType = tActivityOfNBA_NpcStc[i][j]["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if i == 1 and (nData == 0 or nData == nil) then
				Task_SetStatistic(nEvent,nType,tActivityOfNBA_NpcFace[j],1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			end
			local nNpcFace = Get_UserStatisticValue(nEvent,nType,nUserId)
			if nNpcFace ~= 0 then
				local sName = tActivityOfNBA_Text["Npc"][nNpcFace]
				local nMapId = Get_UserMapId(nUserId)
				local nPosX = tActivityOfNBA_NpcPos[i][j][2]
				local nPosY = tActivityOfNBA_NpcPos[i][j][3]
				local nAction = tActivityOfNBA_NpcPos[i][j][4]
				Npc_CreateDynaNpc(sName,2,1,nNpcFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nAction)
			end
		end
	end
end

--取掩码值
function ActivityOfNBA_GetStc(nNum,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tActivityOfNBA_Stc[nNum]["EventType"]
	local nType = tActivityOfNBA_Stc[nNum]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end
--设置掩码
function ActivityOfNBA_SetStc(nNum,nData)
	local nUserId = Get_UserId()
	local nEvent = tActivityOfNBA_Stc[nNum]["EventType"]
	local nType = tActivityOfNBA_Stc[nNum]["DataType"]
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end
--取动态码的值
function ActivityOfNBA_GetGlob(nNum)
	local nSysDyGlobId = tActivityOfNBA_GlobId[nNum]
	local nData = Get_SysDynaGlobalData(nSysDyGlobId,1)
	return nData
end

--建球队
function ActivityOfNBA_Organize(nNpcId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end
--判断是否已建过球队
	local nUserId = Get_UserId()
	local nEventType = tActivityOfNBA_Stc["Build"]["EventType"]
	local DataType = tActivityOfNBA_Stc["Build"]["DataType"]
	local nData = tActivityOfNBA_Stc["Build"]["Data"]
	if Task_ChkStcValue(nEventType,DataType,">=",nData,nUserId) then
		return
	end
--判断背包空间
	local nSpace = tActivityOfNBA_Reward[1]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--打掩码
	Task_SetStatistic(nEventType,DataType,nData,1,nUserId)
	Task_SetStcTimestamp(nEventType,DataType,0,nUserId)
	RewardTemplate_UseItem(tActivityOfNBA_Reward[1])
	Sys_SaveEmoneyBuy(tActivityOfNBA_EmoneyLog[2])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
--补领球队花名册
function ActivityOfNBA_Replace(nNpcId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end
	local nUserId = Get_UserId()
	local nEventType = tActivityOfNBA_Stc["Build"]["EventType"]
	local DataType = tActivityOfNBA_Stc["Build"]["DataType"]
	local nData = tActivityOfNBA_Stc["Build"]["Data"]
	if Task_ChkStcValue(nEventType,DataType,"<",nData,nUserId) then
		return
	end
	local nItemId = tActivityOfNBA_Reward[1]["RewardItem"][1]["Id"]
	if Item_ChkItem(nItemId) then
		return
	end
--判断背包空间
	local nSpace = tActivityOfNBA_Reward[4]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	RewardTemplate_UseItem(tActivityOfNBA_Reward[4])
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end


---获得物品
function ActivityOfNBA_RewardPowerItem(nNpcId,nIndex,nOldMapId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	local nMapId = Get_UserMapId()
	if nMapId ~= nOldMapId then
		return
	end
	local nNum = ActivityOfNBA_GetStc("Reward") + 1
	-- if nNum >= 24 then
		-- LinkNpcGossipFunc_New(nNpcId,"5-1")
		-- return
	-- end
	local nUserScore = ActivityOfNBA_GetStc("Grade")
	--大于21000分 增加1000分 给兑换道具*1
	
	local tTab,nSpace = ActivityOfNBA_FirstReward(nUserScore,nIndex)
	if nUserScore >= tActivityOfNBA_Score[11]["Score"] then
		nSpace = nSpace + 1
	end
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- if nUserScore >= tActivityOfNBA_Score[11]["Score"] and nNum >= 11 then
		-- ActivityOfNBA_AddExtraReward(nNum,nUserScore)
		-- return
	-- end
	local nScore = 0
	local sText_1 = ""
	if nNum <= 11 then
		nScore = tActivityOfNBA_Score[nNum]["Score"]
		sText_1 = tActivityOfNBA_Text["MsgBox"][nScore]
	else
		local nAddScore = tActivityOfNBA_Score[11]["AddScore"]
	--总的分数
		nScore = (nNum - tActivityOfNBA_Score[11]["Num"])*nAddScore + tActivityOfNBA_Score[11]["Score"]
		sText_1 = tActivityOfNBA_Text["MsgBox"][23000]
	end

	if nUserScore < nScore then
		local sText421 = string.format(tActivityOfNBA_Text[20471]["Text413"],nScore,sText_1)
		Sys_DialogText(tActivityOfNBA_Text[20471]["Text412"])
		Sys_DialogText(sText421)
		Sys_DialogOption(tActivityOfNBA_Text[20471]["Option34"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
--判断背包空间
	-- local tTab,nSpace = ActivityOfNBA_FirstReward(nUserScore,nIndex)
	-- if not User_CheckLeftSpace(nSpace) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	for a,b in pairs(tTab) do
		local nUserId = Get_UserId()
		local nEvent = tActivityOfNBA_Stc["Reward"]["EventType"]
		local nType = tActivityOfNBA_Stc["Reward"]["DataType"]
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)

		if b > 11 then
			RewardTemplate_UseItem(tActivityOfNBA_Score[11])
		else
			RewardTemplate_UseItem(tActivityOfNBA_Score[b])
		end
		Sys_SaveEmoneyBuy(tActivityOfNBA_EmoneyLog[4])  --emoneylog
	end
	-- if ActivityOfNBA_GetStc("Reward") == 23 then
		-- LinkNpcGossipFunc_New(nNpcId,"3-1")
		-- return
	-- end

	local nNextNum = ActivityOfNBA_GetStc("Reward") + 1
	local nNextScore = 0
	local sStr = ""
	if nNextNum > 11 then
		nNextScore = (nNextNum -11) * tActivityOfNBA_Score[11]["AddScore"] + tActivityOfNBA_Score[11]["Score"]
		sStr = tActivityOfNBA_Text["MsgBox"][23000]
	else
		nNextScore = tActivityOfNBA_Score[nNextNum]["Score"]
		sStr = tActivityOfNBA_Text["MsgBox"][nNextScore]
	end

	local sText432 = string.format(tActivityOfNBA_Text[20471]["Text415"],nNextScore,sStr)
	Sys_DialogText(tActivityOfNBA_Text[20471]["Text414"])
	Sys_DialogText(sText432)
	Sys_DialogOption(tActivityOfNBA_Text[20471]["Option35"],"</F>LinkNpcGossipFunc_New</N>" .. 20471 .. "</S>" .. "1-2")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end
-- 大于21000分 增加1000分 给兑换道具*1
function ActivityOfNBA_AddExtraReward(nNum,nUserScore)
	local nAddScore = tActivityOfNBA_Score[11]["AddScore"]
	--总的分数
	local nScore = (nNum - tActivityOfNBA_Score[11]["Num"])*nAddScore + tActivityOfNBA_Score[11]["Score"]
	if nUserScore < nScore then
		local sText421 = string.format(tActivityOfNBA_Text[20471]["Text413"],nScore,tActivityOfNBA_Text["MsgBox"][23000])
		Sys_DialogText(tActivityOfNBA_Text[20471]["Text412"])
		Sys_DialogOption(tActivityOfNBA_Text[20471]["Option34"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	if not User_CheckLeftSpace(tActivityOfNBA_Score[11]["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tActivityOfNBA_Stc["Reward"]["EventType"]
	local nType = tActivityOfNBA_Stc["Reward"]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_UseItem(tActivityOfNBA_Score[11])
	
	
	-- local nNextNum = ActivityOfNBA_GetStc("Reward") + 1
	local nNextScore = nScore + tActivityOfNBA_Score[11]["Score"]
	local sStr = tActivityOfNBA_Text["MsgBox"][23000]
	local sText432 = string.format(tActivityOfNBA_Text[20471]["Text415"],nNextScore,sStr)
	Sys_DialogText(tActivityOfNBA_Text[20471]["Text414"])
	Sys_DialogText(sText432)
	Sys_DialogOption(tActivityOfNBA_Text[20471]["Option35"],"</F>LinkNpcGossipFunc_New</N>" .. 20471 .. "</S>" .. "1-2")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function ActivityOfNBA_FirstReward(nUserScore,nIndex)
	local nNum = ActivityOfNBA_GetStc("Reward") + 1
	local nScore = 0
	local nSpace = 0
	local tTab = {}
	local nTimes = 11
	local nAddGrade = tActivityOfNBA_Score[11]["Score"]
	if nUserScore >= nAddGrade then
		local na,nb = math.modf((nUserScore - nAddGrade)/tActivityOfNBA_Score[11]["AddScore"])
		nTimes = nTimes + na
	end
	
	for i = nNum,nTimes do
		if i > 11 then
			nScore = nAddGrade + (i-11)*tActivityOfNBA_Score[11]["AddScore"]
			
		else
			nScore = tActivityOfNBA_Score[i]["Score"]
		end
		
		if nUserScore >= nScore then
		
			table.insert(tTab,i)
			if i > 11 then
				nSpace = nSpace + 1
			else
				nSpace = nSpace + tActivityOfNBA_Score[nNum]["Space"]
			end
			if nIndex == 1 then
				break
			end
		end
	end
	return tTab,nSpace
end

---查看排行榜
function ActivityOfNBA_LookRank(nNpcId)
	Sys_DialogText(tActivityOfNBA_Text[20448]["Text511"])
	Sys_DialogText(tActivityOfNBA_Text[20448]["Text512"])
	Sys_DialogText(tActivityOfNBA_Text[20448]["Text513"])
	local nFlag = 0  --标记是否有上榜  榜上第几名

	for i = 1,10 do
		local nGlobId = tActivityOfNBA_GlobId[i]
		local sUserName = Get_SysDynaGlobalDataStr1(nGlobId)
		local sName = Get_SysDynaGlobalDataStr2(nGlobId)
		local nTotalNum = Get_SysDynaGlobalData1(nGlobId)
		local nRankUserId = Get_SysDynaGlobalData2(nGlobId)
		local nUserId = Get_UserId()
		local sUserName1 = ""
		if nUserId == nRankUserId then
			nFlag = i
		end
		if nTotalNum == 0 or nTotalNum == nil then
			nTotalNum = "--"
			sUserName1 = "--"
			sName = "--"
			 
		else
			sUserName1 = sName .. tActivityOfNBA_Text["MsgBox"]["Ball"]
			
		end
		local sIndex = Get_SysDynaGlobalDataStr3(nGlobId)
		if  sIndex == "1" then
			sUserName1 = sName .. string.format(tActivityOfNBA_Text[20448]["Text517"],sUserName)
		end
		sUserName1 = string.gsub(sUserName1, "%>", " ")
		sUserName1 = string.gsub(sUserName1, "%<", " ")
		local sRewardItem = tActivityOfNBA_Text[20448]["Text520"][i]
		local sText514 =""
		if i == 10 then 
			sText514 = tActivityOfNBA_Text[20472][3] .. tActivityOfNBA_Text[20448]["Text520"][i] .. Sys_Alignment(nTotalNum,12,sUserName1,36) .. "\n"
		elseif i >= 4 then
			sText514 = tActivityOfNBA_Text[20472][2] .. tActivityOfNBA_Text[20448]["Text520"][i] .. Sys_Alignment(nTotalNum,12,sUserName1,36) .. "\n"
		else
			sText514 = tActivityOfNBA_Text[20472][2] .. tActivityOfNBA_Text[20448]["Text520"][i] .. Sys_Alignment(nTotalNum,11,sUserName1,35) .. "\n"
		end 
		Sys_DialogText(sText514)

	end
	local nNumber1 = 0  --标示有没有选项出来
	Sys_DialogText(tActivityOfNBA_Text[20448]["Text512"])
	local nTotal = ActivityOfNBA_GetStc("Grade")  --玩家最高实力评分
	local sText516 = string.format(tActivityOfNBA_Text[20448]["Text516"],nTotal)
	Sys_DialogText(sText516)
	
	if Sys_ChkFullTime(tActivityOfNBA_Data["Aft_Time"]) and (nFlag > 0) and (ActivityOfNBA_GetStc("Rank") <= 0) then
		Sys_DialogOption(tActivityOfNBA_Text[20448]["Option53"],"</F>ActivityOfNBA_RewardRank</N>" .. nNpcId .. "</N>" .. nFlag)
		nNumber1 = nNumber1 + 1
	end
	if ActivityOfNBA_GetStc("Name") <= 0 and nFlag > 0 then
		Sys_DialogOption(tActivityOfNBA_Text[20448]["Option60"],"</F>ActivityOfNBA_RankName</N>"..nNpcId.."</N>"..nFlag)
		nNumber1 = nNumber1 + 1
	end
	-- Sys_DialogOption(tActivityOfNBA_Text[20448]["Option51"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "5-1")
	if nNumber1 == 0 then
		local sIndex = "1-2"
		if Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
			sIndex = "1-4"
		end
		Sys_DialogOption(tActivityOfNBA_Text[20448]["Option52"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. sIndex)
	end
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function ActivityOfNBA_RankName(nNpcId,nFlag)
	Sys_DialogText(tActivityOfNBA_Text[20448]["Text711"])
	Sys_DialogOptEdit("请输入",32,"ActivityOfNBA_ExchangeRankName</N>" .. nNpcId .. "</N>" .. nFlag)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
function ActivityOfNBA_LookWeb()
	User_SendWebDialog(tActivityOfNBA_Data["Web"])
end
---修改排行榜前十的名字
function ActivityOfNBA_ExchangeRankName(nNpcId,nFlag)
	local nNum = ActivityOfNBA_GetStc("Name")
	if nNum >= 1 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NoName"])--出提示
		return
	end
	if nFlag <= 0 then
		return
	end
	local nSysDyGlobId = tActivityOfNBA_GlobId[nFlag]
	local sName = Get_SysAcceptStr()
	--关键字屏蔽
	for a,b in pairs(tActivityOfNBA_Text["Name"]) do
		if string.find(sName,b) ~= nil and string.find(sName,b) ~= 0 then
			Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotName2"])
			return
		end
	end
	local nNameNum = string.len(sName)
	--名字太长
	if	nNameNum > 10 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotName1"])
		return
	end
	 ActivityOfNBA_SetStc("Name",1)  --打掩码
	Sys_SetSynaGlobalDataStr1(nSysDyGlobId,sName)
	Sys_SetSynaGlobalDataStr3(nSysDyGlobId,"1")
	Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["Name"])
	
end

function ActivityOfNBA_RewardRank(nNpcId,nFlag)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Aft_Time"]) then
		return
	end
	if nFlag <= 0 or nFlag > 10 then
		return
	end
	if ActivityOfNBA_GetStc("Rank") > 0 then
		return
	end
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		local sSpace = string.format(tActivityOfNBA_Text["MsgBox"]["NoSpace"],1)
		Sys_MsgBox(sSpace)
		return
	end
	ActivityOfNBA_SetStc("Rank",1)
	RewardTemplate_UseItem(tActivityOfNBA_Reward["Rank"][nFlag])
	local nStrength = tActivityOfNBA_Data["Num"][nFlag]
	local sText551 = string.format(tActivityOfNBA_Text[20448]["Text552"],nStrength)
	if nFlag == 1 then
		sText551 = string.format(tActivityOfNBA_Text[20448]["Text551"],nFlag,nStrength)
	end
	tNpcGossip[20448]["Text531"] = sText551
	LinkNpcGossipFunc_New(nNpcId,"5-2")
	local sUserName2 = Get_SysDynaGlobalDataStr2(tActivityOfNBA_GlobId[nFlag])
	local sUserName1 = Get_SysDynaGlobalDataStr1(tActivityOfNBA_GlobId[nFlag])
	local sBroad = string.format(tActivityOfNBA_Text["Rank"][nFlag],sUserName2,sUserName1)
	Sys_SystemBroadcast(sBroad)  --全服广播
	local sLog = string.format(tActivityOfNBA_EmoneyLog[3],nFlag)
	Sys_SaveEmoneyBuy(sLog)  --emoneylog
end


---------4个npcx
function ActivityOfNBA_NBAStar()  -- 等级不足的对白
	local nNpcId = Get_NpcId()
	tNpcGossip[20449]["Text131"] = tActivityOfNBA_Text[nNpcId]["Text131"]
	if not Sys_ChkFullTime(tActivityOfNBA_Data["OneDay_Time"]) then
		tNpcGossip[20449]["Text132"] = ""
		tNpcGossip[20449]["Text133"] = ""
	else
		local nGlobId = tActivityOfNBA_GlobId["AftNum"]
		local nNum = Get_SysDynaGlobalData(nGlobId,tActivityOfNBA_NpcId[nNpcId]) 
		local AftNpcId = Get_SysDynaGlobalData(nGlobId,5) 
		for a,b in pairs(tActivityOfNBA_NpcId) do
			if b == AftNpcId then
				AftNpcId = a
			end
		end
		local sBallName = ""
		if AftNpcId == 0 or AftNpcId == nil then
			sBallName = tActivityOfNBA_Text[20472][1]
		else
			sBallName = tActivityOfNBA_Text["MsgBox"][AftNpcId]
		end
		tNpcGossip[20449]["Text133"] = string.format(tActivityOfNBA_Text[nNpcId]["Text133"],nNum,sBallName)
	end
end
function ActivityOfNBA_NBAStarText()
	local nNpcId = Get_NpcId()
	local nNum = math.random(1,3)
	tNpcGossip[20449]["Text141"] = tActivityOfNBA_Text[nNpcId]["Text141"][nNum]
	tNpcGossip[20449]["Option14"] = tActivityOfNBA_Text[nNpcId]["Option14"]
	tNpcGossip[20449]["OptionFunc14"] = "ActivityOfNBA_SuportStar</N>" .. nNpcId
end
--支持NBA巨星
function ActivityOfNBA_SuportStar(nNpcId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end
	local nEventType = tActivityOfNBA_Stc["Support"]["EventType"]
	local DataType = tActivityOfNBA_Stc["Support"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,DataType)
	local nUserId = Get_UserId()
	local nSysDyGlobId = tActivityOfNBA_GlobId["AftNum"]
	local nAftNpc = Get_SysDynaGlobalData(nSysDyGlobId,5)
	-- local nNum = tActivityOfNBA_NpcId[nAftNpc]
	local nIndex = 1
	if Task_ChkStcValue(nEventType,DataType,">",0,nUserId)  then
		if  Sys_ParseNumbersContain(tActivityOfNBA_Num[nAftNpc],nValue) then  --判断昨天支持的巨星是不是最后一名
			nIndex = 2  --是最后一名
		end
		if Task_StcInterval(nEventType,DataType,1,4) then  --隔天清零
			Task_SetStatistic(nEventType,DataType,0,1,nUserId)
			Task_SetStcTimestamp(nEventType,DataType,0,nUserId)
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end
	
--判断背包空间
	local nSpace = tActivityOfNBA_Reward[2]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

--打掩码
	local nFlag = tActivityOfNBA_NpcId[nNpcId]  --表示第几个npc
	Task_SetStatistic(nEventType,DataType,tActivityOfNBA_Num[nFlag],1,0) 
	Task_SetStcTimestamp(nEventType,DataType,0)
	local nGlobId = tActivityOfNBA_GlobId["NowNum"]
	local nGrade = Get_SysDynaGlobalData(nGlobId,nFlag) + 1
	Sys_SetSynaGlobalData(nGlobId,nFlag,nGrade)
	RewardTemplate_UseItem(tActivityOfNBA_Reward[nIndex+1])
	local sText231 = string.format(tActivityOfNBA_Text[nNpcId]["Text231"],tActivityOfNBA_Reward[nIndex+1]["Num"])
	Sys_DialogText(sText231)
	Sys_DialogOption(tActivityOfNBA_Text[20452]["Option23"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

---隔天支持的npc动态码操作
function ActivityOfNBA_Clear()
	--不在活动时间内
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	if Sys_ChkDayTime(tActivityOfNBA_Data["ClearTime"]) then
		local sDataStr5 = Get_SysDynaGlobalDataStr5(tActivityOfNBA_GlobId["NowNum"])
		if sDataStr5 == "1" then
			return
		end
		local nGlobId = tActivityOfNBA_GlobId["AftNum"]
		local tTab = {}
		for i = 1,4 do
			local nNum = Get_SysDynaGlobalData(tActivityOfNBA_GlobId["NowNum"],i) 
			tTab[i] = {}
			tTab[i]["Flag"] = i
			tTab[i]["Num"] = nNum
			Sys_SetSynaGlobalData(nGlobId,i,nNum)
			Sys_SetSynaGlobalData(tActivityOfNBA_GlobId["NowNum"],i,0)
		end
		table.sort(tTab,function (a,b)
			if a.Num == b.Num then
				return a.Num < b.Num   
			end
			return a.Num > b.Num  
		end) 
		Sys_SetSynaGlobalData(nGlobId,5,tTab[4]["Flag"])
		Sys_SetSynaGlobalDataStr5(tActivityOfNBA_GlobId["NowNum"],"1")
	else
		Sys_SetSynaGlobalDataStr5(tActivityOfNBA_GlobId["NowNum"],"0")
	end
end
-------------篮坛金哨 20471
function ActivityOfNBA_LookSquad(nNpcId,nItemId)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	local sText1 = tActivityOfNBA_Text[20471]["Text113"]
	local sText2 = tActivityOfNBA_Text[20471]["Text114"]
	local tTab = ActivityOfNBA_FindSquad(1,10)
	local tTab1 = {}  --正选球员
	local tTab2 = {}  --替补
	for i = 1,10 do
		local nItemId = tTab[i]
		local sItemName = ""
		if nItemId == nil or nItemId == 0 then
			sItemName = "--"
		else
			-- sItemName = Get_ItemtypeName(nItemId)
			-- sItemName = string.sub(sItemName,5,-1)
			sItemName = tActivityOfNBA_Text[20472][nItemId]
		end
		-- sItemName = sItemName .. Sys_AlignmentSpace(3)
		if i > 5 then
			table.insert(tTab2,sItemName)
		else
			table.insert(tTab1,sItemName)
		end
	end
		-- sText113 = string.format(tActivityOfNBA_Text[20471]["Text113"],tTab1[1],tTab1[2],tTab1[3],tTab1[4],tTab1[5])
		-- sText114 = string.format(tActivityOfNBA_Text[20471]["Text114"],tTab2[1],tTab2[2],tTab2[3],tTab2[4],tTab2[5])
	local sText113 = Sys_Alignment(sText1,4,tTab1[1],20,tTab1[2],35) .. "\n"
	local sText118 = Sys_Alignment(tTab1[3],4,tTab1[4],20,tTab1[5],35) .. "\n"
	local sText114 = Sys_Alignment(sText2,4,tTab2[1],20,tTab2[2],35) .. "\n"
	local sText119 = Sys_Alignment(tTab2[3],4,tTab2[4],20,tTab2[5],35) .. "\n"

	
	
	if nNpcId == 20471 then
		tNpcGossip[nNpcId]["Text113"] = sText113
		tNpcGossip[nNpcId]["Text114"] = sText114
		tNpcGossip[nNpcId]["Text118"] = sText118
		tNpcGossip[nNpcId]["Text119"] = sText119
		local nTal = ActivityOfNBA_GetStc("Score") --玩家实时实力评分
		tNpcGossip[nNpcId]["Text116"] = string.format(tActivityOfNBA_Text[20471]["Text116"],nTal)

	else
		Sys_DialogText(tActivityOfNBA_Text[20472]["Text311"])
		Sys_DialogText(sText113)
		Sys_DialogText(sText118)
		Sys_DialogText(sText114)
		Sys_DialogText(sText119)
		Sys_DialogText(tActivityOfNBA_Text[20472]["Text311"])
		Sys_DialogOption(tActivityOfNBA_Text[20472]["Option31"],"</F>ActivityOfNBA_CardText</N>" .. nNpcId.. "</N>" .. nItemId .. "</N>" .. 1)
		Sys_DialogOption(tActivityOfNBA_Text[20472]["Option32"],"</F>ActivityOfNBA_CardText</N>" .. nNpcId.. "</N>" .. nItemId .. "</N>" .. 2)
		Sys_DialogOption(tActivityOfNBA_Text[20472]["Option33"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end

end

function ActivityOfNBA_CardText(nNpcId,nItemId1,nFlag) --nItemId1 替换的物品  nItemId2 被替换的物品 
	Sys_DialogText(tActivityOfNBA_Text[20472]["Text411"][nFlag])
	local tTab = ActivityOfNBA_FindSquad(1,5)
	if nFlag == 2 then
		tTab = ActivityOfNBA_FindSquad(6,10)
	end
	if #tTab ~= 0 then
		for a,v in pairs(tTab) do
			-- table.insert(tNpcGossip[20472]["tOption5-1"],(40 + a))
			local sItemName = Get_ItemtypeName(v)
			local sStr = string.format(tActivityOfNBA_Text[20472]["Option20"],sItemName)
			Sys_DialogOption(sStr,"</F>ActivityOfNBA_ChangeCard</N>" .. nNpcId.. "</N>" .. nItemId1 .. "</N>" .. v)
		end
	end
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end

---查找玩家正选球员
function ActivityOfNBA_FindSquad(nNum1,nNum2)
	local tTab = {}
	local nUserId = Get_UserId()
	for i=nNum1,nNum2 do
		local nEventType = tActivityOfNBA_Stc["Player"][i]["EventType"]
		local nDataType = tActivityOfNBA_Stc["Player"][i]["DataType"]
		local nItemId = Get_UserStatisticValue(nEventType,nDataType,nUserId)
		table.insert(tTab,nItemId)
	end
	return tTab
end


---检测有没有这张卡片
function ActivityOfNBA_ChkCard(nItemId)
	if Item_ChkItem(nItemId)or (NBAItemPart_WhichCardHave(nItemId) == 1) then  --球队花名册
		return true
	end
end

function ActivityOfNBA_Chose(nNpcId,nNum,nFlag)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		return 
	end
	local nUserId = Get_UserId()
	local nEventType = tActivityOfNBA_Stc["Player"][nNum]["EventType"]
	local nDataType = tActivityOfNBA_Stc["Player"][nNum]["DataType"]
	local nItemId = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	local sStr = tActivityOfNBA_Text[20472][1]

	if nItemId ~= 0 and nItemId ~= nil then
		sStr = tActivityOfNBA_Text[20472][nItemId]
	end
	local nScore = 0
	for a,b in pairs(tActivityOfNBA_ItemCard) do 
		if nItemId == b["ItemId"] then
			nScore = b["ItemGrade"]
		end
	end
	local sText1 = tActivityOfNBA_Text[20472]["Text121"]
	local nNumber = nNum
	if nNum > 5 then
		nNumber = nNum - 5
		nScore = nScore/2
		sText1 = tActivityOfNBA_Text[20472]["Text122"]
	end
	local sText2 = string.format(sText1,nNumber,sStr,nScore)

	local sText = "tOption2-1"
	if nFlag ==300 then
		sText = "tOption3-1"
		tNpcGossip[nNpcId]["Text311"] = sText2
	else
		tNpcGossip[nNpcId]["Text211"] = sText2
	end

	local nMapId = Get_UserMapId()
	for i = 1,nItemNum  do

		local nScore = 0
		local nItemId = tTab[i]
		for a,b in pairs(tActivityOfNBA_ItemCard) do 
			if nItemId == b["ItemId"] then
				nScore = b["ItemGrade"]
			end
		end
		local sItemName = string.format(tActivityOfNBA_Text[20472][nItemId] .. "（%d）",nScore)
		
		tNpcGossip[nNpcId]["Option" .. nFlag + i] = sItemName
		tNpcGossip[nNpcId]["OptionFunc" .. nFlag + i] = "ActivityOfNBA_AddUserScore</N>" .. nItemId .. "</N>" .. nNum .. "</N>" .. nNpcId .. "</N>" .. nMapId
	end
	for i = 1 + nItemNum,36 do
		tNpcGossip[nNpcId]["Option" .. nFlag + i] = ""
	
	end

end


---检测玩家有多少张卡
function ActivityOfNBA_ChkUserCard()
	local tTab = {}
	for a,b in pairs(tActivityOfNBA_ItemCard) do
		local nItem = b["ItemId"]
		if  ActivityOfNBA_ChkCard(nItem) and (not (ActivityOfNBA_ChkGotoCard(nItem))) then
			table.insert(tTab,nItem)
		end
	end
	return tTab
end

function ActivityOfNBA_ChkGotoCard(nItem)
	local nUserId = Get_UserId()
	for i = 1,10 do
		local nEventType = tActivityOfNBA_Stc["Player"][i]["EventType"]
		local nDataType = tActivityOfNBA_Stc["Player"][i]["DataType"]
		local nItemId = Get_UserStatisticValue(nEventType,nDataType,nUserId)
		if nItemId == nItem then
			return true
		end
	end
end

----给玩家加分数
function ActivityOfNBA_AddUserScore(nItemId,nNum,nNpcId,nMapId,nFlag)
	local nNowMapId = Get_UserMapId()
	if nMapId ~= nNowMapId then
		return
	end
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end

	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end
	-- if not Item_ChkItem(nItemId) then
		-- return
	-- end
	if not ActivityOfNBA_ChkCard(nItemId) then
		local sItem = Get_ItemtypeName(nItemId)
		Sys_MsgBox(string.format(tActivityOfNBA_Text["MsgBox"]["NotCard"],sItem))
		return
	end
	local nIndex = 0
	local nEvent = tActivityOfNBA_Stc["Player"][nNum]["EventType"]
	local nType = tActivityOfNBA_Stc["Player"][nNum]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData ~= 0  then
		nIndex = 1
	end
	if nIndex == 0 then
		Task_SetStatistic(nEvent,nType,nItemId,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		local nItemGrade = ActivityOfNBA_ItemGrade(nItemId)
		ActivityOfNBA_AddGrade(nItemId,nItemGrade,nNum)
		local sItemName = tActivityOfNBA_Text[20472][nItemId]
		local sStr = string.format(tActivityOfNBA_Text["MsgBox"]["Sucess"],sItemName)
		--一键上阵出2005 提示
		if nFlag ~= nil then
			User_TalkChannel2005(sStr)
		else
			Sys_MsgBox(sStr)
		end
		
	else  --替换卡片
		local nEvent1 = tActivityOfNBA_Stc["Player"][nNum]["EventType"]
		local nType1 = tActivityOfNBA_Stc["Player"][nNum]["DataType"]
		local nItemId2 = Get_UserStatisticValue(nEvent1,nType1)
		 ActivityOfNBA_ChangeCard(nNpcId,nItemId,nItemId2,nNum)  --减掉卡片的分数
		
	end
	
	---分数到出2005提示
	local nUserTime = ActivityOfNBA_GetStc("Reward") + 1
	local nNextScore = 0
	if nUserTime >= 11 then
		nNextScore = (nUserTime - 11)*1000 + 21000
	else
		nNextScore = tActivityOfNBA_Score[nUserTime]["Score"]
	end

	local nUserScore = ActivityOfNBA_GetStc("Grade")
	if nUserScore >= nNextScore then
		local sText = string.format(tActivityOfNBA_Text["MsgBox"]["Talk"],nNextScore)
		User_TalkChannel2005(sText)
	end
		User_EffectAdd("self","angelwing")

end



function ActivityOfNBA_ChangeCard(nNpcId,nItemId1,nItemId2,nNum)  --减掉卡片的分数
	local nItemGrade1 = ActivityOfNBA_ItemGrade(nItemId2) + ActivityOfNBA_AddExtra(nItemId2) + ActivityOfNBA_AddEquip(nItemId2)
	if nNum > 5 then
		nItemGrade1 = ActivityOfNBA_ItemGrade(nItemId2)/2 + ActivityOfNBA_AddExtra(nItemId2) + ActivityOfNBA_AddEquip(nItemId2)/2
	end
	local nUserId = Get_UserId()
	local nEvent = tActivityOfNBA_Stc["Score"]["EventType"]
	local nType = tActivityOfNBA_Stc["Score"]["DataType"]
	local nScore1 = Get_UserStatisticValue(nEvent,nType,nUserId) - nItemGrade1
	Task_SetStatistic(nEvent,nType,nScore1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

	local nEvent1 = tActivityOfNBA_Stc["Player"][nNum]["EventType"]
	local nType1 = tActivityOfNBA_Stc["Player"][nNum]["DataType"]
	Task_SetStatistic(nEvent1,nType1,nItemId1,1)
	Task_SetStcTimestamp(nEvent1,nType1,0)

	--加分数
	local  nItemGrade2 = ActivityOfNBA_ItemGrade(nItemId1)
	ActivityOfNBA_AddGrade(nItemId1,nItemGrade2,nNum,nItemId2)
	local sItemName = tActivityOfNBA_Text[20472][nItemId1]
	local sStr = string.format(tActivityOfNBA_Text["MsgBox"]["Sucess"],sItemName)
	Sys_MsgBox(sStr)

end

---判断是否有装备
function ActivityOfNBA_AddEquip(nItemId)
	local nGrade = 0
	local nEvent = tActivityOfNBA_Stc["Equip"]["EventType"]
	local nType = tActivityOfNBA_Stc["Equip"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	for i =1,#tActivityOfNBA_Equip do 
		for k,v in pairs(tActivityOfNBA_Equip[i]) do
			if k == nItemId and Sys_ParseNumbersContain(v[1],nValue) then
				nGrade =  nGrade + v[2]
				
			end
		end
	end
		
	return nGrade
end

function ActivityOfNBA_ItemGrade(nItemId)
	local nItemGrade = 0

	for a,b in pairs(tActivityOfNBA_ItemCard) do
		if nItemId == b["ItemId"] then
			nItemGrade = b["ItemGrade"]
		end
	end
	return nItemGrade
end
---加分数
function ActivityOfNBA_AddGrade(nItemId,nItemGrade,nNum,nItemId2)
	local nUserId = Get_UserId()
	local nEvent = tActivityOfNBA_Stc["Score"]["EventType"]
	local nType = tActivityOfNBA_Stc["Score"]["DataType"]

	 --兄弟卡片加分数
	local nItemGrade1 = nItemGrade + ActivityOfNBA_AddExtra(nItemId) + ActivityOfNBA_AddEquip(nItemId)
	--替补分数减半
	if nNum > 5 then
		nItemGrade1 = nItemGrade/2 + ActivityOfNBA_AddExtra(nItemId) + ActivityOfNBA_AddEquip(nItemId)/2
	end
	local nUserData = Get_UserStatisticValue(nEvent,nType,nUserId) + nItemGrade1
	Task_SetStatistic(nEvent,nType,nUserData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	local nMaxNum = ActivityOfNBA_GetStc("Score")
	if nMaxNum > ActivityOfNBA_GetStc("Grade") then
		ActivityOfNBA_SetStc("Grade",nMaxNum)
		ActivityOfNBA_Broad()
	end
	ActivityOfNBA_RankingList()  --排行
	
--移动npc
	if nNum > 5 then
		return
	end
	local nEvent1 = tActivityOfNBA_NpcStc[1][nNum]["EventType"]
	local nType1 = tActivityOfNBA_NpcStc[1][nNum]["DataType"]
	local nData = Get_UserStatisticValue(nEvent1,nType1,nUserId)
	local sNpcName = tActivityOfNBA_Text["Npc"][nData]
	local nMapId = Get_UserMapId(nUserId)
--删除npc
	Npc_DelDynaNpc(nMapId,"name",sNpcName)
	
	if nItemId2 ~= 0 and  nItemId2 ~= nil then 
		local nNpcFace = tActivityOfNBA_NpcFace[nItemId2]
		local sNpcName1 = tActivityOfNBA_Text["Npc"][nNpcFace]
		Npc_DelDynaNpc(nMapId,"name",sNpcName1)
	end
--创建npc
	local nNpcFace11 = tActivityOfNBA_NpcFace[nItemId]
	local sNpcName11 = tActivityOfNBA_Text["Npc"][nNpcFace11]
	local nNpcFace22 =  tActivityOfNBA_NpcFace["Npc"][nNum]

	for a,b in pairs(tActivityOfNBA_NpcFace["Npcx"]) do
		if nItemId == a then
			nNpcFace22 = b[nNum]
		end
	end

	local sNpcName22 = tActivityOfNBA_Text["Npc"][nNpcFace22]
	Task_SetStatistic(nEvent1,nType1,nNpcFace22,1,nUserId) --光效npc掩码
	Task_SetStcTimestamp(nEvent1,nType1,0,nUserId)
	local nEvent2 = tActivityOfNBA_NpcStc[2][nNum]["EventType"]
	local nType2 = tActivityOfNBA_NpcStc[2][nNum]["DataType"]
	Task_SetStatistic(nEvent2,nType2,nNpcFace11,1,nUserId)
	Task_SetStcTimestamp(nEvent2,nType2,0,nUserId)

	local nMapId1 = Get_UserMapId(nUserId)
	local nPosX1 = tActivityOfNBA_NpcPos[1][nNum][2]
	local nPosY1 = tActivityOfNBA_NpcPos[1][nNum][3]
	local nAction1 = tActivityOfNBA_NpcPos[1][nNum][4]
	Npc_CreateDynaNpc(sNpcName22,2,1,nNpcFace22,0,nUserId,nMapId1,nPosX1,nPosY1,0,0,0,nAction1)
	local nPosX2 = tActivityOfNBA_NpcPos[2][nNum][2]
	local nPosY2 = tActivityOfNBA_NpcPos[2][nNum][3]
	local nAction2 = tActivityOfNBA_NpcPos[2][nNum][4]

	local nMapId2 = Get_UserMapId(nUserId)
	Npc_CreateDynaNpc(sNpcName11,2,1,nNpcFace11,0,nUserId,nMapId2,nPosX2,nPosY2,0,0,0,nAction2)

end

--判断是不是兄弟卡片说
function ActivityOfNBA_AddExtra(nItemId)
	local nExtra = 0
	local nFlag = 0
	--判断是否有兄弟
	for k,v in pairs(tActivityOfNBA_BrotherCard) do
		if nItemId == k then
			nFlag = v[1]  --兄弟的id
			break
		end
	end
	--检测场上兄弟是否上场
	if nFlag > 0 then
		for i=1,10 do
			local nEvent = tActivityOfNBA_Stc["Player"][i]["EventType"]
			local nType = tActivityOfNBA_Stc["Player"][i]["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType)
			if nData == nFlag then 
				nExtra = tActivityOfNBA_BrotherCard[nItemId][2]
				break
			end

		end
	end

	return nExtra
end



--前十名排行
function ActivityOfNBA_RankingList(nNowUserId)
--取当前排行榜的值放到临时表中
	local tRank = {}

	for i = 1,10 do
		local nGlobId = tActivityOfNBA_GlobId[i]
		local nData = Get_SysDynaGlobalData(nGlobId,1)
		local nUserId = Get_SysDynaGlobalData(nGlobId,2)
		local sUserName = Get_SysDynaGlobalDataStr1(nGlobId)
		local sName = Get_SysDynaGlobalDataStr2(nGlobId)
		local sIndex = Get_SysDynaGlobalDataStr3(nGlobId)

		tRank[i] = {}
		tRank[i]["Score"] = nData == "" and 0 or tonumber(nData)
		tRank[i]["UserId"] = nUserId
		tRank[i]["Name"] = sUserName == "" and "null" or sUserName
		tRank[i]["UserName"] = sName == "" and "null" or sName
		tRank[i]["Index"] = sIndex == "" and "null" or sIndex

	end
--玩家的数据插入表中
	local nUserId1 = nNowUserId or Get_UserId()
	local nTotal1 = ActivityOfNBA_GetStc("Grade",nUserId1)
	local sUserName1 = Get_UserName(nUserId1)
	local sName1 = sUserName1
	local sIndex1 = ""
	local nFlag = #tRank + 1
	for a,k in pairs(tRank) do
		if k["UserId"] == nUserId1 then
			nFlag = a
			sName1 = tRank[nFlag]["Name"]
			sIndex1 = tRank[nFlag]["Index"]
		end
	end
	tRank[nFlag] = {}
	tRank[nFlag]["Score"] = nTotal1
	tRank[nFlag]["UserId"] = nUserId1
	tRank[nFlag]["Name"] = sName1
	tRank[nFlag]["UserName"] = sUserName1
	tRank[nFlag]["Index"] = sIndex1

	local nPlayer = 0
	if #tRank > 10 then
		nPlayer = tRank[11]["UserId"]
	end
	local t = {}
	for i = 1,#tRank do
		for j = 1, #tRank - i do	
			if  tRank[j]["UserId"] == 0 or ( tRank[j]["Score"] < tRank[j+1]["Score"] and tRank[j+1]["UserId"] ~= 0)   then
				t = tRank[j]
				tRank[j] = tRank[j+1]
				tRank[j+1] = t
			end
		end
	end
	-- 上榜清掩码(改名掩码)
	if nPlayer > 0 then
		for a,b in pairs(tRank) do
			if b["UserId"] == nPlayer then
			local nEventType = tActivityOfNBA_Stc["Name"]["EventType"]
			local nDataType = tActivityOfNBA_Stc["Name"]["DataType"]

			Task_SetStatistic(nEventType,nDataType,0,1,nPlayer)
			Task_SetStcTimestamp(nEventType,nDataType,0,nPlayer)
			end
		end
	end

--把临时表里的数据放入动态表中
	for i = 1,10 do
		-- local nIndex = 11 - i
		local nGlobId2 = tActivityOfNBA_GlobId[i]
		local nUserId2 =tRank[i]["UserId"]
		local nTotal2 = tRank[i]["Score"]
		local sUserName2 = tRank[i]["Name"]
		local sName2 = tRank[i]["UserName"]
		local sIndex2 = tRank[i]["Index"]
		if i == 1 then  
			ActivityOfNBA_RankBroadcast(nGlobId2,nUserId2,sUserName2,sName2,sIndex2)
		end
		Sys_SetSynaGlobalData(nGlobId2,1,nTotal2)
		Sys_SetSynaGlobalData(nGlobId2,2,nUserId2)
		Sys_SetSynaGlobalDataStr1(nGlobId2,sUserName2)  --玩家名字
		Sys_SetSynaGlobalDataStr2(nGlobId2,sName2)  --玩家名字
		Sys_SetSynaGlobalDataStr3(nGlobId2,sIndex2)  --标记是否有改过名字
	end
end
---第一名改变的时候 出个广播
function ActivityOfNBA_RankBroadcast(nGlobId2,nUserId2,sUserName2,sName2,sIndex2)
	local nUserId1 = Get_SysDynaGlobalData(nGlobId2,2)
	if nUserId1 == 0 then
		return
	end
	if nUserId2 ~= nUserId1 then
		local nBallName = ""
		if sIndex2 == "1" then
			nBallName = sName2 .. string.format(tActivityOfNBA_Text[20448]["Text517"],sUserName2)
		else
			nBallName = sName2 .. tActivityOfNBA_Text["MsgBox"]["Ball"]
		end
		local sBroad = string.format(tActivityOfNBA_Text["MsgBox"]["RankBroast"],nBallName)
		Sys_SystemBroadcast(sBroad)
	end
end

function ActivityOfNBA_Npc20472(nNpcId,nNum)

	local nScore = ActivityOfNBA_GetStc("Score")
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	-- tNpcGossip[nNpcId]["Text111"] = string.format(tActivityOfNBA_Text[20472]["Text111"],nNum)
	local sText112 = tActivityOfNBA_Text[20472]["Text112"]
	local sText113 = tActivityOfNBA_Text[20472]["Text113"]
	local sText1123 = Sys_Alignment(sText112,2,sText113,35) .. "\n"
	tNpcGossip[nNpcId]["Text112"] = sText1123
	local tTab1 = ActivityOfNBA_FindSquad(1,5)
	local tTab2 = ActivityOfNBA_FindSquad(6,10)

	local sText1 = tActivityOfNBA_Text[20472][1]
	local sText2 = tActivityOfNBA_Text[20472][1]
	if tTab1[nNum] ~= 0 then
		local nItem1 = tTab1[nNum]
		local nItemNum1 = ActivityOfNBA_ItemGrade(nItem1)
		sText1 = string.format(tActivityOfNBA_Text[20472][nItem1] .. "（%d）",nItemNum1)
	end
	if tTab2[nNum] ~= 0 then
		local nItem2 = tTab2[nNum]
		local nItemNum2 = ActivityOfNBA_ItemGrade(nItem2)
		sText2 = string.format(tActivityOfNBA_Text[20472][nItem2] .. "（%d）",nItemNum2)
	end
	
	sText = Sys_Alignment(sText1,4,sText2,37) .. "\n"
	tNpcGossip[nNpcId]["Text114"] = sText

end
----------物品产出
function ActivityOfNBA_Reward(nNum)
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end
	local nUserId =  Get_UserId()
	if nNum == 2 then
		RewardTemplate_OuterPckage(tActivityOfNBA_Get[nNum],nUserId)
		return
	end
	RewardTemplate_UseItem(tActivityOfNBA_Get[nNum],nUserId)
end

function ActivityOfNBA_KillReward()
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]) then 
		return
	end

	local nUserId =  Get_UserId()
	if Sys_Random(tActivityOfNBA_Get[3]["Random"],10000)then
		local nEventType = tActivityOfNBA_Get[3]["EventType"]
		local DataType = tActivityOfNBA_Get[3]["DataType"]
		RewardTemplate_OuterPckage(tActivityOfNBA_Get[3],nUserId)
		local nData = Get_UserStatisticValue(nEventType,DataType,nUserId)
		local nNowSingleData = nData%10000 
		if nNowSingleData == 100 then
			Task_AddStatistic(nEventType,DataType,1,1,nUserId)
			Task_SetStcTimestamp(nEventType,DataType,0,nUserId)
			Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["Monster"])
		end
	end
end

function ActivityOfNBA_ChangeText(nFlag,i,nIndex)  --nFlag  第几个选项  nIndex第几个掩码

	local nUserId = Get_UserId()
	local nEvent = tActivityOfNBA_Stc["Reward"][nIndex]["EventType"]
	local nType = tActivityOfNBA_Stc["Reward"][nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nGrade = ActivityOfNBA_GetStc("Grade")

	local nScore = tActivityOfNBA_Score[nFlag][i]["Score"]
	local nNum = tActivityOfNBA_RewardStc[nIndex][nScore]
	local sText = ""
	if nGrade >= nScore then 
		if not Sys_ParseNumbersContain(nNum,nData) then
			sText = tActivityOfNBA_Text[20471][1]
		else
			sText = tActivityOfNBA_Text[20471][2]
		end
	else
		sText = tActivityOfNBA_Text[20471][3]
	end
	return sText
end

---正选球员是否都已上阵
function ActivityOfNBA_GoPlayer(nNum1,nNum2)
	local nUserId = Get_UserId()
	local nNum = 0
	for i=nNum1,nNum2 do
		local nEvent = tActivityOfNBA_Stc["Player"][i]["EventType"]
		local nType = tActivityOfNBA_Stc["Player"][i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		if nData > 0 then
			nNum = nNum + 1
		end
	end
	if nNum == nNum2 then
		return true
	else
		return false
	end
end
---判断该npc是否已上阵
function ActivityOfNBA_GotoPlayer(nNum)
	local nEvent = tActivityOfNBA_Stc["Player"][nNum]["EventType"]
	local nType = tActivityOfNBA_Stc["Player"][nNum]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nData > 0 then
		return true
	else
		return false
	end
end

function ActivityOfNBA_GotoNpc(nNpc,nNum,nMapId)
	local nNowMapId = Get_UserMapId()
	if nMapId ~= nNowMapId then
		return
	end
	local nEvent = tActivityOfNBA_Stc["Player"][nNum]["EventType"]
	local nType = tActivityOfNBA_Stc["Player"][nNum]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
		LinkNpcGossipFunc_New(nNpc,"2-1")
		return
	end
	local tTab = {}
	for i=1,5 do
		local nEvent =tActivityOfNBA_Stc["Player"][i]["EventType"]
		local nType = tActivityOfNBA_Stc["Player"][i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nData == 0 or nData == nil then
			table.insert(tTab,i)
		end
	end
	
	if #tTab == 0 or #tTab == nil or #tTab == 5 then
		LinkNpcGossipFunc_New(nNpc,"2-1")
		return
	end

	local nNum = tTab[1]
	local nNpcId = tActivityOfNBA_NpcIdPos[nNum]
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosx = tActivityOfNBA_Pos[nNpcId]["X"]
	local nPosy = tActivityOfNBA_Pos[nNpcId]["y"]
	if Sys_GotoSomeWhere(nPosx,nPosy,nMapId,0) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end

function ActivityOfNBA_Text611()
	local nNum = ActivityOfNBA_GetStc("Reward")
	local nUserData = ActivityOfNBA_GetStc("Grade")
	local tTab = {}
	local tTab2 = {}
	local nFlag = 5 -->21000
	for a,b in pairs(tActivityOfNBA_Score) do
		if a <= nNum then
			table.insert(tTab,tActivityOfNBA_Text[20471]["Text711"][2])
			table.insert(tTab2,tActivityOfNBA_Text[20471]["Text711"][4])
		else
			if nUserData >= b["Score"] then
				table.insert(tTab,tActivityOfNBA_Text[20471]["Text711"][1])
			else
				table.insert(tTab,tActivityOfNBA_Text[20471]["Text711"][3])
			end
			table.insert(tTab2,tActivityOfNBA_Text[20471]["Text711"][5])
		end
	end
	if nNum > 11 then  --大于21000分
		local nNeedNum = (nNum - 10)*1000 + 21000
		if nUserData >= nNeedNum then
			nFlag = 1
		end
	else  --小于的时候 只要判断22000
		if nUserData >= 22000 then
			nFlag = 1
		end
	end

	-- tNpcGossip[20471]["Text612"] = string.format(tActivityOfNBA_Text[20471]["Text612"],tTab2[1],tTab[1],tTab2[7],tTab[7])
	-- tNpcGossip[20471]["Text613"] = string.format(tActivityOfNBA_Text[20471]["Text613"],tTab2[2],tTab[2],tTab2[8],tTab[8])
	-- tNpcGossip[20471]["Text614"] = string.format(tActivityOfNBA_Text[20471]["Text614"],tTab2[3],tTab[3],tTab2[9],tTab[9])
	-- tNpcGossip[20471]["Text615"] = string.format(tActivityOfNBA_Text[20471]["Text615"],tTab2[4],tTab[4],tTab2[10],tTab[10])
	-- tNpcGossip[20471]["Text616"] = string.format(tActivityOfNBA_Text[20471]["Text616"],tTab2[5],tTab[5],tTab2[11],tTab[11])
	-- tNpcGossip[20471]["Text617"] = string.format(tActivityOfNBA_Text[20471]["Text617"],tTab2[6],tTab[6])
	
	tNpcGossip[20471]["Text612"] = string.format(tActivityOfNBA_Text[20471]["Text612"],tTab2[1],tTab2[1],tTab[1])
	tNpcGossip[20471]["Text613"] = string.format(tActivityOfNBA_Text[20471]["Text613"],tTab2[2],tTab2[2],tTab[2])
	tNpcGossip[20471]["Text614"] = string.format(tActivityOfNBA_Text[20471]["Text614"],tTab2[3],tTab2[3],tTab[3])
	tNpcGossip[20471]["Text615"] = string.format(tActivityOfNBA_Text[20471]["Text615"],tTab2[4],tTab2[4],tTab[4])
	tNpcGossip[20471]["Text616"] = string.format(tActivityOfNBA_Text[20471]["Text616"],tTab2[5],tTab2[5],tTab[5])
	tNpcGossip[20471]["Text617"] = string.format(tActivityOfNBA_Text[20471]["Text617"],tTab2[6],tTab2[6],tTab[6])
	tNpcGossip[20471]["Text618"] = string.format(tActivityOfNBA_Text[20471]["Text618"],tTab2[7],tTab2[7],tTab[7])
	tNpcGossip[20471]["Text619"] = string.format(tActivityOfNBA_Text[20471]["Text619"],tTab2[8],tTab2[8],tTab[8])
	tNpcGossip[20471]["Text620"] = string.format(tActivityOfNBA_Text[20471]["Text620"],tTab2[9],tTab2[9],tTab[9])
	tNpcGossip[20471]["Text621"] = string.format(tActivityOfNBA_Text[20471]["Text621"],tTab2[10],tTab2[10],tTab[10])
	tNpcGossip[20471]["Text622"] = string.format(tActivityOfNBA_Text[20471]["Text622"],tTab2[11],tTab2[11],tTab[11])
	tNpcGossip[20471]["Text623"] = string.format(tActivityOfNBA_Text[20471]["Text623"],tActivityOfNBA_Text[20471]["Text711"][nFlag])

	
end

function ActivityOfNBA_OneGoto(nNpc,nOldMapId)
	local nMapId = Get_UserMapId()
	if  nOldMapId~= nMapId then
		return
	end
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers(nUserId) > 0 then  --组队无法进入副本
		return
	end
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		return
	end
---10个都上阵
	if ActivityOfNBA_GoPlayer(1,10) then
		
		return
	end
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return
	end
	
	local nNumber = 10
	if nItemNum < 10 then
		nNumber = nItemNum
	end
	
	local nItemN = 0
	for a=1,10 do
		local nEvent = tActivityOfNBA_Stc["Player"][a]["EventType"]
		local nType = tActivityOfNBA_Stc["Player"][a]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData ~= 0  then 
			nItemN = nItemN + 1
		end
	end
	nNumber = nItemN + nItemNum
	if nNumber > 10 then 
		nNumber = 10
	end 
	local nItem1 = 1
	for i = 1,nNumber  do
		
		local nEvent = tActivityOfNBA_Stc["Player"][i]["EventType"]
		local nType = tActivityOfNBA_Stc["Player"][i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData == 0 or nData ==nil then
			local nItemId = tTab[nItem1]
			local nNum = i
			if i > 5 then
				-- nScore = nScore/2
				nNum = nNum - 5
			end
			local nNpcId = tActivityOfNBA_Data["NpcId"][nNum]
			
			ActivityOfNBA_AddUserScore(nItemId,i,nNpcId,nMapId,1)  --加分数
			nItem1 = nItem1 +1
		end
	end
end

-- 物品逻辑

function ActivityOfNBA_UsePackage(nItemId)
	--活动时间
	if not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		if  Item_ChkItem(nItemId)then
			local nNum = Get_CountItemType(nItemId,0)
			Item_DelAllItemByType(nItemId)
			User_TalkChannel2005(tNBAItemPart_Text["OutTime"]["GiftTwo"])
			local sLog = string.format(tActivityOfNBA_Log["Over"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	if not Item_ChkItem(nItemId)then
		return
	end
	local flat,tNum = Probabil_RandomAward(tActivityOfNBA_UseBag[nItemId],1)  
	local nAddNum = tNum[1]["tAward"][1]["Grade"]
	if Item_DelItem(nItemId) then
		local nBattleEvent = tActivityOfNBA_Stc["Grade"]["EventType"]
		local nBattleType = tActivityOfNBA_Stc["Grade"]["DataType"]
			
		local nNowBattleEvent = tActivityOfNBA_Stc["Score"]["EventType"]
		local nNowBattleType = tActivityOfNBA_Stc["Score"]["DataType"]
		local nValue = Get_UserStatisticValue(nNowBattleEvent,nNowBattleType)
		local sItemName = Get_ItemtypeName(nItemId)
		local sContent = string.format(tActivityOfNBA_Text["MsgBox"]["AddCard"],sItemName,nAddNum,nValue + nAddNum)

		Task_AddStatistic(nBattleEvent,nBattleType,nAddNum,1)
		Task_AddStatistic(nNowBattleEvent,nNowBattleType,nAddNum,1)
		
		User_TalkChannel2005(sContent)
		User_EffectAdd("self","zf2-e128")
		Sys_SaveActionFestivalLog(string.format(tActivityOfNBA_Log["AddGrade"],nItemId,nAddNum))
		-- 刷新排行版数据
		ActivityOfNBA_RankingList()
		ActivityOfNBA_Broad()
	end
end

function ActivityOfNBA_Broad()
	local nBattleEvent = tActivityOfNBA_Stc["Grade"]["EventType"]
	local nBattleType = tActivityOfNBA_Stc["Grade"]["DataType"]
	local nValue = Get_UserStatisticValue(nBattleEvent,nBattleType)

	if nValue < tActivityOfNBA_Score[11]["Score"] then
		return
	end
	local nEvent = tActivityOfNBA_GetStc[3]["EventType"]
	local nType = tActivityOfNBA_GetStc[3]["DataType"]
	local nTimes = Get_UserStatisticValue(nEvent,nType)

	local nGrade = tActivityOfNBA_Score[11]["Score"] + nTimes * tActivityOfNBA_Score[11]["AddScore"]
	if nValue < nGrade then
		return
	end
	local nUserId = Get_UserId()
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	local sUserName = Get_UserName(nUserId)
	local sBroad = string.format(tActivityOfNBA_Text["MsgBox"]["BroadCast"],sUserName,nValue)
	Sys_SystemBroadcast(sBroad)  --全服广播
end

function ActivityOfNBA_UseItem(nItemId)
	--领奖时间
	if not Sys_ChkFullTime(tActivityOfNBA_Data["RewardTime"]) then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NoUse"])
		return
	end
	RewardTemplate_UseItemAndMsg(tActivityOfNBA_UseBag[3308049])
end

-- 上线触发
function ActivityOfNBA_Login()
	--活动时间
	if not Sys_ChkFullTime(tActivityOfNBA_Data["MailTime"]) then
		return
	end
	local nLoginEvent = tActivityOfNBA_GetStc[2]["EventType"]
	local nLoginType = tActivityOfNBA_GetStc[2]["DataType"]

	if Task_ChkStcValue(nLoginEvent,nLoginType,">=",1) then
		return
	end

	Task_SetStatistic(nLoginEvent,nLoginType,1,1)
	Task_SetStcTimestamp(nLoginEvent,nLoginType,0,0)

	local nEvent = tActivityOfNBA_GetStc[1]["EventType"]
	local nType = tActivityOfNBA_GetStc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	local nNum = 0
	local nUserId = Get_UserId()
	for i,k in pairs(tActivityOfNBA_CoatId[1])do
		if Item_ChkItem(k) or User_ChkStorageCoat(1,tActivityOfNBA_Coat[k],nUserId) or Get_CountItemType(k,10) > 0 or Get_CountItemType(k,40) > 0 then
			nNum = nNum + 1
		end
	end
	if nNum == 8 then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)

		local nActionId = tActivityOfNBA_Data["Action"]
		local sSender = tActivityOfNBA_Text["Mail"]["Sender"]
		local sTitle = tActivityOfNBA_Text["Mail"]["Title"]
		local sContent = tActivityOfNBA_Text["Mail"]["Content"]
		Sys_SendMail(nUserId,0,0,nActionId,0,30,sSender,sTitle,sContent)

	end
end

-- 红月亮洗赠液【强效版】
function ActivityOfNBA_OpenItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--检测赠品冠军球衣
	local nCoatItem = tActivityOfNBA_UseBag[3309725]["RewardItem"][1]["Id"]
	if not Item_ChkItem(nCoatItem,2) then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotItem"])
		return
	end
	RewardTemplate_UseItemAndMsg(tActivityOfNBA_UseBag[nItemId])
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[5351] = 542
tNpcFace[4591] = 119
tNpcFace[4593] = 23

tNpcFace[5379] = 543
tNpcFace[5380] = 1444
tNpcFace[5381] = 546
tNpcFace[5382] = 545
tNpcFace[5419] = 188
----排兵布阵npc头像
tNpcFace[4679] = 235
tNpcFace[4691] = 233
tNpcFace[4710] = 234
tNpcFace[4711] = 236
tNpcFace[4712] = 237

tNpcGossip[20448]= tNpcGossip[20448] or DefaultNpc:new{}
tNpcGossip[20448]["OptionHidden"] = 1
tNpcGossip[20448]["nPageNum"] = 10
--活动前
tNpcGossip[20448]["Text1-1"] = {111,112,113,118,114,115,116,117}
tNpcGossip[20448]["Text111"] = tActivityOfNBA_Text[20448]["Text111"]
tNpcGossip[20448]["Text112"] = tActivityOfNBA_Text[20448]["Text112"]
tNpcGossip[20448]["Text113"] = tActivityOfNBA_Text[20448]["Text113"]
tNpcGossip[20448]["Text114"] = tActivityOfNBA_Text[20448]["Text114"]
tNpcGossip[20448]["Text115"] = tActivityOfNBA_Text[20448]["Text115"]
tNpcGossip[20448]["Text116"] = tActivityOfNBA_Text[20448]["Text116"]
tNpcGossip[20448]["Text117"] = tActivityOfNBA_Text[20448]["Text117"]
tNpcGossip[20448]["Text118"] = tActivityOfNBA_Text[20448]["Text118"]
tNpcGossip[20448]["tOption1-1"] = {11}
tNpcGossip[20448]["Option11"] = tActivityOfNBA_Text[20448]["Option11"]
tNpcGossip[20448]["ChkFunc1-1"]= function()
	-- tNpcGossip[20448]["tOption1-1"] = {11}
	return Sys_ChkFullTime(tActivityOfNBA_Data["Bef_Time"]) 
end
--活动后
tNpcGossip[20448]["Text1-2"] = {111,121}
tNpcGossip[20448]["Text121"] = tActivityOfNBA_Text[20448]["Text121"]
tNpcGossip[20448]["tOption1-2"] = {23,21}
---球队战力榜
tNpcGossip[20448]["Option23"] = tActivityOfNBA_Text[20448]["Option50"]
tNpcGossip[20448]["OptionFunc23"] = "ActivityOfNBA_LookRank</N>20448"  
tNpcGossip[20448]["Option21"] = tActivityOfNBA_Text[20448]["Option21"]
tNpcGossip[20448]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) 
end
--活动中 等级不足
tNpcGossip[20448]["Text1-3"] = {111,131,132,135,133,134}
tNpcGossip[20448]["Text131"] = tActivityOfNBA_Text[20448]["Text131"]
tNpcGossip[20448]["Text132"] = tActivityOfNBA_Text[20448]["Text132"]
tNpcGossip[20448]["Text133"] = tActivityOfNBA_Text[20448]["Text133"]
tNpcGossip[20448]["Text134"] = tActivityOfNBA_Text[20448]["Text134"]
tNpcGossip[20448]["Text135"] = tActivityOfNBA_Text[20448]["Text135"]

tNpcGossip[20448]["ChkFunc1-3"]= function()

	return Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"])  and (not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]))
end
tNpcGossip[20448]["tOption1-3"] = {13}
tNpcGossip[20448]["Option13"] = tActivityOfNBA_Text[20448]["Option13"]
--活动中
tNpcGossip[20448]["Text1-4"] = {111,141,142,144,118,114,115,116,117}
tNpcGossip[20448]["Text141"] = tActivityOfNBA_Text[20448]["Text141"]
tNpcGossip[20448]["Text142"] = tActivityOfNBA_Text[20448]["Text142"]
-- tNpcGossip[20448]["Text143"] = tActivityOfNBA_Text[20448]["Text143"]
tNpcGossip[20448]["Text144"] = tActivityOfNBA_Text[20448]["Text144"]
tNpcGossip[20448]["ChkFunc1-4"]= function()
	ActivityOfNBA_Clear()
	local nNum = ActivityOfNBA_GetStc("Score")
	-- tNpcGossip[20448]["Text143"] = string.format(tActivityOfNBA_Text[20448]["Text143"],nNum)
	return Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) 
end
tNpcGossip[20448]["tOption1-4"] = {14,15,16,50,19}
--组建球队
tNpcGossip[20448]["Option14"] = tActivityOfNBA_Text[20448]["Option14"]
tNpcGossip[20448]["OptionFunc14"] = "ActivityOfNBA_Organize</N>20448"
tNpcGossip[20448]["OptionChkFunc14"]= function()
	local nEventType = tActivityOfNBA_Stc["Build"]["EventType"]
	local DataType = tActivityOfNBA_Stc["Build"]["DataType"]
	return Task_ChkStcValue(nEventType,DataType,"<=",0,nUserId)
end
--调整上场整容
tNpcGossip[20448]["Option15"] = tActivityOfNBA_Text[20448]["Option15"]
tNpcGossip[20448]["OptionFunc15"] = "ActivityOfNBA_Goto</N>20448"  
tNpcGossip[20448]["OptionChkFunc15"]= function()
	local nEventType = tActivityOfNBA_Stc["Build"]["EventType"]
	local DataType = tActivityOfNBA_Stc["Build"]["DataType"]
	return Task_ChkStcValue(nEventType,DataType,">=",1,nUserId)
end
--补领球队花名册
tNpcGossip[20448]["Option16"] = tActivityOfNBA_Text[20448]["Option16"]
tNpcGossip[20448]["OptionFunc16"] = "ActivityOfNBA_Replace</N>20448"  
tNpcGossip[20448]["OptionChkFunc16"]= function()
	local nEventType = tActivityOfNBA_Stc["Build"]["EventType"]
	local DataType = tActivityOfNBA_Stc["Build"]["DataType"]
	local nItemId = tActivityOfNBA_Reward[1]["RewardItem"][1]["Id"]
	return Task_ChkStcValue(nEventType,DataType,">=",1,nUserId) and (not Item_ChkItem(nItemId))
end

--领取战力大奖
-- tNpcGossip[20448]["Option17"] = tActivityOfNBA_Text[20448]["Option17"]
-- tNpcGossip[20448]["OptionFunc17"] = "ActivityOfNBA_RewardPowerItem</N>20448"  
-- 球星转会市场
-- tNpcGossip[20448]["Option18"] = tActivityOfNBA_Text[20448]["Option18"]
-- tNpcGossip[20448]["OptionFunc18"] = "User_OpenExchangeShop</N>20448"  
--篮球经理手册
tNpcGossip[20448]["Option19"] = tActivityOfNBA_Text[20448]["Option19"]
-- tNpcGossip[20448]["OptionFunc19"] =  string.format("User_NoviceTeaching</N>%d",tActivityOfNBA_Data["Cartoon"])
tNpcGossip[20448]["OptionFunc19"] = "ActivityOfNBA_LookWeb"
---球队战力榜
tNpcGossip[20448]["Option50"] = tActivityOfNBA_Text[20448]["Option50"]
tNpcGossip[20448]["OptionFunc50"] = "ActivityOfNBA_LookRank</N>20448"  

-- tNpcGossip[20448]["Option20"] = tActivityOfNBA_Text[20448]["Option20"]

--接1、我要组建球队 成功建队
tNpcGossip[20448]["Text2-1"] = {211,212}
tNpcGossip[20448]["Text211"] = tActivityOfNBA_Text[20448]["Text211"]
tNpcGossip[20448]["Text212"] = tActivityOfNBA_Text[20448]["Text212"]
tNpcGossip[20448]["tOption2-1"] = {21}
tNpcGossip[20448]["Option21"] = tActivityOfNBA_Text[20448]["Option21"]
tNpcGossip[20448]["OptionFunc21"] = "ActivityOfNBA_Go</N>20474"  

tNpcGossip[20448]["ChkFunc2-1"]= function()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	-- tNpcGossip[20448]["Text211"] = string.format(tActivityOfNBA_Text[20448]["Text211"],sUserName)
	return true
end
---背包空间满
tNpcGossip[20448]["Text2-2"] = {221}
tNpcGossip[20448]["Text221"] = tActivityOfNBA_Text[20448]["Text221"]
tNpcGossip[20448]["tOption2-2"] = {22}
tNpcGossip[20448]["Option22"] = tActivityOfNBA_Text[20448]["Option22"]
-- 接3、补领球队花名册
-- 【背包满】
tNpcGossip[20448]["Text3-1"] = {311}
tNpcGossip[20448]["Text311"] = tActivityOfNBA_Text[20448]["Text311"]
tNpcGossip[20448]["tOption3-1"] = {31}
tNpcGossip[20448]["Option31"] = tActivityOfNBA_Text[20448]["Option31"]
-- 【获得球队花名册】
tNpcGossip[20448]["Text3-2"] = {321}
tNpcGossip[20448]["Text321"] = tActivityOfNBA_Text[20448]["Text321"]
tNpcGossip[20448]["tOption3-2"] = {32}
tNpcGossip[20448]["Option32"] = tActivityOfNBA_Text[20448]["Option32"]
-- 【获得奖励、已达35000分】
tNpcGossip[20448]["Text4-1"] = {411}
tNpcGossip[20448]["Text411"] = tActivityOfNBA_Text[20448]["Text441"]
tNpcGossip[20448]["tOption4-1"] = {41}
tNpcGossip[20448]["Option41"] = tActivityOfNBA_Text[20448]["Option44"]
---球队战力榜奖励
tNpcGossip[20448]["Text5-1"] = {511,512,513,514,515,516,517,518,519,521,522,523,524,525,526}
tNpcGossip[20448]["Text511"] = tActivityOfNBA_Text[20448]["Text521"]
tNpcGossip[20448]["Text512"] = tActivityOfNBA_Text[20448]["Text522"]
tNpcGossip[20448]["Text513"] = tActivityOfNBA_Text[20448]["Text523"]
tNpcGossip[20448]["Text514"] = tActivityOfNBA_Text[20448]["Text524"]
tNpcGossip[20448]["Text515"] = tActivityOfNBA_Text[20448]["Text525"]
tNpcGossip[20448]["Text516"] = tActivityOfNBA_Text[20448]["Text526"]
tNpcGossip[20448]["Text517"] = tActivityOfNBA_Text[20448]["Text527"]
tNpcGossip[20448]["Text518"] = tActivityOfNBA_Text[20448]["Text528"]
tNpcGossip[20448]["Text519"] = tActivityOfNBA_Text[20448]["Text529"]
tNpcGossip[20448]["Text521"] = tActivityOfNBA_Text[20448]["Text531"]
tNpcGossip[20448]["Text522"] = tActivityOfNBA_Text[20448]["Text532"]
tNpcGossip[20448]["Text523"] = tActivityOfNBA_Text[20448]["Text533"]
tNpcGossip[20448]["Text524"] = tActivityOfNBA_Text[20448]["Text534"]
tNpcGossip[20448]["Text525"] = tActivityOfNBA_Text[20448]["Text535"]
tNpcGossip[20448]["Text526"] = tActivityOfNBA_Text[20448]["Text536"]
tNpcGossip[20448]["tOption5-1"] = {54}
tNpcGossip[20448]["Option54"] = tActivityOfNBA_Text[20448]["Option54"]
tNpcGossip[20448]["OptionPoint54"] = "1-2" 
tNpcGossip[20448]["ChkFunc5-1"]= function()
	local sIndex = "1-2"
	if Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) then
		sIndex = "1-4"
	end
	tNpcGossip[20448]["OptionPoint54"] = sIndex
	return true
end

-- 接1、领取排名奖励
tNpcGossip[20448]["Text5-3"] = {531}
tNpcGossip[20448]["Text531"] = tActivityOfNBA_Text[20448]["Text551"]
tNpcGossip[20448]["tOption5-3"] = {55}
tNpcGossip[20448]["Option55"] = tActivityOfNBA_Text[20448]["Option55"]


--活动时间已过
tNpcGossip[20448]["Text6-1"] = {611}
tNpcGossip[20448]["Text611"] = tActivityOfNBA_Text[20448]["Text611"]
tNpcGossip[20448]["tOption6-1"] = {61}
tNpcGossip[20448]["Option61"] = tActivityOfNBA_Text[20448]["Option61"]




-----------4个NBA巨星
-- 【火箭队】哈登
tNpcGossip[20449]= tNpcGossip[20449] or DefaultNpc:new{}
tNpcGossip[20449]["OptionHidden"] = 1
tNpcGossip[20449]["nPageNum"] = 10

--活动前
tNpcGossip[20449]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20449]["Text111"] = tActivityOfNBA_Text[20449]["Text111"]
tNpcGossip[20449]["Text112"] = tActivityOfNBA_Text[20449]["Text112"]
tNpcGossip[20449]["Text113"] = tActivityOfNBA_Text[20449]["Text113"]
tNpcGossip[20449]["Text114"] = tActivityOfNBA_Text[20449]["Text114"]
tNpcGossip[20449]["Text115"] = tActivityOfNBA_Text[20449]["Text115"]
tNpcGossip[20449]["Text116"] = tActivityOfNBA_Text[20449]["Text116"]

tNpcGossip[20449]["tOption1-1"] = {11}
tNpcGossip[20449]["Option11"] = tActivityOfNBA_Text[20449]["Option11"]
tNpcGossip[20449]["ChkFunc1-1"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[20449]["Text111"] = tActivityOfNBA_Text[nNpcId]["Text111"]
	tNpcGossip[20449]["Text112"] = tActivityOfNBA_Text[nNpcId]["Text112"]
	tNpcGossip[20449]["Text113"] = tActivityOfNBA_Text[nNpcId]["Text113"]
	tNpcGossip[20449]["Text114"] = tActivityOfNBA_Text[nNpcId]["Text114"]
	tNpcGossip[20449]["Text115"] = tActivityOfNBA_Text[nNpcId]["Text115"]
	tNpcGossip[20449]["Text116"] = tActivityOfNBA_Text[nNpcId]["Text116"]

	tNpcGossip[20449]["Option11"] = tActivityOfNBA_Text[nNpcId]["Option11"]

	return Sys_ChkFullTime(tActivityOfNBA_Data["Bef_Time"]) 
end
--活动后
tNpcGossip[20449]["Text1-2"] = {111,121}
tNpcGossip[20449]["Text121"] = tActivityOfNBA_Text[20449]["Text121"]
tNpcGossip[20449]["tOption1-2"] = {21}
tNpcGossip[20449]["Option21"] = tActivityOfNBA_Text[20449]["Option21"]
tNpcGossip[20449]["ChkFunc1-2"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[20449]["Text121"] = tActivityOfNBA_Text[nNpcId]["Text121"]
	tNpcGossip[20449]["Option21"] = tActivityOfNBA_Text[nNpcId]["Option21"]
	return not Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) 
end
--活动中 等级不足
tNpcGossip[20449]["Text1-3"] = {111,131,132,133,132,134,135,136,138,137}
tNpcGossip[20449]["Text131"] = tActivityOfNBA_Text[20449]["Text131"]
tNpcGossip[20449]["Text132"] = tActivityOfNBA_Text[20449]["Text132"]
tNpcGossip[20449]["Text133"] = tActivityOfNBA_Text[20449]["Text133"]
tNpcGossip[20449]["Text134"] = tActivityOfNBA_Text[20449]["Text134"]
tNpcGossip[20449]["Text135"] = tActivityOfNBA_Text[20449]["Text135"]
tNpcGossip[20449]["Text136"] = tActivityOfNBA_Text[20449]["Text136"]
tNpcGossip[20449]["Text137"] = tActivityOfNBA_Text[20449]["Text137"]
tNpcGossip[20449]["Text138"] = tActivityOfNBA_Text[20449]["Text138"]

tNpcGossip[20449]["ChkFunc1-3"]= function()
	ActivityOfNBA_Clear()
	ActivityOfNBA_NBAStar()  --npc对白
	local nNpcId = Get_NpcId()
	return Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) and (not User_JudgeLevelAndMetempsychosis(tActivityOfNBA_Data["Level"],tActivityOfNBA_Data["Metempsychosis"]))
end

tNpcGossip[20449]["tOption1-3"] = {13}
tNpcGossip[20449]["Option13"] = tActivityOfNBA_Text[20449]["Option13"]

tNpcGossip[20449]["Text1-4"] = {111,141,132,133,132,144,146,148,147}
tNpcGossip[20449]["Text141"] = tActivityOfNBA_Text[20449]["Text131"]
-- tNpcGossip[20449]["Text132"] = tActivityOfNBA_Text[20449]["Text132"]
-- tNpcGossip[20449]["Text133"] = tActivityOfNBA_Text[20449]["Text133"]
tNpcGossip[20449]["Text144"] = tActivityOfNBA_Text[20449]["Text134"]
tNpcGossip[20449]["Text145"] = tActivityOfNBA_Text[20449]["Text135"]
tNpcGossip[20449]["Text146"] = tActivityOfNBA_Text[20449]["Text136"]
tNpcGossip[20449]["Text147"] = tActivityOfNBA_Text[20449]["Text137"]
tNpcGossip[20449]["Text148"] = tActivityOfNBA_Text[20449]["Text138"]
tNpcGossip[20449]["ChkFunc1-4"]= function()

	ActivityOfNBA_NBAStarText()  --npc对白
	return Sys_ChkFullTime(tActivityOfNBA_Data["Now_Time"]) 
end
tNpcGossip[20449]["tOption1-4"] = {14}
tNpcGossip[20449]["Option14"] = tActivityOfNBA_Text[20449]["Option14"]
tNpcGossip[20449]["OptionFunc14"] = "ActivityOfNBA_SuportStar</N>20449"

tNpcGossip[20449]["Option15"] = tActivityOfNBA_Text[20449]["Option15"]

---今日已经支持过了
tNpcGossip[20449]["Text2-1"] = {211}
tNpcGossip[20449]["Text211"] = tActivityOfNBA_Text[20449]["Text211"]
tNpcGossip[20449]["tOption2-1"] = {21}
tNpcGossip[20449]["Option21"] = tActivityOfNBA_Text[20449]["Option21"]
---背包空间满
tNpcGossip[20449]["Text2-2"] = {221}
tNpcGossip[20449]["Text221"] = tActivityOfNBA_Text[20449]["Text221"]
tNpcGossip[20449]["tOption2-2"] = {22}
tNpcGossip[20449]["Option22"] = tActivityOfNBA_Text[20449]["Option22"]
--支持成功
-- tNpcGossip[20449]["Text2-3"] = {231}
-- tNpcGossip[20449]["Text221"] = tActivityOfNBA_Text[20449]["Text221"]
-- tNpcGossip[20449]["tOption2-3"] = {23}
-- tNpcGossip[20449]["Option23"] = tActivityOfNBA_Text[20449]["Option23"]

----其他三个nba巨星
tNpcGossip[20450] = tNpcGossip[20449]
tNpcGossip[20451] = tNpcGossip[20449]
tNpcGossip[20452] = tNpcGossip[20449]
tNpcGossip[20450]["nPageNum"] = 10
tNpcGossip[20451]["nPageNum"] = 10
tNpcGossip[20452]["nPageNum"] = 10

-------------篮坛金哨
tNpcGossip[20471]= tNpcGossip[20471] or DefaultNpc:new{}
tNpcGossip[20471]["OptionHidden"] = 1

tNpcGossip[20471]["Text1-1"] = {117,111,112,113,114,115,116,112}
tNpcGossip[20471]["Text111"] = tActivityOfNBA_Text[20471]["Text111"]
tNpcGossip[20471]["tOption1-1"] = {1,17}
tNpcGossip[20471]["Option1"] = tActivityOfNBA_Text[20471]["Option1"]
tNpcGossip[20471]["OptionFunc1"] = "ActivityOfNBA_Go</N>20495"

tNpcGossip[20471]["Option17"] = tActivityOfNBA_Text[20471]["Option17"]
tNpcGossip[20471]["OptionFunc17"] = "ActivityOfNBA_OneGoto</N>20495"
tNpcGossip[20471]["OptionChkFunc17"]= function()
	local nMapId = Get_UserMapId()
	tNpcGossip[20471]["OptionFunc17"] = "ActivityOfNBA_OneGoto</N>20495</N>" .. nMapId

	return not ActivityOfNBA_GoPlayer(1,10)
end
tNpcGossip[20471]["ChkFunc1-1"]= function()

	return not ActivityOfNBA_GoPlayer(1,5)
end
tNpcGossip[20471]["Text1-2"] = {117,121,122,123,126,124,125,127,128,122,130,131,129}
tNpcGossip[20471]["Text121"] = tActivityOfNBA_Text[20471]["Text211"]
tNpcGossip[20471]["Text122"] = tActivityOfNBA_Text[20471]["Text212"]
tNpcGossip[20471]["Text123"] = tActivityOfNBA_Text[20471]["Text213"]
tNpcGossip[20471]["Text124"] = tActivityOfNBA_Text[20471]["Text214"]
tNpcGossip[20471]["Text125"] = tActivityOfNBA_Text[20471]["Text215"]
tNpcGossip[20471]["Text126"] = tActivityOfNBA_Text[20471]["Text216"]
tNpcGossip[20471]["Text127"] = tActivityOfNBA_Text[20471]["Text217"]
tNpcGossip[20471]["Text128"] = tActivityOfNBA_Text[20471]["Text218"]
tNpcGossip[20471]["Text129"] = tActivityOfNBA_Text[20471]["Text219"]
tNpcGossip[20471]["Text130"] = tActivityOfNBA_Text[20471]["Text220"]
tNpcGossip[20471]["Text131"] = tActivityOfNBA_Text[20471]["Text221"]

tNpcGossip[20471]["tOption1-2"] = {11,17,13,14,15,16}
tNpcGossip[20471]["Option11"] = tActivityOfNBA_Text[20471]["Option11"]
-- tNpcGossip[20471]["OptionFunc11"] = "ActivityOfNBA_RewardPowerItem</N>20471"  
tNpcGossip[20471]["OptionPoint11"] = "6-1" 
tNpcGossip[20471]["Option13"] = tActivityOfNBA_Text[20471]["Option13"]
tNpcGossip[20471]["OptionPoint13"] = "4-1" 
tNpcGossip[20471]["Option12"] = tActivityOfNBA_Text[20471]["Option12"]
tNpcGossip[20471]["OptionFunc12"] = "ActivityOfNBA_Goto</N>20471"

tNpcGossip[20471]["ChkFunc1-2"]= function()
	ActivityOfNBA_Clear()
	local UserScore = ActivityOfNBA_GetStc("Grade")
	tNpcGossip[20471]["Text129"] = string.format(tActivityOfNBA_Text[20471]["Text219"],UserScore)
	local nNum = ActivityOfNBA_GetStc("Reward") + 1
	-- if nNum >= 24 then
		-- tNpcGossip[20471]["Option11"] = tActivityOfNBA_Text[20471]["Option15"]
		-- return true
	-- end
	if nNum <= 11 then
		local nScore = tActivityOfNBA_Score[nNum]["Score"]
		local nUserScore = ActivityOfNBA_GetStc("Grade")

		if nUserScore >= nScore then
			tNpcGossip[20471]["Option11"] = tActivityOfNBA_Text[20471]["Option16"]
			return true
		else
			tNpcGossip[20471]["Option11"] = tActivityOfNBA_Text[20471]["Option11"]
			return true
		end
	else
		tNpcGossip[20471]["Option11"] = tActivityOfNBA_Text[20471]["Option11"]
		return true
	end
end
--背包空间不足
tNpcGossip[20471]["Text2-1"] = {211}
tNpcGossip[20471]["Text211"] = tActivityOfNBA_Text[20471]["Text411"]
tNpcGossip[20471]["tOption2-1"] = {21}
tNpcGossip[20471]["Option21"] = tActivityOfNBA_Text[20471]["Option33"]
--最后一次领奖励
tNpcGossip[20471]["Text3-1"] = {311,312}
tNpcGossip[20471]["Text311"] = tActivityOfNBA_Text[20471]["Text416"]
tNpcGossip[20471]["Text312"] = tActivityOfNBA_Text[20471]["Text417"]
tNpcGossip[20471]["tOption3-1"] = {31}
tNpcGossip[20471]["Option31"] = tActivityOfNBA_Text[20471]["Option36"]
-- 接2、实力提升指南
tNpcGossip[20471]["Text4-1"] = {411,419,420,412,413,414,415,416,417,418,419}
tNpcGossip[20471]["Text411"] = tActivityOfNBA_Text[20471]["Text311"]
tNpcGossip[20471]["Text412"] = tActivityOfNBA_Text[20471]["Text312"]
tNpcGossip[20471]["Text413"] = tActivityOfNBA_Text[20471]["Text313"]
tNpcGossip[20471]["Text414"] = tActivityOfNBA_Text[20471]["Text314"]
tNpcGossip[20471]["Text415"] = tActivityOfNBA_Text[20471]["Text315"]
tNpcGossip[20471]["Text416"] = tActivityOfNBA_Text[20471]["Text316"]
tNpcGossip[20471]["Text417"] = tActivityOfNBA_Text[20471]["Text317"]
tNpcGossip[20471]["Text418"] = tActivityOfNBA_Text[20471]["Text318"]
tNpcGossip[20471]["Text419"] = tActivityOfNBA_Text[20471]["Text319"]
tNpcGossip[20471]["Text420"] = tActivityOfNBA_Text[20471]["Text320"]

tNpcGossip[20471]["tOption4-1"] = {41}
tNpcGossip[20471]["Option41"] = tActivityOfNBA_Text[20471]["Option33"]

tNpcGossip[20471]["Text5-1"] = {511}
tNpcGossip[20471]["Text511"] = tActivityOfNBA_Text[20471]["Text511"]
tNpcGossip[20471]["tOption5-1"] = {51}
tNpcGossip[20471]["Option51"] = tActivityOfNBA_Text[20471]["Option51"]

tNpcGossip[20471]["Text6-1"] = {625,611,624,612,613,614,615,616,617,618,619,620,621,622,623,611}
tNpcGossip[20471]["Text611"] = tActivityOfNBA_Text[20471]["Text611"]
tNpcGossip[20471]["Text612"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text613"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text614"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text615"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text616"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text617"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text618"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text619"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text620"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text621"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text622"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text623"] = tActivityOfNBA_Text[20471]["Text612"]
tNpcGossip[20471]["Text624"] = tActivityOfNBA_Text[20471]["Text624"]
tNpcGossip[20471]["Text625"] = tActivityOfNBA_Text[20471]["Text625"]

tNpcGossip[20471]["tOption6-1"] = {62}
-- tNpcGossip[20471]["Option61"] = tActivityOfNBA_Text[20471]["Option61"]
-- tNpcGossip[20471]["OptionFunc61"] = "ActivityOfNBA_RewardPowerItem</N>20471"  
tNpcGossip[20471]["Option62"] = tActivityOfNBA_Text[20471]["Option62"]
tNpcGossip[20471]["OptionFunc62"] = "ActivityOfNBA_RewardPowerItem</N>20471"  

tNpcGossip[20471]["ChkFunc6-1"]= function()
	ActivityOfNBA_Text611()
	local nMapId = Get_UserMapId()
	
	-- tNpcGossip[20471]["OptionFunc61"] = "ActivityOfNBA_RewardPowerItem</N>20471</N>1</N>" .. nMapId
	tNpcGossip[20471]["OptionFunc62"] = "ActivityOfNBA_RewardPowerItem</N>20471</N>2</N>" .. nMapId

	return true
end
----排兵布阵5个npcx
tNpcGossip[20472]= tNpcGossip[20472] or DefaultNpc:new{}
tNpcGossip[20472]["OptionHidden"] = 1
tNpcGossip[20472]["nPageNum"] = 12
tNpcGossip[20472]["Text1-1"] = {111,115,113,112,114,113}
tNpcGossip[20472]["Text111"] = tActivityOfNBA_Text[20472]["Text131"]
tNpcGossip[20472]["Text112"] = tActivityOfNBA_Text[20472]["Text112"]
tNpcGossip[20472]["Text113"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20472]["Text114"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20472]["Text115"] = tActivityOfNBA_Text[20472]["Text132"]

tNpcGossip[20472]["tOption1-1"] = {11,12}

tNpcGossip[20472]["Option11"] = tActivityOfNBA_Text[20472]["Option11"]
-- tNpcGossip[20472]["OptionPoint11"] = "2-1"
tNpcGossip[20472]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20472</N>1"  
tNpcGossip[20472]["Option12"] = tActivityOfNBA_Text[20472]["Option12"]
tNpcGossip[20472]["OptionPoint12"] = "3-1"
tNpcGossip[20472]["OptionChkFunc12"]= function()
	
	return ActivityOfNBA_GoPlayer(1,5)
end

tNpcGossip[20472]["ChkFunc1-1"]= function()
	ActivityOfNBA_Npc20472(20472,1)
	if ActivityOfNBA_GoPlayer(1,5) then
		tNpcGossip[20472]["Option11"] = tActivityOfNBA_Text[20472]["Option30"]
	else
		if ActivityOfNBA_GotoPlayer(1) then
			tNpcGossip[20472]["Option11"] = tActivityOfNBA_Text[20472]["Option50"]
		else
			tNpcGossip[20472]["Option11"] = tActivityOfNBA_Text[20472]["Option11"]
		end
	end
	if ActivityOfNBA_GotoPlayer(6) then
		tNpcGossip[20472]["Option12"] = tActivityOfNBA_Text[20472]["Option40"]
	else
		tNpcGossip[20472]["Option12"] = tActivityOfNBA_Text[20472]["Option12"]
	end
	local nMapId = Get_UserMapId()
	tNpcGossip[20472]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20472</N>1</N>"  .. nMapId

	return true
end
tNpcGossip[20472]["Text2-1"] = {111,115,113,112,114,113}
tNpcGossip[20472]["Text211"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20472]["tOption2-1"] = {201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236}
tNpcGossip[20472]["ChkFunc2-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end

	ActivityOfNBA_Chose(20472,1,200)
	return true
end

tNpcGossip[20472]["Text3-1"] = {111,115,113,112,114,113}
-- tNpcGossip[20472]["Text311"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20472]["tOption3-1"] = {301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336}
tNpcGossip[20472]["Option301"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20472]["ChkFunc3-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20472,6,300)
	return true
end

------2
tNpcGossip[20495]= tNpcGossip[20495] or DefaultNpc:new{}
tNpcGossip[20495]["OptionHidden"] = 1
tNpcGossip[20495]["nPageNum"] = 12
tNpcGossip[20495]["Text1-1"] = {111,115,113,112,114,113}
tNpcGossip[20495]["Text111"] = tActivityOfNBA_Text[20472]["Text141"]
tNpcGossip[20495]["Text112"] = tActivityOfNBA_Text[20472]["Text112"]
tNpcGossip[20495]["Text113"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20495]["Text114"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20495]["Text115"] = tActivityOfNBA_Text[20472]["Text142"]

tNpcGossip[20495]["tOption1-1"] = {11,12}
tNpcGossip[20495]["Option11"] = tActivityOfNBA_Text[20472]["Option13"]
-- tNpcGossip[20495]["OptionPoint11"] = "2-1"
tNpcGossip[20495]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20495</N>2"  
tNpcGossip[20495]["Option12"] = tActivityOfNBA_Text[20472]["Option14"]
tNpcGossip[20495]["OptionPoint12"] = "3-1"
tNpcGossip[20495]["OptionChkFunc12"]= function()

	return ActivityOfNBA_GoPlayer(1,5)
end
tNpcGossip[20495]["ChkFunc1-1"]= function()
	ActivityOfNBA_Npc20472(20495,2)

	if ActivityOfNBA_GoPlayer(1,5) then
		tNpcGossip[20495]["Option11"] = tActivityOfNBA_Text[20472]["Option30"]
	else
		if ActivityOfNBA_GotoPlayer(2) then
			tNpcGossip[20495]["Option11"] = tActivityOfNBA_Text[20472]["Option50"]
		else
			tNpcGossip[20495]["Option11"] = tActivityOfNBA_Text[20472]["Option13"]
		end
	end
	if ActivityOfNBA_GotoPlayer(7) then
		tNpcGossip[20495]["Option12"] = tActivityOfNBA_Text[20472]["Option40"]
	else
		tNpcGossip[20495]["Option12"] = tActivityOfNBA_Text[20472]["Option14"]
	end
	local nMapId = Get_UserMapId()
	tNpcGossip[20495]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20495</N>2</N>" .. nMapId

	return true
end
tNpcGossip[20495]["Text2-1"] = {111,115,113,112,114,113}
tNpcGossip[20495]["Text211"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20495]["tOption2-1"] = {201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236}
tNpcGossip[20495]["Option201"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20495]["ChkFunc2-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end

	ActivityOfNBA_Chose(20495,2,200)
	return true
end

tNpcGossip[20495]["Text3-1"] = {111,115,113,112,114,113}
tNpcGossip[20495]["Text311"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20495]["tOption3-1"] = {301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336}
tNpcGossip[20495]["Option301"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20495]["ChkFunc3-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20495,7,300)
	return true
end

----3
tNpcGossip[20496]= tNpcGossip[20496] or DefaultNpc:new{}
tNpcGossip[20496]["OptionHidden"] = 1
tNpcGossip[20496]["nPageNum"] = 12
tNpcGossip[20496]["Text1-1"] = {111,115,113,112,114,113}
tNpcGossip[20496]["Text111"] = tActivityOfNBA_Text[20472]["Text151"]
tNpcGossip[20496]["Text112"] = tActivityOfNBA_Text[20472]["Text112"]
tNpcGossip[20496]["Text113"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20496]["Text114"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20496]["Text115"] = tActivityOfNBA_Text[20472]["Text152"]

tNpcGossip[20496]["tOption1-1"] = {11,12}

tNpcGossip[20496]["Option11"] = tActivityOfNBA_Text[20472]["Option15"]
-- tNpcGossip[20496]["OptionPoint11"] = "2-1"
tNpcGossip[20496]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20496</N>3"  
tNpcGossip[20496]["Option12"] = tActivityOfNBA_Text[20472]["Option16"]
tNpcGossip[20496]["OptionPoint12"] = "3-1"
tNpcGossip[20496]["OptionChkFunc12"]= function()

	return ActivityOfNBA_GoPlayer(1,5)
end
tNpcGossip[20496]["ChkFunc1-1"]= function()
	ActivityOfNBA_Npc20472(20496,3)

	if ActivityOfNBA_GoPlayer(1,5) then
		tNpcGossip[20496]["Option11"] = tActivityOfNBA_Text[20472]["Option30"]
	else
		if ActivityOfNBA_GotoPlayer(3) then
			tNpcGossip[20496]["Option11"] = tActivityOfNBA_Text[20472]["Option50"]
		else
			tNpcGossip[20496]["Option11"] = tActivityOfNBA_Text[20472]["Option15"]
		end
	end
	if ActivityOfNBA_GotoPlayer(8) then
		tNpcGossip[20496]["Option12"] = tActivityOfNBA_Text[20472]["Option40"]
	else
		tNpcGossip[20496]["Option12"] = tActivityOfNBA_Text[20472]["Option16"]
	end
	local nMapId = Get_UserMapId()
	tNpcGossip[20496]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20496</N>3</N>" .. nMapId

	return true
end

tNpcGossip[20496]["Text2-1"] = {111,115,113,112,114,113}
tNpcGossip[20496]["Text211"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20496]["tOption2-1"] = {201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236}
tNpcGossip[20496]["Option201"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20496]["ChkFunc2-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20496,3,200)
	return true
end

tNpcGossip[20496]["Text3-1"] = {111,115,113,112,114,113}
tNpcGossip[20496]["Text311"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20496]["tOption3-1"] = {301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336}
tNpcGossip[20496]["Option301"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20496]["ChkFunc3-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20496,8,300)
	return true
end

----4
tNpcGossip[20475]= tNpcGossip[20475] or DefaultNpc:new{}
tNpcGossip[20475]["OptionHidden"] = 1
tNpcGossip[20475]["nPageNum"] = 12
tNpcGossip[20475]["Text1-1"] = {111,115,113,112,114,113}
tNpcGossip[20475]["Text111"] = tActivityOfNBA_Text[20472]["Text161"]
tNpcGossip[20475]["Text112"] = tActivityOfNBA_Text[20472]["Text112"]
tNpcGossip[20475]["Text113"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20475]["Text114"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20475]["Text115"] = tActivityOfNBA_Text[20472]["Text162"]

tNpcGossip[20475]["tOption1-1"] = {11,12}

tNpcGossip[20475]["Option11"] = tActivityOfNBA_Text[20472]["Option17"]
-- tNpcGossip[20475]["OptionPoint11"] = "2-1"
tNpcGossip[20475]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20475</N>4" 
tNpcGossip[20475]["Option12"] = tActivityOfNBA_Text[20472]["Option18"]
tNpcGossip[20475]["OptionPoint12"] = "3-1"
tNpcGossip[20475]["OptionChkFunc12"]= function()

	return ActivityOfNBA_GoPlayer(1,5)
end
tNpcGossip[20475]["ChkFunc1-1"]= function()
	ActivityOfNBA_Npc20472(20475,4)

	if ActivityOfNBA_GoPlayer(1,5) then
		tNpcGossip[20475]["Option11"] = tActivityOfNBA_Text[20472]["Option30"]
	else
		if ActivityOfNBA_GotoPlayer(4) then
			tNpcGossip[20475]["Option11"] = tActivityOfNBA_Text[20472]["Option50"]
		else
			tNpcGossip[20475]["Option11"] = tActivityOfNBA_Text[20472]["Option17"]
		end
	end
	if ActivityOfNBA_GotoPlayer(9) then
		tNpcGossip[20475]["Option12"] = tActivityOfNBA_Text[20472]["Option40"]
	else
		tNpcGossip[20475]["Option12"] = tActivityOfNBA_Text[20472]["Option18"]
	end
	local nMapId = Get_UserMapId()
	tNpcGossip[20475]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20475</N>4</N>" .. nMapId

	return true
end
tNpcGossip[20475]["Text2-1"] = {111,115,113,112,114,113}
tNpcGossip[20475]["Text211"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20475]["tOption2-1"] = {201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236}
tNpcGossip[20475]["Option201"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20475]["ChkFunc2-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20475,4,200)
	return true
end

tNpcGossip[20475]["Text3-1"] = {111,115,113,112,114,113}
tNpcGossip[20475]["Text311"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20475]["tOption3-1"] = {301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336}
tNpcGossip[20475]["Option301"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20475]["ChkFunc3-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20475,9,300)
	return true
end
---5
tNpcGossip[20476]= tNpcGossip[20476] or DefaultNpc:new{}
tNpcGossip[20476]["OptionHidden"] = 1
tNpcGossip[20476]["nPageNum"] = 12
tNpcGossip[20476]["Text1-1"] = {111,115,113,112,114,113}
tNpcGossip[20476]["Text111"] = tActivityOfNBA_Text[20472]["Text171"]
tNpcGossip[20476]["Text112"] = tActivityOfNBA_Text[20472]["Text112"]
tNpcGossip[20476]["Text113"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20476]["Text114"] = tActivityOfNBA_Text[20472]["Text212"]
tNpcGossip[20476]["Text115"] = tActivityOfNBA_Text[20472]["Text172"]

tNpcGossip[20476]["tOption1-1"] = {11,12}
tNpcGossip[20476]["Option11"] = tActivityOfNBA_Text[20472]["Option19"]
-- tNpcGossip[20476]["OptionPoint11"] = "2-1"
tNpcGossip[20476]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20476</N>5" 
tNpcGossip[20476]["Option12"] = tActivityOfNBA_Text[20472]["Option22"]
tNpcGossip[20476]["OptionPoint12"] = "3-1"
tNpcGossip[20476]["OptionChkFunc12"]= function()

	return ActivityOfNBA_GoPlayer(1,5)
end

tNpcGossip[20476]["ChkFunc1-1"]= function()
	ActivityOfNBA_Npc20472(20476,5)

	if ActivityOfNBA_GoPlayer(1,5) then
		tNpcGossip[20476]["Option11"] = tActivityOfNBA_Text[20472]["Option30"]
	else
		if ActivityOfNBA_GotoPlayer(5) then
			tNpcGossip[20476]["Option11"] = tActivityOfNBA_Text[20472]["Option50"]
		else
			tNpcGossip[20476]["Option11"] = tActivityOfNBA_Text[20472]["Option19"]
		end
	end
	if ActivityOfNBA_GotoPlayer(10) then
		tNpcGossip[20476]["Option12"] = tActivityOfNBA_Text[20472]["Option40"]
	else
		tNpcGossip[20476]["Option12"] = tActivityOfNBA_Text[20472]["Option22"]
	end
	local nMapId = Get_UserMapId()
	tNpcGossip[20476]["OptionFunc11"] = "ActivityOfNBA_GotoNpc</N>20476</N>5</N>" .. nMapId

	return true
end
tNpcGossip[20476]["Text2-1"] = {111,115,113,112,114,113}
tNpcGossip[20476]["Text211"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20476]["tOption2-1"] = {201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236}
tNpcGossip[20476]["Option201"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20476]["ChkFunc2-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20476,5,200)
	return true
end

tNpcGossip[20476]["Text3-1"] = {111,115,113,112,114,113}
tNpcGossip[20476]["Text311"] =  tActivityOfNBA_Text[20472]["Text122"]
tNpcGossip[20476]["tOption3-1"] = {301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336}
tNpcGossip[20476]["Option301"] = tActivityOfNBA_Text[20472]["Option20"]
tNpcGossip[20476]["ChkFunc3-1"]= function()
	local tTab = ActivityOfNBA_ChkUserCard()
	local nItemNum = #tTab
	if nItemNum == 0 then
		Sys_MsgBox(tActivityOfNBA_Text["MsgBox"]["NotHave"])
		 return false
	end
	ActivityOfNBA_Chose(20476,10,300)
	return true
end

-----新增加1个兑换商店npc
tNpcFace[5417] = 120
tNpcGossip[20474]= tNpcGossip[20474] or DefaultNpc:new{}
tNpcGossip[20474]["OptionHidden"] = 1

tNpcGossip[20474]["Text1-1"] = {111,112}
tNpcGossip[20474]["Text111"] = tActivityOfNBA_Text[20474]["Text111"]
tNpcGossip[20474]["Text112"] = tActivityOfNBA_Text[20474]["Text112"]
tNpcGossip[20474]["Text113"] = tActivityOfNBA_Text[20474]["Text113"]
tNpcGossip[20474]["Text114"] = tActivityOfNBA_Text[20474]["Text114"]
tNpcGossip[20474]["Text115"] = tActivityOfNBA_Text[20474]["Text115"]
tNpcGossip[20474]["Text116"] = tActivityOfNBA_Text[20474]["Text116"]

tNpcGossip[20474]["tOption1-1"] = {1}
tNpcGossip[20474]["Option1"] = tActivityOfNBA_Text[20474]["Option1"]
tNpcGossip[20474]["OptionFunc1"] = "User_OpenExchangeShop</N>20474"  

tNpcGossip[20474]["Option2"] = tActivityOfNBA_Text[20474]["Option2"]


---------------------------------物品部分---------------------------------------------
-- VIP特训卡
tItem[3308589] = tItem[3308589] or {}
tItem[3308589]["Function"] = function(nItemId,sItemName)
	ActivityOfNBA_UsePackage(nItemId)
end
-- 普通特训卡
tItem[3308590] = tItem[3308589] or {}

-- 总冠军球衣礼包
tItem[3308049] = tItem[3308049] or {}
tItem[3308049]["Function"] = function(nItemId,sItemName)
	ActivityOfNBA_UseItem(nItemId)
end
-- 红月亮洗赠液【强效版】
tItem[3309725] = tItem[3309725] or {}
tItem[3309725]["Function"] = function(nItemId,sItemName)
	ActivityOfNBA_OpenItem(nItemId)
end
---------------------------------怪物部分---------------------------------------------
local tActivityOfNBA_KillReward = {}
tActivityOfNBA_KillReward["ActivityTime"] = tActivityTime["ActivityOfNBA"]["Now_Time"]
tActivityOfNBA_KillReward["Function"]= ActivityOfNBA_KillReward
table.insert(tMonsterDrop_AreaLoad,tActivityOfNBA_KillReward)

--新地宫 小怪
tMonster[3967] = tMonster[3967] or {}
tMonster[3967]["tFunction"] = tMonster[3967]["tFunction"] or {}
table.insert(tMonster[3967]["tFunction"],ActivityOfNBA_KillReward)

tMonster[3968] = tMonster[3968] or {}
tMonster[3968]["tFunction"] = tMonster[3968]["tFunction"] or {}
table.insert(tMonster[3968]["tFunction"],ActivityOfNBA_KillReward)

tMonster[3969] = tMonster[3969] or {}
tMonster[3969]["tFunction"] = tMonster[3969]["tFunction"] or {}
table.insert(tMonster[3969]["tFunction"],ActivityOfNBA_KillReward)



-- ---清动态表
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],ActivityOfNBA_Clear)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],ActivityOfNBA_Clear)
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],ActivityOfNBA_Clear)

-- 上线触发
-- table.insert(tSystem_PlayLogin_Func,ActivityOfNBA_Login)

