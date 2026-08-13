------------------------------------------------------------------------------------
--Name:		170612[英文征服][活动脚本]7月暑期拼图活动(7.13-8.1)
--Creator: 	兰瑞妹
--Created:	2017/06/19
------------------------------------------------------------------------------------

-- 命名前缀
-- JulySummer_Puzzle_

-- logid 12000759

-- #stc 掩码说明 
-- #stc(162,75) 玩家兑换获得总分数
-- #stc(163,17) 玩家排位赛上限一次

-- GlobalId 51621
--动态存储表说明
----------	存储位	--存储说明--
----- data1--	记录第一名玩家分数
	-- data2--记录第一名玩家id
	-- datastr1--玩家名字
	-- datastr2--玩家领奖否
	-- data3 Beautiful +SUMMER 单日限量兑换300份
	-- data4 SUMMER + Carnival 单日限量兑换400份
	-- data5 CONQUER + Carnival 单日限量兑换500份
-- datastr5 清空标志

-- 常量表
local tJulySummer_Puzzle_Count = {}
	-- 活动时间
	tJulySummer_Puzzle_Count["ActivityTime"] = "2017-07-13 00:00 2017-08-01 23:59"
	--清理时间
	tJulySummer_Puzzle_Count["ClearTime"] = "00:00 00:02"
	
	-- 动态码id
	tJulySummer_Puzzle_Count["GlobalId"] = 51621
	
	-- 外套礼包名称索引
	tJulySummer_Puzzle_Count["CoatName"] = {}
	tJulySummer_Puzzle_Count["CoatName"][200575] = "Option111"
	tJulySummer_Puzzle_Count["CoatName"][200524] = "Option112"
-- Log表
local tJulySummer_Puzzle_Log = {}
	-- 过期删除
	tJulySummer_Puzzle_Log["OverDue"] = "0,0,%d,1,12000759,2,0,0"
	
-- 存放动态表数据
local tJulySummer_Puzzle_Data = {}
	-- 初始化第一名表格
	tJulySummer_Puzzle_Data["Ranking"] = {}
	-- 兑换限量
	tJulySummer_Puzzle_Data["Limit"] = {}

-- stc掩码
local tJulySummer_Puzzle_Stc = {}
	-- 玩家兑换获得总分数
	tJulySummer_Puzzle_Stc[1] = {}
	tJulySummer_Puzzle_Stc[1]["EventType"] = 162
	tJulySummer_Puzzle_Stc[1]["DataType"] = 75
	-- 玩家排位赛上限一次
	tJulySummer_Puzzle_Stc[2] = {}
	tJulySummer_Puzzle_Stc[2]["EventType"] = 163
	tJulySummer_Puzzle_Stc[2]["DataType"] = 17
	tJulySummer_Puzzle_Stc[2]["Limit"] = 1
	
