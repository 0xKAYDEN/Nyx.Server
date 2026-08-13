------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]天下第一武道会
--Creator:		翁清海
--Created:		2017/09/28
------------------------------------------------------------------------------------

--命名前缀
--FirstWorldBudokai_

--Stc
-- 168,67 参与奖 1~6位分别记录1-6星领参与奖情况 1-6星单日限制分别为3 3 3 1 1 1次
-- 168,68 击杀奖 1~6位分别记录1-6星领击杀奖情况 1-6星单日限制分别为3 3 3 1 1 1次
-- 168,69 单日获得星星数 1天200个
-- 168,70 胜绩数
-- 168,71 标记副本内击杀者
-- 168,72 累计奖励领取标记 1-10位分别记录10个档位奖励的领取情况 1为已领取
-- 168,73 召唤和击杀 记录单日召唤boss和击杀召唤boss的次数 单日限制3次
-- 168,74 增益符 标记增益符状态 1-5位分别记录一种增益符效果
-- 168,75 召唤者 标记副本内召唤boss者的领奖状态 1为已领取
-- 168,91 增益符掉落 单日掉落5个
-- 168,95 记录奖励增益的消耗情况
-- 169,21 每日领取
-- 171,44 星陨石骰子打开3秒限制

--Global
-- 51814 记录双龙城刷新boss的冷却时间
-- 51815 记录潜龙渊刷新boss的冷却时间
-- 51817-51818 记录1-10名的胜绩数和玩家名字
-- 51819-51820 记录1-10名的玩家id
-- 51816 记录璇玑宝箱的冷却时间和领取状态

--logid:12000892

local tFirstWorldBudokai_Cont = {}
	tFirstWorldBudokai_Cont["Metem"] = 2
	tFirstWorldBudokai_Cont["Level"] = 100
	
	tFirstWorldBudokai_Cont["Arena"] = 10272
	
	tFirstWorldBudokai_Cont["CanIntoMap"] = {1002,1000,1015,1020,1011,10137,10250}
	
	tFirstWorldBudokai_Cont["RankTime"] = "9:00 23:59"
	tFirstWorldBudokai_Cont["RankTime1"] = "3:00 6:59"
	tFirstWorldBudokai_Cont["DayEndTime"] = "00:00 00:05"
	tFirstWorldBudokai_Cont["DayEndTime1"] = "00:00 00:03"
	tFirstWorldBudokai_Cont["DayBeginTime"] = "8:59 8:59"
	tFirstWorldBudokai_Cont["RankNum"] = 10
	--独孤求败
	tFirstWorldBudokai_Cont["NpcId"] = 22210
	--璇玑宝箱
	tFirstWorldBudokai_Cont["BoxId"] = 22212
	tFirstWorldBudokai_Cont["BoxId1"] = 21385
	--副本相关配置
	tFirstWorldBudokai_Cont["Instance"] = {}
	tFirstWorldBudokai_Cont["Instance"]["Id"] = 131
	tFirstWorldBudokai_Cont["Instance"]["GenId"] = 22944
	tFirstWorldBudokai_Cont["Instance"]["PoxX"] = 58
	tFirstWorldBudokai_Cont["Instance"]["PoxY"] = 59
	--刷怪GenId
	tFirstWorldBudokai_Cont["GenId"] = 22943
	--城区区域(不能招boss)
	tFirstWorldBudokai_Cont["SafeArea"] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["MapId"] = 1002
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][1] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][1]["MaxPosX"] = 430
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][1]["MaxPosY"] = 560
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][1]["MinPosX"] = 180
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][1]["MinPosY"] = 335
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][2] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][2]["MaxPosX"] = 539
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][2]["MaxPosY"] = 461
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][2]["MinPosX"] = 250
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][2]["MinPosY"] = 180
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][3] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][3]["MaxPosX"] = 480
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][3]["MaxPosY"] = 480
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][3]["MinPosX"] = 430
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][3]["MinPosY"] = 450
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][4] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][4]["MaxPosX"] = 550
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][4]["MaxPosY"] = 343
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][4]["MinPosX"] = 521
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][4]["MinPosY"] = 281
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][5] = {}
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][5]["MaxPosX"] = 347
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][5]["MaxPosY"] = 580
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][5]["MinPosX"] = 300
	tFirstWorldBudokai_Cont["SafeArea"][1]["Area"][5]["MinPosY"] = 545
	-- 寻路东方姑娘
	tFirstWorldBudokai_Cont["FineExchange"] = 22211
	--物品召唤怪物对应表
	tFirstWorldBudokai_Cont["ItemMonster"] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305572] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305572][3] = 4483
	tFirstWorldBudokai_Cont["ItemMonster"][3305572]["Lookface"] = 58030
	tFirstWorldBudokai_Cont["ItemMonster"][3305573] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305573][3] = 4484
	tFirstWorldBudokai_Cont["ItemMonster"][3305573]["Lookface"] = 58040
	tFirstWorldBudokai_Cont["ItemMonster"][3305574] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305574][3] = 4485
	tFirstWorldBudokai_Cont["ItemMonster"][3305574]["Lookface"] = 58050
	tFirstWorldBudokai_Cont["ItemMonster"][3305575] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305575][3] = 4486
	tFirstWorldBudokai_Cont["ItemMonster"][3305575]["Lookface"] = 58060
	tFirstWorldBudokai_Cont["ItemMonster"][3305576] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305576][3] = 4487
	tFirstWorldBudokai_Cont["ItemMonster"][3305576]["Lookface"] = 58070
	tFirstWorldBudokai_Cont["ItemMonster"][3305577] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305577][3] = 4488
	tFirstWorldBudokai_Cont["ItemMonster"][3305577]["Lookface"] = 58080
	tFirstWorldBudokai_Cont["ItemMonster"][3305578] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305578][3] = 4489
	tFirstWorldBudokai_Cont["ItemMonster"][3305578]["Lookface"] = 58090
	tFirstWorldBudokai_Cont["ItemMonster"][3305579] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305579][3] = 4490
	tFirstWorldBudokai_Cont["ItemMonster"][3305579]["Lookface"] = 58100
	tFirstWorldBudokai_Cont["ItemMonster"][3305580] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305580][3] = 4491
	tFirstWorldBudokai_Cont["ItemMonster"][3305580]["Lookface"] = 58110
	tFirstWorldBudokai_Cont["ItemMonster"][3305581] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305581][3] = 4492
	tFirstWorldBudokai_Cont["ItemMonster"][3305581]["Lookface"] = 58120
	tFirstWorldBudokai_Cont["ItemMonster"][3305582] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305582][3] = 4493
	tFirstWorldBudokai_Cont["ItemMonster"][3305582]["Lookface"] = 58130
	tFirstWorldBudokai_Cont["ItemMonster"][3305583] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305583][3] = 4494
	tFirstWorldBudokai_Cont["ItemMonster"][3305583]["Lookface"] = 58140
	tFirstWorldBudokai_Cont["ItemMonster"][3305584] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305584][3] = 4495
	tFirstWorldBudokai_Cont["ItemMonster"][3305584]["Lookface"] = 58150
	tFirstWorldBudokai_Cont["ItemMonster"][3305585] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305585][3] = 4496
	tFirstWorldBudokai_Cont["ItemMonster"][3305585]["Lookface"] = 58160
	tFirstWorldBudokai_Cont["ItemMonster"][3305586] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305586][3] = 4497
	tFirstWorldBudokai_Cont["ItemMonster"][3305586]["Lookface"] = 58170
	tFirstWorldBudokai_Cont["ItemMonster"][3305587] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305587][3] = 4498
	tFirstWorldBudokai_Cont["ItemMonster"][3305587]["Lookface"] = 58180
	tFirstWorldBudokai_Cont["ItemMonster"][3305588] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305588][3] = 4499
	tFirstWorldBudokai_Cont["ItemMonster"][3305588]["Lookface"] = 58190
	tFirstWorldBudokai_Cont["ItemMonster"][3305589] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305589][3] = 4500
	tFirstWorldBudokai_Cont["ItemMonster"][3305589]["Lookface"] = 58200
	tFirstWorldBudokai_Cont["ItemMonster"][3305590] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305590][3] = 4501
	tFirstWorldBudokai_Cont["ItemMonster"][3305590]["Lookface"] = 58210
	tFirstWorldBudokai_Cont["ItemMonster"][3305591] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305591][3] = 4502
	tFirstWorldBudokai_Cont["ItemMonster"][3305591]["Lookface"] = 58220
	tFirstWorldBudokai_Cont["ItemMonster"][3305592] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305592][3] = 4503
	tFirstWorldBudokai_Cont["ItemMonster"][3305592]["Lookface"] = 58230
	tFirstWorldBudokai_Cont["ItemMonster"][3305593] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305593][3] = 4504
	tFirstWorldBudokai_Cont["ItemMonster"][3305593]["Lookface"] = 58240
	tFirstWorldBudokai_Cont["ItemMonster"][3305594] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305594][3] = 4505
	tFirstWorldBudokai_Cont["ItemMonster"][3305594]["Lookface"] = 58250
	tFirstWorldBudokai_Cont["ItemMonster"][3305595] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305595][3] = 4506
	tFirstWorldBudokai_Cont["ItemMonster"][3305595]["Lookface"] = 58260
	
	tFirstWorldBudokai_Cont["ItemMonster"][3305596] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305596][1] = 4507
	tFirstWorldBudokai_Cont["ItemMonster"][3305596][2] = 4531
	tFirstWorldBudokai_Cont["ItemMonster"][3305596][3] = 4555
	tFirstWorldBudokai_Cont["ItemMonster"][3305596]["Lookface"] = 58270
	tFirstWorldBudokai_Cont["ItemMonster"][3305597] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305597][1] = 4508
	tFirstWorldBudokai_Cont["ItemMonster"][3305597][2] = 4532
	tFirstWorldBudokai_Cont["ItemMonster"][3305597][3] = 4556
	tFirstWorldBudokai_Cont["ItemMonster"][3305597]["Lookface"] = 58280
	tFirstWorldBudokai_Cont["ItemMonster"][3305598] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305598][1] = 4509
	tFirstWorldBudokai_Cont["ItemMonster"][3305598][2] = 4533
	tFirstWorldBudokai_Cont["ItemMonster"][3305598][3] = 4557
	tFirstWorldBudokai_Cont["ItemMonster"][3305598]["Lookface"] = 58290
	tFirstWorldBudokai_Cont["ItemMonster"][3305599] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305599][1] = 4510
	tFirstWorldBudokai_Cont["ItemMonster"][3305599][2] = 4534
	tFirstWorldBudokai_Cont["ItemMonster"][3305599][3] = 4558
	tFirstWorldBudokai_Cont["ItemMonster"][3305599]["Lookface"] = 58300
	tFirstWorldBudokai_Cont["ItemMonster"][3305600] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305600][1] = 4511
	tFirstWorldBudokai_Cont["ItemMonster"][3305600][2] = 4535
	tFirstWorldBudokai_Cont["ItemMonster"][3305600][3] = 4559
	tFirstWorldBudokai_Cont["ItemMonster"][3305600]["Lookface"] = 58310
	tFirstWorldBudokai_Cont["ItemMonster"][3305601] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305601][1] = 4512
	tFirstWorldBudokai_Cont["ItemMonster"][3305601][2] = 4536
	tFirstWorldBudokai_Cont["ItemMonster"][3305601][3] = 4560
	tFirstWorldBudokai_Cont["ItemMonster"][3305601]["Lookface"] = 58320
	tFirstWorldBudokai_Cont["ItemMonster"][3305602] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305602][1] = 4513
	tFirstWorldBudokai_Cont["ItemMonster"][3305602][2] = 4537
	tFirstWorldBudokai_Cont["ItemMonster"][3305602][3] = 4561
	tFirstWorldBudokai_Cont["ItemMonster"][3305602]["Lookface"] = 58330
	tFirstWorldBudokai_Cont["ItemMonster"][3305603] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305603][1] = 4514
	tFirstWorldBudokai_Cont["ItemMonster"][3305603][2] = 4538
	tFirstWorldBudokai_Cont["ItemMonster"][3305603][3] = 4562
	tFirstWorldBudokai_Cont["ItemMonster"][3305603]["Lookface"] = 58340
	tFirstWorldBudokai_Cont["ItemMonster"][3305604] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305604][1] = 4515
	tFirstWorldBudokai_Cont["ItemMonster"][3305604][2] = 4539
	tFirstWorldBudokai_Cont["ItemMonster"][3305604][3] = 4563
	tFirstWorldBudokai_Cont["ItemMonster"][3305604]["Lookface"] = 58350
	tFirstWorldBudokai_Cont["ItemMonster"][3305605] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305605][1] = 4516
	tFirstWorldBudokai_Cont["ItemMonster"][3305605][2] = 4540
	tFirstWorldBudokai_Cont["ItemMonster"][3305605][3] = 4564
	tFirstWorldBudokai_Cont["ItemMonster"][3305605]["Lookface"] = 58360
	tFirstWorldBudokai_Cont["ItemMonster"][3305606] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305606][1] = 4517
	tFirstWorldBudokai_Cont["ItemMonster"][3305606][2] = 4541
	tFirstWorldBudokai_Cont["ItemMonster"][3305606][3] = 4565
	tFirstWorldBudokai_Cont["ItemMonster"][3305606]["Lookface"] = 58370
	tFirstWorldBudokai_Cont["ItemMonster"][3305607] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305607][1] = 4518
	tFirstWorldBudokai_Cont["ItemMonster"][3305607][2] = 4542
	tFirstWorldBudokai_Cont["ItemMonster"][3305607][3] = 4566
	tFirstWorldBudokai_Cont["ItemMonster"][3305607]["Lookface"] = 58380
	tFirstWorldBudokai_Cont["ItemMonster"][3305608] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305608][1] = 4519
	tFirstWorldBudokai_Cont["ItemMonster"][3305608][2] = 4543
	tFirstWorldBudokai_Cont["ItemMonster"][3305608][3] = 4567
	tFirstWorldBudokai_Cont["ItemMonster"][3305608]["Lookface"] = 58390
	tFirstWorldBudokai_Cont["ItemMonster"][3305609] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305609][1] = 4520
	tFirstWorldBudokai_Cont["ItemMonster"][3305609][2] = 4544
	tFirstWorldBudokai_Cont["ItemMonster"][3305609][3] = 4568
	tFirstWorldBudokai_Cont["ItemMonster"][3305609]["Lookface"] = 58400
	tFirstWorldBudokai_Cont["ItemMonster"][3305610] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305610][1] = 4521
	tFirstWorldBudokai_Cont["ItemMonster"][3305610][2] = 4545
	tFirstWorldBudokai_Cont["ItemMonster"][3305610][3] = 4569
	tFirstWorldBudokai_Cont["ItemMonster"][3305610]["Lookface"] = 58410
	tFirstWorldBudokai_Cont["ItemMonster"][3305611] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305611][1] = 4522
	tFirstWorldBudokai_Cont["ItemMonster"][3305611][2] = 4546
	tFirstWorldBudokai_Cont["ItemMonster"][3305611][3] = 4570
	tFirstWorldBudokai_Cont["ItemMonster"][3305611]["Lookface"] = 58420
	tFirstWorldBudokai_Cont["ItemMonster"][3305612] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305612][1] = 4523
	tFirstWorldBudokai_Cont["ItemMonster"][3305612][2] = 4547
	tFirstWorldBudokai_Cont["ItemMonster"][3305612][3] = 4571
	tFirstWorldBudokai_Cont["ItemMonster"][3305612]["Lookface"] = 58430
	tFirstWorldBudokai_Cont["ItemMonster"][3305613] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305613][1] = 4524
	tFirstWorldBudokai_Cont["ItemMonster"][3305613][2] = 4548
	tFirstWorldBudokai_Cont["ItemMonster"][3305613][3] = 4572
	tFirstWorldBudokai_Cont["ItemMonster"][3305613]["Lookface"] = 58440
	tFirstWorldBudokai_Cont["ItemMonster"][3305614] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305614][1] = 4525
	tFirstWorldBudokai_Cont["ItemMonster"][3305614][2] = 4549
	tFirstWorldBudokai_Cont["ItemMonster"][3305614][3] = 4573
	tFirstWorldBudokai_Cont["ItemMonster"][3305614]["Lookface"] = 58450
	tFirstWorldBudokai_Cont["ItemMonster"][3305615] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305615][1] = 4526
	tFirstWorldBudokai_Cont["ItemMonster"][3305615][2] = 4550
	tFirstWorldBudokai_Cont["ItemMonster"][3305615][3] = 4574
	tFirstWorldBudokai_Cont["ItemMonster"][3305615]["Lookface"] = 58460
	tFirstWorldBudokai_Cont["ItemMonster"][3305616] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305616][1] = 4527
	tFirstWorldBudokai_Cont["ItemMonster"][3305616][2] = 4551
	tFirstWorldBudokai_Cont["ItemMonster"][3305616][3] = 4575
	tFirstWorldBudokai_Cont["ItemMonster"][3305616]["Lookface"] = 58470
	tFirstWorldBudokai_Cont["ItemMonster"][3305617] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305617][1] = 4528
	tFirstWorldBudokai_Cont["ItemMonster"][3305617][2] = 4552
	tFirstWorldBudokai_Cont["ItemMonster"][3305617][3] = 4576
	tFirstWorldBudokai_Cont["ItemMonster"][3305617]["Lookface"] = 58480
	tFirstWorldBudokai_Cont["ItemMonster"][3305618] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305618][1] = 4529
	tFirstWorldBudokai_Cont["ItemMonster"][3305618][2] = 4553
	tFirstWorldBudokai_Cont["ItemMonster"][3305618][3] = 4577
	tFirstWorldBudokai_Cont["ItemMonster"][3305618]["Lookface"] = 58490
	tFirstWorldBudokai_Cont["ItemMonster"][3305619] = {}
	tFirstWorldBudokai_Cont["ItemMonster"][3305619][1] = 4530
	tFirstWorldBudokai_Cont["ItemMonster"][3305619][2] = 4554
	tFirstWorldBudokai_Cont["ItemMonster"][3305619][3] = 4578
	tFirstWorldBudokai_Cont["ItemMonster"][3305619]["Lookface"] = 58500
	--Boss星级
	-- tFirstWorldBudokai_Cont["MonsterStar"] = {}
	-- tFirstWorldBudokai_Cont["MonsterStar"][1] = {4416,4417,4418,4419,4420,4421,4422,4423,4483,4484,4485,4486,4487,4488,4489,4490}
	-- tFirstWorldBudokai_Cont["MonsterStar"][2] = {4424,4425,4426,4427,4428,4429,4430,4431,4491,4492,4493,4494,4495,4496,4497,4498}
	-- tFirstWorldBudokai_Cont["MonsterStar"][3] = {4432,4433,4434,4435,4436,4437,4438,4439,4499,4500,4501,4502,4503,4504,4505,4506}
	-- tFirstWorldBudokai_Cont["MonsterStar"][4] = {4440,4441,4442,4443,4444,4445,4446,4447,4507,4508,4509,4510,4511,4512,4513,4514,4531,4532,4533,4534,4535,4536,4537,4538,4555,4556,4557,4558,4559,4560,4561,4562}
	-- tFirstWorldBudokai_Cont["MonsterStar"][5] = {4448,4449,4450,4451,4452,4453,4454,4455,4515,4516,4517,4518,4519,4520,4521,4522,4539,4540,4541,4542,4543,4544,4545,4546,4563,4564,4565,4566,4567,4568,4569,4570}
	-- tFirstWorldBudokai_Cont["MonsterStar"][6] = {4456,4457,4458,4459,4460,4461,4462,4463,4523,4524,4525,4526,4527,4528,4529,4530,4547,4548,4549,4550,4551,4552,4553,4554,4571,4572,4573,4574,4575,4576,4577,4578}
	--星级
	tFirstWorldBudokai_Cont["Star"] = {}
	tFirstWorldBudokai_Cont["Star"][1] = {3305572,3305573,3305574,3305575,3305576,3305577,3305578,3305579}
	tFirstWorldBudokai_Cont["Star"][2] = {3305580,3305581,3305582,3305583,3305584,3305585,3305586,3305587}
	tFirstWorldBudokai_Cont["Star"][3] = {3305588,3305589,3305590,3305591,3305592,3305593,3305594,3305595}
	tFirstWorldBudokai_Cont["Star"][4] = {3305596,3305597,3305598,3305599,3305600,3305601,3305602,3305603}
	tFirstWorldBudokai_Cont["Star"][5] = {3305604,3305605,3305606,3305607,3305608,3305609,3305610,3305611}
	tFirstWorldBudokai_Cont["Star"][6] = {3305612,3305613,3305614,3305615,3305616,3305617,3305618,3305619}
	--片区怪物
	tFirstWorldBudokai_Cont["FreshBoss"] = {}
	tFirstWorldBudokai_Cont["FreshBoss"][1] = {4416,4417,4418,4419,4420,4421,4422,4423}
	tFirstWorldBudokai_Cont["FreshBoss"][2] = {4424,4425,4426,4427,4428,4429,4430,4431}
	tFirstWorldBudokai_Cont["FreshBoss"][3] = {4432,4433,4434,4435,4436,4437,4438,4439}
	tFirstWorldBudokai_Cont["FreshBoss"][4] = {4440,4441,4442,4443,4444,4445,4446,4447}
	tFirstWorldBudokai_Cont["FreshBoss"][5] = {4448,4449,4450,4451,4452,4453,4454,4455}
	tFirstWorldBudokai_Cont["FreshBoss"][6] = {4456,4457,4458,4459,4460,4461,4462,4463}
	--召唤怪物
	tFirstWorldBudokai_Cont["CallBoss"] = {}
	tFirstWorldBudokai_Cont["CallBoss"][1] = {4483,4484,4485,4486,4487,4488,4489,4490}
	tFirstWorldBudokai_Cont["CallBoss"][2] = {4491,4492,4493,4494,4495,4496,4497,4498}
	tFirstWorldBudokai_Cont["CallBoss"][3] = {4499,4500,4501,4502,4503,4504,4505,4506}
	tFirstWorldBudokai_Cont["CallBoss"][4] = {4507,4508,4509,4510,4511,4512,4513,4514,4531,4532,4533,4534,4535,4536,4537,4538,4555,4556,4557,4558,4559,4560,4561,4562}
	tFirstWorldBudokai_Cont["CallBoss"][5] = {4515,4516,4517,4518,4519,4520,4521,4522,4539,4540,4541,4542,4543,4544,4545,4546,4563,4564,4565,4566,4567,4568,4569,4570}
	tFirstWorldBudokai_Cont["CallBoss"][6] = {4523,4524,4525,4526,4527,4528,4529,4530,4547,4548,4549,4550,4551,4552,4553,4554,4571,4572,4573,4574,4575,4576,4577,4578}
	--文字间距
	tFirstWorldBudokai_Cont["WordDistance"] = {} 
	tFirstWorldBudokai_Cont["WordDistance"][1] = {}
	tFirstWorldBudokai_Cont["WordDistance"][1]["Left"] = 0
	tFirstWorldBudokai_Cont["WordDistance"][1]["Middle"] = 10
	tFirstWorldBudokai_Cont["WordDistance"][2] = {}
	tFirstWorldBudokai_Cont["WordDistance"][2]["Left"] = 9
	tFirstWorldBudokai_Cont["WordDistance"][2]["Middle"] = 48
	tFirstWorldBudokai_Cont["WordDistance"][2]["Right"] = 83
	-- box
	tFirstWorldBudokai_Cont["BossBox"] = {}
	tFirstWorldBudokai_Cont["BossBox"]["MapId"] = 5000
	tFirstWorldBudokai_Cont["BossBox"]["PosX"] = 100
	tFirstWorldBudokai_Cont["BossBox"]["PosY"] = 100
	
	tFirstWorldBudokai_Cont["InstanceBox"] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][1] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][1]["NpcId"] = 21355
	tFirstWorldBudokai_Cont["InstanceBox"][1]["Lookface"] = 2850
	tFirstWorldBudokai_Cont["InstanceBox"][1]["Star"] = 1
	tFirstWorldBudokai_Cont["InstanceBox"][2] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][2]["NpcId"] = 21356
	tFirstWorldBudokai_Cont["InstanceBox"][2]["Lookface"] = 2850
	tFirstWorldBudokai_Cont["InstanceBox"][2]["Star"] = 2
	tFirstWorldBudokai_Cont["InstanceBox"][3] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][3]["NpcId"] = 21357
	tFirstWorldBudokai_Cont["InstanceBox"][3]["Lookface"] = 2850
	tFirstWorldBudokai_Cont["InstanceBox"][3]["Star"] = 3
	tFirstWorldBudokai_Cont["InstanceBox"][4] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][4]["NpcId"] = 21165
	tFirstWorldBudokai_Cont["InstanceBox"][4]["Lookface"] = 2850
	tFirstWorldBudokai_Cont["InstanceBox"][4]["Star"] = 4
	tFirstWorldBudokai_Cont["InstanceBox"][5] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][5]["NpcId"] = 21166
	tFirstWorldBudokai_Cont["InstanceBox"][5]["Lookface"] = 2850
	tFirstWorldBudokai_Cont["InstanceBox"][5]["Star"] = 5
	tFirstWorldBudokai_Cont["InstanceBox"][6] = {}
	tFirstWorldBudokai_Cont["InstanceBox"][6]["NpcId"] = 21167
	tFirstWorldBudokai_Cont["InstanceBox"][6]["Lookface"] = 2850
	tFirstWorldBudokai_Cont["InstanceBox"][6]["Star"] = 6
	
	-- tFirstWorldBudokai_Cont["BoxLookface"] = {}
	-- tFirstWorldBudokai_Cont["BoxLookface"][2560] = 4
	-- tFirstWorldBudokai_Cont["BoxLookface"][2850] = 5
	-- tFirstWorldBudokai_Cont["BoxLookface"][16600] = 6
	
	tFirstWorldBudokai_Cont["ClearGlobal"] = {}
	tFirstWorldBudokai_Cont["ClearGlobal"]["GlobalId"] = 51815
	tFirstWorldBudokai_Cont["ClearGlobal"]["Pos"] = 5
	
	tFirstWorldBudokai_Cont["NewServer"] = {}
	tFirstWorldBudokai_Cont["NewServer"]["GlobalId"] = 51131
	tFirstWorldBudokai_Cont["NewServer"]["Pos"] = 0
	
	tFirstWorldBudokai_Cont["StatusType"] = 208
	
	tFirstWorldBudokai_Cont["DelBuffMap"] = {10137,10250}
	
	--增加判断摆摊区域
	tFirstWorldBudokai_Cont["Position"] = {}
	tFirstWorldBudokai_Cont["Position"][1] = {}
	tFirstWorldBudokai_Cont["Position"][1]["MinX"] = 310
	tFirstWorldBudokai_Cont["Position"][1]["MaxX"] = 337
	tFirstWorldBudokai_Cont["Position"][1]["MinY"] = 398
	tFirstWorldBudokai_Cont["Position"][1]["MaxY"] = 433
	tFirstWorldBudokai_Cont["Position"][2] = {}
	tFirstWorldBudokai_Cont["Position"][2]["MinX"] = 359
	tFirstWorldBudokai_Cont["Position"][2]["MaxX"] = 385
	tFirstWorldBudokai_Cont["Position"][2]["MinY"] = 399
	tFirstWorldBudokai_Cont["Position"][2]["MaxY"] = 433
	tFirstWorldBudokai_Cont["Position"][3] = {}
	tFirstWorldBudokai_Cont["Position"][3]["MinX"] = 310
	tFirstWorldBudokai_Cont["Position"][3]["MaxX"] = 337
	tFirstWorldBudokai_Cont["Position"][3]["MinY"] = 454
	tFirstWorldBudokai_Cont["Position"][3]["MaxY"] = 489
	tFirstWorldBudokai_Cont["Position"][4] = {}
	tFirstWorldBudokai_Cont["Position"][4]["MinX"] = 358
	tFirstWorldBudokai_Cont["Position"][4]["MaxX"] = 385
	tFirstWorldBudokai_Cont["Position"][4]["MinY"] = 454
	tFirstWorldBudokai_Cont["Position"][4]["MaxY"] = 489
	
local tFirstWorldBudokai_DynaNpc = {}
	tFirstWorldBudokai_DynaNpc["Item"] = {}
	tFirstWorldBudokai_DynaNpc["Item"][21157] = {3305572,3305580,3305588,3305596,3305604,3305612}
	tFirstWorldBudokai_DynaNpc["Item"][21158] = {3305573,3305581,3305589,3305597,3305605,3305613}
	tFirstWorldBudokai_DynaNpc["Item"][21159] = {3305574,3305582,3305590,3305598,3305606,3305614}
	tFirstWorldBudokai_DynaNpc["Item"][21160] = {3305575,3305583,3305591,3305599,3305607,3305615}
	tFirstWorldBudokai_DynaNpc["Item"][21161] = {3305576,3305584,3305592,3305600,3305608,3305616}
	tFirstWorldBudokai_DynaNpc["Item"][21162] = {3305577,3305585,3305593,3305601,3305609,3305617}
	tFirstWorldBudokai_DynaNpc["Item"][21163] = {3305578,3305586,3305594,3305602,3305610,3305618}
	tFirstWorldBudokai_DynaNpc["Item"][21164] = {3305579,3305587,3305595,3305603,3305611,3305619}

	tFirstWorldBudokai_DynaNpc["Task0"] = {}
	tFirstWorldBudokai_DynaNpc["Task0"][21157] = 94178793
	tFirstWorldBudokai_DynaNpc["Task0"][21158] = 94178794
	tFirstWorldBudokai_DynaNpc["Task0"][21159] = 94178795
	tFirstWorldBudokai_DynaNpc["Task0"][21160] = 94178796
	tFirstWorldBudokai_DynaNpc["Task0"][21161] = 94178797
	tFirstWorldBudokai_DynaNpc["Task0"][21162] = 94178798
	tFirstWorldBudokai_DynaNpc["Task0"][21163] = 94178799
	tFirstWorldBudokai_DynaNpc["Task0"][21164] = 94260590
	tFirstWorldBudokai_DynaNpc["Task0"][21165] = 94260591
	tFirstWorldBudokai_DynaNpc["Task0"][21166] = 94260592
	tFirstWorldBudokai_DynaNpc["Task0"][21167] = 94260593
	tFirstWorldBudokai_DynaNpc["Task0"][21355] = 94178787
	tFirstWorldBudokai_DynaNpc["Task0"][21356] = 94178788
	tFirstWorldBudokai_DynaNpc["Task0"][21357] = 94178789
	tFirstWorldBudokai_DynaNpc["Star"] = {}
	tFirstWorldBudokai_DynaNpc["Star"][21355] = 1
	tFirstWorldBudokai_DynaNpc["Star"][21356] = 2
	tFirstWorldBudokai_DynaNpc["Star"][21357] = 3
	tFirstWorldBudokai_DynaNpc["Star"][21165] = 4
	tFirstWorldBudokai_DynaNpc["Star"][21166] = 5
	tFirstWorldBudokai_DynaNpc["Star"][21167] = 6



local tFirstWorldBudokai_Time = {}
	tFirstWorldBudokai_Time["Activity"] = tActivityTime["FirstWorldBudokai"]["ActivityTime"]
	tFirstWorldBudokai_Time["LastDay"] = tActivityTime["FirstWorldBudokai"]["LastDay"]
	
-- 168,67-168,76
local tFirstWorldBudokai_Stc = {}
	-- 参与奖
	tFirstWorldBudokai_Stc[1] = {}
	tFirstWorldBudokai_Stc[1]["EventType"] = 168
	tFirstWorldBudokai_Stc[1]["DataType"] = 67
	tFirstWorldBudokai_Stc[1]["Limit"] = {}
	tFirstWorldBudokai_Stc[1]["Limit"][1] = 6
	tFirstWorldBudokai_Stc[1]["Limit"][2] = 5
	tFirstWorldBudokai_Stc[1]["Limit"][3] = 4
	tFirstWorldBudokai_Stc[1]["Limit"][4] = 3
	tFirstWorldBudokai_Stc[1]["Limit"][5] = 2
	tFirstWorldBudokai_Stc[1]["Limit"][6] = 1
	tFirstWorldBudokai_Stc[1]["TaskDetail"] = 3942
	-- 挑战令礼包每日限制
	tFirstWorldBudokai_Stc[2] = {}
	tFirstWorldBudokai_Stc[2]["EventType"] = 168
	tFirstWorldBudokai_Stc[2]["DataType"] = 68
	tFirstWorldBudokai_Stc[2]["Limit"] = {}
	tFirstWorldBudokai_Stc[2]["Limit"][1] = 10
	-- 星星
	tFirstWorldBudokai_Stc[3] = {}
	tFirstWorldBudokai_Stc[3]["EventType"] = 168
	tFirstWorldBudokai_Stc[3]["DataType"] = 69
	tFirstWorldBudokai_Stc[3]["Limit"] = {}
	tFirstWorldBudokai_Stc[3]["Limit"][1] = 3000
	tFirstWorldBudokai_Stc[3]["NotClear"] = 1
	-- 胜绩
	tFirstWorldBudokai_Stc[4] = {}
	tFirstWorldBudokai_Stc[4]["EventType"] = 168
	tFirstWorldBudokai_Stc[4]["DataType"] = 70
	tFirstWorldBudokai_Stc[4]["Limit"] = {}
	tFirstWorldBudokai_Stc[4]["Limit"][1] = 0
	tFirstWorldBudokai_Stc[4]["NotClear"] = 1
	tFirstWorldBudokai_Stc[4]["Rank"] = 1
	-- 击杀者
	tFirstWorldBudokai_Stc[5] = {}
	tFirstWorldBudokai_Stc[5]["EventType"] = 168
	tFirstWorldBudokai_Stc[5]["DataType"] = 71
	tFirstWorldBudokai_Stc[5]["Limit"] = {}
	tFirstWorldBudokai_Stc[5]["Limit"][1] = 0
	tFirstWorldBudokai_Stc[5]["Set"] = 1
	tFirstWorldBudokai_Stc[5]["Limit1"] = 10
	tFirstWorldBudokai_Stc[5]["NotClear"] = 1
	-- 累计奖励
	tFirstWorldBudokai_Stc[6] = {}
	tFirstWorldBudokai_Stc[6]["EventType"] = 168
	tFirstWorldBudokai_Stc[6]["DataType"] = 72
	tFirstWorldBudokai_Stc[6]["Limit"] = {}
	tFirstWorldBudokai_Stc[6]["Limit"][1] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][2] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][3] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][4] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][5] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][6] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][7] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][8] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][9] = 1
	tFirstWorldBudokai_Stc[6]["Limit"][10] = 1
	tFirstWorldBudokai_Stc[6]["NotClear"] = 1
	-- 每日六星奖励
	tFirstWorldBudokai_Stc[7] = {}
	tFirstWorldBudokai_Stc[7]["EventType"] = 168
	tFirstWorldBudokai_Stc[7]["DataType"] = 73
	tFirstWorldBudokai_Stc[7]["Limit"] = {}
	tFirstWorldBudokai_Stc[7]["Limit"][1] = 1
	-- 增益符
	tFirstWorldBudokai_Stc[8] = {}
	tFirstWorldBudokai_Stc[8]["EventType"] = 168
	tFirstWorldBudokai_Stc[8]["DataType"] = 74
	tFirstWorldBudokai_Stc[8]["Limit"] = {}
	tFirstWorldBudokai_Stc[8]["Limit"][1] = 0
	tFirstWorldBudokai_Stc[8]["Limit"][2] = 0
	tFirstWorldBudokai_Stc[8]["Limit"][3] = 0
	tFirstWorldBudokai_Stc[8]["Limit"][4] = 0
	tFirstWorldBudokai_Stc[8]["Limit"][5] = 0
	tFirstWorldBudokai_Stc[8]["Set"] = 1
	tFirstWorldBudokai_Stc[8]["NotClear"] = 1
	-- 召唤者
	tFirstWorldBudokai_Stc[9] = {}
	tFirstWorldBudokai_Stc[9]["EventType"] = 168
	tFirstWorldBudokai_Stc[9]["DataType"] = 75
	tFirstWorldBudokai_Stc[9]["Limit"] = {}
	tFirstWorldBudokai_Stc[9]["Limit"][1] = 0
	tFirstWorldBudokai_Stc[9]["Set"] = 1
	tFirstWorldBudokai_Stc[9]["Limit1"] = 10
	tFirstWorldBudokai_Stc[9]["NotClear"] = 1
	-- 增益符掉落
	tFirstWorldBudokai_Stc[10] = {}
	tFirstWorldBudokai_Stc[10]["EventType"] = 168
	tFirstWorldBudokai_Stc[10]["DataType"] = 91
	tFirstWorldBudokai_Stc[10]["Limit"] = {}
	tFirstWorldBudokai_Stc[10]["Limit"][1] = 2
	-- 双倍奖励
	tFirstWorldBudokai_Stc[11] = {}
	tFirstWorldBudokai_Stc[11]["EventType"] = 168
	tFirstWorldBudokai_Stc[11]["DataType"] = 95
	tFirstWorldBudokai_Stc[11]["Limit"] = {}
	tFirstWorldBudokai_Stc[11]["Limit"][1] = 0
	tFirstWorldBudokai_Stc[11]["Limit"][2] = 0
	tFirstWorldBudokai_Stc[11]["Limit"][3] = 0
	tFirstWorldBudokai_Stc[11]["Limit"][4] = 0
	tFirstWorldBudokai_Stc[11]["Limit"][5] = 0
	tFirstWorldBudokai_Stc[11]["Limit"][6] = 0
	tFirstWorldBudokai_Stc[11]["Set"] = 1
	tFirstWorldBudokai_Stc[11]["NotClear"] = 1
	-- 每日领取
	tFirstWorldBudokai_Stc[12] = {}
	tFirstWorldBudokai_Stc[12]["EventType"] = 169
	tFirstWorldBudokai_Stc[12]["DataType"] = 21
	tFirstWorldBudokai_Stc[12]["Limit"] = {}
	tFirstWorldBudokai_Stc[12]["Limit"][1] = 1
	-- 星陨石骰子
	tFirstWorldBudokai_Stc[13] = {}
	tFirstWorldBudokai_Stc[13]["EventType"] = 171
	tFirstWorldBudokai_Stc[13]["DataType"] = 44

	
	
