------------------------------------------------------------------------------------
--Name：            171019[简体征服][活动脚本]双十一活动抽奖包和月卡制作
--Creator:      游若楠
--Created:     2017/10/19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--命名规范
--DoubleEleven2017_DAMC_

----------------------------------表配置部分--------------------------------------------
--常量表
local tDoubleEleven2017_DAMC_Constant = {}
	tDoubleEleven2017_DAMC_Constant["IntervalTime"] = 3  --间隔时间
	tDoubleEleven2017_DAMC_Constant["Space"] = 1  --需要背包空间
	
	
---光效
local tDoubleEleven2017_DAMC_Effect = {}
	--骰子的
	tDoubleEleven2017_DAMC_Effect[1] = "touzi_1"
	tDoubleEleven2017_DAMC_Effect[2] = "touzi_2"
	tDoubleEleven2017_DAMC_Effect[3] = "touzi_3"
	tDoubleEleven2017_DAMC_Effect[4] = "touzi_4"
	tDoubleEleven2017_DAMC_Effect[5] = "touzi_5"
	tDoubleEleven2017_DAMC_Effect[6] = "touzi_6"

local tDoubleEleven2017_DAMC_Effect2 = {}
	--获取外套的
	tDoubleEleven2017_DAMC_Effect2[1]={}
	tDoubleEleven2017_DAMC_Effect2[1]["EffectObj"] = "self"
	tDoubleEleven2017_DAMC_Effect2[1]["Effect"] = "task116"
	tDoubleEleven2017_DAMC_Effect2[2]={}
	tDoubleEleven2017_DAMC_Effect2[2]["EffectObj"] = "self"
	tDoubleEleven2017_DAMC_Effect2[2]["Effect"] = "task117"
	tDoubleEleven2017_DAMC_Effect2[3]={}
	tDoubleEleven2017_DAMC_Effect2[3]["EffectObj"] = "self"
	tDoubleEleven2017_DAMC_Effect2[3]["Effect"] = "task118"
	tDoubleEleven2017_DAMC_Effect2[4]={}
	tDoubleEleven2017_DAMC_Effect2[4]["EffectObj"] = "self"
	tDoubleEleven2017_DAMC_Effect2[4]["Effect"] = "task119"
	tDoubleEleven2017_DAMC_Effect2[5]={}
	tDoubleEleven2017_DAMC_Effect2[5]["EffectObj"] = "self"
	tDoubleEleven2017_DAMC_Effect2[5]["Effect"] = "task120"
	

--掩码
local tDoubleEleven2017_DAMC_Stc = {}
	--屏蔽二次确认用
	tDoubleEleven2017_DAMC_Stc["EventType"] = 169
	tDoubleEleven2017_DAMC_Stc["DataType"] = {}
	tDoubleEleven2017_DAMC_Stc["DataType"][3306124] = 50
	tDoubleEleven2017_DAMC_Stc["DataType"][3306136] = 50
	tDoubleEleven2017_DAMC_Stc["DataType"][3306125] = 51
	tDoubleEleven2017_DAMC_Stc["DataType"][3306126] = 52
	tDoubleEleven2017_DAMC_Stc["DataType"][3306310] = 53
	tDoubleEleven2017_DAMC_Stc["DataType"][3306311] = 53
	tDoubleEleven2017_DAMC_Stc["DataType"][3306312] = 53
	tDoubleEleven2017_DAMC_Stc["DataType"][3306313] = 53
	tDoubleEleven2017_DAMC_Stc["DataType"][3306127] = 54
	tDoubleEleven2017_DAMC_Stc["DataType"][3306129] = 54
	tDoubleEleven2017_DAMC_Stc["DataType"][3306128] = 55
	tDoubleEleven2017_DAMC_Stc["DataType"][3306130] = 55
	

--物品
local tDoubleEleven2017_DAMC_Item = {}
	tDoubleEleven2017_DAMC_Item["CardsLottery"] = {}
	tDoubleEleven2017_DAMC_Item["CardsLottery"]["Id"] = 3306162
	tDoubleEleven2017_DAMC_Item["CardsLottery"]["LotteryType"] = 37
	
	tDoubleEleven2017_DAMC_Item["Touzi"] = {}
	tDoubleEleven2017_DAMC_Item["Touzi"][1] = 3306310
	tDoubleEleven2017_DAMC_Item["Touzi"][2] = 3306311
	tDoubleEleven2017_DAMC_Item["Touzi"][3] = 3306312
	
	tDoubleEleven2017_DAMC_Item["FreeRoulette"] = {}
	tDoubleEleven2017_DAMC_Item["FreeRoulette"][1] = 3306151
	tDoubleEleven2017_DAMC_Item["FreeRoulette"][2] = 3306152
	tDoubleEleven2017_DAMC_Item["FreeRoulette"][3] = 3306153
	tDoubleEleven2017_DAMC_Item["FreeRoulette"][4] = 3306422
	tDoubleEleven2017_DAMC_Item["FreeRoulette"][5] = 3306423
	tDoubleEleven2017_DAMC_Item["FreeRoulette"][6] = 3306424
	
	tDoubleEleven2017_DAMC_Item["EMoneyMonoTouzi"] = {}
	tDoubleEleven2017_DAMC_Item["EMoneyMonoTouzi"][1] = 3306313
	
	tDoubleEleven2017_DAMC_Item["RouletteTicket"] = {}
	tDoubleEleven2017_DAMC_Item["RouletteTicket"][1] = 3306160
	tDoubleEleven2017_DAMC_Item["RouletteTicket"][2] = 3305916
	
	tDoubleEleven2017_DAMC_Item["MonthCardBag"] = {}
	tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"] = 3306154
	tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Attr"] = "0 1 0 43200 1"
	
--轮盘ID对应type
local tDoubleEleven2017_DAMC_ItemToRoulette = {}
	tDoubleEleven2017_DAMC_ItemToRoulette[3306136] = 743
	tDoubleEleven2017_DAMC_ItemToRoulette[3306151] = 744
	tDoubleEleven2017_DAMC_ItemToRoulette[3306152] = 745
	tDoubleEleven2017_DAMC_ItemToRoulette[3306153] = 746
	tDoubleEleven2017_DAMC_ItemToRoulette[3306160] = 747  --奖券ID对应
	tDoubleEleven2017_DAMC_ItemToRoulette[3305916] = 752  --奖券ID对应
	tDoubleEleven2017_DAMC_ItemToRoulette[3306422] = 748
	tDoubleEleven2017_DAMC_ItemToRoulette[3306423] = 749
	tDoubleEleven2017_DAMC_ItemToRoulette[3306424] = 750

--月卡ID对应掩码
local tDoubleEleven2017_DAMC_ItemToStc = {}
	tDoubleEleven2017_DAMC_ItemToStc["EventType"] = 168
	tDoubleEleven2017_DAMC_ItemToStc["DataType"] = {}
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306111] = 79
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306112] = 80
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306113] = 81
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306114] = 82
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306115] = 83
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306116] = 84
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306117] = 85
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306118] = 86
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306119] = 87
	tDoubleEleven2017_DAMC_ItemToStc["DataType"][3306120] = 88

	
--外套ID对应星级
local tDoubleEleven2017_DAMC_ItemToRank = {}
	--时装外套
	tDoubleEleven2017_DAMC_ItemToRank[181345] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181365] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181375] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181385] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181395] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182305] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182315] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182325] = 1
	tDoubleEleven2017_DAMC_ItemToRank[183305] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182385] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182375] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182365] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182355] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182345] = 1
	tDoubleEleven2017_DAMC_ItemToRank[182335] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181925] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181825] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181325] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181425] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181525] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181625] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181725] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181915] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181615] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181315] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181415] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181515] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181715] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181815] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181905] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181305] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181405] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181505] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181605] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181705] = 1
	tDoubleEleven2017_DAMC_ItemToRank[181805] = 1
	
	tDoubleEleven2017_DAMC_ItemToRank[193605] = 2
	tDoubleEleven2017_DAMC_ItemToRank[193085] = 2
	tDoubleEleven2017_DAMC_ItemToRank[193075] = 2
	tDoubleEleven2017_DAMC_ItemToRank[193055] = 2
	tDoubleEleven2017_DAMC_ItemToRank[193045] = 2
	tDoubleEleven2017_DAMC_ItemToRank[193105] = 2
	tDoubleEleven2017_DAMC_ItemToRank[184325] = 2
	tDoubleEleven2017_DAMC_ItemToRank[193300] = 2
	tDoubleEleven2017_DAMC_ItemToRank[187305] = 2
	tDoubleEleven2017_DAMC_ItemToRank[187315] = 2
	tDoubleEleven2017_DAMC_ItemToRank[183335] = 2
	tDoubleEleven2017_DAMC_ItemToRank[183325] = 2
	tDoubleEleven2017_DAMC_ItemToRank[183375] = 2
	tDoubleEleven2017_DAMC_ItemToRank[184335] = 2
	tDoubleEleven2017_DAMC_ItemToRank[181355] = 2
	tDoubleEleven2017_DAMC_ItemToRank[184375] = 2
	tDoubleEleven2017_DAMC_ItemToRank[184305] = 2


	tDoubleEleven2017_DAMC_ItemToRank[193305] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193115] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192555] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192345] = 3
	tDoubleEleven2017_DAMC_ItemToRank[188975] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192300] = 3
	tDoubleEleven2017_DAMC_ItemToRank[184315] = 3
	tDoubleEleven2017_DAMC_ItemToRank[183465] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193535] = 3
	tDoubleEleven2017_DAMC_ItemToRank[194300] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192495] = 3
	tDoubleEleven2017_DAMC_ItemToRank[184355] = 3
	tDoubleEleven2017_DAMC_ItemToRank[184365] = 3
	tDoubleEleven2017_DAMC_ItemToRank[187475] = 3
	tDoubleEleven2017_DAMC_ItemToRank[184385] = 3
	tDoubleEleven2017_DAMC_ItemToRank[183485] = 3
	tDoubleEleven2017_DAMC_ItemToRank[188285] = 3
	tDoubleEleven2017_DAMC_ItemToRank[183385] = 3
	tDoubleEleven2017_DAMC_ItemToRank[184345] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192310] = 3
	tDoubleEleven2017_DAMC_ItemToRank[183395] = 3
	tDoubleEleven2017_DAMC_ItemToRank[183345] = 3
	tDoubleEleven2017_DAMC_ItemToRank[189035] = 3
	tDoubleEleven2017_DAMC_ItemToRank[188885] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192685] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192675] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192665] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192655] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193735] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193745] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193755] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193765] = 3
	tDoubleEleven2017_DAMC_ItemToRank[194655] = 3
	tDoubleEleven2017_DAMC_ItemToRank[194665] = 3
	tDoubleEleven2017_DAMC_ItemToRank[194675] = 3
	tDoubleEleven2017_DAMC_ItemToRank[194685] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192785] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192625] = 3
	tDoubleEleven2017_DAMC_ItemToRank[189095] = 3
	tDoubleEleven2017_DAMC_ItemToRank[189075] = 3
	tDoubleEleven2017_DAMC_ItemToRank[188675] = 3
	tDoubleEleven2017_DAMC_ItemToRank[188575] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193725] = 3
	tDoubleEleven2017_DAMC_ItemToRank[189105] = 3
	tDoubleEleven2017_DAMC_ItemToRank[192425] = 3
	tDoubleEleven2017_DAMC_ItemToRank[188155] = 3
	tDoubleEleven2017_DAMC_ItemToRank[187605] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193095] = 3
	tDoubleEleven2017_DAMC_ItemToRank[193065] = 3
	tDoubleEleven2017_DAMC_ItemToRank[194355] = 3
	tDoubleEleven2017_DAMC_ItemToRank[189495] = 3
	
	tDoubleEleven2017_DAMC_ItemToRank[188495] = 4
	tDoubleEleven2017_DAMC_ItemToRank[192565] = 4
	tDoubleEleven2017_DAMC_ItemToRank[189085] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193225] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193205] = 4
	tDoubleEleven2017_DAMC_ItemToRank[192575] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193325] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193295] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193775] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193785] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193795] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193805] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193815] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193825] = 4
	tDoubleEleven2017_DAMC_ItemToRank[194695] = 4
	tDoubleEleven2017_DAMC_ItemToRank[194705] = 4
	tDoubleEleven2017_DAMC_ItemToRank[194715] = 4
	tDoubleEleven2017_DAMC_ItemToRank[194725] = 4
	tDoubleEleven2017_DAMC_ItemToRank[193555] = 4
	tDoubleEleven2017_DAMC_ItemToRank[189505] = 4
	tDoubleEleven2017_DAMC_ItemToRank[194405] = 4
	
	tDoubleEleven2017_DAMC_ItemToRank[189065] = 5
	tDoubleEleven2017_DAMC_ItemToRank[188915] = 5
	tDoubleEleven2017_DAMC_ItemToRank[193565] = 5
	tDoubleEleven2017_DAMC_ItemToRank[193445] = 5
	
	--坐骑外套
	tDoubleEleven2017_DAMC_ItemToRank[200000] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200001] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200004] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200006] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200018] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200019] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200020] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200545] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200546] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200547] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200101] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200102] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200120] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200121] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200122] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200123] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200124] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200125] = 1
	tDoubleEleven2017_DAMC_ItemToRank[200126] = 1
	
	tDoubleEleven2017_DAMC_ItemToRank[200002] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200003] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200005] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200007] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200008] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200100] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200103] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200104] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200105] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200106] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200109] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200518] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200538] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200539] = 2
	tDoubleEleven2017_DAMC_ItemToRank[200550] = 2
	
	tDoubleEleven2017_DAMC_ItemToRank[200444] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200492] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200503] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200535] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200570] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200571] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200419] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200422] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200403] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200411] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200414] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200415] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200418] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200438] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200443] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200470] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200476] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200491] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200514] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200528] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200541] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200595] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200553] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200554] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200555] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200556] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200557] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200558] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200584] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200585] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200586] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200587] = 3
	tDoubleEleven2017_DAMC_ItemToRank[200588] = 3
	
	tDoubleEleven2017_DAMC_ItemToRank[200481] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200421] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200471] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200549] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200563] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200500] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200589] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200593] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200591] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200590] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200495] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200525] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200543] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200574] = 4
	tDoubleEleven2017_DAMC_ItemToRank[200579] = 4
	
	tDoubleEleven2017_DAMC_ItemToRank[200494] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200524] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200517] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200531] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200544] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200572] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200573] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200580] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200581] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200596] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200559] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200560] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200592] = 5
	tDoubleEleven2017_DAMC_ItemToRank[200564] = 5


