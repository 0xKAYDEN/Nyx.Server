------------------------------------------------------------------------------------
--Name：            190418[简体征服][活动脚本]百兵谱格子一
--Creator:      洪聪敏

--Created:     2019-04-18
------------------------------------------------------------------------------------
--命名前缀：HundredWeaponGridOne_
--logid:12001375
--luaini:41237
--任务ID ：796
--193 60 记录御魂开启格数
--10000 0476 花费天石开启
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local tHundredWeaponGridOne_Cont = {}
	tHundredWeaponGridOne_Cont["Space"] = 1
	tHundredWeaponGridOne_Cont["FirstTaskId"] = 4177
	tHundredWeaponGridOne_Cont["Level"] = {}
	tHundredWeaponGridOne_Cont["Level"][1] = 55
	tHundredWeaponGridOne_Cont["Level"][2] = 85
	tHundredWeaponGridOne_Cont["Level"][3] = 105
	tHundredWeaponGridOne_Cont["Level"][4] = 115
	tHundredWeaponGridOne_Cont["MinMeto"] = 0
	tHundredWeaponGridOne_Cont["ItemId"] = 3312904
	tHundredWeaponGridOne_Cont["ItemNum"] = {}
	tHundredWeaponGridOne_Cont["ItemNum"][7] = 1
	tHundredWeaponGridOne_Cont["ItemNum"][8] = 2
	tHundredWeaponGridOne_Cont["ItemNum"][9] = 3
	--所有武器type
	tHundredWeaponGridOne_Cont["HundredWeapon"] = {410,420,430,440,450,460,480,481,490}
	--物品ID
	tHundredWeaponGridOne_Cont["MonsterDro"] = {}
	tHundredWeaponGridOne_Cont["MonsterDro"][3546] = 3312302
	tHundredWeaponGridOne_Cont["MonsterDro"][3547] = 3312303
	
	--副本ID
	tHundredWeaponGridOne_Cont["Instancetype"] = {}
	tHundredWeaponGridOne_Cont["Instancetype"][154] = 278
	tHundredWeaponGridOne_Cont["Instancetype"][155] = 279
	
	--任务ID
	tHundredWeaponGridOne_Cont["TaskId"] = {}
	tHundredWeaponGridOne_Cont["TaskId"][1] = 796
	tHundredWeaponGridOne_Cont["TaskId"][2] = 796
	tHundredWeaponGridOne_Cont["TaskId"][3] = 6996
	tHundredWeaponGridOne_Cont["TaskId"][4] = 794
	tHundredWeaponGridOne_Cont["TaskId"][5] = 6997
	
	
	--传送坐标
	tHundredWeaponGridOne_Cont["Find"] = {}
	tHundredWeaponGridOne_Cont["Find"][1] = {}
	tHundredWeaponGridOne_Cont["Find"][1]["MapId"] = 1004
	tHundredWeaponGridOne_Cont["Find"][1]["Posx"] = 431
	tHundredWeaponGridOne_Cont["Find"][1]["Posy"] = 64
	tHundredWeaponGridOne_Cont["Find"][1]["ItemId"] = 3312302
	
	tHundredWeaponGridOne_Cont["Find"][2] = {}
	tHundredWeaponGridOne_Cont["Find"][2]["MapId"] = 1004
	tHundredWeaponGridOne_Cont["Find"][2]["Posx"] = 337
	tHundredWeaponGridOne_Cont["Find"][2]["Posy"] = 55
	tHundredWeaponGridOne_Cont["Find"][2]["ItemId"] = 3312303
	
	
	tHundredWeaponGridOne_Cont["Find"][3] = {}
	tHundredWeaponGridOne_Cont["Find"][3]["MapId"] = 1000
	tHundredWeaponGridOne_Cont["Find"][3]["Posx"] = 514
	tHundredWeaponGridOne_Cont["Find"][3]["Posy"] = 593
	
	
	
	tHundredWeaponGridOne_Cont["Find"][4] = {}
	tHundredWeaponGridOne_Cont["Find"][4]["MapId"] = 1015
	tHundredWeaponGridOne_Cont["Find"][4]["Posx"] = 303
	tHundredWeaponGridOne_Cont["Find"][4]["Posy"] = 379

	tHundredWeaponGridOne_Cont["Find"][5] = {}
	tHundredWeaponGridOne_Cont["Find"][5]["MapId"] = 1002
	tHundredWeaponGridOne_Cont["Find"][5]["Posx"] = 345
	tHundredWeaponGridOne_Cont["Find"][5]["Posy"] = 251

