------------------------------------------------------------------------------------
--Name:		180626[简体征服][任务脚本]调整版本国境调整-内功秘籍
--Purpose:		调整版本内功秘籍
--Creator:		许乐
--Created:		2018/06/26
------------------------------------------------------------------------------------
-- 前缀
-- InternalWorkSecret_
-----------------------------------------------------------
-- stc掩码说明          
-- stc(178,79)		背包信
-- stc(178,80)		记录奖励内容
-- stc(178,81)		记录玩家刷新奖励次数(修为值)
-- stc(178,82)		记录玩家是否已领取本次随机的奖励	 ==0 表示第一次点开  ==1 表示未领取 == 2 表示已领取
-- stc(178,83)		记录玩家刷新的奖励是哪个奖池里的
-- stc(179,17)		记录玩家刷新奖励总次数（物品+修为值 都算）

-- 动态码说明
-- 52719		记录每日奖励获得限制 data0 三星外套  data1 四星外套 

-- logid: 18000182
---------------------------------------------------------------
local tInternalWorkSecret_Cont = {}	
	tInternalWorkSecret_Cont["OtherTask"] = 590001
	-- 等级限制
	tInternalWorkSecret_Cont["Level"] = 0
	tInternalWorkSecret_Cont["Metempsychosis"] = 2
	
	tInternalWorkSecret_Cont["NpcId"] = 23021
	tInternalWorkSecret_Cont["MapId"] = 1002

	-- 52719		记录每日奖励获得限制 data0 三星外套  data1 四星外套 
	tInternalWorkSecret_Cont["Global"] = 52719
	
	tInternalWorkSecret_Cont["NeedItem"] = 3309945 -- 国境伏魔令
	
	tInternalWorkSecret_Cont["NeedItemNew"] = 3310804 -- 江湖豪侠令
	
	tInternalWorkSecret_Cont["NeedValue"] = 10  -- 初始修为值刷新值
	tInternalWorkSecret_Cont["NeedRefreshItem"] = 3309946  -- 八卦符
	
	-- 奖池名称对应编号  记录掩码用
	tInternalWorkSecret_Cont["Type"] = {}
	tInternalWorkSecret_Cont["Type"][1] = "PrizePool"
	tInternalWorkSecret_Cont["Type"][2] = "ThreeStar"
	tInternalWorkSecret_Cont["Type"][3] = "FourStar"
	tInternalWorkSecret_Cont["PrizePool"] = 1
	tInternalWorkSecret_Cont["ThreeStar"] = 2
	tInternalWorkSecret_Cont["FourStar"] = 3

	-- 可兑换修为值的秘籍
	tInternalWorkSecret_Cont["ItemId"] = {}
	tInternalWorkSecret_Cont["ItemId"][1] = 3005397
	tInternalWorkSecret_Cont["ItemId"][2] = 3005398
	tInternalWorkSecret_Cont["ItemId"][3] = 3007115
	tInternalWorkSecret_Cont["ItemId"][4] = 3007116
	tInternalWorkSecret_Cont["ItemId"][5] = 3007117
	tInternalWorkSecret_Cont["ItemId"][6] = 3005399
	tInternalWorkSecret_Cont["ItemId"][7] = 3005400
	tInternalWorkSecret_Cont["ItemId"][8] = 3005401
	tInternalWorkSecret_Cont["ItemId"][9] = 3007230
	tInternalWorkSecret_Cont["ItemId"][10] = 3007231
	tInternalWorkSecret_Cont["ItemId"][11] = 3007232
	tInternalWorkSecret_Cont["ItemId"][12] = 3005412
	---内功副本新增
	tInternalWorkSecret_Cont["ItemId"][13] = 3316129
	tInternalWorkSecret_Cont["ItemId"][14] = 3316130
	tInternalWorkSecret_Cont["ItemId"][15] = 3316131
	tInternalWorkSecret_Cont["ItemId"][16] = 3315418
	tInternalWorkSecret_Cont["ItemId"][17] = 3315419
	tInternalWorkSecret_Cont["ItemId"][18] = 3315420
	tInternalWorkSecret_Cont["ItemId"][19] = 3315421
	tInternalWorkSecret_Cont["ItemId"][20] = 3315422
	tInternalWorkSecret_Cont["ItemId"][21] = 3315423
	tInternalWorkSecret_Cont["ItemId"][22] = 3315424
	tInternalWorkSecret_Cont["ItemId"][23] = 3315425
	tInternalWorkSecret_Cont["ItemId"][24] = 3315426
	tInternalWorkSecret_Cont["ItemId"][25] = 3315427
	tInternalWorkSecret_Cont["ItemId"][26] = 3315428
	tInternalWorkSecret_Cont["ItemId"][27] = 3315429
	tInternalWorkSecret_Cont["ItemId"][28] = 3315430
	tInternalWorkSecret_Cont["ItemId"][29] = 3315431
	tInternalWorkSecret_Cont["ItemId"][30] = 3315432
	-- 秘籍可兑换的修为数值
	tInternalWorkSecret_Cont["CultureValue"] = {}
	tInternalWorkSecret_Cont["CultureValue"][3005397] = 1000
	tInternalWorkSecret_Cont["CultureValue"][3005398] = 2000
	tInternalWorkSecret_Cont["CultureValue"][3007115] = 1000
	tInternalWorkSecret_Cont["CultureValue"][3007116] = 2000
	tInternalWorkSecret_Cont["CultureValue"][3007117] = 3000
	tInternalWorkSecret_Cont["CultureValue"][3005399] = 2000
	tInternalWorkSecret_Cont["CultureValue"][3005400] = 3000
	tInternalWorkSecret_Cont["CultureValue"][3005401] = 4000
	tInternalWorkSecret_Cont["CultureValue"][3007230] = 3000
	tInternalWorkSecret_Cont["CultureValue"][3007231] = 4000
	tInternalWorkSecret_Cont["CultureValue"][3007232] = 5000
	tInternalWorkSecret_Cont["CultureValue"][3005412] = 10000
	---内功副本新增
	tInternalWorkSecret_Cont["CultureValue"][3316129] = 5000
	tInternalWorkSecret_Cont["CultureValue"][3316130] = 5000
	tInternalWorkSecret_Cont["CultureValue"][3316131] = 5000
	tInternalWorkSecret_Cont["CultureValue"][3315418] = 10000
	tInternalWorkSecret_Cont["CultureValue"][3315419] = 10000
	tInternalWorkSecret_Cont["CultureValue"][3315420] = 10000
	tInternalWorkSecret_Cont["CultureValue"][3315421] = 7500
	tInternalWorkSecret_Cont["CultureValue"][3315422] = 7500
	tInternalWorkSecret_Cont["CultureValue"][3315423] = 7500
	tInternalWorkSecret_Cont["CultureValue"][3315424] = 7500
	tInternalWorkSecret_Cont["CultureValue"][3315425] = 7500
	tInternalWorkSecret_Cont["CultureValue"][3315426] = 7500
	tInternalWorkSecret_Cont["CultureValue"][3315427] = 9000
	tInternalWorkSecret_Cont["CultureValue"][3315428] = 9000
	tInternalWorkSecret_Cont["CultureValue"][3315429] = 9000
	tInternalWorkSecret_Cont["CultureValue"][3315430] = 6000
	tInternalWorkSecret_Cont["CultureValue"][3315431] = 6000
	tInternalWorkSecret_Cont["CultureValue"][3315432] = 6000

local tInternalWorkSecret_Stc = {}
	-- stc(178,80)		记录奖励内容
	tInternalWorkSecret_Stc[1] = {}
	tInternalWorkSecret_Stc[1]["EventType"] = 178
	tInternalWorkSecret_Stc[1]["DataType"] = 80
	-- stc(178,81)		记录玩家刷新奖励次数
	tInternalWorkSecret_Stc[2] = {}
	tInternalWorkSecret_Stc[2]["EventType"] = 178
	tInternalWorkSecret_Stc[2]["DataType"] = 81
	-- stc(178,82)		记录玩家是否已领取本次随机的奖励
	-- ==0 表示第一次点开  ==1 表示未领取 == 2 表示已领取
	tInternalWorkSecret_Stc[3] = {}
	tInternalWorkSecret_Stc[3]["EventType"] = 178
	tInternalWorkSecret_Stc[3]["DataType"] = 82
	-- stc(178,83)		记录玩家刷新的奖励是哪个奖池里的
	tInternalWorkSecret_Stc[4] = {}
	tInternalWorkSecret_Stc[4]["EventType"] = 178
	tInternalWorkSecret_Stc[4]["DataType"] = 83
	-- stc(179,17)		记录玩家刷新奖励总次数（物品+修为值 都算）
	tInternalWorkSecret_Stc[5] = {}
	tInternalWorkSecret_Stc[5]["EventType"] = 179
	tInternalWorkSecret_Stc[5]["DataType"] = 17
	
