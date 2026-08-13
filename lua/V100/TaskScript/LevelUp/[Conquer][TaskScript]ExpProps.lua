------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]经验道具
--Purpose:	经验道具
--Creator: 	郑鋆
--Created:	2017/04/10
------------------------------------------------------------------------------------

-- 命名前缀
-- ExpProps_

-- stc掩码说明
-- 158 55	每天使用竞技场经验丹的次数记录
-- 158 56	每天使用特殊经验丹的次数记录
-- 158 57	每天使用高级特殊经验丹的次数记录
-- 158 58	每天使用超级特殊经验丹的次数记录

local tExpProps_Cont = {}
	-- 竞技场经验丹
	tExpProps_Cont["Arena"] = 3303016
	
	tExpProps_Cont["Level"] = 140

-- stc掩码
local tExpProps_Stc = {}
	tExpProps_Stc[3303016] = {}
	tExpProps_Stc[3303016]["EventType"] = 158
	tExpProps_Stc[3303016]["DataType"] = 55
	tExpProps_Stc[3303016]["MaxData"] = 1

	tExpProps_Stc[3303017] = {}
	tExpProps_Stc[3303017]["EventType"] = 158
	tExpProps_Stc[3303017]["DataType"] = 56
	tExpProps_Stc[3303017]["MaxData"] = 20
	
	tExpProps_Stc[3303018] = {}
	tExpProps_Stc[3303018]["EventType"] = 158
	tExpProps_Stc[3303018]["DataType"] = 57
	tExpProps_Stc[3303018]["MaxData"] = 1

	tExpProps_Stc[3303019] = {}
	tExpProps_Stc[3303019]["EventType"] = 158
	tExpProps_Stc[3303019]["DataType"] = 58
	tExpProps_Stc[3303019]["MaxData"] = 1

	tExpProps_Stc[3007309] = {}
	tExpProps_Stc[3007309]["EventType"] = 137
	tExpProps_Stc[3007309]["DataType"] = 59
	tExpProps_Stc[3007309]["MaxData"] = 10

	tExpProps_Stc[3309813] = {}
	tExpProps_Stc[3309813]["EventType"] = 137
	tExpProps_Stc[3309813]["DataType"] = 59
	tExpProps_Stc[3309813]["MaxData"] = 5

	tExpProps_Stc[3007308] = {}
	tExpProps_Stc[3007308]["EventType"] = 137
	tExpProps_Stc[3007308]["DataType"] = 58
	tExpProps_Stc[3007308]["MaxData"] = 10

	tExpProps_Stc[722136] = {}
	tExpProps_Stc[722136]["EventType"] = 114
	tExpProps_Stc[722136]["DataType"] = 44
	tExpProps_Stc[722136]["MaxData"] = 10

	tExpProps_Stc[3001283] = {}
	tExpProps_Stc[3001283]["EventType"] = 114
	tExpProps_Stc[3001283]["DataType"] = 44
	tExpProps_Stc[3001283]["MaxData"] = 10
	
	tExpProps_Stc[723700] = {}
	tExpProps_Stc[723700]["EventType"] = 114
	tExpProps_Stc[723700]["DataType"] = 44
	tExpProps_Stc[723700]["MaxData"] = 10

	tExpProps_Stc[721630] = {}
	tExpProps_Stc[721630]["EventType"] = 112
	tExpProps_Stc[721630]["DataType"] = 68
	tExpProps_Stc[721630]["Level"] = 140
	tExpProps_Stc[721630]["MaxData"] = {}
	tExpProps_Stc[721630]["MaxData"][1] = 5
	tExpProps_Stc[721630]["MaxData"][2] = 10

local tExpProps_NoExpMax = {3303017,3303018,3303019,3303351,3303718}
	