--奖励表
local tDoubleEleven2017_DAMC_Award = {}
	------------------------新写礼包
	--明亮星陨石包
	tDoubleEleven2017_DAMC_Award[3306159] = {}
	tDoubleEleven2017_DAMC_Award[3306159]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award[3306159]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award[3306159]["DeleteItem"][1]["Id"] = 3306159
	tDoubleEleven2017_DAMC_Award[3306159]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award[3306159]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award[3306159]["RewardItem"][1]["Id"] = 3009001
	tDoubleEleven2017_DAMC_Award[3306159]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleEleven2017_DAMC_Award[3306159]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award[3306159]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award[3306159]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award[3306159]["RewardEffect"]["Effect"] = "zf2-e128"
	--+5赤炼石极运*2包
	tDoubleEleven2017_DAMC_Award[3306161] = {}
	tDoubleEleven2017_DAMC_Award[3306161]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award[3306161]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award[3306161]["DeleteItem"][1]["Id"] = 3306161
	tDoubleEleven2017_DAMC_Award[3306161]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award[3306161]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award[3306161]["RewardItem"][1]["Id"] = 3304299
	tDoubleEleven2017_DAMC_Award[3306161]["RewardItem"][1]["Attr"] = "0 2"
	tDoubleEleven2017_DAMC_Award[3306161]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award[3306161]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award[3306161]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award[3306161]["RewardEffect"]["Effect"] = "zf2-e128"
	
	------------------------月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"] = {}
	--+3赤炼石（赠）月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["DeleteItem"][1]["Id"] = 3306111
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardItem"][1]["Id"] = 730003
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["DataType"] = 79
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306111]["RewardTimeType"] = 4

	--+3马匹（赠）月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["DeleteItem"][1]["Id"] = 3306112
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["DataType"] = 80
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306112]["RewardTimeType"] = 4
	
	--明亮星陨石月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["DeleteItem"][1]["Id"] = 3306113
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardItem"][1]["Id"] = 3009001
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["DataType"] = 81
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306113]["RewardTimeType"] = 4
	
	--300气力值月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["DeleteItem"][1]["Id"] = 3306114
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardStrengthValue"]["Value"] = 300
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["DataType"] = 82
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306114]["RewardTimeType"] = 4
	
	--500气力值月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["DeleteItem"][1]["Id"] = 3306115
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardStrengthValue"]["Value"] = 500
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["DataType"] = 83
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306115]["RewardTimeType"] = 4
	
	--秘制免费修炼丹月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["DeleteItem"][1]["Id"] = 3306116
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardItem"][1]["Id"] = 3002926
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["DataType"] = 84
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306116]["RewardTimeType"] = 4
	
	--魔武通玄丹月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["DeleteItem"][1]["Id"] = 3306117
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardItem"][1]["Id"] = 3303373
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["DataType"] = 85
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306117]["RewardTimeType"] = 4
	
	--百炼天机果月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["DeleteItem"][1]["Id"] = 3306118
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardItem"][1]["Id"] = 3001044
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["DataType"] = 86
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306118]["RewardTimeType"] = 4
	
	--3星时装外套月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["DeleteItem"][1]["Id"] = 3306119
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardItem"][1]["Id"] = 3008270
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["DataType"] = 87
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306119]["RewardTimeType"] = 4
	
	--3星坐骑外套月卡
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["DeleteItem"] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["DeleteItem"][1] = {}
	-- tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["DeleteItem"][1]["Id"] = 3306120
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardItem"][1]["Id"] = 3008323
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["HaveReceive"] = tDoubleEleven2017_DAMC_Text["RewardUsed"]
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 【STC掩码配置】
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["EventType"] = 168
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["DataType"] = 88
	-- stc掩码今天可达值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardData"] = 1
	-- stc掩码可达总值
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardTotalData"] = 30
	-- 隔1天清除stc掩码
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardDelay"] = 1
	tDoubleEleven2017_DAMC_Award["MonthCard"][3306120]["RewardTimeType"] = 4

	
	------------------------抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"] = {}
	--赤炼石抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124]["DeleteItem"][1]["Id"] = 3306124
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["ItemChance"] = 4000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["RewardItem"][1]["Id"] = 3304295
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["ItemChance"] = 2500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["RewardItem"][1]["Id"] = 3304296
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["ItemChance"] = 1600
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["RewardItem"][1]["Id"] = 3304297
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["ItemChance"] = 1000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["RewardItem"][1]["Id"] = 3304297
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["RewardItem"][1]["Attr"] = "0 2"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["ItemChance"] = 550
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["RewardItem"][1]["Id"] = 3304298
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["ItemChance"] = 300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["RewardItem"][1]["Id"] = 3304299
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["ItemChance"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["RewardItem"][1]["Id"] = 3304301
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][7]["LogId"] = 12000920
	for i = 1,7 do
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][i]["SzObj"] = "self"
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][i]["RewardEffect"] = {}
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306124][i]["RewardEffect"]["Effect"] = "zf2-e128"
	end
	--星陨石抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125]["DeleteItem"][1]["Id"] = 3306125
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["RewardItem"][1]["Id"] = 3009000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["ItemChance"] = 3000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["RewardItem"][1]["Id"] = 3009000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["RewardItem"][1]["Id"] = 3009001
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["ItemChance"] = 3500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["RewardItem"][1]["Id"] = 3009001
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["ItemChance"] = 350
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["RewardItem"][1]["Id"] = 3009001
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["ItemChance"] = 100
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["RewardItem"][1]["Id"] = 3009002
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["ItemChance"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["RewardItem"][1]["Id"] = 3009002
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][7]["LogId"] = 12000920
	for i = 1,7 do
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][i]["SzObj"] = "self"
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][i]["RewardEffect"] = {}
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306125][i]["RewardEffect"]["Effect"] = "zf2-e128"
	end
	--气力值抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126]["DeleteItem"][1]["Id"] = 3306126
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][1]["ItemChance"] = 3000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][1]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][1]["RewardStrengthValue"]["Value"] = 20
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][2]["ItemChance"] = 2500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][2]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][2]["RewardStrengthValue"]["Value"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][3]["ItemChance"] = 1600
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][3]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][3]["RewardStrengthValue"]["Value"] = 80
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][4]["ItemChance"] = 1000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][4]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][4]["RewardStrengthValue"]["Value"] = 100
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][5]["ItemChance"] = 1000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][5]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][5]["RewardStrengthValue"]["Value"] = 300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][6]["ItemChance"] = 800
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][6]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][6]["RewardStrengthValue"]["Value"] = 500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][7]["ItemChance"] = 100
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][7]["RewardStrengthValue"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][7]["RewardStrengthValue"]["Value"] = 1000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][7]["LogId"] = 12000920
	for i = 1,7 do
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][i]["SzObj"] = "self"
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][i]["RewardEffect"] = {}
		tDoubleEleven2017_DAMC_Award["DrawPackage"][3306126][i]["RewardEffect"]["Effect"] = "zf2-e128"
	end
	--低级时装抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127]["DeleteItem"][1]["Id"] = 3306127
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127]["ItemChanceSum"] = 10000
	--一星时装外套
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["RewardItem"][1]["Id"] = 181345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["RewardItem"][1]["Id"] = 181365
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["RewardItem"][1]["Id"] = 181375
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["RewardItem"][1]["Id"] = 181385
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["RewardItem"][1]["Id"] = 181395
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["RewardItem"][1]["Id"] = 182305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["RewardItem"][1]["Id"] = 182315
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][7]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["RewardItem"][1]["Id"] = 182325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][8]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["RewardItem"][1]["Id"] = 183305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][9]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["RewardItem"][1]["Id"] = 182385
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][10]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["RewardItem"][1]["Id"] = 182375
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][11]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["RewardItem"][1]["Id"] = 182365
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][12]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["RewardItem"][1]["Id"] = 182355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][13]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["RewardItem"][1]["Id"] = 182345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][14]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["RewardItem"][1]["Id"] = 182335
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][15]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["RewardItem"][1]["Id"] = 181925
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][16]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["RewardItem"][1]["Id"] = 181825
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][17]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["RewardItem"][1]["Id"] = 181325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][18]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["RewardItem"][1]["Id"] = 181425
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][19]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["RewardItem"][1]["Id"] = 181525
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][20]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["RewardItem"][1]["Id"] = 181625
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][21]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["RewardItem"][1]["Id"] = 181725
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][22]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["RewardItem"][1]["Id"] = 181915
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][23]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["RewardItem"][1]["Id"] = 181615
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][24]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["RewardItem"][1]["Id"] = 181315
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][25]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["RewardItem"][1]["Id"] = 181415
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][26]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["RewardItem"][1]["Id"] = 181515
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][27]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["RewardItem"][1]["Id"] = 181715
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][28]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["RewardItem"][1]["Id"] = 181815
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][29]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["RewardItem"][1]["Id"] = 181905
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][30]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["RewardItem"][1]["Id"] = 181305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][31]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["RewardItem"][1]["Id"] = 181405
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][32]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["RewardItem"][1]["Id"] = 181505
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][33]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["RewardItem"][1]["Id"] = 181605
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][34]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["ItemChance"] = 111
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["RewardItem"][1]["Id"] = 181705
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][35]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["ItemChance"] = 116
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["RewardItem"][1]["Id"] = 181805
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][36]["LogId"] = 12000920
	--功夫系列外套（2星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["ItemChance"] = 208
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["RewardItem"][1]["Id"] = 193605
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][37]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["ItemChance"] = 208
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["RewardItem"][1]["Id"] = 193085
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][38]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["ItemChance"] = 208
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["RewardItem"][1]["Id"] = 193075
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][39]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["ItemChance"] = 208
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["RewardItem"][1]["Id"] = 193055
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][40]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["ItemChance"] = 208
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["RewardItem"][1]["Id"] = 193045
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][41]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["ItemChance"] = 210
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["RewardItem"][1]["Id"] = 193105
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][42]["LogId"] = 12000920
	--角色扮演外套（2星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["RewardItem"][1]["Id"] = 184325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][43]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["RewardItem"][1]["Id"] = 193300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][44]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["RewardItem"][1]["Id"] = 187305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][45]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["RewardItem"][1]["Id"] = 187315
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][46]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["RewardItem"][1]["Id"] = 183335
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][47]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["RewardItem"][1]["Id"] = 183325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][48]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["RewardItem"][1]["Id"] = 183375
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][49]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["RewardItem"][1]["Id"] = 184335
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][50]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["RewardItem"][1]["Id"] = 181355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][51]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["RewardItem"][1]["Id"] = 184375
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][52]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["ItemChance"] = 230
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["RewardItem"][1]["Id"] = 184305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][53]["LogId"] = 12000920
	--萌系外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["RewardItem"][1]["Id"] = 193305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][54]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["RewardItem"][1]["Id"] = 193115
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][55]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["RewardItem"][1]["Id"] = 192555
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][56]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["RewardItem"][1]["Id"] = 192345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][57]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["RewardItem"][1]["Id"] = 188975
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][58]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["RewardItem"][1]["Id"] = 192300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][59]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["RewardItem"][1]["Id"] = 184315
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][60]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["ItemChance"] = 61
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["RewardItem"][1]["Id"] = 183465
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][61]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["ItemChance"] = 62
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["RewardItem"][1]["Id"] = 193535
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][62]["LogId"] = 12000920
	--时尚外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["RewardItem"][1]["Id"] = 194300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][63]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["RewardItem"][1]["Id"] = 192495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][64]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["RewardItem"][1]["Id"] = 184355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][65]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["RewardItem"][1]["Id"] = 184365
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][66]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["RewardItem"][1]["Id"] = 187475
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][67]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["RewardItem"][1]["Id"] = 184385
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][68]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["RewardItem"][1]["Id"] = 183485
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][69]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["RewardItem"][1]["Id"] = 188285
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][70]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["RewardItem"][1]["Id"] = 183385
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][71]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["RewardItem"][1]["Id"] = 184345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][72]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["RewardItem"][1]["Id"] = 192310
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][73]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["RewardItem"][1]["Id"] = 183395
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][74]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["RewardItem"][1]["Id"] = 183345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][75]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["ItemChance"] = 37
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["RewardItem"][1]["Id"] = 189035
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][76]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["ItemChance"] = 32
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["RewardItem"][1]["Id"] = 188885
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][77]["LogId"] = 12000920
	--运动外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["RewardItem"][1]["Id"] = 192685
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][78]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["RewardItem"][1]["Id"] = 192675
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][79]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["RewardItem"][1]["Id"] = 192665
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][80]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["RewardItem"][1]["Id"] = 192655
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][81]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["RewardItem"][1]["Id"] = 193735
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][82]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["RewardItem"][1]["Id"] = 193745
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][83]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["RewardItem"][1]["Id"] = 193755
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][84]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["RewardItem"][1]["Id"] = 193765
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][85]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["RewardItem"][1]["Id"] = 194655
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][86]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["RewardItem"][1]["Id"] = 194665
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][87]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["ItemChance"] = 46
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["RewardItem"][1]["Id"] = 194675
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][88]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["RewardItem"][1]["Id"] = 194685
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][89]["LogId"] = 12000920
	--复古外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["RewardItem"][1]["Id"] = 192785
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][90]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["RewardItem"][1]["Id"] = 192625
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][91]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["RewardItem"][1]["Id"] = 189095
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][92]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["RewardItem"][1]["Id"] = 189075
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][93]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["RewardItem"][1]["Id"] = 188675
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][94]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["RewardItem"][1]["Id"] = 188575
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][95]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["RewardItem"][1]["Id"] = 193725
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][96]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["RewardItem"][1]["Id"] = 189105
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][97]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["RewardItem"][1]["Id"] = 192425
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][98]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["ItemChance"] = 27
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["RewardItem"][1]["Id"] = 188155
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][99]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["ItemChance"] = 30
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["RewardItem"][1]["Id"] = 187605
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][100]["LogId"] = 12000920
	--经典怀旧（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["ItemChance"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["RewardItem"][1]["Id"] = 193095
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][101]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["ItemChance"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["RewardItem"][1]["Id"] = 193065
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][102]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["ItemChance"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["RewardItem"][1]["Id"] = 194355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][103]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["ItemChance"] = 50
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["RewardItem"][1]["Id"] = 189495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][104]["LogId"] = 12000920
	--经典款（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["RewardItem"][1]["Id"] = 188495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][105]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["RewardItem"][1]["Id"] = 192565
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][106]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["RewardItem"][1]["Id"] = 189085
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][107]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["RewardItem"][1]["Id"] = 193225
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][108]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["RewardItem"][1]["Id"] = 193205
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][109]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["RewardItem"][1]["Id"] = 192575
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][110]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["ItemChance"] = 6
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["RewardItem"][1]["Id"] = 193325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][111]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["ItemChance"] = 8
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["RewardItem"][1]["Id"] = 193295
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][112]["LogId"] = 12000920
	--运动款（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["RewardItem"][1]["Id"] = 194355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][113]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["RewardItem"][1]["Id"] = 189495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][114]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["RewardItem"][1]["Id"] = 188495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][115]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["RewardItem"][1]["Id"] = 192565
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][116]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["RewardItem"][1]["Id"] = 189085
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][117]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["RewardItem"][1]["Id"] = 193225
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][118]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["RewardItem"][1]["Id"] = 193205
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][119]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["RewardItem"][1]["Id"] = 192575
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][120]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["RewardItem"][1]["Id"] = 193325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][121]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["RewardItem"][1]["Id"] = 193295
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][122]["LogId"] = 12000920
	--喵基尼【魅力版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["RewardItem"][1]["Id"] = 193555
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][123]["LogId"] = 12000920
	--锦翎武衣【华彩版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["RewardItem"][1]["Id"] = 189505
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][124]["LogId"] = 12000920
	--狐妖装【魅彩版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["RewardItem"][1]["Id"] = 194405
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][125]["LogId"] = 12000920
	--暗黑魔龙战衣【炼狱版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["ItemChance"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["RewardItem"][1]["Id"] = 189065
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][126]["LogId"] = 12000920
	--辉耀之刺【荣耀版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["ItemChance"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["RewardItem"][1]["Id"] = 188915
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][127]["LogId"] = 12000920
	--喵基尼【璀璨版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["RewardItem"][1]["Id"] = 193565
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][128]["LogId"] = 12000920
	--冰雪奇缘【闪耀版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["RewardItem"][1]["Id"] = 193445
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][129]["LogId"] = 12000920
	-- for i = 1,36 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"]["Effect"] = "task116"
	-- end
	-- for i = 37,53 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"]["Effect"] = "task117"
	-- end
	-- for i = 54,104 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"]["Effect"] = "task118"
	-- end
	-- for i = 105,125 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"]["Effect"] = "task119"
	-- end
	-- for i = 126,129 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306127][i]["RewardEffect"]["Effect"] = "task120"
	-- end
	
	--低级坐骑抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128]["DeleteItem"][1]["Id"] = 3306128
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128]["ItemChanceSum"] = 10000
	--1星鹿和老虎
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["RewardItem"][1]["Id"] = 200000
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["RewardItem"][1]["Id"] = 200001
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["RewardItem"][1]["Id"] = 200004
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["RewardItem"][1]["Id"] = 200006
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["RewardItem"][1]["Id"] = 200018
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["RewardItem"][1]["Id"] = 200019
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["RewardItem"][1]["Id"] = 200020
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][7]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["RewardItem"][1]["Id"] = 200545
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][8]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["RewardItem"][1]["Id"] = 200546
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][9]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["RewardItem"][1]["Id"] = 200547
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][10]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["RewardItem"][1]["Id"] = 200101
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][11]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["RewardItem"][1]["Id"] = 200102
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][12]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["RewardItem"][1]["Id"] = 200120
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][13]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["RewardItem"][1]["Id"] = 200121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][14]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["RewardItem"][1]["Id"] = 200122
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][15]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["RewardItem"][1]["Id"] = 200123
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][16]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["RewardItem"][1]["Id"] = 200124
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][17]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["ItemChance"] = 220
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["RewardItem"][1]["Id"] = 200125
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][18]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["ItemChance"] = 216
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["RewardItem"][1]["Id"] = 200126
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][19]["LogId"] = 12000920
	--2星鹿和老虎
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["RewardItem"][1]["Id"] = 200002
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][20]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["RewardItem"][1]["Id"] = 200003
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][21]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["RewardItem"][1]["Id"] = 200005
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][22]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["RewardItem"][1]["Id"] = 200007
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][23]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["RewardItem"][1]["Id"] = 200008
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][24]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["RewardItem"][1]["Id"] = 200100
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][25]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["RewardItem"][1]["Id"] = 200103
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][26]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["RewardItem"][1]["Id"] = 200104
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][27]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["RewardItem"][1]["Id"] = 200105
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][28]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["ItemChance"] = 227
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["RewardItem"][1]["Id"] = 200106
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][29]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["ItemChance"] = 230
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["RewardItem"][1]["Id"] = 200109
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][30]["LogId"] = 12000920
	--2星其它
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["ItemChance"] = 350
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["RewardItem"][1]["Id"] = 200518
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][31]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["ItemChance"] = 350
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["RewardItem"][1]["Id"] = 200538
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][32]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["ItemChance"] = 350
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["RewardItem"][1]["Id"] = 200539
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][33]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["ItemChance"] = 350
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["RewardItem"][1]["Id"] = 200550
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][34]["LogId"] = 12000920
	--飞行坐骑
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["RewardItem"][1]["Id"] = 200444
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][35]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["RewardItem"][1]["Id"] = 200492
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][36]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["RewardItem"][1]["Id"] = 200503
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][37]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["RewardItem"][1]["Id"] = 200535
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][38]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["RewardItem"][1]["Id"] = 200570
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][39]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["RewardItem"][1]["Id"] = 200571
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][40]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["ItemChance"] = 76
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["RewardItem"][1]["Id"] = 200419
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][41]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["ItemChance"] = 78
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["RewardItem"][1]["Id"] = 200422
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][42]["LogId"] = 12000920
	--走兽坐骑
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["RewardItem"][1]["Id"] = 200403
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][43]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["RewardItem"][1]["Id"] = 200411
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][44]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["RewardItem"][1]["Id"] = 200414
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][45]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["RewardItem"][1]["Id"] = 200415
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][46]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["RewardItem"][1]["Id"] = 200418
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][47]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["RewardItem"][1]["Id"] = 200438
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][48]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["RewardItem"][1]["Id"] = 200443
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][49]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["RewardItem"][1]["Id"] = 200470
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][50]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["RewardItem"][1]["Id"] = 200476
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][51]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["RewardItem"][1]["Id"] = 200491
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][52]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["RewardItem"][1]["Id"] = 200514
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][53]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["RewardItem"][1]["Id"] = 200528
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][54]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["ItemChance"] = 44
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["RewardItem"][1]["Id"] = 200541
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][55]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["ItemChance"] = 38
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["RewardItem"][1]["Id"] = 200595
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][56]["LogId"] = 12000920
	--年兽坐骑
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["RewardItem"][1]["Id"] = 200553
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][57]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["RewardItem"][1]["Id"] = 200554
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][58]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["RewardItem"][1]["Id"] = 200555
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][59]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["RewardItem"][1]["Id"] = 200556
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][60]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["RewardItem"][1]["Id"] = 200557
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][61]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["RewardItem"][1]["Id"] = 200558
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][62]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["RewardItem"][1]["Id"] = 200584
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][63]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["RewardItem"][1]["Id"] = 200585
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][64]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["RewardItem"][1]["Id"] = 200586
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][65]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["ItemChance"] = 55
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["RewardItem"][1]["Id"] = 200587
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][66]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["ItemChance"] = 60
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["RewardItem"][1]["Id"] = 200588
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][67]["LogId"] = 12000920
	--怀旧系列（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["ItemChance"] = 10
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["RewardItem"][1]["Id"] = 200481
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][68]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["ItemChance"] = 10
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["RewardItem"][1]["Id"] = 200421
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][69]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["ItemChance"] = 10
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["RewardItem"][1]["Id"] = 200471
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][70]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["ItemChance"] = 10
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["RewardItem"][1]["Id"] = 200549
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][71]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["ItemChance"] = 10
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["RewardItem"][1]["Id"] = 200563
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][72]["LogId"] = 12000920
	--一般光效（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["RewardItem"][1]["Id"] = 200500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][73]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["RewardItem"][1]["Id"] = 200589
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][74]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["RewardItem"][1]["Id"] = 200593
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][75]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["RewardItem"][1]["Id"] = 200591
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][76]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["RewardItem"][1]["Id"] = 200590
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][77]["LogId"] = 12000920
	--热门光效（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["RewardItem"][1]["Id"] = 200495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][78]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["RewardItem"][1]["Id"] = 200525
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][79]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["RewardItem"][1]["Id"] = 200543
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][80]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["RewardItem"][1]["Id"] = 200574
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][81]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["RewardItem"][1]["Id"] = 200579
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][82]["LogId"] = 12000920
	--怀旧系列（5星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["RewardItem"][1]["Id"] = 200494
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][83]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["RewardItem"][1]["Id"] = 200524
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][84]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["RewardItem"][1]["Id"] = 200517
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][85]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["RewardItem"][1]["Id"] = 200531
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][86]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["RewardItem"][1]["Id"] = 200544
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][87]["LogId"] = 12000920
	--新版光效（5星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["RewardItem"][1]["Id"] = 200572
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][88]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["RewardItem"][1]["Id"] = 200573
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][89]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["RewardItem"][1]["Id"] = 200580
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][90]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["RewardItem"][1]["Id"] = 200581
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][91]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["RewardItem"][1]["Id"] = 200596
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][92]["LogId"] = 12000920
	--一般光效（5星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["RewardItem"][1]["Id"] = 200559
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][93]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["RewardItem"][1]["Id"] = 200560
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][94]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["RewardItem"][1]["Id"] = 200592
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][95]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["ItemChance"] = 1
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["RewardItem"][1]["Id"] = 200564
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][96]["LogId"] = 12000920
	-- for i = 1,96 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306128][i]["RewardEffect"]["Effect"] = "zf2-e128"
	-- end
	
	--高级时装抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129]["DeleteItem"][1]["Id"] = 3306129
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129]["ItemChanceSum"] = 10000
	--萌系外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["RewardItem"][1]["Id"] = 193305
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["RewardItem"][1]["Id"] = 193115
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["RewardItem"][1]["Id"] = 192555
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["RewardItem"][1]["Id"] = 192345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["RewardItem"][1]["Id"] = 188975
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["RewardItem"][1]["Id"] = 192300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["RewardItem"][1]["Id"] = 184315
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][7]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["ItemChance"] = 271
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["RewardItem"][1]["Id"] = 183465
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][8]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["ItemChance"] = 267
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["RewardItem"][1]["Id"] = 193535
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][9]["LogId"] = 12000920
	--时尚外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["RewardItem"][1]["Id"] = 194300
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][10]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["RewardItem"][1]["Id"] = 192495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][11]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["RewardItem"][1]["Id"] = 184355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][12]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["RewardItem"][1]["Id"] = 184365
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][13]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["RewardItem"][1]["Id"] = 187475
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][14]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["RewardItem"][1]["Id"] = 184385
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][15]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["RewardItem"][1]["Id"] = 183485
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][16]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["RewardItem"][1]["Id"] = 188285
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][17]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["RewardItem"][1]["Id"] = 183385
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][18]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["RewardItem"][1]["Id"] = 184345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][19]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["RewardItem"][1]["Id"] = 192310
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][20]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["RewardItem"][1]["Id"] = 183395
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][21]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["RewardItem"][1]["Id"] = 183345
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][22]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["ItemChance"] = 162
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["RewardItem"][1]["Id"] = 189035
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][23]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["ItemChance"] = 167
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["RewardItem"][1]["Id"] = 188885
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][24]["LogId"] = 12000920
	--运动外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["RewardItem"][1]["Id"] = 192685
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][25]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["RewardItem"][1]["Id"] = 192675
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][26]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["RewardItem"][1]["Id"] = 192665
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][27]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["RewardItem"][1]["Id"] = 192655
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][28]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["RewardItem"][1]["Id"] = 193735
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][29]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["RewardItem"][1]["Id"] = 193745
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][30]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["RewardItem"][1]["Id"] = 193755
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][31]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["RewardItem"][1]["Id"] = 193765
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][32]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["RewardItem"][1]["Id"] = 194655
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][33]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["RewardItem"][1]["Id"] = 194665
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][34]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["ItemChance"] = 203
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["RewardItem"][1]["Id"] = 194675
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][35]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["ItemChance"] = 202
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["RewardItem"][1]["Id"] = 194685
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][36]["LogId"] = 12000920
	--复古外套（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["RewardItem"][1]["Id"] = 192785
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][37]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["RewardItem"][1]["Id"] = 192625
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][38]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["RewardItem"][1]["Id"] = 189095
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][39]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["RewardItem"][1]["Id"] = 189075
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][40]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["RewardItem"][1]["Id"] = 188675
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][41]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["RewardItem"][1]["Id"] = 188575
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][42]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["RewardItem"][1]["Id"] = 193725
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][43]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["RewardItem"][1]["Id"] = 189105
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][44]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["RewardItem"][1]["Id"] = 192425
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][45]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["ItemChance"] = 121
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["RewardItem"][1]["Id"] = 188155
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][46]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["ItemChance"] = 118
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["RewardItem"][1]["Id"] = 187605
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][47]["LogId"] = 12000920
	--经典怀旧（3星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["ItemChance"] = 221
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["RewardItem"][1]["Id"] = 193095
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][48]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["ItemChance"] = 221
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["RewardItem"][1]["Id"] = 193065
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][49]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["ItemChance"] = 221
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["RewardItem"][1]["Id"] = 194355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][50]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["ItemChance"] = 222
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["RewardItem"][1]["Id"] = 189495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][51]["LogId"] = 12000920
	--经典款（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["RewardItem"][1]["Id"] = 188495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][52]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["RewardItem"][1]["Id"] = 192565
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][53]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["RewardItem"][1]["Id"] = 189085
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][54]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["RewardItem"][1]["Id"] = 193225
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][55]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["RewardItem"][1]["Id"] = 193205
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][56]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["RewardItem"][1]["Id"] = 192575
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][57]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["ItemChance"] = 28
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["RewardItem"][1]["Id"] = 193325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][58]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["ItemChance"] = 26
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["RewardItem"][1]["Id"] = 193295
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][59]["LogId"] = 12000920
	--运动款（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["RewardItem"][1]["Id"] = 194355
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][60]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["RewardItem"][1]["Id"] = 189495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][61]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["RewardItem"][1]["Id"] = 188495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][62]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["RewardItem"][1]["Id"] = 192565
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][63]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["RewardItem"][1]["Id"] = 189085
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][64]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["RewardItem"][1]["Id"] = 193225
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][65]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["RewardItem"][1]["Id"] = 193205
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][66]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["RewardItem"][1]["Id"] = 192575
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][67]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["ItemChance"] = 22
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["RewardItem"][1]["Id"] = 193325
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][68]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["ItemChance"] = 24
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["RewardItem"][1]["Id"] = 193295
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][69]["LogId"] = 12000920
	--喵基尼【魅力版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["ItemChance"] = 4
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["RewardItem"][1]["Id"] = 193555
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][70]["LogId"] = 12000920
	--锦翎武衣【华彩版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["ItemChance"] = 4
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["RewardItem"][1]["Id"] = 189505
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][71]["LogId"] = 12000920
	--狐妖装【魅彩版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["ItemChance"] = 4
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["RewardItem"][1]["Id"] = 194405
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][72]["LogId"] = 12000920
	--暗黑魔龙战衣【炼狱版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["ItemChance"] = 9
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["RewardItem"][1]["Id"] = 189065
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][73]["LogId"] = 12000920
	--辉耀之刺【荣耀版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["ItemChance"] = 9
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["RewardItem"][1]["Id"] = 188915
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][74]["LogId"] = 12000920
	--喵基尼【璀璨版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["ItemChance"] = 4
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["RewardItem"][1]["Id"] = 193565
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][75]["LogId"] = 12000920
	--冰雪奇缘【闪耀版】
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["ItemChance"] = 4
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["RewardItem"][1]["Id"] = 193445
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][76]["LogId"] = 12000920
	-- for i = 1,51 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["RewardEffect"]["Effect"] = "task118"
	-- end
	-- for i = 52,72 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["RewardEffect"]["Effect"] = "task119"
	-- end
	-- for i = 73,76 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306129][i]["RewardEffect"]["Effect"] = "task120"
	-- end
	
	--高级坐骑抽奖包
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130]["DeleteItem"][1]["Id"] = 3306130
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130]["ItemChanceSum"] = 10000
	--飞行坐骑
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["RewardItem"][1]["Id"] = 200444
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["RewardItem"][1]["Id"] = 200492
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["RewardItem"][1]["Id"] = 200503
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][3]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["RewardItem"][1]["Id"] = 200535
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][4]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["RewardItem"][1]["Id"] = 200570
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][5]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["RewardItem"][1]["Id"] = 200571
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][6]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["ItemChance"] = 397
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["RewardItem"][1]["Id"] = 200419
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][7]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["ItemChance"] = 396
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["RewardItem"][1]["Id"] = 200422
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][8]["LogId"] = 12000920
	--走兽坐骑
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["RewardItem"][1]["Id"] = 200403
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][9]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["RewardItem"][1]["Id"] = 200411
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][10]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["RewardItem"][1]["Id"] = 200414
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][11]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["RewardItem"][1]["Id"] = 200415
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][12]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["RewardItem"][1]["Id"] = 200418
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][13]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["RewardItem"][1]["Id"] = 200438
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][14]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["RewardItem"][1]["Id"] = 200443
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][15]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["RewardItem"][1]["Id"] = 200470
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][16]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["RewardItem"][1]["Id"] = 200476
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][17]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["RewardItem"][1]["Id"] = 200491
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][18]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["RewardItem"][1]["Id"] = 200514
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][19]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["RewardItem"][1]["Id"] = 200528
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][20]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["ItemChance"] = 226
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["RewardItem"][1]["Id"] = 200541
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][21]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["ItemChance"] = 232
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["RewardItem"][1]["Id"] = 200595
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][22]["LogId"] = 12000920
	--年兽坐骑
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["RewardItem"][1]["Id"] = 200553
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][23]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["RewardItem"][1]["Id"] = 200554
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][24]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["RewardItem"][1]["Id"] = 200555
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][25]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["RewardItem"][1]["Id"] = 200556
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][26]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["RewardItem"][1]["Id"] = 200557
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][27]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["RewardItem"][1]["Id"] = 200558
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][28]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["RewardItem"][1]["Id"] = 200584
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][29]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["RewardItem"][1]["Id"] = 200585
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][30]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["RewardItem"][1]["Id"] = 200586
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][31]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["ItemChance"] = 288
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["RewardItem"][1]["Id"] = 200587
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][32]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["ItemChance"] = 290
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["RewardItem"][1]["Id"] = 200588
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][33]["LogId"] = 12000920
	--怀旧系列（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["ItemChance"] = 52
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["RewardItem"][1]["Id"] = 200481
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][34]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["ItemChance"] = 52
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["RewardItem"][1]["Id"] = 200421
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][35]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["ItemChance"] = 52
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["RewardItem"][1]["Id"] = 200471
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][36]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["ItemChance"] = 52
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["RewardItem"][1]["Id"] = 200549
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][37]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["ItemChance"] = 52
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["RewardItem"][1]["Id"] = 200563
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][38]["LogId"] = 12000920
	--一般光效（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["ItemChance"] = 26
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["RewardItem"][1]["Id"] = 200500
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][39]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["ItemChance"] = 26
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["RewardItem"][1]["Id"] = 200589
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][40]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["ItemChance"] = 26
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["RewardItem"][1]["Id"] = 200593
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][41]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["ItemChance"] = 26
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["RewardItem"][1]["Id"] = 200591
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][42]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["ItemChance"] = 26
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["RewardItem"][1]["Id"] = 200590
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][43]["LogId"] = 12000920
	--热门光效（4星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["RewardItem"][1]["Id"] = 200495
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][44]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["RewardItem"][1]["Id"] = 200525
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][45]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["RewardItem"][1]["Id"] = 200543
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][46]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["RewardItem"][1]["Id"] = 200574
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][47]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["RewardItem"][1]["Id"] = 200579
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][48]["LogId"] = 12000920
	--怀旧系列（5星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["RewardItem"][1]["Id"] = 200494
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][49]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["RewardItem"][1]["Id"] = 200524
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][50]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["RewardItem"][1]["Id"] = 200517
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][51]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["RewardItem"][1]["Id"] = 200531
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][52]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["RewardItem"][1]["Id"] = 200544
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][53]["LogId"] = 12000920
	--新版光效（5星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["RewardItem"][1]["Id"] = 200572
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][54]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["RewardItem"][1]["Id"] = 200573
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][55]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["RewardItem"][1]["Id"] = 200580
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][56]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["RewardItem"][1]["Id"] = 200581
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][57]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["RewardItem"][1]["Id"] = 200596
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][58]["LogId"] = 12000920
	--一般光效（5星）
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["RewardItem"][1]["Id"] = 200559
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][59]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["RewardItem"][1]["Id"] = 200560
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][60]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["RewardItem"][1]["Id"] = 200592
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][61]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["ItemChance"] = 5
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["RewardItem"][1]["Id"] = 200564
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][62]["LogId"] = 12000920
	-- for i = 1,62 do
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][i]["SzObj"] = "self"
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][i]["RewardEffect"] = {}
		-- tDoubleEleven2017_DAMC_Award["DrawPackage"][3306130][i]["RewardEffect"]["Effect"] = "zf2-e128"
	-- end
	
	------------------------金币包
	tDoubleEleven2017_DAMC_Award["MoneyPackage"] = {}
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["DeleteItem"][1]["Id"] = 3390005
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["RewardMoney"]["Value"] = 100000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390005]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["DeleteItem"][1]["Id"] = 3390006
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["RewardMoney"]["Value"] = 200000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390006]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["DeleteItem"][1]["Id"] = 3390007
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["RewardMoney"]["Value"] = 300000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390007]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["DeleteItem"][1]["Id"] = 3390008
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["RewardMoney"]["Value"] = 500000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390008]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["DeleteItem"][1]["Id"] = 3390009
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["RewardMoney"]["Value"] = 1500000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390009]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["DeleteItem"][1]["Id"] = 3390010
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["RewardMoney"]["Value"] = 2000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390010]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["DeleteItem"][1]["Id"] = 3390011
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["RewardMoney"]["Value"] = 5000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390011]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["DeleteItem"][1]["Id"] = 3390012
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["RewardMoney"]["Value"] = 10000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390012]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["DeleteItem"][1]["Id"] = 3390013
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["RewardMoney"]["Value"] = 1000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390013]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["DeleteItem"][1]["Id"] = 3390014
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["RewardMoney"]["Value"] = 3000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390014]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["DeleteItem"][1]["Id"] = 3390015
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["RewardMoney"]["Value"] = 5000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390015]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["DeleteItem"][1]["Id"] = 3390016
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["RewardMoney"]["Value"] = 15000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390016]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["DeleteItem"][1]["Id"] = 3390017
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["RewardMoney"]["Value"] = 20000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390017]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["DeleteItem"][1]["Id"] = 3390018
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["RewardMoney"]["Value"] = 50000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390018]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["DeleteItem"][1]["Id"] = 3390019
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["RewardMoney"] = {} 
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["RewardMoney"]["Value"] = 100000000
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["MoneyPackage"][3390019]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	------------------------气力包与赠点包
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"] = {}
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["DeleteItem"][1]["Id"] = 3306155
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["RewardStrengthValue"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["RewardStrengthValue"]["Value"] = 500
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306155]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["DeleteItem"][1]["Id"] = 3306156
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["RewardStrengthValue"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["RewardStrengthValue"]["Value"] = 1000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306156]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["DeleteItem"][1]["Id"] = 3306157
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["RewardEMoneyMono"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["RewardEMoneyMono"]["Value"] = 500
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306157]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["DeleteItem"][1]["Id"] = 3306158
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["RewardEMoneyMono"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["RewardEMoneyMono"]["Value"] = 1000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306158]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["DeleteItem"][1]["Id"] = 3306425
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["RewardStrengthValue"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["RewardStrengthValue"]["Value"] = 5000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306425]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["DeleteItem"][1]["Id"] = 3306426
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["RewardStrengthValue"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["RewardStrengthValue"]["Value"] = 10000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306426]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["DeleteItem"][1]["Id"] = 3306427
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["RewardEMoneyMono"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["RewardEMoneyMono"]["Value"] = 2000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306427]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["DeleteItem"][1]["Id"] = 3306428
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["RewardEMoneyMono"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["RewardEMoneyMono"]["Value"] = 5000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306428]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["DeleteItem"][1]["Id"] = 3306429
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["RewardEMoneyMono"] = {} 
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["RewardEMoneyMono"]["Value"] = 10000
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][3306429]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	-- 骰子奖励
local tDoubleEleven2017_DAMC_Reward = {}
	-- 金币骰子（30万）
	tDoubleEleven2017_DAMC_Reward[3306310] = {}
	tDoubleEleven2017_DAMC_Reward[3306310]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Reward[3306310]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Reward[3306310]["LogStep"] = "1[2]"
	tDoubleEleven2017_DAMC_Reward[3306310]["Limit"] = 1800000
	tDoubleEleven2017_DAMC_Reward[3306310]["RewardNoNeedTip"] = 1
	-- 1	19%	30
	tDoubleEleven2017_DAMC_Reward[3306310][1] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306310][1]["ItemChance"] = 1900
	tDoubleEleven2017_DAMC_Reward[3306310][1]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][1]["RewardMoney"]["Value"] = 300000
	tDoubleEleven2017_DAMC_Reward[3306310][1]["PlayEffect"] = 1

	-- 2	18%	60
	tDoubleEleven2017_DAMC_Reward[3306310][2] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306310][2]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306310][2]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][2]["RewardMoney"]["Value"] = 600000
	tDoubleEleven2017_DAMC_Reward[3306310][2]["PlayEffect"] = 2

	-- 3	18%	90
	tDoubleEleven2017_DAMC_Reward[3306310][3] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306310][3]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306310][3]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][3]["RewardMoney"]["Value"] = 900000
	tDoubleEleven2017_DAMC_Reward[3306310][3]["PlayEffect"] = 3

	-- 4	17%	120
	tDoubleEleven2017_DAMC_Reward[3306310][4] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306310][4]["ItemChance"] = 1700
	tDoubleEleven2017_DAMC_Reward[3306310][4]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][4]["RewardMoney"]["Value"] = 1200000
	tDoubleEleven2017_DAMC_Reward[3306310][4]["PlayEffect"] = 4

	-- 5	15%	150
	tDoubleEleven2017_DAMC_Reward[3306310][5] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306310][5]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Reward[3306310][5]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][5]["RewardMoney"]["Value"] = 1500000
	tDoubleEleven2017_DAMC_Reward[3306310][5]["PlayEffect"] = 5

	-- 6	13%	180
	tDoubleEleven2017_DAMC_Reward[3306310][6] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306310][6]["ItemChance"] = 1300
	tDoubleEleven2017_DAMC_Reward[3306310][6]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306310][6]["RewardMoney"]["Value"] = 1800000
	tDoubleEleven2017_DAMC_Reward[3306310][6]["PlayEffect"] = 6

	-- 金币骰子（300万）
	tDoubleEleven2017_DAMC_Reward[3306311] = {}
	tDoubleEleven2017_DAMC_Reward[3306311]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Reward[3306311]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Reward[3306311]["LogStep"] = "1[3]"
	tDoubleEleven2017_DAMC_Reward[3306311]["Limit"] = 18000000
	tDoubleEleven2017_DAMC_Reward[3306311]["RewardNoNeedTip"] = 1
	-- 1	19%	300
	tDoubleEleven2017_DAMC_Reward[3306311][1] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306311][1]["ItemChance"] = 1900
	tDoubleEleven2017_DAMC_Reward[3306311][1]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][1]["RewardMoney"]["Value"] = 3000000
	tDoubleEleven2017_DAMC_Reward[3306311][1]["PlayEffect"] = 1

	-- 2	18%	600
	tDoubleEleven2017_DAMC_Reward[3306311][2] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306311][2]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306311][2]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][2]["RewardMoney"]["Value"] = 6000000
	tDoubleEleven2017_DAMC_Reward[3306311][2]["PlayEffect"] = 2

	-- 3	18%	900
	tDoubleEleven2017_DAMC_Reward[3306311][3] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306311][3]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306311][3]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][3]["RewardMoney"]["Value"] = 9000000
	tDoubleEleven2017_DAMC_Reward[3306311][3]["PlayEffect"] = 3

	-- 4	17%	1200
	tDoubleEleven2017_DAMC_Reward[3306311][4] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306311][4]["ItemChance"] = 1700
	tDoubleEleven2017_DAMC_Reward[3306311][4]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][4]["RewardMoney"]["Value"] = 12000000
	tDoubleEleven2017_DAMC_Reward[3306311][4]["PlayEffect"] = 4

	-- 5	15%	1500
	tDoubleEleven2017_DAMC_Reward[3306311][5] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306311][5]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Reward[3306311][5]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][5]["RewardMoney"]["Value"] = 15000000
	tDoubleEleven2017_DAMC_Reward[3306311][5]["PlayEffect"] = 5

	-- 6	13%	1800
	tDoubleEleven2017_DAMC_Reward[3306311][6] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306311][6]["ItemChance"] = 1300
	tDoubleEleven2017_DAMC_Reward[3306311][6]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306311][6]["RewardMoney"]["Value"] = 18000000
	tDoubleEleven2017_DAMC_Reward[3306311][6]["PlayEffect"] = 6

	-- 金币骰子（3000万）
	tDoubleEleven2017_DAMC_Reward[3306312] = {}
	tDoubleEleven2017_DAMC_Reward[3306312]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Reward[3306312]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Reward[3306312]["LogStep"] = "1[4]"
	tDoubleEleven2017_DAMC_Reward[3306312]["Limit"] = 180000000
	tDoubleEleven2017_DAMC_Reward[3306312]["RewardNoNeedTip"] = 1
	-- 1	19%	3000
	tDoubleEleven2017_DAMC_Reward[3306312][1] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306312][1]["ItemChance"] = 1900
	tDoubleEleven2017_DAMC_Reward[3306312][1]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][1]["RewardMoney"]["Value"] = 30000000
	tDoubleEleven2017_DAMC_Reward[3306312][1]["PlayEffect"] = 1

	-- 2	18%	6000
	tDoubleEleven2017_DAMC_Reward[3306312][2] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306312][2]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306312][2]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][2]["RewardMoney"]["Value"] = 60000000
	tDoubleEleven2017_DAMC_Reward[3306312][2]["PlayEffect"] = 2

	-- 3	18%	9000
	tDoubleEleven2017_DAMC_Reward[3306312][3] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306312][3]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306312][3]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][3]["RewardMoney"]["Value"] = 90000000
	tDoubleEleven2017_DAMC_Reward[3306312][3]["PlayEffect"] = 3

	-- 4	17%	12000
	tDoubleEleven2017_DAMC_Reward[3306312][4] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306312][4]["ItemChance"] = 1700
	tDoubleEleven2017_DAMC_Reward[3306312][4]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][4]["RewardMoney"]["Value"] = 120000000
	tDoubleEleven2017_DAMC_Reward[3306312][4]["PlayEffect"] = 4

	-- 5	15%	15000
	tDoubleEleven2017_DAMC_Reward[3306312][5] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306312][5]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Reward[3306312][5]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][5]["RewardMoney"]["Value"] = 150000000
	tDoubleEleven2017_DAMC_Reward[3306312][5]["PlayEffect"] = 5

	-- 6	13%	18000
	tDoubleEleven2017_DAMC_Reward[3306312][6] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306312][6]["ItemChance"] = 1300
	tDoubleEleven2017_DAMC_Reward[3306312][6]["RewardMoney"] = {}
	tDoubleEleven2017_DAMC_Reward[3306312][6]["RewardMoney"]["Value"] = 180000000
	tDoubleEleven2017_DAMC_Reward[3306312][6]["PlayEffect"] = 6
	

	-- 赠点骰子
	tDoubleEleven2017_DAMC_Reward[3306313] = {}
	tDoubleEleven2017_DAMC_Reward[3306313]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Reward[3306313]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Reward[3306313]["LogStep"] = "1[4]"
	tDoubleEleven2017_DAMC_Reward[3306313]["Limit"] = 120
	tDoubleEleven2017_DAMC_Reward[3306313]["RewardNoNeedTip"] = 1
	-- 1	20%	10
	tDoubleEleven2017_DAMC_Reward[3306313][1] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306313][1]["ItemChance"] = 2000
	tDoubleEleven2017_DAMC_Reward[3306313][1]["RewardEMoneyMono"] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][1]["RewardEMoneyMono"]["Value"] = 10
	tDoubleEleven2017_DAMC_Reward[3306313][1]["PlayEffect"] = 1

	-- 2	15%	20
	tDoubleEleven2017_DAMC_Reward[3306313][2] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306313][2]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Reward[3306313][2]["RewardEMoneyMono"] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][2]["RewardEMoneyMono"]["Value"] = 20
	tDoubleEleven2017_DAMC_Reward[3306313][2]["PlayEffect"] = 2

	-- 3	15%	30
	tDoubleEleven2017_DAMC_Reward[3306313][3] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][3]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306313][3]["ItemChance"] = 1500
	tDoubleEleven2017_DAMC_Reward[3306313][3]["RewardEMoneyMono"] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][3]["RewardEMoneyMono"]["Value"] = 30
	tDoubleEleven2017_DAMC_Reward[3306313][3]["PlayEffect"] = 3

	-- 4	18%	40
	tDoubleEleven2017_DAMC_Reward[3306313][4] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][4]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306313][4]["ItemChance"] = 1800
	tDoubleEleven2017_DAMC_Reward[3306313][4]["RewardEMoneyMono"] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][4]["RewardEMoneyMono"]["Value"] = 40
	tDoubleEleven2017_DAMC_Reward[3306313][4]["PlayEffect"] = 4

	-- 5	23%	50
	tDoubleEleven2017_DAMC_Reward[3306313][5] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][5]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306313][5]["ItemChance"] = 2300
	tDoubleEleven2017_DAMC_Reward[3306313][5]["RewardEMoneyMono"] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][5]["RewardEMoneyMono"]["Value"] = 50
	tDoubleEleven2017_DAMC_Reward[3306313][5]["PlayEffect"] = 5

	-- 6	9%	500
	tDoubleEleven2017_DAMC_Reward[3306313][6] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][6]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Reward[3306313][6]["ItemChance"] = 900
	tDoubleEleven2017_DAMC_Reward[3306313][6]["RewardEMoneyMono"] = {}
	tDoubleEleven2017_DAMC_Reward[3306313][6]["RewardEMoneyMono"]["Value"] = 500
	tDoubleEleven2017_DAMC_Reward[3306313][6]["PlayEffect"] = 6
	
	
