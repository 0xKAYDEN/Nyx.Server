------------------------------------------------------------------------------------
--Name:		180620[英文征服][活动脚本]暑期签到有礼活动制作
--Purpose:	暑期签到有礼活动制作
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------

-- 前缀SummerSignInAct

local tSummerSignInAct_Cont = {}

--活动时间
tSummerSignInAct_Cont["BefTime"] = tActivityTime["SummerSignInAct"]["BefTime"]
tSummerSignInAct_Cont["ActTime"] = tActivityTime["SummerSignInAct"]["ActTime"]

--等级、转世
tSummerSignInAct_Cont["Level"] = 15
tSummerSignInAct_Cont["Mete"] ={}
tSummerSignInAct_Cont["Mete"][1] = 1
tSummerSignInAct_Cont["Mete"][2] = 2

tSummerSignInAct_Cont["ItemId"] ={}
tSummerSignInAct_Cont["ItemId"][1] = 3309773
tSummerSignInAct_Cont["ItemId"][2] = 3309774
tSummerSignInAct_Cont["ItemId"][3] = 3309775

tSummerSignInAct_Cont["GlobalId"] = 52694

local tSummerSignInAct_Stc = {}
tSummerSignInAct_Stc[1] = {}
tSummerSignInAct_Stc[1]["EventType"] = 176
tSummerSignInAct_Stc[1]["DataType"] = 20

tSummerSignInAct_Stc[2] = {}
tSummerSignInAct_Stc[2]["EventType"] = 176
tSummerSignInAct_Stc[2]["DataType"] = 21

local tSummerSignInAct_Cost = {}
tSummerSignInAct_Cost["Money"] = 800000
tSummerSignInAct_Cost["EMoney"] = 9



