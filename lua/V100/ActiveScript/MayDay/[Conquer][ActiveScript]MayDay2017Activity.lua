------------------------------------------------------------------------------------
--Name:	170213[简体征服][活动脚本]劳动节小活动(5.1-5.7)
--Purpose:	劳动节小活动
--Creator: 姚曦宇
--Created:	2017/02/13
------------------------------------------------------------------------------------
-- 统一前缀 MayDay2017Activity_
-- 掩码说明：
-- stc：157,06 击杀怪物数量
-- stc：157,07 劳模勋章 获得数量
-- stc：157,08 劳动光荣大礼盒 获得数量
-- stc：157,24 排行榜奖励名次

-- 全局动态表
-- 51376 记录杀怪1~5名玩家信息
-- data0 记录日期
-- data1-5 记录第1~5名玩家杀怪数
-- str1-5 记录第1~5名玩家姓名

------------------------------------------------------------------------------------
local tMayDay2017Activity_Cont = {}

	tMayDay2017Activity_Cont["BeforeTime"] = "2017-01-01 00:00 2017-04-30 23:59"
	tMayDay2017Activity_Cont["ActiveTime"] = "2017-05-01 00:00 2017-05-07 23:59"
	tMayDay2017Activity_Cont["AfterTime"] = "2017-05-08 00:00 2020-03-08 23:59"
	
	tMayDay2017Activity_Cont["YesterdayTime"] = "2017-05-02 00:00 2017-05-08 23:59"	
	tMayDay2017Activity_Cont["PackageTime"] = "2017-05-01 00:00 2017-05-10 23:59"
	
	tMayDay2017Activity_Cont["KillTime"] = "08:00 23:59"
	
	tMayDay2017Activity_Cont["Level"] = 80
	tMayDay2017Activity_Cont["Metem"] = 0
	tMayDay2017Activity_Cont["Space"] = 1
	tMayDay2017Activity_Cont["LogId"] = 12000648
	tMayDay2017Activity_Cont["GlobalId1"] = 51376
	tMayDay2017Activity_Cont["GlobalId2"] = 51377
	
	tMayDay2017Activity_Cont["Compose"] = 15
	
	tMayDay2017Activity_Cont["Left"] = 2
	tMayDay2017Activity_Cont["Middle"] = 20
	tMayDay2017Activity_Cont["Right"] = 38
	
	tMayDay2017Activity_Cont["BoxLimit"] = 1000
	
	tMayDay2017Activity_Cont["DelLog"] = "0,0,%d,1,12000648,2,0,0"

	tMayDay2017Activity_Cont["Box"] = 3302261
	
local tMayDay2017Activity_Npc = {}
-- 劳模老林
	tMayDay2017Activity_Npc[11355] = {}
	tMayDay2017Activity_Npc[11355]["MapId"] = 1002
	tMayDay2017Activity_Npc[11355]["PosX"] = 291
	tMayDay2017Activity_Npc[11355]["PosY"] = 367
	
	
-- 杀怪获得
local tMayDay2017Activity_MonsterReward = {}
-- 杀怪获得 劳模勋章
	tMayDay2017Activity_MonsterReward["GetCoin"] = {}
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardEffect"] = {}
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardItem"] = {}
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardItem"][1] = {}
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardItem"][1]["Id"] = 3302260
	tMayDay2017Activity_MonsterReward["GetCoin"]["RewardItem"][1]["Attr"] = "0 1"
	tMayDay2017Activity_MonsterReward["GetCoin"]["LogId"] = 12000648
	tMayDay2017Activity_MonsterReward["GetCoin"]["LogStep"] = "2[1]"
	
-- 杀怪获得 劳动光荣大礼盒
	tMayDay2017Activity_MonsterReward["GetBox"] = {}
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardEffect"] = {}
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardItem"] = {}
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardItem"][1] = {}
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardItem"][1]["Id"] = 3302261
	tMayDay2017Activity_MonsterReward["GetBox"]["RewardItem"][1]["Attr"] = "0 1"
	tMayDay2017Activity_MonsterReward["GetBox"]["LogId"] = 12000648
	tMayDay2017Activity_MonsterReward["GetBox"]["LogStep"] = "2[2]"

local tMayDay2017Activity_Award = {}

-- 劳动光荣大礼盒
	tMayDay2017Activity_Award[3302261] = {}
	tMayDay2017Activity_Award[3302261]["ItemtypeId"] = 3302261
	tMayDay2017Activity_Award[3302261]["Space"] = 1
	tMayDay2017Activity_Award[3302261][1] = {}
	tMayDay2017Activity_Award[3302261][1]["ItemChanceSum"] = 10000
	-- 劳动勋章*5   43%
	tMayDay2017Activity_Award[3302261][1][1] = {}
	tMayDay2017Activity_Award[3302261][1][1]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302261][1][1]["ItemChance"] = 4300
	tMayDay2017Activity_Award[3302261][1][1]["RewardEffect"] = {}
	tMayDay2017Activity_Award[3302261][1][1]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_Award[3302261][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_Award[3302261][1][1]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302261][1][1]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][1]["DeleteItem"][1]["Id"] = 3302261
	tMayDay2017Activity_Award[3302261][1][1]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302261][1][1]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][1]["RewardItem"][1]["Id"] = 3302260
	tMayDay2017Activity_Award[3302261][1][1]["RewardItem"][1]["Attr"] = "0 5"
	tMayDay2017Activity_Award[3302261][1][1]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302261][1][1]["LogStep"] = "1[1]"	
	-- 劳动勋章*10  25%
	tMayDay2017Activity_Award[3302261][1][2] = {}
	tMayDay2017Activity_Award[3302261][1][2]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302261][1][2]["ItemChance"] = 2500
	tMayDay2017Activity_Award[3302261][1][2]["RewardEffect"] = {}
	tMayDay2017Activity_Award[3302261][1][2]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_Award[3302261][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_Award[3302261][1][2]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302261][1][2]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][2]["DeleteItem"][1]["Id"] = 3302261
	tMayDay2017Activity_Award[3302261][1][2]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302261][1][2]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][2]["RewardItem"][1]["Id"] = 3302260
	tMayDay2017Activity_Award[3302261][1][2]["RewardItem"][1]["Attr"] = "0 10"
	tMayDay2017Activity_Award[3302261][1][2]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302261][1][2]["LogStep"] = "1[1]"	
	-- 劳动勋章*15  10%
	tMayDay2017Activity_Award[3302261][1][3] = {}
	tMayDay2017Activity_Award[3302261][1][3]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302261][1][3]["ItemChance"] = 1000
	tMayDay2017Activity_Award[3302261][1][3]["RewardEffect"] = {}
	tMayDay2017Activity_Award[3302261][1][3]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_Award[3302261][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_Award[3302261][1][3]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302261][1][3]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][3]["DeleteItem"][1]["Id"] = 3302261
	tMayDay2017Activity_Award[3302261][1][3]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302261][1][3]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][3]["RewardItem"][1]["Id"] = 3302260
	tMayDay2017Activity_Award[3302261][1][3]["RewardItem"][1]["Attr"] = "0 15"
	tMayDay2017Activity_Award[3302261][1][3]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302261][1][3]["LogStep"] = "1[1]"	
	-- 劳动勋章*20  5%
	tMayDay2017Activity_Award[3302261][1][4] = {}
	tMayDay2017Activity_Award[3302261][1][4]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302261][1][4]["ItemChance"] = 500
	tMayDay2017Activity_Award[3302261][1][4]["RewardEffect"] = {}
	tMayDay2017Activity_Award[3302261][1][4]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_Award[3302261][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_Award[3302261][1][4]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302261][1][4]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][4]["DeleteItem"][1]["Id"] = 3302261
	tMayDay2017Activity_Award[3302261][1][4]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302261][1][4]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][4]["RewardItem"][1]["Id"] = 3302260
	tMayDay2017Activity_Award[3302261][1][4]["RewardItem"][1]["Attr"] = "0 20"
	tMayDay2017Activity_Award[3302261][1][4]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302261][1][4]["LogStep"] = "1[1]"	
	-- 赠点*5  12%
	tMayDay2017Activity_Award[3302261][1][5] = {}
	tMayDay2017Activity_Award[3302261][1][5]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302261][1][5]["ItemChance"] = 1200
	tMayDay2017Activity_Award[3302261][1][5]["RewardEffect"] = {}
	tMayDay2017Activity_Award[3302261][1][5]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_Award[3302261][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_Award[3302261][1][5]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302261][1][5]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][5]["DeleteItem"][1]["Id"] = 3302261
	tMayDay2017Activity_Award[3302261][1][5]["RewardEMoneyMono"] = {}
	tMayDay2017Activity_Award[3302261][1][5]["RewardEMoneyMono"]["Value"] = 5
	tMayDay2017Activity_Award[3302261][1][5]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302261][1][5]["LogStep"] = "1[1]"	
	-- 赠点*10  5%
	tMayDay2017Activity_Award[3302261][1][6] = {}
	tMayDay2017Activity_Award[3302261][1][6]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302261][1][6]["ItemChance"] = 500
	tMayDay2017Activity_Award[3302261][1][6]["RewardEffect"] = {}
	tMayDay2017Activity_Award[3302261][1][6]["RewardEffect"]["SzObj"] = "self"
	tMayDay2017Activity_Award[3302261][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tMayDay2017Activity_Award[3302261][1][6]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302261][1][6]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302261][1][6]["DeleteItem"][1]["Id"] = 3302261
	tMayDay2017Activity_Award[3302261][1][6]["RewardEMoneyMono"] = {}
	tMayDay2017Activity_Award[3302261][1][6]["RewardEMoneyMono"]["Value"] = 10
	tMayDay2017Activity_Award[3302261][1][6]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302261][1][6]["LogStep"] = "1[1]"	
	