-- 奖励
local tExpProps_Reward = {}
	-- 竞技场经验丹
	tExpProps_Reward[3303016] = {}
	tExpProps_Reward[3303016]["UseLevel"] = 134
	tExpProps_Reward[3303016]["LogId"] = 18000152
	tExpProps_Reward[3303016]["RewardExpTime"] = {}
	tExpProps_Reward[3303016]["RewardExpTime"]["Value"] = 300
	tExpProps_Reward[3303016]["Talk"] = tExpProps_Text[3303016]["Talk"]
	
	-- 特殊经验丹
	tExpProps_Reward[3303017] = {}
	tExpProps_Reward[3303017]["LogId"] = 18000152
	tExpProps_Reward[3303017]["RewardExpTimeSpecial"] = {}
	tExpProps_Reward[3303017]["RewardExpTimeSpecial"]["Value"] = 60
	tExpProps_Reward[3303017]["Talk"] = tExpProps_Text[3303017]["Talk"]
	
	-- 高级特殊经验丹
	tExpProps_Reward[3303018] = {}
	tExpProps_Reward[3303018]["LogId"] = 18000152
	tExpProps_Reward[3303018]["PercentExp"] = 0.3
	tExpProps_Reward[3303018]["Talk"] = tExpProps_Text[3303018]["Talk"]
	
	-- 超级特殊经验丹
	tExpProps_Reward[3303019] = {}
	tExpProps_Reward[3303019]["LogId"] = 18000152
	tExpProps_Reward[3303019]["RewardExpPercentSpecial"] = {}
	tExpProps_Reward[3303019]["RewardExpPercentSpecial"]["Value"] = 1
	tExpProps_Reward[3303019]["Talk"] = tExpProps_Text[3303019]["Talk"]
	
	-- NBA经验特饮
	tExpProps_Reward[3303351] = {}
	tExpProps_Reward[3303351]["LogId"] = 12000684
	tExpProps_Reward[3303351]["RewardExpPercentSpecial"] = {}
	tExpProps_Reward[3303351]["RewardExpPercentSpecial"]["Value"] = 1
	tExpProps_Reward[3303351]["Talk"] = tExpProps_Text[3303019]["Talk"]
	
	-- 夏日清凉经验饮料
	tExpProps_Reward[3303718] = {}
	tExpProps_Reward[3303718]["LogId"] = 12000760
	tExpProps_Reward[3303718]["RewardExpPercentSpecial"] = {}
	tExpProps_Reward[3303718]["RewardExpPercentSpecial"]["Value"] = 1
	tExpProps_Reward[3303718]["Talk"] = tExpProps_Text[3303019]["Talk"]
	
	-- 九转聚神丹碎
	tExpProps_Reward[720730] = {}
	tExpProps_Reward[720730]["UseLev"] = 139
	-- 139级以下
	tExpProps_Reward[720730][1] = {}
	tExpProps_Reward[720730][1]["LogId"] = 18000152
	tExpProps_Reward[720730][1]["DeleteItem"] = {}
	tExpProps_Reward[720730][1]["DeleteItem"][1] = {}
	tExpProps_Reward[720730][1]["DeleteItem"][1]["Id"] = 720730
	tExpProps_Reward[720730][1]["DeleteItem"][1]["ItemNum"] = 1
	tExpProps_Reward[720730][1]["DeleteItem"][1]["NoItem"] = tExpProps_Text[720730]["NoItem"]
	tExpProps_Reward[720730][1]["RewardExpPercent"] = {}
	tExpProps_Reward[720730][1]["RewardExpPercent"]["Value"] = 1
	tExpProps_Reward[720730][1]["Talk"] = tExpProps_Text[720730]["Talk"]
	
	-- 10个合成 723744
	tExpProps_Reward[720730][2] = {}
	tExpProps_Reward[720730][2]["LogId"] = 18000152
	tExpProps_Reward[720730][2]["DeleteItem"] = {}
	tExpProps_Reward[720730][2]["DeleteItem"][1] = {}
	tExpProps_Reward[720730][2]["DeleteItem"][1]["Id"] = 720730
	tExpProps_Reward[720730][2]["DeleteItem"][1]["ItemNum"] = 10
	tExpProps_Reward[720730][2]["DeleteItem"][1]["NoItem"] = tExpProps_Text[720730]["NoItem"]
	tExpProps_Reward[720730][2]["RewardItem"] = {}
	tExpProps_Reward[720730][2]["RewardItem"][1] = {}
	tExpProps_Reward[720730][2]["RewardItem"][1]["Id"] = 723744
	tExpProps_Reward[720730][2]["RewardItem"][1]["Attr"] = "0 1"
	tExpProps_Reward[720730][2]["Talk"] = tExpProps_Text[720730]["Synthesis"]

	-- 单个10%概率赌
	tExpProps_Reward[720730][3] = {}
	tExpProps_Reward[720730][3]["FailLog"] = "0,0,720730,1,18000152,2,0,0"
	tExpProps_Reward[720730][3]["DeleteItem"] = {}
	tExpProps_Reward[720730][3]["DeleteItem"][1] = {}
	tExpProps_Reward[720730][3]["DeleteItem"][1]["Id"] = 720730
	tExpProps_Reward[720730][3]["DeleteItem"][1]["ItemNum"] = 1
	tExpProps_Reward[720730][3]["DeleteItem"][1]["NoItem"] = tExpProps_Text[720730]["NoItem"]
	
	tExpProps_Reward[720730][3][1] = {}
	tExpProps_Reward[720730][3][1]["RandomItemChanceType"] = 3
	tExpProps_Reward[720730][3][1]["ItemSelfChanceSum"] = 10000
	tExpProps_Reward[720730][3][1]["ItemChance"] = 1000
	tExpProps_Reward[720730][3][1]["RewardItem"] = {}
	tExpProps_Reward[720730][3][1]["RewardItem"][1] = {}
	tExpProps_Reward[720730][3][1]["RewardItem"][1]["Id"] = 723744
	tExpProps_Reward[720730][3][1]["RewardItem"][1]["Attr"] = "0 1"
	tExpProps_Reward[720730][3][1]["Talk"] = tExpProps_Text[720730]["Bet"]
	tExpProps_Reward[720730][3][1]["Log"] = "0,0,720730,1,18000152,2,723744,1"
	
	-- 九转聚神丹碎
	tExpProps_Reward[728596] = {}
	tExpProps_Reward[728596]["UseLev"] = 139
	-- 139级以下
	tExpProps_Reward[728596][1] = {}
	tExpProps_Reward[728596][1]["LogId"] = 18000152
	tExpProps_Reward[728596][1]["DeleteItem"] = {}
	tExpProps_Reward[728596][1]["DeleteItem"][1] = {}
	tExpProps_Reward[728596][1]["DeleteItem"][1]["Id"] = 728596
	tExpProps_Reward[728596][1]["DeleteItem"][1]["ItemNum"] = 1
	tExpProps_Reward[728596][1]["DeleteItem"][1]["NoItem"] = tExpProps_Text[728596]["NoItem"]
	tExpProps_Reward[728596][1]["RewardExpPercent"] = {}
	tExpProps_Reward[728596][1]["RewardExpPercent"]["Value"] = 1
	tExpProps_Reward[728596][1]["Talk"] = tExpProps_Text[728596]["Talk"]
	-- 10个合成 723744
	tExpProps_Reward[728596][2] = {}
	tExpProps_Reward[728596][2]["LogId"] = 18000152
	tExpProps_Reward[728596][2]["DeleteItem"] = {}
	tExpProps_Reward[728596][2]["DeleteItem"][1] = {}
	tExpProps_Reward[728596][2]["DeleteItem"][1]["Id"] = 728596
	tExpProps_Reward[728596][2]["DeleteItem"][1]["ItemNum"] = 10
	tExpProps_Reward[728596][2]["DeleteItem"][1]["NoItem"] = tExpProps_Text[728596]["NoItem"]
	tExpProps_Reward[728596][2]["RewardItem"] = {}
	tExpProps_Reward[728596][2]["RewardItem"][1] = {}
	tExpProps_Reward[728596][2]["RewardItem"][1]["Id"] = 723744
	tExpProps_Reward[728596][2]["RewardItem"][1]["Attr"] = "0 1"
	tExpProps_Reward[728596][2]["Talk"] = tExpProps_Text[728596]["Synthesis"]
	-- 单个10%概率赌
	tExpProps_Reward[728596][3] = {}
	tExpProps_Reward[728596][3]["FailLog"] = "0,0,728596,1,18000152,2,0,0"
	tExpProps_Reward[728596][3]["DeleteItem"] = {}
	tExpProps_Reward[728596][3]["DeleteItem"][1] = {}
	tExpProps_Reward[728596][3]["DeleteItem"][1]["Id"] = 728596
	tExpProps_Reward[728596][3]["DeleteItem"][1]["ItemNum"] = 1
	tExpProps_Reward[728596][3]["DeleteItem"][1]["NoItem"] = tExpProps_Text[728596]["NoItem"]
	
	tExpProps_Reward[728596][3][1] = {}
	tExpProps_Reward[728596][3][1]["RandomItemChanceType"] = 3
	tExpProps_Reward[728596][3][1]["ItemSelfChanceSum"] = 10000
	tExpProps_Reward[728596][3][1]["ItemChance"] = 1000
	tExpProps_Reward[728596][3][1]["RewardItem"] = {}
	tExpProps_Reward[728596][3][1]["RewardItem"][1] = {}
	tExpProps_Reward[728596][3][1]["RewardItem"][1]["Id"] = 723744
	tExpProps_Reward[728596][3][1]["RewardItem"][1]["Attr"] = "0 1"
	tExpProps_Reward[728596][3][1]["Talk"] = tExpProps_Text[728596]["Bet"]
	tExpProps_Reward[728596][3][1]["Log"] = "0,0,728596,1,18000152,2,723744,1"
	
	-- 竞技场礼包
	tExpProps_Reward[3007309] = {}
	tExpProps_Reward[3007309]["Effect"] = "eidolon"
	tExpProps_Reward[3007309]["Level"] = 134
	-- 老服134级以下
	tExpProps_Reward[3007309][1] = {}
	tExpProps_Reward[3007309][1]["LogId"] = 18000096
	tExpProps_Reward[3007309][1]["RewardExpTime"] = {}
	tExpProps_Reward[3007309][1]["RewardExpTime"]["Value"] = 30
	-- 新服134级以下
	tExpProps_Reward[3007309][2] = {}
	tExpProps_Reward[3007309][2]["LogId"] = 18000096
	tExpProps_Reward[3007309][2]["RewardExpTime"] = {}
	tExpProps_Reward[3007309][2]["RewardExpTime"]["Value"] = 30
	tExpProps_Reward[3007309][2]["RewardCultivation"] = {}
	tExpProps_Reward[3007309][2]["RewardCultivation"]["Value"] = 20
	-- 老服135级以上（含）
	tExpProps_Reward[3007309][3] = {}
	tExpProps_Reward[3007309][3]["LogId"] = 18000096
	tExpProps_Reward[3007309][3]["RewardExpTime"] = {}
	tExpProps_Reward[3007309][3]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[3007309][3]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpProps_Reward[3007309][3]["RewardExpTime"]["FullValue"] = 10
	-- 新服135级以上（含）
	tExpProps_Reward[3007309][4] = {}
	tExpProps_Reward[3007309][4]["LogId"] = 18000096
	tExpProps_Reward[3007309][4]["RewardExpTime"] = {}
	tExpProps_Reward[3007309][4]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[3007309][4]["RewardCultivation"] = {}
	tExpProps_Reward[3007309][4]["RewardCultivation"]["Value"] = 40
	
	-- 竞技场礼包[20180829-yzf-新增]
	tExpProps_Reward[3309813] = {}
	tExpProps_Reward[3309813]["Effect"] = "eidolon"
	tExpProps_Reward[3309813]["Level"] = 134
	-- 老服134级以下
	tExpProps_Reward[3309813][1] = {}
	tExpProps_Reward[3309813][1]["LogId"] = 18000096
	tExpProps_Reward[3309813][1]["RewardExpTime"] = {}
	tExpProps_Reward[3309813][1]["RewardExpTime"]["Value"] = 60
	-- 新服134级以下
	tExpProps_Reward[3309813][2] = {}
	tExpProps_Reward[3309813][2]["LogId"] = 18000096
	tExpProps_Reward[3309813][2]["RewardExpTime"] = {}
	tExpProps_Reward[3309813][2]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[3309813][2]["RewardCultivation"] = {}
	tExpProps_Reward[3309813][2]["RewardCultivation"]["Value"] = 40
	-- 老服135级以上（含）
	tExpProps_Reward[3309813][3] = {}
	tExpProps_Reward[3309813][3]["LogId"] = 18000096
	tExpProps_Reward[3309813][3]["RewardExpTime"] = {}
	tExpProps_Reward[3309813][3]["RewardExpTime"]["Value"] = 120
	tExpProps_Reward[3309813][3]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpProps_Reward[3309813][3]["RewardExpTime"]["FullValue"] = 20
	tExpProps_Reward[3309813][3][1] = {}
	tExpProps_Reward[3309813][3][1]["LogId"] = 18000096
	tExpProps_Reward[3309813][3][1]["RewardCultivation"] = {}
	tExpProps_Reward[3309813][3][1]["RewardCultivation"]["Value"] = 20
	-- 新服135级以上（含）
	tExpProps_Reward[3309813][4] = {}
	tExpProps_Reward[3309813][4]["LogId"] = 18000096
	tExpProps_Reward[3309813][4]["RewardExpTime"] = {}
	tExpProps_Reward[3309813][4]["RewardExpTime"]["Value"] = 120
	tExpProps_Reward[3309813][4]["RewardCultivation"] = {}
	tExpProps_Reward[3309813][4]["RewardCultivation"]["Value"] = 80
	tExpProps_Reward[3309813][4][1] = {}
	tExpProps_Reward[3309813][4][1]["LogId"] = 18000096
	tExpProps_Reward[3309813][4][1]["RewardCultivation"] = {}
	tExpProps_Reward[3309813][4][1]["RewardCultivation"]["Value"] = 80

	
	-- 组队竞技场礼包
	tExpProps_Reward[3007308] = {}
	tExpProps_Reward[3007308]["Effect"] = "eidolon"
	tExpProps_Reward[3007308]["Level"] = 134
	-- 老服134级以下
	tExpProps_Reward[3007308][1] = {}
	tExpProps_Reward[3007308][1]["LogId"] = 18000096
	tExpProps_Reward[3007308][1]["RewardExpTime"] = {}
	tExpProps_Reward[3007308][1]["RewardExpTime"]["Value"] = 30
	-- 新服134级以下
	tExpProps_Reward[3007308][2] = {}
	tExpProps_Reward[3007308][2]["LogId"] = 18000096
	tExpProps_Reward[3007308][2]["RewardExpTime"] = {}
	tExpProps_Reward[3007308][2]["RewardExpTime"]["Value"] = 30
	tExpProps_Reward[3007308][2]["RewardCultivation"] = {}
	tExpProps_Reward[3007308][2]["RewardCultivation"]["Value"] = 20
	-- 老服135级以上（含）
	tExpProps_Reward[3007308][3] = {}
	tExpProps_Reward[3007308][3]["LogId"] = 18000096
	tExpProps_Reward[3007308][3]["RewardExpTime"] = {}
	tExpProps_Reward[3007308][3]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[3007308][3]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpProps_Reward[3007308][3]["RewardExpTime"]["FullValue"] = 10
	-- 新服135级以上（含）
	tExpProps_Reward[3007308][4] = {}
	tExpProps_Reward[3007308][4]["LogId"] = 18000096
	tExpProps_Reward[3007308][4]["RewardExpTime"] = {}
	tExpProps_Reward[3007308][4]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[3007308][4]["RewardCultivation"] = {}
	tExpProps_Reward[3007308][4]["RewardCultivation"]["Value"] = 40

	-- 精英PK赛礼包
	tExpProps_Reward[720713] = {}
	tExpProps_Reward[720713]["Level"] = 134
	-- 134级以下
	tExpProps_Reward[720713][1] = {}
	tExpProps_Reward[720713][1]["LogId"] = 18000152
	tExpProps_Reward[720713][1]["DeleteItem"] = {}
	tExpProps_Reward[720713][1]["DeleteItem"][1] = {}
	tExpProps_Reward[720713][1]["DeleteItem"][1]["Id"] = 720713
	tExpProps_Reward[720713][1]["RewardExpTime"] = {}
	tExpProps_Reward[720713][1]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[720713][1]["RewardEffect"] = {}
	tExpProps_Reward[720713][1]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[720713][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 135级以上（含）
	tExpProps_Reward[720713][2] = {}
	tExpProps_Reward[720713][2]["LogId"] = 18000152
	tExpProps_Reward[720713][2]["DeleteItem"] = {}
	tExpProps_Reward[720713][2]["DeleteItem"][1] = {}
	tExpProps_Reward[720713][2]["DeleteItem"][1]["Id"] = 720713
	tExpProps_Reward[720713][2]["RewardExpTime"] = {}
	tExpProps_Reward[720713][2]["RewardExpTime"]["Value"] = 120
	tExpProps_Reward[720713][2]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpProps_Reward[720713][2]["RewardExpTime"]["FullValue"] = 20
	tExpProps_Reward[720713][2]["RewardEffect"] = {}
	tExpProps_Reward[720713][2]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[720713][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 组队PK赛礼包
	tExpProps_Reward[720793] = {}
	tExpProps_Reward[720793]["Level"] = 134
	-- 134级以下
	tExpProps_Reward[720793][1] = {}
	tExpProps_Reward[720793][1]["LogId"] = 18000152
	tExpProps_Reward[720793][1]["DeleteItem"] = {}
	tExpProps_Reward[720793][1]["DeleteItem"][1] = {}
	tExpProps_Reward[720793][1]["DeleteItem"][1]["Id"] = 720793
	tExpProps_Reward[720793][1]["RewardExpTime"] = {}
	tExpProps_Reward[720793][1]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[720793][1]["RewardEffect"] = {}
	tExpProps_Reward[720793][1]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[720793][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 135级以上（含）
	tExpProps_Reward[720793][2] = {}
	tExpProps_Reward[720793][2]["LogId"] = 18000152
	tExpProps_Reward[720793][2]["DeleteItem"] = {}
	tExpProps_Reward[720793][2]["DeleteItem"][1] = {}
	tExpProps_Reward[720793][2]["DeleteItem"][1]["Id"] = 720793
	tExpProps_Reward[720793][2]["RewardExpTime"] = {}
	tExpProps_Reward[720793][2]["RewardExpTime"]["Value"] = 120
	tExpProps_Reward[720793][2]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpProps_Reward[720793][2]["RewardExpTime"]["FullValue"] = 20
	tExpProps_Reward[720793][2]["RewardEffect"] = {}
	tExpProps_Reward[720793][2]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[720793][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 大众PK赛礼包
	tExpProps_Reward[720981] = {}
	tExpProps_Reward[720981]["Level"] = 134
	-- 134级以下
	tExpProps_Reward[720981][1] = {}
	tExpProps_Reward[720981][1]["LogId"] = 18000152
	tExpProps_Reward[720981][1]["DeleteItem"] = {}
	tExpProps_Reward[720981][1]["DeleteItem"][1] = {}
	tExpProps_Reward[720981][1]["DeleteItem"][1]["Id"] = 720981
	tExpProps_Reward[720981][1]["RewardExpTime"] = {}
	tExpProps_Reward[720981][1]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[720981][1]["RewardEffect"] = {}
	tExpProps_Reward[720981][1]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[720981][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 135级以上（含）
	tExpProps_Reward[720981][2] = {}
	tExpProps_Reward[720981][2]["LogId"] = 18000152
	tExpProps_Reward[720981][2]["DeleteItem"] = {}
	tExpProps_Reward[720981][2]["DeleteItem"][1] = {}
	tExpProps_Reward[720981][2]["DeleteItem"][1]["Id"] = 720981
	tExpProps_Reward[720981][2]["RewardExpTime"] = {}
	tExpProps_Reward[720981][2]["RewardExpTime"]["Value"] = 120
	tExpProps_Reward[720981][2]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpProps_Reward[720981][2]["RewardExpTime"]["FullValue"] = 20
	tExpProps_Reward[720981][2]["RewardEffect"] = {}
	tExpProps_Reward[720981][2]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[720981][2]["RewardEffect"]["Effect"] = "angelwing"

	-- 聚神丹
	tExpProps_Reward[722136] = {}
	tExpProps_Reward[722136]["UseMap"] = true
	tExpProps_Reward[722136]["Level"] = 90
	tExpProps_Reward[722136]["LogId"] = 18000152
	tExpProps_Reward[722136]["Mentor"] = 10
	tExpProps_Reward[722136]["RewardExpTime"] = {}
	tExpProps_Reward[722136]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[722136]["RewardEffect"] = {}
	tExpProps_Reward[722136]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[722136]["RewardEffect"]["Effect"] = "zf2-e300"

	-- 聚神丹
	tExpProps_Reward[3001283] = {}
	tExpProps_Reward[3001283]["UseMap"] = true
	tExpProps_Reward[3001283]["Level"] = 90
	tExpProps_Reward[3001283]["LogId"] = 18000152
	tExpProps_Reward[3001283]["Mentor"] = 10
	tExpProps_Reward[3001283]["RewardExpTime"] = {}
	tExpProps_Reward[3001283]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[3001283]["RewardEffect"] = {}
	tExpProps_Reward[3001283]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[3001283]["RewardEffect"]["Effect"] = "zf2-e300"
	
	-- 聚神丹
	tExpProps_Reward[723700] = {}
	tExpProps_Reward[723700]["UseMap"] = true
	tExpProps_Reward[723700]["Level"] = 90
	tExpProps_Reward[723700]["LogId"] = 18000152
	tExpProps_Reward[723700]["Mentor"] = 10
	tExpProps_Reward[723700]["RewardExpTime"] = {}
	tExpProps_Reward[723700]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[723700]["RewardEffect"] = {}
	tExpProps_Reward[723700]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[723700]["RewardEffect"]["Effect"] = "zf2-e300"
	
	-- 聚元丹
	tExpProps_Reward[721630] = {}
	tExpProps_Reward[721630]["LogId"] = 10001629
	tExpProps_Reward[721630]["RewardExpTime"] = {}
	tExpProps_Reward[721630]["RewardExpTime"]["Value"] = 60
	tExpProps_Reward[721630]["Talk"] = tExpProps_Text[721630]["Talk"]

	-- 九转聚神丹
	tExpProps_Reward[722057] = {}
	tExpProps_Reward[722057]["ChkExp"] = true
	tExpProps_Reward[722057]["UseMap"] = true
	tExpProps_Reward[722057]["Level"] = 90
	tExpProps_Reward[722057]["LogId"] = 18000152
	tExpProps_Reward[722057]["Mentor"] = 10
	tExpProps_Reward[722057]["RewardExpPercent"] = {}
	tExpProps_Reward[722057]["RewardExpPercent"]["Value"] = 10
	tExpProps_Reward[722057]["RewardEffect"] = {}
	tExpProps_Reward[722057]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[722057]["RewardEffect"]["Effect"] = "zf2-e300"
	
	-- 九转聚神丹(赠)
	tExpProps_Reward[723744] = {}
	tExpProps_Reward[723744]["ChkExp"] = true
	tExpProps_Reward[723744]["UseMap"] = true
	tExpProps_Reward[723744]["Level"] = 90
	tExpProps_Reward[723744]["LogId"] = 18000152
	tExpProps_Reward[723744]["Mentor"] = 10
	tExpProps_Reward[723744]["RewardExpPercent"] = {}
	tExpProps_Reward[723744]["RewardExpPercent"]["Value"] = 10
	tExpProps_Reward[723744]["RewardEffect"] = {}
	tExpProps_Reward[723744]["RewardEffect"]["SzObj"] = "self"
	tExpProps_Reward[723744]["RewardEffect"]["Effect"] = "zf2-e300"

	-- 白色恶之花、红色恶之花
	tExpProps_Reward[722736] = {}
	-- 正常给经验
	tExpProps_Reward[722736][1] = {}
	tExpProps_Reward[722736][1]["LogId"] = 10001948
	tExpProps_Reward[722736][1]["DeleteItem"] = {}
	tExpProps_Reward[722736][1]["DeleteItem"][1] = {}
	tExpProps_Reward[722736][1]["DeleteItem"][1]["Id"] = 722736
	tExpProps_Reward[722736][1]["DeleteItem"][1]["NoItem"] = tExpProps_Text[722736]["NoItem"]
	tExpProps_Reward[722736][1]["DeleteItem"][2] = {}
	tExpProps_Reward[722736][1]["DeleteItem"][2]["Id"] = 722732
	tExpProps_Reward[722736][1]["DeleteItem"][2]["NoItem"] = tExpProps_Text[722736]["NoItem"]
	tExpProps_Reward[722736][1]["RewardExpTime"] = {}
	tExpProps_Reward[722736][1]["RewardExpTime"]["Value"] = 30
	-- 满级给千年首乌包
	tExpProps_Reward[722736][2] = {}
	tExpProps_Reward[722736][2]["LogId"] = 10001948
	tExpProps_Reward[722736][2]["DeleteItem"] = {}
	tExpProps_Reward[722736][2]["DeleteItem"][1] = {}
	tExpProps_Reward[722736][2]["DeleteItem"][1]["Id"] = 722736
	tExpProps_Reward[722736][2]["DeleteItem"][1]["NoItem"] = tExpProps_Text[722736]["NoItem"]
	tExpProps_Reward[722736][2]["DeleteItem"][2] = {}
	tExpProps_Reward[722736][2]["DeleteItem"][2]["Id"] = 722732
	tExpProps_Reward[722736][2]["DeleteItem"][2]["NoItem"] = tExpProps_Text[722736]["NoItem"]
	tExpProps_Reward[722736][2]["RewardItem"] = {}
	tExpProps_Reward[722736][2]["RewardItem"][1] = {}
	tExpProps_Reward[722736][2]["RewardItem"][1]["Id"] = 721330
	tExpProps_Reward[722736][2]["RewardItem"][1]["Attr"] = "0 1"
	
	tExpProps_Reward[722732] = tExpProps_Reward[722736]
	
-- 道具不可使用的地图
local tExpProps_NoUseMap = {}
	tExpProps_NoUseMap[1] = 2076
	tExpProps_NoUseMap[2] = 2077
	tExpProps_NoUseMap[3] = 2078
	tExpProps_NoUseMap[4] = 2096
	tExpProps_NoUseMap[5] = 2095
	tExpProps_NoUseMap[6] = 2094
	tExpProps_NoUseMap[7] = 2093
	tExpProps_NoUseMap[8] = 2085
	tExpProps_NoUseMap[9] = 2086
	tExpProps_NoUseMap[10] = 2087
	tExpProps_NoUseMap[11] = 2088
	tExpProps_NoUseMap[12] = 2075
	
------------------------------------------------------------------------------------
--Name:		170424[简体征服][任务脚本]经验保护丹处理
--Creator: 	翁增锐
--Created:	2017/03/10
------------------------------------------------------------------------------------

-- 2016.5.16
-- LUA接口：CountItemType
-- 参1：玩家ID
-- 参2：idOwner对应cq_item表owner_id字段，物品所属(背包和乾坤袋背包传玩家ID，仓库传对应的仓库NPCID)
-- 参3：idItemType物品类型
-- 参4：eType仓库类型，0背包、10仓库、40、乾坤袋背包
-- 参5：赠品属性，0非赠，1所有物品、2赠品
-- 返回值：个数

-- function Get_CountItemType(nItemType,nType,nMonopoly,nOwnerId,nUserId)
--lua.ini:21068
--log:12000712

---------------------------------------常量部分----------------------------------
local tExpProtect_Data = {}
		tExpProtect_Data["Needlev"] = 140
		
local tExpProtect_Get = {}
--给经验保护单赠
	tExpProtect_Get[1] = {}
	tExpProtect_Get[1]["RewardItem"] = {}
	tExpProtect_Get[1]["RewardItem"][1] = {}
	tExpProtect_Get[1]["RewardItem"][1]["Id"] = 3302881
	tExpProtect_Get[1]["RewardItem"][1]["Attr"] = "0 1 3"
	tExpProtect_Get[1]["Talk"] = tExpProtect_Text["GetItem"]
	
--给经验保护单非赠
	tExpProtect_Get[2] = {}
	tExpProtect_Get[2]["RewardItem"] = {}
	tExpProtect_Get[2]["RewardItem"][1] = {}
	tExpProtect_Get[2]["RewardItem"][1]["Id"] = 3302881
	tExpProtect_Get[2]["RewardItem"][1]["Attr"] = "0 1"
	tExpProtect_Get[2]["Talk"] = tExpProtect_Text["GetItem"]
	
	
local tExpProtect_Log = {}
--获得经验复元丹(赠)
	tExpProtect_Log["Log"] = {}
--获得经验复元丹(赠)
	tExpProtect_Log["Log"][1] = "0,0,3002559,%d,12000712,1[1],3302881,%d"
--获得经验复元丹(非赠)
	tExpProtect_Log["Log"][2] = "0,0,3002559,%d,12000712,1[2],3302881,%d"
	
local tExpProps_MaxLeve = {}
	tExpProps_MaxLeve[3303351] = {}
	tExpProps_MaxLeve[3303351]["LogId"] = 12000684
	tExpProps_MaxLeve[3303351]["DeleteItem"] = {}
	tExpProps_MaxLeve[3303351]["DeleteItem"][1] = {}
	tExpProps_MaxLeve[3303351]["DeleteItem"][1]["Id"] = 3303351
	tExpProps_MaxLeve[3303351]["RewardStrengthValue"] = {}
	tExpProps_MaxLeve[3303351]["RewardStrengthValue"]["Value"] = 2000
	tExpProps_MaxLeve[3303351]["RewardEffect"] = {}
	tExpProps_MaxLeve[3303351]["RewardEffect"]["SzObj"] = "self"
	tExpProps_MaxLeve[3303351]["RewardEffect"]["Effect"] = "zf2-e300"
	
	tExpProps_MaxLeve[723700] = {}
	tExpProps_MaxLeve[723700]["LogId"] = 18000152
	tExpProps_MaxLeve[723700]["RewardCultivation"] = {}
	tExpProps_MaxLeve[723700]["RewardCultivation"]["Value"] = 30
	tExpProps_MaxLeve[723700]["RewardEffect"] = {}
	tExpProps_MaxLeve[723700]["RewardEffect"]["SzObj"] = "self"
	tExpProps_MaxLeve[723700]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------逻辑部分----------------------------------------------------------
-- 检测是否满级
function ExpProps_ChkLev(nChkLev)
	local nLev = nChkLev or Get_UserLevel()
	-- 判断是否满级
	if nLev >= G_User_MaxLev then
		return false
	end
	
	return true
end

-- 检测是否可添加经验
function ExpProps_ChkMapType(nItemId,nNowMapId)
	local nMapId = nNowMapId or Get_UserMapId()
	
	-- 判断当前地图属性
	if Sys_ChkAccessExp(nMapId) then
		User_TalkChannel2005(tExpProps_Text[nItemId]["NoExp"])
		return false
	end
	
	return true
end

-- 检测该地图是否可以使用道具
function ExpProps_ChkUseMap(nItemId,nMapId)
	for i,v in pairs(tExpProps_NoUseMap) do
		if v == nMapId then
			User_TalkChannel2005(tExpProps_Text[nItemId]["NoUseMap"])
			return false
		end
	end
	
	return true
end

-- 检测是否新服
function ExpProps_ChkNewServer()
	local nGlobalId = 51131
	local nData = Get_SysDynaGlobalData1(nGlobalId)
	
	return nData >= 1
end

function ExpProps_MaxLevel(nItemId)
	if tExpProps_Stc[nItemId] ~= nil then
		if not ExpProps_ChkUseTime(nItemId) then
			return
		end
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if tExpProps_Stc[nItemId] ~= nil then
			ExpProps_SetStc(nItemId)
		end
		RewardTemplate_UseItemAndMsg(tExpProps_MaxLeve[723700])
		Sys_MsgBox(tExpProps_Text[723700]["MaxLevel2StudyPoint"])
	end
end


-- 检测次数
function ExpProps_ChkUseTime(nItemId)
	local nEvent = tExpProps_Stc[nItemId]["EventType"]
	local nType = tExpProps_Stc[nItemId]["DataType"]
	local nMaxData = tExpProps_Stc[nItemId]["MaxData"]
	
	if tExpProps_Stc[nItemId]["Level"] ~= nil then
		local nLev = Get_UserLevel()
		
		if nLev >= tExpProps_Stc[nItemId]["Level"] then
			nMaxData = tExpProps_Stc[nItemId]["MaxData"][2]
		else
			nMaxData = tExpProps_Stc[nItemId]["MaxData"][1]
		end
	end
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断今天开启的次数
	elseif Task_ChkStcValue(nEvent,nType,">=",nMaxData) then
		User_TalkChannel2005(tExpProps_Text[nItemId]["MaxData"])
		return false
	end
	
	return true
end

-- 检测是否需要判断今日经验上限
function ExpProps_ChkExpMax(nItemId) 
	for i,v in pairs(tExpProps_NoExpMax) do
		if nItemId == v then
			return false
		end
	end
	
	return true
end

-- 设置掩码
function ExpProps_SetStc(nItemId)
	local nEvent = tExpProps_Stc[nItemId]["EventType"]
	local nType = tExpProps_Stc[nItemId]["DataType"]
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 使用物品
function ExpProps_UseItem(nItemId,nConfirm)
---NBA经验特饮过期删除
	if nItemId == 3303351 then
		if CommonFunc_GetAfterActivityTime(tActivityTime["ActivityOfNBA"]["ItemTime"]) then
			if Item_DelAllItemByType(nItemId) then
				User_TalkChannel2005(tActivityOfNBA_Text["MsgBox"]["OverTime"])
			end
			return
		end
	end
	-- 判断当前地图属性
	if tExpProps_Reward[nItemId]["UseMap"] then
		if not ExpProps_ChkMapType(nItemId) then
			return
		end
	end

	local nLev = Get_UserLevel()
	-- 判断是否满级
	if not ExpProps_ChkLev(nLev) then
		if nItemId == 3303351 then
			RewardTemplate_UseItemAndMsg(tExpProps_MaxLeve[3303351])
		elseif nItemId == 723700 then
			ExpProps_MaxLevel(nItemId)
		elseif tExpProps_Text[nItemId]["MaxLevel"] ~= nil then
			User_TalkChannel2005(tExpProps_Text[nItemId]["MaxLevel"])
		end
		return
	end

	-- 判断是否是竞技场经验丹
	if nItemId == tExpProps_Cont["Arena"] then
		if nLev <= tExpProps_Reward[nItemId]["UseLevel"] then
			User_TalkChannel2005(tExpProps_Text[nItemId]["NoLevel"])
			return
		end
	end

	-- 次数判断
	if tExpProps_Stc[nItemId] ~= nil then
		if not ExpProps_ChkUseTime(nItemId) then
			return
		end
	end

	-- -- 判断今天经验池是否已满
	-- if ExpProps_ChkExpMax(nItemId) then
		-- if User_ChkSurplusExp() then
			-- User_TalkChannel2005(tRewardTemplate_Text["TodayNoRewardExp"])
			-- return
		-- end
	-- end
	
	-- 复制奖励表
	local tReward = CommonFunc_Copy(tExpProps_Reward[nItemId])
	
	-- 九转聚神丹
	if tExpProps_Reward[nItemId]["ChkExp"] then
		-- 判断是否是二次确认使用该物品
		if nConfirm == nil then
			local nSurplusExp = Get_UserSurplusExp()
			local nAddExp = tExpProps_Reward[nItemId]["RewardExpPercent"]["Value"]
			local nUpExp = tUpLevTime[nLev]*(nAddExp/100)
			
			if (nSurplusExp ~= -1) and (nSurplusExp < nUpExp) then
				-- User_TalkChannel2005(tExpProps_Text[nItemId]["NoAddExp"])
				ExpProps_Confirm(nItemId)
				return
			end
		end
		
		-- 判断是否超过140级
		if nLev >= tExpProps_Cont["Level"] then
			tReward["Talk"] = tExpProps_Text[nItemId]["NewTalk"]
		else
			tReward["Talk"] = tExpProps_Text[nItemId]["Talk"]
		end
	end

	-- 删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if tExpProps_Stc[nItemId] ~= nil then
			ExpProps_SetStc(nItemId)
		end
		
		if tExpProps_Reward[nItemId]["Level"] ~= nil then
			-- 判断等级是否超过90级
			if nLev >= tExpProps_Reward[nItemId]["Level"] then
				-- 给点化次数
				-- User_AddMentor(tExpProps_Reward[nItemId]["Mentor"])
			end
		end

		-- if tReward["PercentExp"] ~= nil then
			-- tReward["RewardExpTimeSpecial"] = {}
			-- tReward["RewardExpTimeSpecial"]["Value"] = math.ceil(tUpLevTime[nLev]*(tReward["PercentExp"]/1000))
		-- end

		RewardTemplate_UseItemAndMsg(tReward)
	end
end

-- 九转聚神丹的二次确认
function ExpProps_Confirm(nItemId)
	Sys_MsgBox(tExpProps_Text[nItemId]["Confirm"],string.format("ExpProps_UseItem</N>%d</N>1",nItemId))
end

-- 九转聚神丹碎片
function ExpProps_UseNineGodDan(nItemId)
	-- 判断当前地图属性
	if not ExpProps_ChkMapType(nItemId) then
		return
	end
	
	local nLev = Get_UserLevel()
	
	-- 判断当前玩家等级
	if nLev <= tExpProps_Reward[nItemId]["UseLev"] then
		-- 判断今天经验池是否已满
		if User_ChkSurplusExp(nUserId) then
			User_TalkChannel2005(tRewardTemplate_Text["TodayNoRewardExp"])
			return
		end
		
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][1])
		return
	end
	
	-- 出对白
	LinkItemGossipFunc_New(nItemId,"1")
end

function ExpProps_ChooseNineGodDan(nItemId,nChoose)
	if nChoose == 2 then
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][nChoose])
	else
		local nUserId = Get_UserId()
		-- 判断背包空间
		if not RewardTemplate_ChkRandomSpace(tExpProps_Reward[nItemId],nChoose,nUserId) then
			User_TalkChannel2005(tExpProps_Text[nItemId]["NoSpace"])
			return
		end
		
		-- 删除物品
		if not RewardTemplate_DelItem(tExpProps_Reward[nItemId][nChoose],nUserId) then
			return false
		end
		
		local tReward = RewardTemplate_NewRandom(tExpProps_Reward[nItemId],nChoose,nUserId)
		if next(tReward[1]["tSelfItemChanceAward"]) == nil then
			Sys_SaveActionRewardLog(tExpProps_Reward[nItemId][nChoose]["FailLog"])
			User_TalkChannel2005(tExpProps_Text[nItemId]["BetFail"])
			-- 接回主对白
			if Item_ChkItem(nItemId) then
				LinkItemGossipFunc_New(nItemId,"1-1")
			end
		end
	end
end

-- 竞技场礼包,组队竞技场礼包
function ExpProps_Arena(nItemId)
	local nMapId = Get_UserMapId()
	-- 判断当前地图属性
	if not ExpProps_ChkMapType(nItemId,nMapId) then
		return
	end
	
	-- 判断当前地图是否可用
	if not ExpProps_ChkUseMap(nItemId,nMapId) then
		return
	end
	
	-- 判断次数
	if not ExpProps_ChkUseTime(nItemId) then
		return
	end
	
	-- 判断今天经验池是否已满
	local nLev = Get_UserLevel()
	-- if ExpProps_ChkLev(nLev) then
		-- if User_ChkSurplusExp(nUserId) then
			-- User_TalkChannel2005(tRewardTemplate_Text["TodayNoRewardExp"])
			-- return
		-- end
	-- end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if nItemId == 3309813 then
			-- 180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
			ShenLiangMaLiangOnLineAct_AddStatistic1(nItemId)
			--170504[英文征服][活动脚本]斋月感恩捐献祈福活动
			RamadanActivity_ArenaPack()
			--190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
			TrojanAwakenPhaseII_GetBox(2)
		end
		-- 加掩码
		ExpProps_SetStc(nItemId)
		
		local nIndex = 1
		
		-- 判断等级
		if nLev > tExpProps_Reward[nItemId]["Level"] then
			nIndex = 3
		end
		
		-- 判断是否新服
		if ExpProps_ChkNewServer() then
			nIndex = nIndex + 1
		end
		
		-- 给奖励
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][nIndex])
		-- 播放光效
		User_EffectAdd("self",tExpProps_Reward[nItemId]["Effect"])
		--副职业提升月 个人竞技场
		if nItemId == 3007309 or nItemId == 3309813 then
			SecondProGrowth_SendTicket(6)
		end
	end