--------兵魂任务
	tHundredWeaponGridOne_Cont["Find"][410] = {}
	tHundredWeaponGridOne_Cont["Find"][410]["MapId"] = 1011
	tHundredWeaponGridOne_Cont["Find"][410]["Posx"] = 403
	tHundredWeaponGridOne_Cont["Find"][410]["Posy"] = 86
	
	tHundredWeaponGridOne_Cont["Find"][420] = {}
	tHundredWeaponGridOne_Cont["Find"][420]["MapId"] = 1011
	tHundredWeaponGridOne_Cont["Find"][420]["Posx"] = 247
	tHundredWeaponGridOne_Cont["Find"][420]["Posy"] = 235
	
	
	tHundredWeaponGridOne_Cont["Find"][460] = {}
	tHundredWeaponGridOne_Cont["Find"][460]["MapId"] =1020
	tHundredWeaponGridOne_Cont["Find"][460]["Posx"] = 534
	tHundredWeaponGridOne_Cont["Find"][460]["Posy"] = 499
	
	tHundredWeaponGridOne_Cont["Find"][450] = {}
	tHundredWeaponGridOne_Cont["Find"][450]["MapId"] = 1000
	tHundredWeaponGridOne_Cont["Find"][450]["Posx"] = 471
	tHundredWeaponGridOne_Cont["Find"][450]["Posy"] = 664
	
	tHundredWeaponGridOne_Cont["Find"][430] = {}
	tHundredWeaponGridOne_Cont["Find"][430]["MapId"] = 1020
	tHundredWeaponGridOne_Cont["Find"][430]["Posx"] = 550
	tHundredWeaponGridOne_Cont["Find"][430]["Posy"] = 486
	
	tHundredWeaponGridOne_Cont["Find"][440] = {}
	tHundredWeaponGridOne_Cont["Find"][440]["MapId"] = 1002
	tHundredWeaponGridOne_Cont["Find"][440]["Posx"] = 251
	tHundredWeaponGridOne_Cont["Find"][440]["Posy"] = 387
	
	tHundredWeaponGridOne_Cont["Find"][481] = {}
	tHundredWeaponGridOne_Cont["Find"][481]["MapId"] = 1000
	tHundredWeaponGridOne_Cont["Find"][481]["Posx"] = 259
	tHundredWeaponGridOne_Cont["Find"][481]["Posy"] = 451
	
	tHundredWeaponGridOne_Cont["Find"][490] = {}
	tHundredWeaponGridOne_Cont["Find"][490]["MapId"] =1011
	tHundredWeaponGridOne_Cont["Find"][490]["Posx"] = 165
	tHundredWeaponGridOne_Cont["Find"][490]["Posy"] = 259
	
	tHundredWeaponGridOne_Cont["Find"][480] = {}
	tHundredWeaponGridOne_Cont["Find"][480]["MapId"] = 1000
	tHundredWeaponGridOne_Cont["Find"][480]["Posx"] = 526
	tHundredWeaponGridOne_Cont["Find"][480]["Posy"] = 611
	
	
	--激情服传送坐标
	tHundredWeaponGridOne_Cont["NoGifFind"] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][1] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][1]["MapId"] = 10365
	tHundredWeaponGridOne_Cont["NoGifFind"][1]["Posx"] = 431
	tHundredWeaponGridOne_Cont["NoGifFind"][1]["Posy"] = 64
	tHundredWeaponGridOne_Cont["NoGifFind"][1]["ItemId"] = 3312302
	
	tHundredWeaponGridOne_Cont["NoGifFind"][2] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][2]["MapId"] = 10365
	tHundredWeaponGridOne_Cont["NoGifFind"][2]["Posx"] = 337
	tHundredWeaponGridOne_Cont["NoGifFind"][2]["Posy"] = 55
	tHundredWeaponGridOne_Cont["NoGifFind"][2]["ItemId"] = 3312303
	
	
	tHundredWeaponGridOne_Cont["NoGifFind"][3] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][3]["MapId"] = 10367
	tHundredWeaponGridOne_Cont["NoGifFind"][3]["Posx"] = 514
	tHundredWeaponGridOne_Cont["NoGifFind"][3]["Posy"] = 593
	
	
	tHundredWeaponGridOne_Cont["NoGifFind"][4] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][4]["MapId"] = 10368
	tHundredWeaponGridOne_Cont["NoGifFind"][4]["Posx"] = 303
	tHundredWeaponGridOne_Cont["NoGifFind"][4]["Posy"] = 379
	
	tHundredWeaponGridOne_Cont["NoGifFind"][5] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][5]["MapId"] = 10364
	tHundredWeaponGridOne_Cont["NoGifFind"][5]["Posx"] = 261
	tHundredWeaponGridOne_Cont["NoGifFind"][5]["Posy"] = 140

	tHundredWeaponGridOne_Cont["NoGifFind"][410] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][410]["MapId"] = 10365
	tHundredWeaponGridOne_Cont["NoGifFind"][410]["Posx"] = 403
	tHundredWeaponGridOne_Cont["NoGifFind"][410]["Posy"] = 86
	
	tHundredWeaponGridOne_Cont["NoGifFind"][420] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][420]["MapId"] = 10365
	tHundredWeaponGridOne_Cont["NoGifFind"][420]["Posx"] = 247
	tHundredWeaponGridOne_Cont["NoGifFind"][420]["Posy"] = 235
	
	
	tHundredWeaponGridOne_Cont["NoGifFind"][460] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][460]["MapId"] =10366
	tHundredWeaponGridOne_Cont["NoGifFind"][460]["Posx"] = 534
	tHundredWeaponGridOne_Cont["NoGifFind"][460]["Posy"] = 499
	
	tHundredWeaponGridOne_Cont["NoGifFind"][450] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][450]["MapId"] = 10367
	tHundredWeaponGridOne_Cont["NoGifFind"][450]["Posx"] = 471
	tHundredWeaponGridOne_Cont["NoGifFind"][450]["Posy"] = 664
	
	tHundredWeaponGridOne_Cont["NoGifFind"][430] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][430]["MapId"] = 10366
	tHundredWeaponGridOne_Cont["NoGifFind"][430]["Posx"] = 550
	tHundredWeaponGridOne_Cont["NoGifFind"][430]["Posy"] = 486
	
	tHundredWeaponGridOne_Cont["NoGifFind"][440] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][440]["MapId"] = 1036
	tHundredWeaponGridOne_Cont["NoGifFind"][440]["Posx"] = 263
	tHundredWeaponGridOne_Cont["NoGifFind"][440]["Posy"] = 165
	
	tHundredWeaponGridOne_Cont["NoGifFind"][481] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][481]["MapId"] = 10367
	tHundredWeaponGridOne_Cont["NoGifFind"][481]["Posx"] = 259
	tHundredWeaponGridOne_Cont["NoGifFind"][481]["Posy"] = 451
	
	tHundredWeaponGridOne_Cont["NoGifFind"][490] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][490]["MapId"] =10365
	tHundredWeaponGridOne_Cont["NoGifFind"][490]["Posx"] = 165
	tHundredWeaponGridOne_Cont["NoGifFind"][490]["Posy"] = 259
	
	tHundredWeaponGridOne_Cont["NoGifFind"][480] = {}
	tHundredWeaponGridOne_Cont["NoGifFind"][480]["MapId"] = 10367
	tHundredWeaponGridOne_Cont["NoGifFind"][480]["Posx"] = 526
	tHundredWeaponGridOne_Cont["NoGifFind"][480]["Posy"] = 611
	
	
	
	
	--传送回城id
	tHundredWeaponGridOne_Cont["BoundTrans"] = {}
	tHundredWeaponGridOne_Cont["BoundTrans"][1] = {}
	tHundredWeaponGridOne_Cont["BoundTrans"][1]["MapId"] = 1004
	tHundredWeaponGridOne_Cont["BoundTrans"][1]["PosX"] = 55
	tHundredWeaponGridOne_Cont["BoundTrans"][1]["PosY"] = 67
	
	tHundredWeaponGridOne_Cont["BoundTrans"][2] = {}
	tHundredWeaponGridOne_Cont["BoundTrans"][2]["MapId"] = 10386
	tHundredWeaponGridOne_Cont["BoundTrans"][2]["PosX"] = 55
	tHundredWeaponGridOne_Cont["BoundTrans"][2]["PosY"] = 67
	
-----------------兵魂任务
	local tHundredWeaponGridOne_Task = {}
	--完成任务
	tHundredWeaponGridOne_Task["End_Task"] = {}
	tHundredWeaponGridOne_Task["End_Task"][410] = 7009
	tHundredWeaponGridOne_Task["End_Task"][420] = 4099
	tHundredWeaponGridOne_Task["End_Task"][430] = 24140
	tHundredWeaponGridOne_Task["End_Task"][440] = 7008
	tHundredWeaponGridOne_Task["End_Task"][450] = 4125
	tHundredWeaponGridOne_Task["End_Task"][460] = 1087
	tHundredWeaponGridOne_Task["End_Task"][480] = 1088
	tHundredWeaponGridOne_Task["End_Task"][481] = 793
	tHundredWeaponGridOne_Task["End_Task"][490] = 7032
	
	--前置任务
	tHundredWeaponGridOne_Task["Star_Task"] = {}
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"] = {}
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][410] = 1090
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][420] = 1091
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][430] = 1094
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][440] = 1095
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][450] = 1093
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][460] = 1092
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][480] = 6999
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][481] = 1096
	tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][490] =  1097
	--激情服
	tHundredWeaponGridOne_Task["Star_Task"]["Common"] = {}
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][410] = 1082
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][420] = 1083
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][430] = 1086
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][440] = 1087
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][450] = 1085
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][460] = 1084
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][480] = 6998 
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][481] = 1088
	tHundredWeaponGridOne_Task["Star_Task"]["Common"][490] =  1089
	
	tHundredWeaponGridOne_Task["Level"] = {}
	tHundredWeaponGridOne_Task["Level"][1] = 40
	tHundredWeaponGridOne_Task["Level"][2] = 70
	tHundredWeaponGridOne_Task["Level"][3] = 90
	tHundredWeaponGridOne_Task["Level"][4] = 100
	tHundredWeaponGridOne_Task["Level"][5] = 110
	tHundredWeaponGridOne_Task["Level"][6] = 110
	tHundredWeaponGridOne_Task["Level"][7] = 110
	tHundredWeaponGridOne_Task["Level"][8] = 110
	tHundredWeaponGridOne_Task["Level"][9] = 110
	
	tHundredWeaponGridOne_Task["NewPro"] = {}
	tHundredWeaponGridOne_Task["NewPro"][1] = 1001
	tHundredWeaponGridOne_Task["NewPro"][2] = 1003
	tHundredWeaponGridOne_Task["NewPro"][3] = 1003
	tHundredWeaponGridOne_Task["NewPro"][4] = 1004
	tHundredWeaponGridOne_Task["NewPro"][5] = 1005
	tHundredWeaponGridOne_Task["NewPro"][6] = 1014
	tHundredWeaponGridOne_Task["NewPro"][7] = 1023
	tHundredWeaponGridOne_Task["NewPro"][8] = 1023
	tHundredWeaponGridOne_Task["NewPro"][9] = 1023
	
	tHundredWeaponGridOne_Task["Common_Task"] = {1082,1083,1086,1087,1085,1084,6998,1088,1089}
	tHundredWeaponGridOne_Task["NoGif_Task"] = {1090,1091,1094,1095,1093,1092,6999,1096,1097}
	--御魂空间总掩码
