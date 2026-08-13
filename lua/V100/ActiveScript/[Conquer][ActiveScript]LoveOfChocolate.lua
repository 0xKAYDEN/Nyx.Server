------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]爱神的巧克力
--Creator: 		翁清海
--Created:		2016/12/01
------------------------------------------------------------------------------------

--命名前缀
--Love_Of_Chocolate_

--stc掩码说明
--stc(153,44)			背包信使用
--stc(153,45)			与NPC对话获得的巧克力数量
--stc(153,46)			片区怪物掉落、玫瑰花妖获得的巧克力数量总数
--stc(153,48)			吃当前性别巧克力数量限制
--stc(153,49)			吃非当前性别巧克力数量限制

local tLove_Of_Chocolate_Cont = {}
	--背包空间
	tLove_Of_Chocolate_Cont["Space"] = 1
	--等级判断
	tLove_Of_Chocolate_Cont["Level"] = 80
	tLove_Of_Chocolate_Cont["Metempsychosis"] = 0
	--碎片合成需要的数量
	tLove_Of_Chocolate_Cont["ItemNum"] = 15
	--物品统一属性
	tLove_Of_Chocolate_Cont["Attr"] = "0 1"
	tLove_Of_Chocolate_Cont["Monopoly"] = 1
	tLove_Of_Chocolate_Cont["Sash"] = 0
	--物品id
	tLove_Of_Chocolate_Cont["Id"] = {}
	tLove_Of_Chocolate_Cont["Id"][1] = 3301658
	tLove_Of_Chocolate_Cont["Id"][2] = 3301659
--光效配置
	tLove_Of_Chocolate_Cont["Effect"] = {}
	tLove_Of_Chocolate_Cont["Effect"]["SzObj"] = "self"
	tLove_Of_Chocolate_Cont["Effect"]["Effect"] = "horse_aff"
	--怪物掉落概率
	tLove_Of_Chocolate_Cont["KillRandom"] = 15
	tLove_Of_Chocolate_Cont["KillRandomSum"] = 1000
	--花妖
	tLove_Of_Chocolate_Cont["FlowerMonster"] = 4265
	
local tLove_Of_Chocolate_Time = {}
	tLove_Of_Chocolate_Time["Activity"] = "2017-02-12 00:00 2017-02-18 23:59"
	tLove_Of_Chocolate_Time["Open"] = "2017-02-12 00:00 2017-02-28 23:59"

local tLove_Of_Chocolate_Log = {}
	tLove_Of_Chocolate_Log["DelItem"] = "0,0,%d,1,12000589,2,0,0"
	tLove_Of_Chocolate_Log["DelItemNum"] = "0,0,%d,%d,12000589,2,0,0"
	tLove_Of_Chocolate_Log["KillMonster"] = "0,0,0,0,12000589,1[2],%d,1"

local tLove_Of_Chocolate_Stc = {}
	tLove_Of_Chocolate_Stc["Monster"] = {}
	tLove_Of_Chocolate_Stc["Monster"]["Event"] = 153
	tLove_Of_Chocolate_Stc["Monster"]["Type"] = 46
	tLove_Of_Chocolate_Stc["Monster"]["Save"] = 1
	tLove_Of_Chocolate_Stc["Monster"]["Delay"] = 1
	tLove_Of_Chocolate_Stc["Monster"]["TimeType"] = 4
	tLove_Of_Chocolate_Stc["Monster"]["Limit"] = 10
	
