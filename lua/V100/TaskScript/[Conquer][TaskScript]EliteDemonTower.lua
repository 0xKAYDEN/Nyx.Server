-------------------------------------------------------------------------------------------------------------
--Name:		170330[简体征服][任务脚本]精英难度镇魔塔
--Creator:		张磊
--Created:		2017/03/30
-------------------------------------------------------------------------------------------------------------

-- 掩码使用
-- 1.发背包信掩码
	-- 157 99
-- 2.记录玩家选择扫荡的方式
	-- 158 51
-- 21065


local tEliteDemonTower_Cont = {}

	-- 使用礼包等级
	tEliteDemonTower_Cont["PackLevel"] = 140
	
	
	tEliteDemonTower_Cont["TaskId"] = 6126
	tEliteDemonTower_Cont["ItemComSpace"] = 2
	
local tEliteDemonTower_PackMsgOption = {}
	tEliteDemonTower_PackMsgOption[3008956] = {30,10}
	tEliteDemonTower_PackMsgOption[3008957] = {60,20}
	tEliteDemonTower_PackMsgOption[3008958] = {90,30}
	tEliteDemonTower_PackMsgOption[3008959] = {120,40}
	tEliteDemonTower_PackMsgOption[3008960] = {150,50}
	tEliteDemonTower_PackMsgOption[3008961] = {160,50}
	tEliteDemonTower_PackMsgOption[3008962] = {180,60}
	tEliteDemonTower_PackMsgOption[3008963] = {200,60}
	tEliteDemonTower_PackMsgOption[3008964] = {240,70}
	tEliteDemonTower_PackMsgOption[3008965] = {300,90}
	tEliteDemonTower_PackMsgOption[3008966] = {320,100}
	tEliteDemonTower_PackMsgOption[3008967] = {360,100}
	tEliteDemonTower_PackMsgOption[3008968] = {400,120}
	tEliteDemonTower_PackMsgOption[3008969] = {480,150}
	tEliteDemonTower_PackMsgOption[3008970] = {600,180}
	tEliteDemonTower_PackMsgOption[3008971] = {720,200}
	tEliteDemonTower_PackMsgOption[3008972] = {40,10}
	tEliteDemonTower_PackMsgOption[3008973] = {80,20}
	tEliteDemonTower_PackMsgOption[3008974] = {50,15}
	tEliteDemonTower_PackMsgOption[3008975] = {100,30}
	tEliteDemonTower_PackMsgOption[3303073] = {840,220}
	tEliteDemonTower_PackMsgOption[3303074] = {960,240}
	tEliteDemonTower_PackMsgOption[3303075] = {1080,270}
	tEliteDemonTower_PackMsgOption[3303076] = {1200,300}
		
----新增礼包修改
local tEliteDemonTower_ExpBagUse = {}
-- 3008956	30分钟经验礼包		140级以上可选10点气力值
	tEliteDemonTower_ExpBagUse[3008956] = {}
	tEliteDemonTower_ExpBagUse[3008956][1] = {}
	tEliteDemonTower_ExpBagUse[3008956][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008956][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008956][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008956][1]["DeleteItem"][1]["Id"] = 3008956
	tEliteDemonTower_ExpBagUse[3008956][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008956][1]["RewardExpTime"]["Value"] = 30
	
	tEliteDemonTower_ExpBagUse[3008956][2] = {}
	tEliteDemonTower_ExpBagUse[3008956][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008956][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008956][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008956][2]["DeleteItem"][1]["Id"] = 3008956
	tEliteDemonTower_ExpBagUse[3008956][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008956][2]["RewardStrengthValue"]["Value"] = 10

-- 3008972	40分钟经验礼包		140级以上可选10点气力值	
	tEliteDemonTower_ExpBagUse[3008972] = {}
	tEliteDemonTower_ExpBagUse[3008972][1] = {}
	tEliteDemonTower_ExpBagUse[3008972][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008972][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008972][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008972][1]["DeleteItem"][1]["Id"] = 3008972
	tEliteDemonTower_ExpBagUse[3008972][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008972][1]["RewardExpTime"]["Value"] = 40
	
	tEliteDemonTower_ExpBagUse[3008972][2] = {}
	tEliteDemonTower_ExpBagUse[3008972][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008972][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008972][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008972][2]["DeleteItem"][1]["Id"] = 3008972
	tEliteDemonTower_ExpBagUse[3008972][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008972][2]["RewardStrengthValue"]["Value"] = 10
	
-- 3008974	50分钟经验礼包		140级以上可选15点气力值	
	tEliteDemonTower_ExpBagUse[3008974] = {}
	tEliteDemonTower_ExpBagUse[3008974][1] = {}
	tEliteDemonTower_ExpBagUse[3008974][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008974][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008974][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008974][1]["DeleteItem"][1]["Id"] = 3008974
	tEliteDemonTower_ExpBagUse[3008974][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008974][1]["RewardExpTime"]["Value"] = 50
	
	tEliteDemonTower_ExpBagUse[3008974][2] = {}
	tEliteDemonTower_ExpBagUse[3008974][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008974][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008974][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008974][2]["DeleteItem"][1]["Id"] = 3008974
	tEliteDemonTower_ExpBagUse[3008974][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008974][2]["RewardStrengthValue"]["Value"] = 15

	