-- 使用礼包
local tInternalWorkSecret_UsePack = {}
	-- 3310091		散功丹特惠包
	tInternalWorkSecret_UsePack[3310091] = {}
	tInternalWorkSecret_UsePack[3310091]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3310091]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3310091]["DeleteItem"][1]["Id"] = 3310091
	tInternalWorkSecret_UsePack[3310091]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3310091]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3310091]["RewardItem"][1]["Id"] = 3005412
	tInternalWorkSecret_UsePack[3310091]["RewardItem"][1]["Attr"] = "0 3"
	tInternalWorkSecret_UsePack[3310091]["LogId"] = 18000182
	-- 3309947		龙象般若功·上篇残页
	tInternalWorkSecret_UsePack[3309947] = {}
	tInternalWorkSecret_UsePack[3309947]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309947]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309947]["DeleteItem"][1]["Id"] = 3309947
	tInternalWorkSecret_UsePack[3309947]["DeleteItem"][1]["ItemNum"] = 15
	tInternalWorkSecret_UsePack[3309947]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309947]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309947]["RewardItem"][1]["Id"] = 3005397
	tInternalWorkSecret_UsePack[3309947]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309947]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309947]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309947]["RewardEffect"]["Effect"] = ""
	-- 3309948		龙象般若功·下篇残页
	tInternalWorkSecret_UsePack[3309948] = {}
	tInternalWorkSecret_UsePack[3309948]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309948]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309948]["DeleteItem"][1]["Id"] = 3309948
	tInternalWorkSecret_UsePack[3309948]["DeleteItem"][1]["ItemNum"] = 15
	tInternalWorkSecret_UsePack[3309948]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309948]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309948]["RewardItem"][1]["Id"] = 3005398
	tInternalWorkSecret_UsePack[3309948]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309948]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309948]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309948]["RewardEffect"]["Effect"] = ""
	-- 3309949		无量心经·上篇残页
	tInternalWorkSecret_UsePack[3309949] = {}
	tInternalWorkSecret_UsePack[3309949]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309949]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309949]["DeleteItem"][1]["Id"] = 3309949
	tInternalWorkSecret_UsePack[3309949]["DeleteItem"][1]["ItemNum"] = 15
	tInternalWorkSecret_UsePack[3309949]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309949]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309949]["RewardItem"][1]["Id"] = 3007115
	tInternalWorkSecret_UsePack[3309949]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309949]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309949]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309949]["RewardEffect"]["Effect"] = ""
	-- 3309950		无量心经·中篇残页
	tInternalWorkSecret_UsePack[3309950] = {}
	tInternalWorkSecret_UsePack[3309950]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309950]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309950]["DeleteItem"][1]["Id"] = 3309950
	tInternalWorkSecret_UsePack[3309950]["DeleteItem"][1]["ItemNum"] = 15
	tInternalWorkSecret_UsePack[3309950]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309950]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309950]["RewardItem"][1]["Id"] = 3007116
	tInternalWorkSecret_UsePack[3309950]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309950]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309950]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309950]["RewardEffect"]["Effect"] = ""
	-- 3309951		无量心经·下篇残页 
	tInternalWorkSecret_UsePack[3309951] = {}
	tInternalWorkSecret_UsePack[3309951]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309951]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309951]["DeleteItem"][1]["Id"] = 3309951
	tInternalWorkSecret_UsePack[3309951]["DeleteItem"][1]["ItemNum"] = 15
	tInternalWorkSecret_UsePack[3309951]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309951]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309951]["RewardItem"][1]["Id"] = 3007117
	tInternalWorkSecret_UsePack[3309951]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309951]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309951]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309951]["RewardEffect"]["Effect"] = ""
	-- 3309952		太乙神功·上篇残页
	tInternalWorkSecret_UsePack[3309952] = {}
	tInternalWorkSecret_UsePack[3309952]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309952]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309952]["DeleteItem"][1]["Id"] = 3309952
	tInternalWorkSecret_UsePack[3309952]["DeleteItem"][1]["ItemNum"] = 10
	tInternalWorkSecret_UsePack[3309952]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309952]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309952]["RewardItem"][1]["Id"] = 3005399
	tInternalWorkSecret_UsePack[3309952]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309952]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309952]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309952]["RewardEffect"]["Effect"] = ""
	-- 3309953		太乙神功·中篇残页
	tInternalWorkSecret_UsePack[3309953] = {}
	tInternalWorkSecret_UsePack[3309953]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309953]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309953]["DeleteItem"][1]["Id"] = 3309953
	tInternalWorkSecret_UsePack[3309953]["DeleteItem"][1]["ItemNum"] = 10
	tInternalWorkSecret_UsePack[3309953]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309953]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309953]["RewardItem"][1]["Id"] = 3005400
	tInternalWorkSecret_UsePack[3309953]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309953]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309953]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309953]["RewardEffect"]["Effect"] = ""
	-- 3309954		太乙神功·下篇残页
	tInternalWorkSecret_UsePack[3309954] = {}
	tInternalWorkSecret_UsePack[3309954]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309954]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309954]["DeleteItem"][1]["Id"] = 3309954
	tInternalWorkSecret_UsePack[3309954]["DeleteItem"][1]["ItemNum"] = 10
	tInternalWorkSecret_UsePack[3309954]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309954]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309954]["RewardItem"][1]["Id"] = 3005401
	tInternalWorkSecret_UsePack[3309954]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309954]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309954]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309954]["RewardEffect"]["Effect"] = ""
	-- 3309955		枯荣禅功·上篇残页
	tInternalWorkSecret_UsePack[3309955] = {}
	tInternalWorkSecret_UsePack[3309955]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309955]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309955]["DeleteItem"][1]["Id"] = 3309955
	tInternalWorkSecret_UsePack[3309955]["DeleteItem"][1]["ItemNum"] = 5
	tInternalWorkSecret_UsePack[3309955]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309955]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309955]["RewardItem"][1]["Id"] = 3007230
	tInternalWorkSecret_UsePack[3309955]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309955]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309955]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309955]["RewardEffect"]["Effect"] = ""
	-- 3309956		枯荣禅功·中篇残页
	tInternalWorkSecret_UsePack[3309956] = {}
	tInternalWorkSecret_UsePack[3309956]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309956]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309956]["DeleteItem"][1]["Id"] = 3309956
	tInternalWorkSecret_UsePack[3309956]["DeleteItem"][1]["ItemNum"] = 5
	tInternalWorkSecret_UsePack[3309956]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309956]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309956]["RewardItem"][1]["Id"] = 3007231
	tInternalWorkSecret_UsePack[3309956]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309956]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309956]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309956]["RewardEffect"]["Effect"] = ""
	-- 3309957		枯荣禅功·下篇残页
	tInternalWorkSecret_UsePack[3309957] = {}
	tInternalWorkSecret_UsePack[3309957]["DeleteItem"] = {}
	tInternalWorkSecret_UsePack[3309957]["DeleteItem"][1] = {}
	tInternalWorkSecret_UsePack[3309957]["DeleteItem"][1]["Id"] = 3309957
	tInternalWorkSecret_UsePack[3309957]["DeleteItem"][1]["ItemNum"] = 5
	tInternalWorkSecret_UsePack[3309957]["RewardItem"] = {}
	tInternalWorkSecret_UsePack[3309957]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack[3309957]["RewardItem"][1]["Id"] = 3007232
	tInternalWorkSecret_UsePack[3309957]["RewardItem"][1]["Attr"] = "0 1"
	tInternalWorkSecret_UsePack[3309957]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack[3309957]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack[3309957]["RewardEffect"]["Effect"] = ""
	
	--------------------- 内功道具抽奖  奖池内容
	tInternalWorkSecret_UsePack["PrizePool"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1]["ItemChanceSum"] = 100000
	-- 龙象般若功上卷	3005397	1	赠		0.10%		可在NPC处兑换1000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["Item_1"] = 3005397
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["Index"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardItem"][1]["Id"] = 3005397
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][1]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["Log"] = "0,0,3309945,5,18000182,2,3005397,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3005397]
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][1]["Star"] = 5
	-- 龙象般若功下卷	3005398	1	赠		0.10%       可在NPC处兑换2000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][2] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["Item_1"] = 3005398
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["Index"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardItem"][1]["Id"] = 3005398
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][2]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["Log"] = "0,0,3309945,5,18000182,2,3005398,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3005398]
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][2]["Star"] = 5
	-- 无量心经上卷	3007115	1	赠		0.10%           可在NPC处兑换1000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][3] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["Item_1"] = 3007115
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["Index"] = 3
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardItem"][1]["Id"] = 3007115
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][3]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["Log"] = "0,0,3309945,5,18000182,2,3007115,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3007115]
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][3]["Star"] = 5
	-- 无量心经中卷	3007116	1	赠		0.10%           可在NPC处兑换2000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][4] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["Item_1"] = 3007116
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["Index"] = 4
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardItem"][1]["Id"] = 3007116
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][4]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["Log"] = "0,0,3309945,5,18000182,2,3007116,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3007116]
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][4]["Star"] = 5
	-- 无量心经下卷	3007117	1	赠		0.10%           可在NPC处兑换3000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][5] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["Item_1"] = 3007117
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["Index"] = 5
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardItem"][1]["Id"] = 3007117
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][5]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["Log"] = "0,0,3309945,5,18000182,2,3007117,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3007117]
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][5]["Star"] = 5
	-- 太乙神功上卷	3005399	1	赠		0.10%           可在NPC处兑换2000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][6] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["Item_1"] = 3005399
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["Index"] = 6
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardItem"][1]["Id"] = 3005399
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][6]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["Log"] = "0,0,3309945,5,18000182,2,3005399,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3005399]
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][6]["Star"] = 5
	-- 太乙神功中卷	3005400	1	赠		0.10%           可在NPC处兑换3000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][7] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["Item_1"] = 3005400
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["Index"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardItem"][1]["Id"] = 3005400
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][7]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["Log"] = "0,0,3309945,5,18000182,2,3005400,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3005400]
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][7]["Star"] = 5
	-- 太乙神功下卷	3005401	1	赠		0.10%           可在NPC处兑换4000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][8] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["Item_1"] = 3005401
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["Index"] = 8
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardItem"][1]["Id"] = 3005401
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][8]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["Log"] = "0,0,3309945,5,18000182,2,3005401,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3005401]
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][8]["Star"] = 5
	-- 枯荣禅功上卷	3007230	1	赠		0.10%           可在NPC处兑换3000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][9] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["Item_1"] = 3007230
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["Index"] = 9
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardItem"][1]["Id"] = 3007230
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][9]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["Log"] = "0,0,3309945,5,18000182,2,3007230,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3007230]
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][9]["Star"] = 5
	-- 枯荣禅功中卷	3007231	1	赠		0.10%           可在NPC处兑换4000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][10] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["Item_1"] = 3007231
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["Index"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardItem"][1]["Id"] = 3007231
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][10]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["Log"] = "0,0,3309945,5,18000182,2,3007231,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3007231]
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][10]["Star"] = 5
	-- 枯荣禅功下卷	3007232	1	赠		0.10%           可在NPC处兑换5000点修为值
	tInternalWorkSecret_UsePack["PrizePool"][1][11] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["Item_1"] = 3007232
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["Index"] = 11
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardItem"][1]["Id"] = 3007232
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][11]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["Log"] = "0,0,3309945,5,18000182,2,3007232,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][3007232]
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["PrizePool"][1][11]["Star"] = 5
	-- 龙象般若功上卷残页	3309947	1	赠		7.00%	15个合成秘籍
	tInternalWorkSecret_UsePack["PrizePool"][1][12] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["ItemChance"] = 7000
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["Item_1"] = 3309947
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["Index"] = 12
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["RewardItem"][1]["Id"] = 3309947
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][12]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["Log"] = "0,0,3309945,5,18000182,2,3309947,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][12]["Star"] = 4
	-- 龙象般若功下卷残页	3309948	1	赠		7.00%   15个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][13] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["ItemChance"] = 7000
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["Item_1"] = 3309948
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["Index"] = 13
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["RewardItem"][1]["Id"] = 3309948
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][13]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["Log"] = "0,0,3309945,5,18000182,2,3309948,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][13]["Star"] = 4
	-- 无量心经上卷残页		3309949	1	赠		5.00%       15个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][14] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["ItemChance"] = 5000
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["Item_1"] = 3309949
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["Index"] = 14
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["RewardItem"][1]["Id"] = 3309949
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][14]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["Log"] = "0,0,3309945,5,18000182,2,3309949,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][14]["Star"] = 4
	-- 无量心经中卷残页		3309950	1	赠		5.00%       15个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][15] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["ItemChance"] = 5000
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["Item_1"] = 3309950
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["Index"] = 15
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["RewardItem"][1]["Id"] = 3309950
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][15]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["Log"] = "0,0,3309945,5,18000182,2,3309950,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][15]["Star"] = 4
	-- 无量心经下卷残页		3309951	1	赠		5.00%       15个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][16] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["ItemChance"] = 5000
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["Item_1"] = 3309951
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["Index"] = 16
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["RewardItem"][1]["Id"] = 3309951
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][16]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["Log"] = "0,0,3309945,5,18000182,2,3309951,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][16]["Star"] = 4
	-- 太乙神功上卷残页		3309952	1	赠		3.00%       10个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][17] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["Item_1"] = 3309952
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["Index"] = 17
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["RewardItem"][1]["Id"] = 3309952
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][17]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["Log"] = "0,0,3309945,5,18000182,2,3309952,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][17]["Star"] = 4
	-- 太乙神功中卷残页		3309953	1	赠		3.00%       10个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][18] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["Item_1"] = 3309953
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["Index"] = 18
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["RewardItem"][1]["Id"] = 3309953
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][18]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["Log"] = "0,0,3309945,5,18000182,2,3309953,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][18]["Star"] = 4
	-- 太乙神功下卷残页		3309954	1	赠		3.00%       10个合成秘籍 
	tInternalWorkSecret_UsePack["PrizePool"][1][19] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["Item_1"] = 3309954
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["Index"] = 19
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["RewardItem"][1]["Id"] = 3309954
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][19]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["Log"] = "0,0,3309945,5,18000182,2,3309954,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][19]["Star"] = 4
	-- 枯荣禅功上卷残页		3309955	1	赠		1.00%       5个合成秘籍
	tInternalWorkSecret_UsePack["PrizePool"][1][20] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["Item_1"] = 3309955
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["Index"] = 20
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["RewardItem"][1]["Id"] = 3309955
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][20]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["Log"] = "0,0,3309945,5,18000182,2,3309955,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][20]["Star"] = 4
	-- 枯荣禅功中卷残页		3309956	1	赠		1.00%       5个合成秘籍
	tInternalWorkSecret_UsePack["PrizePool"][1][21] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["Item_1"] = 3309956
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["Index"] = 21
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["RewardItem"][1]["Id"] = 3309956
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][21]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["Log"] = "0,0,3309945,5,18000182,2,3309956,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][21]["Star"] = 4
	-- 枯荣禅功下卷残页		3309957	1	赠		1.00%       5个合成秘籍
	tInternalWorkSecret_UsePack["PrizePool"][1][22] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["Item_1"] = 3309957
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["Index"] = 22
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["RewardItem"][1]["Id"] = 3309957
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][22]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["Log"] = "0,0,3309945,5,18000182,2,3309957,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][22]["Star"] = 4
	-- 10点气力值	3006537	1	赠		1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][23] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["Item_1"] = 3006537
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["Index"] = 23
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["RewardItem"][1]["Id"] = 3006537
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][23]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["Log"] = "0,0,3309945,5,18000182,2,3006537,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][23]["Star"] = 3
	-- 50点气力值	3002555	1	赠		3.00% 改为 3006539 ChiPack(50pts)
	tInternalWorkSecret_UsePack["PrizePool"][1][24] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["Item_1"] = 3006539
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["Index"] = 24
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["RewardItem"][1]["Id"] = 3006539
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][24]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["Log"] = "0,0,3309945,5,18000182,2,3006539,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][24]["Star"] = 3
	-- 100点气力值	3002027	1	赠		5.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][25] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["ItemChance"] = 5000
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["Item_1"] = 3002027
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["Index"] = 25
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["RewardItem"][1]["Id"] = 3002027
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][25]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["Log"] = "0,0,3309945,5,18000182,2,3002027,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][25]["Star"] = 3
	-- 200点气力值	3200660	1	赠		4.26%
	tInternalWorkSecret_UsePack["PrizePool"][1][26] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["ItemChance"] = 4260
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["Item_1"] = 3200660
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["Index"] = 26
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["RewardItem"][1]["Id"] = 3200660
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][26]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["Log"] = "0,0,3309945,5,18000182,2,3200660,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][26]["Star"] = 3
	-- 500点气力值	3005126	1	赠		3.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][27] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["Item_1"] = 3005126
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["Index"] = 27
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["RewardItem"][1]["Id"] = 3005126
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][27]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["Log"] = "0,0,3309945,5,18000182,2,3005126,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][27]["Star"] = 3
	-- 1000点气力值	3005127	1	赠		0.50%
	tInternalWorkSecret_UsePack["PrizePool"][1][28] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["ItemChance"] = 500
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["Item_1"] = 3005127
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["Index"] = 28
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["RewardItem"][1]["Id"] = 3005127
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][28]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["Log"] = "0,0,3309945,5,18000182,2,3005127,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][28]["Star"] = 4
	-- 微光星陨石	3009000	1		2天	5.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][29] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["ItemChance"] = 5000
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["Item_1"] = 3009000
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["Index"] = 29
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["Time"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["RewardItem"][1]["Id"] = 3009000
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][29]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["Log"] = "0,0,3309945,5,18000182,2,3009000,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][29]["Star"] = 3
	-- 微光星陨石	3009000	5		2天	3.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][30] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["Item_1"] = 3009000
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["Index"] = 30
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["Num"] = 5
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["Time"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["RewardItem"][1]["Id"] = 3009000
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][30]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["Log"] = "0,0,3309945,5,18000182,2,3009000,5"
	tInternalWorkSecret_UsePack["PrizePool"][1][30]["Star"] = 3
	-- 明亮星陨石	3009001	1		2天	0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][31] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["Item_1"] = 3009001
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["Index"] = 31
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["Time"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["RewardItem"][1]["Id"] = 3009001
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][31]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["Log"] = "0,0,3309945,5,18000182,2,3009001,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][31]["Star"] = 3
	-- 明亮星陨石	3009001	3		2天	0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][32] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["Item_1"] = 3009001
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["Index"] = 32
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["Num"] = 3
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["Time"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["RewardItem"][1]["Id"] = 3009001
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][32]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["Log"] = "0,0,3309945,5,18000182,2,3009001,3"
	tInternalWorkSecret_UsePack["PrizePool"][1][32]["Star"] = 3
	-- 散功丹	3005412	1	赠		0.10%	可在NPC处兑换10000点修为值，上架天石商店和赠点商店，定价588
	tInternalWorkSecret_UsePack["PrizePool"][1][33] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["ItemChance"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["Item_1"] = 3005412
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["Index"] = 33
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["RewardItem"][1]["Id"] = 3005412
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][33]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["Log"] = "0,0,3309945,5,18000182,2,3005412,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][33]["Star"] = 4
	-- 晶莹星陨石	3009002	1		2天	0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][34] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["Item_1"] = 3009002
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["Index"] = 34
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["Time"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["RewardItem"][1]["Id"] = 3009002
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][34]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["Log"] = "0,0,3309945,5,18000182,2,3009002,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][34]["Star"] = 4
	-- +1赤炼石	730001	1	赠	7天	1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][35] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Item_1"] = 730001
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Index"] = 35
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Time"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Stone"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["RewardItem"][1]["Id"] = 730001
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][35]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Log"] = "0,0,3309945,5,18000182,2,730001,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][35]["Star"] = 3
	-- +2赤炼石	730002	1	赠	7天	1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][36] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Item_1"] = 730002
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Index"] = 36
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Time"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Stone"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["RewardItem"][1]["Id"] = 730002
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][36]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Log"] = "0,0,3309945,5,18000182,2,730002,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][36]["Star"] = 3
	-- +2赤炼石	730002	2	赠	7天	1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][37] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Item_1"] = 730002
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Index"] = 37
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Num"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Time"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Stone"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["RewardItem"][1]["Id"] = 730002
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][37]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Log"] = "0,0,3309945,5,18000182,2,730002,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][37]["Star"] = 3
	-- +3赤炼石	730003	1	赠	7天	0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][38] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Item_1"] = 730003
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Index"] = 38
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Time"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Stone"] = 3
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["RewardItem"][1]["Id"] = 730003
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][38]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Log"] = "0,0,3309945,5,18000182,2,730003,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][38]["Star"] = 3
	-- +4赤炼石	730004	1	赠	7天	0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][39] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Item_1"] = 730004
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Index"] = 39
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Time"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Stone"] = 4
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["RewardItem"][1]["Id"] = 730004
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][39]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Log"] = "0,0,3309945,5,18000182,2,730004,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][39]["Star"] = 3
	-- +5赤炼石	730005	1	赠	7天	0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][40] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Item_1"] = 730005
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Index"] = 40
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Time"] = 7
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Stone"] = 5
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["RewardItem"][1]["Id"] = 730005
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][40]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Log"] = "0,0,3309945,5,18000182,2,730005,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][40]["Star"] = 4
	-- 强效护心丹	3002030	10	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][41] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["Item_1"] = 3002030
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["Index"] = 41
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["Num"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["RewardItem"][1]["Id"] = 3002030
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["RewardItem"][1]["Attr"] = "0 10"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][41]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["Log"] = "0,0,3309945,5,18000182,2,3002030,10"
	tInternalWorkSecret_UsePack["PrizePool"][1][41]["Star"] = 3
	-- 免费强炼丹	3003124	10	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][42] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["Item_1"] = 3003124
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["Index"] = 42
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["Num"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["RewardItem"][1]["Id"] = 3003124
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["RewardItem"][1]["Attr"] = "0 10 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][42]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["Log"] = "0,0,3309945,5,18000182,2,3003124,10"
	tInternalWorkSecret_UsePack["PrizePool"][1][42]["Star"] = 3
	-- 通神丹	3003125	5	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][43] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["Item_1"] = 3003125
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["Index"] = 43
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["Num"] = 5
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["RewardItem"][1]["Id"] = 3003125
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["RewardItem"][1]["Attr"] = "0 5 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][43]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["Log"] = "0,0,3309945,5,18000182,2,3003125,5"
	tInternalWorkSecret_UsePack["PrizePool"][1][43]["Star"] = 3
	-- 究极通神丹	3003126	3	赠		0.50%
	tInternalWorkSecret_UsePack["PrizePool"][1][44] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["ItemChance"] = 500
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["Item_1"] = 3003126
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["Index"] = 44
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["Num"] = 3
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["RewardItem"][1]["Id"] = 3003126
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["RewardItem"][1]["Attr"] = "0 3 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][44]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["Log"] = "0,0,3309945,5,18000182,2,3003126,3"
	tInternalWorkSecret_UsePack["PrizePool"][1][44]["Star"] = 3
	-- 秘制免费修炼丹	3002926	10	赠		1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][45] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["Item_1"] = 3002926
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["Index"] = 45
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["Num"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["RewardItem"][1]["Id"] = 3002926
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["RewardItem"][1]["Attr"] = "0 10"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][45]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["Log"] = "0,0,3309945,5,18000182,2,3002926,10"
	tInternalWorkSecret_UsePack["PrizePool"][1][45]["Star"] = 3
	-- 魔武通玄丹	3303373	3	赠		0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][46] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["Item_1"] = 3303373
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["Index"] = 46
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["Num"] = 3
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["RewardItem"][1]["Id"] = 3303373
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["RewardItem"][1]["Attr"] = "0 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][46]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["Log"] = "0,0,3309945,5,18000182,2,3303373,3"
	tInternalWorkSecret_UsePack["PrizePool"][1][46]["Star"] = 4
	-- 流星	1088001	1	赠		3.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][47] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["ItemChance"] = 3000
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["Item_1"] = 1088001
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["Index"] = 47
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["RewardItem"][1]["Id"] = 1088001
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][47]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["Log"] = "0,0,3309945,5,18000182,2,1088001,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][47]["Star"] = 3
	-- 流星卷	3001269	1	赠		1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][48] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["Item_1"] = 3001269
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["Index"] = 48
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["RewardItem"][1]["Id"] = 3001269
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][48]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["Log"] = "0,0,3309945,5,18000182,2,3001269,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][48]["Star"] = 3
	-- 龙珠	1088000	1	赠		0.50%
	tInternalWorkSecret_UsePack["PrizePool"][1][49] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["ItemChance"] = 500
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["Item_1"] = 1088000
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["Index"] = 49
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["RewardItem"][1]["Id"] = 1088000
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][49]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["Log"] = "0,0,3309945,5,18000182,2,1088000,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][49]["Star"] = 3
	-- 龙珠卷	3303306	1	赠		0.50%  改为 3200822	DBScroll
	tInternalWorkSecret_UsePack["PrizePool"][1][50] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["ItemChance"] = 500
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["Item_1"] = 3200822
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["Index"] = 50
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["RewardItem"][1]["Id"] = 3200822
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][50]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["Log"] = "0,0,3309945,5,18000182,2,3200822,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][50]["Star"] = 3
	-- 100修行值	3002553	1	赠		3.50%
	tInternalWorkSecret_UsePack["PrizePool"][1][51] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["ItemChance"] = 3500
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["Item_1"] = 3002553
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["Index"] = 51
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["RewardItem"][1]["Id"] = 3002553
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][51]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["Log"] = "0,0,3309945,5,18000182,2,3002553,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][51]["Star"] = 3
	-- 300修行值	3005124	1	赠		1.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][52] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["Item_1"] = 3005124
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["Index"] = 52
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["RewardItem"][1]["Id"] = 3005124
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["RewardItem"][1]["Attr"] = "0 1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][52]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["Log"] = "0,0,3309945,5,18000182,2,3005124,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][52]["Star"] = 3
	-- 黄色神纹精粹	4050001	1	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][53] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["Item_1"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["Index"] = 53
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["RewardItem"][1]["Id"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][53]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["Log"] = "0,0,3309945,5,18000182,2,4050001,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][53]["Star"] = 3
	-- 黄色神纹精粹	4050001	5	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][54] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["Item_1"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["Index"] = 54
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["Num"] = 5
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["RewardItem"][1]["Id"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["RewardItem"][1]["Attr"] = "0 5 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][54]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["Log"] = "0,0,3309945,5,18000182,2,4050001,5"
	tInternalWorkSecret_UsePack["PrizePool"][1][54]["Star"] = 3
	-- 黄色神纹精粹	4050001	10	赠		0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][55] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["Item_1"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["Index"] = 55
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["Num"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["RewardItem"][1]["Id"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["RewardItem"][1]["Attr"] = "0 10 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][55]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["Log"] = "0,0,3309945,5,18000182,2,4050001,10"
	tInternalWorkSecret_UsePack["PrizePool"][1][55]["Star"] = 3
	-- 黄色神纹精粹	4050001	20	赠		0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][56] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["Item_1"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["Index"] = 56
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["Num"] = 20
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["RewardItem"][1]["Id"] = 4050001
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["RewardItem"][1]["Attr"] = "0 20 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][56]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["Log"] = "0,0,3309945,5,18000182,2,4050001,20"
	tInternalWorkSecret_UsePack["PrizePool"][1][56]["Star"] = 3
	-- 万能神纹精粹	4060001	1	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][57] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["Item_1"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["Index"] = 57
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["RewardItem"][1]["Id"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][57]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["Log"] = "0,0,3309945,5,18000182,2,4060001,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][57]["Star"] = 3
	-- 万能神纹精粹	4060001	5	赠		2.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][58] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["ItemChance"] = 2000
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["Item_1"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["Index"] = 58
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["Num"] = 5
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["RewardItem"][1]["Id"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["RewardItem"][1]["Attr"] = "0 5 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][58]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["Log"] = "0,0,3309945,5,18000182,2,4060001,5"
	tInternalWorkSecret_UsePack["PrizePool"][1][58]["Star"] = 3
	-- 万能神纹精粹	4060001	10	赠		0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][59] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["Item_1"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["Index"] = 59
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["Num"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["RewardItem"][1]["Id"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["RewardItem"][1]["Attr"] = "0 10 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][59]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["Log"] = "0,0,3309945,5,18000182,2,4060001,10"
	tInternalWorkSecret_UsePack["PrizePool"][1][59]["Star"] = 3
	-- 万能神纹精粹	4060001	20	赠		0.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][60] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["ItemChance"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["Item_1"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["Index"] = 60
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["Num"] = 20
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["RewardItem"][1]["Id"] = 4060001
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["RewardItem"][1]["Attr"] = "0 20 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][60]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["Log"] = "0,0,3309945,5,18000182,2,4060001,20"
	tInternalWorkSecret_UsePack["PrizePool"][1][60]["Star"] = 3
	-- 100修为值		1			5.00%
	tInternalWorkSecret_UsePack["PrizePool"][1][61] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["ItemChance"] = 5000
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["Item_1"] = 100
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["Index"] = 61
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["RewardRepairValue"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["RewardRepairValue"]["Value"] = 100
	-- tInternalWorkSecret_UsePack["PrizePool"][1][61]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["Log"] = "0,0,3309945,5,18000182,2,19,100"
	tInternalWorkSecret_UsePack["PrizePool"][1][61]["Star"] = 3
	-- 随机3星外套	见子表	1	赠		0.03%		每天限量出1个,出了之后概率加到1000点气力值上
	tInternalWorkSecret_UsePack["PrizePool"][1][62] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["ItemChance"] = 30
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Item_1"] = 187605
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Index"] = 62
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Replace"] = 3005127
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["RewardItem"][1]["Id"] = 187605
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["RandTip"] = "ThreeStar"
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Pos"] = 0
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["MaxData"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["FullIndex"] = 28
	-- tInternalWorkSecret_UsePack["PrizePool"][1][62]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Log"] = "0,0,3309945,5,18000182,2,187605,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][62]["Star"] = 5
	-- 随机4星外套	见子表	1	赠		0.01%		每天限量出1个,出了之后概率加到1000点气力值上
	tInternalWorkSecret_UsePack["PrizePool"][1][63] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["ItemChance"] = 10
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Item_1"] = 189085
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Index"] = 63
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Zeng"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Replace"] = 3005127
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["RewardItem"][1]["Id"] = 189085
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["RandTip"] = "FourStar"
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Pos"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["MaxData"] = 1
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["FullIndex"] = 28
	-- tInternalWorkSecret_UsePack["PrizePool"][1][63]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Log"] = "0,0,3309945,5,18000182,2,189085,1"
	tInternalWorkSecret_UsePack["PrizePool"][1][63]["Star"] = 5
	-- -- 稀有发色		1	赠		0.00%  暂时不确定是否会有该奖励  每天限量出1个,出了之后概率加到1000点气力值上
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64] = {}
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RandomItemChanceType"] = 2
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["ItemChance"] = 10
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["Item_1"] = xxxxxx
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["Index"] = 64
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["Zeng"] = 1
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["Replace"] = 3005127
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardItem"] = {}
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardItem"][1] = {}
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardItem"][1]["Id"] = xxxxxx
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["GlobalId"] = 52719
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["Pos"] = 2
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["FullIndex"] = 28
	-- -- tInternalWorkSecret_UsePack["PrizePool"][1][64]["LogId"] = 18000182
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["Log"] = "0,0,3309945,5,18000182,2,xxxxxx,1"
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][xxxxxx]
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardEffect"] = {}
	-- tInternalWorkSecret_UsePack["PrizePool"][1][64]["RewardEffect"]["Effect"] = "zf2-e128"
	
	----------------------- 随机3星外套
	tInternalWorkSecret_UsePack["ThreeStar"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1]["ItemChanceSum"] = 10000
	-- GracefulBeauty	187605	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["Item_1"] = 187605
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["Index"] = 1
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardItem"][1]["Id"] = 187605
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][1]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["Log"] = "0,0,3309945,5,18000182,2,187605,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][187605]
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][1]["Star"] = 5
	-- CogsoftheHeart	192565	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][2] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["Item_1"] = 192565
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["Index"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardItem"][1]["Id"] = 192565
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][2]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["Log"] = "0,0,3309945,5,18000182,2,192565,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192565]
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][2]["Star"] = 5
	-- DynastyofTCLakers	194665	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][3] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["Item_1"] = 194665
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["Index"] = 3
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardItem"][1]["Id"] = 194665
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][3]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["Log"] = "0,0,3309945,5,18000182,2,194665,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][194665]
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][3]["Star"] = 5
	-- CloudRobe	189095	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][4] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["Item_1"] = 189095
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["Index"] = 4
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardItem"][1]["Id"] = 189095
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][4]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["Log"] = "0,0,3309945,5,18000182,2,189095,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][189095]
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][4]["Star"] = 5
	-- LegendofBCWarriors	194685	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][5] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["Item_1"] = 194685
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["Index"] = 5
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardItem"][1]["Id"] = 194685
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][5]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["Log"] = "0,0,3309945,5,18000182,2,194685,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][194685]
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][5]["Star"] = 5
	-- EpicofACRockets	194655	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][6] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["Item_1"] = 194655
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["Index"] = 6
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardItem"][1]["Id"] = 194655
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][6]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["Log"] = "0,0,3309945,5,18000182,2,194655,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][194655]
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][6]["Star"] = 5
	-- MythofDCCavaliers	194675	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][7] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["Item_1"] = 194675
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["Index"] = 7
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardItem"][1]["Id"] = 194675
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][7]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["Log"] = "0,0,3309945,5,18000182,2,194675,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][194675]
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][7]["Star"] = 5
	-- LavaCatRobe	193545	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][8] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["Item_1"] = 193545
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["Index"] = 8
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardItem"][1]["Id"] = 193545
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][8]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["Log"] = "0,0,3309945,5,18000182,2,193545,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][193545]
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][8]["Star"] = 5
	-- SpainJersey	192665	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][9] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["Item_1"] = 192665
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["Index"] = 9
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardItem"][1]["Id"] = 192665
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][9]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["Log"] = "0,0,3309945,5,18000182,2,192665,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192665]
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][9]["Star"] = 5
	-- BrazilJersey	192685	1	赠		10.00%
	tInternalWorkSecret_UsePack["ThreeStar"][1][10] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["Item_1"] = 192685
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["Index"] = 10
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardItem"][1]["Id"] = 192685
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["Pos"] = 0
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["ThreeStar"][1][10]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["Log"] = "0,0,3309945,5,18000182,2,192685,1"
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192685]
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["ThreeStar"][1][10]["Star"] = 5
	
	----------------------- 随机4星外套
	tInternalWorkSecret_UsePack["FourStar"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1]["ItemChanceSum"] = 10000
	-- 雀翎轻衫	189085	1	赠		10.00%
	tInternalWorkSecret_UsePack["FourStar"][1][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][1]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][1]["Item_1"] = 189085
	tInternalWorkSecret_UsePack["FourStar"][1][1]["Index"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardItem"][1]["Id"] = 189085
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][1]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][1]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][1]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][1]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][1]["Log"] = "0,0,3309945,5,18000182,2,189085,1"
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][189085]
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][1]["Star"] = 5
	-- 春风得意	193225	1	赠		10.00%
	tInternalWorkSecret_UsePack["FourStar"][1][2] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][2]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][2]["Item_1"] = 193225
	tInternalWorkSecret_UsePack["FourStar"][1][2]["Index"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardItem"][1]["Id"] = 193225
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][2]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][2]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][2]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][2]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][2]["Log"] = "0,0,3309945,5,18000182,2,193225,1"
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][193225]
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][2]["Star"] = 5
	-- 御龙九天	192615	1	赠		10.00%
	tInternalWorkSecret_UsePack["FourStar"][1][3] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][3]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][3]["Item_1"] = 192615
	tInternalWorkSecret_UsePack["FourStar"][1][3]["Index"] = 3
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardItem"][1]["Id"] = 192615
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][3]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][3]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][3]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][3]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][3]["Log"] = "0,0,3309945,5,18000182,2,192615,1"
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192615]
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][3]["Star"] = 5
	-- FreedomSuit	193195	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][4] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][4]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][4]["Item_1"] = 193195
	tInternalWorkSecret_UsePack["FourStar"][1][4]["Index"] = 4
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardItem"][1]["Id"] = 193195
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][4]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][4]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][4]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][4]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][4]["Log"] = "0,0,3309945,5,18000182,2,193195,1"
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][193195]
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][4]["Star"] = 5
	-- DreamyFairySuit	192125	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][5] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][5]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][5]["Item_1"] = 192125
	tInternalWorkSecret_UsePack["FourStar"][1][5]["Index"] = 5
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardItem"][1]["Id"] = 192125
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][5]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][5]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][5]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][5]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][5]["Log"] = "0,0,3309945,5,18000182,2,192125,1"
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192125]
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][5]["Star"] = 5
	-- EvilPumpkin	192695	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][6] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][6]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][6]["Item_1"] = 192695
	tInternalWorkSecret_UsePack["FourStar"][1][6]["Index"] = 6
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardItem"][1]["Id"] = 192695
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][6]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][6]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][6]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][6]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][6]["Log"] = "0,0,3309945,5,18000182,2,192695,1"
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192695]
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][6]["Star"] = 5
	-- WizardRobe	192645	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][7] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][7]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][7]["Item_1"] = 192645
	tInternalWorkSecret_UsePack["FourStar"][1][7]["Index"] = 7
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardItem"][1]["Id"] = 192645
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][7]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][7]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][7]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][7]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][7]["Log"] = "0,0,3309945,5,18000182,2,192645,1"
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192645]
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][7]["Star"] = 5
	-- GotTalent	187325	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][8] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][8]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][8]["Item_1"] = 187325
	tInternalWorkSecret_UsePack["FourStar"][1][8]["Index"] = 8
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardItem"][1]["Id"] = 187325
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][8]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][8]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][8]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][8]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][8]["Log"] = "0,0,3309945,5,18000182,2,187325,1"
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][187325]
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][8]["Star"] = 5
	-- MidsummerSuit	192495	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][9] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][9]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][9]["Item_1"] = 192495
	tInternalWorkSecret_UsePack["FourStar"][1][9]["Index"] = 9
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardItem"][1]["Id"] = 192495
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][9]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][9]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][9]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][9]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][9]["Log"] = "0,0,3309945,5,18000182,2,192495,1"
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][192495]
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][9]["Star"] = 5
	-- XmasBunny	193115	1	赠		10.00%	
	tInternalWorkSecret_UsePack["FourStar"][1][10] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RandomItemChanceType"] = 2
	tInternalWorkSecret_UsePack["FourStar"][1][10]["ItemChance"] = 1000
	tInternalWorkSecret_UsePack["FourStar"][1][10]["Item_1"] = 193115
	tInternalWorkSecret_UsePack["FourStar"][1][10]["Index"] = 10
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardItem"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardItem"][1] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardItem"][1]["Id"] = 193115
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tInternalWorkSecret_UsePack["FourStar"][1][10]["GlobalId"] = 52719
	tInternalWorkSecret_UsePack["FourStar"][1][10]["Pos"] = 1
	tInternalWorkSecret_UsePack["FourStar"][1][10]["MaxData"] = 1
	-- tInternalWorkSecret_UsePack["FourStar"][1][10]["LogId"] = 18000182
	tInternalWorkSecret_UsePack["FourStar"][1][10]["Log"] = "0,0,3309945,5,18000182,2,193115,1"
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardBroadCast"] = tWork_Text["Msg"]["Broadcast"][193115]
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardEffect"] = {}
	tInternalWorkSecret_UsePack["FourStar"][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tInternalWorkSecret_UsePack["FourStar"][1][10]["Star"] = 5
	
--------------------------------------------------------------测试模块-------------------------------------------------------------
-- tProbabil_Test["PrizePool"] = {}
-- tProbabil_Test["PrizePool"]["Table"] = tInternalWorkSecret_UsePack["PrizePool"]
-- tProbabil_Test["PrizePool"]["Index"] = {1}
-- tProbabil_Test["PrizePool"]["Times"] = 100000
-- tProbabil_Test["PrizePool"]["LogName"] = "测试log"

-- tProbabil_Test["ThreeStar"] = {}
-- tProbabil_Test["ThreeStar"]["Table"] = tInternalWorkSecret_UsePack["ThreeStar"]
-- tProbabil_Test["ThreeStar"]["Index"] = {1}
-- tProbabil_Test["ThreeStar"]["Times"] = 100000
-- tProbabil_Test["ThreeStar"]["LogName"] = "测试log"

-- tProbabil_Test["FourStar"] = {}
-- tProbabil_Test["FourStar"]["Table"] = tInternalWorkSecret_UsePack["FourStar"]
-- tProbabil_Test["FourStar"]["Index"] = {1}
-- tProbabil_Test["FourStar"]["Times"] = 100000
-- tProbabil_Test["FourStar"]["LogName"] = "测试log"

-- 测试命令
-- /callluafunc </F>Probabil_Main</S>PrizePool
-- /callluafunc </F>Probabil_Main</S>ThreeStar
-- /callluafunc </F>Probabil_Main</S>FourStar
-------------------------------------------------------------------------------------------------------------------------------

local tInternalWorkSecret_Log = {}
	-- 1[1]，使用抽取道具抽奖 玄灵石	3309945
	tInternalWorkSecret_Log["ItemRandom"] = "0,0,0,0,18000182,1[1],0,0"
	-- 1[2]，利用修为值刷新奖励	八卦符	3309946
	tInternalWorkSecret_Log["UseItemRefresh"] = "0,0,3309946,1,18000182,1[2],0,0"
	-- 1[3]，利用刷新道具刷新奖励  修为值
	tInternalWorkSecret_Log["UseValueRefresh"] = "0,0,19,%d,18000182,1[3],0,0"
	-- 兑换修为值
	tInternalWorkSecret_Log["Exchange"] = "0,0,%d,%d,18000182,1[5],19,%d"
	
local tInternalWorkSecret_Effect = {}
	tInternalWorkSecret_Effect[1] = "self"
	tInternalWorkSecret_Effect[2] = "angelwing"

	
local tInternalWorkSecret_SpringFestival2020 = {}
tInternalWorkSecret_SpringFestival2020["Stc"] = {}
tInternalWorkSecret_SpringFestival2020["Stc"][1] = {211,69}
tInternalWorkSecret_SpringFestival2020["Stc"][2] = {211,70}
tInternalWorkSecret_SpringFestival2020["Stc"][3] = {211,76}

--春节活动所有掩码
local tInternalWorkSecret_SpringFestivalAll2020 = {}
tInternalWorkSecret_SpringFestivalAll2020[1] = {211,71}
tInternalWorkSecret_SpringFestivalAll2020[2] = {211,72}
tInternalWorkSecret_SpringFestivalAll2020[3] = {211,73}
tInternalWorkSecret_SpringFestivalAll2020[4] = {211,74}
tInternalWorkSecret_SpringFestivalAll2020[5] = {211,75}
tInternalWorkSecret_SpringFestivalAll2020[6] = {211,76}
tInternalWorkSecret_SpringFestivalAll2020[7] = {211,77}
tInternalWorkSecret_SpringFestivalAll2020[8] = {211,78}
tInternalWorkSecret_SpringFestivalAll2020[9] = {211,81}

-------新增内功副本数据
local tInternalWorkSecret_AddData = {}
-- 1 领取任务  2 完成任务 3 领取奖励
	tInternalWorkSecret_AddData["TaskId"] = 7108
	
	tInternalWorkSecret_AddData["Reward"] = {}
	tInternalWorkSecret_AddData["Reward"]["LogId"] = 12001838
	tInternalWorkSecret_AddData["Reward"]["LogStep"] = "2[1]"
	tInternalWorkSecret_AddData["Reward"]["RewardItem"] = {}
	tInternalWorkSecret_AddData["Reward"]["RewardItem"][1] = {}
	tInternalWorkSecret_AddData["Reward"]["RewardItem"][1]["Id"] = 3005412 
	tInternalWorkSecret_AddData["Reward"]["RewardItem"][1]["Attr"] = "0 1 3" 
	tInternalWorkSecret_AddData["Reward"]["RewardItem"][2] = {}
	tInternalWorkSecret_AddData["Reward"]["RewardItem"][2]["Id"] = 3316142 
	tInternalWorkSecret_AddData["Reward"]["RewardItem"][2]["Attr"] = "0 1" 
	tInternalWorkSecret_AddData["Reward"]["RewardEffect"] = {}
	tInternalWorkSecret_AddData["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tInternalWorkSecret_AddData["Reward"]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------逻辑部分-------------------------------------------------
-- 等级判断
function InternalWorkSecret_JudgeLevel()
	local nLevel = tInternalWorkSecret_Cont["Level"]
	local nMete = tInternalWorkSecret_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 链接
function InternalWorkSecret_OpenWeb(nNpcId)
	local sWeb = "https://zf.99.com/activity/2018/internalwork/"
	User_SendWebDialog(sWeb)
end

-- 随机奖励
-- 返回值  奖励索引  奖励表type  奖励名字加颜色 奖励对应的星级
-- nIndex,sType,sRewardName,sStar
function InternalWorkSecret_RandomReward()
	local nFlag,tAward = Probabil_RandomAward(tInternalWorkSecret_UsePack["PrizePool"],1)
	local nRewardItem = tAward[1]["tAward"][1]["Item_1"]
	local nIndex = tAward[1]["tAward"][1]["Index"]
	local nStar = tAward[1]["tAward"][1]["Star"]
	local sType = "PrizePool"
	local nNum = 1
	local nZeng = 0
	local nTime = 0
	local nStone = 0
	local sStrNone = tWork_Text["Msg"]["None"]
	
	if tAward[1]["tAward"][1]["Num"] then
		nNum = tAward[1]["tAward"][1]["Num"]
	end
	if tAward[1]["tAward"][1]["Zeng"] then
		nZeng = tAward[1]["tAward"][1]["Zeng"]  -- （赠）
	end
	if tAward[1]["tAward"][1]["Time"] then
		nTime = tAward[1]["tAward"][1]["Time"]   -- 7 2 
	end
	if tAward[1]["tAward"][1]["Stone"] then
		nStone = tAward[1]["tAward"][1]["Stone"]   -- 1-5
	end

	if tAward[1]["tAward"][1]["RandTip"] then
		sType = tAward[1]["tAward"][1]["RandTip"]
		-- "ThreeStar"
		-- "FourStar"
		local nFlag1,tAward1 = Probabil_RandomAward(tInternalWorkSecret_UsePack[sType],1)
		nRewardItem = tAward1[1]["tAward"][1]["Item_1"]
		nIndex = tAward1[1]["tAward"][1]["Index"]
		nStar = tAward1[1]["tAward"][1]["Star"]
	end
	
	if tAward[1]["tAward"][1]["GlobalId"] then
		local nGlobalId = tAward[1]["tAward"][1]["GlobalId"]
		local nGlobalPos = tAward[1]["tAward"][1]["Pos"]
		local nGlobalLimit = tAward[1]["tAward"][1]["MaxData"]
		local nFullIndex = tAward[1]["tAward"][1]["FullIndex"]
		local nReplace = tAward[1]["tAward"][1]["Replace"]
		local nNowData = Get_SysDynaGlobalData(nGlobalId,nGlobalPos)
		if nNowData >= nGlobalLimit then
			-- 每日限量已满
			nIndex = nFullIndex
			sType = "PrizePool"
			nRewardItem = nReplace
			nNum = 1
			nZeng = 0
			nTime = 0
			nStone = 0
		end
		
		Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,1)
	end
	
	local sRewardName = ""
	if nRewardItem == 100 then
		sRewardName = string.format(tWork_Text["Msg"]["RepairValue"],nRewardItem)
	else
		sRewardName = string.format(tWork_Text["Msg"]["RewardName"],Get_ItemtypeName(nRewardItem),tostring(nNum))
		-- 先判断是否有时效的 提示
		if nTime > 0 then
			local sStr1 = string.format(tWork_Text["Msg"]["Time"],nTime)
			-- 判断是否是赤炼石
			if nStone > 0 then
				-- sStr1 = sStr1 .. string.format(tWork_Text["Msg"]["Stone"],nStone)
				local sStone = string.format(tWork_Text["Msg"]["Stone"],nStone)
				sStr1 = string.format(sStrNone,sStr1,sStone)
			end
			-- local sStr = sStr1 .. Get_ItemtypeName(nRewardItem)
			local sStr = string.format(sStrNone,sStr1,Get_ItemtypeName(nRewardItem))
			if nZeng == 1 then
				-- sStr = sStr .. tWork_Text["Msg"]["Zeng"]
				sStr = string.format(sStrNone,sStr,tWork_Text["Msg"]["Zeng"])
			end
			sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
		elseif nZeng == 1 then
				-- local sStr = Get_ItemtypeName(nRewardItem) .. tWork_Text["Msg"]["Zeng"]
				local sStr = string.format(sStrNone,Get_ItemtypeName(nRewardItem),tWork_Text["Msg"]["Zeng"])
				sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
		end
		-- 再判断 外套物品 有神佑提示
		if sType ~= "PrizePool" then
			-- local sStr = tWork_Text["Msg"]["Reduce"] .. Get_ItemtypeName(nRewardItem) .. tWork_Text["Msg"]["Zeng"]
			local sStr1 = string.format(sStrNone,tWork_Text["Msg"]["Reduce"],Get_ItemtypeName(nRewardItem))
			local sStr = string.format(sStrNone,sStr1,tWork_Text["Msg"]["Zeng"])
			sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
		end
	end
	
	local sColor = ""
	local sStar = tWork_Text[23021]["AllStar"]
	if nStar == 3 then
		sColor = string.format(tWork_Text[23021]["Green"],sRewardName)
	elseif nStar == 4 then
		sColor = string.format(tWork_Text[23021]["Purple"],sRewardName)
		-- sStar = sStar .. tWork_Text[23021]["Star"]
		sStar = string.format(sStrNone,sStar,tWork_Text[23021]["Star"])
	elseif nStar == 5 then
		sColor = string.format(tWork_Text[23021]["Orange"],sRewardName)
		-- sStar = sStar .. tWork_Text[23021]["Star"] .. tWork_Text[23021]["Star"]
		local sStr1 = string.format(sStrNone,sStar,tWork_Text[23021]["Star"])
		sStar = string.format(sStrNone,sStr1,tWork_Text[23021]["Star"])
	else
		sColor = sRewardName
	end
	
	return nIndex,sType,sColor,sStar
end

-- sql接lua
function InternalWorkSecret_LinkNpc(nNpcId)
	--判断身上是否有任务集任务
	local nTaskId = tInternalWorkSecret_Cont["OtherTask"]
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0)then
		--置完成任务掩码
		Task_SetTaskDetailCompleteFlag(nTaskId,7)
		Sys_MsgBox(tTaskAssembly_Text["Finsh"],"User_OpenDialog</N>2201")
	end
	if InternalWorkSecret_SpingFestival2020(23021) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end

	if InternalWorkSecret_JudgeLevel() then
		-- stc(178,82)		记录玩家是否已领取本次随机的奖励
		-- ==0 表示第一次点开  ==1 表示未领取 == 2 表示已领取
		local nEvent = tInternalWorkSecret_Stc[3]["EventType"]
		local nType = tInternalWorkSecret_Stc[3]["DataType"]	
		if Task_ChkStcValue(nEvent,nType,"==",1) then
			InternalWorkSecret_HandIn(nNpcId)
		else
			LinkNpcGossipFunc_New(nNpcId,"1-2")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
	if StrengthCopy_NewLevel() then
	---第一次引导过来点开对白的时候送玩家1张地图
		StrengthCopy_NewlinkInternalWorkSecret()
	end
