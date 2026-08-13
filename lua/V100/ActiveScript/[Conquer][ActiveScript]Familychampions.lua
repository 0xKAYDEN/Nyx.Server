-----------------------------------------------------------------------------------------------------
--Name:		190809[简体征服][活动脚本]家族争霸赛
--Purpose:		家族争霸赛
--Creator: 	洪聪敏
--Created:		2019/08/09
------------------------------------------------------------------------------------------------------
--命名前缀：Familychampions_
--logid:12001553
--luaini:41435

--动态表：
----------------------家族积分榜
--53597	data1~~data5		1~5名家族的ID
--			datastr1~~datastr5	1-5名族长名字
--53598	data1~~data5		6~10名家族的ID
--			datastr1~~datastr5	6-10名族长名字
--53599	data1~~data5		11~15名家族的ID
--			datastr1~~datastr5	11-15名族长名字
--53600	data1~~data5		16~20名家族的ID
--			datastr1~~datastr5	16-20名族长名字
--53601	data1~~data5		21~25名家族的ID
--			datastr1~~datastr5	21~25名族长名字
--53602	data1~~data5		26~30名家族的ID
--			datastr1~~datastr5	26~30名族长名字
--
-- （前30名家族累计积分记录）
--53603	data1~~data5		1~5名家族的积分
--			datastr1~~datastr5	1-5名家族的名字
--53604	data1~~data5		6~10名家族的积分
--			datastr1~~datastr5	6-10名家族的名字
--53605	data1~~data5		11~15名家族的积分
--			datastr1~~datastr5	11-15名家族的名字
--53606	data1~~data5		16~20名家族的积分
--			datastr1~~datastr5	16-20名家族的名字
--53607	data1~~data5		21~25名家族的积分
--			datastr1~~datastr5	21~25名家族的名字
--53608	data1~~data5		26~30名家族的积分
--			datastr1~~datastr5	26~30名家族的名字
-- （前30名家族服务器族长名字记录）
--53609	data1~~data5		1~5名家族族长ID
--			datastr1~~datastr5	1-5名家族所在服务器ID
--53610	data1~~data5		6~10名家族族长ID
--			datastr1~~datastr5	6-10名家族所在服务器ID
--53611	data1~~data5		11~15名家族族长ID
--			datastr1~~datastr5	11-15名家族所在服务器ID
--53612	data1~~data5		16~20名家族族长ID
--			datastr1~~datastr5	16-20名家族所在服务器ID
--53613	data1~~data5		21~25名家族族长ID
--			datastr1~~datastr5	21~25名家族所在服务器ID
--53614	data1~~data5		26~30名家族族长ID
--			datastr1~~datastr5	26~30名家族所在服务器ID






----------------------家族战绩榜
--53533	data1~~data5		1~5名家族的ID
--			datastr1~~datastr5	1-5名族长名字
--53534	data1~~data5		6~10名家族的ID
--			datastr1~~datastr5	6-10名族长名字
--53535	data1~~data5		11~15名家族的ID
--			datastr1~~datastr5	11-15名族长名字
--53536	data1~~data5		16~20名家族的ID
--			datastr1~~datastr5	16-20名族长名字
--53537	data1~~data5		21~25名家族的ID
--			datastr1~~datastr5	21~25名族长名字
--53538	data1~~data5		26~30名家族的ID
--			datastr1~~datastr5	26~30名族长名字
--
-- （前30名家族累计积分记录）
--53539	data1~~data5		1~5名家族的积分
--			datastr1~~datastr5	1-5名家族的名字
--53540	data1~~data5		6~10名家族的积分
--			datastr1~~datastr5	6-10名家族的名字
--53541	data1~~data5		11~15名家族的积分
--			datastr1~~datastr5	11-15名家族的名字
--53542	data1~~data5		16~20名家族的积分
--			datastr1~~datastr5	16-20名家族的名字
--53543	data1~~data5		21~25名家族的积分
--			datastr1~~datastr5	21~25名家族的名字
--53544	data1~~data5		26~30名家族的积分
--			datastr1~~datastr5	26~30名家族的名字
-- （前30名家族服务器族长名字记录）
--53591	data1~~data5		1~5名家族族长ID
--			datastr1~~datastr5	1-5名家族所在服务器ID
--53592	data1~~data5		6~10名家族族长ID
--			datastr1~~datastr5	6-10名家族所在服务器ID
--53593	data1~~data5		11~15名家族族长ID
--			datastr1~~datastr5	11-15名家族所在服务器ID
--53594	data1~~data5		16~20名家族族长ID
--			datastr1~~datastr5	16-20名家族所在服务器ID
--53595	data1~~data5		21~25名家族族长ID
--			datastr1~~datastr5	21~25名家族所在服务器ID
--53596	data1~~data5		26~30名家族族长ID
--			datastr1~~datastr5	26~30名家族所在服务器ID

-- #taskid
-- 35050  ：data1：记录玩家是否进入过家族赛 1: 进入准备地图  2：进入过比赛场地
--          data2 ：记录家族赛获得的积分
--          data3 : 记录玩家ID
--          data4 : 记录玩家服务器ID
--          data5 : 记录玩家家族ID
--          data6 : 记录第一名家族


-- 35051  ：data1：记录家族赛积分

------------------------------------------------------------------------------------------------------


local tFamilychampions_Cont = {}
	tFamilychampions_Cont["Web"] = "https://coevent.99.com/clanpkcompetition/"
	tFamilychampions_Cont["Level"] = 80
	tFamilychampions_Cont["Metempsychosis"] = 0
	tFamilychampions_Cont["ExploreActionId"] = 220
	
	tFamilychampions_Cont["Global"] = {}
	tFamilychampions_Cont["Global"]["Id"] = 53837
	tFamilychampions_Cont["Global"]["Pos"] = 1
	--直播通行令
	tFamilychampions_Cont["Vouchers"]= 3313676
	--宝积分
	tFamilychampions_Cont["Score"] = {}
	tFamilychampions_Cont["Score"][24783] = 5
	tFamilychampions_Cont["Score"][24784] = 10
	tFamilychampions_Cont["Score"][24785] = 50
	--怪物积分
	tFamilychampions_Cont["Score"][1148] = 500
	tFamilychampions_Cont["Score"][1149] = 300
	tFamilychampions_Cont["Score"][1150] = 10
	

	--宝箱开启时间
	tFamilychampions_Cont["BoxOpenTiem"] = {}
	tFamilychampions_Cont["BoxOpenTiem"][24783] = 1
	tFamilychampions_Cont["BoxOpenTiem"][24784] = 2
	tFamilychampions_Cont["BoxOpenTiem"][24785] = 3
	-- 跨服taskid
	tFamilychampions_Cont["TaskId"] = 35050
	
	tFamilychampions_Cont["FamilyTaskId"] = 35051
	
	tFamilychampions_Cont["ChgMap"] ={}
	tFamilychampions_Cont["ChgMap"]["MapId"] = 10591
	tFamilychampions_Cont["ChgMap"]["CellX"] = 39
	tFamilychampions_Cont["ChgMap"]["CellY"] = 45
	
	tFamilychampions_Cont["LeveMap"] ={}
	tFamilychampions_Cont["LeveMap"]["MapId"] = 1002
	tFamilychampions_Cont["LeveMap"]["CellX"] = 326
	tFamilychampions_Cont["LeveMap"]["CellY"] = 440
	tFamilychampions_Cont["LeveMapNoGif"] = {}
	tFamilychampions_Cont["LeveMapNoGif"]["MapId"] = 1036
	tFamilychampions_Cont["LeveMapNoGif"]["CellX"] = 262
	tFamilychampions_Cont["LeveMapNoGif"]["CellY"] = 160
	
	tFamilychampions_Cont["ChgPkMap"] ={}
	tFamilychampions_Cont["ChgPkMap"]["BoundX"] = 5
	tFamilychampions_Cont["ChgPkMap"]["BoundY"] = 5
	tFamilychampions_Cont["ChgPkMap"]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"]["CellX"] = 445
	tFamilychampions_Cont["ChgPkMap"]["CellY"] = 589
	
	tFamilychampions_Cont["ChgPkMap"][1] = {}
	tFamilychampions_Cont["ChgPkMap"][1]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][1]["CellX"] = 221
	tFamilychampions_Cont["ChgPkMap"][1]["CellY"] = 214
	tFamilychampions_Cont["ChgPkMap"][2] = {}
	tFamilychampions_Cont["ChgPkMap"][2]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][2]["CellX"] = 344
	tFamilychampions_Cont["ChgPkMap"][2]["CellY"] = 256
	tFamilychampions_Cont["ChgPkMap"][3] = {}
	tFamilychampions_Cont["ChgPkMap"][3]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][3]["CellX"] = 407
	tFamilychampions_Cont["ChgPkMap"][3]["CellY"] = 240
	tFamilychampions_Cont["ChgPkMap"][4] = {}
	tFamilychampions_Cont["ChgPkMap"][4]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][4]["CellX"] = 517
	tFamilychampions_Cont["ChgPkMap"][4]["CellY"] = 387
	tFamilychampions_Cont["ChgPkMap"][5] = {}
	tFamilychampions_Cont["ChgPkMap"][5]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][5]["CellX"] = 475
	tFamilychampions_Cont["ChgPkMap"][5]["CellY"] = 468
	tFamilychampions_Cont["ChgPkMap"][6] = {}
	tFamilychampions_Cont["ChgPkMap"][6]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][6]["CellX"] = 413
	tFamilychampions_Cont["ChgPkMap"][6]["CellY"] = 494
	tFamilychampions_Cont["ChgPkMap"][7] = {}
	tFamilychampions_Cont["ChgPkMap"][7]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][7]["CellX"] = 328
	tFamilychampions_Cont["ChgPkMap"][7]["CellY"] = 463
	tFamilychampions_Cont["ChgPkMap"][8] = {}
	tFamilychampions_Cont["ChgPkMap"][8]["MapId"] = 10592
	tFamilychampions_Cont["ChgPkMap"][8]["CellX"] = 274
	tFamilychampions_Cont["ChgPkMap"][8]["CellY"] = 373
	
	


	
	--PK赛地图
	tFamilychampions_Cont["PkMap"] = 10592
	
	tFamilychampions_Cont["ExistDay"] = 30
	tFamilychampions_Cont["Action"] = {}
	tFamilychampions_Cont["Action"]["Single"] = {}
	tFamilychampions_Cont["Action"]["Single"][1] = 574223
	tFamilychampions_Cont["Action"]["Single"][2] = 574225
	tFamilychampions_Cont["Action"]["Single"][3] = 574225
	tFamilychampions_Cont["Action"]["Single"][4] = 574226
	
	tFamilychampions_Cont["Action"]["LeaderSingle"] = {}
	tFamilychampions_Cont["Action"]["LeaderSingle"][1] = 574222
	tFamilychampions_Cont["Action"]["LeaderSingle"][2] = 574224
	tFamilychampions_Cont["Action"]["LeaderSingle"][3] = 574224
	
	
	tFamilychampions_Cont["Action"]["cross"] = {}
	tFamilychampions_Cont["Action"]["cross"][1] = 574228
	tFamilychampions_Cont["Action"]["cross"][2] = 574230
	tFamilychampions_Cont["Action"]["cross"][3] = 574230
	tFamilychampions_Cont["Action"]["cross"][4] = 574231
	
	tFamilychampions_Cont["Action"]["Leadercross"] = {}
	tFamilychampions_Cont["Action"]["Leadercross"][1] = 574227
	tFamilychampions_Cont["Action"]["Leadercross"][2] = 574229
	tFamilychampions_Cont["Action"]["Leadercross"][3] = 574229
	--战绩，按跨服比赛排名给
	tFamilychampions_Cont["ExploitsPoint"] = {}
	tFamilychampions_Cont["ExploitsPoint"][1] = 30
	tFamilychampions_Cont["ExploitsPoint"][2] = 29
	tFamilychampions_Cont["ExploitsPoint"][3] = 28
	tFamilychampions_Cont["ExploitsPoint"][4] = 27
	tFamilychampions_Cont["ExploitsPoint"][5] = 26
	tFamilychampions_Cont["ExploitsPoint"][6] = 25
	tFamilychampions_Cont["ExploitsPoint"][7] = 24
	tFamilychampions_Cont["ExploitsPoint"][8] = 23
	tFamilychampions_Cont["ExploitsPoint"][9] = 22
	tFamilychampions_Cont["ExploitsPoint"][10] = 21
	tFamilychampions_Cont["ExploitsPoint"][11] = 20
	tFamilychampions_Cont["ExploitsPoint"][12] = 19
	tFamilychampions_Cont["ExploitsPoint"][13] = 18
	tFamilychampions_Cont["ExploitsPoint"][14] = 17
	tFamilychampions_Cont["ExploitsPoint"][15] = 16
	tFamilychampions_Cont["ExploitsPoint"][16] = 15
	tFamilychampions_Cont["ExploitsPoint"][17] = 14
	tFamilychampions_Cont["ExploitsPoint"][18] = 13
	tFamilychampions_Cont["ExploitsPoint"][19] = 12
	tFamilychampions_Cont["ExploitsPoint"][20] = 11
	tFamilychampions_Cont["ExploitsPoint"][21] = 10
	tFamilychampions_Cont["ExploitsPoint"][22] = 9
	tFamilychampions_Cont["ExploitsPoint"][23] = 8
	tFamilychampions_Cont["ExploitsPoint"][24] = 7
	tFamilychampions_Cont["ExploitsPoint"][25] = 6
	tFamilychampions_Cont["ExploitsPoint"][26] = 5
	tFamilychampions_Cont["ExploitsPoint"][27] = 4
	tFamilychampions_Cont["ExploitsPoint"][28] = 3
	tFamilychampions_Cont["ExploitsPoint"][29] = 2
	tFamilychampions_Cont["ExploitsPoint"][30] = 1