-- 3008957	60分钟经验礼包		140级以上可选20点气力值
	tEliteDemonTower_ExpBagUse[3008957] = {}
	tEliteDemonTower_ExpBagUse[3008957][1] = {}
	tEliteDemonTower_ExpBagUse[3008957][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008957][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008957][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008957][1]["DeleteItem"][1]["Id"] = 3008957
	tEliteDemonTower_ExpBagUse[3008957][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008957][1]["RewardExpTime"]["Value"] = 60
	
	tEliteDemonTower_ExpBagUse[3008957][2] = {}
	tEliteDemonTower_ExpBagUse[3008957][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008957][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008957][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008957][2]["DeleteItem"][1]["Id"] = 3008957
	tEliteDemonTower_ExpBagUse[3008957][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008957][2]["RewardStrengthValue"]["Value"] = 20
	
-- 3008973	80分钟经验礼包		140级以上可选20点气力值	
	tEliteDemonTower_ExpBagUse[3008973] = {}
	tEliteDemonTower_ExpBagUse[3008973][1] = {}
	tEliteDemonTower_ExpBagUse[3008973][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008973][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008973][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008973][1]["DeleteItem"][1]["Id"] = 3008973
	tEliteDemonTower_ExpBagUse[3008973][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008973][1]["RewardExpTime"]["Value"] = 80
	
	tEliteDemonTower_ExpBagUse[3008973][2] = {}
	tEliteDemonTower_ExpBagUse[3008973][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008973][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008973][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008973][2]["DeleteItem"][1]["Id"] = 3008973
	tEliteDemonTower_ExpBagUse[3008973][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008973][2]["RewardStrengthValue"]["Value"] = 20
	
-- 3008958	90分钟经验礼包		140级以上可选30点气力值
	tEliteDemonTower_ExpBagUse[3008958] = {}
	tEliteDemonTower_ExpBagUse[3008958][1] = {}
	tEliteDemonTower_ExpBagUse[3008958][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008958][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008958][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008958][1]["DeleteItem"][1]["Id"] = 3008958
	tEliteDemonTower_ExpBagUse[3008958][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008958][1]["RewardExpTime"]["Value"] = 90
	
	tEliteDemonTower_ExpBagUse[3008958][2] = {}
	tEliteDemonTower_ExpBagUse[3008958][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008958][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008958][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008958][2]["DeleteItem"][1]["Id"] = 3008958
	tEliteDemonTower_ExpBagUse[3008958][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008958][2]["RewardStrengthValue"]["Value"] = 30
	
-- 3008975	100分钟经验礼包		140级以上可选30点气力值	
	tEliteDemonTower_ExpBagUse[3008975] = {}
	tEliteDemonTower_ExpBagUse[3008975][1] = {}
	tEliteDemonTower_ExpBagUse[3008975][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008975][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008975][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008975][1]["DeleteItem"][1]["Id"] = 3008975
	tEliteDemonTower_ExpBagUse[3008975][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008975][1]["RewardExpTime"]["Value"] = 100
	
	tEliteDemonTower_ExpBagUse[3008975][2] = {}
	tEliteDemonTower_ExpBagUse[3008975][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008975][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008975][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008975][2]["DeleteItem"][1]["Id"] = 3008975
	tEliteDemonTower_ExpBagUse[3008975][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008975][2]["RewardStrengthValue"]["Value"] = 30
	
-- 3008959	120分钟经验礼包		140级以上可选40点气力值	
	tEliteDemonTower_ExpBagUse[3008959] = {}
	tEliteDemonTower_ExpBagUse[3008959][1] = {}
	tEliteDemonTower_ExpBagUse[3008959][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008959][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008959][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008959][1]["DeleteItem"][1]["Id"] = 3008959
	tEliteDemonTower_ExpBagUse[3008959][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008959][1]["RewardExpTime"]["Value"] = 120
	
	tEliteDemonTower_ExpBagUse[3008959][2] = {}
	tEliteDemonTower_ExpBagUse[3008959][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008959][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008959][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008959][2]["DeleteItem"][1]["Id"] = 3008959
	tEliteDemonTower_ExpBagUse[3008959][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008959][2]["RewardStrengthValue"]["Value"] = 40

-- 3008960	150分钟经验礼包		140级以上可选50点气力值	
	tEliteDemonTower_ExpBagUse[3008960] = {}
	tEliteDemonTower_ExpBagUse[3008960][1] = {}
	tEliteDemonTower_ExpBagUse[3008960][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008960][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008960][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008960][1]["DeleteItem"][1]["Id"] = 3008960
	tEliteDemonTower_ExpBagUse[3008960][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008960][1]["RewardExpTime"]["Value"] = 150
	
	tEliteDemonTower_ExpBagUse[3008960][2] = {}
	tEliteDemonTower_ExpBagUse[3008960][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008960][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008960][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008960][2]["DeleteItem"][1]["Id"] = 3008960
	tEliteDemonTower_ExpBagUse[3008960][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008960][2]["RewardStrengthValue"]["Value"] = 50
	
