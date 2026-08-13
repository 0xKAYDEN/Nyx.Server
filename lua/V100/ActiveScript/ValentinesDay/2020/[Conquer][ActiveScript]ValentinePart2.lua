------------------------------------------------------------------------------------
--Name：          191230[简体征服][活动脚本]全球情人节活动
--Creator:      杨艳
--Created:     2020/01/06
--------------------------------------------------------------------------------------

--	命名规范
--	ValentinePart2_

-- npc
-- 25836,'瓦伦丁',0002,51290,
-- 25837,'赛维娅',0002,51300,
-- 25839,'真爱烟花' 2052
-- 25840,'真爱烟花'
-- 25841,'真爱烟花'
-- 25842,'真爱烟花'
-- 25843,'真爱烟花'
-- 25844,'真爱烟花'
-- 25845,'真爱烟花'


-- globid : 12001825

--物品

-- 3329885,'情人节绝美称号礼盒',
-- 3329886,'情人节万人迷称号礼盒
-- 3329887,'全球真爱守护之星光环
-- 3329888,'全球真爱守护之神光环
-- 3329889,'全球真爱守护天使光环

-- 3600215,'甜心巧克力'
-- 3600216,'浓情巧克力'
-- 3600217,'真爱巧克力'
-- 3315299,'巧克力豆'

-- 3327493 爱情之心
-- 3327450,'真爱至上王者宝盒
-- 3327451,'天长地久尊享宝盒
-- 3327452,'山盟海誓豪华宝盒
-- 3327453,'情比金坚典藏宝盒

-- 3327454,'全球真爱至上宝箱'
-- 3327455,'全球天长地久宝箱'
-- 3327456,'全球山盟海誓宝箱'
-- 3327457,'全球情比金坚宝箱'
-- 3327458,'全球情深似海宝箱'

-- 3327459,'1000真爱之心阶段礼盒',
-- 3327460,'3000真爱之心阶段礼盒',
-- 3327461,'8000真爱之心阶段礼盒',
-- 3327462,'15000真爱之心阶段礼盒'
-- 3327463,'30000真爱之心阶段礼盒'
-- 3327464,'50000真爱之心阶段礼盒'
-- 3327465,'75000真爱之心阶段礼盒'
-- 3327466,'100000真爱之心阶段礼盒

--地图
-- 10750,'桃花林','桃花林'
-- 10751,'揽月台','揽月台'
-- 10752,'云门寺','云门寺'
-- 10753,'荷花塘','荷花塘'
-- 10754,'爱情海','爱情海'
-- 10755,'白云城','白云城'
-- 10756,'落鹤涧','落鹤涧'

----------------------------------表配置部分--------------------------------------------
local tValentinePart2_Data = {}
	tValentinePart2_Data["Level"] = 80
	tValentinePart2_Data["Mete"] = 0
	tValentinePart2_Data["ItemNum"] = 3
	-- 发型id
	tValentinePart2_Data["HairId"] = 88
	
	tValentinePart2_Data["Stage"] = {}
	tValentinePart2_Data["Stage"][1] = 1000
	tValentinePart2_Data["Stage"][2] = 3000
	tValentinePart2_Data["Stage"][3] = 8000
	tValentinePart2_Data["Stage"][4] = 15000
	tValentinePart2_Data["Stage"][5] = 30000 
	tValentinePart2_Data["Stage"][6] = 50000 
	tValentinePart2_Data["Stage"][7] = 75000 
	tValentinePart2_Data["Stage"][8] = 100000
	
	tValentinePart2_Data["Web"] = "https://wtop.zf.99.com/qrj/nqEn/"
	tValentinePart2_Data["DistanceNpc"] = 25837
	
	--巧克力梦工厂
	tValentinePart2_Data["OtherMap"] = {}
	tValentinePart2_Data["OtherMap"]["Id"] = 10757
	tValentinePart2_Data["OtherMap"]["PoX"] = 266
	tValentinePart2_Data["OtherMap"]["PoY"] = 267
	
	tValentinePart2_Data["OptionChoose"] = {}
	tValentinePart2_Data["OptionChoose"][1] = 141
	tValentinePart2_Data["OptionChoose"][2] = 142
	tValentinePart2_Data["OptionChoose"][3] = 143
	tValentinePart2_Data["OptionChoose"][4] = 144
	tValentinePart2_Data["OptionChoose"][5] = 145
	tValentinePart2_Data["OptionChoose"][6] = 146
	tValentinePart2_Data["OptionChoose"][7] = 147
	
	--剧情
	tValentinePart2_Data["Story"] = {}
	tValentinePart2_Data["Story"][1] = 16
	tValentinePart2_Data["Story"][2] = 17
	tValentinePart2_Data["Story"][3] = 18
	tValentinePart2_Data["Story"][4] = 19
	tValentinePart2_Data["Story"][5] = 20
	tValentinePart2_Data["Story"][6] = 21
	tValentinePart2_Data["Story"][7] = 22

	--进入后寻找烟花
	tValentinePart2_Data["FindFireNpc"] = {}
	tValentinePart2_Data["FindFireNpc"][1] = {}
	tValentinePart2_Data["FindFireNpc"][1][1] = {25839}
	tValentinePart2_Data["FindFireNpc"][1][2] = {25840}
	tValentinePart2_Data["FindFireNpc"][1][3] = {25841}
	tValentinePart2_Data["FindFireNpc"][1][4] = {25842}
	tValentinePart2_Data["FindFireNpc"][1][5] = {25843}
	tValentinePart2_Data["FindFireNpc"][1][6] = {25844}
	tValentinePart2_Data["FindFireNpc"][1][7] = {25845}
	
	tValentinePart2_Data["FindFireNpc"][2] = {}
	tValentinePart2_Data["FindFireNpc"][2][1] = {25878,25879,25880,25881,25882}
	tValentinePart2_Data["FindFireNpc"][2][2] = {25883,25884,25885,25886,25887}
	tValentinePart2_Data["FindFireNpc"][2][3] = {25888,25889,25890,25891,25892}
	tValentinePart2_Data["FindFireNpc"][2][4] = {25893,25894,25895,25896,25897}
	tValentinePart2_Data["FindFireNpc"][2][5] = {25898,25899,25900,25901,25902}
	tValentinePart2_Data["FindFireNpc"][2][6] = {25903,25904,25905,25906,25907}
	tValentinePart2_Data["FindFireNpc"][2][7] = {25908,25909,25910,25911,25912}
	
	tValentinePart2_Data["ItemCheck"] = {}
	tValentinePart2_Data["ItemCheck"][3600215] = {}
	tValentinePart2_Data["ItemCheck"][3600215][1] = {3,3315299,0}
	tValentinePart2_Data["ItemCheck"][3600215][2] = {2,3315299,10}
	tValentinePart2_Data["ItemCheck"][3600215][3] = {1,3315299,20}
	tValentinePart2_Data["ItemCheck"][3600215][4] = {0,3315299,30}
	
	
	tValentinePart2_Data["ItemCheck"][3600216] = {}
	tValentinePart2_Data["ItemCheck"][3600216][1] = {3,3315299,0}
	tValentinePart2_Data["ItemCheck"][3600216][2] = {2,3315299,100}
	tValentinePart2_Data["ItemCheck"][3600216][3] = {1,3315299,200}
	tValentinePart2_Data["ItemCheck"][3600216][4] = {0,3315299,300}
	
	
	--传送落脚点 普通
	tValentinePart2_Data["Map"] = {}
	
	tValentinePart2_Data["Map"][1] = {}
	tValentinePart2_Data["Map"][1]["MapId"] = 10772
	tValentinePart2_Data["Map"][1]["PosX"] = 17
	tValentinePart2_Data["Map"][1]["PosY"] = 32

	tValentinePart2_Data["Map"][2] = {}
	tValentinePart2_Data["Map"][2]["MapId"] = 10773
	tValentinePart2_Data["Map"][2]["PosX"] = 96
	tValentinePart2_Data["Map"][2]["PosY"] = 98
	
	tValentinePart2_Data["Map"][3] = {}
	tValentinePart2_Data["Map"][3]["MapId"] = 10774
	tValentinePart2_Data["Map"][3]["PosX"] = 91
	tValentinePart2_Data["Map"][3]["PosY"] = 80
	
	tValentinePart2_Data["Map"][4] = {}
	tValentinePart2_Data["Map"][4]["MapId"] = 10775
	tValentinePart2_Data["Map"][4]["PosX"] = 26
	tValentinePart2_Data["Map"][4]["PosY"] = 29
	
	tValentinePart2_Data["Map"][5] = {}
	tValentinePart2_Data["Map"][5]["MapId"] = 10776
	tValentinePart2_Data["Map"][5]["PosX"] = 87
	tValentinePart2_Data["Map"][5]["PosY"] = 153
	
	tValentinePart2_Data["Map"][6] = {}
	tValentinePart2_Data["Map"][6]["MapId"] = 10777
	tValentinePart2_Data["Map"][6]["PosX"] = 53
	tValentinePart2_Data["Map"][6]["PosY"] = 64
	
	tValentinePart2_Data["Map"][7] = {}
	tValentinePart2_Data["Map"][7]["MapId"] = 10778
	tValentinePart2_Data["Map"][7]["PosX"] = 62
	tValentinePart2_Data["Map"][7]["PosY"] = 75
	
	tValentinePart2_Data["InstanceMap"] = {}
	
	tValentinePart2_Data["InstanceMap"][1] = {}
	tValentinePart2_Data["InstanceMap"][1]["MapId"] = 10750
	tValentinePart2_Data["InstanceMap"][1]["PosX"] = 29
	tValentinePart2_Data["InstanceMap"][1]["PosY"] = 27

	tValentinePart2_Data["InstanceMap"][2] = {}
	tValentinePart2_Data["InstanceMap"][2]["MapId"] = 10751
	tValentinePart2_Data["InstanceMap"][2]["PosX"] = 91
	tValentinePart2_Data["InstanceMap"][2]["PosY"] = 93
	
	tValentinePart2_Data["InstanceMap"][3] = {}
	tValentinePart2_Data["InstanceMap"][3]["MapId"] = 10752
	tValentinePart2_Data["InstanceMap"][3]["PosX"] = 76
	tValentinePart2_Data["InstanceMap"][3]["PosY"] = 65
	
	tValentinePart2_Data["InstanceMap"][4] = {}
	tValentinePart2_Data["InstanceMap"][4]["MapId"] = 10753
	tValentinePart2_Data["InstanceMap"][4]["PosX"] = 29
	tValentinePart2_Data["InstanceMap"][4]["PosY"] = 16
	
	tValentinePart2_Data["InstanceMap"][5] = {}
	tValentinePart2_Data["InstanceMap"][5]["MapId"] = 10754
	tValentinePart2_Data["InstanceMap"][5]["PosX"] = 107
	tValentinePart2_Data["InstanceMap"][5]["PosY"] = 163
	
	tValentinePart2_Data["InstanceMap"][6] = {}
	tValentinePart2_Data["InstanceMap"][6]["MapId"] = 10755
	tValentinePart2_Data["InstanceMap"][6]["PosX"] = 54
	tValentinePart2_Data["InstanceMap"][6]["PosY"] = 51
	
	tValentinePart2_Data["InstanceMap"][7] = {}
	tValentinePart2_Data["InstanceMap"][7]["MapId"] = 10756
	tValentinePart2_Data["InstanceMap"][7]["PosX"] = 59
	tValentinePart2_Data["InstanceMap"][7]["PosY"] = 54
	
	--离开时寻找npc对话
	tValentinePart2_Data["FindSeiviya"] = {}
	tValentinePart2_Data["FindSeiviya"][25839] = {28,33}
	tValentinePart2_Data["FindSeiviya"][25840] = {94,91}
	tValentinePart2_Data["FindSeiviya"][25841] = {87,69}
	tValentinePart2_Data["FindSeiviya"][25842] = {32,23}
	tValentinePart2_Data["FindSeiviya"][25843] = {98,154}
	tValentinePart2_Data["FindSeiviya"][25844] = {59,62}
	tValentinePart2_Data["FindSeiviya"][25845] = {64,59}
	
	
	tValentinePart2_Data["MapId"] = {}
	--每日首次
	tValentinePart2_Data["MapId"][1] = {}
	tValentinePart2_Data["MapId"][1][1] = {}
	tValentinePart2_Data["MapId"][1][1]["ActMapId"] = 10750
	tValentinePart2_Data["MapId"][1][1]["InstanceType"] = 452
	tValentinePart2_Data["MapId"][1][1]["MapDoc"] = 10282
	
	tValentinePart2_Data["MapId"][1][2] = {}
	tValentinePart2_Data["MapId"][1][2]["ActMapId"] = 10751
	tValentinePart2_Data["MapId"][1][2]["InstanceType"] = 453
	tValentinePart2_Data["MapId"][1][2]["MapDoc"] = 1738
	
	tValentinePart2_Data["MapId"][1][3] = {}
	tValentinePart2_Data["MapId"][1][3]["ActMapId"] = 10752
	tValentinePart2_Data["MapId"][1][3]["InstanceType"] = 454
	tValentinePart2_Data["MapId"][1][3]["MapDoc"] = 4020
	
	tValentinePart2_Data["MapId"][1][4] = {}
	tValentinePart2_Data["MapId"][1][4]["ActMapId"] = 10753
	tValentinePart2_Data["MapId"][1][4]["InstanceType"] = 455
	tValentinePart2_Data["MapId"][1][4]["MapDoc"] = 10281
	
	tValentinePart2_Data["MapId"][1][5] = {}
	tValentinePart2_Data["MapId"][1][5]["ActMapId"] = 10754
	tValentinePart2_Data["MapId"][1][5]["InstanceType"] = 456
	tValentinePart2_Data["MapId"][1][5]["MapDoc"] = 10271
	
	tValentinePart2_Data["MapId"][1][6] = {}
	tValentinePart2_Data["MapId"][1][6]["ActMapId"] = 10755
	tValentinePart2_Data["MapId"][1][6]["InstanceType"] = 457
	tValentinePart2_Data["MapId"][1][6]["MapDoc"] = 3081
	
	tValentinePart2_Data["MapId"][1][7] = {}
	tValentinePart2_Data["MapId"][1][7]["ActMapId"] = 10756
	tValentinePart2_Data["MapId"][1][7]["InstanceType"] = 458
	tValentinePart2_Data["MapId"][1][7]["MapDoc"] = 3983
	
	--之后地图
	tValentinePart2_Data["MapId"][2] = {}
	tValentinePart2_Data["MapId"][2][1] = {}
	tValentinePart2_Data["MapId"][2][1]["ActMapId"] = 10772
	tValentinePart2_Data["MapId"][2][1]["InstanceType"] = 465
	tValentinePart2_Data["MapId"][2][1]["MapDoc"] = 10282
	                              
	tValentinePart2_Data["MapId"][2][2] = {}
	tValentinePart2_Data["MapId"][2][2]["ActMapId"] = 10773
	tValentinePart2_Data["MapId"][2][2]["InstanceType"] = 466
	tValentinePart2_Data["MapId"][2][2]["MapDoc"] = 1738
	                              
	tValentinePart2_Data["MapId"][2][3] = {}
	tValentinePart2_Data["MapId"][2][3]["ActMapId"] = 10774
	tValentinePart2_Data["MapId"][2][3]["InstanceType"] = 467
	tValentinePart2_Data["MapId"][2][3]["MapDoc"] = 4020
	                              
	tValentinePart2_Data["MapId"][2][4] = {}
	tValentinePart2_Data["MapId"][2][4]["ActMapId"] = 10775
	tValentinePart2_Data["MapId"][2][4]["InstanceType"] = 468
	tValentinePart2_Data["MapId"][2][4]["MapDoc"] = 10281
	                              
	tValentinePart2_Data["MapId"][2][5] = {}
	tValentinePart2_Data["MapId"][2][5]["ActMapId"] = 10776
	tValentinePart2_Data["MapId"][2][5]["InstanceType"] = 469
	tValentinePart2_Data["MapId"][2][5]["MapDoc"] = 10271
	                  
	tValentinePart2_Data["MapId"][2][6] = {}
	tValentinePart2_Data["MapId"][2][6]["ActMapId"] = 10777
	tValentinePart2_Data["MapId"][2][6]["InstanceType"] = 470
	tValentinePart2_Data["MapId"][2][6]["MapDoc"] = 3081
	                       
	tValentinePart2_Data["MapId"][2][7] = {}
	tValentinePart2_Data["MapId"][2][7]["ActMapId"] = 10778
	tValentinePart2_Data["MapId"][2][7]["InstanceType"] = 471
	tValentinePart2_Data["MapId"][2][7]["MapDoc"] = 3983
	
	tValentinePart2_Data["DyNpc"] = {}
	tValentinePart2_Data["DyNpc"][25839] = {}
	tValentinePart2_Data["DyNpc"][25839]["Task0"] = 94492036
	tValentinePart2_Data["DyNpc"][25839]["Lookface"] = 20520
	tValentinePart2_Data["DyNpc"][25839]["Name"] = tValentinePart2_Text[25839]["Name"]
	
	tValentinePart2_Data["TaskNpcPos"] = {}
	tValentinePart2_Data["TaskNpcPos"][1] = {29,28}
	tValentinePart2_Data["TaskNpcPos"][2] = {91,93}
	tValentinePart2_Data["TaskNpcPos"][3] = {76,65}
	tValentinePart2_Data["TaskNpcPos"][4] = {29,16}
	tValentinePart2_Data["TaskNpcPos"][5] = {107,163}
	tValentinePart2_Data["TaskNpcPos"][6] = {52,44}
	tValentinePart2_Data["TaskNpcPos"][7] = {59,54}
	
	
	--五个动态npc位置
	tValentinePart2_Data["Pos"] = {}
	tValentinePart2_Data["Pos"]["MapId"] = {}
	tValentinePart2_Data["Pos"]["MapId"][1] = 10750
	tValentinePart2_Data["Pos"]["MapId"][2] = 10751
	tValentinePart2_Data["Pos"]["MapId"][3] = 10752
	tValentinePart2_Data["Pos"]["MapId"][4] = 10753
	tValentinePart2_Data["Pos"]["MapId"][5] = 10754
	tValentinePart2_Data["Pos"]["MapId"][6] = 10755
	tValentinePart2_Data["Pos"]["MapId"][7] = 10756
	tValentinePart2_Data["Pos"][1] = {}
	tValentinePart2_Data["Pos"][1][1] = {26,18}
	tValentinePart2_Data["Pos"][1][2] = {33,16}
	tValentinePart2_Data["Pos"][1][3] = {40,25}
	tValentinePart2_Data["Pos"][1][4] = {37,34}
	tValentinePart2_Data["Pos"][1][5] = {28,39}
	
	tValentinePart2_Data["Pos"][2] = {}
	tValentinePart2_Data["Pos"][2][1] = {78,105}
	tValentinePart2_Data["Pos"][2][2] = {94,123}
	tValentinePart2_Data["Pos"][2][3] = {113,117}
	tValentinePart2_Data["Pos"][2][4] = {115,96}
	tValentinePart2_Data["Pos"][2][5] = {100,76}
	
	tValentinePart2_Data["Pos"][3] = {}
	tValentinePart2_Data["Pos"][3][1] = {61,70}
	tValentinePart2_Data["Pos"][3][2] = {71,75}
	tValentinePart2_Data["Pos"][3][3] = {82,71}
	tValentinePart2_Data["Pos"][3][4] = {86,60}
	tValentinePart2_Data["Pos"][3][5] = {80,49}

	tValentinePart2_Data["Pos"][4] = {}
	tValentinePart2_Data["Pos"][4][1] = {16,15}
	tValentinePart2_Data["Pos"][4][2] = {38,27}
	tValentinePart2_Data["Pos"][4][3] = {37,39}
	tValentinePart2_Data["Pos"][4][4] = {31,44}
	tValentinePart2_Data["Pos"][4][5] = {10,24}

	tValentinePart2_Data["Pos"][5] = {}
	tValentinePart2_Data["Pos"][5][1] = {119,188}
	tValentinePart2_Data["Pos"][5][2] = {110,184}
	tValentinePart2_Data["Pos"][5][3] = {103,176}
	tValentinePart2_Data["Pos"][5][4] = {103,168}
	tValentinePart2_Data["Pos"][5][5] = {104,156}

	tValentinePart2_Data["Pos"][6] = {}
	tValentinePart2_Data["Pos"][6][1] = {52,44}
	tValentinePart2_Data["Pos"][6][2] = {43,44}
	tValentinePart2_Data["Pos"][6][3] = {61,44}
	tValentinePart2_Data["Pos"][6][4] = {41,57}
	tValentinePart2_Data["Pos"][6][5] = {69,58}
	
	tValentinePart2_Data["Pos"][7] = {}
	tValentinePart2_Data["Pos"][7][1] = {59,54}
	tValentinePart2_Data["Pos"][7][2] = {53,59}
	tValentinePart2_Data["Pos"][7][3] = {53,67}
	tValentinePart2_Data["Pos"][7][4] = {71,68}
	tValentinePart2_Data["Pos"][7][5] = {69,60}
	
	--传送npc位置
	tValentinePart2_Data["Npc"] = {}
	tValentinePart2_Data["Npc"][1] = {}
	tValentinePart2_Data["Npc"][1]["MapId"] = 1002
	tValentinePart2_Data["Npc"][1]["PosX"] = 376
	tValentinePart2_Data["Npc"][1]["PosY"] = 444
	
	tValentinePart2_Data["Npc"][2] = {}
	tValentinePart2_Data["Npc"][2]["MapId"] = 1036
	tValentinePart2_Data["Npc"][2]["PosX"] = 250
	tValentinePart2_Data["Npc"][2]["PosY"] = 207

local tValentinePart2_RingType ={}
	tValentinePart2_RingType[3329887] = {}
	-- tValentinePart2_RingType[3329887]["LevLimit"] = 130
	tValentinePart2_RingType[3329887]["Status"] = 275
	tValentinePart2_RingType[3329887]["Power"] = 200
	tValentinePart2_RingType[3329887]["Secs"] = 604800
	tValentinePart2_RingType[3329887]["Times"] = 0
	tValentinePart2_RingType[3329887]["RemainTime"] = 0
	tValentinePart2_RingType[3329887]["EndTime"] = 604800
	tValentinePart2_RingType[3329887]["Recordable"] = 1
	
	tValentinePart2_RingType[3329888] = {}
	-- tValentinePart2_RingType[3329888]["LevLimit"] = 130
	tValentinePart2_RingType[3329888]["Status"] = 276
	tValentinePart2_RingType[3329888]["Power"] = 200
	tValentinePart2_RingType[3329888]["Secs"] = 604800
	tValentinePart2_RingType[3329888]["Times"] = 0
	tValentinePart2_RingType[3329888]["RemainTime"] = 0
	tValentinePart2_RingType[3329888]["EndTime"] = 604800
	tValentinePart2_RingType[3329888]["Recordable"] = 1
	
	tValentinePart2_RingType[3329889] = {}
	-- tValentinePart2_RingType[3329889]["LevLimit"] = 130
	tValentinePart2_RingType[3329889]["Status"] = 277
	tValentinePart2_RingType[3329889]["Power"] = 200
	tValentinePart2_RingType[3329889]["Secs"] = 604800
	tValentinePart2_RingType[3329889]["Times"] = 0
	tValentinePart2_RingType[3329889]["RemainTime"] = 0
	tValentinePart2_RingType[3329889]["EndTime"] = 604800
	tValentinePart2_RingType[3329889]["Recordable"] = 1
	
	