end

 -- 接2、递交国境伏魔令（5枚）
-- 在玩家领取奖励后，刷新所需的修为值重置
function InternalWorkSecret_HandIn(nNpcId)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 无道具物品
	local nNeedItem = tInternalWorkSecret_Cont["NeedItem"]
	if SpecialServer_ChkNoGiftServer() then
		nNeedItem = tInternalWorkSecret_Cont["NeedItemNew"]
	else
		nNeedItem = tInternalWorkSecret_Cont["NeedItem"]
	end
	
	if not Item_ChkMulItem(nNeedItem,nNeedItem,5) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	-- stc(178,80)		记录奖励内容
	local nRewardEvent = tInternalWorkSecret_Stc[1]["EventType"]
	local nRewardType = tInternalWorkSecret_Stc[1]["DataType"]	
	-- stc(178,83)		记录玩家刷新的奖励是哪个奖池里的
	local nRewardEvent1 = tInternalWorkSecret_Stc[4]["EventType"]
	local nRewardType1 = tInternalWorkSecret_Stc[4]["DataType"]	

	-- stc(178,81)		记录玩家刷新奖励次数
	local nRefreshEvent = tInternalWorkSecret_Stc[2]["EventType"]
	local nRefreshType = tInternalWorkSecret_Stc[2]["DataType"]	
	
	-- stc(178,82)		记录玩家是否已领取本次随机的奖励
	-- ==0 表示第一次点开  ==1 表示未领取 == 2 表示已领取
	local nEvent = tInternalWorkSecret_Stc[3]["EventType"]
	local nType = tInternalWorkSecret_Stc[3]["DataType"]	
	
	-- stc(179,17)		记录玩家刷新奖励总次数（物品+修为值 都算）
	local nAllBrushEvent = tInternalWorkSecret_Stc[5]["EventType"]
	local nAllBrushType = tInternalWorkSecret_Stc[5]["DataType"]	
	
	local sStrNone = tWork_Text["Msg"]["None"]
	-- 已领取上一次的奖励，重新抽奖，显示对白
	if Task_ChkStcValue(nEvent,nType,">=",2) or Task_ChkStcValue(nEvent,nType,"==",0) then
		-- 判断背包
		local nSpace = RewardTemplate_GetRandomSpace(tInternalWorkSecret_UsePack["PrizePool"],1)
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end

		-- 随机奖池 显示对白
		-- 返回值  奖励索引  奖励表type  奖励名字
		-- nIndex,sType,sRewardName
		local nIndex, sType, sRewardName,sStar = InternalWorkSecret_RandomReward()
		-- 设置 奖励索引
		Task_SetStatistic(nRewardEvent,nRewardType,nIndex,1,0)
		Task_SetStcTimestamp(nRewardEvent,nRewardType,0,0)
		-- 设置 奖励type
		local nRewardData = tInternalWorkSecret_Cont[sType]
		Task_SetStatistic(nRewardEvent1,nRewardType1,nRewardData,1,0)
		Task_SetStcTimestamp(nRewardEvent1,nRewardType1,0,0)
		-- 设置 奖励未领取
		Task_SetStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		-- 重新设置 修为值刷新次数
		Task_SetStatistic(nRefreshEvent,nRefreshType,0,1,0)
		Task_SetStcTimestamp(nRefreshEvent,nRefreshType,0,0)
		local nRefreshData = Get_UserStatisticValue(nRefreshEvent,nRefreshType) or 0
		-- 重新设置 刷新总次数
		Task_SetStatistic(nAllBrushEvent,nAllBrushType,0,1,0)
		Task_SetStcTimestamp(nAllBrushEvent,nAllBrushType,0,0)
		local nAllData = Get_UserStatisticValue(nAllBrushEvent,nAllBrushType) or 0
		
		-- 初始修为值刷新值 10
		local nNeedRefreshData = tInternalWorkSecret_Cont["NeedValue"]
		local nUserCultureValue = Get_UserCultureValue()
		Sys_DialogFace(nNpcId)
		Sys_DialogText(tWork_Text[nNpcId]["Text238"])
		Sys_DialogText(tWork_Text[nNpcId]["Text233"])
		
		-- local sLine = tWork_Text[nNpcId]["Line"]
		local sLine = ""
		local sDialog1 = Sys_CenterAline(sLine,14,sRewardName,36,sLine,64)
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sDialog1))
		
		local sDialog2 = Sys_CenterAline(sLine,14,sStar,44,sLine,79)
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sDialog2))
		
		-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sRewardName))
		-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sStar))
		Sys_DialogText(tWork_Text[nNpcId]["Text236"])
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text237"],nAllData))
		
		if SpecialServer_ChkNoGiftServer() then
			Sys_DialogText(tWork_Text[nNpcId]["Text2311"])
		else
			Sys_DialogText(tWork_Text[nNpcId]["Text231"])
		end
		
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text232"],nUserCultureValue))
		
		if nIndex >= 1 and nIndex <= 11 then
			-- 稀有奖励时 不显示更换宝物的选项
			Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
		else
			local nNeedItem = tInternalWorkSecret_Cont["NeedRefreshItem"]
			if Item_ChkItem(nNeedItem) then
				if not SpecialServer_ChkNoGiftServer() then
					Sys_DialogOption(tWork_Text[nNpcId]["Option6"],"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>1</N>0")
				end
			end
			Sys_DialogOption(string.format(tWork_Text[nNpcId]["Option7"],nNeedRefreshData),"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>2</N>" .. nNeedRefreshData)
			Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
		end
		Sys_DialogEnd()
		Sys_SaveActionFestivalLog(tInternalWorkSecret_Log["ItemRandom"])
	else
		-- 未领取，直接显示上次随机的奖励内容
		local nIndex = Get_UserStatisticValue(nRewardEvent,nRewardType)
		local nRewardData1 = Get_UserStatisticValue(nRewardEvent1,nRewardType1)	
		local sType = tInternalWorkSecret_Cont["Type"][nRewardData1]
		
		-- 判断背包
		local tReward = CommonFunc_Copy(tInternalWorkSecret_UsePack[sType][1][nIndex])
		if not RewardTemplate_CheckSpace(tReward) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end

		-- 获取上次随机的奖励的 文字
		local nNum = 1
		local nZeng = 0
		local nTime = 0
		local nStone = 0
		local nStar = 3
		local nRewardItem = tReward["Item_1"]
		if tReward["Num"] then
			nNum = tReward["Num"]
		end
		if tReward["Zeng"] then
			nZeng = tReward["Zeng"]
		end
		if tReward["Time"] then
			nTime = tReward["Time"]
		end
		if tReward["Stone"] then
			nStone = tReward["Stone"]
		end
		if tReward["Star"] then
			nStar = tReward["Star"]
		end
		
		local sRewardName = ""
		if nRewardItem == 100 then
			sRewardName = string.format(tWork_Text["Msg"]["RepairValue"],nRewardItem)
		else
			sRewardName = string.format(tWork_Text["Msg"]["RewardName"],Get_ItemtypeName(nRewardItem),tostring(nNum))
			-- 先判断是否有时效的 提示
			if nTime > 0 then
				local sStr1 = string.format(tWork_Text["Msg"]["Time"],nTime)
				-- 判断是否是赤炼石
				if nStone > 0 then
					-- sStr1 = sStr1 .. string.format(tWork_Text["Msg"]["Stone"],nStone)
					local sStone = string.format(tWork_Text["Msg"]["Stone"],nStone)
					sStr1 = string.format(sStrNone,sStr1,sStone)
				end
				-- local sStr = sStr1 .. Get_ItemtypeName(nRewardItem)
				local sStr = string.format(sStrNone,sStr1,Get_ItemtypeName(nRewardItem))
				if nZeng == 1 then
					-- sStr = sStr .. tWork_Text["Msg"]["Zeng"]
					sStr = string.format(sStrNone,sStr,tWork_Text["Msg"]["Zeng"])
				end
				sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
			elseif nZeng == 1 then
				-- local sStr = Get_ItemtypeName(nRewardItem) .. tWork_Text["Msg"]["Zeng"]
				local sStr = string.format(sStrNone,Get_ItemtypeName(nRewardItem),tWork_Text["Msg"]["Zeng"])
				sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
			end
			-- 再判断 外套物品 有神佑提示
			if sType ~= "PrizePool" then
				-- local sStr = tWork_Text["Msg"]["Reduce"] .. Get_ItemtypeName(nRewardItem) .. tWork_Text["Msg"]["Zeng"]
				local sStr1 = string.format(sStrNone,tWork_Text["Msg"]["Reduce"],Get_ItemtypeName(nRewardItem))
				local sStr = string.format(sStrNone,sStr1,tWork_Text["Msg"]["Zeng"])
				sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
			end
		end
		
		local sColor = ""
		local sStar = tWork_Text[23021]["AllStar"]
		if nStar == 3 then
			sColor = string.format(tWork_Text[23021]["Green"],sRewardName)
		elseif nStar == 4 then
			sColor = string.format(tWork_Text[23021]["Purple"],sRewardName)
			-- sStar = sStar .. tWork_Text[23021]["Star"]
			sStar = string.format(sStrNone,sStar,tWork_Text[23021]["Star"])
		elseif nStar == 5 then
			sColor = string.format(tWork_Text[23021]["Orange"],sRewardName)
			-- sStar = sStar .. tWork_Text[23021]["Star"] .. tWork_Text[23021]["Star"]
			local sStr1 = string.format(sStrNone,sStar,tWork_Text[23021]["Star"])
			sStar = string.format(sStrNone,sStr1,tWork_Text[23021]["Star"])
		else
			sColor = sRewardName
		end
		
		-- 获取修为值刷新次数
		local nRefreshData = Get_UserStatisticValue(nRefreshEvent,nRefreshType) or 0
		-- 初始修为值刷新值 10
		local nNeedRefreshData = tInternalWorkSecret_Cont["NeedValue"]
		if nRefreshData > 0 then
			nNeedRefreshData = nNeedRefreshData * (nRefreshData + 1)
		end
		
		-- 刷新总次数
		local nAllData = Get_UserStatisticValue(nAllBrushEvent,nAllBrushType) or 0
		local nUserCultureValue = Get_UserCultureValue()
		Sys_DialogFace(nNpcId)
		Sys_DialogText(tWork_Text[nNpcId]["Text238"])
		Sys_DialogText(tWork_Text[nNpcId]["Text233"])
		
		-- local sLine = tWork_Text[nNpcId]["Line"]
		local sLine = ""
		local sDialog1 = Sys_CenterAline(sLine,14,sColor,36,sLine,64)
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sDialog1))
		
		local sDialog2 = Sys_CenterAline(sLine,14,sStar,44,sLine,79)
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sDialog2))

		-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sColor))
		-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sStar))
		Sys_DialogText(tWork_Text[nNpcId]["Text236"])
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text237"],nAllData))
		
		if SpecialServer_ChkNoGiftServer() then
			Sys_DialogText(tWork_Text[nNpcId]["Text2311"])
		else
			Sys_DialogText(tWork_Text[nNpcId]["Text231"])
		end
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text232"],nUserCultureValue))
		
		if nIndex >= 1 and nIndex <= 11 then
			-- 稀有奖励时 不显示更换宝物的选项
			Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
		else
			local nNeedItem = tInternalWorkSecret_Cont["NeedRefreshItem"]
			if Item_ChkItem(nNeedItem) then
				if not SpecialServer_ChkNoGiftServer() then
					Sys_DialogOption(tWork_Text[nNpcId]["Option6"],"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>1</N>0")
				end
			end
			Sys_DialogOption(string.format(tWork_Text[nNpcId]["Option7"],nNeedRefreshData),"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>2</N>" .. nNeedRefreshData)
			Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
		end
		Sys_DialogEnd()
	end
