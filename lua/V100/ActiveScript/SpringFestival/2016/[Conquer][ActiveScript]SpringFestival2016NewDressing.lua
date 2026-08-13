------------------------------------------------------------------------------------
--Name:			151110[简体征服][活动脚本]2016春节活动之换新衣
--Purpose:		2016春节活动之换新衣
--Creator:		黄昕哲
--Created:		2015/11/10
------------------------------------------------------------------------------------
--[[
活动时间：2016年2月8日-2016年2月17日
命名前缀10765SpringFestival2016_NewDressing_

--掩码说明:
--stc(131,96)
--今日是否领取过礼包

--npc位置
--新年新衣新气象。
--(94430386,00000000,00000000,131,0,'300 360 17427 1002'),

logid 12000255
]]--

-------------------------------数据存储表------------------------
local tSpringFestival2016_NewDressing_Data = {}
	--活动时间：2016年2月4日-2016年2月22日
	tSpringFestival2016_NewDressing_Data["BeforeTime"] = "2016-01-01 00:00 2017-01-22 23:59"
	tSpringFestival2016_NewDressing_Data["DuringTime"] = "2017-01-23 00:00 2017-01-27 23:59"
	tSpringFestival2016_NewDressing_Data["ExTime"] = "2017-01-27 00:00 2017-01-27 23:59"


	tSpringFestival2016_NewDressing_Data["MinLev"] = 80
	tSpringFestival2016_NewDressing_Data["MinMet"] = 0

--光效
local tSpringFestival2016_NewDressing_Effect = {}
	tSpringFestival2016_NewDressing_Effect["self"] = "self"
	tSpringFestival2016_NewDressing_Effect["TaskFin"] = "angelwing"
	tSpringFestival2016_NewDressing_Effect["GetSuit"] = "zf2-e280"



local tSpringFestival2016_NewDressing_Item = {}
tSpringFestival2016_NewDressing_Item["Pack"] = 3007864
--给礼包的时限统一为1天
tSpringFestival2016_NewDressing_Item["PackAttr"] = "0 0 0 1440 1"
--时装外套
tSpringFestival2016_NewDressing_Item["Human"] = {}
tSpringFestival2016_NewDressing_Item["Human"]["Pack"] = 3007865

--坐骑外套
tSpringFestival2016_NewDressing_Item["Mount"] = {}
tSpringFestival2016_NewDressing_Item["Mount"]["Pack"] = 3007866

--武器外套
tSpringFestival2016_NewDressing_Item["Weapon"] = {}
tSpringFestival2016_NewDressing_Item["Weapon"]["Pack"] = 3007867

--掩码
local tSpringFestival2016_NewDressing_Stc = {}
	tSpringFestival2016_NewDressing_Stc["Event"] = 131
	tSpringFestival2016_NewDressing_Stc["Data"] = 96
	
	tSpringFestival2016_NewDressing_Stc["GetPack"] = 1

--log
local tSpringFestival2016_NewDressing_Log = {}
	tSpringFestival2016_NewDressing_Log["LogId"] = 12000255
	tSpringFestival2016_NewDressing_Log["FestivalId"] = 3364

	tSpringFestival2016_NewDressing_Log["GetPack"] = "0,0,0,0,12000255,1[1],3007864,1"
	tSpringFestival2016_NewDressing_Log["OpenPack"] = "0,0,3007864,1,12000255,1[2],3007865[3007866][3007867],1[1][1]"
	tSpringFestival2016_NewDressing_Log["GetHumanSuit"] = "0,0,3007865,1,12000255,2,%s,1"
	tSpringFestival2016_NewDressing_Log["GetMountSuit"] = "0,0,3007866,1,12000255,2,%s,1"
	tSpringFestival2016_NewDressing_Log["GetWeaponSuit"] = "0,0,3007867,1,12000255,2,%s,1"