local tSummerSignInAct_RewandItem = {}

	tSummerSignInAct_RewandItem[3309771] = {}
	tSummerSignInAct_RewandItem[3309771][1] = {}
	tSummerSignInAct_RewandItem[3309771][1]["ItemChanceSum"] = 10000
	-- 经验球赠*5
	tSummerSignInAct_RewandItem[3309771][1][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][1]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][1]["ItemChance"] = 2000
	tSummerSignInAct_RewandItem[3309771][1][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][1]["RewardItem"][1]["Id"] = 3003108
	tSummerSignInAct_RewandItem[3309771][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][1][1]["Log"] = "0,0,3309771,1,12001086,1[1],3003108,1"
	tSummerSignInAct_RewandItem[3309771][1][1]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][1]
	-- 流星卷赠*3
	tSummerSignInAct_RewandItem[3309771][1][2] = {}
	tSummerSignInAct_RewandItem[3309771][1][2]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][2]["ItemChance"] = 2000
	tSummerSignInAct_RewandItem[3309771][1][2]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][2]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][2]["RewardItem"][1]["Id"] = 3301830
	tSummerSignInAct_RewandItem[3309771][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][1][2]["Log"] = "0,0,3309771,1,12001086,1[1],3301830,1"
	tSummerSignInAct_RewandItem[3309771][1][2]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][2]
	-- 500点修行值赠*1
	tSummerSignInAct_RewandItem[3309771][1][3] = {}
	tSummerSignInAct_RewandItem[3309771][1][3]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][3]["ItemChance"] = 2000
	tSummerSignInAct_RewandItem[3309771][1][3]["RewardCultivation"] = {}
	tSummerSignInAct_RewandItem[3309771][1][3]["RewardCultivation"]["Value"] = 500
	tSummerSignInAct_RewandItem[3309771][1][3]["Log"] = "0,0,3309771,1,12001086,1[1],6,500"
	tSummerSignInAct_RewandItem[3309771][1][3]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][3]
	-- 赤炼石+2赠*1
	tSummerSignInAct_RewandItem[3309771][1][4] = {}
	tSummerSignInAct_RewandItem[3309771][1][4]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][4]["ItemChance"] = 1000
	tSummerSignInAct_RewandItem[3309771][1][4]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][4]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][4]["RewardItem"][1]["Id"] = 730002
	tSummerSignInAct_RewandItem[3309771][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309771][1][4]["Log"] = "0,0,3309771,1,12001086,1[1],730002,1"
	tSummerSignInAct_RewandItem[3309771][1][4]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][4]
	-- 赤炼石+1赠*2
	tSummerSignInAct_RewandItem[3309771][1][5] = {}
	tSummerSignInAct_RewandItem[3309771][1][5]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][5]["ItemChance"] = 1500
	tSummerSignInAct_RewandItem[3309771][1][5]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][5]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][5]["RewardItem"][1]["Id"] = 730001
	tSummerSignInAct_RewandItem[3309771][1][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tSummerSignInAct_RewandItem[3309771][1][5]["Log"] = "0,0,3309771,1,12001086,1[1],730001,2"
	tSummerSignInAct_RewandItem[3309771][1][5]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][5]
	-- 龙珠赠*1
	tSummerSignInAct_RewandItem[3309771][1][6] = {}
	tSummerSignInAct_RewandItem[3309771][1][6]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][6]["ItemChance"] = 500
	tSummerSignInAct_RewandItem[3309771][1][6]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][6]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][6]["RewardItem"][1]["Id"] = 1088000
	tSummerSignInAct_RewandItem[3309771][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309771][1][6]["GlobalId"] = 52694
	tSummerSignInAct_RewandItem[3309771][1][6]["Pos"] = 0
	tSummerSignInAct_RewandItem[3309771][1][6]["MaxData"] = 500
	tSummerSignInAct_RewandItem[3309771][1][6]["FullIndex"] = 2
	tSummerSignInAct_RewandItem[3309771][1][6]["Log"] = "0,0,3309771,1,12001086,1[1],1088000,1"
	tSummerSignInAct_RewandItem[3309771][1][6]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][6]
	--炽热天石碎片赠*2
	tSummerSignInAct_RewandItem[3309771][1][7] = {}
	tSummerSignInAct_RewandItem[3309771][1][7]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][7]["ItemChance"] = 800
	tSummerSignInAct_RewandItem[3309771][1][7]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][7]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][7]["RewardItem"][1]["Id"] = 3008727
	tSummerSignInAct_RewandItem[3309771][1][7]["RewardItem"][1]["Attr"] = "0 2"
	tSummerSignInAct_RewandItem[3309771][1][7]["Log"] = "0,0,3309771,1,12001086,1[1],3008727,2"
	tSummerSignInAct_RewandItem[3309771][1][7]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][7]
	--转世令牌赠*1
	tSummerSignInAct_RewandItem[3309771][1][8] = {}
	tSummerSignInAct_RewandItem[3309771][1][8]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][8]["ItemChance"] = 200
	tSummerSignInAct_RewandItem[3309771][1][8]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][8]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][8]["RewardItem"][1]["Id"] = 723701
	tSummerSignInAct_RewandItem[3309771][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309771][1][8]["GlobalId"] = 52694
	tSummerSignInAct_RewandItem[3309771][1][8]["Pos"] = 1
	tSummerSignInAct_RewandItem[3309771][1][8]["MaxData"] = 3
	tSummerSignInAct_RewandItem[3309771][1][8]["FullIndex"] = 9
	tSummerSignInAct_RewandItem[3309771][1][8]["Log"] = "0,0,3309771,1,12001086,1[1],723701,1"
	tSummerSignInAct_RewandItem[3309771][1][8]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][8]
	-- 100点修行值赠*1
	tSummerSignInAct_RewandItem[3309771][1][9] = {}
	tSummerSignInAct_RewandItem[3309771][1][9]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][1][9]["ItemChance"] = 0
	tSummerSignInAct_RewandItem[3309771][1][9]["RewardCultivation"] = {}
	tSummerSignInAct_RewandItem[3309771][1][9]["RewardCultivation"]["Value"] = 100
	tSummerSignInAct_RewandItem[3309771][1][9]["Log"] = "0,0,3309771,1,12001086,1[1],6,100"
	tSummerSignInAct_RewandItem[3309771][1][9]["Talk"] = tSummerSignInAct_Text["MsgReward"][1][9]
	
	--一阶冰爽精华包
	tSummerSignInAct_RewandItem[3309771][1][10] = {}
	tSummerSignInAct_RewandItem[3309771][1][10]["RandomItemChanceType"] = 1
	tSummerSignInAct_RewandItem[3309771][1][10]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem[3309771][1][10]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][1][10]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][1][10]["RewardItem"][1]["Id"] = 3309773
	tSummerSignInAct_RewandItem[3309771][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][1][10]["Log"] = "0,0,3309771,1,12001086,1[1],3309773,1"
	
	-- 1转15级奖励
	tSummerSignInAct_RewandItem[3309771][2] = {}
	tSummerSignInAct_RewandItem[3309771][2]["ItemChanceSum"] = 10000
	-- 流星卷赠*3
	tSummerSignInAct_RewandItem[3309771][2][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][1]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][1]["ItemChance"] = 2000
	tSummerSignInAct_RewandItem[3309771][2][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][1]["RewardItem"][1]["Id"] = 3301830
	tSummerSignInAct_RewandItem[3309771][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][2][1]["Log"] = "0,0,3309771,1,12001086,1[2],3301830,1"
	tSummerSignInAct_RewandItem[3309771][2][1]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][1]
	-- 赠+2马匹*2
	tSummerSignInAct_RewandItem[3309771][2][2] = {}
	tSummerSignInAct_RewandItem[3309771][2][2]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][2]["ItemChance"] = 2000
	tSummerSignInAct_RewandItem[3309771][2][2]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][2]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][2]["RewardItem"][1]["Id"] = 3305396
	tSummerSignInAct_RewandItem[3309771][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][2][2]["Log"] = "0,0,3309771,1,12001086,1[2],3305396,1"
	tSummerSignInAct_RewandItem[3309771][2][2]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][2]
	-- 微光星陨石*3
	tSummerSignInAct_RewandItem[3309771][2][3] = {}
	tSummerSignInAct_RewandItem[3309771][2][3]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][3]["ItemChance"] = 2000
	tSummerSignInAct_RewandItem[3309771][2][3]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][3]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][3]["RewardItem"][1]["Id"] = 3009000
	tSummerSignInAct_RewandItem[3309771][2][3]["RewardItem"][1]["Attr"] = "0 3"
	tSummerSignInAct_RewandItem[3309771][2][3]["Log"] = "0,0,3309771,1,12001086,1[2],3009000,3"
	tSummerSignInAct_RewandItem[3309771][2][3]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][3]
	-- 50点赠品天石*1
	tSummerSignInAct_RewandItem[3309771][2][4] = {}
	tSummerSignInAct_RewandItem[3309771][2][4]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][4]["ItemChance"] = 500
	tSummerSignInAct_RewandItem[3309771][2][4]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][4]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][4]["RewardItem"][1]["Id"] = 3006224
	tSummerSignInAct_RewandItem[3309771][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][2][4]["Log"] = "0,0,3309771,1,12001086,1[2],3006224,1"
	tSummerSignInAct_RewandItem[3309771][2][4]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][4]
	-- 赤炼石+2赠*2
	tSummerSignInAct_RewandItem[3309771][2][5] = {}
	tSummerSignInAct_RewandItem[3309771][2][5]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][5]["ItemChance"] = 1300
	tSummerSignInAct_RewandItem[3309771][2][5]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][5]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][5]["RewardItem"][1]["Id"] = 730002
	tSummerSignInAct_RewandItem[3309771][2][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tSummerSignInAct_RewandItem[3309771][2][5]["Log"] = "0,0,3309771,1,12001086,1[2],730002,2"
	tSummerSignInAct_RewandItem[3309771][2][5]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][5]
	-- 龙珠赠*1
	tSummerSignInAct_RewandItem[3309771][2][6] = {}
	tSummerSignInAct_RewandItem[3309771][2][6]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][6]["ItemChance"] = 600
	tSummerSignInAct_RewandItem[3309771][2][6]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][6]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][6]["RewardItem"][1]["Id"] = 1088000
	tSummerSignInAct_RewandItem[3309771][2][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309771][2][6]["GlobalId"] = 52694
	tSummerSignInAct_RewandItem[3309771][2][6]["Pos"] = 2
	tSummerSignInAct_RewandItem[3309771][2][6]["MaxData"] = 100
	tSummerSignInAct_RewandItem[3309771][2][6]["FullIndex"] = 5
	tSummerSignInAct_RewandItem[3309771][2][6]["Log"] = "0,0,3309771,1,12001086,1[2],1088000,1"
	tSummerSignInAct_RewandItem[3309771][2][6]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][6]
	--转世令牌赠*1
	tSummerSignInAct_RewandItem[3309771][2][7] = {}
	tSummerSignInAct_RewandItem[3309771][2][7]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][7]["ItemChance"] = 200
	tSummerSignInAct_RewandItem[3309771][2][7]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][7]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][7]["RewardItem"][1]["Id"] = 723701
	tSummerSignInAct_RewandItem[3309771][2][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309771][2][7]["GlobalId"] = 52694
	tSummerSignInAct_RewandItem[3309771][2][7]["Pos"] = 3
	tSummerSignInAct_RewandItem[3309771][2][7]["MaxData"] = 10
	tSummerSignInAct_RewandItem[3309771][2][7]["FullIndex"] = 1
	tSummerSignInAct_RewandItem[3309771][2][7]["Log"] = "0,0,3309771,1,12001086,1[2],723701,1"
	tSummerSignInAct_RewandItem[3309771][2][7]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][7]
	-- 明亮星陨石*1
	tSummerSignInAct_RewandItem[3309771][2][8] = {}
	tSummerSignInAct_RewandItem[3309771][2][8]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][2][8]["ItemChance"] = 1400
	tSummerSignInAct_RewandItem[3309771][2][8]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][8]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][8]["RewardItem"][1]["Id"] = 3009001
	tSummerSignInAct_RewandItem[3309771][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][2][8]["Log"] = "0,0,3309771,1,12001086,1[2],3009001,1"
	tSummerSignInAct_RewandItem[3309771][2][8]["Talk"] = tSummerSignInAct_Text["MsgReward"][2][8]
	--二阶冰爽精华包
	tSummerSignInAct_RewandItem[3309771][2][9] = {}
	tSummerSignInAct_RewandItem[3309771][2][9]["RandomItemChanceType"] = 1
	tSummerSignInAct_RewandItem[3309771][2][9]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem[3309771][2][9]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][2][9]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][2][9]["RewardItem"][1]["Id"] = 3309774
	tSummerSignInAct_RewandItem[3309771][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][2][9]["Log"] = "0,0,3309771,1,12001086,1[2],3309774,1"
	
	
	-- 2转15级奖励
	tSummerSignInAct_RewandItem[3309771][3] = {}
	tSummerSignInAct_RewandItem[3309771][3]["ItemChanceSum"] = 10000
	-- 回气丹赠*2
	tSummerSignInAct_RewandItem[3309771][3][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][1]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][1]["ItemChance"] = 2500
	tSummerSignInAct_RewandItem[3309771][3][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][1]["RewardItem"][1]["Id"] = 729481
	tSummerSignInAct_RewandItem[3309771][3][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tSummerSignInAct_RewandItem[3309771][3][1]["Log"] = "0,0,3309771,1,12001086,1[3],729481,2"
	tSummerSignInAct_RewandItem[3309771][3][1]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][1]
	-- 强炼丹*4赠
	tSummerSignInAct_RewandItem[3309771][3][2] = {}
	tSummerSignInAct_RewandItem[3309771][3][2]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][2]["ItemChance"] = 1000
	tSummerSignInAct_RewandItem[3309771][3][2]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][2]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][2]["RewardItem"][1]["Id"] = 3003124
	tSummerSignInAct_RewandItem[3309771][3][2]["RewardItem"][1]["Attr"] = "0 4 3"
	tSummerSignInAct_RewandItem[3309771][3][2]["Log"] = "0,0,3309771,1,12001086,1[3],3003124,4"
	tSummerSignInAct_RewandItem[3309771][3][2]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][2]
	-- 大爆丹*4赠
	tSummerSignInAct_RewandItem[3309771][3][3] = {}
	tSummerSignInAct_RewandItem[3309771][3][3]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][3]["ItemChance"] = 1000
	tSummerSignInAct_RewandItem[3309771][3][3]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][3]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][3]["RewardItem"][1]["Id"] = 3003126
	tSummerSignInAct_RewandItem[3309771][3][3]["RewardItem"][1]["Attr"] = "0 4 3"
	tSummerSignInAct_RewandItem[3309771][3][3]["Log"] = "0,0,3309771,1,12001086,1[3],3003126,4"
	tSummerSignInAct_RewandItem[3309771][3][3]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][3]
	-- 赠万能神纹精粹*10
	tSummerSignInAct_RewandItem[3309771][3][4] = {}
	tSummerSignInAct_RewandItem[3309771][3][4]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][4]["ItemChance"] = 1000
	tSummerSignInAct_RewandItem[3309771][3][4]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][4]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][4]["RewardItem"][1]["Id"] = 4060001
	tSummerSignInAct_RewandItem[3309771][3][4]["RewardItem"][1]["Attr"] = "0 10 3"
	tSummerSignInAct_RewandItem[3309771][3][4]["Log"] = "0,0,3309771,1,12001086,1[3],4060001,10"
	tSummerSignInAct_RewandItem[3309771][3][4]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][4]
	-- 明亮星陨石*1
	tSummerSignInAct_RewandItem[3309771][3][5] = {}
	tSummerSignInAct_RewandItem[3309771][3][5]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][5]["ItemChance"] = 2400
	tSummerSignInAct_RewandItem[3309771][3][5]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][5]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][5]["RewardItem"][1]["Id"] = 3009001
	tSummerSignInAct_RewandItem[3309771][3][5]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][3][5]["Log"] = "0,0,3309771,1,12001086,1[3],3009001,1"
	tSummerSignInAct_RewandItem[3309771][3][5]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][5]
	-- 50点赠品天石
	tSummerSignInAct_RewandItem[3309771][3][6] = {}
	tSummerSignInAct_RewandItem[3309771][3][6]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][6]["ItemChance"] = 500
	tSummerSignInAct_RewandItem[3309771][3][6]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][6]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][6]["RewardItem"][1]["Id"] = 3006224
	tSummerSignInAct_RewandItem[3309771][3][6]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][3][6]["Log"] = "0,0,3309771,1,12001086,1[3],3006224,1"
	tSummerSignInAct_RewandItem[3309771][3][6]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][6]
	-- 明亮星陨石*5
	tSummerSignInAct_RewandItem[3309771][3][7] = {}
	tSummerSignInAct_RewandItem[3309771][3][7]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][7]["ItemChance"] = 100
	tSummerSignInAct_RewandItem[3309771][3][7]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][7]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][7]["RewardItem"][1]["Id"] = 3009001
	tSummerSignInAct_RewandItem[3309771][3][7]["RewardItem"][1]["Attr"] = "0 5"
	tSummerSignInAct_RewandItem[3309771][3][7]["Log"] = "0,0,3309771,1,12001086,1[3],3009001,5"
	tSummerSignInAct_RewandItem[3309771][3][7]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][7]
	--赠清心符*3
	tSummerSignInAct_RewandItem[3309771][3][8] = {}
	tSummerSignInAct_RewandItem[3309771][3][8]["RandomItemChanceType"] = 2
	tSummerSignInAct_RewandItem[3309771][3][8]["ItemChance"] = 1500
	tSummerSignInAct_RewandItem[3309771][3][8]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][8]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][8]["RewardItem"][1]["Id"] = 720128
	tSummerSignInAct_RewandItem[3309771][3][8]["RewardItem"][1]["Attr"] = "0 3 3"
	tSummerSignInAct_RewandItem[3309771][3][8]["GlobalId"] = 52694
	tSummerSignInAct_RewandItem[3309771][3][8]["Pos"] = 4
	tSummerSignInAct_RewandItem[3309771][3][8]["MaxData"] = 10
	tSummerSignInAct_RewandItem[3309771][3][8]["FullIndex"] = 3
	tSummerSignInAct_RewandItem[3309771][3][8]["Log"] = "0,0,3309771,1,12001086,1[3],720128,3"
	tSummerSignInAct_RewandItem[3309771][3][8]["Talk"] = tSummerSignInAct_Text["MsgReward"][3][8]
	--三阶冰爽精华包
	tSummerSignInAct_RewandItem[3309771][3][9] = {}
	tSummerSignInAct_RewandItem[3309771][3][9]["RandomItemChanceType"] = 1
	tSummerSignInAct_RewandItem[3309771][3][9]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem[3309771][3][9]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309771][3][9]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309771][3][9]["RewardItem"][1]["Id"] = 3309775
	tSummerSignInAct_RewandItem[3309771][3][9]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309771][3][9]["Log"] = "0,0,3309771,1,12001086,1[3],3309775,1"
	
	--一阶冰爽精华包
	tSummerSignInAct_RewandItem[3309773]={}
	tSummerSignInAct_RewandItem[3309773][1]={}
	tSummerSignInAct_RewandItem[3309773][1]["LogId"] = 10002434
	tSummerSignInAct_RewandItem[3309773][1]["DeleteItem"] = {}
	tSummerSignInAct_RewandItem[3309773][1]["DeleteItem"][1] = {}
	tSummerSignInAct_RewandItem[3309773][1]["DeleteItem"][1]["Id"] = 3309773
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][1]["Id"] = 3003108
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][2] = {}
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][2]["Id"] = 730002
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][3] = {}
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][3]["Id"] = 3301827
	tSummerSignInAct_RewandItem[3309773][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tSummerSignInAct_RewandItem[3309773][1]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem[3309773][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--二阶冰爽精华包
	tSummerSignInAct_RewandItem[3309774]={}
	tSummerSignInAct_RewandItem[3309774][1]={}
	tSummerSignInAct_RewandItem[3309774][1]["LogId"] = 10002434
	tSummerSignInAct_RewandItem[3309774][1]["DeleteItem"] = {}
	tSummerSignInAct_RewandItem[3309774][1]["DeleteItem"][1] = {}
	tSummerSignInAct_RewandItem[3309774][1]["DeleteItem"][1]["Id"] = 3309774
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"][1]["Id"] = 3301830
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"][2] = {}
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"][2]["Id"] = 730002
	tSummerSignInAct_RewandItem[3309774][1]["RewardItem"][2]["Attr"] = "0 2 3"
	tSummerSignInAct_RewandItem[3309774][1]["RewardCultivation"] = {}
	tSummerSignInAct_RewandItem[3309774][1]["RewardCultivation"]["Value"] = 300
	tSummerSignInAct_RewandItem[3309774][1]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem[3309774][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--三阶冰爽精华包
	tSummerSignInAct_RewandItem[3309775]={}
	tSummerSignInAct_RewandItem[3309775][1]={}
	tSummerSignInAct_RewandItem[3309775][1]["LogId"] = 10002434
	tSummerSignInAct_RewandItem[3309775][1]["DeleteItem"] = {}
	tSummerSignInAct_RewandItem[3309775][1]["DeleteItem"][1] = {}
	tSummerSignInAct_RewandItem[3309775][1]["DeleteItem"][1]["Id"] = 3309775
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"][1]["Id"] = 3002030
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"][1]["Attr"] = "0 10"
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"][2] = {}
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"][2]["Id"] = 3009001
	tSummerSignInAct_RewandItem[3309775][1]["RewardItem"][2]["Attr"] = "0 2"
	tSummerSignInAct_RewandItem[3309775][1]["RewardStrengthValue"] = {}
	tSummerSignInAct_RewandItem[3309775][1]["RewardStrengthValue"]["Value"] = 500
	tSummerSignInAct_RewandItem[3309775][1]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem[3309775][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tSummerSignInAct_RewandItem["RewardPack"] = {}
	tSummerSignInAct_RewandItem["RewardPack"][1] = {}
	tSummerSignInAct_RewandItem["RewardPack"][1]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardPack"][1]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardPack"][1]["RewardItem"] = {}
	tSummerSignInAct_RewandItem["RewardPack"][1]["RewardItem"][1] = {}
	tSummerSignInAct_RewandItem["RewardPack"][1]["RewardItem"][1]["Id"] = 3309771
	tSummerSignInAct_RewandItem["RewardPack"][1]["RewardItem"][1]["Attr"] = "0 1"
	
	
	-- 2-6点 100点气力值
	tSummerSignInAct_RewandItem["RewardDice"] ={}
	tSummerSignInAct_RewandItem["RewardDice"][6] = {}
	tSummerSignInAct_RewandItem["RewardDice"][6]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][6]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][6]["RewardStrengthValue"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][6]["RewardStrengthValue"]["Value"] = 100
	tSummerSignInAct_RewandItem["RewardDice"][6]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][6]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 7           18天石（赠）
	tSummerSignInAct_RewandItem["RewardDice"][7] = {}
	tSummerSignInAct_RewandItem["RewardDice"][7]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][7]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][7]["RewardEMoneyMono"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][7]["RewardEMoneyMono"]["Value"] = 18
	tSummerSignInAct_RewandItem["RewardDice"][7]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][7]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 8             27天石（赠）
	tSummerSignInAct_RewandItem["RewardDice"][8] = {}
	tSummerSignInAct_RewandItem["RewardDice"][8]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][8]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][8]["RewardEMoneyMono"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][8]["RewardEMoneyMono"]["Value"] = 27
	tSummerSignInAct_RewandItem["RewardDice"][8]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][8]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 9             36天石（赠）
	tSummerSignInAct_RewandItem["RewardDice"][9] = {}
	tSummerSignInAct_RewandItem["RewardDice"][9]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][9]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][9]["RewardEMoneyMono"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][9]["RewardEMoneyMono"]["Value"] = 36
	tSummerSignInAct_RewandItem["RewardDice"][9]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][9]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 10             45天石（赠）
	tSummerSignInAct_RewandItem["RewardDice"][10] = {}
	tSummerSignInAct_RewandItem["RewardDice"][10]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][10]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][10]["RewardEMoneyMono"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][10]["RewardEMoneyMono"]["Value"] = 45
	tSummerSignInAct_RewandItem["RewardDice"][10]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][10]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 11             54天石（赠）
	tSummerSignInAct_RewandItem["RewardDice"][11] = {}
	tSummerSignInAct_RewandItem["RewardDice"][11]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][11]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][11]["RewardEMoneyMono"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][11]["RewardEMoneyMono"]["Value"] = 54
	tSummerSignInAct_RewandItem["RewardDice"][11]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][11]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 12             63天石（赠）
	tSummerSignInAct_RewandItem["RewardDice"][12] = {}
	tSummerSignInAct_RewandItem["RewardDice"][12]["LogId"] = 10002434
	tSummerSignInAct_RewandItem["RewardDice"][12]["RewardNoNeedTip"] = 1
	tSummerSignInAct_RewandItem["RewardDice"][12]["RewardEMoneyMono"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][12]["RewardEMoneyMono"]["Value"] = 63
	tSummerSignInAct_RewandItem["RewardDice"][12]["RewardEffect"] = {}
	tSummerSignInAct_RewandItem["RewardDice"][12]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 随机骰子点数
	local tSummerSignInAct_RandomDiceNum = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1]["ItemChanceSum"] = 10000
	
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][1] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][1]["RandomItemChanceType"] = 2
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][1]["ItemChance"] = 3000
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][1]["Num"] = 1
	
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][2] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][2]["RandomItemChanceType"] = 2
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][2]["ItemChance"] = 3000
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][2]["Num"] = 2
	
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][3] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][3]["RandomItemChanceType"] = 2
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][3]["ItemChance"] = 3000
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][3]["Num"] = 3
	
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][4] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][4]["RandomItemChanceType"] = 2
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][4]["ItemChance"] = 500
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][4]["Num"] = 4
	
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][5] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][5]["RandomItemChanceType"] = 2
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][5]["ItemChance"] = 300
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][5]["Num"] = 5
	
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][6] = {}
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][6]["RandomItemChanceType"] = 2
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][6]["ItemChance"] = 200
	tSummerSignInAct_RandomDiceNum["DiceNum"][1][6]["Num"] = 6