end

-- 更换奖励
-- 每次刷新消耗修为值不同，越刷越贵  刷新修为值为：10*刷新次数
-- 玩家抽取到的奖励需要玩家手动领取，玩家不领取奖励则不可继续抽奖
function InternalWorkSecret_ChangeReward(nNpcId,nIndex,nChoose,nNeedRefreshData)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- stc(178,80)		记录奖励内容
	local nRewardEvent = tInternalWorkSecret_Stc[1]["EventType"]
	local nRewardType = tInternalWorkSecret_Stc[1]["DataType"]	
	-- stc(178,83)		记录玩家刷新的奖励是哪个奖池里的
	local nRewardEvent1 = tInternalWorkSecret_Stc[4]["EventType"]
	local nRewardType1 = tInternalWorkSecret_Stc[4]["DataType"]	

	-- stc(178,81)		记录玩家刷新奖励次数
	local nRefreshEvent = tInternalWorkSecret_Stc[2]["EventType"]
	local nRefreshType = tInternalWorkSecret_Stc[2]["DataType"]	
	local nRefreshStcData = Get_UserStatisticValue(nRefreshEvent,nRefreshType) or 0
	
	-- stc(178,82)		记录玩家是否已领取本次随机的奖励
	-- ==0 表示第一次点开  ==1 表示未领取 == 2 表示已领取
	local nEvent = tInternalWorkSecret_Stc[3]["EventType"]
	local nType = tInternalWorkSecret_Stc[3]["DataType"]	
	
	-- stc(179,17)		记录玩家刷新奖励总次数（物品+修为值 都算）
	local nAllBrushEvent = tInternalWorkSecret_Stc[5]["EventType"]
	local nAllBrushType = tInternalWorkSecret_Stc[5]["DataType"]

	-- nChoose == 1  八卦符刷新
	if nChoose == 1 then
		-- 判断是否有 八卦符
		local nNeedItem = tInternalWorkSecret_Cont["NeedRefreshItem"]
		if not Item_ChkItem(nNeedItem) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		
		-- 判断背包
		local nSpace = RewardTemplate_GetRandomSpace(tInternalWorkSecret_UsePack["PrizePool"],1)
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		
		-- 成功刷新
		if Item_ChkItem(nNeedItem) and Item_DelItem(nNeedItem) then
			-- 随机奖池 显示对白
			-- 返回值  奖励索引  奖励表type  奖励名字
			-- nIndex,sType,sRewardName
			local nIndex, sType, sRewardName,sStar = InternalWorkSecret_RandomReward()
			-- 设置 奖励索引
			Task_SetStatistic(nRewardEvent,nRewardType,nIndex,1,0)
			Task_SetStcTimestamp(nRewardEvent,nRewardType,0,0)
			-- 设置 奖励type
			local nRewardData = tInternalWorkSecret_Cont[sType]
			Task_SetStatistic(nRewardEvent1,nRewardType1,nRewardData,1,0)
			Task_SetStcTimestamp(nRewardEvent1,nRewardType1,0,0)
			-- 设置 奖励未领取
			Task_SetStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			-- 设置 刷新奖励总次数
			Task_AddStatistic(nAllBrushEvent,nAllBrushType,1,1,0)
			Task_SetStcTimestamp(nAllBrushEvent,nAllBrushType,0,0)
			local nAllData = Get_UserStatisticValue(nAllBrushEvent,nAllBrushType) or 0
			
			-- 初始修为值刷新值 10
			local nRefreshData = tInternalWorkSecret_Cont["NeedValue"]
			if nRefreshStcData > 0 then
				nRefreshData = nRefreshData * (nRefreshStcData+1)
			end

			local nUserCultureValue = Get_UserCultureValue()
			Sys_DialogFace(nNpcId)
			Sys_DialogText(tWork_Text[nNpcId]["Text238"])
			Sys_DialogText(tWork_Text[nNpcId]["Text233"])
			
			-- local sLine = tWork_Text[nNpcId]["Line"]
			local sLine = ""
			local sDialog1 = Sys_CenterAline(sLine,14,sRewardName,36,sLine,64)
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sDialog1))
			
			local sDialog2 = Sys_CenterAline(sLine,14,sStar,44,sLine,79)
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sDialog2))
			
			-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sRewardName))
			-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sStar))
			Sys_DialogText(tWork_Text[nNpcId]["Text236"])
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text237"],nAllData))
			
			if SpecialServer_ChkNoGiftServer() then
				Sys_DialogText(tWork_Text[nNpcId]["Text2311"])
			else
				Sys_DialogText(tWork_Text[nNpcId]["Text231"])
			end
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text232"],nUserCultureValue))
			
			if nIndex >= 1 and nIndex <= 11 then
				-- 稀有奖励时 不显示更换宝物的选项
				Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
			else
				local nNeedItem = tInternalWorkSecret_Cont["NeedRefreshItem"]
				if Item_ChkItem(nNeedItem) then
					if not SpecialServer_ChkNoGiftServer() then
						Sys_DialogOption(tWork_Text[nNpcId]["Option6"],"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>1</N>0")
					end
				end
				Sys_DialogOption(string.format(tWork_Text[nNpcId]["Option7"],nRefreshData),"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>2</N>" .. nRefreshData)
				Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
			end
			Sys_DialogEnd()
			Sys_SaveActionFestivalLog(tInternalWorkSecret_Log["UseItemRefresh"])
			User_EffectAdd(tInternalWorkSecret_Effect[1],tInternalWorkSecret_Effect[2])
		end
	elseif nChoose == 2 then
		-- nChoose == 2  修为值刷新
		-- 玩家的修为值是否足够
		local nUserValue = Get_UserCultureValue()
		if nUserValue < nNeedRefreshData then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
		
		-- 判断背包
		local nSpace = RewardTemplate_GetRandomSpace(tInternalWorkSecret_UsePack["PrizePool"],1)
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		
		-- 消耗修为值  加刷新次数
		if User_AddCultureValue((-1)*nNeedRefreshData) then
			Task_AddStatistic(nRefreshEvent,nRefreshType,1,1,0)
			Task_SetStcTimestamp(nRefreshEvent,nRefreshType,0,0)
			-- 获取修为值刷新次数
			local nData = Get_UserStatisticValue(nRefreshEvent,nRefreshType) or 0
			-- 初始修为值刷新值 10
			local nRefreshData = tInternalWorkSecret_Cont["NeedValue"]
			if nData > 0 then
				nRefreshData = nRefreshData * (nData+1)
			end
			
			-- 设置 刷新奖励总次数
			Task_AddStatistic(nAllBrushEvent,nAllBrushType,1,1,0)
			Task_SetStcTimestamp(nAllBrushEvent,nAllBrushType,0,0)
			local nAllData = Get_UserStatisticValue(nAllBrushEvent,nAllBrushType) or 0
			
			-- 随机奖池 显示对白
			-- 返回值  奖励索引  奖励表type  奖励名字
			-- nIndex,sType,sRewardName
			local nIndex, sType, sRewardName,sStar = InternalWorkSecret_RandomReward()
			-- 设置 奖励索引
			Task_SetStatistic(nRewardEvent,nRewardType,nIndex,1,0)
			Task_SetStcTimestamp(nRewardEvent,nRewardType,0,0)
			-- 设置 奖励type
			local nRewardData = tInternalWorkSecret_Cont[sType]
			Task_SetStatistic(nRewardEvent1,nRewardType1,nRewardData,1,0)
			Task_SetStcTimestamp(nRewardEvent1,nRewardType1,0,0)
			-- 设置 奖励未领取
			Task_SetStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			
			local nUserCultureValue = Get_UserCultureValue()
			Sys_DialogFace(nNpcId)
			Sys_DialogText(tWork_Text[nNpcId]["Text238"])
			Sys_DialogText(tWork_Text[nNpcId]["Text233"])
			
			-- local sLine = tWork_Text[nNpcId]["Line"]
			local sLine = ""
			local sDialog1 = Sys_CenterAline(sLine,14,sRewardName,36,sLine,64)
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sDialog1))
			
			local sDialog2 = Sys_CenterAline(sLine,14,sStar,44,sLine,79)
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sDialog2))
			
			-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text234"],sRewardName))
			-- Sys_DialogText(string.format(tWork_Text[nNpcId]["Text235"],sStar))
			Sys_DialogText(tWork_Text[nNpcId]["Text236"])
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text237"],nAllData))
			
			if  SpecialServer_ChkNoGiftServer() then
				Sys_DialogText(tWork_Text[nNpcId]["Text2311"])
			else
				Sys_DialogText(tWork_Text[nNpcId]["Text231"])
			end
			Sys_DialogText(string.format(tWork_Text[nNpcId]["Text232"],nUserCultureValue))

			if nIndex >= 1 and nIndex <= 11 then
				-- 稀有奖励时 不显示更换宝物的选项
				Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
			else
				local nNeedItem = tInternalWorkSecret_Cont["NeedRefreshItem"]
				if Item_ChkItem(nNeedItem) then
					if not SpecialServer_ChkNoGiftServer() then
						Sys_DialogOption(tWork_Text[nNpcId]["Option6"],"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>1</N>0")
					end
				end
				Sys_DialogOption(string.format(tWork_Text[nNpcId]["Option7"],nRefreshData),"</F>InternalWorkSecret_ChangeReward</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>2</N>" .. nRefreshData)
				Sys_DialogOption(tWork_Text[nNpcId]["Option8"],"</F>InternalWorkSecret_GetRewardNow</N>" .. nNpcId .. "</N>" .. nIndex .. "</S>" .. sType)
			end
			Sys_DialogEnd()
			Sys_SaveActionFestivalLog(string.format(tInternalWorkSecret_Log["UseValueRefresh"],nNeedRefreshData))
			User_EffectAdd(tInternalWorkSecret_Effect[1],tInternalWorkSecret_Effect[2])
		end
	end