--光环数据
	tFamilychampions_Cont["Status"] = {}
	tFamilychampions_Cont["Status"]["Id"] = 266
	tFamilychampions_Cont["Status"]["Power"] = 200
	tFamilychampions_Cont["Status"]["Secs"] = 2592000
	tFamilychampions_Cont["Status"]["Times"] = 0
	tFamilychampions_Cont["Status"]["EndTime"] = 2592000
	tFamilychampions_Cont["Status"]["Recordable"] = 1
	tFamilychampions_Cont["Status"]["RemainTime"] = 0
	
	tFamilychampions_Cont["Goto"] = "0,%d,%d,%d,12001553,1[1],0,0"
	tFamilychampions_Cont["end"] = "%d,%d,%d,%d,12001553,2[1],0,0"
	
	
	local tFamilychampions_Stc = {}
	tFamilychampions_Stc["RecordPlayer"] = {}
	tFamilychampions_Stc["RecordPlayer"]["EventType"] = 202
	tFamilychampions_Stc["RecordPlayer"]["DataType"] = 12
	tFamilychampions_Stc["RevivePlayer"] = {}
	tFamilychampions_Stc["RevivePlayer"]["EventType"] = 202
	tFamilychampions_Stc["RevivePlayer"]["DataType"] = 13
	
	local tFamilychampions_Global = {}
	tFamilychampions_Global[1] = 53597
	tFamilychampions_Global[2] = 53598
	tFamilychampions_Global[3] = 53599
	tFamilychampions_Global[4] = 53600
	tFamilychampions_Global[5] = 53601
	tFamilychampions_Global[6] = 53602
	tFamilychampions_Global[7] = 53603
	tFamilychampions_Global[8] = 53604
	tFamilychampions_Global[9] = 53605
	tFamilychampions_Global[10] = 53606
	tFamilychampions_Global[11] = 53607
	tFamilychampions_Global[12] = 53608
	tFamilychampions_Global[13] = 53609
	tFamilychampions_Global[14] = 53610
	tFamilychampions_Global[15] = 53611
	tFamilychampions_Global[16] = 53612
	tFamilychampions_Global[17] = 53613
	tFamilychampions_Global[18] = 53614
	
	--战绩动态码
	local tFamilychampions_ExploitsGlobal = {}
	tFamilychampions_ExploitsGlobal[1] = 53533
	tFamilychampions_ExploitsGlobal[2] = 53534
	tFamilychampions_ExploitsGlobal[3] = 53535
	tFamilychampions_ExploitsGlobal[4] = 53536
	tFamilychampions_ExploitsGlobal[5] = 53537
	tFamilychampions_ExploitsGlobal[6] = 53538
	tFamilychampions_ExploitsGlobal[7] = 53539
	tFamilychampions_ExploitsGlobal[8] = 53540
	tFamilychampions_ExploitsGlobal[9] = 53541
	tFamilychampions_ExploitsGlobal[10] = 53542
	tFamilychampions_ExploitsGlobal[11] = 53543
	tFamilychampions_ExploitsGlobal[12] = 53544
	tFamilychampions_ExploitsGlobal[13] = 53591
	tFamilychampions_ExploitsGlobal[14] = 53592
	tFamilychampions_ExploitsGlobal[15] = 53593
	tFamilychampions_ExploitsGlobal[16] = 53594
	tFamilychampions_ExploitsGlobal[17] = 53595
	tFamilychampions_ExploitsGlobal[18] = 53596
	
	
	--动态NPC数据
	local tFamilychampions_DyNpc = {}
	tFamilychampions_DyNpc[24783] = {}
	tFamilychampions_DyNpc[24783]["LookFace"] = 21030
	tFamilychampions_DyNpc[24783]["Action"] = 98052597
	tFamilychampions_DyNpc[24783]["ActionCross"] = 9700001
	tFamilychampions_DyNpc[24783]["MapId"] = 10592
	tFamilychampions_DyNpc[24783]["Pos"] = {}
	tFamilychampions_DyNpc[24783]["Pos"][1] = {}
	tFamilychampions_DyNpc[24783]["Pos"][1]["PosX"] = 334
	tFamilychampions_DyNpc[24783]["Pos"][1]["PosY"] = 311
	tFamilychampions_DyNpc[24783]["Pos"][2] = {}
	tFamilychampions_DyNpc[24783]["Pos"][2]["PosX"]= 325
	tFamilychampions_DyNpc[24783]["Pos"][2]["PosY"]= 311
	tFamilychampions_DyNpc[24783]["Pos"][3] = {}
	tFamilychampions_DyNpc[24783]["Pos"][3]["PosX"] = 314
	tFamilychampions_DyNpc[24783]["Pos"][3]["PosY"] = 309
	tFamilychampions_DyNpc[24783]["Pos"][4] = {}
	tFamilychampions_DyNpc[24783]["Pos"][4]["PosX"]= 316
	tFamilychampions_DyNpc[24783]["Pos"][4]["PosY"]= 316
	tFamilychampions_DyNpc[24783]["Pos"][5] = {}
	tFamilychampions_DyNpc[24783]["Pos"][5]["PosX"] = 318
	tFamilychampions_DyNpc[24783]["Pos"][5]["PosY"] = 324
	tFamilychampions_DyNpc[24783]["Pos"][6] = {}
	tFamilychampions_DyNpc[24783]["Pos"][6]["PosX"]= 319
	tFamilychampions_DyNpc[24783]["Pos"][6]["PosY"]= 332
	tFamilychampions_DyNpc[24783]["Pos"][7] = {}
	tFamilychampions_DyNpc[24783]["Pos"][7]["PosX"] = 320
	tFamilychampions_DyNpc[24783]["Pos"][7]["PosY"] = 343
	tFamilychampions_DyNpc[24783]["Pos"][8] = {}
	tFamilychampions_DyNpc[24783]["Pos"][8]["PosX"]= 320
	tFamilychampions_DyNpc[24783]["Pos"][8]["PosY"]= 351
	tFamilychampions_DyNpc[24783]["Pos"][9] = {}
	tFamilychampions_DyNpc[24783]["Pos"][9]["PosX"] = 322
	tFamilychampions_DyNpc[24783]["Pos"][9]["PosY"] = 362
	tFamilychampions_DyNpc[24783]["Pos"][10] = {}
	tFamilychampions_DyNpc[24783]["Pos"][10]["PosX"]= 325
	tFamilychampions_DyNpc[24783]["Pos"][10]["PosY"]= 371
	
	tFamilychampions_DyNpc[24784] = {}
	tFamilychampions_DyNpc[24784]["LookFace"] = 21040
	tFamilychampions_DyNpc[24784]["Action"] = 98052598
	tFamilychampions_DyNpc[24784]["ActionCross"] = 9700002
	tFamilychampions_DyNpc[24784]["MapId"] = 10592
	tFamilychampions_DyNpc[24784]["Pos"] = {}
	tFamilychampions_DyNpc[24784]["Pos"][1] = {}
	tFamilychampions_DyNpc[24784]["Pos"][1]["PosX"] = 339
	tFamilychampions_DyNpc[24784]["Pos"][1]["PosY"] = 374
	tFamilychampions_DyNpc[24784]["Pos"][2] = {}
	tFamilychampions_DyNpc[24784]["Pos"][2]["PosX"]= 349
	tFamilychampions_DyNpc[24784]["Pos"][2]["PosY"]= 379
	tFamilychampions_DyNpc[24784]["Pos"][3] = {}
	tFamilychampions_DyNpc[24784]["Pos"][3]["PosX"] = 391
	tFamilychampions_DyNpc[24784]["Pos"][3]["PosY"] = 446
	tFamilychampions_DyNpc[24784]["Pos"][4] = {}
	tFamilychampions_DyNpc[24784]["Pos"][4]["PosX"]= 408
	tFamilychampions_DyNpc[24784]["Pos"][4]["PosY"]= 443
	tFamilychampions_DyNpc[24784]["Pos"][5] = {}
	tFamilychampions_DyNpc[24784]["Pos"][5]["PosX"] = 397
	tFamilychampions_DyNpc[24784]["Pos"][5]["PosY"] = 457
	
	tFamilychampions_DyNpc[24785] = {}
	tFamilychampions_DyNpc[24785]["LookFace"] = 21050
	tFamilychampions_DyNpc[24785]["Action"] = 98052599
	tFamilychampions_DyNpc[24785]["ActionCross"] = 9700003
	tFamilychampions_DyNpc[24785]["MapId"] = 10592
	tFamilychampions_DyNpc[24785]["Pos"] = {}
	tFamilychampions_DyNpc[24785]["Pos"][1] = {}
	tFamilychampions_DyNpc[24785]["Pos"][1]["PosX"]= 389
	tFamilychampions_DyNpc[24785]["Pos"][1]["PosY"]= 457
	tFamilychampions_DyNpc[24785]["Pos"][2] = {}
	tFamilychampions_DyNpc[24785]["Pos"][2]["PosX"] = 383
	tFamilychampions_DyNpc[24785]["Pos"][2]["PosY"] = 459
	tFamilychampions_DyNpc[24785]["Pos"][3] = {}
	tFamilychampions_DyNpc[24785]["Pos"][3]["PosX"]= 367
	tFamilychampions_DyNpc[24785]["Pos"][3]["PosY"]= 459


-- 家族积分排行榜数据
local tFamilychampions_AllRank = {}
	-- (1-5名)
	tFamilychampions_AllRank[1] = {53597,1}
	tFamilychampions_AllRank[2] = {53597,2}
	tFamilychampions_AllRank[3] = {53597,3}
	tFamilychampions_AllRank[4] = {53597,4}
	tFamilychampions_AllRank[5] = {53597,5}
	-- (6-10名)
	tFamilychampions_AllRank[6] = {53598,1}
	tFamilychampions_AllRank[7] = {53598,2}
	tFamilychampions_AllRank[8] = {53598,3}
	tFamilychampions_AllRank[9] = {53598,4}
	tFamilychampions_AllRank[10] = {53598,5}
	-- (11-15名)
	tFamilychampions_AllRank[11] = {53599,1}
	tFamilychampions_AllRank[12] = {53599,2}
	tFamilychampions_AllRank[13] = {53599,3}
	tFamilychampions_AllRank[14] = {53599,4}
	tFamilychampions_AllRank[15] = {53599,5}
	-- (16-20名)
	tFamilychampions_AllRank[16] = {53600,1}
	tFamilychampions_AllRank[17] = {53600,2}
	tFamilychampions_AllRank[18] = {53600,3}
	tFamilychampions_AllRank[19] = {53600,4}
	tFamilychampions_AllRank[20] = {53600,5}
	-- (21-25名)
	tFamilychampions_AllRank[21] = {53601,1}
	tFamilychampions_AllRank[22] = {53601,2}
	tFamilychampions_AllRank[23] = {53601,3}
	tFamilychampions_AllRank[24] = {53601,4}
	tFamilychampions_AllRank[25] = {53601,5}
	-- (26-30名)
	tFamilychampions_AllRank[26] = {53602,1}
	tFamilychampions_AllRank[27] = {53602,2}
	tFamilychampions_AllRank[28] = {53602,3}
	tFamilychampions_AllRank[29] = {53602,4}
	tFamilychampions_AllRank[30] = {53602,5}
-- 排行榜积分
local tFamilychampions_RankPoint = {}
	-- (1-5名)
	tFamilychampions_RankPoint[1] = {53603,1}
	tFamilychampions_RankPoint[2] = {53603,2}
	tFamilychampions_RankPoint[3] = {53603,3}
	tFamilychampions_RankPoint[4] = {53603,4}
	tFamilychampions_RankPoint[5] = {53603,5}
	-- (6-10名)
	tFamilychampions_RankPoint[6]  = {53604,1}
	tFamilychampions_RankPoint[7]  = {53604,2}
	tFamilychampions_RankPoint[8]  = {53604,3}
	tFamilychampions_RankPoint[9]  = {53604,4}
	tFamilychampions_RankPoint[10] = {53604,5}
	-- (11-15名)
	tFamilychampions_RankPoint[11] = {53605,1}
	tFamilychampions_RankPoint[12] = {53605,2}
	tFamilychampions_RankPoint[13] = {53605,3}
	tFamilychampions_RankPoint[14] = {53605,4}
	tFamilychampions_RankPoint[15] = {53605,5}
	-- (16-20名)
	tFamilychampions_RankPoint[16] = {53606,1}
	tFamilychampions_RankPoint[17] = {53606,2}
	tFamilychampions_RankPoint[18] = {53606,3}
	tFamilychampions_RankPoint[19] = {53606,4}
	tFamilychampions_RankPoint[20] = {53606,5}
	-- (21-25名)
	tFamilychampions_RankPoint[21] = {53607,1}
	tFamilychampions_RankPoint[22] = {53607,2}
	tFamilychampions_RankPoint[23] = {53607,3}
	tFamilychampions_RankPoint[24] = {53607,4}
	tFamilychampions_RankPoint[25] = {53607,5}
	-- (26-30名)
	tFamilychampions_RankPoint[26] = {53608,1}
	tFamilychampions_RankPoint[27] = {53608,2}
	tFamilychampions_RankPoint[28] = {53608,3}
	tFamilychampions_RankPoint[29] = {53608,4}
	tFamilychampions_RankPoint[30] = {53608,5}
-- 排行榜族长服务器信息
local tFamilychampions_RankFamily = {}
	-- (1-5名)
	tFamilychampions_RankFamily[1] = {53609,1}
	tFamilychampions_RankFamily[2] = {53609,2}
	tFamilychampions_RankFamily[3] = {53609,3}
	tFamilychampions_RankFamily[4] = {53609,4}
	tFamilychampions_RankFamily[5] = {53609,5}
	-- (6-10名)
	tFamilychampions_RankFamily[6]  = {53610,1}
	tFamilychampions_RankFamily[7]  = {53610,2}
	tFamilychampions_RankFamily[8]  = {53610,3}
	tFamilychampions_RankFamily[9]  = {53610,4}
	tFamilychampions_RankFamily[10] = {53610,5}
	-- (11-15名)
	tFamilychampions_RankFamily[11] = {53611,1}
	tFamilychampions_RankFamily[12] = {53611,2}
	tFamilychampions_RankFamily[13] = {53611,3}
	tFamilychampions_RankFamily[14] = {53611,4}
	tFamilychampions_RankFamily[15] = {53611,5}
	-- (16-20名)
	tFamilychampions_RankFamily[16] = {53612,1}
	tFamilychampions_RankFamily[17] = {53612,2}
	tFamilychampions_RankFamily[18] = {53612,3}
	tFamilychampions_RankFamily[19] = {53612,4}
	tFamilychampions_RankFamily[20] = {53612,5}
	-- (21-25名)
	tFamilychampions_RankFamily[21] = {53613,1}
	tFamilychampions_RankFamily[22] = {53613,2}
	tFamilychampions_RankFamily[23] = {53613,3}
	tFamilychampions_RankFamily[24] = {53613,4}
	tFamilychampions_RankFamily[25] = {53613,5}
	-- (26-30名)
	tFamilychampions_RankFamily[26] = {53614,1}
	tFamilychampions_RankFamily[27] = {53614,2}
	tFamilychampions_RankFamily[28] = {53614,3}
	tFamilychampions_RankFamily[29] = {53614,4}
	tFamilychampions_RankFamily[30] = {53614,5}

	
----------------------------------------------------------战绩排行榜
-- 家族战绩积分排行榜数据
local tFamilychampions_ExploitsAllRank = {}
	-- (1-5名)
	tFamilychampions_ExploitsAllRank[1] = {53533,1}
	tFamilychampions_ExploitsAllRank[2] = {53533,2}
	tFamilychampions_ExploitsAllRank[3] = {53533,3}
	tFamilychampions_ExploitsAllRank[4] = {53533,4}
	tFamilychampions_ExploitsAllRank[5] = {53533,5}
	-- (6-10名)
	tFamilychampions_ExploitsAllRank[6] = {53534,1}
	tFamilychampions_ExploitsAllRank[7] = {53534,2}
	tFamilychampions_ExploitsAllRank[8] = {53534,3}
	tFamilychampions_ExploitsAllRank[9] = {53534,4}
	tFamilychampions_ExploitsAllRank[10] = {53534,5}
	-- (11-15名)
	tFamilychampions_ExploitsAllRank[11] = {53535,1}
	tFamilychampions_ExploitsAllRank[12] = {53535,2}
	tFamilychampions_ExploitsAllRank[13] = {53535,3}
	tFamilychampions_ExploitsAllRank[14] = {53535,4}
	tFamilychampions_ExploitsAllRank[15] = {53535,5}
	-- (16-20名)
	tFamilychampions_ExploitsAllRank[16] = {53536,1}
	tFamilychampions_ExploitsAllRank[17] = {53536,2}
	tFamilychampions_ExploitsAllRank[18] = {53536,3}
	tFamilychampions_ExploitsAllRank[19] = {53536,4}
	tFamilychampions_ExploitsAllRank[20] = {53536,5}
	-- (21-25名)
	tFamilychampions_ExploitsAllRank[21] = {53537,1}
	tFamilychampions_ExploitsAllRank[22] = {53537,2}
	tFamilychampions_ExploitsAllRank[23] = {53537,3}
	tFamilychampions_ExploitsAllRank[24] = {53537,4}
	tFamilychampions_ExploitsAllRank[25] = {53537,5}
	-- (26-30名)
	tFamilychampions_ExploitsAllRank[26] = {53538,1}
	tFamilychampions_ExploitsAllRank[27] = {53538,2}
	tFamilychampions_ExploitsAllRank[28] = {53538,3}
	tFamilychampions_ExploitsAllRank[29] = {53538,4}
	tFamilychampions_ExploitsAllRank[30] = {53538,5}
-- 排行榜积分
local tFamilychampions_ExploitsRankPoint = {}
	-- (1-5名)
	tFamilychampions_ExploitsRankPoint[1] = {53539,1}
	tFamilychampions_ExploitsRankPoint[2] = {53539,2}
	tFamilychampions_ExploitsRankPoint[3] = {53539,3}
	tFamilychampions_ExploitsRankPoint[4] = {53539,4}
	tFamilychampions_ExploitsRankPoint[5] = {53539,5}
	-- (6-10名)
	tFamilychampions_ExploitsRankPoint[6]  = {53540,1}
	tFamilychampions_ExploitsRankPoint[7]  = {53540,2}
	tFamilychampions_ExploitsRankPoint[8]  = {53540,3}
	tFamilychampions_ExploitsRankPoint[9]  = {53540,4}
	tFamilychampions_ExploitsRankPoint[10] = {53540,5}
	-- (11-15名)
	tFamilychampions_ExploitsRankPoint[11] = {53541,1}
	tFamilychampions_ExploitsRankPoint[12] = {53541,2}
	tFamilychampions_ExploitsRankPoint[13] = {53541,3}
	tFamilychampions_ExploitsRankPoint[14] = {53541,4}
	tFamilychampions_ExploitsRankPoint[15] = {53541,5}
	-- (16-20名)
	tFamilychampions_ExploitsRankPoint[16] = {53542,1}
	tFamilychampions_ExploitsRankPoint[17] = {53542,2}
	tFamilychampions_ExploitsRankPoint[18] = {53542,3}
	tFamilychampions_ExploitsRankPoint[19] = {53542,4}
	tFamilychampions_ExploitsRankPoint[20] = {53542,5}
	-- (21-25名)
	tFamilychampions_ExploitsRankPoint[21] = {53543,1}
	tFamilychampions_ExploitsRankPoint[22] = {53543,2}
	tFamilychampions_ExploitsRankPoint[23] = {53543,3}
	tFamilychampions_ExploitsRankPoint[24] = {53543,4}
	tFamilychampions_ExploitsRankPoint[25] = {53543,5}
	-- (26-30名)
	tFamilychampions_ExploitsRankPoint[26] = {53544,1}
	tFamilychampions_ExploitsRankPoint[27] = {53544,2}
	tFamilychampions_ExploitsRankPoint[28] = {53544,3}
	tFamilychampions_ExploitsRankPoint[29] = {53544,4}
	tFamilychampions_ExploitsRankPoint[30] = {53544,5}
