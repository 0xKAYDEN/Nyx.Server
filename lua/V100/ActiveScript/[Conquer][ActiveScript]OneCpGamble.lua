--------------------------------------------------------------------------------------------------------
--name:170405[简体征服][任务脚本]1天石赌活动制作
--by:魏贻逵
--date:2017-04-05
--------------------------------------------------------------------------------------------------------
-- 命名：OneCpGamble
--158,88 尘封的仙府秘宝每天掉落限制
--158,89 一阶仙府秘钥每天掉落限制
--158,90 每天传送进活动地图

--159,05 一阶魔府秘宝随机物品1
--159,06 一阶魔府秘宝随机物品2
--159,07 一阶魔府秘宝随机物品3
--159,56 一阶魔府秘宝随机物品数量
--159,57 一阶魔府秘宝随机物品数量
--159,58 一阶魔府秘宝随机物品数量
--159,08 一阶魔府秘宝刷新次数
--160,75 一阶开秘宝二次确认不再询问
--160,76 一阶刷新秘宝二次确认不再询问

--159,09 二阶魔府秘宝随机物品1
--159,10 二阶魔府秘宝随机物品2
--159,11 二阶魔府秘宝随机物品3
--159,59 二阶魔府秘宝随机物品数量
--159,60 二阶魔府秘宝随机物品数量
--159,61 二阶魔府秘宝随机物品数量
--159,12 二阶魔府秘宝刷新次数
--160,77 二阶开秘宝二次确认不再询问
--160,78 二阶刷新秘宝二次确认不再询问

--159,13 三阶魔府秘宝随机物品1
--159,14 三阶魔府秘宝随机物品2
--159,15 三阶魔府秘宝随机物品3
--159,62 三阶魔府秘宝随机物品数量
--159,63 三阶魔府秘宝随机物品数量
--159,64 三阶魔府秘宝随机物品数量
--159,16 三阶魔府秘宝刷新次数
--160,79 三阶开秘宝二次确认不再询问
--160,80 三阶刷新秘宝二次确认不再询问

--159,55 每日开启秘宝总次数
--159,84 背包信
--162,16 每日获得3个宝箱提示一次

--动态存储表 51568 data1 二阶钥匙掉落限制

local	tOneCpGamble_Cont = {}
		tOneCpGamble_Cont["Beftime"] = tActivityTime["OneCpGamble"]["Beftime"] --活动前
		tOneCpGamble_Cont["Nowtime"] = tActivityTime["OneCpGamble"]["Nowtime"] --活动中
		tOneCpGamble_Cont["Afttime"] = tActivityTime["OneCpGamble"]["Afttime"] --活动后
		tOneCpGamble_Cont["Cleantime"] = "00:00 00:02" --清动态码时间
		tOneCpGamble_Cont["Secs"] = 1800 
		tOneCpGamble_Cont["MapId"] = 1002 
		tOneCpGamble_Cont["PosX"] = 355 
		tOneCpGamble_Cont["PosY"] = 460
		tOneCpGamble_Cont["NpcId"] = 11356
		tOneCpGamble_Cont["Level"] = 80
		tOneCpGamble_Cont["Metempsychosis"] = 0
		tOneCpGamble_Cont["ResetNum"] = 50
		tOneCpGamble_Cont["OpenNum"] = 50
		tOneCpGamble_Cont["Global"] = 51568
		tOneCpGamble_Cont["Log"] = {}
		tOneCpGamble_Cont["Log"][1] = "0,0,%s,1,12000700,2,%s,1"
		tOneCpGamble_Cont["Log"][2] = "%d,0,%d,%d,12000700,1[1],0,0" --开启
		tOneCpGamble_Cont["Log"][3] = "0,0,%d[%d],%d[%d],12000700,1[1],0,0" --开启
		tOneCpGamble_Cont["Log"][4] = "%d,0,%d,%d,12000700,1[2],0,0"  --刷新
		
		tOneCpGamble_Cont["ItemId"] = {}
		tOneCpGamble_Cont["ItemId"][1] = 3302978
		tOneCpGamble_Cont["ItemId"][2] = 3302981
		tOneCpGamble_Cont["ItemId"][3] = 3302984


--需要隔天清的掩码
local	tOneCpGamble_Stc = {}
		tOneCpGamble_Stc[1] = {}
		tOneCpGamble_Stc[1]["EventType"] = 158
		tOneCpGamble_Stc[1]["DataType"] = 88

		tOneCpGamble_Stc[2] = {}
		tOneCpGamble_Stc[2]["EventType"] = 158
		tOneCpGamble_Stc[2]["DataType"] = 89

		tOneCpGamble_Stc[3] = {}
		tOneCpGamble_Stc[3]["EventType"] = 158
		tOneCpGamble_Stc[3]["DataType"] = 90
		
		tOneCpGamble_Stc[4] = {}
		tOneCpGamble_Stc[4]["EventType"] = 159
		tOneCpGamble_Stc[4]["DataType"] = 55

		tOneCpGamble_Stc[5] = {}
		tOneCpGamble_Stc[5]["EventType"] = 160
		tOneCpGamble_Stc[5]["DataType"] = 75
		
		tOneCpGamble_Stc[6] = {}
		tOneCpGamble_Stc[6]["EventType"] = 160
		tOneCpGamble_Stc[6]["DataType"] = 76
		
		tOneCpGamble_Stc[7] = {}
		tOneCpGamble_Stc[7]["EventType"] = 160
		tOneCpGamble_Stc[7]["DataType"] = 77
		
		tOneCpGamble_Stc[8] = {}
		tOneCpGamble_Stc[8]["EventType"] = 160
		tOneCpGamble_Stc[8]["DataType"] = 78
		
		tOneCpGamble_Stc[9] = {}
		tOneCpGamble_Stc[9]["EventType"] = 160
		tOneCpGamble_Stc[9]["DataType"] = 79
		
		tOneCpGamble_Stc[10] = {}
		tOneCpGamble_Stc[10]["EventType"] = 160
		tOneCpGamble_Stc[10]["DataType"] = 80
		
		tOneCpGamble_Stc[11] = {}
		tOneCpGamble_Stc[11]["EventType"] = 162
		tOneCpGamble_Stc[11]["DataType"] = 16