------------------------NPC处获取活动物品
local tDoubleEleven2017_DAMC_GetItem = {}
	tDoubleEleven2017_DAMC_GetItem[3306124] = {}
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardEMoney"]["Value"] = -29
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardItem"][1]["Id"] = 3306124
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306124]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306124]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306136] = {}
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardEMoney"]["Value"] = -29
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardItem"][1]["Id"] = 3306136
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306136]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306136]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306162] = {}
	tDoubleEleven2017_DAMC_GetItem[3306162]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306162]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306162]["RewardItem"][1]["Id"] = 3306162
	tDoubleEleven2017_DAMC_GetItem[3306162]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306162]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306162]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306162]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306162]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306125] = {}
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardEMoney"]["Value"] = -39
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardItem"][1]["Id"] = 3306125
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306125]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306125]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306125]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306126] = {}
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardEMoney"]["Value"] = -29
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardItem"][1]["Id"] = 3306126
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306126]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306126]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306310] = {}
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardEMoney"]["Value"] = -9
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardItem"][1]["Id"] = 3306310
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306310]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306310]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306310]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306311] = {}
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardEMoney"]["Value"] = -89
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardItem"][1]["Id"] = 3306311
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306311]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306311]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306311]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306312] = {}
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardEMoney"]["Value"] = -899
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardItem"][1]["Id"] = 3306312
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306312]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306312]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306312]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306313] = {}
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardEMoney"]["Value"] = -29
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardItem"][1]["Id"] = 3306313
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306313]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306313]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306313]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306127] = {}
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardItem"][1]["Id"] = 3306127
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306127]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306127]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306127]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306129] = {}
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardEMoney"]["Value"] = -1388
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardItem"][1]["Id"] = 3306129
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306129]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306129]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306129]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306128] = {}
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardEMoney"]["Value"] = -399
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardItem"][1]["Id"] = 3306128
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306128]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306128]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306128]["RewardEffect"]["Effect"] = "angelwing"

	tDoubleEleven2017_DAMC_GetItem[3306130] = {}
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardEMoney"]["Value"] = -1988
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardItem"][1]["Id"] = 3306130
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306130]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306130]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306130]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306111] = {}
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardItem"][1]["Id"] = 3306111
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306111]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306111]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306111]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306112] = {}
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardItem"][1]["Id"] = 3306112
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306112]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306112]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306112]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306113] = {}
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardItem"][1]["Id"] = 3306113
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306113]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306113]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306113]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306114] = {}
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardEMoney"]["Value"] = -999
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardItem"][1]["Id"] = 3306114
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306114]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306114]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306114]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306115] = {}
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardEMoney"]["Value"] = -1999
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardItem"][1]["Id"] = 3306115
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306115]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306115]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306115]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306116] = {}
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardItem"][1]["Id"] = 3306116
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306116]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306116]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306116]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306117] = {}
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardEMoney"]["Value"] = -999
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardItem"][1]["Id"] = 3306117
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306117]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306117]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306117]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306118] = {}
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardEMoney"]["Value"] = -3999
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardItem"][1]["Id"] = 3306118
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306118]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306118]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306118]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306119] = {}
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardItem"][1]["Id"] = 3306119
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306119]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306119]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306119]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306120] = {}
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardEMoney"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardEMoney"]["Value"] = -299
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardItem"][1]["Id"] = 3306120
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306120]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306120]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306120]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306151] = {}
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardItem"][1]["Id"] = 3306151
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306151]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306151]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306151]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306152] = {}
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardItem"][1]["Id"] = 3306152
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306152]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306152]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306152]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306153] = {}
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardItem"][1]["Id"] = 3306153
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306153]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306153]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306153]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306422] = {}
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardItem"][1]["Id"] = 3306422
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306422]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306422]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306422]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306423] = {}
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardItem"][1]["Id"] = 3306423
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306423]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306423]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306423]["RewardEffect"]["Effect"] = "angelwing"
	
	tDoubleEleven2017_DAMC_GetItem[3306424] = {}
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardItem"][1]["Id"] = 3306424
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardNoNeedTip"] = 1
	tDoubleEleven2017_DAMC_GetItem[3306424]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_GetItem[3306424]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_GetItem[3306424]["RewardEffect"]["Effect"] = "angelwing"
	
	
--记录使用骰子的间隔时间
local tDoubleEleven2017_DAMC_IntervalTime = {}
--记录使用外套抽奖包的间隔时间
local tDoubleEleven2017_DAMC_IntervalTime2 = {}
--emoneylog
local tDoubleEleven2017_DAMC_EmoneyLog = {}
	tDoubleEleven2017_DAMC_EmoneyLog[1] = "250	4049	%d	%d	1	"
	tDoubleEleven2017_DAMC_EmoneyLog[2] = "250	4050	%d	%d	1	"
----------------------------------逻辑部分---------------------------------------------
--转盘券寻路
function DoubleEleven2017_DAMC_FindRoulette(nItemId)
	NpcPosition_PathFind(21221)
end


--转有礼主函数
function tDoubleEleven2017_DAMC_NpcMain(nNpcId)
	local nItemId = tDoubleEleven2017_DAMC_Item["RouletteTicket"][1]
	local nItemId2 = tDoubleEleven2017_DAMC_Item["RouletteTicket"][2]
	if Item_ChkItem(nItemId2) then
		RouletteMould_Main(tDoubleEleven2017_DAMC_ItemToRoulette[nItemId2])
		return
	elseif Item_ChkItem(nItemId) then
		RouletteMould_Main(tDoubleEleven2017_DAMC_ItemToRoulette[nItemId])
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end


--购买5个未屏蔽二次确认时的检查
function DoubleEleven2017_DAMC_DrawCCC(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] * 5
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	
	local nSpace = 1
	if nItemId >= 3306127 and nItemId <= 3306130 then
		nSpace = 5
	else
		nSpace = 1
	end
	if not User_CheckLeftSpace(nSpace,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	local nEvent = tDoubleEleven2017_DAMC_Stc["EventType"]
	local nType = tDoubleEleven2017_DAMC_Stc["DataType"][nItemId]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
	--判断是否屏蔽了二次确认
	if Get_UserStatisticValue(nEvent,nType,nUserId) == 1 then
		DoubleEleven2017_DAMC_DrawPackConfirm5(nItemId)
		return
	end
	tNpcGossip[21206]["Text1511"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1511"],nNeedMoney,sItemName)
	tNpcGossip[21206]["OptionFunc1511"] = "DoubleEleven2017_DAMC_DrawPackConfirm5</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1512"] = "DoubleEleven2017_DAMC_CancelConfirm</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"15-1")
end

function DoubleEleven2017_DAMC_RouletteCCC(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] * 5
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	local nEvent = tDoubleEleven2017_DAMC_Stc["EventType"]
	local nType = tDoubleEleven2017_DAMC_Stc["DataType"][nItemId]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
	--判断是否屏蔽了二次确认
	if Get_UserStatisticValue(nEvent,nType,nUserId) == 1 then
		DoubleEleven2017_DAMC_RouletteConfirm5(nItemId)
		return
	end
	tNpcGossip[21206]["Text1511"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1511"],nNeedMoney,sItemName)
	tNpcGossip[21206]["OptionFunc1511"] = "DoubleEleven2017_DAMC_RouletteConfirm5</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1512"] = "DoubleEleven2017_DAMC_CancelConfirm</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"15-1")
end

function DoubleEleven2017_DAMC_TouZiCCC(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] * 5
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	local nEvent = tDoubleEleven2017_DAMC_Stc["EventType"]
	local nType = tDoubleEleven2017_DAMC_Stc["DataType"][nItemId]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
	--判断是否屏蔽了二次确认
	if Get_UserStatisticValue(nEvent,nType,nUserId) == 1 then
		DoubleEleven2017_DAMC_TouZiConfirm5(nItemId)
		return
	end
	tNpcGossip[21206]["Text1511"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1511"],nNeedMoney,sItemName)
	tNpcGossip[21206]["OptionFunc1511"] = "DoubleEleven2017_DAMC_TouZiConfirm5</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1512"] = "DoubleEleven2017_DAMC_CancelConfirm</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"15-1")
end


-----------------------物品逻辑
--使用月卡
function DoubleEleven2017_DAMC_UseCard(nItemId)
	local sItemName = tDoubleEleven2017_DAMC_Text["AwardName"][nItemId]
	
	if not User_CheckLeftSpace(tDoubleEleven2017_DAMC_Constant["Space"],nUserId) then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],tDoubleEleven2017_DAMC_Constant["Space"]))
		return
	end
	
	-- 掩码判断
	local nTotalEvent = tDoubleEleven2017_DAMC_ItemToStc["EventType"]
	local nTotalType = tDoubleEleven2017_DAMC_ItemToStc["DataType"][nItemId]
	local nData = Get_UserStatisticValue(nTotalEvent,nTotalType,0)
	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData % 10000
	local nNowTotalData = math.floor((nData - nNowSingleData) / 10000)
	
	if nNowTotalData >= 30 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		return
	end
	
	if nNowTotalData == 29 then
		if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
			return
		end
	end
	
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_Award["MonthCard"][nItemId]) then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["RewardSuccess"],sItemName))
	end
