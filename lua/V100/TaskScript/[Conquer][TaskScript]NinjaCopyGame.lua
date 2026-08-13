----------------------------------------------------------------------------
--Name:		200113[简体征服][任务脚本]忍者觉醒版本-忍者觉醒剧情任务
--Creator: 	郑飞
--Created:	2020/01/14
----------------------------------------------------------------------------

-- 命名前缀
-- NinjaCopyGame_

-- 任务需求：
-- 【总贴】191118【简体征服】忍者觉醒版本-忍者职业剧情任务
-- 制作忍者觉醒剧情任务
-- ==美术资源大概12月底才到，没有对应光效的先用其他代替
     -- 最好能在1月前给一个测试版，能够跑即可
-- 任务来自：http://forum.nderp.99.com/Forum/TopicList-353427.aspx


--lua.ini:20105
-- 20105 = V100\任务脚本\[征服][任务脚本]忍者觉醒剧情任务副本玩法.lua
-- 20105 = V100\TaskScript\[Conquer][TaskScript]NinjaCopyGame.lua

-- 常量表
local tNinjaCopyGame_Constant = {}
	--定时器时间
	tNinjaCopyGame_Constant["Timer"] = {}
	tNinjaCopyGame_Constant["Timer"][1] = 600
	tNinjaCopyGame_Constant["Timer"][2] = 60
	tNinjaCopyGame_Constant["Timer"][3] = 180
	tNinjaCopyGame_Constant["Timer"]["Del"] = 1
	
	--读条采集
	tNinjaCopyGame_Constant["Secs"] = 5
	-- tNinjaCopyGame_Constant["ActionId"] = 100
	tNinjaCopyGame_Constant["ActionId"] = 220
	
	--随机概率
	tNinjaCopyGame_Constant["StartNum"] = 20
	tNinjaCopyGame_Constant["EndNum"] = 100
	
	-- 伤门陷阱数量
	tNinjaCopyGame_Constant["TrapIndex"] = {1,2,3,4,5,6,7,8,9,10,11}
	
--副本配置
local tNinjaCopyGame_Instance = {}
	tNinjaCopyGame_Instance[1]= 461
	tNinjaCopyGame_Instance[2] = 462
	tNinjaCopyGame_Instance[3] = 463
	tNinjaCopyGame_Instance[4] = 464
	
-- 记录玩家伤门陷阱坐标
local tNinjaCopyGame_InstanceTrap = {}

-- 坐标
local tNinjaCopyGame_Pos = {}
	--返回NPC处
	tNinjaCopyGame_Pos["Return"] = {}
	tNinjaCopyGame_Pos["Return"]["Mapid"] = 10764
	tNinjaCopyGame_Pos["Return"]["PosX"] = 260
	tNinjaCopyGame_Pos["Return"]["PosY"] = 128
	--杜门传送坐标
	tNinjaCopyGame_Pos["Trans"] = {}
	tNinjaCopyGame_Pos["Trans"]["Mapid"] = 10767
	tNinjaCopyGame_Pos["Trans"]["PosX"] = 857
	tNinjaCopyGame_Pos["Trans"]["PosY"] = 837
	--杜门终点坐标
	tNinjaCopyGame_Pos["Ending"] = {}
	tNinjaCopyGame_Pos["Ending"]["Mapid"] = 10764
	tNinjaCopyGame_Pos["Ending"]["PosX"] = 260
	tNinjaCopyGame_Pos["Ending"]["PosY"] = 128
	--障碍物坐标
	tNinjaCopyGame_Pos["Obstacle"] = {}
	tNinjaCopyGame_Pos["Obstacle"][1] = {}
	tNinjaCopyGame_Pos["Obstacle"][1]["Type"] = 25
	tNinjaCopyGame_Pos["Obstacle"][1]["Lookface"] = 594
	tNinjaCopyGame_Pos["Obstacle"][1]["Limit"] = 1
	tNinjaCopyGame_Pos["Obstacle"][1]["PosX"] = 100
	tNinjaCopyGame_Pos["Obstacle"][1]["PosY"] = 36
	tNinjaCopyGame_Pos["Obstacle"][2] = {}
	tNinjaCopyGame_Pos["Obstacle"][2]["Type"] = 25
	tNinjaCopyGame_Pos["Obstacle"][2]["Lookface"] = 595
	tNinjaCopyGame_Pos["Obstacle"][2]["Limit"] = 2
	tNinjaCopyGame_Pos["Obstacle"][2]["PosX"] = 232
	tNinjaCopyGame_Pos["Obstacle"][2]["PosY"] = 295
	
	--随机传送坐标
	tNinjaCopyGame_Pos["Random"] = {}
	tNinjaCopyGame_Pos["Random"][1] = {}
	tNinjaCopyGame_Pos["Random"][1]["PosX"] = 508
	tNinjaCopyGame_Pos["Random"][1]["PosY"] = 814
	tNinjaCopyGame_Pos["Random"][2] = {}
	tNinjaCopyGame_Pos["Random"][2]["PosX"] = 999
	tNinjaCopyGame_Pos["Random"][2]["PosY"] = 707
	tNinjaCopyGame_Pos["Random"][3] = {}
	tNinjaCopyGame_Pos["Random"][3]["PosX"] = 626
	tNinjaCopyGame_Pos["Random"][3]["PosY"] = 296
	tNinjaCopyGame_Pos["Random"][4] = {}
	tNinjaCopyGame_Pos["Random"][4]["PosX"] = 312
	tNinjaCopyGame_Pos["Random"][4]["PosY"] = 145
	tNinjaCopyGame_Pos["Random"][5] = {}
	tNinjaCopyGame_Pos["Random"][5]["PosX"] = 159
	tNinjaCopyGame_Pos["Random"][5]["PosY"] = 308
	tNinjaCopyGame_Pos["Random"][6] = {}
	tNinjaCopyGame_Pos["Random"][6]["PosX"] = 216
	tNinjaCopyGame_Pos["Random"][6]["PosY"] = 415

local tNinjaCopyGame_Npc = {}
	--id
	tNinjaCopyGame_Npc["NpcId"] = 26018
	
	--lookface
	tNinjaCopyGame_Npc["Lookface"] = 54927
	
	--TaskID
	tNinjaCopyGame_Npc["Task"] = 94492070
	
	-- npc刷新
	tNinjaCopyGame_Npc["Refresh"] = {}
	tNinjaCopyGame_Npc["Refresh"][1] = {}
	tNinjaCopyGame_Npc["Refresh"][1]["PosX"] = 86
	tNinjaCopyGame_Npc["Refresh"][1]["PosY"] = 16


-- 光效
local tNinjaCopyGame_Effect = {}
	--伤门光效
	tNinjaCopyGame_Effect[50] = "ninjia_num50"
	tNinjaCopyGame_Effect[75] = "ninjia_num75"
	tNinjaCopyGame_Effect[100] = "ninjia_num100"
	tNinjaCopyGame_Effect[125] = "ninjia_num125"
	tNinjaCopyGame_Effect[150] = "ninjia_num150"
	tNinjaCopyGame_Effect[175] = "ninjia_num175"
	
	--景门光效
	tNinjaCopyGame_Effect["Jing"] = {}
	tNinjaCopyGame_Effect["Jing"][1] = "GreenChixv"
	tNinjaCopyGame_Effect["Jing"][2] = "BlueChixv"
	tNinjaCopyGame_Effect["Jing"][3] = "RedChixv"
	
	--惊门光效
	tNinjaCopyGame_Effect["JingMeng"] = {}
	tNinjaCopyGame_Effect["JingMeng"][1] = "PingmuniuqvOpen"
	tNinjaCopyGame_Effect["JingMeng"][2] = "PingmuniuqvLoop"
	
	--八门遁甲光效
	tNinjaCopyGame_Effect["BaMeng"] = {}
	tNinjaCopyGame_Effect["BaMeng"]["Red"] = {}
	tNinjaCopyGame_Effect["BaMeng"]["Red"][1] = "RedChixv"
	tNinjaCopyGame_Effect["BaMeng"]["Red"][2] = "RedXiaoshi"
	tNinjaCopyGame_Effect["BaMeng"]["Red"][3] = "RedChufa"
	
	tNinjaCopyGame_Effect["BaMeng"]["Green"] = {}
	tNinjaCopyGame_Effect["BaMeng"]["Green"][1] = "GreenChixv"
	tNinjaCopyGame_Effect["BaMeng"]["Green"][2] = "GreenXiaoshi"
	tNinjaCopyGame_Effect["BaMeng"]["Green"][3] = "GreenChufa"
	
	tNinjaCopyGame_Effect["BaMeng"]["Blue"] = {}
	tNinjaCopyGame_Effect["BaMeng"]["Blue"][1] = "BlueChixv"
	tNinjaCopyGame_Effect["BaMeng"]["Blue"][2] = "BlueXiaoshi"
	tNinjaCopyGame_Effect["BaMeng"]["Blue"][3] = "BlueChufa"
	