local tLove_Of_Chocolate_Reward = {}
	--爱神的祝福
	tLove_Of_Chocolate_Reward[3301657] = {}
	tLove_Of_Chocolate_Reward[3301657]["RewardItem"] = {}
	tLove_Of_Chocolate_Reward[3301657]["RewardItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301657]["RewardItem"][1]["Id"] = 3301454
	tLove_Of_Chocolate_Reward[3301657]["RewardItem"][1]["Attr"] = "0 1"
	tLove_Of_Chocolate_Reward[3301657]["DeleteItem"] = {}
	tLove_Of_Chocolate_Reward[3301657]["DeleteItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301657]["DeleteItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_Reward[3301657]["Log"] = "0,0,3301657,1,12000589,1[1],3301454,1"
	tLove_Of_Chocolate_Reward[3301657]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301657]
	--30天情人之泪
	tLove_Of_Chocolate_Reward[3301660] = {}
	tLove_Of_Chocolate_Reward[3301660]["RewardItem"] = {}
	tLove_Of_Chocolate_Reward[3301660]["RewardItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301660]["RewardItem"][1]["Id"] = 192565
	tLove_Of_Chocolate_Reward[3301660]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tLove_Of_Chocolate_Reward[3301660]["DeleteItem"] = {}
	tLove_Of_Chocolate_Reward[3301660]["DeleteItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301660]["DeleteItem"][1]["Id"] = 3301660
	tLove_Of_Chocolate_Reward[3301660]["Log"] = "0,0,3301660,1,12000589,2,192565,1"
	--90天情人之泪
	tLove_Of_Chocolate_Reward[3301661] = {}
	tLove_Of_Chocolate_Reward[3301661]["RewardItem"] = {}
	tLove_Of_Chocolate_Reward[3301661]["RewardItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301661]["RewardItem"][1]["Id"] = 192565
	tLove_Of_Chocolate_Reward[3301661]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tLove_Of_Chocolate_Reward[3301661]["DeleteItem"] = {}
	tLove_Of_Chocolate_Reward[3301661]["DeleteItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301661]["DeleteItem"][1]["Id"] = 3301661
	tLove_Of_Chocolate_Reward[3301661]["Log"] = "0,0,3301661,1,12000589,2,192565,1"
	--玫瑰风暴（长武）
	tLove_Of_Chocolate_Reward[3301662] = {}
	tLove_Of_Chocolate_Reward[3301662]["RewardItem"] = {}
	tLove_Of_Chocolate_Reward[3301662]["RewardItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301662]["RewardItem"][1]["Id"] = 350079
	tLove_Of_Chocolate_Reward[3301662]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tLove_Of_Chocolate_Reward[3301662]["DeleteItem"] = {}
	tLove_Of_Chocolate_Reward[3301662]["DeleteItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301662]["DeleteItem"][1]["Id"] = 3301662
	tLove_Of_Chocolate_Reward[3301662]["Log"] = "0,0,3301662,1,12000589,2,350079,1"
	--玫瑰风暴（短武）
	tLove_Of_Chocolate_Reward[3301663] = {}
	tLove_Of_Chocolate_Reward[3301663]["RewardItem"] = {}
	tLove_Of_Chocolate_Reward[3301663]["RewardItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301663]["RewardItem"][1]["Id"] = 360149
	tLove_Of_Chocolate_Reward[3301663]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tLove_Of_Chocolate_Reward[3301663]["DeleteItem"] = {}
	tLove_Of_Chocolate_Reward[3301663]["DeleteItem"][1] = {}
	tLove_Of_Chocolate_Reward[3301663]["DeleteItem"][1]["Id"] = 3301663
	tLove_Of_Chocolate_Reward[3301663]["Log"] = "0,0,3301663,1,12000589,2,360149,1"
	
local tLove_Of_Chocolate_RewardRandom = {}
	--浓情巧克力
	tLove_Of_Chocolate_RewardRandom[3301658] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1]["ItemChanceSum"] = 10000
	tLove_Of_Chocolate_RewardRandom[3301658][1][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["ItemChance"] = 4300
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["Log"] = "0,0,3301658,1,12000589,1[4],3301657,3"
	tLove_Of_Chocolate_RewardRandom[3301658][1][1]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][1][1]
	tLove_Of_Chocolate_RewardRandom[3301658][1][2] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["ItemChance"] = 2500
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["RewardItem"][1]["Attr"] = "0 5"
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["Log"] = "0,0,3301658,1,12000589,1[4],3301657,5"
	tLove_Of_Chocolate_RewardRandom[3301658][1][2]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][1][2]
	tLove_Of_Chocolate_RewardRandom[3301658][1][3] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["ItemChance"] = 1000
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["RewardItem"][1]["Attr"] = "0 8"
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["Log"] = "0,0,3301658,1,12000589,1[4],3301657,8"
	tLove_Of_Chocolate_RewardRandom[3301658][1][3]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][1][3]
	tLove_Of_Chocolate_RewardRandom[3301658][1][4] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["RewardItem"][1]["Attr"] = "0 10"
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["Log"] = "0,0,3301658,1,12000589,1[4],3301657,10"
	tLove_Of_Chocolate_RewardRandom[3301658][1][4]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][1][4]
	tLove_Of_Chocolate_RewardRandom[3301658][1][5] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["ItemChance"] = 1200
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardEMoneyMono"]["Value"] = 3
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	3	"
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["Log"] = "0,0,3301658,1,12000589,1[4],3,3"
	tLove_Of_Chocolate_RewardRandom[3301658][1][5]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][1][5]
	tLove_Of_Chocolate_RewardRandom[3301658][1][6] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardEMoneyMono"]["Value"] = 8
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	8	"
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["Log"] = "0,0,3301658,1,12000589,1[4],3,8"
	tLove_Of_Chocolate_RewardRandom[3301658][1][6]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][1][6]
	tLove_Of_Chocolate_RewardRandom[3301658][2] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2]["ItemChanceSum"] = 10000
	tLove_Of_Chocolate_RewardRandom[3301658][2][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["ItemChance"] = 4300
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["RewardItem"][1]["Attr"] = "0 6"
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["Log"] = "0,0,3301658,1,12000589,1[5],3301657,6"
	tLove_Of_Chocolate_RewardRandom[3301658][2][1]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][2][1]
	tLove_Of_Chocolate_RewardRandom[3301658][2][2] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["ItemChance"] = 2500
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["RewardItem"][1]["Attr"] = "0 10"
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["Log"] = "0,0,3301658,1,12000589,1[5],3301657,10"
	tLove_Of_Chocolate_RewardRandom[3301658][2][2]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][2][2]
	tLove_Of_Chocolate_RewardRandom[3301658][2][3] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["ItemChance"] = 1000
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["RewardItem"][1]["Attr"] = "0 16"
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["Log"] = "0,0,3301658,1,12000589,1[5],3301657,16"
	tLove_Of_Chocolate_RewardRandom[3301658][2][3]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][2][3]
	tLove_Of_Chocolate_RewardRandom[3301658][2][4] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["RewardItem"][1]["Attr"] = "0 20"
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["Log"] = "0,0,3301658,1,12000589,1[5],3301657,20"
	tLove_Of_Chocolate_RewardRandom[3301658][2][4]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][2][4]
	tLove_Of_Chocolate_RewardRandom[3301658][2][5] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["ItemChance"] = 1200
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardEMoneyMono"]["Value"] = 6
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	6	"
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["Log"] = "0,0,3301658,1,12000589,1[5],3,6"
	tLove_Of_Chocolate_RewardRandom[3301658][2][5]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][2][5]
	tLove_Of_Chocolate_RewardRandom[3301658][2][6] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardEMoneyMono"]["Value"] = 16
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	16	"
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["Log"] = "0,0,3301658,1,12000589,1[5],3,16"
	tLove_Of_Chocolate_RewardRandom[3301658][2][6]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301658][2][6]
