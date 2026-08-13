------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]8月老玩家回归礼包及发奖
--Creator: 		翁清海
--Created:		2016/07/08
------------------------------------------------------------------------------------

-- 命名前缀
-- Old_Player_Back_Gift_

-- 掩码说明
-- 147 16	礼包1打开的次数
-- 147 17	礼包2打开的次数
-- 147 18	礼包3打开的次数

local tOld_Player_Back_Gift_Stc = {}
	tOld_Player_Back_Gift_Stc["Data"] = 10000
	
local tOld_Player_Back_Gift_Item = {}
	tOld_Player_Back_Gift_Item[3200759] = {}
	tOld_Player_Back_Gift_Item[3200759]["Id"] = 3200759
	tOld_Player_Back_Gift_Item[3200759]["Monopoly"] = 1
	tOld_Player_Back_Gift_Item[3200759]["Sash"] = 0
	tOld_Player_Back_Gift_Item[3200760] = {}
	tOld_Player_Back_Gift_Item[3200760]["Id"] = 3200760
	tOld_Player_Back_Gift_Item[3200760]["Monopoly"] = 1
	tOld_Player_Back_Gift_Item[3200760]["Sash"] = 0
	tOld_Player_Back_Gift_Item[3200761] = {}
	tOld_Player_Back_Gift_Item[3200761]["Id"] = 3200761
	tOld_Player_Back_Gift_Item[3200761]["Monopoly"] = 1
	tOld_Player_Back_Gift_Item[3200761]["Sash"] = 0

--logid 18000129

local tOld_Player_Back_Gift_Log = {}
	tOld_Player_Back_Gift_Log[3200759] = "0,0,3200759,1,18000129,2,0,0"
	tOld_Player_Back_Gift_Log[3200760] = "0,0,3200760,1,18000129,2,0,0"
	tOld_Player_Back_Gift_Log[3200761] = "0,0,3200761,1,18000129,2,0,0"