-- BUFF状态
local tNinjaCopyGame_Status={}
	
	tNinjaCopyGame_Status["StautsID"] = {49,50,57,53,139}
	
	--加速
	tNinjaCopyGame_Status[1]={}
	tNinjaCopyGame_Status[1]["Status"] = 49
	tNinjaCopyGame_Status[1]["Power"] = 50
	tNinjaCopyGame_Status[1]["Secs"] = 15
	tNinjaCopyGame_Status[1]["Times"] = 0
	tNinjaCopyGame_Status[1]["RemainTime"]= 15
	tNinjaCopyGame_Status[1]["EndTime"]= 1
	--减速
	tNinjaCopyGame_Status[2] = {}
	tNinjaCopyGame_Status[2]["Status"] = 50
	tNinjaCopyGame_Status[2]["Power"] = 25
	tNinjaCopyGame_Status[2]["Secs"] = 10
	tNinjaCopyGame_Status[2]["Times"] = 0
	tNinjaCopyGame_Status[2]["RemainTime"] = 10
	tNinjaCopyGame_Status[2]["EndTime"] = 1
	
	-- 眩晕状态            
	-- tNinjaCopyGame_Status[3] = {}
	-- tNinjaCopyGame_Status[3]["Status"] = 55
	-- tNinjaCopyGame_Status[3]["Power"] = 0
	-- tNinjaCopyGame_Status[3]["Secs"] = 5
	-- tNinjaCopyGame_Status[3]["Times"] = 0
	-- tNinjaCopyGame_Status[3]["RemainTime"] = 5
	-- tNinjaCopyGame_Status[3]["EndTime"] = 1
	-- 反向状态            
	tNinjaCopyGame_Status[3] = {}
	tNinjaCopyGame_Status[3]["Status"] = 57
	tNinjaCopyGame_Status[3]["Power"] = 0
	tNinjaCopyGame_Status[3]["Secs"] = 15
	tNinjaCopyGame_Status[3]["Times"] = 0
	tNinjaCopyGame_Status[3]["RemainTime"] = 15
	tNinjaCopyGame_Status[3]["EndTime"] = 1
	-- 回体状态            
	tNinjaCopyGame_Status[4] = {}
	tNinjaCopyGame_Status[4]["Status"] = 53
	tNinjaCopyGame_Status[4]["Power"] = 2000
	tNinjaCopyGame_Status[4]["Secs"] = 0
	tNinjaCopyGame_Status[4]["Times"] = 0
	tNinjaCopyGame_Status[4]["RemainTime"] = 0
	tNinjaCopyGame_Status[4]["EndTime"] = 1

	-- 加攻击力
	tNinjaCopyGame_Status[5] = {}
	tNinjaCopyGame_Status[5]["Status"] = 139
	tNinjaCopyGame_Status[5]["Power"] = 20000
	tNinjaCopyGame_Status[5]["Secs"] = 10
	tNinjaCopyGame_Status[5]["Times"] = 0
	tNinjaCopyGame_Status[5]["RemainTime"] = 0
	tNinjaCopyGame_Status[5]["EndTime"] = 0