local tSummerSignInAct_Log = {}
--物品过期删除
tSummerSignInAct_Log["TimeOut"] = "0,0,%d,%d,12001086,0,0,0"

tSummerSignInAct_Log["ItemEmoneyLog"] = {}
tSummerSignInAct_Log["ItemEmoneyLog"][1] = "350	21532	0	0	1	"   --玩家打开0转每日签到礼包 
tSummerSignInAct_Log["ItemEmoneyLog"][2] = "350	21533	0	0	1	"   --玩家打开1转15+每日签到礼包 
tSummerSignInAct_Log["ItemEmoneyLog"][3] = "350	21534	0	0	1	"   --玩家打开2转15+每日签到礼包 

tSummerSignInAct_Log["CostEmoneyLog"] = {}
tSummerSignInAct_Log["CostEmoneyLog"][1] = "350	21530	9	9	1	"  --玩家花9天石投掷骰子 
tSummerSignInAct_Log["CostEmoneyLog"][2] = "350	21531	0	0	1	"  --玩家花80W金币投掷骰子 

tSummerSignInAct_Log["RewardEmoneyLog"] = {}
tSummerSignInAct_Log["RewardEmoneyLog"][1] = "350	21535	0	0	%d	"  --玩家投骰子获得赠品天石  
tSummerSignInAct_Log["RewardEmoneyLog"][2] = "350	21536	0	0	1	"  --玩家投骰子获得气力值  