end

--使用抽奖包
function DoubleEleven2017_DAMC_Draw1(nItemId)
	local nUserId = Get_UserId()
	local tNewReward
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tDoubleEleven2017_DAMC_Award["DrawPackage"],nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],nSpace))
		return
	end

	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		tNewReward = RewardTemplate_NewRandom(tDoubleEleven2017_DAMC_Award["DrawPackage"],nItemId)
	end
	
	--出了最高两个奖全服公告
	if tNewReward[1]["tAward"][1]["RewardItem"] ~= nil then
		local nRewardId = tNewReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		if (nRewardId == tDoubleEleven2017_DAMC_Award["DrawPackage"][nItemId][6]["RewardItem"][1]["Id"]) or (nRewardId == tDoubleEleven2017_DAMC_Award["DrawPackage"][nItemId][7]["RewardItem"][1]["Id"]) then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward"],Get_UserName(nUserId),Get_ItemtypeName(nItemId),Get_ItemtypeName(nRewardId)))
		end
	elseif tNewReward[1]["tAward"][1]["RewardStrengthValue"] ~= nil then
		local nRewardValue = tNewReward[1]["tAward"][1]["RewardStrengthValue"]["Value"]
		if (nRewardValue == tDoubleEleven2017_DAMC_Award["DrawPackage"][nItemId][6]["RewardStrengthValue"]["Value"]) or (nRewardValue == tDoubleEleven2017_DAMC_Award["DrawPackage"][nItemId][7]["RewardStrengthValue"]["Value"]) then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopSV"],Get_UserName(nUserId),Get_ItemtypeName(nItemId),nRewardValue))
		end
	end
end

--使用外套抽奖包
function DoubleEleven2017_DAMC_Draw2(nItemId)
	local nUserId = Get_UserId()
	-- 判断使用间隔时间
	if tDoubleEleven2017_DAMC_IntervalTime2[nUserId] ~= nil and os.time() - tDoubleEleven2017_DAMC_IntervalTime2[nUserId] < tDoubleEleven2017_DAMC_Constant["IntervalTime"] then
		User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["IntervalTime2"],nUserId)
		return
	end

	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tDoubleEleven2017_DAMC_Award["DrawPackage"],nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],nSpace))
		return
	end

	--检查物品
	if Item_ChkItem(nItemId) then
		tDoubleEleven2017_DAMC_IntervalTime2[nUserId] = os.time()
		
		local nResult,tNewReward = Probabil_RandomAward(tDoubleEleven2017_DAMC_Award["DrawPackage"],nItemId)
		local nWaiTaoId = tNewReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		local sFunc = "DoubleEleven2017_DAMC_GetWaiTao</N>" .. nItemId .. "</N>" .. nWaiTaoId .. "</N>" .. nUserId
		DoubleEleven2017_DAMC_AddCoatPackageEffect(nWaiTaoId,nUserId)  --播光效
		
		
		User_SetTimer(tDoubleEleven2017_DAMC_Constant["IntervalTime"],sFunc,0,nUserId)
		
	end
end

--延时结束获得外套
function DoubleEleven2017_DAMC_GetWaiTao(nItemId,nWaiTaoId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tDoubleEleven2017_DAMC_Award["DrawPackage"],nItemId,nUserId)
	
	--检查背包
	if not bMark then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],nSpace),nUserId)
		return
	end
	
	if Item_ChkItem(nItemId,0,0,nUserId) and Item_DelItem(nItemId,0,0,nUserId) then
		Item_AddNewItem(nWaiTaoId,"0 1 3 0 0 0 0 1",nUserId)
		local sLog = "0,0," .. nItemId .. ",1,12000920,2," .. nWaiTaoId .. ",1"
		Sys_SaveActionFestivalLog(sLog,nUserId)
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["RewardSuccess"],Get_ItemtypeName(nWaiTaoId)),nUserId)
	end
end

-- 使用轮盘
function DoubleEleven2017_DAMC_UseRoulette(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if nItemId == tDoubleEleven2017_DAMC_Item["FreeRoulette"][1] or nItemId == tDoubleEleven2017_DAMC_Item["FreeRoulette"][2] or nItemId == tDoubleEleven2017_DAMC_Item["FreeRoulette"][3] or nItemId == tDoubleEleven2017_DAMC_Item["FreeRoulette"][4] or nItemId == tDoubleEleven2017_DAMC_Item["FreeRoulette"][5] or nItemId == tDoubleEleven2017_DAMC_Item["FreeRoulette"][6] then
		if not Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"]) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["RouletteOverTime"])
			end
			return
		end
	end
	
	RouletteMould_Main(tDoubleEleven2017_DAMC_ItemToRoulette[nItemId])
end

--使用马匹包
function DoubleEleven2017_DAMC_GetHorse(nItemId)
	local nUserId = Get_UserId()
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_Award["HorsePackage"][nItemId]) then
		if nItemId == 3306143 then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward2"],Get_UserName(nUserId)))
		end
	end
end

--使用+6马匹包
function DoubleEleven2017_DAMC_GetAmazingHorse(nItemId)
	local nUserId = Get_UserId()
	local tNewReward
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tDoubleEleven2017_DAMC_Award["HorsePackage"],nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],nSpace))
		return
	end

	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		tNewReward = RewardTemplate_NewRandom(tDoubleEleven2017_DAMC_Award["HorsePackage"],nItemId)
		if tNewReward[1]["tAward"][1]["ItemChance"] == tDoubleEleven2017_DAMC_Award["HorsePackage"][nItemId][2]["ItemChance"] then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward33"],Get_UserName(nUserId)))
		else
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward3"],Get_UserName(nUserId)))
		end
	end
end

--使用金币包
function DoubleEleven2017_DAMC_GetMoney(nItemId)
	local nUserId = Get_UserId()
	local nNum = tDoubleEleven2017_DAMC_Award["MoneyPackage"][nItemId]["RewardMoney"]["Value"]
	-- 判断银两上限
	if not User_CanPutMoney2Bag(nNum,nUserId) then
		User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["Limit"]["Money"],nUserId)
		return
	end
	
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_Award["MoneyPackage"][nItemId]) then
		if nItemId == 3390011 or nItemId == 3390012 or nItemId == 3390018 or nItemId == 3390019 then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopMoney"],Get_UserName(nUserId),tDoubleEleven2017_DAMC_Text["MoneyRoulette"],tDoubleEleven2017_DAMC_Award["MoneyPackage"][nItemId]["RewardMoney"]["Value"]))
		end
	end
end

--使用气力包及赠点包
function DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
	local nUserId = Get_UserId()
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][nItemId]) then
		if nItemId == 3306155 or nItemId == 3306156 or nItemId == 3306425 or nItemId == 3306426 then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopSV"],Get_UserName(nUserId),tDoubleEleven2017_DAMC_Text["SVRoulette"],tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][nItemId]["RewardStrengthValue"]["Value"]))
		elseif nItemId == 3306157 or nItemId == 3306158 or nItemId == 3306428 or nItemId == 3306429 then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopEMM"],Get_UserName(nUserId),tDoubleEleven2017_DAMC_Text["EMMRoulette"],tDoubleEleven2017_DAMC_Award["SVorEMMPackage"][nItemId]["RewardEMoneyMono"]["Value"]))
		end
	end
end

--使用新打包物品
function DoubleEleven2017_DAMC_NewPackage(nItemId)
	RewardTemplate_UseItem(tDoubleEleven2017_DAMC_Award[nItemId])
end

--使用翻牌器
function DoubleEleven2017_DAMC_OpenCards(nUserId,nType)
	local nUserId = nUserId or Get_UserId()
	local nItemId = tDoubleEleven2017_DAMC_Item["CardsLottery"]["Id"]
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"]) then
		if not Item_ChkItem(nItemId,1,0,nUserId) then
			return
		end
		if not Item_DelAllItemByType(nItemId,nUserId) then
			return
		end
		User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["OverTime"])
		return
	end
	
	User_OpenRewardInterface(nType,nUserId)
end

--使用骰子
function DoubleEleven2017_DAMC_UseDice(nItemId)
	local nUserId = Get_UserId()
	-- 判断使用间隔时间
	if tDoubleEleven2017_DAMC_IntervalTime[nUserId] ~= nil and os.time() - tDoubleEleven2017_DAMC_IntervalTime[nUserId] < tDoubleEleven2017_DAMC_Constant["IntervalTime"] then
		User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["IntervalTime"],nUserId)
		return
	end
	
	local nNum = tDoubleEleven2017_DAMC_Reward[nItemId]["Limit"]
	-- 判断银两上限
	if nItemId == tDoubleEleven2017_DAMC_Item["Touzi"][1] or nItemId == tDoubleEleven2017_DAMC_Item["Touzi"][2] or nItemId == tDoubleEleven2017_DAMC_Item["Touzi"][3] then
		if not User_CanPutMoney2Bag(nNum,nUserId) then
			User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["Limit"]["Money"],nUserId)
			return
		end
	end
	
	-- 判断赠点上限
	if nItemId == tDoubleEleven2017_DAMC_Item["EMoneyMonoTouzi"][1] then
		if (Get_UserMonoEMoney() + nNum) > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tDoubleEleven2017_DAMC_Text["Limit"]["EMoneyMono"],nUserId)
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		tDoubleEleven2017_DAMC_IntervalTime[nUserId] = os.time()
		local tAward = RewardTemplate_NewRandom(tDoubleEleven2017_DAMC_Reward,nItemId)
		local nIndex = tAward[1]["tAward"][1]["PlayEffect"]
		local sEffect = tDoubleEleven2017_DAMC_Effect[nIndex]
		
		-- 播光效
		if sEffect ~= nil then
			local nMapId = Get_UserMapId()
			local nPosX = Get_UserPositionX()
			local nPosY = Get_UserPositionY()
			
			Map_Effect(nMapId,nPosX-2,nPosY-2,sEffect)
		end
		
		-- 给提示
		local sItemName = Get_ItemtypeName(nItemId)
		local nMoney = 0
		if nItemId == tDoubleEleven2017_DAMC_Item["EMoneyMonoTouzi"][1] then
			nMoney = tAward[1]["tAward"][1]["RewardEMoneyMono"]["Value"]
		elseif nItemId == tDoubleEleven2017_DAMC_Item["Touzi"][1] or nItemId == tDoubleEleven2017_DAMC_Item["Touzi"][2] or nItemId == tDoubleEleven2017_DAMC_Item["Touzi"][3] then
			nMoney = tAward[1]["tAward"][1]["RewardMoney"]["Value"]
		end
		
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["Reward"][nItemId],sItemName,nIndex,nMoney),nUserId)
		
		-- 金币骰子（3000万）摇到6点全服公告
		if nIndex == 6 and nItemId == 3306312 then
			Sys_TalkBroadcast(string.format(tDoubleEleven2017_DAMC_Text["FullService"],Get_UserName(nUserId)))
		end
		
		-- 赠点骰子摇到6点全服公告
		if nIndex == 6 and nItemId == 3306313 then
			Sys_TalkBroadcast(string.format(tDoubleEleven2017_DAMC_Text["FullService2"],Get_UserName(nUserId)))
		end
	end
end


-----------------------NPC逻辑
-----------------------抽奖包部分
--购买抽奖包
function DoubleEleven2017_DAMC_GetDrawPack(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end

	--重设二次确认对白
	tNpcGossip[21206]["Text1011"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1011"],sItemName,sTopAwardName)
	tNpcGossip[21206]["Text1012"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1012"],nNeedMoney,sItemName)
	tNpcGossip[21206]["Text1013"] = tDoubleEleven2017_DAMC_Text[21206]["Text1013"]
	tNpcGossip[21206]["Option1015"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1115"],nNeedMoney)
	tNpcGossip[21206]["Option1016"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1116"],5 * nNeedMoney)
	tNpcGossip[21206]["OptionFunc1015"] = "DoubleEleven2017_DAMC_DrawPackConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1016"] = "DoubleEleven2017_DAMC_DrawCCC</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"10-1")
end

--二次确认
function DoubleEleven2017_DAMC_DrawPackConfirm(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
		if nNeedMoney > 0 then
			Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],nNeedMoney,nNeedMoney))
			DoubleEleven2017_RecordPay(nNeedMoney)
		end
	end
	
	tNpcGossip[21206]["Text1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1411"],nNeedMoney,1,sItemName)
	tNpcGossip[21206]["Option1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1411"],nNeedMoney)
	tNpcGossip[21206]["Option1412"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1412"],nNeedMoney * 5)
	tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_DrawPackConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_DrawPackConfirm5</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"14-1")
end

--购买5个
function DoubleEleven2017_DAMC_DrawPackConfirm5(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] * 5
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	
	if nItemId >= 3306124 and nItemId <= 3306126 then
		if not User_CheckLeftSpace(1,nUserId) then
			tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
			LinkNpcGossipFunc_New(21206,"9-1")
			return
		end
	elseif nItemId >= 3306127 and nItemId <= 3306130 then
		if not User_CheckLeftSpace(5,nUserId) then
			tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],tDoubleEleven2017_DAMC_Text["DrawPackage"])
			LinkNpcGossipFunc_New(21206,"9-1")
			return
		end
	end
	
	for i = 1,5 do
		if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
			if nNeedMoney > 0 then
				Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],nNeedMoney/5,nNeedMoney/5))
				DoubleEleven2017_RecordPay(nNeedMoney/5)
			end
		end
	end
	
	tNpcGossip[21206]["Text1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1411"],nNeedMoney,5,sItemName)
	tNpcGossip[21206]["Option1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1411"],math.floor(nNeedMoney/5))
	tNpcGossip[21206]["Option1412"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1412"],nNeedMoney)
	tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_DrawPackConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_DrawPackConfirm5</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"14-1")
end


-----------------------轮盘部分
--购买轮盘
function DoubleEleven2017_DAMC_GetRoulette(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	--重设二次确认对白
	tNpcGossip[21206]["Text1111"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1111"],sItemName,sTopAwardName)
	tNpcGossip[21206]["Text1112"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1112"],nNeedMoney,sItemName)
	tNpcGossip[21206]["Text1113"] = tDoubleEleven2017_DAMC_Text[21206]["Text1113"]
	tNpcGossip[21206]["Option1115"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1115"],nNeedMoney)
	tNpcGossip[21206]["Option1116"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1116"],5 * nNeedMoney)
	tNpcGossip[21206]["OptionFunc1115"] = "DoubleEleven2017_DAMC_RouletteConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1116"] = "DoubleEleven2017_DAMC_RouletteCCC</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"11-1")
end

--二次确认
function DoubleEleven2017_DAMC_RouletteConfirm(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
		if nNeedMoney > 0 then
			Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],nNeedMoney,nNeedMoney))
			DoubleEleven2017_RecordPay(nNeedMoney)
		end
	end

	tNpcGossip[21206]["Text1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1411"],nNeedMoney,1,sItemName)
	tNpcGossip[21206]["Option1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1411"],nNeedMoney)
	tNpcGossip[21206]["Option1412"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1412"],nNeedMoney * 5)
	tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_RouletteConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_RouletteConfirm5</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"14-1")
end

--购买5个
function DoubleEleven2017_DAMC_RouletteConfirm5(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] * 5
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	for i = 1,5 do
		if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
			if nNeedMoney > 0 then
				Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],nNeedMoney/5,nNeedMoney/5))
				DoubleEleven2017_RecordPay(nNeedMoney/5)
			end
		end
	end
	
	tNpcGossip[21206]["Text1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1411"],nNeedMoney,5,sItemName)
	tNpcGossip[21206]["Option1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1411"],math.floor(nNeedMoney/5))
	tNpcGossip[21206]["Option1412"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1412"],nNeedMoney)
	tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_RouletteConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_RouletteConfirm5</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"14-1")
end


-----------------------骰子部分
--购买骰子
function DoubleEleven2017_DAMC_GetTouZi(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	--重设二次确认对白
	tNpcGossip[21206]["Text1211"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1211"],sItemName,sTopAwardName)
	tNpcGossip[21206]["Text1212"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1212"],nNeedMoney,sItemName)
	tNpcGossip[21206]["Text1213"] = tDoubleEleven2017_DAMC_Text[21206]["Text1213"]
	tNpcGossip[21206]["Option1215"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1215"],nNeedMoney)
	tNpcGossip[21206]["Option1216"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1216"],5 * nNeedMoney)
	tNpcGossip[21206]["OptionFunc1215"] = "DoubleEleven2017_DAMC_TouZiConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1216"] = "DoubleEleven2017_DAMC_TouZiCCC</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"12-1")
end

--二次确认
function DoubleEleven2017_DAMC_TouZiConfirm(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
		if nNeedMoney > 0 then
			Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],nNeedMoney,nNeedMoney))
			DoubleEleven2017_RecordPay(nNeedMoney)
		end
	end
	
	tNpcGossip[21206]["Text1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1411"],nNeedMoney,1,sItemName)
	tNpcGossip[21206]["Option1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1411"],nNeedMoney)
	tNpcGossip[21206]["Option1412"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1412"],nNeedMoney * 5)
	tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_TouZiConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_TouZiConfirm5</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"14-1")
end

--购买5个
function DoubleEleven2017_DAMC_TouZiConfirm5(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] * 5
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21206]["Text811"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text811"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21206,"8-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end
	
	for i = 1,5 do
		if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
			if nNeedMoney > 0 then
				Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],nNeedMoney/5,nNeedMoney/5))
				DoubleEleven2017_RecordPay(nNeedMoney/5)
			end
		end
	end
	
	tNpcGossip[21206]["Text1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text1411"],nNeedMoney,5,sItemName)
	tNpcGossip[21206]["Option1411"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1411"],math.floor(nNeedMoney/5))
	tNpcGossip[21206]["Option1412"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Option1412"],nNeedMoney)
	tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_TouZiConfirm</N>" .. nItemId
	tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_TouZiConfirm5</N>" .. nItemId
	LinkNpcGossipFunc_New(21206,"14-1")
end


-----------------------其他部分
--获得翻牌器
function DoubleEleven2017_DAMC_GetTarot(nItemId)
	local nUserId = Get_UserId()
	local sItemName = Get_ItemtypeName(nItemId)

	if not User_CheckLeftSpace(1,nUserId) then
		tNpcGossip[21207]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21207]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21207,"9-1")
		return
	end
	
	--判断是否已有牌
	if Item_ChkItem(nItemId,0,0,nUserId) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["HaveTarot"])
		return
	end

	RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId])
end

--购买月卡
function DoubleEleven2017_DAMC_BuyMonthCard(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sTopAwardName = tDoubleEleven2017_DAMC_Text["PackTopAward"][nItemId]
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21213]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21213]["Text911"],nNeedMoney,sItemName)
				LinkNpcGossipFunc_New(21213,"9-1")
				return
			end
		end
	end
	if not User_CheckLeftSpace(1,nUserId) then
		LinkNpcGossipFunc_New(21213,"10-1")
		return
	end

	--重设二次确认对白
	tNpcGossip[21213]["Text1111"] = string.format(tDoubleEleven2017_DAMC_Text[21213]["Text1111"],nNeedMoney,sItemName)
	tNpcGossip[21213]["Option1111"] = string.format(tDoubleEleven2017_DAMC_Text[21213]["Option1111"],nNeedMoney)
	tNpcGossip[21213]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm</N>" .. nItemId
	LinkNpcGossipFunc_New(21213,"11-1")
end

--二次确认
function DoubleEleven2017_DAMC_MonthCardConfirm(nItemId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	local sItemName = Get_ItemtypeName(nItemId)
	if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] ~= nil then
		if tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"] < 0 then
			nNeedMoney = -tDoubleEleven2017_DAMC_GetItem[nItemId]["RewardEMoney"]["Value"]
			if nEMoney - nNeedMoney < 0 then
				--重设对白
				tNpcGossip[21213]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21213]["Text911"],nNeedMoney,sItemName)
				
				LinkNpcGossipFunc_New(21213,"9-1")
				return
			end
		end
	end
	
	if Task_ChkStatistic(tDoubleEleven2017_DAMC_ItemToStc["EventType"],tDoubleEleven2017_DAMC_ItemToStc["DataType"][nItemId],nUserId) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["HaveMonthCard"])
		return
	end
	
	--检查背包
	local nSpace
	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"],0,0,nUserId) then
		nSpace = 2
	else
		nSpace = 1
	end
	
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(21213,"10-1")
		return
	end
	
	Task_SetStatistic(tDoubleEleven2017_DAMC_ItemToStc["EventType"],tDoubleEleven2017_DAMC_ItemToStc["DataType"][nItemId],0,1,nUserId)
	
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
		if nNeedMoney > 0 then
			Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[1],nNeedMoney,nNeedMoney))
			DoubleEleven2017_RecordPay(nNeedMoney)
		end
		
		if nSpace == 2 then
			Item_AddNewItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"],tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Attr"])
			local sLog = "0,0,0,0,12000920,2,3306154,1"
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["GetMonthCardAndBag"],sItemName))
		elseif nSpace == 1 then
			User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["GetMonthCard"],sItemName))
		end
	end
end


--领取月卡收纳包
function DoubleEleven2017_DAMC_GetBag()
	local nUserId = Get_UserId()
	local nItemId = tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]

	--检查背包
	local nSpace = 1

	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tDoubleEleven2017_DAMC_Text["FullBag"],nSpace,Get_ItemtypeName(nItemId)))
		return
	end

	Item_AddNewItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"],tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Attr"])
	local sLog = "0,0,0,0,12000920,2,3306154,1"
	Sys_SaveActionFestivalLog(sLog)
	Sys_MsgBox(tDoubleEleven2017_DAMC_Text["GetBag"])
end


--转有礼的转盘
function DoubleEleven2017_DAMC_NpcRoulette()
	local nItemId = tDoubleEleven2017_DAMC_Item["RouletteTicket"][1]
	local nItemId2 = tDoubleEleven2017_DAMC_Item["RouletteTicket"][2]
	if Item_ChkItem(nItemId2) then
		RouletteMould_Main(tDoubleEleven2017_DAMC_ItemToRoulette[nItemId2])
		return
	elseif Item_ChkItem(nItemId) then
		RouletteMould_Main(tDoubleEleven2017_DAMC_ItemToRoulette[nItemId])
		return
	end
	LinkNpcGossipFunc_New(21221,"2-1")