-- 奖励表
local tJulySummer_Puzzle_Reward = {}
	-- 3303790,'暑期欢乐大礼包'
	tJulySummer_Puzzle_Reward[3303790] = {}
	tJulySummer_Puzzle_Reward[3303790]["LogId"] = 12000759
	tJulySummer_Puzzle_Reward[3303790]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303790]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303790]["DeleteItem"][1]["Id"] = 3303790
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][1]["Id"] = 193505
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][2] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][2]["Id"] = 3003124
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][2]["Attr"] = "0 20 3"
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][3] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][3]["Id"] = 724002
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][3]["Attr"] = "0 3"
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][4] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][4]["Id"] = 3009002
	tJulySummer_Puzzle_Reward[3303790]["RewardItem"][4]["Attr"] = "0 2 0 2880 1"
	tJulySummer_Puzzle_Reward[3303790]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardStrengthValue"]["Value"] = 5000
	tJulySummer_Puzzle_Reward[3303790]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303790]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_Reward[3303790]["Talk"] = tJulySummer_Puzzle_Text[3303790]["Talk"]
	-- 3303791,'暑期幸运大礼包'
	tJulySummer_Puzzle_Reward[3303791] = {}
	tJulySummer_Puzzle_Reward[3303791]["LogId"] = 12000759
	tJulySummer_Puzzle_Reward[3303791]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303791]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303791]["DeleteItem"][1]["Id"] = 3303791
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][1]["Id"] = 193205
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][2] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][2]["Id"] = 1088000
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][2]["Attr"] = "0 1"
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][3] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][3]["Id"] = 3009002
	tJulySummer_Puzzle_Reward[3303791]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
	tJulySummer_Puzzle_Reward[3303791]["RewardEMoneyMono"] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardEMoneyMono"]["Value"] = 300
	tJulySummer_Puzzle_Reward[3303791]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardStrengthValue"]["Value"] = 3000
	tJulySummer_Puzzle_Reward[3303791]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303791]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_Reward[3303791]["Talk"] = tJulySummer_Puzzle_Text[3303791]["Talk"]
	-- 3303792,'暑期福气大礼包'
	tJulySummer_Puzzle_Reward[3303792] = {}
	tJulySummer_Puzzle_Reward[3303792]["LogId"] = 12000759
	tJulySummer_Puzzle_Reward[3303792]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303792]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303792]["DeleteItem"][1]["Id"] = 3303792
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][1]["Id"] = 3009001
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][2] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][2]["Id"] = 723694
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][2]["Attr"] = "0 1"
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][3] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][3]["Id"] = 730004
	tJulySummer_Puzzle_Reward[3303792]["RewardItem"][3]["Attr"] = "0 1"
	tJulySummer_Puzzle_Reward[3303792]["RewardEMoneyMono"] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardEMoneyMono"]["Value"] = 200
	tJulySummer_Puzzle_Reward[3303792]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardStrengthValue"]["Value"] = 1000
	tJulySummer_Puzzle_Reward[3303792]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303792]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_Reward[3303792]["Talk"] = tJulySummer_Puzzle_Text[3303792]["Talk"]
	-- 3303793,'暑期幸福大礼包'
	tJulySummer_Puzzle_Reward[3303793] = {}
	tJulySummer_Puzzle_Reward[3303793]["LogId"] = 12000759
	tJulySummer_Puzzle_Reward[3303793]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303793]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303793]["DeleteItem"][1]["Id"] = 3303793
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][1]["Id"] = 729481
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][1]["Attr"] = "0 2"
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][2] = {}
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][2]["Id"] = 3003124
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][2]["Attr"] = "0 2 3"
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][3] = {}
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][3]["Id"] = 3002029
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][4] = {}
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][4]["Id"] = 3003126
	tJulySummer_Puzzle_Reward[3303793]["RewardItem"][4]["Attr"] = "0 2 3"
	tJulySummer_Puzzle_Reward[3303793]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303793]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_Reward[3303793]["Talk"] = tJulySummer_Puzzle_Text[3303793]["Talk"]
	-- 3303794,'暑期魅力大礼包'
	tJulySummer_Puzzle_Reward[3303794] = {}
	tJulySummer_Puzzle_Reward[3303794]["LogId"] = 12000759
	tJulySummer_Puzzle_Reward[3303794]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303794]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303794]["DeleteItem"][1]["Id"] = 3303794
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][1]["Id"] = 723727
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][1]["Attr"] = "0 1 3"
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][2] = {}
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][2]["Id"] = 3009000
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][3] = {}
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][3]["Id"] = 730001
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][3]["Attr"] = "0 2 3"
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][4] = {}
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][4]["Id"] = 3008994
	tJulySummer_Puzzle_Reward[3303794]["RewardItem"][4]["Attr"] = "0 2"
	tJulySummer_Puzzle_Reward[3303794]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303794]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_Reward[3303794]["Talk"] = tJulySummer_Puzzle_Text[3303794]["Talk"]
	
	-- 3303927,'60天时效外套可选包'
	tJulySummer_Puzzle_Reward[3303927] = {}
	-- 1% Blessed AstralPhoenix(60-days)
	tJulySummer_Puzzle_Reward[3303927][200575] = {}
	tJulySummer_Puzzle_Reward[3303927][200575]["LogId"] = 12000759
	-- tJulySummer_Puzzle_Reward[3303927][200575]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Reward[3303927][200575]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303927][200575]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303927][200575]["DeleteItem"][1]["Id"] = 3303927
	tJulySummer_Puzzle_Reward[3303927][200575]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303927][200575]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303927][200575]["RewardItem"][1]["Id"] = 200575
	tJulySummer_Puzzle_Reward[3303927][200575]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1"
	tJulySummer_Puzzle_Reward[3303927][200575]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303927][200575]["RewardEffect"]["Effect"] = "angelwing"
	-- 1% Blessed GentleAntelope[Exclusive](60-days)
	tJulySummer_Puzzle_Reward[3303927][200524] = {}
	tJulySummer_Puzzle_Reward[3303927][200524]["LogId"] = 12000759
	-- tJulySummer_Puzzle_Reward[3303927][200524]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Reward[3303927][200524]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303927][200524]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303927][200524]["DeleteItem"][1]["Id"] = 3303927
	tJulySummer_Puzzle_Reward[3303927][200524]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303927][200524]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303927][200524]["RewardItem"][1]["Id"] = 200524
	tJulySummer_Puzzle_Reward[3303927][200524]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1"
	tJulySummer_Puzzle_Reward[3303927][200524]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303927][200524]["RewardEffect"]["Effect"] = "angelwing"
	-- 3303928,'暑期作战嘉奖包'
	tJulySummer_Puzzle_Reward[3303928] = {}
	tJulySummer_Puzzle_Reward[3303928]["LogId"] = 12000759
	-- tJulySummer_Puzzle_Reward[3303928]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Reward[3303928]["DeleteItem"] = {}
	tJulySummer_Puzzle_Reward[3303928]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303928]["DeleteItem"][1]["Id"] = 3303928
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"][1]["Id"] = 730005
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"][2] = {}
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"][2]["Id"] = 3009002
	tJulySummer_Puzzle_Reward[3303928]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tJulySummer_Puzzle_Reward[3303928]["RewardEMoneyMono"] = {}
	tJulySummer_Puzzle_Reward[3303928]["RewardEMoneyMono"]["Value"] = 50
	tJulySummer_Puzzle_Reward[3303928]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_Reward[3303928]["RewardStrengthValue"]["Value"] = 2000
	tJulySummer_Puzzle_Reward[3303928]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward[3303928]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 排名发奖
	tJulySummer_Puzzle_Reward["Ranking"] = {}
	tJulySummer_Puzzle_Reward["Ranking"]["LogId"] = 12000759
	tJulySummer_Puzzle_Reward["Ranking"]["RewardItem"] = {}
	tJulySummer_Puzzle_Reward["Ranking"]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Reward["Ranking"]["RewardItem"][1]["Id"] = 3303928
	tJulySummer_Puzzle_Reward["Ranking"]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Reward["Ranking"]["RewardEffect"] = {}
	tJulySummer_Puzzle_Reward["Ranking"]["RewardEffect"]["Effect"] = "angelwing"
	