--奖励模板
local tOld_Player_Back_Gift_Reward = {}

	tOld_Player_Back_Gift_Reward[3200759] = {}
	tOld_Player_Back_Gift_Reward[3200759][10000] = {}
	tOld_Player_Back_Gift_Reward[3200759][10000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][10000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][10000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][10000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][10000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][10000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][10000]["RewardItem"][1]["Id"] = 730003
	tOld_Player_Back_Gift_Reward[3200759][10000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][10000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][10001]
	tOld_Player_Back_Gift_Reward[3200759][10000]["Log"] = "0,0,0,0,18000129,2,730003,1"
	
	tOld_Player_Back_Gift_Reward[3200759][20000] = {}
	tOld_Player_Back_Gift_Reward[3200759][20000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][20000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][20000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][20000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][20000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][20000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][20000]["RewardItem"][1]["Id"] = 720394
	tOld_Player_Back_Gift_Reward[3200759][20000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][20000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][20001]
	tOld_Player_Back_Gift_Reward[3200759][20000]["Log"] = "0,0,0,0,18000129,2,720394,1"
	
	tOld_Player_Back_Gift_Reward[3200759][30000] = {}
	tOld_Player_Back_Gift_Reward[3200759][30000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][30000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"][1]["Id"] = 723911
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"][1]["Attr"] = "0 10"
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"][2]["Id"] = 730002
	tOld_Player_Back_Gift_Reward[3200759][30000]["RewardItem"][2]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][30000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][30001]
	tOld_Player_Back_Gift_Reward[3200759][30000]["Log"] = "0,0,0,0,18000129,2,723911[730002],10[1]"
	
	tOld_Player_Back_Gift_Reward[3200759][40000] = {}
	tOld_Player_Back_Gift_Reward[3200759][40000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][40000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][40000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][40000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][40000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][40000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][40000]["RewardItem"][1]["Id"] = 3004582
	tOld_Player_Back_Gift_Reward[3200759][40000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][40000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][40001]
	tOld_Player_Back_Gift_Reward[3200759][40000]["Log"] = "0,0,0,0,18000129,2,3004582,1"
	
	tOld_Player_Back_Gift_Reward[3200759][50000] = {}
	tOld_Player_Back_Gift_Reward[3200759][50000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][50000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"][1]["Id"] = 723342
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200759][50000]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200759][50000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][50001]
	tOld_Player_Back_Gift_Reward[3200759][50000]["Log"] = "0,0,0,0,18000129,2,723342[3009001],1[1]"
	
	tOld_Player_Back_Gift_Reward[3200759][60000] = {}
	tOld_Player_Back_Gift_Reward[3200759][60000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][60000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"][1]["Id"] = 3000797
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"][2]["Id"] = 3003124
	tOld_Player_Back_Gift_Reward[3200759][60000]["RewardItem"][2]["Attr"] = "0 4 3"
	tOld_Player_Back_Gift_Reward[3200759][60000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][60001]
	tOld_Player_Back_Gift_Reward[3200759][60000]["Log"] = "0,0,0,0,18000129,2,3000797[3003132],1[4]"
	
	tOld_Player_Back_Gift_Reward[3200759][70000] = {}
	tOld_Player_Back_Gift_Reward[3200759][70000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200759][70000]["DataType"] = 16
	tOld_Player_Back_Gift_Reward[3200759][70000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200759][70000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200759][70000]["DeleteItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][70000]["DeleteItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][70000]["DeleteItem"][1]["Id"] = 3200759
	tOld_Player_Back_Gift_Reward[3200759][70000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200759][70000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200759][70000]["RewardItem"][1]["Id"] = 3200026
	tOld_Player_Back_Gift_Reward[3200759][70000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200759][70000]["Talk"] = tOld_Player_Back_Gift_Text[3200759][70001]
	tOld_Player_Back_Gift_Reward[3200759][70000]["Log"] = "0,0,3200759,1,18000129,2,3200026,1"
	
	tOld_Player_Back_Gift_Reward[3200760] = {}
	tOld_Player_Back_Gift_Reward[3200760][10000] = {}
	tOld_Player_Back_Gift_Reward[3200760][10000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][10000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"][1]["Id"] = 730003
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200760][10000]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200760][10000]["Talk"] = tOld_Player_Back_Gift_Text[3200760][10001]
	tOld_Player_Back_Gift_Reward[3200760][10000]["Log"] = "0,0,0,0,18000129,2,730003[3009001],1[1]"
	
	tOld_Player_Back_Gift_Reward[3200760][20000] = {}
	tOld_Player_Back_Gift_Reward[3200760][20000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][20000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"][1]["Id"] = 3003124
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"][1]["Attr"] = "0 20 3"
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200760][20000]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200760][20000]["Talk"] = tOld_Player_Back_Gift_Text[3200760][20001]
	tOld_Player_Back_Gift_Reward[3200760][20000]["Log"] = "0,0,0,0,18000129,2,3003124[3009001],20[1]"
	
	tOld_Player_Back_Gift_Reward[3200760][30000] = {}
	tOld_Player_Back_Gift_Reward[3200760][30000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][30000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"][1]["Id"] = 3008309
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200760][30000]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200760][30000]["Talk"] = tOld_Player_Back_Gift_Text[3200760][30001]
	tOld_Player_Back_Gift_Reward[3200760][30000]["Log"] = "0,0,0,0,18000129,2,3008309[3009001],1[1]"
	
	tOld_Player_Back_Gift_Reward[3200760][40000] = {}
	tOld_Player_Back_Gift_Reward[3200760][40000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][40000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardItem"][1]["Id"] = 3004580
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardEMoneyMono"] = {}
	tOld_Player_Back_Gift_Reward[3200760][40000]["RewardEMoneyMono"]["Value"] = 100
	tOld_Player_Back_Gift_Reward[3200760][40000]["Talk"] = tOld_Player_Back_Gift_Text[3200760][40001]
	tOld_Player_Back_Gift_Reward[3200760][40000]["Log"] = "0,0,0,0,18000129,2,3004580,1"
	
	tOld_Player_Back_Gift_Reward[3200760][50000] = {}
	tOld_Player_Back_Gift_Reward[3200760][50000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][50000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"][1]["Id"] = 1200001
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"][1]["Attr"] = "0 4 3"
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"][2]["Id"] = 3001407
	tOld_Player_Back_Gift_Reward[3200760][50000]["RewardItem"][2]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][50000]["Talk"] = tOld_Player_Back_Gift_Text[3200760][50001]
	tOld_Player_Back_Gift_Reward[3200760][50000]["Log"] = "0,0,0,0,18000129,2,1200001[3001407],4[1]"
	
	tOld_Player_Back_Gift_Reward[3200760][60000] = {}
	tOld_Player_Back_Gift_Reward[3200760][60000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][60000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"][1]["Id"] = 727834
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200760][60000]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200760][60000]["Talk"] =  tOld_Player_Back_Gift_Text[3200760][60001]
	tOld_Player_Back_Gift_Reward[3200760][60000]["Log"] = "0,0,0,0,18000129,2,727834[3009001],1[1]"
	
	tOld_Player_Back_Gift_Reward[3200760][70000] = {}
	tOld_Player_Back_Gift_Reward[3200760][70000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200760][70000]["DataType"] = 17
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200760][70000]["DeleteItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][70000]["DeleteItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][70000]["DeleteItem"][1]["Id"] = 3200760
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"][1]["Id"] = 3300000
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"][2]["Id"] = 3100137
	tOld_Player_Back_Gift_Reward[3200760][70000]["RewardItem"][2]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200760][70000]["Talk"] =  tOld_Player_Back_Gift_Text[3200760][70001]
	tOld_Player_Back_Gift_Reward[3200760][70000]["Log"] = "0,0,3200760,1,18000129,2,3300000[3100137],1[1]"
	
	tOld_Player_Back_Gift_Reward[3200761] = {}
	tOld_Player_Back_Gift_Reward[3200761][10000] = {}
	tOld_Player_Back_Gift_Reward[3200761][10000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][10000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"][1]["Id"] = 1088000
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"][1]["Attr"] = "0 1"
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardEMoneyMono"] = {}
	tOld_Player_Back_Gift_Reward[3200761][10000]["RewardEMoneyMono"]["Value"] = 300
	tOld_Player_Back_Gift_Reward[3200761][10000]["Talk"] =  tOld_Player_Back_Gift_Text[3200761][10001]
	tOld_Player_Back_Gift_Reward[3200761][10000]["Log"] = "0,0,0,0,18000129,2,1088000[3009001],1[2]"
	
	tOld_Player_Back_Gift_Reward[3200761][20000] = {}
	tOld_Player_Back_Gift_Reward[3200761][20000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][20000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"][1]["Id"] = 3200348
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][20000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][20000]["Talk"] =  tOld_Player_Back_Gift_Text[3200761][20001]
	tOld_Player_Back_Gift_Reward[3200761][20000]["Log"] = "0,0,0,0,18000129,2,3200348[3009001],1[2]"
	
	tOld_Player_Back_Gift_Reward[3200761][30000] = {}
	tOld_Player_Back_Gift_Reward[3200761][30000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][30000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"][1]["Id"] = 3005360
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"][1]["Attr"] = "0 1"
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][30000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][30000]["Talk"] =  tOld_Player_Back_Gift_Text[3200761][30001]
	tOld_Player_Back_Gift_Reward[3200761][30000]["Log"] = "0,0,0,0,18000129,2,3005360[3009001],1[2]"
	
	tOld_Player_Back_Gift_Reward[3200761][40000] = {}
	tOld_Player_Back_Gift_Reward[3200761][40000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][40000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"][1]["Id"] = 3003124
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"][1]["Attr"] = "0 50 3"
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][40000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][40000]["Talk"] =  tOld_Player_Back_Gift_Text[3200761][40001]
	tOld_Player_Back_Gift_Reward[3200761][40000]["Log"] = "0,0,0,0,18000129,2,3003132[3009001],50[2]"
	
	tOld_Player_Back_Gift_Reward[3200761][50000] = {}
	tOld_Player_Back_Gift_Reward[3200761][50000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][50000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"][1]["Id"] = 3008318
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"][1]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][50000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][50000]["Talk"] =  tOld_Player_Back_Gift_Text[3200761][50001]
	tOld_Player_Back_Gift_Reward[3200761][50000]["Log"] = "0,0,0,0,18000129,2,3008318[3009001],1[2]"
	
	tOld_Player_Back_Gift_Reward[3200761][60000] = {}
	tOld_Player_Back_Gift_Reward[3200761][60000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][60000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"][1]["Id"] = 3200823
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"][1]["Attr"] = "0 1"
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][60000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][60000]["Talk"] =  tOld_Player_Back_Gift_Text[3200761][60001]
	tOld_Player_Back_Gift_Reward[3200761][60000]["Log"] = "0,0,0,0,18000129,2,3200823[3009001],1[2]"
	
	tOld_Player_Back_Gift_Reward[3200761][70000] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["EventType"] = 147
	tOld_Player_Back_Gift_Reward[3200761][70000]["DataType"] = 18
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardDelay"] = 1
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardTimeType"] = 4
	tOld_Player_Back_Gift_Reward[3200761][70000]["DeleteItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["DeleteItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["DeleteItem"][1]["Id"] = 3200761
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][1]["Id"] = 729139
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][1]["Attr"] = "0 1"
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][2] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][2]["Id"] = 3009001
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][3] = {}
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][3]["Id"] = 3200027
	tOld_Player_Back_Gift_Reward[3200761][70000]["RewardItem"][3]["Attr"] = "0 1 3"
	tOld_Player_Back_Gift_Reward[3200761][70000]["Talk"] = tOld_Player_Back_Gift_Text[3200761][70001]
	tOld_Player_Back_Gift_Reward[3200761][70000]["Log"] = "0,0,3200761,1,18000129,2,729139[3009001][3200027],1[2][1]"
	
	tOld_Player_Back_Gift_Reward[3200823] = {}
	tOld_Player_Back_Gift_Reward[3200823][193605] = {}
	tOld_Player_Back_Gift_Reward[3200823][193605]["DeleteItem"] = {}
	tOld_Player_Back_Gift_Reward[3200823][193605]["DeleteItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200823][193605]["DeleteItem"][1]["Id"] = 3200823
	tOld_Player_Back_Gift_Reward[3200823][193605]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200823][193605]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200823][193605]["RewardItem"][1]["Id"] = 193605
	tOld_Player_Back_Gift_Reward[3200823][193605]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tOld_Player_Back_Gift_Reward[3200823][193605]["Talk"] = tOld_Player_Back_Gift_Text[3200823][193605]
	tOld_Player_Back_Gift_Reward[3200823][193605]["Log"] = "0,0,3200823,1,18000129,2,193605,1"
	
	tOld_Player_Back_Gift_Reward[3200823][193295] = {}
	tOld_Player_Back_Gift_Reward[3200823][193295]["DeleteItem"] = {}
	tOld_Player_Back_Gift_Reward[3200823][193295]["DeleteItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200823][193295]["DeleteItem"][1]["Id"] = 3200823
	tOld_Player_Back_Gift_Reward[3200823][193295]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200823][193295]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200823][193295]["RewardItem"][1]["Id"] = 193295
	tOld_Player_Back_Gift_Reward[3200823][193295]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tOld_Player_Back_Gift_Reward[3200823][193295]["Talk"] = tOld_Player_Back_Gift_Text[3200823][193295]
	tOld_Player_Back_Gift_Reward[3200823][193295]["Log"] = "0,0,3200823,1,18000129,2,193295,1"
	
	tOld_Player_Back_Gift_Reward[3200823][192645] = {}
	tOld_Player_Back_Gift_Reward[3200823][192645]["DeleteItem"] = {}
	tOld_Player_Back_Gift_Reward[3200823][192645]["DeleteItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200823][192645]["DeleteItem"][1]["Id"] = 3200823
	tOld_Player_Back_Gift_Reward[3200823][192645]["RewardItem"] = {}
	tOld_Player_Back_Gift_Reward[3200823][192645]["RewardItem"][1] = {}
	tOld_Player_Back_Gift_Reward[3200823][192645]["RewardItem"][1]["Id"] = 192645
	tOld_Player_Back_Gift_Reward[3200823][192645]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tOld_Player_Back_Gift_Reward[3200823][192645]["Talk"] = tOld_Player_Back_Gift_Text[3200823][192645]
	tOld_Player_Back_Gift_Reward[3200823][192645]["Log"] = "0,0,3200823,1,18000129,2,192645,1"
	
------------------------------逻辑部分---------------------------
function Old_Player_Back_Gift_Open(nItemId, nIndex)
	RewardTemplate_UseItem(tOld_Player_Back_Gift_Reward[nItemId][nIndex])
end

------------------------------物品模板---------------------------
tItem[3200759] = tItem[3200759] or {}
tItem[3200759]["DialogueText"] = tOld_Player_Back_Gift_Text[3200759]
tItem[3200759]["Text1-1"] = {111}
tItem[3200759]["tOption1-1"] = {1,2}
tItem[3200759]["ChkFunc1-1"] =function()
	local nUserId = Get_UserId()
	local nEvent = tOld_Player_Back_Gift_Reward[3200759][10000]["EventType"]
	local nType = tOld_Player_Back_Gift_Reward[3200759][10000]["DataType"]
	local nOpenTimes = tOld_Player_Back_Gift_Stc["Data"]
	local nItemId = tOld_Player_Back_Gift_Item[3200759]["Id"]
	local nMonopoly = tOld_Player_Back_Gift_Item[3200759]["Monopoly"]
	local nSash = tOld_Player_Back_Gift_Item[3200759]["Sash"]
	
	if not Task_ChkStatistic(nEvent, nType, nUserId) then
		Task_SetStatistic(nEvent,nType,nOpenTimes,1,nUserId)
		User_TalkChannel2005(tOld_Player_Back_Gift_Text["Channel2005"]["FirstOpen"])
	else
		if not RewardTemplate_JudgmentStc(tOld_Player_Back_Gift_Reward[3200759][10000],nUserId) then
			return false
		end
	end
	
	nOpenTimes = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if tOld_Player_Back_Gift_Reward[3200759][nOpenTimes] == nil then
		if Item_ChkItem(nItemId,nMonopoly,nSash,nUserId)  and Item_DelItem(nItemId,nMonopoly,nSash,nUserId) then
			Sys_SaveActionRewardLog(tOld_Player_Back_Gift_Log[3200759], nUserId)
			User_TalkChannel2005(tOld_Player_Back_Gift_Text["Channel2005"]["Del"])
			return false
		else
			return false
		end
	end
	
	local sFunc = string.format("Old_Player_Back_Gift_Open</N>3200759</N>%d", nOpenTimes)
	
	tItem[3200759]["Text111"] = tOld_Player_Back_Gift_Text[3200759][nOpenTimes]
	tItem[3200759]["OptionFunc1"] = sFunc
	return true
end

tItem[3200760] = tItem[3200760] or {}
tItem[3200760]["DialogueText"] = tOld_Player_Back_Gift_Text[3200760]
tItem[3200760]["Text1-1"] = {111}
tItem[3200760]["tOption1-1"] = {1,2}
tItem[3200760]["ChkFunc1-1"] =function()
	local nUserId = Get_UserId()
	local nEvent = tOld_Player_Back_Gift_Reward[3200760][10000]["EventType"]
	local nType = tOld_Player_Back_Gift_Reward[3200760][10000]["DataType"]
	local nOpenTimes = tOld_Player_Back_Gift_Stc["Data"]
	local nItemId = tOld_Player_Back_Gift_Item[3200760]["Id"]
	local nMonopoly = tOld_Player_Back_Gift_Item[3200760]["Monopoly"]
	local nSash = tOld_Player_Back_Gift_Item[3200760]["Sash"]

	if not Task_ChkStatistic(nEvent, nType, nUserId) then
		Task_SetStatistic(nEvent,nType,nOpenTimes,1,nUserId)
		User_TalkChannel2005(tOld_Player_Back_Gift_Text["Channel2005"]["FirstOpen"])
	else
		if not RewardTemplate_JudgmentStc(tOld_Player_Back_Gift_Reward[3200760][10000],nUserId) then
			return false
		end
	end
	
	 nOpenTimes = Get_UserStatisticValue(nEvent,nType,nUserId)
	 
	if tOld_Player_Back_Gift_Reward[3200760][nOpenTimes] == nil then
		if Item_ChkItem(nItemId,nMonopoly,nSash,nUserId)  and Item_DelItem(nItemId,nMonopoly,nSash,nUserId) then
			Sys_SaveActionRewardLog(tOld_Player_Back_Gift_Log[3200760], nUserId)
			User_TalkChannel2005(tOld_Player_Back_Gift_Text["Channel2005"]["Del"])
			return false
		else
			return false
		end
	end
	 
	local sFunc = string.format("Old_Player_Back_Gift_Open</N>3200760</N>%d", nOpenTimes)
	
	tItem[3200760]["Text111"] = tOld_Player_Back_Gift_Text[3200760][nOpenTimes]
	tItem[3200760]["OptionFunc1"] = sFunc
	return true
end

tItem[3200761] = tItem[3200761] or {}
tItem[3200761]["DialogueText"] = tOld_Player_Back_Gift_Text[3200761]
tItem[3200761]["Text1-1"] = {111}
tItem[3200761]["tOption1-1"] = {1,2}
tItem[3200761]["ChkFunc1-1"] =function()
	local nUserId = Get_UserId()
	local nEvent = tOld_Player_Back_Gift_Reward[3200761][10000]["EventType"]
	local nType = tOld_Player_Back_Gift_Reward[3200761][10000]["DataType"]
	local nOpenTimes = tOld_Player_Back_Gift_Stc["Data"]
	local nItemId = tOld_Player_Back_Gift_Item[3200761]["Id"]
	local nMonopoly = tOld_Player_Back_Gift_Item[3200761]["Monopoly"]
	local nSash = tOld_Player_Back_Gift_Item[3200761]["Sash"]

	if not Task_ChkStatistic(nEvent, nType, nUserId) then
		Task_SetStatistic(nEvent,nType,nOpenTimes,1,nUserId)
		User_TalkChannel2005(tOld_Player_Back_Gift_Text["Channel2005"]["FirstOpen"])
	else
		if not RewardTemplate_JudgmentStc(tOld_Player_Back_Gift_Reward[3200761][10000],nUserId) then
			return false
		end
	end
	
	 nOpenTimes = Get_UserStatisticValue(nEvent,nType,nUserId)
	 
	if tOld_Player_Back_Gift_Reward[3200761][nOpenTimes] == nil then
		if Item_ChkItem(nItemId,nMonopoly,nSash,nUserId)  and Item_DelItem(nItemId,nMonopoly,nSash,nUserId) then
			Sys_SaveActionRewardLog(tOld_Player_Back_Gift_Log[3200761], nUserId)
			User_TalkChannel2005(tOld_Player_Back_Gift_Text["Channel2005"]["Del"])
			return false
		else
			return false
		end
	end
	 
	local sFunc = string.format("Old_Player_Back_Gift_Open</N>3200761</N>%d", nOpenTimes)
	
	tItem[3200761]["Text111"] = tOld_Player_Back_Gift_Text[3200761][nOpenTimes]
	tItem[3200761]["OptionFunc1"] = sFunc
	return true
end

tItem[3200823] = tItem[3200823] or {}
tItem[3200823]["DialogueText"] = tOld_Player_Back_Gift_Text[3200823]
tItem[3200823]["Text1-1"] = {111}
tItem[3200823]["tOption1-1"] = {1,2,3,4}
tItem[3200823]["OptionFunc1"] = "Old_Player_Back_Gift_Open</N>3200823</N>193605"
tItem[3200823]["OptionFunc2"] = "Old_Player_Back_Gift_Open</N>3200823</N>193295"
tItem[3200823]["OptionFunc3"] = "Old_Player_Back_Gift_Open</N>3200823</N>192645"