end

--获取免费转盘
function DoubleEleven2017_DAMC_GetFreeRoulette(nItemId)
	local nUserId = Get_UserId()
	local sItemName = Get_ItemtypeName(nItemId)

	if not User_CheckLeftSpace(tDoubleEleven2017_DAMC_Constant["Space"],nUserId) then
		tNpcGossip[21206]["Text911"] = string.format(tDoubleEleven2017_DAMC_Text[21206]["Text911"],sItemName)
		LinkNpcGossipFunc_New(21206,"9-1")
		return
	end

	--判断是否已有轮盘
	if Item_ChkItem(nItemId,0,0,nUserId) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["HaveRoulette"],"</F>LinkNpcGossipFunc_New</N>21206</S>1-2")
		return
	end
	
	if RewardTemplate_UseItem(tDoubleEleven2017_DAMC_GetItem[nItemId]) then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["RewardSuccess"],sItemName))
	end
end

--屏蔽二次确认
function DoubleEleven2017_DAMC_CancelConfirm(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tDoubleEleven2017_DAMC_Stc["EventType"]
	local nType = tDoubleEleven2017_DAMC_Stc["DataType"][nItemId]
	--判断是否屏蔽了二次确认
	if Get_UserStatisticValue(nEvent,nType,nUserId) == 1 then
		return
	end
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)

	Sys_MsgBox(tDoubleEleven2017_DAMC_Text["ConfirmCancelSuc"])
end