--陷阱
local tNinjaCopyGame_Trap = {}
	-- 伤门陷阱
	tNinjaCopyGame_Trap[1]={}
	tNinjaCopyGame_Trap[1]["TrapType"]=2527
	tNinjaCopyGame_Trap[1]["Look"]=2527
	tNinjaCopyGame_Trap[1]["Num"]=8
	tNinjaCopyGame_Trap[1][1]={}
	tNinjaCopyGame_Trap[1][1]["PosX"]=109
	tNinjaCopyGame_Trap[1][1]["PosY"]=109
	tNinjaCopyGame_Trap[1][2]={}
	tNinjaCopyGame_Trap[1][2]["PosX"]=106
	tNinjaCopyGame_Trap[1][2]["PosY"]=101
	tNinjaCopyGame_Trap[1][3]={}
	tNinjaCopyGame_Trap[1][3]["PosX"]=113
	tNinjaCopyGame_Trap[1][3]["PosY"]=108
	tNinjaCopyGame_Trap[1][4]={}
	tNinjaCopyGame_Trap[1][4]["PosX"]=120
	tNinjaCopyGame_Trap[1][4]["PosY"]=110
	tNinjaCopyGame_Trap[1][5]={}
	tNinjaCopyGame_Trap[1][5]["PosX"]=115
	tNinjaCopyGame_Trap[1][5]["PosY"]=101
	tNinjaCopyGame_Trap[1][6]={}
	tNinjaCopyGame_Trap[1][6]["PosX"]=106
	tNinjaCopyGame_Trap[1][6]["PosY"]=98
	tNinjaCopyGame_Trap[1][7]={}
	tNinjaCopyGame_Trap[1][7]["PosX"]=122
	tNinjaCopyGame_Trap[1][7]["PosY"]=96
	tNinjaCopyGame_Trap[1][8]={}
	tNinjaCopyGame_Trap[1][8]["PosX"]=109
	tNinjaCopyGame_Trap[1][8]["PosY"]=91
	tNinjaCopyGame_Trap[1][9]={}
	tNinjaCopyGame_Trap[1][9]["PosX"]=102
	tNinjaCopyGame_Trap[1][9]["PosY"]=107
	tNinjaCopyGame_Trap[1][10]={}
	tNinjaCopyGame_Trap[1][10]["PosX"]=102
	tNinjaCopyGame_Trap[1][10]["PosY"]=95
	tNinjaCopyGame_Trap[1][11]={}
	tNinjaCopyGame_Trap[1][11]["PosX"]=124
	tNinjaCopyGame_Trap[1][11]["PosY"]=101
	
	--杜门陷阱
	tNinjaCopyGame_Trap[2]={}
	tNinjaCopyGame_Trap[2]["TrapType"]=2529
	tNinjaCopyGame_Trap[2]["Look"]=1766
	tNinjaCopyGame_Trap[2][1]={}
	tNinjaCopyGame_Trap[2][1]["PosX"]=845
	tNinjaCopyGame_Trap[2][1]["PosY"]=884
	
	-- 景门陷阱
	tNinjaCopyGame_Trap[3]={}
	tNinjaCopyGame_Trap[3]["TrapType"]=2528
	tNinjaCopyGame_Trap[3]["Look"]=2527
	tNinjaCopyGame_Trap[3]["Bound"]=1
	tNinjaCopyGame_Trap[3][1]={}
	tNinjaCopyGame_Trap[3][1]["PosX"]=110
	tNinjaCopyGame_Trap[3][1]["PosY"]=105
	tNinjaCopyGame_Trap[3][2]={}
	tNinjaCopyGame_Trap[3][2]["PosX"]=115
	tNinjaCopyGame_Trap[3][2]["PosY"]=100
	tNinjaCopyGame_Trap[3][3]={}
	tNinjaCopyGame_Trap[3][3]["PosX"]=113
	tNinjaCopyGame_Trap[3][3]["PosY"]=103
	tNinjaCopyGame_Trap[3][4]={}
	tNinjaCopyGame_Trap[3][4]["PosX"]=111
	tNinjaCopyGame_Trap[3][4]["PosY"]=107
	tNinjaCopyGame_Trap[3][5]={}
	tNinjaCopyGame_Trap[3][5]["PosX"]=117
	tNinjaCopyGame_Trap[3][5]["PosY"]=106
	tNinjaCopyGame_Trap[3][6]={}
	tNinjaCopyGame_Trap[3][6]["PosX"]=112
	tNinjaCopyGame_Trap[3][6]["PosY"]=100
	tNinjaCopyGame_Trap[3][7]={}
	tNinjaCopyGame_Trap[3][7]["PosX"]=108
	tNinjaCopyGame_Trap[3][7]["PosY"]=105
	tNinjaCopyGame_Trap[3][8]={}
	tNinjaCopyGame_Trap[3][8]["PosX"]=116
	tNinjaCopyGame_Trap[3][8]["PosY"]=111
	tNinjaCopyGame_Trap[3][9]={}
	tNinjaCopyGame_Trap[3][9]["PosX"]=112
	tNinjaCopyGame_Trap[3][9]["PosY"]=108
	
	--杜门终点陷阱
	tNinjaCopyGame_Trap[4]={}
	tNinjaCopyGame_Trap[4]["TrapType"]=2530
	tNinjaCopyGame_Trap[4]["Look"]=1766
	tNinjaCopyGame_Trap[4][1]={}
	tNinjaCopyGame_Trap[4][1]["PosX"]=61
	tNinjaCopyGame_Trap[4][1]["PosY"]=398
	
	--杜门随机效果陷阱
	tNinjaCopyGame_Trap[5]={}
	tNinjaCopyGame_Trap[5]["TrapType"]=2548
	tNinjaCopyGame_Trap[5]["Look"]=2548
	tNinjaCopyGame_Trap[5][1]={}
	tNinjaCopyGame_Trap[5][1]["PosX"]=385
	tNinjaCopyGame_Trap[5][1]["PosY"]=336
	
	tNinjaCopyGame_Trap[5][2]={}
	tNinjaCopyGame_Trap[5][2]["PosX"]=330
	tNinjaCopyGame_Trap[5][2]["PosY"]=378
	tNinjaCopyGame_Trap[5][3]={}
	tNinjaCopyGame_Trap[5][3]["PosX"]=328
	tNinjaCopyGame_Trap[5][3]["PosY"]=373
	tNinjaCopyGame_Trap[5][4]={}
	tNinjaCopyGame_Trap[5][4]["PosX"]=325
	tNinjaCopyGame_Trap[5][4]["PosY"]=367
	
	tNinjaCopyGame_Trap[5][5]={}
	tNinjaCopyGame_Trap[5][5]["PosX"]=323
	tNinjaCopyGame_Trap[5][5]["PosY"]=321
	tNinjaCopyGame_Trap[5][6]={}
	tNinjaCopyGame_Trap[5][6]["PosX"]=320
	tNinjaCopyGame_Trap[5][6]["PosY"]=316
	tNinjaCopyGame_Trap[5][7]={}
	tNinjaCopyGame_Trap[5][7]["PosX"]=318
	tNinjaCopyGame_Trap[5][7]["PosY"]=310
	
	tNinjaCopyGame_Trap[5][8]={}
	tNinjaCopyGame_Trap[5][8]["PosX"]=260
	tNinjaCopyGame_Trap[5][8]["PosY"]=395
	tNinjaCopyGame_Trap[5][9]={}
	tNinjaCopyGame_Trap[5][9]["PosX"]=256
	tNinjaCopyGame_Trap[5][9]["PosY"]=392
	tNinjaCopyGame_Trap[5][10]={}
	tNinjaCopyGame_Trap[5][10]["PosX"]=252
	tNinjaCopyGame_Trap[5][10]["PosY"]=388
	
	tNinjaCopyGame_Trap[5][11]={}
	tNinjaCopyGame_Trap[5][11]["PosX"]=235
	tNinjaCopyGame_Trap[5][11]["PosY"]=474
	tNinjaCopyGame_Trap[5][12]={}
	tNinjaCopyGame_Trap[5][12]["PosX"]=238
	tNinjaCopyGame_Trap[5][12]["PosY"]=477
	tNinjaCopyGame_Trap[5][13]={}
	tNinjaCopyGame_Trap[5][13]["PosX"]=243
	tNinjaCopyGame_Trap[5][13]["PosY"]=481
	
	tNinjaCopyGame_Trap[5][14]={}
	tNinjaCopyGame_Trap[5][14]["PosX"]=296
	tNinjaCopyGame_Trap[5][14]["PosY"]=664
	tNinjaCopyGame_Trap[5][15]={}
	tNinjaCopyGame_Trap[5][15]["PosX"]=298
	tNinjaCopyGame_Trap[5][15]["PosY"]=662
	tNinjaCopyGame_Trap[5][16]={}
	tNinjaCopyGame_Trap[5][16]["PosX"]=300
	tNinjaCopyGame_Trap[5][16]["PosY"]=659
	
	tNinjaCopyGame_Trap[5][17]={}
	tNinjaCopyGame_Trap[5][17]["PosX"]=425
	tNinjaCopyGame_Trap[5][17]["PosY"]=761
	tNinjaCopyGame_Trap[5][18]={}
	tNinjaCopyGame_Trap[5][18]["PosX"]=427
	tNinjaCopyGame_Trap[5][18]["PosY"]=758
	tNinjaCopyGame_Trap[5][19]={}
	tNinjaCopyGame_Trap[5][19]["PosX"]=430
	tNinjaCopyGame_Trap[5][19]["PosY"]=754
	tNinjaCopyGame_Trap[5][20]={}
	tNinjaCopyGame_Trap[5][20]["PosX"]=434
	tNinjaCopyGame_Trap[5][20]["PosY"]=750
	
	tNinjaCopyGame_Trap[5][21]={}
	tNinjaCopyGame_Trap[5][21]["PosX"]=590
	tNinjaCopyGame_Trap[5][21]["PosY"]=918
	tNinjaCopyGame_Trap[5][22]={}
	tNinjaCopyGame_Trap[5][22]["PosX"]=592
	tNinjaCopyGame_Trap[5][22]["PosY"]=915
	tNinjaCopyGame_Trap[5][23]={}
	tNinjaCopyGame_Trap[5][23]["PosX"]=594
	tNinjaCopyGame_Trap[5][23]["PosY"]=912
	
	tNinjaCopyGame_Trap[5][24]={}
	tNinjaCopyGame_Trap[5][24]["PosX"]=720
	tNinjaCopyGame_Trap[5][24]["PosY"]=976
	tNinjaCopyGame_Trap[5][25]={}
	tNinjaCopyGame_Trap[5][25]["PosX"]=724
	tNinjaCopyGame_Trap[5][25]["PosY"]=980
	tNinjaCopyGame_Trap[5][26]={}
	tNinjaCopyGame_Trap[5][26]["PosX"]=729
	tNinjaCopyGame_Trap[5][26]["PosY"]=984
	
	tNinjaCopyGame_Trap[5][24]={}
	tNinjaCopyGame_Trap[5][24]["PosX"]=825
	tNinjaCopyGame_Trap[5][24]["PosY"]=909
	tNinjaCopyGame_Trap[5][25]={}
	tNinjaCopyGame_Trap[5][25]["PosX"]=825
	tNinjaCopyGame_Trap[5][25]["PosY"]=905
	tNinjaCopyGame_Trap[5][26]={}
	tNinjaCopyGame_Trap[5][26]["PosX"]=825
	tNinjaCopyGame_Trap[5][26]["PosY"]=901
	
	tNinjaCopyGame_Trap[5][27]={}
	tNinjaCopyGame_Trap[5][27]["PosX"]=950
	tNinjaCopyGame_Trap[5][27]["PosY"]=814
	tNinjaCopyGame_Trap[5][28]={}
	tNinjaCopyGame_Trap[5][28]["PosX"]=946
	tNinjaCopyGame_Trap[5][28]["PosY"]=810
	tNinjaCopyGame_Trap[5][29]={}
	tNinjaCopyGame_Trap[5][29]["PosX"]=941
	tNinjaCopyGame_Trap[5][29]["PosY"]=805
	
	tNinjaCopyGame_Trap[5][30]={}
	tNinjaCopyGame_Trap[5][30]["PosX"]=947
	tNinjaCopyGame_Trap[5][30]["PosY"]=672
	tNinjaCopyGame_Trap[5][31]={}
	tNinjaCopyGame_Trap[5][31]["PosX"]=945
	tNinjaCopyGame_Trap[5][31]["PosY"]=674
	tNinjaCopyGame_Trap[5][32]={}
	tNinjaCopyGame_Trap[5][32]["PosX"]=943
	tNinjaCopyGame_Trap[5][32]["PosY"]=676
	tNinjaCopyGame_Trap[5][33]={}
	tNinjaCopyGame_Trap[5][33]["PosX"]=985
	tNinjaCopyGame_Trap[5][33]["PosY"]=644
	tNinjaCopyGame_Trap[5][34]={}
	tNinjaCopyGame_Trap[5][34]["PosX"]=988
	tNinjaCopyGame_Trap[5][34]["PosY"]=641
	tNinjaCopyGame_Trap[5][35]={}
	tNinjaCopyGame_Trap[5][35]["PosX"]=992
	tNinjaCopyGame_Trap[5][35]["PosY"]=638
	
	tNinjaCopyGame_Trap[5][36]={}
	tNinjaCopyGame_Trap[5][36]["PosX"]=850
	tNinjaCopyGame_Trap[5][36]["PosY"]=513
	tNinjaCopyGame_Trap[5][37]={}
	tNinjaCopyGame_Trap[5][37]["PosX"]=848
	tNinjaCopyGame_Trap[5][37]["PosY"]=515
	tNinjaCopyGame_Trap[5][38]={}
	tNinjaCopyGame_Trap[5][38]["PosX"]=846
	tNinjaCopyGame_Trap[5][38]["PosY"]=518
	tNinjaCopyGame_Trap[5][39]={}
	tNinjaCopyGame_Trap[5][39]["PosX"]=843
	tNinjaCopyGame_Trap[5][39]["PosY"]=521
	tNinjaCopyGame_Trap[5][40]={}
	tNinjaCopyGame_Trap[5][40]["PosX"]=840
	tNinjaCopyGame_Trap[5][40]["PosY"]=524
	
	tNinjaCopyGame_Trap[5][41]={}
	tNinjaCopyGame_Trap[5][41]["PosX"]=712
	tNinjaCopyGame_Trap[5][41]["PosY"]=399
	tNinjaCopyGame_Trap[5][42]={}
	tNinjaCopyGame_Trap[5][42]["PosX"]=715
	tNinjaCopyGame_Trap[5][42]["PosY"]=396
	tNinjaCopyGame_Trap[5][43]={}
	tNinjaCopyGame_Trap[5][43]["PosX"]=718
	tNinjaCopyGame_Trap[5][43]["PosY"]=393
	tNinjaCopyGame_Trap[5][44]={}
	tNinjaCopyGame_Trap[5][44]["PosX"]=721
	tNinjaCopyGame_Trap[5][44]["PosY"]=390
	
	tNinjaCopyGame_Trap[5][45]={}
	tNinjaCopyGame_Trap[5][45]["PosX"]=570
	tNinjaCopyGame_Trap[5][45]["PosY"]=267
	tNinjaCopyGame_Trap[5][46]={}
	tNinjaCopyGame_Trap[5][46]["PosX"]=572
	tNinjaCopyGame_Trap[5][46]["PosY"]=264
	tNinjaCopyGame_Trap[5][47]={}
	tNinjaCopyGame_Trap[5][47]["PosX"]=575
	tNinjaCopyGame_Trap[5][47]["PosY"]=261
	
	tNinjaCopyGame_Trap[5][48]={}
	tNinjaCopyGame_Trap[5][48]["PosX"]=404
	tNinjaCopyGame_Trap[5][48]["PosY"]=168
	tNinjaCopyGame_Trap[5][49]={}
	tNinjaCopyGame_Trap[5][49]["PosX"]=406
	tNinjaCopyGame_Trap[5][49]["PosY"]=163
	tNinjaCopyGame_Trap[5][50]={}
	tNinjaCopyGame_Trap[5][50]["PosX"]=408
	tNinjaCopyGame_Trap[5][50]["PosY"]=158
	
	tNinjaCopyGame_Trap[5][51]={}
	tNinjaCopyGame_Trap[5][51]["PosX"]=335
	tNinjaCopyGame_Trap[5][51]["PosY"]=176
	tNinjaCopyGame_Trap[5][52]={}
	tNinjaCopyGame_Trap[5][52]["PosX"]=336
	tNinjaCopyGame_Trap[5][52]["PosY"]=171
	tNinjaCopyGame_Trap[5][53]={}
	tNinjaCopyGame_Trap[5][53]["PosX"]=337
	tNinjaCopyGame_Trap[5][53]["PosY"]=166
	
	tNinjaCopyGame_Trap[5][54]={}
	tNinjaCopyGame_Trap[5][54]["PosX"]=320
	tNinjaCopyGame_Trap[5][54]["PosY"]=132
	tNinjaCopyGame_Trap[5][55]={}
	tNinjaCopyGame_Trap[5][55]["PosX"]=326
	tNinjaCopyGame_Trap[5][55]["PosY"]=134
	tNinjaCopyGame_Trap[5][56]={}
	tNinjaCopyGame_Trap[5][56]["PosX"]=333
	tNinjaCopyGame_Trap[5][56]["PosY"]=137
	
	tNinjaCopyGame_Trap[5][57]={}
	tNinjaCopyGame_Trap[5][57]["PosX"]=169
	tNinjaCopyGame_Trap[5][57]["PosY"]=297
	tNinjaCopyGame_Trap[5][58]={}
	tNinjaCopyGame_Trap[5][58]["PosX"]=172
	tNinjaCopyGame_Trap[5][58]["PosY"]=300
	tNinjaCopyGame_Trap[5][59]={}
	tNinjaCopyGame_Trap[5][59]["PosX"]=176
	tNinjaCopyGame_Trap[5][59]["PosY"]=303
	
	tNinjaCopyGame_Trap[5][60]={}
	tNinjaCopyGame_Trap[5][60]["PosX"]=119
	tNinjaCopyGame_Trap[5][60]["PosY"]=383
	
	--伤门采集地效
	tNinjaCopyGame_Trap[6] = {}
	tNinjaCopyGame_Trap[6]["TrapType"] = 2582
	tNinjaCopyGame_Trap[6]["Look"] = 2582
	tNinjaCopyGame_Trap[6][1] = {}
	tNinjaCopyGame_Trap[6][1]["PosX"] = 115
	tNinjaCopyGame_Trap[6][1]["PosY"] = 104
	