--怪物配置
local	tOneCpGamble_Monster = {} 
		tOneCpGamble_Monster[4352] = {}
		tOneCpGamble_Monster[4352]["Reward"] = {}
		tOneCpGamble_Monster[4352]["Reward"][1] = {}
		tOneCpGamble_Monster[4352]["Reward"][1]["ItemChanceSum"] = 100000

		tOneCpGamble_Monster[4352]["Reward"][1][1] = {}
		tOneCpGamble_Monster[4352]["Reward"][1][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Monster[4352]["Reward"][1][1]["ItemChance"] = 5000
		tOneCpGamble_Monster[4352]["Reward"][1][1]["Item_1"] = 3302976
		tOneCpGamble_Monster[4352]["Reward"][1][1]["Attr"] = "0 1"
		tOneCpGamble_Monster[4352]["Reward"][1][1]["Log"] = "0,0,0,0,12000700,2,3302976,1"

		tOneCpGamble_Monster[4352]["Reward"][1][2] = {}
		tOneCpGamble_Monster[4352]["Reward"][1][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Monster[4352]["Reward"][1][2]["ItemChance"] = 1000
		tOneCpGamble_Monster[4352]["Reward"][1][2]["Item_1"] = 3302975
		tOneCpGamble_Monster[4352]["Reward"][1][2]["Attr"] = "0 1"
		tOneCpGamble_Monster[4352]["Reward"][1][2]["Log"] = "0,0,0,0,12000700,2,3302975,1"
		tOneCpGamble_Monster[4352]["Reward"][1][2]["EventType"] = 158
		tOneCpGamble_Monster[4352]["Reward"][1][2]["DataType"] = 88
		tOneCpGamble_Monster[4352]["Reward"][1][2]["Limit"] = 3

		tOneCpGamble_Monster[4352]["Reward"][1][3] = {}
		tOneCpGamble_Monster[4352]["Reward"][1][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Monster[4352]["Reward"][1][3]["ItemChance"] = 500
		tOneCpGamble_Monster[4352]["Reward"][1][3]["Item_1"] = 3302977
		tOneCpGamble_Monster[4352]["Reward"][1][3]["Attr"] = "0 1"
		tOneCpGamble_Monster[4352]["Reward"][1][3]["Log"] = "0,0,0,0,12000700,2,3302977,1"
		tOneCpGamble_Monster[4352]["Reward"][1][3]["EventType"] = 158
		tOneCpGamble_Monster[4352]["Reward"][1][3]["DataType"] = 89
		tOneCpGamble_Monster[4352]["Reward"][1][3]["Limit"] = 3

		tOneCpGamble_Monster[4352]["Reward"][1][4] = {}
		tOneCpGamble_Monster[4352]["Reward"][1][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Monster[4352]["Reward"][1][4]["ItemChance"] = 1
		tOneCpGamble_Monster[4352]["Reward"][1][4]["Item_1"] = 3302980
		tOneCpGamble_Monster[4352]["Reward"][1][4]["Attr"] = "0 1"
		tOneCpGamble_Monster[4352]["Reward"][1][4]["Log"] = "0,0,0,0,12000700,2,3302980,1"
		tOneCpGamble_Monster[4352]["Reward"][1][4]["Global"] = 51568
		tOneCpGamble_Monster[4352]["Reward"][1][4]["Limit"] = 3

		tOneCpGamble_Monster[4352]["Reward"][1][5] = {}
		tOneCpGamble_Monster[4352]["Reward"][1][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Monster[4352]["Reward"][1][5]["ItemChance"] = 93499
		tOneCpGamble_Monster[4352]["Reward"][1][5]["Item_1"] = 0

--传送地图坐标配置
local	tOneCpGamble_Map = {}
		tOneCpGamble_Map["MapId"] = 10136
		tOneCpGamble_Map["Log"] = "0,0,0,0,0,1[1],0,0"
		tOneCpGamble_Map["PosX"] = {}
		tOneCpGamble_Map["PosX"][1] = 136
		tOneCpGamble_Map["PosX"][2] = 136
		tOneCpGamble_Map["PosX"][3] = 246
		tOneCpGamble_Map["PosX"][4] = 246

		tOneCpGamble_Map["PosY"] = {}
		tOneCpGamble_Map["PosY"][1] = 135
		tOneCpGamble_Map["PosY"][2] = 135
		tOneCpGamble_Map["PosY"][3] = 250
		tOneCpGamble_Map["PosY"][4] = 250

--物品配置
local	tOneCpGamble_Item = {} 
		tOneCpGamble_Item[3302975] = {} 
		tOneCpGamble_Item[3302975]["ChkItem"] = {} 
		tOneCpGamble_Item[3302975]["ChkItem"][1] = 3302978
		tOneCpGamble_Item[3302975]["ChkItem"][2] = 3302981
		tOneCpGamble_Item[3302975]["ChkItem"][3] = 3302984

		tOneCpGamble_Item[3302975]["Reward"] = {}
		tOneCpGamble_Item[3302975]["LogId"] = 12000700
		tOneCpGamble_Item[3302975]["RewardItem"] = {}
		tOneCpGamble_Item[3302975]["RewardItem"][1] = {}
		tOneCpGamble_Item[3302975]["RewardItem"][1]["Id"] = 3302978
		tOneCpGamble_Item[3302975]["RewardItem"][1]["Attr"] = "0 1 0 720 1"
		tOneCpGamble_Item[3302975]["DelLog"] = "0,0,3302975,%d,12000700,2,0,0"

		tOneCpGamble_Item[3303541] = {} 
		tOneCpGamble_Item[3303541]["ChkItem"] = {} 
		tOneCpGamble_Item[3303541]["ChkItem"][1] = 3302978
		tOneCpGamble_Item[3303541]["ChkItem"][2] = 3302981
		tOneCpGamble_Item[3303541]["ChkItem"][3] = 3302984

		tOneCpGamble_Item[3303541]["Reward"] = {}
		tOneCpGamble_Item[3303541]["LogId"] = 12000700
		tOneCpGamble_Item[3303541]["RewardItem"] = {}
		tOneCpGamble_Item[3303541]["RewardItem"][1] = {}
		tOneCpGamble_Item[3303541]["RewardItem"][1]["Id"] = 3302978
		tOneCpGamble_Item[3303541]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Item[3303541]["DelLog"] = "0,0,3303541,%d,12000700,2,0,0"

		tOneCpGamble_Item[3303542] = {} 
		tOneCpGamble_Item[3303542]["ChkItem"] = {} 
		tOneCpGamble_Item[3303542]["ChkItem"][1] = 3302978
		tOneCpGamble_Item[3303542]["ChkItem"][2] = 3302981
		tOneCpGamble_Item[3303542]["ChkItem"][3] = 3302984

		tOneCpGamble_Item[3303542]["Reward"] = {}
		tOneCpGamble_Item[3303542]["LogId"] = 12000700
		tOneCpGamble_Item[3303542]["RewardItem"] = {}
		tOneCpGamble_Item[3303542]["RewardItem"][1] = {}
		tOneCpGamble_Item[3303542]["RewardItem"][1]["Id"] = 3302981
		tOneCpGamble_Item[3303542]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Item[3303542]["DelLog"] = "0,0,3303542,%d,12000700,2,0,0"

		tOneCpGamble_Item[3303543] = {} 
		tOneCpGamble_Item[3303543]["ChkItem"] = {} 
		tOneCpGamble_Item[3303543]["ChkItem"][1] = 3302978
		tOneCpGamble_Item[3303543]["ChkItem"][2] = 3302981
		tOneCpGamble_Item[3303543]["ChkItem"][3] = 3302984

		tOneCpGamble_Item[3303543]["Reward"] = {}
		tOneCpGamble_Item[3303543]["LogId"] = 12000700
		tOneCpGamble_Item[3303543]["RewardItem"] = {}
		tOneCpGamble_Item[3303543]["RewardItem"][1] = {}
		tOneCpGamble_Item[3303543]["RewardItem"][1]["Id"] = 3302984
		tOneCpGamble_Item[3303543]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Item[3303543]["DelLog"] = "0,0,3303543,%d,12000700,2,0,0"

--魔府密钥
		tOneCpGamble_Item[3302977] = {} 
		tOneCpGamble_Item[3302977]["DelLog"] = "0,0,3302977,%d,12000700,2,0,0"
		-- tOneCpGamble_Item[3302977]["AddLog"] = "0,0,3302977,3,12000700,2,3302980,1"
		-- tOneCpGamble_Item[3302977]["AddItem"] = 3302980
		-- tOneCpGamble_Item[3302977]["Num"] = 5

		tOneCpGamble_Item[3302980] = {} 
		tOneCpGamble_Item[3302980]["DelLog"] = "0,0,3302980,%d,12000700,2,0,0"
		-- tOneCpGamble_Item[3302980]["AddLog"] = "0,0,3302980,3,12000700,2,3302983,1"
		-- tOneCpGamble_Item[3302980]["AddItem"] = 3302983
		-- tOneCpGamble_Item[3302980]["Num"] = 3

		tOneCpGamble_Item[3302983] = {} 
		tOneCpGamble_Item[3302983]["DelLog"] = "0,0,3302983,%d,12000700,2,0,0"

		tOneCpGamble_Item[3302976] = {} 
		tOneCpGamble_Item[3302976]["DelLog"] = "0,0,3302976,%d,12000700,2,0,0"
		tOneCpGamble_Item[3302976]["AddLog"] = "0,0,3302976,3,12000700,2,3302979,1"
		tOneCpGamble_Item[3302976]["AddItem"] = 3302979
		tOneCpGamble_Item[3302976]["Num"] = 3

		tOneCpGamble_Item[3302979] = {} 
		tOneCpGamble_Item[3302979]["DelLog"] = "0,0,3302979,%d,12000700,2,0,0"
		tOneCpGamble_Item[3302979]["AddLog"] = "0,0,3302979,3,12000700,2,3302982,1"
		tOneCpGamble_Item[3302979]["AddItem"] = 3302982
		tOneCpGamble_Item[3302979]["Num"] = 3

		tOneCpGamble_Item[3302982] = {} 
		tOneCpGamble_Item[3302982]["DelLog"] = "0,0,3302982,%d,12000700,2,0,0"

--1阶魔府秘宝
		tOneCpGamble_Item[3302978] = {} 
		tOneCpGamble_Item[3302978]["DelLog"] = "0,0,3302978,%d,12000700,2,0,0"

		tOneCpGamble_Item[3302978]["ChkItem"] = 3302977
		-- tOneCpGamble_Item[3302978]["Space"] = 29
		tOneCpGamble_Item[3302978]["MonoEMoney"] = 6
		tOneCpGamble_Item[3302978]["EMoney"] = 19

		tOneCpGamble_Item[3302978]["ChkResetItem"] = 3302976
		tOneCpGamble_Item[3302978]["ResetEMoney"] = 1
		tOneCpGamble_Item[3302978]["ResetNum"] = 50
		tOneCpGamble_Item[3302978]["NextItemId"] = 3302981

		tOneCpGamble_Item[3302978]["Stc"] = {} 
		tOneCpGamble_Item[3302978]["Stc"]["EventType"] = {} 
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][1] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][2] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][3] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][4] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][5] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][6] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][7] = 159
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][8] = 160
		tOneCpGamble_Item[3302978]["Stc"]["EventType"][9] = 160

		tOneCpGamble_Item[3302978]["Stc"]["DataType"] = {} 
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][1] = 05
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][2] = 06
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][3] = 07
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][4] = 08
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][5] = 56
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][6] = 57
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][7] = 58
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][8] = 75
		tOneCpGamble_Item[3302978]["Stc"]["DataType"][9] = 76

--随机物品
		tOneCpGamble_Item[3302978]["Reward"] = {}
		tOneCpGamble_Item[3302978]["Reward"][1] = {}
		tOneCpGamble_Item[3302978]["Reward"][1]["ItemChanceSum"] = 10000

		tOneCpGamble_Item[3302978]["Reward"][1][1] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][1]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][1]["Num"] = 1
		tOneCpGamble_Item[3302978]["Reward"][1][1]["ItemNum"] = 1

		tOneCpGamble_Item[3302978]["Reward"][1][2] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][2]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][2]["Num"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][2]["ItemNum"] = 1

		tOneCpGamble_Item[3302978]["Reward"][1][3] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][3]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][3]["Num"] = 3
		tOneCpGamble_Item[3302978]["Reward"][1][3]["ItemNum"] = 1
		
		tOneCpGamble_Item[3302978]["Reward"][1][4] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][4]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][4]["Num"] = 4
		tOneCpGamble_Item[3302978]["Reward"][1][4]["ItemNum"] = 1
		
		tOneCpGamble_Item[3302978]["Reward"][1][5] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][5]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][5]["Num"] = 5
		tOneCpGamble_Item[3302978]["Reward"][1][5]["ItemNum"] = 1

		tOneCpGamble_Item[3302978]["Reward"][1][6] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][6]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][6]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][6]["Num"] = 6
		tOneCpGamble_Item[3302978]["Reward"][1][6]["ItemNum"] = 10
		
		tOneCpGamble_Item[3302978]["Reward"][1][7] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][7]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][7]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][7]["Num"] = 7
		tOneCpGamble_Item[3302978]["Reward"][1][7]["ItemNum"] = 100

		tOneCpGamble_Item[3302978]["Reward"][1][8] = {}
		tOneCpGamble_Item[3302978]["Reward"][1][8]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][1][8]["ItemChance"] = 1250
		tOneCpGamble_Item[3302978]["Reward"][1][8]["Num"] = 8
		tOneCpGamble_Item[3302978]["Reward"][1][8]["ItemNum"] = 6

--随机数量
		tOneCpGamble_Item[3302978]["Reward"][2] = {}
		tOneCpGamble_Item[3302978]["Reward"][2]["ItemChanceSum"] = 10000
		tOneCpGamble_Item[3302978]["Reward"][2][1] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][1]["ItemChance"] = 3800
		tOneCpGamble_Item[3302978]["Reward"][2][1]["Num"] = 1

		tOneCpGamble_Item[3302978]["Reward"][2][2] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][2]["ItemChance"] = 2800
		tOneCpGamble_Item[3302978]["Reward"][2][2]["Num"] = 2

		tOneCpGamble_Item[3302978]["Reward"][2][3] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][3]["ItemChance"] = 1500
		tOneCpGamble_Item[3302978]["Reward"][2][3]["Num"] = 3

		tOneCpGamble_Item[3302978]["Reward"][2][4] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][4]["ItemChance"] = 700
		tOneCpGamble_Item[3302978]["Reward"][2][4]["Num"] = 4

		tOneCpGamble_Item[3302978]["Reward"][2][5] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][5]["ItemChance"] = 500
		tOneCpGamble_Item[3302978]["Reward"][2][5]["Num"] = 5

		tOneCpGamble_Item[3302978]["Reward"][2][6] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][6]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][6]["ItemChance"] = 300
		tOneCpGamble_Item[3302978]["Reward"][2][6]["Num"] = 6

		tOneCpGamble_Item[3302978]["Reward"][2][7] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][7]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][7]["ItemChance"] = 200
		tOneCpGamble_Item[3302978]["Reward"][2][7]["Num"] = 7

		tOneCpGamble_Item[3302978]["Reward"][2][8] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][8]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][8]["ItemChance"] = 120
		tOneCpGamble_Item[3302978]["Reward"][2][8]["Num"] = 8

		tOneCpGamble_Item[3302978]["Reward"][2][9] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][9]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][9]["ItemChance"] = 60
		tOneCpGamble_Item[3302978]["Reward"][2][9]["Num"] = 9

		tOneCpGamble_Item[3302978]["Reward"][2][10] = {}
		tOneCpGamble_Item[3302978]["Reward"][2][10]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302978]["Reward"][2][10]["ItemChance"] = 20
		tOneCpGamble_Item[3302978]["Reward"][2][10]["Num"] = 10