--玩家开外套包加光效
function DoubleEleven2017_DAMC_AddCoatPackageEffect(nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nLevel = tDoubleEleven2017_DAMC_ItemToRank[nItemId]
	User_EffectAdd(tDoubleEleven2017_DAMC_Effect2[nLevel]["EffectObj"],tDoubleEleven2017_DAMC_Effect2[nLevel]["Effect"],nUserId)
end

----------------------------------NPC部分---------------------------------------------
--tNpcFace = {}
-- tNpcFace[5860] = 46
-- tNpcFace[5881] = 46
-- tNpcFace[5882] = 46
-- tNpcFace[5883] = 46
-- tNpcFace[5884] = 46
-- tNpcFace[5885] = 46
-- tNpcFace[5886] = 46

-- tNpcFace[5861] = 44
-- tNpcFace[5887] = 44
-- tNpcFace[5888] = 44
-- tNpcFace[5889] = 44
-- tNpcFace[5890] = 44
-- tNpcFace[5891] = 44
-- tNpcFace[5892] = 44
-- tNpcFace[5893] = 44

-- tNpcFace[298] = 1093


----------------------------周星星
-------------------------主会场
-- tNpcGossip = {}
-- tNpcGossip[21206] = {}
-- tNpcGossip[21206] = tNpcGossip[21206] or DefaultNpc:new{}
-- tNpcGossip[21206]["OptionHidden"] = 1
-- tNpcGossip[21206]["Text1-1"] = {111}
-- tNpcGossip[21206]["tOption1-1"] = {111}
-- tNpcGossip[21206]["ChkFunc1-1"]= function()
	-- return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
-- end
-- tNpcGossip[21206]["Text1-2"] = {121,122,123,124,125}
-- tNpcGossip[21206]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
-- tNpcGossip[21206]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
-- tNpcGossip[21206]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
-- tNpcGossip[21206]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text124"]
-- tNpcGossip[21206]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text125"]
-- tNpcGossip[21206]["tOption1-2"] = {1311,1314,1312,1315,1313,1316}
-- tNpcGossip[21206]["ChkFunc1-2"]= function()
	-- local tHave = {}
	-- local tNoHave = {}
	-- tHave[3306151] = "Option1311"
	-- tHave[3306152] = "Option1312"
	-- tHave[3306153] = "Option1313"
	-- tHave[3306422] = "Option1314"
	-- tHave[3306423] = "Option1315"
	-- tHave[3306424] = "Option1316"
	-- tNoHave[3306151] = "Option-1311"
	-- tNoHave[3306152] = "Option-1312"
	-- tNoHave[3306153] = "Option-1313"
	-- tNoHave[3306422] = "Option-1314"
	-- tNoHave[3306423] = "Option-1315"
	-- tNoHave[3306424] = "Option-1316"
	
	--判断是否已有轮盘
	-- for i = 3306151,3306153 do
		-- if Item_ChkItem(i,0,0,nUserId) then
			-- tNpcGossip[21206][(tHave[i])] = tDoubleEleven2017_DAMC_Text[21206][(tHave[i])]
		-- else
			-- tNpcGossip[21206][(tHave[i])] = tDoubleEleven2017_DAMC_Text[21206][(tNoHave[i])]
		-- end
	-- end
		
	-- 判断是否已有轮盘
	-- for i = 3306422,3306424 do
		-- if Item_ChkItem(i,0,0,nUserId) then
			-- tNpcGossip[21206][(tHave[i])] = tDoubleEleven2017_DAMC_Text[21206][(tHave[i])]
		-- else
			-- tNpcGossip[21206][(tHave[i])] = tDoubleEleven2017_DAMC_Text[21206][(tNoHave[i])]
		-- end
	-- end
		
	-- return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
-- end
-- tNpcGossip[21206]["Text1-3"] = {131}
-- tNpcGossip[21206]["tOption1-3"] = {131}
-- tNpcGossip[21206]["ChkFunc1-3"]= function()
	-- return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
-- end
--幸运翻倍专区
-- tNpcGossip[21206]["Option1311"] = tDoubleEleven2017_DAMC_Text[21206]["Option1311"]
-- tNpcGossip[21206]["Option1312"] = tDoubleEleven2017_DAMC_Text[21206]["Option1312"]
-- tNpcGossip[21206]["Option1313"] = tDoubleEleven2017_DAMC_Text[21206]["Option1313"]
-- tNpcGossip[21206]["Option1314"] = tDoubleEleven2017_DAMC_Text[21206]["Option1314"]
-- tNpcGossip[21206]["Option1315"] = tDoubleEleven2017_DAMC_Text[21206]["Option1315"]
-- tNpcGossip[21206]["Option1316"] = tDoubleEleven2017_DAMC_Text[21206]["Option1316"]
-- tNpcGossip[21206]["OptionFunc1311"] = "DoubleEleven2017_DAMC_GetFreeRoulette</N>3306151"
-- tNpcGossip[21206]["OptionFunc1312"] = "DoubleEleven2017_DAMC_GetFreeRoulette</N>3306152"
-- tNpcGossip[21206]["OptionFunc1313"] = "DoubleEleven2017_DAMC_GetFreeRoulette</N>3306153"
-- tNpcGossip[21206]["OptionFunc1314"] = "DoubleEleven2017_DAMC_GetFreeRoulette</N>3306422"
-- tNpcGossip[21206]["OptionFunc1315"] = "DoubleEleven2017_DAMC_GetFreeRoulette</N>3306423"
-- tNpcGossip[21206]["OptionFunc1316"] = "DoubleEleven2017_DAMC_GetFreeRoulette</N>3306424"
----天石不足
--tNpcGossip[21206]["Text8-1"] = {811}
--tNpcGossip[21206]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21206]["tOption8-1"] = {811}
--tNpcGossip[21206]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21206]["Text9-1"] = {911}
--tNpcGossip[21206]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text911"]
--tNpcGossip[21206]["tOption9-1"] = {911}
--tNpcGossip[21206]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21206]["Text10-1"] = {1014,1011,1012,1013,1015}
--tNpcGossip[21206]["Text1014"] = tDoubleEleven2017_DAMC_Text[21206]["Text1014"]
--tNpcGossip[21206]["Text1011"] = tDoubleEleven2017_DAMC_Text[21206]["Text1011"]
--tNpcGossip[21206]["Text1012"] = tDoubleEleven2017_DAMC_Text[21206]["Text1012"]
--tNpcGossip[21206]["Text1013"] = tDoubleEleven2017_DAMC_Text[21206]["Text1013"]
--tNpcGossip[21206]["Text1015"] = tDoubleEleven2017_DAMC_Text[21206]["Text1015"]
--tNpcGossip[21206]["tOption10-1"] = {1015,1016,1014}
--tNpcGossip[21206]["Option1011"] = tDoubleEleven2017_DAMC_Text[21206]["Option1011"]
--tNpcGossip[21206]["Option1012"] = tDoubleEleven2017_DAMC_Text[21206]["Option1012"]
--tNpcGossip[21206]["Option1013"] = tDoubleEleven2017_DAMC_Text[21206]["Option1013"]
--tNpcGossip[21206]["Option1014"] = tDoubleEleven2017_DAMC_Text[21206]["Option1014"]
--tNpcGossip[21206]["Option1015"] = tDoubleEleven2017_DAMC_Text[21206]["Option1015"]
--tNpcGossip[21206]["Option1016"] = tDoubleEleven2017_DAMC_Text[21206]["Option1016"]
--tNpcGossip[21206]["OptionFunc1011"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21206]["OptionFunc1013"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
--tNpcGossip[21206]["Text11-1"] = {1114,1111,1112,1113,1115}
--tNpcGossip[21206]["Text1114"] = tDoubleEleven2017_DAMC_Text[21206]["Text1114"]
--tNpcGossip[21206]["Text1111"] = tDoubleEleven2017_DAMC_Text[21206]["Text1111"]
--tNpcGossip[21206]["Text1112"] = tDoubleEleven2017_DAMC_Text[21206]["Text1112"]
--tNpcGossip[21206]["Text1113"] = tDoubleEleven2017_DAMC_Text[21206]["Text1113"]
--tNpcGossip[21206]["Text1115"] = tDoubleEleven2017_DAMC_Text[21206]["Text1115"]
--tNpcGossip[21206]["tOption11-1"] = {1115,1116,1114}
--tNpcGossip[21206]["Option1111"] = tDoubleEleven2017_DAMC_Text[21206]["Option1111"]
--tNpcGossip[21206]["Option1112"] = tDoubleEleven2017_DAMC_Text[21206]["Option1112"]
--tNpcGossip[21206]["Option1113"] = tDoubleEleven2017_DAMC_Text[21206]["Option1113"]
--tNpcGossip[21206]["Option1114"] = tDoubleEleven2017_DAMC_Text[21206]["Option1114"]
--tNpcGossip[21206]["Option1115"] = tDoubleEleven2017_DAMC_Text[21206]["Option1115"]
--tNpcGossip[21206]["Option1116"] = tDoubleEleven2017_DAMC_Text[21206]["Option1116"]
--tNpcGossip[21206]["OptionFunc1111"] = "DoubleEleven2017_DAMC_RouletteConfirm"
--tNpcGossip[21206]["OptionFunc1113"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
--tNpcGossip[21206]["Text12-1"] = {1214,1211,1212,1213,1215}
--tNpcGossip[21206]["Text1214"] = tDoubleEleven2017_DAMC_Text[21206]["Text1214"]
--tNpcGossip[21206]["Text1211"] = tDoubleEleven2017_DAMC_Text[21206]["Text1211"]
--tNpcGossip[21206]["Text1212"] = tDoubleEleven2017_DAMC_Text[21206]["Text1212"]
--tNpcGossip[21206]["Text1213"] = tDoubleEleven2017_DAMC_Text[21206]["Text1213"]
--tNpcGossip[21206]["Text1215"] = tDoubleEleven2017_DAMC_Text[21206]["Text1215"]
--tNpcGossip[21206]["tOption12-1"] = {1215,1216,1214}
--tNpcGossip[21206]["Option1211"] = tDoubleEleven2017_DAMC_Text[21206]["Option1211"]
--tNpcGossip[21206]["Option1212"] = tDoubleEleven2017_DAMC_Text[21206]["Option1212"]
--tNpcGossip[21206]["Option1213"] = tDoubleEleven2017_DAMC_Text[21206]["Option1213"]
--tNpcGossip[21206]["Option1214"] = tDoubleEleven2017_DAMC_Text[21206]["Option1214"]
--tNpcGossip[21206]["Option1215"] = tDoubleEleven2017_DAMC_Text[21206]["Option1215"]
--tNpcGossip[21206]["Option1216"] = tDoubleEleven2017_DAMC_Text[21206]["Option1216"]
--tNpcGossip[21206]["OptionFunc1211"] = "DoubleEleven2017_DAMC_TouZiConfirm"
--tNpcGossip[21206]["OptionFunc1213"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
----继续购买
--tNpcGossip[21206]["Text14-1"] = {1411}
--tNpcGossip[21206]["Text1411"] = tDoubleEleven2017_DAMC_Text[21206]["Text1411"]
--tNpcGossip[21206]["tOption14-1"] = {1411,1412,1413}
--tNpcGossip[21206]["Option1411"] = tDoubleEleven2017_DAMC_Text[21206]["Option1411"]
--tNpcGossip[21206]["Option1412"] = tDoubleEleven2017_DAMC_Text[21206]["Option1412"]
--tNpcGossip[21206]["Option1413"] = tDoubleEleven2017_DAMC_Text[21206]["Option1413"]
--tNpcGossip[21206]["OptionFunc1411"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21206]["OptionFunc1412"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--
----买5个二次确认
--tNpcGossip[21206]["Text15-1"] = {1511}
--tNpcGossip[21206]["Text1511"] = tDoubleEleven2017_DAMC_Text[21206]["Text1511"]
--tNpcGossip[21206]["tOption15-1"] = {1511,1512,1513}
--tNpcGossip[21206]["Option1511"] = tDoubleEleven2017_DAMC_Text[21206]["Option1511"]
--tNpcGossip[21206]["Option1512"] = tDoubleEleven2017_DAMC_Text[21206]["Option1512"]
--tNpcGossip[21206]["Option1513"] = tDoubleEleven2017_DAMC_Text[21206]["Option1513"]
--tNpcGossip[21206]["OptionFunc1511"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--tNpcGossip[21206]["OptionFunc1512"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
--
---------------------------赤炼石会场
--tNpcGossip[21207] = tNpcGossip[21207] or DefaultNpc:new{}
--tNpcGossip[21207]["OptionHidden"] = 1
--tNpcGossip[21207]["Text1-1"] = {111}
--tNpcGossip[21207]["tOption1-1"] = {111}
--tNpcGossip[21207]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21207]["Text1-2"] = {121,122,123,124,125,126,127,128}
--tNpcGossip[21207]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
--tNpcGossip[21207]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
--tNpcGossip[21207]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
--
--tNpcGossip[21207]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text212"]
--tNpcGossip[21207]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text213"]
--tNpcGossip[21207]["Text126"] = tDoubleEleven2017_DAMC_Text[21206]["Text214"]
--tNpcGossip[21207]["Text127"] = tDoubleEleven2017_DAMC_Text[21206]["Text215"]
--tNpcGossip[21207]["Text128"] = tDoubleEleven2017_DAMC_Text[21206]["Text216"]
--
--tNpcGossip[21207]["tOption1-2"] = {211,212,213}
--tNpcGossip[21207]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21207]["Text1-3"] = {131}
--tNpcGossip[21207]["tOption1-3"] = {131}
--tNpcGossip[21207]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----追加道具专区
--tNpcGossip[21207]["Option211"] = tDoubleEleven2017_DAMC_Text[21206]["Option211"]
--tNpcGossip[21207]["Option212"] = tDoubleEleven2017_DAMC_Text[21206]["Option212"]
--tNpcGossip[21207]["Option213"] = tDoubleEleven2017_DAMC_Text[21206]["Option213"]
--tNpcGossip[21207]["OptionFunc211"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306124"  --赤炼石幸运包
--tNpcGossip[21207]["OptionFunc212"] = "DoubleEleven2017_DAMC_GetRoulette</N>3306136"  --神奇骑宠轮盘
--tNpcGossip[21207]["OptionFunc213"] = "DoubleEleven2017_DAMC_GetTarot</N>3306162"  --赤炼石好运牌
----天石不足
--tNpcGossip[21207]["Text8-1"] = {811}
--tNpcGossip[21207]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21207]["tOption8-1"] = {811}
--tNpcGossip[21207]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21207]["Text9-1"] = {911}
--tNpcGossip[21207]["Text911"] = tDoubleEleven2017_DAMC_Text[21207]["Text911"]
--tNpcGossip[21207]["tOption9-1"] = {911}
--tNpcGossip[21207]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21207]["Text10-1"] = {1012}
--tNpcGossip[21207]["Text1012"] = tDoubleEleven2017_DAMC_Text[21206]["Text1012"]
--tNpcGossip[21207]["tOption10-1"] = {1011,1012,1013}
--tNpcGossip[21207]["Option1011"] = tDoubleEleven2017_DAMC_Text[21206]["Option1011"]
--tNpcGossip[21207]["Option1012"] = tDoubleEleven2017_DAMC_Text[21206]["Option1012"]
--tNpcGossip[21207]["Option1013"] = tDoubleEleven2017_DAMC_Text[21206]["Option1013"]
--tNpcGossip[21207]["OptionFunc1011"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21207]["OptionFunc1012"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--tNpcGossip[21207]["OptionFunc1013"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
--tNpcGossip[21207]["Text11-1"] = {1112}
--tNpcGossip[21207]["Text1112"] = tDoubleEleven2017_DAMC_Text[21206]["Text1112"]
--tNpcGossip[21207]["tOption11-1"] = {1111,1112,1113}
--tNpcGossip[21207]["Option1111"] = tDoubleEleven2017_DAMC_Text[21206]["Option1111"]
--tNpcGossip[21207]["Option1112"] = tDoubleEleven2017_DAMC_Text[21206]["Option1112"]
--tNpcGossip[21207]["Option1113"] = tDoubleEleven2017_DAMC_Text[21206]["Option1113"]
--tNpcGossip[21207]["OptionFunc1111"] = "DoubleEleven2017_DAMC_RouletteConfirm"
--tNpcGossip[21207]["OptionFunc1112"] = "DoubleEleven2017_DAMC_RouletteConfirm5"
--tNpcGossip[21207]["OptionFunc1113"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
----星陨石会场
--tNpcGossip[21208] = tNpcGossip[21208] or DefaultNpc:new{}
--tNpcGossip[21208]["OptionHidden"] = 1
--tNpcGossip[21208]["Text1-1"] = {111}
--tNpcGossip[21208]["tOption1-1"] = {111}
--tNpcGossip[21208]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21208]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21208]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
--tNpcGossip[21208]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
--tNpcGossip[21208]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
--
--tNpcGossip[21208]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text312"]
--tNpcGossip[21208]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text313"]
--tNpcGossip[21208]["Text126"] = tDoubleEleven2017_DAMC_Text[21206]["Text314"]
--
--tNpcGossip[21208]["tOption1-2"] = {311}
--tNpcGossip[21208]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21208]["Text1-3"] = {131}
--tNpcGossip[21208]["tOption1-3"] = {131}
--tNpcGossip[21208]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----星陨石专区
--tNpcGossip[21208]["Option311"] = tDoubleEleven2017_DAMC_Text[21206]["Option311"]
--tNpcGossip[21208]["OptionFunc311"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306125"  --星陨石幸运包
----天石不足
--tNpcGossip[21208]["Text8-1"] = {811}
--tNpcGossip[21208]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21208]["tOption8-1"] = {811}
--tNpcGossip[21208]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21208]["Text9-1"] = {911}
--tNpcGossip[21208]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text911"]
--tNpcGossip[21208]["tOption9-1"] = {911}
--tNpcGossip[21208]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21208]["Text10-1"] = {1012}
--tNpcGossip[21208]["Text1012"] = tDoubleEleven2017_DAMC_Text[21206]["Text1012"]
--tNpcGossip[21208]["tOption10-1"] = {1011,1012,1013}
--tNpcGossip[21208]["Option1011"] = tDoubleEleven2017_DAMC_Text[21206]["Option1011"]
--tNpcGossip[21208]["Option1012"] = tDoubleEleven2017_DAMC_Text[21206]["Option1012"]
--tNpcGossip[21208]["Option1013"] = tDoubleEleven2017_DAMC_Text[21206]["Option1013"]
--tNpcGossip[21208]["OptionFunc1011"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21208]["OptionFunc1012"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--tNpcGossip[21208]["OptionFunc1013"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
----气力值会场
--tNpcGossip[21209] = tNpcGossip[21209] or DefaultNpc:new{}
--tNpcGossip[21209]["OptionHidden"] = 1
--tNpcGossip[21209]["Text1-1"] = {111}
--tNpcGossip[21209]["tOption1-1"] = {111}
--tNpcGossip[21209]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21209]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21209]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
--tNpcGossip[21209]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
--tNpcGossip[21209]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
--
--tNpcGossip[21209]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text412"]
--tNpcGossip[21209]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text413"]
--tNpcGossip[21209]["Text126"] = tDoubleEleven2017_DAMC_Text[21206]["Text414"]
--
--tNpcGossip[21209]["tOption1-2"] = {411}
--tNpcGossip[21209]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21209]["Text1-3"] = {131}
--tNpcGossip[21209]["tOption1-3"] = {131}
--tNpcGossip[21209]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----气力值专区
--tNpcGossip[21209]["Option411"] = tDoubleEleven2017_DAMC_Text[21206]["Option411"]
--tNpcGossip[21209]["OptionFunc411"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306126"  --气力值幸运包
----天石不足
--tNpcGossip[21209]["Text8-1"] = {811}
--tNpcGossip[21209]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21209]["tOption8-1"] = {811}
--tNpcGossip[21209]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21209]["Text9-1"] = {911}
--tNpcGossip[21209]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text911"]
--tNpcGossip[21209]["tOption9-1"] = {911}
--tNpcGossip[21209]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21209]["Text10-1"] = {1012}
--tNpcGossip[21209]["Text1012"] = tDoubleEleven2017_DAMC_Text[21206]["Text1012"]
--tNpcGossip[21209]["tOption10-1"] = {1011,1012,1013}
--tNpcGossip[21209]["Option1011"] = tDoubleEleven2017_DAMC_Text[21206]["Option1011"]
--tNpcGossip[21209]["Option1012"] = tDoubleEleven2017_DAMC_Text[21206]["Option1012"]
--tNpcGossip[21209]["Option1013"] = tDoubleEleven2017_DAMC_Text[21206]["Option1013"]
--tNpcGossip[21209]["OptionFunc1011"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21209]["OptionFunc1012"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--tNpcGossip[21209]["OptionFunc1013"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
----其它珍宝会场
--tNpcGossip[21210] = tNpcGossip[21210] or DefaultNpc:new{}
--tNpcGossip[21210]["OptionHidden"] = 1
--tNpcGossip[21210]["Text1-1"] = {111}
--tNpcGossip[21210]["tOption1-1"] = {111}
--tNpcGossip[21210]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21210]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
--tNpcGossip[21210]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
--tNpcGossip[21210]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
--tNpcGossip[21210]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
--
--tNpcGossip[21210]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text512"]
--tNpcGossip[21210]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text513"]
--tNpcGossip[21210]["Text126"] = tDoubleEleven2017_DAMC_Text[21206]["Text514"]
--tNpcGossip[21210]["Text127"] = tDoubleEleven2017_DAMC_Text[21206]["Text515"]
--tNpcGossip[21210]["Text128"] = tDoubleEleven2017_DAMC_Text[21206]["Text516"]
--tNpcGossip[21210]["Text129"] = tDoubleEleven2017_DAMC_Text[21206]["Text517"]
--
--tNpcGossip[21210]["tOption1-2"] = {511,512,513,514}
--tNpcGossip[21210]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21210]["Text1-3"] = {131}
--tNpcGossip[21210]["tOption1-3"] = {131}
--tNpcGossip[21210]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----财富骰子专区
--tNpcGossip[21210]["Option511"] = tDoubleEleven2017_DAMC_Text[21206]["Option511"]
--tNpcGossip[21210]["Option512"] = tDoubleEleven2017_DAMC_Text[21206]["Option512"]
--tNpcGossip[21210]["Option513"] = tDoubleEleven2017_DAMC_Text[21206]["Option513"]
--tNpcGossip[21210]["Option514"] = tDoubleEleven2017_DAMC_Text[21206]["Option514"]
--tNpcGossip[21210]["OptionFunc511"] = "DoubleEleven2017_DAMC_GetTouZi</N>3306310"  --金币骰子（30万）
--tNpcGossip[21210]["OptionFunc512"] = "DoubleEleven2017_DAMC_GetTouZi</N>3306311"  --金币骰子（300万）
--tNpcGossip[21210]["OptionFunc513"] = "DoubleEleven2017_DAMC_GetTouZi</N>3306312"  --金币骰子（3000万）
--tNpcGossip[21210]["OptionFunc514"] = "DoubleEleven2017_DAMC_GetTouZi</N>3306313"  --赠点骰子
----天石不足
--tNpcGossip[21210]["Text8-1"] = {811}
--tNpcGossip[21210]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21210]["tOption8-1"] = {811}
--tNpcGossip[21210]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21210]["Text9-1"] = {911}
--tNpcGossip[21210]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text911"]
--tNpcGossip[21210]["tOption9-1"] = {911}
--tNpcGossip[21210]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21210]["Text12-1"] = {1212}
--tNpcGossip[21210]["Text1212"] = tDoubleEleven2017_DAMC_Text[21206]["Text1212"]
--tNpcGossip[21210]["tOption12-1"] = {1211,1212,1213}
--tNpcGossip[21210]["Option1211"] = tDoubleEleven2017_DAMC_Text[21206]["Option1211"]
--tNpcGossip[21210]["Option1212"] = tDoubleEleven2017_DAMC_Text[21206]["Option1212"]
--tNpcGossip[21210]["Option1213"] = tDoubleEleven2017_DAMC_Text[21206]["Option1213"]
--tNpcGossip[21210]["OptionFunc1211"] = "DoubleEleven2017_DAMC_TouZiConfirm"
--tNpcGossip[21210]["OptionFunc1212"] = "DoubleEleven2017_DAMC_TouZiConfirm5"
--tNpcGossip[21210]["OptionFunc1213"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
----时装会场
--tNpcGossip[21211] = tNpcGossip[21211] or DefaultNpc:new{}
--tNpcGossip[21211]["OptionHidden"] = 1
--tNpcGossip[21211]["Text1-1"] = {111}
--tNpcGossip[21211]["tOption1-1"] = {111}
--tNpcGossip[21211]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21211]["Text1-2"] = {121,122,123,124,125,126,127}
--tNpcGossip[21211]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
--tNpcGossip[21211]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
--tNpcGossip[21211]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
--
--tNpcGossip[21211]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text612"]
--tNpcGossip[21211]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text613"]
--tNpcGossip[21211]["Text126"] = tDoubleEleven2017_DAMC_Text[21206]["Text614"]
--tNpcGossip[21211]["Text127"] = tDoubleEleven2017_DAMC_Text[21206]["Text615"]
--
--tNpcGossip[21211]["tOption1-2"] = {611,612}
--tNpcGossip[21211]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21211]["Text1-3"] = {131}
--tNpcGossip[21211]["tOption1-3"] = {131}
--tNpcGossip[21211]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----酷炫时装专区
--tNpcGossip[21211]["Option611"] = tDoubleEleven2017_DAMC_Text[21206]["Option611"]
--tNpcGossip[21211]["Option612"] = tDoubleEleven2017_DAMC_Text[21206]["Option612"]
--tNpcGossip[21211]["OptionFunc611"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306127"  --低级时装抽奖包
--tNpcGossip[21211]["OptionFunc612"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306129"  --高级时装抽奖包
----天石不足
--tNpcGossip[21211]["Text8-1"] = {811}
--tNpcGossip[21211]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21211]["tOption8-1"] = {811}
--tNpcGossip[21211]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21211]["Text9-1"] = {911}
--tNpcGossip[21211]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text911"]
--tNpcGossip[21211]["tOption9-1"] = {911}
--tNpcGossip[21211]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21211]["Text10-1"] = {1012}
--tNpcGossip[21211]["Text1012"] = tDoubleEleven2017_DAMC_Text[21206]["Text1012"]
--tNpcGossip[21211]["tOption10-1"] = {1011,1012,1013}
--tNpcGossip[21211]["Option1011"] = tDoubleEleven2017_DAMC_Text[21206]["Option1011"]
--tNpcGossip[21211]["Option1012"] = tDoubleEleven2017_DAMC_Text[21206]["Option1012"]
--tNpcGossip[21211]["Option1013"] = tDoubleEleven2017_DAMC_Text[21206]["Option1013"]
--tNpcGossip[21211]["OptionFunc1011"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21211]["OptionFunc1012"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--tNpcGossip[21211]["OptionFunc1013"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
----骑宠会场
--tNpcGossip[21212] = tNpcGossip[21212] or DefaultNpc:new{}
--tNpcGossip[21212]["OptionHidden"] = 1
--tNpcGossip[21212]["Text1-1"] = {111}
--tNpcGossip[21212]["tOption1-1"] = {111}
--tNpcGossip[21212]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21212]["Text1-2"] = {121,122,123,124,125,126,127}
--tNpcGossip[21212]["Text121"] = tDoubleEleven2017_DAMC_Text[21206]["Text121"]
--tNpcGossip[21212]["Text122"] = tDoubleEleven2017_DAMC_Text[21206]["Text122"]
--tNpcGossip[21212]["Text123"] = tDoubleEleven2017_DAMC_Text[21206]["Text123"]
--
--tNpcGossip[21212]["Text124"] = tDoubleEleven2017_DAMC_Text[21206]["Text712"]
--tNpcGossip[21212]["Text125"] = tDoubleEleven2017_DAMC_Text[21206]["Text713"]
--tNpcGossip[21212]["Text126"] = tDoubleEleven2017_DAMC_Text[21206]["Text714"]
--tNpcGossip[21212]["Text127"] = tDoubleEleven2017_DAMC_Text[21206]["Text715"]
--
--tNpcGossip[21212]["tOption1-2"] = {711,712}
--tNpcGossip[21212]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21212]["Text1-3"] = {131}
--tNpcGossip[21212]["tOption1-3"] = {131}
--tNpcGossip[21212]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----珍贵坐骑专区
--tNpcGossip[21212]["Option711"] = tDoubleEleven2017_DAMC_Text[21206]["Option711"]
--tNpcGossip[21212]["Option712"] = tDoubleEleven2017_DAMC_Text[21206]["Option712"]
--tNpcGossip[21212]["OptionFunc711"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306128"  --低级坐骑抽奖包
--tNpcGossip[21212]["OptionFunc712"] = "DoubleEleven2017_DAMC_GetDrawPack</N>3306130"  --高级坐骑抽奖包
----天石不足
--tNpcGossip[21212]["Text8-1"] = {811}
--tNpcGossip[21212]["Text811"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21212]["tOption8-1"] = {811}
--tNpcGossip[21212]["Option811"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21212]["Text9-1"] = {911}
--tNpcGossip[21212]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text911"]
--tNpcGossip[21212]["tOption9-1"] = {911}
--tNpcGossip[21212]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option911"]
----二次确认
--tNpcGossip[21212]["Text10-1"] = {1012}
--tNpcGossip[21212]["Text1012"] = tDoubleEleven2017_DAMC_Text[21206]["Text1012"]
--tNpcGossip[21212]["tOption10-1"] = {1011,1012,1013}
--tNpcGossip[21212]["Option1011"] = tDoubleEleven2017_DAMC_Text[21206]["Option1011"]
--tNpcGossip[21212]["Option1012"] = tDoubleEleven2017_DAMC_Text[21206]["Option1012"]
--tNpcGossip[21212]["Option1013"] = tDoubleEleven2017_DAMC_Text[21206]["Option1013"]
--tNpcGossip[21212]["OptionFunc1011"] = "DoubleEleven2017_DAMC_DrawPackConfirm"
--tNpcGossip[21212]["OptionFunc1012"] = "DoubleEleven2017_DAMC_DrawPackConfirm5"
--tNpcGossip[21212]["OptionFunc1013"] = "DoubleEleven2017_DAMC_CancelConfirm"
--
------------------------------岳有礼
-----------------------主会场
--tNpcGossip[21213] = tNpcGossip[21213] or DefaultNpc:new{}
--tNpcGossip[21213]["OptionHidden"] = 1
--tNpcGossip[21213]["Text1-1"] = {111}
--tNpcGossip[21213]["tOption1-1"] = {111}
--tNpcGossip[21213]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21213]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21213]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21213]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21213]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--tNpcGossip[21213]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text124"]
--tNpcGossip[21213]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text125"]
--tNpcGossip[21213]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text126"]
--tNpcGossip[21213]["tOption1-2"] = {121,122,123,124,125,126,127}
--tNpcGossip[21213]["Option121"] = tDoubleEleven2017_DAMC_Text[21213]["Option121"]
--tNpcGossip[21213]["Option122"] = tDoubleEleven2017_DAMC_Text[21213]["Option122"]
--tNpcGossip[21213]["Option123"] = tDoubleEleven2017_DAMC_Text[21213]["Option123"]
--tNpcGossip[21213]["Option124"] = tDoubleEleven2017_DAMC_Text[21213]["Option124"]
--tNpcGossip[21213]["Option125"] = tDoubleEleven2017_DAMC_Text[21213]["Option125"]
--tNpcGossip[21213]["Option126"] = tDoubleEleven2017_DAMC_Text[21213]["Option126"]
--tNpcGossip[21213]["Option127"] = tDoubleEleven2017_DAMC_Text[21213]["Option127"]
--tNpcGossip[21213]["OptionPoint121"] = "2-1"
--tNpcGossip[21213]["OptionPoint122"] = "3-1"
--tNpcGossip[21213]["OptionPoint123"] = "4-1"
--tNpcGossip[21213]["OptionPoint124"] = "5-1"
--tNpcGossip[21213]["OptionPoint125"] = "6-1"
--tNpcGossip[21213]["OptionPoint126"] = "7-1"
--tNpcGossip[21213]["OptionPoint127"] = "8-1"
--tNpcGossip[21213]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21213]["Text1-3"] = {131}
--tNpcGossip[21213]["tOption1-3"] = {131}
--tNpcGossip[21213]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----追加道具月卡专区
--tNpcGossip[21213]["Text2-1"] = {211,212,213}
--tNpcGossip[21213]["Text211"] = tDoubleEleven2017_DAMC_Text[21213]["Text211"]
--tNpcGossip[21213]["Text212"] = tDoubleEleven2017_DAMC_Text[21213]["Text212"]
--tNpcGossip[21213]["Text213"] = tDoubleEleven2017_DAMC_Text[21213]["Text213"]
--tNpcGossip[21213]["tOption2-1"] = {211,212}
--tNpcGossip[21213]["Option211"] = tDoubleEleven2017_DAMC_Text[21213]["Option211"]
--tNpcGossip[21213]["Option212"] = tDoubleEleven2017_DAMC_Text[21213]["Option212"]
--tNpcGossip[21213]["OptionFunc211"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306111"
--tNpcGossip[21213]["OptionFunc212"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306112"
----星陨石月卡专区
--tNpcGossip[21213]["Text3-1"] = {311,312}
--tNpcGossip[21213]["Text311"] = tDoubleEleven2017_DAMC_Text[21213]["Text311"]
--tNpcGossip[21213]["Text312"] = tDoubleEleven2017_DAMC_Text[21213]["Text312"]
--tNpcGossip[21213]["tOption3-1"] = {311}
--tNpcGossip[21213]["Option311"] = tDoubleEleven2017_DAMC_Text[21213]["Option311"]
--tNpcGossip[21213]["OptionFunc311"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306113"
----气力值月卡专区
--tNpcGossip[21213]["Text4-1"] = {411,412,413}
--tNpcGossip[21213]["Text411"] = tDoubleEleven2017_DAMC_Text[21213]["Text411"]
--tNpcGossip[21213]["Text412"] = tDoubleEleven2017_DAMC_Text[21213]["Text412"]
--tNpcGossip[21213]["Text413"] = tDoubleEleven2017_DAMC_Text[21213]["Text413"]
--tNpcGossip[21213]["tOption4-1"] = {411,412}
--tNpcGossip[21213]["Option411"] = tDoubleEleven2017_DAMC_Text[21213]["Option411"]
--tNpcGossip[21213]["Option412"] = tDoubleEleven2017_DAMC_Text[21213]["Option412"]
--tNpcGossip[21213]["OptionFunc411"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306114"
--tNpcGossip[21213]["OptionFunc412"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306115"
----练功宝物月卡专区
--tNpcGossip[21213]["Text5-1"] = {511,512,513}
--tNpcGossip[21213]["Text511"] = tDoubleEleven2017_DAMC_Text[21213]["Text511"]
--tNpcGossip[21213]["Text512"] = tDoubleEleven2017_DAMC_Text[21213]["Text512"]
--tNpcGossip[21213]["Text513"] = tDoubleEleven2017_DAMC_Text[21213]["Text513"]
--tNpcGossip[21213]["tOption5-1"] = {511,512}
--tNpcGossip[21213]["Option511"] = tDoubleEleven2017_DAMC_Text[21213]["Option511"]
--tNpcGossip[21213]["Option512"] = tDoubleEleven2017_DAMC_Text[21213]["Option512"]
--tNpcGossip[21213]["OptionFunc511"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306116"
--tNpcGossip[21213]["OptionFunc512"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306117"
----属性加成月卡专区
--tNpcGossip[21213]["Text6-1"] = {611,612}
--tNpcGossip[21213]["Text611"] = tDoubleEleven2017_DAMC_Text[21213]["Text611"]
--tNpcGossip[21213]["Text612"] = tDoubleEleven2017_DAMC_Text[21213]["Text612"]
--tNpcGossip[21213]["tOption6-1"] = {611}
--tNpcGossip[21213]["Option611"] = tDoubleEleven2017_DAMC_Text[21213]["Option611"]
--tNpcGossip[21213]["OptionFunc611"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306118"
----时装月卡专区
--tNpcGossip[21213]["Text7-1"] = {711,712}
--tNpcGossip[21213]["Text711"] = tDoubleEleven2017_DAMC_Text[21213]["Text711"]
--tNpcGossip[21213]["Text712"] = tDoubleEleven2017_DAMC_Text[21213]["Text712"]
--tNpcGossip[21213]["tOption7-1"] = {711}
--tNpcGossip[21213]["Option711"] = tDoubleEleven2017_DAMC_Text[21213]["Option711"]
--tNpcGossip[21213]["OptionFunc711"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306119"
----坐骑外套月卡专区
--tNpcGossip[21213]["Text8-1"] = {811,812}
--tNpcGossip[21213]["Text811"] = tDoubleEleven2017_DAMC_Text[21213]["Text811"]
--tNpcGossip[21213]["Text812"] = tDoubleEleven2017_DAMC_Text[21213]["Text812"]
--tNpcGossip[21213]["tOption8-1"] = {811}
--tNpcGossip[21213]["Option811"] = tDoubleEleven2017_DAMC_Text[21213]["Option811"]
--tNpcGossip[21213]["OptionFunc811"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306120"
----天石不足
--tNpcGossip[21213]["Text9-1"] = {911}
--tNpcGossip[21213]["Text911"] = tDoubleEleven2017_DAMC_Text[21206]["Text811"]
--tNpcGossip[21213]["tOption9-1"] = {911}
--tNpcGossip[21213]["Option911"] = tDoubleEleven2017_DAMC_Text[21206]["Option811"]
----背包满
--tNpcGossip[21213]["Text10-1"] = {1011}
--tNpcGossip[21213]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21213]["tOption10-1"] = {1011}
--tNpcGossip[21213]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21213]["Text11-1"] = {1111}
--tNpcGossip[21213]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21213]["tOption11-1"] = {1111,1112}
--tNpcGossip[21213]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21213]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21213]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------赤炼石会场
--tNpcGossip[21214] = tNpcGossip[21214] or DefaultNpc:new{}
--tNpcGossip[21214]["OptionHidden"] = 1
--tNpcGossip[21214]["Text1-1"] = {111}
--tNpcGossip[21214]["tOption1-1"] = {111}
--tNpcGossip[21214]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21214]["Text1-2"] = {121,122,123,124,125,126,127}
--tNpcGossip[21214]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21214]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21214]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21214]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text211"]
--tNpcGossip[21214]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text212"]
--tNpcGossip[21214]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21214]["Text127"] = tDoubleEleven2017_DAMC_Text[21213]["Text213"]
--
--tNpcGossip[21214]["tOption1-2"] = {211,212,213}
--tNpcGossip[21214]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21214]["Text1-3"] = {131}
--tNpcGossip[21214]["tOption1-3"] = {131}
--tNpcGossip[21214]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----追加道具月卡专区
--tNpcGossip[21214]["Option211"] = tDoubleEleven2017_DAMC_Text[21213]["Option211"]
--tNpcGossip[21214]["Option212"] = tDoubleEleven2017_DAMC_Text[21213]["Option212"]
--tNpcGossip[21214]["Option213"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21214]["OptionChkFunc213"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21214]["OptionFunc211"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306111"
--tNpcGossip[21214]["OptionFunc212"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306112"
--tNpcGossip[21214]["OptionFunc213"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21214]["Text9-1"] = {911}
--tNpcGossip[21214]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21214]["tOption9-1"] = {911}
--tNpcGossip[21214]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21214]["Text10-1"] = {1011}
--tNpcGossip[21214]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21214]["tOption10-1"] = {1011}
--tNpcGossip[21214]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21214]["Text11-1"] = {1111}
--tNpcGossip[21214]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21214]["tOption11-1"] = {1111,1112}
--tNpcGossip[21214]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21214]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21214]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------星陨石会场
--tNpcGossip[21215] = tNpcGossip[21215] or DefaultNpc:new{}
--tNpcGossip[21215]["OptionHidden"] = 1
--tNpcGossip[21215]["Text1-1"] = {111}
--tNpcGossip[21215]["tOption1-1"] = {111}
--tNpcGossip[21215]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21215]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21215]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21215]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21215]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21215]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text311"]
--tNpcGossip[21215]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21215]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text312"]
--
--tNpcGossip[21215]["tOption1-2"] = {311,312}
--tNpcGossip[21215]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21215]["Text1-3"] = {131}
--tNpcGossip[21215]["tOption1-3"] = {131}
--tNpcGossip[21215]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----星陨石月卡专区
--tNpcGossip[21215]["Option311"] = tDoubleEleven2017_DAMC_Text[21213]["Option311"]
--tNpcGossip[21215]["Option312"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21215]["OptionChkFunc312"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21215]["OptionFunc311"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306113"
--tNpcGossip[21215]["OptionFunc312"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21215]["Text9-1"] = {911}
--tNpcGossip[21215]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21215]["tOption9-1"] = {911}
--tNpcGossip[21215]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21215]["Text10-1"] = {1011}
--tNpcGossip[21215]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21215]["tOption10-1"] = {1011}
--tNpcGossip[21215]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21215]["Text11-1"] = {1111}
--tNpcGossip[21215]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21215]["tOption11-1"] = {1111,1112}
--tNpcGossip[21215]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21215]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21215]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------气力值会场
--tNpcGossip[21216] = tNpcGossip[21216] or DefaultNpc:new{}
--tNpcGossip[21216]["OptionHidden"] = 1
--tNpcGossip[21216]["Text1-1"] = {111}
--tNpcGossip[21216]["tOption1-1"] = {111}
--tNpcGossip[21216]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21216]["Text1-2"] = {121,122,123,124,125,126,127}
--tNpcGossip[21216]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21216]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21216]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21216]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text411"]
--tNpcGossip[21216]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text412"]
--tNpcGossip[21216]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21216]["Text127"] = tDoubleEleven2017_DAMC_Text[21213]["Text413"]
--
--tNpcGossip[21216]["tOption1-2"] = {411,412,413}
--tNpcGossip[21216]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21216]["Text1-3"] = {131}
--tNpcGossip[21216]["tOption1-3"] = {131}
--tNpcGossip[21216]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----气力值月卡专区
--tNpcGossip[21216]["Option411"] = tDoubleEleven2017_DAMC_Text[21213]["Option411"]
--tNpcGossip[21216]["Option412"] = tDoubleEleven2017_DAMC_Text[21213]["Option412"]
--tNpcGossip[21216]["Option413"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21216]["OptionChkFunc413"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21216]["OptionFunc411"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306114"
--tNpcGossip[21216]["OptionFunc412"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306115"
--tNpcGossip[21216]["OptionFunc413"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21216]["Text9-1"] = {911}
--tNpcGossip[21216]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21216]["tOption9-1"] = {911}
--tNpcGossip[21216]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21216]["Text10-1"] = {1011}
--tNpcGossip[21216]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21216]["tOption10-1"] = {1011}
--tNpcGossip[21216]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21216]["Text11-1"] = {1111}
--tNpcGossip[21216]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21216]["tOption11-1"] = {1111,1112}
--tNpcGossip[21216]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21216]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21216]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------练功会场
--tNpcGossip[21217] = tNpcGossip[21217] or DefaultNpc:new{}
--tNpcGossip[21217]["OptionHidden"] = 1
--tNpcGossip[21217]["Text1-1"] = {111}
--tNpcGossip[21217]["tOption1-1"] = {111}
--tNpcGossip[21217]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21217]["Text1-2"] = {121,122,123,124,125,126,127}
--tNpcGossip[21217]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21217]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21217]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21217]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text511"]
--tNpcGossip[21217]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text512"]
--tNpcGossip[21217]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21217]["Text127"] = tDoubleEleven2017_DAMC_Text[21213]["Text513"]
--
--tNpcGossip[21217]["tOption1-2"] = {511,512,513}
--tNpcGossip[21217]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21217]["Text1-3"] = {131}
--tNpcGossip[21217]["tOption1-3"] = {131}
--tNpcGossip[21217]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----练功宝物月卡专区
--tNpcGossip[21217]["Option511"] = tDoubleEleven2017_DAMC_Text[21213]["Option511"]
--tNpcGossip[21217]["Option512"] = tDoubleEleven2017_DAMC_Text[21213]["Option512"]
--tNpcGossip[21217]["Option513"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21217]["OptionChkFunc513"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21217]["OptionFunc511"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306116"
--tNpcGossip[21217]["OptionFunc512"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306117"
--tNpcGossip[21217]["OptionFunc513"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21217]["Text9-1"] = {911}
--tNpcGossip[21217]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21217]["tOption9-1"] = {911}
--tNpcGossip[21217]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21217]["Text10-1"] = {1011}
--tNpcGossip[21217]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21217]["tOption10-1"] = {1011}
--tNpcGossip[21217]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21217]["Text11-1"] = {1111}
--tNpcGossip[21217]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21217]["tOption11-1"] = {1111,1112}
--tNpcGossip[21217]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21217]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21217]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------其它珍宝会场
--tNpcGossip[21218] = tNpcGossip[21218] or DefaultNpc:new{}
--tNpcGossip[21218]["OptionHidden"] = 1
--tNpcGossip[21218]["Text1-1"] = {111}
--tNpcGossip[21218]["tOption1-1"] = {111}
--tNpcGossip[21218]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21218]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21218]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21218]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21218]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21218]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text611"]
--tNpcGossip[21218]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21218]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text612"]
--
--tNpcGossip[21218]["tOption1-2"] = {611,612}
--tNpcGossip[21218]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21218]["Text1-3"] = {131}
--tNpcGossip[21218]["tOption1-3"] = {131}
--tNpcGossip[21218]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----属性加成月卡专区
--tNpcGossip[21218]["Option611"] = tDoubleEleven2017_DAMC_Text[21213]["Option611"]
--tNpcGossip[21218]["Option612"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21218]["OptionChkFunc612"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21218]["OptionFunc611"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306118"
--tNpcGossip[21218]["OptionFunc612"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21218]["Text9-1"] = {911}
--tNpcGossip[21218]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21218]["tOption9-1"] = {911}
--tNpcGossip[21218]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21218]["Text10-1"] = {1011}
--tNpcGossip[21218]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21218]["tOption10-1"] = {1011}
--tNpcGossip[21218]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21218]["Text11-1"] = {1111}
--tNpcGossip[21218]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21218]["tOption11-1"] = {1111,1112}
--tNpcGossip[21218]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21218]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21218]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------时装会场
--tNpcGossip[21219] = tNpcGossip[21219] or DefaultNpc:new{}
--tNpcGossip[21219]["OptionHidden"] = 1
--tNpcGossip[21219]["Text1-1"] = {111}
--tNpcGossip[21219]["tOption1-1"] = {111}
--tNpcGossip[21219]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21219]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21219]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21219]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21219]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21219]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text711"]
--tNpcGossip[21219]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21219]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text712"]
--
--tNpcGossip[21219]["tOption1-2"] = {711,712}
--tNpcGossip[21219]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21219]["Text1-3"] = {131}
--tNpcGossip[21219]["tOption1-3"] = {131}
--tNpcGossip[21219]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----时装月卡专区
--tNpcGossip[21219]["Option711"] = tDoubleEleven2017_DAMC_Text[21213]["Option711"]
--tNpcGossip[21219]["Option712"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21219]["OptionChkFunc712"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21219]["OptionFunc711"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306119"
--tNpcGossip[21219]["OptionFunc712"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21219]["Text9-1"] = {911}
--tNpcGossip[21219]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21219]["tOption9-1"] = {911}
--tNpcGossip[21219]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21219]["Text10-1"] = {1011}
--tNpcGossip[21219]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21219]["tOption10-1"] = {1011}
--tNpcGossip[21219]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21219]["Text11-1"] = {1111}
--tNpcGossip[21219]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21219]["tOption11-1"] = {1111,1112}
--tNpcGossip[21219]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21219]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21219]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
-----------------------坐骑会场
--tNpcGossip[21220] = tNpcGossip[21220] or DefaultNpc:new{}
--tNpcGossip[21220]["OptionHidden"] = 1
--tNpcGossip[21220]["Text1-1"] = {111}
--tNpcGossip[21220]["tOption1-1"] = {111}
--tNpcGossip[21220]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21220]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21220]["Text121"] = tDoubleEleven2017_DAMC_Text[21213]["Text121"]
--tNpcGossip[21220]["Text122"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21220]["Text123"] = tDoubleEleven2017_DAMC_Text[21213]["Text123"]
--
--tNpcGossip[21220]["Text124"] = tDoubleEleven2017_DAMC_Text[21213]["Text811"]
--tNpcGossip[21220]["Text125"] = tDoubleEleven2017_DAMC_Text[21213]["Text122"]
--tNpcGossip[21220]["Text126"] = tDoubleEleven2017_DAMC_Text[21213]["Text812"]
--
--tNpcGossip[21220]["tOption1-2"] = {811,812}
--tNpcGossip[21220]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21220]["Text1-3"] = {131}
--tNpcGossip[21220]["tOption1-3"] = {131}
--tNpcGossip[21220]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
----坐骑外套月卡专区
--tNpcGossip[21220]["Option811"] = tDoubleEleven2017_DAMC_Text[21213]["Option811"]
--tNpcGossip[21220]["Option812"] = tDoubleEleven2017_DAMC_Text[21213]["GetBag"]
--tNpcGossip[21220]["OptionChkFunc812"] = function ()
--	if not Item_ChkItem(tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Id"]) then
--		return true
--	end
--end
--tNpcGossip[21220]["OptionFunc811"] = "DoubleEleven2017_DAMC_BuyMonthCard</N>3306120"
--tNpcGossip[21220]["OptionFunc812"] = "DoubleEleven2017_DAMC_GetBag"
----天石不足
--tNpcGossip[21220]["Text9-1"] = {911}
--tNpcGossip[21220]["Text911"] = tDoubleEleven2017_DAMC_Text[21213]["Text911"]
--tNpcGossip[21220]["tOption9-1"] = {911}
--tNpcGossip[21220]["Option911"] = tDoubleEleven2017_DAMC_Text[21213]["Option911"]
----背包满
--tNpcGossip[21220]["Text10-1"] = {1011}
--tNpcGossip[21220]["Text1011"] = tDoubleEleven2017_DAMC_Text[21213]["Text1011"]
--tNpcGossip[21220]["tOption10-1"] = {1011}
--tNpcGossip[21220]["Option1011"] = tDoubleEleven2017_DAMC_Text[21213]["Option1011"]
----二次确认
--tNpcGossip[21220]["Text11-1"] = {1111}
--tNpcGossip[21220]["Text1111"] = tDoubleEleven2017_DAMC_Text[21213]["Text1111"]
--tNpcGossip[21220]["tOption11-1"] = {1111,1112}
--tNpcGossip[21220]["Option1111"] = tDoubleEleven2017_DAMC_Text[21213]["Option1111"]
--tNpcGossip[21220]["Option1112"] = tDoubleEleven2017_DAMC_Text[21213]["Option1112"]
--tNpcGossip[21220]["OptionFunc1111"] = "DoubleEleven2017_DAMC_MonthCardConfirm"
--
--
------------------------------转有礼
--tNpcGossip[21221] = tNpcGossip[21221] or DefaultNpc:new{}
--tNpcGossip[21221]["OptionHidden"] = 1
--tNpcGossip[21221]["Text1-1"] = {111}
--tNpcGossip[21221]["tOption1-1"] = {111}
--tNpcGossip[21221]["ChkFunc1-1"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["BeforeActivity"])
--end
--tNpcGossip[21221]["Text1-2"] = {121,122,123,124,125,126}
--tNpcGossip[21221]["Text121"] = tDoubleEleven2017_DAMC_Text[21221]["Text121"]
--tNpcGossip[21221]["Text122"] = tDoubleEleven2017_DAMC_Text[21221]["Text122"]
--tNpcGossip[21221]["Text123"] = tDoubleEleven2017_DAMC_Text[21221]["Text123"]
--tNpcGossip[21221]["Text124"] = tDoubleEleven2017_DAMC_Text[21221]["Text124"]
--tNpcGossip[21221]["Text125"] = tDoubleEleven2017_DAMC_Text[21221]["Text125"]
--tNpcGossip[21221]["Text126"] = tDoubleEleven2017_DAMC_Text[21221]["Text126"]
--tNpcGossip[21221]["tOption1-2"] = {121}
--tNpcGossip[21221]["Option121"] = tDoubleEleven2017_DAMC_Text[21221]["Option121"]
--tNpcGossip[21221]["OptionFunc121"] = "DoubleEleven2017_DAMC_NpcRoulette"
--tNpcGossip[21221]["ChkFunc1-2"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["ActivityTime"])
--end
--tNpcGossip[21221]["Text1-3"] = {131}
--tNpcGossip[21221]["tOption1-3"] = {131}
--tNpcGossip[21221]["ChkFunc1-3"]= function()
--	return Sys_ChkFullTime(tActivityTime["DoubleEleven2017"]["AfterActivity"])
--end
--
--tNpcGossip[21221]["Text2-1"] = {211,212}
--tNpcGossip[21221]["Text211"] = tDoubleEleven2017_DAMC_Text[21221]["Text211"]
--tNpcGossip[21221]["Text212"] = tDoubleEleven2017_DAMC_Text[21221]["Text212"]
--tNpcGossip[21221]["tOption2-1"] = {211}
--tNpcGossip[21221]["Option211"] = tDoubleEleven2017_DAMC_Text[21221]["Option211"]
--
-----------------------------------物品部分---------------------------------------------
-----------------------------月卡
----+3赤炼石（赠）月卡
----tItem = {}
--tItem[3306111] = tItem[3306111] or {}
--tItem[3306111]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----+3马匹（赠）月卡
--tItem[3306112] = tItem[3306112] or {}
--tItem[3306112]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----明亮星陨石月卡
--tItem[3306113] = tItem[3306113] or {}
--tItem[3306113]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----300气力值月卡
--tItem[3306114] = tItem[3306114] or {}
--tItem[3306114]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----500气力值月卡
--tItem[3306115] = tItem[3306115] or {}
--tItem[3306115]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----秘制免费修炼丹月卡
--tItem[3306116] = tItem[3306116] or {}
--tItem[3306116]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----魔武通玄丹月卡
--tItem[3306117] = tItem[3306117] or {}
--tItem[3306117]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----百炼天机果月卡
--tItem[3306118] = tItem[3306118] or {}
--tItem[3306118]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----3星时装外套月卡
--tItem[3306119] = tItem[3306119] or {}
--tItem[3306119]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
----3星坐骑外套月卡
--tItem[3306120] = tItem[3306120] or {}
--tItem[3306120]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseCard(nItemId)
--end
--
-----------------------------抽奖包
----赤炼石抽奖包
--tItem[3306124] = tItem[3306124] or {}
--tItem[3306124]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw1(nItemId)
--end
--
----星陨石抽奖包
--tItem[3306125] = tItem[3306125] or {}
--tItem[3306125]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw1(nItemId)
--end
--
----气力值抽奖包
--tItem[3306126] = tItem[3306126] or {}
--tItem[3306126]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw1(nItemId)
--end
--
----低级时装抽奖包
--tItem[3306127] = tItem[3306127] or {}
--tItem[3306127]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw2(nItemId)
--end
--
----低级坐骑抽奖包
--tItem[3306128] = tItem[3306128] or {}
--tItem[3306128]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw2(nItemId)
--end
--
----高级时装抽奖包
--tItem[3306129] = tItem[3306129] or {}
--tItem[3306129]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw2(nItemId)
--end
--
----高级坐骑抽奖包
--tItem[3306130] = tItem[3306130] or {}
--tItem[3306130]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_Draw2(nItemId)
--end
--
-----------------------------转盘
----马转盘
--tItem[3306136] = tItem[3306136] or {}
--tItem[3306136]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
----气力转盘
--tItem[3306151] = tItem[3306151] or {}
--tItem[3306151]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
----金币转盘
--tItem[3306152] = tItem[3306152] or {}
--tItem[3306152]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
----赠点转盘
--tItem[3306153] = tItem[3306153] or {}
--tItem[3306153]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
----超级气力转盘
--tItem[3306422] = tItem[3306422] or {}
--tItem[3306422]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
----超级金币转盘
--tItem[3306423] = tItem[3306423] or {}
--tItem[3306423]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
----超级赠点转盘
--tItem[3306424] = tItem[3306424] or {}
--tItem[3306424]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseRoulette(nItemId)
--end
--
--
-----------------------------金币包
--10W金币包
tItem[3390005] = tItem[3390005] or {}
tItem[3390005]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetMoney(nItemId)
end

--20W金币包
tItem[3390006] = tItem[3390006] or {}
tItem[3390006]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetMoney(nItemId)
end
--
----30W金币包
--tItem[3390007] = tItem[3390007] or {}
--tItem[3390007]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
----50W金币包
--tItem[3390008] = tItem[3390008] or {}
--tItem[3390008]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
--150W金币包
tItem[3390009] = tItem[3390009] or {}
tItem[3390009]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetMoney(nItemId)
end
--
----200W金币包
--tItem[3390010] = tItem[3390010] or {}
--tItem[3390010]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
--500W金币包
tItem[3390011] = tItem[3390011] or {}
tItem[3390011]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetMoney(nItemId)
end

--1000W金币包
tItem[3390012] = tItem[3390012] or {}
tItem[3390012]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetMoney(nItemId)
end

--100W金币包
tItem[3390013] = tItem[3390013] or {}
tItem[3390013]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetMoney(nItemId)
end
--
----300W金币包
--tItem[3390014] = tItem[3390014] or {}
--tItem[3390014]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
----500W金币包
--tItem[3390015] = tItem[3390015] or {}
--tItem[3390015]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
----1500W金币包
--tItem[3390016] = tItem[3390016] or {}
--tItem[3390016]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
----2000W金币包
--tItem[3390017] = tItem[3390017] or {}
--tItem[3390017]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
----5000W金币包
--tItem[3390018] = tItem[3390018] or {}
--tItem[3390018]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
----1E金币包
--tItem[3390019] = tItem[3390019] or {}
--tItem[3390019]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetMoney(nItemId)
--end
--
-----------------------------气力包
----500气力包
tItem[3306155] = tItem[3306155] or {}
tItem[3306155]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
end
--
----1000气力包
--tItem[3306156] = tItem[3306156] or {}
--tItem[3306156]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
----5000气力包
--tItem[3306425] = tItem[3306425] or {}
--tItem[3306425]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
----10000气力包
--tItem[3306426] = tItem[3306426] or {}
--tItem[3306426]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
-----------------------------赠点包
----500赠点包
--tItem[3306157] = tItem[3306157] or {}
--tItem[3306157]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
----1000赠点包
--tItem[3306158] = tItem[3306158] or {}
--tItem[3306158]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
----2000赠点包
--tItem[3306427] = tItem[3306427] or {}
--tItem[3306427]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
----5000赠点包
--tItem[3306428] = tItem[3306428] or {}
--tItem[3306428]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
----10000赠点包
--tItem[3306429] = tItem[3306429] or {}
--tItem[3306429]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_GetSVorEMM(nItemId)
--end
--
-----------------------------新打包物品
----明亮星陨石
--tItem[3306159] = tItem[3306159] or {}
--tItem[3306159]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_NewPackage(nItemId)
--end
--
----+5赤炼石极运*2包
tItem[3306161] = tItem[3306161] or {}
tItem[3306161]["Function"] = function(nItemId,sItemName)
	DoubleEleven2017_DAMC_NewPackage(nItemId)
end
--
----赤炼石好运牌
--tItem[3306162] = tItem[3306162] or {}
--tItem[3306162]["Function"] = function(nItemId,sItemName)
--	local nUserId = Get_UserId()
--	DoubleEleven2017_DAMC_OpenCards(nUserId,tDoubleEleven2017_DAMC_Item["CardsLottery"]["LotteryType"])
--end
--
-----------------------------骰子
---- 金币骰子(30W)
--tItem[3306310] = tItem[3306310] or {}
--tItem[3306310]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseDice(nItemId)
--end
--
---- 金币骰子(300W)
--tItem[3306311] = tItem[3306311] or {}
--tItem[3306311]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseDice(nItemId)
--end
--
---- 金币骰子(3000W)
--tItem[3306312] = tItem[3306312] or {}
--tItem[3306312]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseDice(nItemId)
--end
--
---- 赠点骰子
--tItem[3306313] = tItem[3306313] or {}
--tItem[3306313]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_UseDice(nItemId)
--end
--
-----------------------------转盘券
--tItem[3306160] = tItem[3306160] or {}
--tItem[3306160]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_FindRoulette(nItemId)
--end
--
--tItem[3305916] = tItem[3305916] or {}
--tItem[3305916]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_FindRoulette(nItemId)
--end
-----------------------------------
--
----------------------------------------翻牌器-------------------------------------------
----tCardsLotteryAgainCost = {}
--tCardsLotteryAgainCost[37] = tCardsLotteryAgainCost[37] or {}
--tCardsLotteryAgainCost[37]["tFunction"] = tCardsLotteryAgainCost[37]["tFunction"] or {}
--table.insert(tCardsLotteryAgainCost[37]["tFunction"],DoubleEleven2017_DAMC_OpenCards)
--
--tCardsLotteryAgainCost[38] = tCardsLotteryAgainCost[38] or {}
--tCardsLotteryAgainCost[38]["tFunction"] = tCardsLotteryAgainCost[38]["tFunction"] or {}
--table.insert(tCardsLotteryAgainCost[38]["tFunction"],DoubleEleven2017_DAMC_OpenCards)


--]]