-- 3008961	160分钟经验礼包		140级以上可选50点气力值
	tEliteDemonTower_ExpBagUse[3008961] = {}
	tEliteDemonTower_ExpBagUse[3008961][1] = {}
	tEliteDemonTower_ExpBagUse[3008961][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008961][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008961][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008961][1]["DeleteItem"][1]["Id"] = 3008961
	tEliteDemonTower_ExpBagUse[3008961][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008961][1]["RewardExpTime"]["Value"] = 160
	
	tEliteDemonTower_ExpBagUse[3008961][2] = {}
	tEliteDemonTower_ExpBagUse[3008961][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008961][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008961][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008961][2]["DeleteItem"][1]["Id"] = 3008961
	tEliteDemonTower_ExpBagUse[3008961][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008961][2]["RewardStrengthValue"]["Value"] = 50

	
-- 3008962	180分钟经验礼包		140级以上可选60点气力值
	tEliteDemonTower_ExpBagUse[3008962] = {}
	tEliteDemonTower_ExpBagUse[3008962][1] = {}
	tEliteDemonTower_ExpBagUse[3008962][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008962][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008962][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008962][1]["DeleteItem"][1]["Id"] = 3008962
	tEliteDemonTower_ExpBagUse[3008962][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008962][1]["RewardExpTime"]["Value"] = 180
	
	tEliteDemonTower_ExpBagUse[3008962][2] = {}
	tEliteDemonTower_ExpBagUse[3008962][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008962][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008962][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008962][2]["DeleteItem"][1]["Id"] = 3008962
	tEliteDemonTower_ExpBagUse[3008962][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008962][2]["RewardStrengthValue"]["Value"] = 60
	
-- 3008963	200分钟经验礼包		140级以上可选60点气力值
	tEliteDemonTower_ExpBagUse[3008963] = {}
	tEliteDemonTower_ExpBagUse[3008963][1] = {}
	tEliteDemonTower_ExpBagUse[3008963][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008963][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008963][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008963][1]["DeleteItem"][1]["Id"] = 3008963
	tEliteDemonTower_ExpBagUse[3008963][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008963][1]["RewardExpTime"]["Value"] = 200
	
	tEliteDemonTower_ExpBagUse[3008963][2] = {}
	tEliteDemonTower_ExpBagUse[3008963][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008963][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008963][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008963][2]["DeleteItem"][1]["Id"] = 3008963
	tEliteDemonTower_ExpBagUse[3008963][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008963][2]["RewardStrengthValue"]["Value"] = 60
	
-- 3008964	240分钟经验礼包		140级以上可选70点气力值
	tEliteDemonTower_ExpBagUse[3008964] = {}
	tEliteDemonTower_ExpBagUse[3008964][1] = {}
	tEliteDemonTower_ExpBagUse[3008964][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008964][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008964][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008964][1]["DeleteItem"][1]["Id"] = 3008964
	tEliteDemonTower_ExpBagUse[3008964][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008964][1]["RewardExpTime"]["Value"] = 240
	
	tEliteDemonTower_ExpBagUse[3008964][2] = {}
	tEliteDemonTower_ExpBagUse[3008964][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008964][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008964][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008964][2]["DeleteItem"][1]["Id"] = 3008964
	tEliteDemonTower_ExpBagUse[3008964][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008964][2]["RewardStrengthValue"]["Value"] = 70
	
-- 3008965	300分钟经验礼包		140级以上可选90点气力值	
	tEliteDemonTower_ExpBagUse[3008965] = {}
	tEliteDemonTower_ExpBagUse[3008965][1] = {}
	tEliteDemonTower_ExpBagUse[3008965][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008965][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008965][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008965][1]["DeleteItem"][1]["Id"] = 3008965
	tEliteDemonTower_ExpBagUse[3008965][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008965][1]["RewardExpTime"]["Value"] = 300
	
	tEliteDemonTower_ExpBagUse[3008965][2] = {}
	tEliteDemonTower_ExpBagUse[3008965][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008965][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008965][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008965][2]["DeleteItem"][1]["Id"] = 3008965
	tEliteDemonTower_ExpBagUse[3008965][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008965][2]["RewardStrengthValue"]["Value"] = 90
	
-- 3008966	320分钟经验礼包		140级以上可选100点气力值
	tEliteDemonTower_ExpBagUse[3008966] = {}
	tEliteDemonTower_ExpBagUse[3008966][1] = {}
	tEliteDemonTower_ExpBagUse[3008966][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008966][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008966][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008966][1]["DeleteItem"][1]["Id"] = 3008966
	tEliteDemonTower_ExpBagUse[3008966][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008966][1]["RewardExpTime"]["Value"] = 320
	
	tEliteDemonTower_ExpBagUse[3008966][2] = {}
	tEliteDemonTower_ExpBagUse[3008966][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008966][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008966][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008966][2]["DeleteItem"][1]["Id"] = 3008966
	tEliteDemonTower_ExpBagUse[3008966][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008966][2]["RewardStrengthValue"]["Value"] = 100
	
