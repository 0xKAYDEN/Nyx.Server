------------------------------------------------------------------------------------
--Name：            200413[简体征服][活动脚本]全球儿童节活动-互动功能和玩具交易部分
--Creator:      冯子鑫
--Created:     2020-04-13
------------------------------------------------------------------------------------
--命名前缀：ChildrenDayToy_
-- #logid:12001963,6[]

-- #41804 = V100\ActiveScript\ChildrenDay\2020\[Conquer][ActiveScript]ChildrenDayToy.lua
-- #41804 = V100\活动脚本\儿童节\2020\[征服][活动脚本]全球儿童节活动-互动功能和玩具交易部分.lua

-- #####stcstart
-- #stc 掩码说明 
-- #stc 219,19		记录背包信
-- #stc 219,20		记录征服玩具1在童趣玩具箱中的数量
-- #stc 219,21		记录征服玩具2在童趣玩具箱中的数量
-- #stc 219,22		记录征服玩具3在童趣玩具箱中的数量
-- #stc 219,23		记录征服玩具4在童趣玩具箱中的数量
-- #stc 219,24		记录征服玩具集齐后获得奖励掩码
-- #stc 219,25		记录华语玩具1在童趣玩具箱中的数量
-- #stc 219,26		记录华语玩具2在童趣玩具箱中的数量
-- #stc 219,27		记录华语玩具3在童趣玩具箱中的数量
-- #stc 219,28		记录华语玩具4在童趣玩具箱中的数量
-- #stc 219,29		记录华语玩具集齐后获得奖励掩码
-- #stc 219,30		记录英语玩具1在童趣玩具箱中的数量
-- #stc 219,31		记录英语玩具2在童趣玩具箱中的数量
-- #stc 219,32		记录英语玩具3在童趣玩具箱中的数量
-- #stc 219,33		记录英语玩具4在童趣玩具箱中的数量
-- #stc 219,34		记录英语玩具集齐后获得奖励掩码
-- #stc 219,35		记录西语玩具1在童趣玩具箱中的数量
-- #stc 219,36		记录西语玩具2在童趣玩具箱中的数量
-- #stc 219,37		记录西语玩具3在童趣玩具箱中的数量
-- #stc 219,38		记录西语玩具4在童趣玩具箱中的数量
-- #stc 219,39		记录西语玩具集齐后获得奖励掩码
-- #stc 219,40		记录阿语玩具1在童趣玩具箱中的数量
-- #stc 219,41		记录阿语玩具2在童趣玩具箱中的数量
-- #stc 219,42		记录阿语玩具3在童趣玩具箱中的数量
-- #stc 219,43		记录阿语玩具4在童趣玩具箱中的数量
-- #stc 219,44		记录阿语玩具集齐后获得奖励掩码
-- #stc 219,45		记录收集齐全部玩具后获得奖励掩码
-- #stc 219,46		记录寄售玩具掩码
-- #stc 219,57		记录玩家领取斗蛋 每日清零
-- #stc 219,70		记录玩家每日斗蛋获胜次数 限量10次
-- #stc 220,06-220,25		记录限定玩具首次收集，收集到为1

--------------------------------------数据配置部分--------------------------------------
local tChildrenDayToy_Stc = {}	
	-- 记录征服玩具收集
	tChildrenDayToy_Stc[1] = {}
	tChildrenDayToy_Stc[1][1] = {}
	tChildrenDayToy_Stc[1][1]["EventType"] = 219
	tChildrenDayToy_Stc[1][1]["TypeData"] = 20
	tChildrenDayToy_Stc[1][1]["ItemId"] = 3330685
	tChildrenDayToy_Stc[1][2] = {}
	tChildrenDayToy_Stc[1][2]["EventType"] = 219
	tChildrenDayToy_Stc[1][2]["TypeData"] = 21
	tChildrenDayToy_Stc[1][2]["ItemId"] = 3330686
	tChildrenDayToy_Stc[1][3] = {}
	tChildrenDayToy_Stc[1][3]["EventType"] = 219
	tChildrenDayToy_Stc[1][3]["TypeData"] = 22
	tChildrenDayToy_Stc[1][3]["ItemId"] = 3330687
	tChildrenDayToy_Stc[1][4] = {}
	tChildrenDayToy_Stc[1][4]["EventType"] = 219
	tChildrenDayToy_Stc[1][4]["TypeData"] = 23
	tChildrenDayToy_Stc[1][4]["ItemId"] = 3330688
	tChildrenDayToy_Stc[1][5] = {}
	tChildrenDayToy_Stc[1][5]["EventType"] = 219
	tChildrenDayToy_Stc[1][5]["TypeData"] = 24
	-- 记录华语玩具收集
	tChildrenDayToy_Stc[2] = {}
	tChildrenDayToy_Stc[2][1] = {}
	tChildrenDayToy_Stc[2][1]["EventType"] = 219
	tChildrenDayToy_Stc[2][1]["TypeData"] = 25
	tChildrenDayToy_Stc[2][1]["ItemId"] = 3330689
	tChildrenDayToy_Stc[2][2] = {}
	tChildrenDayToy_Stc[2][2]["EventType"] = 219
	tChildrenDayToy_Stc[2][2]["TypeData"] = 26
	tChildrenDayToy_Stc[2][2]["ItemId"] = 3330690
	tChildrenDayToy_Stc[2][3] = {}
	tChildrenDayToy_Stc[2][3]["EventType"] = 219
	tChildrenDayToy_Stc[2][3]["TypeData"] = 27
	tChildrenDayToy_Stc[2][3]["ItemId"] = 3330691
	tChildrenDayToy_Stc[2][4] = {}
	tChildrenDayToy_Stc[2][4]["EventType"] = 219
	tChildrenDayToy_Stc[2][4]["TypeData"] = 28
	tChildrenDayToy_Stc[2][4]["ItemId"] = 3330692
	tChildrenDayToy_Stc[2][5] = {}
	tChildrenDayToy_Stc[2][5]["EventType"] = 219
	tChildrenDayToy_Stc[2][5]["TypeData"] = 29
	-- 记录英语玩具收集
	tChildrenDayToy_Stc[3] = {}
	tChildrenDayToy_Stc[3][1] = {}
	tChildrenDayToy_Stc[3][1]["EventType"] = 219
	tChildrenDayToy_Stc[3][1]["TypeData"] = 30
	tChildrenDayToy_Stc[3][1]["ItemId"] = 3330693
	tChildrenDayToy_Stc[3][2] = {}
	tChildrenDayToy_Stc[3][2]["EventType"] = 219
	tChildrenDayToy_Stc[3][2]["TypeData"] = 31
	tChildrenDayToy_Stc[3][2]["ItemId"] = 3330694
	tChildrenDayToy_Stc[3][3] = {}
	tChildrenDayToy_Stc[3][3]["EventType"] = 219
	tChildrenDayToy_Stc[3][3]["TypeData"] = 32
	tChildrenDayToy_Stc[3][3]["ItemId"] = 3330695
	tChildrenDayToy_Stc[3][4] = {}
	tChildrenDayToy_Stc[3][4]["EventType"] = 219
	tChildrenDayToy_Stc[3][4]["TypeData"] = 33
	tChildrenDayToy_Stc[3][4]["ItemId"] = 3330696
	tChildrenDayToy_Stc[3][5] = {}
	tChildrenDayToy_Stc[3][5]["EventType"] = 219
	tChildrenDayToy_Stc[3][5]["TypeData"] = 34
	-- 记录西语玩具收集
	tChildrenDayToy_Stc[4] = {}
	tChildrenDayToy_Stc[4][1] = {}
	tChildrenDayToy_Stc[4][1]["EventType"] = 219
	tChildrenDayToy_Stc[4][1]["TypeData"] = 35
	tChildrenDayToy_Stc[4][1]["ItemId"] = 3330697
	tChildrenDayToy_Stc[4][2] = {}
	tChildrenDayToy_Stc[4][2]["EventType"] = 219
	tChildrenDayToy_Stc[4][2]["TypeData"] = 36
	tChildrenDayToy_Stc[4][2]["ItemId"] = 3330698
	tChildrenDayToy_Stc[4][3] = {}
	tChildrenDayToy_Stc[4][3]["EventType"] = 219
	tChildrenDayToy_Stc[4][3]["TypeData"] = 37
	tChildrenDayToy_Stc[4][3]["ItemId"] = 3330699
	tChildrenDayToy_Stc[4][4] = {}
	tChildrenDayToy_Stc[4][4]["EventType"] = 219
	tChildrenDayToy_Stc[4][4]["TypeData"] = 38
	tChildrenDayToy_Stc[4][4]["ItemId"] = 3330700
	tChildrenDayToy_Stc[4][5] = {}
	tChildrenDayToy_Stc[4][5]["EventType"] = 219
	tChildrenDayToy_Stc[4][5]["TypeData"] = 39
	-- 记录阿语玩具收集
	tChildrenDayToy_Stc[5] = {}
	tChildrenDayToy_Stc[5][1] = {}
	tChildrenDayToy_Stc[5][1]["EventType"] = 219
	tChildrenDayToy_Stc[5][1]["TypeData"] = 40
	tChildrenDayToy_Stc[5][1]["ItemId"] = 3330701
	tChildrenDayToy_Stc[5][2] = {}
	tChildrenDayToy_Stc[5][2]["EventType"] = 219
	tChildrenDayToy_Stc[5][2]["TypeData"] = 41
	tChildrenDayToy_Stc[5][2]["ItemId"] = 3330702
	tChildrenDayToy_Stc[5][3] = {}
	tChildrenDayToy_Stc[5][3]["EventType"] = 219
	tChildrenDayToy_Stc[5][3]["TypeData"] = 42
	tChildrenDayToy_Stc[5][3]["ItemId"] = 3330703
	tChildrenDayToy_Stc[5][4] = {}
	tChildrenDayToy_Stc[5][4]["EventType"] = 219
	tChildrenDayToy_Stc[5][4]["TypeData"] = 43
	tChildrenDayToy_Stc[5][4]["ItemId"] = 3330704
	tChildrenDayToy_Stc[5][5] = {}
	tChildrenDayToy_Stc[5][5]["EventType"] = 219
	tChildrenDayToy_Stc[5][5]["TypeData"] = 44
	-- 记录收集齐玩具后获得奖励掩码
	tChildrenDayToy_Stc[6] = {}
	tChildrenDayToy_Stc[6]["EventType"] = 219
	tChildrenDayToy_Stc[6]["TypeData"] = 45
	-- 记录寄售玩具掩码
	tChildrenDayToy_Stc[7] = {}
	tChildrenDayToy_Stc[7]["EventType"] = 219
	tChildrenDayToy_Stc[7]["TypeData"] = 46
	-- 记录玩家领取斗蛋 每日清零
	tChildrenDayToy_Stc[8] = {}
	tChildrenDayToy_Stc[8]["EventType"] = 219
	tChildrenDayToy_Stc[8]["TypeData"] = 57
	-- 记录玩家每日斗蛋获胜次数 限量10次
	tChildrenDayToy_Stc[9] = {}
	tChildrenDayToy_Stc[9]["EventType"] = 219
	tChildrenDayToy_Stc[9]["TypeData"] = 70
	tChildrenDayToy_Stc[9]["Limit"] = 10
	-- 记录限定玩具首次收集，收集到为1
	tChildrenDayToy_Stc["Collect"] = {}
	tChildrenDayToy_Stc["Collect"][1] = {}
	tChildrenDayToy_Stc["Collect"][1][1] = {}
	tChildrenDayToy_Stc["Collect"][1][1]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][1][1]["TypeData"] = 06
	tChildrenDayToy_Stc["Collect"][1][2] = {}
	tChildrenDayToy_Stc["Collect"][1][2]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][1][2]["TypeData"] = 07
	tChildrenDayToy_Stc["Collect"][1][3] = {}
	tChildrenDayToy_Stc["Collect"][1][3]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][1][3]["TypeData"] = 08
	tChildrenDayToy_Stc["Collect"][1][4] = {}
	tChildrenDayToy_Stc["Collect"][1][4]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][1][4]["TypeData"] = 09
	tChildrenDayToy_Stc["Collect"][2] = {}
	tChildrenDayToy_Stc["Collect"][2][1] = {}
	tChildrenDayToy_Stc["Collect"][2][1]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][2][1]["TypeData"] = 10
	tChildrenDayToy_Stc["Collect"][2][2] = {}
	tChildrenDayToy_Stc["Collect"][2][2]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][2][2]["TypeData"] = 11
	tChildrenDayToy_Stc["Collect"][2][3] = {}
	tChildrenDayToy_Stc["Collect"][2][3]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][2][3]["TypeData"] = 12
	tChildrenDayToy_Stc["Collect"][2][4] = {}
	tChildrenDayToy_Stc["Collect"][2][4]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][2][4]["TypeData"] = 13
	tChildrenDayToy_Stc["Collect"][3] = {}
	tChildrenDayToy_Stc["Collect"][3][1] = {}
	tChildrenDayToy_Stc["Collect"][3][1]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][3][1]["TypeData"] = 14
	tChildrenDayToy_Stc["Collect"][3][2] = {}
	tChildrenDayToy_Stc["Collect"][3][2]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][3][2]["TypeData"] = 15
	tChildrenDayToy_Stc["Collect"][3][3] = {}
	tChildrenDayToy_Stc["Collect"][3][3]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][3][3]["TypeData"] = 16
	tChildrenDayToy_Stc["Collect"][3][4] = {}
	tChildrenDayToy_Stc["Collect"][3][4]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][3][4]["TypeData"] = 17
	tChildrenDayToy_Stc["Collect"][4] = {}
	tChildrenDayToy_Stc["Collect"][4][1] = {}
	tChildrenDayToy_Stc["Collect"][4][1]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][4][1]["TypeData"] = 18
	tChildrenDayToy_Stc["Collect"][4][2] = {}
	tChildrenDayToy_Stc["Collect"][4][2]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][4][2]["TypeData"] = 19
	tChildrenDayToy_Stc["Collect"][4][3] = {}
	tChildrenDayToy_Stc["Collect"][4][3]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][4][3]["TypeData"] = 20
	tChildrenDayToy_Stc["Collect"][4][4] = {}
	tChildrenDayToy_Stc["Collect"][4][4]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][4][4]["TypeData"] = 21
	tChildrenDayToy_Stc["Collect"][5] = {}
	tChildrenDayToy_Stc["Collect"][5][1] = {}
	tChildrenDayToy_Stc["Collect"][5][1]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][5][1]["TypeData"] = 22
	tChildrenDayToy_Stc["Collect"][5][2] = {}
	tChildrenDayToy_Stc["Collect"][5][2]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][5][2]["TypeData"] = 23
	tChildrenDayToy_Stc["Collect"][5][3] = {}
	tChildrenDayToy_Stc["Collect"][5][3]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][5][3]["TypeData"] = 24
	tChildrenDayToy_Stc["Collect"][5][4] = {}
	tChildrenDayToy_Stc["Collect"][5][4]["EventType"] = 220
	tChildrenDayToy_Stc["Collect"][5][4]["TypeData"] = 25
	--积累活动积分
	tChildrenDayToy_Stc["ScoreEvent"] = 300
	tChildrenDayToy_Stc["ScoreType"] = 1
	