--------------------------------------月卡收纳包-------------------------------------------
--月卡收纳掩码标识数字
local tDoubleEleven2017_DAMC_CardStorage = {}
	tDoubleEleven2017_DAMC_CardStorage[3306111] = 1
	tDoubleEleven2017_DAMC_CardStorage[3306112] = 2
	tDoubleEleven2017_DAMC_CardStorage[3306113] = 4
	tDoubleEleven2017_DAMC_CardStorage[3306114] = 8
	tDoubleEleven2017_DAMC_CardStorage[3306115] = 16
	tDoubleEleven2017_DAMC_CardStorage[3306116] = 32
	tDoubleEleven2017_DAMC_CardStorage[3306117] = 64
	tDoubleEleven2017_DAMC_CardStorage[3306118] = 128
	tDoubleEleven2017_DAMC_CardStorage[3306119] = 256
	tDoubleEleven2017_DAMC_CardStorage[3306120] = 512
	

--月卡收纳标识对白
local tDoubleEleven2017_DAMC_CardToText = {}
	tDoubleEleven2017_DAMC_CardToText[3306111] = 113
	tDoubleEleven2017_DAMC_CardToText[3306112] = 114
	tDoubleEleven2017_DAMC_CardToText[3306113] = 115
	tDoubleEleven2017_DAMC_CardToText[3306114] = 116
	tDoubleEleven2017_DAMC_CardToText[3306115] = 117
	tDoubleEleven2017_DAMC_CardToText[3306116] = 118
	tDoubleEleven2017_DAMC_CardToText[3306117] = 119
	tDoubleEleven2017_DAMC_CardToText[3306118] = 1110
	tDoubleEleven2017_DAMC_CardToText[3306119] = 1111
	tDoubleEleven2017_DAMC_CardToText[3306120] = 1112


--收纳月卡
function DoubleEleven2017_DAMC_CardIn(nItemId)
	local nUserId = Get_UserId()
	local nEventType = 169
	local nDataType = 48
	local nValue = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	local nCount = 0
	
	--遍历月卡
	for i = 3306111,3306120 do
		if not Sys_ParseNumbersContain(tDoubleEleven2017_DAMC_CardStorage[i],nValue) then
			if Item_ChkItem(i) and Item_DelItem(i) then
				Task_AddStatistic(nEventType,nDataType,tDoubleEleven2017_DAMC_CardStorage[i],1,nUserId)
				nCount = nCount + 1
			end
		end
	end
	
	if nCount > 0 then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Item_AddNewItem(nItemId,tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Attr"])
		elseif not Item_ChkItem(nItemId) then
			Item_AddNewItem(nItemId,tDoubleEleven2017_DAMC_Item["MonthCardBag"]["Attr"])
		end
		--重设对白
		tItem[3306154]["Text211"] = string.format(tDoubleEleven2017_DAMC_Text[3306154]["Text211"],nCount)
		LinkItemGossipFunc_New(nItemId,"2-1")
	else
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text[3306154]["NoCards"])
	end
end

--一键领取
function DoubleEleven2017_DAMC_UseAllCard(nItemId)
	local nUserId = Get_UserId()
	
	local tCardUseTable = {}  --可以使用的月卡表
	local nNum = 0  --可以使用的月卡数量
	local nSpace = 0
	local nEventType = 169
	local nDataType = 48
	local nValue = Get_UserStatisticValue(nEventType,nDataType,nUserId)

	--遍历月卡
	for i = 3306111,3306120 do

		--月卡使用掩码
		local nTotalEvent = tDoubleEleven2017_DAMC_ItemToStc["EventType"]
		local nTotalType = tDoubleEleven2017_DAMC_ItemToStc["DataType"][i]
		local nData = Get_UserStatisticValue(nTotalEvent,nTotalType,nUserId)
		-- 对掩码值进行分解，取出总的次数跟今天的次数
		local nNowSingleData = nData % 10000
		local nNowTotalData = math.floor((nData - nNowSingleData) / 10000)
		local nLeftTimes = tDoubleEleven2017_DAMC_Award["MonthCard"][i]["RewardTotalData"] - nNowTotalData
		
		if Sys_ParseNumbersContain(tDoubleEleven2017_DAMC_CardStorage[i],nValue) and nLeftTimes > 0 and nNowSingleData == 0 then
			table.insert(tCardUseTable,i)
		end
		
		if tDoubleEleven2017_DAMC_Award["MonthCard"][i]["RewardItem"] ~= nil and Sys_ParseNumbersContain(tDoubleEleven2017_DAMC_CardStorage[i],nValue) and nLeftTimes > 0 and nNowSingleData == 0 then
			nSpace = nSpace + 1
		end
	end
	
	nNum = #tCardUseTable
	if not (nNum > 0) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text[3306154]["AllUsed"])
		return
	end
	
	--检查背包
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tDoubleEleven2017_DAMC_Text[3306154]["NoSpace"],nSpace))
		return
	end
	
	--领奖
	local sReward = ""
	for i,v in pairs(tCardUseTable) do
		if v >= 3306111 and v <= 3306120 then
			local bMark,s = RewardTemplate_UseItem(tDoubleEleven2017_DAMC_Award["MonthCard"][v])
			if sReward == "" then
				sReward = sReward .. s
			else
				sReward = sReward .. tRewardTemplate_Text["Punctuat"] .. s
			end
		end
	end
	User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text[3306154]["Success"],sReward))
end

--月卡收纳包
--tItemFace[3306154] = 1066
--
--tItem[3306154] = tItem[3306154] or {}
--tItem[3306154]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
--tItem[3306154]["Text111"] = tDoubleEleven2017_DAMC_Text[3306154]["Text111"]
--tItem[3306154]["Text112"] = tDoubleEleven2017_DAMC_Text[3306154]["Text112"]
--tItem[3306154]["Text113"] = tDoubleEleven2017_DAMC_Text[3306154]["Text113"]
--tItem[3306154]["Text114"] = tDoubleEleven2017_DAMC_Text[3306154]["Text114"]
--tItem[3306154]["Text115"] = tDoubleEleven2017_DAMC_Text[3306154]["Text115"]
--tItem[3306154]["Text116"] = tDoubleEleven2017_DAMC_Text[3306154]["Text116"]
--tItem[3306154]["Text117"] = tDoubleEleven2017_DAMC_Text[3306154]["Text117"]
--tItem[3306154]["Text118"] = tDoubleEleven2017_DAMC_Text[3306154]["Text118"]
--tItem[3306154]["Text119"] = tDoubleEleven2017_DAMC_Text[3306154]["Text119"]
--tItem[3306154]["Text1110"] = tDoubleEleven2017_DAMC_Text[3306154]["Text1110"]
--tItem[3306154]["Text1111"] = tDoubleEleven2017_DAMC_Text[3306154]["Text1111"]
--tItem[3306154]["Text1112"] = tDoubleEleven2017_DAMC_Text[3306154]["Text1112"]
--tItem[3306154]["Text1113"] = tDoubleEleven2017_DAMC_Text[3306154]["Text1113"]
--tItem[3306154]["tOption1-1"] = {111,112}
--tItem[3306154]["Option111"] = tDoubleEleven2017_DAMC_Text[3306154]["Option111"]
--tItem[3306154]["Option112"] = tDoubleEleven2017_DAMC_Text[3306154]["Option112"]
--tItem[3306154]["OptionFunc111"] = "DoubleEleven2017_DAMC_UseAllCard</N>3306154"
--tItem[3306154]["OptionFunc112"] = "DoubleEleven2017_DAMC_CardIn</N>3306154"
--tItem[3306154]["ChkFunc1-1"] = function()
--	local nUserId = Get_UserId()
--	local nEventType = 169
--	local nDataType = 48
--	local nValue = Get_UserStatisticValue(nEventType,nDataType,nUserId)
--	
--	for i = 3306111,3306120 do
--		--月卡使用掩码
--		local nTotalEvent = tDoubleEleven2017_DAMC_ItemToStc["EventType"]
--		local nTotalType = tDoubleEleven2017_DAMC_ItemToStc["DataType"][i]
--		local nData = Get_UserStatisticValue(nTotalEvent,nTotalType,nUserId)
--		
--		if Task_ChkStatistic(tDoubleEleven2017_DAMC_ItemToStc["EventType"],tDoubleEleven2017_DAMC_ItemToStc["DataType"][i],nUserId) then
--			--隔天重置
--			if Task_StcInterval(nTotalEvent,nTotalType,1,4) then
--				nData = nData - nData % 10000
--				Task_SetStatistic(nTotalEvent,nTotalType,nData,1,nUserId)
--			end
--		end
--		
--		-- 对掩码值进行分解，取出总的次数跟今天的次数
--		local nNowSingleData = nData % 10000
--		local nNowTotalData = math.floor((nData - nNowSingleData) / 10000)
--		local nLeftTimes = tDoubleEleven2017_DAMC_Award["MonthCard"][i]["RewardTotalData"] - nNowTotalData
--	
--		if not Sys_ParseNumbersContain(tDoubleEleven2017_DAMC_CardStorage[i],nValue) then
--			tItem[3306154][("Text" .. tDoubleEleven2017_DAMC_CardToText[i])] = string.format(tDoubleEleven2017_DAMC_Text[3306154][("Text" .. tDoubleEleven2017_DAMC_CardToText[i])],tDoubleEleven2017_DAMC_Text[3306154]["NoCard"])
--		elseif nNowSingleData == 1 then
--			tItem[3306154][("Text" .. tDoubleEleven2017_DAMC_CardToText[i])] = string.format(tDoubleEleven2017_DAMC_Text[3306154][("Text" .. tDoubleEleven2017_DAMC_CardToText[i])],string.format(tDoubleEleven2017_DAMC_Text[3306154]["Left"],nLeftTimes,tDoubleEleven2017_DAMC_Text[3306154]["RewardUsed"]))
--		else
--			tItem[3306154][("Text" .. tDoubleEleven2017_DAMC_CardToText[i])] = string.format(tDoubleEleven2017_DAMC_Text[3306154][("Text" .. tDoubleEleven2017_DAMC_CardToText[i])],string.format(tDoubleEleven2017_DAMC_Text[3306154]["Left"],nLeftTimes,tDoubleEleven2017_DAMC_Text[3306154]["RewardUsed"]))
--		end
--	end
--	return true
--end
--tItem[3306154]["Text2-1"] = {211}
--tItem[3306154]["Text211"] = tDoubleEleven2017_DAMC_Text[3306154]["Text211"]
--tItem[3306154]["tOption2-1"] = {211}
--tItem[3306154]["Option211"] = tDoubleEleven2017_DAMC_Text[3306154]["Option211"]
--tItem[3306154]["OptionPoint211"] = "1"