end

-- 精英PK赛礼包,组队PK赛礼包,大众PK赛礼包
function ExpProps_ArenaJoinPackage(nItemId)
	local nMapId = Get_UserMapId()
	-- 判断当前地图属性
	if not ExpProps_ChkMapType(nItemId,nMapId) then
		return
	end
	
	-- 判断当前地图是否可用
	if not ExpProps_ChkUseMap(nItemId,nMapId) then
		return
	end
	
	-- 判断今天经验池是否已满
	local nLev = Get_UserLevel()
	if ExpProps_ChkLev(nLev) then
		if User_ChkSurplusExp(nUserId) then
			User_TalkChannel2005(tRewardTemplate_Text["TodayNoRewardExp"])
			return
		end
	end
	
	if nLev > tExpProps_Reward[nItemId]["Level"] then
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][2])
	else
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][1])
	end
end

-- 使用白色恶之花或红色恶之花
function ExpProps_FlowerOfEvil(nItemId)
	-- 判断是否满级
	if ExpProps_ChkLev() then
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][1])
	else
		RewardTemplate_UseItemAndMsg(tExpProps_Reward[nItemId][2])
	end
end

--140级以上玩家使用经验保护丹
function ExpProtect_Use(nItemId)
	--判断等级
	local nLevel = tExpProtect_Data["Needlev"]
	if Get_UserLevel() < nLevel then
		return
	end
	--二次确认
	Sys_MsgBox(tExpProtect_Text["Sure"],"ExpProtect_SureUse</N>".. nItemId ,nil)