local tChildrenDayToy_Cont = {}
	--玩具的id
	tChildrenDayToy_Cont["Toy"] = {}
	tChildrenDayToy_Cont["Toy"][1] =  3330685
	tChildrenDayToy_Cont["Toy"][2] =  3330686
	tChildrenDayToy_Cont["Toy"][3] =  3330687
	tChildrenDayToy_Cont["Toy"][4] =  3330688
	tChildrenDayToy_Cont["Toy"][5] =  3330689
	tChildrenDayToy_Cont["Toy"][6] =  3330690
	tChildrenDayToy_Cont["Toy"][7] =  3330691
	tChildrenDayToy_Cont["Toy"][8] =  3330692
	tChildrenDayToy_Cont["Toy"][9] =  3330693
	tChildrenDayToy_Cont["Toy"][10] = 3330694
	tChildrenDayToy_Cont["Toy"][11] = 3330695
	tChildrenDayToy_Cont["Toy"][12] = 3330696
	tChildrenDayToy_Cont["Toy"][13] = 3330697
	tChildrenDayToy_Cont["Toy"][14] = 3330698
	tChildrenDayToy_Cont["Toy"][15] = 3330699
	tChildrenDayToy_Cont["Toy"][16] = 3330700
	tChildrenDayToy_Cont["Toy"][17] = 3330701
	tChildrenDayToy_Cont["Toy"][18] = 3330702
	tChildrenDayToy_Cont["Toy"][19] = 3330703
	tChildrenDayToy_Cont["Toy"][20] = 3330704
	--回礼的邮件id
	tChildrenDayToy_Cont["Mail"] = {}
	tChildrenDayToy_Cont["Mail"][1] =  577244
	tChildrenDayToy_Cont["Mail"][2] =  577245
	tChildrenDayToy_Cont["Mail"][3] =  577246
	tChildrenDayToy_Cont["Mail"][4] =  577247
	tChildrenDayToy_Cont["Mail"][5] =  577248
	tChildrenDayToy_Cont["Mail"][6] =  577249
	tChildrenDayToy_Cont["Mail"][7] =  577250
	tChildrenDayToy_Cont["Mail"][8] =  577251
	tChildrenDayToy_Cont["Mail"][9] =  577252
	tChildrenDayToy_Cont["Mail"][10] = 577253
	tChildrenDayToy_Cont["Mail"][11] = 577254
	tChildrenDayToy_Cont["Mail"][12] = 577255
	tChildrenDayToy_Cont["Mail"][13] = 577256
	tChildrenDayToy_Cont["Mail"][14] = 577257
	tChildrenDayToy_Cont["Mail"][15] = 577258
	tChildrenDayToy_Cont["Mail"][16] = 577259
	tChildrenDayToy_Cont["Mail"][17] = 577260
	tChildrenDayToy_Cont["Mail"][18] = 577261
	tChildrenDayToy_Cont["Mail"][19] = 577262
	tChildrenDayToy_Cont["Mail"][20] = 577263
	--玩具的对应的掩码编号
	tChildrenDayToy_Cont["Stc"] = {}
	tChildrenDayToy_Cont["Stc"][3330685]={}
	tChildrenDayToy_Cont["Stc"][3330685]["Index"] = 1
	tChildrenDayToy_Cont["Stc"][3330685]["Pos"]   = 1
	tChildrenDayToy_Cont["Stc"][3330686]={}
	tChildrenDayToy_Cont["Stc"][3330686]["Index"] = 1
	tChildrenDayToy_Cont["Stc"][3330686]["Pos"]   = 2
	tChildrenDayToy_Cont["Stc"][3330687]={}
	tChildrenDayToy_Cont["Stc"][3330687]["Index"] = 1
	tChildrenDayToy_Cont["Stc"][3330687]["Pos"]   = 3
	tChildrenDayToy_Cont["Stc"][3330688]={}
	tChildrenDayToy_Cont["Stc"][3330688]["Index"] = 1
	tChildrenDayToy_Cont["Stc"][3330688]["Pos"]   = 4
	tChildrenDayToy_Cont["Stc"][3330689]={}
	tChildrenDayToy_Cont["Stc"][3330689]["Index"] = 2
	tChildrenDayToy_Cont["Stc"][3330689]["Pos"]   = 1
	tChildrenDayToy_Cont["Stc"][3330690]={}
	tChildrenDayToy_Cont["Stc"][3330690]["Index"] = 2
	tChildrenDayToy_Cont["Stc"][3330690]["Pos"]   = 2
	tChildrenDayToy_Cont["Stc"][3330691]={}
	tChildrenDayToy_Cont["Stc"][3330691]["Index"] = 2
	tChildrenDayToy_Cont["Stc"][3330691]["Pos"]   = 3
	tChildrenDayToy_Cont["Stc"][3330692]={}
	tChildrenDayToy_Cont["Stc"][3330692]["Index"] = 2
	tChildrenDayToy_Cont["Stc"][3330692]["Pos"]   = 4
	tChildrenDayToy_Cont["Stc"][3330693]={}
	tChildrenDayToy_Cont["Stc"][3330693]["Index"] = 3
	tChildrenDayToy_Cont["Stc"][3330693]["Pos"]   = 1
	tChildrenDayToy_Cont["Stc"][3330694]={}
	tChildrenDayToy_Cont["Stc"][3330694]["Index"] = 3
	tChildrenDayToy_Cont["Stc"][3330694]["Pos"]   = 2
	tChildrenDayToy_Cont["Stc"][3330695]={}
	tChildrenDayToy_Cont["Stc"][3330695]["Index"] = 3
	tChildrenDayToy_Cont["Stc"][3330695]["Pos"]   = 3
	tChildrenDayToy_Cont["Stc"][3330696]={}
	tChildrenDayToy_Cont["Stc"][3330696]["Index"] = 3
	tChildrenDayToy_Cont["Stc"][3330696]["Pos"]   = 4
	tChildrenDayToy_Cont["Stc"][3330697]={}
	tChildrenDayToy_Cont["Stc"][3330697]["Index"] = 4
	tChildrenDayToy_Cont["Stc"][3330697]["Pos"]   = 1
	tChildrenDayToy_Cont["Stc"][3330698]={}
	tChildrenDayToy_Cont["Stc"][3330698]["Index"] = 4
	tChildrenDayToy_Cont["Stc"][3330698]["Pos"]   = 2
	tChildrenDayToy_Cont["Stc"][3330699]={}
	tChildrenDayToy_Cont["Stc"][3330699]["Index"] = 4
	tChildrenDayToy_Cont["Stc"][3330699]["Pos"]   = 3
	tChildrenDayToy_Cont["Stc"][3330700]={}
	tChildrenDayToy_Cont["Stc"][3330700]["Index"] = 4
	tChildrenDayToy_Cont["Stc"][3330700]["Pos"]   = 4
	tChildrenDayToy_Cont["Stc"][3330701]={}
	tChildrenDayToy_Cont["Stc"][3330701]["Index"] = 5
	tChildrenDayToy_Cont["Stc"][3330701]["Pos"]   = 1
	tChildrenDayToy_Cont["Stc"][3330702]={}
	tChildrenDayToy_Cont["Stc"][3330702]["Index"] = 5
	tChildrenDayToy_Cont["Stc"][3330702]["Pos"]   = 2
	tChildrenDayToy_Cont["Stc"][3330703]={}
	tChildrenDayToy_Cont["Stc"][3330703]["Index"] = 5
	tChildrenDayToy_Cont["Stc"][3330703]["Pos"]   = 3
	tChildrenDayToy_Cont["Stc"][3330704]={}
	tChildrenDayToy_Cont["Stc"][3330704]["Index"] = 5
	tChildrenDayToy_Cont["Stc"][3330704]["Pos"]   = 4
	
	--集齐玩具对应积分
	tChildrenDayToy_Cont["Integral"] = {}
	tChildrenDayToy_Cont["Integral"][3330705] = 100
	tChildrenDayToy_Cont["Integral"][3330706] = 50
	tChildrenDayToy_Cont["Integral"][3330707] = 50 
	tChildrenDayToy_Cont["Integral"][3330708] = 50 
	tChildrenDayToy_Cont["Integral"][3330709] = 50 
	tChildrenDayToy_Cont["Integral"][3330710] = 300 
	tChildrenDayToy_Cont["Integral"][3330711] = 300 
	
	--任务面板
	tChildrenDayToy_Cont["TaskId"] = 4491
	--等级限制
	tChildrenDayToy_Cont["Level"] = 80 
	tChildrenDayToy_Cont["Metempsychosis"] = 0
	--全球排行榜网站链接
	tChildrenDayToy_Cont["Web"] = "https://wtop.zf.99.com/etj/nqEn/"
	--斗蛋消耗物品id
	tChildrenDayToy_Cont["Doudan"] = 3330728
		--玩具箱物品id
	tChildrenDayToy_Cont["ToysBox"] = 3330712
		--记录首位集齐玩具的玩家
	tChildrenDayToy_Cont["GlobalToys"] = 54427
	-- 互动光效 
	tChildrenDayToy_Cont["Effect"] = {}
	tChildrenDayToy_Cont["Effect"]["Success"] = "task158"
	tChildrenDayToy_Cont["Effect"]["Failure"] = "task159"
	
	tChildrenDayToy_Cont["TaskEffect"] = "zf2-e128"
	--寻找波波攒
	tChildrenDayToy_Cont["OtherGame"] = {}
	tChildrenDayToy_Cont["OtherGame"][1] = 26480-- 打地鼠主NPC 胖胖
	tChildrenDayToy_Cont["OtherGame"][2] = 26493-- 捉迷藏主NPC 胡迪
	tChildrenDayToy_Cont["OtherGame"][3] = 26512-- 九宫采玉NPC 爱丽丝
	tChildrenDayToy_Cont["OtherGame"][4] = 26513-- 妖精快跑NPC 彼得潘
	tChildrenDayToy_Cont["OtherGame"][5] = 26505-- 波波攒主NPC 龟仙人
	--双龙城和市场id
	tChildrenDayToy_Cont["MainNpc"] = 26486--唐鸭鸭的id
	tChildrenDayToy_Cont["Twins"] = 1002
	tChildrenDayToy_Cont["NoGift"] = 1036
	
local tChildrenDayToy_Log = {}
	-- 寄售玩具时删除玩具log
	tChildrenDayToy_Log["ConsignmentToys"] = "0,0,%d,1,12001963,6[1],0,0"
	-- 物品过期log
	tChildrenDayToy_Log["Overtime"] = "0,0,%d,%d,12001963,6[5],0,0"
	-- 玩具放进箱子里是删除玩具log
	tChildrenDayToy_Log["InCase"] = "0,0,%d,%d,12001963,6[3][1],0,0"
	
