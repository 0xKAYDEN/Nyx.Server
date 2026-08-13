---Name:151217[移动端征服][活动脚本]BOSS百层塔制作
--Creator: 	陈莺
--Created:	2015-12-17
--------------------------------------------------------------------------------
--npc 
--18965,'百层塔总兵'
--18966,'百层塔总兵'
-- 18967,'百层塔一阶传送使'
-- 18968,'百层塔二阶传送使'
-- 18969,'百层塔三阶传送使'
-- 18970,'百层塔四阶传送使'
-- 18971,'百层塔五阶传送使'
-- 18972,'百层塔六阶传送使'
-- 18973,'百层塔七阶传送使'
-- 18974,'百层塔八阶传送使'
-- 18975,'百层塔九阶传送使'
-- 18976,'百层塔十阶传送使'
-- 18977,'百层塔护卫'

--物品
-- 3008899  流星卷碎片
-- 3007979  龙珠碎片
-- 3007980  固化石碎片
-- 3007981  金钢坚钻碎片
-- 730001  赤炼石+1  "730001 0 0 0 4320 1"
-- 730002  赤炼石+2
-- 730003  赤炼石+3
--logid  12000311
--logid 12000313
--掩码说明
--stc(139,68) 记录解锁的层数
--stc(139,69)  记录一天免费挑战次数
--stc(139,70)  记录一天购买挑战次数
--stc(139,71)  存放层数
--stc(139,72)  记录1-20层今天是否已挑战

--stc(142,08) - stc(142,11)  用来记录今天该层是否已经挑战过
--stc(142,12) 记录是否已经招过怪

--命名规范
--BossHunderdTower_
---------------------扫塔道人
--npc 
--19264,'扫塔道人'
--物品
-- 3008453  如意天石劵
--掩码说明
--stc(145,03)  =1 表示接任务 =2 表示已领取奖励
--stc(145,04)  存放随机的第1个层数
--stc(145,05)  存放随机的第2个层数
------------------------------------------------------------------------------------------
local tBossHunderdTower_TimeData = {}
	tBossHunderdTower_TimeData["Activity"] = tActivityTime["BossHunderdTower"]["Activity"]
	tBossHunderdTower_TimeData["TimeEmoney"] = 9  --购买挑战次数一次9天石
	tBossHunderdTower_TimeData["Emoney"] = 5  --扫荡一次5天石
	tBossHunderdTower_TimeData["CostItem"] = 720027  --扫荡一次1个流星卷
	tBossHunderdTower_TimeData["Space"] = 2  --扫荡背包空间
	tBossHunderdTower_TimeData["Log"] =  "0,0,%d,%d,12001261,3,0,0"

	
	
local tBossHunderdTower_Stc = {}
--记录通过的层数
tBossHunderdTower_Stc["Floor"] = {}
tBossHunderdTower_Stc["Floor"]["EventType"] = 139
tBossHunderdTower_Stc["Floor"]["DataType"] = 68

--记录一天免费挑战次数
tBossHunderdTower_Stc["ChallengeTime"] = {}
tBossHunderdTower_Stc["ChallengeTime"]["EventType"] = 139
tBossHunderdTower_Stc["ChallengeTime"]["DataType"] = 69
tBossHunderdTower_Stc["ChallengeTime"]["Data"] = 5

--记录一天购买挑战次数
tBossHunderdTower_Stc["BuyTime"] = {}
tBossHunderdTower_Stc["BuyTime"]["EventType"] = 139
tBossHunderdTower_Stc["BuyTime"]["DataType"] = 70
tBossHunderdTower_Stc["BuyTime"]["Data"] = 5

--存放层数
tBossHunderdTower_Stc["FloorNum"] = {}
tBossHunderdTower_Stc["FloorNum"]["EventType"] = 139
tBossHunderdTower_Stc["FloorNum"]["DataType"] = 71

--记录1-20层今天是否已挑战
tBossHunderdTower_Stc[1] = {}
tBossHunderdTower_Stc[1]["EventType"] = 139
tBossHunderdTower_Stc[1]["DataType"] = 72
--21-40
tBossHunderdTower_Stc[2] = {}
tBossHunderdTower_Stc[2]["EventType"] = 142
tBossHunderdTower_Stc[2]["DataType"] = 08
--41-60
tBossHunderdTower_Stc[3] = {}
tBossHunderdTower_Stc[3]["EventType"] = 142
tBossHunderdTower_Stc[3]["DataType"] = 09
--61-80
tBossHunderdTower_Stc[4] = {}
tBossHunderdTower_Stc[4]["EventType"] = 142
tBossHunderdTower_Stc[4]["DataType"] = 10
--81-100
tBossHunderdTower_Stc[5] = {}
tBossHunderdTower_Stc[5]["EventType"] = 142
tBossHunderdTower_Stc[5]["DataType"] = 11

--招出怪的标志
-- tBossHunderdTower_Stc["Boss"] = {}
-- tBossHunderdTower_Stc["Boss"]["EventType"] = 142
-- tBossHunderdTower_Stc["Boss"]["DataType"] = 18
--获得百层通关奖
tBossHunderdTower_Stc["Get"] = {}
tBossHunderdTower_Stc["Get"]["EventType"] = 179
tBossHunderdTower_Stc["Get"]["DataType"] = 60


---------------------------------------新增通关奖励
-----标志领取通关奖励
tBossHunderdTower_Stc["Add"] = {}
tBossHunderdTower_Stc["Add"]["EventType"] = 160
tBossHunderdTower_Stc["Add"]["DataType"] = 22
local tBossHunderdTower_Add = {}
	tBossHunderdTower_Add[1] = 1
	tBossHunderdTower_Add[2] = 2
	tBossHunderdTower_Add[3] = 4
	tBossHunderdTower_Add[4] = 8
	tBossHunderdTower_Add[5] = 16
	tBossHunderdTower_Add[6] = 32
	tBossHunderdTower_Add[7] = 64
	tBossHunderdTower_Add[8] = 128
	tBossHunderdTower_Add[9] = 256
	tBossHunderdTower_Add[10] = 512
	tBossHunderdTower_Add[11] = 1024
	tBossHunderdTower_Add[12] = 2048
	tBossHunderdTower_Add[13] = 4096
	tBossHunderdTower_Add[14] = 8192
	tBossHunderdTower_Add[15] = 16384
	tBossHunderdTower_Add[16] = 32768
	tBossHunderdTower_Add[17] = 65536
	tBossHunderdTower_Add[18] = 131072
	tBossHunderdTower_Add[19] = 262144
	tBossHunderdTower_Add[20] = 524288
	
	
	
local tBossHunderdTower_AddItem = {}
	tBossHunderdTower_AddItem[5] = {}
	tBossHunderdTower_AddItem[5]["LogId"] = 12000311
	tBossHunderdTower_AddItem[5]["LogStep"] = "3[5]"
	tBossHunderdTower_AddItem[5]["Space"] = 1
	tBossHunderdTower_AddItem[5]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[5]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[5]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[5]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[5]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[5]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[5]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[10] = {}
	tBossHunderdTower_AddItem[10]["LogId"] = 12000311
	tBossHunderdTower_AddItem[10]["LogStep"] = "3[10]"
	tBossHunderdTower_AddItem[10]["Space"] = 1
	tBossHunderdTower_AddItem[10]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[10]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[10]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[10]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[10]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[10]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[10]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[15] = {}
	tBossHunderdTower_AddItem[15]["LogId"] = 12000311
	tBossHunderdTower_AddItem[15]["LogStep"] = "3[15]"
	tBossHunderdTower_AddItem[15]["Space"] = 1
	tBossHunderdTower_AddItem[15]["RewardItem"] = {}
	tBossHunderdTower_AddItem[15]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[15]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[15]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[15]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[15]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[15]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[20] = {}
	tBossHunderdTower_AddItem[20]["LogId"] = 12000311
	tBossHunderdTower_AddItem[20]["LogStep"] = "3[20]"
	tBossHunderdTower_AddItem[20]["Space"] = 1
	tBossHunderdTower_AddItem[20]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[20]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[20]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[20]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[20]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[20]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[20]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[25] = {}
	tBossHunderdTower_AddItem[25]["LogId"] = 12000311
	tBossHunderdTower_AddItem[25]["LogStep"] = "3[25]"
	tBossHunderdTower_AddItem[25]["Space"] = 1
	tBossHunderdTower_AddItem[25]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[25]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[25]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[25]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[25]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[25]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[25]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[30] = {}
	tBossHunderdTower_AddItem[30]["LogId"] = 12000311
	tBossHunderdTower_AddItem[30]["LogStep"] = "3[30]"
	tBossHunderdTower_AddItem[30]["Space"] = 1
	tBossHunderdTower_AddItem[30]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[30]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[30]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[30]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[30]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[30]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[30]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[35] = {}
	tBossHunderdTower_AddItem[35]["LogId"] = 12000311
	tBossHunderdTower_AddItem[35]["LogStep"] = "3[35]"
	tBossHunderdTower_AddItem[35]["Space"] = 1
	tBossHunderdTower_AddItem[35]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[35]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[35]["RewardItem"][1]["Id"] = 3309097  
	tBossHunderdTower_AddItem[35]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[35]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[35]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[35]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[40] = {}
	tBossHunderdTower_AddItem[40]["LogId"] = 12000311
	tBossHunderdTower_AddItem[40]["LogStep"] = "3[40]"
	tBossHunderdTower_AddItem[40]["Space"] = 1
	tBossHunderdTower_AddItem[40]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[40]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[40]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[40]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[40]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[40]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[40]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[45] = {}
	tBossHunderdTower_AddItem[45]["LogId"] = 12000311
	tBossHunderdTower_AddItem[45]["LogStep"] = "3[45]"
	tBossHunderdTower_AddItem[45]["Space"] = 1
	tBossHunderdTower_AddItem[45]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[45]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[45]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[45]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[45]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[45]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[45]["RewardEffect"]["Effect"] = "zf2-e128"
	tBossHunderdTower_AddItem[50] = {}
	tBossHunderdTower_AddItem[50]["LogId"] = 12000311
	tBossHunderdTower_AddItem[50]["LogStep"] = "3[50]"
	tBossHunderdTower_AddItem[50]["Space"] = 1
	tBossHunderdTower_AddItem[50]["RewardItem"] = {}
	tBossHunderdTower_AddItem[50]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[50]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[50]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[50]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[50]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[50]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tBossHunderdTower_AddItem[55] = {}
	tBossHunderdTower_AddItem[55]["LogId"] = 12000311
	tBossHunderdTower_AddItem[55]["LogStep"] = "3[55]"
	tBossHunderdTower_AddItem[55]["Space"] = 1
	tBossHunderdTower_AddItem[55]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[55]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[55]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[55]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[55]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[55]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[55]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[60] = {}
	tBossHunderdTower_AddItem[60]["LogId"] = 12000311
	tBossHunderdTower_AddItem[60]["LogStep"] = "3[60]"
	tBossHunderdTower_AddItem[60]["Space"] = 1
	tBossHunderdTower_AddItem[60]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[60]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[60]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[60]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[60]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[60]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[60]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[65] = {}
	tBossHunderdTower_AddItem[65]["LogId"] = 12000311
	tBossHunderdTower_AddItem[65]["LogStep"] = "3[65]"
	tBossHunderdTower_AddItem[65]["Space"] = 1
	tBossHunderdTower_AddItem[65]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[65]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[65]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[65]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[65]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[65]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[65]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[70] = {}
	tBossHunderdTower_AddItem[70]["LogId"] = 12000311
	tBossHunderdTower_AddItem[70]["LogStep"] = "3[70]"
	tBossHunderdTower_AddItem[70]["Space"] = 1
	tBossHunderdTower_AddItem[70]["RewardItem"] = {}
	tBossHunderdTower_AddItem[70]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[70]["RewardItem"][1]["Id"] = 3309098  
	tBossHunderdTower_AddItem[70]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[70]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[70]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[70]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[75] = {}
	tBossHunderdTower_AddItem[75]["LogId"] = 12000311
	tBossHunderdTower_AddItem[75]["LogStep"] = "3[75]"
	tBossHunderdTower_AddItem[75]["Space"] = 1
	tBossHunderdTower_AddItem[75]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[75]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[75]["RewardItem"][1]["Id"] = 3316102--3309099  
	tBossHunderdTower_AddItem[75]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[75]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[75]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[75]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[80] = {}
	tBossHunderdTower_AddItem[80]["LogId"] = 12000311
	tBossHunderdTower_AddItem[80]["LogStep"] = "3[80]"
	tBossHunderdTower_AddItem[80]["Space"] = 1
	tBossHunderdTower_AddItem[80]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[80]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[80]["RewardItem"][1]["Id"] = 3316102--3309099    
	tBossHunderdTower_AddItem[80]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[80]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[80]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[80]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[85] = {}
	tBossHunderdTower_AddItem[85]["LogId"] = 12000311
	tBossHunderdTower_AddItem[85]["LogStep"] = "3[85]"
	tBossHunderdTower_AddItem[85]["Space"] = 1
	tBossHunderdTower_AddItem[85]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[85]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[85]["RewardItem"][1]["Id"] = 3316102--3309099    
	tBossHunderdTower_AddItem[85]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[85]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[85]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[85]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[90] = {}
	tBossHunderdTower_AddItem[90]["LogId"] = 12000311
	tBossHunderdTower_AddItem[90]["LogStep"] = "3[90]"
	tBossHunderdTower_AddItem[90]["Space"] = 1
	tBossHunderdTower_AddItem[90]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[90]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[90]["RewardItem"][1]["Id"] = 3316102--3309099    
	tBossHunderdTower_AddItem[90]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[90]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[90]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[90]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[95] = {}
	tBossHunderdTower_AddItem[95]["LogId"] = 12000311
	tBossHunderdTower_AddItem[95]["LogStep"] = "3[95]"
	tBossHunderdTower_AddItem[95]["Space"] = 1
	tBossHunderdTower_AddItem[95]["RewardItem"] = {} 
	tBossHunderdTower_AddItem[95]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[95]["RewardItem"][1]["Id"] = 3316102--3309099    
	tBossHunderdTower_AddItem[95]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[95]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[95]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[95]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem[100] = {}
	tBossHunderdTower_AddItem[100]["LogId"] = 12000311
	tBossHunderdTower_AddItem[100]["LogStep"] = "3[100]"
	tBossHunderdTower_AddItem[100]["Space"] = 1
	tBossHunderdTower_AddItem[100]["RewardItem"] = {}  
	tBossHunderdTower_AddItem[100]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem[100]["RewardItem"][1]["Id"] = 3316102--3309099    
	tBossHunderdTower_AddItem[100]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem[100]["RewardEffect"] = {}
	tBossHunderdTower_AddItem[100]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem[100]["RewardEffect"]["Effect"] = "zf2-e128"

	--勇士
	tBossHunderdTower_AddItem["Badge"] = {}
	tBossHunderdTower_AddItem["Badge"][1] = {}
	tBossHunderdTower_AddItem["Badge"][1]["ProMin"] = G_PRO_Trojan0_New
	tBossHunderdTower_AddItem["Badge"][1]["ProMax"] = G_PRO_Trojan49_New
	tBossHunderdTower_AddItem["Badge"][1]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][1]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][1]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][1]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][1]["RewardItem"][1]["Id"] = 3313344   --战勇徽章
	tBossHunderdTower_AddItem["Badge"][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][1]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][1]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tBossHunderdTower_AddItem["Badge"][2] = {}
	tBossHunderdTower_AddItem["Badge"][2]["ProMin"] = G_PRO_Pirate0_New
	tBossHunderdTower_AddItem["Badge"][2]["ProMax"] = G_PRO_Pirate49_New
	tBossHunderdTower_AddItem["Badge"][2]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][2]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][2]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][2]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][2]["RewardItem"][1]["Id"] = 3313346   --海盗徽章
	tBossHunderdTower_AddItem["Badge"][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][2]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][2]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][2]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][3] = {}
	tBossHunderdTower_AddItem["Badge"][3]["ProMin"] = G_PRO_Archer0_New
	tBossHunderdTower_AddItem["Badge"][3]["ProMax"] = G_PRO_Archer49_New
	tBossHunderdTower_AddItem["Badge"][3]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][3]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][3]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][3]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][3]["RewardItem"][1]["Id"] = 3313347   --弓手徽章
	tBossHunderdTower_AddItem["Badge"][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][3]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][3]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][3]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][4] = {}
	tBossHunderdTower_AddItem["Badge"][4]["ProMin"] = G_PRO_IroFan0_New
	tBossHunderdTower_AddItem["Badge"][4]["ProMax"] = G_PRO_IroFan49_New
	tBossHunderdTower_AddItem["Badge"][4]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][4]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][4]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][4]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][4]["RewardItem"][1]["Id"] = 3313348   --铁扇徽章
	tBossHunderdTower_AddItem["Badge"][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][4]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][4]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][4]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][5] = {}
	tBossHunderdTower_AddItem["Badge"][5]["ProMin"] = G_PRO_Taoist0_New
	tBossHunderdTower_AddItem["Badge"][5]["ProMax"] = G_PRO_FireTaoist49_New
	tBossHunderdTower_AddItem["Badge"][5]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][5]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][5]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][5]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][5]["RewardItem"][1]["Id"] = 3313349   --道士徽章
	tBossHunderdTower_AddItem["Badge"][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][5]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][5]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][5]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][6] = {}
	tBossHunderdTower_AddItem["Badge"][6]["ProMin"] = G_PRO_Monk0_New
	tBossHunderdTower_AddItem["Badge"][6]["ProMax"] = G_PRO_Monk49_New
	tBossHunderdTower_AddItem["Badge"][6]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][6]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][6]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][6]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][6]["RewardItem"][1]["Id"] = 3313350   --圣僧徽章
	tBossHunderdTower_AddItem["Badge"][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][6]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][6]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][6]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][7] = {}
	tBossHunderdTower_AddItem["Badge"][7]["ProMin"] = G_PRO_Ninja0_New
	tBossHunderdTower_AddItem["Badge"][7]["ProMax"] = G_PRO_Ninja49_New
	tBossHunderdTower_AddItem["Badge"][7]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][7]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][7]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][7]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][7]["RewardItem"][1]["Id"] = 3313351   --忍者徽章
	tBossHunderdTower_AddItem["Badge"][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][7]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][7]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][7]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][8] = {}
	tBossHunderdTower_AddItem["Badge"][8]["ProMin"] = G_PRO_Dragon0_New
	tBossHunderdTower_AddItem["Badge"][8]["ProMax"] = G_PRO_Dragon49_New
	tBossHunderdTower_AddItem["Badge"][8]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][8]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][8]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][8]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][8]["RewardItem"][1]["Id"] = 3313352   --小龙徽章
	tBossHunderdTower_AddItem["Badge"][8]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][8]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][8]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][8]["RewardEffect"]["Effect"] = "zf2-e128"

	tBossHunderdTower_AddItem["Badge"][9] = {}
	tBossHunderdTower_AddItem["Badge"][9]["ProMin"] = G_PRO_Thor0_New
	tBossHunderdTower_AddItem["Badge"][9]["ProMax"] = G_PRO_Thor49_New
	tBossHunderdTower_AddItem["Badge"][9]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][9]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][9]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][9]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][9]["RewardItem"][1]["Id"] = 3313353   --斗神徽章
	tBossHunderdTower_AddItem["Badge"][9]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][9]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][9]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][9]["RewardEffect"]["Effect"] = "zf2-e128"
--战士
	tBossHunderdTower_AddItem["Badge"][10] = {}
	tBossHunderdTower_AddItem["Badge"][10]["ProMin"] = G_PRO_Warrior0_New
	tBossHunderdTower_AddItem["Badge"][10]["ProMax"] = G_PRO_Warrior49_New
	tBossHunderdTower_AddItem["Badge"][10]["LogId"] = 12000311
	tBossHunderdTower_AddItem["Badge"][10]["LogStep"] = "2[1]"
	tBossHunderdTower_AddItem["Badge"][10]["RewardItem"] = {}  
	tBossHunderdTower_AddItem["Badge"][10]["RewardItem"][1] = {}
	tBossHunderdTower_AddItem["Badge"][10]["RewardItem"][1]["Id"] = 3313344   --战勇徽章
	tBossHunderdTower_AddItem["Badge"][10]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_AddItem["Badge"][10]["RewardEffect"] = {}
	tBossHunderdTower_AddItem["Badge"][10]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_AddItem["Badge"][10]["RewardEffect"]["Effect"] = "zf2-e128"
	
---每天每层只能挑战一次 2进制掩码值
local tBossHunderdTower_Num = {}
--1-20
	for i = 1,20 do
		tBossHunderdTower_Num[i] = 2^(i-1)
	end
	
local tBossHunderdTower_Data = {}

	-- tBossHunderdTower_Data["MapId"] = 3997 --塔内地图
	tBossHunderdTower_Data["PosX"] = 50
	tBossHunderdTower_Data["PosY"] = 50
	tBossHunderdTower_Data["GenId"] = 18346
	tBossHunderdTower_Data["Instancetype"] = 33
	tBossHunderdTower_Data["Level"] = 100
	tBossHunderdTower_Data["Metempsychosis"] = 0
	tBossHunderdTower_Data["nNpcId"] = 18965 ---双龙城百层塔总兵id
	tBossHunderdTower_Data["GotoEffect"] = "movego"
	tBossHunderdTower_Data["BossEffect"] = "5fire-Boos"
	tBossHunderdTower_Data["GetEffect"] = "angelwing"
	tBossHunderdTower_Data["Time"] = 3
	tBossHunderdTower_Data["Space"] = 1
	tBossHunderdTower_Data["Emoney"] = {}
	tBossHunderdTower_Data["Emoney"][1]= 27
	tBossHunderdTower_Data["Emoney"][2] = 45
	tBossHunderdTower_Data["Emoney"][3] = 63
	tBossHunderdTower_Data["Emoney"][4] = 81
	tBossHunderdTower_Data["Emoney"][5] = 99
	tBossHunderdTower_Data["Emoney"]["Sweep"] = 10
----怪物表
local tBossHunderdTower_MonsterData = {}
	for i = 1,100 do
		tBossHunderdTower_MonsterData[i] = 3710 +i
	end
--------战斗力
local tBossHunderdTower_Fighting = {}
	for i = 1,100 do
		tBossHunderdTower_Fighting[i] = 162 + (i-1)*2
	end


-- 12000311
local tBossHunderdTower_Log = {}
	tBossHunderdTower_Log["CallBoss"] = "0,0,0,0,12000311,1,0,0" ---刷出boss log
	tBossHunderdTower_Log["NextFloor"] = "0,0,0,0,12000311,1,%d,1" ---进入第几次百层塔 log
	tBossHunderdTower_Log["Get"] = "0,0,0,0,12000311,2,%d,1" ---获得物品 log
	tBossHunderdTower_Log["SweepGet"] = "%d,0,0,0,12000311,2,%d,1" ---扫荡获得物品 log
	tBossHunderdTower_Log["BuyTime"] = "%d,0,0,0,12000311,2,0,0" ---购买次数

local tBossHunderdTower_Map = {}
-----双龙城百层塔总兵 进入镇妖堂
	tBossHunderdTower_Map[18965] = {}
	tBossHunderdTower_Map[18965]["MapId"] = 1002
	tBossHunderdTower_Map[18965]["PosX"] = 355
	tBossHunderdTower_Map[18965]["PosY"] = 489
	
-----百层塔总兵 回活动区坐标（该配置无用）
	tBossHunderdTower_Map[18966] = {}
	tBossHunderdTower_Map[18966]["MapId"] = 1002
	tBossHunderdTower_Map[18966]["PosX"] = 355
	tBossHunderdTower_Map[18966]["PosY"] = 489

-----百层塔护卫 回双龙城。
	tBossHunderdTower_Map[18977] = {}
	tBossHunderdTower_Map[18977]["MapId"] = 1002
	tBossHunderdTower_Map[18977]["PosX"] = 355 --300
	tBossHunderdTower_Map[18977]["PosY"] = 489 --230
	--副本
	tBossHunderdTower_Map[1] = {}
	tBossHunderdTower_Map[1]["MapId"] = 3999
	tBossHunderdTower_Map[1]["PosX"] = 39 --300
	tBossHunderdTower_Map[1]["PosY"] = 50 --230
	
	
---物品
	local tBossHunderdTower_AreaItemId = {}
	-- for i = 1,20 do
		-- tBossHunderdTower_AreaItemId[i] = 3008815 + i
	-- end
	--新物品
	for i = 1,20 do
		tBossHunderdTower_AreaItemId[i] = 3200823 + i
	end
	tBossHunderdTower_AreaItemId["Attr"] = "0 1 0 2880 1"
---emoneylog表
local tBossHunderdTower_EmoneyLog = {}
	tBossHunderdTower_EmoneyLog[9] = "350	4431	%d	%d	1	"
	tBossHunderdTower_EmoneyLog[45] = "350	4432	45	45	1	"
	tBossHunderdTower_EmoneyLog[63] = "350	4433	63	63	1	"
	tBossHunderdTower_EmoneyLog[81] = "350	4434	81	81	1	"
	tBossHunderdTower_EmoneyLog[99] = "350	4435	99	99	1	"
	
	tBossHunderdTower_EmoneyLog["Clear"] = "350	4436	%d	%d	1	"  --扫荡log
---道士的怪对应的普通怪-方便给礼包
local tBossHunderdTower_Priest = {}
	for i = 3827,3926 do
		tBossHunderdTower_Priest[i] = i - 116
	end
-- 道士招怪
local tBossHunderdTower_PriestMonster = {}
	for i = 1,100 do
		tBossHunderdTower_PriestMonster[i] = 3826 + i
	end
local tBossHunderdTower_PriestData = {}
	tBossHunderdTower_PriestData["Min"] = G_PRO_Taoist0
	tBossHunderdTower_PriestData["Max"] = G_PRO_FireTaoist5
	--武僧
	tBossHunderdTower_PriestData["WuMin"] = G_PRO_Monk0
	tBossHunderdTower_PriestData["WuMax"] = G_PRO_Monk5

local tBossHunderdTower_ItemData = {}

	tBossHunderdTower_ItemData[3200824] = 3008816
	tBossHunderdTower_ItemData[3200825] = 3008817
	tBossHunderdTower_ItemData[3200826] = 3008818
	tBossHunderdTower_ItemData[3200827] = 3008819
	tBossHunderdTower_ItemData[3200828] = 3008820
	tBossHunderdTower_ItemData[3200829] = 3008821
	tBossHunderdTower_ItemData[3200830] = 3008822
	tBossHunderdTower_ItemData[3200831] = 3008823
	tBossHunderdTower_ItemData[3200832] = 3008824
	tBossHunderdTower_ItemData[3200833] = 3008825
	tBossHunderdTower_ItemData[3200834] = 3008826
	tBossHunderdTower_ItemData[3200835] = 3008827
	tBossHunderdTower_ItemData[3200836] = 3008828
	tBossHunderdTower_ItemData[3200837] = 3008829
	tBossHunderdTower_ItemData[3200838] = 3008830
	tBossHunderdTower_ItemData[3200839] = 3008831
	tBossHunderdTower_ItemData[3200840] = 3008832
	tBossHunderdTower_ItemData[3200841] = 3008833
	tBossHunderdTower_ItemData[3200842] = 3008834
	tBossHunderdTower_ItemData[3200843] = 3008835


------------------------------------------------------表配置---------------------------------------------------------------
local tBossHunderdTower ={}
------------------------------------------------------神魂物品---------------------------------------------------------------
tBossHunderdTower["Gweapons"] = {}
tBossHunderdTower["Gweapons"][1] = 800090 	 --澜晶锤 一阶锤神魂
tBossHunderdTower["Gweapons"][2] = 800018 	--醉虹刀 一阶刀神魂
tBossHunderdTower["Gweapons"][3] = 800310 	--聚澜棍 一阶棍神魂
tBossHunderdTower["Gweapons"][4] = 800614 	 --凰翎弓 一阶弓神魂
tBossHunderdTower["Gweapons"][5] = 800914	--怒穹飞刀	一阶飞刀神魂
tBossHunderdTower["Gweapons"][6] = 800805	--自由之剑	一阶刺剑神魂
tBossHunderdTower["Gweapons"][7] = 800800	--和平之枪	一阶火枪神魂
tBossHunderdTower["Gweapons"][8] = 800721	--漩晶宝珠	一阶念珠神魂
tBossHunderdTower["Gweapons"][9] = 800130   	--锋则月华	一阶忍刀神魂
tBossHunderdTower["Gweapons"][10] = 800251	--索命飞镰	一阶钩镰神魂
tBossHunderdTower["Gweapons"][11] = 800514	--御宵神剑	一阶法剑神魂
tBossHunderdTower["Gweapons"][12] =820001	--翼火宝盔	一阶头盔神魂
tBossHunderdTower["Gweapons"][13] =822001	--翼火宝衣	一阶衣服神魂
tBossHunderdTower["Gweapons"][14] =824001	--翼火宝靴	一阶靴子神魂
tBossHunderdTower["Gweapons"][15] =800401	--翼火宝盾	一阶盾牌神魂
tBossHunderdTower["Gweapons"][16] =800413	--逆鳞宝盾	一阶盾牌神魂
tBossHunderdTower["Gweapons"][17] =823040	--飞霜宝戒	一阶戒指神魂
tBossHunderdTower["Gweapons"][18] = 823046	--玲珑宝戒	一阶戒指神魂
tBossHunderdTower["Gweapons"][19] =823042	--相思宝镯	一阶手镯神魂
tBossHunderdTower["Gweapons"][20] =823048	--柔云宝镯	一阶手镯神魂
--新增一阶神魂
tBossHunderdTower["Gweapons"][21] =820077	--精玄头盔	一阶头部神魂
tBossHunderdTower["Gweapons"][22] =820079	--冰羽头饰	一阶头部神魂
tBossHunderdTower["Gweapons"][23] =822073	--玄鳌灵铠	一阶衣服神魂
tBossHunderdTower["Gweapons"][24] =822076	--青木法衣	一阶衣服神魂
tBossHunderdTower["Gweapons"][25] =824021	--千里宝靴	一阶鞋子神魂
tBossHunderdTower["Gweapons"][26] =824025	--千寻宝靴	一阶鞋子神魂
tBossHunderdTower["Gweapons"][27] =821035	--天光灵坠	一阶项链神魂
tBossHunderdTower["Gweapons"][28] =821038	--幽香宝囊	一阶香囊神魂