--怪物位置配置
local tNinjaCopyGame_Monster={}
	--怪物id
	tNinjaCopyGame_Monster["MonsterId"] = 5915
	tNinjaCopyGame_Monster["TaskBossId"] = 5916
	tNinjaCopyGame_Monster["BossId"] = 5917
	tNinjaCopyGame_Monster["ShangMen"] = 4103
	
	
	tNinjaCopyGame_Monster[5915] = {}
	tNinjaCopyGame_Monster[5915][1] = {}
	tNinjaCopyGame_Monster[5915][1]["PosX"] = 108
	tNinjaCopyGame_Monster[5915][1]["PosY"] = 104
	tNinjaCopyGame_Monster[5915][1]["GenId"] = 30568
	
	tNinjaCopyGame_Monster[5915][2] = {}
	tNinjaCopyGame_Monster[5915][2]["PosX"] = 113
	tNinjaCopyGame_Monster[5915][2]["PosY"] = 108
	tNinjaCopyGame_Monster[5915][2]["GenId"] = 30569
	
	tNinjaCopyGame_Monster[5915][3] = {}
	tNinjaCopyGame_Monster[5915][3]["PosX"] = 117
	tNinjaCopyGame_Monster[5915][3]["PosY"] = 108
	tNinjaCopyGame_Monster[5915][3]["GenId"] = 30570
	
	tNinjaCopyGame_Monster[5915][4] = {}
	tNinjaCopyGame_Monster[5915][4]["PosX"] = 116
	tNinjaCopyGame_Monster[5915][4]["PosY"] = 99
	tNinjaCopyGame_Monster[5915][4]["GenId"] = 30571
	
	tNinjaCopyGame_Monster[5915][5] = {}
	tNinjaCopyGame_Monster[5915][5]["PosX"] = 121
	tNinjaCopyGame_Monster[5915][5]["PosY"] = 94
	tNinjaCopyGame_Monster[5915][5]["GenId"] = 30572
	
	tNinjaCopyGame_Monster[5915][6] = {}
	tNinjaCopyGame_Monster[5915][6]["PosX"] = 127
	tNinjaCopyGame_Monster[5915][6]["PosY"] = 101
	tNinjaCopyGame_Monster[5915][6]["GenId"] = 30573
	
	tNinjaCopyGame_Monster[5915][7] = {}
	tNinjaCopyGame_Monster[5915][7]["PosX"] = 123
	tNinjaCopyGame_Monster[5915][7]["PosY"] = 106
	tNinjaCopyGame_Monster[5915][7]["GenId"] = 30574
	
	tNinjaCopyGame_Monster[5916] = {}
	tNinjaCopyGame_Monster[5916][1] = {}
	tNinjaCopyGame_Monster[5916][1]["PosX"] = 113
	tNinjaCopyGame_Monster[5916][1]["PosY"] = 102
	tNinjaCopyGame_Monster[5916][1]["GenId"] = 30576
	
	tNinjaCopyGame_Monster[5917] = {}
	tNinjaCopyGame_Monster[5917][1] = {}
	tNinjaCopyGame_Monster[5917][1]["PosX"] = 113
	tNinjaCopyGame_Monster[5917][1]["PosY"] = 102
	tNinjaCopyGame_Monster[5917][1]["GenId"] = 30575
	
	tNinjaCopyGame_Monster[4103] = {}
	tNinjaCopyGame_Monster[4103][1] = {}
	tNinjaCopyGame_Monster[4103][1]["PosX"] = 108
	tNinjaCopyGame_Monster[4103][1]["PosY"] = 104
	tNinjaCopyGame_Monster[4103][1]["GenId"] = 30637
	
	-- tNinjaCopyGame_Monster[4032][2] = {}
	-- tNinjaCopyGame_Monster[4032][2]["PosX"] = 113
	-- tNinjaCopyGame_Monster[4032][2]["PosY"] = 108
	-- tNinjaCopyGame_Monster[4032][2]["GenId"] = 30637
	
	-- tNinjaCopyGame_Monster[4032][3] = {}
	-- tNinjaCopyGame_Monster[4032][3]["PosX"] = 117
	-- tNinjaCopyGame_Monster[4032][3]["PosY"] = 108
	-- tNinjaCopyGame_Monster[4032][3]["GenId"] = 30637
	
	-- tNinjaCopyGame_Monster[4032][4] = {}
	-- tNinjaCopyGame_Monster[4032][4]["PosX"] = 116
	-- tNinjaCopyGame_Monster[4032][4]["PosY"] = 99
	-- tNinjaCopyGame_Monster[4032][4]["GenId"] = 30637
	
	-- tNinjaCopyGame_Monster[4032][5] = {}
	-- tNinjaCopyGame_Monster[4032][5]["PosX"] = 121
	-- tNinjaCopyGame_Monster[4032][5]["PosY"] = 94
	-- tNinjaCopyGame_Monster[4032][5]["GenId"] = 30637
	
	-- tNinjaCopyGame_Monster[4032][6] = {}
	-- tNinjaCopyGame_Monster[4032][6]["PosX"] = 127
	-- tNinjaCopyGame_Monster[4032][6]["PosY"] = 101
	-- tNinjaCopyGame_Monster[4032][6]["GenId"] = 30637
	
	-- tNinjaCopyGame_Monster[4032][7] = {}
	-- tNinjaCopyGame_Monster[4032][7]["PosX"] = 123
	-- tNinjaCopyGame_Monster[4032][7]["PosY"] = 106
	-- tNinjaCopyGame_Monster[4032][7]["GenId"] = 30637
	
-- 任务掩码
local tNinjaCopyGame_TaskId = {}
	-- 伤门任务id
	-- data1：标记采集自然之力的能量数	0-200	增量为25
	-- data2：
	-- data3：标记随机创建陷阱的下标	1-8
	tNinjaCopyGame_TaskId[1] = {}
	tNinjaCopyGame_TaskId[1]["Id"] = 4327
	tNinjaCopyGame_TaskId[1]["NewId"] = 4433
	tNinjaCopyGame_TaskId[1]["Add"] = 25
	tNinjaCopyGame_TaskId[1]["Limit"] = 200
	tNinjaCopyGame_TaskId[1]["Trigger"] = {100,150,175}
	
	-- 杜门任务id
	-- data1：标记任务是否完成	1为完成
	tNinjaCopyGame_TaskId[2] = {}
	tNinjaCopyGame_TaskId[2]["Id"] = 4329
	
	-- 景门任务id
	-- data1：标记任务是否完成	1为完成
	-- data2：标记触发陷阱获得的BUFF层数	0-8
	-- data3：标记是否生成怪物	1为已生成
	-- data4：标记随机创建陷阱的下标	1-9
	tNinjaCopyGame_TaskId[3] = {}
	tNinjaCopyGame_TaskId[3]["Id"] = 4333
	tNinjaCopyGame_TaskId[3]["NewId"] = 4440
	tNinjaCopyGame_TaskId[3]["Limit"] = 7 -- 8
	tNinjaCopyGame_TaskId[3]["EffectLimit"] = {}
	tNinjaCopyGame_TaskId[3]["EffectLimit"][1] = 3
	tNinjaCopyGame_TaskId[3]["EffectLimit"][2] = 6
	
	-- 惊门任务id
	-- data1：标记任务是否完成	1为完成
	-- data2：标记击杀怪物数量	0-9
	tNinjaCopyGame_TaskId[4] = {}
	tNinjaCopyGame_TaskId[4]["Id"] = 4335
	tNinjaCopyGame_TaskId[4]["Mod"] = 3
	tNinjaCopyGame_TaskId[4]["Limit"] = 9
	