-- 200点气力值礼包
	tMayDay2017Activity_Award[3302262] = {}
	tMayDay2017Activity_Award[3302262]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302262]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302262]["DeleteItem"][1]["Id"] = 3302262
	tMayDay2017Activity_Award[3302262]["RewardStrengthValue"] = {}
	tMayDay2017Activity_Award[3302262]["RewardStrengthValue"]["Value"] = 200
	tMayDay2017Activity_Award[3302262]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302262]["LogStep"] = "2"	
	
-- 微光星陨石礼包
	tMayDay2017Activity_Award[3302263] = {}
	tMayDay2017Activity_Award[3302263]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302263]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302263]["DeleteItem"][1]["Id"] = 3302263
	tMayDay2017Activity_Award[3302263]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302263]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302263]["RewardItem"][1]["Id"] = 3009000
	tMayDay2017Activity_Award[3302263]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMayDay2017Activity_Award[3302263]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302263]["LogStep"] = "2"	
	
-- 明亮星陨石礼包
	tMayDay2017Activity_Award[3302264] = {}
	tMayDay2017Activity_Award[3302264]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302264]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302264]["DeleteItem"][1]["Id"] = 3302264
	tMayDay2017Activity_Award[3302264]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302264]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302264]["RewardItem"][1]["Id"] = 3009001
	tMayDay2017Activity_Award[3302264]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMayDay2017Activity_Award[3302264]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302264]["LogStep"] = "2"	

-- 天地逍遥服礼包   30天时效1%神佑
	tMayDay2017Activity_Award[3302265] = {}
	tMayDay2017Activity_Award[3302265]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302265]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302265]["DeleteItem"][1]["Id"] = 3302265
	tMayDay2017Activity_Award[3302265]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302265]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302265]["RewardItem"][1]["Id"] = 193195
	tMayDay2017Activity_Award[3302265]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tMayDay2017Activity_Award[3302265]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302265]["LogStep"] = "2"	
	
-- 天地逍遥服礼包   90天时效1%神佑
	tMayDay2017Activity_Award[3302266] = {}
	tMayDay2017Activity_Award[3302266]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302266]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302266]["DeleteItem"][1]["Id"] = 3302266
	tMayDay2017Activity_Award[3302266]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302266]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302266]["RewardItem"][1]["Id"] = 193195
	tMayDay2017Activity_Award[3302266]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tMayDay2017Activity_Award[3302266]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302266]["LogStep"] = "2"	
	
-- 尘缘扫帚礼包   7天时效1%神佑尘缘扫帚（长武）
	tMayDay2017Activity_Award[3302267] = {}
	tMayDay2017Activity_Award[3302267]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302267]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302267]["DeleteItem"][1]["Id"] = 3302267
	tMayDay2017Activity_Award[3302267]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302267]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302267]["RewardItem"][1]["Id"] = 350001
	tMayDay2017Activity_Award[3302267]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tMayDay2017Activity_Award[3302267]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302267]["LogStep"] = "2"	
	
-- 镔铁锹礼包   7天时效1%神佑镔铁锹（短武）
	tMayDay2017Activity_Award[3302268] = {}
	tMayDay2017Activity_Award[3302268]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302268]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302268]["DeleteItem"][1]["Id"] = 3302268
	tMayDay2017Activity_Award[3302268]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302268]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302268]["RewardItem"][1]["Id"] = 350008
	tMayDay2017Activity_Award[3302268]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tMayDay2017Activity_Award[3302268]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302268]["LogStep"] = "2"	
	
	
-- 赤橡翘首案礼包
	tMayDay2017Activity_Award[3302270] = {}
	tMayDay2017Activity_Award[3302270]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302270]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302270]["DeleteItem"][1]["Id"] = 3302270
	tMayDay2017Activity_Award[3302270]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302270]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302270]["RewardItem"][1]["Id"] = 726076
	tMayDay2017Activity_Award[3302270]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayDay2017Activity_Award[3302270]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302270]["LogStep"] = "2"	
	