-- 兑换给奖励（兑换表还是对白）
local tJulySummer_Puzzle_Exchange = {}
	-- Beautiful +SUMMER
	tJulySummer_Puzzle_Exchange[3303630] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["LogId"] = 12000759
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardSocre"] = 6
	tJulySummer_Puzzle_Exchange[3303630][3303629]["Limit"] = 300
	tJulySummer_Puzzle_Exchange[3303630][3303629]["Pos"] = 3
	tJulySummer_Puzzle_Exchange[3303630][3303629]["EmoneyLog"] = "350	20612	0	0	1	"
	tJulySummer_Puzzle_Exchange[3303630][3303629]["DeleteItem"] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["DeleteItem"][1]["Id"] = 3303630
	tJulySummer_Puzzle_Exchange[3303630][3303629]["DeleteItem"][2] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["DeleteItem"][2]["Id"] = 3303629
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardItem"] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardItem"][1]["Id"] = 3303790
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardEffect"] = {}
	tJulySummer_Puzzle_Exchange[3303630][3303629]["RewardEffect"]["Effect"] = "angelwing"
	-- tJulySummer_Puzzle_Exchange[3303630][3303629]["Talk"] = tJulySummer_Puzzle_Text[3303630]["Talk"]
	-- SUMMER + Carnival
	tJulySummer_Puzzle_Exchange[3303629] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["LogId"] = 12000759
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardSocre"] = 5
	tJulySummer_Puzzle_Exchange[3303629][3303631]["Limit"] = 400
	tJulySummer_Puzzle_Exchange[3303629][3303631]["Pos"] = 4
	tJulySummer_Puzzle_Exchange[3303629][3303631]["EmoneyLog"] = "350	20613	0	0	1	"
	tJulySummer_Puzzle_Exchange[3303629][3303631]["DeleteItem"] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["DeleteItem"][1]["Id"] = 3303629
	tJulySummer_Puzzle_Exchange[3303629][3303631]["DeleteItem"][2] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["DeleteItem"][2]["Id"] = 3303631
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardItem"] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardItem"][1]["Id"] = 3303791
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardEffect"] = {}
	tJulySummer_Puzzle_Exchange[3303629][3303631]["RewardEffect"]["Effect"] = "angelwing"
	-- tJulySummer_Puzzle_Exchange[3303629][3303631]["Talk"] = tJulySummer_Puzzle_Text[3303629]["Talk"]
	-- CONQUER + Carnival
	tJulySummer_Puzzle_Exchange[3303628] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["LogId"] = 12000759
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardSocre"] = 4
	tJulySummer_Puzzle_Exchange[3303628][3303631]["Limit"] = 500
	tJulySummer_Puzzle_Exchange[3303628][3303631]["Pos"] = 5
	tJulySummer_Puzzle_Exchange[3303628][3303631]["EmoneyLog"] = "350	20614	0	0	1	"
	tJulySummer_Puzzle_Exchange[3303628][3303631]["DeleteItem"] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["DeleteItem"][1]["Id"] = 3303628
	tJulySummer_Puzzle_Exchange[3303628][3303631]["DeleteItem"][2] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["DeleteItem"][2]["Id"] = 3303631
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardItem"] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardItem"][1]["Id"] = 3303792
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardEffect"] = {}
	tJulySummer_Puzzle_Exchange[3303628][3303631]["RewardEffect"]["Effect"] = "angelwing"
	-- tJulySummer_Puzzle_Exchange[3303628][3303631]["Talk"] = tJulySummer_Puzzle_Text[3303628]["Talk"]
	-- HAPPY +CONQUER
	tJulySummer_Puzzle_Exchange[3303633] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["LogId"] = 12000759
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardSocre"] = 2
	tJulySummer_Puzzle_Exchange[3303633][3303628]["EmoneyLog"] = "350	20615	0	0	1	"
	tJulySummer_Puzzle_Exchange[3303633][3303628]["DeleteItem"] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["DeleteItem"][1]["Id"] = 3303633
	tJulySummer_Puzzle_Exchange[3303633][3303628]["DeleteItem"][2] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["DeleteItem"][2]["Id"] = 3303628
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardItem"] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardItem"][1]["Id"] = 3303793
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardEffect"] = {}
	tJulySummer_Puzzle_Exchange[3303633][3303628]["RewardEffect"]["Effect"] = "angelwing"
	-- tJulySummer_Puzzle_Exchange[3303633][3303628]["Talk"] = tJulySummer_Puzzle_Text[3303633]["Talk"]
	-- 14 + CONQUER
	tJulySummer_Puzzle_Exchange[3303632] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["LogId"] = 12000759
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardSocre"] = 2
	tJulySummer_Puzzle_Exchange[3303632][3303628]["EmoneyLog"] = "350	20616	0	0	1	"
	tJulySummer_Puzzle_Exchange[3303632][3303628]["DeleteItem"] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["DeleteItem"][1]["Id"] = 3303632
	tJulySummer_Puzzle_Exchange[3303632][3303628]["DeleteItem"][2] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["DeleteItem"][2]["Id"] = 3303628
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardItem"] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardItem"][1] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardItem"][1]["Id"] = 3303794
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardEffect"] = {}
	tJulySummer_Puzzle_Exchange[3303632][3303628]["RewardEffect"]["Effect"] = "angelwing"
	-- tJulySummer_Puzzle_Exchange[3303632][3303628]["Talk"] = tJulySummer_Puzzle_Text[3303632]["Talk"]
	