tBossHunderdTower["Gweapons"][29] =820054	--风莲头饰	二阶头部神魂
tBossHunderdTower["Gweapons"][30] =820055	--靛羽头饰	二阶头部神魂
tBossHunderdTower["Gweapons"][31] =822052	--潜蛟宝铠	二阶衣服神魂
tBossHunderdTower["Gweapons"][32] =822054	--玄浪宝衣	二阶衣服神魂
tBossHunderdTower["Gweapons"][33] =800420	--天晶盾	二阶盾牌神魂
tBossHunderdTower["Gweapons"][34] =823047	--墨渊宝戒	二阶戒指神魂
tBossHunderdTower["Gweapons"][35] =823049	--千雪宝镯	二阶手镯神魂
--新增二阶神魂
tBossHunderdTower["Gweapons"][36] =824022	--踏云天靴	二阶鞋子神魂
tBossHunderdTower["Gweapons"][37] =824026	--碧落晶靴	二阶鞋子神魂
tBossHunderdTower["Gweapons"][38] =821036	--冰澜晶坠	二阶项链神魂
tBossHunderdTower["Gweapons"][39] =821039	--涵苓香囊	二阶香囊神魂
tBossHunderdTower["Gweapons"][40] =800021	--碎云剑	二阶剑神魂
tBossHunderdTower["Gweapons"][41] =800072	--撼岳斧	二阶斧神魂
tBossHunderdTower["Gweapons"][42] =800216	--啸风长刀	二阶长刀神魂
tBossHunderdTower["Gweapons"][43] =800523	--破风秋水剑	二阶法剑神魂
tBossHunderdTower["Gweapons"][44] =800619	--蛟弦弓	二阶弓神魂
tBossHunderdTower["Gweapons"][45] =800918	--裂空飞刀	二阶飞刀神魂
tBossHunderdTower["Gweapons"][46] =800726	--碎木宝珠	二阶念珠神魂
tBossHunderdTower["Gweapons"][47] =800812	--光明之剑	二阶刺剑神魂
tBossHunderdTower["Gweapons"][48] =800814	--正义之枪	二阶火枪神魂
tBossHunderdTower["Gweapons"][49] =800143	--新月宗近	二阶忍刀神魂
tBossHunderdTower["Gweapons"][50] =800260	--百鬼飞镰	二阶钩镰神魂


tBossHunderdTower["Gweapons"][51] =800019	--五曜斩灵刀	三阶刀神魂
tBossHunderdTower["Gweapons"][52] =800050	--松涛剑	三阶剑神魂
tBossHunderdTower["Gweapons"][53] =800070	--玉宵斧	三阶斧神魂
tBossHunderdTower["Gweapons"][54] =800071	--矩神斧	三阶斧神魂
tBossHunderdTower["Gweapons"][55] =800230	--贯云枪	三阶枪神魂
tBossHunderdTower["Gweapons"][56] =800200	--宿血噬魂刀	三阶长刀神魂
tBossHunderdTower["Gweapons"][57] =800615	--荒神弓	三阶弓神魂
tBossHunderdTower["Gweapons"][58] =800617	--玄天傲影弓	三阶弓神魂
tBossHunderdTower["Gweapons"][59] =800915	--炼渊飞刀	三阶飞刀神魂
tBossHunderdTower["Gweapons"][60] =800806	--胜利之剑	三阶刺剑神魂
tBossHunderdTower["Gweapons"][61] =800807	--荣耀之剑	三阶刺剑神魂
tBossHunderdTower["Gweapons"][62] =800801	--杀戮之枪	三阶火枪神魂
tBossHunderdTower["Gweapons"][63] =800802	--欲望之枪	三阶火枪神魂
tBossHunderdTower["Gweapons"][64] =800723	--亟电灵珠	三阶念珠神魂
tBossHunderdTower["Gweapons"][65] =800724	--桫椤灵珠	三阶念珠神魂
tBossHunderdTower["Gweapons"][66] =800140	--妖荒神隐	三阶忍刀神魂
tBossHunderdTower["Gweapons"][67] =800141	--赤焰龙痕	三阶忍刀神魂
tBossHunderdTower["Gweapons"][68] =800252	--荼毒妖镰	三阶钩镰神魂
tBossHunderdTower["Gweapons"][69] =800520	--焚云青锋剑	三阶法剑神魂
tBossHunderdTower["Gweapons"][70] =800521	--夜辰剑	三阶法剑神魂
tBossHunderdTower["Gweapons"][71] =820052	--狂澜灵盔	三阶头盔神魂
tBossHunderdTower["Gweapons"][72] =820053	--沧羽灵冠	三阶头盔神魂
tBossHunderdTower["Gweapons"][73] =822056	--沧澜晶铠	三阶衣服神魂
tBossHunderdTower["Gweapons"][74] =822057	--天澜法袍	三阶衣服神魂
tBossHunderdTower["Gweapons"][75] =824016	--怒犴灵靴	三阶鞋子神魂
tBossHunderdTower["Gweapons"][76] =800414	--狂澜灵盾	三阶盾牌神魂
tBossHunderdTower["Gweapons"][77] =823041	--冰魄灵戒	三阶戒指神魂
tBossHunderdTower["Gweapons"][78] =823043	--青瑛灵镯	三阶手镯神魂
tBossHunderdTower["Gweapons"][79] =821029	--川芎灵囊	三阶香囊神魂
tBossHunderdTower["Gweapons"][80] =821027	--蜃玉灵坠	三阶项链神魂
--新增三阶神魂
tBossHunderdTower["Gweapons"][81] =824027	--紫电灵靴	三阶鞋子神魂


tBossHunderdTower["Gweapons"][82] =800014	--掩日灵剑	四阶剑神魂
tBossHunderdTower["Gweapons"][83] =800015	--银月灵锤	四阶锤神魂
tBossHunderdTower["Gweapons"][84] =800214	--寒螭灵戟	四阶长戟神魂
tBossHunderdTower["Gweapons"][85] =800613	--潜龙灵弓	四阶弓神魂
tBossHunderdTower["Gweapons"][86] =800913	--冥判虎翼	四阶飞刀神魂
tBossHunderdTower["Gweapons"][87] =800803	--暗黑之枪	四阶火枪神魂
tBossHunderdTower["Gweapons"][88] =800808	--泰坦之剑	四阶刺剑神魂
tBossHunderdTower["Gweapons"][89] =800720	--乾火灵珠	四阶念珠神魂
tBossHunderdTower["Gweapons"][90] =800016	--鬼丸国纲	四阶忍刀神魂
tBossHunderdTower["Gweapons"][91] =800253	--灭绝邪镰	四阶钩镰神魂
tBossHunderdTower["Gweapons"][92] =800512	--莲华灵剑	四阶法剑神魂
tBossHunderdTower["Gweapons"][93] =823052	--紫郢宝戒	四阶戒指神魂
tBossHunderdTower["Gweapons"][94] =823054	--泣月宝镯	四阶手镯神魂
--新增四阶神魂
tBossHunderdTower["Gweapons"][95] =820078	--雪鸣神冠	四阶头部神魂
tBossHunderdTower["Gweapons"][96] =820080	--辟火天冠	四阶头部神魂
tBossHunderdTower["Gweapons"][97] =822074	--金鳞华铠	四阶衣服神魂
tBossHunderdTower["Gweapons"][98] =822077	--赤霞灵袍	四阶衣服神魂
tBossHunderdTower["Gweapons"][99] =824023	--嘲风神履	四阶鞋子神魂
tBossHunderdTower["Gweapons"][100] =824028	--御风天履	四阶鞋子神魂
tBossHunderdTower["Gweapons"][101] =821037	--清玄宝坠	四阶项链神魂
tBossHunderdTower["Gweapons"][102] =821040	--泽兰仙囊	四阶香囊神魂
tBossHunderdTower["Gweapons"][103] =800423	--玄武冥盾	四阶盾牌神魂


tBossHunderdTower["Gweapons"][104] =820056	--冰凝头饰	五阶头部神魂
tBossHunderdTower["Gweapons"][105] =820057	--六阳头饰	五阶头部神魂
tBossHunderdTower["Gweapons"][106] =800415	--雷纹盾	五阶盾牌神魂
tBossHunderdTower["Gweapons"][107] =821030	--苍木仙囊	五阶香囊神魂
tBossHunderdTower["Gweapons"][108] =821028	--御灵仙坠	五阶项链神魂
--新增五阶神魂
tBossHunderdTower["Gweapons"][109] =822075	--苍龙圣铠	五阶衣服神魂
tBossHunderdTower["Gweapons"][110] =822078	--飞流灵铠	五阶衣服神魂
tBossHunderdTower["Gweapons"][111] =824024	--奔雷圣履	五阶鞋子神魂
tBossHunderdTower["Gweapons"][112] =824029	--穿云神履	五阶鞋子神魂
tBossHunderdTower["Gweapons"][113] =823063	--青冥宝戒	五阶戒指神魂
tBossHunderdTower["Gweapons"][114] =823064	--灵光宝镯	五阶手镯神魂
tBossHunderdTower["Gweapons"][115] =800022	--玄炎宝剑	五阶剑神魂
tBossHunderdTower["Gweapons"][116] =800073	--破日神斧	五阶斧神魂
tBossHunderdTower["Gweapons"][117] =800217	--凤翅神枪	五阶项链神魂
tBossHunderdTower["Gweapons"][118] =800524	--幻梦灵剑	五阶法剑神魂
tBossHunderdTower["Gweapons"][119] =800620	--落星神弓	五阶弓神魂
tBossHunderdTower["Gweapons"][120] =800919	--魔煞虎翼	五阶飞刀神魂
tBossHunderdTower["Gweapons"][121] =800727	--北帝玄珠	五阶念珠神魂
tBossHunderdTower["Gweapons"][122] =800813	--神圣之剑	五阶刺剑神魂
tBossHunderdTower["Gweapons"][123] =800815	--希望之枪	五阶火枪神魂
tBossHunderdTower["Gweapons"][124] =800144	--布都御魂	五阶忍刀神魂
tBossHunderdTower["Gweapons"][125] =800261	--夺魄魔镰	五阶钩镰神魂




tBossHunderdTower["Gweapons"][126] =800000	--紫魔刃	六阶刀神魂
tBossHunderdTower["Gweapons"][127] =800110	--魔吕锤	六阶锤神魂
tBossHunderdTower["Gweapons"][128] =800320	--龙翼长棍	六阶长棍神魂
tBossHunderdTower["Gweapons"][129] =800616	--天翼弓	六阶弓神魂
tBossHunderdTower["Gweapons"][130] =800916	--帝青龙牙	六阶飞刀神魂
tBossHunderdTower["Gweapons"][131] =800809	--命运之剑	六阶刺剑神魂
tBossHunderdTower["Gweapons"][132] =800804	--岁月之枪	六阶火枪神魂
tBossHunderdTower["Gweapons"][133] =800722	--定海玄珠	六阶念珠神魂
tBossHunderdTower["Gweapons"][134] =800017	--隐夜忍刀	六阶忍刀神魂
tBossHunderdTower["Gweapons"][135] =800254	--勾魂神镰	六阶钩镰神魂
tBossHunderdTower["Gweapons"][136] =800513	--影灵宝剑	六阶法剑神魂
tBossHunderdTower["Gweapons"][137] =822053	--千漩仙铠	六阶衣服神魂
tBossHunderdTower["Gweapons"][138] =822055	--天瀑仙袍	六阶衣服神魂
tBossHunderdTower["Gweapons"][139] =820071	--九曜玄羽	六阶头部神魂
tBossHunderdTower["Gweapons"][140] =820072	--天瀑玄羽	六阶头部神魂
tBossHunderdTower["Gweapons"][141] =824017	--天行玄履	六阶鞋子神魂
tBossHunderdTower["Gweapons"][142] =800421	--蛰龙玄盾	六阶盾牌神魂
tBossHunderdTower["Gweapons"][143] =823055	--盘龙玄戒	六阶戒指神魂
tBossHunderdTower["Gweapons"][144] =823056	--蟠龙玄镯	六阶手镯神魂
tBossHunderdTower["Gweapons"][145] =821032	--灵檀玄囊	六阶香囊神魂
tBossHunderdTower["Gweapons"][146] =821031	--晶魄玄坠	六阶项链神魂
--新增六阶神魂
tBossHunderdTower["Gweapons"][147] =824030	--行空玄履	六阶鞋子神魂


tBossHunderdTower["Gweapons"][148] =800020	--鬼狱狂刀	七阶刀神魂
tBossHunderdTower["Gweapons"][149] =800111	--轰天巨锤	七阶锤神魂
tBossHunderdTower["Gweapons"][150] =800215	--破天长戟	七阶长戟神魂
tBossHunderdTower["Gweapons"][151] =800618	--逐日灵弓	七阶弓神魂
tBossHunderdTower["Gweapons"][152] =800917	--鬼恕龙牙	七阶飞刀神魂
tBossHunderdTower["Gweapons"][153] =800811	--忏悔之剑	七阶刺剑神魂
tBossHunderdTower["Gweapons"][154] =800810	--轮回之枪	七阶火枪神魂
tBossHunderdTower["Gweapons"][155] =800725	--天道念珠	七阶念珠神魂
tBossHunderdTower["Gweapons"][156] =800142	--幻影忍刀	七阶忍刀神魂
tBossHunderdTower["Gweapons"][157] =800255	--屠神钩镰	七阶钩镰神魂
tBossHunderdTower["Gweapons"][158] =800522	--虚空宝剑	七阶法剑神魂
tBossHunderdTower["Gweapons"][159] =822072	--蚀日仙铠	七阶衣服神魂[法防]
tBossHunderdTower["Gweapons"][160] =822071	--幽冥魔铠	七阶衣服神魂[物防]
tBossHunderdTower["Gweapons"][161] =820076	--冰辰仙冠	七阶头部神魂[坚固]
tBossHunderdTower["Gweapons"][162] =820075	--飞星仙冠	七阶头部神魂[防暴]
tBossHunderdTower["Gweapons"][163] =820074	--斩日魔冠	七阶头部神魂[坚固]
tBossHunderdTower["Gweapons"][164] =820073	--摧月魔冠	七阶头部神魂[防暴]
tBossHunderdTower["Gweapons"][165] =824020	--天鹤仙履	七阶鞋子神魂[法攻]
tBossHunderdTower["Gweapons"][166] =824019	--腾龙魔履	七阶靴子神魂[粉碎]
tBossHunderdTower["Gweapons"][167] =824018	--灵狐魔履	七阶靴子神魂[暴击]
tBossHunderdTower["Gweapons"][168] =800422	--碎魂魔盾	七阶盾牌神魂
tBossHunderdTower["Gweapons"][169] =823059	--飞龙魔戒	七阶戒指神魂[粉碎]
tBossHunderdTower["Gweapons"][170] =823058	--鹤唳魔戒	七阶戒指神魂[暴击]
tBossHunderdTower["Gweapons"][171] =823060	--惊虹仙镯	七阶手镯神魂
tBossHunderdTower["Gweapons"][172] =821034	--苍炎香囊	七阶香囊神魂
tBossHunderdTower["Gweapons"][173] =821033	--灵霄仙坠	七阶项链神魂

------------------------------------------------------怪物掉落的物品-------------------------------------------------------
tBossHunderdTower["Area"] = {}
---------------------------------------------------第一分区（1-5层）--------------------------------------------------------
	tBossHunderdTower["Area"][1]={}
	--分钟经验
	tBossHunderdTower["Area"][1][1] ={}
	tBossHunderdTower["Area"][1][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][1][1]["Param"]= "10"
	tBossHunderdTower["Area"][1][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][1][2] ={}
	tBossHunderdTower["Area"][1][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][1][2]["Param"]= "15"
	tBossHunderdTower["Area"][1][2]["Loop"]= nil
	--掉落流星卷碎片（4个）
	tBossHunderdTower["Area"][1][3] ={}
	tBossHunderdTower["Area"][1][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][1][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][1][3]["Loop"]= 1
	
	--龙珠碎片（4个）
	tBossHunderdTower["Area"][1][4] ={}
	tBossHunderdTower["Area"][1][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][1][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][1][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][1][5] ={}
	tBossHunderdTower["Area"][1][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][1][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][1][5]["Loop"]= 1
	--log
	tBossHunderdTower["Area"][1]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[15][4][4][1][1]"
	tBossHunderdTower["Area"][1]["Space"] = 3
	--第1层概率
	tBossHunderdTower["prob"] = {}
	tBossHunderdTower["prob"][1] = {}
	tBossHunderdTower["prob"][1][1] = {}
	tBossHunderdTower["prob"][1][1][1] = 5000
	tBossHunderdTower["prob"][1][1][2] = 4000
	tBossHunderdTower["prob"][1][1][3] = 1000
	tBossHunderdTower["prob"][1][1][4] = 0
	tBossHunderdTower["prob"][1][1][5] = 0
	tBossHunderdTower["prob"][1][1][6] = 0
	tBossHunderdTower["prob"][1][1][7] = 0
	tBossHunderdTower["prob"][1][1][8] = 0
	                                  
------------------------------------------第二分区（6-10层）---------------------------------------------------------
	tBossHunderdTower["Area"][2]={}
	--分钟经验
	tBossHunderdTower["Area"][2][1] ={}
	tBossHunderdTower["Area"][2][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][2][1]["Param"]= "40"
	tBossHunderdTower["Area"][2][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][2][2] ={}
	tBossHunderdTower["Area"][2][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][2][2]["Param"]= "15"
	tBossHunderdTower["Area"][2][2]["Loop"]= nil
	--掉落流星卷碎片（4个）
	tBossHunderdTower["Area"][2][3] ={}
	tBossHunderdTower["Area"][2][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][2][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][2][3]["Loop"]= 1
	
	--龙珠碎片（4个）
	tBossHunderdTower["Area"][2][4] ={}
	tBossHunderdTower["Area"][2][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][2][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][2][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][2][5] ={}
	tBossHunderdTower["Area"][2][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][2][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][2][5]["Loop"]= 1

	
	--log
	tBossHunderdTower["Area"][2]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[15][4][4][1][1]"
	tBossHunderdTower["Area"][2]["Space"] = 3

	--第2层概率
	tBossHunderdTower["prob"][2] = {}
	tBossHunderdTower["prob"][2][1] = {}
	tBossHunderdTower["prob"][2][1][1] = 5000
	tBossHunderdTower["prob"][2][1][2] = 4000
	tBossHunderdTower["prob"][2][1][3] = 900
	tBossHunderdTower["prob"][2][1][4] = 100
	tBossHunderdTower["prob"][2][1][5] = 0
	tBossHunderdTower["prob"][2][1][6] = 0
	tBossHunderdTower["prob"][2][1][7] = 0
	tBossHunderdTower["prob"][2][1][8] = 0
	
------------------------------------------第三分区（11-15层）---------------------------------------------------------
	tBossHunderdTower["Area"][3]={}
	--分钟经验
	tBossHunderdTower["Area"][3][1] ={}
	tBossHunderdTower["Area"][3][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][3][1]["Param"]= "40"
	tBossHunderdTower["Area"][3][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][3][2] ={}
	tBossHunderdTower["Area"][3][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][3][2]["Param"]= "15"
	tBossHunderdTower["Area"][3][2]["Loop"]= nil
	--掉落流星卷碎片（5个）
	tBossHunderdTower["Area"][3][3] ={}
	tBossHunderdTower["Area"][3][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][3][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][3][3]["Loop"]= 1

	
	--龙珠碎片（4个）
	tBossHunderdTower["Area"][3][4] ={}
	tBossHunderdTower["Area"][3][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][3][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][3][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][3][5] ={}
	tBossHunderdTower["Area"][3][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][3][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][3][5]["Loop"]= 1

	
	--log
	tBossHunderdTower["Area"][3]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[15][5][4][1][1]"
	tBossHunderdTower["Area"][3]["Space"] = 3
	--随机掉落
	--第3层概率
	tBossHunderdTower["prob"][3] = {}
	tBossHunderdTower["prob"][3][1] = {}
	tBossHunderdTower["prob"][3][1][1] = 5000
	tBossHunderdTower["prob"][3][1][2] = 4000
	tBossHunderdTower["prob"][3][1][3] = 800
	tBossHunderdTower["prob"][3][1][4] = 200
	tBossHunderdTower["prob"][3][1][5] = 0
	tBossHunderdTower["prob"][3][1][6] = 0
	tBossHunderdTower["prob"][3][1][7] = 0
	tBossHunderdTower["prob"][3][1][8] = 0
	
------------------------------------------第四分区（16-20层）---------------------------------------------------------
	tBossHunderdTower["Area"][4]={}
	--分钟经验
	tBossHunderdTower["Area"][4][1] ={}
	tBossHunderdTower["Area"][4][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][4][1]["Param"]= "40"
	tBossHunderdTower["Area"][4][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][4][2] ={}
	tBossHunderdTower["Area"][4][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][4][2]["Param"]= "20"
	tBossHunderdTower["Area"][4][2]["Loop"]= nil
	--掉落流星卷碎片（5个）
	tBossHunderdTower["Area"][4][3] ={}
	tBossHunderdTower["Area"][4][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][4][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][4][3]["Loop"]= 1
	
	--龙珠碎片（4个）
	tBossHunderdTower["Area"][4][4] ={}
	tBossHunderdTower["Area"][4][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][4][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][4][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][4][5] ={}
	tBossHunderdTower["Area"][4][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][4][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][4][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][4]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[15][5][4][1][1]"
	tBossHunderdTower["Area"][4]["Space"] = 3

	--第4层概率
	tBossHunderdTower["prob"][4] = {}
	tBossHunderdTower["prob"][4][1] = {}
	tBossHunderdTower["prob"][4][1][1] = 5000
	tBossHunderdTower["prob"][4][1][2] = 4000
	tBossHunderdTower["prob"][4][1][3] = 700
	tBossHunderdTower["prob"][4][1][4] = 300
	tBossHunderdTower["prob"][4][1][5] = 0
	tBossHunderdTower["prob"][4][1][6] = 0
	tBossHunderdTower["prob"][4][1][7] = 0
	tBossHunderdTower["prob"][4][1][8] = 0
	
------------------------------------------第五分区（21-25层）---------------------------------------------------------
	tBossHunderdTower["Area"][5]={}
	--分钟经验
	tBossHunderdTower["Area"][5][1] ={}
	tBossHunderdTower["Area"][5][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][5][1]["Param"]= "40"
	tBossHunderdTower["Area"][5][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][5][2] ={}
	tBossHunderdTower["Area"][5][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][5][2]["Param"]= "20"
	tBossHunderdTower["Area"][5][2]["Loop"]= nil
	--掉落流星卷碎片（5个）
	tBossHunderdTower["Area"][5][3] ={}
	tBossHunderdTower["Area"][5][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][5][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][5][3]["Loop"]= 2
	
	--龙珠碎片（5个）
	tBossHunderdTower["Area"][5][4] ={}
	tBossHunderdTower["Area"][5][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][5][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][5][4]["Loop"]= 1
	-- 赤炼石+2
	tBossHunderdTower["Area"][5][5] ={}
	tBossHunderdTower["Area"][5][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][5][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][5][5]["Loop"]= 1

	--log
	tBossHunderdTower["Area"][5]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[20][5][5][1][1]"
	tBossHunderdTower["Area"][5]["Space"] = 3

	--第5层概率
	tBossHunderdTower["prob"][5] = {}
	tBossHunderdTower["prob"][5][1] = {}
	tBossHunderdTower["prob"][5][1][1] = 5000
	tBossHunderdTower["prob"][5][1][2] = 4000
	tBossHunderdTower["prob"][5][1][3] = 700
	tBossHunderdTower["prob"][5][1][4] = 200
	tBossHunderdTower["prob"][5][1][5] = 100
	tBossHunderdTower["prob"][5][1][6] = 0
	tBossHunderdTower["prob"][5][1][7] = 0
	tBossHunderdTower["prob"][5][1][8] = 0
	
------------------------------------------第六分区（26-30层）---------------------------------------------------------
	tBossHunderdTower["Area"][6]={}
	--分钟经验
	tBossHunderdTower["Area"][6][1] ={}
	tBossHunderdTower["Area"][6][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][6][1]["Param"]= "50"
	tBossHunderdTower["Area"][6][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][6][2] ={}
	tBossHunderdTower["Area"][6][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][6][2]["Param"]= "20"
	tBossHunderdTower["Area"][6][2]["Loop"]= nil
	--掉落流星卷碎片（5个）
	tBossHunderdTower["Area"][6][3] ={}
	tBossHunderdTower["Area"][6][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][6][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][6][3]["Loop"]= 2
	
	--龙珠碎片（5个）
	tBossHunderdTower["Area"][6][4] ={}
	tBossHunderdTower["Area"][6][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][6][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][6][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][6][5] ={}
	tBossHunderdTower["Area"][6][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][6][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][6][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][6]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[20][5][5][1][1]"
	tBossHunderdTower["Area"][6]["Space"] = 3

	--第6层概率
	tBossHunderdTower["prob"][6] = {}
	tBossHunderdTower["prob"][6][1] = {}
	tBossHunderdTower["prob"][6][1][1] = 5000
	tBossHunderdTower["prob"][6][1][2] = 4000
	tBossHunderdTower["prob"][6][1][3] = 600
	tBossHunderdTower["prob"][6][1][4] = 300
	tBossHunderdTower["prob"][6][1][5] = 100
	tBossHunderdTower["prob"][6][1][6] = 0
	tBossHunderdTower["prob"][6][1][7] = 0
	tBossHunderdTower["prob"][6][1][8] = 0
	
------------------------------------------第七分区（31-35层）---------------------------------------------------------
	tBossHunderdTower["Area"][7]={}
	--分钟经验
	tBossHunderdTower["Area"][7][1] ={}
	tBossHunderdTower["Area"][7][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][7][1]["Param"]= "50"
	tBossHunderdTower["Area"][7][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][7][2] ={}
	tBossHunderdTower["Area"][7][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][7][2]["Param"]= "20"
	tBossHunderdTower["Area"][7][2]["Loop"]= nil
	--掉落流星卷碎片（6个）
	tBossHunderdTower["Area"][7][3] ={}
	tBossHunderdTower["Area"][7][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][7][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][7][3]["Loop"]= 2
	
	--龙珠碎片（5个）
	tBossHunderdTower["Area"][7][4] ={}
	tBossHunderdTower["Area"][7][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][7][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][7][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][7][5] ={}
	tBossHunderdTower["Area"][7][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][7][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][7][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][7]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[20][6][5][1][1]"
	tBossHunderdTower["Area"][7]["Space"] = 3

	--第7层概率
	tBossHunderdTower["prob"][7] = {}
	tBossHunderdTower["prob"][7][1] = {}
	tBossHunderdTower["prob"][7][1][1] = 5000
	tBossHunderdTower["prob"][7][1][2] = 4000
	tBossHunderdTower["prob"][7][1][3] = 500
	tBossHunderdTower["prob"][7][1][4] = 300
	tBossHunderdTower["prob"][7][1][5] = 200
	tBossHunderdTower["prob"][7][1][6] = 0
	tBossHunderdTower["prob"][7][1][7] = 0
	tBossHunderdTower["prob"][7][1][8] = 0
	
------------------------------------------第八分区（36-40层）---------------------------------------------------------
	tBossHunderdTower["Area"][8]={}
	--分钟经验
	tBossHunderdTower["Area"][8][1] ={}
	tBossHunderdTower["Area"][8][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][8][1]["Param"]= "50"
	tBossHunderdTower["Area"][8][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][8][2] ={}
	tBossHunderdTower["Area"][8][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][8][2]["Param"]= "25"
	tBossHunderdTower["Area"][8][2]["Loop"]= nil
	--掉落流星卷碎片（6个）
	tBossHunderdTower["Area"][8][3] ={}
	tBossHunderdTower["Area"][8][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][8][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][8][3]["Loop"]= 2
	
	--龙珠碎片（5个）
	tBossHunderdTower["Area"][8][4] ={}
	tBossHunderdTower["Area"][8][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][8][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][8][4]["Loop"]= 1
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][8][5] ={}
	tBossHunderdTower["Area"][8][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][8][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][8][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][8]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[25][6][5][1][1]"
	tBossHunderdTower["Area"][8]["Space"] = 3
	--随机掉落
	--第8层概率
	tBossHunderdTower["prob"][8] = {}
	tBossHunderdTower["prob"][8][1] = {}
	tBossHunderdTower["prob"][8][1][1] = 5000
	tBossHunderdTower["prob"][8][1][2] = 4000
	tBossHunderdTower["prob"][8][1][3] = 400
	tBossHunderdTower["prob"][8][1][4] = 400
	tBossHunderdTower["prob"][8][1][5] = 200
	tBossHunderdTower["prob"][8][1][6] = 0
	tBossHunderdTower["prob"][8][1][7] = 0
	tBossHunderdTower["prob"][8][1][8] = 0
	
------------------------------------------第九分区（41-45层）---------------------------------------------------------
	tBossHunderdTower["Area"][9]={}
	--分钟经验
	tBossHunderdTower["Area"][9][1] ={}
	tBossHunderdTower["Area"][9][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][9][1]["Param"]= "50"
	tBossHunderdTower["Area"][9][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][9][2] ={}
	tBossHunderdTower["Area"][9][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][9][2]["Param"]= "25"
	tBossHunderdTower["Area"][9][2]["Loop"]= nil
	--掉落流星卷碎片（6个）
	tBossHunderdTower["Area"][9][3] ={}
	tBossHunderdTower["Area"][9][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][9][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][9][3]["Loop"]= 2
	
	--龙珠碎片碎片（6个）
	tBossHunderdTower["Area"][9][4] ={}
	tBossHunderdTower["Area"][9][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][9][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][9][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][9][5] ={}
	tBossHunderdTower["Area"][9][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][9][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][9][5]["Loop"]= 1

	--log
	tBossHunderdTower["Area"][9]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[25][6][6][1][1]"
	tBossHunderdTower["Area"][9]["Space"] = 3

	--第9层概率
	tBossHunderdTower["prob"][9] = {}
	tBossHunderdTower["prob"][9][1] = {}
	tBossHunderdTower["prob"][9][1][1] = 5000
	tBossHunderdTower["prob"][9][1][2] = 4000
	tBossHunderdTower["prob"][9][1][3] = 0
	tBossHunderdTower["prob"][9][1][4] = 700
	tBossHunderdTower["prob"][9][1][5] = 200
	tBossHunderdTower["prob"][9][1][6] = 100
	tBossHunderdTower["prob"][9][1][7] = 0
	tBossHunderdTower["prob"][9][1][8] = 0
	
	