-- 天地逍遥服外套碎片
	tMayDay2017Activity_Award[3302271] = {}
	tMayDay2017Activity_Award[3302271]["Space"] = 1
	-- 合成所需碎片
	tMayDay2017Activity_Award[3302271]["Compose"] = 15
	tMayDay2017Activity_Award[3302271][1] = {}
	tMayDay2017Activity_Award[3302271][1]["ItemChanceSum"] = 10000
	-- 30天时效1%神佑天地逍遥服 50%
	tMayDay2017Activity_Award[3302271][1][1] = {}
	tMayDay2017Activity_Award[3302271][1][1]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302271][1][1]["ItemChance"] = 5000
	tMayDay2017Activity_Award[3302271][1][1]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302271][1][1]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][1]["DeleteItem"][1]["Id"] = 3302271
	tMayDay2017Activity_Award[3302271][1][1]["DeleteItem"][1]["ItemNum"] = 15
	tMayDay2017Activity_Award[3302271][1][1]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302271][1][1]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][1]["RewardItem"][1]["Id"] = 193195
	tMayDay2017Activity_Award[3302271][1][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tMayDay2017Activity_Award[3302271][1][1]["Talk"] = tMayDay2017Activity_Text[3302271][1]
	tMayDay2017Activity_Award[3302271][1][1]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302271][1][1]["LogStep"] = "2"	
	-- 90天时效1%神佑天地逍遥服 35%
	tMayDay2017Activity_Award[3302271][1][2] = {}
	tMayDay2017Activity_Award[3302271][1][2]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302271][1][2]["ItemChance"] = 3500
	tMayDay2017Activity_Award[3302271][1][2]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302271][1][2]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][2]["DeleteItem"][1]["Id"] = 3302271
	tMayDay2017Activity_Award[3302271][1][2]["DeleteItem"][1]["ItemNum"] = 15
	tMayDay2017Activity_Award[3302271][1][2]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302271][1][2]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][2]["RewardItem"][1]["Id"] = 193195
	tMayDay2017Activity_Award[3302271][1][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tMayDay2017Activity_Award[3302271][1][2]["Talk"] = tMayDay2017Activity_Text[3302271][2]
	tMayDay2017Activity_Award[3302271][1][2]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302271][1][2]["LogStep"] = "2"	
	-- 180天时效1%神佑天地逍遥服 35%
	tMayDay2017Activity_Award[3302271][1][3] = {}
	tMayDay2017Activity_Award[3302271][1][3]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302271][1][3]["ItemChance"] = 1499
	tMayDay2017Activity_Award[3302271][1][3]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302271][1][3]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][3]["DeleteItem"][1]["Id"] = 3302271
	tMayDay2017Activity_Award[3302271][1][3]["DeleteItem"][1]["ItemNum"] = 15
	tMayDay2017Activity_Award[3302271][1][3]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302271][1][3]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][3]["RewardItem"][1]["Id"] = 193195
	tMayDay2017Activity_Award[3302271][1][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	tMayDay2017Activity_Award[3302271][1][3]["Talk"] = tMayDay2017Activity_Text[3302271][3]
	tMayDay2017Activity_Award[3302271][1][3]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302271][1][3]["LogStep"] = "2"	
	-- 永久时效1%神佑天地逍遥服 0.01%
	tMayDay2017Activity_Award[3302271][1][4] = {}
	tMayDay2017Activity_Award[3302271][1][4]["RandomItemChanceType"] = 2
	tMayDay2017Activity_Award[3302271][1][4]["ItemChance"] = 1
	tMayDay2017Activity_Award[3302271][1][4]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302271][1][4]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][4]["DeleteItem"][1]["Id"] = 3302271
	tMayDay2017Activity_Award[3302271][1][4]["DeleteItem"][1]["ItemNum"] = 15
	tMayDay2017Activity_Award[3302271][1][4]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302271][1][4]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302271][1][4]["RewardItem"][1]["Id"] = 193195
	tMayDay2017Activity_Award[3302271][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMayDay2017Activity_Award[3302271][1][4]["Talk"] = tMayDay2017Activity_Text[3302271][4]
	tMayDay2017Activity_Award[3302271][1][4]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302271][1][4]["LogStep"] = "2"	
	
-- 劳动赠点包
	tMayDay2017Activity_Award[3302272] = {}
	tMayDay2017Activity_Award[3302272]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302272]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302272]["DeleteItem"][1]["Id"] = 3302272
	tMayDay2017Activity_Award[3302272]["RewardEMoneyMono"] = {}
	tMayDay2017Activity_Award[3302272]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302272]["LogStep"] = "2"
	
	
-- 劳模勋章 转化为 年运通宝
	tMayDay2017Activity_Award[3302260] = {}
	tMayDay2017Activity_Award[3302260]["DeleteItem"] = {}
	tMayDay2017Activity_Award[3302260]["DeleteItem"][1] = {}
	tMayDay2017Activity_Award[3302260]["DeleteItem"][1]["Id"] = 3302260
	tMayDay2017Activity_Award[3302260]["RewardItem"] = {}
	tMayDay2017Activity_Award[3302260]["RewardItem"][1] = {}
	tMayDay2017Activity_Award[3302260]["RewardItem"][1]["Id"] = 3301454
	tMayDay2017Activity_Award[3302260]["Talk"] = tMayDay2017Activity_Text["Exchange"]
	tMayDay2017Activity_Award[3302260]["LogId"] = 12000648
	tMayDay2017Activity_Award[3302260]["LogStep"] = "2[3]"
	

local tMayDay2017Activity_Stc = {}
	-- 击杀怪物数量
	tMayDay2017Activity_Stc[1] = {}
	tMayDay2017Activity_Stc[1]["EventData"] = 157
	tMayDay2017Activity_Stc[1]["TypeData"] = 06
	
	-- 劳模勋章 获得数量
	tMayDay2017Activity_Stc[2] = {}
	tMayDay2017Activity_Stc[2]["EventData"] = 157
	tMayDay2017Activity_Stc[2]["TypeData"] = 07
	tMayDay2017Activity_Stc[2]["Limit"] = 50
	
	-- 劳动光荣大礼盒（杀怪数/1000） 获得数量
	tMayDay2017Activity_Stc[3] = {}
	tMayDay2017Activity_Stc[3]["EventData"] = 157
	tMayDay2017Activity_Stc[3]["TypeData"] = 08
	tMayDay2017Activity_Stc[3]["Limit"] = 5
	
	-- 排行榜奖励
	tMayDay2017Activity_Stc[4] = {}
	tMayDay2017Activity_Stc[4]["EventData"] = 157
	tMayDay2017Activity_Stc[4]["TypeData"] = 24
	
	-- 排行榜奖励领取状态
	tMayDay2017Activity_Stc[5] = {}
	tMayDay2017Activity_Stc[5]["EventData"] = 157
	tMayDay2017Activity_Stc[5]["TypeData"] = 29
	
	
