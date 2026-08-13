------------------------------------------------------------------------------------
--Name:			170703[简体征服][活动脚本]七夕节小活动（8.16-8.22）
--Purpose:		七夕节小活动
--Creator:		cy
--Created:		2018/6/19
------------------------------------------------------------------------------------
-- 40540 = V100\ActiveScript\Qixi\2017\[Conquer][ActiveScript]QixiActivity.lua
-- 40540 = V100\活动脚本\七夕\2017\[征服][活动脚本]七夕节小活动.lua


-- 命名前缀 QixiActivity
-- Logid  12000771

-- ##任务需求:
-- ##lua 40540
-- ##npc 4935

-- #掩码说明：
-- #stc:16286 七夕巧果 获得数量
-- #stc:16287 背包信获得标记
-- #stc:16288~16294 npc送出记录
-- #stc:16295 表白掩码

-------------------------------数据存储表------------------------
local tQixiActivityCount = {}
	tQixiActivityCount["ActivityTime"] = tActivityTime["QixiActivity"]["ActivityTime"]
	tQixiActivityCount["Metempsychosis"] = 0
	tQixiActivityCount["Level"] = 80
	tQixiActivityCount["Space"] = 1
	tQixiActivityCount["NpcId"] = 20879
	
	tQixiActivityCount["MostMonoEMoney"] = 88
	
	tQixiActivityCount["ChangeItemId"] = 3301454
	tQixiActivityCount["ChangeAttr"] = "0 %d"
	
	--npc坐标
	tQixiActivityCount["MapId"] = 1002
	tQixiActivityCount["PosX"] = 340
	tQixiActivityCount["PosY"] = 468
	tQixiActivityCount["Emoney"] = 88
	
	tQixiActivityCount["NoSpace"] = {}
local tQixiActivityLog = {}
	tQixiActivityLog["ChangeLog"] = "0,0,3303937,%d,12000771,3,3301454,%d"
	tQixiActivityLog["EmoneyLog"] = "0,0,3303943,1,12000771,3,3,%d"
	tQixiActivityLog["GetItem"] = "0,0,0,0,12000771,1,3303937,1"
	tQixiActivityLog["DelItem"] = "0,0,%d,1,12000771,2,0,0"
	tQixiActivityLog["OverTime"] = "0,0,%d,%d,12000771,3,0,0"

local tQixiActivityEffect = {}
	tQixiActivityEffect["Object"] = "self"
	tQixiActivityEffect["GetItem"] = "eidolon"
	tQixiActivityEffect["OpenBag"] = "angelwing"
	
local tQixiActivityStc = {}
	tQixiActivityStc["MonsterDrop"] = {}
	tQixiActivityStc["MonsterDrop"]["EventType"] = 162
	tQixiActivityStc["MonsterDrop"]["DataType"] = 86
	tQixiActivityStc["MonsterDrop"]["Sign"] = 99
	
	tQixiActivityStc["Speak"] = {}
	tQixiActivityStc["Speak"]["EventType"] = 162
	tQixiActivityStc["Speak"]["DataType"] = 95
	tQixiActivityStc["Speak"]["Sign"] = 1	
	
	tQixiActivityStc["Clear"] = {}
	tQixiActivityStc["Clear"]["EventType"] = 162
	tQixiActivityStc["Clear"]["DataType"] = {86,88,89,90,91,92,93,94,95}	
	
	