local tSummerSignInAct_Effect = {}
	--骰子的
	tSummerSignInAct_Effect[1] = "touzi_1"
	tSummerSignInAct_Effect[2] = "touzi_2"
	tSummerSignInAct_Effect[3] = "touzi_3"
	tSummerSignInAct_Effect[4] = "touzi_4"
	tSummerSignInAct_Effect[5] = "touzi_5"
	tSummerSignInAct_Effect[6] = "touzi_6"
--------------------------------npc逻辑---------------------------
--领取每日礼包
function SummerSignInAct_RewardPack(nNpcId)
	
	--活动时间
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent1 = tSummerSignInAct_Stc[1]["EventType"]
	local nType1 = tSummerSignInAct_Stc[1]["DataType"]
	
	--隔天判断
	if Task_StcInterval(nEvent1,nType1,1,4) then
		Task_SetStatistic(nEvent1,nType1,0,1)
		Task_SetStcTimestamp(nEvent1,nType1,0)
	end
	--是否已领取
	if Task_ChkStcValue(nEvent1,nType1,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tSummerSignInAct_RewandItem["RewardPack"][1])
	if not(User_CheckLeftSpace(nSpace)) then
	-- 提示
		User_TalkChannel2005(string.format(tSummerSignInAct_Text["MsgSpace"],nSpace))
		return 
	end
	
	--打掩码
	Task_SetStatistic(nEvent1,nType1,1,1)
	Task_SetStcTimestamp(nEvent1,nType1,0)
	RewardTemplate_UseItem(tSummerSignInAct_RewandItem["RewardPack"][1])
	User_TalkChannel2005(tSummerSignInAct_Text["TalkReward"])