------------------------------------------第十分区（46-50层）---------------------------------------------------------
	tBossHunderdTower["Area"][10]={}
	--分钟经验
	tBossHunderdTower["Area"][10][1] ={}
	tBossHunderdTower["Area"][10][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][10][1]["Param"]= "60"
	tBossHunderdTower["Area"][10][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][10][2] ={}
	tBossHunderdTower["Area"][10][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][10][2]["Param"]= "25"
	tBossHunderdTower["Area"][10][2]["Loop"]= nil
	--掉落流星卷碎片（6个）
	tBossHunderdTower["Area"][10][3] ={}
	tBossHunderdTower["Area"][10][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][10][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][10][3]["Loop"]= 2
	
	--龙珠碎片碎片（6个）
	tBossHunderdTower["Area"][10][4] ={}
	tBossHunderdTower["Area"][10][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][10][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][10][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][10][5] ={}
	tBossHunderdTower["Area"][10][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][10][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][10][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][10]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[25][6][6][1][1]"
	tBossHunderdTower["Area"][10]["Space"] = 3

	--第10层概率
	tBossHunderdTower["prob"][10] = {}
	tBossHunderdTower["prob"][10][1] = {}
	tBossHunderdTower["prob"][10][1][1] = 5000
	tBossHunderdTower["prob"][10][1][2] = 4000
	tBossHunderdTower["prob"][10][1][3] = 0
	tBossHunderdTower["prob"][10][1][4] = 600
	tBossHunderdTower["prob"][10][1][5] = 300
	tBossHunderdTower["prob"][10][1][6] = 100
	tBossHunderdTower["prob"][10][1][7] = 0
	tBossHunderdTower["prob"][10][1][8] = 0

------------------------------------------第十一分区（51-55层）---------------------------------------------------------
	tBossHunderdTower["Area"][11]={}
	--分钟经验
	tBossHunderdTower["Area"][11][1] ={}
	tBossHunderdTower["Area"][11][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][11][1]["Param"]= "60"
	tBossHunderdTower["Area"][11][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][11][2] ={}
	tBossHunderdTower["Area"][11][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][11][2]["Param"]= "25"
	tBossHunderdTower["Area"][11][2]["Loop"]= nil
	--掉落流星卷碎片（7个）
	tBossHunderdTower["Area"][11][3] ={}
	tBossHunderdTower["Area"][11][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][11][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][11][3]["Loop"]= 2
	
	--龙珠碎片（6个）
	tBossHunderdTower["Area"][11][4] ={}
	tBossHunderdTower["Area"][11][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][11][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][11][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][11][5] ={}
	tBossHunderdTower["Area"][11][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][11][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][11][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][11]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[25][7][6][1][1]"
	tBossHunderdTower["Area"][11]["Space"] = 3

	--第11层概率
	tBossHunderdTower["prob"][11] = {}
	tBossHunderdTower["prob"][11][1] = {}
	tBossHunderdTower["prob"][11][1][1] = 5000
	tBossHunderdTower["prob"][11][1][2] = 4000
	tBossHunderdTower["prob"][11][1][3] = 0
	tBossHunderdTower["prob"][11][1][4] = 500
	tBossHunderdTower["prob"][11][1][5] = 300
	tBossHunderdTower["prob"][11][1][6] = 200
	tBossHunderdTower["prob"][11][1][7] = 0
	tBossHunderdTower["prob"][11][1][8] = 0

------------------------------------------第十二分区（56-60层）---------------------------------------------------------
	tBossHunderdTower["Area"][12]={}
	--分钟经验
	tBossHunderdTower["Area"][12][1] ={}
	tBossHunderdTower["Area"][12][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][12][1]["Param"]= "60"
	tBossHunderdTower["Area"][12][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][12][2] ={}
	tBossHunderdTower["Area"][12][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][12][2]["Param"]= "30"
	tBossHunderdTower["Area"][12][2]["Loop"]= nil
	--掉落流星卷碎片（9个）
	tBossHunderdTower["Area"][12][3] ={}
	tBossHunderdTower["Area"][12][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][12][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][12][3]["Loop"]= 2
	
	--掉落龙珠碎片（1个）
	tBossHunderdTower["Area"][12][4] ={}
	tBossHunderdTower["Area"][12][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][12][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][12][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][12][5] ={}
	tBossHunderdTower["Area"][12][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][12][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][12][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][12]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[30][7][6][1][1]"
	tBossHunderdTower["Area"][12]["Space"] = 3

	--第12层概率
	tBossHunderdTower["prob"][12] = {}
	tBossHunderdTower["prob"][12][1] = {}
	tBossHunderdTower["prob"][12][1][1] = 5000
	tBossHunderdTower["prob"][12][1][2] = 4000
	tBossHunderdTower["prob"][12][1][3] = 0
	tBossHunderdTower["prob"][12][1][4] = 400
	tBossHunderdTower["prob"][12][1][5] = 400
	tBossHunderdTower["prob"][12][1][6] = 200
	tBossHunderdTower["prob"][12][1][7] = 0
	tBossHunderdTower["prob"][12][1][8] = 0
	
------------------------------------------第十三分区（61-65层）---------------------------------------------------------
	tBossHunderdTower["Area"][13]={}
	--分钟经验
	tBossHunderdTower["Area"][13][1] ={}
	tBossHunderdTower["Area"][13][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][13][1]["Param"]= "60"
	tBossHunderdTower["Area"][13][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][13][2] ={}
	tBossHunderdTower["Area"][13][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][13][2]["Param"]= "30"
	tBossHunderdTower["Area"][13][2]["Loop"]= nil
	--掉落流星卷碎片（9个）
	tBossHunderdTower["Area"][13][3] ={}
	tBossHunderdTower["Area"][13][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][13][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][13][3]["Loop"]= 3
	
	--掉落龙珠碎片（1个）
	tBossHunderdTower["Area"][13][4] ={}
	tBossHunderdTower["Area"][13][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][13][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][13][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][13][5] ={}
	tBossHunderdTower["Area"][13][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][13][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][13][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][13]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[30][7][7][1][1]"
	tBossHunderdTower["Area"][13]["Space"] = 3

	--第13层概率
	tBossHunderdTower["prob"][13] = {}
	tBossHunderdTower["prob"][13][1] = {}
	tBossHunderdTower["prob"][13][1][1] = 5000
	tBossHunderdTower["prob"][13][1][2] = 4000
	tBossHunderdTower["prob"][13][1][3] = 0
	tBossHunderdTower["prob"][13][1][4] = 0
	tBossHunderdTower["prob"][13][1][5] = 700
	tBossHunderdTower["prob"][13][1][6] = 200
	tBossHunderdTower["prob"][13][1][7] = 100
	tBossHunderdTower["prob"][13][1][8] = 0
	
------------------------------------------第十四分区（66-70层）---------------------------------------------------------
	tBossHunderdTower["Area"][14]={}
	--分钟经验
	tBossHunderdTower["Area"][14][1] ={}
	tBossHunderdTower["Area"][14][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][14][1]["Param"]= "70"
	tBossHunderdTower["Area"][14][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][14][2] ={}
	tBossHunderdTower["Area"][14][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][14][2]["Param"]= "30"
	tBossHunderdTower["Area"][14][2]["Loop"]= nil
	--掉落流星卷碎片（7个）
	tBossHunderdTower["Area"][14][3] ={}
	tBossHunderdTower["Area"][14][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][14][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][14][3]["Loop"]= 3
	
	--掉落龙珠碎片（7个）
	tBossHunderdTower["Area"][14][4] ={}
	tBossHunderdTower["Area"][14][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][14][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][14][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][14][5] ={}
	tBossHunderdTower["Area"][14][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][14][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][14][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][14]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[30][7][7][1][1]"
	tBossHunderdTower["Area"][14]["Space"] = 3

	--第14层概率
	tBossHunderdTower["prob"][14] = {}
	tBossHunderdTower["prob"][14][1] = {}
	tBossHunderdTower["prob"][14][1][1] = 5000
	tBossHunderdTower["prob"][14][1][2] = 4000
	tBossHunderdTower["prob"][14][1][3] = 0
	tBossHunderdTower["prob"][14][1][4] = 0
	tBossHunderdTower["prob"][14][1][5] = 600
	tBossHunderdTower["prob"][14][1][6] = 300
	tBossHunderdTower["prob"][14][1][7] = 100
	tBossHunderdTower["prob"][14][1][8] = 0
	
------------------------------------------第十五分区（71-75层）---------------------------------------------------------
	tBossHunderdTower["Area"][15]={}
	--分钟经验
	tBossHunderdTower["Area"][15][1] ={}
	tBossHunderdTower["Area"][15][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][15][1]["Param"]= "70"
	tBossHunderdTower["Area"][15][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][15][2] ={}
	tBossHunderdTower["Area"][15][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][15][2]["Param"]= "30"
	tBossHunderdTower["Area"][15][2]["Loop"]= nil
	--掉落流星卷碎片（8个）
	tBossHunderdTower["Area"][15][3] ={}
	tBossHunderdTower["Area"][15][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][15][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][15][3]["Loop"]= 3
	
	--掉落龙珠碎片（7个）
	tBossHunderdTower["Area"][15][4] ={}
	tBossHunderdTower["Area"][15][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][15][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][15][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][15][5] ={}
	tBossHunderdTower["Area"][15][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][15][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][15][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][15]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[30][8][7][1][1]"
	tBossHunderdTower["Area"][15]["Space"] = 3

	--第15层概率
	tBossHunderdTower["prob"][15] = {}
	tBossHunderdTower["prob"][15][1] = {}
	tBossHunderdTower["prob"][15][1][1] = 5000
	tBossHunderdTower["prob"][15][1][2] = 4000
	tBossHunderdTower["prob"][15][1][3] = 0
	tBossHunderdTower["prob"][15][1][4] = 0
	tBossHunderdTower["prob"][15][1][5] = 500
	tBossHunderdTower["prob"][15][1][6] = 300
	tBossHunderdTower["prob"][15][1][7] = 200
	tBossHunderdTower["prob"][15][1][8] = 0
	
------------------------------------------第十六分区（76-80层）---------------------------------------------------------
	tBossHunderdTower["Area"][16]={}
	--分钟经验
	tBossHunderdTower["Area"][16][1] ={}
	tBossHunderdTower["Area"][16][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][16][1]["Param"]= "70"
	tBossHunderdTower["Area"][16][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][16][2] ={}
	tBossHunderdTower["Area"][16][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][16][2]["Param"]= "35"
	tBossHunderdTower["Area"][16][2]["Loop"]= nil
	--掉落流星卷碎片（8个）
	tBossHunderdTower["Area"][16][3] ={}
	tBossHunderdTower["Area"][16][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][16][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][16][3]["Loop"]= 3
	
	--掉落龙珠碎片（7个）
	tBossHunderdTower["Area"][16][4] ={}
	tBossHunderdTower["Area"][16][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][16][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][16][4]["Loop"]= 2
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][16][5] ={}
	tBossHunderdTower["Area"][16][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][16][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][16][5]["Loop"]= 1

	--log
	tBossHunderdTower["Area"][16]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[35][8][7][1][1]"
	tBossHunderdTower["Area"][16]["Space"] = 3

	--第16层概率
	tBossHunderdTower["prob"][16] = {}
	tBossHunderdTower["prob"][16][1] = {}
	tBossHunderdTower["prob"][16][1][1] = 5000
	tBossHunderdTower["prob"][16][1][2] = 4000
	tBossHunderdTower["prob"][16][1][3] = 0
	tBossHunderdTower["prob"][16][1][4] = 0
	tBossHunderdTower["prob"][16][1][5] = 400
	tBossHunderdTower["prob"][16][1][6] = 400
	tBossHunderdTower["prob"][16][1][7] = 200
	tBossHunderdTower["prob"][16][1][8] = 0
	
------------------------------------------第十七分区（81-85层）---------------------------------------------------------
	tBossHunderdTower["Area"][17]={}
	--分钟经验
	tBossHunderdTower["Area"][17][1] ={}
	tBossHunderdTower["Area"][17][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][17][1]["Param"]= "70"
	tBossHunderdTower["Area"][17][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][17][2] ={}
	tBossHunderdTower["Area"][17][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][17][2]["Param"]= "35"
	tBossHunderdTower["Area"][17][2]["Loop"]= nil
	--掉落流星卷碎片（8个）
	tBossHunderdTower["Area"][17][3] ={}
	tBossHunderdTower["Area"][17][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][17][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][17][3]["Loop"]= 3
	
	--掉落龙珠碎片（8个）
	tBossHunderdTower["Area"][17][4] ={}
	tBossHunderdTower["Area"][17][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][17][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][17][4]["Loop"]= 3
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][17][5] ={}
	tBossHunderdTower["Area"][17][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][17][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][17][5]["Loop"]= 1
	--log
	tBossHunderdTower["Area"][17]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[35][8][8][1][1]"
	tBossHunderdTower["Area"][17]["Space"] = 3

	--第17层概率
	tBossHunderdTower["prob"][17] = {}
	tBossHunderdTower["prob"][17][1] = {}
	tBossHunderdTower["prob"][17][1][1] = 5000
	tBossHunderdTower["prob"][17][1][2] = 4000
	tBossHunderdTower["prob"][17][1][3] = 0
	tBossHunderdTower["prob"][17][1][4] = 0
	tBossHunderdTower["prob"][17][1][5] = 0
	tBossHunderdTower["prob"][17][1][6] = 700
	tBossHunderdTower["prob"][17][1][7] = 200
	tBossHunderdTower["prob"][17][1][8] = 100
	
------------------------------------------第十八分区（86-90层）---------------------------------------------------------
	tBossHunderdTower["Area"][18]={}
	--分钟经验
	tBossHunderdTower["Area"][18][1] ={}
	tBossHunderdTower["Area"][18][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][18][1]["Param"]= "80"
	tBossHunderdTower["Area"][18][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][18][2] ={}
	tBossHunderdTower["Area"][18][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][18][2]["Param"]= "35"
	tBossHunderdTower["Area"][18][2]["Loop"]= nil
	--掉落流星卷碎片（8个）
	tBossHunderdTower["Area"][18][3] ={}
	tBossHunderdTower["Area"][18][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][18][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][18][3]["Loop"]= 3
	
	--掉落龙珠碎片（8个）
	tBossHunderdTower["Area"][18][4] ={}
	tBossHunderdTower["Area"][18][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][18][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][18][4]["Loop"]= 3
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][18][5] ={}
	tBossHunderdTower["Area"][18][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][18][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][18][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][18]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[35][8][8][1][1]"
	tBossHunderdTower["Area"][18]["Space"] = 3

	--第18层概率
	tBossHunderdTower["prob"][18] = {}
	tBossHunderdTower["prob"][18][1] = {}
	tBossHunderdTower["prob"][18][1][1] = 5000
	tBossHunderdTower["prob"][18][1][2] = 4000
	tBossHunderdTower["prob"][18][1][3] = 0
	tBossHunderdTower["prob"][18][1][4] = 0
	tBossHunderdTower["prob"][18][1][5] = 0
	tBossHunderdTower["prob"][18][1][6] = 600
	tBossHunderdTower["prob"][18][1][7] = 300
	tBossHunderdTower["prob"][18][1][8] = 100
	
------------------------------------------第十九分区（91-95层）---------------------------------------------------------
	tBossHunderdTower["Area"][19]={}
	--分钟经验
	tBossHunderdTower["Area"][19][1] ={}
	tBossHunderdTower["Area"][19][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][19][1]["Param"]= "80"
	tBossHunderdTower["Area"][19][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][19][2] ={}
	tBossHunderdTower["Area"][19][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][19][2]["Param"]= "35"
	tBossHunderdTower["Area"][19][2]["Loop"]= nil
	--掉落流星卷碎片（9个）
	tBossHunderdTower["Area"][19][3] ={}
	tBossHunderdTower["Area"][19][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][19][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][19][3]["Loop"]= 3
	
	--掉落龙珠碎片（8个）
	tBossHunderdTower["Area"][19][4] ={}
	tBossHunderdTower["Area"][19][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][19][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][19][4]["Loop"]= 3
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][19][5] ={}
	tBossHunderdTower["Area"][19][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][19][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][19][5]["Loop"]= 1
	
	--log
	tBossHunderdTower["Area"][19]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[35][9][8][1][1]"
	tBossHunderdTower["Area"][19]["Space"] = 3

	--第19层概率
	tBossHunderdTower["prob"][19] = {}
	tBossHunderdTower["prob"][19][1] = {}
	tBossHunderdTower["prob"][19][1][1] = 5000
	tBossHunderdTower["prob"][19][1][2] = 4000
	tBossHunderdTower["prob"][19][1][3] = 0
	tBossHunderdTower["prob"][19][1][4] = 0
	tBossHunderdTower["prob"][19][1][5] = 0
	tBossHunderdTower["prob"][19][1][6] = 500
	tBossHunderdTower["prob"][19][1][7] = 300
	tBossHunderdTower["prob"][19][1][8] = 200
	
------------------------------------------第二十分区（96-100层）---------------------------------------------------------
	tBossHunderdTower["Area"][20]={}
	--分钟经验
	tBossHunderdTower["Area"][20][1] ={}
	tBossHunderdTower["Area"][20][1]["Func"]= User_AddExpTime
	tBossHunderdTower["Area"][20][1]["Param"]= "80"
	tBossHunderdTower["Area"][20][1]["Loop"]= nil
	--修行值
	tBossHunderdTower["Area"][20][2] ={}
	tBossHunderdTower["Area"][20][2]["Func"]= User_AddCultivation
	tBossHunderdTower["Area"][20][2]["Param"]= "40"
	tBossHunderdTower["Area"][20][2]["Loop"]= nil
	--掉落流星卷碎片（9个）
	tBossHunderdTower["Area"][20][3] ={}
	tBossHunderdTower["Area"][20][3]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][20][3]["Param"]= "3008899"
	tBossHunderdTower["Area"][20][3]["Loop"]= 3
	
	--掉落龙珠碎片（8个）
	tBossHunderdTower["Area"][20][4] ={}
	tBossHunderdTower["Area"][20][4]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][20][4]["Param"]= "3007979"
	tBossHunderdTower["Area"][20][4]["Loop"]= 3
	
	-- 赤炼石+2
	tBossHunderdTower["Area"][20][5] ={}
	tBossHunderdTower["Area"][20][5]["Func"]= Item_AddItem
	tBossHunderdTower["Area"][20][5]["Param"]= "730002 0 0 0 4320 1"
	tBossHunderdTower["Area"][20][5]["Loop"]= 1
	
	--Log
	tBossHunderdTower["Area"][20]["Log"] = "0,0,%d,1,12000313,2,4[6][3008899][3007979][730002][%d],10[40][9][8][1][1]"
	tBossHunderdTower["Area"][20]["Space"] = 3

	--第20层概率
	tBossHunderdTower["prob"][20] = {}
	tBossHunderdTower["prob"][20][1] = {}
	tBossHunderdTower["prob"][20][1][1] = 5000
	tBossHunderdTower["prob"][20][1][2] = 4000
	tBossHunderdTower["prob"][20][1][3] = 0
	tBossHunderdTower["prob"][20][1][4] = 0
	tBossHunderdTower["prob"][20][1][5] = 0
	tBossHunderdTower["prob"][20][1][6] = 400
	tBossHunderdTower["prob"][20][1][7] = 400
	tBossHunderdTower["prob"][20][1][8] = 200