--2阶魔府秘宝
		tOneCpGamble_Item[3302981] = {} 
		tOneCpGamble_Item[3302981]["DelLog"] = "0,0,3302981,%d,12000700,2,0,0"

		tOneCpGamble_Item[3302981]["ChkItem"] = 3302980
		-- tOneCpGamble_Item[3302981]["Space"] = 29
		tOneCpGamble_Item[3302981]["MonoEMoney"] = 20
		tOneCpGamble_Item[3302981]["EMoney"] = 99

		tOneCpGamble_Item[3302981]["ChkResetItem"] = 3302979
		tOneCpGamble_Item[3302981]["ResetEMoney"] = 2
		tOneCpGamble_Item[3302981]["ResetNum"] = 50
		tOneCpGamble_Item[3302981]["NextItemId"] = 3302984

		tOneCpGamble_Item[3302981]["Stc"] = {} 
		tOneCpGamble_Item[3302981]["Stc"]["EventType"] = {} 
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][1] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][2] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][3] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][4] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][5] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][6] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][7] = 159
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][8] = 160
		tOneCpGamble_Item[3302981]["Stc"]["EventType"][9] = 160

		tOneCpGamble_Item[3302981]["Stc"]["DataType"] = {} 
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][1] = 09
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][2] = 10
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][3] = 11
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][4] = 12
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][5] = 59
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][6] = 60
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][7] = 61
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][8] = 77
		tOneCpGamble_Item[3302981]["Stc"]["DataType"][9] = 78


--随机物品
		tOneCpGamble_Item[3302981]["Reward"] = {}
		tOneCpGamble_Item[3302981]["Reward"][1] = {}
		tOneCpGamble_Item[3302981]["Reward"][1]["ItemChanceSum"] = 10000

		tOneCpGamble_Item[3302981]["Reward"][1][1] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][1]["ItemChance"] = 1350
		tOneCpGamble_Item[3302981]["Reward"][1][1]["Num"] = 1
		tOneCpGamble_Item[3302981]["Reward"][1][1]["ItemNum"] = 3

		tOneCpGamble_Item[3302981]["Reward"][1][2] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][2]["ItemChance"] = 1350
		tOneCpGamble_Item[3302981]["Reward"][1][2]["Num"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][2]["ItemNum"] = 5

		tOneCpGamble_Item[3302981]["Reward"][1][3] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][3]["ItemChance"] = 1300
		tOneCpGamble_Item[3302981]["Reward"][1][3]["Num"] = 3
		tOneCpGamble_Item[3302981]["Reward"][1][3]["ItemNum"] = 1
		
		tOneCpGamble_Item[3302981]["Reward"][1][4] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][4]["ItemChance"] = 1300
		tOneCpGamble_Item[3302981]["Reward"][1][4]["Num"] = 4
		tOneCpGamble_Item[3302981]["Reward"][1][4]["ItemNum"] = 1
		
		tOneCpGamble_Item[3302981]["Reward"][1][5] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][5]["ItemChance"] = 1250
		tOneCpGamble_Item[3302981]["Reward"][1][5]["Num"] = 5
		tOneCpGamble_Item[3302981]["Reward"][1][5]["ItemNum"] = 30

		tOneCpGamble_Item[3302981]["Reward"][1][6] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][6]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][6]["ItemChance"] = 1200
		tOneCpGamble_Item[3302981]["Reward"][1][6]["Num"] = 6
		tOneCpGamble_Item[3302981]["Reward"][1][6]["ItemNum"] = 300
		
		tOneCpGamble_Item[3302981]["Reward"][1][7] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][7]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][7]["ItemChance"] = 1200
		tOneCpGamble_Item[3302981]["Reward"][1][7]["Num"] = 7
		tOneCpGamble_Item[3302981]["Reward"][1][7]["ItemNum"] = 20

		tOneCpGamble_Item[3302981]["Reward"][1][8] = {}
		tOneCpGamble_Item[3302981]["Reward"][1][8]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][1][8]["ItemChance"] = 1050
		tOneCpGamble_Item[3302981]["Reward"][1][8]["Num"] = 8
		tOneCpGamble_Item[3302981]["Reward"][1][8]["ItemNum"] = 1

--随机数量
		tOneCpGamble_Item[3302981]["Reward"][2] = {}
		tOneCpGamble_Item[3302981]["Reward"][2]["ItemChanceSum"] = 10000
		tOneCpGamble_Item[3302981]["Reward"][2][1] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][1]["ItemChance"] = 3800
		tOneCpGamble_Item[3302981]["Reward"][2][1]["Num"] = 1

		tOneCpGamble_Item[3302981]["Reward"][2][2] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][2]["ItemChance"] = 2800
		tOneCpGamble_Item[3302981]["Reward"][2][2]["Num"] = 2
                        
		tOneCpGamble_Item[3302981]["Reward"][2][3] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][3]["ItemChance"] = 1500
		tOneCpGamble_Item[3302981]["Reward"][2][3]["Num"] = 3
		
		tOneCpGamble_Item[3302981]["Reward"][2][4] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][4]["ItemChance"] = 800
		tOneCpGamble_Item[3302981]["Reward"][2][4]["Num"] = 4

		tOneCpGamble_Item[3302981]["Reward"][2][5] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][5]["ItemChance"] = 500
		tOneCpGamble_Item[3302981]["Reward"][2][5]["Num"] = 5
                        
		tOneCpGamble_Item[3302981]["Reward"][2][6] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][6]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][6]["ItemChance"] = 320
		tOneCpGamble_Item[3302981]["Reward"][2][6]["Num"] = 6
		                 
		tOneCpGamble_Item[3302981]["Reward"][2][7] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][7]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][7]["ItemChance"] = 150
		tOneCpGamble_Item[3302981]["Reward"][2][7]["Num"] = 7
                        
		tOneCpGamble_Item[3302981]["Reward"][2][8] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][8]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][8]["ItemChance"] = 80
		tOneCpGamble_Item[3302981]["Reward"][2][8]["Num"] = 8

		tOneCpGamble_Item[3302981]["Reward"][2][9] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][9]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][9]["ItemChance"] = 40
		tOneCpGamble_Item[3302981]["Reward"][2][9]["Num"] = 9
                        
		tOneCpGamble_Item[3302981]["Reward"][2][10] = {}
		tOneCpGamble_Item[3302981]["Reward"][2][10]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302981]["Reward"][2][10]["ItemChance"] = 10
		tOneCpGamble_Item[3302981]["Reward"][2][10]["Num"] = 10
                        
--3阶魔府秘宝
		tOneCpGamble_Item[3302984] = {} 
		tOneCpGamble_Item[3302984]["DelLog"] = "0,0,3302984,%d,12000700,2,0,0"

		tOneCpGamble_Item[3302984]["ChkItem"] = 3302983
		-- tOneCpGamble_Item[3302984]["Space"] = 29
		tOneCpGamble_Item[3302984]["MonoEMoney"] = 50
		tOneCpGamble_Item[3302984]["EMoney"] = 299

		tOneCpGamble_Item[3302984]["ChkResetItem"] = 3302982
		tOneCpGamble_Item[3302984]["ResetEMoney"] = 5

		tOneCpGamble_Item[3302984]["Stc"] = {} 
		tOneCpGamble_Item[3302984]["Stc"]["EventType"] = {} 
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][1] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][2] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][3] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][4] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][5] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][6] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][7] = 159
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][8] = 160
		tOneCpGamble_Item[3302984]["Stc"]["EventType"][9] = 160

		tOneCpGamble_Item[3302984]["Stc"]["DataType"] = {} 
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][1] = 13
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][2] = 14
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][3] = 15
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][4] = 16
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][5] = 62
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][6] = 63
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][7] = 64
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][8] = 79
		tOneCpGamble_Item[3302984]["Stc"]["DataType"][9] = 80

--随机物品
		tOneCpGamble_Item[3302984]["Reward"] = {}
		tOneCpGamble_Item[3302984]["Reward"][1] = {}
		tOneCpGamble_Item[3302984]["Reward"][1]["ItemChanceSum"] = 10000

		tOneCpGamble_Item[3302984]["Reward"][1][1] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][1]["ItemChance"] = 1600
		tOneCpGamble_Item[3302984]["Reward"][1][1]["Num"] = 1
		tOneCpGamble_Item[3302984]["Reward"][1][1]["ItemNum"] = 80

		tOneCpGamble_Item[3302984]["Reward"][1][2] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][2]["ItemChance"] = 1600
		tOneCpGamble_Item[3302984]["Reward"][1][2]["Num"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][2]["ItemNum"] = 800

		tOneCpGamble_Item[3302984]["Reward"][1][3] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][3]["ItemChance"] = 1400
		tOneCpGamble_Item[3302984]["Reward"][1][3]["Num"] = 3
		tOneCpGamble_Item[3302984]["Reward"][1][3]["ItemNum"] = 10
		
		tOneCpGamble_Item[3302984]["Reward"][1][4] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][4]["ItemChance"] = 1400
		tOneCpGamble_Item[3302984]["Reward"][1][4]["Num"] = 4
		tOneCpGamble_Item[3302984]["Reward"][1][4]["ItemNum"] = 50

		tOneCpGamble_Item[3302984]["Reward"][1][5] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][5]["ItemChance"] = 800
		tOneCpGamble_Item[3302984]["Reward"][1][5]["Num"] = 5
		tOneCpGamble_Item[3302984]["Reward"][1][5]["ItemNum"] = 3

		tOneCpGamble_Item[3302984]["Reward"][1][6] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][6]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][6]["ItemChance"] = 800
		tOneCpGamble_Item[3302984]["Reward"][1][6]["Num"] = 6
		tOneCpGamble_Item[3302984]["Reward"][1][6]["ItemNum"] = 1

		tOneCpGamble_Item[3302984]["Reward"][1][7] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][7]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][7]["ItemChance"] = 500
		tOneCpGamble_Item[3302984]["Reward"][1][7]["Num"] = 7
		tOneCpGamble_Item[3302984]["Reward"][1][7]["ItemNum"] = 1

		tOneCpGamble_Item[3302984]["Reward"][1][8] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][8]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][8]["ItemChance"] = 500
		tOneCpGamble_Item[3302984]["Reward"][1][8]["Num"] = 8
		tOneCpGamble_Item[3302984]["Reward"][1][8]["ItemNum"] = 1

		tOneCpGamble_Item[3302984]["Reward"][1][9] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][9]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][9]["ItemChance"] = 400
		tOneCpGamble_Item[3302984]["Reward"][1][9]["Num"] = 9
		tOneCpGamble_Item[3302984]["Reward"][1][9]["ItemNum"] = 5

		tOneCpGamble_Item[3302984]["Reward"][1][10] = {}
		tOneCpGamble_Item[3302984]["Reward"][1][10]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][1][10]["ItemChance"] = 1000
		tOneCpGamble_Item[3302984]["Reward"][1][10]["Num"] = 10
		tOneCpGamble_Item[3302984]["Reward"][1][10]["ItemNum"] = 3000
		