-- 3008967	360分钟经验礼包		140级以上可选100点气力值
	tEliteDemonTower_ExpBagUse[3008967] = {}
	tEliteDemonTower_ExpBagUse[3008967][1] = {}
	tEliteDemonTower_ExpBagUse[3008967][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008967][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008967][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008967][1]["DeleteItem"][1]["Id"] = 3008967
	tEliteDemonTower_ExpBagUse[3008967][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008967][1]["RewardExpTime"]["Value"] = 360
	
	tEliteDemonTower_ExpBagUse[3008967][2] = {}
	tEliteDemonTower_ExpBagUse[3008967][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008967][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008967][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008967][2]["DeleteItem"][1]["Id"] = 3008967
	tEliteDemonTower_ExpBagUse[3008967][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008967][2]["RewardStrengthValue"]["Value"] = 100

-- 3008968	400分钟经验礼包		140级以上可选120点气力值
	tEliteDemonTower_ExpBagUse[3008968] = {}
	tEliteDemonTower_ExpBagUse[3008968][1] = {}
	tEliteDemonTower_ExpBagUse[3008968][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008968][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008968][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008968][1]["DeleteItem"][1]["Id"] = 3008968
	tEliteDemonTower_ExpBagUse[3008968][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008968][1]["RewardExpTime"]["Value"] = 400
	
	tEliteDemonTower_ExpBagUse[3008968][2] = {}
	tEliteDemonTower_ExpBagUse[3008968][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008968][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008968][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008968][2]["DeleteItem"][1]["Id"] = 3008968
	tEliteDemonTower_ExpBagUse[3008968][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008968][2]["RewardStrengthValue"]["Value"] = 120
	
-- 3008969	480分钟经验礼包		140级以上可选150点气力值
	tEliteDemonTower_ExpBagUse[3008969] = {}
	tEliteDemonTower_ExpBagUse[3008969][1] = {}
	tEliteDemonTower_ExpBagUse[3008969][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008969][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008969][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008969][1]["DeleteItem"][1]["Id"] = 3008969
	tEliteDemonTower_ExpBagUse[3008969][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008969][1]["RewardExpTime"]["Value"] = 480
	
	tEliteDemonTower_ExpBagUse[3008969][2] = {}
	tEliteDemonTower_ExpBagUse[3008969][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008969][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008969][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008969][2]["DeleteItem"][1]["Id"] = 3008969
	tEliteDemonTower_ExpBagUse[3008969][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008969][2]["RewardStrengthValue"]["Value"] = 150
	
-- 3008970	600分钟经验礼包		140级以上可选180点气力值
	tEliteDemonTower_ExpBagUse[3008970] = {}
	tEliteDemonTower_ExpBagUse[3008970][1] = {}
	tEliteDemonTower_ExpBagUse[3008970][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008970][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008970][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008970][1]["DeleteItem"][1]["Id"] = 3008970
	tEliteDemonTower_ExpBagUse[3008970][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008970][1]["RewardExpTime"]["Value"] = 600
	
	tEliteDemonTower_ExpBagUse[3008970][2] = {}
	tEliteDemonTower_ExpBagUse[3008970][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008970][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008970][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008970][2]["DeleteItem"][1]["Id"] = 3008970
	tEliteDemonTower_ExpBagUse[3008970][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008970][2]["RewardStrengthValue"]["Value"] = 180

-- 3008971	720分钟经验礼包		140级以上可选200点气力值
	tEliteDemonTower_ExpBagUse[3008971] = {}
	tEliteDemonTower_ExpBagUse[3008971][1] = {}
	tEliteDemonTower_ExpBagUse[3008971][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008971][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008971][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008971][1]["DeleteItem"][1]["Id"] = 3008971
	tEliteDemonTower_ExpBagUse[3008971][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3008971][1]["RewardExpTime"]["Value"] = 720
	
	tEliteDemonTower_ExpBagUse[3008971][2] = {}
	tEliteDemonTower_ExpBagUse[3008971][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3008971][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3008971][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3008971][2]["DeleteItem"][1]["Id"] = 3008971
	tEliteDemonTower_ExpBagUse[3008971][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3008971][2]["RewardStrengthValue"]["Value"] = 200
	
-- 3303073	840分钟经验礼包	右键点击打开礼包可获得840分钟经验，若满级则获得220点气力值
	tEliteDemonTower_ExpBagUse[3303073] = {}
	tEliteDemonTower_ExpBagUse[3303073][1] = {}
	tEliteDemonTower_ExpBagUse[3303073][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303073][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303073][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303073][1]["DeleteItem"][1]["Id"] = 3303073
	tEliteDemonTower_ExpBagUse[3303073][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3303073][1]["RewardExpTime"]["Value"] = 840
	
	tEliteDemonTower_ExpBagUse[3303073][2] = {}
	tEliteDemonTower_ExpBagUse[3303073][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303073][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303073][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303073][2]["DeleteItem"][1]["Id"] = 3303073
	tEliteDemonTower_ExpBagUse[3303073][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3303073][2]["RewardStrengthValue"]["Value"] = 220
	
