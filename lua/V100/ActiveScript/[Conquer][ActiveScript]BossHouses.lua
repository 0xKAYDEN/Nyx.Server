------------------------------------------------------------------------------------
--Name：       190705[简体征服][活动脚本]BOSS之家玩法制作
--Creator:      陈莺
--Created:     2019-07-05
------------------------------------------------------------------------------------
-- 命名前缀
-- PublicBOSS_
-- LOGID: 18000207
------------------------------------------------------------------------------------

-- 记录玩家一天领取礼包数量
local tPublicBOSS_TempTable = {}
	-- 记录玩家进副本地图  userid 做索引
local tPublicBOSS_UserPos = {}
	
-- 记录地图上还有没有boss
local tPublicBOSS_BrushBoss = {}
	tPublicBOSS_BrushBoss[5355] = 0
	tPublicBOSS_BrushBoss[5356] = 0
	tPublicBOSS_BrushBoss[5357] = 0
	tPublicBOSS_BrushBoss[5358] = 0
	tPublicBOSS_BrushBoss[5359] = 0

	-- 世界boss点

	tPublicBOSS_BrushBoss["Pos"] = {}
	-- 晶魄血妖·魔
	tPublicBOSS_BrushBoss["Pos"][5355] = {}
	tPublicBOSS_BrushBoss["Pos"][5355]["PosX"] = 236
	tPublicBOSS_BrushBoss["Pos"][5355]["PosY"] = 275
	tPublicBOSS_BrushBoss["Pos"][5355]["GenId"] = 28077
	-- 啸海狂魔·魔
	tPublicBOSS_BrushBoss["Pos"][5356] = {}
	tPublicBOSS_BrushBoss["Pos"][5356]["PosX"] = 318
	tPublicBOSS_BrushBoss["Pos"][5356]["PosY"] = 596
	tPublicBOSS_BrushBoss["Pos"][5356]["GenId"] = 28078
	-- 禁天邪兽·魔
	tPublicBOSS_BrushBoss["Pos"][5357] = {}
	tPublicBOSS_BrushBoss["Pos"][5357]["PosX"] = 689
	tPublicBOSS_BrushBoss["Pos"][5357]["PosY"] = 704
	tPublicBOSS_BrushBoss["Pos"][5357]["GenId"] = 28079
	-- 邪龙护法·魔
	tPublicBOSS_BrushBoss["Pos"][5358] = {}
	tPublicBOSS_BrushBoss["Pos"][5358]["PosX"] = 554
	tPublicBOSS_BrushBoss["Pos"][5358]["PosY"] = 362
	tPublicBOSS_BrushBoss["Pos"][5358]["GenId"] = 28080

	-- 妖后瑶姬·魔
	tPublicBOSS_BrushBoss["Pos"][5359] = {}
	tPublicBOSS_BrushBoss["Pos"][5359]["PosX"] = 453
	tPublicBOSS_BrushBoss["Pos"][5359]["PosY"] = 481
	tPublicBOSS_BrushBoss["Pos"][5359]["GenId"] = 28081

local tPublicBOSS_Spy_Mud = {}
	tPublicBOSS_Spy_Mud[3321073] = {}
	tPublicBOSS_Spy_Mud[3321073]["Status"] = 139
	tPublicBOSS_Spy_Mud[3321073]["Power"] = 1
	tPublicBOSS_Spy_Mud[3321073]["Secs"] = 1800
	tPublicBOSS_Spy_Mud[3321073]["Times"] = 1
	tPublicBOSS_Spy_Mud[3321073]["RemainTime"] = 1800
	tPublicBOSS_Spy_Mud[3321073]["EndTime"] = 1
	tPublicBOSS_Spy_Mud[3321073]["Recordable"] = 0
	
	tPublicBOSS_Spy_Mud[3313229] = {}
	tPublicBOSS_Spy_Mud[3313229]["Status"] = 139
	tPublicBOSS_Spy_Mud[3313229]["Power"] = 1
	tPublicBOSS_Spy_Mud[3313229]["Secs"] = 600
	tPublicBOSS_Spy_Mud[3313229]["Times"] = 1
	tPublicBOSS_Spy_Mud[3313229]["RemainTime"] = 600
	tPublicBOSS_Spy_Mud[3313229]["EndTime"] = 1
	tPublicBOSS_Spy_Mud[3313229]["Recordable"] = 0
	
local tPublicBOSS_Constant = {}
	tPublicBOSS_Constant["Instancetype"] = 328
	tPublicBOSS_Constant["Range"] = 1
	tPublicBOSS_Constant["ItemId"] = 3313261  --宝箱钥匙
	tPublicBOSS_Constant["BoxRandom"] = 5  --宝箱概率
	tPublicBOSS_Constant["LoginLevel"] = 70
	tPublicBOSS_Constant["LoginMetempsychosis"] = 0
	tPublicBOSS_Constant["ShenLongLevel"] = 100
	tPublicBOSS_Constant["ShenLongMetempsychosis"] = 0
	tPublicBOSS_Constant["Emoneylog"] = "1000	898	0	0	%d	"
	-- 活动时间 
	tPublicBOSS_Constant["Time"] = {}
	tPublicBOSS_Constant["Time"]["NoEnter"] = "02:00 07:59"
	
	tPublicBOSS_Constant["Global"] = {}
	--龙珠限量
	tPublicBOSS_Constant["Global"][1] = 53510
	
	-- 地图ID
	tPublicBOSS_Constant["Map"] = {}
	-- 70-99级BOSS之家
	tPublicBOSS_Constant["Map"][1] = 10478
	-- 100-124级BOSS之家
	tPublicBOSS_Constant["Map"][2] = 10479
	-- 125-134级BOSS之家
	tPublicBOSS_Constant["Map"][3] = 10480
	-- 135-150级BOSS之家
	tPublicBOSS_Constant["Map"][4] = 10481
	-- 世界BOSS地图
	tPublicBOSS_Constant["Map"][5] = 10482

	-- 等级限制
	tPublicBOSS_Constant["Level"] = {}
	tPublicBOSS_Constant["Level"][1] = {70,79}
	tPublicBOSS_Constant["Level"][2] = {80,119}
	tPublicBOSS_Constant["Level"][3] = {120,134}
	tPublicBOSS_Constant["Level"][4] = {135,150}

	
	tPublicBOSS_Constant["DynaNpc"]= {}
	tPublicBOSS_Constant["DynaNpc"][1]={}
	tPublicBOSS_Constant["DynaNpc"][1]["NpcName"]=tPublicBOSS_Text["SmallBest"]["NpcName"][1]
	tPublicBOSS_Constant["DynaNpc"][1]["Lookface"]=14550
	tPublicBOSS_Constant["DynaNpc"][1]["ActionId"]=94489977
	tPublicBOSS_Constant["DynaNpc"][1]["NpcId"]=24502
	tPublicBOSS_Constant["DynaNpc"][2]={}
	tPublicBOSS_Constant["DynaNpc"][2]["NpcName"]=tPublicBOSS_Text["SmallBest"]["NpcName"][2]
	tPublicBOSS_Constant["DynaNpc"][2]["Lookface"]=14560
	tPublicBOSS_Constant["DynaNpc"][2]["ActionId"]=94489978
	tPublicBOSS_Constant["DynaNpc"][2]["NpcId"]=24502
	tPublicBOSS_Constant["DynaNpc"][3]={}
	tPublicBOSS_Constant["DynaNpc"][3]["NpcName"]=tPublicBOSS_Text["SmallBest"]["NpcName"][3]
	tPublicBOSS_Constant["DynaNpc"][3]["Lookface"]=14570
	tPublicBOSS_Constant["DynaNpc"][3]["ActionId"]=94489979
	tPublicBOSS_Constant["DynaNpc"][3]["NpcId"]=24502
	tPublicBOSS_Constant["DynaNpc"][4]={}
	tPublicBOSS_Constant["DynaNpc"][4]["NpcName"]=tPublicBOSS_Text["SmallBest"]["NpcName"][4]
	tPublicBOSS_Constant["DynaNpc"][4]["Lookface"]=14580
	tPublicBOSS_Constant["DynaNpc"][4]["ActionId"]=94489980
	tPublicBOSS_Constant["DynaNpc"][4]["NpcId"]=24502


	
	
	
local tPublicBOSS_Log = {}
	--炼器炉
	tPublicBOSS_Log[1] = "0,0,%d,1,18000207,2[1],%d,1"
	--进副本 刷怪
	tPublicBOSS_Log[2] = "0,0,3321074,1,18000207,3,%d,0"
	--进地图
	tPublicBOSS_Log[3] = "0,0,0,0,18000207,3[1],%d,0"
	-- 刷新宝箱
	tPublicBOSS_Log["MoveBox"]="0,%d,%d,%d,18000207,3[1],0,0" 
	
	--杀怪
	tPublicBOSS_Log[4] = "0,0,0,0,18000207,3[2],%d,0"

-- 掩码值
local tPublicBOSS_Stc = {}
	-- 幸运状态掩码
	tPublicBOSS_Stc[3321073] = {}
	tPublicBOSS_Stc[3321073]["EventType"] = 201
	tPublicBOSS_Stc[3321073]["DataType"] = 86
	tPublicBOSS_Stc[3321073]["Data"] = 30	---幸运状态持续的时间（分钟）
	
	tPublicBOSS_Stc[3313229] = {}
	tPublicBOSS_Stc[3313229]["EventType"] = 201
	tPublicBOSS_Stc[3313229]["DataType"] = 86
	tPublicBOSS_Stc[3313229]["Data"] = 10	---幸运状态持续的时间（分钟）
	
	tPublicBOSS_Stc[1]={}
	tPublicBOSS_Stc[1]["EventType"] = 200
	tPublicBOSS_Stc[1]["DataType"] = 42
	tPublicBOSS_Stc[1]["MaxData"] = 3

	tPublicBOSS_Stc[2]={}
	tPublicBOSS_Stc[2]["EventType"] = 201
	tPublicBOSS_Stc[2]["DataType"] = 74
	tPublicBOSS_Stc[2]["Data"] = 1
	
-- 地图落脚点
local tPublicBOSS_MapFoothold = {}
	tPublicBOSS_MapFoothold[10478] = {}
	tPublicBOSS_MapFoothold[10478]["BoundX"] = 206
	tPublicBOSS_MapFoothold[10478]["BoundY"] = 559
	tPublicBOSS_MapFoothold[10478]["Range"] = 5
	tPublicBOSS_MapFoothold[10479] = {}
	tPublicBOSS_MapFoothold[10479]["BoundX"] = 209
	tPublicBOSS_MapFoothold[10479]["BoundY"] = 556
	tPublicBOSS_MapFoothold[10479]["Range"] = 5
	tPublicBOSS_MapFoothold[10480] = {}
	tPublicBOSS_MapFoothold[10480]["BoundX"] = 205
	tPublicBOSS_MapFoothold[10480]["BoundY"] = 555
	tPublicBOSS_MapFoothold[10480]["Range"] = 5
	tPublicBOSS_MapFoothold[10481] = {}
	tPublicBOSS_MapFoothold[10481]["BoundX"] = 204
	tPublicBOSS_MapFoothold[10481]["BoundY"] = 558
	tPublicBOSS_MapFoothold[10481]["Range"] = 5
	tPublicBOSS_MapFoothold[10482] = {}
	tPublicBOSS_MapFoothold[10482]["BoundX"] = 120
	tPublicBOSS_MapFoothold[10482]["BoundY"] = 440
	tPublicBOSS_MapFoothold[10482]["Range"] = 5

local tPublicBOSS_Cont = {}
	tPublicBOSS_Cont["MapId"] = 10482
	-- 	啸海狂魔
	tPublicBOSS_Cont[1] = {}
	tPublicBOSS_Cont[1]["IslandCellX"] = 318
	tPublicBOSS_Cont[1]["IslandCellY"] = 596
	-- 	晶魄血妖
	tPublicBOSS_Cont[2] = {}
	tPublicBOSS_Cont[2]["IslandCellX"] = 236
	tPublicBOSS_Cont[2]["IslandCellY"] = 275
	-- 	邪龙护法
	tPublicBOSS_Cont[3] = {}
	tPublicBOSS_Cont[3]["IslandCellX"] = 554
	tPublicBOSS_Cont[3]["IslandCellY"] = 362
	-- 	禁天邪兽
	tPublicBOSS_Cont[4] = {}
	tPublicBOSS_Cont[4]["IslandCellX"] = 689
	tPublicBOSS_Cont[4]["IslandCellY"] = 704
	-- 	妖后瑶姬
	tPublicBOSS_Cont[5] = {}
	tPublicBOSS_Cont[5]["IslandCellX"] = 453
	tPublicBOSS_Cont[5]["IslandCellY"] = 481
	
----boss点
local tPublicBOSS_BossPosition = {}
	-- 1层  怪等级从低到高
	tPublicBOSS_BossPosition[10478] = {}
	tPublicBOSS_BossPosition[10478][1] = {336,461,25,25,5336}
	tPublicBOSS_BossPosition[10478][2] = {247,328,25,25,5337}
	tPublicBOSS_BossPosition[10478][3] = {383,223,25,25,5338}
	-- 2层
	tPublicBOSS_BossPosition[10479] = {}
	tPublicBOSS_BossPosition[10479][1] = {112,424,27,27,5339}
	tPublicBOSS_BossPosition[10479][2] = {336,464,27,27,5340}
	tPublicBOSS_BossPosition[10479][3] = {248,328,27,27,5341}
	tPublicBOSS_BossPosition[10479][4] = {479,367,27,27,5342}
	-- 3层
	tPublicBOSS_BossPosition[10480] = {}
	tPublicBOSS_BossPosition[10480][1] = {335,463,27,27,5343}
	tPublicBOSS_BossPosition[10480][2] = {247,327,27,27,5344}
	tPublicBOSS_BossPosition[10480][3] = {483,367,27,27,5345}
	tPublicBOSS_BossPosition[10480][4] = {384,224,27,27,5346}
	tPublicBOSS_BossPosition[10480][5] = {623,272,27,27,5347}
	-- 4层
	tPublicBOSS_BossPosition[10481] = {}
	tPublicBOSS_BossPosition[10481][1] = {110,422,27,27,5348}
	tPublicBOSS_BossPosition[10481][2] = {334,462,27,27,5349}
	tPublicBOSS_BossPosition[10481][3] = {246,326,27,27,5350}
	tPublicBOSS_BossPosition[10481][4] = {382,225,27,27,5351}
	tPublicBOSS_BossPosition[10481][5] = {478,366,27,27,5352}
	tPublicBOSS_BossPosition[10481][6] = {494,126,27,27,5353}
	tPublicBOSS_BossPosition[10481][7] = {622,270,27,27,5354}
	
local tPublicBOSS_BossBresh = {}
	tPublicBOSS_BossBresh["GenId"] = {}
	tPublicBOSS_BossBresh["GenId"][5336] = 28057
	tPublicBOSS_BossBresh["GenId"][5337] = 28058
	tPublicBOSS_BossBresh["GenId"][5338] = 28059
	
	tPublicBOSS_BossBresh["GenId"][5339] = 28060
	tPublicBOSS_BossBresh["GenId"][5340] = 28061
	tPublicBOSS_BossBresh["GenId"][5341] = 28062
	tPublicBOSS_BossBresh["GenId"][5342] = 28063
	
	tPublicBOSS_BossBresh["GenId"][5343] = 28064
	tPublicBOSS_BossBresh["GenId"][5344] = 28065
	tPublicBOSS_BossBresh["GenId"][5345] = 28066
	tPublicBOSS_BossBresh["GenId"][5346] = 28067
	tPublicBOSS_BossBresh["GenId"][5347] = 28068
	
	tPublicBOSS_BossBresh["GenId"][5348] = 28069
	tPublicBOSS_BossBresh["GenId"][5349] = 28070
	tPublicBOSS_BossBresh["GenId"][5350] = 28071
	tPublicBOSS_BossBresh["GenId"][5351] = 28072
	tPublicBOSS_BossBresh["GenId"][5352] = 28073
	tPublicBOSS_BossBresh["GenId"][5353] = 28074
	tPublicBOSS_BossBresh["GenId"][5354] = 28075

	tPublicBOSS_BossBresh["Position"] = {}
	tPublicBOSS_BossBresh["Position"]["MapId"] = 10586
	tPublicBOSS_BossBresh["Position"]["PosX"] = 66
	tPublicBOSS_BossBresh["Position"]["PosY"] = 66
	tPublicBOSS_BossBresh["Position"]["GenId"] = 28082

	---回到激情服双龙城
	tPublicBOSS_BossBresh[1] = {}
	tPublicBOSS_BossBresh[1]["MapId"] = 10364
	tPublicBOSS_BossBresh[1]["PosX"] = 312
	tPublicBOSS_BossBresh[1]["PosY"] = 344
	
	---进入神龙岛
	tPublicBOSS_BossBresh[2] = {}
	tPublicBOSS_BossBresh[2]["MapId"] = 10482
	tPublicBOSS_BossBresh[2]["PosX"] = 90
	tPublicBOSS_BossBresh[2]["PosY"] = 407
	
	---回到普通服双龙城
	tPublicBOSS_BossBresh[3] = {}
	tPublicBOSS_BossBresh[3]["MapId"] = 1002
	tPublicBOSS_BossBresh[3]["PosX"] = 365
	tPublicBOSS_BossBresh[3]["PosY"] = 494