local tValentinePart2_Stc = {}
	tValentinePart2_Stc["EventType"] = {}
	tValentinePart2_Stc["DataType"] = {}
	tValentinePart2_Stc["Limit"] = {}
	
	-- 记录玩家是否完成每日任务  
	tValentinePart2_Stc["EventType"][1] = 214
	tValentinePart2_Stc["DataType"][1] = 39
	
	-- 记录玩家是否首次完成每日任务  
	tValentinePart2_Stc["EventType"]["Fist"] = 214
	tValentinePart2_Stc["DataType"]["Fist"] = 47
	
	
	-- 记录玩家真爱之心数量
	tValentinePart2_Stc["EventType"][2] = 214
	tValentinePart2_Stc["DataType"][2] = 40
	
	--记录玩家领奖阶段 
	tValentinePart2_Stc["EventType"][3] = 214
	tValentinePart2_Stc["DataType"][3] = 41
	
	--记录玩家免费点燃烟花次数 
	tValentinePart2_Stc["EventType"][4] = 214
	tValentinePart2_Stc["DataType"][4] = 42
	-- 每日免费1次 付费四次 五次之后 不能燃放烟花
	tValentinePart2_Stc["Limit"][4] = 5
	
	--记录玩家花费掩码
	-- 27天石
	tValentinePart2_Stc["EventType"][5] = 214
	tValentinePart2_Stc["DataType"][5] = 43
	-- 270天石
	tValentinePart2_Stc["EventType"][6] = 214
	tValentinePart2_Stc["DataType"][6] = 44
	

	