-- 3303074	960分钟经验礼包	右键点击打开礼包可获得960分钟经验，若满级则获得240点气力值
	tEliteDemonTower_ExpBagUse[3303074] = {}
	tEliteDemonTower_ExpBagUse[3303074][1] = {}
	tEliteDemonTower_ExpBagUse[3303074][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303074][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303074][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303074][1]["DeleteItem"][1]["Id"] = 3303074
	tEliteDemonTower_ExpBagUse[3303074][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3303074][1]["RewardExpTime"]["Value"] = 960
	
	tEliteDemonTower_ExpBagUse[3303074][2] = {}
	tEliteDemonTower_ExpBagUse[3303074][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303074][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303074][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303074][2]["DeleteItem"][1]["Id"] = 3303074
	tEliteDemonTower_ExpBagUse[3303074][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3303074][2]["RewardStrengthValue"]["Value"] = 240
	
-- 3303075	1080分钟经验礼包	右键点击打开礼包可获得1080分钟经验，若满级则获得270点气力值
	tEliteDemonTower_ExpBagUse[3303075] = {}
	tEliteDemonTower_ExpBagUse[3303075][1] = {}
	tEliteDemonTower_ExpBagUse[3303075][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303075][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303075][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303075][1]["DeleteItem"][1]["Id"] = 3303075
	tEliteDemonTower_ExpBagUse[3303075][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3303075][1]["RewardExpTime"]["Value"] = 1080
	
	tEliteDemonTower_ExpBagUse[3303075][2] = {}
	tEliteDemonTower_ExpBagUse[3303075][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303075][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303075][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303075][2]["DeleteItem"][1]["Id"] = 3303075
	tEliteDemonTower_ExpBagUse[3303075][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3303075][2]["RewardStrengthValue"]["Value"] = 270
	
-- 3303076	1200分钟经验礼包	右键点击打开礼包可获得1200分钟经验，若满级则获得300点气力值
	tEliteDemonTower_ExpBagUse[3303076] = {}
	tEliteDemonTower_ExpBagUse[3303076][1] = {}
	tEliteDemonTower_ExpBagUse[3303076][1]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303076][1]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303076][1]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303076][1]["DeleteItem"][1]["Id"] = 3303076
	tEliteDemonTower_ExpBagUse[3303076][1]["RewardExpTime"] = {}
	tEliteDemonTower_ExpBagUse[3303076][1]["RewardExpTime"]["Value"] = 1200
	
	tEliteDemonTower_ExpBagUse[3303076][2] = {}
	tEliteDemonTower_ExpBagUse[3303076][2]["LogId"] = 12000702
	tEliteDemonTower_ExpBagUse[3303076][2]["DeleteItem"] = {}
	tEliteDemonTower_ExpBagUse[3303076][2]["DeleteItem"][1] = {}
	tEliteDemonTower_ExpBagUse[3303076][2]["DeleteItem"][1]["Id"] = 3303076
	tEliteDemonTower_ExpBagUse[3303076][2]["RewardStrengthValue"] = {}
	tEliteDemonTower_ExpBagUse[3303076][2]["RewardStrengthValue"]["Value"] = 300


	
local tEliteDemonTower_CheckCont = {}
	tEliteDemonTower_CheckCont["Level"] = 135
	tEliteDemonTower_CheckCont["Meto"] = 0
	
	tEliteDemonTower_CheckCont["Stc"] = {}
	-- 困难镇魔塔通关掩码
	tEliteDemonTower_CheckCont["Stc"][1] = {}
	tEliteDemonTower_CheckCont["Stc"][1]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][1]["DataType"] = 04
	tEliteDemonTower_CheckCont["Stc"][1]["Data"] = 9
	
	-- 精英镇魔塔玩家通过的层数
	tEliteDemonTower_CheckCont["Stc"][2] = {}
	tEliteDemonTower_CheckCont["Stc"][2]["EventType"] = 158
	tEliteDemonTower_CheckCont["Stc"][2]["DataType"] = 50
	
	-- 玩家当前是否选择过难度了 玩家当天选择难度，0表示未选择，1表示普通难度，2表示困难 3表示精英
	tEliteDemonTower_CheckCont["Stc"][3] = {}
	tEliteDemonTower_CheckCont["Stc"][3]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][3]["DataType"] = 01
	
	-- 142 02 玩家当前选择的层数
	tEliteDemonTower_CheckCont["Stc"][4] = {}
	tEliteDemonTower_CheckCont["Stc"][4]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][4]["DataType"] = 02
	
	--142 22 玩家是否杀死层数boss，0表示未杀死任意层，nSel*10+nFloor
	tEliteDemonTower_CheckCont["Stc"][5] = {}
	tEliteDemonTower_CheckCont["Stc"][5]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][5]["DataType"] = 22	

	--142 06 玩家组队完成任务情况，0表示未完成，1表示完成未领奖，2表示已领奖。
	tEliteDemonTower_CheckCont["Stc"][6] = {}
	tEliteDemonTower_CheckCont["Stc"][6]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][6]["DataType"] = 06
	
	-- 142 05 玩家刷新星级记录
	tEliteDemonTower_CheckCont["Stc"][7] = {}
	tEliteDemonTower_CheckCont["Stc"][7]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][7]["DataType"] = 05

	--142 41 玩家当天刷新奖励次数
	tEliteDemonTower_CheckCont["Stc"][8] = {}
	tEliteDemonTower_CheckCont["Stc"][8]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][8]["DataType"] = 41	

	--158 51 记录玩家选择的扫荡方式
	tEliteDemonTower_CheckCont["Stc"][9] = {}
	tEliteDemonTower_CheckCont["Stc"][9]["EventType"] = 158
	tEliteDemonTower_CheckCont["Stc"][9]["DataType"] = 51


	
	-- 玩家当天挑战的次数，以及当前选择的层数，玩家总共挑战过的层数
	--142 19 玩家当天第一次领取奖励的层数
	--142 20 玩家当天第二次领取奖励的层数
	--142 21 玩家当天第三次领取奖励的层数
	--158 51 记录玩家选择的扫荡方式
	tEliteDemonTower_CheckCont["Stc"][10] = {}
	tEliteDemonTower_CheckCont["Stc"][10]["EventType"] = 142
	tEliteDemonTower_CheckCont["Stc"][10]["DataType"] = {19,20,21}

	
	