local tChildrenDayToy_Reward = {}
	-- ===失败消耗斗蛋
	-- ===索引: tChildrenDayToy_Reward["Fail"]
	-- ===删除: 3330728,1
	-- ===LogStep:6[2][1]
	tChildrenDayToy_Reward["Fail"] = {}
	tChildrenDayToy_Reward["Fail"]["LogId"] = 12001963
	tChildrenDayToy_Reward["Fail"]["LogStep"] = "6[2][1]"
	tChildrenDayToy_Reward["Fail"]["DeleteItem"] = {}
	tChildrenDayToy_Reward["Fail"]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward["Fail"]["DeleteItem"][1]["Id"] = 3330728 -- 【库】童趣斗蛋[属性:9]
	tChildrenDayToy_Reward["Fail"]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Fail"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Fail"]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Success"] = {}
	-- ===斗蛋获胜获得冒险币
	-- ===索引: tChildrenDayToy_Reward["Success"]
	-- ===LogStep:6[2][2]
	tChildrenDayToy_Reward["Success"]["LogId"] = 12001963
	tChildrenDayToy_Reward["Success"]["LogStep"] = "6[2][2]"
	tChildrenDayToy_Reward["Success"]["RewardItem"] = {}
	tChildrenDayToy_Reward["Success"]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Success"]["RewardItem"][1]["Id"] = 3316104 --  3316104, 【表格】获得一个冒险币
	tChildrenDayToy_Reward["Success"]["RewardItem"][1]["Attr"] = "0 1" --  3316104 *1
	tChildrenDayToy_Reward["Success"]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Success"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Success"]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Draw"] = {}
	-- ===平局消耗斗蛋获得气力值
	-- ===索引: tChildrenDayToy_Reward["Draw"]
	-- ===删除: 3330728,1
	-- ===LogStep:6[2][3]
	tChildrenDayToy_Reward["Draw"]["LogId"] = 12001963
	tChildrenDayToy_Reward["Draw"]["LogStep"] = "6[2][3]"
	tChildrenDayToy_Reward["Draw"]["DeleteItem"] = {}
	tChildrenDayToy_Reward["Draw"]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward["Draw"]["DeleteItem"][1]["Id"] = 3330728 -- 【库】童趣斗蛋[属性:9]
	tChildrenDayToy_Reward["Draw"]["RewardStrengthValue"] = {}
	tChildrenDayToy_Reward["Draw"]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tChildrenDayToy_Reward["Draw"]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Draw"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Draw"]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Doudan"] = {}
	-- ===领取斗蛋
	-- ===索引: tChildrenDayToy_Reward["Doudan"]
	-- ===LogStep:6[2][0]
	tChildrenDayToy_Reward["Doudan"]["LogId"] = 12001963
	tChildrenDayToy_Reward["Doudan"]["LogStep"] = "6[2][0]"
	tChildrenDayToy_Reward["Doudan"]["RewardItem"] = {}
	tChildrenDayToy_Reward["Doudan"]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Doudan"]["RewardItem"][1]["Id"] = 3330728 -- 童趣斗蛋[3330728][属性:9][叠加:10000][金币:0], 【表格】获得10个斗蛋
	tChildrenDayToy_Reward["Doudan"]["RewardItem"][1]["Attr"] = "0 10" -- 童趣斗蛋*10
	-- tChildrenDayToy_Reward["Doudan"]["RewardEffect"] = {}
	-- tChildrenDayToy_Reward["Doudan"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChildrenDayToy_Reward["Doudan"]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330705] = {}
	-- ===征服限定玩具集齐奖励
	-- ===索引: tChildrenDayToy_Reward[3330705]
	-- ===删除: 3330705,1
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330705]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330705]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330705]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330705]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330705]["DeleteItem"][1]["Id"] = 3330705 -- 【库】征服玩具收集礼盒[属性:9]
	tChildrenDayToy_Reward[3330705]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330705]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330705]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tChildrenDayToy_Reward[3330705]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tChildrenDayToy_Reward[3330705]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330705]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330705]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330706] = {}
	-- ===华语限定玩具集齐奖励
	-- ===索引: tChildrenDayToy_Reward[3330706]
	-- ===删除: 3330706,1
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330706]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330706]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330706]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330706]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330706]["DeleteItem"][1]["Id"] = 3330706 -- 【库】华语玩具收集礼盒[属性:9]
	tChildrenDayToy_Reward[3330706]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330706]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330706]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChildrenDayToy_Reward[3330706]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的晶莹星陨石*3
	tChildrenDayToy_Reward[3330706]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330706]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330706]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330707] = {}
	-- ===英文限定玩具集齐奖励
	-- ===索引: tChildrenDayToy_Reward[3330707]
	-- ===删除: 3330707,1
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330707]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330707]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330707]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330707]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330707]["DeleteItem"][1]["Id"] = 3330707 -- 【库】英语玩具收集礼盒[属性:9]
	tChildrenDayToy_Reward[3330707]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330707]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330707]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildrenDayToy_Reward[3330707]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tChildrenDayToy_Reward[3330707]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330707]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330707]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330708] = {}
	-- ===西语限定玩具集齐奖励
	-- ===索引: tChildrenDayToy_Reward[3330708]
	-- ===删除: 3330708,1
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330708]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330708]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330708]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330708]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330708]["DeleteItem"][1]["Id"] = 3330708 -- 【库】西语玩具收集礼盒[属性:9]
	tChildrenDayToy_Reward[3330708]["RewardRepairValue"] = {}
	tChildrenDayToy_Reward[3330708]["RewardRepairValue"]["Value"] = 15000 -- 修为值, 【需求】修为值
	tChildrenDayToy_Reward[3330708]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330708]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330708]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330709] = {}
	-- ===阿语限定玩具集齐奖励
	-- ===索引: tChildrenDayToy_Reward[3330709]
	-- ===删除: 3330709,1
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330709]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330709]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330709]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330709]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330709]["DeleteItem"][1]["Id"] = 3330709 -- 【库】阿语玩具收集礼盒[属性:9]
	tChildrenDayToy_Reward[3330709]["RewardStrengthValue"] = {}
	tChildrenDayToy_Reward[3330709]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值
	tChildrenDayToy_Reward[3330709]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330709]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330709]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330710] = {}
	-- ===全部集齐奖励
	-- ===索引: tChildrenDayToy_Reward[3330710]
	-- ===删除: 3330710,1
	-- ===NewEMoneyLog: 1000,01772
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330710]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330710]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330710]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330710]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330710]["DeleteItem"][1]["Id"] = 3330710 -- 【库】玩具收藏者礼盒[属性:9]
	tChildrenDayToy_Reward[3330710]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330710]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330710]["RewardItem"][1]["Id"] = 3314243 -- 黄色神纹礼盒[3314243][属性:8][叠加:10000][金币:0], 【表格】黄色神纹礼盒
	tChildrenDayToy_Reward[3330710]["RewardItem"][1]["Attr"] = "0 1 3" -- 蓝色神纹礼盒（赠）*1
	tChildrenDayToy_Reward[3330710]["RewardEMoneyMono"] = {}
	tChildrenDayToy_Reward[3330710]["RewardEMoneyMono"]["Value"] = 666 -- 天石（赠）, 【需求】666天石（赠）
	tChildrenDayToy_Reward[3330710]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1772"
	tChildrenDayToy_Reward[3330710]["RewardTitle"] = {}
	tChildrenDayToy_Reward[3330710]["RewardTitle"]["TitleType"] = 2188 -- 【库】扭蛋王, 【表格】儿童节称号
	tChildrenDayToy_Reward[3330710]["RewardTitle"]["TitleId"] = 2188
	tChildrenDayToy_Reward[3330710]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:扭蛋王, 【需求】儿童节称号
	tChildrenDayToy_Reward[3330710]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330710]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330710]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330711] = {}
	-- ===首个全部集齐的玩家奖励
	-- ===索引: tChildrenDayToy_Reward[3330711]
	-- ===删除: 3330711,1
	-- ===NewEMoneyLog: 1000,01772
	-- ===LogStep:6[3][3]
	tChildrenDayToy_Reward[3330711]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330711]["LogStep"] = "6[3][3]"
	tChildrenDayToy_Reward[3330711]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330711]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330711]["DeleteItem"][1]["Id"] = 3330711 -- 【库】玩具收藏家至尊礼盒[属性:9]
	tChildrenDayToy_Reward[3330711]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330711]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330711]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹礼包
	tChildrenDayToy_Reward[3330711]["RewardItem"][1]["Attr"] = "0 1 3" -- 稀有黄色神纹礼包（赠）*1
	tChildrenDayToy_Reward[3330711]["RewardItem"][2] = {}
	tChildrenDayToy_Reward[3330711]["RewardItem"][2]["Id"] = 3316122 -- 180天儿童节武器外套可选礼包[3316122][属性:9][叠加:0][金币:0], 【表格】儿童节武器
	tChildrenDayToy_Reward[3330711]["RewardItem"][2]["Attr"] = "0 1" -- 180天儿童节武器外套可选礼包*1
	tChildrenDayToy_Reward[3330711]["RewardEMoneyMono"] = {}
	tChildrenDayToy_Reward[3330711]["RewardEMoneyMono"]["Value"] = 666 -- 天石（赠）, 【需求】666天石（赠）
	tChildrenDayToy_Reward[3330711]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1772"
	tChildrenDayToy_Reward[3330711]["RewardTitle"] = {}
	tChildrenDayToy_Reward[3330711]["RewardTitle"]["TitleType"] = 2188 -- 【库】扭蛋王, 【表格】儿童节称号
	tChildrenDayToy_Reward[3330711]["RewardTitle"]["TitleId"] = 2188
	tChildrenDayToy_Reward[3330711]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:扭蛋王, 【需求】儿童节称号
	tChildrenDayToy_Reward[3330711]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330711]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330711]["RewardEffect"]["Effect"] = "angelwing"
	
	tChildrenDayToy_Reward[3330685] = {}
	-- ===取出征服限定1
	-- ===索引: tChildrenDayToy_Reward[3330685]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330685]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330685]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330685]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330685]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330685]["RewardItem"][1]["Id"] = 3330685 -- 征服限定1[3330685][属性:8][叠加:0][金币:0], 【表格】取出征服限定1
	tChildrenDayToy_Reward[3330685]["RewardItem"][1]["Attr"] = "0 1" -- 征服限定1*1
	tChildrenDayToy_Reward[3330685]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330685]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330686] = {}
	-- ===取出征服限定2
	-- ===索引: tChildrenDayToy_Reward[3330686]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330686]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330686]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330686]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330686]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330686]["RewardItem"][1]["Id"] = 3330686 -- 征服限定2[3330686][属性:8][叠加:0][金币:0], 【表格】取出征服限定2
	tChildrenDayToy_Reward[3330686]["RewardItem"][1]["Attr"] = "0 1" -- 征服限定2*1
	tChildrenDayToy_Reward[3330686]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330686]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330686]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330687] = {}
	-- ===取出征服限定3
	-- ===索引: tChildrenDayToy_Reward[3330687]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330687]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330687]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330687]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330687]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330687]["RewardItem"][1]["Id"] = 3330687 -- 征服限定3[3330687][属性:8][叠加:0][金币:0], 【表格】取出征服限定3
	tChildrenDayToy_Reward[3330687]["RewardItem"][1]["Attr"] = "0 1" -- 征服限定3*1
	tChildrenDayToy_Reward[3330687]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330687]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330687]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330688] = {}
	-- ===取出征服限定4
	-- ===索引: tChildrenDayToy_Reward[3330688]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330688]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330688]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330688]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330688]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330688]["RewardItem"][1]["Id"] = 3330688 -- 征服限定4[3330688][属性:8][叠加:0][金币:0], 【表格】取出征服限定4
	tChildrenDayToy_Reward[3330688]["RewardItem"][1]["Attr"] = "0 1" -- 征服限定4*1
	tChildrenDayToy_Reward[3330688]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330688]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330688]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330689] = {}
	-- ===取出华语限定1
	-- ===索引: tChildrenDayToy_Reward[3330689]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330689]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330689]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330689]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330689]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330689]["RewardItem"][1]["Id"] = 3330689 -- 华语限定1[3330689][属性:8][叠加:0][金币:0], 【表格】取出华语限定1
	tChildrenDayToy_Reward[3330689]["RewardItem"][1]["Attr"] = "0 1" -- 华语限定1*1
	tChildrenDayToy_Reward[3330689]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330689]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330689]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330690] = {}
	-- ===取出华语限定2
	-- ===索引: tChildrenDayToy_Reward[3330690]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330690]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330690]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330690]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330690]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330690]["RewardItem"][1]["Id"] = 3330690 -- 华语限定2[3330690][属性:8][叠加:0][金币:0], 【表格】取出华语限定2
	tChildrenDayToy_Reward[3330690]["RewardItem"][1]["Attr"] = "0 1" -- 华语限定2*1
	tChildrenDayToy_Reward[3330690]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330690]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330690]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330691] = {}
	-- ===取出华语限定3
	-- ===索引: tChildrenDayToy_Reward[3330691]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330691]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330691]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330691]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330691]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330691]["RewardItem"][1]["Id"] = 3330691 -- 华语限定3[3330691][属性:8][叠加:0][金币:0], 【表格】取出华语限定3
	tChildrenDayToy_Reward[3330691]["RewardItem"][1]["Attr"] = "0 1" -- 华语限定3*1
	tChildrenDayToy_Reward[3330691]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330691]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330691]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330692] = {}
	-- ===取出华语限定4
	-- ===索引: tChildrenDayToy_Reward[3330692]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330692]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330692]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330692]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330692]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330692]["RewardItem"][1]["Id"] = 3330692 -- 华语限定4[3330692][属性:8][叠加:0][金币:0], 【表格】取出华语限定4
	tChildrenDayToy_Reward[3330692]["RewardItem"][1]["Attr"] = "0 1" -- 华语限定4*1
	tChildrenDayToy_Reward[3330692]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330692]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330692]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330693] = {}
	-- ===取出英语限定1
	-- ===索引: tChildrenDayToy_Reward[3330693]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330693]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330693]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330693]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330693]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330693]["RewardItem"][1]["Id"] = 3330693 -- 英语限定1[3330693][属性:8][叠加:0][金币:0], 【表格】取出英语限定1
	tChildrenDayToy_Reward[3330693]["RewardItem"][1]["Attr"] = "0 1" -- 英语限定1*1
	tChildrenDayToy_Reward[3330693]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330693]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330693]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330694] = {}
	-- ===取出英语限定2
	-- ===索引: tChildrenDayToy_Reward[3330694]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330694]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330694]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330694]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330694]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330694]["RewardItem"][1]["Id"] = 3330694 -- 英语限定2[3330694][属性:8][叠加:0][金币:0], 【表格】取出英语限定2
	tChildrenDayToy_Reward[3330694]["RewardItem"][1]["Attr"] = "0 1" -- 英语限定2*1
	tChildrenDayToy_Reward[3330694]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330694]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330694]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330695] = {}
	-- ===取出英语限定3
	-- ===索引: tChildrenDayToy_Reward[3330695]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330695]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330695]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330695]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330695]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330695]["RewardItem"][1]["Id"] = 3330695 -- 英语限定3[3330695][属性:8][叠加:0][金币:0], 【表格】取出英语限定3
	tChildrenDayToy_Reward[3330695]["RewardItem"][1]["Attr"] = "0 1" -- 英语限定3*1
	tChildrenDayToy_Reward[3330695]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330695]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330695]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330696] = {}
	-- ===取出英语限定4
	-- ===索引: tChildrenDayToy_Reward[3330696]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330696]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330696]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330696]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330696]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330696]["RewardItem"][1]["Id"] = 3330696 -- 英语限定4[3330696][属性:8][叠加:0][金币:0], 【表格】取出英语限定4
	tChildrenDayToy_Reward[3330696]["RewardItem"][1]["Attr"] = "0 1" -- 英语限定4*1
	tChildrenDayToy_Reward[3330696]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330696]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330696]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330697] = {}
	-- ===取出西语限定1
	-- ===索引: tChildrenDayToy_Reward[3330697]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330697]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330697]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330697]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330697]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330697]["RewardItem"][1]["Id"] = 3330697 -- 西语限定1[3330697][属性:8][叠加:0][金币:0], 【表格】取出西语限定1
	tChildrenDayToy_Reward[3330697]["RewardItem"][1]["Attr"] = "0 1" -- 西语限定1*1
	tChildrenDayToy_Reward[3330697]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330697]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330697]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330698] = {}
	-- ===取出西语限定2
	-- ===索引: tChildrenDayToy_Reward[3330698]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330698]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330698]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330698]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330698]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330698]["RewardItem"][1]["Id"] = 3330698 -- 西语限定2[3330698][属性:8][叠加:0][金币:0], 【表格】取出西语限定2
	tChildrenDayToy_Reward[3330698]["RewardItem"][1]["Attr"] = "0 1" -- 西语限定2*1
	tChildrenDayToy_Reward[3330698]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330698]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330698]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330699] = {}
	-- ===取出西语限定3
	-- ===索引: tChildrenDayToy_Reward[3330699]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330699]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330699]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330699]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330699]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330699]["RewardItem"][1]["Id"] = 3330699 -- 西语限定3[3330699][属性:8][叠加:0][金币:0], 【表格】取出西语限定3
	tChildrenDayToy_Reward[3330699]["RewardItem"][1]["Attr"] = "0 1" -- 西语限定3*1
	tChildrenDayToy_Reward[3330699]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330699]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330699]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330700] = {}
	-- ===取出西语限定4
	-- ===索引: tChildrenDayToy_Reward[3330700]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330700]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330700]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330700]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330700]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330700]["RewardItem"][1]["Id"] = 3330700 -- 西语限定4[3330700][属性:8][叠加:0][金币:0], 【表格】取出西语限定4
	tChildrenDayToy_Reward[3330700]["RewardItem"][1]["Attr"] = "0 1" -- 西语限定4*1
	tChildrenDayToy_Reward[3330700]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330700]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330700]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330701] = {}
	-- ===取出阿语限定1
	-- ===索引: tChildrenDayToy_Reward[3330701]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330701]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330701]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330701]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330701]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330701]["RewardItem"][1]["Id"] = 3330701 -- 阿语限定1[3330701][属性:8][叠加:0][金币:0], 【表格】取出阿语限定1
	tChildrenDayToy_Reward[3330701]["RewardItem"][1]["Attr"] = "0 1" -- 阿语限定1*1
	tChildrenDayToy_Reward[3330701]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330701]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330701]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330702] = {}
	-- ===取出阿语限定2
	-- ===索引: tChildrenDayToy_Reward[3330702]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330702]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330702]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330702]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330702]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330702]["RewardItem"][1]["Id"] = 3330702 -- 阿语限定2[3330702][属性:8][叠加:0][金币:0], 【表格】取出阿语限定2
	tChildrenDayToy_Reward[3330702]["RewardItem"][1]["Attr"] = "0 1" -- 阿语限定2*1
	tChildrenDayToy_Reward[3330702]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330702]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330702]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330703] = {}
	-- ===取出阿语限定3
	-- ===索引: tChildrenDayToy_Reward[3330703]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330703]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330703]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330703]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330703]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330703]["RewardItem"][1]["Id"] = 3330703 -- 阿语限定3[3330703][属性:8][叠加:0][金币:0], 【表格】取出阿语限定3
	tChildrenDayToy_Reward[3330703]["RewardItem"][1]["Attr"] = "0 1" -- 阿语限定3*1
	tChildrenDayToy_Reward[3330703]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330703]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330703]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330704] = {}
	-- ===取出阿语限定4
	-- ===索引: tChildrenDayToy_Reward[3330704]
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330704]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330704]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330704]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330704]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330704]["RewardItem"][1]["Id"] = 3330704 -- 阿语限定4[3330704][属性:8][叠加:0][金币:0], 【表格】取出阿语限定4
	tChildrenDayToy_Reward[3330704]["RewardItem"][1]["Attr"] = "0 1" -- 阿语限定4*1
	tChildrenDayToy_Reward[3330704]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330704]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330704]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330749] = {}
	-- ===7天儿童节武器外套可选包
	-- ===索引: tChildrenDayToy_Reward[3330749][1]
	-- ===删除: 3330749,1
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330749][1] = {}
	tChildrenDayToy_Reward[3330749][1]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330749][1]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330749][1]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330749][1]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330749][1]["DeleteItem"][1]["Id"] = 3330749 -- 【库】7天儿童节武器外套可选礼包[属性:9]
	tChildrenDayToy_Reward[3330749][1]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330749][1]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330749][1]["RewardItem"][1]["Id"] = 350175 -- 儿童节武器[350175][属性:0][叠加:0][金币:0], 【表格】1件7天长武器
	tChildrenDayToy_Reward[3330749][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1 0 0 1" -- 7天时效(激活)的1%神佑儿童节武器*1
	tChildrenDayToy_Reward[3330749][1]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330749][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330749][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward[3330749][2] = {}
	-- ===7天儿童节武器外套可选包
	-- ===索引: tChildrenDayToy_Reward[3330749][2]
	-- ===删除: 3330749,1
	-- ===LogStep:6[3][2]
	tChildrenDayToy_Reward[3330749][2]["LogId"] = 12001963
	tChildrenDayToy_Reward[3330749][2]["LogStep"] = "6[3][2]"
	tChildrenDayToy_Reward[3330749][2]["DeleteItem"] = {}
	tChildrenDayToy_Reward[3330749][2]["DeleteItem"][1] = {}
	tChildrenDayToy_Reward[3330749][2]["DeleteItem"][1]["Id"] = 3330749 -- 【库】7天儿童节武器外套可选礼包[属性:9]
	tChildrenDayToy_Reward[3330749][2]["RewardItem"] = {}
	tChildrenDayToy_Reward[3330749][2]["RewardItem"][1] = {}
	tChildrenDayToy_Reward[3330749][2]["RewardItem"][1]["Id"] = 360312 -- 儿童节武器[360312][属性:0][叠加:0][金币:0], 【表格】2件7天短武器
	tChildrenDayToy_Reward[3330749][2]["RewardItem"][1]["Attr"] = "0 2 0 10080 1 0 0 1" -- 7天时效(激活)的1%神佑儿童节武器*2
	tChildrenDayToy_Reward[3330749][2]["RewardEffect"] = {}
	tChildrenDayToy_Reward[3330749][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward[3330749][2]["RewardEffect"]["Effect"] = "angelwing"


	

	tChildrenDayToy_Reward["Collect"] = {}
	-- ===领取征服玩具收集礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][1]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][1] = {}
	tChildrenDayToy_Reward["Collect"][1]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][1]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][1]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][1]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][1]["RewardItem"][1]["Id"] = 3330705 -- 征服玩具收集礼盒[3330705][属性:9][叠加:0][金币:0], 【表格】征服玩具收集礼盒
	tChildrenDayToy_Reward["Collect"][1]["RewardItem"][1]["Attr"] = "0 1" -- 征服玩具收集礼盒*1
	tChildrenDayToy_Reward["Collect"][1]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Collect"][2] = {}
	-- ===领取华语玩具收集礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][2]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][2]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][2]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][2]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][2]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][2]["RewardItem"][1]["Id"] = 3330706 -- 华语玩具收集礼盒[3330706][属性:9][叠加:0][金币:0], 【表格】华语玩具收集礼盒
	tChildrenDayToy_Reward["Collect"][2]["RewardItem"][1]["Attr"] = "0 1" -- 华语玩具收集礼盒*1
	tChildrenDayToy_Reward["Collect"][2]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Collect"][3] = {}
	-- ===领取英语玩具收集礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][3]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][3]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][3]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][3]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][3]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][3]["RewardItem"][1]["Id"] = 3330707 -- 英语玩具收集礼盒[3330707][属性:9][叠加:0][金币:0], 【表格】英语玩具收集礼盒
	tChildrenDayToy_Reward["Collect"][3]["RewardItem"][1]["Attr"] = "0 1" -- 英语玩具收集礼盒*1
	tChildrenDayToy_Reward["Collect"][3]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][3]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Collect"][4] = {}
	-- ===领取西语玩具收集礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][4]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][4]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][4]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][4]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][4]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][4]["RewardItem"][1]["Id"] = 3330708 -- 西语玩具收集礼盒[3330708][属性:9][叠加:0][金币:0], 【表格】西语玩具收集礼盒
	tChildrenDayToy_Reward["Collect"][4]["RewardItem"][1]["Attr"] = "0 1" -- 西语玩具收集礼盒*1
	tChildrenDayToy_Reward["Collect"][4]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][4]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Collect"][5] = {}
	-- ===领取阿语玩具收集礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][5]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][5]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][5]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][5]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][5]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][5]["RewardItem"][1]["Id"] = 3330709 -- 阿语玩具收集礼盒[3330709][属性:9][叠加:0][金币:0], 【表格】阿语玩具收集礼盒
	tChildrenDayToy_Reward["Collect"][5]["RewardItem"][1]["Attr"] = "0 1" -- 阿语玩具收集礼盒*1
	tChildrenDayToy_Reward["Collect"][5]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][5]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Collect"][6] = {}
	-- ===领取玩具收藏者礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][6]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][6]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][6]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][6]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][6]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][6]["RewardItem"][1]["Id"] = 3330710 -- 玩具收藏者礼盒[3330710][属性:9][叠加:0][金币:0], 【表格】玩具收藏者礼盒
	tChildrenDayToy_Reward["Collect"][6]["RewardItem"][1]["Attr"] = "0 1" -- 玩具收藏者礼盒*1
	tChildrenDayToy_Reward["Collect"][6]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][6]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["Collect"][7] = {}
	-- ===领取玩具收藏家至尊礼盒
	-- ===索引: tChildrenDayToy_Reward["Collect"][7]
	-- ===LogStep:6[3][4]
	tChildrenDayToy_Reward["Collect"][7]["LogId"] = 12001963
	tChildrenDayToy_Reward["Collect"][7]["LogStep"] = "6[3][4]"
	tChildrenDayToy_Reward["Collect"][7]["RewardItem"] = {}
	tChildrenDayToy_Reward["Collect"][7]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["Collect"][7]["RewardItem"][1]["Id"] = 3330711 -- 玩具收藏家至尊礼盒[3330711][属性:9][叠加:0][金币:0], 【表格】玩具收藏家至尊礼盒
	tChildrenDayToy_Reward["Collect"][7]["RewardItem"][1]["Attr"] = "0 1" -- 玩具收藏家至尊礼盒*1
	tChildrenDayToy_Reward["Collect"][7]["RewardEffect"] = {}
	tChildrenDayToy_Reward["Collect"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["Collect"][7]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayToy_Reward["ToysBox"] = {}
	-- ===领取玩具箱
	-- ===索引: tChildrenDayToy_Reward["ToysBox"]
	-- ===LogStep:6[3][5]
	tChildrenDayToy_Reward["ToysBox"]["LogId"] = 12001963
	tChildrenDayToy_Reward["ToysBox"]["LogStep"] = "6[3][5]"
	tChildrenDayToy_Reward["ToysBox"]["RewardItem"] = {}
	tChildrenDayToy_Reward["ToysBox"]["RewardItem"][1] = {}
	tChildrenDayToy_Reward["ToysBox"]["RewardItem"][1]["Id"] = 3330712 -- 童趣玩具箱[3330712][属性:9][叠加:0][金币:0], 【表格】童趣玩具箱
	tChildrenDayToy_Reward["ToysBox"]["RewardItem"][1]["Attr"] = "0 1" -- 童趣玩具箱*1
	tChildrenDayToy_Reward["ToysBox"]["RewardEffect"] = {}
	tChildrenDayToy_Reward["ToysBox"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayToy_Reward["ToysBox"]["RewardEffect"]["Effect"] = "angelwing"

	
	
----------------------------------逻辑部分---------------------------------------------
-- 判断玩具是否已经寄出或已经寄回
function ChildrenDayToy_JudgeToys(nChildrenDayToy_NpcId)	
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[7]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[7]["TypeData"]
	
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tChildrenDayToy_Cont["Level"], tChildrenDayToy_Cont["Metempsychosis"], nChildrenDayToy_UserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoLevelGet"], nil, nil, nChildrenDayToy_UserId)
		return
	end
	
	--判断隔天可以领取回礼了
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_UserId) then
		--判断掩码是否有值，有值则回礼
		if Task_ChkStcValue(nChildrenDayToy_Event, nChildrenDayToy_Type, ">", 0) then
			--邮件给玩家发之前交换的物品
			ChildrenDayToy_MailToys()
			LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-5")
			return
		end
	elseif Task_ChkStcValue(nChildrenDayToy_Event, nChildrenDayToy_Type, ">", 0) then
		-- 没到寄出去的第二天
		LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-2")
		return
	end
	--判断背包里是否有玩具
	local nChildrenDayToy_Num = 0
	for i=1,5 do
		for j=1,4 do
			local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			-- 如果背包里和玩具箱中都没有玩具
			if nChildrenDayToy_Data >= 1 or Item_ChkItem(tChildrenDayToy_Stc[i][j]["ItemId"]) then
				nChildrenDayToy_Num = nChildrenDayToy_Num + 1 
			end
		end
	end
	if nChildrenDayToy_Num == 0 then
		LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "2-2")