local tValentinePart2_Award = {}
	-- 阶段奖励
	tValentinePart2_Award["Stage"] = {}
	tValentinePart2_Award["Stage"][1] = {}
	tValentinePart2_Award["Stage"][1]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][1]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][1]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][1]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][1]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][1]["RewardItem"][1]["Id"] = 3327459 -- （+1）稀真爱之心阶段礼盒[3327459][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][1]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][1]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][1]["RewardEffect"]["Effect"] = "angelwing"

	tValentinePart2_Award["Stage"][2] = {}
	tValentinePart2_Award["Stage"][2]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][2]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][2]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][2]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][2]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][2]["RewardItem"][1]["Id"] = 3327460 -- （+1）稀真爱之心阶段礼盒[3327460][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][2]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][2]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["Stage"][3] = {}
	tValentinePart2_Award["Stage"][3]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][3]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][3]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][3]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][3]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][3]["RewardItem"][1]["Id"] = 3327461 -- （+1）稀真爱之心阶段礼盒[3327461][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][3]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][3]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["Stage"][4] = {}
	tValentinePart2_Award["Stage"][4]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][4]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][4]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][4]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][4]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][4]["RewardItem"][1]["Id"] = 3327462 -- （+1）稀真爱之心阶段礼盒[3327462][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][4]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][4]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["Stage"][5] = {}
	tValentinePart2_Award["Stage"][5]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][5]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][5]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][5]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][5]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][5]["RewardItem"][1]["Id"] = 3327463 -- （+1）稀真爱之心阶段礼盒[3327463][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][5]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][5]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["Stage"][6] = {}
	tValentinePart2_Award["Stage"][6]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][6]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][6]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][6]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][6]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][6]["RewardItem"][1]["Id"] = 3327464 -- （+1）稀真爱之心阶段礼盒[3327464][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][6]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][6]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][6]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["Stage"][7] = {}
	tValentinePart2_Award["Stage"][7]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][7]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][7]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][7]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][7]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][7]["RewardItem"][1]["Id"] = 3327465 -- （+1）稀真爱之心阶段礼盒[3327465][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][7]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][7]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["Stage"][8] = {}
	tValentinePart2_Award["Stage"][8]["LogId"] = 12001825
	tValentinePart2_Award["Stage"][8]["LogStep"] = "2[1]"
	tValentinePart2_Award["Stage"][8]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["Stage"][8]["RewardItem"] = {}
	tValentinePart2_Award["Stage"][8]["RewardItem"][1] = {}
	tValentinePart2_Award["Stage"][8]["RewardItem"][1]["Id"] = 3327466 -- （+1）稀真爱之心阶段礼盒[3327466][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["Stage"][8]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["Stage"][8]["RewardEffect"] = {}
	tValentinePart2_Award["Stage"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["Stage"][8]["RewardEffect"]["Effect"] = "angelwing"

	--队友奖励 1个恋爱礼包
	tValentinePart2_Award["TeamMateAward"] = {}
	tValentinePart2_Award["TeamMateAward"][1] = {}
	tValentinePart2_Award["TeamMateAward"][1]["LogId"] = 12001825
	tValentinePart2_Award["TeamMateAward"][1]["LogStep"] = "2[1]"
	tValentinePart2_Award["TeamMateAward"][1]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["TeamMateAward"][1]["RewardItem"] = {}
	tValentinePart2_Award["TeamMateAward"][1]["RewardItem"][1] = {}
	tValentinePart2_Award["TeamMateAward"][1]["RewardItem"][1]["Id"] = 3600236 -- （+1）稀真爱之心阶段礼盒[3600236][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["TeamMateAward"][1]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["TeamMateAward"][1]["RewardEffect"] = {}
	tValentinePart2_Award["TeamMateAward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["TeamMateAward"][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["TeamMateAward"][27] = {}
	tValentinePart2_Award["TeamMateAward"][27]["LogId"] = 12001825
	tValentinePart2_Award["TeamMateAward"][27]["LogStep"] = "2[1]"
	tValentinePart2_Award["TeamMateAward"][27]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["TeamMateAward"][27]["RewardItem"] = {}
	tValentinePart2_Award["TeamMateAward"][27]["RewardItem"][1] = {}
	tValentinePart2_Award["TeamMateAward"][27]["RewardItem"][1]["Id"] = 3600236 -- （+1）稀真爱之心阶段礼盒[3600236][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["TeamMateAward"][27]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["TeamMateAward"][27]["RewardEffect"] = {}
	tValentinePart2_Award["TeamMateAward"][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["TeamMateAward"][27]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["TeamMateAward"][3600215] = {}
	tValentinePart2_Award["TeamMateAward"][3600215]["LogId"] = 12001825
	tValentinePart2_Award["TeamMateAward"][3600215]["LogStep"] = "2[1]"
	tValentinePart2_Award["TeamMateAward"][3600215]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardItem"] = {}
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardItem"][1] = {}
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardItem"][1]["Id"] = 3600236 -- （+1）稀真爱之心阶段礼盒[3600236][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardItem"][1]["Attr"] = "0 1" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardEffect"] = {}
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["TeamMateAward"][3600215]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 5个恋爱礼包
	tValentinePart2_Award["TeamMateAward"][3600216] = {}
	tValentinePart2_Award["TeamMateAward"][3600216]["LogId"] = 12001825
	tValentinePart2_Award["TeamMateAward"][3600216]["LogStep"] = "2[1]"
	tValentinePart2_Award["TeamMateAward"][3600216]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardItem"] = {}
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardItem"][1] = {}
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardItem"][1]["Id"] = 3600236 -- （+1）稀真爱之心阶段礼盒[3600236][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardItem"][1]["Attr"] = "0 5" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardEffect"] = {}
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["TeamMateAward"][3600216]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["TeamMateAward"][270] = {}
	tValentinePart2_Award["TeamMateAward"][270]["LogId"] = 12001825
	tValentinePart2_Award["TeamMateAward"][270]["LogStep"] = "2[1]"
	tValentinePart2_Award["TeamMateAward"][270]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award["TeamMateAward"][270]["RewardItem"] = {}
	tValentinePart2_Award["TeamMateAward"][270]["RewardItem"][1] = {}
	tValentinePart2_Award["TeamMateAward"][270]["RewardItem"][1]["Id"] = 3600236 -- （+1）稀真爱之心阶段礼盒[3600236][属性:9][叠加:0][金币:0], 【表格】1000真爱之心阶段礼盒',
	tValentinePart2_Award["TeamMateAward"][270]["RewardItem"][1]["Attr"] = "0 5" -- （+1）真爱之心阶段礼盒*1
	tValentinePart2_Award["TeamMateAward"][270]["RewardEffect"] = {}
	tValentinePart2_Award["TeamMateAward"][270]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["TeamMateAward"][270]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===真爱至上王者宝盒
	-- ===索引: tValentinePart2_Award[3327450]
	-- ===删除: 3327450,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0195
	tValentinePart2_Award[3327450] = {}
	tValentinePart2_Award[3327450]["LogId"] = 12001825
	tValentinePart2_Award[3327450]["LogStep"] = "2[1]"
	-- tValentinePart2_Award[3327450]["EmoneyLog"] = "1000	195	0	0	1	"
	tValentinePart2_Award[3327450]["DeleteItem"] = {}
	tValentinePart2_Award[3327450]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327450]["DeleteItem"][1]["Id"] = 3327450 -- 【库】真爱至上王者宝盒[属性:9]
	tValentinePart2_Award[3327450]["RewardItem"] = {}
	tValentinePart2_Award[3327450]["RewardItem"][1] = {}
	tValentinePart2_Award[3327450]["RewardItem"][1]["Id"] = 3314250 -- （+1）稀有黄色神纹可选包（赠）[3312777][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tValentinePart2_Award[3327450]["RewardItem"][1]["Attr"] = "0 1 3" -- （+1）稀有黄色神纹可选包（赠）*1
	tValentinePart2_Award[3327450]["RewardItem"][2] = {}
	tValentinePart2_Award[3327450]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1200万能神纹精粹
	tValentinePart2_Award[3327450]["RewardItem"][2]["Attr"] = "0 1200" -- 万能神纹精粹*1200（[错误]物品数量超100个）
	tValentinePart2_Award[3327450]["RewardItem"][3] = {}
	tValentinePart2_Award[3327450]["RewardItem"][3]["Id"] = 3329886 -- 情人节万人迷称号礼盒[3329886][属性:9][叠加:1][金币:0], 【表格】情人节万人迷称号礼盒
	tValentinePart2_Award[3327450]["RewardItem"][3]["Attr"] = "0 1" -- 情人节万人迷称号礼盒*1
	tValentinePart2_Award[3327450]["RewardEffect"] = {}
	tValentinePart2_Award[3327450]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327450]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327451] = {}
	-- ===天长地久尊享宝盒
	-- ===索引: tValentinePart2_Award[3327451]
	-- ===删除: 3327451,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327451]["LogId"] = 12001825
	tValentinePart2_Award[3327451]["LogStep"] = "2[1]"
	-- tValentinePart2_Award[3327451]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327451]["DeleteItem"] = {}
	tValentinePart2_Award[3327451]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327451]["DeleteItem"][1]["Id"] = 3327451 -- 【库】天长地久尊享宝盒[属性:9]
	tValentinePart2_Award[3327451]["RewardItem"] = {}
	tValentinePart2_Award[3327451]["RewardItem"][1] = {}
	tValentinePart2_Award[3327451]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包（赠）
	tValentinePart2_Award[3327451]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tValentinePart2_Award[3327451]["RewardItem"][2] = {}
	tValentinePart2_Award[3327451]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tValentinePart2_Award[3327451]["RewardItem"][2]["Attr"] = "0 1000" -- 万能神纹精粹*1000（[错误]物品数量超100个）
	tValentinePart2_Award[3327451]["RewardEffect"] = {}
	tValentinePart2_Award[3327451]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327451]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327452] = {}
	-- ===山盟海誓豪华宝盒
	-- ===索引: tValentinePart2_Award[3327452]
	-- ===删除: 3327452,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327452]["LogId"] = 12001825
	tValentinePart2_Award[3327452]["LogStep"] = "2[1]"
	-- tValentinePart2_Award[3327452]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327452]["DeleteItem"] = {}
	tValentinePart2_Award[3327452]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327452]["DeleteItem"][1]["Id"] = 3327452 -- 【库】山盟海誓豪华宝盒[属性:9]
	tValentinePart2_Award[3327452]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327452]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tValentinePart2_Award[3327452]["RewardItem"] = {}
	tValentinePart2_Award[3327452]["RewardItem"][1] = {}
	tValentinePart2_Award[3327452]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinePart2_Award[3327452]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*1
	tValentinePart2_Award[3327452]["RewardEffect"] = {}
	tValentinePart2_Award[3327452]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327452]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327453] = {}
	-- ===情比金坚典藏宝盒
	-- ===索引: tValentinePart2_Award[3327453]
	-- ===删除: 3327453,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327453]["LogId"] = 12001825
	tValentinePart2_Award[3327453]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327453]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327453]["DeleteItem"] = {}
	tValentinePart2_Award[3327453]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327453]["DeleteItem"][1]["Id"] = 3327453 -- 【库】情比金坚典藏宝盒[属性:9]
	tValentinePart2_Award[3327453]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327453]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tValentinePart2_Award[3327453]["RewardItem"] = {}
	tValentinePart2_Award[3327453]["RewardItem"][1] = {}
	tValentinePart2_Award[3327453]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】500万能神纹精粹
	tValentinePart2_Award[3327453]["RewardItem"][1]["Attr"] = "0 500" -- 万能神纹精粹*500（[错误]物品数量超100个）
	tValentinePart2_Award[3327453]["RewardEffect"] = {}
	tValentinePart2_Award[3327453]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327453]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327454] = {}
	-- ===全球真爱至上宝箱
	-- ===索引: tValentinePart2_Award[3327454]
	-- ===删除: 3327454,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327454]["LogId"] = 12001825
	tValentinePart2_Award[3327454]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327454]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327454]["DeleteItem"] = {}
	tValentinePart2_Award[3327454]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327454]["DeleteItem"][1]["Id"] = 3327454 -- 【库】全球真爱至上宝箱[属性:9]
	tValentinePart2_Award[3327454]["RewardItem"] = {}
	tValentinePart2_Award[3327454]["RewardItem"][1] = {}
	tValentinePart2_Award[3327454]["RewardItem"][1]["Id"] = 3329888 --  0 【库里没有该物品】, 【表格】情人节第一名光环
	tValentinePart2_Award[3327454]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
	tValentinePart2_Award[3327454]["RewardItem"][2] = {}
	tValentinePart2_Award[3327454]["RewardItem"][2]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tValentinePart2_Award[3327454]["RewardItem"][2]["Attr"] = "0 1" -- 12阶灵珠*1
	tValentinePart2_Award[3327454]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentinePart2_Award[3327454]["RewardItem"][3] = {}
	tValentinePart2_Award[3327454]["RewardItem"][3]["Id"] = 3312777 -- （+1）稀有黄色神纹可选包（赠）[3312777][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tValentinePart2_Award[3327454]["RewardItem"][3]["Attr"] = "0 1" -- （+1）稀有黄色神纹可选包（赠）*1
	tValentinePart2_Award[3327454]["RewardEffect"] = {}
	tValentinePart2_Award[3327454]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327454]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327455] = {}
	-- ===全球天长地久宝箱
	-- ===索引: tValentinePart2_Award[3327455]
	-- ===删除: 3327455,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327455]["LogId"] = 12001825
	tValentinePart2_Award[3327455]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327455]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327455]["DeleteItem"] = {}
	tValentinePart2_Award[3327455]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327455]["DeleteItem"][1]["Id"] = 3327455 -- 【库】全球天长地久宝箱[属性:9]
	tValentinePart2_Award[3327455]["RewardItem"] = {}
	tValentinePart2_Award[3327455]["RewardItem"][1] = {}
	tValentinePart2_Award[3327455]["RewardItem"][1]["Id"] = 3329889 --  0 【库里没有该物品】, 【表格】情人节第二名光环
	tValentinePart2_Award[3327455]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
	tValentinePart2_Award[3327455]["RewardItem"][2] = {}
	tValentinePart2_Award[3327455]["RewardItem"][2]["Id"] = 3312777 -- （+1）稀有黄色神纹可选包（赠）[3312777][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tValentinePart2_Award[3327455]["RewardItem"][2]["Attr"] = "0 1" -- （+1）稀有黄色神纹可选包（赠）*1
	tValentinePart2_Award[3327455]["RewardItem"][3] = {}
	tValentinePart2_Award[3327455]["RewardItem"][3]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tValentinePart2_Award[3327455]["RewardItem"][3]["Attr"] = "0 1" -- 10阶灵珠*1
	tValentinePart2_Award[3327455]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentinePart2_Award[3327455]["RewardEffect"] = {}
	tValentinePart2_Award[3327455]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327455]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327456] = {}
	-- ===全球山盟海誓宝箱
	-- ===索引: tValentinePart2_Award[3327456]
	-- ===删除: 3327456,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327456]["LogId"] = 12001825
	tValentinePart2_Award[3327456]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327456]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327456]["DeleteItem"] = {}
	tValentinePart2_Award[3327456]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327456]["DeleteItem"][1]["Id"] = 3327456 -- 【库】全球山盟海誓宝箱[属性:9]
	tValentinePart2_Award[3327456]["RewardItem"] = {}
	tValentinePart2_Award[3327456]["RewardItem"][1] = {}
	tValentinePart2_Award[3327456]["RewardItem"][1]["Id"] = 3329887 --  0 【库里没有该物品】, 【表格】情人节第三名光环
	tValentinePart2_Award[3327456]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
	tValentinePart2_Award[3327456]["RewardItem"][2] = {}
	tValentinePart2_Award[3327456]["RewardItem"][2]["Id"] = 3312777 -- （+1）稀有黄色神纹可选包（赠）[3312777][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tValentinePart2_Award[3327456]["RewardItem"][2]["Attr"] = "0 1" -- （+1）稀有黄色神纹可选包（赠）*1
	tValentinePart2_Award[3327456]["RewardItem"][3] = {}
	tValentinePart2_Award[3327456]["RewardItem"][3]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tValentinePart2_Award[3327456]["RewardItem"][3]["Attr"] = "0 1" -- 9阶灵珠*1
	tValentinePart2_Award[3327456]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentinePart2_Award[3327456]["RewardEffect"] = {}
	tValentinePart2_Award[3327456]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327456]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327457] = {}
	-- ===全球情比金坚宝箱
	-- ===索引: tValentinePart2_Award[3327457]
	-- ===删除: 3327457,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327457]["LogId"] = 12001825
	tValentinePart2_Award[3327457]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327457]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327457]["DeleteItem"] = {}
	tValentinePart2_Award[3327457]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327457]["DeleteItem"][1]["Id"] = 3327457 -- 【库】全球情比金坚宝箱[属性:9]
	tValentinePart2_Award[3327457]["RewardItem"] = {}
	tValentinePart2_Award[3327457]["RewardItem"][1] = {}
	tValentinePart2_Award[3327457]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tValentinePart2_Award[3327457]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tValentinePart2_Award[3327457]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentinePart2_Award[3327457]["RewardItem"][2] = {}
	tValentinePart2_Award[3327457]["RewardItem"][2]["Id"] = 3312777 -- （+1）稀有黄色神纹可选包（赠）[3312777][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tValentinePart2_Award[3327457]["RewardItem"][2]["Attr"] = "0 1" -- （+1）稀有黄色神纹可选包（赠）*1
	tValentinePart2_Award[3327457]["RewardEffect"] = {}
	tValentinePart2_Award[3327457]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327457]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327458] = {}
	-- ===全球情深似海宝箱
	-- ===索引: tValentinePart2_Award[3327458]
	-- ===删除: 3327458,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327458]["LogId"] = 12001825
	tValentinePart2_Award[3327458]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327458]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327458]["DeleteItem"] = {}
	tValentinePart2_Award[3327458]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327458]["DeleteItem"][1]["Id"] = 3327458 -- 【库】全球情深似海宝箱[属性:9]
	tValentinePart2_Award[3327458]["RewardItem"] = {}
	tValentinePart2_Award[3327458]["RewardItem"][1] = {}
	tValentinePart2_Award[3327458]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tValentinePart2_Award[3327458]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tValentinePart2_Award[3327458]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentinePart2_Award[3327458]["RewardItem"][2] = {}
	tValentinePart2_Award[3327458]["RewardItem"][2]["Id"] = 3312777 -- （+1）稀有黄色神纹可选包（赠）[3312777][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tValentinePart2_Award[3327458]["RewardItem"][2]["Attr"] = "0 1" -- （+1）稀有黄色神纹可选包（赠）*1
	tValentinePart2_Award[3327458]["RewardEffect"] = {}
	tValentinePart2_Award[3327458]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327458]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327459] = {}
	-- ===1000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327459]
	-- ===删除: 3327459,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327459]["LogId"] = 12001825
	tValentinePart2_Award[3327459]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327459]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327459]["DeleteItem"] = {}
	tValentinePart2_Award[3327459]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327459]["DeleteItem"][1]["Id"] = 3327459 -- 【库】1000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327459]["RewardItem"] = {}
	tValentinePart2_Award[3327459]["RewardItem"][1] = {}
	tValentinePart2_Award[3327459]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tValentinePart2_Award[3327459]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tValentinePart2_Award[3327459]["RewardItem"][2] = {}
	tValentinePart2_Award[3327459]["RewardItem"][2]["Id"] = 3327549 -- 15天情人节武器外套[3327549][属性:9][叠加:0][金币:10000], 【表格】15天情人节武器外套
	tValentinePart2_Award[3327459]["RewardItem"][2]["Attr"] = "0 1" -- 15天情人节武器外套*1
	tValentinePart2_Award[3327459]["RewardEffect"] = {}
	tValentinePart2_Award[3327459]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327459]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327460] = {}
	-- ===3000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327460]
	-- ===删除: 3327460,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327460]["LogId"] = 12001825
	tValentinePart2_Award[3327460]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327460]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327460]["DeleteItem"] = {}
	tValentinePart2_Award[3327460]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327460]["DeleteItem"][1]["Id"] = 3327460 -- 【库】3000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327460]["RewardItem"] = {}
	-- tValentinePart2_Award[3327460]["RewardItem"][1] = {}
	-- tValentinePart2_Award[3327460]["RewardItem"][1]["Id"] = 3304331 -- 1000气力值极运包[3304331][属性:9][叠加:10000][金币:0], 【表格】1000气
	-- tValentinePart2_Award[3327460]["RewardItem"][1]["Attr"] = "0 1" -- 1000气力值极运包*1
	tValentinePart2_Award[3327460]["RewardItem"][1] = {}
	tValentinePart2_Award[3327460]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tValentinePart2_Award[3327460]["RewardItem"][1]["Attr"] = "0 20" -- 人参果*20（[错误]物品数量超10个）
	tValentinePart2_Award[3327460]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327460]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tValentinePart2_Award[3327460]["RewardEffect"] = {}
	tValentinePart2_Award[3327460]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327460]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327461] = {}
	-- ===8000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327461]
	-- ===删除: 3327461,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327461]["LogId"] = 12001825
	tValentinePart2_Award[3327461]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327461]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327461]["DeleteItem"] = {}
	tValentinePart2_Award[3327461]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327461]["DeleteItem"][1]["Id"] = 3327461 -- 【库】8000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327461]["RewardItem"] = {}
	tValentinePart2_Award[3327461]["RewardItem"][1] = {}
	tValentinePart2_Award[3327461]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValentinePart2_Award[3327461]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValentinePart2_Award[3327461]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327461]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tValentinePart2_Award[3327461]["RewardEffect"] = {}
	tValentinePart2_Award[3327461]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327461]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327462] = {}
	-- ===15000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327462]
	-- ===删除: 3327462,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327462]["LogId"] = 12001825
	tValentinePart2_Award[3327462]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327462]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327462]["DeleteItem"] = {}
	tValentinePart2_Award[3327462]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327462]["DeleteItem"][1]["Id"] = 3327462 -- 【库】15000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327462]["RewardItem"] = {}
	tValentinePart2_Award[3327462]["RewardItem"][1] = {}
	tValentinePart2_Award[3327462]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValentinePart2_Award[3327462]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tValentinePart2_Award[3327462]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327462]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tValentinePart2_Award[3327462]["RewardEffect"] = {}
	tValentinePart2_Award[3327462]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327462]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327463] = {}
	-- ===30000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327463]
	-- ===删除: 3327463,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327463]["LogId"] = 12001825
	tValentinePart2_Award[3327463]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327463]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327463]["DeleteItem"] = {}
	tValentinePart2_Award[3327463]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327463]["DeleteItem"][1]["Id"] = 3327463 -- 【库】30000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327463]["RewardItem"] = {}
	tValentinePart2_Award[3327463]["RewardItem"][1] = {}
	tValentinePart2_Award[3327463]["RewardItem"][1]["Id"] = 196065 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】无光效外套
	tValentinePart2_Award[3327463]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1" -- 5天时效(激活)的龙珠（赠）*1
	tValentinePart2_Award[3327463]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327463]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000气力值
	tValentinePart2_Award[3327463]["RewardEffect"] = {}
	tValentinePart2_Award[3327463]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327463]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327464] = {}
	-- ===50000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327464]
	-- ===删除: 3327464,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327464]["LogId"] = 12001825
	tValentinePart2_Award[3327464]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327464]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327464]["DeleteItem"] = {}
	tValentinePart2_Award[3327464]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327464]["DeleteItem"][1]["Id"] = 3327464 -- 【库】50000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327464]["RewardItem"] = {}
	tValentinePart2_Award[3327464]["RewardItem"][1] = {}
	tValentinePart2_Award[3327464]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤练石+6
	tValentinePart2_Award[3327464]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tValentinePart2_Award[3327464]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327464]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tValentinePart2_Award[3327464]["RewardEffect"] = {}
	tValentinePart2_Award[3327464]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327464]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327465] = {}
	-- ===75000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327465]
	-- ===删除: 3327465,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327465]["LogId"] = 12001825
	tValentinePart2_Award[3327465]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327465]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327465]["DeleteItem"] = {}
	tValentinePart2_Award[3327465]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327465]["DeleteItem"][1]["Id"] = 3327465 -- 【库】75000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327465]["RewardItem"] = {}
	tValentinePart2_Award[3327465]["RewardItem"][1] = {}
	tValentinePart2_Award[3327465]["RewardItem"][1]["Id"] = 3329885 -- 情人节绝美称号礼盒[3329885][属性:9][叠加:1][金币:0], 【表格】情人节绝美称号礼盒
	tValentinePart2_Award[3327465]["RewardItem"][1]["Attr"] = "0 1" -- 情人节绝美称号礼盒*1
	tValentinePart2_Award[3327465]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327465]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000气力值
	tValentinePart2_Award[3327465]["RewardEffect"] = {}
	tValentinePart2_Award[3327465]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327465]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award[3327466] = {}
	-- ===100000真爱之心阶段礼盒
	-- ===索引: tValentinePart2_Award[3327466]
	-- ===删除: 3327466,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award[3327466]["LogId"] = 12001825
	tValentinePart2_Award[3327466]["LogStep"] = "2[1]"
	tValentinePart2_Award[3327466]["EmoneyLog"] = "1000	194	0	0	1	"
	tValentinePart2_Award[3327466]["DeleteItem"] = {}
	tValentinePart2_Award[3327466]["DeleteItem"][1] = {}
	tValentinePart2_Award[3327466]["DeleteItem"][1]["Id"] = 3327466 -- 【库】100000真爱之心阶段礼盒[属性:9]
	tValentinePart2_Award[3327466]["RewardItem"] = {}
	tValentinePart2_Award[3327466]["RewardItem"][1] = {}
	tValentinePart2_Award[3327466]["RewardItem"][1]["Id"] = 196115 --  0 【库里没有该物品】, 【表格】光效外套
	tValentinePart2_Award[3327466]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1" -- 5天时效(激活)的 0 【库里没有该物品】（赠）*1
	tValentinePart2_Award[3327466]["RewardStrengthValue"] = {}
	tValentinePart2_Award[3327466]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
	tValentinePart2_Award[3327466]["RewardEffect"] = {}
	tValentinePart2_Award[3327466]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3327466]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePart2_Award["FireWork"] = {}
	-- ===点燃烟花
	-- ===索引: tValentinePart2_Award["FireWork"][1]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award["FireWork"][1] = {}
	tValentinePart2_Award["FireWork"][1]["ItemChanceSum"] = 10000
	tValentinePart2_Award["FireWork"][1]["LogId"] = 12001825
	tValentinePart2_Award["FireWork"][1]["LogStep"] = " 2[1]"
	tValentinePart2_Award["FireWork"][1]["EmoneyLog"] = "1000	194	0	0	1	"
	-- 30个爱情之心 - 35%
	tValentinePart2_Award["FireWork"][1][1] = {}
	tValentinePart2_Award["FireWork"][1][1]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][1][1]["ItemChance"] = 3500
	tValentinePart2_Award["FireWork"][1][1]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][1][1]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][1][1]["RewardItem"][1]["Id"] = 3327493 -- 爱情之心[3327493][属性:0][叠加:0][金币:10000], 【表格】30个爱情之心
	tValentinePart2_Award["FireWork"][1][1]["RewardItem"][1]["Attr"] = "0 30" -- 爱情之心*30（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][1][1]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50个爱情之心 - 45%
	tValentinePart2_Award["FireWork"][1][2] = {}
	tValentinePart2_Award["FireWork"][1][2]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][1][2]["ItemChance"] = 4500
	tValentinePart2_Award["FireWork"][1][2]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][1][2]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][1][2]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】50个爱情之心
	tValentinePart2_Award["FireWork"][1][2]["RewardItem"][1]["Attr"] = "0 50" -- 龙珠*50（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][1][2]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100个爱情之心 - 20%
	tValentinePart2_Award["FireWork"][1][3] = {}
	tValentinePart2_Award["FireWork"][1][3]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][1][3]["ItemChance"] = 2000
	tValentinePart2_Award["FireWork"][1][3]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][1][3]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][1][3]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】100个爱情之心
	tValentinePart2_Award["FireWork"][1][3]["RewardItem"][1]["Attr"] = "0 100" -- 龙珠*100（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][1][3]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][1][3]["RewardEffect"]["Effect"] = "angelwing"

	tValentinePart2_Award["FireWork"][3600215] = {}
	tValentinePart2_Award["FireWork"][3600215]["ItemChanceSum"] = 10000
	tValentinePart2_Award["FireWork"][3600215]["LogId"] = 12001825
	tValentinePart2_Award["FireWork"][3600215]["LogStep"] = " 2[1]"
	tValentinePart2_Award["FireWork"][3600215]["EmoneyLog"] = "1000	194	0	0	1	"
	-- 30个爱情之心 - 35%
	tValentinePart2_Award["FireWork"][3600215][1] = {}
	tValentinePart2_Award["FireWork"][3600215][1]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][3600215][1]["ItemChance"] = 3500
	tValentinePart2_Award["FireWork"][3600215][1]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][3600215][1]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][3600215][1]["RewardItem"][1]["Id"] = 3327493 -- 爱情之心[3327493][属性:0][叠加:0][金币:10000], 【表格】30个爱情之心
	tValentinePart2_Award["FireWork"][3600215][1]["RewardItem"][1]["Attr"] = "0 30" -- 爱情之心*30（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][3600215][1]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][3600215][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][3600215][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50个爱情之心 - 45%
	tValentinePart2_Award["FireWork"][3600215][2] = {}
	tValentinePart2_Award["FireWork"][3600215][2]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][3600215][2]["ItemChance"] = 4500
	tValentinePart2_Award["FireWork"][3600215][2]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][3600215][2]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][3600215][2]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】50个爱情之心
	tValentinePart2_Award["FireWork"][3600215][2]["RewardItem"][1]["Attr"] = "0 50" -- 龙珠*50（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][3600215][2]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][3600215][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][3600215][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100个爱情之心 - 20%
	tValentinePart2_Award["FireWork"][3600215][3] = {}
	tValentinePart2_Award["FireWork"][3600215][3]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][3600215][3]["ItemChance"] = 2000
	tValentinePart2_Award["FireWork"][3600215][3]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][3600215][3]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][3600215][3]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】100个爱情之心
	tValentinePart2_Award["FireWork"][3600215][3]["RewardItem"][1]["Attr"] = "0 100" -- 龙珠*100（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][3600215][3]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][3600215][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][3600215][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["FireWork"][27] = {}
	tValentinePart2_Award["FireWork"][27]["ItemChanceSum"] = 10000
	tValentinePart2_Award["FireWork"][27]["LogId"] = 12001825
	tValentinePart2_Award["FireWork"][27]["LogStep"] = " 2[1]"
	tValentinePart2_Award["FireWork"][27]["EmoneyLog"] = "1000	194	0	0	1	"
	-- 30个爱情之心 - 35%
	tValentinePart2_Award["FireWork"][27][1] = {}
	tValentinePart2_Award["FireWork"][27][1]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][27][1]["ItemChance"] = 3500
	tValentinePart2_Award["FireWork"][27][1]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][27][1]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][27][1]["RewardItem"][1]["Id"] = 3327493 -- 爱情之心[3327493][属性:0][叠加:0][金币:10000], 【表格】30个爱情之心
	tValentinePart2_Award["FireWork"][27][1]["RewardItem"][1]["Attr"] = "0 30" -- 爱情之心*30（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][27][1]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][27][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][27][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50个爱情之心 - 45%
	tValentinePart2_Award["FireWork"][27][2] = {}
	tValentinePart2_Award["FireWork"][27][2]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][27][2]["ItemChance"] = 4500
	tValentinePart2_Award["FireWork"][27][2]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][27][2]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][27][2]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】50个爱情之心
	tValentinePart2_Award["FireWork"][27][2]["RewardItem"][1]["Attr"] = "0 50" -- 龙珠*50（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][27][2]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][27][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][27][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100个爱情之心 - 20%
	tValentinePart2_Award["FireWork"][27][3] = {}
	tValentinePart2_Award["FireWork"][27][3]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][27][3]["ItemChance"] = 2000
	tValentinePart2_Award["FireWork"][27][3]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][27][3]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][27][3]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】100个爱情之心
	tValentinePart2_Award["FireWork"][27][3]["RewardItem"][1]["Attr"] = "0 100" -- 龙珠*100（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][27][3]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][27][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][27][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award["FireWork"][3600216] = {}
	-- ===点燃烟花
	-- ===索引: tValentinePart2_Award["FireWork"][3600216]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award["FireWork"][3600216]["ItemChanceSum"] = 10000
	tValentinePart2_Award["FireWork"][3600216]["LogId"] = 12001825
	tValentinePart2_Award["FireWork"][3600216]["LogStep"] = " 2[1]"
	tValentinePart2_Award["FireWork"][3600216]["EmoneyLog"] = "1000	194	0	0	1	"
	-- 300个爱情之心 - 35%
	tValentinePart2_Award["FireWork"][3600216][1] = {}
	tValentinePart2_Award["FireWork"][3600216][1]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][3600216][1]["ItemChance"] = 3500
	tValentinePart2_Award["FireWork"][3600216][1]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][3600216][1]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][3600216][1]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】300个爱情之心
	tValentinePart2_Award["FireWork"][3600216][1]["RewardItem"][1]["Attr"] = "0 300" -- 龙珠*300（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][3600216][1]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][3600216][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][3600216][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 500个爱情之心 - 45%
	tValentinePart2_Award["FireWork"][3600216][2] = {}
	tValentinePart2_Award["FireWork"][3600216][2]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][3600216][2]["ItemChance"] = 4500
	tValentinePart2_Award["FireWork"][3600216][2]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][3600216][2]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][3600216][2]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】500个爱情之心
	tValentinePart2_Award["FireWork"][3600216][2]["RewardItem"][1]["Attr"] = "0 500" -- 龙珠*500（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][3600216][2]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][3600216][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][3600216][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000个爱情之心 - 20%
	tValentinePart2_Award["FireWork"][3600216][3] = {}
	tValentinePart2_Award["FireWork"][3600216][3]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][3600216][3]["ItemChance"] = 2000
	tValentinePart2_Award["FireWork"][3600216][3]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][3600216][3]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][3600216][3]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】1000个爱情之心
	tValentinePart2_Award["FireWork"][3600216][3]["RewardItem"][1]["Attr"] = "0 1000" -- 龙珠*1000（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][3600216][3]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][3600216][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][3600216][3]["RewardEffect"]["Effect"] = "angelwing"

	tValentinePart2_Award["FireWork"][270] = {}
	-- ===点燃烟花
	-- ===索引: tValentinePart2_Award["FireWork"][3600216]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 1000,0194
	tValentinePart2_Award["FireWork"][270]["ItemChanceSum"] = 10000
	tValentinePart2_Award["FireWork"][270]["LogId"] = 12001825
	tValentinePart2_Award["FireWork"][270]["LogStep"] = " 2[1]"
	tValentinePart2_Award["FireWork"][270]["EmoneyLog"] = "1000	194	0	0	1	"
	-- 300个爱情之心 - 35%
	tValentinePart2_Award["FireWork"][270][1] = {}
	tValentinePart2_Award["FireWork"][270][1]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][270][1]["ItemChance"] = 3500
	tValentinePart2_Award["FireWork"][270][1]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][270][1]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][270][1]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】300个爱情之心
	tValentinePart2_Award["FireWork"][270][1]["RewardItem"][1]["Attr"] = "0 300" -- 龙珠*300（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][270][1]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][270][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][270][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 500个爱情之心 - 45%
	tValentinePart2_Award["FireWork"][270][2] = {}
	tValentinePart2_Award["FireWork"][270][2]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][270][2]["ItemChance"] = 4500
	tValentinePart2_Award["FireWork"][270][2]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][270][2]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][270][2]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】500个爱情之心
	tValentinePart2_Award["FireWork"][270][2]["RewardItem"][1]["Attr"] = "0 500" -- 龙珠*500（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][270][2]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][270][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][270][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000个爱情之心 - 20%
	tValentinePart2_Award["FireWork"][270][3] = {}
	tValentinePart2_Award["FireWork"][270][3]["RandomItemChanceType"] = 2
	tValentinePart2_Award["FireWork"][270][3]["ItemChance"] = 2000
	tValentinePart2_Award["FireWork"][270][3]["RewardItem"] = {}
	tValentinePart2_Award["FireWork"][270][3]["RewardItem"][1] = {}
	tValentinePart2_Award["FireWork"][270][3]["RewardItem"][1]["Id"] = 3327493 -- 龙珠[3327493][属性:0][叠加:0][金币:10000], 【表格】1000个爱情之心
	tValentinePart2_Award["FireWork"][270][3]["RewardItem"][1]["Attr"] = "0 1000" -- 龙珠*1000（[错误]物品数量超10个）
	tValentinePart2_Award["FireWork"][270][3]["RewardEffect"] = {}
	tValentinePart2_Award["FireWork"][270][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award["FireWork"][270][3]["RewardEffect"]["Effect"] = "angelwing"
	
	--称号奖励
	-- 3329885,'情人节绝美称号礼盒',
	tValentinePart2_Award[3329885] = {}
	tValentinePart2_Award[3329885][1] = {}
	tValentinePart2_Award[3329885][1]["LogId"] = 12001825
	tValentinePart2_Award[3329885][1]["DeleteItem"] = {}
	tValentinePart2_Award[3329885][1]["DeleteItem"][1] = {}
	tValentinePart2_Award[3329885][1]["DeleteItem"][1]["Id"] = 3329885
	tValentinePart2_Award[3329885][1]["RewardTitle"] = {}
	tValentinePart2_Award[3329885][1]["RewardTitle"]["TitleType"] = 2181   --芳心纵火犯
	tValentinePart2_Award[3329885][1]["RewardTitle"]["TitleId"] = 2181
	tValentinePart2_Award[3329885][1]["RewardTitle"]["SaveTime"] = 0
	tValentinePart2_Award[3329885][1]["RewardEffect"] = {}
	tValentinePart2_Award[3329885][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3329885][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award[3329885][2] = {}
	tValentinePart2_Award[3329885][2]["LogId"] = 12001825
	tValentinePart2_Award[3329885][2]["DeleteItem"] = {}
	tValentinePart2_Award[3329885][2]["DeleteItem"][1] = {}
	tValentinePart2_Award[3329885][2]["DeleteItem"][1]["Id"] = 3329885
	tValentinePart2_Award[3329885][2]["RewardTitle"] = {}
	tValentinePart2_Award[3329885][2]["RewardTitle"]["TitleType"] = 2183   -- 绝美偷心贼
	tValentinePart2_Award[3329885][2]["RewardTitle"]["TitleId"] = 2183
	tValentinePart2_Award[3329885][2]["RewardTitle"]["SaveTime"] = 0
	tValentinePart2_Award[3329885][2]["RewardEffect"] = {}
	tValentinePart2_Award[3329885][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3329885][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3329886,'情人节万人迷称号礼盒
	tValentinePart2_Award[3329886] = {}
	tValentinePart2_Award[3329886][1] = {}
	tValentinePart2_Award[3329886][1]["LogId"] = 12001825
	tValentinePart2_Award[3329886][1]["DeleteItem"] = {}
	tValentinePart2_Award[3329886][1]["DeleteItem"][1] = {}
	tValentinePart2_Award[3329886][1]["DeleteItem"][1]["Id"] = 3329886
	tValentinePart2_Award[3329886][1]["RewardTitle"] = {}
	tValentinePart2_Award[3329886][1]["RewardTitle"]["TitleType"] = 2182   --风华绝代天下倾
	tValentinePart2_Award[3329886][1]["RewardTitle"]["TitleId"] = 2182
	tValentinePart2_Award[3329886][1]["RewardTitle"]["SaveTime"] = 0
	tValentinePart2_Award[3329886][1]["RewardEffect"] = {}
	tValentinePart2_Award[3329886][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3329886][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentinePart2_Award[3329886][2] = {}
	tValentinePart2_Award[3329886][2]["LogId"] = 12001825
	tValentinePart2_Award[3329886][2]["DeleteItem"] = {}
	tValentinePart2_Award[3329886][2]["DeleteItem"][1] = {}
	tValentinePart2_Award[3329886][2]["DeleteItem"][1]["Id"] = 3329886
	tValentinePart2_Award[3329886][2]["RewardTitle"] = {}
	tValentinePart2_Award[3329886][2]["RewardTitle"]["TitleType"] = 2184   -- 一人倾心万人迷
	tValentinePart2_Award[3329886][2]["RewardTitle"]["TitleId"] = 2184
	tValentinePart2_Award[3329886][2]["RewardTitle"]["SaveTime"] = 0
	tValentinePart2_Award[3329886][2]["RewardEffect"] = {}
	tValentinePart2_Award[3329886][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePart2_Award[3329886][2]["RewardEffect"]["Effect"] = "angelwing"
	
-- 排行榜邮件发奖
	tRankingFunc_Info[25836] = {}
	tRankingFunc_Info[25836]["ActiveTime"] = tActivityTime["ValentinePart2"]["ActTime"]
	tRankingFunc_Info[25836]["DayTime"] = {}
	tRankingFunc_Info[25836]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[25836]["Reset"] = 1
	tRankingFunc_Info[25836]["Global"] = {54129,54130,54131,54132}
	tRankingFunc_Info[25836]["RankNum"] = 10
	
	tRankingFunc_Info[25836]["Mail"] = {}
	tRankingFunc_Info[25836]["Mail"]["ActiveTime"] = tActivityTime["ValentinePart2"]["RankTime"]
	tRankingFunc_Info[25836]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[25836]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[25836]["Mail"]["HaveFunc"] = 1
	-- tRankingFunc_Info[25836]["Mail"]["HaveFunc"] = ValentinePart2_ChangeText
	
	tRankingFunc_Info[25836]["Mail"]["Reward"] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[25836]["Mail"]["Reward"][1]["ActionId"] = 575983
	tRankingFunc_Info[25836]["Mail"]["Reward"][1]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][1]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][1]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][1]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][1]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[25836]["Mail"]["Reward"][2]["ActionId"] = 575984
	tRankingFunc_Info[25836]["Mail"]["Reward"][2]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][2]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][2]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][2]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][2]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[25836]["Mail"]["Reward"][3]["ActionId"] = 575984
	tRankingFunc_Info[25836]["Mail"]["Reward"][3]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][3]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][3]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][3]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][3]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[25836]["Mail"]["Reward"][4]["ActionId"] = 575985
	tRankingFunc_Info[25836]["Mail"]["Reward"][4]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][4]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][4]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][4]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][4]
	             
	tRankingFunc_Info[25836]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[25836]["Mail"]["Reward"][5]["ActionId"] = 575985
	tRankingFunc_Info[25836]["Mail"]["Reward"][5]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][5]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][5]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][5]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][5]	
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[25836]["Mail"]["Reward"][6]["ActionId"] = 575985
	tRankingFunc_Info[25836]["Mail"]["Reward"][6]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][6]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][6]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][6]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][6]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][7]["ActionId"] = 575986
	tRankingFunc_Info[25836]["Mail"]["Reward"][7]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][7]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][7]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][7]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][7]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[25836]["Mail"]["Reward"][8]["ActionId"] = 575986
	tRankingFunc_Info[25836]["Mail"]["Reward"][8]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][8]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][8]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][8]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][8]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[25836]["Mail"]["Reward"][9]["ActionId"] = 575986
	tRankingFunc_Info[25836]["Mail"]["Reward"][9]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][9]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][9]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][9]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][9]
	
	tRankingFunc_Info[25836]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[25836]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[25836]["Mail"]["Reward"][10]["ActionId"] = 575986
	tRankingFunc_Info[25836]["Mail"]["Reward"][10]["ExistDay"] = 7
	tRankingFunc_Info[25836]["Mail"]["Reward"][10]["Title"] = tValentinePart2_Text["Mail"][25836]["Title"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][10]["Sender"] = tValentinePart2_Text["Mail"][25836]["Sender"]
	tRankingFunc_Info[25836]["Mail"]["Reward"][10]["Content"] = tValentinePart2_Text["Mail"][25836]["Content"][10]
	