local tMayDay2017Activity_Rank = {}
	tMayDay2017Activity_Rank[1] = {}
	tMayDay2017Activity_Rank[1]["Id"] = 0
	tMayDay2017Activity_Rank[1]["Name"] = tMayDay2017Activity_Text["Nobody"]
	tMayDay2017Activity_Rank[1]["KillNum"] = 0
	tMayDay2017Activity_Rank[2] = {}
	tMayDay2017Activity_Rank[2]["Id"] = 0
	tMayDay2017Activity_Rank[2]["Name"] = tMayDay2017Activity_Text["Nobody"]
	tMayDay2017Activity_Rank[2]["KillNum"] = 0
	tMayDay2017Activity_Rank[3] = {}
	tMayDay2017Activity_Rank[3]["Id"] = 0
	tMayDay2017Activity_Rank[3]["Name"] = tMayDay2017Activity_Text["Nobody"]
	tMayDay2017Activity_Rank[3]["KillNum"] = 0
	tMayDay2017Activity_Rank[4] = {}
	tMayDay2017Activity_Rank[4]["Id"] = 0
	tMayDay2017Activity_Rank[4]["Name"] = tMayDay2017Activity_Text["Nobody"]
	tMayDay2017Activity_Rank[4]["KillNum"] = 0
	tMayDay2017Activity_Rank[5] = {}
	tMayDay2017Activity_Rank[5]["Id"] = 0
	tMayDay2017Activity_Rank[5]["Name"] = tMayDay2017Activity_Text["Nobody"]
	tMayDay2017Activity_Rank[5]["KillNum"] = 0
	tMayDay2017Activity_Rank[6] = {}
	-- tMayDay2017Activity_Rank[6]["Id"] = 0
	-- tMayDay2017Activity_Rank[6]["Name"] = tMayDay2017Activity_Text["Nobody"]
	-- tMayDay2017Activity_Rank[6]["KillNum"] = 0
	-- tMayDay2017Activity_Rank[7] = {}
	-- tMayDay2017Activity_Rank[7]["Id"] = 0
	-- tMayDay2017Activity_Rank[7]["Name"] = tMayDay2017Activity_Text["Nobody"]
	-- tMayDay2017Activity_Rank[7]["KillNum"] = 0
	-- tMayDay2017Activity_Rank[8] = {}
	-- tMayDay2017Activity_Rank[8]["Id"] = 0
	-- tMayDay2017Activity_Rank[8]["Name"] = tMayDay2017Activity_Text["Nobody"]
	-- tMayDay2017Activity_Rank[8]["KillNum"] = 0
	-- tMayDay2017Activity_Rank[9] = {}
	-- tMayDay2017Activity_Rank[9]["Id"] = 0
	-- tMayDay2017Activity_Rank[9]["Name"] = tMayDay2017Activity_Text["Nobody"]
	-- tMayDay2017Activity_Rank[9]["KillNum"] = 0
	-- tMayDay2017Activity_Rank[10] = {}
	-- tMayDay2017Activity_Rank[10]["Id"] = 0
	-- tMayDay2017Activity_Rank[10]["Name"] = tMayDay2017Activity_Text["Nobody"]
	-- tMayDay2017Activity_Rank[10]["KillNum"] = 0
	-- tMayDay2017Activity_Rank[11] = {}
	
	
local tMayDay2017Activity_RankReward = {}
	-- 第1名 非赠龙珠
	tMayDay2017Activity_RankReward[1] = {}
	tMayDay2017Activity_RankReward[1]["RewardItem"] = {}
	tMayDay2017Activity_RankReward[1]["RewardItem"][1] = {}
	tMayDay2017Activity_RankReward[1]["RewardItem"][1]["Id"] = 1088000
	tMayDay2017Activity_RankReward[1]["RewardItem"][1]["Attr"] = "0 1"
	tMayDay2017Activity_RankReward[1]["Talk"] = tMayDay2017Activity_Text["RankReward"][1]
	tMayDay2017Activity_RankReward[1]["LogId"] = 12000648
	tMayDay2017Activity_RankReward[1]["LogStep"] = "2"
	
	-- 第2名 30天时效羊驼维克多
	tMayDay2017Activity_RankReward[2] = {}
	tMayDay2017Activity_RankReward[2]["RewardItem"] = {}
	tMayDay2017Activity_RankReward[2]["RewardItem"][1] = {}
	tMayDay2017Activity_RankReward[2]["RewardItem"][1]["Id"] = 200563
	tMayDay2017Activity_RankReward[2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tMayDay2017Activity_RankReward[2]["Talk"] = tMayDay2017Activity_Text["RankReward"][2]
	tMayDay2017Activity_RankReward[2]["LogId"] = 12000648
	tMayDay2017Activity_RankReward[2]["LogStep"] = "2"
	
	-- 第3名 明亮星陨石
	tMayDay2017Activity_RankReward[3] = {}
	tMayDay2017Activity_RankReward[3]["RewardItem"] = {}
	tMayDay2017Activity_RankReward[3]["RewardItem"][1] = {}
	tMayDay2017Activity_RankReward[3]["RewardItem"][1]["Id"] = 3009001
	tMayDay2017Activity_RankReward[3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMayDay2017Activity_RankReward[3]["Talk"] = tMayDay2017Activity_Text["RankReward"][3]
	tMayDay2017Activity_RankReward[3]["LogId"] = 12000648
	tMayDay2017Activity_RankReward[3]["LogStep"] = "2"
	
	-- 第4名 专属武器外套礼包
	tMayDay2017Activity_RankReward[4] = {}
	tMayDay2017Activity_RankReward[4]["RewardItem"] = {}
	tMayDay2017Activity_RankReward[4]["RewardItem"][1] = {}
	tMayDay2017Activity_RankReward[4]["RewardItem"][1]["Id"] = 3003827
	tMayDay2017Activity_RankReward[4]["RewardItem"][1]["Attr"] = "0 1"
	tMayDay2017Activity_RankReward[4]["Talk"] = tMayDay2017Activity_Text["RankReward"][4]
	tMayDay2017Activity_RankReward[4]["LogId"] = 12000648
	tMayDay2017Activity_RankReward[4]["LogStep"] = "2"
	
	-- 第5名 精美时装外套包
	tMayDay2017Activity_RankReward[5] = {}
	tMayDay2017Activity_RankReward[5]["RewardItem"] = {}
	tMayDay2017Activity_RankReward[5]["RewardItem"][1] = {}
	tMayDay2017Activity_RankReward[5]["RewardItem"][1]["Id"] = 3007865
	tMayDay2017Activity_RankReward[5]["RewardItem"][1]["Attr"] = "0 1"
	tMayDay2017Activity_RankReward[5]["Talk"] = tMayDay2017Activity_Text["RankReward"][5]
	tMayDay2017Activity_RankReward[5]["LogId"] = 12000648
	tMayDay2017Activity_RankReward[5]["LogStep"] = "2"

	
-- 各种概率
local tMayDay2017Activity_Rate = {}
	-- 劳模奖章掉落概率
	tMayDay2017Activity_Rate[1] = {}
	tMayDay2017Activity_Rate[1]["StartNum"] = 1
	tMayDay2017Activity_Rate[1]["EndNum"] = 100
	-- 天石概率包
	tMayDay2017Activity_Rate[2] = {}
	tMayDay2017Activity_Rate[2]["StartNum"] = 1
	tMayDay2017Activity_Rate[2]["EndNum"] = 88

-- 正气令奖励
local tMayDay2017Activity_Daily = {}
	tMayDay2017Activity_Daily["Award"] = {}
	tMayDay2017Activity_Daily["Award"]["RewardItem"] = {} 
	tMayDay2017Activity_Daily["Award"]["RewardItem"][1] = {}
	tMayDay2017Activity_Daily["Award"]["RewardItem"][1]["Id"] = 3302260
	tMayDay2017Activity_Daily["Award"]["RewardItem"][1]["Attr"] = "0 5"
	tMayDay2017Activity_Daily["Award"]["LogId"] = 12000648
	tMayDay2017Activity_Daily["Award"]["LogStep"] = "2"
	tMayDay2017Activity_Daily["Award"]["Talk"] = tMayDay2017Activity_Text["DailyAward"]
	
--------------------------------------------------------------------------------------------

-- 获取玩家杀怪数
function MayDay2017Activity_GetKillNum()
	local nEvent = tMayDay2017Activity_Stc[1]["EventData"] 
	local nType = tMayDay2017Activity_Stc[1]["TypeData"] 
	local nUserId = Get_UserId()
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end
	
-- 点击 劳模勋章
function MayDay2017Activity_ClickCoin(nItemId,nNpcId)
	local nUserId = Get_UserId()
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tMayDay2017Activity_Cont["ActiveTime"]) then
		MayDay2017Activity_Exchange(nItemId,nUserId)
		return
	end
	
	-- 寻路至NPC
	local nPosX = tMayDay2017Activity_Npc[nNpcId]["PosX"]
	local nPosY = tMayDay2017Activity_Npc[nNpcId]["PosY"]
	local nMapId = tMayDay2017Activity_Npc[nNpcId]["MapId"]
	local sFunc = string.format(tMayDay2017Activity_Text["Func"],nPosX,nPosY,nMapId,nNpcId,nUserId)
	Sys_MsgBox(tMayDay2017Activity_Text["GoToNpc"],sFunc,nil,nUserId)
end

-- 转换物品
function MayDay2017Activity_Exchange(nItemId,nUserId)
	local nNum = Get_CountItemType(nItemId,0,1,nUserId,nUserId)
	tMayDay2017Activity_Award[nItemId]["DeleteItem"][1]["ItemNum"] = nNum
	tMayDay2017Activity_Award[nItemId]["RewardItem"][1]["Attr"] = "0 "..nNum
	RewardTemplate_UseItem(tMayDay2017Activity_Award[nItemId],nUserId)
end

-- 击杀怪物
function MayDay2017Activity_KillMonster()
	local nEvent = tMayDay2017Activity_Stc[1]["EventData"]
	local nType = tMayDay2017Activity_Stc[1]["TypeData"]
	local nUserId = Get_UserId()
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tMayDay2017Activity_Cont["ActiveTime"]) then
		return
	end
	
	-- 判断玩家等级
	local nLevel = tMayDay2017Activity_Cont["Level"]
	local nMetem = tMayDay2017Activity_Cont["Metem"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId) then 
		return
	end
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 每日8:00到23:59杀怪计数
	if Sys_ChkDayTime(tMayDay2017Activity_Cont["KillTime"]) then
	
		-- 判断杀怪数是否为50的倍数
		local nNum = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
		local nSave = 0
		if nNum % 50 == 0 then
			nSave = 1
		end
		
		-- 怪物数+1
		Task_AddStatistic(nEvent,nType,1,nSave,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		-- 每击杀1000只，获得1个劳动光荣大礼盒
		MayDay2017Activity_GetBox(nNum,nUserId)
		
		-- 排行榜
		MayDay2017Activity_KillRank(nNum,nUserId)
	end

	-- 1%几率获得 劳模勋章
	local nStartNum = tMayDay2017Activity_Rate[1]["StartNum"]
	local nEndNum = tMayDay2017Activity_Rate[1]["EndNum"]
	if Sys_Random(nStartNum,nEndNum) then
		MayDay2017Activity_GetCoin(nUserId)
	end
end

-- 获得 劳模勋章
function MayDay2017Activity_GetCoin(nUserId)
	local nEvent = tMayDay2017Activity_Stc[2]["EventData"]
	local nType = tMayDay2017Activity_Stc[2]["TypeData"]
	local nLimit = tMayDay2017Activity_Stc[2]["Limit"]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 判断是否达到可获得最大值
	if not Task_ChkStcValue(nEvent,nType,"<",nLimit,nUserId) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tMayDay2017Activity_Cont["Space"]) then
		Sys_MsgBox(tMayDay2017Activity_Text["GetButNoSpace"]["Coin"]) 
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_UseItemAndMsg(tMayDay2017Activity_MonsterReward["GetCoin"],nUserId)
	
	-- 告知玩家今日不可再获得
	if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
		Sys_MsgBox(tMayDay2017Activity_Text["KillFull"],nil,nil,nUserId)
		return
	end