end	
-- 寄售玩具
function ChildrenDayToy_ConsignmentToys(nChildrenDayToy_NpcId,nChildrenDayToy_Index)	
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[7]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[7]["TypeData"]
	local nChildrenDayToy_ItemId = tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index]
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tChildrenDayToy_Cont["Level"], tChildrenDayToy_Cont["Metempsychosis"], nChildrenDayToy_UserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoLevelGet"], nil, nil, nChildrenDayToy_UserId)
		return
	end
	-- 判断是否有该玩具
	local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,1)
	if (not Item_ChkItem(tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index])) and not (nChildrenDayToy_Data >= 1) then
		LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-4")
		return
	end
	
	
	tNpcGossip[nChildrenDayToy_NpcId]["Text132"] = string.format(tChildrenDayToy_Text[26477]["Text132"],tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ItemId])
	tNpcGossip[nChildrenDayToy_NpcId]["OptionFunc131"]=string.format("ChildrenDayToy_ExchangeToys</N>%d</N>%d",nChildrenDayToy_NpcId,nChildrenDayToy_Index)
	
	LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-3")
end
-- 二次确认寄售玩具
function ChildrenDayToy_ExchangeToys(nChildrenDayToy_NpcId,nChildrenDayToy_Index)	
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[7]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[7]["TypeData"]
	local nChildrenDayToy_ItemId = tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index]
	local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,1)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	-- 判断是否有该玩具
	if Item_ChkItem(tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index]) and Item_DelItem(tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index]) then
		local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["ConsignmentToys"],tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index])
		Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		if Task_SetStatistic(nChildrenDayToy_Event, nChildrenDayToy_Type, nChildrenDayToy_Index, 1) then
			--播放光效
			User_EffectAdd("self",tChildrenDayToy_Cont["TaskEffect"])
			Task_SetStcTimestamp(nChildrenDayToy_Event, nChildrenDayToy_Type, 0)
			LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-6")
			return
		end
		
	elseif nChildrenDayToy_Data >= 1 then
		ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_Data-1,nChildrenDayToy_UserId,1)
		local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["ConsignmentToys"],tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Index])
		Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		if Task_SetStatistic(nChildrenDayToy_Event, nChildrenDayToy_Type, nChildrenDayToy_Index, 1) then
			--播放光效
			User_EffectAdd("self",tChildrenDayToy_Cont["TaskEffect"])
			Task_SetStcTimestamp(nChildrenDayToy_Event, nChildrenDayToy_Type, 0)
			LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-6")
			return
		end
	else
		--没有该物品
		LinkNpcGossipFunc_New(nChildrenDayToy_NpcId, "1-4")
		return
	end
	
end
-- 第二天寄邮件获得回礼的玩具
function ChildrenDayToy_MailToys()	
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[7]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[7]["TypeData"]
	
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	--判断隔天可以领取回礼了
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_UserId) then
		--判断掩码是否有值，有值则回礼
		if Task_ChkStcValue(nChildrenDayToy_Event, nChildrenDayToy_Type, ">", 0) then
			local nChildrenDayToy_Num = math.random(1,20)
			
			
			local nChildrenDayToy_Date = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_UserId)
			-- 如果奖励重复，顺延为下一个奖励id
			if nChildrenDayToy_Date == nChildrenDayToy_Num then
				nChildrenDayToy_Num = (nChildrenDayToy_Num + 1)%20
			end
			-- 判断玩家是否有没有得到的玩具，如果有则固定发送该玩具
			for i = 1,20 do
				local nChildrenDayToy_ItemId = tChildrenDayToy_Cont["Toy"][i]
				local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,1)
	
				if not Item_ChkItem(nChildrenDayToy_ItemId) then
					nChildrenDayToy_Num = i
					break
				end
				if not(nChildrenDayToy_Data >= 1) then
					nChildrenDayToy_Num = i
					break
				end
			end
			
			local nChildrenDayToy_ActionId = tChildrenDayToy_Cont["Mail"][nChildrenDayToy_Num]
			local sChildrenDayToy_LetterSender = tChildrenDayToy_Text["Mail"]["LetterSender"]
			local sChildrenDayToy_LetterTitle = tChildrenDayToy_Text["Mail"]["LetterTitle"]
			local nChildrenDayToy_ItemId1 = tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Date]
			local nChildrenDayToy_ItemId2 = tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Num]
			local sChildrenDayToy_ItemName1 = tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ItemId1]
			local sChildrenDayToy_ItemName2 = tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ItemId2]
			local sChildrenDayToy_Content = string.format(tChildrenDayToy_Text["Mail"]["Content"],sChildrenDayToy_ItemName1,sChildrenDayToy_ItemName2)
		--打掩码 发邮件给奖励
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_UserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_UserId)
		Sys_SendMail(nChildrenDayToy_UserId,0,0,nChildrenDayToy_ActionId,0,30,sChildrenDayToy_LetterSender,sChildrenDayToy_LetterTitle,sChildrenDayToy_Content)
			return
		end
	end
end
--上线自动接儿童节任务引导  
function ChildrenDayToy_Login()
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_TaskId = tChildrenDayToy_Cont["TaskId"]
	local nChildrenDayToy_Level = tChildrenDayToy_Cont["Level"]
	local nChildrenDayToy_Metempsychosis = tChildrenDayToy_Cont["Metempsychosis"]

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		if Task_ChkTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_UserId) then
			Task_DelTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_UserId)
		end
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nChildrenDayToy_Level,nChildrenDayToy_Metempsychosis,nChildrenDayToy_UserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_UserId) then
		Task_AddTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_UserId)
	end
	
	-- 第二天寄邮件获得回礼的玩具
	ChildrenDayToy_MailToys()
	
end

--任务完成接口
function ChildrenDayToy_TaskComplete()
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_TaskId = tChildrenDayToy_Cont["TaskId"]


	--判断是否接受任务
	if not Task_ChkTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_UserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nChildrenDayToy_TaskId,"CompleteFlag",">=",1,nChildrenDayToy_UserId) then
		return
	end
	-- 完成任务
	Task_SetTaskDetailCompleteFlag(nChildrenDayToy_TaskId,1, nChildrenDayToy_UserId)
	--播放光效
	User_EffectAdd("self",tChildrenDayToy_Cont["TaskEffect"])
end
-- 互动选项  猜拳
function ChildrenDayToy_Choose(nChildrenDayToy_SelfUserId, nChildrenDayToy_TargetUserId, nChildrenDayToy_MainType, nChildrenDayToy_SubType)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChildrenDayToy_Cont["Level"], tChildrenDayToy_Cont["Metempsychosis"], nChildrenDayToy_SelfUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoLevel"] , nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoLevel"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tChildrenDayToy_Cont["Level"], tChildrenDayToy_Cont["Metempsychosis"], nChildrenDayToy_TargetUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoLevel"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoLevel"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	
	
	
	-- local nChildrenDayToy_TaskId = tChildrenDayToy_Cont["TaskId"]
	--检测任务是否存在,没有则加上
	-- if not Task_ChkTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_SelfUserId) then
		-- Task_AddTaskDetail(nChildrenDayToy_TaskId,0,nChildrenDayToy_SelfUserId)
	-- end
	-- if not Task_ChkTaskDetail(nChildrenDayToy_TaskId,nChildrenDayToy_Target) then
		-- Task_AddTaskDetail(nChildrenDayToy_TaskId,0,nChildrenDayToy_Target)
	-- end
	
	
	-- 选择布
	if nChildrenDayToy_SubType == 1 then
		ChildrenDayToy_ChooseCloth(nChildrenDayToy_SelfUserId, nChildrenDayToy_TargetUserId)
	end
	
	-- 选择剪刀
	if nChildrenDayToy_SubType == 2 then
		ChildrenDayToy_ChooseScissors(nChildrenDayToy_SelfUserId, nChildrenDayToy_TargetUserId)
	end
end
-- 选择布
function ChildrenDayToy_ChooseCloth(nChildrenDayToy_SelfUserId, nChildrenDayToy_TargetUserId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	--判断是否有斗蛋
	if not Item_ChkItem(tChildrenDayToy_Cont["Doudan"],0,0,nChildrenDayToy_SelfUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoDoudan"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoDoudan"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	if not Item_ChkItem(tChildrenDayToy_Cont["Doudan"],0,0,nChildrenDayToy_TargetUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoDoudan"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoDoudan"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	-- 发起方背包空间不足
	if not User_CheckLeftSpace(1,nChildrenDayToy_SelfUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoSpace"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoSp"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	
	-- 选择方背包空间不足
	if not User_CheckLeftSpace(1,nChildrenDayToy_TargetUserId) then
		Sys_MsgBox(tChildrenDayToy_2019_Text["NoSpace"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_2019_Text["OtherNoSp"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	
	-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的需要隔天重置的数值修改
	-- local nChildrenDayToy_TaskId = tChildrenDayToy_Cont["TaskId"]
	-- local nChildrenDayToy_SelfDayMark = Get_TaskDetailData6(nChildrenDayToy_TaskId, nChildrenDayToy_SelfUserId)
	-- if nChildrenDayToy_DayMark == 0 then
		-- Task_SetTaskDetailData4(nChildrenDayToy_TaskId, 0, nChildrenDayToy_SelfUserId)
		-- Task_SetTaskDetailData6(nChildrenDayToy_TaskId, 1, nChildrenDayToy_SelfUserId)
	-- end
	-- local nChildrenDayToy_TargetDayMark = Get_TaskDetailData6(nChildrenDayToy_TaskId, nChildrenDayToy_TargetUserId)
	-- if nChildrenDayToy_DayMark == 0 then
		-- Task_SetTaskDetailData4(nChildrenDayToy_TaskId, 0, nChildrenDayToy_TargetUserId)
		-- Task_SetTaskDetailData6(nChildrenDayToy_TaskId, 1, nChildrenDayToy_TargetUserId)
	-- end
	
	-- 获胜次数隔天判断
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[9]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[9]["TypeData"]
	--隔天
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_SelfUserId) then
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_SelfUserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_SelfUserId)
	end
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_TargetUserId) then
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_TargetUserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_TargetUserId)
	end
	
	--获胜达到上限10次
	local nChildrenDayToy_SelfSuccessNum = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_SelfUserId) or 0
	local nChildrenDayToy_TargetSuccessNum = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_TargetUserId) or 0
	if nChildrenDayToy_SelfSuccessNum >= 10 then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["SuccessLimit"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherSuccessLimit"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	if nChildrenDayToy_TargetSuccessNum >= 10 then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["SuccessLimit"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherSuccessLimit"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	
	-- 随机自己出什么 1为石头 2为剪刀 3为布
	local nChildrenDayToy_Num = math.random(1,3)
	if nChildrenDayToy_Num == 1 then
		--发起者为石头，选择者为布，选择者获胜
		-- 获得光效
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Success"],nChildrenDayToy_SelfUserId)
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_TargetUserId)
		
		-- 获胜者打掩码，获得奖励
		if Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_SelfSuccessNum + 1,1,nChildrenDayToy_SelfUserId) then
			Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_SelfUserId)
			RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Success"], nChildrenDayToy_SelfUserId)
		end
		--失败者消耗斗蛋
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Fail"], nChildrenDayToy_TargetUserId)
		-- local SChildrenDayToy_SelfMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["FailTip"],tChildrenDayToy_Text["Doudan"][3],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["Fail"])
		-- local SChildrenDayToy_TargetMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["SuccessTip"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["SuccessTip2"],tChildrenDayToy_Text["Doudan"][3],tChildrenDayToy_Text["Doudan"]["Success"])
		-- Sys_MsgBox(SChildrenDayToy_SelfMsg, nil, nil, nChildrenDayToy_TargetUserId)
		-- Sys_MsgBox(SChildrenDayToy_TargetMsg, nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewFail"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewSuccess"], nil, nil, nChildrenDayToy_SelfUserId)
		
	elseif nChildrenDayToy_Num == 2 then
		--发起者为剪刀，选择者为布，发起者获胜
		-- 获得光效
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Success"],nChildrenDayToy_TargetUserId)
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_SelfUserId)
		
		-- 获胜者打掩码，获得奖励
		if Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_TargetSuccessNum + 1,1,nChildrenDayToy_TargetUserId) then
			Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_TargetUserId)
			RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Success"], nChildrenDayToy_TargetUserId)
		end
		--失败者消耗斗蛋
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Fail"], nChildrenDayToy_SelfUserId)
		-- local SChildrenDayToy_SelfMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["SuccessTip"],tChildrenDayToy_Text["Doudan"][3],tChildrenDayToy_Text["Doudan"]["SuccessTip2"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["Success"])
		-- local SChildrenDayToy_TargetMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["FailTip"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][3],tChildrenDayToy_Text["Doudan"]["Fail"])
		-- Sys_MsgBox(SChildrenDayToy_SelfMsg, nil, nil, nChildrenDayToy_TargetUserId)
		-- Sys_MsgBox(SChildrenDayToy_TargetMsg, nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewSuccess"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewFail"], nil, nil, nChildrenDayToy_SelfUserId)
		
	else
		-- 双方都为布，平局
		-- 获得光效
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_SelfUserId)
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_TargetUserId)
		--平局消耗斗蛋获得气力值
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Draw"], nChildrenDayToy_SelfUserId)
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Draw"], nChildrenDayToy_TargetUserId)
		-- local SChildrenDayToy_SelfMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["DrawTip"],tChildrenDayToy_Text["Doudan"][3],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["Draw"])
		-- local SChildrenDayToy_TargetMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["DrawTip"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][3],tChildrenDayToy_Text["Doudan"]["Draw"])
		-- Sys_MsgBox(SChildrenDayToy_SelfMsg, nil, nil, nChildrenDayToy_SelfUserId)
		-- Sys_MsgBox(SChildrenDayToy_TargetMsg, nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewDraw"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewDraw"], nil, nil, nChildrenDayToy_TargetUserId)
	end