-- 排行榜族长服务器信息
local tFamilychampions_ExploitsRankFamily = {}
	-- (1-5名)
	tFamilychampions_ExploitsRankFamily[1] = {53591,1}
	tFamilychampions_ExploitsRankFamily[2] = {53591,2}
	tFamilychampions_ExploitsRankFamily[3] = {53591,3}
	tFamilychampions_ExploitsRankFamily[4] = {53591,4}
	tFamilychampions_ExploitsRankFamily[5] = {53591,5}
	-- (6-10名)
	tFamilychampions_ExploitsRankFamily[6]  = {53592,1}
	tFamilychampions_ExploitsRankFamily[7]  = {53592,2}
	tFamilychampions_ExploitsRankFamily[8]  = {53592,3}
	tFamilychampions_ExploitsRankFamily[9]  = {53592,4}
	tFamilychampions_ExploitsRankFamily[10] = {53592,5}
	-- (11-15名)
	tFamilychampions_ExploitsRankFamily[11] = {53593,1}
	tFamilychampions_ExploitsRankFamily[12] = {53593,2}
	tFamilychampions_ExploitsRankFamily[13] = {53593,3}
	tFamilychampions_ExploitsRankFamily[14] = {53593,4}
	tFamilychampions_ExploitsRankFamily[15] = {53593,5}
	-- (16-20名)
	tFamilychampions_ExploitsRankFamily[16] = {53594,1}
	tFamilychampions_ExploitsRankFamily[17] = {53594,2}
	tFamilychampions_ExploitsRankFamily[18] = {53594,3}
	tFamilychampions_ExploitsRankFamily[19] = {53594,4}
	tFamilychampions_ExploitsRankFamily[20] = {53594,5}
	-- (21-25名)
	tFamilychampions_ExploitsRankFamily[21] = {53595,1}
	tFamilychampions_ExploitsRankFamily[22] = {53595,2}
	tFamilychampions_ExploitsRankFamily[23] = {53595,3}
	tFamilychampions_ExploitsRankFamily[24] = {53595,4}
	tFamilychampions_ExploitsRankFamily[25] = {53595,5}
	-- (26-30名)
	tFamilychampions_ExploitsRankFamily[26] = {53596,1}
	tFamilychampions_ExploitsRankFamily[27] = {53596,2}
	tFamilychampions_ExploitsRankFamily[28] = {53596,3}
	tFamilychampions_ExploitsRankFamily[29] = {53596,4}
	tFamilychampions_ExploitsRankFamily[30] = {53596,5}