local tValentinePart2_Log = {}
	tValentinePart2_Log["DelItem"] = "0,0,%d,%d,12001825,2,0,0"	
	--花费天石点燃烟花log 100001429
	tValentinePart2_Log["EMoneyLog"] = "1000	01426	%d	%d	1	"
	--完成日常任务log
	tValentinePart2_Log["CompleteLog"] = "1000	01427	0	0	1	"
	
	-- 消耗物品燃放烟花log
	tValentinePart2_Log["FireWork"] = {}
	tValentinePart2_Log["FireWork"][3600215] = "1000	01428	0	0	1	"
	tValentinePart2_Log["FireWork"][3600216] = "1000	01429	0	0	1	"
	
	-- 单人进入
	tValentinePart2_Log["Single"] = "1000	01430	0	0	1	"
	--组队进入
	tValentinePart2_Log["Double"] = "1000	01431	0	0	1	"
	
	--进入巧克力梦工场	100001524
	tValentinePart2_Log["OtherMap"] = "1000	01524	0	0	1	"
	
--记录npc是否点击过  tValentinePart2_NpcIsFire[UserId][mapid] = 1 记录是否点燃过
local tValentinePart2_NpcIsFire = {}

local tValentinePart2_TeamNpcClik = {}

-- 记录组队进入的条件 临时表
local tValentinePart2_LevFlag = {} 
	tValentinePart2_LevFlag["LevFlag"] = {}
	tValentinePart2_LevFlag["Mapdoc"] = {}
	tValentinePart2_LevFlag["BagSpace"] = {}
	tValentinePart2_LevFlag["TeamUserId"] = {}
	tValentinePart2_LevFlag["Team"] = {}
	tValentinePart2_LevFlag["Distance"] = {}
	tValentinePart2_LevFlag["HasBooth"] = {}
	
-- 记录进入地图事记录的地图索引
local tValentinePart2_UserFindNpc = {}	
local tValentinePart2_UserFindNpcIndex = {}	

--记录已经点燃过的npc ValentinePart2_HaveFindNpc[userid][nValentinePart2_DynpcId]
local ValentinePart2_HaveFindNpc = {}


-- 地图播放光效
local tValentinePart2_MapEffect = {}
	-- 点燃礼炮，烟花光效
	tValentinePart2_MapEffect[1] = {"FF02","FF03","FF04","FF05"}
	tValentinePart2_MapEffect[3600215] = {"FF02","FF03","FF04","FF05"}
	tValentinePart2_MapEffect[27] = {"FF02","FF03","FF04","FF05"}
	
	tValentinePart2_MapEffect[3600216] = {"FF07","FF08","FF09","FF10"}
	tValentinePart2_MapEffect[270] = {"FF07","FF08","FF09","FF10"}
	
--光效配置
-- local tValentinePart2_Effect = {}

	-- tValentinePart2_Effect[3600215] = {}
	-- tValentinePart2_Effect[3600215]["SzObj"] = "self"
	-- tValentinePart2_Effect[3600215]["Effect"] = "movego"

	-- tValentinePart2_Effect[3600216] = {}
	-- tValentinePart2_Effect[3600216]["SzObj"] = "self"
	-- tValentinePart2_Effect[3600216]["Effect"] = "CircleUp"
	
	-- tValentinePart2_Effect[27] = {}
	-- tValentinePart2_Effect[27]["SzObj"] = "self"
	-- tValentinePart2_Effect[27]["Effect"] = "movego"

	-- tValentinePart2_Effect[270] = {}
	-- tValentinePart2_Effect[270]["SzObj"] = "self"
	-- tValentinePart2_Effect[270]["Effect"] = "CircleUp"



	
----------------------------------逻辑部分---------------------------------------------

--巧克力豆兑换 巧克力
function ValentinePart2_CheckNeedItem(nItemId)
	local b = false
	local nIdex = 0
	local nUserItemNum = Get_CountItemType(nItemId,0)
	
	if nUserItemNum >= 3 then 
		b = true
		nIdex = 1
	else 
		if #tValentinePart2_Data["ItemCheck"][nItemId] > 0 then 
			for i = 1 , #tValentinePart2_Data["ItemCheck"][nItemId] do 
				local nItemNum = tValentinePart2_Data["ItemCheck"][nItemId][i][1]
				local nNeedItemId = tValentinePart2_Data["ItemCheck"][nItemId][i][2]
				local nNeedItemNum = tValentinePart2_Data["ItemCheck"][nItemId][i][3]
				if nUserItemNum == nItemNum then		
					if Item_ChkMulItem(nNeedItemId,nNeedItemId,nNeedItemNum) then
						b = true
						nIdex = i
						break
					end 
				end 
			end 

		end 
		
	end 
	
	return b,nIdex
end 


--进入跨服地图
function ValentinePart2_GotoInternationalMap(nNpcId)
	--活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then 
		return
	end 
	local nValentinePart2_UserId = Get_UserId()
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nValentinePart2_UserId) then 
		Sys_MsgBox(tValentinePart2_Text["Msg"]["UserLev"])
		return
	end 
	
	if ValDayFW_GetStcValue(1) == 1 then
		if User_UserRandBoundTrans(tValentinePart2_Data["OtherMap"]["Id"],tValentinePart2_Data["OtherMap"]["PoX"],tValentinePart2_Data["OtherMap"]["PoY"],5,5,1) then 
			Sys_SaveEmoneyBuy(tValentinePart2_Log["OtherMap"],nValentinePart2_UserId)
			User_TalkChannel2005(tValentinePart2_Text["Sys"]["EnterMap"])
			Sys_MsgBox(tValentinePart2_Text["Msg"]["EnterMap"],"</F>NpcPosition_PathFind</N>25869","NULL",nValentinePart2_UserId)
		end 
		
	else
		Sys_MsgBox(tValentinePart2_Text["Msg"]["NotComplete"],"</F>NpcPosition_PathFind</N>25846","NULL",nValentinePart2_UserId)
		
	end
		-- local nUserId = Get_UserId()
		-- User_NoviceTeaching(1074,nUserId)
		
	--跨国未开放
	-- if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][2]) then 
		-- Sys_MsgBox(tGuidePlayers_Text["SysTips"]["NoTime"])
		-- return
	-- end
	
	-- local nGuidePlayers_UserId = Get_UserId()
	
	--打雪仗
	-- PlaySnowball_Goto(nGuidePlayers_UserId)
	--祈愿贺卡活动
	-- ChristmasCard2019_ResetInfo()
	--祈福弹幕
	-- DoubleEggPray_GotMulMap()
	-- DoubleEggPray_DDKuaFu()
	--雪人大作战
	-- MakeSnowman_EnterCrossMap()
	
	-- local nGuidePlayers_ServerId = Get_FrontierServerID()
	-- local nGuidePlayers_ConfigMapFlag = tGuidePlayers_Data["ConfigMap"][nGuidePlayers_Index]
	
	-- GuidePlayers_TaskClear(nGuidePlayers_UserId)
	
	--进入跨国
	-- if Sys_EnterServer(998,12,nGuidePlayers_UserId,nGuidePlayers_ConfigMapFlag) then
	-- if Sys_EnterServer(nGuidePlayers_ServerId,12,nGuidePlayers_UserId,nGuidePlayers_ConfigMapFlag) then
	-- if Sys_EnterServer(102,12,nGuidePlayers_UserId,nGuidePlayers_ConfigMapFlag) then
		-- 获得光效
		-- User_EffectAdd("self","angelwing",nGuidePlayers_UserId)
		-- 提示
		-- User_TalkChannel2005(tGuidePlayers_Text["SysTips"]["EnterMap"])
		-- Sys_SaveActionFestivalLog(tGuidePlayers_Log[1])
		-- SaveCustomLog(tGuidePlayers_Log[1])
		-- return true
	-- end
	
end
--获取玩家名次
function ValentinePart2_GetUserRank(nUserId)
	local tValentinePart2_Rank = RankingFunc_GetNowData(25836)
	local nRank = 0
	for i=1,10 do
		if tValentinePart2_Rank[i] ~= nil then 
			if tValentinePart2_Rank[i]["Score"] >= 0 then	
				local nRank_UserId = tValentinePart2_Rank[i]["UserId"]
				if nUserId == nRank_UserId then 
					nRank = i
				end 
			end 
		end 
	end
	return nRank
end 


--记录排行榜
function ValentinePart2_SetRank(nNum,nUserId)
	
	local nValentinePart2_UserId = nUserId or Get_UserId()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][2]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][2]

	local nValentinePart2_OldUserRank = ValentinePart2_GetUserRank(nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	nValentinePart2_DataValue = nValentinePart2_DataValue + nNum
	Task_SetStatistic(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_DataValue,1,nValentinePart2_UserId)
	Task_SetStcTimestamp(nValentinePart2_EnentType,nValentinePart2_DataType,0,nValentinePart2_UserId)
	local nNowNum = math.floor(nValentinePart2_DataValue)
	RankingFunc_SetInfo(25836,nNowNum,nValentinePart2_UserId)
	local nValentinePart2_NewUserRank = ValentinePart2_GetUserRank(nValentinePart2_UserId)

	local nValentinePart2_NewDataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_OldUserRank ~= nValentinePart2_NewUserRank then 
		Sys_SystemBroadcast(string.format(tValentinePart2_Text["Broadcast"]["RankChange"],Get_UserName(nValentinePart2_UserId),nValentinePart2_NewDataValue,nValentinePart2_NewUserRank))
	end 
	
end 	

--获取玩家真爱之心数量
function ValentinePart2_GetLoveNum(nUserId)
	local nValentinePart2_UserId = nUserId or Get_UserId()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][2]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][2]
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	return nValentinePart2_DataValue
end 

--隔天判断
function ValentinePart2_RetTask(nEventType,nDataType,nUserId)
	local nValentinePart2_UserId = nUserId or Get_UserId()
	if Task_StcInterval(nEventType,nDataType,1,4,nValentinePart2_UserId) then
		Task_SetStatistic(nEventType,nDataType,0,1,nValentinePart2_UserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nValentinePart2_UserId)
	end

end 

--寻找赛维娅
function ValentinePart2_FindSaviya(nNpcId)
	local nValentinePart2_PosX = Get_NpcPositionX(nNpcId)
	local nValentinePart2_PosY = Get_NpcPositionY(nNpcId)
	local nValentinePart2_MapId = Get_NpcMapID(nNpcId)
	local nValentinePart2_UserId = Get_UserId()
	Sys_GotoSomeWhere(nValentinePart2_PosX,nValentinePart2_PosY,nValentinePart2_MapId,nNpcId,nValentinePart2_UserId)
end


--判断是否有可领奖励
function ValentinePart2_CheckReward(nUserId)
	local nValentinePart2_UserId = nUserId or Get_UserId()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][3]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][3]
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == nil or nValentinePart2_DataValue == "" then 
		nValentinePart2_DataValue = 0
		
	
	end 
	
	
	if nValentinePart2_DataValue >= #tValentinePart2_Data["Stage"] then 
		return false
	end 
	local nValentinePart2_Value = ValentinePart2_GetLoveNum(nValentinePart2_UserId)
	if tValentinePart2_Data["Stage"][nValentinePart2_DataValue+1] ~= nil then 
		if nValentinePart2_Value >= tValentinePart2_Data["Stage"][nValentinePart2_DataValue+1] then 
		
			return true
		
		else
			return false
		end 
	else
		return false
	end 
	
end 

function ValentinePart2_GetRaward(nNpcId)
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end 
	local nValentinePart2_UserId = Get_UserId()
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nValentinePart2_UserId) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	
	--判断是否可领
	if not ValentinePart2_CheckReward(nValentinePart2_UserId) then 
		Sys_MsgBox(tValentinePart2_Text["Msg"]["NoReward"])
		return
	end
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][3]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][3]
	
	--判断背包空间
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if tValentinePart2_Award["Stage"][nValentinePart2_DataValue+1] ~= nil then 
		if not RewardTemplate_CheckSpace(tValentinePart2_Award["Stage"][nValentinePart2_DataValue+1],nValentinePart2_UserId) then 
			Sys_MsgBox(tValentinePart2_Text["Msg"]["NoSpace"])
			return
		end 
		
		if Task_AddStatistic(nValentinePart2_EnentType,nValentinePart2_DataType,1,1,nValentinePart2_UserId) and Task_SetStcTimestamp(nValentinePart2_EnentType,nValentinePart2_DataType,0,nValentinePart2_UserId) then 
			
			RewardTemplate_UseItemAndMsg(tValentinePart2_Award["Stage"][nValentinePart2_DataValue+1],nValentinePart2_UserId)
			
		end 

	end 

end 

-- 线下页面
function ValentinePart2_Web(nNpcId)
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end 
	local nValentinePart2_UserId = Get_UserId()
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nValentinePart2_UserId) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	-- User_SendWebPage(tValentinePart2_Data["Web"],nValentinePart2_UserId)
	User_SendWebDialog(tValentinePart2_Data["Web"],nValentinePart2_UserId)
	
end 

--检测时间  返回对应的数值
function ValentinePart2_CheckTime()
	--判断时间
	local nValentinePart2_TimeFlag = 1
	for i = 1 , #tActivityTime["ValentinePart2"]["Week"] do 
		if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["Week"][i]) then 
			
			nValentinePart2_TimeFlag = i
		end 
	end 
	
	return nValentinePart2_TimeFlag
	
end 


--组队进入地图
function ValentinePart2_ToInstance(nMapFlag,nFlag,nTeamId,nOldUserId,nUserId)

	tValentinePart2_UserFindNpc[nOldUserId] = {nMapFlag,nFlag}
	tValentinePart2_LevFlag["Team"][nTeamId] = {nMapFlag,nFlag}

	local nMapId = tValentinePart2_Data["Map"][nMapFlag]["MapId"]

	local nCellx = tValentinePart2_Data["Map"][nMapFlag]["PosX"]
	local nCelly = tValentinePart2_Data["Map"][nMapFlag]["PosY"]

	--传送
	if User_UserRandBoundTrans(nMapId,nCellx,nCelly,5,5,1,nUserId) then

		User_TalkChannel2005(tValentinePart2_Text["Sys"]["IntoInstance"][nMapFlag],nUserId)
		local nInstanceMapId = Get_UserMapId(nUserId)
		
		Sys_MsgBox(tValentinePart2_Text["Msg"]["IntoInstance"],"NULL","NULL",nUserId)
		-- Sys_MsgBox(tValentinePart2_Text["Msg"]["IntoInstance"],"</F>ValentinePart2_FindFireNpc</N>"..nMapFlag.."</N>"..nFlag.."</N>"..nUserId.."</N>0","NULL",nUserId)
		--记录组队进入的log
		Sys_SaveEmoneyBuy(tValentinePart2_Log["Double"],nUserId)		
	end
end 



function ValentinePart2_FireWorkSucces(nValentinePart2_DynpcId,nValentinePart2_DataValue,nUserId)
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = nUserId or Get_UserId()

	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 
		--首次进入
		if Task_AddStatistic(nValentinePart2_EnentType,nValentinePart2_DataType,1,1,nValentinePart2_UserId) and Task_SetStcTimestamp(nValentinePart2_EnentType,nValentinePart2_DataType,0,nValentinePart2_UserId) then 
	
			Task_AddStatistic(tValentinePart2_Stc["EventType"]["Fist"],tValentinePart2_Stc["DataType"]["Fist"] ,1,1,nValentinePart2_UserId)
			Task_SetStcTimestamp(tValentinePart2_Stc["EventType"]["Fist"],tValentinePart2_Stc["DataType"]["Fist"] ,0,nValentinePart2_UserId)

			tValentinePart2_NpcIsFire[nValentinePart2_UserId] = tValentinePart2_NpcIsFire[nValentinePart2_UserId] or {}
			tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1

			Sys_SaveEmoneyBuy(tValentinePart2_Log["CompleteLog"],nValentinePart2_UserId)	

			local tAward = RewardTemplate_NewRandom(tValentinePart2_Award["FireWork"],1,nValentinePart2_UserId)
	
			local Id= tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
			local Count= tonumber(CommonFunc_GetItemNum(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"])) 	

			-- Sys_MsgBox(string.format(tValentinePart2_Text["Msg"]["FireSuccess"],Count),"</F>ValentinePart2_GoOut</N>"..nValentinePart2_UserId,"NULL",nValentinePart2_UserId)
			Sys_MsgBox(tValentinePart2_Text["Msg"]["FireFistSuccess"],"</F>ValentinePart2_FindNpcToLeave</N>"..nValentinePart2_DynpcId.."</N>"..nValentinePart2_UserId,"NULL",nValentinePart2_UserId)
			ValentinePart2_SetRank(Count,nValentinePart2_UserId)
			ValentinePart2_FireEffect(1,nValentinePart2_DynpcId,nValentinePart2_UserId)

		end 
	end 	
end 
function ValentinePart2_GoOut(nFirstFlag,nUserId)
	--判断服务器
	local nUserId = nUserId or Get_UserId()
	local nFlag = 1
	--判断服务器
	if SpecialServer_ChkNoGiftServer() then
		nFlag = 2
	end
	local nMapId = tValentinePart2_Data["Npc"][nFlag]["MapId"]
	local nPosX = tValentinePart2_Data["Npc"][nFlag]["PosX"] 
	local nPosY = tValentinePart2_Data["Npc"][nFlag]["PosY"] 
	
	if nFirstFlag ~= nil then 
		
		Sys_MsgBox(tValentinePart2_Text["Msg"]["LeaveOut"],"</F>ValentinePart2_YIDao</N>"..nMapId.."</N>"..nPosX.."</N>"..nPosY.."</N>"..nUserId,"NULL",nUserId)
	else
		Sys_MsgBox(tValentinePart2_Text["Msg"]["LeaveOut"],"</F>User_UserRandBoundTrans</N>"..nMapId.."</N>"..nPosX.."</N>"..nPosY.."</N>3".."</N>3".."</N>1".."</N>"..nUserId,"NULL",nUserId)

	end 
	
	
end 

function ValentinePart2_YIDao(nMapId,nPosX,nPosY,nUserId)
	if User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId) then 
		-- User_NoviceTeaching(1074,nUserId)
		ValentinePart2_FindSaviya(tValentinePart2_Data["DistanceNpc"])
	end 
	
end 

-- 通用播放地效
function ValentinePart2_FireEffect(nIndex,nValentinePart2_DynpcId,nValentinePart2_UserId)

	local nFlag = ValentinePart2_CheckTime()
	if nFlag == 0 or nFlag == nil then 
		return
	end 

	for i =1 ,#tValentinePart2_Data["Pos"][nFlag] do 
		for j = 1 ,4 do 
			local sEffectName = tValentinePart2_MapEffect[nIndex][j]
			local nRandom = math.random(1,5)
			-- local nMapId = Get_NpcMapID(nValentinePart2_DynpcId)
			local nMapId = Get_UserMapId(nValentinePart2_UserId)
			
			local nPosX = tValentinePart2_Data["Pos"][nFlag][i][1]-nRandom
			local nPosY = tValentinePart2_Data["Pos"][nFlag][i][2]-nRandom
			Map_Effect(nMapId,nPosX,nPosY,sEffectName)
		end 
	end 
	
end

--陷阱传送
function ValentinePart2_InstanceMove(nTrapId,nTrapType)
	
	
	local nUserId = Get_UserId()
	local nFlag = 1
	--判断服务器
	if SpecialServer_ChkNoGiftServer() then
		nFlag = 2
	end
	local nMapId = tValentinePart2_Data["Npc"][nFlag]["MapId"]
	local nPosX = tValentinePart2_Data["Npc"][nFlag]["PosX"] 
	local nPosY = tValentinePart2_Data["Npc"][nFlag]["PosY"] 
	
	Sys_MsgBox(tValentinePart2_Text["Msg"]["LeaveOut"],"</F>User_UserRandBoundTrans</N>"..nMapId.."</N>"..nPosX.."</N>"..nPosY.."</N>3</N>3</N>1".."</N>"..nUserId,"NULL",nUserId)
	
	
	-- User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId)
	
end 

-- 点燃失败
function ValentinePart2_FireWorkFail(nUserId)
	Sys_MsgBox(tValentinePart2_Text["Msg"]["FireFail"],"NULL","NULL",nUserId)
end
	
-- 判断是否燃放
function ValentinePart2_CheckHaveFireWork(nUserId)
	local nValentinePart2_UserId = nUserId or Get_UserId()
	local nValentinePart2_DynpcId = Get_NpcId()
	local b = true
	if tValentinePart2_NpcIsFire ~= nil then 
		
		if tValentinePart2_NpcIsFire[nValentinePart2_UserId] ~= nil then 
			if tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] ~= nil then 
				if tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] == 1 then 
					b = false
		
				end 
			end 
		end 
	end 
	return b
	
end	
	
	
--每日任务完成的接口
function ValentinePart2_CheckDailyTak()
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return false
		
	else
		return true
	end

end 
	