--------------------------------------------------------逻辑部分----------------------------------------------------------------
-- 检测任务掩码是否存在
function NinjaCopyGame_TaskChk(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	
	local nNinjaCopyGame_NowUserId = nNinjaCopyGame_UserId or Get_UserId()
	
	-- 没有任务掩码或已完成任务
	if not Task_ChkTaskDetail(nNinjaCopyGame_TaskId,nNinjaCopyGame_NowUserId) then
		return false
	else
		local nNinjaCopyGame_End = Get_TaskDetailData1(nNinjaCopyGame_TaskId,nNinjaCopyGame_NowUserId)
		if nNinjaCopyGame_End == 1 then
			return false
		end
	end
	
	return true
end

--掩码data2清理
function NinjaCopyGame_TaskClear(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	
	local nNinjaCopyGame_NowUserId = nNinjaCopyGame_UserId or Get_UserId()
	
	if not Task_ChkTaskDetail(nNinjaCopyGame_TaskId,nNinjaCopyGame_NowUserId) then
		return false
	end
	
	if not Task_SetTaskDetailData2(nNinjaCopyGame_TaskId,0) then
		return false
	end
	
	-- 是否生成怪物标识清零
	local nNinjaCopyGame_Monster = Get_TaskDetailData3(nNinjaCopyGame_TaskId,nNinjaCopyGame_NowUserId)
	if nNinjaCopyGame_Monster ~= 0 then
		if not Task_SetTaskDetailData3(nNinjaCopyGame_TaskId,0) then
			return false
		end
	end
	
	return true
end

-- 进入副本
function NinjaCopyGame_EnterInstance(nNinjaCopyGame_TaskId)
	-- 清理掩码
	if not NinjaCopyGame_TaskClear(nNinjaCopyGame_TaskId) then 
		return
	end
	
	local nNinjaCopyGame_UserMapId = Get_UserMapId()
	local nNinjaCopyGame_NowUserId = Get_UserId()
	
	--伤门试炼
	if nNinjaCopyGame_TaskId == tNinjaCopyGame_TaskId[1]["Id"] or nNinjaCopyGame_TaskId == tNinjaCopyGame_TaskId[1]["NewId"] then
		if not Task_SetTaskDetailData1(nNinjaCopyGame_TaskId,0) then
			return false
		end
		tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_NowUserId] = tNinjaCopyGame_Constant["TrapIndex"]
		-- NinjaCopyGame_CreatObstacle(1)
		-- 随机陷阱坐标
		local nNinjaCopyGame_Num = 5
		-- if Task_SetTaskDetailData3(nNinjaCopyGame_TaskId,nNinjaCopyGame_Num) then
			--创建陷阱
		NinjaCopyGame_CreateTrap(1,nNinjaCopyGame_Num,nNinjaCopyGame_UserMapId)
		NinjaCopyGame_NewCreateTrap(6,tNinjaCopyGame_Trap[1][nNinjaCopyGame_Num]["PosX"],tNinjaCopyGame_Trap[1][nNinjaCopyGame_Num]["PosY"])
		-- end
		NinjaCopyGame_SetTrapIndex(nNinjaCopyGame_Num,nNinjaCopyGame_NowUserId)
		-- 创建其他两个
		for a=1,2 do
			local nNinjaCopyGame_Index = math.random(1,#tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_NowUserId])
			local nNinjaCopyGame_RealIndex = tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_NowUserId][nNinjaCopyGame_Index]
			NinjaCopyGame_CreateTrap(1,nNinjaCopyGame_RealIndex,nNinjaCopyGame_UserMapId)
			NinjaCopyGame_SetTrapIndex(nNinjaCopyGame_RealIndex,nNinjaCopyGame_NowUserId)
		end
		
	end
	
	--杜门试炼
	if nNinjaCopyGame_TaskId == tNinjaCopyGame_TaskId[2]["Id"] then
		User_SetTimer(tNinjaCopyGame_Constant["Timer"][1],nil,1,nNinjaCopyGame_NowUserId)
		--创建传送和终点陷阱
		NinjaCopyGame_CreateTrap(2,1)
		NinjaCopyGame_CreateTrap(4,1)
		
		--创建随机效果陷阱
		for k = 1,#tNinjaCopyGame_Trap[5] do
			NinjaCopyGame_CreateTrap(5,k)
		end
	end
	
	--景门试炼
	if nNinjaCopyGame_TaskId == tNinjaCopyGame_TaskId[3]["Id"] or nNinjaCopyGame_TaskId == tNinjaCopyGame_TaskId[3]["NewId"] then
		User_SetTimer(tNinjaCopyGame_Constant["Timer"][2],"NinjaCopyGame_JingDel</N>" .. nNinjaCopyGame_NowUserId,1,nNinjaCopyGame_NowUserId)
		-- NinjaCopyGame_CreatObstacle(1)
		
		-- 随机陷阱坐标
		local nNinjaCopyGame_Num = math.random(1,#tNinjaCopyGame_Trap[3])
		if Task_SetTaskDetailData4(nNinjaCopyGame_TaskId,nNinjaCopyGame_Num) then
			--创建陷阱
			NinjaCopyGame_CreateTrap(3,nNinjaCopyGame_Num,nNinjaCopyGame_UserMapId)
			NinjaCopyGame_NewCreateTrap(6,tNinjaCopyGame_Trap[3][nNinjaCopyGame_Num]["PosX"],tNinjaCopyGame_Trap[3][nNinjaCopyGame_Num]["PosY"])
		end
		
		-- local nNinjaCopyGame_PosX = tNinjaCopyGame_Npc["Refresh"][1]["PosX"]
		-- local nNinjaCopyGame_PosY = tNinjaCopyGame_Npc["Refresh"][1]["PosY"]
		
		-- Npc_CreateDynaNpc(tNinjaCopyGame_Text[26018]["Name"],2,0,tNinjaCopyGame_Npc["Lookface"],0,0,nNinjaCopyGame_UserMapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,0,0,0,tNinjaCopyGame_Npc["Task"])
		Sys_MsgBox(tNinjaCopyGame_Text["MsgBox"]["Enter"][1])
		-- NinjaCopyGame_CreatMonster(tNinjaCopyGame_Monster["BossId"])
	end
	
	--惊门试炼
	if nNinjaCopyGame_TaskId == tNinjaCopyGame_TaskId[4]["Id"] then
		User_SetTimer(tNinjaCopyGame_Constant["Timer"][3],nil,1,nNinjaCopyGame_NowUserId)
		-- NinjaCopyGame_CreatObstacle(1)
		--创建怪物
		NinjaCopyGame_CreatMonster(tNinjaCopyGame_Monster["MonsterId"])
		
		--杀怪数量清零
		if tNinjaCopyGame_Constant[nNinjaCopyGame_NowUserId] ~= nil then
			tNinjaCopyGame_Constant[nNinjaCopyGame_NowUserId] = 0
		end
		
		--播放光效
		User_EffectAdd("self",tNinjaCopyGame_Effect["JingMeng"][1],nNinjaCopyGame_UserId)
		Sys_MsgBox(tNinjaCopyGame_Text["MsgBox"]["Enter"][2])
	end
	
end

-- 设置当前的陷阱索引
function NinjaCopyGame_SetTrapIndex(nNinjaCopyGame_Index,nNinjaCopyGame_UserId)
	local tNewPosIndex = {}
	for i,v in pairs(tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_UserId]) do
		if v ~= nNinjaCopyGame_Index then
			table.insert(tNewPosIndex,v)
		end
	end
	tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_UserId] = tNewPosIndex
end

--创建陷阱
function NinjaCopyGame_CreateTrap(nNinjaCopyGame_Type,nNinjaCopyGame_Index,nNinjaCopyGame_MapId)
	local nNinjaCopyGame_UserMapId = nNinjaCopyGame_MapId or Get_UserMapId()
	
	local nNinjaCopyGame_TrapType = tNinjaCopyGame_Trap[nNinjaCopyGame_Type]["TrapType"]
	local nNinjaCopyGame_Look = tNinjaCopyGame_Trap[nNinjaCopyGame_Type]["Look"]
	local nNinjaCopyGame_Bound = tNinjaCopyGame_Trap[nNinjaCopyGame_Type]["Bound"] or 3
	local nNinjaCopyGame_PosY = tNinjaCopyGame_Trap[nNinjaCopyGame_Type][nNinjaCopyGame_Index]["PosY"]
	local nNinjaCopyGame_PosX = tNinjaCopyGame_Trap[nNinjaCopyGame_Type][nNinjaCopyGame_Index]["PosX"]
	local nNinjaCopyGame_PosY = tNinjaCopyGame_Trap[nNinjaCopyGame_Type][nNinjaCopyGame_Index]["PosY"]
	Trap_CreateMapTrap(nNinjaCopyGame_TrapType,nNinjaCopyGame_Look,0,nNinjaCopyGame_UserMapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,nNinjaCopyGame_Bound,nNinjaCopyGame_Bound)