local tQixiActivityAward = {}
	--父亲节财富礼包
	tQixiActivityAward[3303943] = {}
	tQixiActivityAward[3303943]["Reward"] = {}
	tQixiActivityAward[3303943]["Reward"][1] = {}
	tQixiActivityAward[3303943]["Reward"][1]["ItemChanceSum"] = 10000
	
	--5%获得1到10的赠点
	tQixiActivityAward[3303943]["Reward"][1][1] = {}
	tQixiActivityAward[3303943]["Reward"][1][1]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][1]["ItemChance"] = 500
	tQixiActivityAward[3303943]["Reward"][1][1]["Item_1"] = 1
	tQixiActivityAward[3303943]["Reward"][1][1]["Start"] = 1
	tQixiActivityAward[3303943]["Reward"][1][1]["End"] = 10
	--25%获得11到20的赠点
	tQixiActivityAward[3303943]["Reward"][1][2] = {}
	tQixiActivityAward[3303943]["Reward"][1][2]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][2]["ItemChance"] = 2500
	tQixiActivityAward[3303943]["Reward"][1][2]["Item_1"] = 2
	tQixiActivityAward[3303943]["Reward"][1][2]["Start"] = 11
	tQixiActivityAward[3303943]["Reward"][1][2]["End"] = 20
	--35%获得21到30的赠点
	tQixiActivityAward[3303943]["Reward"][1][3] = {}
	tQixiActivityAward[3303943]["Reward"][1][3]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][3]["ItemChance"] = 3500
	tQixiActivityAward[3303943]["Reward"][1][3]["Item_1"] = 3
	tQixiActivityAward[3303943]["Reward"][1][3]["Start"] = 21
	tQixiActivityAward[3303943]["Reward"][1][3]["End"] = 30
	--18%获得31到40的赠点
	tQixiActivityAward[3303943]["Reward"][1][4] = {}
	tQixiActivityAward[3303943]["Reward"][1][4]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][4]["ItemChance"] = 1800
	tQixiActivityAward[3303943]["Reward"][1][4]["Item_1"] = 4
	tQixiActivityAward[3303943]["Reward"][1][4]["Start"] = 31
	tQixiActivityAward[3303943]["Reward"][1][4]["End"] = 40
	--12%获得41到50的赠点
	tQixiActivityAward[3303943]["Reward"][1][5] = {}
	tQixiActivityAward[3303943]["Reward"][1][5]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][5]["ItemChance"] = 1200
	tQixiActivityAward[3303943]["Reward"][1][5]["Item_1"] = 5
	tQixiActivityAward[3303943]["Reward"][1][5]["Start"] = 41
	tQixiActivityAward[3303943]["Reward"][1][5]["End"] = 50
	--4%获得51到60的赠点
	tQixiActivityAward[3303943]["Reward"][1][6] = {}
	tQixiActivityAward[3303943]["Reward"][1][6]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][6]["ItemChance"] = 400
	tQixiActivityAward[3303943]["Reward"][1][6]["Item_1"] = 6
	tQixiActivityAward[3303943]["Reward"][1][6]["Start"] = 51
	tQixiActivityAward[3303943]["Reward"][1][6]["End"] = 60
	--1%获得61到88的赠点
	tQixiActivityAward[3303943]["Reward"][1][7] = {}
	tQixiActivityAward[3303943]["Reward"][1][7]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303943]["Reward"][1][7]["ItemChance"] = 100
	tQixiActivityAward[3303943]["Reward"][1][7]["Item_1"] = 7
	tQixiActivityAward[3303943]["Reward"][1][7]["Start"] = 61
	tQixiActivityAward[3303943]["Reward"][1][7]["End"] = 88
	
	
	--表白礼包
	tQixiActivityAward[20879] = {}
	tQixiActivityAward[20879]["RewardItem"] = {}
	tQixiActivityAward[20879]["RewardItem"][1] = {}
	tQixiActivityAward[20879]["RewardItem"][1]["Id"] = 3303948
	tQixiActivityAward[20879]["RewardItem"][1]["Attr"] = "0 1"
	tQixiActivityAward[20879]["LogId"] = 12000771
	

	--豪华百年好合礼包
	tQixiActivityAward[3303944] = {}
	tQixiActivityAward[3303944]["RewardItem"] = {}
	tQixiActivityAward[3303944]["RewardItem"][1] = {}
	tQixiActivityAward[3303944]["RewardItem"][1]["Id"] = 181935
	tQixiActivityAward[3303944]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tQixiActivityAward[3303944]["DeleteItem"] = {}
	tQixiActivityAward[3303944]["DeleteItem"][1] = {}
	tQixiActivityAward[3303944]["DeleteItem"][1]["Id"] = 3303944
	tQixiActivityAward[3303944]["DeleteItem"][1]["Attr"] = "0 1"
	tQixiActivityAward[3303944]["LogId"] = 12000771
	
	--尊贵百年好合礼包
	tQixiActivityAward[3303945] = {}
	tQixiActivityAward[3303945]["RewardItem"] = {}
	tQixiActivityAward[3303945]["RewardItem"][1] = {}
	tQixiActivityAward[3303945]["RewardItem"][1]["Id"] = 181935
	tQixiActivityAward[3303945]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tQixiActivityAward[3303945]["DeleteItem"] = {}
	tQixiActivityAward[3303945]["DeleteItem"][1] = {}
	tQixiActivityAward[3303945]["DeleteItem"][1]["Id"] = 3303945
	tQixiActivityAward[3303945]["DeleteItem"][1]["Attr"] = "0 1"
	tQixiActivityAward[3303945]["LogId"] = 12000771
	
	--爱的表白礼盒
	tQixiActivityAward[3303946] = {}
	tQixiActivityAward[3303946]["RewardItem"] = {}
	tQixiActivityAward[3303946]["RewardItem"][1] = {}
	tQixiActivityAward[3303946]["RewardItem"][1]["Id"] = 360101
	tQixiActivityAward[3303946]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tQixiActivityAward[3303946]["DeleteItem"] = {}
	tQixiActivityAward[3303946]["DeleteItem"][1] = {}
	tQixiActivityAward[3303946]["DeleteItem"][1]["Id"] = 3303946
	tQixiActivityAward[3303946]["DeleteItem"][1]["Attr"] = "0 1"
	tQixiActivityAward[3303946]["LogId"] = 12000771
	
	--爱的绽放礼盒
	tQixiActivityAward[3303947] = {}
	tQixiActivityAward[3303947]["RewardItem"] = {}
	tQixiActivityAward[3303947]["RewardItem"][1] = {}
	tQixiActivityAward[3303947]["RewardItem"][1]["Id"] = 360102
	tQixiActivityAward[3303947]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tQixiActivityAward[3303947]["DeleteItem"] = {}
	tQixiActivityAward[3303947]["DeleteItem"][1] = {}
	tQixiActivityAward[3303947]["DeleteItem"][1]["Id"] = 3303947
	tQixiActivityAward[3303947]["DeleteItem"][1]["Attr"] = "0 1"
	tQixiActivityAward[3303947]["LogId"] = 12000771
	
	tQixiActivityAward[3303948] = {}
	tQixiActivityAward[3303948][1] = {}
	tQixiActivityAward[3303948][1]["ItemChanceSum"] = 10000
	tQixiActivityAward[3303948][1][1] = {}
	tQixiActivityAward[3303948][1][1]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303948][1][1]["ItemChance"] = 3200
	tQixiActivityAward[3303948][1][1]["Item_1"] = 1
	tQixiActivityAward[3303948][1][2] = {}
	tQixiActivityAward[3303948][1][2]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303948][1][2]["ItemChance"] = 2000
	tQixiActivityAward[3303948][1][2]["Item_1"] = 2
	tQixiActivityAward[3303948][1][3] = {}
	tQixiActivityAward[3303948][1][3]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303948][1][3]["ItemChance"] = 1500
	tQixiActivityAward[3303948][1][3]["Item_1"] = 3
	tQixiActivityAward[3303948][1][4] = {}
	tQixiActivityAward[3303948][1][4]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303948][1][4]["ItemChance"] = 800
	tQixiActivityAward[3303948][1][4]["Item_1"] = 4
	tQixiActivityAward[3303948][1][5] = {}
	tQixiActivityAward[3303948][1][5]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303948][1][5]["ItemChance"] = 1700
	tQixiActivityAward[3303948][1][5]["Item_1"] = 5
	tQixiActivityAward[3303948][1][6] = {}
	tQixiActivityAward[3303948][1][6]["RandomItemChanceType"] = 2
	tQixiActivityAward[3303948][1][6]["ItemChance"] = 800
	tQixiActivityAward[3303948][1][6]["Item_1"] = 6	
	
	tQixiActivityAward["Prize"] = {}
	tQixiActivityAward["Prize"][1] = {}
	tQixiActivityAward["Prize"][1]["LogId"] = 12000771
	tQixiActivityAward["Prize"][1]["RewardEffect"] = {}
	tQixiActivityAward["Prize"][1]["RewardEffect"]["SzObj"] = "self"
	tQixiActivityAward["Prize"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tQixiActivityAward["Prize"][1]["RewardItem"] = {}
	tQixiActivityAward["Prize"][1]["RewardItem"][1] = {}
	tQixiActivityAward["Prize"][1]["RewardItem"][1]["Id"] = 3303937
	tQixiActivityAward["Prize"][1]["RewardItem"][1]["Attr"] = "0 3"
	tQixiActivityAward["Prize"][1]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][1]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][1]["DeleteItem"][1]["Id"] = 3303948	
	
	tQixiActivityAward["Prize"][2] = {}
	tQixiActivityAward["Prize"][2]["LogId"] = 12000771
	tQixiActivityAward["Prize"][2]["RewardEffect"] = {}
	tQixiActivityAward["Prize"][2]["RewardEffect"]["SzObj"] = "self"
	tQixiActivityAward["Prize"][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tQixiActivityAward["Prize"][2]["RewardItem"] = {}
	tQixiActivityAward["Prize"][2]["RewardItem"][1] = {}
	tQixiActivityAward["Prize"][2]["RewardItem"][1]["Id"] = 3303937
	tQixiActivityAward["Prize"][2]["RewardItem"][1]["Attr"] = "0 5"
	tQixiActivityAward["Prize"][2]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][2]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][2]["DeleteItem"][1]["Id"] = 3303948		
	
	tQixiActivityAward["Prize"][3] = {}
	tQixiActivityAward["Prize"][3]["LogId"] = 12000771
	tQixiActivityAward["Prize"][3]["RewardEffect"] = {}
	tQixiActivityAward["Prize"][3]["RewardEffect"]["SzObj"] = "self"
	tQixiActivityAward["Prize"][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tQixiActivityAward["Prize"][3]["RewardItem"] = {}
	tQixiActivityAward["Prize"][3]["RewardItem"][1] = {}
	tQixiActivityAward["Prize"][3]["RewardItem"][1]["Id"] = 3303937
	tQixiActivityAward["Prize"][3]["RewardItem"][1]["Attr"] = "0 8"
	tQixiActivityAward["Prize"][3]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][3]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][3]["DeleteItem"][1]["Id"] = 3303948			
	
	tQixiActivityAward["Prize"][4] = {}
	tQixiActivityAward["Prize"][4]["LogId"] = 12000771
	tQixiActivityAward["Prize"][4]["RewardEffect"] = {}
	tQixiActivityAward["Prize"][4]["RewardEffect"]["SzObj"] = "self"
	tQixiActivityAward["Prize"][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tQixiActivityAward["Prize"][4]["RewardItem"] = {}
	tQixiActivityAward["Prize"][4]["RewardItem"][1] = {}
	tQixiActivityAward["Prize"][4]["RewardItem"][1]["Id"] = 3303937
	tQixiActivityAward["Prize"][4]["RewardItem"][1]["Attr"] = "0 10"
	tQixiActivityAward["Prize"][4]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][4]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][4]["DeleteItem"][1]["Id"] = 3303948
	
	tQixiActivityAward["Prize"][5] = {}
	tQixiActivityAward["Prize"][5]["LogId"] = 12000771
	tQixiActivityAward["Prize"][5]["RewardEffect"] = {}
	tQixiActivityAward["Prize"][5]["RewardEffect"]["SzObj"] = "self"
	tQixiActivityAward["Prize"][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tQixiActivityAward["Prize"][5]["RewardEMoneyMono"] = {}
	tQixiActivityAward["Prize"][5]["RewardEMoneyMono"]["Value"] = 5
	tQixiActivityAward["Prize"][5]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][5]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][5]["DeleteItem"][1]["Id"] = 3303948	

	tQixiActivityAward["Prize"][6] = {}
	tQixiActivityAward["Prize"][6]["LogId"] = 12000771
	tQixiActivityAward["Prize"][6]["RewardEffect"] = {}
	tQixiActivityAward["Prize"][6]["RewardEffect"]["SzObj"] = "self"
	tQixiActivityAward["Prize"][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tQixiActivityAward["Prize"][6]["RewardEMoneyMono"] = {}
	tQixiActivityAward["Prize"][6]["RewardEMoneyMono"]["Value"] = 10
	tQixiActivityAward["Prize"][6]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][6]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][6]["DeleteItem"][1]["Id"] = 3303948		
	
	--气力值礼包
	tQixiActivityAward["Prize"][3303940] = {}
	tQixiActivityAward["Prize"][3303940]["LogId"] = 12000771
	tQixiActivityAward["Prize"][3303940]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][3303940]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][3303940]["DeleteItem"][1]["Id"] = 3303940
	tQixiActivityAward["Prize"][3303940]["RewardStrengthValue"] = {}
	tQixiActivityAward["Prize"][3303940]["RewardStrengthValue"]["Value"] = 200	
	
	--微光星陨石礼盒
	tQixiActivityAward["Prize"][3303941] = {}
	tQixiActivityAward["Prize"][3303941]["LogId"] = 12000771
	tQixiActivityAward["Prize"][3303941]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][3303941]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][3303941]["DeleteItem"][1]["Id"] = 3303941
	tQixiActivityAward["Prize"][3303941]["RewardItem"] = {}
	tQixiActivityAward["Prize"][3303941]["RewardItem"][1] = {}
	tQixiActivityAward["Prize"][3303941]["RewardItem"][1]["Id"] = 3009000
	tQixiActivityAward["Prize"][3303941]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"	
	
	--明亮星陨石礼盒
	tQixiActivityAward["Prize"][3303942] = {}
	tQixiActivityAward["Prize"][3303942]["LogId"] = 12000771
	tQixiActivityAward["Prize"][3303942]["DeleteItem"] = {}
	tQixiActivityAward["Prize"][3303942]["DeleteItem"][1] = {}
	tQixiActivityAward["Prize"][3303942]["DeleteItem"][1]["Id"] = 3303942
	tQixiActivityAward["Prize"][3303942]["RewardItem"] = {}
	tQixiActivityAward["Prize"][3303942]["RewardItem"][1] = {}
	tQixiActivityAward["Prize"][3303942]["RewardItem"][1]["Id"] = 3009001
	tQixiActivityAward["Prize"][3303942]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"

	
	
	--杀怪3%获得妖血之晶
	tQixiActivityAward["Monster"] = {}
	tQixiActivityAward["Monster"][1] = {}
	tQixiActivityAward["Monster"][1]["ItemChanceSum"] = 10000
	
	tQixiActivityAward["Monster"][1][1] = {}
	tQixiActivityAward["Monster"][1][1]["RandomItemChanceType"] = 2
	tQixiActivityAward["Monster"][1][1]["ItemChance"] = 1000
	tQixiActivityAward["Monster"][1][1]["Item"] = {3303937}
	
	tQixiActivityAward["Monster"][1][2] = {}
	tQixiActivityAward["Monster"][1][2]["RandomItemChanceType"] = 2
	tQixiActivityAward["Monster"][1][2]["ItemChance"] = 9000
	tQixiActivityAward["Monster"][1][2]["Item"] = {0}
	