end


function ExpProtect_SureUse(nItemId)
--判断玩家身上有多少经验保护丹(赠)，优先扣除赠的
	local nPresentNum = Get_CountItemType(nItemId,0,2)
	if nPresentNum ~= 0 then
		if Item_DelMulItem(nItemId,nItemId,nPresentNum,2,0,0,0) then
			local tTemp = CommonFunc_Copy(tExpProtect_Get[1])
			tTemp["RewardItem"][1]["Attr"] = string.format("0 %d 3",nPresentNum)
			RewardTemplate_UseItem(tTemp)
			Sys_SaveActionFestivalLog(string.format(tExpProtect_Log["Log"][1],nPresentNum,nPresentNum))
		end
		return
	end
	
--判断玩家有多少经验保护丹(非赠)
	local nNotPresentNum = Get_CountItemType(nItemId,0,0)
	if nNotPresentNum ~= 0 then
		if Item_DelMulItem(nItemId,nItemId,nNotPresentNum,0,0,0,0) then
			--for j = 1,nNotPresentNum do
			local tTemp_1 = CommonFunc_Copy(tExpProtect_Get[2])
			tTemp_1["RewardItem"][1]["Attr"] = string.format("0 %d",nNotPresentNum)
				RewardTemplate_UseItem(tTemp_1)
			--end
		Sys_SaveActionFestivalLog(string.format(tExpProtect_Log["Log"][2],nNotPresentNum,nNotPresentNum))
		end
	end