-----简体给物品
local tBossHunderdTower_GetItem = {}
	tBossHunderdTower_GetItem[3711] = {}
	tBossHunderdTower_GetItem[3711]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3711]["RewardRepairValue"]["Value"] = 200
	tBossHunderdTower_GetItem[3711]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3711]["LogStep"] = "2[1]"
	tBossHunderdTower_GetItem[3711]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3711]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3711]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3712] = {}
	tBossHunderdTower_GetItem[3712]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3712]["RewardStrengthValue"]["Value"] = 100
	tBossHunderdTower_GetItem[3712]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3712]["LogStep"] = "2[2]"
	tBossHunderdTower_GetItem[3712]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3712]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3712]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3713] = {}
	tBossHunderdTower_GetItem[3713]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3713]["RewardRepairValue"]["Value"] = 200
	tBossHunderdTower_GetItem[3713]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3713]["LogStep"] = "2[3]"
	tBossHunderdTower_GetItem[3713]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3713]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3713]["RewardEffect"]["Effect"] = "angelwing"
	
	tBossHunderdTower_GetItem[3714] = {}
	tBossHunderdTower_GetItem[3714]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3714]["RewardStrengthValue"]["Value"] = 100
	tBossHunderdTower_GetItem[3714]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3714]["LogStep"] = "2[4]"
	tBossHunderdTower_GetItem[3714]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3714]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3714]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3715] = {}
	tBossHunderdTower_GetItem[3715]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3715]["RewardRepairValue"]["Value"] = 240
	tBossHunderdTower_GetItem[3715]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3715]["LogStep"] = "2[5]"
	tBossHunderdTower_GetItem[3715]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3715]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3715]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3716] = {}
	tBossHunderdTower_GetItem[3716]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3716]["RewardStrengthValue"]["Value"] = 100
	tBossHunderdTower_GetItem[3716]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3716]["LogStep"] = "2[6]"
	tBossHunderdTower_GetItem[3716]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3716]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3716]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3717] = {}
	tBossHunderdTower_GetItem[3717]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3717]["RewardRepairValue"]["Value"] = 240
	tBossHunderdTower_GetItem[3717]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3717]["LogStep"] = "2[7]"
	tBossHunderdTower_GetItem[3717]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3717]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3717]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3718] = {}
	tBossHunderdTower_GetItem[3718]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3718]["RewardStrengthValue"]["Value"] = 120
	tBossHunderdTower_GetItem[3718]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3718]["LogStep"] = "2[8]"
	tBossHunderdTower_GetItem[3718]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3718]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3718]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3719] = {}
	tBossHunderdTower_GetItem[3719]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3719]["RewardRepairValue"]["Value"] = 260
	tBossHunderdTower_GetItem[3719]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3719]["LogStep"] = "2[9]"
	tBossHunderdTower_GetItem[3719]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3719]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3719]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3720] = {}
	tBossHunderdTower_GetItem[3720]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3720]["RewardStrengthValue"]["Value"] = 120
	tBossHunderdTower_GetItem[3720]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3720]["LogStep"] = "2[10]"
	tBossHunderdTower_GetItem[3720]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3720]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3720]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3721] = {}
	tBossHunderdTower_GetItem[3721]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3721]["RewardRepairValue"]["Value"] = 260
	tBossHunderdTower_GetItem[3721]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3721]["LogStep"] = "2[11]"
	tBossHunderdTower_GetItem[3721]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3721]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3721]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3722] = {}
	tBossHunderdTower_GetItem[3722]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3722]["RewardStrengthValue"]["Value"] = 120
	tBossHunderdTower_GetItem[3722]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3722]["LogStep"] = "2[12]"
	tBossHunderdTower_GetItem[3722]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3722]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3722]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3723] = {}
	tBossHunderdTower_GetItem[3723]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3723]["RewardRepairValue"]["Value"] = 280
	tBossHunderdTower_GetItem[3723]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3723]["LogStep"] = "2[13]"
	tBossHunderdTower_GetItem[3723]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3723]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3723]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3724] = {}
	tBossHunderdTower_GetItem[3724]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3724]["RewardStrengthValue"]["Value"] = 140
	tBossHunderdTower_GetItem[3724]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3724]["LogStep"] = "2[14]"
	tBossHunderdTower_GetItem[3724]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3724]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3724]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3725] = {}
	tBossHunderdTower_GetItem[3725]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3725]["RewardRepairValue"]["Value"] = 280
	tBossHunderdTower_GetItem[3725]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3725]["LogStep"] = "2[15]"
	tBossHunderdTower_GetItem[3725]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3725]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3725]["RewardEffect"]["Effect"] = "angelwing"
	
	tBossHunderdTower_GetItem[3726] = {}
	tBossHunderdTower_GetItem[3726]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3726]["RewardStrengthValue"]["Value"] = 140
	tBossHunderdTower_GetItem[3726]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3726]["LogStep"] = "2[16]"
	tBossHunderdTower_GetItem[3726]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3726]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3726]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3727] = {}
	tBossHunderdTower_GetItem[3727]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3727]["RewardRepairValue"]["Value"] = 320
	tBossHunderdTower_GetItem[3727]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3727]["LogStep"] = "2[17]"
	tBossHunderdTower_GetItem[3727]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3727]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3727]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3728] = {}
	tBossHunderdTower_GetItem[3728]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3728]["RewardStrengthValue"]["Value"] = 140
	tBossHunderdTower_GetItem[3728]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3728]["LogStep"] = "2[18]"
	tBossHunderdTower_GetItem[3728]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3728]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3728]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3729] = {}
	tBossHunderdTower_GetItem[3729]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3729]["RewardRepairValue"]["Value"] = 320
	tBossHunderdTower_GetItem[3729]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3729]["LogStep"] = "2[19]"
	tBossHunderdTower_GetItem[3729]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3729]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3729]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3730] = {}
	tBossHunderdTower_GetItem[3730]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3730]["RewardStrengthValue"]["Value"] = 160
	tBossHunderdTower_GetItem[3730]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3730]["LogStep"] = "2[20]"
	tBossHunderdTower_GetItem[3730]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3730]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3730]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3731] = {}
	tBossHunderdTower_GetItem[3731]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3731]["RewardRepairValue"]["Value"] = 390
	tBossHunderdTower_GetItem[3731]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3731]["LogStep"] = "2[21]"
	tBossHunderdTower_GetItem[3731]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3731]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3731]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3732] = {}
	tBossHunderdTower_GetItem[3732]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3732]["RewardStrengthValue"]["Value"] = 160
	tBossHunderdTower_GetItem[3732]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3732]["LogStep"] = "2[22]"
	tBossHunderdTower_GetItem[3732]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3732]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3732]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3733] = {}
	tBossHunderdTower_GetItem[3733]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3733]["RewardRepairValue"]["Value"] = 390
	tBossHunderdTower_GetItem[3733]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3733]["LogStep"] = "2[23]"
	tBossHunderdTower_GetItem[3733]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3733]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3733]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3734] = {}
	tBossHunderdTower_GetItem[3734]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3734]["RewardStrengthValue"]["Value"] = 160
	tBossHunderdTower_GetItem[3734]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3734]["LogStep"] = "2[24]"
	tBossHunderdTower_GetItem[3734]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3734]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3734]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3735] = {}
	tBossHunderdTower_GetItem[3735]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3735]["RewardRepairValue"]["Value"] = 400
	tBossHunderdTower_GetItem[3735]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3735]["LogStep"] = "2[25]"
	tBossHunderdTower_GetItem[3735]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3735]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3735]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3736] = {}
	tBossHunderdTower_GetItem[3736]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3736]["RewardStrengthValue"]["Value"] = 180
	tBossHunderdTower_GetItem[3736]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3736]["LogStep"] = "2[26]"
	tBossHunderdTower_GetItem[3736]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3736]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3736]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3737] = {}
	tBossHunderdTower_GetItem[3737]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3737]["RewardRepairValue"]["Value"] = 400
	tBossHunderdTower_GetItem[3737]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3737]["LogStep"] = "2[27]"
	tBossHunderdTower_GetItem[3737]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3737]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3737]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3738] = {}
	tBossHunderdTower_GetItem[3738]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3738]["RewardStrengthValue"]["Value"] = 180
	tBossHunderdTower_GetItem[3738]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3738]["LogStep"] = "2[28]"
	tBossHunderdTower_GetItem[3738]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3738]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3738]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3739] = {}
	tBossHunderdTower_GetItem[3739]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3739]["RewardRepairValue"]["Value"] = 440
	tBossHunderdTower_GetItem[3739]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3739]["LogStep"] = "2[29]"
	tBossHunderdTower_GetItem[3739]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3739]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3739]["RewardEffect"]["Effect"] = "angelwing"
	
	tBossHunderdTower_GetItem[3740] = {}
	tBossHunderdTower_GetItem[3740]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3740]["RewardStrengthValue"]["Value"] = 180
	tBossHunderdTower_GetItem[3740]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3740]["LogStep"] = "2[30]"
	tBossHunderdTower_GetItem[3740]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3740]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3740]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3741] = {}
	tBossHunderdTower_GetItem[3741]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3741]["RewardRepairValue"]["Value"] = 440
	tBossHunderdTower_GetItem[3741]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3741]["LogStep"] = "2[31]"
	tBossHunderdTower_GetItem[3741]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3741]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3741]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3742] = {}
	tBossHunderdTower_GetItem[3742]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3742]["RewardStrengthValue"]["Value"] = 200
	tBossHunderdTower_GetItem[3742]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3742]["LogStep"] = "2[32]"
	tBossHunderdTower_GetItem[3742]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3742]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3742]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3743] = {}
	tBossHunderdTower_GetItem[3743]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3743]["RewardRepairValue"]["Value"] = 480
	tBossHunderdTower_GetItem[3743]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3743]["LogStep"] = "2[33]"
	tBossHunderdTower_GetItem[3743]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3743]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3743]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3744] = {}
	tBossHunderdTower_GetItem[3744]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3744]["RewardStrengthValue"]["Value"] = 200
	tBossHunderdTower_GetItem[3744]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3744]["LogStep"] = "2[34]"
	tBossHunderdTower_GetItem[3744]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3744]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3744]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3745] = {}
	tBossHunderdTower_GetItem[3745]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3745]["RewardRepairValue"]["Value"] = 480
	tBossHunderdTower_GetItem[3745]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3745]["LogStep"] = "2[35]"
	tBossHunderdTower_GetItem[3745]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3745]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3745]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3746] = {}
	tBossHunderdTower_GetItem[3746]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3746]["RewardStrengthValue"]["Value"] = 200
	tBossHunderdTower_GetItem[3746]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3746]["LogStep"] = "2[36]"
	tBossHunderdTower_GetItem[3746]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3746]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3746]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3747] = {}
	tBossHunderdTower_GetItem[3747]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3747]["RewardRepairValue"]["Value"] = 520
	tBossHunderdTower_GetItem[3747]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3747]["LogStep"] = "2[37]"
	tBossHunderdTower_GetItem[3747]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3747]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3747]["RewardEffect"]["Effect"] = "angelwing"
	
	tBossHunderdTower_GetItem[3748] = {}
	tBossHunderdTower_GetItem[3748]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3748]["RewardStrengthValue"]["Value"] = 220
	tBossHunderdTower_GetItem[3748]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3748]["LogStep"] = "2[38]"
	tBossHunderdTower_GetItem[3748]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3748]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3748]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3749] = {}
	tBossHunderdTower_GetItem[3749]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3749]["RewardRepairValue"]["Value"] = 520
	tBossHunderdTower_GetItem[3749]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3749]["LogStep"] = "2[39]"
	tBossHunderdTower_GetItem[3749]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3749]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3749]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3750] = {}
	tBossHunderdTower_GetItem[3750]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3750]["RewardStrengthValue"]["Value"] = 220
	tBossHunderdTower_GetItem[3750]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3750]["LogStep"] = "2[40]"
	tBossHunderdTower_GetItem[3750]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3750]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3750]["RewardEffect"]["Effect"] = "angelwing"
	
	tBossHunderdTower_GetItem[3751] = {}
	tBossHunderdTower_GetItem[3751]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3751]["RewardRepairValue"]["Value"] = 520
	tBossHunderdTower_GetItem[3751]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3751]["LogStep"] = "2[41]"
	tBossHunderdTower_GetItem[3751]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3751]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3751]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3752] = {}
	tBossHunderdTower_GetItem[3752]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3752]["RewardStrengthValue"]["Value"] = 220
	tBossHunderdTower_GetItem[3752]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3752]["LogStep"] = "2[42]"
	tBossHunderdTower_GetItem[3752]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3752]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3752]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3753] = {}
	tBossHunderdTower_GetItem[3753]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3753]["RewardRepairValue"]["Value"] = 560
	tBossHunderdTower_GetItem[3753]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3753]["LogStep"] = "2[43]"
	tBossHunderdTower_GetItem[3753]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3753]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3753]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3754] = {}
	tBossHunderdTower_GetItem[3754]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3754]["RewardStrengthValue"]["Value"] = 240
	tBossHunderdTower_GetItem[3754]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3754]["LogStep"] = "2[44]"
	tBossHunderdTower_GetItem[3754]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3754]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3754]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3755] = {}
	tBossHunderdTower_GetItem[3755]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3755]["RewardRepairValue"]["Value"] = 600
	tBossHunderdTower_GetItem[3755]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3755]["LogStep"] = "2[45]"
	tBossHunderdTower_GetItem[3755]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3755]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3755]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3756] = {}
	tBossHunderdTower_GetItem[3756]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3756]["RewardStrengthValue"]["Value"] = 240
	tBossHunderdTower_GetItem[3756]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3756]["LogStep"] = "2[46]"
	tBossHunderdTower_GetItem[3756]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3756]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3756]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3757] = {}
	tBossHunderdTower_GetItem[3757]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3757]["RewardRepairValue"]["Value"] = 600
	tBossHunderdTower_GetItem[3757]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3757]["LogStep"] = "2[47]"
	tBossHunderdTower_GetItem[3757]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3757]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3757]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3758] = {}
	tBossHunderdTower_GetItem[3758]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3758]["RewardStrengthValue"]["Value"] = 240
	tBossHunderdTower_GetItem[3758]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3758]["LogStep"] = "2[48]"
	tBossHunderdTower_GetItem[3758]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3758]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3758]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3759] = {}
	tBossHunderdTower_GetItem[3759]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3759]["RewardRepairValue"]["Value"] = 640
	tBossHunderdTower_GetItem[3759]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3759]["LogStep"] = "2[49]"
	tBossHunderdTower_GetItem[3759]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3759]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3759]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3760] = {}
	tBossHunderdTower_GetItem[3760]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3760]["RewardStrengthValue"]["Value"] = 260
	tBossHunderdTower_GetItem[3760]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3760]["LogStep"] = "2[50]"
	tBossHunderdTower_GetItem[3760]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3760]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3760]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3761] = {}
	tBossHunderdTower_GetItem[3761]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3761]["RewardRepairValue"]["Value"] = 640
	tBossHunderdTower_GetItem[3761]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3761]["LogStep"] = "2[51]"
	tBossHunderdTower_GetItem[3761]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3761]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3761]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3762] = {}
	tBossHunderdTower_GetItem[3762]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3762]["RewardStrengthValue"]["Value"] = 260
	tBossHunderdTower_GetItem[3762]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3762]["LogStep"] = "2[52]"
	tBossHunderdTower_GetItem[3762]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3762]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3762]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3763] = {}
	tBossHunderdTower_GetItem[3763]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3763]["RewardRepairValue"]["Value"] = 680
	tBossHunderdTower_GetItem[3763]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3763]["LogStep"] = "2[53]"
	tBossHunderdTower_GetItem[3763]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3763]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3763]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3764] = {}
	tBossHunderdTower_GetItem[3764]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3764]["RewardStrengthValue"]["Value"] = 280
	tBossHunderdTower_GetItem[3764]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3764]["LogStep"] = "2[54]"
	tBossHunderdTower_GetItem[3764]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3764]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3764]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3765] = {}
	tBossHunderdTower_GetItem[3765]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3765]["RewardRepairValue"]["Value"] = 680
	tBossHunderdTower_GetItem[3765]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3765]["LogStep"] = "2[55]"
	tBossHunderdTower_GetItem[3765]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3765]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3765]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3766] = {}
	tBossHunderdTower_GetItem[3766]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3766]["RewardStrengthValue"]["Value"] = 280
	tBossHunderdTower_GetItem[3766]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3766]["LogStep"] = "2[56]"
	tBossHunderdTower_GetItem[3766]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3766]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3766]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3767] = {}
	tBossHunderdTower_GetItem[3767]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3767]["RewardRepairValue"]["Value"] = 720
	tBossHunderdTower_GetItem[3767]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3767]["LogStep"] = "2[57]"
	tBossHunderdTower_GetItem[3767]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3767]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3767]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3768] = {}
	tBossHunderdTower_GetItem[3768]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3768]["RewardStrengthValue"]["Value"] = 300
	tBossHunderdTower_GetItem[3768]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3768]["LogStep"] = "2[58]"
	tBossHunderdTower_GetItem[3768]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3768]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3768]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3769] = {}
	tBossHunderdTower_GetItem[3769]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3769]["RewardRepairValue"]["Value"] = 720
	tBossHunderdTower_GetItem[3769]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3769]["LogStep"] = "2[59]"
	tBossHunderdTower_GetItem[3769]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3769]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3769]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3770] = {}
	tBossHunderdTower_GetItem[3770]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3770]["RewardStrengthValue"]["Value"] = 300
	tBossHunderdTower_GetItem[3770]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3770]["LogStep"] = "2[60]"
	tBossHunderdTower_GetItem[3770]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3770]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3770]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3771] = {}
	tBossHunderdTower_GetItem[3771]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3771]["RewardRepairValue"]["Value"] = 760
	tBossHunderdTower_GetItem[3771]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3771]["LogStep"] = "2[61]"
	tBossHunderdTower_GetItem[3771]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3771]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3771]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3772] = {}
	tBossHunderdTower_GetItem[3772]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3772]["RewardStrengthValue"]["Value"] = 320
	tBossHunderdTower_GetItem[3772]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3772]["LogStep"] = "2[62]"
	tBossHunderdTower_GetItem[3772]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3772]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3772]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3773] = {}
	tBossHunderdTower_GetItem[3773]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3773]["RewardRepairValue"]["Value"] = 760
	tBossHunderdTower_GetItem[3773]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3773]["LogStep"] = "2[63]"
	tBossHunderdTower_GetItem[3773]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3773]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3773]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3774] = {}
	tBossHunderdTower_GetItem[3774]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3774]["RewardStrengthValue"]["Value"] = 320
	tBossHunderdTower_GetItem[3774]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3774]["LogStep"] = "2[64]"
	tBossHunderdTower_GetItem[3774]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3774]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3774]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3775] = {}
	tBossHunderdTower_GetItem[3775]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3775]["RewardRepairValue"]["Value"] = 800
	tBossHunderdTower_GetItem[3775]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3775]["LogStep"] = "2[65]"
	tBossHunderdTower_GetItem[3775]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3775]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3775]["RewardEffect"]["Effect"] = "angelwing"
	
	tBossHunderdTower_GetItem[3776] = {}
	tBossHunderdTower_GetItem[3776]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3776]["RewardStrengthValue"]["Value"] = 340
	tBossHunderdTower_GetItem[3776]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3776]["LogStep"] = "2[66]"
	tBossHunderdTower_GetItem[3776]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3776]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3776]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3777] = {}
	tBossHunderdTower_GetItem[3777]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3777]["RewardRepairValue"]["Value"] = 800
	tBossHunderdTower_GetItem[3777]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3777]["LogStep"] = "2[67]"
	tBossHunderdTower_GetItem[3777]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3777]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3777]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3778] = {}
	tBossHunderdTower_GetItem[3778]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3778]["RewardStrengthValue"]["Value"] = 340
	tBossHunderdTower_GetItem[3778]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3778]["LogStep"] = "2[68]"
	tBossHunderdTower_GetItem[3778]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3778]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3778]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3779] = {}
	tBossHunderdTower_GetItem[3779]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3779]["RewardRepairValue"]["Value"] = 820
	tBossHunderdTower_GetItem[3779]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3779]["LogStep"] = "2[69]"
	tBossHunderdTower_GetItem[3779]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3779]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3779]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3780] = {}
	tBossHunderdTower_GetItem[3780]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3780]["RewardStrengthValue"]["Value"] = 360
	tBossHunderdTower_GetItem[3780]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3780]["LogStep"] = "2[70]"
	tBossHunderdTower_GetItem[3780]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3780]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3780]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3781] = {}
	tBossHunderdTower_GetItem[3781]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3781]["RewardRepairValue"]["Value"] = 820
	tBossHunderdTower_GetItem[3781]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3781]["LogStep"] = "2[71]"
	tBossHunderdTower_GetItem[3781]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3781]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3781]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3782] = {}
	tBossHunderdTower_GetItem[3782]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3782]["RewardStrengthValue"]["Value"] = 360
	tBossHunderdTower_GetItem[3782]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3782]["LogStep"] = "2[72]"
	tBossHunderdTower_GetItem[3782]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3782]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3782]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3783] = {}
	tBossHunderdTower_GetItem[3783]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3783]["RewardRepairValue"]["Value"] = 840
	tBossHunderdTower_GetItem[3783]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3783]["LogStep"] = "2[73]"
	tBossHunderdTower_GetItem[3783]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3783]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3783]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3784] = {}
	tBossHunderdTower_GetItem[3784]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3784]["RewardStrengthValue"]["Value"] = 380
	tBossHunderdTower_GetItem[3784]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3784]["LogStep"] = "2[74]"
	tBossHunderdTower_GetItem[3784]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3784]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3784]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3785] = {}
	tBossHunderdTower_GetItem[3785]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3785]["RewardRepairValue"]["Value"] = 840
	tBossHunderdTower_GetItem[3785]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3785]["LogStep"] = "2[75]"
	tBossHunderdTower_GetItem[3785]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3785]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3785]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3786] = {}
	tBossHunderdTower_GetItem[3786]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3786]["RewardStrengthValue"]["Value"] = 380
	tBossHunderdTower_GetItem[3786]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3786]["LogStep"] = "2[76]"
	tBossHunderdTower_GetItem[3786]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3786]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3786]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3787] = {}
	tBossHunderdTower_GetItem[3787]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3787]["RewardRepairValue"]["Value"] = 860
	tBossHunderdTower_GetItem[3787]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3787]["LogStep"] = "2[77]"
	tBossHunderdTower_GetItem[3787]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3787]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3787]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3788] = {}
	tBossHunderdTower_GetItem[3788]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3788]["RewardStrengthValue"]["Value"] = 400
	tBossHunderdTower_GetItem[3788]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3788]["LogStep"] = "2[78]"
	tBossHunderdTower_GetItem[3788]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3788]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3788]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3789] = {}
	tBossHunderdTower_GetItem[3789]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3789]["RewardRepairValue"]["Value"] = 860
	tBossHunderdTower_GetItem[3789]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3789]["LogStep"] = "2[79]"
	tBossHunderdTower_GetItem[3789]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3789]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3789]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3790] = {}
	tBossHunderdTower_GetItem[3790]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3790]["RewardStrengthValue"]["Value"] = 400
	tBossHunderdTower_GetItem[3790]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3790]["LogStep"] = "2[80]"
	tBossHunderdTower_GetItem[3790]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3790]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3790]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3791] = {}
	tBossHunderdTower_GetItem[3791]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3791]["RewardRepairValue"]["Value"] = 880
	tBossHunderdTower_GetItem[3791]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3791]["LogStep"] = "2[81]"
	tBossHunderdTower_GetItem[3791]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3791]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3791]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3792] = {}
	tBossHunderdTower_GetItem[3792]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3792]["RewardStrengthValue"]["Value"] = 420
	tBossHunderdTower_GetItem[3792]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3792]["LogStep"] = "2[82]"
	tBossHunderdTower_GetItem[3792]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3792]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3792]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3793] = {}
	tBossHunderdTower_GetItem[3793]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3793]["RewardRepairValue"]["Value"] = 880
	tBossHunderdTower_GetItem[3793]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3793]["LogStep"] = "2[83]"
	tBossHunderdTower_GetItem[3793]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3793]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3793]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3794] = {}
	tBossHunderdTower_GetItem[3794]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3794]["RewardStrengthValue"]["Value"] = 420
	tBossHunderdTower_GetItem[3794]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3794]["LogStep"] = "2[84]"
	tBossHunderdTower_GetItem[3794]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3794]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3794]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3795] = {}
	tBossHunderdTower_GetItem[3795]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3795]["RewardRepairValue"]["Value"] = 900
	tBossHunderdTower_GetItem[3795]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3795]["LogStep"] = "2[85]"
	tBossHunderdTower_GetItem[3795]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3795]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3795]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3796] = {}
	tBossHunderdTower_GetItem[3796]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3796]["RewardStrengthValue"]["Value"] = 440
	tBossHunderdTower_GetItem[3796]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3796]["LogStep"] = "2[86]"
	tBossHunderdTower_GetItem[3796]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3796]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3796]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3797] = {}
	tBossHunderdTower_GetItem[3797]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3797]["RewardRepairValue"]["Value"] = 900
	tBossHunderdTower_GetItem[3797]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3797]["LogStep"] = "2[87]"
	tBossHunderdTower_GetItem[3797]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3797]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3797]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3798] = {}
	tBossHunderdTower_GetItem[3798]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3798]["RewardStrengthValue"]["Value"] = 440
	tBossHunderdTower_GetItem[3798]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3798]["LogStep"] = "2[88]"
	tBossHunderdTower_GetItem[3798]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3798]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3798]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3799] = {}
	tBossHunderdTower_GetItem[3799]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3799]["RewardRepairValue"]["Value"] = 920
	tBossHunderdTower_GetItem[3799]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3799]["LogStep"] = "2[89]"
	tBossHunderdTower_GetItem[3799]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3799]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3799]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3800] = {}
	tBossHunderdTower_GetItem[3800]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3800]["RewardStrengthValue"]["Value"] = 460
	tBossHunderdTower_GetItem[3800]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3800]["LogStep"] = "2[90]"
	tBossHunderdTower_GetItem[3800]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3800]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3800]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3801] = {}
	tBossHunderdTower_GetItem[3801]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3801]["RewardRepairValue"]["Value"] = 920
	tBossHunderdTower_GetItem[3801]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3801]["LogStep"] = "2[91]"
	tBossHunderdTower_GetItem[3801]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3801]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3801]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3802] = {}
	tBossHunderdTower_GetItem[3802]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3802]["RewardStrengthValue"]["Value"] = 460
	tBossHunderdTower_GetItem[3802]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3802]["LogStep"] = "2[92]"
	tBossHunderdTower_GetItem[3802]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3802]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3802]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3803] = {}
	tBossHunderdTower_GetItem[3803]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3803]["RewardRepairValue"]["Value"] = 940
	tBossHunderdTower_GetItem[3803]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3803]["LogStep"] = "2[93]"
	tBossHunderdTower_GetItem[3803]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3803]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3803]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3804] = {}
	tBossHunderdTower_GetItem[3804]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3804]["RewardStrengthValue"]["Value"] = 480
	tBossHunderdTower_GetItem[3804]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3804]["LogStep"] = "2[94]"
	tBossHunderdTower_GetItem[3804]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3804]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3804]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3805] = {}
	tBossHunderdTower_GetItem[3805]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3805]["RewardRepairValue"]["Value"] = 960
	tBossHunderdTower_GetItem[3805]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3805]["LogStep"] = "2[95]"
	tBossHunderdTower_GetItem[3805]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3805]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3805]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3806] = {}
	tBossHunderdTower_GetItem[3806]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3806]["RewardStrengthValue"]["Value"] = 480
	tBossHunderdTower_GetItem[3806]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3806]["LogStep"] = "2[96]"
	tBossHunderdTower_GetItem[3806]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3806]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3806]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3807] = {}
	tBossHunderdTower_GetItem[3807]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3807]["RewardRepairValue"]["Value"] = 980
	tBossHunderdTower_GetItem[3807]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3807]["LogStep"] = "2[97]"
	tBossHunderdTower_GetItem[3807]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3807]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3807]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3808] = {}
	tBossHunderdTower_GetItem[3808]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3808]["RewardStrengthValue"]["Value"] = 500
	tBossHunderdTower_GetItem[3808]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3808]["LogStep"] = "2[98]"
	tBossHunderdTower_GetItem[3808]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3808]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3808]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3809] = {}
	tBossHunderdTower_GetItem[3809]["RewardRepairValue"] = {}
	tBossHunderdTower_GetItem[3809]["RewardRepairValue"]["Value"] = 1000
	tBossHunderdTower_GetItem[3809]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3809]["LogStep"] = "2[99]"
	tBossHunderdTower_GetItem[3809]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3809]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3809]["RewardEffect"]["Effect"] = "angelwing"

	tBossHunderdTower_GetItem[3810] = {}
	tBossHunderdTower_GetItem[3810]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3810]["RewardStrengthValue"]["Value"] = 500
	tBossHunderdTower_GetItem[3810]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3810]["LogStep"] = "2[100]"
	tBossHunderdTower_GetItem[3810]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3810]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3810]["RewardEffect"]["Effect"] = "angelwing"


	tBossHunderdTower_GetItem[3309097] = {}
	tBossHunderdTower_GetItem[3309097][1] = {}
	tBossHunderdTower_GetItem[3309097][1]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3309097][1]["RewardStrengthValue"]["Value"] = 100
	tBossHunderdTower_GetItem[3309097][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][1]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][1]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tBossHunderdTower_GetItem[3309097][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3309097][1]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3309097][1]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3309097][1]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3309097][1]["RewardEffect"]["Effect"] = "zf2-e128"

	--随机
	tBossHunderdTower_GetItem[3309097][2] = {}
	tBossHunderdTower_GetItem[3309097][2]["ItemChanceSum"] = 10000
	
	tBossHunderdTower_GetItem[3309097][2][1] = {}
	tBossHunderdTower_GetItem[3309097][2][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][1]["ItemChance"] = 3000
	tBossHunderdTower_GetItem[3309097][2][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][1]["RewardItem"][1] = {}  --微光星陨石
	tBossHunderdTower_GetItem[3309097][2][1]["RewardItem"][1]["Id"] = 3009000
	tBossHunderdTower_GetItem[3309097][2][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3309097][2][1]["Log"] = "0,0,3309097,1,12000313,2,3009000,1"

	tBossHunderdTower_GetItem[3309097][2][2] = {}
	tBossHunderdTower_GetItem[3309097][2][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][2]["ItemChance"] = 1600
	tBossHunderdTower_GetItem[3309097][2][2]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][2]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][2][2]["RewardItem"][1]["Id"] = 3008188  --200气力值精装包
	tBossHunderdTower_GetItem[3309097][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309097][2][2]["Log"] = "0,0,3309097,1,12000313,2,3008188,1"

	tBossHunderdTower_GetItem[3309097][2][3] = {}
	tBossHunderdTower_GetItem[3309097][2][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][3]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3309097][2][3]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][3]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][2][3]["RewardItem"][1]["Id"] = 3008190  --500气力值精装包
	tBossHunderdTower_GetItem[3309097][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309097][2][3]["Log"] = "0,0,3309097,1,12000313,2,3008190,1"

	tBossHunderdTower_GetItem[3309097][2][4] = {}
	tBossHunderdTower_GetItem[3309097][2][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][4]["ItemChance"] = 1400
	tBossHunderdTower_GetItem[3309097][2][4]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][4]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][2][4]["RewardItem"][1]["Id"] = 730002  --赤炼石+2
	tBossHunderdTower_GetItem[3309097][2][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309097][2][4]["Log"] = "0,0,3309097,1,12000313,2,730002,1"

	tBossHunderdTower_GetItem[3309097][2][5] = {}
	tBossHunderdTower_GetItem[3309097][2][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][5]["ItemChance"] = 700
	tBossHunderdTower_GetItem[3309097][2][5]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][5]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][2][5]["RewardItem"][1]["Id"] = 730003  --赤炼石+3
	tBossHunderdTower_GetItem[3309097][2][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309097][2][5]["Log"] = "0,0,3309097,1,12000313,2,730003,1"

	tBossHunderdTower_GetItem[3309097][2][6] = {}
	tBossHunderdTower_GetItem[3309097][2][6]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][6]["ItemChance"] = 80
	tBossHunderdTower_GetItem[3309097][2][6]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][6]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][2][6]["RewardItem"][1]["Id"] = 730005  --赤炼石+5
	tBossHunderdTower_GetItem[3309097][2][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309097][2][6]["Log"] = "0,0,3309097,1,12000313,2,730005,1"
	tBossHunderdTower_GetItem[3309097][2][6]["Index"] = 1
	
	tBossHunderdTower_GetItem[3309097][2][7] = {}
	tBossHunderdTower_GetItem[3309097][2][7]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309097][2][7]["ItemChance"] = 2220
	tBossHunderdTower_GetItem[3309097][2][7]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309097][2][7]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309097][2][7]["RewardItem"][1]["Id"] = 720960  --神魂礼包
	tBossHunderdTower_GetItem[3309097][2][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309097][2][7]["Log"] = "0,0,3309097,1,12000313,2,730005,1"

	
	-- 3309098 精致礼盒
	tBossHunderdTower_GetItem[3309098] = {}
	tBossHunderdTower_GetItem[3309098][1] = {}
	tBossHunderdTower_GetItem[3309098][1]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3309098][1]["RewardStrengthValue"]["Value"] = 200
	tBossHunderdTower_GetItem[3309098][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][1]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][1]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tBossHunderdTower_GetItem[3309098][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3309098][1]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3309098][1]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3309098][1]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3309098][1]["RewardEffect"]["Effect"] = "zf2-e128"

	
	tBossHunderdTower_GetItem[3309098][2] = {}
	tBossHunderdTower_GetItem[3309098][2]["ItemChanceSum"] = 10000
	
	tBossHunderdTower_GetItem[3309098][2][1] = {}
	tBossHunderdTower_GetItem[3309098][2][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][1]["ItemChance"] = 2200
	tBossHunderdTower_GetItem[3309098][2][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][1]["RewardItem"][1] = {}  --明亮星陨石
	tBossHunderdTower_GetItem[3309098][2][1]["RewardItem"][1]["Id"] = 3009001
	tBossHunderdTower_GetItem[3309098][2][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3309098][2][1]["Log"] = "0,0,3309098,1,12000313,2,3009001,1"

	tBossHunderdTower_GetItem[3309098][2][2] = {}
	tBossHunderdTower_GetItem[3309098][2][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][2]["ItemChance"] = 1420
	tBossHunderdTower_GetItem[3309098][2][2]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][2]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][2]["RewardItem"][1]["Id"] = 3304327  --300气力值精装包
	tBossHunderdTower_GetItem[3309098][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309098][2][2]["Log"] = "0,0,3309098,1,12000313,2,3304327,1"

	tBossHunderdTower_GetItem[3309098][2][3] = {}
	tBossHunderdTower_GetItem[3309098][2][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][3]["ItemChance"] = 1900
	tBossHunderdTower_GetItem[3309098][2][3]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][3]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][3]["RewardItem"][1]["Id"] = 3000107  --精致神魂礼包
	tBossHunderdTower_GetItem[3309098][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309098][2][3]["Log"] = "0,0,3309098,1,12000313,2,3000107,1"

	tBossHunderdTower_GetItem[3309098][2][4] = {}
	tBossHunderdTower_GetItem[3309098][2][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][4]["ItemChance"] = 1900
	tBossHunderdTower_GetItem[3309098][2][4]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][4]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][4]["RewardItem"][1]["Id"] = 720911  --淬炼礼包
	tBossHunderdTower_GetItem[3309098][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309098][2][4]["Log"] = "0,0,3309098,1,12000313,2,720911,1"

	tBossHunderdTower_GetItem[3309098][2][5] = {}
	tBossHunderdTower_GetItem[3309098][2][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][5]["ItemChance"] = 80
	tBossHunderdTower_GetItem[3309098][2][5]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][5]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][5]["RewardItem"][1]["Id"] = 730005  --赤炼石+5
	tBossHunderdTower_GetItem[3309098][2][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309098][2][5]["Log"] = "0,0,3309098,1,12000313,2,730005,1"
	tBossHunderdTower_GetItem[3309098][2][5]["Index"] = 1
	
	tBossHunderdTower_GetItem[3309098][2][6] = {}
	tBossHunderdTower_GetItem[3309098][2][6]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][6]["ItemChance"] = 300
	tBossHunderdTower_GetItem[3309098][2][6]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][6]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][6]["RewardItem"][1]["Id"] = 730004  --赤炼石+4
	tBossHunderdTower_GetItem[3309098][2][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309098][2][6]["Log"] = "0,0,3309098,1,12000313,2,730004,1"
	tBossHunderdTower_GetItem[3309098][2][6]["Index"] = 1
	
	tBossHunderdTower_GetItem[3309098][2][7] = {}
	tBossHunderdTower_GetItem[3309098][2][7]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][7]["ItemChance"] = 700
	tBossHunderdTower_GetItem[3309098][2][7]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][7]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][7]["RewardItem"][1]["Id"] = 730003  --赤炼石+3
	tBossHunderdTower_GetItem[3309098][2][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309098][2][7]["Log"] = "0,0,3309098,1,12000313,2,730003,1"

	tBossHunderdTower_GetItem[3309098][2][8] = {}
	tBossHunderdTower_GetItem[3309098][2][8]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][8]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3309098][2][8]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][8]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][8]["RewardItem"][1]["Id"] = 3008190  --500气力值精装包
	tBossHunderdTower_GetItem[3309098][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309098][2][8]["Log"] = "0,0,3309098,1,12000313,2,3008190,1"

	tBossHunderdTower_GetItem[3309098][2][9] = {}
	tBossHunderdTower_GetItem[3309098][2][9]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309098][2][9]["ItemChance"] = 500
	tBossHunderdTower_GetItem[3309098][2][9]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309098][2][9]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309098][2][9]["RewardItem"][1]["Id"] = 720881  --2千点骑宠积分大礼包
	tBossHunderdTower_GetItem[3309098][2][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tBossHunderdTower_GetItem[3309098][2][9]["Log"] = "0,0,3309098,1,12000313,2,720881,1"
	tBossHunderdTower_GetItem[3309098][2][9]["Index"] = 1

	
	-- 3309099 极品礼盒
	tBossHunderdTower_GetItem[3309099] = {}
	tBossHunderdTower_GetItem[3309099][1] = {}
	tBossHunderdTower_GetItem[3309099][1]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3309099][1]["RewardStrengthValue"]["Value"] = 300
	tBossHunderdTower_GetItem[3309099][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][1]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][1]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tBossHunderdTower_GetItem[3309099][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3309099][1]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3309099][1]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3309099][1]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3309099][1]["RewardEffect"]["Effect"] = "zf2-e128"

	
	tBossHunderdTower_GetItem[3309099][2] = {}
	tBossHunderdTower_GetItem[3309099][2]["ItemChanceSum"] = 10000
	
	tBossHunderdTower_GetItem[3309099][2][1] = {}
	tBossHunderdTower_GetItem[3309099][2][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][1]["ItemChance"] = 1100
	tBossHunderdTower_GetItem[3309099][2][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][1]["RewardItem"][1] = {}  --3千点骑宠积分大礼包
	tBossHunderdTower_GetItem[3309099][2][1]["RewardItem"][1]["Id"] = 720880
	tBossHunderdTower_GetItem[3309099][2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tBossHunderdTower_GetItem[3309099][2][1]["Log"] = "0,0,3309099,1,12000313,2,720880,1"
	tBossHunderdTower_GetItem[3309099][2][1]["Index"] = 1

	tBossHunderdTower_GetItem[3309099][2][2] = {}
	tBossHunderdTower_GetItem[3309099][2][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][2]["ItemChance"] = 120
	tBossHunderdTower_GetItem[3309099][2][2]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][2]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][2]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tBossHunderdTower_GetItem[3309099][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3309099][2][2]["Log"] = "0,0,3309099,1,12000313,2,3009002,1"
	tBossHunderdTower_GetItem[3309099][2][2]["Index"] = 1

	tBossHunderdTower_GetItem[3309099][2][3] = {}
	tBossHunderdTower_GetItem[3309099][2][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][3]["ItemChance"] = 400
	tBossHunderdTower_GetItem[3309099][2][3]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][3]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][3]["RewardItem"][1]["Id"] = 3008221  --岫山玉
	tBossHunderdTower_GetItem[3309099][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309099][2][3]["Log"] = "0,0,3309099,1,12000313,2,3008221,1"
	tBossHunderdTower_GetItem[3309099][2][3]["Index"] = 1

	tBossHunderdTower_GetItem[3309099][2][4] = {}
	tBossHunderdTower_GetItem[3309099][2][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][4]["ItemChance"] = 1700
	tBossHunderdTower_GetItem[3309099][2][4]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][4]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][4]["RewardItem"][1]["Id"] = 720399  --高级淬炼礼包
	tBossHunderdTower_GetItem[3309099][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309099][2][4]["Log"] = "0,0,3309099,1,12000313,2,720399,1"

	tBossHunderdTower_GetItem[3309099][2][5] = {}
	tBossHunderdTower_GetItem[3309099][2][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][5]["ItemChance"] = 1900
	tBossHunderdTower_GetItem[3309099][2][5]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][5]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][5]["RewardItem"][1]["Id"] = 3304324  --100气力值精装包
	tBossHunderdTower_GetItem[3309099][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309099][2][5]["Log"] = "0,0,3309099,1,12000313,2,3304324,1"

	tBossHunderdTower_GetItem[3309099][2][6] = {}
	tBossHunderdTower_GetItem[3309099][2][6]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][6]["ItemChance"] = 1600
	tBossHunderdTower_GetItem[3309099][2][6]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][6]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][6]["RewardItem"][1]["Id"] = 3008188  --200气力值精装包
	tBossHunderdTower_GetItem[3309099][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309099][2][6]["Log"] = "0,0,3309099,1,12000313,2,3008188,1"

	tBossHunderdTower_GetItem[3309099][2][7] = {}
	tBossHunderdTower_GetItem[3309099][2][7]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][7]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3309099][2][7]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][7]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][7]["RewardItem"][1]["Id"] = 3008190  --500气力值精装包
	tBossHunderdTower_GetItem[3309099][2][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309099][2][7]["Log"] = "0,0,3309099,1,12000313,2,3008190,1"

	tBossHunderdTower_GetItem[3309099][2][8] = {}
	tBossHunderdTower_GetItem[3309099][2][8]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][8]["ItemChance"] = 1400
	tBossHunderdTower_GetItem[3309099][2][8]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][8]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][8]["RewardItem"][1]["Id"] = 730002  --赤炼石+2
	tBossHunderdTower_GetItem[3309099][2][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309099][2][8]["Log"] = "0,0,3309099,1,12000313,2,730002,1"

	tBossHunderdTower_GetItem[3309099][2][9] = {}
	tBossHunderdTower_GetItem[3309099][2][9]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][9]["ItemChance"] = 700
	tBossHunderdTower_GetItem[3309099][2][9]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][9]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][9]["RewardItem"][1]["Id"] = 730003  --赤炼石+3
	tBossHunderdTower_GetItem[3309099][2][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3309099][2][9]["Log"] = "0,0,3309099,1,12000313,2,730003,1"

	tBossHunderdTower_GetItem[3309099][2][10] = {}
	tBossHunderdTower_GetItem[3309099][2][10]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309099][2][10]["ItemChance"] = 80
	tBossHunderdTower_GetItem[3309099][2][10]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309099][2][10]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309099][2][10]["RewardItem"][1]["Id"] = 3306370  --高阶稀有神纹黄色神纹碎片
	tBossHunderdTower_GetItem[3309099][2][10]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3309099][2][10]["Log"] = "0,0,3309099,1,12000313,2,3306370,1"
	tBossHunderdTower_GetItem[3309099][2][10]["Index"] = 1

	-- 3316102 极品礼盒
	tBossHunderdTower_GetItem[3316102] = {}
	tBossHunderdTower_GetItem[3316102][1] = {}
	tBossHunderdTower_GetItem[3316102][1]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3316102][1]["RewardStrengthValue"]["Value"] = 300
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"][2] = {}
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"][2]["Id"] = 187415  --1天时效4星外套Hero'sArmor
	tBossHunderdTower_GetItem[3316102][1]["RewardItem"][2]["Attr"] = "0 1 3 1440 1 0 0 1"
	tBossHunderdTower_GetItem[3316102][1]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3316102][1]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3316102][1]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3316102][1]["RewardEffect"]["Effect"] = "zf2-e128"

	
	tBossHunderdTower_GetItem[3316102][2] = {}
	tBossHunderdTower_GetItem[3316102][2]["ItemChanceSum"] = 10000
	
	tBossHunderdTower_GetItem[3316102][2][1] = {}
	tBossHunderdTower_GetItem[3316102][2][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][1]["ItemChance"] = 1100
	tBossHunderdTower_GetItem[3316102][2][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][1]["RewardItem"][1] = {}  --3千点骑宠积分大礼包
	tBossHunderdTower_GetItem[3316102][2][1]["RewardItem"][1]["Id"] = 720880
	tBossHunderdTower_GetItem[3316102][2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tBossHunderdTower_GetItem[3316102][2][1]["Log"] = "0,0,3316102,1,12000313,2,720880,1"
	tBossHunderdTower_GetItem[3316102][2][1]["Index"] = 1

	tBossHunderdTower_GetItem[3316102][2][2] = {}
	tBossHunderdTower_GetItem[3316102][2][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][2]["ItemChance"] = 120
	tBossHunderdTower_GetItem[3316102][2][2]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][2]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][2]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tBossHunderdTower_GetItem[3316102][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBossHunderdTower_GetItem[3316102][2][2]["Log"] = "0,0,3316102,1,12000313,2,3009002,1"
	tBossHunderdTower_GetItem[3316102][2][2]["Index"] = 1

	tBossHunderdTower_GetItem[3316102][2][3] = {}
	tBossHunderdTower_GetItem[3316102][2][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][3]["ItemChance"] = 400
	tBossHunderdTower_GetItem[3316102][2][3]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][3]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][3]["RewardItem"][1]["Id"] = 3008221  --岫山玉
	tBossHunderdTower_GetItem[3316102][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3316102][2][3]["Log"] = "0,0,3316102,1,12000313,2,3008221,1"
	tBossHunderdTower_GetItem[3316102][2][3]["Index"] = 1

	tBossHunderdTower_GetItem[3316102][2][4] = {}
	tBossHunderdTower_GetItem[3316102][2][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][4]["ItemChance"] = 1700
	tBossHunderdTower_GetItem[3316102][2][4]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][4]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][4]["RewardItem"][1]["Id"] = 720399  --高级淬炼礼包
	tBossHunderdTower_GetItem[3316102][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3316102][2][4]["Log"] = "0,0,3316102,1,12000313,2,720399,1"

	tBossHunderdTower_GetItem[3316102][2][5] = {}
	tBossHunderdTower_GetItem[3316102][2][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][5]["ItemChance"] = 1900
	tBossHunderdTower_GetItem[3316102][2][5]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][5]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][5]["RewardItem"][1]["Id"] = 3304324  --100气力值精装包
	tBossHunderdTower_GetItem[3316102][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3316102][2][5]["Log"] = "0,0,3316102,1,12000313,2,3304324,1"

	tBossHunderdTower_GetItem[3316102][2][6] = {}
	tBossHunderdTower_GetItem[3316102][2][6]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][6]["ItemChance"] = 1600
	tBossHunderdTower_GetItem[3316102][2][6]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][6]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][6]["RewardItem"][1]["Id"] = 3008188  --200气力值精装包
	tBossHunderdTower_GetItem[3316102][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3316102][2][6]["Log"] = "0,0,3316102,1,12000313,2,3008188,1"

	tBossHunderdTower_GetItem[3316102][2][7] = {}
	tBossHunderdTower_GetItem[3316102][2][7]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][7]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3316102][2][7]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][7]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][7]["RewardItem"][1]["Id"] = 3008190  --500气力值精装包
	tBossHunderdTower_GetItem[3316102][2][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3316102][2][7]["Log"] = "0,0,3316102,1,12000313,2,3008190,1"

	tBossHunderdTower_GetItem[3316102][2][8] = {}
	tBossHunderdTower_GetItem[3316102][2][8]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][8]["ItemChance"] = 1400
	tBossHunderdTower_GetItem[3316102][2][8]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][8]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][8]["RewardItem"][1]["Id"] = 730002  --赤炼石+2
	tBossHunderdTower_GetItem[3316102][2][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3316102][2][8]["Log"] = "0,0,3316102,1,12000313,2,730002,1"

	tBossHunderdTower_GetItem[3316102][2][9] = {}
	tBossHunderdTower_GetItem[3316102][2][9]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][9]["ItemChance"] = 700
	tBossHunderdTower_GetItem[3316102][2][9]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][9]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][9]["RewardItem"][1]["Id"] = 730003  --赤炼石+3
	tBossHunderdTower_GetItem[3316102][2][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBossHunderdTower_GetItem[3316102][2][9]["Log"] = "0,0,3316102,1,12000313,2,730003,1"

	tBossHunderdTower_GetItem[3316102][2][10] = {}
	tBossHunderdTower_GetItem[3316102][2][10]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3316102][2][10]["ItemChance"] = 80
	tBossHunderdTower_GetItem[3316102][2][10]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3316102][2][10]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3316102][2][10]["RewardItem"][1]["Id"] = 3306370  --高阶稀有神纹黄色神纹碎片
	tBossHunderdTower_GetItem[3316102][2][10]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3316102][2][10]["Log"] = "0,0,3316102,1,12000313,2,3306370,1"
	tBossHunderdTower_GetItem[3316102][2][10]["Index"] = 1

	--获得百层通关奖
	tBossHunderdTower_GetItem["Reward"] = {}
	tBossHunderdTower_GetItem["Reward"]["RewardItem"] = {}
	tBossHunderdTower_GetItem["Reward"]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem["Reward"]["RewardItem"][1]["Id"] = 3309711  -- 坐骑随机包（3星-5星）
	tBossHunderdTower_GetItem["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem["Reward"]["LogId"] = 12000313
	tBossHunderdTower_GetItem["Reward"]["LogStep"] = "2[5]"
	tBossHunderdTower_GetItem["Reward"]["RewardEffect"] = {}
	tBossHunderdTower_GetItem["Reward"]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	
-- 坐骑随机包（3星-5星）
	tBossHunderdTower_GetItem[3309711] = {}
	tBossHunderdTower_GetItem[3309711][1] = {}
	tBossHunderdTower_GetItem[3309711][1]["ItemChanceSum"] = 10000
	
	tBossHunderdTower_GetItem[3309711][1][1] = {}
	tBossHunderdTower_GetItem[3309711][1][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309711][1][1]["ItemChance"] = 2000
	tBossHunderdTower_GetItem[3309711][1][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309711][1][1]["RewardItem"][1] = {}  --云纹灵虎
	tBossHunderdTower_GetItem[3309711][1][1]["RewardItem"][1]["Id"] = 200010
	tBossHunderdTower_GetItem[3309711][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBossHunderdTower_GetItem[3309711][1][1]["Log"] = "0,0,3309711,1,12000313,2,200010,1"
	tBossHunderdTower_GetItem[3309711][1][1]["Index"] = 1

	tBossHunderdTower_GetItem[3309711][1][2] = {}
	tBossHunderdTower_GetItem[3309711][1][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309711][1][2]["ItemChance"] = 2000
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"][1]["Id"] = 200418  --婆罗神像
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"][2] = {}
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"][2]["Id"] = 3008323  --三星坐骑制衣册残页*3
	tBossHunderdTower_GetItem[3309711][1][2]["RewardItem"][2]["Attr"] = "0 3"
	tBossHunderdTower_GetItem[3309711][1][2]["Log"] = "0,0,3309711,1,12000313,2,200418[3008323],1[3]"
	tBossHunderdTower_GetItem[3309711][1][2]["Index"] = 1

	tBossHunderdTower_GetItem[3309711][1][3] = {}
	tBossHunderdTower_GetItem[3309711][1][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309711][1][3]["ItemChance"] = 2000
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"][1]["Id"] = 200409  --圣灵玉兔外套
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"][2] = {}
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"][2]["Id"] = 3008323  --三星坐骑制衣册残页*3
	tBossHunderdTower_GetItem[3309711][1][3]["RewardItem"][2]["Attr"] = "0 3"
	tBossHunderdTower_GetItem[3309711][1][3]["Log"] = "0,0,3309711,1,12000313,2,200409[3008323],1[3]"
	tBossHunderdTower_GetItem[3309711][1][3]["Index"] = 1

	tBossHunderdTower_GetItem[3309711][1][4] = {}
	tBossHunderdTower_GetItem[3309711][1][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309711][1][4]["ItemChance"] = 2000
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"][1]["Id"] = 200500  --福来哥
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"][2] = {}
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"][2]["Id"] = 3008268  --四星坐骑制衣册残页*3
	tBossHunderdTower_GetItem[3309711][1][4]["RewardItem"][2]["Attr"] = "0 3"
	tBossHunderdTower_GetItem[3309711][1][4]["Log"] = "0,0,3309711,1,12000313,2,200500[3008268],1[3]"

	tBossHunderdTower_GetItem[3309711][1][5] = {}
	tBossHunderdTower_GetItem[3309711][1][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3309711][1][5]["ItemChance"] = 2000
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"][1]["Id"] = 200624  --逗哥王
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"][2] = {}
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"][2]["Id"] = 3008268  --四星坐骑制衣册残页*5
	tBossHunderdTower_GetItem[3309711][1][5]["RewardItem"][2]["Attr"] = "0 5"
	tBossHunderdTower_GetItem[3309711][1][5]["Log"] = "0,0,3309711,1,12000313,2,200624[3008268],1[5]"

	-- 随机徽章礼包
	tBossHunderdTower_GetItem[3313354] = {}
	tBossHunderdTower_GetItem[3313354][1] = {}
	tBossHunderdTower_GetItem[3313354][1]["ItemChanceSum"] = 10000
	
	tBossHunderdTower_GetItem[3313354][1][1] = {}
	tBossHunderdTower_GetItem[3313354][1][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][1]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][1]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][1]["RewardItem"][1] = {}  --勇士徽章
	tBossHunderdTower_GetItem[3313354][1][1]["RewardItem"][1]["Id"] = 3313344
	tBossHunderdTower_GetItem[3313354][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][1]["Log"] = "0,0,3313354,1,12000313,2,3313344,1"
	tBossHunderdTower_GetItem[3313354][1][1]["Index"] = 1

	tBossHunderdTower_GetItem[3313354][1][2] = {}
	tBossHunderdTower_GetItem[3313354][1][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][2]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][2]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][2]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][2]["RewardItem"][1]["Id"] = 3313344  --战士徽章
	tBossHunderdTower_GetItem[3313354][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][2]["Log"] = "0,0,3313354,1,12000313,2,3313345,1"
	tBossHunderdTower_GetItem[3313354][1][2]["Index"] = 1

	tBossHunderdTower_GetItem[3313354][1][3] = {}
	tBossHunderdTower_GetItem[3313354][1][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][3]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][3]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][3]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][3]["RewardItem"][1]["Id"] = 3313346  --海盗徽章
	tBossHunderdTower_GetItem[3313354][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][3]["Log"] = "0,0,3313354,1,12000313,2,3313346,1"
	tBossHunderdTower_GetItem[3313354][1][3]["Index"] = 1

	tBossHunderdTower_GetItem[3313354][1][4] = {}
	tBossHunderdTower_GetItem[3313354][1][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][4]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][4]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][4]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][4]["RewardItem"][1]["Id"] = 3313347  --弓手徽章
	tBossHunderdTower_GetItem[3313354][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][4]["Log"] = "0,0,3313354,1,12000313,2,3313347,1"

	tBossHunderdTower_GetItem[3313354][1][5] = {}
	tBossHunderdTower_GetItem[3313354][1][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][5]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][5]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][5]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][5]["RewardItem"][1]["Id"] = 3313348  --铁扇徽章
	tBossHunderdTower_GetItem[3313354][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][5]["Log"] = "0,0,3313354,1,12000313,2,3313348,1"

	tBossHunderdTower_GetItem[3313354][1][6] = {}
	tBossHunderdTower_GetItem[3313354][1][6]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][6]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][6]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][6]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][6]["RewardItem"][1]["Id"] = 3313349  --道士徽章
	tBossHunderdTower_GetItem[3313354][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][6]["Log"] = "0,0,3313354,1,12000313,2,3313349,1"

	tBossHunderdTower_GetItem[3313354][1][7] = {}
	tBossHunderdTower_GetItem[3313354][1][7]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][7]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][7]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][7]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][7]["RewardItem"][1]["Id"] = 3313350  --武僧徽章
	tBossHunderdTower_GetItem[3313354][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][7]["Log"] = "0,0,3313354,1,12000313,2,3313350,1"

	tBossHunderdTower_GetItem[3313354][1][8] = {}
	tBossHunderdTower_GetItem[3313354][1][8]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][8]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][8]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][8]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][8]["RewardItem"][1]["Id"] = 3313351  --忍者徽章
	tBossHunderdTower_GetItem[3313354][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][8]["Log"] = "0,0,3313354,1,12000313,2,3313351,1"

	tBossHunderdTower_GetItem[3313354][1][9] = {}
	tBossHunderdTower_GetItem[3313354][1][9]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][9]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][9]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][9]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][9]["RewardItem"][1]["Id"] = 3313352  --小龙徽章
	tBossHunderdTower_GetItem[3313354][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][9]["Log"] = "0,0,3313354,1,12000313,2,3313352,1"

	tBossHunderdTower_GetItem[3313354][1][10] = {}
	tBossHunderdTower_GetItem[3313354][1][10]["RandomItemChanceType"] = 2
	tBossHunderdTower_GetItem[3313354][1][10]["ItemChance"] = 1000
	tBossHunderdTower_GetItem[3313354][1][10]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313354][1][10]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313354][1][10]["RewardItem"][1]["Id"] = 3313353  --斗神徽章
	tBossHunderdTower_GetItem[3313354][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tBossHunderdTower_GetItem[3313354][1][10]["Log"] = "0,0,3313354,1,12000313,2,3313353,1"

	--大圣魔铠
	tBossHunderdTower_GetItem[3313355] = {}
	tBossHunderdTower_GetItem[3313355]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313355]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313355]["DeleteItem"][1]["Id"] = 3313355
	tBossHunderdTower_GetItem[3313355]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313355]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313355]["RewardItem"][1]["Id"] = 189685  -- 大圣魔铠
	tBossHunderdTower_GetItem[3313355]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBossHunderdTower_GetItem[3313355]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313355]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313355]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313355]["RewardEffect"]["Effect"] = "angelwing"

	--万能神纹精粹*60
	tBossHunderdTower_GetItem[3313356] = {}
	tBossHunderdTower_GetItem[3313356]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313356]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313356]["DeleteItem"][1]["Id"] = 3313356
	tBossHunderdTower_GetItem[3313356]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313356]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313356]["RewardItem"][1]["Id"] = 4060001  -- 万能神纹精粹
	tBossHunderdTower_GetItem[3313356]["RewardItem"][1]["Attr"] = "0 60 3"
	tBossHunderdTower_GetItem[3313356]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313356]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313356]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313356]["RewardEffect"]["Effect"] = "angelwing"

	--明亮星陨石*4
	tBossHunderdTower_GetItem[3313357] = {}
	tBossHunderdTower_GetItem[3313357]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313357]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313357]["DeleteItem"][1]["Id"] = 3313357
	tBossHunderdTower_GetItem[3313357]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313357]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313357]["RewardItem"][1]["Id"] = 3009001  -- 明亮星陨石
	tBossHunderdTower_GetItem[3313357]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tBossHunderdTower_GetItem[3313357]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313357]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313357]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313357]["RewardEffect"]["Effect"] = "angelwing"