-------2018新增物品
local tQixiActivity_OpenItem = {}
	tQixiActivity_OpenItem[3309713] = {}
	tQixiActivity_OpenItem[3309713][1] = {} 
	tQixiActivity_OpenItem[3309713][1]["Reward"] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1]["ItemChanceSum"] = 10000

	--5%获得1到10的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][1] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][1]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][1]["ItemChance"] = 500
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][1]["Item_1"] = 1
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][1]["Start"] = 1
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][1]["End"] = 10
	--25%获得11到20的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][2] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][2]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][2]["ItemChance"] = 2500
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][2]["Item_1"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][2]["Start"] = 11
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][2]["End"] = 20
	--35%获得21到30的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][3] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][3]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][3]["ItemChance"] = 3500
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][3]["Item_1"] = 3
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][3]["Start"] = 21
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][3]["End"] = 30
	--18%获得31到40的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][4] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][4]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][4]["ItemChance"] = 1800
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][4]["Item_1"] = 4
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][4]["Start"] = 31
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][4]["End"] = 40
	--12%获得41到50的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][5] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][5]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][5]["ItemChance"] = 1200
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][5]["Item_1"] = 5
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][5]["Start"] = 41
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][5]["End"] = 50
	--4%获得51到60的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][6] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][6]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][6]["ItemChance"] = 400
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][6]["Item_1"] = 6
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][6]["Start"] = 51
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][6]["End"] = 60
	--1%获得61到88的赠点
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][7] = {}
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][7]["RandomItemChanceType"] = 2
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][7]["ItemChance"] = 100
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][7]["Item_1"] = 7
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][7]["Start"] = 61
	tQixiActivity_OpenItem[3309713][1]["Reward"][1][7]["End"] = 88