--随机数量
		tOneCpGamble_Item[3302984]["Reward"][2] = {}
		tOneCpGamble_Item[3302984]["Reward"][2]["ItemChanceSum"] = 10000
		tOneCpGamble_Item[3302984]["Reward"][2][1] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][1]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][1]["ItemChance"] = 3800
		tOneCpGamble_Item[3302984]["Reward"][2][1]["Num"] = 1

		tOneCpGamble_Item[3302984]["Reward"][2][2] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][2]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][2]["ItemChance"] = 3000
		tOneCpGamble_Item[3302984]["Reward"][2][2]["Num"] = 2
                        
		tOneCpGamble_Item[3302984]["Reward"][2][3] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][3]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][3]["ItemChance"] = 1500
		tOneCpGamble_Item[3302984]["Reward"][2][3]["Num"] = 3
		
		tOneCpGamble_Item[3302984]["Reward"][2][4] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][4]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][4]["ItemChance"] = 690
		tOneCpGamble_Item[3302984]["Reward"][2][4]["Num"] = 4
		
		tOneCpGamble_Item[3302984]["Reward"][2][5] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][5]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][5]["ItemChance"] = 480
		tOneCpGamble_Item[3302984]["Reward"][2][5]["Num"] = 5
                        
		tOneCpGamble_Item[3302984]["Reward"][2][6] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][6]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][6]["ItemChance"] = 280
		tOneCpGamble_Item[3302984]["Reward"][2][6]["Num"] = 6
		                 
		tOneCpGamble_Item[3302984]["Reward"][2][7] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][7]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][7]["ItemChance"] = 150
		tOneCpGamble_Item[3302984]["Reward"][2][7]["Num"] = 7
                        
		tOneCpGamble_Item[3302984]["Reward"][2][8] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][8]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][8]["ItemChance"] = 60
		tOneCpGamble_Item[3302984]["Reward"][2][8]["Num"] = 8
		                 
		tOneCpGamble_Item[3302984]["Reward"][2][9] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][9]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][9]["ItemChance"] = 30
		tOneCpGamble_Item[3302984]["Reward"][2][9]["Num"] = 9
                        
		tOneCpGamble_Item[3302984]["Reward"][2][10] = {}
		tOneCpGamble_Item[3302984]["Reward"][2][10]["RandomItemChanceType"] = 2
		tOneCpGamble_Item[3302984]["Reward"][2][10]["ItemChance"] = 10
		tOneCpGamble_Item[3302984]["Reward"][2][10]["Num"] = 10

--秘宝奖励配置
-- 1阶奖励
local	tOneCpGamble_Reward = {}
		tOneCpGamble_Reward[3302978] = {}
		tOneCpGamble_Reward[3302978][1] = {}
		tOneCpGamble_Reward[3302978][1]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][1]["RewardItem"] = {}
		tOneCpGamble_Reward[3302978][1]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302978][1]["RewardItem"][1]["Id"] = 730001
		tOneCpGamble_Reward[3302978][1]["RewardItem"][1]["Attr"] = "0 1 3"
		tOneCpGamble_Reward[3302978][1]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][2] = {}
		tOneCpGamble_Reward[3302978][2]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][2]["RewardItem"] = {}
		tOneCpGamble_Reward[3302978][2]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302978][2]["RewardItem"][1]["Id"] = 3009000
		tOneCpGamble_Reward[3302978][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
		tOneCpGamble_Reward[3302978][2]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][3] = {}
		tOneCpGamble_Reward[3302978][3]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][3]["RewardItem"] = {}
		tOneCpGamble_Reward[3302978][3]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302978][3]["RewardItem"][1]["Id"] = 3003125
		tOneCpGamble_Reward[3302978][3]["RewardItem"][1]["Attr"] = "0 1 3"
		tOneCpGamble_Reward[3302978][3]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][4] = {}
		tOneCpGamble_Reward[3302978][4]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][4]["RewardItem"] = {}
		tOneCpGamble_Reward[3302978][4]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302978][4]["RewardItem"][1]["Id"] = 3003124
		tOneCpGamble_Reward[3302978][4]["RewardItem"][1]["Attr"] = "0 1 3"
		tOneCpGamble_Reward[3302978][4]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][5] = {}
		tOneCpGamble_Reward[3302978][5]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][5]["RewardItem"] = {}
		tOneCpGamble_Reward[3302978][5]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302978][5]["RewardItem"][1]["Id"] = 723700
		tOneCpGamble_Reward[3302978][5]["RewardItem"][1]["Attr"] = "0 1 3"
		tOneCpGamble_Reward[3302978][5]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][6] = {}
		tOneCpGamble_Reward[3302978][6]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][6]["RewardStrengthValue"] = {}
		tOneCpGamble_Reward[3302978][6]["RewardStrengthValue"]["Value"] = 10
		tOneCpGamble_Reward[3302978][6]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][7] = {}
		tOneCpGamble_Reward[3302978][7]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][7]["RewardCultivation"] = {}
		tOneCpGamble_Reward[3302978][7]["RewardCultivation"]["Value"] = 100
		tOneCpGamble_Reward[3302978][7]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302978][8] = {}
		tOneCpGamble_Reward[3302978][8]["LogId"] = 12000700
		tOneCpGamble_Reward[3302978][8]["RewardEMoneyMono"] = {}
		tOneCpGamble_Reward[3302978][8]["RewardEMoneyMono"]["Value"] = 6
		tOneCpGamble_Reward[3302978][8]["RewardNoNeedTip"] = 1

-- 2阶奖励
		tOneCpGamble_Reward[3302981] = {}
		tOneCpGamble_Reward[3302981][1] = {}
		tOneCpGamble_Reward[3302981][1]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][1]["RewardItem"] = {}
		tOneCpGamble_Reward[3302981][1]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302981][1]["RewardItem"][1]["Id"] = 3003124
		tOneCpGamble_Reward[3302981][1]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302981][1]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302981][2] = {}
		tOneCpGamble_Reward[3302981][2]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][2]["RewardItem"] = {}
		tOneCpGamble_Reward[3302981][2]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302981][2]["RewardItem"][1]["Id"] = 3001283
		tOneCpGamble_Reward[3302981][2]["RewardItem"][1]["Attr"] = "0 5"
		tOneCpGamble_Reward[3302981][2]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302981][3] = {}
		tOneCpGamble_Reward[3302981][3]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][3]["RewardItem"] = {}
		tOneCpGamble_Reward[3302981][3]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302981][3]["RewardItem"][1]["Id"] = 3003126
		tOneCpGamble_Reward[3302981][3]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302981][3]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302981][4] = {}
		tOneCpGamble_Reward[3302981][4]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][4]["RewardItem"] = {}
		tOneCpGamble_Reward[3302981][4]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302981][4]["RewardItem"][1]["Id"] = 3001414
		tOneCpGamble_Reward[3302981][4]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302981][4]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302981][5] = {}
		tOneCpGamble_Reward[3302981][5]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][5]["RewardStrengthValue"] = {}
		tOneCpGamble_Reward[3302981][5]["RewardStrengthValue"]["Value"] = 30
		tOneCpGamble_Reward[3302981][5]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302981][6] = {}
		tOneCpGamble_Reward[3302981][6]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][6]["RewardCultivation"] = {}
		tOneCpGamble_Reward[3302981][6]["RewardCultivation"]["Value"] = 300
		tOneCpGamble_Reward[3302981][6]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302981][7] = {}
		tOneCpGamble_Reward[3302981][7]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][7]["RewardEMoneyMono"] = {}
		tOneCpGamble_Reward[3302981][7]["RewardEMoneyMono"]["Value"] = 20
		tOneCpGamble_Reward[3302981][7]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302981][8] = {}
		tOneCpGamble_Reward[3302981][8]["LogId"] = 12000700
		tOneCpGamble_Reward[3302981][8]["RewardItem"] = {}
		tOneCpGamble_Reward[3302981][8]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302981][8]["RewardItem"][1]["Id"] = 730002
		tOneCpGamble_Reward[3302981][8]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302981][8]["RewardNoNeedTip"] = 1
		