-- 怪物掉落
-- Item_1后面的数值表示，=0表示不掉落
-- 银两=1,小爆掉落=2,大爆掉落=3,龙珠=4,挑战令=5,宝箱钥匙=6,鸿蒙灵石=7,流星=8,宝石=9,气力=10,星陨石=11,神纹=12,练功=13,刷新宝箱=14，兑换道具=15，流香酒=16，史诗碎片=17
local tPublicBOSS_MonsterDrop = {}
	-- 70级小怪
	tPublicBOSS_MonsterDrop[5274] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5274]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5274]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5274]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5274]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	7.5%
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	21.5%
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][2]["ItemChance"] = 2150
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][3]["ItemChance"] = 7100
	tPublicBOSS_MonsterDrop[5274]["DropMoney"][3]["Item_1"] = 0
	
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.24%
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][1]["ItemChance"] = 24
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][1]["Item_1"] = 2
	-- 鸿蒙灵石	0.50%
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][2]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][2]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][3]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][4]["ItemChance"] = 9926
	tPublicBOSS_MonsterDrop[5274]["SpecialReward"][4]["Item_1"] = 0
	
	tPublicBOSS_MonsterDrop[5274]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5274]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1.5%
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][1]["Item_1"] = 8
	-- 不掉
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][2]["ItemChance"] = 9850
	tPublicBOSS_MonsterDrop[5274]["RegularReward"][2]["Item_1"] = 0

	-- 78级小怪
	tPublicBOSS_MonsterDrop[5275] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5275]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5275]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5275]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5275]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	7.5%
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	22%
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][2]["ItemChance"] = 2200
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][3]["ItemChance"] = 7050
	tPublicBOSS_MonsterDrop[5275]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.26%
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][1]["ItemChance"] = 26
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][1]["Item_1"] = 2
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][2]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][2]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][3]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][4]["ItemChance"] = 9924
	tPublicBOSS_MonsterDrop[5275]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5275]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5275]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1.7%
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][1]["ItemChance"] = 170
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][1]["Item_1"] = 8
	-- 不掉
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][2]["ItemChance"] = 9830
	tPublicBOSS_MonsterDrop[5275]["RegularReward"][2]["Item_1"] = 0

	-- 85级小怪
	tPublicBOSS_MonsterDrop[5276] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5276]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5276]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5276]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5276]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	7.5%
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	22.5%
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][2]["ItemChance"] = 2250
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][3]["ItemChance"] = 7000
	tPublicBOSS_MonsterDrop[5276]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.28%
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][1]["ItemChance"] = 28
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.03%
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][2]["ItemChance"] = 3
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][4]["Item_1"] = 16
	
	-- 不掉
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][5]["ItemChance"] = 9919
	tPublicBOSS_MonsterDrop[5276]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5276]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5276]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	0.9%
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][2]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][3]["ItemChance"] = 9810
	tPublicBOSS_MonsterDrop[5276]["RegularReward"][3]["Item_1"] = 0

	-- 93级小怪
	tPublicBOSS_MonsterDrop[5277] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5277]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5277]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5277]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5277]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	7.5%
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	23%
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][2]["ItemChance"] = 2300
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][3]["ItemChance"] = 6950
	tPublicBOSS_MonsterDrop[5277]["DropMoney"][3]["Item_1"] = 0
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.3%
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][1]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.03%
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][2]["ItemChance"] = 3
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][5]["ItemChance"] = 9917
	tPublicBOSS_MonsterDrop[5277]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5277]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5277]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.1%
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][2]["ItemChance"] = 110
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][3]["ItemChance"] = 9790
	tPublicBOSS_MonsterDrop[5277]["RegularReward"][3]["Item_1"] = 0

	-- 101级小怪
	tPublicBOSS_MonsterDrop[5278] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5278]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5278]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5278]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5278]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	24%
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][2]["ItemChance"] = 2400
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][3]["ItemChance"] = 6850
	tPublicBOSS_MonsterDrop[5278]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.32%
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][1]["ItemChance"] = 32
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.03%
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][2]["ItemChance"] = 3
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][5]["ItemChance"] = 9915
	tPublicBOSS_MonsterDrop[5278]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5278]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5278]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.2%
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][2]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][3]["ItemChance"] = 9780
	tPublicBOSS_MonsterDrop[5278]["RegularReward"][3]["Item_1"] = 0

	-- 105级小怪
	tPublicBOSS_MonsterDrop[5279] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5279]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5279]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5279]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5279]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	25%
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][2]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][3]["ItemChance"] = 6750
	tPublicBOSS_MonsterDrop[5279]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.34%
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][1]["ItemChance"] = 34
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.04%
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][2]["ItemChance"] = 4
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][5]["ItemChance"] = 9912
	tPublicBOSS_MonsterDrop[5279]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5279]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5279]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.4%
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][2]["ItemChance"] = 140
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][3]["ItemChance"] = 9760
	tPublicBOSS_MonsterDrop[5279]["RegularReward"][3]["Item_1"] = 0

	-- 109级小怪
	tPublicBOSS_MonsterDrop[5280] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5280]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5280]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5280]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5280]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	7.5%
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	26%
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][2]["ItemChance"] = 2600
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][3]["ItemChance"] = 6650
	tPublicBOSS_MonsterDrop[5280]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.36%
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][1]["ItemChance"] = 36
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.04%
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][2]["ItemChance"] = 4
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][5]["ItemChance"] = 9910
	tPublicBOSS_MonsterDrop[5280]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5280]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5280]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.6%
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][2]["ItemChance"] = 160
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][3]["ItemChance"] = 9740
	tPublicBOSS_MonsterDrop[5280]["RegularReward"][3]["Item_1"] = 0

	-- 113级小怪
	tPublicBOSS_MonsterDrop[5281] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5281]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5281]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5281]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5281]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	27%
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][2]["ItemChance"] = 2700
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][3]["ItemChance"] = 6550
	tPublicBOSS_MonsterDrop[5281]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.38%
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][1]["ItemChance"] = 38
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.04%
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][2]["ItemChance"] = 4
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][5]["ItemChance"] = 9908
	tPublicBOSS_MonsterDrop[5281]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5281]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5281]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.8%
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][2]["ItemChance"] = 180
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][2]["Item_1"] = 9
	-- 气力	0.25%
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][3]["ItemChance"] = 0
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][3]["Item_1"] = 10
	-- 不掉
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][4]["ItemChance"] = 9720
	tPublicBOSS_MonsterDrop[5281]["RegularReward"][4]["Item_1"] = 0

	-- 117级小怪
	tPublicBOSS_MonsterDrop[5282] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5282]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5282]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5282]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5282]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	28%
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][2]["ItemChance"] = 2800
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][3]["ItemChance"] = 6450
	tPublicBOSS_MonsterDrop[5282]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.4%
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][1]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.04%
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][2]["ItemChance"] = 4
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][3]["Item_1"] = 7
	
	-- 流香酒	0.50%
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][4]["ItemChance"] = 0--50
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][5]["ItemChance"] = 9906
	tPublicBOSS_MonsterDrop[5282]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5282]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5282]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	1%
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][1]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	2%
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][2]["ItemChance"] = 200
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][2]["Item_1"] = 9
	-- 气力	0.30%
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][3]["ItemChance"] = 0
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][3]["Item_1"] = 10
	-- 不掉
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][4]["ItemChance"] = 9700
	tPublicBOSS_MonsterDrop[5282]["RegularReward"][4]["Item_1"] = 0

	-- 121级小怪
	tPublicBOSS_MonsterDrop[5283] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5283]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5283]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5283]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5283]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	29%
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][2]["ItemChance"] = 2900
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][3]["ItemChance"] = 6350
	tPublicBOSS_MonsterDrop[5283]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.42%
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][1]["ItemChance"] = 42
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.04%
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][2]["ItemChance"] = 4
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][5]["ItemChance"] = 9904
	tPublicBOSS_MonsterDrop[5283]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5283]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5283]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.8%
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][1]["ItemChance"] = 80
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.2%
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][2]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][2]["Item_1"] = 9
	-- 气力	0.5%
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.5%
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][4]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][4]["Item_1"] = 11
	-- 不掉
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][5]["ItemChance"] = 9700
	tPublicBOSS_MonsterDrop[5283]["RegularReward"][5]["Item_1"] = 0

	-- 123级小怪
	tPublicBOSS_MonsterDrop[5284] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5284]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5284]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5284]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5284]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	30%
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][2]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][3]["ItemChance"] = 6250
	tPublicBOSS_MonsterDrop[5284]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.43%
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][1]["ItemChance"] = 43
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][5]["ItemChance"] = 9902
	tPublicBOSS_MonsterDrop[5284]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5284]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.6%
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][1]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	0.9%
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][2]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][2]["Item_1"] = 9
	-- 气力	0.7%
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][3]["ItemChance"] = 70
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.6%
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][4]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	0.3%
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][5]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][5]["Item_1"] = 12
	-- 不掉
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][6]["ItemChance"] = 9690
	tPublicBOSS_MonsterDrop[5284]["RegularReward"][6]["Item_1"] = 0

	-- 126级小怪
	tPublicBOSS_MonsterDrop[5285] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5285]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5285]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5285]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5285]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	31%
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][2]["ItemChance"] = 3100
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][3]["ItemChance"] = 6150
	tPublicBOSS_MonsterDrop[5285]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.44%
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][1]["ItemChance"] = 44
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][5]["ItemChance"] = 9901
	tPublicBOSS_MonsterDrop[5285]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5285]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.4%
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][1]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	0.6%
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][2]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][2]["Item_1"] = 9
	-- 气力	0.9%
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][3]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.7%
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][4]["ItemChance"] = 70
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	0.6%
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][5]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][5]["Item_1"] = 12
	-- 不掉
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][6]["ItemChance"] = 9680
	tPublicBOSS_MonsterDrop[5285]["RegularReward"][6]["Item_1"] = 0

	-- 128级小怪
	tPublicBOSS_MonsterDrop[5286] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5286]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5286]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5286]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5286]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	32%
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][2]["ItemChance"] = 3200
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][3]["ItemChance"] = 6050
	tPublicBOSS_MonsterDrop[5286]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.45%
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][1]["ItemChance"] = 45
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][5]["ItemChance"] = 9900
	tPublicBOSS_MonsterDrop[5286]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5286]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.2%
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][1]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	0.3%
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][2]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][2]["Item_1"] = 9
	-- 气力	1.1%
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][3]["ItemChance"] = 110
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.8%
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][4]["ItemChance"] = 80
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	0.6%
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][5]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][5]["Item_1"] = 12
	-- 练功	0.3%
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][6]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][6]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][7] = {}
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][7]["ItemChance"] = 9670
	tPublicBOSS_MonsterDrop[5286]["RegularReward"][7]["Item_1"] = 0

	-- 130级小怪
	tPublicBOSS_MonsterDrop[5287] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5287]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5287]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5287]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5287]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	33%
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][2]["ItemChance"] = 3300
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][3]["ItemChance"] = 5950
	tPublicBOSS_MonsterDrop[5287]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.46%
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][1]["ItemChance"] = 46
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.4%
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][3]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][5]["ItemChance"] = 9909
	tPublicBOSS_MonsterDrop[5287]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5287]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5287]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.3%
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][1]["ItemChance"] = 130
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	0.9%
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][2]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.6%
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][3]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][3]["Item_1"] = 12
	-- 练功	0.7%
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][4]["ItemChance"] = 70
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][5]["ItemChance"] = 9650
	tPublicBOSS_MonsterDrop[5287]["RegularReward"][5]["Item_1"] = 0

	-- 133级小怪
	tPublicBOSS_MonsterDrop[5288] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5288]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5288]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5288]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5288]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	34%
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][2]["ItemChance"] = 3400
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][3]["ItemChance"] = 5850
	tPublicBOSS_MonsterDrop[5288]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.47%
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][1]["ItemChance"] = 47
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.2%
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][3]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][5]["ItemChance"] = 9928
	tPublicBOSS_MonsterDrop[5288]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5288]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5288]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.4%
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][1]["ItemChance"] = 140
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.6%
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][3]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][3]["Item_1"] = 12
	-- 练功	0.8%
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][4]["ItemChance"] = 80
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][5]["ItemChance"] = 9620
	tPublicBOSS_MonsterDrop[5288]["RegularReward"][5]["Item_1"] = 0

	-- 136级小怪
	tPublicBOSS_MonsterDrop[5289] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5289]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5289]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5289]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5289]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	35%
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][2]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][3]["ItemChance"] = 5750
	tPublicBOSS_MonsterDrop[5289]["DropMoney"][3]["Item_1"] = 0


	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.48%
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][1]["ItemChance"] = 48
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][4]["ItemChance"] = 9947
	tPublicBOSS_MonsterDrop[5289]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5289]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5289]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.7%
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][3]["ItemChance"] = 70
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][3]["Item_1"] = 12
	-- 练功	0.9%
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][4]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][5]["ItemChance"] = 9590
	tPublicBOSS_MonsterDrop[5289]["RegularReward"][5]["Item_1"] = 0

	-- 138级小怪
	tPublicBOSS_MonsterDrop[5290] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5290]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5290]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5290]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5290]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	36%
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][2]["ItemChance"] = 3600
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][3]["ItemChance"] = 5650
	tPublicBOSS_MonsterDrop[5290]["DropMoney"][3]["Item_1"] = 0


	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.49%
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][1]["ItemChance"] = 49
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][4]["ItemChance"] = 9946
	tPublicBOSS_MonsterDrop[5290]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5290]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5290]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.7%
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][3]["ItemChance"] = 70
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1%
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][4]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][5]["ItemChance"] = 9580
	tPublicBOSS_MonsterDrop[5290]["RegularReward"][5]["Item_1"] = 0

	-- 139级小怪
	tPublicBOSS_MonsterDrop[5291] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5291]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5291]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5291]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5291]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	37%
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][2]["ItemChance"] = 3700
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][3]["ItemChance"] = 5550
	tPublicBOSS_MonsterDrop[5291]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.5%
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][1]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][4]["ItemChance"] = 9945
	tPublicBOSS_MonsterDrop[5291]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5291]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5291]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.8%
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][3]["ItemChance"] = 80
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1%
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][4]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][5]["ItemChance"] = 9570
	tPublicBOSS_MonsterDrop[5291]["RegularReward"][5]["Item_1"] = 0

	-- 141级小怪
	tPublicBOSS_MonsterDrop[5292] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5292]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5292]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5292]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5292]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	38%
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][2]["ItemChance"] = 3800
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][3]["ItemChance"] = 5450
	tPublicBOSS_MonsterDrop[5292]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.51%
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][1]["ItemChance"] = 51
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][4]["ItemChance"] = 9944
	tPublicBOSS_MonsterDrop[5292]["SpecialReward"][4]["Item_1"] = 0
	
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5292]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5292]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.8%
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][3]["ItemChance"] = 80
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.1%
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][4]["ItemChance"] = 110
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][5]["ItemChance"] = 9560
	tPublicBOSS_MonsterDrop[5292]["RegularReward"][5]["Item_1"] = 0

	-- 143级小怪
	tPublicBOSS_MonsterDrop[5293] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5293]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5293]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5293]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5293]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	39%
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][2]["ItemChance"] = 3900
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][3]["ItemChance"] = 5350
	tPublicBOSS_MonsterDrop[5293]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.52%
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][1]["ItemChance"] = 52
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][4]["ItemChance"] = 9943
	tPublicBOSS_MonsterDrop[5293]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5293]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5293]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.9%
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][3]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.1%
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][4]["ItemChance"] = 110
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][5]["ItemChance"] = 9550
	tPublicBOSS_MonsterDrop[5293]["RegularReward"][5]["Item_1"] = 0

	-- 144级小怪
	tPublicBOSS_MonsterDrop[5294] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5294]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5294]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5294]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5294]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	40%
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][2]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][3]["ItemChance"] = 5250
	tPublicBOSS_MonsterDrop[5294]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.53%
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][1]["ItemChance"] = 53
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][4]["ItemChance"] = 9942
	tPublicBOSS_MonsterDrop[5294]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5294]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5294]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.9%
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][3]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.2%
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][4]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][5]["ItemChance"] = 9540
	tPublicBOSS_MonsterDrop[5294]["RegularReward"][5]["Item_1"] = 0

	-- 146级小怪
	tPublicBOSS_MonsterDrop[5295] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5295]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5295]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5295]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5295]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	41%
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][2]["ItemChance"] = 4100
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][3]["ItemChance"] = 5150
	tPublicBOSS_MonsterDrop[5295]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.54%
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][1]["ItemChance"] = 54
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][4]["ItemChance"] = 9941
	tPublicBOSS_MonsterDrop[5295]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5295]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5295]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	1%
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.2%
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][4]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][5]["ItemChance"] = 9530
	tPublicBOSS_MonsterDrop[5295]["RegularReward"][5]["Item_1"] = 0

	-- 148级小怪
	tPublicBOSS_MonsterDrop[5296] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5296]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5296]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5296]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5296]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	42%
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][2]["ItemChance"] = 4200
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][3]["ItemChance"] = 5050
	tPublicBOSS_MonsterDrop[5296]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.55%
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][1]["ItemChance"] = 55
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.6%
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][3]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][4]["ItemChance"] = 9940
	tPublicBOSS_MonsterDrop[5296]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5296]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5296]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	1%
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.3%
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][4]["ItemChance"] = 130
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][5]["ItemChance"] = 9520
	tPublicBOSS_MonsterDrop[5296]["RegularReward"][5]["Item_1"] = 0

	-- 115级小怪
	tPublicBOSS_MonsterDrop[5297] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5297]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5297]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5297]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5297]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	34.5%
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][2]["ItemChance"] = 3450
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][3]["ItemChance"] = 5800
	tPublicBOSS_MonsterDrop[5297]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.45%
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][1]["ItemChance"] = 45
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.5%
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][5]["ItemChance"] = 9900
	tPublicBOSS_MonsterDrop[5297]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5297]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5297]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.8%
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][1]["ItemChance"] = 80
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	1.2%
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][2]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][2]["Item_1"] = 9
	-- 气力	0.9%
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][3]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.2%
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][5]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][5]["Item_1"] = 11
	-- 不掉
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][6]["ItemChance"] = 9690
	tPublicBOSS_MonsterDrop[5297]["RegularReward"][6]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5297]["MoveBox"] = 1
	-- 120级小怪
	tPublicBOSS_MonsterDrop[5298] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5298]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5298]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5298]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5298]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	36%
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][2]["ItemChance"] = 3600
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][3]["ItemChance"] = 5650
	tPublicBOSS_MonsterDrop[5298]["DropMoney"][3]["Item_1"] = 0
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.5%
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][1]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.4%
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][3]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.55%
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][4]["ItemChance"] = 0--55
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][5]["ItemChance"] = 9905
	tPublicBOSS_MonsterDrop[5298]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5298]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.6%
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][1]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	0.9%
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][2]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][2]["Item_1"] = 9
	-- 气力	1%
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.5%
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][4]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	0.4%
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][5]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][5]["Item_1"] = 12
	-- 不掉
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][6]["ItemChance"] = 9660
	tPublicBOSS_MonsterDrop[5298]["RegularReward"][6]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5298]["MoveBox"] = 1

	-- 125级小怪
	tPublicBOSS_MonsterDrop[5299] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5299]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5299]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5299]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5299]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	37.5%
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][2]["ItemChance"] = 3750
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][3]["ItemChance"] = 5500
	tPublicBOSS_MonsterDrop[5299]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.5%
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][1]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.3%
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][3]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.60%
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][4]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][5]["ItemChance"] = 9915
	tPublicBOSS_MonsterDrop[5299]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5299]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	0.4%
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][1]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	0.6%
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][2]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][2]["Item_1"] = 9
	-- 气力	1.1%
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][3]["ItemChance"] = 110
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	0.6%
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][4]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	0.6%
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][5]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][5]["Item_1"] = 12
	-- 练功	0.4%
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][6]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][6]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][7] = {}
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][7]["ItemChance"] = 9630
	tPublicBOSS_MonsterDrop[5299]["RegularReward"][7]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5299]["MoveBox"] = 1

	-- 130级小怪
	tPublicBOSS_MonsterDrop[5300] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5300]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5300]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5300]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5300]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	39%
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][2]["ItemChance"] = 3900
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][3]["ItemChance"] = 5350
	tPublicBOSS_MonsterDrop[5300]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.55%
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][1]["ItemChance"] = 55
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][2]["Item_1"] = 3
	-- 鸿蒙灵石	0.2%
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][3]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][3]["Item_1"] = 7
	-- 流香酒	0.60%
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][4]["ItemChance"] = 0--60
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][4]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][5]["ItemChance"] = 9920
	tPublicBOSS_MonsterDrop[5300]["SpecialReward"][5]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5300]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5300]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.2%
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][1]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	0.9%
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][2]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	0.9%
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][3]["ItemChance"] = 90
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.0%
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][4]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][5]["ItemChance"] = 9600
	tPublicBOSS_MonsterDrop[5300]["RegularReward"][5]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5300]["MoveBox"] = 1

	-- 135级小怪
	tPublicBOSS_MonsterDrop[5301] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5301]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5301]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5301]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5301]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	40.5%
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][2]["ItemChance"] = 4050
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][3]["ItemChance"] = 5200
	tPublicBOSS_MonsterDrop[5301]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.55%
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][1]["ItemChance"] = 55
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.65%
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][3]["ItemChance"] = 0--65
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][4]["ItemChance"] = 9940
	tPublicBOSS_MonsterDrop[5301]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5301]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5301]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.3%
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][1]["ItemChance"] = 130
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	1%
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.1%
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][4]["ItemChance"] = 110
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][5]["ItemChance"] = 9560
	tPublicBOSS_MonsterDrop[5301]["RegularReward"][5]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5301]["MoveBox"] = 1
	-- 140级小怪
	tPublicBOSS_MonsterDrop[5302] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5302]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5302]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5302]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5302]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	42%
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][2]["ItemChance"] = 4200
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][3]["ItemChance"] = 5050
	tPublicBOSS_MonsterDrop[5302]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.6%
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][1]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.65%
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][3]["ItemChance"] = 0--65
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][4]["ItemChance"] = 9935
	tPublicBOSS_MonsterDrop[5302]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5302]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5302]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.4%
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][1]["ItemChance"] = 140
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	1%
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.2%
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][4]["ItemChance"] = 120
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][5]["ItemChance"] = 9540
	tPublicBOSS_MonsterDrop[5302]["RegularReward"][5]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5302]["MoveBox"] = 1
	-- 145级小怪
	tPublicBOSS_MonsterDrop[5303] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5303]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5303]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5303]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5303]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	43.5%
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][2]["ItemChance"] = 4350
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][3]["ItemChance"] = 4900
	tPublicBOSS_MonsterDrop[5303]["DropMoney"][3]["Item_1"] = 0

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.6%
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][1]["ItemChance"] = 60
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.7%
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][3]["ItemChance"] = 0--70
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][4]["ItemChance"] = 9935
	tPublicBOSS_MonsterDrop[5303]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5303]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5303]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.5%
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][1]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	1%
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.3%
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][4]["ItemChance"] = 130
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][5]["ItemChance"] = 9520
	tPublicBOSS_MonsterDrop[5303]["RegularReward"][5]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5303]["MoveBox"] = 1
	-- 150级小怪
	tPublicBOSS_MonsterDrop[5304] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5304]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5304]["DropMoney"]["StartNum"] = 150
	-- tPublicBOSS_MonsterDrop[5304]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5304]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	1.5%
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][1]["ItemChance"] = 750
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	45%
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][2]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][2]["Item_1"] = 15
	-- 不掉
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][3] = {}
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][3]["ItemChance"] = 4750
	tPublicBOSS_MonsterDrop[5304]["DropMoney"][3]["Item_1"] = 0
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	0.65%
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][1]["ItemChance"] = 65
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	0.05%
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][2]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][2]["Item_1"] = 3
	-- 流香酒	0.7%
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][3]["ItemChance"] = 0--70
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][3]["Item_1"] = 16
	-- 不掉
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][4]["ItemChance"] = 9930
	tPublicBOSS_MonsterDrop[5304]["SpecialReward"][4]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5304]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5304]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	1.6%
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][1]["ItemChance"] = 160
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	1%
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	1%
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][3]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][3]["Item_1"] = 12
	-- 练功	1.4%
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][4]["ItemChance"] = 140
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][5]["ItemChance"] = 9500
	tPublicBOSS_MonsterDrop[5304]["RegularReward"][5]["Item_1"] = 0
	-- 刷宝箱
	tPublicBOSS_MonsterDrop[5304]["MoveBox"] = 1
	-- 70级精英怪
	tPublicBOSS_MonsterDrop[5305] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5305]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5305]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5305]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5305]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5305]["DropMoney"][2]["Item_1"] = 15


	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	25.00%
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	1.00%
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][2]["ItemChance"] = 100
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][6]["ItemChance"] = 1750
	tPublicBOSS_MonsterDrop[5305]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5305]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5305]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	30.00%
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][1]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][1]["Item_1"] = 8
	-- 不掉
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][2]["ItemChance"] = 7000
	tPublicBOSS_MonsterDrop[5305]["RegularReward"][2]["Item_1"] = 0

	-- 78级精英怪
	tPublicBOSS_MonsterDrop[5306] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5306]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5306]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5306]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5306]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5306]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	25.00%
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	1.50%
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][2]["ItemChance"] = 150
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][6]["ItemChance"] = 1700
	tPublicBOSS_MonsterDrop[5306]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5306]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5306]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	35.00%
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][1]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][1]["Item_1"] = 8
	-- 不掉
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][2]["ItemChance"] = 6500
	tPublicBOSS_MonsterDrop[5306]["RegularReward"][2]["Item_1"] = 0

	-- 85级精英怪
	tPublicBOSS_MonsterDrop[5307] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5307]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5307]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5307]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5307]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5307]["DropMoney"][2]["Item_1"] = 15
	
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	2500.00%
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	2.00%
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][2]["ItemChance"] = 200
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][6]["ItemChance"] = 1650
	tPublicBOSS_MonsterDrop[5307]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5307]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5307]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	20.00%
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][1]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	20.00%
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][3]["ItemChance"] = 6000
	tPublicBOSS_MonsterDrop[5307]["RegularReward"][3]["Item_1"] = 0

	-- 93级精英怪
	tPublicBOSS_MonsterDrop[5308] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5308]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5308]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5308]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5308]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5308]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	25.00%
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	2.50%
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][2]["ItemChance"] = 250
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][6]["ItemChance"] = 1600
	tPublicBOSS_MonsterDrop[5308]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5308]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5308]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	20.00%
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][1]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	25.00%
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][2]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][3]["ItemChance"] = 5500
	tPublicBOSS_MonsterDrop[5308]["RegularReward"][3]["Item_1"] = 0

	-- 101级精英怪
	tPublicBOSS_MonsterDrop[5309] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5309]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5309]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5309]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5309]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5309]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	26.00%
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][1]["ItemChance"] = 2600
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][6]["ItemChance"] = 1450
	tPublicBOSS_MonsterDrop[5309]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5309]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5309]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	20.00%
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][1]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	25.00%
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][2]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][3]["ItemChance"] = 5500
	tPublicBOSS_MonsterDrop[5309]["RegularReward"][3]["Item_1"] = 0

	-- 105级精英怪
	tPublicBOSS_MonsterDrop[5310] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5310]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5310]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5310]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5310]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5310]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	27.00%
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][1]["ItemChance"] = 2700
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][6]["ItemChance"] = 1350
	tPublicBOSS_MonsterDrop[5310]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5310]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5310]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	20.00%
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][1]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	30.00%
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][2]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][3]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5310]["RegularReward"][3]["Item_1"] = 0

	-- 109级精英怪
	tPublicBOSS_MonsterDrop[5311] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5311]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5311]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5311]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5311]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5311]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	28.00%
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][1]["ItemChance"] = 2800
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][6]["ItemChance"] = 1250
	tPublicBOSS_MonsterDrop[5311]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5311]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5311]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	20.00%
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][1]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	35.00%
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][2]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][2]["Item_1"] = 9
	-- 不掉
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][3]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5311]["RegularReward"][3]["Item_1"] = 0

	-- 113级精英怪
	tPublicBOSS_MonsterDrop[5312] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5312]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5312]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5312]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5312]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5312]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	29.00%
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][1]["ItemChance"] = 2900
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][6]["ItemChance"] = 1150
	tPublicBOSS_MonsterDrop[5312]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5312]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5312]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	10.00%
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	20.00%
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][2]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][3]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][3]["Item_1"] = 10
	-- 不掉
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][4]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5312]["RegularReward"][4]["Item_1"] = 0

	-- 117级精英怪
	tPublicBOSS_MonsterDrop[5313] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5313]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5313]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5313]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5313]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5313]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	30.00%
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][1]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][5]["Item_1"] = 7
	-- 不掉
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][6]["ItemChance"] = 1050
	tPublicBOSS_MonsterDrop[5313]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5313]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5313]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	10.00%
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	20.00%
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][2]["Item_1"] = 9
	-- 气力	30.00%
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][3]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][3]["Item_1"] = 10
	-- 不掉
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][4]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5313]["RegularReward"][4]["Item_1"] = 0

	-- 121级精英怪
	tPublicBOSS_MonsterDrop[5314] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5314]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5314]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5314]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5314]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5314]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	31.00%
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][1]["ItemChance"] = 3100
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.05%
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][6]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][7]["ItemChance"] = 945
	tPublicBOSS_MonsterDrop[5314]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5314]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5314]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	10.00%
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	10.00%
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][2]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][3]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][4]["Item_1"] = 11
	-- 不掉
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][5]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5314]["RegularReward"][5]["Item_1"] = 0

	-- 123级精英怪
	tPublicBOSS_MonsterDrop[5315] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5315]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5315]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5315]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5315]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5315]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	32.00%
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][1]["ItemChance"] = 3200
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.05%
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][6]["ItemChance"] = 5
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][7]["ItemChance"] = 845
	tPublicBOSS_MonsterDrop[5315]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5315]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	10.00%
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	10.00%
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][2]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][3]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	5.00%
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][5]["ItemChance"] = 500
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][5]["Item_1"] = 12
	-- 不掉
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][6]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5315]["RegularReward"][6]["Item_1"] = 0

	-- 126级精英怪
	tPublicBOSS_MonsterDrop[5316] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5316]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5316]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5316]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5316]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5316]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	33.00%
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][1]["ItemChance"] = 3300
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.1%
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][6]["ItemChance"] = 10
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][7]["ItemChance"] = 740
	tPublicBOSS_MonsterDrop[5316]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5316]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5316]["RegularReward"]["ItemChanceSum"] = 10000
	-- 宝石	10.00%
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][1]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][2]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][2]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][3]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][3]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][4]["Item_1"] = 12
	-- 不掉
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][5]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5316]["RegularReward"][5]["Item_1"] = 0

	-- 128级精英怪
	tPublicBOSS_MonsterDrop[5317] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5317]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5317]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5317]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5317]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5317]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	34.00%
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][1]["ItemChance"] = 3400
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.1%
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][6]["ItemChance"] = 10
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][7]["ItemChance"] = 640
	tPublicBOSS_MonsterDrop[5317]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5317]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"]["ItemChanceSum"] = 10000
	-- 宝石	10.00%
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][1]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][2]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][2]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][3]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][3]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][4]["Item_1"] = 12
	-- 练功	5.00%
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][5]["ItemChance"] = 500
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][5]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][6]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5317]["RegularReward"][6]["Item_1"] = 0

	-- 130级精英怪
	tPublicBOSS_MonsterDrop[5318] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5318]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5318]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5318]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5318]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5318]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	35.00%
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][1]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	40.00%
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][5]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.15%
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][6]["ItemChance"] = 15
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][7]["ItemChance"] = 1535
	tPublicBOSS_MonsterDrop[5318]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5318]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5318]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][3]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][3]["Item_1"] = 12
	-- 练功	10.00%
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][5]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5318]["RegularReward"][5]["Item_1"] = 0

	-- 133级精英怪
	tPublicBOSS_MonsterDrop[5319] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5319]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5319]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5319]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5319]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5319]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	36.00%
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][1]["ItemChance"] = 3600
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][4]["Item_1"] = 5
	-- 鸿蒙灵石	20.00%
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][5]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.15%
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][6]["ItemChance"] = 15
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][7]["ItemChance"] = 3435
	tPublicBOSS_MonsterDrop[5319]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5319]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5319]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][3]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][3]["Item_1"] = 12
	-- 练功	20.00%
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][4]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][5]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5319]["RegularReward"][5]["Item_1"] = 0

	-- 136级精英怪
	tPublicBOSS_MonsterDrop[5320] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5320]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5320]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5320]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5320]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5320]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	37.00%
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][1]["ItemChance"] = 3700
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.2%
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][5]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][6]["ItemChance"] = 5330
	tPublicBOSS_MonsterDrop[5320]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5320]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5320]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][3]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][5]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5320]["RegularReward"][5]["Item_1"] = 0

	-- 138级精英怪
	tPublicBOSS_MonsterDrop[5321] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5321]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5321]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5321]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5321]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5321]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	38.00%
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][1]["ItemChance"] = 3800
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.2%
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][5]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][6]["ItemChance"] = 5230
	tPublicBOSS_MonsterDrop[5321]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5321]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5321]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][5]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5321]["RegularReward"][5]["Item_1"] = 0

	-- 139级精英怪
	tPublicBOSS_MonsterDrop[5322] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5322]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5322]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5322]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5322]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5322]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	39.00%
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][1]["ItemChance"] = 3900
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.25%
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][5]["ItemChance"] = 25
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][6]["ItemChance"] = 5125
	tPublicBOSS_MonsterDrop[5322]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5322]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5322]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][5]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5322]["RegularReward"][5]["Item_1"] = 0

	-- 141级精英怪
	tPublicBOSS_MonsterDrop[5323] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5323]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5323]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5323]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5323]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5323]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	40.00%
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][1]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.25%
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][5]["ItemChance"] = 25
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][6]["ItemChance"] = 5025
	tPublicBOSS_MonsterDrop[5323]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5323]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5323]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][5]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5323]["RegularReward"][5]["Item_1"] = 0

	-- 143级精英怪
	tPublicBOSS_MonsterDrop[5324] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5324]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5324]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5324]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5324]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5324]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	41.00%
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][1]["ItemChance"] = 4100
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.3%
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][5]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][6]["ItemChance"] = 4920
	tPublicBOSS_MonsterDrop[5324]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5324]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5324]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	27.00%
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][1]["ItemChance"] = 2700
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][5]["ItemChance"] = 800
	tPublicBOSS_MonsterDrop[5324]["RegularReward"][5]["Item_1"] = 0

	-- 144级精英怪
	tPublicBOSS_MonsterDrop[5325] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5325]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5325]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5325]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5325]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5325]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	41.00%
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][1]["ItemChance"] = 4100
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.3%
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][5]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][6]["ItemChance"] = 4920
	tPublicBOSS_MonsterDrop[5325]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5325]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5325]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	27.00%
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][1]["ItemChance"] = 2700
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][3]["Item_1"] = 12
	-- 练功	27.00%
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][4]["ItemChance"] = 2700
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][5]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5325]["RegularReward"][5]["Item_1"] = 0

	-- 146级精英怪
	tPublicBOSS_MonsterDrop[5326] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5326]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5326]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5326]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5326]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5326]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	42.00%
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][1]["ItemChance"] = 4200
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.35%
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][5]["ItemChance"] = 35
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][6]["ItemChance"] = 4815
	tPublicBOSS_MonsterDrop[5326]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5326]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5326]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	30.00%
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][1]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][3]["Item_1"] = 12
	-- 练功	27.00%
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][4]["ItemChance"] = 2700
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][5]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5326]["RegularReward"][5]["Item_1"] = 0

	-- 148级精英怪
	tPublicBOSS_MonsterDrop[5327] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5327]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5327]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5327]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5327]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5327]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	43.00%
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][1]["ItemChance"] = 4300
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][3]["Item_1"] = 4
	-- 挑战令	6.00%
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][4]["Item_1"] = 5
	-- 史诗碎片	0.35%
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][5]["ItemChance"] = 35
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][6]["ItemChance"] = 4715
	tPublicBOSS_MonsterDrop[5327]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5327]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5327]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	30.00%
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][1]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][3]["Item_1"] = 12
	-- 练功	30.00%
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][4]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5327]["RegularReward"][4]["Item_1"] = 13

	-- 115级精英怪
	tPublicBOSS_MonsterDrop[5328] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5328]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5328]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5328]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5328]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5328]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	31.00%
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][1]["ItemChance"] = 3100
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][4]["Item_1"] = 6
	-- 鸿蒙灵石	50.00%
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][5]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.15%
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][6]["ItemChance"] = 15
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][7]["ItemChance"] = 935
	tPublicBOSS_MonsterDrop[5328]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5328]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5328]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	20.00%
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][1]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	20.00%
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][2]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][3]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][3]["Item_1"] = 10
	-- 不掉
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][4]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5328]["RegularReward"][4]["Item_1"] = 0
	
	-- 120级精英怪
	tPublicBOSS_MonsterDrop[5329] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5329]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5329]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5329]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5329]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5329]["DropMoney"][2]["Item_1"] = 15
	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	33.00%
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][1]["ItemChance"] = 3300
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][4]["Item_1"] = 6
	-- 鸿蒙灵石	40.00%
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][5]["ItemChance"] = 4000
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.15%
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][6]["ItemChance"] = 15
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][7]["ItemChance"] = 1735
	tPublicBOSS_MonsterDrop[5329]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5329]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5329]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	10.00%
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	10.00%
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][2]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][3]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][4]["Item_1"] = 11
	-- 不掉
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][5]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5329]["RegularReward"][5]["Item_1"] = 0

	-- 125级精英怪
	tPublicBOSS_MonsterDrop[5330] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5330]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5330]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5330]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5330]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5330]["DropMoney"][2]["Item_1"] = 15

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	35.00%
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][1]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][4]["Item_1"] = 6
	-- 鸿蒙灵石	30.00%
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][5]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.2%
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][6]["ItemChance"] = 20
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][7]["ItemChance"] = 2530
	tPublicBOSS_MonsterDrop[5330]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5330]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"]["ItemChanceSum"] = 10000
	-- 流星	10.00%
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][1]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][1]["Item_1"] = 8
	-- 宝石	10.00%
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][2]["Item_1"] = 9
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][3]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][3]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][4]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][4]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][5]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][5]["Item_1"] = 12
	-- 不掉
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][6] = {}
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][6]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5330]["RegularReward"][6]["Item_1"] = 0

	-- 130级精英怪
	tPublicBOSS_MonsterDrop[5331] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5331]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5331]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5331]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5331]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5331]["DropMoney"][2]["Item_1"] = 15

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	37.00%
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][1]["ItemChance"] = 3700
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][4]["Item_1"] = 6
	-- 鸿蒙灵石	20.00%
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][5]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][5]["Item_1"] = 7
	-- 史诗碎片	0.25%
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][6]["ItemChance"] = 25
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][6]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][7] = {}
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][7]["ItemChance"] = 3325
	tPublicBOSS_MonsterDrop[5331]["SpecialReward"][7]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5331]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5331]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	10.00%
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][2]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	10.00%
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][3]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][3]["Item_1"] = 12
	-- 练功	20.00%
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][4]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][5]["ItemChance"] = 3500
	tPublicBOSS_MonsterDrop[5331]["RegularReward"][5]["Item_1"] = 0

	-- 135级精英怪
	tPublicBOSS_MonsterDrop[5332] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5332]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5332]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5332]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5332]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5332]["DropMoney"][2]["Item_1"] = 15

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	39.00%
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][1]["ItemChance"] = 3900
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][4]["Item_1"] = 6
	-- 史诗碎片	0.30%
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][5]["ItemChance"] = 30
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][6]["ItemChance"] = 5120
	tPublicBOSS_MonsterDrop[5332]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5332]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5332]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][3]["Item_1"] = 12
	-- 练功	20.00%
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][4]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][5]["ItemChance"] = 1500
	tPublicBOSS_MonsterDrop[5332]["RegularReward"][5]["Item_1"] = 0

	-- 140级精英怪
	tPublicBOSS_MonsterDrop[5333] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5333]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5333]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5333]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5333]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5333]["DropMoney"][2]["Item_1"] = 15

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	41.00%
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][1]["ItemChance"] = 4100
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][4]["Item_1"] = 6
	-- 史诗碎片	0.35%
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][5]["ItemChance"] = 35
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][6]["ItemChance"] = 4915
	tPublicBOSS_MonsterDrop[5333]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5333]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5333]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	25.00%
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][1]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][5]["ItemChance"] = 1000
	tPublicBOSS_MonsterDrop[5333]["RegularReward"][5]["Item_1"] = 0

	-- 145级精英怪
	tPublicBOSS_MonsterDrop[5334] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5334]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5334]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5334]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5334]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5334]["DropMoney"][2]["Item_1"] = 15

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	43.00%
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][1]["ItemChance"] = 4300
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][4]["Item_1"] = 6
	-- 史诗碎片	0.4%
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][5]["ItemChance"] = 40
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][6]["ItemChance"] = 4710
	tPublicBOSS_MonsterDrop[5334]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5334]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5334]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	30.00%
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][1]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][3]["Item_1"] = 12
	-- 练功	25.00%
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][4]["ItemChance"] = 2500
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][4]["Item_1"] = 13
	-- 不掉
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][5] = {}
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][5]["ItemChance"] = 500
	tPublicBOSS_MonsterDrop[5334]["RegularReward"][5]["Item_1"] = 0

	-- 150级精英怪
	tPublicBOSS_MonsterDrop[5335] = {}
	-- 银两奖池
	tPublicBOSS_MonsterDrop[5335]["DropMoney"] = {}
	-- tPublicBOSS_MonsterDrop[5335]["DropMoney"]["StartNum"] = 10000
	-- tPublicBOSS_MonsterDrop[5335]["DropMoney"]["EndNum"] = 10000
	tPublicBOSS_MonsterDrop[5335]["DropMoney"]["ItemChanceSum"] = 10000
	-- 银两	50%
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][1] = {}
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][1]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][1]["Item_1"] = 1
	-- 兑换道具	50%
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][2] = {}
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][2]["ItemChance"] = 5000
	tPublicBOSS_MonsterDrop[5335]["DropMoney"][2]["Item_1"] = 15

	-- 特殊奖励
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"]["ItemChanceSum"] = 10000
	-- 小爆	45.00%
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][1] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][1]["ItemChance"] = 4500
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][1]["Item_1"] = 2
	-- 大爆	3.00%
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][2] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][2]["ItemChance"] = 300
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][2]["Item_1"] = 3
	-- 龙珠	0.50%
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][3] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][3]["ItemChance"] = 50
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][3]["Item_1"] = 4
	-- 宝箱钥匙	6.00%
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][4] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][4]["ItemChance"] = 600
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][4]["Item_1"] = 6
	-- 史诗碎片	0.45%
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][5] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][5]["ItemChance"] = 45
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][5]["Item_1"] = 17
	-- 不掉
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][6] = {}
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][6]["ItemChance"] = 4505
	tPublicBOSS_MonsterDrop[5335]["SpecialReward"][6]["Item_1"] = 0
	-- 常规奖励
	tPublicBOSS_MonsterDrop[5335]["RegularReward"] = {}
	tPublicBOSS_MonsterDrop[5335]["RegularReward"]["ItemChanceSum"] = 10000
	-- 气力	30.00%
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][1] = {}
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][1]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][1]["Item_1"] = 10
	-- 星陨石	20.00%
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][2] = {}
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][2]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][2]["Item_1"] = 11
	-- 神纹	20.00%
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][3] = {}
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][3]["ItemChance"] = 2000
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][3]["Item_1"] = 12
	-- 练功	30.00%
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][4] = {}
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][4]["ItemChance"] = 3000
	tPublicBOSS_MonsterDrop[5335]["RegularReward"][4]["Item_1"] = 13