local tQixiActivity_GetItem = {}
-- 七夕赠点礼包
	tQixiActivity_GetItem[3309713] = {}
	tQixiActivity_GetItem[3309713]["LogId"] = 12000771
	tQixiActivity_GetItem[3309713]["DeleteItem"] = {}
	tQixiActivity_GetItem[3309713]["DeleteItem"][1] = {}
	tQixiActivity_GetItem[3309713]["DeleteItem"][1]["Id"] = 3309713
	tQixiActivity_GetItem[3309713]["RewardEMoneyMono"] = {}
	tQixiActivity_GetItem[3309713]["RewardEMoneyMono"]["Value"] = 1
	tQixiActivity_GetItem[3309713]["RewardEffect"] = {}
	tQixiActivity_GetItem[3309713]["RewardEffect"]["Effect"] = "angelwing"
	
	
-- 30天游园惊梦飞毯礼盒
	tQixiActivity_GetItem[3309714] = {}
	tQixiActivity_GetItem[3309714]["LogId"] = 12000771
	tQixiActivity_GetItem[3309714]["DeleteItem"] = {}
	tQixiActivity_GetItem[3309714]["DeleteItem"][1] = {}
	tQixiActivity_GetItem[3309714]["DeleteItem"][1]["Id"] = 3309714
	tQixiActivity_GetItem[3309714]["RewardItem"] = {}
	tQixiActivity_GetItem[3309714]["RewardItem"][1] = {}
	tQixiActivity_GetItem[3309714]["RewardItem"][1]["Id"] = 200492
	tQixiActivity_GetItem[3309714]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tQixiActivity_GetItem[3309714]["RewardEffect"] = {}
	tQixiActivity_GetItem[3309714]["RewardEffect"]["Effect"] = "angelwing"