--3阶
		tOneCpGamble_Reward[3302984] = {}
		tOneCpGamble_Reward[3302984][1] = {}
		tOneCpGamble_Reward[3302984][1]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][1]["RewardStrengthValue"] = {}
		tOneCpGamble_Reward[3302984][1]["RewardStrengthValue"]["Value"] = 80
		tOneCpGamble_Reward[3302984][1]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302984][2] = {}
		tOneCpGamble_Reward[3302984][2]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][2]["RewardCultivation"] = {}
		tOneCpGamble_Reward[3302984][2]["RewardCultivation"]["Value"] = 800
		tOneCpGamble_Reward[3302984][2]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302984][3] = {}
		tOneCpGamble_Reward[3302984][3]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][3]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][3]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][3]["RewardItem"][1]["Id"] = 3003124
		tOneCpGamble_Reward[3302984][3]["RewardItem"][1]["Attr"] = "0 10"
		tOneCpGamble_Reward[3302984][3]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302984][4] = {}
		tOneCpGamble_Reward[3302984][4]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][4]["RewardEMoneyMono"] = {}
		tOneCpGamble_Reward[3302984][4]["RewardEMoneyMono"]["Value"] = 50
		tOneCpGamble_Reward[3302984][4]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302984][5] = {}
		tOneCpGamble_Reward[3302984][5]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][5]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][5]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][5]["RewardItem"][1]["Id"] = 3003126
		tOneCpGamble_Reward[3302984][5]["RewardItem"][1]["Attr"] = "0 3"
		tOneCpGamble_Reward[3302984][5]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302984][6] = {}
		tOneCpGamble_Reward[3302984][6]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][6]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][6]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][6]["RewardItem"][1]["Id"] = 723860
		tOneCpGamble_Reward[3302984][6]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302984][6]["RewardNoNeedTip"] = 1
		
		tOneCpGamble_Reward[3302984][7] = {}
		tOneCpGamble_Reward[3302984][7]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][7]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][7]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][7]["RewardItem"][1]["Id"] = 1088000
		tOneCpGamble_Reward[3302984][7]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302984][7]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302984][8] = {}
		tOneCpGamble_Reward[3302984][8]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][8]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][8]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][8]["RewardItem"][1]["Id"] = 730003
		tOneCpGamble_Reward[3302984][8]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302984][8]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302984][9] = {}
		tOneCpGamble_Reward[3302984][9]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][9]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][9]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][9]["RewardItem"][1]["Id"] = 711504
		tOneCpGamble_Reward[3302984][9]["RewardItem"][1]["Attr"] = "0 5"
		tOneCpGamble_Reward[3302984][9]["RewardNoNeedTip"] = 1

		tOneCpGamble_Reward[3302984][10] = {}
		tOneCpGamble_Reward[3302984][10]["LogId"] = 12000700
		tOneCpGamble_Reward[3302984][10]["RewardItem"] = {}
		tOneCpGamble_Reward[3302984][10]["RewardItem"][1] = {}
		tOneCpGamble_Reward[3302984][10]["RewardItem"][1]["Id"] = 720880
		tOneCpGamble_Reward[3302984][10]["RewardItem"][1]["Attr"] = "0 1"
		tOneCpGamble_Reward[3302984][10]["RewardNoNeedTip"] = 1

local	tOneCpGamble_EmoneyLog = {}
		tOneCpGamble_EmoneyLog["ResetBox"] = {}
		tOneCpGamble_EmoneyLog["ResetBox"][1] = "250	4073	1	1	1	"
		tOneCpGamble_EmoneyLog["ResetBox"][2] = "250	4074	2	2	1	"
		tOneCpGamble_EmoneyLog["ResetBox"][5] = "250	4075	5	5	1	"
		tOneCpGamble_EmoneyLog["ResetBox"][3302978] = "350	20936	0	0	1	"
		tOneCpGamble_EmoneyLog["ResetBox"][3302981] = "350	20937	0	0	1	"
		tOneCpGamble_EmoneyLog["ResetBox"][3302984] = "350	20938	0	0	1	"

		tOneCpGamble_EmoneyLog["OpenBox"] = {}
		tOneCpGamble_EmoneyLog["OpenBox"][19] = "250	4076	19	19	1	"
		tOneCpGamble_EmoneyLog["OpenBox"][99] = "250	4077	99	99	1	"
		tOneCpGamble_EmoneyLog["OpenBox"][299] = "250	4078	299	299	1	"
		tOneCpGamble_EmoneyLog["OpenBox"][3302978] = "350	20933	0	0	1	"
		tOneCpGamble_EmoneyLog["OpenBox"][3302981] = "350	20934	0	0	1	"
		tOneCpGamble_EmoneyLog["OpenBox"][3302984] = "350	20935	0	0	1	"
		
		tOneCpGamble_EmoneyLog["UpdateBox"] = {}
		tOneCpGamble_EmoneyLog["UpdateBox"][3302978] = "350	20931	0	0	1	"
		tOneCpGamble_EmoneyLog["UpdateBox"][3302981] = "350	20932	0	0	1	"
		
		tOneCpGamble_EmoneyLog["UpdateKey"] = {}
		tOneCpGamble_EmoneyLog["UpdateKey"][3302976] = "350	20942	0	0	1	"
		tOneCpGamble_EmoneyLog["UpdateKey"][3302979] = "350	20943	0	0	1	"
		
		tOneCpGamble_EmoneyLog["Join"] = "350	20930	0	0	1	"

--------------------------------------------------------------------------------------------------------

function OneCpGamble_SpaceCount(nItemId,nData1,nNum1,nData2,nNum2,nData3,nNum3)
	local tSpace = {}
	
	if tOneCpGamble_Reward[nItemId][nData3]["RewardItem"]~= nil then
		local nRewardId = tOneCpGamble_Reward[nItemId][nData3]["RewardItem"][1]["Id"]
		tSpace[nRewardId] = nNum3
	end
	
	if tOneCpGamble_Reward[nItemId][nData1]["RewardItem"]~= nil then
		local nRewardId = tOneCpGamble_Reward[nItemId][nData1]["RewardItem"][1]["Id"]
		
		if tSpace[nRewardId] ~= nil then
			tSpace[nRewardId] = tSpace[nRewardId] + nNum1
		else
			tSpace[nRewardId] = nNum1
		end
	end
	
	if tOneCpGamble_Reward[nItemId][nData2]["RewardItem"]~= nil then
		local nRewardId = tOneCpGamble_Reward[nItemId][nData2]["RewardItem"][1]["Id"]
		
		if tSpace[nRewardId] ~= nil then
			tSpace[nRewardId] = tSpace[nRewardId] + nNum2
		else
			tSpace[nRewardId] = nNum2
		end
	end
	
	local nSpace = 0
	
	for i,v in pairs(tSpace) do
		nSpace = nSpace + OneCpGamble_GetSpace(i,v)
	end
	
	return nSpace
end

function OneCpGamble_GetSpace(nItemId,nNum)
	local nAccumulateLimit = Get_ItemtypeAccumulateLimit(nItemId)
	if nAccumulateLimit == 0 then
		nAccumulateLimit = 1
	end
	local nSpace = math.ceil(nNum/nAccumulateLimit)
	return nSpace
end

--隔天清掩码
function OneCpGamble_NextDay()
	for i = 1,#tOneCpGamble_Stc do
		if Task_StcInterval(tOneCpGamble_Stc[i]["EventType"],tOneCpGamble_Stc[i]["DataType"],1,4) then
			Task_SetStatistic(tOneCpGamble_Stc[i]["EventType"],tOneCpGamble_Stc[i]["DataType"],0,1)
			Task_SetStcTimestamp(tOneCpGamble_Stc[i]["EventType"],tOneCpGamble_Stc[i]["DataType"],0)
		end
	end
end

--开箱子后清除开启次数掩码
function OneCpGamble_CleanStc()
	for i = 1,3 do
		local nItemId = tOneCpGamble_Cont["ItemId"][i]
		local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][4]
		local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][4]
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
end

--随机物品名字和数量
function OneCpGamble_RandomItem(nItemId)
	-- local nItemId = Get_ItemType()
	local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][1]
	local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][1]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	if nData == 0 then
		for i = 1,3 do --随机物品
			local flat,tNum = Probabil_RandomAward(tOneCpGamble_Item[nItemId]["Reward"],1)
			local nNum = tNum[1]["tAward"][1]["Num"]
			Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][i],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][i],nNum,1)
		end

		for i = 5,7 do --随机数量
			local flat,tNum = Probabil_RandomAward(tOneCpGamble_Item[nItemId]["Reward"],2)
			local nNum = tNum[1]["tAward"][1]["Num"]
			Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][i],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][i],nNum,1)
		end
	end
end

--开启秘宝条件判断
function OneCpGamble_ChkOpenBox(nItemId,nOption)
--判断活动时间
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		local nDelNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			local sLog = string.format(tOneCpGamble_Item[nItemId]["DelLog"],nDelNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["DelItem"])
		end
		return false
	end

--是否有物品或天石
	local nEMoney = tOneCpGamble_Item[nItemId]["EMoney"]
	local nUserEMoney = Get_UserEMoney()
	local nChkItemId = tOneCpGamble_Item[nItemId]["ChkItem"]
	if nOption == 1 then
		if not Item_ChkItem(nChkItemId) then
			-- local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][8]
			-- local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][8]
			-- local nData = Get_UserStatisticValue(nEventType,nDataType)
			-- if nData == 0 then
				LinkItemGossipFunc_New(nItemId,"2-1")
			return false
			-- else
				-- LinkItemGossipFunc_New(nItemId,"3-1")
				-- return false
		end
	else
		if nUserEMoney < nEMoney then
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["NoEMoney"])
			return false
		end
	end

--背包判断
	local nData1 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][1],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][1])
	local nData2 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][2],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][2])
	local nData3 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][3],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][3])
	local nNum1 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][5],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][5])
	local nNum2 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][6],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][6])
	local nNum3 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][7],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][7])
	local nSpace = OneCpGamble_SpaceCount(nItemId,nData1,nNum1,nData2,nNum2,nData3,nNum3)

	if nSpace > 0 then
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tOneCpGamble_Text[nItemId]["NoSpace"],nSpace))
			return false
		end
	end

--判断赠点上限
	local nUserMonoEMoney = Get_UserMonoEMoney()
	local nNum = nNum1 + nNum2 + nNum3
	local nMonoEMoney = tOneCpGamble_Item[nItemId]["MonoEMoney"] * nNum
	if nUserMonoEMoney + nMonoEMoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tOneCpGamble_Text[nItemId]["NoChkItem"])
		return false
	end

	if nOption == 1 then
		if Item_ChkItem(nItemId) and Item_ChkItem(nChkItemId) and Item_DelItem(nItemId) and Item_DelItem(nChkItemId) then
			local sLog = string.format(tOneCpGamble_Cont["Log"][3],nItemId,nChkItemId,1,1)
			Sys_SaveActionFestivalLog(sLog)
			Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["OpenBox"][nItemId])
			return true
		else
			return false
		end
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) and User_AddEMoney(-nEMoney) then
			local sLog = string.format(tOneCpGamble_Cont["Log"][2],nEMoney,nItemId,1)
			Sys_SaveActionFestivalLog(sLog)
			Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["OpenBox"][nEMoney])
			return true
		else
			return false
		end
	end
end

--刷新秘宝条件判断
function OneCpGamble_ChkResetBox(nItemId,nOption)
--判断活动时间
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		local nDelNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			local sLog = string.format(tOneCpGamble_Item[nItemId]["DelLog"],nDelNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["DelItem"])
		end
		return false
	end