end

-- 收下奖励
-- 获得珍贵奖励时，全服公告并播放大型光效。
function InternalWorkSecret_GetRewardNow(nNpcId,nIndex,sType)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end

	-- 无道具物品
	local nNeedItem = tInternalWorkSecret_Cont["NeedItem"]
	if SpecialServer_ChkNoGiftServer() then
		nNeedItem = tInternalWorkSecret_Cont["NeedItemNew"]
	else
		nNeedItem = tInternalWorkSecret_Cont["NeedItem"]
	end
	
	if not Item_ChkMulItem(nNeedItem,nNeedItem,5) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断背包
	local tReward = CommonFunc_Copy(tInternalWorkSecret_UsePack[sType][1][nIndex])
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	-- 获得奖励
	if Item_ChkMulItem(nNeedItem,nNeedItem,5) and Item_DelMulItem(nNeedItem,nNeedItem,5) then
		-- stc(178,82)		记录玩家是否已领取本次随机的奖励
		-- ==0 表示第一次点开  ==1 表示未领取 == 2 表示已领取
		local nEvent = tInternalWorkSecret_Stc[3]["EventType"]
		local nType = tInternalWorkSecret_Stc[3]["DataType"]	
		-- 设置已领取奖励
		Task_SetStatistic(nEvent,nType,2,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		-- stc(178,81)		记录玩家刷新奖励次数
		local nRefreshEvent = tInternalWorkSecret_Stc[2]["EventType"]
		local nRefreshType = tInternalWorkSecret_Stc[2]["DataType"]	
		-- 刷新次数重置
		Task_SetStatistic(nRefreshEvent,nRefreshType,0,1,0)
		Task_SetStcTimestamp(nRefreshEvent,nRefreshType,0,0)
		
		if tReward["GlobalId"] then
			local nGlobalId = tReward["GlobalId"]
			local nGlobalPos = tReward["Pos"]
			Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,1)
		end
		RewardTemplate_Reward(tReward)
		User_EffectAdd(tInternalWorkSecret_Effect[1],tInternalWorkSecret_Effect[2])
		
		-- 收下奖励后，玩家背包中还有足够道具，继续显示主对白
		local nNeedItem1 = tInternalWorkSecret_Cont["NeedItem"]
		if SpecialServer_ChkNoGiftServer() then
			nNeedItem1 = tInternalWorkSecret_Cont["NeedItemNew"]
		else
			nNeedItem1 = tInternalWorkSecret_Cont["NeedItem"]
		end
		
		if Item_ChkMulItem(nNeedItem1,nNeedItem1,5) then
			InternalWorkSecret_LinkNpc(nNpcId)
		end
	end