end
-- 选择剪刀
function ChildrenDayToy_ChooseScissors(nChildrenDayToy_SelfUserId, nChildrenDayToy_TargetUserId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	--判断是否有斗蛋
	if not Item_ChkItem(tChildrenDayToy_Cont["Doudan"],0,0,nChildrenDayToy_SelfUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoDoudan"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoDoudan"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	if not Item_ChkItem(tChildrenDayToy_Cont["Doudan"],0,0,nChildrenDayToy_TargetUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoDoudan"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoDoudan"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	-- 发起方背包空间不足
	if not User_CheckLeftSpace(1,nChildrenDayToy_SelfUserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoSpace"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherNoSp"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	
	-- 选择方背包空间不足
	if not User_CheckLeftSpace(1,nChildrenDayToy_TargetUserId) then
		Sys_MsgBox(tChildrenDayToy_2019_Text["NoSpace"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_2019_Text["OtherNoSp"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	
	-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的需要隔天重置的数值修改
	-- local nChildrenDayToy_TaskId = tChildrenDayToy_Cont["TaskId"]
	-- local nChildrenDayToy_SelfDayMark = Get_TaskDetailData6(nChildrenDayToy_TaskId, nChildrenDayToy_SelfUserId)
	-- if nChildrenDayToy_DayMark == 0 then
		-- Task_SetTaskDetailData4(nChildrenDayToy_TaskId, 0, nChildrenDayToy_SelfUserId)
		-- Task_SetTaskDetailData6(nChildrenDayToy_TaskId, 1, nChildrenDayToy_SelfUserId)
	-- end
	-- local nChildrenDayToy_TargetDayMark = Get_TaskDetailData6(nChildrenDayToy_TaskId, nChildrenDayToy_TargetUserId)
	-- if nChildrenDayToy_DayMark == 0 then
		-- Task_SetTaskDetailData4(nChildrenDayToy_TaskId, 0, nChildrenDayToy_TargetUserId)
		-- Task_SetTaskDetailData6(nChildrenDayToy_TaskId, 1, nChildrenDayToy_TargetUserId)
	-- end
	
	-- 获胜次数隔天判断
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[9]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[9]["TypeData"]
	--隔天
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_SelfUserId) then
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_SelfUserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_SelfUserId)
	end
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_TargetUserId) then
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_TargetUserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_TargetUserId)
	end
	
	--获胜达到上限10次
	local nChildrenDayToy_SelfSuccessNum = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_SelfUserId) or 0
	local nChildrenDayToy_TargetSuccessNum = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_TargetUserId) or 0
	if nChildrenDayToy_SelfSuccessNum >= 10 then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["SuccessLimit"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherSuccessLimit"], nil, nil, nChildrenDayToy_TargetUserId)
		return
	end
	if nChildrenDayToy_TargetSuccessNum >= 10 then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["SuccessLimit"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["OtherSuccessLimit"], nil, nil, nChildrenDayToy_SelfUserId)
		return
	end
	
	-- 随机自己出什么 1为石头 2为剪刀 3为布
	local nChildrenDayToy_Num = math.random(1,3)
	if nChildrenDayToy_Num == 3 then
		--发起者为布，选择者为剪刀，选择者获胜
		-- 获得光效
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Success"],nChildrenDayToy_SelfUserId)
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_TargetUserId)
		-- 获胜者打掩码，获得奖励
		if Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_SelfSuccessNum + 1,1,nChildrenDayToy_SelfUserId) then
			Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_SelfUserId)
			RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Success"], nChildrenDayToy_SelfUserId)
		end
		--失败者消耗斗蛋
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Fail"], nChildrenDayToy_TargetUserId)
		-- local SChildrenDayToy_SelfMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["FailTip"],tChildrenDayToy_Text["Doudan"][2],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["Fail"])
		-- local SChildrenDayToy_TargetMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["SuccessTip"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["SuccessTip2"],tChildrenDayToy_Text["Doudan"][2],tChildrenDayToy_Text["Doudan"]["Success"])
		-- Sys_MsgBox(SChildrenDayToy_SelfMsg, nil, nil, nChildrenDayToy_TargetUserId)
		-- Sys_MsgBox(SChildrenDayToy_TargetMsg, nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewFail"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewSuccess"], nil, nil, nChildrenDayToy_SelfUserId)
		
	elseif nChildrenDayToy_Num == 1 then
		--发起者为石头，选择者为剪刀，发起者获胜
		-- 获得光效
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Success"],nChildrenDayToy_TargetUserId)
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_SelfUserId)
		-- 获胜者打掩码，获得奖励
		if Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_TargetSuccessNum + 1,1,nChildrenDayToy_TargetUserId) then
			Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_TargetUserId)
			RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Success"], nChildrenDayToy_TargetUserId)
		end
		
		--失败者消耗斗蛋
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Fail"], nChildrenDayToy_SelfUserId)
		-- local SChildrenDayToy_SelfMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["SuccessTip"],tChildrenDayToy_Text["Doudan"][2],tChildrenDayToy_Text["Doudan"]["SuccessTip2"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["Success"])
		-- local SChildrenDayToy_TargetMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["FailTip"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][2],tChildrenDayToy_Text["Doudan"]["Fail"])
		-- Sys_MsgBox(SChildrenDayToy_SelfMsg, nil, nil, nChildrenDayToy_TargetUserId)
		-- Sys_MsgBox(SChildrenDayToy_TargetMsg, nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewSuccess"], nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewFail"], nil, nil, nChildrenDayToy_SelfUserId)
	else
		-- 双方都为布，平局
		-- 获得光效
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_SelfUserId)
		User_EffectAdd("self",tChildrenDayToy_Cont["Effect"]["Failure"],nChildrenDayToy_TargetUserId)
		--平局消耗斗蛋获得气力值
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Draw"], nChildrenDayToy_SelfUserId)
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Draw"], nChildrenDayToy_TargetUserId)
		-- local SChildrenDayToy_SelfMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["DrawTip"],tChildrenDayToy_Text["Doudan"][2],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["Draw"])
		-- local SChildrenDayToy_TargetMsg = string.format(tChildrenDayToy_Text["Doudan"]["Msg"],tChildrenDayToy_Text["Doudan"]["DrawTip"],tChildrenDayToy_Text["Doudan"][nChildrenDayToy_Num],tChildrenDayToy_Text["Doudan"]["FailTip2"],tChildrenDayToy_Text["Doudan"][2],tChildrenDayToy_Text["Doudan"]["Draw"])
		-- Sys_MsgBox(SChildrenDayToy_SelfMsg, nil, nil, nChildrenDayToy_SelfUserId)
		-- Sys_MsgBox(SChildrenDayToy_TargetMsg, nil, nil, nChildrenDayToy_TargetUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewDraw"], nil, nil, nChildrenDayToy_SelfUserId)
		Sys_MsgBox(tChildrenDayToy_Text["Doudan"]["NewDraw"], nil, nil, nChildrenDayToy_TargetUserId)
	end
end
-- 每日领斗蛋
function ChildrenDayToy_RewardDoudan()
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[8]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[8]["TypeData"]
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tChildrenDayToy_Cont["Level"], tChildrenDayToy_Cont["Metempsychosis"], nChildrenDayToy_UserId) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoLevelGet"], nil, nil, nChildrenDayToy_UserId)
		return
	end
	--隔天
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_UserId) then
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_UserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_UserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nChildrenDayToy_Event, nChildrenDayToy_Type, ">", 0) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["AlreadyGet"], nil, nil, nChildrenDayToy_UserId)
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],1)
		Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
		return
	end
	
	if Task_SetStatistic(nChildrenDayToy_Event, nChildrenDayToy_Type, 1, 1) then
		Task_SetStcTimestamp(nChildrenDayToy_Event, nChildrenDayToy_Type, 0)
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Doudan"])
		--播放光效
		User_EffectAdd("self",tChildrenDayToy_Cont["TaskEffect"])
		local sChildrenDayToy_FailFunc = "ChildrenDayToy_PlayOtherGame</N>"..nChildrenDayToy_UserId
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["GetDoudan"], nil, sChildrenDayToy_FailFunc, nChildrenDayToy_UserId)
	end	
end
-- 寻路去其他游戏
function ChildrenDayToy_PlayOtherGame(nChildrenDayToy_UserId)
	-- 获取玩家和NPC的地图ID
	local nChildrenDayToy_Index = math.random(1,5)
	local nChildrenDayToy_OtherGameNpc = tChildrenDayToy_Cont["OtherGame"][nChildrenDayToy_Index]

	-- 获取玩家和NPC的地图ID
	local nChildrenDayToy_NpcMap = Get_NpcMapID(nChildrenDayToy_OtherGameNpc)
	local nChildrenDayToy_NowMapId = Get_UserMapId(nChildrenDayToy_UserId)

	-- 判断是否在一张地图
	if nChildrenDayToy_NowMapId == nChildrenDayToy_NpcMap then
		NpcPosition_PathFind(nChildrenDayToy_OtherGameNpc)
		return true
	else
		return false
	end
end
-- 获取玩具掩码 Index为玩具语种，Pos为第几个掩码，CollectType为判断对玩具收集进行记录还是对数量进行记录，2为记录已收集，1为记录当前收集数量，由于可以取出玩具，所以可以为0
function ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,nChildrenDayToy_Pos,nChildrenDayToy_UserId,nChildrenDayToy_CollectType)
	
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[nChildrenDayToy_Index][nChildrenDayToy_Pos]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[nChildrenDayToy_Index][nChildrenDayToy_Pos]["TypeData"]
	
	if nChildrenDayToy_CollectType ~= nil and nChildrenDayToy_CollectType == 2 then
		nChildrenDayToy_Event = tChildrenDayToy_Stc["Collect"][nChildrenDayToy_Index][nChildrenDayToy_Pos]["EventType"]
		nChildrenDayToy_Type = tChildrenDayToy_Stc["Collect"][nChildrenDayToy_Index][nChildrenDayToy_Pos]["TypeData"]
	end
	local nChildrenDayToy_Data = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_UserId)
	return nChildrenDayToy_Data
	
end

-- 设置玩具掩码 Index为玩具语种，Pos为第几个掩码,Data为设置的值，CollectType为判断对玩具收集进行记录还是对数量进行记录，2为记录已收集，1为记录当前收集数量，由于可以取出玩具，所以可以为0
function ChildrenDayToy_SetToysStc(nChildrenDayToy_Index,nChildrenDayToy_Pos,nChildrenDayToy_Data,nChildrenDayToy_UserId,nChildrenDayToy_CollectType)
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[nChildrenDayToy_Index][nChildrenDayToy_Pos]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[nChildrenDayToy_Index][nChildrenDayToy_Pos]["TypeData"]
	
	if nChildrenDayToy_CollectType ~= nil and nChildrenDayToy_CollectType == 2 then
		nChildrenDayToy_Event = tChildrenDayToy_Stc["Collect"][nChildrenDayToy_Index][nChildrenDayToy_Pos]["EventType"]
		nChildrenDayToy_Type = tChildrenDayToy_Stc["Collect"][nChildrenDayToy_Index][nChildrenDayToy_Pos]["TypeData"]
	end
	
	if Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_Data,1,nChildrenDayToy_UserId) then
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_UserId)
		return true
	end
	
	return false
	
end
-- 刷新童趣玩具箱主对白中点亮的图标
function ChildrenDayToy_RefreshDialogText(nChildrenDayToy_ItemId)
	local nChildrenDayToy_UserId = Get_UserId()
	local tChildrenDayToy_ToysName = {}
	local nChildrenDayToy_Date6 = Get_UserStatisticValue(tChildrenDayToy_Stc[6]["EventType"],tChildrenDayToy_Stc[6]["TypeData"],nChildrenDayToy_UserId) or 0
	 
		
	for j=1,5 do
		local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(j,5,nChildrenDayToy_UserId,1) + nChildrenDayToy_Date6
		local tChildrenDayToy_Points = tChildrenDayToy_Data * tChildrenDayToy_Cont["Integral"][j+3330704]
		local tChildrenDayToy_Num = j + 3
		tItem[nChildrenDayToy_ItemId]["Text11"..tChildrenDayToy_Num] = 	string.format(tChildrenDayToy_Text[nChildrenDayToy_ItemId]["Text11"..tChildrenDayToy_Num],tChildrenDayToy_Data,tChildrenDayToy_Points)
	end
	 
end
--童趣玩具箱 主对白点亮
function ChildrenDayToy_DialogText(nChildrenDayToy_ItemId)
	-- 过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		local nChildrenDayToy_Num = Get_CountItemType(nChildrenDayToy_ItemId,0)
		if Item_ChkItem(nChildrenDayToy_ItemId) and Item_DelAllItemByType(nChildrenDayToy_ItemId) then
		--过期删除log
		local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["Overtime"],nChildrenDayToy_ItemId,nChildrenDayToy_Num)
		Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		User_TalkChannel2005(tChildrenDayToy_Text["Sys_Msg"]["ToysBoxTimeOut"])
		end 
		return
	end
	
	ChildrenDayToy_RefreshDialogText(nChildrenDayToy_ItemId)
	 LinkItemGossipFunc_New(nChildrenDayToy_ItemId,"1-1")
end
--跳转至童趣扭蛋冒险榜网页
function ChildrenDayToy_OpenWebDialog()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return 
	end
	local nChildrenDayToy_UserId = Get_UserId()
	User_SendWebDialog(tChildrenDayToy_Cont["Web"],nChildrenDayToy_UserId)
end
--选择玩具语种
function ChildrenDayToy_PutOutToy1(nChildrenDayToy_ItemId,nChildrenDayToy_Index)
	local nChildrenDayToy_UserId = Get_UserId()
	local tChildrenDayToy_ToysName = {}
	local  nChildrenDayToy_Data5 = ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,5,nChildrenDayToy_UserId,1)
	tItem[nChildrenDayToy_ItemId]["Text2"..nChildrenDayToy_Index.."9"] = tChildrenDayToy_Text[nChildrenDayToy_ItemId]["Text2"..nChildrenDayToy_Index.."9"]
	if nChildrenDayToy_Data5 >= 1 then 
		tItem[nChildrenDayToy_ItemId]["Text2"..nChildrenDayToy_Index.."9"] = tChildrenDayToy_Text[nChildrenDayToy_ItemId]["Text2"..nChildrenDayToy_Index.."10"]	
	end
		tItem[nChildrenDayToy_ItemId]["tOption2-"..nChildrenDayToy_Index] = {}
		for j=1,4 do
			local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,j,nChildrenDayToy_UserId,1)
			if tChildrenDayToy_Data ~= nil and tChildrenDayToy_Data >= 1 then
				--点亮
				local nChildrenDayToy_ToyItemId = tChildrenDayToy_Stc[nChildrenDayToy_Index][j]["ItemId"]
				local nChildrenDayToy_ItemName = tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ToyItemId]
				tChildrenDayToy_ToysName[j] = string.format(tChildrenDayToy_Text["Color"]["Light"],tChildrenDayToy_Data,nChildrenDayToy_ItemName)
				--出现选项
				local nChildrenDayToy_OptionNum = 2 .. nChildrenDayToy_Index .. j
				table.insert(tItem[nChildrenDayToy_ItemId]["tOption2-"..nChildrenDayToy_Index],nChildrenDayToy_OptionNum)
			else
				--未点亮
				local nChildrenDayToy_ToyItemId = tChildrenDayToy_Stc[nChildrenDayToy_Index][j]["ItemId"]
				local nChildrenDayToy_ItemName = tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ToyItemId]
				tChildrenDayToy_ToysName[j] = string.format(tChildrenDayToy_Text["Color"]["Gray"],nChildrenDayToy_ItemName)
			
			end
			local nChildrenDayToy_Num = j + 3
			
			tItem[nChildrenDayToy_ItemId]["Text2"..nChildrenDayToy_Index..nChildrenDayToy_Num] = string.format(tChildrenDayToy_Text[nChildrenDayToy_ItemId]["Text2"..nChildrenDayToy_Index..nChildrenDayToy_Num],tChildrenDayToy_ToysName[j],tChildrenDayToy_Data)
		
		end
		local nChildrenDayToy_OptionNum2 = 2 .. nChildrenDayToy_Index .. 5
		table.insert(tItem[nChildrenDayToy_ItemId]["tOption2-"..nChildrenDayToy_Index],nChildrenDayToy_OptionNum2)
	 LinkItemGossipFunc_New(nChildrenDayToy_ItemId,"2-"..nChildrenDayToy_Index)
end
--跳转至选择取出玩具界面
function ChildrenDayToy_PutOutToy2(nChildrenDayToy_ItemId)
	local nChildrenDayToy_UserId = Get_UserId()
	for i=1,5 do
		local  nChildrenDayToy_ToysTotal = 0 --记录各语种玩具总数
		for j=1,4 do
			
			local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			if nChildrenDayToy_Data ~= nil and nChildrenDayToy_Data >= 1 then
				nChildrenDayToy_ToysTotal = nChildrenDayToy_ToysTotal + nChildrenDayToy_Data 
			end
		end
		local nChildrenDayToy_Num = i + 3
		tItem[nChildrenDayToy_ItemId]["Text16"..nChildrenDayToy_Num] = string.format(tChildrenDayToy_Text[nChildrenDayToy_ItemId]["Text16"..nChildrenDayToy_Num],nChildrenDayToy_ToysTotal)
	 end
	 LinkItemGossipFunc_New(nChildrenDayToy_ItemId,"1-6")