--判断天石
	local nEMoney = tOneCpGamble_Item[nItemId]["ResetEMoney"]
	local nUserEMoney = Get_UserEMoney()
	local nChkResetItemId = tOneCpGamble_Item[nItemId]["ChkResetItem"]

	if nOption == 3 then
		if Item_ChkItem(nChkResetItemId) and Item_DelItem(nChkResetItemId) then
			local sLog = string.format(tOneCpGamble_Cont["Log"][4],0,nChkResetItemId,1)
			Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["ResetBox"][nItemId])
			Sys_SaveActionFestivalLog(sLog)
			return true
		else
			-- local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][9]
			-- local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][9]
			-- local nData = Get_UserStatisticValue(nEventType,nDataType)
			-- if nData == 0 then
				LinkItemGossipFunc_New(nItemId,"2-2")
				return false
			-- else
				-- LinkItemGossipFunc_New(nItemId,"3-2")
				-- return false
			-- end
		end
	else
		if nUserEMoney >= nEMoney then
			if User_AddEMoney(-nEMoney) then
				local sLog = string.format(tOneCpGamble_Cont["Log"][4],nEMoney,0,0)
				Sys_SaveActionFestivalLog(sLog)
				Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["ResetBox"][nEMoney])
				return true
			end
		else
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["NoResetEMoney"])
			return false
		end
	end
end

--------------------------------------------------------------------------------------------------------
--传送入魔窟
function OneCpGamble_GoToMap(nNpcId)
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"]) then
		return
	end

	local nEventType = tOneCpGamble_Stc[3]["EventType"]
	local nDataType = tOneCpGamble_Stc[3]["DataType"]
--隔天清掩码
	OneCpGamble_NextDay()

	if Task_StcInterval(nEventType,nDataType,tOneCpGamble_Cont["Secs"],0) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

--传送进地图
	Task_SetStatistic(nEventType,nDataType,1,1)
	-- Task_SetStcTimestamp(nEventType,nDataType,0)
	local nNum = math.random(1,4)
	local nMapId = tOneCpGamble_Map["MapId"]
	local nBoundX = tOneCpGamble_Map["PosX"][nNum]
	local nBoundY = tOneCpGamble_Map["PosY"][nNum] 
	local nTime = tOneCpGamble_Cont["Secs"] - (os.time() - Get_UserStcTimestampValue(nEventType,nDataType))
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(tOneCpGamble_Map["Log"])
	Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["Join"])
	User_TalkChannel2005(tOneCpGamble_Text["GoToMap"])
	if nTime > 0 then
		User_SetTimer(nTime,"OneCpGamble_Time",1)
	end
end

--倒计时
function OneCpGamble_Time(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	if nMapId ~= tOneCpGamble_Map["MapId"] then
		return
	end
	User_UserRandBoundTrans(tOneCpGamble_Cont["MapId"],tOneCpGamble_Cont["PosX"],tOneCpGamble_Cont["PosY"],5,5,1,nUserId)
	User_TalkChannel2005(tOneCpGamble_Text["OutMap"],nUserId)
end

--购买箱子
function OneCpGamble_BuyBox(nNpcId)
	User_OpenDialog(0,nNpcId,0)
end

--------------------------------------------------------------------------------------------------------
--物品使用
--尘封的秘宝
function OneCpGamble_Item3302975(nItemId)
	-- 判断过期时间
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		local nDelNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			local sLog = string.format(tOneCpGamble_Item[nItemId]["DelLog"],nDelNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["DelItem"])
		end
		return false
	end
	
	for i = 1,3 do
		local nChkItem = tOneCpGamble_Item[nItemId]["ChkItem"][i]
		if Item_ChkItem(nChkItem) then
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["ChkItem"])
			return
		end
	end

	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tOneCpGamble_Text["NoSpace"])
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
			OneCpGamble_CleanStc()
			RewardTemplate_UseItem(tOneCpGamble_Item[nItemId])
			User_EffectAdd("self","angelwing")
		else
			local sLog = string.format(tOneCpGamble_Item[nItemId]["DelLog"],1)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["DelItem"])
		end
	end
end

--钥匙
function OneCpGamble_Item3302977(nItemId)
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		local nDelNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tOneCpGamble_Item[nItemId]["DelLog"],nDelNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["DelItem"])
		end
		return
	end
	-- Sys_GotoSomeWhere(tOneCpGamble_Cont["PosX"],tOneCpGamble_Cont["PosY"],tOneCpGamble_Cont["MapId"],tOneCpGamble_Cont["NpcId"])
	if nItemId ~= 3302983 and nItemId ~= 3302982 and nItemId ~= 3302977 and nItemId ~= 3302980 then
		-- User_TalkChannel2005(tostring(nItemId))
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

--钥匙合成
function OneCpGamble_Key(nItemId)
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tOneCpGamble_Text["NoSpace"])
		return
	end
	
	local nNum = tOneCpGamble_Item[nItemId]["Num"]
	if Item_ChkMulItem(nItemId,nItemId,nNum,1) and Item_DelMulItem(nItemId,nItemId,nNum,1) then
		local sLog = tOneCpGamble_Item[nItemId]["AddLog"]
		local nAddItemId = tOneCpGamble_Item[nItemId]["AddItem"]
		Item_AddNewItem(nAddItemId,"0 1")
		Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["UpdateKey"][nItemId])
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tOneCpGamble_Text[nItemId]["AddItem"])
		User_EffectAdd("self","angelwing")
		if Item_ChkItem(nItemId) then
			LinkItemGossipFunc_New(nItemId,"1-1")
		end
	else
		User_TalkChannel2005(tOneCpGamble_Text[nItemId]["NoKey"])
	end
end

--魔府秘宝
function OneCpGamble_Item3302978(nItemId)
	OneCpGamble_NextDay()
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		local nDelNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tOneCpGamble_Item[nItemId]["DelLog"],nDelNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tOneCpGamble_Text[nItemId]["DelItem"])
		end
		return
	end
	local nEventType = tOneCpGamble_Stc[4]["EventType"]
	local nDataType = tOneCpGamble_Stc[4]["DataType"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	if nData >= tOneCpGamble_Cont["OpenNum"] then
		User_TalkChannel2005(tOneCpGamble_Text["OpenFull"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--开启秘宝，不再询问
function OneCpGamble_OpenBoxNoAsk(nItemId,nOption)
	Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][8],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][8],1,1)
	Task_SetStcTimestamp(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][8],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][8],0)
	OneCpGamble_OpenBox(nItemId,nOption)
end

--开启秘宝
function OneCpGamble_OpenBox(nItemId,nOption)
	if not OneCpGamble_ChkOpenBox(nItemId,nOption) then
		return
	end

	local nEventType = tOneCpGamble_Stc[4]["EventType"]
	local nDataType = tOneCpGamble_Stc[4]["DataType"]
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)

	local sTalk = ""
	local nSunNum = 0
	for i = 1,3 do
		local nData = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][i],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][i])
		local nFlag = 4 + i
		local nNum = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][nFlag],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][nFlag])
		local nItemNum = tOneCpGamble_Item[nItemId]["Reward"][1][nData]["ItemNum"]
		local nSunMum = nNum * nItemNum
		local sText = string.format(tOneCpGamble_Text["Talk"][i],nSunMum,tOneCpGamble_Text[nItemId]["ItemName1"][nData])
		sTalk = sTalk..sText
		for j = 1,nNum do
			RewardTemplate_UseItem(tOneCpGamble_Reward[nItemId][nData])
		end
		Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][i],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][i],0,1)
	end
	User_TalkChannel2005(sTalk)
	User_EffectAdd("self","angelwing")
	OneCpGamble_CleanStc()

end

--刷新秘宝，不再询问
function OneCpGamble_ResetBoxNoAsk(nItemId,nOption)
	Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][9],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][9],1,1)
	Task_SetStcTimestamp(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][9],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][9],0)
	OneCpGamble_ResetBox(nItemId,nOption)
end

--刷新秘宝
function OneCpGamble_ResetBox(nItemId,nOption)
	if not OneCpGamble_ChkResetBox(nItemId,nOption) then
		return
	end
	local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][4]
	local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][4]
	local nData = Get_UserStatisticValue(nEventType,nDataType) + 1
	local nResetNum = tOneCpGamble_Item[nItemId]["ResetNum"]
	Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][4],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][4],nData,1)
	if nResetNum~= nil then
		if nData >= tOneCpGamble_Cont["ResetNum"] and nItemId~= tOneCpGamble_Item[3302975]["ChkItem"][3] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				local nNextItemId = tOneCpGamble_Item[nItemId]["NextItemId"]
				local sItemName = Get_ItemtypeName(nItemId)
				local sNextItemName = Get_ItemtypeName(nNextItemId)
				local sText = string.format(tOneCpGamble_Text["NextItem"],sItemName,sNextItemName)
				local sLog = string.format(tOneCpGamble_Cont["Log"][1],nItemId,nNextItemId)
				Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][4],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][4],0,1)
				Item_AddNewItem(nNextItemId,"0 1 0 720 1")
				Sys_SaveActionFestivalLog(sLog)
				Sys_SaveEmoneyBuy(tOneCpGamble_EmoneyLog["UpdateBox"][nItemId])
				User_TalkChannel2005(sText)
			end
		end
	end
	for i = 1,3 do
		Task_SetStatistic(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][i],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][i],0,1)
	end
	OneCpGamble_RandomItem(nItemId)
	User_EffectAdd("self","angelwing")
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

--------------------------------------------------------------------------------------------------------

--怪物掉落
function OneCpGamble_Monster(nMonsterTypeId)
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"]) then
		return
	end

--判断是否超过30分钟
	local nEventType = tOneCpGamble_Stc[3]["EventType"]
	local nDataType = tOneCpGamble_Stc[3]["DataType"]
	if Task_StcInterval(nEventType,nDataType,tOneCpGamble_Cont["Secs"],0) then
		User_UserRandBoundTrans(tOneCpGamble_Cont["MapId"],tOneCpGamble_Cont["PosX"],tOneCpGamble_Cont["PosY"],5,5,1)
		User_TalkChannel2005(tOneCpGamble_Text["OutMap"])
		return
	end

--隔天清掩码
	OneCpGamble_NextDay()