-- 万能神纹精粹*150
	tBossHunderdTower_GetItem[3313358] = {}
	tBossHunderdTower_GetItem[3313358]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313358]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313358]["DeleteItem"][1]["Id"] = 3313358
	tBossHunderdTower_GetItem[3313358]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313358]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313358]["RewardItem"][1]["Id"] = 4060001  -- 万能神纹精粹
	tBossHunderdTower_GetItem[3313358]["RewardItem"][1]["Attr"] = "0 150 3"
	tBossHunderdTower_GetItem[3313358]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313358]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313358]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313358]["RewardEffect"]["Effect"] = "angelwing"

-- 神纹源晶*2
	tBossHunderdTower_GetItem[3313359] = {}
	tBossHunderdTower_GetItem[3313359]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313359]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313359]["DeleteItem"][1]["Id"] = 3313359
	tBossHunderdTower_GetItem[3313359]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313359]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313359]["RewardItem"][1]["Id"] = 3311759  -- 神纹源晶
	tBossHunderdTower_GetItem[3313359]["RewardItem"][1]["Attr"] = "0 2 3"
	tBossHunderdTower_GetItem[3313359]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313359]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313359]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313359]["RewardEffect"]["Effect"] = "angelwing"

-- 300点气力包
	tBossHunderdTower_GetItem[3313360] = {}
	tBossHunderdTower_GetItem[3313360]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313360]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313360]["DeleteItem"][1]["Id"] = 3313360
	tBossHunderdTower_GetItem[3313360]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3313360]["RewardStrengthValue"]["Value"] = 300
	tBossHunderdTower_GetItem[3313360]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313360]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313360]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313360]["RewardEffect"]["Effect"] = "angelwing"

-- 800点气力包
	tBossHunderdTower_GetItem[3313361] = {}
	tBossHunderdTower_GetItem[3313361]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313361]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313361]["DeleteItem"][1]["Id"] = 3313361
	tBossHunderdTower_GetItem[3313361]["RewardStrengthValue"] = {}
	tBossHunderdTower_GetItem[3313361]["RewardStrengthValue"]["Value"] = 800
	tBossHunderdTower_GetItem[3313361]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313361]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313361]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313361]["RewardEffect"]["Effect"] = "angelwing"

	--大圣魔铠
	tBossHunderdTower_GetItem[3313499] = {}
	tBossHunderdTower_GetItem[3313499]["DeleteItem"] = {}
	tBossHunderdTower_GetItem[3313499]["DeleteItem"][1] = {}
	tBossHunderdTower_GetItem[3313499]["DeleteItem"][1]["Id"] = 3313499
	tBossHunderdTower_GetItem[3313499]["RewardItem"] = {}
	tBossHunderdTower_GetItem[3313499]["RewardItem"][1] = {}
	tBossHunderdTower_GetItem[3313499]["RewardItem"][1]["Id"] = 200528  -- 大圣魔铠
	tBossHunderdTower_GetItem[3313499]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBossHunderdTower_GetItem[3313499]["LogId"] = 12000313
	tBossHunderdTower_GetItem[3313499]["RewardEffect"] = {}
	tBossHunderdTower_GetItem[3313499]["RewardEffect"]["SzObj"] = "self"
	tBossHunderdTower_GetItem[3313499]["RewardEffect"]["Effect"] = "angelwing"

local tBossHunderdTower_NewEmoneyLog = {}
	tBossHunderdTower_NewEmoneyLog[1] = "350	21743	0	0	1	"  ----参与百层塔玩家数量 
	tBossHunderdTower_NewEmoneyLog[2] = "350	21744	0	0	1	"  ----到达100层玩家数量 

-------------------------------------------------------------概率表--------------------------------------------------------------------------------------------
local tBossHunderdTower_Prob = {}

------------珍贵道具概率表
	tBossHunderdTower_Prob[1] = {}
	tBossHunderdTower_Prob[1]["ItemChanceSum"] = 10000                     
	
	tBossHunderdTower_Prob[1][1] = {}
	tBossHunderdTower_Prob[1][1]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][1]["ItemChance"] = 5000
	tBossHunderdTower_Prob[1][1]["Item_1"]= 3008899 --流星卷碎片
	tBossHunderdTower_Prob[1][1]["Loop"]= "0 1"
	
	tBossHunderdTower_Prob[1][2] = {}
	tBossHunderdTower_Prob[1][2]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][2]["ItemChance"] = 4000
	tBossHunderdTower_Prob[1][2]["Item_1"]= 3007979 --龙珠碎片
	tBossHunderdTower_Prob[1][2]["Loop"]= "0 1"


	tBossHunderdTower_Prob[1][3] = {}
	tBossHunderdTower_Prob[1][3]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][3]["ItemChance"] = 1000
	tBossHunderdTower_Prob[1][3]["Item_1"]= {1,28}   --1阶神魂
	tBossHunderdTower_Prob[1][3]["Loop"]= "0 1 0 2880 1"

	tBossHunderdTower_Prob[1][4] = {}
	tBossHunderdTower_Prob[1][4]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][4]["ItemChance"] = 0
	tBossHunderdTower_Prob[1][4]["Item_1"]= {29,50} 	 --2阶
	tBossHunderdTower_Prob[1][4]["Loop"]= "0 1 0 2880 1"

	tBossHunderdTower_Prob[1][5] = {}
	tBossHunderdTower_Prob[1][5]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][5]["ItemChance"] = 0
	tBossHunderdTower_Prob[1][5]["Item_1"]= {51,81} 	--3阶
	tBossHunderdTower_Prob[1][5]["Loop"]= "0 1 0 2880 1"

	tBossHunderdTower_Prob[1][6] = {}
	tBossHunderdTower_Prob[1][6]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][6]["ItemChance"] = 0
	tBossHunderdTower_Prob[1][6]["Item_1"]= {82,103} 	--4阶
	tBossHunderdTower_Prob[1][6]["Loop"]= "0 1 0 2880 1"
	
	tBossHunderdTower_Prob[1][7] = {}
	tBossHunderdTower_Prob[1][7]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][7]["ItemChance"] = 0
	tBossHunderdTower_Prob[1][7]["Item_1"]= {104,125} 	--5阶
	tBossHunderdTower_Prob[1][7]["Loop"]= "0 1 0 2880 1"
	
	tBossHunderdTower_Prob[1][8] = {}
	tBossHunderdTower_Prob[1][8]["RandomItemChanceType"] = 2
	tBossHunderdTower_Prob[1][8]["ItemChance"] = 0
	tBossHunderdTower_Prob[1][8]["Item_1"]= {126,147} 	--6阶
	tBossHunderdTower_Prob[1][8]["Loop"]= "0 1 0 10080 1"

----标记
	local tBossHunderdTower_ItemFlag = {}
	for i = 3008816,3008835 do
		tBossHunderdTower_ItemFlag[i] = i - 3008815
	end
-------------------------npc扫塔道人
local tBossHunderdTower_DailyStc = {}
	tBossHunderdTower_DailyStc["FloorNum"] = {}
	tBossHunderdTower_DailyStc["FloorNum"]["EventType"] = 139
	tBossHunderdTower_DailyStc["FloorNum"]["DataType"] = 68
	tBossHunderdTower_DailyStc["Task"] = {}
	tBossHunderdTower_DailyStc["Task"]["EventType"] = 145
	tBossHunderdTower_DailyStc["Task"]["DataType"] = 03
	tBossHunderdTower_DailyStc[1] = {}
	tBossHunderdTower_DailyStc[1]["EventType"] = 145
	tBossHunderdTower_DailyStc[1]["DataType"] = 04
	
	tBossHunderdTower_DailyStc[2] = {}
	tBossHunderdTower_DailyStc[2]["EventType"] = 145
	tBossHunderdTower_DailyStc[2]["DataType"] = 05

local tBossHunderdTower_DailyData = {}
	tBossHunderdTower_DailyData["Max"] = 11  --最多出11个选项
	tBossHunderdTower_DailyData["Space"] = 1  ---背包空间
	tBossHunderdTower_DailyData["ItemId"] = 3008453  --如意天石劵
-------------------------------------------------------------------------npc逻辑部分------------------------------------------------------------
----------------------------------------------------百层塔总兵-------------------------------------------------------
function BossHunderdTower_LevelJudge(nLevel)
	if User_JudgeLevelAndMetempsychosis(nLevel,tBossHunderdTower_Data["Metempsychosis"]) then 
		return true
	else
		return false
	end
end

--传送
function BossHunderdTower_GotoNpc(nNpcId,nMapId)
	if nMapId ~= nil then
		local nUserId = Get_UserId()
		local nNowMapId = Get_UserMapId(nUserId)
		if nNowMapId ~= nMapId then
			return
		end
	end
	if nNpcId == tBossHunderdTower_Data["nNpcId"] then
---判断是否组队  不能组队进副本
		local nTeamNum = Get_UserTeamNumbers()
		if nTeamNum >=2 then
			Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["GotoTeam"])
			return
		end
	end
	local nBoundX = tBossHunderdTower_Map[nNpcId]["PosX"]
	local nBoundY = tBossHunderdTower_Map[nNpcId]["PosY"]
	local nMapId = tBossHunderdTower_Map[nNpcId]["MapId"]

	if User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,2,2) then
		User_EffectAdd("self",tBossHunderdTower_Data["GotoEffect"])
	end
end

---我要挑战
function BossHunderdTower_Challenges(nNpcId,nFlag,nNum,nFight)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
---判断是否组队  不能组队进副本
		local nTeamNum = Get_UserTeamNumbers()
		if nTeamNum >= 2 then
			Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["GotoTeam"])
			return
		end
--判断是否加入帮派
	-- local nGuildId = Get_UserGuildId()
	-- if nGuildId <= 0 then
		-- Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NotGotoGuild"])
		-- return
	-- end
---判断战斗力
	local nUserFight = Get_UserBattleLevel()
	if nUserFight < nFight then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NoBattle"])
		return
	end

	-- BossHunderdTower_ResetStc()  --掩码清零
	-- local nNumber = tBossHunderdTower_Num[nNum][2] --掩码标识位
	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
--记录层数
	Task_SetStatistic(nFloorNumEvent,nFloorNumData,nNum,1)
	Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)

	local nTemp = nNum%20
	if nTemp == 0 then
		nTemp = 20
	end 

	local nNumber = math.ceil(nNum/20) --掩码标识位


	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
	local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	--今日已挑战过
	if Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]

	---【失败，今日成功挑战已到上限5次】
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,">=",5) then
		if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		else
			LinkNpcGossipFunc_New(nNpcId,"13-1")
		end
		return
	end
	BossHunderdTower_GotoPlace(1,nNum)
	
end
--传送
function BossHunderdTower_GotoPlace(nFlag,nNum)
---判断是否组队  不能组队进副本
		local nTeamNum = Get_UserTeamNumbers()
		if nTeamNum >= 2 then
			Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["GotoTeam"])
			return
		end

	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
--记录层数
	Task_SetStatistic(nFloorNumEvent,nFloorNumData,nNum,1)
	Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)

--传送到百层塔中
	User_EnterInstance(tBossHunderdTower_Data["Instancetype"])     --进副本
	local nMapId = Get_UserMapId()
--出提示
	if nFlag == 1 then
		local sStr = string.format(tBossHunderdTower_Text["MsgBox"]["GotoTower"],nNum)
		Sys_MsgBox(sStr)
	end
--打log
	local sLog = string.format(tBossHunderdTower_Log["NextFloor"],nNum)
	Sys_SaveActionFestivalLog(sLog) --打log
--播放光效
	User_EffectAdd("self",tBossHunderdTower_Data["GotoEffect"])
	-- User_SetTimer(tBossHunderdTower_Data["Time"],"BossHunderdTower_CallBoss",0)  ---倒计时
	BossHunderdTower_CallBoss(nNum,nMapId)