end

------------------------------------------------------------------物品配置----------------------------------------------------------
-- -- 竞技场经验丹
-- tItem[3303016] = tItem[3303016] or {}
-- tItem[3303016]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 特殊经验丹
-- tItem[3303017] = tItem[3303017] or {}
-- tItem[3303017]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 高级特殊经验丹
-- tItem[3303018] = tItem[3303018] or {}
-- tItem[3303018]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 超级特殊经验丹
-- tItem[3303019] = tItem[3303019] or {}
-- tItem[3303019]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 超级特殊经验丹
tItem[3303351] = tItem[3303351] or {}
tItem[3303351]["Function"] = function(nItemId,sItemName)
	ExpProps_UseItem(nItemId)
end
-- 夏日清凉经验饮料
-- tItem[3303718] = tItem[3303718] or {}
-- tItem[3303718]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end
-- -- 九转聚神丹碎
-- tItemFace[720730] = 491
-- tItem[720730] = tItem[720730] or {}
-- tItem[720730]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseNineGodDan(nItemId)
-- end
-- tItem[720730]["DialogueText"] = tExpProps_Text[720730]
-- tItem[720730]["Text1-1"] = {111}
-- tItem[720730]["tOption1-1"] = {1,2,3}
-- tItem[720730]["OptionFunc1"] = "ExpProps_ChooseNineGodDan</N>720730</N>2"
-- tItem[720730]["OptionFunc2"] = "ExpProps_ChooseNineGodDan</N>720730</N>3"