-- 掉落物品
-- 银两=1,小爆掉落=2,大爆掉落=3,龙珠=4,挑战令=5,宝箱钥匙=6,鸿蒙灵石=7,流星=8,宝石=9,气力=10,星陨石=11,神纹=12,练功=13,刷新宝箱=14
local tPublicBOSS_Drop = {}
	-- 龙珠
	tPublicBOSS_Drop[4] = {}
	tPublicBOSS_Drop[4]["Item_1"] = 3301808

	-- 挑战令
	tPublicBOSS_Drop[5] = {}
	tPublicBOSS_Drop[5]["Item_1"] = 3321074

	-- 宝箱钥匙
	tPublicBOSS_Drop[6] = {}
	tPublicBOSS_Drop[6]["Item_1"] = 3313261

	-- 鸿蒙灵石
	tPublicBOSS_Drop[7] = {}
	tPublicBOSS_Drop[7]["Item_1"] = 3321075

	-- 流星
	tPublicBOSS_Drop[8] = {}
	tPublicBOSS_Drop[8]["Item_1"] = 1088001

	-- 宝石
	tPublicBOSS_Drop[9] = {}
	tPublicBOSS_Drop[9]["ItemChanceSum"] = 10000
	-- 普通地灵宝石	700121	1.00%
	tPublicBOSS_Drop[9][1] = {}
	tPublicBOSS_Drop[9][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][1]["ItemChance"] = 100
	tPublicBOSS_Drop[9][1]["Item_1"] = 700121
	-- 普通天怒宝石	700101	1.00%
	tPublicBOSS_Drop[9][2] = {}
	tPublicBOSS_Drop[9][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][2]["ItemChance"] = 100
	tPublicBOSS_Drop[9][2]["Item_1"] = 700101
	-- 普通金麟宝石	700041	14.00%
	tPublicBOSS_Drop[9][3] = {}
	tPublicBOSS_Drop[9][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][3]["ItemChance"] = 1400
	tPublicBOSS_Drop[9][3]["Item_1"] = 700041
	-- 普通青虹宝石	700031	14.00%
	tPublicBOSS_Drop[9][4] = {}
	tPublicBOSS_Drop[9][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][4]["ItemChance"] = 1400
	tPublicBOSS_Drop[9][4]["Item_1"] = 700031
	-- 普通惊鸿宝石	700021	14.00%
	tPublicBOSS_Drop[9][5] = {}
	tPublicBOSS_Drop[9][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][5]["ItemChance"] = 1400
	tPublicBOSS_Drop[9][5]["Item_1"] = 700021
	-- 普通龙恨宝石	700011	10.80%
	tPublicBOSS_Drop[9][6] = {}
	tPublicBOSS_Drop[9][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][6]["ItemChance"] = 1080
	tPublicBOSS_Drop[9][6]["Item_1"] = 700011
	-- 普通凤吟宝石	700001	14.00%
	tPublicBOSS_Drop[9][7] = {}
	tPublicBOSS_Drop[9][7]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][7]["ItemChance"] = 1400
	tPublicBOSS_Drop[9][7]["Item_1"] = 700001
	-- 普通紫霞宝石	700051	14.00%
	tPublicBOSS_Drop[9][8] = {}
	tPublicBOSS_Drop[9][8]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][8]["ItemChance"] = 1400
	tPublicBOSS_Drop[9][8]["Item_1"] = 700051
	-- 普通明月宝石	700061	14.00%
	tPublicBOSS_Drop[9][9] = {}
	tPublicBOSS_Drop[9][9]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][9]["ItemChance"] = 1400
	tPublicBOSS_Drop[9][9]["Item_1"] = 700061
	-- 良品金麟宝石	700042	0.50%
	tPublicBOSS_Drop[9][10] = {}
	tPublicBOSS_Drop[9][10]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][10]["ItemChance"] = 50
	tPublicBOSS_Drop[9][10]["Item_1"] = 700042
	-- 良品青虹宝石	700032	0.50%
	tPublicBOSS_Drop[9][11] = {}
	tPublicBOSS_Drop[9][11]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][11]["ItemChance"] = 50
	tPublicBOSS_Drop[9][11]["Item_1"] = 700032
	-- 良品惊鸿宝石	700022	0.50%
	tPublicBOSS_Drop[9][12] = {}
	tPublicBOSS_Drop[9][12]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][12]["ItemChance"] = 50
	tPublicBOSS_Drop[9][12]["Item_1"] = 700022
	-- 良品龙恨宝石	700012	0.20%
	tPublicBOSS_Drop[9][13] = {}
	tPublicBOSS_Drop[9][13]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][13]["ItemChance"] = 20
	tPublicBOSS_Drop[9][13]["Item_1"] = 700012
	-- 良品凤吟宝石	700002	0.50%
	tPublicBOSS_Drop[9][14] = {}
	tPublicBOSS_Drop[9][14]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][14]["ItemChance"] = 50
	tPublicBOSS_Drop[9][14]["Item_1"] = 700002
	-- 良品紫霞宝石	700052	0.50%
	tPublicBOSS_Drop[9][15] = {}
	tPublicBOSS_Drop[9][15]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][15]["ItemChance"] = 50
	tPublicBOSS_Drop[9][15]["Item_1"] = 700052
	-- 良品明月宝石	700062	0.50%
	tPublicBOSS_Drop[9][16] = {}
	tPublicBOSS_Drop[9][16]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[9][16]["ItemChance"] = 50
	tPublicBOSS_Drop[9][16]["Item_1"] = 700062

	-- 气力
	tPublicBOSS_Drop[10] = {}
	tPublicBOSS_Drop[10]["ItemChanceSum"] = 10000
	-- 10点气力丹	3321076	95.00%
	tPublicBOSS_Drop[10][1] = {}
	tPublicBOSS_Drop[10][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[10][1]["ItemChance"] = 9500
	tPublicBOSS_Drop[10][1]["Item_1"] = 3321076
	-- 100点气力丹	3321077	5.00%
	tPublicBOSS_Drop[10][2] = {}
	tPublicBOSS_Drop[10][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[10][2]["ItemChance"] = 500
	tPublicBOSS_Drop[10][2]["Item_1"] = 3321077

	-- 星陨石
	tPublicBOSS_Drop[11] = {}
	tPublicBOSS_Drop[11]["ItemChanceSum"] = 10000
	-- 微光星陨石	3321050	95.00%
	tPublicBOSS_Drop[11][1] = {}
	tPublicBOSS_Drop[11][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[11][1]["ItemChance"] = 9500
	tPublicBOSS_Drop[11][1]["Item_1"] = 3321050
	-- 明亮星陨石	3321051	5.00%
	tPublicBOSS_Drop[11][2] = {}
	tPublicBOSS_Drop[11][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[11][2]["ItemChance"] = 500
	tPublicBOSS_Drop[11][2]["Item_1"] = 3321051

	-- 神纹
	tPublicBOSS_Drop[12] = {}
	tPublicBOSS_Drop[12]["ItemChanceSum"] = 10000
	-- 红色神纹碎片	3306369	5.00%
	tPublicBOSS_Drop[12][1] = {}
	tPublicBOSS_Drop[12][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[12][1]["ItemChance"] = 500
	tPublicBOSS_Drop[12][1]["Item_1"] = 3306369
	-- 蓝色神纹碎片	3306368	5.00%
	tPublicBOSS_Drop[12][2] = {}
	tPublicBOSS_Drop[12][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[12][2]["ItemChance"] = 500
	tPublicBOSS_Drop[12][2]["Item_1"] = 3306371
	-- 黄色神纹碎片	3306367	10.00%
	tPublicBOSS_Drop[12][3] = {}
	tPublicBOSS_Drop[12][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[12][3]["ItemChance"] = 1000
	tPublicBOSS_Drop[12][3]["Item_1"] = 3306370
	-- 万能神纹精粹	3309942	80.00%
	tPublicBOSS_Drop[12][4] = {}
	tPublicBOSS_Drop[12][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[12][4]["ItemChance"] = 8000
	tPublicBOSS_Drop[12][4]["Item_1"] = 3309942

	-- 练功
	tPublicBOSS_Drop[13] = {}
	tPublicBOSS_Drop[13]["ItemChanceSum"] = 10000
	-- 免费强炼丹	3003124	50.00%
	tPublicBOSS_Drop[13][1] = {}
	tPublicBOSS_Drop[13][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[13][1]["ItemChance"] = 5000
	tPublicBOSS_Drop[13][1]["Item_1"] = 3003124
	-- 强效护心丹	3002030	30.00%
	tPublicBOSS_Drop[13][2] = {}
	tPublicBOSS_Drop[13][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[13][2]["ItemChance"] = 3000
	tPublicBOSS_Drop[13][2]["Item_1"] = 3002030
	-- 通神丹	3003125	20.00%
	tPublicBOSS_Drop[13][3] = {}
	tPublicBOSS_Drop[13][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[13][3]["ItemChance"] = 2000
	tPublicBOSS_Drop[13][3]["Item_1"] = 3003125

	-- 兑换道具
	tPublicBOSS_Drop[15] = {}
	tPublicBOSS_Drop[15]["Item_1"] = 3313259
	
	
	-- 流香酒
	tPublicBOSS_Drop[16] = {}
	tPublicBOSS_Drop[16]["ItemChanceSum"] = 10000
	-- 普通流香酒	3311066	70.00%
	tPublicBOSS_Drop[16][1] = {}
	tPublicBOSS_Drop[16][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[16][1]["ItemChance"] = 7000
	tPublicBOSS_Drop[16][1]["Item_1"] = 3311066
	-- 上等流香酒	3311067	22.00%
	tPublicBOSS_Drop[16][2] = {}
	tPublicBOSS_Drop[16][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[16][2]["ItemChance"] = 2200
	tPublicBOSS_Drop[16][2]["Item_1"] = 3311067
	-- 特等流香酒	3311068	8.00%
	tPublicBOSS_Drop[16][3] = {}
	tPublicBOSS_Drop[16][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[16][3]["ItemChance"] = 800
	tPublicBOSS_Drop[16][3]["Item_1"] = 3311068


	-- 史诗碎片
	tPublicBOSS_Drop[17] = {}
	tPublicBOSS_Drop[17]["ItemChanceSum"] = 10000
	-- 轮回之眼碎片	3310823	20.00%
	tPublicBOSS_Drop[17][1] = {}
	tPublicBOSS_Drop[17][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[17][1]["ItemChance"] = 2400
	tPublicBOSS_Drop[17][1]["Item_1"] = 3310823
	-- 圣灵神木碎片	3310824	24.00%
	tPublicBOSS_Drop[17][2] = {}
	tPublicBOSS_Drop[17][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[17][2]["ItemChance"] = 2800
	tPublicBOSS_Drop[17][2]["Item_1"] = 3310824
	-- 神宝仙丹碎片	3310825	15.00%
	tPublicBOSS_Drop[17][3] = {}
	tPublicBOSS_Drop[17][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[17][3]["ItemChance"] = 0--1500
	tPublicBOSS_Drop[17][3]["Item_1"] = 3310825
-- 空灵佛心碎片	3310826	23.00%
	tPublicBOSS_Drop[17][4] = {}
	tPublicBOSS_Drop[17][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[17][4]["ItemChance"] = 2700
	tPublicBOSS_Drop[17][4]["Item_1"] = 3310826
	-- 海盗武器碎片	3310827	18.00%
	tPublicBOSS_Drop[17][5] = {}
	tPublicBOSS_Drop[17][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Drop[17][5]["ItemChance"] = 2100
	tPublicBOSS_Drop[17][5]["Item_1"] = 3310827



-- 小爆和大爆的奖池
local tPublicBOSS_EruptPrizePool = {}
	-- 奖池1
	tPublicBOSS_EruptPrizePool[1] = {}
	tPublicBOSS_EruptPrizePool[1]["ItemChanceSum"] = 10000
	tPublicBOSS_EruptPrizePool[1]["DropNum"] = {}
	tPublicBOSS_EruptPrizePool[1]["DropNum"][2] = 1---小爆掉落的数量
	tPublicBOSS_EruptPrizePool[1]["DropNum"][3] = 3---大爆掉落的数量
	-- 赤炼石+1	3321034	1	32.00%
	tPublicBOSS_EruptPrizePool[1][1] = {}
	tPublicBOSS_EruptPrizePool[1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][1]["ItemChance"] = 3200
	tPublicBOSS_EruptPrizePool[1][1]["Item_1"] = 3321034
	-- 赤炼石+2	3321035	1	0.80%
	tPublicBOSS_EruptPrizePool[1][2] = {}
	tPublicBOSS_EruptPrizePool[1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][2]["ItemChance"] = 80
	tPublicBOSS_EruptPrizePool[1][2]["Item_1"] = 3321035
	-- 赤炼石+3	3321036	1	0.10%
	tPublicBOSS_EruptPrizePool[1][3] = {}
	tPublicBOSS_EruptPrizePool[1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][3]["ItemChance"] = 10
	tPublicBOSS_EruptPrizePool[1][3]["Item_1"] = 3321036
	-- 流星	1088001	1	20.00%
	tPublicBOSS_EruptPrizePool[1][4] = {}
	tPublicBOSS_EruptPrizePool[1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][4]["ItemChance"] = 2000
	tPublicBOSS_EruptPrizePool[1][4]["Item_1"] = 1088001
	-- 龙珠	3301808	1	0.10%
	tPublicBOSS_EruptPrizePool[1][5] = {}
	tPublicBOSS_EruptPrizePool[1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][5]["ItemChance"] = 10
	tPublicBOSS_EruptPrizePool[1][5]["Item_1"] = 3301808
	-- 宝石		1	25.00%
	tPublicBOSS_EruptPrizePool[1][6] = {}
	tPublicBOSS_EruptPrizePool[1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][6]["ItemChance"] = 2500
	tPublicBOSS_EruptPrizePool[1][6]["Item_1"] = 9
	-- 骰子	3200530	1	2.00%
	tPublicBOSS_EruptPrizePool[1][7] = {}
	tPublicBOSS_EruptPrizePool[1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][7]["ItemChance"] = 200
	tPublicBOSS_EruptPrizePool[1][7]["Item_1"] = 3200530
	-- 祥龙瑞鳞	3320111	1	20.00%
	tPublicBOSS_EruptPrizePool[1][8] = {}
	tPublicBOSS_EruptPrizePool[1][8]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[1][8]["ItemChance"] = 2000
	tPublicBOSS_EruptPrizePool[1][8]["Item_1"] = 3320111
	
	-- 奖池2
	tPublicBOSS_EruptPrizePool[2] = {}
	tPublicBOSS_EruptPrizePool[2]["ItemChanceSum"] = 10000
	tPublicBOSS_EruptPrizePool[2]["DropNum"] = {}
	tPublicBOSS_EruptPrizePool[2]["DropNum"][2] = 5---小爆掉落的数量
	tPublicBOSS_EruptPrizePool[2]["DropNum"][3] = 12---大爆掉落的数量
	-- 银两		1	95.00%
	tPublicBOSS_EruptPrizePool[2][1] = {}
	tPublicBOSS_EruptPrizePool[2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[2][1]["ItemChance"] = 9500
	tPublicBOSS_EruptPrizePool[2][1]["Item_1"] = 1
	-- 流星	1088001	1	2.00%
	tPublicBOSS_EruptPrizePool[2][2] = {}
	tPublicBOSS_EruptPrizePool[2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[2][2]["ItemChance"] = 200
	tPublicBOSS_EruptPrizePool[2][2]["Item_1"] = 1088001
	-- 宝石		1	3.00%
	tPublicBOSS_EruptPrizePool[2][3] = {}
	tPublicBOSS_EruptPrizePool[2][3]["RandomItemChanceType"] = 2
	tPublicBOSS_EruptPrizePool[2][3]["ItemChance"] = 300
	tPublicBOSS_EruptPrizePool[2][3]["Item_1"] = 9

-- 怪物对应的银两掉落数量
local tPublicBOSS_Money = {}
	tPublicBOSS_Money[5274] = 400
	tPublicBOSS_Money[5275] = 440
	tPublicBOSS_Money[5276] = 475
	tPublicBOSS_Money[5277] = 515
	tPublicBOSS_Money[5278] = 555
	tPublicBOSS_Money[5279] = 575
	tPublicBOSS_Money[5280] = 595
	tPublicBOSS_Money[5281] = 615
	tPublicBOSS_Money[5282] = 635
	tPublicBOSS_Money[5283] = 655
	tPublicBOSS_Money[5284] = 665
	tPublicBOSS_Money[5285] = 680
	tPublicBOSS_Money[5286] = 690
	tPublicBOSS_Money[5287] = 700
	tPublicBOSS_Money[5288] = 715
	tPublicBOSS_Money[5289] = 730
	tPublicBOSS_Money[5290] = 740
	tPublicBOSS_Money[5291] = 745
	tPublicBOSS_Money[5292] = 755
	tPublicBOSS_Money[5293] = 765
	tPublicBOSS_Money[5294] = 770
	tPublicBOSS_Money[5295] = 780
	tPublicBOSS_Money[5296] = 790
	tPublicBOSS_Money[5297] = 625
	tPublicBOSS_Money[5298] = 650
	tPublicBOSS_Money[5299] = 675
	tPublicBOSS_Money[5300] = 700
	tPublicBOSS_Money[5301] = 725
	tPublicBOSS_Money[5302] = 750
	tPublicBOSS_Money[5303] = 775
	tPublicBOSS_Money[5304] = 800
	tPublicBOSS_Money[5305] = 400
	tPublicBOSS_Money[5306] = 440
	tPublicBOSS_Money[5307] = 475
	tPublicBOSS_Money[5308] = 515
	tPublicBOSS_Money[5309] = 555
	tPublicBOSS_Money[5310] = 575
	tPublicBOSS_Money[5311] = 595
	tPublicBOSS_Money[5312] = 615
	tPublicBOSS_Money[5313] = 635
	tPublicBOSS_Money[5314] = 655
	tPublicBOSS_Money[5315] = 665
	tPublicBOSS_Money[5316] = 680
	tPublicBOSS_Money[5317] = 690
	tPublicBOSS_Money[5318] = 700
	tPublicBOSS_Money[5319] = 715
	tPublicBOSS_Money[5320] = 730
	tPublicBOSS_Money[5321] = 740
	tPublicBOSS_Money[5322] = 745
	tPublicBOSS_Money[5323] = 755
	tPublicBOSS_Money[5324] = 765
	tPublicBOSS_Money[5325] = 770
	tPublicBOSS_Money[5326] = 780
	tPublicBOSS_Money[5327] = 790
	tPublicBOSS_Money[5328] = 625
	tPublicBOSS_Money[5329] = 650
	tPublicBOSS_Money[5330] = 675
	tPublicBOSS_Money[5331] = 700
	tPublicBOSS_Money[5332] = 725
	tPublicBOSS_Money[5333] = 750
	tPublicBOSS_Money[5334] = 775
	tPublicBOSS_Money[5335] = 800
	tPublicBOSS_Money[5336] = 400
	tPublicBOSS_Money[5337] = 450
	tPublicBOSS_Money[5338] = 500
	tPublicBOSS_Money[5339] = 550
	tPublicBOSS_Money[5340] = 575
	tPublicBOSS_Money[5341] = 600
	tPublicBOSS_Money[5342] = 625
	tPublicBOSS_Money[5343] = 650
	tPublicBOSS_Money[5344] = 665
	tPublicBOSS_Money[5345] = 680
	tPublicBOSS_Money[5346] = 695
	tPublicBOSS_Money[5347] = 710
	tPublicBOSS_Money[5348] = 725
	tPublicBOSS_Money[5349] = 735
	tPublicBOSS_Money[5350] = 745
	tPublicBOSS_Money[5351] = 755
	tPublicBOSS_Money[5352] = 765
	tPublicBOSS_Money[5353] = 775
	tPublicBOSS_Money[5354] = 785
	tPublicBOSS_Money[5355] = 625
	tPublicBOSS_Money[5356] = 675
	tPublicBOSS_Money[5357] = 725
	tPublicBOSS_Money[5358] = 775
	tPublicBOSS_Money[5359] = 800

local tPublicBOSS_BossDrop = {}
-- 70级BOSS
	tPublicBOSS_BossDrop[5336] = {}
	tPublicBOSS_BossDrop[5336]["Reward"] = {}
	tPublicBOSS_BossDrop[5336]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5336]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardItem"][1]["Id"] = 3321078  --初级BOSS礼包
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5336]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5336]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Money"]["Value"] = 10000
	-- tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5336]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 额外掉落
	tPublicBOSS_BossDrop[5336]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5336]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	25%
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][1]["ItemChance"] = 2500
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	75%
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][2]["ItemChance"] = 7500
	tPublicBOSS_BossDrop[5336]["ProbDrop"][2][2]["Item_1"] = 0
	-- 80级BOSS
	tPublicBOSS_BossDrop[5337] = {}
	tPublicBOSS_BossDrop[5337]["Reward"] = {}
	tPublicBOSS_BossDrop[5337]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5337]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardItem"][1]["Id"] = 3321078  --初级BOSS礼包
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5337]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5337]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Money"]["Value"] = 15000
	-- tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5337]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5337]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5337]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	25%
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][1]["ItemChance"] = 2500
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	75%
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][2]["ItemChance"] = 7500
	tPublicBOSS_BossDrop[5337]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 流星	30%
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][1]["ItemChance"] = 3000
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][1]["Item_1"] = 1088001
	-- 不掉	75%
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][2]["ItemChance"] = 7000
	tPublicBOSS_BossDrop[5337]["ProbDrop"][3][2]["Item_1"] = 0
	-- 90级BOSS
	tPublicBOSS_BossDrop[5338] = {}
	tPublicBOSS_BossDrop[5338]["Reward"] = {}
	tPublicBOSS_BossDrop[5338]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5338]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardItem"][1]["Id"] = 3321078  --初级BOSS礼包
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5338]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5338]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Money"]["Value"] = 20000
	-- tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5338]["CertainlyDrop"]["Item"][2]["Num"] = 1

	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5338]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5338]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	25%
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][1]["ItemChance"] = 2500
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	75%
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][2]["ItemChance"] = 7500
	tPublicBOSS_BossDrop[5338]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 流星	60%
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][1]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][1]["Item_1"] = 1088001
	-- 不掉	75%
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][2]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5338]["ProbDrop"][3][2]["Item_1"] = 0

-- 100级BOSS
	tPublicBOSS_BossDrop[5339] = {}
	tPublicBOSS_BossDrop[5339]["Reward"] = {}
	tPublicBOSS_BossDrop[5339]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5339]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardItem"][1]["Id"] = 3321079  --中级BOSS礼包
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5339]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5339]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Money"]["Value"] = 25000
	-- tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"][1]["Num"] = 2
	
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["Item"][2]["Num"] = 1
	--随机普通宝石
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1]["ItemChanceSum"] = 10000
	-- 普通地灵宝石 - 1.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][1] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][1]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][1]["Item_1"] = 700121 -- 【库】普通地灵宝石[属性:0], 【表格】普通地灵宝石
	-- 普通天怒宝石 - 1.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][2] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][2]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][2]["Item_1"] = 700101 -- 【库】普通天怒宝石[属性:0], 【表格】普通天怒宝石
	-- 普通金麟宝石 - 14.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][3] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][3]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][3]["Item_1"] = 700041 -- 【库】普通金麟宝石[属性:0], 【表格】普通金麟宝石
	-- 普通青虹宝石 - 14.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][4] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][4]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][4]["Item_1"] = 700031 -- 【库】普通青虹宝石[属性:0], 【表格】普通青虹宝石
	-- 普通惊鸿宝石 - 14.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][5] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][5]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][5]["Item_1"] = 700021 -- 【库】普通惊鸿宝石[属性:0], 【表格】普通惊鸿宝石
	-- 普通龙恨宝石 - 10.80%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][6] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][6]["ItemChance"] = 1080
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][6]["Item_1"] = 700011 -- 【库】普通龙恨宝石[属性:0], 【表格】普通龙恨宝石
	-- 普通凤吟宝石 - 14.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][7] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][7]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][7]["Item_1"] = 700001 -- 【库】普通凤吟宝石[属性:0], 【表格】普通凤吟宝石
	-- 普通紫霞宝石 - 14.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][8] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][8]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][8]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][8]["Item_1"] = 700051 -- 【库】普通紫霞宝石[属性:0], 【表格】普通紫霞宝石
	-- 普通明月宝石 - 14.00%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][9] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][9]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][9]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][9]["Item_1"] = 700061 -- 【库】普通明月宝石[属性:0], 【表格】普通明月宝石
	-- 良品金麟宝石 - 0.50%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][10] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][10]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][10]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][10]["Item_1"] = 700042 -- 【库】良品金麟宝石[属性:0], 【表格】良品金麟宝石
	-- 良品青虹宝石 - 0.50%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][11] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][11]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][11]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][11]["Item_1"] = 700032 -- 【库】良品青虹宝石[属性:0], 【表格】良品青虹宝石
	-- 良品惊鸿宝石 - 0.50%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][12] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][12]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][12]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][12]["Item_1"] = 700022 -- 【库】良品惊鸿宝石[属性:0], 【表格】良品惊鸿宝石
	-- 良品龙恨宝石 - 0.20%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][13] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][13]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][13]["ItemChance"] = 20
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][13]["Item_1"] = 700012 -- 【库】良品龙恨宝石[属性:0], 【表格】良品龙恨宝石
	-- 良品凤吟宝石 - 0.50%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][14] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][14]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][14]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][14]["Item_1"] = 700002 -- 【库】良品凤吟宝石[属性:0], 【表格】良品凤吟宝石
	-- 良品紫霞宝石 - 0.50%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][15] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][15]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][15]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][15]["Item_1"] = 700052 -- 【库】良品紫霞宝石[属性:0], 【表格】良品紫霞宝石
	-- 良品明月宝石 - 0.50%
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][16] = {}
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][16]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][16]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5339]["CertainlyDrop"]["GemItem"][1][16]["Item_1"] = 700062 -- 【库】良品明月宝石[属性:0], 【表格】良品明月宝石

	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5339]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5339]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	30%
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][1]["ItemChance"] = 3000
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	75%
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][2]["ItemChance"] = 7000
	tPublicBOSS_BossDrop[5339]["ProbDrop"][2][2]["Item_1"] = 0
-- 105级BOSS
	tPublicBOSS_BossDrop[5340] = {}
	tPublicBOSS_BossDrop[5340]["Reward"] = {}
	tPublicBOSS_BossDrop[5340]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5340]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardItem"][1]["Id"] = 3321079  --中级BOSS礼包
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5340]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5340]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Money"]["Value"] = 30000
	-- tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"][1]["Num"] = 2
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["Item"][2]["Num"] = 1
	--随机普通宝石
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1]["ItemChanceSum"] = 10000
	-- 普通地灵宝石 - 1.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][1] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][1]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][1]["Item_1"] = 700121 -- 【库】普通地灵宝石[属性:0], 【表格】普通地灵宝石
	-- 普通天怒宝石 - 1.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][2] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][2]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][2]["Item_1"] = 700101 -- 【库】普通天怒宝石[属性:0], 【表格】普通天怒宝石
	-- 普通金麟宝石 - 14.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][3] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][3]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][3]["Item_1"] = 700041 -- 【库】普通金麟宝石[属性:0], 【表格】普通金麟宝石
	-- 普通青虹宝石 - 14.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][4] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][4]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][4]["Item_1"] = 700031 -- 【库】普通青虹宝石[属性:0], 【表格】普通青虹宝石
	-- 普通惊鸿宝石 - 14.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][5] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][5]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][5]["Item_1"] = 700021 -- 【库】普通惊鸿宝石[属性:0], 【表格】普通惊鸿宝石
	-- 普通龙恨宝石 - 10.80%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][6] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][6]["ItemChance"] = 1080
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][6]["Item_1"] = 700011 -- 【库】普通龙恨宝石[属性:0], 【表格】普通龙恨宝石
	-- 普通凤吟宝石 - 14.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][7] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][7]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][7]["Item_1"] = 700001 -- 【库】普通凤吟宝石[属性:0], 【表格】普通凤吟宝石
	-- 普通紫霞宝石 - 14.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][8] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][8]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][8]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][8]["Item_1"] = 700051 -- 【库】普通紫霞宝石[属性:0], 【表格】普通紫霞宝石
	-- 普通明月宝石 - 14.00%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][9] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][9]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][9]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][9]["Item_1"] = 700061 -- 【库】普通明月宝石[属性:0], 【表格】普通明月宝石
	-- 良品金麟宝石 - 0.50%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][10] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][10]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][10]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][10]["Item_1"] = 700042 -- 【库】良品金麟宝石[属性:0], 【表格】良品金麟宝石
	-- 良品青虹宝石 - 0.50%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][11] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][11]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][11]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][11]["Item_1"] = 700032 -- 【库】良品青虹宝石[属性:0], 【表格】良品青虹宝石
	-- 良品惊鸿宝石 - 0.50%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][12] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][12]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][12]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][12]["Item_1"] = 700022 -- 【库】良品惊鸿宝石[属性:0], 【表格】良品惊鸿宝石
	-- 良品龙恨宝石 - 0.20%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][13] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][13]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][13]["ItemChance"] = 20
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][13]["Item_1"] = 700012 -- 【库】良品龙恨宝石[属性:0], 【表格】良品龙恨宝石
	-- 良品凤吟宝石 - 0.50%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][14] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][14]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][14]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][14]["Item_1"] = 700002 -- 【库】良品凤吟宝石[属性:0], 【表格】良品凤吟宝石
	-- 良品紫霞宝石 - 0.50%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][15] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][15]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][15]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][15]["Item_1"] = 700052 -- 【库】良品紫霞宝石[属性:0], 【表格】良品紫霞宝石
	-- 良品明月宝石 - 0.50%
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][16] = {}
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][16]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][16]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5340]["CertainlyDrop"]["GemItem"][1][16]["Item_1"] = 700062 -- 【库】良品明月宝石[属性:0], 【表格】良品明月宝石
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5340]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5340]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	35%
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][1]["ItemChance"] = 3500
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	75%
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][2]["ItemChance"] = 6500
	tPublicBOSS_BossDrop[5340]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 流星	35%
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][1]["ItemChance"] = 3500
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][1]["Item_1"] = 1088001
	-- 不掉	75%
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][2]["ItemChance"] = 6500
	tPublicBOSS_BossDrop[5340]["ProbDrop"][3][2]["Item_1"] = 0
-- 110级BOSS
	tPublicBOSS_BossDrop[5341] = {}
	tPublicBOSS_BossDrop[5341]["Reward"] = {}
	tPublicBOSS_BossDrop[5341]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5341]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardItem"][1]["Id"] = 3321079  --中级BOSS礼包
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5341]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5341]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Money"]["Value"] = 35000
	-- tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"][1]["Num"] = 2
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["Item"][2]["Num"] = 1
	--随机普通宝石
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1]["ItemChanceSum"] = 10000
	-- 普通地灵宝石 - 1.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][1] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][1]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][1]["Item_1"] = 700121 -- 【库】普通地灵宝石[属性:0], 【表格】普通地灵宝石
	-- 普通天怒宝石 - 1.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][2] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][2]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][2]["Item_1"] = 700101 -- 【库】普通天怒宝石[属性:0], 【表格】普通天怒宝石
	-- 普通金麟宝石 - 14.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][3] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][3]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][3]["Item_1"] = 700041 -- 【库】普通金麟宝石[属性:0], 【表格】普通金麟宝石
	-- 普通青虹宝石 - 14.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][4] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][4]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][4]["Item_1"] = 700031 -- 【库】普通青虹宝石[属性:0], 【表格】普通青虹宝石
	-- 普通惊鸿宝石 - 14.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][5] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][5]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][5]["Item_1"] = 700021 -- 【库】普通惊鸿宝石[属性:0], 【表格】普通惊鸿宝石
	-- 普通龙恨宝石 - 10.80%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][6] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][6]["ItemChance"] = 1080
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][6]["Item_1"] = 700011 -- 【库】普通龙恨宝石[属性:0], 【表格】普通龙恨宝石
	-- 普通凤吟宝石 - 14.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][7] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][7]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][7]["Item_1"] = 700001 -- 【库】普通凤吟宝石[属性:0], 【表格】普通凤吟宝石
	-- 普通紫霞宝石 - 14.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][8] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][8]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][8]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][8]["Item_1"] = 700051 -- 【库】普通紫霞宝石[属性:0], 【表格】普通紫霞宝石
	-- 普通明月宝石 - 14.00%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][9] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][9]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][9]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][9]["Item_1"] = 700061 -- 【库】普通明月宝石[属性:0], 【表格】普通明月宝石
	-- 良品金麟宝石 - 0.50%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][10] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][10]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][10]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][10]["Item_1"] = 700042 -- 【库】良品金麟宝石[属性:0], 【表格】良品金麟宝石
	-- 良品青虹宝石 - 0.50%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][11] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][11]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][11]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][11]["Item_1"] = 700032 -- 【库】良品青虹宝石[属性:0], 【表格】良品青虹宝石
	-- 良品惊鸿宝石 - 0.50%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][12] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][12]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][12]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][12]["Item_1"] = 700022 -- 【库】良品惊鸿宝石[属性:0], 【表格】良品惊鸿宝石
	-- 良品龙恨宝石 - 0.20%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][13] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][13]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][13]["ItemChance"] = 20
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][13]["Item_1"] = 700012 -- 【库】良品龙恨宝石[属性:0], 【表格】良品龙恨宝石
	-- 良品凤吟宝石 - 0.50%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][14] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][14]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][14]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][14]["Item_1"] = 700002 -- 【库】良品凤吟宝石[属性:0], 【表格】良品凤吟宝石
	-- 良品紫霞宝石 - 0.50%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][15] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][15]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][15]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][15]["Item_1"] = 700052 -- 【库】良品紫霞宝石[属性:0], 【表格】良品紫霞宝石
	-- 良品明月宝石 - 0.50%
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][16] = {}
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][16]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][16]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5341]["CertainlyDrop"]["GemItem"][1][16]["Item_1"] = 700062 -- 【库】良品明月宝石[属性:0], 【表格】良品明月宝石
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5341]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5341]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	40%
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][1]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	75%
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][2]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5341]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 流星	50%
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][1]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][1]["Item_1"] = 1088001
	-- 不掉	75%
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][2]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5341]["ProbDrop"][3][2]["Item_1"] = 0
-- 115级BOSS
	tPublicBOSS_BossDrop[5342] = {}
	tPublicBOSS_BossDrop[5342]["Reward"] = {}
	tPublicBOSS_BossDrop[5342]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5342]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardItem"][1]["Id"] = 3321079  --中级BOSS礼包
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5342]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5342]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Money"]["Value"] = 40000
	-- tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Money"]["Num"] = 5
	--流星
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"][1]["Id"] = 1088001
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"][1]["Num"] = 2
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"][2]["Id"] = 3313588
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["Item"][2]["Num"] = 1
	--随机普通宝石
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1]["ItemChanceSum"] = 10000
	-- 普通地灵宝石 - 1.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][1] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][1]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][1]["Item_1"] = 700121 -- 【库】普通地灵宝石[属性:0], 【表格】普通地灵宝石
	-- 普通天怒宝石 - 1.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][2] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][2]["ItemChance"] = 100
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][2]["Item_1"] = 700101 -- 【库】普通天怒宝石[属性:0], 【表格】普通天怒宝石
	-- 普通金麟宝石 - 14.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][3] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][3]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][3]["Item_1"] = 700041 -- 【库】普通金麟宝石[属性:0], 【表格】普通金麟宝石
	-- 普通青虹宝石 - 14.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][4] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][4]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][4]["Item_1"] = 700031 -- 【库】普通青虹宝石[属性:0], 【表格】普通青虹宝石
	-- 普通惊鸿宝石 - 14.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][5] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][5]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][5]["Item_1"] = 700021 -- 【库】普通惊鸿宝石[属性:0], 【表格】普通惊鸿宝石
	-- 普通龙恨宝石 - 10.80%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][6] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][6]["ItemChance"] = 1080
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][6]["Item_1"] = 700011 -- 【库】普通龙恨宝石[属性:0], 【表格】普通龙恨宝石
	-- 普通凤吟宝石 - 14.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][7] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][7]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][7]["Item_1"] = 700001 -- 【库】普通凤吟宝石[属性:0], 【表格】普通凤吟宝石
	-- 普通紫霞宝石 - 14.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][8] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][8]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][8]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][8]["Item_1"] = 700051 -- 【库】普通紫霞宝石[属性:0], 【表格】普通紫霞宝石
	-- 普通明月宝石 - 14.00%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][9] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][9]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][9]["ItemChance"] = 1400
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][9]["Item_1"] = 700061 -- 【库】普通明月宝石[属性:0], 【表格】普通明月宝石
	-- 良品金麟宝石 - 0.50%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][10] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][10]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][10]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][10]["Item_1"] = 700042 -- 【库】良品金麟宝石[属性:0], 【表格】良品金麟宝石
	-- 良品青虹宝石 - 0.50%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][11] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][11]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][11]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][11]["Item_1"] = 700032 -- 【库】良品青虹宝石[属性:0], 【表格】良品青虹宝石
	-- 良品惊鸿宝石 - 0.50%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][12] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][12]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][12]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][12]["Item_1"] = 700022 -- 【库】良品惊鸿宝石[属性:0], 【表格】良品惊鸿宝石
	-- 良品龙恨宝石 - 0.20%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][13] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][13]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][13]["ItemChance"] = 20
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][13]["Item_1"] = 700012 -- 【库】良品龙恨宝石[属性:0], 【表格】良品龙恨宝石
	-- 良品凤吟宝石 - 0.50%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][14] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][14]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][14]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][14]["Item_1"] = 700002 -- 【库】良品凤吟宝石[属性:0], 【表格】良品凤吟宝石
	-- 良品紫霞宝石 - 0.50%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][15] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][15]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][15]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][15]["Item_1"] = 700052 -- 【库】良品紫霞宝石[属性:0], 【表格】良品紫霞宝石
	-- 良品明月宝石 - 0.50%
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][16] = {}
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][16]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][16]["ItemChance"] = 50
	tPublicBOSS_BossDrop[5342]["CertainlyDrop"]["GemItem"][1][16]["Item_1"] = 700062 -- 【库】良品明月宝石[属性:0], 【表格】良品明月宝石
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5342]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5342]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 初级未鉴定神器	45%
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][1]["ItemChance"] = 4500
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	55%
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][2]["ItemChance"] = 5500
	tPublicBOSS_BossDrop[5342]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 流星	75%
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][1]["ItemChance"] = 7500
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][1]["Item_1"] = 1088001
	-- 不掉	25%
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][2]["ItemChance"] = 2500
	tPublicBOSS_BossDrop[5342]["ProbDrop"][3][2]["Item_1"] = 0