end

--金币花费
function SummerSignInAct_MoneyCost(nNpcId)
	--活动时间
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nUseMoney = tSummerSignInAct_Cost["Money"]
	
	if not User_CanPutMoney2Bag(-nUseMoney) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return 
	end
	
	if User_AddMoney(-nUseMoney) then
		Sys_SaveEmoneyBuy(tSummerSignInAct_Log["CostEmoneyLog"][2])
		SummerSignInAct_RandomDiceNum(nNpcId)
	end
end
 
--天石花费
function SummerSignInAct_EMoneyCost(nNpcId)
	--活动时间
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--检测玩家是否拥有足够天石
	local nEmoney = tSummerSignInAct_Cost["EMoney"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	if User_AddEMoney(-nEmoney) then
		Sys_SaveEmoneyBuy(tSummerSignInAct_Log["CostEmoneyLog"][1])
		SummerSignInAct_RandomDiceNum(nNpcId)
	end
end


--随机骰子点数
function SummerSignInAct_RandomDiceNum(nNpcId)
	--活动时间
	-- if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	
	local nUserMapId = Get_UserMapId()
	local nUserPositionX = Get_UserPositionX()
	local nUserPositionY = Get_UserPositionY()
	
	
	local nNum = {}
	nNum[1] = 0
	nNum[2] = 0
	
	for i = 1,2 do
		local nFlag,tAward = Probabil_RandomAward(tSummerSignInAct_RandomDiceNum["DiceNum"],1)
		nNum[i] = tAward[1]["tAward"][1]["Num"]
		
		
		local sEffect = tSummerSignInAct_Effect[nNum[i]]
		Map_Effect(nUserMapId,nUserPositionX-i,nUserPositionY-i,sEffect)
	end
	
	local nIndex = nNum[1] + nNum[2]
	local nUserId = Get_UserId()
	
	local nIndex1 = 0
	if nIndex <= 6 then
		nIndex1 = 6
	else
		nIndex1 = nIndex
	end
	
	RewardTemplate_UseItem(tSummerSignInAct_RewandItem["RewardDice"][nIndex1])
	local nItemName = tSummerSignInAct_Text["NumRewardName"][nIndex1]
	User_TalkChannel2005(string.format(tSummerSignInAct_Text["NumReward"],nIndex,nItemName))
	
	if nIndex <= 6 then
		Sys_SaveEmoneyBuy(tSummerSignInAct_Log["RewardEmoneyLog"][2])
	else
		local nEmoneyMono = tSummerSignInAct_RewandItem["RewardDice"][nIndex1]["RewardEMoneyMono"]["Value"]
		Sys_SaveEmoneyBuy(string.format(tSummerSignInAct_Log["RewardEmoneyLog"][1],nEmoneyMono))
	end
	
	if nIndex == 12 then
		Sys_SystemBroadcast(string.format(tSummerSignInAct_Text["RewardBroadCast"][1],Get_UserName(nUserId)))
	end
end


-- function SummerSignInAct_RewardDice(nIndex,nUserId)
	-- RewardTemplate_UseItem(tSummerSignInAct_RewandItem["RewardDice"][nIndex],nNowUserId)
-- end


function SummerSignInAct_ClearGlobal()
	--活动时间
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		return
	end
	
	local nGlobalId = tSummerSignInAct_Cont["GlobalId"]
	
	for i = 0,5 do
		Sys_SetSynaGlobalData(nGlobalId,i,0)
	end
end
--------------------------------物品逻辑---------------------------
function SummerSignInAct_UseExceed(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSummerSignInAct_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tSummerSignInAct_Log["TimeOut"],nItemId,nItemNum))
		end
		return
	end
	
	local nLevel = tSummerSignInAct_Cont["Level"]
	local nMete1 = tSummerSignInAct_Cont["Mete"][1]
	local nMete2 = tSummerSignInAct_Cont["Mete"][2]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete1) then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete2) then
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-3")
end