------------------------------------------------------------------奖励
local tFamilychampions_Reward = {}
	-- ===稀有黄色神纹碎片
	-- ===索引: tFamilychampions_Reward[3313452]
	-- ===
	tFamilychampions_Reward[3313452] = {}
	tFamilychampions_Reward[3313452]["ItemChanceSum"] = 10000
	tFamilychampions_Reward[3313452]["LogId"] = 12001553
	-- 神罗天尊（+4） - 5.00%
	tFamilychampions_Reward[3313452][1] = {}
	tFamilychampions_Reward[3313452][1]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][1]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][1]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][1]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][1]["RewardItem"][1]["Id"] = 4032004 -- 神罗天征(+4)[4032004][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+4）
	tFamilychampions_Reward[3313452][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天征(+4)（赠）*1
	-- 爆炎诀（+4） - 5.00%
	tFamilychampions_Reward[3313452][2] = {}
	tFamilychampions_Reward[3313452][2]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][2]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][2]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][2]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][2]["RewardItem"][1]["Id"] = 4032104 -- 爆炎诀(+4)[4032104][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+4）
	tFamilychampions_Reward[3313452][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+4)（赠）*1
	-- 清心诀（+4） - 5.00%
	tFamilychampions_Reward[3313452][3] = {}
	tFamilychampions_Reward[3313452][3]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][3]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][3]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][3]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][3]["RewardItem"][1]["Id"] = 4032204 -- 清心诀(+4)[4032204][属性:8][叠加:0][金币:0], 【表格】清心诀（+4）
	tFamilychampions_Reward[3313452][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+4)（赠）*1
	-- 天衣无缝（+4） - 5.00%
	tFamilychampions_Reward[3313452][4] = {}
	tFamilychampions_Reward[3313452][4]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][4]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][4]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][4]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][4]["RewardItem"][1]["Id"] = 4032304 -- 天衣无缝(+4)[4032304][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+4）
	tFamilychampions_Reward[3313452][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+4)（赠）*1
	-- 祭灵诀（+4） - 1.50%
	tFamilychampions_Reward[3313452][5] = {}
	tFamilychampions_Reward[3313452][5]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][5]["ItemChance"] = 150
	tFamilychampions_Reward[3313452][5]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][5]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][5]["RewardItem"][1]["Id"] = 4032404 -- 祭灵诀(+4)[4032404][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+4）
	tFamilychampions_Reward[3313452][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+4)（赠）*1
	-- 横扫千军（+4） - 1.50%
	tFamilychampions_Reward[3313452][6] = {}
	tFamilychampions_Reward[3313452][6]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][6]["ItemChance"] = 150
	tFamilychampions_Reward[3313452][6]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][6]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][6]["RewardItem"][1]["Id"] = 4032504 -- 横扫千军(+4)[4032504][属性:8][叠加:0][金币:0], 【表格】横扫千军（+4）
	tFamilychampions_Reward[3313452][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+4)（赠）*1
	-- 涅槃重生（+4） - 5.00%
	tFamilychampions_Reward[3313452][7] = {}
	tFamilychampions_Reward[3313452][7]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][7]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][7]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][7]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][7]["RewardItem"][1]["Id"] = 4032604 -- 涅槃重生(+4)[4032604][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+4）
	tFamilychampions_Reward[3313452][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+4)（赠）*1
	-- 锋芒毕露（+4） - 1.50%
	tFamilychampions_Reward[3313452][8] = {}
	tFamilychampions_Reward[3313452][8]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][8]["ItemChance"] = 150
	tFamilychampions_Reward[3313452][8]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][8]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][8]["RewardItem"][1]["Id"] = 4032704 -- 锋芒毕露(+4)[4032704][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+4）
	tFamilychampions_Reward[3313452][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+4)（赠）*1
	-- 魂兮归来（+4） - 5.00%
	tFamilychampions_Reward[3313452][9] = {}
	tFamilychampions_Reward[3313452][9]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][9]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][9]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][9]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][9]["RewardItem"][1]["Id"] = 4032804 -- 魂兮归来(+4)[4032804][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+4）
	tFamilychampions_Reward[3313452][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+4)（赠）*1
	-- 玄武护体（+4） - 1.50%
	tFamilychampions_Reward[3313452][10] = {}
	tFamilychampions_Reward[3313452][10]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][10]["ItemChance"] = 150
	tFamilychampions_Reward[3313452][10]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][10]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][10]["RewardItem"][1]["Id"] = 4031604 -- 玄武护体(+4)[4031604][属性:8][叠加:0][金币:0], 【表格】玄武护体（+4）
	tFamilychampions_Reward[3313452][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+4)（赠）*1
	-- 攻城掠地（+4） - 5.00%
	tFamilychampions_Reward[3313452][11] = {}
	tFamilychampions_Reward[3313452][11]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][11]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][11]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][11]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][11]["RewardItem"][1]["Id"] = 4031504 -- 攻城掠地(+4)[4031504][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+4）
	tFamilychampions_Reward[3313452][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+4)（赠）*1
	-- 策马扬鞭（+4） - 5.00%
	tFamilychampions_Reward[3313452][12] = {}
	tFamilychampions_Reward[3313452][12]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][12]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][12]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][12]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][12]["RewardItem"][1]["Id"] = 4031404 -- 策马扬鞭(+4)[4031404][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+4）
	tFamilychampions_Reward[3313452][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+4)（赠）*1
	-- 乾坤护法（+4） - 5.00%
	tFamilychampions_Reward[3313452][13] = {}
	tFamilychampions_Reward[3313452][13]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][13]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][13]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][13]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][13]["RewardItem"][1]["Id"] = 4034004 -- 乾坤护法(+4)[4034004][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+4）
	tFamilychampions_Reward[3313452][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+4)（赠）*1
	-- 斗转星移（+4） - 5.00%
	tFamilychampions_Reward[3313452][14] = {}
	tFamilychampions_Reward[3313452][14]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][14]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][14]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][14]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][14]["RewardItem"][1]["Id"] = 4033904 -- 斗转星移(+4)[4033904][属性:8][叠加:0][金币:0], 【表格】斗转星移（+4）
	tFamilychampions_Reward[3313452][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+4)（赠）*1
	-- 会心一击（+4） - 5.00%
	tFamilychampions_Reward[3313452][15] = {}
	tFamilychampions_Reward[3313452][15]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][15]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][15]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][15]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][15]["RewardItem"][1]["Id"] = 4033404 -- 会心一击(+4)[4033404][属性:8][叠加:0][金币:0], 【表格】会心一击（+4）
	tFamilychampions_Reward[3313452][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+4)（赠）*1
	-- 威慑（+4） - 5.00%
	tFamilychampions_Reward[3313452][16] = {}
	tFamilychampions_Reward[3313452][16]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][16]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][16]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][16]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][16]["RewardItem"][1]["Id"] = 4034104 -- 威慑(+4)[4034104][属性:8][叠加:0][金币:0], 【表格】威慑（+4）
	tFamilychampions_Reward[3313452][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+4)（赠）*1
	-- 致命准星（+4） - 5.00%
	tFamilychampions_Reward[3313452][17] = {}
	tFamilychampions_Reward[3313452][17]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][17]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][17]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][17]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][17]["RewardItem"][1]["Id"] = 4033304 -- 致命准星(+4)[4033304][属性:8][叠加:0][金币:0], 【表格】致命准星（+4）
	tFamilychampions_Reward[3313452][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+4)（赠）*1
	-- 例无虚发（+4） - 5.00%
	tFamilychampions_Reward[3313452][18] = {}
	tFamilychampions_Reward[3313452][18]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][18]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][18]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][18]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][18]["RewardItem"][1]["Id"] = 4032904 -- 例无虚发(+4)[4032904][属性:8][叠加:0][金币:0], 【表格】例无虚发（+4）
	tFamilychampions_Reward[3313452][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+4)（赠）*1
	-- 审判（+4） - 5.00%
	tFamilychampions_Reward[3313452][19] = {}
	tFamilychampions_Reward[3313452][19]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][19]["ItemChance"] = 500
	tFamilychampions_Reward[3313452][19]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][19]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][19]["RewardItem"][1]["Id"] = 4033004 -- 审判(+4)[4033004][属性:8][叠加:0][金币:0], 【表格】审判（+4）
	tFamilychampions_Reward[3313452][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+4)（赠）*1
	-- 乾坤妙法（+4） - 2.750%
	tFamilychampions_Reward[3313452][20] = {}
	tFamilychampions_Reward[3313452][20]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][20]["ItemChance"] = 275
	tFamilychampions_Reward[3313452][20]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][20]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][20]["RewardItem"][1]["Id"] = 4034204 -- 乾坤妙法(+4)[4034204][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+4）
	tFamilychampions_Reward[3313452][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+4)（赠）*1
	-- 罡气护体（+4） - 2.750%
	tFamilychampions_Reward[3313452][21] = {}
	tFamilychampions_Reward[3313452][21]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][21]["ItemChance"] = 275
	tFamilychampions_Reward[3313452][21]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][21]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][21]["RewardItem"][1]["Id"] = 4034304 -- 罡气护体(+4)[4034304][属性:8][叠加:0][金币:0], 【表格】罡气护体（+4）
	tFamilychampions_Reward[3313452][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+4)（赠）*1
	-- 沧澜破（+4） - 2.750%
	tFamilychampions_Reward[3313452][22] = {}
	tFamilychampions_Reward[3313452][22]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][22]["ItemChance"] = 275
	tFamilychampions_Reward[3313452][22]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][22]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][22]["RewardItem"][1]["Id"] = 4034404 -- 沧澜破(+4)[4034404][属性:8][叠加:0][金币:0], 【表格】沧澜破（+4）
	tFamilychampions_Reward[3313452][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+4)（赠）*1
	-- 妙手回春（+4） - 2.750%
	tFamilychampions_Reward[3313452][23] = {}
	tFamilychampions_Reward[3313452][23]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][23]["ItemChance"] = 275
	tFamilychampions_Reward[3313452][23]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][23]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][23]["RewardItem"][1]["Id"] = 4034504 -- 妙手回春(+4)[4034504][属性:8][叠加:0][金币:0], 【表格】妙手回春（+4）
	tFamilychampions_Reward[3313452][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+4)（赠）*1
	-- 最终法伤免疫（+4） - 2.750%
	tFamilychampions_Reward[3313452][24] = {}
	tFamilychampions_Reward[3313452][24]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][24]["ItemChance"] = 275
	tFamilychampions_Reward[3313452][24]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][24]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][24]["RewardItem"][1]["Id"] = 4034604 -- 碎魔屏障(+4)[4034604][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+4）
	tFamilychampions_Reward[3313452][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+4)（赠）*1
	-- 最终物伤免疫（+4） - 2.750%
	tFamilychampions_Reward[3313452][25] = {}
	tFamilychampions_Reward[3313452][25]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][25]["ItemChance"] = 275
	tFamilychampions_Reward[3313452][25]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][25]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][25]["RewardItem"][1]["Id"] = 4034704 -- 天地化盾(+4)[4034704][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+4）
	tFamilychampions_Reward[3313452][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+4)（赠）*1
	-- 碎玄元（+4） - 2.50%
	tFamilychampions_Reward[3313452][26] = {}
	tFamilychampions_Reward[3313452][26]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][26]["ItemChance"] = 250
	tFamilychampions_Reward[3313452][26]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][26]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][26]["RewardItem"][1]["Id"] = 4034804 -- 碎玄元(+4)[4034804][属性:8][叠加:0][金币:0], 【表格】碎玄元（+4）
	tFamilychampions_Reward[3313452][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+4)（赠）*1
	-- 不死之身（+4） - 0%
	tFamilychampions_Reward[3313452][27] = {}
	tFamilychampions_Reward[3313452][27]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3313452][27]["ItemChance"] = 0
	tFamilychampions_Reward[3313452][27]["RewardItem"] = {}
	tFamilychampions_Reward[3313452][27]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313452][27]["RewardItem"][1]["Id"] = 4034904 -- 不死之身(+4)[4034904][属性:8][叠加:0][金币:0], 【表格】不死之身（+4）
	tFamilychampions_Reward[3313452][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+4)（赠）*1


	-- ===8阶灵珠包
	-- ===索引: tFamilychampions_Reward[3313454]
	-- ===删除: 3313454,1
	tFamilychampions_Reward[3313454] = {}
	tFamilychampions_Reward[3313454]["LogId"] = 12001553
	tFamilychampions_Reward[3313454]["DeleteItem"] = {}
	tFamilychampions_Reward[3313454]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313454]["DeleteItem"][1]["Id"] = 3313454 -- 【库】8阶灵珠包[属性:9]
	tFamilychampions_Reward[3313454]["RewardItem"] = {}
	tFamilychampions_Reward[3313454]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313454]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	tFamilychampions_Reward[3313454]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tFamilychampions_Reward[3313454]["RewardItem"][1]["PreciousType"] = 323 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFamilychampions_Reward[3313454]["RewardEffect"] = {}
	tFamilychampions_Reward[3313454]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313454]["RewardEffect"]["Effect"] = "angelwing"



	-- ===10阶灵珠包
	-- ===索引: tFamilychampions_Reward[3313455]
	-- ===删除: 3313455,1
	tFamilychampions_Reward[3313455] = {}
	tFamilychampions_Reward[3313455]["LogId"] = 12001553
	tFamilychampions_Reward[3313455]["DeleteItem"] = {}
	tFamilychampions_Reward[3313455]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313455]["DeleteItem"][1]["Id"] = 3313455 -- 【库】10阶灵珠包[属性:9]
	tFamilychampions_Reward[3313455]["RewardItem"] = {}
	tFamilychampions_Reward[3313455]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313455]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】8阶灵珠
	tFamilychampions_Reward[3313455]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tFamilychampions_Reward[3313455]["RewardItem"][1]["PreciousType"] = 323 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFamilychampions_Reward[3313455]["RewardEffect"] = {}
	tFamilychampions_Reward[3313455]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313455]["RewardEffect"]["Effect"] = "angelwing"



	-- ===豪华8阶灵珠包
	-- ===索引: tFamilychampions_Reward[3313456]
	-- ===删除: 3313456,1
	-- tFamilychampions_Reward[3313456] = {}
	-- tFamilychampions_Reward[3313456]["LogId"] = 12001553
	-- tFamilychampions_Reward[3313456]["DeleteItem"] = {}
	-- tFamilychampions_Reward[3313456]["DeleteItem"][1] = {}
	-- tFamilychampions_Reward[3313456]["DeleteItem"][1]["Id"] = 3313456 -- 【库】豪华8阶灵珠包[属性:9]
	-- tFamilychampions_Reward[3313456]["RewardItem"] = {}
	-- tFamilychampions_Reward[3313456]["RewardItem"][1] = {}
	-- tFamilychampions_Reward[3313456]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	-- tFamilychampions_Reward[3313456]["RewardItem"][1]["Attr"] = "0 6" -- 8阶灵珠*6
	-- tFamilychampions_Reward[3313456]["RewardItem"][1]["PreciousType"] = 323 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tFamilychampions_Reward[3313456]["RewardEffect"] = {}
	-- tFamilychampions_Reward[3313456]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tFamilychampions_Reward[3313456]["RewardEffect"]["Effect"] = "angelwing"



	-- ===豪华10阶灵珠包
	-- ===索引: tFamilychampions_Reward[3313457]
	-- ===删除: 3313457,1
	-- tFamilychampions_Reward[3313457] = {}
	-- tFamilychampions_Reward[3313457]["LogId"] = 12001553
	-- tFamilychampions_Reward[3313457]["DeleteItem"] = {}
	-- tFamilychampions_Reward[3313457]["DeleteItem"][1] = {}
	-- tFamilychampions_Reward[3313457]["DeleteItem"][1]["Id"] = 3313457 -- 【库】豪华10阶灵珠包[属性:9]
	-- tFamilychampions_Reward[3313457]["RewardItem"] = {}
	-- tFamilychampions_Reward[3313457]["RewardItem"][1] = {}
	-- tFamilychampions_Reward[3313457]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】8阶灵珠
	-- tFamilychampions_Reward[3313457]["RewardItem"][1]["Attr"] = "0 6" -- 10阶灵珠*6
	-- tFamilychampions_Reward[3313457]["RewardItem"][1]["PreciousType"] = 323 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tFamilychampions_Reward[3313457]["RewardEffect"] = {}
	-- tFamilychampions_Reward[3313457]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tFamilychampions_Reward[3313457]["RewardEffect"]["Effect"] = "angelwing"


	-- ===积分排行冠军灵珠礼盒
	-- ===索引: tFamilychampions_Reward[3313669]
	-- ===删除: 3313669,1
	tFamilychampions_Reward[3313669] = {}
	tFamilychampions_Reward[3313669]["LogId"] = 12001553
	tFamilychampions_Reward[3313669]["DeleteItem"] = {}
	tFamilychampions_Reward[3313669]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313669]["DeleteItem"][1]["Id"] = 3313669 -- 【库】 3313669 【库里没有该物品】[属性:]
	tFamilychampions_Reward[3313669]["RewardItem"] = {}
	tFamilychampions_Reward[3313669]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313669]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tFamilychampions_Reward[3313669]["RewardItem"][1]["Attr"] = "0 6" -- 10阶灵珠*6
	tFamilychampions_Reward[3313669]["RewardItem"][1]["PreciousType"] = 323 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFamilychampions_Reward[3313669]["RewardEffect"] = {}
	tFamilychampions_Reward[3313669]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313669]["RewardEffect"]["Effect"] = "angelwing"



	-- ===积分排行冠军礼盒
	-- ===索引: tFamilychampions_Reward[3313670]
	-- ===删除: 3313670,1
	tFamilychampions_Reward[3313670] = {}
	tFamilychampions_Reward[3313670]["LogId"] = 12001553
	tFamilychampions_Reward[3313670]["DeleteItem"] = {}
	tFamilychampions_Reward[3313670]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313670]["DeleteItem"][1]["Id"] = 3313670 -- 【库】 3313670 【库里没有该物品】[属性:]
	tFamilychampions_Reward[3313670]["RewardItem"] = {}
	tFamilychampions_Reward[3313670]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313670]["RewardItem"][1]["Id"] = 3313453 -- 【库】风云豪侠令[属性:9], 【表格】风云豪侠令
	tFamilychampions_Reward[3313670]["RewardItem"][1]["Attr"] = "0 1" -- 风云豪侠令*1
	tFamilychampions_Reward[3313670]["RewardItem"][2] = {}
	tFamilychampions_Reward[3313670]["RewardItem"][2]["Id"] = 3319016 -- 【库】(+6)稀有黄色神纹随机包(赠)[属性:9], 【表格】+6稀有黄色神纹可选包（赠）
	tFamilychampions_Reward[3313670]["RewardItem"][2]["Attr"] = "0 1" -- (+6)稀有黄色神纹随机包(赠)*1
	tFamilychampions_Reward[3313670]["RewardStrengthValue"] = {}
	tFamilychampions_Reward[3313670]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tFamilychampions_Reward[3313670]["RewardItem"][3] = {}
	tFamilychampions_Reward[3313670]["RewardItem"][3]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】5个通用神纹精粹包
	tFamilychampions_Reward[3313670]["RewardItem"][3]["Attr"] = "0 5" -- 通用神纹精粹包*5
	tFamilychampions_Reward[3313670]["RewardEffect"] = {}
	tFamilychampions_Reward[3313670]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313670]["RewardEffect"]["Effect"] = "angelwing"



	-- ===积分排行优胜灵珠礼盒
	-- ===索引: tFamilychampions_Reward[3313671]
	-- ===删除: 3313671,1
	tFamilychampions_Reward[3313671] = {}
	tFamilychampions_Reward[3313671]["LogId"] = 12001553
	tFamilychampions_Reward[3313671]["DeleteItem"] = {}
	tFamilychampions_Reward[3313671]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313671]["DeleteItem"][1]["Id"] = 3313671 -- 【库】 3313671 【库里没有该物品】[属性:]
	tFamilychampions_Reward[3313671]["RewardItem"] = {}
	tFamilychampions_Reward[3313671]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313671]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	tFamilychampions_Reward[3313671]["RewardItem"][1]["Attr"] = "0 6" -- 8阶灵珠*6
	tFamilychampions_Reward[3313671]["RewardItem"][1]["PreciousType"] = 323 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFamilychampions_Reward[3313671]["RewardEffect"] = {}
	tFamilychampions_Reward[3313671]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313671]["RewardEffect"]["Effect"] = "angelwing"



	-- ===积分排行优胜礼盒
	-- ===索引: tFamilychampions_Reward[3313672]
	-- ===删除: 3313672,1
	tFamilychampions_Reward[3313672] = {}
	tFamilychampions_Reward[3313672]["LogId"] = 12001553
	tFamilychampions_Reward[3313672]["DeleteItem"] = {}
	tFamilychampions_Reward[3313672]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313672]["DeleteItem"][1]["Id"] = 3313672 -- 【库】 3313672 【库里没有该物品】[属性:]
	tFamilychampions_Reward[3313672]["RewardItem"] = {}
	tFamilychampions_Reward[3313672]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313672]["RewardItem"][1]["Id"] = 3313452 -- 【库】+4稀有黄色神纹（赠）随机包[属性:9], 【表格】+4稀有黄色神纹随机包（赠）
	tFamilychampions_Reward[3313672]["RewardItem"][1]["Attr"] = "0 1" -- +4稀有黄色神纹（赠）随机包*1
	tFamilychampions_Reward[3313672]["RewardStrengthValue"] = {}
	tFamilychampions_Reward[3313672]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tFamilychampions_Reward[3313672]["RewardItem"][2] = {}
	tFamilychampions_Reward[3313672]["RewardItem"][2]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】3个通用神纹精粹包
	tFamilychampions_Reward[3313672]["RewardItem"][2]["Attr"] = "0 3" -- 通用神纹精粹包*3
	tFamilychampions_Reward[3313672]["RewardEffect"] = {}
	tFamilychampions_Reward[3313672]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313672]["RewardEffect"]["Effect"] = "angelwing"



	-- ===积分排行豪华礼盒
	-- ===索引: tFamilychampions_Reward[3313673]
	-- ===删除: 3313673,1
	tFamilychampions_Reward[3313673] = {}
	tFamilychampions_Reward[3313673]["LogId"] = 12001553
	tFamilychampions_Reward[3313673]["DeleteItem"] = {}
	tFamilychampions_Reward[3313673]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313673]["DeleteItem"][1]["Id"] = 3313673 -- 【库】 3313673 【库里没有该物品】[属性:]
	tFamilychampions_Reward[3313673]["RewardItem"] = {}
	tFamilychampions_Reward[3313673]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313673]["RewardItem"][1]["Id"] = 3319015 -- 【库】(+3)稀有黄色神纹随机包(赠)[属性:9], 【表格】+3稀有黄色神纹随机包（赠）
	tFamilychampions_Reward[3313673]["RewardItem"][1]["Attr"] = "0 1" -- (+3)稀有黄色神纹随机包(赠)*1
	tFamilychampions_Reward[3313673]["RewardStrengthValue"] = {}
	tFamilychampions_Reward[3313673]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tFamilychampions_Reward[3313673]["RewardItem"][2] = {}
	tFamilychampions_Reward[3313673]["RewardItem"][2]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】2个通用神纹精粹包
	tFamilychampions_Reward[3313673]["RewardItem"][2]["Attr"] = "0 2" -- 通用神纹精粹包*2
	tFamilychampions_Reward[3313673]["RewardEffect"] = {}
	tFamilychampions_Reward[3313673]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313673]["RewardEffect"]["Effect"] = "angelwing"



	-- ===积分排行精致礼盒
	-- ===索引: tFamilychampions_Reward[3313674]
	-- ===删除: 3313674,1
	tFamilychampions_Reward[3313674] = {}
	tFamilychampions_Reward[3313674]["LogId"] = 12001553
	tFamilychampions_Reward[3313674]["DeleteItem"] = {}
	tFamilychampions_Reward[3313674]["DeleteItem"][1] = {}
	tFamilychampions_Reward[3313674]["DeleteItem"][1]["Id"] = 3313674 -- 【库】积分排行冠军灵珠礼盒[属性:9]
	tFamilychampions_Reward[3313674]["RewardItem"] = {}
	tFamilychampions_Reward[3313674]["RewardItem"][1] = {}
	tFamilychampions_Reward[3313674]["RewardItem"][1]["Id"] = 3319013 -- 【库】(+1)稀有黄色神纹随机包(赠)[属性:9], 【表格】+1稀有黄色神纹随机包（赠）
	tFamilychampions_Reward[3313674]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tFamilychampions_Reward[3313674]["RewardStrengthValue"] = {}
	tFamilychampions_Reward[3313674]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tFamilychampions_Reward[3313674]["RewardItem"][2] = {}
	tFamilychampions_Reward[3313674]["RewardItem"][2]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】3个通用神纹精粹包
	tFamilychampions_Reward[3313674]["RewardItem"][2]["Attr"] = "0 1" -- 通用神纹精粹包*1
	tFamilychampions_Reward[3313674]["RewardEffect"] = {}
	tFamilychampions_Reward[3313674]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFamilychampions_Reward[3313674]["RewardEffect"]["Effect"] = "angelwing"


		--简体同步 (+6)稀有黄色神纹随机包(赠)
	tFamilychampions_Reward[3319016] = {}
	tFamilychampions_Reward[3319016][1] = {}
	tFamilychampions_Reward[3319016][1]["ItemChanceSum"] = 10000
	
	tFamilychampions_Reward[3319016][1][1] = {}
	tFamilychampions_Reward[3319016][1][1]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][1]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][1]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][1]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][1]["RewardItem"][1]["Id"] = 4032006
	tFamilychampions_Reward[3319016][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][1]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][2] = {}
	tFamilychampions_Reward[3319016][1][2]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][2]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][2]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][2]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][2]["RewardItem"][1]["Id"] = 4032106
	tFamilychampions_Reward[3319016][1][2]["RewardItem"][1]["Attr"] = "0 1 3 "
	tFamilychampions_Reward[3319016][1][2]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][3] = {}
	tFamilychampions_Reward[3319016][1][3]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][3]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][3]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][3]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][3]["RewardItem"][1]["Id"] = 4032206
	tFamilychampions_Reward[3319016][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][3]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][4] = {}
	tFamilychampions_Reward[3319016][1][4]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][4]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][4]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][4]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][4]["RewardItem"][1]["Id"] = 4032306
	tFamilychampions_Reward[3319016][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][4]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][5] = {}
	tFamilychampions_Reward[3319016][1][5]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][5]["ItemChance"] = 150
	tFamilychampions_Reward[3319016][1][5]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][5]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][5]["RewardItem"][1]["Id"] = 4032406
	tFamilychampions_Reward[3319016][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][5]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][6] = {}
	tFamilychampions_Reward[3319016][1][6]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][6]["ItemChance"] = 150
	tFamilychampions_Reward[3319016][1][6]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][6]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][6]["RewardItem"][1]["Id"] = 4032506
	tFamilychampions_Reward[3319016][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][6]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][7] = {}
	tFamilychampions_Reward[3319016][1][7]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][7]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][7]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][7]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][7]["RewardItem"][1]["Id"] = 4032606
	tFamilychampions_Reward[3319016][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][7]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][8] = {}
	tFamilychampions_Reward[3319016][1][8]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][8]["ItemChance"] = 150
	tFamilychampions_Reward[3319016][1][8]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][8]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][8]["RewardItem"][1]["Id"] = 4032706
	tFamilychampions_Reward[3319016][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][8]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][9] = {}
	tFamilychampions_Reward[3319016][1][9]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][9]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][9]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][9]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][9]["RewardItem"][1]["Id"] = 4032806
	tFamilychampions_Reward[3319016][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][9]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][10] = {}
	tFamilychampions_Reward[3319016][1][10]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][10]["ItemChance"] = 150
	tFamilychampions_Reward[3319016][1][10]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][10]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][10]["RewardItem"][1]["Id"] = 4031606
	tFamilychampions_Reward[3319016][1][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][10]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][11] = {}
	tFamilychampions_Reward[3319016][1][11]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][11]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][11]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][11]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][11]["RewardItem"][1]["Id"] = 4031506
	tFamilychampions_Reward[3319016][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][11]["LogId"] = 12000760
	
	tFamilychampions_Reward[3319016][1][12] = {}
	tFamilychampions_Reward[3319016][1][12]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][12]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][12]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][12]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][12]["RewardItem"][1]["Id"] = 4031406
	tFamilychampions_Reward[3319016][1][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][12]["LogId"] = 12000760
	
	--5.00%  【[4034001]- 乾坤护法(+6)*1】
	tFamilychampions_Reward[3319016][1][13] = {}
	tFamilychampions_Reward[3319016][1][13]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][13]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][13]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][13]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][13]["RewardItem"][1]["Id"] = 4034006
	tFamilychampions_Reward[3319016][1][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][13]["LogId"] = 12000760
	
	--5.00%  【[4033901]- 斗转星移(+6)*1】
	tFamilychampions_Reward[3319016][1][14] = {}
	tFamilychampions_Reward[3319016][1][14]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][14]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][14]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][14]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][14]["RewardItem"][1]["Id"] = 4033906
	tFamilychampions_Reward[3319016][1][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][14]["LogId"] = 12000760
	
	-- 5.00%  【[4033401]- 会心一击(+6)*1】
	tFamilychampions_Reward[3319016][1][15] = {}
	tFamilychampions_Reward[3319016][1][15]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][15]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][15]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][15]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][15]["RewardItem"][1]["Id"] = 4033406
	tFamilychampions_Reward[3319016][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][15]["LogId"] = 12000760
	
	--5.00%  【[4034101]- 威慑(+6)*1】
	tFamilychampions_Reward[3319016][1][16] = {}
	tFamilychampions_Reward[3319016][1][16]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][16]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][16]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][16]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][16]["RewardItem"][1]["Id"] = 4034106
	tFamilychampions_Reward[3319016][1][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][16]["LogId"] = 12000760
	
	--5.00%  【[4033301]- 致命准星(+6)*1】
	tFamilychampions_Reward[3319016][1][17] = {}
	tFamilychampions_Reward[3319016][1][17]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][17]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][17]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][17]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][17]["RewardItem"][1]["Id"] = 4033306
	tFamilychampions_Reward[3319016][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][17]["LogId"] = 12000760
	
	--5.00%  【[4032901]- 例无虚发(+6)*1】
	tFamilychampions_Reward[3319016][1][18] = {}
	tFamilychampions_Reward[3319016][1][18]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][18]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][18]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][18]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][18]["RewardItem"][1]["Id"] = 4032906
	tFamilychampions_Reward[3319016][1][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][18]["LogId"] = 12000760
	
	--5.00%  【[4033001]- 审判(+6)*1】
	tFamilychampions_Reward[3319016][1][19] = {}
	tFamilychampions_Reward[3319016][1][19]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][19]["ItemChance"] = 500
	tFamilychampions_Reward[3319016][1][19]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][19]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][19]["RewardItem"][1]["Id"] = 4033006
	tFamilychampions_Reward[3319016][1][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][19]["LogId"] = 12000760
	-- 4034206	乾坤妙法(+6)	2.75%
	tFamilychampions_Reward[3319016][1][20] = {}
	tFamilychampions_Reward[3319016][1][20]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][20]["ItemChance"] = 275
	tFamilychampions_Reward[3319016][1][20]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][20]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][20]["RewardItem"][1]["Id"] = 4034206
	tFamilychampions_Reward[3319016][1][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][20]["LogId"] = 12000760