local tHundredWeaponGridOne_Stc = {}
	tHundredWeaponGridOne_Stc["EventType"] = 193
	tHundredWeaponGridOne_Stc["DataType"] = 60
	
	--是否开始兵魂任务掩码
	tHundredWeaponGridOne_Stc["FirstTask"] = {}
	tHundredWeaponGridOne_Stc["FirstTask"]["EventType"] = 197
	tHundredWeaponGridOne_Stc["FirstTask"]["DataType"] = 20
	
	
	--各个兵魂完成掩码
	tHundredWeaponGridOne_Stc[410] = {}
	tHundredWeaponGridOne_Stc[410]["EventType"] = 193
	tHundredWeaponGridOne_Stc[410]["DataType"] = 84
	tHundredWeaponGridOne_Stc[410]["MaxData"] = 1
	
	
	tHundredWeaponGridOne_Stc[420] = {}
	tHundredWeaponGridOne_Stc[420]["EventType"] = 196
	tHundredWeaponGridOne_Stc[420]["DataType"] = 05
	tHundredWeaponGridOne_Stc[420]["MaxData"] = 1
	
	tHundredWeaponGridOne_Stc[430] = {}
	tHundredWeaponGridOne_Stc[430]["EventType"] = 193
	tHundredWeaponGridOne_Stc[430]["DataType"] = 57
	tHundredWeaponGridOne_Stc[430]["MaxData"] = 1
	
	tHundredWeaponGridOne_Stc[440] = {}
	tHundredWeaponGridOne_Stc[440]["EventType"] = 194
	tHundredWeaponGridOne_Stc[440]["DataType"] = 06
	tHundredWeaponGridOne_Stc[440]["MaxData"] = 10     --鞭任务，掩码记录10完成
	
	
	tHundredWeaponGridOne_Stc[450] = {}
	tHundredWeaponGridOne_Stc[450]["EventType"] = 193
	tHundredWeaponGridOne_Stc[450]["DataType"] = 93
	tHundredWeaponGridOne_Stc[450]["MaxData"] = 1
	
	tHundredWeaponGridOne_Stc[460] = {}
	tHundredWeaponGridOne_Stc[460]["EventType"] = 197
	tHundredWeaponGridOne_Stc[460]["DataType"] = 40
	tHundredWeaponGridOne_Stc[460]["MaxData"] = 1
	
	tHundredWeaponGridOne_Stc[481] = {}
	tHundredWeaponGridOne_Stc[481]["EventType"] = 197
	tHundredWeaponGridOne_Stc[481]["DataType"] = 41
	tHundredWeaponGridOne_Stc[481]["MaxData"] = 1
	
	tHundredWeaponGridOne_Stc[480] = {}
	tHundredWeaponGridOne_Stc[480]["EventType"] = 193
	tHundredWeaponGridOne_Stc[480]["DataType"] = 73
	tHundredWeaponGridOne_Stc[480]["MaxData"] = 1
	
	tHundredWeaponGridOne_Stc[490] = {}
	tHundredWeaponGridOne_Stc[490]["EventType"] = 197
	tHundredWeaponGridOne_Stc[490]["DataType"] = 42
	tHundredWeaponGridOne_Stc[490]["MaxData"] = 1
	
	
	
	
	
	
	
local tHundredWeaponGridOne_Log = {}
	tHundredWeaponGridOne_Log["IntoInstance"] = "0,0,0,0,12001375,1,0,0"
	tHundredWeaponGridOne_Log["DelItem"] = "0,0,3312904,%d,12000545,2,0,0"
--怪物信息
	local tHundredWeaponGridOne_Boss = {}
	tHundredWeaponGridOne_Boss[154] = {}
	tHundredWeaponGridOne_Boss[154]["MapId"] = 10502
	tHundredWeaponGridOne_Boss[154]["PosX"] = 43
	tHundredWeaponGridOne_Boss[154]["PosY"] = 55
	tHundredWeaponGridOne_Boss[154]["GenId"] = 27036
	tHundredWeaponGridOne_Boss[154]["MonsterId"] = 3547
	tHundredWeaponGridOne_Boss[154]["ItemId"] = 3312303
	tHundredWeaponGridOne_Boss[155] = {}
	tHundredWeaponGridOne_Boss[155]["MapId"] = 10503
	tHundredWeaponGridOne_Boss[155]["PosX"] = 31
	tHundredWeaponGridOne_Boss[155]["PosY"] = 32
	tHundredWeaponGridOne_Boss[155]["GenId"] = 27037
	tHundredWeaponGridOne_Boss[155]["MonsterId"] = 3546
	tHundredWeaponGridOne_Boss[155]["ItemId"] = 3312302
	
	
	-- ===开启御魂空间 扣除两个道具
	local tHundredWeaponGridOne_Item = {}
	tHundredWeaponGridOne_Item["LogId"] = 12001375
	tHundredWeaponGridOne_Item["DeleteItem"] = {}
	tHundredWeaponGridOne_Item["DeleteItem"][1] = {}
	tHundredWeaponGridOne_Item["DeleteItem"][1]["Id"] = 3312302
	tHundredWeaponGridOne_Item["DeleteItem"][2] = {}
	tHundredWeaponGridOne_Item["DeleteItem"][2]["Id"] = 3312303
	tHundredWeaponGridOne_Item["RewardEffect"] = {}
	tHundredWeaponGridOne_Item["RewardEffect"]["SzObj"] = "self" 
	tHundredWeaponGridOne_Item["RewardEffect"]["Effect"] = "accession"
	
	-- ===巨炎魔掉落
	-- ===索引:tHundredWeaponGridOne_Item[3546]
	tHundredWeaponGridOne_Item[3546] = {}
	tHundredWeaponGridOne_Item[3546]["LogId"] = 12001375
	tHundredWeaponGridOne_Item[3546]["RewardItem"] = {}
	tHundredWeaponGridOne_Item[3546]["RewardItem"][1] = {}
	tHundredWeaponGridOne_Item[3546]["RewardItem"][1]["Id"] = 3312302 -- 【库】赤阳丹[属性:0], 【表格】赤阳丹
	tHundredWeaponGridOne_Item[3546]["RewardItem"][1]["Attr"] = "0 1" -- 赤阳丹*1
	tHundredWeaponGridOne_Item[3546]["RewardEffect"] = {}
	tHundredWeaponGridOne_Item[3546]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHundredWeaponGridOne_Item[3546]["RewardEffect"]["Effect"] = "fire1"

	-- ===寒冰魔掉落
	-- ===索引:tHundredWeaponGridOne_Item[3547]
	tHundredWeaponGridOne_Item[3547] = {}
	tHundredWeaponGridOne_Item[3547]["LogId"] = 12001375
	tHundredWeaponGridOne_Item[3547]["RewardItem"] = {}
	tHundredWeaponGridOne_Item[3547]["RewardItem"][1] = {}
	tHundredWeaponGridOne_Item[3547]["RewardItem"][1]["Id"] = 3312303 -- 【库】玄阴丹[属性:0], 【表格】玄阴丹
	tHundredWeaponGridOne_Item[3547]["RewardItem"][1]["Attr"] = "0 1" -- 玄阴丹*1
	tHundredWeaponGridOne_Item[3547]["RewardEffect"] = {}
	tHundredWeaponGridOne_Item[3547]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHundredWeaponGridOne_Item[3547]["RewardEffect"]["Effect"] = "fire1"



	