end

-- 重置动态存储值
function InternalWorkSecret_SetGlobal()
	local nGlobalId = tInternalWorkSecret_Cont["Global"]
	Sys_ResetAllSynaGlobalData(nGlobalId)
end

-- 秘籍兑换修为值 显示兑换对白
function InternalWorkSecret_Exchange(nNpcId)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断玩家背包中的 秘籍
	local nCount = 0
	local tItemTable = {}
	for i,v in pairs(tInternalWorkSecret_Cont["ItemId"]) do
		if Item_ChkItem(v) then
			table.insert(tItemTable,v)
			nCount = nCount + 1
		end
	end
	
	if nCount > 0 then
		Sys_DialogFace(nNpcId)
		Sys_DialogText(tWork_Text[nNpcId]["Text411"])
		Sys_DialogText(tWork_Text[nNpcId]["Text412"])
		for i,v in pairs(tItemTable) do
			local sItemName = Get_ItemtypeName(v)
			local nNeedValue = tInternalWorkSecret_Cont["CultureValue"][v]
			Sys_DialogOption(string.format(tWork_Text[nNpcId]["Option411"],sItemName,nNeedValue),"</F>InternalWorkSecret_ExchangeDialog</N>" .. nNpcId .. "</N>" .. v)
		end
		Sys_DialogOption(tWork_Text[nNpcId]["Option11"],"</F>NULL")
		Sys_DialogEnd()
	else
		-- 没有任何技能书可以熔炼 提示
		Sys_MsgBox(tWork_Text[23021]["NoAllItem"])
		return
	end