function SummerSignInAct_UseSignInPack(nItemId,nIndex)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSummerSignInAct_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tSummerSignInAct_Log["TimeOut"],nItemId,nItemNum))
		end
		return
	end
	
	local nEvent2 = tSummerSignInAct_Stc[2]["EventType"]
	local nType2 = tSummerSignInAct_Stc[2]["DataType"]
	
	--隔天判断
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	--是否已打开
	if Task_ChkStcValue(nEvent2,nType2,">=",1) then
		User_TalkChannel2005(tSummerSignInAct_Text["OpenBoxMax"])
		return
	end
	
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- local nSpace = RewardTemplate_GetRandomSpace(tSummerSignInAct_RewandItem[nItemId],nIndex) - 1
		-- if not(User_CheckLeftSpace(nSpace)) then
		-- -- 提示
			-- User_TalkChannel2005(string.format(tSummerSignInAct_Text["MsgSpace"],nSpace))
		-- return 
		-- end
		--打掩码
		Task_SetStatistic(nEvent2,nType2,1,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
		
		local tReward = RewardTemplate_NewRandomNoTip(tSummerSignInAct_RewandItem[nItemId],nIndex)
		-- local nItemId1 = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		-- local nItemId2 =tSummerSignInAct_Cont["ItemId"][nIndex]
		Sys_SaveEmoneyBuy(tSummerSignInAct_Log["ItemEmoneyLog"][nIndex])
		-- User_TalkChannel2005(string.format(tSummerSignInAct_Text["MsgReward"],Get_ItemtypeName(nItemId2),Get_ItemtypeName(nItemId1)))
	end
end

function SummerSignInAct_UseItem(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSummerSignInAct_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tSummerSignInAct_Log["TimeOut"],nItemId,nItemNum))
		end
		return
	end
	RewardTemplate_UseItem(tSummerSignInAct_RewandItem[nItemId][1])