local tFirstWorldBudokai_CreateBoss = {}
-- 老服
	-- 双龙城
	tFirstWorldBudokai_CreateBoss[1] = {}
	tFirstWorldBudokai_CreateBoss[1][1002] = {}
	tFirstWorldBudokai_CreateBoss[1][1002]["GlobalId"] = 51814
	tFirstWorldBudokai_CreateBoss[1][1002]["GenId"] = 22943
	tFirstWorldBudokai_CreateBoss[1][1002][6] = {}
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosX"][1] = 444
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosX"][2] = 463
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosX"][3] = 478
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosY"][1] = 511
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosY"][2] = 511
	tFirstWorldBudokai_CreateBoss[1][1002][6]["PosY"][3] = 507
	tFirstWorldBudokai_CreateBoss[1][1002][6]["CD"] = 0
	tFirstWorldBudokai_CreateBoss[1][1002][6]["Time"] = {}
	tFirstWorldBudokai_CreateBoss[1][1002][6]["Time"][1] = "12:30 12:30"
	tFirstWorldBudokai_CreateBoss[1][1002][6]["Time"][2] = "19:30 19:30"
	tFirstWorldBudokai_CreateBoss[1][1002][6]["Num"] = 3
	tFirstWorldBudokai_CreateBoss[1][1002][6]["GlobalPos"] = 5
	-- 神龙岛
	tFirstWorldBudokai_CreateBoss[1][10137] = {}
	tFirstWorldBudokai_CreateBoss[1][10137]["GlobalId"] = 51814
	tFirstWorldBudokai_CreateBoss[1][10137]["GenId"] = 22943
	tFirstWorldBudokai_CreateBoss[1][10137][1] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][1] = 187
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][2] = 235
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][3] = 377
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][4] = 381
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][5] = 159
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][6] = 222
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][7] = 503
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][8] = 247
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][9] = 496
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosX"][10] = 487
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][1] = 264
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][2] = 277
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][3] = 425
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][4] = 497
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][5] = 362
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][6] = 412
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][7] = 429
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][8] = 350
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][9] = 427
	tFirstWorldBudokai_CreateBoss[1][10137][1]["PosY"][10] = 448
	tFirstWorldBudokai_CreateBoss[1][10137][1]["CD"] = 180
	tFirstWorldBudokai_CreateBoss[1][10137][1]["Num"] = 3
	tFirstWorldBudokai_CreateBoss[1][10137][1]["GlobalPos"] = 0
	tFirstWorldBudokai_CreateBoss[1][10137][2] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"][1] = 251
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"][2] = 363
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"][3] = 482
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"][4] = 294
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"][5] = 503
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosX"][6] = 520
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"][1] = 298
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"][2] = 506
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"][3] = 458
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"][4] = 371
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"][5] = 468
	tFirstWorldBudokai_CreateBoss[1][10137][2]["PosY"][6] = 446
	tFirstWorldBudokai_CreateBoss[1][10137][2]["CD"] = 300
	tFirstWorldBudokai_CreateBoss[1][10137][2]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10137][2]["GlobalPos"] = 1
	tFirstWorldBudokai_CreateBoss[1][10137][3] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosX"][1] = 213
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosX"][2] = 388
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosX"][3] = 478
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosY"][1] = 246
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosY"][2] = 494
	tFirstWorldBudokai_CreateBoss[1][10137][3]["PosY"][3] = 425
	tFirstWorldBudokai_CreateBoss[1][10137][3]["CD"] = 480
	tFirstWorldBudokai_CreateBoss[1][10137][3]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10137][3]["GlobalPos"] = 2
	tFirstWorldBudokai_CreateBoss[1][10137][4] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosX"][1] = 596
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosX"][2] = 364
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosX"][3] = 655
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosY"] = {} 
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosY"][1] = 440
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosY"][2] = 600
	tFirstWorldBudokai_CreateBoss[1][10137][4]["PosY"][3] = 710
	tFirstWorldBudokai_CreateBoss[1][10137][4]["CD"] = 1800
	tFirstWorldBudokai_CreateBoss[1][10137][4]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10137][4]["GlobalPos"] = 3
	tFirstWorldBudokai_CreateBoss[1][10137][5] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosX"][1] = 362
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosX"][2] = 559
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosX"][3] = 691
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosY"][1] = 645
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosY"][2] = 376
	tFirstWorldBudokai_CreateBoss[1][10137][5]["PosY"][3] = 709
	tFirstWorldBudokai_CreateBoss[1][10137][5]["CD"] = 3600
	tFirstWorldBudokai_CreateBoss[1][10137][5]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10137][5]["GlobalPos"] = 4
	-- 潜龙渊
	tFirstWorldBudokai_CreateBoss[1][10250] = {}
	tFirstWorldBudokai_CreateBoss[1][10250]["GlobalId"] = 51815
	tFirstWorldBudokai_CreateBoss[1][10250]["GenId"] = 20266
	tFirstWorldBudokai_CreateBoss[1][10250][1] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][1] = 886
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][2] = 914
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][3] = 911
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][4] = 199
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][5] = 263
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][6] = 154
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][7] = 502
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][8] = 458
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][9] = 901
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosX"][10] = 993
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][1] = 1146 
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][2] = 1168 
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][3] = 1185 
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][4] = 473  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][5] = 542  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][6] = 410  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][7] = 189  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][8] = 115  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][9] = 679  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["PosY"][10] = 760  
	tFirstWorldBudokai_CreateBoss[1][10250][1]["CD"] = 180
	tFirstWorldBudokai_CreateBoss[1][10250][1]["Num"] = 5
	tFirstWorldBudokai_CreateBoss[1][10250][1]["GlobalPos"] = 0
	tFirstWorldBudokai_CreateBoss[1][10250][2] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"][1] = 894
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"][2] = 228
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"][3] = 496
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"][4] = 920
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"][5] = 197
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosX"][6] = 891
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"][1] = 1161 
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"][2] = 509  
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"][3] = 190  
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"][4] = 696  
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"][5] = 467  
	tFirstWorldBudokai_CreateBoss[1][10250][2]["PosY"][6] = 1168 
	tFirstWorldBudokai_CreateBoss[1][10250][2]["CD"] = 300
	tFirstWorldBudokai_CreateBoss[1][10250][2]["Num"] = 3
	tFirstWorldBudokai_CreateBoss[1][10250][2]["GlobalPos"] = 1
	tFirstWorldBudokai_CreateBoss[1][10250][3] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosX"][1] = 879
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosX"][2] = 238
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosX"][3] = 484
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosY"][1] = 1139
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosY"][2] = 521 
	tFirstWorldBudokai_CreateBoss[1][10250][3]["PosY"][3] = 198 
	tFirstWorldBudokai_CreateBoss[1][10250][3]["CD"] = 480
	tFirstWorldBudokai_CreateBoss[1][10250][3]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10250][3]["GlobalPos"] = 2
	tFirstWorldBudokai_CreateBoss[1][10250][4] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosX"][1] = 187
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosX"][2] = 884
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosX"][3] = 478
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosY"][1] = 450
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosY"][2] = 719
	tFirstWorldBudokai_CreateBoss[1][10250][4]["PosY"][3] = 181
	tFirstWorldBudokai_CreateBoss[1][10250][4]["CD"] = 1800
	tFirstWorldBudokai_CreateBoss[1][10250][4]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10250][4]["GlobalPos"] = 3
	tFirstWorldBudokai_CreateBoss[1][10250][5] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosX"][1] = 170
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosX"][2] = 499
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosX"][3] = 917
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosY"][1] = 426
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosY"][2] = 197
	tFirstWorldBudokai_CreateBoss[1][10250][5]["PosY"][3] = 695
	tFirstWorldBudokai_CreateBoss[1][10250][5]["CD"] = 3600
	tFirstWorldBudokai_CreateBoss[1][10250][5]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[1][10250][5]["GlobalPos"] = 4
-- 新服
	-- 神龙岛
	tFirstWorldBudokai_CreateBoss[2] = {}
	tFirstWorldBudokai_CreateBoss[2][10137] = {}
	tFirstWorldBudokai_CreateBoss[2][10137]["GlobalId"] = 51814
	tFirstWorldBudokai_CreateBoss[2][10137]["GenId"] = 22943
	tFirstWorldBudokai_CreateBoss[2][10137][1] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][1] = 187
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][2] = 235
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][3] = 377
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][4] = 381
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][5] = 159
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][6] = 222
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][7] = 503
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][8] = 247
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][9] = 496
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosX"][10] = 487
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"] = {} 
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][1] = 264
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][2] = 277
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][3] = 425
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][4] = 497
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][5] = 362
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][6] = 412
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][7] = 429
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][8] = 350
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][9] = 427
	tFirstWorldBudokai_CreateBoss[2][10137][1]["PosY"][10] = 448
	tFirstWorldBudokai_CreateBoss[2][10137][1]["CD"] = 180
	tFirstWorldBudokai_CreateBoss[2][10137][1]["Num"] = 5
	tFirstWorldBudokai_CreateBoss[2][10137][1]["GlobalPos"] = 0
	tFirstWorldBudokai_CreateBoss[2][10137][2] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"][1] = 251
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"][2] = 363
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"][3] = 482
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"][4] = 294
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"][5] = 503
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosX"][6] = 520
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"] = {} 
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"][1] = 298
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"][2] = 506
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"][3] = 458
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"][4] = 371
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"][5] = 468
	tFirstWorldBudokai_CreateBoss[2][10137][2]["PosY"][6] = 446
	tFirstWorldBudokai_CreateBoss[2][10137][2]["CD"] = 300
	tFirstWorldBudokai_CreateBoss[2][10137][2]["Num"] = 3
	tFirstWorldBudokai_CreateBoss[2][10137][2]["GlobalPos"] = 1
	tFirstWorldBudokai_CreateBoss[2][10137][3] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosX"][1] = 213
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosX"][2] = 388
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosX"][3] = 478
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosY"] = {} 
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosY"][1] = 246
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosY"][2] = 494
	tFirstWorldBudokai_CreateBoss[2][10137][3]["PosY"][3] = 425
	tFirstWorldBudokai_CreateBoss[2][10137][3]["CD"] = 480
	tFirstWorldBudokai_CreateBoss[2][10137][3]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[2][10137][3]["GlobalPos"] = 2
	tFirstWorldBudokai_CreateBoss[2][10137][4] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosX"][1] = 216
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosX"][2] = 501
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosX"][3] = 493
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosY"][1] = 286
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosY"][2] = 464
	tFirstWorldBudokai_CreateBoss[2][10137][4]["PosY"][3] = 497
	tFirstWorldBudokai_CreateBoss[2][10137][4]["CD"] = 1800
	tFirstWorldBudokai_CreateBoss[2][10137][4]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[2][10137][4]["GlobalPos"] = 3
	tFirstWorldBudokai_CreateBoss[2][10137][5] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosX"][1] = 509
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosX"][2] = 366
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosX"][3] = 160
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosY"] = {} 
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosY"][1] = 450
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosY"][2] = 490
	tFirstWorldBudokai_CreateBoss[2][10137][5]["PosY"][3] = 360
	tFirstWorldBudokai_CreateBoss[2][10137][5]["CD"] = 3600
	tFirstWorldBudokai_CreateBoss[2][10137][5]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[2][10137][5]["GlobalPos"] = 4
	tFirstWorldBudokai_CreateBoss[2][10137][6] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosX"][1] = 448
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosX"][2] = 461
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosX"][3] = 469
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosY"][1] = 490
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosY"][2] = 490
	tFirstWorldBudokai_CreateBoss[2][10137][6]["PosY"][3] = 484
	tFirstWorldBudokai_CreateBoss[2][10137][6]["CD"] = 0
	tFirstWorldBudokai_CreateBoss[2][10137][6]["Time"] = {}
	tFirstWorldBudokai_CreateBoss[2][10137][6]["Time"][1] = "12:30 12:30"
	tFirstWorldBudokai_CreateBoss[2][10137][6]["Time"][2] = "19:30 19:30"
	tFirstWorldBudokai_CreateBoss[2][10137][6]["Num"] = 3
	tFirstWorldBudokai_CreateBoss[2][10137][6]["GlobalPos"] = 5
	-- 潜龙渊
	tFirstWorldBudokai_CreateBoss[2][10250] = {}
	tFirstWorldBudokai_CreateBoss[2][10250]["GlobalId"] = 51815
	tFirstWorldBudokai_CreateBoss[2][10250]["GenId"] = 20266
	tFirstWorldBudokai_CreateBoss[2][10250][1] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][1] = 886
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][2] = 914
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][3] = 911
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][4] = 199
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][5] = 263
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][6] = 154
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][7] = 502
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][8] = 458
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][9] = 901
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosX"][10] = 993
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][1] = 1146 
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][2] = 1168 
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][3] = 1185 
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][4] = 473  
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][5] = 542  
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][6] = 410  
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][7] = 189  
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][8] = 115  
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][9] = 679  
	tFirstWorldBudokai_CreateBoss[2][10250][1]["PosY"][10] = 760
	tFirstWorldBudokai_CreateBoss[2][10250][1]["CD"] = 180
	tFirstWorldBudokai_CreateBoss[2][10250][1]["Num"] = 5
	tFirstWorldBudokai_CreateBoss[2][10250][1]["GlobalPos"] = 0
	tFirstWorldBudokai_CreateBoss[2][10250][2] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"][1] = 894
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"][2] = 228
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"][3] = 496
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"][4] = 920
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"][5] = 197
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosX"][6] = 891
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"][1] = 1161 
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"][2] = 509  
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"][3] = 190  
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"][4] = 696  
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"][5] = 467  
	tFirstWorldBudokai_CreateBoss[2][10250][2]["PosY"][6] = 1168 
	tFirstWorldBudokai_CreateBoss[2][10250][2]["CD"] = 300
	tFirstWorldBudokai_CreateBoss[2][10250][2]["Num"] = 3
	tFirstWorldBudokai_CreateBoss[2][10250][2]["GlobalPos"] = 1
	tFirstWorldBudokai_CreateBoss[2][10250][3] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosX"][1] = 879
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosX"][2] = 238
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosX"][3] = 484
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosY"][1] = 1139
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosY"][2] = 521 
	tFirstWorldBudokai_CreateBoss[2][10250][3]["PosY"][3] = 198 
	tFirstWorldBudokai_CreateBoss[2][10250][3]["CD"] = 480
	tFirstWorldBudokai_CreateBoss[2][10250][3]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[2][10250][3]["GlobalPos"] = 2
	tFirstWorldBudokai_CreateBoss[2][10250][4] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosX"][1] = 187
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosX"][2] = 884
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosX"][3] = 478
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosY"][1] = 450
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosY"][2] = 719
	tFirstWorldBudokai_CreateBoss[2][10250][4]["PosY"][3] = 181
	tFirstWorldBudokai_CreateBoss[2][10250][4]["CD"] = 1800
	tFirstWorldBudokai_CreateBoss[2][10250][4]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[2][10250][4]["GlobalPos"] = 3
	tFirstWorldBudokai_CreateBoss[2][10250][5] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosX"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosX"][1] = 170
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosX"][2] = 499
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosX"][3] = 917
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosY"] = {}
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosY"][1] = 426
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosY"][2] = 197
	tFirstWorldBudokai_CreateBoss[2][10250][5]["PosY"][3] = 695
	tFirstWorldBudokai_CreateBoss[2][10250][5]["CD"] = 3600
	tFirstWorldBudokai_CreateBoss[2][10250][5]["Num"] = 1
	tFirstWorldBudokai_CreateBoss[2][10250][5]["GlobalPos"] = 4
	
local tFirstWorldBudokai_FreshBox = {}
	tFirstWorldBudokai_FreshBox[1] = {}
	tFirstWorldBudokai_FreshBox[1]["GlobalId"] = 51816
	tFirstWorldBudokai_FreshBox[1]["Received"] = 0
	tFirstWorldBudokai_FreshBox[1]["Time"] = 1
	tFirstWorldBudokai_FreshBox[1]["CD"] = 30
	
	tFirstWorldBudokai_FreshBox[2] = {}
	tFirstWorldBudokai_FreshBox[2]["GlobalId"] = 51816
	tFirstWorldBudokai_FreshBox[2]["Received"] = 3
	tFirstWorldBudokai_FreshBox[2]["Time"] = 4
	tFirstWorldBudokai_FreshBox[2]["CD"] = 30

	
local tFirstWorldBudokai_AwardItem = {}
-- 参与奖
-- 1星参与奖
	tFirstWorldBudokai_AwardItem[3305746] = {}
	tFirstWorldBudokai_AwardItem[3305746]["Star"] = 1
	tFirstWorldBudokai_AwardItem[3305746]["StcIndex"] = 1
	tFirstWorldBudokai_AwardItem[3305746]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3305746][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1]["ItemChanceSum"] = 10000
	-- 3星挑战令 37%
	tFirstWorldBudokai_AwardItem[3305746][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][1]["ItemChance"] = 3700
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardItem"][1]["Id"] = 3305759
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][1]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 4星挑战令 30%
	tFirstWorldBudokai_AwardItem[3305746][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][2]["ItemChance"] = 3000
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardItem"][1]["Id"] = 3305758
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][2]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 5星挑战令 10%
	tFirstWorldBudokai_AwardItem[3305746][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][3]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardItem"][1]["Id"] = 3305757
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][3]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 6星挑战令 3%
	tFirstWorldBudokai_AwardItem[3305746][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][4]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardItem"][1]["Id"] = 3305756
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][4]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 50点气力值 17.3%
	tFirstWorldBudokai_AwardItem[3305746][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][5]["ItemChance"] = 1730
	tFirstWorldBudokai_AwardItem[3305746][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][5]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][5]["RewardStrengthValue"]["Value"] = 50
	tFirstWorldBudokai_AwardItem[3305746][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][5]["LogStep"] = "2"
	-- 黄色符文碎片 0.9%
	tFirstWorldBudokai_AwardItem[3305746][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][6]["ItemChance"] = 90
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 0.9%
	tFirstWorldBudokai_AwardItem[3305746][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][7]["ItemChance"] = 90
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][7]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 0.9%
	tFirstWorldBudokai_AwardItem[3305746][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305746][1][8]["ItemChance"] = 90
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305746][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305746][1][8]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305746][1][8]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 2星参与奖
	tFirstWorldBudokai_AwardItem[3305747] = {}
	tFirstWorldBudokai_AwardItem[3305747]["Star"] = 2
	tFirstWorldBudokai_AwardItem[3305747]["StcIndex"] = 2
	tFirstWorldBudokai_AwardItem[3305747]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3305747][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*3 10%
	tFirstWorldBudokai_AwardItem[3305747][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][1]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardItem"][1]["Id"] = 3009000
	tFirstWorldBudokai_AwardItem[3305747][1][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305747][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][1]["LogStep"] = "2"
	-- 4星挑战令 42%
	tFirstWorldBudokai_AwardItem[3305747][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][2]["ItemChance"] = 4200
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardItem"][1]["Id"] = 3305758
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305747][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305747][1][2]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 5星挑战令 30%
	tFirstWorldBudokai_AwardItem[3305747][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][3]["ItemChance"] = 3000
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardItem"][1]["Id"] = 3305757
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305747][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305747][1][3]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 6星挑战令 8%
	tFirstWorldBudokai_AwardItem[3305747][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][4]["ItemChance"] = 800
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardItem"][1]["Id"] = 3305756
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305747][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305747][1][4]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 100点气力值 6.7%
	tFirstWorldBudokai_AwardItem[3305747][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][5]["ItemChance"] = 670
	tFirstWorldBudokai_AwardItem[3305747][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][5]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][5]["RewardStrengthValue"]["Value"] = 100
	tFirstWorldBudokai_AwardItem[3305747][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][5]["LogStep"] = "2"
	-- 黄色符文碎片 1.1%
	tFirstWorldBudokai_AwardItem[3305747][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][6]["ItemChance"] = 110
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305747][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305747][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 1.1%
	tFirstWorldBudokai_AwardItem[3305747][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][7]["ItemChance"] = 110
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305747][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305747][1][7]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 1.1%
	tFirstWorldBudokai_AwardItem[3305747][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305747][1][8]["ItemChance"] = 110
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305747][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305747][1][8]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305747][1][8]["RecordEmoneyLog"] =  "350	21075	0	0	1	"

-- 3星参与奖
	tFirstWorldBudokai_AwardItem[3305748] = {}
	tFirstWorldBudokai_AwardItem[3305748]["Star"] = 3
	tFirstWorldBudokai_AwardItem[3305748]["StcIndex"] = 3
	tFirstWorldBudokai_AwardItem[3305748]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3305748][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*8 10%
	tFirstWorldBudokai_AwardItem[3305748][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][1]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardItem"][1]["Id"] = 3009000
	tFirstWorldBudokai_AwardItem[3305748][1][1]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305748][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][1]["LogStep"] = "2"
	-- 5星挑战令 65%
	tFirstWorldBudokai_AwardItem[3305748][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][2]["ItemChance"] = 6500
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardItem"][1]["Id"] = 3305757
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305748][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305748][1][2]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 6星挑战令 15%
	tFirstWorldBudokai_AwardItem[3305748][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][3]["ItemChance"] = 1500
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardItem"][1]["Id"] = 3305756
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305748][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305748][1][3]["RecordEmoneyLog"] =  "350	21074	0	0	1	"
	-- 150点气力值 5.8%
	tFirstWorldBudokai_AwardItem[3305748][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][4]["ItemChance"] = 580
	tFirstWorldBudokai_AwardItem[3305748][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][4]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][4]["RewardStrengthValue"]["Value"] = 150
	tFirstWorldBudokai_AwardItem[3305748][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][4]["LogStep"] = "2"
	-- 黄色符文碎片 1.4%
	tFirstWorldBudokai_AwardItem[3305748][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][5]["ItemChance"] = 140
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305748][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305748][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 1.4%
	tFirstWorldBudokai_AwardItem[3305748][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][6]["ItemChance"] = 140
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305748][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305748][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 1.4%
	tFirstWorldBudokai_AwardItem[3305748][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305748][1][7]["ItemChance"] = 140
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305748][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305748][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305748][1][7]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 4星参与奖
	tFirstWorldBudokai_AwardItem[3305749] = {}
	tFirstWorldBudokai_AwardItem[3305749]["Star"] = 4
	tFirstWorldBudokai_AwardItem[3305749]["StcIndex"] = 4
	tFirstWorldBudokai_AwardItem[3305749]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3305749][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*8 50%
	tFirstWorldBudokai_AwardItem[3305749][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305749][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardItem"][1]["Id"] = 3009000
	tFirstWorldBudokai_AwardItem[3305749][1][1]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305749][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305749][1][1]["LogStep"] = "2"
	-- 明亮星陨石 20%
	tFirstWorldBudokai_AwardItem[3305749][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305749][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3305749][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305749][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305749][1][2]["LogStep"] = "2"
	-- 200点气力值 24.3%
	tFirstWorldBudokai_AwardItem[3305749][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305749][1][3]["ItemChance"] = 2430
	tFirstWorldBudokai_AwardItem[3305749][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305749][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305749][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][3]["RewardStrengthValue"]["Value"] = 200
	tFirstWorldBudokai_AwardItem[3305749][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305749][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3305749][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305749][1][4]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305749][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305749][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305749][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3305749][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305749][1][5]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305749][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305749][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305749][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3305749][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305749][1][6]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305749][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305749][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305749][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 5星参与奖
	tFirstWorldBudokai_AwardItem[3305750] = {}
	tFirstWorldBudokai_AwardItem[3305750]["Star"] = 5
	tFirstWorldBudokai_AwardItem[3305750]["StcIndex"] = 5
	tFirstWorldBudokai_AwardItem[3305750]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3305750][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石 50%
	tFirstWorldBudokai_AwardItem[3305750][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305750][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3305750][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305750][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305750][1][1]["LogStep"] = "2"
	-- 明亮星陨石*2 20%
	tFirstWorldBudokai_AwardItem[3305750][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305750][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3305750][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305750][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305750][1][2]["LogStep"] = "2"
	-- 300点气力值 21.6%
	tFirstWorldBudokai_AwardItem[3305750][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305750][1][3]["ItemChance"] = 2160
	tFirstWorldBudokai_AwardItem[3305750][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305750][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305750][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][3]["RewardStrengthValue"]["Value"] = 300
	tFirstWorldBudokai_AwardItem[3305750][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305750][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3305750][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305750][1][4]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305750][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305750][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305750][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3305750][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305750][1][5]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305750][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305750][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305750][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3305750][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305750][1][6]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305750][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305750][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305750][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 6星参与奖
	tFirstWorldBudokai_AwardItem[3305751] = {}
	tFirstWorldBudokai_AwardItem[3305751]["Star"] = 6
	tFirstWorldBudokai_AwardItem[3305751]["StcIndex"] = 6
	tFirstWorldBudokai_AwardItem[3305751]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3305751][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石 50%
	tFirstWorldBudokai_AwardItem[3305751][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305751][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3305751][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305751][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][1]["LogStep"] = "2"
	-- 明亮星陨石*2 23.2%
	tFirstWorldBudokai_AwardItem[3305751][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305751][1][2]["ItemChance"] = 2320
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3305751][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305751][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][2]["LogStep"] = "2"
	-- 明亮星陨石*3 10%
	tFirstWorldBudokai_AwardItem[3305751][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305751][1][3]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3305751][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFirstWorldBudokai_AwardItem[3305751][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3305751][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305751][1][4]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305751][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305751][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3305751][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305751][1][5]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305751][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305751][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3305751][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305751][1][6]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305751][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305751][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 500点气力值 100%
	tFirstWorldBudokai_AwardItem[3305751][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][7]["RandomItemChanceType"] = 1
	tFirstWorldBudokai_AwardItem[3305751][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305751][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305751][1][7]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3305751][1][7]["RewardStrengthValue"]["Value"] = 500
	tFirstWorldBudokai_AwardItem[3305751][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305751][1][7]["LogStep"] = "2"
	
-- 4星参与奖（1.1倍）
	tFirstWorldBudokai_AwardItem[3306067] = {}
	tFirstWorldBudokai_AwardItem[3306067]["Star"] = 4
	tFirstWorldBudokai_AwardItem[3306067]["StcIndex"] = 4
	tFirstWorldBudokai_AwardItem[3306067]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3306067][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*8 50%
	tFirstWorldBudokai_AwardItem[3306067][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306067][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardItem"][1]["Id"] = 3009000
	tFirstWorldBudokai_AwardItem[3306067][1][1]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306067][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306067][1][1]["LogStep"] = "2"
	-- 明亮星陨石 20%
	tFirstWorldBudokai_AwardItem[3306067][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306067][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306067][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306067][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306067][1][2]["LogStep"] = "2"
	-- 220点气力值 24.3%
	tFirstWorldBudokai_AwardItem[3306067][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306067][1][3]["ItemChance"] = 2430
	tFirstWorldBudokai_AwardItem[3306067][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306067][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306067][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][3]["RewardStrengthValue"]["Value"] = 220
	tFirstWorldBudokai_AwardItem[3306067][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306067][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3306067][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306067][1][4]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306067][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306067][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306067][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3306067][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306067][1][5]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306067][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306067][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306067][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3306067][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306067][1][6]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306067][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306067][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306067][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 4星参与奖（1.5倍）
	tFirstWorldBudokai_AwardItem[3306068] = {}
	tFirstWorldBudokai_AwardItem[3306068]["Star"] = 6
	tFirstWorldBudokai_AwardItem[3306068]["StcIndex"] = 4
	tFirstWorldBudokai_AwardItem[3306068]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3306068][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*12 50%
	tFirstWorldBudokai_AwardItem[3306068][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306068][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardItem"][1]["Id"] = 3009000
	tFirstWorldBudokai_AwardItem[3306068][1][1]["RewardItem"][1]["Attr"] = "0 12 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306068][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306068][1][1]["LogStep"] = "2"
	-- 明亮星陨石 20%
	tFirstWorldBudokai_AwardItem[3306068][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306068][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306068][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306068][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306068][1][2]["LogStep"] = "2"
	-- 300点气力值 24.3%
	tFirstWorldBudokai_AwardItem[3306068][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306068][1][3]["ItemChance"] = 2430
	tFirstWorldBudokai_AwardItem[3306068][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306068][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306068][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][3]["RewardStrengthValue"]["Value"] = 300
	tFirstWorldBudokai_AwardItem[3306068][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306068][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3306068][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306068][1][4]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306068][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306068][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306068][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3306068][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306068][1][5]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306068][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306068][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306068][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 1.9%
	tFirstWorldBudokai_AwardItem[3306068][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306068][1][6]["ItemChance"] = 190
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306068][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306068][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306068][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 5星参与奖（1.1倍）
	tFirstWorldBudokai_AwardItem[3306069] = {}
	tFirstWorldBudokai_AwardItem[3306069]["Star"] = 5
	tFirstWorldBudokai_AwardItem[3306069]["StcIndex"] = 5
	tFirstWorldBudokai_AwardItem[3306069]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3306069][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石 50%
	tFirstWorldBudokai_AwardItem[3306069][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306069][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306069][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306069][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306069][1][1]["LogStep"] = "2"
	-- 明亮星陨石*2 20%
	tFirstWorldBudokai_AwardItem[3306069][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306069][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306069][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306069][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306069][1][2]["LogStep"] = "2"
	-- 330点气力值 21.6%
	tFirstWorldBudokai_AwardItem[3306069][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306069][1][3]["ItemChance"] = 2160
	tFirstWorldBudokai_AwardItem[3306069][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306069][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306069][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][3]["RewardStrengthValue"]["Value"] = 330
	tFirstWorldBudokai_AwardItem[3306069][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306069][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3306069][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306069][1][4]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306069][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306069][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306069][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3306069][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306069][1][5]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306069][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306069][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306069][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3306069][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306069][1][6]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306069][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306069][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306069][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 5星参与奖（1.5倍）
	tFirstWorldBudokai_AwardItem[3306058] = {}
	tFirstWorldBudokai_AwardItem[3306058]["Star"] = 7
	tFirstWorldBudokai_AwardItem[3306058]["StcIndex"] = 5
	tFirstWorldBudokai_AwardItem[3306058]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3306058][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石 50%
	tFirstWorldBudokai_AwardItem[3306058][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306058][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306058][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306058][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306058][1][1]["LogStep"] = "2"
	-- 明亮星陨石*3 20%
	tFirstWorldBudokai_AwardItem[3306058][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306058][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306058][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306058][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306058][1][2]["LogStep"] = "2"
	-- 450点气力值 21.6%
	tFirstWorldBudokai_AwardItem[3306058][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306058][1][3]["ItemChance"] = 2160
	tFirstWorldBudokai_AwardItem[3306058][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306058][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306058][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][3]["RewardStrengthValue"]["Value"] = 450
	tFirstWorldBudokai_AwardItem[3306058][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306058][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3306058][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306058][1][4]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306058][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306058][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306058][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3306058][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306058][1][5]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306058][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306058][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306058][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 2.8%
	tFirstWorldBudokai_AwardItem[3306058][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306058][1][6]["ItemChance"] = 280
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306058][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306058][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306058][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	
-- 6星参与奖（1.1倍）
	tFirstWorldBudokai_AwardItem[3306059] = {}
	tFirstWorldBudokai_AwardItem[3306059]["Star"] = 6
	tFirstWorldBudokai_AwardItem[3306059]["StcIndex"] = 6
	tFirstWorldBudokai_AwardItem[3306059]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3306059][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石 50%
	tFirstWorldBudokai_AwardItem[3306059][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306059][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306059][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306059][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][1]["LogStep"] = "2"
	-- 明亮星陨石*2 23.2%
	tFirstWorldBudokai_AwardItem[3306059][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306059][1][2]["ItemChance"] = 2320
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306059][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306059][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][2]["LogStep"] = "2"
	-- 明亮星陨石*3 10%
	tFirstWorldBudokai_AwardItem[3306059][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306059][1][3]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306059][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306059][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3306059][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306059][1][4]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306059][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306059][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3306059][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306059][1][5]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306059][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306059][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3306059][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306059][1][6]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306059][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306059][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 550点气力值 100%
	tFirstWorldBudokai_AwardItem[3306059][1][7] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][7]["RandomItemChanceType"] = 1
	tFirstWorldBudokai_AwardItem[3306059][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306059][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306059][1][7]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3306059][1][7]["RewardStrengthValue"]["Value"] = 550
	tFirstWorldBudokai_AwardItem[3306059][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306059][1][7]["LogStep"] = "2"
	
-- 6星参与奖（1.5倍）
	tFirstWorldBudokai_AwardItem[3306060] = {}
	tFirstWorldBudokai_AwardItem[3306060]["Star"] = 9
	tFirstWorldBudokai_AwardItem[3306060]["StcIndex"] = 6
	tFirstWorldBudokai_AwardItem[3306060]["DailyLimit"] = 1
	tFirstWorldBudokai_AwardItem[3306060][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石 50%
	tFirstWorldBudokai_AwardItem[3306060][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306060][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306060][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306060][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][1]["LogStep"] = "2"
	-- 明亮星陨石*3 23.2%
	tFirstWorldBudokai_AwardItem[3306060][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306060][1][2]["ItemChance"] = 2320
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306060][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306060][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][2]["LogStep"] = "2"
	-- 明亮星陨石*4 10%
	tFirstWorldBudokai_AwardItem[3306060][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306060][1][3]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306060][1][3]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306060][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][3]["LogStep"] = "2"
	-- 黄色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3306060][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306060][1][4]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306060][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306060][1][4]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 红色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3306060][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306060][1][5]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306060][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306060][1][5]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 蓝色符文碎片 5.6%
	tFirstWorldBudokai_AwardItem[3306060][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306060][1][6]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306060][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3306060][1][6]["RecordEmoneyLog"] =  "350	21075	0	0	1	"
	-- 750点气力值 100%
	tFirstWorldBudokai_AwardItem[3306060][1][7] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][7]["RandomItemChanceType"] = 1
	tFirstWorldBudokai_AwardItem[3306060][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306060][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306060][1][7]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3306060][1][7]["RewardStrengthValue"]["Value"] = 750
	tFirstWorldBudokai_AwardItem[3306060][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306060][1][7]["LogStep"] = "2"

-- 挑战令打包
	-- 6星
	tFirstWorldBudokai_AwardItem[3305756] = {}
	tFirstWorldBudokai_AwardItem[3305756][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1]["ItemChanceSum"] = 80000
	tFirstWorldBudokai_AwardItem[3305756][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][1]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardItem"][1]["Id"] = 3305612
	tFirstWorldBudokai_AwardItem[3305756][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][2]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardItem"][1]["Id"] = 3305613
	tFirstWorldBudokai_AwardItem[3305756][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][3]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardItem"][1]["Id"] = 3305614
	tFirstWorldBudokai_AwardItem[3305756][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][4]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardItem"][1]["Id"] = 3305615
	tFirstWorldBudokai_AwardItem[3305756][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][5]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardItem"][1]["Id"] = 3305616
	tFirstWorldBudokai_AwardItem[3305756][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][6]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardItem"][1]["Id"] = 3305617
	tFirstWorldBudokai_AwardItem[3305756][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][7]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardItem"][1]["Id"] = 3305618
	tFirstWorldBudokai_AwardItem[3305756][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305756][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305756][1][8]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardItem"][1]["Id"] = 3305619
	tFirstWorldBudokai_AwardItem[3305756][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305756][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305756][1][8]["LogStep"] = "2"
	-- 5星
	tFirstWorldBudokai_AwardItem[3305757] = {}
	tFirstWorldBudokai_AwardItem[3305757][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1]["ItemChanceSum"] = 80000
	tFirstWorldBudokai_AwardItem[3305757][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][1]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardItem"][1]["Id"] = 3305604
	tFirstWorldBudokai_AwardItem[3305757][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][2]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardItem"][1]["Id"] = 3305605
	tFirstWorldBudokai_AwardItem[3305757][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][3]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardItem"][1]["Id"] = 3305606
	tFirstWorldBudokai_AwardItem[3305757][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][4]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardItem"][1]["Id"] = 3305607
	tFirstWorldBudokai_AwardItem[3305757][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][5]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardItem"][1]["Id"] = 3305608
	tFirstWorldBudokai_AwardItem[3305757][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][6]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardItem"][1]["Id"] = 3305609
	tFirstWorldBudokai_AwardItem[3305757][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][7]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardItem"][1]["Id"] = 3305610
	tFirstWorldBudokai_AwardItem[3305757][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305757][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305757][1][8]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardItem"][1]["Id"] = 3305611
	tFirstWorldBudokai_AwardItem[3305757][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305757][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305757][1][8]["LogStep"] = "2"
	-- 4星
	tFirstWorldBudokai_AwardItem[3305758] = {}
	tFirstWorldBudokai_AwardItem[3305758][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1]["ItemChanceSum"] = 80000
	tFirstWorldBudokai_AwardItem[3305758][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][1]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardItem"][1]["Id"] = 3305596
	tFirstWorldBudokai_AwardItem[3305758][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][2]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardItem"][1]["Id"] = 3305597
	tFirstWorldBudokai_AwardItem[3305758][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][3]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardItem"][1]["Id"] = 3305598
	tFirstWorldBudokai_AwardItem[3305758][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][4]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardItem"][1]["Id"] = 3305599
	tFirstWorldBudokai_AwardItem[3305758][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][5]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardItem"][1]["Id"] = 3305600
	tFirstWorldBudokai_AwardItem[3305758][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][6]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardItem"][1]["Id"] = 3305601
	tFirstWorldBudokai_AwardItem[3305758][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][7]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardItem"][1]["Id"] = 3305602
	tFirstWorldBudokai_AwardItem[3305758][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305758][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305758][1][8]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardItem"][1]["Id"] = 3305603
	tFirstWorldBudokai_AwardItem[3305758][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305758][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305758][1][8]["LogStep"] = "2"
	-- 3星
	tFirstWorldBudokai_AwardItem[3305759] = {}
	tFirstWorldBudokai_AwardItem[3305759][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1]["ItemChanceSum"] = 80000
	tFirstWorldBudokai_AwardItem[3305759][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][1]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardItem"][1]["Id"] = 3305588
	tFirstWorldBudokai_AwardItem[3305759][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][2]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardItem"][1]["Id"] = 3305589
	tFirstWorldBudokai_AwardItem[3305759][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][3]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardItem"][1]["Id"] = 3305590
	tFirstWorldBudokai_AwardItem[3305759][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][4]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardItem"][1]["Id"] = 3305591
	tFirstWorldBudokai_AwardItem[3305759][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][5]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardItem"][1]["Id"] = 3305592
	tFirstWorldBudokai_AwardItem[3305759][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][6]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardItem"][1]["Id"] = 3305593
	tFirstWorldBudokai_AwardItem[3305759][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][7]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardItem"][1]["Id"] = 3305594
	tFirstWorldBudokai_AwardItem[3305759][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305759][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305759][1][8]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardItem"][1]["Id"] = 3305595
	tFirstWorldBudokai_AwardItem[3305759][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305759][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305759][1][8]["LogStep"] = "2"
	
	-- 2星
	tFirstWorldBudokai_AwardItem[3305760] = {}
	tFirstWorldBudokai_AwardItem[3305760][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1]["ItemChanceSum"] = 80000
	tFirstWorldBudokai_AwardItem[3305760][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][1]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardItem"][1]["Id"] = 3305580
	tFirstWorldBudokai_AwardItem[3305760][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][2]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardItem"][1]["Id"] = 3305581
	tFirstWorldBudokai_AwardItem[3305760][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][3]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardItem"][1]["Id"] = 3305582
	tFirstWorldBudokai_AwardItem[3305760][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][4]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardItem"][1]["Id"] = 3305583
	tFirstWorldBudokai_AwardItem[3305760][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][5]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardItem"][1]["Id"] = 3305584
	tFirstWorldBudokai_AwardItem[3305760][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][6]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardItem"][1]["Id"] = 3305585
	tFirstWorldBudokai_AwardItem[3305760][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][7]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardItem"][1]["Id"] = 3305586
	tFirstWorldBudokai_AwardItem[3305760][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305760][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305760][1][8]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardItem"][1]["Id"] = 3305587
	tFirstWorldBudokai_AwardItem[3305760][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305760][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305760][1][8]["LogStep"] = "2"
	
	-- 1星
	tFirstWorldBudokai_AwardItem[3305761] = {}
	tFirstWorldBudokai_AwardItem[3305761][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1]["ItemChanceSum"] = 80000
	tFirstWorldBudokai_AwardItem[3305761][1][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][1]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardItem"][1]["Id"] = 3305572
	tFirstWorldBudokai_AwardItem[3305761][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][1]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][2] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][2]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardItem"][1]["Id"] = 3305573
	tFirstWorldBudokai_AwardItem[3305761][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][2]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][3] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][3]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardItem"][1]["Id"] = 3305574
	tFirstWorldBudokai_AwardItem[3305761][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][3]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][4] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][4]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardItem"][1]["Id"] = 3305575
	tFirstWorldBudokai_AwardItem[3305761][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][4]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][5] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][5]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardItem"][1]["Id"] = 3305576
	tFirstWorldBudokai_AwardItem[3305761][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][5]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][6] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][6]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardItem"][1]["Id"] = 3305577
	tFirstWorldBudokai_AwardItem[3305761][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][6]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][7] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][7]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardItem"][1]["Id"] = 3305578
	tFirstWorldBudokai_AwardItem[3305761][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][7]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305761][1][8] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3305761][1][8]["ItemChance"] = 10000
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardItem"][1]["Id"] = 3305579
	tFirstWorldBudokai_AwardItem[3305761][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3305761][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3305761][1][8]["LogStep"] = "2"
	
	-- 明亮星陨石礼包
	tFirstWorldBudokai_AwardItem[3306165] = {}
	tFirstWorldBudokai_AwardItem[3306165]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306165]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306165]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306165]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306165]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306165]["DeleteItem"][1]["Id"] = 3306165
	tFirstWorldBudokai_AwardItem[3306165]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306165]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306165]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem[3306165]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3306165]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306165]["LogStep"] = "2"
	