-----------------------------概率相关----------------------------
--外套相关
local tSpringFestival2016_NewDressing_Rate = {}
--时装外套
	tSpringFestival2016_NewDressing_Rate["Human"] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1]["ItemChanceSum"] = 30000

	tSpringFestival2016_NewDressing_Rate["Human"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][1]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][1]["Item_1"] = 183305
	
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][2]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][2]["Item_1"] = 183315
	
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][3]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][3]["Item_1"] = 183325
	
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][4]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][4]["Item_1"] = 183335
	
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][5] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][5]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][5]["Item_1"] = 183345
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][6] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][6]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][6]["Item_1"] = 183375
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][7] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][7]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][7]["Item_1"] = 183385
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][8] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][8]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][8]["Item_1"] = 183395
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][9] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][9]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][9]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][9]["Item_1"] = 183475
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][10] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][10]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][10]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][10]["Item_1"] = 183485
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][11] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][11]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][11]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][11]["Item_1"] = 184305
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][12] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][12]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][12]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][12]["Item_1"] = 184335
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][13] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][13]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][13]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][13]["Item_1"] = 184345
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][14] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][14]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][14]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][14]["Item_1"] = 184355
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][15] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][15]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][15]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][15]["Item_1"] = 184365
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][16] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][16]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][16]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][16]["Item_1"] = 187475
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][17] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][17]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][17]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][17]["Item_1"] = 188495

	tSpringFestival2016_NewDressing_Rate["Human"][1][1][18] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][18]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][18]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][18]["Item_1"] = 188575
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][19] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][19]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][19]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][19]["Item_1"] = 188675
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][20] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][20]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][20]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][20]["Item_1"] = 192200
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][21] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][21]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][21]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][21]["Item_1"] = 192300
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][22] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][22]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][22]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][22]["Item_1"] = 192310
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][23] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][23]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][23]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][23]["Item_1"] = 192325
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][24] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][24]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][24]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][24]["Item_1"] = 193300
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][25] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][25]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][25]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][25]["Item_1"] = 192345
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][26] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][26]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][26]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][26]["Item_1"] = 192435
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][27] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][27]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][27]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][27]["Item_1"] = 192495
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][28] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][28]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][28]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][28]["Item_1"] = 192575

	tSpringFestival2016_NewDressing_Rate["Human"][1][1][29] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][29]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][29]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][29]["Item_1"] = 192605
		
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][30] = {}
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][30]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][30]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Human"][1][1][30]["Item_1"] = 192615

--坐骑外套
	tSpringFestival2016_NewDressing_Rate["Mount"] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1]["ItemChanceSum"] = 30000
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][1]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][1]["Item_1"] = 200120

	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][2]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][2]["Item_1"] = 200121
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][3]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][3]["Item_1"] = 200122
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][4]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][4]["Item_1"] = 200123
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][5] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][5]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][5]["Item_1"] = 200124
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][6] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][6]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][6]["Item_1"] = 200125
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][7] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][7]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][7]["Item_1"] = 200126
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][8] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][8]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][8]["Item_1"] = 200004
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][9] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][9]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][9]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][9]["Item_1"] = 200006
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][10] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][10]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][10]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][10]["Item_1"] = 200200
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][11] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][11]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][11]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][11]["Item_1"] = 200201
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][12] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][12]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][12]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][12]["Item_1"] = 200202
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][13] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][13]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][13]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][13]["Item_1"] = 200203
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][14] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][14]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][14]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][14]["Item_1"] = 200204
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][15] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][15]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][15]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][15]["Item_1"] = 200205
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][16] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][16]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][16]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][16]["Item_1"] = 200403
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][17] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][17]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][17]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][17]["Item_1"] = 200407
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][18] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][18]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][18]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][18]["Item_1"] = 200411

	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][19] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][19]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][19]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][19]["Item_1"] = 200413
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][20] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][20]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][20]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][20]["Item_1"] = 200414

	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][21] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][21]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][21]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][21]["Item_1"] = 200418
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][22] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][22]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][22]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][22]["Item_1"] = 200419
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][23] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][23]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][23]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][23]["Item_1"] = 200420
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][24] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][24]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][24]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][24]["Item_1"] = 200425
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][25] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][25]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][25]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][25]["Item_1"] = 200427
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][26] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][26]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][26]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][26]["Item_1"] = 200438
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][27] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][27]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][27]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][27]["Item_1"] = 200439
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][28] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][28]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][28]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][28]["Item_1"] = 200476

	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][29] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][29]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][29]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][29]["Item_1"] = 200492
	
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][30] = {}
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][30]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][30]["ItemChance"] = 1000
	tSpringFestival2016_NewDressing_Rate["Mount"][1][1][30]["Item_1"] = 200499
	
--长武器外套
	tSpringFestival2016_NewDressing_Rate["Long"] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1]["ItemChanceSum"] = 10000
	
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][1]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][1]["Item_1"] = 350001
	
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][2]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][2]["Item_1"] = 350002
	
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][3]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][3]["Item_1"] = 350003
	
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][4]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][4]["Item_1"] = 350004
	
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][5] = {}
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][5]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Long"][1][1][5]["Item_1"] = 350005