--蜜恋巧克力
	tLove_Of_Chocolate_RewardRandom[3301659] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1]["ItemChanceSum"] = 10000
	tLove_Of_Chocolate_RewardRandom[3301659][1][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["ItemChance"] = 4300
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["RewardItem"][1]["Attr"] = "0 6"
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["Log"] = "0,0,3301659,1,12000589,1[5],3301657,6"
	tLove_Of_Chocolate_RewardRandom[3301659][1][1]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][1][1]
	tLove_Of_Chocolate_RewardRandom[3301659][1][2] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["ItemChance"] = 2500
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["RewardItem"][1]["Attr"] = "0 10"
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["Log"] = "0,0,3301659,1,12000589,1[5],3301657,10"
	tLove_Of_Chocolate_RewardRandom[3301659][1][2]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][1][2]
	tLove_Of_Chocolate_RewardRandom[3301659][1][3] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["ItemChance"] = 1000
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["RewardItem"][1]["Attr"] = "0 16"
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["Log"] = "0,0,3301659,1,12000589,1[5],3301657,16"
	tLove_Of_Chocolate_RewardRandom[3301659][1][3]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][1][3]
	tLove_Of_Chocolate_RewardRandom[3301659][1][4] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["RewardItem"][1]["Attr"] = "0 20"
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["Log"] = "0,0,3301659,1,12000589,1[5],3301657,20"
	tLove_Of_Chocolate_RewardRandom[3301659][1][4]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][1][4]
	tLove_Of_Chocolate_RewardRandom[3301659][1][5] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["ItemChance"] = 1200
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardEMoneyMono"]["Value"] = 6
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["RewardEMoneyMono"]["EmoneyLog"] = "350	20388	0	0	6	"
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["Log"] = "0,0,3301659,1,12000589,1[5],3,6"
	tLove_Of_Chocolate_RewardRandom[3301659][1][5]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][1][5]
	tLove_Of_Chocolate_RewardRandom[3301659][1][6] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["DataType"] = 49
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardEffect"]["Effect"] = "firework-2love"
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardEMoneyMono"]["Value"] = 16
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["RewardEMoneyMono"]["EmoneyLog"] = "350	20388	0	0	16	"
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["Log"] = "0,0,3301659,1,12000589,1[5],3,16"
	tLove_Of_Chocolate_RewardRandom[3301659][1][6]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][1][6]
	tLove_Of_Chocolate_RewardRandom[3301659][2] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2]["ItemChanceSum"] = 10000
	tLove_Of_Chocolate_RewardRandom[3301659][2][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["ItemChance"] = 4300
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["RewardItem"][1]["Attr"] = "0 3"
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["Log"] = "0,0,3301659,1,12000589,1[4],3301657,3"
	tLove_Of_Chocolate_RewardRandom[3301659][2][1]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][2][1]
	tLove_Of_Chocolate_RewardRandom[3301659][2][2] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["ItemChance"] = 2500
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["RewardItem"][1]["Attr"] = "0 5"
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["Log"] = "0,0,3301659,1,12000589,1[4],3301657,5"
	tLove_Of_Chocolate_RewardRandom[3301659][2][2]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][2][2]
	tLove_Of_Chocolate_RewardRandom[3301659][2][3] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["ItemChance"] = 1000
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["RewardItem"][1]["Attr"] = "0 8"
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["Log"] = "0,0,3301659,1,12000589,1[4],3301657,8"
	tLove_Of_Chocolate_RewardRandom[3301659][2][3]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][2][3]
	tLove_Of_Chocolate_RewardRandom[3301659][2][4] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardItem"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardItem"][1] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardItem"][1]["Id"] = 3301657
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["RewardItem"][1]["Attr"] = "0 10"
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["Log"] = "0,0,3301659,1,12000589,1[4],3301657,10"
	tLove_Of_Chocolate_RewardRandom[3301659][2][4]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][2][4]
	tLove_Of_Chocolate_RewardRandom[3301659][2][5] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["ItemChance"] = 1200
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardEMoneyMono"]["Value"] = 3
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["RewardEMoneyMono"]["EmoneyLog"] = "350	20388	0	0	3	"
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["Log"] = "0,0,3301659,1,12000589,1[4],3,3"
	tLove_Of_Chocolate_RewardRandom[3301659][2][5]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][2][5]
	tLove_Of_Chocolate_RewardRandom[3301659][2][6] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RandomItemChanceType"] = 2
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["ItemChance"] = 500
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["EventType"] = 153
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["DataType"] = 48
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardData"] = 5
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardDelay"] = 1
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardTimeType"] = 4
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardEffect"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardEffect"]["SzObj"] = "self"
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardEffect"]["Effect"] = "gam_cuddle_ap"
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardEMoneyMono"] = {}
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardEMoneyMono"]["Value"] = 8
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["RewardEMoneyMono"]["EmoneyLog"] = "350	20388	0	0	8	"
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["Log"] = "0,0,3301659,1,12000589,1[4],3,8"
	tLove_Of_Chocolate_RewardRandom[3301659][2][6]["Talk"] = tLove_Of_Chocolate_Text["Talk"][3301659][2][6]
	