-- 30天游园惊梦飞毯礼盒
	tQixiActivity_GetItem[3309715] = {}
	tQixiActivity_GetItem[3309715]["LogId"] = 12000771
	tQixiActivity_GetItem[3309715]["DeleteItem"] = {}
	tQixiActivity_GetItem[3309715]["DeleteItem"][1] = {}
	tQixiActivity_GetItem[3309715]["DeleteItem"][1]["Id"] = 3309715
	tQixiActivity_GetItem[3309715]["RewardItem"] = {}
	tQixiActivity_GetItem[3309715]["RewardItem"][1] = {}
	tQixiActivity_GetItem[3309715]["RewardItem"][1]["Id"] = 200503
	tQixiActivity_GetItem[3309715]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tQixiActivity_GetItem[3309715]["RewardEffect"] = {}
	tQixiActivity_GetItem[3309715]["RewardEffect"]["Effect"] = "angelwing"

-------------------------------函数部分------------------------
--打开兑换商店面板函数
function QixiActivityExchangeShop(nNpcId)
	if Sys_ChkFullTime(tQixiActivityCount["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tQixiActivityCount["Level"],tQixiActivityCount["Metempsychosis"]) then
		User_OpenExchangeShop(nNpcId)
	else
		return
	end
end

--使用妖血之晶
function QixiActivityUseBlood(nItemId)
	if Sys_ChkFullTime(tQixiActivityCount["ActivityTime"]) then
		local nNpcId = tQixiActivityCount["NpcId"]
		NpcPosition_PathFind(nNpcId)
		return
	end
	
	--活动期间外自动兑换成年运通宝 3301454
	local nNum = Get_CountItemType(nItemId,0)
	if nNum == 0 then
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		local sAttr = string.format(tQixiActivityCount["ChangeAttr"],nNum)
		local sLog = string.format(tQixiActivityLog["ChangeLog"],nNum,nNum)
		Item_AddNewItem(tQixiActivityCount["ChangeItemId"],sAttr)
		Sys_SaveActionFestivalLog(sLog)
		Sys_MsgBox(string.format(tQixiActivity_Text["System"]["OutTimeBlood"],nNum))
	end
end
--父亲节财富礼包使用函数
function QixiActivityUseTreasureBag(nItemId)
	if QixiActivity_OverTime(nItemId) then
		return
	end
	--赠点上限判断
	if Get_UserMonoEMoney() + tQixiActivityCount["MostMonoEMoney"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tQixiActivity_Text["System"]["MostMonoEMoney"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tQixiActivityAward[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		local sText = string.format(tQixiActivity_Text["System"]["GetMonoEMoney"],nCp)
		local sLog = string.format(tQixiActivityLog["EmoneyLog"],nCp)
		User_AddEMoneyMono(nCp)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
		User_EffectAdd(tQixiActivityEffect["Object"],tQixiActivityEffect["OpenBag"])
	end
end

--使用礼包函数
function QixiActivityUseGiftBag(nItemId)
	if QixiActivity_OverTime(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tQixiActivityAward[nItemId])
	User_EffectAdd(tQixiActivityEffect["Object"],tQixiActivityEffect["OpenBag"])
end

--杀怪1%获得妖血之晶函数
function QixiActivityMonsterDrop()
	if not Sys_ChkFullTime(tQixiActivityCount["ActivityTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tQixiActivityCount["Level"],tQixiActivityCount["Metempsychosis"]) then
		return
	end
	local nUserId = Get_UserId()
	if tQixiActivityCount["NoSpace"][nUserId] == nil then
		tQixiActivityCount["NoSpace"][nUserId] = 0
	end
	if not User_CheckLeftSpace(tQixiActivityCount["Space"]) then
		if tQixiActivityCount["NoSpace"][nUserId] == 0 then
			tQixiActivityCount["NoSpace"][nUserId] = 1
			Sys_MsgBox(tQixiActivity_Text["System"]["NoSpace"])
			User_TalkChannel2005(tQixiActivity_Text["System"]["NoSpace"])
		end
		return
	end	
	
	local nEvent = tQixiActivityStc["MonsterDrop"]["EventType"]
	local nType = tQixiActivityStc["MonsterDrop"]["DataType"]
	local nSign = tQixiActivityStc["MonsterDrop"]["Sign"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end

	--弹窗一次提示打怪获得奖励已达到上限
	if Task_ChkStcValue(nEvent,nType,"==",nSign) then
		Sys_MsgBox(tQixiActivity_Text["System"]["MostBlood"])
		Task_SetStatistic(nEvent,nType,1000,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return
	end

	if Task_ChkStcValue(nEvent,nType,">=",nSign) then
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tQixiActivityAward["Monster"],1)
	local sLog = tQixiActivityLog["GetItem"]
	
	local nItemId = tNum[1]["tAward"][1]["Item"][1]
	if nItemId == 0 then
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	Item_AddNewItem(nItemId,"")
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tQixiActivity_Text["System"]["GetBlood"])
	User_EffectAdd(tQixiActivityEffect["Object"],tQixiActivityEffect["OpenBag"])
end


function QixiActivity1(nNpcId)
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		Sys_DialogText(tQixiActivity_Text[20879]["Text221"])
		Sys_DialogOptEdit("",12,"QixiActivity2</N>"..nNpcId)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

function QixiActivity2(nNpcId)
	local sText = Get_SysAcceptStr()
	
	for a,b in pairs(tActivityOfNBA_Text["Name"]) do
		if string.find(sText,b) ~= nil and string.find(sText,b) ~= 0 then
			Sys_MsgBox(tQixiActivity_Text["System"]["NotName2"])
			return
		end
	end
	
	tNpcGossip[20879]["Text231"] = string.format(tQixiActivity_Text[20879]["Text231"],sText)
	
	tNpcGossip[20879]["OptionFunc231"] = "QixiActivity3</N>20879</N>1</S>"..sText
	tNpcGossip[20879]["OptionFunc232"] = "QixiActivity3</N>20879</N>2</S>"..sText
	tNpcGossip[20879]["OptionFunc233"] = "QixiActivity3</N>20879</N>3</S>"..sText
	tNpcGossip[20879]["OptionFunc234"] = "QixiActivity3</N>20879</N>4</S>"..sText
	tNpcGossip[20879]["OptionFunc235"] = "QixiActivity3</N>20879</N>5</S>"..sText
	tNpcGossip[20879]["OptionFunc236"] = "QixiActivity3</N>20879</N>6</S>"..sText

	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

function QixiActivity3(nNpcId,nFlag,sText)
	QixiActivity_ClearStc()
	local nEvent = tQixiActivityStc["Speak"]["EventType"]
	local nType = tQixiActivityStc["Speak"]["DataType"]
	local nSign = tQixiActivityStc["Speak"]["Sign"]	
	if Task_ChkStcValue(nEvent,nType,">=",nSign) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return	
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end	
	
	local nBroadFlag = math.random(3)
	local sBroadText =string.format(tQixiActivity_Text["System"]["Broad"][nBroadFlag],Get_UserName(),sText,tQixiActivity_Text["System"]["Text"][nFlag])
	
	Task_SetStatistic(nEvent,nType,nSign,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tQixiActivityAward[nNpcId])
	Sys_SystemBroadcast(sBroadText)
end

function QixiActivity_ClearStc()
	local nEvent = tQixiActivityStc["Clear"]["EventType"]
	for i,v in pairs(tQixiActivityStc["Clear"]["DataType"]) do 
		Task_StcReset(nEvent,v)
	end
end


function QixiActivity_Candy(nItemId)
	-- 判断时间
	if QixiActivity_OverTime(nItemId) then
		return
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tQixiActivityAward["Prize"][6]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tQixiActivity_Text["System"]["MostMonoEMoney"])
		return
	end	
	
	local flat,tTable = Probabil_RandomAward(tQixiActivityAward[nItemId],1)
	local nItem_1 = tTable[1]["tAward"][1]["Item_1"]
	
	RewardTemplate_UseItemAndMsg(tQixiActivityAward["Prize"][nItem_1])
end	


function QixiActivity_GiftPack(nItemId)
	if QixiActivity_OverTime(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tQixiActivityAward["Prize"][nItemId])
end

--传送
function QixiActivity_Goto(nNpcId)
	if Get_UserMapId() == 10137 or Get_UserMapId() == 10250 then
		local nUserId =  Get_UserId()
		User_DelAllAttribStatus(nUserId)
		local nStatus = 54
		User_DelRoleStatus(nStatus,nUserId)
	end
	
	local nBoundX = tQixiActivityCount["PosX"]
	local nBoundY = tQixiActivityCount["PosY"]
	local nMapId = tQixiActivityCount["MapId"]

	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,2,2)
end


---------2018新增物品
function QixiActivity_UseItem(nItemId)
	if QixiActivity_OverTime(nItemId) then
		return
	end
	local nUserEmoney = Get_UserMonoEMoney(nUserId)
	if nUserEmoney + tQixiActivityCount["Emoney"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tQixiActivity_Text["System"]["NoMoney"])
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tQixiActivity_OpenItem[3309713][1]["Reward"],1)
	local nStart = tNum[1]["tAward"][1]["Start"]
	local nEnd = tNum[1]["tAward"][1]["End"]
	local nCp = math.random(nStart,nEnd)
	local tTab = CommonFunc_Copy(tQixiActivity_GetItem[3309713])
	tTab["RewardEMoneyMono"]["Value"] = nCp
	RewardTemplate_UseItemAndMsg(tTab)
end


---过期删除物品
function QixiActivity_OverTime(nItemId)
	if not Sys_ChkFullTime(tQixiActivityCount["ActivityTime"]) then
		Sys_MsgBox(tQixiActivity_Text["System"]["OutTimeGiftBag"])
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tQixiActivityLog["OverTime"],nItemId,nItemNum))
			User_TalkChannel2005(tQixiActivity_Text["System"]["OverTime"])
		end
		return true
	end
	return false
end
-------------------------------模板部分------------------------
--鹊仙阿喜
tNpcFace[6109] = 120
tNpcFace[5696] = 73
tNpcGossip[20879] = tNpcGossip[20879] or DefaultNpc:new{}
tNpcGossip[20879]["OptionHidden"] = 1



--鹊仙阿喜-活动前
tNpcGossip[20879]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20879]["tOption1-1"] = {111}
tNpcGossip[20879]["Text111"] = tQixiActivity_Text[20879]["Text111"]
tNpcGossip[20879]["Text112"] = tQixiActivity_Text[20879]["Text112"]
tNpcGossip[20879]["Text113"] = tQixiActivity_Text[20879]["Text113"]
tNpcGossip[20879]["Text114"] = tQixiActivity_Text[20879]["Text114"]
tNpcGossip[20879]["Text115"] = tQixiActivity_Text[20879]["Text115"]
tNpcGossip[20879]["Text116"] = tQixiActivity_Text[20879]["Text116"]
tNpcGossip[20879]["Text117"] = tQixiActivity_Text[20879]["Text117"]
tNpcGossip[20879]["Option111"] = tQixiActivity_Text[20879]["Option111"]
tNpcGossip[20879]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tQixiActivityCount["ActivityTime"])
end