-----------------------------------------------------------------------------------
--添加任务和寻路
function HundredWeaponGridOne_AddTask(nIndex)
	local nUserId = Get_UserId()
	local nTaskId = tHundredWeaponGridOne_Cont["TaskId"][nIndex]
	
	local nMapId = tHundredWeaponGridOne_Cont["Find"][nIndex]["MapId"]
	local nPosX = tHundredWeaponGridOne_Cont["Find"][nIndex]["Posx"]
	local nPosY = tHundredWeaponGridOne_Cont["Find"][nIndex]["Posy"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tHundredWeaponGridOne_Cont["NoGifFind"][nIndex]["MapId"]
		nPosX = tHundredWeaponGridOne_Cont["NoGifFind"][nIndex]["Posx"]
		nPosY = tHundredWeaponGridOne_Cont["NoGifFind"][nIndex]["Posy"]
	end
	
	--第二格取得物品不再传送
	if nIndex == 1 or nIndex == 2 then
		local nItemId = tHundredWeaponGridOne_Cont["Find"][nIndex]["ItemId"]
		local sItemName = Get_ItemtypeName(nItemId)
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["Finish"],sItemName))
			return
		end
	end
	--添加任务
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	end
	--寻路到对应陷阱
	User_ChgMap(nMapId,nPosX,nPosY,0,nUserId)
	
end

--进入副本
function HundredWeaponGridOne_IntoInstance(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	local nTaskId = tHundredWeaponGridOne_Cont["TaskId"][1]
	local nItemId = tHundredWeaponGridOne_Boss[nTrapType]["ItemId"]
	local sItemName = Get_ItemtypeName(nItemId)
	local nMonsterId = tHundredWeaponGridOne_Boss[nTrapType]["MonsterId"]
	local sMonsterName = tHundredWeaponGridOne_Text["Monster"][nMonsterId]
	--没有任务的不让进
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	--任务完成的不让进
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">",0,nUserId) then
		Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["Finish"],sItemName))
		return
	end
	
	--已经打到任务物品不让进
	if Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["Finish"],sItemName))
		return
	end
	
	-- 组队不让进
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tHundredWeaponGridOne_Text["Msg"]["HaveATeam"])
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tHundredWeaponGridOne_Cont["Space"]) then
		Sys_MsgBox(tHundredWeaponGridOne_Text["Msg"]["NoSpace"])
		return
	end
	
	local sFunc = string.format("HundredWeaponGridOne_EnterInstance</N>%d</S>%s",nTrapType,sMonsterName)
	Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["Trap"],sMonsterName),sFunc,nil,nUserId)
end
function HundredWeaponGridOne_EnterInstance(nTrapType,sMonsterName)
	local nUserId = Get_UserId()
	local nInstanceType = tHundredWeaponGridOne_Cont["Instancetype"][nTrapType]
	
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["EnterInstance"],sMonsterName))
		Sys_SaveActionFestivalLog(tHundredWeaponGridOne_Log["IntoInstance"])
		HundredWeaponGridOne_RefreshMonster(nUserId,nTrapType)
	end
end


--刷新任务怪
function HundredWeaponGridOne_RefreshMonster(nUserId,nTrapType)
	local nUserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	--判断当前地图是否有BOSS
	if HundredWeaponGridOne_ChkBoss(nMapId,nTrapType) then
		return
	end
	

	local nPosX = tHundredWeaponGridOne_Boss[nTrapType]["PosX"]
	local nPosY = tHundredWeaponGridOne_Boss[nTrapType]["PosY"]
	local nGenId = tHundredWeaponGridOne_Boss[nTrapType]["GenId"]
	local nMonsterId = tHundredWeaponGridOne_Boss[nTrapType]["MonsterId"]
	
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
end
--检测怪物数量
function HundredWeaponGridOne_ChkBoss(nMapId,nTrapType)
local nMonsterId = tHundredWeaponGridOne_Boss[nTrapType]["MonsterId"]
	if Get_SysTempData(1,nMapId,nMonsterId) > 0 then
		return true
	end
end
--传送回双龙城
function HundredWeaponGridOne_GoBack(nTrapId,nTrapType)
	local sText = tHundredWeaponGridOne_Text["Msg"]["GoBack"]
	
	local nUserId = Get_UserId()
	
	Sys_MsgBox(sText,"HundredWeaponGridOne_ChgMap",nil,nUserId)

end
--传送
function HundredWeaponGridOne_ChgMap()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	if tHundredWeaponGridOne_Cont["BoundTrans"][nIndex] == nil then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tHundredWeaponGridOne_Cont["BoundTrans"][nIndex]["MapId"]
	local nBoundX = tHundredWeaponGridOne_Cont["BoundTrans"][nIndex]["PosX"]
	local nBoundY = tHundredWeaponGridOne_Cont["BoundTrans"][nIndex]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,0,nUserId)
	
end