end

-- 获得 劳动光荣大礼盒
function MayDay2017Activity_GetBox(nNum,nUserId)
	local nEvent = tMayDay2017Activity_Stc[3]["EventData"]
	local nType = tMayDay2017Activity_Stc[3]["TypeData"]
	local nLimit = tMayDay2017Activity_Stc[3]["Limit"]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 判断当日是否已获得5个
	if not Task_ChkStcValue(nEvent,nType,"<",nLimit,nUserId) then
		return
	end
	
	-- 判断是否符合获得条件
	local nData = math.floor(nNum/tMayDay2017Activity_Cont["BoxLimit"])
	if not Task_ChkStcValue(nEvent,nType,"<",nData,nUserId) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tMayDay2017Activity_Cont["Space"]) then
		Sys_MsgBox(tMayDay2017Activity_Text["GetButNoSpace"]["Box"]) -- 105提示：获得了但背包空间不足
		return
	end
	
	-- 获得劳动大礼盒
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_UseItemAndMsg(tMayDay2017Activity_MonsterReward["GetBox"],nUserId)
	
	-- 告知玩家今日不可再获得
	if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
		Sys_MsgBox(tMayDay2017Activity_Text["BoxFull"],nil,nil,nUserId)
		return
	end
end

-- 杀怪排行榜
function MayDay2017Activity_KillRank(nNum,nUserId)
	-- 将玩家数据放入第11位
	local nSum = 6
	local nDay = tonumber(os.date("%d"))
	local tTable = tMayDay2017Activity_Rank
	tTable[nSum]["Id"] = nUserId
	tTable[nSum]["Name"] = Get_UserName(nUserId)
	tTable[nSum]["KillNum"] = nNum
	
	-- 若已经存在于排行榜
	for i = 1, 5, 1 do 
		if tTable[i]["Id"] == nUserId then
			nSum = 5
			tTable[i]["Name"] = Get_UserName(nUserId)
			tTable[i]["KillNum"] = nNum
			break
		end
	end
	
	-- 排序
	for j = 1, nSum - 1 do
		for k = j + 1, nSum do
			if tTable[j]["KillNum"] < tTable[k]["KillNum"] then
				tTable[j],tTable[k] = tTable[k],tTable[j]
			end
		end
	end
end
		