end
---招出怪
function BossHunderdTower_CallBoss(nNum,nMapId)
	local nNowMapId = Get_UserMapId()

	if nNowMapId ~= nMapId then
		return
	end

	local nMonsterId = tBossHunderdTower_MonsterData[nNum]
	local nPriestMin = tBossHunderdTower_PriestData["Min"]
	local nPriestMax = tBossHunderdTower_PriestData["Max"]
	local nWuPriestMin = tBossHunderdTower_PriestData["WuMin"]
	local nWuPriestMax = tBossHunderdTower_PriestData["WuMax"]

	
	local nUserPro = Get_UserProfession()
	if (nUserPro >= nPriestMin and nUserPro <= nPriestMax) or (nUserPro >= nWuPriestMin and nUserPro <= nWuPriestMax) then  ---道士招怪
		nMonsterId = tBossHunderdTower_PriestMonster[nNum]
	end
	local nPosX = tBossHunderdTower_Data["PosX"]
	local nPosY = tBossHunderdTower_Data["PosY"]
	local nGenId = tBossHunderdTower_Data["GenId"]
	--动态刷出boss
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	User_TalkChannel2005(tBossHunderdTower_Text["MsgBox"]["AppearBoss"])
	--播放光效
	Map_Effect(nMapId,nPosX,nPosY,tBossHunderdTower_Data["BossEffect"]) --光效
	--打log
	Sys_SaveActionFestivalLog(tBossHunderdTower_Log["CallBoss"])

end

---购买挑战次数
function BossHunderdTower_BuyChallengeTime(nNpcId,nFlag,nNeedMoney)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) then
		return
	end

	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
--购买次数
	if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then  --判断购买次数
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return 
	end
	--判断天石
	-- local nNeedMoney = tBossHunderdTower_Data["Emoney"][1]
	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--扣天石
	if not User_AddEMoney(-nNeedMoney) then
		return
	end
	Task_AddStatistic(nBuyTimeEvent,nBuyTimeData,1,1,0)
	Task_SetStcTimestamp(nBuyTimeEvent,nBuyTimeData,0)
	Task_AddStatistic(nChallengeTimeEvent,nChallengeTimeData,-1,1,0)
	Task_SetStcTimestamp(nChallengeTimeEvent,nChallengeTimeData,0)
	Sys_SaveEmoneyBuy(tBossHunderdTower_EmoneyLog[nNeedMoney])  --emoneylog
	if nFlag == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	else
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	end
	local slog = string.format(tBossHunderdTower_Log["BuyTime"],nNeedMoney)
	Sys_SaveActionFestivalLog(slog)

end

----扫荡
-- function BossHunderdTower_Sweep(nNpcId)
-- 判断是否加入帮派
	-- local nGuildId = Get_UserGuildId()
	-- if not (BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])) or nGuildId <= 0 then
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	
	-- local nEmoney = Get_UserEMoney()
	-- local tMoney = BossHunderdTower_SweepPublic()
	-- local nTotalMoney = tMoney[2]
	-- if nEmoney < nTotalMoney then
		-- LinkNpcGossipFunc_New(nNpcId,"3-6")
		-- return
	-- end
	-- local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	-- local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	-- local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	-- local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	-- local nChallengeTime = Get_UserStatisticValue(nChallengeTimeEvent,nChallengeTimeData)
	-- if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,">=",5) and Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5)then
		-- LinkNpcGossipFunc_New(nNpcId,"3-1")
		-- return
	-- end
	-- if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,">=",5) then
		-- LinkNpcGossipFunc_New(nNpcId,"3-2")
		-- return
	-- end
	-- LinkNpcGossipFunc_New(nNpcId,"4-1")

-- end

---花费天石
-- function BossHunderdTower_CostMoney(nNpcId,nTime,nTotalMoney)
	-- local sStr = string.format(tBossHunderdTower_Text[18966]["Text331"],nTotalMoney)
	-- Sys_DialogText(sStr)
	-- Sys_DialogOption(tBossHunderdTower_Text[18966]["Option13"],"</F>BossHunderdTower_NextCostMoney</N>" .. nNpcId .."</N>" .. nTime .."</N>" .. nTotalMoney)
	-- Sys_DialogFace(nNpcId)
	-- Sys_DialogEnd()

-- end
function BossHunderdTower_NextCostMoney(nNpcId,nTime,nTotalMoney)
	-- 隔天掩码清零
	-- BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]

--天石不足
	local nEmoney = Get_UserEMoney()
	if nEmoney < nTotalMoney then
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	if nTime == 0 then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["No"])
		return
	end
--背包空间不足
	if not User_CheckLeftSpace(nTime) then
		local sStr = string.format(tBossHunderdTower_Text[18966]["Text351"],nTime)
		Sys_DialogText(sStr)
		Sys_DialogOption(tBossHunderdTower_Text[18966]["Option15"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
--扣天石
	if not User_AddEMoney(-nTotalMoney) then
		return
	end
	local nEmoneyLog = string.format(tBossHunderdTower_EmoneyLog["Clear"],nTotalMoney,nTotalMoney)
	Sys_SaveEmoneyBuy(nEmoneyLog)  --emoneylog
	-- DailyTrack_Complete(3722)
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) 
	if nFloorNum >=100 then
		nFloorNum = 100
	end
	local nk = 0 --循环次数
	local sItemNames = ""
	local nc = 1  --第2个礼包数量
	local nb = 0  ---代表第一个礼包的个数
	local nNowItemId = 0
	--置掩码
	for i = nFloorNum,1,-1 do
		if nk >= nTime then
			break
		end
		local nNumber = math.ceil(i/20) --掩码标识位
		local nTemp = i%20
		if nTemp == 0 then
			nTemp = 20
		end 
		local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
		local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
		local nValue = Get_UserStatisticValue(nEvent,nType)
		local nTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
		local nTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	---战斗力
		local nUserFight = Get_UserBattleLevel()

--判断是否已经挑战过了
		if (nUserFight >= tBossHunderdTower_Fighting[i]) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue)) then
			Task_AddStatistic(nEvent,nType,tBossHunderdTower_Num[nTemp],1,0) 
			Task_SetStcTimestamp(nEvent,nType,0)
			Task_AddStatistic(nTimeEvent,nTimeData,1,1)
			Task_SetStcTimestamp(nTimeEvent,nTimeData,0)
			local nMonsterId = tBossHunderdTower_MonsterData[i]
			sItemNames = BossHunderdTower_KillBossGetItem(nMonsterId)
			nk = nk + 1
		end

	end
	--光效
	User_EffectAdd("self",tBossHunderdTower_Data["GetEffect"])

	local sText341 = string.format(tBossHunderdTower_Text[18966]["Text341"],sItemNames)

	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) then
		local ta={}
		ta = BossHunderdTower_SweepPublic()
		local nChallengeTime = ta[1]
		local nTotalMoney = ta[2]
		local na = ta[3]  
		local sText412 = string.format(tBossHunderdTower_Text[18966]["Text412"],nChallengeTime)
		local sText413 = string.format(tBossHunderdTower_Text[18966]["Text413"],nTotalMoney,nChallengeTime)
		-- local sText414 = string.format(tBossHunderdTower_Text[18966]["Text414"],na)
		local sOption111 = string.format(tBossHunderdTower_Text[18966]["Option17"],nTotalMoney)
		local sOption411 = string.format(tBossHunderdTower_Text[18966]["Option411"],nChallengeTime)
		Sys_DialogText(tBossHunderdTower_Text[18966]["Text325"])
		Sys_DialogText(sText412)
		Sys_DialogText(sText413)
		Sys_DialogText(sText414)
		Sys_DialogText(sText341)
		Sys_DialogOption(sOption111,"</F>BossHunderdTower_CostMoney</N>" .. 18966 .."</N>" .. nChallengeTime .."</N>" .. nTotalMoney)
		Sys_DialogOption(sOption411,"</F>BossHunderdTower_CostItem</N>" .. 18966 .."</N>" .. nChallengeTime)

		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()

		return
	end
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	local nCostTime = Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData)
	local nBuyTime = 5 - nCostTime
	local nCost = tBossHunderdTower_Data["Emoney"][nCostTime + 1]
	if nCostTime >= 5 then
		local sText = string.format(tBossHunderdTower_Text["MsgBox"]["SweepTower"],sItemNames)
		Sys_MsgBox(sText)
		return
	end
	local sText343 = string.format(tBossHunderdTower_Text[18966]["Text343"],nBuyTime)
	local sText344 = string.format(tBossHunderdTower_Text[18966]["Text344"],nCost)
	local sOption14 = string.format(tBossHunderdTower_Text[18966]["Option14"],nCost)
	
	Sys_DialogText(tBossHunderdTower_Text[18966]["Text345"])
	Sys_DialogText(tBossHunderdTower_Text[18966]["Text346"])
	Sys_DialogText(tBossHunderdTower_Text[18966]["Text342"])
	Sys_DialogText(sText343)
	Sys_DialogText(sText344)
	Sys_DialogText(sText341)
	Sys_DialogText(tBossHunderdTower_Text[18966]["Text347"])
	Sys_DialogOption(sOption14,"</F>BossHunderdTower_BuyChallengeTime</N>" .. 18966 .."</N>" .. 2 .."</N>" .. nCost)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end
----------调用函数
function BossHunderdTower_SweepPublic()
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) 
	if nFloorNum >= 100 then
		nFloorNum = 100
	end
	local nTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]

	local nTime = 5 - Get_UserStatisticValue(nTimeEvent,nTimeData)
	-- local na = nFloorNum - nTime  --表示第几层
	local nb = nFloorNum  --表示到第几层
	local nk = 0
	local nc = 0  --标记花费天石次数
	local nTotalMoney = 0
	-- local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	-- local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	-- local nBuyTime = Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData)
	local nUserFight = Get_UserBattleLevel()

	for i = nFloorNum,1,-1 do
		-- na = i
		local nNumber = math.ceil(i/20) --掩码标识位
		local nTemp = i%20
		if nTemp == 0 then
			nTemp = 20
		end 
		local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
		local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
		local nValue = Get_UserStatisticValue(nEvent,nType)
		if (nUserFight >= tBossHunderdTower_Fighting[i]) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue)) then
			nc = nc + 1
			nTotalMoney = nc*5

		end
		if nc == nTime then  --循环次数
			break
		end
	end
	local tSweep = {nc,nTotalMoney,nTime}
	return tSweep

end
-----------------------------------------------------------------------------npc百层塔护卫------------------------------------------------------------
function BossHunderdTower_This(nNpcId)
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData)  
	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData)

	if nNum > nFloorNum then  --
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NoPass"])
	else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end


end
--扫荡本层
function BossHunderdTower_SweepThis(nNpcId)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
--天石不足
	local nEmoney = Get_UserEMoney()
	if nEmoney < tBossHunderdTower_Data["Emoney"]["Sweep"] then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
--扣天石
	if not User_AddEMoney(-tBossHunderdTower_Data["Emoney"]["Sweep"]) then
		return
	end
	local nEmoneyLog = string.format(tBossHunderdTower_EmoneyLog["Clear"],tBossHunderdTower_Data["Emoney"]["Sweep"],tBossHunderdTower_Data["Emoney"]["Sweep"])
	Sys_SaveEmoneyBuy(nEmoneyLog)  --emoneylog

	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData)  --已解锁的层数
	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData)

	local nNumber = math.ceil(nNum/20) --掩码标识位
	local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
	local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
	if nFloorNum >=100 then
		nFloorNum = 100
	end

	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]

	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nTemp = nNum%20
	if nTemp == 0 then
		nTemp = 20
	end 
	
	local nMapId = Get_UserMapId()
	Monster_DelMonster(nMapId,tBossHunderdTower_MonsterData[nNum])  --删除怪物
	Task_AddStatistic(nEvent,nType,tBossHunderdTower_Num[nTemp],1,0) 
	Task_SetStcTimestamp(nEvent,nType,0)
	Task_AddStatistic(nChallengeTimeEvent,nChallengeTimeData,1,1,0) 
	Task_SetStcTimestamp(nChallengeTimeEvent,nChallengeTimeData,0)
	DailyTrack_Complete(3722)
	-- if (nNum >= (nFloorNum+1)) and ((nFloorNum+1) < 100) then
		-- Task_AddStatistic(nFloorEvent,nFloorData,1,1,0) 
		-- Task_SetStcTimestamp(nEvent,nType,0)
	-- end
	local nAreaId = math.ceil(nNum/5)
	Item_AddItem(tBossHunderdTower_AreaItemId[nAreaId])
	local sItemName = Get_ItemtypeName(tBossHunderdTower_AreaItemId[nAreaId])
	local slog = string.format(tBossHunderdTower_Log["SweepGet"],tBossHunderdTower_Data["Emoney"]["Sweep"],tBossHunderdTower_AreaItemId[nAreaId])
	Sys_SaveActionFestivalLog(slog)
	--光效
	User_EffectAdd("self",tBossHunderdTower_Data["GetEffect"])
	LinkNpcGossipFunc_New(nNpcId,"2-3")
	

------------------------判断是否传送到下一层(掩码重新获取)

	if nNum >= 100 then
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["BestTower"])
		return
	end
	---判断战斗力
	local nUserFight = Get_UserBattleLevel()
	if nUserFight < tBossHunderdTower_Fighting[nNum+1] then
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NoBattle1"])
		return
	end

	local na = (nNum+1)%20
	if na == 0 then
		na = 20
	end 
	local nNumber1 = math.ceil((nNum+1)/20) --掩码标识位
	local nEvent1 = tBossHunderdTower_Stc[nNumber1]["EventType"]
	local nType1 = tBossHunderdTower_Stc[nNumber1]["DataType"]
	local nValue1 = Get_UserStatisticValue(nEvent1,nType1)
	local nFloorNum1 = Get_UserStatisticValue(nFloorEvent,nFloorData) + 1
	if nFloorNum1 >=100 then
		nFloorNum1 = 100
	end

	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) and (nFloorNum<=100) and (nFloorNum1 > nNum) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[na],nValue1)) then
		Task_AddStatistic(nFloorNumEvent,nFloorNumData,1,1)
		Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		BossHunderdTower_GotoPlace(1,nNum+1)     --进副本

	else
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		local sText = string.format(tBossHunderdTower_Text["MsgBox"]["NoGoto"],sItemName)
		Sys_MsgBox(sText)
	end

end


----打怪成功置掩码封装函数
function BossHunderdTower_KillMonster()
	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData)
	local nNumber = math.ceil(nFloorNum/20) --掩码标识位
	local nTemp = nFloorNum%20
	if nTemp == 0 then
		nTemp = 20
	end 

	local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
	local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]  --免费挑战次数
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nMaxNum = Get_UserStatisticValue(nFloorEvent,nFloorData) + 1 --已解锁的层数
	-- local nBossEvent = tBossHunderdTower_Stc["Boss"]["EventType"]
	-- local nBossData = tBossHunderdTower_Stc["Boss"]["DataType"]

	if (nMaxNum <= nFloorNum) and (nMaxNum <=100) then
		Task_AddStatistic(nFloorEvent,nFloorData,1,1)
		Task_SetStcTimestamp(nFloorEvent,nFloorData,0)
	end

	Task_AddStatistic(nEvent,nType,tBossHunderdTower_Num[nTemp],1,0) --标志今天已挑战过
	Task_SetStcTimestamp(nEvent,nType,0)
	Task_AddStatistic(nChallengeTimeEvent,nChallengeTimeData,1,1)
	Task_SetStcTimestamp(nChallengeTimeEvent,nChallengeTimeData,0)
	-- Task_SetStatistic(nBossEvent,nBossData,0,1) --标志招出boss掩码
	-- Task_SetStcTimestamp(nBossEvent,nBossData,0)

end

---隔天掩码清零封装函数
function BossHunderdTower_ResetStc()
	-- local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	-- local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]  --免费挑战次数
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	if Task_StcInterval(nChallengeTimeEvent,nChallengeTimeData,1,4) then
		for i=1,5 do
			Task_SetStatistic(tBossHunderdTower_Stc[i]["EventType"],tBossHunderdTower_Stc[i]["DataType"],0,1)
			Task_SetStcTimestamp(tBossHunderdTower_Stc[i]["EventType"],tBossHunderdTower_Stc[i]["DataType"],0)
		end
		Task_SetStatistic(nChallengeTimeEvent,nChallengeTimeData,0,1)
		Task_SetStcTimestamp(nChallengeTimeEvent,nChallengeTimeData,0)
		Task_SetStatistic(nBuyTimeEvent,nBuyTimeData,0,1)
		Task_SetStcTimestamp(nBuyTimeEvent,nBuyTimeData,0)
		-- Task_SetStatistic(nFloorNumEvent,nFloorNumData,0,1)
		-- Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)
	end 
end 

---出5个选项
function BossHunderdTower_Option4()
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) + 5
	if nFloorNum >= 105 then
		nFloorNum = 104
	end
	local nFlag = 0
	local nNpcId = Get_NpcId()
	local nNum = 0
	local na = 0
	for i = 4,14 do
		nNum = nFloorNum - i
		if nNum == 0 then
			break
		end
		-- if nNum > 100 then
			-- nNum = 100
		-- end

		local nNumber = math.ceil(nNum/20) --掩码标识位
		local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
		local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
		local nValue = Get_UserStatisticValue(nEvent,nType)
		local nTemp = nNum%20
		local nFight = tBossHunderdTower_Fighting[nNum]
		if nTemp == 0 then
			nTemp = 20
		end 
		if Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue) then
			nFlag = 3
		else
			nFlag = 1  --已解锁
		end
		tNpcGossip[18966]["Option" .. i] =string.format(tBossHunderdTower_Text[18966]["Option4"],nNum,nFight,tBossHunderdTower_Text["Tip"][nFlag])
		tNpcGossip[18966]["OptionFunc" .. i] = "</F>BossHunderdTower_Challenges</N>" .. nNpcId .. "</N>" .. nFlag .."</N>"..nNum .."</N>"..nFight
		na = na + 1
	end
	if na < 11 then
		na = 11 - na
		for k=1,na do
			local nb = 15 - k
			tNpcGossip[18966]["Option" .. nb] = ""
		end
	end
	-- local ng = 1
end
--获取礼包名字
function BossHunderdTower_ItemName(nNumber)
	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData) 
	local nFlag = math.ceil(nFloorNum/5)
	local sItemName = Get_ItemtypeName(tBossHunderdTower_AreaItemId[nFlag])
	tNpcGossip[18977]["Text" .. nNumber] = string.format(tBossHunderdTower_Text[18977]["Text" .. nNumber],sItemName)

	return true
end
-------------------------------npc扫塔道人
--获取掩码
function BossHunderdTower_DailyGetStc(Flag)
	local EventType = tBossHunderdTower_DailyStc[Flag]["EventType"]
	local DataType = tBossHunderdTower_DailyStc[Flag]["DataType"]
	local nNum = Get_UserStatisticValue(EventType,DataType)
	return nNum
end
--设置掩码
function BossHunderdTower_DailySetStc(Flag,nNum)
	local EventType = tBossHunderdTower_DailyStc[Flag]["EventType"]
	local DataType = tBossHunderdTower_DailyStc[Flag]["DataType"]
	Task_SetStatistic(EventType,DataType,nNum,1)
	Task_SetStcTimestamp(EventType,DataType,0)
end
---随机两个层数
function BossHunderdTower_DailyRandomFloor()
	local nFloorNum = BossHunderdTower_DailyGetStc("FloorNum") + 1  --已解锁的层数
	if nFloorNum >= 100 then
		nFloorNum = 100
	end
	local ta = {}  --存放5的倍数的层数（5.10.15....）
	local Num1 = 5  --第一个boss层数
	local nSign = 0
	for j = nFloorNum,1,-1 do
		if nSign < tBossHunderdTower_DailyData["Max"] then
			ta[nSign+1] = j
			nSign = nSign + 1
		end
	end
	local ta1 = {}
	if nFloorNum > 9 then
		for i,v in ipairs(ta) do
			if v % 5 == 0 then
				table.insert(ta1,v)
			end
		end
		local Num11 = math.random(1,#ta1)
		Num1 = ta1[Num11]
	end
---第二个表存非5的倍数
	local tb1 = {}
	for i,v in ipairs(ta) do
		if v % 5 ~= 0 then
			table.insert(tb1,v)
		end
	end

	local nNumber = #tb1
	if nNumber == 0 then
		nNumber = 1
	end
	local Num22 = math.random(1,nNumber)
	Num2 = tb1[Num22]
	BossHunderdTower_DailySetStc("Task",1)  --接任务
	BossHunderdTower_DailySetStc(1,Num1)  --存放随机的第1个层数
	BossHunderdTower_DailySetStc(2,Num2)  --存放随机的第2个层数
end
---战斗力判断
-- function BossHunderdTower_DailyBattleLevel(t1)
	-- local nUserFight = Get_UserBattleLevel()
		-- if nUserFight >= tBossHunderdTower_Fighting[v] then
			-- return true
		-- end
	-- end
-- end
----对白
function BossHunderdTower_DailyNpcGossip()
	local nTaskEvent = tBossHunderdTower_DailyStc["Task"]["EventType"] 
	local nTaskData = tBossHunderdTower_DailyStc["Task"]["DataType"] 
	if Task_StcInterval(nTaskEvent,nTaskData,1,4) then  --隔天
		BossHunderdTower_DailySetStc("Task",0)  ---掩码置0
		BossHunderdTower_DailySetStc(1,0)
		BossHunderdTower_DailySetStc(2,0)
	end
	if Task_ChkStcValue(nTaskEvent,nTaskData,"<",1) then  ---未接任务，给随机两个挑战层数
		BossHunderdTower_DailyRandomFloor()  --随机层数
	end
	local nNum1 = BossHunderdTower_DailyGetStc(1)
	local nNum2 = BossHunderdTower_DailyGetStc(2)
	if nNum1 > nNum2 then
		nNum1,nNum2 = nNum2,nNum1
	end
	local nSign1 = BossHunderdTower_DailySignChallenge(nNum1)
	local nSign2 = BossHunderdTower_DailySignChallenge(nNum2)
	tNpcGossip[19264]["Text114"] = string.format (tHunderdTowerDailyChallenge_Text[19264]["Text114"],nNum1,nNum2)
	tNpcGossip[19264]["Text116"] = string.format (tHunderdTowerDailyChallenge_Text[19264]["Text116"],nNum1,tHunderdTowerDailyChallenge_Text[nSign1])
	tNpcGossip[19264]["Text117"] = string.format (tHunderdTowerDailyChallenge_Text[19264]["Text117"],nNum2,tHunderdTowerDailyChallenge_Text[nSign2])
	return true
end
function BossHunderdTower_DailySignChallenge(nNum)
	local nNumber = math.ceil(nNum/20) --掩码标识位
	local nTemp = nNum%20
	if nTemp == 0 then
		nTemp = 20
	end 
	local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
	local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
	local nSign = 1  -- =1 标志今日未击败  =2 标志今日已击败
	local nValue = Get_UserStatisticValue(nEvent,nType)
	if Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue) then
		nSign = 2
	end
	return nSign
end
-----完成任务，获得奖励
function BossHunderdTower_DailyReward()
	BossHunderdTower_ResetStc()  --隔天清零
--已领过奖励
	local nTaskEvent = tBossHunderdTower_DailyStc["Task"]["EventType"] 
	local nTaskData = tBossHunderdTower_DailyStc["Task"]["DataType"] 

	if Task_StcInterval(nTaskEvent,nTaskData,1,4) then  --隔天
		BossHunderdTower_DailySetStc("Task",0)  ---掩码置0
		BossHunderdTower_DailySetStc(1,0)
		BossHunderdTower_DailySetStc(2,0)
	end
--今日已完成
	if Task_ChkStcValue(nTaskEvent,nTaskData,">=",2) then 
		Sys_MsgBox(tHunderdTowerDailyChallenge_Text["MsgBox"]["Finish"])
		return
	end
--未完成任务
	local nNum1 = BossHunderdTower_DailyGetStc(1)
	local nNum2 = BossHunderdTower_DailyGetStc(2)
	local nSign1 = BossHunderdTower_DailySignChallenge(nNum1)
	local nSign2 = BossHunderdTower_DailySignChallenge(nNum2)
	if nSign1 == 1 or nSign2 == 1 then
		Sys_MsgBox(tHunderdTowerDailyChallenge_Text["MsgBox"]["Fail"])
		return
	end
---检测背包
	if not User_CheckLeftSpace(tBossHunderdTower_DailyData["Space"]) then
		Sys_MsgBox(tHunderdTowerDailyChallenge_Text["MsgBox"]["NoSpace"])
		return
	end
--给奖励
	BossHunderdTower_DailySetStc("Task",2)  --领取奖励打掩码
	Item_AddItem(tBossHunderdTower_DailyData["ItemId"])
	local sItemLog = string.format(tBossHunderdTower_Log["Get"],tBossHunderdTower_DailyData["ItemId"])
	Sys_SaveActionFestivalLog(sItemLog)
	Sys_MsgBox(tHunderdTowerDailyChallenge_Text["MsgBox"]["Get"])
	User_EffectAdd("self",tBossHunderdTower_Data["GetEffect"])  --光效
end
------------------------------------------ ------------怪物掉落逻辑-------------------------------------------------------
function BossHunderdTower_KillBoss(nMonsterId)
	if nMonsterId >= 3827 and nMonsterId <= 3926 then
		nMonsterId = tBossHunderdTower_Priest[nMonsterId]
	end
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
--打掩码
	BossHunderdTower_KillMonster()  --封装函数
	-- DailyTrack_Complete(3722)
	-- local nAreaId = math.ceil(( nMonsterId-3710)/5)

	-- Item_AddNewItem(tBossHunderdTower_AreaItemId[nAreaId],tBossHunderdTower_AreaItemId["Attr"])
	---简体修改奖励
	local sItemName = BossHunderdTower_KillBossGetItem(nMonsterId)
	
	--log
	-- local sLog = string.format(tBossHunderdTower_Log["Get"],tBossHunderdTower_AreaItemId[nAreaId])
	-- Sys_SaveActionFestivalLog(sLog)
	--判断下层是否已挑战和下层是否已解锁
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nNumberTime = Get_UserStatisticValue(nFloorEvent,nFloorData)
	
	---emoneylog
	if nNumberTime == 1 then
		Sys_SaveEmoneyBuy(tBossHunderdTower_NewEmoneyLog[1])
	end
	if nNumberTime == 100 then
		Sys_SaveEmoneyBuy(tBossHunderdTower_NewEmoneyLog[2])
	end
	
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) + 1
	if nFloorNum >=100 then
		nFloorNum = 100
	end

	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData)
	local nNumber = math.ceil((nNum+1)/20) --掩码标识位
	if nNumber > 5 then  ---100层的时候该值为6
		nNumber = 5
	end
	local nTemp = (nNum+1)%20
	if nTemp == 0 then
		nTemp = 20
	end 

	local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
	local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	-- local sItemName = Get_ItemtypeName(tBossHunderdTower_AreaItemId[nAreaId])
	if nNum >= 100 then
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["BestTower"])
		return
	end

---判断战斗力
	local nUserFight = Get_UserBattleLevel()
	if nUserFight < tBossHunderdTower_Fighting[nNum+1] then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NoBattle1"])
		-- BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		return
	end


--判断是否传送到下一层
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) and(nFloorNum<=100)and (nFloorNum > nNum) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue)) then
		-- Task_AddStatistic(nFloorNumEvent,nFloorNumData,1,1)
		-- Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)
		-- BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		-- BossHunderdTower_GotoPlace(2,nNum+1)     --进副本
		local sText = string.format(tBossHunderdTower_Text["MsgBox"]["GetItem"],sItemName)
		Sys_MsgBox(sText,"BossHunderdTower_JubGoto</N>" .. nFloorNumEvent .. "</N>" .. nFloorNumData .. "</N>" .. nNum,"BossHunderdTower_JubGoto</N>" .. nFloorNumEvent .. "</N>" .. nFloorNumData .. "</N>" .. nNum)

	else
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		local sstr = string.format(tBossHunderdTower_Text["MsgBox"]["NoGoto"],sItemName)
		Sys_MsgBox(sstr)
	end
	--全服公告
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	if nNum >= 100 then
		Sys_SystemBroadcast(string.format(tBossHunderdTower_Text["MsgBox"]["Broad"][2],sUserName,sItemName))
		return
	end
	if nNum%5 == 0 then
		Sys_SystemBroadcast(string.format(tBossHunderdTower_Text["MsgBox"]["Broad"][1],sUserName,nNum,sItemName))
	end
end
	
---出105 点确定进下一层

function BossHunderdTower_JubGoto(nFloorNumEvent,nFloorNumData,nNum)
	Task_AddStatistic(nFloorNumEvent,nFloorNumData,1,1)
	Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)
	BossHunderdTower_GotoNpc(1)
	BossHunderdTower_GotoPlace(2,nNum+1)     --进副本
end

-- 给奖励
function BossHunderdTower_KillBossGetItem(nMonsterId)
	local bJube,sName = RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[nMonsterId])
	return sName
end
---------------------------------------物品逻辑---------------------------------------------
function BossHunderdTower_UseItem(nItem)
	local nAreaId = 0
	if nItem >= 3200824 and nItem <= 3200843 then
		local nItemId = tBossHunderdTower_ItemData[nItem]
		nAreaId = tBossHunderdTower_ItemFlag[nItemId]
	else 
		nAreaId = tBossHunderdTower_ItemFlag[nItem]
	end
	if not User_CheckLeftSpace(tBossHunderdTower_Data["Space"]) then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NoSpace"]) --出提示
		return
	end
	if nAreaId == 0 or nAreaId == nil then
		return
	end
	if Item_ChkItem(nItem) then
		if Item_DelItem(nItem) then
		end
	else
		return
	end

	--随机获取
	local t = CommonFunc_Copy(tBossHunderdTower_Prob)
	for i=1,8 do
		t[1][i]["ItemChance"] = tBossHunderdTower["prob"][nAreaId][1][i]
		
	end

	local flat,tNum1= Probabil_RandomAward(t,1) 
	local nRandom = tNum1[1]["tAward"][1]["Item_1"]
	if type(nRandom) == "table" then  ---随机到神魂
		local nNum = math.random(nRandom[1],nRandom[2])
		nRandom = tBossHunderdTower["Gweapons"][nNum]
	end
	Item_AddNewItem(nRandom,tNum1[1]["tAward"][1]["Loop"])

	
	--固定获取
	for k,v in ipairs(tBossHunderdTower["Area"][nAreaId]) do
			local func = tBossHunderdTower["Area"][nAreaId][k]["Func"]
			local tParam = tBossHunderdTower["Area"][nAreaId][k]["Param"]
			local nUserLevel = Get_UserLevel()
			if k == 1 and nUserLevel >= 140 then
				
			else
				if tBossHunderdTower["Area"][nAreaId][k]["Loop"] then
					for i=1,tBossHunderdTower["Area"][nAreaId][k]["Loop"] do
					func (table.unpack(BossHunderdTower_Split(tParam," ")))
					end
				end
			end
	end

	--统一加10分钟经验
	local sItemName2 =tBossHunderdTower_Text["Exp"]
	local nData = 0
	if Get_UserLevel() < 140 then
		nData = User_CalcTimeToExp(10)
		User_AddExp(nData)
	else  --满级给5修行值
		nData = 5
		sItemName2= tBossHunderdTower_Text["Cultivation"]
		User_AddCultivation(nData)
	end
	
	--光效
	User_EffectAdd("self",tBossHunderdTower_Data["GetEffect"])