--杀怪掉落
function HundredWeaponGridOne_KillBoss(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nTaskId = tHundredWeaponGridOne_Cont["TaskId"][1]
	local nItemId = tHundredWeaponGridOne_Cont["MonsterDro"][nMonsterId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemId_One = tHundredWeaponGridOne_Cont["MonsterDro"][3546]
	local nItemId_Two = tHundredWeaponGridOne_Cont["MonsterDro"][3547]
	
	--有任务
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		User_Screffect(1,nUserId)
		Monster_Death(nMonsterId,nMapId)
		--掉落任务物品
		RewardTemplate_UseItemAndMsg(tHundredWeaponGridOne_Item[nMonsterId],nUserId)
		if Item_ChkMulItem(nItemId_One,nItemId_One,1) and Item_ChkMulItem(nItemId_Two,nItemId_Two,1) then
			Sys_MsgBox(tHundredWeaponGridOne_Text["Msg"]["GetTwo"],"HundredWeaponGridOne_ChgMap",nil,nUserId)
		else
			Sys_MsgBox(tHundredWeaponGridOne_Text["Map"][nItemId],"HundredWeaponGridOne_ChgMap",nil,nUserId)
		end
	end
end
--使用物品开启御魂
function HundredWeaponGridOne_UserItem(nItemId)
	local nEvent = tHundredWeaponGridOne_Stc["EventType"]
	local nType = tHundredWeaponGridOne_Stc["DataType"]
	local nTaskId = tHundredWeaponGridOne_Cont["TaskId"][1]
	local nItemId_One = tHundredWeaponGridOne_Cont["MonsterDro"][3546]
	local nItemId_Two = tHundredWeaponGridOne_Cont["MonsterDro"][3547]
	--没有任务的不让用
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	--任务完成的不让用
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">",0,nUserId) then
		return
	end
	
	if Item_ChkMulItem(nItemId_One,nItemId_One,1) and Item_ChkMulItem(nItemId_Two,nItemId_Two,1) then
		--设置完成掩码
		Task_AddStatistic(nEvent,nType,1,1)
		--任务置完成
		Sys_MsgBox(tHundredWeaponGridOne_Text["Msg"]["GetItem"])
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
		RewardTemplate_UseItemAndMsg(tHundredWeaponGridOne_Item)
		return
	end
	
	Sys_MsgBox(tHundredWeaponGridOne_Text["Msg"]["NoItem"])
end
--职业检测
function HundredWeaponGridOne_JudgePro(nUserId,nIndex)
	--第一个任务无需就职
	if nIndex <= 2 then
		nIndex = 0 
	end
	
	local nLevel = tHundredWeaponGridOne_Cont["Level"][2]
	local nMinMeto = tHundredWeaponGridOne_Cont["MinMeto"]
	local nPro = tonumber(string.sub(tostring(Get_UserProfession(nUserId)),-1))
	
	if User_JudgeLevelAndMetempsychosis(nLevel,nMinMeto) and nPro >= nIndex then
		return true
	else
		return false
	end
end
function HundredWeaponGridOne_EmoneyAwaken(nIndex,nNpcId)
	local nUserId = Get_UserId()
	local nEvent_Star = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType_Star = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	local nData = Get_UserStatisticValue(nEvent_Star,nType_Star,nUserId) + 1
	local nNeedNum = tHundredWeaponGridOne_Cont["ItemNum"][nData]
	tNpcGossip[23971]["Text812"] = string.format(tHundredWeaponGridOne_Text[23971]["Text812"],nNeedNum)
	tNpcGossip[23971]["OptionFunc811"] = "HundredWeaponGridOne_UseEmoney</N>"..nIndex.."</N>"..nNpcId
	LinkNpcGossipFunc_New(nNpcId,"8-1")
end
function HundredWeaponGridOne_UseEmoney(nIndex,nNpcId)
	local nUserId = Get_UserId()
	local nItemId = tHundredWeaponGridOne_Cont["ItemId"]
	--获取兵魂任务ID
	local nEvent = tHundredWeaponGridOne_Stc[nIndex]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[nIndex]["DataType"]
	local nEvent_Star = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType_Star = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	local nData = Get_UserStatisticValue(nEvent_Star,nType_Star,nUserId) + 1
	local nNeedNum = tHundredWeaponGridOne_Cont["ItemNum"][nData]
	local sLog = string.format(tHundredWeaponGridOne_Log["DelItem"],nNeedNum)
	--获取兵魂任务ID
	local nEvent = tHundredWeaponGridOne_Stc[nIndex]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[nIndex]["DataType"]
	if Item_ChkMulItem(nItemId,nItemId,nNeedNum) and Item_DelMulItem(nItemId,nItemId,nNeedNum) then
		Sys_SaveActionFestivalLog(sLog,nUserId)
		if Task_AddStatistic(nEvent,nType,10,1,nUserId) and Task_AddStatistic(nEvent_Star,nType_Star,1,1,nUserId) then
			User_EffectAdd("self","accession",nUserId)
			User_AwardHundredWeapon(nIndex,nUserId)
			Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["Awaken"],tHundredWeaponGridOne_Text["UserTalk"][nIndex]))
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"8-2")
	end
end
--免费觉醒兵魂
function HundredWeaponGridOne_Awaken(nIndex,nNpcId)
	local nUserId = Get_UserId()
	--获取兵魂任务ID
	local nEvent = tHundredWeaponGridOne_Stc[nIndex]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[nIndex]["DataType"]
	local nEvent_Star = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType_Star = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	local nData = Get_UserStatisticValue(nEvent_Star,nType_Star,nUserId) + 1
	local nNextLevel = tHundredWeaponGridOne_Task["Level"][nData]
	local nMinMeto = tHundredWeaponGridOne_Cont["MinMeto"]
	local nUserLev = Get_UserLevel(nUserId)
	--玩家新的职业编号
	local nUserNewPro = Get_NewUserProfession()
	local nNeedPro = tHundredWeaponGridOne_Task["NewPro"][nData]
	local nUserPro = Get_UserProfession()
	local nFirstTaskId = tHundredWeaponGridOne_Cont["FirstTaskId"]
	
	if not Task_ChkTaskDetail(nFirstTaskId) then
		if not Task_AddTaskDetail(nFirstTaskId) then
			return
		end
	end
	
	local nComplete = Get_TaskDetailCompleteFlag(nFirstTaskId,nUserId)
	if (nUserPro >= G_PRO_Trojan0 and nUserPro <= G_PRO_Trojan5) and nComplete >= 1  then
		
		if nUserLev < nNextLevel or nUserNewPro < nNeedPro then 
			tNpcGossip[23971]["Text512"] = string.format(tHundredWeaponGridOne_Text[23971]["Text512"],nNextLevel,tHundredWeaponGridOne_Text["UserTalk"][nData])
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
		
		if Task_AddStatistic(nEvent,nType,10,1,nUserId) and Task_AddStatistic(nEvent_Star,nType_Star,1,1,nUserId) then
			User_EffectAdd("self","accession",nUserId)
			User_AwardHundredWeapon(nIndex,nUserId)
			Sys_MsgBox(string.format(tHundredWeaponGridOne_Text["Msg"]["Awaken"],tHundredWeaponGridOne_Text["UserTalk"][nIndex]))
		end
	end