end

function NinjaCopyGame_NewCreateTrap(nNinjaCopyGame_Type,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY)
	local nNinjaCopyGame_UserMapId = nNinjaCopyGame_MapId or Get_UserMapId()
	
	local nNinjaCopyGame_TrapType = tNinjaCopyGame_Trap[nNinjaCopyGame_Type]["TrapType"]
	local nNinjaCopyGame_Look = tNinjaCopyGame_Trap[nNinjaCopyGame_Type]["Look"]
	local nNinjaCopyGame_Bound = tNinjaCopyGame_Trap[nNinjaCopyGame_Type]["Bound"] or 3
	Trap_CreateMapTrap(nNinjaCopyGame_TrapType,nNinjaCopyGame_Look,0,nNinjaCopyGame_UserMapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,nNinjaCopyGame_Bound,nNinjaCopyGame_Bound)
end

--创建怪物
function NinjaCopyGame_CreatMonster(nNinjaCopyGame_MonsterId,nNinjaCopyGame_MapId)
	
	local nNinjaCopyGame_UserMapId =nNinjaCopyGame_MapId or Get_UserMapId()
	
	for i = 1,#tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId] do
		local nNinjaCopyGame_PosX = tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId][i]["PosX"]
		local nNinjaCopyGame_PosY = tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId][i]["PosY"]
		local nNinjaCopyGame_GenId = tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId][i]["GenId"]
		Monster_AddAndCount(nNinjaCopyGame_UserMapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,nNinjaCopyGame_GenId,nNinjaCopyGame_MonsterId)
	end
	
end

--状态陷阱触发
function NinjaCopyGame_AddStatus(nNinjaCopyGame_StatusIndex,nNinjaCopyGame_NowUserId)
	local nNinjaCopyGame_UserId = nNinjaCopyGame_NowUserId or Get_UserId()
	local nNinjaCopyGame_Status = tNinjaCopyGame_Status[nNinjaCopyGame_StatusIndex]["Status"]
	local nNinjaCopyGame_Power = tNinjaCopyGame_Status[nNinjaCopyGame_StatusIndex]["Power"]
	local nNinjaCopyGame_Secs =tNinjaCopyGame_Status[nNinjaCopyGame_StatusIndex]["Secs"]
	local nNinjaCopyGame_Times =tNinjaCopyGame_Status[nNinjaCopyGame_StatusIndex]["Times"]
	local nNinjaCopyGame_RemainTime = tNinjaCopyGame_Status[nNinjaCopyGame_StatusIndex]["RemainTime"]
	local nNinjaCopyGame_EndTime =  tNinjaCopyGame_Status[nNinjaCopyGame_StatusIndex]["EndTime"]
	
	--增加状态
	if User_ChkRoleStatus(nNinjaCopyGame_Status,nNinjaCopyGame_UserId) then
		if not User_DelRoleStatus(nNinjaCopyGame_Status,nNinjaCopyGame_UserId) then
			return
		end
	end
	User_AddRoleStatus(nNinjaCopyGame_Status,nNinjaCopyGame_Power,nNinjaCopyGame_Secs,nNinjaCopyGame_Times,nNinjaCopyGame_RemainTime,nNinjaCopyGame_EndTime,0,1,0,nNinjaCopyGame_UserId)
	
end

-- 传送回NPC处
function NinjaCopyGame_Trans(nNinjaCopyGame_UserId)
	local nNinjaCopyGame_NowUserId = nNinjaCopyGame_UserId or Get_UserId()
	local nNinjaCopyGame_MapId = tNinjaCopyGame_Pos["Return"]["Mapid"]
	local nNinjaCopyGame_PosX = tNinjaCopyGame_Pos["Return"]["PosX"]
	local nNinjaCopyGame_PosY = tNinjaCopyGame_Pos["Return"]["PosY"]
	
	User_UserRandBoundTrans(nNinjaCopyGame_MapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,5,5,1,nNinjaCopyGame_NowUserId)
end

-- 惊门怪物使用
function NinjaCopyGame_Monster(nNinjaCopyGame_MonsterId)
	
	local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[4]["Id"]
	
	-- 没有任务掩码或已完成任务
	if not NinjaCopyGame_TaskChk(nNinjaCopyGame_TaskId) then
		return
	end
	
	local nNinjaCopyGame_UserId = Get_UserId()
	local nNinjaCopyGame_Data = Get_TaskDetailData2(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	local nNinjaCopyGame_Creat = Get_TaskDetailData3(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	
	--已刷出任务怪
	if nNinjaCopyGame_Creat ~= 0 then
		return
	end
	
	if nNinjaCopyGame_Data >= tNinjaCopyGame_TaskId[4]["Limit"] then
		return
	end
	
	if tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] == nil then
		tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] = 0
	end
	
	--杀怪数量+1
	tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] = tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] + 1
	
	if (tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] % tNinjaCopyGame_TaskId[4]["Mod"]) == 0 then
		if not Task_SetTaskDetailData2(nNinjaCopyGame_TaskId,tNinjaCopyGame_Constant[nNinjaCopyGame_UserId]) then
			return
		end
	end
	
	local bNinjaCopyGame_IsCreat = false
	--20%的概率刷出任务怪
	if Sys_Random(tNinjaCopyGame_Constant["StartNum"],tNinjaCopyGame_Constant["EndNum"]) then
		bNinjaCopyGame_IsCreat = true
	else
		--杀怪数量达到限制必刷出任务怪
		if tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] == tNinjaCopyGame_TaskId[4]["Limit"] then
			bNinjaCopyGame_IsCreat = true
		end
	end
	
	local nNinjaCopyGame_UserMapId = Get_UserMapId()
	
	if bNinjaCopyGame_IsCreat and (nNinjaCopyGame_Creat == 0) then
		if Task_SetTaskDetailData3(nNinjaCopyGame_TaskId,1) then
			tNinjaCopyGame_Constant[nNinjaCopyGame_UserId] = 0
			NinjaCopyGame_CreatMonster(tNinjaCopyGame_Monster["TaskBossId"])
			--播放光效
			User_EffectAdd("self",tNinjaCopyGame_Effect["JingMeng"][1],nNinjaCopyGame_UserId)
			
			--删除虚幻的怪物
			Monster_DelMonster(nNinjaCopyGame_UserMapId,tNinjaCopyGame_Monster["MonsterId"])
			return
		end	
	end
	
	-- 重新创建怪物
	local nNinjaCopyGame_RandomNum = math.random(1,#tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId])
	local nNinjaCopyGame_PosX = tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId][nNinjaCopyGame_RandomNum]["PosX"]
	local nNinjaCopyGame_PosY = tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId][nNinjaCopyGame_RandomNum]["PosY"]
	local nNinjaCopyGame_GenId = tNinjaCopyGame_Monster[nNinjaCopyGame_MonsterId][nNinjaCopyGame_RandomNum]["GenId"]
	Monster_AddAndCount(nNinjaCopyGame_UserMapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,nNinjaCopyGame_GenId,nNinjaCopyGame_MonsterId)

	
end