-- 120级BOSS
	tPublicBOSS_BossDrop[5343] = {}
	tPublicBOSS_BossDrop[5343]["Reward"] = {}
	tPublicBOSS_BossDrop[5343]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5343]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5343]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5343]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Money"]["Value"] = 45000
	-- tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 微光星陨石
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][2]["Id"] = 3321050
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][2]["Num"] = 2

	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5343]["CertainlyDrop"]["Item"][3]["Num"] = 2
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5343]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5343]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	40%
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][1]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	60%
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][2]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5343]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 初级神魂包	10%
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][1]["Item_1"] = 3321083
	-- 不掉	25%
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5343]["ProbDrop"][3][2]["Item_1"] = 0
-- 123级BOSS
	tPublicBOSS_BossDrop[5344] = {}
	tPublicBOSS_BossDrop[5344]["Reward"] = {}
	tPublicBOSS_BossDrop[5344]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5344]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5344]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5344]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Money"]["Value"] = 50000
	-- tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 微光星陨石
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][2]["Id"] = 3321050
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][2]["Num"] = 2

	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5344]["CertainlyDrop"]["Item"][3]["Num"] = 2

	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5344]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5344]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	45%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][1]["ItemChance"] = 4500
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	55%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][2]["ItemChance"] = 5500
	tPublicBOSS_BossDrop[5344]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 初级神魂包	10%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][1]["Item_1"] = 3321083
	-- 不掉	25%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5344]["ProbDrop"][3][2]["Item_1"] = 0
	-- 黄色神纹碎片	10%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4]["ItemChanceSum"] = 10000

	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	80%
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5344]["ProbDrop"][4][2]["Item_1"] = 0
-- 126级BOSS
	tPublicBOSS_BossDrop[5345] = {}
	tPublicBOSS_BossDrop[5345]["Reward"] = {}
	tPublicBOSS_BossDrop[5345]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5345]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5345]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5345]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Money"]["Value"] = 55000
	-- tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 微光星陨石
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][2]["Id"] = 3321050
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][2]["Num"] = 2

	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5345]["CertainlyDrop"]["Item"][3]["Num"] = 2

	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5345]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5345]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	50%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][1]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	50%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][2]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5345]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 初级神魂包	10%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][1]["Item_1"] = 3321083
	-- 不掉	90%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5345]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	20%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][1]["ItemChance"] = 2000
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	80%
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][2]["ItemChance"] = 8000
	tPublicBOSS_BossDrop[5345]["ProbDrop"][4][2]["Item_1"] = 0
-- 129级BOSS
	tPublicBOSS_BossDrop[5346] = {}
	tPublicBOSS_BossDrop[5346]["Reward"] = {}
	tPublicBOSS_BossDrop[5346]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5346]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5346]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5346]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Money"]["Value"] = 60000
	-- tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 微光星陨石
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][2]["Id"] = 3321050
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][2]["Num"] = 2
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5346]["CertainlyDrop"]["Item"][3]["Num"] = 2
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5346]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5346]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	55%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][1]["ItemChance"] = 5500
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	45%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][2]["ItemChance"] = 4500
	tPublicBOSS_BossDrop[5346]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 初级神魂包	10%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][1]["Item_1"] = 3321083
	-- 不掉	90%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5346]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	30%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][1]["ItemChance"] = 3000
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	70%
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][2]["ItemChance"] = 7000
	tPublicBOSS_BossDrop[5346]["ProbDrop"][4][2]["Item_1"] = 0
-- 132级BOSS
	tPublicBOSS_BossDrop[5347] = {}
	tPublicBOSS_BossDrop[5347]["Reward"] = {}
	tPublicBOSS_BossDrop[5347]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5347]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5347]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5347]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Money"]["Value"] = 65000
	-- tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 微光星陨石
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][2]["Id"] = 3321050
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][2]["Num"] = 2
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5347]["CertainlyDrop"]["Item"][3]["Num"] = 2
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5347]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5347]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	60%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][1]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	40%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][2]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5347]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 初级神魂包	10%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][1]["Item_1"] = 3321083
	-- 不掉	90%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5347]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	40%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][1]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	60%
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][2]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5347]["ProbDrop"][4][2]["Item_1"] = 0
-- 135级BOSS
	tPublicBOSS_BossDrop[5348] = {}
	tPublicBOSS_BossDrop[5348]["Reward"] = {}
	tPublicBOSS_BossDrop[5348]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5348]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5348]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5348]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Money"]["Value"] = 70000
	-- tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5348]["CertainlyDrop"]["Item"][3]["Num"] = 3
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5348]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5348]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	30%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][1]["ItemChance"] = 3000
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	70%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][2]["ItemChance"] = 7000
	tPublicBOSS_BossDrop[5348]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5348]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	50%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][1]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	50%
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][2]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5348]["ProbDrop"][4][2]["Item_1"] = 0
-- 137级BOSS
	tPublicBOSS_BossDrop[5349] = {}
	tPublicBOSS_BossDrop[5349]["Reward"] = {}
	tPublicBOSS_BossDrop[5349]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5349]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5349]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5349]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Money"]["Value"] = 75000
	-- tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5349]["CertainlyDrop"]["Item"][3]["Num"] = 3
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5349]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5349]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	35%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][1]["ItemChance"] = 3500
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	65%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][2]["ItemChance"] = 6500
	tPublicBOSS_BossDrop[5349]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5349]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	55%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][1]["ItemChance"] = 5500
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	45%
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][2]["ItemChance"] = 4500
	tPublicBOSS_BossDrop[5349]["ProbDrop"][4][2]["Item_1"] = 0
-- 139级BOSS
	tPublicBOSS_BossDrop[5350] = {}
	tPublicBOSS_BossDrop[5350]["Reward"] = {}
	tPublicBOSS_BossDrop[5350]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5350]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5350]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5350]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Money"]["Value"] = 80000
	-- tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5350]["CertainlyDrop"]["Item"][3]["Num"] = 3
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5350]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5350]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	40%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][1]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	60%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][2]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5350]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5350]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	60%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][1]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	40%
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][2]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5350]["ProbDrop"][4][2]["Item_1"] = 0
-- 141级BOSS
	tPublicBOSS_BossDrop[5351] = {}
	tPublicBOSS_BossDrop[5351]["Reward"] = {}
	tPublicBOSS_BossDrop[5351]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5351]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5351]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5351]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Money"]["Value"] = 85000
	-- tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5351]["CertainlyDrop"]["Item"][3]["Num"] = 3
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5351]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5351]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	45%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][1]["ItemChance"] = 4500
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	55%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][2]["ItemChance"] = 5500
	tPublicBOSS_BossDrop[5351]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5351]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	65%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][1]["ItemChance"] = 6500
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	45%
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][2]["ItemChance"] = 3500
	tPublicBOSS_BossDrop[5351]["ProbDrop"][4][2]["Item_1"] = 0
-- 143级BOSS
	tPublicBOSS_BossDrop[5352] = {}
	tPublicBOSS_BossDrop[5352]["Reward"] = {}
	tPublicBOSS_BossDrop[5352]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5352]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5352]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5352]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Money"]["Value"] = 90000
	-- tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5352]["CertainlyDrop"]["Item"][3]["Num"] = 4
	
	-- 额外掉落 额外概率掉落5% 龙珠、30% 流星  25%概率掉初级未鉴定神器（详细概率在右侧）
	tPublicBOSS_BossDrop[5352]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5352]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	50%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][1]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	50%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][2]["ItemChance"] = 5000
	tPublicBOSS_BossDrop[5352]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5352]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	70%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][1]["ItemChance"] = 7000
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	30%
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][2]["ItemChance"] = 3000
	tPublicBOSS_BossDrop[5352]["ProbDrop"][4][2]["Item_1"] = 0
-- 145级BOSS
	tPublicBOSS_BossDrop[5353] = {}
	tPublicBOSS_BossDrop[5353]["Reward"] = {}
	tPublicBOSS_BossDrop[5353]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5353]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5353]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5353]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Money"]["Value"] = 95000
	-- tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5353]["CertainlyDrop"]["Item"][3]["Num"] = 4

	
	-- 额外掉落 额外概率掉落5% 龙珠、10% 中级神魂包、75% 黄色神纹碎片 55%概率掉高级未鉴定神器（概率在右侧）
	tPublicBOSS_BossDrop[5353]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5353]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	55%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][1]["ItemChance"] = 5500
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	45%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][2]["ItemChance"] = 4500
	tPublicBOSS_BossDrop[5353]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5353]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	75%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][1]["ItemChance"] = 7500
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	30%
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][2]["ItemChance"] = 2500
	tPublicBOSS_BossDrop[5353]["ProbDrop"][4][2]["Item_1"] = 0
-- 147级BOSS
	tPublicBOSS_BossDrop[5354] = {}
	tPublicBOSS_BossDrop[5354]["Reward"] = {}
	tPublicBOSS_BossDrop[5354]["Reward"]["EventType"] = 200
	tPublicBOSS_BossDrop[5354]["Reward"]["DataType"] = 41
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardData"] = 5
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardItem"] = {}
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardItem"][1]["Id"] = 3321080  --高级BOSS礼包
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_BossDrop[5354]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_BossDrop[5354]["Reward"]["LogId"] = 18000207
	
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Money"]["Value"] = 100000
	-- tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Money"]["Num"] = 5
	--气力丹
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"] = {}
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][1] = {}
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][1]["Num"] = 3
	-- 明亮星陨石
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][2] = {}
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][2]["Id"] = 3321051
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][2]["Num"] = 1
	-- 黄色神纹精粹（赠）
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][3] = {}
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][3]["Id"] = 3313588
	tPublicBOSS_BossDrop[5354]["CertainlyDrop"]["Item"][3]["Num"] = 5

	
	-- 额外掉落 额外概率掉落5% 龙珠、10% 中级神魂包、75% 黄色神纹碎片 55%概率掉高级未鉴定神器（概率在右侧）
	tPublicBOSS_BossDrop[5354]["ProbDrop"] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	5%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][1] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][1]["ItemChance"] =500
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	95%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][2] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][2]["ItemChance"] = 9500
	tPublicBOSS_BossDrop[5354]["ProbDrop"][1][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 中级未鉴定神器	60%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][1] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][1]["ItemChance"] = 6000
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][1]["Item_1"] = 3313230
	-- 不掉	40%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][2] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][2]["ItemChance"] = 4000
	tPublicBOSS_BossDrop[5354]["ProbDrop"][2][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 中级神魂包	10%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][1] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][1]["ItemChance"] = 1000
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][1]["Item_1"] = 3321084
	-- 不掉	90%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][2] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][2]["ItemChance"] = 9000
	tPublicBOSS_BossDrop[5354]["ProbDrop"][3][2]["Item_1"] = 0
	
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4]["ItemChanceSum"] = 10000
	-- 黄色神纹碎片	80%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][1] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][1]["ItemChance"] = 8000
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][1]["Item_1"] = 3306370
	-- 不掉	20%
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][2] = {}
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][2]["ItemChance"] = 2000
	tPublicBOSS_BossDrop[5354]["ProbDrop"][4][2]["Item_1"] = 0

-- 115级世界BOSS
	-- tPublicBOSS_BossDrop[5355] = {}
	-- tPublicBOSS_BossDrop[5355]["Reward"] = {}
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardItem"] = {}
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardItem"][1] = {}
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardItem"][1]["Id"] = 3321081  --世界BOSS礼包
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardEffect"] = {}
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardEffect"]["SzObj"] = "self"
	-- tPublicBOSS_BossDrop[5355]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tPublicBOSS_BossDrop[5355]["Reward"]["LogId"] = 18000207
	
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Money"]["Value"] = 50000
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Money"]["Num"] = 10
	--气力丹
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"] = {}
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"][1] = {}
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"][1]["Id"] = 3321077
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"][1]["Num"] = 5
	-- 高级未鉴定神器
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"][2] = {}
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"][2]["Id"] = 3313232
	-- tPublicBOSS_BossDrop[5355]["CertainlyDrop"]["Item"][2]["Num"] = 1

	
	-- 额外掉落 额外概率掉落30% 龙珠、20% 高级神魂包、20% 稀有黄色神纹碎片
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	10%
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][1] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][1]["ItemChance"] =1000
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	70%
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][2] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][2]["ItemChance"] = 9000
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][1][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 高级神魂包	5%
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][1] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][1]["ItemChance"] = 500
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][1]["Item_1"] = 3321085
	-- 不掉	20%
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][2] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][2]["ItemChance"] = 9500
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][2][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 稀有黄色神纹碎片	5%
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][1] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][1]["ItemChance"] = 500
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][1]["Item_1"] = 3311744
	-- 不掉	80%
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][2] = {}
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][2]["ItemChance"] = 9500
	-- tPublicBOSS_BossDrop[5355]["ProbDrop"][3][2]["Item_1"] = 0
	
-- 125级世界BOSS
	-- tPublicBOSS_BossDrop[5356] = {}
	-- tPublicBOSS_BossDrop[5356]["Reward"] = {}
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardItem"] = {}
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardItem"][1] = {}
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardItem"][1]["Id"] = 3321081  --世界BOSS礼包
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardEffect"] = {}
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardEffect"]["SzObj"] = "self"
	-- tPublicBOSS_BossDrop[5356]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tPublicBOSS_BossDrop[5356]["Reward"]["LogId"] = 18000207
	
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Money"]["Value"] = 60000
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Money"]["Num"] = 10
	--明亮星陨石
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"] = {}
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"][1] = {}
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"][1]["Id"] = 3321051
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"][1]["Num"] = 5
	-- 高级未鉴定神器
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"][2] = {}
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"][2]["Id"] = 3313232
	-- tPublicBOSS_BossDrop[5356]["CertainlyDrop"]["Item"][2]["Num"] = 1

	
	-- 额外概率掉落30% 龙珠、20% 高级神魂包、30% 稀有黄色神纹碎片
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	15%
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][1] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][1]["ItemChance"] =1500
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	70%
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][2] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][2]["ItemChance"] = 8500
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][1][2]["Item_1"] = 0
		
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 高级神魂包	10%
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][1] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][1]["ItemChance"] = 1000
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][1]["Item_1"] = 3321085
	-- 不掉	20%
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][2] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][2]["ItemChance"] = 9000
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][2][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 稀有黄色神纹碎片	10%
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][1] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][1]["ItemChance"] = 1000
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][1]["Item_1"] = 3311744
	-- 不掉	70%
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][2] = {}
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][2]["ItemChance"] = 9000
	-- tPublicBOSS_BossDrop[5356]["ProbDrop"][3][2]["Item_1"] = 0
-- 135级世界BOSS
	-- tPublicBOSS_BossDrop[5357] = {}
	-- tPublicBOSS_BossDrop[5357]["Reward"] = {}
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardItem"] = {}
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardItem"][1] = {}
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardItem"][1]["Id"] = 3321081  --世界BOSS礼包
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardEffect"] = {}
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardEffect"]["SzObj"] = "self"
	-- tPublicBOSS_BossDrop[5357]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tPublicBOSS_BossDrop[5357]["Reward"]["LogId"] = 18000207
	
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Money"]["Value"] = 750000
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Money"]["Num"] = 10
	--秘制免费修炼丹
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"] = {}
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"][1] = {}
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"][1]["Id"] = 3002926
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"][1]["Num"] = 5
	-- 高级未鉴定神器
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"][2] = {}
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"][2]["Id"] = 3313232
	-- tPublicBOSS_BossDrop[5357]["CertainlyDrop"]["Item"][2]["Num"] = 2

	
	-- 额外概率掉落30% 龙珠、20% 高级神魂包、30% 稀有黄色神纹碎片
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	25%
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][1] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][1]["ItemChance"] =2500
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	70%
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][2] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][2]["ItemChance"] = 7500
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][1][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 高级神魂包	15%
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][1] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][1]["ItemChance"] = 1500
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][1]["Item_1"] = 3321085
	-- 不掉	20%
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][2] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][2]["ItemChance"] = 8500
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][2][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 稀有黄色神纹碎片	40%
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][1] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][1]["ItemChance"] = 3000
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][1]["Item_1"] = 3311744
	-- 不掉	60%
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][2] = {}
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][2]["ItemChance"] = 7000
	-- tPublicBOSS_BossDrop[5357]["ProbDrop"][3][2]["Item_1"] = 0
-- 145级世界BOSS
	-- tPublicBOSS_BossDrop[5358] = {}
	-- tPublicBOSS_BossDrop[5358]["Reward"] = {}
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardItem"] = {}
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardItem"][1] = {}
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardItem"][1]["Id"] = 3321081  --世界BOSS礼包
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardEffect"] = {}
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardEffect"]["SzObj"] = "self"
	-- tPublicBOSS_BossDrop[5358]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tPublicBOSS_BossDrop[5358]["Reward"]["LogId"] = 18000207
	
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Money"]["Value"] = 100000
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Money"]["Num"] = 10
	--黄色神纹碎片
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"] = {}
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"][1] = {}
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"][1]["Id"] = 3306370
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"][1]["Num"] = 5
	-- 2个高级未鉴定神器
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"][2] = {}
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"][2]["Id"] = 3313232
	-- tPublicBOSS_BossDrop[5358]["CertainlyDrop"]["Item"][2]["Num"] = 2

	
	-- 额外概率掉落30% 龙珠、20% 高级神魂包、30% 稀有黄色神纹碎片
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠	40%
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][1] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][1]["ItemChance"] =4000
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][1]["Item_1"] = 3301808
	-- 不掉	70%
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][2] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][2]["ItemChance"] = 6000
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][1][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 高级神魂包	20%
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][1] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][1]["ItemChance"] = 2000
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][1]["Item_1"] = 3321085
	-- 不掉	20%
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][2] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][2]["ItemChance"] = 8000
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][2][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3]["ItemChanceSum"] = 10000
	-- 稀有黄色神纹碎片	50%
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][1] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][1]["ItemChance"] = 5000
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][1]["Item_1"] = 3311744
	-- 不掉	50%
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][2] = {}
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][2]["ItemChance"] = 5000
	-- tPublicBOSS_BossDrop[5358]["ProbDrop"][3][2]["Item_1"] = 0
-- 150级世界大BOSS
	-- tPublicBOSS_BossDrop[5359] = {}
	-- tPublicBOSS_BossDrop[5359]["Reward"] = {}
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardItem"] = {}
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardItem"][1] = {}
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardItem"][1]["Id"] = 3321081  --3个世界BOSS礼包（激活1天）
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardItem"][1]["Attr"] = "0 3 0 1440 1"
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardEffect"] = {}
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardEffect"]["SzObj"] = "self"
	-- tPublicBOSS_BossDrop[5359]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tPublicBOSS_BossDrop[5359]["Reward"]["LogId"] = 18000207
	
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"] = {}
	--银两
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Money"] = {}
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Money"]["Value"] = 300000
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Money"]["Num"] = 10
	--龙珠
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"] = {}
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][1] = {}
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][1]["Id"] = 3301808
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][1]["Num"] = 1
	-- 5个高级未鉴定神器
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][2] = {}
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][2]["Id"] = 3313232
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][2]["Num"] = 5
	-- 3个稀有黄色神纹碎片
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][3] = {}
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][3]["Id"] = 3311744
	-- tPublicBOSS_BossDrop[5359]["CertainlyDrop"]["Item"][3]["Num"] = 3
	
	--额外概率掉落50% 高级神魂包、50% 金钢坚钻碎片
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1]["ItemChanceSum"] = 10000
	-- 金钢坚钻碎片	50%
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][1] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][1]["ItemChance"] =5000
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][1]["Item_1"] = 3311724
	-- 不掉	50%
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][2] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][2]["ItemChance"] = 5000
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][1][2]["Item_1"] = 0
	
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2]["ItemChanceSum"] = 10000
	-- 高级神魂包	50%
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][1] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][1]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][1]["ItemChance"] = 5000
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][1]["Item_1"] = 3321085
	-- 不掉	50%
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][2] = {}
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][2]["RandomItemChanceType"] = 2
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][2]["ItemChance"] = 5000
	-- tPublicBOSS_BossDrop[5359]["ProbDrop"][2][2]["Item_1"] = 0
	




-- 邮件发奖
local tPublicBOSS_SendMail = {}
	-- 排行榜数量
	tPublicBOSS_SendMail["RankTotal"] = 10

	tPublicBOSS_SendMail["ExistDay"] = 30 --持续天数
	-- 115级世界BOSS 伤害排名奖励
	tPublicBOSS_SendMail[5355] = {}
	tPublicBOSS_SendMail[5355][1] = 573389
	tPublicBOSS_SendMail[5355][2] = 573390
	tPublicBOSS_SendMail[5355][3] = 573390
	tPublicBOSS_SendMail[5355][4] = 573391
	tPublicBOSS_SendMail[5355][5] = 573391
	tPublicBOSS_SendMail[5355][6] = 573391
	tPublicBOSS_SendMail[5355][7] = 573392
	tPublicBOSS_SendMail[5355][8] = 573392
	tPublicBOSS_SendMail[5355][9] = 573392
	tPublicBOSS_SendMail[5355][10] = 573392
	
	-- 125级世界BOSS  伤害排名奖励
	tPublicBOSS_SendMail[5356] = {}
	tPublicBOSS_SendMail[5356][1] = 573393
	tPublicBOSS_SendMail[5356][2] = 573394
	tPublicBOSS_SendMail[5356][3] = 573394
	tPublicBOSS_SendMail[5356][4] = 573395
	tPublicBOSS_SendMail[5356][5] = 573395
	tPublicBOSS_SendMail[5356][6] = 573395
	tPublicBOSS_SendMail[5356][7] = 573396
	tPublicBOSS_SendMail[5356][8] = 573396
	tPublicBOSS_SendMail[5356][9] = 573396
	tPublicBOSS_SendMail[5356][10] = 573396

	-- 135级世界BOSS 伤害排名奖励
	tPublicBOSS_SendMail[5357] = {}
	tPublicBOSS_SendMail[5357][1] = 573397
	tPublicBOSS_SendMail[5357][2] = 573398
	tPublicBOSS_SendMail[5357][3] = 573398
	tPublicBOSS_SendMail[5357][4] = 573399
	tPublicBOSS_SendMail[5357][5] = 573399
	tPublicBOSS_SendMail[5357][6] = 573399
	tPublicBOSS_SendMail[5357][7] = 573400
	tPublicBOSS_SendMail[5357][8] = 573400
	tPublicBOSS_SendMail[5357][9] = 573400
	tPublicBOSS_SendMail[5357][10] = 573400
	
	-- 145级世界BOSS 伤害排名奖励
	tPublicBOSS_SendMail[5358] = {}
	tPublicBOSS_SendMail[5358][1] = 573401
	tPublicBOSS_SendMail[5358][2] = 573402
	tPublicBOSS_SendMail[5358][3] = 573402
	tPublicBOSS_SendMail[5358][4] = 573403
	tPublicBOSS_SendMail[5358][5] = 573403
	tPublicBOSS_SendMail[5358][6] = 573403
	tPublicBOSS_SendMail[5358][7] = 573404
	tPublicBOSS_SendMail[5358][8] = 573404
	tPublicBOSS_SendMail[5358][9] = 573404
	tPublicBOSS_SendMail[5358][10] = 573404
	
	-- 150级世界大BOSS 伤害排名奖励
	tPublicBOSS_SendMail[5359] = {}
	tPublicBOSS_SendMail[5359][1] = 573405
	tPublicBOSS_SendMail[5359][2] = 573406
	tPublicBOSS_SendMail[5359][3] = 573406
	tPublicBOSS_SendMail[5359][4] = 573407
	tPublicBOSS_SendMail[5359][5] = 573407
	tPublicBOSS_SendMail[5359][6] = 573407
	tPublicBOSS_SendMail[5359][7] = 573390
	tPublicBOSS_SendMail[5359][8] = 573390
	tPublicBOSS_SendMail[5359][9] = 573390
	tPublicBOSS_SendMail[5359][10] = 573390

	tPublicBOSS_SendMail["Join"] = 573408