--鹊仙阿喜-活动后
tNpcGossip[20879]["Text1-2"] = {121,122,123}
tNpcGossip[20879]["tOption1-2"] = {121}
tNpcGossip[20879]["Text121"] = tQixiActivity_Text[20879]["Text121"]
tNpcGossip[20879]["Text122"] = tQixiActivity_Text[20879]["Text122"]
tNpcGossip[20879]["Text123"] = tQixiActivity_Text[20879]["Text123"]
tNpcGossip[20879]["Option121"] = tQixiActivity_Text[20879]["Option121"]
tNpcGossip[20879]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tQixiActivityCount["ActivityTime"])
end

--鹊仙阿喜-玩家等级未到
tNpcGossip[20879]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[20879]["tOption1-3"] = {131}
tNpcGossip[20879]["Text131"] = tQixiActivity_Text[20879]["Text131"]
tNpcGossip[20879]["Text132"] = tQixiActivity_Text[20879]["Text132"]
tNpcGossip[20879]["Text133"] = tQixiActivity_Text[20879]["Text133"]
tNpcGossip[20879]["Text134"] = tQixiActivity_Text[20879]["Text134"]
tNpcGossip[20879]["Text135"] = tQixiActivity_Text[20879]["Text135"]
tNpcGossip[20879]["Text136"] = tQixiActivity_Text[20879]["Text136"]
tNpcGossip[20879]["Text137"] = tQixiActivity_Text[20879]["Text137"]
tNpcGossip[20879]["Text138"] = tQixiActivity_Text[20879]["Text138"]
tNpcGossip[20879]["Option131"] = tQixiActivity_Text[20879]["Option131"]
tNpcGossip[20879]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tQixiActivityCount["Level"],tQixiActivityCount["Metempsychosis"])
end