-- 技能外套体验包（3天）
	tFirstWorldBudokai_AwardItem[3305623] = {}
	--地狱烈焰【极品】技能外套
	tFirstWorldBudokai_AwardItem[3305623][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][1]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][1]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][1]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][1]["RewardItem"][1]["Id"] = 3303078
	tFirstWorldBudokai_AwardItem[3305623][1]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][1]["Log"] = "0,0,3305623,1,12000892,2,3303078,1"
	--万箭齐发【极品】技能外套
	tFirstWorldBudokai_AwardItem[3305623][2] = {}
	tFirstWorldBudokai_AwardItem[3305623][2]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][2]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][2]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][2]["RewardItem"][1]["Id"] = 3303079
	tFirstWorldBudokai_AwardItem[3305623][2]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][2]["Log"] = "0,0,3305623,1,12000892,2,3303079,1"
	--紫刃斩天【极品】技能外套
	tFirstWorldBudokai_AwardItem[3305623][3] = {}
	tFirstWorldBudokai_AwardItem[3305623][3]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][3]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][3]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][3]["RewardItem"][1]["Id"] = 3303081
	tFirstWorldBudokai_AwardItem[3305623][3]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][3]["Log"] = "0,0,3305623,1,12000892,2,3303081,1"
	--天火流星落【极品】技能外套
	tFirstWorldBudokai_AwardItem[3305623][4] = {}
	tFirstWorldBudokai_AwardItem[3305623][4]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][4]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][4]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][4]["RewardItem"][1]["Id"] = 3303080
	tFirstWorldBudokai_AwardItem[3305623][4]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][4]["Log"] = "0,0,3305623,1,12000892,2,3303080,1"
	--炽日天剑技能外套
	tFirstWorldBudokai_AwardItem[3305623][5] = {}
	tFirstWorldBudokai_AwardItem[3305623][5]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][5]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][5]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][5]["RewardItem"][1]["Id"] = 3303082
	tFirstWorldBudokai_AwardItem[3305623][5]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][5]["Log"] = "0,0,3305623,1,12000892,2,3303082,1"
	--龙卷狂沙技能外套
	tFirstWorldBudokai_AwardItem[3305623][6] = {}
	tFirstWorldBudokai_AwardItem[3305623][6]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][6]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][6]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][6]["RewardItem"][1]["Id"] = 3303071
	tFirstWorldBudokai_AwardItem[3305623][6]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][6]["Log"] = "0,0,3305623,1,12000892,2,3303071,1"
	--致命电流技能外套
	tFirstWorldBudokai_AwardItem[3305623][7] = {}
	tFirstWorldBudokai_AwardItem[3305623][7]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][7]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][7]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][7]["RewardItem"][1]["Id"] = 3303072
	tFirstWorldBudokai_AwardItem[3305623][7]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][7]["Log"] = "0,0,3305623,1,12000892,2,3303072,1"
	--无影黑旋风技能外套
	tFirstWorldBudokai_AwardItem[3305623][8] = {}
	tFirstWorldBudokai_AwardItem[3305623][8]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][8]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][8]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][8]["RewardItem"][1]["Id"] = 3303083
	tFirstWorldBudokai_AwardItem[3305623][8]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][8]["Log"] = "0,0,3305623,1,12000892,2,3303083,1"
	--幸运四叶草技能外套
	tFirstWorldBudokai_AwardItem[3305623][9] = {}
	tFirstWorldBudokai_AwardItem[3305623][9]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][9]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][9]["DeleteItem"][1]["Id"] = 3305623
	tFirstWorldBudokai_AwardItem[3305623][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3305623][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305623][9]["RewardItem"][1]["Id"] = 3303693
	tFirstWorldBudokai_AwardItem[3305623][9]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tFirstWorldBudokai_AwardItem[3305623][9]["Log"] = "0,0,3305623,1,12000892,2,3303693,1"
	
-- 神纹碎片(赠)礼包
	tFirstWorldBudokai_AwardItem[3306362] = {}
	tFirstWorldBudokai_AwardItem[3306362]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3306362][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1]["ItemChanceSum"] = 10000
	-- 黄色符文碎片			33.4%
	tFirstWorldBudokai_AwardItem[3306362][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306362][1][1]["ItemChance"] = 3340
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardItem"][1]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem[3306362][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306362][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306362][1][1]["LogStep"] = "2"
	-- 红色符文碎片			33%
	tFirstWorldBudokai_AwardItem[3306362][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306362][1][2]["ItemChance"] = 3300
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardItem"][1]["Id"] = 3306369
	tFirstWorldBudokai_AwardItem[3306362][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306362][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306362][1][2]["LogStep"] = "2"
	-- 蓝色符文碎片			33%
	tFirstWorldBudokai_AwardItem[3306362][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306362][1][3]["ItemChance"] = 3300
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardItem"][1]["Id"] = 3306371
	tFirstWorldBudokai_AwardItem[3306362][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306362][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306362][1][3]["LogStep"] = "2"
	-- 随机黄色符文		0.2%
	tFirstWorldBudokai_AwardItem[3306362][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306362][1][4]["ItemChance"] = 20
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardItem"][1]["Id"] = 3306510
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306362][1][4]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306362][1]
	tFirstWorldBudokai_AwardItem[3306362][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306362][1][4]["LogStep"] = "2"	
	-- 随机红色符文		0.2%
	tFirstWorldBudokai_AwardItem[3306362][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306362][1][5]["ItemChance"] = 20
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardItem"][1]["Id"] = 3306509
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306362][1][5]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306362][2]
	tFirstWorldBudokai_AwardItem[3306362][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306362][1][5]["LogStep"] = "2"	
	-- 随机蓝色符文		0.2%
	tFirstWorldBudokai_AwardItem[3306362][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306362][1][6]["ItemChance"] = 20
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardItem"][1]["Id"] = 3306511
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306362][1][6]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306362][3]
	tFirstWorldBudokai_AwardItem[3306362][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306362][1][6]["LogStep"] = "2"	

	
-- 黄色神纹(赠)随机包
	tFirstWorldBudokai_AwardItem[3306363] = {}
	tFirstWorldBudokai_AwardItem[3306363]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3306363][1] = {}
	tFirstWorldBudokai_AwardItem[3306363][1]["ItemChanceSum"] = 10000
	-- 黄色精粹			49%
	tFirstWorldBudokai_AwardItem[3306363][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306363][1][1]["ItemChance"] = 4900
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3306363][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306363][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306363][1][1]["LogStep"] = "2"
	-- 黄色精粹 * 10	5%
	tFirstWorldBudokai_AwardItem[3306363][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306363][1][2]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3306363][1][2]["RewardItem"][1]["Attr"] = "0 10 3"
	tFirstWorldBudokai_AwardItem[3306363][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306363][1][2]["LogStep"] = "2"
	-- 黄色符文碎片		45.9%
	tFirstWorldBudokai_AwardItem[3306363][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306363][1][3]["ItemChance"] = 4590
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardItem"][1]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem[3306363][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306363][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306363][1][3]["LogStep"] = "2"
	-- 随机黄色符文		0.1%
	tFirstWorldBudokai_AwardItem[3306363][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306363][1][4]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardItem"][1]["Id"] = 3306510
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306363][1][4]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306363][1]
	tFirstWorldBudokai_AwardItem[3306363][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306363][1][4]["LogStep"] = "2"
	
-- 古神灵境黄色神纹包  3307098
	tFirstWorldBudokai_AwardItem[3307098] = {}
	tFirstWorldBudokai_AwardItem[3307098]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3307098][1] = {}
	tFirstWorldBudokai_AwardItem[3307098][1]["ItemChanceSum"] = 10000
	-- 黄色精粹			49%
	tFirstWorldBudokai_AwardItem[3307098][1][1] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3307098][1][1]["ItemChance"] = 4900
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3307098][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3307098][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3307098][1][1]["LogStep"] = "2"
	-- 黄色精粹 * 10	5%
	tFirstWorldBudokai_AwardItem[3307098][1][2] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3307098][1][2]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3307098][1][2]["RewardItem"][1]["Attr"] = "0 10"
	tFirstWorldBudokai_AwardItem[3307098][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3307098][1][2]["LogStep"] = "2"
	-- 黄色符文碎片		45.9%
	tFirstWorldBudokai_AwardItem[3307098][1][3] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3307098][1][3]["ItemChance"] = 4590
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3307098][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3307098][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3307098][1][3]["LogStep"] = "2"
	-- 随机黄色符文		0.1%
	tFirstWorldBudokai_AwardItem[3307098][1][4] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3307098][1][4]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardItem"][1]["Id"] = 3306507
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3307098][1][4]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3307098][1]
	tFirstWorldBudokai_AwardItem[3307098][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3307098][1][4]["LogStep"] = "2"
	
-- 可交易符文随机包
	tFirstWorldBudokai_AwardItem[3306364] = {}
	tFirstWorldBudokai_AwardItem[3306364]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3306364][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1]["ItemChanceSum"] = 10000
	-- 黄色精粹			18%
	tFirstWorldBudokai_AwardItem[3306364][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][1]["ItemChance"] = 1800
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3306364][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][1]["LogStep"] = "2"
	-- 黄色精粹（非赠）3%
	tFirstWorldBudokai_AwardItem[3306364][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][2]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3306364][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][2]["LogStep"] = "2"
	-- 黄色精粹 * 5		3%
	tFirstWorldBudokai_AwardItem[3306364][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][3]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardItem"][1]["Id"] = 4050001
	tFirstWorldBudokai_AwardItem[3306364][1][3]["RewardItem"][1]["Attr"] = "0 5 3"
	tFirstWorldBudokai_AwardItem[3306364][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][3]["LogStep"] = "2"
	-- 蓝色精粹			18%
	tFirstWorldBudokai_AwardItem[3306364][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][4]["ItemChance"] = 1800
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardItem"][1]["Id"] = 4040001
	tFirstWorldBudokai_AwardItem[3306364][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][4]["LogStep"] = "2"
	-- 蓝色精粹（非赠）3%
	tFirstWorldBudokai_AwardItem[3306364][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][5]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardItem"][1]["Id"] = 4040001
	tFirstWorldBudokai_AwardItem[3306364][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][5]["LogStep"] = "2"
	-- 蓝色精粹 * 5		3%
	tFirstWorldBudokai_AwardItem[3306364][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][6]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardItem"][1]["Id"] = 4040001
	tFirstWorldBudokai_AwardItem[3306364][1][6]["RewardItem"][1]["Attr"] = "0 5 3"
	tFirstWorldBudokai_AwardItem[3306364][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][6]["LogStep"] = "2"
	-- 黄色符文碎片		11%
	tFirstWorldBudokai_AwardItem[3306364][1][9] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][9]["ItemChance"] = 1100
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardItem"][1]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem[3306364][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][9]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][9]["LogStep"] = "2"
	-- 蓝色符文碎片		12%
	tFirstWorldBudokai_AwardItem[3306364][1][10] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][10]["ItemChance"] = 1200
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardItem"][1]["Id"] = 3306371
	tFirstWorldBudokai_AwardItem[3306364][1][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][10]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][10]["LogStep"] = "2"
	-- 黄色符文碎片（非赠）	3%
	tFirstWorldBudokai_AwardItem[3306364][1][11] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][11]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_AwardItem[3306364][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][11]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][11]["LogStep"] = "2"
	-- 蓝色符文碎片（非赠）	3.8%
	tFirstWorldBudokai_AwardItem[3306364][1][12] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][12]["ItemChance"] = 380
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_AwardItem[3306364][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][12]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][12]["LogStep"] = "2"
	-- 红色符文碎片		12%
	tFirstWorldBudokai_AwardItem[3306364][1][13] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][13]["ItemChance"] = 1200
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardItem"][1]["Id"] = 3306369
	tFirstWorldBudokai_AwardItem[3306364][1][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][13]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][13]["LogStep"] = "2"
	-- 红色符文碎片（非赠）	3.8%
	tFirstWorldBudokai_AwardItem[3306364][1][14] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][14]["ItemChance"] = 380
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_AwardItem[3306364][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][14]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][14]["LogStep"] = "2"
	-- 蓝色符文碎片	 * 3	3%
	tFirstWorldBudokai_AwardItem[3306364][1][15] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][15]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardItem"][1]["Id"] = 3306371
	tFirstWorldBudokai_AwardItem[3306364][1][15]["RewardItem"][1]["Attr"] = "0 3 3"
	tFirstWorldBudokai_AwardItem[3306364][1][15]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][15]["LogStep"] = "2"
	-- 红色符文碎片	 * 3	3%
	tFirstWorldBudokai_AwardItem[3306364][1][16] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][16]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardItem"][1]["Id"] = 3306369
	tFirstWorldBudokai_AwardItem[3306364][1][16]["RewardItem"][1]["Attr"] = "0 3 3"
	tFirstWorldBudokai_AwardItem[3306364][1][16]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][16]["LogStep"] = "2"
	-- 随机职业蓝色符文	0.1%
	tFirstWorldBudokai_AwardItem[3306364][1][17] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][17]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardItem"][1]["Id"] = 3306511
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][17]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306364][1]
	tFirstWorldBudokai_AwardItem[3306364][1][17]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][17]["LogStep"] = "2"
	-- 随机职业蓝色符文（非赠）	0.1%
	tFirstWorldBudokai_AwardItem[3306364][1][18] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][18]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardItem"][1]["Id"] = 3306508
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][18]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306364][2]
	tFirstWorldBudokai_AwardItem[3306364][1][18]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][18]["LogStep"] = "2"
	-- 随机职业红色符文	0.1%
	tFirstWorldBudokai_AwardItem[3306364][1][19] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][19]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardItem"][1]["Id"] = 3306509
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306364][1][19]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306364][3]
	tFirstWorldBudokai_AwardItem[3306364][1][19]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][19]["LogStep"] = "2"
	-- 随机职业红色符文（非赠）	0.1%
	tFirstWorldBudokai_AwardItem[3306364][1][20] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306364][1][20]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardItem"][1]["Id"] = 3306506
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306364][1][20]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3306364][4]
	tFirstWorldBudokai_AwardItem[3306364][1][20]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306364][1][20]["LogStep"] = "2"
	
-- 黄色神纹(赠)可选包
	tFirstWorldBudokai_AwardItem[3306365] = {}
	-- 效果-PK值减少
	-- tFirstWorldBudokai_AwardItem[3306365][1] = {}
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardEffect"] = {}
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardEffect"]["SzObj"] = "self"
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardEffect"]["Effect"] = "eidolon"
	-- tFirstWorldBudokai_AwardItem[3306365][1]["DeleteItem"] = {}
	-- tFirstWorldBudokai_AwardItem[3306365][1]["DeleteItem"][1] = {}
	-- tFirstWorldBudokai_AwardItem[3306365][1]["DeleteItem"][1]["Id"] = 3306365
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardItem"] = {}
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardItem"][1]["Id"] = 4030001
	-- tFirstWorldBudokai_AwardItem[3306365][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tFirstWorldBudokai_AwardItem[3306365][1]["LogId"] = 12000892
	-- 效果-玄元伤害封顶
	tFirstWorldBudokai_AwardItem[3306365][2] = {}
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][2]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][2]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][2]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardItem"][1]["Id"] = 4030101
	tFirstWorldBudokai_AwardItem[3306365][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][2]["LogId"] = 12000892
	-- 效果-吸星大法等级提高
	tFirstWorldBudokai_AwardItem[3306365][3] = {}
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][3]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][3]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][3]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardItem"][1]["Id"] = 4030201
	tFirstWorldBudokai_AwardItem[3306365][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][3]["LogId"] = 12000892
	-- 效果-化血神功等级提高
	tFirstWorldBudokai_AwardItem[3306365][4] = {}
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][4]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][4]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][4]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardItem"][1]["Id"] = 4030301
	tFirstWorldBudokai_AwardItem[3306365][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][4]["LogId"] = 12000892
	-- 效果-生命魔法自动恢复
	tFirstWorldBudokai_AwardItem[3306365][5] = {}
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][5]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][5]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][5]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardItem"][1]["Id"] = 4030401
	tFirstWorldBudokai_AwardItem[3306365][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][5]["LogId"] = 12000892
	-- 效果-不良状态免疫
	tFirstWorldBudokai_AwardItem[3306365][6] = {}
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][6]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][6]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][6]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardItem"][1]["Id"] = 4030501
	tFirstWorldBudokai_AwardItem[3306365][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][6]["LogId"] = 12000892
	-- 效果-XP状态时间减少
	tFirstWorldBudokai_AwardItem[3306365][7] = {}
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][7]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][7]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][7]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardItem"][1]["Id"] = 4030601
	tFirstWorldBudokai_AwardItem[3306365][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][7]["LogId"] = 12000892
	-- 效果-背包物品爆率加成
	tFirstWorldBudokai_AwardItem[3306365][8] = {}
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][8]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][8]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][8]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardItem"][1]["Id"] = 4030701
	tFirstWorldBudokai_AwardItem[3306365][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][8]["LogId"] = 12000892
	-- 效果-魔法消耗减少
	tFirstWorldBudokai_AwardItem[3306365][9] = {}
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][9]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][9]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][9]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardItem"][1]["Id"] = 4030801
	tFirstWorldBudokai_AwardItem[3306365][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][9]["LogId"] = 12000892
	-- 效果-对BOSS伤害加成
	tFirstWorldBudokai_AwardItem[3306365][10] = {}
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][10]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][10]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][10]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardItem"][1]["Id"] = 4030901
	tFirstWorldBudokai_AwardItem[3306365][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][10]["LogId"] = 12000892
	-- 效果-伤害补偿
	tFirstWorldBudokai_AwardItem[3306365][11] = {}
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][11]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][11]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][11]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardItem"][1]["Id"] = 4031001
	tFirstWorldBudokai_AwardItem[3306365][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][11]["LogId"] = 12000892
	-- 效果-XP状态时间增加
	tFirstWorldBudokai_AwardItem[3306365][12] = {}
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][12]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][12]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][12]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardItem"][1]["Id"] = 4031101
	tFirstWorldBudokai_AwardItem[3306365][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][12]["LogId"] = 12000892
	-- 效果-天外之魂等级提高
	tFirstWorldBudokai_AwardItem[3306365][13] = {}
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][13]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][13]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][13]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardItem"][1]["Id"] = 4031201
	tFirstWorldBudokai_AwardItem[3306365][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][13]["LogId"] = 12000892
	-- 效果-
	tFirstWorldBudokai_AwardItem[3306365][14] = {}
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3306365][14]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][14]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][14]["DeleteItem"][1]["Id"] = 3306365
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardItem"][1]["Id"] = 4031301
	tFirstWorldBudokai_AwardItem[3306365][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306365][14]["LogId"] = 12000892
	
-- 累计奖励
	tFirstWorldBudokai_AwardItem["AddUp"] = {}
	-- 1档 100点气力值+时效武器外套*2+黄色神纹碎片*1
	tFirstWorldBudokai_AwardItem["AddUp"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"][1]["Id"] = 3302732
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"][2]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][1]["RewardStrengthValue"]["Value"] = 100
	tFirstWorldBudokai_AwardItem["AddUp"][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][1]["LogStep"] = "1[4]"
	-- 5档 1颗明亮星陨石+技能外套碎片
	tFirstWorldBudokai_AwardItem["AddUp"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"][2]["Id"] = 3301425
	tFirstWorldBudokai_AwardItem["AddUp"][2]["RewardItem"][2]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["AddUp"][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][2]["LogStep"] = "1[4]"
	-- 10档 500气力值+时效武器外套*2+黄色神纹碎片*2
	tFirstWorldBudokai_AwardItem["AddUp"][3] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"][1]["Id"] = 3302733
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"][2]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardItem"][2]["Attr"] = "0 2 3"
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][3]["RewardStrengthValue"]["Value"] = 500
	tFirstWorldBudokai_AwardItem["AddUp"][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][3]["LogStep"] = "1[4]"
	-- 20档 3颗明亮星陨石+技能外套碎片
	tFirstWorldBudokai_AwardItem["AddUp"][4] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"][2]["Id"] = 3301425
	tFirstWorldBudokai_AwardItem["AddUp"][4]["RewardItem"][2]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["AddUp"][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][4]["LogStep"] = "1[4]"
	-- 50档 1000点气力值+时效武器外套*2
	tFirstWorldBudokai_AwardItem["AddUp"][5] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][5]["RewardItem"][1]["Id"] = 3302764
	tFirstWorldBudokai_AwardItem["AddUp"][5]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem["AddUp"][5]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][5]["RewardStrengthValue"]["Value"] = 1000
	tFirstWorldBudokai_AwardItem["AddUp"][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][5]["LogStep"] = "1[4]"
	-- 100档 1颗晶莹星陨石+技能外套碎片
	tFirstWorldBudokai_AwardItem["AddUp"][6] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"][1]["Id"] = 3009002
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"][2]["Id"] = 3301425
	tFirstWorldBudokai_AwardItem["AddUp"][6]["RewardItem"][2]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["AddUp"][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][6]["LogStep"] = "1[4]"
	-- 300档 3000点气力值+时效武器外套*2+黄色神纹碎片*3
	tFirstWorldBudokai_AwardItem["AddUp"][7] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"][1]["Id"] = 3302762
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"][2]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardItem"][2]["Attr"] = "0 3 3"
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][7]["RewardStrengthValue"]["Value"] = 3000
	tFirstWorldBudokai_AwardItem["AddUp"][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][7]["LogStep"] = "1[4]"
	-- 500档 5000点气力值+时效武器外套*2
	tFirstWorldBudokai_AwardItem["AddUp"][8] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][8]["RewardItem"][1]["Id"] = 3302763
	tFirstWorldBudokai_AwardItem["AddUp"][8]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem["AddUp"][8]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][8]["RewardStrengthValue"]["Value"] = 5000
	tFirstWorldBudokai_AwardItem["AddUp"][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][8]["LogStep"] = "1[4]"
	-- 800档 10000点气力值+技能外套碎片*2
	tFirstWorldBudokai_AwardItem["AddUp"][9] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][9]["RewardItem"][1]["Id"] = 3301425
	tFirstWorldBudokai_AwardItem["AddUp"][9]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem["AddUp"][9]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][9]["RewardStrengthValue"]["Value"] = 10000
	tFirstWorldBudokai_AwardItem["AddUp"][9]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][9]["LogStep"] = "1[4]"
	-- 1000档 1颗璀璨星陨石+黄色神纹碎片*5
	tFirstWorldBudokai_AwardItem["AddUp"][10] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"][1]["Id"] = 3009003
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"][2] = {}
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"][2]["Id"] = 3306370
	tFirstWorldBudokai_AwardItem["AddUp"][10]["RewardItem"][2]["Attr"] = "0 5 3"
	tFirstWorldBudokai_AwardItem["AddUp"][10]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["AddUp"][10]["LogStep"] = "1[4]"
	
-- boss宝箱
	tFirstWorldBudokai_AwardItem["BossBox"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1]["ItemChanceSum"] = 10000
	-- 赤炼石+4(赠)
	tFirstWorldBudokai_AwardItem["BossBox"][1][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["ItemChance"] = 1250
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardItem"][1]["Id"] = 730004
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][1]["LogStep"] = "2"
	-- 赤炼石+5(赠)
	tFirstWorldBudokai_AwardItem["BossBox"][1][2] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["ItemChance"] = 1125
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardItem"][1]["Id"] = 730005
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][2]["LogStep"] = "2"
	-- 赤炼石+6(赠)
	tFirstWorldBudokai_AwardItem["BossBox"][1][3] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["ItemChance"] = 125
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardItem"][1]["Id"] = 730006
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][3]["LogStep"] = "2"
	-- 明亮星陨石*5
	tFirstWorldBudokai_AwardItem["BossBox"][1][4] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["ItemChance"] = 1250
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardItem"][1]["Id"] = 3009001
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][4]["LogStep"] = "2"
	-- 晶莹星陨石
	tFirstWorldBudokai_AwardItem["BossBox"][1][5] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["ItemChance"] = 1125
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardItem"][1]["Id"] = 3009002
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][5]["LogStep"] = "2"
	-- 晶莹星陨石*5
	tFirstWorldBudokai_AwardItem["BossBox"][1][6] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["ItemChance"] = 125
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardItem"][1]["Id"] = 3009002
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][6]["LogStep"] = "2"
	-- 500气力值
	tFirstWorldBudokai_AwardItem["BossBox"][1][7] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["ItemChance"] = 1250
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["RewardStrengthValue"]["Value"] = 500
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][7]["LogStep"] = "2"
	-- 1000气力值
	tFirstWorldBudokai_AwardItem["BossBox"][1][8] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["ItemChance"] = 1125
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["RewardStrengthValue"]["Value"] = 1000
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][8]["LogStep"] = "2"
	-- 3000气力值
	tFirstWorldBudokai_AwardItem["BossBox"][1][9] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["ItemChance"] = 125
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["RewardStrengthValue"]["Value"] = 3000
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][9]["LogStep"] = "2"
	-- 300赠点
	tFirstWorldBudokai_AwardItem["BossBox"][1][10] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["ItemChance"] = 1250
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["RewardEMoneyMono"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["RewardEMoneyMono"]["Value"] = 300
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][10]["LogStep"] = "2"
	-- 500赠点
	tFirstWorldBudokai_AwardItem["BossBox"][1][11] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["ItemChance"] = 1125
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["RewardEMoneyMono"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["RewardEMoneyMono"]["Value"] = 500
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][11]["LogStep"] = "2"
	-- 2000赠点
	tFirstWorldBudokai_AwardItem["BossBox"][1][12] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["ItemChance"] = 125
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["RewardEMoneyMono"] = {}
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["RewardEMoneyMono"]["Value"] = 2000
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["BossBox"][1][12]["LogStep"] = "2"
	
	tFirstWorldBudokai_AwardItem["Star"] = {}
	tFirstWorldBudokai_AwardItem["Star"]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["Star"]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["Star"]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["Star"]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["Star"]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["Star"]["RewardItem"][1]["Id"] = 3305620
	tFirstWorldBudokai_AwardItem["Star"]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["Star"]["LogStep"] = "2"
	
-- 增益符
	tFirstWorldBudokai_AwardItem["Buff"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1]["ItemChanceSum"] = 10000
	-- 一阶擂台制胜符
	tFirstWorldBudokai_AwardItem["Buff"][1][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardItem"][1]["Id"] = 3306061
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["Buff"][1][1]["LogStep"] = "2"
	-- 二阶擂台制胜符
	tFirstWorldBudokai_AwardItem["Buff"][1][2] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardItem"][1]["Id"] = 3306062
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["Buff"][1][2]["LogStep"] = "2"
	-- 双倍高手挑战令
	tFirstWorldBudokai_AwardItem["Buff"][1][3] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardItem"][1]["Id"] = 3306063
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["Buff"][1][3]["LogStep"] = "2"
	-- 一阶奖励加成符
	tFirstWorldBudokai_AwardItem["Buff"][1][4] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["ItemChance"] = 3500
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardItem"][1]["Id"] = 3306064
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["Buff"][1][4]["LogStep"] = "2"
	-- 二阶奖励加成符
	tFirstWorldBudokai_AwardItem["Buff"][1][5] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardItem"][1]["Id"] = 3306065
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["Buff"][1][5]["LogStep"] = "2"
	
-- 挑战令
	tFirstWorldBudokai_AwardItem["ChallengePack"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1]["ItemChanceSum"] = 10000
	-- 1星
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardItem"][1]["Id"] = 3305761
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][1]["LogStep"] = "2"
	-- 2星
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardItem"][1]["Id"] = 3305760
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][2]["LogStep"] = "2"
	-- 3星
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardItem"][1]["Id"] = 3305759
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][3]["LogStep"] = "2"
	-- 4星
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["ItemChance"] = 1500
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardItem"][1]["Id"] = 3305758
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][4]["LogStep"] = "2"
	-- 5星
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["ItemChance"] = 1500
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardItem"][1]["Id"] = 3305757
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][5]["LogStep"] = "2"
	-- 6星
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardItem"][1]["Id"] = 3305756
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["ChallengePack"][1][6]["LogStep"] = "2"
	
-- 每日领取
	tFirstWorldBudokai_AwardItem[3306655] = {}
	tFirstWorldBudokai_AwardItem[3306655][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][1]["ItemChanceSum"] = 10000
	-- 1星挑战令
	tFirstWorldBudokai_AwardItem[3306655][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306655][1][1]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardItem"][1]["Id"] = 3305761
	tFirstWorldBudokai_AwardItem[3306655][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306655][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306655][1][1]["LogStep"] = "2"
	-- 2星挑战令
	tFirstWorldBudokai_AwardItem[3306655][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306655][1][2]["ItemChance"] = 5000
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardItem"][1]["Id"] = 3305580
	tFirstWorldBudokai_AwardItem[3306655][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306655][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306655][1][2]["LogStep"] = "2"
	-- 3个黄色神纹包
	tFirstWorldBudokai_AwardItem[3306655][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RandomItemChanceType"] = 1
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardItem"][1]["Id"] = 3306363
	tFirstWorldBudokai_AwardItem[3306655][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tFirstWorldBudokai_AwardItem[3306655][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306655][1][3]["LogStep"] = "2"
	-- 额外奖励
	tFirstWorldBudokai_AwardItem[3306655][2] = {}
	tFirstWorldBudokai_AwardItem[3306655][2]["ItemChanceSum"] = 10000
	-- 3星挑战令
	tFirstWorldBudokai_AwardItem[3306655][2][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306655][2][1]["ItemChance"] = 7000
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardItem"][1]["Id"] = 3305759
	tFirstWorldBudokai_AwardItem[3306655][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306655][2][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306655][2][1]["LogStep"] = "2"
	-- 4星挑战令                                  
	tFirstWorldBudokai_AwardItem[3306655][2][2] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306655][2][2]["ItemChance"] = 3000
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardItem"][1]["Id"] = 3305758
	tFirstWorldBudokai_AwardItem[3306655][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306655][2][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306655][2][2]["LogStep"] = "2"
	
	-- 每日领取
	tFirstWorldBudokai_AwardItem["DailyGet"] = {}
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardItem"][1]["Id"] = 3306655
	tFirstWorldBudokai_AwardItem["DailyGet"]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem["DailyGet"]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem["DailyGet"]["LogStep"] = "2"
	
-- 赤炼石骰子
	tFirstWorldBudokai_AwardItem[3304260] = {}
	tFirstWorldBudokai_AwardItem[3304260]["TimeLimit"] = 3
	tFirstWorldBudokai_AwardItem[3304260]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3304260][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1]["ItemChanceSum"] = 10000
	-- 赤炼石+1（赠）礼包*1   24%
	tFirstWorldBudokai_AwardItem[3304260][1][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][1]["ItemChance"] = 2400
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardItem"][1]["Id"] = 3301223
	tFirstWorldBudokai_AwardItem[3304260][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304260][1][1]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][1]
	tFirstWorldBudokai_AwardItem[3304260][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][1]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*2   23%
	tFirstWorldBudokai_AwardItem[3304260][1][2] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][2]["ItemChance"] = 2300
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardItem"][1]["Id"] = 3301223
	tFirstWorldBudokai_AwardItem[3304260][1][2]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem[3304260][1][2]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][2]
	tFirstWorldBudokai_AwardItem[3304260][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][2]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*3   20%
	tFirstWorldBudokai_AwardItem[3304260][1][3] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][3]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardItem"][1]["Id"] = 3301223
	tFirstWorldBudokai_AwardItem[3304260][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tFirstWorldBudokai_AwardItem[3304260][1][3]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][3]
	tFirstWorldBudokai_AwardItem[3304260][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][3]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*4   17%
	tFirstWorldBudokai_AwardItem[3304260][1][4] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][4]["ItemChance"] = 1700
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardItem"][1]["Id"] = 3301223
	tFirstWorldBudokai_AwardItem[3304260][1][4]["RewardItem"][1]["Attr"] = "0 4"
	tFirstWorldBudokai_AwardItem[3304260][1][4]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][4]
	tFirstWorldBudokai_AwardItem[3304260][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][4]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*5   10.30%
	tFirstWorldBudokai_AwardItem[3304260][1][5] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][5]["ItemChance"] = 1030
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardItem"][1]["Id"] = 3301223
	tFirstWorldBudokai_AwardItem[3304260][1][5]["RewardItem"][1]["Attr"] = "0 5"
	tFirstWorldBudokai_AwardItem[3304260][1][5]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][5]
	tFirstWorldBudokai_AwardItem[3304260][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][5]["LogStep"] = "2"	
	-- 赤炼石+5（赠）礼包*1   5.60%      
	tFirstWorldBudokai_AwardItem[3304260][1][6] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][6]["ItemChance"] = 560
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardItem"][1]["Id"] = 3301227
	tFirstWorldBudokai_AwardItem[3304260][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304260][1][6]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][6]
	tFirstWorldBudokai_AwardItem[3304260][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][6]["LogStep"] = "2"		
	-- 赤炼石+6（赠）礼包*1   0.10%      -- 全服公告
	tFirstWorldBudokai_AwardItem[3304260][1][7] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304260][1][7]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardItem"][1]["Id"] = 3306907
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304260][1][7]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304260][7]
	tFirstWorldBudokai_AwardItem[3304260][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304260][1][7]["LogStep"] = "2"	
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3304260]
	tFirstWorldBudokai_AwardItem[3304260][1][7]["RewardBroadCastType"] = 2005
	