end
---------------------------------npc模板---------------------------

tNpcFace[1180] = 188
tNpcGossip[23007] = tNpcGossip[23007] or DefaultNpc:new{}
tNpcGossip[23007]["OptionHidden"] = 1
tNpcGossip[23007]["DialogueText"] = tSummerSignInAct_Text[23007]

--活动前
tNpcGossip[23007]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23007]["tOption1-1"] = {111}
tNpcGossip[23007]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSummerSignInAct_Cont["BefTime"])
end

--活动后
tNpcGossip[23007]["Text1-2"] = {121}
tNpcGossip[23007]["tOption1-2"] = {121}
tNpcGossip[23007]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"])
end

--活动中
tNpcGossip[23007]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23007]["tOption1-3"] = {131,132}
tNpcGossip[23007]["OptionPoint131"] = "2-1"
tNpcGossip[23007]["OptionPoint132"] = "3-1"
tNpcGossip[23007]["OptionPoint133"] = "2-2"
tNpcGossip[23007]["OptionPoint134"] = "2-3"
tNpcGossip[23007]["ChkFunc1-3"] = function ()
	if Sys_ChkFullTime(tSummerSignInAct_Cont["ActTime"]) then
		local nEvent1 = tSummerSignInAct_Stc[1]["EventType"]
		local nType1 = tSummerSignInAct_Stc[1]["DataType"]
		
		if Task_StcInterval(nEvent1,nType1,1,4) then
			Task_SetStatistic(nEvent1,nType1,0,1)
			Task_SetStcTimestamp(nEvent1,nType1,0)
		end
		
		if Task_ChkStcValue(nEvent1,nType1,">=",1) then
			tNpcGossip[23007]["tOption1-3"] = {132,133,134,135}
		else 
			tNpcGossip[23007]["tOption1-3"] = {131,133,134,135}
		end
		
		return true
	else
		return false
	end