end
--觉醒兵魂等级判断
function HundredWeaponGridOne_AwakenJudge(nIndex,nNpcId)
	local nUserId = Get_UserId()
	local nUserLev = Get_UserLevel(nUserId)
	local nEvent_Star = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType_Star = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	local nEvent = tHundredWeaponGridOne_Stc[nIndex]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[nIndex]["DataType"]
	local nFinishData = tHundredWeaponGridOne_Stc[nIndex]["MaxData"]
	
	
	local nData = Get_UserStatisticValue(nEvent_Star,nType_Star,nUserId) + 1
	local nNextLevel = tHundredWeaponGridOne_Task["Level"][nData]
	local nMinMeto = tHundredWeaponGridOne_Cont["MinMeto"]
	local nTaskId = tHundredWeaponGridOne_Task["Star_Task"]["Common"][nIndex]
	local tTask = tHundredWeaponGridOne_Task["Common_Task"]
	local tUserIndex = tHundredWeaponGridOne_Task["Star_Task"]["Common"]
	--玩家新的职业编号
	local nUserNewPro = Get_NewUserProfession()
	local nNeedPro = tHundredWeaponGridOne_Task["NewPro"][nData]
	local nUserPro = Get_UserProfession()
	local nFirstTaskId = tHundredWeaponGridOne_Cont["FirstTaskId"]
	local nComplete = Get_TaskDetailCompleteFlag(nFirstTaskId,nUserId)
	if (nUserPro >= G_PRO_Trojan0 and nUserPro <= G_PRO_Trojan5) and nComplete >= 1  then
	
	if SpecialServer_ChkNoGiftServer() then
		nTaskId = tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][nIndex]
		tTask = tHundredWeaponGridOne_Task["NoGif_Task"]
		tUserIndex = tHundredWeaponGridOne_Task["Star_Task"]["NoGif"]
	end
	
	--点击的任务已经完成了
	if Task_ChkStcValue(nEvent,nType,">=",nFinishData,nUserId) then
		--玩家已完成任务情况下，检测兵魂是否正常开启，防止外部百兵谱玩家数据表一直丢失
		local nOpenIndex = Get_UserHundredWeaponInt(nIndex,5,nUserId)
		if nOpenIndex ~= nil and nOpenIndex == 0 then
			User_AwardHundredWeapon(nIndex,nUserId)
			User_EffectAdd("self","accession",nUserId)
		end
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
	
	--身上已有任务
	for i,nUserTaskId in pairs(tTask) do
		if Task_ChkTaskDetail(nUserTaskId,nUserId) then
			for i,v in pairs(tUserIndex) do
				if nUserTaskId == v then
					nEvent =tHundredWeaponGridOne_Stc[i]["EventType"]
					nType = tHundredWeaponGridOne_Stc[i]["DataType"]
					if nIndex == i then
						tNpcGossip[23971]["OptionFunc611"] = "HundredWeaponGridOne_AwakenTask</N>"..nIndex
						LinkNpcGossipFunc_New(nNpcId,"6-1")
					else
						if not Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
							LinkNpcGossipFunc_New(nNpcId,"5-2")
							return
						end
						end
					end
				end
			end
		end
		if nUserLev < nNextLevel or nUserNewPro < nNeedPro then 
			tNpcGossip[23971]["Text512"] = string.format(tHundredWeaponGridOne_Text[23971]["Text512"],nNextLevel,tHundredWeaponGridOne_Text["UserTalk"][nData])
			tNpcGossip[23971]["OptionFunc511"] = "HundredWeaponGridOne_EmoneyAwaken</N>"..nIndex.."</N>"..nNpcId
			LinkNpcGossipFunc_New(nNpcId,"5-1")
		else
			tNpcGossip[23971]["OptionFunc611"] = "HundredWeaponGridOne_AwakenTask</N>"..nIndex
			LinkNpcGossipFunc_New(nNpcId,"6-1")
		end
	end
end
--接觉醒任务传送
function HundredWeaponGridOne_AwakenTask(nIndex)
	local nUserId = Get_UserId()
	local nTaskId = tHundredWeaponGridOne_Task["Star_Task"]["Common"][nIndex]
	local nMapId = tHundredWeaponGridOne_Cont["Find"][nIndex]["MapId"]
	local nBoundX = tHundredWeaponGridOne_Cont["Find"][nIndex]["Posx"] 
	local nBoundY = tHundredWeaponGridOne_Cont["Find"][nIndex]["Posy"] 
	local nUserPro = Get_UserProfession()
	local nFirstTaskId = tHundredWeaponGridOne_Cont["FirstTaskId"]
	local nComplete = Get_TaskDetailCompleteFlag(nFirstTaskId,nUserId)
	if SpecialServer_ChkNoGiftServer() then
		nTaskId = tHundredWeaponGridOne_Task["Star_Task"]["NoGif"][nIndex]
		nMapId = tHundredWeaponGridOne_Cont["NoGifFind"][nIndex]["MapId"]
		nBoundX = tHundredWeaponGridOne_Cont["NoGifFind"][nIndex]["Posx"] 
		nBoundY = tHundredWeaponGridOne_Cont["NoGifFind"][nIndex]["Posy"] 
	end
	
	if (nUserPro >= G_PRO_Trojan0 and nUserPro <= G_PRO_Trojan5) and nComplete >= 1  then
		
		--添加任务
		if not Task_ChkTaskDetail(nTaskId,nUserId) then
			if not Task_AddTaskDetail(nTaskId,0,nUserId) then
				return
			end
		end
		--寻路到对应陷阱
		User_ChgMap(nMapId,nBoundX,nBoundY,0,nUserId)
	end
end
-----------------------------------------------------------------------------------
--物品部分
tItem[3312302] = tItem[3312302] or {}
tItem[3312302]["Function"] = function(nItemId, sItemName)
	HundredWeaponGridOne_UserItem(nItemId,sItemName)
end
tItem[3312303] = tItem[3312302]
-----------------------------------------------------------------------------------
tNpcFace[6479]=13
tNpcGossip[23971]=tNpcGossip[23971]	or	DefaultNpc:new{}
tNpcGossip[23971]["OptionHidden"]=1
tNpcGossip[23971]["DialogueText"]=tHundredWeaponGridOne_Text[23971]
--非勇士显示闲聊对白
tNpcGossip[23971]["Text1-1"]={111,112}
tNpcGossip[23971]["tOption1-1"]={111}
tNpcGossip[23971]["ChkFunc1-1"] = function()
	local nUserId = Get_UserId()
	local nUserPro = Get_UserProfession()
	local nTaskId = tHundredWeaponGridOne_Cont["FirstTaskId"]
	local nComplete = Get_TaskDetailCompleteFlag(nTaskId,nUserId)
	local nOpenNum = 0
	local nEvent_Star = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType_Star = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	local nData = Get_UserStatisticValue(nEvent_Star,nType_Star,nUserId)
	if (nUserPro >= G_PRO_Trojan0 and nUserPro <= G_PRO_Trojan5) and nComplete >= 1  then
		--勇士职业每次点击，获取当前开启兵器数重置下掩码，防止异常
		for i,v in pairs(tHundredWeaponGridOne_Cont["HundredWeapon"]) do 
			local nOpenIndex = Get_UserHundredWeaponInt(v,5,nUserId)
			if nOpenIndex ~= nil and nOpenIndex > 0 then
				nOpenNum = nOpenNum + 1
			end
		end
		if nData ~=nil and nData ~= nOpenNum then
			Task_SetStatistic(nEvent_Star,nType_Star,nOpenNum,1,nUserId)
		end
		return false
	else
		return true
	end
	
end
--觉醒对白
tNpcGossip[23971]["Text1-2"]={211,212,213,214,215,216,217,218,219,2110,2111,2112,2113}
tNpcGossip[23971]["tOption1-2"]={211,212,213}