--判断队伍玩家是否在地图里
function ValentinePart2_TeamPlayerMap(nMapFlag,nFlag,nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	local nTeamId = Get_UserTeamId(nUserId)
	local nMapId = Get_UserMapId(nUserId)

	if nMapId ~= tValentinePart2_Data["MapId"][nFlag][nMapFlag]["ActMapId"] then
		tValentinePart2_LevFlag["Mapdoc"][nTeamId] = false
	end
	if not tValentinePart2_LevFlag["Mapdoc"][nTeamId] then
		return
	end
end

--判断队伍玩家背包空间
function ValentinePart2_TeamPlayeBag(nFlag,nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	local nTeamId = Get_UserTeamId(nUserId)

	if tValentinePart2_Award["TeamMateAward"][nFlag] ~= nil then 
		if  not RewardTemplate_CheckSpace(tValentinePart2_Award["TeamMateAward"][nFlag],nUserId) then
			tValentinePart2_LevFlag["BagSpace"][nTeamId] = false
		end 
	end
	if not tValentinePart2_LevFlag["BagSpace"][nTeamId] then
		return
	end
end

--判断队伍玩家等级
function ValentinePart2_TeamPlayerLev(nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	local nTeamId = Get_UserTeamId(nUserId)

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nUserId) then
		tValentinePart2_LevFlag["LevFlag"][nTeamId] = false
	end
	if not tValentinePart2_LevFlag["LevFlag"][nTeamId] then
		return
	end
end


--判断队伍玩家距离
function ValentinePart2_TeamPlayerDistance(nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	local nTeamId = Get_UserTeamId(nUserId)
	local nMapId = Get_NpcMapID(tValentinePart2_Data["DistanceNpc"])
	local nPosXMin = Get_NpcPositionX(tValentinePart2_Data["DistanceNpc"]) - 10
	local nPosXMax = Get_NpcPositionX(tValentinePart2_Data["DistanceNpc"]) + 10
	local nPosYMin = Get_NpcPositionY(tValentinePart2_Data["DistanceNpc"]) - 10 
	local nPosYMax = Get_NpcPositionY(tValentinePart2_Data["DistanceNpc"]) + 10

	local nUserMapId = Get_UserMapId(nUserId)
	local nUserPosX = tonumber(Get_UserPositionX(nUserId))
	local nUserPosY = tonumber(Get_UserPositionY(nUserId))
	
	-- 使用范围外
	if nUserMapId ~= nMapId or nUserPosX < nPosXMin or nUserPosX > nPosXMax or nUserPosY < nPosYMin or nUserPosY > nPosYMax then
		tValentinePart2_LevFlag["Distance"][nTeamId] = false
	end
	if not tValentinePart2_LevFlag["Distance"][nTeamId] then
		return
	end
end


--判断队伍玩家是否摆摊
function ValentinePart2_TeamPlayerBooth(nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	local nTeamId = Get_UserTeamId(nUserId)

	if not User_HasBooth(nUserId) then 
		tValentinePart2_LevFlag["HasBooth"][nTeamId] = false
	end 

	if not tValentinePart2_LevFlag["HasBooth"][nTeamId] then
		return
	end
end



--进入公共地图
function ValentinePart2_GoLovePlace(nNpcId,nFlag,nMapFlag)
	local nValentinePart2_UserId = Get_UserId()

	--判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end 
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nValentinePart2_UserId) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	--两人以上无法进入
	if Get_UserTeamNumbers(nValentinePart2_UserId) > 2 then  
		Sys_MsgBox(tValentinePart2_Text["Msg"]["PeopleLimit"])
		return
	end
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 
		--首次进入不允许组队
		if Get_UserTeamNumbers(nValentinePart2_UserId) > 0 then  
			Sys_MsgBox(tValentinePart2_Text["Msg"]["FistIntoNoTeam"])
			return
		end
	else
		--完成任务
		--判断组队的人都是80级以上 
		if  Get_UserTeamNumbers(nValentinePart2_UserId) > 0 then 
	
			local nTeamId = Get_UserTeamId(nValentinePart2_UserId)	
			tValentinePart2_LevFlag["LevFlag"][nTeamId] = true
			if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayerLev") then
				if not tValentinePart2_LevFlag["LevFlag"][nTeamId] then
					Sys_MsgBox(tValentinePart2_Text["Msg"]["TeamMateNoLev"])
					return
				end
			end
			
			--判断玩家是否队长
			if not User_IsTeamLeader(nValentinePart2_UserId) then
				Sys_MsgBox(tValentinePart2_Text["Msg"]["NotLeader"])
				return
			end
			
			--判断玩家距离
			tValentinePart2_LevFlag["Distance"][nTeamId] = true
			if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayerDistance") then
				if not tValentinePart2_LevFlag["Distance"][nTeamId] then
					Sys_MsgBox(tValentinePart2_Text["Msg"]["TeamDistance"])
					return
				end
			end
		
			--判断是否摆摊
			-- tValentinePart2_LevFlag["HasBooth"][nTeamId] = true
			-- if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayerBooth") then
				-- if not tValentinePart2_LevFlag["HasBooth"][nTeamId] then
					-- Sys_MsgBox(tValentinePart2_Text["Msg"]["TeamHasbooth"])
					-- return
				-- end
			-- end
	
		end
	end

	local nMapId = Get_UserMapId(nValentinePart2_UserId)
	--检查地图
	if nMapId == tValentinePart2_Data["MapId"][nMapFlag][nFlag]["ActMapId"] then
		return
	end

	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 
	
		--首次进入
		if User_EnterInstance(tValentinePart2_Data["MapId"][nMapFlag][nFlag]["InstanceType"]) then
			User_PlayPlot(tValentinePart2_Data["Story"][nFlag],nValentinePart2_UserId)	
			local nInstanceMapId = Get_UserMapId()
	
			if tValentinePart2_NpcIsFire ~= nil then 
				if tValentinePart2_NpcIsFire[nValentinePart2_UserId] ~= nil then 
					tValentinePart2_NpcIsFire[nValentinePart2_UserId] = {}
				end 
			end 
			
			User_TalkChannel2005(tValentinePart2_Text["Sys"]["IntoInstance"][nMapFlag],nValentinePart2_UserId)
			-- Sys_MsgBox(tValentinePart2_Text["Msg"]["IntoInstance"],"NULL","NULL",nValentinePart2_UserId)
			Sys_MsgBox(tValentinePart2_Text["Msg"]["IntoEveryInstance"],"</F>ValentinePart2_InstanceFindFireNpc</N>"..nFlag.."</N>"..nValentinePart2_UserId,"NULL",nValentinePart2_UserId)
			--记录单人进入log
			Sys_SaveEmoneyBuy(tValentinePart2_Log["Single"])	
		end

	else
		
		if Get_UserTeamNumbers(nValentinePart2_UserId) > 1 then 
			local nTeamId = Get_UserTeamId(nValentinePart2_UserId)	
			User_TeamExeFuncByTeamer(3,"ValentinePart2_ToInstance</N>"..nFlag.."</N>"..nMapFlag.."</N>"..nTeamId.."</N>"..nValentinePart2_UserId)
			if tValentinePart2_NpcIsFire ~= nil then 
				if tValentinePart2_NpcIsFire[nValentinePart2_UserId] ~= nil then 
					tValentinePart2_NpcIsFire[nValentinePart2_UserId] = {}
				end 
			end 
			if ValentinePart2_HaveFindNpc[nValentinePart2_UserId] ~= nill then 
				ValentinePart2_HaveFindNpc[nValentinePart2_UserId] = nil
			end 
			
		else
			local nActMapId = tValentinePart2_Data["Map"][nFlag]["MapId"]
			local nActCellx = tValentinePart2_Data["Map"][nFlag]["PosX"]
			local nActCelly = tValentinePart2_Data["Map"][nFlag]["PosY"]
	
			--传送
			if User_UserRandBoundTrans(nActMapId,nActCellx,nActCelly,5,5,1,nValentinePart2_UserId) then	
		
				if tValentinePart2_NpcIsFire ~= nil then 
					if tValentinePart2_NpcIsFire[nValentinePart2_UserId] ~= nil then 
						tValentinePart2_NpcIsFire[nValentinePart2_UserId] = {}
					end 
				end 
				if ValentinePart2_HaveFindNpc[nValentinePart2_UserId] ~= nill then 
					ValentinePart2_HaveFindNpc[nValentinePart2_UserId] = nil
				end 
				tValentinePart2_UserFindNpc[nValentinePart2_UserId] = {nFlag,nMapFlag}
				User_TalkChannel2005(tValentinePart2_Text["Sys"]["IntoInstance"][nMapFlag],nValentinePart2_UserId)
				Sys_MsgBox(tValentinePart2_Text["Msg"]["IntoInstance"],"NULL","NULL",nValentinePart2_UserId)
				-- Sys_MsgBox(tValentinePart2_Text["Msg"]["IntoInstance"],"</F>ValentinePart2_FindFireNpc</N>"..nFlag.."</N>"..nMapFlag.."</N>0"..nValentinePart2_UserId.."</N>0","NULL",nValentinePart2_UserId)
				--记录单人进入log
				Sys_SaveEmoneyBuy(tValentinePart2_Log["Single"])	
			end
			
		end 
		
	end

end 

function ValentinePart2_OkFindNpc()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	if tValentinePart2_UserFindNpc[nUserId] ~= nil then 
		local nFlag = tValentinePart2_UserFindNpc[nUserId][1]
		local nMapFlag = tValentinePart2_UserFindNpc[nUserId][2]
		ValentinePart2_FindFireNpc(nFlag,nMapFlag,nUserId,nNpcId)
		
	end 
end 	
function ValentinePart2_FindNpcToLeave(nValentinePart2_DynpcId,nValentinePart2_UserId)
	local nValentinePart2_UserId = nValentinePart2_UserId or Get_UserId()
	local nMapId = Get_UserMapId(nValentinePart2_UserId)
	local nValentinePart2_PosX = tValentinePart2_Data["FindSeiviya"][nValentinePart2_DynpcId][1]
	local nValentinePart2_PosY = tValentinePart2_Data["FindSeiviya"][nValentinePart2_DynpcId][2]

	Sys_GotoSomeWhere(nValentinePart2_PosX,nValentinePart2_PosY,nMapId,nNpcId,nValentinePart2_UserId)

end 


-- 副本寻路 
function ValentinePart2_InstanceFindFireNpc(nFlag,nUserId)
	local nValentinePart2_UserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nValentinePart2_UserId)
	local nValentinePart2_PosX = tValentinePart2_Data["InstanceMap"][nFlag]["PosX"]
	local nValentinePart2_PosY = tValentinePart2_Data["InstanceMap"][nFlag]["PosY"] 

	Sys_GotoSomeWhere(nValentinePart2_PosX,nValentinePart2_PosY,nMapId,nNpcId,nValentinePart2_UserId)

end 	


function ValentinePart2_FindFireNpc(nFlag,nMapFlag,nUserId,nValentinePart2_DynpcId)
	local nValentinePart2_UserId = nUserId or Get_UserId()
	local b = false
	local nNotFindNpc = 1
	if nValentinePart2_DynpcId ~= 0 then 
		for i = 1 , #tValentinePart2_Data["FindFireNpc"][nMapFlag][nFlag] do 
			local nNpcId = tValentinePart2_Data["FindFireNpc"][nMapFlag][nFlag][i]
			if nNpcId ~= nValentinePart2_DynpcId then 
				if ValentinePart2_HaveFindNpc[nUserId] ~= nil then 
					if ValentinePart2_HaveFindNpc[nUserId][nNpcId] == nil then 
						nNotFindNpc = i
						b = true
						break
					end 
				else	
					b = true	
					break
				end 
			end 
			
		end 
	else
		b =true
	end 
	
	if b then 
		local nNotFindNpcId = tValentinePart2_Data["FindFireNpc"][nMapFlag][nFlag][nNotFindNpc]
		NpcPosition_PathFind(nNotFindNpcId)
	-- else
		-- Sys_MsgBox(tValentinePart2_Text["Msg"]["FireWorkDone"],"</F>ValentinePart2_GoOut","NULL",nValentinePart2_UserId)

	end 
	

end 
--队友获得奖励
function ValentinePart2_TeamMateAward(nItemId,nTeamId,nOldUserId,nUserId)

	if nOldUserId == nUserId then 
		return
	end 
	--判断队友是否在地图里
	local nMapId = Get_UserMapId(nUserId)
	if tValentinePart2_LevFlag["Team"][nTeamId] ~= nil then 
		local nMapFlag = tValentinePart2_LevFlag["Team"][nTeamId][1]
		local nFlag = tValentinePart2_LevFlag["Team"][nTeamId][2]

		if nMapId ~= tValentinePart2_Data["MapId"][nFlag][nMapFlag]["ActMapId"] then
			return
		end
	end
	if tValentinePart2_Award["TeamMateAward"][nItemId] ~= nil then 
		
		Sys_MsgBox(string.format(tValentinePart2_Text["Msg"]["TeamMateAward"][nItemId],Get_UserName(nOldUserId)),nil,nil,nUserId)
		RewardTemplate_UseItemAndMsg(tValentinePart2_Award["TeamMateAward"][nItemId],nUserId)
	end 
end 



--每日燃放烟花
function ValentinePart2_FireWork(nNpcId,nFlag)
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	local nValentinePart2_UserId = Get_UserId()
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nValentinePart2_UserId) then 
		return
	end 
	
	--判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentinePart2_Award["FireWork"],1,nValentinePart2_UserId) then 
		User_TalkChannel2005(tValentinePart2_Text["Sys"]["NoBag"])
		return
	end
	
	local nValentinePart2_DynpcId = Get_NpcId()

	if tValentinePart2_NpcIsFire ~= nil then 
		if tValentinePart2_NpcIsFire[nValentinePart2_UserId] ~= nil then 
			if tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] ~= nil then 
				if tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] == 1 then 
					-- User_TalkChannel2005("燃放过了")
					return
				end 
			end 
		end 
	end 
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	
	if nFlag == 1 then 
		if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 
			--读条
			User_SetExplore(1,tValentinePart2_Text["Note"],261,"ValentinePart2_FireWorkSucces</N>"..nValentinePart2_DynpcId.."</N>"..nValentinePart2_DataValue,"</F>ValentinePart2_FireWorkFail")
		end 
	
	else
		-- 之后进入
		local nValentinePart2_FireEnentType = tValentinePart2_Stc["EventType"][4]
		local nValentinePart2_FireDataType = tValentinePart2_Stc["DataType"][4]
		ValentinePart2_RetTask(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
		local nValentinePart2_FireDataValue = Get_UserStatisticValue(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
		if nValentinePart2_FireDataValue > 0 then 
			User_TalkChannel2005(tValentinePart2_Text["Sys"]["NumLimit"])
			return
		end 
		
		--判断是否组队
		if Get_UserTeamNumbers(nValentinePart2_UserId) > 0 then  
			--判断队友背包空间
			local nTeamId = Get_UserTeamId()
			tValentinePart2_LevFlag["BagSpace"][nTeamId] = true
			if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayeBag</N>1") then
				if not tValentinePart2_LevFlag["BagSpace"][nTeamId] then
					User_TalkChannel2005(tValentinePart2_Text["Sys"]["TeamNoBag"])
					return
				end
			end
			--只有队长才能点燃
			if not User_IsTeamLeader(nValentinePart2_UserId) then
				Sys_MsgBox(tValentinePart2_Text["Msg"]["NotLeader"])
				return
			end
			
			--判断队友是在周边
			if tValentinePart2_LevFlag["Team"][nTeamId] ~= nil then 
				local nMapFlag = tValentinePart2_LevFlag["Team"][nTeamId][1]
				local nFlag = tValentinePart2_LevFlag["Team"][nTeamId][2]
				tValentinePart2_LevFlag["Mapdoc"][nTeamId] = true
				if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayerMap</N>"..nMapFlag.."</N>"..nFlag) then
					if not tValentinePart2_LevFlag["Mapdoc"][nTeamId] then
						Sys_MsgBox(tValentinePart2_Text["Msg"]["TeamMateNotMap"])
						return
					end
				end
			end 
			
			if Task_AddStatistic(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,1,1,nValentinePart2_UserId) and Task_SetStcTimestamp(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,0,nValentinePart2_UserId) then 
				tValentinePart2_NpcIsFire[nValentinePart2_UserId] = tValentinePart2_NpcIsFire[nValentinePart2_UserId] or {}
				User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamMateAward</N>1".."</N>"..nTeamId.."</N>"..nValentinePart2_UserId)
				tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
				ValentinePart2_FireEffect(1,nValentinePart2_DynpcId,nValentinePart2_UserId)
				local tAward = RewardTemplate_NewRandom(tValentinePart2_Award["FireWork"],1,nValentinePart2_UserId)
				local Id= tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
				local Count= tonumber(CommonFunc_GetItemNum(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"])) 	

				if tValentinePart2_UserFindNpc ~= nil then 
					if tValentinePart2_UserFindNpc[nValentinePart2_UserId] ~= nil then
						local nUserFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][1]
						local nUserMapFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][2]
						
						ValentinePart2_HaveFindNpc[nValentinePart2_UserId] = ValentinePart2_HaveFindNpc[nValentinePart2_UserId] or{}
						ValentinePart2_HaveFindNpc[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
		
						Sys_MsgBox(string.format(tValentinePart2_Text["Msg"]["FireWorkSuccess"],Count),"</F>ValentinePart2_FindFireNpc</N>"..nUserFlag.."</N>"..nUserMapFlag.."</N>"..nValentinePart2_UserId.."</N>"..nValentinePart2_DynpcId)
					end 
				end 
			
				ValentinePart2_SetRank(Count,nValentinePart2_UserId)
			end 
			
		else
			
			if Task_AddStatistic(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,1,1,nValentinePart2_UserId) and Task_SetStcTimestamp(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,0,nValentinePart2_UserId) then 
				tValentinePart2_NpcIsFire[nValentinePart2_UserId] = tValentinePart2_NpcIsFire[nValentinePart2_UserId] or {}
				tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
				--光效
				ValentinePart2_FireEffect(1,nValentinePart2_DynpcId,nValentinePart2_UserId)
				
				local tAward = RewardTemplate_NewRandom(tValentinePart2_Award["FireWork"],1,nValentinePart2_UserId)
				local Id= tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
				local Count= tonumber(CommonFunc_GetItemNum(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"])) 	
				if tValentinePart2_UserFindNpc ~= nil then 
					if tValentinePart2_UserFindNpc[nValentinePart2_UserId] ~= nil then 
						local nUserFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][1]
						local nUserMapFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][2]
						
						ValentinePart2_HaveFindNpc[nValentinePart2_UserId] = ValentinePart2_HaveFindNpc[nValentinePart2_UserId] or{}
						ValentinePart2_HaveFindNpc[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
						-- if tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] == nil then 
							-- tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] = 2
						-- else
							-- tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] = tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] + 1 
						-- end 
				
						Sys_MsgBox(string.format(tValentinePart2_Text["Msg"]["FireWorkSuccess"],Count),"</F>ValentinePart2_FindFireNpc</N>"..nUserFlag.."</N>"..nUserMapFlag.."</N>"..nValentinePart2_UserId.."</N>"..nValentinePart2_DynpcId)
					end 
				end 
				ValentinePart2_SetRank(Count,nValentinePart2_UserId)
			end 
		end
	end

end 

--检测玩家物品
function ValentinePart2_CheckItem(nItemId)

	-- if not  Item_ChkMulItem(nItemId,nItemId,tValentinePart2_Data["ItemNum"]) then 
		local b , nIdex = ValentinePart2_CheckNeedItem(nItemId)
		if not b then 		
			return false
		end 
		-- return false
	-- end 
	
	return true
	
end 
--删除物品是否成功
function ValentinePart2_DelItem(nItemId)
	local bDelItem = false

		local b , nIdex = ValentinePart2_CheckNeedItem(nItemId)
		if b then 
			if tValentinePart2_Data["ItemCheck"][nItemId] ~= nil  then 
				if tValentinePart2_Data["ItemCheck"][nItemId][nIdex] ~= nil then 
					local nItemNum = tValentinePart2_Data["ItemCheck"][nItemId][nIdex][1]
					local nNeedItemId = tValentinePart2_Data["ItemCheck"][nItemId][nIdex][2]
					local nNeedItemNum = tValentinePart2_Data["ItemCheck"][nItemId][nIdex][3]
					if nIdex == 1 then 
						if Item_DelMulItem(nItemId,nItemId,nItemNum) then 
							bDelItem = true
							if tValentinePart2_Log["FireWork"][nItemId] ~= nil then 
								Sys_SaveEmoneyBuy(tValentinePart2_Log["FireWork"][nItemId])
							end 
						end 
					elseif nIdex == 4 then
						if Item_DelMulItem(nNeedItemId,nNeedItemId,nNeedItemNum) then 
							bDelItem = true
							if tValentinePart2_Log["FireWork"][nItemId] ~= nil then 
								Sys_SaveEmoneyBuy(tValentinePart2_Log["FireWork"][nItemId])
							end 
						end
					else
						if Item_DelMulItem(nItemId,nItemId,nItemNum) and  Item_DelMulItem(nNeedItemId,nNeedItemId,nNeedItemNum) then  		
							bDelItem = true
							if tValentinePart2_Log["FireWork"][nItemId] ~= nil then 
								Sys_SaveEmoneyBuy(tValentinePart2_Log["FireWork"][nItemId])
							end 
						end 
					end 
	
				end 
			end 
		end 
		
		
	-- else
		-- local sDelItemLog = string.format(tValentinePart2_Log["DelItem"],nItemId,tValentinePart2_Data["ItemNum"])
		-- Sys_SaveActionFestivalLog(sDelItemLog)
		-- Sys_SaveEmoneyBuy(tValentinePart2_Log["FireWork"][nItemId])
		-- b = true
	-- end 
	return bDelItem
end 

--扣除天石
function ValentinePart2_CostCps(nEmoney)

	if not User_AddEMoney(-nEmoney) then

		return false
	end

	Sys_SaveEmoneyBuy(string.format(tValentinePart2_Log["EMoneyLog"],nEmoney,nEmoney))
	return true
end 