-- 过期删除
local tJulySummer_Puzzle_OverDelete = {}
	-- 3303628,'conquer字条'
	tJulySummer_Puzzle_OverDelete[3303628] = {}
	tJulySummer_Puzzle_OverDelete[3303628]["LogId"] = 12000759
	-- tJulySummer_Puzzle_OverDelete[3303628]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_OverDelete[3303628]["DeleteItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303628]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303628]["DeleteItem"][1]["Id"] = 3303628
	tJulySummer_Puzzle_OverDelete[3303628]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_OverDelete[3303628]["RewardStrengthValue"]["Value"] = 200
	tJulySummer_Puzzle_OverDelete[3303628]["RewardEffect"] = {}
	tJulySummer_Puzzle_OverDelete[3303628]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_OverDelete[3303628]["Talk"] = tJulySummer_Puzzle_Text[3303628]["Over"]
	-- 3303629,'Summer字条'
	tJulySummer_Puzzle_OverDelete[3303629] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["LogId"] = 12000759
	-- tJulySummer_Puzzle_OverDelete[3303629]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_OverDelete[3303629]["DeleteItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["DeleteItem"][1]["Id"] = 3303629
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"][1]["Id"] = 3009000
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"][2] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"][2]["Id"] = 711083
	tJulySummer_Puzzle_OverDelete[3303629]["RewardItem"][2]["Attr"] = "0 1 3"
	tJulySummer_Puzzle_OverDelete[3303629]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["RewardStrengthValue"]["Value"] = 200
	tJulySummer_Puzzle_OverDelete[3303629]["RewardEffect"] = {}
	tJulySummer_Puzzle_OverDelete[3303629]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_OverDelete[3303629]["Talk"] = tJulySummer_Puzzle_Text[3303629]["Over"]
	-- 3303630,'Beautiful字条'
	tJulySummer_Puzzle_OverDelete[3303630] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["LogId"] = 12000759
	-- tJulySummer_Puzzle_OverDelete[3303630]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_OverDelete[3303630]["DeleteItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["DeleteItem"][1]["Id"] = 3303630
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"][1]["Id"] = 3009001
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"][2] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"][2]["Id"] = 711083
	tJulySummer_Puzzle_OverDelete[3303630]["RewardItem"][2]["Attr"] = "0 3 3"
	tJulySummer_Puzzle_OverDelete[3303630]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["RewardStrengthValue"]["Value"] = 500
	tJulySummer_Puzzle_OverDelete[3303630]["RewardEffect"] = {}
	tJulySummer_Puzzle_OverDelete[3303630]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_OverDelete[3303630]["Talk"] = tJulySummer_Puzzle_Text[3303630]["Over"]
	-- 3303631,'Carnival字条'
	tJulySummer_Puzzle_OverDelete[3303631] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["LogId"] = 12000759
	-- tJulySummer_Puzzle_OverDelete[3303631]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_OverDelete[3303631]["DeleteItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["DeleteItem"][1]["Id"] = 3303631
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"][1]["Id"] = 3009001
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"][2] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"][2]["Id"] = 711083
	tJulySummer_Puzzle_OverDelete[3303631]["RewardItem"][2]["Attr"] = "0 2 3"
	tJulySummer_Puzzle_OverDelete[3303631]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["RewardStrengthValue"]["Value"] = 300
	tJulySummer_Puzzle_OverDelete[3303631]["RewardEffect"] = {}
	tJulySummer_Puzzle_OverDelete[3303631]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_OverDelete[3303631]["Talk"] = tJulySummer_Puzzle_Text[3303631]["Over"]
	-- 3303632,'14字条'
	tJulySummer_Puzzle_OverDelete[3303632] = {}
	tJulySummer_Puzzle_OverDelete[3303632]["LogId"] = 12000759
	-- tJulySummer_Puzzle_OverDelete[3303632]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_OverDelete[3303632]["DeleteItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303632]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303632]["DeleteItem"][1]["Id"] = 3303632
	tJulySummer_Puzzle_OverDelete[3303632]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_OverDelete[3303632]["RewardStrengthValue"]["Value"] = 200
	tJulySummer_Puzzle_OverDelete[3303632]["RewardEffect"] = {}
	tJulySummer_Puzzle_OverDelete[3303632]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_OverDelete[3303632]["Talk"] = tJulySummer_Puzzle_Text[3303632]["Over"]
	-- 3303633,'Happy字条'
	tJulySummer_Puzzle_OverDelete[3303633] = {}
	tJulySummer_Puzzle_OverDelete[3303633]["LogId"] = 12000759
	-- tJulySummer_Puzzle_OverDelete[3303633]["RewardNoNeedTip"] = 1
	tJulySummer_Puzzle_OverDelete[3303633]["DeleteItem"] = {}
	tJulySummer_Puzzle_OverDelete[3303633]["DeleteItem"][1] = {}
	tJulySummer_Puzzle_OverDelete[3303633]["DeleteItem"][1]["Id"] = 3303633
	tJulySummer_Puzzle_OverDelete[3303633]["RewardStrengthValue"] = {}
	tJulySummer_Puzzle_OverDelete[3303633]["RewardStrengthValue"]["Value"] = 200
	tJulySummer_Puzzle_OverDelete[3303633]["RewardEffect"] = {}
	tJulySummer_Puzzle_OverDelete[3303633]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_OverDelete[3303633]["Talk"] = tJulySummer_Puzzle_Text[3303633]["Over"]
	
local  tJulySummer_Puzzle_FindWay = {}
	tJulySummer_Puzzle_FindWay[1] = {}
	tJulySummer_Puzzle_FindWay[1]["PosX"] = 237
	tJulySummer_Puzzle_FindWay[1]["PosY"] = 235
	tJulySummer_Puzzle_FindWay[1]["MapId"] = 1002
	tJulySummer_Puzzle_FindWay[1]["NpcId"] = 21907
	
-- 正气令和排位赛获得碎片
-- CONQUER/14/HAPPY（走30%/35%/35%概率，随机获得一个）
local tJulySummer_Puzzle_PieceRandom = {}
	tJulySummer_Puzzle_PieceRandom[1] = {}
	tJulySummer_Puzzle_PieceRandom[1]["ItemChanceSum"] = 10000
	tJulySummer_Puzzle_PieceRandom[1][1] = {}
	tJulySummer_Puzzle_PieceRandom[1][1]["RandomItemChanceType"] = 2
	tJulySummer_Puzzle_PieceRandom[1][1]["ItemChance"] = 3000
	tJulySummer_Puzzle_PieceRandom[1][1]["RewardItem"] = {}
	tJulySummer_Puzzle_PieceRandom[1][1]["RewardItem"][1] = {}
	tJulySummer_Puzzle_PieceRandom[1][1]["RewardItem"][1]["Id"] = 3303628
	tJulySummer_Puzzle_PieceRandom[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_PieceRandom[1][1]["Log"] = "0,0,0,0,12000759,2,3303628,1"
	tJulySummer_Puzzle_PieceRandom[1][1]["RewardEffect"] = {}
	tJulySummer_Puzzle_PieceRandom[1][1]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_PieceRandom[1][2] = {}
	tJulySummer_Puzzle_PieceRandom[1][2]["RandomItemChanceType"] = 2
	tJulySummer_Puzzle_PieceRandom[1][2]["ItemChance"] = 3500
	tJulySummer_Puzzle_PieceRandom[1][2]["RewardItem"] = {}
	tJulySummer_Puzzle_PieceRandom[1][2]["RewardItem"][1] = {}
	tJulySummer_Puzzle_PieceRandom[1][2]["RewardItem"][1]["Id"] = 3303632
	tJulySummer_Puzzle_PieceRandom[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_PieceRandom[1][2]["Log"] = "0,0,0,0,12000759,2,3303632,1"
	tJulySummer_Puzzle_PieceRandom[1][2]["RewardEffect"] = {}
	tJulySummer_Puzzle_PieceRandom[1][2]["RewardEffect"]["Effect"] = "angelwing"
	tJulySummer_Puzzle_PieceRandom[1][3] = {}
	tJulySummer_Puzzle_PieceRandom[1][3]["RandomItemChanceType"] = 2
	tJulySummer_Puzzle_PieceRandom[1][3]["ItemChance"] = 3500
	tJulySummer_Puzzle_PieceRandom[1][3]["RewardItem"] = {}
	tJulySummer_Puzzle_PieceRandom[1][3]["RewardItem"][1] = {}
	tJulySummer_Puzzle_PieceRandom[1][3]["RewardItem"][1]["Id"] = 3303633
	tJulySummer_Puzzle_PieceRandom[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulySummer_Puzzle_PieceRandom[1][3]["Log"] = "0,0,0,0,12000759,2,3303633,1"
	tJulySummer_Puzzle_PieceRandom[1][3]["RewardEffect"] = {}
	tJulySummer_Puzzle_PieceRandom[1][3]["RewardEffect"]["Effect"] = "angelwing"
	
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function JulySummer_Puzzle_GetStcValue(nIndex)
	local nEvent = tJulySummer_Puzzle_Stc[nIndex]["EventType"]
	local nType = tJulySummer_Puzzle_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--设置掩码值
function JulySummer_Puzzle_SetStcValue(nIndex,nType,nData)
	local nEvent = tJulySummer_Puzzle_Stc[nIndex]["EventType"]
	local nType = tJulySummer_Puzzle_Stc[nIndex]["DataType"]
	
	if nType == 1 then
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		Task_AddStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

-----------------------------------------------------正气令和排位赛获得碎片
function JulySummer_Puzzle_GetAward(nIndex)
	-- 判断新服
	local nGlobalId = 51639
	local nServer = Get_SysDynaGlobalData(nGlobalId,0)
	if nServer >= 1 then
		return
	end

	if not Sys_ChkFullTime(tJulySummer_Puzzle_Count["ActivityTime"]) then
		return
	end
	
	-- 排位赛每日只能获得一次
	if nIndex == 2 then
		local nEventType = tJulySummer_Puzzle_Stc[2]["EventType"]
		local nDataType = tJulySummer_Puzzle_Stc[2]["DataType"]
		local nComplete = tJulySummer_Puzzle_Stc[2]["Limit"]
		-- 隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		
		if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
			return
		end
		
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	--获得奖励
	RewardTemplate_NewRandom(tJulySummer_Puzzle_PieceRandom,1)
end

---------------------------------------------------暑期拼图指挥官 21907
-- 兑换奖励
function JulySummer_Puzzle_ExchangeItem(nNpcId,nFirstId,nEndId)
	if not Sys_ChkFullTime(tJulySummer_Puzzle_Count["ActivityTime"]) then
		local sUserName = tJulySummer_Puzzle_Data["Ranking"].UserName
		local sText = tJulySummer_Puzzle_Text[nNpcId]["Text122"]
		tNpcGossip[nNpcId]["Text122"] = string.format(sText,sUserName)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断上限
	local tReward =  tJulySummer_Puzzle_Exchange[nFirstId][nEndId]
	local nLimit = tReward["Limit"]
	local nNowNum = tJulySummer_Puzzle_Data["Limit"][nFirstId]
	local nRewardId = tReward["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nRewardId)
	if nNowNum ~= nil and nNowNum >= nLimit then
		local sText = tJulySummer_Puzzle_Text[nNpcId]["Text231"]
		tNpcGossip[nNpcId]["Text231"]  = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 二次确认
	local sItemDesc = tJulySummer_Puzzle_Text[nRewardId]["ItemDesc"]
	tNpcGossip[nNpcId]["OptionFunc211"] = "JulySummer_Puzzle_SureExchange</N>"..nNpcId.."</N>"..nFirstId.."</N>"..nEndId
	local sTip = tJulySummer_Puzzle_Text[nNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] = string.format(sTip,sItemDesc)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 确认兑换奖励
function JulySummer_Puzzle_SureExchange(nNpcId,nFirstId,nEndId)
	if not Sys_ChkFullTime(tJulySummer_Puzzle_Count["ActivityTime"]) then
		local sUserName = tJulySummer_Puzzle_Data["Ranking"].UserName
		local sText = tJulySummer_Puzzle_Text[nNpcId]["Text122"]
		tNpcGossip[nNpcId]["Text122"] = string.format(sText,sUserName)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 背包中已经有
	if not Item_ChkItem(nFirstId) or not Item_ChkItem(nEndId) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 背包不足
	local tReward =  tJulySummer_Puzzle_Exchange[nFirstId][nEndId]
	local nRewadSpace =RewardTemplate_GetRewardSpace(tReward)
	local nDelSpace = RewardTemplate_GetDelSpace(tReward)
	local nSpace = math.abs(nDelSpace-nRewadSpace)
	if not User_CheckLeftSpace(nSpace) then
		local sText = tJulySummer_Puzzle_Text[nNpcId]["Text251"] 
		tNpcGossip[nNpcId]["Text251"]  = string.format(sText,nSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 判断上限
	local nLimit = tReward["Limit"]
	local nNowNum = tJulySummer_Puzzle_Data["Limit"][nFirstId]
	local nRewardId = tReward["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nRewardId)
	if nNowNum ~= nil and nNowNum >= nLimit then
		local sText = tJulySummer_Puzzle_Text[nNpcId]["Text231"]
		tNpcGossip[nNpcId]["Text231"]  = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 获得分数掩码
	local nScore = tReward["RewardSocre"]
	JulySummer_Puzzle_SetStcValue(1,2,nScore)
	-- 上限加
	if  nNowNum ~= nil then
		tJulySummer_Puzzle_Data["Limit"][nFirstId] = nNowNum+1
		local nGlobalId = tJulySummer_Puzzle_Count["GlobalId"]
		local nPos = tReward["Pos"]
		Sys_SetSynaGlobalData(nGlobalId,nPos,tJulySummer_Puzzle_Data["Limit"][nFirstId])
	end
	
	-- 刷新排行榜
	local nUserScore = JulySummer_Puzzle_GetStcValue(1)
	local nMaxScore = tJulySummer_Puzzle_Data["Ranking"].Score
	if nUserScore > nMaxScore then
		JulySummer_Puzzle_RefreshRanking(nUserScore)
	end
	
	-- 给奖励
	RewardTemplate_UseItem(tJulySummer_Puzzle_Exchange[nFirstId][nEndId])
	-- 对白提示
	local sNewTip = tJulySummer_Puzzle_Text[nNpcId]["Text221"]
	tNpcGossip[nNpcId]["Text221"]  = string.format(sNewTip,sItemName)
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 刷新排行榜
function JulySummer_Puzzle_RefreshRanking(nUserScore)
	local nUserId = Get_UserId()
	local sName = Get_UserName(nUserId)
	
	local tRanking = tJulySummer_Puzzle_Data["Ranking"]
	tRanking.Score = nUserScore
	tRanking.UserId = nUserId
	tRanking.UserName = sName
	tRanking.Reward = "0"
	
	-- 动态码刷新
	local nGlobalId = tJulySummer_Puzzle_Count["GlobalId"]
	Sys_SetSynaGlobalData1(nGlobalId,tRanking.Score)
	Sys_SetSynaGlobalData2(nGlobalId,tRanking.UserId)
	Sys_SetSynaGlobalDataStr1(nGlobalId,tRanking.UserName)
	Sys_SetSynaGlobalDataStr2(nGlobalId,tRanking.Reward)
end

-- 获得排行榜奖励
function JulySummer_Puzzle_ClainReward(nNpcId)
	--不是第一名
	local nNowUserId = Get_UserId()
	local nUserId = tJulySummer_Puzzle_Data["Ranking"].UserId
	if nNowUserId ~= nUserId then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	-- 背包不足
	local tReward = tJulySummer_Puzzle_Reward["Ranking"]
	local nRewadSpace =RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nRewadSpace) then
		local sText = tJulySummer_Puzzle_Text[nNpcId]["Text341"]
		tNpcGossip[nNpcId]["Text341"]  = string.format(sText,nRewadSpace)
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	-- 打掩码
	tJulySummer_Puzzle_Data["Ranking"].Reward = "1"
	local nGlobalId = tJulySummer_Puzzle_Count["GlobalId"]
	Sys_SetSynaGlobalDataStr2(nGlobalId,"1")
	
	-- 领取奖励
	RewardTemplate_UseItem(tReward)
	
	-- 提示对白
	LinkNpcGossipFunc_New(nNpcId,"3-6")
end
--------------------------------------物品模块
-- 字条物品
function JulySummer_Puzzle_UseItem(nItemId)
	-- 活动后
	local sTime = tJulySummer_Puzzle_Count["ActivityTime"]
	if not CommonFunc_GetBeforeActivityTime(sTime) and not Sys_ChkFullTime(sTime) then
		RewardTemplate_UseItem(tJulySummer_Puzzle_OverDelete[nItemId])
		return
	end
	
	-- 寻路
	local nPosX = tJulySummer_Puzzle_FindWay[1]["PosX"]
	local nPosY = tJulySummer_Puzzle_FindWay[1]["PosY"]
	local nMapId = tJulySummer_Puzzle_FindWay[1]["MapId"]
	local nNpcId = tJulySummer_Puzzle_FindWay[1]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end


-- 60天时效外套可选包 选择外套
function JulySummer_Puzzle_ChooseCoat(nItemId,nCoatId)
	local sText = tJulySummer_Puzzle_Text[nItemId]["Text211"]
	local sIndex = tJulySummer_Puzzle_Count["CoatName"][nCoatId]
	local sName = tJulySummer_Puzzle_Text[nItemId][sIndex]
	tItem[nItemId]["Text211"] = string.format(sText,sName)
	-- 二次确认
	tItem[nItemId]["OptionFunc211"] = "JulySummer_Puzzle_SureCoat</N>"..nItemId.."</N>"..nCoatId
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 二次确认
function JulySummer_Puzzle_SureCoat(nItemId,nCoatId)
	RewardTemplate_UseItem(tJulySummer_Puzzle_Reward[nItemId][nCoatId])
end
--------------------------------------时间自检
function JulySummer_Puzzle_ClearGlobalData()
	local nGlobalId = tJulySummer_Puzzle_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	
	if Sys_ChkFullTime(tJulySummer_Puzzle_Count["ActivityTime"]) then
		if Sys_ChkDayTime(tJulySummer_Puzzle_Count["ClearTime"]) then
			if not (sDataStr5 == "1") then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				Sys_SetSynaGlobalData3(nGlobalId,0)
				Sys_SetSynaGlobalData4(nGlobalId,0)
				Sys_SetSynaGlobalData5(nGlobalId,0)
				tJulySummer_Puzzle_Data["Limit"][3303630] = 0
				tJulySummer_Puzzle_Data["Limit"][3303629] = 0
				tJulySummer_Puzzle_Data["Limit"][3303628] = 0
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end

-- 初始化动态码数据
function JulySummer_Puzzle_InitData()
	local nGlobalId = tJulySummer_Puzzle_Count["GlobalId"]
	-- 初始化第一名表格
	tJulySummer_Puzzle_Data["Ranking"].Score = Get_SysDynaGlobalData1(nGlobalId)
	tJulySummer_Puzzle_Data["Ranking"].UserId = Get_SysDynaGlobalData2(nGlobalId)
	local sName = Get_SysDynaGlobalDataStr1(nGlobalId)
	if sName == "" then
		sName = tJulySummer_Puzzle_Text["NoUser"]
	end
	tJulySummer_Puzzle_Data["Ranking"].UserName = sName
	tJulySummer_Puzzle_Data["Ranking"].Reward = Get_SysDynaGlobalDataStr2(nGlobalId) or "0"
	-- 限量
	tJulySummer_Puzzle_Data["Limit"][3303630] = Get_SysDynaGlobalData3(nGlobalId)
	tJulySummer_Puzzle_Data["Limit"][3303629] = Get_SysDynaGlobalData4(nGlobalId)
	tJulySummer_Puzzle_Data["Limit"][3303628] = Get_SysDynaGlobalData5(nGlobalId)
end
--------------------------------------NPC模块-------------------------------------------
-- 暑期拼图指挥官
tNpcFace[4915] = 8
tNpcGossip[21907] = tNpcGossip[21907] or DefaultNpc:new{}
tNpcGossip[21907]["OptionHidden"] = 1
tNpcGossip[21907]["DialogueText"] = tJulySummer_Puzzle_Text[21907]
-- 活动前
tNpcGossip[21907]["Text1-1"] = {111,112,113}
tNpcGossip[21907]["tOption1-1"] = {111}
tNpcGossip[21907]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tJulySummer_Puzzle_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[21907]["Text1-2"] = {121,122}
tNpcGossip[21907]["tOption1-2"] = {322,122}
tNpcGossip[21907]["ChkFunc1-2"] = function ()
	local sUserName = tJulySummer_Puzzle_Data["Ranking"].UserName
	local sText = tJulySummer_Puzzle_Text[21907]["Text122"]
	tNpcGossip[21907]["Text122"] = string.format(sText,sUserName)
	return not Sys_ChkFullTime(tJulySummer_Puzzle_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[21907]["Text1-3"] = {131,132,133,134}
tNpcGossip[21907]["tOption1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[21907]["ChkFunc1-3"] = function ()
	local nData = JulySummer_Puzzle_GetStcValue(1)
	local sText = tJulySummer_Puzzle_Text[21907]["Text134"]
	tNpcGossip[21907]["Text134"] = string.format(sText,nData)
	return true
end
-- 1、兑换暑期欢乐大礼包（Beautiful +SUMMER）
tNpcGossip[21907]["OptionFunc131"] = "JulySummer_Puzzle_ExchangeItem</N>21907</N>3303630</N>3303629"
-- 2、兑换暑期幸运大礼包（SUMMER + Carnival）
tNpcGossip[21907]["OptionFunc132"] = "JulySummer_Puzzle_ExchangeItem</N>21907</N>3303629</N>3303631"
-- 3、兑换暑期福气大礼包（CONQUER + Carnival）
tNpcGossip[21907]["OptionFunc133"] = "JulySummer_Puzzle_ExchangeItem</N>21907</N>3303628</N>3303631"
-- 4、兑换暑期幸福大礼包（HAPPY +CONQUER）
tNpcGossip[21907]["OptionFunc134"] = "JulySummer_Puzzle_ExchangeItem</N>21907</N>3303633</N>3303628"
-- 5、兑换暑期魅力大礼包（CONQUER + 14）
tNpcGossip[21907]["OptionFunc135"] = "JulySummer_Puzzle_ExchangeItem</N>21907</N>3303632</N>3303628"
-- 6、如何获得“拼图”
tNpcGossip[21907]["OptionPoint136"] = "3-1"
-- 7、查看拼图排行榜
tNpcGossip[21907]["OptionPoint137"] = "3-2"

-- 接1至5：
-- 二次确认
tNpcGossip[21907]["Text2-1"] = {211,212}
tNpcGossip[21907]["tOption2-1"] = {211,212}
-- 1-1、确定兑换
-- 1-2、我再看看
-- 接1-1：还有存货
tNpcGossip[21907]["Text2-2"] = {221}
tNpcGossip[21907]["tOption2-2"] = {221}
tNpcGossip[21907]["OptionPoint221"] = "1"
-- 接1-1：没有存货
tNpcGossip[21907]["Text2-3"] = {231}
tNpcGossip[21907]["tOption2-3"] = {231}
tNpcGossip[21907]["OptionPoint231"] = "1"
--无字条
tNpcGossip[21907]["Text2-4"] = {241}
tNpcGossip[21907]["tOption2-4"] = {241}
tNpcGossip[21907]["OptionPoint241"] = "1"
-- 背包空间不足
tNpcGossip[21907]["Text2-5"] = {251}
tNpcGossip[21907]["tOption2-5"] = {251}

-- 接6：
tNpcGossip[21907]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[21907]["tOption3-1"] = {311}
-- 1、我知道了===点击返回主对白
tNpcGossip[21907]["OptionPoint311"] = 1

-- 接7：
tNpcGossip[21907]["Text3-2"] = {321,322,323}
tNpcGossip[21907]["tOption3-2"] = {321,323,322,324}
tNpcGossip[21907]["ChkFunc3-2"] = function ()
	local sUserName = tJulySummer_Puzzle_Data["Ranking"].UserName
	local sText = tJulySummer_Puzzle_Text[21907]["Text322"]
	local nScore = tJulySummer_Puzzle_Data["Ranking"].Score
	tNpcGossip[21907]["Text322"] = string.format(sText,sUserName,nScore)
	return true
end
-- 3-1、查看排名奖励
tNpcGossip[21907]["OptionPoint321"] = "3-3"
-- 3-2、领取排名奖励===可以领取的时候才显示
tNpcGossip[21907]["OptionFunc322"] = "JulySummer_Puzzle_ClainReward</N>21907"
tNpcGossip[21907]["OptionChkFunc322"] = function ()
	local nUserId = tJulySummer_Puzzle_Data["Ranking"].UserId
	local nNowUserId = Get_UserId()
	local sTime = tJulySummer_Puzzle_Count["ActivityTime"]
	local sReward = tJulySummer_Puzzle_Data["Ranking"].Reward
	if nUserId == nNowUserId and CommonFunc_GetAfterActivityTime(sTime) and sReward ~= "1" then
		return true
	end
	return false
end
-- 3-2、查看拼图分数规则
tNpcGossip[21907]["OptionPoint323"] = "4-1"
-- 3-3、真是厉害啊！
-- 接3-1：
tNpcGossip[21907]["Text3-3"] = {331,332}
tNpcGossip[21907]["tOption3-3"] = {331}
-- 接3-2，背包空间不足
tNpcGossip[21907]["Text3-4"] = {341}
tNpcGossip[21907]["tOption3-4"] = {341}
-- 接3-2，不是排名第一的玩家
tNpcGossip[21907]["Text3-5"] = {351}
tNpcGossip[21907]["tOption3-5"] = {351}
-- 接3-2，领取成功
tNpcGossip[21907]["Text3-6"] = {361}
tNpcGossip[21907]["tOption3-6"] = {361}
-- 3-2、查看拼图分数规则
tNpcGossip[21907]["Text4-1"] = {411,412,413,414,415}
tNpcGossip[21907]["tOption4-1"] = {411}

--------------------------------------物品模块-------------------------------------------
-- 3303628,'conquer字条'
tItem[3303628] = tItem[3303628] or {}
tItem[3303628]["Function"] = function(nItemId,sItemName)
	JulySummer_Puzzle_UseItem(nItemId)
end
-- 3303629,'Summer字条'
tItem[3303629] = tItem[3303628]
-- 3303630,'Beautiful字条'
tItem[3303630] = tItem[3303628]
-- 3303631,'Carnival字条'
tItem[3303631] = tItem[3303628]
-- 3303632,'14字条'
tItem[3303632] = tItem[3303628]
-- 3303633,'Happy字条'
tItem[3303633] = tItem[3303628]

-- 3303790,'暑期欢乐大礼包'
tItem[3303790] = tItem[3303790] or {}
tItem[3303790]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tJulySummer_Puzzle_Reward[nItemId])
end
-- 3303791,'暑期幸运大礼包'
tItem[3303791] = tItem[3303790]
-- 3303792,'暑期福气大礼包'
tItem[3303792] = tItem[3303790]
-- 3303793,'暑期幸福大礼包'
tItem[3303793] = tItem[3303790]
-- 3303794,'暑期魅力大礼包'
tItem[3303794] = tItem[3303790]
-- 3303928,'暑期作战嘉奖包'
tItem[3303928] = tItem[3303790]


-- 3303927,'60天时效外套可选包'
tItemFace[3303927] = 692
tItem[3303927] = tItem[3303927] or {}
tItem[3303927]["DialogueText"] = tJulySummer_Puzzle_Text[3303927]
tItem[3303927]["Text1-1"] = {111}
tItem[3303927]["tOption1-1"] = {111,112}
-- 1、1% Blessed AstralPhoenix(60-days)
tItem[3303927]["OptionFunc111"] = "JulySummer_Puzzle_ChooseCoat</N>3303927</N>200575"
-- 2、1% Blessed GentleAntelope[Exclusive](60-days)
tItem[3303927]["OptionFunc112"] = "JulySummer_Puzzle_ChooseCoat</N>3303927</N>200524"

-- 二次确认
tItem[3303927]["Text2-1"] = {211}
tItem[3303927]["tOption2-1"] = {211,212}

--------------------------------------时间自检-------------------------------------------
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点05分执行）
--'00:00-00:05'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],JulySummer_Puzzle_ClearGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],JulySummer_Puzzle_ClearGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],JulySummer_Puzzle_ClearGlobalData)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],JulySummer_Puzzle_ClearGlobalData)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],JulySummer_Puzzle_ClearGlobalData)

-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],JulySummer_Puzzle_InitData)