-- 星陨石骰子
	tFirstWorldBudokai_AwardItem[3304261] = {}
	tFirstWorldBudokai_AwardItem[3304261]["TimeLimit"] = 3
	tFirstWorldBudokai_AwardItem[3304261]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3304261][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1]["ItemChanceSum"] = 10000
	-- 微光星陨石礼包*1   24%
	tFirstWorldBudokai_AwardItem[3304261][1][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][1]["ItemChance"] = 2400
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardItem"][1]["Id"] = 3200747
	tFirstWorldBudokai_AwardItem[3304261][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304261][1][1]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][1]
	tFirstWorldBudokai_AwardItem[3304261][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][1]["LogStep"] = "2"	
	-- 微光星陨石礼包*2   22%
	tFirstWorldBudokai_AwardItem[3304261][1][2] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][2]["ItemChance"] = 2200
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardItem"][1]["Id"] = 3200747
	tFirstWorldBudokai_AwardItem[3304261][1][2]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_AwardItem[3304261][1][2]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][2]
	tFirstWorldBudokai_AwardItem[3304261][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][2]["LogStep"] = "2"	
	-- 微光星陨石礼包*3   20%
	tFirstWorldBudokai_AwardItem[3304261][1][3] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][3]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardItem"][1]["Id"] = 3200796
	tFirstWorldBudokai_AwardItem[3304261][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304261][1][3]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][3]
	tFirstWorldBudokai_AwardItem[3304261][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][3]["LogStep"] = "2"	
	-- 微光星陨石礼包*4   18%
	tFirstWorldBudokai_AwardItem[3304261][1][4] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][4]["ItemChance"] = 1800
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardItem"][1]["Id"] = 3304569
	tFirstWorldBudokai_AwardItem[3304261][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304261][1][4]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][4]
	tFirstWorldBudokai_AwardItem[3304261][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][4]["LogStep"] = "2"	
	-- 微光星陨石礼包*5   9.70%
	tFirstWorldBudokai_AwardItem[3304261][1][5] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][5]["ItemChance"] = 970
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardItem"][1]["Id"] = 3200797
	tFirstWorldBudokai_AwardItem[3304261][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304261][1][5]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][5]
	tFirstWorldBudokai_AwardItem[3304261][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][5]["LogStep"] = "2"	
	-- 晶莹星陨石礼包*1   5.60% 
	tFirstWorldBudokai_AwardItem[3304261][1][6] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][6]["ItemChance"] = 620
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardItem"][1]["Id"] = 3200469
	tFirstWorldBudokai_AwardItem[3304261][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3304261][1][6]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][6]
	tFirstWorldBudokai_AwardItem[3304261][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][6]["LogStep"] = "2"		
	-- 璀璨星陨石礼包*1   0.10%      -- 全服公告
	tFirstWorldBudokai_AwardItem[3304261][1][7] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304261][1][7]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardItem"][1]["Id"] = 3009003
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFirstWorldBudokai_AwardItem[3304261][1][7]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304261][7]
	tFirstWorldBudokai_AwardItem[3304261][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304261][1][7]["LogStep"] = "2"	
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3304261]
	tFirstWorldBudokai_AwardItem[3304261][1][7]["RewardBroadCastType"] = 2005
	
	-- 气力值骰子
	tFirstWorldBudokai_AwardItem[3304262] = {}
	tFirstWorldBudokai_AwardItem[3304262]["TimeLimit"] = 3
	tFirstWorldBudokai_AwardItem[3304262]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3304262][1] = {}
	tFirstWorldBudokai_AwardItem[3304262][1]["ItemChanceSum"] = 10000
	-- 10气力值   24%
	tFirstWorldBudokai_AwardItem[3304262][1][1] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][1]["ItemChance"] = 2400
	tFirstWorldBudokai_AwardItem[3304262][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tFirstWorldBudokai_AwardItem[3304262][1][1]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][1]["RewardStrengthValue"]["Value"] = 10
	tFirstWorldBudokai_AwardItem[3304262][1][1]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][1]
	tFirstWorldBudokai_AwardItem[3304262][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][1]["LogStep"] = "2"	
	-- 20气力值   22%
	tFirstWorldBudokai_AwardItem[3304262][1][2] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][2]["ItemChance"] = 2200
	tFirstWorldBudokai_AwardItem[3304262][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tFirstWorldBudokai_AwardItem[3304262][1][2]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][2]["RewardStrengthValue"]["Value"] = 20
	tFirstWorldBudokai_AwardItem[3304262][1][2]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][2]
	tFirstWorldBudokai_AwardItem[3304262][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][2]["LogStep"] = "2"	
	-- 30气力值   20%
	tFirstWorldBudokai_AwardItem[3304262][1][3] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][3]["ItemChance"] = 2000
	tFirstWorldBudokai_AwardItem[3304262][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tFirstWorldBudokai_AwardItem[3304262][1][3]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][3]["RewardStrengthValue"]["Value"] = 30
	tFirstWorldBudokai_AwardItem[3304262][1][3]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][3]
	tFirstWorldBudokai_AwardItem[3304262][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][3]["LogStep"] = "2"	
	-- 40气力值   16%
	tFirstWorldBudokai_AwardItem[3304262][1][4] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][4]["ItemChance"] = 1600
	tFirstWorldBudokai_AwardItem[3304262][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tFirstWorldBudokai_AwardItem[3304262][1][4]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][4]["RewardStrengthValue"]["Value"] = 40
	tFirstWorldBudokai_AwardItem[3304262][1][4]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][4]
	tFirstWorldBudokai_AwardItem[3304262][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][4]["LogStep"] = "2"	
	-- 50气力值   10%
	tFirstWorldBudokai_AwardItem[3304262][1][5] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][5]["ItemChance"] = 1000
	tFirstWorldBudokai_AwardItem[3304262][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tFirstWorldBudokai_AwardItem[3304262][1][5]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][5]["RewardStrengthValue"]["Value"] = 50
	tFirstWorldBudokai_AwardItem[3304262][1][5]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][5]
	tFirstWorldBudokai_AwardItem[3304262][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][5]["LogStep"] = "2"	
	-- 1000气力值   7.9%      -- 全服公告
	tFirstWorldBudokai_AwardItem[3304262][1][6] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][6]["ItemChance"] = 790
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardStrengthValue"]["Value"] = 1000
	tFirstWorldBudokai_AwardItem[3304262][1][6]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][6]
	tFirstWorldBudokai_AwardItem[3304262][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][6]["LogStep"] = "2"		
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3304262][6]
	tFirstWorldBudokai_AwardItem[3304262][1][6]["RewardBroadCastType"] = 2005
	-- 3000气力值   0.1%      -- 全服公告
	tFirstWorldBudokai_AwardItem[3304262][1][7] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3304262][1][7]["ItemChance"] = 10
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardStrengthValue"] = {}
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardStrengthValue"]["Value"] = 3000
	tFirstWorldBudokai_AwardItem[3304262][1][7]["Talk"] = tFirstWorldBudokai_Text["Channel2005"]["touzi"][3304262][7]
	tFirstWorldBudokai_AwardItem[3304262][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3304262][1][7]["LogStep"] = "2"	
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardBroadCast"] = tFirstWorldBudokai_Text["Broadcast"][3304262][7]
	tFirstWorldBudokai_AwardItem[3304262][1][7]["RewardBroadCastType"] = 2005
	
-- 黄色符文碎片（赠）
	tFirstWorldBudokai_AwardItem[3306510] = {}
	tFirstWorldBudokai_AwardItem[3306510]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3306510][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1]["ItemChanceSum"] = 10000
	-- 浩气长存   0%
	tFirstWorldBudokai_AwardItem[3306510][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][1]["ItemChance"] = 0
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardItem"][1]["Id"] = 4030101 -- 4030001  没有这个ID的符文，会报log改一个有的，概率为0
	tFirstWorldBudokai_AwardItem[3306510][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][1]["LogStep"] = "2"	
	-- 破玄元   3%
	tFirstWorldBudokai_AwardItem[3306510][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][2]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardItem"][1]["Id"] = 4030101
	tFirstWorldBudokai_AwardItem[3306510][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][2]["LogStep"] = "2"	
	-- 撼星诀   7.5%
	tFirstWorldBudokai_AwardItem[3306510][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][3]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardItem"][1]["Id"] = 4030201
	tFirstWorldBudokai_AwardItem[3306510][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][3]["LogStep"] = "2"	
	-- 血回元   7.5%
	tFirstWorldBudokai_AwardItem[3306510][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][4]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardItem"][1]["Id"] = 4030301
	tFirstWorldBudokai_AwardItem[3306510][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][4]["LogStep"] = "2"	
	-- 万物生   5%
	tFirstWorldBudokai_AwardItem[3306510][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][5]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardItem"][1]["Id"] = 4030401
	tFirstWorldBudokai_AwardItem[3306510][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][5]["LogStep"] = "2"	
	-- 无懈可击   7%
	tFirstWorldBudokai_AwardItem[3306510][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][6]["TellToAll"] = 1
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][6]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardItem"][1]["Id"] = 4030501
	tFirstWorldBudokai_AwardItem[3306510][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][6]["LogStep"] = "2"		
	-- 狂暴克星   5%
	tFirstWorldBudokai_AwardItem[3306510][1][7] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][7]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardItem"][1]["Id"] = 4030601
	tFirstWorldBudokai_AwardItem[3306510][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][7]["LogStep"] = "2"
	-- 风卷残云   5%
	tFirstWorldBudokai_AwardItem[3306510][1][8] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][8]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardItem"][1]["Id"] = 4030701
	tFirstWorldBudokai_AwardItem[3306510][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][8]["LogStep"] = "2"
	-- 回灵术   5%
	tFirstWorldBudokai_AwardItem[3306510][1][9] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][9]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardItem"][1]["Id"] = 4030801
	tFirstWorldBudokai_AwardItem[3306510][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][9]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][9]["LogStep"] = "2"
	-- 杀破狼   7%
	tFirstWorldBudokai_AwardItem[3306510][1][10] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][10]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardItem"][1]["Id"] = 4030901
	tFirstWorldBudokai_AwardItem[3306510][1][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][10]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][10]["LogStep"] = "2"
	-- 追命   2% 
	tFirstWorldBudokai_AwardItem[3306510][1][11] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][11]["ItemChance"] = 200
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardItem"][1]["Id"] = 4031001
	tFirstWorldBudokai_AwardItem[3306510][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][11]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][11]["LogStep"] = "2"
	-- 奔雷不息   7%
	tFirstWorldBudokai_AwardItem[3306510][1][12] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][12]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardItem"][1]["Id"] = 4031101
	tFirstWorldBudokai_AwardItem[3306510][1][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][12]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][12]["LogStep"] = "2"
	-- 安魂定魄   7%
	tFirstWorldBudokai_AwardItem[3306510][1][13] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][13]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardItem"][1]["Id"] = 4031201
	tFirstWorldBudokai_AwardItem[3306510][1][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][13]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][13]["LogStep"] = "2"	
	-- 夺魂   2% 
	tFirstWorldBudokai_AwardItem[3306510][1][14] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][14]["ItemChance"] = 200
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardItem"][1]["Id"] = 4031301
	tFirstWorldBudokai_AwardItem[3306510][1][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][14]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][14]["LogStep"] = "2"
		-- 怒海狂涛   7.5% 
	tFirstWorldBudokai_AwardItem[3306510][1][15] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][15]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardItem"][1]["Id"] = 4033101
	tFirstWorldBudokai_AwardItem[3306510][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][15]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][15]["LogStep"] = "2"
	-- 狂暴净化   7.5% 
	tFirstWorldBudokai_AwardItem[3306510][1][16] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][16]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardItem"][1]["Id"] = 4033601
	tFirstWorldBudokai_AwardItem[3306510][1][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][16]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][16]["LogStep"] = "2"
	-- 生命汲取   7.5% 
	tFirstWorldBudokai_AwardItem[3306510][1][17] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][17]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardItem"][1]["Id"] = 4033801
	tFirstWorldBudokai_AwardItem[3306510][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][17]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][17]["LogStep"] = "2"
	-- 饮血盛宴   7.5% 
	tFirstWorldBudokai_AwardItem[3306510][1][18] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306510][1][18]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardItem"][1]["Id"] = 4033701
	tFirstWorldBudokai_AwardItem[3306510][1][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3306510][1][18]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306510][1][18]["LogStep"] = "2"
	
-- 黄色符文碎片
	tFirstWorldBudokai_AwardItem[3306507] = {}
	tFirstWorldBudokai_AwardItem[3306507]["NotDel"] = 1
	tFirstWorldBudokai_AwardItem[3306507][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1]["ItemChanceSum"] = 10000
	-- 浩气长存   0%
	tFirstWorldBudokai_AwardItem[3306507][1][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][1]["ItemChance"] = 0
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardItem"][1]["Id"] = 4030101 -- 4030001  没有这个ID的符文，会报log改一个有的，概率为0
	tFirstWorldBudokai_AwardItem[3306507][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][1]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][1]["LogStep"] = "2"	
	-- 破玄元   3%
	tFirstWorldBudokai_AwardItem[3306507][1][2] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][2]["ItemChance"] = 300
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardItem"][1]["Id"] = 4030101
	tFirstWorldBudokai_AwardItem[3306507][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][2]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][2]["LogStep"] = "2"	
	-- 撼星诀   7.5%
	tFirstWorldBudokai_AwardItem[3306507][1][3] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][3]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardItem"][1]["Id"] = 4030201
	tFirstWorldBudokai_AwardItem[3306507][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][3]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][3]["LogStep"] = "2"	
	-- 血回元   7.5%
	tFirstWorldBudokai_AwardItem[3306507][1][4] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][4]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardItem"][1]["Id"] = 4030301
	tFirstWorldBudokai_AwardItem[3306507][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][4]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][4]["LogStep"] = "2"	
	-- 万物生   5%
	tFirstWorldBudokai_AwardItem[3306507][1][5] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][5]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardItem"][1]["Id"] = 4030401
	tFirstWorldBudokai_AwardItem[3306507][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][5]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][5]["LogStep"] = "2"	
	-- 无懈可击   7%
	tFirstWorldBudokai_AwardItem[3306507][1][6] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][6]["TellToAll"] = 1
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][6]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardItem"][1]["Id"] = 4030501
	tFirstWorldBudokai_AwardItem[3306507][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][6]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][6]["LogStep"] = "2"		
	-- 狂暴克星   5%
	tFirstWorldBudokai_AwardItem[3306507][1][7] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][7]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardItem"][1]["Id"] = 4030601
	tFirstWorldBudokai_AwardItem[3306507][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][7]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][7]["LogStep"] = "2"
	-- 风卷残云   5%
	tFirstWorldBudokai_AwardItem[3306507][1][8] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][8]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardItem"][1]["Id"] = 4030701
	tFirstWorldBudokai_AwardItem[3306507][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][8]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][8]["LogStep"] = "2"
	-- 回灵术   5%
	tFirstWorldBudokai_AwardItem[3306507][1][9] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][9]["ItemChance"] = 500
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardItem"][1]["Id"] = 4030801
	tFirstWorldBudokai_AwardItem[3306507][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][9]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][9]["LogStep"] = "2"
	-- 杀破狼   7%
	tFirstWorldBudokai_AwardItem[3306507][1][10] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][10]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardItem"][1]["Id"] = 4030901
	tFirstWorldBudokai_AwardItem[3306507][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][10]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][10]["LogStep"] = "2"
	-- 追命   2% 
	tFirstWorldBudokai_AwardItem[3306507][1][11] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][11]["ItemChance"] = 200
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardItem"][1]["Id"] = 4031001
	tFirstWorldBudokai_AwardItem[3306507][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][11]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][11]["LogStep"] = "2"
	-- 奔雷不息   7%
	tFirstWorldBudokai_AwardItem[3306507][1][12] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][12]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardItem"][1]["Id"] = 4031101
	tFirstWorldBudokai_AwardItem[3306507][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][12]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][12]["LogStep"] = "2"
	-- 安魂定魄   7%
	tFirstWorldBudokai_AwardItem[3306507][1][13] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][13]["ItemChance"] = 700
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardItem"][1]["Id"] = 4031201
	tFirstWorldBudokai_AwardItem[3306507][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][13]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][13]["LogStep"] = "2"	
	-- 夺魂   2% 
	tFirstWorldBudokai_AwardItem[3306507][1][14] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][14]["ItemChance"] = 200
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardItem"][1]["Id"] = 4031301
	tFirstWorldBudokai_AwardItem[3306507][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][14]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][14]["LogStep"] = "2"
	-- 怒海狂涛   7.5% 
	tFirstWorldBudokai_AwardItem[3306507][1][15] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][15]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardItem"][1]["Id"] = 4033101
	tFirstWorldBudokai_AwardItem[3306507][1][15]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][15]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][15]["LogStep"] = "2"
	-- 狂暴净化   7.5% 
	tFirstWorldBudokai_AwardItem[3306507][1][16] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][16]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardItem"][1]["Id"] = 4033601
	tFirstWorldBudokai_AwardItem[3306507][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][16]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][16]["LogStep"] = "2"
	-- 生命汲取   7.5% 
	tFirstWorldBudokai_AwardItem[3306507][1][17] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][17]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardItem"][1]["Id"] = 4033801
	tFirstWorldBudokai_AwardItem[3306507][1][17]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][17]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][17]["LogStep"] = "2"
	-- 饮血盛宴   7.5% 
	tFirstWorldBudokai_AwardItem[3306507][1][18] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RandomItemChanceType"] = 2
	tFirstWorldBudokai_AwardItem[3306507][1][18]["ItemChance"] = 750
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardItem"][1]["Id"] = 4033701
	tFirstWorldBudokai_AwardItem[3306507][1][18]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_AwardItem[3306507][1][18]["LogId"] = 12000892
	tFirstWorldBudokai_AwardItem[3306507][1][18]["LogStep"] = "2"
	tFirstWorldBudokai_AwardItem[3305474] = {}
	tFirstWorldBudokai_AwardItem[3305474]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3305474]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3305474]["DeleteItem"][1]["Id"] = 3305474
	tFirstWorldBudokai_AwardItem[3305474]["RewardExpPercentSpecial"] = {}
	tFirstWorldBudokai_AwardItem[3305474]["RewardExpPercentSpecial"]["Value"] = 1
	tFirstWorldBudokai_AwardItem[3305474]["LogId"] = 12000892
	-- 满级给修行值
	tFirstWorldBudokai_AwardItem[3305474]["RewardExpPercentSpecial"]["FullIndex"] = "RewardCultivation"
	tFirstWorldBudokai_AwardItem[3305474]["RewardExpPercentSpecial"]["FullValue"] = 500
	
