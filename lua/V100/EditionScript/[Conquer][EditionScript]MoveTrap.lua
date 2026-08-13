----------------------------------------------------------------------------
--Name:		[征服][功能脚本]气氛布置的地图光效.lua
--Purpose:	气氛布置的地图光效功能
--Creator: 	郑鋆
--Created:	2015/06/10
----------------------------------------------------------------------------

-- 命名前缀词： 
-- MoveTrap_

local MoveTrap_Info = {}

local MoveTrap_Info_NoGift = {}
	-- MoveTrap_Info[1366] = {}
	-- MoveTrap_Info[1366]["ActivetyTime"] = "2015-07-15 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1366]["DayTime"] = {}
	-- MoveTrap_Info[1366]["DayTime"][1] = "15:00 15:00"
	-- MoveTrap_Info[1366]["DayTime"][2] = "19:00 19:00"
	-- MoveTrap_Info[1366]["DayTime"][3] = "20:00 20:00"
	-- MoveTrap_Info[1366]["DayTime"][4] = "21:00 21:00"
	-- MoveTrap_Info[1366]["TrapType"] = 1366
	-- MoveTrap_Info[1366]["Look"] = 1366
	-- MoveTrap_Info[1366]["MapInfo"] = {}
	-- MoveTrap_Info[1366]["MapInfo"][1] = {}
	-- MoveTrap_Info[1366]["MapInfo"][1]["MapId"] = 1011
	-- MoveTrap_Info[1366]["MapInfo"][1]["PosX"] = 188
	-- MoveTrap_Info[1366]["MapInfo"][1]["PosY"] = 269
	-- MoveTrap_Info[1366]["MapInfo"][2] = {}
	-- MoveTrap_Info[1366]["MapInfo"][2]["MapId"] = 1000
	-- MoveTrap_Info[1366]["MapInfo"][2]["PosX"] = 490
	-- MoveTrap_Info[1366]["MapInfo"][2]["PosY"] = 640

	-- MoveTrap_Info[1367] = {}
	-- MoveTrap_Info[1367]["ActivetyTime"] = "2015-07-15 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1367]["DayTime"] = {}
	-- MoveTrap_Info[1367]["DayTime"][1] = "15:00 15:00"
	-- MoveTrap_Info[1367]["DayTime"][2] = "19:00 19:00"
	-- MoveTrap_Info[1367]["DayTime"][3] = "20:00 20:00"
	-- MoveTrap_Info[1367]["DayTime"][4] = "21:00 21:00"
	-- MoveTrap_Info[1367]["TrapType"] = 1367
	-- MoveTrap_Info[1367]["Look"] = 1367
	-- MoveTrap_Info[1367]["MapInfo"] = {}
	-- MoveTrap_Info[1367]["MapInfo"][1] = {}
	-- MoveTrap_Info[1367]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[1367]["MapInfo"][1]["PosX"] = 310
	-- MoveTrap_Info[1367]["MapInfo"][1]["PosY"] = 258

	-- MoveTrap_Info[1368] = {}
	-- MoveTrap_Info[1368]["ActivetyTime"] = "2015-07-15 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1368]["DayTime"] = {}
	-- MoveTrap_Info[1368]["DayTime"][1] = "15:00 15:00"
	-- MoveTrap_Info[1368]["DayTime"][2] = "19:00 19:00"
	-- MoveTrap_Info[1368]["DayTime"][3] = "20:00 20:00"
	-- MoveTrap_Info[1368]["DayTime"][4] = "21:00 21:00"
	-- MoveTrap_Info[1368]["TrapType"] = 1368
	-- MoveTrap_Info[1368]["Look"] = 1368
	-- MoveTrap_Info[1368]["MapInfo"] = {}
	-- MoveTrap_Info[1368]["MapInfo"][1] = {}
	-- MoveTrap_Info[1368]["MapInfo"][1]["MapId"] = 1020
	-- MoveTrap_Info[1368]["MapInfo"][1]["PosX"] = 563
	-- MoveTrap_Info[1368]["MapInfo"][1]["PosY"] = 585
	-- MoveTrap_Info[1368]["MapInfo"][2] = {}
	-- MoveTrap_Info[1368]["MapInfo"][2]["MapId"] = 1015
	-- MoveTrap_Info[1368]["MapInfo"][2]["PosX"] = 731
	-- MoveTrap_Info[1368]["MapInfo"][2]["PosY"] = 574

	-- MoveTrap_Info[1369] = {}
	-- MoveTrap_Info[1369]["ActivetyTime"] = "2015-07-15 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1369]["DayTime"] = {}
	-- MoveTrap_Info[1369]["DayTime"][1] = "15:00 15:00"
	-- MoveTrap_Info[1369]["DayTime"][2] = "19:00 19:00"
	-- MoveTrap_Info[1369]["DayTime"][3] = "20:00 20:00"
	-- MoveTrap_Info[1369]["DayTime"][4] = "21:00 21:00"
	-- MoveTrap_Info[1369]["TrapType"] = 1369
	-- MoveTrap_Info[1369]["Look"] = 1063
	-- MoveTrap_Info[1369]["MapInfo"] = {}
	-- MoveTrap_Info[1369]["MapInfo"][1] = {}
	-- MoveTrap_Info[1369]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[1369]["MapInfo"][1]["PosX"] = 308
	-- MoveTrap_Info[1369]["MapInfo"][1]["PosY"] = 262
	-- MoveTrap_Info[1369]["MapInfo"][2] = {}
	-- MoveTrap_Info[1369]["MapInfo"][2]["MapId"] = 1002
	-- MoveTrap_Info[1369]["MapInfo"][2]["PosX"] = 316
	-- MoveTrap_Info[1369]["MapInfo"][2]["PosY"] = 259

	-- MoveTrap_Info[1370] = {}
	-- MoveTrap_Info[1370]["ActivetyTime"] = "2015-07-09 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1370]["DayTime"] = {}
	-- MoveTrap_Info[1370]["DayTime"][1] = "15:00 15:00"
	-- MoveTrap_Info[1370]["DayTime"][2] = "19:00 19:00"
	-- MoveTrap_Info[1370]["DayTime"][3] = "20:00 20:00"
	-- MoveTrap_Info[1370]["DayTime"][4] = "21:00 21:00"
	-- MoveTrap_Info[1370]["TrapType"] = 1370
	-- MoveTrap_Info[1370]["Look"] = 1370
	-- MoveTrap_Info[1370]["MapInfo"] = {}
	-- MoveTrap_Info[1370]["MapInfo"][1] = {}
	-- MoveTrap_Info[1370]["MapInfo"][1]["MapId"] = 1011
	-- MoveTrap_Info[1370]["MapInfo"][1]["PosX"] = 189
	-- MoveTrap_Info[1370]["MapInfo"][1]["PosY"] = 271
	-- MoveTrap_Info[1370]["MapInfo"][2] = {}
	-- MoveTrap_Info[1370]["MapInfo"][2]["MapId"] = 1020
	-- MoveTrap_Info[1370]["MapInfo"][2]["PosX"] = 563
	-- MoveTrap_Info[1370]["MapInfo"][2]["PosY"] = 585
	-- MoveTrap_Info[1370]["MapInfo"][3] = {}
	-- MoveTrap_Info[1370]["MapInfo"][3]["MapId"] = 1000
	-- MoveTrap_Info[1370]["MapInfo"][3]["PosX"] = 498
	-- MoveTrap_Info[1370]["MapInfo"][3]["PosY"] = 648
	-- MoveTrap_Info[1370]["MapInfo"][4] = {}
	-- MoveTrap_Info[1370]["MapInfo"][4]["MapId"] = 1015
	-- MoveTrap_Info[1370]["MapInfo"][4]["PosX"] = 724
	-- MoveTrap_Info[1370]["MapInfo"][4]["PosY"] = 573
	-- MoveTrap_Info[1370]["MapInfo"][5] = {}
	-- MoveTrap_Info[1370]["MapInfo"][5]["MapId"] = 1002
	-- MoveTrap_Info[1370]["MapInfo"][5]["PosX"] = 310
	-- MoveTrap_Info[1370]["MapInfo"][5]["PosY"] = 276

	-- MoveTrap_Info[1371] = {}
	-- MoveTrap_Info[1371]["ActivetyTime"] = "2015-07-09 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1371]["TrapType"] = 1371
	-- MoveTrap_Info[1371]["Look"] = 1371
	-- MoveTrap_Info[1371]["MapInfo"] = {}
	-- MoveTrap_Info[1371]["MapInfo"][1] = {}
	-- MoveTrap_Info[1371]["MapInfo"][1]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][1]["PosX"] = 550
	-- MoveTrap_Info[1371]["MapInfo"][1]["PosY"] = 588
	-- MoveTrap_Info[1371]["MapInfo"][2] = {}
	-- MoveTrap_Info[1371]["MapInfo"][2]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][2]["PosX"] = 550
	-- MoveTrap_Info[1371]["MapInfo"][2]["PosY"] = 567
	-- MoveTrap_Info[1371]["MapInfo"][3] = {}
	-- MoveTrap_Info[1371]["MapInfo"][3]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][3]["PosX"] = 562
	-- MoveTrap_Info[1371]["MapInfo"][3]["PosY"] = 596
	-- MoveTrap_Info[1371]["MapInfo"][4] = {}
	-- MoveTrap_Info[1371]["MapInfo"][4]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][4]["PosX"] = 562
	-- MoveTrap_Info[1371]["MapInfo"][4]["PosY"] = 593
	-- MoveTrap_Info[1371]["MapInfo"][5] = {}
	-- MoveTrap_Info[1371]["MapInfo"][5]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][5]["PosX"] = 562
	-- MoveTrap_Info[1371]["MapInfo"][5]["PosY"] = 590
	-- MoveTrap_Info[1371]["MapInfo"][6] = {}
	-- MoveTrap_Info[1371]["MapInfo"][6]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][6]["PosX"] = 562
	-- MoveTrap_Info[1371]["MapInfo"][6]["PosY"] = 576
	-- MoveTrap_Info[1371]["MapInfo"][7] = {}
	-- MoveTrap_Info[1371]["MapInfo"][7]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][7]["PosX"] = 562
	-- MoveTrap_Info[1371]["MapInfo"][7]["PosY"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][8] = {}
	-- MoveTrap_Info[1371]["MapInfo"][8]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][8]["PosX"] = 562
	-- MoveTrap_Info[1371]["MapInfo"][8]["PosY"] = 570
	-- MoveTrap_Info[1371]["MapInfo"][9] = {}
	-- MoveTrap_Info[1371]["MapInfo"][9]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][9]["PosX"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][9]["PosY"] = 597
	-- MoveTrap_Info[1371]["MapInfo"][10] = {}
	-- MoveTrap_Info[1371]["MapInfo"][10]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][10]["PosX"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][10]["PosY"] = 594
	-- MoveTrap_Info[1371]["MapInfo"][11] = {}
	-- MoveTrap_Info[1371]["MapInfo"][11]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][11]["PosX"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][11]["PosY"] = 591
	-- MoveTrap_Info[1371]["MapInfo"][12] = {}
	-- MoveTrap_Info[1371]["MapInfo"][12]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][12]["PosX"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][12]["PosY"] = 576
	-- MoveTrap_Info[1371]["MapInfo"][13] = {}
	-- MoveTrap_Info[1371]["MapInfo"][13]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][13]["PosX"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][13]["PosY"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][14] = {}
	-- MoveTrap_Info[1371]["MapInfo"][14]["MapId"] = 1020
	-- MoveTrap_Info[1371]["MapInfo"][14]["PosX"] = 573
	-- MoveTrap_Info[1371]["MapInfo"][14]["PosY"] = 570
	-- MoveTrap_Info[1371]["MapInfo"][15] = {}
	-- MoveTrap_Info[1371]["MapInfo"][15]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][15]["PosX"] = 489
	-- MoveTrap_Info[1371]["MapInfo"][15]["PosY"] = 639
	-- MoveTrap_Info[1371]["MapInfo"][16] = {}
	-- MoveTrap_Info[1371]["MapInfo"][16]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][16]["PosX"] = 505
	-- MoveTrap_Info[1371]["MapInfo"][16]["PosY"] = 655
	-- MoveTrap_Info[1371]["MapInfo"][17] = {}
	-- MoveTrap_Info[1371]["MapInfo"][17]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][17]["PosX"] = 491
	-- MoveTrap_Info[1371]["MapInfo"][17]["PosY"] = 629
	-- MoveTrap_Info[1371]["MapInfo"][18] = {}
	-- MoveTrap_Info[1371]["MapInfo"][18]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][18]["PosX"] = 481
	-- MoveTrap_Info[1371]["MapInfo"][18]["PosY"] = 638
	-- MoveTrap_Info[1371]["MapInfo"][19] = {}
	-- MoveTrap_Info[1371]["MapInfo"][19]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][19]["PosX"] = 491
	-- MoveTrap_Info[1371]["MapInfo"][19]["PosY"] = 665
	-- MoveTrap_Info[1371]["MapInfo"][20] = {}
	-- MoveTrap_Info[1371]["MapInfo"][20]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][20]["PosX"] = 502
	-- MoveTrap_Info[1371]["MapInfo"][20]["PosY"] = 665
	-- MoveTrap_Info[1371]["MapInfo"][21] = {}
	-- MoveTrap_Info[1371]["MapInfo"][21]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][21]["PosX"] = 513
	-- MoveTrap_Info[1371]["MapInfo"][21]["PosY"] = 653
	-- MoveTrap_Info[1371]["MapInfo"][22] = {}
	-- MoveTrap_Info[1371]["MapInfo"][22]["MapId"] = 1000
	-- MoveTrap_Info[1371]["MapInfo"][22]["PosX"] = 521
	-- MoveTrap_Info[1371]["MapInfo"][22]["PosY"] = 653

	-- MoveTrap_Info[1372] = {}
	-- MoveTrap_Info[1372]["ActivetyTime"] = "2015-07-15 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1372]["TrapType"] = 1372
	-- MoveTrap_Info[1372]["Look"] = 1368
	-- MoveTrap_Info[1372]["MapInfo"] = {}
	-- MoveTrap_Info[1372]["MapInfo"][1] = {}
	-- MoveTrap_Info[1372]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[1372]["MapInfo"][1]["PosX"] = 308
	-- MoveTrap_Info[1372]["MapInfo"][1]["PosY"] = 384
	-- MoveTrap_Info[1372]["MapInfo"][2] = {}
	-- MoveTrap_Info[1372]["MapInfo"][2]["MapId"] = 1002
	-- MoveTrap_Info[1372]["MapInfo"][2]["PosX"] = 308
	-- MoveTrap_Info[1372]["MapInfo"][2]["PosY"] = 362
	
	-- MoveTrap_Info[1373] = {}
	-- MoveTrap_Info[1373]["ActivetyTime"] = "2015-07-09 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1373]["TrapType"] = 1373
	-- MoveTrap_Info[1373]["Look"] = 1032
	-- MoveTrap_Info[1373]["MapInfo"] = {}
	-- MoveTrap_Info[1373]["MapInfo"][1] = {}
	-- MoveTrap_Info[1373]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][1]["PosX"] = 328
	-- MoveTrap_Info[1373]["MapInfo"][1]["PosY"] = 295
	-- MoveTrap_Info[1373]["MapInfo"][2] = {}
	-- MoveTrap_Info[1373]["MapInfo"][2]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][2]["PosX"] = 328
	-- MoveTrap_Info[1373]["MapInfo"][2]["PosY"] = 282
	-- MoveTrap_Info[1373]["MapInfo"][3] = {}
	-- MoveTrap_Info[1373]["MapInfo"][3]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][3]["PosX"] = 328
	-- MoveTrap_Info[1373]["MapInfo"][3]["PosY"] = 275
	-- MoveTrap_Info[1373]["MapInfo"][4] = {}
	-- MoveTrap_Info[1373]["MapInfo"][4]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][4]["PosX"] = 328
	-- MoveTrap_Info[1373]["MapInfo"][4]["PosY"] = 260
	-- MoveTrap_Info[1373]["MapInfo"][5] = {}
	-- MoveTrap_Info[1373]["MapInfo"][5]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][5]["PosX"] = 315
	-- MoveTrap_Info[1373]["MapInfo"][5]["PosY"] = 295
	-- MoveTrap_Info[1373]["MapInfo"][6] = {}
	-- MoveTrap_Info[1373]["MapInfo"][6]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][6]["PosX"] = 315
	-- MoveTrap_Info[1373]["MapInfo"][6]["PosY"] = 260
	-- MoveTrap_Info[1373]["MapInfo"][7] = {}
	-- MoveTrap_Info[1373]["MapInfo"][7]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][7]["PosX"] = 307
	-- MoveTrap_Info[1373]["MapInfo"][7]["PosY"] = 295
	-- MoveTrap_Info[1373]["MapInfo"][8] = {}
	-- MoveTrap_Info[1373]["MapInfo"][8]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][8]["PosX"] = 307
	-- MoveTrap_Info[1373]["MapInfo"][8]["PosY"] = 260
	-- MoveTrap_Info[1373]["MapInfo"][9] = {}
	-- MoveTrap_Info[1373]["MapInfo"][9]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][9]["PosX"] = 293
	-- MoveTrap_Info[1373]["MapInfo"][9]["PosY"] = 295
	-- MoveTrap_Info[1373]["MapInfo"][10] = {}
	-- MoveTrap_Info[1373]["MapInfo"][10]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][10]["PosX"] = 293
	-- MoveTrap_Info[1373]["MapInfo"][10]["PosY"] = 282
	-- MoveTrap_Info[1373]["MapInfo"][11] = {}
	-- MoveTrap_Info[1373]["MapInfo"][11]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][11]["PosX"] = 293
	-- MoveTrap_Info[1373]["MapInfo"][11]["PosY"] = 275
	-- MoveTrap_Info[1373]["MapInfo"][12] = {}
	-- MoveTrap_Info[1373]["MapInfo"][12]["MapId"] = 1002
	-- MoveTrap_Info[1373]["MapInfo"][12]["PosX"] = 293
	-- MoveTrap_Info[1373]["MapInfo"][12]["PosY"] = 260

	-- MoveTrap_Info[1374] = {}
	-- MoveTrap_Info[1374]["ActivetyTime"] = "2015-07-09 00:00 2015-07-22 23:59"
	-- MoveTrap_Info[1374]["TrapType"] = 1374
	-- MoveTrap_Info[1374]["Look"] = 1374
	-- MoveTrap_Info[1374]["MapInfo"] = {}
	-- MoveTrap_Info[1374]["MapInfo"][1] = {}
	-- MoveTrap_Info[1374]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][1]["PosX"] = 302
	-- MoveTrap_Info[1374]["MapInfo"][1]["PosY"] = 388
	-- MoveTrap_Info[1374]["MapInfo"][2] = {}
	-- MoveTrap_Info[1374]["MapInfo"][2]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][2]["PosX"] = 291
	-- MoveTrap_Info[1374]["MapInfo"][2]["PosY"] = 387
	-- MoveTrap_Info[1374]["MapInfo"][3] = {}
	-- MoveTrap_Info[1374]["MapInfo"][3]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][3]["PosX"] = 280
	-- MoveTrap_Info[1374]["MapInfo"][3]["PosY"] = 388
	-- MoveTrap_Info[1374]["MapInfo"][4] = {}
	-- MoveTrap_Info[1374]["MapInfo"][4]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][4]["PosX"] = 268
	-- MoveTrap_Info[1374]["MapInfo"][4]["PosY"] = 387
	-- MoveTrap_Info[1374]["MapInfo"][5] = {}
	-- MoveTrap_Info[1374]["MapInfo"][5]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][5]["PosX"] = 269
	-- MoveTrap_Info[1374]["MapInfo"][5]["PosY"] = 375
	-- MoveTrap_Info[1374]["MapInfo"][6] = {}
	-- MoveTrap_Info[1374]["MapInfo"][6]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][6]["PosX"] = 269
	-- MoveTrap_Info[1374]["MapInfo"][6]["PosY"] = 368
	-- MoveTrap_Info[1374]["MapInfo"][7] = {}
	-- MoveTrap_Info[1374]["MapInfo"][7]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][7]["PosX"] = 269
	-- MoveTrap_Info[1374]["MapInfo"][7]["PosY"] = 355
	-- MoveTrap_Info[1374]["MapInfo"][8] = {}
	-- MoveTrap_Info[1374]["MapInfo"][8]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][8]["PosX"] = 280
	-- MoveTrap_Info[1374]["MapInfo"][8]["PosY"] = 355
	-- MoveTrap_Info[1374]["MapInfo"][9] = {}
	-- MoveTrap_Info[1374]["MapInfo"][9]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][9]["PosX"] = 291
	-- MoveTrap_Info[1374]["MapInfo"][9]["PosY"] = 355
	-- MoveTrap_Info[1374]["MapInfo"][10] = {}
	-- MoveTrap_Info[1374]["MapInfo"][10]["MapId"] = 1002
	-- MoveTrap_Info[1374]["MapInfo"][10]["PosX"] = 302
	-- MoveTrap_Info[1374]["MapInfo"][10]["PosY"] = 354
-------------------------------------------------------------------------------------------------------------
--Name:		151225[简体征服][活动脚本]外套仓库版本促销活动
--Creator:		林辉山
--Created:		2015/12/25
-------------------------------------------------------------------------------------------------------------
	
	MoveTrap_Info[1407] = {}
	MoveTrap_Info[1407]["NewActivetyTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	MoveTrap_Info[1407]["TrapType"] = 1407
	MoveTrap_Info[1407]["Look"] = 1407
	MoveTrap_Info[1407]["MapInfo"] = {}
	MoveTrap_Info[1407]["MapInfo"][1] = {}
	MoveTrap_Info[1407]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[1407]["MapInfo"][1]["PosX"] = 381
	MoveTrap_Info[1407]["MapInfo"][1]["PosY"] = 447
	MoveTrap_Info[1407]["GlobalId"] = 51131

------------------------------------------------------------------------------------
--Name：            171214[英文征服][活动脚本]12月游戏氛围制作
--Creator:      杨艳
--Created:     2017/12/14
------------------------------------------------------------------------------------	
MoveTrap_Info[1840] = {}
	MoveTrap_Info[1840]["ActivetyTime"] = "2017-12-21 00:00 2017-12-31 23:59"
	MoveTrap_Info[1840]["TrapType"] = 1840
	MoveTrap_Info[1840]["Look"] = 1063
	MoveTrap_Info[1840]["MapInfo"] = {}
	MoveTrap_Info[1840]["MapInfo"][1] = {}
	MoveTrap_Info[1840]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][1]["PosX"] = 328
	MoveTrap_Info[1840]["MapInfo"][1]["PosY"] = 384
	MoveTrap_Info[1840]["MapInfo"][2] = {}
	MoveTrap_Info[1840]["MapInfo"][2]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][2]["PosX"] = 383
	MoveTrap_Info[1840]["MapInfo"][2]["PosY"] = 384
	MoveTrap_Info[1840]["MapInfo"][3] = {}
	MoveTrap_Info[1840]["MapInfo"][3]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][3]["PosX"] = 355
	MoveTrap_Info[1840]["MapInfo"][3]["PosY"] = 295
	MoveTrap_Info[1840]["MapInfo"][4] = {}
	MoveTrap_Info[1840]["MapInfo"][4]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][4]["PosX"] = 320
	MoveTrap_Info[1840]["MapInfo"][4]["PosY"] = 295
	MoveTrap_Info[1840]["MapInfo"][5] = {}
	MoveTrap_Info[1840]["MapInfo"][5]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][5]["PosX"] = 363
	MoveTrap_Info[1840]["MapInfo"][5]["PosY"] = 384
	MoveTrap_Info[1840]["MapInfo"][6] = {}
	MoveTrap_Info[1840]["MapInfo"][6]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][6]["PosX"] = 334
	MoveTrap_Info[1840]["MapInfo"][6]["PosY"] = 359
	MoveTrap_Info[1840]["MapInfo"][7] = {}
	MoveTrap_Info[1840]["MapInfo"][7]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][7]["PosX"] = 424
	MoveTrap_Info[1840]["MapInfo"][7]["PosY"] = 270
	MoveTrap_Info[1840]["MapInfo"][8] = {}
	MoveTrap_Info[1840]["MapInfo"][8]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][8]["PosX"] = 383
	MoveTrap_Info[1840]["MapInfo"][8]["PosY"] = 313
	MoveTrap_Info[1840]["MapInfo"][9] = {}
	MoveTrap_Info[1840]["MapInfo"][9]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][9]["PosX"] = 347
	MoveTrap_Info[1840]["MapInfo"][9]["PosY"] = 272
	MoveTrap_Info[1840]["MapInfo"][10] = {}
	MoveTrap_Info[1840]["MapInfo"][10]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][10]["PosX"] = 333
	MoveTrap_Info[1840]["MapInfo"][10]["PosY"] = 272
	MoveTrap_Info[1840]["MapInfo"][11] = {}
	MoveTrap_Info[1840]["MapInfo"][11]["MapId"] = 1002
	MoveTrap_Info[1840]["MapInfo"][11]["PosX"] = 334
	MoveTrap_Info[1840]["MapInfo"][11]["PosY"] = 360

	
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]天下第一武道会
--Creator:		翁清海
--Created:		2017/09/28
------------------------------------------------------------------------------------
-- MoveTrap_Info[1852] = {}
-- MoveTrap_Info[1852]["ActivetyTime"] = tActivityTime["FirstWorldBudokai"]["ActivityTime"]
-- MoveTrap_Info[1852]["TrapType"] = 1852
-- MoveTrap_Info[1852]["Look"] = 1837
-- MoveTrap_Info[1852]["MapInfo"] = {}
-- MoveTrap_Info[1852]["MapInfo"][1] = {}
-- MoveTrap_Info[1852]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1852]["MapInfo"][1]["PosX"] = 374
-- MoveTrap_Info[1852]["MapInfo"][1]["PosY"] = 446
-- MoveTrap_Info[1852]["MapInfo"][2] = {}
-- MoveTrap_Info[1852]["MapInfo"][2]["MapId"] = 1002
-- MoveTrap_Info[1852]["MapInfo"][2]["PosX"] = 321
-- MoveTrap_Info[1852]["MapInfo"][2]["PosY"] = 446
	
------------------------------------------------------------------------------------
--Name:			180109[英文征服][活动脚本]2月情人节大作战
--Creator:		陈琳
--Created:		2018/01/09
------------------------------------------------------------------------------------
-- 秀恩爱任务 跳舞
MoveTrap_Info[1893] = {}
MoveTrap_Info[1893]["ActivetyTime"] = tActivityTime["ChineseValentinesOperation"]["ActivityTime"]
MoveTrap_Info[1893]["TrapType"] = 1893
MoveTrap_Info[1893]["Look"] = 17
MoveTrap_Info[1893]["MapInfo"] = {}
MoveTrap_Info[1893]["MapInfo"][1] = {}
MoveTrap_Info[1893]["MapInfo"][1]["MapId"] = 10273
MoveTrap_Info[1893]["MapInfo"][1]["PosX"] = 110
MoveTrap_Info[1893]["MapInfo"][1]["PosY"] = 110
MoveTrap_Info[1893]["MapInfo"][2] = {}
MoveTrap_Info[1893]["MapInfo"][2]["MapId"] = 10273
MoveTrap_Info[1893]["MapInfo"][2]["PosX"] = 117
MoveTrap_Info[1893]["MapInfo"][2]["PosY"] = 99

-- 离开宴会
MoveTrap_Info[1902] = {}
MoveTrap_Info[1902]["ActivetyTime"] = tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]
MoveTrap_Info[1902]["TrapType"] = 1902
MoveTrap_Info[1902]["Look"] = 24
MoveTrap_Info[1902]["MapInfo"] = {}
MoveTrap_Info[1902]["MapInfo"][1] = {}
MoveTrap_Info[1902]["MapInfo"][1]["MapId"] = 10259
MoveTrap_Info[1902]["MapInfo"][1]["PosX"] = 58
MoveTrap_Info[1902]["MapInfo"][1]["PosY"] = 85
MoveTrap_Info[1902]["MapInfo"][2] = {}
MoveTrap_Info[1902]["MapInfo"][2]["MapId"] = 10264
MoveTrap_Info[1902]["MapInfo"][2]["PosX"] = 58
MoveTrap_Info[1902]["MapInfo"][2]["PosY"] = 85

-- 气球
MoveTrap_Info[1900] = {}
MoveTrap_Info[1900]["ActivetyTime"] = tActivityTime["ChineseValentinesOperation"]["InTheMap"]
MoveTrap_Info[1900]["TrapType"] = 1900
MoveTrap_Info[1900]["Look"] = 1063
MoveTrap_Info[1900]["MapInfo"] = {}
MoveTrap_Info[1900]["MapInfo"][1] = {}
MoveTrap_Info[1900]["MapInfo"][1]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][1]["PosX"] = 62
MoveTrap_Info[1900]["MapInfo"][1]["PosY"] = 86
MoveTrap_Info[1900]["MapInfo"][2] = {}
MoveTrap_Info[1900]["MapInfo"][2]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][2]["PosX"] = 62
MoveTrap_Info[1900]["MapInfo"][2]["PosY"] = 81
MoveTrap_Info[1900]["MapInfo"][3] = {}
MoveTrap_Info[1900]["MapInfo"][3]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][3]["PosX"] = 66
MoveTrap_Info[1900]["MapInfo"][3]["PosY"] = 78
MoveTrap_Info[1900]["MapInfo"][4] = {}
MoveTrap_Info[1900]["MapInfo"][4]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][4]["PosX"] = 71
MoveTrap_Info[1900]["MapInfo"][4]["PosY"] = 78
MoveTrap_Info[1900]["MapInfo"][5] = {}
MoveTrap_Info[1900]["MapInfo"][5]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][5]["PosX"] = 76
MoveTrap_Info[1900]["MapInfo"][5]["PosY"] = 77
MoveTrap_Info[1900]["MapInfo"][6] = {}
MoveTrap_Info[1900]["MapInfo"][6]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][6]["PosX"] = 79
MoveTrap_Info[1900]["MapInfo"][6]["PosY"] = 73
MoveTrap_Info[1900]["MapInfo"][7] = {}
MoveTrap_Info[1900]["MapInfo"][7]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][7]["PosX"] = 82
MoveTrap_Info[1900]["MapInfo"][7]["PosY"] = 70
MoveTrap_Info[1900]["MapInfo"][8] = {}
MoveTrap_Info[1900]["MapInfo"][8]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][8]["PosX"] = 83
MoveTrap_Info[1900]["MapInfo"][8]["PosY"] = 66
MoveTrap_Info[1900]["MapInfo"][9] = {}
MoveTrap_Info[1900]["MapInfo"][9]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][9]["PosX"] = 84
MoveTrap_Info[1900]["MapInfo"][9]["PosY"] = 57
MoveTrap_Info[1900]["MapInfo"][10] = {}
MoveTrap_Info[1900]["MapInfo"][10]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][10]["PosX"] = 84
MoveTrap_Info[1900]["MapInfo"][10]["PosY"] = 48
MoveTrap_Info[1900]["MapInfo"][11] = {}
MoveTrap_Info[1900]["MapInfo"][11]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][11]["PosX"] = 84
MoveTrap_Info[1900]["MapInfo"][11]["PosY"] = 43
MoveTrap_Info[1900]["MapInfo"][12] = {}
MoveTrap_Info[1900]["MapInfo"][12]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][12]["PosX"] = 77
MoveTrap_Info[1900]["MapInfo"][12]["PosY"] = 42
MoveTrap_Info[1900]["MapInfo"][13] = {}
MoveTrap_Info[1900]["MapInfo"][13]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][13]["PosX"] = 74
MoveTrap_Info[1900]["MapInfo"][13]["PosY"] = 37
MoveTrap_Info[1900]["MapInfo"][14] = {}
MoveTrap_Info[1900]["MapInfo"][14]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][14]["PosX"] = 69
MoveTrap_Info[1900]["MapInfo"][14]["PosY"] = 32
MoveTrap_Info[1900]["MapInfo"][15] = {}
MoveTrap_Info[1900]["MapInfo"][15]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][15]["PosX"] = 60
MoveTrap_Info[1900]["MapInfo"][15]["PosY"] = 30
MoveTrap_Info[1900]["MapInfo"][16] = {}
MoveTrap_Info[1900]["MapInfo"][16]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][16]["PosX"] = 59
MoveTrap_Info[1900]["MapInfo"][16]["PosY"] = 38
MoveTrap_Info[1900]["MapInfo"][17] = {}
MoveTrap_Info[1900]["MapInfo"][17]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][17]["PosX"] = 50
MoveTrap_Info[1900]["MapInfo"][17]["PosY"] = 38
MoveTrap_Info[1900]["MapInfo"][18] = {}
MoveTrap_Info[1900]["MapInfo"][18]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][18]["PosX"] = 50
MoveTrap_Info[1900]["MapInfo"][18]["PosY"] = 30
MoveTrap_Info[1900]["MapInfo"][19] = {}
MoveTrap_Info[1900]["MapInfo"][19]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][19]["PosX"] = 45
MoveTrap_Info[1900]["MapInfo"][19]["PosY"] = 33
MoveTrap_Info[1900]["MapInfo"][20] = {}
MoveTrap_Info[1900]["MapInfo"][20]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][20]["PosX"] = 39
MoveTrap_Info[1900]["MapInfo"][20]["PosY"] = 32
MoveTrap_Info[1900]["MapInfo"][21] = {}
MoveTrap_Info[1900]["MapInfo"][21]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][21]["PosX"] = 39
MoveTrap_Info[1900]["MapInfo"][21]["PosY"] = 38
MoveTrap_Info[1900]["MapInfo"][22] = {}
MoveTrap_Info[1900]["MapInfo"][22]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][22]["PosX"] = 41
MoveTrap_Info[1900]["MapInfo"][22]["PosY"] = 42
MoveTrap_Info[1900]["MapInfo"][23] = {}
MoveTrap_Info[1900]["MapInfo"][23]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][23]["PosX"] = 34
MoveTrap_Info[1900]["MapInfo"][23]["PosY"] = 43
MoveTrap_Info[1900]["MapInfo"][24] = {}
MoveTrap_Info[1900]["MapInfo"][24]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][24]["PosX"] = 34
MoveTrap_Info[1900]["MapInfo"][24]["PosY"] = 49
MoveTrap_Info[1900]["MapInfo"][25] = {}
MoveTrap_Info[1900]["MapInfo"][25]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][25]["PosX"] = 34
MoveTrap_Info[1900]["MapInfo"][25]["PosY"] = 58
MoveTrap_Info[1900]["MapInfo"][26] = {}
MoveTrap_Info[1900]["MapInfo"][26]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][26]["PosX"] = 34
MoveTrap_Info[1900]["MapInfo"][26]["PosY"] = 67
MoveTrap_Info[1900]["MapInfo"][27] = {}
MoveTrap_Info[1900]["MapInfo"][27]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][27]["PosX"] = 38
MoveTrap_Info[1900]["MapInfo"][27]["PosY"] = 72
MoveTrap_Info[1900]["MapInfo"][28] = {}
MoveTrap_Info[1900]["MapInfo"][28]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][28]["PosX"] = 44
MoveTrap_Info[1900]["MapInfo"][28]["PosY"] = 78
MoveTrap_Info[1900]["MapInfo"][29] = {}
MoveTrap_Info[1900]["MapInfo"][29]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][29]["PosX"] = 50
MoveTrap_Info[1900]["MapInfo"][29]["PosY"] = 78
MoveTrap_Info[1900]["MapInfo"][30] = {}
MoveTrap_Info[1900]["MapInfo"][30]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][30]["PosX"] = 54
MoveTrap_Info[1900]["MapInfo"][30]["PosY"] = 81
MoveTrap_Info[1900]["MapInfo"][31] = {}
MoveTrap_Info[1900]["MapInfo"][31]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][31]["PosX"] = 55
MoveTrap_Info[1900]["MapInfo"][31]["PosY"] = 87
MoveTrap_Info[1900]["MapInfo"][32] = {}
MoveTrap_Info[1900]["MapInfo"][32]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][32]["PosX"] = 50
MoveTrap_Info[1900]["MapInfo"][32]["PosY"] = 43
MoveTrap_Info[1900]["MapInfo"][33] = {}
MoveTrap_Info[1900]["MapInfo"][33]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][33]["PosX"] = 51
MoveTrap_Info[1900]["MapInfo"][33]["PosY"] = 43
MoveTrap_Info[1900]["MapInfo"][34] = {}
MoveTrap_Info[1900]["MapInfo"][34]["MapId"] = 10259
MoveTrap_Info[1900]["MapInfo"][34]["PosX"] = 69
MoveTrap_Info[1900]["MapInfo"][34]["PosY"] = 43

MoveTrap_Info[1901] = {}
MoveTrap_Info[1901]["ActivetyTime"] = tActivityTime["ChineseValentinesOperation"]["InTheMap"]
MoveTrap_Info[1901]["TrapType"] = 1901
MoveTrap_Info[1901]["Look"] = 1063
MoveTrap_Info[1901]["MapInfo"] = {}
MoveTrap_Info[1901]["MapInfo"][1] = {}
MoveTrap_Info[1901]["MapInfo"][1]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][1]["PosX"] = 62
MoveTrap_Info[1901]["MapInfo"][1]["PosY"] = 86
MoveTrap_Info[1901]["MapInfo"][2] = {}
MoveTrap_Info[1901]["MapInfo"][2]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][2]["PosX"] = 62
MoveTrap_Info[1901]["MapInfo"][2]["PosY"] = 81
MoveTrap_Info[1901]["MapInfo"][3] = {}
MoveTrap_Info[1901]["MapInfo"][3]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][3]["PosX"] = 66
MoveTrap_Info[1901]["MapInfo"][3]["PosY"] = 78
MoveTrap_Info[1901]["MapInfo"][4] = {}
MoveTrap_Info[1901]["MapInfo"][4]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][4]["PosX"] = 71
MoveTrap_Info[1901]["MapInfo"][4]["PosY"] = 78
MoveTrap_Info[1901]["MapInfo"][5] = {}
MoveTrap_Info[1901]["MapInfo"][5]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][5]["PosX"] = 76
MoveTrap_Info[1901]["MapInfo"][5]["PosY"] = 77
MoveTrap_Info[1901]["MapInfo"][6] = {}
MoveTrap_Info[1901]["MapInfo"][6]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][6]["PosX"] = 79
MoveTrap_Info[1901]["MapInfo"][6]["PosY"] = 73
MoveTrap_Info[1901]["MapInfo"][7] = {}
MoveTrap_Info[1901]["MapInfo"][7]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][7]["PosX"] = 82
MoveTrap_Info[1901]["MapInfo"][7]["PosY"] = 70
MoveTrap_Info[1901]["MapInfo"][8] = {}
MoveTrap_Info[1901]["MapInfo"][8]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][8]["PosX"] = 83
MoveTrap_Info[1901]["MapInfo"][8]["PosY"] = 66
MoveTrap_Info[1901]["MapInfo"][9] = {}
MoveTrap_Info[1901]["MapInfo"][9]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][9]["PosX"] = 84
MoveTrap_Info[1901]["MapInfo"][9]["PosY"] = 57
MoveTrap_Info[1901]["MapInfo"][10] = {}
MoveTrap_Info[1901]["MapInfo"][10]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][10]["PosX"] = 84
MoveTrap_Info[1901]["MapInfo"][10]["PosY"] = 48
MoveTrap_Info[1901]["MapInfo"][11] = {}
MoveTrap_Info[1901]["MapInfo"][11]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][11]["PosX"] = 84
MoveTrap_Info[1901]["MapInfo"][11]["PosY"] = 43
MoveTrap_Info[1901]["MapInfo"][12] = {}
MoveTrap_Info[1901]["MapInfo"][12]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][12]["PosX"] = 77
MoveTrap_Info[1901]["MapInfo"][12]["PosY"] = 42
MoveTrap_Info[1901]["MapInfo"][13] = {}
MoveTrap_Info[1901]["MapInfo"][13]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][13]["PosX"] = 74
MoveTrap_Info[1901]["MapInfo"][13]["PosY"] = 37
MoveTrap_Info[1901]["MapInfo"][14] = {}
MoveTrap_Info[1901]["MapInfo"][14]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][14]["PosX"] = 69
MoveTrap_Info[1901]["MapInfo"][14]["PosY"] = 32
MoveTrap_Info[1901]["MapInfo"][15] = {}
MoveTrap_Info[1901]["MapInfo"][15]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][15]["PosX"] = 60
MoveTrap_Info[1901]["MapInfo"][15]["PosY"] = 30
MoveTrap_Info[1901]["MapInfo"][16] = {}
MoveTrap_Info[1901]["MapInfo"][16]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][16]["PosX"] = 59
MoveTrap_Info[1901]["MapInfo"][16]["PosY"] = 38
MoveTrap_Info[1901]["MapInfo"][17] = {}
MoveTrap_Info[1901]["MapInfo"][17]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][17]["PosX"] = 50
MoveTrap_Info[1901]["MapInfo"][17]["PosY"] = 38
MoveTrap_Info[1901]["MapInfo"][18] = {}
MoveTrap_Info[1901]["MapInfo"][18]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][18]["PosX"] = 50
MoveTrap_Info[1901]["MapInfo"][18]["PosY"] = 30
MoveTrap_Info[1901]["MapInfo"][19] = {}
MoveTrap_Info[1901]["MapInfo"][19]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][19]["PosX"] = 45
MoveTrap_Info[1901]["MapInfo"][19]["PosY"] = 33
MoveTrap_Info[1901]["MapInfo"][20] = {}
MoveTrap_Info[1901]["MapInfo"][20]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][20]["PosX"] = 39
MoveTrap_Info[1901]["MapInfo"][20]["PosY"] = 32
MoveTrap_Info[1901]["MapInfo"][21] = {}
MoveTrap_Info[1901]["MapInfo"][21]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][21]["PosX"] = 39
MoveTrap_Info[1901]["MapInfo"][21]["PosY"] = 38
MoveTrap_Info[1901]["MapInfo"][22] = {}
MoveTrap_Info[1901]["MapInfo"][22]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][22]["PosX"] = 41
MoveTrap_Info[1901]["MapInfo"][22]["PosY"] = 42
MoveTrap_Info[1901]["MapInfo"][23] = {}
MoveTrap_Info[1901]["MapInfo"][23]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][23]["PosX"] = 34
MoveTrap_Info[1901]["MapInfo"][23]["PosY"] = 43
MoveTrap_Info[1901]["MapInfo"][24] = {}
MoveTrap_Info[1901]["MapInfo"][24]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][24]["PosX"] = 34
MoveTrap_Info[1901]["MapInfo"][24]["PosY"] = 49
MoveTrap_Info[1901]["MapInfo"][25] = {}
MoveTrap_Info[1901]["MapInfo"][25]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][25]["PosX"] = 34
MoveTrap_Info[1901]["MapInfo"][25]["PosY"] = 58
MoveTrap_Info[1901]["MapInfo"][26] = {}
MoveTrap_Info[1901]["MapInfo"][26]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][26]["PosX"] = 34
MoveTrap_Info[1901]["MapInfo"][26]["PosY"] = 67
MoveTrap_Info[1901]["MapInfo"][27] = {}
MoveTrap_Info[1901]["MapInfo"][27]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][27]["PosX"] = 38
MoveTrap_Info[1901]["MapInfo"][27]["PosY"] = 72
MoveTrap_Info[1901]["MapInfo"][28] = {}
MoveTrap_Info[1901]["MapInfo"][28]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][28]["PosX"] = 44
MoveTrap_Info[1901]["MapInfo"][28]["PosY"] = 78
MoveTrap_Info[1901]["MapInfo"][29] = {}
MoveTrap_Info[1901]["MapInfo"][29]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][29]["PosX"] = 50
MoveTrap_Info[1901]["MapInfo"][29]["PosY"] = 78
MoveTrap_Info[1901]["MapInfo"][30] = {}
MoveTrap_Info[1901]["MapInfo"][30]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][30]["PosX"] = 54
MoveTrap_Info[1901]["MapInfo"][30]["PosY"] = 81
MoveTrap_Info[1901]["MapInfo"][31] = {}
MoveTrap_Info[1901]["MapInfo"][31]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][31]["PosX"] = 55
MoveTrap_Info[1901]["MapInfo"][31]["PosY"] = 87
MoveTrap_Info[1901]["MapInfo"][32] = {}
MoveTrap_Info[1901]["MapInfo"][32]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][32]["PosX"] = 50
MoveTrap_Info[1901]["MapInfo"][32]["PosY"] = 43
MoveTrap_Info[1901]["MapInfo"][33] = {}
MoveTrap_Info[1901]["MapInfo"][33]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][33]["PosX"] = 51
MoveTrap_Info[1901]["MapInfo"][33]["PosY"] = 43
MoveTrap_Info[1901]["MapInfo"][34] = {}
MoveTrap_Info[1901]["MapInfo"][34]["MapId"] = 10264
MoveTrap_Info[1901]["MapInfo"][34]["PosX"] = 69
MoveTrap_Info[1901]["MapInfo"][34]["PosY"] = 43
	
------------------------------------------------------------------------------------
--Name:			170206[英文征服][活动脚本]2017复活节小活动制作
--Creator:		陈琳
--Created:		2017/02/06
------------------------------------------------------------------------------------
-- -- 气球
-- MoveTrap_Info[1639] = {}
-- -- MoveTrap_Info[1639]["ActivetyTime"] = tActivityTime["Easter"]["ActivityTime"]
-- MoveTrap_Info[1639]["ActivetyTime"] = tActivityTime["SummerActivityShop"]["ActivityTime"]
-- MoveTrap_Info[1639]["TrapType"] = 1639
-- MoveTrap_Info[1639]["Look"] = 1063
-- -- 双龙城
-- MoveTrap_Info[1639]["MapInfo"] = {}
-- MoveTrap_Info[1639]["MapInfo"][1] = {}
-- MoveTrap_Info[1639]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][1]["PosX"] = 409
-- MoveTrap_Info[1639]["MapInfo"][1]["PosY"] = 367
-- MoveTrap_Info[1639]["MapInfo"][2] = {}
-- MoveTrap_Info[1639]["MapInfo"][2]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][2]["PosX"] = 416
-- MoveTrap_Info[1639]["MapInfo"][2]["PosY"] = 367
-- MoveTrap_Info[1639]["MapInfo"][3] = {}
-- MoveTrap_Info[1639]["MapInfo"][3]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][3]["PosX"] = 424
-- MoveTrap_Info[1639]["MapInfo"][3]["PosY"] = 362
-- MoveTrap_Info[1639]["MapInfo"][4] = {}
-- MoveTrap_Info[1639]["MapInfo"][4]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][4]["PosX"] = 424
-- MoveTrap_Info[1639]["MapInfo"][4]["PosY"] = 355
-- MoveTrap_Info[1639]["MapInfo"][5] = {}
-- MoveTrap_Info[1639]["MapInfo"][5]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][5]["PosX"] = 416
-- MoveTrap_Info[1639]["MapInfo"][5]["PosY"] = 346
-- MoveTrap_Info[1639]["MapInfo"][6] = {}
-- MoveTrap_Info[1639]["MapInfo"][6]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][6]["PosX"] = 408
-- MoveTrap_Info[1639]["MapInfo"][6]["PosY"] = 346
-- MoveTrap_Info[1639]["MapInfo"][7] = {}
-- MoveTrap_Info[1639]["MapInfo"][7]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][7]["PosX"] = 403
-- MoveTrap_Info[1639]["MapInfo"][7]["PosY"] = 359
-- MoveTrap_Info[1639]["MapInfo"][8] = {}
-- MoveTrap_Info[1639]["MapInfo"][8]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][8]["PosX"] = 403
-- MoveTrap_Info[1639]["MapInfo"][8]["PosY"] = 352
-- MoveTrap_Info[1639]["MapInfo"][9] = {}
-- MoveTrap_Info[1639]["MapInfo"][9]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][9]["PosX"] = 404
-- MoveTrap_Info[1639]["MapInfo"][9]["PosY"] = 339
-- MoveTrap_Info[1639]["MapInfo"][10] = {}
-- MoveTrap_Info[1639]["MapInfo"][10]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][10]["PosX"] = 418
-- MoveTrap_Info[1639]["MapInfo"][10]["PosY"] = 339
-- MoveTrap_Info[1639]["MapInfo"][11] = {}
-- MoveTrap_Info[1639]["MapInfo"][11]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][11]["PosX"] = 431
-- MoveTrap_Info[1639]["MapInfo"][11]["PosY"] = 365
-- MoveTrap_Info[1639]["MapInfo"][12] = {}
-- MoveTrap_Info[1639]["MapInfo"][12]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][12]["PosX"] = 431
-- MoveTrap_Info[1639]["MapInfo"][12]["PosY"] = 351
-- MoveTrap_Info[1639]["MapInfo"][13] = {}
-- MoveTrap_Info[1639]["MapInfo"][13]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][13]["PosX"] = 413
-- MoveTrap_Info[1639]["MapInfo"][13]["PosY"] = 381
-- MoveTrap_Info[1639]["MapInfo"][14] = {}
-- MoveTrap_Info[1639]["MapInfo"][14]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][14]["PosX"] = 394
-- MoveTrap_Info[1639]["MapInfo"][14]["PosY"] = 381
-- MoveTrap_Info[1639]["MapInfo"][15] = {}
-- MoveTrap_Info[1639]["MapInfo"][15]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][15]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][15]["PosY"] = 398
-- MoveTrap_Info[1639]["MapInfo"][16] = {}
-- MoveTrap_Info[1639]["MapInfo"][16]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][16]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][16]["PosY"] = 402
-- MoveTrap_Info[1639]["MapInfo"][17] = {}
-- MoveTrap_Info[1639]["MapInfo"][17]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][17]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][17]["PosY"] = 406
-- MoveTrap_Info[1639]["MapInfo"][18] = {}
-- MoveTrap_Info[1639]["MapInfo"][18]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][18]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][18]["PosY"] = 410
-- MoveTrap_Info[1639]["MapInfo"][19] = {}
-- MoveTrap_Info[1639]["MapInfo"][19]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][19]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][19]["PosY"] = 414
-- MoveTrap_Info[1639]["MapInfo"][20] = {}
-- MoveTrap_Info[1639]["MapInfo"][20]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][20]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][20]["PosY"] = 418
-- MoveTrap_Info[1639]["MapInfo"][21] = {}
-- MoveTrap_Info[1639]["MapInfo"][21]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][21]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][21]["PosY"] = 426
-- MoveTrap_Info[1639]["MapInfo"][22] = {}
-- MoveTrap_Info[1639]["MapInfo"][22]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][22]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][22]["PosY"] = 430
-- MoveTrap_Info[1639]["MapInfo"][23] = {}
-- MoveTrap_Info[1639]["MapInfo"][23]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][23]["PosX"] = 344
-- MoveTrap_Info[1639]["MapInfo"][23]["PosY"] = 457
-- MoveTrap_Info[1639]["MapInfo"][24] = {}
-- MoveTrap_Info[1639]["MapInfo"][24]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][24]["PosX"] = 351
-- MoveTrap_Info[1639]["MapInfo"][24]["PosY"] = 457
-- MoveTrap_Info[1639]["MapInfo"][25] = {}
-- MoveTrap_Info[1639]["MapInfo"][25]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][25]["PosX"] = 361
-- MoveTrap_Info[1639]["MapInfo"][25]["PosY"] = 446
-- MoveTrap_Info[1639]["MapInfo"][26] = {}
-- MoveTrap_Info[1639]["MapInfo"][26]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][26]["PosX"] = 361
-- MoveTrap_Info[1639]["MapInfo"][26]["PosY"] = 441
-- MoveTrap_Info[1639]["MapInfo"][27] = {}
-- MoveTrap_Info[1639]["MapInfo"][27]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][27]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][27]["PosY"] = 398
-- MoveTrap_Info[1639]["MapInfo"][28] = {}
-- MoveTrap_Info[1639]["MapInfo"][28]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][28]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][28]["PosY"] = 402
-- MoveTrap_Info[1639]["MapInfo"][29] = {}
-- MoveTrap_Info[1639]["MapInfo"][29]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][29]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][29]["PosY"] = 406
-- MoveTrap_Info[1639]["MapInfo"][30] = {}
-- MoveTrap_Info[1639]["MapInfo"][30]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][30]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][30]["PosY"] = 410
-- MoveTrap_Info[1639]["MapInfo"][31] = {}
-- MoveTrap_Info[1639]["MapInfo"][31]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][31]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][31]["PosY"] = 414
-- MoveTrap_Info[1639]["MapInfo"][32] = {}
-- MoveTrap_Info[1639]["MapInfo"][32]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][32]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][32]["PosY"] = 418
-- MoveTrap_Info[1639]["MapInfo"][33] = {}
-- MoveTrap_Info[1639]["MapInfo"][33]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][33]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][33]["PosY"] = 422
-- MoveTrap_Info[1639]["MapInfo"][34] = {}
-- MoveTrap_Info[1639]["MapInfo"][34]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][34]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][34]["PosY"] = 426
-- MoveTrap_Info[1639]["MapInfo"][35] = {}
-- MoveTrap_Info[1639]["MapInfo"][35]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][35]["PosX"] = 350
-- MoveTrap_Info[1639]["MapInfo"][35]["PosY"] = 430
-- MoveTrap_Info[1639]["MapInfo"][36] = {}
-- MoveTrap_Info[1639]["MapInfo"][36]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][36]["PosX"] = 344
-- MoveTrap_Info[1639]["MapInfo"][36]["PosY"] = 430
-- MoveTrap_Info[1639]["MapInfo"][37] = {}
-- MoveTrap_Info[1639]["MapInfo"][37]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][37]["PosX"] = 334
-- MoveTrap_Info[1639]["MapInfo"][37]["PosY"] = 440
-- MoveTrap_Info[1639]["MapInfo"][38] = {}
-- MoveTrap_Info[1639]["MapInfo"][38]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][38]["PosX"] = 334
-- MoveTrap_Info[1639]["MapInfo"][38]["PosY"] = 446
-- MoveTrap_Info[1639]["MapInfo"][39] = {}
-- MoveTrap_Info[1639]["MapInfo"][39]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][39]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][39]["PosY"] = 456
-- MoveTrap_Info[1639]["MapInfo"][40] = {}
-- MoveTrap_Info[1639]["MapInfo"][40]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][40]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][40]["PosY"] = 460
-- MoveTrap_Info[1639]["MapInfo"][41] = {}
-- MoveTrap_Info[1639]["MapInfo"][41]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][41]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][41]["PosY"] = 464
-- MoveTrap_Info[1639]["MapInfo"][42] = {}
-- MoveTrap_Info[1639]["MapInfo"][42]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][42]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][42]["PosY"] = 468
-- MoveTrap_Info[1639]["MapInfo"][43] = {}
-- MoveTrap_Info[1639]["MapInfo"][43]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][43]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][43]["PosY"] = 472
-- MoveTrap_Info[1639]["MapInfo"][44] = {}
-- MoveTrap_Info[1639]["MapInfo"][44]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][44]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][44]["PosY"] = 476
-- MoveTrap_Info[1639]["MapInfo"][45] = {}
-- MoveTrap_Info[1639]["MapInfo"][45]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][45]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][45]["PosY"] = 480
-- MoveTrap_Info[1639]["MapInfo"][46] = {}
-- MoveTrap_Info[1639]["MapInfo"][46]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][46]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][46]["PosY"] = 484
-- MoveTrap_Info[1639]["MapInfo"][47] = {}
-- MoveTrap_Info[1639]["MapInfo"][47]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][47]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][47]["PosY"] = 488
-- MoveTrap_Info[1639]["MapInfo"][48] = {}
-- MoveTrap_Info[1639]["MapInfo"][48]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][48]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][48]["PosY"] = 456
-- MoveTrap_Info[1639]["MapInfo"][49] = {}
-- MoveTrap_Info[1639]["MapInfo"][49]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][49]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][49]["PosY"] = 460
-- MoveTrap_Info[1639]["MapInfo"][50] = {}
-- MoveTrap_Info[1639]["MapInfo"][50]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][50]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][50]["PosY"] = 464
-- MoveTrap_Info[1639]["MapInfo"][51] = {}
-- MoveTrap_Info[1639]["MapInfo"][51]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][51]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][51]["PosY"] = 468
-- MoveTrap_Info[1639]["MapInfo"][52] = {}
-- MoveTrap_Info[1639]["MapInfo"][52]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][52]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][52]["PosY"] = 472
-- MoveTrap_Info[1639]["MapInfo"][53] = {}
-- MoveTrap_Info[1639]["MapInfo"][53]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][53]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][53]["PosY"] = 476
-- MoveTrap_Info[1639]["MapInfo"][54] = {}
-- MoveTrap_Info[1639]["MapInfo"][54]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][54]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][54]["PosY"] = 480
-- MoveTrap_Info[1639]["MapInfo"][55] = {}
-- MoveTrap_Info[1639]["MapInfo"][55]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][55]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][55]["PosY"] = 484
-- MoveTrap_Info[1639]["MapInfo"][56] = {}
-- MoveTrap_Info[1639]["MapInfo"][56]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][56]["PosX"] = 339
-- MoveTrap_Info[1639]["MapInfo"][56]["PosY"] = 488
-- MoveTrap_Info[1639]["MapInfo"][57] = {}
-- MoveTrap_Info[1639]["MapInfo"][57]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][57]["PosX"] = 360
-- MoveTrap_Info[1639]["MapInfo"][57]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][58] = {}
-- MoveTrap_Info[1639]["MapInfo"][58]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][58]["PosX"] = 364
-- MoveTrap_Info[1639]["MapInfo"][58]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][59] = {}
-- MoveTrap_Info[1639]["MapInfo"][59]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][59]["PosX"] = 368
-- MoveTrap_Info[1639]["MapInfo"][59]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][60] = {}
-- MoveTrap_Info[1639]["MapInfo"][60]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][60]["PosX"] = 372
-- MoveTrap_Info[1639]["MapInfo"][60]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][61] = {}
-- MoveTrap_Info[1639]["MapInfo"][61]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][61]["PosX"] = 376
-- MoveTrap_Info[1639]["MapInfo"][61]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][62] = {}
-- MoveTrap_Info[1639]["MapInfo"][62]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][62]["PosX"] = 380
-- MoveTrap_Info[1639]["MapInfo"][62]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][63] = {}
-- MoveTrap_Info[1639]["MapInfo"][63]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][63]["PosX"] = 384
-- MoveTrap_Info[1639]["MapInfo"][63]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][64] = {}
-- MoveTrap_Info[1639]["MapInfo"][64]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][64]["PosX"] = 334
-- MoveTrap_Info[1639]["MapInfo"][64]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][65] = {}
-- MoveTrap_Info[1639]["MapInfo"][65]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][65]["PosX"] = 330
-- MoveTrap_Info[1639]["MapInfo"][65]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][66] = {}
-- MoveTrap_Info[1639]["MapInfo"][66]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][66]["PosX"] = 326
-- MoveTrap_Info[1639]["MapInfo"][66]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][67] = {}
-- MoveTrap_Info[1639]["MapInfo"][67]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][67]["PosX"] = 322
-- MoveTrap_Info[1639]["MapInfo"][67]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][68] = {}
-- MoveTrap_Info[1639]["MapInfo"][68]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][68]["PosX"] = 318
-- MoveTrap_Info[1639]["MapInfo"][68]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][69] = {}
-- MoveTrap_Info[1639]["MapInfo"][69]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][69]["PosX"] = 314
-- MoveTrap_Info[1639]["MapInfo"][69]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][70] = {}
-- MoveTrap_Info[1639]["MapInfo"][70]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][70]["PosX"] = 310
-- MoveTrap_Info[1639]["MapInfo"][70]["PosY"] = 455
-- MoveTrap_Info[1639]["MapInfo"][71] = {}
-- MoveTrap_Info[1639]["MapInfo"][71]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][71]["PosX"] = 360
-- MoveTrap_Info[1639]["MapInfo"][71]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][72] = {}
-- MoveTrap_Info[1639]["MapInfo"][72]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][72]["PosX"] = 364
-- MoveTrap_Info[1639]["MapInfo"][72]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][73] = {}
-- MoveTrap_Info[1639]["MapInfo"][73]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][73]["PosX"] = 368
-- MoveTrap_Info[1639]["MapInfo"][73]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][74] = {}
-- MoveTrap_Info[1639]["MapInfo"][74]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][74]["PosX"] = 372
-- MoveTrap_Info[1639]["MapInfo"][74]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][75] = {}
-- MoveTrap_Info[1639]["MapInfo"][75]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][75]["PosX"] = 376
-- MoveTrap_Info[1639]["MapInfo"][75]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][76] = {}
-- MoveTrap_Info[1639]["MapInfo"][76]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][76]["PosX"] = 380
-- MoveTrap_Info[1639]["MapInfo"][76]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][77] = {}
-- MoveTrap_Info[1639]["MapInfo"][77]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][77]["PosX"] = 384
-- MoveTrap_Info[1639]["MapInfo"][77]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][78] = {}
-- MoveTrap_Info[1639]["MapInfo"][78]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][78]["PosX"] = 334
-- MoveTrap_Info[1639]["MapInfo"][78]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][79] = {}
-- MoveTrap_Info[1639]["MapInfo"][79]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][79]["PosX"] = 330
-- MoveTrap_Info[1639]["MapInfo"][79]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][80] = {}
-- MoveTrap_Info[1639]["MapInfo"][80]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][80]["PosX"] = 326
-- MoveTrap_Info[1639]["MapInfo"][80]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][81] = {}
-- MoveTrap_Info[1639]["MapInfo"][81]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][81]["PosX"] = 322
-- MoveTrap_Info[1639]["MapInfo"][81]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][82] = {}
-- MoveTrap_Info[1639]["MapInfo"][82]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][82]["PosX"] = 318
-- MoveTrap_Info[1639]["MapInfo"][82]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][83] = {}
-- MoveTrap_Info[1639]["MapInfo"][83]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][83]["PosX"] = 314
-- MoveTrap_Info[1639]["MapInfo"][83]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][84] = {}
-- MoveTrap_Info[1639]["MapInfo"][84]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][84]["PosX"] = 310
-- MoveTrap_Info[1639]["MapInfo"][84]["PosY"] = 435
-- MoveTrap_Info[1639]["MapInfo"][85] = {}
-- MoveTrap_Info[1639]["MapInfo"][85]["MapId"] = 1002
-- MoveTrap_Info[1639]["MapInfo"][85]["PosX"] = 358
-- MoveTrap_Info[1639]["MapInfo"][85]["PosY"] = 422
-- -- 黑虎城
-- MoveTrap_Info[1639]["MapInfo"][86] = {}
-- MoveTrap_Info[1639]["MapInfo"][86]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][86]["PosX"] = 563
-- MoveTrap_Info[1639]["MapInfo"][86]["PosY"] = 597
-- MoveTrap_Info[1639]["MapInfo"][87] = {}
-- MoveTrap_Info[1639]["MapInfo"][87]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][87]["PosX"] = 573
-- MoveTrap_Info[1639]["MapInfo"][87]["PosY"] = 597
-- MoveTrap_Info[1639]["MapInfo"][88] = {}
-- MoveTrap_Info[1639]["MapInfo"][88]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][88]["PosX"] = 579
-- MoveTrap_Info[1639]["MapInfo"][88]["PosY"] = 588
-- MoveTrap_Info[1639]["MapInfo"][89] = {}
-- MoveTrap_Info[1639]["MapInfo"][89]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][89]["PosX"] = 563
-- MoveTrap_Info[1639]["MapInfo"][89]["PosY"] = 594
-- MoveTrap_Info[1639]["MapInfo"][90] = {}
-- MoveTrap_Info[1639]["MapInfo"][90]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][90]["PosX"] = 573
-- MoveTrap_Info[1639]["MapInfo"][90]["PosY"] = 594
-- MoveTrap_Info[1639]["MapInfo"][91] = {}
-- MoveTrap_Info[1639]["MapInfo"][91]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][91]["PosX"] = 579
-- MoveTrap_Info[1639]["MapInfo"][91]["PosY"] = 580
-- MoveTrap_Info[1639]["MapInfo"][92] = {}
-- MoveTrap_Info[1639]["MapInfo"][92]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][92]["PosX"] = 563
-- MoveTrap_Info[1639]["MapInfo"][92]["PosY"] = 591
-- MoveTrap_Info[1639]["MapInfo"][93] = {}
-- MoveTrap_Info[1639]["MapInfo"][93]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][93]["PosX"] = 573
-- MoveTrap_Info[1639]["MapInfo"][93]["PosY"] = 591
-- MoveTrap_Info[1639]["MapInfo"][94] = {}
-- MoveTrap_Info[1639]["MapInfo"][94]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][94]["PosX"] = 563
-- MoveTrap_Info[1639]["MapInfo"][94]["PosY"] = 577
-- MoveTrap_Info[1639]["MapInfo"][95] = {}
-- MoveTrap_Info[1639]["MapInfo"][95]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][95]["PosX"] = 573
-- MoveTrap_Info[1639]["MapInfo"][95]["PosY"] = 577
-- MoveTrap_Info[1639]["MapInfo"][96] = {}
-- MoveTrap_Info[1639]["MapInfo"][96]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][96]["PosX"] = 563
-- MoveTrap_Info[1639]["MapInfo"][96]["PosY"] = 574
-- MoveTrap_Info[1639]["MapInfo"][97] = {}
-- MoveTrap_Info[1639]["MapInfo"][97]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][97]["PosX"] = 573
-- MoveTrap_Info[1639]["MapInfo"][97]["PosY"] = 574
-- MoveTrap_Info[1639]["MapInfo"][98] = {}
-- MoveTrap_Info[1639]["MapInfo"][98]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][98]["PosX"] = 563
-- MoveTrap_Info[1639]["MapInfo"][98]["PosY"] = 571
-- MoveTrap_Info[1639]["MapInfo"][99] = {}
-- MoveTrap_Info[1639]["MapInfo"][99]["MapId"] = 1020
-- MoveTrap_Info[1639]["MapInfo"][99]["PosX"] = 573
-- MoveTrap_Info[1639]["MapInfo"][99]["PosY"] = 571
-- -- 鸣凤堡
-- MoveTrap_Info[1639]["MapInfo"][100] = {}
-- MoveTrap_Info[1639]["MapInfo"][100]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][100]["PosX"] = 204
-- MoveTrap_Info[1639]["MapInfo"][100]["PosY"] = 274
-- MoveTrap_Info[1639]["MapInfo"][101] = {}
-- MoveTrap_Info[1639]["MapInfo"][101]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][101]["PosX"] = 210
-- MoveTrap_Info[1639]["MapInfo"][101]["PosY"] = 268
-- MoveTrap_Info[1639]["MapInfo"][102] = {}
-- MoveTrap_Info[1639]["MapInfo"][102]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][102]["PosX"] = 194
-- MoveTrap_Info[1639]["MapInfo"][102]["PosY"] = 261
-- MoveTrap_Info[1639]["MapInfo"][103] = {}
-- MoveTrap_Info[1639]["MapInfo"][103]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][103]["PosX"] = 217
-- MoveTrap_Info[1639]["MapInfo"][103]["PosY"] = 265
-- MoveTrap_Info[1639]["MapInfo"][104] = {}
-- MoveTrap_Info[1639]["MapInfo"][104]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][104]["PosX"] = 187
-- MoveTrap_Info[1639]["MapInfo"][104]["PosY"] = 259
-- MoveTrap_Info[1639]["MapInfo"][105] = {}
-- MoveTrap_Info[1639]["MapInfo"][105]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][105]["PosX"] = 215
-- MoveTrap_Info[1639]["MapInfo"][105]["PosY"] = 257
-- MoveTrap_Info[1639]["MapInfo"][106] = {}
-- MoveTrap_Info[1639]["MapInfo"][106]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][106]["PosX"] = 181
-- MoveTrap_Info[1639]["MapInfo"][106]["PosY"] = 263
-- MoveTrap_Info[1639]["MapInfo"][107] = {}
-- MoveTrap_Info[1639]["MapInfo"][107]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][107]["PosX"] = 205
-- MoveTrap_Info[1639]["MapInfo"][107]["PosY"] = 258
-- MoveTrap_Info[1639]["MapInfo"][108] = {}
-- MoveTrap_Info[1639]["MapInfo"][108]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][108]["PosX"] = 177
-- MoveTrap_Info[1639]["MapInfo"][108]["PosY"] = 270
-- MoveTrap_Info[1639]["MapInfo"][109] = {}
-- MoveTrap_Info[1639]["MapInfo"][109]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][109]["PosX"] = 190
-- MoveTrap_Info[1639]["MapInfo"][109]["PosY"] = 286
-- MoveTrap_Info[1639]["MapInfo"][110] = {}
-- MoveTrap_Info[1639]["MapInfo"][110]["MapId"] = 1011
-- MoveTrap_Info[1639]["MapInfo"][110]["PosX"] = 180
-- MoveTrap_Info[1639]["MapInfo"][110]["PosY"] = 279
-- -- 云门关
-- MoveTrap_Info[1639]["MapInfo"][111] = {}
-- MoveTrap_Info[1639]["MapInfo"][111]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][111]["PosX"] = 506
-- MoveTrap_Info[1639]["MapInfo"][111]["PosY"] = 656
-- MoveTrap_Info[1639]["MapInfo"][112] = {}
-- MoveTrap_Info[1639]["MapInfo"][112]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][112]["PosX"] = 521
-- MoveTrap_Info[1639]["MapInfo"][112]["PosY"] = 652
-- MoveTrap_Info[1639]["MapInfo"][113] = {}
-- MoveTrap_Info[1639]["MapInfo"][113]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][113]["PosX"] = 491
-- MoveTrap_Info[1639]["MapInfo"][113]["PosY"] = 664
-- MoveTrap_Info[1639]["MapInfo"][114] = {}
-- MoveTrap_Info[1639]["MapInfo"][114]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][114]["PosX"] = 506
-- MoveTrap_Info[1639]["MapInfo"][114]["PosY"] = 647
-- MoveTrap_Info[1639]["MapInfo"][115] = {}
-- MoveTrap_Info[1639]["MapInfo"][115]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][115]["PosX"] = 513
-- MoveTrap_Info[1639]["MapInfo"][115]["PosY"] = 653
-- MoveTrap_Info[1639]["MapInfo"][116] = {}
-- MoveTrap_Info[1639]["MapInfo"][116]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][116]["PosX"] = 482
-- MoveTrap_Info[1639]["MapInfo"][116]["PosY"] = 664
-- MoveTrap_Info[1639]["MapInfo"][117] = {}
-- MoveTrap_Info[1639]["MapInfo"][117]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][117]["PosX"] = 506
-- MoveTrap_Info[1639]["MapInfo"][117]["PosY"] = 637
-- MoveTrap_Info[1639]["MapInfo"][118] = {}
-- MoveTrap_Info[1639]["MapInfo"][118]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][118]["PosX"] = 513
-- MoveTrap_Info[1639]["MapInfo"][118]["PosY"] = 664
-- MoveTrap_Info[1639]["MapInfo"][119] = {}
-- MoveTrap_Info[1639]["MapInfo"][119]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][119]["PosX"] = 496
-- MoveTrap_Info[1639]["MapInfo"][119]["PosY"] = 637
-- MoveTrap_Info[1639]["MapInfo"][120] = {}
-- MoveTrap_Info[1639]["MapInfo"][120]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][120]["PosX"] = 502
-- MoveTrap_Info[1639]["MapInfo"][120]["PosY"] = 664
-- MoveTrap_Info[1639]["MapInfo"][121] = {}
-- MoveTrap_Info[1639]["MapInfo"][121]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][121]["PosX"] = 487
-- MoveTrap_Info[1639]["MapInfo"][121]["PosY"] = 637
-- MoveTrap_Info[1639]["MapInfo"][122] = {}
-- MoveTrap_Info[1639]["MapInfo"][122]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][122]["PosX"] = 487
-- MoveTrap_Info[1639]["MapInfo"][122]["PosY"] = 656
-- MoveTrap_Info[1639]["MapInfo"][123] = {}
-- MoveTrap_Info[1639]["MapInfo"][123]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][123]["PosX"] = 487
-- MoveTrap_Info[1639]["MapInfo"][123]["PosY"] = 647
-- MoveTrap_Info[1639]["MapInfo"][124] = {}
-- MoveTrap_Info[1639]["MapInfo"][124]["MapId"] = 1000
-- MoveTrap_Info[1639]["MapInfo"][124]["PosX"] = 497
-- MoveTrap_Info[1639]["MapInfo"][124]["PosY"] = 656
-- -- 白鹭城
-- MoveTrap_Info[1639]["MapInfo"][125] = {}
-- MoveTrap_Info[1639]["MapInfo"][125]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][125]["PosX"] = 714
-- MoveTrap_Info[1639]["MapInfo"][125]["PosY"] = 581
-- MoveTrap_Info[1639]["MapInfo"][126] = {}
-- MoveTrap_Info[1639]["MapInfo"][126]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][126]["PosX"] = 740
-- MoveTrap_Info[1639]["MapInfo"][126]["PosY"] = 568
-- MoveTrap_Info[1639]["MapInfo"][127] = {}
-- MoveTrap_Info[1639]["MapInfo"][127]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][127]["PosX"] = 719
-- MoveTrap_Info[1639]["MapInfo"][127]["PosY"] = 586
-- MoveTrap_Info[1639]["MapInfo"][128] = {}
-- MoveTrap_Info[1639]["MapInfo"][128]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][128]["PosX"] = 740
-- MoveTrap_Info[1639]["MapInfo"][128]["PosY"] = 574
-- MoveTrap_Info[1639]["MapInfo"][129] = {}
-- MoveTrap_Info[1639]["MapInfo"][129]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][129]["PosX"] = 727
-- MoveTrap_Info[1639]["MapInfo"][129]["PosY"] = 586
-- MoveTrap_Info[1639]["MapInfo"][130] = {}
-- MoveTrap_Info[1639]["MapInfo"][130]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][130]["PosX"] = 718
-- MoveTrap_Info[1639]["MapInfo"][130]["PosY"] = 560
-- MoveTrap_Info[1639]["MapInfo"][131] = {}
-- MoveTrap_Info[1639]["MapInfo"][131]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][131]["PosX"] = 733
-- MoveTrap_Info[1639]["MapInfo"][131]["PosY"] = 581
-- MoveTrap_Info[1639]["MapInfo"][132] = {}
-- MoveTrap_Info[1639]["MapInfo"][132]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][132]["PosX"] = 716
-- MoveTrap_Info[1639]["MapInfo"][132]["PosY"] = 565
-- MoveTrap_Info[1639]["MapInfo"][133] = {}
-- MoveTrap_Info[1639]["MapInfo"][133]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][133]["PosX"] = 733
-- MoveTrap_Info[1639]["MapInfo"][133]["PosY"] = 565
-- MoveTrap_Info[1639]["MapInfo"][134] = {}
-- MoveTrap_Info[1639]["MapInfo"][134]["MapId"] = 1015
-- MoveTrap_Info[1639]["MapInfo"][134]["PosX"] = 727
-- MoveTrap_Info[1639]["MapInfo"][134]["PosY"] = 560
-- 烟花
MoveTrap_Info[1640] = {}
MoveTrap_Info[1640]["ActivetyTime"] = tActivityTime["Easter"]["ActivityTime"]
MoveTrap_Info[1640]["TrapType"] = 1640
MoveTrap_Info[1640]["Look"] = 1064
MoveTrap_Info[1640]["MapInfo"] = {}
MoveTrap_Info[1640]["MapInfo"][1] = {}
MoveTrap_Info[1640]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[1640]["MapInfo"][1]["PosX"] = 404
MoveTrap_Info[1640]["MapInfo"][1]["PosY"] = 360
MoveTrap_Info[1640]["MapInfo"][2] = {}
MoveTrap_Info[1640]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[1640]["MapInfo"][2]["PosX"] = 404
MoveTrap_Info[1640]["MapInfo"][2]["PosY"] = 348
MoveTrap_Info[1640]["MapInfo"][3] = {}
MoveTrap_Info[1640]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[1640]["MapInfo"][3]["PosX"] = 416
MoveTrap_Info[1640]["MapInfo"][3]["PosY"] = 348
MoveTrap_Info[1640]["MapInfo"][4] = {}
MoveTrap_Info[1640]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[1640]["MapInfo"][4]["PosX"] = 416
MoveTrap_Info[1640]["MapInfo"][4]["PosY"] = 360
MoveTrap_Info[1640]["MapInfo"][5] = {}
MoveTrap_Info[1640]["MapInfo"][5]["MapId"] = 1020
MoveTrap_Info[1640]["MapInfo"][5]["PosX"] = 567
MoveTrap_Info[1640]["MapInfo"][5]["PosY"] = 583
MoveTrap_Info[1640]["MapInfo"][6] = {}
MoveTrap_Info[1640]["MapInfo"][6]["MapId"] = 1020
MoveTrap_Info[1640]["MapInfo"][6]["PosX"] = 567
MoveTrap_Info[1640]["MapInfo"][6]["PosY"] = 564
MoveTrap_Info[1640]["MapInfo"][7] = {}
MoveTrap_Info[1640]["MapInfo"][7]["MapId"] = 1011
MoveTrap_Info[1640]["MapInfo"][7]["PosX"] = 189
MoveTrap_Info[1640]["MapInfo"][7]["PosY"] = 270
MoveTrap_Info[1640]["MapInfo"][8] = {}
MoveTrap_Info[1640]["MapInfo"][8]["MapId"] = 1011
MoveTrap_Info[1640]["MapInfo"][8]["PosX"] = 219
MoveTrap_Info[1640]["MapInfo"][8]["PosY"] = 230
MoveTrap_Info[1640]["MapInfo"][9] = {}
MoveTrap_Info[1640]["MapInfo"][9]["MapId"] = 1011
MoveTrap_Info[1640]["MapInfo"][9]["PosX"] = 210
MoveTrap_Info[1640]["MapInfo"][9]["PosY"] = 260
MoveTrap_Info[1640]["MapInfo"][10] = {}
MoveTrap_Info[1640]["MapInfo"][10]["MapId"] = 1000
MoveTrap_Info[1640]["MapInfo"][10]["PosX"] = 495
MoveTrap_Info[1640]["MapInfo"][10]["PosY"] = 656
MoveTrap_Info[1640]["MapInfo"][11] = {}
MoveTrap_Info[1640]["MapInfo"][11]["MapId"] = 1015
MoveTrap_Info[1640]["MapInfo"][11]["PosX"] = 723
MoveTrap_Info[1640]["MapInfo"][11]["PosY"] = 573


------------------------------------------------------------------------------------
--Name:		170920[简体征服][活动脚本]砸罐子活动制作
--Creator: 	兰瑞妹
--Created:	2017/10/11
------------------------------------------------------------------------------------
	-- 进入陷阱
	MoveTrap_Info[1765] = {}
	MoveTrap_Info[1765]["ActivetyTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	MoveTrap_Info[1765]["TrapType"] = 1765
	MoveTrap_Info[1765]["Look"] = 1765
	-- MoveTrap_Info[1765]["GlobalId"] = 53779
	-- MoveTrap_Info[1765]["OldSever"] = 1
	MoveTrap_Info[1765]["MapInfo"] = {}
	MoveTrap_Info[1765]["MapInfo"][1] = {}
	MoveTrap_Info[1765]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[1765]["MapInfo"][1]["PosX"] = 374
	MoveTrap_Info[1765]["MapInfo"][1]["PosY"] = 491
	MoveTrap_Info[1765]["MapInfo"][1]["PosCX"] = 3
	MoveTrap_Info[1765]["MapInfo"][1]["PosCY"] = 3
	MoveTrap_Info[1766] = {}
	MoveTrap_Info[1766]["ActivetyTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	MoveTrap_Info[1766]["TrapType"] = 1766
	MoveTrap_Info[1766]["Look"] = 1766
	MoveTrap_Info[1766]["GlobalId"] = 53779
	MoveTrap_Info[1766]["OldSever"] = 1
	MoveTrap_Info[1766]["MapInfo"] = {}
	MoveTrap_Info[1766]["MapInfo"][1] = {}
	MoveTrap_Info[1766]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[1766]["MapInfo"][1]["PosX"] = 374
	MoveTrap_Info[1766]["MapInfo"][1]["PosY"] = 491

	-- 进入陷阱
	MoveTrap_Info_NoGift[1765] = {}
	MoveTrap_Info_NoGift[1765]["ActivetyTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	MoveTrap_Info_NoGift[1765]["TrapType"] = 1765
	MoveTrap_Info_NoGift[1765]["Look"] = 1765
	MoveTrap_Info_NoGift[1765]["MapInfo"] = {}
	MoveTrap_Info_NoGift[1765]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[1765]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[1765]["MapInfo"][1]["PosX"] = 204
	MoveTrap_Info_NoGift[1765]["MapInfo"][1]["PosY"] = 159
	MoveTrap_Info_NoGift[1765]["MapInfo"][1]["PosCX"] = 3
	MoveTrap_Info_NoGift[1765]["MapInfo"][1]["PosCY"] = 3
	MoveTrap_Info_NoGift[1766] = {}
	MoveTrap_Info_NoGift[1766]["ActivetyTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	MoveTrap_Info_NoGift[1766]["TrapType"] = 1766
	MoveTrap_Info_NoGift[1766]["Look"] = 1766
	MoveTrap_Info_NoGift[1766]["GlobalId"] = 53779
	MoveTrap_Info_NoGift[1766]["OldSever"] = 1
	MoveTrap_Info_NoGift[1766]["MapInfo"] = {}
	MoveTrap_Info_NoGift[1766]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[1766]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[1766]["MapInfo"][1]["PosX"] = 204
	MoveTrap_Info_NoGift[1766]["MapInfo"][1]["PosY"] = 159

------------------------------------------------------------------------------------
--Name:			180321[英文征服][活动脚本]周年许愿活动
--Purpose:		周年许愿
--Creator:		wzh
--Created:		2018/03/21
------------------------------------------------------------------------------------
MoveTrap_Info[1896] = {}
MoveTrap_Info[1896]["ActivetyTime"] = tActivityTime["SpringFestivalWishes"]["ActivityTime"][1]
MoveTrap_Info[1896]["TrapType"] = 1896
MoveTrap_Info[1896]["Look"] = 1894
MoveTrap_Info[1896]["MapInfo"] = {}
MoveTrap_Info[1896]["MapInfo"][1] = {}
MoveTrap_Info[1896]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[1896]["MapInfo"][1]["PosX"] = 340
MoveTrap_Info[1896]["MapInfo"][1]["PosY"] = 459
MoveTrap_Info[1896]["MapInfo"][2] = {}
MoveTrap_Info[1896]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[1896]["MapInfo"][2]["PosX"] = 340
MoveTrap_Info[1896]["MapInfo"][2]["PosY"] = 463
MoveTrap_Info[1896]["MapInfo"][3] = {}
MoveTrap_Info[1896]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[1896]["MapInfo"][3]["PosX"] = 340
MoveTrap_Info[1896]["MapInfo"][3]["PosY"] = 467
	
------------------------------------------------------------------------------------
--Name:			180502[英文征服][任务脚本]游戏内红灯笼，15周年庆地贴制作（05.03-06.31）
--Purpose:		周年庆
--Creator:		wzh
--Created:		2018/05/02
------------------------------------------------------------------------------------
MoveTrap_Info[2005] = {}
MoveTrap_Info[2005]["ActivetyTime"] = tActivityTime["Anniversary"]["TrapActTime"]
MoveTrap_Info[2005]["TrapType"] = 2005
MoveTrap_Info[2005]["Look"] = 1837
MoveTrap_Info[2005]["MapInfo"] = {}
MoveTrap_Info[2005]["MapInfo"][1] = {}
MoveTrap_Info[2005]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2005]["MapInfo"][1]["PosX"] = 348
MoveTrap_Info[2005]["MapInfo"][1]["PosY"] = 465

------------------------------------------------------------------------------------
--Name：            170321[简体征服][活动脚本]NBA活动制作(5.10-5.30)
--Creator:      cy
--Created:     2018/05/02
------------------------------------------------------------------------------------
-- MoveTrap_Info[1670] = {}
-- MoveTrap_Info[1670]["ActivetyTime"] = tActivityTime["ActivityOfNBA"]["Now_Time"]
-- MoveTrap_Info[1670]["TrapType"] = 1670
-- MoveTrap_Info[1670]["Look"] = 1670
-- MoveTrap_Info[1670]["MapInfo"] = {}
-- MoveTrap_Info[1670]["MapInfo"][1] = {}
-- MoveTrap_Info[1670]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1670]["MapInfo"][1]["PosX"] = 323
-- MoveTrap_Info[1670]["MapInfo"][1]["PosY"] = 446

------------------------------------------------------------------------------------
--Name:			180323[简体征服][活动脚本]2018儿童节小活动复用修改(5.31-6.6)
--Creator:		翁清海
--Created:		2018-03-23
------------------------------------------------------------------------------------
-- 气球
MoveTrap_Info[1948] = {}
MoveTrap_Info[1948]["ActivetyTime"] = tActivityTime["ChildrenCandy"]["Activity"]
MoveTrap_Info[1948]["TrapType"] = 1948
MoveTrap_Info[1948]["Look"] = 1063
-- 双龙城
MoveTrap_Info[1948]["MapInfo"] = {}
MoveTrap_Info[1948]["MapInfo"][1] = {}
MoveTrap_Info[1948]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][1]["PosX"] = 409
MoveTrap_Info[1948]["MapInfo"][1]["PosY"] = 367
MoveTrap_Info[1948]["MapInfo"][2] = {}
MoveTrap_Info[1948]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][2]["PosX"] = 416
MoveTrap_Info[1948]["MapInfo"][2]["PosY"] = 367
MoveTrap_Info[1948]["MapInfo"][3] = {}
MoveTrap_Info[1948]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][3]["PosX"] = 424
MoveTrap_Info[1948]["MapInfo"][3]["PosY"] = 362
MoveTrap_Info[1948]["MapInfo"][4] = {}
MoveTrap_Info[1948]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][4]["PosX"] = 424
MoveTrap_Info[1948]["MapInfo"][4]["PosY"] = 355
MoveTrap_Info[1948]["MapInfo"][5] = {}
MoveTrap_Info[1948]["MapInfo"][5]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][5]["PosX"] = 416
MoveTrap_Info[1948]["MapInfo"][5]["PosY"] = 346
MoveTrap_Info[1948]["MapInfo"][6] = {}
MoveTrap_Info[1948]["MapInfo"][6]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][6]["PosX"] = 408
MoveTrap_Info[1948]["MapInfo"][6]["PosY"] = 346
MoveTrap_Info[1948]["MapInfo"][7] = {}
MoveTrap_Info[1948]["MapInfo"][7]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][7]["PosX"] = 403
MoveTrap_Info[1948]["MapInfo"][7]["PosY"] = 359
MoveTrap_Info[1948]["MapInfo"][8] = {}
MoveTrap_Info[1948]["MapInfo"][8]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][8]["PosX"] = 403
MoveTrap_Info[1948]["MapInfo"][8]["PosY"] = 352
MoveTrap_Info[1948]["MapInfo"][9] = {}
MoveTrap_Info[1948]["MapInfo"][9]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][9]["PosX"] = 404
MoveTrap_Info[1948]["MapInfo"][9]["PosY"] = 339
MoveTrap_Info[1948]["MapInfo"][10] = {}
MoveTrap_Info[1948]["MapInfo"][10]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][10]["PosX"] = 418
MoveTrap_Info[1948]["MapInfo"][10]["PosY"] = 339
MoveTrap_Info[1948]["MapInfo"][11] = {}
MoveTrap_Info[1948]["MapInfo"][11]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][11]["PosX"] = 431
MoveTrap_Info[1948]["MapInfo"][11]["PosY"] = 365
MoveTrap_Info[1948]["MapInfo"][12] = {}
MoveTrap_Info[1948]["MapInfo"][12]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][12]["PosX"] = 431
MoveTrap_Info[1948]["MapInfo"][12]["PosY"] = 351
MoveTrap_Info[1948]["MapInfo"][13] = {}
MoveTrap_Info[1948]["MapInfo"][13]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][13]["PosX"] = 413
MoveTrap_Info[1948]["MapInfo"][13]["PosY"] = 381
MoveTrap_Info[1948]["MapInfo"][14] = {}
MoveTrap_Info[1948]["MapInfo"][14]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][14]["PosX"] = 394
MoveTrap_Info[1948]["MapInfo"][14]["PosY"] = 381
MoveTrap_Info[1948]["MapInfo"][15] = {}
MoveTrap_Info[1948]["MapInfo"][15]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][15]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][15]["PosY"] = 398
MoveTrap_Info[1948]["MapInfo"][16] = {}
MoveTrap_Info[1948]["MapInfo"][16]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][16]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][16]["PosY"] = 402
MoveTrap_Info[1948]["MapInfo"][17] = {}
MoveTrap_Info[1948]["MapInfo"][17]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][17]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][17]["PosY"] = 406
MoveTrap_Info[1948]["MapInfo"][18] = {}
MoveTrap_Info[1948]["MapInfo"][18]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][18]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][18]["PosY"] = 410
MoveTrap_Info[1948]["MapInfo"][19] = {}
MoveTrap_Info[1948]["MapInfo"][19]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][19]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][19]["PosY"] = 414
MoveTrap_Info[1948]["MapInfo"][20] = {}
MoveTrap_Info[1948]["MapInfo"][20]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][20]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][20]["PosY"] = 418
MoveTrap_Info[1948]["MapInfo"][21] = {}
MoveTrap_Info[1948]["MapInfo"][21]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][21]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][21]["PosY"] = 426
MoveTrap_Info[1948]["MapInfo"][22] = {}
MoveTrap_Info[1948]["MapInfo"][22]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][22]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][22]["PosY"] = 430
MoveTrap_Info[1948]["MapInfo"][23] = {}
MoveTrap_Info[1948]["MapInfo"][23]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][23]["PosX"] = 344
MoveTrap_Info[1948]["MapInfo"][23]["PosY"] = 457
MoveTrap_Info[1948]["MapInfo"][24] = {}
MoveTrap_Info[1948]["MapInfo"][24]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][24]["PosX"] = 351
MoveTrap_Info[1948]["MapInfo"][24]["PosY"] = 457
MoveTrap_Info[1948]["MapInfo"][25] = {}
MoveTrap_Info[1948]["MapInfo"][25]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][25]["PosX"] = 361
MoveTrap_Info[1948]["MapInfo"][25]["PosY"] = 446
MoveTrap_Info[1948]["MapInfo"][26] = {}
MoveTrap_Info[1948]["MapInfo"][26]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][26]["PosX"] = 361
MoveTrap_Info[1948]["MapInfo"][26]["PosY"] = 441
MoveTrap_Info[1948]["MapInfo"][27] = {}
MoveTrap_Info[1948]["MapInfo"][27]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][27]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][27]["PosY"] = 398
MoveTrap_Info[1948]["MapInfo"][28] = {}
MoveTrap_Info[1948]["MapInfo"][28]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][28]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][28]["PosY"] = 402
MoveTrap_Info[1948]["MapInfo"][29] = {}
MoveTrap_Info[1948]["MapInfo"][29]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][29]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][29]["PosY"] = 406
MoveTrap_Info[1948]["MapInfo"][30] = {}
MoveTrap_Info[1948]["MapInfo"][30]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][30]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][30]["PosY"] = 410
MoveTrap_Info[1948]["MapInfo"][31] = {}
MoveTrap_Info[1948]["MapInfo"][31]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][31]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][31]["PosY"] = 414
MoveTrap_Info[1948]["MapInfo"][32] = {}
MoveTrap_Info[1948]["MapInfo"][32]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][32]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][32]["PosY"] = 418
MoveTrap_Info[1948]["MapInfo"][33] = {}
MoveTrap_Info[1948]["MapInfo"][33]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][33]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][33]["PosY"] = 422
MoveTrap_Info[1948]["MapInfo"][34] = {}
MoveTrap_Info[1948]["MapInfo"][34]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][34]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][34]["PosY"] = 426
MoveTrap_Info[1948]["MapInfo"][35] = {}
MoveTrap_Info[1948]["MapInfo"][35]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][35]["PosX"] = 350
MoveTrap_Info[1948]["MapInfo"][35]["PosY"] = 430
MoveTrap_Info[1948]["MapInfo"][36] = {}
MoveTrap_Info[1948]["MapInfo"][36]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][36]["PosX"] = 344
MoveTrap_Info[1948]["MapInfo"][36]["PosY"] = 430
MoveTrap_Info[1948]["MapInfo"][37] = {}
MoveTrap_Info[1948]["MapInfo"][37]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][37]["PosX"] = 334
MoveTrap_Info[1948]["MapInfo"][37]["PosY"] = 440
MoveTrap_Info[1948]["MapInfo"][38] = {}
MoveTrap_Info[1948]["MapInfo"][38]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][38]["PosX"] = 334
MoveTrap_Info[1948]["MapInfo"][38]["PosY"] = 446
MoveTrap_Info[1948]["MapInfo"][39] = {}
MoveTrap_Info[1948]["MapInfo"][39]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][39]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][39]["PosY"] = 456
MoveTrap_Info[1948]["MapInfo"][40] = {}
MoveTrap_Info[1948]["MapInfo"][40]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][40]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][40]["PosY"] = 460
MoveTrap_Info[1948]["MapInfo"][41] = {}
MoveTrap_Info[1948]["MapInfo"][41]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][41]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][41]["PosY"] = 464
MoveTrap_Info[1948]["MapInfo"][42] = {}
MoveTrap_Info[1948]["MapInfo"][42]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][42]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][42]["PosY"] = 468
MoveTrap_Info[1948]["MapInfo"][43] = {}
MoveTrap_Info[1948]["MapInfo"][43]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][43]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][43]["PosY"] = 472
MoveTrap_Info[1948]["MapInfo"][44] = {}
MoveTrap_Info[1948]["MapInfo"][44]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][44]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][44]["PosY"] = 476
MoveTrap_Info[1948]["MapInfo"][45] = {}
MoveTrap_Info[1948]["MapInfo"][45]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][45]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][45]["PosY"] = 480
MoveTrap_Info[1948]["MapInfo"][46] = {}
MoveTrap_Info[1948]["MapInfo"][46]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][46]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][46]["PosY"] = 484
MoveTrap_Info[1948]["MapInfo"][47] = {}
MoveTrap_Info[1948]["MapInfo"][47]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][47]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][47]["PosY"] = 488
MoveTrap_Info[1948]["MapInfo"][48] = {}
MoveTrap_Info[1948]["MapInfo"][48]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][48]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][48]["PosY"] = 456
MoveTrap_Info[1948]["MapInfo"][49] = {}
MoveTrap_Info[1948]["MapInfo"][49]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][49]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][49]["PosY"] = 460
MoveTrap_Info[1948]["MapInfo"][50] = {}
MoveTrap_Info[1948]["MapInfo"][50]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][50]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][50]["PosY"] = 464
MoveTrap_Info[1948]["MapInfo"][51] = {}
MoveTrap_Info[1948]["MapInfo"][51]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][51]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][51]["PosY"] = 468
MoveTrap_Info[1948]["MapInfo"][52] = {}
MoveTrap_Info[1948]["MapInfo"][52]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][52]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][52]["PosY"] = 472
MoveTrap_Info[1948]["MapInfo"][53] = {}
MoveTrap_Info[1948]["MapInfo"][53]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][53]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][53]["PosY"] = 476
MoveTrap_Info[1948]["MapInfo"][54] = {}
MoveTrap_Info[1948]["MapInfo"][54]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][54]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][54]["PosY"] = 480
MoveTrap_Info[1948]["MapInfo"][55] = {}
MoveTrap_Info[1948]["MapInfo"][55]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][55]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][55]["PosY"] = 484
MoveTrap_Info[1948]["MapInfo"][56] = {}
MoveTrap_Info[1948]["MapInfo"][56]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][56]["PosX"] = 339
MoveTrap_Info[1948]["MapInfo"][56]["PosY"] = 488
MoveTrap_Info[1948]["MapInfo"][57] = {}
MoveTrap_Info[1948]["MapInfo"][57]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][57]["PosX"] = 360
MoveTrap_Info[1948]["MapInfo"][57]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][58] = {}
MoveTrap_Info[1948]["MapInfo"][58]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][58]["PosX"] = 364
MoveTrap_Info[1948]["MapInfo"][58]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][59] = {}
MoveTrap_Info[1948]["MapInfo"][59]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][59]["PosX"] = 368
MoveTrap_Info[1948]["MapInfo"][59]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][60] = {}
MoveTrap_Info[1948]["MapInfo"][60]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][60]["PosX"] = 372
MoveTrap_Info[1948]["MapInfo"][60]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][61] = {}
MoveTrap_Info[1948]["MapInfo"][61]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][61]["PosX"] = 376
MoveTrap_Info[1948]["MapInfo"][61]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][62] = {}
MoveTrap_Info[1948]["MapInfo"][62]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][62]["PosX"] = 380
MoveTrap_Info[1948]["MapInfo"][62]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][63] = {}
MoveTrap_Info[1948]["MapInfo"][63]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][63]["PosX"] = 384
MoveTrap_Info[1948]["MapInfo"][63]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][64] = {}
MoveTrap_Info[1948]["MapInfo"][64]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][64]["PosX"] = 334
MoveTrap_Info[1948]["MapInfo"][64]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][65] = {}
MoveTrap_Info[1948]["MapInfo"][65]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][65]["PosX"] = 330
MoveTrap_Info[1948]["MapInfo"][65]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][66] = {}
MoveTrap_Info[1948]["MapInfo"][66]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][66]["PosX"] = 326
MoveTrap_Info[1948]["MapInfo"][66]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][67] = {}
MoveTrap_Info[1948]["MapInfo"][67]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][67]["PosX"] = 322
MoveTrap_Info[1948]["MapInfo"][67]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][68] = {}
MoveTrap_Info[1948]["MapInfo"][68]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][68]["PosX"] = 318
MoveTrap_Info[1948]["MapInfo"][68]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][69] = {}
MoveTrap_Info[1948]["MapInfo"][69]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][69]["PosX"] = 314
MoveTrap_Info[1948]["MapInfo"][69]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][70] = {}
MoveTrap_Info[1948]["MapInfo"][70]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][70]["PosX"] = 310
MoveTrap_Info[1948]["MapInfo"][70]["PosY"] = 455
MoveTrap_Info[1948]["MapInfo"][71] = {}
MoveTrap_Info[1948]["MapInfo"][71]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][71]["PosX"] = 360
MoveTrap_Info[1948]["MapInfo"][71]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][72] = {}
MoveTrap_Info[1948]["MapInfo"][72]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][72]["PosX"] = 364
MoveTrap_Info[1948]["MapInfo"][72]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][73] = {}
MoveTrap_Info[1948]["MapInfo"][73]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][73]["PosX"] = 368
MoveTrap_Info[1948]["MapInfo"][73]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][74] = {}
MoveTrap_Info[1948]["MapInfo"][74]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][74]["PosX"] = 372
MoveTrap_Info[1948]["MapInfo"][74]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][75] = {}
MoveTrap_Info[1948]["MapInfo"][75]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][75]["PosX"] = 376
MoveTrap_Info[1948]["MapInfo"][75]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][76] = {}
MoveTrap_Info[1948]["MapInfo"][76]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][76]["PosX"] = 380
MoveTrap_Info[1948]["MapInfo"][76]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][77] = {}
MoveTrap_Info[1948]["MapInfo"][77]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][77]["PosX"] = 384
MoveTrap_Info[1948]["MapInfo"][77]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][78] = {}
MoveTrap_Info[1948]["MapInfo"][78]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][78]["PosX"] = 334
MoveTrap_Info[1948]["MapInfo"][78]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][79] = {}
MoveTrap_Info[1948]["MapInfo"][79]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][79]["PosX"] = 330
MoveTrap_Info[1948]["MapInfo"][79]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][80] = {}
MoveTrap_Info[1948]["MapInfo"][80]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][80]["PosX"] = 326
MoveTrap_Info[1948]["MapInfo"][80]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][81] = {}
MoveTrap_Info[1948]["MapInfo"][81]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][81]["PosX"] = 322
MoveTrap_Info[1948]["MapInfo"][81]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][82] = {}
MoveTrap_Info[1948]["MapInfo"][82]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][82]["PosX"] = 318
MoveTrap_Info[1948]["MapInfo"][82]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][83] = {}
MoveTrap_Info[1948]["MapInfo"][83]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][83]["PosX"] = 314
MoveTrap_Info[1948]["MapInfo"][83]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][84] = {}
MoveTrap_Info[1948]["MapInfo"][84]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][84]["PosX"] = 310
MoveTrap_Info[1948]["MapInfo"][84]["PosY"] = 435
MoveTrap_Info[1948]["MapInfo"][85] = {}
MoveTrap_Info[1948]["MapInfo"][85]["MapId"] = 1002
MoveTrap_Info[1948]["MapInfo"][85]["PosX"] = 358
MoveTrap_Info[1948]["MapInfo"][85]["PosY"] = 422
-- 黑虎城
MoveTrap_Info[1948]["MapInfo"][86] = {}
MoveTrap_Info[1948]["MapInfo"][86]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][86]["PosX"] = 563
MoveTrap_Info[1948]["MapInfo"][86]["PosY"] = 597
MoveTrap_Info[1948]["MapInfo"][87] = {}
MoveTrap_Info[1948]["MapInfo"][87]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][87]["PosX"] = 573
MoveTrap_Info[1948]["MapInfo"][87]["PosY"] = 597
MoveTrap_Info[1948]["MapInfo"][88] = {}
MoveTrap_Info[1948]["MapInfo"][88]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][88]["PosX"] = 579
MoveTrap_Info[1948]["MapInfo"][88]["PosY"] = 588
MoveTrap_Info[1948]["MapInfo"][89] = {}
MoveTrap_Info[1948]["MapInfo"][89]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][89]["PosX"] = 563
MoveTrap_Info[1948]["MapInfo"][89]["PosY"] = 594
MoveTrap_Info[1948]["MapInfo"][90] = {}
MoveTrap_Info[1948]["MapInfo"][90]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][90]["PosX"] = 573
MoveTrap_Info[1948]["MapInfo"][90]["PosY"] = 594
MoveTrap_Info[1948]["MapInfo"][91] = {}
MoveTrap_Info[1948]["MapInfo"][91]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][91]["PosX"] = 579
MoveTrap_Info[1948]["MapInfo"][91]["PosY"] = 580
MoveTrap_Info[1948]["MapInfo"][92] = {}
MoveTrap_Info[1948]["MapInfo"][92]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][92]["PosX"] = 563
MoveTrap_Info[1948]["MapInfo"][92]["PosY"] = 591
MoveTrap_Info[1948]["MapInfo"][93] = {}
MoveTrap_Info[1948]["MapInfo"][93]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][93]["PosX"] = 573
MoveTrap_Info[1948]["MapInfo"][93]["PosY"] = 591
MoveTrap_Info[1948]["MapInfo"][94] = {}
MoveTrap_Info[1948]["MapInfo"][94]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][94]["PosX"] = 563
MoveTrap_Info[1948]["MapInfo"][94]["PosY"] = 577
MoveTrap_Info[1948]["MapInfo"][95] = {}
MoveTrap_Info[1948]["MapInfo"][95]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][95]["PosX"] = 573
MoveTrap_Info[1948]["MapInfo"][95]["PosY"] = 577
MoveTrap_Info[1948]["MapInfo"][96] = {}
MoveTrap_Info[1948]["MapInfo"][96]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][96]["PosX"] = 563
MoveTrap_Info[1948]["MapInfo"][96]["PosY"] = 574
MoveTrap_Info[1948]["MapInfo"][97] = {}
MoveTrap_Info[1948]["MapInfo"][97]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][97]["PosX"] = 573
MoveTrap_Info[1948]["MapInfo"][97]["PosY"] = 574
MoveTrap_Info[1948]["MapInfo"][98] = {}
MoveTrap_Info[1948]["MapInfo"][98]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][98]["PosX"] = 563
MoveTrap_Info[1948]["MapInfo"][98]["PosY"] = 571
MoveTrap_Info[1948]["MapInfo"][99] = {}
MoveTrap_Info[1948]["MapInfo"][99]["MapId"] = 1020
MoveTrap_Info[1948]["MapInfo"][99]["PosX"] = 573
MoveTrap_Info[1948]["MapInfo"][99]["PosY"] = 571
-- 鸣凤堡
MoveTrap_Info[1948]["MapInfo"][100] = {}
MoveTrap_Info[1948]["MapInfo"][100]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][100]["PosX"] = 204
MoveTrap_Info[1948]["MapInfo"][100]["PosY"] = 274
MoveTrap_Info[1948]["MapInfo"][101] = {}
MoveTrap_Info[1948]["MapInfo"][101]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][101]["PosX"] = 210
MoveTrap_Info[1948]["MapInfo"][101]["PosY"] = 268
MoveTrap_Info[1948]["MapInfo"][102] = {}
MoveTrap_Info[1948]["MapInfo"][102]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][102]["PosX"] = 194
MoveTrap_Info[1948]["MapInfo"][102]["PosY"] = 261
MoveTrap_Info[1948]["MapInfo"][103] = {}
MoveTrap_Info[1948]["MapInfo"][103]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][103]["PosX"] = 217
MoveTrap_Info[1948]["MapInfo"][103]["PosY"] = 265
MoveTrap_Info[1948]["MapInfo"][104] = {}
MoveTrap_Info[1948]["MapInfo"][104]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][104]["PosX"] = 187
MoveTrap_Info[1948]["MapInfo"][104]["PosY"] = 259
MoveTrap_Info[1948]["MapInfo"][105] = {}
MoveTrap_Info[1948]["MapInfo"][105]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][105]["PosX"] = 215
MoveTrap_Info[1948]["MapInfo"][105]["PosY"] = 257
MoveTrap_Info[1948]["MapInfo"][106] = {}
MoveTrap_Info[1948]["MapInfo"][106]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][106]["PosX"] = 181
MoveTrap_Info[1948]["MapInfo"][106]["PosY"] = 263
MoveTrap_Info[1948]["MapInfo"][107] = {}
MoveTrap_Info[1948]["MapInfo"][107]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][107]["PosX"] = 205
MoveTrap_Info[1948]["MapInfo"][107]["PosY"] = 258
MoveTrap_Info[1948]["MapInfo"][108] = {}
MoveTrap_Info[1948]["MapInfo"][108]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][108]["PosX"] = 177
MoveTrap_Info[1948]["MapInfo"][108]["PosY"] = 270
MoveTrap_Info[1948]["MapInfo"][109] = {}
MoveTrap_Info[1948]["MapInfo"][109]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][109]["PosX"] = 190
MoveTrap_Info[1948]["MapInfo"][109]["PosY"] = 286
MoveTrap_Info[1948]["MapInfo"][110] = {}
MoveTrap_Info[1948]["MapInfo"][110]["MapId"] = 1011
MoveTrap_Info[1948]["MapInfo"][110]["PosX"] = 180
MoveTrap_Info[1948]["MapInfo"][110]["PosY"] = 279
-- 云门关
MoveTrap_Info[1948]["MapInfo"][111] = {}
MoveTrap_Info[1948]["MapInfo"][111]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][111]["PosX"] = 506
MoveTrap_Info[1948]["MapInfo"][111]["PosY"] = 656
MoveTrap_Info[1948]["MapInfo"][112] = {}
MoveTrap_Info[1948]["MapInfo"][112]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][112]["PosX"] = 521
MoveTrap_Info[1948]["MapInfo"][112]["PosY"] = 652
MoveTrap_Info[1948]["MapInfo"][113] = {}
MoveTrap_Info[1948]["MapInfo"][113]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][113]["PosX"] = 491
MoveTrap_Info[1948]["MapInfo"][113]["PosY"] = 664
MoveTrap_Info[1948]["MapInfo"][114] = {}
MoveTrap_Info[1948]["MapInfo"][114]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][114]["PosX"] = 506
MoveTrap_Info[1948]["MapInfo"][114]["PosY"] = 647
MoveTrap_Info[1948]["MapInfo"][115] = {}
MoveTrap_Info[1948]["MapInfo"][115]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][115]["PosX"] = 513
MoveTrap_Info[1948]["MapInfo"][115]["PosY"] = 653
MoveTrap_Info[1948]["MapInfo"][116] = {}
MoveTrap_Info[1948]["MapInfo"][116]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][116]["PosX"] = 482
MoveTrap_Info[1948]["MapInfo"][116]["PosY"] = 664
MoveTrap_Info[1948]["MapInfo"][117] = {}
MoveTrap_Info[1948]["MapInfo"][117]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][117]["PosX"] = 506
MoveTrap_Info[1948]["MapInfo"][117]["PosY"] = 637
MoveTrap_Info[1948]["MapInfo"][118] = {}
MoveTrap_Info[1948]["MapInfo"][118]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][118]["PosX"] = 513
MoveTrap_Info[1948]["MapInfo"][118]["PosY"] = 664
MoveTrap_Info[1948]["MapInfo"][119] = {}
MoveTrap_Info[1948]["MapInfo"][119]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][119]["PosX"] = 496
MoveTrap_Info[1948]["MapInfo"][119]["PosY"] = 637
MoveTrap_Info[1948]["MapInfo"][120] = {}
MoveTrap_Info[1948]["MapInfo"][120]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][120]["PosX"] = 502
MoveTrap_Info[1948]["MapInfo"][120]["PosY"] = 664
MoveTrap_Info[1948]["MapInfo"][121] = {}
MoveTrap_Info[1948]["MapInfo"][121]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][121]["PosX"] = 487
MoveTrap_Info[1948]["MapInfo"][121]["PosY"] = 637
MoveTrap_Info[1948]["MapInfo"][122] = {}
MoveTrap_Info[1948]["MapInfo"][122]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][122]["PosX"] = 487
MoveTrap_Info[1948]["MapInfo"][122]["PosY"] = 656
MoveTrap_Info[1948]["MapInfo"][123] = {}
MoveTrap_Info[1948]["MapInfo"][123]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][123]["PosX"] = 487
MoveTrap_Info[1948]["MapInfo"][123]["PosY"] = 647
MoveTrap_Info[1948]["MapInfo"][124] = {}
MoveTrap_Info[1948]["MapInfo"][124]["MapId"] = 1000
MoveTrap_Info[1948]["MapInfo"][124]["PosX"] = 497
MoveTrap_Info[1948]["MapInfo"][124]["PosY"] = 656
-- 白鹭城
MoveTrap_Info[1948]["MapInfo"][125] = {}
MoveTrap_Info[1948]["MapInfo"][125]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][125]["PosX"] = 714
MoveTrap_Info[1948]["MapInfo"][125]["PosY"] = 581
MoveTrap_Info[1948]["MapInfo"][126] = {}
MoveTrap_Info[1948]["MapInfo"][126]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][126]["PosX"] = 740
MoveTrap_Info[1948]["MapInfo"][126]["PosY"] = 568
MoveTrap_Info[1948]["MapInfo"][127] = {}
MoveTrap_Info[1948]["MapInfo"][127]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][127]["PosX"] = 719
MoveTrap_Info[1948]["MapInfo"][127]["PosY"] = 586
MoveTrap_Info[1948]["MapInfo"][128] = {}
MoveTrap_Info[1948]["MapInfo"][128]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][128]["PosX"] = 740
MoveTrap_Info[1948]["MapInfo"][128]["PosY"] = 574
MoveTrap_Info[1948]["MapInfo"][129] = {}
MoveTrap_Info[1948]["MapInfo"][129]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][129]["PosX"] = 727
MoveTrap_Info[1948]["MapInfo"][129]["PosY"] = 586
MoveTrap_Info[1948]["MapInfo"][130] = {}
MoveTrap_Info[1948]["MapInfo"][130]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][130]["PosX"] = 718
MoveTrap_Info[1948]["MapInfo"][130]["PosY"] = 560
MoveTrap_Info[1948]["MapInfo"][131] = {}
MoveTrap_Info[1948]["MapInfo"][131]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][131]["PosX"] = 733
MoveTrap_Info[1948]["MapInfo"][131]["PosY"] = 581
MoveTrap_Info[1948]["MapInfo"][132] = {}
MoveTrap_Info[1948]["MapInfo"][132]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][132]["PosX"] = 716
MoveTrap_Info[1948]["MapInfo"][132]["PosY"] = 565
MoveTrap_Info[1948]["MapInfo"][133] = {}
MoveTrap_Info[1948]["MapInfo"][133]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][133]["PosX"] = 733
MoveTrap_Info[1948]["MapInfo"][133]["PosY"] = 565
MoveTrap_Info[1948]["MapInfo"][134] = {}
MoveTrap_Info[1948]["MapInfo"][134]["MapId"] = 1015
MoveTrap_Info[1948]["MapInfo"][134]["PosX"] = 727
MoveTrap_Info[1948]["MapInfo"][134]["PosY"] = 560

------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------
MoveTrap_Info[1879] = {}
MoveTrap_Info[1879]["ActivetyTime"] = tActivityTime["RiotOfNether"]["Activity"]
MoveTrap_Info[1879]["TrapType"] = 1879
MoveTrap_Info[1879]["Look"] = 1879
MoveTrap_Info[1879]["MapInfo"] = {}
MoveTrap_Info[1879]["MapInfo"][1] = {}
MoveTrap_Info[1879]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[1879]["MapInfo"][1]["PosX"] = 334
MoveTrap_Info[1879]["MapInfo"][1]["PosY"] = 497
MoveTrap_Info[1879]["GlobalId"] = 54689
MoveTrap_Info[1879]["OldSever"] = 1
------------------------------------------------------------------------------------
--Name:			180302[简体征服][活动脚本]3月幸运树活动
--Purpose:		宝树迎春
--Creator:		wzh
--Created:		2018/03/02
------------------------------------------------------------------------------------
MoveTrap_Info[1925] = {}
MoveTrap_Info[1925]["ActivetyTime"] = tActivityTime["LuckyTree"]["TrapTime"]
MoveTrap_Info[1925]["TrapType"] = 1925
MoveTrap_Info[1925]["Look"] = 811
MoveTrap_Info[1925]["MapInfo"] = {}
MoveTrap_Info[1925]["MapInfo"][1] = {}
MoveTrap_Info[1925]["MapInfo"][1]["MapId"] = 10281
MoveTrap_Info[1925]["MapInfo"][1]["PosX"] = 10
MoveTrap_Info[1925]["MapInfo"][1]["PosY"] = 30
MoveTrap_Info[1925]["MapInfo"][1]["PosCX"] = 1
MoveTrap_Info[1925]["MapInfo"][1]["PosCY"] = 1
MoveTrap_Info[1925]["MapInfo"][2] = {}
MoveTrap_Info[1925]["MapInfo"][2]["MapId"] = 10282
MoveTrap_Info[1925]["MapInfo"][2]["PosX"] = 13
MoveTrap_Info[1925]["MapInfo"][2]["PosY"] = 30
MoveTrap_Info[1925]["MapInfo"][2]["PosCX"] = 1
MoveTrap_Info[1925]["MapInfo"][2]["PosCY"] = 1
MoveTrap_Info[1925]["MapInfo"][3] = {}
MoveTrap_Info[1925]["MapInfo"][3]["MapId"] = 10283
MoveTrap_Info[1925]["MapInfo"][3]["PosX"] = 38
MoveTrap_Info[1925]["MapInfo"][3]["PosY"] = 20
MoveTrap_Info[1925]["MapInfo"][3]["PosCX"] = 1
MoveTrap_Info[1925]["MapInfo"][3]["PosCY"] = 1

------------------------------------------------------------------------------------
--Name：            180313[简体征服][活动脚本]神器重铸活动
--Creator:      李甲
--Created:     2018/03/13
------------------------------------------------------------------------------------
-- MoveTrap_Info[1935] = {}
-- MoveTrap_Info[1935]["ActivetyTime"] = tActivityTime["tNormalXuanBaoActivity"]["ActivityTime"]
-- MoveTrap_Info[1935]["TrapType"] = 1935
-- MoveTrap_Info[1935]["Look"] = 1935
-- MoveTrap_Info[1935]["MapInfo"] = {}
-- MoveTrap_Info[1935]["MapInfo"][1] = {}
-- MoveTrap_Info[1935]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1935]["MapInfo"][1]["PosX"] = 376
-- MoveTrap_Info[1935]["MapInfo"][1]["PosY"] = 442

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]新赌神活动制作
--Creator:		翁清海
--Created:		2018/04/28
------------------------------------------------------------------------------------
MoveTrap_Info[1972] = {}
MoveTrap_Info[1972]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1972]["TrapType"] = 1972
MoveTrap_Info[1972]["Look"] = 1972
MoveTrap_Info[1972]["MapInfo"] = {}
MoveTrap_Info[1972]["MapInfo"][1] = {}
MoveTrap_Info[1972]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1972][1]
MoveTrap_Info[1972]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1972][2]
MoveTrap_Info[1972]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1972][3]
MoveTrap_Info[1972]["MapInfo"][1]["PosCX"] = 2
MoveTrap_Info[1972]["MapInfo"][1]["PosCY"] = 2
MoveTrap_Info[1972]["GlobalId"] = 52914
MoveTrap_Info[1972]["GlobalData"] = 1
MoveTrap_Info[1972]["GlobalPos"] = 0

MoveTrap_Info[1973] = {}
MoveTrap_Info[1973]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1973]["TrapType"] = 1973
MoveTrap_Info[1973]["Look"] = 1973
MoveTrap_Info[1973]["MapInfo"] = {}
MoveTrap_Info[1973]["MapInfo"][1] = {}
MoveTrap_Info[1973]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1973][1]
MoveTrap_Info[1973]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1973][2]
MoveTrap_Info[1973]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1973][3]
MoveTrap_Info[1973]["MapInfo"][1]["PosCX"] = 2
MoveTrap_Info[1973]["MapInfo"][1]["PosCY"] = 2
MoveTrap_Info[1973]["GlobalId"] = 52914
MoveTrap_Info[1973]["GlobalData"] = 1
MoveTrap_Info[1973]["GlobalPos"] = 0

MoveTrap_Info[1974] = {}
MoveTrap_Info[1974]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1974]["TrapType"] = 1974
MoveTrap_Info[1974]["Look"] = 1974
MoveTrap_Info[1974]["MapInfo"] = {}
MoveTrap_Info[1974]["MapInfo"][1] = {}
MoveTrap_Info[1974]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1974][1]
MoveTrap_Info[1974]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1974][2]
MoveTrap_Info[1974]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1974][3]
MoveTrap_Info[1974]["MapInfo"][1]["PosCX"] = 2
MoveTrap_Info[1974]["MapInfo"][1]["PosCY"] = 2
MoveTrap_Info[1974]["GlobalId"] = 52914
MoveTrap_Info[1974]["GlobalData"] = 1
MoveTrap_Info[1974]["GlobalPos"] = 0

MoveTrap_Info[1983] = {}
MoveTrap_Info[1983]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1983]["TrapType"] = 1983
MoveTrap_Info[1983]["Look"] = 1983
MoveTrap_Info[1983]["MapInfo"] = {}
MoveTrap_Info[1983]["MapInfo"][1] = {}
MoveTrap_Info[1983]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1974][1]
MoveTrap_Info[1983]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1974][2] - 3
MoveTrap_Info[1983]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1974][3] - 3
MoveTrap_Info[1983]["GlobalId"] = 52914
MoveTrap_Info[1983]["GlobalData"] = 1
MoveTrap_Info[1983]["GlobalPos"] = 0

MoveTrap_Info[1984] = {}
MoveTrap_Info[1984]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1984]["TrapType"] = 1984
MoveTrap_Info[1984]["Look"] = 1984
MoveTrap_Info[1984]["MapInfo"] = {}
MoveTrap_Info[1984]["MapInfo"][1] = {}
MoveTrap_Info[1984]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1973][1]
MoveTrap_Info[1984]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1973][2] - 3
MoveTrap_Info[1984]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1973][3] - 3
MoveTrap_Info[1984]["GlobalId"] = 52914
MoveTrap_Info[1984]["GlobalData"] = 1
MoveTrap_Info[1984]["GlobalPos"] = 0

MoveTrap_Info[1985] = {}
MoveTrap_Info[1985]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1985]["TrapType"] = 1985
MoveTrap_Info[1985]["Look"] = 1985
MoveTrap_Info[1985]["MapInfo"] = {}
MoveTrap_Info[1985]["MapInfo"][1] = {}
MoveTrap_Info[1985]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1972][1]
MoveTrap_Info[1985]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1972][2] - 3
MoveTrap_Info[1985]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1972][3] - 3
MoveTrap_Info[1985]["GlobalId"] = 52914
MoveTrap_Info[1985]["GlobalData"] = 1
MoveTrap_Info[1985]["GlobalPos"] = 0

MoveTrap_Info[1986] = {}
MoveTrap_Info[1986]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info[1986]["TrapType"] = 1986
MoveTrap_Info[1986]["Look"] = 1986
MoveTrap_Info[1986]["MapInfo"] = {}
MoveTrap_Info[1986]["MapInfo"][1] = {}
MoveTrap_Info[1986]["MapInfo"][1]["MapId"] = tNpcPos["NewGodOfGamblers"][1986][1]
MoveTrap_Info[1986]["MapInfo"][1]["PosX"] = tNpcPos["NewGodOfGamblers"][1986][2]
MoveTrap_Info[1986]["MapInfo"][1]["PosY"] = tNpcPos["NewGodOfGamblers"][1986][3]
MoveTrap_Info[1986]["GlobalId"] = 52914
MoveTrap_Info[1986]["GlobalData"] = 1
MoveTrap_Info[1986]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name:		171211[简体征服][任务脚本]新跨服赛马活动
--Creator: 	兰瑞妹
--Created:	2017/12/15
------------------------------------------------------------------------------------
-- 地效
-- MoveTrap_Info[1918] = {}
-- MoveTrap_Info[1918]["ActivetyTime"] = tActivityTime["CrossServerRacing"]["ActivityTime"]
-- MoveTrap_Info[1918]["TrapType"] = 1918
-- MoveTrap_Info[1918]["Look"] = 1918
-- MoveTrap_Info[1918]["MapInfo"] = {}
-- MoveTrap_Info[1918]["MapInfo"][1] = {}
-- MoveTrap_Info[1918]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1918]["MapInfo"][1]["PosX"] = 370
-- MoveTrap_Info[1918]["MapInfo"][1]["PosY"] = 443
-- npc地效
-- MoveTrap_Info[1919] = {}
-- MoveTrap_Info[1919]["ActivetyTime"] = tActivityTime["CrossServerRacing"]["ActivityTime"]
-- MoveTrap_Info[1919]["TrapType"] = 1919
-- MoveTrap_Info[1919]["Look"] = 1894
-- MoveTrap_Info[1919]["MapInfo"] = {}
-- MoveTrap_Info[1919]["MapInfo"][1] = {}
-- MoveTrap_Info[1919]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1919]["MapInfo"][1]["PosX"] = 363 
-- MoveTrap_Info[1919]["MapInfo"][1]["PosY"] = 436
-- MoveTrap_Info[1919]["MapInfo"][2] = {}
-- MoveTrap_Info[1919]["MapInfo"][2]["MapId"] = 1002
-- MoveTrap_Info[1919]["MapInfo"][2]["PosX"] = 368
-- MoveTrap_Info[1919]["MapInfo"][2]["PosY"] = 436

------------------------------------------------------------------------------------
--Name:			[英文征服][任务脚本]大都市宣传地标制作
--Creator:		黄啸
--Created:		2018/09/17
------------------------------------------------------------------------------------
MoveTrap_Info[1757] = {}
MoveTrap_Info[1757]["ActivetyTime"] = tActivityTime["Bigcitybroadcast"]["TrapTime"]
MoveTrap_Info[1757]["TrapType"] = 1757
MoveTrap_Info[1757]["Look"] = 1757
MoveTrap_Info[1757]["MapInfo"] = {}
MoveTrap_Info[1757]["MapInfo"][1] = {}
MoveTrap_Info[1757]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[1757]["MapInfo"][1]["PosX"] = 346
MoveTrap_Info[1757]["MapInfo"][1]["PosY"] = 480
MoveTrap_Info[1757]["MapInfo"][1]["PosCX"] = 1
MoveTrap_Info[1757]["MapInfo"][1]["PosCY"] = 1
MoveTrap_Info[1757]["MapInfo"][2] = {}
MoveTrap_Info[1757]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[1757]["MapInfo"][2]["PosX"] = 344
MoveTrap_Info[1757]["MapInfo"][2]["PosY"] = 439
MoveTrap_Info[1757]["MapInfo"][2]["PosCX"] = 1
MoveTrap_Info[1757]["MapInfo"][2]["PosCY"] = 1
MoveTrap_Info[1757]["MapInfo"][3] = {}
MoveTrap_Info[1757]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[1757]["MapInfo"][3]["PosX"] = 267
MoveTrap_Info[1757]["MapInfo"][3]["PosY"] = 425
MoveTrap_Info[1757]["MapInfo"][3]["PosCX"] = 1
MoveTrap_Info[1757]["MapInfo"][3]["PosCY"] = 1
MoveTrap_Info[1757]["MapInfo"][4] = {}
MoveTrap_Info[1757]["MapInfo"][4]["MapId"] = 3053
MoveTrap_Info[1757]["MapInfo"][4]["PosX"] = 200
MoveTrap_Info[1757]["MapInfo"][4]["PosY"] = 173
MoveTrap_Info[1757]["MapInfo"][4]["PosCX"] = 1
MoveTrap_Info[1757]["MapInfo"][4]["PosCY"] = 1


------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
-- 纪存熙
MoveTrap_Info[2058] = {}
MoveTrap_Info[2058]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info[2058]["TrapType"] = 2058
MoveTrap_Info[2058]["Look"] = 1894
MoveTrap_Info[2058]["MapInfo"] = {}
MoveTrap_Info[2058]["MapInfo"][1] = {}
MoveTrap_Info[2058]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2058]["MapInfo"][1]["PosX"] = 387
MoveTrap_Info[2058]["MapInfo"][1]["PosY"] = 435
-- 真爱礼品师
MoveTrap_Info[2055] = {}
MoveTrap_Info[2055]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info[2055]["TrapType"] = 2055
MoveTrap_Info[2055]["Look"] = 1894
MoveTrap_Info[2055]["MapInfo"] = {}
MoveTrap_Info[2055]["MapInfo"][1] = {}
MoveTrap_Info[2055]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2055]["MapInfo"][1]["PosX"] = 379
MoveTrap_Info[2055]["MapInfo"][1]["PosY"] = 435
-- 追爱僚机
MoveTrap_Info[2056] = {}
MoveTrap_Info[2056]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info[2056]["TrapType"] = 2056
MoveTrap_Info[2056]["Look"] = 1894
MoveTrap_Info[2056]["MapInfo"] = {}
MoveTrap_Info[2056]["MapInfo"][1] = {}
MoveTrap_Info[2056]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2056]["MapInfo"][1]["PosX"] = 383
MoveTrap_Info[2056]["MapInfo"][1]["PosY"] = 435
-- 爱神维纳斯
MoveTrap_Info[2057] = {}
MoveTrap_Info[2057]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info[2057]["TrapType"] = 2057
MoveTrap_Info[2057]["Look"] = 1894
MoveTrap_Info[2057]["MapInfo"] = {}
MoveTrap_Info[2057]["MapInfo"][1] = {}
MoveTrap_Info[2057]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2057]["MapInfo"][1]["PosX"] = 382
MoveTrap_Info[2057]["MapInfo"][1]["PosY"] = 441
-- 地效
MoveTrap_Info[2054] = {}
MoveTrap_Info[2054]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info[2054]["TrapType"] = 2054
MoveTrap_Info[2054]["Look"] = 2054
MoveTrap_Info[2054]["MapInfo"] = {}
MoveTrap_Info[2054]["MapInfo"][1] = {}
MoveTrap_Info[2054]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2054]["MapInfo"][1]["PosX"] = 382
MoveTrap_Info[2054]["MapInfo"][1]["PosY"] = 443

------------------------------------------------------------------------------------
--Name:		[181121[简体征服][活动脚本]熔炼炉引导任务
--Purpose:	熔炼炉引导任务
--Creator: 	严振飞
--Created:	2018/11/21
------------------------------------------------------------------------------------
	MoveTrap_Info[2178] = {}
	MoveTrap_Info[2178]["ActivetyTime"] = tActivityTime["MeltingStove"]["Daily"]
	MoveTrap_Info[2178]["TrapType"] = 2178
	MoveTrap_Info[2178]["Look"] = 1894
	MoveTrap_Info[2178]["MapInfo"] = {}
	MoveTrap_Info[2178]["MapInfo"][1] = {}
	MoveTrap_Info[2178]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2178]["MapInfo"][1]["PosX"] = 340
	MoveTrap_Info[2178]["MapInfo"][1]["PosY"] = 416
	

------------------------------------------------------------------------------------
--Name：            171031[简体征服][活动脚本]复用圣诞元旦小活动
--Creator:      江宇君
--Created:     2018/12/05
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            171031[简体征服][活动脚本]2017圣诞元旦活动
--Creator:      王贤
--Created:     2017/10/31
------------------------------------------------------------------------------------
-- MoveTrap_Info[1826] = {}
-- MoveTrap_Info[1826]["ActivetyTime"] = tActivityTime["DoubleEgg"]["MoveTomTime"]
-- MoveTrap_Info[1826]["TrapType"] = 1826
-- MoveTrap_Info[1826]["Look"] = 1826
-- MoveTrap_Info[1826]["MapInfo"] = {}
-- MoveTrap_Info[1826]["MapInfo"][1] = {}
-- MoveTrap_Info[1826]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1826]["MapInfo"][1]["PosX"] = 533
-- MoveTrap_Info[1826]["MapInfo"][1]["PosY"] = 266

-- MoveTrap_Info[1827] = {}
-- MoveTrap_Info[1827]["ActivetyTime"] = tActivityTime["DoubleEgg"]["MoveTomTime"]
-- MoveTrap_Info[1827]["TrapType"] = 1827
-- MoveTrap_Info[1827]["Look"] = 1827
-- MoveTrap_Info[1827]["MapInfo"] = {}
-- MoveTrap_Info[1827]["MapInfo"][1] = {}
-- MoveTrap_Info[1827]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1827]["MapInfo"][1]["PosX"] = 533
-- MoveTrap_Info[1827]["MapInfo"][1]["PosY"] = 286

-- MoveTrap_Info[1828] = {}
-- MoveTrap_Info[1828]["ActivetyTime"] = tActivityTime["DoubleEgg"]["MoveTomTime"]
-- MoveTrap_Info[1828]["TrapType"] = 1828
-- MoveTrap_Info[1828]["Look"] = 1828
-- MoveTrap_Info[1828]["MapInfo"] = {}
-- MoveTrap_Info[1828]["MapInfo"][1] = {}
-- MoveTrap_Info[1828]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1828]["MapInfo"][1]["PosX"] = 523
-- MoveTrap_Info[1828]["MapInfo"][1]["PosY"] = 276

-- MoveTrap_Info[1829] = {}
-- MoveTrap_Info[1829]["ActivetyTime"] = tActivityTime["DoubleEgg"]["MoveTomTime"]
-- MoveTrap_Info[1829]["TrapType"] = 1829
-- MoveTrap_Info[1829]["Look"] = 1829
-- MoveTrap_Info[1829]["MapInfo"] = {}
-- MoveTrap_Info[1829]["MapInfo"][1] = {}
-- MoveTrap_Info[1829]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[1829]["MapInfo"][1]["PosX"] = 543
-- MoveTrap_Info[1829]["MapInfo"][1]["PosY"] = 276
------------------------------------------------------------------------------------
--Name：            180913[英文征服][活动脚本]国境和矿山调整
--Creator:      王贤
--Created:     2018/09/13
------------------------------------------------------------------------------------
	MoveTrap_Info[2018] = {}
	MoveTrap_Info[2018]["ActivetyTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	MoveTrap_Info[2018]["TrapType"] = 2018
	MoveTrap_Info[2018]["Look"] = 1894
	MoveTrap_Info[2018]["MapInfo"] = {}
	MoveTrap_Info[2018]["MapInfo"][1] = {}
	MoveTrap_Info[2018]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2018]["MapInfo"][1]["PosX"] = 340
	MoveTrap_Info[2018]["MapInfo"][1]["PosY"] = 323
	

------------------------------------------------------------------------------------
--Name：       190107[简体征服][活动脚本]2月情人节花魁赛活动
--Creator:     姚曦宇
--Created:     2019/01/07
------------------------------------------------------------------------------------
	-- 活动地效
	MoveTrap_Info[2235] = {}
	MoveTrap_Info[2235]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2235]["TrapType"] = 2235
	MoveTrap_Info[2235]["Look"] = 2235
	MoveTrap_Info[2235]["MapInfo"] = {}
	MoveTrap_Info[2235]["MapInfo"][1] = {}
	MoveTrap_Info[2235]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][2235][1]
	MoveTrap_Info[2235]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][2235][2] + 2
	MoveTrap_Info[2235]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][2235][3] + 3
	-- 活动主持人
	-- MoveTrap_Info[2230] = {}
	-- MoveTrap_Info[2230]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2230]["TrapType"] = 2230
	-- MoveTrap_Info[2230]["Look"] = 2230
	-- MoveTrap_Info[2230]["MapInfo"] = {}
	-- MoveTrap_Info[2230]["MapInfo"][1] = {}
	-- MoveTrap_Info[2230]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23682][1]
	-- MoveTrap_Info[2230]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23682][2]
	-- MoveTrap_Info[2230]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23682][3] - 1
	-- npc约会场景地效
	MoveTrap_Info[2252] = {}
	MoveTrap_Info[2252]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2252]["TrapType"] = 2252
	MoveTrap_Info[2252]["Look"] = 2252
	MoveTrap_Info[2252]["MapInfo"] = {}
	MoveTrap_Info[2252]["MapInfo"][1] = {}
	MoveTrap_Info[2252]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23710][1]
	MoveTrap_Info[2252]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23710][2]
	MoveTrap_Info[2252]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23710][3]
	MoveTrap_Info[2252]["MapInfo"][1]["PosCX"] = 3
	MoveTrap_Info[2252]["MapInfo"][1]["PosCY"] = 3
	-- 玩家约会场景地效
	MoveTrap_Info[2253] = {}
	MoveTrap_Info[2253]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2253]["TrapType"] = 2253
	MoveTrap_Info[2253]["Look"] = 2253
	MoveTrap_Info[2253]["MapInfo"] = {}
	MoveTrap_Info[2253]["MapInfo"][1] = {}
	MoveTrap_Info[2253]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23738][1]
	MoveTrap_Info[2253]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23738][2]
	MoveTrap_Info[2253]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23738][3]
	MoveTrap_Info[2253]["MapInfo"][1]["PosCX"] = 3
	MoveTrap_Info[2253]["MapInfo"][1]["PosCY"] = 3
	-- 情侣约会场景地效
	MoveTrap_Info[2275] = {}
	MoveTrap_Info[2275]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2275]["TrapType"] = 2275
	MoveTrap_Info[2275]["Look"] = 2275
	MoveTrap_Info[2275]["MapInfo"] = {}
	MoveTrap_Info[2275]["MapInfo"][1] = {}
	MoveTrap_Info[2275]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23738][1]
	MoveTrap_Info[2275]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23738][2]
	MoveTrap_Info[2275]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23738][3]
	-- 个人约会场景地效
	MoveTrap_Info[2276] = {}
	MoveTrap_Info[2276]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2276]["TrapType"] = 2276
	MoveTrap_Info[2276]["Look"] = 2276
	MoveTrap_Info[2276]["MapInfo"] = {}
	MoveTrap_Info[2276]["MapInfo"][1] = {}
	MoveTrap_Info[2276]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23710][1]
	MoveTrap_Info[2276]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23710][2]
	MoveTrap_Info[2276]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23710][3]
	
	
	-- MoveTrap_Info[2231] = {}
	-- MoveTrap_Info[2231]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2231]["TrapType"] = 2231
	-- MoveTrap_Info[2231]["Look"] = 2231
	-- MoveTrap_Info[2231]["MapInfo"] = {}
	-- MoveTrap_Info[2231]["MapInfo"][1] = {}
	-- MoveTrap_Info[2231]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23683][1]
	-- MoveTrap_Info[2231]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23683][2]
	-- MoveTrap_Info[2231]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23683][3] + 2
	
	-- MoveTrap_Info[2232] = {}
	-- MoveTrap_Info[2232]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2232]["TrapType"] = 2232
	-- MoveTrap_Info[2232]["Look"] = 2232
	-- MoveTrap_Info[2232]["MapInfo"] = {}
	-- MoveTrap_Info[2232]["MapInfo"][1] = {}
	-- MoveTrap_Info[2232]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23684][1]
	-- MoveTrap_Info[2232]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23684][2]
	-- MoveTrap_Info[2232]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23684][3] + 2
	
	-- MoveTrap_Info[2233] = {}
	-- MoveTrap_Info[2233]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2233]["TrapType"] = 2233
	-- MoveTrap_Info[2233]["Look"] = 2233
	-- MoveTrap_Info[2233]["MapInfo"] = {}
	-- MoveTrap_Info[2233]["MapInfo"][1] = {}
	-- MoveTrap_Info[2233]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23685][1]
	-- MoveTrap_Info[2233]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23685][2]
	-- MoveTrap_Info[2233]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23685][3] + 2
	
	-- MoveTrap_Info[2245] = {}
	-- MoveTrap_Info[2245]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2245]["TrapType"] = 2245
	-- MoveTrap_Info[2245]["Look"] = 2245
	-- MoveTrap_Info[2245]["MapInfo"] = {}
	-- MoveTrap_Info[2245]["MapInfo"][1] = {}
	-- MoveTrap_Info[2245]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23686][1]
	-- MoveTrap_Info[2245]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23686][2]
	-- MoveTrap_Info[2245]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23686][3] + 2
	
	-- MoveTrap_Info[2246] = {}
	-- MoveTrap_Info[2246]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2246]["TrapType"] = 2246
	-- MoveTrap_Info[2246]["Look"] = 2246
	-- MoveTrap_Info[2246]["MapInfo"] = {}
	-- MoveTrap_Info[2246]["MapInfo"][1] = {}
	-- MoveTrap_Info[2246]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23687][1]
	-- MoveTrap_Info[2246]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23687][2]
	-- MoveTrap_Info[2246]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23687][3] + 2
	
	-- MoveTrap_Info[2247] = {}
	-- MoveTrap_Info[2247]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	-- MoveTrap_Info[2247]["TrapType"] = 2247
	-- MoveTrap_Info[2247]["Look"] = 2247
	-- MoveTrap_Info[2247]["MapInfo"] = {}
	-- MoveTrap_Info[2247]["MapInfo"][1] = {}
	-- MoveTrap_Info[2247]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23688][1]
	-- MoveTrap_Info[2247]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23688][2]
	-- MoveTrap_Info[2247]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23688][3] + 2
	
	-- 约他
	MoveTrap_Info[2248] = {}
	MoveTrap_Info[2248]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2248]["TrapType"] = 2248
	MoveTrap_Info[2248]["Look"] = 2248
	MoveTrap_Info[2248]["MapInfo"] = {}
	-- MoveTrap_Info[2248]["MapInfo"][1] = {}
	-- MoveTrap_Info[2248]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23683][1]
	-- MoveTrap_Info[2248]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23683][2]
	-- MoveTrap_Info[2248]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23683][3]
	MoveTrap_Info[2248]["MapInfo"][2] = {}
	MoveTrap_Info[2248]["MapInfo"][2]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23684][1]
	MoveTrap_Info[2248]["MapInfo"][2]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23684][2]
	MoveTrap_Info[2248]["MapInfo"][2]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23684][3]
	MoveTrap_Info[2248]["MapInfo"][3] = {}
	MoveTrap_Info[2248]["MapInfo"][3]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23685][1]
	MoveTrap_Info[2248]["MapInfo"][3]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23685][2]
	MoveTrap_Info[2248]["MapInfo"][3]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23685][3]
	-- 约她
	MoveTrap_Info[2249] = {}
	MoveTrap_Info[2249]["ActivetyTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	MoveTrap_Info[2249]["TrapType"] = 2249
	MoveTrap_Info[2249]["Look"] = 2249
	MoveTrap_Info[2249]["MapInfo"] = {}
	-- MoveTrap_Info[2249]["MapInfo"][1] = {}
	-- MoveTrap_Info[2249]["MapInfo"][1]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23686][1]
	-- MoveTrap_Info[2249]["MapInfo"][1]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23686][2]
	-- MoveTrap_Info[2249]["MapInfo"][1]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23686][3]
	MoveTrap_Info[2249]["MapInfo"][2] = {}
	MoveTrap_Info[2249]["MapInfo"][2]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23687][1]
	MoveTrap_Info[2249]["MapInfo"][2]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23687][2]
	MoveTrap_Info[2249]["MapInfo"][2]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23687][3]
	MoveTrap_Info[2249]["MapInfo"][3] = {}
	MoveTrap_Info[2249]["MapInfo"][3]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23688][1]
	MoveTrap_Info[2249]["MapInfo"][3]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23688][2]
	MoveTrap_Info[2249]["MapInfo"][3]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23688][3]	
	
------------------------------------------------------------------------------------
--Name：    181227[简体征服][活动脚本]雷神特权月活动优化
--Creator:      兰瑞妹
--Created:     2018-12-27
------------------------------------------------------------------------------------
	-- 双龙城地效
	MoveTrap_Info[2196] = {}
	MoveTrap_Info[2196]["ActivetyTime"] = tActivityTime["ThorPrivilegeMonth"]["ActivityTime"]
	MoveTrap_Info[2196]["TrapType"] = 2196
	MoveTrap_Info[2196]["Look"] = 1894
	MoveTrap_Info[2196]["MapInfo"] = {}
	MoveTrap_Info[2196]["MapInfo"][1] = {}
	MoveTrap_Info[2196]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2196]["MapInfo"][1]["PosX"] = 340
	MoveTrap_Info[2196]["MapInfo"][1]["PosY"] = 478

------------------------------------------------------------------------------------
--Name：       190212[简体征服][活动脚本]周年庆小活动复用
--Creator:     江宇君
--Created:     2019/02/12
------------------------------------------------------------------------------------
MoveTrap_Info[1896] = {}
MoveTrap_Info[1896]["ActivetyTime"] = tActivityTime["AnniversaryActivity"]["ActivityTime"]
MoveTrap_Info[1896]["TrapType"] = 1896
MoveTrap_Info[1896]["Look"] = 1894
MoveTrap_Info[1896]["MapInfo"] = {}
MoveTrap_Info[1896]["MapInfo"][1] = {}
MoveTrap_Info[1896]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[1896]["MapInfo"][1]["PosX"] = 340
MoveTrap_Info[1896]["MapInfo"][1]["PosY"] = 490
MoveTrap_Info[1896]["MapInfo"][2] = {}
MoveTrap_Info[1896]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[1896]["MapInfo"][2]["PosX"] = 340
MoveTrap_Info[1896]["MapInfo"][2]["PosY"] = 486

------------------------------------------------------------------------------------
--Name：            181206[简体征服][活动脚本]12月消费活动
--Creator:      吴燕柚
--Created:     2018-12-06
------------------------------------------------------------------------------------
	MoveTrap_Info[2186] = {}
	MoveTrap_Info[2186]["ActivetyTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
	MoveTrap_Info[2186]["TrapType"] = 2186
	MoveTrap_Info[2186]["Look"] = 1836
	MoveTrap_Info[2186]["MapInfo"] = {}
	MoveTrap_Info[2186]["MapInfo"][1] = {}
	MoveTrap_Info[2186]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2186]["MapInfo"][1]["PosX"] = 372
	MoveTrap_Info[2186]["MapInfo"][1]["PosY"] = 442
	--NPC脚底光效
	MoveTrap_Info[2199] = {}
	MoveTrap_Info[2199]["ActivetyTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
	MoveTrap_Info[2199]["TrapType"] = 2199
	MoveTrap_Info[2199]["Look"] = 1894
	MoveTrap_Info[2199]["MapInfo"] = {}
	MoveTrap_Info[2199]["MapInfo"][1] = {}
	MoveTrap_Info[2199]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2199]["MapInfo"][1]["PosX"] = 366
	MoveTrap_Info[2199]["MapInfo"][1]["PosY"] = 436
	MoveTrap_Info[2200] = {}
	MoveTrap_Info[2200]["ActivetyTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
	MoveTrap_Info[2200]["TrapType"] = 2200
	MoveTrap_Info[2200]["Look"] = 1894
	MoveTrap_Info[2200]["MapInfo"] = {}
	MoveTrap_Info[2200]["MapInfo"][1] = {}
	MoveTrap_Info[2200]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2200]["MapInfo"][1]["PosX"] = 370
	MoveTrap_Info[2200]["MapInfo"][1]["PosY"] = 436
	MoveTrap_Info[2201] = {}
	MoveTrap_Info[2201]["ActivetyTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
	MoveTrap_Info[2201]["TrapType"] = 2201
	MoveTrap_Info[2201]["Look"] = 1894
	MoveTrap_Info[2201]["MapInfo"] = {}
	MoveTrap_Info[2201]["MapInfo"][1] = {}
	MoveTrap_Info[2201]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2201]["MapInfo"][1]["PosX"] = 374
	MoveTrap_Info[2201]["MapInfo"][1]["PosY"] = 436
	MoveTrap_Info[2202] = {}
	MoveTrap_Info[2202]["ActivetyTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
	MoveTrap_Info[2202]["TrapType"] = 2202
	MoveTrap_Info[2202]["Look"] = 1894
	MoveTrap_Info[2202]["MapInfo"] = {}
	MoveTrap_Info[2202]["MapInfo"][1] = {}
	MoveTrap_Info[2202]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2202]["MapInfo"][1]["PosX"] = 378
	MoveTrap_Info[2202]["MapInfo"][1]["PosY"] = 436

------------------------------------------------------------------------------------
--Name:			190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动
--Creator:		吴燕柚
--Created:		2019/03/12
------------------------------------------------------------------------------------
-- 活动地效
MoveTrap_Info[147] = {}
MoveTrap_Info[147]["ActivetyTime"] = tActivityTime["TrojanAwakenI"]["ExchangeTime"]
MoveTrap_Info[147]["TrapType"] = 147
MoveTrap_Info[147]["Look"] = 1704
MoveTrap_Info[147]["MapInfo"] = {}
MoveTrap_Info[147]["MapInfo"][1] = {}
MoveTrap_Info[147]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[147]["MapInfo"][1]["PosX"] = 321
MoveTrap_Info[147]["MapInfo"][1]["PosY"] = 496
------------------------------------------------------------------------------------
--Name:			190410[简体征服][活动脚本]周年庆气氛布置
--Creator:		耿力兀
--Created:		2019-04-11
------------------------------------------------------------------------------------
-- scene_pigleft
MoveTrap_Info[2320] = {}
MoveTrap_Info[2320]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
MoveTrap_Info[2320]["TrapType"] = 2320
MoveTrap_Info[2320]["Look"] = 2320

MoveTrap_Info[2320]["MapInfo"] = {}
MoveTrap_Info[2320]["MapInfo"][1] = {}
MoveTrap_Info[2320]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2320]["MapInfo"][1]["PosX"] = 354
MoveTrap_Info[2320]["MapInfo"][1]["PosY"] = 349
MoveTrap_Info[2320]["MapInfo"][2] = {}
MoveTrap_Info[2320]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[2320]["MapInfo"][2]["PosX"] = 337
MoveTrap_Info[2320]["MapInfo"][2]["PosY"] = 349


-- scene_pigballoon		
MoveTrap_Info[2321] = {}
MoveTrap_Info[2321]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
MoveTrap_Info[2321]["TrapType"] = 2321
MoveTrap_Info[2321]["Look"] = 2321

MoveTrap_Info[2321]["MapInfo"] = {}
MoveTrap_Info[2321]["MapInfo"][1] = {}
MoveTrap_Info[2321]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2321]["MapInfo"][1]["PosX"] = 336
MoveTrap_Info[2321]["MapInfo"][1]["PosY"] = 292
MoveTrap_Info[2321]["MapInfo"][2] = {}
MoveTrap_Info[2321]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[2321]["MapInfo"][2]["PosX"] = 354
MoveTrap_Info[2321]["MapInfo"][2]["PosY"] = 292

-- aura_leaves01
MoveTrap_Info[2322] = {}
MoveTrap_Info[2322]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
MoveTrap_Info[2322]["TrapType"] = 2322
MoveTrap_Info[2322]["Look"] = 2322

MoveTrap_Info[2322]["MapInfo"] = {}

local MoveTrap_Potion ={{393,505},{377,505},{361,505},{342,505},{320,505},{303,505},{303,487},{303,471},{303,455},{303,442},{303,424},{303,410},{303,397},{303,383},{319,383},{319,398},{319,413},{319,429},{319,444},{319,459},{319,473},{319,486},{319,489},{319,473},{319,459},{319,443},{319,473},{319,486},{332,489},{332,473},{332,459},{332,443},{332,429},{332,415},{332,399},{332,384},{351,384},{351,398},{351,409},{351,426},{351,441},{351,457},{351,472},{351,487},{372,487},{372,474},{372,459},{372,443},{372,427},{372,413},{372,397},{372,383},{389,389},{393,395},{393,410},{393,425},{393,440},{393,453},{393,468},{393,485},{393,500},{363,369},{372,360},{381,370},{286,475},{274,478},{256,472},{247,482},{236,484},{250,459}}

for i,v in pairs (MoveTrap_Potion) do
	MoveTrap_Info[2322]["MapInfo"][i] = {}
	MoveTrap_Info[2322]["MapInfo"][i]["MapId"] = 1002
	MoveTrap_Info[2322]["MapInfo"][i]["PosX"] = v[1]
	MoveTrap_Info[2322]["MapInfo"][i]["PosY"] = v[2]
end 


------------------------------------------------------------------------------------
--Name：        190409[ios英文征服][活动脚本]新服夺宝-空中花园部分
--Creator:      吴燕柚
--Created:      2019-04-09
------------------------------------------------------------------------------------

MoveTrap_Info[163] = {}
MoveTrap_Info[163]["ActivetyTime"] = tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]
MoveTrap_Info[163]["TrapType"] = 163
MoveTrap_Info[163]["Look"] = 24
MoveTrap_Info[163]["MapInfo"] = {}
MoveTrap_Info[163]["MapInfo"][1] = {}
MoveTrap_Info[163]["MapInfo"][1]["MapId"] = 10476
MoveTrap_Info[163]["MapInfo"][1]["PosX"] = 477
MoveTrap_Info[163]["MapInfo"][1]["PosY"] = 198
MoveTrap_Info[163]["MapInfo"][2] = {}
MoveTrap_Info[163]["MapInfo"][2]["MapId"] = 10476
MoveTrap_Info[163]["MapInfo"][2]["PosX"] = 338
MoveTrap_Info[163]["MapInfo"][2]["PosY"] = 289
MoveTrap_Info[163]["MapInfo"][3] = {}
MoveTrap_Info[163]["MapInfo"][3]["MapId"] = 10476
MoveTrap_Info[163]["MapInfo"][3]["PosX"] = 194
MoveTrap_Info[163]["MapInfo"][3]["PosY"] = 198
MoveTrap_Info[163]["MapInfo"][4] = {}
MoveTrap_Info[163]["MapInfo"][4]["MapId"] = 10476
MoveTrap_Info[163]["MapInfo"][4]["PosX"] = 194
MoveTrap_Info[163]["MapInfo"][4]["PosY"] = 482
MoveTrap_Info[163]["MapInfo"][5] = {}
MoveTrap_Info[163]["MapInfo"][5]["MapId"] = 10476
MoveTrap_Info[163]["MapInfo"][5]["PosX"] = 477
MoveTrap_Info[163]["MapInfo"][5]["PosY"] = 481

------------------------------------------------------------------------------------
--Name:		190422[英文征服][活动脚本]扑克收集活动
--Purpose:	扑克收集活动
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------

MoveTrap_Info[2394] = {}
MoveTrap_Info[2394]["ActivetyTime"] = tActivityTime["CollectionSqueezer"]["ActTime"]
MoveTrap_Info[2394]["TrapType"] = 2394
MoveTrap_Info[2394]["Look"] = 1837
MoveTrap_Info[2394]["MapInfo"] = {}
MoveTrap_Info[2394]["MapInfo"][1] = {}
MoveTrap_Info[2394]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2394]["MapInfo"][1]["PosX"] = 328
MoveTrap_Info[2394]["MapInfo"][1]["PosY"] = 441

------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
	MoveTrap_Info[146] = {}
	MoveTrap_Info[146]["ActivetyTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	MoveTrap_Info[146]["TrapType"] = 146
	MoveTrap_Info[146]["Look"] = 2077
	MoveTrap_Info[146]["MapInfo"] = {}
	MoveTrap_Info[146]["MapInfo"][1] = {}
	MoveTrap_Info[146]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[146]["MapInfo"][1]["PosX"] = 374 
	MoveTrap_Info[146]["MapInfo"][1]["PosY"] = 436
	MoveTrap_Info[146]["MapInfo"][1]["PosCX"] = 2
	MoveTrap_Info[146]["MapInfo"][1]["PosCY"] = 2
	MoveTrap_Info[148] = {}
	MoveTrap_Info[148]["ActivetyTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	MoveTrap_Info[148]["TrapType"] = 148
	MoveTrap_Info[148]["Look"] = 1804
	MoveTrap_Info[148]["MapInfo"] = {}
	MoveTrap_Info[148]["MapInfo"][1] = {}
	MoveTrap_Info[148]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[148]["MapInfo"][1]["PosX"] = 374
	MoveTrap_Info[148]["MapInfo"][1]["PosY"] = 436
	MoveTrap_Info[148]["MapInfo"][1]["PosCX"] = 2
	MoveTrap_Info[148]["MapInfo"][1]["PosCY"] = 2
	-- MoveTrap_Info[149] = {}
	-- MoveTrap_Info[149]["ActivetyTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	-- MoveTrap_Info[149]["TrapType"] = 149
	-- MoveTrap_Info[149]["Look"] = 1836
	-- MoveTrap_Info[149]["MapInfo"] = {}
	-- MoveTrap_Info[149]["MapInfo"][1] = {}
	-- MoveTrap_Info[149]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[149]["MapInfo"][1]["PosX"] = 321
	-- MoveTrap_Info[149]["MapInfo"][1]["PosY"] = 436


------------------------------------------------------------------------------------
--Name：        190409[ios英文征服][活动脚本]新服夺宝-空中花园部分
--Creator:      吴燕柚
--Created:      2019-04-09
------------------------------------------------------------------------------------

MoveTrap_Info_NoGift[163] = {}
MoveTrap_Info_NoGift[163]["ActivetyTime"] = tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]
MoveTrap_Info_NoGift[163]["TrapType"] = 163
MoveTrap_Info_NoGift[163]["Look"] = 24
MoveTrap_Info_NoGift[163]["MapInfo"] = {}
MoveTrap_Info_NoGift[163]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[163]["MapInfo"][1]["MapId"] = 10476
MoveTrap_Info_NoGift[163]["MapInfo"][1]["PosX"] = 477
MoveTrap_Info_NoGift[163]["MapInfo"][1]["PosY"] = 198
MoveTrap_Info_NoGift[163]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[163]["MapInfo"][2]["MapId"] = 10476
MoveTrap_Info_NoGift[163]["MapInfo"][2]["PosX"] = 338
MoveTrap_Info_NoGift[163]["MapInfo"][2]["PosY"] = 289
MoveTrap_Info_NoGift[163]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[163]["MapInfo"][3]["MapId"] = 10476
MoveTrap_Info_NoGift[163]["MapInfo"][3]["PosX"] = 194
MoveTrap_Info_NoGift[163]["MapInfo"][3]["PosY"] = 198
MoveTrap_Info_NoGift[163]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[163]["MapInfo"][4]["MapId"] = 10476
MoveTrap_Info_NoGift[163]["MapInfo"][4]["PosX"] = 194
MoveTrap_Info_NoGift[163]["MapInfo"][4]["PosY"] = 482
MoveTrap_Info_NoGift[163]["MapInfo"][5] = {}
MoveTrap_Info_NoGift[163]["MapInfo"][5]["MapId"] = 10476
MoveTrap_Info_NoGift[163]["MapInfo"][5]["PosX"] = 477
MoveTrap_Info_NoGift[163]["MapInfo"][5]["PosY"] = 481

------------------------------------------------------------------------------------
--Name:			190410[简体征服][活动脚本]周年庆气氛布置
--Creator:		耿力兀
--Created:		2019-04-11
------------------------------------------------------------------------------------
-- scene_pigright	
MoveTrap_Info_NoGift[2319] = {}
MoveTrap_Info_NoGift[2319]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
MoveTrap_Info_NoGift[2319]["TrapType"] = 2319
MoveTrap_Info_NoGift[2319]["Look"] = 2319

MoveTrap_Info_NoGift[2319]["MapInfo"] = {}
MoveTrap_Info_NoGift[2319]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2319]["MapInfo"][1]["MapId"] = 10364
MoveTrap_Info_NoGift[2319]["MapInfo"][1]["PosX"] = 241
MoveTrap_Info_NoGift[2319]["MapInfo"][1]["PosY"] = 235


-- scene_pigleft
MoveTrap_Info_NoGift[2320] = {}
MoveTrap_Info_NoGift[2320]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
MoveTrap_Info_NoGift[2320]["TrapType"] = 2320
MoveTrap_Info_NoGift[2320]["Look"] = 2320

MoveTrap_Info_NoGift[2320]["MapInfo"] = {}
MoveTrap_Info_NoGift[2320]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[2320]["MapInfo"][2]["MapId"] = 10364
MoveTrap_Info_NoGift[2320]["MapInfo"][2]["PosX"] = 305
MoveTrap_Info_NoGift[2320]["MapInfo"][2]["PosY"] = 197
MoveTrap_Info_NoGift[2320]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[2320]["MapInfo"][3]["MapId"] = 10364
MoveTrap_Info_NoGift[2320]["MapInfo"][3]["PosX"] = 295
MoveTrap_Info_NoGift[2320]["MapInfo"][3]["PosY"] = 197
-- scene_pigballoon		
MoveTrap_Info_NoGift[2321] = {}
MoveTrap_Info_NoGift[2321]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
MoveTrap_Info_NoGift[2321]["TrapType"] = 2321
MoveTrap_Info_NoGift[2321]["Look"] = 2321

MoveTrap_Info_NoGift[2321]["MapInfo"] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][3]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][3]["PosX"] = 293
MoveTrap_Info_NoGift[2321]["MapInfo"][3]["PosY"] = 299
MoveTrap_Info_NoGift[2321]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][4]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][4]["PosX"] = 336
MoveTrap_Info_NoGift[2321]["MapInfo"][4]["PosY"] = 258
MoveTrap_Info_NoGift[2321]["MapInfo"][5] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][5]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][5]["PosX"] = 345
MoveTrap_Info_NoGift[2321]["MapInfo"][5]["PosY"] = 257
MoveTrap_Info_NoGift[2321]["MapInfo"][6] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][6]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][6]["PosX"] = 345
MoveTrap_Info_NoGift[2321]["MapInfo"][6]["PosY"] = 269
MoveTrap_Info_NoGift[2321]["MapInfo"][7] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][7]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][7]["PosX"] = 245
MoveTrap_Info_NoGift[2321]["MapInfo"][7]["PosY"] = 274
MoveTrap_Info_NoGift[2321]["MapInfo"][8] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][8]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][8]["PosX"] = 344
MoveTrap_Info_NoGift[2321]["MapInfo"][8]["PosY"] = 244
MoveTrap_Info_NoGift[2321]["MapInfo"][9] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][9]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][9]["PosX"] = 332
MoveTrap_Info_NoGift[2321]["MapInfo"][9]["PosY"] = 244
MoveTrap_Info_NoGift[2321]["MapInfo"][10] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][10]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][10]["PosX"] = 324
MoveTrap_Info_NoGift[2321]["MapInfo"][10]["PosY"] = 244
MoveTrap_Info_NoGift[2321]["MapInfo"][11] = {}
MoveTrap_Info_NoGift[2321]["MapInfo"][11]["MapId"] = 10364
MoveTrap_Info_NoGift[2321]["MapInfo"][11]["PosX"] = 313
MoveTrap_Info_NoGift[2321]["MapInfo"][11]["PosY"] = 244


------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
	MoveTrap_Info_NoGift[146] = {}
	MoveTrap_Info_NoGift[146]["ActivetyTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	MoveTrap_Info_NoGift[146]["TrapType"] = 146
	MoveTrap_Info_NoGift[146]["Look"] = 2077
	MoveTrap_Info_NoGift[146]["MapInfo"] = {}
	MoveTrap_Info_NoGift[146]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[146]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[146]["MapInfo"][1]["PosX"] = 188 
	MoveTrap_Info_NoGift[146]["MapInfo"][1]["PosY"] = 157
	MoveTrap_Info_NoGift[146]["MapInfo"][1]["PosCX"] = 2
	MoveTrap_Info_NoGift[146]["MapInfo"][1]["PosCY"] = 2
	MoveTrap_Info_NoGift[148] = {}
	MoveTrap_Info_NoGift[148]["ActivetyTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	MoveTrap_Info_NoGift[148]["TrapType"] = 148
	MoveTrap_Info_NoGift[148]["Look"] = 1804
	MoveTrap_Info_NoGift[148]["MapInfo"] = {}
	MoveTrap_Info_NoGift[148]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[148]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[148]["MapInfo"][1]["PosX"] = 188 
	MoveTrap_Info_NoGift[148]["MapInfo"][1]["PosY"] = 157
	MoveTrap_Info_NoGift[148]["MapInfo"][1]["PosCX"] = 2
	MoveTrap_Info_NoGift[148]["MapInfo"][1]["PosCY"] = 2
	-- MoveTrap_Info_NoGift[149] = {}
	-- MoveTrap_Info_NoGift[149]["ActivetyTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	-- MoveTrap_Info_NoGift[149]["TrapType"] = 149
	-- MoveTrap_Info_NoGift[149]["Look"] = 1836
	-- MoveTrap_Info_NoGift[149]["MapInfo"] = {}
	-- MoveTrap_Info_NoGift[149]["MapInfo"][1] = {}
	-- MoveTrap_Info_NoGift[149]["MapInfo"][1]["MapId"] = 1036
	-- MoveTrap_Info_NoGift[149]["MapInfo"][1]["PosX"] = 187
	-- MoveTrap_Info_NoGift[149]["MapInfo"][1]["PosY"] = 166
-- aura_leaves01
-- MoveTrap_Info[2322] = {}
-- MoveTrap_Info[2322]["ActivetyTime"] = tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]
-- MoveTrap_Info[2322]["TrapType"] = 2322
-- MoveTrap_Info[2322]["Look"] = 2322

-- MoveTrap_Info[2322]["MapInfo"] = {}

-- local MoveTrap_SLCPotion ={{318,347},{315,325},{314,308},{329,303},{345,311},{333,318},{356,301},{356,282},{367,268},{327,252},{356,233},{356,220},{328,221},{323,232},{300,231},{282,227},{286,252},{286,271},{288,291},{301,292},{303,273},{315,253},{321,272},{327,291},{338,288},{341,259},{353,253},{269,299},{257,298},{263,274},{265,252},{242,253},{223,250},{229,227},{246,226},{268,223},{259,243}}

-- for i,v in pairs (MoveTrap_SLCPotion) do
	-- MoveTrap_Info[2322]["MapInfo"][i] = {}
	-- MoveTrap_Info[2322]["MapInfo"][i]["MapId"] = 10364
	-- MoveTrap_Info[2322]["MapInfo"][i]["PosX"] = v[1]
	-- MoveTrap_Info[2322]["MapInfo"][i]["PosY"] = v[2]
-- end 

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]增加神兵灵魄的促销
--Creator:		翁清海
--Created:		2019/07/03
------------------------------------------------------------------------------------
MoveTrap_Info[2454] = {}
MoveTrap_Info[2454]["ActivetyTime"] = tActivityTime["LegendaryEssence"]["ActivityTime"]
MoveTrap_Info[2454]["TrapType"] = 2454
MoveTrap_Info[2454]["Look"] = 1894
MoveTrap_Info[2454]["MapInfo"] = {}
MoveTrap_Info[2454]["MapInfo"][1] = {}
MoveTrap_Info[2454]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2454]["MapInfo"][1]["PosX"] = 351
MoveTrap_Info[2454]["MapInfo"][1]["PosY"] = 447

MoveTrap_Info_NoGift[2454] = {}
MoveTrap_Info_NoGift[2454]["ActivetyTime"] = tActivityTime["LegendaryEssence"]["ActivityTime"]
MoveTrap_Info_NoGift[2454]["TrapType"] = 2454
MoveTrap_Info_NoGift[2454]["Look"] = 1894
MoveTrap_Info_NoGift[2454]["MapInfo"] = {}
MoveTrap_Info_NoGift[2454]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2454]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2454]["MapInfo"][1]["PosX"] = 277
MoveTrap_Info_NoGift[2454]["MapInfo"][1]["PosY"] = 240

------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
-- 纪存熙
MoveTrap_Info_NoGift[2058] = {}
MoveTrap_Info_NoGift[2058]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info_NoGift[2058]["TrapType"] = 2058
MoveTrap_Info_NoGift[2058]["Look"] = 1894
MoveTrap_Info_NoGift[2058]["MapInfo"] = {}
MoveTrap_Info_NoGift[2058]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2058]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2058]["MapInfo"][1]["PosX"] = 230
MoveTrap_Info_NoGift[2058]["MapInfo"][1]["PosY"] = 255
-- 真爱礼品师
MoveTrap_Info_NoGift[2055] = {}
MoveTrap_Info_NoGift[2055]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info_NoGift[2055]["TrapType"] = 2055
MoveTrap_Info_NoGift[2055]["Look"] = 1894
MoveTrap_Info_NoGift[2055]["MapInfo"] = {}
MoveTrap_Info_NoGift[2055]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2055]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2055]["MapInfo"][1]["PosX"] = 236
MoveTrap_Info_NoGift[2055]["MapInfo"][1]["PosY"] = 255
-- 追爱僚机
MoveTrap_Info_NoGift[2056] = {}
MoveTrap_Info_NoGift[2056]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info_NoGift[2056]["TrapType"] = 2056
MoveTrap_Info_NoGift[2056]["Look"] = 1894
MoveTrap_Info_NoGift[2056]["MapInfo"] = {}
MoveTrap_Info_NoGift[2056]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2056]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2056]["MapInfo"][1]["PosX"] = 236
MoveTrap_Info_NoGift[2056]["MapInfo"][1]["PosY"] = 259
-- 爱神维纳斯
MoveTrap_Info_NoGift[2057] = {}
MoveTrap_Info_NoGift[2057]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info_NoGift[2057]["TrapType"] = 2057
MoveTrap_Info_NoGift[2057]["Look"] = 1894
MoveTrap_Info_NoGift[2057]["MapInfo"] = {}
MoveTrap_Info_NoGift[2057]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2057]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2057]["MapInfo"][1]["PosX"] = 236
MoveTrap_Info_NoGift[2057]["MapInfo"][1]["PosY"] = 251
-- 地效
MoveTrap_Info_NoGift[2054] = {}
MoveTrap_Info_NoGift[2054]["ActivetyTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
MoveTrap_Info_NoGift[2054]["TrapType"] = 2054
MoveTrap_Info_NoGift[2054]["Look"] = 2054
MoveTrap_Info_NoGift[2054]["MapInfo"] = {}
MoveTrap_Info_NoGift[2054]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2054]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2054]["MapInfo"][1]["PosX"] = 230
MoveTrap_Info_NoGift[2054]["MapInfo"][1]["PosY"] = 257

------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
-- 时尚大师纪凡希
MoveTrap_Info[2056] = {}
MoveTrap_Info[2056]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info[2056]["TrapType"] = 2056
MoveTrap_Info[2056]["Look"] = 1894
MoveTrap_Info[2056]["MapInfo"] = {}
MoveTrap_Info[2056]["MapInfo"][1] = {}
MoveTrap_Info[2056]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2056]["MapInfo"][1]["PosX"] = 325
MoveTrap_Info[2056]["MapInfo"][1]["PosY"] = 391
-- 奥黛丽赫本
MoveTrap_Info[2088] = {}
MoveTrap_Info[2088]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info[2088]["TrapType"] = 2088
MoveTrap_Info[2088]["Look"] = 1894
MoveTrap_Info[2088]["MapInfo"] = {}
MoveTrap_Info[2088]["MapInfo"][1] = {}
MoveTrap_Info[2088]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2088]["MapInfo"][1]["PosX"] = 319
MoveTrap_Info[2088]["MapInfo"][1]["PosY"] = 391
-- 圣罗兰
MoveTrap_Info[2057] = {}
MoveTrap_Info[2057]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info[2057]["TrapType"] = 2057
MoveTrap_Info[2057]["Look"] = 1894
MoveTrap_Info[2057]["MapInfo"] = {}
MoveTrap_Info[2057]["MapInfo"][1] = {}
MoveTrap_Info[2057]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2057]["MapInfo"][1]["PosX"] = 331
MoveTrap_Info[2057]["MapInfo"][1]["PosY"] = 391
-- 地效
MoveTrap_Info[2291] = {}
MoveTrap_Info[2291]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info[2291]["TrapType"] = 2291
MoveTrap_Info[2291]["Look"] = 2291
MoveTrap_Info[2291]["MapInfo"] = {}
MoveTrap_Info[2291]["MapInfo"][1] = {}
MoveTrap_Info[2291]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2291]["MapInfo"][1]["PosX"] = 322
MoveTrap_Info[2291]["MapInfo"][1]["PosY"] = 394
------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
-- 时尚大师纪凡希
MoveTrap_Info_NoGift[2056] = {}
MoveTrap_Info_NoGift[2056]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info_NoGift[2056]["TrapType"] = 2056
MoveTrap_Info_NoGift[2056]["Look"] = 1894
MoveTrap_Info_NoGift[2056]["MapInfo"] = {}
MoveTrap_Info_NoGift[2056]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2056]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2056]["MapInfo"][1]["PosX"] = 268
MoveTrap_Info_NoGift[2056]["MapInfo"][1]["PosY"] = 236
-- 奥黛丽赫本
MoveTrap_Info_NoGift[2088] = {}
MoveTrap_Info_NoGift[2088]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info_NoGift[2088]["TrapType"] = 2088
MoveTrap_Info_NoGift[2088]["Look"] = 1894
MoveTrap_Info_NoGift[2088]["MapInfo"] = {}
MoveTrap_Info_NoGift[2088]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2088]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2088]["MapInfo"][1]["PosX"] = 273
MoveTrap_Info_NoGift[2088]["MapInfo"][1]["PosY"] = 236
-- 圣罗兰
MoveTrap_Info_NoGift[2057] = {}
MoveTrap_Info_NoGift[2057]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info_NoGift[2057]["TrapType"] = 2057
MoveTrap_Info_NoGift[2057]["Look"] = 1894
MoveTrap_Info_NoGift[2057]["MapInfo"] = {}
MoveTrap_Info_NoGift[2057]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2057]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2057]["MapInfo"][1]["PosX"] = 278
MoveTrap_Info_NoGift[2057]["MapInfo"][1]["PosY"] = 236
-- 地效
MoveTrap_Info_NoGift[2291] = {}
MoveTrap_Info_NoGift[2291]["ActivetyTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
MoveTrap_Info_NoGift[2291]["TrapType"] = 2291
MoveTrap_Info_NoGift[2291]["Look"] = 2291
MoveTrap_Info_NoGift[2291]["MapInfo"] = {}
MoveTrap_Info_NoGift[2291]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2291]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2291]["MapInfo"][1]["PosX"] = 267
MoveTrap_Info_NoGift[2291]["MapInfo"][1]["PosY"] = 229

------------------------------------------------------------------------------------
--Name：      190725[英文征服][活动脚本]赛季服-王者服（8.06-9.12）
--Creator:    吴燕柚
--Created:    190725
------------------------------------------------------------------------------------

MoveTrap_Info[173] = {}
MoveTrap_Info[173]["ActivetyTime"] = tActivityTime["KingServer"]["ActTime"]
MoveTrap_Info[173]["TrapType"] = 173
MoveTrap_Info[173]["Look"] = 24
MoveTrap_Info[173]["MapInfo"] = {}
MoveTrap_Info[173]["MapInfo"][1] = {}
MoveTrap_Info[173]["MapInfo"][1]["MapId"] = 10588
MoveTrap_Info[173]["MapInfo"][1]["PosX"] = 435
MoveTrap_Info[173]["MapInfo"][1]["PosY"] = 587

MoveTrap_Info_NoGift[173] = {}
MoveTrap_Info_NoGift[173]["ActivetyTime"] = tActivityTime["KingServer"]["ActTime"]
MoveTrap_Info_NoGift[173]["TrapType"] = 173
MoveTrap_Info_NoGift[173]["Look"] = 24
MoveTrap_Info_NoGift[173]["MapInfo"] = {}
MoveTrap_Info_NoGift[173]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[173]["MapInfo"][1]["MapId"] = 10588
MoveTrap_Info_NoGift[173]["MapInfo"][1]["PosX"] = 435
MoveTrap_Info_NoGift[173]["MapInfo"][1]["PosY"] = 587

------------------------------------------------------------------------------------
--Name：            180802[简体征服][活动脚本]八月促销活动制作
--Creator:      林旭
--Created:     2018/08/08
------------------------------------------------------------------------------------
--星陨石宝库
MoveTrap_Info[2077] = {}
MoveTrap_Info[2077]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2077]["TrapType"] = 2077
MoveTrap_Info[2077]["Look"] = 2077
MoveTrap_Info[2077]["MapInfo"] = {}
MoveTrap_Info[2077]["MapInfo"][1] = {}
MoveTrap_Info[2077]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2077]["MapInfo"][1]["PosX"] = 367
MoveTrap_Info[2077]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2077]["GlobalId"] = 53017
-- 气力值宝库
MoveTrap_Info[2078] = {}
MoveTrap_Info[2078]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2078]["TrapType"] = 2078
MoveTrap_Info[2078]["Look"] = 2077
MoveTrap_Info[2078]["MapInfo"] = {}
MoveTrap_Info[2078]["MapInfo"][1] = {}
MoveTrap_Info[2078]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2078]["MapInfo"][1]["PosX"] = 372
MoveTrap_Info[2078]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2078]["GlobalId"] = 53017
--赤炼石宝库
MoveTrap_Info[2079] = {}
MoveTrap_Info[2079]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2079]["TrapType"] = 2079
MoveTrap_Info[2079]["Look"] = 2079
MoveTrap_Info[2079]["MapInfo"] = {}
MoveTrap_Info[2079]["MapInfo"][1] = {}
MoveTrap_Info[2079]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2079]["MapInfo"][1]["PosX"] = 380
MoveTrap_Info[2079]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2079]["GlobalId"] = 53017
-- 珍品宝库
MoveTrap_Info[2080] = {}
MoveTrap_Info[2080]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2080]["TrapType"] = 2080
MoveTrap_Info[2080]["Look"] = 2079
MoveTrap_Info[2080]["MapInfo"] = {}
MoveTrap_Info[2080]["MapInfo"][1] = {}
MoveTrap_Info[2080]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2080]["MapInfo"][1]["PosX"] = 385
MoveTrap_Info[2080]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2080]["GlobalId"] = 53017
-- 星陨石文字
MoveTrap_Info[2081] = {}
MoveTrap_Info[2081]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2081]["TrapType"] = 2081
MoveTrap_Info[2081]["Look"] = 2081
MoveTrap_Info[2081]["MapInfo"] = {}
MoveTrap_Info[2081]["MapInfo"][1] = {}
MoveTrap_Info[2081]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2081]["MapInfo"][1]["PosX"] = 367
MoveTrap_Info[2081]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2081]["GlobalId"] = 53017
-- 气力值文字
MoveTrap_Info[2082] = {}
MoveTrap_Info[2082]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2082]["TrapType"] = 2082
MoveTrap_Info[2082]["Look"] = 2082
MoveTrap_Info[2082]["MapInfo"] = {}
MoveTrap_Info[2082]["MapInfo"][1] = {}
MoveTrap_Info[2082]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2082]["MapInfo"][1]["PosX"] = 372
MoveTrap_Info[2082]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2082]["GlobalId"] = 53017
--赤炼石文字
MoveTrap_Info[2083] = {}
MoveTrap_Info[2083]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2083]["TrapType"] = 2083
MoveTrap_Info[2083]["Look"] = 2083
MoveTrap_Info[2083]["MapInfo"] = {}
MoveTrap_Info[2083]["MapInfo"][1] = {}
MoveTrap_Info[2083]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2083]["MapInfo"][1]["PosX"] = 380
MoveTrap_Info[2083]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2083]["GlobalId"] = 53017
-- 珍品文字
MoveTrap_Info[2084] = {}
MoveTrap_Info[2084]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2084]["TrapType"] = 2084
MoveTrap_Info[2084]["Look"] = 2084
MoveTrap_Info[2084]["MapInfo"] = {}
MoveTrap_Info[2084]["MapInfo"][1] = {}
MoveTrap_Info[2084]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2084]["MapInfo"][1]["PosX"] = 385
MoveTrap_Info[2084]["MapInfo"][1]["PosY"] = 452
-- MoveTrap_Info[2084]["GlobalId"] = 53017
-- 宝库文字
MoveTrap_Info[2085] = {}
MoveTrap_Info[2085]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info[2085]["TrapType"] = 2085
MoveTrap_Info[2085]["Look"] = 2085
MoveTrap_Info[2085]["MapInfo"] = {}
MoveTrap_Info[2085]["MapInfo"][1] = {}
MoveTrap_Info[2085]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2085]["MapInfo"][1]["PosX"] = 367
MoveTrap_Info[2085]["MapInfo"][1]["PosY"] = 452
MoveTrap_Info[2085]["MapInfo"][2] = {}
MoveTrap_Info[2085]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[2085]["MapInfo"][2]["PosX"] = 372
MoveTrap_Info[2085]["MapInfo"][2]["PosY"] = 452
MoveTrap_Info[2085]["MapInfo"][3] = {}
MoveTrap_Info[2085]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[2085]["MapInfo"][3]["PosX"] = 380
MoveTrap_Info[2085]["MapInfo"][3]["PosY"] = 452
MoveTrap_Info[2085]["MapInfo"][4] = {}
MoveTrap_Info[2085]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[2085]["MapInfo"][4]["PosX"] = 385
MoveTrap_Info[2085]["MapInfo"][4]["PosY"] = 452
-- MoveTrap_Info[2085]["GlobalId"] = 53017
-- 主地效
-- MoveTrap_Info[2086] = {}
-- MoveTrap_Info[2086]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
-- MoveTrap_Info[2086]["TrapType"] = 2086
-- MoveTrap_Info[2086]["Look"] = 2086
-- MoveTrap_Info[2086]["MapInfo"] = {}
-- MoveTrap_Info[2086]["MapInfo"][1] = {}
-- MoveTrap_Info[2086]["MapInfo"][1]["MapId"] = 1002
-- MoveTrap_Info[2086]["MapInfo"][1]["PosX"] = 376
-- MoveTrap_Info[2086]["MapInfo"][1]["PosY"] = 445
-- MoveTrap_Info[2086]["GlobalId"] = 53017
------------------------------------------------------------------------------------
--Name：            180802[简体征服][活动脚本]八月促销活动制作
--Creator:      林旭
--Created:     2018/08/08
------------------------------------------------------------------------------------
--星陨石宝库
MoveTrap_Info_NoGift[2077] = {}
MoveTrap_Info_NoGift[2077]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2077]["TrapType"] = 2077
MoveTrap_Info_NoGift[2077]["Look"] = 2077
MoveTrap_Info_NoGift[2077]["MapInfo"] = {}
MoveTrap_Info_NoGift[2077]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2077]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2077]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2077]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2077]["GlobalId"] = 53017
-- 气力值宝库
MoveTrap_Info_NoGift[2078] = {}
MoveTrap_Info_NoGift[2078]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2078]["TrapType"] = 2078
MoveTrap_Info_NoGift[2078]["Look"] = 2077
MoveTrap_Info_NoGift[2078]["MapInfo"] = {}
MoveTrap_Info_NoGift[2078]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2078]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2078]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2078]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2078]["GlobalId"] = 53017
--赤炼石宝库
MoveTrap_Info_NoGift[2079] = {}
MoveTrap_Info_NoGift[2079]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2079]["TrapType"] = 2079
MoveTrap_Info_NoGift[2079]["Look"] = 2079
MoveTrap_Info_NoGift[2079]["MapInfo"] = {}
MoveTrap_Info_NoGift[2079]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2079]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2079]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2079]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2079]["GlobalId"] = 53017
-- 珍品宝库
MoveTrap_Info_NoGift[2080] = {}
MoveTrap_Info_NoGift[2080]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2080]["TrapType"] = 2080
MoveTrap_Info_NoGift[2080]["Look"] = 2079
MoveTrap_Info_NoGift[2080]["MapInfo"] = {}
MoveTrap_Info_NoGift[2080]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2080]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2080]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2080]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2080]["GlobalId"] = 53017
-- 星陨石文字
MoveTrap_Info_NoGift[2081] = {}
MoveTrap_Info_NoGift[2081]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2081]["TrapType"] = 2081
MoveTrap_Info_NoGift[2081]["Look"] = 2081
MoveTrap_Info_NoGift[2081]["MapInfo"] = {}
MoveTrap_Info_NoGift[2081]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2081]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2081]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2081]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2081]["GlobalId"] = 53017
-- 气力值文字
MoveTrap_Info_NoGift[2082] = {}
MoveTrap_Info_NoGift[2082]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2082]["TrapType"] = 2082
MoveTrap_Info_NoGift[2082]["Look"] = 2082
MoveTrap_Info_NoGift[2082]["MapInfo"] = {}
MoveTrap_Info_NoGift[2082]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2082]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2082]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2082]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2082]["GlobalId"] = 53017
--赤炼石文字
MoveTrap_Info_NoGift[2083] = {}
MoveTrap_Info_NoGift[2083]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2083]["TrapType"] = 2083
MoveTrap_Info_NoGift[2083]["Look"] = 2083
MoveTrap_Info_NoGift[2083]["MapInfo"] = {}
MoveTrap_Info_NoGift[2083]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2083]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2083]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2083]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2083]["GlobalId"] = 53017
-- 珍品文字
MoveTrap_Info_NoGift[2084] = {}
MoveTrap_Info_NoGift[2084]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2084]["TrapType"] = 2084
MoveTrap_Info_NoGift[2084]["Look"] = 2084
MoveTrap_Info_NoGift[2084]["MapInfo"] = {}
MoveTrap_Info_NoGift[2084]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2084]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2084]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2084]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2084]["GlobalId"] = 53017
-- 宝库文字
MoveTrap_Info_NoGift[2085] = {}
MoveTrap_Info_NoGift[2085]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2085]["TrapType"] = 2085
MoveTrap_Info_NoGift[2085]["Look"] = 2085
MoveTrap_Info_NoGift[2085]["MapInfo"] = {}
MoveTrap_Info_NoGift[2085]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2085]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[2085]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[2085]["MapInfo"][2]["MapId"] = 5000
MoveTrap_Info_NoGift[2085]["MapInfo"][2]["PosX"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][2]["PosY"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[2085]["MapInfo"][3]["MapId"] = 5000
MoveTrap_Info_NoGift[2085]["MapInfo"][3]["PosX"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][3]["PosY"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[2085]["MapInfo"][4]["MapId"] = 5000
MoveTrap_Info_NoGift[2085]["MapInfo"][4]["PosX"] = 100
MoveTrap_Info_NoGift[2085]["MapInfo"][4]["PosY"] = 100
-- MoveTrap_Info_NoGift[2085]["GlobalId"] = 53017
-- 主地效
MoveTrap_Info_NoGift[2086] = {}
MoveTrap_Info_NoGift[2086]["ActivetyTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
MoveTrap_Info_NoGift[2086]["TrapType"] = 2086
MoveTrap_Info_NoGift[2086]["Look"] = 2086
MoveTrap_Info_NoGift[2086]["MapInfo"] = {}
MoveTrap_Info_NoGift[2086]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2086]["MapInfo"][1]["MapId"] =  5000
MoveTrap_Info_NoGift[2086]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[2086]["MapInfo"][1]["PosY"] = 100
-- MoveTrap_Info_NoGift[2086]["GlobalId"] = 53017

------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------
MoveTrap_Info_NoGift[1879] = {}
MoveTrap_Info_NoGift[1879]["ActivetyTime"] = tActivityTime["RiotOfNether"]["Activity"]
MoveTrap_Info_NoGift[1879]["TrapType"] = 1879
MoveTrap_Info_NoGift[1879]["Look"] = 1879
MoveTrap_Info_NoGift[1879]["MapInfo"] = {}
MoveTrap_Info_NoGift[1879]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1879]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1879]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1879]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1879]["GlobalId"] = 54689
MoveTrap_Info_NoGift[1879]["OldSever"] = 1

------------------------------------------------------------------------------------
--Name:			190815[简体征服][活动脚本]制作全球中秋博饼活动（9.10-9.23）
--Creator:		傅伟龙
--Created:		2017/07/05
------------------------------------------------------------------------------------
MoveTrap_Info[2468] = {}
MoveTrap_Info[2468]["ActivetyTime"] = tActivityTime["MidAutumnDay_BoBing"]["ActTime"]
MoveTrap_Info[2468]["TrapType"] = 2468
MoveTrap_Info[2468]["Look"] = 2468
MoveTrap_Info[2468]["MapInfo"] = {}
MoveTrap_Info[2468]["MapInfo"][1] = {}
MoveTrap_Info[2468]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2468]["MapInfo"][1]["PosX"] = 322
MoveTrap_Info[2468]["MapInfo"][1]["PosY"] = 445


MoveTrap_Info_NoGift[2468] = {}
MoveTrap_Info_NoGift[2468]["ActivetyTime"] = tActivityTime["MidAutumnDay_BoBing"]["ActTime"]
MoveTrap_Info_NoGift[2468]["TrapType"] = 2468
MoveTrap_Info_NoGift[2468]["Look"] = 2468
MoveTrap_Info_NoGift[2468]["MapInfo"] = {}
MoveTrap_Info_NoGift[2468]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2468]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2468]["MapInfo"][1]["PosX"] = 225
MoveTrap_Info_NoGift[2468]["MapInfo"][1]["PosY"] = 155

------------------------------------------------------------------------------------
--Name:		180831[简体征服][活动脚本]寻宝魔塔活动
--Purpose:	寻宝魔塔活动
--Creator: 	傅伟龙
--Created:	2018/08/31
------------------------------------------------------------------------------------
	MoveTrap_Info[2094] = {}
	MoveTrap_Info[2094]["ActivetyTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
	MoveTrap_Info[2094]["TrapType"] = 2094
	MoveTrap_Info[2094]["Look"] = 1712
	MoveTrap_Info[2094]["MapInfo"] = {}
	MoveTrap_Info[2094]["MapInfo"][1] = {}
	MoveTrap_Info[2094]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2094]["MapInfo"][1]["PosX"] = 377
	MoveTrap_Info[2094]["MapInfo"][1]["PosY"] = 445
	-- MoveTrap_Info[2094]["GlobalId"] = 53044
	-- MoveTrap_Info[2094]["GlobalData"] = 1
	-- MoveTrap_Info[2094]["GlobalPos"] = 0
	
		MoveTrap_Info_NoGift[2094] = {}
	MoveTrap_Info_NoGift[2094]["ActivetyTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
	MoveTrap_Info_NoGift[2094]["TrapType"] = 2094
	MoveTrap_Info_NoGift[2094]["Look"] = 1712
	MoveTrap_Info_NoGift[2094]["MapInfo"] = {}
	MoveTrap_Info_NoGift[2094]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[2094]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[2094]["MapInfo"][1]["PosX"] = 184
	MoveTrap_Info_NoGift[2094]["MapInfo"][1]["PosY"] = 189
	-- MoveTrap_Info_NoGift[2094]["GlobalId"] = 53044
	-- MoveTrap_Info_NoGift[2094]["GlobalData"] = 1
	-- MoveTrap_Info_NoGift[2094]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]新赌神活动制作
--Creator:		翁清海
--Created:		2018/04/28
------------------------------------------------------------------------------------
MoveTrap_Info_NoGift[1972] = {}
MoveTrap_Info_NoGift[1972]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1972]["TrapType"] = 1972
MoveTrap_Info_NoGift[1972]["Look"] = 1972
MoveTrap_Info_NoGift[1972]["MapInfo"] = {}
MoveTrap_Info_NoGift[1972]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1972]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1972]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1972]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1972]["MapInfo"][1]["PosCX"] = 2
MoveTrap_Info_NoGift[1972]["MapInfo"][1]["PosCY"] = 2
MoveTrap_Info_NoGift[1972]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1972]["GlobalData"] = 1
MoveTrap_Info_NoGift[1972]["GlobalPos"] = 0

MoveTrap_Info_NoGift[1973] = {}
MoveTrap_Info_NoGift[1973]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1973]["TrapType"] = 1973
MoveTrap_Info_NoGift[1973]["Look"] = 1973
MoveTrap_Info_NoGift[1973]["MapInfo"] = {}
MoveTrap_Info_NoGift[1973]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1973]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1973]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1973]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1973]["MapInfo"][1]["PosCX"] = 2
MoveTrap_Info_NoGift[1973]["MapInfo"][1]["PosCY"] = 2
MoveTrap_Info_NoGift[1973]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1973]["GlobalData"] = 1
MoveTrap_Info_NoGift[1973]["GlobalPos"] = 0
MoveTrap_Info_NoGift[1974] = {}
MoveTrap_Info_NoGift[1974]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1974]["TrapType"] = 1974
MoveTrap_Info_NoGift[1974]["Look"] = 1974
MoveTrap_Info_NoGift[1974]["MapInfo"] = {}
MoveTrap_Info_NoGift[1974]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1974]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1974]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1974]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1974]["MapInfo"][1]["PosCX"] = 2
MoveTrap_Info_NoGift[1974]["MapInfo"][1]["PosCY"] = 2
MoveTrap_Info_NoGift[1974]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1974]["GlobalData"] = 1
MoveTrap_Info_NoGift[1974]["GlobalPos"] = 0
MoveTrap_Info_NoGift[1983] = {}
MoveTrap_Info_NoGift[1983]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1983]["TrapType"] = 1983
MoveTrap_Info_NoGift[1983]["Look"] = 1983
MoveTrap_Info_NoGift[1983]["MapInfo"] = {}
MoveTrap_Info_NoGift[1983]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1983]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1983]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1983]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1983]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1983]["GlobalData"] = 1
MoveTrap_Info_NoGift[1983]["GlobalPos"] = 0
MoveTrap_Info_NoGift[1984] = {}
MoveTrap_Info_NoGift[1984]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1984]["TrapType"] = 1984
MoveTrap_Info_NoGift[1984]["Look"] = 1984
MoveTrap_Info_NoGift[1984]["MapInfo"] = {}
MoveTrap_Info_NoGift[1984]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1984]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1984]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1984]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1984]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1984]["GlobalData"] = 1
MoveTrap_Info_NoGift[1984]["GlobalPos"] = 0
MoveTrap_Info_NoGift[1985] = {}
MoveTrap_Info_NoGift[1985]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1985]["TrapType"] = 1985
MoveTrap_Info_NoGift[1985]["Look"] = 1985
MoveTrap_Info_NoGift[1985]["MapInfo"] = {}
MoveTrap_Info_NoGift[1985]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1985]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1985]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1985]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1985]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1985]["GlobalData"] = 1
MoveTrap_Info_NoGift[1985]["GlobalPos"] = 0
MoveTrap_Info_NoGift[1986] = {}
MoveTrap_Info_NoGift[1986]["NewActivetyTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
MoveTrap_Info_NoGift[1986]["TrapType"] = 1986
MoveTrap_Info_NoGift[1986]["Look"] = 1986
MoveTrap_Info_NoGift[1986]["MapInfo"] = {}
MoveTrap_Info_NoGift[1986]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[1986]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[1986]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[1986]["MapInfo"][1]["PosY"] = 100
MoveTrap_Info_NoGift[1986]["GlobalId"] = 52914
MoveTrap_Info_NoGift[1986]["GlobalData"] = 1
MoveTrap_Info_NoGift[1986]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：            190918[简体征服][活动脚本]全球万圣节活动-月光光心慌慌
--Creator:      冯子鑫
--Created:     2019/09/18
------------------------------------------------------------------------------------
MoveTrap_Info[2467] = {}
MoveTrap_Info[2467]["ActivetyTime"] = tActivityTime["GlobalHalloween"]["ActivityTime"]
MoveTrap_Info[2467]["TrapType"] = 2467
MoveTrap_Info[2467]["Look"] = 2467
MoveTrap_Info[2467]["MapInfo"] = {}
MoveTrap_Info[2467]["MapInfo"][1] = {}
MoveTrap_Info[2467]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2467]["MapInfo"][1]["PosX"] = 352
MoveTrap_Info[2467]["MapInfo"][1]["PosY"] = 491
MoveTrap_Info_NoGift[2467] = {}
MoveTrap_Info_NoGift[2467]["ActivetyTime"] = tActivityTime["GlobalHalloween"]["ActivityTime"]
MoveTrap_Info_NoGift[2467]["TrapType"] = 2467
MoveTrap_Info_NoGift[2467]["Look"] = 2467
MoveTrap_Info_NoGift[2467]["MapInfo"] = {}
MoveTrap_Info_NoGift[2467]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2467]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2467]["MapInfo"][1]["PosX"] = 192
MoveTrap_Info_NoGift[2467]["MapInfo"][1]["PosY"] = 160

------------------------------------------------------------------------------------
--Name：            190926[简体征服][活动脚本]全球万圣节活动-万圣男爵
--Creator:      郑洵
--Created:     2019/09/10
------------------------------------------------------------------------------------
MoveTrap_Info[185] = {}
MoveTrap_Info[185]["ActivetyTime"] = tActivityTime["HalloweenCarnivalBaron"]["FenWeiTime"]
MoveTrap_Info[185]["TrapType"] = 185
MoveTrap_Info[185]["Look"] = 185
MoveTrap_Info[185]["MapInfo"] = {}
MoveTrap_Info[185]["MapInfo"][1] = {}
MoveTrap_Info[185]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[185]["MapInfo"][1]["PosX"] = 347
MoveTrap_Info[185]["MapInfo"][1]["PosY"] = 494

MoveTrap_Info_NoGift[185] = {}
MoveTrap_Info_NoGift[185]["ActivetyTime"] = tActivityTime["HalloweenCarnivalBaron"]["FenWeiTime"]
MoveTrap_Info_NoGift[185]["TrapType"] = 185
MoveTrap_Info_NoGift[185]["Look"] = 185
MoveTrap_Info_NoGift[185]["MapInfo"] = {}
MoveTrap_Info_NoGift[185]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[185]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[185]["MapInfo"][1]["PosX"] = 188
MoveTrap_Info_NoGift[185]["MapInfo"][1]["PosY"] = 166


MoveTrap_Info[184] = {}
MoveTrap_Info[184]["ActivetyTime"] = tActivityTime["HalloweenCarnivalBaron"]["FenWeiTime"]
MoveTrap_Info[184]["TrapType"] = 184
MoveTrap_Info[184]["Look"] = 184
MoveTrap_Info[184]["MapInfo"] = {}
MoveTrap_Info[184]["MapInfo"][1] = {}
MoveTrap_Info[184]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][1]["PosX"] = 233
MoveTrap_Info[184]["MapInfo"][1]["PosY"] = 483
MoveTrap_Info[184]["MapInfo"][2] = {}
MoveTrap_Info[184]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][2]["PosX"] = 251
MoveTrap_Info[184]["MapInfo"][2]["PosY"] = 477
MoveTrap_Info[184]["MapInfo"][3] = {}
MoveTrap_Info[184]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][3]["PosX"] = 250
MoveTrap_Info[184]["MapInfo"][3]["PosY"] = 456
MoveTrap_Info[184]["MapInfo"][4] = {}
MoveTrap_Info[184]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][4]["PosX"] = 271
MoveTrap_Info[184]["MapInfo"][4]["PosY"] = 475
MoveTrap_Info[184]["MapInfo"][5] = {}
MoveTrap_Info[184]["MapInfo"][5]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][5]["PosX"] = 286
MoveTrap_Info[184]["MapInfo"][5]["PosY"] = 475
MoveTrap_Info[184]["MapInfo"][6] = {}
MoveTrap_Info[184]["MapInfo"][6]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][6]["PosX"] = 304
MoveTrap_Info[184]["MapInfo"][6]["PosY"] = 478
MoveTrap_Info[184]["MapInfo"][7] = {}
MoveTrap_Info[184]["MapInfo"][7]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][7]["PosX"] = 306
MoveTrap_Info[184]["MapInfo"][7]["PosY"] = 500
MoveTrap_Info[184]["MapInfo"][8] = {}
MoveTrap_Info[184]["MapInfo"][8]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][8]["PosX"] = 330
MoveTrap_Info[184]["MapInfo"][8]["PosY"] = 497
MoveTrap_Info[184]["MapInfo"][9] = {}
MoveTrap_Info[184]["MapInfo"][9]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][9]["PosX"] = 350
MoveTrap_Info[184]["MapInfo"][9]["PosY"] = 497
MoveTrap_Info[184]["MapInfo"][10] = {}
MoveTrap_Info[184]["MapInfo"][10]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][10]["PosX"] = 369
MoveTrap_Info[184]["MapInfo"][10]["PosY"] = 496
MoveTrap_Info[184]["MapInfo"][11] = {}
MoveTrap_Info[184]["MapInfo"][11]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][11]["PosX"] = 388
MoveTrap_Info[184]["MapInfo"][11]["PosY"] = 496
MoveTrap_Info[184]["MapInfo"][12] = {}
MoveTrap_Info[184]["MapInfo"][12]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][12]["PosX"] = 389
MoveTrap_Info[184]["MapInfo"][12]["PosY"] = 478
MoveTrap_Info[184]["MapInfo"][13] = {}
MoveTrap_Info[184]["MapInfo"][13]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][13]["PosX"] = 390
MoveTrap_Info[184]["MapInfo"][13]["PosY"] = 455
MoveTrap_Info[184]["MapInfo"][14] = {}
MoveTrap_Info[184]["MapInfo"][14]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][14]["PosX"] = 392
MoveTrap_Info[184]["MapInfo"][14]["PosY"] = 429
MoveTrap_Info[184]["MapInfo"][15] = {}
MoveTrap_Info[184]["MapInfo"][15]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][15]["PosX"] = 391
MoveTrap_Info[184]["MapInfo"][15]["PosY"] = 404
MoveTrap_Info[184]["MapInfo"][16] = {}
MoveTrap_Info[184]["MapInfo"][16]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][16]["PosX"] = 365
MoveTrap_Info[184]["MapInfo"][16]["PosY"] = 412
MoveTrap_Info[184]["MapInfo"][17] = {}
MoveTrap_Info[184]["MapInfo"][17]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][17]["PosX"] = 370
MoveTrap_Info[184]["MapInfo"][17]["PosY"] = 388
MoveTrap_Info[184]["MapInfo"][18] = {}
MoveTrap_Info[184]["MapInfo"][18]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][18]["PosX"] = 348
MoveTrap_Info[184]["MapInfo"][18]["PosY"] = 384
MoveTrap_Info[184]["MapInfo"][19] = {}
MoveTrap_Info[184]["MapInfo"][19]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][19]["PosX"] = 323
MoveTrap_Info[184]["MapInfo"][19]["PosY"] = 386
MoveTrap_Info[184]["MapInfo"][20] = {}
MoveTrap_Info[184]["MapInfo"][20]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][20]["PosX"] = 307
MoveTrap_Info[184]["MapInfo"][20]["PosY"] = 388
MoveTrap_Info[184]["MapInfo"][21] = {}
MoveTrap_Info[184]["MapInfo"][21]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][21]["PosX"] = 306
MoveTrap_Info[184]["MapInfo"][21]["PosY"] = 414
MoveTrap_Info[184]["MapInfo"][22] = {}
MoveTrap_Info[184]["MapInfo"][22]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][22]["PosX"] = 305
MoveTrap_Info[184]["MapInfo"][22]["PosY"] = 443
MoveTrap_Info[184]["MapInfo"][23] = {}
MoveTrap_Info[184]["MapInfo"][23]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][23]["PosX"] = 305
MoveTrap_Info[184]["MapInfo"][23]["PosY"] = 463
MoveTrap_Info[184]["MapInfo"][24] = {}
MoveTrap_Info[184]["MapInfo"][24]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][24]["PosX"] = 344
MoveTrap_Info[184]["MapInfo"][24]["PosY"] = 408
MoveTrap_Info[184]["MapInfo"][25] = {}
MoveTrap_Info[184]["MapInfo"][25]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][25]["PosX"] = 324
MoveTrap_Info[184]["MapInfo"][25]["PosY"] = 415
MoveTrap_Info[184]["MapInfo"][26] = {}
MoveTrap_Info[184]["MapInfo"][26]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][26]["PosX"] = 320
MoveTrap_Info[184]["MapInfo"][26]["PosY"] = 443
MoveTrap_Info[184]["MapInfo"][27] = {}
MoveTrap_Info[184]["MapInfo"][27]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][27]["PosX"] = 322
MoveTrap_Info[184]["MapInfo"][27]["PosY"] = 470
MoveTrap_Info[184]["MapInfo"][28] = {}
MoveTrap_Info[184]["MapInfo"][28]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][28]["PosX"] = 357
MoveTrap_Info[184]["MapInfo"][28]["PosY"] = 477
MoveTrap_Info[184]["MapInfo"][29] = {}
MoveTrap_Info[184]["MapInfo"][29]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][29]["PosX"] = 346
MoveTrap_Info[184]["MapInfo"][29]["PosY"] = 435
MoveTrap_Info[184]["MapInfo"][30] = {}
MoveTrap_Info[184]["MapInfo"][30]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][30]["PosX"] = 371
MoveTrap_Info[184]["MapInfo"][30]["PosY"] = 444
MoveTrap_Info[184]["MapInfo"][31] = {}
MoveTrap_Info[184]["MapInfo"][31]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][31]["PosX"] = 338
MoveTrap_Info[184]["MapInfo"][31]["PosY"] = 459
MoveTrap_Info[184]["MapInfo"][32] = {}
MoveTrap_Info[184]["MapInfo"][32]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][32]["PosX"] = 346
MoveTrap_Info[184]["MapInfo"][32]["PosY"] = 530
MoveTrap_Info[184]["MapInfo"][33] = {}
MoveTrap_Info[184]["MapInfo"][33]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][33]["PosX"] = 331
MoveTrap_Info[184]["MapInfo"][33]["PosY"] = 544
MoveTrap_Info[184]["MapInfo"][34] = {}
MoveTrap_Info[184]["MapInfo"][34]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][34]["PosX"] = 334
MoveTrap_Info[184]["MapInfo"][34]["PosY"] = 567
MoveTrap_Info[184]["MapInfo"][35] = {}
MoveTrap_Info[184]["MapInfo"][35]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][35]["PosX"] = 309
MoveTrap_Info[184]["MapInfo"][35]["PosY"] = 539
MoveTrap_Info[184]["MapInfo"][36] = {}
MoveTrap_Info[184]["MapInfo"][36]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][36]["PosX"] = 370
MoveTrap_Info[184]["MapInfo"][36]["PosY"] = 364
MoveTrap_Info[184]["MapInfo"][37] = {}
MoveTrap_Info[184]["MapInfo"][37]["MapId"] = 1002
MoveTrap_Info[184]["MapInfo"][37]["PosX"] = 307
MoveTrap_Info[184]["MapInfo"][37]["PosY"] = 369



MoveTrap_Info_NoGift[184] = {}
MoveTrap_Info_NoGift[184]["ActivetyTime"] = tActivityTime["HalloweenCarnivalBaron"]["FenWeiTime"]
MoveTrap_Info_NoGift[184]["TrapType"] = 184
MoveTrap_Info_NoGift[184]["Look"] = 184
MoveTrap_Info_NoGift[184]["MapInfo"] = {}
--双龙城
MoveTrap_Info_NoGift[184]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][1]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][1]["PosX"] = 344
MoveTrap_Info_NoGift[184]["MapInfo"][1]["PosY"] = 235
MoveTrap_Info_NoGift[184]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][2]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][2]["PosX"] = 326
MoveTrap_Info_NoGift[184]["MapInfo"][2]["PosY"] = 238
MoveTrap_Info_NoGift[184]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][3]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][3]["PosX"] = 305
MoveTrap_Info_NoGift[184]["MapInfo"][3]["PosY"] = 326
MoveTrap_Info_NoGift[184]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][4]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][4]["PosX"] = 336
MoveTrap_Info_NoGift[184]["MapInfo"][4]["PosY"] = 284
MoveTrap_Info_NoGift[184]["MapInfo"][5] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][5]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][5]["PosX"] = 288
MoveTrap_Info_NoGift[184]["MapInfo"][5]["PosY"] = 257
MoveTrap_Info_NoGift[184]["MapInfo"][6] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][6]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][6]["PosX"] = 288
MoveTrap_Info_NoGift[184]["MapInfo"][6]["PosY"] = 279
MoveTrap_Info_NoGift[184]["MapInfo"][7] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][7]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][7]["PosX"] = 290
MoveTrap_Info_NoGift[184]["MapInfo"][7]["PosY"] = 301
MoveTrap_Info_NoGift[184]["MapInfo"][8] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][8]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][8]["PosX"] = 313
MoveTrap_Info_NoGift[184]["MapInfo"][8]["PosY"] = 300
MoveTrap_Info_NoGift[184]["MapInfo"][9] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][9]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][9]["PosX"] = 332
MoveTrap_Info_NoGift[184]["MapInfo"][9]["PosY"] = 300
MoveTrap_Info_NoGift[184]["MapInfo"][10] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][10]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][10]["PosX"] = 333
MoveTrap_Info_NoGift[184]["MapInfo"][10]["PosY"] = 285
MoveTrap_Info_NoGift[184]["MapInfo"][11] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][11]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][11]["PosX"] = 335
MoveTrap_Info_NoGift[184]["MapInfo"][11]["PosY"] = 270
MoveTrap_Info_NoGift[184]["MapInfo"][12] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][12]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][12]["PosX"] = 333
MoveTrap_Info_NoGift[184]["MapInfo"][12]["PosY"] = 257
MoveTrap_Info_NoGift[184]["MapInfo"][13] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][13]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][13]["PosX"] = 336
MoveTrap_Info_NoGift[184]["MapInfo"][13]["PosY"] = 252
MoveTrap_Info_NoGift[184]["MapInfo"][14] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][14]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][14]["PosX"] = 351
MoveTrap_Info_NoGift[184]["MapInfo"][14]["PosY"] = 274
MoveTrap_Info_NoGift[184]["MapInfo"][15] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][15]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][15]["PosX"] = 352
MoveTrap_Info_NoGift[184]["MapInfo"][15]["PosY"] = 293
MoveTrap_Info_NoGift[184]["MapInfo"][16] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][16]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][16]["PosX"] = 350
MoveTrap_Info_NoGift[184]["MapInfo"][16]["PosY"] = 311
MoveTrap_Info_NoGift[184]["MapInfo"][17] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][17]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][17]["PosX"] = 311
MoveTrap_Info_NoGift[184]["MapInfo"][17]["PosY"] = 278
MoveTrap_Info_NoGift[184]["MapInfo"][18] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][18]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][18]["PosX"] = 269
MoveTrap_Info_NoGift[184]["MapInfo"][18]["PosY"] = 296
MoveTrap_Info_NoGift[184]["MapInfo"][19] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][19]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][19]["PosX"] = 262
MoveTrap_Info_NoGift[184]["MapInfo"][19]["PosY"] = 279
MoveTrap_Info_NoGift[184]["MapInfo"][20] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][20]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][20]["PosX"] = 262
MoveTrap_Info_NoGift[184]["MapInfo"][20]["PosY"] = 262
MoveTrap_Info_NoGift[184]["MapInfo"][21] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][21]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][21]["PosX"] = 243
MoveTrap_Info_NoGift[184]["MapInfo"][21]["PosY"] = 257
MoveTrap_Info_NoGift[184]["MapInfo"][22] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][22]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][22]["PosX"] = 225
MoveTrap_Info_NoGift[184]["MapInfo"][22]["PosY"] = 251
MoveTrap_Info_NoGift[184]["MapInfo"][23] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][23]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][23]["PosX"] = 224
MoveTrap_Info_NoGift[184]["MapInfo"][23]["PosY"] = 235
MoveTrap_Info_NoGift[184]["MapInfo"][24] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][24]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][24]["PosX"] = 227
MoveTrap_Info_NoGift[184]["MapInfo"][24]["PosY"] = 218
MoveTrap_Info_NoGift[184]["MapInfo"][25] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][25]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][25]["PosX"] = 245
MoveTrap_Info_NoGift[184]["MapInfo"][25]["PosY"] = 214
MoveTrap_Info_NoGift[184]["MapInfo"][26] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][26]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][26]["PosX"] = 267
MoveTrap_Info_NoGift[184]["MapInfo"][26]["PosY"] = 214
MoveTrap_Info_NoGift[184]["MapInfo"][27] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][27]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][27]["PosX"] = 268
MoveTrap_Info_NoGift[184]["MapInfo"][27]["PosY"] = 235
MoveTrap_Info_NoGift[184]["MapInfo"][28] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][28]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][28]["PosX"] = 274
MoveTrap_Info_NoGift[184]["MapInfo"][28]["PosY"] = 252
MoveTrap_Info_NoGift[184]["MapInfo"][29] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][29]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][29]["PosX"] = 249
MoveTrap_Info_NoGift[184]["MapInfo"][29]["PosY"] = 235
MoveTrap_Info_NoGift[184]["MapInfo"][30] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][30]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][30]["PosX"] = 303
MoveTrap_Info_NoGift[184]["MapInfo"][30]["PosY"] = 243
MoveTrap_Info_NoGift[184]["MapInfo"][31] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][31]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][31]["PosX"] = 300
MoveTrap_Info_NoGift[184]["MapInfo"][31]["PosY"] = 220
MoveTrap_Info_NoGift[184]["MapInfo"][32] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][32]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][32]["PosX"] = 348
MoveTrap_Info_NoGift[184]["MapInfo"][32]["PosY"] = 217
MoveTrap_Info_NoGift[184]["MapInfo"][33] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][33]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][33]["PosX"] = 372
MoveTrap_Info_NoGift[184]["MapInfo"][33]["PosY"] = 253
MoveTrap_Info_NoGift[184]["MapInfo"][34] = {}
MoveTrap_Info_NoGift[184]["MapInfo"][34]["MapId"] = 10364
MoveTrap_Info_NoGift[184]["MapInfo"][34]["PosX"] = 248
MoveTrap_Info_NoGift[184]["MapInfo"][34]["PosY"] = 294
-----------------------------------------------------------------------------------------------------
--Name:		191015[简体征服][活动脚本]感恩节---活动三小鸡快跑部分
--Purpose:		感恩节---活动三小鸡快跑部分
--Creator: 	洪聪敏
--Created:		2019/10/15
------------------------------------------------------------------------------------------------------
MoveTrap_Info[219] = {}
MoveTrap_Info[219]["ActivetyTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
MoveTrap_Info[219]["TrapType"] = 219
MoveTrap_Info[219]["Look"] = 219
MoveTrap_Info[219]["MapInfo"] = {}
MoveTrap_Info[219]["MapInfo"][1] = {}
MoveTrap_Info[219]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[219]["MapInfo"][1]["PosX"] = 373
MoveTrap_Info[219]["MapInfo"][1]["PosY"] = 442

MoveTrap_Info_NoGift[219] = {}
MoveTrap_Info_NoGift[219]["ActivetyTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
MoveTrap_Info_NoGift[219]["TrapType"] = 219
MoveTrap_Info_NoGift[219]["Look"] = 219
MoveTrap_Info_NoGift[219]["MapInfo"] = {}
MoveTrap_Info_NoGift[219]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[219]["MapInfo"][1]["MapId"] = 5000
MoveTrap_Info_NoGift[219]["MapInfo"][1]["PosX"] = 100
MoveTrap_Info_NoGift[219]["MapInfo"][1]["PosY"] = 100

-----------------------------------------------------------------------------------------------------
--Name:		191210[英文征服][活动脚本]21点和奥马哈桌子新增
--Creator: 	王贤
--Created:		2019/12/10
------------------------------------------------------------------------------------------------------
-- 跨服指引
MoveTrap_Info[2517] = {}
MoveTrap_Info[2517]["NewActivetyTime"] = tActivityTime["LightingEternity"]["ActTime"]
MoveTrap_Info[2517]["TrapType"] = 2517
MoveTrap_Info[2517]["Look"] = 1721
MoveTrap_Info[2517]["MapInfo"] = {}
MoveTrap_Info[2517]["MapInfo"][1] = {}
MoveTrap_Info[2517]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2517]["MapInfo"][1]["PosX"] = 346
MoveTrap_Info[2517]["MapInfo"][1]["PosY"] = 439
MoveTrap_Info[2517]["GlobalId"] = 54018
MoveTrap_Info[2517]["GlobalData"] = 1
MoveTrap_Info[2517]["GlobalPos"] = 1

-- 跨服指引
MoveTrap_Info[2520] = {}
MoveTrap_Info[2520]["NewActivetyTime"] = tActivityTime["LightingEternity"]["ActTime"]
MoveTrap_Info[2520]["TrapType"] = 2520
MoveTrap_Info[2520]["Look"] = 1721
MoveTrap_Info[2520]["MapInfo"] = {}
MoveTrap_Info[2520]["MapInfo"][1] = {}
MoveTrap_Info[2520]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2520]["MapInfo"][1]["PosX"] = 270
MoveTrap_Info[2520]["MapInfo"][1]["PosY"] = 426
MoveTrap_Info[2520]["GlobalId"] = 54018
MoveTrap_Info[2520]["GlobalData"] = 1
MoveTrap_Info[2520]["GlobalPos"] = 1

-- 奥马哈
MoveTrap_Info[2521] = {}
MoveTrap_Info[2521]["ActivetyTime"] = tActivityTime["LightingEternity"]["ActTime"]
MoveTrap_Info[2521]["TrapType"] = 2521
MoveTrap_Info[2521]["Look"] = 2521
MoveTrap_Info[2521]["MapInfo"] = {}
MoveTrap_Info[2521]["MapInfo"][1] = {}
MoveTrap_Info[2521]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2521]["MapInfo"][1]["PosX"] = 348
MoveTrap_Info[2521]["MapInfo"][1]["PosY"] = 442


------------------------------------------------------------------------------------
--Name：            191129[简体征服][活动脚本]全球圣诞活动预热
--Creator:      冯子鑫
--Created:     2019-11-29
------------------------------------------------------------------------------------
MoveTrap_Info[2515] = {}
MoveTrap_Info[2515]["ActivetyTime"] = tActivityTime["ChristmasPreheat"]["AtmosphereActivityTime"]
MoveTrap_Info[2515]["TrapType"] = 2515
MoveTrap_Info[2515]["Look"] = 2515
MoveTrap_Info[2515]["MapInfo"] = {}
MoveTrap_Info[2515]["MapInfo"][1] = {}
MoveTrap_Info[2515]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][1]["PosX"] = 233
MoveTrap_Info[2515]["MapInfo"][1]["PosY"] = 483
MoveTrap_Info[2515]["MapInfo"][2] = {}
MoveTrap_Info[2515]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][2]["PosX"] = 251
MoveTrap_Info[2515]["MapInfo"][2]["PosY"] = 477
MoveTrap_Info[2515]["MapInfo"][3] = {}
MoveTrap_Info[2515]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][3]["PosX"] = 250
MoveTrap_Info[2515]["MapInfo"][3]["PosY"] = 456
MoveTrap_Info[2515]["MapInfo"][4] = {}
MoveTrap_Info[2515]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][4]["PosX"] = 271
MoveTrap_Info[2515]["MapInfo"][4]["PosY"] = 475
MoveTrap_Info[2515]["MapInfo"][5] = {}
MoveTrap_Info[2515]["MapInfo"][5]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][5]["PosX"] = 286
MoveTrap_Info[2515]["MapInfo"][5]["PosY"] = 475
MoveTrap_Info[2515]["MapInfo"][6] = {}
MoveTrap_Info[2515]["MapInfo"][6]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][6]["PosX"] = 304
MoveTrap_Info[2515]["MapInfo"][6]["PosY"] = 478
MoveTrap_Info[2515]["MapInfo"][7] = {}
MoveTrap_Info[2515]["MapInfo"][7]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][7]["PosX"] = 306
MoveTrap_Info[2515]["MapInfo"][7]["PosY"] = 500
MoveTrap_Info[2515]["MapInfo"][8] = {}
MoveTrap_Info[2515]["MapInfo"][8]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][8]["PosX"] = 330
MoveTrap_Info[2515]["MapInfo"][8]["PosY"] = 497
MoveTrap_Info[2515]["MapInfo"][9] = {}
MoveTrap_Info[2515]["MapInfo"][9]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][9]["PosX"] = 350
MoveTrap_Info[2515]["MapInfo"][9]["PosY"] = 497
MoveTrap_Info[2515]["MapInfo"][10] = {}
MoveTrap_Info[2515]["MapInfo"][10]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][10]["PosX"] = 369
MoveTrap_Info[2515]["MapInfo"][10]["PosY"] = 496
MoveTrap_Info[2515]["MapInfo"][11] = {}
MoveTrap_Info[2515]["MapInfo"][11]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][11]["PosX"] = 388
MoveTrap_Info[2515]["MapInfo"][11]["PosY"] = 496
MoveTrap_Info[2515]["MapInfo"][12] = {}
MoveTrap_Info[2515]["MapInfo"][12]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][12]["PosX"] = 389
MoveTrap_Info[2515]["MapInfo"][12]["PosY"] = 478
MoveTrap_Info[2515]["MapInfo"][13] = {}
MoveTrap_Info[2515]["MapInfo"][13]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][13]["PosX"] = 390
MoveTrap_Info[2515]["MapInfo"][13]["PosY"] = 455
MoveTrap_Info[2515]["MapInfo"][14] = {}
MoveTrap_Info[2515]["MapInfo"][14]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][14]["PosX"] = 392
MoveTrap_Info[2515]["MapInfo"][14]["PosY"] = 429
MoveTrap_Info[2515]["MapInfo"][15] = {}
MoveTrap_Info[2515]["MapInfo"][15]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][15]["PosX"] = 391
MoveTrap_Info[2515]["MapInfo"][15]["PosY"] = 404
MoveTrap_Info[2515]["MapInfo"][16] = {}
MoveTrap_Info[2515]["MapInfo"][16]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][16]["PosX"] = 365
MoveTrap_Info[2515]["MapInfo"][16]["PosY"] = 412
MoveTrap_Info[2515]["MapInfo"][17] = {}
MoveTrap_Info[2515]["MapInfo"][17]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][17]["PosX"] = 370
MoveTrap_Info[2515]["MapInfo"][17]["PosY"] = 388
MoveTrap_Info[2515]["MapInfo"][18] = {}
MoveTrap_Info[2515]["MapInfo"][18]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][18]["PosX"] = 348
MoveTrap_Info[2515]["MapInfo"][18]["PosY"] = 384
MoveTrap_Info[2515]["MapInfo"][19] = {}
MoveTrap_Info[2515]["MapInfo"][19]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][19]["PosX"] = 323
MoveTrap_Info[2515]["MapInfo"][19]["PosY"] = 386
MoveTrap_Info[2515]["MapInfo"][20] = {}
MoveTrap_Info[2515]["MapInfo"][20]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][20]["PosX"] = 307
MoveTrap_Info[2515]["MapInfo"][20]["PosY"] = 388
MoveTrap_Info[2515]["MapInfo"][21] = {}
MoveTrap_Info[2515]["MapInfo"][21]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][21]["PosX"] = 306
MoveTrap_Info[2515]["MapInfo"][21]["PosY"] = 414
MoveTrap_Info[2515]["MapInfo"][22] = {}
MoveTrap_Info[2515]["MapInfo"][22]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][22]["PosX"] = 305
MoveTrap_Info[2515]["MapInfo"][22]["PosY"] = 443
MoveTrap_Info[2515]["MapInfo"][23] = {}
MoveTrap_Info[2515]["MapInfo"][23]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][23]["PosX"] = 305
MoveTrap_Info[2515]["MapInfo"][23]["PosY"] = 463
MoveTrap_Info[2515]["MapInfo"][24] = {}
MoveTrap_Info[2515]["MapInfo"][24]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][24]["PosX"] = 344
MoveTrap_Info[2515]["MapInfo"][24]["PosY"] = 408
MoveTrap_Info[2515]["MapInfo"][25] = {}
MoveTrap_Info[2515]["MapInfo"][25]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][25]["PosX"] = 324
MoveTrap_Info[2515]["MapInfo"][25]["PosY"] = 415
MoveTrap_Info[2515]["MapInfo"][26] = {}
MoveTrap_Info[2515]["MapInfo"][26]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][26]["PosX"] = 320
MoveTrap_Info[2515]["MapInfo"][26]["PosY"] = 443
MoveTrap_Info[2515]["MapInfo"][27] = {}
MoveTrap_Info[2515]["MapInfo"][27]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][27]["PosX"] = 322
MoveTrap_Info[2515]["MapInfo"][27]["PosY"] = 470
MoveTrap_Info[2515]["MapInfo"][28] = {}
MoveTrap_Info[2515]["MapInfo"][28]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][28]["PosX"] = 357
MoveTrap_Info[2515]["MapInfo"][28]["PosY"] = 477
MoveTrap_Info[2515]["MapInfo"][29] = {}
MoveTrap_Info[2515]["MapInfo"][29]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][29]["PosX"] = 346
MoveTrap_Info[2515]["MapInfo"][29]["PosY"] = 435
MoveTrap_Info[2515]["MapInfo"][30] = {}
MoveTrap_Info[2515]["MapInfo"][30]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][30]["PosX"] = 371
MoveTrap_Info[2515]["MapInfo"][30]["PosY"] = 444
MoveTrap_Info[2515]["MapInfo"][31] = {}
MoveTrap_Info[2515]["MapInfo"][31]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][31]["PosX"] = 338
MoveTrap_Info[2515]["MapInfo"][31]["PosY"] = 459
MoveTrap_Info[2515]["MapInfo"][32] = {}
MoveTrap_Info[2515]["MapInfo"][32]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][32]["PosX"] = 346
MoveTrap_Info[2515]["MapInfo"][32]["PosY"] = 530
MoveTrap_Info[2515]["MapInfo"][33] = {}
MoveTrap_Info[2515]["MapInfo"][33]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][33]["PosX"] = 331
MoveTrap_Info[2515]["MapInfo"][33]["PosY"] = 544
MoveTrap_Info[2515]["MapInfo"][34] = {}
MoveTrap_Info[2515]["MapInfo"][34]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][34]["PosX"] = 334
MoveTrap_Info[2515]["MapInfo"][34]["PosY"] = 567
MoveTrap_Info[2515]["MapInfo"][35] = {}
MoveTrap_Info[2515]["MapInfo"][35]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][35]["PosX"] = 309
MoveTrap_Info[2515]["MapInfo"][35]["PosY"] = 539
MoveTrap_Info[2515]["MapInfo"][36] = {}
MoveTrap_Info[2515]["MapInfo"][36]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][36]["PosX"] = 370
MoveTrap_Info[2515]["MapInfo"][36]["PosY"] = 364
MoveTrap_Info[2515]["MapInfo"][37] = {}
MoveTrap_Info[2515]["MapInfo"][37]["MapId"] = 1002
MoveTrap_Info[2515]["MapInfo"][37]["PosX"] = 307
MoveTrap_Info[2515]["MapInfo"][37]["PosY"] = 369
MoveTrap_Info_NoGift[2515] = {}
MoveTrap_Info_NoGift[2515]["ActivetyTime"] = tActivityTime["ChristmasPreheat"]["AtmosphereActivityTime"]
MoveTrap_Info_NoGift[2515]["TrapType"] = 2515
MoveTrap_Info_NoGift[2515]["Look"] = 2515
MoveTrap_Info_NoGift[2515]["MapInfo"] = {}
-- 双龙城
MoveTrap_Info_NoGift[2515]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][1]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][1]["PosX"] = 344
MoveTrap_Info_NoGift[2515]["MapInfo"][1]["PosY"] = 235
MoveTrap_Info_NoGift[2515]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][2]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][2]["PosX"] = 326
MoveTrap_Info_NoGift[2515]["MapInfo"][2]["PosY"] = 238
MoveTrap_Info_NoGift[2515]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][3]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][3]["PosX"] = 305
MoveTrap_Info_NoGift[2515]["MapInfo"][3]["PosY"] = 326
MoveTrap_Info_NoGift[2515]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][4]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][4]["PosX"] = 336
MoveTrap_Info_NoGift[2515]["MapInfo"][4]["PosY"] = 284
MoveTrap_Info_NoGift[2515]["MapInfo"][5] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][5]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][5]["PosX"] = 288
MoveTrap_Info_NoGift[2515]["MapInfo"][5]["PosY"] = 257
MoveTrap_Info_NoGift[2515]["MapInfo"][6] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][6]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][6]["PosX"] = 288
MoveTrap_Info_NoGift[2515]["MapInfo"][6]["PosY"] = 279
MoveTrap_Info_NoGift[2515]["MapInfo"][7] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][7]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][7]["PosX"] = 290
MoveTrap_Info_NoGift[2515]["MapInfo"][7]["PosY"] = 301
MoveTrap_Info_NoGift[2515]["MapInfo"][8] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][8]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][8]["PosX"] = 313
MoveTrap_Info_NoGift[2515]["MapInfo"][8]["PosY"] = 300
MoveTrap_Info_NoGift[2515]["MapInfo"][9] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][9]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][9]["PosX"] = 332
MoveTrap_Info_NoGift[2515]["MapInfo"][9]["PosY"] = 300
MoveTrap_Info_NoGift[2515]["MapInfo"][10] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][10]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][10]["PosX"] = 333
MoveTrap_Info_NoGift[2515]["MapInfo"][10]["PosY"] = 285
MoveTrap_Info_NoGift[2515]["MapInfo"][11] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][11]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][11]["PosX"] = 335
MoveTrap_Info_NoGift[2515]["MapInfo"][11]["PosY"] = 270
MoveTrap_Info_NoGift[2515]["MapInfo"][12] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][12]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][12]["PosX"] = 333
MoveTrap_Info_NoGift[2515]["MapInfo"][12]["PosY"] = 257
MoveTrap_Info_NoGift[2515]["MapInfo"][13] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][13]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][13]["PosX"] = 336
MoveTrap_Info_NoGift[2515]["MapInfo"][13]["PosY"] = 252
MoveTrap_Info_NoGift[2515]["MapInfo"][14] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][14]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][14]["PosX"] = 351
MoveTrap_Info_NoGift[2515]["MapInfo"][14]["PosY"] = 274
MoveTrap_Info_NoGift[2515]["MapInfo"][15] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][15]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][15]["PosX"] = 352
MoveTrap_Info_NoGift[2515]["MapInfo"][15]["PosY"] = 293
MoveTrap_Info_NoGift[2515]["MapInfo"][16] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][16]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][16]["PosX"] = 350
MoveTrap_Info_NoGift[2515]["MapInfo"][16]["PosY"] = 311
MoveTrap_Info_NoGift[2515]["MapInfo"][17] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][17]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][17]["PosX"] = 311
MoveTrap_Info_NoGift[2515]["MapInfo"][17]["PosY"] = 278
MoveTrap_Info_NoGift[2515]["MapInfo"][18] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][18]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][18]["PosX"] = 269
MoveTrap_Info_NoGift[2515]["MapInfo"][18]["PosY"] = 296
MoveTrap_Info_NoGift[2515]["MapInfo"][19] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][19]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][19]["PosX"] = 262
MoveTrap_Info_NoGift[2515]["MapInfo"][19]["PosY"] = 279
MoveTrap_Info_NoGift[2515]["MapInfo"][20] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][20]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][20]["PosX"] = 262
MoveTrap_Info_NoGift[2515]["MapInfo"][20]["PosY"] = 262
MoveTrap_Info_NoGift[2515]["MapInfo"][21] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][21]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][21]["PosX"] = 243
MoveTrap_Info_NoGift[2515]["MapInfo"][21]["PosY"] = 257
MoveTrap_Info_NoGift[2515]["MapInfo"][22] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][22]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][22]["PosX"] = 225
MoveTrap_Info_NoGift[2515]["MapInfo"][22]["PosY"] = 251
MoveTrap_Info_NoGift[2515]["MapInfo"][23] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][23]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][23]["PosX"] = 224
MoveTrap_Info_NoGift[2515]["MapInfo"][23]["PosY"] = 235
MoveTrap_Info_NoGift[2515]["MapInfo"][24] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][24]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][24]["PosX"] = 227
MoveTrap_Info_NoGift[2515]["MapInfo"][24]["PosY"] = 218
MoveTrap_Info_NoGift[2515]["MapInfo"][25] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][25]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][25]["PosX"] = 245
MoveTrap_Info_NoGift[2515]["MapInfo"][25]["PosY"] = 214
MoveTrap_Info_NoGift[2515]["MapInfo"][26] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][26]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][26]["PosX"] = 267
MoveTrap_Info_NoGift[2515]["MapInfo"][26]["PosY"] = 214
MoveTrap_Info_NoGift[2515]["MapInfo"][27] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][27]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][27]["PosX"] = 268
MoveTrap_Info_NoGift[2515]["MapInfo"][27]["PosY"] = 235
MoveTrap_Info_NoGift[2515]["MapInfo"][28] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][28]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][28]["PosX"] = 274
MoveTrap_Info_NoGift[2515]["MapInfo"][28]["PosY"] = 252
MoveTrap_Info_NoGift[2515]["MapInfo"][29] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][29]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][29]["PosX"] = 249
MoveTrap_Info_NoGift[2515]["MapInfo"][29]["PosY"] = 235
MoveTrap_Info_NoGift[2515]["MapInfo"][30] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][30]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][30]["PosX"] = 303
MoveTrap_Info_NoGift[2515]["MapInfo"][30]["PosY"] = 243
MoveTrap_Info_NoGift[2515]["MapInfo"][31] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][31]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][31]["PosX"] = 300
MoveTrap_Info_NoGift[2515]["MapInfo"][31]["PosY"] = 220
MoveTrap_Info_NoGift[2515]["MapInfo"][32] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][32]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][32]["PosX"] = 348
MoveTrap_Info_NoGift[2515]["MapInfo"][32]["PosY"] = 217
MoveTrap_Info_NoGift[2515]["MapInfo"][33] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][33]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][33]["PosX"] = 372
MoveTrap_Info_NoGift[2515]["MapInfo"][33]["PosY"] = 253
MoveTrap_Info_NoGift[2515]["MapInfo"][34] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][34]["MapId"] = 10364
MoveTrap_Info_NoGift[2515]["MapInfo"][34]["PosX"] = 248
MoveTrap_Info_NoGift[2515]["MapInfo"][34]["PosY"] = 294
-- 市场
MoveTrap_Info_NoGift[2515]["MapInfo"][35] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][35]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][35]["PosX"] = 303
MoveTrap_Info_NoGift[2515]["MapInfo"][35]["PosY"] = 237
MoveTrap_Info_NoGift[2515]["MapInfo"][36] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][36]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][36]["PosX"] = 332
MoveTrap_Info_NoGift[2515]["MapInfo"][36]["PosY"] = 240
MoveTrap_Info_NoGift[2515]["MapInfo"][37] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][37]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][37]["PosX"] = 324
MoveTrap_Info_NoGift[2515]["MapInfo"][37]["PosY"] = 210
MoveTrap_Info_NoGift[2515]["MapInfo"][38] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][38]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][38]["PosX"] = 295
MoveTrap_Info_NoGift[2515]["MapInfo"][38]["PosY"] = 203
MoveTrap_Info_NoGift[2515]["MapInfo"][39] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][39]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][39]["PosX"] = 268
MoveTrap_Info_NoGift[2515]["MapInfo"][39]["PosY"] = 204
MoveTrap_Info_NoGift[2515]["MapInfo"][40] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][40]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][40]["PosX"] = 248
MoveTrap_Info_NoGift[2515]["MapInfo"][40]["PosY"] = 190
MoveTrap_Info_NoGift[2515]["MapInfo"][41] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][41]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][41]["PosX"] = 220
MoveTrap_Info_NoGift[2515]["MapInfo"][41]["PosY"] = 185
MoveTrap_Info_NoGift[2515]["MapInfo"][42] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][42]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][42]["PosX"] = 196
MoveTrap_Info_NoGift[2515]["MapInfo"][42]["PosY"] = 186
MoveTrap_Info_NoGift[2515]["MapInfo"][43] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][43]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][43]["PosX"] = 174
MoveTrap_Info_NoGift[2515]["MapInfo"][43]["PosY"] = 184
MoveTrap_Info_NoGift[2515]["MapInfo"][44] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][44]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][44]["PosX"] = 152
MoveTrap_Info_NoGift[2515]["MapInfo"][44]["PosY"] = 186
MoveTrap_Info_NoGift[2515]["MapInfo"][45] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][45]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][45]["PosX"] = 153
MoveTrap_Info_NoGift[2515]["MapInfo"][45]["PosY"] = 207
MoveTrap_Info_NoGift[2515]["MapInfo"][46] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][46]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][46]["PosX"] = 123
MoveTrap_Info_NoGift[2515]["MapInfo"][46]["PosY"] = 200
MoveTrap_Info_NoGift[2515]["MapInfo"][47] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][47]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][47]["PosX"] = 123
MoveTrap_Info_NoGift[2515]["MapInfo"][47]["PosY"] = 219
MoveTrap_Info_NoGift[2515]["MapInfo"][48] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][48]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][48]["PosX"] = 123
MoveTrap_Info_NoGift[2515]["MapInfo"][48]["PosY"] = 239
MoveTrap_Info_NoGift[2515]["MapInfo"][49] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][49]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][49]["PosX"] = 143
MoveTrap_Info_NoGift[2515]["MapInfo"][49]["PosY"] = 230
MoveTrap_Info_NoGift[2515]["MapInfo"][50] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][50]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][50]["PosX"] = 160
MoveTrap_Info_NoGift[2515]["MapInfo"][50]["PosY"] = 232
MoveTrap_Info_NoGift[2515]["MapInfo"][51] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][51]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][51]["PosX"] = 167
MoveTrap_Info_NoGift[2515]["MapInfo"][51]["PosY"] = 215
MoveTrap_Info_NoGift[2515]["MapInfo"][52] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][52]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][52]["PosX"] = 153
MoveTrap_Info_NoGift[2515]["MapInfo"][52]["PosY"] = 265
MoveTrap_Info_NoGift[2515]["MapInfo"][53] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][53]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][53]["PosX"] = 175
MoveTrap_Info_NoGift[2515]["MapInfo"][53]["PosY"] = 284
MoveTrap_Info_NoGift[2515]["MapInfo"][54] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][54]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][54]["PosX"] = 203
MoveTrap_Info_NoGift[2515]["MapInfo"][54]["PosY"] = 284
MoveTrap_Info_NoGift[2515]["MapInfo"][55] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][55]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][55]["PosX"] = 220
MoveTrap_Info_NoGift[2515]["MapInfo"][55]["PosY"] = 286
MoveTrap_Info_NoGift[2515]["MapInfo"][56] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][56]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][56]["PosX"] = 239
MoveTrap_Info_NoGift[2515]["MapInfo"][56]["PosY"] = 283
MoveTrap_Info_NoGift[2515]["MapInfo"][57] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][57]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][57]["PosX"] = 256
MoveTrap_Info_NoGift[2515]["MapInfo"][57]["PosY"] = 281
MoveTrap_Info_NoGift[2515]["MapInfo"][58] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][58]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][58]["PosX"] = 254
MoveTrap_Info_NoGift[2515]["MapInfo"][58]["PosY"] = 259
MoveTrap_Info_NoGift[2515]["MapInfo"][59] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][59]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][59]["PosX"] = 275
MoveTrap_Info_NoGift[2515]["MapInfo"][59]["PosY"] = 262
MoveTrap_Info_NoGift[2515]["MapInfo"][60] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][60]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][60]["PosX"] = 295
MoveTrap_Info_NoGift[2515]["MapInfo"][60]["PosY"] = 263
MoveTrap_Info_NoGift[2515]["MapInfo"][61] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][61]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][61]["PosX"] = 321
MoveTrap_Info_NoGift[2515]["MapInfo"][61]["PosY"] = 266
MoveTrap_Info_NoGift[2515]["MapInfo"][62] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][62]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][62]["PosX"] = 272
MoveTrap_Info_NoGift[2515]["MapInfo"][62]["PosY"] = 234
MoveTrap_Info_NoGift[2515]["MapInfo"][63] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][63]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][63]["PosX"] = 234
MoveTrap_Info_NoGift[2515]["MapInfo"][63]["PosY"] = 235
MoveTrap_Info_NoGift[2515]["MapInfo"][64] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][64]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][64]["PosX"] = 202
MoveTrap_Info_NoGift[2515]["MapInfo"][64]["PosY"] = 235
MoveTrap_Info_NoGift[2515]["MapInfo"][65] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][65]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][65]["PosX"] = 188
MoveTrap_Info_NoGift[2515]["MapInfo"][65]["PosY"] = 261
MoveTrap_Info_NoGift[2515]["MapInfo"][66] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][66]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][66]["PosX"] = 221
MoveTrap_Info_NoGift[2515]["MapInfo"][66]["PosY"] = 210
MoveTrap_Info_NoGift[2515]["MapInfo"][67] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][67]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][67]["PosX"] = 251
MoveTrap_Info_NoGift[2515]["MapInfo"][67]["PosY"] = 221
MoveTrap_Info_NoGift[2515]["MapInfo"][68] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][68]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][68]["PosX"] = 188
MoveTrap_Info_NoGift[2515]["MapInfo"][68]["PosY"] = 209
MoveTrap_Info_NoGift[2515]["MapInfo"][69] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][69]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][69]["PosX"] = 216
MoveTrap_Info_NoGift[2515]["MapInfo"][69]["PosY"] = 263
MoveTrap_Info_NoGift[2515]["MapInfo"][70] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][70]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][70]["PosX"] = 233
MoveTrap_Info_NoGift[2515]["MapInfo"][70]["PosY"] = 259
MoveTrap_Info_NoGift[2515]["MapInfo"][71] = {}
MoveTrap_Info_NoGift[2515]["MapInfo"][71]["MapId"] = 1036
MoveTrap_Info_NoGift[2515]["MapInfo"][71]["PosX"] = 181
MoveTrap_Info_NoGift[2515]["MapInfo"][71]["PosY"] = 239
------------------------------------------------------------------------------------
--Name:			191122[简体征服][活动脚本]全球圣诞元旦活动--引导NPC制作
--Creator:		郑飞
--Created:		2019/11/22
------------------------------------------------------------------------------------
MoveTrap_Info[2513] = {}
MoveTrap_Info[2513]["ActivetyTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
MoveTrap_Info[2513]["TrapType"] = 2513
MoveTrap_Info[2513]["Look"] = 1894
MoveTrap_Info[2513]["MapInfo"] = {}
MoveTrap_Info[2513]["MapInfo"][1] = {}
MoveTrap_Info[2513]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2513]["MapInfo"][1]["PosX"] = 367
MoveTrap_Info[2513]["MapInfo"][1]["PosY"] = 439

MoveTrap_Info_NoGift[2513] = {}
MoveTrap_Info_NoGift[2513]["ActivetyTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
MoveTrap_Info_NoGift[2513]["TrapType"] = 2513
MoveTrap_Info_NoGift[2513]["Look"] = 1894
MoveTrap_Info_NoGift[2513]["MapInfo"] = {}
MoveTrap_Info_NoGift[2513]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2513]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2513]["MapInfo"][1]["PosX"] = 215
MoveTrap_Info_NoGift[2513]["MapInfo"][1]["PosY"] = 161

MoveTrap_Info[2514] = {}
MoveTrap_Info[2514]["ActivetyTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
MoveTrap_Info[2514]["TrapType"] = 2514
MoveTrap_Info[2514]["Look"] = 1894
MoveTrap_Info[2514]["MapInfo"] = {}
MoveTrap_Info[2514]["MapInfo"][1] = {}
MoveTrap_Info[2514]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2514]["MapInfo"][1]["PosX"] = 368
MoveTrap_Info[2514]["MapInfo"][1]["PosY"] = 450

MoveTrap_Info_NoGift[2514] = {}
MoveTrap_Info_NoGift[2514]["ActivetyTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
MoveTrap_Info_NoGift[2514]["TrapType"] = 2514
MoveTrap_Info_NoGift[2514]["Look"] = 1894
MoveTrap_Info_NoGift[2514]["MapInfo"] = {}
MoveTrap_Info_NoGift[2514]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2514]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2514]["MapInfo"][1]["PosX"] = 216
MoveTrap_Info_NoGift[2514]["MapInfo"][1]["PosY"] = 172

MoveTrap_Info[2516] = {}
MoveTrap_Info[2516]["ActivetyTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
MoveTrap_Info[2516]["TrapType"] = 2516
MoveTrap_Info[2516]["Look"] = 2516
MoveTrap_Info[2516]["MapInfo"] = {}
MoveTrap_Info[2516]["MapInfo"][1] = {}
MoveTrap_Info[2516]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2516]["MapInfo"][1]["PosX"] = 364
MoveTrap_Info[2516]["MapInfo"][1]["PosY"] = 442

MoveTrap_Info_NoGift[2516] = {}
MoveTrap_Info_NoGift[2516]["ActivetyTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
MoveTrap_Info_NoGift[2516]["TrapType"] = 2516
MoveTrap_Info_NoGift[2516]["Look"] = 2516
MoveTrap_Info_NoGift[2516]["MapInfo"] = {}
MoveTrap_Info_NoGift[2516]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2516]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2516]["MapInfo"][1]["PosX"] = 212
MoveTrap_Info_NoGift[2516]["MapInfo"][1]["PosY"] = 164
------------------------------------------------------------------------------------
--Name：            191202[英文征服][活动脚本]新年活跃福利活动（1.2-1.31）
--Creator:      冯子鑫
--Created:     2019/12/02
------------------------------------------------------------------------------------

MoveTrap_Info[2522] = {}
MoveTrap_Info[2522]["ActivetyTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
MoveTrap_Info[2522]["TrapType"] = 2522
MoveTrap_Info[2522]["Look"] = 2522
MoveTrap_Info[2522]["MapInfo"] = {}
MoveTrap_Info[2522]["MapInfo"][1] = {}
MoveTrap_Info[2522]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2522]["MapInfo"][1]["PosX"] = 348
MoveTrap_Info[2522]["MapInfo"][1]["PosY"] = 489

MoveTrap_Info_NoGift[2522] = {}
MoveTrap_Info_NoGift[2522]["ActivetyTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
MoveTrap_Info_NoGift[2522]["TrapType"] = 2522
MoveTrap_Info_NoGift[2522]["Look"] = 2522
MoveTrap_Info_NoGift[2522]["MapInfo"] = {}
MoveTrap_Info_NoGift[2522]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2522]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2522]["MapInfo"][1]["PosX"] = 227
MoveTrap_Info_NoGift[2522]["MapInfo"][1]["PosY"] = 163

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]2020全球中国年(1.17-2.2)
--Creator:		翁清海
--Created:		2019/12/18
------------------------------------------------------------------------------------
-- 工具下架 MoveTrap_Info[2524] = {}
-- 工具下架 MoveTrap_Info[2524]["ActivetyTime"] = tActivityTime["SpringFestival2020Nian"]["ActivityTime"]
-- 工具下架 MoveTrap_Info[2524]["TrapType"] = 2524
-- 工具下架 MoveTrap_Info[2524]["Look"] = 2524
-- 工具下架 MoveTrap_Info[2524]["MapInfo"] = {}
-- 工具下架 MoveTrap_Info[2524]["MapInfo"][1] = {}
-- 工具下架 MoveTrap_Info[2524]["MapInfo"][1]["MapId"] = 1002
-- 工具下架 MoveTrap_Info[2524]["MapInfo"][1]["PosX"] = 374
-- 工具下架 MoveTrap_Info[2524]["MapInfo"][1]["PosY"] = 443

-- 工具下架 MoveTrap_Info_NoGift[2524] = {}
-- 工具下架 MoveTrap_Info_NoGift[2524]["ActivetyTime"] = tActivityTime["SpringFestival2020Nian"]["ActivityTime"]
-- 工具下架 MoveTrap_Info_NoGift[2524]["TrapType"] = 2524
-- 工具下架 MoveTrap_Info_NoGift[2524]["Look"] = 2524
-- 工具下架 MoveTrap_Info_NoGift[2524]["MapInfo"] = {}
-- 工具下架 MoveTrap_Info_NoGift[2524]["MapInfo"][1] = {}
-- 工具下架 MoveTrap_Info_NoGift[2524]["MapInfo"][1]["MapId"] = 1036
-- 工具下架 MoveTrap_Info_NoGift[2524]["MapInfo"][1]["PosX"] = 184
-- 工具下架 MoveTrap_Info_NoGift[2524]["MapInfo"][1]["PosY"] = 166

------------------------------------------------------------------------------------
--Name：            200109[简体征服][活动脚本]全球情人节活动预热(2.6-2.10)
--Creator:      郑飞
--Created:     2020-01-09
------------------------------------------------------------------------------------
MoveTrap_Info[176] = {}
MoveTrap_Info[176]["ActivetyTime"] = tActivityTime["ValentinePreheat"]["NpcTime"]
MoveTrap_Info[176]["TrapType"] = 176
MoveTrap_Info[176]["Look"] = 176
MoveTrap_Info[176]["MapInfo"] = {}
MoveTrap_Info[176]["MapInfo"][1] = {}
MoveTrap_Info[176]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][1]["PosX"] = 233
MoveTrap_Info[176]["MapInfo"][1]["PosY"] = 483
MoveTrap_Info[176]["MapInfo"][2] = {}
MoveTrap_Info[176]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][2]["PosX"] = 251
MoveTrap_Info[176]["MapInfo"][2]["PosY"] = 477
MoveTrap_Info[176]["MapInfo"][3] = {}
MoveTrap_Info[176]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][3]["PosX"] = 250
MoveTrap_Info[176]["MapInfo"][3]["PosY"] = 456
MoveTrap_Info[176]["MapInfo"][4] = {}
MoveTrap_Info[176]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][4]["PosX"] = 271
MoveTrap_Info[176]["MapInfo"][4]["PosY"] = 475
MoveTrap_Info[176]["MapInfo"][5] = {}
MoveTrap_Info[176]["MapInfo"][5]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][5]["PosX"] = 286
MoveTrap_Info[176]["MapInfo"][5]["PosY"] = 475
MoveTrap_Info[176]["MapInfo"][6] = {}
MoveTrap_Info[176]["MapInfo"][6]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][6]["PosX"] = 304
MoveTrap_Info[176]["MapInfo"][6]["PosY"] = 478
MoveTrap_Info[176]["MapInfo"][7] = {}
MoveTrap_Info[176]["MapInfo"][7]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][7]["PosX"] = 306
MoveTrap_Info[176]["MapInfo"][7]["PosY"] = 500
MoveTrap_Info[176]["MapInfo"][8] = {}
MoveTrap_Info[176]["MapInfo"][8]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][8]["PosX"] = 330
MoveTrap_Info[176]["MapInfo"][8]["PosY"] = 497
MoveTrap_Info[176]["MapInfo"][9] = {}
MoveTrap_Info[176]["MapInfo"][9]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][9]["PosX"] = 350
MoveTrap_Info[176]["MapInfo"][9]["PosY"] = 497
MoveTrap_Info[176]["MapInfo"][10] = {}
MoveTrap_Info[176]["MapInfo"][10]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][10]["PosX"] = 369
MoveTrap_Info[176]["MapInfo"][10]["PosY"] = 496
MoveTrap_Info[176]["MapInfo"][11] = {}
MoveTrap_Info[176]["MapInfo"][11]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][11]["PosX"] = 388
MoveTrap_Info[176]["MapInfo"][11]["PosY"] = 496
MoveTrap_Info[176]["MapInfo"][12] = {}
MoveTrap_Info[176]["MapInfo"][12]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][12]["PosX"] = 389
MoveTrap_Info[176]["MapInfo"][12]["PosY"] = 478
MoveTrap_Info[176]["MapInfo"][13] = {}
MoveTrap_Info[176]["MapInfo"][13]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][13]["PosX"] = 390
MoveTrap_Info[176]["MapInfo"][13]["PosY"] = 455
MoveTrap_Info[176]["MapInfo"][14] = {}
MoveTrap_Info[176]["MapInfo"][14]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][14]["PosX"] = 392
MoveTrap_Info[176]["MapInfo"][14]["PosY"] = 429
MoveTrap_Info[176]["MapInfo"][15] = {}
MoveTrap_Info[176]["MapInfo"][15]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][15]["PosX"] = 391
MoveTrap_Info[176]["MapInfo"][15]["PosY"] = 404
MoveTrap_Info[176]["MapInfo"][16] = {}
MoveTrap_Info[176]["MapInfo"][16]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][16]["PosX"] = 365
MoveTrap_Info[176]["MapInfo"][16]["PosY"] = 412
MoveTrap_Info[176]["MapInfo"][17] = {}
MoveTrap_Info[176]["MapInfo"][17]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][17]["PosX"] = 370
MoveTrap_Info[176]["MapInfo"][17]["PosY"] = 388
MoveTrap_Info[176]["MapInfo"][18] = {}
MoveTrap_Info[176]["MapInfo"][18]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][18]["PosX"] = 348
MoveTrap_Info[176]["MapInfo"][18]["PosY"] = 384
MoveTrap_Info[176]["MapInfo"][19] = {}
MoveTrap_Info[176]["MapInfo"][19]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][19]["PosX"] = 323
MoveTrap_Info[176]["MapInfo"][19]["PosY"] = 386
MoveTrap_Info[176]["MapInfo"][20] = {}
MoveTrap_Info[176]["MapInfo"][20]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][20]["PosX"] = 307
MoveTrap_Info[176]["MapInfo"][20]["PosY"] = 388
MoveTrap_Info[176]["MapInfo"][21] = {}
MoveTrap_Info[176]["MapInfo"][21]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][21]["PosX"] = 306
MoveTrap_Info[176]["MapInfo"][21]["PosY"] = 414
MoveTrap_Info[176]["MapInfo"][22] = {}
MoveTrap_Info[176]["MapInfo"][22]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][22]["PosX"] = 305
MoveTrap_Info[176]["MapInfo"][22]["PosY"] = 443
MoveTrap_Info[176]["MapInfo"][23] = {}
MoveTrap_Info[176]["MapInfo"][23]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][23]["PosX"] = 305
MoveTrap_Info[176]["MapInfo"][23]["PosY"] = 463
MoveTrap_Info[176]["MapInfo"][24] = {}
MoveTrap_Info[176]["MapInfo"][24]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][24]["PosX"] = 344
MoveTrap_Info[176]["MapInfo"][24]["PosY"] = 408
MoveTrap_Info[176]["MapInfo"][25] = {}
MoveTrap_Info[176]["MapInfo"][25]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][25]["PosX"] = 324
MoveTrap_Info[176]["MapInfo"][25]["PosY"] = 415
MoveTrap_Info[176]["MapInfo"][26] = {}
MoveTrap_Info[176]["MapInfo"][26]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][26]["PosX"] = 320
MoveTrap_Info[176]["MapInfo"][26]["PosY"] = 443
MoveTrap_Info[176]["MapInfo"][27] = {}
MoveTrap_Info[176]["MapInfo"][27]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][27]["PosX"] = 322
MoveTrap_Info[176]["MapInfo"][27]["PosY"] = 470
MoveTrap_Info[176]["MapInfo"][28] = {}
MoveTrap_Info[176]["MapInfo"][28]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][28]["PosX"] = 357
MoveTrap_Info[176]["MapInfo"][28]["PosY"] = 477
MoveTrap_Info[176]["MapInfo"][29] = {}
MoveTrap_Info[176]["MapInfo"][29]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][29]["PosX"] = 346
MoveTrap_Info[176]["MapInfo"][29]["PosY"] = 435
MoveTrap_Info[176]["MapInfo"][30] = {}
MoveTrap_Info[176]["MapInfo"][30]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][30]["PosX"] = 371
MoveTrap_Info[176]["MapInfo"][30]["PosY"] = 444
MoveTrap_Info[176]["MapInfo"][31] = {}
MoveTrap_Info[176]["MapInfo"][31]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][31]["PosX"] = 338
MoveTrap_Info[176]["MapInfo"][31]["PosY"] = 459
MoveTrap_Info[176]["MapInfo"][32] = {}
MoveTrap_Info[176]["MapInfo"][32]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][32]["PosX"] = 346
MoveTrap_Info[176]["MapInfo"][32]["PosY"] = 530
MoveTrap_Info[176]["MapInfo"][33] = {}
MoveTrap_Info[176]["MapInfo"][33]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][33]["PosX"] = 331
MoveTrap_Info[176]["MapInfo"][33]["PosY"] = 544
MoveTrap_Info[176]["MapInfo"][34] = {}
MoveTrap_Info[176]["MapInfo"][34]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][34]["PosX"] = 334
MoveTrap_Info[176]["MapInfo"][34]["PosY"] = 567
MoveTrap_Info[176]["MapInfo"][35] = {}
MoveTrap_Info[176]["MapInfo"][35]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][35]["PosX"] = 309
MoveTrap_Info[176]["MapInfo"][35]["PosY"] = 539
MoveTrap_Info[176]["MapInfo"][36] = {}
MoveTrap_Info[176]["MapInfo"][36]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][36]["PosX"] = 370
MoveTrap_Info[176]["MapInfo"][36]["PosY"] = 364
MoveTrap_Info[176]["MapInfo"][37] = {}
MoveTrap_Info[176]["MapInfo"][37]["MapId"] = 1002
MoveTrap_Info[176]["MapInfo"][37]["PosX"] = 307
MoveTrap_Info[176]["MapInfo"][37]["PosY"] = 369

MoveTrap_Info_NoGift[176] = {}
MoveTrap_Info_NoGift[176]["ActivetyTime"] = tActivityTime["ValentinePreheat"]["NpcTime"]
MoveTrap_Info_NoGift[176]["TrapType"] = 176
MoveTrap_Info_NoGift[176]["Look"] = 176
MoveTrap_Info_NoGift[176]["MapInfo"] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][1]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][1]["PosX"] = 344
MoveTrap_Info_NoGift[176]["MapInfo"][1]["PosY"] = 235
MoveTrap_Info_NoGift[176]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][2]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][2]["PosX"] = 326
MoveTrap_Info_NoGift[176]["MapInfo"][2]["PosY"] = 238
MoveTrap_Info_NoGift[176]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][3]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][3]["PosX"] = 305
MoveTrap_Info_NoGift[176]["MapInfo"][3]["PosY"] = 326
MoveTrap_Info_NoGift[176]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][4]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][4]["PosX"] = 336
MoveTrap_Info_NoGift[176]["MapInfo"][4]["PosY"] = 284
MoveTrap_Info_NoGift[176]["MapInfo"][5] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][5]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][5]["PosX"] = 288
MoveTrap_Info_NoGift[176]["MapInfo"][5]["PosY"] = 257
MoveTrap_Info_NoGift[176]["MapInfo"][6] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][6]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][6]["PosX"] = 288
MoveTrap_Info_NoGift[176]["MapInfo"][6]["PosY"] = 279
MoveTrap_Info_NoGift[176]["MapInfo"][7] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][7]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][7]["PosX"] = 290
MoveTrap_Info_NoGift[176]["MapInfo"][7]["PosY"] = 301
MoveTrap_Info_NoGift[176]["MapInfo"][8] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][8]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][8]["PosX"] = 313
MoveTrap_Info_NoGift[176]["MapInfo"][8]["PosY"] = 300
MoveTrap_Info_NoGift[176]["MapInfo"][9] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][9]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][9]["PosX"] = 332
MoveTrap_Info_NoGift[176]["MapInfo"][9]["PosY"] = 300
MoveTrap_Info_NoGift[176]["MapInfo"][10] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][10]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][10]["PosX"] = 333
MoveTrap_Info_NoGift[176]["MapInfo"][10]["PosY"] = 285
MoveTrap_Info_NoGift[176]["MapInfo"][11] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][11]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][11]["PosX"] = 335
MoveTrap_Info_NoGift[176]["MapInfo"][11]["PosY"] = 270
MoveTrap_Info_NoGift[176]["MapInfo"][12] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][12]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][12]["PosX"] = 333
MoveTrap_Info_NoGift[176]["MapInfo"][12]["PosY"] = 257
MoveTrap_Info_NoGift[176]["MapInfo"][13] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][13]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][13]["PosX"] = 336
MoveTrap_Info_NoGift[176]["MapInfo"][13]["PosY"] = 252
MoveTrap_Info_NoGift[176]["MapInfo"][14] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][14]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][14]["PosX"] = 351
MoveTrap_Info_NoGift[176]["MapInfo"][14]["PosY"] = 274
MoveTrap_Info_NoGift[176]["MapInfo"][15] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][15]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][15]["PosX"] = 352
MoveTrap_Info_NoGift[176]["MapInfo"][15]["PosY"] = 293
MoveTrap_Info_NoGift[176]["MapInfo"][16] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][16]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][16]["PosX"] = 350
MoveTrap_Info_NoGift[176]["MapInfo"][16]["PosY"] = 311
MoveTrap_Info_NoGift[176]["MapInfo"][17] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][17]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][17]["PosX"] = 311
MoveTrap_Info_NoGift[176]["MapInfo"][17]["PosY"] = 278
MoveTrap_Info_NoGift[176]["MapInfo"][18] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][18]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][18]["PosX"] = 269
MoveTrap_Info_NoGift[176]["MapInfo"][18]["PosY"] = 296
MoveTrap_Info_NoGift[176]["MapInfo"][19] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][19]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][19]["PosX"] = 262
MoveTrap_Info_NoGift[176]["MapInfo"][19]["PosY"] = 279
MoveTrap_Info_NoGift[176]["MapInfo"][20] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][20]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][20]["PosX"] = 262
MoveTrap_Info_NoGift[176]["MapInfo"][20]["PosY"] = 262
MoveTrap_Info_NoGift[176]["MapInfo"][21] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][21]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][21]["PosX"] = 243
MoveTrap_Info_NoGift[176]["MapInfo"][21]["PosY"] = 257
MoveTrap_Info_NoGift[176]["MapInfo"][22] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][22]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][22]["PosX"] = 225
MoveTrap_Info_NoGift[176]["MapInfo"][22]["PosY"] = 251
MoveTrap_Info_NoGift[176]["MapInfo"][23] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][23]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][23]["PosX"] = 224
MoveTrap_Info_NoGift[176]["MapInfo"][23]["PosY"] = 235
MoveTrap_Info_NoGift[176]["MapInfo"][24] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][24]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][24]["PosX"] = 227
MoveTrap_Info_NoGift[176]["MapInfo"][24]["PosY"] = 218
MoveTrap_Info_NoGift[176]["MapInfo"][25] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][25]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][25]["PosX"] = 245
MoveTrap_Info_NoGift[176]["MapInfo"][25]["PosY"] = 214
MoveTrap_Info_NoGift[176]["MapInfo"][26] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][26]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][26]["PosX"] = 267
MoveTrap_Info_NoGift[176]["MapInfo"][26]["PosY"] = 214
MoveTrap_Info_NoGift[176]["MapInfo"][27] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][27]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][27]["PosX"] = 268
MoveTrap_Info_NoGift[176]["MapInfo"][27]["PosY"] = 235
MoveTrap_Info_NoGift[176]["MapInfo"][28] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][28]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][28]["PosX"] = 274
MoveTrap_Info_NoGift[176]["MapInfo"][28]["PosY"] = 252
MoveTrap_Info_NoGift[176]["MapInfo"][29] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][29]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][29]["PosX"] = 249
MoveTrap_Info_NoGift[176]["MapInfo"][29]["PosY"] = 235
MoveTrap_Info_NoGift[176]["MapInfo"][30] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][30]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][30]["PosX"] = 303
MoveTrap_Info_NoGift[176]["MapInfo"][30]["PosY"] = 243
MoveTrap_Info_NoGift[176]["MapInfo"][31] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][31]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][31]["PosX"] = 300
MoveTrap_Info_NoGift[176]["MapInfo"][31]["PosY"] = 220
MoveTrap_Info_NoGift[176]["MapInfo"][32] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][32]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][32]["PosX"] = 348
MoveTrap_Info_NoGift[176]["MapInfo"][32]["PosY"] = 217
MoveTrap_Info_NoGift[176]["MapInfo"][33] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][33]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][33]["PosX"] = 372
MoveTrap_Info_NoGift[176]["MapInfo"][33]["PosY"] = 253
MoveTrap_Info_NoGift[176]["MapInfo"][34] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][34]["MapId"] = 10364
MoveTrap_Info_NoGift[176]["MapInfo"][34]["PosX"] = 248
MoveTrap_Info_NoGift[176]["MapInfo"][34]["PosY"] = 294
-- 市场
MoveTrap_Info_NoGift[176]["MapInfo"][35] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][35]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][35]["PosX"] = 303
MoveTrap_Info_NoGift[176]["MapInfo"][35]["PosY"] = 237
MoveTrap_Info_NoGift[176]["MapInfo"][36] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][36]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][36]["PosX"] = 332
MoveTrap_Info_NoGift[176]["MapInfo"][36]["PosY"] = 240
MoveTrap_Info_NoGift[176]["MapInfo"][37] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][37]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][37]["PosX"] = 324
MoveTrap_Info_NoGift[176]["MapInfo"][37]["PosY"] = 210
MoveTrap_Info_NoGift[176]["MapInfo"][38] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][38]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][38]["PosX"] = 295
MoveTrap_Info_NoGift[176]["MapInfo"][38]["PosY"] = 203
MoveTrap_Info_NoGift[176]["MapInfo"][39] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][39]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][39]["PosX"] = 268
MoveTrap_Info_NoGift[176]["MapInfo"][39]["PosY"] = 204
MoveTrap_Info_NoGift[176]["MapInfo"][40] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][40]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][40]["PosX"] = 248
MoveTrap_Info_NoGift[176]["MapInfo"][40]["PosY"] = 190
MoveTrap_Info_NoGift[176]["MapInfo"][41] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][41]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][41]["PosX"] = 220
MoveTrap_Info_NoGift[176]["MapInfo"][41]["PosY"] = 185
MoveTrap_Info_NoGift[176]["MapInfo"][42] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][42]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][42]["PosX"] = 196
MoveTrap_Info_NoGift[176]["MapInfo"][42]["PosY"] = 186
MoveTrap_Info_NoGift[176]["MapInfo"][43] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][43]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][43]["PosX"] = 174
MoveTrap_Info_NoGift[176]["MapInfo"][43]["PosY"] = 184
MoveTrap_Info_NoGift[176]["MapInfo"][44] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][44]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][44]["PosX"] = 152
MoveTrap_Info_NoGift[176]["MapInfo"][44]["PosY"] = 186
MoveTrap_Info_NoGift[176]["MapInfo"][45] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][45]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][45]["PosX"] = 153
MoveTrap_Info_NoGift[176]["MapInfo"][45]["PosY"] = 207
MoveTrap_Info_NoGift[176]["MapInfo"][46] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][46]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][46]["PosX"] = 123
MoveTrap_Info_NoGift[176]["MapInfo"][46]["PosY"] = 200
MoveTrap_Info_NoGift[176]["MapInfo"][47] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][47]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][47]["PosX"] = 123
MoveTrap_Info_NoGift[176]["MapInfo"][47]["PosY"] = 219
MoveTrap_Info_NoGift[176]["MapInfo"][48] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][48]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][48]["PosX"] = 123
MoveTrap_Info_NoGift[176]["MapInfo"][48]["PosY"] = 239
MoveTrap_Info_NoGift[176]["MapInfo"][49] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][49]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][49]["PosX"] = 143
MoveTrap_Info_NoGift[176]["MapInfo"][49]["PosY"] = 230
MoveTrap_Info_NoGift[176]["MapInfo"][50] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][50]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][50]["PosX"] = 160
MoveTrap_Info_NoGift[176]["MapInfo"][50]["PosY"] = 232
MoveTrap_Info_NoGift[176]["MapInfo"][51] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][51]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][51]["PosX"] = 167
MoveTrap_Info_NoGift[176]["MapInfo"][51]["PosY"] = 215
MoveTrap_Info_NoGift[176]["MapInfo"][52] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][52]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][52]["PosX"] = 153
MoveTrap_Info_NoGift[176]["MapInfo"][52]["PosY"] = 265
MoveTrap_Info_NoGift[176]["MapInfo"][53] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][53]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][53]["PosX"] = 175
MoveTrap_Info_NoGift[176]["MapInfo"][53]["PosY"] = 284
MoveTrap_Info_NoGift[176]["MapInfo"][54] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][54]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][54]["PosX"] = 203
MoveTrap_Info_NoGift[176]["MapInfo"][54]["PosY"] = 284
MoveTrap_Info_NoGift[176]["MapInfo"][55] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][55]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][55]["PosX"] = 220
MoveTrap_Info_NoGift[176]["MapInfo"][55]["PosY"] = 286
MoveTrap_Info_NoGift[176]["MapInfo"][56] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][56]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][56]["PosX"] = 239
MoveTrap_Info_NoGift[176]["MapInfo"][56]["PosY"] = 283
MoveTrap_Info_NoGift[176]["MapInfo"][57] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][57]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][57]["PosX"] = 256
MoveTrap_Info_NoGift[176]["MapInfo"][57]["PosY"] = 281
MoveTrap_Info_NoGift[176]["MapInfo"][58] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][58]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][58]["PosX"] = 254
MoveTrap_Info_NoGift[176]["MapInfo"][58]["PosY"] = 259
MoveTrap_Info_NoGift[176]["MapInfo"][59] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][59]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][59]["PosX"] = 275
MoveTrap_Info_NoGift[176]["MapInfo"][59]["PosY"] = 262
MoveTrap_Info_NoGift[176]["MapInfo"][60] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][60]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][60]["PosX"] = 295
MoveTrap_Info_NoGift[176]["MapInfo"][60]["PosY"] = 263
MoveTrap_Info_NoGift[176]["MapInfo"][61] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][61]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][61]["PosX"] = 321
MoveTrap_Info_NoGift[176]["MapInfo"][61]["PosY"] = 266
MoveTrap_Info_NoGift[176]["MapInfo"][62] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][62]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][62]["PosX"] = 272
MoveTrap_Info_NoGift[176]["MapInfo"][62]["PosY"] = 234
MoveTrap_Info_NoGift[176]["MapInfo"][63] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][63]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][63]["PosX"] = 234
MoveTrap_Info_NoGift[176]["MapInfo"][63]["PosY"] = 235
MoveTrap_Info_NoGift[176]["MapInfo"][64] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][64]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][64]["PosX"] = 202
MoveTrap_Info_NoGift[176]["MapInfo"][64]["PosY"] = 235
MoveTrap_Info_NoGift[176]["MapInfo"][65] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][65]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][65]["PosX"] = 188
MoveTrap_Info_NoGift[176]["MapInfo"][65]["PosY"] = 261
MoveTrap_Info_NoGift[176]["MapInfo"][66] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][66]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][66]["PosX"] = 221
MoveTrap_Info_NoGift[176]["MapInfo"][66]["PosY"] = 210
MoveTrap_Info_NoGift[176]["MapInfo"][67] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][67]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][67]["PosX"] = 251
MoveTrap_Info_NoGift[176]["MapInfo"][67]["PosY"] = 221
MoveTrap_Info_NoGift[176]["MapInfo"][68] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][68]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][68]["PosX"] = 188
MoveTrap_Info_NoGift[176]["MapInfo"][68]["PosY"] = 209
MoveTrap_Info_NoGift[176]["MapInfo"][69] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][69]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][69]["PosX"] = 216
MoveTrap_Info_NoGift[176]["MapInfo"][69]["PosY"] = 263
MoveTrap_Info_NoGift[176]["MapInfo"][70] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][70]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][70]["PosX"] = 233
MoveTrap_Info_NoGift[176]["MapInfo"][70]["PosY"] = 259
MoveTrap_Info_NoGift[176]["MapInfo"][71] = {}
MoveTrap_Info_NoGift[176]["MapInfo"][71]["MapId"] = 1036
MoveTrap_Info_NoGift[176]["MapInfo"][71]["PosX"] = 181
MoveTrap_Info_NoGift[176]["MapInfo"][71]["PosY"] = 239

------------------------------------------------------------------------------------
--Name： 191231[简体征服][活动脚本]全球情人节活动-部分玩法
--Creator: 林旭
--Created: 2019-12-31
------------------------------------------------------------------------------------
MoveTrap_Info[2541] = {}
MoveTrap_Info[2541]["NewActivetyTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
MoveTrap_Info[2541]["TrapType"] = 2541
MoveTrap_Info[2541]["Look"] = 2541
MoveTrap_Info[2541]["MapInfo"] = {}
MoveTrap_Info[2541]["MapInfo"][1] = {}
MoveTrap_Info[2541]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2541]["MapInfo"][1]["PosX"] = 372
MoveTrap_Info[2541]["MapInfo"][1]["PosY"] = 438
MoveTrap_Info[2541]["GlobalId"] = 54337
MoveTrap_Info[2541]["GlobalData"] = 1
MoveTrap_Info[2541]["GlobalPos"] = 0

MoveTrap_Info_NoGift[2541] = {}
MoveTrap_Info_NoGift[2541]["NewActivetyTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
MoveTrap_Info_NoGift[2541]["TrapType"] = 2541
MoveTrap_Info_NoGift[2541]["Look"] = 2541
MoveTrap_Info_NoGift[2541]["MapInfo"] = {}
MoveTrap_Info_NoGift[2541]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2541]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2541]["MapInfo"][1]["PosX"] = 248
MoveTrap_Info_NoGift[2541]["MapInfo"][1]["PosY"] = 199
MoveTrap_Info_NoGift[2541]["GlobalId"] = 54337
MoveTrap_Info_NoGift[2541]["GlobalData"] = 1
MoveTrap_Info_NoGift[2541]["GlobalPos"] = 0

MoveTrap_Info[2543] = {}
MoveTrap_Info[2543]["NewActivetyTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
MoveTrap_Info[2543]["TrapType"] = 2543
MoveTrap_Info[2543]["Look"] = 2543
MoveTrap_Info[2543]["MapInfo"] = {}
MoveTrap_Info[2543]["MapInfo"][1] = {}
MoveTrap_Info[2543]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2543]["MapInfo"][1]["PosX"] = 383
MoveTrap_Info[2543]["MapInfo"][1]["PosY"] = 446
MoveTrap_Info[2543]["GlobalId"] = 54337
MoveTrap_Info[2543]["GlobalData"] = 1
MoveTrap_Info[2543]["GlobalPos"] = 0

MoveTrap_Info_NoGift[2543] = {}
MoveTrap_Info_NoGift[2543]["NewActivetyTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
MoveTrap_Info_NoGift[2543]["TrapType"] = 2543
MoveTrap_Info_NoGift[2543]["Look"] = 2543
MoveTrap_Info_NoGift[2543]["MapInfo"] = {}
MoveTrap_Info_NoGift[2543]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2543]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2543]["MapInfo"][1]["PosX"] = 259
MoveTrap_Info_NoGift[2543]["MapInfo"][1]["PosY"] = 207
MoveTrap_Info_NoGift[2543]["GlobalId"] = 54337
MoveTrap_Info_NoGift[2543]["GlobalData"] = 1
MoveTrap_Info_NoGift[2543]["GlobalPos"] = 0

MoveTrap_Info[2544] = {}
MoveTrap_Info[2544]["NewActivetyTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
MoveTrap_Info[2544]["TrapType"] = 2544
MoveTrap_Info[2544]["Look"] = 2544
MoveTrap_Info[2544]["MapInfo"] = {}
MoveTrap_Info[2544]["MapInfo"][1] = {}
MoveTrap_Info[2544]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2544]["MapInfo"][1]["PosX"] = 371
MoveTrap_Info[2544]["MapInfo"][1]["PosY"] = 446
MoveTrap_Info[2544]["GlobalId"] = 54337
MoveTrap_Info[2544]["GlobalData"] = 1
MoveTrap_Info[2544]["GlobalPos"] = 0

MoveTrap_Info_NoGift[2544] = {}
MoveTrap_Info_NoGift[2544]["NewActivetyTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
MoveTrap_Info_NoGift[2544]["TrapType"] = 2544
MoveTrap_Info_NoGift[2544]["Look"] = 2544
MoveTrap_Info_NoGift[2544]["MapInfo"] = {}
MoveTrap_Info_NoGift[2544]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2544]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2544]["MapInfo"][1]["PosX"] = 247
MoveTrap_Info_NoGift[2544]["MapInfo"][1]["PosY"] = 207
MoveTrap_Info_NoGift[2544]["GlobalId"] = 54337
MoveTrap_Info_NoGift[2544]["GlobalData"] = 1
MoveTrap_Info_NoGift[2544]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name:		200227[简体征服][活动脚本]全球愚人节活动-藏宝图玩法(3.31-4.13)
--Creator: 	兰瑞妹
--Created:	2020/02/27
------------------------------------------------------------------------------------
MoveTrap_Info[2545] = {}
MoveTrap_Info[2545]["ActivetyTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
MoveTrap_Info[2545]["TrapType"] = 2545
MoveTrap_Info[2545]["Look"] = 2545
MoveTrap_Info[2545]["MapInfo"] = {}
MoveTrap_Info[2545]["MapInfo"][1] = {}
MoveTrap_Info[2545]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][1]["PosX"] = 307
MoveTrap_Info[2545]["MapInfo"][1]["PosY"] = 369
MoveTrap_Info[2545]["MapInfo"][2] = {}
MoveTrap_Info[2545]["MapInfo"][2]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][2]["PosX"] = 304
MoveTrap_Info[2545]["MapInfo"][2]["PosY"] = 451
MoveTrap_Info[2545]["MapInfo"][3] = {}
MoveTrap_Info[2545]["MapInfo"][3]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][3]["PosX"] = 257
MoveTrap_Info[2545]["MapInfo"][3]["PosY"] = 427
MoveTrap_Info[2545]["MapInfo"][4] = {}
MoveTrap_Info[2545]["MapInfo"][4]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][4]["PosX"] = 282
MoveTrap_Info[2545]["MapInfo"][4]["PosY"] = 413
MoveTrap_Info[2545]["MapInfo"][5] = {}
MoveTrap_Info[2545]["MapInfo"][5]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][5]["PosX"] = 412
MoveTrap_Info[2545]["MapInfo"][5]["PosY"] = 380
MoveTrap_Info[2545]["MapInfo"][6] = {}
MoveTrap_Info[2545]["MapInfo"][6]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][6]["PosX"] = 548
MoveTrap_Info[2545]["MapInfo"][6]["PosY"] = 255
MoveTrap_Info[2545]["MapInfo"][7] = {}
MoveTrap_Info[2545]["MapInfo"][7]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][7]["PosX"] = 568
MoveTrap_Info[2545]["MapInfo"][7]["PosY"] = 515
MoveTrap_Info[2545]["MapInfo"][8] = {}
MoveTrap_Info[2545]["MapInfo"][8]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][8]["PosX"] = 272
MoveTrap_Info[2545]["MapInfo"][8]["PosY"] = 686
MoveTrap_Info[2545]["MapInfo"][9] = {}
MoveTrap_Info[2545]["MapInfo"][9]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][9]["PosX"] = 501
MoveTrap_Info[2545]["MapInfo"][9]["PosY"] = 663
MoveTrap_Info[2545]["MapInfo"][10] = {}
MoveTrap_Info[2545]["MapInfo"][10]["MapId"] = 1002
MoveTrap_Info[2545]["MapInfo"][10]["PosX"] = 112
MoveTrap_Info[2545]["MapInfo"][10]["PosY"] = 519
MoveTrap_Info[2545]["MapInfo"][11] = {}
MoveTrap_Info[2545]["MapInfo"][11]["MapId"] = 1011
MoveTrap_Info[2545]["MapInfo"][11]["PosX"] = 97
MoveTrap_Info[2545]["MapInfo"][11]["PosY"] = 396
MoveTrap_Info[2545]["MapInfo"][12] = {}
MoveTrap_Info[2545]["MapInfo"][12]["MapId"] = 1011
MoveTrap_Info[2545]["MapInfo"][12]["PosX"] = 339
MoveTrap_Info[2545]["MapInfo"][12]["PosY"] = 535
MoveTrap_Info[2545]["MapInfo"][13] = {}
MoveTrap_Info[2545]["MapInfo"][13]["MapId"] = 1011
MoveTrap_Info[2545]["MapInfo"][13]["PosX"] = 335
MoveTrap_Info[2545]["MapInfo"][13]["PosY"] = 58
MoveTrap_Info[2545]["MapInfo"][14] = {}
MoveTrap_Info[2545]["MapInfo"][14]["MapId"] = 1011
MoveTrap_Info[2545]["MapInfo"][14]["PosX"] = 766
MoveTrap_Info[2545]["MapInfo"][14]["PosY"] = 452
MoveTrap_Info[2545]["MapInfo"][15] = {}
MoveTrap_Info[2545]["MapInfo"][15]["MapId"] = 1011
MoveTrap_Info[2545]["MapInfo"][15]["PosX"] = 246
MoveTrap_Info[2545]["MapInfo"][15]["PosY"] = 295
MoveTrap_Info[2545]["MapInfo"][16] = {}
MoveTrap_Info[2545]["MapInfo"][16]["MapId"] = 1000
MoveTrap_Info[2545]["MapInfo"][16]["PosX"] = 942
MoveTrap_Info[2545]["MapInfo"][16]["PosY"] = 647
MoveTrap_Info[2545]["MapInfo"][17] = {}
MoveTrap_Info[2545]["MapInfo"][17]["MapId"] = 1000
MoveTrap_Info[2545]["MapInfo"][17]["PosX"] = 566
MoveTrap_Info[2545]["MapInfo"][17]["PosY"] = 467
MoveTrap_Info[2545]["MapInfo"][18] = {}
MoveTrap_Info[2545]["MapInfo"][18]["MapId"] = 1000
MoveTrap_Info[2545]["MapInfo"][18]["PosX"] = 560
MoveTrap_Info[2545]["MapInfo"][18]["PosY"] = 360
MoveTrap_Info[2545]["MapInfo"][19] = {}
MoveTrap_Info[2545]["MapInfo"][19]["MapId"] = 1000
MoveTrap_Info[2545]["MapInfo"][19]["PosX"] = 331
MoveTrap_Info[2545]["MapInfo"][19]["PosY"] = 472
MoveTrap_Info[2545]["MapInfo"][20] = {}
MoveTrap_Info[2545]["MapInfo"][20]["MapId"] = 1000
MoveTrap_Info[2545]["MapInfo"][20]["PosX"] = 357
MoveTrap_Info[2545]["MapInfo"][20]["PosY"] = 107
MoveTrap_Info[2545]["MapInfo"][21] = {}
MoveTrap_Info[2545]["MapInfo"][21]["MapId"] = 1015
MoveTrap_Info[2545]["MapInfo"][21]["PosX"] = 920
MoveTrap_Info[2545]["MapInfo"][21]["PosY"] = 739
MoveTrap_Info[2545]["MapInfo"][22] = {}
MoveTrap_Info[2545]["MapInfo"][22]["MapId"] = 1015
MoveTrap_Info[2545]["MapInfo"][22]["PosX"] = 540
MoveTrap_Info[2545]["MapInfo"][22]["PosY"] = 633
MoveTrap_Info[2545]["MapInfo"][23] = {}
MoveTrap_Info[2545]["MapInfo"][23]["MapId"] = 1015
MoveTrap_Info[2545]["MapInfo"][23]["PosX"] = 302
MoveTrap_Info[2545]["MapInfo"][23]["PosY"] = 378
MoveTrap_Info[2545]["MapInfo"][24] = {}
MoveTrap_Info[2545]["MapInfo"][24]["MapId"] = 1015
MoveTrap_Info[2545]["MapInfo"][24]["PosX"] = 323
MoveTrap_Info[2545]["MapInfo"][24]["PosY"] = 364
MoveTrap_Info[2545]["MapInfo"][25] = {}
MoveTrap_Info[2545]["MapInfo"][25]["MapId"] = 1015
MoveTrap_Info[2545]["MapInfo"][25]["PosX"] = 350
MoveTrap_Info[2545]["MapInfo"][25]["PosY"] = 389

MoveTrap_Info_NoGift[2545] = {}
MoveTrap_Info_NoGift[2545]["ActivetyTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
MoveTrap_Info_NoGift[2545]["TrapType"] = 2545
MoveTrap_Info_NoGift[2545]["Look"] = 2545
MoveTrap_Info_NoGift[2545]["MapInfo"] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][1]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][1]["PosX"] = 238
MoveTrap_Info_NoGift[2545]["MapInfo"][1]["PosY"] = 214
MoveTrap_Info_NoGift[2545]["MapInfo"][2] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][2]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][2]["PosX"] = 272
MoveTrap_Info_NoGift[2545]["MapInfo"][2]["PosY"] = 254
MoveTrap_Info_NoGift[2545]["MapInfo"][3] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][3]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][3]["PosX"] = 296
MoveTrap_Info_NoGift[2545]["MapInfo"][3]["PosY"] = 221
MoveTrap_Info_NoGift[2545]["MapInfo"][4] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][4]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][4]["PosX"] = 281
MoveTrap_Info_NoGift[2545]["MapInfo"][4]["PosY"] = 187
MoveTrap_Info_NoGift[2545]["MapInfo"][5] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][5]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][5]["PosX"] = 281
MoveTrap_Info_NoGift[2545]["MapInfo"][5]["PosY"] = 136
MoveTrap_Info_NoGift[2545]["MapInfo"][6] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][6]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][6]["PosX"] = 441
MoveTrap_Info_NoGift[2545]["MapInfo"][6]["PosY"] = 231
MoveTrap_Info_NoGift[2545]["MapInfo"][7] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][7]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][7]["PosX"] = 166
MoveTrap_Info_NoGift[2545]["MapInfo"][7]["PosY"] = 335
MoveTrap_Info_NoGift[2545]["MapInfo"][8] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][8]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][8]["PosX"] = 509
MoveTrap_Info_NoGift[2545]["MapInfo"][8]["PosY"] = 362
MoveTrap_Info_NoGift[2545]["MapInfo"][9] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][9]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][9]["PosX"] = 570
MoveTrap_Info_NoGift[2545]["MapInfo"][9]["PosY"] = 507
MoveTrap_Info_NoGift[2545]["MapInfo"][10] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][10]["MapId"] = 10364
MoveTrap_Info_NoGift[2545]["MapInfo"][10]["PosX"] = 497
MoveTrap_Info_NoGift[2545]["MapInfo"][10]["PosY"] = 602
MoveTrap_Info_NoGift[2545]["MapInfo"][11] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][11]["MapId"] = 10365
MoveTrap_Info_NoGift[2545]["MapInfo"][11]["PosX"] = 97
MoveTrap_Info_NoGift[2545]["MapInfo"][11]["PosY"] = 396
MoveTrap_Info_NoGift[2545]["MapInfo"][12] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][12]["MapId"] = 10365
MoveTrap_Info_NoGift[2545]["MapInfo"][12]["PosX"] = 339
MoveTrap_Info_NoGift[2545]["MapInfo"][12]["PosY"] = 535
MoveTrap_Info_NoGift[2545]["MapInfo"][13] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][13]["MapId"] = 10365
MoveTrap_Info_NoGift[2545]["MapInfo"][13]["PosX"] = 335
MoveTrap_Info_NoGift[2545]["MapInfo"][13]["PosY"] = 58
MoveTrap_Info_NoGift[2545]["MapInfo"][14] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][14]["MapId"] = 10365
MoveTrap_Info_NoGift[2545]["MapInfo"][14]["PosX"] = 766
MoveTrap_Info_NoGift[2545]["MapInfo"][14]["PosY"] = 452
MoveTrap_Info_NoGift[2545]["MapInfo"][15] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][15]["MapId"] = 10365
MoveTrap_Info_NoGift[2545]["MapInfo"][15]["PosX"] = 246
MoveTrap_Info_NoGift[2545]["MapInfo"][15]["PosY"] = 295
MoveTrap_Info_NoGift[2545]["MapInfo"][16] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][16]["MapId"] = 10367
MoveTrap_Info_NoGift[2545]["MapInfo"][16]["PosX"] = 942
MoveTrap_Info_NoGift[2545]["MapInfo"][16]["PosY"] = 647
MoveTrap_Info_NoGift[2545]["MapInfo"][17] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][17]["MapId"] = 10367
MoveTrap_Info_NoGift[2545]["MapInfo"][17]["PosX"] = 566
MoveTrap_Info_NoGift[2545]["MapInfo"][17]["PosY"] = 467
MoveTrap_Info_NoGift[2545]["MapInfo"][18] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][18]["MapId"] = 10367
MoveTrap_Info_NoGift[2545]["MapInfo"][18]["PosX"] = 560
MoveTrap_Info_NoGift[2545]["MapInfo"][18]["PosY"] = 360
MoveTrap_Info_NoGift[2545]["MapInfo"][19] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][19]["MapId"] = 10367
MoveTrap_Info_NoGift[2545]["MapInfo"][19]["PosX"] = 331
MoveTrap_Info_NoGift[2545]["MapInfo"][19]["PosY"] = 472
MoveTrap_Info_NoGift[2545]["MapInfo"][20] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][20]["MapId"] = 10367
MoveTrap_Info_NoGift[2545]["MapInfo"][20]["PosX"] = 357
MoveTrap_Info_NoGift[2545]["MapInfo"][20]["PosY"] = 107
MoveTrap_Info_NoGift[2545]["MapInfo"][21] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][21]["MapId"] = 10368
MoveTrap_Info_NoGift[2545]["MapInfo"][21]["PosX"] = 920
MoveTrap_Info_NoGift[2545]["MapInfo"][21]["PosY"] = 739
MoveTrap_Info_NoGift[2545]["MapInfo"][22] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][22]["MapId"] = 10368
MoveTrap_Info_NoGift[2545]["MapInfo"][22]["PosX"] = 540
MoveTrap_Info_NoGift[2545]["MapInfo"][22]["PosY"] = 633
MoveTrap_Info_NoGift[2545]["MapInfo"][23] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][23]["MapId"] = 10368
MoveTrap_Info_NoGift[2545]["MapInfo"][23]["PosX"] = 302
MoveTrap_Info_NoGift[2545]["MapInfo"][23]["PosY"] = 378
MoveTrap_Info_NoGift[2545]["MapInfo"][24] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][24]["MapId"] = 10368
MoveTrap_Info_NoGift[2545]["MapInfo"][24]["PosX"] = 323
MoveTrap_Info_NoGift[2545]["MapInfo"][24]["PosY"] = 364
MoveTrap_Info_NoGift[2545]["MapInfo"][25] = {}
MoveTrap_Info_NoGift[2545]["MapInfo"][25]["MapId"] = 10368
MoveTrap_Info_NoGift[2545]["MapInfo"][25]["PosX"] = 350
MoveTrap_Info_NoGift[2545]["MapInfo"][25]["PosY"] = 389
------------------------------------------------------------------------------------
--Name：            200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
--Creator:      冯子鑫
--Created:     2020-02-28
------------------------------------------------------------------------------------
 MoveTrap_Info[2546] = {}
 MoveTrap_Info[2546]["ActivetyTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
 MoveTrap_Info[2546]["TrapType"] = 2546
 MoveTrap_Info[2546]["Look"] = 2546
 MoveTrap_Info[2546]["MapInfo"] = {}
 MoveTrap_Info[2546]["MapInfo"][1] = {}
 MoveTrap_Info[2546]["MapInfo"][1]["MapId"] = 1002
 MoveTrap_Info[2546]["MapInfo"][1]["PosX"] = 374
 MoveTrap_Info[2546]["MapInfo"][1]["PosY"] = 438

 MoveTrap_Info_NoGift[2546] = {}
 MoveTrap_Info_NoGift[2546]["ActivetyTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
 MoveTrap_Info_NoGift[2546]["TrapType"] = 2546
 MoveTrap_Info_NoGift[2546]["Look"] = 2546
 MoveTrap_Info_NoGift[2546]["MapInfo"] = {}
 MoveTrap_Info_NoGift[2546]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[2546]["MapInfo"][1]["MapId"] = 1036
 MoveTrap_Info_NoGift[2546]["MapInfo"][1]["PosX"] = 185
 MoveTrap_Info_NoGift[2546]["MapInfo"][1]["PosY"] = 224
 ------------------------------------------------------------------------------------
--Name：            200303[简体征服][活动脚本]全球愚人节活动-跨服漂流瓶
--Creator:      林嘉鑫
--Created:     2020-03-03
------------------------------------------------------------------------------------
 MoveTrap_Info[2549] = {}
 MoveTrap_Info[2549]["ActivetyTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
 MoveTrap_Info[2549]["TrapType"] = 2549
 MoveTrap_Info[2549]["Look"] = 2549
 MoveTrap_Info[2549]["MapInfo"] = {}
 MoveTrap_Info[2549]["MapInfo"][1] = {}
 MoveTrap_Info[2549]["MapInfo"][1]["MapId"] = 10792
 MoveTrap_Info[2549]["MapInfo"][1]["PosX"] = 300
 MoveTrap_Info[2549]["MapInfo"][1]["PosY"] = 327

 MoveTrap_Info_NoGift[2549] = {}
 MoveTrap_Info_NoGift[2549]["ActivetyTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
 MoveTrap_Info_NoGift[2549]["TrapType"] = 2549
 MoveTrap_Info_NoGift[2549]["Look"] = 2549
 MoveTrap_Info_NoGift[2549]["MapInfo"] = {}
 MoveTrap_Info_NoGift[2549]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[2549]["MapInfo"][1]["MapId"] = 10792
 MoveTrap_Info_NoGift[2549]["MapInfo"][1]["PosX"] = 300
 MoveTrap_Info_NoGift[2549]["MapInfo"][1]["PosY"] = 327
------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆-BOSS巢穴副本部分
--Creator:      冯子鑫
--Created:     2020-03-19
------------------------------------------------------------------------------------

 MoveTrap_Info[2573] = {}
 MoveTrap_Info[2573]["ActivetyTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
 MoveTrap_Info[2573]["TrapType"] = 2573
 MoveTrap_Info[2573]["Look"] = 2573
 MoveTrap_Info[2573]["MapInfo"] = {}
 MoveTrap_Info[2573]["MapInfo"][1] = {}
 MoveTrap_Info[2573]["MapInfo"][1]["MapId"] = 1002
 MoveTrap_Info[2573]["MapInfo"][1]["PosX"] = 374
 MoveTrap_Info[2573]["MapInfo"][1]["PosY"] = 439

 MoveTrap_Info_NoGift[2573] = {}
 MoveTrap_Info_NoGift[2573]["ActivetyTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
 MoveTrap_Info_NoGift[2573]["TrapType"] = 2573
 MoveTrap_Info_NoGift[2573]["Look"] = 2573
 MoveTrap_Info_NoGift[2573]["MapInfo"] = {}
 MoveTrap_Info_NoGift[2573]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[2573]["MapInfo"][1]["MapId"] = 1036
 MoveTrap_Info_NoGift[2573]["MapInfo"][1]["PosX"] = 249
 MoveTrap_Info_NoGift[2573]["MapInfo"][1]["PosY"] = 201
 ------------------------------------------------------------------------------------
--Name：            200413[简体征服][活动脚本]全球儿童节活动-互动功能和玩具交易部分
--Creator:      冯子鑫
--Created:     2020-04-13
------------------------------------------------------------------------------------

 MoveTrap_Info[2593] = {}
 MoveTrap_Info[2593]["ActivetyTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"]
 MoveTrap_Info[2593]["TrapType"] = 2593
 MoveTrap_Info[2593]["Look"] = 2593
 MoveTrap_Info[2593]["MapInfo"] = {}
 MoveTrap_Info[2593]["MapInfo"][1] = {}
 MoveTrap_Info[2593]["MapInfo"][1]["MapId"] = 1002
 MoveTrap_Info[2593]["MapInfo"][1]["PosX"] = 371
 MoveTrap_Info[2593]["MapInfo"][1]["PosY"] = 437

 MoveTrap_Info_NoGift[2593] = {}
 MoveTrap_Info_NoGift[2593]["ActivetyTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"]
 MoveTrap_Info_NoGift[2593]["TrapType"] = 2593
 MoveTrap_Info_NoGift[2593]["Look"] = 2593
 MoveTrap_Info_NoGift[2593]["MapInfo"] = {}
 MoveTrap_Info_NoGift[2593]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[2593]["MapInfo"][1]["MapId"] = 1036
 MoveTrap_Info_NoGift[2593]["MapInfo"][1]["PosX"] = 215
 MoveTrap_Info_NoGift[2593]["MapInfo"][1]["PosY"] = 165
 
 ------------------------------------------------------------------------------------
--Name：            200521[简体征服][活动脚本]全球暑期活动-地效环境部分
--Creator:      林嘉鑫
--Created:     2020-05-21
------------------------------------------------------------------------------------
MoveTrap_Info[2597] = {}
MoveTrap_Info[2597]["ActivetyTime"] = tActivityTime["SummerActive"]["ALLTime"]
MoveTrap_Info[2597]["TrapType"] = 2597
MoveTrap_Info[2597]["Look"] = 2597
MoveTrap_Info[2597]["MapInfo"] = {}
MoveTrap_Info[2597]["MapInfo"][1] = {}
MoveTrap_Info[2597]["MapInfo"][1]["MapId"] = 1002
MoveTrap_Info[2597]["MapInfo"][1]["PosX"] = 374
MoveTrap_Info[2597]["MapInfo"][1]["PosY"] = 439

MoveTrap_Info_NoGift[2597] = {}
MoveTrap_Info_NoGift[2597]["ActivetyTime"] = tActivityTime["SummerActive"]["ALLTime"]
MoveTrap_Info_NoGift[2597]["TrapType"] = 2597
MoveTrap_Info_NoGift[2597]["Look"] = 2597
MoveTrap_Info_NoGift[2597]["MapInfo"] = {}
MoveTrap_Info_NoGift[2597]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2597]["MapInfo"][1]["MapId"] = 1036
MoveTrap_Info_NoGift[2597]["MapInfo"][1]["PosX"] = 250
MoveTrap_Info_NoGift[2597]["MapInfo"][1]["PosY"] = 200

------------------------------------------------------------------------------------
--Name:		200512[简体征服][活动脚本]全球暑期活动(7.7-7.20)
--Creator: 	兰瑞妹
--Created:	2020/05/12
------------------------------------------------------------------------------------
MoveTrap_Info[2598] = {}
MoveTrap_Info[2598]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info[2598]["TrapType"] = 2598
MoveTrap_Info[2598]["Look"] = 811
MoveTrap_Info[2598]["MapInfo"] = {}
MoveTrap_Info[2598]["MapInfo"][1] = {}
MoveTrap_Info[2598]["MapInfo"][1]["MapId"] = 10863
MoveTrap_Info[2598]["MapInfo"][1]["PosX"] = 96
MoveTrap_Info[2598]["MapInfo"][1]["PosY"] = 96
MoveTrap_Info[2598]["MapInfo"][1]["PosCX"] = 3
MoveTrap_Info[2598]["MapInfo"][1]["PosCY"] = 3
MoveTrap_Info[2598]["MapInfo"][2] = {}
MoveTrap_Info[2598]["MapInfo"][2]["MapId"] = 10864
MoveTrap_Info[2598]["MapInfo"][2]["PosX"] = 148
MoveTrap_Info[2598]["MapInfo"][2]["PosY"] = 160
MoveTrap_Info[2598]["MapInfo"][2]["PosCX"] = 3
MoveTrap_Info[2598]["MapInfo"][2]["PosCY"] = 3

------------------------------------------------------------------------------------
--Name:		200512[简体征服][活动脚本]全球暑期活动(7.7-7.20)
--Creator: 	蔡颖静
--Created:	2020/05/12
------------------------------------------------------------------------------------
MoveTrap_Info[2606] = {}
MoveTrap_Info[2606]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info[2606]["TrapType"] = 2606
MoveTrap_Info[2606]["Look"] = 2082
MoveTrap_Info[2606]["MapInfo"] = {}
MoveTrap_Info[2606]["MapInfo"][1] = {}
MoveTrap_Info[2606]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info[2606]["MapInfo"][1]["PosX"] = 54
MoveTrap_Info[2606]["MapInfo"][1]["PosY"] = 83

MoveTrap_Info[2607] = {}
MoveTrap_Info[2607]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info[2607]["TrapType"] = 2607
MoveTrap_Info[2607]["Look"] = 2291
MoveTrap_Info[2607]["MapInfo"] = {}
MoveTrap_Info[2607]["MapInfo"][1] = {}
MoveTrap_Info[2607]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info[2607]["MapInfo"][1]["PosX"] = 70
MoveTrap_Info[2607]["MapInfo"][1]["PosY"] = 86

MoveTrap_Info[2608] = {}
MoveTrap_Info[2608]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info[2608]["TrapType"] = 2608
MoveTrap_Info[2608]["Look"] = 1969
MoveTrap_Info[2608]["MapInfo"] = {}
MoveTrap_Info[2608]["MapInfo"][1] = {}
MoveTrap_Info[2608]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info[2608]["MapInfo"][1]["PosX"] = 83
MoveTrap_Info[2608]["MapInfo"][1]["PosY"] = 84

MoveTrap_Info[2609] = {}
MoveTrap_Info[2609]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info[2609]["TrapType"] = 2609
MoveTrap_Info[2609]["Look"] = 2081
MoveTrap_Info[2609]["MapInfo"] = {}
MoveTrap_Info[2609]["MapInfo"][1] = {}
MoveTrap_Info[2609]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info[2609]["MapInfo"][1]["PosX"] = 88
MoveTrap_Info[2609]["MapInfo"][1]["PosY"] = 76

MoveTrap_Info[2610] = {}
MoveTrap_Info[2610]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info[2610]["TrapType"] = 2610
MoveTrap_Info[2610]["Look"] = 2083
MoveTrap_Info[2610]["MapInfo"] = {}
MoveTrap_Info[2610]["MapInfo"][1] = {}
MoveTrap_Info[2610]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info[2610]["MapInfo"][1]["PosX"] = 87
MoveTrap_Info[2610]["MapInfo"][1]["PosY"] = 67

MoveTrap_Info_NoGift[2606] = {}
MoveTrap_Info_NoGift[2606]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info_NoGift[2606]["TrapType"] = 2606
MoveTrap_Info_NoGift[2606]["Look"] = 2082
MoveTrap_Info_NoGift[2606]["MapInfo"] = {}
MoveTrap_Info_NoGift[2606]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2606]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info_NoGift[2606]["MapInfo"][1]["PosX"] = 54
MoveTrap_Info_NoGift[2606]["MapInfo"][1]["PosY"] = 83

MoveTrap_Info_NoGift[2607] = {}
MoveTrap_Info_NoGift[2607]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info_NoGift[2607]["TrapType"] = 2607
MoveTrap_Info_NoGift[2607]["Look"] = 2291
MoveTrap_Info_NoGift[2607]["MapInfo"] = {}
MoveTrap_Info_NoGift[2607]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2607]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info_NoGift[2607]["MapInfo"][1]["PosX"] = 70
MoveTrap_Info_NoGift[2607]["MapInfo"][1]["PosY"] = 86

MoveTrap_Info_NoGift[2608] = {}
MoveTrap_Info_NoGift[2608]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info_NoGift[2608]["TrapType"] = 2608
MoveTrap_Info_NoGift[2608]["Look"] = 1969
MoveTrap_Info_NoGift[2608]["MapInfo"] = {}
MoveTrap_Info_NoGift[2608]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2608]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info_NoGift[2608]["MapInfo"][1]["PosX"] = 83
MoveTrap_Info_NoGift[2608]["MapInfo"][1]["PosY"] = 84

MoveTrap_Info_NoGift[2609] = {}
MoveTrap_Info_NoGift[2609]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info_NoGift[2609]["TrapType"] = 2609
MoveTrap_Info_NoGift[2609]["Look"] = 2081
MoveTrap_Info_NoGift[2609]["MapInfo"] = {}
MoveTrap_Info_NoGift[2609]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2609]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info_NoGift[2609]["MapInfo"][1]["PosX"] = 88
MoveTrap_Info_NoGift[2609]["MapInfo"][1]["PosY"] = 76

MoveTrap_Info_NoGift[2610] = {}
MoveTrap_Info_NoGift[2610]["ActivetyTime"] = tActivityTime["SummerActive"]["ActivityTime"]
MoveTrap_Info_NoGift[2610]["TrapType"] = 2610
MoveTrap_Info_NoGift[2610]["Look"] = 2083
MoveTrap_Info_NoGift[2610]["MapInfo"] = {}
MoveTrap_Info_NoGift[2610]["MapInfo"][1] = {}
MoveTrap_Info_NoGift[2610]["MapInfo"][1]["MapId"] = 10869
MoveTrap_Info_NoGift[2610]["MapInfo"][1]["PosX"] = 87
MoveTrap_Info_NoGift[2610]["MapInfo"][1]["PosY"] = 67

------------------------------------------------------------------------------------
--Name：            200706[英文征服][活动脚本]果园狂欢玩法推广地效
--Creator:      江宇君
--Created:     2020-07-06
------------------------------------------------------------------------------------

 MoveTrap_Info[244] = {}
 MoveTrap_Info[244]["ActivetyTime"] = tActivityTime["FruitMachine"]["ActivityTime"]["MoveTrap"]
 MoveTrap_Info[244]["TrapType"] = 244
 MoveTrap_Info[244]["Look"] = 244
 MoveTrap_Info[244]["MapInfo"] = {}
 MoveTrap_Info[244]["MapInfo"][1] = {}
 MoveTrap_Info[244]["MapInfo"][1]["MapId"] = 1002
 MoveTrap_Info[244]["MapInfo"][1]["PosX"] = 381
 MoveTrap_Info[244]["MapInfo"][1]["PosY"] = 394

 MoveTrap_Info_NoGift[244] = {}
 MoveTrap_Info_NoGift[244]["ActivetyTime"] = tActivityTime["FruitMachine"]["ActivityTime"]["MoveTrap"]
 MoveTrap_Info_NoGift[244]["TrapType"] = 244
 MoveTrap_Info_NoGift[244]["Look"] = 244
 MoveTrap_Info_NoGift[244]["MapInfo"] = {}
 MoveTrap_Info_NoGift[244]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[244]["MapInfo"][1]["MapId"] = 1036
 MoveTrap_Info_NoGift[244]["MapInfo"][1]["PosX"] = 213
 MoveTrap_Info_NoGift[244]["MapInfo"][1]["PosY"] = 103
 
------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
--Creator:      冯子鑫
--Created:     2020-06-09
------------------------------------------------------------------------------------

	MoveTrap_Info[2616] = {}
	MoveTrap_Info[2616]["ActivetyTime"] = tActivityTime["PreheatingAndDraw"]["AllNpcTime"]
	MoveTrap_Info[2616]["TrapType"] = 2616
	MoveTrap_Info[2616]["Look"] = 2616
	MoveTrap_Info[2616]["MapInfo"] = {}
	MoveTrap_Info[2616]["MapInfo"][1] = {}
	MoveTrap_Info[2616]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2616]["MapInfo"][1]["PosX"] = 373
	MoveTrap_Info[2616]["MapInfo"][1]["PosY"] = 438
	
	MoveTrap_Info_NoGift[2616] = {}
	MoveTrap_Info_NoGift[2616]["ActivetyTime"] = tActivityTime["PreheatingAndDraw"]["AllNpcTime"]
	MoveTrap_Info_NoGift[2616]["TrapType"] = 2616
	MoveTrap_Info_NoGift[2616]["Look"] = 2616
	MoveTrap_Info_NoGift[2616]["MapInfo"] = {}
	MoveTrap_Info_NoGift[2616]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[2616]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[2616]["MapInfo"][1]["PosX"] = 247
	MoveTrap_Info_NoGift[2616]["MapInfo"][1]["PosY"] = 203
	
	-- MoveTrap_Info[2632] = {}
	-- MoveTrap_Info[2632]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	-- MoveTrap_Info[2632]["TrapType"] = 2632
	-- MoveTrap_Info[2632]["Look"] = 2632
	-- MoveTrap_Info[2632]["MapInfo"] = {}
	-- MoveTrap_Info[2632]["MapInfo"][1] = {}
	-- MoveTrap_Info[2632]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[2632]["MapInfo"][1]["PosX"] = 382
	-- MoveTrap_Info[2632]["MapInfo"][1]["PosY"] = 447
	
	-- MoveTrap_Info_NoGift[2632] = {}
	-- MoveTrap_Info_NoGift[2632]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	-- MoveTrap_Info_NoGift[2632]["TrapType"] = 2632
	-- MoveTrap_Info_NoGift[2632]["Look"] = 2632
	-- MoveTrap_Info_NoGift[2632]["MapInfo"] = {}
	-- MoveTrap_Info_NoGift[2632]["MapInfo"][1] = {}
	-- MoveTrap_Info_NoGift[2632]["MapInfo"][1]["MapId"] = 1036
	-- MoveTrap_Info_NoGift[2632]["MapInfo"][1]["PosX"] = 256
	-- MoveTrap_Info_NoGift[2632]["MapInfo"][1]["PosY"] = 212
------------------------------------------------------------------------------------
--Name：      200618[简体征服][活动脚本]全球七夕花魁活动（8.18-8.31）怪物部分
--Creator:      郑洵
--Created:     2020-06-18
------------------------------------------------------------------------------------
 MoveTrap_Info[245] = {}
 MoveTrap_Info[245]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info[245]["TrapType"] = 245
 MoveTrap_Info[245]["Look"] = 811
 MoveTrap_Info[245]["MapInfo"] = {}
 MoveTrap_Info[245]["MapInfo"][1] = {}
 MoveTrap_Info[245]["MapInfo"][1]["MapId"] = 10911
 MoveTrap_Info[245]["MapInfo"][1]["PosX"] = 267
 MoveTrap_Info[245]["MapInfo"][1]["PosY"] = 251

 MoveTrap_Info_NoGift[245] = {}
 MoveTrap_Info_NoGift[245]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info_NoGift[245]["TrapType"] = 245
 MoveTrap_Info_NoGift[245]["Look"] = 811
 MoveTrap_Info_NoGift[245]["MapInfo"] = {}
 MoveTrap_Info_NoGift[245]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[245]["MapInfo"][1]["MapId"] = 10911
 MoveTrap_Info_NoGift[245]["MapInfo"][1]["PosX"] = 267
 MoveTrap_Info_NoGift[245]["MapInfo"][1]["PosY"] = 251

 MoveTrap_Info[246] = {}
 MoveTrap_Info[246]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info[246]["TrapType"] = 246
 MoveTrap_Info[246]["Look"] = 811
 MoveTrap_Info[246]["MapInfo"] = {}
 MoveTrap_Info[246]["MapInfo"][1] = {}
 MoveTrap_Info[246]["MapInfo"][1]["MapId"] = 10912
 MoveTrap_Info[246]["MapInfo"][1]["PosX"] = 243
 MoveTrap_Info[246]["MapInfo"][1]["PosY"] = 93

 MoveTrap_Info_NoGift[246] = {}
 MoveTrap_Info_NoGift[246]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info_NoGift[246]["TrapType"] = 246
 MoveTrap_Info_NoGift[246]["Look"] = 811
 MoveTrap_Info_NoGift[246]["MapInfo"] = {}
 MoveTrap_Info_NoGift[246]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[246]["MapInfo"][1]["MapId"] = 10912
 MoveTrap_Info_NoGift[246]["MapInfo"][1]["PosX"] = 243
 MoveTrap_Info_NoGift[246]["MapInfo"][1]["PosY"] = 93

 MoveTrap_Info[247] = {}
 MoveTrap_Info[247]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info[247]["TrapType"] = 247
 MoveTrap_Info[247]["Look"] = 811
 MoveTrap_Info[247]["MapInfo"] = {}
 MoveTrap_Info[247]["MapInfo"][1] = {}
 MoveTrap_Info[247]["MapInfo"][1]["MapId"] = 10913
 MoveTrap_Info[247]["MapInfo"][1]["PosX"] = 163
 MoveTrap_Info[247]["MapInfo"][1]["PosY"] = 147

 MoveTrap_Info_NoGift[247] = {}
 MoveTrap_Info_NoGift[247]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info_NoGift[247]["TrapType"] = 247
 MoveTrap_Info_NoGift[247]["Look"] = 811
 MoveTrap_Info_NoGift[247]["MapInfo"] = {}
 MoveTrap_Info_NoGift[247]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[247]["MapInfo"][1]["MapId"] = 10913
 MoveTrap_Info_NoGift[247]["MapInfo"][1]["PosX"] = 163
 MoveTrap_Info_NoGift[247]["MapInfo"][1]["PosY"] = 147

 MoveTrap_Info[248] = {}
 MoveTrap_Info[248]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info[248]["TrapType"] = 248
 MoveTrap_Info[248]["Look"] = 811
 MoveTrap_Info[248]["MapInfo"] = {}
 MoveTrap_Info[248]["MapInfo"][1] = {}
 MoveTrap_Info[248]["MapInfo"][1]["MapId"] = 10914
 MoveTrap_Info[248]["MapInfo"][1]["PosX"] = 187
 MoveTrap_Info[248]["MapInfo"][1]["PosY"] = 144

 MoveTrap_Info_NoGift[248] = {}
 MoveTrap_Info_NoGift[248]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info_NoGift[248]["TrapType"] = 248
 MoveTrap_Info_NoGift[248]["Look"] = 811
 MoveTrap_Info_NoGift[248]["MapInfo"] = {}
 MoveTrap_Info_NoGift[248]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[248]["MapInfo"][1]["MapId"] = 10914
 MoveTrap_Info_NoGift[248]["MapInfo"][1]["PosX"] = 187
 MoveTrap_Info_NoGift[248]["MapInfo"][1]["PosY"] = 144

 MoveTrap_Info[249] = {}
 MoveTrap_Info[249]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info[249]["TrapType"] = 249
 MoveTrap_Info[249]["Look"] = 811
 MoveTrap_Info[249]["MapInfo"] = {}
 MoveTrap_Info[249]["MapInfo"][1] = {}
 MoveTrap_Info[249]["MapInfo"][1]["MapId"] = 10915
 MoveTrap_Info[249]["MapInfo"][1]["PosX"] = 289
 MoveTrap_Info[249]["MapInfo"][1]["PosY"] = 284

 MoveTrap_Info_NoGift[249] = {}
 MoveTrap_Info_NoGift[249]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 MoveTrap_Info_NoGift[249]["TrapType"] = 249
 MoveTrap_Info_NoGift[249]["Look"] = 811
 MoveTrap_Info_NoGift[249]["MapInfo"] = {}
 MoveTrap_Info_NoGift[249]["MapInfo"][1] = {}
 MoveTrap_Info_NoGift[249]["MapInfo"][1]["MapId"] = 10915
 MoveTrap_Info_NoGift[249]["MapInfo"][1]["PosX"] = 289
 MoveTrap_Info_NoGift[249]["MapInfo"][1]["PosY"] = 284

------------------------------------------------------------------------------------
--Name：            200628[简体征服][活动脚本]全球七夕花魁活动（剧情）
--Creator:      耿力兀
--Created:     2020-06-28
------------------------------------------------------------------------------------
	MoveTrap_Info[2617] = {}
	MoveTrap_Info[2617]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	MoveTrap_Info[2617]["TrapType"] = 2617
	MoveTrap_Info[2617]["Look"] = 1894
	MoveTrap_Info[2617]["MapInfo"] = {}
	MoveTrap_Info[2617]["MapInfo"][1] = {}
	MoveTrap_Info[2617]["MapInfo"][1]["MapId"] = 1002
	MoveTrap_Info[2617]["MapInfo"][1]["PosX"] = 372
	MoveTrap_Info[2617]["MapInfo"][1]["PosY"] = 444
	-- MoveTrap_Info[2631] = {}
	-- MoveTrap_Info[2631]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	-- MoveTrap_Info[2631]["TrapType"] = 2631
	-- MoveTrap_Info[2631]["Look"] = 2631
	-- MoveTrap_Info[2631]["MapInfo"] = {}
	-- MoveTrap_Info[2631]["MapInfo"][1] = {}
	-- MoveTrap_Info[2631]["MapInfo"][1]["MapId"] = 1002
	-- MoveTrap_Info[2631]["MapInfo"][1]["PosX"] = 373
	-- MoveTrap_Info[2631]["MapInfo"][1]["PosY"] = 448
	
	MoveTrap_Info_NoGift[2617] = {}
	MoveTrap_Info_NoGift[2617]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	MoveTrap_Info_NoGift[2617]["TrapType"] = 2617
	MoveTrap_Info_NoGift[2617]["Look"] = 1894
	MoveTrap_Info_NoGift[2617]["MapInfo"] = {}
	MoveTrap_Info_NoGift[2617]["MapInfo"][1] = {}
	MoveTrap_Info_NoGift[2617]["MapInfo"][1]["MapId"] = 1036
	MoveTrap_Info_NoGift[2617]["MapInfo"][1]["PosX"] = 246
	MoveTrap_Info_NoGift[2617]["MapInfo"][1]["PosY"] = 210

	-- MoveTrap_Info_NoGift[2631] = {}
	-- MoveTrap_Info_NoGift[2631]["ActivetyTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	-- MoveTrap_Info_NoGift[2631]["TrapType"] = 2631
	-- MoveTrap_Info_NoGift[2631]["Look"] = 2631
	-- MoveTrap_Info_NoGift[2631]["MapInfo"] = {}
	-- MoveTrap_Info_NoGift[2631]["MapInfo"][1] = {}
	-- MoveTrap_Info_NoGift[2631]["MapInfo"][1]["MapId"] = 1036
	-- MoveTrap_Info_NoGift[2631]["MapInfo"][1]["PosX"] = 247
	-- MoveTrap_Info_NoGift[2631]["MapInfo"][1]["PosY"] = 214
-------------------------------------------------------------------------------------------------------------
-- 记录陷阱的数量
local tMoveTrap_Count = {}
-- 主函数
function MoveTrap_Main()
	for i,v in pairs (MoveTrap_Info) do
		MoveTrap_Check(v)
	end
	
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		for i,v in pairs (MoveTrap_Info_NoGift) do
			MoveTrap_Check(v)
			if MoveTrap_Info[i] ~= nil then
				MoveTrap_Info[i]["IsSpecial"] = true
			end
		end
	end
end

-- 初始化
function MoveTrap_Init(nTrapType)
	if tMoveTrap_Count[nTrapType] ~= nil then
		return
	end
	
	tMoveTrap_Count[nTrapType] = {}
	tMoveTrap_Count[nTrapType]["TotalNum"] = 0
end

-- 获取陷阱的数量
function MoveTrap_GetCount(nTrapType,nMapId)
	if nTrapType == nil then
		return
	end
	
	-- 初始化
	MoveTrap_Init(nTrapType)
	
	if nMapId == nil then
		return tMoveTrap_Count[nTrapType]["TotalNum"]
	end
	if tMoveTrap_Count[nTrapType][nMapId] == nil then
		return 0
	end
	
	return tMoveTrap_Count[nTrapType][nMapId]
end

-- 设置陷阱的数量
function MoveTrap_SetCount(nTrapType,nMapId,nType)
	if nTrapType == nil then
		return
	end
	
	-- 初始化
	MoveTrap_Init(nTrapType)
	
	if tMoveTrap_Count[nTrapType][nMapId] == nil then
		tMoveTrap_Count[nTrapType][nMapId] = 0
	end
	
	-- 1表示删除陷阱数量
	if nType == 1 then
		tMoveTrap_Count[nTrapType]["TotalNum"] = tMoveTrap_Count[nTrapType]["TotalNum"] - tMoveTrap_Count[nTrapType][nMapId]
		tMoveTrap_Count[nTrapType][nMapId] = 0
	else
		tMoveTrap_Count[nTrapType][nMapId] = tMoveTrap_Count[nTrapType][nMapId] + 1
		tMoveTrap_Count[nTrapType]["TotalNum"] = tMoveTrap_Count[nTrapType]["TotalNum"] + 1
	end
end

-- 气氛布置的陷阱光效
function MoveTrap_Check(v)
	local sTime = v["ActivetyTime"]
	local nNewActivityTime = v["NewActivetyTime"]
	local nTrapType = v["TrapType"]
	local nGlobalId = v["GlobalId"]
	local nGlobalData = v["GlobalData"] or 1
	local nPos = v["GlobalPos"] or 0
	local nLook = v["Look"]
	local nOldGlobalData = v["GlobalData"] or 0
	local bCreate = false
	-- 获取陷阱个数
	-- local nCount = Get_TrapCount(nTrapType)
	local nCount = MoveTrap_GetCount(nTrapType)
		
	if sTime ~= nil then
		-- 判断活动时间
		if Sys_ChkFullTime(sTime) then
			bCreate = true
		end
	end

	if nGlobalId ~= nil then
		local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	-- 只上老服
		if v["OldSever"] ~= nil then
			if nData ~= nOldGlobalData then
				bCreate = false
			end
		elseif nData >= nGlobalData then
			if nNewActivityTime ~=nil then
				if Sys_ChkFullTime(nNewActivityTime) then
					bCreate = true
				else
					bCreate = false
				end
			else
				bCreate = true
			end
		end
	end
	
	if bCreate == false then
		if nCount > 0 then
			for a,b in pairs (v["MapInfo"]) do
				local nMapId = b["MapId"]
				local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
				
				-- 删除陷阱
				if nMapCount > 0 then
					Trap_DelMapTrap(nMapId,nTrapType)
				end
			end
		end
		
		return
	end
	
	if v["IsSpecial"] then
		if nCount > 0 then
			for a,b in pairs (v["MapInfo"]) do
				local nMapId = b["MapId"]
				local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
				
				-- 删除陷阱
				if nMapCount > 0 then
					Trap_DelMapTrap(nMapId,nTrapType)
				end
			end
		end
		
		return
	end
	
	-- 判断是否有配每天的检测时间
	if v["DayTime"] == nil then
		if nCount <= 0 then
			for a,b in pairs (v["MapInfo"]) do
				local nMapId = b["MapId"]
				local nPosX = b["PosX"]
				local nPosY = b["PosY"]
				local nPosCX = b["PosCX"] or 0
				local nPosCY = b["PosCY"] or 0
				
				-- 创建陷阱
				Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,nPosCX,nPosCY)
			end
		end
		
		return
	end

	-- 判断陷阱个数
	if nCount > 0 then
		for a,b in pairs (v["MapInfo"]) do
			local nMapId = b["MapId"]
			-- 删除陷阱
			local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
			
			-- 删除陷阱
			if nMapCount > 0 then
				Trap_DelMapTrap(nMapId,nTrapType)
			end
		end
	end
	
	for nIndex = 1,#v["DayTime"] do
		-- 判断每天的时间
		if Sys_ChkDayTime(v["DayTime"][nIndex]) then
			for a,b in pairs (v["MapInfo"]) do
				local nMapId = b["MapId"]
				local nPosX = b["PosX"]
				local nPosY = b["PosY"]
				local nPosCX = b["PosCX"] or 0
				local nPosCY = b["PosCY"] or 0
				
				-- 创建陷阱
				Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,nPosCX,nPosCY)
			end
		end
	end
end

-- 时间自检触发
-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,MoveTrap_Main)

local tMoveTrap_OnTime = {}
	tMoveTrap_OnTime["Type"] = 5
	tMoveTrap_OnTime["Func"] = MoveTrap_Main

table.insert(tSystemTime_InitialData,tMoveTrap_OnTime)