-- 奖励配置
local tPublicBOSS_Reward = {}
	-- ===虎胆回气丸
	-- ===索引: 3321076,1
	-- ===删除: 3321076,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321076] = {}
	tPublicBOSS_Reward[3321076]["Batch"] = 50  ---自动批量使用的数量
	tPublicBOSS_Reward[3321076][1] = {}
	tPublicBOSS_Reward[3321076][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321076][1]["LogStep"] = "2"
	tPublicBOSS_Reward[3321076][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321076][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321076][1]["DeleteItem"][1]["Id"] = 3321076 -- 【库】虎胆回气丸[属性:0]
	tPublicBOSS_Reward[3321076][1]["RewardStrengthValue"] = {}
	tPublicBOSS_Reward[3321076][1]["RewardStrengthValue"]["Value"] = 10 -- 气力值

	-- ===龙骨回气丸
	-- ===索引: 3321077,1
	-- ===删除: 3321077,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321077] = {}
	tPublicBOSS_Reward[3321077]["Batch"] = 10  ---自动批量使用的数量
	tPublicBOSS_Reward[3321077][1] = {}
	tPublicBOSS_Reward[3321077][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321077][1]["LogStep"] = "2"
	tPublicBOSS_Reward[3321077][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321077][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321077][1]["DeleteItem"][1]["Id"] = 3321077 -- 【库】龙骨回气丸[属性:0]
	tPublicBOSS_Reward[3321077][1]["RewardStrengthValue"] = {}
	tPublicBOSS_Reward[3321077][1]["RewardStrengthValue"]["Value"] = 100 -- 气力值

	-- ===初级BOSS礼包
	-- ===索引: 3321078,1
	-- ===删除: 3321078,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321078] = {}
	tPublicBOSS_Reward[3321078][1] = {}
	tPublicBOSS_Reward[3321078][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321078][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321078][1]["LogStep"] = " 2"
	tPublicBOSS_Reward[3321078][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321078][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321078][1]["DeleteItem"][1]["Id"] = 3321078
	-- 龙珠（赠）*1-- 【必给】
	tPublicBOSS_Reward[3321078][1][1] = {}
	tPublicBOSS_Reward[3321078][1][1]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321078][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321078][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321078][1][1]["RewardItem"][1]["Id"] = 3301808 -- 【库】龙珠[属性:0]【表格】龙珠（赠）*1
	tPublicBOSS_Reward[3321078][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙珠(赠)*1
	-- 聚神丹（赠）*1-- 【必给】
	tPublicBOSS_Reward[3321078][1][2] = {}
	tPublicBOSS_Reward[3321078][1][2]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321078][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321078][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321078][1][2]["RewardItem"][1]["Id"] = 3314900 -- 【库】聚神丹[属性:0]【表格】聚神丹（赠）*1
	tPublicBOSS_Reward[3321078][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 聚神丹(赠)*1
	-- 赤炼石+1*1 - 57.00%
	tPublicBOSS_Reward[3321078][1][3] = {}
	tPublicBOSS_Reward[3321078][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321078][1][3]["ItemChance"] = 5700
	tPublicBOSS_Reward[3321078][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321078][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321078][1][3]["RewardItem"][1]["Id"] = 730001 -- 【库】+1赤炼石[属性:0]【表格】赤炼石+1*1
	tPublicBOSS_Reward[3321078][1][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+1赤炼石*1
	-- 赤炼石+2*1 - 35.00%
	tPublicBOSS_Reward[3321078][1][4] = {}
	tPublicBOSS_Reward[3321078][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321078][1][4]["ItemChance"] = 3500
	tPublicBOSS_Reward[3321078][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321078][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321078][1][4]["RewardItem"][1]["Id"] = 730002 -- 【库】+2赤炼石[属性:0]【表格】赤炼石+2*1
	tPublicBOSS_Reward[3321078][1][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+2赤炼石*1
	-- 赤炼石+3*1 - 6.50%
	tPublicBOSS_Reward[3321078][1][5] = {}
	tPublicBOSS_Reward[3321078][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321078][1][5]["ItemChance"] = 650
	tPublicBOSS_Reward[3321078][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward[3321078][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321078][1][5]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3*1
	tPublicBOSS_Reward[3321078][1][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+3赤炼石*1
	-- 赤炼石+5*1 - 1.50%
	tPublicBOSS_Reward[3321078][1][6] = {}
	tPublicBOSS_Reward[3321078][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321078][1][6]["ItemChance"] = 150
	tPublicBOSS_Reward[3321078][1][6]["RewardItem"] = {}
	tPublicBOSS_Reward[3321078][1][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321078][1][6]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】赤炼石+5*1
	tPublicBOSS_Reward[3321078][1][6]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+5赤炼石*1

	-- ===中级BOSS礼包
	-- ===索引: 3321079,1
	-- ===删除: 3321079,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321079] = {}
	tPublicBOSS_Reward[3321079][1] = {}
	tPublicBOSS_Reward[3321079][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321079][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321079][1]["LogStep"] = " 2"
	tPublicBOSS_Reward[3321079][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321079][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321079][1]["DeleteItem"][1]["Id"] = 3321079
	-- 龙珠（赠）*1-- 【必给】
	tPublicBOSS_Reward[3321079][1][1] = {}
	tPublicBOSS_Reward[3321079][1][1]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321079][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321079][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321079][1][1]["RewardItem"][1]["Id"] = 3301808 -- 【库】龙珠[属性:0]【表格】龙珠（赠）*1
	tPublicBOSS_Reward[3321079][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙珠(赠)*1
	-- 聚神丹（赠）*2-- 【必给】
	tPublicBOSS_Reward[3321079][1][2] = {}
	tPublicBOSS_Reward[3321079][1][2]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321079][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321079][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321079][1][2]["RewardItem"][1]["Id"] = 3314900 -- 【库】聚神丹[属性:0]【表格】聚神丹（赠）*2
	tPublicBOSS_Reward[3321079][1][2]["RewardItem"][1]["Attr"] = "0 2 3" -- 聚神丹(赠)*2
	-- 赤炼石+2*1 - 90.00%
	tPublicBOSS_Reward[3321079][1][3] = {}
	tPublicBOSS_Reward[3321079][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321079][1][3]["ItemChance"] = 9000
	tPublicBOSS_Reward[3321079][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321079][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321079][1][3]["RewardItem"][1]["Id"] = 730002 -- 【库】+2赤炼石[属性:0]【表格】赤炼石+2*1
	tPublicBOSS_Reward[3321079][1][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+2赤炼石*1
	-- 赤炼石+3*1 - 8.00%
	tPublicBOSS_Reward[3321079][1][4] = {}
	tPublicBOSS_Reward[3321079][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321079][1][4]["ItemChance"] = 800
	tPublicBOSS_Reward[3321079][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321079][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321079][1][4]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3*1
	tPublicBOSS_Reward[3321079][1][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+3赤炼石*1
	-- 赤炼石+5*1 - 2.00%
	tPublicBOSS_Reward[3321079][1][5] = {}
	tPublicBOSS_Reward[3321079][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321079][1][5]["ItemChance"] = 200
	tPublicBOSS_Reward[3321079][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward[3321079][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321079][1][5]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】赤炼石+5*1
	tPublicBOSS_Reward[3321079][1][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+5赤炼石*1

	-- ===高级BOSS礼包
	-- ===索引: 3321080,1
	-- ===删除: 3321080,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321080] = {}
	tPublicBOSS_Reward[3321080][1] = {}
	tPublicBOSS_Reward[3321080][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321080][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321080][1]["LogStep"] = " 2"
	tPublicBOSS_Reward[3321080][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321080][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321080][1]["DeleteItem"][1]["Id"] = 3321080
	-- 龙珠（赠）*1-- 【必给】
	tPublicBOSS_Reward[3321080][1][1] = {}
	tPublicBOSS_Reward[3321080][1][1]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321080][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][1]["RewardItem"][1]["Id"] = 3301808 -- 【库】龙珠[属性:0]【表格】龙珠（赠）*1
	tPublicBOSS_Reward[3321080][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙珠(赠)*1
	-- 聚神丹（赠）*2-- 【必给】
	tPublicBOSS_Reward[3321080][1][2] = {}
	tPublicBOSS_Reward[3321080][1][2]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321080][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][2]["RewardItem"][1]["Id"] = 3314900 -- 【库】聚神丹[属性:0]【表格】聚神丹（赠）*2
	tPublicBOSS_Reward[3321080][1][2]["RewardItem"][1]["Attr"] = "0 2 3" -- 聚神丹(赠)*2
	-- 100点气力丹（赠）*1-- 【必给】
	tPublicBOSS_Reward[3321080][1][3] = {}
	tPublicBOSS_Reward[3321080][1][3]["RandomItemChanceType"] = 1
	tPublicBOSS_Reward[3321080][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][3]["RewardItem"][1]["Id"] = 3321077 -- 【库】龙骨回气丸[属性:0]【表格】100点气力丹（赠）*1
	tPublicBOSS_Reward[3321080][1][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙骨回气丸(赠)*1
	-- 赤炼石+2*1 - 85.00%
	tPublicBOSS_Reward[3321080][1][4] = {}
	tPublicBOSS_Reward[3321080][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321080][1][4]["ItemChance"] = 8500
	tPublicBOSS_Reward[3321080][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][4]["RewardItem"][1]["Id"] = 730002 -- 【库】+2赤炼石[属性:0]【表格】赤炼石+2*1
	tPublicBOSS_Reward[3321080][1][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+2赤炼石*1
	-- 赤炼石+3*1 - 12.00%
	tPublicBOSS_Reward[3321080][1][5] = {}
	tPublicBOSS_Reward[3321080][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321080][1][5]["ItemChance"] = 1200
	tPublicBOSS_Reward[3321080][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][5]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3*1
	tPublicBOSS_Reward[3321080][1][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+3赤炼石*1
	-- 赤炼石+5*1 - 2.50%
	tPublicBOSS_Reward[3321080][1][6] = {}
	tPublicBOSS_Reward[3321080][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321080][1][6]["ItemChance"] = 250
	tPublicBOSS_Reward[3321080][1][6]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][6]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】赤炼石+5*1
	tPublicBOSS_Reward[3321080][1][6]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+5赤炼石*1
	-- 赤炼石+6*1 - 0.50%
	tPublicBOSS_Reward[3321080][1][7] = {}
	tPublicBOSS_Reward[3321080][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321080][1][7]["ItemChance"] = 50
	tPublicBOSS_Reward[3321080][1][7]["RewardItem"] = {}
	tPublicBOSS_Reward[3321080][1][7]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321080][1][7]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】赤炼石+6*1
	tPublicBOSS_Reward[3321080][1][7]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+6赤炼石*1

	-- ===世界BOSS礼包
	-- ===索引: 3321081,1
	-- ===删除: 3321081,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321081] = {}
	tPublicBOSS_Reward[3321081][1] = {}
	tPublicBOSS_Reward[3321081][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321081][1]["LogStep"] = "2"
	tPublicBOSS_Reward[3321081][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321081][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321081][1]["DeleteItem"][1]["Id"] = 3321081 -- 【库】魔神秘宝[属性:11]
	tPublicBOSS_Reward[3321081][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][1]["RewardItem"][1]["Id"] = 3004257 -- 【库】萌系武器外套碎片礼包[属性:9]【表格】萌系武器外套碎片礼包*1
	tPublicBOSS_Reward[3321081][1]["RewardItem"][1]["Attr"] = "0 1" -- 萌系武器外套碎片礼包*1
	tPublicBOSS_Reward[3321081][1]["RewardItem"][2] = {}
	tPublicBOSS_Reward[3321081][1]["RewardItem"][2]["Id"] = 3321077 -- 【库】龙骨回气丸[属性:0]【表格】100点气力丹（赠）*3
	tPublicBOSS_Reward[3321081][1]["RewardItem"][2]["Attr"] = "0 3 3" -- 龙骨回气丸(赠)*3

	tPublicBOSS_Reward[3321081][2] = {}
	tPublicBOSS_Reward[3321081][2]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321081][2]["LogId"] = 18000207
	tPublicBOSS_Reward[3321081][2]["LogStep"] = " 2"
	-- 赤炼石+3 - 94.00%
	tPublicBOSS_Reward[3321081][2][1] = {}
	tPublicBOSS_Reward[3321081][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][2][1]["ItemChance"] = 9400
	tPublicBOSS_Reward[3321081][2][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][2][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][2][1]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3
	tPublicBOSS_Reward[3321081][2][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+3赤炼石*1
	-- 赤炼石+5 - 5.00%
	tPublicBOSS_Reward[3321081][2][2] = {}
	tPublicBOSS_Reward[3321081][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][2][2]["ItemChance"] = 500
	tPublicBOSS_Reward[3321081][2][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][2][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][2][2]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】赤炼石+5
	tPublicBOSS_Reward[3321081][2][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+5赤炼石*1
	-- 赤炼石+6 - 1.00%
	tPublicBOSS_Reward[3321081][2][3] = {}
	tPublicBOSS_Reward[3321081][2][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][2][3]["ItemChance"] = 100
	tPublicBOSS_Reward[3321081][2][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][2][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][2][3]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】赤炼石+6
	tPublicBOSS_Reward[3321081][2][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的+6赤炼石*1

	tPublicBOSS_Reward[3321081][3] = {}
	tPublicBOSS_Reward[3321081][3]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321081][3]["LogId"] = 18000207
	tPublicBOSS_Reward[3321081][3]["LogStep"] = " 2"
	-- 1阶灵珠 - 60.00%
	tPublicBOSS_Reward[3321081][3][1] = {}
	tPublicBOSS_Reward[3321081][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][3][1]["ItemChance"] = 6000
	tPublicBOSS_Reward[3321081][3][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][3][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][3][1]["RewardItem"][1]["Id"] = 4200001 -- 【库】1阶灵珠[属性:8]【表格】1阶灵珠
	tPublicBOSS_Reward[3321081][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tPublicBOSS_Reward[3321081][3][1]["RewardItem"][1]["PreciousType"] = 321
	-- 2阶灵珠 - 30.00%
	tPublicBOSS_Reward[3321081][3][2] = {}
	tPublicBOSS_Reward[3321081][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][3][2]["ItemChance"] = 3000
	tPublicBOSS_Reward[3321081][3][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][3][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][3][2]["RewardItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:8]【表格】2阶灵珠
	tPublicBOSS_Reward[3321081][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	tPublicBOSS_Reward[3321081][3][2]["RewardItem"][1]["PreciousType"] = 321

	-- 3阶灵珠 - 9.00%
	tPublicBOSS_Reward[3321081][3][3] = {}
	tPublicBOSS_Reward[3321081][3][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][3][3]["ItemChance"] = 900
	tPublicBOSS_Reward[3321081][3][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][3][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][3][3]["RewardItem"][1]["Id"] = 4200003 -- 【库】3阶灵珠[属性:8]【表格】3阶灵珠
	tPublicBOSS_Reward[3321081][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tPublicBOSS_Reward[3321081][3][3]["RewardItem"][1]["PreciousType"] = 321

	-- 5阶灵珠 - 1.00%
	tPublicBOSS_Reward[3321081][3][4] = {}
	tPublicBOSS_Reward[3321081][3][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321081][3][4]["ItemChance"] = 100
	tPublicBOSS_Reward[3321081][3][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321081][3][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321081][3][4]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:8]【表格】5阶灵珠
	tPublicBOSS_Reward[3321081][3][4]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tPublicBOSS_Reward[3321081][3][4]["RewardItem"][1]["PreciousType"] = 321


	-- ===世界BOSS参与礼包
	-- ===索引: 3321082,1
	-- ===删除: 3321082,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321082] = {}
	tPublicBOSS_Reward[3321082][1] = {}
	tPublicBOSS_Reward[3321082][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321082][1]["LogStep"] = "2"
	tPublicBOSS_Reward[3321082][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321082][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321082][1]["DeleteItem"][1]["Id"] = 3321082 -- 【库】除魔嘉奖包[属性:11]
	tPublicBOSS_Reward[3321082][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321082][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321082][1]["RewardItem"][1]["Id"] = 4060001
	tPublicBOSS_Reward[3321082][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tPublicBOSS_Reward[3321082][1]["RewardItem"][2] = {}
	tPublicBOSS_Reward[3321082][1]["RewardItem"][2]["Id"] = 3321077 -- 【库】龙骨回气丸[属性:0]【表格】100点气力丹（赠）
	tPublicBOSS_Reward[3321082][1]["RewardItem"][2]["Attr"] = "0 1 3" -- 龙骨回气丸(赠)*1

	-- ===初级神魂包
	-- ===索引: 3321083,1
	-- ===删除: 3321083,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321083] = {}
	tPublicBOSS_Reward[3321083][1] = {}
	tPublicBOSS_Reward[3321083][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321083][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321083][1]["LogStep"] = " 2"
	tPublicBOSS_Reward[3321083][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321083][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321083][1]["DeleteItem"][1]["Id"] = 3321083
	-- 一阶防具神魂（未鉴定） - 20.00%
	tPublicBOSS_Reward[3321083][1][1] = {}
	tPublicBOSS_Reward[3321083][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][1]["ItemChance"] = 2000
	tPublicBOSS_Reward[3321083][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][1]["RewardItem"][1]["Id"] = 3310809 -- 【库】一阶防具神魂（未鉴定）[属性:0]【表格】一阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 一阶防具神魂（未鉴定）*1
	-- 一阶武器神魂（未鉴定） - 25.00%
	tPublicBOSS_Reward[3321083][1][2] = {}
	tPublicBOSS_Reward[3321083][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][2]["ItemChance"] = 2500
	tPublicBOSS_Reward[3321083][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][2]["RewardItem"][1]["Id"] = 3310810 -- 【库】一阶武器神魂（未鉴定）[属性:0]【表格】一阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 一阶武器神魂（未鉴定）*1
	-- 二阶防具神魂（未鉴定） - 20.00%
	tPublicBOSS_Reward[3321083][1][3] = {}
	tPublicBOSS_Reward[3321083][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][3]["ItemChance"] = 2000
	tPublicBOSS_Reward[3321083][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][3]["RewardItem"][1]["Id"] = 3310811 -- 【库】二阶防具神魂（未鉴定）[属性:0]【表格】二阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 二阶防具神魂（未鉴定）*1
	-- 三阶防具神魂（未鉴定） - 15.00%
	tPublicBOSS_Reward[3321083][1][4] = {}
	tPublicBOSS_Reward[3321083][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][4]["ItemChance"] = 1500
	tPublicBOSS_Reward[3321083][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][4]["RewardItem"][1]["Id"] = 3310813 -- 【库】三阶防具神魂（未鉴定）[属性:0]【表格】三阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 三阶防具神魂（未鉴定）*1
	-- 三阶武器神魂（未鉴定） - 10.00%
	tPublicBOSS_Reward[3321083][1][5] = {}
	tPublicBOSS_Reward[3321083][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][5]["ItemChance"] = 1000
	tPublicBOSS_Reward[3321083][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][5]["RewardItem"][1]["Id"] = 3310814 -- 【库】三阶武器神魂（未鉴定）[属性:0]【表格】三阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 三阶武器神魂（未鉴定）*1
	-- 四阶武器神魂（未鉴定） - 5.00%
	tPublicBOSS_Reward[3321083][1][6] = {}
	tPublicBOSS_Reward[3321083][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][6]["ItemChance"] = 500
	tPublicBOSS_Reward[3321083][1][6]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][6]["RewardItem"][1]["Id"] = 3310816 -- 【库】四阶武器神魂（未鉴定）[属性:0]【表格】四阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 四阶武器神魂（未鉴定）*1
	-- 五阶防具神魂（未鉴定） - 5.00%
	tPublicBOSS_Reward[3321083][1][7] = {}
	tPublicBOSS_Reward[3321083][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321083][1][7]["ItemChance"] = 500
	tPublicBOSS_Reward[3321083][1][7]["RewardItem"] = {}
	tPublicBOSS_Reward[3321083][1][7]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321083][1][7]["RewardItem"][1]["Id"] = 3310817 -- 【库】五阶防具神魂（未鉴定）[属性:0]【表格】五阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321083][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 五阶防具神魂（未鉴定）*1


	-- ===中级神魂包
	-- ===索引: 3321084,1
	-- ===删除: 3321084,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321084] = {}
	tPublicBOSS_Reward[3321084][1] = {}
	tPublicBOSS_Reward[3321084][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321084][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321084][1]["LogStep"] = " 2"
	tPublicBOSS_Reward[3321084][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321084][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321084][1]["DeleteItem"][1]["Id"] = 3321084
	-- 三阶防具神魂（未鉴定） - 35.00%
	tPublicBOSS_Reward[3321084][1][1] = {}
	tPublicBOSS_Reward[3321084][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][1]["ItemChance"] = 3500
	tPublicBOSS_Reward[3321084][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][1]["RewardItem"][1]["Id"] = 3310813 -- 【库】三阶防具神魂（未鉴定）[属性:0]【表格】三阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321084][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 三阶防具神魂（未鉴定）*1
	-- 三阶武器神魂（未鉴定） - 25.00%
	tPublicBOSS_Reward[3321084][1][2] = {}
	tPublicBOSS_Reward[3321084][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][2]["ItemChance"] = 2500
	tPublicBOSS_Reward[3321084][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][2]["RewardItem"][1]["Id"] = 3310814 -- 【库】三阶武器神魂（未鉴定）[属性:0]【表格】三阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321084][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 三阶武器神魂（未鉴定）*1
	-- 四阶武器神魂（未鉴定） - 15.00%
	tPublicBOSS_Reward[3321084][1][3] = {}
	tPublicBOSS_Reward[3321084][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][3]["ItemChance"] = 1500
	tPublicBOSS_Reward[3321084][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][3]["RewardItem"][1]["Id"] = 3310816 -- 【库】四阶武器神魂（未鉴定）[属性:0]【表格】四阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321084][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 四阶武器神魂（未鉴定）*1
	-- 五阶防具神魂（未鉴定） - 15.00%
	tPublicBOSS_Reward[3321084][1][4] = {}
	tPublicBOSS_Reward[3321084][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][4]["ItemChance"] = 1500
	tPublicBOSS_Reward[3321084][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][4]["RewardItem"][1]["Id"] = 3310817 -- 【库】五阶防具神魂（未鉴定）[属性:0]【表格】五阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321084][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 五阶防具神魂（未鉴定）*1
	-- 六阶防具神魂（未鉴定） - 5.00%
	tPublicBOSS_Reward[3321084][1][5] = {}
	tPublicBOSS_Reward[3321084][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][5]["ItemChance"] = 500
	tPublicBOSS_Reward[3321084][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][5]["RewardItem"][1]["Id"] = 3310819 -- 【库】六阶防具神魂（未鉴定）[属性:0]【表格】六阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321084][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 六阶防具神魂（未鉴定）*1
	-- 六阶武器神魂（未鉴定） - 2.00%
	tPublicBOSS_Reward[3321084][1][6] = {}
	tPublicBOSS_Reward[3321084][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][6]["ItemChance"] = 200
	tPublicBOSS_Reward[3321084][1][6]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][6]["RewardItem"][1]["Id"] = 3310820 -- 【库】六阶武器神魂（未鉴定）[属性:0]【表格】六阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321084][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 六阶武器神魂（未鉴定）*1
	-- 七阶防具配饰神魂礼包碎片 - 3.00%
	tPublicBOSS_Reward[3321084][1][7] = {}
	tPublicBOSS_Reward[3321084][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321084][1][7]["ItemChance"] = 300
	tPublicBOSS_Reward[3321084][1][7]["RewardItem"] = {}
	tPublicBOSS_Reward[3321084][1][7]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321084][1][7]["RewardItem"][1]["Id"] = 3315498 -- 【库】七阶防具配饰神魂礼包碎片[属性:9]【表格】七阶防具配饰神魂礼包碎片
	tPublicBOSS_Reward[3321084][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 七阶防具配饰神魂礼包碎片*1


	-- ===高级神魂包
	-- ===索引: 3321085,1
	-- ===删除: 3321085,1
	-- ===LogStep: 2
	-- ===
	tPublicBOSS_Reward[3321085] = {}
	tPublicBOSS_Reward[3321085][1] = {}
	tPublicBOSS_Reward[3321085][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3321085][1]["LogId"] = 18000207
	tPublicBOSS_Reward[3321085][1]["LogStep"] = " 2"
	tPublicBOSS_Reward[3321085][1]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321085][1]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321085][1]["DeleteItem"][1]["Id"] = 3321085
	-- 四阶武器神魂（未鉴定） - 30.00%
	tPublicBOSS_Reward[3321085][1][1] = {}
	tPublicBOSS_Reward[3321085][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321085][1][1]["ItemChance"] = 3000
	tPublicBOSS_Reward[3321085][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward[3321085][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321085][1][1]["RewardItem"][1]["Id"] = 3310816 -- 【库】四阶武器神魂（未鉴定）[属性:0]【表格】四阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321085][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 四阶武器神魂（未鉴定）*1
	-- 五阶防具神魂（未鉴定） - 30.00%
	tPublicBOSS_Reward[3321085][1][2] = {}
	tPublicBOSS_Reward[3321085][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321085][1][2]["ItemChance"] = 3000
	tPublicBOSS_Reward[3321085][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward[3321085][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321085][1][2]["RewardItem"][1]["Id"] = 3310817 -- 【库】五阶防具神魂（未鉴定）[属性:0]【表格】五阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321085][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 五阶防具神魂（未鉴定）*1
	-- 六阶防具神魂（未鉴定） - 10.00%
	tPublicBOSS_Reward[3321085][1][3] = {}
	tPublicBOSS_Reward[3321085][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321085][1][3]["ItemChance"] = 1000
	tPublicBOSS_Reward[3321085][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward[3321085][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321085][1][3]["RewardItem"][1]["Id"] = 3310819 -- 【库】六阶防具神魂（未鉴定）[属性:0]【表格】六阶防具神魂（未鉴定）
	tPublicBOSS_Reward[3321085][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 六阶防具神魂（未鉴定）*1
	-- 六阶武器神魂（未鉴定） - 10.00%
	tPublicBOSS_Reward[3321085][1][4] = {}
	tPublicBOSS_Reward[3321085][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321085][1][4]["ItemChance"] = 1000
	tPublicBOSS_Reward[3321085][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward[3321085][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321085][1][4]["RewardItem"][1]["Id"] = 3310820 -- 【库】六阶武器神魂（未鉴定）[属性:0]【表格】六阶武器神魂（未鉴定）
	tPublicBOSS_Reward[3321085][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 六阶武器神魂（未鉴定）*1
	-- 七阶武器神魂礼包碎片 - 10.00%
	tPublicBOSS_Reward[3321085][1][5] = {}
	tPublicBOSS_Reward[3321085][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321085][1][5]["ItemChance"] = 1000
	tPublicBOSS_Reward[3321085][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward[3321085][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321085][1][5]["RewardItem"][1]["Id"] = 3315497 -- 【库】七阶武器神魂礼包碎片[属性:9]【表格】七阶武器神魂礼包碎片
	tPublicBOSS_Reward[3321085][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 七阶武器神魂礼包碎片*1
	-- 七阶防具配饰神魂礼包碎片 - 10.00%
	tPublicBOSS_Reward[3321085][1][6] = {}
	tPublicBOSS_Reward[3321085][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3321085][1][6]["ItemChance"] = 1000
	tPublicBOSS_Reward[3321085][1][6]["RewardItem"] = {}
	tPublicBOSS_Reward[3321085][1][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321085][1][6]["RewardItem"][1]["Id"] = 3315498 -- 【库】七阶防具配饰神魂礼包碎片[属性:9]【表格】七阶防具配饰神魂礼包碎片
	tPublicBOSS_Reward[3321085][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 七阶防具配饰神魂礼包碎片*1

	-- ===宝箱奖励
	-- ===索引: "BaoXiang",1
	-- ===LogStep: 2
	-- 普通服
	tPublicBOSS_Reward["BaoXiang"] = {}
	tPublicBOSS_Reward["BaoXiang"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward["BaoXiang"][1]["LogId"] = 18000207
	tPublicBOSS_Reward["BaoXiang"][1]["LogStep"] = " 2"
	-- 三元聚宝包 - 18.00%
	tPublicBOSS_Reward["BaoXiang"][1][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][1]["ItemChance"] = 1800
	tPublicBOSS_Reward["BaoXiang"][1][1]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][1]["RewardItem"][1]["Id"] = 4060001 
	tPublicBOSS_Reward["BaoXiang"][1][1]["RewardItem"][1]["Attr"] = "0 5 3"
	-- 五光十色包 - 4.00%
	tPublicBOSS_Reward["BaoXiang"][1][2] = {}
	tPublicBOSS_Reward["BaoXiang"][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][2]["ItemChance"] = 400
	tPublicBOSS_Reward["BaoXiang"][1][2]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][2]["RewardItem"][1]["Id"] = 4060001 
	tPublicBOSS_Reward["BaoXiang"][1][2]["RewardItem"][1]["Attr"] = "0 15 3"
	-- 优质金麟宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][3] = {}
	tPublicBOSS_Reward["BaoXiang"][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][3]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][3]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][3]["RewardItem"][1]["Id"] = 700043 -- 【库】优质金麟宝石[属性:0]【表格】优质金麟宝石
	tPublicBOSS_Reward["BaoXiang"][1][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质金麟宝石*1
	-- 优质青虹宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][4] = {}
	tPublicBOSS_Reward["BaoXiang"][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][4]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][4]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][4]["RewardItem"][1]["Id"] = 700033 -- 【库】优质青虹宝石[属性:0]【表格】优质青虹宝石
	tPublicBOSS_Reward["BaoXiang"][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质青虹宝石*1
	-- 优质惊鸿宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][5] = {}
	tPublicBOSS_Reward["BaoXiang"][1][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][5]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][5]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][5]["RewardItem"][1]["Id"] = 700023 -- 【库】优质惊鸿宝石[属性:0]【表格】优质惊鸿宝石
	tPublicBOSS_Reward["BaoXiang"][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质惊鸿宝石*1
	-- 优质凤吟宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][6] = {}
	tPublicBOSS_Reward["BaoXiang"][1][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][6]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][6]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][6]["RewardItem"][1]["Id"] = 700003 -- 【库】优质凤吟宝石[属性:0]【表格】优质凤吟宝石
	tPublicBOSS_Reward["BaoXiang"][1][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质凤吟宝石*1
	-- 优质紫霞宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][7] = {}
	tPublicBOSS_Reward["BaoXiang"][1][7]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][7]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][7]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][7]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][7]["RewardItem"][1]["Id"] = 700053 -- 【库】优质紫霞宝石[属性:0]【表格】优质紫霞宝石
	tPublicBOSS_Reward["BaoXiang"][1][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质紫霞宝石*1
	-- 优质明月宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][8] = {}
	tPublicBOSS_Reward["BaoXiang"][1][8]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][8]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][8]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][8]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][8]["RewardItem"][1]["Id"] = 700063 -- 【库】优质明月宝石[属性:0]【表格】优质明月宝石
	tPublicBOSS_Reward["BaoXiang"][1][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质明月宝石*1
	-- 优质龙恨宝石 - 0.50%
	tPublicBOSS_Reward["BaoXiang"][1][9] = {}
	tPublicBOSS_Reward["BaoXiang"][1][9]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][9]["ItemChance"] = 50
	tPublicBOSS_Reward["BaoXiang"][1][9]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][9]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][9]["RewardItem"][1]["Id"] = 700013 -- 【库】优质龙恨宝石[属性:0]【表格】优质龙恨宝石
	tPublicBOSS_Reward["BaoXiang"][1][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质龙恨宝石*1
	-- 优质玄元宝石 - 0.50%
	tPublicBOSS_Reward["BaoXiang"][1][10] = {}
	tPublicBOSS_Reward["BaoXiang"][1][10]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][10]["ItemChance"] = 50
	tPublicBOSS_Reward["BaoXiang"][1][10]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][10]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][10]["RewardItem"][1]["Id"] = 700073 -- 【库】优质玄元宝石[属性:0]【表格】优质玄元宝石
	tPublicBOSS_Reward["BaoXiang"][1][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质玄元宝石*1
	-- 良品地灵宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][11] = {}
	tPublicBOSS_Reward["BaoXiang"][1][11]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][11]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][11]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][11]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][11]["RewardItem"][1]["Id"] = 700122 -- 【库】良品地灵宝石[属性:0]【表格】良品地灵宝石
	tPublicBOSS_Reward["BaoXiang"][1][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品地灵宝石*1
	-- 良品天怒宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][1][12] = {}
	tPublicBOSS_Reward["BaoXiang"][1][12]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][12]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][1][12]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][12]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][12]["RewardItem"][1]["Id"] = 700102 -- 【库】良品天怒宝石[属性:0]【表格】良品天怒宝石
	tPublicBOSS_Reward["BaoXiang"][1][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品天怒宝石*1
	-- 流星券 - 20.00%
	tPublicBOSS_Reward["BaoXiang"][1][13] = {}
	tPublicBOSS_Reward["BaoXiang"][1][13]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][13]["ItemChance"] = 2000
	tPublicBOSS_Reward["BaoXiang"][1][13]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][13]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][13]["RewardItem"][1]["Id"] = 720027 -- 【库】流星卷[属性:0]【表格】流星券
	tPublicBOSS_Reward["BaoXiang"][1][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 流星卷*1
	-- 龙珠 - 5.00%
	tPublicBOSS_Reward["BaoXiang"][1][14] = {}
	tPublicBOSS_Reward["BaoXiang"][1][14]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][14]["ItemChance"] = 500
	tPublicBOSS_Reward["BaoXiang"][1][14]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][14]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][14]["RewardItem"][1]["Id"] = 3301808 -- 【库】龙珠[属性:0]【表格】龙珠
	tPublicBOSS_Reward["BaoXiang"][1][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙珠*1
	-- 百炼天机果 - 12.00%
	tPublicBOSS_Reward["BaoXiang"][1][15] = {}
	tPublicBOSS_Reward["BaoXiang"][1][15]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][15]["ItemChance"] = 1200
	tPublicBOSS_Reward["BaoXiang"][1][15]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][15]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][15]["RewardItem"][1]["Id"] = 3001044 -- 【库】百炼天机果[属性:9]【表格】百炼天机果
	tPublicBOSS_Reward["BaoXiang"][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 百炼天机果*1
	-- 回气丹 - 12.00%
	tPublicBOSS_Reward["BaoXiang"][1][16] = {}
	tPublicBOSS_Reward["BaoXiang"][1][16]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][16]["ItemChance"] = 1200
	tPublicBOSS_Reward["BaoXiang"][1][16]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][16]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][16]["RewardItem"][1]["Id"] = 729242 -- 【库】回气丹[属性:0]【表格】回气丹
	tPublicBOSS_Reward["BaoXiang"][1][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 回气丹*1
	-- 1000气力值包 - 2.50%
	tPublicBOSS_Reward["BaoXiang"][1][17] = {}
	tPublicBOSS_Reward["BaoXiang"][1][17]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][17]["ItemChance"] = 250
	tPublicBOSS_Reward["BaoXiang"][1][17]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][17]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][17]["RewardItem"][1]["Id"] = 3008193 -- 【库】1000气力值包[属性:9]【表格】1000气力值包
	tPublicBOSS_Reward["BaoXiang"][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 1000气力值包*1
	-- 3000气力值包 - 0.50%
	tPublicBOSS_Reward["BaoXiang"][1][18] = {}
	tPublicBOSS_Reward["BaoXiang"][1][18]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][18]["ItemChance"] = 50
	tPublicBOSS_Reward["BaoXiang"][1][18]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][18]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][1][18]["RewardItem"][1]["Id"] = 3008198 -- 【库】3000气力值包[属性:9]【表格】3000气力值包
	tPublicBOSS_Reward["BaoXiang"][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值包*1
	-- 六阳聚神丹碎片 - 12.00%
	tPublicBOSS_Reward["BaoXiang"][1][19] = {}
	tPublicBOSS_Reward["BaoXiang"][1][19]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][19]["ItemChance"] = 1200
	tPublicBOSS_Reward["BaoXiang"][1][19]["RewardStrengthValue"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][19]["RewardStrengthValue"]["Value"] = 500
	-- 九转聚神丹碎片 - 1.00%
	tPublicBOSS_Reward["BaoXiang"][1][20] = {}
	tPublicBOSS_Reward["BaoXiang"][1][20]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][1][20]["ItemChance"] = 100
	tPublicBOSS_Reward["BaoXiang"][1][20]["RewardStrengthValue"] = {}
	tPublicBOSS_Reward["BaoXiang"][1][20]["RewardStrengthValue"]["Value"] = 1500

	-- 激情服
	tPublicBOSS_Reward["BaoXiang"][2] = {}
	tPublicBOSS_Reward["BaoXiang"][2]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward["BaoXiang"][2]["LogId"] = 18000207
	tPublicBOSS_Reward["BaoXiang"][2]["LogStep"] = " 2"
	-- 三元聚宝包 - 18.00%
	tPublicBOSS_Reward["BaoXiang"][2][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][1]["ItemChance"] = 1800
	tPublicBOSS_Reward["BaoXiang"][2][1]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][1]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][1]["RewardItem"][1]["Id"] = 4060001 
	tPublicBOSS_Reward["BaoXiang"][2][1]["RewardItem"][1]["Attr"] = "0 5 3"
	-- 五光十色包 - 4.00%
	tPublicBOSS_Reward["BaoXiang"][2][2] = {}
	tPublicBOSS_Reward["BaoXiang"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][2]["ItemChance"] = 400
	tPublicBOSS_Reward["BaoXiang"][2][2]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][2]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][2]["RewardItem"][1]["Id"] = 4060001 
	tPublicBOSS_Reward["BaoXiang"][2][2]["RewardItem"][1]["Attr"] = "0 15 3"
	-- 优质金麟宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][3] = {}
	tPublicBOSS_Reward["BaoXiang"][2][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][3]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][3]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][3]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][3]["RewardItem"][1]["Id"] = 700043 -- 【库】优质金麟宝石[属性:0]【表格】优质金麟宝石
	tPublicBOSS_Reward["BaoXiang"][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 优质金麟宝石*1
	-- 优质青虹宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][4] = {}
	tPublicBOSS_Reward["BaoXiang"][2][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][4]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][4]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][4]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][4]["RewardItem"][1]["Id"] = 700033 -- 【库】优质青虹宝石[属性:0]【表格】优质青虹宝石
	tPublicBOSS_Reward["BaoXiang"][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 优质青虹宝石*1
	-- 优质惊鸿宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][5] = {}
	tPublicBOSS_Reward["BaoXiang"][2][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][5]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][5]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][5]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][5]["RewardItem"][1]["Id"] = 700023 -- 【库】优质惊鸿宝石[属性:0]【表格】优质惊鸿宝石
	tPublicBOSS_Reward["BaoXiang"][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 优质惊鸿宝石*1
	-- 优质凤吟宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][6] = {}
	tPublicBOSS_Reward["BaoXiang"][2][6]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][6]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][6]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][6]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][6]["RewardItem"][1]["Id"] = 700003 -- 【库】优质凤吟宝石[属性:0]【表格】优质凤吟宝石
	tPublicBOSS_Reward["BaoXiang"][2][6]["RewardItem"][1]["Attr"] = "0 1" -- 优质凤吟宝石*1
	-- 优质紫霞宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][7] = {}
	tPublicBOSS_Reward["BaoXiang"][2][7]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][7]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][7]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][7]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][7]["RewardItem"][1]["Id"] = 700053 -- 【库】优质紫霞宝石[属性:0]【表格】优质紫霞宝石
	tPublicBOSS_Reward["BaoXiang"][2][7]["RewardItem"][1]["Attr"] = "0 1" -- 优质紫霞宝石*1
	-- 优质明月宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][8] = {}
	tPublicBOSS_Reward["BaoXiang"][2][8]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][8]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][8]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][8]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][8]["RewardItem"][1]["Id"] = 700063 -- 【库】优质明月宝石[属性:0]【表格】优质明月宝石
	tPublicBOSS_Reward["BaoXiang"][2][8]["RewardItem"][1]["Attr"] = "0 1" -- 优质明月宝石*1
	-- 优质龙恨宝石 - 0.50%
	tPublicBOSS_Reward["BaoXiang"][2][9] = {}
	tPublicBOSS_Reward["BaoXiang"][2][9]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][9]["ItemChance"] = 50
	tPublicBOSS_Reward["BaoXiang"][2][9]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][9]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][9]["RewardItem"][1]["Id"] = 700013 -- 【库】优质龙恨宝石[属性:0]【表格】优质龙恨宝石
	tPublicBOSS_Reward["BaoXiang"][2][9]["RewardItem"][1]["Attr"] = "0 1" -- 优质龙恨宝石*1
	-- 优质玄元宝石 - 0.50%
	tPublicBOSS_Reward["BaoXiang"][2][10] = {}
	tPublicBOSS_Reward["BaoXiang"][2][10]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][10]["ItemChance"] = 50
	tPublicBOSS_Reward["BaoXiang"][2][10]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][10]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][10]["RewardItem"][1]["Id"] = 700073 -- 【库】优质玄元宝石[属性:0]【表格】优质玄元宝石
	tPublicBOSS_Reward["BaoXiang"][2][10]["RewardItem"][1]["Attr"] = "0 1" -- 优质玄元宝石*1
	-- 良品地灵宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][11] = {}
	tPublicBOSS_Reward["BaoXiang"][2][11]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][11]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][11]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][11]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][11]["RewardItem"][1]["Id"] = 700122 -- 【库】良品地灵宝石[属性:0]【表格】良品地灵宝石
	tPublicBOSS_Reward["BaoXiang"][2][11]["RewardItem"][1]["Attr"] = "0 1" -- 良品地灵宝石*1
	-- 良品天怒宝石 - 1.50%
	tPublicBOSS_Reward["BaoXiang"][2][12] = {}
	tPublicBOSS_Reward["BaoXiang"][2][12]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][12]["ItemChance"] = 150
	tPublicBOSS_Reward["BaoXiang"][2][12]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][12]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][12]["RewardItem"][1]["Id"] = 700102 -- 【库】良品天怒宝石[属性:0]【表格】良品天怒宝石
	tPublicBOSS_Reward["BaoXiang"][2][12]["RewardItem"][1]["Attr"] = "0 1" -- 良品天怒宝石*1
	-- 流星券 - 20.00%
	tPublicBOSS_Reward["BaoXiang"][2][13] = {}
	tPublicBOSS_Reward["BaoXiang"][2][13]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][13]["ItemChance"] = 2000
	tPublicBOSS_Reward["BaoXiang"][2][13]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][13]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][13]["RewardItem"][1]["Id"] = 720027 -- 【库】流星卷[属性:0]【表格】流星券
	tPublicBOSS_Reward["BaoXiang"][2][13]["RewardItem"][1]["Attr"] = "0 1" -- 流星卷*1
	-- 龙珠 - 5.00%
	tPublicBOSS_Reward["BaoXiang"][2][14] = {}
	tPublicBOSS_Reward["BaoXiang"][2][14]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][14]["ItemChance"] = 500
	tPublicBOSS_Reward["BaoXiang"][2][14]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][14]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][14]["RewardItem"][1]["Id"] = 3301808 -- 【库】龙珠[属性:0]【表格】龙珠
	tPublicBOSS_Reward["BaoXiang"][2][14]["RewardItem"][1]["Attr"] = "0 1" -- 龙珠*1
	-- 百炼天机果 - 12.00%
	tPublicBOSS_Reward["BaoXiang"][2][15] = {}
	tPublicBOSS_Reward["BaoXiang"][2][15]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][15]["ItemChance"] = 1200
	tPublicBOSS_Reward["BaoXiang"][2][15]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][15]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][15]["RewardItem"][1]["Id"] = 3001044 -- 【库】百炼天机果[属性:9]【表格】百炼天机果
	tPublicBOSS_Reward["BaoXiang"][2][15]["RewardItem"][1]["Attr"] = "0 1" -- 百炼天机果*1
	-- 回气丹 - 12.00%
	tPublicBOSS_Reward["BaoXiang"][2][16] = {}
	tPublicBOSS_Reward["BaoXiang"][2][16]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][16]["ItemChance"] = 1200
	tPublicBOSS_Reward["BaoXiang"][2][16]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][16]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][16]["RewardItem"][1]["Id"] = 729242 -- 【库】回气丹[属性:0]【表格】回气丹
	tPublicBOSS_Reward["BaoXiang"][2][16]["RewardItem"][1]["Attr"] = "0 1" -- 回气丹*1
	-- 1000气力值包 - 2.50%
	tPublicBOSS_Reward["BaoXiang"][2][17] = {}
	tPublicBOSS_Reward["BaoXiang"][2][17]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][17]["ItemChance"] = 250
	tPublicBOSS_Reward["BaoXiang"][2][17]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][17]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][17]["RewardItem"][1]["Id"] = 3008193 -- 【库】1000气力值包[属性:9]【表格】1000气力值包
	tPublicBOSS_Reward["BaoXiang"][2][17]["RewardItem"][1]["Attr"] = "0 1" -- 1000气力值包*1
	-- 3000气力值包 - 0.50%
	tPublicBOSS_Reward["BaoXiang"][2][18] = {}
	tPublicBOSS_Reward["BaoXiang"][2][18]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][18]["ItemChance"] = 50
	tPublicBOSS_Reward["BaoXiang"][2][18]["RewardItem"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][18]["RewardItem"][1] = {}
	tPublicBOSS_Reward["BaoXiang"][2][18]["RewardItem"][1]["Id"] = 3008198 -- 【库】3000气力值包[属性:9]【表格】3000气力值包
	tPublicBOSS_Reward["BaoXiang"][2][18]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值包*1
	-- 六阳聚神丹碎片 - 12.00%
	tPublicBOSS_Reward["BaoXiang"][2][19] = {}
	tPublicBOSS_Reward["BaoXiang"][2][19]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][19]["ItemChance"] = 1200
	tPublicBOSS_Reward["BaoXiang"][2][19]["RewardStrengthValue"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][19]["RewardStrengthValue"]["Value"] = 500
	-- 九转聚神丹碎片 - 1.00%
	tPublicBOSS_Reward["BaoXiang"][2][20] = {}
	tPublicBOSS_Reward["BaoXiang"][2][20]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["BaoXiang"][2][20]["ItemChance"] = 100
	tPublicBOSS_Reward["BaoXiang"][2][20]["RewardStrengthValue"] = {}
	tPublicBOSS_Reward["BaoXiang"][2][20]["RewardStrengthValue"]["Value"] = 1500