local tFirstWorldBudokai_Compose = {}
	-- 红色符文碎片
	tFirstWorldBudokai_Compose[3306369] = {}
	tFirstWorldBudokai_Compose[3306369]["Compose"] = 20
	tFirstWorldBudokai_Compose[3306369]["ComposeItem"] = {
	4010001,4010201,4010301,4010401,4010501,4010601,4010701,4010801,4010901,4011501 -- 职业红色神纹
	}
	tFirstWorldBudokai_Compose[3306369]["RewardEffect"] = {}
	tFirstWorldBudokai_Compose[3306369]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Compose[3306369]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_Compose[3306369]["DeleteItem"] = {}
	tFirstWorldBudokai_Compose[3306369]["DeleteItem"][1] = {}
	tFirstWorldBudokai_Compose[3306369]["DeleteItem"][1]["Id"] = 3306369
	tFirstWorldBudokai_Compose[3306369]["DeleteItem"][1]["ItemNum"] = 20
	tFirstWorldBudokai_Compose[3306369]["RewardItem"] = {}
	tFirstWorldBudokai_Compose[3306369]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_Compose[3306369]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_Compose[3306369]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_Compose[3306369]["LogId"] = 12000892
	
	-- 红色符文碎片（非赠）
	tFirstWorldBudokai_Compose[3306366] = {}
	tFirstWorldBudokai_Compose[3306366]["Compose"] = 20
	tFirstWorldBudokai_Compose[3306366]["ComposeItem"] = {
	4010001,4010201,4010301,4010401,4010501,4010601,4010701,4010801,4010901,4011501 -- 职业红色神纹
	}
	tFirstWorldBudokai_Compose[3306366]["RewardEffect"] = {}
	tFirstWorldBudokai_Compose[3306366]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Compose[3306366]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_Compose[3306366]["DeleteItem"] = {}
	tFirstWorldBudokai_Compose[3306366]["DeleteItem"][1] = {}
	tFirstWorldBudokai_Compose[3306366]["DeleteItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_Compose[3306366]["DeleteItem"][1]["ItemNum"] = 20
	tFirstWorldBudokai_Compose[3306366]["RewardItem"] = {}
	tFirstWorldBudokai_Compose[3306366]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_Compose[3306366]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_Compose[3306366]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Compose[3306366]["LogId"] = 12000892
	
	-- 黄色符文碎片
	tFirstWorldBudokai_Compose[3306370] = {}
	tFirstWorldBudokai_Compose[3306370]["Compose"] = 20
	tFirstWorldBudokai_Compose[3306370]["ComposeItem"] = {
	4030101,4030201,4030301,4030401,4030501,4030601,4030701,4030801,4030901,4031001,4031101,4031201,4031301,4033101,4033801,4033601,4033701 -- 无限制黄色神纹
	}
	tFirstWorldBudokai_Compose[3306370]["RewardEffect"] = {}
	tFirstWorldBudokai_Compose[3306370]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Compose[3306370]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_Compose[3306370]["DeleteItem"] = {}
	tFirstWorldBudokai_Compose[3306370]["DeleteItem"][1] = {}
	tFirstWorldBudokai_Compose[3306370]["DeleteItem"][1]["Id"] = 3306370
	tFirstWorldBudokai_Compose[3306370]["DeleteItem"][1]["ItemNum"] = 20
	tFirstWorldBudokai_Compose[3306370]["RewardItem"] = {}
	tFirstWorldBudokai_Compose[3306370]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_Compose[3306370]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_Compose[3306370]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_Compose[3306370]["LogId"] = 12000892
	
	-- 黄色符文碎片（非赠）
	tFirstWorldBudokai_Compose[3306367] = {}
	tFirstWorldBudokai_Compose[3306367]["Compose"] = 20
	tFirstWorldBudokai_Compose[3306367]["ComposeItem"] = {
	4030101,4030201,4030301,4030401,4030501,4030601,4030701,4030801,4030901,4031001,4031101,4031201,4031301,4033101,4033801,4033601,4033701 -- 无限制黄色神纹
	}
	tFirstWorldBudokai_Compose[3306367]["RewardEffect"] = {}
	tFirstWorldBudokai_Compose[3306367]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Compose[3306367]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_Compose[3306367]["DeleteItem"] = {}
	tFirstWorldBudokai_Compose[3306367]["DeleteItem"][1] = {}
	tFirstWorldBudokai_Compose[3306367]["DeleteItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_Compose[3306367]["DeleteItem"][1]["ItemNum"] = 20
	tFirstWorldBudokai_Compose[3306367]["RewardItem"] = {}
	tFirstWorldBudokai_Compose[3306367]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_Compose[3306367]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_Compose[3306367]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Compose[3306367]["LogId"] = 12000892
	
	-- 蓝色符文碎片
	tFirstWorldBudokai_Compose[3306371] = {}
	tFirstWorldBudokai_Compose[3306371]["Compose"] = 20
	tFirstWorldBudokai_Compose[3306371]["ComposeItem"] = {
	4020101,4020201,4020301,4020401,4020501,4020601,4020701,4020801,4020901,4021001,4022201 -- 职业蓝色神纹
	}
	tFirstWorldBudokai_Compose[3306371]["RewardEffect"] = {}
	tFirstWorldBudokai_Compose[3306371]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Compose[3306371]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_Compose[3306371]["DeleteItem"] = {}
	tFirstWorldBudokai_Compose[3306371]["DeleteItem"][1] = {}
	tFirstWorldBudokai_Compose[3306371]["DeleteItem"][1]["Id"] = 3306371
	tFirstWorldBudokai_Compose[3306371]["DeleteItem"][1]["ItemNum"] = 20
	tFirstWorldBudokai_Compose[3306371]["RewardItem"] = {}
	tFirstWorldBudokai_Compose[3306371]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_Compose[3306371]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_Compose[3306371]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_Compose[3306371]["LogId"] = 12000892
	
	-- 蓝色符文碎片（非赠）
	tFirstWorldBudokai_Compose[3306368] = {}
	tFirstWorldBudokai_Compose[3306368]["Compose"] = 20
	tFirstWorldBudokai_Compose[3306368]["ComposeItem"] = {
	4020101,4020201,4020301,4020401,4020501,4020601,4020701,4020801,4020901,4021001,4022201 -- 职业蓝色神纹
	}
	tFirstWorldBudokai_Compose[3306368]["RewardEffect"] = {}
	tFirstWorldBudokai_Compose[3306368]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Compose[3306368]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_Compose[3306368]["DeleteItem"] = {}
	tFirstWorldBudokai_Compose[3306368]["DeleteItem"][1] = {}
	tFirstWorldBudokai_Compose[3306368]["DeleteItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_Compose[3306368]["DeleteItem"][1]["ItemNum"] = 20
	tFirstWorldBudokai_Compose[3306368]["RewardItem"] = {}
	tFirstWorldBudokai_Compose[3306368]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_Compose[3306368]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_Compose[3306368]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Compose[3306368]["LogId"] = 12000892
	
local tFirstWorldBudokai_ComposeDouble = {}
	-- 红色符文碎片
	tFirstWorldBudokai_ComposeDouble[3306369] = {}
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardEffect"] = {}
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_ComposeDouble[3306369]["DeleteItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306369]["DeleteItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306369]["DeleteItem"][1]["Id"] = 3306369
	tFirstWorldBudokai_ComposeDouble[3306369]["DeleteItem"][1]["ItemNum"] = 1
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardItem"][1]["Id"] = 3306369
	tFirstWorldBudokai_ComposeDouble[3306369]["RewardItem"][1]["Attr"] = "0 2 3"
	tFirstWorldBudokai_ComposeDouble[3306369]["LogId"] = 12000892
	
	-- 红色符文碎片（非赠）
	tFirstWorldBudokai_ComposeDouble[3306366] = {}
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardEffect"] = {}
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_ComposeDouble[3306366]["DeleteItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306366]["DeleteItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306366]["DeleteItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_ComposeDouble[3306366]["DeleteItem"][1]["ItemNum"] = 1
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardItem"][1]["Id"] = 3306366
	tFirstWorldBudokai_ComposeDouble[3306366]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_ComposeDouble[3306366]["LogId"] = 12000892
	
	-- 黄色符文碎片
	tFirstWorldBudokai_ComposeDouble[3306370] = {}
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardEffect"] = {}
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_ComposeDouble[3306370]["DeleteItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306370]["DeleteItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306370]["DeleteItem"][1]["Id"] = 3306370
	tFirstWorldBudokai_ComposeDouble[3306370]["DeleteItem"][1]["ItemNum"] = 1
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardItem"][1]["Id"] = 3306370
	tFirstWorldBudokai_ComposeDouble[3306370]["RewardItem"][1]["Attr"] = "0 2 3"
	tFirstWorldBudokai_ComposeDouble[3306370]["LogId"] = 12000892
	
	-- 黄色符文碎片（非赠）
	tFirstWorldBudokai_ComposeDouble[3306367] = {}
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardEffect"] = {}
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_ComposeDouble[3306367]["DeleteItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306367]["DeleteItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306367]["DeleteItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_ComposeDouble[3306367]["DeleteItem"][1]["ItemNum"] = 1
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardItem"][1]["Id"] = 3306367
	tFirstWorldBudokai_ComposeDouble[3306367]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_ComposeDouble[3306367]["LogId"] = 12000892
	
	-- 蓝色符文碎片
	tFirstWorldBudokai_ComposeDouble[3306371] = {}
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardEffect"] = {}
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_ComposeDouble[3306371]["DeleteItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306371]["DeleteItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306371]["DeleteItem"][1]["Id"] = 3306371
	tFirstWorldBudokai_ComposeDouble[3306371]["DeleteItem"][1]["ItemNum"] = 1
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardItem"][1]["Id"] = 3306371
	tFirstWorldBudokai_ComposeDouble[3306371]["RewardItem"][1]["Attr"] = "0 2 3"
	tFirstWorldBudokai_ComposeDouble[3306371]["LogId"] = 12000892
	
	-- 蓝色符文碎片（非赠）
	tFirstWorldBudokai_ComposeDouble[3306368] = {}
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardEffect"] = {}
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_ComposeDouble[3306368]["DeleteItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306368]["DeleteItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306368]["DeleteItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_ComposeDouble[3306368]["DeleteItem"][1]["ItemNum"] = 1
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardItem"] = {}
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardItem"][1] = {}
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardItem"][1]["Id"] = 3306368
	tFirstWorldBudokai_ComposeDouble[3306368]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_ComposeDouble[3306368]["LogId"] = 12000892	
	
	
local tFirstWorldBudokai_RandomItem = {}
	-- 红色符文碎片
	tFirstWorldBudokai_RandomItem[3306509] = {}
	tFirstWorldBudokai_RandomItem[3306509]["RandomItem"] = {
	4010001,4010201,4010301,4010401,4010501,4010601,4010701,4010801,4010901,4011501 -- 职业红色神纹
	}
	tFirstWorldBudokai_RandomItem[3306509]["RewardEffect"] = {}
	tFirstWorldBudokai_RandomItem[3306509]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_RandomItem[3306509]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_RandomItem[3306509]["DeleteItem"] = {}
	tFirstWorldBudokai_RandomItem[3306509]["DeleteItem"][1] = {}
	tFirstWorldBudokai_RandomItem[3306509]["DeleteItem"][1]["Id"] = 3306509
	tFirstWorldBudokai_RandomItem[3306509]["RewardItem"] = {}
	tFirstWorldBudokai_RandomItem[3306509]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_RandomItem[3306509]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_RandomItem[3306509]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_RandomItem[3306509]["LogId"] = 12000892
	
	-- 红色符文碎片（非赠）
	tFirstWorldBudokai_RandomItem[3306506] = {}
	tFirstWorldBudokai_RandomItem[3306506]["RandomItem"] = {
	4010001,4010201,4010301,4010401,4010501,4010601,4010701,4010801,4010901,4011501 -- 职业红色神纹
	}
	tFirstWorldBudokai_RandomItem[3306506]["RewardEffect"] = {}
	tFirstWorldBudokai_RandomItem[3306506]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_RandomItem[3306506]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_RandomItem[3306506]["DeleteItem"] = {}
	tFirstWorldBudokai_RandomItem[3306506]["DeleteItem"][1] = {}
	tFirstWorldBudokai_RandomItem[3306506]["DeleteItem"][1]["Id"] = 3306506
	tFirstWorldBudokai_RandomItem[3306506]["RewardItem"] = {}
	tFirstWorldBudokai_RandomItem[3306506]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_RandomItem[3306506]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_RandomItem[3306506]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_RandomItem[3306506]["LogId"] = 12000892
	
	-- 黄色符文碎片
	--	tFirstWorldBudokai_RandomItem[3306510] = {}
	--	tFirstWorldBudokai_RandomItem[3306510]["RandomItem"] = {
	--	4030001,4030101,4030201,4030301,4030401,4030501,4030601,4030701,4030801,4030901,4031001,4031101,4031201 -- 无限制黄色神纹
	--	}
	--	tFirstWorldBudokai_RandomItem[3306510]["RewardEffect"] = {}
	--	tFirstWorldBudokai_RandomItem[3306510]["RewardEffect"]["SzObj"] = "self"
	--	tFirstWorldBudokai_RandomItem[3306510]["RewardEffect"]["Effect"] = "zf2-e128"
	--	tFirstWorldBudokai_RandomItem[3306510]["DeleteItem"] = {}
	--	tFirstWorldBudokai_RandomItem[3306510]["DeleteItem"][1] = {}
	--	tFirstWorldBudokai_RandomItem[3306510]["DeleteItem"][1]["Id"] = 3306510
	--	tFirstWorldBudokai_RandomItem[3306510]["RewardItem"] = {}
	--	tFirstWorldBudokai_RandomItem[3306510]["RewardItem"][1] = {}
	--	-- tFirstWorldBudokai_RandomItem[3306510]["RewardItem"][1]["Id"] = 0
	--	tFirstWorldBudokai_RandomItem[3306510]["RewardItem"][1]["Attr"] = "0 1 3"
	--	tFirstWorldBudokai_RandomItem[3306510]["LogId"] = 12000892
	
	-- 黄色符文碎片（非赠）
	--	tFirstWorldBudokai_RandomItem[3306507] = {}
	--	tFirstWorldBudokai_RandomItem[3306507]["RandomItem"] = {
	--	4030001,4030101,4030201,4030301,4030401,4030501,4030601,4030701,4030801,4030901,4031001,4031101,4031201 -- 无限制黄色神纹
	--	}
	--	tFirstWorldBudokai_RandomItem[3306507]["RewardEffect"] = {}
	--	tFirstWorldBudokai_RandomItem[3306507]["RewardEffect"]["SzObj"] = "self"
	--	tFirstWorldBudokai_RandomItem[3306507]["RewardEffect"]["Effect"] = "zf2-e128"
	--	tFirstWorldBudokai_RandomItem[3306507]["DeleteItem"] = {}
	--	tFirstWorldBudokai_RandomItem[3306507]["DeleteItem"][1] = {}
	--	tFirstWorldBudokai_RandomItem[3306507]["DeleteItem"][1]["Id"] = 3306507
	--	tFirstWorldBudokai_RandomItem[3306507]["RewardItem"] = {}
	--	tFirstWorldBudokai_RandomItem[3306507]["RewardItem"][1] = {}
	--	-- tFirstWorldBudokai_RandomItem[3306507]["RewardItem"][1]["Id"] = 0
	--	tFirstWorldBudokai_RandomItem[3306507]["RewardItem"][1]["Attr"] = "0 1"
	--	tFirstWorldBudokai_RandomItem[3306507]["LogId"] = 12000892
	
	-- 蓝色符文碎片
	tFirstWorldBudokai_RandomItem[3306511] = {}
	tFirstWorldBudokai_RandomItem[3306511]["RandomItem"] = {
	4020101,4020201,4020301,4020401,4020501,4020601,4020701,4020801,4020901,4021001,4022201 -- 职业蓝色神纹
	}
	tFirstWorldBudokai_RandomItem[3306511]["RewardEffect"] = {}
	tFirstWorldBudokai_RandomItem[3306511]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_RandomItem[3306511]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_RandomItem[3306511]["DeleteItem"] = {}
	tFirstWorldBudokai_RandomItem[3306511]["DeleteItem"][1] = {}
	tFirstWorldBudokai_RandomItem[3306511]["DeleteItem"][1]["Id"] = 3306511
	tFirstWorldBudokai_RandomItem[3306511]["RewardItem"] = {}
	tFirstWorldBudokai_RandomItem[3306511]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_RandomItem[3306511]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_RandomItem[3306511]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_RandomItem[3306511]["LogId"] = 12000892
	
	-- 蓝色符文碎片（非赠）
	tFirstWorldBudokai_RandomItem[3306508] = {}
	tFirstWorldBudokai_RandomItem[3306508]["RandomItem"] = {
	4020101,4020201,4020301,4020401,4020501,4020601,4020701,4020801,4020901,4021001,4022201 -- 职业蓝色神纹
	}
	tFirstWorldBudokai_RandomItem[3306508]["RewardEffect"] = {}
	tFirstWorldBudokai_RandomItem[3306508]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_RandomItem[3306508]["RewardEffect"]["Effect"] = "zf2-e128"
	tFirstWorldBudokai_RandomItem[3306508]["DeleteItem"] = {}
	tFirstWorldBudokai_RandomItem[3306508]["DeleteItem"][1] = {}
	tFirstWorldBudokai_RandomItem[3306508]["DeleteItem"][1]["Id"] = 3306508
	tFirstWorldBudokai_RandomItem[3306508]["RewardItem"] = {}
	tFirstWorldBudokai_RandomItem[3306508]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_RandomItem[3306508]["RewardItem"][1]["Id"] = 0
	tFirstWorldBudokai_RandomItem[3306508]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_RandomItem[3306508]["LogId"] = 12000892
	
local tFirstWorldBudokai_Box = {}
	-- 1星奖励
	tFirstWorldBudokai_Box[1] = {}
	tFirstWorldBudokai_Box[1][1] = {}
	tFirstWorldBudokai_Box[1][1]["RewardItem"] = {}
	tFirstWorldBudokai_Box[1][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[1][1]["RewardItem"][1]["Id"] = 3305746
	tFirstWorldBudokai_Box[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[1][1]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[1][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[1][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[1][1]["LogId"] = 12000892
	tFirstWorldBudokai_Box[1][1]["LogStep"] = "2"
	
	-- 2星奖励
	tFirstWorldBudokai_Box[2] = {}
	tFirstWorldBudokai_Box[2][1] = {}
	tFirstWorldBudokai_Box[2][1]["RewardItem"] = {}
	tFirstWorldBudokai_Box[2][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[2][1]["RewardItem"][1]["Id"] = 3305747
	tFirstWorldBudokai_Box[2][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[2][1]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[2][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[2][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[2][1]["LogId"] = 12000892
	tFirstWorldBudokai_Box[2][1]["LogStep"] = "2"
	
	-- 3星奖励
	tFirstWorldBudokai_Box[3] = {}
	tFirstWorldBudokai_Box[3][1] = {}
	tFirstWorldBudokai_Box[3][1]["RewardItem"] = {}
	tFirstWorldBudokai_Box[3][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[3][1]["RewardItem"][1]["Id"] = 3305748
	tFirstWorldBudokai_Box[3][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[3][1]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[3][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[3][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[3][1]["LogId"] = 12000892
	tFirstWorldBudokai_Box[3][1]["LogStep"] = "2"
	
	-- 4星奖励
	tFirstWorldBudokai_Box[4] = {}
	tFirstWorldBudokai_Box[4][1] = {}
	tFirstWorldBudokai_Box[4][1]["RewardItem"] = {}
	tFirstWorldBudokai_Box[4][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[4][1]["RewardItem"][1]["Id"] = 3305749
	tFirstWorldBudokai_Box[4][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[4][1]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[4][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[4][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[4][1]["LogId"] = 12000892
	tFirstWorldBudokai_Box[4][1]["LogStep"] = "2"
	tFirstWorldBudokai_Box[4][2] = {}
	tFirstWorldBudokai_Box[4][2]["RewardItem"] = {}
	tFirstWorldBudokai_Box[4][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[4][2]["RewardItem"][1]["Id"] = 3305749
	tFirstWorldBudokai_Box[4][2]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_Box[4][2]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[4][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[4][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[4][2]["LogId"] = 12000892
	tFirstWorldBudokai_Box[4][2]["LogStep"] = "2"
	tFirstWorldBudokai_Box[4][3] = {}
	tFirstWorldBudokai_Box[4][3]["RewardItem"] = {}
	tFirstWorldBudokai_Box[4][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[4][3]["RewardItem"][1]["Id"] = 3306067
	tFirstWorldBudokai_Box[4][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[4][3]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[4][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[4][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[4][3]["LogId"] = 12000892
	tFirstWorldBudokai_Box[4][3]["LogStep"] = "2"
	tFirstWorldBudokai_Box[4][4] = {}
	tFirstWorldBudokai_Box[4][4]["RewardItem"] = {}
	tFirstWorldBudokai_Box[4][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[4][4]["RewardItem"][1]["Id"] = 3306068
	tFirstWorldBudokai_Box[4][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[4][4]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[4][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[4][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[4][4]["LogId"] = 12000892
	tFirstWorldBudokai_Box[4][4]["LogStep"] = "2"

	-- 5星奖励
	tFirstWorldBudokai_Box[5] = {}
	tFirstWorldBudokai_Box[5][1] = {}
	tFirstWorldBudokai_Box[5][1]["RewardItem"] = {}
	tFirstWorldBudokai_Box[5][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[5][1]["RewardItem"][1]["Id"] = 3305750
	tFirstWorldBudokai_Box[5][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[5][1]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[5][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[5][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[5][1]["LogId"] = 12000892
	tFirstWorldBudokai_Box[5][1]["LogStep"] = "2"
	tFirstWorldBudokai_Box[5][2] = {}
	tFirstWorldBudokai_Box[5][2]["RewardItem"] = {}
	tFirstWorldBudokai_Box[5][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[5][2]["RewardItem"][1]["Id"] = 3305750
	tFirstWorldBudokai_Box[5][2]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_Box[5][2]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[5][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[5][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[5][2]["LogId"] = 12000892
	tFirstWorldBudokai_Box[5][2]["LogStep"] = "2"
	tFirstWorldBudokai_Box[5][3] = {}
	tFirstWorldBudokai_Box[5][3]["RewardItem"] = {}
	tFirstWorldBudokai_Box[5][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[5][3]["RewardItem"][1]["Id"] = 3306069
	tFirstWorldBudokai_Box[5][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[5][3]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[5][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[5][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[5][3]["LogId"] = 12000892
	tFirstWorldBudokai_Box[5][3]["LogStep"] = "2"
	tFirstWorldBudokai_Box[5][4] = {}
	tFirstWorldBudokai_Box[5][4]["RewardItem"] = {}
	tFirstWorldBudokai_Box[5][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[5][4]["RewardItem"][1]["Id"] = 3306058
	tFirstWorldBudokai_Box[5][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[5][4]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[5][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[5][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[5][4]["LogId"] = 12000892
	tFirstWorldBudokai_Box[5][4]["LogStep"] = "2"
	-- 6星奖励
	tFirstWorldBudokai_Box[6] = {}
	tFirstWorldBudokai_Box[6][1] = {}
	tFirstWorldBudokai_Box[6][1]["RewardItem"] = {}
	tFirstWorldBudokai_Box[6][1]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[6][1]["RewardItem"][1]["Id"] = 3305751
	tFirstWorldBudokai_Box[6][1]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[6][1]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[6][1]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[6][1]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[6][1]["LogId"] = 12000892
	tFirstWorldBudokai_Box[6][1]["LogStep"] = "2"
	tFirstWorldBudokai_Box[6][2] = {}
	tFirstWorldBudokai_Box[6][2]["RewardItem"] = {}
	tFirstWorldBudokai_Box[6][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[6][2]["RewardItem"][1]["Id"] = 3305751
	tFirstWorldBudokai_Box[6][2]["RewardItem"][1]["Attr"] = "0 2"
	tFirstWorldBudokai_Box[6][2]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[6][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[6][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[6][2]["LogId"] = 12000892
	tFirstWorldBudokai_Box[6][2]["LogStep"] = "2"
	tFirstWorldBudokai_Box[6][3] = {}
	tFirstWorldBudokai_Box[6][3]["RewardItem"] = {}
	tFirstWorldBudokai_Box[6][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[6][3]["RewardItem"][1]["Id"] = 3306059
	tFirstWorldBudokai_Box[6][3]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[6][3]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[6][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[6][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[6][3]["LogId"] = 12000892
	tFirstWorldBudokai_Box[6][3]["LogStep"] = "2"
	tFirstWorldBudokai_Box[6][4] = {}
	tFirstWorldBudokai_Box[6][4]["RewardItem"] = {}
	tFirstWorldBudokai_Box[6][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_Box[6][4]["RewardItem"][1]["Id"] = 3306060
	tFirstWorldBudokai_Box[6][4]["RewardItem"][1]["Attr"] = "0 1"
	tFirstWorldBudokai_Box[6][4]["RewardEffect"] = {}
	tFirstWorldBudokai_Box[6][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_Box[6][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_Box[6][4]["LogId"] = 12000892
	tFirstWorldBudokai_Box[6][4]["LogStep"] = "2"
	
	
local tFirstWorldBudokai_DropItem = {}
	-- 1星掉落 10本奇门秘籍 5个10分钟经验包
	tFirstWorldBudokai_DropItem[1] = {723340,723340,723340,723340,723340,723340,723340,723340,723340,723340,
										3006531,3006531,3006531,3006531,3006531}
	-- 2星掉落 3个流星 5个10分钟经验包 5个10点修行值包
	tFirstWorldBudokai_DropItem[2] = {1088001,1088001,1088001,
										3006531,3006531,3006531,3006531,3006531,
										3006534,3006534,3006534,3006534,3006534}
	-- 3星掉落 5个流星 5个10分钟经验包 5个10点修行值包 5个10点气力值包 
	tFirstWorldBudokai_DropItem[3] = {1088001,1088001,1088001,1088001,1088001,
										3006531,3006531,3006531,3006531,3006531,
										3006534,3006534,3006534,3006534,3006534,
										3006537,3006537,3006537,3006537,3006537}
	-- 4星掉落 8个流星 5个10分钟经验包 5个10点修行值包 5个10点气力值包 3个低阶赤炼石(赠)包 技能外套碎片
	tFirstWorldBudokai_DropItem[4] = {1088001,1088001,1088001,1088001,1088001,1088001,1088001,1088001,
										3006531,3006531,3006531,3006531,3006531,
										3006534,3006534,3006534,3006534,3006534,
										3006537,3006537,3006537,3006537,3006537,
										3200717,3200717,3200717,
										3301425,
										3306362}
	-- 5星掉落 1个流星卷 5个10分钟经验包 5个10点修行值包 5个10点气力值包 3个低阶赤炼石(赠)包 3个低阶星陨石包 3个技能外套碎片
	tFirstWorldBudokai_DropItem[5] = {720027,
										3006531,3006531,3006531,3006531,3006531,
										3006534,3006534,3006534,3006534,3006534,
										3006537,3006537,3006537,3006537,3006537,
										3200717,3200717,3200717,
										3200719,3200719,3200719,
										3301425,3301425,3301425,
										3306362,3306362}
	-- 6星掉落 2个流星卷 5个10分钟经验包 5个10点修行值包 5个10点气力值包 3个低阶赤炼石(赠)包 3个低阶星陨石包 3个高阶星陨石包 10个技能外套碎片
	tFirstWorldBudokai_DropItem[6] = {720027,720027,
										3006531,3006531,3006531,3006531,3006531,
										3006534,3006534,3006534,3006534,3006534,
										3006537,3006537,3006537,3006537,3006537,
										3200717,3200717,3200717,
										3200719,3200719,3200719,
										3200720,3200720,3200720,
										3301425,3301425,3301425,3301425,3301425,3301425,3301425,3301425,3301425,3301425,
										3306362,3306362,3306362}
	
local tFirstWorldBudokai_Mail = {}
	tFirstWorldBudokai_Mail["ExistDay"] = 7
	-- 参与奖
	tFirstWorldBudokai_Mail["Join"] = {}
	tFirstWorldBudokai_Mail["Join"][1] = 94204060
	tFirstWorldBudokai_Mail["Join"][2] = 94204061
	tFirstWorldBudokai_Mail["Join"][3] = 94204062
	tFirstWorldBudokai_Mail["Join"][4] = 94204063
	tFirstWorldBudokai_Mail["Join"][5] = 94204064
	tFirstWorldBudokai_Mail["Join"][6] = 94204065
	-- 击杀奖
	tFirstWorldBudokai_Mail["KillFresh"] = {}
	tFirstWorldBudokai_Mail["KillFresh"][1] = 94204060
	tFirstWorldBudokai_Mail["KillFresh"][2] = 94204061
	tFirstWorldBudokai_Mail["KillFresh"][3] = 94204062
	tFirstWorldBudokai_Mail["KillFresh"][4] = 94204063
	tFirstWorldBudokai_Mail["KillFresh"][5] = 94204064
	tFirstWorldBudokai_Mail["KillFresh"][6] = 94204065
	-- 每日奖
	tFirstWorldBudokai_Mail["Daily"] = {}
	tFirstWorldBudokai_Mail["Daily"][1] = 94204072
	tFirstWorldBudokai_Mail["Daily"][2] = 94204074
	tFirstWorldBudokai_Mail["Daily"][3] = 94204076
	tFirstWorldBudokai_Mail["Daily"][4] = 94204078
	tFirstWorldBudokai_Mail["Daily"][5] = 94204080
	tFirstWorldBudokai_Mail["Daily"][6] = 94204082
	tFirstWorldBudokai_Mail["Daily"][7] = 94204084
	tFirstWorldBudokai_Mail["Daily"][8] = 94204086
	tFirstWorldBudokai_Mail["Daily"][9] = 94204088
	tFirstWorldBudokai_Mail["Daily"][10] = 94204090
	-- 总奖
	tFirstWorldBudokai_Mail["Total"] = {}
	tFirstWorldBudokai_Mail["Total"][1] = 94260560
	tFirstWorldBudokai_Mail["Total"][2] = 94260563
	tFirstWorldBudokai_Mail["Total"][3] = 94260566
	tFirstWorldBudokai_Mail["Total"][4] = 94260569
	tFirstWorldBudokai_Mail["Total"][5] = 94260572
	tFirstWorldBudokai_Mail["Total"][6] = 94260575
	tFirstWorldBudokai_Mail["Total"][7] = 94260578
	tFirstWorldBudokai_Mail["Total"][8] = 94260581
	tFirstWorldBudokai_Mail["Total"][9] = 94260584
	tFirstWorldBudokai_Mail["Total"][10] = 94260587
	-- 召唤奖
	tFirstWorldBudokai_Mail["Call"] = {}
	tFirstWorldBudokai_Mail["Call"][1] = 94204060
	tFirstWorldBudokai_Mail["Call"][2] = 94204061
	tFirstWorldBudokai_Mail["Call"][3] = 94204062
	-- 击杀奖
	tFirstWorldBudokai_Mail["KillCall"] = {}
	tFirstWorldBudokai_Mail["KillCall"][1] = 94204060
	tFirstWorldBudokai_Mail["KillCall"][2] = 94204061
	tFirstWorldBudokai_Mail["KillCall"][3] = 94204062
	-- 每日奖
	tFirstWorldBudokai_Mail["DailyAward"] = {}
	tFirstWorldBudokai_Mail["DailyAward"][1] = 94485097
	-- 每日杀六星奖
	tFirstWorldBudokai_Mail["Kill6Star"] = {}
	tFirstWorldBudokai_Mail["Kill6Star"][1] = 94204066	
	tFirstWorldBudokai_Mail["Kill6Star"][2] = 94204067	
	tFirstWorldBudokai_Mail["Kill6Star"][3] = 94204068	
	tFirstWorldBudokai_Mail["Kill6Star"][4] = 94204069	
	tFirstWorldBudokai_Mail["Kill6Star"][5] = 94204070	
	tFirstWorldBudokai_Mail["Kill6Star"][6] = 94204071	
	
	tFirstWorldBudokai_Mail["ItemId"] = {}
	tFirstWorldBudokai_Mail["ItemId"][1] = 3305746	
	tFirstWorldBudokai_Mail["ItemId"][2] = 3305747	
	tFirstWorldBudokai_Mail["ItemId"][3] = 3305748	
	tFirstWorldBudokai_Mail["ItemId"][4] = 3305749	
	tFirstWorldBudokai_Mail["ItemId"][5] = 3305750	
	tFirstWorldBudokai_Mail["ItemId"][6] = 3305751	
	
local tFirstWorldBudokai_Map = {1002,10250,10137}

local tFirstWorldBudokai_Rank = {}
	
-- 累计奖励档位
local tFirstWorldBudokai_AddUp = {}
	tFirstWorldBudokai_AddUp[1] = 1
	tFirstWorldBudokai_AddUp[2] = 5
	tFirstWorldBudokai_AddUp[3] = 10
	tFirstWorldBudokai_AddUp[4] = 20
	tFirstWorldBudokai_AddUp[5] = 50
	tFirstWorldBudokai_AddUp[6] = 100
	tFirstWorldBudokai_AddUp[7] = 300
	tFirstWorldBudokai_AddUp[8] = 500
	tFirstWorldBudokai_AddUp[9] = 800
	tFirstWorldBudokai_AddUp[10] = 1000
	
-- 动态码记录排行
local tFirstWorldBudokai_GlobalRank = {}
	-- 记录分数和名字
	tFirstWorldBudokai_GlobalRank[1] = {}
	tFirstWorldBudokai_GlobalRank[1][1] = {}
	tFirstWorldBudokai_GlobalRank[1][1]["GlobalId"] = 51817
	tFirstWorldBudokai_GlobalRank[1][1]["Data"] = 1
	tFirstWorldBudokai_GlobalRank[1][1]["UserName"] = 1
	tFirstWorldBudokai_GlobalRank[1][2] = {}
	tFirstWorldBudokai_GlobalRank[1][2]["GlobalId"] = 51817
	tFirstWorldBudokai_GlobalRank[1][2]["Data"] = 2
	tFirstWorldBudokai_GlobalRank[1][2]["UserName"] = 2
	tFirstWorldBudokai_GlobalRank[1][3] = {}
	tFirstWorldBudokai_GlobalRank[1][3]["GlobalId"] = 51817
	tFirstWorldBudokai_GlobalRank[1][3]["Data"] = 3
	tFirstWorldBudokai_GlobalRank[1][3]["UserName"] = 3
	tFirstWorldBudokai_GlobalRank[1][4] = {}
	tFirstWorldBudokai_GlobalRank[1][4]["GlobalId"] = 51817
	tFirstWorldBudokai_GlobalRank[1][4]["Data"] = 4
	tFirstWorldBudokai_GlobalRank[1][4]["UserName"] = 4
	tFirstWorldBudokai_GlobalRank[1][5] = {}
	tFirstWorldBudokai_GlobalRank[1][5]["GlobalId"] = 51817
	tFirstWorldBudokai_GlobalRank[1][5]["Data"] = 5
	tFirstWorldBudokai_GlobalRank[1][5]["UserName"] = 5
	tFirstWorldBudokai_GlobalRank[1][6] = {}
	tFirstWorldBudokai_GlobalRank[1][6]["GlobalId"] = 51818
	tFirstWorldBudokai_GlobalRank[1][6]["Data"] = 1
	tFirstWorldBudokai_GlobalRank[1][6]["UserName"] = 1
	tFirstWorldBudokai_GlobalRank[1][7] = {}
	tFirstWorldBudokai_GlobalRank[1][7]["GlobalId"] = 51818
	tFirstWorldBudokai_GlobalRank[1][7]["Data"] = 2
	tFirstWorldBudokai_GlobalRank[1][7]["UserName"] = 2
	tFirstWorldBudokai_GlobalRank[1][8] = {}
	tFirstWorldBudokai_GlobalRank[1][8]["GlobalId"] = 51818
	tFirstWorldBudokai_GlobalRank[1][8]["Data"] = 3
	tFirstWorldBudokai_GlobalRank[1][8]["UserName"] = 3
	tFirstWorldBudokai_GlobalRank[1][9] = {}
	tFirstWorldBudokai_GlobalRank[1][9]["GlobalId"] = 51818
	tFirstWorldBudokai_GlobalRank[1][9]["Data"] = 4
	tFirstWorldBudokai_GlobalRank[1][9]["UserName"] = 4
	tFirstWorldBudokai_GlobalRank[1][10] = {}
	tFirstWorldBudokai_GlobalRank[1][10]["GlobalId"] = 51818
	tFirstWorldBudokai_GlobalRank[1][10]["Data"] = 5
	tFirstWorldBudokai_GlobalRank[1][10]["UserName"] = 5
	-- 记录玩家id
	tFirstWorldBudokai_GlobalRank[2] = {}
	tFirstWorldBudokai_GlobalRank[2][1] = {}
	tFirstWorldBudokai_GlobalRank[2][1]["GlobalId"] = 51819
	tFirstWorldBudokai_GlobalRank[2][1]["UserId"] = 1
	tFirstWorldBudokai_GlobalRank[2][2] = {}
	tFirstWorldBudokai_GlobalRank[2][2]["GlobalId"] = 51819
	tFirstWorldBudokai_GlobalRank[2][2]["UserId"] = 2
	tFirstWorldBudokai_GlobalRank[2][3] = {}
	tFirstWorldBudokai_GlobalRank[2][3]["GlobalId"] = 51819
	tFirstWorldBudokai_GlobalRank[2][3]["UserId"] = 3
	tFirstWorldBudokai_GlobalRank[2][4] = {}
	tFirstWorldBudokai_GlobalRank[2][4]["GlobalId"] = 51819
	tFirstWorldBudokai_GlobalRank[2][4]["UserId"] = 4
	tFirstWorldBudokai_GlobalRank[2][5] = {}
	tFirstWorldBudokai_GlobalRank[2][5]["GlobalId"] = 51819
	tFirstWorldBudokai_GlobalRank[2][5]["UserId"] = 5
	tFirstWorldBudokai_GlobalRank[2][6] = {}
	tFirstWorldBudokai_GlobalRank[2][6]["GlobalId"] = 51820
	tFirstWorldBudokai_GlobalRank[2][6]["UserId"] = 1
	tFirstWorldBudokai_GlobalRank[2][7] = {}
	tFirstWorldBudokai_GlobalRank[2][7]["GlobalId"] = 51820
	tFirstWorldBudokai_GlobalRank[2][7]["UserId"] = 2
	tFirstWorldBudokai_GlobalRank[2][8] = {}
	tFirstWorldBudokai_GlobalRank[2][8]["GlobalId"] = 51820
	tFirstWorldBudokai_GlobalRank[2][8]["UserId"] = 3
	tFirstWorldBudokai_GlobalRank[2][9] = {}
	tFirstWorldBudokai_GlobalRank[2][9]["GlobalId"] = 51820
	tFirstWorldBudokai_GlobalRank[2][9]["UserId"] = 4
	tFirstWorldBudokai_GlobalRank[2][10] = {}
	tFirstWorldBudokai_GlobalRank[2][10]["GlobalId"] = 51820
	tFirstWorldBudokai_GlobalRank[2][10]["UserId"] = 5
	
local tFirstWorldBudokai_Log = {}
	tFirstWorldBudokai_Log["Join"] = "0,0,0,0,12000892,1[1],0,1"
	tFirstWorldBudokai_Log["Call"] = "0,0,0,0,12000892,1[1],0,2"
	tFirstWorldBudokai_Log["KillFresh"] = "0,0,0,0,12000892,1[2],0,1"
	tFirstWorldBudokai_Log["KillCall"] = "0,0,0,0,12000892,1[2],0,2"
	tFirstWorldBudokai_Log["Daily"] = "0,0,0,0,12000892,1[3],0,%d"
	tFirstWorldBudokai_Log["Total"] = "0,0,0,0,12000892,1[5],0,%d"
	tFirstWorldBudokai_Log["ChallengePack"] = "0,0,%d,1,12000892,1[6],0,0"
	
local tFirstWorldBudokai_ELog = {}
	tFirstWorldBudokai_ELog["KillBoss"] = {}
	tFirstWorldBudokai_ELog["KillBoss"][1] = "350	21068	0	0	1	"
	tFirstWorldBudokai_ELog["KillBoss"][2] = "350	21069	0	0	1	"
	tFirstWorldBudokai_ELog["KillBoss"][3] = "350	21070	0	0	1	"
	tFirstWorldBudokai_ELog["KillBoss"][4] = "350	21071	0	0	1	"
	tFirstWorldBudokai_ELog["KillBoss"][5] = "350	21072	0	0	1	"
	tFirstWorldBudokai_ELog["KillBoss"][6] = "350	21073	0	0	1	"
	--进入副本log
	tFirstWorldBudokai_ELog["Into"] = {}
	tFirstWorldBudokai_ELog["Into"][1] = "350	21966	0	0	1	"
	tFirstWorldBudokai_ELog["Into"][2] = "350	21968	0	0	1	"
	tFirstWorldBudokai_ELog["Into"][3] = "350	21970	0	0	1	"
	tFirstWorldBudokai_ELog["Into"][4] = "350	21972	0	0	1	"
	tFirstWorldBudokai_ELog["Into"][5] = "350	21974	0	0	1	"
	tFirstWorldBudokai_ELog["Into"][6] = "350	21976	0	0	1	"
	--击杀BOSSlog
	tFirstWorldBudokai_ELog["KillBossNew"] = {}
	tFirstWorldBudokai_ELog["KillBossNew"][1] = "350	21967	0	0	1	"
	tFirstWorldBudokai_ELog["KillBossNew"][2] = "350	21969	0	0	1	"
	tFirstWorldBudokai_ELog["KillBossNew"][3] = "350	21971	0	0	1	"
	tFirstWorldBudokai_ELog["KillBossNew"][4] = "350	21973	0	0	1	"
	tFirstWorldBudokai_ELog["KillBossNew"][5] = "350	21975	0	0	1	"
	tFirstWorldBudokai_ELog["KillBossNew"][6] = "350	21977	0	0	1	"
	
local tFirstWorldBudokai_Buff = {}
	tFirstWorldBudokai_Buff[3306061] = 1
	tFirstWorldBudokai_Buff[3306062] = 2
	tFirstWorldBudokai_Buff[3306063] = 3
	tFirstWorldBudokai_Buff[3306064] = 4
	tFirstWorldBudokai_Buff[3306065] = 5
	
local tFirstWorldBudokai_Random = {}
	tFirstWorldBudokai_Random["FreshBox"] = {}
	tFirstWorldBudokai_Random["FreshBox"]["StartNum"] = 100
	tFirstWorldBudokai_Random["FreshBox"]["EndNum"] = 10000
	tFirstWorldBudokai_Random["DropBuff"] = {}
	tFirstWorldBudokai_Random["DropBuff"]["StartNum"] = 100
	tFirstWorldBudokai_Random["DropBuff"]["EndNum"] = 10000
	tFirstWorldBudokai_Random["DailyExtra"] = {}
	tFirstWorldBudokai_Random["DailyExtra"]["StartNum"] = 3000
	tFirstWorldBudokai_Random["DailyExtra"]["EndNum"] = 10000
	tFirstWorldBudokai_Random["DropChallengePack"] = {}
	tFirstWorldBudokai_Random["DropChallengePack"]["StartNum"] = 100
	tFirstWorldBudokai_Random["DropChallengePack"]["EndNum"] = 10000
	tFirstWorldBudokai_Random["Compose"] = {}
	tFirstWorldBudokai_Random["Compose"]["StartNum"] = 4800
	tFirstWorldBudokai_Random["Compose"]["EndNum"] = 10000
	tFirstWorldBudokai_Random["KillMonsterFreshBox"] = {}
	tFirstWorldBudokai_Random["KillMonsterFreshBox"]["StartNum"] = 10
	tFirstWorldBudokai_Random["KillMonsterFreshBox"]["EndNum"] = 10000
	
local tFirstWorldBudokai_Team = {}

local tFirstWorldBudokai_Invite = {}		--全服邀请设置
	tFirstWorldBudokai_Invite["MapId"] = 1002
	tFirstWorldBudokai_Invite["Activity_Invite_1"] = "level >= 100 metempsychosis >= 2"
	tFirstWorldBudokai_Invite["Activity_InviteId"] = 5
	--全服邀请任意8个点
	tFirstWorldBudokai_Invite["Invite_Pos"] ={}
	tFirstWorldBudokai_Invite["Invite_Pos"][1] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][1]["X"] = 444
	tFirstWorldBudokai_Invite["Invite_Pos"][1]["Y"] = 511
	
	tFirstWorldBudokai_Invite["Invite_Pos"][2] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][2]["X"] = 450
	tFirstWorldBudokai_Invite["Invite_Pos"][2]["Y"] = 510
	
	tFirstWorldBudokai_Invite["Invite_Pos"][3] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][3]["X"] = 440
	tFirstWorldBudokai_Invite["Invite_Pos"][3]["Y"] = 510
	
	tFirstWorldBudokai_Invite["Invite_Pos"][4] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][4]["X"] = 463
	tFirstWorldBudokai_Invite["Invite_Pos"][4]["Y"] = 511
	
	tFirstWorldBudokai_Invite["Invite_Pos"][5] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][5]["X"] = 460
	tFirstWorldBudokai_Invite["Invite_Pos"][5]["Y"] = 510
	
	tFirstWorldBudokai_Invite["Invite_Pos"][6] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][6]["X"] = 465
	tFirstWorldBudokai_Invite["Invite_Pos"][6]["Y"] = 510
	
	tFirstWorldBudokai_Invite["Invite_Pos"][7] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][7]["X"] = 478
	tFirstWorldBudokai_Invite["Invite_Pos"][7]["Y"] = 507
	
	tFirstWorldBudokai_Invite["Invite_Pos"][8] = {}
	tFirstWorldBudokai_Invite["Invite_Pos"][8]["X"] = 480
	tFirstWorldBudokai_Invite["Invite_Pos"][8]["Y"] = 510
	--全服邀请对白
	tFirstWorldBudokai_Invite["InviteSendId"] = 10574
	tFirstWorldBudokai_Invite["InviteSendOkId"] = 10575
	--全服邀请倒计时
	tFirstWorldBudokai_Invite["InviteCountDown"] = 30
	
local tFirstWorldBudokai_Chgmap = {}
	tFirstWorldBudokai_Chgmap[1] = {}
	tFirstWorldBudokai_Chgmap[1]["MapId"] = 1002
	tFirstWorldBudokai_Chgmap[1]["PosX"] = 374
	tFirstWorldBudokai_Chgmap[1]["PosY"] = 395
	
local tFirstWorldBudokai_DelBuff = {}	
	tFirstWorldBudokai_DelBuff["Status"] = {}
	tFirstWorldBudokai_DelBuff["Status"][1] = {139,140}		-- 增加10000攻击力，30000魔法攻击力	90秒
	tFirstWorldBudokai_DelBuff["Status"][2] = 138        -- 增加100000点生命	90秒
	tFirstWorldBudokai_DelBuff["Status"][3] = 136        -- 增加200%粉碎攻击	90秒
	tFirstWorldBudokai_DelBuff["Status"][4] = 135        -- 增加200%抵抗暴击	90秒
	tFirstWorldBudokai_DelBuff["Status"][5] = 150        -- 旋风状态	90秒

-------------------------------------一月神纹月活动新增礼包-----------------------
	-- 黄色神纹(赠)可选包
	tFirstWorldBudokai_AwardItem[3311901] = {}
	-- 效果-PK值减少
	-- tFirstWorldBudokai_AwardItem[3311901][1] = {}
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardEffect"] = {}
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardEffect"]["SzObj"] = "self"
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardEffect"]["Effect"] = "eidolon"
	-- tFirstWorldBudokai_AwardItem[3311901][1]["DeleteItem"] = {}
	-- tFirstWorldBudokai_AwardItem[3311901][1]["DeleteItem"][1] = {}
	-- tFirstWorldBudokai_AwardItem[3311901][1]["DeleteItem"][1]["Id"] = 3306365
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardItem"] = {}
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardItem"][1] = {}
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardItem"][1]["Id"] = 4030001
	-- tFirstWorldBudokai_AwardItem[3311901][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tFirstWorldBudokai_AwardItem[3311901][1]["LogId"] = 12000892
	-- 效果-玄元伤害封顶
	tFirstWorldBudokai_AwardItem[3311901][2] = {}
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][2]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][2]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][2]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardItem"][1]["Id"] = 4030101
	tFirstWorldBudokai_AwardItem[3311901][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][2]["LogId"] = 12000892
	-- 效果-吸星大法等级提高
	tFirstWorldBudokai_AwardItem[3311901][3] = {}
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][3]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][3]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][3]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardItem"][1]["Id"] = 4030201
	tFirstWorldBudokai_AwardItem[3311901][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][3]["LogId"] = 12000892
	-- 效果-化血神功等级提高
	tFirstWorldBudokai_AwardItem[3311901][4] = {}
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][4]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][4]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][4]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardItem"][1]["Id"] = 4030301
	tFirstWorldBudokai_AwardItem[3311901][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][4]["LogId"] = 12000892
	-- 效果-生命魔法自动恢复
	tFirstWorldBudokai_AwardItem[3311901][5] = {}
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][5]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][5]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][5]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardItem"][1]["Id"] = 4030401
	tFirstWorldBudokai_AwardItem[3311901][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][5]["LogId"] = 12000892
	-- 效果-不良状态免疫
	tFirstWorldBudokai_AwardItem[3311901][6] = {}
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][6]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][6]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][6]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardItem"][1]["Id"] = 4030501
	tFirstWorldBudokai_AwardItem[3311901][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][6]["LogId"] = 12000892
	-- 效果-XP状态时间减少
	tFirstWorldBudokai_AwardItem[3311901][7] = {}
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][7]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][7]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][7]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardItem"][1]["Id"] = 4030601
	tFirstWorldBudokai_AwardItem[3311901][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][7]["LogId"] = 12000892
	-- 效果-背包物品爆率加成
	tFirstWorldBudokai_AwardItem[3311901][8] = {}
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][8]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][8]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][8]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardItem"][1]["Id"] = 4030701
	tFirstWorldBudokai_AwardItem[3311901][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][8]["LogId"] = 12000892
	-- 效果-魔法消耗减少
	tFirstWorldBudokai_AwardItem[3311901][9] = {}
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][9]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][9]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][9]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardItem"][1]["Id"] = 4030801
	tFirstWorldBudokai_AwardItem[3311901][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][9]["LogId"] = 12000892
	-- 效果-对BOSS伤害加成
	tFirstWorldBudokai_AwardItem[3311901][10] = {}
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][10]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][10]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][10]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardItem"][1]["Id"] = 4030901
	tFirstWorldBudokai_AwardItem[3311901][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][10]["LogId"] = 12000892
	-- 效果-伤害补偿
	tFirstWorldBudokai_AwardItem[3311901][11] = {}
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][11]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][11]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][11]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardItem"][1]["Id"] = 4031001
	tFirstWorldBudokai_AwardItem[3311901][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][11]["LogId"] = 12000892
	-- 效果-XP状态时间增加
	tFirstWorldBudokai_AwardItem[3311901][12] = {}
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][12]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][12]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][12]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardItem"][1]["Id"] = 4031101
	tFirstWorldBudokai_AwardItem[3311901][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][12]["LogId"] = 12000892
	-- 效果-天外之魂等级提高
	tFirstWorldBudokai_AwardItem[3311901][13] = {}
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][13]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][13]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][13]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardItem"][1]["Id"] = 4031201
	tFirstWorldBudokai_AwardItem[3311901][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][13]["LogId"] = 12000892
	-- 效果-
	tFirstWorldBudokai_AwardItem[3311901][14] = {}
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardEffect"] = {}
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardEffect"]["SzObj"] = "self"
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardEffect"]["Effect"] = "eidolon"
	tFirstWorldBudokai_AwardItem[3311901][14]["DeleteItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][14]["DeleteItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][14]["DeleteItem"][1]["Id"] = 3311901
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardItem"] = {}
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardItem"][1] = {}
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardItem"][1]["Id"] = 4031301
	tFirstWorldBudokai_AwardItem[3311901][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tFirstWorldBudokai_AwardItem[3311901][14]["LogId"] = 12000892
---------------------------------------------逻辑模块---------------------------------------------
-- 新服判断
function FirstWorldBudokai_CheckNewServer()
	local nGlobalId = tFirstWorldBudokai_Cont["NewServer"]["GlobalId"]
	local nPos = tFirstWorldBudokai_Cont["NewServer"]["Pos"]
	if Get_SysDynaGlobalData(nGlobalId,nPos) >= 1 then
		return true
	else
		return false
	end
end

-- 兑换商店
function FirstWorldBudokai_ExchangeShop(nNpcId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotExchangeTime"],nil,nil,nUserId)
		return
	end
	User_OpenExchangeShop(nNpcId,nUserId)
end

--1-3星挑战令召唤BOSS
function FirstWorldBudokai_CallBoss(nItemTypeId)
	--过期删除
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["TokenOverTime"])
		end
		
		return
	end
	
	if not FirstWorldBudokai_JudgeLevel() then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotLevel"],nil,nil,nUserId)
		return
	end
	
	if not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime"]) and not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime1"]) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotRankTime"],nil,nil,nUserId)
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)

	--判断城区区域（不能招boss）
	for k,v in pairs(tFirstWorldBudokai_Cont["SafeArea"]) do
		if nMapId ~= v["MapId"] then
			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["MapNoCall"],nil,nil,nUserId)
			return
		else
			for i,j in pairs(v["Area"]) do
				if nPosX >= j["MinPosX"] and nPosX <= j["MaxPosX"] and nPosY >= j["MinPosY"] and nPosY <= j["MaxPosY"] then
					Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["SafeNoCall"],nil,nil,nUserId)
					return
				end
			end
		end
	end
	
	local nGenId = tFirstWorldBudokai_Cont["GenId"]
	local nMonsterId = tFirstWorldBudokai_Cont["ItemMonster"][nItemTypeId][1]
	local sMonsterName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
	
	--读取怪物星级
	local nStar = FirstWorldBudokai_GetMonsterStar(nMonsterId)
	if nStar == 0 then
		return
	end
	
	--开始招BOSS
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
			FirstWorldBudokai_SendMail("Call",nStar,nUserId,nServerId)
			Sys_MsgBox(string.format(tFirstWorldBudokai_Text["MsgBox"]["CallSucc"], sMonsterName, nStar))
		end
	end
end

-- 4-6星挑战令前置判断
function FirstWorldBudokai_46StarCallJudge(nUserId)
	--过期删除
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["TokenOverTime"])
		end
		return false
	end
	
	-- 等级判断
	if not FirstWorldBudokai_JudgeLevel() then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotLevel"],nil,nil,nUserId)
		return false
	end
	
	-- 每日时间判断
	if not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime"]) and not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime1"]) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotRankTime"],nil,nil,nUserId)
		return false
	end
	
	--组队且不是队长不能招boss
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	
	local nMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nMapId)
	local sMapName = Get_MapName(nMapId)
	local sLimitMapName = Get_MapName(tFirstWorldBudokai_Cont["Arena"])
	if sMapName == sLimitMapName then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotAllowMap"],nil,nil,nUserId)
		return false
	end
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotAllowMap"],nil,nil,nUserId)
		return false
	end
	
	--组队且不是队长不能招boss
	if nTeamNum ~= 0 and (not User_IsTeamLeader(nUserId)) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["TeamNoLeader"])
		return false
	end
	
	return true
end
	

-- 4-6星开始挑战选项
function FirstWorldBudokai_Prepare(nItemTypeId)
	local nUserId = Get_UserId()
	if not FirstWorldBudokai_46StarCallJudge(nUserId) then
		return
	end
	LinkItemGossipFunc_New(nItemTypeId,"2-1")
end
	
	

--4-6星挑战令召唤BOSS
function FirstWorldBudokai_IntoCallBoss(nItemTypeId,nBuffItem)
	local nUserId = Get_UserId()
	-- --过期删除
	-- if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
	-- 	if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
	-- 		User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["TokenOverTime"])
	-- 	end
	-- 	return
	-- end
	-- 
	-- -- 等级判断
	-- if not FirstWorldBudokai_JudgeLevel() then
	-- 	Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotLevel"],nil,nil,nUserId)
	-- 	return
	-- end
	-- 
	-- -- 每日时间判断
	-- if not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime"]) then
	-- 	Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotRankTime"],nil,nil,nUserId)
	-- 	return
	-- end
	-- 
	-- local nUserId = Get_UserId()
	-- local nTeamNum = Get_UserTeamNumbers(nUserId)
	-- 
	-- local nMapId = Get_UserMapId(nUserId)
	-- local nMapType = Get_MapType(nMapId)
	-- local sMapName = Get_MapName(nMapId)
	-- local sLimitMapName = Get_MapName(tFirstWorldBudokai_Cont["Arena"])
	-- if sMapName == sLimitMapName then
	-- 	Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotAllowMap"],nil,nil,nUserId)
	-- 	return
	-- end
	-- if Sys_ParseNumbersContain(256,nMapType) then
	-- 	Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotAllowMap"],nil,nil,nUserId)
	-- 	return 
	-- end
	-- 
	-- --组队且不是队长不能招boss
	-- if nTeamNum ~= 0 and (not User_IsTeamLeader(nUserId)) then
	-- 	Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["TeamNoLeader"])
	-- 	return
	-- end
	if not FirstWorldBudokai_46StarCallJudge(nUserId) then
		return
	end
	if nBuffItem ~= 0 then
		if not Item_ChkItem(nBuffItem) then
			local sBuffItemName = Get_ItemtypeName(nBuffItem)
			Sys_MsgBox(string.format(tFirstWorldBudokai_Text["MsgBox"]["NoBuffItem"],sBuffItemName),nil,nil,nUserId)
			return
		end
	end
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	if nTeamNum >= 1 then
		tFirstWorldBudokai_Team[nUserId] = {}
		tFirstWorldBudokai_Team[nUserId]["Num"] = nTeamNum
		tFirstWorldBudokai_Team[nUserId]["Map"] = nMapId
		tFirstWorldBudokai_Team[nUserId]["LevelLimit"] = 0
		tFirstWorldBudokai_Team[nUserId]["MapLimit"] = 0
		tFirstWorldBudokai_Team[nUserId]["BoothLimit"] = 0
		if not User_TeamExeFuncByLeader(3, string.format("FirstWorldBudokai_TeamJudge</N>%d",nUserId), nUserId) then
			return
		end
		if tFirstWorldBudokai_Team[nUserId]["LevelLimit"] ~= tFirstWorldBudokai_Team[nUserId]["Num"] then
			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["TeamLevel"],nil,nil,nUserId)
			return
		end
		if tFirstWorldBudokai_Team[nUserId]["MapLimit"] ~= tFirstWorldBudokai_Team[nUserId]["Num"] then
			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["TeamMap"],nil,nil,nUserId)
			return
		end
		
		if tFirstWorldBudokai_Team[nUserId]["BoothLimit"] ~= tFirstWorldBudokai_Team[nUserId]["Num"] then
			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["TeamBooth"],nil,nil,nUserId)
			return
		end
		
	end
	
	--取BOSS星级
	local nStar = 0
	
	for k,v in pairs(tFirstWorldBudokai_Cont["Star"]) do
		for i,j in pairs(v) do
			if j == nItemTypeId then
				nStar = k
				break
			end
		end
		
		if nStar ~= 0 then
			break
		end
	end
	
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		--进入副本招BOSS
		if nTeamNum == 0 or nTeamNum == 1 then
			if nBuffItem ~= 0 then
				if not (Item_ChkItem(nBuffItem) and Item_DelItem(nBuffItem)) then
					nBuffItem = 0
				end
			end
			FirstWorldBudokai_TeamInstance(nBuffItem,nStar,nUserId)
		elseif User_IsTeamLeader(nUserId) then	
			if nBuffItem ~= 0 then
				if not (Item_ChkItem(nBuffItem) and Item_DelItem(nBuffItem)) then
					nBuffItem = 0
				end
			end
			if not User_TeamExeFuncByLeader(3, string.format("FirstWorldBudokai_TeamInstance</N>%d</N>%d",nBuffItem,nStar), nUserId) then
				return
			end
		else
			return
		end
		
		-- 刷npc
		local sFunc = string.format("FirstWorldBudokai_CreateInstanceNpc</N>%d</N>%d",nItemTypeId,nUserId)
		Sys_SetLuaTimer(1,sFunc,1,nUserId)
	end
end

-- 组队进入条件判断
function FirstWorldBudokai_TeamJudge(nLeaderUserId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if FirstWorldBudokai_JudgeLevel(nUserId) then
		tFirstWorldBudokai_Team[nLeaderUserId]["LevelLimit"] = tFirstWorldBudokai_Team[nLeaderUserId]["LevelLimit"] + 1
	end
	if Get_UserMapId(nUserId) == tFirstWorldBudokai_Team[nLeaderUserId]["Map"] then
		tFirstWorldBudokai_Team[nLeaderUserId]["MapLimit"] = tFirstWorldBudokai_Team[nLeaderUserId]["MapLimit"] + 1
	end
	
	--判断玩家位置
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	
	local bFlag = true
	
	for k,v in pairs(tFirstWorldBudokai_Cont["Position"]) do
		if nPosX >= v["MinX"] and nPosX <= v["MaxX"] and nPosY >= v["MinY"] and nPosY <= v["MaxY"] then
			bFlag = false
			break
		end
	end
	
	if bFlag then
		tFirstWorldBudokai_Team[nLeaderUserId]["BoothLimit"] = tFirstWorldBudokai_Team[nLeaderUserId]["BoothLimit"] + 1
	end
end

-- 清空buff掩码
function FirstWorldBudokai_BuffClear(nUserId)
	for i = 1,5 do 
		FirstWorldBudokai_RewardStc(8,i,nUserId,0)
	end
	for i = 1,6 do
		FirstWorldBudokai_RewardStc(11,i,nUserId,0)
	end
	return true
end

--打统计log
function FirstWorldBudokai_RecordELog(sIndex, nStar, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	Sys_SaveEmoneyBuy(tFirstWorldBudokai_ELog[sIndex][nStar],nUserId)
end

--团队触发进入副本
function FirstWorldBudokai_TeamInstance(nBuffItem,nStar,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nInstanceId = tFirstWorldBudokai_Cont["Instance"]["Id"]
	
	-- 清空神龙岛buff
	FirstWorldBudokai_DelStatus(nUserId)
	
	-- 清空击杀领奖掩码
	FirstWorldBudokai_RewardStc(5,1,nUserId,0)
	
	-- 清空召唤领奖掩码
	FirstWorldBudokai_RewardStc(9,1,nUserId,0)
	
	-- 清空buff掩码
	if not FirstWorldBudokai_BuffClear(nUserId) then
		return
	end
	if nBuffItem ~= 0 then
		FirstWorldBudokai_UseBuffItem(nBuffItem,nUserId)	
	end
		-- 进入副本
	if not User_EnterInstance(nInstanceId, 0, 0, 0, nUserId) then
		return
	end
	if nBuffItem == 0 then
		User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["IntoInstance"], nUserId)
	end
	
	--打进入log
	if nStar > 0 then
		FirstWorldBudokai_RecordELog("Into", nStar, nUserId)
	end
	
	-- 非双倍boss增益符，清楚双倍领奖掩码
	-- if FirstWorldBudokai_RewardStc(8,3,nUserId,0,1) ~= 1 then
		-- FirstWorldBudokai_RewardStc(11,1,nUserId,0)
		-- FirstWorldBudokai_RewardStc(11,2,nUserId,0)
	-- end
	-- if FirstWorldBudokai_RewardStc(8,4,nUserId,0,1) ~= 1 then
		-- FirstWorldBudokai_RewardStc(11,3,nUserId,0)
		-- FirstWorldBudokai_RewardStc(11,4,nUserId,0)
	-- end
	-- if FirstWorldBudokai_RewardStc(8,5,nUserId,0,1) ~= 1 then
		-- FirstWorldBudokai_RewardStc(11,5,nUserId,0)
		-- FirstWorldBudokai_RewardStc(11,6,nUserId,0)
	-- end
	
	-- 通知
	-- User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["IntoInstance"], nUserId)
end

--切屏点
function FirstWorldBudokai_Trap(nTrapId,nTrapType)
	Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["Return"], "FirstWorldBudokai_ChgMap")
end

--返回双龙城
function FirstWorldBudokai_ChgMap()
	local nUserId = Get_UserId()
	local nMapId = tFirstWorldBudokai_Chgmap[1]["MapId"]
	local nBoundX = tFirstWorldBudokai_Chgmap[1]["PosX"] 
	local nBoundY = tFirstWorldBudokai_Chgmap[1]["PosY"] 
	
	if User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId) then
		User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["Return"],nUserId)
	end