--短武器外套
	tSpringFestival2016_NewDressing_Rate["Short"] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1]["ItemChanceSum"] = 10000
	
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][1]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][1]["Item_1"] = 360001
	
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][2]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][2]["Item_1"] = 360002
	
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][3]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][3]["Item_1"] = 360003
	
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][4]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][4]["Item_1"] = 360004
	
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][5] = {}
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][5]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Short"][1][1][5]["Item_1"] = 360005

--弓外套
	tSpringFestival2016_NewDressing_Rate["Bow"] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1]["ItemChanceSum"] = 10000
	
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][1]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][1]["Item_1"] = 370001
	
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][2]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][2]["Item_1"] = 370002
	
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][3]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][3]["Item_1"] = 370003
	
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][4]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][4]["Item_1"] = 370004
	
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][5] = {}
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][5]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Bow"][1][1][5]["Item_1"] = 370005

--盾牌外套
	tSpringFestival2016_NewDressing_Rate["Shield"] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1]["ItemChanceSum"] = 10000
	
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][1]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][1]["Item_1"] = 380001
	
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][2]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][2]["Item_1"] = 380002
	
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][3]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][3]["Item_1"] = 380003
	
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][4]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][4]["Item_1"] = 380004
	
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][5] = {}
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][5]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Shield"][1][1][5]["Item_1"] = 380005
	
--正常外套时效概率(2,8,24小时)
	tSpringFestival2016_NewDressing_Rate["Normal"] = {}
	tSpringFestival2016_NewDressing_Rate["Normal"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1]["ItemChanceSum"] = 10000
	--2小时
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][1]["ItemChance"] = 7500
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][1]["Item_1"] = 2
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][1]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Get2"]
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][1]["Attr"] = "0 0 1 120 1 0 0 1"
	--8小时
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][2]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][2]["Item_1"] = 8
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][2]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Get8"]
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][2]["Attr"] = "0 0 1 480 1 0 0 1"
	--24小时
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][3]["ItemChance"] = 500
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][3]["Item_1"] = 24
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][3]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Get24"]
	tSpringFestival2016_NewDressing_Rate["Normal"][1][1][3]["Attr"] = "0 0 1 1440 1 0 0 1"
	--额外外套时效概率(2,8,24小时+7天1%神佑)
	tSpringFestival2016_NewDressing_Rate["Extra"] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1]["ItemChanceSum"] = 10000
	--2小时
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][1] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][1]["ItemChance"] = 7400
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][1]["Item_1"] = 2
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][1]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Get2"]
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][1]["Attr"] = "0 0 1 120 1 0 0 1"
	--8小时
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][2] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][2]["ItemChance"] = 2000
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][2]["Item_1"] = 8
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][2]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Get8"]
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][2]["Attr"] = "0 0 1 480 1 0 0 1"
	--24小时
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][3] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][3]["ItemChance"] = 500
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][3]["Item_1"] = 24
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][3]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Get24"]
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][3]["Attr"] = "0 0 1 1440 1 0 0 1"
	--7天1%神佑
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][4] = {}
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][4]["ItemChance"] = 100
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][4]["Item_1"] = 168
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][4]["Msg"] = tSpringFestival2016_NewDressing_Text["Pack"]["Extra"]
	tSpringFestival2016_NewDressing_Rate["Extra"][1][1][4]["Attr"] = "0 0 1 10080 1 0 0 1"