local	tEliteDemonTower_ItemFloorReward = {}
	tEliteDemonTower_ItemFloorReward["Space"] = 2
	tEliteDemonTower_ItemFloorReward["LogId"] = 12000702
	tEliteDemonTower_ItemFloorReward["DeleteItem"] = {}
	tEliteDemonTower_ItemFloorReward["DeleteItem"][1] = {}
	tEliteDemonTower_ItemFloorReward["DeleteItem"][1]["Id"] = 3302997
	tEliteDemonTower_ItemFloorReward["RewardItem"] = {}
	tEliteDemonTower_ItemFloorReward["RewardItem"][1] = {}
	tEliteDemonTower_ItemFloorReward["RewardItem"][1]["Id"] = 3008727
	tEliteDemonTower_ItemFloorReward["RewardItem"][1]["Attr"] = "0 1"
	tEliteDemonTower_ItemFloorReward["RewardItem"][2] = {}
	tEliteDemonTower_ItemFloorReward["RewardItem"][2]["Id"] = 3008970
	tEliteDemonTower_ItemFloorReward["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
	tEliteDemonTower_ItemFloorReward["RewardStrengthValue"] = {}
	tEliteDemonTower_ItemFloorReward["RewardStrengthValue"]["Value"] = 150
	
local tEliteDemonTower_FloorTable = {1,2,3,4,5,6,7,8,9}


local tEliteDemonTower_MapConNotUser = {}
		tEliteDemonTower_MapConNotUser[1] = 10139
		tEliteDemonTower_MapConNotUser[2] = 10142
		tEliteDemonTower_MapConNotUser[3] = 10145
		tEliteDemonTower_MapConNotUser[4] = 10147
		tEliteDemonTower_MapConNotUser[5] = 10148
		
		tEliteDemonTower_MapConNotUser[6] = 4000
		tEliteDemonTower_MapConNotUser[7] = 4003
		tEliteDemonTower_MapConNotUser[8] = 4006
		tEliteDemonTower_MapConNotUser[9] = 4008
		tEliteDemonTower_MapConNotUser[10] = 4009


function EliteDemonTower_PackUse(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then	
		return
	end
	
	-- 如果选择经验
	if nFlag == 1 then
		if Get_UserLevel() >= G_User_MaxLev then		
			LinkItemGossipFunc_New(nItemId,"3-1")
			return		
		end	
	
		if User_ChkSurplusExp() then
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
		
		RewardTemplate_UseItemAndMsg(tEliteDemonTower_ExpBagUse[nItemId][1])
		
	elseif nFlag == 2 then
		RewardTemplate_UseItemAndMsg(tEliteDemonTower_ExpBagUse[nItemId][2])
	end
end



function EliteDemonTower_UserItemComplete(nItemId)
	if not Item_ChkItem(nItemId) then
	
		Sys_MsgBox(tEliteDemonTower_Text[3302997]["Msg"][4])
		return
	end
	
	local nUserMapId = Get_UserMapId()
	local nUserMapDoc = Get_MapDoc(nUserMapId)
	
	-- 判断是否在镇魔塔副本地图中，副本地图和通道中无法使用道具完成
	for k,v in pairs(tEliteDemonTower_MapConNotUser) do
		if nUserMapDoc == v then
			Sys_MsgBox(tEliteDemonTower_OtherMsg["CanNotUse"])
			return
		end	
	end	
	
	
	-- 是否通关困难镇魔塔了
	local nEvent = tEliteDemonTower_CheckCont["Stc"][1]["EventType"]
	local nType = tEliteDemonTower_CheckCont["Stc"][1]["DataType"]
	local nData = tEliteDemonTower_CheckCont["Stc"][1]["Data"]
	
	local nUserData = Get_UserStatisticValue(nEvent,nType)
	
	if nUserData < nData then
		Sys_MsgBox(tEliteDemonTower_Text[3302997]["Msg"][2])
		return
	end

	-- 判断是否完成过3次了
	if DemonTower_GetExistTimes() <=0 then
		
		Sys_MsgBox(tEliteDemonTower_Text[3302997]["Msg"][3])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tEliteDemonTower_Cont["ItemComSpace"]) then
		Sys_MsgBox(tEliteDemonTower_Text[3302997]["Msg"][1])
		return
	end
	
	-- 全部满足，则删掉晶玉，给奖励
	--掩码设置（领奖励掩码。领奖次数）
	-- local nEventSel = tEliteDemonTower_CheckCont["Stc"][3]["EventType"]
	-- local nTypeSel = tEliteDemonTower_CheckCont["Stc"][3]["DataType"]
	
	-- 如果当前选择的难度 不是困难，使用这个玉不能完成
	-- EliteDemonTower_StcSet(nEventSel,nTypeSel)
	-- local nSel = Get_UserStatisticValue(nEventSel,nTypeSel)
	-- if nSel ~=2 then
		-- 选择的非精英难度副本，不能使用完成道具		
		-- Sys_MsgBox(tEliteDemonTower_Text[3302997]["Msg"][5])
		-- return
	-- end
	
	-- 选择难度满足条件，判断当前挑战过的层数有哪些

	
	-- 设置选择难度为2  困难镇魔塔
	-- Task_SetStatistic(nEventSel,nTypeSel,2,1)
	-- Task_SetStcTimestamp(nEventSel,nTypeSel,0)
	
	local nRandEvent = tEliteDemonTower_CheckCont["Stc"][10]["EventType"]
	-- 进行取值，当天挑战的有哪些层

	-- 
	local tFloorTable = CommonFunc_Copy(tEliteDemonTower_FloorTable)
	
	-- 随机一层记录
	for k,v in pairs(tEliteDemonTower_CheckCont["Stc"][10]["DataType"]) do
		EliteDemonTower_StcSet(nRandEvent,v)
		
		-- 判断值
		local nData = Get_UserStatisticValue(nRandEvent,v)
		if nData ~= 0 then
			for m,n in pairs(tFloorTable) do
				if nData > 20 and nData <=29 then
					if n == (nData-20) then
						tFloorTable[m] = nil
						break
					end
				end
			end			
		end		
	end
	-- 说明能挑战的层数都被直接完成过了
	
	local tRandom = {}
	
	for x,y in pairs(tFloorTable) do	
		table.insert(tRandom,x)
	end
	
	-- 直接随机一关进行赋值
	local nMathRandom = tRandom[math.random(1,#tRandom)]
	
	-- DemonTower_SetFloorStc(nMathRandom)
	
	local nEvent_type = tEliteDemonTower_CheckCont["Stc"][10]["EventType"]
	local nTypeTable = tEliteDemonTower_CheckCont["Stc"][10]["DataType"]
	

	local nTaskId = tEliteDemonTower_Cont["TaskId"] 
	-- 不存在掩码
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	local nTaskData = Get_TaskDetailData1(nTaskId)
	
	for i,v in pairs(nTypeTable) do
		if Task_ChkStcValue(nEvent_type,v,"==",0) then
			Task_SetStatistic(nEvent_type,v,2*10+nMathRandom,1)
			
			Task_SetStcTimestamp(nEvent_type,v,0)
			if Task_ChkTaskDetailValue(nTaskId,"6","==",1) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
		
			else	
				Task_SetTaskDetailData1(nTaskId,nTaskData+1)
			end
			break
		end
	end	
	
	-- 
	-- 给奖励	
	RewardTemplate_UseItemAndMsg(tEliteDemonTower_ItemFloorReward)
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end



-- 掩码隔天操作
function EliteDemonTower_StcSet(nEvent,nType,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	end
	return false
end



----------------------------------------------------------------------

---------------------------------物品使用
tItemFace[3008956] = 580
tItem[3008956] = tItem[3008956] or {}
tItem[3008956]["Function"] = function(nItemId,sItemName)

	--判断玩家是否为140级以上的玩家
	if Get_UserLevel() >= tEliteDemonTower_Cont["PackLevel"] then
	
		tItem[3008956]["Option111"] = string.format(tEliteDemonTower_Text[3008956]["Option111"],tEliteDemonTower_PackMsgOption[nItemId][1])
		tItem[3008956]["Option112"] = string.format(tEliteDemonTower_Text[3008956]["Option112"],tEliteDemonTower_PackMsgOption[nItemId][2])
		tItem[3008956]["OptionFunc111"] = "EliteDemonTower_PackUse</N>" .. nItemId .. "</N>" .. 1
		tItem[3008956]["OptionFunc112"] = "EliteDemonTower_PackUse</N>" .. nItemId .. "</N>" .. 2	
		
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end	

	RewardTemplate_UseItemAndMsg(tEliteDemonTower_ExpBagUse[nItemId][1])
end
tItemFace[3008957] = 580
tItemFace[3008958] = 580
tItemFace[3008959] = 580
tItemFace[3008960] = 580
tItemFace[3008961] = 580
tItemFace[3008962] = 580
tItemFace[3008963] = 580
tItemFace[3008964] = 580
tItemFace[3008965] = 580
tItemFace[3008966] = 580
tItemFace[3008967] = 580
tItemFace[3008968] = 580
tItemFace[3008969] = 580
tItemFace[3008970] = 580
tItemFace[3008971] = 580
tItemFace[3008972] = 580
tItemFace[3008973] = 580
tItemFace[3008974] = 580
tItemFace[3008975] = 580
tItemFace[3303073] = 580
tItemFace[3303074] = 580
tItemFace[3303075] = 580
tItemFace[3303076] = 580


tItem[3008957] = tItem[3008956]
tItem[3008958] = tItem[3008956]
tItem[3008959] = tItem[3008956]
tItem[3008960] = tItem[3008956]
tItem[3008961] = tItem[3008956]
tItem[3008962] = tItem[3008956]
tItem[3008963] = tItem[3008956]
tItem[3008964] = tItem[3008956]
tItem[3008965] = tItem[3008956]
tItem[3008966] = tItem[3008956]
tItem[3008967] = tItem[3008956]
tItem[3008968] = tItem[3008956]
tItem[3008969] = tItem[3008956]
tItem[3008970] = tItem[3008956]
tItem[3008971] = tItem[3008956]
tItem[3008972] = tItem[3008956]
tItem[3008973] = tItem[3008956]
tItem[3008974] = tItem[3008956]
tItem[3008975] = tItem[3008956]
tItem[3303073] = tItem[3008956]
tItem[3303074] = tItem[3008956]
tItem[3303075] = tItem[3008956]
tItem[3303076] = tItem[3008956]
-- tItem[3303076]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tEliteDemonTower_ExpPack[nItemId])
-- end



tItem[3008956]["Text1-1"] = {111}
tItem[3008956]["Text111"] = tEliteDemonTower_Text[3008956]["Text111"]
tItem[3008956]["tOption1-1"] = {111,112}
tItem[3008956]["Option111"] = tEliteDemonTower_Text[3008956]["Option111"]
tItem[3008956]["OptionFunc111"] = "EliteDemonTower_PackUse"
tItem[3008956]["Option112"] = tEliteDemonTower_Text[3008956]["Option112"]
tItem[3008956]["OptionFunc112"] = "EliteDemonTower_PackUse"

tItem[3008956]["Text2-1"] = {211}
tItem[3008956]["Text211"] = tEliteDemonTower_Text[3008956]["Text211"]
tItem[3008956]["tOption2-1"] = {211}
tItem[3008956]["Option211"] = tEliteDemonTower_Text[3008956]["Option211"]
tItem[3008956]["OptionPoint211"] = "1-1"

tItem[3008956]["Text3-1"] = {311}
tItem[3008956]["Text311"] = tEliteDemonTower_Text[3008956]["Text311"]
tItem[3008956]["tOption3-1"] = {311}
tItem[3008956]["Option311"] = tEliteDemonTower_Text[3008956]["Option311"]
tItem[3008956]["OptionPoint311"] = "1-1"




-- 灭邪晶玉	3302997
tItemFace[3302997] = 518
tItem[3302997] = tItem[3302997] or {}
tItem[3302997]["Text1-1"] = {111,112,113}
tItem[3302997]["Text111"] = tEliteDemonTower_Text[3302997]["Text111"]
tItem[3302997]["Text112"] = tEliteDemonTower_Text[3302997]["Text112"]
tItem[3302997]["Text113"] = tEliteDemonTower_Text[3302997]["Text113"]
tItem[3302997]["tOption1-1"] = {111,112}
tItem[3302997]["Option111"] = tEliteDemonTower_Text[3302997]["Option111"]
tItem[3302997]["OptionFunc111"] = "EliteDemonTower_UserItemComplete</N>3302997"
tItem[3302997]["Option112"] = tEliteDemonTower_Text[3302997]["Option112"]

-- 使用成功获得奖励
tItem[3302997]["Text2-1"] = {211,212,213}
tItem[3302997]["Text211"] = tEliteDemonTower_Text[3302997]["Text211"]
tItem[3302997]["Text212"] = tEliteDemonTower_Text[3302997]["Text212"]
tItem[3302997]["Text213"] = tEliteDemonTower_Text[3302997]["Text213"]
tItem[3302997]["tOption2-1"] = {211}
tItem[3302997]["Option211"] = tEliteDemonTower_Text[3302997]["Option211"]
tItem[3302997]["ChkFunc2-1"] = function()
	local nTimes = DemonTower_GetExistTimes()
	tItem[3302997]["Text213"] = string.format(tEliteDemonTower_Text[3302997]["Text213"],nTimes)
	return true
end