end

--读取怪物星级
function FirstWorldBudokai_GetMonsterStar(nMonsterId)
	for k,v in pairs(tFirstWorldBudokai_Cont["FreshBoss"]) do
		for i,j in pairs(v) do
			if j == nMonsterId then
				return k
			end
		end
	end
	for kk,vv in pairs(tFirstWorldBudokai_Cont["CallBoss"]) do
		for ii,jj in pairs(vv) do
			if jj == nMonsterId then
				return kk
			end
		end
	end
	return 0
end

-- 掩码控制总函数
function FirstWorldBudokai_RewardStc(nIndex,nPos,nUserId,nAdd,nGetOnly,nTaskDetail)
	local nEvent = tFirstWorldBudokai_Stc[nIndex]["EventType"]
	local nType = tFirstWorldBudokai_Stc[nIndex]["DataType"] 
	local nNotClear = tFirstWorldBudokai_Stc[nIndex]["NotClear"]
	local nRank = tFirstWorldBudokai_Stc[nIndex]["Rank"]
	local nSet = tFirstWorldBudokai_Stc[nIndex]["Set"]
	local nTaskDetailId = tFirstWorldBudokai_Stc[nIndex]["TaskDetail"]
	
	-- 判断隔天
	if nNotClear == nil then
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			if nTaskDetailId ~= nil then
				FirstWorldBudokai_ResetTaskDetail(nTaskDetailId,nUserId)
			end
		end
	end
	
	-- 获取当前总值和某一位的值
	local nTotalData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nData = math.floor((nTotalData / (10 ^ (nPos - 1))))
	
	-- 判断是否为多用掩码
	if #tFirstWorldBudokai_Stc[nIndex]["Limit"] > 1 then
		nData = nData % 10
	end
	
	-- 是否只是取值
	if nGetOnly == 1 then
		return nData
	end
	
	-- 是否只是设置taskdetail
	if nTaskDetail == 1 then
		if nTaskDetailId ~= nil then
			FirstWorldBudokai_SetTaskDetail(nTaskDetailId,nPos,nData,nUserId)
		end
		return
	end
	
	-- 判断上限
	local nNewData = 0
	local nLimit = tFirstWorldBudokai_Stc[nIndex]["Limit"][nPos]
	if ((nLimit ~= 0) and (nData >= nLimit)) then
		if nTaskDetailId ~= nil then
			FirstWorldBudokai_SetTaskDetail(nTaskDetailId,nPos,nData,nUserId)
		end
		return false
	else
		-- 未达上限
		if nSet == 1 then
			nNewData = math.floor(nTotalData - (nData * (10 ^ (nPos - 1))) + (nAdd * (10 ^ (nPos - 1))))
		else
			nNewData = math.floor(nTotalData + (nAdd * (10 ^ (nPos - 1))))
		end
	    Task_SetStatistic(nEvent,nType,nNewData,1,nUserId)
	    Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			-- 排行榜
		if nRank ~= nil then
			local sUserName = Get_UserName(nUserId)
			FirstWorldBudokai_Rank(nNewData,nUserId,sUserName)
		end
		if nTaskDetailId ~= nil then
			FirstWorldBudokai_SetTaskDetail(nTaskDetailId,nPos,nData + nAdd,nUserId)
		end
		return true
	end
end

-- Taskdetail检查
function FirstWorldBudokai_ResetTaskDetail(nTaskId,nUserId)
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	Task_SetTaskDetailData1(nTaskId,0,nUserId)
	Task_SetTaskDetailData2(nTaskId,0,nUserId)
	Task_SetTaskDetailData3(nTaskId,0,nUserId)
	Task_SetTaskDetailData4(nTaskId,0,nUserId)
	Task_SetTaskDetailData5(nTaskId,0,nUserId)
	Task_SetTaskDetailData6(nTaskId,0,nUserId)
end

-- Taskdetail设置
function FirstWorldBudokai_SetTaskDetail(nTaskId,nPos,nData,nUserId)
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	end
	if nPos == 1 then
		Task_SetTaskDetailData1(nTaskId,nData,nUserId)
	elseif nPos == 2 then
		Task_SetTaskDetailData2(nTaskId,nData,nUserId)
	elseif nPos == 3 then
		Task_SetTaskDetailData3(nTaskId,nData,nUserId)
	elseif nPos == 4 then
		Task_SetTaskDetailData4(nTaskId,nData,nUserId)
	elseif nPos == 5 then
		Task_SetTaskDetailData5(nTaskId,nData,nUserId)
	elseif nPos == 6 then
		Task_SetTaskDetailData6(nTaskId,nData,nUserId)
	end
end
	

-- 排行榜
function FirstWorldBudokai_Rank(nData,nUserId,sUserName)
	if FirstWorldBudokai_RankFirstStep() then
		if FirstWorldBudokai_RankSecondStep(nData,nUserId,sUserName) then
			FirstWorldBudokai_RankThirdStep()
		end
	end
end

-- 第一阶段 读取排行榜到临时表
function FirstWorldBudokai_RankFirstStep()
	tFirstWorldBudokai_Rank = {}
	for i = 1,tFirstWorldBudokai_Cont["RankNum"] do
		tFirstWorldBudokai_Rank[i] = {}
		local nGlobalId1 = tFirstWorldBudokai_GlobalRank[1][i]["GlobalId"]
		local nGlobalId2 = tFirstWorldBudokai_GlobalRank[2][i]["GlobalId"]
		local nDataPos = tFirstWorldBudokai_GlobalRank[1][i]["Data"]
		local nUserNamePos = tFirstWorldBudokai_GlobalRank[1][i]["UserName"]
		local nUserIdPos = tFirstWorldBudokai_GlobalRank[2][i]["UserId"]
		tFirstWorldBudokai_Rank[i]["Data"] = Get_SysDynaGlobalData(nGlobalId1,nDataPos)
		tFirstWorldBudokai_Rank[i]["UserName"] = Get_SysDynaGlobalDataStr(nGlobalId1,nUserNamePos)
		tFirstWorldBudokai_Rank[i]["UserId"] = Get_SysDynaGlobalData(nGlobalId2,nUserIdPos)
	end
	return true
end

-- 第二阶段 刷新排行榜
function FirstWorldBudokai_RankSecondStep(nData,nUserId,sUserName)
	local nTotalNum = tFirstWorldBudokai_Cont["RankNum"] + 1
	local nIndex = tFirstWorldBudokai_Cont["RankNum"] + 1
	for i = 1,tFirstWorldBudokai_Cont["RankNum"] do
		if tFirstWorldBudokai_Rank[i] == nil then
			tFirstWorldBudokai_Rank[i] = {}
			tFirstWorldBudokai_Rank[i]["UserId"] = 0
			tFirstWorldBudokai_Rank[i]["UserName"] = tFirstWorldBudokai_Text["Nobody"]
			tFirstWorldBudokai_Rank[i]["Data"] = 0
		end
		if nData ~= nil then
			if tFirstWorldBudokai_Rank[i]["UserId"] == nUserId then
				nIndex = i
				nTotalNum = tFirstWorldBudokai_Cont["RankNum"]
			end
		end
	end
	if nData == nil then
		nTotalNum = tFirstWorldBudokai_Cont["RankNum"]
	else
		if tFirstWorldBudokai_Rank[nIndex] == nil then
			tFirstWorldBudokai_Rank[nIndex] = {}
		end
		tFirstWorldBudokai_Rank[nIndex]["UserId"] = nUserId 
		tFirstWorldBudokai_Rank[nIndex]["UserName"] = sUserName
		tFirstWorldBudokai_Rank[nIndex]["Data"] = nData	
	end
	for j = nTotalNum,1,-1 do
		for k = nTotalNum,j,-1 do
			if tFirstWorldBudokai_Rank[k]["Data"] > tFirstWorldBudokai_Rank[j]["Data"] then
				tFirstWorldBudokai_Rank[j],tFirstWorldBudokai_Rank[k] = tFirstWorldBudokai_Rank[k],tFirstWorldBudokai_Rank[j]
			end
		end
	end
	return true
end
	
-- 第三阶段 临时表写入动态表
function FirstWorldBudokai_RankThirdStep()
	for i = 1,tFirstWorldBudokai_Cont["RankNum"] do
		local nGlobalId1 = tFirstWorldBudokai_GlobalRank[1][i]["GlobalId"]
		local nGlobalId2 = tFirstWorldBudokai_GlobalRank[2][i]["GlobalId"]
		local nDataPos = tFirstWorldBudokai_GlobalRank[1][i]["Data"]
		local nUserNamePos = tFirstWorldBudokai_GlobalRank[1][i]["UserName"]
		local nUserIdPos = tFirstWorldBudokai_GlobalRank[2][i]["UserId"]
		local nData = tFirstWorldBudokai_Rank[i]["Data"]
		local sUserName = tFirstWorldBudokai_Rank[i]["UserName"]
		local nUserId = tFirstWorldBudokai_Rank[i]["UserId"]
		if Get_SysDynaGlobalData(nGlobalId1,nDataPos) ~= nData then
			Sys_SetSynaGlobalData(nGlobalId1,nDataPos,nData)
		end
		if Get_SysDynaGlobalDataStr(nGlobalId1,nUserNamePos) ~= sUserName then
			Sys_SetSynaGlobalDataStr(nGlobalId1,nUserNamePos,sUserName)
		end
		if Get_SysDynaGlobalData(nGlobalId2,nUserIdPos) ~= nUserId then
			Sys_SetSynaGlobalData(nGlobalId2,nUserIdPos,nUserId)
		end
	end
	return true
end
	
--打到刷新BOSS触发
function FirstWorldBudokai_RewardEnd1(nServerId,nUserId,nRank,nDmg,nMonsterId)
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	
	-- 判断等级
	if not FirstWorldBudokai_JudgeLevel(nUserId) then
		return
	end
	
	-- 读取怪物星级
	local nStar = FirstWorldBudokai_GetMonsterStar(nMonsterId)
	if nStar == 0 then
		return
	end
	
	-- 增加胜绩
	FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
	
	-- 判断星星上限
	-- if FirstWorldBudokai_RewardStc(3,1,nUserId,0,1) < tFirstWorldBudokai_Stc[3]["Limit"][1] then
		FirstWorldBudokai_SendMail("Join",nStar,nUserId,nServerId)
	-- end
	
	-- 打log
	Sys_SaveActionFestivalLog(tFirstWorldBudokai_Log["Join"],nUserId)
end

--打到召唤BOSS触发
function FirstWorldBudokai_RewardEnd2(nServerId,nUserId,nRank,nDmg,nMonsterId)
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	-- 读取怪物星级
	local nStar = FirstWorldBudokai_GetMonsterStar(nMonsterId)
	if nStar == 0 then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		-- if nStar > 3 then
			FirstWorldBudokai_ChgMap()
		-- end
		return
	end
	
	-- if nStar <= 3 then
		-- return
	-- end
	
	-- 增加胜绩
	FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
	
	-- 召唤奖
	FirstWorldBudokai_RewardStc(9,1,nUserId,1)
	
	-- 通知
	local sMonsterName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
	if nStar ~= 6 then
		local sTalk = tFirstWorldBudokai_Text["Channel2005"]["KillCommon"]
		if nStar > 3 then 
			sTalk = string.format(tGlobalFormat[2],sTalk , tFirstWorldBudokai_Text["Channel2005"]["KillSenior"])
		end
		User_TalkChannel2005(string.format(sTalk,sMonsterName),nUserId)
	else
		User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["KillStronger"],sMonsterName),nUserId)
	end
end

-- 每日六星奖励
function FirstWorldBudokai_DailyRewardForKill6Star(nStar)
	local nUserId = Get_UserId()
	if FirstWorldBudokai_RewardStc(7,1,nUserId,1) then
		local nRealStarNum = FirstWorldBudokai_GetStarNum(nStar)
		if nRealStarNum > 0 then
			FirstWorldBudokai_SendMail("Kill6Star",nRealStarNum,nUserId)
		end
		FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
	end
end	

--杀死刷新BOSS触发
function FirstWorldBudokai_KillMonsterReward1(nMonsterId)
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	local nUserId = Get_UserId()
	
	-- 怪物死亡
	local nMapId = Get_UserMapId(nUserId)
	Monster_Death(nMonsterId,nMapId)
	
	-- 读取怪物星级
	local nStar = FirstWorldBudokai_GetMonsterStar(nMonsterId)
	if nStar == 0 then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	
	-- 判断等级
	if not FirstWorldBudokai_JudgeLevel(nUserId) then
		return
	end
	
	--记录击杀log
	Sys_SaveEmoneyBuy(tFirstWorldBudokai_ELog["KillBoss"][nStar], nUserId)
	
	-- 增加胜绩
	FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
	
	-- 1%刷出璇玑宝箱
	local nBossPosX = Get_MonsterPosX()
	local nBossPosY = Get_MonsterPosY()
	if Sys_Random(tFirstWorldBudokai_Random["FreshBox"]["StartNum"],tFirstWorldBudokai_Random["FreshBox"]["EndNum"]) then
		FirstWorldBudokai_FreshBox(tFirstWorldBudokai_Cont["BoxId"],nMapId,nBossPosX,nBossPosY)
	end
	
	-- 判断星星上限
	-- if FirstWorldBudokai_RewardStc(3,1,nUserId,0,1) < tFirstWorldBudokai_Stc[3]["Limit"][1] then
		FirstWorldBudokai_SendMail("KillFresh",nStar,nUserId)
	-- end

	-- 通知
	local sUserName = Get_UserName(nUserId)
	local sMonsterName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
	local sMapName = Get_MapName(nMapId)
	if sUserName == "null" then
		sUserName = tFirstWorldBudokai_Text["Somebody"]
	end
	if nStar ~= 6 then
		local sTalk = tFirstWorldBudokai_Text["Channel2005"]["KillCommon"]
		local sBroadcast = tFirstWorldBudokai_Text["Broadcast"]["KillCommon"][nStar]
		if nStar > 3 then 
			sTalk = string.format(tGlobalFormat[2],sTalk , tFirstWorldBudokai_Text["Channel2005"]["KillSenior"])
			-- sBroadcast = sBroadcast .. tFirstWorldBudokai_Text["Broadcast"]["KillSenior"]
			Sys_TalkBroadcast(string.format(sBroadcast,sUserName,sMapName,nBossPosX,nBossPosY,sMonsterName))
		end
		User_TalkChannel2005(string.format(sTalk,sMonsterName),nUserId)
	else
		-- 每日击杀6星boss额外奖励
		FirstWorldBudokai_DailyRewardForKill6Star(nStar)
		User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["KillStronger"],sMonsterName),nUserId)
		Sys_TalkBroadcast(string.format(tFirstWorldBudokai_Text["Broadcast"]["KillStronger"],sUserName,sMapName,nBossPosX,nBossPosY,sMonsterName))
	end
	
	-- 怪物掉落
	FirstWorldBudokai_FreshBossDropItem(nStar,nMapId,nBossPosX,nBossPosY)
	
	-- 打log
	Sys_SaveActionFestivalLog(tFirstWorldBudokai_Log["KillFresh"],nUserId)
end

-- 全队给胜绩
function FirstWorldBudokai_TeamAward(nStar,nUserId)
	FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
end

-- 全队给通知
function FirstWorldBudokai_TeamText(nUserId)
	FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
end

--杀死召唤BOSS触发
function FirstWorldBudokai_KillMonsterReward2(nMonsterId)
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	-- 怪物死亡
	local nMapId = Get_UserMapId(nUserId)
	Monster_Death(nMonsterId,nMapId)
	
	-- 读取怪物星级
	local nStar = FirstWorldBudokai_GetMonsterStar(nMonsterId)
	if nStar == 0 then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		-- if nStar > 3 then
			FirstWorldBudokai_ChgMap()
		-- end
		return
	end
	
	-- 判断等级
	if not FirstWorldBudokai_JudgeLevel(nUserId) then
		return
	end
	
	--记录击杀log
	Sys_SaveEmoneyBuy(tFirstWorldBudokai_ELog["KillBoss"][nStar], nUserId)
	
	-- 增加胜绩
	-- if nStar <= 3 then
		-- FirstWorldBudokai_RewardStc(4,1,nUserId,nStar * 2)
	-- else
		FirstWorldBudokai_RewardStc(4,1,nUserId,nStar)
	-- end
		

	-- if nStar <= 3 then
		-- FirstWorldBudokai_SendMail("KillCall",nStar,nUserId)
	-- else
	
	-- 击杀掩码
	FirstWorldBudokai_RewardStc(5,1,nUserId,1)
	if Get_SysTempData(1,nMapId,nMonsterId) == 0 then
		FirstWorldBudokai_CreateInstanceBox(nStar)
	end
	
	if nStar > 3 then
		if FirstWorldBudokai_RewardStc(8,3,nUserId,0,1) == 1 then
			FirstWorldBudokai_RewardStc(11,2,nUserId,1)
		elseif FirstWorldBudokai_RewardStc(8,4,nUserId,0,1) == 1 then
			FirstWorldBudokai_RewardStc(11,4,nUserId,1)
		elseif FirstWorldBudokai_RewardStc(8,5,nUserId,0,1) == 1 then
			FirstWorldBudokai_RewardStc(11,6,nUserId,1)
		end
		for i = 1,2 do
			FirstWorldBudokai_RewardStc(8,i,nUserId,0)
		end	
	end
	
	-- 通知
	local sUserName = Get_UserName(nUserId)
	local sMonsterName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
	local sMapName = Get_MapName(nMapId)
	local nBossPosX = Get_MonsterPosX()
	local nBossPosY = Get_MonsterPosY()
	-- 播放光效
	Map_Effect(nMapId,nBossPosX,nBossPosY,"bombarrow")
	
	if sUserName == "null" then
		sUserName = tFirstWorldBudokai_Text["Somebody"]
	end
	if nStar ~= 6 then
		local sTalk = tFirstWorldBudokai_Text["Channel2005"]["KillCommon"]
		local sBroadcast = tFirstWorldBudokai_Text["Broadcast"]["KillCommon"][nStar]
		if nStar > 3 then 
			sTalk = string.format(tGlobalFormat[2],sTalk , tFirstWorldBudokai_Text["Channel2005"]["KillSenior"])
			-- sBroadcast = sBroadcast .. tFirstWorldBudokai_Text["Broadcast"]["KillSenior"]
			Sys_TalkBroadcast(string.format(sBroadcast,sUserName,sMapName,nBossPosX,nBossPosY,sMonsterName))
		end
		-- User_TalkChannel2005(string.format(sTalk,sMonsterName),nUserId)
		
	else
		-- 每日击杀6星boss额外奖励
		FirstWorldBudokai_DailyRewardForKill6Star(nStar)
		-- User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["KillStronger"],sMonsterName),nUserId)
		Sys_TalkBroadcast(string.format(tFirstWorldBudokai_Text["Broadcast"]["KillStronger"],sUserName,sMapName,nBossPosX,nBossPosY,sMonsterName))
	end
	
	-- 打log
	Sys_SaveActionFestivalLog(tFirstWorldBudokai_Log["KillCall"],nUserId)
	
	--打击杀log
	Map_UserExeFunc(nMapId, -1, string.format("FirstWorldBudokai_RecordELog</S>KillBossNew</N>%d", nStar))
end

-- 发邮件
function FirstWorldBudokai_SendMail(sIndex,nIndex,nUserId,nServerId)
	local nActionId = tFirstWorldBudokai_Mail[sIndex][nIndex]
	local nExistDay = tFirstWorldBudokai_Mail["ExistDay"]
	local sSender = tFirstWorldBudokai_Text["Mail"]["Sender"]
	local sTitle = tFirstWorldBudokai_Text["Mail"]["Title"][sIndex]
	local sContent = tFirstWorldBudokai_Text["Mail"]["Content"][sIndex]
	if sIndex == "Daily" then
		local nTime = os.time() - 86400
		local nMonth = tonumber(os.date("%m",nTime))
		local nDay = tonumber(os.date("%d",nTime))
		sContent = string.format(tFirstWorldBudokai_Text["Mail"]["Content"][sIndex],nMonth,nDay,nIndex)
	elseif sIndex == "Total" then
		sContent = string.format(tFirstWorldBudokai_Text["Mail"]["Content"][sIndex],nIndex)
	elseif sIndex == "Join" or sIndex == "KillFresh" or sIndex == "Call" or sIndex == "KillCall" then
		local sItemName = Get_ItemtypeName(tFirstWorldBudokai_Mail["ItemId"][nIndex])
		sContent = string.format(tFirstWorldBudokai_Text["Mail"]["Content"][sIndex],nIndex,sItemName)
	end
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
end

-- 片区刷怪
function FirstWorldBudokai_CreateBoss()
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	-- 00:00执行
	-- if Sys_ChkDayTime(tFirstWorldBudokai_Cont["DayEndTime"]) then
		-- FirstWorldBudokai_DayEnd()
	-- end
	
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	
	if not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime"]) and not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime1"]) then
		return
	end
	
	-- 判断新服
	local tCreateBoss = tFirstWorldBudokai_CreateBoss[1]
	-- if FirstWorldBudokai_CheckNewServer() then
		-- tCreateBoss = tFirstWorldBudokai_CreateBoss[2]
	-- end
	
	for i,v in pairs(tCreateBoss) do 
		local nGlobalId = v["GlobalId"]
		local nMapId = i
		for ii,vv in pairs(v) do
			if type(ii) == "number" then
				local nStar = ii
				local nCD = vv["CD"]
				local nNum = vv["Num"]
				local nGlobalPos = vv["GlobalPos"]
				local nLastTime = Get_SysDynaGlobalData(nGlobalId,nGlobalPos)
				local nNewTime = os.time()
				local bIsFresh = false
				if vv["Time"] ~= nil then
					for _,sTime in pairs(vv["Time"]) do
						if Sys_ChkDayTime(sTime) then
							bIsFresh = true
							break
						end
					end
				else
					bIsFresh = true
				end
				
				-- 建空表，记录已刷的怪
				local tCreated = {}
				
				-- 判断时间
				if ((vv["Time"] ~= nil) or (nNewTime - nLastTime > nCD)) then
					if bIsFresh then
						-- 统计和记录怪物
						local nLastNum = 0
						for iii,vvv in pairs(tFirstWorldBudokai_Cont["FreshBoss"][nStar]) do
							local nMonsterId = vvv
							local nThisNum = Get_SysTempData(1,nMapId,nMonsterId)
							if nThisNum > 0 then
								nLastNum = nLastNum + nThisNum
								table.insert(tCreated,nMonsterId)
							end
						end
						
						-- 刷怪
						if (nNum - nLastNum > 0) then
							local tToBeCreated = FirstWorldBudokai_NotRepeat(tCreated,nStar)
							local tCreateIndex = FirstWorldBudokai_SetMulRandom(#tToBeCreated,nNum - nLastNum)
							for k = 1,#tCreateIndex do
								
								local nPosIndex = math.random(1,#vv["PosX"])
								local nPosX = vv["PosX"][nPosIndex] + math.random(-5,5)
								local nPosY = vv["PosY"][nPosIndex] + math.random(-5,5)
								local nGenId = v["GenId"]
								local nMonsterIndex = tCreateIndex[k]
								local nMonsterId = tToBeCreated[nMonsterIndex]
								Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
								if nStar >= 4 then
									local sMonsterName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
									local sMapName = Get_MapName(nMapId)
									Sys_TalkBroadcast(string.format(tFirstWorldBudokai_Text["Broadcast"]["FreshBoss"][nStar],sMonsterName,sMapName,nPosX,nPosY))
								end
							end
						end
						if vv["Time"] ~= nil then
							FirstWorldBudokai_SendInMap()
						end
						-- 重新记录时间
						Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,nNewTime)
					end
				end
			end
		end
	end
end

-- 刷怪去重
function FirstWorldBudokai_NotRepeat(tCreated,nStar)
	local tTotalMonster= CommonFunc_Copy(tFirstWorldBudokai_Cont["FreshBoss"][nStar])
	for i,v in pairs(tCreated) do
		for ii,vv in pairs(tTotalMonster) do
			if v == vv then
				table.remove(tTotalMonster,ii)
			end
		end
	end
	return tTotalMonster
end

-- 产生n个随机数
function FirstWorldBudokai_SetMulRandom(nTotalNum,nNeedNum)
	local tArray = {}
	for i = 1 , nTotalNum do
		tArray[i] = i 
	end
	for i = 1 , nTotalNum do
		local j = math.random(nTotalNum - i + 1) + i - 1
		tArray[i],tArray[j] = tArray[j],tArray[i]
	end
	local tGetRandom = {}
	for i = 1 , nNeedNum do
		tGetRandom[i] = tArray[i]
	end
	return tGetRandom
end

-- 判断等级
function FirstWorldBudokai_JudgeLevel(nNowUserId)
	local nLevel = tFirstWorldBudokai_Cont["Level"]
	local nMetem = tFirstWorldBudokai_Cont["Metem"]
	local nUserId = nNowUserId or Get_UserId()
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId) then
		return true
	else
		return false
	end
end

-- 判断地图
function FirstWorldBudokai_JudgeMap(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	for i,v in pairs(tFirstWorldBudokai_Map) do
		if nMapId == v then
			return true
		end
	end
	return false
end
	
-- 累计奖励对白
function FirstWorldBudokai_AddUpRewardDialog(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nLeft = tFirstWorldBudokai_Cont["WordDistance"][1]["Left"]
	local nMiddle = tFirstWorldBudokai_Cont["WordDistance"][1]["Middle"]
	local nUserId = Get_UserId()
	for i = 1,tFirstWorldBudokai_Cont["RankNum"] do
		local nAddUp = tFirstWorldBudokai_AddUp[i]
		local sLeft = string.format(tGlobalFormat[1], nAddUp)
		local sMiddle = tFirstWorldBudokai_Text["AddUpReward"][nAddUp]
		
		if FirstWorldBudokai_RewardStc(6,i,nUserId,0,1) >= 1 then
			sMiddle = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text["AddUpReward"][nAddUp],tFirstWorldBudokai_Text["AddUpReward"]["Have"])
		else
			sMiddle = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text["AddUpReward"][nAddUp],tFirstWorldBudokai_Text["AddUpReward"]["Not"])
		end
		local sText = "Text11"..i
		tNpcGossip[nNpcId][sText] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle)
	end
	local nData = FirstWorldBudokai_RewardStc(4,1,nUserId,0,1)
	tNpcGossip[nNpcId]["Text1115"] = string.format(tFirstWorldBudokai_Text[nNpcId]["Text1115"],nData)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 一键领取奖励
function FirstWorldBudokai_GetAddUpReward(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	local tRewardIndex = {}
	local nSpace = 0
	local nUserId = Get_UserId()
	local nNext
	
	-- 获取需要的空间
	for i,v in pairs(tFirstWorldBudokai_AddUp) do
		if (FirstWorldBudokai_RewardStc(4,1,nUserId,0,1) >= v) then 
			nNext = tFirstWorldBudokai_AddUp[i+1]
			if (FirstWorldBudokai_RewardStc(6,i,nUserId,0,1) < 1) then
				table.insert(tRewardIndex,i)
				nSpace = nSpace + RewardTemplate_GetRewardSpace(tFirstWorldBudokai_AwardItem["AddUp"][i],nUserId)
			end
		end
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace,nUserId) then
		tNpcGossip[nNpcId]["Text121"] = string.format(tFirstWorldBudokai_Text[nNpcId]["Text121"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 可获得奖励数为0
	if #tRewardIndex == 0 then
	
		-- 还有未领取的
		if nNext ~= nil then
			tNpcGossip[nNpcId]["Text131"] = string.format(tFirstWorldBudokai_Text[nNpcId]["Text131"][1],nNext,tFirstWorldBudokai_Text["AddUpReward"][nNext])
		
		-- 已经全部领取过
		else
			tNpcGossip[nNpcId]["Text131"] = tFirstWorldBudokai_Text[nNpcId]["Text131"][2]
		end
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 获得奖励
	for ii,vv in pairs(tRewardIndex) do
		if RewardTemplate_CheckSpace(tFirstWorldBudokai_AwardItem["AddUp"][vv],nUserId) then
			if FirstWorldBudokai_RewardStc(6,vv,nUserId,1) then
				RewardTemplate_UseItemAndMsg(tFirstWorldBudokai_AwardItem["AddUp"][vv],nUserId)
			end
		end
	end
end

-- 排行榜对白
function FirstWorldBudokai_RankDialog(nNpcId)
	local nLeft = tFirstWorldBudokai_Cont["WordDistance"][2]["Left"]
	local nMiddle = tFirstWorldBudokai_Cont["WordDistance"][2]["Middle"]
	local nRight = tFirstWorldBudokai_Cont["WordDistance"][2]["Right"]
	local nUserId = Get_UserId()
	for i = 1,tFirstWorldBudokai_Cont["RankNum"] do
		local nGlobalId = tFirstWorldBudokai_GlobalRank[1][i]["GlobalId"]
		local nDataPos = tFirstWorldBudokai_GlobalRank[1][i]["Data"]
		local nUserNamePos = tFirstWorldBudokai_GlobalRank[1][i]["UserName"]
		local sLeft = string.format(tGlobalFormat[1], i)
		local sMiddle = string.format(tGlobalFormat[1],tostring(Get_SysDynaGlobalData(nGlobalId,nDataPos)))
		local sRight = Get_SysDynaGlobalDataStr(nGlobalId,nUserNamePos)
		if sRight == "" then
			sRight = tFirstWorldBudokai_Text["Nobody"]
		else
			sRight = string.gsub(sRight, "<", " ")
			sRight = string.gsub(sRight, ">", " ")
			sRight = string.format(tGlobalFormat[1],sRight)
		end
		
		local sText = "Text11"..i
		tNpcGossip[nNpcId][sText] = string.format(tGlobalFormat[2],Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight),"\n")
	end
	local nData = FirstWorldBudokai_RewardStc(4,1,nUserId,0,1)
	tNpcGossip[nNpcId]["Text1115"] = string.format(tFirstWorldBudokai_Text[nNpcId]["Text1115"],nData)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 邮箱log和通知
function FirstWorldBudokai_TalkAndLogForMail(nIndex,nRank)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local sRewardItemName
	local sLog
	if nIndex == 1 then
		-- local nTime = os.time() - 86400
		-- local nMonth = tonumber(os.date("%m",nTime))
		-- local nDay = tonumber(os.date("%d",nTime))
		sRewardItemName = tFirstWorldBudokai_Text["RewardItemName"]["Daily"][nRank]
		-- sText = string.format(tFirstWorldBudokai_Text["Broadcast"]["Daily"],sUserName,nMonth,nDay,nRank,sRewardItemName)
		sText = string.format(tFirstWorldBudokai_Text["Broadcast"]["Daily"],sUserName,nRank,sRewardItemName)
		sLog = string.format(tFirstWorldBudokai_Log["Daily"],nRank)
	elseif nIndex == 2 then
		sRewardItemName = tFirstWorldBudokai_Text["RewardItemName"]["Total"][nRank]
		sText = string.format(tFirstWorldBudokai_Text["Broadcast"]["Total"],sUserName,nRank,sRewardItemName)
		sLog = string.format(tFirstWorldBudokai_Log["Total"],nRank)		
	end
	Sys_SystemBroadcast(sText)
	Sys_SaveActionFestivalLog(sLog,nUserId)
end

-- 刷新璇玑宝箱 
function FirstWorldBudokai_FreshBox(nNpcId,nMapId,nPosX,nPosY)
	for i,v in pairs(tFirstWorldBudokai_Map) do
		if Get_NpcMapID(nNpcId) == v then
			return
		end
	end
	local nGlobalId = tFirstWorldBudokai_FreshBox[1]["GlobalId"]
	local nReceivedPos = tFirstWorldBudokai_FreshBox[1]["Received"]
	local nTimePos = tFirstWorldBudokai_FreshBox[1]["Time"]
	Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,0)
	Sys_SetSynaGlobalData(nGlobalId,nTimePos,os.time())
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	Map_UserExeFunc(nMapId,-1,string.format("FirstWorldBudokai_MapInvite</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY))
end

--地图邀请
function FirstWorldBudokai_MapInvite(nMapId,nPosX,nPosY,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	if not FirstWorldBudokai_JudgeLevel(nUserId) then
		return
	end
	local sMapName = Get_MapName(nMapId)
	-- local sFunc = string.format("User_UserRandBoundTrans</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,5,5,1,nUserId)
	local sFunc = string.format("FirstWorldBudokai_MapCross</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,nUserId)
	local sText = string.format(tFirstWorldBudokai_Text["MsgBox"]["MapInvite"],sMapName,nPosX,nPosY)
	Sys_MsgBox(sText,sFunc,nil,nUserId)
end	

-- 地图传送
function FirstWorldBudokai_MapCross(nMapId,nPosX,nPosY,nUserId)
	if Get_UserMapId(nUserId) ~= nMapId then
		return
	end
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,5,5,0,nUserId)
end
-- 打开璇玑宝箱
function FirstWorldBudokai_OpenBox(nNpcId)
	local nGlobalId = tFirstWorldBudokai_FreshBox[1]["GlobalId"]
	local nReceivedPos = tFirstWorldBudokai_FreshBox[1]["Received"]
	local nTimePos = tFirstWorldBudokai_FreshBox[1]["Time"]
	local nCD = tFirstWorldBudokai_FreshBox[1]["CD"]
	local nReceived = Get_SysDynaGlobalData(nGlobalId,nReceivedPos)
	local nTime = Get_SysDynaGlobalData(nGlobalId,nTimePos)
	local nNowTime = os.time()
	local nUserId = Get_UserId()
	-- 已被领走
	if nReceived >= 1 then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["Received"],nil,nil,nUserId)
		return
	end
	-- 时间未到
	local nCrossTime = nNowTime - nTime
	if nCrossTime < nCD then
		Sys_MsgBox(string.format(tFirstWorldBudokai_Text["MsgBox"]["CD"],nCD - nCrossTime),nil,nil,nUserId)
		return
	end
	-- 赠点数量
	if Get_UserMonoEMoney(nUserId) + 2000 > G_User_MaxEmoneyMono then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["MonoEMoneyFull"],nil,nil,nUserId)
		return
	end		
	-- 背包判断
	local nSpace = RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem["BossBox"],1,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,1)
	local nMapId = tFirstWorldBudokai_Cont["BossBox"]["MapId"]
	local nPosX = tFirstWorldBudokai_Cont["BossBox"]["PosX"]
	local nPosY = tFirstWorldBudokai_Cont["BossBox"]["PosY"]
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem["BossBox"],1,nUserId)
end

-- 刷怪增益检测
function FirstWorldBudokai_CheckLifeBuff()
	local nUserId = Get_UserId()
	if FirstWorldBudokai_RewardStc(8,1,nUserId,0,1) == 1 then
		return 1,false
	elseif FirstWorldBudokai_RewardStc(8,2,nUserId,0,1) == 1 then
		return 2,false
	elseif FirstWorldBudokai_RewardStc(8,3,nUserId,0,1) == 1 then
		return 3,true
	else
		return 3,false
	end