end

tNpcGossip[23007]["Text2-1"] = {211,212}
tNpcGossip[23007]["tOption2-1"] = {211,212}
tNpcGossip[23007]["OptionFunc211"]="SummerSignInAct_RewardPack</N>23007"


tNpcGossip[23007]["Text2-2"] = {221,222}
tNpcGossip[23007]["tOption2-2"] = {221,222,223}
tNpcGossip[23007]["OptionPoint221"] = "3-2"
tNpcGossip[23007]["OptionPoint222"] = "3-3"

tNpcGossip[23007]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311}
tNpcGossip[23007]["tOption2-3"] = {231}

tNpcGossip[23007]["Text3-1"] = {311}
tNpcGossip[23007]["tOption3-1"] = {311}

tNpcGossip[23007]["Text3-2"] = {321}
tNpcGossip[23007]["tOption3-2"] = {321,322}
tNpcGossip[23007]["OptionFunc321"]="SummerSignInAct_EMoneyCost</N>23007"

tNpcGossip[23007]["Text3-3"] = {331}
tNpcGossip[23007]["tOption3-3"] = {331,332}
tNpcGossip[23007]["OptionFunc331"]="SummerSignInAct_MoneyCost</N>23007"

tNpcGossip[23007]["Text4-1"] = {411}
tNpcGossip[23007]["tOption4-1"] = {411}

tNpcGossip[23007]["Text4-2"] = {421}
tNpcGossip[23007]["tOption4-2"] = {421}

--------------------------------物品模板---------------------------
tItemFace[3309771] = 1622
tItemFace[3309772] = 1366
tItem[3309771] = tItem[3309771] or {}
tItem[3309771]["Function"] = function(nItemId,sItemName)
	SummerSignInAct_UseExceed(nItemId)
end

tItem[3309771]["DialogueText"] =tSummerSignInAct_Text[3309771]
tItem[3309771]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tItem[3309771]["tOption1-1"] = {111,112,113}
tItem[3309771]["OptionFunc111"]="SummerSignInAct_UseSignInPack</N>3309771</N>1"
tItem[3309771]["OptionPoint112"] = "2-1"
tItem[3309771]["OptionPoint113"] = "2-2"

tItem[3309771]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212}
tItem[3309771]["tOption1-2"] = {121,122}
tItem[3309771]["OptionFunc121"]="SummerSignInAct_UseSignInPack</N>3309771</N>2"
tItem[3309771]["OptionPoint122"] = "2-2"

tItem[3309771]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tItem[3309771]["tOption1-3"] = {131}
tItem[3309771]["OptionFunc131"]="SummerSignInAct_UseSignInPack</N>3309771</N>3"

tItem[3309771]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
tItem[3309771]["tOption2-1"] = {211}

tItem[3309771]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212}
tItem[3309771]["tOption2-2"] = {221}

tItem[3309773] = tItem[3309773] or {}
tItem[3309773]["Function"] = function(nItemId,sItemName)
	SummerSignInAct_UseItem(nItemId)
end
tItem[3309774] = tItem[3309773] or {}
tItem[3309775] = tItem[3309773] or {}

--------------------------------时间自检--------------------------------------
-- 清理全局表
local tSummerSignInAct_ClearGlobal = {}
	tSummerSignInAct_ClearGlobal[1] = {}
	tSummerSignInAct_ClearGlobal[1]["TimeType"] = 4
	tSummerSignInAct_ClearGlobal[1]["Time"] = "00:00 00:00"
	tSummerSignInAct_ClearGlobal[1]["Func"] = SummerSignInAct_ClearGlobal
table.insert(tSystemTime_InitialData,tSummerSignInAct_ClearGlobal[1])