-- -- 九转聚神丹碎片
-- tItemFace[728596] = 491
-- tItem[728596] = tItem[728596] or {}
-- tItem[728596]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseNineGodDan(nItemId)
-- end
-- tItem[728596]["DialogueText"] = tExpProps_Text[728596]
-- tItem[728596]["Text1-1"] = {111}
-- tItem[728596]["tOption1-1"] = {1,2,3}
-- tItem[728596]["OptionFunc1"] = "ExpProps_ChooseNineGodDan</N>728596</N>2"
-- tItem[728596]["OptionFunc2"] = "ExpProps_ChooseNineGodDan</N>728596</N>3"

-- -- 竞技场礼包
-- tItem[3007309] = tItem[3007309] or {}
-- tItem[3007309]["Function"] = function(nItemId,sItemName)
	-- ExpProps_Arena(nItemId)
-- end
tItem[3309813] = tItem[3309813] or {}
tItem[3309813]["Function"] = function(nItemId,sItemName)
	ExpProps_Arena(nItemId)
end

-- -- 组队竞技场礼包
-- tItem[3007308] = tItem[3007308] or {}
-- tItem[3007308]["Function"] = function(nItemId,sItemName)
	-- ExpProps_Arena(nItemId)
-- end

-- -- 精英PK赛礼包
-- tItem[720713] = tItem[720713] or {}
-- tItem[720713]["Function"] = function(nItemId,sItemName)
	-- ExpProps_ArenaJoinPackage(nItemId)