--log
	local slog = string.format(tBossHunderdTower["Area"][nAreaId]["Log"],nItem,nRandom)
	Sys_SaveActionFestivalLog(slog)
	local nNum1 = tBossHunderdTower["Area"][nAreaId][3]["Loop"]  ---流星卷碎片数量
	local nNum2 = tBossHunderdTower["Area"][nAreaId][4]["Loop"]  ---龙珠碎片数量
	local sItemName1 = ""
	if nRandom == 3008899 then
		nNum1 = nNum1 + 1
	else
		if nRandom == 3007979 then
			nNum2 = nNum2 + 1
		else
			sItemName1 = tBossHunderdTower_Text["Symbol22"] .. Get_ItemtypeName(nRandom)
		end
	end

	local sChannel = string.format(tBossHunderdTower_Text[nAreaId],nData,sItemName2,nNum1,nNum2,sItemName1)
	Sys_MsgBox(sChannel)

end

function BossHunderdTower_Split(s, p)
	local rt = {}
	string.gsub(s, '[^'..p..']+', function(w) table.insert(rt,tonumber(w)) end )
	return rt
end

-- 增加帮派等级限制判断
function HunderdTowerDailyChallenge_ChkGuildAndRank(nNpcId)
	local nUserId = Get_UserId()
	if Get_UserGuildId(nUserId) > 0 then
		local nGuildRank = Get_UserGuildRank(nUserId)
		if nGuildRank >= 490 then
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		else
		-- 加帮派贡献的限制
		-- 装备头目即可（装备头目级别或以上）
		-- 要提示玩家前往神兵堂登记2件极品装备或1件极品1洞装备即可
			Sys_MsgBox(tHunderdTowerDailyChallenge_Text["NoGuild"])
		end
	else
		Sys_MsgBox(tHunderdTowerDailyChallenge_Text["NoGuild"])
	end
end
-----新填加的奖励  nNum	第几层（5,10...）
function BossHunderdTower_Additional(nNpcId,nNum)
	local nEvent = tBossHunderdTower_Stc["Add"]["EventType"]
	local nType = tBossHunderdTower_Stc["Add"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorType = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nValueNum = Get_UserStatisticValue(nFloorEvent,nFloorType)
	----不可领点击后出奖励详情
	local nFlag = nNum/5
	
	if nValueNum < nNum or Sys_ParseNumbersContain(tBossHunderdTower_Add[nFlag],nValue) then
		local sText1111 = string.format(tBossHunderdTower_Text[18966]["Text1111"],nNum)
		Sys_DialogText(sText1111)
		Sys_DialogText(tBossHunderdTower_Text[18966]["Text1112"])
		local Text1113 = string.format(tBossHunderdTower_Text[18966]["Text1113"],tBossHunderdTower_Text[18966]["Msg"][nNum])
		Sys_DialogText(Text1113)
		local Text1114 = string.format(tBossHunderdTower_Text[18966]["Text1114"],nNum)
		Sys_DialogText(Text1114)
		Sys_DialogText(tBossHunderdTower_Text[18966]["Text1118"])
		Sys_DialogOption(tBossHunderdTower_Text[18966]["Option1111"],"</F>LinkNpcGossipFunc_New</N>18966</S>1-3")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
----背包空间不足
	local nSpace = tBossHunderdTower_AddItem[nNum]["Space"]+1
	if not User_CheckLeftSpace(nSpace) then  
		local sSpace = string.format(tBossHunderdTower_Text[18966]["Msg"]["NoSpace"],nSpace)
		User_TalkChannel2005(sSpace)
		Sys_MsgBox(sSpace)
		return
	end
	----打掩码  给物品
	Task_AddStatistic(nEvent,nType,tBossHunderdTower_Add[nFlag],1,0) 
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItem(tBossHunderdTower_AddItem[nNum])
	--增加徽章
	--判断职业给徽章
	-- local nPro = BossHunderdTower_ChkPro()
	-- RewardTemplate_UseItem(tBossHunderdTower_AddItem["Badge"][nPro])
	local sItem = tBossHunderdTower_Text[18966]["Msg"][nNum]
	--local nItemId = tBossHunderdTower_AddItem["Badge"][nPro]["RewardItem"][1]["Id"]
--	local sItemName = Get_ItemtypeName(nItemId)
	-- local sText = string.format(tBossHunderdTower_Text[18966]["Msg"]["Get"],nNum,sItem)
	
	-- Sys_MsgBox(sText,"LinkNpcGossipFunc_New</N>18966</S>1-1")
	
	-- 新增全服公告
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId(nUserId)
	local sUserName = Get_UserName(nUserId)
	local sGuildName = ""
	if nGuildId > 0 and nGuildId ~= nil then
		sGuildName = Get_UserSynDicateName(nGuildId)
	end
	Sys_SystemBroadcast(string.format(tBossHunderdTower_Text["TellAll"][nNum],sGuildName,sUserName))
end

function BossHunderdTower_ChkPro()
	local nUserId = Get_UserId()
	local nProfession = Get_NewUserProfession(nUserId)
	for a,b in pairs(tBossHunderdTower_AddItem["Badge"]) do
		if nProfession >= b["ProMin"] and  nProfession <= b["ProMax"] then
			return a
		end
	end
	
end
-----检测领取到第几个了
function BossHunderdTower_ChkAdditional()
	local nEvent = tBossHunderdTower_Stc["Add"]["EventType"]
	local nType = tBossHunderdTower_Stc["Add"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nNum = 0
	
	for a,b in pairs(tBossHunderdTower_Add) do
		if not Sys_ParseNumbersContain(b,nValue) then
			nNum = a * 5
			break
		end
	end
		
	return nNum

end


-----打开礼包
function BossHunderdTower_OpenItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	---判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossHunderdTower_GetItem[nItemId],2) + RewardTemplate_GetRewardSpace(tBossHunderdTower_GetItem[nItemId][1])

	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(tBossHunderdTower_Text["MsgBox"]["NotSpace"],nSpace)
		Sys_MsgBox(sSpace)
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[nItemId][1])
		local tNewReward,sRewardStr = RewardTemplate_NewRandom(tBossHunderdTower_GetItem[nItemId],2)
		if tNewReward["Index"] ~= nil and tNewReward["Index"] == 1 then
			local nUserId = Get_UserId()
			local sName = Get_UserName(nUserId)
			local sItemName = Get_ItemtypeName(nItemId)
			local sStr = string.format(tBossHunderdTower_Text["MsgBox"]["BroadCast"],sName,sItemName,sRewardStr)
			Sys_SystemBroadcast(sStr)
		end
	end
end

---获得百层通关奖
function BossHunderdTower_GetItem(nNpcId)
	if not Sys_ChkFullTime(tBossHunderdTower_TimeData["Activity"]) then
		return
	end
	if not BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"]) then
		return
	end
	local nEvent = tBossHunderdTower_Stc["Get"]["EventType"]
	local nType = tBossHunderdTower_Stc["Get"]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["Have"])
		return
	end
	local nFloorNum = Get_UserStatisticValue(tBossHunderdTower_Stc["Floor"]["EventType"],tBossHunderdTower_Stc["Floor"]["DataType"])
	if nFloorNum < 100 then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end 
	--背包空间
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem["Reward"]) then
		Sys_MsgBox(tBossHunderdTower_Text[18965]["Msg"]["NoSpace"])
		return
	end
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem["Reward"])
	Sys_MsgBox(tBossHunderdTower_Text[18965]["Msg"]["Get"])
end 
-----------------新增
-----我要挑战
function BossHunderdTower_JubChallege(nNpcId)
	if not Sys_ChkFullTime(tBossHunderdTower_TimeData["Activity"]) then
		return
	end
	if not (BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])) then
		return
	end
	
	local nEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nType = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	-- local nBuyEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	-- local nBuyType = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",5)  then
		-- if Task_ChkStcValue(nBuyEvent,nBuyType,">=",5)  then
			-- Sys_MsgBox(tBossHunderdTower_Text[18965]["Msg"]["NoChallege"])
			-- return
		-- else
			-- local nTime = tBossHunderdTower_Stc["BuyTime"]["Data"]-Get_UserStatisticValue(nBuyEvent,nBuyType)
			-- local nNeedMoney = tBossHunderdTower_TimeData["TimeEmoney"] * nTime
			-- if nTime <= 0 then
				-- tNpcGossip[18966]["Option1312"] = ""
			-- else
				-- tNpcGossip[18966]["Option1312"] = string.format(tBossHunderdTower_Text[18966]["Option1312"],nNeedMoney)
			-- end
			
			LinkNpcGossipFunc_New(nNpcId,"11-1",0,11)
			return
		-- end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"11-1",0,11)
end
------购买挑战次数
function BossHunderdTower_BuyChallTime(nNpcId,nFlag,nIndex)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) then
		return
	end

	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
--购买次数
	-- if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then  --判断购买次数
		-- LinkNpcGossipFunc_New(nNpcId,"2-6")
		-- return 
	-- end
	--判断天石
	local nNeedMoney = tBossHunderdTower_TimeData["TimeEmoney"]
	if nFlag == 5 then
		local nTime = tBossHunderdTower_Stc["BuyTime"]["Data"]-Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData)
		nFlag = nTime
		nNeedMoney = tBossHunderdTower_TimeData["TimeEmoney"] * nTime
	end
	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	local sStr = string.format(tBossHunderdTower_Text[18966]["Text811"],nNeedMoney,nFlag)
	Sys_DialogText(sStr)
	Sys_DialogOption(tBossHunderdTower_Text[18966]["Option811"],"</F>BossHunderdTower_ComfirmBuy</N>" .. nNpcId .."</N>" .. nNeedMoney .. "</N>" .. nIndex .. "</N>" .. nFlag)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--购买二次确认
function BossHunderdTower_ComfirmBuy(nNpcId,nNeedMoney,nIndex,nFlag)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) then
		return
	end

	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
--购买次数
	-- if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then  --判断购买次数
		-- LinkNpcGossipFunc_New(nNpcId,"2-6")
		-- return 
	-- end
	--判断天石
	-- local nNeedMoney = tBossHunderdTower_TimeData["Emoney"]
	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--扣天石
	if not User_AddEMoney(-nNeedMoney) then
		return
	end
	-- Task_AddStatistic(nBuyTimeEvent,nBuyTimeData,nFlag,1,0)
	-- Task_SetStcTimestamp(nBuyTimeEvent,nBuyTimeData,0)
	Task_AddStatistic(nChallengeTimeEvent,nChallengeTimeData,-nFlag,1,0)
	Task_SetStcTimestamp(nChallengeTimeEvent,nChallengeTimeData,0)
	
	local sEmoneyLog = string.format(tBossHunderdTower_EmoneyLog[9],nNeedMoney,nNeedMoney)
	Sys_SaveEmoneyBuy(sEmoneyLog)  --emoneylog

	local slog = string.format(tBossHunderdTower_Log["BuyTime"],nNeedMoney)
	Sys_SaveActionFestivalLog(slog)
	if nIndex == 1 then
		
		LinkNpcGossipFunc_New(nNpcId,"11-1",0,11)
	else
		
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	end
end


---扫荡
function BossHunderdTower_Sweep(nNpcId)
--判断是否加入帮派
	-- local nGuildId = Get_UserGuildId()
	if not (BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]

	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,">=",5) then
		-- if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then
			-- Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["Tip"])
			-- return
		-- else
			LinkNpcGossipFunc_New(nNpcId,"4-2")
		-- end
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

---花天石扫荡
function BossHunderdTower_CostMoney(nNpcId,nChallengeTime,nTotalMoney)
--判断是否加入帮派
	-- local nGuildId = Get_UserGuildId()
	if not (BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if nChallengeTime == 0 then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["No"])
		return
	end
--背包空间不足
	if not User_CheckLeftSpace(tBossHunderdTower_TimeData["Space"]) then
		local sStr = string.format(tBossHunderdTower_Text[18966]["Text351"],tBossHunderdTower_TimeData["Space"])
		Sys_DialogText(sStr)
		Sys_DialogOption(tBossHunderdTower_Text[18966]["Option15"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	local nNeedMoney = nChallengeTime * tBossHunderdTower_TimeData["Emoney"]
	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	local sStr = string.format(tBossHunderdTower_Text[18966]["Text821"],nTotalMoney,nChallengeTime)
	Sys_DialogText(sStr)
	Sys_DialogOption(tBossHunderdTower_Text[18966]["Option821"],"</F>BossHunderdTower_ComfirmCostMoney</N>" .. nNpcId .. "</N>" .. nChallengeTime .. "</N>" .. nTotalMoney)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end

function BossHunderdTower_ComfirmCostMoney(nNpcId,nChallengeTime,nTotalMoney)
--判断是否加入帮派
	local nGuildId = Get_UserGuildId()
	if not (BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"]))  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nNeedMoney = nChallengeTime * tBossHunderdTower_TimeData["Emoney"]
	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
--背包空间不足
	if not User_CheckLeftSpace(tBossHunderdTower_TimeData["Space"]) then
		local sStr = string.format(tBossHunderdTower_Text[18966]["Text351"],tBossHunderdTower_TimeData["Space"])
		Sys_DialogText(sStr)
		Sys_DialogOption(tBossHunderdTower_Text[18966]["Option15"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
--扣天石
	if not User_AddEMoney(-nTotalMoney) then
		return
	end
	local nEmoneyLog = string.format(tBossHunderdTower_EmoneyLog["Clear"],nTotalMoney,nTotalMoney)
	Sys_SaveEmoneyBuy(nEmoneyLog)  --emoneylog
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) 
	if nFloorNum >=100 then
		nFloorNum = 100
	end
	local nItemName1 = 0
	local nItemName2 = 0
	local sItemName3 = ""
	local sFloor = ""
	local nk = 0 --循环次数
	local tTab = {} --存放扫荡的层数
	for i = nFloorNum,1,-1 do
		if nk >= nChallengeTime then
			break
		end
		local nNumber = math.ceil(i/20) --掩码标识位
		local nTemp = i%20
		if nTemp == 0 then
			nTemp = 20
		end 
		local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
		local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
		local nValue = Get_UserStatisticValue(nEvent,nType)
		local nTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
		local nTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	---战斗力
		local nUserFight = Get_UserBattleLevel()
--判断是否已经挑战过了
		if (nUserFight >= tBossHunderdTower_Fighting[i]) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue)) then
			Task_AddStatistic(nEvent,nType,tBossHunderdTower_Num[nTemp],1,0) 
			Task_SetStcTimestamp(nEvent,nType,0)
			Task_AddStatistic(nTimeEvent,nTimeData,1,1)
			Task_SetStcTimestamp(nTimeEvent,nTimeData,0)
			local nMonsterId = tBossHunderdTower_MonsterData[i]
			-- if i%10 == 0 or  i%10 == 5 then  --包
				-- sItemName3 = BossHunderdTower_KillBossGetItem(nMonsterId)
			-- end
			if i%2 == 0 then  --气力
				BossHunderdTower_KillBossGetItem(nMonsterId)
				nItemName2 = nItemName2 + tBossHunderdTower_GetItem[nMonsterId]["RewardStrengthValue"]["Value"]
			end
			if i%2 == 1 then  --分钟经验
				BossHunderdTower_KillBossGetItem(nMonsterId)
				nItemName1 = nItemName1 + tBossHunderdTower_GetItem[nMonsterId]["RewardRepairValue"]["Value"]
			end
			if nk == 0 then
				sFloor = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][3],i)
			else
				sFloor = sFloor .. "." .. string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][3],i)
			end
	
			nk = nk + 1
		end
	end
	if nk <= 0 then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["Tip"])
		return
	end
	--光效
	User_EffectAdd("self",tBossHunderdTower_Data["GetEffect"])
	local sItemName1 = ""
	local sItemName2 = ""
	local sItemName = ""
	if nItemName1 ~= 0 then
		sItemName1 = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][1],nItemName1)
		sItemName = sItemName1
	end
	if nItemName2 ~= 0 then
		sItemName2 = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][2],nItemName2)
		sItemName = sItemName .. "and" .. sItemName2
	end
	-- if sItemName3 ~= "" then
		-- sItemName = sItemName .. "、" .. sItemName3
	-- end
	local sText = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][4],sFloor,sItemName)
	Sys_MsgBox(sText)
end
--花物品扫荡
function BossHunderdTower_CostItem(nNpcId,nChallengeTime)
--判断是否加入帮派
	local nGuildId = Get_UserGuildId()
	if not (BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
---检测物品
	local nItemId = tBossHunderdTower_TimeData["CostItem"]
	if not Item_ChkMulItem(nItemId,nItemId,nChallengeTime) then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NotItem"])
		return
	end
--背包空间不足
	if not User_CheckLeftSpace(tBossHunderdTower_TimeData["Space"]) then
		local sStr = string.format(tBossHunderdTower_Text[18966]["Text351"],tBossHunderdTower_TimeData["Space"])
		Sys_DialogText(sStr)
		Sys_DialogOption(tBossHunderdTower_Text[18966]["Option15"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	--扣物品
	if not Item_DelMulItem(nItemId,nItemId,nChallengeTime) then
		return
	end
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) 
	if nFloorNum >=100 then
		nFloorNum = 100
	end
	local nItemName1 = 0
	local nItemName2 = 0
	local sItemName3 = ""
	local sFloor = ""
	local nk = 0 --循环次数
	local tTab = {} --存放扫荡的层数
	for i = nFloorNum,1,-1 do
		if nk >= nChallengeTime then
			break
		end
		local nNumber = math.ceil(i/20) --掩码标识位
		local nTemp = i%20
		if nTemp == 0 then
			nTemp = 20
		end 
		local nEvent = tBossHunderdTower_Stc[nNumber]["EventType"]
		local nType = tBossHunderdTower_Stc[nNumber]["DataType"]
		local nValue = Get_UserStatisticValue(nEvent,nType)
		local nTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
		local nTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	---战斗力
		local nUserFight = Get_UserBattleLevel()

--判断是否已经挑战过了
		if (nUserFight >= tBossHunderdTower_Fighting[i]) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[nTemp],nValue)) then
			Task_AddStatistic(nEvent,nType,tBossHunderdTower_Num[nTemp],1,0) 
			Task_SetStcTimestamp(nEvent,nType,0)
			Task_AddStatistic(nTimeEvent,nTimeData,1,1)
			Task_SetStcTimestamp(nTimeEvent,nTimeData,0)
			local nMonsterId = tBossHunderdTower_MonsterData[i]
			-- if i%10 == 0 or  i%10 == 5 then  --包
				-- sItemName3 = BossHunderdTower_KillBossGetItem(nMonsterId)
			-- end
			if i%2 == 0 then  --气力
				BossHunderdTower_KillBossGetItem(nMonsterId)
				nItemName2 = nItemName2 + tBossHunderdTower_GetItem[nMonsterId]["RewardStrengthValue"]["Value"]
			end
			if i%2 == 1 then  --分钟经验
				BossHunderdTower_KillBossGetItem(nMonsterId)
				nItemName1 = nItemName1 + tBossHunderdTower_GetItem[nMonsterId]["RewardRepairValue"]["Value"]
			end
			if nk == 0 then
				sFloor = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][3],i)
			else
				sFloor = sFloor .. "、" .. string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][3],i)
			end
	
			nk = nk + 1
		end
	end

	--光效
	User_EffectAdd("self",tBossHunderdTower_Data["GetEffect"])
	local sItemName1 = ""
	local sItemName2 = ""
	local sItemName = ""
	if nItemName1 ~= 0 then
		sItemName1 = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][1],nItemName1)
		sItemName = sItemName1
	end
	if nItemName2 ~= 0 then
		sItemName2 = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][2],nItemName2)
		sItemName = sItemName .. "、" .. sItemName2
	end
	-- if sItemName3 ~= "" then
		-- sItemName = sItemName .. "、" .. sItemName3
	-- end
	local sText = string.format(tBossHunderdTower_Text["MsgBox"]["RewardItem"][4],sFloor,sItemName)
	Sys_MsgBox(sText)

end


-------------百层护卫
-- 购买挑战次数
function BossHunderdTower_NpcBuy(nNpcId,nMapId)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
	--判断是否在副本内
	local nUserId = Get_UserId()
	local nNowMapId = Get_UserMapId(nUserId)
	if nNowMapId ~= nMapId then
		return
	end
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) then
		return
	end

	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
--购买次数
	if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then  --判断购买次数
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return 
	end
	--判断天石
	local nNeedMoney = tBossHunderdTower_TimeData["TimeEmoney"]

	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--购买二次确认
function BossHunderdTower_NpcComfirmBuy(nNpcId)
	-- 隔天掩码清零
	BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) then
		return
	end

	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
--购买次数
	if Task_ChkStcValue(nBuyTimeEvent,nBuyTimeData,">=",5) then  --判断购买次数
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return 
	end
	--判断天石
	local nNeedMoney = tBossHunderdTower_TimeData["TimeEmoney"]
	local nEmoney = Get_UserEMoney()
	if nEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--扣天石
	if not User_AddEMoney(-nNeedMoney) then
		return
	end
	Task_AddStatistic(nBuyTimeEvent,nBuyTimeData,1,1,0)
	Task_SetStcTimestamp(nBuyTimeEvent,nBuyTimeData,0)
	Task_AddStatistic(nChallengeTimeEvent,nChallengeTimeData,-1,1,0)
	Task_SetStcTimestamp(nChallengeTimeEvent,nChallengeTimeData,0)
	
	local sEmoneyLog = string.format(tBossHunderdTower_EmoneyLog[9],nNeedMoney,nNeedMoney)
	Sys_SaveEmoneyBuy(sEmoneyLog)  --emoneylog

	local slog = string.format(tBossHunderdTower_Log["BuyTime"],nNeedMoney)
	Sys_SaveActionFestivalLog(slog)
	
-----自动升到可挑战的最高层


	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData)

	local na = (nNum+1)%20
	if na == 0 then
		na = 20
	end 
	local nNumber1 = math.ceil((nNum+1)/20) --掩码标识位
	local nEvent1 = tBossHunderdTower_Stc[nNumber1]["EventType"]
	local nType1 = tBossHunderdTower_Stc[nNumber1]["DataType"]
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorData = tBossHunderdTower_Stc["Floor"]["DataType"]

	local nValue1 = Get_UserStatisticValue(nEvent1,nType1)
	local nFloorNum = Get_UserStatisticValue(nFloorEvent,nFloorData) + 1
	if nFloorNum >=100 then
		nFloorNum = 100
	end
---判断战斗力
	local nUserFight = Get_UserBattleLevel()
	if nUserFight < tBossHunderdTower_Fighting[nNum+1] then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NoBattle1"])
		return
	end

	if Task_ChkStcValue(nChallengeTimeEvent,nChallengeTimeData,"<",5) and (nFloorNum<=100) and (nFloorNum > nNum) and (not Sys_ParseNumbersContain(tBossHunderdTower_Num[na],nValue1)) then
		Task_AddStatistic(nFloorNumEvent,nFloorNumData,1,1)
		Task_SetStcTimestamp(nFloorNumEvent,nFloorNumData,0)
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
		BossHunderdTower_GotoPlace(1,nNum+1)     --进副本
	else
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["NotGo"])
		BossHunderdTower_GotoNpc(tBossHunderdTower_Data["nNpcId"])
	end

end

-- 玩家打完100层第二天重置掩码
function BossHunderdTower_HunderdStc()
	local nEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nType = tBossHunderdTower_Stc["Floor"]["DataType"]
	if Task_ChkStcValue(nEvent,nType,"<",100) then
		return
	end
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		for i = 1,5 do
			local nNumEvent = tBossHunderdTower_Stc[i]["EventType"]
			local nNumType = tBossHunderdTower_Stc[i]["DataType"]
			Task_SetStatistic(nNumEvent,nNumType,0,1)
			Task_SetStcTimestamp(nNumEvent,nNumType,0)
		end
		local nGetEvent = tBossHunderdTower_Stc["Get"]["EventType"]
		local nGetType = tBossHunderdTower_Stc["Get"]["DataType"]
		Task_SetStatistic(nGetEvent,nGetType,0,1)
		Task_SetStcTimestamp(nGetEvent,nGetType,0)
		local nAddEvent = tBossHunderdTower_Stc["Add"]["EventType"]
		local nAddType = tBossHunderdTower_Stc["Add"]["DataType"]
		Task_SetStatistic(nAddEvent,nAddType,0,1)
		Task_SetStcTimestamp(nAddEvent,nAddType,0)
	end
end


--------------------------------------npc模板----------------------------------------------

--百层塔总兵 18966 镇妖塔
tNpcFace[5197] = 40
tNpcGossip[18966] = tNpcGossip[18966] or DefaultNpc:new{}
tNpcGossip[18966]["OptionHidden"] = 1
tNpcGossip[18966]["nPageNum"] = 11

-- 活动前
tNpcGossip[18966]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[18966]["Text111"] = tBossHunderdTower_Text[18966]["Text121"]
tNpcGossip[18966]["Text112"] = tBossHunderdTower_Text[18966]["Text122"]
tNpcGossip[18966]["Text113"] = tBossHunderdTower_Text[18966]["Text123"]
tNpcGossip[18966]["Text114"] = tBossHunderdTower_Text[18966]["Text124"]
tNpcGossip[18966]["Text115"] = tBossHunderdTower_Text[18966]["Text125"]
tNpcGossip[18966]["tOption1-1"] = {115}
tNpcGossip[18966]["Option115"] = tBossHunderdTower_Text[18966]["Option121"]
tNpcGossip[18966]["ChkFunc1-1"] = function()
	return not Sys_ChkFullTime(tBossHunderdTower_TimeData["Activity"])
end

---条件不足
tNpcGossip[18966]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[18966]["Text121"] = tBossHunderdTower_Text[18966]["Text131"]
tNpcGossip[18966]["Text122"] = tBossHunderdTower_Text[18966]["Text132"]
tNpcGossip[18966]["Text123"] = tBossHunderdTower_Text[18966]["Text133"]
tNpcGossip[18966]["Text124"] = tBossHunderdTower_Text[18966]["Text134"]
tNpcGossip[18966]["Text125"] = tBossHunderdTower_Text[18966]["Text135"]
tNpcGossip[18966]["tOption1-2"] = {121}
tNpcGossip[18966]["Option121"] = tBossHunderdTower_Text[18966]["Option131"]
tNpcGossip[18966]["ChkFunc1-2"] = function()
	return not BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])
end


tNpcGossip[18966]["Text1-3"] = {131,132,138,133,134,135,137}
tNpcGossip[18966]["Text131"] = tBossHunderdTower_Text[18966]["Text111"]
tNpcGossip[18966]["Text132"] = tBossHunderdTower_Text[18966]["Text112"]
tNpcGossip[18966]["Text133"] = tBossHunderdTower_Text[18966]["Text113"]
tNpcGossip[18966]["Text134"] = tBossHunderdTower_Text[18966]["Text114"]
tNpcGossip[18966]["Text135"] = tBossHunderdTower_Text[18966]["Text115"]
tNpcGossip[18966]["Text136"] = tBossHunderdTower_Text[18966]["Text116"]
tNpcGossip[18966]["Text137"] = tBossHunderdTower_Text[18966]["Text117"]
tNpcGossip[18966]["Text138"] = tBossHunderdTower_Text[18966]["Text118"]
tNpcGossip[18966]["tOption1-3"] = {1,2,100,102}
tNpcGossip[18966]["Option1"] = tBossHunderdTower_Text[18966]["Option1"]
-- tNpcGossip[18966]["OptionPoint1"] = "1-2"
tNpcGossip[18966]["OptionFunc1"] = "BossHunderdTower_JubChallege</N>18966"

tNpcGossip[18966]["Option2"] = tBossHunderdTower_Text[18966]["Option2"]
tNpcGossip[18966]["OptionFunc2"] = "BossHunderdTower_Sweep</N>18966"
tNpcGossip[18966]["Option111"] = tBossHunderdTower_Text[18966]["Option111"]
tNpcGossip[18966]["OptionPoint111"] = "6-1"
tNpcGossip[18966]["Option100"] = tBossHunderdTower_Text[18966]["Option100"]
tNpcGossip[18966]["OptionFunc100"]="BossHunderdTower_Additional</N>18966"
tNpcGossip[18966]["Option102"] = tBossHunderdTower_Text[18966]["Option102"]
tNpcGossip[18966]["OptionFunc102"]="BossHunderdTower_GetItem</N>18966"

tNpcGossip[18966]["OptionChkFunc100"]= function()
	local nNum = BossHunderdTower_ChkAdditional()

	if nNum == 0 then
		return false
	end
	return true 
end
tNpcGossip[18966]["ChkFunc1-3"] = function()
	BossHunderdTower_HunderdStc()  --通关后重置
	BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nChallengeTime = 5 - Get_UserStatisticValue(nChallengeTimeEvent,nChallengeTimeData)
	-- local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	-- local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	-- local nBuyTime = 5 - Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData)
	local nFloorNum = Get_UserStatisticValue(tBossHunderdTower_Stc["Floor"]["EventType"],tBossHunderdTower_Stc["Floor"]["DataType"])
	tNpcGossip[18966]["Text135"] = string.format(tBossHunderdTower_Text[18966]["Text115"],nChallengeTime)
	tNpcGossip[18966]["Text137"] = string.format(tBossHunderdTower_Text[18966]["Text117"],nFloorNum)