--鹊仙阿喜
tNpcGossip[20879]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[20879]["tOption1-4"] = {141,142}
tNpcGossip[20879]["Text141"] = tQixiActivity_Text[20879]["Text141"]
tNpcGossip[20879]["Text142"] = tQixiActivity_Text[20879]["Text142"]
tNpcGossip[20879]["Text143"] = tQixiActivity_Text[20879]["Text143"]
tNpcGossip[20879]["Text144"] = tQixiActivity_Text[20879]["Text144"]
tNpcGossip[20879]["Text145"] = tQixiActivity_Text[20879]["Text145"]
tNpcGossip[20879]["Text146"] = tQixiActivity_Text[20879]["Text146"]
tNpcGossip[20879]["Text147"] = tQixiActivity_Text[20879]["Text147"]
tNpcGossip[20879]["Text148"] = tQixiActivity_Text[20879]["Text148"]
tNpcGossip[20879]["Option141"] = tQixiActivity_Text[20879]["Option141"]
tNpcGossip[20879]["Option142"] = tQixiActivity_Text[20879]["Option142"]
tNpcGossip[20879]["OptionFunc141"] = "QixiActivity1</N>20879"
tNpcGossip[20879]["OptionFunc142"] = "QixiActivityExchangeShop</N>20879"