-- 景门boss使用
function NinjaCopyGame_Boss()
	
	local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[3]["Id"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[3]["NewId"]
	end
	
	-- 没有任务掩码或已完成任务
	if not NinjaCopyGame_TaskChk(nNinjaCopyGame_TaskId) then
		return
	end
	
	local nNinjaCopyGame_UserId = Get_UserId()
	local nNinjaCopyGame_Data = Get_TaskDetailData2(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	local nNinjaCopyGame_End = Get_TaskDetailData1(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	
	
	
	if nNinjaCopyGame_Data >= tNinjaCopyGame_TaskId[3]["Limit"] then
		
		if not Task_SetTaskDetailData1(nNinjaCopyGame_TaskId,1) then
			return
		end
		-- Task_SetTaskDetailCompleteFlag(nNinjaCopyGame_TaskId,1,nNinjaCopyGame_UserId)
	end
	
	--删除定时器
	User_SetTimer(tNinjaCopyGame_Constant["Timer"]["Del"],nil,1,nNinjaCopyGame_UserId)
	
	NinjaCopyGame_JingDel(nNinjaCopyGame_UserId)
	
	--传送回NPC处
	NinjaCopyGame_Trans()
	User_EffectAdd("self",tNinjaCopyGame_Effect["BaMeng"]["Blue"][2],nNinjaCopyGame_UserId)
	Sys_MsgBox(tNinjaCopyGame_Text["Finish"][2],"NpcPosition_PathFind</N>25858",nil,nNinjaCopyGame_UserId)
end

-- 惊门任务怪使用
function NinjaCopyGame_TaskBoss()
	
	local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[4]["Id"]
	
	-- 没有任务掩码或已完成任务
	if not NinjaCopyGame_TaskChk(nNinjaCopyGame_TaskId) then
		return
	end
	
	local nNinjaCopyGame_UserId = Get_UserId()
	local nNinjaCopyGame_Data = Get_TaskDetailData2(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)

	if not Task_SetTaskDetailData1(nNinjaCopyGame_TaskId,1) then
		return
	end
	
	--删除定时器
	User_SetTimer(tNinjaCopyGame_Constant["Timer"]["Del"],nil,1,nNinjaCopyGame_UserId)
	
	-- Task_SetTaskDetailCompleteFlag(nNinjaCopyGame_TaskId,1,nNinjaCopyGame_UserId)
	--传送回NPC处
	NinjaCopyGame_Trans()
	User_EffectAdd("self",tNinjaCopyGame_Effect["BaMeng"]["Red"][2],nNinjaCopyGame_UserId)
end

-- 创建障碍物
function NinjaCopyGame_CreatObstacle(nNinjaCopyGame_Index)
	
	local nNinjaCopyGame_MapId = Get_UserMapId()
	local nNinjaCopyGame_Type = tNinjaCopyGame_Pos["Obstacle"][nNinjaCopyGame_Index]["Type"]
	-- 地图上有障碍物
	local nNinjaCopyGame_NpcNum = Get_MapNpcCount(nNinjaCopyGame_MapId,nNinjaCopyGame_Type)
	if nNinjaCopyGame_NpcNum >= tNinjaCopyGame_Pos["Obstacle"][nNinjaCopyGame_Index]["Limit"] then
		return
	end
	
	local nNinjaCopyGame_Lookface = tNinjaCopyGame_Pos["Obstacle"][nNinjaCopyGame_Index]["Lookface"]
	local nNinjaCopyGame_CellX = tNinjaCopyGame_Pos["Obstacle"][nNinjaCopyGame_Index]["PosX"]
	local nNinjaCopyGame_CellY = tNinjaCopyGame_Pos["Obstacle"][nNinjaCopyGame_Index]["PosY"]
	Npc_CreateDynaNpc(tNinjaCopyGame_Text[26018]["Obstacle"],nNinjaCopyGame_Type,0,nNinjaCopyGame_Lookface,0,0,nNinjaCopyGame_MapId,nNinjaCopyGame_CellX,nNinjaCopyGame_CellY,0,0,0,0)
end

--读条成功
function NinjaCopyGame_Explore(nNinjaCopyGame_TrapId,nNinjaCopyGame_Data,nNinjaCopyGame_UserId)
	local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[1]["Id"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[1]["NewId"]
	end
	-- 删除陷阱
	if Trap_EraseMapTrap(nNinjaCopyGame_TrapId) then
		-- 设置掩码
		nNinjaCopyGame_Data = nNinjaCopyGame_Data + tNinjaCopyGame_TaskId[1]["Add"]
		if not Task_SetTaskDetailData1(nNinjaCopyGame_TaskId,nNinjaCopyGame_Data,nNinjaCopyGame_UserId) then
			return
		end
		
		--删除之前的光效
		local nNinjaCopyGame_DelIndex = nNinjaCopyGame_Data - tNinjaCopyGame_TaskId[1]["Add"]
		if tNinjaCopyGame_Effect[nNinjaCopyGame_DelIndex] ~= nil then
			User_EffectDel("self",tNinjaCopyGame_Effect[nNinjaCopyGame_DelIndex],nNinjaCopyGame_UserId)
		end
		
		-- 获得光效
		if tNinjaCopyGame_Effect[nNinjaCopyGame_Data] ~= nil then
			User_EffectAdd("self",tNinjaCopyGame_Effect[nNinjaCopyGame_Data],nNinjaCopyGame_UserId)
		else
			User_EffectAdd("self","angelwing",nNinjaCopyGame_UserId)
		end
		
		local nNinjaCopyGame_MapId = Get_UserMapId(nNinjaCopyGame_UserId)
		--删除采集地效
		if nNinjaCopyGame_Data == tNinjaCopyGame_TaskId[1]["Add"] then
			Trap_DelMapTrap(nNinjaCopyGame_MapId,tNinjaCopyGame_Trap[6]["TrapType"])
		end
		
		-- 收集能量数量达到200
		if nNinjaCopyGame_Data >= tNinjaCopyGame_TaskId[1]["Limit"] then
			--设置任务掩码完成 
			if Task_SetTaskDetailData1(nNinjaCopyGame_TaskId,nNinjaCopyGame_Data,nNinjaCopyGame_UserId) then
				-- Task_SetTaskDetailCompleteFlag(nNinjaCopyGame_TaskId,1,nNinjaCopyGame_UserId)
				--传送回NPC处
				NinjaCopyGame_Trans(nNinjaCopyGame_UserId)
				Sys_MsgBox(tNinjaCopyGame_Text["Finish"][1],"NpcPosition_PathFind</N>25858",nil,nNinjaCopyGame_UserId)
				User_EffectAdd("self",tNinjaCopyGame_Effect["BaMeng"]["Green"][2],nNinjaCopyGame_UserId)
				return
			end
			
		end
		
		-- 随机陷阱坐标
		local nNinjaCopyGame_TrapIndex = math.random(1,#tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_UserId])
		local tNinjaCopyGame_InitTrap = tNinjaCopyGame_InstanceTrap[nNinjaCopyGame_UserId] or tNinjaCopyGame_Constant["TrapIndex"]
		local nNinjaCopyGame_Num = tNinjaCopyGame_InitTrap[nNinjaCopyGame_TrapIndex]
		--重新创建陷阱
		NinjaCopyGame_CreateTrap(1,nNinjaCopyGame_Num,nNinjaCopyGame_MapId)
		NinjaCopyGame_SetTrapIndex(nNinjaCopyGame_Num,nNinjaCopyGame_UserId)
		
		-- 创建怪物自然之灵
		for k,v in ipairs(tNinjaCopyGame_TaskId[1]["Trigger"]) do
			if nNinjaCopyGame_Data == v then
				NinjaCopyGame_CreatMonster(tNinjaCopyGame_Monster["ShangMen"],nNinjaCopyGame_MapId)
				User_TalkChannel2005(tNinjaCopyGame_Text["Tips"]["ShangMeng"],nNinjaCopyGame_UserId)
			end
		end
		
	end

end

-- 随机加状态
function NinjaCopyGame_RandomStauts()
	
	local nNinjaCopyGame_UserId = Get_UserId()
	
	for k,v in ipairs(tNinjaCopyGame_Status["StautsID"]) do
		--检测玩家身上有无状态
		if User_ChkRoleStatus(v,nNinjaCopyGame_UserId) then
			return
		end
	end
	
	--随机传送
	if Sys_Random(tNinjaCopyGame_Constant["StartNum"],tNinjaCopyGame_Constant["EndNum"]) then
		local nNinjaCopyGame_MapId = Get_UserMapId()
		local nNinjaCopyGame_PosIndex = math.random(1,#tNinjaCopyGame_Pos["Random"])
		local nNinjaCopyGame_PosX = tNinjaCopyGame_Pos["Random"][nNinjaCopyGame_PosIndex]["PosX"]
		local nNinjaCopyGame_PosY = tNinjaCopyGame_Pos["Random"][nNinjaCopyGame_PosIndex]["PosY"]
		
		User_UserRandBoundTrans(nNinjaCopyGame_MapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,5,5,1,nNinjaCopyGame_UserId)
		User_EffectAdd("self",tNinjaCopyGame_Effect["BaMeng"]["Blue"][2],nNinjaCopyGame_UserId)
		return
	end
	
	local nNinjaCopyGame_StatusIndex = math.random(1,#tNinjaCopyGame_Status - 1)
	if nNinjaCopyGame_StatusIndex == 1 then
		User_EffectAdd("self",tNinjaCopyGame_Effect["BaMeng"]["Blue"][2],nNinjaCopyGame_UserId)
	end
	NinjaCopyGame_AddStatus(nNinjaCopyGame_StatusIndex)
	return
end

--删除buff状态
function NinjaCopyGame_DelStauts(nNinjaCopyGame_Index,nNinjaCopyGame_NowUserId)
	local nNinjaCopyGame_UserId = nNinjaCopyGame_NowUserId or Get_UserId()
	local nNinjaCopyGame_Status = tNinjaCopyGame_Status[nNinjaCopyGame_Index]["Status"]
	-- 删除buff状态
	if User_ChkRoleStatus(nNinjaCopyGame_Status,nNinjaCopyGame_UserId) then
		User_DelRoleStatus(nNinjaCopyGame_Status,nNinjaCopyGame_UserId)
	end

end

--景门清除状态和光效
function NinjaCopyGame_JingDel(nNinjaCopyGame_UserId)
	
	NinjaCopyGame_DelStauts(2,nNinjaCopyGame_UserId)
	NinjaCopyGame_DelStauts(5,nNinjaCopyGame_UserId)
	
	for i,v in ipairs(tNinjaCopyGame_Effect["Jing"]) do
		User_EffectDel("self",v,nNinjaCopyGame_UserId)
	end
end
-------------------------------------------------------NPC对白-------------------------------------------------------------------


-------------------------------------------------------陷阱-------------------------------------------------------------------
-- 伤门陷阱
tTrap[2527] = tTrap[2527] or {}
tTrap[2527]["Function"] = function (nNinjaCopyGame_TrapId,nNinjaCopyGame_TrapType)
	
	local nNinjaCopyGame_UserId = Get_UserId()
	local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[1]["Id"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[1]["NewId"]
	end
	local nNinjaCopyGame_Data = Get_TaskDetailData1(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
	
	-- 读条采集
	local nNinjaCopyGame_Secs = tNinjaCopyGame_Constant["Secs"]
	local sNinjaCopyGame_Content = tNinjaCopyGame_Text["Tips"]["Content"]
	local nNinjaCopyGame_ActionId = tNinjaCopyGame_Constant["ActionId"]
	local sNinjaCopyGame_Func = "NinjaCopyGame_Explore</N>" .. nNinjaCopyGame_TrapId .. "</N>" .. nNinjaCopyGame_Data .. "</N>" .. nNinjaCopyGame_UserId
	-- local sNinjaCopyGame_FileFunc = "NinjaCopyGame_ExploreFile</N>" .. nNinjaCopyGame_UserId
	User_SetExplore(nNinjaCopyGame_Secs,sNinjaCopyGame_Content,nNinjaCopyGame_ActionId,sNinjaCopyGame_Func,nil,nNinjaCopyGame_UserId)

end

-- 景门陷阱
tTrap[2528] = tTrap[2528] or {}
tTrap[2528]["Function"] = function (nNinjaCopyGame_TrapId,nNinjaCopyGame_TrapType)
	
	-- 删除陷阱
	if Trap_EraseMapTrap(nNinjaCopyGame_TrapId) then
		-- BUFF层数+1
		local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[3]["Id"]
		if SpecialServer_ChkNoGiftServer() then
			nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[3]["NewId"]
		end
		local nNinjaCopyGame_UserId = Get_UserId()
		local nNinjaCopyGame_Data = Get_TaskDetailData2(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
		
		-- 增加减速状态
		NinjaCopyGame_AddStatus(2,nNinjaCopyGame_UserId)
		
		--重新创建陷阱
		local nNinjaCopyGame_MapId = Get_UserMapId(nNinjaCopyGame_UserId)
		local nNinjaCopyGame_SetData = nNinjaCopyGame_Data+1
		
		if not Task_SetTaskDetailData2(nNinjaCopyGame_TaskId,nNinjaCopyGame_SetData) then
			return
		end
		if nNinjaCopyGame_SetData == 1 then
			Trap_DelMapTrap(nNinjaCopyGame_MapId,tNinjaCopyGame_Trap[6]["TrapType"])
		end
		
		User_TalkChannel2005(string.format(tNinjaCopyGame_Text["Tips"]["JingMeng"],nNinjaCopyGame_SetData),nNinjaCopyGame_UserId)

		if nNinjaCopyGame_SetData >= tNinjaCopyGame_TaskId[3]["Limit"] then
			--加攻击力
			NinjaCopyGame_AddStatus(5,nNinjaCopyGame_UserId)
			
			-- 生成怪物
			local nNinjaCopyGame_Monster = Get_TaskDetailData3(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
			if nNinjaCopyGame_Monster == 0 then
				if Task_SetTaskDetailData3(nNinjaCopyGame_TaskId,1) then
					NinjaCopyGame_CreatMonster(tNinjaCopyGame_Monster["BossId"])
					return
				end
			end
			return
		end
		
		--获得光效
		if nNinjaCopyGame_SetData <= tNinjaCopyGame_TaskId[3]["EffectLimit"][1] then
			User_EffectAdd("self",tNinjaCopyGame_Effect["Jing"][1],nNinjaCopyGame_UserId)
		elseif nNinjaCopyGame_SetData < tNinjaCopyGame_TaskId[3]["EffectLimit"][2] then
			User_EffectDel("self",tNinjaCopyGame_Effect["Jing"][1],nNinjaCopyGame_UserId)
			User_EffectAdd("self",tNinjaCopyGame_Effect["Jing"][2],nNinjaCopyGame_UserId)
		elseif nNinjaCopyGame_SetData <= tNinjaCopyGame_TaskId[3]["Limit"] then
			User_EffectDel("self",tNinjaCopyGame_Effect["Jing"][2],nNinjaCopyGame_UserId)
			User_EffectAdd("self",tNinjaCopyGame_Effect["Jing"][3],nNinjaCopyGame_UserId)
		end
		
		-- 随机陷阱坐标
		local nNinjaCopyGame_Num = math.random(1,#tNinjaCopyGame_Trap[3])
		local nNinjaCopyGame_Index = Get_TaskDetailData4(nNinjaCopyGame_TaskId,nNinjaCopyGame_UserId)
		local nCalLoop = 0
		while nNinjaCopyGame_Index == nNinjaCopyGame_Num do
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 tTrap[2528] 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			nNinjaCopyGame_Num = math.random(1,#tNinjaCopyGame_Trap[3])
		end
		
		if Task_SetTaskDetailData4(nNinjaCopyGame_TaskId,nNinjaCopyGame_Num,nNinjaCopyGame_UserId) then
			NinjaCopyGame_CreateTrap(3,nNinjaCopyGame_Num,nNinjaCopyGame_MapId)
		end

	end
	
end

-- 杜门传送陷阱
tTrap[2529] = tTrap[2529] or {}
tTrap[2529]["Function"] = function (nNinjaCopyGame_TrapId,nNinjaCopyGame_TrapType)
	local nNinjaCopyGame_NowUserId = Get_UserId()
	local nNinjaCopyGame_MapId = Get_UserMapId()
	local nNinjaCopyGame_PosX = tNinjaCopyGame_Pos["Trans"]["PosX"]
	local nNinjaCopyGame_PosY = tNinjaCopyGame_Pos["Trans"]["PosY"]
	
	User_UserRandBoundTrans(nNinjaCopyGame_MapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,5,5,1,nNinjaCopyGame_NowUserId)
end

-- 杜门终点陷阱
tTrap[2530] = tTrap[2530] or {}
tTrap[2530]["Function"] = function (nNinjaCopyGame_TrapId,nNinjaCopyGame_TrapType)
	
	--设置掩码完成 
	local nNinjaCopyGame_UserId = Get_UserId()
	local nNinjaCopyGame_TaskId = tNinjaCopyGame_TaskId[2]["Id"]
	if not Task_SetTaskDetailData1(nNinjaCopyGame_TaskId,1) then
		return
	end
	
	--删除定时器
	User_SetTimer(tNinjaCopyGame_Constant["Timer"]["Del"],nil,1,nNinjaCopyGame_UserId)
	
	-- Task_SetTaskDetailCompleteFlag(nNinjaCopyGame_TaskId,1,nNinjaCopyGame_UserId)
	--传送回NPC处
	local nNinjaCopyGame_MapId = tNinjaCopyGame_Pos["Ending"]["Mapid"]
	local nNinjaCopyGame_PosX = tNinjaCopyGame_Pos["Ending"]["PosX"]
	local nNinjaCopyGame_PosY = tNinjaCopyGame_Pos["Ending"]["PosY"]
	
	User_UserRandBoundTrans(nNinjaCopyGame_MapId,nNinjaCopyGame_PosX,nNinjaCopyGame_PosY,5,5,1,nNinjaCopyGame_UserId)
	User_EffectAdd("self",tNinjaCopyGame_Effect["BaMeng"]["Blue"][2],nNinjaCopyGame_UserId)
end

--杜门随机状态陷阱
tTrap[2548] = tTrap[2548] or {}
tTrap[2548]["Function"] = function (nNinjaCopyGame_TrapId,nNinjaCopyGame_TrapType)
	NinjaCopyGame_RandomStauts()
end
---------------------------------怪物部分---------------------------------------------
-- 击杀获得Buff
local tNinjaCopyGame_MonsterBuff_NoG = {}
tNinjaCopyGame_MonsterBuff_NoG["Function"]= NinjaCopyGame_Monster
tNinjaCopyGame_MonsterBuff_NoG["MonsterId"]= {5915}
table.insert(tMonsterDrop_AreaLoad_NoGift,tNinjaCopyGame_MonsterBuff_NoG)

local tNinjaCopyGame_MonsterBuff = {}
tNinjaCopyGame_MonsterBuff["Function"]= NinjaCopyGame_Monster
tNinjaCopyGame_MonsterBuff["MonsterId"]= {5915}
table.insert(tMonsterDrop_AreaLoad,tNinjaCopyGame_MonsterBuff)

-- 景门boss
local tNinjaCopyGame_Boss_NoG = {}
tNinjaCopyGame_Boss_NoG["Function"]= NinjaCopyGame_Boss
tNinjaCopyGame_Boss_NoG["MonsterId"]= {5917}
table.insert(tMonsterDrop_AreaLoad_NoGift,tNinjaCopyGame_Boss_NoG)

local tNinjaCopyGame_Boss = {}
tNinjaCopyGame_Boss["Function"]= NinjaCopyGame_Boss
tNinjaCopyGame_Boss["MonsterId"]= {5917}
table.insert(tMonsterDrop_AreaLoad,tNinjaCopyGame_Boss)

-- 惊门任务怪
local tNinjaCopyGame_TaskBoss_NoG = {}
tNinjaCopyGame_TaskBoss_NoG["Function"]= NinjaCopyGame_TaskBoss
tNinjaCopyGame_TaskBoss_NoG["MonsterId"]= {5916}
table.insert(tMonsterDrop_AreaLoad_NoGift,tNinjaCopyGame_TaskBoss_NoG)

local tNinjaCopyGame_TaskBoss = {}
tNinjaCopyGame_TaskBoss["Function"]= NinjaCopyGame_TaskBoss
tNinjaCopyGame_TaskBoss["MonsterId"]= {5916}
table.insert(tMonsterDrop_AreaLoad,tNinjaCopyGame_TaskBoss)