end
--取出所选玩具
function ChildrenDayToy_PutOutToy3(nChildrenDayToy_ItemId,nChildrenDayToy_ToyItemId)
	local nChildrenDayToy_UserId = Get_UserId()
	
	 
	local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Pos"],nChildrenDayToy_UserId,1)
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],1)
		Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
		return
	end
	--判断是否有玩具剩余
	if not (tChildrenDayToy_Data ~= nil and tChildrenDayToy_Data >= 1) then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoToy"], nil, nil, nChildrenDayToy_UserId)
		return
	end
	if tChildrenDayToy_Data > 1 then
	-- 数量超过1个则让玩家选择取出的数量
		ChildrenDayToy_Hand(nChildrenDayToy_ItemId,nChildrenDayToy_ToyItemId)
		return
	end
	tChildrenDayToy_Data = tChildrenDayToy_Data - 1
	if ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Pos"],tChildrenDayToy_Data,nChildrenDayToy_UserId,1) then
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward[nChildrenDayToy_ToyItemId])
	end
	local nChildrenDayToy_ItemName = tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ToyItemId]
	local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["OutCaseSuccess"],nChildrenDayToy_ItemName)
	-- 提示领取成功
	Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
	-- 跳回取出玩具页面
	
	ChildrenDayToy_PutOutToy1(nChildrenDayToy_ItemId,tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"])
end
-- 选择数量对白
function ChildrenDayToy_Hand(nChildrenDayToy_ItemId,nChildrenDayToy_ToyItemId)
	
	Sys_DialogItemFace(nChildrenDayToy_ItemId)
	Sys_DialogText(tChildrenDayToy_Text[3330712]["Text1210"])
	Sys_DialogOptEdit(tChildrenDayToy_Text[3330712]["Option121"],10,"ChildrenDayToy_Confirm</N>"..nChildrenDayToy_ItemId.."</N>"..nChildrenDayToy_ToyItemId)
	Sys_DialogEnd()
	
end
-- 获取玩家输入的字符
function ChildrenDayToy_Confirm(nChildrenDayToy_ItemId,nChildrenDayToy_ToyItemId)
	-- 获取玩家输入的字符
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Input = tonumber(Get_SysAcceptStr())
	
	
	
	if type(nChildrenDayToy_Input) ~= "number" or nChildrenDayToy_Input <= 0 then
		ChildrenDayToy_Hand(nChildrenDayToy_ItemId,nChildrenDayToy_ToyItemId)
		return
	end
	
	
	 
	local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Pos"],nChildrenDayToy_UserId,1)
	if nChildrenDayToy_Input > tChildrenDayToy_Data then
		--数量不足
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoEnoughToy"], nil, nil, nChildrenDayToy_UserId)
		ChildrenDayToy_PutOutToy1(nChildrenDayToy_ItemId,tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"])
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],1)
		Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
		-- 跳回取出玩具页面
		ChildrenDayToy_PutOutToy1(nChildrenDayToy_ItemId,tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"])
		return
	end
	
	tChildrenDayToy_Data = tChildrenDayToy_Data - nChildrenDayToy_Input
	if ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Pos"],tChildrenDayToy_Data,nChildrenDayToy_UserId,1) then
		local tChildrenDayToy_Table = CommonFunc_Copy(tChildrenDayToy_Reward[nChildrenDayToy_ToyItemId])
		tChildrenDayToy_Table["RewardItem"][1]["Attr"] = "0 "..nChildrenDayToy_Input
		RewardTemplate_UseItemAndMsg(tChildrenDayToy_Table)
	end
	local nChildrenDayToy_ItemName = tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ToyItemId]
	local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["OutCaseSuccess"],nChildrenDayToy_ItemName)
	-- 提示领取成功
	Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
	-- 跳回取出玩具页面
	ChildrenDayToy_PutOutToy1(nChildrenDayToy_ItemId,tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ToyItemId]["Index"])
	
end

-- 跳转至单项领奖界面对白逻辑
function ChildrenDayToy_RewardText(nChildrenDayToy_NpcId)
	local nChildrenDayToy_UserId = Get_UserId()
	tNpcGossip[26486]["Text5-4"] = {541,542,543}
	tNpcGossip[26486]["Text544"] =  tChildrenDayToy_Text[3330712]["Text314"]
	tNpcGossip[26486]["Text545"] =  tChildrenDayToy_Text[3330712]["Text315"]
	tNpcGossip[26486]["Text546"] =  tChildrenDayToy_Text[3330712]["Text316"]
	tNpcGossip[26486]["Text547"] =  tChildrenDayToy_Text[3330712]["Text317"]
	tNpcGossip[26486]["Text548"] =  tChildrenDayToy_Text[3330712]["Text318"]
	tNpcGossip[26486]["tOption5-4"] = {}
	local nChildrenDayToy_RewardNum = 0 --记录可领取的奖励数量
	
	local nChildrenDayToy_Data = 0
	 for i=1,5 do
		-- 判断各语种限定玩具首次集齐奖励是否领取
		nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,5,nChildrenDayToy_UserId,1)
		if nChildrenDayToy_Data >= 1 then 
			local nChildrenDayToy_Num = i+3
			local nChildrenDayToy_Num2 = i+8
			
			tNpcGossip[26486]["Text54"..nChildrenDayToy_Num] = tChildrenDayToy_Text[3330712]["Text31"..nChildrenDayToy_Num2]
			
		end
		local nChildrenDayToy_CollectNum = 0--记录该类玩具收集数量
		for j = 1,4 do
			local nChildrenDayToy_Data2 = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			if nChildrenDayToy_Data2 ~= nil and nChildrenDayToy_Data2 >= 1 then
				nChildrenDayToy_CollectNum = nChildrenDayToy_CollectNum + 1 
				
			end
		end
		--大等于4则该类玩具已集齐
		if nChildrenDayToy_CollectNum >= 4 then
			nChildrenDayToy_RewardNum = nChildrenDayToy_RewardNum + 1
			local nChildrenDayToy_Num3 = i + 3
			local nChildrenDayToy_Num4 = 54 .. nChildrenDayToy_Num3
			table.insert(tNpcGossip[26486]["Text5-4"],nChildrenDayToy_Num4)
			local nChildrenDayToy_Num5 = 54 .. i
			table.insert(tNpcGossip[26486]["tOption5-4"],nChildrenDayToy_Num5)
			
		end
	 end
	 table.insert(tNpcGossip[26486]["Text5-4"],549)
	 table.insert(tNpcGossip[26486]["Text5-4"],5410)
	 table.insert(tNpcGossip[26486]["tOption5-4"],546)
	 -- 没有可以领取的奖励时
	 if nChildrenDayToy_RewardNum <= 0 then
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoEnoughToys"], nil, nil, nChildrenDayToy_UserId)
		LinkNpcGossipFunc_New(nChildrenDayToy_NpcId,"5-1")
		return
	 end
	 
	 
	 LinkNpcGossipFunc_New(nChildrenDayToy_NpcId,"5-4")
end
-- 跳转至领奖界面对白逻辑2
function ChildrenDayToy_AllRewardText(nChildrenDayToy_ItemId)
	tNpcGossip[26486]["Text5-5"] = {551,552,553,554,555,557}
	tNpcGossip[26486]["Text551"] =  tChildrenDayToy_Text[3330712]["Text141"]
	tNpcGossip[26486]["Text552"] =  tChildrenDayToy_Text[3330712]["Text142"]
	tNpcGossip[26486]["Text553"] =  tChildrenDayToy_Text[3330712]["Text143"]
	tNpcGossip[26486]["Text554"] =  tChildrenDayToy_Text[3330712]["Text144"]
	tNpcGossip[26486]["Text555"] =  tChildrenDayToy_Text[3330712]["Text145"]
	tNpcGossip[26486]["Option551"] = tChildrenDayToy_Text[3330712]["Option141"]
	tNpcGossip[26486]["Option552"] = tChildrenDayToy_Text[3330712]["Option143"]
	
	local nChildrenDayToy_UserId = Get_UserId()
	-- 判断是否已经集齐全部玩具奖励
	--累计玩具种类
	local nChildrenDayToy_Num = 0
	for i=1,5 do
		for j=1,4 do
			local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			if nChildrenDayToy_Data ~= nil and nChildrenDayToy_Data >= 1 then
				nChildrenDayToy_Num = nChildrenDayToy_Num + 1 
			end
		end
	 end
	 --判断是否集齐
	 if nChildrenDayToy_Num >= 20 then
		tNpcGossip[26486]["Option551"] = tChildrenDayToy_Text[3330712]["Option142"]
	end
	
	local nChildrenDayToy_GlobalId = tChildrenDayToy_Cont["GlobalToys"]
	local nChildrenDayToy_GlobalData = Get_SysDynaGlobalData(nChildrenDayToy_GlobalId,0) or 0
	-- 判断是否为首位集齐全部奖励的玩家
	if nChildrenDayToy_GlobalData <= 0 then
		tNpcGossip[26486]["Text5-5"] = {551,552,553,554,555,556,557}
		tNpcGossip[26486]["Text551"] =  tChildrenDayToy_Text[3330712]["Text151"]
		tNpcGossip[26486]["Text552"] =  tChildrenDayToy_Text[3330712]["Text152"]
		tNpcGossip[26486]["Text553"] =  tChildrenDayToy_Text[3330712]["Text153"]
		tNpcGossip[26486]["Text554"] =  tChildrenDayToy_Text[3330712]["Text154"]
		tNpcGossip[26486]["Text555"] =  tChildrenDayToy_Text[3330712]["Text155"]
		tNpcGossip[26486]["Text556"] =  tChildrenDayToy_Text[3330712]["Text156"]
		tNpcGossip[26486]["Option551"] = tChildrenDayToy_Text[3330712]["Option151"]
		tNpcGossip[26486]["Option552"] = tChildrenDayToy_Text[3330712]["Option153"]
		--判断是否集齐
		if nChildrenDayToy_Num >= 20 then
			tNpcGossip[26486]["Option551"] = tChildrenDayToy_Text[3330712]["Option152"]
		end
	end
	
	local nChildrenDayToy_Event6 = tChildrenDayToy_Stc[6]["EventType"]
	local nChildrenDayToy_Type6 = tChildrenDayToy_Stc[6]["TypeData"]
	local nChildrenDayToy_Date6 = Get_UserStatisticValue(nChildrenDayToy_Event6,nChildrenDayToy_Type6,nChildrenDayToy_UserId)
	-- 判断是否已经领取首次奖励
	 if nChildrenDayToy_Date6 >= 1 then
		tNpcGossip[26486]["Text5-5"] = {551,552,553,556,557}
		tNpcGossip[26486]["Text551"] =  tChildrenDayToy_Text[3330712]["Text141"]
		tNpcGossip[26486]["Text552"] =  tChildrenDayToy_Text[3330712]["Text142"]
		tNpcGossip[26486]["Text553"] =  tChildrenDayToy_Text[3330712]["Text146"]
	
	end
	 LinkNpcGossipFunc_New(nChildrenDayToy_ItemId,"5-5")
end
-- 儿童节武器外套可选包 使用逻辑
function ChildrenDayToy_ChoosePack(nChildrenDayToy_ItemId, nChildrenDayToy_Index)
	local nChildrenDayToy_UserId = Get_UserId()
	-- 物品不存在
	if not Item_ChkMulItem(nChildrenDayToy_ItemId, nChildrenDayToy_ItemId, 1) then
		return
	end
	local nChildrenDayToy_Space = RewardTemplate_GetRewardSpace(tChildrenDayToy_Reward[nChildrenDayToy_ItemId][nChildrenDayToy_Index])
	if not User_CheckLeftSpace(nChildrenDayToy_Space) then
		User_TalkChannel2005(string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],nChildrenDayToy_Space))
		return
	end
	
	--发奖
	RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward[nChildrenDayToy_ItemId][nChildrenDayToy_Index])
	
end
--玩具首次收集逻辑
function ChildrenDayToy_FirstCollect(nChildrenDayToy_ItemId)
	local nChildrenDayToy_UserId = Get_UserId()
	
	-- 判断是否有该玩具
	if Item_ChkItem(nChildrenDayToy_ItemId) and Item_DelItem(nChildrenDayToy_ItemId) then
		-- 删除log
		local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["InCase"],nChildrenDayToy_ItemId,1)
		Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		local nChildrenDayToy_Date = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,1) 
		--掩码数量加1
		ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_Date+1,nChildrenDayToy_UserId,1) 
		-- 判断是否为第一次收集
		local nChildrenDayToy_FirstDate = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,2) 
		if not (nChildrenDayToy_FirstDate ~= nil and nChildrenDayToy_FirstDate >= 1) then
		--掩码标记为已收集
			ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_Date+1,nChildrenDayToy_UserId,2) 
		end
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["InCase"])
		return
	end
end
--玩具一键收集逻辑
function ChildrenDayToy_AllCollect()
	local nChildrenDayToy_UserId = Get_UserId()
	for i = 1 ,20 do
		local nChildrenDayToy_ItemId = tChildrenDayToy_Cont["Toy"][i]
		local nChildrenDayToy_ItemNum = Get_CountItemType(nChildrenDayToy_ItemId,0) or 0
		local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,1)
		local nChildrenDayToy_FirstDate = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,2)
		
		if nChildrenDayToy_ItemNum >= 1 then
			if Item_ChkMulItem(nChildrenDayToy_ItemId,nChildrenDayToy_ItemId,nChildrenDayToy_ItemNum) and Item_DelMulItem(nChildrenDayToy_ItemId,nChildrenDayToy_ItemId,nChildrenDayToy_ItemNum) then
				-- 删除log
				local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["InCase"],nChildrenDayToy_ItemId,nChildrenDayToy_ItemNum)
				Sys_SaveActionFestivalLog(sChildrenDayToy_str)
				--判断该玩具是否是首次收集
				if not (nChildrenDayToy_FirstDate ~= nil and nChildrenDayToy_FirstDate >= 1) then
					--掩码标记为已收集
					ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_Data+1,nChildrenDayToy_UserId,2)
				end
				ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_Data+nChildrenDayToy_ItemNum,nChildrenDayToy_UserId,1) 
			end
		end
	end
	Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["InCase"])
end
--领取领取集齐全部玩具豪礼
function ChildrenDayToy_AllToysReward(nChildrenDayToy_ItemId,nChildrenDayToy_Index)
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event6 = tChildrenDayToy_Stc[6]["EventType"]
	local nChildrenDayToy_Type6 = tChildrenDayToy_Stc[6]["TypeData"]
	local nChildrenDayToy_Date6 = Get_UserStatisticValue(nChildrenDayToy_Event6,nChildrenDayToy_Type6,nChildrenDayToy_UserId)
	local nChildrenDayToy_Num = 0 --记录有多少种玩具，达到20种为全齐
	--累计玩具种类
	for i=1,5 do
		for j=1,4 do
			local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			if tChildrenDayToy_Data ~= nil and tChildrenDayToy_Data >= 1 then
				nChildrenDayToy_Num = nChildrenDayToy_Num + 1 
			end
		end
	 end
	 if nChildrenDayToy_Num < 20 then
		
		--跳转回领奖界面
		ChildrenDayToy_AllRewardText(nChildrenDayToy_ItemId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoEnoughToys"])
		return
	 end
	 -- 小于零则没领取首次奖励
	 if nChildrenDayToy_Date6 <= 0 then
		-- 判断背包空间
		if not User_CheckLeftSpace(1) then
			local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],1)
			Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
			return
		end
		local nChildrenDayToy_GlobalId = tChildrenDayToy_Cont["GlobalToys"]
		local nChildrenDayToy_GlobalData = Get_SysDynaGlobalData(nChildrenDayToy_GlobalId,0) or 0
		-- 判断是否为首位集齐全部奖励的玩家
		if nChildrenDayToy_GlobalData <= 0 then
			--掩码设置为已领取首次奖励
			if Task_SetStatistic(nChildrenDayToy_Event6,nChildrenDayToy_Type6,1,1,nChildrenDayToy_UserId) then
				Task_SetStcTimestamp(nChildrenDayToy_Event6,nChildrenDayToy_Type6,0,nChildrenDayToy_UserId)
				-- 全部玩具数量减一
				ChildrenDayToy_ToysSetAllStc(1,nChildrenDayToy_UserId)
				--设置全局表为首位玩家id
				Sys_SetSynaGlobalData(nChildrenDayToy_GlobalId,0,nChildrenDayToy_UserId)
				Sys_SetSynaGlobalDataStr0(nChildrenDayToy_GlobalId,Get_UserName())
				RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Collect"][7], nChildrenDayToy_UserId)
				local sChildrenDayToy_UserName = Get_UserName(nChildrenDayToy_UserId)
				local sChildrenDayToy_MsgText = tChildrenDayToy_Text["Reward_Msg"]["FirstOne"]
				local sChildrenDayToy_BroadText = string.format(tChildrenDayToy_Text["Reward_Broad"]["FirstOne"],sChildrenDayToy_UserName)
				Sys_MsgBox(sChildrenDayToy_MsgText)
				Sys_SystemBroadcast(sChildrenDayToy_BroadText)
				Sys_TalkBroadcast(sChildrenDayToy_BroadText)
				return
			end
			
		end
		--掩码设置为已领取首次奖励
		if Task_SetStatistic(nChildrenDayToy_Event6,nChildrenDayToy_Type6,1,1,nChildrenDayToy_UserId) then
			Task_SetStcTimestamp(nChildrenDayToy_Event6,nChildrenDayToy_Type6,0,nChildrenDayToy_UserId)
			-- 全部玩具数量减一
			ChildrenDayToy_ToysSetAllStc(1,nChildrenDayToy_UserId)
			RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Collect"][6], nChildrenDayToy_UserId)
			local sChildrenDayToy_UserName = Get_UserName(nChildrenDayToy_UserId)
			local sChildrenDayToy_MsgText = tChildrenDayToy_Text["Reward_Msg"]["CollectAll"]
			local sChildrenDayToy_BroadText = string.format(tChildrenDayToy_Text["Reward_Broad"]["CollectAll"],sChildrenDayToy_UserName)
			Sys_MsgBox(sChildrenDayToy_MsgText)
			Sys_SystemBroadcast(sChildrenDayToy_BroadText)
			Sys_TalkBroadcast(sChildrenDayToy_BroadText)
			return
		end
		
	end
	-- 不是首次获奖则发积分
	
	Task_SetStatistic(nChildrenDayToy_Event6,nChildrenDayToy_Type6,nChildrenDayToy_Date6+1,1,nChildrenDayToy_UserId)
	Task_SetStcTimestamp(nChildrenDayToy_Event6,nChildrenDayToy_Type6,0,nChildrenDayToy_UserId)
	ChildrenDayToy_ToysSetAllStc(1,nChildrenDayToy_UserId)
	ChildrenDayToy_AddScoreStc(tChildrenDayToy_Cont["Integral"][3330711])
	
	local sChildrenDayToy_UserName = Get_UserName(nChildrenDayToy_UserId)
	local sChildrenDayToy_MsgText = tChildrenDayToy_Text["Reward_Msg"]["CollectAll2"]
	local sChildrenDayToy_BroadText = string.format(tChildrenDayToy_Text["Reward_Broad"]["CollectAll"],sChildrenDayToy_UserName)
	Sys_MsgBox(sChildrenDayToy_MsgText)
	Sys_SystemBroadcast(sChildrenDayToy_BroadText)
	Sys_TalkBroadcast(sChildrenDayToy_BroadText)