end

-- 二次确认对白1
function InternalWorkSecret_ExchangeDialog(nNpcId,nItemId)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tWork_Text[23021]["NoItem"],sItemName))
		return
	end
	
	local nItemNum = Get_CountItemType(nItemId,0)
	local nNeedValue = tInternalWorkSecret_Cont["CultureValue"][nItemId]
	
	Sys_DialogFace(nNpcId)
	if nItemId == 3005412 then
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text422"],nItemNum,sItemName,nNeedValue))
		Sys_DialogOption(tWork_Text[nNpcId]["Option18"],"</F>InternalWorkSecret_ExchangeDialog1</N>" .. nNpcId .. "</N>" .. nItemId .. "</N>1")
		Sys_DialogOption(tWork_Text[nNpcId]["Option19"],"</F>InternalWorkSecret_ExchangeDialog1</N>" .. nNpcId .. "</N>" .. nItemId .. "</N>5")
	else
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text421"],nItemNum,sItemName,nNeedValue))
		Sys_DialogOption(tWork_Text[nNpcId]["Option12"],"</F>InternalWorkSecret_ExchangeDialog1</N>" .. nNpcId .. "</N>" .. nItemId .. "</N>1")
		Sys_DialogOption(tWork_Text[nNpcId]["Option13"],"</F>InternalWorkSecret_ExchangeDialog1</N>" .. nNpcId .. "</N>" .. nItemId .. "</N>5")
	end
	Sys_DialogOption(tWork_Text[nNpcId]["Option14"],"</F>InternalWorkSecret_ExchangeDialog1</N>" .. nNpcId .. "</N>" .. nItemId .. "</N>0")
	Sys_DialogOption(tWork_Text[nNpcId]["Option15"],"</F>NULL")
	Sys_DialogEnd()
end

-- 二次确认对白2
function InternalWorkSecret_ExchangeDialog1(nNpcId,nItemId,nNum)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if nNum == 0 then
		nNum = nItemNum
	end
	
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tWork_Text[23021]["NoItem"],sItemName))
		return
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_MsgBox(string.format(tWork_Text[23021]["NoEnoughItem"],nNum,sItemName))
		return
	end
	
	Sys_DialogFace(nNpcId)
	if nItemId == 3005412 then
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text432"],nNum,sItemName))
	else
		Sys_DialogText(string.format(tWork_Text[nNpcId]["Text431"],nNum,sItemName))
	end
	Sys_DialogOption(tWork_Text[nNpcId]["Option16"],"</F>InternalWorkSecret_SureToExchange</N>" .. nNpcId .. "</N>" .. nItemId .. "</N>" .. nNum)
	Sys_DialogOption(tWork_Text[nNpcId]["Option17"],"</F>NULL")
	Sys_DialogEnd()
end

-- 确认兑换
function InternalWorkSecret_SureToExchange(nNpcId,nItemId,nNum)
	-- 等级不足
	if not InternalWorkSecret_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tWork_Text[nNpcId]["NoItem"],sItemName))
		return
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_MsgBox(string.format(tWork_Text[nNpcId]["NoEnoughItem"],nNum,sItemName))
		return
	end
	
	local nNeedValue = tInternalWorkSecret_Cont["CultureValue"][nItemId]
	local nAllValue = nNeedValue * nNum
	local nUserValue = Get_UserCultureValue()
	
	-- 判断修为值上限
	if nUserValue + nUserValue > G_User_RepairValue then
		Sys_MsgBox(tRewardTemplate_Text["RepairValue"])
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
		if User_AddCultureValue(nAllValue) then
			User_TalkChannel2005(string.format(tWork_Text[nNpcId]["Success"],nAllValue))
			Sys_SaveActionFestivalLog(string.format(tInternalWorkSecret_Log["Exchange"],nItemId,nNum,nAllValue))
			User_EffectAdd(tInternalWorkSecret_Effect[1],tInternalWorkSecret_Effect[2])
		end
	end
end

--------------------------------------------------------使用物品逻辑-------------------------------------------------
-- 使用物品 寻路到npc
function InternalWorkSecret_FindNpc(nItemId)
	local nFlag = 0
	if nItemId > 0 then
		if Item_ChkItem(nItemId) then
			nFlag = 1
		end
	else
		nFlag = 1
	end
	
	if nFlag == 1 then
		-- 判断玩家所在地图是否可以寻路
		-- 不可寻路 给提示
		local nUserId = Get_UserId()
		local nMapId = Get_UserMapId(nUserId)
		local nNpcId = tInternalWorkSecret_Cont["NpcId"]
		--判断是否在双龙城
		if nMapId == tInternalWorkSecret_Cont["MapId"] then
			NpcPosition_PathFind(nNpcId)
		else
			local nPosX = Get_NpcPositionX(nNpcId)
			local nPosY = Get_NpcPositionY(nNpcId)
			local sName = Get_NpcName(nNpcId)
			User_TalkChannel2005(string.format(tWork_Text["Msg"]["FindNpc"], nPosX, nPosY, sName))
		end
	end
end

-- 使用碎片
function InternalWorkSecret_UseScrap(nItemId)
	if Item_ChkItem(nItemId) then		
		-- 碎片数不足
		local nItemNum = tInternalWorkSecret_UsePack[nItemId]["DeleteItem"][1]["ItemNum"]
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			Sys_MsgBox(string.format(tWork_Text["Msg"]["NoEnough"],nItemNum))
			return
		else
			-- 判断背包
			if not RewardTemplate_CheckSpace(tInternalWorkSecret_UsePack[nItemId]) then
				return
			end
			
			local sRewardName = tWork_Text["Msg"]["CompoundName"][nItemId]
			RewardTemplate_UseItemAndMsg(tInternalWorkSecret_UsePack[nItemId])
			Sys_MsgBox(string.format(tWork_Text["Msg"]["Success105"],sRewardName))
		end
	end
end

-- 3310091	散功丹特惠包
function InternalWorkSecret_UsePack(nItemId)
	if Item_ChkItem(nItemId) then
		if not RewardTemplate_CheckSpace(tInternalWorkSecret_UsePack[nItemId]) then
			return
		end
	
		RewardTemplate_UseItemAndMsg(tInternalWorkSecret_UsePack[nItemId])
	end
end

--判断玩家是否能接春节活动
function InternalWorkSecret_SpingFestival2020(nNpcId)
	local nInternalWorkSecret_UserId = Get_UserId()
	local nInternalWorkSecret_Eventype = tInternalWorkSecret_SpringFestival2020["Stc"][1][1]
	local nInternalWorkSecret_Datatype = tInternalWorkSecret_SpringFestival2020["Stc"][1][2]
	local nInternalWorkSecret_Eventype1 = tInternalWorkSecret_SpringFestival2020["Stc"][2][1]
	local nInternalWorkSecret_Datatype1 = tInternalWorkSecret_SpringFestival2020["Stc"][2][2]
	
	local nInternalWorkSecret_nTip = 0
	
	for i,v in pairs(tInternalWorkSecret_SpringFestivalAll2020) do 
		local nInternalWorkSecret_LieEvent = v[1]
		local nInternalWorkSecret_LieData = v[2]
		
		if Task_ChkStcValue(nInternalWorkSecret_LieEvent,nInternalWorkSecret_LieData,"==",1,nInternalWorkSecret_UserId) then
			nInternalWorkSecret_nTip = 1
			break
		end
		
	end
	
	if Task_ChkStcValue(nInternalWorkSecret_Eventype,nInternalWorkSecret_Datatype,"==",1,nInternalWorkSecret_UserId) and Task_ChkStcValue(nInternalWorkSecret_Eventype1,nInternalWorkSecret_Datatype1,"==",1,nInternalWorkSecret_UserId) 
		and (nInternalWorkSecret_nTip == 0) then
		return true
	end
	return false
end

--------新增内功副本
function InternalWorkSecret_StrengthCopy(nNpcId)
	local nInternalWorkSecret_UserId = nNowUserId or Get_UserId()
	local nInternalWorkSecret_TaskId = tInternalWorkSecret_AddData["TaskId"]
	--创建ID
	if not Task_ChkTaskDetail(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId) then
		if not Task_AddTaskDetail(nInternalWorkSecret_TaskId,0,nInternalWorkSecret_UserId) then
			return 
		end
	end
	local nInternalWorkSecret_Data = Get_TaskDetailData1(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId)
-- 领任务
	if nInternalWorkSecret_Data <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
	end
-- 任务中
	if nInternalWorkSecret_Data == 1 then
		LinkNpcGossipFunc_New(nNpcId,"8-2")
	end
-- 领取任务
	if nInternalWorkSecret_Data == 2 then
		LinkNpcGossipFunc_New(nNpcId,"8-3")
	end
end
--接任务
function InternalWorkSecret_StrengthCopyTask(nNpcId)
	local nInternalWorkSecret_UserId = nNowUserId or Get_UserId()
	local nInternalWorkSecret_TaskId = tInternalWorkSecret_AddData["TaskId"]
	--创建ID
	if not Task_ChkTaskDetail(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId) then
		if not Task_AddTaskDetail(nInternalWorkSecret_TaskId,0,nInternalWorkSecret_UserId) then
			return 
		end
	end
	local nInternalWorkSecret_Data = Get_TaskDetailData1(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId)
	if nInternalWorkSecret_Data > 0 then
		return
	end
	Task_SetTaskDetailData1(nInternalWorkSecret_TaskId,1,nInternalWorkSecret_UserId) 
	User_OpenDialog(2200)
end
-- 交任务 领取奖励
function InternalWorkSecret_StrengthCopyReward(nNpcId)
	--判断是否有接任务
	local nInternalWorkSecret_UserId = nNowUserId or Get_UserId()
	local nInternalWorkSecret_TaskId = tInternalWorkSecret_AddData["TaskId"]
	local nInternalWorkSecret_Data = Get_TaskDetailData1(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId)
	if nInternalWorkSecret_Data <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	---是否领取过奖励
	if nInternalWorkSecret_Data >= 3 then
		return
	end
	--背包判断
	if not RewardTemplate_CheckSpace(tInternalWorkSecret_AddData["Reward"]) then
		return
	end
	--打掩码
	Task_SetTaskDetailData1(nInternalWorkSecret_TaskId,3,nInternalWorkSecret_UserId)
 -- 给奖励
	RewardTemplate_UseItemAndMsg(tInternalWorkSecret_AddData["Reward"])
	Task_SetTaskDetailCompleteFlag(nInternalWorkSecret_TaskId,1,nInternalWorkSecret_UserId)