local tLove_Of_Chocolate_Sex = {}
	tLove_Of_Chocolate_Sex[1] = {}
	tLove_Of_Chocolate_Sex[1][3301658] = 8
	tLove_Of_Chocolate_Sex[1][3301659] = 16
	tLove_Of_Chocolate_Sex[2] = {}
	tLove_Of_Chocolate_Sex[2][3301658] = 16
	tLove_Of_Chocolate_Sex[2][3301659] = 8

--自动寻路部分
local tLove_Of_Chocolate_Where = {}
	tLove_Of_Chocolate_Where["PosX"] = 291
	tLove_Of_Chocolate_Where["PosY"] = 369
	tLove_Of_Chocolate_Where["MapId"] = 1002
	tLove_Of_Chocolate_Where["NpcId"] = 20019
	
	
--------------------------------------逻辑模块-------------------------------------------
--返回掩码值
function Love_Of_Chocolate_GetStc(tStc)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	
	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

--设置掩码
function Love_Of_Chocolate_AddStc(tStc, nData)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	local nSave = tStc["Save"]
	
	Task_AddStatistic(nEvent,nType,nData,nSave,nUserId)
end

--判断掩码上限
function Love_Of_Chocolate_LimitStc(tStc)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	local nSave = tStc["Save"]
	local nLimit = tStc["Limit"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nData >= nLimit then
		return true
	else
		return false
	end
end

--掩码时间戳判断重置
function Love_Of_Chocolate_TimeStampStc(tStc)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	local nSave = tStc["Save"]
	local nDelay = tStc["Delay"]
	local nTimeType = tStc["TimeType"]
	
	if Task_ChkStatistic(nEvent,nType,nUserId) then
		if Task_StcInterval(nEvent,nType,nDelay,nTimeType) then
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			Task_SetStatistic(nEvent,nType,0,nSave,nUserId)
		end
	else
		Task_SetStatistic(nEvent,nType,0,nSave,nUserId)
	end
end

--爱神的祝福打开
function Love_Of_Chocolate_Open(nItemTypeId)
	local nUserId = Get_UserId()
	if CommonFunc_GetAfterActivityTime(tLove_Of_Chocolate_Time["Activity"]) then
		--背包空间检查
		if not User_CheckLeftSpace(tLove_Of_Chocolate_Cont["Space"],nUserId) then
			Sys_MsgBox(tLove_Of_Chocolate_Text["MsgBox"]["NoSpace"]["Wish"])
			return
		end
		
		RewardTemplate_UseItem(tLove_Of_Chocolate_Reward[nItemTypeId])
		return
	end
	
	local nPosX = tLove_Of_Chocolate_Where["PosX"]
	local nPosY = tLove_Of_Chocolate_Where["PosY"]
	local nMapId = tLove_Of_Chocolate_Where["MapId"]
	local nNpcId = tLove_Of_Chocolate_Where["NpcId"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
end

--吃巧克力
function Love_Of_Chocolate_EatChocolate(nItemTypeId)
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	local nNum = Get_CountItemType(nItemTypeId,0)
	
	if not Sys_ChkFullTime(tLove_Of_Chocolate_Time["Activity"]) then
		if Item_ChkMulItem(nItemTypeId,nItemTypeId,nNum) and Item_DelMulItem(nItemTypeId,nItemTypeId,nNum) then
			Sys_SaveActionFestivalLog(string.format(tLove_Of_Chocolate_Log["DelItemNum"], nItemTypeId, nNum))
			User_TalkChannel2005(tLove_Of_Chocolate_Text["Channel2005"]["OverTime"]["Chocolate"])
		end
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tLove_Of_Chocolate_Cont["Space"],nUserId) then
		Sys_MsgBox(tLove_Of_Chocolate_Text["MsgBox"]["NoSpace"]["Chocolate"])
		return
	end
	
	--掩码上限
	local nEvent = tLove_Of_Chocolate_RewardRandom[nItemTypeId][nSex][1]["EventType"]
	local nType = tLove_Of_Chocolate_RewardRandom[nItemTypeId][nSex][1]["DataType"]
	local nDelay = tLove_Of_Chocolate_RewardRandom[nItemTypeId][nSex][1]["RewardDelay"]
	local nTimeType = tLove_Of_Chocolate_RewardRandom[nItemTypeId][nSex][1]["RewardTimeType"]
	local nMaxData = tLove_Of_Chocolate_RewardRandom[nItemTypeId][nSex][1]["RewardData"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local sItemName = Get_ItemtypeName(nItemTypeId)
	
	if nData >= nMaxData and not Task_StcInterval(nEvent,nType,nDelay,nTimeType,nUserId) then
		Sys_MsgBox(string.format(tLove_Of_Chocolate_Text["MsgBox"]["Full"]["Chocolate"], sItemName))
		return
	end
	
	--天石赠上限
	local nEMoney = Get_UserMonoEMoney(nUserId)
	if nEMoney + tLove_Of_Chocolate_Sex[nSex][nItemTypeId] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tLove_Of_Chocolate_Text["MsgBox"]["Full"]["Mono"])
		return
	end
	
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		RewardTemplate_NewRandomNoTip(tLove_Of_Chocolate_RewardRandom[nItemTypeId], nSex)
	end
end

--打开外套礼包
function Love_Of_Chocolate_GiftOpen(nItemTypeId)
	if not Sys_ChkFullTime(tLove_Of_Chocolate_Time["Open"]) then
		if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tLove_Of_Chocolate_Log["DelItem"], nItemTypeId))
			User_TalkChannel2005(tLove_Of_Chocolate_Text["Channel2005"]["OverTime"]["Gift"])
		end
		return
	end
	
	RewardTemplate_UseItemAndMsg(tLove_Of_Chocolate_Reward[nItemTypeId])