tNpcGossip[23971]["OptionChkFunc211"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return false
	else
		--总开启数为0，但是有开启掩码了
		for i,v in pairs(tHundredWeaponGridOne_Cont["HundredWeapon"]) do 
			local nEvent = tHundredWeaponGridOne_Stc[v]["EventType"]
			local nType = tHundredWeaponGridOne_Stc[v]["DataType"]
			local nFinishData = tHundredWeaponGridOne_Stc[v]["MaxData"]
			if Task_ChkStcValue(nEvent,nType,">=",nFinishData,nUserId) then
				return false
			end
		end
		return true
	end
end
tNpcGossip[23971]["OptionChkFunc212"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		--总开启数为0，但是有开启掩码了
		for i,v in pairs(tHundredWeaponGridOne_Cont["HundredWeapon"]) do 
			local nEvent = tHundredWeaponGridOne_Stc[v]["EventType"]
			local nType = tHundredWeaponGridOne_Stc[v]["DataType"]
			local nFinishData = tHundredWeaponGridOne_Stc[v]["MaxData"]
			if Task_ChkStcValue(nEvent,nType,">=",nFinishData,nUserId) then
				return true
			end
		end
		return false
	end
end
tNpcGossip[23971]["OptionChkFunc213"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		return false
	end
end
tNpcGossip[23971]["OptionPoint211"] = "3-1"
tNpcGossip[23971]["OptionPoint212"] = "4-1"
tNpcGossip[23971]["OptionPoint213"] = "7-1"
--免费觉醒兵魂
tNpcGossip[23971]["Text3-1"]={311,312}
tNpcGossip[23971]["tOption3-1"]={311,312,313,314,315,316,317,318,319}
tNpcGossip[23971]["OptionPoint311"] = "3-2"
tNpcGossip[23971]["OptionPoint312"] = "3-3"
tNpcGossip[23971]["OptionPoint313"] = "3-4"
tNpcGossip[23971]["OptionPoint314"] = "3-5"
tNpcGossip[23971]["OptionPoint315"] = "3-6"
tNpcGossip[23971]["OptionPoint316"] = "3-7"
tNpcGossip[23971]["OptionPoint317"] = "3-8"
tNpcGossip[23971]["OptionPoint318"] = "3-9"
tNpcGossip[23971]["OptionPoint319"] = "3-10"

--觉醒兵魂二次确认
tNpcGossip[23971]["Text3-2"]={321,322}
tNpcGossip[23971]["tOption3-2"]={321,322}

tNpcGossip[23971]["Text3-3"]={331,332}
tNpcGossip[23971]["tOption3-3"]={331,332}

tNpcGossip[23971]["Text3-4"]={341,342}
tNpcGossip[23971]["tOption3-4"]={341,342}

tNpcGossip[23971]["Text3-5"]={351,352}
tNpcGossip[23971]["tOption3-5"]={351,352}

tNpcGossip[23971]["Text3-6"]={361,362}
tNpcGossip[23971]["tOption3-6"]={361,362}

tNpcGossip[23971]["Text3-7"]={371,372}
tNpcGossip[23971]["tOption3-7"]={371,372}

tNpcGossip[23971]["Text3-8"]={381,382}
tNpcGossip[23971]["tOption3-8"]={381,382}

tNpcGossip[23971]["Text3-9"]={391,392}
tNpcGossip[23971]["tOption3-9"]={391,392}

tNpcGossip[23971]["Text3-10"]={3101,3102}
tNpcGossip[23971]["tOption3-10"]={3101,3102}


tNpcGossip[23971]["OptionFunc321"] = "HundredWeaponGridOne_Awaken</N>410</N>23971"
tNpcGossip[23971]["OptionFunc331"] = "HundredWeaponGridOne_Awaken</N>420</N>23971"
tNpcGossip[23971]["OptionFunc341"] = "HundredWeaponGridOne_Awaken</N>460</N>23971"
tNpcGossip[23971]["OptionFunc351"] = "HundredWeaponGridOne_Awaken</N>450</N>23971"
tNpcGossip[23971]["OptionFunc361"] = "HundredWeaponGridOne_Awaken</N>430</N>23971"
tNpcGossip[23971]["OptionFunc371"] = "HundredWeaponGridOne_Awaken</N>440</N>23971"
tNpcGossip[23971]["OptionFunc381"] = "HundredWeaponGridOne_Awaken</N>481</N>23971"
tNpcGossip[23971]["OptionFunc391"] = "HundredWeaponGridOne_Awaken</N>490</N>23971"
tNpcGossip[23971]["OptionFunc3101"] = "HundredWeaponGridOne_Awaken</N>480</N>23971"

tNpcGossip[23971]["OptionPoint322"] = "1-2"
tNpcGossip[23971]["OptionPoint332"] = "1-2"
tNpcGossip[23971]["OptionPoint342"] = "1-2"
tNpcGossip[23971]["OptionPoint352"] = "1-2"
tNpcGossip[23971]["OptionPoint362"] = "1-2"
tNpcGossip[23971]["OptionPoint372"] = "1-2"
tNpcGossip[23971]["OptionPoint382"] = "1-2"
tNpcGossip[23971]["OptionPoint392"] = "1-2"
tNpcGossip[23971]["OptionPoint3102"] = "1-2"

tNpcGossip[23971]["Text4-1"]={411,412}
tNpcGossip[23971]["tOption4-1"]={411,412,413,414,415,416,417,418,419}

tNpcGossip[23971]["OptionChkFunc411"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[410]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[410]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[410]["MaxData"]

	tNpcGossip[23971]["Option411"] = string.format(tHundredWeaponGridOne_Text[23971]["Option411"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option411"] = string.format(tHundredWeaponGridOne_Text[23971]["Option411"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end

tNpcGossip[23971]["OptionChkFunc412"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[420]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[420]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[420]["MaxData"]

	tNpcGossip[23971]["Option412"] = string.format(tHundredWeaponGridOne_Text[23971]["Option412"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option412"] = string.format(tHundredWeaponGridOne_Text[23971]["Option412"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end

tNpcGossip[23971]["OptionChkFunc413"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[460]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[460]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[460]["MaxData"]

	tNpcGossip[23971]["Option413"] = string.format(tHundredWeaponGridOne_Text[23971]["Option413"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option413"] = string.format(tHundredWeaponGridOne_Text[23971]["Option413"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionChkFunc414"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[450]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[450]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[450]["MaxData"]

	tNpcGossip[23971]["Option414"] = string.format(tHundredWeaponGridOne_Text[23971]["Option414"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option414"] = string.format(tHundredWeaponGridOne_Text[23971]["Option414"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionChkFunc415"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[430]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[430]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[430]["MaxData"]

	tNpcGossip[23971]["Option415"] = string.format(tHundredWeaponGridOne_Text[23971]["Option415"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option415"] = string.format(tHundredWeaponGridOne_Text[23971]["Option415"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionChkFunc416"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[440]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[440]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[440]["MaxData"]

	tNpcGossip[23971]["Option416"] = string.format(tHundredWeaponGridOne_Text[23971]["Option416"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option416"] = string.format(tHundredWeaponGridOne_Text[23971]["Option416"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionChkFunc417"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[481]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[481]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[481]["MaxData"]

	tNpcGossip[23971]["Option417"] = string.format(tHundredWeaponGridOne_Text[23971]["Option417"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option417"] = string.format(tHundredWeaponGridOne_Text[23971]["Option417"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionChkFunc418"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[490]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[490]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[490]["MaxData"]

	tNpcGossip[23971]["Option418"] = string.format(tHundredWeaponGridOne_Text[23971]["Option418"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option418"] = string.format(tHundredWeaponGridOne_Text[23971]["Option418"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionChkFunc419"] = function()
	local nUserId = Get_UserId()
	local nEvent = tHundredWeaponGridOne_Stc[480]["EventType"]
	local nType = tHundredWeaponGridOne_Stc[480]["DataType"]
	local nMaxData = tHundredWeaponGridOne_Stc[480]["MaxData"]

	tNpcGossip[23971]["Option419"] = string.format(tHundredWeaponGridOne_Text[23971]["Option419"],"")

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		tNpcGossip[23971]["Option419"] = string.format(tHundredWeaponGridOne_Text[23971]["Option419"],tHundredWeaponGridOne_Text["UserTalk"]["Awaken"])
	end
	return true
end
tNpcGossip[23971]["OptionFunc411"] = "HundredWeaponGridOne_AwakenJudge</N>410</N>23971"
tNpcGossip[23971]["OptionFunc412"] = "HundredWeaponGridOne_AwakenJudge</N>420</N>23971"
tNpcGossip[23971]["OptionFunc413"] = "HundredWeaponGridOne_AwakenJudge</N>460</N>23971"
tNpcGossip[23971]["OptionFunc414"] = "HundredWeaponGridOne_AwakenJudge</N>450</N>23971"
tNpcGossip[23971]["OptionFunc415"] = "HundredWeaponGridOne_AwakenJudge</N>430</N>23971"
tNpcGossip[23971]["OptionFunc416"] = "HundredWeaponGridOne_AwakenJudge</N>440</N>23971"
tNpcGossip[23971]["OptionFunc417"] = "HundredWeaponGridOne_AwakenJudge</N>481</N>23971"
tNpcGossip[23971]["OptionFunc418"] = "HundredWeaponGridOne_AwakenJudge</N>490</N>23971"
tNpcGossip[23971]["OptionFunc419"] = "HundredWeaponGridOne_AwakenJudge</N>480</N>23971"
--等级不足
tNpcGossip[23971]["Text5-1"]={511,512}
tNpcGossip[23971]["tOption5-1"]={511,512}
tNpcGossip[23971]["OptionChkFunc511"] = function()
	local nUserId = Get_UserId()
	local nEvent_Star = tHundredWeaponGridOne_Stc["FirstTask"]["EventType"]
	local nType_Star = tHundredWeaponGridOne_Stc["FirstTask"]["DataType"]	tNpcGossip[23971]["Option419"] = string.format(tHundredWeaponGridOne_Text[23971]["Option419"],"")
	if Task_ChkStatistic(nEvent_Star,nType_Star,nUserId) and Task_ChkStcValue(nEvent_Star,nType_Star,">=",6,nUserId) then
		return true
	else
		return false
	end
end
--已有任务
tNpcGossip[23971]["Text5-2"]={521,522}
tNpcGossip[23971]["tOption5-2"]={521}
--二次确认
tNpcGossip[23971]["Text8-1"]={811,812}
tNpcGossip[23971]["tOption8-1"]={811,812}
--天石不足
tNpcGossip[23971]["Text8-2"]={821,822}
tNpcGossip[23971]["tOption8-2"]={821}

--已完成任务
tNpcGossip[23971]["Text5-3"]={531,532}
tNpcGossip[23971]["tOption5-3"]={531}
--等级足够
tNpcGossip[23971]["Text6-1"]={611,612}
tNpcGossip[23971]["tOption6-1"]={611}

--神兵玄奇
tNpcGossip[23971]["Text7-1"]={711,712}
tNpcGossip[23971]["tOption7-1"]={711,712,713,714,715,716,717,718,719}

tNpcGossip[23971]["OptionPoint711"] = "7-2"
tNpcGossip[23971]["OptionPoint712"] = "7-3"
tNpcGossip[23971]["OptionPoint713"] = "7-4"
tNpcGossip[23971]["OptionPoint714"] = "7-5"
tNpcGossip[23971]["OptionPoint715"] = "7-6"
tNpcGossip[23971]["OptionPoint716"] = "7-7"
tNpcGossip[23971]["OptionPoint717"] = "7-8"
tNpcGossip[23971]["OptionPoint718"] = "7-9"
tNpcGossip[23971]["OptionPoint719"] = "7-10"

tNpcGossip[23971]["Text7-2"]={721,722,723,724,725,726}
tNpcGossip[23971]["tOption7-2"]={721,722}

tNpcGossip[23971]["Text7-3"]={731,732,733,734,735,736}
tNpcGossip[23971]["tOption7-3"]={731,732}

tNpcGossip[23971]["Text7-4"]={741,742,743,744,745,746}
tNpcGossip[23971]["tOption7-4"]={741,742}

tNpcGossip[23971]["Text7-5"]={751,752,753,754,755,756}
tNpcGossip[23971]["tOption7-5"]={751,752}

tNpcGossip[23971]["Text7-6"]={761,762,763,764,765,766}
tNpcGossip[23971]["tOption7-6"]={761,762}

tNpcGossip[23971]["Text7-7"]={771,772,773,774,775,776}
tNpcGossip[23971]["tOption7-7"]={771,772}

tNpcGossip[23971]["Text7-8"]={781,782,783,784,785,786}
tNpcGossip[23971]["tOption7-8"]={781,782}

tNpcGossip[23971]["Text7-9"]={791,792,783,784,785,796}
tNpcGossip[23971]["tOption7-9"]={791,792}

tNpcGossip[23971]["Text7-10"]={7101,7102,7103,7104,7105,7106}
tNpcGossip[23971]["tOption7-10"]={7101,7102}


tNpcGossip[23971]["OptionPoint721"] = "7-1"
tNpcGossip[23971]["OptionPoint731"] = "7-1"
tNpcGossip[23971]["OptionPoint741"] = "7-1"
tNpcGossip[23971]["OptionPoint751"] = "7-1"
tNpcGossip[23971]["OptionPoint761"] = "7-1"
tNpcGossip[23971]["OptionPoint771"] = "7-1"
tNpcGossip[23971]["OptionPoint781"] = "7-1"
tNpcGossip[23971]["OptionPoint791"] = "7-1"
tNpcGossip[23971]["OptionPoint7101"] = "7-1"








---------------------------------------------怪物模块---------------------------------------------
local tHundredWeaponGridOne_KillBoss = {}
	tHundredWeaponGridOne_KillBoss["Function"]= HundredWeaponGridOne_KillBoss
	tHundredWeaponGridOne_KillBoss["MonsterId"] = {3546,3547}
	
	table.insert(tMonsterDrop_AreaLoad,tHundredWeaponGridOne_KillBoss)
	
---------------------------------------------陷阱模块---------------------------------------------

tTrap[154] = tTrap[154] or {}
tTrap[154]["Function"] = function(nTrapId,nTrapType)
	HundredWeaponGridOne_IntoInstance(nTrapId,nTrapType)
end
tTrap[155] = tTrap[154]

tTrap[156] = tTrap[156] or {}
tTrap[156]["Function"] = function(nTrapId,nTrapType)
	HundredWeaponGridOne_GoBack(nTrapId,nTrapType)
end