function ValentinePart2_CostChocolate(nNpcId,nItemId,nFlag)
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	local nValentinePart2_UserId = Get_UserId()
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"],nValentinePart2_UserId) then 
		return
	end 
	local nValentinePart2_DynpcId = Get_NpcId()

	if tValentinePart2_NpcIsFire ~= nil then 
		if tValentinePart2_NpcIsFire[nValentinePart2_UserId] ~= nil then 
			if tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] ~= nil then 
				if tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] == 1 then 
					-- User_TalkChannel2005("燃放过了")
					return
				end 
			end 
		end 
	end 
	
	-- 1代表花费物品  2代表花费天石
	if nFlag == 1 then 
		--判断物品
		if not ValentinePart2_CheckItem(nItemId) then 
			Sys_MsgBox(tValentinePart2_Text["Msg"]["NoItem"][nItemId])
			return
		end 
	else
		--判断天石
		local nUserEMoney = Get_UserEMoney()
		
		if nUserEMoney < nItemId then
			Sys_MsgBox(tValentinePart2_Text["Msg"]["NoMoney"])
			return
		end
	end 

	--判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentinePart2_Award["FireWork"],nItemId,nValentinePart2_UserId) then 
		User_TalkChannel2005(tValentinePart2_Text["Sys"]["NoBag"])
		return
	end

	local nValentinePart2_FireEnentType = tValentinePart2_Stc["EventType"][4]
	local nValentinePart2_FireDataType = tValentinePart2_Stc["DataType"][4]
	ValentinePart2_RetTask(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
	local nValentinePart2_FireDataValue = Get_UserStatisticValue(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
	if nValentinePart2_FireDataValue >= tValentinePart2_Stc["Limit"][4] then 
		User_TalkChannel2005(tValentinePart2_Text["Sys"]["AllNumLimit"])
		return
	end 

	--判断是否组队
	if Get_UserTeamNumbers(nValentinePart2_UserId) > 0 then  
		
		local nTeamId = Get_UserTeamId()
		tValentinePart2_LevFlag["BagSpace"][nTeamId] = true
		if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayeBag</N>"..nItemId) then
			if not tValentinePart2_LevFlag["BagSpace"][nTeamId] then
				User_TalkChannel2005(tValentinePart2_Text["Sys"]["TeamNoBag"])
				return
			end
		end
		--只有队长才能点燃
		if not User_IsTeamLeader(nValentinePart2_UserId) then
			Sys_MsgBox(tValentinePart2_Text["Msg"]["NotLeader"])
			return
		end
		--判断队友是在周边
		if tValentinePart2_LevFlag["Team"][nTeamId] ~= nil then 
			local nMapFlag = tValentinePart2_LevFlag["Team"][nTeamId][1]
			local nTeamFlag = tValentinePart2_LevFlag["Team"][nTeamId][2]
			tValentinePart2_LevFlag["Mapdoc"][nTeamId] = true
			if User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamPlayerMap</N>"..nMapFlag.."</N>"..nTeamFlag) then
				if not tValentinePart2_LevFlag["Mapdoc"][nTeamId] then
					Sys_MsgBox(tValentinePart2_Text["Msg"]["TeamMateNotMap"])
					return
				end
			end
		end 
		if nFlag == 1 then 
			if not ValentinePart2_DelItem(nItemId) then 
				return
			end 
		else
			if not ValentinePart2_CostCps(nItemId) then 
				return
			end 	
		end 
		if Task_AddStatistic(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,1,1,nValentinePart2_UserId) and Task_SetStcTimestamp(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,0,nValentinePart2_UserId) then 
			tValentinePart2_NpcIsFire[nValentinePart2_UserId] = tValentinePart2_NpcIsFire[nValentinePart2_UserId] or {}
			User_TeamExeFuncByTeamer(3,"ValentinePart2_TeamMateAward</N>"..nItemId.."</N>"..nTeamId.."</N>"..nValentinePart2_UserId)
			
			tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
			ValentinePart2_FireEffect(nItemId,nValentinePart2_DynpcId,nValentinePart2_UserId)
			local tAward = RewardTemplate_NewRandom(tValentinePart2_Award["FireWork"],nItemId,nValentinePart2_UserId)
			local Id= tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
			local Count= tonumber(CommonFunc_GetItemNum(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"])) 	
			
			if tValentinePart2_UserFindNpc ~= nil then 
				if tValentinePart2_UserFindNpc[nValentinePart2_UserId] ~= nil then 
					local nUserFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][1]
					local nUserMapFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][2]
					ValentinePart2_HaveFindNpc[nValentinePart2_UserId] = ValentinePart2_HaveFindNpc[nValentinePart2_UserId] or{}
					ValentinePart2_HaveFindNpc[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
					-- if tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] == nil then 
						-- tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] = 2
					-- else
						-- tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] = tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] + 1 
					-- end 
	
					Sys_MsgBox(string.format(tValentinePart2_Text["Msg"]["FireWorkSuccess"],Count),"</F>ValentinePart2_FindFireNpc</N>"..nUserFlag.."</N>"..nUserMapFlag.."</N>"..nValentinePart2_UserId.."</N>"..nValentinePart2_DynpcId)
				end 
			end 
			ValentinePart2_SetRank(Count,nValentinePart2_UserId)
			
		end 
			
	else
		if nFlag == 1 then 
			if not ValentinePart2_DelItem(nItemId) then 
				return
			end 
		else

			if not ValentinePart2_CostCps(nItemId) then 
				return
			end 
		end 

		if Task_AddStatistic(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,1,1,nValentinePart2_UserId) and Task_SetStcTimestamp(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,0,nValentinePart2_UserId) then 
			
			tValentinePart2_NpcIsFire[nValentinePart2_UserId] = tValentinePart2_NpcIsFire[nValentinePart2_UserId] or {}
			tValentinePart2_NpcIsFire[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
			ValentinePart2_FireEffect(nItemId,nValentinePart2_DynpcId,nValentinePart2_UserId)
			local tAward = RewardTemplate_NewRandom(tValentinePart2_Award["FireWork"],nItemId,nValentinePart2_UserId)
			local Id= tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
			local Count= tonumber(CommonFunc_GetItemNum(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"])) 	

			if tValentinePart2_UserFindNpc ~= nil then 
				if tValentinePart2_UserFindNpc[nValentinePart2_UserId] ~= nil then 
					local nUserFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][1]
					local nUserMapFlag = tValentinePart2_UserFindNpc[nValentinePart2_UserId][2]
					ValentinePart2_HaveFindNpc[nValentinePart2_UserId] = ValentinePart2_HaveFindNpc[nValentinePart2_UserId] or{}
					ValentinePart2_HaveFindNpc[nValentinePart2_UserId][nValentinePart2_DynpcId] = 1
					-- if tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] == nil then 
						-- tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] = 2
					-- else
						-- tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] = tValentinePart2_UserFindNpcIndex[nValentinePart2_UserId] + 1 
					-- end 
	
					Sys_MsgBox(string.format(tValentinePart2_Text["Msg"]["FireWorkSuccess"],Count),"</F>ValentinePart2_FindFireNpc</N>"..nUserFlag.."</N>"..nUserMapFlag.."</N>"..nValentinePart2_UserId.."</N>"..nValentinePart2_DynpcId)
				end 
			end 
			
			
			ValentinePart2_SetRank(Count,nValentinePart2_UserId)
		end 
	end	

	--播光效
	-- local sSzObj = tValentinePart2_Effect[nItemId]["SzObj"]
	-- local sEffect = tValentinePart2_Effect[nItemId]["Effect"]
	-- User_EffectAdd(sSzObj,sEffect,nValentinePart2_UserId)	
end 

--上线触发
function ValentinePart2_Login()
	local nUserId = Get_UserId()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ValentinePart2"]["ActTime"]) then
		return
	end
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) then
		return
	end
	
	local nEvent_5 = tValentinePart2_Stc["EventType"][5]
	local nType_5 = tValentinePart2_Stc["DataType"][5]
	
	local nEvent_6 = tValentinePart2_Stc["EventType"][6]
	local nType_6 = tValentinePart2_Stc["DataType"][6]
	
	Task_SetStatistic(nEvent_5,nType_5,0,1,nUserId)
	Task_SetStcTimestamp(nEvent_5,nType_5,0,nUserId)
	
	Task_SetStatistic(nEvent_6,nType_6,0,1,nUserId)
	Task_SetStcTimestamp(nEvent_6,nType_6,0,nUserId)
	
end 

function ValentinePart2_CostWithCps(nNpcId,nFlag,nEmoney)
	local nEvent = tValentinePart2_Stc["EventType"][nFlag]
	local nType = tValentinePart2_Stc["DataType"][nFlag]
	local nUserId = Get_UserId()
	local nValentinePart2_DataValue = Get_UserStatisticValue(nEvent,nType,nUserId)
	if 	nValentinePart2_DataValue > 0 then 
		if nEmoney == 27 then 
			ValentinePart2_CostChocolate(25878,27,2)
		else
			ValentinePart2_CostChocolate(25878,270,2)
		end 
	else	
		if nEmoney == 27 then 
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		else
			LinkNpcGossipFunc_New(nNpcId,"3-2")
		end 
	end 
end 


--屏蔽二次确认 
function ValentinePart2_CancelSure(nNpcId,nFlag)
	local nUserId = Get_UserId()

	local nEvent = tValentinePart2_Stc["EventType"][nFlag]
	local nType = tValentinePart2_Stc["DataType"][nFlag]
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	LinkNpcGossipFunc_New(nNpcId,"1-1")

end 

function ValentinePart2_UseHornorRing(nItemId)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then 
		return
	end 
	--判断是否有无光环
	if User_IsExistHalo(nUserId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		LinkItemGossipFunc_New(nItemId,"1-2")
	end
	
end 
function ValentinePart2_TakeOffRing(nItemId)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then 
		return
	end 
	if User_IsExistHalo(nUserId) then
		--删除光环
		User_DelHalo()
	end
	
end 

function ValentinePart2_TakeUpRing(nItemId)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then 
		return
	end 
	if User_IsExistHalo(nUserId) then
		--删除光环
		User_DelHalo()
	end
	local nStatus = tValentinePart2_RingType[nItemId]["Status"]
	local nPower = tValentinePart2_RingType[nItemId]["Power"]
	local nSecs  = tValentinePart2_RingType[nItemId]["Secs"]
	local nTimes = tValentinePart2_RingType[nItemId]["Times"]
	local nEndTime = tValentinePart2_RingType[nItemId]["EndTime"]
	local nRecordable = tValentinePart2_RingType[nItemId]["Recordable"]
	local nRemainTime = tValentinePart2_RingType[nItemId]["RemainTime"]
	
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,1,0,nUserId)	
end 




----------------------------------NPC部分---------------------------------------------
-- 25836,'瓦伦丁',0002,51290,

tNpcFace[5129] = 71
tNpcGossip[25836]= tNpcGossip[25836] or DefaultNpc:new{}
tNpcGossip[25836]["OptionHidden"] = 1

--活动时间中 等级不足
tNpcGossip[25836]["Text1-1"] = {111,112,113,114}
tNpcGossip[25836]["Text111"] = tValentinePart2_Text[25836]["Text111"]
tNpcGossip[25836]["Text112"] = tValentinePart2_Text[25836]["Text112"]
tNpcGossip[25836]["Text113"] = tValentinePart2_Text[25836]["Text113"]
tNpcGossip[25836]["Text114"] = tValentinePart2_Text[25836]["Text114"]

tNpcGossip[25836]["ChkFunc1-1"]= function()
	
	return Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"])
end

tNpcGossip[25836]["tOption1-1"] = {111}
tNpcGossip[25836]["Option111"] = tValentinePart2_Text[25836]["Option111"]

--活动时间中等级充足 未完成每日任务
tNpcGossip[25836]["Text1-2"] = {121,122}
tNpcGossip[25836]["Text121"] = tValentinePart2_Text[25836]["Text121"]
tNpcGossip[25836]["Text122"] = tValentinePart2_Text[25836]["Text122"]

tNpcGossip[25836]["ChkFunc1-2"]= function()
	
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
		
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

			return true
		end
	end 
end

tNpcGossip[25836]["tOption1-2"] = {121}
tNpcGossip[25836]["Option121"] = tValentinePart2_Text[25836]["Option121"]
tNpcGossip[25836]["OptionPoint121"] = "2-2"

--活动时间中等级充足 完成每日任务
tNpcGossip[25836]["Text1-3"] = {131,132,133}
tNpcGossip[25836]["Text131"] = tValentinePart2_Text[25836]["Text131"]
tNpcGossip[25836]["Text132"] = tValentinePart2_Text[25836]["Text132"]
tNpcGossip[25836]["Text133"] = tValentinePart2_Text[25836]["Text133"]

tNpcGossip[25836]["ChkFunc1-3"]= function()
	--判断任务有没有完成
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
	
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0 then 
			return true
		end
	end 
end

tNpcGossip[25836]["tOption1-3"] = {131}
tNpcGossip[25836]["Option131"] = tValentinePart2_Text[25836]["Option131"]
-- tNpcGossip[25836]["Option132"] = tValentinePart2_Text[25836]["Option132"]
-- tNpcGossip[25836]["OptionPoint132"] = "2-1"


--活动时间后
tNpcGossip[25836]["Text1-4"] = {141,142}
tNpcGossip[25836]["Text141"] = tValentinePart2_Text[25836]["Text141"]
tNpcGossip[25836]["Text142"] = tValentinePart2_Text[25836]["Text142"]

tNpcGossip[25836]["ChkFunc1-4"]= function()
	
	return not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) 
end

tNpcGossip[25836]["tOption1-4"] = {141}
tNpcGossip[25836]["Option141"] = tValentinePart2_Text[25836]["Option141"]



--排行榜
tNpcGossip[25836]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
tNpcGossip[25836]["Text211"] = tValentinePart2_Text[25836]["Text211"]
tNpcGossip[25836]["Text212"] = tValentinePart2_Text[25836]["Text212"]
tNpcGossip[25836]["Text213"] = tValentinePart2_Text[25836]["Text213"]
tNpcGossip[25836]["Text214"] = tValentinePart2_Text[25836]["Text214"]
tNpcGossip[25836]["Text215"] = tValentinePart2_Text[25836]["Text215"]
tNpcGossip[25836]["Text216"] = tValentinePart2_Text[25836]["Text216"]
tNpcGossip[25836]["Text217"] = tValentinePart2_Text[25836]["Text217"]
tNpcGossip[25836]["Text218"] = tValentinePart2_Text[25836]["Text218"]
tNpcGossip[25836]["Text219"] = tValentinePart2_Text[25836]["Text219"]
tNpcGossip[25836]["Text2110"] = tValentinePart2_Text[25836]["Text2110"]
tNpcGossip[25836]["Text2111"] = tValentinePart2_Text[25836]["Text2111"]
tNpcGossip[25836]["Text2112"] = tValentinePart2_Text[25836]["Text2112"]
tNpcGossip[25836]["Text2113"] = tValentinePart2_Text[25836]["Text2113"]


tNpcGossip[25836]["ChkFunc2-1"]= function()

	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][2]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][2]
	local nValentinePart2_UserId = Get_UserId()
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	
	local tValentinePart2_Rank = RankingFunc_GetNowData(25836)
	local bValentinePart2_Flag = false
	local nValentinePart2_Index = 0
	for i=1,10 do
	
		if tValentinePart2_Rank[i] == nil then
	
			tNpcGossip[25836]["Text21"..i+1] = Sys_Alignment(tValentinePart2_Text[25836]["Text21"..i+1],5,tValentinePart2_Text["NoData"],30,tValentinePart2_Text["NoData"],50) 
		elseif tValentinePart2_Rank[i]["Score"] >= 0 then
		
			local nScore = tValentinePart2_Rank[i]["Score"]
			local sUserName = tValentinePart2_Rank[i]["UserName"]
			local nRank_UserId = tValentinePart2_Rank[i]["UserId"]
			if nValentinePart2_UserId == nRank_UserId then 
				bValentinePart2_Flag = true
				nValentinePart2_Index = i
			end 
			tNpcGossip[25836]["Text21"..i+1] = Sys_Alignment(tValentinePart2_Text[25836]["Text21"..i+1],5,tostring(nScore),30,Sys_StringGSubTip(sUserName),47)
		
		end

	end
	--判断玩家是否上榜
	if bValentinePart2_Flag then
		tNpcGossip[25836]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
		tNpcGossip[25836]["Text2112"] = string.format(tValentinePart2_Text[25836]["Text2112"],nValentinePart2_DataValue,nValentinePart2_Index)
	else
		tNpcGossip[25836]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2113}
		tNpcGossip[25836]["Text2113"] = string.format(tValentinePart2_Text[25836]["Text2113"],nValentinePart2_DataValue)
	end 
	if ValentinePart2_CheckReward(nValentinePart2_UserId) then 
		tNpcGossip[25836]["Option211"] = tValentinePart2_Text[25836]["Option211"]
	else
		tNpcGossip[25836]["Option211"] = tValentinePart2_Text[25836]["Option2111"]
	end 
	return true
end

tNpcGossip[25836]["tOption2-1"] = {211,212,213}
tNpcGossip[25836]["Option211"] = tValentinePart2_Text[25836]["Option211"]
tNpcGossip[25836]["Option212"] = tValentinePart2_Text[25836]["Option212"]
tNpcGossip[25836]["Option213"] = tValentinePart2_Text[25836]["Option213"]
tNpcGossip[25836]["OptionPoint211"] = "3-1"
tNpcGossip[25836]["OptionPoint212"] = "3-2"
tNpcGossip[25836]["OptionFunc213"] = "ValentinePart2_Web</N>25836"


tNpcGossip[25836]["Text2-2"] = {221,222}
tNpcGossip[25836]["Text221"] = tValentinePart2_Text[25836]["Text221"]
tNpcGossip[25836]["Text222"] = tValentinePart2_Text[25836]["Text222"]

tNpcGossip[25836]["tOption2-2"] = {221}
tNpcGossip[25836]["Option221"] = tValentinePart2_Text[25836]["Option221"]
tNpcGossip[25836]["OptionFunc221"] = "ValentinePart2_FindSaviya</N>25837"



--领取真爱阶段好礼
tNpcGossip[25836]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111}
tNpcGossip[25836]["Text311"] = tValentinePart2_Text[25836]["Text311"]
tNpcGossip[25836]["Text312"] = tValentinePart2_Text[25836]["Text312"]
tNpcGossip[25836]["Text313"] = tValentinePart2_Text[25836]["Text313"]
tNpcGossip[25836]["Text314"] = tValentinePart2_Text[25836]["Text314"]
tNpcGossip[25836]["Text315"] = tValentinePart2_Text[25836]["Text315"]
tNpcGossip[25836]["Text316"] = tValentinePart2_Text[25836]["Text316"]
tNpcGossip[25836]["Text317"] = tValentinePart2_Text[25836]["Text317"]
tNpcGossip[25836]["Text318"] = tValentinePart2_Text[25836]["Text318"]
tNpcGossip[25836]["Text319"] = tValentinePart2_Text[25836]["Text319"]
tNpcGossip[25836]["Text3110"] = tValentinePart2_Text[25836]["Text3110"]
tNpcGossip[25836]["Text3111"] = tValentinePart2_Text[25836]["Text3111"]

tNpcGossip[25836]["ChkFunc3-1"]= function()
	local nValentinePart2_UserId = Get_UserId()
	if ValentinePart2_CheckReward(nValentinePart2_UserId) then 
		tNpcGossip[25836]["Option311"] = tValentinePart2_Text[25836]["Option311"]
	else
		tNpcGossip[25836]["Option311"] = tValentinePart2_Text[25836]["Option3111"]
	end 
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][3]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][3]
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == "" then 
		for i = 1 ,8 do 
			tNpcGossip[25836]["Text31"..i+2] = string.format(tValentinePart2_Text[25836]["Text31"..i+2],"0xffffff00")	
		end 
	elseif nValentinePart2_DataValue <= 8 then 
		for i = 1 ,nValentinePart2_DataValue do
			tNpcGossip[25836]["Text31"..i+2] = string.format(tValentinePart2_Text[25836]["Text31"..i+2],"0xff708090")
		end 
		if nValentinePart2_DataValue ~= 8 then 
			for i = 1,8-nValentinePart2_DataValue do
				tNpcGossip[25836]["Text31"..i+2+nValentinePart2_DataValue] = string.format(tValentinePart2_Text[25836]["Text31"..i+2+nValentinePart2_DataValue],"0xffffff00")
			end 
		end 
	else
		for i = 1 ,8 do 
			tNpcGossip[25836]["Text31"..i+2] = string.format(tValentinePart2_Text[25836]["Text31"..i+2],"0xff708090")	
		end 
	end
	
	return true
end

tNpcGossip[25836]["tOption3-1"] = {311}
tNpcGossip[25836]["Option311"] = tValentinePart2_Text[25836]["Option311"]
tNpcGossip[25836]["OptionFunc311"] = "ValentinePart2_GetRaward</N>25836"


--查看本服奖励
tNpcGossip[25836]["Text3-2"] = {321,322,323,324,325,326}
tNpcGossip[25836]["Text321"] = tValentinePart2_Text[25836]["Text321"]
tNpcGossip[25836]["Text322"] = tValentinePart2_Text[25836]["Text322"]
tNpcGossip[25836]["Text323"] = tValentinePart2_Text[25836]["Text323"]
tNpcGossip[25836]["Text324"] = tValentinePart2_Text[25836]["Text324"]
tNpcGossip[25836]["Text325"] = tValentinePart2_Text[25836]["Text325"]
tNpcGossip[25836]["Text326"] = tValentinePart2_Text[25836]["Text326"]

tNpcGossip[25836]["ChkFunc3-2"]= function()
	return true
end

tNpcGossip[25836]["tOption3-2"] = {321,322,323}
tNpcGossip[25836]["Option321"] = tValentinePart2_Text[25836]["Option321"]
tNpcGossip[25836]["OptionPoint321"] = "2-1"


-- 25837,'赛维娅',0002,51300,
tNpcFace[5130] = 189
tNpcGossip[25837]= tNpcGossip[25837] or DefaultNpc:new{}
tNpcGossip[25837]["OptionHidden"] = 1

--活动时间中 等级不足
tNpcGossip[25837]["Text1-1"] = {111,112,113}
tNpcGossip[25837]["Text111"] = tValentinePart2_Text[25837]["Text111"]
tNpcGossip[25837]["Text112"] = tValentinePart2_Text[25837]["Text112"]
tNpcGossip[25837]["Text113"] = tValentinePart2_Text[25837]["Text113"]

tNpcGossip[25837]["ChkFunc1-1"]= function()
	
	return Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"])
end

tNpcGossip[25837]["tOption1-1"] = {111}
tNpcGossip[25837]["Option111"] = tValentinePart2_Text[25837]["Option111"]

--活动时间中等级充足 未完成每日任务 首次对白
tNpcGossip[25837]["Text1-2"] = {121,122}
tNpcGossip[25837]["Text121"] = tValentinePart2_Text[25837]["Text121"]
tNpcGossip[25837]["Text122"] = tValentinePart2_Text[25837]["Text122"]

tNpcGossip[25837]["ChkFunc1-2"]= function()
	
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
		if ValDayFW_GetStcValue(1) == 1 then
			local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
			local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
			local nValentinePart2_FistEnentType = tValentinePart2_Stc["EventType"]["Fist"] 
			local nValentinePart2_FistDataType = tValentinePart2_Stc["DataType"]["Fist"]
			local nValentinePart2_UserId = Get_UserId()
			ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
			local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
			local nValentinePart2_FistDataValue = Get_UserStatisticValue(nValentinePart2_FistEnentType,nValentinePart2_FistDataType,nValentinePart2_UserId)
			
			if nValentinePart2_DataValue == nil or nValentinePart2_DataValue == 0 then 
				if nValentinePart2_FistDataValue == 0 or nValentinePart2_FistDataValue == nil then 
					local nOption = ValentinePart2_CheckTime()
					tNpcGossip[25837]["Option121"] =  string.format(tValentinePart2_Text[25837]["Option121"],tValentinePart2_Text["PlaceName"][nOption])
					tNpcGossip[25837]["OptionFunc121"] =  string.format("ValentinePart2_GoLovePlace</N>25837</N>%s</N>%s",nOption,1)
					return true
				end 
			end
		end 
	end 
end