end

--片区、地宫怪物掉落
function Love_Of_Chocolate_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	local nLevel = tLove_Of_Chocolate_Cont["Level"]
	local nMetempsychosis = tLove_Of_Chocolate_Cont["Metempsychosis"]
	local nItemTypeId = tLove_Of_Chocolate_Cont["Id"][nSex]
	local nEndNum = tLove_Of_Chocolate_Cont["KillRandomSum"]
	local nStartNum = nEndNum - tLove_Of_Chocolate_Cont["KillRandom"]
	
	--活动时间检查
	if not Sys_ChkFullTime(tLove_Of_Chocolate_Time["Activity"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return
	end
	
	
	--概率掉落
	if nMonsterId ~= tLove_Of_Chocolate_Cont["FlowerMonster"] then
		if Sys_Random(nStartNum,nEndNum) then
			return
		end
	end
	
	Love_Of_Chocolate_TimeStampStc(tLove_Of_Chocolate_Stc["Monster"])
	
	local nData = Love_Of_Chocolate_GetStc(tLove_Of_Chocolate_Stc["Monster"])
	if Love_Of_Chocolate_LimitStc(tLove_Of_Chocolate_Stc["Monster"]) then
		if nData == tLove_Of_Chocolate_Stc["Monster"]["Limit"] then
			Love_Of_Chocolate_AddStc(tLove_Of_Chocolate_Stc["Monster"], 1)
			Sys_MsgBox(tLove_Of_Chocolate_Text["MsgBox"]["Full"]["Kill"])
		end
		return
	end
	--背包空间检查
	if not User_CheckLeftSpace(tLove_Of_Chocolate_Cont["Space"],nUserId) then
		User_TalkChannel2005(tLove_Of_Chocolate_Text["MsgBox"]["Full"][nSex])
		return
	end
	
	--设置掩码
	Love_Of_Chocolate_AddStc(tLove_Of_Chocolate_Stc["Monster"], 1)
	
	Item_AddNewItem(nItemTypeId, tLove_Of_Chocolate_Cont["Attr"])
	
	Sys_SaveActionFestivalLog(string.format(tLove_Of_Chocolate_Log["KillMonster"], nItemTypeId))
	
	User_EffectAdd(tLove_Of_Chocolate_Cont["Effect"]["SzObj"],tLove_Of_Chocolate_Cont["Effect"]["Effect"],nUserId)
	
	User_TalkChannel2005(tLove_Of_Chocolate_Text["Channel2005"]["KillMonster"][nSex])
end

--------------------------------------NPC模块--------------------------------------------
--爱之女神
tNpcFace[4514] = 119
tNpcGossip[20019] = tNpcGossip[20019] or DefaultNpc:new{}
tNpcGossip[20019]["DialogueText"] = tLove_Of_Chocolate_Text[20019]
tNpcGossip[20019]["OptionHidden"] = 1

tNpcGossip[20019]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20019]["tOption1-1"] = {111}
tNpcGossip[20019]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tLove_Of_Chocolate_Time["Activity"])
end