-- 4034306	罡气护体(+6)	2.75%
	tFamilychampions_Reward[3319016][1][21] = {}
	tFamilychampions_Reward[3319016][1][21]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][21]["ItemChance"] = 275
	tFamilychampions_Reward[3319016][1][21]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][21]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][21]["RewardItem"][1]["Id"] = 4034306
	tFamilychampions_Reward[3319016][1][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][21]["LogId"] = 12000760
-- 4034406	沧澜破(+6)	2.75%
	tFamilychampions_Reward[3319016][1][22] = {}
	tFamilychampions_Reward[3319016][1][22]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][22]["ItemChance"] = 275
	tFamilychampions_Reward[3319016][1][22]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][22]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][22]["RewardItem"][1]["Id"] = 4034406
	tFamilychampions_Reward[3319016][1][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][22]["LogId"] = 12000760
-- 4034506	妙手回春(+6)	2.750%
	tFamilychampions_Reward[3319016][1][23] = {}
	tFamilychampions_Reward[3319016][1][23]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][23]["ItemChance"] = 275
	tFamilychampions_Reward[3319016][1][23]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][23]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][23]["RewardItem"][1]["Id"] = 4034506
	tFamilychampions_Reward[3319016][1][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][23]["LogId"] = 12000760
-- 4034606	最终法伤免疫(+6)	2.750%
	tFamilychampions_Reward[3319016][1][24] = {}
	tFamilychampions_Reward[3319016][1][24]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][24]["ItemChance"] = 275
	tFamilychampions_Reward[3319016][1][24]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][24]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][24]["RewardItem"][1]["Id"] = 4034606
	tFamilychampions_Reward[3319016][1][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][24]["LogId"] = 12000760
-- 4034706	最终物伤免疫(+6)	2.750%
	tFamilychampions_Reward[3319016][1][25] = {}
	tFamilychampions_Reward[3319016][1][25]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][25]["ItemChance"] = 275
	tFamilychampions_Reward[3319016][1][25]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][25]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][25]["RewardItem"][1]["Id"] = 4034706
	tFamilychampions_Reward[3319016][1][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][25]["LogId"] = 12000760
-- 4034806	碎玄元(+6)	2.50%
	tFamilychampions_Reward[3319016][1][26] = {}
	tFamilychampions_Reward[3319016][1][26]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][26]["ItemChance"] = 250
	tFamilychampions_Reward[3319016][1][26]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][26]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][26]["RewardItem"][1]["Id"] = 4034806
	tFamilychampions_Reward[3319016][1][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][26]["LogId"] = 12000760
-- 4034906	不死之身(+6)	0%
	tFamilychampions_Reward[3319016][1][27] = {}
	tFamilychampions_Reward[3319016][1][27]["RandomItemChanceType"] = 2
	tFamilychampions_Reward[3319016][1][27]["ItemChance"] = 0
	tFamilychampions_Reward[3319016][1][27]["RewardItem"] = {}
	tFamilychampions_Reward[3319016][1][27]["RewardItem"][1] = {}
	tFamilychampions_Reward[3319016][1][27]["RewardItem"][1]["Id"] = 4034906
	tFamilychampions_Reward[3319016][1][27]["RewardItem"][1]["Attr"] = "0 1 3"
	tFamilychampions_Reward[3319016][1][27]["LogId"] = 12000760
--家族积分临时表
	local tFamilychampions_Score = {}