tNpcGossip[25837]["tOption1-2"] = {121}
-- tNpcGossip[25837]["Option121"] = tValentinePart2_Text[25837]["Option121"]
-- tNpcGossip[25837]["OptionFunc121"] = "ValentinePart2_GoLovePlace</N>25837</N>"..ValentinePart2_CheckTime()

--活动时间中等级充足 未完成每日任务 之后对白
tNpcGossip[25837]["Text1-3"] = {131,132,133}
tNpcGossip[25837]["Text131"] = tValentinePart2_Text[25837]["Text131"]
tNpcGossip[25837]["Text132"] = tValentinePart2_Text[25837]["Text132"]
tNpcGossip[25837]["Text133"] = tValentinePart2_Text[25837]["Text133"]

tNpcGossip[25837]["ChkFunc1-3"]= function()
	--判断任务有没有完成
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
		if ValDayFW_GetStcValue(1) == 1 then
			local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
			local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
			local nValentinePart2_UserId = Get_UserId()
			local nValentinePart2_FistEnentType = tValentinePart2_Stc["EventType"]["Fist"] 
			local nValentinePart2_FistDataType = tValentinePart2_Stc["DataType"]["Fist"]
			ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType)
			local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
			local nValentinePart2_FistDataValue = Get_UserStatisticValue(nValentinePart2_FistEnentType,nValentinePart2_FistDataType,nValentinePart2_UserId)
			
			if nValentinePart2_DataValue == nil or nValentinePart2_DataValue == 0 then 
				if nValentinePart2_FistDataValue > 0 then 
					local nOption = ValentinePart2_CheckTime()
					tNpcGossip[25837]["Option131"] = string.format(tValentinePart2_Text[25837]["Option131"],tValentinePart2_Text["PlaceName"][nOption])
					tNpcGossip[25837]["OptionFunc131"] =  string.format("ValentinePart2_GoLovePlace</N>25837</N>%s</N>%s",nOption,1)
					return true
				end 
			end
		end 
	end 
end

tNpcGossip[25837]["tOption1-3"] = {131}
-- tNpcGossip[25837]["Option131"] = tValentinePart2_Text[25837]["Option131"]
-- tNpcGossip[25837]["OptionFunc131"] = "ValentinePart2_GoLovePlace</N>25837</N>"..ValentinePart2_CheckTime()


--活动时间中等级充足 完成每日任务 
tNpcGossip[25837]["Text1-4"] = {141,142,143}
tNpcGossip[25837]["Text141"] = tValentinePart2_Text[25837]["Text141"]
tNpcGossip[25837]["Text142"] = tValentinePart2_Text[25837]["Text142"]
tNpcGossip[25837]["Text143"] = tValentinePart2_Text[25837]["Text143"]


tNpcGossip[25837]["ChkFunc1-4"]= function()
	
	--判断任务有没有完成  
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["RankNpcTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
	
		if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
			if ValDayFW_GetStcValue(1) == 1 then
				local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
				local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
				local nValentinePart2_UserId = Get_UserId()
				ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType)
				local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
				local nValentinePart2_TimeFlag = ValentinePart2_CheckTime()
				local nValentinePart2_Option = 141
				if tValentinePart2_Data["OptionChoose"][nValentinePart2_TimeFlag] ~= nil then
					nValentinePart2_Option = tValentinePart2_Data["OptionChoose"][nValentinePart2_TimeFlag]
				end 
				
				-- tNpcGossip[25837]["tOption1-4"] = {nValentinePart2_Option,149,1410,148}
				tNpcGossip[25837]["tOption1-4"] = {nValentinePart2_Option,149,148}
				if ValentinePart2_CheckReward(nValentinePart2_UserId) then 
					tNpcGossip[25837]["Option149"] = tValentinePart2_Text[25836]["Option211"]
				else
					tNpcGossip[25837]["Option149"] = tValentinePart2_Text[25836]["Option2111"]
				end 
				if nValentinePart2_DataValue > 0 then 
					return true
				end
			end 
		else
			tNpcGossip[25837]["tOption1-4"] = {1410}
			return true
		end 
	
	end 
end

tNpcGossip[25837]["tOption1-4"] = {141,149,148}
tNpcGossip[25837]["Option141"] = tValentinePart2_Text[25837]["Option141"]
tNpcGossip[25837]["Option142"] = tValentinePart2_Text[25837]["Option142"]
tNpcGossip[25837]["Option143"] = tValentinePart2_Text[25837]["Option143"]
tNpcGossip[25837]["Option144"] = tValentinePart2_Text[25837]["Option144"]
tNpcGossip[25837]["Option145"] = tValentinePart2_Text[25837]["Option145"]
tNpcGossip[25837]["Option146"] = tValentinePart2_Text[25837]["Option146"]
tNpcGossip[25837]["Option147"] = tValentinePart2_Text[25837]["Option147"]
tNpcGossip[25837]["Option148"] = tValentinePart2_Text[25837]["Option148"]

tNpcGossip[25837]["Option149"] = tValentinePart2_Text[25836]["Option211"]
tNpcGossip[25837]["Option1410"] = tValentinePart2_Text[25836]["Option132"]

tNpcGossip[25837]["OptionFunc141"] = "ValentinePart2_GoLovePlace</N>25837</N>1</N>2"
tNpcGossip[25837]["OptionFunc142"] = "ValentinePart2_GoLovePlace</N>25837</N>2</N>2"
tNpcGossip[25837]["OptionFunc143"] = "ValentinePart2_GoLovePlace</N>25837</N>3</N>2"
tNpcGossip[25837]["OptionFunc144"] = "ValentinePart2_GoLovePlace</N>25837</N>4</N>2"
tNpcGossip[25837]["OptionFunc145"] = "ValentinePart2_GoLovePlace</N>25837</N>5</N>2"
tNpcGossip[25837]["OptionFunc146"] = "ValentinePart2_GoLovePlace</N>25837</N>6</N>2"
tNpcGossip[25837]["OptionFunc147"] = "ValentinePart2_GoLovePlace</N>25837</N>7</N>2"
tNpcGossip[25837]["OptionFunc148"] = "ValDayFW_SubmitCho"
tNpcGossip[25837]["OptionPoint149"] = "3-1"
tNpcGossip[25837]["OptionPoint1410"] = "2-1"


--活动时间后
tNpcGossip[25837]["Text1-5"] = {151,152}
tNpcGossip[25837]["Text151"] = tValentinePart2_Text[25837]["Text151"]
tNpcGossip[25837]["Text152"] = tValentinePart2_Text[25837]["Text152"]

tNpcGossip[25837]["ChkFunc1-5"]= function()
	
	return not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["RankNpcTime"]) 
end

tNpcGossip[25837]["tOption1-5"] = {151}
tNpcGossip[25837]["Option151"] = tValentinePart2_Text[25837]["Option151"]

--未完成唤醒任务
tNpcGossip[25837]["Text1-6"] = {161,162,163}
tNpcGossip[25837]["Text161"] = tValentinePart2_Text[25837]["Text161"]
tNpcGossip[25837]["Text162"] = tValentinePart2_Text[25837]["Text162"]
tNpcGossip[25837]["Text163"] = tValentinePart2_Text[25837]["Text163"]

tNpcGossip[25837]["ChkFunc1-6"]= function()
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 

		return ValDayFW_GetStcValue(1) == 0
	end
end

tNpcGossip[25837]["tOption1-6"] = {161}
tNpcGossip[25837]["Option161"] = tValentinePart2_Text[25837]["Option161"]
tNpcGossip[25837]["OptionFunc161"] = "NpcPosition_PathFind</N>25846"


--排行榜
tNpcGossip[25837]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
tNpcGossip[25837]["Text211"] = tValentinePart2_Text[25836]["Text211"]
tNpcGossip[25837]["Text212"] = tValentinePart2_Text[25836]["Text212"]
tNpcGossip[25837]["Text213"] = tValentinePart2_Text[25836]["Text213"]
tNpcGossip[25837]["Text214"] = tValentinePart2_Text[25836]["Text214"]
tNpcGossip[25837]["Text215"] = tValentinePart2_Text[25836]["Text215"]
tNpcGossip[25837]["Text216"] = tValentinePart2_Text[25836]["Text216"]
tNpcGossip[25837]["Text217"] = tValentinePart2_Text[25836]["Text217"]
tNpcGossip[25837]["Text218"] = tValentinePart2_Text[25836]["Text218"]
tNpcGossip[25837]["Text219"] = tValentinePart2_Text[25836]["Text219"]
tNpcGossip[25837]["Text2110"] = tValentinePart2_Text[25836]["Text2110"]
tNpcGossip[25837]["Text2111"] = tValentinePart2_Text[25836]["Text2111"]
tNpcGossip[25837]["Text2112"] = tValentinePart2_Text[25836]["Text2112"]
tNpcGossip[25837]["Text2113"] = tValentinePart2_Text[25836]["Text2113"]


tNpcGossip[25837]["ChkFunc2-1"]= function()

	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][2]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][2]
	local nValentinePart2_UserId = Get_UserId()
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	
	local tValentinePart2_Rank = RankingFunc_GetNowData(25836)
	local bValentinePart2_Flag = false
	local nValentinePart2_Index = 0
	for i=1,10 do
	
		if tValentinePart2_Rank[i] == nil then
	
			tNpcGossip[25837]["Text21"..i+1] = Sys_Alignment(tValentinePart2_Text[25836]["Text21"..i+1],5,tValentinePart2_Text["NoData"],30,tValentinePart2_Text["NoData"],50) 
		elseif tValentinePart2_Rank[i]["Score"] >= 0 then
		
			local nScore = tValentinePart2_Rank[i]["Score"]
			local sUserName = tValentinePart2_Rank[i]["UserName"]
			local nRank_UserId = tValentinePart2_Rank[i]["UserId"]
			if nValentinePart2_UserId == nRank_UserId then 
				bValentinePart2_Flag = true
				nValentinePart2_Index = i
			end 
			tNpcGossip[25837]["Text21"..i+1] = Sys_Alignment(tValentinePart2_Text[25836]["Text21"..i+1],5,tostring(nScore),30,Sys_StringGSubTip(sUserName),47)
		
		end

	end
	--判断玩家是否上榜
	if bValentinePart2_Flag then
		tNpcGossip[25837]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
		tNpcGossip[25837]["Text2112"] = string.format(tValentinePart2_Text[25836]["Text2112"],nValentinePart2_DataValue,nValentinePart2_Index)
	else
		tNpcGossip[25837]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2113}
		tNpcGossip[25837]["Text2113"] = string.format(tValentinePart2_Text[25836]["Text2113"],nValentinePart2_DataValue)
	end 

	return true
end

tNpcGossip[25837]["tOption2-1"] = {212,213}
tNpcGossip[25837]["Option212"] = tValentinePart2_Text[25836]["Option212"]
tNpcGossip[25837]["Option213"] = tValentinePart2_Text[25836]["Option213"]
tNpcGossip[25837]["OptionPoint212"] = "3-2"
tNpcGossip[25837]["OptionFunc213"] = "ValentinePart2_Web</N>25837"

--领取真爱阶段好礼
tNpcGossip[25837]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111}
tNpcGossip[25837]["Text311"] = tValentinePart2_Text[25836]["Text311"]
tNpcGossip[25837]["Text312"] = tValentinePart2_Text[25836]["Text312"]
tNpcGossip[25837]["Text313"] = tValentinePart2_Text[25836]["Text313"]
tNpcGossip[25837]["Text314"] = tValentinePart2_Text[25836]["Text314"]
tNpcGossip[25837]["Text315"] = tValentinePart2_Text[25836]["Text315"]
tNpcGossip[25837]["Text316"] = tValentinePart2_Text[25836]["Text316"]
tNpcGossip[25837]["Text317"] = tValentinePart2_Text[25836]["Text317"]
tNpcGossip[25837]["Text318"] = tValentinePart2_Text[25836]["Text318"]
tNpcGossip[25837]["Text319"] = tValentinePart2_Text[25836]["Text319"]
tNpcGossip[25837]["Text3110"] = tValentinePart2_Text[25836]["Text3110"]
tNpcGossip[25837]["Text3111"] = tValentinePart2_Text[25836]["Text3111"]

tNpcGossip[25837]["ChkFunc3-1"]= function()
	local nValentinePart2_UserId = Get_UserId()
	if ValentinePart2_CheckReward(nValentinePart2_UserId) then 
		tNpcGossip[25837]["Option311"] = tValentinePart2_Text[25836]["Option311"]
	else
		tNpcGossip[25837]["Option311"] = tValentinePart2_Text[25836]["Option3111"]
	end 
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][3]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][3]
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == "" then 
		for i = 1 ,8 do 
			tNpcGossip[25837]["Text31"..i+2] = string.format(tValentinePart2_Text[25836]["Text31"..i+2],"0xffffff00")	
		end 
	elseif nValentinePart2_DataValue <= 8 then 
		for i = 1 ,nValentinePart2_DataValue do
			tNpcGossip[25837]["Text31"..i+2] = string.format(tValentinePart2_Text[25836]["Text31"..i+2],"0xff708090")
		end 
		if nValentinePart2_DataValue ~= 8 then 
			for i = 1,8-nValentinePart2_DataValue do
				tNpcGossip[25837]["Text31"..i+2+nValentinePart2_DataValue] = string.format(tValentinePart2_Text[25836]["Text31"..i+2+nValentinePart2_DataValue],"0xffffff00")
			end 
		end 
	else
		for i = 1 ,8 do 
			tNpcGossip[25837]["Text31"..i+2] = string.format(tValentinePart2_Text[25836]["Text31"..i+2],"0xff708090")	
		end 
	end
	
	return true
end

tNpcGossip[25837]["tOption3-1"] = {311}
tNpcGossip[25837]["Option311"] = tValentinePart2_Text[25836]["Option311"]
tNpcGossip[25837]["OptionFunc311"] = "ValentinePart2_GetRaward</N>25837"


--查看本服奖励
tNpcGossip[25837]["Text3-2"] = {321,322,323,324,325,326}
tNpcGossip[25837]["Text321"] = tValentinePart2_Text[25836]["Text321"]
tNpcGossip[25837]["Text322"] = tValentinePart2_Text[25836]["Text322"]
tNpcGossip[25837]["Text323"] = tValentinePart2_Text[25836]["Text323"]
tNpcGossip[25837]["Text324"] = tValentinePart2_Text[25836]["Text324"]
tNpcGossip[25837]["Text325"] = tValentinePart2_Text[25836]["Text325"]
tNpcGossip[25837]["Text326"] = tValentinePart2_Text[25836]["Text326"]

tNpcGossip[25837]["ChkFunc3-2"]= function()
	return true
end

tNpcGossip[25837]["tOption3-2"] = {321}
tNpcGossip[25837]["Option321"] = tValentinePart2_Text[25836]["Option321"]
tNpcGossip[25837]["OptionPoint321"] = "2-1"




--每日任务里 
-- 25839,'真爱烟花' 2052
tNpcFace[2052] = 2071
tNpcGossip[25839]= tNpcGossip[25839] or DefaultNpc:new{}
tNpcGossip[25839]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25839]["Text1-1"] = {111,112}
tNpcGossip[25839]["Text111"] = tValentinePart2_Text[25839]["Text111"]
tNpcGossip[25839]["Text112"] = tValentinePart2_Text[25839]["Text112"]

tNpcGossip[25839]["ChkFunc1-1"]= function()

	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
		local nValentinePart2_UserId = Get_UserId()

		if not ValentinePart2_CheckHaveFireWork(nValentinePart2_UserId) then 
			
			-- Sys_MsgBox("已经燃放过了")
			return 
		else

			local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
			local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		
			ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
			local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		
			-- if nValentinePart2_DataValue == nil or nValentinePart2_DataValue == 0 then 
				return true
			-- end
			
		end 
	
	end 
end

tNpcGossip[25839]["tOption1-1"] = {111}
tNpcGossip[25839]["Option111"] = tValentinePart2_Text[25839]["Option111"]
tNpcGossip[25839]["OptionFunc111"] = "ValentinePart2_FireWork</N>25839</N>1"

--已经燃放过了
tNpcGossip[25839]["Text1-2"] = {141}
tNpcGossip[25839]["Text141"] = tValentinePart2_Text[25839]["Text141"]

tNpcGossip[25839]["ChkFunc1-2"]= function()
	local nValentinePart2_UserId = Get_UserId()
	if not ValentinePart2_CheckHaveFireWork(nValentinePart2_UserId) then 
		tNpcGossip[25839]["tOption1-2"] = {141}
		return true
	end
	-- return not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) 
end

tNpcGossip[25839]["tOption1-2"] = {141}
tNpcGossip[25839]["Option141"] = tValentinePart2_Text[25839]["Option141"]
tNpcGossip[25839]["OptionFunc141"] = "ValentinePart2_OkFindNpc"

--活动时间后
tNpcGossip[25839]["Text1-3"] = {131}
tNpcGossip[25839]["Text131"] = tValentinePart2_Text[25839]["Text131"]

tNpcGossip[25839]["ChkFunc1-3"]= function()
	return not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) 
end

tNpcGossip[25839]["tOption1-3"] = {131}
tNpcGossip[25839]["Option131"] = tValentinePart2_Text[25839]["Option131"]



-- 25840,'真爱烟花
-- 25841,'真爱烟花
-- 25842,'真爱烟花
-- 25843,'真爱烟花
-- 25844,'真爱烟花
-- 25845,'真爱烟花
tNpcGossip[25840]= tNpcGossip[25839] or DefaultNpc:new{}
tNpcGossip[25841]= tNpcGossip[25839] or DefaultNpc:new{}
tNpcGossip[25842]= tNpcGossip[25839] or DefaultNpc:new{}
tNpcGossip[25843]= tNpcGossip[25839] or DefaultNpc:new{}
tNpcGossip[25844]= tNpcGossip[25839] or DefaultNpc:new{}
tNpcGossip[25845]= tNpcGossip[25839] or DefaultNpc:new{}

-- 25871,'赛维娅
-- 25872,'赛维娅
-- 25873,'赛维娅
-- 25874,'赛维娅
-- 25875,'赛维娅
-- 25876,'赛维娅
-- 25877,'赛维娅
tNpcGossip[25871]= tNpcGossip[25871] or DefaultNpc:new{}
tNpcGossip[25871]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25871]["Text1-1"] = {111,112}
tNpcGossip[25871]["Text111"] = tValentinePart2_Text[25871]["Text111"]
tNpcGossip[25871]["Text112"] = tValentinePart2_Text[25871]["Text112"]

tNpcGossip[25871]["ChkFunc1-1"]= function()
		-- User_TalkChannel2005()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		
		tNpcGossip[25871]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
		if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

			return true
		end
end

tNpcGossip[25871]["tOption1-1"] = {111}
tNpcGossip[25871]["Option111"] = tValentinePart2_Text[25871]["Option111"]

--燃放后
tNpcGossip[25871]["Text1-2"] = {121,122}
tNpcGossip[25871]["Text121"] = tValentinePart2_Text[25871]["Text121"]
tNpcGossip[25871]["Text122"] = tValentinePart2_Text[25871]["Text122"]

tNpcGossip[25871]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25871]["tOption1-2"] = {121}
tNpcGossip[25871]["Option121"] = tValentinePart2_Text[25871]["Option121"]
tNpcGossip[25871]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

tNpcGossip[25872]= tNpcGossip[25872] or DefaultNpc:new{}
tNpcGossip[25872]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25872]["Text1-1"] = {111,112}
tNpcGossip[25872]["Text111"] = tValentinePart2_Text[25872]["Text111"]
tNpcGossip[25872]["Text112"] = tValentinePart2_Text[25872]["Text112"]

tNpcGossip[25872]["ChkFunc1-1"]= function()
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	tNpcGossip[25872]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return true
	end

end

tNpcGossip[25872]["tOption1-1"] = {111}
tNpcGossip[25872]["Option111"] = tValentinePart2_Text[25872]["Option111"]

--燃放后
tNpcGossip[25872]["Text1-2"] = {121,122}
tNpcGossip[25872]["Text121"] = tValentinePart2_Text[25872]["Text121"]
tNpcGossip[25872]["Text122"] = tValentinePart2_Text[25872]["Text122"]

tNpcGossip[25872]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25872]["tOption1-2"] = {121}
tNpcGossip[25872]["Option121"] = tValentinePart2_Text[25872]["Option121"]
tNpcGossip[25872]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

tNpcGossip[25873]= tNpcGossip[25873] or DefaultNpc:new{}
tNpcGossip[25873]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25873]["Text1-1"] = {111,112}
tNpcGossip[25873]["Text111"] = tValentinePart2_Text[25873]["Text111"]
tNpcGossip[25873]["Text112"] = tValentinePart2_Text[25873]["Text112"]

tNpcGossip[25873]["ChkFunc1-1"]= function()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	tNpcGossip[25873]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return true
	end

end

tNpcGossip[25873]["tOption1-1"] = {111}
tNpcGossip[25873]["Option111"] = tValentinePart2_Text[25873]["Option111"]

--燃放后
tNpcGossip[25873]["Text1-2"] = {121,122}
tNpcGossip[25873]["Text121"] = tValentinePart2_Text[25873]["Text121"]
tNpcGossip[25873]["Text122"] = tValentinePart2_Text[25873]["Text122"]

tNpcGossip[25873]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25873]["tOption1-2"] = {121}
tNpcGossip[25873]["Option121"] = tValentinePart2_Text[25873]["Option121"]
tNpcGossip[25873]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

tNpcGossip[25874]= tNpcGossip[25874] or DefaultNpc:new{}
tNpcGossip[25874]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25874]["Text1-1"] = {111,112}
tNpcGossip[25874]["Text111"] = tValentinePart2_Text[25874]["Text111"]
tNpcGossip[25874]["Text112"] = tValentinePart2_Text[25874]["Text112"]

tNpcGossip[25874]["ChkFunc1-1"]= function()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	tNpcGossip[25874]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return true
	end
end

tNpcGossip[25874]["tOption1-1"] = {111}
tNpcGossip[25874]["Option111"] = tValentinePart2_Text[25874]["Option111"]

--燃放后
tNpcGossip[25874]["Text1-2"] = {121,122}
tNpcGossip[25874]["Text121"] = tValentinePart2_Text[25874]["Text121"]
tNpcGossip[25874]["Text122"] = tValentinePart2_Text[25874]["Text122"]

tNpcGossip[25874]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25874]["tOption1-2"] = {121}
tNpcGossip[25874]["Option121"] = tValentinePart2_Text[25874]["Option121"]
tNpcGossip[25874]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

tNpcGossip[25875]= tNpcGossip[25875] or DefaultNpc:new{}
tNpcGossip[25875]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25875]["Text1-1"] = {111,112}
tNpcGossip[25875]["Text111"] = tValentinePart2_Text[25875]["Text111"]
tNpcGossip[25875]["Text112"] = tValentinePart2_Text[25875]["Text112"]