-----------------------------任务逻辑----------------------------
--玩家领取礼包
function SpringFestival2016_NewDressing_ApplyPack(nNpcId)
	--活动后
	if not Sys_ChkFullTime(tSpringFestival2016_NewDressing_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nEvent = tSpringFestival2016_NewDressing_Stc["Event"]
	local nData = tSpringFestival2016_NewDressing_Stc["Data"]
	local nPhaseGet = tSpringFestival2016_NewDressing_Stc["GetPack"]
	local sSelf = tSpringFestival2016_NewDressing_Effect["self"]
	local sEffect = tSpringFestival2016_NewDressing_Effect["TaskFin"]
	local sLog = tSpringFestival2016_NewDressing_Log["GetPack"]
	local nLev = tSpringFestival2016_NewDressing_Data["MinLev"]
	local nMeto = tSpringFestival2016_NewDressing_Data["MinMet"]
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(nLev,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--背包检测
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--已领过
	if Task_ChkStcValue(nEvent,nData,">=",nPhaseGet) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--成功领取,掩码,光效,对白,log
	Task_SetStatistic(nEvent,nData,nPhaseGet,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	Item_AddNewItem(tSpringFestival2016_NewDressing_Item["Pack"],tSpringFestival2016_NewDressing_Item["PackAttr"])
	User_EffectAdd(sSelf,sEffect)
	LinkNpcGossipFunc_New(nNpcId,"2-3")
	Sys_SaveActionFestivalLog(sLog)
end

--隔天重置掩码
function SpringFestival2016_NewDressing_ResetStc()
	--已经完成过,且隔天
	local nEvent = tSpringFestival2016_NewDressing_Stc["Event"]
	local nData = tSpringFestival2016_NewDressing_Stc["Data"]
	local nPhaseGet = tSpringFestival2016_NewDressing_Stc["GetPack"]
	if Task_ChkStcValue(nEvent,nData,">=",nPhaseGet) and Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
end

-----------------------------物品逻辑----------------------------
--豪华新春礼包
function SpringFestival2016_NewDressing_UsePack(nItemId)
	if not User_CheckLeftSpace(2) then
		Sys_MsgBox(tSpringFestival2016_NewDressing_Text["Pack"]["Fail"])
		return
	end
	--成功打开,删除礼包,给小礼包,提示,log
	if Item_ChkItem(nItemId,1) and Item_DelMulItem(nItemId,nItemId,1,0,0,0,1) then
		local sAttr = tSpringFestival2016_NewDressing_Item["PackAttr"]
		Item_AddNewItem(tSpringFestival2016_NewDressing_Item["Human"]["Pack"],sAttr)
		Item_AddNewItem(tSpringFestival2016_NewDressing_Item["Mount"]["Pack"],sAttr)
		Item_AddNewItem(tSpringFestival2016_NewDressing_Item["Weapon"]["Pack"],sAttr)
		Sys_MsgBox(tSpringFestival2016_NewDressing_Text["Pack"]["Success"])
		Sys_SaveActionFestivalLog(tSpringFestival2016_NewDressing_Log["OpenPack"])
	end
end

--获取外套的属性(时限和神佑)
function SpringFestival2016_NewDressing_GetAttr()
	--属性和提示
	local sAttr = ""
	local sMsg = ""
--调用概率模版获得属性
	if Sys_ChkFullTime(tSpringFestival2016_NewDressing_Data["ExTime"]) then
		local flat1,tItem1 = Probabil_RandomAward(tSpringFestival2016_NewDressing_Rate["Extra"][1],1)
		sAttr = tItem1[1]["tAward"][1]["Attr"]
		sMsg = tItem1[1]["tAward"][1]["Msg"]
	else
		local flat2,tItem2 = Probabil_RandomAward(tSpringFestival2016_NewDressing_Rate["Normal"][1],1)
		sAttr = tItem2[1]["tAward"][1]["Attr"]
		sMsg =tItem2[1]["tAward"][1]["Msg"]
	end
	return sAttr,sMsg
end

--精美时装外套包
function SpringFestival2016_NewDressing_GetHuman(nItemId)
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		return
	end
	--给的外套id,名字,属性(天数+神佑),提示,log
	local nSuitId = 0
	local sName = ""
	local sAttr = ""
	local sMsg = ""
	local sLog = ""
	--调用概率模版获得外套id
	local flat1,tItem1 = Probabil_RandomAward(tSpringFestival2016_NewDressing_Rate["Human"][1],1)
	nSuitId = tItem1[1]["tAward"][1]["Item_1"]
	sName = tSpringFestival2016_NewDressing_Text["Human"][nSuitId]
	sLog = string.format(tSpringFestival2016_NewDressing_Log["GetHumanSuit"],nSuitId)
	sAttr,sMsg = SpringFestival2016_NewDressing_GetAttr()
	sMsg = string.format(sMsg,sName)
	Item_AddNewItem(nSuitId,sAttr)
	Sys_MsgBox(sMsg)
	Sys_SaveActionFestivalLog(sLog)
end

--时尚坐骑外套包
function SpringFestival2016_NewDressing_GetMount(nItemId)
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		return
	end
	
	--给的外套id,名字,属性(天数+神佑),提示,log
	local nSuitId = 0
	local sName = ""
	local sAttr = ""
	local sMsg = ""
	local sLog = ""
	--调用概率模版获得外套id
	local flat1,tItem1 = Probabil_RandomAward(tSpringFestival2016_NewDressing_Rate["Mount"][1],1)
	nSuitId = tItem1[1]["tAward"][1]["Item_1"]
	sName = tSpringFestival2016_NewDressing_Text["Mount"][nSuitId]
	sLog = string.format(tSpringFestival2016_NewDressing_Log["GetMountSuit"],nSuitId)
	sAttr,sMsg = SpringFestival2016_NewDressing_GetAttr()
	sMsg = string.format(sMsg,sName)
	Item_AddNewItem(nSuitId,sAttr)
	Sys_MsgBox(sMsg)
	Sys_SaveActionFestivalLog(sLog)
end

--神兵幻化外套包
function SpringFestival2016_NewDressing_GetWeapon(nItemId,sMethod)
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSpringFestival2016_NewDressing_Text["Pack"]["FullBag"])
		return
	end
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		return
	end
	--给的外套id,名字,属性(天数+神佑),提示,log
	local nSuitId = 0
	local sName = ""
	local sAttr = ""
	local sMsg = ""
	local sLog = ""
	--调用概率模版获得外套id
	local flat1,tItem1 = Probabil_RandomAward(tSpringFestival2016_NewDressing_Rate[sMethod][1],1)
	nSuitId = tItem1[1]["tAward"][1]["Item_1"]
	sName = tSpringFestival2016_NewDressing_Text[sMethod][nSuitId]
	sLog = string.format(tSpringFestival2016_NewDressing_Log["GetWeaponSuit"],nSuitId)
	sAttr,sMsg = SpringFestival2016_NewDressing_GetAttr()
	sMsg = string.format(sMsg,sName)
	Item_AddNewItem(nSuitId,sAttr)
	Sys_MsgBox(sMsg)
	Sys_SaveActionFestivalLog(sLog)
end

-----------------------------Npc模版----------------------------
--17427 时尚达人白富美 lookface 3414  face 123
tNpcFace[3414] = 123
tNpcGossip[17427] = tNpcGossip[17427] or DefaultNpc:new{}
tNpcGossip[17427]["OptionHidden"] = 1

--活动前
tNpcGossip[17427]["Text1-1"] = {111,112,113,114}
tNpcGossip[17427]["Text111"] = tSpringFestival2016_NewDressing_Text[17427]["Text121"]
tNpcGossip[17427]["Text112"] = tSpringFestival2016_NewDressing_Text[17427]["Text122"]
tNpcGossip[17427]["Text113"] = tSpringFestival2016_NewDressing_Text[17427]["Text123"]
tNpcGossip[17427]["Text114"] = tSpringFestival2016_NewDressing_Text[17427]["Text124"]
tNpcGossip[17427]["tOption1-1"] = {111}
tNpcGossip[17427]["Option111"] = tSpringFestival2016_NewDressing_Text[17427]["Option121"]
tNpcGossip[17427]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_NewDressing_Data["BeforeTime"])
end

--等级不足
tNpcGossip[17427]["Text1-2"] = {121}
tNpcGossip[17427]["Text121"] = tSpringFestival2016_NewDressing_Text[17427]["Text111"]
tNpcGossip[17427]["tOption1-2"] = {121}
tNpcGossip[17427]["Option121"] = tSpringFestival2016_NewDressing_Text[17427]["Option111"]
tNpcGossip[17427]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_NewDressing_Data["DuringTime"]) and (not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_NewDressing_Data["MinLev"],tSpringFestival2016_NewDressing_Data["MinMet"]))
end