-- end

-- -- 组队PK赛礼包
-- tItem[720793] = tItem[720793] or {}
-- tItem[720793]["Function"] = function(nItemId,sItemName)
	-- ExpProps_ArenaJoinPackage(nItemId)
-- end

-- -- 大众PK赛礼包
-- tItem[720981] = tItem[720981] or {}
-- tItem[720981]["Function"] = function(nItemId,sItemName)
	-- ExpProps_ArenaJoinPackage(nItemId)
-- end

-- -- 聚神丹
-- tItem[722136] = tItem[722136] or {}
-- tItem[722136]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 聚神丹
-- tItem[3001283] = tItem[3001283] or {}
-- tItem[3001283]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- 聚神丹
tItem[723700] = tItem[723700] or {}
tItem[723700]["Function"] = function(nItemId,sItemName)
	ExpProps_UseItem(nItemId)
end

-- -- 聚元丹
-- tItem[721630] = tItem[721630] or {}
-- tItem[721630]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 九转聚神丹
-- tItem[722057] = tItem[722057] or {}
-- tItem[722057]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 九转聚神丹(赠)
-- tItem[723744] = tItem[723744] or {}
-- tItem[723744]["Function"] = function(nItemId,sItemName)
	-- ExpProps_UseItem(nItemId)
-- end

-- -- 白色恶之花
-- tItem[722736] = tItem[722736] or {}
-- tItem[722736]["Function"] = function(nItemId,sItemName)
	-- ExpProps_FlowerOfEvil(nItemId)
-- end

-- -- 红色恶之花
-- tItem[722732] = tItem[722736]