tNpcGossip[25875]["ChkFunc1-1"]= function()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	tNpcGossip[25875]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return true
	end
end

tNpcGossip[25875]["tOption1-1"] = {111}
tNpcGossip[25875]["Option111"] = tValentinePart2_Text[25875]["Option111"]

--燃放后
tNpcGossip[25875]["Text1-2"] = {121,122}
tNpcGossip[25875]["Text121"] = tValentinePart2_Text[25875]["Text121"]
tNpcGossip[25875]["Text122"] = tValentinePart2_Text[25875]["Text122"]

tNpcGossip[25875]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25875]["tOption1-2"] = {121}
tNpcGossip[25875]["Option121"] = tValentinePart2_Text[25875]["Option121"]
tNpcGossip[25875]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

tNpcGossip[25876]= tNpcGossip[25876] or DefaultNpc:new{}
tNpcGossip[25876]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25876]["Text1-1"] = {111,112}
tNpcGossip[25876]["Text111"] = tValentinePart2_Text[25876]["Text111"]
tNpcGossip[25876]["Text112"] = tValentinePart2_Text[25876]["Text112"]

tNpcGossip[25876]["ChkFunc1-1"]= function()
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	tNpcGossip[25876]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return true
	end

end

tNpcGossip[25876]["tOption1-1"] = {111}
tNpcGossip[25876]["Option111"] = tValentinePart2_Text[25876]["Option111"]


--燃放后
tNpcGossip[25876]["Text1-2"] = {121,122}
tNpcGossip[25876]["Text121"] = tValentinePart2_Text[25876]["Text121"]
tNpcGossip[25876]["Text122"] = tValentinePart2_Text[25876]["Text122"]

tNpcGossip[25876]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25876]["tOption1-2"] = {121}
tNpcGossip[25876]["Option121"] = tValentinePart2_Text[25876]["Option121"]
tNpcGossip[25876]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

tNpcGossip[25877]= tNpcGossip[25877] or DefaultNpc:new{}
tNpcGossip[25877]["OptionHidden"] = 1

--每日首次进入
tNpcGossip[25877]["Text1-1"] = {111,112}
tNpcGossip[25877]["Text111"] = tValentinePart2_Text[25877]["Text111"]
tNpcGossip[25877]["Text112"] = tValentinePart2_Text[25877]["Text112"]

tNpcGossip[25877]["ChkFunc1-1"]= function()
	
	local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
	local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
	local nValentinePart2_UserId = Get_UserId()
	tNpcGossip[25877]["OptionFunc111"] = string.format("ValentinePart2_InstanceFindFireNpc</N>%s",ValentinePart2_CheckTime())
	ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
	if nValentinePart2_DataValue == 0 or nValentinePart2_DataValue == nil then 

		return true
	end

end

tNpcGossip[25877]["tOption1-1"] = {111}
tNpcGossip[25877]["Option111"] = tValentinePart2_Text[25877]["Option111"]


--燃放后
tNpcGossip[25877]["Text1-2"] = {121,122}
tNpcGossip[25877]["Text121"] = tValentinePart2_Text[25877]["Text121"]
tNpcGossip[25877]["Text122"] = tValentinePart2_Text[25877]["Text122"]

tNpcGossip[25877]["ChkFunc1-2"]= function()
		local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
		local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
		local nValentinePart2_UserId = Get_UserId()
		ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
		if nValentinePart2_DataValue > 0  then 
			return true
		end
end

tNpcGossip[25877]["tOption1-2"] = {121}
tNpcGossip[25877]["Option121"] = tValentinePart2_Text[25877]["Option121"]
tNpcGossip[25877]["OptionFunc121"] = "ValentinePart2_GoOut</N>1"

-- 25878,'真爱烟花'
tNpcGossip[25878]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25878]["OptionHidden"] = 1

----之后进入
tNpcGossip[25878]["Text1-1"] = {121,122}
tNpcGossip[25878]["Text121"] = tValentinePart2_Text[25839]["Text121"]
tNpcGossip[25878]["Text122"] = tValentinePart2_Text[25839]["Text122"]

tNpcGossip[25878]["ChkFunc1-1"]= function()
	
	if Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tValentinePart2_Data["Level"],tValentinePart2_Data["Mete"]) then 
		local nValentinePart2_UserId = Get_UserId()

		local nValentinePart2_FireEnentType = tValentinePart2_Stc["EventType"][4]
		local nValentinePart2_FireDataType = tValentinePart2_Stc["DataType"][4]
		ValentinePart2_RetTask(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
		local nValentinePart2_FireDataValue = Get_UserStatisticValue(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
		if nValentinePart2_FireDataValue >= tValentinePart2_Stc["Limit"][4] then 
			User_TalkChannel2005(tValentinePart2_Text["Sys"]["AllNumLimit"])
			return false
		end 

		if not ValentinePart2_CheckHaveFireWork(nValentinePart2_UserId) then 
			-- Sys_MsgBox("已经燃放过了")
			return false
		else
			tNpcGossip[25878]["tOption1-1"] = {121}
			local nValentinePart2_EnentType = tValentinePart2_Stc["EventType"][1]
			local nValentinePart2_DataType = tValentinePart2_Stc["DataType"][1]
			
			ValentinePart2_RetTask(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
			local nValentinePart2_DataValue = Get_UserStatisticValue(nValentinePart2_EnentType,nValentinePart2_DataType,nValentinePart2_UserId)
			
			local nValentinePart2_FireEnentType = tValentinePart2_Stc["EventType"][4]
			local nValentinePart2_FireDataType = tValentinePart2_Stc["DataType"][4]
			ValentinePart2_RetTask(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
			local nValentinePart2_FireDataValue = Get_UserStatisticValue(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
			if nValentinePart2_FireDataValue == nil  then 
				nValentinePart2_FireDataValue = 0
			end 
			if nValentinePart2_FireDataValue > 0 then 
				tNpcGossip[25878]["tOption1-1"] = {122,123}
			end 
			
			tNpcGossip[25878]["Option121"] = string.format(tValentinePart2_Text[25839]["Option121"],nValentinePart2_FireDataValue)

			-- if nValentinePart2_DataValue > 0 then 
				return true
			-- end
		end 
	end 
end

tNpcGossip[25878]["tOption1-1"] = {121}
tNpcGossip[25878]["Option121"] = tValentinePart2_Text[25839]["Option121"]
tNpcGossip[25878]["Option122"] = tValentinePart2_Text[25839]["Option122"]
tNpcGossip[25878]["Option123"] = tValentinePart2_Text[25839]["Option123"]
tNpcGossip[25878]["OptionFunc121"] = "ValentinePart2_FireWork</N>25878</N>2"
tNpcGossip[25878]["OptionPoint122"] = "2-1"
tNpcGossip[25878]["OptionPoint123"] = "2-2"

--已经燃放过了
tNpcGossip[25878]["Text1-2"] = {141}
tNpcGossip[25878]["Text141"] = tValentinePart2_Text[25839]["Text141"]

tNpcGossip[25878]["ChkFunc1-2"]= function()
	local nValentinePart2_UserId = Get_UserId()
	if not ValentinePart2_CheckHaveFireWork(nValentinePart2_UserId) then 
		tNpcGossip[25878]["tOption1-2"] = {141}
		return true
	end
end

tNpcGossip[25878]["tOption1-2"] = {141}
tNpcGossip[25878]["Option141"] = tValentinePart2_Text[25839]["Option141"]
tNpcGossip[25878]["OptionFunc141"] = "ValentinePart2_OkFindNpc"


--活动时间后
tNpcGossip[25878]["Text1-3"] = {131}
tNpcGossip[25878]["Text131"] = tValentinePart2_Text[25839]["Text131"]

tNpcGossip[25878]["ChkFunc1-3"]= function()

	return not Sys_ChkFullTime(tActivityTime["ValentinePart2"]["ActTime"]) 
end

tNpcGossip[25878]["tOption1-3"] = {131}
tNpcGossip[25878]["Option131"] = tValentinePart2_Text[25839]["Option131"]

--次数上限
tNpcGossip[25878]["Text1-4"] = {151}
tNpcGossip[25878]["Text151"] = tValentinePart2_Text["Sys"]["AllNumLimit"]

tNpcGossip[25878]["ChkFunc1-4"]= function()
	local nValentinePart2_UserId = Get_UserId()

	local nValentinePart2_FireEnentType = tValentinePart2_Stc["EventType"][4]
	local nValentinePart2_FireDataType = tValentinePart2_Stc["DataType"][4]
	ValentinePart2_RetTask(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
	local nValentinePart2_FireDataValue = Get_UserStatisticValue(nValentinePart2_FireEnentType,nValentinePart2_FireDataType,nValentinePart2_UserId)
	if nValentinePart2_FireDataValue >= tValentinePart2_Stc["Limit"][4] then 
		return true
	end 
end

tNpcGossip[25878]["tOption1-4"] = {151}
tNpcGossip[25878]["Option151"] = tValentinePart2_Text[25839]["Option131"]



--点燃烟火（3个甜心巧克力）
tNpcGossip[25878]["Text2-1"] = {211,212,213}
tNpcGossip[25878]["Text211"] = tValentinePart2_Text[25839]["Text211"]
tNpcGossip[25878]["Text212"] = tValentinePart2_Text[25839]["Text212"]
tNpcGossip[25878]["Text213"] = tValentinePart2_Text[25839]["Text213"]

tNpcGossip[25878]["ChkFunc2-1"]= function()

	if not ValentinePart2_CheckItem(3600215) then 
		tNpcGossip[25878]["tOption2-1"] = {212}
	else
		tNpcGossip[25878]["tOption2-1"] = {211}
	end 
	
	return true
end

tNpcGossip[25878]["tOption2-1"] = {211}
tNpcGossip[25878]["Option211"] = tValentinePart2_Text[25839]["Option211"]
tNpcGossip[25878]["Option212"] = tValentinePart2_Text[25839]["Option212"]
tNpcGossip[25878]["OptionFunc211"] = "ValentinePart2_CostChocolate</N>25878</N>3600215</N>1"
tNpcGossip[25878]["OptionFunc212"] = "ValentinePart2_CostWithCps</N>25878</N>5</N>27"


--花费27天石点燃
tNpcGossip[25878]["Text3-1"] = {311}
tNpcGossip[25878]["Text311"] = tValentinePart2_Text[25839]["Text311"]

tNpcGossip[25878]["tOption3-1"] = {311,312}
tNpcGossip[25878]["Option311"] = tValentinePart2_Text[25839]["Option311"]
tNpcGossip[25878]["Option312"] = tValentinePart2_Text[25839]["Option312"]
tNpcGossip[25878]["OptionFunc311"] = "ValentinePart2_CostChocolate</N>25878</N>27</N>2"
tNpcGossip[25878]["OptionPoint312"] = "4-1"


--屏蔽二次确认
tNpcGossip[25878]["Text4-1"] = {411}
tNpcGossip[25878]["Text411"] = tValentinePart2_Text[25839]["Text411"]

tNpcGossip[25878]["tOption4-1"] = {411,412}
tNpcGossip[25878]["Option411"] = tValentinePart2_Text[25839]["Option411"]
tNpcGossip[25878]["Option412"] = tValentinePart2_Text[25839]["Option412"]
tNpcGossip[25878]["OptionFunc411"] = "ValentinePart2_CancelSure</N>25878</N>5"


--点燃烟火（3个浓情巧克力）
tNpcGossip[25878]["Text2-2"] = {221,222,223}
tNpcGossip[25878]["Text221"] = tValentinePart2_Text[25839]["Text221"]
tNpcGossip[25878]["Text222"] = tValentinePart2_Text[25839]["Text222"]
tNpcGossip[25878]["Text223"] = tValentinePart2_Text[25839]["Text223"]
tNpcGossip[25878]["ChkFunc2-2"]= function()

	if not ValentinePart2_CheckItem(3600216) then 
		tNpcGossip[25878]["tOption2-2"] = {222}
	else
		tNpcGossip[25878]["tOption2-2"] = {221}
	end 
	
	return true
end

tNpcGossip[25878]["tOption2-2"] = {221}
tNpcGossip[25878]["Option221"] = tValentinePart2_Text[25839]["Option221"]
tNpcGossip[25878]["Option222"] = tValentinePart2_Text[25839]["Option222"]
tNpcGossip[25878]["OptionFunc221"] = "ValentinePart2_CostChocolate</N>25878</N>3600216</N>1"
tNpcGossip[25878]["OptionFunc222"] = "ValentinePart2_CostWithCps</N>25878</N>6</N>270"
-- tNpcGossip[25839]["OptionPoint222"] = "3-2"

--花费270天石点燃
tNpcGossip[25878]["Text3-2"] = {321}
tNpcGossip[25878]["Text321"] = tValentinePart2_Text[25839]["Text321"]

tNpcGossip[25878]["tOption3-2"] = {321,322}
tNpcGossip[25878]["Option321"] = tValentinePart2_Text[25839]["Option321"]
tNpcGossip[25878]["Option322"] = tValentinePart2_Text[25839]["Option322"]
tNpcGossip[25878]["OptionFunc321"] = "ValentinePart2_CostChocolate</N>25878</N>270</N>2"
tNpcGossip[25878]["OptionPoint322"] = "4-2"


--屏蔽二次确认
tNpcGossip[25878]["Text4-2"] = {421}
tNpcGossip[25878]["Text421"] = tValentinePart2_Text[25839]["Text421"]

tNpcGossip[25878]["tOption4-2"] = {421,422}
tNpcGossip[25878]["Option421"] = tValentinePart2_Text[25839]["Option421"]
tNpcGossip[25878]["Option422"] = tValentinePart2_Text[25839]["Option422"]
tNpcGossip[25878]["OptionFunc421"] = "ValentinePart2_CancelSure</N>25878</N>6"




-- 25879,'真爱烟花'
-- 25880,'真爱烟花'
-- 25881,'真爱烟花'
-- 25882,'真爱烟花'               
-- 25883,'真爱烟花'
-- 25884,'真爱烟花'
-- 25885,'真爱烟花'
-- 25886,'真爱烟花'
-- 25887,'真爱烟花'            
-- 25888,'真爱烟花'
-- 25889,'真爱烟花'
-- 25890,'真爱烟花'
-- 25891,'真爱烟花'
-- 25892,'真爱烟花'               
-- 25893,'真爱烟花'
-- 25894,'真爱烟花'
-- 25895,'真爱烟花'
-- 25896,'真爱烟花'
-- 25897,'真爱烟花'                
-- 25898,'真爱烟花'
-- 25899,'真爱烟花'
-- 25900,'真爱烟花'
-- 25901,'真爱烟花'
-- 25902,'真爱烟花'               
-- 25903,'真爱烟花'
-- 25904,'真爱烟花'
-- 25905,'真爱烟花'
-- 25906,'真爱烟花'
-- 25907,'真爱烟花'               
-- 25908,'真爱烟花'
-- 25909,'真爱烟花'
-- 25910,'真爱烟花'
-- 25911,'真爱烟花'
-- 25912,'真爱烟花'

tNpcGossip[25879]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25880]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25881]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25882]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25883]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25884]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25885]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25886]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25887]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25888]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25889]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25890]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25891]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25892]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25893]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25894]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25895]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25896]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25897]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25898]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25899]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25900]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25901]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25902]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25903]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25904]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25905]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25906]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25907]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25908]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25909]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25910]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25911]= tNpcGossip[25878] or DefaultNpc:new{}
tNpcGossip[25912]= tNpcGossip[25878] or DefaultNpc:new{}


-----------------------------------------------------------物品部分--------------------------------------------------------
-- 3327450,'真爱至上王者宝盒',9,984
-- 3327451,'天长地久尊享宝盒',9,984
-- 3327452,'山盟海誓豪华宝盒',9,984
-- 3327453,'情比金坚典藏宝盒',9,984
                                
-- 全球排行榜奖励                  
-- 3327454,'全球真爱至上宝箱',9,984
-- 3327455,'全球天长地久宝箱',9,984
-- 3327456,'全球山盟海誓宝箱',9,984
-- 3327457,'全球情比金坚宝箱',9,984
-- 3327458,'全球情深似海宝箱',9,984
                                
-- 阶段性奖励                      
-- 3327459,'1000真爱之心阶段礼盒',9
-- 3327460,'3000真爱之心阶段礼盒',9
-- 3327461,'8000真爱之心阶段礼盒',9
-- 3327462,'15000真爱之心阶段礼盒',
-- 3327463,'30000真爱之心阶段礼盒',
-- 3327464,'50000真爱之心阶段礼盒',
-- 3327465,'75000真爱之心阶段礼盒',
-- 3327466,'100000真爱之心阶段礼盒'
tItem[3327450] = tItem[3327450] or {}
tItem[3327450]["Function"] = function (nItemId,sItemName)
	
	RewardTemplate_UseItemAndMsg(tValentinePart2_Award[nItemId])
end
tItem[3327451] = tItem[3327450] or {}
tItem[3327452] = tItem[3327450] or {}
tItem[3327453] = tItem[3327450] or {}
tItem[3327454] = tItem[3327450] or {}
tItem[3327455] = tItem[3327450] or {}
tItem[3327456] = tItem[3327450] or {}
tItem[3327457] = tItem[3327450] or {}
tItem[3327458] = tItem[3327450] or {}
tItem[3327459] = tItem[3327450] or {}
tItem[3327460] = tItem[3327450] or {}
tItem[3327461] = tItem[3327450] or {}
tItem[3327462] = tItem[3327450] or {}
tItem[3327463] = tItem[3327450] or {}
tItem[3327464] = tItem[3327450] or {}
tItem[3327465] = tItem[3327450] or {}
-- tItem[3327466] = tItem[3327450] or {}

tItem[3327466] = tItem[3327466] or {}
tItem[3327466]["Function"] = function (nItemId,sItemName)
	
	if RewardTemplate_UseItemAndMsg(tValentinePart2_Award[nItemId]) then
		if not User_HairFaceCheckExist(0,tValentinePart2_Data["HairId"]) then
			User_HairFaceAward(0,tValentinePart2_Data["HairId"],0)
		end
	end
	
end

-- 3329885,'情人节绝美称号礼盒',
tItem[3329885] = tItem[3329885] or {}
tItem[3329885]["Function"] = function (nItemId,sItemName)
	--判断性别
	local nSexFlag = Get_UserSex()
	
	if tValentinePart2_Award[nItemId][nSexFlag] ~= nil then 
		RewardTemplate_UseItemAndMsg(tValentinePart2_Award[nItemId][nSexFlag])
	end 
		
end
-- 3329886,'情人节万人迷称号礼盒
tItem[3329886] = tItem[3329885] or {}


-- 3329887,'全球真爱守护之星光环
tItem[3329887] = tItem[3329887] or {}
tItem[3329887]["Function"] = function (nItemId,sItemName)
	ValentinePart2_UseHornorRing(nItemId)
		
end

tItemFace[3329887] = 2820
tItem[3329887]["Text1-1"] = {111}
tItem[3329887]["Text111"] = tValentinePart2_Text[3329887]["Text111"]
tItem[3329887]["tOption1-1"] = {111,112}
tItem[3329887]["Option111"] = tValentinePart2_Text[3329887]["Option111"]
tItem[3329887]["OptionFunc111"] = "ValentinePart2_TakeOffRing</N>3329887"
tItem[3329887]["Option112"] = tValentinePart2_Text[3329887]["Option112"]

tItem[3329887]["Text1-2"] = {121}
tItem[3329887]["Text121"] = tValentinePart2_Text[3329887]["Text121"]
tItem[3329887]["tOption1-2"] = {121,122}
tItem[3329887]["Option121"] = tValentinePart2_Text[3329887]["Option121"]
tItem[3329887]["OptionFunc121"] = "ValentinePart2_TakeUpRing</N>3329887"
tItem[3329887]["Option122"] = tValentinePart2_Text[3329887]["Option112"]



-- 3329888,'全球真爱守护之神光环
tItem[3329888] = tItem[3329888] or {}
tItem[3329888]["Function"] = function (nItemId,sItemName)
	ValentinePart2_UseHornorRing(nItemId)
		
end

tItemFace[3329888] = 2821
tItem[3329888]["Text1-1"] = {111}
tItem[3329888]["Text111"] = tValentinePart2_Text[3329888]["Text111"]
tItem[3329888]["tOption1-1"] = {111,112}
tItem[3329888]["Option111"] = tValentinePart2_Text[3329888]["Option111"]
tItem[3329888]["OptionFunc111"] = "ValentinePart2_TakeOffRing</N>3329888"
tItem[3329888]["Option112"] = tValentinePart2_Text[3329888]["Option112"]

tItem[3329888]["Text1-2"] = {121}
tItem[3329888]["Text121"] = tValentinePart2_Text[3329888]["Text121"]
tItem[3329888]["tOption1-2"] = {121,122}
tItem[3329888]["Option121"] = tValentinePart2_Text[3329888]["Option121"]
tItem[3329888]["OptionFunc121"] = "ValentinePart2_TakeUpRing</N>3329888"
tItem[3329888]["Option122"] = tValentinePart2_Text[3329888]["Option112"]

-- 3329889,'全球真爱守护天使光环
tItem[3329889] = tItem[3329889] or {}
tItem[3329889]["Function"] = function (nItemId,sItemName)
	ValentinePart2_UseHornorRing(nItemId)
		
end

tItemFace[3329889] = 2822
tItem[3329889]["Text1-1"] = {111}
tItem[3329889]["Text111"] = tValentinePart2_Text[3329889]["Text111"]
tItem[3329889]["tOption1-1"] = {111,112}
tItem[3329889]["Option111"] = tValentinePart2_Text[3329889]["Option111"]
tItem[3329889]["OptionFunc111"] = "ValentinePart2_TakeOffRing</N>3329889"
tItem[3329889]["Option112"] = tValentinePart2_Text[3329889]["Option112"]

tItem[3329889]["Text1-2"] = {121}
tItem[3329889]["Text121"] = tValentinePart2_Text[3329889]["Text121"]
tItem[3329889]["tOption1-2"] = {121,122}
tItem[3329889]["Option121"] = tValentinePart2_Text[3329889]["Option121"]
tItem[3329889]["OptionFunc121"] = "ValentinePart2_TakeUpRing</N>3329889"
tItem[3329889]["Option122"] = tValentinePart2_Text[3329889]["Option112"]
------------------------------------------------------时间自检部分-------------------------------------------------------------
--上线触发 清除玩家二次确认掩码
table.insert(tSystem_PlayLogin_Func,ValentinePart2_Login)



----------------------------------陷阱部分----------------------------------
tTrap[2526] = tTrap[2526] or {}
tTrap[2526]["Function"] = function(nTrapId,nTrapType)
	ValentinePart2_InstanceMove(nTrapId,nTrapType)
end