----新加
	local nEvent = tBossHunderdTower_Stc["Add"]["EventType"]
	local nType = tBossHunderdTower_Stc["Add"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nNum = BossHunderdTower_ChkAdditional()
	local sText = string.format(tBossHunderdTower_Text[18966]["Option101"],nNum)
	local nFloorEvent = tBossHunderdTower_Stc["Floor"]["EventType"]
	local nFloorType = tBossHunderdTower_Stc["Floor"]["DataType"]
	local nValueNum = Get_UserStatisticValue(nFloorEvent,nFloorType)
	if nValueNum >= nNum and not Sys_ParseNumbersContain(tBossHunderdTower_Add[nNum],nValue) then
		sText = string.format(tBossHunderdTower_Text[18966]["Option100"],nNum)
	end

	tNpcGossip[18966]["Option100"] = sText
	tNpcGossip[18966]["OptionFunc100"]="BossHunderdTower_Additional</N>18966</N>" .. nNum
	
	tNpcGossip[18966]["Option102"] =  string.format(tBossHunderdTower_Text[18966]["Option102"],nFloorNum)
	return true
end
---接我要挑战，出最大的5个选项
tNpcGossip[18966]["Text11-1"] = {1121,1122,1123,1124,1125,1127,1126}
tNpcGossip[18966]["Text1121"] = tBossHunderdTower_Text[18966]["Text611"]
tNpcGossip[18966]["Text1122"] = tBossHunderdTower_Text[18966]["Text612"]
tNpcGossip[18966]["Text1123"] = tBossHunderdTower_Text[18966]["Text613"]
tNpcGossip[18966]["Text1124"] = tBossHunderdTower_Text[18966]["Text614"]
tNpcGossip[18966]["Text1125"] = tBossHunderdTower_Text[18966]["Text615"]
tNpcGossip[18966]["Text1127"] = tBossHunderdTower_Text[18966]["Text617"]
tNpcGossip[18966]["Text1126"] = tBossHunderdTower_Text[18966]["Text616"]
tNpcGossip[18966]["tOption11-1"] = {4,5,6,7,8,9,10,11,12,13,14}
tNpcGossip[18966]["ChkFunc11-1"] = function()
	BossHunderdTower_Option4()
	return true
end



---【失败，今日已挑战过该层】
tNpcGossip[18966]["Text2-1"] = {211}
tNpcGossip[18966]["Text211"] = tBossHunderdTower_Text[18966]["Text211"]
tNpcGossip[18966]["tOption2-1"] = {19}
tNpcGossip[18966]["Option19"] = tBossHunderdTower_Text[18966]["Option5"]
tNpcGossip[18966]["OptionPoint19"] = "1-2"
-- 【失败，今日成功挑战已到上限5次】
tNpcGossip[18966]["Text2-2"] = {226,221,222,223,224,225}
tNpcGossip[18966]["Text221"] = tBossHunderdTower_Text[18966]["Text221"]
tNpcGossip[18966]["Text222"] = tBossHunderdTower_Text[18966]["Text222"]
tNpcGossip[18966]["Text223"] = tBossHunderdTower_Text[18966]["Text223"]
tNpcGossip[18966]["Text224"] = tBossHunderdTower_Text[18966]["Text224"]
tNpcGossip[18966]["Text225"] = tBossHunderdTower_Text[18966]["Text225"]
tNpcGossip[18966]["Text226"] = tBossHunderdTower_Text[18966]["Text226"]
tNpcGossip[18966]["tOption2-2"] = {20}
tNpcGossip[18966]["Option20"] = tBossHunderdTower_Text[18966]["Option6"]
tNpcGossip[18966]["OptionFunc20"] = "BossHunderdTower_BuyChallengeTime</N>18966</N>2</N>100"

tNpcGossip[18966]["ChkFunc2-2"] = function()
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	local nCostTime = Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData)
	local nBuyTime = 5 - nCostTime
	local nCost = tBossHunderdTower_Data["Emoney"][nCostTime + 1]
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]  --免费挑战次数
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nChallengeTime = 5 - Get_UserStatisticValue(nChallengeTimeEvent,nChallengeTimeData)
	
	tNpcGossip[18966]["Text222"] = string.format(tBossHunderdTower_Text[18966]["Text222"],nChallengeTime)
	tNpcGossip[18966]["Text223"] = string.format(tBossHunderdTower_Text[18966]["Text223"],nBuyTime)
	tNpcGossip[18966]["Text224"] = string.format(tBossHunderdTower_Text[18966]["Text224"],nCost)

	tNpcGossip[18966]["Option20"] = string.format(tBossHunderdTower_Text[18966]["Option6"],nCost)
	tNpcGossip[18966]["OptionFunc20"] = "BossHunderdTower_BuyChallengeTime</N>18966</N>1</N>".. nCost
	return true
end
-- 二次确认
tNpcGossip[18966]["Text2-3"] = {231}
tNpcGossip[18966]["Text231"] = tBossHunderdTower_Text[18966]["Text231"]
tNpcGossip[18966]["tOption2-3"] = {21}
tNpcGossip[18966]["Option21"] = tBossHunderdTower_Text[18966]["Option7"]
-- tNpcGossip[18966]["OptionFunc11"] = "BossHunderdTower_BuyChallengeTime</N>18966</N>1</N>10"
-- tNpcGossip[18966]["ChkFunc2-3"] = function()
	-- local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	-- local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	-- local nCostTime = Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData) + 1
	-- tNpcGossip[18966]["Text231"] = string.format(tBossHunderdTower_Text[18966]["Text231"],tBossHunderdTower_Data["Emoney"][nCostTime])
	-- tNpcGossip[18966]["OptionFunc11"] = "BossHunderdTower_BuyChallengeTime</N>18966</N>1</N>".. nCostTime
	-- return true
-- end

---【成功】
tNpcGossip[18966]["Text2-4"] = {241}
tNpcGossip[18966]["Text241"] = tBossHunderdTower_Text[18966]["Text241"]
tNpcGossip[18966]["tOption2-4"] = {22}
tNpcGossip[18966]["Option22"] = tBossHunderdTower_Text[18966]["Option8"]
tNpcGossip[18966]["OptionFunc22"] = "BossHunderdTower_GotoPlace</N>18966"
tNpcGossip[18966]["OptionChkFunc22"] = function()
	local nFloorNumEvent = tBossHunderdTower_Stc["FloorNum"]["EventType"]
	local nFloorNumData = tBossHunderdTower_Stc["FloorNum"]["DataType"]
	local nNum = Get_UserStatisticValue(nFloorNumEvent,nFloorNumData)
	tNpcGossip[18966]["OptionFunc22"] = "BossHunderdTower_GotoPlace</N>1</N>".. nNum
	return true
end

-- 【失败，天石不足】
tNpcGossip[18966]["Text2-5"] = {251}
tNpcGossip[18966]["Text251"] = tBossHunderdTower_Text[18966]["Text251"]
tNpcGossip[18966]["tOption2-5"] = {23}
tNpcGossip[18966]["Option23"] = tBossHunderdTower_Text[18966]["Option9"]
-- 【失败，今日已到购买上限5次】
tNpcGossip[18966]["Text2-6"] = {261}
tNpcGossip[18966]["Text261"] = tBossHunderdTower_Text[18966]["Text261"]
tNpcGossip[18966]["tOption2-6"] = {24}
tNpcGossip[18966]["Option24"] = tBossHunderdTower_Text[18966]["Option10"]
----扫荡
--【失败，今日既没有挑战次数，也没有可购买的额外挑战次数】
tNpcGossip[18966]["Text3-1"] = {311}
tNpcGossip[18966]["Text311"] = tBossHunderdTower_Text[18966]["Text311"]
tNpcGossip[18966]["tOption3-1"] = {25}
tNpcGossip[18966]["Option25"] = tBossHunderdTower_Text[18966]["Option11"]
-- 【今日已没有挑战次数】
tNpcGossip[18966]["Text3-2"] = {326,321,322,323,324,325}
tNpcGossip[18966]["Text321"] = tBossHunderdTower_Text[18966]["Text321"]
tNpcGossip[18966]["Text322"] = tBossHunderdTower_Text[18966]["Text322"]
tNpcGossip[18966]["Text323"] = tBossHunderdTower_Text[18966]["Text323"]
tNpcGossip[18966]["Text324"] = tBossHunderdTower_Text[18966]["Text324"]
tNpcGossip[18966]["Text325"] = tBossHunderdTower_Text[18966]["Text325"]
tNpcGossip[18966]["Text326"] = tBossHunderdTower_Text[18966]["Text326"]
tNpcGossip[18966]["tOption3-2"] = {26}
tNpcGossip[18966]["Option26"] = tBossHunderdTower_Text[18966]["Option12"]
tNpcGossip[18966]["OptionFunc26"] = "BossHunderdTower_BuyChallengeTime</N>18966</N>2</N>100"
tNpcGossip[18966]["ChkFunc3-2"] = function()
	local nBuyTimeEvent = tBossHunderdTower_Stc["BuyTime"]["EventType"]
	local nBuyTimeData = tBossHunderdTower_Stc["BuyTime"]["DataType"]
	local nCostTime = Get_UserStatisticValue(nBuyTimeEvent,nBuyTimeData)
	local nBuyTime = 5 - nCostTime
	local nCost = tBossHunderdTower_Data["Emoney"][nCostTime + 1]
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]  --免费挑战次数
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nChallengeTime = 5 - Get_UserStatisticValue(nChallengeTimeEvent,nChallengeTimeData)

	-- tNpcGossip[18966]["Text321"] = string.format(tBossHunderdTower_Text[18966]["Text321"],tBossHunderdTower_Data["Emoney"][nCostTime + 1])
	-- tNpcGossip[18966]["Text322"] = string.format(tBossHunderdTower_Text[18966]["Text322"],nBuyTime)
	-- tNpcGossip[18966]["Option16"] = string.format(tBossHunderdTower_Text[18966]["Option12"],tBossHunderdTower_Data["Emoney"][nCostTime + 1])
	
	tNpcGossip[18966]["Text322"] = string.format(tBossHunderdTower_Text[18966]["Text322"],nChallengeTime)
	tNpcGossip[18966]["Text323"] = string.format(tBossHunderdTower_Text[18966]["Text323"],nBuyTime)
	tNpcGossip[18966]["Text324"] = string.format(tBossHunderdTower_Text[18966]["Text324"],nCost)

	tNpcGossip[18966]["Option26"] = string.format(tBossHunderdTower_Text[18966]["Option12"],nCost)
	tNpcGossip[18966]["OptionFunc26"] = "BossHunderdTower_BuyChallengeTime</N>18966</N>2</N>".. nCost

	return true
end
-- 【成功】
tNpcGossip[18966]["Text3-4"] = {341}
tNpcGossip[18966]["Text341"] = tBossHunderdTower_Text[18966]["Text341"]
tNpcGossip[18966]["tOption3-4"] = {27}
tNpcGossip[18966]["Option27"] = tBossHunderdTower_Text[18966]["Option14"]


-- 【失败，天石不足】
tNpcGossip[18966]["Text3-6"] = {361}
tNpcGossip[18966]["Text361"] = tBossHunderdTower_Text[18966]["Text361"]
tNpcGossip[18966]["tOption3-6"] = {28}
tNpcGossip[18966]["Option28"] = tBossHunderdTower_Text[18966]["Option16"]

-- 【失败，天石不足】
-- tNpcGossip[18966]["Text3-6"] = {361}
-- tNpcGossip[18966]["Text351"] = tBossHunderdTower_Text[18966]["Text361"]
-- tNpcGossip[18966]["tOption3-6"] = {19}
-- tNpcGossip[18966]["Option19"] = tBossHunderdTower_Text[18966]["Option16"]
-----------有免费次数
tNpcGossip[18966]["Text4-1"] = {415,411,412,413,416}
tNpcGossip[18966]["Text411"] = tBossHunderdTower_Text[18966]["Text411"]
tNpcGossip[18966]["Text412"] = tBossHunderdTower_Text[18966]["Text412"]
tNpcGossip[18966]["Text413"] = tBossHunderdTower_Text[18966]["Text413"]
tNpcGossip[18966]["Text415"] = tBossHunderdTower_Text[18966]["Text415"]
tNpcGossip[18966]["Text416"] = tBossHunderdTower_Text[18966]["Text416"]
tNpcGossip[18966]["tOption4-1"] = {30,411}
tNpcGossip[18966]["Option30"] = tBossHunderdTower_Text[18966]["Option17"]
tNpcGossip[18966]["OptionFunc30"] = "BossHunderdTower_CostMoney</N>18966"
tNpcGossip[18966]["Option411"] = tBossHunderdTower_Text[18966]["Option411"]
tNpcGossip[18966]["OptionFunc411"] = "BossHunderdTower_CostItem</N>18966"
tNpcGossip[18966]["ChkFunc4-1"] = function()

	local ta={}
	ta = BossHunderdTower_SweepPublic()
	local nChallengeTime = ta[1]
	local nTotalMoney = ta[2]
	local na = ta[3]  

	if nChallengeTime == 0 then
		-- Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["No"])
		-- tNpcGossip[18966]["OptionFunc30"] = "NULL"
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["Tip"])
		return false
	else
		tNpcGossip[18966]["Text412"] = string.format(tBossHunderdTower_Text[18966]["Text412"],nChallengeTime)
		tNpcGossip[18966]["Text413"] = string.format(tBossHunderdTower_Text[18966]["Text413"],nTotalMoney,nChallengeTime)
		tNpcGossip[18966]["Option30"] = string.format(tBossHunderdTower_Text[18966]["Option17"],nTotalMoney)
		tNpcGossip[18966]["OptionFunc30"] = "BossHunderdTower_CostMoney</N>18966</N>" .. nChallengeTime .. "</N>" .. nTotalMoney
		tNpcGossip[18966]["Option411"] = string.format(tBossHunderdTower_Text[18966]["Option411"],nChallengeTime)
		tNpcGossip[18966]["OptionFunc411"] = "BossHunderdTower_CostItem</N>18966</N>" .. nChallengeTime
		return true
	end
end

-----------没有免费次数
tNpcGossip[18966]["Text4-2"] = {421,422,423,424,425}
tNpcGossip[18966]["Text421"] = tBossHunderdTower_Text[18966]["Text421"]
tNpcGossip[18966]["Text422"] = tBossHunderdTower_Text[18966]["Text422"]
tNpcGossip[18966]["Text423"] = tBossHunderdTower_Text[18966]["Text423"]
tNpcGossip[18966]["Text425"] = tBossHunderdTower_Text[18966]["Text425"]
tNpcGossip[18966]["tOption4-2"] = {421}
tNpcGossip[18966]["Option421"] = tBossHunderdTower_Text[18966]["Option421"]
tNpcGossip[18966]["OptionFunc421"] = "BossHunderdTower_BuyChallTime</N>18966</N>1</N>2"
tNpcGossip[18966]["ChkFunc4-2"] = function()
	return true

end

tNpcGossip[18966]["Text4-3"] = {431}
tNpcGossip[18966]["Text431"] = tBossHunderdTower_Text[18966]["Text431"]
tNpcGossip[18966]["tOption4-3"] = {431}
tNpcGossip[18966]["Option431"] = tBossHunderdTower_Text[18966]["Option431"]


--成功购买次数 -接扫荡
tNpcGossip[18966]["Text5-1"] = {516,515,512,513,514,511,515}
tNpcGossip[18966]["Text511"] = tBossHunderdTower_Text[18966]["Text511"]
tNpcGossip[18966]["Text512"] = tBossHunderdTower_Text[18966]["Text412"]
tNpcGossip[18966]["Text513"] = tBossHunderdTower_Text[18966]["Text413"]
tNpcGossip[18966]["Text514"] = tBossHunderdTower_Text[18966]["Text414"]
tNpcGossip[18966]["Text515"] = tBossHunderdTower_Text[18966]["Text325"]
tNpcGossip[18966]["Text516"] = tBossHunderdTower_Text[18966]["Text415"] 

tNpcGossip[18966]["tOption5-1"] = {40}
tNpcGossip[18966]["Option40"] = tBossHunderdTower_Text[18966]["Option20"]
tNpcGossip[18966]["OptionFunc40"] = "BossHunderdTower_NextCostMoney</N>18966"
tNpcGossip[18966]["ChkFunc5-1"] = function()
	local ta={}
	ta = BossHunderdTower_SweepPublic()
	local nChallengeTime = ta[1]
	local nTotalMoney = ta[2]
	local na = ta[3]  
	if nChallengeTime == 0 then
		Sys_MsgBox(tBossHunderdTower_Text["MsgBox"]["No"])
		
		return false
	else
		tNpcGossip[18966]["Text512"] = string.format(tBossHunderdTower_Text[18966]["Text412"],nChallengeTime)
		tNpcGossip[18966]["Text513"] = string.format(tBossHunderdTower_Text[18966]["Text413"],nTotalMoney)
		tNpcGossip[18966]["Text514"] = string.format(tBossHunderdTower_Text[18966]["Text414"],na)
		tNpcGossip[18966]["Option40"] = string.format(tBossHunderdTower_Text[18966]["Option20"],nTotalMoney)
		tNpcGossip[18966]["OptionFunc40"] = "BossHunderdTower_NextCostMoney</N>18966</N>" .. nChallengeTime .. "</N>" .. nTotalMoney
		return true
	end
	
end

-- 接4 了解详情
tNpcGossip[18966]["Text6-1"] = {611,612,613,614,615,617,616}
tNpcGossip[18966]["Text611"] = tBossHunderdTower_Text[18966]["Text611"]
tNpcGossip[18966]["Text612"] = tBossHunderdTower_Text[18966]["Text612"]
tNpcGossip[18966]["Text613"] = tBossHunderdTower_Text[18966]["Text613"]
tNpcGossip[18966]["Text614"] = tBossHunderdTower_Text[18966]["Text614"]
tNpcGossip[18966]["Text615"] = tBossHunderdTower_Text[18966]["Text615"]
tNpcGossip[18966]["Text616"] = tBossHunderdTower_Text[18966]["Text616"]
tNpcGossip[18966]["Text617"] = tBossHunderdTower_Text[18966]["Text617"]
tNpcGossip[18966]["tOption6-1"] = {611}
tNpcGossip[18966]["Option611"] = tBossHunderdTower_Text[18966]["Option611"]
-- tNpcGossip[18966]["OptionPoint611"] = "1"

-- （接4，失败，未通关100层）
tNpcGossip[18966]["Text7-1"] = {711}
tNpcGossip[18966]["Text711"] = tBossHunderdTower_Text[18966]["Text711"]
tNpcGossip[18966]["tOption7-1"] = {711}
tNpcGossip[18966]["Option711"] = tBossHunderdTower_Text[18966]["Option711"]
tNpcGossip[18966]["OptionPoint711"] = "1-3"
------------新增
---（接1，无免费次数，有付费次数，出对白）
tNpcGossip[18966]["Text13-1"] = {1311,1312}
tNpcGossip[18966]["Text1311"] = tBossHunderdTower_Text[18966]["Text1311"]

tNpcGossip[18966]["tOption13-1"] = {1311}
tNpcGossip[18966]["Option1311"] = tBossHunderdTower_Text[18966]["Option1311"]
tNpcGossip[18966]["OptionFunc1311"] = "BossHunderdTower_BuyChallTime</N>18966</N>1</N>1"
tNpcGossip[18966]["ChkFunc13-1"] = function()
	return true
end
--百层塔总兵 18965
---NPC头像
-- tNpcFace[5197] = 14
tNpcGossip[18965] = tNpcGossip[18966] or DefaultNpc:new{}




-----百层塔护卫 18977
tNpcFace[5301] = 95
tNpcGossip[18977] = tNpcGossip[18977] or DefaultNpc:new{}
tNpcGossip[18977]["OptionHidden"] = 1
--活动时间前
tNpcGossip[18977]["Text1-1"] = {111,112,113,114}
tNpcGossip[18977]["Text111"] = tBossHunderdTower_Text[18977]["Text111"]
tNpcGossip[18977]["Text112"] = tBossHunderdTower_Text[18977]["Text112"]
tNpcGossip[18977]["Text113"] = tBossHunderdTower_Text[18977]["Text113"]
tNpcGossip[18977]["Text114"] = tBossHunderdTower_Text[18977]["Text114"]
tNpcGossip[18977]["tOption1-1"] = {111}
tNpcGossip[18977]["Option111"] = tBossHunderdTower_Text[18977]["Option111"]
tNpcGossip[18977]["ChkFunc1-1"] = function()
	
	return not Sys_ChkFullTime(tBossHunderdTower_TimeData["Activity"])
end
---活动中 等级不足
tNpcGossip[18977]["Text1-2"] = {121,122,123,124}
tNpcGossip[18977]["Text121"] = tBossHunderdTower_Text[18977]["Text121"]
tNpcGossip[18977]["Text122"] = tBossHunderdTower_Text[18977]["Text122"]
tNpcGossip[18977]["Text123"] = tBossHunderdTower_Text[18977]["Text123"]
tNpcGossip[18977]["Text124"] = tBossHunderdTower_Text[18977]["Text124"]
tNpcGossip[18977]["tOption1-2"] = {121}
tNpcGossip[18977]["Option121"] = tBossHunderdTower_Text[18977]["Option121"]
tNpcGossip[18977]["ChkFunc1-2"] = function()
	
	return not BossHunderdTower_LevelJudge(tBossHunderdTower_Data["Level"])
end

---活动中 满足条件
tNpcGossip[18977]["Text1-3"] = {131,132,133,134,135,136,140,137,138,139}
tNpcGossip[18977]["Text131"] = tBossHunderdTower_Text[18977]["Text131"]
tNpcGossip[18977]["Text132"] = tBossHunderdTower_Text[18977]["Text132"]
tNpcGossip[18977]["Text133"] = tBossHunderdTower_Text[18977]["Text133"]
tNpcGossip[18977]["Text134"] = tBossHunderdTower_Text[18977]["Text134"]
tNpcGossip[18977]["Text135"] = tBossHunderdTower_Text[18977]["Text135"]
tNpcGossip[18977]["Text136"] = tBossHunderdTower_Text[18977]["Text136"]
tNpcGossip[18977]["Text137"] = tBossHunderdTower_Text[18977]["Text137"]
tNpcGossip[18977]["Text138"] = tBossHunderdTower_Text[18977]["Text138"]
tNpcGossip[18977]["Text139"] = tBossHunderdTower_Text[18977]["Text139"]
tNpcGossip[18977]["Text140"] = tBossHunderdTower_Text[18977]["Text140"]
tNpcGossip[18977]["ChkFunc1-3"] = function()
	BossHunderdTower_ResetStc()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]  --免费挑战次数
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nChallengeTime = 5 - Get_UserStatisticValue(nChallengeTimeEvent,nChallengeTimeData)
	tNpcGossip[18977]["Text139"] = string.format(tBossHunderdTower_Text[18977]["Text139"],nChallengeTime)
	return true
end
tNpcGossip[18977]["tOption1-3"] = {131,132}
tNpcGossip[18977]["Option131"] = tBossHunderdTower_Text[18977]["Option131"]
tNpcGossip[18977]["OptionFunc131"] = "BossHunderdTower_NpcBuy</N>18977"
tNpcGossip[18977]["OptionChkFunc131"] = function()
	local nChallengeTimeEvent = tBossHunderdTower_Stc["ChallengeTime"]["EventType"]  --免费挑战次数
	local nChallengeTimeData = tBossHunderdTower_Stc["ChallengeTime"]["DataType"]
	local nChallengeTime = Get_UserStatisticValue(nChallengeTimeEvent,nChallengeTimeData)
	local nUserId = Get_UserId()
	local nNowMapId = Get_UserMapId(nUserId) 
	tNpcGossip[18977]["OptionFunc131"] = "BossHunderdTower_NpcBuy</N>18977</N>" .. nNowMapId

	if nChallengeTime >= 5 then
		return  true
	else
		return false
	end
end

tNpcGossip[18977]["Option132"] = tBossHunderdTower_Text[18977]["Option132"]
tNpcGossip[18977]["OptionFunc132"] = "BossHunderdTower_GotoNpc</N>18977"
tNpcGossip[18977]["OptionChkFunc132"] = function()
	local nUserId = Get_UserId()
	local nNowMapId = Get_UserMapId(nUserId) 
	tNpcGossip[18977]["OptionFunc132"] = "BossHunderdTower_GotoNpc</N>18977</N>" .. nNowMapId

	return true
end
--【失败，今日已到购买上限5次】
tNpcGossip[18977]["Text2-1"] = {211}
tNpcGossip[18977]["Text211"] = tBossHunderdTower_Text[18977]["Text211"]
tNpcGossip[18977]["tOption2-1"] = {211}
tNpcGossip[18977]["Option211"] = tBossHunderdTower_Text[18977]["Option211"]


tNpcGossip[18977]["Text3-1"] = {311}
tNpcGossip[18977]["Text311"] = tBossHunderdTower_Text[18977]["Text311"]
tNpcGossip[18977]["tOption3-1"] = {311}
tNpcGossip[18977]["Option311"] = tBossHunderdTower_Text[18977]["Option311"]
tNpcGossip[18977]["OptionFunc311"] = "BossHunderdTower_NpcComfirmBuy</N>18977"

tNpcGossip[18977]["Text4-1"] = {411}
tNpcGossip[18977]["Text411"] = tBossHunderdTower_Text[18977]["Text411"]
tNpcGossip[18977]["tOption4-1"] = {411}
tNpcGossip[18977]["Option411"] = tBossHunderdTower_Text[18977]["Option411"]

-----------------------------扫塔道人 19264
---NPC头像
tNpcFace[5222] = 6
tNpcGossip[19264] = tNpcGossip[19264] or DefaultNpc:new{}
tNpcGossip[19264]["OptionHidden"] = 1
tNpcGossip[19264]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[19264]["Text111"] = tHunderdTowerDailyChallenge_Text[19264]["Text111"]
tNpcGossip[19264]["Text112"] = tHunderdTowerDailyChallenge_Text[19264]["Text112"]
tNpcGossip[19264]["Text113"] = tHunderdTowerDailyChallenge_Text[19264]["Text113"]
tNpcGossip[19264]["Text114"] = tHunderdTowerDailyChallenge_Text[19264]["Text114"]
tNpcGossip[19264]["Text115"] = tHunderdTowerDailyChallenge_Text[19264]["Text115"]
tNpcGossip[19264]["Text116"] = tHunderdTowerDailyChallenge_Text[19264]["Text116"]
tNpcGossip[19264]["Text117"] = tHunderdTowerDailyChallenge_Text[19264]["Text117"]
tNpcGossip[19264]["Text118"] = tHunderdTowerDailyChallenge_Text[19264]["Text118"]
tNpcGossip[19264]["tOption1-1"] = {1}
tNpcGossip[19264]["Option1"] = tHunderdTowerDailyChallenge_Text[19264]["Option1"]
tNpcGossip[19264]["OptionFunc1"] = "BossHunderdTower_DailyReward"
tNpcGossip[19264]["ChkFunc1-1"] = function()
	BossHunderdTower_ResetStc()  --隔天清零
	return BossHunderdTower_DailyNpcGossip()
end
------------------------------------------------------怪物模板-------------------------------------------------------
tMonster[3711] = tMonster[3711] or {}
tMonster[3711]["tFunction"] = tMonster[3711]["tFunction"] or {}
table.insert(tMonster[3711]["tFunction"],BossHunderdTower_KillBoss)
--2
for i = 3712,3810,1 do 
	tMonster[i] = tMonster[i] or {}
	tMonster[i]["tFunction"] = tMonster[i]["tFunction"] or {}
	table.insert(tMonster[i]["tFunction"],BossHunderdTower_KillBoss)
	--tMonster[i] = tMonster[3711]
end
---道士怪物
for j = 3827,3926,1 do 
	tMonster[j] = tMonster[j] or {}
	tMonster[j]["tFunction"] = tMonster[j]["tFunction"] or {}
	table.insert(tMonster[j]["tFunction"],BossHunderdTower_KillBoss)
end
--------------------------------------物品模板----------------------------------------------
--3008816-3008835 1阶挑战礼盒 - 20阶挑战礼盒
-- tItem[3008816] = tItem[3008816] or {}
-- tItem[3008816]["Function"] = function(nItemId,sItemName)
	-- BossHunderdTower_UseItem(nItemId)
-- end

-- for i = 3008817,3008835 do
	-- tItem[i] = tItem[3008816] or {}
-- end
-- -新增物品
-- for i = 3200824,3200843 do
	-- tItem[i] = tItem[3008816] or {}
-- end

tItem[3309097] = tItem[3309097] or {}
tItem[3309097]["Function"] = function(nItemId,sItemName)
	BossHunderdTower_OpenItem(nItemId)
end
tItem[3309098] = tItem[3309097] or {}
tItem[3309099] = tItem[3309097] or {}
tItem[3316102] = tItem[3309097] or {}
-- 坐骑随机包（3星-5星）
tItem[3309711] = tItem[3309711] or {}
tItem[3309711]["Function"] = function(nItemId,sItemName)
	if not RewardTemplate_ChkRandomSpace(tBossHunderdTower_GetItem[3309711],1) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	RewardTemplate_NewRandom(tBossHunderdTower_GetItem[3309711],1)
end
------新增物品
tItem[3313354] = tItem[3313354] or {}
tItem[3313354]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_ChkRandomSpace(tBossHunderdTower_GetItem[3313354],1) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	RewardTemplate_NewRandom(tBossHunderdTower_GetItem[3313354],1)
end

tItem[3313355] = tItem[3313355] or {}
tItem[3313355]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem[3313355]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313355])
end

tItem[3313356] = tItem[3313356] or {}
tItem[3313356]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem[3313356]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313356])
end

tItem[3313357] = tItem[3313357] or {}
tItem[3313357]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem[3313357]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313357])
end

tItem[3313358] = tItem[3313358] or {}
tItem[3313358]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem[3313358]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313358])
end

tItem[3313359] = tItem[3313359] or {}
tItem[3313359]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem[3313359]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313359])
end

tItem[3313360] = tItem[3313360] or {}
tItem[3313360]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313360])
end

tItem[3313361] = tItem[3313361] or {}
tItem[3313361]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313361])
end
--令牌
tItem[3313344] = tItem[3313344] or {}
tItem[3313344]["Function"] = function(nItemId,sItemName) 
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["BossHunderdTower"]["Activity"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tBossHunderdTower_Text["MsgBox"]["Over"])
			local sLog = string.format(tBossHunderdTower_TimeData["Log"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	
	NpcPosition_PathFind(24703) 
end
tItem[3313346] = tItem[3313344] or {}
tItem[3313347] = tItem[3313344] or {}
tItem[3313348] = tItem[3313344] or {}
tItem[3313349] = tItem[3313344] or {}
tItem[3313350] = tItem[3313344] or {}
tItem[3313351] = tItem[3313344] or {}
tItem[3313352] = tItem[3313344] or {}
tItem[3313353] = tItem[3313344] or {}

tItem[3313499] = tItem[3313499] or {}
tItem[3313499]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tBossHunderdTower_GetItem[3313499]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tBossHunderdTower_GetItem[3313499])
end
--------------------------------------陷进模板----------------------------------------------
tTrap[1414] = tTrap[1414] or {}
tTrap[1414]["Function"] = function(nTrapId,nTrapType)
	BossHunderdTower_GotoNpc(18966)
end