tNpcGossip[20879]["OptionChkFunc141"] = function ()
	QixiActivity_ClearStc()
	local nEvent = tQixiActivityStc["Speak"]["EventType"]
	local nType = tQixiActivityStc["Speak"]["DataType"]
	local nSign = tQixiActivityStc["Speak"]["Sign"]
	return not Task_ChkStcValue(nEvent,nType,">=",nSign)
end

--鹊仙阿喜
tNpcGossip[20879]["Text2-1"] = {211}
tNpcGossip[20879]["tOption2-1"] = {211}
tNpcGossip[20879]["Text211"] = tQixiActivity_Text[20879]["Text211"]
tNpcGossip[20879]["Option211"] = tQixiActivity_Text[20879]["Option211"]

--鹊仙阿喜
tNpcGossip[20879]["Text2-3"] = {231}
tNpcGossip[20879]["tOption2-3"] = {231,232,233,234,235,236}
tNpcGossip[20879]["Text231"] = tQixiActivity_Text[20879]["Text231"]
tNpcGossip[20879]["Option231"] = tQixiActivity_Text[20879]["Option231"]
tNpcGossip[20879]["Option232"] = tQixiActivity_Text[20879]["Option232"]
tNpcGossip[20879]["Option233"] = tQixiActivity_Text[20879]["Option233"]
tNpcGossip[20879]["Option234"] = tQixiActivity_Text[20879]["Option234"]
tNpcGossip[20879]["Option235"] = tQixiActivity_Text[20879]["Option235"]
tNpcGossip[20879]["Option236"] = tQixiActivity_Text[20879]["Option236"]
tNpcGossip[20879]["OptionFunc231"] = "QixiActivity2</N>20879</N>1"
tNpcGossip[20879]["OptionFunc232"] = "QixiActivity2</N>20879</N>2"
tNpcGossip[20879]["OptionFunc233"] = "QixiActivity2</N>20879</N>3"
tNpcGossip[20879]["OptionFunc234"] = "QixiActivity2</N>20879</N>4"
tNpcGossip[20879]["OptionFunc235"] = "QixiActivity2</N>20879</N>5"
tNpcGossip[20879]["OptionFunc236"] = "QixiActivity2</N>20879</N>6"

tNpcGossip[20879]["Text2-4"] = {241}
tNpcGossip[20879]["tOption2-4"] = {241}
tNpcGossip[20879]["Text241"] = tQixiActivity_Text[20879]["Text241"]
tNpcGossip[20879]["Option241"] = tQixiActivity_Text[20879]["Option241"]


--物品模板

--妖血之晶
tItem[3303937] = tItem[3303937] or {}
	tItem[3303937]["Function"] = function(nItemId,sItemName)
		QixiActivityUseBlood(nItemId)
	end
	
--父亲节财富礼包
tItem[3303943] = tItem[3303943] or {}
	tItem[3303943]["Function"] = function(nItemId,sItemName)
		QixiActivityUseTreasureBag(nItemId)
	end
	
--30天精英白领时装包
tItem[3303944] = tItem[3303944] or {}
	tItem[3303944]["Function"] = function(nItemId,sItemName)
		QixiActivityUseGiftBag(nItemId)
	end
	
--90天精英白领时装包
tItem[3303945] = tItem[3303944]
	
--无敌神拳武器外套包
tItem[3303946] = tItem[3303944]
	
--铁血大旗武器外套包
tItem[3303947] = tItem[3303944]


tItem[3303948] = tItem[3303948] or {}
tItem[3303948]["Function"] = function(nItemId,sItemName)
	QixiActivity_Candy(nItemId)
end

tItem[3303941] = tItem[3303941] or {}
tItem[3303941]["Function"] = function(nItemId,sItemName)
	QixiActivity_GiftPack(nItemId)
end
tItem[3303942] = tItem[3303942] or {}
tItem[3303942]["Function"] = function(nItemId,sItemName)
	QixiActivity_GiftPack(nItemId)
end
tItem[3303940] = tItem[3303940] or {}
tItem[3303940]["Function"] = function(nItemId,sItemName)
	QixiActivity_GiftPack(nItemId)
end

-----------------------------------------2018新物品-----------------------------------------
-- 七夕赠点礼包
tItem[3309713] = tItem[3309713] or {}
tItem[3309713]["Function"] = function(nItemId,sItemName)
	QixiActivity_UseItem(nItemId)
end

-- 30天游园惊梦飞毯礼盒
tItem[3309714] = tItem[3309714] or {}
tItem[3309714]["Function"] = function(nItemId,sItemName)
	if QixiActivity_OverTime(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tQixiActivity_GetItem[nItemId])
end
-- 7天醉仙葫芦礼盒
tItem[3309715] = tItem[3309715] or {}
tItem[3309715]["Function"] = function(nItemId,sItemName)
	if QixiActivity_OverTime(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tQixiActivity_GetItem[nItemId])
end

-----------------------------------------怪物模板-----------------------------------------
-- local tQixiActivityMonsterDrop = {}
	-- tQixiActivityMonsterDrop["ActivityTime"] = tQixiActivityCount["ActivityTime"]
	-- tQixiActivityMonsterDrop["Function"] = QixiActivityMonsterDrop
	-- table.insert(tMonsterDrop_AreaLoad,tQixiActivityMonsterDrop)