end

----抽奖新增
function InternalWorkSecret_GetStar(nFlag)
	local nStar = tInternalWorkSecret_UsePack["PrizePool"][1][nFlag]["Star"]
	return nStar
end

---获得奖励
function InternalWorkSecret_StrengthCopyGet(sType,nIndex)
	local tReward = CommonFunc_Copy(tInternalWorkSecret_UsePack[sType][1][nIndex])
	if tReward["GlobalId"] then
		local nGlobalId = tReward["GlobalId"]
		local nGlobalPos = tReward["Pos"]
		Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,1)
	end

	-- tInternalWorkSecret_UsePack["PrizePool"][1][62]["Log"] = "0,0,%d,5,18000182,2,192625,1"
	-- if tReward["Log"] then
		-- tReward["Log"] = string.format(tReward["Log"],nNeedItem)
	-- end
	
	RewardTemplate_Reward(tReward)
	User_EffectAdd(tInternalWorkSecret_Effect[1],tInternalWorkSecret_Effect[2])
end
--背包空间判断
function InternalWorkSecret_StrengthCopySpace(sType,nIndex)
	local tReward = CommonFunc_Copy(tInternalWorkSecret_UsePack[sType][1][nIndex])

	if not RewardTemplate_CheckSpace(tReward) then
		return false
	end
	return true
end
----获取上次随机的物品名字
function InternalWorkSecret_StrengthCopyGetItemName(sType,nIndex)
	local tReward = CommonFunc_Copy(tInternalWorkSecret_UsePack[sType][1][nIndex])
	local nNum = 1
	local nZeng = 0
	local nTime = 0
	local nStone = 0
	local nStar = 3
	local nRewardItem = tReward["Item_1"]
	local sStrNone = tWork_Text["Msg"]["None"]
	if tReward["Num"] then
		nNum = tReward["Num"]
	end
	if tReward["Zeng"] then
		nZeng = tReward["Zeng"]
	end
	if tReward["Time"] then
		nTime = tReward["Time"]
	end
	if tReward["Stone"] then
		nStone = tReward["Stone"]
	end
	if tReward["Star"] then
		nStar = tReward["Star"]
	end
	local sRewardName = ""
	if nRewardItem == 100 then
		sRewardName = string.format(tWork_Text["Msg"]["RepairValue"],nRewardItem)
	else
		sRewardName = string.format(tWork_Text["Msg"]["RewardName"],Get_ItemtypeName(nRewardItem),tostring(nNum))
		-- 先判断是否有时效的 提示
		if nTime > 0 then
			local sStr1 = string.format(tWork_Text["Msg"]["Time"],nTime)
			-- 判断是否是赤炼石
			if nStone > 0 then
				-- sStr1 = sStr1 .. string.format(tWork_Text["Msg"]["Stone"],nStone)
				local sStone = string.format(tWork_Text["Msg"]["Stone"],nStone)
				sStr1 = string.format(sStrNone,sStr1,sStone)
			end
			-- local sStr = sStr1 .. Get_ItemtypeName(nRewardItem)
			local sStr = string.format(sStrNone,sStr1,Get_ItemtypeName(nRewardItem))
			
			if nZeng == 1 then
				-- sStr = sStr .. tWork_Text["Msg"]["Zeng"]
				sStr = string.format(sStrNone,sStr,tWork_Text["Msg"]["Zeng"])
			end
			sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
		elseif nZeng == 1 then

			-- local sStr = Get_ItemtypeName(nRewardItem) .. tWork_Text["Msg"]["Zeng"]
			local sStr = string.format(sStrNone,Get_ItemtypeName(nRewardItem),tWork_Text["Msg"]["Zeng"])
			sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
		end
		-- 再判断 外套物品 有神佑提示
		if sType ~= "PrizePool" then
			-- local sStr = tWork_Text["Msg"]["Reduce"] .. Get_ItemtypeName(nRewardItem) .. tWork_Text["Msg"]["Zeng"]
			local sStr1 = string.format(sStrNone,tWork_Text["Msg"]["Reduce"],Get_ItemtypeName(nRewardItem))
			local sStr = string.format(sStrNone,sStr1,tWork_Text["Msg"]["Zeng"])
			sRewardName = string.format(tWork_Text["Msg"]["RewardName"],sStr,tostring(nNum))
		end
	end

	local sColor = " "
	local sStar = tWork_Text[23021]["AllStar"]
	if nStar == 3 then
		sColor = string.format(tWork_Text[23021]["Green"],sRewardName)
	elseif nStar == 4 then
		sColor = string.format(tWork_Text[23021]["Purple"],sRewardName)
		-- sStar = sStar .. tWork_Text[23021]["Star"]
		sStar = string.format(sStrNone,sStar,tWork_Text[23021]["Star"])
	elseif nStar == 5 then
		sColor = string.format(tWork_Text[23021]["Orange"],sRewardName)
		-- sStar = sStar .. tWork_Text[23021]["Star"] .. tWork_Text[23021]["Star"]
		local sStr1 = string.format(sStrNone,sStar,tWork_Text[23021]["Star"])
		sStar = string.format(sStrNone,sStr1,tWork_Text[23021]["Star"])
	else
		sColor = sRewardName
	end
	return sColor
end 



------------------------------------------------NPC模板--------------------------------------------------
-- 23021	【内功】白眉道长
tNpcFace[4929] = 247
tNpcGossip[23021] = tNpcGossip[23021] or DefaultNpc:new{}
tNpcGossip[23021]["OptionHidden"] = 1
tNpcGossip[23021]["DialogueText"] = tWork_Text[23021]
-- 等级不足
tNpcGossip[23021]["Text1-1"] = {111,112,1112,113,114,115}
tNpcGossip[23021]["tOption1-1"] = {1}
tNpcGossip[23021]["ChkFunc1-1"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23021]["Text1-1"] = {111,1112,113,114,115}
	else
		tNpcGossip[23021]["Text1-1"] = {111,112,113,114,115}
	end
	return not InternalWorkSecret_JudgeLevel()
end
-- 达到等级
tNpcGossip[23021]["Text1-2"] = {121,1212,122,123,124}
tNpcGossip[23021]["tOption1-2"] = {2,122,3,121,124,123}
tNpcGossip[23021]["ChkFunc1-2"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23021]["Text1-2"] = {121,1212,123,124}
		tNpcGossip[23021]["tOption1-2"] = {122,3,121,124,123}
	else
		tNpcGossip[23021]["Text1-2"] = {121,122,123,124}
		tNpcGossip[23021]["tOption1-2"] = {2,3,121,124,123}
	end
	return InternalWorkSecret_JudgeLevel()
end
tNpcGossip[23021]["OptionFunc2"] = "InternalWorkSecret_HandIn</N>23021"
tNpcGossip[23021]["OptionFunc122"] = "InternalWorkSecret_HandIn</N>23021"
tNpcGossip[23021]["OptionFunc3"] = "InternalWorkSecret_Exchange</N>23021"
tNpcGossip[23021]["OptionFunc121"] = "InternalWorkSecret_OpenWeb</N>23021"
----新增
tNpcGossip[23021]["OptionFunc123"] = "InternalWorkSecret_StrengthCopy</N>23021"
tNpcGossip[23021]["OptionChkFunc123"]= function()
	local nInternalWorkSecret_UserId = nNowUserId or Get_UserId()
	local nInternalWorkSecret_TaskId = tInternalWorkSecret_AddData["TaskId"]
	--创建ID
	if not Task_ChkTaskDetail(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId) then
		if not Task_AddTaskDetail(nInternalWorkSecret_TaskId,0,nInternalWorkSecret_UserId) then
			return 
		end
	end
	---完成或等级不足不显示
	local nInternalWorkSecret_Data = Get_TaskDetailData1(nInternalWorkSecret_TaskId,nInternalWorkSecret_UserId)
	if nInternalWorkSecret_Data >= 3 or not StrengthCopy_NewLevel() then
		return false
	end
	return true
end

tNpcGossip[23021]["OptionFunc124"] = "User_OpenExchangeShop</N>23021"

-- 接任务对白
tNpcGossip[23021]["Text8-1"] = {811}
tNpcGossip[23021]["tOption8-1"] = {111,811,812}
tNpcGossip[23021]["OptionFunc811"] = "InternalWorkSecret_StrengthCopyTask</N>23021"
-- 任务进行中对白
tNpcGossip[23021]["Text8-2"] = {111,821,822,823,824}
tNpcGossip[23021]["tOption8-2"] = {821,822}
tNpcGossip[23021]["OptionFunc821"] = "User_OpenDialog</N>2200"

-- 交任务对白
tNpcGossip[23021]["Text8-3"] = {831}
tNpcGossip[23021]["tOption8-3"] = {831}
tNpcGossip[23021]["OptionFunc831"] = "InternalWorkSecret_StrengthCopyReward</N>23021"
-- 什么是内功副本
tNpcGossip[23021]["Text9-1"] = {911}
tNpcGossip[23021]["tOption9-1"] = {911,912}

--春节节日活动对白
tNpcGossip[23021]["Text1-3"] = {511}
tNpcGossip[23021]["tOption1-3"] = {20}
tNpcGossip[23021]["OptionFunc20"] = "GenderTransitionService_SpingPao</N>6"



 -- 接2、递交玄灵石（1颗）
 -- 失败，没有玄灵石
tNpcGossip[23021]["Text2-1"] = {211,212,213,214,2111,2112}
tNpcGossip[23021]["tOption2-1"] = {4}
tNpcGossip[23021]["ChkFunc2-1"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23021]["Text2-1"] = {2111,212,2112,214}
	else
		tNpcGossip[23021]["Text2-1"] = {211,212,213,214}
	end
	return true
end
-- 失败，背包满
tNpcGossip[23021]["Text2-2"] = {221}
tNpcGossip[23021]["tOption2-2"] = {5}
-- 成功
tNpcGossip[23021]["Text2-3"] = {231,2311,232,233,234,235}
tNpcGossip[23021]["tOption2-3"] = {6,7,8}
tNpcGossip[23021]["ChkFunc2-3"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23021]["Text2-3"] = {2311,232,233,234,235}
		tNpcGossip[23021]["tOption2-3"] = {7,8}
	else
		tNpcGossip[23021]["Text2-3"] = {231,232,233,234,235}
		tNpcGossip[23021]["tOption2-3"] = {6,7,8}
	end
	return true
end
-- 接6、更换宝物（x张八卦符）
-- 失败，没有八卦符
tNpcGossip[23021]["Text3-1"] = {311,312,313,314}
tNpcGossip[23021]["tOption3-1"] = {9}
-- 接7、更换宝物（x点修为值）
-- 失败，修为值不足
tNpcGossip[23021]["Text3-2"] = {321}
tNpcGossip[23021]["tOption3-2"] = {10}

-- 接3、秘籍兑换修为值
tNpcGossip[23021]["Text4-1"] = {411,412}
tNpcGossip[23021]["tOption4-1"] = {411,11}
-- 接411
tNpcGossip[23021]["Text4-2"] = {421}
tNpcGossip[23021]["tOption4-2"] = {12,13,14,15}
-- 二次确认
tNpcGossip[23021]["Text4-3"] = {431}
tNpcGossip[23021]["tOption4-3"] = {16,17}

---------------------------------------物品模板---------------------------------------
-- 3309945		玄灵石
tItem[3309945] = tItem[3309945] or {}
tItem[3309945]["Function"] = function (nItemId,sItemName)
	InternalWorkSecret_FindNpc(nItemId)
end
tItem[3309946] = tItem[3309945]		-- 3309946		八卦符

-- 3309947		龙象般若功·上篇残页
tItem[3309947] = tItem[3309947] or {}
tItem[3309947]["Function"] = function (nItemId,sItemName)
	InternalWorkSecret_UseScrap(nItemId)
end
tItem[3309948] = tItem[3309947]		-- 3309948		龙象般若功·下篇残页
tItem[3309949] = tItem[3309947]        -- 3309949		无量心经·上篇残页
tItem[3309950] = tItem[3309947]        -- 3309950		无量心经·中篇残页
tItem[3309951] = tItem[3309947]         -- 3309951		无量心经·下篇残页 
tItem[3309952] = tItem[3309947]        -- 3309952		太乙神功·上篇残页
tItem[3309953] = tItem[3309947]        -- 3309953		太乙神功·中篇残页
tItem[3309954] = tItem[3309947]        -- 3309954		太乙神功·下篇残页
tItem[3309955] = tItem[3309947]        -- 3309955		枯荣禅功·上篇残页
tItem[3309956] = tItem[3309947]        -- 3309956		枯荣禅功·中篇残页
tItem[3309957] = tItem[3309947]        -- 3309957		枯荣禅功·下篇残页

-- 3310091	散功丹特惠包
tItem[3310091] = tItem[3310091] or {}
tItem[3310091]["Function"] = function (nItemId,sItemName)
	InternalWorkSecret_UsePack(nItemId)
end

--------------------------------------------时间自检模板---------------------------------------
local tInternalWorkSecret_SetGlobal = {}
tInternalWorkSecret_SetGlobal["Type"] = 2  -- 重置动态存储值
tInternalWorkSecret_SetGlobal["TimeType"] = 4  -- 日时间
tInternalWorkSecret_SetGlobal["Time"] = "00:00 00:00"
tInternalWorkSecret_SetGlobal["Func"] = InternalWorkSecret_SetGlobal
table.insert(tSystemTime_InitialData,tInternalWorkSecret_SetGlobal)