end

-- 副本内创建npc
function FirstWorldBudokai_CreateInstanceNpc(nItemTypeId,nUserId)
	local nDynaNpcId
	for i,v in pairs(tFirstWorldBudokai_DynaNpc["Item"]) do
		for ii,vv in pairs(v) do
			if vv == nItemTypeId then
				nDynaNpcId = i
			end
		end
	end
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tFirstWorldBudokai_Cont["Instance"]["PoxX"]
	local nPosY = tFirstWorldBudokai_Cont["Instance"]["PoxY"]
	local nMonsterId = tFirstWorldBudokai_Cont["ItemMonster"][nItemTypeId][3]
	local sName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
	local nTask0 = tFirstWorldBudokai_DynaNpc["Task0"][nDynaNpcId]
	local nLookface = tFirstWorldBudokai_Cont["ItemMonster"][nItemTypeId]["Lookface"]
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
end

-- 副本内npc
function FirstWorldBudokai_InstanceNpc(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		FirstWorldBudokai_ChgMap()
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 召唤boss
function FirstWorldBudokai_InstanceCallBoss()
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		FirstWorldBudokai_ChgMap()
		return
	end
	--组队且不是队长不能招boss
	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	if nTeamNum ~= 0 and (not User_IsTeamLeader(nUserId)) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotLeader"],nil,nil,nUserId)
		return 
	end
	
	local nIndex,bIsDouble = FirstWorldBudokai_CheckLifeBuff()
	local nFirstWorldBudokai_Times = 1
	if bIsDouble then
		nFirstWorldBudokai_Times = nFirstWorldBudokai_Times * 2
	end
	local nMapId = Get_UserMapId()
	local nPosX = tFirstWorldBudokai_Cont["Instance"]["PoxX"]
	local nPosY = tFirstWorldBudokai_Cont["Instance"]["PoxY"]
	local nGenId = tFirstWorldBudokai_Cont["Instance"]["GenId"]
	local nNpcId = Get_NpcId()
	if nNpcId == nil then
		return
	end
	local nLookface = Get_NpcLookface(nNpcId)
	local nItemTypeId
	if nLookface == nil then
		return
	end
	for i,v in pairs(tFirstWorldBudokai_Cont["ItemMonster"]) do
		if v["Lookface"] == nLookface then
			nItemTypeId = i
		end
	end
	if nItemTypeId == nil or tFirstWorldBudokai_Cont["ItemMonster"][nItemTypeId] == nil then
		return
	end
	local nMonsterId = tFirstWorldBudokai_Cont["ItemMonster"][nItemTypeId][nIndex]
	local sName = tFirstWorldBudokai_Text["MonsterName"][nMonsterId]
	
	--先判断当前地图有没有boss
	if Get_SysTempData(1,nMapId,nMonsterId) > 0 then
		Monster_DelMonster(nMapId,nMonsterId)
	end
	
	if Npc_DelDynaNpc(nMapId,"name",sName) then
		Sys_SetTempData(1,nMapId,nMonsterId,0)
		for i = 1,nFirstWorldBudokai_Times do
			nPosX = nPosX + math.random(-5,5)
			nPosY = nPosY + math.random(-5,5)
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		end
	end
end
	
-- 创建宝箱
function FirstWorldBudokai_CreateInstanceBox(nStar)	
	local nUserId = Get_UserId()
	if Get_NpcCount(nUserId) > 0 then
		return
	end
	local nMapId = Get_UserMapId(nUserId)
	local nDynaNpcId = tFirstWorldBudokai_Cont["InstanceBox"][nStar]["NpcId"]
	local nPosX = tFirstWorldBudokai_Cont["Instance"]["PoxX"]
	local nPosY = tFirstWorldBudokai_Cont["Instance"]["PoxY"]
	local sName = tFirstWorldBudokai_Text["InstanceBox"][nStar]
	local nTask0 = tFirstWorldBudokai_DynaNpc["Task0"][nDynaNpcId]
	local nLookface = tFirstWorldBudokai_Cont["InstanceBox"][nStar]["Lookface"]
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
end

-- 副本内宝箱
function FirstWorldBudokai_InstanceBox(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		FirstWorldBudokai_ChgMap()
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 获得奖励
function FirstWorldBudokai_InstanceBoxReward(nNpcId,nIndex,nDouble)
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		FirstWorldBudokai_ChgMap()
		return
	end
	local nStar = tFirstWorldBudokai_DynaNpc["Star"][nNpcId]
	local tReward
	if nDouble == nil then 
		tReward = CommonFunc_Copy(tFirstWorldBudokai_Box[nStar][1])
	elseif ((nDouble >= 1) and (nDouble <= 2)) then
		tReward = CommonFunc_Copy(tFirstWorldBudokai_Box[nStar][2])
	elseif ((nDouble >= 3) and (nDouble <= 4)) then
		tReward = CommonFunc_Copy(tFirstWorldBudokai_Box[nStar][3])
	elseif ((nDouble >= 5) and (nDouble <= 6)) then
		tReward = CommonFunc_Copy(tFirstWorldBudokai_Box[nStar][4])
	end
	-- local tRewardStar
	-- local nTime = 1
	-- if nDouble ~= nil then
		-- nTime = FirstWorldBudokai_CheckAwardBuff()
	-- end
	local nSpace = 0
	local nUserId = Get_UserId()
	local nStarNum = 0
	local nRealStarNum = 0
	local nLimit = tFirstWorldBudokai_Stc[nIndex]["Limit1"]
	if FirstWorldBudokai_RewardStc(nIndex,1,nUserId,0,1) == 0 then
		return
	end
	if FirstWorldBudokai_RewardStc(nIndex,1,nUserId,0,1) >= nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	-- if nDouble <= 2 then
		-- for i,v in pairs(tReward[1]) do
			-- if type(i) == "number" then
				-- if v["RewardStrengthValue"] ~= nil then
					-- v["RewardStrengthValue"]["Value"] = math.floor(v["RewardStrengthValue"]["Value"] * 2)
				-- end
				-- if v["RewardItem"] ~= nil then
					-- for ii,vv in pairs(v["RewardItem"]) do
						-- local sFront = string.sub(vv["Attr"],1,2)
						-- local sBehind = string.sub(vv["Attr"],4,-1)
						-- local nNum = tonumber(string.sub(vv["Attr"],3,3))
						-- local sMiddle = tostring(math.floor(nNum * 2))
						-- vv["Attr"] = sFront..sMiddle..sBehind
					-- end
				-- end
			-- end
		-- end
	-- end
	--	if nIndex == 5 then
	--		-- 判断星星上限
	--		if FirstWorldBudokai_RewardStc(3,1,nUserId,0,1) < tFirstWorldBudokai_Stc[3]["Limit"][1] then
	--			nRealStarNum = FirstWorldBudokai_GetStarNum(nStar)
	--			if nRealStarNum > 0 then
	--				nRealStarNum = math.floor(nRealStarNum * nTime)
	--				tRewardStar = CommonFunc_Copy(tFirstWorldBudokai_AwardItem["Star"])
	--				tRewardStar["RewardItem"][1]["Attr"] = "0 "..nRealStarNum
	--				nSpace = nSpace + RewardTemplate_GetRewardSpace(tRewardStar,nUserId)
	--			end
	--		end
	--	end
	-- nSpace = nSpace + RewardTemplate_GetRandomSpace(tReward,1,nUserId)
	-- if not User_CheckLeftSpace(nSpace,nUserId) then
		-- tNpcGossip[nNpcId]["Text211"] = string.format(tFirstWorldBudokai_Text[nNpcId]["Text211"],nSpace)
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	if not RewardTemplate_CheckSpace(tReward,nUserId) then
		return
	end
	-- 领奖掩码
	FirstWorldBudokai_RewardStc(nIndex,1,nUserId,nLimit)
	-- FirstWorldBudokai_RewardStc(1,nStar,nUserId,1)
	if nDouble ~= nil then
		FirstWorldBudokai_RewardStc(11,nDouble,nUserId,0)
		if ((FirstWorldBudokai_RewardStc(11,1,nUserId,0,1) == 0) and (FirstWorldBudokai_RewardStc(11,2,nUserId,0,1) == 0)) then
			FirstWorldBudokai_RewardStc(8,3,nUserId,0)
		end
		if ((FirstWorldBudokai_RewardStc(11,3,nUserId,0,1) == 0) and (FirstWorldBudokai_RewardStc(11,4,nUserId,0,1) == 0)) then
			FirstWorldBudokai_RewardStc(8,4,nUserId,0)
		end
		if ((FirstWorldBudokai_RewardStc(11,5,nUserId,0,1) == 0) and (FirstWorldBudokai_RewardStc(11,6,nUserId,0,1) == 0)) then
			FirstWorldBudokai_RewardStc(8,5,nUserId,0)
		end
	end
	-- if tRewardStar ~= nil then
		-- if FirstWorldBudokai_RewardStc(3,1,nUserId,nRealStarNum) then
			-- RewardTemplate_UseItemAndMsg(tRewardStar,nUserId)
		-- end
	-- end
	-- RewardTemplate_NewRandom(tReward,1,nUserId)
	RewardTemplate_UseItemAndMsg(tReward,nUserId)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 奖励增益检测
function FirstWorldBudokai_CheckAwardBuff()
	local nUserId = Get_UserId()
	if FirstWorldBudokai_RewardStc(8,4,nUserId,0,1) == 1 then
		return 1.1
	elseif FirstWorldBudokai_RewardStc(8,5,nUserId,0,1) == 1 then
		return 1.5
	elseif FirstWorldBudokai_RewardStc(8,3,nUserId,0,1) == 1 then
		return 2
	else
		return 1
	end
end

-- 获得星星数判断
function FirstWorldBudokai_GetStarNum(nStarNum)
	local nUserId = Get_UserId()
	local nDif = tFirstWorldBudokai_Stc[3]["Limit"][1] - FirstWorldBudokai_RewardStc(3,1,nUserId,0,1)
	if nDif > nStarNum then
		return nStarNum
	else
		return nDif
	end
end

-- 每日00:00执行
function FirstWorldBudokai_DayEnd()
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	-- 记录单日排行榜
	-- FirstWorldBudokai_RecordAndReward()
	-- 发邮件
	FirstWorldBudokai_MailReward()
	
	local nTime = os.time() - 86400
	local nMinute = tonumber(os.date("%M",nTime))
	
	if nMinute >= 3 then
		nMinute = nMinute - 3
	end
	
	nMinute = nMinute + 1
	
	if tFirstWorldBudokai_Map[nMinute] ~= nil then
		local nMapId = tFirstWorldBudokai_Map[nMinute]
		-- 删除片区怪物
		FirstWorldBudokai_DelFreshBoss(nMapId)
	end
end

-- 发奖
function FirstWorldBudokai_MailReward()
	local nClearGlobalId = tFirstWorldBudokai_Cont["ClearGlobal"]["GlobalId"]
	local nClearGlobalPos = tFirstWorldBudokai_Cont["ClearGlobal"]["Pos"]
	if not Sys_ChkDayTime(tFirstWorldBudokai_Cont["DayEndTime1"]) then
		Sys_SetSynaGlobalData(nClearGlobalId,nClearGlobalPos,0)
		return
	end
	if Get_SysDynaGlobalData(nClearGlobalId,nClearGlobalPos) >= 1 then
		return
	end
	for i,v in pairs(tFirstWorldBudokai_GlobalRank[2]) do
		local nGlobalId = v["GlobalId"]
		local nUserIdPos = v["UserId"]
		local nUserId = Get_SysDynaGlobalData(nGlobalId,nUserIdPos)
		-- 发奖
		if Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
			if nUserId > 0 then
				FirstWorldBudokai_SendMail("Daily",i,nUserId)
			end
		end
		if Sys_ChkFullTime(tFirstWorldBudokai_Time["LastDay"]) then
			if nUserId > 0 then
				FirstWorldBudokai_SendMail("Total",i,nUserId)
			end
		end
	end	
	Sys_SetSynaGlobalData(nClearGlobalId,nClearGlobalPos,1)
end

-- 删除片区怪物
-- function FirstWorldBudokai_DelFreshBoss()
	-- for nStar,v in pairs(tFirstWorldBudokai_Cont["FreshBoss"]) do
		-- for ii,nMonsterId in pairs(v) do
			-- for iii,nMapId in pairs(tFirstWorldBudokai_Map) do
				-- Monster_DelMonster(nMapId,nMonsterId)
				-- Sys_SetTempData(1,nMapId,nMonsterId,0)
			-- end
		-- end
	-- end
-- end

function FirstWorldBudokai_DelFreshBoss(nMapId)
	for _,tMonster in pairs(tFirstWorldBudokai_Cont["FreshBoss"]) do
		for _,nMonsterId in pairs(tMonster) do
			local nNum = Get_SysTempData(1,nMapId,nMonsterId)
			if nNum > 0 then
				if Monster_DelMonster(nMapId,nMonsterId) then
					Sys_SetTempData(1,nMapId,nMonsterId,0)
				end
			end
		end
	end
end

-- 片区boss掉落
function FirstWorldBudokai_FreshBossDropItem(nStar,nMapId,nPosX,nPosY)
	local tDropItem = tFirstWorldBudokai_DropItem[nStar]
	for i,v in pairs(tDropItem) do
		local nDropPosX = nPosX + math.random(-10,10)
		local nDropPosY = nPosY + math.random(-10,10)
		Map_DropItem(nMapId,nDropPosX,nDropPosY,v)
	end
end

-- 使用增益道具-确认
--	function FirstWorldBudokai_UseBuffItemConfirm(nItemTypeId)
--		local nUserId = Get_UserId()
--		-- 过期删除
--		if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
--			for i,v in pairs(tFirstWorldBudokai_Buff) do
--				if Item_ChkItem(i) and Item_DelAllItemByType(i) then
--					User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["GetBuff"]["OverTime"],nUserId)
--				end
--			end
--			return
--		end
--		-- 在擂台使用
--		local nMapId = Get_UserMapId(nUserId)
--		local sMapName = Get_MapName(nMapId)
--		local sLimitMapName = Get_MapName(tFirstWorldBudokai_Cont["Arena"])
--		if sMapName == sLimitMapName then
--			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["UseBefore"],nil,nil,nUserId)
--			return
--		end
--		local nPos = tFirstWorldBudokai_Buff[nItemTypeId]
--		local bIsUsed = false
--		local bIsCover = false
--		local nIsUserd
--		-- 判断身上的buff状态
--		for i = 1,5 do
--			if FirstWorldBudokai_RewardStc(8,i,nUserId,0,1) >= 1 then
--				if nPos == i then
--					bIsCover = true
--				else
--					nIsUserd = i
--					bIsUsed = true
--				end
--			end
--		end
--		local sFunc = "FirstWorldBudokai_UseBuffItem</N>"..nItemTypeId
--		if bIsUsed then
--			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["Used"][nIsUserd],sFunc,nil,nUserId)
--			return
--		elseif bIsCover then
--			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["Cover"],sFunc,nil,nUserId)
--			return
--		else		
--			FirstWorldBudokai_UseBuffItem(nItemTypeId)
--		end
--	end
		
-- 使用增益道具
function FirstWorldBudokai_UseBuffItem(nItemTypeId,nUserId)	
	-- 过期删除
	-- if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		-- for i,v in pairs(tFirstWorldBudokai_Buff) do
			-- if Item_ChkItem(i) and Item_DelAllItemByType(i) then
				-- User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["GetBuff"]["OverTime"],nUserId)
			-- end
		-- end
		-- return
	-- end
	-- 在擂台使用
	local nMapId = Get_UserMapId(nUserId)
	local sMapName = Get_MapName(nMapId)
	local sLimitMapName = Get_MapName(tFirstWorldBudokai_Cont["Arena"])
	if sMapName == sLimitMapName then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["UseBefore"],nil,nil,nUserId)
		return
	end
	-- 清除其它所有buff掩码
	-- if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		local nPos = tFirstWorldBudokai_Buff[nItemTypeId]
		for i = 1,6 do
			FirstWorldBudokai_RewardStc(11,i,nUserId,0)
		end
		for i = 1,5 do
			if nPos == i then
				FirstWorldBudokai_RewardStc(8,i,nUserId,1)
				-- if FirstWorldBudokai_RewardStc(7,1,nUserId,0,1) < tFirstWorldBudokai_Stc[7]["Limit"][1] then
					if i == 3 then
						FirstWorldBudokai_RewardStc(11,1,nUserId,1)
					elseif i == 4 then
						FirstWorldBudokai_RewardStc(11,3,nUserId,1)
					elseif i == 5 then
						FirstWorldBudokai_RewardStc(11,5,nUserId,1)
					end
				-- else
					-- if i == 3 then
						-- FirstWorldBudokai_RewardStc(11,1,nUserId,0)
					-- elseif i == 4 then
						-- FirstWorldBudokai_RewardStc(11,3,nUserId,0)
					-- elseif i == 5 then
						-- FirstWorldBudokai_RewardStc(11,5,nUserId,0)
					-- end
				-- end
			else
				FirstWorldBudokai_RewardStc(8,i,nUserId,0)
			end
		end	
		User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["GetBuff"][nPos],nUserId)
	-- else
		-- User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["IntoInstance"], nUserId)
	-- end
end

-- 物品使用
function FirstWorldBudokai_UseItem(nItemTypeId)
	local nUserId = Get_UserId()
	-- 过期删除
	if tFirstWorldBudokai_AwardItem[nItemTypeId]["NotDel"] == nil then
		if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["ItemOverTime"],nUserId)
			end
			return
		end	
	end
	-- 判断时间限制 3秒打开1次
	if tFirstWorldBudokai_AwardItem[nItemTypeId]["TimeLimit"] ~= nil then
		local nEvent = tFirstWorldBudokai_Stc[13]["EventType"]
		local nType = tFirstWorldBudokai_Stc[13]["DataType"]
		if Task_StcInterval(nEvent,nType,3,0,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
			User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["LimitTime"])
			return
		end
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	local nStar = tFirstWorldBudokai_AwardItem[nItemTypeId]["Star"]
	local nStcIndex = tFirstWorldBudokai_AwardItem[nItemTypeId]["StcIndex"]
	local nDailyLimit = tFirstWorldBudokai_AwardItem[nItemTypeId]["DailyLimit"]
	local nSpace = 0
	local bIsReward = true
	local bGiveStar = false
	local nStarNum = 0
	local nRealStarNum = 0
	local tRewardStar
	-- 有每日限制
	if nDailyLimit ~= nil then
		if FirstWorldBudokai_RewardStc(nDailyLimit,nStcIndex,nUserId,0,1) >= tFirstWorldBudokai_Stc[nDailyLimit]["Limit"][nStcIndex] then
			bIsReward = false
		end
	end
	-- 有给星星
	if nStar ~= nil then
		-- 判断星星上限
		if FirstWorldBudokai_RewardStc(3,1,nUserId,0,1) < tFirstWorldBudokai_Stc[3]["Limit"][1] then
			nRealStarNum = FirstWorldBudokai_GetStarNum(nStar)
			if nRealStarNum > 0 then
				tRewardStar = CommonFunc_Copy(tFirstWorldBudokai_AwardItem["Star"])
				tRewardStar["RewardItem"][1]["Attr"] = "0 "..nRealStarNum
				bGiveStar = true
			end
		end
	end
	-- 都达到上限
	if ((not bIsReward) and (not bGiveStar)) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["AllLimit"],nil,nil,nUserId)
		return
	end
	-- 随机类奖励
	if ((tFirstWorldBudokai_AwardItem[nItemTypeId][1] ~= nil) and (tFirstWorldBudokai_AwardItem[nItemTypeId][1]["ItemChanceSum"] ~= nil)) then
		if bIsReward then
			nSpace = nSpace + RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem[nItemTypeId],1,nUserId) 
		end
		if bGiveStar then
			nSpace = nSpace + RewardTemplate_GetRewardSpace(tRewardStar,nUserId)
		end
		-- 减掉删除本身后的空间
		if Get_ItemtypeAccumulateLimit(nItemTypeId) <= 1 then
			nSpace = nSpace - 1
		end
		if not User_CheckLeftSpace(nSpace,nUserId) then
			User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["NoSpace"],nSpace),nUserId)
			return
		end
		-- 打掩码
		if nDailyLimit ~= nil then
			FirstWorldBudokai_RewardStc(nDailyLimit,nStcIndex,nUserId,1)
		end
		if nStar ~= nil then
			FirstWorldBudokai_RewardStc(3,1,nUserId,nRealStarNum)
		end
		if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
			if bIsReward then
				local tReward = RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem[nItemTypeId],1,nUserId)
				
				--额外操作
				if tReward[1]["tAward"][1]["RecordEmoneyLog"] ~= nil then
					Sys_SaveEmoneyBuy(tReward[1]["tAward"][1]["RecordEmoneyLog"], nUserId)
				end
			else
				User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["ItemLimit"],tFirstWorldBudokai_Stc[nDailyLimit]["Limit"][nStcIndex]),nUserId)
			end
			if bGiveStar then
				RewardTemplate_UseItemAndMsg(tRewardStar,nUserId)
			else
				if nStar ~= nil then
					User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["StarLimit"],nUserId)
				end
			end
		end
	-- 非随机类奖励
	else
		if bIsReward then
			nSpace = nSpace + RewardTemplate_GetRewardSpace(tFirstWorldBudokai_AwardItem[nItemTypeId],nUserId) 
		end
		if bGiveStar then
			nSpace = nSpace + RewardTemplate_GetRewardSpace(tRewardStar,nUserId)
		end
		if tFirstWorldBudokai_AwardItem[nItemTypeId]["DeleteItem"] ~= nil then
			local nDelSpace = tFirstWorldBudokai_AwardItem[nItemTypeId]["DeleteItem"][1]["ItemNum"] or 1
			-- 减掉删除本身后的空间
			if Get_ItemtypeAccumulateLimit(nItemTypeId) <= 1 then
				nSpace = nSpace - nDelSpace
			end
		end 
		if not User_CheckLeftSpace(nSpace,nUserId) then
			User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["NoSpace"],nSpace),nUserId)
			return
		end
		-- 打掩码
		if nDailyLimit ~= nil then
			FirstWorldBudokai_RewardStc(nDailyLimit,nStcIndex,nUserId,1)
		end
		if nStar ~= nil then
			FirstWorldBudokai_RewardStc(3,1,nUserId,nRealStarNum)
		end
		if bIsReward then
			RewardTemplate_UseItemAndMsg(tFirstWorldBudokai_AwardItem[nItemTypeId],nUserId)
		else
			User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["ItemLimit"],tFirstWorldBudokai_Stc[nDailyLimit]["Limit"][nStcIndex]),nUserId)
		end
		if bGiveStar then
			RewardTemplate_UseItemAndMsg(tRewardStar,nUserId)
		else
			if nStar ~= nil then
				User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["StarLimit"],nUserId)
			end
		end
	end
end

-- 刷怪掉落增益符
function FirstWorldBudokai_KillMonster()
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	if not FirstWorldBudokai_JudgeLevel() then
		return
	end
	local nUserId = Get_UserId()
	local nSpace = 0
	local bGiveBuff = false
	local bGiveChallengePack = false
	if Sys_Random(tFirstWorldBudokai_Random["DropBuff"]["StartNum"],tFirstWorldBudokai_Random["DropBuff"]["EndNum"]) then
		if FirstWorldBudokai_RewardStc(10,1,nUserId,1) then
			bGiveBuff = true
			nSpace = nSpace + RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem["Buff"],1,nUserId)
		end
	end
	if Sys_Random(tFirstWorldBudokai_Random["DropChallengePack"]["StartNum"],tFirstWorldBudokai_Random["DropChallengePack"]["EndNum"]) then
		if FirstWorldBudokai_RewardStc(2,1,nUserId,1) then
			bGiveChallengePack = true
			nSpace = nSpace + RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem["ChallengePack"],1,nUserId)
		end
	end
	if bGiveBuff or bGiveChallengePack then
		if not User_CheckLeftSpace(nSpace,nUserId) then
			return
		end
	end
	if bGiveBuff then
		RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem["Buff"],1,nUserId)
		if FirstWorldBudokai_RewardStc(10,1,nUserId,0,1) == tFirstWorldBudokai_Stc[10]["Limit"][1] then
			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["GetFullBuff"],nil,nil,nUserId)
		end
	end
	if bGiveChallengePack then
		RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem["ChallengePack"],1,nUserId)
		if FirstWorldBudokai_RewardStc(2,1,nUserId,0,1) == tFirstWorldBudokai_Stc[2]["Limit"][1] then
			Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["GetFullChallengePack"],nil,nil,nUserId)
		end
	end
end

-- 每日领取
function FirstWorldBudokai_GetDaily()
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end	
	
	local nUserId = Get_UserId()
	
	-- 判断等级
	if not FirstWorldBudokai_JudgeLevel() then
		return
	end
	
	-- taskdetail
	for i = 1,6 do
		FirstWorldBudokai_RewardStc(1,i,nUserId,0,0,1)
	end	
	-- 判断是否领取过
	-- if FirstWorldBudokai_RewardStc(12,1,nUserId,0,1) >= tFirstWorldBudokai_Stc[12]["Limit"][1] then
		-- return
	-- end
	-- if FirstWorldBudokai_RewardStc(12,1,nUserId,1) then
		-- FirstWorldBudokai_SendMail("DailyAward",1,nUserId)
	-- end
end

-- 每日礼包
function FirstWorldBudokai_DailyGet()
	local nUserId = Get_UserId()
	-- 判断等级
	if not FirstWorldBudokai_JudgeLevel() then
		return
	end
	
	-- 判断是否领取过
	if FirstWorldBudokai_RewardStc(12,1,nUserId,0,1) >= tFirstWorldBudokai_Stc[12]["Limit"][1] then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["HaveReceived"],nil,nil,nUserId)
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tFirstWorldBudokai_AwardItem["DailyGet"],nUserId) then
		return
	end
	
	
	if FirstWorldBudokai_RewardStc(12,1,nUserId,1) then
		RewardTemplate_UseItemAndMsg(tFirstWorldBudokai_AwardItem["DailyGet"],nUserId)
		
		local nItemId = Get_ItemLastAdd()
		local sText = tFirstWorldBudokai_Text["Use"]
		Item_Dialog(nItemId,sText,"FirstWorldBudokai_DailyPackage</N>3306655","NULL")
	end
end
-- 打开每日礼包
function FirstWorldBudokai_DailyPackage(nItemTypeId)
	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem[nItemTypeId],1,nUserId) + RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem[nItemTypeId],2,nUserId) - 1
	local bIsExtra = false
	-- 30%有额外奖励
	if Sys_Random(tFirstWorldBudokai_Random["DailyExtra"]["StartNum"],tFirstWorldBudokai_Random["DailyExtra"]["EndNum"]) then
		bIsExtra = true
	end
	if not User_CheckLeftSpace(nSpace,nUserId) then
		local sText = string.format(tFirstWorldBudokai_Text["Channel2005"]["NoSpace"],nSpace)
		User_TalkChannel2005(sText,nUserId)
		return
	end
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem[nItemTypeId],1,nUserId)
		if bIsExtra then
			RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem[nItemTypeId],2,nUserId)
		end
	end
end

-- 每日礼包log
function FirstWorldBudokai_LogForMail()

end

-- 高手寻路
function FirstWorldBudokai_FindBoss(nMapId)
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	if not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime"]) and not Sys_ChkDayTime(tFirstWorldBudokai_Cont["RankTime1"]) then
		return
	end
	local nIndex1 = math.random(1,#tFirstWorldBudokai_CreateBoss[nMapId])
	local nIndex2 = math.random(1,#tFirstWorldBudokai_CreateBoss[nMapId][nIndex1]["PosX"])
	local nPosX = tFirstWorldBudokai_CreateBoss[nMapId][nIndex1]["PosX"][nIndex2]
	local nPosY = tFirstWorldBudokai_CreateBoss[nMapId][nIndex1]["PosY"][nIndex2]
	local nUserId = Get_UserId()
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0,nUserId)
end
	
-- 全服邀请
function FirstWorldBudokai_SendInMap()
	if Sys_InviteFilter(tFirstWorldBudokai_Invite["Activity_InviteId"],tFirstWorldBudokai_Invite["Activity_Invite_1"]) then
		Sys_InviteTrans(tFirstWorldBudokai_Invite["MapId"],tFirstWorldBudokai_Invite["Invite_Pos"],tFirstWorldBudokai_Invite["InviteSendId"],tFirstWorldBudokai_Invite["InviteSendOkId"],tFirstWorldBudokai_Invite["Activity_InviteId"],tFirstWorldBudokai_Invite["InviteCountDown"])
	end
end	

-- 碎片合成（20个）
function FirstWorldBudokai_Compose(nItemTypeId)
	local nUserId = Get_UserId()
	local tReward = CommonFunc_Copy(tFirstWorldBudokai_Compose[nItemTypeId])
	local nNeedNum = tReward["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nNeedNum) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NeedNum"],nil,nil,nUserId)
		return
	end
	local nIndex = math.random(1,#tReward["ComposeItem"])
	local nComposeId = tReward["ComposeItem"][nIndex]
	tReward["RewardItem"][1]["Id"] = nComposeId
	if RewardTemplate_CheckSpace(tReward,nUserId) then
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
		local sGetItem = Get_ItemtypeName(nComposeId)
		local sText = string.format(tFirstWorldBudokai_Text["MsgBox"]["ComposeSuccess"],sGetItem)
		Sys_MsgBox(sText,nil,nil,nUserId)
	end
end

-- 碎片合成（1个）
function FirstWorldBudokai_ComposeDouble(nItemTypeId)
	local nUserId = Get_UserId()
	local tReward = CommonFunc_Copy(tFirstWorldBudokai_ComposeDouble[nItemTypeId])
	local nNeedNum = tReward["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nNeedNum) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["DoubleNum"],nil,nil,nUserId)
		-- User_TalkChannel2005(string.format(tFirstWorldBudokai_Text["Channel2005"]["NeedNum"],nNeedNum),nUserId)
		return
	end
	if RewardTemplate_CheckSpace(tReward,nUserId) then
		if not Sys_Random(tFirstWorldBudokai_Random["Compose"]["StartNum"],tFirstWorldBudokai_Random["Compose"]["EndNum"]) then
			if Item_ChkMulItem(nItemTypeId,nItemTypeId,nNeedNum) and Item_DelMulItem(nItemTypeId,nItemTypeId,nNeedNum) then
				Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["ComposeFail"],string.format("FirstWorldBudokai_Msg</N>%d",nItemTypeId),nil,nUserId)
			end
			return
		end
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
		local sGetItem = Get_ItemtypeName(nItemTypeId)
		local sText = string.format(tFirstWorldBudokai_Text["MsgBox"]["ComposeDouble"],sGetItem)
		Sys_MsgBox(sText,string.format("FirstWorldBudokai_Msg</N>%d",nItemTypeId),nil,nUserId)
	end
end

-- 继续弹出对话框
function FirstWorldBudokai_Msg(nItemTypeId)
	if not Item_ChkItem(nItemTypeId) then
		return
	end
	
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end

-- 可选包 二次确认
function FirstWorldBudokai_ChooseConfirm(nItemTypeId,nIndex)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemTypeId) then
		return
	end
	if RewardTemplate_CheckSpace(tFirstWorldBudokai_AwardItem[nItemTypeId][nIndex],nUserId) then
		local sItemName = tFirstWorldBudokai_Text[nItemTypeId]["Option11"..nIndex]
		tItem[nItemTypeId]["Text121"] = string.format(tFirstWorldBudokai_Text[nItemTypeId]["Text121"],sItemName)
		tItem[nItemTypeId]["Text122"] = string.format(tFirstWorldBudokai_Text[nItemTypeId]["Text122"],tFirstWorldBudokai_Text[nItemTypeId]["ItemDesc"][nIndex])
		tItem[nItemTypeId]["OptionFunc121"]=string.format("FirstWorldBudokai_ChooseItem</N>%d</N>%d",nItemTypeId,nIndex)
		LinkItemGossipFunc_New(nItemTypeId,"1-2")
	end
end

-- 打开可选包
function FirstWorldBudokai_ChooseItem(nItemTypeId,nIndex)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemTypeId) then
		return
	end
	if RewardTemplate_CheckSpace(tFirstWorldBudokai_AwardItem[nItemTypeId][nIndex],nUserId) then
		RewardTemplate_UseItemAndMsg(tFirstWorldBudokai_AwardItem[nItemTypeId][nIndex],nUserId)
	end	
end