-- 劳动赠点包
function MayDay2017Activity_MEmoney(nItemId)
	local nUserId = Get_UserId()
	-- 判断是否过期
	if not Sys_ChkFullTime(tMayDay2017Activity_Cont["PackageTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMayDay2017Activity_Text["NotActTime"]) 
			sText = string.format(tMayDay2017Activity_Cont["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText,nUserId)
		end
		return
	end
	
	-- 随机玩家获得的赠点天石数
	local nStartNum = tMayDay2017Activity_Rate[2]["StartNum"]
	local nEndNum = tMayDay2017Activity_Rate[2]["EndNum"]
	local nAddEMoneyMono = math.random(nStartNum,nEndNum)
	tMayDay2017Activity_Award[nItemId]["RewardEMoneyMono"]["Value"] = nAddEMoneyMono
	RewardTemplate_UseItemAndMsg(tMayDay2017Activity_Award[nItemId],nUserId)
end
	
-- 点击 天地逍遥服外套碎片
function MayDay2017Activity_Compose(nItemId)
	local nUserId = Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tMayDay2017Activity_Cont["PackageTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMayDay2017Activity_Text["NotActTime"])
			sText = string.format(tMayDay2017Activity_Cont["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText,nUserId)
		end
		return
	end

	-- 判断物品个数
	if not Item_ChkMulItem(nItemId,nItemId,tMayDay2017Activity_Award[nItemId]["Compose"]) then
		User_TalkChannel2005(tMayDay2017Activity_Text["NotEnough"]) 
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tMayDay2017Activity_Award[nItemId]["Space"]) then
		User_TalkChannel2005(tMayDay2017Activity_Text["NoSpace"]) 
		return
	end
	
	-- 给奖励
	if not Item_DelMulItem(nItemId,nItemId,tMayDay2017Activity_Cont["Compose"]) then
		return
	end
	tMayDay2017Activity_Award[nItemId][1][4]["RewardBroadCast"] = tMayDay2017Activity_Text["RewardBroadCast"]
	RewardTemplate_NewRandomNoTip(tMayDay2017Activity_Award[nItemId],1)

end
	
-- 打开礼包
function MayDay2017Activity_OpenPackage(nItemId)
	local nUserId = Get_UserId()
	local sParam = tMayDay2017Activity_Cont["PackageTime"]
	if nItemId == tMayDay2017Activity_Cont["Box"] then
		sParam = tMayDay2017Activity_Cont["ActiveTime"]
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(sParam) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMayDay2017Activity_Text["NotActTime"]) 
			sText = string.format(tMayDay2017Activity_Cont["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText,nUserId)
		end
		return
	end
	
	-- 判断是否为概率礼包
	if tMayDay2017Activity_Award[nItemId][1] == nil then
		RewardTemplate_UseItemAndMsg(tMayDay2017Activity_Award[nItemId],nUserId)
		return
	end

	-- 删物品，得奖励
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	RewardTemplate_NewRandomNoTip(tMayDay2017Activity_Award[nItemId],1)
end
	
-- 兑换商店
function MayDay2017Activity_ExcShop(nNpcId)
	local nUserId = Get_UserId()
	User_OpenExchangeShop(nNpcId,nUserId)
end

-- 每日自检
function MayDay2017Activity_DailyCheck()
	local nDay = tonumber(os.date("%d")) - 1
	local nGlobalId1 = tMayDay2017Activity_Cont["GlobalId1"]
	local nGlobalId2 = tMayDay2017Activity_Cont["GlobalId2"]
	
	-- 判断是否已经执行过
	if Get_SysDynaGlobalData0(nGlobalId1) == nDay then
		return
	end
	-- 记录1~5名
	for i = 1, 5 do
		local nUserId = tMayDay2017Activity_Rank[i]["Id"]
		local nNum = tMayDay2017Activity_Rank[i]["KillNum"]
		local sName = tMayDay2017Activity_Rank[i]["Name"]
		-- 存杀怪数和名字
		Sys_SetSynaGlobalData(nGlobalId1,i,nNum)
		Sys_SetSynaGlobalDataStr(nGlobalId1,i,sName)
		-- 存userid和领取状态
		Sys_SetSynaGlobalData(nGlobalId2,i,nUserId)
		Sys_SetSynaGlobalDataStr(nGlobalId2,i,tMayDay2017Activity_Text["NotClaim"])
	end
	
	--	-- 记录6~10名
	--	for j = 6, 10 do
	--		local nUserId = tMayDay2017Activity_Rank[j]["Id"]
	--		local nNum = tMayDay2017Activity_Rank[j]["KillNum"]
	--		local sName = tMayDay2017Activity_Rank[j]["Name"]
	--		Sys_SetSynaGlobalData(nGlobalId2,j - 5,nNum)
	--		Sys_SetSynaGlobalDataStr(nGlobalId2,j - 5,sName)
	--		if nUserId ~= 0 then 
	--			-- 打掩码，用于给奖励
	--			Task_SetStatistic(nEvent,nType,j,1,nUserId)
	--			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	--		end
	--	end	
	-- local nUserId = Get_UserId()
	-- 重置
	for k,v in pairs(tMayDay2017Activity_Rank) do
		v["Id"] = 0
		v["Name"] = tMayDay2017Activity_Text["Nobody"]
		v["KillNum"] = 0
	end
	
	-- 标记已执行过
	Sys_SetSynaGlobalData0(nGlobalId1,nDay)
end
	

-- 领取排行榜奖励
function MayDay2017Activity_EffectReward()
	local nIndex = MayDay2017Activity_CheckConfirm()
	if nIndex <= 0 then
		return
	end
	local nGlobalId2 = tMayDay2017Activity_Cont["GlobalId2"]
	local tReward = tMayDay2017Activity_RankReward[nIndex]
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tMayDay2017Activity_Cont["Space"]) then
		Sys_MsgBox(tMayDay2017Activity_Text["RankBagFull"]) -- 105提示：获得了但背包空间不足
		return
	end
	Sys_SetSynaGlobalDataStr(nGlobalId2,nIndex,tMayDay2017Activity_Text["Claimed"])
	RewardTemplate_UseItem(tReward)
	return true
end


-- 排行榜奖励确定
function MayDay2017Activity_CheckConfirm()
	local nGlobalId2 = tMayDay2017Activity_Cont["GlobalId2"]
	local nUserId = Get_UserId()
	local nIndex = 0
	-- 判断是否有领奖资格
	for i = 1, 5 do 
		if nUserId == Get_SysDynaGlobalData(nGlobalId2,i) then
			nIndex = i
		end
	end
	if nIndex == 0 then
		return 0
	end
	
	-- 判断是否已领取
	if Get_SysDynaGlobalDataStr(nGlobalId2,nIndex) == tMayDay2017Activity_Text["Claimed"] then
		return -1
	end
	return nIndex
end

-- 是否进入排行榜
function MayDay2017Activity_IfInRank()
	local nUserId = Get_UserId()
	for i = 1, 5 do 
		if tMayDay2017Activity_Rank[i]["Id"] == nUserId then
			return true
		end
	end
	return false
end

-- 今日排行榜信息刷新
function MayDay2017Activity_CheckRank(nNpcId,sPoint)
	local nDay = tonumber(os.date("%d"))
	local sKillNum = ""
	
	-- 排行榜未生成
	if not Sys_ChkDayTime(tMayDay2017Activity_Cont["KillTime"]) or tMayDay2017Activity_Rank[1]["Id"] == 0 then
		tNpcGossip[nNpcId]["Text511"] = string.format(tMayDay2017Activity_Text["RankTop"],nDay)
		tNpcGossip[nNpcId]["Text513"] = tMayDay2017Activity_Text["RankLine"]
		tNpcGossip[nNpcId]["Text514"] = string.format(tMayDay2017Activity_Text["RankBot"],sKillNum)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	-- 初始化排行榜边框
	if not MayDay2017Activity_IfInRank() then
		local nNum = MayDay2017Activity_GetKillNum()
		sKillNum = string.format(tMayDay2017Activity_Text["NoRankKill"],nNum)
	end
	tNpcGossip[nNpcId]["Text211"] = string.format(tMayDay2017Activity_Text["RankTop"],nDay)
	tNpcGossip[nNpcId]["Text221"] = string.format(tMayDay2017Activity_Text["RankTop"],nDay)
	tNpcGossip[nNpcId]["Text217"] = tMayDay2017Activity_Text["RankLine"]
	tNpcGossip[nNpcId]["Text227"] = tMayDay2017Activity_Text["RankLine"]
	tNpcGossip[nNpcId]["Text218"] = string.format(tMayDay2017Activity_Text["RankBot"],sKillNum)
	tNpcGossip[nNpcId]["Text228"] = string.format(tMayDay2017Activity_Text["RankBot"],sKillNum)
	
	-- 初始化排行1~5名
	local nLeft = tMayDay2017Activity_Cont["Left"]
	local nMiddle = tMayDay2017Activity_Cont["Middle"]
	local nRight = tMayDay2017Activity_Cont["Right"]
	for i = 1, 5 do
		local sIndex = "Text2"..(i+11)
		local sName = tMayDay2017Activity_Rank[i]["Name"]
		local nKillNum = tMayDay2017Activity_Rank[i]["KillNum"]
		local sLeft = string.format(tMayDay2017Activity_Text["RankNum"],i)
		local sMiddle = string.format(tMayDay2017Activity_Text["RankKill"],nKillNum)
		local sRight = string.format(tMayDay2017Activity_Text["RankName"],sName)
		tNpcGossip[nNpcId][sIndex] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight)
		local nUserId = Get_UserId()
	end
	
	-- 初始化排行6~10名
	--	for j = 6, 10 do  
	--		local sIndex = "Text2"..(j+16)
	--		local sName = tMayDay2017Activity_Rank[j]["Name"]
	--		local nKillNum = tMayDay2017Activity_Rank[j]["KillNum"]
	--		local sLeft = string.format(tMayDay2017Activity_Text["RankNum"],j)
	--		local sMiddle = string.format(tMayDay2017Activity_Text["RankKill"],nKillNum)
	--		local sRight = string.format(tMayDay2017Activity_Text["RankName"],sName)
	--		tNpcGossip[nNpcId][sIndex] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight)
	--	end
	LinkNpcGossipFunc_New(nNpcId,sPoint)
end

-- 昨日排行榜信息刷新
function MayDay2017Activity_YesterdayRank(nNpcId,sPoint)
	local nDay = tonumber(os.date("%d")) - 1
	local nGlobalId1 = tMayDay2017Activity_Cont["GlobalId1"]
	local nGlobalId2 = tMayDay2017Activity_Cont["GlobalId2"]
	
	-- 排行榜未生成
	-- if not Sys_ChkDayTime(tMayDay2017Activity_Cont["KillTime"]) or Get_SysDynaGlobalData1(nGlobalId1) == 0 then
	if not Get_SysDynaGlobalData0(nGlobalId1) == nDay then
		tNpcGossip[nNpcId]["Text521"] = string.format(tMayDay2017Activity_Text["RankTop"],nDay)
		tNpcGossip[nNpcId]["Text523"] = tMayDay2017Activity_Text["RankLine"]
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 初始化排行榜边框
	tNpcGossip[nNpcId]["Text311"] = string.format(tMayDay2017Activity_Text["RankTop"],nDay)
	tNpcGossip[nNpcId]["Text321"] = string.format(tMayDay2017Activity_Text["RankTop"],nDay)
	tNpcGossip[nNpcId]["Text317"] = tMayDay2017Activity_Text["RankLine"]
	tNpcGossip[nNpcId]["Text327"] = tMayDay2017Activity_Text["RankLine"]
	
	-- 初始化排行1~5名
	local nLeft = tMayDay2017Activity_Cont["Left"]
	local nMiddle = tMayDay2017Activity_Cont["Middle"]
	local nRight = tMayDay2017Activity_Cont["Right"]
	for i = 1, 5 do
		local sIndex = "Text3"..(i+11)
		local sName = Get_SysDynaGlobalDataStr(nGlobalId1,i)
		local nKillNum = Get_SysDynaGlobalData(nGlobalId1,i)
		local sLeft = string.format(tMayDay2017Activity_Text["RankNum"],i)
		local sMiddle = string.format(tMayDay2017Activity_Text["RankKill"],nKillNum)
		local sRight = string.format(tMayDay2017Activity_Text["RankName"],sName)
		tNpcGossip[nNpcId][sIndex] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight)
	end
	
	-- 初始化排行6~10名
	--	for j = 6, 10 do  
	--		local sIndex = "Text3"..(j+16)
	--		local sName = Get_SysDynaGlobalDataStr(nGlobalId2,j-5)
	--		local nKillNum = Get_SysDynaGlobalData(nGlobalId2,j-5)
	--		local sLeft = string.format(tMayDay2017Activity_Text["RankNum"],j)
	--		local sMiddle = string.format(tMayDay2017Activity_Text["RankKill"],nKillNum)
	--		local sRight = string.format(tMayDay2017Activity_Text["RankName"],sName)
	--		tNpcGossip[nNpcId][sIndex] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight)
	--	end
	LinkNpcGossipFunc_New(nNpcId,sPoint)
end
		
-- 正气令添加
function MayDay2017Activity_Daily()
	-- 判断活动时间
	if Sys_ChkFullTime(tMayDay2017Activity_Cont["ActiveTime"]) then 
		RewardTemplate_UseItem(tMayDay2017Activity_Daily["Award"])
	end
end
---------------------------------------------------------------------------------------------	
-- 节日兑换大使
tNpcFace[4573] = 0
tNpcGossip[11354]= tNpcGossip[11354] or DefaultNpc:new{}
tNpcGossip[11354]["OptionHidden"] = 1

tNpcGossip[11354]["DialogueText"] = tMayDay2017Activity_Text[11354]
--活动前对话
tNpcGossip[11354]["Text1-1"] = {101}
tNpcGossip[11354]["tOption1-1"] = {101}

	
-- 劳模老林
tNpcFace[4574] = 34
tNpcGossip[11355]= tNpcGossip[11355] or DefaultNpc:new{}
tNpcGossip[11355]["OptionHidden"] = 1

tNpcGossip[11355]["DialogueText"] = tMayDay2017Activity_Text[11355]
--活动前对话
tNpcGossip[11355]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[11355]["tOption1-1"] = {111}
tNpcGossip[11355]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tMayDay2017Activity_Cont["BeforeTime"])
end
--活动结束后的对白
tNpcGossip[11355]["Text1-3"] = {131,132}
tNpcGossip[11355]["tOption1-3"] = {131}
tNpcGossip[11355]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tMayDay2017Activity_Cont["AfterTime"])
end
--活动中对白
tNpcGossip[11355]["Text1-2"] = {121,122,123,124,125,126,127}
tNpcGossip[11355]["tOption1-2"] = {121,122,123,124,125}
tNpcGossip[11355]["OptionFunc121"] = "MayDay2017Activity_CheckRank</N>11355</S>2-1"
tNpcGossip[11355]["OptionChkFunc121"] = function()
	local nLevel = tMayDay2017Activity_Cont["Level"]
	local nMetem = tMayDay2017Activity_Cont["Metem"]
	local nUserId = Get_UserId()
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
end
tNpcGossip[11355]["OptionFunc122"] = "MayDay2017Activity_YesterdayRank</N>11355</S>3-1"
tNpcGossip[11355]["OptionChkFunc122"] = function()
	local nLevel = tMayDay2017Activity_Cont["Level"]
	local nMetem = tMayDay2017Activity_Cont["Metem"]
	local nUserId = Get_UserId()
	return Sys_ChkFullTime(tMayDay2017Activity_Cont["YesterdayTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
end
tNpcGossip[11355]["OptionFunc123"] = "MayDay2017Activity_ExcShop</N>11355"
tNpcGossip[11355]["OptionChkFunc123"] = function()
	local nLevel = tMayDay2017Activity_Cont["Level"]
	local nMetem = tMayDay2017Activity_Cont["Metem"]
	local nUserId = Get_UserId()
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
end
tNpcGossip[11355]["OptionChkFunc124"] = function()
	local nLevel = tMayDay2017Activity_Cont["Level"]
	local nMetem = tMayDay2017Activity_Cont["Metem"]
	local nUserId = Get_UserId()
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
end
tNpcGossip[11355]["OptionChkFunc125"] = function()
	local nLevel = tMayDay2017Activity_Cont["Level"]
	local nMetem = tMayDay2017Activity_Cont["Metem"]
	local nUserId = Get_UserId()
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
end
tNpcGossip[11355]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tMayDay2017Activity_Cont["ActiveTime"])
end	

-- 查看今日排行榜1~5
tNpcGossip[11355]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[11355]["tOption2-1"] = {212,213}
-- tNpcGossip[11355]["OptionFunc211"] = "MayDay2017Activity_CheckRank</N>11355</S>2-2"
tNpcGossip[11355]["OptionPoint212"] = "4-1"

-- 查看今日排行榜6~10
-- tNpcGossip[11355]["Text2-2"] = {221,222,223,224,225,226,227}
-- tNpcGossip[11355]["tOption2-2"] = {221,222}
-- tNpcGossip[11355]["OptionFunc221"] = "MayDay2017Activity_CheckRank</N>11355</S>2-1"
-- tNpcGossip[11355]["OptionPoint222"] = "4-1"

-- 查看昨日排行榜1~5
tNpcGossip[11355]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[11355]["tOption3-1"] = {312,313,314}
-- tNpcGossip[11355]["OptionFunc311"] = "MayDay2017Activity_YesterdayRank</N>11355</S>3-2"
tNpcGossip[11355]["OptionFunc312"] = "MayDay2017Activity_EffectReward"
tNpcGossip[11355]["OptionChkFunc312"] = function()
	if MayDay2017Activity_CheckConfirm() > 0 then
		return true
	end 
	return false
end	
tNpcGossip[11355]["OptionPoint313"] = "4-2"
tNpcGossip[11355]["OptionChkFunc313"] = function()
	if MayDay2017Activity_CheckConfirm() < 0 then
		return true
	end 
	return false
end	

-- 查看昨日排行榜6~10
-- tNpcGossip[11355]["Text3-2"] = {321,322,323,324,325,326,327}
-- tNpcGossip[11355]["tOption3-2"] = {321,322,323,324}
-- tNpcGossip[11355]["OptionFunc321"] = "MayDay2017Activity_YesterdayRank</N>11355</S>3-1"
-- tNpcGossip[11355]["OptionFunc322"] = "MayDay2017Activity_EffectReward"
-- tNpcGossip[11355]["OptionChkFunc322"] = function()
-- 	if MayDay2017Activity_CheckConfirm() > 0 then
-- 		return true
-- 	end 
-- 	return false
-- end	
-- tNpcGossip[11355]["OptionPoint323"] = "4-2"
-- tNpcGossip[11355]["OptionChkFunc323"] = function()
-- 	if MayDay2017Activity_CheckConfirm() < 0 then
-- 		return true
-- 	end 
-- 	return false
-- end	

-- 排行榜奖励
tNpcGossip[11355]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[11355]["tOption4-1"] = {411}
tNpcGossip[11355]["OptionFunc411"] = "MayDay2017Activity_CheckRank</N>11355</S>2-1"

-- 已领取过排行榜奖励
tNpcGossip[11355]["Text4-2"] = {421,422}
tNpcGossip[11355]["tOption4-2"] = {421}

-- 今日排行榜未生成
tNpcGossip[11355]["Text5-1"] = {511,512,513,514}
tNpcGossip[11355]["tOption5-1"] = {511,512}
tNpcGossip[11355]["OptionPoint511"] = "4-1"
tNpcGossip[11355]["OptionPoint512"] = "1-2"

-- 昨日排行榜未生成
tNpcGossip[11355]["Text5-2"] = {521,522,523,524}
tNpcGossip[11355]["tOption5-2"] = {521}
tNpcGossip[11355]["OptionPoint521"] = "1-2"

---------------------------------------------------------------------------------------------	
-- 劳模勋章
tItem[3302260] = tItem[3302260] or {}
tItem[3302260]["Function"] = function(nItemId,sItemName)
	MayDay2017Activity_ClickCoin(nItemId,11355)
end	
-- 各种礼包
tItem[3302261] = tItem[3302261] or {}
tItem[3302262] = tItem[3302261] or {}
tItem[3302263] = tItem[3302261] or {}
tItem[3302264] = tItem[3302261] or {}
tItem[3302265] = tItem[3302261] or {}
tItem[3302266] = tItem[3302261] or {}
tItem[3302267] = tItem[3302261] or {}
tItem[3302268] = tItem[3302261] or {}
tItem[3302269] = tItem[3302261] or {}
tItem[3302270] = tItem[3302261] or {}
tItem[3302261]["Function"] = function(nItemId,sItemName)
	MayDay2017Activity_OpenPackage(nItemId)
end	
-- 天地逍遥服外套碎片
tItem[3302271] = tItem[3302271] or {}
tItem[3302271]["Function"] = function(nItemId,sItemName)
	MayDay2017Activity_Compose(nItemId)
end		
-- 劳动赠点包
tItem[3302272] = tItem[3302272] or {}
tItem[3302272]["Function"] = function(nItemId,sItemName)
	MayDay2017Activity_MEmoney(nItemId)
end	

	
	
------------------------------------- 怪物模板 ----------------------------------------------	
-- local tMayDay2017Activity_KillMonster = {}
-- tMayDay2017Activity_KillMonster["ActivityTime"] = "2017-05-01 00:00 2017-05-07 23:59"
-- tMayDay2017Activity_KillMonster["Function"]= MayDay2017Activity_KillMonster
-- tMayDay2017Activity_KillMonster["Area"] = {1,2,3,4,5,6,7,8,9,10}

-- table.insert(tMonsterDrop_AreaLoad,tMayDay2017Activity_KillMonster)
------------------------------------- 系统自检 ----------------------------------------------
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],MayDay2017Activity_DailyCheck)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],MayDay2017Activity_DailyCheck)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],MayDay2017Activity_DailyCheck)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],MayDay2017Activity_DailyCheck)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],MayDay2017Activity_DailyCheck)