-- 初级乾坤炼器炉
	tPublicBOSS_Reward[3313230] = {}
	tPublicBOSS_Reward[3313230][1] = {}
	tPublicBOSS_Reward[3313230][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3313230][1][1] = {}
	tPublicBOSS_Reward[3313230][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313230][1][1]["ItemChance"] = 5500
	tPublicBOSS_Reward[3313230][1][1]["Item_1"] = 2
	tPublicBOSS_Reward[3313230][1][2] = {}
	tPublicBOSS_Reward[3313230][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313230][1][2]["ItemChance"] = 2500
	tPublicBOSS_Reward[3313230][1][2]["Item_1"] = 3 
	tPublicBOSS_Reward[3313230][1][3] = {}
	tPublicBOSS_Reward[3313230][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313230][1][3]["ItemChance"] = 1500
	tPublicBOSS_Reward[3313230][1][3]["Item_1"] = 4
	tPublicBOSS_Reward[3313230][1][4] = {}
	tPublicBOSS_Reward[3313230][1][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313230][1][4]["ItemChance"] = 500
	tPublicBOSS_Reward[3313230][1][4]["Item_1"] = 5 
-- 中级乾坤炼器炉
	tPublicBOSS_Reward[3313231] = {}
	tPublicBOSS_Reward[3313231][1] = {}
	tPublicBOSS_Reward[3313231][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3313231][1][1] = {}
	tPublicBOSS_Reward[3313231][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313231][1][1]["ItemChance"] = 8000
	tPublicBOSS_Reward[3313231][1][1]["Item_1"] = 3
	tPublicBOSS_Reward[3313231][1][2] = {}
	tPublicBOSS_Reward[3313231][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313231][1][2]["ItemChance"] = 1500
	tPublicBOSS_Reward[3313231][1][2]["Item_1"] = 4
	tPublicBOSS_Reward[3313231][1][3] = {}
	tPublicBOSS_Reward[3313231][1][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313231][1][3]["ItemChance"] = 500
	tPublicBOSS_Reward[3313231][1][3]["Item_1"] = 5

-- 高级乾坤炼器炉
	tPublicBOSS_Reward[3313232] = {}
	tPublicBOSS_Reward[3313232][1] = {}
	tPublicBOSS_Reward[3313232][1]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward[3313232][1][1] = {}
	tPublicBOSS_Reward[3313232][1][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313232][1][1]["ItemChance"] = 9000
	tPublicBOSS_Reward[3313232][1][1]["Item_1"] = 4
	tPublicBOSS_Reward[3313232][1][2] = {}
	tPublicBOSS_Reward[3313232][1][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward[3313232][1][2]["ItemChance"] = 1000
	tPublicBOSS_Reward[3313232][1][2]["Item_1"] = 5

	
----2条黄金属性
	tPublicBOSS_Reward["Gold"] = {}
	tPublicBOSS_Reward["Gold"]["Space"] = 1
	tPublicBOSS_Reward["Gold"][2] = {}
	tPublicBOSS_Reward["Gold"][2]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward["Gold"][2][1] = {}
	tPublicBOSS_Reward["Gold"][2][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][2][1]["ItemChance"] = 1000
	tPublicBOSS_Reward["Gold"][2][1]["Num"] = 2
	tPublicBOSS_Reward["Gold"][2][2] = {}
	tPublicBOSS_Reward["Gold"][2][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][2][2]["ItemChance"] = 5200
	tPublicBOSS_Reward["Gold"][2][2]["Num"] = 1
	tPublicBOSS_Reward["Gold"][2][3] = {}
	tPublicBOSS_Reward["Gold"][2][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][2][3]["ItemChance"] = 3800
	tPublicBOSS_Reward["Gold"][2][3]["Num"] = 0
-- 3条黄金属性
	tPublicBOSS_Reward["Gold"][3] = {}
	tPublicBOSS_Reward["Gold"][3]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward["Gold"][3][1] = {}
	tPublicBOSS_Reward["Gold"][3][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][3][1]["ItemChance"] = 200
	tPublicBOSS_Reward["Gold"][3][1]["Num"] = 3
	tPublicBOSS_Reward["Gold"][3][2] = {}
	tPublicBOSS_Reward["Gold"][3][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][3][2]["ItemChance"] = 2700
	tPublicBOSS_Reward["Gold"][3][2]["Num"] = 2
	tPublicBOSS_Reward["Gold"][3][3] = {}
	tPublicBOSS_Reward["Gold"][3][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][3][3]["ItemChance"] = 5400
	tPublicBOSS_Reward["Gold"][3][3]["Num"] = 1
	tPublicBOSS_Reward["Gold"][3][4] = {}
	tPublicBOSS_Reward["Gold"][3][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][3][4]["ItemChance"] = 1700
	tPublicBOSS_Reward["Gold"][3][4]["Num"] = 0
	
-- 4条黄金属性
	tPublicBOSS_Reward["Gold"][4] = {}
	tPublicBOSS_Reward["Gold"][4]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward["Gold"][4][1] = {}
	tPublicBOSS_Reward["Gold"][4][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][4][1]["ItemChance"] = 45
	tPublicBOSS_Reward["Gold"][4][1]["Num"] = 4
	tPublicBOSS_Reward["Gold"][4][2] = {}
	tPublicBOSS_Reward["Gold"][4][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][4][2]["ItemChance"] = 355
	tPublicBOSS_Reward["Gold"][4][2]["Num"] = 3
	tPublicBOSS_Reward["Gold"][4][3] = {}
	tPublicBOSS_Reward["Gold"][4][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][4][3]["ItemChance"] = 2400
	tPublicBOSS_Reward["Gold"][4][3]["Num"] = 2
	tPublicBOSS_Reward["Gold"][4][4] = {}
	tPublicBOSS_Reward["Gold"][4][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][4][4]["ItemChance"] = 5200
	tPublicBOSS_Reward["Gold"][4][4]["Num"] = 1
	tPublicBOSS_Reward["Gold"][4][5] = {}
	tPublicBOSS_Reward["Gold"][4][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][4][5]["ItemChance"] = 2000
	tPublicBOSS_Reward["Gold"][4][5]["Num"] = 0
-- 5条黄金属性
	tPublicBOSS_Reward["Gold"][5] = {}
	tPublicBOSS_Reward["Gold"][5]["ItemChanceSum"] = 10000
	tPublicBOSS_Reward["Gold"][5][1] = {}
	tPublicBOSS_Reward["Gold"][5][1]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][5][1]["ItemChance"] = 5
	tPublicBOSS_Reward["Gold"][5][1]["Num"] = 5
	tPublicBOSS_Reward["Gold"][5][2] = {}
	tPublicBOSS_Reward["Gold"][5][2]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][5][2]["ItemChance"] = 280
	tPublicBOSS_Reward["Gold"][5][2]["Num"] = 4
	tPublicBOSS_Reward["Gold"][5][3] = {}
	tPublicBOSS_Reward["Gold"][5][3]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][5][3]["ItemChance"] = 2500
	tPublicBOSS_Reward["Gold"][5][3]["Num"] = 3
	tPublicBOSS_Reward["Gold"][5][4] = {}
	tPublicBOSS_Reward["Gold"][5][4]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][5][4]["ItemChance"] = 5215
	tPublicBOSS_Reward["Gold"][5][4]["Num"] = 2
	tPublicBOSS_Reward["Gold"][5][5] = {}
	tPublicBOSS_Reward["Gold"][5][5]["RandomItemChanceType"] = 2
	tPublicBOSS_Reward["Gold"][5][5]["ItemChance"] = 2000
	tPublicBOSS_Reward["Gold"][5][5]["Num"] = 1

	-- 获得幸运宝令
	tPublicBOSS_Reward[1] = {}
	tPublicBOSS_Reward[1]["Reward"] = {}
	tPublicBOSS_Reward[1]["Reward"]["RewardItem"] = {}
	tPublicBOSS_Reward[1]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_Reward[1]["Reward"]["RewardItem"][1]["Id"] = 3313229
	tPublicBOSS_Reward[1]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tPublicBOSS_Reward[1]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_Reward[1]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[1]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_Reward[1]["Reward"]["LogId"] = 18000207
	
	-- 获得极运宝令
	tPublicBOSS_Reward[2] = {}
	tPublicBOSS_Reward[2]["Reward"] = {}
	tPublicBOSS_Reward[2]["Reward"]["RewardItem"] = {}
	tPublicBOSS_Reward[2]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_Reward[2]["Reward"]["RewardItem"][1]["Id"] = 3321073
	tPublicBOSS_Reward[2]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tPublicBOSS_Reward[2]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_Reward[2]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[2]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_Reward[2]["Reward"]["LogId"] = 18000207
	
	-- 获得马鞍
	tPublicBOSS_Reward[3] = {}
	tPublicBOSS_Reward[3]["Reward"] = {}
	tPublicBOSS_Reward[3]["Reward"]["RewardItem"] = {}
	tPublicBOSS_Reward[3]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3]["Reward"]["RewardItem"][1]["Id"] = 723903
	tPublicBOSS_Reward[3]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tPublicBOSS_Reward[3]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_Reward[3]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[3]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_Reward[3]["Reward"]["LogId"] = 18000207
	-- 竞技场礼包
	tPublicBOSS_Reward[4] = {}
	tPublicBOSS_Reward[4]["Reward"] = {}
	tPublicBOSS_Reward[4]["Reward"]["EventType"] = 201
	tPublicBOSS_Reward[4]["Reward"]["DataType"] = 81
	tPublicBOSS_Reward[4]["Reward"]["RewardDelay"] = 1
	tPublicBOSS_Reward[4]["Reward"]["RewardTimeType"] = 4
	tPublicBOSS_Reward[4]["Reward"]["RewardData"] = 1
	tPublicBOSS_Reward[4]["Reward"]["RewardItem"] = {}
	tPublicBOSS_Reward[4]["Reward"]["RewardItem"][1] = {}
	tPublicBOSS_Reward[4]["Reward"]["RewardItem"][1]["Id"] = 3321073  
	tPublicBOSS_Reward[4]["Reward"]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tPublicBOSS_Reward[4]["Reward"]["RewardEffect"] = {}
	tPublicBOSS_Reward[4]["Reward"]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[4]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tPublicBOSS_Reward[4]["Reward"]["LogId"] = 18000207
	
	-- 获得幸运状态
	tPublicBOSS_Reward[3321073] = {}
	tPublicBOSS_Reward[3321073]["LogId"] = 18000207
	tPublicBOSS_Reward[3321073]["DeleteItem"] = {}
	tPublicBOSS_Reward[3321073]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3321073]["DeleteItem"][1]["Id"] = 3321073
	tPublicBOSS_Reward[3321073]["RewardItem"] = {}
	tPublicBOSS_Reward[3321073]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3321073]["RewardItem"][1]["Id"] = 3313404
	tPublicBOSS_Reward[3321073]["RewardItem"][1]["Attr"] = "0 1 0 30 1"
	tPublicBOSS_Reward[3321073]["RewardEffect"] = {}
	tPublicBOSS_Reward[3321073]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[3321073]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 获得幸运状态
	tPublicBOSS_Reward[3313229] = {}
	tPublicBOSS_Reward[3313229]["LogId"] = 18000207
	tPublicBOSS_Reward[3313229]["DeleteItem"] = {}
	tPublicBOSS_Reward[3313229]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3313229]["DeleteItem"][1]["Id"] = 3313229
	tPublicBOSS_Reward[3313229]["RewardItem"] = {}
	tPublicBOSS_Reward[3313229]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3313229]["RewardItem"][1]["Id"] = 3313404
	tPublicBOSS_Reward[3313229]["RewardItem"][1]["Attr"] = "0 1 0 10 1"
	tPublicBOSS_Reward[3313229]["RewardEffect"] = {}
	tPublicBOSS_Reward[3313229]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[3313229]["RewardEffect"]["Effect"] = "angelwing"

	-- 获得幸运状态
	tPublicBOSS_Reward[3313588] = {}
	tPublicBOSS_Reward[3313588]["LogId"] = 18000207
	tPublicBOSS_Reward[3313588]["DeleteItem"] = {}
	tPublicBOSS_Reward[3313588]["DeleteItem"][1] = {}
	tPublicBOSS_Reward[3313588]["DeleteItem"][1]["Id"] = 3313588
	tPublicBOSS_Reward[3313588]["RewardItem"] = {}
	tPublicBOSS_Reward[3313588]["RewardItem"][1] = {}
	tPublicBOSS_Reward[3313588]["RewardItem"][1]["Id"] = 4050001
	tPublicBOSS_Reward[3313588]["RewardItem"][1]["Attr"] = "0 1 3"
	tPublicBOSS_Reward[3313588]["RewardEffect"] = {}
	tPublicBOSS_Reward[3313588]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_Reward[3313588]["RewardEffect"]["Effect"] = "angelwing"

local tPublicBOSS_Data = {}

local tPublicBOSS_MonsterMoneyMapNum = {}
	tPublicBOSS_MonsterMoneyMapNum[1] = {}
	tPublicBOSS_MonsterMoneyMapNum[1][10479] = 5
	tPublicBOSS_MonsterMoneyMapNum[1][10480] = 5
	tPublicBOSS_MonsterMoneyMapNum[1][10481] = 5

	tPublicBOSS_MonsterMoneyMapNum[2] = {}
	tPublicBOSS_MonsterMoneyMapNum[2][10479] = 2
	tPublicBOSS_MonsterMoneyMapNum[2][10480] = 2
	tPublicBOSS_MonsterMoneyMapNum[2][10481] = 3
	
	tPublicBOSS_MonsterMoneyMapNum[3] = {}
	tPublicBOSS_MonsterMoneyMapNum[3][10479] = 1
	tPublicBOSS_MonsterMoneyMapNum[3][10480] = 1
	tPublicBOSS_MonsterMoneyMapNum[3][10481] = 1

local tPublicBOSS_MonsterMoney = {}
	tPublicBOSS_MonsterMoney[1] = {}
	tPublicBOSS_MonsterMoney[1][1] = {}
	tPublicBOSS_MonsterMoney[1][1]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][1]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[1][1]["PosX"] = 216
	tPublicBOSS_MonsterMoney[1][1]["PosY"] = 441
	tPublicBOSS_MonsterMoney[1][1]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[1][2] = {}
	tPublicBOSS_MonsterMoney[1][2]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][2]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[1][2]["PosX"] = 237
	tPublicBOSS_MonsterMoney[1][2]["PosY"] = 321
	tPublicBOSS_MonsterMoney[1][2]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[1][3] = {}
	tPublicBOSS_MonsterMoney[1][3]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][3]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[1][3]["PosX"] = 238
	tPublicBOSS_MonsterMoney[1][3]["PosY"] = 326
	tPublicBOSS_MonsterMoney[1][3]["GenId"] = 28079

	tPublicBOSS_MonsterMoney[1][4] = {}
	tPublicBOSS_MonsterMoney[1][4]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][4]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[1][4]["PosX"] = 236
	tPublicBOSS_MonsterMoney[1][4]["PosY"] = 322
	tPublicBOSS_MonsterMoney[1][4]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[1][5] = {}
	tPublicBOSS_MonsterMoney[1][5]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][5]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[1][5]["PosX"] = 333
	tPublicBOSS_MonsterMoney[1][5]["PosY"] = 460
	tPublicBOSS_MonsterMoney[1][5]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[1][6] = {}
	tPublicBOSS_MonsterMoney[1][6]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][6]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[1][6]["PosX"] = 374
	tPublicBOSS_MonsterMoney[1][6]["PosY"] = 213
	tPublicBOSS_MonsterMoney[1][6]["GenId"] = 28079

	tPublicBOSS_MonsterMoney[1][7] = {}
	tPublicBOSS_MonsterMoney[1][7]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][7]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[1][7]["PosX"] = 472
	tPublicBOSS_MonsterMoney[1][7]["PosY"] = 358
	tPublicBOSS_MonsterMoney[1][7]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[1][8] = {}
	tPublicBOSS_MonsterMoney[1][8]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][8]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[1][8]["PosX"] = 478
	tPublicBOSS_MonsterMoney[1][8]["PosY"] = 358
	tPublicBOSS_MonsterMoney[1][8]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[1][9] = {}
	tPublicBOSS_MonsterMoney[1][9]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][9]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[1][9]["PosX"] = 466
	tPublicBOSS_MonsterMoney[1][9]["PosY"] = 358
	tPublicBOSS_MonsterMoney[1][9]["GenId"] = 28079

	tPublicBOSS_MonsterMoney[1][10] = {}
	tPublicBOSS_MonsterMoney[1][10]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][10]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[1][10]["PosX"] = 100
	tPublicBOSS_MonsterMoney[1][10]["PosY"] = 415
	tPublicBOSS_MonsterMoney[1][10]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[1][11] = {}
	tPublicBOSS_MonsterMoney[1][11]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][11]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[1][11]["PosX"] = 374
	tPublicBOSS_MonsterMoney[1][11]["PosY"] = 216
	tPublicBOSS_MonsterMoney[1][11]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[1][12] = {}
	tPublicBOSS_MonsterMoney[1][12]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][12]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[1][12]["PosX"] = 487
	tPublicBOSS_MonsterMoney[1][12]["PosY"] = 121
	tPublicBOSS_MonsterMoney[1][12]["GenId"] = 28079

	tPublicBOSS_MonsterMoney[1][13] = {}
	tPublicBOSS_MonsterMoney[1][13]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][13]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[1][13]["PosX"] = 324
	tPublicBOSS_MonsterMoney[1][13]["PosY"] = 457
	tPublicBOSS_MonsterMoney[1][13]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[1][14] = {}
	tPublicBOSS_MonsterMoney[1][14]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][14]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[1][14]["PosX"] = 620
	tPublicBOSS_MonsterMoney[1][14]["PosY"] = 271
	tPublicBOSS_MonsterMoney[1][14]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[1][15] = {}
	tPublicBOSS_MonsterMoney[1][15]["Id"] = 3045
	tPublicBOSS_MonsterMoney[1][15]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[1][15]["PosX"] = 621
	tPublicBOSS_MonsterMoney[1][15]["PosY"] = 277
	tPublicBOSS_MonsterMoney[1][15]["GenId"] = 28079

	-- 中服
	tPublicBOSS_MonsterMoney[2] = {}
	tPublicBOSS_MonsterMoney[2][1] = {}
	tPublicBOSS_MonsterMoney[2][1]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][1]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[2][1]["PosX"] = 216
	tPublicBOSS_MonsterMoney[2][1]["PosY"] = 441
	tPublicBOSS_MonsterMoney[2][1]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[2][2] = {}
	tPublicBOSS_MonsterMoney[2][2]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][2]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[2][2]["PosX"] = 237
	tPublicBOSS_MonsterMoney[2][2]["PosY"] = 321
	tPublicBOSS_MonsterMoney[2][2]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[2][3] = {}
	tPublicBOSS_MonsterMoney[2][3]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][3]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[2][3]["PosX"] = 238
	tPublicBOSS_MonsterMoney[2][3]["PosY"] = 326
	tPublicBOSS_MonsterMoney[2][3]["GenId"] = 28079

	tPublicBOSS_MonsterMoney[2][4] = {}
	tPublicBOSS_MonsterMoney[2][4]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][4]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[2][4]["PosX"] = 236
	tPublicBOSS_MonsterMoney[2][4]["PosY"] = 322
	tPublicBOSS_MonsterMoney[2][4]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[2][5] = {}
	tPublicBOSS_MonsterMoney[2][5]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][5]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[2][5]["PosX"] = 333
	tPublicBOSS_MonsterMoney[2][5]["PosY"] = 460
	tPublicBOSS_MonsterMoney[2][5]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[2][6] = {}
	tPublicBOSS_MonsterMoney[2][6]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][6]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[2][6]["PosX"] = 374
	tPublicBOSS_MonsterMoney[2][6]["PosY"] = 213
	tPublicBOSS_MonsterMoney[2][6]["GenId"] = 28079

	tPublicBOSS_MonsterMoney[2][7] = {}
	tPublicBOSS_MonsterMoney[2][7]["Id"] = 3045
	tPublicBOSS_MonsterMoney[2][7]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[2][7]["PosX"] = 466
	tPublicBOSS_MonsterMoney[2][7]["PosY"] = 358
	tPublicBOSS_MonsterMoney[2][7]["GenId"] = 28079
-- 冷服
	tPublicBOSS_MonsterMoney[3] = {}
	tPublicBOSS_MonsterMoney[3][1] = {}
	tPublicBOSS_MonsterMoney[3][1]["Id"] = 3045
	tPublicBOSS_MonsterMoney[3][1]["MapId"] = 10479
	tPublicBOSS_MonsterMoney[3][1]["PosX"] = 216
	tPublicBOSS_MonsterMoney[3][1]["PosY"] = 441
	tPublicBOSS_MonsterMoney[3][1]["GenId"] = 28077
	
	tPublicBOSS_MonsterMoney[3][2] = {}
	tPublicBOSS_MonsterMoney[3][2]["Id"] = 3045
	tPublicBOSS_MonsterMoney[3][2]["MapId"] = 10480
	tPublicBOSS_MonsterMoney[3][2]["PosX"] = 237
	tPublicBOSS_MonsterMoney[3][2]["PosY"] = 321
	tPublicBOSS_MonsterMoney[3][2]["GenId"] = 28078

	tPublicBOSS_MonsterMoney[3][3] = {}
	tPublicBOSS_MonsterMoney[3][3]["Id"] = 3045
	tPublicBOSS_MonsterMoney[3][3]["MapId"] = 10481
	tPublicBOSS_MonsterMoney[3][3]["PosX"] = 238
	tPublicBOSS_MonsterMoney[3][3]["PosY"] = 326
	tPublicBOSS_MonsterMoney[3][3]["GenId"] = 28079

local tPublicBOSS_MonsterMoneyData = {}
	tPublicBOSS_MonsterMoneyData["Global"] = 53924
	tPublicBOSS_MonsterMoneyData["NewGlobal"] = 53891
	-- 各服限量
	tPublicBOSS_MonsterMoneyData["GlobalNum"] = {}
	tPublicBOSS_MonsterMoneyData["GlobalNum"][1] = 500
	tPublicBOSS_MonsterMoneyData["GlobalNum"][2] = 250
	tPublicBOSS_MonsterMoneyData["GlobalNum"][3] = 100

local tPublicBOSS_MonsterMoneyStc = {}
	tPublicBOSS_MonsterMoneyStc[1] = {}
	tPublicBOSS_MonsterMoneyStc[1]["EventType"] = 211
	tPublicBOSS_MonsterMoneyStc[1]["DataType"] = 07
	tPublicBOSS_MonsterMoneyStc[1]["Data"] = 5

local tPublicBOSS_MonsterMoneyGet = {}
 	tPublicBOSS_MonsterMoneyGet[1] = {} --获得钱袋
	tPublicBOSS_MonsterMoneyGet[1]["LogId"] = 18000207
	tPublicBOSS_MonsterMoneyGet[1]["RewardItem"] = {}
	tPublicBOSS_MonsterMoneyGet[1]["RewardItem"][1] = {}
	tPublicBOSS_MonsterMoneyGet[1]["RewardItem"][1]["Id"] = 3314728  --钱袋
	tPublicBOSS_MonsterMoneyGet[1]["RewardItem"][1]["Attr"] = "0 1"
	tPublicBOSS_MonsterMoneyGet[1]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[1]["RewardEffect"]["SzObj"] = "self"
	tPublicBOSS_MonsterMoneyGet[1]["RewardEffect"]["Effect"] = "angelwing"
	
	tPublicBOSS_MonsterMoneyGet[3314728] = {}
	tPublicBOSS_MonsterMoneyGet[3314728]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPublicBOSS_MonsterMoneyGet[3314728]["DeleteItem"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728]["DeleteItem"][1] = {}
	tPublicBOSS_MonsterMoneyGet[3314728]["DeleteItem"][1]["Id"] = 3314728 -- 【库】 3314728 【库里没有该物品】[属性:]
	tPublicBOSS_MonsterMoneyGet[3314728]["LogId"] = 18000207
	tPublicBOSS_MonsterMoneyGet[3314728]["LogStep"] = " 2"
	-- 钱袋 - 15%
	tPublicBOSS_MonsterMoneyGet[3314728][1] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][1]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][1]["ItemChance"] = 1500
	tPublicBOSS_MonsterMoneyGet[3314728][1]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][1]["RewardMoney"]["Value"] = 10000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][1]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][1]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 22%
	tPublicBOSS_MonsterMoneyGet[3314728][2] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][2]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][2]["ItemChance"] = 2200
	tPublicBOSS_MonsterMoneyGet[3314728][2]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][2]["RewardMoney"]["Value"] = 20000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][2]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][2]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 50%
	tPublicBOSS_MonsterMoneyGet[3314728][3] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][3]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][3]["ItemChance"] = 5000
	tPublicBOSS_MonsterMoneyGet[3314728][3]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][3]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][3]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][3]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 8%
	tPublicBOSS_MonsterMoneyGet[3314728][4] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][4]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][4]["ItemChance"] = 800
	tPublicBOSS_MonsterMoneyGet[3314728][4]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][4]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][4]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][4]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 3%
	tPublicBOSS_MonsterMoneyGet[3314728][5] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][5]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][5]["ItemChance"] = 300
	tPublicBOSS_MonsterMoneyGet[3314728][5]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][5]["RewardMoney"]["Value"] = 200000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][5]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][5]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 1%
	tPublicBOSS_MonsterMoneyGet[3314728][6] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][6]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][6]["ItemChance"] = 100
	tPublicBOSS_MonsterMoneyGet[3314728][6]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][6]["RewardMoney"]["Value"] = 500000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][6]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][6]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 0.5%
	tPublicBOSS_MonsterMoneyGet[3314728][7] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][7]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][7]["ItemChance"] = 50
	tPublicBOSS_MonsterMoneyGet[3314728][7]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][7]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][7]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][7]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 钱袋 - 0.5%
	tPublicBOSS_MonsterMoneyGet[3314728][8] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][8]["RandomItemChanceType"] = 2
	tPublicBOSS_MonsterMoneyGet[3314728][8]["ItemChance"] = 50
	tPublicBOSS_MonsterMoneyGet[3314728][8]["RewardMoney"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][8]["RewardMoney"]["Value"] = 2000000 -- 金币, 【需求】钱袋
	tPublicBOSS_MonsterMoneyGet[3314728][8]["Gold"] = true
	tPublicBOSS_MonsterMoneyGet[3314728][8]["RewardEffect"] = {}
	tPublicBOSS_MonsterMoneyGet[3314728][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPublicBOSS_MonsterMoneyGet[3314728][8]["RewardEffect"]["Effect"] = "angelwing"


-------------------------------------------------------------------------逻辑部分-----------------------------------------------------------------------------
-- 判断时间
function PublicBOSS_ChkTime()
	if Sys_ChkDayTime(tPublicBOSS_Constant["Time"]["NoEnter"]) then
		return false
	end

	return true
end

-- 判断地图ID，是否在BOSS之家或者神龙岛
function PublicBOSS_ChkMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)

	for i,v in pairs(tPublicBOSS_Constant["Map"]) do
		if nUserMapId == v then
			return true
		end
	end

	return false
end



-- 等级判断
function PublicBOSS_ChkLevel(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId() 
	local nLevel = Get_UserLevel(nUserId)
	local tLevel = tPublicBOSS_Constant["Level"][nIndex]

	if tLevel == nil then
		return false
	end

	if nLevel < tLevel[1] then
		return false
	end

	return true
end

-- 判断是否在幸运状态中
function PublicBOSS_ChkLucky(nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tPublicBOSS_Stc[nItemId]["EventType"]
	local nType = tPublicBOSS_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)


	if Task_StcInterval(nEvent,nType,nData,1,nUserId) then
		return false
	else
		return true
	end
end

-- 随机掉落并判断返回的表是否正常
function PublicBOSS_Random(tRandom,nRandomIndex)
	local nFlag,tAward = Probabil_RandomAward(tRandom,nRandomIndex)

	-- 判断表是否有值
	if next(tAward) == nil or next(tAward[1]["tAward"]) == nil then
		return false,tAward
	end

	return true,tAward[1]["tAward"]
end

-- 传送的判断
function PublicBOSS_ChkChg(nNpcId,nIndex)
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end

	-- 等级判断
	if not PublicBOSS_ChkLevel(nIndex) then
		tNpcGossip[24171]["Text211"] = string.format(tPublicBOSS_Text[24171]["Text211"],tPublicBOSS_Text[24171][nIndex])
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return false
	end

	return true
end

-- 传送进BOSS之家
function PublicBOSS_ChgMap(nNpcId,nChoose)
	-- 判断时间 等级
	if not PublicBOSS_ChkChg(nNpcId,nChoose) then
		return false
	end
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	local nMapId = tPublicBOSS_Constant["Map"][nChoose]
	local nBoundX = tPublicBOSS_MapFoothold[nMapId]["BoundX"]
	local nBoundY = tPublicBOSS_MapFoothold[nMapId]["BoundY"]
	local nRange = tPublicBOSS_MapFoothold[nMapId]["Range"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nRange,nRange)
	--打log
	Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[3],nMapId))
	local sEmoneyLog = string.format(tPublicBOSS_Constant["Emoneylog"],nMapId)
	Sys_SaveEmoneyBuy(sEmoneyLog)  --emoneylog
	--提示
	Sys_MsgBox(tPublicBOSS_Text["GotoMap"])
end


-- 传送到世界boss处
function PublicBOSS_GotoBoss(nNpcId,nChoose)
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	local nMapId = tPublicBOSS_Cont["MapId"]
	local nBoundX = tPublicBOSS_Cont[nChoose]["IslandCellX"]
	local nBoundY = tPublicBOSS_Cont[nChoose]["IslandCellY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
end

-- 传送到boss之家boss处
function PublicBOSS_GotoHouseBoss(nMapId,nChoose)
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	local nBoundX = tPublicBOSS_BossPosition[nMapId][nChoose][1]
	local nBoundY = tPublicBOSS_BossPosition[nMapId][nChoose][2]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
end

-- 怪物死亡
function PublicBOSS_KillMonster(nMonsterId)
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	if not SpecialServer_ChkGreenServer() then
		if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
			return
		end
	end
	
	--判断是否幸运状态
	if not PublicBOSS_ChkLucky(3321073) then
		if not Sys_Random(10,100) then
			return
		end 
	end
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	-- 银两奖池
	PublicBOSS_MoneyReward(nMonsterId)
	-- 特殊奖励
	PublicBOSS_DropReward(nMonsterId,"SpecialReward")
	-- 常规奖励
	PublicBOSS_DropReward(nMonsterId,"RegularReward")
	-- 刷新宝箱
	PublicBOSS_MoveBox(nMonsterId)
	--打log
	Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[4],nMonsterId))
end

-- 银两奖池
function PublicBOSS_MoneyReward(nMonsterId)
	-- 判断是否有银两奖池的配置
	if tPublicBOSS_MonsterDrop[nMonsterId]["DropMoney"] == nil then
		return
	end

	-- local nStartNum = tPublicBOSS_MonsterDrop[nMonsterId]["DropMoney"]["StartNum"]
	-- local nEndNum = tPublicBOSS_MonsterDrop[nMonsterId]["DropMoney"]["EndNum"]
	local bFlag,tAward = PublicBOSS_Random(tPublicBOSS_MonsterDrop[nMonsterId],"DropMoney")
	if not bFlag then
		return
	end
	local nDropIndex = tAward[1]["Item_1"]
	-- 判断是否掉落银两
	-- if nDropIndex == 1 then
		-- PublicBOSS_DropMoney(nMonsterId)
	-- end
	-- 掉兑换道具
	if nDropIndex == 15 then
		local nItemtypeId = tPublicBOSS_Drop[nDropIndex]["Item_1"]
		if nItemtypeId >0 and nItemtypeId ~= nil then
			Monster_SysDropItem(nItemtypeId)
		end
	end