--------------------------------------马匹包修改-------------------------------------------
--------------------------------未升级马匹包奖励
	tDoubleEleven2017_DAMC_Award["HorsePackage"] = {}
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["DeleteItem"][1]["Id"] = 3306137
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306137]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 2 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["DeleteItem"][1]["Id"] = 3306138
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306138]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["DeleteItem"][1]["Id"] = 3306139
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306139]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["DeleteItem"][1]["Id"] = 3306140
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306140]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["DeleteItem"][1]["Id"] = 3306141
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306141]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["DeleteItem"][1]["Id"] = 3306142
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306142]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["DeleteItem"][1]["Id"] = 3306143
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306143]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144]["DeleteItem"][1]["Id"] = 3306144
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["ItemChance"] = 9900
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["ItemChance"] = 100
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9668218 147 134 0 6 0 0 0 0 0 0 122"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackage"][3306144][2]["RewardEffect"]["Effect"] = "zf2-e128"


--马匹包ID对应追加数
local tDoubleEleven2017_DAMC_IdToAdd = {}
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"] = {}
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"] = {}
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306137] = 1
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306138] = 2
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306139] = 3
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306140] = 3
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306141] = 4
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306142] = 4
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackage"][3306143] = 5
	
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306137] = 2
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306138] = 3
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306139] = 4
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306140] = 4
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306141] = 5
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306142] = 5
	tDoubleEleven2017_DAMC_IdToAdd["HorsePackageUp"][3306143] = 6


--------------------------------马匹包升级奖励表
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"] = {}
	
	--+1马匹包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["UpEmoney"] = 10
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["DeleteItem"][1]["Id"] = 3306137
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 2 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306137]["LogId"] = 12000920
	
	--+2马匹包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["UpEmoney"] = 32
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["DeleteItem"][1]["Id"] = 3306138
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306138]["LogId"] = 12000920
	
	--+3马匹包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["UpEmoney"] = 105
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["DeleteItem"][1]["Id"] = 3306139
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306139]["LogId"] = 12000920
	
	--+3马匹*2包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["UpEmoney"] = 210
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["DeleteItem"][1]["Id"] = 3306140
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["RewardItem"][1]["Attr"] = "0 2 0 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306140]["LogId"] = 12000920
	
	--+4马匹包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["UpEmoney"] = 335
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["DeleteItem"][1]["Id"] = 3306141
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306141]["LogId"] = 12000920
	
	--+4马匹*2包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["UpEmoney"] = 670
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["DeleteItem"][1]["Id"] = 3306142
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["RewardItem"][1]["Attr"] = "0 2 0 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306142]["LogId"] = 12000920
	
	--+5马匹包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["UpEmoney"] = 1050
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardEffect"]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["DeleteItem"][1]["Id"] = 3306143
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306143]["LogId"] = 12000920
	
	--+6马匹包
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144] = {}
	--升级属性
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144]["UpEmoney"] = 2038
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144]["FiveTime"] = 1
	--升级后的奖励
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144]["DeleteItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144]["DeleteItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144]["DeleteItem"][1]["Id"] = 3306144
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144]["ItemChanceSum"] = 10000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["ItemChance"] = 9900
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RewardItem"][1]["Attr"] = "0 2 0 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RandomItemChanceType"] = 2
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["ItemChance"] = 100
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RewardItem"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RewardItem"][1] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RewardItem"][1]["Id"] = 300000
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RewardItem"][1]["Attr"] = "0 2 0 0 0 0 9668218 147 134 0 6 0 0 0 0 0 0 122"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["LogId"] = 12000920
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["SzObj"] = "self"
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RewardEffect"] = {}
	tDoubleEleven2017_DAMC_Award["HorsePackageUp"][3306144][2]["RewardEffect"]["Effect"] = "zf2-e128"

--------------------------------马匹包逻辑
--马匹可选包
function DoubleEleven2017_DAMC_ChoosePackage(nItemId)
	local tReward = CommonFunc_Copy(tDoubleEleven2017_DAMC_Award["HorsePackageUp"][nItemId])
	
	if tReward["FiveTime"] == 1 and Item_ChkMulItem(nItemId,nItemId,5) then
		tItem[nItemId]["tOption1-1"] = {111,112,113,114}
	else
		tItem[nItemId]["tOption1-1"] = {111,113}
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end


--升级领取
function DoubleEleven2017_DAMC_GetHorseUp(nItemId)
	local nUserId = Get_UserId()
	local tReward = tDoubleEleven2017_DAMC_Award["HorsePackageUp"][nItemId]
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["NoItem"])
		return
	end
	--判断天石
	local bNeedEmoney = false
	if tReward["UpEmoney"] ~= nil then
		bNeedEmoney = true
	end
	
	--检查背包
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	-- 需要天石
	if bNeedEmoney then
		if Get_UserEMoney(nUserId) < (tReward["UpEmoney"]) then
			Sys_MsgBox(string.format(tDoubleEleven2017_DAMC_Text["NoEMoney"],tReward["UpEmoney"]))
			return
		end
		User_AddEMoney(-1*tReward["UpEmoney"],nUserId)
		Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],tReward["UpEmoney"],tReward["UpEmoney"]))
		local sLog = tReward["UpEmoney"] .. ",0,0,0,12000920,2,0,0"
		Sys_SaveActionFestivalLog(sLog)
	end
	if RewardTemplate_UseItem(tReward) then
		if nItemId == 3306143 then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward3"],Get_UserName(nUserId)))
		end
	end
end

--领取5次(升级或不升级）
function DoubleEleven2017_DAMC_HorseUseFive(nItemId,sIndex)
	local nUserId = Get_UserId()
	local tReward = CommonFunc_Copy(tDoubleEleven2017_DAMC_Award[sIndex][nItemId])

	if not Item_ChkMulItem(nItemId,nItemId,5) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["NoItemFive"])
		return
	end
	--判断天石
	local bNeedEmoney = false
	if tReward["UpEmoney"] ~= nil then
		bNeedEmoney = true
	end

	tReward["DeleteItem"][1]["ItemNum"] = 5
	
	local nNum = 5
	if nItemId == 3306140 or nItemId == 3306142 then
		nNum = 10
	end
	
	if sIndex == "HorsePackage" then
		tReward["RewardItem"][1]["Attr"] = "0 " .. nNum .. " 3 0 0 0 65430 0 255 0 " .. tDoubleEleven2017_DAMC_IdToAdd[sIndex][nItemId] .. " 0 0 0 0 0 0 150"
	elseif sIndex == "HorsePackageUp" then
		tReward["RewardItem"][1]["Attr"] = "0 " .. nNum .. " 0 0 0 0 65430 0 255 0 " .. tDoubleEleven2017_DAMC_IdToAdd[sIndex][nItemId] .. " 0 0 0 0 0 0 150"
	end
	
	--检查背包
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	-- 需要天石
	if bNeedEmoney then
		if Get_UserEMoney(nUserId) < (tReward["UpEmoney"]*5) then
			Sys_MsgBox(string.format(tDoubleEleven2017_DAMC_Text["NoEMoney"],tReward["UpEmoney"]*5))
			return
		end
		User_AddEMoney(-5*tDoubleEleven2017_DAMC_Award[sIndex][nItemId]["UpEmoney"],nUserId)
		Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],5*tDoubleEleven2017_DAMC_Award[sIndex][nItemId]["UpEmoney"],5*tDoubleEleven2017_DAMC_Award[sIndex][nItemId]["UpEmoney"]))
		local sLog = tReward["UpEmoney"]*5 .. ",0,0,0,12000920,2,0,0"
		Sys_SaveActionFestivalLog(sLog)
	end
	if RewardTemplate_UseItem(tReward) then
		if nItemId == 3306143 and sIndex == "HorsePackage" then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward2"],Get_UserName(nUserId)))
		elseif nItemId == 3306143 and sIndex == "HorsePackageUp" then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward3"],Get_UserName(nUserId)))
		end
	end
end

--+6马升级领取
function DoubleEleven2017_DAMC_GetAmazingHorseUp(nItemId)
	local nUserId = Get_UserId()
	local tReward = tDoubleEleven2017_DAMC_Award["HorsePackageUp"]
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["NoItem"])
		return
	end
	--判断天石
	local bNeedEmoney = false
	if tReward[nItemId]["UpEmoney"] ~= nil then
		bNeedEmoney = true
	end
	
	--检查背包
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tReward,nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],nSpace))
		return
	end
	
	-- 需要天石
	if bNeedEmoney then
		if Get_UserEMoney(nUserId) < (tReward[nItemId]["UpEmoney"]) then
			Sys_MsgBox(string.format(tDoubleEleven2017_DAMC_Text["NoEMoney"],tReward[nItemId]["UpEmoney"]))
			return
		end
		User_AddEMoney(-1*tReward[nItemId]["UpEmoney"],nUserId)
		Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],tReward[nItemId]["UpEmoney"],tReward[nItemId]["UpEmoney"]))
		local sLog = tReward[nItemId]["UpEmoney"] .. ",0,0,0,12000920,2,0,0"
		Sys_SaveActionFestivalLog(sLog)
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tNewAward = RewardTemplate_NewRandom(tReward,nItemId)
		if tNewAward[1]["tAward"][1]["ItemChance"] == tDoubleEleven2017_DAMC_Award["HorsePackageUp"][nItemId][2]["ItemChance"] then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward33"],Get_UserName(nUserId)))
		else
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward3"],Get_UserName(nUserId)))
		end
	end
end

--+6马包领取5次(升级或不升级）
function DoubleEleven2017_DAMC_AmazingHorseUseFive(nItemId,sIndex)
	local nUserId = Get_UserId()
	local tReward = CommonFunc_Copy(tDoubleEleven2017_DAMC_Award[sIndex])

	if not Item_ChkMulItem(nItemId,nItemId,5) then
		Sys_MsgBox(tDoubleEleven2017_DAMC_Text["NoItemFive"])
		return
	end
	--判断天石
	local bNeedEmoney = false
	if tReward[nItemId]["UpEmoney"] ~= nil then
		bNeedEmoney = true
	end

	tReward[nItemId]["DeleteItem"][1]["ItemNum"] = 5
	
	if sIndex == "HorsePackage" then
		tReward[nItemId][1]["RewardItem"][1]["Attr"] = "0 5 3 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150"
		tReward[nItemId][2]["RewardItem"][1]["Attr"] = "0 5 3 0 0 0 9668218 147 134 0 6 0 0 0 0 0 0 122"
	elseif sIndex == "HorsePackageUp" then
		tReward[nItemId][1]["RewardItem"][1]["Attr"] = "0 10 0 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150"
		tReward[nItemId][2]["RewardItem"][1]["Attr"] = "0 10 0 0 0 0 9668218 147 134 0 6 0 0 0 0 0 0 122"
	end
	
	--检查背包
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tReward,nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tDoubleEleven2017_DAMC_Text["NoSpace"],nSpace))
		return
	end
	
	-- 需要天石
	if bNeedEmoney then
		if Get_UserEMoney(nUserId) < (tReward[nItemId]["UpEmoney"]*5) then
			Sys_MsgBox(string.format(tDoubleEleven2017_DAMC_Text["NoEMoney"],tReward[nItemId]["UpEmoney"]*5))
			return
		end
		User_AddEMoney(-5*tDoubleEleven2017_DAMC_Award[sIndex][nItemId]["UpEmoney"],nUserId)
		Sys_SaveEmoneyBuy(string.format(tDoubleEleven2017_DAMC_EmoneyLog[2],5*tDoubleEleven2017_DAMC_Award[sIndex][nItemId]["UpEmoney"],5*tDoubleEleven2017_DAMC_Award[sIndex][nItemId]["UpEmoney"]))
		local sLog = tReward[nItemId]["UpEmoney"]*5 .. ",0,0,0,12000920,2,0,0"
		Sys_SaveActionFestivalLog(sLog)
	end
	if Item_ChkItem(nItemId) and Item_DelMulItem(nItemId,nItemId,tReward[nItemId]["DeleteItem"][1]["ItemNum"]) then
		local tNewAward = RewardTemplate_NewRandom(tReward,nItemId)
		if tNewAward[1]["tAward"][1]["ItemChance"] == tDoubleEleven2017_DAMC_Award[sIndex][nItemId][2]["ItemChance"] then
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward33"],Get_UserName(nUserId)))
		else
			Sys_SystemBroadcast(string.format(tDoubleEleven2017_DAMC_Text["GetTopReward3"],Get_UserName(nUserId)))
		end
	end
end


-------------------------------------------马匹包对白
--tItemFace[3306137] = 1074
--tItemFace[3306138] = 1075
--tItemFace[3306139] = 1076
--tItemFace[3306140] = 1077
--tItemFace[3306141] = 1078
--tItemFace[3306142] = 1079
--tItemFace[3306143] = 1080
--tItemFace[3306144] = 1081


--马匹包对白
--for nItemId = 3306137,3306143 do
--	tItem[nItemId] = tItem[nItemId] or {}
--	tItem[nItemId]["DialogueText"] = tDoubleEleven2017_DAMC_Text[nItemId]
--	tItem[nItemId]["Function"] = function()
--		DoubleEleven2017_DAMC_ChoosePackage(nItemId)
--	end
--	
--	--主对白
--	tItem[nItemId]["Text1-1"] = {111}
--	tItem[nItemId]["Text111"] = tDoubleEleven2017_DAMC_Text[nItemId]["Text111"]
--	tItem[nItemId]["tOption1-1"] = {111,113}
--	tItem[nItemId]["Option111"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option111"]  --"直接领取"
--	tItem[nItemId]["Option112"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option112"]  --"直接领取5次"
--	tItem[nItemId]["Option113"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option113"]  --"升级领取"
--	tItem[nItemId]["Option114"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option114"]  --"升级领取5次"
--	tItem[nItemId]["OptionPoint111"] = "2"
--	tItem[nItemId]["OptionPoint112"] = "3"
--	tItem[nItemId]["OptionPoint113"] = "4"
--	tItem[nItemId]["OptionPoint114"] = "5"
--	
--	--二次确认
--	--直接领取
--	tItem[nItemId]["Text2-1"] = {211}
--	tItem[nItemId]["Text211"] = tDoubleEleven2017_DAMC_Text[nItemId]["Text211"]
--	tItem[nItemId]["tOption2-1"] = {211,212}
--	tItem[nItemId]["Option211"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option211"]
--	tItem[nItemId]["Option212"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option212"]
--	tItem[nItemId]["OptionFunc211"] = "DoubleEleven2017_DAMC_GetHorse</N>" .. nItemId
--
--	--直接领取5次
--	tItem[nItemId]["Text3-1"] = {311}
--	tItem[nItemId]["Text311"] = tDoubleEleven2017_DAMC_Text[nItemId]["Text311"]
--	tItem[nItemId]["tOption3-1"] = {311,312}
--	tItem[nItemId]["Option311"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option311"]
--	tItem[nItemId]["Option312"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option312"]
--	tItem[nItemId]["OptionFunc311"] = "DoubleEleven2017_DAMC_HorseUseFive</N>" .. nItemId .. "</S>HorsePackage"
--	
--	--升级领取
--	tItem[nItemId]["Text4-1"] = {411}
--	tItem[nItemId]["Text411"] = tDoubleEleven2017_DAMC_Text[nItemId]["Text411"]
--	tItem[nItemId]["tOption4-1"] = {411,412}
--	tItem[nItemId]["Option411"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option411"]
--	tItem[nItemId]["Option412"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option412"]
--	tItem[nItemId]["OptionFunc411"] = "DoubleEleven2017_DAMC_GetHorseUp</N>" .. nItemId
--
--	--升级领取5次
--	tItem[nItemId]["Text5-1"] = {511}
--	tItem[nItemId]["Text511"] = tDoubleEleven2017_DAMC_Text[nItemId]["Text511"]
--	tItem[nItemId]["tOption5-1"] = {511,512}
--	tItem[nItemId]["Option511"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option511"]
--	tItem[nItemId]["Option512"] = tDoubleEleven2017_DAMC_Text[nItemId]["Option512"]
--	tItem[nItemId]["OptionFunc511"] = "DoubleEleven2017_DAMC_HorseUseFive</N>" .. nItemId .. "</S>HorsePackageUp"
--	
--end
--
--tItem[3306144] = tItem[3306144] or {}
--tItem[3306144]["DialogueText"] = tDoubleEleven2017_DAMC_Text[3306144]
--tItem[3306144]["Function"] = function(nItemId,sItemName)
--	DoubleEleven2017_DAMC_ChoosePackage(nItemId)
--end
--
----主对白
--tItem[3306144]["Text1-1"] = {111}
--tItem[3306144]["Text111"] = tDoubleEleven2017_DAMC_Text[3306144]["Text111"]
--tItem[3306144]["tOption1-1"] = {111,113}
--tItem[3306144]["Option111"] = tDoubleEleven2017_DAMC_Text[3306144]["Option111"]  --"直接领取"
--tItem[3306144]["Option112"] = tDoubleEleven2017_DAMC_Text[3306144]["Option112"]  --"直接领取5次"
--tItem[3306144]["Option113"] = tDoubleEleven2017_DAMC_Text[3306144]["Option113"]  --"升级领取"
--tItem[3306144]["Option114"] = tDoubleEleven2017_DAMC_Text[3306144]["Option114"]  --"升级领取5次"
--tItem[3306144]["OptionPoint111"] = "2"
--tItem[3306144]["OptionPoint112"] = "3"
--tItem[3306144]["OptionPoint113"] = "4"
--tItem[3306144]["OptionPoint114"] = "5"
--
----二次确认
----直接领取
--tItem[3306144]["Text2-1"] = {211}
--tItem[3306144]["Text211"] = tDoubleEleven2017_DAMC_Text[3306144]["Text211"]
--tItem[3306144]["tOption2-1"] = {211,212}
--tItem[3306144]["Option211"] = tDoubleEleven2017_DAMC_Text[3306144]["Option211"]
--tItem[3306144]["Option212"] = tDoubleEleven2017_DAMC_Text[3306144]["Option212"]
--tItem[3306144]["OptionFunc211"] = "DoubleEleven2017_DAMC_GetAmazingHorse</N>3306144"
--
----直接领取5次
--tItem[3306144]["Text3-1"] = {311}
--tItem[3306144]["Text311"] = tDoubleEleven2017_DAMC_Text[3306144]["Text311"]
--tItem[3306144]["tOption3-1"] = {311,312}
--tItem[3306144]["Option311"] = tDoubleEleven2017_DAMC_Text[3306144]["Option311"]
--tItem[3306144]["Option312"] = tDoubleEleven2017_DAMC_Text[3306144]["Option312"]
--tItem[3306144]["OptionFunc311"] = "DoubleEleven2017_DAMC_AmazingHorseUseFive</N>3306144</S>HorsePackage"
--
----升级领取
--tItem[3306144]["Text4-1"] = {411}
--tItem[3306144]["Text411"] = tDoubleEleven2017_DAMC_Text[3306144]["Text411"]
--tItem[3306144]["tOption4-1"] = {411,412}
--tItem[3306144]["Option411"] = tDoubleEleven2017_DAMC_Text[3306144]["Option411"]
--tItem[3306144]["Option412"] = tDoubleEleven2017_DAMC_Text[3306144]["Option412"]
--tItem[3306144]["OptionFunc411"] = "DoubleEleven2017_DAMC_GetAmazingHorseUp</N>3306144"
--
----升级领取5次
--tItem[3306144]["Text5-1"] = {511}
--tItem[3306144]["Text511"] = tDoubleEleven2017_DAMC_Text[3306144]["Text511"]
--tItem[3306144]["tOption5-1"] = {511,512}
--tItem[3306144]["Option511"] = tDoubleEleven2017_DAMC_Text[3306144]["Option511"]
--tItem[3306144]["Option512"] = tDoubleEleven2017_DAMC_Text[3306144]["Option512"]
--tItem[3306144]["OptionFunc511"] = "DoubleEleven2017_DAMC_AmazingHorseUseFive</N>3306144</S>HorsePackageUp"


--------------------------------------新服修改-------------------------------------------
--新服修改价格
function DoubleEleven2017_DAMC_ChgPirce()
	tDoubleEleven2017_DAMC_GetItem[3306124]["RewardEMoney"]["Value"] = -38
	tDoubleEleven2017_DAMC_GetItem[3306136]["RewardEMoney"]["Value"] = -45
	tDoubleEleven2017_DAMC_GetItem[3306126]["RewardEMoney"]["Value"] = -40

	tNpcGossip[21207]["Option211"] = tDoubleEleven2017_DAMC_Text[21206]["Option211New"]
	tNpcGossip[21207]["Option212"] = tDoubleEleven2017_DAMC_Text[21206]["Option212New"]
	tNpcGossip[21209]["Option411"] = tDoubleEleven2017_DAMC_Text[21206]["Option411New"]
	
	tDoubleEleven2017_DAMC_Item["CardsLottery"]["LotteryType"] = 38
end


-- 服务器启动加载
function DoubleEleven2017_DAMC_StartServer()
	if DoubleEleven2017_ShoppingActivity_IsNewServer() then
		DoubleEleven2017_DAMC_ChgPirce()
	end
end

-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],DoubleEleven2017_DAMC_StartServer)