--活动中
tNpcGossip[17427]["Text1-3"] = {131,132,133,134}
tNpcGossip[17427]["Text131"] = tSpringFestival2016_NewDressing_Text[17427]["Text131"]
tNpcGossip[17427]["Text132"] = tSpringFestival2016_NewDressing_Text[17427]["Text132"]
tNpcGossip[17427]["Text133"] = tSpringFestival2016_NewDressing_Text[17427]["Text133"]
tNpcGossip[17427]["Text134"] = tSpringFestival2016_NewDressing_Text[17427]["Text134"]
tNpcGossip[17427]["tOption1-3"] = {131,132,133}
tNpcGossip[17427]["Option131"] = tSpringFestival2016_NewDressing_Text[17427]["Option131"]
tNpcGossip[17427]["OptionFunc131"] = "</F>SpringFestival2016_NewDressing_ApplyPack</N>17427"
tNpcGossip[17427]["Option132"] = tSpringFestival2016_NewDressing_Text[17427]["Option132"]
tNpcGossip[17427]["OptionPoint132"] = "3-1"
tNpcGossip[17427]["Option133"] = tSpringFestival2016_NewDressing_Text[17427]["Option133"]
tNpcGossip[17427]["ChkFunc1-3"] = function()
	SpringFestival2016_NewDressing_ResetStc()
	return Sys_ChkFullTime(tSpringFestival2016_NewDressing_Data["DuringTime"])