end

-- 银两掉落
function PublicBOSS_DropMoney(nMonsterId)
	local nMoney = tPublicBOSS_Money[nMonsterId]
	
	-- Monster_SysDropMoney(nMoney)
end

-- 奖励
function PublicBOSS_DropReward(nMonsterId,sDropIndex)
	-- 判断是否有奖励的配置
	if tPublicBOSS_MonsterDrop[nMonsterId][sDropIndex] == nil then
		return
	end

	local bFlag,tAward = PublicBOSS_Random(tPublicBOSS_MonsterDrop[nMonsterId],sDropIndex)
	if not bFlag then
		return
	end

	local nDropIndex = tAward[1]["Item_1"]
	-- 判断是否有掉落
	if nDropIndex == 0 then
		return
	end

	-- 判断掉落是否小爆、大爆
	if nDropIndex >= 2 and nDropIndex <= 3 then
		-- 掉落奖池1
		PublicBOSS_Erupt(nMonsterId,nDropIndex,1)
		-- 掉落奖池2
		PublicBOSS_Erupt(nMonsterId,nDropIndex,2)
	-- 判断掉落是否宝石、气力、星陨石、神纹、练功
	elseif nDropIndex >= 9 and nDropIndex <= 13 then
		local nDropFlag,tDropAward = PublicBOSS_Random(tPublicBOSS_Drop,nDropIndex)
		if not nDropFlag then
			return
		end
		local nItemtypeId = tDropAward[1]["Item_1"]
		if nItemtypeId > 0 and nItemtypeId ~= nil then
			Monster_SysDropItem(nItemtypeId)
		end
	-- 直接掉落在地上
	else
		local nItemtypeId = tPublicBOSS_Drop[nDropIndex]["Item_1"]
		if nItemtypeId ~= nil and nItemtypeId > 0 then
			Monster_SysDropItem(nItemtypeId)
		end
	end
end

-- 大爆和小爆
function PublicBOSS_Erupt(nMonsterId,nDropIndex,nType)
	local bFlag,tAward = PublicBOSS_Random(tPublicBOSS_EruptPrizePool,nType)
	if not bFlag then
		return
	end

	local nDropNum = tPublicBOSS_EruptPrizePool[nType]["DropNum"][nDropIndex]
	local nItem = tAward[1]["Item_1"]

	-- 判断是否掉落银两
	if nItem == 1 then
		-- for i = 1,nDropNum do
			-- PublicBOSS_DropMoney(nMonsterId)
		-- end

		return
	-- 判断是否掉落宝石
	elseif nItem == 9 then
		local nDropFlag,tDropAward = PublicBOSS_Random(tPublicBOSS_Drop,nItem)
		if not nDropFlag then
			return
		end
		nItem = tDropAward[1]["Item_1"]
	-- 判断是否掉落龙珠
	elseif nItem == 9 then
		nItem = PublicBOSS_DropDragon()
	end
	if nItem > 0 and nItem ~= nil then
		for i = 1,nDropNum do
			Monster_SysDropItem(nItem)
		end
	end
end
function PublicBOSS_DropDragon()
	--判断是否已到限量
	local nGlobal = tPublicBOSS_Constant["Global"][1]
	local nData = Get_SysDynaGlobalData(nGlobal,1)
	--给流星
	if nData >= 1 then
		return tPublicBOSS_Drop[8]["Item_1"]
	end
	--给龙珠
	return tPublicBOSS_Drop[4]["Item_1"]
end
-- 刷宝箱
function PublicBOSS_MoveBox(nMonsterId)
	-- 判断是否刷宝箱
	if tPublicBOSS_MonsterDrop[nMonsterId]["MoveBox"] == nil then
		return
	end
	if not Sys_Random(tPublicBOSS_Constant["BoxRandom"],10000) then
		return
	end
	local nUserId = Get_UserId()
	local nRange = tPublicBOSS_Constant["Range"]
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId) +math.random(-nRange,nRange)
	local nPosY = Get_UserPositionY(nUserId) +math.random(-nRange,nRange)
	
	local nAdd,nRemove = PublicBOSS_CheckBoxNum()

	if nRemove ~=0 then
		--删除前增加检测，如果删除时箱被开启不存在则不删除
		local sDelNpcName = tPublicBOSS_Constant["DynaNpc"][nRemove]["NpcName"]
		if Get_NpcCountByName(sDelNpcName) >= 1 then
			Npc_DelDynaNpc(nMapId,"name",sDelNpcName)
		end
	end
	
	if nAdd ==0 or nAdd == nil then
		return
	end

	--创建npc
	local sNpcName = tPublicBOSS_Constant["DynaNpc"][nAdd]["NpcName"]
	local nLookface = tPublicBOSS_Constant["DynaNpc"][nAdd]["Lookface"]
	local nActionId =  tPublicBOSS_Constant["DynaNpc"][nAdd]["ActionId"]
	local sMapName = tPublicBOSS_Text["MapName"][nMapId]
	
	if Npc_CreateDynaNpc(sNpcName,2,1,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nActionId) then
		--改成地图公告
		Map_SendBroadcastMsg(nMapId,string.format(tPublicBOSS_Text["SmallBest"]["Movebox"],sNpcName,sMapName,nPosX,nPosY))
		--刷新log
		Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log["MoveBox"],nMapId,nPosX,nPosY))
	end

end

--检测地图宝箱个数
function PublicBOSS_CheckBoxNum()
	local nAdd,nRemove=0,0
	local tDynaNpc ={}
	local tNoDynaNpc ={}
	--循环获取动态npc数量
	for i,v in ipairs(tPublicBOSS_Constant["DynaNpc"]) do
		if Get_NpcCountByName(v["NpcName"]) >= 1 then
			table.insert(tDynaNpc,i)
		else
			table.insert(tNoDynaNpc,i)
		end
	end

	if #tDynaNpc>= 3 then
		nAdd = tNoDynaNpc[1]
		local nIndex=math.random(1,3)
		nRemove = tDynaNpc[nIndex]
	else
		local nValue = math.random(1,#tNoDynaNpc)
		nAdd =tNoDynaNpc[nValue]
	end
	return nAdd,nRemove
end


--开宝箱
function PublicBOSS_OpenBox(nIndex)
	local nItemId =tPublicBOSS_Constant["ItemId"]
	local nMapId = Get_UserMapId()
	local sNpcName = tPublicBOSS_Text["SmallBest"]["NpcName"][nIndex]
	local nNpcId = tPublicBOSS_Constant["DynaNpc"][nIndex]["NpcId"]
		--宝箱不存在了
	if Get_NpcCountByName(sNpcName) < 1 then
		User_TalkChannel2005(tPublicBOSS_Text["SmallBest"]["NoBox"])
		return
	end
	tNpcGossip[nNpcId]["Text116"]=""

	
	tNpcGossip[nNpcId]["Text111"] = string.format(tPublicBOSS_Text["SmallBest"][nNpcId]["Text111"],sNpcName)
	tNpcGossip[nNpcId]["Text113"] = string.format(tPublicBOSS_Text["SmallBest"][nNpcId]["Text113"],sNpcName)
	
	--没有钥匙
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	tNpcGossip[nNpcId]["tOption1-2"] = {}
	--对应插入
	table.insert(tNpcGossip[nNpcId]["tOption1-2"], 12 .. nIndex)
	
	local nEventType = tPublicBOSS_Stc[1]["EventType"]
	local nDataType =tPublicBOSS_Stc[1]["DataType"]
	local nMaxData = tPublicBOSS_Stc[1]["MaxData"]

	--隔天清掩码
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	local sTimeText = tPublicBOSS_Text["SmallBest"]["TimesOut"]
	tNpcGossip[nNpcId]["Option12".. nIndex]=tPublicBOSS_Text["SmallBest"]["TimesOut"]

	
	--今日还有次数3次
	if Task_ChkStcValue(nEventType,nDataType,"<",nMaxData) then
		local nTimesNum = nMaxData - Get_UserStatisticValue(nEventType,nDataType)
		sTimeText = string.format(tPublicBOSS_Text["SmallBest"]["TimesTip"],nTimesNum)
		tNpcGossip[nNpcId]["Option12".. nIndex]=string.format(tPublicBOSS_Text["SmallBest"][nNpcId]["Option12".. nIndex],sTimeText)
	end 
	
	
	LinkNpcGossipFunc_New(nNpcId,"1-2")

end

--获取宝箱奖励
function PublicBOSS_BoxReward(nIndex)
	local nItemId =tPublicBOSS_Constant["ItemId"]
	local nMapId = Get_UserMapId()
	local nTimes =1
	local sNpcName =tPublicBOSS_Constant["DynaNpc"][nIndex]["NpcName"]
	--宝箱被刷
	if Get_NpcCountByName(sNpcName) < 1 then
		User_TalkChannel2005(tPublicBOSS_Text["SmallBest"]["NoBox"])
		return
	end
	
	
	--背包不足
	-- if not User_CheckLeftSpace(nTimes) then
	if not RewardTemplate_ChkRandomSpace(tPublicBOSS_Reward["BaoXiang"],1) then
		User_TalkChannel2005(tPublicBOSS_Text["SmallBest"]["NoSpace"])
		return
	end

	local nEventType = tPublicBOSS_Stc[1]["EventType"]
	local nDataType =tPublicBOSS_Stc[1]["DataType"]
	local nMaxData = tPublicBOSS_Stc[1]["MaxData"]
	--隔天清掩码
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end

	--今日已开启3次
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxData) then
		User_TalkChannel2005(tPublicBOSS_Text["SmallBest"]["NoTimes"])
		return
	end
	--删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--置掩码
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		-- 随机物品
		RewardTemplate_NewRandom(tPublicBOSS_Reward["BaoXiang"],1)
		--给提示，删动态NPC（宝箱不存在则不删除）
		if Get_NpcCountByName(sNpcName) >= 1 then
			Npc_DelDynaNpc(nMapId,"name",sNpcName)
		end
	end
end


------------------------------------ boss掉落------------------------------------
function PublicBOSS_KillBoss(nMonsterId)
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	if not SpecialServer_ChkGreenServer() then
		if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
			return
		end
	end
	---直接获得
	PublicBOSS_KillBossGet(nMonsterId)
	---固定掉落
	PublicBOSS_KillBossCertainlyDrop(nMonsterId)
	--额外概率掉落
	PublicBOSS_KillBossProbDrop(nMonsterId)
	if tPublicBOSS_BrushBoss[nMonsterId] ~= nil then
		tPublicBOSS_BrushBoss[nMonsterId] = 0
	end
-- 神龙岛怪
	if nMonsterId >= 5355 and nMonsterId <= 5359 then
		Sys_SetTempData(1,tPublicBOSS_Constant["Map"][5],nMonsterId,0)
	end
	--打log
	Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[4],nMonsterId))

end
function PublicBOSS_KillBossGet(nMonsterId)
	local nNowUserId = Get_UserId()
	if tPublicBOSS_BossDrop[nMonsterId]["Reward"] == nil then
		return
	end
	-- 判断背包空间
	local nSpace1 = RewardTemplate_GetRewardSpace(tPublicBOSS_BossDrop[nMonsterId]["Reward"])
	local nSpace2 = RewardTemplate_GetRewardSpace(tPublicBOSS_Reward[1]["Reward"])
	if not User_CheckLeftSpace(nSpace2+nSpace1,nNowUserId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tPublicBOSS_BossDrop[nMonsterId]["Reward"])
	if PublicBOSS_ChkLucky(3321073) then
		RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[1]["Reward"])
	end
end

function PublicBOSS_KillBossCertainlyDrop(nMonsterId)
	local nUserId = Get_UserId()
	-- 银两
	-- if tPublicBOSS_BossDrop[nMonsterId]["CertainlyDrop"]["Money"] ~= nil then
		-- local nMoney = tPublicBOSS_BossDrop[nMonsterId]["CertainlyDrop"]["Money"]["Value"]
		-- local nNum = tPublicBOSS_BossDrop[nMonsterId]["CertainlyDrop"]["Money"]["Num"]
		-- for i = 1, nNum do
			-- Monster_SysDropMoney(nMoney)
		-- end
	-- end
	-- 物品
		local nMapId = Get_UserMapId(nUserId)
		local nPosX = Get_MonsterPosX()
		local nPosY = Get_MonsterPosY()
	for a,b in pairs(tPublicBOSS_BossDrop[nMonsterId]["CertainlyDrop"]["Item"]) do
		local nItemtypeId = b["Id"]
		local nItemNum = b["Num"]
		-- local nMapId = Get_UserMapId(nUserId)
		-- local nPosX = Get_MonsterPosX()
		-- local nPosY = Get_MonsterPosY()
		Map_DropMultiItems(nMapId,nItemtypeId,nPosX,nPosY,5,5,nItemNum,60)
	end
	---随机宝石
	if tPublicBOSS_BossDrop[nMonsterId]["CertainlyDrop"]["GemItem"] == nil then
		return
	end
	local bFlag,tAward = PublicBOSS_Random(tPublicBOSS_BossDrop[nMonsterId]["CertainlyDrop"]["GemItem"],1)
	local nItemId = tAward[1]["Item_1"]
	-- Monster_SysDropItem(nItemId,1,nUserId)
	Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,5,5,3,60)
end 
function PublicBOSS_KillBossProbDrop(nMonsterId)
	local nUserId = Get_UserId()
	for a=1,#tPublicBOSS_BossDrop[nMonsterId]["ProbDrop"] do
		local bFlag,tAward = PublicBOSS_Random(tPublicBOSS_BossDrop[nMonsterId]["ProbDrop"],a)
		local nItemId = tAward[1]["Item_1"]
		if nItemId > 0 then
			Monster_SysDropItem(nItemId,1,nUserId)
		end
	end
end

-- Boss伤害排名奖励
function PublicBOSS_BossDamgRank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nRankTotal = tPublicBOSS_SendMail["RankTotal"]
	for nNum = 1, nRankTotal do
		if nNum == nRank then
			local nActionId = tPublicBOSS_SendMail[nMonsterId][nRank]
			local nExistDay = tPublicBOSS_SendMail["ExistDay"]
			local sSender = tPublicBOSS_Text["Hurt"]["Sender"]
			local sTitle = tPublicBOSS_Text["Hurt"]["Title"]
			local sContent = tPublicBOSS_Text["Hurt"]["Content"]
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
		end
	end
end
-- Boss参与奖励
function PublicBOSS_KillBossJoin(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- 判断是否可获得
	if not PublicBOSS_ChkTempLimit(nUserId) then
		return
	end
	
	-- 成功加掩码
	if PublicBOSS_AddTempLimit(nUserId) then
		local nActionId = tPublicBOSS_SendMail["Join"]
		local nExistDay = tPublicBOSS_SendMail["ExistDay"]
		local sSender = tPublicBOSS_Text["Join"]["Sender"]
		local sTitle = tPublicBOSS_Text["Join"]["Title"]
		local sContent = tPublicBOSS_Text["Join"]["Content"]
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	end
end
-- 给玩家加次数
function PublicBOSS_AddTempLimit(nUserId)
	if tPublicBOSS_TempTable[nUserId] == nil then
		tPublicBOSS_TempTable[nUserId] = {}
		tPublicBOSS_TempTable[nUserId][1] = nUserId
		tPublicBOSS_TempTable[nUserId][2] = 1
		return true
	else
		if tPublicBOSS_TempTable[nUserId][2] >= 5 then
			return false
		else
			tPublicBOSS_TempTable[nUserId][2] = tPublicBOSS_TempTable[nUserId][2] + 1
			return true
		end
	end
end
function PublicBOSS_ChkTempLimit(nUserId)
	if tPublicBOSS_TempTable[nUserId] == nil then
		return true
	end
	if tPublicBOSS_TempTable[nUserId][2] >= 5 then
		return false
	else
		return true
	end
end
----刷怪
-- function PublicBOSS_BrushBoss1()
	-- PublicBOSS_BrushBoss(5356)
-- end

-- function PublicBOSS_BrushBoss2()

	-- PublicBOSS_BrushBoss(5355)
-- end

-- function PublicBOSS_BrushBoss3()
	-- PublicBOSS_BrushBoss(5358)
-- end

-- function PublicBOSS_BrushBoss4()
	-- PublicBOSS_BrushBoss(5357)
-- end

-- function PublicBOSS_BrushBoss5()
	-- PublicBOSS_BrushBoss(5359)
-- end

function PublicBOSS_BrushBoss(nMonsterId)
--判断时间
	-- if not PublicBOSS_ChkTime() then
		-- return
	-- end
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	local nMapId = tPublicBOSS_Constant["Map"][5]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum >= 1 then
		return
	end
	local nGenId = tPublicBOSS_BrushBoss["Pos"][nMonsterId]["GenId"]

	local nPosX = tPublicBOSS_BrushBoss["Pos"][nMonsterId]["PosX"]
	local nPosY = tPublicBOSS_BrushBoss["Pos"][nMonsterId]["PosY"]
	-- tPublicBOSS_BrushBoss[nMonsterId] = 1
	Sys_SetTempData(1,nMapId,nMonsterId,1)
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
end
---清场
function PublicBOSS_MoveUser()
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	-- for a,b in pairs(tPublicBOSS_Constant["Map"]) do
		-- if Map_GetUserNum(b,1) >= 1 then
			-- Map_UserExeFunc(b,-1,"PublicBOSS_Leave</N>1")
		-- end
	-- end
	for i = 5355,5359 do
		Sys_SetTempData(1,tPublicBOSS_Constant["Map"][5],i,0)
	end
end

function PublicBOSS_Leave(nNum,nUserId)
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tPublicBOSS_BossBresh[nNum]["MapId"]
	local nPosX = tPublicBOSS_BossBresh[nNum]["PosX"]
	local nPosY = tPublicBOSS_BossBresh[nNum]["PosY"]
	--普通服
	if nNum == 1 and not SpecialServer_ChkNoGiftServer() then
		nMapId = tPublicBOSS_BossBresh[3]["MapId"]
		nPosX = tPublicBOSS_BossBresh[3]["PosX"]
		nPosY = tPublicBOSS_BossBresh[3]["PosY"]
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nNowUserId)

	Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[3],nMapId),nNowUserId)
end

-- 神龙岛
function PublicBOSS_ShenLongLeave(nNum)
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tPublicBOSS_Constant["ShenLongLevel"],tPublicBOSS_Constant["ShenLongMetempsychosis"]) then 
		Sys_MsgBox(tPublicBOSS_Text["NoLevel"])
		return
	end
	PublicBOSS_Leave(nNum)
end

-----陷阱
function PublicBOSS_LeaveRoom()
	-- 判断时间
	local nUserId = Get_UserId()
	-- if not PublicBOSS_ChkTime() then
		-- PublicBOSS_Leave(1,nUserId)
		-- return false
	-- end

	if tPublicBOSS_UserPos[nUserId] == nil then
		PublicBOSS_Leave(1,nUserId)
		return
	end
	local nMapId = tPublicBOSS_UserPos[nUserId][1]
	local nPosX = tPublicBOSS_UserPos[nUserId][2]
	local nPosY = tPublicBOSS_UserPos[nUserId][3]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)

end
-----------------------------------------------------------------------------物品使用-----------------------------------------------------------------
-- 极运宝令
function PublicBOSS_UsePlayingTreasure(nItemId,nConfirm)
	local nUserId = Get_UserId()
	-- 判断使用地图
	if not PublicBOSS_ChkMap(nUserId) then
		Sys_MsgBox(tPublicBOSS_Text[3321073]["NoMap"])
		return
	end

	-- 判断是否已经在幸运状态
	if nConfirm == nil then
		if PublicBOSS_ChkLucky(nItemId,nUserId) then
			-- LinkItemGossipFunc_New(nItemId, "1-1")
			Sys_MsgBox(tPublicBOSS_Text[nItemId]["Text111"])
			return
		end
	end

	if Item_ChkItem(nItemId) then
		--背包空间判断
		if not RewardTemplate_CheckSpace(tPublicBOSS_Reward[nItemId]) then
			return
		end
		local nEvent = tPublicBOSS_Stc[nItemId]["EventType"]
		local nType = tPublicBOSS_Stc[nItemId]["DataType"]
		local nData = tPublicBOSS_Stc[nItemId]["Data"]
		-- 给个物品显示
		if RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[nItemId],nUserId) then
		-- 设置掩码
			Task_SetStatistic(nEvent,nType,nData,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			User_TalkChannel2005(tPublicBOSS_Text[nItemId]["Use"])
		end
		--加状态
		-- local nStunStatus = tPublicBOSS_Spy_Mud[nItemId]["Status"]
		-- local nStunPower = tPublicBOSS_Spy_Mud[nItemId]["Power"]
		-- local nStunSecs = tPublicBOSS_Spy_Mud[nItemId]["Secs"]
		-- local nStunTimes = tPublicBOSS_Spy_Mud[nItemId]["Times"]
		-- local nStunRemainTime = tPublicBOSS_Spy_Mud[nItemId]["RemainTime"]
		-- local nStunEndTime = tPublicBOSS_Spy_Mud[nItemId]["EndTime"]
		-- local nStunRecordable = tPublicBOSS_Spy_Mud[nItemId]["Recordable"]
		-- User_AddRoleStatus(nStunStatus,nStunPower,nStunSecs,nStunTimes,nStunRemainTime,nStunEndTime,nStunRecordable,0,0,nUserId)

	end
end
--判断是否组队
function  PublicBOSS_JubTeam()
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum < 2 then
		return false
	else
		return true
	end
end
function PublicBOSS_SingleGoto(nItemId,nUserId)
	-- 判断地图
	local bFlag,nMapId = PublicBOSS_JubBossHouse(nUserId)
	if not bFlag then
		Sys_MsgBox(tPublicBOSS_Text[3321074]["NoMap"])
		return
	end
	-- 判断位置
	local bIndex,nBossId = PublicBOSS_JubPosition(nMapId,nUserId)
	if not bIndex then
		Sys_MsgBox(tPublicBOSS_Text[3321074]["NoMap"])
		return
	end
	--记录位置
	if tPublicBOSS_UserPos[nUserId] == nil then
		tPublicBOSS_UserPos[nUserId] = {}
		tPublicBOSS_UserPos[nUserId][1] = 0
		tPublicBOSS_UserPos[nUserId][2] = 0
		tPublicBOSS_UserPos[nUserId][3] = 0
	end
	tPublicBOSS_UserPos[nUserId][1] = nMapId
	tPublicBOSS_UserPos[nUserId][2] = Get_UserPositionX(nUserId) 
	tPublicBOSS_UserPos[nUserId][3] = Get_UserPositionY(nUserId)
	--进副本 删物品
	if User_EnterInstance(tPublicBOSS_Constant["Instancetype"]) then    --进副本
		if not Item_DelItem(nItemId) then
			return
		end
		Sys_MsgBox(tPublicBOSS_Text[3321074]["Success"])
		Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[2],nBossId))  --打log
		--刷新怪物
		PublicBOSS_BreshMonster(nBossId,nUserId)
	end
end
-- 寻魔天眼
function PublicBOSS_UseChallenge(nItemId)
	local nUserId = Get_UserId()
	-- 判断是否在进入时间内
	-- if not PublicBOSS_ChkTime() then
		-- return false
	-- end
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断是否组队
	if not PublicBOSS_JubTeam() then
		--单人进副本
		PublicBOSS_SingleGoto(nItemId,nUserId)
		return
	end
	
	--判断是否队长
	if not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tPublicBOSS_Text["NoGoto"])
		return
	end
	local nTeamId = Get_UserTeamId(nUserId)
	tPublicBOSS_Data[nTeamId] = {}
	tPublicBOSS_Data[nTeamId]["Pos"] = 0
	tPublicBOSS_Data[nTeamId]["UserMap"] = 0
	--判断队友是否在附近
	if User_TeamExeFuncByTeamer(3,"PublicBOSS_JubPos</N>"..nUserId .. "</N>" .. nTeamId,nUserId) then
		if tPublicBOSS_Data[nTeamId]["UserMap"] > 0 then
			return
		end
		if tPublicBOSS_Data[nTeamId]["Pos"] > 0 then
			return
		end
		--组队进入副本
		if User_TeamExeFuncByTeamer(3,"PublicBOSS_AllGoto</N>"..nUserId .. "</N>" .. nTeamId .. "</N>" .. nItemId,nUserId) then 
		end 
	end
end

--检测队友条件
function PublicBOSS_JubPos(nUserId,nTeamId,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	-- 判断地图
	local bFlag,nMapId = PublicBOSS_JubBossHouse(nNowUserId)
	if not bFlag then
		tPublicBOSS_Data[nTeamId]["UserMap"] = tPublicBOSS_Data[nTeamId]["UserMap"] + 1
		return
	end
	-- 判断位置
	local bIndex,nBossId = PublicBOSS_JubPosition(nMapId,nNowUserId)
	if not bIndex then
		tPublicBOSS_Data[nTeamId]["Pos"] = tPublicBOSS_Data[nTeamId]["Pos"] + 1
	else
		tPublicBOSS_Data[nTeamId]["BossId"] = nBossId
	end
end
function PublicBOSS_AllGoto(nUserId,nTeamId,nItemId,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	--记录位置
	if tPublicBOSS_UserPos[nNowUserId] == nil then
		tPublicBOSS_UserPos[nNowUserId] = {}
		tPublicBOSS_UserPos[nNowUserId][1] = 0
		tPublicBOSS_UserPos[nNowUserId][2] = 0
		tPublicBOSS_UserPos[nNowUserId][3] = 0
	end
	tPublicBOSS_UserPos[nNowUserId][1] = Get_UserMapId(nNowUserId)
	tPublicBOSS_UserPos[nNowUserId][2] = Get_UserPositionX(nNowUserId) 
	tPublicBOSS_UserPos[nNowUserId][3] = Get_UserPositionY(nNowUserId)
	--进副本 删物品
	if User_EnterInstance(tPublicBOSS_Constant["Instancetype"],nil,nil,nil,nNowUserId) then 
		--进副本
		if User_IsTeamLeader(nNowUserId) and Item_ChkItem(nItemId,1,0,nNowUserId)  then
			if Item_DelItem(nItemId,1,0,nNowUserId) then
				-- 刷新怪物
				local nBossId = tPublicBOSS_Data[nTeamId]["BossId"]
				PublicBOSS_BreshMonster(nBossId,nUserId)
				Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[2],nBossId),nNowUserId)
			end
		end
		Sys_MsgBox(tPublicBOSS_Text[3321074]["Success"],nil,nil,nNowUserId)
	end
end

function PublicBOSS_BreshMonster(nBossId,nUserId)
	local nGenId = tPublicBOSS_BossBresh["Position"]["GenId"]
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tPublicBOSS_BossBresh["Position"]["PosX"]
	local nPosY = tPublicBOSS_BossBresh["Position"]["PosY"]
	
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nBossId)
end