end
--领取集齐全部玩具时删除掩码，Reduction为减数
function ChildrenDayToy_ToysSetAllStc(nChildrenDayToy_Reduction,nChildrenDayToy_UserId)
	for i=1,5 do
		for j=1,4 do
			local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			if tChildrenDayToy_Data ~= nil and tChildrenDayToy_Data >= nChildrenDayToy_Reduction then
				tChildrenDayToy_Data = tChildrenDayToy_Data - nChildrenDayToy_Reduction
				ChildrenDayToy_SetToysStc(i,j,tChildrenDayToy_Data,nChildrenDayToy_UserId,1)
			end
		end
	 end
	
end
--领取集齐语种限定玩具时删除掩码，Reduction为减数
function ChildrenDayToy_ToysReward(nChildrenDayToy_NpcId,nChildrenDayToy_Index)
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Date = ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,5,nChildrenDayToy_UserId,1) or 0
	local nChildrenDayToy_Num = 0 --记录该语种限定有多少种玩具，达到4种才可以领奖
	local nChildrenDayToy_MinNum = ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,1,nChildrenDayToy_UserId,1) --记录各玩具中数量最少的
	--累计玩具种类
	
		for j=1,4 do
			local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,j,nChildrenDayToy_UserId,1)
			if tChildrenDayToy_Data ~= nil and tChildrenDayToy_Data >= 1 then
				nChildrenDayToy_Num = nChildrenDayToy_Num + 1 
				--获取玩具中数量最少的
				if tChildrenDayToy_Data <= nChildrenDayToy_MinNum then
					nChildrenDayToy_MinNum = tChildrenDayToy_Data
				end
				
			end
		end

	 if nChildrenDayToy_Num < 4 then
		
		--跳转回领奖界面
		ChildrenDayToy_RewardText(nChildrenDayToy_NpcId)
		Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoEnoughToys"])
		return
	 end
	 -- 小于零则没领取首次奖励
	 if nChildrenDayToy_Date <= 0 then
		-- 判断背包空间
		if not User_CheckLeftSpace(1) then
			local sChildrenDayToy_Msg = string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],1)
			Sys_MsgBox(sChildrenDayToy_Msg, nil, nil, nChildrenDayToy_UserId)
			return
		end
		
		--掩码设置为已领取首次奖励
		if ChildrenDayToy_SetToysStc(nChildrenDayToy_Index,5,1,nChildrenDayToy_UserId,1) then
			
			-- 该语种玩具数量减一
			ChildrenDayToy_ToysSetTypeStc(nChildrenDayToy_Index,1,nChildrenDayToy_UserId)
			RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["Collect"][nChildrenDayToy_Index], nChildrenDayToy_UserId)
			Sys_MsgBox(tChildrenDayToy_Text["Reward_Msg"]["CollectType"][nChildrenDayToy_Index], nil, nil, nChildrenDayToy_UserId)
			local sChildrenDayToy_UserName = Get_UserName(nChildrenDayToy_UserId)
			local sChildrenDayToy_MsgText = tChildrenDayToy_Text["Reward_Msg"]["CollectType"][nChildrenDayToy_Index]
			local sChildrenDayToy_BroadText = string.format(tChildrenDayToy_Text["Reward_Broad"]["CollectType"][nChildrenDayToy_Index],sChildrenDayToy_UserName)
			Sys_MsgBox(sChildrenDayToy_MsgText)
			Sys_SystemBroadcast(sChildrenDayToy_BroadText)
			Sys_TalkBroadcast(sChildrenDayToy_BroadText)
			return
		end
		
	end
	-- 不是首次获奖则发积分,MinNum为至少能领取几份
	
	ChildrenDayToy_SetToysStc(nChildrenDayToy_Index,5,nChildrenDayToy_Date+nChildrenDayToy_MinNum,nChildrenDayToy_UserId,1)
	ChildrenDayToy_ToysSetTypeStc(nChildrenDayToy_Index,nChildrenDayToy_MinNum,nChildrenDayToy_UserId)
	local nChildrenDayToy_Mask = nChildrenDayToy_Index + 3330704
	local nChildrenDayToy_Score = tChildrenDayToy_Cont["Integral"][nChildrenDayToy_Mask] * nChildrenDayToy_MinNum
	ChildrenDayToy_AddScoreStc(nChildrenDayToy_Score)
	

	local sChildrenDayToy_UserName = Get_UserName(nChildrenDayToy_UserId)
	local sChildrenDayToy_MsgText = string.format(tChildrenDayToy_Text["Reward_Msg"]["CollectTypeNum"][nChildrenDayToy_Index],nChildrenDayToy_MinNum,nChildrenDayToy_Score)
	local sChildrenDayToy_BroadText = string.format(tChildrenDayToy_Text["Reward_Broad"]["CollectType"][nChildrenDayToy_Index],sChildrenDayToy_UserName)
	Sys_MsgBox(sChildrenDayToy_MsgText)
	Sys_SystemBroadcast(sChildrenDayToy_BroadText)
	Sys_TalkBroadcast(sChildrenDayToy_BroadText)
	LinkNpcGossipFunc_New(nChildrenDayToy_NpcId,"5-1")
end
--领取集齐语种限定玩具时删除掩码，Reduction为减数
function ChildrenDayToy_ToysSetTypeStc(nChildrenDayToy_Index,nChildrenDayToy_Reduction,nChildrenDayToy_UserId)
	
		for j=1,4 do
			local tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(nChildrenDayToy_Index,j,nChildrenDayToy_UserId,1)
			if tChildrenDayToy_Data ~= nil and tChildrenDayToy_Data >= nChildrenDayToy_Reduction then
				tChildrenDayToy_Data = tChildrenDayToy_Data - nChildrenDayToy_Reduction
				ChildrenDayToy_SetToysStc(nChildrenDayToy_Index,j,tChildrenDayToy_Data,nChildrenDayToy_UserId,1)
			end
		end
	 
	
end

--加积分函数
function ChildrenDayToy_AddScoreStc(nChildrenDayToy_Score)
	local nChildrenDayToy_UserId = Get_UserId()
	--更新排行榜
	ChildrenDayMainNPC_SaveScore(nChildrenDayToy_Score)
	local nChildrenDayToy_Event = tChildrenDayToy_Stc["ScoreEvent"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc["ScoreType"] 
	local nChildrenDayToy_Data = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nUserId) + nChildrenDayToy_Score
	if Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_Data,1,nChildrenDayToy_UserId) then
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_UserId)
		return true
	end
	
	
end

--寻找主NPC领取奖励
function ChildrenDayToy_FindMainNpc()
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_UserMapId = Get_UserMapId(nChildrenDayToy_UserId)
	if SpecialServer_ChkNoGiftServer() then
		--判断是否在交易市场
		if nChildrenDayToy_UserMapId ~= tChildrenDayToy_Cont["NoGift"] then
			Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["NoGift"])
		else
			NpcPosition_PathFind(tChildrenDayToy_Cont["MainNpc"])
		end
	else
		--判断是否在双龙城
		if nChildrenDayToy_UserMapId ~= tChildrenDayToy_Cont["Twins"] then
			Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["Twins"])
		else
			NpcPosition_PathFind(tChildrenDayToy_Cont["MainNpc"])
		end
	end
end

--未领取集齐语种限定玩具时的二次确认
function ChildrenDayToy_ConfirmToysReward(nChildrenDayToy_NpcId,nChildrenDayToy_Index)
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event6 = tChildrenDayToy_Stc[6]["EventType"]
	local nChildrenDayToy_Type6 = tChildrenDayToy_Stc[6]["TypeData"]
	local nChildrenDayToy_Date6 = Get_UserStatisticValue(nChildrenDayToy_Event6,nChildrenDayToy_Type6,nChildrenDayToy_UserId)
	if nChildrenDayToy_Date6 <= 0 then
		tNpcGossip[26486]["OptionFunc561"] = "ChildrenDayToy_ToysReward</N>26486</N>"..nChildrenDayToy_Index
		LinkNpcGossipFunc_New(nChildrenDayToy_NpcId,"5-6")
		return
	end
	ChildrenDayToy_ToysReward(nChildrenDayToy_NpcId,nChildrenDayToy_Index)
	
end
---------------------------------------------NPC模块---------------------------------------------
--蛋头先生
tNpcFace[4065] = 137
tNpcGossip[26477] = tNpcGossip[26477] or DefaultNpc:new{}
tNpcGossip[26477]["DialogueText"] = tChildrenDayToy_Text[26477]
tNpcGossip[26477]["OptionHidden"] = 1

--活动中
tNpcGossip[26477]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[26477]["tOption1-1"] = {111}
tNpcGossip[26477]["ChkFunc1-1"] = function()
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[7]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[7]["TypeData"]
	--判断隔天可以领取回礼了
	if not Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_UserId) then
		-- 没到寄出去的第二天
		if Task_ChkStcValue(nChildrenDayToy_Event, nChildrenDayToy_Type, ">", 0) then
			return false
		end
	end
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end

tNpcGossip[26477]["OptionFunc111"] =  "ChildrenDayToy_JudgeToys</N>26477"