end
--活动后
tNpcGossip[17427]["Text1-4"] = {141}
tNpcGossip[17427]["Text141"] = tSpringFestival2016_NewDressing_Text[17427]["Text141"]
tNpcGossip[17427]["tOption1-4"] = {141}
tNpcGossip[17427]["Option141"] = tSpringFestival2016_NewDressing_Text[17427]["Option141"]

--领取礼包
--背包满
tNpcGossip[17427]["Text2-1"] = {211}
tNpcGossip[17427]["Text211"] = tSpringFestival2016_NewDressing_Text[17427]["Text211"]
tNpcGossip[17427]["tOption2-1"] = {211}
tNpcGossip[17427]["Option211"] = tSpringFestival2016_NewDressing_Text[17427]["Option211"]
--已领过
tNpcGossip[17427]["Text2-2"] = {221}
tNpcGossip[17427]["Text221"] = tSpringFestival2016_NewDressing_Text[17427]["Text221"]
tNpcGossip[17427]["tOption2-2"] = {221}
tNpcGossip[17427]["Option221"] = tSpringFestival2016_NewDressing_Text[17427]["Option221"]
--成功
tNpcGossip[17427]["Text2-3"] = {231}
tNpcGossip[17427]["Text231"] = tSpringFestival2016_NewDressing_Text[17427]["Text231"]
tNpcGossip[17427]["tOption2-3"] = {231}
tNpcGossip[17427]["Option231"] = tSpringFestival2016_NewDressing_Text[17427]["Option231"]

--了解活动详情
tNpcGossip[17427]["Text3-1"] = {311}
tNpcGossip[17427]["Text311"] = tSpringFestival2016_NewDressing_Text[17427]["Text311"]
tNpcGossip[17427]["tOption3-1"] = {311,312}
tNpcGossip[17427]["Option311"] = tSpringFestival2016_NewDressing_Text[17427]["Option311"]
tNpcGossip[17427]["OptionPoint311"] = "1-3"
tNpcGossip[17427]["Option312"] = tSpringFestival2016_NewDressing_Text[17427]["Option312"]

-----------------------------item模版----------------------------
--豪华新春礼包
tItem[3007864] = tItem[3007864] or {}
tItem[3007864]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_NewDressing_UsePack(nItemId)
end

--精美时装外套包
tItem[3007865] = tItem[3007865] or {}
tItem[3007865]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_NewDressing_GetHuman(nItemId)
end

--时尚坐骑外套包
tItem[3007866] = tItem[3007866] or {}
tItem[3007866]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_NewDressing_GetMount(nItemId)
end

--神兵幻化外套包
tItem[3007867] = tItem[3007867] or {}
tItem[3007867]["Text1-1"] = {111}
tItem[3007867]["Text111"] = tSpringFestival2016_NewDressing_Text["WeaponPack"]["Text111"]
tItem[3007867]["tOption1-1"] = {1,2,3,4}
tItem[3007867]["Option1"] = tSpringFestival2016_NewDressing_Text["WeaponPack"]["Option2"]
tItem[3007867]["OptionFunc1"] = "</F>SpringFestival2016_NewDressing_GetWeapon</N>3007867</S>Short"
tItem[3007867]["Option2"] = tSpringFestival2016_NewDressing_Text["WeaponPack"]["Option1"]
tItem[3007867]["OptionFunc2"] = "</F>SpringFestival2016_NewDressing_GetWeapon</N>3007867</S>Long"
tItem[3007867]["Option3"] = tSpringFestival2016_NewDressing_Text["WeaponPack"]["Option3"]
tItem[3007867]["OptionFunc3"] = "</F>SpringFestival2016_NewDressing_GetWeapon</N>3007867</S>Bow"
tItem[3007867]["Option4"] = tSpringFestival2016_NewDressing_Text["WeaponPack"]["Option4"]
tItem[3007867]["OptionFunc4"] = "</F>SpringFestival2016_NewDressing_GetWeapon</N>3007867</S>Shield"