-- 神纹随机包
function FirstWorldBudokai_RandomItem(nItemTypeId)
	local nUserId = Get_UserId()
	local nIndex = math.random(1,#tFirstWorldBudokai_RandomItem[nItemTypeId]["RandomItem"])
	local nRandomId = tFirstWorldBudokai_RandomItem[nItemTypeId]["RandomItem"][nIndex]
	tFirstWorldBudokai_RandomItem[nItemTypeId]["RewardItem"][1]["Id"] = nRandomId
	if RewardTemplate_CheckSpace(tFirstWorldBudokai_RandomItem[nItemTypeId],nUserId) then
		RewardTemplate_UseItemAndMsg(tFirstWorldBudokai_RandomItem[nItemTypeId],nUserId)
	end
end

-- 前往神龙岛
function FirstWorldBudokai_ToDragonIsland(nMapId)
	local nUserId = Get_UserId()
	if Get_UserMapId(nUserId) ~= 1002 then
		return
	end
	if not FirstWorldBudokai_JudgeLevel(nUserId) then
		Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotLevelToIsLand"],nil,nil,nUserId)
		return
	end
	local tTable = tFirstWorldBudokai_CreateBoss[1][nMapId]
	local nIndex = math.random(1,#tTable)
	local nPosIndex = math.random(1,#tTable[nIndex]["PosX"])
	local nPosX = tTable[nIndex]["PosX"][nPosIndex]
	local nPosY = tTable[nIndex]["PosY"][nPosIndex]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
end

-- 传送 删除buff
function FirstWorldBudokai_DelStatus(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	if not ((nUserMapId == tFirstWorldBudokai_Cont["DelBuffMap"][1]) or (nUserMapId == tFirstWorldBudokai_Cont["DelBuffMap"][2])) then
		return
	end
	-- 判断打宝状态  出打宝区 清除状态和buff
	local nStatus = tFirstWorldBudokai_Cont["StatusType"]
	if User_ChkRoleStatus(nStatus,nUserId) then
		User_DelRoleStatus(nStatus,nUserId)
	end
	local nStatus_1 = tFirstWorldBudokai_DelBuff["Status"][1][1]
	local nStatus_2 = tFirstWorldBudokai_DelBuff["Status"][1][2]
	if User_ChkRoleStatus(nStatus_1,nUserId) then
		User_DelRoleStatus(nStatus_1,nUserId)
	end
	if User_ChkRoleStatus(nStatus_2,nUserId) then
		User_DelRoleStatus(nStatus_2,nUserId)
	end
	for i = 2,5 do
		local nStatusType = tFirstWorldBudokai_DelBuff["Status"][i]
		if User_ChkRoleStatus(nStatusType,nUserId) then
			User_DelRoleStatus(nStatusType,nUserId)
		end
	end
	User_DelAllAttribStatus(nUserId)
	
	local nStatus = 54
	User_DelRoleStatus(nStatus,nUserId)
end

-- 杀怪刷宝箱
-- function FirstWorldBudokai_KillMonsterFreshBox(nMonsterId)
	-- local nUserId = Get_UserId()
	-- local nGlobalId = tFirstWorldBudokai_FreshBox[2]["GlobalId"]
	-- local nReceivedPos = tFirstWorldBudokai_FreshBox[2]["Received"]
	-- if Get_SysDynaGlobalData(nGlobalId,nReceivedPos) > 0 then
		-- return
	-- end
	-- if Sys_Random(tFirstWorldBudokai_Random["KillMonsterFreshBox"]["StartNum"],tFirstWorldBudokai_Random["KillMonsterFreshBox"]["EndNum"]) then
		-- local nMapId = Get_UserMapId(nUserId)
		-- local nBossPosX = Get_MonsterPosX()
		-- local nBossPosY = Get_MonsterPosY()
		-- FirstWorldBudokai_FreshBox1(tFirstWorldBudokai_Cont["BoxId1"],nMapId,nBossPosX,nBossPosY)
	-- end
-- end

-- 刷新璇玑宝箱 
-- function FirstWorldBudokai_FreshBox1(nNpcId,nMapId,nPosX,nPosY)
	-- for i,v in pairs(tFirstWorldBudokai_Map) do
		-- if Get_NpcMapID(nNpcId) == v then
			-- return
		-- end
	-- end
	-- local nGlobalId = tFirstWorldBudokai_FreshBox[2]["GlobalId"]
	-- local nReceivedPos = tFirstWorldBudokai_FreshBox[2]["Received"]
	-- local nTimePos = tFirstWorldBudokai_FreshBox[2]["Time"]
	-- Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,0)
	-- Sys_SetSynaGlobalData(nGlobalId,nTimePos,os.time())
	-- Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	-- Map_UserExeFunc(nMapId,-1,string.format("FirstWorldBudokai_MapInvite1</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY))
-- end

--地图邀请
-- function FirstWorldBudokai_MapInvite1(nMapId,nPosX,nPosY,nNowUserId)
	-- local nUserId = nNowUserId or Get_UserId()
	-- -- if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		-- -- return
	-- -- end
	-- -- if not FirstWorldBudokai_JudgeLevel(nUserId) then
		-- -- return
	-- -- end
	-- local sMapName = Get_MapName(nMapId)
	-- -- local sFunc = string.format("User_UserRandBoundTrans</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,5,5,1,nUserId)
	-- local sFunc = string.format("FirstWorldBudokai_MapCross</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,nUserId)
	-- local sText = string.format(tFirstWorldBudokai_Text["MsgBox"]["MapInvite"],sMapName,nPosX,nPosY)
	-- Sys_MsgBox(sText,sFunc,nil,nUserId)
-- end	

-- 打开璇玑宝箱
-- function FirstWorldBudokai_OpenBox1(nNpcId)
	-- local nGlobalId = tFirstWorldBudokai_FreshBox[2]["GlobalId"]
	-- local nReceivedPos = tFirstWorldBudokai_FreshBox[2]["Received"]
	-- local nTimePos = tFirstWorldBudokai_FreshBox[2]["Time"]
	-- local nCD = tFirstWorldBudokai_FreshBox[2]["CD"]
	-- local nReceived = Get_SysDynaGlobalData(nGlobalId,nReceivedPos)
	-- local nTime = Get_SysDynaGlobalData(nGlobalId,nTimePos)
	-- local nNowTime = os.time()
	-- local nUserId = Get_UserId()
	-- -- 已被领走
	-- if nReceived >= 1 then
		-- Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["Received"],nil,nil,nUserId)
		-- return
	-- end
	-- -- 时间未到
	-- local nCrossTime = nNowTime - nTime
	-- if nCrossTime < nCD then
		-- Sys_MsgBox(string.format(tFirstWorldBudokai_Text["MsgBox"]["CD"],nCD - nCrossTime),nil,nil,nUserId)
		-- return
	-- end
	-- -- 赠点数量
	-- if Get_UserMonoEMoney(nUserId) + 2000 > G_User_MaxEmoneyMono then
		-- Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["MonoEMoneyFull"],nil,nil,nUserId)
		-- return
	-- end		
	-- -- 背包判断
	-- local nSpace = RewardTemplate_GetRandomSpace(tFirstWorldBudokai_AwardItem["BossBox"],1,nUserId)
	-- if not User_CheckLeftSpace(nSpace,nUserId) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	-- Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,1)
	-- local nMapId = tFirstWorldBudokai_Cont["BossBox"]["MapId"]
	-- local nPosX = tFirstWorldBudokai_Cont["BossBox"]["PosX"]
	-- local nPosY = tFirstWorldBudokai_Cont["BossBox"]["PosY"]
	-- Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	-- RewardTemplate_NewRandom(tFirstWorldBudokai_AwardItem["BossBox"],1,nUserId)
-- end

-- -- 整点清理
function FirstWorldBudokai_ClearBoxLimit()
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		return
	end
	
	local nGlobalId = tFirstWorldBudokai_FreshBox[1]["GlobalId"]
	local nReceivedPos = tFirstWorldBudokai_FreshBox[1]["Received"]
	Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,0)
end
---------------------------------------------NPC模块---------------------------------------------
tNpcFace[256] = 54
tNpcGossip[22210] = tNpcGossip[22210] or DefaultNpc:new{}
tNpcGossip[22210]["OptionHidden"] = 1
tNpcGossip[22210]["DialogueText"] = tFirstWorldBudokai_Text[22210]
-- 活动前
tNpcGossip[22210]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22210]["tOption1-1"] = {111}
tNpcGossip[22210]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tFirstWorldBudokai_Time["Activity"])
end

-- 活动期间
tNpcGossip[22210]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[22210]["tOption1-2"] = {121,122,123,124}
tNpcGossip[22210]["ChkFunc1-2"] = function ()
	if not FirstWorldBudokai_JudgeLevel() then
		tNpcGossip[22210]["Text1-2"] = {121,122,123,124,125,126,127,1210,128,129}
	else
		tNpcGossip[22210]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
	end
	return Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"])
end
-- 武道会规则
tNpcGossip[22210]["OptionPoint121"] = "4-1"
tNpcGossip[22210]["OptionChkFunc121"] = function()
	return FirstWorldBudokai_JudgeLevel()
end
-- 挑战云游高手奖励
tNpcGossip[22210]["OptionPoint122"] = "4-2"
tNpcGossip[22210]["OptionChkFunc122"] = function()
	return FirstWorldBudokai_JudgeLevel()
end
-- 击败云游高手奖励
tNpcGossip[22210]["OptionPoint123"] = "4-3"
tNpcGossip[22210]["OptionChkFunc123"] = function()
	return FirstWorldBudokai_JudgeLevel()
end
-- 待我等级达到再来
tNpcGossip[22210]["OptionChkFunc124"] = function()
	return not FirstWorldBudokai_JudgeLevel()
end

-- 武道会规则
tNpcGossip[22210]["Text4-1"] = {411,412,413,414,415,416,417}
tNpcGossip[22210]["tOption4-1"] = {411}
tNpcGossip[22210]["OptionPoint411"] = "1-2"

-- 挑战云游高手奖励
tNpcGossip[22210]["Text4-2"] = {421,422,423,424,425,426,427,428,429}
tNpcGossip[22210]["tOption4-2"] = {421}
tNpcGossip[22210]["OptionPoint421"] = "1-2"

-- 击败云游高手奖励
tNpcGossip[22210]["Text4-3"] = {431,432,433,434,435,436,437,438,439}
tNpcGossip[22210]["tOption4-3"] = {431}
tNpcGossip[22210]["OptionPoint431"] = "1-2"

-- 活动后
tNpcGossip[22210]["Text1-3"] = {131,132}
tNpcGossip[22210]["tOption1-3"] = {131}
tNpcGossip[22210]["ChkFunc1-3"] = function ()
	return CommonFunc_GetAfterActivityTime(tFirstWorldBudokai_Time["Activity"])
end

-- 八大门派高手介绍
for i = 21321,21328 do
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["DialogueText"] = tFirstWorldBudokai_Text[i]
	tNpcGossip[i]["Text1-1"] = {111,112,113,114,119,1110,115,116,117,118,1111}
	tNpcGossip[i]["ChkFunc1-1"] = function ()
		local sBeginYear,sBeginMonth,sBeginDay,sBeginHour,sBeginMinute,sEndYear,sEndMonth,sEndDay,sEndHour,sEndMinute = CommonFunc_AnalysisActivityTime(tFirstWorldBudokai_Time["Activity"])
		tNpcGossip[i]["Text119"] = string.format(tFirstWorldBudokai_Text["ActivityTime"],sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
		if FirstWorldBudokai_JudgeLevel() then
			tNpcGossip[i]["Text1-1"] = {111,112,113,114,119,115,116,117,118,1111}
		else
			local nMetem = tFirstWorldBudokai_Cont["Metem"]
			local nLevel = tFirstWorldBudokai_Cont["Level"]
			tNpcGossip[i]["Text1110"] = string.format(tFirstWorldBudokai_Text["LevelLimit"],nMetem,nLevel)
			tNpcGossip[i]["Text1-1"] = {111,112,113,114,119,1110,115,116,117,118,1111}
		end
		return true
	end
	-- tNpcGossip[i]["tOption1-1"] = {111,112}
	tNpcGossip[i]["tOption1-1"] = {112,113,111}
	-- 详细介绍
	tNpcGossip[i]["OptionPoint111"] = "1-2"
	-- 武道会奖励
	-- tNpcGossip[i]["OptionPoint112"] = "2-1"
	-- 每日奖励
	tNpcGossip[i]["OptionFunc112"] = "FirstWorldBudokai_DailyGet"
	tNpcGossip[i]["OptionChkFunc112"] = function()
		if FirstWorldBudokai_RewardStc(12,1,nUserId,0,1) >= tFirstWorldBudokai_Stc[12]["Limit"][1] then
			tNpcGossip[i]["Option112"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option112"] , tFirstWorldBudokai_Text["HaveReceived"])
		else
			tNpcGossip[i]["Option112"] = tFirstWorldBudokai_Text[i]["Option112"]
		end
		return FirstWorldBudokai_JudgeLevel()
	end
	
	-- 详细介绍
	tNpcGossip[i]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210}
	tNpcGossip[i]["tOption1-2"] = {121}
	tNpcGossip[i]["OptionFunc121"] = "FirstWorldBudokai_ToDragonIsland</N>10137"
	-- 武道会奖励
	tNpcGossip[i]["Text2-1"] = {211,212,213,214,215}
	tNpcGossip[i]["tOption2-1"] = {211}
	tNpcGossip[i]["OptionPoint211"] = "1-1"
end

-- 璇玑宝箱
tNpcFace[258] = 384
tNpcGossip[22212] = tNpcGossip[22212] or DefaultNpc:new{}
tNpcGossip[22212]["OptionHidden"] = 1
tNpcGossip[22212]["DialogueText"] = tFirstWorldBudokai_Text[22212]
tNpcGossip[22212]["Text1-1"] = {111,112,113}
tNpcGossip[22212]["tOption1-1"] = {111}
tNpcGossip[22212]["OptionFunc111"] = "FirstWorldBudokai_OpenBox</N>22212"

tNpcGossip[22212]["Text2-1"] = {211,112,113}
tNpcGossip[22212]["tOption2-1"] = {211}

-- 璇玑宝箱
-- tNpcGossip[21385] = tNpcGossip[21385] or DefaultNpc:new{}
-- tNpcGossip[21385]["OptionHidden"] = 1

-- tNpcGossip[21385]["DialogueText"] = tFirstWorldBudokai_Text[21385]
-- tNpcGossip[21385]["Text1-1"] = {112,113}
-- tNpcGossip[21385]["tOption1-1"] = {111}
-- tNpcGossip[21385]["OptionFunc111"] = "FirstWorldBudokai_ChkCaptcha</N>21385"

-- tNpcGossip[21385]["Text2-1"] = {211,112,113}
-- tNpcGossip[21385]["tOption2-1"] = {211}

-- 总胜绩榜
--tNpcFace[258] = 384
tNpcGossip[21320] = tNpcGossip[21320] or DefaultNpc:new{}
tNpcGossip[21320]["OptionHidden"] = 1
tNpcGossip[21320]["DialogueText"] = tFirstWorldBudokai_Text[21320]
tNpcGossip[21320]["Text1-1"] = {1111,1112,1113,111,112,113,114,115,116,117,118,119,1110,1114,1115,1116}
tNpcGossip[21320]["tOption1-1"] = {111,112}
tNpcGossip[21320]["OptionPoint111"] = "1-2"
tNpcGossip[21320]["OptionPoint112"] = "1-3"

-- 每日排名奖励
tNpcGossip[21320]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[21320]["tOption1-2"] = {121}
tNpcGossip[21320]["OptionFunc121"] = "FirstWorldBudokai_RankDialog</N>21320"

-- 终极排名奖励
tNpcGossip[21320]["Text1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[21320]["tOption1-3"] = {131}
tNpcGossip[21320]["OptionFunc131"] = "FirstWorldBudokai_RankDialog</N>21320"

-- 总胜绩榜
--tNpcFace[258] = 384
tNpcGossip[22566] = tNpcGossip[21320]

-- 胜绩好礼榜
tNpcGossip[21329] = tNpcGossip[21329] or DefaultNpc:new{}
tNpcGossip[21329]["OptionHidden"] = 1
tNpcGossip[21329]["DialogueText"] = tFirstWorldBudokai_Text[21329]
-- 领取胜绩奖励
tNpcGossip[21329]["Text1-1"] = {1111,1112,1113,111,112,113,114,115,116,117,118,119,1110,1114,1115,1116}
tNpcGossip[21329]["tOption1-1"] = {111}
tNpcGossip[21329]["OptionFunc111"] = "FirstWorldBudokai_GetAddUpReward</N>21329"

-- 背包空间不足
tNpcGossip[21329]["Text1-2"] = {121}
tNpcGossip[21329]["tOption1-2"] = {121}

-- 无奖励可领
tNpcGossip[21329]["Text1-3"] = {131}
tNpcGossip[21329]["tOption1-3"] = {131}

-- 活动已过
tNpcGossip[21329]["Text1-4"] = {141}
tNpcGossip[21329]["tOption1-4"] = {141}

-- 背包空间不足
tNpcGossip[21329]["Text1-5"] = {151}
tNpcGossip[21329]["tOption1-5"] = {151}

-- 领取过
tNpcGossip[21329]["Text1-6"] = {161}
tNpcGossip[21329]["tOption1-6"] = {161}

-- 胜绩好礼榜
tNpcFace[1658] = 1248
tNpcFace[1659] = 1248
tNpcGossip[22567] = tNpcGossip[21329]

-- 副本内怪物npc
-- 道士
tNpcFace[5803] = 67
tNpcFace[5811] = 67
tNpcFace[5819] = 67
tNpcFace[5827] = 67
tNpcFace[5835] = 67
tNpcFace[5843] = 67
tNpcFace[5909] = 67
-- 武僧
tNpcFace[5804] = 226
tNpcFace[5812] = 226
tNpcFace[5820] = 226
tNpcFace[5828] = 226
tNpcFace[5836] = 226
tNpcFace[5844] = 226
tNpcFace[5910] = 226
-- 小龙
tNpcFace[5805] = 43
tNpcFace[5813] = 43
tNpcFace[5821] = 43
tNpcFace[5829] = 43
tNpcFace[5837] = 43
tNpcFace[5845] = 43
tNpcFace[5911] = 43
-- 忍者
tNpcFace[5806] = 23
tNpcFace[5814] = 23
tNpcFace[5822] = 23
tNpcFace[5830] = 23
tNpcFace[5838] = 23
tNpcFace[5846] = 23
tNpcFace[5912] = 23
-- 海盗
tNpcFace[5807] = 17
tNpcFace[5815] = 17
tNpcFace[5823] = 17
tNpcFace[5831] = 17
tNpcFace[5839] = 17
tNpcFace[5847] = 17
tNpcFace[5913] = 17
-- 战士
tNpcFace[5808] = 32
tNpcFace[5816] = 32
tNpcFace[5824] = 32
tNpcFace[5832] = 32
tNpcFace[5840] = 32
tNpcFace[5848] = 32
tNpcFace[5914] = 32
-- 弓手
tNpcFace[5809] = 54
tNpcFace[5817] = 54
tNpcFace[5825] = 54
tNpcFace[5833] = 54
tNpcFace[5841] = 54
tNpcFace[5849] = 54
tNpcFace[5915] = 54
-- 勇士
tNpcFace[5810] = 33
tNpcFace[5818] = 33
tNpcFace[5826] = 33
tNpcFace[5834] = 33
tNpcFace[5842] = 33
tNpcFace[5850] = 33
tNpcFace[5916] = 33
for i = 21157,21164 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tFirstWorldBudokai_Text[i]
tNpcGossip[i]["Text1-1"] = {111}
tNpcGossip[i]["tOption1-1"] = {111}
tNpcGossip[i]["OptionFunc111"] = "FirstWorldBudokai_InstanceCallBoss"
end

-- 精武宝箱1-3
tNpcFace[256] = 384
for i = 21355,21357 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tFirstWorldBudokai_Text[i]
tNpcGossip[i]["Text1-1"] = {111,112,113,114}
tNpcGossip[i]["tOption1-1"] = {111,112,113,114}
tNpcGossip[i]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[i]["OptionFunc111"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>9",i)
tNpcGossip[i]["OptionChkFunc111"] = function()
	local nUserId = Get_UserId()
	if ((FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) >= 1) and (FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) < 10)) then
		return true
	else
		return false
	end
end
tNpcGossip[i]["OptionFunc112"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>5",i)
tNpcGossip[i]["OptionChkFunc112"] = function()
	local nUserId = Get_UserId()
	if ((FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) >= 1) and (FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) < 10)) then
		return true
	else
		return false
	end
end
tNpcGossip[i]["OptionFunc113"] = "FirstWorldBudokai_ChgMap"
tNpcGossip[i]["OptionChkFunc113"] = function()
	local nUserId = Get_UserId()
	if (((FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) < 1) or (FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) >= 10)) and ((FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) < 1) or (FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) >= 10))) then
		return true
	else
		return false
	end
end

tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211}

tNpcGossip[i]["Text2-2"] = {221}
tNpcGossip[i]["tOption2-2"] = {221}
end

-- 精武宝箱4-6
for i = 21165,21167 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tFirstWorldBudokai_Text[i]
tNpcGossip[i]["Text1-1"] = {111,112,113,114}
tNpcGossip[i]["tOption1-1"] = {111,112,113,114}
tNpcGossip[i]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	if FirstWorldBudokai_RewardStc(11,1,nUserId,0,1) == 1 then
		tNpcGossip[i]["Option111"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option111"],tFirstWorldBudokai_Text["Double"])
		tNpcGossip[i]["OptionFunc111"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>9</N>%d",i,1)
	elseif FirstWorldBudokai_RewardStc(11,3,nUserId,0,1) == 1 then
		tNpcGossip[i]["Option111"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option111"],tFirstWorldBudokai_Text["TenPercent"])
		tNpcGossip[i]["OptionFunc111"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>9</N>%d",i,3)
	elseif FirstWorldBudokai_RewardStc(11,5,nUserId,0,1) == 1 then
		tNpcGossip[i]["Option111"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option111"],tFirstWorldBudokai_Text["FiftyPercent"])
		tNpcGossip[i]["OptionFunc111"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>9</N>%d",i,5)
	else
		tNpcGossip[i]["Option111"] = tFirstWorldBudokai_Text[i]["Option111"]
		tNpcGossip[i]["OptionFunc111"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>9",i)
	end
	if FirstWorldBudokai_RewardStc(11,2,nUserId,0,1) == 1 then
		tNpcGossip[i]["Option112"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option112"],tFirstWorldBudokai_Text["Double"])
		tNpcGossip[i]["OptionFunc112"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>5</N>%d",i,2)
	elseif FirstWorldBudokai_RewardStc(11,4,nUserId,0,1) == 1 then
		tNpcGossip[i]["Option112"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option112"],tFirstWorldBudokai_Text["TenPercent"])
		tNpcGossip[i]["OptionFunc112"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>5</N>%d",i,4)
	elseif FirstWorldBudokai_RewardStc(11,6,nUserId,0,1) == 1 then
		tNpcGossip[i]["Option112"] = string.format(tGlobalFormat[2],tFirstWorldBudokai_Text[i]["Option112"],tFirstWorldBudokai_Text["FiftyPercent"])
		tNpcGossip[i]["OptionFunc112"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>5</N>%d",i,6)
	else
		tNpcGossip[i]["Option112"] = tFirstWorldBudokai_Text[i]["Option112"]
		tNpcGossip[i]["OptionFunc112"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>5",i)
	end
	return true
end
tNpcGossip[i]["OptionFunc111"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>9",i)
tNpcGossip[i]["OptionChkFunc111"] = function()
	local nUserId = Get_UserId()
	if ((FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) >= 1) and (FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) < 10)) then
		return true
	else
		return false
	end
end
tNpcGossip[i]["OptionFunc112"] = string.format("FirstWorldBudokai_InstanceBoxReward</N>%d</N>5",i)
tNpcGossip[i]["OptionChkFunc112"] = function()
	local nUserId = Get_UserId()
	if ((FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) >= 1) and (FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) < 10)) then
		return true
	else
		return false
	end
end
tNpcGossip[i]["OptionFunc113"] = "FirstWorldBudokai_ChgMap"
tNpcGossip[i]["OptionChkFunc113"] = function()
	local nUserId = Get_UserId()
	if (((FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) < 1) or (FirstWorldBudokai_RewardStc(5,1,nUserId,0,1) >= 10)) and ((FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) < 1) or (FirstWorldBudokai_RewardStc(9,1,nUserId,0,1) >= 10))) then
		return true
	else
		return false
	end
end

tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211}

tNpcGossip[i]["Text2-2"] = {221}
tNpcGossip[i]["tOption2-2"] = {221}
end


---------------------------------------------物品模块---------------------------------------------
-- 天下第一武道会
tItemFace[3305571] = 838

-- 武道星章
tItem[3305620] = tItem[3305620] or {}
tItem[3305620]["Function"] = function(nItemTypeId,sItemName)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["ItemOverTime"],nUserId)
		end
		return
	end
	local nNpcId = tFirstWorldBudokai_Cont["FineExchange"]
	local nMapId = Get_NpcMapID(nNpcId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
end


--1-3星挑战令
--3305572,3305573,3305574,3305575,3305576,3305577,3305578,3305579
--3305580,3305581,3305582,3305583,3305584,3305585,3305586,3305587
--3305588,3305589,3305590,3305591,3305592,3305593,3305594,3305595
-- for i = 3305572, 3305595 do
	-- tItem[i] = tItem[i] or {}
	-- tItem[i]["Function"] = function(nItemTypeId,sItemName)
		-- FirstWorldBudokai_CallBoss(nItemTypeId)
	-- end
-- end
for i = 3305572, 3305595 do
	tItemFace[i] = 1220 + ( i - 3305572 )
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		--过期删除
		if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["TokenOverTime"])
			end
			return
		else
			--使用限制
			local nMapId = Get_UserMapId()
			local bFlag = false
			
			for k,v in pairs(tFirstWorldBudokai_Cont["CanIntoMap"]) do
				if nMapId == v then
					bFlag = true
					break
				end
			end
			
			if not bFlag then
				Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotAllowMap"])
				return
			end
			
			LinkItemGossipFunc_New(nItemTypeId,"1-1")
		end
	end

	tItem[i]["Text1-1"] = {115,111,112,113,114}
	tItem[i]["Text111"] = tFirstWorldBudokai_Text["ChallengePack"]["Text111"]
	tItem[i]["Text113"] = tFirstWorldBudokai_Text["ChallengePack"]["Text113"]
	tItem[i]["Text114"] = tFirstWorldBudokai_Text["ChallengePack"]["Text114"]
	tItem[i]["Text115"] = tFirstWorldBudokai_Text["ChallengePack"]["Text115"]
	tItem[i]["ChkFunc1-1"] = function ()
		local sItemName = Get_ItemtypeName(i)
		tItem[i]["Text112"] = string.format(tFirstWorldBudokai_Text["ChallengePack"]["Text112"],sItemName)
		return true
	end

	tItem[i]["tOption1-1"] = {111}
	tItem[i]["Option111"] = tFirstWorldBudokai_Text["ChallengePack"]["Option211"]
	tItem[i]["OptionFunc111"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>0",i)
	
	-- tItem[i]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
	-- tItem[i]["Text211"] = tFirstWorldBudokai_Text["ChallengePack"]["Text211"]
	-- tItem[i]["Text212"] = tFirstWorldBudokai_Text["ChallengePack"]["Text212"]
	-- tItem[i]["Text213"] = tFirstWorldBudokai_Text["ChallengePack"]["Text213"]
	-- tItem[i]["Text214"] = tFirstWorldBudokai_Text["ChallengePack"]["Text214"]	
	-- tItem[i]["Text215"] = tFirstWorldBudokai_Text["ChallengePack"]["Text215"]	
	-- tItem[i]["Text216"] = tFirstWorldBudokai_Text["ChallengePack"]["Text216"]	
	-- tItem[i]["Text217"] = tFirstWorldBudokai_Text["ChallengePack"]["Text217"]	
	-- tItem[i]["Text218"] = tFirstWorldBudokai_Text["ChallengePack"]["Text218"]	
	-- tItem[i]["Text219"] = tFirstWorldBudokai_Text["ChallengePack"]["Text219"]	
	-- tItem[i]["tOption2-1"] = {211}
	-- 直接登上擂台
	-- tItem[i]["Option211"] = tFirstWorldBudokai_Text["ChallengePack"]["Option211"]
	-- tItem[i]["OptionFunc211"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>0",i)
end
--4-6星挑战令
--3305596,3305597,3305598,3305599,3305600,3305601,3305602,3305603
--3305604,3305605,3305606,3305607,3305608,3305609,3305610,3305611
--3305612,3305613,3305614,3305615,3305616,3305617,3305618,3305619
for i = 3305596, 3305619 do
	tItemFace[i] = 1194 + ( i - 3305596 )
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		--过期删除
		if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["TokenOverTime"])
			end
			return
		else
			--使用限制
			local nMapId = Get_UserMapId()
			local bFlag = false
			
			for k,v in pairs(tFirstWorldBudokai_Cont["CanIntoMap"]) do
				if nMapId == v then
					bFlag = true
					break
				end
			end
			
			if not bFlag then
				Sys_MsgBox(tFirstWorldBudokai_Text["MsgBox"]["NotAllowMap"])
				return
			end
			
			LinkItemGossipFunc_New(nItemTypeId,"1-1")
		end
	end

	tItem[i]["Text1-1"] = {115,111,112,113,114}
	tItem[i]["Text111"] = tFirstWorldBudokai_Text["ChallengePack"]["Text111"]
	tItem[i]["Text113"] = tFirstWorldBudokai_Text["ChallengePack"]["Text113"]
	tItem[i]["Text114"] = tFirstWorldBudokai_Text["ChallengePack"]["Text114"]
	tItem[i]["Text115"] = tFirstWorldBudokai_Text["ChallengePack"]["Text115"]
	tItem[i]["ChkFunc1-1"] = function ()
		local sItemName = Get_ItemtypeName(i)
		tItem[i]["Text112"] = string.format(tFirstWorldBudokai_Text["ChallengePack"]["Text112"],sItemName)
		return true
	end

	tItem[i]["tOption1-1"] = {111}
	tItem[i]["Option111"] = tFirstWorldBudokai_Text["ChallengePack"]["Option111"]
	tItem[i]["OptionFunc111"] = string.format("FirstWorldBudokai_Prepare</N>%d",i)
	
	tItem[i]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
	tItem[i]["Text211"] = tFirstWorldBudokai_Text["ChallengePack"]["Text211"]
	tItem[i]["Text212"] = tFirstWorldBudokai_Text["ChallengePack"]["Text212"]
	tItem[i]["Text213"] = tFirstWorldBudokai_Text["ChallengePack"]["Text213"]
	tItem[i]["Text214"] = tFirstWorldBudokai_Text["ChallengePack"]["Text214"]	
	tItem[i]["Text215"] = tFirstWorldBudokai_Text["ChallengePack"]["Text215"]	
	tItem[i]["Text216"] = tFirstWorldBudokai_Text["ChallengePack"]["Text216"]	
	tItem[i]["Text217"] = tFirstWorldBudokai_Text["ChallengePack"]["Text217"]	
	tItem[i]["Text218"] = tFirstWorldBudokai_Text["ChallengePack"]["Text218"]	
	tItem[i]["Text219"] = tFirstWorldBudokai_Text["ChallengePack"]["Text219"]	
	tItem[i]["tOption2-1"] = {211,212,213,214,215,216}
	-- 直接登上擂台
	tItem[i]["Option211"] = tFirstWorldBudokai_Text["ChallengePack"]["Option211"]
	tItem[i]["OptionFunc211"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>0",i)
	-- 降低10%对手生命值
	tItem[i]["Option212"] = tFirstWorldBudokai_Text["ChallengePack"]["Option212"]
	tItem[i]["OptionFunc212"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>3306061",i)
	tItem[i]["OptionChkFunc212"] = function()
		if not Item_ChkItem(3306061) then
			return false
		else
			return true
		end
	end
	-- 降低50%对手生命值
	tItem[i]["Option213"] = tFirstWorldBudokai_Text["ChallengePack"]["Option213"]
	tItem[i]["OptionFunc213"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>3306062",i)
	tItem[i]["OptionChkFunc213"] = function()
		if not Item_ChkItem(3306062) then
			return false
		else
			return true
		end
	end
	-- 提升10%擂台奖励
	tItem[i]["Option214"] = tFirstWorldBudokai_Text["ChallengePack"]["Option214"]
	tItem[i]["OptionFunc214"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>3306064",i)
	tItem[i]["OptionChkFunc214"] = function()
		if not Item_ChkItem(3306064) then
			return false
		else
			return true
		end
	end
	-- 提升50%擂台奖励
	tItem[i]["Option215"] = tFirstWorldBudokai_Text["ChallengePack"]["Option215"]
	tItem[i]["OptionFunc215"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>3306065",i)
	tItem[i]["OptionChkFunc215"] = function()
		if not Item_ChkItem(3306065) then
			return false
		else
			return true
		end
	end
	-- 同时挑战2个相同对手
	tItem[i]["Option216"] = tFirstWorldBudokai_Text["ChallengePack"]["Option216"]
	tItem[i]["OptionFunc216"] = string.format("FirstWorldBudokai_IntoCallBoss</N>%d</N>3306063",i)
	tItem[i]["OptionChkFunc216"] = function()
		if not Item_ChkItem(3306063) then
			return false
		else
			return true
		end
	end
end

-- 增益符
-- 3306061,3306062,3306063,3306064,3306065
for i = 3306061, 3306065 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		local nUserId = Get_UserId()
		-- 过期删除
		if not Sys_ChkFullTime(tFirstWorldBudokai_Time["Activity"]) then
			for i,v in pairs(tFirstWorldBudokai_Buff) do
				if Item_ChkItem(i) and Item_DelAllItemByType(i) then
					User_TalkChannel2005(tFirstWorldBudokai_Text["Channel2005"]["GetBuff"]["OverTime"],nUserId)
				end
			end
		end
	end
end

--1-6星击杀奖
--3305746,3305747,3305748,3305749,3305750,3305751
for i = 3305746, 3305751 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		FirstWorldBudokai_UseItem(nItemTypeId)
	end
end	

--倍数4-6星击杀奖
--3306067,3306068,3306069,3306058,3306059,3306060
for i = 3306067, 3306069 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		FirstWorldBudokai_UseItem(nItemTypeId)
	end
end	
for i = 3306058, 3306060 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		FirstWorldBudokai_UseItem(nItemTypeId)
	end
end	

--1-6星挑战令礼包
--3305756,3305757,3305758,3305759,3305760,3305761
for i = 3305756, 3305761 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		FirstWorldBudokai_UseItem(nItemTypeId)
	end
end	

-- 明亮星陨石礼包
tItem[3306165] = tItem[3306165] or {}
tItem[3306165]["Function"] = function(nItemTypeId,sItemName)
	FirstWorldBudokai_UseItem(nItemTypeId)
end

-- 碎片合成
tItemFace[3306366] = 1254
tItemFace[3306367] = 1255
tItemFace[3306368] = 1256
tItemFace[3306369] = 1254
tItemFace[3306370] = 1255
tItemFace[3306371] = 1256
-- for i = 3306366, 3306371 do
	-- tItem[i] = tItem[i] or {}
	-- -- tItem[i]["Function"] = function(nItemTypeId,sItemName)
		-- -- FirstWorldBudokai_Compose(nItemTypeId)
	-- -- end
	-- tItem[i]["DialogueText"] = tFirstWorldBudokai_Text[i]
	-- tItem[i]["Text1-1"] = {111,112}
	-- tItem[i]["tOption1-1"] = {111,112}
	-- tItem[i]["OptionFunc111"] = string.format("FirstWorldBudokai_Compose</N>%d",i)
	-- tItem[i]["OptionFunc112"] = string.format("FirstWorldBudokai_ComposeDouble</N>%d",i)
-- end	
tItem[3306366] = tItem[3306366] or {}
tItem[3306366]["Function"] = function(nItemTypeId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemTypeId)
end
tItem[3306367] = tItem[3306366]
tItem[3306368] = tItem[3306366]
tItem[3306369] = tItem[3306369] or {}
tItem[3306369]["Function"] = function(nItemTypeId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemTypeId,3)
end
tItem[3306370] = tItem[3306369]
tItem[3306371] = tItem[3306369]

--神纹礼包
--3306362,3306363,3306364
for i = 3306362, 3306364 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		FirstWorldBudokai_UseItem(nItemTypeId)
	end
end	

-- 古神灵境黄色神纹包  3307098
tItem[3307098] = tItem[3307098] or {}
tItem[3307098]["Function"] = function(nItemTypeId,sItemName)
	FirstWorldBudokai_UseItem(nItemTypeId)
end


--神纹随机包
--3306506,3306508,3306509,3306511
tItem[3306506] = tItem[3306506] or {}
tItem[3306506]["Function"] = function(nItemTypeId,sItemName)
	FirstWorldBudokai_RandomItem(nItemTypeId)
end
tItem[3306508] = tItem[3306506]
tItem[3306509] = tItem[3306506]
tItem[3306511] = tItem[3306506]

--神纹随机包
-- 3306507,3306510
tItem[3306507] = tItem[3306507] or {}
tItem[3306507]["Function"] = function(nItemTypeId,sItemName)
	FirstWorldBudokai_UseItem(nItemTypeId)
end
tItem[3306510] = tItem[3306507]
--骰子
-- for i = 3304260, 3304262 do
	-- tItem[i] = tItem[i] or {}
	-- tItem[i]["Function"] = function(nItemTypeId,sItemName)
		-- FirstWorldBudokai_UseItem(nItemTypeId)
	-- end-- end

-- 黄色神纹(赠)可选包
tItemFace[3306365] = 1086
tItem[3306365] = tItem[3306365] or {}
tItem[3306365]["DialogueText"] = tFirstWorldBudokai_Text[3306365]
tItem[3306365]["Text1-1"] = {111}
tItem[3306365]["tOption1-1"] = {112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
-- tItem[3306365]["OptionFunc111"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>1"
tItem[3306365]["OptionFunc112"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>2"
tItem[3306365]["OptionFunc113"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>3"
tItem[3306365]["OptionFunc114"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>4"
tItem[3306365]["OptionFunc115"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>5"
tItem[3306365]["OptionFunc116"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>6"
tItem[3306365]["OptionFunc117"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>7"
tItem[3306365]["OptionFunc118"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>8"
tItem[3306365]["OptionFunc119"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>9"
tItem[3306365]["OptionFunc1110"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>10"
tItem[3306365]["OptionFunc1111"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>11"
tItem[3306365]["OptionFunc1112"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>12"
tItem[3306365]["OptionFunc1113"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>13"
tItem[3306365]["OptionFunc1114"]="FirstWorldBudokai_ChooseConfirm</N>3306365</N>14"

tItem[3306365]["Text1-2"] = {121,122}
tItem[3306365]["tOption1-2"] = {121,122}
tItem[3306365]["OptionPoint122"]="1-1"

-- 每日礼包
tItem[3306655] = tItem[3306655] or {}
tItem[3306655]["Function"] = function(nItemTypeId,sItemName)
	FirstWorldBudokai_DailyPackage(nItemTypeId)
end

-- 1%特殊经验灵露
tItem[3305474] = tItem[3305474] or {}
tItem[3305474]["Function"] = function(nItemId,sItemName)
	-- 获得奖励
	RewardTemplate_UseItem(tFirstWorldBudokai_AwardItem[nItemId])
end

---------------------------------------------怪物模块---------------------------------------------
-- 打到片区boss
for i = 4416, 4463 do
	tBossRewardEnd[i] = tBossRewardEnd[i] or {}
	tBossRewardEnd[i]["tFunction"] = tBossRewardEnd[i]["tFunction"] or {}
	table.insert(tBossRewardEnd[i]["tFunction"],FirstWorldBudokai_RewardEnd1)
end
-- 打到召唤boss
for i = 4483, 4578 do
	tBossRewardEnd[i] = tBossRewardEnd[i] or {}
	tBossRewardEnd[i]["tFunction"] = tBossRewardEnd[i]["tFunction"] or {}
	table.insert(tBossRewardEnd[i]["tFunction"],FirstWorldBudokai_RewardEnd2)
end
-- 杀死片区boss
local tFirstWorldBudokai_KillFreshBoss = {}
tFirstWorldBudokai_KillFreshBoss["ActivityTime"] = tFirstWorldBudokai_Time["Activity"]
tFirstWorldBudokai_KillFreshBoss["Function"]= FirstWorldBudokai_KillMonsterReward1
tFirstWorldBudokai_KillFreshBoss["MonsterId"] = {4416,4417,4418,4419,4420,4421,4422,4423,
                                                 4424,4425,4426,4427,4428,4429,4430,4431,
                                                 4432,4433,4434,4435,4436,4437,4438,4439,
                                                 4440,4441,4442,4443,4444,4445,4446,4447,
                                                 4448,4449,4450,4451,4452,4453,4454,4455,
                                                 4456,4457,4458,4459,4460,4461,4462,4463}
-- 杀死召唤boss
local tFirstWorldBudokai_KillCallBoss = {}
tFirstWorldBudokai_KillCallBoss["ActivityTime"] = tFirstWorldBudokai_Time["Activity"]
tFirstWorldBudokai_KillCallBoss["Function"]= FirstWorldBudokai_KillMonsterReward2
tFirstWorldBudokai_KillCallBoss["MonsterId"] = {4483,4484,4485,4486,4487,4488,4489,4490,
                                                 4491,4492,4493,4494,4495,4496,4497,4498,
                                                 4499,4500,4501,4502,4503,4504,4505,4506,
                                                 4507,4508,4509,4510,4511,4512,4513,4514,4531,4532,4533,4534,4535,4536,4537,4538,4555,4556,4557,4558,4559,4560,4561,4562,
                                                 4515,4516,4517,4518,4519,4520,4521,4522,4539,4540,4541,4542,4543,4544,4545,4546,4563,4564,4565,4566,4567,4568,4569,4570,
                                                 4523,4524,4525,4526,4527,4528,4529,4530,4547,4548,4549,4550,4551,4552,4553,4554,4571,4572,4573,4574,4575,4576,4577,4578}
local tFirstWorldBudokai_KillMonster = {}
tFirstWorldBudokai_KillMonster["ActivityTime"] = tFirstWorldBudokai_Time["Activity"]
tFirstWorldBudokai_KillMonster["Function"]= FirstWorldBudokai_KillMonster
tFirstWorldBudokai_KillMonster["Area"] = {1,2,3,4,5,6,7,8,9,10,11}


table.insert(tMonsterDrop_AreaLoad,tFirstWorldBudokai_KillFreshBoss)
table.insert(tMonsterDrop_AreaLoad,tFirstWorldBudokai_KillCallBoss)
table.insert(tMonsterDrop_AreaLoad,tFirstWorldBudokai_KillMonster)

---------------------------------------------陷阱模块---------------------------------------------
tTrap[1752] = tTrap[1752] or {}
tTrap[1752]["Function"] = function(nTrapId,nTrapType)
	FirstWorldBudokai_Trap(nTrapId,nTrapType)
end

---------------------------------------------系统自检---------------------------------------------
-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,FirstWorldBudokai_CreateBoss)

local tFirstWorldBudokai_OnTime = {}
	-- 刷怪
	tFirstWorldBudokai_OnTime[1] = {}
	tFirstWorldBudokai_OnTime[1]["Type"] = 3
	tFirstWorldBudokai_OnTime[1]["Func"] = FirstWorldBudokai_CreateBoss
	-- 发邮件、删怪
	tFirstWorldBudokai_OnTime[2] = {}
	tFirstWorldBudokai_OnTime[2]["Type"] = 6
	tFirstWorldBudokai_OnTime[2]["TimeType"] = 4
	tFirstWorldBudokai_OnTime[2]["Multiple"] = {}
	tFirstWorldBudokai_OnTime[2]["Multiple"][1]  = tFirstWorldBudokai_Cont["DayEndTime"]
	tFirstWorldBudokai_OnTime[2]["Func"] = FirstWorldBudokai_DayEnd
	-- -- 清宝箱限制
	tFirstWorldBudokai_OnTime[3] = {}
	tFirstWorldBudokai_OnTime[3]["Type"] = 2
	tFirstWorldBudokai_OnTime[3]["TimeType"] = 5
	tFirstWorldBudokai_OnTime[3]["Multiple"] = {}
	tFirstWorldBudokai_OnTime[3]["Multiple"][1]  = "00 00"
	tFirstWorldBudokai_OnTime[3]["Func"] = FirstWorldBudokai_ClearBoxLimit	
	
table.insert(tSystemTime_InitialData,tFirstWorldBudokai_OnTime[1])
table.insert(tSystemTime_InitialData,tFirstWorldBudokai_OnTime[2])
table.insert(tSystemTime_InitialData,tFirstWorldBudokai_OnTime[3])

---------------------------------------------上线触发---------------------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,FirstWorldBudokai_GetDaily)