--上交玩具界面
tNpcGossip[26477]["Text2-2"] = {221,222}
tNpcGossip[26477]["tOption2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221}
tNpcGossip[26477]["ChkFunc2-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return false
	end
	tNpcGossip[26477]["tOption2-2"] = {}
	
	for i=1,5 do
		for j=1,4 do
			local nChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,j,nChildrenDayToy_UserId,1)
			-- 如果存在该玩具这出现该玩具的选项
			if nChildrenDayToy_Data >= 1 or Item_ChkItem(tChildrenDayToy_Stc[i][j]["ItemId"]) then
				local nChildrenDayToy_Num1 = (i-1)*4+j
				local nChildrenDayToy_Num2 = 22 .. nChildrenDayToy_Num1
				
				table.insert(tNpcGossip[26477]["tOption2-2"],nChildrenDayToy_Num2) 
			end
		end
	end
	table.insert(tNpcGossip[26477]["tOption2-2"],2221)
	return true
end
tNpcGossip[26477]["OptionFunc221"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>1"
tNpcGossip[26477]["OptionFunc222"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>2"
tNpcGossip[26477]["OptionFunc223"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>3"
tNpcGossip[26477]["OptionFunc224"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>4"
tNpcGossip[26477]["OptionFunc225"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>5"
tNpcGossip[26477]["OptionFunc226"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>6"
tNpcGossip[26477]["OptionFunc227"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>7"
tNpcGossip[26477]["OptionFunc228"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>8"
tNpcGossip[26477]["OptionFunc229"] =  "ChildrenDayToy_ConsignmentToys</N>26477</N>9"
tNpcGossip[26477]["OptionFunc2210"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>10"
tNpcGossip[26477]["OptionFunc2211"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>11"
tNpcGossip[26477]["OptionFunc2212"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>12"
tNpcGossip[26477]["OptionFunc2213"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>13"
tNpcGossip[26477]["OptionFunc2214"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>14"
tNpcGossip[26477]["OptionFunc2215"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>15"
tNpcGossip[26477]["OptionFunc2216"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>16"
tNpcGossip[26477]["OptionFunc2217"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>17"
tNpcGossip[26477]["OptionFunc2218"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>18"
tNpcGossip[26477]["OptionFunc2219"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>19"
tNpcGossip[26477]["OptionFunc2220"] = "ChildrenDayToy_ConsignmentToys</N>26477</N>20"
--二次确认上交玩具
tNpcGossip[26477]["Text1-3"] = {131,132,133}
tNpcGossip[26477]["tOption1-3"] = {131,132}

--没有该玩具
tNpcGossip[26477]["Text1-4"] = {141,142}
tNpcGossip[26477]["tOption1-4"] = {141}

--有回礼
tNpcGossip[26477]["Text1-5"] = {151,152}
tNpcGossip[26477]["tOption1-5"] = {151}

--寄售玩具成功
tNpcGossip[26477]["Text1-6"] = {161,162}
tNpcGossip[26477]["tOption1-6"] = {161}

--背包里没有可以寄售的玩具
tNpcGossip[26477]["Text2-1"] = {211,212,213}
tNpcGossip[26477]["tOption2-1"] = {211}
tNpcGossip[26477]["OptionFunc211"] = "NpcPosition_PathFind</N>26507"--寻路至扭蛋机

--当天已经寄售玩具
tNpcGossip[26477]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[26477]["tOption1-2"] = {121}
tNpcGossip[26477]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return false
	end
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[7]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[7]["TypeData"]
	local nChildrenDayToy_Data = Get_UserStatisticValue(nChildrenDayToy_Event,nChildrenDayToy_Type,nChildrenDayToy_UserId) or 1
	local nChildrenDayToy_ItemId = tChildrenDayToy_Cont["Toy"][nChildrenDayToy_Data]
	tNpcGossip[26477]["Text123"] = string.format(tChildrenDayToy_Text[26477]["Text123"],tChildrenDayToy_Text["ToyName"][nChildrenDayToy_ItemId])
	return true
end

--蛋头太太
tNpcFace[4066] = 153
tNpcGossip[26478] = tNpcGossip[26478] or DefaultNpc:new{}
tNpcGossip[26478]["DialogueText"] = tChildrenDayToy_Text[26478]
tNpcGossip[26478]["OptionHidden"] = 1

--活动中
tNpcGossip[26478]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[26478]["tOption1-1"] = {111}
tNpcGossip[26478]["ChkFunc1-1"] = function()
	local nChildrenDayToy_UserId = Get_UserId()
	local nChildrenDayToy_Event = tChildrenDayToy_Stc[8]["EventType"]
	local nChildrenDayToy_Type = tChildrenDayToy_Stc[8]["TypeData"]
	--隔天
	if Task_StcInterval(nChildrenDayToy_Event,nChildrenDayToy_Type,1,4,nChildrenDayToy_UserId) then
		Task_SetStatistic(nChildrenDayToy_Event,nChildrenDayToy_Type,0,1,nChildrenDayToy_UserId)
		Task_SetStcTimestamp(nChildrenDayToy_Event,nChildrenDayToy_Type,0,nChildrenDayToy_UserId)
	end
	tNpcGossip[26478]["Option111"] = tChildrenDayToy_Text[26478]["Option111"]
	-- 已领取
	if Task_ChkStcValue(nChildrenDayToy_Event, nChildrenDayToy_Type, ">", 0) then
		tNpcGossip[26478]["Option111"] = tChildrenDayToy_Text[26478]["Option112"]
	end
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end
tNpcGossip[26478]["OptionFunc111"] = "ChildrenDayToy_RewardDoudan"
---------------------------------物品部分---------------------------------------------
--3330728  斗蛋
tItem[3330728] = tItem[3330728] or {}
tItem[3330728]["Function"] = function(nItemId,sItemName)
	local nChildrenDayToy_UserId = Get_UserId()
	-- 判断是否处于活动期内，过期删除
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		local nChildrenDayToy_Num = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		--过期删除log
		local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["Overtime"],nItemId,nChildrenDayToy_Num)
		Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		User_TalkChannel2005(tChildrenDayToy_Text["Sys_Msg"]["TimeOut"])
		end 
		return
	end
	Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["DoudanTip"], nil, nil, nChildrenDayToy_UserId)
end
--3330685-3330704  玩具
tItemFace[3330685] = 2917
tItemFace[3330686] = 2918
tItemFace[3330687] = 2919
tItemFace[3330688] = 2920
tItemFace[3330689] = 2921
tItemFace[3330690] = 2922
tItemFace[3330691] = 2923
tItemFace[3330692] = 2924
tItemFace[3330693] = 2925
tItemFace[3330694] = 2926
tItemFace[3330695] = 2927
tItemFace[3330696] = 2928
tItemFace[3330697] = 2929
tItemFace[3330698] = 2930
tItemFace[3330699] = 2931
tItemFace[3330700] = 2932
tItemFace[3330701] = 2933
tItemFace[3330702] = 2934
tItemFace[3330703] = 2935
tItemFace[3330704] = 2936

for ItemId = 3330685,3330704 do
tItem[ItemId] = tItem[ItemId] or {}
tItem[ItemId]["DialogueText"] = tChildrenDayToy_Text[ItemId]
tItem[ItemId]["Text1-1"] = {111,112}
tItem[ItemId]["tOption1-1"] = {111,112}
tItem[ItemId]["Option111"] = tChildrenDayToy_Text[3330685]["Option111"]
tItem[ItemId]["Option112"] = tChildrenDayToy_Text[3330685]["Option112"]
tItem[ItemId]["OptionFunc111"] = "ChildrenDayToy_FirstCollect</N>"..ItemId--"收集玩具"
tItem[ItemId]["OptionFunc112"] = "ChildrenDayToy_AllCollect"--"一键收集玩具"
	
tItem[ItemId]["Function"] = function(nChildrenDayToy_ItemId,sChildrenDayToy_ItemName)
	local nChildrenDayToy_UserId = Get_UserId()
	-- 判断是否处于活动期内，过期删除
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		local nChildrenDayToy_Num = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		--过期删除log
		local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["Overtime"],nItemId,nChildrenDayToy_Num)
		Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		User_TalkChannel2005(tChildrenDayToy_Text["Sys_Msg"]["ToysTimeOut"])
		end 
		return
	end
	-- 判断是否为第一次收集，是这跳转至对白
	local nChildrenDayToy_FirstDate = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,2) 
	-- if not (nChildrenDayToy_FirstDate ~= nil and nChildrenDayToy_FirstDate >= 1) then
		LinkItemGossipFunc_New(nChildrenDayToy_ItemId,"1-1")
		return
	-- end
	
	-- 判断是否有该玩具
	-- if Item_ChkItem(nChildrenDayToy_ItemId) and Item_DelItem(nChildrenDayToy_ItemId) then
		-- 删除log
		-- local sChildrenDayToy_str = string.format(tChildrenDayToy_Log["InCase"],nChildrenDayToy_ItemId,1)
		-- Sys_SaveActionFestivalLog(sChildrenDayToy_str)
		-- local nChildrenDayToy_Date = ChildrenDayToy_GetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_UserId,1) 
		--掩码数量加1
		-- ChildrenDayToy_SetToysStc(tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Index"],tChildrenDayToy_Cont["Stc"][nChildrenDayToy_ItemId]["Pos"],nChildrenDayToy_Date+1,nChildrenDayToy_UserId,1) 
		--判断是否有玩具箱
		-- if not Item_ChkItem(tChildrenDayToy_Cont["ToysBox"]) then
			-- RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward["ToysBox"])
		-- end
		-- Sys_MsgBox(tChildrenDayToy_Text["Sys_Msg"]["InCase"])
		-- return
	-- end
end



	
end

--3330705-3330711  玩具收集礼盒
tItem[3330705] = tItem[3330705] or {}
tItem[3330705]["Function"] = function(nChildrenDayToy_ItemId,sChildrenDayToy_ItemName)
	--背包空间不足
	local nChildrenDayToy_Space = RewardTemplate_GetRewardSpace(tChildrenDayToy_Reward[nChildrenDayToy_ItemId])
	if not User_CheckLeftSpace(nChildrenDayToy_Space) then
		User_TalkChannel2005(string.format(tChildrenDayToy_Text["Sys_Msg"]["NoSpace2"],nChildrenDayToy_Space))
		return
	end
	--发奖
	RewardTemplate_UseItemAndMsg(tChildrenDayToy_Reward[nChildrenDayToy_ItemId])
	--获得积分
	ChildrenDayToy_AddScoreStc(tChildrenDayToy_Cont["Integral"][nChildrenDayToy_ItemId])
end
tItem[3330706] = tItem[3330705]
tItem[3330707] = tItem[3330705]
tItem[3330708] = tItem[3330705]
tItem[3330709] = tItem[3330705]
tItem[3330710] = tItem[3330705]
tItem[3330711] = tItem[3330705]


--3330712  童趣玩具箱
tItemFace[3330712] = 2937
tItem[3330712] = tItem[3330712] or {}
tItem[3330712]["Function"]=function(nChildrenDayToy_ItemId)
	ChildrenDayToy_DialogText(nChildrenDayToy_ItemId)
end
--主界面
tItem[3330712]["DialogueText"] = tChildrenDayToy_Text[3330712]
tItem[3330712]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tItem[3330712]["tOption1-1"] = {111,112,113}
tItem[3330712]["OptionFunc111"] = "ChildrenDayToy_FindMainNpc"--"前往兑换集齐奖励"
tItem[3330712]["OptionFunc112"] = "ChildrenDayToy_PutOutToy2</N>3330712"--"查看与取出玩具"
tItem[3330712]["OptionFunc113"] = "ChildrenDayToy_OpenWebDialog"--"查看童趣扭蛋冒险榜"跳转网页

--查看与取出玩具
tItem[3330712]["Text1-6"] = {161,162,163,164,165,166,167,168,169}
tItem[3330712]["tOption1-6"] = {161,162,163,164,165,166}
tItem[3330712]["OptionFunc161"]  = "ChildrenDayToy_PutOutToy1</N>3330712</N>1"--"取出征服限定玩具"
tItem[3330712]["OptionFunc162"]  = "ChildrenDayToy_PutOutToy1</N>3330712</N>2"--"取出华语限定玩具"
tItem[3330712]["OptionFunc163"]  = "ChildrenDayToy_PutOutToy1</N>3330712</N>3"--"取出英语限定玩具"
tItem[3330712]["OptionFunc164"]  = "ChildrenDayToy_PutOutToy1</N>3330712</N>4"--"取出西语限定玩具"
tItem[3330712]["OptionFunc165"]  = "ChildrenDayToy_PutOutToy1</N>3330712</N>5"--"取出阿语限定玩具"
tItem[3330712]["OptionFunc166"]  = "ChildrenDayToy_DialogText</N>3330712"--"返回首页"


--取出对应语种玩具
--征服
tItem[3330712]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tItem[3330712]["tOption2-1"] = {211,212,213,214,215}
tItem[3330712]["OptionFunc211"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330685"--"征服限定1"
tItem[3330712]["OptionFunc212"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330686"--"征服限定2"
tItem[3330712]["OptionFunc213"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330687"--"征服限定3"
tItem[3330712]["OptionFunc214"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330688"--"征服限定4"
tItem[3330712]["OptionFunc215"]  = "ChildrenDayToy_PutOutToy2</N>3330712"--"返回上一页"
--华语
tItem[3330712]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tItem[3330712]["tOption2-2"] = {221,222,223,224,225}
tItem[3330712]["OptionFunc221"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330689"--"华语限定1"
tItem[3330712]["OptionFunc222"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330690"--"华语限定2"
tItem[3330712]["OptionFunc223"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330691"--"华语限定3"
tItem[3330712]["OptionFunc224"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330692"--"华语限定4"
tItem[3330712]["OptionFunc225"]  = "ChildrenDayToy_PutOutToy2</N>3330712"--"返回上一页"
--英语
tItem[3330712]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tItem[3330712]["tOption2-3"] = {231,232,233,234,235}
tItem[3330712]["OptionFunc231"]  = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330693"--"英语限定1"
tItem[3330712]["OptionFunc232"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330694"--"英语限定2"
tItem[3330712]["OptionFunc233"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330695"--"英语限定3"
tItem[3330712]["OptionFunc234"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330696"--"英语限定4"
tItem[3330712]["OptionFunc235"]  = "ChildrenDayToy_PutOutToy2</N>3330712"--"返回上一页"
-- 西语
tItem[3330712]["Text2-4"] = {241,242,243,244,245,246,247,248,249}
tItem[3330712]["tOption2-4"] = {241,242,243,244,245}
tItem[3330712]["OptionFunc241"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330697"--"西语限定1"
tItem[3330712]["OptionFunc242"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330698"--"西语限定2"
tItem[3330712]["OptionFunc243"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330699"--"西语限定3"
tItem[3330712]["OptionFunc244"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330700"--"西语限定4"
tItem[3330712]["OptionFunc245"]  = "ChildrenDayToy_PutOutToy2</N>3330712"--"返回上一页"
-- 阿语
tItem[3330712]["Text2-5"] = {251,252,253,254,255,256,257,258,259}
tItem[3330712]["tOption2-5"] = {251,252,253,254,255}
tItem[3330712]["OptionFunc251"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330701"--"阿语限定1"
tItem[3330712]["OptionFunc252"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330702"--"阿语限定2"
tItem[3330712]["OptionFunc253"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330703"--"阿语限定3"
tItem[3330712]["OptionFunc254"] = "ChildrenDayToy_PutOutToy3</N>3330712</N>3330704"--"阿语限定4"
tItem[3330712]["OptionFunc255"]  = "ChildrenDayToy_PutOutToy2</N>3330712"--"返回上一页"



--接主NPC 26486 唐鸭鸭
--查看与领取收集奖励
tNpcGossip[26486]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110}
tNpcGossip[26486]["Text511"] = tChildrenDayToy_Text[3330712]["Text131"]
tNpcGossip[26486]["Text512"] = tChildrenDayToy_Text[3330712]["Text132"]
tNpcGossip[26486]["Text513"] = tChildrenDayToy_Text[3330712]["Text133"]
tNpcGossip[26486]["Text514"] = tChildrenDayToy_Text[3330712]["Text134"]
tNpcGossip[26486]["Text515"] = tChildrenDayToy_Text[3330712]["Text135"]
tNpcGossip[26486]["Text516"] = tChildrenDayToy_Text[3330712]["Text136"]
tNpcGossip[26486]["Text517"] = tChildrenDayToy_Text[3330712]["Text137"]
tNpcGossip[26486]["Text518"] = tChildrenDayToy_Text[3330712]["Text138"]
tNpcGossip[26486]["Text519"] = tChildrenDayToy_Text[3330712]["Text1314"]
tNpcGossip[26486]["Text5110"] = tChildrenDayToy_Text[3330712]["Text1315"]
tNpcGossip[26486]["tOption5-1"] = {511,512,513}
tNpcGossip[26486]["Option511"] = tChildrenDayToy_Text[3330712]["Option131"]
tNpcGossip[26486]["Option512"] = tChildrenDayToy_Text[3330712]["Option132"]
tNpcGossip[26486]["Option513"] = tChildrenDayToy_Text[3330712]["Option133"]
tNpcGossip[26486]["ChkFunc5-1"] = function ()
	local nChildrenDayToy_UserId = Get_UserId()
	tNpcGossip[26486]["Text514"] = tChildrenDayToy_Text[3330712]["Text134"]
	tNpcGossip[26486]["Text515"] = tChildrenDayToy_Text[3330712]["Text135"]
	tNpcGossip[26486]["Text516"] = tChildrenDayToy_Text[3330712]["Text136"]
	tNpcGossip[26486]["Text517"] = tChildrenDayToy_Text[3330712]["Text137"]
	tNpcGossip[26486]["Text518"] = tChildrenDayToy_Text[3330712]["Text138"]
	
	
	local tChildrenDayToy_Data = 0
	 for i=1,5 do
		-- 判断各语种限定玩具首次集齐奖励是否领取
		tChildrenDayToy_Data = ChildrenDayToy_GetToysStc(i,5,nChildrenDayToy_UserId,1)
		if tChildrenDayToy_Data >= 1 then 
			local tChildrenDayToy_Num = i+3
			local tChildrenDayToy_Num2 = i+8
			
			tNpcGossip[26486]["Text51"..tChildrenDayToy_Num] = tChildrenDayToy_Text[3330712]["Text13"..tChildrenDayToy_Num2]
			
		end
		
	 end
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end
tNpcGossip[26486]["OptionFunc511"] = "ChildrenDayToy_RewardText</N>26486"--兑换收集奖励（单套）
tNpcGossip[26486]["OptionFunc512"] = "ChildrenDayToy_AllRewardText</N>26486"--兑换收集奖励（全套）
tNpcGossip[26486]["OptionPoint513"] = "1-5"--返回上一页



--兑换收集奖励（单套）
tNpcGossip[26486]["Text5-4"] = {541,542,543,544,545,546,547,548,549,5410}
tNpcGossip[26486]["Text541"] =  tChildrenDayToy_Text[3330712]["Text311"]
tNpcGossip[26486]["Text542"] =  tChildrenDayToy_Text[3330712]["Text312"]
tNpcGossip[26486]["Text543"] =  tChildrenDayToy_Text[3330712]["Text313"]
tNpcGossip[26486]["Text544"] =  tChildrenDayToy_Text[3330712]["Text314"]
tNpcGossip[26486]["Text545"] =  tChildrenDayToy_Text[3330712]["Text315"]
tNpcGossip[26486]["Text546"] =  tChildrenDayToy_Text[3330712]["Text316"]
tNpcGossip[26486]["Text547"] =  tChildrenDayToy_Text[3330712]["Text317"]
tNpcGossip[26486]["Text548"] =  tChildrenDayToy_Text[3330712]["Text318"]
tNpcGossip[26486]["Text549"] =  tChildrenDayToy_Text[3330712]["Text3114"]
tNpcGossip[26486]["Text5410"] = tChildrenDayToy_Text[3330712]["Text3115"]
tNpcGossip[26486]["tOption5-4"] = {541,542,543,544,545,546}
tNpcGossip[26486]["Option541"] = tChildrenDayToy_Text[3330712]["Option311"]
tNpcGossip[26486]["Option542"] = tChildrenDayToy_Text[3330712]["Option312"]
tNpcGossip[26486]["Option543"] = tChildrenDayToy_Text[3330712]["Option313"]
tNpcGossip[26486]["Option544"] = tChildrenDayToy_Text[3330712]["Option314"]
tNpcGossip[26486]["Option545"] = tChildrenDayToy_Text[3330712]["Option315"]
tNpcGossip[26486]["Option546"] = tChildrenDayToy_Text[3330712]["Option316"]
tNpcGossip[26486]["ChkFunc5-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end
tNpcGossip[26486]["OptionFunc541"] = "ChildrenDayToy_ConfirmToysReward</N>26486</N>1"--领取集齐征服限定奖励
tNpcGossip[26486]["OptionFunc542"] = "ChildrenDayToy_ConfirmToysReward</N>26486</N>2"--领取集齐华语限定奖励
tNpcGossip[26486]["OptionFunc543"] = "ChildrenDayToy_ConfirmToysReward</N>26486</N>3"--领取集齐英语限定奖励
tNpcGossip[26486]["OptionFunc544"] = "ChildrenDayToy_ConfirmToysReward</N>26486</N>4"--领取集齐西语限定奖励
tNpcGossip[26486]["OptionFunc545"] = "ChildrenDayToy_ConfirmToysReward</N>26486</N>5"--领取集齐阿语限定奖励
tNpcGossip[26486]["OptionPoint546"] = "5-1"--返回上一页

--二次确认
tNpcGossip[26486]["Text5-6"] = {561}
tNpcGossip[26486]["Text561"] =  tChildrenDayToy_Text[3330712]["Text561"]
tNpcGossip[26486]["tOption5-6"] = {561,562}
tNpcGossip[26486]["Option561"] = tChildrenDayToy_Text[3330712]["Option561"]
tNpcGossip[26486]["Option562"] = tChildrenDayToy_Text[3330712]["Option562"]


--兑换收集奖励（全套）
tNpcGossip[26486]["Text5-5"] = {551,552,553,554,555,556,557}
tNpcGossip[26486]["Text551"] =  tChildrenDayToy_Text[3330712]["Text141"]
tNpcGossip[26486]["Text552"] =  tChildrenDayToy_Text[3330712]["Text142"]
tNpcGossip[26486]["Text553"] =  tChildrenDayToy_Text[3330712]["Text143"]
tNpcGossip[26486]["Text554"] =  tChildrenDayToy_Text[3330712]["Text144"]
tNpcGossip[26486]["Text555"] =  tChildrenDayToy_Text[3330712]["Text145"]
tNpcGossip[26486]["Text556"] =  tChildrenDayToy_Text[3330712]["Text145"]
tNpcGossip[26486]["Text557"] =  tChildrenDayToy_Text[3330712]["Text3115"]
tNpcGossip[26486]["tOption5-5"] = {551,552}
tNpcGossip[26486]["Option551"] = tChildrenDayToy_Text[3330712]["Option141"]
tNpcGossip[26486]["Option552"] = tChildrenDayToy_Text[3330712]["Option143"]
tNpcGossip[26486]["ChkFunc5-5"] = function ()
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end
tNpcGossip[26486]["OptionFunc551"] = "ChildrenDayToy_AllToysReward</N>26486"--领取集齐全部玩具豪礼
tNpcGossip[26486]["OptionPoint552"] = "5-1"--返回上一页




-- 3330749,'儿童节武器外套可选包'
tItemFace[3330749] = 2938
tItem[3330749] = tItem[3330749] or {}
tItem[3330749]["DialogueText"] = tChildrenDayToy_Text[3330749]
tItem[3330749]["Text1-1"] = {111}
tItem[3330749]["tOption1-1"] = {111,112}
tItem[3330749]["OptionFunc111"] = "ChildrenDayToy_ChoosePack</N>3330749</N>1"
tItem[3330749]["OptionFunc112"] = "ChildrenDayToy_ChoosePack</N>3330749</N>2"



---------------------------------互动部分---------------------------------------------
-- 互动接口
tProcessInteract["tFunction"] = tProcessInteract["tFunction"] or {}
table.insert(tProcessInteract["tFunction"],ChildrenDayToy_Choose)
---------------------------------------------上线触发---------------------------------------------
--上线给玩家加上任务面板、隔天给玩家寄回玩具
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ChildrenDayToy_Login)