--概率
	local flat,tNum = Probabil_RandomAward(tOneCpGamble_Monster[4352]["Reward"],1)  
	local nItemId = tNum[1]["tAward"][1]["Item_1"]
	if nItemId ~= 0 then 
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tOneCpGamble_Text["NoSpace"])
			return
		end
		local sItemName = Get_ItemtypeName(nItemId)
		local sText = string.format(tOneCpGamble_Text["MonsterAward"],sItemName)
		local sLog = tNum[1]["tAward"][1]["Log"]
		local sAttr = tNum[1]["tAward"][1]["Attr"]
		local nLimit = tNum[1]["tAward"][1]["Limit"]
		local nGlobal = tNum[1]["tAward"][1]["Global"]

--判断是否超过限制
		if nGlobal ~= nil then
			local nData = Get_SysDynaGlobalData1(nGlobal)
			if nData >= nLimit then
				return
			else
				nData = nData + 1
				Sys_SetSynaGlobalData1(nGlobal,nData)
			end
		end

--判断是否超过限制
		if tNum[1]["tAward"][1]["EventType"] ~= nil then
			if Task_ChkStcValue(tNum[1]["tAward"][1]["EventType"],tNum[1]["tAward"][1]["DataType"],">=",nLimit) then
				if nItemId == 3302975 then
					if Task_ChkStcValue(tOneCpGamble_Stc[11]["EventType"],tOneCpGamble_Stc[11]["DataType"],"==",0) then
						Task_AddStatistic(tOneCpGamble_Stc[11]["EventType"],tOneCpGamble_Stc[11]["DataType"],1,1)
						Task_SetStcTimestamp(tOneCpGamble_Stc[11]["EventType"],tOneCpGamble_Stc[11]["DataType"],0)
						Sys_MsgBox(tOneCpGamble_Text["Full"])
					end
				end
				return
			else
				Task_AddStatistic(tNum[1]["tAward"][1]["EventType"],tNum[1]["tAward"][1]["DataType"],1,1)
				Task_SetStcTimestamp(tNum[1]["tAward"][1]["EventType"],tNum[1]["tAward"][1]["DataType"],0)
			end
		end
--给物品
		Item_AddNewItem(nItemId,sAttr)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
	end
end

function OneCpGamble_TimeChk()
	if not Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"]) then
		return
	end
	
	local nGlobal = tOneCpGamble_Cont["Global"]
	if Sys_ChkDayTime(tOneCpGamble_Cont["Cleantime"]) then
		local nData0 = Get_SysDynaGlobalData0(nGlobal)
		if nData0 == 1 then
			return
		else
			Sys_SetSynaGlobalData0(nGlobal,1)
			Sys_SetSynaGlobalData1(nGlobal,0)
		end
	else
		Sys_SetSynaGlobalData0(nGlobal,0)
	end
end


--------------------------------------------------------------------------------------------------------
--活动npc
tNpcFace[5430] = 248
tNpcGossip[11356] = tNpcGossip[11356] or DefaultNpc:new{}
tNpcGossip[11356]["OptionHidden"] = 1
--活动前
tNpcGossip[11356]["Text1-1"] = {191,192,193,111,112,113,114,115}
tNpcGossip[11356]["Text191"] = tOneCpGamble_Text[11356]["Text191"]
tNpcGossip[11356]["Text192"] = tOneCpGamble_Text[11356]["Text192"] 
tNpcGossip[11356]["Text193"] = tOneCpGamble_Text[11356]["Text193"]
tNpcGossip[11356]["Text111"] = tOneCpGamble_Text[11356]["Text111"]
tNpcGossip[11356]["Text112"] = tOneCpGamble_Text[11356]["Text112"] 
tNpcGossip[11356]["Text113"] = tOneCpGamble_Text[11356]["Text113"]
tNpcGossip[11356]["Text114"] = tOneCpGamble_Text[11356]["Text114"]
tNpcGossip[11356]["Text115"] = tOneCpGamble_Text[11356]["Text115"]
tNpcGossip[11356]["tOption1-1"] = {1}
tNpcGossip[11356]["Option1"] = tOneCpGamble_Text[11356]["Option1"]
tNpcGossip[11356]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tOneCpGamble_Cont["Beftime"])
end

--活动后
tNpcGossip[11356]["Text1-2"] = {121}
tNpcGossip[11356]["Text121"] = tOneCpGamble_Text[11356]["Text121"]
tNpcGossip[11356]["tOption1-2"] = {2}
tNpcGossip[11356]["Option2"] = tOneCpGamble_Text[11356]["Option2"]
tNpcGossip[11356]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tOneCpGamble_Cont["Afttime"])
end

--活动中
tNpcGossip[11356]["Text1-3"] = {191,192,193,131,132,133,113,114,115}
tNpcGossip[11356]["Text131"] = tOneCpGamble_Text[11356]["Text131"]
tNpcGossip[11356]["Text132"] = tOneCpGamble_Text[11356]["Text132"]
tNpcGossip[11356]["Text133"] = tOneCpGamble_Text[11356]["Text133"]

tNpcGossip[11356]["tOption1-3"] = {3,7,4,6}
tNpcGossip[11356]["Option3"] = tOneCpGamble_Text[11356]["Option3"]
tNpcGossip[11356]["Option4"] = tOneCpGamble_Text[11356]["Option4"]
tNpcGossip[11356]["Option7"] = tOneCpGamble_Text[11356]["Option7"]
-- tNpcGossip[11356]["Option5"] = tOneCpGamble_Text[11356]["Option5"]
tNpcGossip[11356]["Option6"] = tOneCpGamble_Text[11356]["Option6"]

tNpcGossip[11356]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tOneCpGamble_Cont["Nowtime"])
end

tNpcGossip[11356]["OptionFunc3"]="OneCpGamble_GoToMap</N>11356"
tNpcGossip[11356]["OptionPoint4"]="2-2"
tNpcGossip[11356]["OptionFunc7"]="OneCpGamble_BuyBox</N>11356"

tNpcGossip[11356]["OptionChkFunc3"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"])
end
tNpcGossip[11356]["OptionChkFunc4"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"])
end
tNpcGossip[11356]["OptionChkFunc5"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"])
end
tNpcGossip[11356]["OptionChkFunc6"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"])
end
tNpcGossip[11356]["OptionChkFunc7"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOneCpGamble_Cont["Level"],tOneCpGamble_Cont["Metempsychosis"])
end

--提示
tNpcGossip[11356]["Text2-1"] = {211}
tNpcGossip[11356]["Text211"] = tOneCpGamble_Text[11356]["Text211"]
tNpcGossip[11356]["tOption2-1"] = {11}
tNpcGossip[11356]["Option11"] = tOneCpGamble_Text[11356]["Option11"]

tNpcGossip[11356]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[11356]["Text221"] = tOneCpGamble_Text[11356]["Text221"]
tNpcGossip[11356]["Text222"] = tOneCpGamble_Text[11356]["Text222"]
tNpcGossip[11356]["Text223"] = tOneCpGamble_Text[11356]["Text223"]
tNpcGossip[11356]["Text224"] = tOneCpGamble_Text[11356]["Text224"]
tNpcGossip[11356]["Text225"] = tOneCpGamble_Text[11356]["Text225"]
tNpcGossip[11356]["Text226"] = tOneCpGamble_Text[11356]["Text226"]
tNpcGossip[11356]["Text227"] = tOneCpGamble_Text[11356]["Text227"]
tNpcGossip[11356]["Text228"] = tOneCpGamble_Text[11356]["Text228"]
tNpcGossip[11356]["Text229"] = tOneCpGamble_Text[11356]["Text229"]

tNpcGossip[11356]["tOption2-2"] = {12}
tNpcGossip[11356]["Option12"] = tOneCpGamble_Text[11356]["Option12"]
tNpcGossip[11356]["OptionPoint12"]="1-3"

--------------------------------------------------------------------------------------------------------
--物品
--尘封的秘宝
tItem[3302975] = tItem[3302975] or {}
tItem[3302975]["Function"] = function(nItemId,sItemName)
	OneCpGamble_Item3302975(nItemId,sItemName)
end

tItem[3303541] = tItem[3302975]
tItem[3303542] = tItem[3302975]
tItem[3303543] = tItem[3302975]

--魔府密钥
tItemFace[3302978] = 660
tItemFace[3302981] = 430
tItemFace[3302984] = 644
tItemFace[3303408] = 663

tItemFace[3302976] = 882
tItemFace[3302979] = 883
tItemFace[3302982] = 884

tItem[3302977] = tItem[3302977] or {}
tItem[3302977]["Function"] = function(nItemId,sItemName)
	OneCpGamble_Item3302977(nItemId,sItemName)
end

tItem[3302977]["Text1-1"] = {111}
tItem[3302977]["tOption1-1"] = {1,2}
tItem[3302977]["ChkFunc1-1"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	tItem[nItemId]["Text111"] =  tOneCpGamble_Text[nItemId]["Text111"]
	tItem[nItemId]["Option1"] = tOneCpGamble_Text[nItemId]["Option1"]
	tItem[nItemId]["Option2"] = tOneCpGamble_Text[nItemId]["Option2"]
	tItem[nItemId]["OptionFunc1"]="OneCpGamble_Key</N>"..nItemId
	return true
end

tItem[3302980] = tItem[3302977]
tItem[3302983] = tItem[3302977]
tItem[3302976] = tItem[3302977]
tItem[3302979] = tItem[3302977]
tItem[3302982] = tItem[3302977]

--魔府秘宝
tItem[3302978] = tItem[3302978] or {}
tItem[3302978]["Function"] = function(nItemId,sItemName)
	OneCpGamble_Item3302978(nItemId,sItemName)
end

tItem[3302978]["Text1-1"] = {111,112,113,120,121,114,115,116,118,117,119}
tItem[3302978]["tOption1-1"] = {1,3,5}
tItem[3302978]["ChkFunc1-1"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	OneCpGamble_RandomItem(nItemId)
	local nData1 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][1],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][1])
	local nData2 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][2],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][2])
	local nData3 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][3],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][3])
	local nData4 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][4],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][4])
	local nData5 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][5],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][5])
	local nData6 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][6],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][6])
	local nData7 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][7],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][7])

	local nNum5 = nData5 * tOneCpGamble_Item[nItemId]["Reward"][1][nData1]["ItemNum"]
	local nNum6 = nData6 * tOneCpGamble_Item[nItemId]["Reward"][1][nData2]["ItemNum"]
	local nNum7 = nData7 * tOneCpGamble_Item[nItemId]["Reward"][1][nData3]["ItemNum"]

	tItem[nItemId]["Text111"] =  tOneCpGamble_Text[nItemId]["Text111"]
	tItem[nItemId]["Text112"] =  tOneCpGamble_Text[nItemId]["Text112"]
	tItem[nItemId]["Text113"] =  tOneCpGamble_Text[nItemId]["Text113"]
	tItem[nItemId]["Text120"] =  tOneCpGamble_Text[nItemId]["Text120"]
	tItem[nItemId]["Text121"] =  tOneCpGamble_Text[nItemId]["Text121"]
	tItem[nItemId]["Text117"] =  tOneCpGamble_Text[nItemId]["Text117"]
	tItem[nItemId]["Text118"] =  tOneCpGamble_Text[nItemId]["Text118"]
	tItem[nItemId]["Text119"] =  tOneCpGamble_Text[nItemId]["Text119"]
	tItem[nItemId]["Option1"] = tOneCpGamble_Text[nItemId]["Option1"]
	tItem[nItemId]["Option2"] = tOneCpGamble_Text[nItemId]["Option2"]
	tItem[nItemId]["Option3"] = tOneCpGamble_Text[nItemId]["Option3"]
	tItem[nItemId]["Option4"] = tOneCpGamble_Text[nItemId]["Option4"]
	tItem[nItemId]["Option5"] = tOneCpGamble_Text[nItemId]["Option5"]
	tItem[nItemId]["Text114"] = string.format(tOneCpGamble_Text[nItemId]["Text114"],tOneCpGamble_Text[nItemId]["ItemName"][nData1],nNum5)
	tItem[nItemId]["Text115"] = string.format(tOneCpGamble_Text[nItemId]["Text115"],tOneCpGamble_Text[nItemId]["ItemName"][nData2],nNum6)
	tItem[nItemId]["Text116"] = string.format(tOneCpGamble_Text[nItemId]["Text116"],tOneCpGamble_Text[nItemId]["ItemName"][nData3],nNum7)
	tItem[nItemId]["Text117"] = string.format(tOneCpGamble_Text[nItemId]["Text117"],nData4)
	tItem[nItemId]["OptionFunc1"]="OneCpGamble_OpenBox</N>"..nItemId.."</N>1"
	-- tItem[nItemId]["OptionFunc2"]="OneCpGamble_OpenBox</N>"..nItemId.."</N>2"
	tItem[nItemId]["OptionFunc3"]="OneCpGamble_ResetBox</N>"..nItemId.."</N>3"
	-- tItem[nItemId]["OptionFunc4"]="OneCpGamble_ResetBox</N>"..nItemId.."</N>4"
	tItem[nItemId]["OptionPoint5"]="3-3"
	return true