tNpcGossip[20019]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[20019]["tOption1-2"] = {121}
tNpcGossip[20019]["ChkFunc1-2"] = function()
	local nLevel = tLove_Of_Chocolate_Cont["Level"]
	local nMetempsychosis = tLove_Of_Chocolate_Cont["Metempsychosis"]
	if Sys_ChkFullTime(tLove_Of_Chocolate_Time["Activity"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return true
	else
		return false
	end
end

tNpcGossip[20019]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20019]["tOption1-3"] = {131,132,133}
tNpcGossip[20019]["ChkFunc1-3"] = function()
	local nLevel = tLove_Of_Chocolate_Cont["Level"]
	local nMetempsychosis = tLove_Of_Chocolate_Cont["Metempsychosis"]
	if Sys_ChkFullTime(tLove_Of_Chocolate_Time["Activity"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return true
	else
		return false
	end
end
tNpcGossip[20019]["OptionFunc131"] = "User_OpenExchangeShop</N>20019"
tNpcGossip[20019]["OptionPoint132"] = "2-1"

tNpcGossip[20019]["Text1-4"] = {141}
tNpcGossip[20019]["tOption1-4"] = {141}
tNpcGossip[20019]["ChkFunc1-4"] = function()
	return CommonFunc_GetAfterActivityTime(tLove_Of_Chocolate_Time["Activity"])
end

tNpcGossip[20019]["Text2-1"] = {211,212,217,213,214,215,216}
tNpcGossip[20019]["tOption2-1"] = {211}

--------------------------------------物品模板-------------------------------------------
tItem[3301657] = tItem[3301657] or {}
tItem[3301657]["Function"] = function(nItemTypeId,sItemName)
	Love_Of_Chocolate_Open(nItemTypeId)
end

for i = 3301658,3301659 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		Love_Of_Chocolate_EatChocolate(nItemTypeId)
	end
end

for i = 3301660, 3301663 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		Love_Of_Chocolate_GiftOpen(nItemTypeId)
	end
end
--------------------------------------怪物模块-------------------------------------------
-- local tLove_Of_Chocolate_Monster = {}
	-- tLove_Of_Chocolate_Monster["ActivityTime"] = tLove_Of_Chocolate_Time["Activity"]
	-- tLove_Of_Chocolate_Monster["Function"] = Love_Of_Chocolate_KillMonster
	-- tLove_Of_Chocolate_Monster["Area"] = {}
-- table.insert(tMonsterDrop_AreaLoad,tLove_Of_Chocolate_Monster)

-- local tLove_Of_Chocolate_FlowerMonster = {}
	-- tLove_Of_Chocolate_FlowerMonster["ActivityTime"] = tLove_Of_Chocolate_Time["Activity"]
	-- tLove_Of_Chocolate_FlowerMonster["Function"] = Love_Of_Chocolate_KillMonster
	-- tLove_Of_Chocolate_FlowerMonster["MonsterId"] = {4265}
-- table.insert(tMonsterDrop_AreaLoad,tLove_Of_Chocolate_FlowerMonster)