------------------------------------------------------------------------------------------------------
--宝箱主函数
function Familychampions_OpenBox(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nUserId = Get_UserId()
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return
	end
	
	local nDyNpcId = Get_NpcId()
	local nServerId = Get_TaskDetailData4(nTaskId,nUserId)
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end

	--取玩家家族ID
	local nFamilyId = Get_TaskDetailData5(nTaskId) 
	local nLevel = tFamilychampions_Cont["Level"]
	local nMete = tFamilychampions_Cont["Metempsychosis"]
	if  nFamilyId == 0 or (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		return
	end
	
	local nSecs = tFamilychampions_Cont["BoxOpenTiem"][nNpcId]
	local sContent = tFamilychampions_Text["OpenBox"]
	local nActionId = tFamilychampions_Cont["ExploreActionId"]
	local sFunc = string.format("Familychampions_DoExplore</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nUserId,1,nDyNpcId,nServerId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end
--打开宝箱
function Familychampions_DoExplore(nNpcId,nUserId,nIndex,nDyNpcId,nServerId)
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return
	end
	
	
	if not Task_ChkTaskDetail(nFamilyTaskId, nUserId) then
		return
	end
	
	local nFamilyId = Get_TaskDetailData5(nTaskId,nUserId) 
	local nServerId = Get_TaskDetailData4(nTaskId,nUserId)
	local nNowUserId = Get_TaskDetailData3(nTaskId,nUserId)
	local nLeaderId = Get_TaskDetailData3(nFamilyTaskId,nUserId)
	
	local nItemId = tFamilychampions_Cont["Vouchers"]
	--拥有直播券，不计算分数
	if Item_ChkMulItem(nItemId,nItemId,1,0,0,nNowUserId) then
		return
	end
	
	if tFamilychampions_Score[nUserId] == nil then
		tFamilychampions_Score[nUserId] = 0
	end
	if tFamilychampions_Score[nFamilyId..nServerId] == nil then
		tFamilychampions_Score[nFamilyId..nServerId] = 0
	end
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		if  not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	end
	
	local nAddScore = tFamilychampions_Cont["Score"][nNpcId]
	local nScoreData = tFamilychampions_Score[nUserId]
	local nFamilyData = tFamilychampions_Score[nFamilyId..nServerId] 
	local nNowData = Get_TaskDetailData2(nTaskId,nUserId)
	if nIndex == 1 then 
		if Npc_DelDynaNpc(10592,"id",nDyNpcId)then
		--记录个人积分
			if nScoreData + nAddScore >= 50 then
				Task_SetTaskDetailData2(nTaskId,nNowData + nScoreData + nAddScore,nUserId)
				tFamilychampions_Score[nUserId] = 0
			else
				tFamilychampions_Score[nUserId] = nScoreData + nAddScore
			end
			
			
			--记录到家族累积
			tFamilychampions_Score[nFamilyId..nServerId] = nFamilyData + nAddScore
			Familychampions_DealRank(2,nFamilyId,nServerId,nUserId,nLeaderId)
		end
	else
		--记录个人积分
		if nScoreData + nAddScore >= 50 then
			Task_SetTaskDetailData2(nTaskId,nNowData + nScoreData + nAddScore,nUserId)
			tFamilychampions_Score[nUserId] = 0
		else
			tFamilychampions_Score[nUserId] = nScoreData + nAddScore
		end
			
		
		--记录到家族累积
		tFamilychampions_Score[nFamilyId..nServerId] = nFamilyData + nAddScore
		Familychampions_DealRank(2,nFamilyId,nServerId,nUserId,nLeaderId)
	end
	local nNowUserScore = tFamilychampions_Score[nUserId] + Get_TaskDetailData2(nTaskId,nUserId)
	local sFamilyText = tFamilychampions_Text["FamilyNoRank"]
	for nRank = 1 , #tFamilychampions_AllRank do
		local tRanking = tFamilychampions_AllRank[nRank]
		local tRankFamily = tFamilychampions_RankFamily[nRank]
		local nRankFamilyId = Get_SysDynaGlobalData(tRanking[1],tRanking[2])
		local nRankServerId = tonumber(Get_SysDynaGlobalDataStr(tRankFamily[1],tRankFamily[2]))
		if nFamilyId == nRankFamilyId and nServerId == nRankServerId then
			sFamilyText = string.format(tFamilychampions_Text["FamilyName"],nRank)
		end
	end
	
	local sText = string.format(tFamilychampions_Text["AddScore"],nAddScore,nNowUserScore,sFamilyText)
	
	if User_IsCross(nUserId) then
		sText = string.format(tFamilychampions_Text["AddScoreCross"],nAddScore,sFamilyText)
	end
	
	User_TalkChannel2005(sText,nUserId)
end
--怪物击杀函数
function Familychampions_MontDrop(nMosterId)
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nUserId = Get_UserId()
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return
	end
	
	local nServerId = Get_TaskDetailData4(nTaskId,nUserId)
	Familychampions_DoExplore(nMosterId,nUserId,2,0,nServerId)
end
--进入比赛判断是否跨服
function Familychampions_EnterCompetition(nNpcId)
	local nUserId = Get_UserId()
	local sActiveTime = ""
	local sCrossActiveTime = ""
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	local sTime = tActivityTime["Familychampions"]["championTime"]
	local sCrossTime = tActivityTime["Familychampions"]["CrosschampionTime"]
	if nData ~= nil  and nData == 1  then
		sTime = tActivityTime["Familychampions"]["EuropeanchampionTime"]
		sCrossTime = tActivityTime["Familychampions"]["EuropeanCrosschampionTime"]
	end
	
	
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	
	--取玩家家族ID
	local nFamilyId = Get_UserFamilyId(nUserId)  or 0
	local nLevel = tFamilychampions_Cont["Level"]
	local nMete = tFamilychampions_Cont["Metempsychosis"]
	--等级不足
	if  nFamilyId == 0 or (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		return
	end
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		if  not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	end
	
	if not Task_ChkTaskDetail(nFamilyTaskId, nUserId) then
		if  not Task_AddTaskDetail(nFamilyTaskId,0,nUserId) then
			return
		end
	end
	
	--判断比赛掩码，15分钟后清除，防止玩家中途退出无法参加下一场
	if Task_DetailInterval(nTaskId,15,1) then
		Task_SetTaskDetailData1(nTaskId,0,nUserId)
	end
	
	
	
	for i = 1,5 do 
		sActiveTime = sTime[i]
		sCrossActiveTime = sCrossTime[i]
		if Sys_ChkFullTime(sActiveTime) then
			--进入比赛，防止异常情况，再清一次掩码值
			Task_SetTaskDetailData2(nTaskId,0,nUserId)
			tFamilychampions_Score[nUserId] = 0
			
			Familychampions_EnterMap(nNpcId)
			return
		elseif Sys_ChkFullTime(sCrossActiveTime) then
			--进入比赛，防止异常情况，再清一次掩码值
			Task_SetTaskDetailData2(nTaskId,0,nUserId)
			tFamilychampions_Score[nUserId] = 0
			
			Familychampions_EnterCourt(nNpcId)
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--进入本服比赛场地
function Familychampions_EnterMap(nNpcId)
	local nUserId = Get_UserId()
	local nMapId = tFamilychampions_Cont["ChgMap"]["MapId"]
	local nPosX = tFamilychampions_Cont["ChgMap"]["CellX"]
	local nPosY = tFamilychampions_Cont["ChgMap"]["CellY"]
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	--取玩家家族ID
	local nFamilyId = Get_UserFamilyId(nUserId)  or 0
	--玩家服务器ID
	local nServerId = Get_UserServerId(nUserId)
	local nLeaderId = Get_FamilyLeaderId(nFamilyId)
	
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	

	local nLevel = tFamilychampions_Cont["Level"]
	local nMete = tFamilychampions_Cont["Metempsychosis"]
	if  nFamilyId == 0 or (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		return
	end
	
	--中途退出玩家，不可再进入
	if Task_ChkTaskDetail(nTaskId, nUserId) then
		if Task_ChkTaskDetailValue(nTaskId,"1",">=",2,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
	end
	
	
	if User_ChgMap(nMapId,nPosX,nPosY,0,nUserId) then
		--记录比赛状态
		Task_SetTaskDetailData1(nTaskId,1)
		--记录玩家ID
		Task_SetTaskDetailData3(nTaskId,nUserId)
		--记录玩家服务器ID
		Task_SetTaskDetailData4(nTaskId,nServerId)
		--记录玩家家族ID
		Task_SetTaskDetailData5(nTaskId,nFamilyId)
		
		--记录玩家族长ID
		Task_SetTaskDetailData3(nFamilyTaskId,nLeaderId)
		
		Sys_SaveActionFestivalLog(string.format(tFamilychampions_Cont["Goto"],nFamilyId,nUserId,nServerId),nUserId)
	end
	Sys_MsgBox(tFamilychampions_Text["EnterMap"])
end

--进入跨服
function Familychampions_EnterCourt(nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]

	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	--判断玩家是否是单独第一名
	if not Task_ChkTaskDetailValue(nTaskId,"6","==",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	--中途退出玩家，不可再进入
	if Task_ChkTaskDetail(nTaskId, nUserId) then
		if Task_ChkTaskDetailValue(nTaskId,"1",">=",2,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
	end
	
	
	
	--取玩家家族ID
	local nFamilyId = Get_UserFamilyId(nUserId)  or 0
	local nLeaderId = Get_FamilyLeaderId(nFamilyId)

	
	
	--玩家服务器ID
	local nServerId = Get_UserServerId(nUserId)
	local nLevel = tFamilychampions_Cont["Level"]
	local nMete = tFamilychampions_Cont["Metempsychosis"]
	if  nFamilyId == 0 or (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		return
	end
	
	-- 传送到指定跨服地图
	-- 获取国境服id
	-- local nChgServerId = Get_MainFrontierID()
	-- local nChgServerId = Get_FrontierServerID()
	local nChgServerId = 200
	-- 根据玩家传送到国境服
	if Sys_EnterServer(nChgServerId,12,nUserId,104) then
		--记录比赛状态
		Task_SetTaskDetailData1(nTaskId,1)
		--记录玩家ID
		Task_SetTaskDetailData3(nTaskId,nUserId)
		--记录玩家服务器ID
		Task_SetTaskDetailData4(nTaskId,nServerId)
		--记录玩家家族ID
		Task_SetTaskDetailData5(nTaskId,nFamilyId)
		
		--记录玩家族长ID
		Task_SetTaskDetailData3(nFamilyTaskId,nLeaderId)
		Sys_SaveActionFestivalLog(string.format(tFamilychampions_Cont["Goto"],nFamilyId,nUserId,nServerId),nUserId)
		Sys_MsgBox(tFamilychampions_Text["EnterMap"])
	end
end
--刷新宝箱
function Familychampions_RefreshNPC(nNpcId)
	local sName = tFamilychampions_Text["Dynanpc"]["Name"][nNpcId]
	local nLookFace = tFamilychampions_DyNpc[nNpcId]["LookFace"]
	local nAction = tFamilychampions_DyNpc[nNpcId]["Action"]
	local nMapId = tFamilychampions_DyNpc[nNpcId]["MapId"]
	local nPosX = 0
	local nPosY = 0

	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	
	for i,v in pairs (tFamilychampions_DyNpc[nNpcId]["Pos"]) do 
		nPosX = tFamilychampions_DyNpc[nNpcId]["Pos"][i]["PosX"]
		nPosY = tFamilychampions_DyNpc[nNpcId]["Pos"][i]["PosY"]
		
		Npc_CreateDynaNpc(sName, 2 ,128 ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
	end
end
function Familychampions_Exit(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tFamilychampions_Cont["LeveMap"]["MapId"]
	local nPosX = tFamilychampions_Cont["LeveMap"]["CellX"]
	local nPosY = tFamilychampions_Cont["LeveMap"]["CellY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tFamilychampions_Cont["LeveMapNoGif"]["MapId"]
		nPosX = tFamilychampions_Cont["LeveMapNoGif"]["CellX"]
		nPosY = tFamilychampions_Cont["LeveMapNoGif"]["CellY"]
		
	end
	
	-- 本服玩家
	if User_IsCross(nUserId) then
		Sys_ExitOS(nUserId)
	else
		User_ChgMap(nMapId,nPosX,nPosY,0,nUserId) 
	end

end
--比赛开始前公告
function Familychampions_TalkBroad()
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	if nData ~= nil  and nData == 1  then
		return
	end
	Sys_SystemBroadcast(tFamilychampions_Text["TalkBroad"])
end
--比赛开始前公告
function Familychampions_TalkBroadEu()
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	if nData ~= nil  and nData == 0  then
		return
	end
	
	Sys_SystemBroadcast(tFamilychampions_Text["TalkBroad"])
end


--比赛中公告
function Familychampions_MapTalkBroad()
	local nMapId = tFamilychampions_Cont["PkMap"]
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	local sFirstLeader = Get_SysDynaGlobalDataStr(tFamilychampions_AllRank[1][1],tFamilychampions_AllRank[1][2])
	local sFirstFamily= Get_SysDynaGlobalDataStr(tFamilychampions_RankPoint[1][1],tFamilychampions_RankPoint[1][2])
	local sBoard = string.format(tFamilychampions_Text["beganTalkBroad"],sFirstFamily,sFirstLeader)
	Map_SendBroadcastMsg(nMapId,sBoard)
end
--超链接寻路
function Familychampions_BroadGoto(nNpcId)
	NpcPosition_PathFind(nNpcId)
end
--传送进地图
function Familychampions_MapUserExeFunc()
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	-- 全地图玩家触发
	local nMapId = tFamilychampions_Cont["ChgMap"]["MapId"]
	local sFunc = "Familychampions_ChgUserMap"
	Map_UserExeFunc(nMapId,-1,sFunc)
	--比赛地图刷新宝箱
	for nNpcId = 24783,24785 do
		Familychampions_RefreshNPC(nNpcId)
	end
end
function Familychampions_ChgUserMap(nNowUserId)
	local nIndex = math.random(1,8)
	local nMapId = tFamilychampions_Cont["ChgPkMap"][nIndex]["MapId"] 
	local nCellX = tFamilychampions_Cont["ChgPkMap"][nIndex]["CellX"] 
	local nCellY = tFamilychampions_Cont["ChgPkMap"][nIndex]["CellY"] 
	local nBoundX = tFamilychampions_Cont["ChgPkMap"]["BoundX"]
	local nBoundY = tFamilychampions_Cont["ChgPkMap"]["BoundY"]
	local nTaskId = tFamilychampions_Cont["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId, nNowUserId) then
		return
	end
	
	--设置进入比赛标识
	Task_SetTaskDetailData1(nTaskId,2,nNowUserId)
	--强制开启pk
	-- User_SetPkType(2,nNowUserId)
	if User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundX,nBoundY,1,nNowUserId) then
		Sys_MsgBox(tFamilychampions_Text["EnterPKMap"],nil,nil,nNowUserId)
	end
end
 
--nKillUserId 杀人玩家id	nTargetId	目标玩家id
function Familychampions_KillPlayer(nKillUserId,nTargetId)
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	
	local nItemId = tFamilychampions_Cont["Vouchers"]
	local nMapId = tFamilychampions_Cont["PkMap"]
	
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	local nUserMap = Get_UserMapId(nKillUserId)
	--不在PK地图
	if nUserMap ~= tFamilychampions_Cont["PkMap"] then
		return
	end
	
	
	if not Task_ChkTaskDetail(nTaskId, nKillUserId) and Task_ChkTaskDetail(nFamilyTaskId, nKillUserId)then
		return
	end
	
	if not Task_ChkTaskDetail(nTaskId, nTargetId) and Task_ChkTaskDetail(nFamilyTaskId, nTargetId)then
		return
	end
	
	
	--杀人玩家信息
	local nKillFamilyId = Get_TaskDetailData5(nTaskId,nKillUserId) 
	local nKillServerId = Get_TaskDetailData4(nTaskId,nKillUserId)
	local nKillFamilyData = tFamilychampions_Score[nKillFamilyId..nKillServerId] or 0
	local sKillName = Get_UserName(nKillUserId)
	local nKillLeaderId = Get_TaskDetailData3(nFamilyTaskId,nKillUserId)
	local nNowKillUser = Get_TaskDetailData3(nTaskId,nKillUserId)
	--被杀玩家信息
	local nTargetFamilyId = Get_TaskDetailData5(nTaskId,nTargetId) 
	local nTargetServerId = Get_TaskDetailData4(nTaskId,nTargetId)
	local sTargetName = Get_UserName(nTargetId)
	local nTargetFamilyData = tFamilychampions_Score[nTargetFamilyId..nTargetServerId] or 0
	local nTargetLeaderId = Get_TaskDetailData3(nFamilyTaskId,nTargetId)
	local nNowTarget = Get_TaskDetailData3(nTaskId,nTargetId)

	--杀人或被杀玩家中一人拥有直播券，不计算分数
	if Item_ChkMulItem(nItemId,nItemId,1,0,0,nKillUserId) or Item_ChkMulItem(nItemId,nItemId,1,0,0,nTargetId) then
		return
	end
	
	if nKillFamilyId == nTargetFamilyId and nKillServerId == nTargetServerId then
		return
	end
	
	if tFamilychampions_Score[nTargetId] == nil then
		tFamilychampions_Score[nTargetId] = 0
	end
	
	if tFamilychampions_Score[nTargetFamilyId..nTargetServerId] == nil then
		tFamilychampions_Score[nTargetFamilyId..nTargetServerId] = 0
	end
	
	if tFamilychampions_Score[nKillFamilyId..nKillServerId] == nil then
		tFamilychampions_Score[nKillFamilyId..nKillServerId] = 0
	end
	
	if tFamilychampions_Score[nKillUserId] == nil then
		tFamilychampions_Score[nKillUserId] = 0
	end
	
	local nKillScoreData = Get_TaskDetailData2(nTaskId,nKillUserId)
	local nTargetScoreData = tFamilychampions_Score[nTargetId] + Get_TaskDetailData2(nTaskId,nTargetId)
	--第一名家族成员被杀播报
	local nFirstFamilyId = Get_SysDynaGlobalData1(tFamilychampions_AllRank[1][1],tFamilychampions_AllRank[1][2])
	if nFirstFamilyId == nTargetFamilyId then
		local sText = string.format(tFamilychampions_Text["Bekill"],sTargetName,sKillName)
		Map_SendBroadcastMsg(nMapId,sText)
	end
	
	
	--被杀玩家没有积分小于10点。10%不足1，不扣
	if nTargetScoreData < 10 then
		return
	else
		local nAddScore = math.floor(nTargetScoreData * 0.1)
		--杀人者增加积分
		Task_SetTaskDetailData2(nTaskId,nKillScoreData + nAddScore,nKillUserId)
		--增加家族积分
		tFamilychampions_Score[nKillFamilyId..nKillServerId] = nKillFamilyData + nAddScore
		--被杀者减少积分
		tFamilychampions_Score[nTargetId] = 0
		Task_SetTaskDetailData2(nTaskId,nTargetScoreData - nAddScore,nTargetId)
		tFamilychampions_Score[nTargetFamilyId..nTargetServerId] = nTargetFamilyData - nAddScore
		
		local nNowKillData = tFamilychampions_Score[nKillUserId] + Get_TaskDetailData2(nTaskId,nKillUserId)
		local nNowTargetData = tFamilychampions_Score[nTargetId] + Get_TaskDetailData2(nTaskId,nTargetId)

		local sFamilyText = tFamilychampions_Text["FamilyNoRank"]
		for nRank = 1 , #tFamilychampions_AllRank do
			local tRanking = tFamilychampions_AllRank[nRank]
			local tRankFamily = tFamilychampions_RankFamily[nRank]
			
			local nRankServerId = tonumber(Get_SysDynaGlobalDataStr(tRankFamily[1],tRankFamily[2]))
			local nRankFamilyId = Get_SysDynaGlobalData(tRanking[1],tRanking[2])
			
			
			if nKillFamilyId == nRankFamilyId and nKillServerId == nRankServerId then
				sFamilyText = string.format(tFamilychampions_Text["FamilyName"],nRank)
			end
		end
		
		local sKillText = string.format(tFamilychampions_Text["killUser"],nAddScore,nNowKillData,sFamilyText)
		local sTargetText = string.format(tFamilychampions_Text["BekillUser"],nAddScore,nNowTargetData)
		
		
		if User_IsCross(nKillUserId) then
			sKillText = string.format(tFamilychampions_Text["AddScoreCross"],nAddScore,sFamilyText)
			sTargetText = string.format(tFamilychampions_Text["BekillUserCross"],nAddScore)
		end
		
		User_TalkChannel2005(sKillText,nKillUserId)
		User_TalkChannel2005(sTargetText,nTargetId)
		
	end
	Familychampions_DealRank(2,nKillFamilyId,nKillServerId,nKillUserId,nKillLeaderId)
	Familychampions_DealRank(2,nTargetFamilyId,nTargetServerId,nTargetId,nTargetLeaderId)
	
end
--比赛结束传回
function Familychampions_LeverMap()
	local sCrossActiveTime = tActivityTime["Familychampions"]["CrossTime"]
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	--跨服比赛结束根据排名清算战绩
	if Sys_ChkDayTime(sCrossActiveTime) then
		Familychampions_SetExploitsRank()
	end
	
	
	local nMapId = tFamilychampions_Cont["ChgPkMap"]["MapId"]
	local sFunc = "Familychampions_AfterPkChgMap"
	for i= 24783,24785 do 
		local sNpcName = tFamilychampions_Text["Dynanpc"]["Name"][i]
		Npc_DelDynaNpc(10592,"name",sNpcName)
	end
	Map_UserExeFunc(nMapId,-1,sFunc)
end
function Familychampions_AfterPkChgMap(nNowUserId)
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nMapId = tFamilychampions_Cont["ChgMap"]["MapId"]
	local nPosX = tFamilychampions_Cont["ChgMap"]["CellX"]
	local nPosY = tFamilychampions_Cont["ChgMap"]["CellY"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	if not Task_ChkTaskDetail(nTaskId, nNowUserId) then
		return
	end
	
	if tFamilychampions_Score[nNowUserId] == nil then
		tFamilychampions_Score[nNowUserId] = 0
	end
	local nNewUserId =  Get_TaskDetailData3(nTaskId,nNowUserId)
	Task_SetTaskDetailData1(nTaskId,0,nNowUserId)
	local nScoreData = Get_TaskDetailData2(nTaskId,nNowUserId) + tFamilychampions_Score[nNowUserId]
	local nFamilyId = Get_TaskDetailData5(nTaskId,nNowUserId) 
	local nServerId = Get_TaskDetailData4(nTaskId,nNowUserId)
	local nLeaderId = Get_TaskDetailData3(nFamilyTaskId,nNowUserId)
	local nIndex = 0
	if nLeaderId == nNewUserId then
		nIndex = 1
	end
	Sys_SaveActionFestivalLog(string.format(tFamilychampions_Cont["end"],nFamilyId,nIndex,nServerId,nScoreData),nNewUserId)

	--跨服比赛
	if User_IsCross(nNowUserId) then
		if Task_ChkTaskDetail(nTaskId, nNowUserId) then
			Task_SetTaskDetailData6(nTaskId,0,nNowUserId) --跨服比赛结束，去除第一名标识
		end
	end
	if User_ChgMap(nMapId,nPosX,nPosY,0,nNowUserId) then
		Sys_MsgBox(tFamilychampions_Text["LevePkMap"],nil,nil,nNowUserId)
	end
end

--比赛结束全地图执行传回准备地图清算奖励
function Familychampions_AfterSingleMapFunc()
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end

	local nMapId = tFamilychampions_Cont["ChgMap"]["MapId"]
	local sFunc = "Familychampions_AfterSingle"
	Map_UserExeFunc(nMapId,-1,sFunc)
end
--比赛结束，发奖
function Familychampions_AfterSingle(nNowUserId)
	local nItemId = tFamilychampions_Cont["Vouchers"]
	
	--拥有直播券，不发奖
	if Item_ChkMulItem(nItemId,nItemId,1,0,0,nNowUserId) or Item_ChkMulItem(nItemId,nItemId,1,0,0,nNowUserId) then
		Familychampions_Exit(nNowUserId)
		return
	end
	
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	
	if not Task_ChkTaskDetail(nTaskId,nNowUserId) then
		return
	end
	
	if not Task_ChkTaskDetail(nFamilyTaskId,nNowUserId) then
		return
	end
	
	local nIndex = 4
	local nFamilyId = Get_TaskDetailData5(nTaskId,nNowUserId) 
	local nServerId = Get_TaskDetailData4(nTaskId,nNowUserId)
	local nNewUserId = nNowUserId
	local nExistDay = tFamilychampions_Cont["ExistDay"]
	local sSender = tFamilychampions_Text["Mail"]["championPlayer"]["Sender"]
	local sTitle = tFamilychampions_Text["Mail"]["championPlayer"]["Title"]
	local nLeaderId = 0
	local nActionId = 0
	--排行榜玩家发放奖励
	for nRank,tGlobalData in ipairs(tFamilychampions_AllRank) do
		local tRankFamily = tFamilychampions_RankFamily[nRank]
		local nRankFamilyId = Get_SysDynaGlobalData(tGlobalData[1],tGlobalData[2])
		local nRankServerId = tonumber(Get_SysDynaGlobalDataStr(tRankFamily[1],tRankFamily[2]))
		
		if nFamilyId == nRankFamilyId and nServerId == nRankServerId then
			local sContent = string.format(tFamilychampions_Text["Mail"]["championPlayer"]["Content"],nRank)
			
			if nRank  == 1 then
				Task_SetTaskDetailData6(nTaskId,nRank,nNowUserId) --第一名写入玩家task_detail中，下半场只允许第一名家族进场
			end
			--除前三名，其他玩家参与奖
			if nRank >= 4 then 
				nIndex = 4
			else
				nIndex = nRank
				nLeaderId = Get_TaskDetailData3(nFamilyTaskId,nNowUserId)
			end
		--发邮件
			nActionId = tFamilychampions_Cont["Action"]["Single"][nIndex] 
			--跨服奖励
			if User_IsCross(nNowUserId) then
				nActionId = tFamilychampions_Cont["Action"]["cross"][nIndex]
				nNewUserId = Get_TaskDetailData3(nTaskId,nNowUserId)
			end
			
			if Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId) then
				--前三名族长发奖
				if nLeaderId ~= nil or nLeaderId ~= 0 then 
					if nNewUserId == nLeaderId then
						nActionId = tFamilychampions_Cont["Action"]["LeaderSingle"][nIndex] 
						if User_IsCross(nNowUserId) then
							nActionId = tFamilychampions_Cont["Action"]["Leadercross"][nIndex]
						end
						
						sContent = string.format(tFamilychampions_Text["Mail"]["championLeader"]["Content"],nRank)
						
						Sys_SendMail(nLeaderId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
					end
				end
				
				Familychampions_Exit(nNowUserId)
				tFamilychampions_Score[nNowUserId] = 0
				tFamilychampions_Score[nFamilyId..nServerId] = 0
				Task_SetTaskDetailData2(nTaskId,0,nNowUserId)
				return
			end
		end
	end
	--其余玩家参与奖
	nActionId = tFamilychampions_Cont["Action"]["Single"][4] 
	sContent = tFamilychampions_Text["Mail"]["participate"]["Content"]
	
	--跨服奖励
	if User_IsCross(nNowUserId) then
		nActionId = tFamilychampions_Cont["Action"]["cross"][4]
		nNewUserId = Get_TaskDetailData3(nTaskId,nNowUserId)
	end
	if Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId) then
		Familychampions_Exit(nNowUserId)
		tFamilychampions_Score[nNowUserId] = 0
		tFamilychampions_Score[nFamilyId..nServerId] = 0
		Task_SetTaskDetailData2(nTaskId,0,nNowUserId)
	end
end
--查看全区全服战绩
function Familychampions_OpenWeb()
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	
	--打开网页
	User_SendWebPage(tFamilychampions_Cont["Web"],nUserId)
end
--使用风云豪侠领获得光环
function Familychampions_AddRoleStatus(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	--判定玩家身上是否有光环
	local nStatus = tFamilychampions_Cont["Status"]["Id"]
	local nPower = tFamilychampions_Cont["Status"]["Power"]
	local nSecs  = tFamilychampions_Cont["Status"]["Secs"]
	local nTimes = tFamilychampions_Cont["Status"]["Times"]
	local nEndTime = tFamilychampions_Cont["Status"]["EndTime"]
	local nRecordable = tFamilychampions_Cont["Status"]["Recordable"]
	local nRemainTime = tFamilychampions_Cont["Status"]["RemainTime"]
	if User_IsExistHalo() then
		--删除光环
		User_DelHalo()
	end
	local nUserId = Get_UserId()
	
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
end

--使用家族直播券，运营直播比赛用
function Familychampions_UseVouchers(nItemId)
	local nUserId = Get_UserId()
	local sActiveTime = tActivityTime["Familychampions"]["SingleTime"]
	local sCrossActiveTime = tActivityTime["Familychampions"]["CrossTime"]
	local nTaskId = tFamilychampions_Cont["TaskId"]
	-- local nChgServerId = Get_MainFrontierID()
	local nChgServerId = 200
	local nMapId = tFamilychampions_Cont["ChgPkMap"]["MapId"]
	local nPosX = tFamilychampions_Cont["ChgPkMap"]["CellX"]
	local nPosY = tFamilychampions_Cont["ChgPkMap"]["CellY"]
	
	local nUserMapId = Get_UserMapId(nUserId)
	
	
	if not Sys_ChkFullTime(tActivityTime["Familychampions"]["ActivityTime"]) then
		return
	end
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	end
	
	if nUserMapId ~= nil and nUserMapId == nMapId then
		return
	end
	

	-- if Sys_ChkDayTime(sActiveTime) then
		
		-- Task_SetTaskDetailData2(nTaskId,0,nUserId)
		-- tFamilychampions_Score[nUserId] = 0
		-- User_ChgMap(nMapId,nPosX,nPosY,0,nUserId)
		
		-- return
	-- elseif Sys_ChkDayTime(sCrossActiveTime) then
		
		Task_SetTaskDetailData2(nTaskId,0,nUserId)
		tFamilychampions_Score[nUserId] = 0
		Sys_EnterServer(nChgServerId,12,nUserId,110)
		
		-- return
	-- end
	
	-- Sys_MsgBox(tFamilychampions_Text["NoPkTime"],nil,nil,nUserId)
	
end
------------------------------------------------------------------------------------------------------------------------
--清空排行榜
function Familychampions_DealGlobal()
	local nGlobalId = 0
	for i=1,18 do 
		nGlobalId = tFamilychampions_Global[i]
		Sys_ResetAllSynaGlobalData(nGlobalId)
		Sys_ResetAllSynaGlobalDataStr(nGlobalId)
		
	end

end

-- 排行榜处理函数
function Familychampions_DealRank(nType,nFamilyId,nServerId,nUserId,nLeaderId)
	local nUserId = nUserId or Get_UserId()
	local nFamilyTaskId = tFamilychampions_Cont["FamilyTaskId"]
	local sLeaderName = ""
	local sFamilyName = ""
	if User_IsCross(nUserId) then
		sLeaderName = tostring(nLeaderId)
		sFamilyName = tostring(nFamilyId)
	else
		sLeaderName = Get_UserName(nLeaderId)
		sFamilyName = Get_FamilyName(nFamilyId)
	end
	-- 取存储表数据建表
	local tRank = {}
	for nRank,tGlobalData in ipairs(tFamilychampions_AllRank) do
		local nNowFamilyId = Get_SysDynaGlobalData(tGlobalData[1],tGlobalData[2])
		local sNowLeaderName = Get_SysDynaGlobalDataStr(tGlobalData[1],tGlobalData[2])
		
		-- 累计积分
		local tRankPoint = tFamilychampions_RankPoint[nRank]
		local nNowPoint = Get_SysDynaGlobalData(tRankPoint[1],tRankPoint[2])
		local sNowFamilyName = Get_SysDynaGlobalDataStr(tRankPoint[1],tRankPoint[2])
		
		--族长ID服务器ID
		local tRankFamily = tFamilychampions_RankFamily[nRank]
		local nNowLeaderId = Get_SysDynaGlobalData(tRankFamily[1],tRankFamily[2])
		local nLeaSerId = tonumber(Get_SysDynaGlobalDataStr(tRankFamily[1],tRankFamily[2]))
		
		
		local tSynRank = {
				nNewFamilyId = nNowFamilyId,
				sNewFamilyName = sNowFamilyName,
				nPoint = nNowPoint,
				nNewLeaderId = nNowLeaderId,
				sNewLeaderName = sNowLeaderName,
				nNewLeaSerId = nLeaSerId 
			}
			
		table.insert(tRank,tSynRank)
	end

	if nType == 2 then
	
		-- 已在排行榜内
		local bAddRank = true
		for _,tSynRank in ipairs(tRank) do
			if nFamilyId == tSynRank.nNewFamilyId and nServerId == tSynRank.nNewLeaSerId then
				tSynRank.nPoint = tFamilychampions_Score[nFamilyId..nServerId]
				bAddRank = false
				break
			end
		end
		
		-- 还未入榜
		if bAddRank then
			-- （排名数未满30）
			local bFull = true
			for nRankNum,tSynRank in ipairs(tRank) do
				if tSynRank.nNewFamilyId == 0 then
					local tNewRank = {
						nNewFamilyId = nFamilyId,
						sNewFamilyName = sFamilyName,
						nPoint = tFamilychampions_Score[nFamilyId..nServerId],
						nNewLeaderId = nLeaderId,
						sNewLeaderName =  sLeaderName,
						nNewLeaSerId = nServerId 
						
					}
					table.insert(tRank,nRankNum,tNewRank)
					table.remove(tRank)
					bFull = false
					break
				end
			end
			
			-- （排名数满30）
			if bFull then
				local tNewRank = {
					nNewFamilyId = nFamilyId,
					sNewFamilyName = sFamilyName,
					nPoint = tFamilychampions_Score[nFamilyId..nServerId],
					nNewLeaderId = nLeaderId,
					sNewLeaderName = sLeaderName,
					nNewLeaSerId = nServerId 
					
				}
				table.insert(tRank,tNewRank)
			end
		end
	end
	
	-- 排序
	local nLen = #tRank
	for nStart = 1, nLen - 1 do
		for nNext = 1, nLen - nStart do
			if tRank[nNext].nPoint < tRank[nNext + 1].nPoint then
				tRank[nNext],tRank[nNext + 1] = tRank[nNext + 1],tRank[nNext]
			end
		end
	end

	-- 存入存储表
	for nRankNum,tRankData in ipairs(tFamilychampions_AllRank) do
		-- 排行数据

		Sys_SetSynaGlobalData(tRankData[1],tRankData[2],tRank[nRankNum].nNewFamilyId)
		Sys_SetSynaGlobalDataStr(tRankData[1],tRankData[2],tRank[nRankNum].sNewLeaderName)

		-- 累计积分
		local tRankPoint = tFamilychampions_RankPoint[nRankNum]
		Sys_SetSynaGlobalData(tRankPoint[1],tRankPoint[2],tRank[nRankNum].nPoint)
		Sys_SetSynaGlobalDataStr(tRankPoint[1],tRankPoint[2],tRank[nRankNum].sNewFamilyName)
		
		--族长服务器信息
		local tRankFamily = tFamilychampions_RankFamily[nRankNum]
		Sys_SetSynaGlobalData(tRankFamily[1],tRankFamily[2],tRank[nRankNum].nNewLeaderId)
		Sys_SetSynaGlobalDataStr(tRankFamily[1],tRankFamily[2],tostring(tRank[nRankNum].nNewLeaSerId))
		
	end
end
-- 排行榜内容提取函数
function Familychampions_GetRankMsg(nRankNum)
	local nUserId = Get_UserId()
	local nUserFamilyId = Get_UserFamilyId(nUserId)
	local sUserRank = tFamilychampions_Text["FamilyNoRank"]
	-- 排行榜内容
	local tRankText = {}
	for nRank = 1 , #tFamilychampions_AllRank do
		local tRanking = tFamilychampions_AllRank[nRank]
		local tRankPoint = tFamilychampions_RankPoint[nRank]
		local tRankFamily = tFamilychampions_RankFamily[nRank]
		
		local nFamilyId = Get_SysDynaGlobalData(tRanking[1],tRanking[2])
		local nServerId = tonumber(Get_SysDynaGlobalDataStr(tRankFamily[1],tRankFamily[2]))
		local sFamilyLeaderName = Get_SysDynaGlobalDataStr(tRanking[1],tRanking[2])
		local sFamilyName = Get_SysDynaGlobalDataStr(tRankPoint[1],tRankPoint[2])
		if User_IsCross(nUserId) then
			sFamilyName = Get_SysServerName(nServerId)
			sFamilyLeaderName = string.format(tFamilychampions_Text["LeaderName"],sFamilyName)
		end
		
		local nAllPoint = 0
		if nFamilyId == 0 then
			nFamilyId = tFamilychampions_Text["NoRank"]
			sFamilyName = tFamilychampions_Text["NoRank"]
			sFamilyLeaderName = tFamilychampions_Text["NoRank"]
		else
			local tRankPoint = tFamilychampions_RankPoint[nRank]
			nAllPoint = Get_SysDynaGlobalData(tRankPoint[1],tRankPoint[2])
			
			if nUserFamilyId == nFamilyId then
				sUserRank = string.format(tFamilychampions_Text["FamilyName"],nRank)
			end
			
			
		end
		--名字处理
		sFamilyName = string.gsub(sFamilyName, "<", " ")
		sFamilyName = string.gsub(sFamilyName, ">", " ")
		
		sFamilyLeaderName = string.gsub(sFamilyLeaderName, "<", " ")
		sFamilyLeaderName = string.gsub(sFamilyLeaderName, ">", " ")
		-- 对白内容
		if nRank <= 10 then
			local sRankName = string.format(tFamilychampions_Text["RankName"],nRank)
			local sText = Sys_Alignment(sRankName,3,sFamilyName,28,sFamilyLeaderName,46,nAllPoint,66)
			table.insert(tRankText,sText)
		end
	end
	
	return tRankText,sUserRank
end
--排行榜展示
function Familychampions_ShowRank(nNpcId)
	local nTaskId = tFamilychampions_Cont["TaskId"]
	local nUserId = Get_UserId()
	local nFamilyId = Get_TaskDetailData5(nTaskId,nUserId) 
	local nServerId = Get_TaskDetailData4(nTaskId,nUserId)
	-- 初始化
	tNpcGossip[nNpcId]["Text2-1"] = {211,212,213}
	-- 排行榜内容
	local tRankText,sUserRank= Familychampions_GetRankMsg(10)
	
	local sServerText=tFamilychampions_Text["RankFamily"]
	if User_IsCross(nUserId) then
		sServerText = tFamilychampions_Text["RankServer"]
	end
	local sText213 = string.format(tFamilychampions_Text[nNpcId]["Text213"],sServerText)
	tNpcGossip[nNpcId]["Text213"] = sText213
	
	for nRank, sText in ipairs(tRankText) do
		tNpcGossip[nNpcId]["Text211".. nRank] = sText.. "\n"
		table.insert(tNpcGossip[nNpcId]["Text2-1"],211 .. nRank)
	end
	if tFamilychampions_Score[nFamilyId..nServerId] == nil then
		tFamilychampions_Score[nFamilyId..nServerId] = 0
	end
	local nFamilyPoint = tFamilychampions_Score[nFamilyId..nServerId] or 0
	local sText215 = string.format(tFamilychampions_Text[nNpcId]["Text215"],nFamilyPoint,sUserRank)
	tNpcGossip[nNpcId]["Text215"] = sText215
	

	
	-- 必显示内容
	table.insert(tNpcGossip[nNpcId]["Text2-1"],214)
	table.insert(tNpcGossip[nNpcId]["Text2-1"],215)
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
--设置战绩排行榜积分
function Familychampions_SetExploitsRank()
	local tRankText = {}
	local nGlobalId = 0
	--每周清空排行榜，只记录当周战绩排名，页面程序读取处理
	for i=1,18 do 
		nGlobalId = tFamilychampions_ExploitsGlobal[i]
		Sys_ResetAllSynaGlobalData(nGlobalId)
		Sys_ResetAllSynaGlobalDataStr(nGlobalId)
		
	end
	
	for nRank = 1 , #tFamilychampions_AllRank do
		local tRanking = tFamilychampions_AllRank[nRank]
		--家族族长信息表
		local tFamilyRank = tFamilychampions_RankFamily[nRank]
		--家族服务器信息表
		local tPointRank = tFamilychampions_RankPoint[nRank]
		
		
		
		--需记录的表
		local tExploitsAllRank = tFamilychampions_ExploitsAllRank[nRank]
		local tExploitsPointRank = tFamilychampions_ExploitsRankPoint[nRank]
		local tExploitsFamilyRank = tFamilychampions_ExploitsRankFamily[nRank]
		--记录战绩排行榜
		
		--家族信息
		local nFamilyId = Get_SysDynaGlobalData(tRanking[1],tRanking[2])
		local sFamilyLeaderName = Get_SysDynaGlobalDataStr(tRanking[1],tRanking[2])
		--家族名字
		local sFamilyName = Get_SysDynaGlobalDataStr(tPointRank[1],tPointRank[2])
		--积分累计
		local nExploitsPoint = tFamilychampions_Cont["ExploitsPoint"][nRank]
		--族长信息
		local nLeaderId = Get_SysDynaGlobalData(tFamilyRank[1],tFamilyRank[2])
		local sLeaSerId = Get_SysDynaGlobalDataStr(tFamilyRank[1],tFamilyRank[2])
		
		if nFamilyId ~=nil and nFamilyId ~=0 then
			Sys_SetSynaGlobalData(tExploitsAllRank[1],tExploitsAllRank[2],nFamilyId)
			Sys_SetSynaGlobalDataStr(tExploitsAllRank[1],tExploitsAllRank[2],sFamilyLeaderName)
			
			Sys_SetSynaGlobalData(tExploitsPointRank[1],tExploitsPointRank[2],nExploitsPoint)
			Sys_SetSynaGlobalDataStr(tExploitsPointRank[1],tExploitsPointRank[2],sFamilyName)
			
			Sys_SetSynaGlobalData(tExploitsFamilyRank[1],tExploitsFamilyRank[2],nLeaderId)
			Sys_SetSynaGlobalDataStr(tExploitsFamilyRank[1],tExploitsFamilyRank[2],sLeaSerId)
		end
	end

end
-----------------------------------------物品配置-------------------------------------------

tItem[3313452]=tItem[3313452]or{}
tItem[3313452]["Function"]=function(nItemId,sItemName)
	local nSpace = RewardTemplate_GetRandomSpace(tFamilychampions_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then 
		Sys_MsgBox(string.format(tFamilychampions_Text["NoSpace"],nSpace))
		return
	end
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		RewardTemplate_NewRandomNoTip(tFamilychampions_Reward,nItemId)
	end
end
tItem[3313454]=tItem[3313454]or{}
tItem[3313454]["Function"]=function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tFamilychampions_Reward[nItemId])
end
tItem[3313455]=tItem[3313454]
-- tItem[3313456]=tItem[3313454]
-- tItem[3313457]=tItem[3313454]
tItem[3313669]=tItem[3313454]
tItem[3313670]=tItem[3313454]
tItem[3313671]=tItem[3313454]
tItem[3313672]=tItem[3313454]
tItem[3313673]=tItem[3313454]
tItem[3313674]=tItem[3313454]

tItem[3319016]=tItem[3319016]or{}
tItem[3319016]["Function"]=function(nItemId,sItemName)
	local nUserId = Get_UserId()
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		RewardTemplate_NewRandomNoTip(tFamilychampions_Reward[nItemId],1,nUserId)
	end
end
--风云豪侠令
tItem[3313453]=tItem[3313453]or{}
tItem[3313453]["Function"]=function(nItemId,sItemName)
	Familychampions_AddRoleStatus(nItemId)
end
--家族PK赛直播券
tItem[3313676]=tItem[3313676]or{}
tItem[3313676]["Function"]=function(nItemId,sItemName)
	Familychampions_UseVouchers(nItemId)
end


-----------------------------------------NPC配置---------------------------------------------
tNpcFace[6155]=57
tNpcFace[6156]=166


tNpcGossip[24781]=tNpcGossip[24781]	or	DefaultNpc:new{}
tNpcGossip[24781]["OptionHidden"]=1
tNpcGossip[24781]["DialogueText"]=tFamilychampions_Text[24781]

--活动前
tNpcGossip[24781]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24781]["tOption1-1"]={111}
tNpcGossip[24781]["ChkFunc1-1"]= function()
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	tNpcGossip[24781]["Text113"] = string.format(tFamilychampions_Text[24781]["Text113"],tFamilychampions_Text["Americanserver"][1])
	tNpcGossip[24781]["Text114"] = string.format(tFamilychampions_Text[24781]["Text114"],tFamilychampions_Text["Americanserver"][2])
	if nData ~= nil  and nData == 1  then
		tNpcGossip[24781]["Text113"] = string.format(tFamilychampions_Text[24781]["Text113"],tFamilychampions_Text["Europeanserver"][1])
		tNpcGossip[24781]["Text114"] = string.format(tFamilychampions_Text[24781]["Text114"],tFamilychampions_Text["Europeanserver"][2])
	end
	
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Familychampions"]["ActivityTime"])
end


--活动前
tNpcGossip[24781]["Text1-2"] = {121,122}
tNpcGossip[24781]["tOption1-2"]={121}
tNpcGossip[24781]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Familychampions"]["ActivityTime"])
end


	--活动中--不满足条件
tNpcGossip[24781]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[24781]["tOption1-3"]={131}
tNpcGossip[24781]["ChkFunc1-3"]= function()
	local nUserId = Get_UserId()
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	tNpcGossip[24781]["Text133"] = string.format(tFamilychampions_Text[24781]["Text133"],tFamilychampions_Text["Americanserver"][1])
	tNpcGossip[24781]["Text134"] = string.format(tFamilychampions_Text[24781]["Text134"],tFamilychampions_Text["Americanserver"][2])
	if nData ~= nil  and nData == 1  then
		tNpcGossip[24781]["Text133"] = string.format(tFamilychampions_Text[24781]["Text133"],tFamilychampions_Text["Europeanserver"][1])
		tNpcGossip[24781]["Text134"] = string.format(tFamilychampions_Text[24781]["Text134"],tFamilychampions_Text["Europeanserver"][2])
	end
	
	--取玩家家族ID
	local nLevel = tFamilychampions_Cont["Level"]
	local nFamilyId = Get_UserFamilyId(nUserId) or 0
	local nMete = tFamilychampions_Cont["Metempsychosis"]
	if  nFamilyId == 0 or (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		return true
	end
	
	return false 
	
end

	--活动中--满足条件
tNpcGossip[24781]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[24781]["tOption1-4"]={141,142,143,144}
tNpcGossip[24781]["ChkFunc1-4"]= function()
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	tNpcGossip[24781]["Text143"] = string.format(tFamilychampions_Text[24781]["Text143"],tFamilychampions_Text["Americanserver"][1])
	tNpcGossip[24781]["Text144"] = string.format(tFamilychampions_Text[24781]["Text144"],tFamilychampions_Text["Americanserver"][2])
	if nData ~= nil  and nData == 1  then
		tNpcGossip[24781]["Text143"] = string.format(tFamilychampions_Text[24781]["Text143"],tFamilychampions_Text["Europeanserver"][1])
		tNpcGossip[24781]["Text144"] = string.format(tFamilychampions_Text[24781]["Text144"],tFamilychampions_Text["Europeanserver"][2])
	end
	return true
end

tNpcGossip[24781]["OptionFunc141"] = "Familychampions_EnterCompetition</N>24781"
tNpcGossip[24781]["OptionPoint142"] = "2-1"
tNpcGossip[24781]["OptionFunc143"] = "Familychampions_OpenWeb"



tNpcGossip[24781]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
tNpcGossip[24781]["tOption2-1"]={211}
--非比赛时间
tNpcGossip[24781]["Text3-1"] = {311,312,313,314}
tNpcGossip[24781]["tOption3-1"]={311}
tNpcGossip[24781]["ChkFunc3-1"]= function()
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	tNpcGossip[24781]["Text313"] = string.format(tFamilychampions_Text[24781]["Text313"],tFamilychampions_Text["Americanserver"][1])
	tNpcGossip[24781]["Text314"] = string.format(tFamilychampions_Text[24781]["Text314"],tFamilychampions_Text["Americanserver"][2])
	if nData ~= nil  and nData == 1  then
		tNpcGossip[24781]["Text313"] = string.format(tFamilychampions_Text[24781]["Text313"],tFamilychampions_Text["Europeanserver"][1])
		tNpcGossip[24781]["Text314"] = string.format(tFamilychampions_Text[24781]["Text314"],tFamilychampions_Text["Europeanserver"][2])
	end
	return true
end
--失败，退出过本次比赛再点击
tNpcGossip[24781]["Text4-1"] = {411,412}
tNpcGossip[24781]["tOption4-1"]={411}
--失败，退出过本次比赛再点击
tNpcGossip[24781]["Text5-1"] = {511,512}
tNpcGossip[24781]["tOption5-1"]={511}


--------------怜星
tNpcGossip[24782]=tNpcGossip[24782]	or	DefaultNpc:new{}
tNpcGossip[24782]["OptionHidden"]=1
tNpcGossip[24782]["DialogueText"]=tFamilychampions_Text[24782]

--活动前
tNpcGossip[24782]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24782]["tOption1-1"]={111,112,113}
tNpcGossip[24782]["ChkFunc1-1"]= function()
	local nGlobalId = tFamilychampions_Cont["Global"]["Id"]
	local nPos = tFamilychampions_Cont["Global"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)  -- 1:欧服 0：非欧服
	local sTime = tActivityTime["Familychampions"]["ClearingTime"]
	local sCrossTime = tActivityTime["Familychampions"]["CrossClearingTime"]
	if nData ~= nil  and nData == 1  then
		sTime = tActivityTime["Familychampions"]["EuropeanClearingTime"]
		sCrossTime = tActivityTime["Familychampions"]["EuropeanCrossClearingTime"]
	end
	
	for i = 1,5 do 
		sActiveTime = sTime[i]
		sCrossActiveTime = sCrossTime[i]
		if Sys_ChkFullTime(sActiveTime)  or Sys_ChkFullTime(sCrossActiveTime) then
			return false
		end
	end
	return true
end
--tNpcGossip[24782]["OptionChkFunc111"]= function()
--	local nUserId =Get_UserId()
--	if User_IsCross(nUserId) then
--		return false
--	end
--	return true
--end

tNpcGossip[24782]["OptionFunc111"] = "Familychampions_ShowRank</N>24782"
tNpcGossip[24782]["OptionPoint112"] = "3-1"
tNpcGossip[24782]["OptionPoint113"] = "4-1"
--结算奖励
tNpcGossip[24782]["Text1-2"] = {121,122}
tNpcGossip[24782]["tOption1-2"]={111,121}

--排行榜
tNpcGossip[24782]["Text2-1"] = {211,212,213,2111,2112,2113,2114,2115,2116,2117,2118,2119,21110,214,215}
tNpcGossip[24782]["tOption2-1"]={211}

--争霸赛介绍
tNpcGossip[24782]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112}
tNpcGossip[24782]["tOption3-1"]={311}
--离开云湖战场
tNpcGossip[24782]["Text4-1"] = {411,412}
tNpcGossip[24782]["tOption4-1"]={411,412}
tNpcGossip[24782]["OptionFunc411"] = "Familychampions_Exit"

tNpcGossip[24888]= tNpcGossip[24782] or DefaultNpc:new{}
tNpcGossip[24885]= tNpcGossip[24782] or DefaultNpc:new{}
tNpcGossip[24886]= tNpcGossip[24782] or DefaultNpc:new{}
-----------------------------------------怪物配置--------------------------------------------
-- 潜龙渊
-- 1148	怒海青睛兽
-- 1149	覆海魔蛟
-- 1150	异蛇
-- local tFamilychampions_AreaLoad = {}
	-- tFamilychampions_AreaLoad["Function"] = Familychampions_MontDrop
	-- tFamilychampions_AreaLoad["MonsterId"] = {1148,1149,1150}
-- table.insert(tMonsterDrop_AreaLoad,tFamilychampions_AreaLoad)

tMonster[1148] = tMonster[1148] or {}
tMonster[1148]["tFunction"] = tMonster[1148]["tFunction"] or {}
table.insert(tMonster[1148]["tFunction"],Familychampions_MontDrop)

tMonster[1149] = tMonster[1149] or {}
tMonster[1149]["tFunction"] = tMonster[1149]["tFunction"] or {}
table.insert(tMonster[1149]["tFunction"],Familychampions_MontDrop)

tMonster[1150] = tMonster[1150] or {}
tMonster[1150]["tFunction"] = tMonster[1150]["tFunction"] or {}
table.insert(tMonster[1150]["tFunction"],Familychampions_MontDrop)

-----------------------------------------时间自检----------------------------------------------
local tFamilychampions_OnTime = {}
	--活动前公告
	tFamilychampions_OnTime[1] = {}
	tFamilychampions_OnTime[1]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[1]["Type"] = 2
	tFamilychampions_OnTime[1]["TimeType"] = 3
	tFamilychampions_OnTime[1]["Multiple"] = {}
	tFamilychampions_OnTime[1]["Multiple"][1]  = "4 22:40 4 22:40"
	tFamilychampions_OnTime[1]["Multiple"][2]  = "4 23:00 4 23:00"
	tFamilychampions_OnTime[1]["Func"] = Familychampions_TalkBroad
	
	
	--活动中播报
	tFamilychampions_OnTime[2] = {}
	tFamilychampions_OnTime[2]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[2]["Type"] = 2
	tFamilychampions_OnTime[2]["TimeType"] = 3
	tFamilychampions_OnTime[2]["Multiple"] = {}
	tFamilychampions_OnTime[2]["Multiple"][1]  = "4 22:50 4 22:50"
	tFamilychampions_OnTime[2]["Multiple"][2]  = "4 22:55 4 22:55"
	tFamilychampions_OnTime[2]["Multiple"][3]  = "4 22:58 4 22:58"
	tFamilychampions_OnTime[2]["Multiple"][4]  = "4 23:10 4 23:10"
	tFamilychampions_OnTime[2]["Multiple"][5]  = "4 23:15 4 23:15"
	tFamilychampions_OnTime[2]["Multiple"][6]  = "4 23:23 4 23:23"
	tFamilychampions_OnTime[2]["Multiple"][7]  = "5 06:50 5 06:50"
	tFamilychampions_OnTime[2]["Multiple"][8]  = "5 06:55 5 06:55"
	tFamilychampions_OnTime[2]["Multiple"][9]  = "5 06:58 5 06:58"
	tFamilychampions_OnTime[2]["Multiple"][10]  = "5 07:10 5 07:10"
	tFamilychampions_OnTime[2]["Multiple"][11]  = "5 07:15 5 07:15"
	tFamilychampions_OnTime[2]["Multiple"][12]  = "5 07:23 5 07:23"

	tFamilychampions_OnTime[2]["Func"] = Familychampions_MapTalkBroad
	
	--比赛开始前传送玩家进地图
	tFamilychampions_OnTime[3] = {}
	tFamilychampions_OnTime[3]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[3]["Type"] = 2
	tFamilychampions_OnTime[3]["TimeType"] = 3
	tFamilychampions_OnTime[3]["Multiple"] = {}
	tFamilychampions_OnTime[3]["Multiple"][1]  = "4 22:45 4 22:45"
	tFamilychampions_OnTime[3]["Multiple"][2]  = "4 23:05 4 23:05"
	tFamilychampions_OnTime[3]["Multiple"][3]  = "5 06:45 5 06:45"
	tFamilychampions_OnTime[3]["Multiple"][4]  = "5 07:05 5 07:05"
	
	tFamilychampions_OnTime[3]["Func"] = Familychampions_MapUserExeFunc
	

	--比赛结束传回准备地图
	tFamilychampions_OnTime[4] = {}
	tFamilychampions_OnTime[4]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[4]["Type"] = 2
	tFamilychampions_OnTime[4]["TimeType"] = 3
	tFamilychampions_OnTime[4]["Multiple"] = {}
	tFamilychampions_OnTime[4]["Multiple"][1]  = "4 22:59 4 22:59"
	tFamilychampions_OnTime[4]["Multiple"][2]  = "4 23:20 4 23:20"
	tFamilychampions_OnTime[4]["Multiple"][3]  = "5 06:59 5 06:59"
	tFamilychampions_OnTime[4]["Multiple"][4]  = "5 07:20 5 07:20"
	
	
	tFamilychampions_OnTime[4]["Func"] = Familychampions_LeverMap
	
	
	--比赛结束发放邮件
	tFamilychampions_OnTime[5] = {}
	tFamilychampions_OnTime[5]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[5]["Type"] = 2
	tFamilychampions_OnTime[5]["TimeType"] = 3
	tFamilychampions_OnTime[5]["Multiple"] = {}
	tFamilychampions_OnTime[5]["Multiple"][1]  = "4 23:00 4 23:00"
	tFamilychampions_OnTime[5]["Multiple"][2]  = "4 23:21 4 23:21"
	tFamilychampions_OnTime[5]["Multiple"][3]  = "5 07:00 5 07:00"
	tFamilychampions_OnTime[5]["Multiple"][4]  = "5 07:21 5 07:21"
	
	tFamilychampions_OnTime[5]["Func"] = Familychampions_AfterSingleMapFunc
	
	--发完奖励清空排行榜
	tFamilychampions_OnTime[6] = {}
	tFamilychampions_OnTime[6]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[6]["Type"] = 2
	tFamilychampions_OnTime[6]["TimeType"] = 3
	tFamilychampions_OnTime[6]["Multiple"] = {}
	tFamilychampions_OnTime[6]["Multiple"][1]  = "4 22:01 4 22:01"
	tFamilychampions_OnTime[6]["Multiple"][2]  = "4 23:22 4 23:22"
	tFamilychampions_OnTime[6]["Multiple"][3]  = "5 06:01 5 06:01"
	tFamilychampions_OnTime[6]["Multiple"][4]  = "5 07:22 5 07:22"
	
	tFamilychampions_OnTime[6]["Func"] = Familychampions_DealGlobal
	
	tFamilychampions_OnTime[7] = {}
	tFamilychampions_OnTime[7]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
	tFamilychampions_OnTime[7]["Type"] = 2
	tFamilychampions_OnTime[7]["TimeType"] = 3
	tFamilychampions_OnTime[7]["Multiple"] = {}
	tFamilychampions_OnTime[7]["Multiple"][1]  = "5 06:40 5 06:40"
	tFamilychampions_OnTime[7]["Multiple"][2]  = "5 07:00 5 07:00"
	tFamilychampions_OnTime[7]["Func"] = Familychampions_TalkBroadEu
	
	
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[1])
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[2])
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[3])
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[4])
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[5])
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[6])
table.insert(tSystemTime_InitialData,tFamilychampions_OnTime[7])
-----------------------------------杀人触发----------------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],Familychampions_KillPlayer)