end

tItem[3302978]["Text2-1"] = {211,212,213}
tItem[3302978]["tOption2-1"] = {11}
tItem[3302978]["ChkFunc2-1"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][8]
	local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][8]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	tItem[nItemId]["OptionPoint11"]= nil
	tItem[nItemId]["OptionFunc11"]= nil
	tItem[nItemId]["Text211"] =  tOneCpGamble_Text[nItemId]["Text211"]
	tItem[nItemId]["Text212"] =  tOneCpGamble_Text[nItemId]["Text212"]
	tItem[nItemId]["Text213"] =  tOneCpGamble_Text[nItemId]["Text213"]
	tItem[nItemId]["Option11"] = tOneCpGamble_Text[nItemId]["Option11"]
	tItem[nItemId]["Option12"] = tOneCpGamble_Text[nItemId]["Option12"]
	if nData == 0 then
		tItem[nItemId]["OptionPoint11"]="3-1"
	else
		tItem[nItemId]["OptionFunc11"]="OneCpGamble_OpenBox</N>"..nItemId.."</N>2"
	end
	return true
end

tItem[3302978]["Text2-2"] = {221,222,223}
tItem[3302978]["tOption2-2"] = {21}
tItem[3302978]["ChkFunc2-2"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	local nEventType = tOneCpGamble_Item[nItemId]["Stc"]["EventType"][9]
	local nDataType = tOneCpGamble_Item[nItemId]["Stc"]["DataType"][9]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	tItem[nItemId]["OptionPoint21"] = nil
	tItem[nItemId]["OptionFunc21"] = nil
	tItem[nItemId]["Text221"] =  tOneCpGamble_Text[nItemId]["Text221"]
	tItem[nItemId]["Text222"] =  tOneCpGamble_Text[nItemId]["Text222"]
	tItem[nItemId]["Text223"] =  tOneCpGamble_Text[nItemId]["Text223"]
	tItem[nItemId]["Option21"] = tOneCpGamble_Text[nItemId]["Option21"]
	tItem[nItemId]["Option22"] = tOneCpGamble_Text[nItemId]["Option22"]
	if nData == 0 then
		tItem[nItemId]["OptionPoint21"]="3-2"
	else
		tItem[nItemId]["OptionFunc21"]="OneCpGamble_ResetBoxNoAsk</N>"..nItemId.."</N>4"
	end
	return true
end

tItem[3302978]["Text3-1"] = {311}
tItem[3302978]["tOption3-1"] = {13,14,15}
tItem[3302978]["ChkFunc3-1"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	local nData1 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][1],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][1])
	local nData2 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][2],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][2])
	local nData3 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][3],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][3])
	local nData5 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][5],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][5])
	local nData6 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][6],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][6])
	local nData7 = Get_UserStatisticValue(tOneCpGamble_Item[nItemId]["Stc"]["EventType"][7],tOneCpGamble_Item[nItemId]["Stc"]["DataType"][7])
	local nNum5 = nData5 * tOneCpGamble_Item[nItemId]["Reward"][1][nData1]["ItemNum"]
	local nNum6 = nData6 * tOneCpGamble_Item[nItemId]["Reward"][1][nData2]["ItemNum"]
	local nNum7 = nData7 * tOneCpGamble_Item[nItemId]["Reward"][1][nData3]["ItemNum"]
	local sName1 = tOneCpGamble_Text[nItemId]["ItemName1"][nData1]
	local sName2 = tOneCpGamble_Text[nItemId]["ItemName1"][nData2]
	local sName3 = tOneCpGamble_Text[nItemId]["ItemName1"][nData3]
	tItem[nItemId]["Text311"] = string.format(tOneCpGamble_Text[nItemId]["Text311"],nNum5,sName1,nNum6,sName2,nNum7,sName3)
	tItem[nItemId]["Option13"] = tOneCpGamble_Text[nItemId]["Option13"]
	tItem[nItemId]["Option14"] = tOneCpGamble_Text[nItemId]["Option14"]
	tItem[nItemId]["Option15"] = tOneCpGamble_Text[nItemId]["Option15"]
	tItem[nItemId]["OptionFunc13"]="OneCpGamble_OpenBox</N>"..nItemId.."</N>2"
	tItem[nItemId]["OptionFunc14"]="OneCpGamble_OpenBoxNoAsk</N>"..nItemId.."</N>2"
	return true
end

tItem[3302978]["Text3-2"] = {321}
tItem[3302978]["tOption3-2"] = {23,24,25}
tItem[3302978]["ChkFunc3-2"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	tItem[nItemId]["Text321"] =  tOneCpGamble_Text[nItemId]["Text321"]
	tItem[nItemId]["Option23"] = tOneCpGamble_Text[nItemId]["Option23"]
	tItem[nItemId]["Option24"] = tOneCpGamble_Text[nItemId]["Option24"]
	tItem[nItemId]["Option25"] = tOneCpGamble_Text[nItemId]["Option25"]
	tItem[nItemId]["OptionFunc23"]="OneCpGamble_ResetBox</N>"..nItemId.."</N>4"
	tItem[nItemId]["OptionFunc24"]="OneCpGamble_ResetBoxNoAsk</N>"..nItemId.."</N>4"
	return true
end

tItem[3302978]["Text3-3"] = {331,332,333,334,335,336,337,338,339,340,341,342,343,344}
tItem[3302978]["tOption3-3"] = {31}
tItem[3302978]["ChkFunc3-3"] = function ()
	local nItemId = nItemId or Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	tItem[nItemId]["Text331"] =  tOneCpGamble_Text[nItemId]["Text331"]
	tItem[nItemId]["Text332"] =  tOneCpGamble_Text[nItemId]["Text332"]
	tItem[nItemId]["Text333"] =  tOneCpGamble_Text[nItemId]["Text333"]
	tItem[nItemId]["Text334"] =  tOneCpGamble_Text[nItemId]["Text334"]
	tItem[nItemId]["Text335"] =  tOneCpGamble_Text[nItemId]["Text335"]
	tItem[nItemId]["Text336"] =  tOneCpGamble_Text[nItemId]["Text336"]
	tItem[nItemId]["Text337"] =  tOneCpGamble_Text[nItemId]["Text337"]
	tItem[nItemId]["Text338"] =  tOneCpGamble_Text[nItemId]["Text338"]
	tItem[nItemId]["Text339"] =  tOneCpGamble_Text[nItemId]["Text339"]
	tItem[nItemId]["Text340"] =  tOneCpGamble_Text[nItemId]["Text340"]
	tItem[nItemId]["Text341"] =  tOneCpGamble_Text[nItemId]["Text341"]
	tItem[nItemId]["Text342"] =  tOneCpGamble_Text[nItemId]["Text342"]
	tItem[nItemId]["Text343"] =  tOneCpGamble_Text[nItemId]["Text343"]
	tItem[nItemId]["Text344"] =  tOneCpGamble_Text[nItemId]["Text344"]
	tItem[nItemId]["Option31"] = tOneCpGamble_Text[nItemId]["Option31"]
	tItem[nItemId]["OptionPoint31"]="1-1"
	return true
end

tItem[3302981] = tItem[3302978]
tItem[3302984] = tItem[3302978]

--------------------------------------------------------------------------------------------------------
--怪物
-- tMonster[4352] = tMonster[4352] or {}
-- tMonster[4352]["tFunction"] = tMonster[4352]["tFunction"] or {}
-- table.insert(tMonster[4352]["tFunction"],OneCpGamble_Monster)


-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],OneCpGamble_TimeChk)

-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],OneCpGamble_TimeChk)

-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],OneCpGamble_TimeChk)

-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],OneCpGamble_TimeChk)

-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],OneCpGamble_TimeChk)

-- tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
-- table.insert(tOntimerMin_HM[0005],OneCpGamble_TimeChk)

-- tOneCpGamble_OnTime = {}
-- tOneCpGamble_OnTime[1] = {}
-- tOneCpGamble_OnTime[1]["Type"] = 2
-- tOneCpGamble_OnTime[1]["TimeType"] = 4
-- tOneCpGamble_OnTime[1]["Time"] = "00:00 00:05"
-- tOneCpGamble_OnTime[1]["Func"] = OneCpGamble_TimeChk

-- table.insert(tSystemTime_InitialData,tOneCpGamble_OnTime[1])