--判断是否在boss之家
function PublicBOSS_JubBossHouse(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	for i = 1,5 do
		if nUserMapId == tPublicBOSS_Constant["Map"][i] then
			return true,nUserMapId
		end
	end
	return false,nUserMapId
end
--位置判断
function PublicBOSS_JubPosition(nMapId,nUserId)
	local nUserPosX = Get_UserPositionX(nUserId) 
	local nUserPosY = Get_UserPositionY(nUserId)
	
	if tPublicBOSS_BossPosition[nMapId] == nil or type(tPublicBOSS_BossPosition[nMapId]) ~= "table" then
		return false,0
	end
	
	for a,b in pairs(tPublicBOSS_BossPosition[nMapId]) do
		local nX_Distance = math.abs(nUserPosX-b[1])
		local nY_Distance = math.abs(nUserPosY-b[2])
		--比较boss的坐标x,y与玩家的坐标差绝对值
		if nX_Distance < b[3] and nY_Distance < b[4] then
			return true,b[5]
		end
	end
	return false,0
end
-- 气力丹使用
function PublicBOSS_UsePneumatic(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	local tReward = CommonFunc_Copy(tPublicBOSS_Reward[nItemId])
	local nAutomatic = tReward["Batch"]

	-- 判断物品数量是否超出上限
	if nItemNum > nAutomatic then
		tReward[1]["DeleteItem"][1]["ItemNum"] = nAutomatic
		tReward[1]["RewardStrengthValue"]["Value"] = tReward[1]["RewardStrengthValue"]["Value"] * nAutomatic
	else
		tReward[1]["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward[1]["RewardStrengthValue"]["Value"] = tReward[1]["RewardStrengthValue"]["Value"] * nItemNum
	end

	RewardTemplate_UseItemAndMsg(tReward[1])
end

function PublicBOSS_GoldGet(nItemId)
	--背包空间判断
	if not User_CheckLeftSpace(tPublicBOSS_Reward["Gold"]["Space"]) then
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nFlag,tReward = Probabil_RandomAward(tPublicBOSS_Reward[nItemId],1)
		local nAttributeNum = tReward[1]["tAward"][1]["Item_1"]
		local nFlag,tRewardTab = Probabil_RandomAward(tPublicBOSS_Reward["Gold"],nAttributeNum)
		local nGoldAttrNum = tRewardTab[1]["tAward"][1]["Num"]
		local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,nAttributeNum,0,0,nGoldAttrNum,0)
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		Sys_MsgBox(string.format(tPublicBOSS_Text["MsgRewardItem"],sItemName))
		local sLog = string.format(tPublicBOSS_Log[1],nItemId,nXuanBaoId)
		Sys_SaveActionFestivalLog(sLog)
	end
end

--------清动态码
function PublicBOSS_ClearGlobal()
	--时间判断
	--if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		--return
	--end
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	local nGlobal = tPublicBOSS_Constant["Global"][1]
	Sys_ResetAllSynaGlobalData(nGlobal)
end

function PublicBOSS_killBossPercent(nMonsterType,nLastBloodPercent,nCurrentBloodPercent)
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	--时间判断
	--if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		--return
	--end
	local sMonsterName = tPublicBOSS_Text["Name"][nMonsterType]
	--神龙岛
	if nMonsterType >= 5355 and nMonsterType <= 5359 then
		if nCurrentBloodPercent == 90 then
			local sStr = string.format(tPublicBOSS_Text["Broad"][2],sMonsterName)
			Sys_SystemBroadcast(sStr)
		end
		if nCurrentBloodPercent == 50 then
			local sStr = string.format(tPublicBOSS_Text["Broad"][4],sMonsterName)
			Sys_SystemBroadcast(sStr)
		end
		
		return
	end
	if nCurrentBloodPercent == 90 then
		local sStr = string.format(tPublicBOSS_Text["Broad"][1],tPublicBOSS_Text["Floor"][nMonsterType],sMonsterName)
		Sys_SystemBroadcast(sStr)
	end
	if nCurrentBloodPercent == 50 then
		local sStr = string.format(tPublicBOSS_Text["Broad"][3],tPublicBOSS_Text["Floor"][nMonsterType],sMonsterName)
		Sys_SystemBroadcast(sStr)
	end
end

function PublicBOSS_Login()
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end

	--时间判断
	if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tPublicBOSS_Constant["LoginLevel"],tPublicBOSS_Constant["LoginMetempsychosis"]) then 
		return
	end

	--背包空间判断
	if not RewardTemplate_CheckSpace(tPublicBOSS_Reward[2]["Reward"]) then
		return
	end

	local nLoginEvent = tPublicBOSS_Stc[2]["EventType"]
	local nLoginType = tPublicBOSS_Stc[2]["DataType"]
--隔天清零
	if Task_StcInterval(nLoginEvent,nLoginType,1,4) then  --隔天清零
		Task_SetStatistic(nLoginEvent,nLoginType,0,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
	end
	if Task_ChkStcValue(nLoginEvent,nLoginType,">=",1) then
		return
	end
	Task_SetStatistic(nLoginEvent,nLoginType,1,1)
	Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
	RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[2]["Reward"])
end


function PublicBOSS_KillMonsterGet(nMonsterId)
	-- 判断是否在进入时间内
	--if not PublicBOSS_ChkTime() then
		--return false
	--end
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	if not RewardTemplate_CheckSpace(tPublicBOSS_Reward[3]["Reward"]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[3]["Reward"])
end
---竞技场
function PublicBOSS_Get(nNum)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		return
	end
	-- if not SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	if not RewardTemplate_CheckSpace(tPublicBOSS_Reward[nNum]["Reward"]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[nNum]["Reward"])
end
-----------------新增
function PublicBOSS_JubMoneyTime()
	for a,b in pairs(tActivityTime["PublicBOSS"]["MoneyTime"]) do
		if Sys_ChkDayTime(b) then
			return true
		end
	end
	return false
end

-- 判断数量
function PublicBOSS_JubMoneyNum(nPublicBOSS_Pos)
	local nPublicBOSS_Global = tPublicBOSS_MonsterMoneyData["Global"]
	local nPublicBOSS_Data = Get_SysDynaGlobalData(nPublicBOSS_Global,nPublicBOSS_Pos)
	if nPublicBOSS_Data < tPublicBOSS_MonsterMoneyData["GlobalNum"][nPublicBOSS_Pos] then
		return true
	end
	return false
end

function PublicBOSS_MonsterMoney(nMonsterId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		return
	end
	if not PublicBOSS_JubMoneyTime() then
		return
	end
	--判断全服限量
	local nPublicBOSS_Global = tPublicBOSS_MonsterMoneyData["Global"]
	local nPublicBOSS_Pos = Get_SysDynaGlobalData(nPublicBOSS_Global,0)
	if nPublicBOSS_Pos == nil or nPublicBOSS_Pos == 0 then
		return
	end
	if not PublicBOSS_JubMoneyNum(nPublicBOSS_Pos) then
		return
	end
	--减boss数量
	local nPublicBOSS_MapId = Get_UserMapId()
	local nPublicBOSS_MonsterNum = Get_SysTempData(1,nPublicBOSS_MapId,tPublicBOSS_MonsterMoney[1][1]["Id"])
	if nPublicBOSS_MonsterNum >= 1 then
	Sys_SetTempData(1,nPublicBOSS_MapId,tPublicBOSS_MonsterMoney[1][1]["Id"],nPublicBOSS_MonsterNum-1)
	end
	local nPublicBOSS_Data = Get_SysDynaGlobalData(nPublicBOSS_Global,nPublicBOSS_Pos)

	--判断是否达到上限
	local nPublicBOSS_Event = tPublicBOSS_MonsterMoneyStc[1]["EventType"]
	local nPublicBOSS_Type = tPublicBOSS_MonsterMoneyStc[1]["DataType"]
	if Task_StcInterval(nPublicBOSS_Event,nPublicBOSS_Type,1,4) then  --隔天清零
		Task_SetStatistic(nPublicBOSS_Event,nPublicBOSS_Type,0,1)
		Task_SetStcTimestamp(nPublicBOSS_Event,nPublicBOSS_Type,0)
	end
	if Task_ChkStcValue(nPublicBOSS_Event,nPublicBOSS_Type,">=",tPublicBOSS_MonsterMoneyStc[1]["Data"])  then
		-- Sys_MsgBox(tPublicBOSS_Text["MonsterMoney"]["NotGet"])
		return
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tPublicBOSS_MonsterMoneyGet[1]) then
		return
	end
	Task_AddStatistic(nPublicBOSS_Event,nPublicBOSS_Type,1,1)
	Task_SetStcTimestamp(nPublicBOSS_Event,nPublicBOSS_Type,0)
	RewardTemplate_UseItemAndMsg(tPublicBOSS_MonsterMoneyGet[1])

	local nPublicBOSS_MonsterNum = Get_SysTempData(1,nPublicBOSS_MapId,tPublicBOSS_MonsterMoney[1][1]["Id"])
	if nPublicBOSS_MonsterNum >= 1 then
	Sys_SetTempData(1,nPublicBOSS_MapId,tPublicBOSS_MonsterMoney[1][1]["Id"],nPublicBOSS_MonsterNum-1)
	end
	local nPublicBOSS_Data = Get_SysDynaGlobalData(nPublicBOSS_Global,nPublicBOSS_Pos)
	Sys_SetSynaGlobalData(nPublicBOSS_Global,nPublicBOSS_Pos,nPublicBOSS_Data+1)
	Sys_SaveActionFestivalLog(string.format(tPublicBOSS_Log[4],nMonsterId))
	if Task_ChkStcValue(nPublicBOSS_Event,nPublicBOSS_Type,"==",tPublicBOSS_MonsterMoneyStc[1]["Data"])  then
		Sys_MsgBox(tPublicBOSS_Text["MonsterMoney"]["NotGet"])
	end
end

---刷怪
function PublicBOSS_BreshMonsterMoney(nNum)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		return
	end
	if not PublicBOSS_JubMoneyTime() then
		return
	end
	--判断全服限量
	local nPublicBOSS_Global = tPublicBOSS_MonsterMoneyData["Global"]
	local nPublicBOSS_Pos = Get_SysDynaGlobalData(nPublicBOSS_Global,0)
	if nPublicBOSS_Pos == nil or nPublicBOSS_Pos == 0 then
		return
	end
	if not PublicBOSS_JubMoneyNum(nPublicBOSS_Pos) then
		return
	end
	for a,b in pairs(tPublicBOSS_MonsterMoney[nPublicBOSS_Pos]) do
		--判断boss数量
		local nPublicBOSS_MapId = b["MapId"]
		local nPublicBOSS_MonsterNum = Get_SysTempData(1,nPublicBOSS_MapId,b["Id"])

		if nPublicBOSS_MonsterNum < tPublicBOSS_MonsterMoneyMapNum[nPublicBOSS_Pos][nPublicBOSS_MapId] then
			-- Monster_AddMonster(nPublicBOSS_MapId,b["PosX"],b["PosY"],b["GenId"],b["Id"])
			Monster_CreateMonsterRange(0,0,nPublicBOSS_MapId,b["PosX"],b["PosY"],b["GenId"],b["Id"],0,"",0,1,1,1,3600)
			-- local nPublicBOSS_MonsterNum = Get_SysTempData(1,nPublicBOSS_MapId,b["Id"])
			Sys_SetTempData(1,nPublicBOSS_MapId,b["Id"],nPublicBOSS_MonsterNum+1)
			Sys_SystemBroadcast(tPublicBOSS_Text["MonsterMoney"]["Broad"])
		end
	end
end

function PublicBOSS_ClearMonsterMoney()
	local nPublicBOSS_Global = tPublicBOSS_MonsterMoneyData["Global"]
	local nPublicBOSS_NewGlobal = tPublicBOSS_MonsterMoneyData["NewGlobal"]
	local nPublicBOSS_GetNewGlobal = Get_SysDynaGlobalData0(nPublicBOSS_NewGlobal)
	--时间判断
	--不是绿色服，置0
	if not Sys_ChkFullTime(tActivityTime["PublicBOSS"]["ActivityTime"]) then
		if (not SpecialServer_ChkGreenServer()) then
			Sys_SetSynaGlobalData(nPublicBOSS_Global,4,0)
		end
		
		--若是新服，重新置1
		if (nPublicBOSS_GetNewGlobal == 1) then
			Sys_SetSynaGlobalData(nPublicBOSS_Global,4,1)
		end
		
		return
	end
	Sys_SetSynaGlobalData(nPublicBOSS_Global,1,0)
	Sys_SetSynaGlobalData(nPublicBOSS_Global,2,0)
	Sys_SetSynaGlobalData(nPublicBOSS_Global,3,0)
	for i = 10479,10480 do
		Sys_SetTempData(1,i,tPublicBOSS_MonsterMoney[1][1]["Id"],0)
	end
end 
----------------------------------------------------------------------------NPC模板----------------------------------------------------------------------
-- NPC头像
tNpcFace[2034] = 34

-- 云里翻
tNpcGossip[24171] = tNpcGossip[24171] or DefaultNpc:new{}
tNpcGossip[24171]["OptionHidden"] = 1
tNpcGossip[24171]["DialogueText"] = tPublicBOSS_Text[24171]

tNpcGossip[24171]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24171]["tOption1-1"] = {112,113,114,115}
-- tNpcGossip[24171]["OptionFunc111"] = "PublicBOSS_ChgMap</N>24171</N>1"
tNpcGossip[24171]["OptionFunc112"] = "PublicBOSS_ChgMap</N>24171</N>2"
tNpcGossip[24171]["OptionFunc113"] = "PublicBOSS_ChgMap</N>24171</N>3"
tNpcGossip[24171]["OptionFunc114"] = "PublicBOSS_ChgMap</N>24171</N>4"
tNpcGossip[24171]["OptionPoint115"] = "3-1"

tNpcGossip[24171]["Text2-1"] = {211}
tNpcGossip[24171]["tOption2-1"] = {211}

tNpcGossip[24171]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[24171]["tOption3-1"] = {311}

tNpcGossip[24699] = tNpcGossip[24171]or DefaultNpc:new{}
tNpcGossip[24700] = tNpcGossip[24171]or DefaultNpc:new{}
-- 云里翻
tNpcGossip[24172] = tNpcGossip[24172] or DefaultNpc:new{}
tNpcGossip[24172]["OptionHidden"] = 1
tNpcGossip[24172]["DialogueText"] = tPublicBOSS_Text[24172]
tNpcGossip[24172]["nPageNum"] = 11

tNpcGossip[24172]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24172]["tOption1-1"] = {311,312,313,113,314}
tNpcGossip[24172]["OptionFunc311"] = "PublicBOSS_GotoHouseBoss</N>10478</N>1"
tNpcGossip[24172]["OptionFunc312"] = "PublicBOSS_GotoHouseBoss</N>10478</N>2"
tNpcGossip[24172]["OptionFunc313"] = "PublicBOSS_GotoHouseBoss</N>10478</N>3"
tNpcGossip[24172]["OptionFunc113"] = "PublicBOSS_Leave</N>1"
tNpcGossip[24172]["OptionPoint314"] = "4-1"
-- tNpcGossip[20471]["ChkFunc1-1"]= function()
	
-- end
tNpcGossip[24172]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[24172]["tOption4-1"] = {411}

-- 云里翻
tNpcGossip[24173] = tNpcGossip[24173] or DefaultNpc:new{}
tNpcGossip[24173]["OptionHidden"] = 1
tNpcGossip[24173]["DialogueText"] = tPublicBOSS_Text[24173]
tNpcGossip[24173]["nPageNum"] = 11

tNpcGossip[24173]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24173]["tOption1-1"] = {311,312,313,314,113,315}
tNpcGossip[24173]["OptionFunc311"] = "PublicBOSS_GotoHouseBoss</N>10479</N>1"
tNpcGossip[24173]["OptionFunc312"] = "PublicBOSS_GotoHouseBoss</N>10479</N>2"
tNpcGossip[24173]["OptionFunc313"] = "PublicBOSS_GotoHouseBoss</N>10479</N>3"
tNpcGossip[24173]["OptionFunc314"] = "PublicBOSS_GotoHouseBoss</N>10479</N>4"
tNpcGossip[24173]["OptionFunc113"] = "PublicBOSS_Leave</N>1"
tNpcGossip[24173]["OptionPoint315"] = "4-1"

tNpcGossip[24173]["Text4-1"] = {411,412,413,414,415,416,417,418,419}
tNpcGossip[24173]["tOption4-1"] = {411}

-- 云里翻
tNpcGossip[24174] = tNpcGossip[24174] or DefaultNpc:new{}
tNpcGossip[24174]["OptionHidden"] = 1
tNpcGossip[24174]["DialogueText"] = tPublicBOSS_Text[24174]
tNpcGossip[24174]["nPageNum"] = 11

tNpcGossip[24174]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24174]["tOption1-1"] = {311,312,313,314,315,113,316}
tNpcGossip[24174]["OptionFunc311"] = "PublicBOSS_GotoHouseBoss</N>10480</N>1"
tNpcGossip[24174]["OptionFunc312"] = "PublicBOSS_GotoHouseBoss</N>10480</N>2"
tNpcGossip[24174]["OptionFunc313"] = "PublicBOSS_GotoHouseBoss</N>10480</N>3"
tNpcGossip[24174]["OptionFunc314"] = "PublicBOSS_GotoHouseBoss</N>10480</N>4"
tNpcGossip[24174]["OptionFunc315"] = "PublicBOSS_GotoHouseBoss</N>10480</N>5"
tNpcGossip[24174]["OptionFunc113"] = "PublicBOSS_Leave</N>1"
tNpcGossip[24174]["OptionPoint316"] = "4-1"

tNpcGossip[24174]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420}
tNpcGossip[24174]["tOption4-1"] = {411}



-- 云里翻
tNpcGossip[24175] = tNpcGossip[24175] or DefaultNpc:new{}
tNpcGossip[24175]["OptionHidden"] = 1
tNpcGossip[24175]["DialogueText"] = tPublicBOSS_Text[24175]
tNpcGossip[24175]["nPageNum"] = 11

tNpcGossip[24175]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24175]["tOption1-1"] = {311,312,313,314,315,316,317,113,318}
tNpcGossip[24175]["OptionFunc311"] = "PublicBOSS_GotoHouseBoss</N>10481</N>1"
tNpcGossip[24175]["OptionFunc312"] = "PublicBOSS_GotoHouseBoss</N>10481</N>2"
tNpcGossip[24175]["OptionFunc313"] = "PublicBOSS_GotoHouseBoss</N>10481</N>3"
tNpcGossip[24175]["OptionFunc314"] = "PublicBOSS_GotoHouseBoss</N>10481</N>4"
tNpcGossip[24175]["OptionFunc315"] = "PublicBOSS_GotoHouseBoss</N>10481</N>5"
tNpcGossip[24175]["OptionFunc316"] = "PublicBOSS_GotoHouseBoss</N>10481</N>6"
tNpcGossip[24175]["OptionFunc317"] = "PublicBOSS_GotoHouseBoss</N>10481</N>7"
tNpcGossip[24175]["OptionFunc113"] = "PublicBOSS_Leave</N>1"
tNpcGossip[24175]["OptionPoint318"] = "4-1"

tNpcGossip[24175]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422}
tNpcGossip[24175]["tOption4-1"] = {411}

-- 风振叶
tNpcFace[2035] = 57
tNpcGossip[24176] = tNpcGossip[24176] or DefaultNpc:new{}
tNpcGossip[24176]["OptionHidden"] = 1
tNpcGossip[24176]["DialogueText"] = tPublicBOSS_Text[24176]

tNpcGossip[24176]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24176]["tOption1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24176]["OptionFunc111"] = "PublicBOSS_GotoBoss</N>24176</N>1"
tNpcGossip[24176]["OptionFunc112"] = "PublicBOSS_GotoBoss</N>24176</N>2"
tNpcGossip[24176]["OptionFunc113"] = "PublicBOSS_GotoBoss</N>24176</N>3"
tNpcGossip[24176]["OptionFunc114"] = "PublicBOSS_GotoBoss</N>24176</N>4"
tNpcGossip[24176]["OptionFunc115"] = "PublicBOSS_GotoBoss</N>24176</N>5"
tNpcGossip[24176]["OptionPoint116"] = "2-1"
tNpcGossip[24176]["OptionFunc117"] = "PublicBOSS_Leave</N>1"

tNpcGossip[24176]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[24176]["tOption2-1"] = {211}


---宝箱
tNpcGossip[24502]= tNpcGossip[24502] or DefaultNpc:new{}
tNpcGossip[24502]["DialogueText"] = tPublicBOSS_Text["SmallBest"][24502]
tNpcGossip[24502]["OptionHidden"] = 1

tNpcGossip[24502]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24502]["tOption1-1"] = {111}

tNpcGossip[24502]["Text1-2"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24502]["tOption1-2"] = {121,122,123,124}
tNpcGossip[24502]["OptionFunc121"] = "</F>PublicBOSS_BoxReward</N>1"
tNpcGossip[24502]["OptionFunc122"] = "</F>PublicBOSS_BoxReward</N>2"
tNpcGossip[24502]["OptionFunc123"] = "</F>PublicBOSS_BoxReward</N>3"
tNpcGossip[24502]["OptionFunc124"] = "</F>PublicBOSS_BoxReward</N>4"

--传送NPC
tNpcGossip[24712]= tNpcGossip[24712] or DefaultNpc:new{}
tNpcGossip[24712]["DialogueText"] = tPublicBOSS_Text[24712]
tNpcGossip[24712]["OptionHidden"] = 1

tNpcGossip[24712]["Text1-1"] = {111}
tNpcGossip[24712]["tOption1-1"] = {111}
tNpcGossip[24712]["OptionFunc111"] = "PublicBOSS_Leave</N>2"

tNpcGossip[24713]= tNpcGossip[24712] or DefaultNpc:new{}
tNpcGossip[24714]= tNpcGossip[24712] or DefaultNpc:new{}
tNpcGossip[24715]= tNpcGossip[24712] or DefaultNpc:new{}
tNpcGossip[24716]= tNpcGossip[24712] or DefaultNpc:new{}





----------------------------------------------------------------------------物品模板----------------------------------------------------------------------
-- 极运宝令
tItem[3321073] = tItem[3321073] or {}
tItem[3321073]["Function"] = function(nItemId,sItemName)
	PublicBOSS_UsePlayingTreasure(nItemId)
end
tItem[3321073]["DialogueText"] = tPublicBOSS_Text[3321073]
tItem[3321073]["Text1-1"] = {111}
tItem[3321073]["tOption1-1"] = {111}
-- tItem[3321073]["OptionFunc111"] = "PublicBOSS_UsePlayingTreasure</N>3321073</N>1"
-- 幸运宝令
tItem[3313229] = tItem[3313229] or {}
tItem[3313229]["Function"] = function(nItemId,sItemName)
	PublicBOSS_UsePlayingTreasure(nItemId)
end
tItem[3313229]["DialogueText"] = tPublicBOSS_Text[3313229]
tItem[3313229]["Text1-1"] = {111}
tItem[3313229]["tOption1-1"] = {111}
-- tItem[3313229]["OptionFunc111"] = "PublicBOSS_UsePlayingTreasure</N>3313229</N>1"

-- 寻魔天眼
tItem[3321074] = tItem[3321074] or {}
tItem[3321074]["Function"] = function(nItemId,sItemName)
	PublicBOSS_UseChallenge(nItemId)
end

-- 鸿蒙灵石
tItemFace[3321075] = 2437
tItem[3321075] = tItem[3321075] or {}
tItem[3321075]["DialogueText"] = tPublicBOSS_Text[3321075]
tItem[3321075]["Text1-1"] = {111}
tItem[3321075]["tOption1-1"] = {111,112}
tItem[3321075]["OptionFunc111"] = "SmallBestDrop_UseLotteryProp</N>3321075"
tItem[3321075]["OptionFunc112"] = "SmallBestDrop_UseLotteryProp</N>3321075</N>1"
tItem[3321075]["OptionChkFunc112"]= function()
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end 

-- 虎胆回气丸
tItem[3321076] = tItem[3321076] or {}
tItem[3321076]["Function"] = function(nItemId,sItemName)
	PublicBOSS_UsePneumatic(nItemId)
end

-- 龙骨回气丸
tItem[3321077] = tItem[3321076]

-- 魔将秘宝
tItem[3321078] = tItem[3321078] or {}
tItem[3321078]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tPublicBOSS_Reward[nItemId],1)
end

-- 魔君秘宝
tItem[3321079] = tItem[3321078]
-- 魔王秘宝
tItem[3321080] = tItem[3321078]

-- 魔神秘宝
tItem[3321081] = tItem[3321081] or {}
tItem[3321081]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	-- 获取背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tPublicBOSS_Reward[nItemId][1],nUserId)
	local nDelSpace = RewardTemplate_GetDelSpace(tPublicBOSS_Reward[nItemId][1],nUserId)
	local nRandmSpace = RewardTemplate_GetRandomSpace(tPublicBOSS_Reward[nItemId],2,nUserId)
	local nRandmSpace1 = RewardTemplate_GetRandomSpace(tPublicBOSS_Reward[nItemId],3,nUserId)
	nSpace = nSpace + nRandmSpace + nRandmSpace1 - nDelSpace

	-- 背包空间判断
	if not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(string.format(tPublicBOSS_Text[nItemId]["NoSpace"],nSpace),nUserId)
		return
	end

	if RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[nItemId][1]) then
		RewardTemplate_NewRandom(tPublicBOSS_Reward[nItemId],2,nUserId)
		RewardTemplate_NewRandom(tPublicBOSS_Reward[nItemId],3,nUserId)
	end
end

-- 除魔嘉奖包
tItem[3321082] = tItem[3321082] or {}
tItem[3321082]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[nItemId][1])
end

-- 初级神魂包
tItem[3321083] = tItem[3321078]
-- 中级神魂包
tItem[3321084] = tItem[3321078]
-- 高级神魂包
tItem[3321085] = tItem[3321078]

-----初级乾坤炼器炉
tItem[3313230] = tItem[3313230] or {}
tItem[3313230]["Function"] = function(nItemId,sItemName)
	PublicBOSS_GoldGet(nItemId)
end
-- 中级乾坤炼器炉
tItem[3313231] = tItem[3313231] or {}
tItem[3313231]["Function"] = function(nItemId,sItemName)
	PublicBOSS_GoldGet(nItemId)
end
-- 高级乾坤炼器炉
tItem[3313232] = tItem[3313232] or {}
tItem[3313232]["Function"] = function(nItemId,sItemName)
	PublicBOSS_GoldGet(nItemId)
end

-----------新增
-- 神龙岛传送券
tItem[3313401] = tItem[3313401] or {}
tItem[3313401]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	PublicBOSS_Leave(2)
end
-- 神龙岛随机传送券
tItem[3313402] = tItem[3313402] or {}
tItem[3313402]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	User_UserRandTransByShenlongIsland(10482)
end

-- 兑换道具
tItem[3313259] = tItem[3313259] or {}
tItem[3313259]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserMap = Get_UserMapId()
	if nUserMap ~= 10364 and nUserMap ~= 1002 then
		Sys_MsgBox(tPublicBOSS_Text["NotMap"])
		return
	end
	NpcPosition_PathFind(24553) 
end

-- 除魔嘉奖包
tItem[3313588] = tItem[3313588] or {}
tItem[3313588]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tPublicBOSS_Reward[3313588]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tPublicBOSS_Reward[3313588])
end

tItem[3314728] = tItem[3314728] or {}
tItem[3314728]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_ChkRandomSpace(tPublicBOSS_MonsterMoneyGet,3314728) then
		return
	end
	if not RewardTemplate_MoneyLimit(tPublicBOSS_MonsterMoneyGet[3314728][8]["RewardMoney"]) then
		Sys_MsgBox(tPublicBOSS_Text["MonsterMoney"]["TooMoney"])
		return
	end
	RewardTemplate_RandomReward(tPublicBOSS_MonsterMoneyGet,nItemId)
end
--------------------------------------------怪物-----------------------------------------------
-- 小怪 精英怪
for i = 5274,5335 do
	tMonster[i] = tMonster[i] or {}
	tMonster[i]["tFunction"] = tMonster[i]["tFunction"] or {}
	table.insert(tMonster[i]["tFunction"],PublicBOSS_KillMonster)
end

-- boss
for i = 5336,5354 do
	tMonster[i] = tMonster[i] or {}
	tMonster[i]["tFunction"] = tMonster[i]["tFunction"] or {}
	table.insert(tMonster[i]["tFunction"],PublicBOSS_KillBoss)
end
---马贼
-- tMonster[5697] = tMonster[5697] or {}
-- tMonster[5697]["tFunction"] = tMonster[5697]["tFunction"] or {}
-- table.insert(tMonster[5697]["tFunction"],PublicBOSS_KillMonsterGet)

-- tMonster[5697] = tMonster[5697] or {}
-- tMonster[5697]["tFunction"] = tMonster[5697]["tFunction"] or {}
-- table.insert(tMonster[5697]["tFunction"],PublicBOSS_KillMonsterGet)

	-- tMonster[3045] = tMonster[3045] or {}
	-- tMonster[3045]["tFunction"] = tMonster[3045]["tFunction"] or {}
	-- table.insert(tMonster[3045]["tFunction"],PublicBOSS_MonsterMoney)

--------------------------------------------伤害排行榜--------------------------------------------
-- 排行榜
-- 115级世界BOSS
-- tBossDamageBonus[5355] = tBossDamageBonus[5355] or {}
-- tBossDamageBonus[5355]["tFunction"] = tBossDamageBonus[5355]["tFunction"] or {}
-- table.insert(tBossDamageBonus[5355]["tFunction"],PublicBOSS_BossDamgRank)

-- 125级世界BOSS
-- tBossDamageBonus[5356] = tBossDamageBonus[5356] or {}
-- tBossDamageBonus[5356]["tFunction"] = tBossDamageBonus[5355]["tFunction"] or {}
-- table.insert(tBossDamageBonus[5356]["tFunction"],PublicBOSS_BossDamgRank)

-- 135级世界BOSS
-- tBossDamageBonus[5357] = tBossDamageBonus[5357] or {}
-- tBossDamageBonus[5357]["tFunction"] = tBossDamageBonus[5357]["tFunction"] or {}
-- table.insert(tBossDamageBonus[5357]["tFunction"],PublicBOSS_BossDamgRank)

-- 145级世界BOSS
-- tBossDamageBonus[5358] = tBossDamageBonus[5358] or {}
-- tBossDamageBonus[5358]["tFunction"] = tBossDamageBonus[5358]["tFunction"] or {}
-- table.insert(tBossDamageBonus[5358]["tFunction"],PublicBOSS_BossDamgRank)

-- 150级世界大BOSS
-- tBossDamageBonus[5359] = tBossDamageBonus[5359] or {}
-- tBossDamageBonus[5359]["tFunction"] = tBossDamageBonus[5359]["tFunction"] or {}
-- table.insert(tBossDamageBonus[5359]["tFunction"],PublicBOSS_BossDamgRank)


-- 伤害
-- 115级世界BOSS
-- tBossRewardEnd[5355] = tBossRewardEnd[5355] or {}
-- tBossRewardEnd[5355]["tFunction"] = tBossRewardEnd[5355]["tFunction"] or {}
-- table.insert(tBossRewardEnd[5355]["tFunction"],PublicBOSS_KillBossJoin)
-- 125级世界BOSS
-- tBossRewardEnd[5356] = tBossRewardEnd[5356] or {}
-- tBossRewardEnd[5356]["tFunction"] = tBossRewardEnd[5356]["tFunction"] or {}
-- table.insert(tBossRewardEnd[5356]["tFunction"],PublicBOSS_KillBossJoin)
-- 135级世界BOSS
-- tBossRewardEnd[5357] = tBossRewardEnd[5357] or {}
-- tBossRewardEnd[5357]["tFunction"] = tBossRewardEnd[5357]["tFunction"] or {}
-- table.insert(tBossRewardEnd[5357]["tFunction"],PublicBOSS_KillBossJoin)
-- 145级世界BOSS
-- tBossRewardEnd[5358] = tBossRewardEnd[5358] or {}
-- tBossRewardEnd[5358]["tFunction"] = tBossRewardEnd[5358]["tFunction"] or {}
-- table.insert(tBossRewardEnd[5358]["tFunction"],PublicBOSS_KillBossJoin)
-- 150级世界大BOSS
-- tBossRewardEnd[5359] = tBossRewardEnd[5359] or {}
-- tBossRewardEnd[5359]["tFunction"] = tBossRewardEnd[5359]["tFunction"] or {}
-- table.insert(tBossRewardEnd[5359]["tFunction"],PublicBOSS_KillBossJoin)

--------------------------------------------陷阱--------------------------------------------
tTrap[172] = tTrap[172] or {}
tTrap[172]["Function"] = function(nTrapId,nTrapType)
	--传送出去
	Sys_MsgBox(tPublicBOSS_Text["Leave"],"PublicBOSS_LeaveRoom")
	
end

--------------------------------------------时间自检--------------------------------------------
local tPublicBOSS_OnTime = {}
	-- 每20分钟清动态表
	tPublicBOSS_OnTime[1] = {}
	tPublicBOSS_OnTime[1]["Type"] = 2
	tPublicBOSS_OnTime[1]["TimeType"] = 5
	tPublicBOSS_OnTime[1]["Multiple"] = {}
	tPublicBOSS_OnTime[1]["Multiple"][1]  = "00 00"
	tPublicBOSS_OnTime[1]["Multiple"][2]  = "20 20"
	tPublicBOSS_OnTime[1]["Multiple"][3]  = "40 20"
	tPublicBOSS_OnTime[1]["Func"] = PublicBOSS_ClearGlobal
	table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[1])
	
	-- tPublicBOSS_OnTime[2] = {}
	-- tPublicBOSS_OnTime[2]["Type"] = 3
	-- tPublicBOSS_OnTime[2]["TimeType"] = 4
	-- tPublicBOSS_OnTime[2]["Multiple"] = {}
	-- tPublicBOSS_OnTime[2]["Multiple"][1]  = "08:00 08:59"
	-- tPublicBOSS_OnTime[2]["Multiple"][2]  = "15:00 15:59"
	-- tPublicBOSS_OnTime[2]["Func"] = PublicBOSS_BreshMonsterMoney
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[2])
	
	tPublicBOSS_OnTime[3] = {}
	tPublicBOSS_OnTime[3]["Type"] = 3
	tPublicBOSS_OnTime[3]["TimeType"] = 4
	tPublicBOSS_OnTime[3]["Multiple"] = {}
	tPublicBOSS_OnTime[3]["Multiple"][1]  = "00:00 00:01"
	tPublicBOSS_OnTime[3]["Multiple"][2]  = "14:58 14:59"
	tPublicBOSS_OnTime[3]["Func"] = PublicBOSS_ClearMonsterMoney
	table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[3])
-- 世界boss刷怪
-- 啸海狂魔 每天9、11、13、15、17、19、21、23、0点刷新
	-- tPublicBOSS_OnTime[2] = {}
	-- tPublicBOSS_OnTime[2]["Type"] = 3  -- 刷怪
	-- tPublicBOSS_OnTime[2]["TimeType"] = 4  -- 日时间
	-- tPublicBOSS_OnTime[2]["Multiple"] = {}
	-- tPublicBOSS_OnTime[2]["Multiple"][1] = "09:00 09:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][2] = "11:00 11:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][3] = "13:00 13:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][4] = "15:00 15:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][5] = "17:00 17:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][6] = "19:00 19:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][7] = "21:00 21:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][8] = "23:00 23:00"
	-- tPublicBOSS_OnTime[2]["Multiple"][9] = "00:00 00:00"
	-- tPublicBOSS_OnTime[2]["Func"] = PublicBOSS_BrushBoss1
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[2])

-- 晶魄血妖   每天8、10、12、14、16、18、20、22、0点刷新
	-- tPublicBOSS_OnTime[3] = {}
	-- tPublicBOSS_OnTime[3]["Type"] = 3  -- 刷怪
	-- tPublicBOSS_OnTime[3]["TimeType"] = 4  -- 日时间
	-- tPublicBOSS_OnTime[3]["Multiple"] = {}
	-- tPublicBOSS_OnTime[3]["Multiple"][1] = "08:00 08:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][2] = "10:00 10:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][3] = "12:00 12:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][4] = "14:00 14:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][5] = "16:00 16:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][6] = "18:00 18:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][7] = "20:00 20:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][8] = "22:00 22:00"
	-- tPublicBOSS_OnTime[3]["Multiple"][9] = "00:00 00:00"
	-- tPublicBOSS_OnTime[3]["Func"] = PublicBOSS_BrushBoss2
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[3])

-- 邪龙护法   每天9、11、13、15、17、19、21、23、0点刷新
	-- tPublicBOSS_OnTime[4] = {}
	-- tPublicBOSS_OnTime[4]["Type"] = 3  -- 刷怪
	-- tPublicBOSS_OnTime[4]["TimeType"] = 4  -- 日时间
	-- tPublicBOSS_OnTime[4]["Multiple"] = {}
	-- tPublicBOSS_OnTime[4]["Multiple"][1] = "09:00 09:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][2] = "11:00 11:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][3] = "13:00 13:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][4] = "15:00 15:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][5] = "17:00 17:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][6] = "19:00 19:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][7] = "21:00 21:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][8] = "23:00 23:00"
	-- tPublicBOSS_OnTime[4]["Multiple"][9] = "00:00 00:00"
	-- tPublicBOSS_OnTime[4]["Func"] = PublicBOSS_BrushBoss3
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[4])

-- 禁天邪兽   每天8、10、12、14、16、18、20、22、0点刷新
	-- tPublicBOSS_OnTime[5] = {}
	-- tPublicBOSS_OnTime[5]["Type"] = 3  -- 刷怪
	-- tPublicBOSS_OnTime[5]["TimeType"] = 4  -- 日时间
	-- tPublicBOSS_OnTime[5]["Multiple"] = {}
	-- tPublicBOSS_OnTime[5]["Multiple"][1] = "08:00 08:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][2] = "10:00 10:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][3] = "12:00 12:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][4] = "14:00 14:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][5] = "16:00 16:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][6] = "18:00 18:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][7] = "20:00 20:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][8] = "22:00 22:00"
	-- tPublicBOSS_OnTime[5]["Multiple"][9] = "00:00 00:00"
	-- tPublicBOSS_OnTime[5]["Func"] = PublicBOSS_BrushBoss4
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[5])
	
-- 妖后瑶姬   每天12:10、19:10、21:10刷新
	-- tPublicBOSS_OnTime[6] = {}
	-- tPublicBOSS_OnTime[6]["Type"] = 3  -- 刷怪
	-- tPublicBOSS_OnTime[6]["TimeType"] = 4  -- 日时间
	-- tPublicBOSS_OnTime[6]["Multiple"] = {}
	-- tPublicBOSS_OnTime[6]["Multiple"][1] = "19:10 19:10"
	-- tPublicBOSS_OnTime[6]["Multiple"][2] = "21:10 21:10"
	-- tPublicBOSS_OnTime[6]["Func"] = PublicBOSS_BrushBoss5
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[6])
-- 清场
	-- tPublicBOSS_OnTime[7] = {}
	-- tPublicBOSS_OnTime[7]["Type"] = 2
	-- tPublicBOSS_OnTime[7]["TimeType"] = 4
	-- tPublicBOSS_OnTime[7]["Time"] = "02:00 02:02"
	-- tPublicBOSS_OnTime[7]["Func"] = PublicBOSS_MoveUser
	-- table.insert(tSystemTime_InitialData,tPublicBOSS_OnTime[7])


--boss血量
for i = 5336,5354 do
	tBloodTriggerLua[i] = tBloodTriggerLua[i] or {}
	tBloodTriggerLua[i]["tFunction"] = tBloodTriggerLua[i]["tFunction"] or {}
	table.insert(tBloodTriggerLua[i]["tFunction"],PublicBOSS_killBossPercent)
end

--------------------------------------------上线触发--------------------------------------------
-- table.insert(tSystem_PlayLogin_Func,PublicBOSS_Login)

