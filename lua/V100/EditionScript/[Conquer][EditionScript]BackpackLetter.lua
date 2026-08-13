----------------------------------------------------------------------------
--Name:		[征服][功能脚本]背包信.lua
--Purpose:	背包信
--Creator: 	郑鋆
--Created:	2015/05/27
----------------------------------------------------------------------------

-- 命名前缀
-- BackpackLetter_
-- LOGID	12000106
local sBackpackLetter_Log = "0,0,0,0,12000106,2,%d,1"
local tBackpackLetter_Activity = {}
local tBackpackLetter_Activity_NoGift = {}

------------------------------------------------------------------------------------
--Name:			160428[简体征服][活动脚本]试手气活动制作
--Purpose:		试手气活动制作
--Creator:		张世超
--Created:		2016/04/28
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200233] = {}
	-- tBackpackLetter_Activity[3200233]["ActivityTime"] = "2016-08-18 00:00 2016-08-24 23:59"
	-- tBackpackLetter_Activity[3200233]["EventType"] = 144
	-- tBackpackLetter_Activity[3200233]["DataType"] = 85
	-- tBackpackLetter_Activity[3200233]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200233]["RewardItem"] = 3200233
	-- tBackpackLetter_Activity[3200233]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200233]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200233]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3200233]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200233]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200233]["Pathfind"]["PosX"] = 324
	-- tBackpackLetter_Activity[3200233]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3200233]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200233]["Pathfind"]["NpcId"] = 11071
	
	-- 九幽藏宝图
	tBackpackLetter_Activity[3006699] = {}
	tBackpackLetter_Activity[3006699]["ActivityTime"] = tActivityTime["KillMonsterDropItem"]["ActivityTime"]
	tBackpackLetter_Activity[3006699]["EventType"] = 142
	tBackpackLetter_Activity[3006699]["DataType"] = 56
	tBackpackLetter_Activity[3006699]["RewardData"] = 1
	tBackpackLetter_Activity[3006699]["RewardItem"] = 3006699
	tBackpackLetter_Activity[3006699]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3006699]["NeedLevel"] = 120
	tBackpackLetter_Activity[3006699]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3006699]["GlobalId"] = G_Gold_DynaGlobal
	tBackpackLetter_Activity[3006699]["OldSever"] = 1

	--八阵图调查
	-- tBackpackLetter_Activity[3006797] = {}
	-- tBackpackLetter_Activity[3006797]["ActivityTime"] = "2015-07-02 00:00 2015-07-16 23:59"
	-- tBackpackLetter_Activity[3006797]["EventType"] = 135
	-- tBackpackLetter_Activity[3006797]["DataType"] = 27
	-- tBackpackLetter_Activity[3006797]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006797]["RewardItem"] = 3006797
	-- tBackpackLetter_Activity[3006797]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006797]["NeedLevel"] = 1
	-- tBackpackLetter_Activity[3006797]["NeedMetempsychosis"] = 0

	-- VIP特权度假邀请卡
	-- tBackpackLetter_Activity[3006618] = {}
	-- tBackpackLetter_Activity[3006618]["ActivityTime"] = "2017-07-15 00:00 2017-07-21 23:59"
	-- tBackpackLetter_Activity[3006618]["EventType"] = 135
	-- tBackpackLetter_Activity[3006618]["DataType"] = 7
	-- tBackpackLetter_Activity[3006618]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006618]["RewardItem"] = 3006618
	-- tBackpackLetter_Activity[3006618]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006618]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3006618]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3006618]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3006618]["Pathfind"]["PosX"] = 300
	-- tBackpackLetter_Activity[3006618]["Pathfind"]["PosY"] = 366
	-- tBackpackLetter_Activity[3006618]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3006618]["Pathfind"]["NpcId"] = 18464

	-- -- 夏日冰饮
	-- tBackpackLetter_Activity[3006619] = {}
	-- tBackpackLetter_Activity[3006619]["ActivityTime"] = "2017-07-08 00:00 2017-07-21 23:59"
	-- tBackpackLetter_Activity[3006619]["EventType"] = 135
	-- tBackpackLetter_Activity[3006619]["DataType"] = 8
	-- tBackpackLetter_Activity[3006619]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006619]["RewardItem"] = 3006619
	-- tBackpackLetter_Activity[3006619]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006619]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3006619]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3006619]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3006619]["Pathfind"]["PosX"] = 297
	-- tBackpackLetter_Activity[3006619]["Pathfind"]["PosY"] = 370
	-- tBackpackLetter_Activity[3006619]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3006619]["Pathfind"]["NpcId"] = 18511

	-- 调皮的蟠桃
	tBackpackLetter_Activity[3006281] = {}
	tBackpackLetter_Activity[3006281]["ActivityTime"] = tActivityTime["PeachaGardenActive"]["ActivityTime"]
	tBackpackLetter_Activity[3006281]["EventType"] = 134
	tBackpackLetter_Activity[3006281]["DataType"] = 30
	tBackpackLetter_Activity[3006281]["RewardData"] = 1
	tBackpackLetter_Activity[3006281]["RewardItem"] = 3006281
	tBackpackLetter_Activity[3006281]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3006281]["NeedLevel"] = 80
	tBackpackLetter_Activity[3006281]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3006281]["GlobalId"] = 51342
	-- tBackpackLetter_Activity[3006281]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3006281]["GlobalPos"] = 4

	-- 奥林匹斯神谕(卡牌月活动制作单)
	-- tBackpackLetter_Activity[3006697] = {}
	-- tBackpackLetter_Activity[3006697]["ActivityTime"] = "2015-07-23 00:00 2015-08-05 23:59"
	-- tBackpackLetter_Activity[3006697]["EventType"] = 136
	-- tBackpackLetter_Activity[3006697]["DataType"] = 7
	-- tBackpackLetter_Activity[3006697]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006697]["RewardItem"] = 3006697
	-- tBackpackLetter_Activity[3006697]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006697]["NeedLevel"] = 120
	-- tBackpackLetter_Activity[3006697]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3006697]["Log"] = "0,0,0,0,10002414,2,%d,1"
	
	-- 大漠寻宝活动
		tBackpackLetter_Activity[3006949] = {}
		tBackpackLetter_Activity[3006949]["ActivityTime"] = "2017-09-05 00:00 2017-09-18 23:59"
		tBackpackLetter_Activity[3006949]["EventType"] = 137
		tBackpackLetter_Activity[3006949]["DataType"] = 18
		tBackpackLetter_Activity[3006949]["RewardData"] = 1
		tBackpackLetter_Activity[3006949]["RewardItem"] = 3006949
		tBackpackLetter_Activity[3006949]["RewardAttr"] = "0 1"
		tBackpackLetter_Activity[3006949]["NeedLevel"] = 100
		tBackpackLetter_Activity[3006949]["NeedMetempsychosis"] = 0
		
		tBackpackLetter_Activity[3006949]["Cultivation"] = 30
		tBackpackLetter_Activity[3006949]["Pathfind"] = {}
		tBackpackLetter_Activity[3006949]["Pathfind"]["NpcId"] = 18711
		
	
	-- -- 月卡包线上版制作
	-- tBackpackLetter_Activity[3006938] = {}
	-- tBackpackLetter_Activity[3006938]["ActivityTime"] = "2015-09-10 00:00 2015-11-10 23:59"
	-- tBackpackLetter_Activity[3006938]["EventType"] = 136
	-- tBackpackLetter_Activity[3006938]["DataType"] = 37
	-- tBackpackLetter_Activity[3006938]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006938]["RewardItem"] = 3006938
	-- tBackpackLetter_Activity[3006938]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006938]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3006938]["NeedMetempsychosis"] = 0
	
	--天下第一活动
	tBackpackLetter_Activity[3007030] = {}
	tBackpackLetter_Activity[3007030]["ActivityTime"] = "2017-09-28 00:00 2017-10-10 23:59"
	tBackpackLetter_Activity[3007030]["EventType"] = 136
	tBackpackLetter_Activity[3007030]["DataType"] = 88
	tBackpackLetter_Activity[3007030]["RewardData"] = 1
	tBackpackLetter_Activity[3007030]["RewardItem"] = 3007030
	tBackpackLetter_Activity[3007030]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3007030]["NeedLevel"] = 120
	tBackpackLetter_Activity[3007030]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3007030]["Cultivation"] = 30
	tBackpackLetter_Activity[3007030]["Pathfind"] = {}
	tBackpackLetter_Activity[3007030]["Pathfind"]["NpcId"] = 18714
	tBackpackLetter_Activity[3007030]["Pathfind"]["PosX"] = 314
	tBackpackLetter_Activity[3007030]["Pathfind"]["PosY"] = 247
	tBackpackLetter_Activity[3007030]["Pathfind"]["MapId"] = 1002
	
	
	-- -- 跨服引导令牌
	-- tBackpackLetter_Activity[727505] = {}
	-- tBackpackLetter_Activity[727505]["EventType"] = 137
	-- tBackpackLetter_Activity[727505]["DataType"] = 11
	-- tBackpackLetter_Activity[727505]["RewardData"] = 1
	-- tBackpackLetter_Activity[727505]["RewardItem"] = 727505
	-- tBackpackLetter_Activity[727505]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[727505]["NeedLevel"] = 110
	-- tBackpackLetter_Activity[727505]["NeedMetempsychosis"] = 1
	
	-- 神机牌
	tBackpackLetter_Activity[3007294] = {}
	tBackpackLetter_Activity[3007294]["EventType"] = 137
	tBackpackLetter_Activity[3007294]["DataType"] = 50
	tBackpackLetter_Activity[3007294]["RewardData"] = 1
	tBackpackLetter_Activity[3007294]["RewardItem"] = 3007294
	tBackpackLetter_Activity[3007294]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3007294]["NeedLevel"] = 15
	tBackpackLetter_Activity[3007294]["NeedMetempsychosis"] = 2
	
	--万圣节背包信
	tBackpackLetter_Activity[3004809] = {}
	tBackpackLetter_Activity[3004809]["ActivityTime"] = "2017-10-26 00:00 2017-11-01 23:59"
	tBackpackLetter_Activity[3004809]["EventType"] = 138
	tBackpackLetter_Activity[3004809]["DataType"] = 19
	tBackpackLetter_Activity[3004809]["RewardData"] = 1
	tBackpackLetter_Activity[3004809]["RewardItem"] = 3004809
	tBackpackLetter_Activity[3004809]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3004809]["NeedLevel"] = 80
	tBackpackLetter_Activity[3004809]["NeedMetempsychosis"] = 0
	
			
	-- 感恩节活动之感恩节大使
	-- tBackpackLetter_Activity[3004937] = {}
	-- tBackpackLetter_Activity[3004937]["ActivityTime"] = tActivityTime["Thanksgiving2018"]["ActivityTime"]
	-- tBackpackLetter_Activity[3004937]["EventType"] = 130
	-- tBackpackLetter_Activity[3004937]["DataType"] = 00
	-- tBackpackLetter_Activity[3004937]["RewardData"] = 1
	-- tBackpackLetter_Activity[3004937]["RewardItem"] = 3004937
	-- tBackpackLetter_Activity[3004937]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3004937]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3004937]["NeedMetempsychosis"] = 0
	
	--boss月背包信
	-- tBackpackLetter_Activity[3007157] = {}
	-- tBackpackLetter_Activity[3007157]["ActivityTime"] = "2015-12-03 00:00 2015-12-16 23:59"
	-- tBackpackLetter_Activity[3007157]["EventType"] = 137
	-- tBackpackLetter_Activity[3007157]["DataType"] = 82
	-- tBackpackLetter_Activity[3007157]["RewardData"] = 1
	-- tBackpackLetter_Activity[3007157]["RewardItem"] = 3007157
	-- tBackpackLetter_Activity[3007157]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3007157]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3007157]["NeedMetempsychosis"] = 0
	-- 双蛋活动背包信
	 tBackpackLetter_Activity[3005363] = {}
	 tBackpackLetter_Activity[3005363]["ActivityTime"] = "2017-12-21 00:00 2018-01-03 23:59"
	 tBackpackLetter_Activity[3005363]["EventType"] = 138
	 tBackpackLetter_Activity[3005363]["DataType"] = 13
	 tBackpackLetter_Activity[3005363]["RewardData"] = 1
	 tBackpackLetter_Activity[3005363]["RewardItem"] = 3005363
	 tBackpackLetter_Activity[3005363]["RewardAttr"] = "0 1"
	 tBackpackLetter_Activity[3005363]["NeedLevel"] = 80
	 tBackpackLetter_Activity[3005363]["NeedMetempsychosis"] = 0
	 tBackpackLetter_Activity[3005363]["Cultivation"] = 30
	 tBackpackLetter_Activity[3005363]["Pathfind"] = {}
	 tBackpackLetter_Activity[3005363]["Pathfind"]["PosX"] = 345
	 tBackpackLetter_Activity[3005363]["Pathfind"]["PosY"] = 461
	 tBackpackLetter_Activity[3005363]["Pathfind"]["MapId"] = 1002
	 
	 
	 
	--武僧史诗任务
	tBackpackLetter_Activity[3007561] = {}
	tBackpackLetter_Activity[3007561]["EventType"] = 138
	tBackpackLetter_Activity[3007561]["DataType"] = 55
	tBackpackLetter_Activity[3007561]["RewardData"] = 1
	tBackpackLetter_Activity[3007561]["RewardItem"] = 3007561
	tBackpackLetter_Activity[3007561]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3007561]["NeedLevel"] = 70
	tBackpackLetter_Activity[3007561]["NeedMetempsychosis"] = 0

	-- 练气轮盘(1.14-1.31)
	-- tBackpackLetter_Activity[3008356] = {}
	-- tBackpackLetter_Activity[3008356]["ActivityTime"] = "2016-01-14 00:00 2016-01-31 23:59"
	-- tBackpackLetter_Activity[3008356]["EventType"] = 139
	-- tBackpackLetter_Activity[3008356]["DataType"] = 93
	-- tBackpackLetter_Activity[3008356]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008356]["RewardItem"] = 3008356
	-- tBackpackLetter_Activity[3008356]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008356]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008356]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008356]["ExpTime"] = 30
	-- tBackpackLetter_Activity[3008356]["Cultivation"] = 15
	-- tBackpackLetter_Activity[3008356]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008356]["Pathfind"]["PosX"] = 314
	-- tBackpackLetter_Activity[3008356]["Pathfind"]["PosY"] = 249
	-- tBackpackLetter_Activity[3008356]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008356]["Pathfind"]["NpcId"] = 19032
	
	-- -- 周卡活动
	-- tBackpackLetter_Activity[3008177] = {}
	-- tBackpackLetter_Activity[3008177]["ActivityTime"] = "2016-06-23 00:00 2016-07-22 23:59"
	-- tBackpackLetter_Activity[3008177]["EventType"] = 139
	-- tBackpackLetter_Activity[3008177]["DataType"] = 94
	-- tBackpackLetter_Activity[3008177]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008177]["RewardItem"] = 3008177
	-- tBackpackLetter_Activity[3008177]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008177]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3008177]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008177]["ExpTime"] = 30
	-- tBackpackLetter_Activity[3008177]["Cultivation"] = 15
	-- tBackpackLetter_Activity[3008177]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008177]["Pathfind"]["PosX"] = 326
	-- tBackpackLetter_Activity[3008177]["Pathfind"]["PosY"] = 249
	-- tBackpackLetter_Activity[3008177]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008177]["Pathfind"]["NpcId"] = 19029
	
	--2016春节活动
	-- tBackpackLetter_Activity[3007936] = {}
	-- tBackpackLetter_Activity[3007936]["ActivityTime"] = "2017-01-23 00:00 2017-02-11 23:59"
	-- tBackpackLetter_Activity[3007936]["EventType"] = 139
	-- tBackpackLetter_Activity[3007936]["DataType"] = 16
	-- tBackpackLetter_Activity[3007936]["RewardData"] = 1
	-- tBackpackLetter_Activity[3007936]["RewardItem"] = 3007936
	-- tBackpackLetter_Activity[3007936]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3007936]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3007936]["NeedMetempsychosis"] = 0
       
	-- tBackpackLetter_Activity[3007936]["ExpTime"] = 30
	-- tBackpackLetter_Activity[3007936]["Cultivation"] = 15
	-- tBackpackLetter_Activity[3007936]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3007936]["Pathfind"]["PosX"] = 298
	-- tBackpackLetter_Activity[3007936]["Pathfind"]["PosY"] = 372
	-- tBackpackLetter_Activity[3007936]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3007936]["Pathfind"]["NpcId"] = 17430
	
-------------------------------------------------------------------------------------------
------- 2016情人节花魁赛
	-- -- 报名部分
	-- tBackpackLetter_Activity[3008548] = {}
	-- tBackpackLetter_Activity[3008548]["ActivityTime"] = "2016-02-05 00:00 2016-02-14 23:59"
	-- tBackpackLetter_Activity[3008548]["EventType"] = 141
	-- tBackpackLetter_Activity[3008548]["DataType"] = 74
	-- tBackpackLetter_Activity[3008548]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008548]["RewardItem"] = 3008548
	-- tBackpackLetter_Activity[3008548]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008548]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008548]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008548]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"] = {}
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][1] = {} -- 男角色寻路
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][1]["PosX"] = 307
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][1]["PosY"] = 244
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][1]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][1]["NpcId"] = 19083
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][2] = {} -- 女角色寻路
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][2]["PosX"] = 311
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][2]["PosY"] = 244
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][2]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008548]["Pathfind"]["Sex"][2]["NpcId"] = 19084
	-- -- 积分排位赛
	-- tBackpackLetter_Activity[3008549] = {}
	-- tBackpackLetter_Activity[3008549]["ActivityTime"] = "2016-02-22 00:00 2016-03-08 23:59"
	-- tBackpackLetter_Activity[3008549]["EventType"] = 141
	-- tBackpackLetter_Activity[3008549]["DataType"] = 75
	-- tBackpackLetter_Activity[3008549]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008549]["RewardItem"] = 3008549
	-- tBackpackLetter_Activity[3008549]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008549]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008549]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008549]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"] = {}
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][1] = {} -- 男角色寻路
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][1]["PosX"] = 307
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][1]["PosY"] = 244
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][1]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][1]["NpcId"] = 19085
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][2] = {} -- 女角色寻路
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][2]["PosX"] = 311
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][2]["PosY"] = 244
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][2]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008549]["Pathfind"]["Sex"][2]["NpcId"] = 19086

	-- -- 积分排位赛
	-- tBackpackLetter_Activity[3008550] = {}
	-- tBackpackLetter_Activity[3008550]["ActivityTime"] = "2016-03-14 00:00 2016-03-17 23:59"
	-- tBackpackLetter_Activity[3008550]["EventType"] = 141
	-- tBackpackLetter_Activity[3008550]["DataType"] = 76
	-- tBackpackLetter_Activity[3008550]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008550]["RewardItem"] = 3008550
	-- tBackpackLetter_Activity[3008550]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008550]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008550]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008550]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008550]["Pathfind"]["PosX"] = 310
	-- tBackpackLetter_Activity[3008550]["Pathfind"]["PosY"] = 250
	-- tBackpackLetter_Activity[3008550]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008550]["Pathfind"]["NpcId"] = 0
	
------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]德州俱乐部宣传NPC和背包信制作.lua
--Purpose:	德州俱乐部宣传NPC和背包信制作
--Creator: 	张世超
--Created:	2016/02/01
------------------------------------------------------------------------------------
 
	-- tBackpackLetter_Activity[3005642] = {}
	-- tBackpackLetter_Activity[3005642]["ActivityTime"] = "2016-01-11 00:00 2020-01-11 23:59"
	-- tBackpackLetter_Activity[3005642]["EventType"] = 141
	-- tBackpackLetter_Activity[3005642]["DataType"] = 83
	-- tBackpackLetter_Activity[3005642]["RewardData"] = 1
	-- tBackpackLetter_Activity[3005642]["RewardItem"] = 3005642
	-- tBackpackLetter_Activity[3005642]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3005642]["NeedLevel"] = 1
	-- tBackpackLetter_Activity[3005642]["NeedMetempsychosis"] = 0 	
	
		-----------------------------------------
	--151231[英文征服][活动脚本]炼金术活动(2.1-2.7)
	-- wqn
	-- -----------------------------------------

	-- tBackpackLetter_Activity[3008345] = {}
	-- tBackpackLetter_Activity[3008345]["ActivityTime"] = "2016-02-18 00:00 2016-02-29 23:59"
	-- tBackpackLetter_Activity[3008345]["EventType"] = 141
	-- tBackpackLetter_Activity[3008345]["DataType"] = 26
	-- tBackpackLetter_Activity[3008345]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008345]["RewardItem"] = 3008345
	-- tBackpackLetter_Activity[3008345]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008345]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008345]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008345]["ExpTime"] = 30
	-- tBackpackLetter_Activity[3008345]["Cultivation"] = 15
	-- tBackpackLetter_Activity[3008345]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008345]["Pathfind"]["PosX"] = 315
	-- tBackpackLetter_Activity[3008345]["Pathfind"]["PosY"] = 241
	-- tBackpackLetter_Activity[3008345]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008345]["Pathfind"]["NpcId"] = 19030	
----------------------------------------------------------------------------------------
--Name:		151225[简体征服][活动脚本]外套仓库版本促销活动
--Creator:		林辉山
--Created:		2015/12/25
----------------------------------------------------------------------------------------


	-- 外套仓库版本促销活动
	tBackpackLetter_Activity[3008220] = {}
	-- tBackpackLetter_Activity[3008220]["ActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	tBackpackLetter_Activity[3008220]["NewActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	tBackpackLetter_Activity[3008220]["EventType"] = 141
	tBackpackLetter_Activity[3008220]["DataType"] = 24
	tBackpackLetter_Activity[3008220]["RewardData"] = 1
	tBackpackLetter_Activity[3008220]["RewardItem"] = 3008220
	tBackpackLetter_Activity[3008220]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3008220]["NeedLevel"] = 1
	tBackpackLetter_Activity[3008220]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3008220]["GlobalId"] = 51131
	tBackpackLetter_Activity[3008220]["GlobalData"] = 1
	tBackpackLetter_Activity[3008220]["GlobalPos"] = 0
-- 喵女郎之吻
	-- tBackpackLetter_Activity[3008050] = {}
	-- tBackpackLetter_Activity[3008050]["ActivityTime"] = "2016-04-14 00:00 2016-04-27 23:59"
	-- tBackpackLetter_Activity[3008050]["EventType"] = 139
	-- tBackpackLetter_Activity[3008050]["DataType"] = 46
	-- tBackpackLetter_Activity[3008050]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008050]["RewardItem"] = 3008050
	-- tBackpackLetter_Activity[3008050]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008050]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3008050]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008050]["ExpTime"] = 30
	-- tBackpackLetter_Activity[3008050]["Cultivation"] = 15
	-- tBackpackLetter_Activity[3008050]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008050]["Pathfind"]["PosX"] = 258
	-- tBackpackLetter_Activity[3008050]["Pathfind"]["PosY"] = 228
	-- tBackpackLetter_Activity[3008050]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008050]["Pathfind"]["NpcId"] = 18929
	
	
------------------------------------------------------------------------------------
--Name:	160401[英文征服][活动脚本]4月圆桌骑士录活动(4.21-5.5)
--Creator:		许乐
--Created:		2016/04/01
------------------------------------------------------------------------------------
	
	-- tBackpackLetter_Activity[3008938] = {}
	-- tBackpackLetter_Activity[3008938]["ActivityTime"] = "2016-04-21 00:00 2016-05-05 23:59"
	-- tBackpackLetter_Activity[3008938]["EventType"] = 144
	-- tBackpackLetter_Activity[3008938]["DataType"] = 10
	-- tBackpackLetter_Activity[3008938]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008938]["RewardItem"] = 3008938
	-- tBackpackLetter_Activity[3008938]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008938]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008938]["NeedMetempsychosis"] = 0
	
	------------------------------------------------------------------------------------
-- 复用2015简体周年庆劳动节活动
-- 活动时间：4月27日-5月11日
-- 修改LOG：参与记1[1]，完成记1[2]
--Creator: 	张世超
--Created:	2016/02/23
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3006048] = {}
	tBackpackLetter_Activity[3006048]["ActivityTime"] = "2018-05-10 00:00 2018-05-23 23:59"
	tBackpackLetter_Activity[3006048]["EventType"] = 133
	tBackpackLetter_Activity[3006048]["DataType"] = 68
	tBackpackLetter_Activity[3006048]["RewardData"] = 1
	tBackpackLetter_Activity[3006048]["RewardItem"] = 3006048
	tBackpackLetter_Activity[3006048]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3006048]["NeedLevel"] = 80
	tBackpackLetter_Activity[3006048]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3006048]["Cultivation"] = 30
	
	tBackpackLetter_Activity[3006048]["Pathfind"] = {}
	tBackpackLetter_Activity[3006048]["Pathfind"]["PosX"] = 317
	tBackpackLetter_Activity[3006048]["Pathfind"]["PosY"] = 494
	tBackpackLetter_Activity[3006048]["Pathfind"]["MapId"] = 1002

	
--------------------------------------------------------------------------------
---Name:160524[英文征服][活动脚本]暑期每日签到有礼
--Creator: 	林强
--Created:	2016-05-24
--------------------------------------------------------------------------------

	-- tBackpackLetter_Activity[3200474] = {}
	-- tBackpackLetter_Activity[3200474]["ActivityTime"] = "2016-06-07 00:00 2016-06-15 23:59"
	-- tBackpackLetter_Activity[3200474]["EventType"] = 145
	-- tBackpackLetter_Activity[3200474]["DataType"] = 79
	-- tBackpackLetter_Activity[3200474]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200474]["RewardItem"] = 3200474
	-- tBackpackLetter_Activity[3200474]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200474]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200474]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3200474]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200474]["Pathfind"]["PosX"] = 334
	-- tBackpackLetter_Activity[3200474]["Pathfind"]["PosY"] = 249
	-- tBackpackLetter_Activity[3200474]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200474]["Pathfind"]["NpcId"] = 19311	
	
		------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2016欧洲杯活动-促销
--Purpose:	2016欧洲杯活动-促销
--Creator: 	郑鋆
--Created:	2016/05/20
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200384] = {}
	-- tBackpackLetter_Activity[3200384]["ActivityTime"] = "2016-06-16 00:00 2016-07-16 23:59"
	-- tBackpackLetter_Activity[3200384]["EventType"] = 145
	-- tBackpackLetter_Activity[3200384]["DataType"] = 65
	-- tBackpackLetter_Activity[3200384]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200384]["RewardItem"] = 3200384
	-- tBackpackLetter_Activity[3200384]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200384]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200384]["NeedMetempsychosis"] = 0	
	
	-- tBackpackLetter_Activity[3200384]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200384]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200384]["Pathfind"]["PosX"] = 259
	-- tBackpackLetter_Activity[3200384]["Pathfind"]["PosY"] = 230
	-- tBackpackLetter_Activity[3200384]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200384]["Pathfind"]["NpcId"] = 19270

-------------------------------------------------------------------------------------------------------------
--Name:		160203[简体征服][任务脚本]镇魔塔副本
--Creator:		林辉山
--Created:		2016/02/03
-------------------------------------------------------------------------------------------------------------

	tBackpackLetter_Activity[3008726] = {}
	tBackpackLetter_Activity[3008726]["EventType"] = 142
	tBackpackLetter_Activity[3008726]["DataType"] = 0
	tBackpackLetter_Activity[3008726]["RewardData"] = 1
	tBackpackLetter_Activity[3008726]["RewardItem"] = 3008726
	tBackpackLetter_Activity[3008726]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3008726]["NeedLevel"] = 90
	tBackpackLetter_Activity[3008726]["NeedMetempsychosis"] = 0



---神兵排行版背包信
	-- tBackpackLetter_Activity[3200446] = {}
	-- tBackpackLetter_Activity[3200446]["ActivityTime"] = "2016-06-02 00:00 2016-06-15 23:59"
	-- tBackpackLetter_Activity[3200446]["EventType"] = 145
	-- tBackpackLetter_Activity[3200446]["DataType"] = 75
	-- tBackpackLetter_Activity[3200446]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200446]["RewardItem"] = 3200446
	-- tBackpackLetter_Activity[3200446]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200446]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3200446]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3200446]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200446]["Pathfind"]["PosX"] = 273
	-- tBackpackLetter_Activity[3200446]["Pathfind"]["PosY"] = 193
	-- tBackpackLetter_Activity[3200446]["Pathfind"]["MapId"] = 1036
	-- tBackpackLetter_Activity[3200446]["Cultivation"] = 15
	
	-- --神品精炼版本背包信制作（千锤百炼）
	-- tBackpackLetter_Activity[3100057] = {}
	-- tBackpackLetter_Activity[3100057]["ActivityTime"] = "2016-07-10 00:00 2016-08-03 23:59"
	-- tBackpackLetter_Activity[3100057]["EventType"] = 144
	-- tBackpackLetter_Activity[3100057]["DataType"] = 06
	-- tBackpackLetter_Activity[3100057]["RewardData"] = 1
	-- tBackpackLetter_Activity[3100057]["RewardItem"] = 3100057
	-- tBackpackLetter_Activity[3100057]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3100057]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3100057]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3100057]["GlobalId"] = 51131
	-- tBackpackLetter_Activity[3100057]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3100057]["GlobalPos"] = 4		-- 非新服 可以获得此背包信

	--上线获得星陨石尊享月卡
	-- tBackpackLetter_Activity[3200002] = {}
	-- tBackpackLetter_Activity[3200002]["ActivityTime"] = "2016-08-23 00:00 2016-09-08 23:59" --原先结束时间23号，江文说改成8号
	-- tBackpackLetter_Activity[3200002]["EventType"] = 146
	-- tBackpackLetter_Activity[3200002]["DataType"] = 47
	-- tBackpackLetter_Activity[3200002]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200002]["RewardItem"] = 3200002
	-- tBackpackLetter_Activity[3200002]["RewardAttr"] = "0 1 0 43200 1"
	
------------------------------------------------------------------------------------
--Name:		[?÷·t][???ˉ??±?]′ò1??y·????ˉ-?àí????3
--Purpose:	′ò1??y·????ˉ-?àí????3
--Creator: 	à?èe??
--Created:	2016/05/17
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200321] = {}
	-- tBackpackLetter_Activity[3200321]["ActivityTime"] = "2016-10-01 00:00 2016-10-07 23:59"
	-- tBackpackLetter_Activity[3200321]["EventType"] = 145
	-- tBackpackLetter_Activity[3200321]["DataType"] = 27
	-- tBackpackLetter_Activity[3200321]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200321]["RewardItem"] = 3200321
	-- tBackpackLetter_Activity[3200321]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200321]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3200321]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3200321]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200321]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200321]["Pathfind"]["PosX"] = 243
	-- tBackpackLetter_Activity[3200321]["Pathfind"]["PosY"] = 241
	-- tBackpackLetter_Activity[3200321]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200321]["Pathfind"]["NpcId"] = 19269

-----------------------------------------------------------------------------------------------------
--Name:		160624[英文征服][活动脚本]7月暑期促销活动
--Purpose:		7月暑期促销活动
--Creator: 	严振飞
--Created:		2016/06/24
------------------------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200600] = {}
	-- tBackpackLetter_Activity[3200600]["ActivityTime"] = "2016-07-07 00:00 2016-07-17 23:59"
	-- tBackpackLetter_Activity[3200600]["EventType"] = 146
	-- tBackpackLetter_Activity[3200600]["DataType"] = 68
	-- tBackpackLetter_Activity[3200600]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200600]["RewardItem"] = 3200600
	-- tBackpackLetter_Activity[3200600]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200600]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200600]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3200600]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200600]["Pathfind"]["PosX"] = 320
	-- tBackpackLetter_Activity[3200600]["Pathfind"]["PosY"] = 260
	-- tBackpackLetter_Activity[3200600]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200600]["Cultivation"] = 30
	
--------------------------------------------------------------------------------------------
--Name:		160617[英文征服][活动脚本]帮派异步活动(7.14-7.27)
--Creator: 	张世超
--Created:		2016/06/17
-------------------------------------------------------------------------------------------

	-- tBackpackLetter_Activity[3200540] = {}
	-- tBackpackLetter_Activity[3200540]["ActivityTime"] = "2017-03-16 00:00 2017-03-30 23:59"
	-- tBackpackLetter_Activity[3200540]["EventType"] = 146
	-- tBackpackLetter_Activity[3200540]["DataType"] = 19
	-- tBackpackLetter_Activity[3200540]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200540]["RewardItem"] = 3200540
	-- tBackpackLetter_Activity[3200540]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200540]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3200540]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3200540]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200540]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200540]["Pathfind"]["PosX"] = 222
	-- tBackpackLetter_Activity[3200540]["Pathfind"]["PosY"] = 243
	-- tBackpackLetter_Activity[3200540]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200540]["Pathfind"]["NpcId"] = 11140
	
--------------------------------------------------------------------------------
---复用 Name:160620[英文征服][活动脚本]暑期开斋签到有礼活动制作(7.19-7.31)
-- 160705[英文征服][活动脚本]8月普天同庆有礼(8.11-8.17)
--Creator: 	许乐
--Created:	2016-06-20
--------------------------------------------------------------------------------

	-- tBackpackLetter_Activity[3200554] = {}
	-- tBackpackLetter_Activity[3200554]["ActivityTime"] = "2016-08-11 00:00 2016-08-17 23:59"
	-- tBackpackLetter_Activity[3200554]["EventType"] = 146
	-- tBackpackLetter_Activity[3200554]["DataType"] = 25
	-- tBackpackLetter_Activity[3200554]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200554]["RewardItem"] = 3200554
	-- tBackpackLetter_Activity[3200554]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200554]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200554]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3200554]["GlobalId"] = 51131	
	-- tBackpackLetter_Activity[3200554]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3200554]["GlobalPos"] = 4		-- 非新服 可以获得此背包信
	
	-- tBackpackLetter_Activity[3200554]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200554]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200554]["Pathfind"]["PosX"] = 320
	-- tBackpackLetter_Activity[3200554]["Pathfind"]["PosY"] = 247
	-- tBackpackLetter_Activity[3200554]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200554]["Pathfind"]["NpcId"] = 19348	
	
------------------------------------------------------------------------------
--Name:		[征服][活动脚本]种植奥运树
--Creator: 	郑宗胜
--Created:	2016/06/03
------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200574] = {}
	-- tBackpackLetter_Activity[3200574]["ActivityTime"] = "2016-08-05 00:00 2016-08-22 23:59"
	-- tBackpackLetter_Activity[3200574]["EventType"] = 146
	-- tBackpackLetter_Activity[3200574]["DataType"] = 82
	-- tBackpackLetter_Activity[3200574]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200574]["RewardItem"] = 3200574
	-- tBackpackLetter_Activity[3200574]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200574]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200574]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3200574]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200574]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200574]["Pathfind"]["PosX"] = 292
	-- tBackpackLetter_Activity[3200574]["Pathfind"]["PosY"] = 370
	-- tBackpackLetter_Activity[3200574]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200574]["Pathfind"]["NpcId"] = 19325
	
------------------------------------------------------------------------------------
--Name：160719[英文征服][活动脚本]8月消费送星陨石(8.11-9.07)
--Creator:      陈莺
--Created:     2016/07/19
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200857] = {}
	-- tBackpackLetter_Activity[3200857]["ActivityTime"] = "2016-08-16 00:00 2016-09-12 23:59"
	-- tBackpackLetter_Activity[3200857]["EventType"] = 147
	-- tBackpackLetter_Activity[3200857]["DataType"] = 34
	-- tBackpackLetter_Activity[3200857]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200857]["RewardItem"] = 3200857
	-- tBackpackLetter_Activity[3200857]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200857]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200857]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3200857]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200857]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200857]["Pathfind"]["PosX"] = 333
	-- tBackpackLetter_Activity[3200857]["Pathfind"]["PosY"] = 249
	-- tBackpackLetter_Activity[3200857]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200857]["Pathfind"]["NpcId"] = 19401

------------------------------------------------------------------------------
--Name:		[征服][任务脚本]德州盒子礼包
--Purpose:	德州盒子礼包发放配置
--Creator: 	陈彦宏
--Created:	2016/07/20
------------------------------------------------------------------------------
		-- 德州至尊礼包 3200850
	-- tBackpackLetter_Activity[3200850] = {}
	-- tBackpackLetter_Activity[3200850]["ActivityTime"] = "2016-08-25 00:00 2016-09-30 23:59"
	-- tBackpackLetter_Activity[3200850]["EventType"] = 147
	-- tBackpackLetter_Activity[3200850]["DataType"] = 36
	-- tBackpackLetter_Activity[3200850]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200850]["RewardItem"] = 3200850
	-- tBackpackLetter_Activity[3200850]["RewardAttr"] = "0 1"
-- ------------------------------------------------------------------------------
-- --Name:		[征服][活动脚本]山中无老虎活动制作(8.25-9.07)
-- --Creator: 	许乐
-- --Created:	2016/07/25
-- ------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3008608] = {}
	-- tBackpackLetter_Activity[3008608]["ActivityTime"] = "2016-08-25 00:00 2016-09-07 23:59"
	-- tBackpackLetter_Activity[3008608]["EventType"] = 141
	-- tBackpackLetter_Activity[3008608]["DataType"] = 61
	-- tBackpackLetter_Activity[3008608]["RewardData"] = 1
	-- tBackpackLetter_Activity[3008608]["RewardItem"] = 3008608
	-- tBackpackLetter_Activity[3008608]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3008608]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3008608]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3008608]["Cultivation"] = 15
	-- tBackpackLetter_Activity[3008608]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3008608]["Pathfind"]["PosX"] = 259
	-- tBackpackLetter_Activity[3008608]["Pathfind"]["PosY"] = 229
	-- tBackpackLetter_Activity[3008608]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3008608]["Pathfind"]["NpcId"] = 19081

------------------------------------------------------------------------------
--Name:		[征服][任务脚本]战士史诗武器
--Purpose:	战士史诗武器任务制作
--Creator: 	郑宗胜
--Created:	2016/04/19
------------------------------------------------------------------------------
	tBackpackLetter_Activity[3200207] = {}
	tBackpackLetter_Activity[3200207]["EventType"] = 144
	tBackpackLetter_Activity[3200207]["DataType"] = 92
	tBackpackLetter_Activity[3200207]["RewardData"] = 1
	tBackpackLetter_Activity[3200207]["RewardItem"] = 3200207
	tBackpackLetter_Activity[3200207]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3200207]["NeedLevel"] = 40
	tBackpackLetter_Activity[3200207]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3200207]["Cultivation"] = 30
	tBackpackLetter_Activity[3200207]["Pathfind"] = {}
	tBackpackLetter_Activity[3200207]["Pathfind"]["PosX"] = 33
	tBackpackLetter_Activity[3200207]["Pathfind"]["PosY"] = 65
	tBackpackLetter_Activity[3200207]["Pathfind"]["MapId"] = 1004
	tBackpackLetter_Activity[3200207]["Pathfind"]["NpcId"] = 10001
	
	--------------------------------------------------------------------------------
---Name:	160615[简体征服][活动脚本]赠点骰子活动(7.1-7.15)
--Creator: 	陈莺
--Created:	2016-06-15
--------------------------------------------------------------------------------

	-- -- 萨隆巴斯的邀请函 3200529
	-- tBackpackLetter_Activity[3200529] = {}
	-- tBackpackLetter_Activity[3200529]["ActivityTime"] = "2016-09-08 00:00 2016-09-22 23:59"
	-- tBackpackLetter_Activity[3200529]["EventType"] = 146
	-- tBackpackLetter_Activity[3200529]["DataType"] = 57
	-- tBackpackLetter_Activity[3200529]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200529]["RewardItem"] = 3200529
	-- tBackpackLetter_Activity[3200529]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200529]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3200529]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3200529]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200529]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200529]["Pathfind"]["PosX"] = 314 --260
	-- tBackpackLetter_Activity[3200529]["Pathfind"]["PosY"] = 248 --196
	-- tBackpackLetter_Activity[3200529]["Pathfind"]["MapId"] =1002 -- 1036
	-- tBackpackLetter_Activity[3200529]["Pathfind"]["NpcId"] = 19324
	
------------------------------------------------------------------------------------
--Name:		160825[英文征服][活动脚本]9月赠品大狂欢及上线领赠点
--Creator: 	兰瑞妹
--Created:	2016/08/29
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3300467] = {}
	-- tBackpackLetter_Activity[3300467]["ActivityTime"] = "2016-09-08 00:00 2016-10-07 23:59"
	-- tBackpackLetter_Activity[3300467]["EventType"] = 148
	-- tBackpackLetter_Activity[3300467]["DataType"] = 52
	-- tBackpackLetter_Activity[3300467]["RewardData"] = 1
	-- tBackpackLetter_Activity[3300467]["RewardItem"] = 3300467
	-- tBackpackLetter_Activity[3300467]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3300467]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3300467]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3300467]["GlobalId"] = 51131
	-- tBackpackLetter_Activity[3300467]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3300467]["GlobalPos"] = 5		-- 非新服 可以获得此背包信
	

	-- tBackpackLetter_Activity[3300467]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3300467]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3300467]["Pathfind"]["PosX"] = 306
	-- tBackpackLetter_Activity[3300467]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3300467]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3300467]["Pathfind"]["NpcId"] = 19460
------------------------------------------------------------------------------------
--Name:			160913[英文征服][活动脚本]10月促销（10.13）
--Creator:		陈琳
--Created:		2016/09/13
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3300666] = {}
	-- tBackpackLetter_Activity[3300666]["ActivityTime"] = "2016-10-13 00:00 2016-10-26 23:59"
	-- tBackpackLetter_Activity[3300666]["EventType"] = 149
	-- tBackpackLetter_Activity[3300666]["DataType"] = 06
	-- tBackpackLetter_Activity[3300666]["RewardData"] = 1
	-- tBackpackLetter_Activity[3300666]["RewardItem"] = 3300666
	-- tBackpackLetter_Activity[3300666]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3300666]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3300666]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3300666]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3300666]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3300666]["Pathfind"]["PosX"] = 315
	-- tBackpackLetter_Activity[3300666]["Pathfind"]["PosY"] = 250
	-- tBackpackLetter_Activity[3300666]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3300666]["Pathfind"]["NpcId"] = 19497
	

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]10月赠品大狂欢
--Creator: 		翁清海
--Created:		2016/09/22
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3300714] = {}
	-- tBackpackLetter_Activity[3300714]["ActivityTime"] = "2016-10-13 00:00 2016-10-26 23:59"
	-- tBackpackLetter_Activity[3300714]["EventType"] = 149
	-- tBackpackLetter_Activity[3300714]["DataType"] = 79
	-- tBackpackLetter_Activity[3300714]["RewardData"] = 1
	-- tBackpackLetter_Activity[3300714]["RewardItem"] = 3300714
	-- tBackpackLetter_Activity[3300714]["RewardAttr"] = "0 1"
	
	-- tBackpackLetter_Activity[3300714]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3300714]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3300714]["Pathfind"]["PosX"] = 305--334
	-- tBackpackLetter_Activity[3300714]["Pathfind"]["PosY"] = 249--252
	-- tBackpackLetter_Activity[3300714]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3300714]["Pathfind"]["NpcId"] = 19522
	
-------------------------------------------------------------------------------------------------------------
--Name:		160803[简体征服][活动脚本]七夕外套活动
--Creator:		张磊
--Created:		2016/08/03
-------------------------------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200884] = {}
	--tBackpackLetter_Activity[3200884]["ActivityTime"] = "2016-10-18 00:00 2016-11-02 23:59"
	-- tBackpackLetter_Activity[3200884]["EventType"] = 147
	-- tBackpackLetter_Activity[3200884]["DataType"] = 80
	-- tBackpackLetter_Activity[3200884]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200884]["RewardItem"] = 3200884
	-- tBackpackLetter_Activity[3200884]["RewardAttr"] = "0 1"
	
	-- tBackpackLetter_Activity[3200884]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200884]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200884]["Pathfind"]["PosX"] = 252
	-- tBackpackLetter_Activity[3200884]["Pathfind"]["PosY"] = 225
	-- tBackpackLetter_Activity[3200884]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200884]["Pathfind"]["NpcId"] = 18996
	-- tBackpackLetter_Activity[3200884]["GlobalId"] = 51131
------------------------------------------------------------------------------------
---Name:160704[简体征服][活动脚本]怪物攻城活动制作
--Creator: 	陈莺
--Created:	2016-07-04
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3200721] = {}
	-- tBackpackLetter_Activity[3200721]["ActivityTime"] = "2016-12-01 00:00 2016-12-07 23:59"
	-- tBackpackLetter_Activity[3200721]["EventType"] = 147
	-- tBackpackLetter_Activity[3200721]["DataType"] = 06
	-- tBackpackLetter_Activity[3200721]["RewardData"] = 1
	-- tBackpackLetter_Activity[3200721]["RewardItem"] = 3200721
	-- tBackpackLetter_Activity[3200721]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3200721]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3200721]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3200721]["GlobalId"] = 51354
	-- tBackpackLetter_Activity[3200721]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3200721]["GlobalPos"] = 0

	-- tBackpackLetter_Activity[3200721]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3200721]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3200721]["Pathfind"]["PosX"] = 307
	-- tBackpackLetter_Activity[3200721]["Pathfind"]["PosY"] = 391
	-- tBackpackLetter_Activity[3200721]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3200721]["Pathfind"]["NpcId"] = 19371
------------------------------------------------------------------------------------
--Name:		161117[英文征服][活动脚本]12月新服福利活动(12.15-1.11)
--Creator: 	许乐
--Created:	2016/11/17
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3301541] = {}
	-- tBackpackLetter_Activity[3301541]["ActivityTime"] = "2017-01-12 00:00 2017-02-11 23:59"
	-- tBackpackLetter_Activity[3301541]["EventType"] = 152
	-- tBackpackLetter_Activity[3301541]["DataType"] = 85
	-- tBackpackLetter_Activity[3301541]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301541]["RewardItem"] = 3301541
	-- tBackpackLetter_Activity[3301541]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301541]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3301541]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3301541]["GlobalId"] = 51418
	-- tBackpackLetter_Activity[3301541]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3301541]["GlobalPos"] = 0		-- 新服 可以获得此背包信
	-- tBackpackLetter_Activity[3301541]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3301541]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3301541]["Pathfind"]["PosX"] = 306
	-- tBackpackLetter_Activity[3301541]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3301541]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3301541]["Pathfind"]["NpcId"] = 19991
------------------------------------------------------------------------------
--Name:		[征服][活动脚本]铁扇门预热活动
--Purpose:	铁扇门预热活动
--Creator: 	严振飞
--Created:	2016/12/08
------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3301726] = {}
	-- tBackpackLetter_Activity[3301726]["ActivityTime"] = "2017-01-05 00:00 2017-01-11 23:59"
	-- tBackpackLetter_Activity[3301726]["EventType"] = 154
	-- tBackpackLetter_Activity[3301726]["DataType"] = 20
	-- tBackpackLetter_Activity[3301726]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301726]["RewardItem"] = 3301726
	-- tBackpackLetter_Activity[3301726]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301726]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3301726]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3301726]["Pathfind"]["PosX"] = 212
	-- tBackpackLetter_Activity[3301726]["Pathfind"]["PosY"] = 193
	-- tBackpackLetter_Activity[3301726]["Pathfind"]["MapId"] = 1036
	-- tBackpackLetter_Activity[3301726]["Pathfind"]["NpcId"] = 15745
------------------------------------------------------------------------------------
--Name：161208[英文征服][活动脚本]玩铁扇门有好礼(1.12)
--Creator:      陈彦宏
--Created:     2016/12/13
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3301789] = {}
	-- tBackpackLetter_Activity[3301789]["ActivityTime"] = "2017-1-12 00:00 2017-1-18 23:59"
	-- tBackpackLetter_Activity[3301789]["EventType"] = 154
	-- tBackpackLetter_Activity[3301789]["DataType"] = 00
	-- tBackpackLetter_Activity[3301789]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301789]["RewardItem"] = 3301789
	-- tBackpackLetter_Activity[3301789]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301789]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3301789]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3301789]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3301789]["Pathfind"]["PosX"] = 310
	-- tBackpackLetter_Activity[3301789]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3301789]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3301789]["Pathfind"]["NpcId"] = 20040
	-- tBackpackLetter_Activity[3301789]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3301789]["MsgBox"] = 1
	
	
------------------------------------------------------------------------------------
--Name:		161209[英文征服][活动脚本]1月赠品大狂欢(1.12-1.25)
--Creator: 	兰瑞妹
--Created:	2016/12/13
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3301824] = {}
	-- tBackpackLetter_Activity[3301824]["ActivityTime"] = "2017-01-12 00:00 2017-01-25 23:59"
	-- tBackpackLetter_Activity[3301824]["EventType"] = 154
	-- tBackpackLetter_Activity[3301824]["DataType"] = 04
	-- tBackpackLetter_Activity[3301824]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301824]["RewardItem"] = 3301824
	-- tBackpackLetter_Activity[3301824]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301824]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3301824]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3301824]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3301824]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3301824]["Pathfind"]["PosX"] = 332
	-- tBackpackLetter_Activity[3301824]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3301824]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3301824]["Pathfind"]["NpcId"] = 20173
	
	--------------------------------------------------------------------------------
---Name:161201[英文征服][活动脚本]PC玩家玩移动新服送好礼
--Creator: 		杨晓晓
--Created:		2016-12-01
------------------------------------------------------------------------------------------

	--移动端新服邀请卡
	tBackpackLetter_Activity[3301701] = {}
	tBackpackLetter_Activity[3301701]["ActivityTime"] = tActivityTime["GiftGiving"]["ActivityTime"]
	tBackpackLetter_Activity[3301701]["EventType"] = 153
	tBackpackLetter_Activity[3301701]["DataType"] = 53
	tBackpackLetter_Activity[3301701]["RewardData"] = 1
	tBackpackLetter_Activity[3301701]["RewardItem"] = 3301701
	tBackpackLetter_Activity[3301701]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3301701]["Pathfind"] = {}
	tBackpackLetter_Activity[3301701]["Pathfind"]["NpcId"] = 20017
	
	--移动端新服邀请卡（激情服）
	tBackpackLetter_Activity_NoGift[3301701] = {}
	tBackpackLetter_Activity_NoGift[3301701]["ActivityTime"] = tActivityTime["GiftGiving"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3301701]["EventType"] = 153
	tBackpackLetter_Activity_NoGift[3301701]["DataType"] = 53
	tBackpackLetter_Activity_NoGift[3301701]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3301701]["RewardItem"] = 3301701
	tBackpackLetter_Activity_NoGift[3301701]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3301701]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3301701]["Pathfind"]["NpcId"] = 20017
	
	
------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]爱神的巧克力
--Creator: 		翁清海
--Created:		2016/12/09
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3301655] = {}
	-- tBackpackLetter_Activity[3301655]["ActivityTime"] = "2017-02-12 00:00 2017-02-18 23:59"
	-- tBackpackLetter_Activity[3301655]["EventType"] = 153
	-- tBackpackLetter_Activity[3301655]["DataType"] = 44
	-- tBackpackLetter_Activity[3301655]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301655]["RewardItem"] = 3301655
	-- tBackpackLetter_Activity[3301655]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301655]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3301655]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3301655]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3301655]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3301655]["Pathfind"]["PosX"] = 291
	-- tBackpackLetter_Activity[3301655]["Pathfind"]["PosY"] = 369
	-- tBackpackLetter_Activity[3301655]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3301655]["Pathfind"]["NpcId"] = 20019

------------------------------------------------------------------------------------
--Name:		170119[简体征服][活动脚本]2017年情人节花魁赛
--Creator:		陈磊
--Created:		2017/01/19
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3302189] = {}
	-- tBackpackLetter_Activity[3302189]["ActivityTime"] = "2017-02-16 00:00 2017-02-22 23:59"
	-- tBackpackLetter_Activity[3302189]["EventType"] = 155
	-- tBackpackLetter_Activity[3302189]["DataType"] = 95
	-- tBackpackLetter_Activity[3302189]["RewardData"] = 1
	-- tBackpackLetter_Activity[3302189]["RewardItem"] = 3302189
	-- tBackpackLetter_Activity[3302189]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3302189]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3302189]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3302189]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3302189]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"] = {}
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][2] = {}
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][2]["PosX"] = 314
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][2]["PosY"] = 247
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][2]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][2]["NpcId"] = 20333

	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][1] = {}
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][1]["PosX"] = 324
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][1]["PosY"] = 247
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][1]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302189]["Pathfind"]["Sex"][1]["NpcId"] = 20334
	
	-- tBackpackLetter_Activity[3302190] = {}
	-- tBackpackLetter_Activity[3302190]["ActivityTime"] = "2017-02-23 00:00 2017-03-10 23:59"
	-- tBackpackLetter_Activity[3302190]["EventType"] = 155
	-- tBackpackLetter_Activity[3302190]["DataType"] = 96
	-- tBackpackLetter_Activity[3302190]["RewardData"] = 1
	-- tBackpackLetter_Activity[3302190]["RewardItem"] = 3302190
	-- tBackpackLetter_Activity[3302190]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3302190]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3302190]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3302190]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3302190]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"] = {}
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][2] = {}
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][2]["PosX"] = 314
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][2]["PosY"] = 247
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][2]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][2]["NpcId"] = 20333

	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][1] = {}
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][1]["PosX"] = 324
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][1]["PosY"] = 247
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][1]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302190]["Pathfind"]["Sex"][1]["NpcId"] = 20334	
------------------------------------------------------------------------------------
--Name:		170206[英文征服][活动脚本]2月练气狂欢活动(2.23-3.01)
--Creator: 	吴文鑫 
--Created:	2017/02/08
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3302244] = {}
	tBackpackLetter_Activity[3302244]["ActivityTime"] = tActivityTime["StrengthWheelGambling"]["ActivityTime"]
	tBackpackLetter_Activity[3302244]["EventType"] = 156
	tBackpackLetter_Activity[3302244]["DataType"] = 07
	tBackpackLetter_Activity[3302244]["RewardData"] = 1
	tBackpackLetter_Activity[3302244]["RewardItem"] = 3302244
	tBackpackLetter_Activity[3302244]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3302244]["NeedLevel"] = 80
	tBackpackLetter_Activity[3302244]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity[3302244]["Cultivation"] = 30
	tBackpackLetter_Activity[3302244]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3302244]["Pathfind"]["PosX"] = 340
	-- tBackpackLetter_Activity[3302244]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3302244]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3302244]["Pathfind"]["NpcId"] = 19032
	
------------------------------------------------------------------------------------
--Name:	170210[英文征服][活动脚本]3月帮派成员上线有好礼活动(3.02-3.15)
--Purpose:	促帮派活跃，刺激玩家加入帮派
--Creator: 姚曦宇
--Created:	2017/02/10
------------------------------------------------------------------------------------

	-- 帮派成员豪享礼盒
	-- tBackpackLetter_Activity[3302253] = {}
	-- tBackpackLetter_Activity[3302253]["ActivityTime"] = "2017-03-02 00:00 2017-03-15 23:59"
	-- tBackpackLetter_Activity[3302253]["EventType"] = 157
	-- tBackpackLetter_Activity[3302253]["DataType"] = 01
	-- tBackpackLetter_Activity[3302253]["RewardData"] = 1
	-- tBackpackLetter_Activity[3302253]["RewardItem"] = 3302253
	-- tBackpackLetter_Activity[3302253]["RewardAttr"] = "0 1 0 43200 1"
	-- tBackpackLetter_Activity[3302253]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3302253]["NeedMetempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]3月赠品狂欢
--Creator: 		翁清海
--Created:		2017/02/20
------------------------------------------------------------------------------------

	-- tBackpackLetter_Activity[3301162] = {}
	-- tBackpackLetter_Activity[3301162]["ActivityTime"] = "2017-03-09 00:00 2017-03-22 23:59"
	-- tBackpackLetter_Activity[3301162]["EventType"] = 150
	-- tBackpackLetter_Activity[3301162]["DataType"] = 86
	-- tBackpackLetter_Activity[3301162]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301162]["RewardItem"] = 3301162
	-- tBackpackLetter_Activity[3301162]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301162]["GlobalId"] = 51384
	-- tBackpackLetter_Activity[3301162]["GlobalPos"] = 5

------------------------------------------------------------------------------------
--Name:			170216[英文征服][活动脚本]3月帮派建设线上活动
--Purpose:		3月帮派建设线上活动
--Creator:		陈琳
--Created:		2017/02/16
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3302515] = {}
	-- tBackpackLetter_Activity[3302515]["ActivityTime"] = "2017-03-20 00:00 2017-04-10 23:59"
	-- tBackpackLetter_Activity[3302515]["EventType"] = 156
	-- tBackpackLetter_Activity[3302515]["DataType"] = 87
	-- tBackpackLetter_Activity[3302515]["RewardData"] = 1
	-- tBackpackLetter_Activity[3302515]["RewardItem"] = 3302515
	-- tBackpackLetter_Activity[3302515]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3302515]["NeedLevel"] = 110
	-- tBackpackLetter_Activity[3302515]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3302515]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3302515]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3302515]["Pathfind"]["PosX"] = 345
	-- tBackpackLetter_Activity[3302515]["Pathfind"]["PosY"] = 241
	-- tBackpackLetter_Activity[3302515]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302515]["Pathfind"]["NpcId"] = 20377
------------------------------------------------------------------------------------
--Name：170106[简体征服][活动脚本]年兽活动的物品产出
--Creator: 郑宗胜
--Created:2017/01/06
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3302113] = {}
	--活动时间
	-- tBackpackLetter_Activity[3302113]["ActivityTime"] = "2017-04-06 00:00 2017-04-15 23:59"
	-- tBackpackLetter_Activity[3302113]["EventType"] = 154
	-- tBackpackLetter_Activity[3302113]["DataType"] = 48
	-- tBackpackLetter_Activity[3302113]["RewardData"] = 1
	-- tBackpackLetter_Activity[3302113]["RewardItem"] = 3302113
	-- tBackpackLetter_Activity[3302113]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3302113]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3302113]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3302113]["Pathfind"]["NpcId"] = 20223
	-- tBackpackLetter_Activity[3302113]["Pathfind"]["PosX"] = 262
	-- tBackpackLetter_Activity[3302113]["Pathfind"]["PosY"] = 228
	-- tBackpackLetter_Activity[3302113]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302113]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3302113]["NeedMetempsychosis"] = 0
--------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name:			170206[英文征服][活动脚本]2017复活节小活动制作
--Purpose:		兔兔合家送彩蛋
--Creator:		陈琳
--Created:		2017/02/06
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3302220] = {}
	tBackpackLetter_Activity[3302220]["ActivityTime"] = tActivityTime["Easter"]["ActivityTime"]
	tBackpackLetter_Activity[3302220]["EventType"] = 154
	tBackpackLetter_Activity[3302220]["DataType"] = 92
	tBackpackLetter_Activity[3302220]["RewardData"] = 1
	tBackpackLetter_Activity[3302220]["RewardItem"] = 3302220
	tBackpackLetter_Activity[3302220]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3302220]["NeedLevel"] = 80
	tBackpackLetter_Activity[3302220]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3302220]["Cultivation"] = 30
	tBackpackLetter_Activity[3302220]["Pathfind"] = {}
	tBackpackLetter_Activity[3302220]["Pathfind"]["NpcId"] = 20339

------------------------------------------------------------------------------------
--Name:		170217[简体征服][活动脚本]3月份骑宠活动
--Creator: 	严振飞
--Created:	2017/2/17
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3302327] = {}
	-- tBackpackLetter_Activity[3302327]["ActivityTime"] = "2017-04-18 00:00 2017-05-01 23:59"
	-- tBackpackLetter_Activity[3302327]["EventType"] = 157
	-- tBackpackLetter_Activity[3302327]["DataType"] = 27
	-- tBackpackLetter_Activity[3302327]["RewardData"] = 1
	-- tBackpackLetter_Activity[3302327]["RewardItem"] = 3302327
	-- tBackpackLetter_Activity[3302327]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3302327]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3302327]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3302327]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3302327]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3302327]["Pathfind"]["PosX"] = 242
	-- tBackpackLetter_Activity[3302327]["Pathfind"]["PosY"] = 223
	-- tBackpackLetter_Activity[3302327]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3302327]["Pathfind"]["NpcId"] = 20359
	
----------------------------------------------------------------------------
--Name:		170413[英文征服][活动脚本]神秘商人整点抢购活动(5.5-5.7)
--Creator: 	姚曦宇
--Created:	2017/04/13
-- ----------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303147] = {}
	-- tBackpackLetter_Activity[3303147]["ActivityTime"] = "2017-05-05 00:00 2017-05-07 22:19"
	-- tBackpackLetter_Activity[3303147]["EventType"] = 158
	-- tBackpackLetter_Activity[3303147]["DataType"] = 81
	-- tBackpackLetter_Activity[3303147]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303147]["RewardItem"] = 3303147
	-- tBackpackLetter_Activity[3303147]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303147]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3303147]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3303147]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303147]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303147]["Pathfind"]["PosX"] = 314
	-- tBackpackLetter_Activity[3303147]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3303147]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3303147]["Pathfind"]["NpcId"] = 11360
	
	-- tBackpackLetter_Activity[3303147]["GlobalId"] = 51507
	-- tBackpackLetter_Activity[3303147]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3303147]["GlobalPos"] = 0		-- 非新服 可以获得此背包信

------------------------------------------------------------------------------------
--Name  170420[简体征服][活动脚本]周年庆全服福利活动(5.5-5.15)
--Creator:  陈磊
--Created:  2017/01/11
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303262] = {}
	-- --活动时间
	-- tBackpackLetter_Activity[3303262]["ActivityTime"] = "2017-05-25 00:00 2017-06-04 23:59"
	-- tBackpackLetter_Activity[3303262]["EventType"] = 159
	-- tBackpackLetter_Activity[3303262]["DataType"] = 67
	-- tBackpackLetter_Activity[3303262]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303262]["RewardItem"] = 3303262
	-- tBackpackLetter_Activity[3303262]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303262]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303262]["NeedLevel"] = 50
	-- tBackpackLetter_Activity[3303262]["NeedMetempsychosis"] = 0
	-- -- 寻路
	-- tBackpackLetter_Activity[3303262]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303262]["Pathfind"]["NpcId"] = 20532
	-- tBackpackLetter_Activity[3303262]["Pathfind"]["PosX"] = 308
	-- tBackpackLetter_Activity[3303262]["Pathfind"]["PosY"] = 244
	-- tBackpackLetter_Activity[3303262]["Pathfind"]["MapId"] = 1002	
	
	------------------------------------------------------------------------------------
--Name:			170516[英文征服][活动脚本]升级福利活动
--Creator:		陈磊
--Created:		2017/05/16
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303415] = {}
	-- tBackpackLetter_Activity[3303415]["ActivityTime"] = "2017-05-25 00:00 2017-06-25 23:59"
	-- tBackpackLetter_Activity[3303415]["EventType"] = 159
	-- tBackpackLetter_Activity[3303415]["DataType"] = 90
	-- tBackpackLetter_Activity[3303415]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303415]["RewardItem"] = 3303415
	-- tBackpackLetter_Activity[3303415]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303415]["NeedLevel"] = 100
	-- tBackpackLetter_Activity[3303415]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3303415]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303415]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303415]["Pathfind"]["PosX"] = 316
	-- tBackpackLetter_Activity[3303415]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3303415]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3303415]["Pathfind"]["NpcId"] = 20649
------------------------------------------------------------------------------------
--Name  170511[英文征服][活动脚本]6月斋月大促活动
--Creator:  陈磊
--Created:  2017/05/12
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303406] = {}
	-- --活动时间
	-- tBackpackLetter_Activity[3303406]["ActivityTime"] = "2017-06-01 00:00 2017-06-22 23:59"
	-- tBackpackLetter_Activity[3303406]["EventType"] = 159
	-- tBackpackLetter_Activity[3303406]["DataType"] = 81
	-- tBackpackLetter_Activity[3303406]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303406]["RewardItem"] = 3303406
	-- tBackpackLetter_Activity[3303406]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303406]["Cultivation"] = 30
	-- -- 寻路                                   
	-- tBackpackLetter_Activity[3303406]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303406]["Pathfind"]["NpcId"] = 20646
	-- tBackpackLetter_Activity[3303406]["Pathfind"]["PosX"] = 335
	-- tBackpackLetter_Activity[3303406]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3303406]["Pathfind"]["MapId"] = 1002
--儿童节
	-- tBackpackLetter_Activity[3006120] = {}
	-- tBackpackLetter_Activity[3006120]["ActivityTime"] = "2017-06-01 00:00 2017-06-07 23:59"
	-- tBackpackLetter_Activity[3006120]["EventType"] = 133
	-- tBackpackLetter_Activity[3006120]["DataType"] = 76
	-- tBackpackLetter_Activity[3006120]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006120]["RewardItem"] = 3006120
	-- tBackpackLetter_Activity[3006120]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006120]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3006120]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3006120]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3006120]["Pathfind"]["PosX"] = 285
	-- tBackpackLetter_Activity[3006120]["Pathfind"]["PosY"] = 370
	-- tBackpackLetter_Activity[3006120]["Pathfind"]["MapId"] = 1002
	
------------------------------------------------------------------------------------
---Name:170329[简体征服][活动脚本]NBA活动制作--物品部分
--Creator: 	翁增锐
--Created:	2017-03-29
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3302800] = {}
	tBackpackLetter_Activity[3302800]["ActivityTime"] = tActivityTime["ActivityOfNBA"]["Now_Time"]
	tBackpackLetter_Activity[3302800]["EventType"] = 158
	tBackpackLetter_Activity[3302800]["DataType"] = 28
	tBackpackLetter_Activity[3302800]["RewardData"] = 1
	tBackpackLetter_Activity[3302800]["RewardItem"] = 3302800
	tBackpackLetter_Activity[3302800]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3302800]["NeedLevel"] = 80
	tBackpackLetter_Activity[3302800]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3302800]["Cultivation"] = 30
	tBackpackLetter_Activity[3302800]["Pathfind"] = {}
	tBackpackLetter_Activity[3302800]["Pathfind"]["PosX"] = 321
	tBackpackLetter_Activity[3302800]["Pathfind"]["PosY"] = 445
	tBackpackLetter_Activity[3302800]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3302800]["Pathfind"]["NpcId"] = 20448
	-- tBackpackLetter_Activity[3302800]["Web"] = "http://co.99.com/guide/event/2018/dreammanager1/"

	--------------------------------------------------------------------------------
--Name:			170504[英文征服][活动脚本]斋月感恩捐献祈福活动
--Creator:		陈琳
--Created:		2017/05/04
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303375] = {}
	-- tBackpackLetter_Activity[3303375]["ActivityTime"] = tActivityTime["RamadanActivity"]["ActivityTime"]
	-- tBackpackLetter_Activity[3303375]["EventType"] = 159
	-- tBackpackLetter_Activity[3303375]["DataType"] = 72
	-- tBackpackLetter_Activity[3303375]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303375]["RewardItem"] = 3303375
	-- tBackpackLetter_Activity[3303375]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303375]["NeedLevel"] = 110
	-- tBackpackLetter_Activity[3303375]["NeedMetempsychosis"] = 1
	
	-- tBackpackLetter_Activity[3303375]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303375]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303375]["Pathfind"]["PosX"] = 355
	-- tBackpackLetter_Activity[3303375]["Pathfind"]["PosY"] = 427
	-- tBackpackLetter_Activity[3303375]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3303375]["Pathfind"]["NpcId"] = 20637
	
------------------------------------------------------------------------------------
--Name:		170607[英文征服][活动脚本]制作开斋金币周活动(6.26-7.10)
--Creator: 	兰瑞妹
--Created:	2017/06/07
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303528] = {}
	-- tBackpackLetter_Activity[3303528]["ActivityTime"] = "2017-06-29 00:00 2017-07-13 23:59"
	-- tBackpackLetter_Activity[3303528]["EventType"] = 161
	-- tBackpackLetter_Activity[3303528]["DataType"] = 86
	-- tBackpackLetter_Activity[3303528]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303528]["RewardItem"] = 3303528
	-- tBackpackLetter_Activity[3303528]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303528]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3303528]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3303528]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303528]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303528]["Pathfind"]["PosX"] = 312
	-- tBackpackLetter_Activity[3303528]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3303528]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3303528]["Pathfind"]["NpcId"] = 20833
	

----------------------------------------------------------------------
-- Name:		[征服][任务脚本]跨服组队PK赛.lua
-- Purpose:	跨服组队PK赛
-- Creator: 	郑鋆
-- Created:	2017/04/27
----------------------------------------------------------------------
-- Modified：吴燕柚，2017/10/23,11月跨服组队PK赛制作
----------------------------------------------------------------------
	tItemFace[3303372] = 685
	tBackpackLetter_Activity[3303372] = {}
	-- 活动时间
	tBackpackLetter_Activity[3303372]["ActivityTime"] = tActivityTime["ServerTeamPk"]["Ticket"]
	tBackpackLetter_Activity[3303372]["EventType"] = 167
	tBackpackLetter_Activity[3303372]["DataType"] = 36
	tBackpackLetter_Activity[3303372]["RewardData"] = 1
	tBackpackLetter_Activity[3303372]["RewardItem"] = 3303372
	tBackpackLetter_Activity[3303372]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3303372]["Cultivation"] = 30
	tBackpackLetter_Activity[3303372]["NeedLevel"] = 110
	tBackpackLetter_Activity[3303372]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3303372]["Pathfind"] = {}
	tBackpackLetter_Activity[3303372]["Pathfind"]["NpcId"] = 20539	
	-- tBackpackLetter_Activity[3303372]["GlobalId"] = 51901
	-- tBackpackLetter_Activity[3303372]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3303372]["GlobalPos"] = 0


----------------------------------------------------------------------------
--Name:		[征服][任务脚本]夏日大作战.lua
--Purpose:	夏日大作战
--Creator: 	郑鋆
--Created:	2017/06/21
----------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3303859] = {}
	--活动时间
	-- tBackpackLetter_Activity[3303859]["ActivityTime"] = tActivityTime["Summer"]["BigBattle"]
	-- tBackpackLetter_Activity[3303859]["EventType"] = 162
	-- tBackpackLetter_Activity[3303859]["DataType"] = 72
	-- tBackpackLetter_Activity[3303859]["RewardData"] = 1
	-- tBackpackLetter_Activity[3303859]["RewardItem"] = 3303859
	-- tBackpackLetter_Activity[3303859]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303859]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303859]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3303859]["NeedMetempsychosis"] = 0
	-- 寻路
	-- tBackpackLetter_Activity[3303859]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303859]["Pathfind"]["NpcId"] = 21900
	
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]蜀山大阵
--Creator:		翁清海
--Created:		2017/03/01
------------------------------------------------------------------------------------

	-- tBackpackLetter_Activity[3301423] = {}
	-- tBackpackLetter_Activity[3301423]["ActivityTime"] = "2017-08-03 00:00 2017-08-16 23:59"
	-- tBackpackLetter_Activity[3301423]["EventType"] = 152
	-- tBackpackLetter_Activity[3301423]["DataType"] = 37
	-- tBackpackLetter_Activity[3301423]["RewardData"] = 1
	-- tBackpackLetter_Activity[3301423]["RewardItem"] = 3301423
	-- tBackpackLetter_Activity[3301423]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3301423]["NeedLevel"] = 120
	-- tBackpackLetter_Activity[3301423]["NeedMetempsychosis"] = 2
	
	-- tBackpackLetter_Activity[3301423]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3301423]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3301423]["Pathfind"]["PosX"] = 334
	-- tBackpackLetter_Activity[3301423]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3301423]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3301423]["Pathfind"]["NpcId"] = 19977
	
------------------------------------------------------------------------------------
--Name:			170711[英文征服][活动脚本]8月赠品大促（8.3）
--Creator:		陈琳
--Created:		2017/07/11
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3304013] = {}
	-- tBackpackLetter_Activity[3304013]["ActivityTime"] = "2017-08-03 00:00 2017-08-16 23:59"
	-- tBackpackLetter_Activity[3304013]["EventType"] = 163
	-- tBackpackLetter_Activity[3304013]["DataType"] = 16
	-- tBackpackLetter_Activity[3304013]["RewardData"] = 1
	-- tBackpackLetter_Activity[3304013]["RewardItem"] = 3304013
	-- tBackpackLetter_Activity[3304013]["RewardAttr"] = "0 1"
	
	-- tBackpackLetter_Activity[3304013]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3304013]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3304013]["Pathfind"]["PosX"] = 336
	-- tBackpackLetter_Activity[3304013]["Pathfind"]["PosY"] = 247
	-- tBackpackLetter_Activity[3304013]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3304013]["Pathfind"]["NpcId"] = 21971
	
------------------------------------------------------------------------------------
--Name:		170712[英文征服][活动脚本]8月帮派评选活动(8.8-8.22)
--Creator: 	兰瑞妹
--Created:	2017/07/18
------------------------------------------------------------------------------------
--3304241,'明星帮派大赛邀请函'
	-- tBackpackLetter_Activity[3304241] = {}
	-- tBackpackLetter_Activity[3304241]["ActivityTime"] = "2017-08-08 00:00 2017-08-22 23:59"
	-- tBackpackLetter_Activity[3304241]["EventType"] = 164
	-- tBackpackLetter_Activity[3304241]["DataType"] = 14
	-- tBackpackLetter_Activity[3304241]["RewardData"] = 1
	-- tBackpackLetter_Activity[3304241]["RewardItem"] = 3304241
	-- tBackpackLetter_Activity[3304241]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3304241]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3304241]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3304241]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3304241]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3304241]["Pathfind"]["PosX"] = 315
	-- tBackpackLetter_Activity[3304241]["Pathfind"]["PosY"] = 248
	-- tBackpackLetter_Activity[3304241]["Pathfind"]["MapId"] = 1002
	-- tBackpackLetter_Activity[3304241]["Pathfind"]["NpcId"] = 21977
	
	
-- ####################################################################################
-- ###170526[英文征服][活动脚本]2017宰牲节活动(9.1-9.7)
-- ###SQL BY:兰瑞妹
-- ###DATE：2017-05-26
-- ####################################################################################
	-- tBackpackLetter_Activity[3006914] = {}
	-- tBackpackLetter_Activity[3006914]["ActivityTime"] = "2017-09-02 00:00 2017-09-08 23:59"
	-- tBackpackLetter_Activity[3006914]["EventType"] = 127
	-- tBackpackLetter_Activity[3006914]["DataType"] = 94
	-- tBackpackLetter_Activity[3006914]["RewardData"] = 1
	-- tBackpackLetter_Activity[3006914]["RewardItem"] = 3006914
	-- tBackpackLetter_Activity[3006914]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3006914]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3006914]["NeedMetempsychosis"] = 0
	
------------------------------------------------------------------------------------
--Name:			170821[英文征服][活动脚本]家园赌桌众筹活动需求
--Creator:		陈琳
--Created:		2017/08/21
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3304806] = {}
	tBackpackLetter_Activity[3304806]["ActivityTime"] = tActivityTime["Crowdfunding"]["ActivityTime"]
	tBackpackLetter_Activity[3304806]["EventType"] = 165
	tBackpackLetter_Activity[3304806]["DataType"] = 06
	tBackpackLetter_Activity[3304806]["RewardData"] = 1
	tBackpackLetter_Activity[3304806]["RewardItem"] = 3304806
	tBackpackLetter_Activity[3304806]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3304806]["NeedLevel"] = 80
	tBackpackLetter_Activity[3304806]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity[3304806]["Cultivation"] = 30
	tBackpackLetter_Activity[3304806]["Pathfind"] = {}
	tBackpackLetter_Activity[3304806]["Pathfind"]["PosX"] = 198
	tBackpackLetter_Activity[3304806]["Pathfind"]["PosY"] = 99
	tBackpackLetter_Activity[3304806]["Pathfind"]["MapId"] = 1036
	tBackpackLetter_Activity[3304806]["Pathfind"]["NpcId"] = 22038

------------------------------------------------------------------------------------
--Name:		170814[英文征服][活动脚本]9月版本前置quiz任务
--Creator: 	姚曦宇
--Created:	2017/08/14
------------------------------------------------------------------------------------
--3304241,'明星帮派大赛邀请函'
	tBackpackLetter_Activity[3304762] = {}
	tBackpackLetter_Activity[3304762]["ActivityTime"] = "2017-09-21 00:00 2017-10-16 23:59"
	tBackpackLetter_Activity[3304762]["EventType"] = 164
	tBackpackLetter_Activity[3304762]["DataType"] = 98
	tBackpackLetter_Activity[3304762]["RewardData"] = 1
	tBackpackLetter_Activity[3304762]["RewardItem"] = 3304762
	tBackpackLetter_Activity[3304762]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3304762]["NeedLevel"] = 80
	tBackpackLetter_Activity[3304762]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity[3304762]["Cultivation"] = 30
	tBackpackLetter_Activity[3304762]["Pathfind"] = {}
	tBackpackLetter_Activity[3304762]["Pathfind"]["PosX"] = 340
	tBackpackLetter_Activity[3304762]["Pathfind"]["PosY"] = 241
	tBackpackLetter_Activity[3304762]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3304762]["Pathfind"]["NpcId"] = 21123
	
------------------------------------------------------------------------------------
--Name：            170823[英文征服][活动脚本]精炼提升免费福利包
--Creator:      杨艳
--Created:     2017/08/23
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3304813] = {}
	tBackpackLetter_Activity[3304813]["ActivityTime"] = "2017-10-17 00:00 2017-11-15 23:59"
	tBackpackLetter_Activity[3304813]["EventType"] = 167
	tBackpackLetter_Activity[3304813]["DataType"] = 66
	tBackpackLetter_Activity[3304813]["RewardData"] = 1
	tBackpackLetter_Activity[3304813]["RewardItem"] = 3304813
	tBackpackLetter_Activity[3304813]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3304813]["NeedLevel"] = 1
	tBackpackLetter_Activity[3304813]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3304814] = {}
	tBackpackLetter_Activity[3304814]["ActivityTime"] = "2017-10-17 00:00 2017-11-15 23:59"
	tBackpackLetter_Activity[3304814]["EventType"] = 167
	tBackpackLetter_Activity[3304814]["DataType"] = 67
	tBackpackLetter_Activity[3304814]["RewardData"] = 1
	tBackpackLetter_Activity[3304814]["RewardItem"] = 3304814
	tBackpackLetter_Activity[3304814]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3304814]["NeedLevel"] = 1
	tBackpackLetter_Activity[3304814]["NeedMetempsychosis"] = 0	
	--------------------------------------------------------------------------------
--Name:		170605[简体征服][任务脚本]神龙岛打宝区制作
--Creator: 	许乐
--Created:		2017/06/05
--------------------------------------------------------------------------------
	-- 3303476  神谕令
	tBackpackLetter_Activity[3303476] = {}
	tBackpackLetter_Activity[3303476]["EventType"] = 161
	tBackpackLetter_Activity[3303476]["DataType"] = 56
	tBackpackLetter_Activity[3303476]["RewardData"] = 1
	tBackpackLetter_Activity[3303476]["RewardItem"] = 3303476
	tBackpackLetter_Activity[3303476]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3303476]["NeedLevel"] = 120
	tBackpackLetter_Activity[3303476]["NeedMetempsychosis"] = 2
	
	-- tBackpackLetter_Activity[3303476]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3303476]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3303476]["Pathfind"]["PosX"] = 453
	-- tBackpackLetter_Activity[3303476]["Pathfind"]["PosY"] = 480
	-- tBackpackLetter_Activity[3303476]["Pathfind"]["MapId"] = 10137
	-- tBackpackLetter_Activity[3303476]["Pathfind"]["NpcId"] = 20823
	
--------------------------------------------------------------------------------
--Name:		171012[英文征服][活动脚本]德州入场自动寻路到入场npc
--Creator: 	黄啸
--Created:		2017/10/12
--------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305684] = {}
	tBackpackLetter_Activity[3305684]["EventType"] = 168
	tBackpackLetter_Activity[3305684]["DataType"] = 06
	tBackpackLetter_Activity[3305684]["RewardData"] = 1
	tBackpackLetter_Activity[3305684]["RewardItem"] = 3305684
	tBackpackLetter_Activity[3305684]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305684]["NeedLevel"] = 1
	tBackpackLetter_Activity[3305684]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3305684]["Cultivation"] = 30
	tBackpackLetter_Activity[3305684]["Pathfind"] = {}
	tBackpackLetter_Activity[3305684]["Pathfind"]["PosX"] = 348
	tBackpackLetter_Activity[3305684]["Pathfind"]["PosY"] = 440
	tBackpackLetter_Activity[3305684]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3305684]["Pathfind"]["NpcId"] = 6297
	
------------------------------------------------------------------------------------
--Name:			170822[英文征服][活动脚本]金币服相关内容制作-boss之家
--Creator: 		魏贻逵
--Created:		2017/08/22
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305033] = {}

	tBackpackLetter_Activity[3305033]["ActivityTime"] = "2017-10-17 00:00 2029-12-31 23:59"
	tBackpackLetter_Activity[3305033]["EventType"] = 167
	tBackpackLetter_Activity[3305033]["DataType"] = 07
	tBackpackLetter_Activity[3305033]["RewardData"] = 1
	tBackpackLetter_Activity[3305033]["RewardItem"] = 3305033
	tBackpackLetter_Activity[3305033]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305033]["Cultivation"] = 30
	tBackpackLetter_Activity[3305033]["NeedLevel"] = 50
	tBackpackLetter_Activity[3305033]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity[3305033]["Pathfind"] = {}
	tBackpackLetter_Activity[3305033]["Pathfind"]["NpcId"] = 11404
	tBackpackLetter_Activity[3305033]["Pathfind"]["PosX"] = 344
	tBackpackLetter_Activity[3305033]["Pathfind"]["PosY"] = 440
	tBackpackLetter_Activity[3305033]["Pathfind"]["MapId"] = 1002

	
------------------------------------------------------------------------------------
--Name:			170325[简体征服][活动脚本]新服主题周活动制作 --物品部分
--Purpose:		新服主题周活动制作 ---物品部分
--Creator:		杨晓晓
--Created:		2017/03/25
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3302780] = {}
	tBackpackLetter_Activity[3302780]["EventType"] = 157
	tBackpackLetter_Activity[3302780]["DataType"] = 92
	tBackpackLetter_Activity[3302780]["RewardData"] = 1
	tBackpackLetter_Activity[3302780]["RewardItem"] = 3302780
	tBackpackLetter_Activity[3302780]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3302780]["NeedLevel"] = 1
	tBackpackLetter_Activity[3302780]["GlobalId"] = 51131
	tBackpackLetter_Activity[3302780]["GlobalData"] = 1
	tBackpackLetter_Activity[3302780]["GlobalPos"] = 0
	tBackpackLetter_Activity[3302780]["Cultivation"] = 30
	tBackpackLetter_Activity[3302780]["Pathfind"] = {}
	tBackpackLetter_Activity[3302780]["Pathfind"]["NpcId"] = 20461

--------------------------------------------------------------------------------
--Name:			170421[英文征服][活动脚本]5月转职圣殿NPC制作（5.23-6.06）
--Creator:		陈琳
--Created:		2017/04/21
--------------------------------------------------------------------------------
	tBackpackLetter_Activity[3303197] = {}
	tBackpackLetter_Activity[3303197]["ActivityTime"] = tActivityTime["MayChangePro"]["ActivityTime"]
	tBackpackLetter_Activity[3303197]["EventType"] = 159
	tBackpackLetter_Activity[3303197]["DataType"] = 46
	tBackpackLetter_Activity[3303197]["RewardData"] = 1
	tBackpackLetter_Activity[3303197]["RewardItem"] = 3303197
	tBackpackLetter_Activity[3303197]["RewardAttr"] = "0 1"
	
	tBackpackLetter_Activity[3303197]["Cultivation"] = 30
	tBackpackLetter_Activity[3303197]["Pathfind"] = {}
	tBackpackLetter_Activity[3303197]["Pathfind"]["PosX"] = 348
	tBackpackLetter_Activity[3303197]["Pathfind"]["PosY"] = 433
	tBackpackLetter_Activity[3303197]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3303197]["Pathfind"]["NpcId"] = 20531
------------------------------------------------------------------------------------
--Name：            171013[英文征服][活动脚本]感恩月-以旧换新活动制作
--Creator:      蔡颖静
--Created:     2017/10/13
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305804] = {}

	tBackpackLetter_Activity[3305804]["ActivityTime"] = tActivityTime["ThankGivingExchange"]["ActiveTime"]
	tBackpackLetter_Activity[3305804]["EventType"] = 168
	tBackpackLetter_Activity[3305804]["DataType"] = 78
	tBackpackLetter_Activity[3305804]["RewardData"] = 1
	tBackpackLetter_Activity[3305804]["RewardItem"] = 3305804
	tBackpackLetter_Activity[3305804]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305804]["Cultivation"] = 30
	tBackpackLetter_Activity[3305804]["NeedLevel"] = 80
	tBackpackLetter_Activity[3305804]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity[3305804]["Pathfind"] = {}
	tBackpackLetter_Activity[3305804]["Pathfind"]["NpcId"] = 22274
	tBackpackLetter_Activity[3305804]["Pathfind"]["PosX"] = 355
	tBackpackLetter_Activity[3305804]["Pathfind"]["PosY"] = 427
	tBackpackLetter_Activity[3305804]["Pathfind"]["MapId"] = 1002
	tItemFace[3305804] = 795
------------------------------------------------------------------------------------
--Name：            171018[英文征服][活动脚本]11月感恩月赌博分场活动
--Creator:      丁雨浩
--Created:     2017/10/18
------------------------------------------------------------------------------------

	tBackpackLetter_Activity[3306132] = {}
	tBackpackLetter_Activity[3306132]["ActivityTime"] = tActivityTime["GratefulActivity"]["ActivityTime"]
	tBackpackLetter_Activity[3306132]["EventType"] = 169
	tBackpackLetter_Activity[3306132]["DataType"] = 16
	tBackpackLetter_Activity[3306132]["RewardData"] = 1
	tBackpackLetter_Activity[3306132]["RewardItem"] = 3306132
	tBackpackLetter_Activity[3306132]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3306132]["NeedLevel"] = 80
	tBackpackLetter_Activity[3306132]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3306132]["Cultivation"] = 30
	tBackpackLetter_Activity[3306132]["Pathfind"] = {}
	tBackpackLetter_Activity[3306132]["Pathfind"]["PosX"] = 340
	tBackpackLetter_Activity[3306132]["Pathfind"]["PosY"] = 459
	tBackpackLetter_Activity[3306132]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3306132]["Pathfind"]["NpcId"] = 21168

----------------------------------------------------------------------------
--Name:171020[英文征服][活动脚本]感恩回馈签到礼包
--Creator:兰冬梅
--Created:	2017/10/20
----------------------------------------------------------------------------
	tBackpackLetter_Activity[3306211] = {}
	tBackpackLetter_Activity[3306211]["ActivityTime"] =tActivityTime["ThanksGivingPack"]["ActivityTime"]
	tBackpackLetter_Activity[3306211]["EventType"] =168
	tBackpackLetter_Activity[3306211]["DataType"] =96
	tBackpackLetter_Activity[3306211]["RewardData"] =1
	tBackpackLetter_Activity[3306211]["RewardItem"] =3306211
	tBackpackLetter_Activity[3306211]["RewardAttr"] ="0 1"
	tBackpackLetter_Activity[3306211]["NeedLevel"] =80
	tBackpackLetter_Activity[3306211]["NeedMetempsychosis"] =0
	
	
--------------------------------------------------------------------------------------------------------
--name:170405[简体征服][任务脚本]1天石赌活动制作
--by:魏贻逵
--date:2017-04-05
--------------------------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3303408] = {}
	-- 活动时间
	tBackpackLetter_Activity[3303408]["ActivityTime"] = tActivityTime["OneCpGamble"]["Nowtime"]
	tBackpackLetter_Activity[3303408]["EventType"] = 159
	tBackpackLetter_Activity[3303408]["DataType"] = 84
	tBackpackLetter_Activity[3303408]["RewardData"] = 1
	tBackpackLetter_Activity[3303408]["RewardItem"] = 3303408
	tBackpackLetter_Activity[3303408]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3303408]["Cultivation"] = 30
	tBackpackLetter_Activity[3303408]["NeedLevel"] = 80
	tBackpackLetter_Activity[3303408]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3303408]["Pathfind"] = {}
	tBackpackLetter_Activity[3303408]["Pathfind"]["NpcId"] = 11356
	tBackpackLetter_Activity[3303408]["Pathfind"]["PosX"] = 355
	tBackpackLetter_Activity[3303408]["Pathfind"]["PosY"] = 460
	tBackpackLetter_Activity[3303408]["Pathfind"]["MapId"] = 1002

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]德州赛季比赛及礼包制作
--Creator:		翁清海
--Created:		2017/11/01
------------------------------------------------------------------------------------

	tBackpackLetter_Activity[3306467] = {}
	tBackpackLetter_Activity[3306467]["ActivityTime"] = tActivityTime["NovTexasPokerAndBag"][3]["ActivityTime"]
	tBackpackLetter_Activity[3306467]["EventType"] = 169
	tBackpackLetter_Activity[3306467]["DataType"] = 85
	tBackpackLetter_Activity[3306467]["RewardData"] = 1
	tBackpackLetter_Activity[3306467]["RewardItem"] = 3306467
	tBackpackLetter_Activity[3306467]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3306467]["NeedLevel"] = 1
	tBackpackLetter_Activity[3306467]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3306467]["Cultivation"] = 30
	-- 寻路
	tBackpackLetter_Activity[3306467]["Pathfind"] = {}
	tBackpackLetter_Activity[3306467]["Pathfind"]["NpcId"] = 22352
	
------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]多米诺版本测试
--Purpose:	多米诺版本测试
--Creator: 	严振飞
--Created:	2017/11/06
------------------------------------------------------------------------------------
	-- tItemFace[3306565] = 623
	-- tBackpackLetter_Activity[3306565] = {}
	-- tBackpackLetter_Activity[3306565]["EventType"] = 169
	-- tBackpackLetter_Activity[3306565]["DataType"] = 97
	-- tBackpackLetter_Activity[3306565]["RewardData"] = 1
	-- tBackpackLetter_Activity[3306565]["RewardItem"] = 3306565
	-- tBackpackLetter_Activity[3306565]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3306565]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3306565]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3306565]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3306565]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3306565]["Pathfind"]["NpcId"] = 19370


------------------------------------------------------------------------------------
--Name:			170827[英文征服][活动脚本]金币服相关内容制作个人boss部分
--Creator:		陈琳
--Created:		2017/08/27
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305076] = {}
	tBackpackLetter_Activity[3305076]["EventType"] = 165
	tBackpackLetter_Activity[3305076]["DataType"] = 57
	tBackpackLetter_Activity[3305076]["RewardData"] = 1
	tBackpackLetter_Activity[3305076]["RewardItem"] = 3305076
	tBackpackLetter_Activity[3305076]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305076]["NeedLevel"] = 50
	tBackpackLetter_Activity[3305076]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3305076]["GlobalId"] = 51755
	tBackpackLetter_Activity[3305076]["GlobalData"] = 1
	tBackpackLetter_Activity[3305076]["GlobalPos"] = 0
	
	tBackpackLetter_Activity[3305076]["Cultivation"] = 30
	tBackpackLetter_Activity[3305076]["Pathfind"] = {}
	tBackpackLetter_Activity[3305076]["Pathfind"]["PosX"] = 353
	tBackpackLetter_Activity[3305076]["Pathfind"]["PosY"] = 449
	tBackpackLetter_Activity[3305076]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3305076]["Pathfind"]["NpcId"] = 22084
	
	------------------------------------------------------------------------------------
--Name：            171127[英文征服][活动脚本]补偿感恩回馈礼包
--Creator:      王贤
--Created:     2017/11/27
------------------------------------------------------------------------------------
-- 补偿感恩回馈礼包
	tBackpackLetter_Activity[3306727] = {}
	tBackpackLetter_Activity[3306727]["ActivityTime"] = tActivityTime["ThanksgivingFeedbackPackage"]["AwardItem"]
	tBackpackLetter_Activity[3306727]["EventType"] = 170
	tBackpackLetter_Activity[3306727]["DataType"] = 39
	tBackpackLetter_Activity[3306727]["RewardData"] = 1
	tBackpackLetter_Activity[3306727]["RewardItem"] = 3306727
	tBackpackLetter_Activity[3306727]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3306727]["NeedLevel"] = 80
	tBackpackLetter_Activity[3306727]["NeedMetempsychosis"] = 0
	
------------------------------------------------------------------------------------
--Name:		171110[英文征服][活动脚本]12月琳琅嘉年华活动制作
--Creator: 	王贤
--Created:	2017-11-10
------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]大型MMO活动--飞翔吧筋斗云
--Purpose:	翻滚筋斗云
--Creator: 	许乐
--Created:	2016/10/31
------------------------------------------------------------------------------------
	-- 菩提老祖的来信 3301291
	tBackpackLetter_Activity[3301291] = {}
	tBackpackLetter_Activity[3301291]["ActivityTime"] = tActivityTime["MMOJindowin"]["NowTime"]
	tBackpackLetter_Activity[3301291]["EventType"] = 152
	tBackpackLetter_Activity[3301291]["DataType"] = 02
	tBackpackLetter_Activity[3301291]["RewardData"] = 1
	tBackpackLetter_Activity[3301291]["RewardItem"] = 3301291
	tBackpackLetter_Activity[3301291]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3301291]["NeedLevel"] = 80
	tBackpackLetter_Activity[3301291]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3301291]["Cultivation"] = 30
	tBackpackLetter_Activity[3301291]["Pathfind"] = {}
	tBackpackLetter_Activity[3301291]["Pathfind"]["NpcId"] = 19798
-----------------------------------------------------------------------------------------------------
--Name:		161109[简体征服][活动脚本]趣味积分活动总NPC
--Creator: 	翁增锐
--Created:		2016/11/09
------------------------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3301449] = {}
	tBackpackLetter_Activity[3301449]["ActivityTime"] = tActivityTime["LinLang"]["ActivityTime"]
	tBackpackLetter_Activity[3301449]["EventType"] = 152
	tBackpackLetter_Activity[3301449]["DataType"] = 60
	tBackpackLetter_Activity[3301449]["RewardData"] = 1
	tBackpackLetter_Activity[3301449]["RewardItem"] = 3301449
	tBackpackLetter_Activity[3301449]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3301449]["NeedLevel"] = 80
	tBackpackLetter_Activity[3301449]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3301449]["Cultivation"] = 30
	tBackpackLetter_Activity[3301449]["Pathfind"] = {}
	tBackpackLetter_Activity[3301449]["Pathfind"]["PosX"] = 356
	tBackpackLetter_Activity[3301449]["Pathfind"]["PosY"] = 426
	tBackpackLetter_Activity[3301449]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3301449]["Pathfind"]["NpcId"] = 19980
	tBackpackLetter_Activity[3301449]["GlobalId"] = 51828
	tBackpackLetter_Activity[3301449]["GlobalData"] = 1
	tBackpackLetter_Activity[3301449]["GlobalPos"] = 0
-----------------------------------------------------------------------------------------------------
--Name:		171218[英文征服][活动脚本]20171218【英文征服】6658更新包（12.19） 
--Creator: 	黄啸
--Created:		2017/12/18
	--tBackpackLetter_Activity[3307052] = {}
	--tBackpackLetter_Activity[3307052]["ActivityTime"] = tActivityTime["ChristmasDay"]["ActivityTime"]
	--tBackpackLetter_Activity[3307052]["EventType"] = 170
	--tBackpackLetter_Activity[3307052]["DataType"] = 89
	--tBackpackLetter_Activity[3307052]["RewardData"] = 1
	--tBackpackLetter_Activity[3307052]["RewardItem"] = 3307052
	--tBackpackLetter_Activity[3307052]["RewardAttr"] = "0 1"

	
------------------------------------------------------------------------------------
--Name：            171220[英文征服][活动脚本]星陨石优惠购活动(1.02-1.08)
--Creator:      吴燕柚
--Created:     2017/12/20
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3303853] = {}
	tBackpackLetter_Activity[3303853]["ActivityTime"] = tActivityTime["BuyAsteroids"]["Now_Time"]
	tBackpackLetter_Activity[3303853]["EventType"] = 162
	tBackpackLetter_Activity[3303853]["DataType"] = 41
	tBackpackLetter_Activity[3303853]["RewardData"] = 1
	tBackpackLetter_Activity[3303853]["RewardItem"] = 3303853
	tBackpackLetter_Activity[3303853]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3303853]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3303853]["NeedMetempsychosis"] = 1
	
	tBackpackLetter_Activity[3303853]["Cultivation"] = 30
	tBackpackLetter_Activity[3303853]["Pathfind"] = {}
	tBackpackLetter_Activity[3303853]["Pathfind"]["PosX"] = 327
	tBackpackLetter_Activity[3303853]["Pathfind"]["PosY"] = 452
	tBackpackLetter_Activity[3303853]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3303853]["Pathfind"]["NpcId"] = 20871
	
--晶莹星陨68折券
	tBackpackLetter_Activity[3303852] = {}
	tBackpackLetter_Activity[3303852]["ActivityTime"] = tActivityTime["BuyAsteroids"]["Now_Time"]
	tBackpackLetter_Activity[3303852]["EventType"] = 162
	tBackpackLetter_Activity[3303852]["DataType"] = 42
	tBackpackLetter_Activity[3303852]["RewardData"] = 1
	tBackpackLetter_Activity[3303852]["RewardItem"] = 3303852
	tBackpackLetter_Activity[3303852]["RewardAttr"] = "0 1 0 60 1"
	
	tBackpackLetter_Activity[3303852]["Pathfind"] = {}
	tBackpackLetter_Activity[3303852]["Pathfind"]["PosX"] = 327
	tBackpackLetter_Activity[3303852]["Pathfind"]["PosY"] = 452
	tBackpackLetter_Activity[3303852]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3303852]["Pathfind"]["NpcId"] = 20871
	tBackpackLetter_Activity[3303852]["EmoneyLog"] = "350	21030	0	0	1	"--获得绝对低价优惠券
------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]新天石雨活动
--Purpose:	新天石雨活动
--Creator: 	严振飞
--Created:	2017/09/15
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305463] = {}
	tBackpackLetter_Activity[3305463]["ActivityTime"] = tActivityTime["NewCPsRain"]["NowTime"]
	tBackpackLetter_Activity[3305463]["EventType"] = 167
	tBackpackLetter_Activity[3305463]["DataType"] = 33
	tBackpackLetter_Activity[3305463]["RewardData"] = 1
	tBackpackLetter_Activity[3305463]["RewardItem"] = 3305463
	tBackpackLetter_Activity[3305463]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305463]["NeedLevel"] = 100
	tBackpackLetter_Activity[3305463]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3305463]["Cultivation"] = 30
	tBackpackLetter_Activity[3305463]["GlobalId"] = G_Gold_DynaGlobal
	tBackpackLetter_Activity[3305463]["OldSever"] = 1
	
	-- 寻路
	tBackpackLetter_Activity[3305463]["Pathfind"] = {}
	tBackpackLetter_Activity[3305463]["Pathfind"]["NpcId"] = 22098


----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]一月促销.lua
--Purpose:	一月促销
--Creator: 	洪聪敏
--Created:	2017/12/13
----------------------------------------------------------------------------
	-- 头像
	tItemFace[3306967] = 1173
	tBackpackLetter_Activity[3306967] = {}
	--活动时间
	tBackpackLetter_Activity[3306967]["ActivityTime"] = tActivityTime["JanuaPro"]["ActTime"]
	tBackpackLetter_Activity[3306967]["EventType"] = 171
	tBackpackLetter_Activity[3306967]["DataType"] = 18
	tBackpackLetter_Activity[3306967]["RewardData"] = 1
	tBackpackLetter_Activity[3306967]["RewardItem"] = 3306967
	tBackpackLetter_Activity[3306967]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3306967]["Cultivation"] = 30
	tBackpackLetter_Activity[3306967]["NeedLevel"] = 80
	tBackpackLetter_Activity[3306967]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3306967]["Pathfind"] = {}
	tBackpackLetter_Activity[3306967]["Pathfind"]["NpcId"] = 22430
	tBackpackLetter_Activity[3306967]["Pathfind"]["PosX"] = 368
	tBackpackLetter_Activity[3306967]["Pathfind"]["PosY"] = 452
	tBackpackLetter_Activity[3306967]["Pathfind"]["MapId"] = 1002
	
------------------------------------------------------------------------------------
--Name：            171103[ios英文征服][活动脚本]帮派斗地主活动
--Creator:      潘云锋
--Created:     2017/11/03
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3306517] = {}
	-- tBackpackLetter_Activity[3306517]["ActivityTime"] =tActivityTime["GangsLandlord"]["ActivityTime"]
	-- tBackpackLetter_Activity[3306517]["NewActivityTime"] =tActivityTime["GangsLandlord"]["ActivityTime"]
	-- tBackpackLetter_Activity[3306517]["EventType"] =169
	-- tBackpackLetter_Activity[3306517]["DataType"] =88
	-- tBackpackLetter_Activity[3306517]["RewardData"] =1
	-- tBackpackLetter_Activity[3306517]["RewardItem"] =3306517
	-- tBackpackLetter_Activity[3306517]["RewardAttr"] ="0 1"
	-- tBackpackLetter_Activity[3306517]["NeedLevel"] =80
	-- tBackpackLetter_Activity[3306517]["NeedMetempsychosis"] =0
	-- tBackpackLetter_Activity[3306517]["MsgBox"] =0
	-- tBackpackLetter_Activity[3306517]["Cultivation"] =30
	-- tBackpackLetter_Activity[3306517]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3306517]["Pathfind"]["PosX"] =321
	-- tBackpackLetter_Activity[3306517]["Pathfind"]["PosY"] =452
	-- tBackpackLetter_Activity[3306517]["Pathfind"]["MapId"] =1002
	-- tBackpackLetter_Activity[3306517]["Pathfind"]["NpcId"] =22370
	-- tBackpackLetter_Activity[3306517]["GlobalId"] = 51974
	-- tBackpackLetter_Activity[3306517]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3306517]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：            171211[英文征服][活动脚本]1月新年赠品转盘活动
--Creator:      蔡颖静
--Created:     2017/12/11
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3306982] = {}

	tBackpackLetter_Activity[3306982]["ActivityTime"] = tActivityTime["NewYearRoulette"]["ActivityTime"]
	tBackpackLetter_Activity[3306982]["EventType"] = 170
	tBackpackLetter_Activity[3306982]["DataType"] = 88
	tBackpackLetter_Activity[3306982]["RewardData"] = 1
	tBackpackLetter_Activity[3306982]["RewardItem"] = 3306982
	tBackpackLetter_Activity[3306982]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3306982]["Cultivation"] = 30
	tBackpackLetter_Activity[3306982]["NeedLevel"] = 80
	tBackpackLetter_Activity[3306982]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity[3306982]["Pathfind"] = {}
	tBackpackLetter_Activity[3306982]["Pathfind"]["NpcId"] = 22429
	tBackpackLetter_Activity[3306982]["Pathfind"]["PosX"] = 364
	tBackpackLetter_Activity[3306982]["Pathfind"]["PosY"] = 435
	tBackpackLetter_Activity[3306982]["Pathfind"]["MapId"] = 1002
	tItemFace[3306982] = 1150
	
	
		
------------------------------------------------------------------------------------
-- Name:		171215[英文征服][活动脚本]1月新年进阶之路
-- Purpose:		进阶之路
-- Creator:		wzh
-- Created:		2017/12/15
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307053] = {}
	tBackpackLetter_Activity[3307053]["ActivityTime"] = tActivityTime["AdvancedRoad"]["ActivityTime"]
	tBackpackLetter_Activity[3307053]["EventType"] = 170
	tBackpackLetter_Activity[3307053]["DataType"] = 94
	tBackpackLetter_Activity[3307053]["RewardData"] = 1
	tBackpackLetter_Activity[3307053]["RewardItem"] = 3307053
	tBackpackLetter_Activity[3307053]["RewardAttr"] = "0 1"
	
	tBackpackLetter_Activity[3307053]["Cultivation"] = 30
	tBackpackLetter_Activity[3307053]["Pathfind"] = {}
	tBackpackLetter_Activity[3307053]["Pathfind"]["PosX"] = 354
	tBackpackLetter_Activity[3307053]["Pathfind"]["PosY"] = 460
	tBackpackLetter_Activity[3307053]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3307053]["Pathfind"]["NpcId"] = 22537
	
------------------------------------------------------------------------------------
--Name：            171106[简体征服][活动脚本]神纹版本答题活动
--Creator:      游若楠
--Created:     2017/11/06
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3306601] = {}
tBackpackLetter_Activity[3306601]["ActivityTime"] = tActivityTime["RuneVersionQuestioning"]["ActiveTime"]
tBackpackLetter_Activity[3306601]["EventType"] = 171
tBackpackLetter_Activity[3306601]["DataType"] = 01
tBackpackLetter_Activity[3306601]["RewardData"] = 1
tBackpackLetter_Activity[3306601]["RewardItem"] = 3306601
tBackpackLetter_Activity[3306601]["RewardAttr"] = "0 1"
--tBackpackLetter_Activity[3306601]["NeedLevel"] = 135
--tBackpackLetter_Activity[3306601]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3306601]["Cultivation"] = 30
tBackpackLetter_Activity[3306601]["Pathfind"] = {}
tBackpackLetter_Activity[3306601]["Pathfind"]["PosX"] = 348
tBackpackLetter_Activity[3306601]["Pathfind"]["PosY"] = 448
tBackpackLetter_Activity[3306601]["Pathfind"]["MapId"] = 1002
tBackpackLetter_Activity[3306601]["Pathfind"]["NpcId"] = 21233
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]天下第一武道会
--Creator:		翁清海
--Created:		2017/09/28
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305571] = {}
	tBackpackLetter_Activity[3305571]["ActivityTime"] = tActivityTime["FirstWorldBudokai"]["ActivityTime"]
	tBackpackLetter_Activity[3305571]["EventType"] = 168
	tBackpackLetter_Activity[3305571]["DataType"] = 76
	tBackpackLetter_Activity[3305571]["RewardData"] = 1
	tBackpackLetter_Activity[3305571]["RewardItem"] = 3305571
	tBackpackLetter_Activity[3305571]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305571]["NeedLevel"] = 100
	tBackpackLetter_Activity[3305571]["NeedMetempsychosis"] = 2
	tBackpackLetter_Activity[3305571]["Cultivation"] = 30
	-- 寻路
	tBackpackLetter_Activity[3305571]["Pathfind"] = {}
	tBackpackLetter_Activity[3305571]["Pathfind"]["NpcId"] = 21321
------------------------------------------------------------------------------------
--Name：            180111[英文征服][活动脚本]符文版本上线礼包（02.01）
--Creator:      杨艳
--Created:     2018/01/11
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3307138] = {}
tBackpackLetter_Activity[3307138]["ActivityTime"] = "2018-02-06 00:00 2018-02-15 23:59"
tBackpackLetter_Activity[3307138]["EventType"] = 172
tBackpackLetter_Activity[3307138]["DataType"] = 09
tBackpackLetter_Activity[3307138]["RewardData"] = 1
tBackpackLetter_Activity[3307138]["RewardItem"] = 3307138
tBackpackLetter_Activity[3307138]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3307138]["NeedLevel"] = 80
tBackpackLetter_Activity[3307138]["NeedMetempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            180117[简体征服][活动脚本]狗年年兽活动制作(2.8)
--Creator:      陈莺
--Created:     2018/01/17
------------------------------------------------------------------------------------
	-- tItemFace[3306954] = 1325
	-- tBackpackLetter_Activity[3306954] = {}
	-- tBackpackLetter_Activity[3306954]["ActivityTime"] = tActivityTime["DogYear"]["NowTime"]
	-- tBackpackLetter_Activity[3306954]["EventType"] = 172
	-- tBackpackLetter_Activity[3306954]["DataType"] = 75
	-- tBackpackLetter_Activity[3306954]["RewardData"] = 1
	-- tBackpackLetter_Activity[3306954]["RewardItem"] = 3306954
	-- tBackpackLetter_Activity[3306954]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3306954]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3306954]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3306954]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3306954]["Pathfind"]["NpcId"] = 21386
	-- tBackpackLetter_Activity[3306954]["Cultivation"] = 30
	
------------------------------------------------------------------------------------
--Name:			180109[英文征服][活动脚本]2月情人节大作战
--Creator:		陈琳
--Created:		2018/01/09
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307180] = {}
	tBackpackLetter_Activity[3307180]["ActivityTime"] = tActivityTime["ChineseValentinesOperation"]["ActivityTime"]
	tBackpackLetter_Activity[3307180]["EventType"] = 172
	tBackpackLetter_Activity[3307180]["DataType"] = 06
	tBackpackLetter_Activity[3307180]["RewardData"] = 1
	tBackpackLetter_Activity[3307180]["RewardItem"] = 3307180
	tBackpackLetter_Activity[3307180]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307180]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307180]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3307180]["Cultivation"] = 30
	tBackpackLetter_Activity[3307180]["Pathfind"] = {}
	tBackpackLetter_Activity[3307180]["Pathfind"]["PosX"] = 347
	tBackpackLetter_Activity[3307180]["Pathfind"]["PosY"] = 466
	tBackpackLetter_Activity[3307180]["Pathfind"]["MapId"] = 1002
	
------------------------------------------------------------------------------------
--Name：            180208[英文征服][活动脚本]英文征服3月全职业成长宝活动
--Creator:      李甲
--Created:     2018/02/08
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307539] = {}
	tBackpackLetter_Activity[3307539]["ActivityTime"] = tActivityTime["MarchGrowthPackage"]["ActivityTime"]
	tBackpackLetter_Activity[3307539]["EventType"] = 173
	tBackpackLetter_Activity[3307539]["DataType"] = 81
	tBackpackLetter_Activity[3307539]["RewardData"] = 1
	tBackpackLetter_Activity[3307539]["RewardItem"] =3307539
	tBackpackLetter_Activity[3307539]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307539]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307539]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3307539]["Cultivation"] = 30
	tBackpackLetter_Activity[3307539]["Pathfind"] = {}
	tBackpackLetter_Activity[3307539]["Pathfind"]["NpcId"] = 21441
	
------------------------------------------------------------------------------------
--Name:		180209[英文征服][活动脚本]3月促销活动制作(3.08-3.22)
--Purpose:	3月促销活动制作
--Creator: 	傅伟龙
--Created:	2018/02/29
------------------------------------------------------------------------------------


	tBackpackLetter_Activity[3307533] = {}
	tBackpackLetter_Activity[3307533]["ActivityTime"] = tActivityTime["MarPromotionAct"]["ActTime"]
	tBackpackLetter_Activity[3307533]["EventType"] = 173
	tBackpackLetter_Activity[3307533]["DataType"] = 80
	tBackpackLetter_Activity[3307533]["RewardData"] = 1
	tBackpackLetter_Activity[3307533]["RewardItem"] = 3307533
	tBackpackLetter_Activity[3307533]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307533]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307533]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3307533]["Cultivation"] = 30
	tBackpackLetter_Activity[3307533]["Pathfind"] = {}
	tBackpackLetter_Activity[3307533]["Pathfind"]["NpcId"] = 22644
	
-----------------------------------------------------------------------------------------------------
--Name:		180207[英文征服][活动脚本]3月帮派积分榜活动
--Creator: 	wzh
--Created:		2018/02/09
------------------------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307509] = {}
	tBackpackLetter_Activity[3307509]["ActivityTime"] = tActivityTime["YouDrawMeGuess"]["ActivityTime"]
	tBackpackLetter_Activity[3307509]["EventType"] = 173
	tBackpackLetter_Activity[3307509]["DataType"] = 54
	tBackpackLetter_Activity[3307509]["RewardData"] = 1
	tBackpackLetter_Activity[3307509]["RewardItem"] = 3307509
	tBackpackLetter_Activity[3307509]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307509]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307509]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3307509]["Cultivation"] = 30
	tBackpackLetter_Activity[3307509]["Pathfind"] = {}
	tBackpackLetter_Activity[3307509]["Pathfind"]["PosX"] = 356
	tBackpackLetter_Activity[3307509]["Pathfind"]["PosY"] = 416
	tBackpackLetter_Activity[3307509]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3307509]["Pathfind"]["NpcId"] = 19809
	-- tBackpackLetter_Activity[3307509]["GlobalId"] = 51828
	-- tBackpackLetter_Activity[3307509]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3307509]["GlobalPos"] = 0
------------------------------------------------------------------------------------------------------------------
--Name:		170921[简体征服][活动脚本]史诗武器新服
--Creator: 	吴帆
--Created:	2017/09/21
-------------------------------------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305424] = {}
	tBackpackLetter_Activity[3305424]["NewActivityTime"] = tActivityTime["EpicWeaponsSoul"]["Activity"]
	tBackpackLetter_Activity[3305424]["EventType"] = 165
	tBackpackLetter_Activity[3305424]["DataType"] = 83
	tBackpackLetter_Activity[3305424]["RewardData"] = 1
	tBackpackLetter_Activity[3305424]["RewardItem"] = 3305424
	tBackpackLetter_Activity[3305424]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305424]["Cultivation"] = 30
	-- 寻路
	tBackpackLetter_Activity[3305424]["Pathfind"] = {}
	tBackpackLetter_Activity[3305424]["Pathfind"]["NpcId"] = 21154
	tBackpackLetter_Activity[3305424]["Pathfind"]["PosX"] = 355
	tBackpackLetter_Activity[3305424]["Pathfind"]["PosY"] = 459
	tBackpackLetter_Activity[3305424]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3305424]["GlobalId"] = 54114
	tBackpackLetter_Activity[3305424]["GlobalData"] = 1
	tBackpackLetter_Activity[3305424]["GlobalPos"] = 0
	
------------------------------------------------------------------------------------
--Name:		180314[英文征服][活动脚本]]4月彩蛋收集活动(4.1-4.10)
--Creator: 	兰瑞妹
--Created:	2018/03/20
------------------------------------------------------------------------------------
	-- 3307851,'欢乐彩蛋邀请函'
	tBackpackLetter_Activity[3307851] = {}
	tBackpackLetter_Activity[3307851]["ActivityTime"] = tActivityTime["EasterEggPainting"]["ActivityTime"]
	tBackpackLetter_Activity[3307851]["EventType"] = 175
	tBackpackLetter_Activity[3307851]["DataType"] = 30
	tBackpackLetter_Activity[3307851]["RewardData"] = 1
	tBackpackLetter_Activity[3307851]["RewardItem"] = 3307851
	tBackpackLetter_Activity[3307851]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307851]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307851]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3307851]["Cultivation"] = 30
	tBackpackLetter_Activity[3307851]["Pathfind"] = {}
	tBackpackLetter_Activity[3307851]["Pathfind"]["NpcId"] = 22717
	
------------------------------------------------------------------------------------
--Name：            180319[英文征服][活动脚本]海盗翻身Quiz任务制作
--Creator:      潘云锋
--Created:     2018/03/19
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307829] = {}
	tBackpackLetter_Activity[3307829]["ActivityTime"] = tActivityTime["PirateQuiz"]["ActivityTime"]
	tBackpackLetter_Activity[3307829]["EventType"] = 175
	tBackpackLetter_Activity[3307829]["DataType"] = 29
	tBackpackLetter_Activity[3307829]["RewardData"] =1
	tBackpackLetter_Activity[3307829]["RewardItem"] =3307829
	tBackpackLetter_Activity[3307829]["RewardAttr"] ="0 1"
	tBackpackLetter_Activity[3307829]["NeedLevel"] = 80 
	tBackpackLetter_Activity[3307829]["NeedMetempsychosis"] =0
	
	tBackpackLetter_Activity[3307829]["Cultivation"] =30
	tBackpackLetter_Activity[3307829]["Pathfind"] = {}
	tBackpackLetter_Activity[3307829]["Pathfind"]["NpcId"] =22716
	
	
------------------------------------------------------------------------------------
--Name:		170920[简体征服][活动脚本]砸罐子活动制作
--Creator: 	兰瑞妹
--Created:	2017/10/11
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3305661] = {}
	tBackpackLetter_Activity[3305661]["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	tBackpackLetter_Activity[3305661]["EventType"] = 168
	tBackpackLetter_Activity[3305661]["DataType"] = 59
	tBackpackLetter_Activity[3305661]["RewardData"] = 1
	tBackpackLetter_Activity[3305661]["RewardItem"] = 3305661
	tBackpackLetter_Activity[3305661]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3305661]["NeedLevel"] = 80
	tBackpackLetter_Activity[3305661]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3305661]["Cultivation"] = 30
	tBackpackLetter_Activity[3305661]["Pathfind"] = {}
	tBackpackLetter_Activity[3305661]["Pathfind"]["NpcId"] = 22284
	-- tBackpackLetter_Activity[3305661]["GlobalId"] = 53779
	-- tBackpackLetter_Activity[3305661]["OldSever"] = 1
	tBackpackLetter_Activity_NoGift[3305661] = {}
	tBackpackLetter_Activity_NoGift[3305661]["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3305661]["EventType"] = 168
	tBackpackLetter_Activity_NoGift[3305661]["DataType"] = 59
	tBackpackLetter_Activity_NoGift[3305661]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3305661]["RewardItem"] = 3305661
	tBackpackLetter_Activity_NoGift[3305661]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3305661]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3305661]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3305661]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3305661]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3305661]["Pathfind"]["NpcId"] = 22284
	

------------------------------------------------------------------------------------
--Name：            180319[英文征服][活动脚本]百宝轮盘大促销
--Creator:      李甲
--Created:     2018/03/19
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307795] = {}
	tBackpackLetter_Activity[3307795]["ActivityTime"] = tActivityTime["BaibaoRouletteSales"]["Activity"]
	tBackpackLetter_Activity[3307795]["EventType"] = 175
	tBackpackLetter_Activity[3307795]["DataType"] = 47
	tBackpackLetter_Activity[3307795]["RewardData"] = 1
	tBackpackLetter_Activity[3307795]["RewardItem"] = 3307795
	tBackpackLetter_Activity[3307795]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307795]["Cultivation"] = 30
	-- 寻路
	tBackpackLetter_Activity[3307795]["Pathfind"] = {}
	tBackpackLetter_Activity[3307795]["Pathfind"]["NpcId"] = 21456
	tBackpackLetter_Activity[3307795]["Pathfind"]["PosX"] = 322
	tBackpackLetter_Activity[3307795]["Pathfind"]["PosY"] = 452
	tBackpackLetter_Activity[3307795]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3307795]["GlobalId"] = G_Gold_DynaGlobal
	tBackpackLetter_Activity[3307795]["GlobalData"] = 0
	tBackpackLetter_Activity[3307795]["GlobalPos"] = 0
	tBackpackLetter_Activity[3307795]["OldSever"] = 1
------------------------------------------------------------------------------------
--Name：180222[简体征服][活动脚本]海盗翻身特权月
--Creator:兰冬梅
--Created:     2018/03/07
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307639] = {}
	tBackpackLetter_Activity[3307639]["ActivityTime"] = tActivityTime["PrivilegeMonth"]["ActivityTime"]
	tBackpackLetter_Activity[3307639]["EventType"] = 174
	tBackpackLetter_Activity[3307639]["DataType"] = 26
	tBackpackLetter_Activity[3307639]["RewardData"] = 1
	tBackpackLetter_Activity[3307639]["RewardItem"] = 3307639
	tBackpackLetter_Activity[3307639]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307639]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307639]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3307639]["NeedPro"] ={}
	tBackpackLetter_Activity[3307639]["NeedPro"]["Pro1"] = G_PRO_Pirate0
	tBackpackLetter_Activity[3307639]["NeedPro"]["Pro2"] = G_PRO_Pirate5
------------------------------------------------------------------------------------
--Name：            180130[简体征服][任务脚本]海盗史诗任务技能与陷阱制作
--Creator:      李甲
--Created:     2018/01/30
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307451] = {}
	tBackpackLetter_Activity[3307451]["EventType"] = 173
	tBackpackLetter_Activity[3307451]["DataType"] = 00
	tBackpackLetter_Activity[3307451]["RewardData"] = 1
	tBackpackLetter_Activity[3307451]["RewardItem"] = 3307451
	tBackpackLetter_Activity[3307451]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307451]["NeedLevel"] = 70
	tBackpackLetter_Activity[3307451]["NeedMetempsychosis"] = 2
	tBackpackLetter_Activity[3307451]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3307451]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3307451]["Pathfind"]["PosX"] = 58
	-- tBackpackLetter_Activity[3307451]["Pathfind"]["PosY"] = 32
	-- tBackpackLetter_Activity[3307451]["Pathfind"]["MapId"] = 1004
	-- tBackpackLetter_Activity[3307451]["Pathfind"]["NpcId"] = 9391
	
------------------------------------------------------------------------------------
--Name：            180411[英文征服][活动脚本]杀boss除魔
--Creator:      黄啸
--Created:     2018/04/11
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3308100] = {}
	tBackpackLetter_Activity[3308100]["ActivityTime"] = "2018-04-11 00:00 2029-04-11 23:59"
	tBackpackLetter_Activity[3308100]["EventType"] = 175
	tBackpackLetter_Activity[3308100]["DataType"] = 86
	tBackpackLetter_Activity[3308100]["RewardData"] = 1
	tBackpackLetter_Activity[3308100]["RewardItem"] = 3308100
	tBackpackLetter_Activity[3308100]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3308100]["Cultivation"] = 30
	tBackpackLetter_Activity[3308100]["Pathfind"] = {}
	tBackpackLetter_Activity[3308100]["Pathfind"]["NpcId"] = 22611
	tBackpackLetter_Activity[3308100]["GlobalId"] = 75
	tBackpackLetter_Activity[3308100]["GlobalData"] = 1
	tBackpackLetter_Activity[3308100]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name:			180321[英文征服][活动脚本]周年许愿活动
--Purpose:		周年许愿
--Creator:		wzh
--Created:		2018/03/21
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307392] = {}
	--活动时间
	tBackpackLetter_Activity[3307392]["ActivityTime"] = tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]
	tBackpackLetter_Activity[3307392]["EventType"] = 172
	tBackpackLetter_Activity[3307392]["DataType"] = 92
	tBackpackLetter_Activity[3307392]["RewardData"] = 1
	tBackpackLetter_Activity[3307392]["RewardItem"] = 3307392
	tBackpackLetter_Activity[3307392]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307392]["Cultivation"] = 30
	tBackpackLetter_Activity[3307392]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307392]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity[3307392]["Pathfind"] = {}
	tBackpackLetter_Activity[3307392]["Pathfind"]["NpcId"] = 22622
	tBackpackLetter_Activity[3307392]["Pathfind"]["PosX"] = 340
	tBackpackLetter_Activity[3307392]["Pathfind"]["PosY"] = 464
	tBackpackLetter_Activity[3307392]["Pathfind"]["MapId"] = 1002
	
------------------------------------------------------------------------------------
--Name:			180323[简体征服][活动脚本]2018儿童节小活动复用修改(5.31-6.6)
--Creator:		翁清海
--Created:		2018-03-23
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307912] = {}
	tBackpackLetter_Activity[3307912]["ActivityTime"] = tActivityTime["ChildrenCandy"]["Activity"]
	tBackpackLetter_Activity[3307912]["EventType"] = 175
	tBackpackLetter_Activity[3307912]["DataType"] = 50
	tBackpackLetter_Activity[3307912]["RewardData"] = 1
	tBackpackLetter_Activity[3307912]["RewardItem"] = 3307912
	tBackpackLetter_Activity[3307912]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307912]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307912]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3307912]["Cultivation"] = 30
	tBackpackLetter_Activity[3307912]["Pathfind"] = {}
	tBackpackLetter_Activity[3307912]["Pathfind"]["NpcId"] = 20514

------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------	
	tBackpackLetter_Activity[3307005] = {}
	tBackpackLetter_Activity[3307005]["ActivityTime"] = tActivityTime["RiotOfNether"]["Activity"]
	tBackpackLetter_Activity[3307005]["EventType"] = 170
	tBackpackLetter_Activity[3307005]["DataType"] = 90
	tBackpackLetter_Activity[3307005]["RewardData"] = 1
	tBackpackLetter_Activity[3307005]["RewardItem"] = 3307005
	tBackpackLetter_Activity[3307005]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307005]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307005]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3307005]["MsgBox"] = 0
	tBackpackLetter_Activity[3307005]["Cultivation"] = 30
	tBackpackLetter_Activity[3307005]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3307005]["Pathfind"]["PosX"] = 381
	-- tBackpackLetter_Activity[3307005]["Pathfind"]["PosY"] = 445
	-- tBackpackLetter_Activity[3307005]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3307005]["Pathfind"]["NpcId"] = 21351
	tBackpackLetter_Activity[3307005]["GlobalId"] = 54689
	tBackpackLetter_Activity[3307005]["OldSever"] = 1
------------------------------------------------------------------------------------
--Name：       180514[英文征服][活动脚本]埃及队球衣上架(5.17)
--Creator:     cy
--Created:     2018/05/15
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3308930] = {}
	tBackpackLetter_Activity[3308930]["ActivityTime"] = tActivityTime["ItemTime"]["ActivityTime"] 
	tBackpackLetter_Activity[3308930]["EventType"] = 176
	tBackpackLetter_Activity[3308930]["DataType"] = 95
	tBackpackLetter_Activity[3308930]["RewardData"] = 1
	tBackpackLetter_Activity[3308930]["RewardItem"] = 3308930
	tBackpackLetter_Activity[3308930]["RewardAttr"] = "0 1"
------------------------------------------------------------------------------------
--Name：            180515[英文征服][活动脚本]6月世界杯竞猜活动线上部分制作
--Creator:      吴帆
--Created:     2018/05/15
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3308949] = {}
	--活动时间
	tBackpackLetter_Activity[3308949]["ActivityTime"] = tActivityTime["WorldCupGambling"]["ActivityTime"]
	tBackpackLetter_Activity[3308949]["EventType"] = 176
	tBackpackLetter_Activity[3308949]["DataType"] = 97
	tBackpackLetter_Activity[3308949]["RewardData"] = 1
	tBackpackLetter_Activity[3308949]["RewardItem"] = 3308949
	tBackpackLetter_Activity[3308949]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3308949]["Cultivation"] = 30
	tBackpackLetter_Activity[3308949]["NeedLevel"] = 80
	tBackpackLetter_Activity[3308949]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity[3308949]["Pathfind"] = {}
	tBackpackLetter_Activity[3308949]["Pathfind"]["NpcId"] = 21499
	tBackpackLetter_Activity[3308949]["Pathfind"]["PosX"] = 362
	tBackpackLetter_Activity[3308949]["Pathfind"]["PosY"] = 435
	tBackpackLetter_Activity[3308949]["Pathfind"]["MapId"] = 1002
------------------------------------------------------------------------------------
--Name:		180528[英文征服][活动脚本]6月以旧换新活动制作
--Purpose:	6月以旧换新活动制作
--Creator: 	傅伟龙
--Created:	2018/05/28
------------------------------------------------------------------------------------	
	tBackpackLetter_Activity[3309111] = {}
	tBackpackLetter_Activity[3309111]["ActivityTime"] = tActivityTime["OldForNewServiceAct"]["ActTime"]
	tBackpackLetter_Activity[3309111]["EventType"] = 177
	tBackpackLetter_Activity[3309111]["DataType"] = 63
	tBackpackLetter_Activity[3309111]["RewardData"] = 1
	tBackpackLetter_Activity[3309111]["RewardItem"] = 3309111
	tBackpackLetter_Activity[3309111]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309111]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309111]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3309111]["MsgBox"] = 0
	tBackpackLetter_Activity[3309111]["Cultivation"] = 30
	tBackpackLetter_Activity[3309111]["Pathfind"] = {}
	tBackpackLetter_Activity[3309111]["Pathfind"]["PosX"] = 375
	tBackpackLetter_Activity[3309111]["Pathfind"]["PosY"] = 436
	tBackpackLetter_Activity[3309111]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3309111]["Pathfind"]["NpcId"] = 22975

------------------------------------------------------------------------------------
--Name:		180504[简体征服][活动脚本]2018世界杯活动制作
--Creator: 	兰瑞妹
--Created:	2018/05/06
------------------------------------------------------------------------------------
	-- 3308880,'征服足协纪念杯'
	tBackpackLetter_Activity[3308880] = {}
	tBackpackLetter_Activity[3308880]["ActivityTime"] = tActivityTime["WorldCupActivities"]["ActivityTime"]
	tBackpackLetter_Activity[3308880]["EventType"] = 177
	tBackpackLetter_Activity[3308880]["DataType"] = 01
	tBackpackLetter_Activity[3308880]["RewardData"] = 1
	tBackpackLetter_Activity[3308880]["RewardItem"] = 3308880
	tBackpackLetter_Activity[3308880]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3308880]["NeedLevel"] = 80
	tBackpackLetter_Activity[3308880]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3308880]["Cultivation"] = 30
	tBackpackLetter_Activity[3308880]["Pathfind"] = {}
	tBackpackLetter_Activity[3308880]["Pathfind"]["PosX"] = 320
	tBackpackLetter_Activity[3308880]["Pathfind"]["PosY"] = 443
	tBackpackLetter_Activity[3308880]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3308880]["Pathfind"]["NpcId"] = 22944
	tBackpackLetter_Activity[3308880]["Web"] = "http://co.99.com/guide/event/2018/worldcupevent1/"
------------------------------------------------------------------------------------
--Name:		180514[英文征服][活动脚本]6月金币转盘活动
--Purpose:	6月金币转盘活动
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
	
	tBackpackLetter_Activity[3309019] = {}
	tBackpackLetter_Activity[3309019]["ActivityTime"] = tActivityTime["JuneMoneyTurntableAct"]["ActTime"]
	tBackpackLetter_Activity[3309019]["EventType"] = 177
	tBackpackLetter_Activity[3309019]["DataType"] = 15
	tBackpackLetter_Activity[3309019]["RewardData"] = 1
	tBackpackLetter_Activity[3309019]["RewardItem"] = 3309019
	tBackpackLetter_Activity[3309019]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309019]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309019]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3309019]["Cultivation"] = 30
	
	tBackpackLetter_Activity[3309019]["Pathfind"] = {}
	tBackpackLetter_Activity[3309019]["Pathfind"]["PosX"] = 340
	tBackpackLetter_Activity[3309019]["Pathfind"]["PosY"] = 463
	tBackpackLetter_Activity[3309019]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3309019]["Pathfind"]["NpcId"] = 22965
	
	
------------------------------------------------------------------------------------
--Name:			180619[英文征服][活动脚本]暑期星陨石促销制作
--Purpose:		星陨石促销
--Creator:		wzh
--Created:		2018/06/19
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3309759] = {}
	tBackpackLetter_Activity[3309759]["ActivityTime"] = tActivityTime["StarStoneSale"]["ActivityTime"]
	tBackpackLetter_Activity[3309759]["EventType"] = 178
	tBackpackLetter_Activity[3309759]["DataType"] = 58
	tBackpackLetter_Activity[3309759]["RewardData"] = 1
	tBackpackLetter_Activity[3309759]["RewardItem"] = 3309759
	tBackpackLetter_Activity[3309759]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309759]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309759]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3309759]["MsgBox"] = 0
	tBackpackLetter_Activity[3309759]["Cultivation"] = 30
	tBackpackLetter_Activity[3309759]["Pathfind"] = {}
	tBackpackLetter_Activity[3309759]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3309759]["Pathfind"]["NpcId"] = 23003
	
	

	
	
------------------------------------------------------------------------------------
--Name：		180514[简体征服][活动脚本]暑期小活动制作
--Creator:		wzh
--Created:		2018/05/17
------------------------------------------------------------------------------------
	-- tItemFace[3309025] = 1516
	-- tBackpackLetter_Activity[3309025] = {}
	-- tBackpackLetter_Activity[3309025]["ActivityTime"] = tActivityTime["SummerActivityShop"]["ActivityTime"]
	-- tBackpackLetter_Activity[3309025]["EventType"] = 177
	-- tBackpackLetter_Activity[3309025]["DataType"] = 41
	-- tBackpackLetter_Activity[3309025]["RewardData"] = 1
	-- tBackpackLetter_Activity[3309025]["RewardItem"] = 3309025
	-- tBackpackLetter_Activity[3309025]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3309025]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3309025]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3309025]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3309025]["Pathfind"]["NpcId"] = 20625
	-- tBackpackLetter_Activity[3309025]["Cultivation"] = 30
	
------------------------------------------------------------------------------------
--Name:		180620[英文征服][活动脚本]暑期签到有礼活动制作
--Purpose:	暑期签到有礼活动制作
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3309772] = {}
	tBackpackLetter_Activity[3309772]["ActivityTime"] = tActivityTime["SummerSignInAct"]["ActTime"]
	tBackpackLetter_Activity[3309772]["EventType"] = 178
	tBackpackLetter_Activity[3309772]["DataType"] = 62
	tBackpackLetter_Activity[3309772]["RewardData"] = 1
	tBackpackLetter_Activity[3309772]["RewardItem"] = 3309772
	tBackpackLetter_Activity[3309772]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309772]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309772]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3309772]["MsgBox"] = 0
	tBackpackLetter_Activity[3309772]["Cultivation"] = 30
	tBackpackLetter_Activity[3309772]["Pathfind"] = {}
	tBackpackLetter_Activity[3309772]["Pathfind"]["PosX"] = 340
	tBackpackLetter_Activity[3309772]["Pathfind"]["PosY"] = 460
	tBackpackLetter_Activity[3309772]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3309772]["Pathfind"]["NpcId"] = 23007


	
------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]练气狂欢周
--Creator:		翁清海
--Created:		2018/06/14
------------------------------------------------------------------------------------
	-- 3309723,'盛夏练气召集令'
	tBackpackLetter_Activity[3309723] = {}
	tBackpackLetter_Activity[3309723]["ActivityTime"] = tActivityTime["StrengthCrazyWeek"]["ActivityTime"]
	tBackpackLetter_Activity[3309723]["EventType"] = 178
	tBackpackLetter_Activity[3309723]["DataType"] = 02
	tBackpackLetter_Activity[3309723]["RewardData"] = 1
	tBackpackLetter_Activity[3309723]["RewardItem"] = 3309723
	tBackpackLetter_Activity[3309723]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309723]["NeedLevel"] = 15
	tBackpackLetter_Activity[3309723]["NeedMetempsychosis"] = 2
	
	tBackpackLetter_Activity[3309723]["Cultivation"] = 30
	tBackpackLetter_Activity[3309723]["Pathfind"] = {}
	tBackpackLetter_Activity[3309723]["Pathfind"]["NpcId"] = 22995
	tItemFace[3309723] = 1605
	

------------------------------------------------------------------------------------
--Name:			180606[简体征服][活动脚本]点石成金活动(6.14-6.20)
--Creator:		黄啸
--Created:		2018-06-06
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3006583] = {}
	tBackpackLetter_Activity[3006583]["NewActivityTime"] = tActivityTime["Goldstone"]["ActTime"]
	tBackpackLetter_Activity[3006583]["EventType"] = 134
	tBackpackLetter_Activity[3006583]["DataType"] = 94
	tBackpackLetter_Activity[3006583]["RewardData"] = 1
	tBackpackLetter_Activity[3006583]["RewardItem"] = 3006583
	tBackpackLetter_Activity[3006583]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3006583]["Cultivation"] = 30
	tBackpackLetter_Activity[3006583]["Pathfind"] = {}
	tBackpackLetter_Activity[3006583]["Pathfind"]["NpcId"] = 18535
	tBackpackLetter_Activity[3006583]["GlobalId"] = 53212
	tBackpackLetter_Activity[3006583]["GlobalData"] = 1
	tBackpackLetter_Activity[3006583]["GlobalPos"] = 0

	
------------------------------------------------------------------------------------
--Name:			180606[简体征服][活动脚本]金币服点石成金活动(6.14-6.20)
--Creator:		黄啸
--Created:		2018-06-06
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3319354] = {}
	-- tBackpackLetter_Activity[3319354]["NewActivityTime"] = tActivityTime["GoldServeGoldstone"]["ActTime"]
	tBackpackLetter_Activity[3319354]["NewActivityTime"] = tActivityTime["GoldServeGoldstone"]["ActTime"]
	tBackpackLetter_Activity[3319354]["EventType"] = 189
	tBackpackLetter_Activity[3319354]["DataType"] = 48
	tBackpackLetter_Activity[3319354]["RewardData"] = 1
	tBackpackLetter_Activity[3319354]["RewardItem"] = 3319354
	tBackpackLetter_Activity[3319354]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319354]["Cultivation"] = 30
	tBackpackLetter_Activity[3319354]["Pathfind"] = {}
	tBackpackLetter_Activity[3319354]["Pathfind"]["NpcId"] = 23704
	tBackpackLetter_Activity[3319354]["GlobalId"] = 54008
	tBackpackLetter_Activity[3319354]["GlobalData"] = 1
	tBackpackLetter_Activity[3319354]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name:			180718[英文征服][任务脚本]微端domino邀请函制作
--Creator:		许乐
--Created:		2018-07-18
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3310185] = {}
	tBackpackLetter_Activity[3310185]["ActivityTime"] = tActivityTime["DominuoLetter"]["ActTime"]
	tBackpackLetter_Activity[3310185]["EventType"] = 179
	tBackpackLetter_Activity[3310185]["DataType"] = 68
	tBackpackLetter_Activity[3310185]["RewardData"] = 1
	tBackpackLetter_Activity[3310185]["RewardItem"] = 3310185
	tBackpackLetter_Activity[3310185]["RewardAttr"] = "0 1"
	
------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]盛夏特惠大狂欢
--Purpose:	盛夏特惠大狂欢
--Creator: 	茅志伟
--Created:	2018/06/23
------------------------------------------------------------------------------------
	-- 盛夏特惠邀请函
	tItemFace[3309940] = 1633
	tBackpackLetter_Activity[3309940] = {}
	--活动时间
	tBackpackLetter_Activity[3309940]["ActivityTime"] = tActivityTime["SummerSpecialBenefit"]["ActivityTime"]
	tBackpackLetter_Activity[3309940]["EventType"] = 178
	tBackpackLetter_Activity[3309940]["DataType"] = 74
	tBackpackLetter_Activity[3309940]["RewardData"] = 1
	tBackpackLetter_Activity[3309940]["RewardItem"] = 3309940
	tBackpackLetter_Activity[3309940]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309940]["Cultivation"] = 30
	tBackpackLetter_Activity[3309940]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309940]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity[3309940]["Pathfind"] = {}
	tBackpackLetter_Activity[3309940]["Pathfind"]["NpcId"] = 23011
	tBackpackLetter_Activity[3309940]["Pathfind"]["PosX"] = 340
	tBackpackLetter_Activity[3309940]["Pathfind"]["PosY"] = 460
	tBackpackLetter_Activity[3309940]["Pathfind"]["MapId"] = 1002
------------------------------------------------------------------------------------
--Name:		180702[英文征服][活动脚本]7月第一届CO地图争霸活动
--Purpose:	7月第一届CO地图争霸活动
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3310092] = {}
	tBackpackLetter_Activity[3310092]["ActivityTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
	tBackpackLetter_Activity[3310092]["EventType"] = 179
	tBackpackLetter_Activity[3310092]["DataType"] = 57
	tBackpackLetter_Activity[3310092]["RewardData"] = 1
	tBackpackLetter_Activity[3310092]["RewardItem"] = 3310092
	tBackpackLetter_Activity[3310092]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310092]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310092]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310092]["MsgBox"] = 0
	tBackpackLetter_Activity[3310092]["Cultivation"] = 30
	tBackpackLetter_Activity[3310092]["Pathfind"] = {}
	tBackpackLetter_Activity[3310092]["Pathfind"]["PosX"] = 355
	tBackpackLetter_Activity[3310092]["Pathfind"]["PosY"] = 461
	tBackpackLetter_Activity[3310092]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3310092]["Pathfind"]["NpcId"] = 23078


------------------------------------------------------------------------------------
--Name：            180703[英文征服][活动脚本]捐赠冲刺周线上制作
--Creator:      杨艳
--Created:     2018/07/03
------------------------------------------------------------------------------------
tItemFace[3310112] = 1351
tBackpackLetter_Activity[3310112] = {}
-- 活动时间
tBackpackLetter_Activity[3310112]["ActivityTime"] = tActivityTime["DonateWeek"]["ActivityTime"]
tBackpackLetter_Activity[3310112]["EventType"] = 179
tBackpackLetter_Activity[3310112]["DataType"] = 58
tBackpackLetter_Activity[3310112]["RewardData"] = 1
tBackpackLetter_Activity[3310112]["RewardItem"] = 3310112
tBackpackLetter_Activity[3310112]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3310112]["Cultivation"] = 30
tBackpackLetter_Activity[3310112]["NeedLevel"] = 80
tBackpackLetter_Activity[3310112]["NeedMetempsychosis"] = 0
-- 寻路              
tBackpackLetter_Activity[3310112]["Pathfind"] = {}
tBackpackLetter_Activity[3310112]["Pathfind"]["NpcId"] = 23080
tBackpackLetter_Activity[3310112]["Pathfind"]["PosX"] = 339
tBackpackLetter_Activity[3310112]["Pathfind"]["PosY"] = 482
tBackpackLetter_Activity[3310112]["Pathfind"]["MapId"] = 1002

	
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]新赌神活动制作
--Creator:		翁清海
--Created:		2018/04/28
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3308662] = {}
	-- --活动时间
	-- tBackpackLetter_Activity[3308662]["ActivityTime"] = tActivityTime["NewGodOfGamblers"]["NewActivity"]
	-- tBackpackLetter_Activity[3308662]["EventType"] = 176
	-- tBackpackLetter_Activity[3308662]["DataType"] = 60
	-- tBackpackLetter_Activity[3308662]["RewardData"] = 1
	-- tBackpackLetter_Activity[3308662]["RewardItem"] = 3308662
	-- tBackpackLetter_Activity[3308662]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3308662]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3308662]["NeedMetempsychosis"] = 0
	-- -- 寻路
	-- tBackpackLetter_Activity[3308662]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3308662]["Pathfind"]["NpcId"] = 21483
	-- --tBackpackLetter_Activity[3308662]["Web"] = "http://zf.99.com/activity/2018/raiders/0515/"
	
	-- tBackpackLetter_Activity[3308662]["GlobalId"] = 52984
	-- tBackpackLetter_Activity[3308662]["GlobalData"] = 1
	-- tBackpackLetter_Activity[3308662]["GlobalPos"] = 0
	-- tItemFace[3308662] = 1474

	tBackpackLetter_Activity[3310238] = {}
	--活动时间
	tBackpackLetter_Activity[3310238]["ActivityTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
	tBackpackLetter_Activity[3310238]["EventType"] = 181
	tBackpackLetter_Activity[3310238]["DataType"] = 48
	tBackpackLetter_Activity[3310238]["RewardData"] = 1
	tBackpackLetter_Activity[3310238]["RewardItem"] = 3310238
	tBackpackLetter_Activity[3310238]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310238]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310238]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3310238]["Pathfind"] = {}
	tBackpackLetter_Activity[3310238]["Pathfind"]["NpcId"] = 22865
	--tBackpackLetter_Activity[3310238]["Web"] = "http://zf.99.com/activity/2018/raiders/0515/"
	
	tBackpackLetter_Activity[3310238]["GlobalId"] = 52914
	tBackpackLetter_Activity[3310238]["GlobalData"] = 1
	tBackpackLetter_Activity[3310238]["GlobalPos"] = 0
	tItemFace[3310238] = 1474


------------------------------------------------------------------------------------
--Name:			180720[英文征服][活动脚本]7月新服活动
--Creator:		黄啸
--Created:		2018-07-20
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3309967] = {}
	-- tBackpackLetter_Activity[3309967]["ActivityTime"] = tActivityTime["JulyNewserveAct"]["LongActiveTime"]
	-- tBackpackLetter_Activity[3309967]["EventType"] = 178
	-- tBackpackLetter_Activity[3309967]["DataType"] = 76
	-- tBackpackLetter_Activity[3309967]["RewardData"] = 1
	-- tBackpackLetter_Activity[3309967]["RewardItem"] = 3309967
	-- tBackpackLetter_Activity[3309967]["RewardAttr"] = "0 1"

	

------------------------------------------------------------------------------------
--Name:			180302[简体征服][活动脚本]3月幸运树活动
--Purpose:		宝树迎春
--Creator:		wzh
--Created:		2018/03/02
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3307581] = {}
	--活动时间
	tBackpackLetter_Activity[3307581]["ActivityTime"] = tActivityTime["LuckyTree"]["ActivityTime"]
	tBackpackLetter_Activity[3307581]["EventType"] = 174
	tBackpackLetter_Activity[3307581]["DataType"] = 48
	tBackpackLetter_Activity[3307581]["RewardData"] = 1
	tBackpackLetter_Activity[3307581]["RewardItem"] = 3307581
	tBackpackLetter_Activity[3307581]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307581]["Cultivation"] = 30
	tBackpackLetter_Activity[3307581]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307581]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity[3307581]["Pathfind"] = {}
	tBackpackLetter_Activity[3307581]["Pathfind"]["NpcId"] = 22669


	
------------------------------------------------------------------------------------
--Name:		180718[英文征服][活动脚本]抽奖目标榜活动
--Creator: 	茅志伟
--Created:	2018/07/18
------------------------------------------------------------------------------------
	tItemFace[3310186] = 1351
	tBackpackLetter_Activity[3310186] = {}
	--活动时间
	tBackpackLetter_Activity[3310186]["ActivityTime"] = tActivityTime["tTargetList"]["ActivityTime"]
	tBackpackLetter_Activity[3310186]["EventType"] = 179
	tBackpackLetter_Activity[3310186]["DataType"] = 71
	tBackpackLetter_Activity[3310186]["RewardData"] = 1
	tBackpackLetter_Activity[3310186]["RewardItem"] = 3310186
	tBackpackLetter_Activity[3310186]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310186]["Cultivation"] = 30
	tBackpackLetter_Activity[3310186]["NeedLevel"] = 0
	tBackpackLetter_Activity[3310186]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3310186]["Pathfind"] = {}
	tBackpackLetter_Activity[3310186]["Pathfind"]["NpcId"] = 23087
	-- tBackpackLetter_Activity[3310186]["Pathfind"]["PosX"] = 356
	-- tBackpackLetter_Activity[3310186]["Pathfind"]["PosY"] = 414
	-- tBackpackLetter_Activity[3310186]["Pathfind"]["MapId"] = 1002
------------------------------------------------------------------------------------
--Name:			170703[简体征服][活动脚本]七夕节小活动（8.16-8.22）
--Purpose:		七夕节小活动
--Creator:		cy
--Created:		2018/6/19
------------------------------------------------------------------------------------
	tItemFace[3309724] = 1560
	tBackpackLetter_Activity[3309724] = {}
	--活动时间
	tBackpackLetter_Activity[3309724]["ActivityTime"] = tActivityTime["QixiActivity"]["ActivityTime"]
	tBackpackLetter_Activity[3309724]["EventType"] = 181
	tBackpackLetter_Activity[3309724]["DataType"] = 77
	tBackpackLetter_Activity[3309724]["RewardData"] = 1
	tBackpackLetter_Activity[3309724]["RewardItem"] = 3309724
	tBackpackLetter_Activity[3309724]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309724]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309724]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3309724]["Pathfind"] = {}
	tBackpackLetter_Activity[3309724]["Pathfind"]["NpcId"] = 20879

------------------------------------------------------------------------------------
--Name：            180313[简体征服][活动脚本]神器重铸活动
--Creator:      李甲
--Created:     2018/03/13
------------------------------------------------------------------------------------
tItemFace[3307715] = 1637
tBackpackLetter_Activity[3307715] = {}
tBackpackLetter_Activity[3307715]["ActivityTime"] = tActivityTime["tNormalXuanBaoActivity"]["ActivityTime"]
tBackpackLetter_Activity[3307715]["EventType"] = 175
tBackpackLetter_Activity[3307715]["DataType"] = 15
tBackpackLetter_Activity[3307715]["RewardData"] = 1
tBackpackLetter_Activity[3307715]["RewardItem"] = 3307715
tBackpackLetter_Activity[3307715]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3307715]["Cultivation"] = 30
tBackpackLetter_Activity[3307715]["NeedLevel"] = 120
tBackpackLetter_Activity[3307715]["NeedMetempsychosis"] = 2
-- 寻路
tBackpackLetter_Activity[3307715]["Pathfind"] = {}
tBackpackLetter_Activity[3307715]["Pathfind"]["NpcId"] = 21453
tBackpackLetter_Activity[3307715]["Pathfind"]["PosX"] = 374
tBackpackLetter_Activity[3307715]["Pathfind"]["PosY"] = 436
tBackpackLetter_Activity[3307715]["Pathfind"]["MapId"] = 1002
------------------------------------------------------------------------------------
--Name：            180308[英文征服][任务脚本]第一届战旗之王积分赛
--Creator:      茅志伟
--Created:     2018/07/23
------------------------------------------------------------------------------------
	tItemFace[3307694] = 1389
	tBackpackLetter_Activity[3307694] = {}
	--活动时间
	tBackpackLetter_Activity[3307694]["ActivityTime"] = tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"]
	tBackpackLetter_Activity[3307694]["EventType"] = 174
	tBackpackLetter_Activity[3307694]["DataType"] = 77
	tBackpackLetter_Activity[3307694]["RewardData"] = 1
	tBackpackLetter_Activity[3307694]["RewardItem"] = 3307694
	tBackpackLetter_Activity[3307694]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3307694]["Cultivation"] = 30
	tBackpackLetter_Activity[3307694]["NeedLevel"] = 80
	tBackpackLetter_Activity[3307694]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3307694]["Pathfind"] = {}
	tBackpackLetter_Activity[3307694]["Pathfind"]["NpcId"] = 21451
	tBackpackLetter_Activity[3307694]["Pathfind"]["PosX"] = 339
	tBackpackLetter_Activity[3307694]["Pathfind"]["PosY"] = 467
	tBackpackLetter_Activity[3307694]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3307694]["GlobalId"] = 52942
	tBackpackLetter_Activity[3307694]["GlobalData"] = 0
	tBackpackLetter_Activity[3307694]["OldSever"] = 1
	

------------------------------------------------------------------------------------
--Name:			161231[英文征服][活动脚本]连环夺宝活动
--Creator:		兰瑞妹
--Created:		2016/12/31
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3302119] = {}
	tBackpackLetter_Activity[3302119]["ActivityTime"] = tActivityTime["SerialIndiana"]["Activity"]
	tBackpackLetter_Activity[3302119]["EventType"] = 156
	tBackpackLetter_Activity[3302119]["DataType"] = 28
	tBackpackLetter_Activity[3302119]["RewardData"] = 1
	tBackpackLetter_Activity[3302119]["RewardItem"] = 3302119
	tBackpackLetter_Activity[3302119]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3302119]["Cultivation"] = 30
	tBackpackLetter_Activity[3302119]["NeedLevel"] = 80
	tBackpackLetter_Activity[3302119]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3302119]["Pathfind"] = {}
	tBackpackLetter_Activity[3302119]["Pathfind"]["PosX"] = 368
	tBackpackLetter_Activity[3302119]["Pathfind"]["PosY"] = 436
	tBackpackLetter_Activity[3302119]["Pathfind"]["MapId"] = 1002
	tBackpackLetter_Activity[3302119]["Pathfind"]["NpcId"] = 20228
	
------------------------------------------------------------------------------------
--Name:		180626[简体征服][任务脚本]调整版本国境调整-内功秘籍
--Creator:		许乐
--Created:		2018/06/26
------------------------------------------------------------------------------------
	tItemFace[3309944] = 1561
	tBackpackLetter_Activity[3309944] = {}
	tBackpackLetter_Activity[3309944]["EventType"] = 178
	tBackpackLetter_Activity[3309944]["DataType"] = 79
	tBackpackLetter_Activity[3309944]["RewardData"] = 1
	tBackpackLetter_Activity[3309944]["RewardItem"] = 3309944
	tBackpackLetter_Activity[3309944]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309944]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309944]["NeedMetempsychosis"] = 2
	tBackpackLetter_Activity[3309944]["Pathfind"] = {}
	tBackpackLetter_Activity[3309944]["Pathfind"]["NpcId"] = 23021
	


------------------------------------------------------------------------------------
--Name：            180820[英文征服][活动脚本]阿拉丁神灯活动制作
--Creator:      蔡颖静
--Created:     2018/08/20
------------------------------------------------------------------------------------
	tItemFace[3310566] = 2165
tBackpackLetter_Activity[3310566] = {}
tBackpackLetter_Activity[3310566]["ActivityTime"] = tActivityTime["LampofAladdin"]["ActTime"]
tBackpackLetter_Activity[3310566]["EventType"] = 182
tBackpackLetter_Activity[3310566]["DataType"] = 23
tBackpackLetter_Activity[3310566]["RewardData"] = 1
tBackpackLetter_Activity[3310566]["RewardItem"] = 3310566
tBackpackLetter_Activity[3310566]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3310566]["Cultivation"] = 30
tBackpackLetter_Activity[3310566]["NeedLevel"] = 80
tBackpackLetter_Activity[3310566]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity[3310566]["Pathfind"] = {}
tBackpackLetter_Activity[3310566]["Pathfind"]["NpcId"] = 23165
tBackpackLetter_Activity[3310566]["Pathfind"]["PosX"] = 367
tBackpackLetter_Activity[3310566]["Pathfind"]["PosY"] = 451
tBackpackLetter_Activity[3310566]["Pathfind"]["MapId"] = 1002
	
	------------------------------------------------------------------------------------
--Name：            180816[英文征服][活动脚本]9月月卡包（09.04-09.20）
--Creator:      王贤
--Created:     2018/08/16
------------------------------------------------------------------------------------
-- 初秋特惠周卡礼盒
-- tBackpackLetter_Activity[3310570] = {}
-- tBackpackLetter_Activity[3310570]["ActivityTime"] = tActivityTime["SeptemberParce"]["AtivityTime"]
-- tBackpackLetter_Activity[3310570]["EventType"] = 182
-- tBackpackLetter_Activity[3310570]["DataType"] = 25
-- tBackpackLetter_Activity[3310570]["RewardData"] = 1
-- tBackpackLetter_Activity[3310570]["RewardItem"] = 3310570
-- tBackpackLetter_Activity[3310570]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3310570]["NeedLevel"] = 80
-- tBackpackLetter_Activity[3310570]["NeedMetempsychosis"] = 0

-- 初秋特惠月卡礼盒
-- tBackpackLetter_Activity[3310574] = {}
-- tBackpackLetter_Activity[3310574]["ActivityTime"] = tActivityTime["SeptemberParce"]["AtivityTime"]
-- tBackpackLetter_Activity[3310574]["EventType"] = 182
-- tBackpackLetter_Activity[3310574]["DataType"] = 26
-- tBackpackLetter_Activity[3310574]["RewardData"] = 1
-- tBackpackLetter_Activity[3310574]["RewardItem"] = 3310574
-- tBackpackLetter_Activity[3310574]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3310574]["NeedLevel"] = 80
-- tBackpackLetter_Activity[3310574]["NeedMetempsychosis"] = 0

-- 2019.03.19复用新增 背包信
tBackpackLetter_Activity[3312140] = {}
tBackpackLetter_Activity[3312140]["ActivityTime"] = tActivityTime["SeptemberParce"]["AtivityTime"]
tBackpackLetter_Activity[3312140]["EventType"] = 192
tBackpackLetter_Activity[3312140]["DataType"] = 38
tBackpackLetter_Activity[3312140]["RewardData"] = 1
tBackpackLetter_Activity[3312140]["RewardItem"] = 3312140
tBackpackLetter_Activity[3312140]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3312140]["NeedLevel"] = 80
tBackpackLetter_Activity[3312140]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3312140]["Cultivation"] = 30
tBackpackLetter_Activity[3312140]["Pathfind"] = {}
tBackpackLetter_Activity[3312140]["Pathfind"]["NpcId"] = 23831

------------------------------------------------------------------------------------
--Name:			170620[阿语征服][活动脚本]2017伊历新年活动
--Creator:		刘益辉
--Created:		2017/06/04
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3004687] = {}
	-- tBackpackLetter_Activity[3004687]["ActivityTime"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	-- tBackpackLetter_Activity[3004687]["EventType"] = 128
	-- tBackpackLetter_Activity[3004687]["DataType"] = 77
	-- tBackpackLetter_Activity[3004687]["RewardData"] = 1
	-- tBackpackLetter_Activity[3004687]["RewardItem"] = 3004687
	-- tBackpackLetter_Activity[3004687]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3004687]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3004687]["NeedMetempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            180626[简体征服][活动脚本]调整版本6-帮派矿洞玩法-其他NPC
--Creator:      王贤
--Created:     2018/06/26
------------------------------------------------------------------------------------
	tItemFace[3310017] = 1565
	tBackpackLetter_Activity[3310017] = {}
	tBackpackLetter_Activity[3310017]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tBackpackLetter_Activity[3310017]["EventType"] = 179
	tBackpackLetter_Activity[3310017]["DataType"] = 38
	tBackpackLetter_Activity[3310017]["RewardData"] = 1
	tBackpackLetter_Activity[3310017]["RewardItem"] = 3310017
	tBackpackLetter_Activity[3310017]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310017]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310017]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310017]["Cultivation"] = 30
	tBackpackLetter_Activity[3310017]["Pathfind"] = {}
	tBackpackLetter_Activity[3310017]["Pathfind"]["NpcId"] = 17980
	
------------------------------------------------------------------------------------
--Name:		180823[英文征服][活动脚本]9月促销活动
--Purpose:	9月促销活动
--Creator: 	茅志伟
--Created:	2018/08/23
------------------------------------------------------------------------------------
	tItemFace[3310628] = 685
	tBackpackLetter_Activity[3310628] = {}
	--活动时间
	tBackpackLetter_Activity[3310628]["ActivityTime"] = tActivityTime["FallPromotion"]["ActivityTime"]
	tBackpackLetter_Activity[3310628]["EventType"] = 182
	tBackpackLetter_Activity[3310628]["DataType"] = 46
	tBackpackLetter_Activity[3310628]["RewardData"] = 1
	tBackpackLetter_Activity[3310628]["RewardItem"] = 3310628
	tBackpackLetter_Activity[3310628]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310628]["Cultivation"] = 30
	tBackpackLetter_Activity[3310628]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310628]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3310628]["Pathfind"] = {}
	tBackpackLetter_Activity[3310628]["Pathfind"]["NpcId"] = 23171
	tBackpackLetter_Activity[3310628]["Pathfind"]["PosX"] = 331
	tBackpackLetter_Activity[3310628]["Pathfind"]["PosY"] = 436
	tBackpackLetter_Activity[3310628]["Pathfind"]["MapId"] = 1002
------------------------------------------------------------------------------------
--Name:		171211[简体征服][任务脚本]新跨服赛马活动
--Creator: 	兰瑞妹
--Created:	2017/12/15
------------------------------------------------------------------------------------
	-- 3306998,'赛马大会邀请函'
	tBackpackLetter_Activity[3306998] = {}
	tBackpackLetter_Activity[3306998]["ActivityTime"] = tActivityTime["CrossServerRacing"]["ActivityTime"]
	tBackpackLetter_Activity[3306998]["EventType"] = 171
	tBackpackLetter_Activity[3306998]["DataType"] = 45
	tBackpackLetter_Activity[3306998]["RewardData"] = 1
	tBackpackLetter_Activity[3306998]["RewardItem"] = 3306998
	tBackpackLetter_Activity[3306998]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3306998]["NeedLevel"] = 80
	tBackpackLetter_Activity[3306998]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3306998]["Cultivation"] = 30
	tBackpackLetter_Activity[3306998]["Pathfind"] = {}
	tBackpackLetter_Activity[3306998]["Pathfind"]["NpcId"] = 22507
------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]血炼大乱斗
--Creator: 		翁清海
--Created:		2018/05/29
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3309609] = {}
	tBackpackLetter_Activity[3309609]["ActivityTime"] = tActivityTime["PkActivity"]
	tBackpackLetter_Activity[3309609]["EventType"] = 177
	tBackpackLetter_Activity[3309609]["DataType"] = 64
	tBackpackLetter_Activity[3309609]["RewardData"] = 1
	tBackpackLetter_Activity[3309609]["RewardItem"] = 3309609
	tBackpackLetter_Activity[3309609]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309609]["NeedLevel"] = 100
	tBackpackLetter_Activity[3309609]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3309609]["Cultivation"] = 30
	tBackpackLetter_Activity[3309609]["Pathfind"] = {}
	tBackpackLetter_Activity[3309609]["Pathfind"]["NpcId"] = 11015
	tItemFace[3309609] = 526

	------------------------------------------------------------------------------------
--Name:			180323[简体征服][活动脚本]百层塔活动
--Creator:		cy
--Created:		2018-06-05
------------------------------------------------------------------------------------
	tItemFace[3309610] = 1521
	tBackpackLetter_Activity[3309610] = {}
	tBackpackLetter_Activity[3309610]["ActivityTime"] = tActivityTime["BossHunderdTower"]["Activity"]
	tBackpackLetter_Activity[3309610]["EventType"] = 177
	tBackpackLetter_Activity[3309610]["DataType"] = 65
	tBackpackLetter_Activity[3309610]["RewardData"] = 1
	tBackpackLetter_Activity[3309610]["RewardItem"] = 3309610
	tBackpackLetter_Activity[3309610]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309610]["NeedLevel"] = 100
	tBackpackLetter_Activity[3309610]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3309610]["Cultivation"] = 30
	tBackpackLetter_Activity[3309610]["Pathfind"] = {}
	tBackpackLetter_Activity[3309610]["Pathfind"]["NpcId"] = 18965
	

------------------------------------------------------------------------------------
--Name：            180820[英文征服][活动脚本]9月自创福利包
--Creator:      黄啸
--Created:     2018/08/22
------------------------------------------------------------------------------------
-- tBackpackLetter_Activity[3310587] = {}
-- tBackpackLetter_Activity[3310587]["ActivityTime"] = tActivityTime["SeptemberLuckybagtime"]["Activitytime"]
-- tBackpackLetter_Activity[3310587]["EventType"] = 182
-- tBackpackLetter_Activity[3310587]["DataType"] = 24
-- tBackpackLetter_Activity[3310587]["RewardData"] = 1
-- tBackpackLetter_Activity[3310587]["RewardItem"] = 3310587
-- tBackpackLetter_Activity[3310587]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3310587]["Cultivation"] = 30
-- tBackpackLetter_Activity[3310587]["GlobalId"] = 52943

-- 寻路
-- tBackpackLetter_Activity[3310587]["Pathfind"] = {}
-- tBackpackLetter_Activity[3310587]["Pathfind"]["NpcId"] = 23166

	------------------------------------------------------------------------------------
--Name：            180821[英文征服][活动脚本]英文征服9月帮派PVP活动
--Creator:      杨艳
--Created:     2018/08/21
------------------------------------------------------------------------------------
tItemFace[3310608] = 1753
tBackpackLetter_Activity[3310608] = {}
--活动时间
tBackpackLetter_Activity[3310608]["ActivityTime"] = tActivityTime["BigGangFight"]["ActivityTime"]
tBackpackLetter_Activity[3310608]["EventType"] = 192
tBackpackLetter_Activity[3310608]["DataType"] = 80
tBackpackLetter_Activity[3310608]["RewardData"] = 1
tBackpackLetter_Activity[3310608]["RewardItem"] = 3310608
tBackpackLetter_Activity[3310608]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3310608]["Cultivation"] = 30
tBackpackLetter_Activity[3310608]["NeedLevel"] = 80
tBackpackLetter_Activity[3310608]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity[3310608]["Pathfind"] = {}
tBackpackLetter_Activity[3310608]["Pathfind"]["NpcId"] = 23169
	
----------------------------------------------------------------------------
--Name:180910[英文征服][活动脚本]开洞宝石低价促(9.27-10.9)
--Creator:兰冬梅
--Created:2018/09/10
----------------------------------------------------------------------------
-- 开洞道具特卖函
tBackpackLetter_Activity[3310740] = {}
tBackpackLetter_Activity[3310740]["ActivityTime"] = tActivityTime["GemStoneSales"]["ActivityTime"]
tBackpackLetter_Activity[3310740]["EventType"] = 182
tBackpackLetter_Activity[3310740]["DataType"] = 85
tBackpackLetter_Activity[3310740]["RewardData"] = 1
tBackpackLetter_Activity[3310740]["RewardItem"] = 3310740
tBackpackLetter_Activity[3310740]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3310740]["Cultivation"] = 30
-- 寻路
tBackpackLetter_Activity[3310740]["Pathfind"] = {}
tBackpackLetter_Activity[3310740]["Pathfind"]["NpcId"] = 23241


------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
	tItemFace[3310208] = 1666
	--活动时间
	tBackpackLetter_Activity[3310208] = {}
	tBackpackLetter_Activity[3310208]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
	tBackpackLetter_Activity[3310208]["EventType"] = 180
	tBackpackLetter_Activity[3310208]["DataType"] = 28
	tBackpackLetter_Activity[3310208]["RewardData"] = 1
	tBackpackLetter_Activity[3310208]["RewardItem"] = 3310208
	tBackpackLetter_Activity[3310208]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310208]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310208]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310208]["Cultivation"] = 30
	
	tBackpackLetter_Activity[3310208]["Pathfind"] = {}
	tBackpackLetter_Activity[3310208]["Pathfind"]["NpcId"] = 23096
	
	-- 花仙精灵
	tBackpackLetter_Activity[3322680] = {}
	tBackpackLetter_Activity[3322680]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
	tBackpackLetter_Activity[3322680]["EventType"] = 180
	tBackpackLetter_Activity[3322680]["DataType"] = 70
	tBackpackLetter_Activity[3322680]["RewardData"] = 1
	tBackpackLetter_Activity[3322680]["RewardItem"] = 3322680
	tBackpackLetter_Activity[3322680]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3322680]["NeedLevel"] = 80
	tBackpackLetter_Activity[3322680]["NeedMetempsychosis"] = 0
	
------------------------------------------------------------------------------------
--Name:			180918[英文征服][活动脚本]10月追加大狂欢线上部分制作
--Purpose:		追加大狂欢
--Creator:		wzh
--Created:		2018/09/18
------------------------------------------------------------------------------------
	tItemFace[3310799] = 1331
	tBackpackLetter_Activity[3310799] = {}
	tBackpackLetter_Activity[3310799]["NewActivityTime"] = tActivityTime["StoneCarnival"]["ActTime"]
	tBackpackLetter_Activity[3310799]["EventType"] = 183
	tBackpackLetter_Activity[3310799]["DataType"] = 42
	tBackpackLetter_Activity[3310799]["RewardData"] = 1
	tBackpackLetter_Activity[3310799]["RewardItem"] = 3310799
	tBackpackLetter_Activity[3310799]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310799]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310799]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310799]["Cultivation"] = 30
	tBackpackLetter_Activity[3310799]["Pathfind"] = {}
	tBackpackLetter_Activity[3310799]["Pathfind"]["NpcId"] = 23254
	tBackpackLetter_Activity[3310799]["GlobalId"] = 54359
	tBackpackLetter_Activity[3310799]["GlobalData"] = 1
	tBackpackLetter_Activity[3310799]["GlobalPos"] = 0	

------------------------------------------------------------------------------------
--Name：            180705[英文征服][任务脚本]PC转入赌城服测试npc
--Creator:      许乐
--Created:     2018/07/07
------------------------------------------------------------------------------------
tItemFace[3310436] = 1665
-- tBackpackLetter_Activity[3310436] = {}
-- -- 活动时间
-- tBackpackLetter_Activity[3310436]["NewActivityTime"] = tActivityTime["KOKNPC"]["ActTime"]
-- tBackpackLetter_Activity[3310436]["EventType"] = 181
-- tBackpackLetter_Activity[3310436]["DataType"] = 46
-- tBackpackLetter_Activity[3310436]["RewardData"] = 1
-- tBackpackLetter_Activity[3310436]["RewardItem"] = 3310436
-- tBackpackLetter_Activity[3310436]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3310436]["Cultivation"] = 30
-- tBackpackLetter_Activity[3310436]["NeedLevel"] = 80
-- tBackpackLetter_Activity[3310436]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity[3310436]["GlobalId"] = 80212
-- tBackpackLetter_Activity[3310436]["GlobalData"] = 1
-- tBackpackLetter_Activity[3310436]["GlobalPos"] = 0

-- -- 寻路              
-- tBackpackLetter_Activity[3310436]["Pathfind"] = {}
-- tBackpackLetter_Activity[3310436]["Pathfind"]["NpcId"] = 6297

----------------------------------------------------------------------------
-- 181008[英文征服][活动脚本]10月内功秘籍首卖活动
-- Creator:王贤
-- Created：2018-10-08
----------------------------------------------------------------------------
-- 世外高人的亲笔函
tItemFace[3311042] = 641
tBackpackLetter_Activity[3311042] = {}
tBackpackLetter_Activity[3311042]["ActivityTime"] = tActivityTime["IslamNewYearGift"]["SellTime"]
tBackpackLetter_Activity[3311042]["EventType"] = 184
tBackpackLetter_Activity[3311042]["DataType"] = 59
tBackpackLetter_Activity[3311042]["RewardData"] = 1
tBackpackLetter_Activity[3311042]["RewardItem"] = 3311042
tBackpackLetter_Activity[3311042]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3311042]["Cultivation"] = 30
-- 寻路
tBackpackLetter_Activity[3311042]["Pathfind"] = {}
tBackpackLetter_Activity[3311042]["Pathfind"]["NpcId"] = 23298
------------------------------------------------------------------------------------
--Name：            180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
--Creator:      杨艳
--Created:     2018/08/22
------------------------------------------------------------------------------------
tItemFace[3310589] = 1751
tBackpackLetter_Activity[3310589] = {}
-- --活动时间
tBackpackLetter_Activity[3310589]["ActivityTime"] = tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime"]
tBackpackLetter_Activity[3310589]["EventType"] = 182
tBackpackLetter_Activity[3310589]["DataType"] = 45
tBackpackLetter_Activity[3310589]["RewardData"] = 1
tBackpackLetter_Activity[3310589]["RewardItem"] = 3310589
tBackpackLetter_Activity[3310589]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3310589]["Cultivation"] = 30
tBackpackLetter_Activity[3310589]["NeedLevel"] = 110
tBackpackLetter_Activity[3310589]["NeedMetempsychosis"] = 1
-- -- 寻路
tBackpackLetter_Activity[3310589]["Pathfind"] = {}
tBackpackLetter_Activity[3310589]["Pathfind"]["NpcId"] = 23167
tBackpackLetter_Activity[3310589]["Pathfind"]["PosX"] = 339
tBackpackLetter_Activity[3310589]["Pathfind"]["PosY"] = 473
tBackpackLetter_Activity[3310589]["Pathfind"]["MapId"] = 1002	

------------------------------------------------------------------------------------
--Name:			181014[英文征服][活动脚本]寻矿觅宝NPC制作（11.08-11.19）
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018/10/14
------------------------------------------------------------------------------------
	tItemFace[3311157] = 623
	tBackpackLetter_Activity[3311157] = {}
	tBackpackLetter_Activity[3311157]["ActivityTime"] = tActivityTime["MineAndTreasureNpc"]["ActTime"]
	tBackpackLetter_Activity[3311157]["EventType"] = 185
	tBackpackLetter_Activity[3311157]["DataType"] = 29
	tBackpackLetter_Activity[3311157]["RewardData"] = 1
	tBackpackLetter_Activity[3311157]["RewardItem"] = 3311157
	tBackpackLetter_Activity[3311157]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311157]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311157]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311157]["Cultivation"] = 30
	tBackpackLetter_Activity[3311157]["Pathfind"] = {}
	tBackpackLetter_Activity[3311157]["Pathfind"]["NpcId"] = 23491
	
------------------------------------------------------------------------------------
--Name：        181015[英文征服][活动脚本]黑五狂欢周活跃活动
--Creator:      茅志伟
--Created:      2018/10/15
------------------------------------------------------------------------------------
	tItemFace[3311078] = 398
	tBackpackLetter_Activity[3311078] = {}
	tBackpackLetter_Activity[3311078]["ActivityTime"] = tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]
	tBackpackLetter_Activity[3311078]["EventType"] = 185
	tBackpackLetter_Activity[3311078]["DataType"] = 52
	tBackpackLetter_Activity[3311078]["RewardData"] = 1
	tBackpackLetter_Activity[3311078]["RewardItem"] = 3311078
	tBackpackLetter_Activity[3311078]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311078]["NeedLevel"] = 110
	tBackpackLetter_Activity[3311078]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3311078]["Cultivation"] = 30
	tBackpackLetter_Activity[3311078]["Pathfind"] = {}
	tBackpackLetter_Activity[3311078]["Pathfind"]["NpcId"] = 23437
	
	------------------------------------------------------------------------------------
--Name：            181015[英文征服][活动脚本]黑五狂欢周促销（11.20-11.30）
--Creator:      杨艳
--Created:     2018/10/22
------------------------------------------------------------------------------------
tItemFace[3311520] = 1095
tBackpackLetter_Activity[3311520] = {}
-- --活动时间
tBackpackLetter_Activity[3311520]["ActivityTime"] = tActivityTime["BlackFiveDayAct"]["ActivityTime"]
tBackpackLetter_Activity[3311520]["EventType"] = 185
tBackpackLetter_Activity[3311520]["DataType"] = 97
tBackpackLetter_Activity[3311520]["RewardData"] = 1
tBackpackLetter_Activity[3311520]["RewardItem"] = 3311520
tBackpackLetter_Activity[3311520]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3311520]["Cultivation"] = 30
tBackpackLetter_Activity[3311520]["NeedLevel"] = 80
tBackpackLetter_Activity[3311520]["NeedMetempsychosis"] = 0
-- -- 寻路               
tBackpackLetter_Activity[3311520]["Pathfind"] = {}
tBackpackLetter_Activity[3311520]["Pathfind"]["NpcId"] = 23495
tBackpackLetter_Activity[3311520]["Pathfind"]["PosX"] = 368
tBackpackLetter_Activity[3311520]["Pathfind"]["PosY"] = 438
tBackpackLetter_Activity[3311520]["Pathfind"]["MapId"] = 1002	

------------------------------------------------------------------------------------
--Name:			180827[英文征服][活动脚本]时装盛会活动
--Purpose:		外套活动
--Creator:		wzh
--Created:		2018-08-27
------------------------------------------------------------------------------------
	tItemFace[3310693] = 795
	tBackpackLetter_Activity[3310693] = {}
	tBackpackLetter_Activity[3310693]["ActivityTime"] = tActivityTime["FashionEvent"]["ActTime"]
	tBackpackLetter_Activity[3310693]["EventType"] = 182
	tBackpackLetter_Activity[3310693]["DataType"] = 59
	tBackpackLetter_Activity[3310693]["RewardData"] = 1
	tBackpackLetter_Activity[3310693]["RewardItem"] = 3310693
	tBackpackLetter_Activity[3310693]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310693]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310693]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310693]["Pathfind"] = {}
	tBackpackLetter_Activity[3310693]["Pathfind"]["NpcId"] = 23187
--[[
------------------------------------------------------------------------------------
--Name:			181116[英文征服][活动脚本]12月赠品大狂欢制作(12.04-12.31)
--Creator:		黄啸
--Created:		2018/11/21
------------------------------------------------------------------------------------
	tItemFace[3311621] = 3591
	tBackpackLetter_Activity[3311621] = {}
	tBackpackLetter_Activity[3311621]["ActivityTime"] = tActivityTime["BoundCarnival"]["ActivityTime"]
	tBackpackLetter_Activity[3311621]["EventType"] = 186
	tBackpackLetter_Activity[3311621]["DataType"] = 36
	tBackpackLetter_Activity[3311621]["RewardData"] = 1
	tBackpackLetter_Activity[3311621]["RewardItem"] = 3311621
	tBackpackLetter_Activity[3311621]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311621]["Cultivation"] = 30
	tBackpackLetter_Activity[3311621]["Pathfind"] = {}
	tBackpackLetter_Activity[3311621]["Pathfind"]["NpcId"] = 23554
]]--
------------------------------------------------------------------------------------
--Name:			181107[英文征服][活动脚本]12月日签有礼活动制作
--Creator:		江宇君
--Created:		2018/11/09
------------------------------------------------------------------------------------
	tItemFace[3311492] = 1934
	tBackpackLetter_Activity[3311492] = {}
	tBackpackLetter_Activity[3311492]["ActivityTime"] = tActivityTime["DaySignGift"]["ActivityTime"]
	tBackpackLetter_Activity[3311492]["EventType"] = 185
	tBackpackLetter_Activity[3311492]["DataType"] = 71
	tBackpackLetter_Activity[3311492]["RewardData"] = 1
	tBackpackLetter_Activity[3311492]["RewardItem"] = 3311492
	tBackpackLetter_Activity[3311492]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311492]["NeedLevel"] = 100
	tBackpackLetter_Activity[3311492]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311492]["Pathfind"] = {}
	tBackpackLetter_Activity[3311492]["Pathfind"]["NpcId"] = 23536
	tBackpackLetter_Activity[3311492]["Cultivation"] = 30

------------------------------------------------------------------------------------
--Name:		181121[简体征服][活动脚本]熔炼炉引导任务
--Purpose:	熔炼炉引导任务
--Creator: 	严振飞
--Created:	2018/11/21
------------------------------------------------------------------------------------
	-- 真火精元
	tItemFace[3311645] = 1941
	tBackpackLetter_Activity[3311645] = {}
	tBackpackLetter_Activity[3311645]["EventType"] = 186
	tBackpackLetter_Activity[3311645]["DataType"] = 34
	tBackpackLetter_Activity[3311645]["RewardData"] = 1
	tBackpackLetter_Activity[3311645]["RewardItem"] = 3311645
	tBackpackLetter_Activity[3311645]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311645]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311645]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311645]["Cultivation"] = 30
	tBackpackLetter_Activity[3311645]["Pathfind"] = {}
	tBackpackLetter_Activity[3311645]["Pathfind"]["NpcId"] = 35016

-----------------------------------------------------------------------------------
--Name：            181123[英文征服][活动脚本]圣诞大促非赠消费（12.18）
--Creator:      杨艳
--Created:     2018/11/23
------------------------------------------------------------------------------------
	tItemFace[3311677] = 1945
	tBackpackLetter_Activity[3311677] = {}
	--活动时间
	tBackpackLetter_Activity[3311677]["ActivityTime"] = tActivityTime["ChristmasRush"]["ActivityTime"]
	tBackpackLetter_Activity[3311677]["EventType"] = 186
	tBackpackLetter_Activity[3311677]["DataType"] = 43
	tBackpackLetter_Activity[3311677]["RewardData"] = 1
	tBackpackLetter_Activity[3311677]["RewardItem"] = 3311677
	tBackpackLetter_Activity[3311677]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311677]["Cultivation"] = 30
	tBackpackLetter_Activity[3311677]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311677]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity[3311677]["Pathfind"] = {}
	tBackpackLetter_Activity[3311677]["Pathfind"]["NpcId"] = 23559
	tBackpackLetter_Activity[3311677]["Pathfind"]["PosX"] = 331
	tBackpackLetter_Activity[3311677]["Pathfind"]["PosY"] = 435
	tBackpackLetter_Activity[3311677]["Pathfind"]["MapId"] = 1002
	
------------------------------------------------------------------------------------
--Name：        181126[简体征服][活动脚本]复用圣诞元旦小活动（12.20-1.2）
--Creator:      江宇君
--Created:      2018/11/26
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            171031[简体征服][活动脚本]2017圣诞元旦活动
--Creator:      王贤
--Created:     2017/10/31
------------------------------------------------------------------------------------
	-- 汤姆的求助信
	tItemFace[3311862] = 1965
	tBackpackLetter_Activity[3311862] = {}
	tBackpackLetter_Activity[3311862]["ActivityTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]
	tBackpackLetter_Activity[3311862]["EventType"] = 187
	tBackpackLetter_Activity[3311862]["DataType"] = 38
	tBackpackLetter_Activity[3311862]["RewardData"] = 1
	tBackpackLetter_Activity[3311862]["RewardItem"] = 3311862
	tBackpackLetter_Activity[3311862]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311862]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311862]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311862]["Cultivation"] = 30
	tBackpackLetter_Activity[3311862]["Pathfind"] = {}
	tBackpackLetter_Activity[3311862]["Pathfind"]["NpcId"] = 22277
	
------------------------------------------------------------------------------------
--Name：            20181219[英文征服][活动脚本]上线获得气力值
--Creator:      王贤
--Created:     2018/12/19
------------------------------------------------------------------------------------
	-- 10000气力值
	tBackpackLetter_Activity[3200349] = {}
	tBackpackLetter_Activity[3200349]["ActivityTime"] = tActivityTime["ChiReward"]["ActivityTime"]
	tBackpackLetter_Activity[3200349]["EventType"] = 187
	tBackpackLetter_Activity[3200349]["DataType"] = 42
	tBackpackLetter_Activity[3200349]["RewardData"] = 1
	tBackpackLetter_Activity[3200349]["RewardItem"] = 3200349
	tBackpackLetter_Activity[3200349]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3200349]["NeedLevel"] = 80
	tBackpackLetter_Activity[3200349]["NeedMetempsychosis"] = 0

	
------------------------------------------------------------------------------------
--Name：            181217[英文征服][活动脚本]1月神纹提升月
--Creator:      蔡颖静
--Created:     2018/12/17
------------------------------------------------------------------------------------
	tItemFace[3311894] = 2001
	tBackpackLetter_Activity[3311894] = {}
	tBackpackLetter_Activity[3311894]["NewActivityTime"] = tActivityTime["JanRuneImproveMon"]["ActivityTime"]
	tBackpackLetter_Activity[3311894]["EventType"] = 187
	tBackpackLetter_Activity[3311894]["DataType"] = 85
	tBackpackLetter_Activity[3311894]["RewardData"] = 1
	tBackpackLetter_Activity[3311894]["RewardItem"] = 3311894
	tBackpackLetter_Activity[3311894]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311894]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311894]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311894]["Pathfind"] = {}
	tBackpackLetter_Activity[3311894]["Pathfind"]["NpcId"] = 23604
	tBackpackLetter_Activity[3311894]["GlobalId"] = 54452
	tBackpackLetter_Activity[3311894]["GlobalData"] = 0
	tBackpackLetter_Activity[3311894]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：            190114[英文征服][活动脚本]2月促销活动线上部分制作
--Creator:      王贤
--Created:     2019-01-14
------------------------------------------------------------------------------------
	tItemFace[3319310] = 1150
	tBackpackLetter_Activity[3319310] = {}
	tBackpackLetter_Activity[3319310]["ActivityTime"] = tActivityTime["SalesPromotionOnlinePart"]["ActivityTime"]
	tBackpackLetter_Activity[3319310]["EventType"] = 189
	tBackpackLetter_Activity[3319310]["DataType"] = 09
	tBackpackLetter_Activity[3319310]["RewardData"] = 1
	tBackpackLetter_Activity[3319310]["RewardItem"] = 3319310
	tBackpackLetter_Activity[3319310]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319310]["NeedLevel"] = 80
	tBackpackLetter_Activity[3319310]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3319310]["Cultivation"] = 30
	tBackpackLetter_Activity[3319310]["Pathfind"] = {}
	tBackpackLetter_Activity[3319310]["Pathfind"]["NpcId"] = 23696


------------------------------------------------------------------------------------
--Name：            190102[英文征服][活动脚本]年初大促销
--Creator:      黄啸
--Created:     2019/01/10
------------------------------------------------------------------------------------
	
	tItemFace[3319162] = 2075
	tBackpackLetter_Activity[3319162] = {}
	tBackpackLetter_Activity[3319162]["ActivityTime"] = tActivityTime["YearBeginPromotion"]["ActivityTime"]
	tBackpackLetter_Activity[3319162]["EventType"] = 188
	tBackpackLetter_Activity[3319162]["DataType"] = 76
	tBackpackLetter_Activity[3319162]["RewardData"] = 1
	tBackpackLetter_Activity[3319162]["RewardItem"] = 3319162
	tBackpackLetter_Activity[3319162]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319162]["Cultivation"] = 30
	tBackpackLetter_Activity[3319162]["Pathfind"] = {}
	tBackpackLetter_Activity[3319162]["Pathfind"]["NpcId"] = 23646
	
	
	------------------------------------------------------------------------------------
--Name：            181213[英文征服][活动脚本]1月新版本预热活动制作
--Creator:      蔡颖静
--Created:     2018/12/13
------------------------------------------------------------------------------------
tItemFace[3311848] = 1520
tBackpackLetter_Activity[3311848] = {}
-- --活动时间
tBackpackLetter_Activity[3311848]["ActivityTime"] =tActivityTime["NewVersionWarmUp"]["ActivityTime"]
tBackpackLetter_Activity[3311848]["EventType"] = 187
tBackpackLetter_Activity[3311848]["DataType"] = 17
tBackpackLetter_Activity[3311848]["RewardData"] = 1
tBackpackLetter_Activity[3311848]["RewardItem"] = 3311848
tBackpackLetter_Activity[3311848]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3311848]["Cultivation"] = 30
tBackpackLetter_Activity[3311848]["NeedLevel"] = 80
tBackpackLetter_Activity[3311848]["NeedMetempsychosis"] = 0
-- -- 寻路               
tBackpackLetter_Activity[3311848]["Pathfind"] = {}
tBackpackLetter_Activity[3311848]["Pathfind"]["NpcId"] = 23598
tBackpackLetter_Activity[3311848]["Pathfind"]["PosX"] = 336
tBackpackLetter_Activity[3311848]["Pathfind"]["PosY"] = 449
tBackpackLetter_Activity[3311848]["Pathfind"]["MapId"] = 1002	

------------------------------------------------------------------------------------
--Name:			190115[英文征服][活动脚本]在线根据时长领福利（2.2-2.28）
--Creator:		吴志宏
--Created:		2019/01/15
------------------------------------------------------------------------------------
	tItemFace[3319312] = 1351
	tBackpackLetter_Activity[3319312] = {}
	tBackpackLetter_Activity[3319312]["ActivityTime"] = tActivityTime["OnLineReward"]["ActivityTime"]
	tBackpackLetter_Activity[3319312]["EventType"] = 189
	tBackpackLetter_Activity[3319312]["DataType"] = 13
	tBackpackLetter_Activity[3319312]["RewardData"] = 1
	tBackpackLetter_Activity[3319312]["RewardItem"] = 3319312
	tBackpackLetter_Activity[3319312]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319312]["NeedLevel"] = 100
	tBackpackLetter_Activity[3319312]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3319312]["Pathfind"] = {}
	tBackpackLetter_Activity[3319312]["Pathfind"]["NpcId"] = 23699
	
------------------------------------------------------------------------------------
-- Name:		161026【简体征服】【活动】春节小活动
-- Purpose:		春节小活动
-- Creator:		丁雨浩
-- Created:		2016/11/18
----------------------------------------------------------------------------------
	tItemFace[3319165] = 440
	tBackpackLetter_Activity[3319165] = {}
	tBackpackLetter_Activity[3319165]["ActivityTime"] = tActivityTime["SpringActivity"]["NowTime"]
	tBackpackLetter_Activity[3319165]["EventType"] = 188
	tBackpackLetter_Activity[3319165]["DataType"] = 75
	tBackpackLetter_Activity[3319165]["RewardData"] = 1
	tBackpackLetter_Activity[3319165]["RewardItem"] = 3319165
	tBackpackLetter_Activity[3319165]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319165]["NeedLevel"] = 80
	tBackpackLetter_Activity[3319165]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3319165]["Cultivation"] = 30
	tBackpackLetter_Activity[3319165]["Pathfind"] = {}
	tBackpackLetter_Activity[3319165]["Pathfind"]["NpcId"] = 11244
	
------------------------------------------------------------------------------------
--Name：            190107[简体征服][活动脚本]2月情人节花魁赛活动制作-物品部分
--Creator:      陈莺
--Created:     2019-01-07
------------------------------------------------------------------------------------
	-- 情人巧克力
	tItemFace[3311966] = 1725
	tBackpackLetter_Activity[3311966] = {}
	tBackpackLetter_Activity[3311966]["ActivityTime"] = tActivityTime["FlowerChiefItem"]["Now_Time"]
	tBackpackLetter_Activity[3311966]["EventType"] = 189
	tBackpackLetter_Activity[3311966]["DataType"] = 64
	tBackpackLetter_Activity[3311966]["RewardData"] = 1
	tBackpackLetter_Activity[3311966]["RewardItem"] = 3311966
	tBackpackLetter_Activity[3311966]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311966]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311966]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311966]["Cultivation"] = 30
	tBackpackLetter_Activity[3311966]["Pathfind"] = {}
	tBackpackLetter_Activity[3311966]["Pathfind"]["NpcId"] = 23682
	
	
	

------------------------------------------------------------------------------------
--Name：            190116[英文征服][活动脚本]道士强化节促销及发奖action(2.21-3.6)
--Creator:      蔡颖静
--Created:     2019/01/16
------------------------------------------------------------------------------------
-- TaoistPromoInvitation
tItemFace[3319427] = 581
tBackpackLetter_Activity[3319427] = {}
tBackpackLetter_Activity[3319427]["ActivityTime"] = tActivityTime["TaoistImproveSales"]["ActTime"]
tBackpackLetter_Activity[3319427]["EventType"] = 189
tBackpackLetter_Activity[3319427]["DataType"] = 85
tBackpackLetter_Activity[3319427]["RewardData"] = 1
tBackpackLetter_Activity[3319427]["RewardItem"] = 3319427
tBackpackLetter_Activity[3319427]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3319427]["Cultivation"] = 30
-- 寻路
tBackpackLetter_Activity[3319427]["Pathfind"] = {}
tBackpackLetter_Activity[3319427]["Pathfind"]["NpcId"] = 23706

------------------------------------------------------------------------------------
--Name：            190102[简体征服][活动脚本]雷神预热活动制作
--Creator:      蔡颖静
--Created:     2019/01/02
------------------------------------------------------------------------------------
	tItemFace[3319132] = 2060
	tBackpackLetter_Activity[3319132] = {}
	tBackpackLetter_Activity[3319132]["ActivityTime"] = tActivityTime["ThorWarmUp"]["ActivityTime"]
	tBackpackLetter_Activity[3319132]["EventType"] = 188
	tBackpackLetter_Activity[3319132]["DataType"] = 51
	tBackpackLetter_Activity[3319132]["RewardData"] = 1
	tBackpackLetter_Activity[3319132]["RewardItem"] = 3319132
	tBackpackLetter_Activity[3319132]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319132]["NeedLevel"] = 80
	tBackpackLetter_Activity[3319132]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3319132]["Cultivation"] = 30
	tBackpackLetter_Activity[3319132]["Pathfind"] = {}
	tBackpackLetter_Activity[3319132]["Pathfind"]["NpcId"] = 23643

------------------------------------------------------------------------------------
--Name：           190213[英文征服][活动脚本]任务-英文征服3月SVIP特权月制作-专属副本部分
--Creator:      杨艳
--Created:     2019/02/15
--------------------------------------------------------------------------------------
-- 3320167,'修罗战书
tItemFace[3320167] = 767
tBackpackLetter_Activity[3320167] = {}
--活动时间
tBackpackLetter_Activity[3320167]["ActivityTime"] = tActivityTime["ShuraBattleGround"]["ActivityTime"]
tBackpackLetter_Activity[3320167]["EventType"] = 182
tBackpackLetter_Activity[3320167]["DataType"] = 80
tBackpackLetter_Activity[3320167]["RewardData"] = 1
tBackpackLetter_Activity[3320167]["RewardItem"] = 3320167
tBackpackLetter_Activity[3320167]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3320167]["Cultivation"] = 30
tBackpackLetter_Activity[3320167]["NeedLevel"] = 80
tBackpackLetter_Activity[3320167]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity[3320167]["Pathfind"] = {}
tBackpackLetter_Activity[3320167]["Pathfind"]["NpcId"] = 25168

------------------------------------------------------------------------------------
--Name：     190218[英文征服][活动脚本]3月准点在线博奖(3.7-3.11)
--Creator:   吴燕柚
--Created:   2019/02/25
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3312055] = {}
	tBackpackLetter_Activity[3312055]["NewActivityTime"] = tActivityTime["OnTimeGamble"]["ActTime"]
	tBackpackLetter_Activity[3312055]["EventType"] = 191
	tBackpackLetter_Activity[3312055]["DataType"] = 04
	tBackpackLetter_Activity[3312055]["RewardData"] = 1
	tBackpackLetter_Activity[3312055]["RewardItem"] = 3312055
	tBackpackLetter_Activity[3312055]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312055]["GlobalId"] = 53270
	tBackpackLetter_Activity[3312055]["GlobalData"] = 1
	tBackpackLetter_Activity[3312055]["GlobalPos"] = 0
	tBackpackLetter_Activity[3312055]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312055]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312055]["Cultivation"] = 30
	tBackpackLetter_Activity[3312055]["Pathfind"] = {}
	tBackpackLetter_Activity[3312055]["Pathfind"]["NpcId"] = 23789

------------------------------------------------------------------------------------
--Name：    181227[简体征服][活动脚本]雷神特权月活动优化
--Creator:      兰瑞妹
--Created:     2018-12-27
------------------------------------------------------------------------------------
	-- 3319182,'雷霆神谕'
	tItemFace[3319182] = 2061
	tBackpackLetter_Activity[3319182] = {}
	tBackpackLetter_Activity[3319182]["ActivityTime"] = tActivityTime["ThorPrivilegeMonth"]["ActivityTime"] 
	tBackpackLetter_Activity[3319182]["EventType"] = 187
	tBackpackLetter_Activity[3319182]["DataType"] = 93
	tBackpackLetter_Activity[3319182]["RewardData"] = 1
	tBackpackLetter_Activity[3319182]["RewardItem"] = 3319182
	tBackpackLetter_Activity[3319182]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319182]["NeedLevel"] = 80
	tBackpackLetter_Activity[3319182]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3319182]["Cultivation"] = 30
	tBackpackLetter_Activity[3319182]["Pathfind"] = {}
	tBackpackLetter_Activity[3319182]["Pathfind"]["NpcId"] = 19262
	-- 3311728,'雷神惊世礼盒'
	tBackpackLetter_Activity[3311728] = {}
	tBackpackLetter_Activity[3311728]["ActivityTime"] = tActivityTime["ThorPrivilegeMonth"]["ActivityTime"] 
	tBackpackLetter_Activity[3311728]["EventType"] = 187
	tBackpackLetter_Activity[3311728]["DataType"] = 94
	tBackpackLetter_Activity[3311728]["RewardData"] = 1
	tBackpackLetter_Activity[3311728]["RewardItem"] = 3311728
	tBackpackLetter_Activity[3311728]["RewardAttr"] = "0 1 0 43200 1"
	tBackpackLetter_Activity[3311728]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311728]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311728]["NeedPro"] ={}
	tBackpackLetter_Activity[3311728]["NeedPro"]["Pro1"] = G_PRO_Thor0
	tBackpackLetter_Activity[3311728]["NeedPro"]["Pro2"] = G_PRO_Thor5
	
------------------------------------------------------------------------------------
--Name：            181229[简体征服][活动脚本]雷神主线活动制作
--Creator:      傅伟龙
--Created:     2018/12/29
------------------------------------------------------------------------------------
	-- tBackpackLetter_Activity[3319256] = {}
	-- tBackpackLetter_Activity[3319256]["EventType"] = 188
	-- tBackpackLetter_Activity[3319256]["DataType"] = 86
	-- tBackpackLetter_Activity[3319256]["RewardData"] = 1
	-- tBackpackLetter_Activity[3319256]["RewardItem"] = 3319256
	-- tBackpackLetter_Activity[3319256]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3319256]["NeedLevel"] = 40
	-- tBackpackLetter_Activity[3319256]["NeedMetempsychosis"] = 0	
	-- tBackpackLetter_Activity[3319256]["NeedPro"] ={}
	-- tBackpackLetter_Activity[3319256]["NeedPro"]["Pro1"] = 90
	-- tBackpackLetter_Activity[3319256]["NeedPro"]["Pro2"] = 95
	-- tBackpackLetter_Activity[3319256]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3319256]["Pathfind"]["NpcId"] = 23656

	
------------------------------------------------------------------------------------
--Name：       190130[简体征服][活动脚本]烦请内嵌新资料片雷神冲榜活动页面
--Creator:     洪聪敏
--Created:     2019-01-30
------------------------------------------------------------------------------------
	-- tItemFace[3312023] = 2091
	-- tBackpackLetter_Activity[3312023] = {}
	-- tBackpackLetter_Activity[3312023]["ActivityTime"] = tActivityTime["ThorH5Act"]["ActivityTime"]
	-- tBackpackLetter_Activity[3312023]["EventType"] = 189
	-- tBackpackLetter_Activity[3312023]["DataType"] = 97
	-- tBackpackLetter_Activity[3312023]["RewardData"] = 1
	-- tBackpackLetter_Activity[3312023]["RewardItem"] = 3312023
	-- tBackpackLetter_Activity[3312023]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3312023]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3312023]["NeedMetempsychosis"] = 0
	
	-- tBackpackLetter_Activity[3312023]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3312023]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3312023]["Pathfind"]["NpcId"] = 23729
	
------------------------------------------------------------------------------------
--Name：        190218[简体征服][活动脚本]雷神版本上线内容补充
--Creator:      耿力兀
--Created:     2019-02-18
------------------------------------------------------------------------------------
	-- 斗战苍穹版本礼盒
	tBackpackLetter_Activity[3312053] = {}
	tBackpackLetter_Activity[3312053]["ActivityTime"] =tActivityTime["ContentSupplement"]["ActiveTime"]
	tBackpackLetter_Activity[3312053]["EventType"] = 190
	tBackpackLetter_Activity[3312053]["DataType"] = 23
	tBackpackLetter_Activity[3312053]["RewardData"] = 1
	tBackpackLetter_Activity[3312053]["RewardItem"] = 3312053
	tBackpackLetter_Activity[3312053]["RewardAttr"] = "0 1 0 10080 1"
	tBackpackLetter_Activity[3312053]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312053]["NeedMetempsychosis"] = 0
	
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]春节天石雨
--Creator:		翁清海
--Created:		2019/01/31
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3320109] = {}
	tBackpackLetter_Activity[3320109]["ActivityTime"] = tActivityTime["SpringFestivalEmoney"]["ActiveTime"]
	tBackpackLetter_Activity[3320109]["EventType"] = 190
	tBackpackLetter_Activity[3320109]["DataType"] = 06
	tBackpackLetter_Activity[3320109]["RewardData"] = 1
	tBackpackLetter_Activity[3320109]["RewardItem"] = 3320109
	tBackpackLetter_Activity[3320109]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320109]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320109]["NeedMetempsychosis"] = 0
	
------------------------------------------------------------------------------------
--Name:			190215[英文征服][活动脚本]灵珠兑换商店线上部分制作
--Purpose:		灵珠兑换商店线上部分制作
--Creator:		茅志伟
--Created:		2019/02/15
------------------------------------------------------------------------------------
tItemFace[3320166] = 1592
tBackpackLetter_Activity[3320166] = {}
-- 活动时间
tBackpackLetter_Activity[3320166]["NewActivityTime"] = tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]
tBackpackLetter_Activity[3320166]["EventType"] = 190
tBackpackLetter_Activity[3320166]["DataType"] = 55
tBackpackLetter_Activity[3320166]["RewardData"] = 1
tBackpackLetter_Activity[3320166]["RewardItem"] = 3320166
tBackpackLetter_Activity[3320166]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3320166]["Cultivation"] = 30
tBackpackLetter_Activity[3320166]["NeedLevel"] = 80
tBackpackLetter_Activity[3320166]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3320166]["GlobalId"] = 53278
-- 寻路              
tBackpackLetter_Activity[3320166]["Pathfind"] = {}
tBackpackLetter_Activity[3320166]["Pathfind"]["NpcId"] = 23745

------------------------------------------------------------------------------------
--Name：         190227[英文征服][活动脚本]雷神成品装备促销（3.19-4.19）
--Creator:      茅志伟
--Created:     2019/02/27
------------------------------------------------------------------------------------
tItemFace[3320454] = 1779
tBackpackLetter_Activity[3320454] = {}
-- 活动时间
tBackpackLetter_Activity[3320454]["ActivityTime"] = tActivityTime["RaytheonEquipmentPromotion"]["ActivityTime"]
tBackpackLetter_Activity[3320454]["EventType"] = 191
tBackpackLetter_Activity[3320454]["DataType"] = 34
tBackpackLetter_Activity[3320454]["RewardData"] = 1
tBackpackLetter_Activity[3320454]["RewardItem"] = 3320454
tBackpackLetter_Activity[3320454]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3320454]["Cultivation"] = 30
tBackpackLetter_Activity[3320454]["NeedLevel"] = 80
tBackpackLetter_Activity[3320454]["NeedMetempsychosis"] = 0
-- 寻路              
tBackpackLetter_Activity[3320454]["Pathfind"] = {}
tBackpackLetter_Activity[3320454]["Pathfind"]["NpcId"] = 23818

------------------------------------------------------------------------------------
--Name：            190214[英文征服][活动脚本]玩雷神有好礼（3.12-3.18）
--Creator:      杨艳
--Created:     2019/02/14
------------------------------------------------------------------------------------
-- (3320224,'斗士福利大放送告示'
tItemFace[3320224] = 2114
tBackpackLetter_Activity[3320224] = {}
--活动时间
tBackpackLetter_Activity[3320224]["ActivityTime"] = tActivityTime["RaytheonGoodPack"]["ActivityTime"]
tBackpackLetter_Activity[3320224]["EventType"] = 190
tBackpackLetter_Activity[3320224]["DataType"] = 98
tBackpackLetter_Activity[3320224]["RewardData"] = 1
tBackpackLetter_Activity[3320224]["RewardItem"] = 3320224
tBackpackLetter_Activity[3320224]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3320224]["Cultivation"] = 30
tBackpackLetter_Activity[3320224]["NeedLevel"] = 1
tBackpackLetter_Activity[3320224]["NeedMetempsychosis"] = 0
-- 寻路                  
tBackpackLetter_Activity[3320224]["Pathfind"] = {}
tBackpackLetter_Activity[3320224]["Pathfind"]["NpcId"] = 23791

------------------------------------------------------------------------------------
--Name：      190202[简体征服][活动脚本]3月老玩家回归制作
--Creator:    江宇君
--Created:    2019/02/02
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            180710[简体征服][活动脚本]烦请制作7月暑假促活活动线上部分
--Creator:      陈莺
--Created:     2018/07/10
------------------------------------------------------------------------------------
	tItemFace[3309649] = 1592
	tBackpackLetter_Activity[3309649] = {}
	tBackpackLetter_Activity[3309649]["ActivityTime"] = tActivityTime["SummerSalesPromotion"]["Now_Time"]
	tBackpackLetter_Activity[3309649]["EventType"] = 179
	tBackpackLetter_Activity[3309649]["DataType"] = 44
	tBackpackLetter_Activity[3309649]["RewardData"] = 1
	tBackpackLetter_Activity[3309649]["RewardItem"] = 3309649
	tBackpackLetter_Activity[3309649]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3309649]["NeedLevel"] = 80
	tBackpackLetter_Activity[3309649]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3309649]["Cultivation"] = 30
	tBackpackLetter_Activity[3309649]["Pathfind"] = {}
	tBackpackLetter_Activity[3309649]["Pathfind"]["NpcId"] = 21523
	-- 2020.02.26复用新增服务器区分
	tBackpackLetter_Activity[3309649]["GlobalId"] = 54273
	tBackpackLetter_Activity[3309649]["GlobalData"] = 0
	tBackpackLetter_Activity[3309649]["GlobalPos"] = 0
	tBackpackLetter_Activity[3309649]["OldSever"] = 1

	
------------------------------------------------------------------------------------
--Name:		181019[口袋征服][任务脚本]24小时循环任务细化逻辑部分
--Creator: 	兰瑞妹
--Created:	2018/10/24
------------------------------------------------------------------------------------
	tItemFace[3319199] = 2060
	tBackpackLetter_Activity[3319199] = {}
	tBackpackLetter_Activity[3319199]["ActivityTime"] = tActivityTime["CyclicTaskLogic"]["ActivityTime"]
	tBackpackLetter_Activity[3319199]["EventType"] = 187
	tBackpackLetter_Activity[3319199]["DataType"] = 92
	tBackpackLetter_Activity[3319199]["RewardData"] = 1
	tBackpackLetter_Activity[3319199]["RewardItem"] = 3319199
	tBackpackLetter_Activity[3319199]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3319199]["NeedLevel"] = 120
	tBackpackLetter_Activity[3319199]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3319199]["Cultivation"] = 30
	tBackpackLetter_Activity[3319199]["Pathfind"] = {}
	tBackpackLetter_Activity[3319199]["Pathfind"]["NpcId"] = 23492
------------------------------------------------------------------------------------
--Name：            190214[英文征服][活动脚本]金币礼包大促销（3.12-4.1）
--Creator:      杨艳
--Created:     2019/02/18
------------------------------------------------------------------------------------
	tItemFace[3320194] = 2126
	tBackpackLetter_Activity[3320194] = {}
	--活动时间
	tBackpackLetter_Activity[3320194]["NewActivityTime"] = tActivityTime["GoldBagPromotion"]["ActivityTime"]
	tBackpackLetter_Activity[3320194]["EventType"] = 191
	tBackpackLetter_Activity[3320194]["DataType"] = 69
	tBackpackLetter_Activity[3320194]["RewardData"] = 1
	tBackpackLetter_Activity[3320194]["RewardItem"] = 3320194
	tBackpackLetter_Activity[3320194]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320194]["Cultivation"] = 30
	tBackpackLetter_Activity[3320194]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320194]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity[3320194]["Pathfind"] = {}
	tBackpackLetter_Activity[3320194]["Pathfind"]["NpcId"] = 23788
	tBackpackLetter_Activity[3320194]["GlobalId"] = 53279
	tBackpackLetter_Activity[3320194]["GlobalData"] = 1
	tBackpackLetter_Activity[3320194]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]战斗力爬塔活动
--Creator:		翁清海
--Created:		2019/02/26
------------------------------------------------------------------------------------
-- 试炼挑战书
	tItemFace[3320324] = 2119
	tBackpackLetter_Activity[3320324] = {}
	tBackpackLetter_Activity[3320324]["ActivityTime"] = tActivityTime["BattleChallenge"]["ActiveTime"]
	tBackpackLetter_Activity[3320324]["EventType"] = 191
	tBackpackLetter_Activity[3320324]["DataType"] = 21
	tBackpackLetter_Activity[3320324]["RewardData"] = 1
	tBackpackLetter_Activity[3320324]["RewardItem"] = 3320324
	tBackpackLetter_Activity[3320324]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320324]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320324]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3320324]["Pathfind"] = {}
	tBackpackLetter_Activity[3320324]["Pathfind"]["NpcId"] = 23810

------------------------------------------------------------------------------------
--Name:			181220[简体征服][活动脚本]镇魂珠BOSS活动制作
--Creator:		吴志宏
--Created:		2018/12/20
------------------------------------------------------------------------------------
	tItemFace[3320779] = 1521
	tBackpackLetter_Activity[3320779] = {}
	tBackpackLetter_Activity[3320779]["ActivityTime"] = tActivityTime["BossForSuoYaoPill"]["ActTime"]
	tBackpackLetter_Activity[3320779]["EventType"] = 188
	tBackpackLetter_Activity[3320779]["DataType"] = 42
	tBackpackLetter_Activity[3320779]["RewardData"] = 1
	tBackpackLetter_Activity[3320779]["RewardItem"] = 3320779
	tBackpackLetter_Activity[3320779]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320779]["NeedLevel"] = 1
	tBackpackLetter_Activity[3320779]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3320779]["Cultivation"] = 30
	tBackpackLetter_Activity[3320779]["Pathfind"] = {}
	tBackpackLetter_Activity[3320779]["Pathfind"]["NpcId"] = 23610
	

------------------------------------------------------------------------------------
--Name：            190327[简体征服][活动脚本]熔炼炉优化版本上线相关修改
--Creator:      叶方琪
--Created:     2019/03/27
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3320804] = {}
	tBackpackLetter_Activity[3320804]["ActivityTime"] = tActivityTime["SmeltingFurnaceOptimization"]["ActivityTime"]
	tBackpackLetter_Activity[3320804]["EventType"] = 192
	tBackpackLetter_Activity[3320804]["DataType"] = 76
	tBackpackLetter_Activity[3320804]["RewardData"] = 1
	tBackpackLetter_Activity[3320804]["RewardItem"] = 3320804
	tBackpackLetter_Activity[3320804]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320804]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320804]["NeedMetempsychosis"] = 0

	-- tBackpackLetter_Activity[3320831] = {}
	-- tBackpackLetter_Activity[3320831]["ActivityTime"] = tActivityTime["SmeltingFurnaceOptimization"]["ActivityTime"]
	-- tBackpackLetter_Activity[3320831]["EventType"] = 192
	-- tBackpackLetter_Activity[3320831]["DataType"] = 83
	-- tBackpackLetter_Activity[3320831]["RewardData"] = 1
	-- tBackpackLetter_Activity[3320831]["RewardItem"] = 3320831
	-- tBackpackLetter_Activity[3320831]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3320831]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3320831]["NeedMetempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			190324[英文征服][活动脚本]4月幸运日活动4.16-5.6
--Creator:		吴志宏
--Created:		2019/03/24
------------------------------------------------------------------------------------
	tItemFace[3320772] = 623
	tBackpackLetter_Activity[3320772] = {}
	tBackpackLetter_Activity[3320772]["ActivityTime"] = tActivityTime["LuckyDayAct"]["ActTime"]
	tBackpackLetter_Activity[3320772]["EventType"] = 192
	tBackpackLetter_Activity[3320772]["DataType"] = 36
	tBackpackLetter_Activity[3320772]["RewardData"] = 1
	tBackpackLetter_Activity[3320772]["RewardItem"] = 3320772
	tBackpackLetter_Activity[3320772]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320772]["NeedLevel"] = 1
	tBackpackLetter_Activity[3320772]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3320772]["Cultivation"] = 30
	tBackpackLetter_Activity[3320772]["Pathfind"] = {}
	tBackpackLetter_Activity[3320772]["Pathfind"]["NpcId"] = 24048


------------------------------------------------------------------------------------
--Name：            190326[英文征服][活动脚本]4月灵珠排行榜线上部分制作
--Creator:      洪聪敏
--Created:     2019/03/26
------------------------------------------------------------------------------------
	tItemFace[3312188] = 1592
	tBackpackLetter_Activity[3312188] = {}
	tBackpackLetter_Activity[3312188]["ActivityTime"] = tActivityTime["DragonSoulWeb"]["ActiveTime"]
	tBackpackLetter_Activity[3312188]["EventType"] = 192
	tBackpackLetter_Activity[3312188]["DataType"] = 88
	tBackpackLetter_Activity[3312188]["RewardData"] = 1
	tBackpackLetter_Activity[3312188]["RewardItem"] = 3312188
	tBackpackLetter_Activity[3312188]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312188]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312188]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312188]["Pathfind"] = {}
	tBackpackLetter_Activity[3312188]["Pathfind"]["NpcId"] = 23909
	

------------------------------------------------------------------------------------
--Name：            190320[英文征服][活动脚本]4月全球江湖实力排行榜NPC制作
--Creator:      蔡颖静
--Created:     2019/03/20
------------------------------------------------------------------------------------
	tItemFace[3320746] = 1561
	tBackpackLetter_Activity[3320746] = {}
	tBackpackLetter_Activity[3320746]["ActivityTime"] = tActivityTime["CareerDevelopmentNPC"]["ActivityTime"]
	tBackpackLetter_Activity[3320746]["EventType"] = 192
	tBackpackLetter_Activity[3320746]["DataType"] = 75
	tBackpackLetter_Activity[3320746]["RewardData"] = 1
	tBackpackLetter_Activity[3320746]["RewardItem"] = 3320746
	tBackpackLetter_Activity[3320746]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320746]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320746]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3320746]["Cultivation"] = 30
	tBackpackLetter_Activity[3320746]["Pathfind"] = {}
	tBackpackLetter_Activity[3320746]["Pathfind"]["NpcId"] = 24038

------------------------------------------------------------------------------------
--Name：       190212[简体征服][活动脚本]周年庆小活动复用
--Creator:     江宇君
--Created:     2019/02/12
------------------------------------------------------------------------------------
tItemFace[3307547] = 674
tBackpackLetter_Activity[3307547] = {}
--活动时间
tBackpackLetter_Activity[3307547]["ActivityTime"] = tActivityTime["AnniversaryActivity"]["ActivityTime"]
tBackpackLetter_Activity[3307547]["EventType"] = 174
tBackpackLetter_Activity[3307547]["DataType"] = 17
tBackpackLetter_Activity[3307547]["RewardData"] = 1
tBackpackLetter_Activity[3307547]["RewardItem"] = 3307547
tBackpackLetter_Activity[3307547]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3307547]["Cultivation"] = 30
tBackpackLetter_Activity[3307547]["NeedLevel"] = 80
tBackpackLetter_Activity[3307547]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity[3307547]["Pathfind"] = {}
tBackpackLetter_Activity[3307547]["Pathfind"]["NpcId"] = 22660
--------------------------------------------------------------------------------
--190404[简体征服][活动脚本]幸运抽奖活动(4.11-4.25)
-- 幸运抽奖活动
--Creator: 	傅伟龙
--Created:	2019-03-22
--------------------------------------------------------------------------------
	tBackpackLetter_Activity[3320928] = {}
	tBackpackLetter_Activity[3320928]["ActivityTime"] = tActivityTime["LuckyDrawAct"]["ActTime"]
	tBackpackLetter_Activity[3320928]["EventType"] = 193
	tBackpackLetter_Activity[3320928]["DataType"] = 17
	tBackpackLetter_Activity[3320928]["RewardData"] = 1
	tBackpackLetter_Activity[3320928]["RewardItem"] = 3320928
	tBackpackLetter_Activity[3320928]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320928]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320928]["NeedMetempsychosis"] = 0
	
	tBackpackLetter_Activity[3320928]["Pathfind"] = {}
	tBackpackLetter_Activity[3320928]["Pathfind"]["NpcId"] = 24094


------------------------------------------------------------------------------------
--Name：       190321[简体征服][活动脚本]周年庆活动副本
--Creator:     吴燕柚
--Created:     2019/03/21
------------------------------------------------------------------------------------

	tItemFace[3312166] = 2161
	tBackpackLetter_Activity[3312166] = {}
	tBackpackLetter_Activity[3312166]["ActivityTime"] = tActivityTime["AnniversaryInstance"]["ActivityTime"]
	tBackpackLetter_Activity[3312166]["EventType"] = 192
	tBackpackLetter_Activity[3312166]["DataType"] = 68
	tBackpackLetter_Activity[3312166]["RewardData"] = 1
	tBackpackLetter_Activity[3312166]["RewardItem"] = 3312166
	tBackpackLetter_Activity[3312166]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312166]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312166]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312166]["Cultivation"] = 30
	tBackpackLetter_Activity[3312166]["Pathfind"] = {}
	tBackpackLetter_Activity[3312166]["Pathfind"]["NpcId"] = 23908

------------------------------------------------------------------------------------
--Name：        190421[英文征服][活动脚本]地推新手卡奖励兑换制作需求(5.5-6.30)
--Creator:      耿力兀
--Created:     2019-04-21
------------------------------------------------------------------------------------
tItemFace[3312320] = 2197
tBackpackLetter_Activity[3312320] = {}
--活动时间
tBackpackLetter_Activity[3312320]["ActivityTime"] = tActivityTime["NovicesReward"]["ActivityTime"]
tBackpackLetter_Activity[3312320]["EventType"] = 193
tBackpackLetter_Activity[3312320]["DataType"] = 91
tBackpackLetter_Activity[3312320]["RewardData"] = 1
tBackpackLetter_Activity[3312320]["RewardItem"] = 3312320
tBackpackLetter_Activity[3312320]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3312320]["Cultivation"] = 30
tBackpackLetter_Activity[3312320]["NeedLevel"] = 1
tBackpackLetter_Activity[3312320]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity[3312320]["Pathfind"] = {}
tBackpackLetter_Activity[3312320]["Pathfind"]["NpcId"] = 23974

------------------------------------------------------------------------------------
--Name：        190218[简体征服][活动脚本]烦请内嵌天机转盘促销活动页面
--Creator:      江宇君
--Created:      2019-02-18
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3312076] = {}
	tBackpackLetter_Activity[3312076]["ActivityTime"] = tActivityTime["TurntableLuck"]["ActivityTime"]
	tBackpackLetter_Activity[3312076]["EventType"] = 191
	tBackpackLetter_Activity[3312076]["DataType"] = 11
	tBackpackLetter_Activity[3312076]["RewardData"] = 1
	tBackpackLetter_Activity[3312076]["RewardItem"] = 3312076
	tBackpackLetter_Activity[3312076]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312076]["Cultivation"] = 30
	tBackpackLetter_Activity[3312076]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312076]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312076]["Pathfind"] = {}
	tBackpackLetter_Activity[3312076]["Pathfind"]["NpcId"] = 23811
	
------------------------------------------------------------------------------------
--Name：            181206[简体征服][活动脚本]12月消费活动
--Creator:      吴燕柚
--Created:     2018-12-06
------------------------------------------------------------------------------------
	tItemFace[3311822] = 1711
	tBackpackLetter_Activity[3311822] = {}
	tBackpackLetter_Activity[3311822]["ActivityTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
	tBackpackLetter_Activity[3311822]["EventType"] = 187
	tBackpackLetter_Activity[3311822]["DataType"] = 39
	tBackpackLetter_Activity[3311822]["RewardData"] = 1
	tBackpackLetter_Activity[3311822]["RewardItem"] = 3311822
	tBackpackLetter_Activity[3311822]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311822]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311822]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311822]["Cultivation"] = 30
	tBackpackLetter_Activity[3311822]["Pathfind"] = {}
	tBackpackLetter_Activity[3311822]["Pathfind"]["NpcId"] = 23587

------------------------------------------------------------------------------------
--Name:			190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动
--Creator:		吴燕柚
--Created:		2019/03/12
------------------------------------------------------------------------------------
	tItemFace[3312110] = 2125
	tBackpackLetter_Activity[3312110] = {}
	tBackpackLetter_Activity[3312110]["ActivityTime"] = tActivityTime["TrojanAwakenI"]["ActivityTime"]
	tBackpackLetter_Activity[3312110]["EventType"] = 191
	tBackpackLetter_Activity[3312110]["DataType"] = 56
	tBackpackLetter_Activity[3312110]["RewardData"] = 1
	tBackpackLetter_Activity[3312110]["RewardItem"] = 3312110
	tBackpackLetter_Activity[3312110]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312110]["NeedLevel"] = 120
	tBackpackLetter_Activity[3312110]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3312110]["Cultivation"] = 30
	tBackpackLetter_Activity[3312110]["Pathfind"] = {}
	tBackpackLetter_Activity[3312110]["Pathfind"]["NpcId"] = 23849

------------------------------------------------------------------------------------
--Name：         190505[英文征服][活动脚本]CO猫活动背包信和游戏内弹窗制作
--Creator:      耿力兀
--Created:     2019-05-05
------------------------------------------------------------------------------------
	-- LuckyCatInvitation
	tBackpackLetter_Activity[3312442] = {}
	tBackpackLetter_Activity[3312442]["ActivityTime"] = tActivityTime["COLuckyCat"]["LetterTime"]
	tBackpackLetter_Activity[3312442]["EventType"] = 194
	tBackpackLetter_Activity[3312442]["DataType"] = 61
	tBackpackLetter_Activity[3312442]["RewardData"] = 1
	tBackpackLetter_Activity[3312442]["RewardItem"] = 3312442
	tBackpackLetter_Activity[3312442]["RewardAttr"] = "0 1 0"
	tBackpackLetter_Activity[3312442]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312442]["NeedMetempsychosis"] = 0

	
------------------------------------------------------------------------------------
--Name:			190327[ios英文征服][活动脚本]4月新服夺宝玩法制作(物品部分)
--Purpose:		4月新服夺宝玩法制作(物品部分)
--Creator:		茅志伟
--Created:		2019/03/27
------------------------------------------------------------------------------------

tItemFace[3320893] = 776
tBackpackLetter_Activity[3320893] = {}
tBackpackLetter_Activity[3320893]["ActivityTime"] = tActivityTime["AprilTreasureActivityItem"]["ActivityTime"]
tBackpackLetter_Activity[3320893]["EventType"] = 193
tBackpackLetter_Activity[3320893]["DataType"] = 14
tBackpackLetter_Activity[3320893]["RewardData"] = 1
tBackpackLetter_Activity[3320893]["RewardItem"] = 3320893
tBackpackLetter_Activity[3320893]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3320893]["Cultivation"] = 30
-- 寻路
tBackpackLetter_Activity[3320893]["Pathfind"] = {}
tBackpackLetter_Activity[3320893]["Pathfind"]["NpcId"] = 24087

tBackpackLetter_Activity[3320893]["GlobalId"] = 53338
tBackpackLetter_Activity[3320893]["GlobalData"] = 1   --老服不获得礼包
tBackpackLetter_Activity[3320893]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：            190417[英文征服][活动脚本]英文征服5月驯龙高手(5月16日-6月12日)
--Creator:      蔡颖静
--Created:     2019/04/17
------------------------------------------------------------------------------------
	tItemFace[3321115] = 2204
	tBackpackLetter_Activity[3321115] = {}
	tBackpackLetter_Activity[3321115]["ActivityTime"] = tActivityTime["DragonMaster"]["ActTime"]
	tBackpackLetter_Activity[3321115]["EventType"] = 194
	tBackpackLetter_Activity[3321115]["DataType"] = 1
	tBackpackLetter_Activity[3321115]["RewardData"] = 1
	tBackpackLetter_Activity[3321115]["RewardItem"] = 3321115
	tBackpackLetter_Activity[3321115]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321115]["NeedLevel"] = 80
	tBackpackLetter_Activity[3321115]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3321115]["Cultivation"] = 30
	tBackpackLetter_Activity[3321115]["Pathfind"] = {}
	tBackpackLetter_Activity[3321115]["Pathfind"]["NpcId"] = 24125
	
------------------------------------------------------------------------------------
--Name:			190426[英文征服][活动脚本]博弈赤练石活动（5.21-6.11）
--Creator: 		茅志伟
--Created:		2019/04/26
------------------------------------------------------------------------------------
tItemFace[3321210] = 1779
tBackpackLetter_Activity[3321210] = {}
tBackpackLetter_Activity[3321210]["ActivityTime"] = tActivityTime["StoneGames"]["ActivityTime"]
tBackpackLetter_Activity[3321210]["EventType"] = 195
tBackpackLetter_Activity[3321210]["DataType"] = 28
tBackpackLetter_Activity[3321210]["RewardData"] = 1
tBackpackLetter_Activity[3321210]["RewardItem"] = 3321210
tBackpackLetter_Activity[3321210]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3321210]["NeedLevel"] = 80
tBackpackLetter_Activity[3321210]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3321210]["Cultivation"] = 30
tBackpackLetter_Activity[3321210]["Pathfind"] = {}
tBackpackLetter_Activity[3321210]["Pathfind"]["NpcId"] = 24170

--------------------------------------------------------------------------------
--190422[英文征服][活动脚本]扑克收集活动
--Creator: 	傅伟龙
--Created:	2019-03-22
--------------------------------------------------------------------------------
	tBackpackLetter_Activity[3321247] = {}
	tBackpackLetter_Activity[3321247]["ActivityTime"] = tActivityTime["CollectionSqueezer"]["ActTime"]
	tBackpackLetter_Activity[3321247]["EventType"] = 194
	tBackpackLetter_Activity[3321247]["DataType"] = 24
	tBackpackLetter_Activity[3321247]["RewardData"] = 1
	tBackpackLetter_Activity[3321247]["RewardItem"] = 3321247
	tBackpackLetter_Activity[3321247]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321247]["NeedLevel"] = 80
	tBackpackLetter_Activity[3321247]["NeedMetempsychosis"] = 0	
	tBackpackLetter_Activity[3321247]["Pathfind"] = {}
	tBackpackLetter_Activity[3321247]["Pathfind"]["NpcId"] = 24193



------------------------------------------------------------------------------------
--Name:		151014[简体征服][活动脚本]天下第一活动制作物品制作
--Purpose:		跨服天下第一活动物品制作
--Creator: 	黄啸
--Created:		2019/04/28
------------------------------------------------------------------------------------
	
	tItemFace[3321203] = 2216
	tBackpackLetter_Activity[3321203] = {}
	tBackpackLetter_Activity[3321203]["ActivityTime"] = tActivityTime["CrossServerBestHeroPackage"]["ActivityTime"]
	tBackpackLetter_Activity[3321203]["EventType"] = 194
	tBackpackLetter_Activity[3321203]["DataType"] = 46
	tBackpackLetter_Activity[3321203]["RewardData"] = 1
	tBackpackLetter_Activity[3321203]["RewardItem"] = 3321203
	tBackpackLetter_Activity[3321203]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321203]["NeedLevel"] = 80
	tBackpackLetter_Activity[3321203]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3321203]["Cultivation"] = 30
	tBackpackLetter_Activity[3321203]["Pathfind"] = {}
	tBackpackLetter_Activity[3321203]["Pathfind"]["NpcId"] = 24151
	

------------------------------------------------------------------------------------
--Name：           190417[英文征服][活动脚本]5月玩灵珠有好礼（5月28日-6月10日）
--Creator:      杨艳
--Created:     2019/04/28
------------------------------------------------------------------------------------
	-- 3321213,'灵珠狂欢令'
	tItemFace[3321213] = 2222
	tBackpackLetter_Activity[3321213] = {}
	--活动时间
	tBackpackLetter_Activity[3321213]["ActivityTime"] = tActivityTime["DragonGift"]["ActivityTime"]
	tBackpackLetter_Activity[3321213]["EventType"] = 194
	tBackpackLetter_Activity[3321213]["DataType"] = 75
	tBackpackLetter_Activity[3321213]["RewardData"] = 1
	tBackpackLetter_Activity[3321213]["RewardItem"] = 3321213
	tBackpackLetter_Activity[3321213]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321213]["Cultivation"] = 30
	tBackpackLetter_Activity[3321213]["NeedLevel"] = 80
	tBackpackLetter_Activity[3321213]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity[3321213]["Pathfind"] = {}
	tBackpackLetter_Activity[3321213]["Pathfind"]["NpcId"] = 24189
	
	
------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
	-- 雅雅的来信
	tItemFace[3320218] = 2145
	tBackpackLetter_Activity[3320218] = {}
	tBackpackLetter_Activity[3320218]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tBackpackLetter_Activity[3320218]["EventType"] = 190
	tBackpackLetter_Activity[3320218]["DataType"] = 27
	tBackpackLetter_Activity[3320218]["RewardData"] = 1
	tBackpackLetter_Activity[3320218]["RewardItem"] = 3320218
	tBackpackLetter_Activity[3320218]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320218]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320218]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3320218]["Cultivation"] = 30
	tBackpackLetter_Activity[3320218]["Pathfind"] = {}
	tBackpackLetter_Activity[3320218]["Pathfind"]["NpcId"] = 23804
	--熔炼道具
	tBackpackLetter_Activity[3312200] = {}
	tBackpackLetter_Activity[3312200]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tBackpackLetter_Activity[3312200]["EventType"] = 193
	tBackpackLetter_Activity[3312200]["DataType"] = 11
	tBackpackLetter_Activity[3312200]["RewardData"] = 1
	tBackpackLetter_Activity[3312200]["RewardItem"] = 3312200
	tBackpackLetter_Activity[3312200]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312200]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312200]["NeedMetempsychosis"] = 0


------------------------------------------------------------------------------------
--Name：      190520[英文征服][活动脚本]六月周卡月卡活动
--Creator:     郑洵
--Created:    2019/05/20
------------------------------------------------------------------------------------
	--3312752月卡特卖邀请函
	tItemFace[3312752] = 1560
	tBackpackLetter_Activity[3312752] = {}
	tBackpackLetter_Activity[3312752]["ActivityTime"] = tActivityTime["JuneWeekCards"]["ActivityTime"]
	tBackpackLetter_Activity[3312752]["EventType"] = 197
	tBackpackLetter_Activity[3312752]["DataType"] = 35
	tBackpackLetter_Activity[3312752]["RewardData"] = 1
	tBackpackLetter_Activity[3312752]["RewardItem"] = 3312752
	tBackpackLetter_Activity[3312752]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312752]["NeedLevel"] = 80
	tBackpackLetter_Activity[3312752]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312752]["Cultivation"] = 30
	tBackpackLetter_Activity[3312752]["Pathfind"] = {}
	tBackpackLetter_Activity[3312752]["Pathfind"]["NpcId"] = 24051
------------------------------------------------------------------------------------
--Name：       190529[英文征服][活动脚本]并服补偿方案6.20
--Creator:     吴燕柚
--Created:     2019-05-29
------------------------------------------------------------------------------------
	tItemFace[3312822] = 1704
	tBackpackLetter_Activity[3312822] = {}
	tBackpackLetter_Activity[3312822]["NewActivityTime"] = tActivityTime["ComBineServerReward"]["ActTime"]
	tBackpackLetter_Activity[3312822]["EventType"] = 197
	tBackpackLetter_Activity[3312822]["DataType"] = 68
	tBackpackLetter_Activity[3312822]["RewardData"] = 1
	tBackpackLetter_Activity[3312822]["RewardItem"] = 3312822
	tBackpackLetter_Activity[3312822]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312822]["NeedLevel"] = 15
	tBackpackLetter_Activity[3312822]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3312822]["Cultivation"] = 30
	tBackpackLetter_Activity[3312822]["Pathfind"] = {}
	tBackpackLetter_Activity[3312822]["Pathfind"]["NpcId"] = 24308
	tBackpackLetter_Activity[3312822]["GlobalId"] = 53428
	tBackpackLetter_Activity[3312822]["GlobalData"] = 1
	tBackpackLetter_Activity[3312822]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：            190530[英文征服][活动脚本]6月勇士觉醒上线普天同庆活动制作6.17-7.16
--Creator:      蔡颖静
--Created:     2019/05/30
------------------------------------------------------------------------------------
	tItemFace[3321826] = 1779
	tBackpackLetter_Activity[3321826] = {}
	tBackpackLetter_Activity[3321826]["ActivityTime"] = tActivityTime["CelebrationActivity"]["ActTime"]
	tBackpackLetter_Activity[3321826]["EventType"] = 197
	tBackpackLetter_Activity[3321826]["DataType"] = 55
	tBackpackLetter_Activity[3321826]["RewardData"] = 1
	tBackpackLetter_Activity[3321826]["RewardItem"] = 3321826
	tBackpackLetter_Activity[3321826]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321826]["NeedLevel"] = 80
	tBackpackLetter_Activity[3321826]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3321826]["Cultivation"] = 30
	tBackpackLetter_Activity[3321826]["Pathfind"] = {}
	tBackpackLetter_Activity[3321826]["Pathfind"]["NpcId"] = 24306

------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌灵兽成长基金活动页面（5.14）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
	--灵兽基金密信
	tItemFace[3312345] = 2212
	tBackpackLetter_Activity[3312345] = {}
	tBackpackLetter_Activity[3312345]["ActivityTime"] = tActivityTime["MonsterFund"]["NPCActivityTime"]
	tBackpackLetter_Activity[3312345]["EventType"] = 194
	tBackpackLetter_Activity[3312345]["DataType"] = 37
	tBackpackLetter_Activity[3312345]["RewardData"] = 1
	tBackpackLetter_Activity[3312345]["RewardItem"] = 3312345
	tBackpackLetter_Activity[3312345]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312345]["NeedLevel"] = 0
	tBackpackLetter_Activity[3312345]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312345]["Cultivation"] = 30
	tBackpackLetter_Activity[3312345]["Pathfind"] = {}
	tBackpackLetter_Activity[3312345]["Pathfind"]["NpcId"] = 23985

------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌中英联合世界版图探索活动活动页面及线上部分（5.21）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
	tItemFace[3312346] = 2214
	tBackpackLetter_Activity[3312346] = {}
	tBackpackLetter_Activity[3312346]["ActivityTime"] = tActivityTime["MapExploration"]["ActivityTime"]
	tBackpackLetter_Activity[3312346]["EventType"] = 194
	tBackpackLetter_Activity[3312346]["DataType"] = 39
	tBackpackLetter_Activity[3312346]["RewardData"] = 1
	tBackpackLetter_Activity[3312346]["RewardItem"] = 3312346
	tBackpackLetter_Activity[3312346]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312346]["NeedLevel"] = 0
	tBackpackLetter_Activity[3312346]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3312346]["Cultivation"] = 30
	tBackpackLetter_Activity[3312346]["Pathfind"] = {}
	tBackpackLetter_Activity[3312346]["Pathfind"]["NpcId"] = 23986
	
------------------------------------------------------------------------------------
--Name：        190703[英文征服][活动脚本]暑期新服(7.11)
--Creator:      黄啸
--Created:     2019-07-07
------------------------------------------------------------------------------------
	tItemFace[3313141] = 2396
	tBackpackLetter_Activity[3313141] = {}
	tBackpackLetter_Activity[3313141]["NewActivityTime"] = tActivityTime["SummerVacationActivity"]["Shuang"]["ActivityTime"]
	tBackpackLetter_Activity[3313141]["EventType"] = 200
	tBackpackLetter_Activity[3313141]["DataType"] = 26
	tBackpackLetter_Activity[3313141]["RewardData"] = 1
	tBackpackLetter_Activity[3313141]["RewardItem"] = 3313141
	tBackpackLetter_Activity[3313141]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313141]["NeedLevel"] = 0
	tBackpackLetter_Activity[3313141]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313141]["Cultivation"] = 30
	tBackpackLetter_Activity[3313141]["Pathfind"] = {}
	tBackpackLetter_Activity[3313141]["Pathfind"]["NpcId"] = 24470
	tBackpackLetter_Activity[3313141]["GlobalId"] = 53488

------------------------------------------------------------------------------------
--Name：            190613[简体征服][活动脚本]南宫促衣会魂版
--Creator:      王贤

--Created:     2019-06-13
------------------------------------------------------------------------------------
	tItemFace[3322053] = 2360
	tBackpackLetter_Activity[3322053] = {}
	tBackpackLetter_Activity[3322053]["ActivityTime"] = tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]
	tBackpackLetter_Activity[3322053]["EventType"] = 196
	tBackpackLetter_Activity[3322053]["DataType"] = 16
	tBackpackLetter_Activity[3322053]["RewardData"] = 1
	tBackpackLetter_Activity[3322053]["RewardItem"] = 3322053
	tBackpackLetter_Activity[3322053]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3322053]["NeedLevel"] = 80
	tBackpackLetter_Activity[3322053]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3322053]["Cultivation"] = 30
	tBackpackLetter_Activity[3322053]["Pathfind"] = {}
	tBackpackLetter_Activity[3322053]["Pathfind"]["NpcId"] = 24323
------------------------------------------------------------------------------------
--Name：            190619[英文征服][活动脚本]7月德州豪客赛(7.19-7.26)
--Creator:      翁清海
--Created:     2019-07-02
------------------------------------------------------------------------------------
	tItemFace[3322133] = 2349
	tBackpackLetter_Activity[3322133] = {}
	tBackpackLetter_Activity[3322133]["ActivityTime"] = tActivityTime["AugTexasActivity"]["ActivityTime"]
	tBackpackLetter_Activity[3322133]["EventType"] = 196
	tBackpackLetter_Activity[3322133]["DataType"] = 25
	tBackpackLetter_Activity[3322133]["RewardData"] = 1
	tBackpackLetter_Activity[3322133]["RewardItem"] = 3322133
	tBackpackLetter_Activity[3322133]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3322133]["NeedLevel"] = 1
	tBackpackLetter_Activity[3322133]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3322133]["Cultivation"] = 30
	tBackpackLetter_Activity[3322133]["Pathfind"] = {}
	tBackpackLetter_Activity[3322133]["Pathfind"]["NpcId"] = 24339

------------------------------------------------------------------------------------
--Name：        190703[英文征服][活动脚本]COP宣传NPC和背包信制作
--Creator:      茅志伟
--Created:     2019/07/03
------------------------------------------------------------------------------------
-- tItemFace[3322453] = 1965
tBackpackLetter_Activity[3322453] = {}
-- 活动时间
tBackpackLetter_Activity[3322453]["ActivityTime"] = tActivityTime["COPBackpackLetter"]["ActionTime"]
tBackpackLetter_Activity[3322453]["EventType"] = 200
tBackpackLetter_Activity[3322453]["DataType"] = 31
tBackpackLetter_Activity[3322453]["RewardData"] = 1
tBackpackLetter_Activity[3322453]["RewardItem"] = 3322453
tBackpackLetter_Activity[3322453]["RewardAttr"] = "0 1 0 43200 1"
-- tBackpackLetter_Activity[3322453]["Cultivation"] = 30
tBackpackLetter_Activity[3322453]["NeedLevel"] = 0
tBackpackLetter_Activity[3322453]["NeedMetempsychosis"] = 0
-- 寻路              
-- tBackpackLetter_Activity[3322453]["Pathfind"] = {}
-- tBackpackLetter_Activity[3322453]["Pathfind"]["NpcId"] = 24475

------------------------------------------------------------------------------------
--Name：            190705[英文征服][活动脚本]金币大狂欢（8.6-8.31）
--Creator:      蔡颖静
--Created:     2019/07/05
------------------------------------------------------------------------------------
	tItemFace[3322489] = 623
	tBackpackLetter_Activity[3322489] = {}
	tBackpackLetter_Activity[3322489]["NewActivityTime"] = tActivityTime["CoinCarnival"]["ActTime"]
	tBackpackLetter_Activity[3322489]["EventType"] = 200
	tBackpackLetter_Activity[3322489]["DataType"] = 47
	tBackpackLetter_Activity[3322489]["RewardData"] = 1
	tBackpackLetter_Activity[3322489]["RewardItem"] = 3322489
	tBackpackLetter_Activity[3322489]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3322489]["NeedLevel"] = 0
	tBackpackLetter_Activity[3322489]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3322489]["Cultivation"] = 30
	tBackpackLetter_Activity[3322489]["Pathfind"] = {}
	tBackpackLetter_Activity[3322489]["Pathfind"]["NpcId"] = 24483
	tBackpackLetter_Activity[3322489]["GlobalId"] = 53779
	tBackpackLetter_Activity[3322489]["GlobalData"] = 0
	tBackpackLetter_Activity[3322489]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：	190725[英文征服][活动脚本]德州金币雨
--Creator:	洪聪敏
--Created:	2019/07/25
------------------------------------------------------------------------------------
tItemFace[3313336] = 678
tBackpackLetter_Activity[3313336] = {}
tBackpackLetter_Activity[3313336]["ActivityTime"] = tActivityTime["CoinRain"]["ActiveTime"]
tBackpackLetter_Activity[3313336]["EventType"] = 196
tBackpackLetter_Activity[3313336]["DataType"] = 26
tBackpackLetter_Activity[3313336]["RewardData"] = 1
tBackpackLetter_Activity[3313336]["RewardItem"] = 3313336
tBackpackLetter_Activity[3313336]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3313336]["NeedLevel"] = 80
tBackpackLetter_Activity[3313336]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3313336]["Pathfind"] = {}
tBackpackLetter_Activity[3313336]["Pathfind"]["NpcId"] = 6297
tBackpackLetter_Activity[3313336]["GlobalId"] = 53525
tBackpackLetter_Activity[3313336]["GlobalData"] = 1
tBackpackLetter_Activity[3313336]["GlobalPos"] = 3

------------------------------------------------------------------------------------
--Name：            190528[英文征服][活动脚本]6月投资理财（6.4-7.2）
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
	tItemFace[3321897] = 1150
	tBackpackLetter_Activity[3321897] = {}
	tBackpackLetter_Activity[3321897]["ActivityTime"] = tActivityTime["SurpriseInvestment"]["ActivityTime"]
	tBackpackLetter_Activity[3321897]["EventType"] = 197
	tBackpackLetter_Activity[3321897]["DataType"] = 97
	tBackpackLetter_Activity[3321897]["RewardData"] = 1
	tBackpackLetter_Activity[3321897]["RewardItem"] = 3321897
	tBackpackLetter_Activity[3321897]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321897]["NeedLevel"] = 0
	tBackpackLetter_Activity[3321897]["NeedMetempsychosis"] = 2
	tBackpackLetter_Activity[3321897]["Cultivation"] = 30
	tBackpackLetter_Activity[3321897]["Pathfind"] = {}
	tBackpackLetter_Activity[3321897]["Pathfind"]["NpcId"] = 24316
	tBackpackLetter_Activity[3321897]["GlobalId"] = 53903
	tBackpackLetter_Activity[3321897]["OldSever"] = 1
	
------------------------------------------------------------------------------------
--Name：            190524[英文征服][活动脚本]征服金币互通
--Creator:      蔡颖静
--Created:     2019/05/24
------------------------------------------------------------------------------------
	tItemFace[3321694] = 1592
	tBackpackLetter_Activity[3321694] = {}
	tBackpackLetter_Activity[3321694]["ActivityTime"] = tActivityTime["MoneyInterflow"]["ActTime"]
	tBackpackLetter_Activity[3321694]["EventType"] = 197
	tBackpackLetter_Activity[3321694]["DataType"] = 30
	tBackpackLetter_Activity[3321694]["RewardData"] = 1
	tBackpackLetter_Activity[3321694]["RewardItem"] = 3321694
	tBackpackLetter_Activity[3321694]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321694]["NeedLevel"] = 0
	tBackpackLetter_Activity[3321694]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3321694]["Cultivation"] = 30
	
	tBackpackLetter_Activity[3321694]["Pathfind"] = {}
	tBackpackLetter_Activity[3321694]["Pathfind"]["NpcId"] = 24301
	
	
	tBackpackLetter_Activity[3321694]["GlobalId"] = 53423
	tBackpackLetter_Activity[3321694]["GlobalData"] = 1   
	tBackpackLetter_Activity[3321694]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name:		190812[英文征服][活动脚本]9月开学防流失礼包（9.5-10.9）
--Creator: 	兰瑞妹
--Created:	2019/08/12
------------------------------------------------------------------------------------
	tItemFace[3313501] = 1331
	tBackpackLetter_Activity[3313501] = {}
	tBackpackLetter_Activity[3313501]["ActivityTime"] = tActivityTime["BackSchoolAntiDrainGift"]["ActivityTime"]
	tBackpackLetter_Activity[3313501]["EventType"] = 202
	tBackpackLetter_Activity[3313501]["DataType"] = 27
	tBackpackLetter_Activity[3313501]["RewardData"] = 1
	tBackpackLetter_Activity[3313501]["RewardItem"] = 3313501
	tBackpackLetter_Activity[3313501]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313501]["NeedLevel"] = 80
	tBackpackLetter_Activity[3313501]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313501]["Cultivation"] = 30
	tBackpackLetter_Activity[3313501]["Pathfind"] = {}
	tBackpackLetter_Activity[3313501]["Pathfind"]["NpcId"] = 24792

------------------------------------------------------------------------------------
--Name：	190820[英文征服][活动脚本]内嵌招财进宝促销活动页面及线上预存天石
--Creator:	耿力兀
--Created:	2019/08/20
------------------------------------------------------------------------------------
	tItemFace[3311763] = 1095
	tBackpackLetter_Activity[3311763] = {}
	tBackpackLetter_Activity[3311763]["NewActivityTime"] = tActivityTime["DepositEmoney"]["ActTime"]
	tBackpackLetter_Activity[3311763]["EventType"] = 186
	tBackpackLetter_Activity[3311763]["DataType"] = 75
	tBackpackLetter_Activity[3311763]["RewardData"] = 1
	tBackpackLetter_Activity[3311763]["RewardItem"] = 3311763
	tBackpackLetter_Activity[3311763]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3311763]["NeedLevel"] = 80
	tBackpackLetter_Activity[3311763]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3311763]["Cultivation"] = 30
	tBackpackLetter_Activity[3311763]["Pathfind"] = {}
	tBackpackLetter_Activity[3311763]["Pathfind"]["NpcId"] = 23584
	tBackpackLetter_Activity[3311763]["GlobalId"] = 53745
	tBackpackLetter_Activity[3311763]["GlobalData"] = 1   
	tBackpackLetter_Activity[3311763]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name:		190816[英文征服][活动脚本]9月答题活动（9.3-9.29）
--Creator: 	郑飞
--Created:	2019/08/17
------------------------------------------------------------------------------------
	tItemFace[3313518] = 1779
	tBackpackLetter_Activity[3313518] = {}
	tBackpackLetter_Activity[3313518]["ActivityTime"] = tActivityTime["SepAnswerActivity"]["ActivityTime"]
	tBackpackLetter_Activity[3313518]["EventType"] = 202
	tBackpackLetter_Activity[3313518]["DataType"] = 45
	tBackpackLetter_Activity[3313518]["RewardData"] = 1
	tBackpackLetter_Activity[3313518]["RewardItem"] = 3313518
	tBackpackLetter_Activity[3313518]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313518]["NeedLevel"] = 0
	tBackpackLetter_Activity[3313518]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313518]["Cultivation"] = 30
	tBackpackLetter_Activity[3313518]["Pathfind"] = {}
	tBackpackLetter_Activity[3313518]["Pathfind"]["NpcId"] = 24812
------------------------------------------------------------------------------------
--Name：        191021[英文征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------

tItemFace[3326666] = 1718
tBackpackLetter_Activity[3326666] = {}
tBackpackLetter_Activity[3326666]["ActivityTime"] = tActivityTime["NewPetsCultivate"]["ActivityTime"]
tBackpackLetter_Activity[3326666]["EventType"] = 208
tBackpackLetter_Activity[3326666]["DataType"] = 78
tBackpackLetter_Activity[3326666]["RewardData"] = 1
tBackpackLetter_Activity[3326666]["RewardItem"] = 3326666
tBackpackLetter_Activity[3326666]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326666]["NeedLevel"] = 0
tBackpackLetter_Activity[3326666]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326666]["Pathfind"] = {}
tBackpackLetter_Activity[3326666]["Pathfind"]["NpcId"] = 25207

------------------------------------------------------------------------------------
--Name：        191014[英文征服][活动脚本]累计消费有礼活动（11.21-12.11）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
tItemFace[3326546] = 1560
tBackpackLetter_Activity[3326546] = {}
tBackpackLetter_Activity[3326546]["NewActivityTime"] = tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]
tBackpackLetter_Activity[3326546]["EventType"] = 207
tBackpackLetter_Activity[3326546]["DataType"] = 73
tBackpackLetter_Activity[3326546]["RewardData"] = 1
tBackpackLetter_Activity[3326546]["RewardItem"] = 3326546
tBackpackLetter_Activity[3326546]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326546]["NeedLevel"] = 0
tBackpackLetter_Activity[3326546]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326546]["Pathfind"] = {}
tBackpackLetter_Activity[3326546]["Pathfind"]["NpcId"] = 25054
tBackpackLetter_Activity[3326546]["GlobalId"] = 53824
tBackpackLetter_Activity[3326546]["GlobalData"] = 1
tBackpackLetter_Activity[3326546]["GlobalPos"] = 0

------------------------------------------------------------------------------------



	

----------------------------------------------------------------------------------------
--Name:		151225[简体征服][活动脚本]外套仓库版本促销活动
--Creator:		林辉山
--Created:		2015/12/25
----------------------------------------------------------------------------------------


	-- 外套仓库版本促销活动
	tBackpackLetter_Activity_NoGift[3008220] = {}
	tBackpackLetter_Activity_NoGift[3008220]["ActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	-- tBackpackLetter_Activity[3008220]["NewActivityTime"] = "2016-04-18 00:00 2016-05-18 23:59"
	tBackpackLetter_Activity_NoGift[3008220]["EventType"] = 141
	tBackpackLetter_Activity_NoGift[3008220]["DataType"] = 24
	tBackpackLetter_Activity_NoGift[3008220]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3008220]["RewardItem"] = 3008220
	tBackpackLetter_Activity_NoGift[3008220]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3008220]["NeedLevel"] = 1
	tBackpackLetter_Activity_NoGift[3008220]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity_NoGift[3008220]["GlobalId"] = 51131
	-- tBackpackLetter_Activity_NoGift[3008220]["AllServer"] = 3008220
	
------------------------------------------------------------------------------
--Name:		[征服][任务脚本]战士史诗武器
--Purpose:	战士史诗武器任务制作
--Creator: 	郑宗胜
--Created:	2016/04/19
------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3200207] = {}
	tBackpackLetter_Activity_NoGift[3200207]["EventType"] = 144
	tBackpackLetter_Activity_NoGift[3200207]["DataType"] = 92
	tBackpackLetter_Activity_NoGift[3200207]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3200207]["RewardItem"] = 3200207
	tBackpackLetter_Activity_NoGift[3200207]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3200207]["NeedLevel"] = 40
	tBackpackLetter_Activity_NoGift[3200207]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3200207]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3200207]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3200207]["Pathfind"]["PosX"] = 33
	tBackpackLetter_Activity_NoGift[3200207]["Pathfind"]["PosY"] = 65
	tBackpackLetter_Activity_NoGift[3200207]["Pathfind"]["MapId"] = 10386
	tBackpackLetter_Activity_NoGift[3200207]["Pathfind"]["NpcId"] = 10001
	

	
-- 新服狂欢召集令
tItemFace[3311874] = 1712
tBackpackLetter_Activity_NoGift[3311874] = {}
tBackpackLetter_Activity_NoGift[3311874]["ActivityTime"] = tActivityTime["IslamNewYearGift"]["GamblingTime"]
tBackpackLetter_Activity_NoGift[3311874]["EventType"] = 184
tBackpackLetter_Activity_NoGift[3311874]["DataType"] = 59
tBackpackLetter_Activity_NoGift[3311874]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3311874]["RewardItem"] = 3311874
tBackpackLetter_Activity_NoGift[3311874]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3311874]["Cultivation"] = 30
-- 寻路
tBackpackLetter_Activity_NoGift[3311874]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3311874]["Pathfind"]["NpcId"] = 23602
------------------------------------------------------------------------------------
--Name：            171103[ios英文征服][活动脚本]帮派斗地主活动
--Creator:      潘云锋
--Created:     2017/11/03
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3306517] = {}
	-- tBackpackLetter_Activity_NoGift[3306517]["ActivityTime"] =tActivityTime["GangsLandlord"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3306517]["NewActivityTime"] =tActivityTime["GangsLandlord"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3306517]["EventType"] =169
	tBackpackLetter_Activity_NoGift[3306517]["DataType"] =88
	tBackpackLetter_Activity_NoGift[3306517]["RewardData"] =1
	tBackpackLetter_Activity_NoGift[3306517]["RewardItem"] =3306517
	tBackpackLetter_Activity_NoGift[3306517]["RewardAttr"] ="0 1"
	tBackpackLetter_Activity_NoGift[3306517]["NeedLevel"] =80
	tBackpackLetter_Activity_NoGift[3306517]["NeedMetempsychosis"] =0
	tBackpackLetter_Activity_NoGift[3306517]["MsgBox"] =0
	tBackpackLetter_Activity_NoGift[3306517]["Cultivation"] =30
	tBackpackLetter_Activity_NoGift[3306517]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3306517]["Pathfind"]["NpcId"] =22370
	tBackpackLetter_Activity_NoGift[3306517]["GlobalId"] = 51974
	tBackpackLetter_Activity_NoGift[3306517]["GlobalData"] = 1
	tBackpackLetter_Activity_NoGift[3306517]["GlobalPos"] = 0
	
------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]点石成金
--Creator:		翁清海
--Created:		2018/12/01
------------------------------------------------------------------------------------
	tItemFace[3311756] = 1956
	tBackpackLetter_Activity_NoGift[3311756] = {}
	tBackpackLetter_Activity_NoGift[3311756]["ActivityTime"] = tActivityTime["MidasTouch"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3311756]["EventType"] = 186
	tBackpackLetter_Activity_NoGift[3311756]["DataType"] = 67
	tBackpackLetter_Activity_NoGift[3311756]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3311756]["RewardItem"] = 3311756
	tBackpackLetter_Activity_NoGift[3311756]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3311756]["NeedLevel"] = 15
	tBackpackLetter_Activity_NoGift[3311756]["NeedMetempsychosis"] = 2
	tBackpackLetter_Activity_NoGift[3311756]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3311756]["Pathfind"]["NpcId"] = 23577
------------------------------------------------------------------------------------
--Name:			190215[英文征服][活动脚本]灵珠兑换商店线上部分制作
--Purpose:		灵珠兑换商店线上部分制作
--Creator:		茅志伟
--Created:		2019/02/15
------------------------------------------------------------------------------------
	tItemFace[3320166] = 1592
	tBackpackLetter_Activity_NoGift[3320166] = {}
	-- 活动时间
	tBackpackLetter_Activity_NoGift[3320166]["NewActivityTime"] = tActivityTime["DragonSpiritWithdrawal"]["ActionTime"]
	tBackpackLetter_Activity_NoGift[3320166]["EventType"] = 190
	tBackpackLetter_Activity_NoGift[3320166]["DataType"] = 55
	tBackpackLetter_Activity_NoGift[3320166]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3320166]["RewardItem"] = 3320166
	tBackpackLetter_Activity_NoGift[3320166]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3320166]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3320166]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3320166]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3320166]["GlobalId"] = 53278
	-- 寻路              
	tBackpackLetter_Activity_NoGift[3320166]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3320166]["Pathfind"]["NpcId"] = 23745
	
------------------------------------------------------------------------------------
--Name：            190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动(5.9-5.20)-第三阶段
--Creator:      陈莺
--Created:     2019-03-11
------------------------------------------------------------------------------------
	tItemFace[3312111] = 2127
	tBackpackLetter_Activity[3312111] = {}
	tBackpackLetter_Activity[3312111]["ActivityTime"] = tActivityTime["WarriorsThirdPart"]["Now_Time"]
	tBackpackLetter_Activity[3312111]["EventType"] = 191
	tBackpackLetter_Activity[3312111]["DataType"] = 74
	tBackpackLetter_Activity[3312111]["RewardData"] = 1
	tBackpackLetter_Activity[3312111]["RewardItem"] = 3312111
	tBackpackLetter_Activity[3312111]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3312111]["NeedLevel"] = 120
	tBackpackLetter_Activity[3312111]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3312111]["Cultivation"] = 30
	tBackpackLetter_Activity[3312111]["Pathfind"] = {}
	tBackpackLetter_Activity[3312111]["Pathfind"]["NpcId"] = 23851
	
	-- tBackpackLetter_Activity_NoGift[3312111] = {}
	-- tBackpackLetter_Activity_NoGift[3312111]["ActivityTime"] = tActivityTime["WarriorsThirdPart"]["Now_Time"]
	-- tBackpackLetter_Activity_NoGift[3312111]["EventType"] = 191
	-- tBackpackLetter_Activity_NoGift[3312111]["DataType"] = 74
	-- tBackpackLetter_Activity_NoGift[3312111]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3312111]["RewardItem"] = 3312111
	-- tBackpackLetter_Activity_NoGift[3312111]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3312111]["NeedLevel"] = 120
	-- tBackpackLetter_Activity_NoGift[3312111]["NeedMetempsychosis"] = 1
	-- tBackpackLetter_Activity_NoGift[3312111]["Cultivation"] = 30
	-- tBackpackLetter_Activity_NoGift[3312111]["Pathfind"] = {}
	-- tBackpackLetter_Activity_NoGift[3312111]["Pathfind"]["NpcId"] = 23851
	
		
------------------------------------------------------------------------------------
--Name:		151014[简体征服][活动脚本]天下第一活动制作物品制作
--Purpose:		跨服天下第一活动物品制作
--Creator: 	黄啸
--Created:		2019/04/28
------------------------------------------------------------------------------------

	tBackpackLetter_Activity_NoGift[3321203] = {}
	tBackpackLetter_Activity_NoGift[3321203]["ActivityTime"] = tActivityTime["CrossServerBestHeroPackage"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3321203]["EventType"] = 194
	tBackpackLetter_Activity_NoGift[3321203]["DataType"] = 46
	tBackpackLetter_Activity_NoGift[3321203]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3321203]["RewardItem"] = 3321203
	tBackpackLetter_Activity_NoGift[3321203]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3321203]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3321203]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3321203]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3321203]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3321203]["Pathfind"]["NpcId"] = 24151
	
------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
	-- 雅雅的来信
	tItemFace[3320218] = 2145
	tBackpackLetter_Activity_NoGift[3320218] = {}
	tBackpackLetter_Activity_NoGift[3320218]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tBackpackLetter_Activity_NoGift[3320218]["EventType"] = 190
	tBackpackLetter_Activity_NoGift[3320218]["DataType"] = 27
	tBackpackLetter_Activity_NoGift[3320218]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3320218]["RewardItem"] = 3320218
	tBackpackLetter_Activity_NoGift[3320218]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3320218]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3320218]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3320218]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3320218]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3320218]["Pathfind"]["NpcId"] = 23804
		--熔炼道具
	tBackpackLetter_Activity_NoGift[3312200] = {}
	tBackpackLetter_Activity_NoGift[3312200]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tBackpackLetter_Activity_NoGift[3312200]["EventType"] = 193
	tBackpackLetter_Activity_NoGift[3312200]["DataType"] = 11
	tBackpackLetter_Activity_NoGift[3312200]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3312200]["RewardItem"] = 3312200
	tBackpackLetter_Activity_NoGift[3312200]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3312200]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3312200]["NeedMetempsychosis"] = 0
-------------------------------------------------------------------------------------------
--Name:		190523[英文征服][活动脚本]6月灵珠觅宝活动制作6.04-7.01
--Creator: 	戴鑫海
--Created:	2019/05/23
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3321693] = {}
tBackpackLetter_Activity[3321693]["NewActivityTime"] = tActivityTime["Pearl"]["ActivityTime5"]
tBackpackLetter_Activity[3321693]["EventType"] = 197
tBackpackLetter_Activity[3321693]["DataType"] = 31
tBackpackLetter_Activity[3321693]["RewardData"] = 1
tBackpackLetter_Activity[3321693]["RewardItem"] = 3321693
tBackpackLetter_Activity[3321693]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3321693]["NeedLevel"] = 1
tBackpackLetter_Activity[3321693]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3321693]["Cultivation"] = 30
tBackpackLetter_Activity[3321693]["Pathfind"] = {}
tBackpackLetter_Activity[3321693]["Pathfind"]["NpcId"] = 24297
tBackpackLetter_Activity[3321693]["GlobalId"] = 54693

tBackpackLetter_Activity_NoGift[3321693] = {}
tBackpackLetter_Activity_NoGift[3321693]["NewActivityTime"] = tActivityTime["Pearl"]["ActivityTime5"]
tBackpackLetter_Activity_NoGift[3321693]["EventType"] = 197
tBackpackLetter_Activity_NoGift[3321693]["DataType"] = 31
tBackpackLetter_Activity_NoGift[3321693]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3321693]["RewardItem"] = 3321693
tBackpackLetter_Activity_NoGift[3321693]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3321693]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3321693]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3321693]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3321693]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3321693]["Pathfind"]["NpcId"] = 24297
tBackpackLetter_Activity_NoGift[3321693]["GlobalId"] = 54693
------------------------------------------------------------------------------------
--Name：	190418[简体征服][任务脚本]新手体验服-副本测试版
--Creator:	林旭
--Created:	2019/04/18
------------------------------------------------------------------------------------
tItemFace[3312784] = 2316
tBackpackLetter_Activity[3312784] = {}
tBackpackLetter_Activity[3312784]["EventType"] = 197
tBackpackLetter_Activity[3312784]["DataType"] = 46
tBackpackLetter_Activity[3312784]["RewardData"] = 1
tBackpackLetter_Activity[3312784]["RewardItem"] = 3312784
tBackpackLetter_Activity[3312784]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3312784]["NeedLevel"] = 40
tBackpackLetter_Activity[3312784]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3312784]["Pathfind"] = {}
tBackpackLetter_Activity[3312784]["Pathfind"]["NpcId"] = 23966
------------------------------------------------------------------------------------
--Name：       190529[英文征服][活动脚本]并服补偿方案6.20
--Creator:     吴燕柚
--Created:     2019-05-29
------------------------------------------------------------------------------------
tBackpackLetter_Activity_NoGift[3312822] = {}
tBackpackLetter_Activity_NoGift[3312822]["NewActivityTime"] = tActivityTime["ComBineServerReward"]["ActTime"]
tBackpackLetter_Activity_NoGift[3312822]["EventType"] = 197
tBackpackLetter_Activity_NoGift[3312822]["DataType"] = 68
tBackpackLetter_Activity_NoGift[3312822]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3312822]["RewardItem"] = 3312822
tBackpackLetter_Activity_NoGift[3312822]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3312822]["NeedLevel"] = 15
tBackpackLetter_Activity_NoGift[3312822]["NeedMetempsychosis"] = 1
tBackpackLetter_Activity_NoGift[3312822]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3312822]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3312822]["Pathfind"]["NpcId"] = 24308
tBackpackLetter_Activity_NoGift[3312822]["GlobalId"] = 53428
tBackpackLetter_Activity_NoGift[3312822]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3312822]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：	190418[简体征服][任务脚本]新手体验服-副本测试版
--Creator:	林旭
--Created:	2019/04/18
------------------------------------------------------------------------------------
tBackpackLetter_Activity_NoGift[3312784] = {}
tBackpackLetter_Activity_NoGift[3312784]["EventType"] = 197
tBackpackLetter_Activity_NoGift[3312784]["DataType"] = 46
tBackpackLetter_Activity_NoGift[3312784]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3312784]["RewardItem"] = 3312784
tBackpackLetter_Activity_NoGift[3312784]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3312784]["NeedLevel"] = 40
tBackpackLetter_Activity_NoGift[3312784]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3312784]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3312784]["Pathfind"]["NpcId"] = 23966

------------------------------------------------------------------------------------
--Name：            190528[简体征服][活动脚本]勇士版本上线礼包增加内容
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3321797] = {}
	tBackpackLetter_Activity[3321797]["ActivityTime"] = tActivityTime["WarriorPackage"]["PackageTime"]
	tBackpackLetter_Activity[3321797]["EventType"] = 197
	tBackpackLetter_Activity[3321797]["DataType"] = 64
	tBackpackLetter_Activity[3321797]["RewardData"] = 1
	tBackpackLetter_Activity[3321797]["RewardItem"] = 3321797
	tBackpackLetter_Activity[3321797]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321797]["NeedLevel"] = 80
	tBackpackLetter_Activity[3321797]["NeedMetempsychosis"] = 0

	tBackpackLetter_Activity_NoGift[3321797] = {}
	tBackpackLetter_Activity_NoGift[3321797]["ActivityTime"] = tActivityTime["WarriorPackage"]["PackageTime"]
	tBackpackLetter_Activity_NoGift[3321797]["EventType"] = 197
	tBackpackLetter_Activity_NoGift[3321797]["DataType"] = 64
	tBackpackLetter_Activity_NoGift[3321797]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3321797]["RewardItem"] = 3321797
	tBackpackLetter_Activity_NoGift[3321797]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3321797]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3321797]["NeedMetempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌灵兽成长基金活动页面（5.14）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
	--灵兽基金密信
	tItemFace[3312345] = 2212
	tBackpackLetter_Activity_NoGift[3312345] = {}
	tBackpackLetter_Activity_NoGift[3312345]["ActivityTime"] = tActivityTime["MonsterFund"]["NPCActivityTime"]
	tBackpackLetter_Activity_NoGift[3312345]["EventType"] = 194
	tBackpackLetter_Activity_NoGift[3312345]["DataType"] = 37
	tBackpackLetter_Activity_NoGift[3312345]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3312345]["RewardItem"] = 3312345
	tBackpackLetter_Activity_NoGift[3312345]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3312345]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3312345]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3312345]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3312345]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3312345]["Pathfind"]["NpcId"] = 23985

------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌中英联合世界版图探索活动活动页面及线上部分（5.21）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
	tItemFace[3312346] = 2214
	tBackpackLetter_Activity_NoGift[3312346] = {}
	tBackpackLetter_Activity_NoGift[3312346]["ActivityTime"] = tActivityTime["MapExploration"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3312346]["EventType"] = 194
	tBackpackLetter_Activity_NoGift[3312346]["DataType"] = 39
	tBackpackLetter_Activity_NoGift[3312346]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3312346]["RewardItem"] = 3312346
	tBackpackLetter_Activity_NoGift[3312346]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3312346]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3312346]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3312346]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3312346]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3312346]["Pathfind"]["NpcId"] = 23986

------------------------------------------------------------------------------------
--Name：       [简体征服][活动脚本]灵珠锻造轮盘玩法
--Creator:     郑鋆
--Created:     2019/04/29
------------------------------------------------------------------------------------
tItemFace[3312319]= 2220
-- 3312319,宝物强化密信
tBackpackLetter_Activity[3312319] = {}
tBackpackLetter_Activity[3312319]["ActivityTime"] = tActivityTime["DragonSoulRoulette"]["ActivityTime"]
tBackpackLetter_Activity[3312319]["EventType"] = 194
tBackpackLetter_Activity[3312319]["DataType"] = 63
tBackpackLetter_Activity[3312319]["RewardData"] = 1
tBackpackLetter_Activity[3312319]["RewardItem"] = 3312319
tBackpackLetter_Activity[3312319]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3312319]["NeedLevel"] = 0
tBackpackLetter_Activity[3312319]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3312319]["Cultivation"] = 30
tBackpackLetter_Activity[3312319]["Pathfind"] = {}
tBackpackLetter_Activity[3312319]["Pathfind"]["NpcId"] = 24213

--  3312319,宝物强化密信 激情服
tBackpackLetter_Activity_NoGift[3312319] = {}
tBackpackLetter_Activity_NoGift[3312319]["ActivityTime"] = tActivityTime["DragonSoulRoulette"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3312319]["EventType"] = 194
tBackpackLetter_Activity_NoGift[3312319]["DataType"] = 63
tBackpackLetter_Activity_NoGift[3312319]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3312319]["RewardItem"] = 3312319
tBackpackLetter_Activity_NoGift[3312319]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3312319]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3312319]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3312319]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3312319]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3312319]["Pathfind"]["NpcId"] = 24213
------------------------------------------------------------------------------------
--Name：            190613[简体征服][活动脚本]南宫促衣会魂版
--Creator:      王贤

--Created:     2019-06-13
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3322053] = {}
	tBackpackLetter_Activity_NoGift[3322053]["ActivityTime"] = tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3322053]["EventType"] = 196
	tBackpackLetter_Activity_NoGift[3322053]["DataType"] = 16
	tBackpackLetter_Activity_NoGift[3322053]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3322053]["RewardItem"] = 3322053
	tBackpackLetter_Activity_NoGift[3322053]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3322053]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3322053]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3322053]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3322053]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3322053]["Pathfind"]["NpcId"] = 24323
	
------------------------------------------------------------------------------------
--Name：            190507[简体征服][活动脚本]最强勇士职业PK赛
--Creator:      江宇君
--Created:     2019-05-07
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3321472] = {}
	tBackpackLetter_Activity[3321472]["ActivityTime"] = tActivityTime["TrojanCompetition"]["ActivityTime"]
	tBackpackLetter_Activity[3321472]["EventType"] = 195
	tBackpackLetter_Activity[3321472]["DataType"] = 25
	tBackpackLetter_Activity[3321472]["RewardData"] = 1
	tBackpackLetter_Activity[3321472]["RewardItem"] = 3321472
	tBackpackLetter_Activity[3321472]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321472]["NeedLevel"] = 0
	tBackpackLetter_Activity[3321472]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3321472]["Cultivation"] = 30
	tBackpackLetter_Activity[3321472]["Pathfind"] = {}
	tBackpackLetter_Activity[3321472]["Pathfind"]["NpcId"] = 24232
	tBackpackLetter_Activity[3321472]["IsDealServer"] = 1
	tBackpackLetter_Activity[3321472]["GlobalId"] = 53801
	tBackpackLetter_Activity[3321472]["GlobalData"] = 0
	tBackpackLetter_Activity[3321472]["GlobalPos"] = 0
	tBackpackLetter_Activity[3321472]["OldSever"] = 1

------------------------------------------------------------------------------------
--Name：            190507[简体征服][活动脚本]最强勇士职业PK赛
--Creator:      江宇君
--Created:     2019-05-07
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3321472] = {}
	tBackpackLetter_Activity_NoGift[3321472]["ActivityTime"] = tActivityTime["TrojanCompetition"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3321472]["EventType"] = 195
	tBackpackLetter_Activity_NoGift[3321472]["DataType"] = 25
	tBackpackLetter_Activity_NoGift[3321472]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3321472]["RewardItem"] = 3321472
	tBackpackLetter_Activity_NoGift[3321472]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3321472]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3321472]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3321472]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3321472]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3321472]["Pathfind"]["NpcId"] = 24232
	tBackpackLetter_Activity_NoGift[3321472]["IsDealServer"] = 1
	tBackpackLetter_Activity_NoGift[3321472]["GlobalId"] = 53801
	tBackpackLetter_Activity_NoGift[3321472]["GlobalData"] = 0
	tBackpackLetter_Activity_NoGift[3321472]["GlobalPos"] = 0
	tBackpackLetter_Activity_NoGift[3321472]["OldSever"] = 1
	
------------------------------------------------------------------------------------
--Name：        190703[英文征服][活动脚本]COP宣传NPC和背包信制作
--Creator:      茅志伟
--Created:     2019/07/03
------------------------------------------------------------------------------------
-- tItemFace[3322453] = 1965
tBackpackLetter_Activity_NoGift[3322453] = {}
-- 活动时间
tBackpackLetter_Activity_NoGift[3322453]["ActivityTime"] = tActivityTime["COPBackpackLetter"]["ActionTime"]
tBackpackLetter_Activity_NoGift[3322453]["EventType"] = 200
tBackpackLetter_Activity_NoGift[3322453]["DataType"] = 31
tBackpackLetter_Activity_NoGift[3322453]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3322453]["RewardItem"] = 3322453
tBackpackLetter_Activity_NoGift[3322453]["RewardAttr"] = "0 1 0 43200 1"
-- tBackpackLetter_Activity_NoGift[3322453]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3322453]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3322453]["NeedMetempsychosis"] = 0
-- 寻路              
-- tBackpackLetter_Activity_NoGift[3322453]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3322453]["Pathfind"]["NpcId"] = 24475

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]增加神兵灵魄的促销
--Creator:		翁清海
--Created:		2019/07/03
------------------------------------------------------------------------------------
tItemFace[3322253] = 1561
tBackpackLetter_Activity[3322253] = {}
tBackpackLetter_Activity[3322253]["ActivityTime"] = tActivityTime["LegendaryEssence"]["ActivityTime"]
tBackpackLetter_Activity[3322253]["EventType"] = 196
tBackpackLetter_Activity[3322253]["DataType"] = 26
tBackpackLetter_Activity[3322253]["RewardData"] = 1
tBackpackLetter_Activity[3322253]["RewardItem"] = 3322253
tBackpackLetter_Activity[3322253]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3322253]["NeedLevel"] = 80
tBackpackLetter_Activity[3322253]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3322253]["Pathfind"] = {}
tBackpackLetter_Activity[3322253]["Pathfind"]["NpcId"] = 24476
tBackpackLetter_Activity[3322253]["NeedPro"] ={}
tBackpackLetter_Activity[3322253]["NeedPro"]["Pro1"] = G_PRO_Trojan0
tBackpackLetter_Activity[3322253]["NeedPro"]["Pro2"] = G_PRO_Trojan5

tBackpackLetter_Activity_NoGift[3322253] = {}
tBackpackLetter_Activity_NoGift[3322253]["ActivityTime"] = tActivityTime["LegendaryEssence"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3322253]["EventType"] = 196
tBackpackLetter_Activity_NoGift[3322253]["DataType"] = 26
tBackpackLetter_Activity_NoGift[3322253]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3322253]["RewardItem"] = 3322253
tBackpackLetter_Activity_NoGift[3322253]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3322253]["NeedLevel"] = 80
tBackpackLetter_Activity_NoGift[3322253]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3322253]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3322253]["Pathfind"]["NpcId"] = 24476
tBackpackLetter_Activity_NoGift[3322253]["NeedPro"] ={}
tBackpackLetter_Activity_NoGift[3322253]["NeedPro"]["Pro1"] = G_PRO_Trojan0
tBackpackLetter_Activity_NoGift[3322253]["NeedPro"]["Pro2"] = G_PRO_Trojan5

----------------------------------------------------------------------------------
-- ###190628[简体征服][活动脚本]7月copk生存挑战赛
-- ###sql by 黄啸
-- ###date:2019-06-28
------------------------------------------------------------------------------------
tItemFace[3313103] = 2400
tBackpackLetter_Activity[3313103] = {}
tBackpackLetter_Activity[3313103]["ActivityTime"] = tActivityTime["JulyEatchicken"]["ActiveTime"]
tBackpackLetter_Activity[3313103]["EventType"] = 200
tBackpackLetter_Activity[3313103]["DataType"] = 36
tBackpackLetter_Activity[3313103]["RewardData"] = 1
tBackpackLetter_Activity[3313103]["RewardItem"] = 3313103
tBackpackLetter_Activity[3313103]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3313103]["NeedLevel"] = 80
tBackpackLetter_Activity[3313103]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3313103]["Pathfind"] = {}
tBackpackLetter_Activity[3313103]["Pathfind"]["NpcId"] = 24407
tBackpackLetter_Activity_NoGift[3313103] = {}
tBackpackLetter_Activity_NoGift[3313103]["ActivityTime"] = tActivityTime["JulyEatchicken"]["ActiveTime"]
tBackpackLetter_Activity_NoGift[3313103]["EventType"] = 200
tBackpackLetter_Activity_NoGift[3313103]["DataType"] = 36
tBackpackLetter_Activity_NoGift[3313103]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3313103]["RewardItem"] = 3313103
tBackpackLetter_Activity_NoGift[3313103]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3313103]["NeedLevel"] = 80
tBackpackLetter_Activity_NoGift[3313103]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3313103]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3313103]["Pathfind"]["NpcId"] = 24407

------------------------------------------------------------------------------------
--Name:		180718[英文征服][活动脚本]抽奖目标榜活动
--Creator: 	茅志伟
--Created:	2018/07/18
------------------------------------------------------------------------------------
	tItemFace[3310186] = 1351
	tBackpackLetter_Activity_NoGift[3310186] = {}
	--活动时间
	tBackpackLetter_Activity_NoGift[3310186]["ActivityTime"] = tActivityTime["tTargetList"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3310186]["EventType"] = 179
	tBackpackLetter_Activity_NoGift[3310186]["DataType"] = 71
	tBackpackLetter_Activity_NoGift[3310186]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3310186]["RewardItem"] = 3310186
	tBackpackLetter_Activity_NoGift[3310186]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3310186]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3310186]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3310186]["NeedMetempsychosis"] = 0
	-- 寻路
	tBackpackLetter_Activity_NoGift[3310186]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3310186]["Pathfind"]["NpcId"] = 23087
	-- tBackpackLetter_Activity_NoGift[3310186]["Pathfind"]["PosX"] = 356
	-- tBackpackLetter_Activity_NoGift[3310186]["Pathfind"]["PosY"] = 414
	-- tBackpackLetter_Activity_NoGift[3310186]["Pathfind"]["MapId"] = 1002

------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
	--活动时间
	tBackpackLetter_Activity_NoGift[3310208] = {}
	tBackpackLetter_Activity_NoGift[3310208]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3310208]["EventType"] = 180
	tBackpackLetter_Activity_NoGift[3310208]["DataType"] = 28
	tBackpackLetter_Activity_NoGift[3310208]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3310208]["RewardItem"] = 3310208
	tBackpackLetter_Activity_NoGift[3310208]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3310208]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3310208]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3310208]["Cultivation"] = 30
	
	tBackpackLetter_Activity_NoGift[3310208]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3310208]["Pathfind"]["NpcId"] = 23096
	
	-- 花仙精灵
	tBackpackLetter_Activity_NoGift[3322680] = {}
	tBackpackLetter_Activity_NoGift[3322680]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3322680]["EventType"] = 180
	tBackpackLetter_Activity_NoGift[3322680]["DataType"] = 70
	tBackpackLetter_Activity_NoGift[3322680]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3322680]["RewardItem"] = 3322680
	tBackpackLetter_Activity_NoGift[3322680]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3322680]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3322680]["NeedMetempsychosis"] = 0

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--Name:			[ios英文征服][活动脚本]每日寻宝副本（7.16-8.15）
--Creator:		翁清海
--Created:		2019/07/01
------------------------------------------------------------------------------------
	tItemFace[3322165] = 2435
	tBackpackLetter_Activity[3322165] = {}
	tBackpackLetter_Activity[3322165]["ActivityTime"] = tActivityTime["FivePagoda"]["ActTime"]
	tBackpackLetter_Activity[3322165]["EventType"] = 196
	tBackpackLetter_Activity[3322165]["DataType"] = 21
	tBackpackLetter_Activity[3322165]["RewardData"] = 1
	tBackpackLetter_Activity[3322165]["RewardItem"] = 3322165
	tBackpackLetter_Activity[3322165]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3322165]["NeedLevel"] = 1
	tBackpackLetter_Activity[3322165]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3322165]["Cultivation"] = 30
	tBackpackLetter_Activity[3322165]["Pathfind"] = {}
	tBackpackLetter_Activity[3322165]["Pathfind"]["NpcId"] = 24382

------------------------------------------------------------------------------------
--Name:			190715[英文征服][活动脚本]拼多多模式拉新活动（上古神器）（8.06-9.04）
--Creator:		郑洵
--Created:		2019/07/15
------------------------------------------------------------------------------------
	-- tItemFace[3313279] = 767
	-- tBackpackLetter_Activity[3313279] = {}
	-- tBackpackLetter_Activity[3313279]["ActivityTime"] = tActivityTime["RelicRecruitvH5"]["ActivityTime"]
	-- tBackpackLetter_Activity[3313279]["EventType"] = 200
	-- tBackpackLetter_Activity[3313279]["DataType"] = 50
	-- tBackpackLetter_Activity[3313279]["RewardData"] = 1
	-- tBackpackLetter_Activity[3313279]["RewardItem"] = 3313279
	-- tBackpackLetter_Activity[3313279]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3313279]["NeedLevel"] = 0
	-- tBackpackLetter_Activity[3313279]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3313279]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3313279]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3313279]["Pathfind"]["NpcId"] = 24560


------------------------------------------------------------------------------------
--Name:			[ios英文征服][活动脚本]每日寻宝副本（7.16-8.15）
--Creator:		翁清海
--Created:		2019/07/01
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3322165] = {}
	tBackpackLetter_Activity_NoGift[3322165]["ActivityTime"] = tActivityTime["FivePagoda"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3322165]["EventType"] = 196
	tBackpackLetter_Activity_NoGift[3322165]["DataType"] = 21
	tBackpackLetter_Activity_NoGift[3322165]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3322165]["RewardItem"] = 3322165
	tBackpackLetter_Activity_NoGift[3322165]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3322165]["NeedLevel"] = 1
	tBackpackLetter_Activity_NoGift[3322165]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3322165]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3322165]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3322165]["Pathfind"]["NpcId"] = 24382
	
------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
	-- 纪凡希香水
	tItemFace[3320235] = 2113
	tBackpackLetter_Activity[3320235] = {}
	tBackpackLetter_Activity[3320235]["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
	tBackpackLetter_Activity[3320235]["EventType"] = 189
	tBackpackLetter_Activity[3320235]["DataType"] = 64
	tBackpackLetter_Activity[3320235]["RewardData"] = 1
	tBackpackLetter_Activity[3320235]["RewardItem"] = 3320235
	tBackpackLetter_Activity[3320235]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3320235]["NeedLevel"] = 80
	tBackpackLetter_Activity[3320235]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3320235]["Cultivation"] = 30
	tBackpackLetter_Activity[3320235]["Pathfind"] = {}
	tBackpackLetter_Activity[3320235]["Pathfind"]["NpcId"] = 23732
------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
	-- 纪凡希香水
	tBackpackLetter_Activity_NoGift[3320235] = {}
	tBackpackLetter_Activity_NoGift[3320235]["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3320235]["EventType"] = 189
	tBackpackLetter_Activity_NoGift[3320235]["DataType"] = 64
	tBackpackLetter_Activity_NoGift[3320235]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3320235]["RewardItem"] = 3320235
	tBackpackLetter_Activity_NoGift[3320235]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3320235]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3320235]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3320235]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3320235]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3320235]["Pathfind"]["NpcId"] = 23732
	


------------------------------------------------------------------------------------
--Name:			190716[英文征服][活动脚本]8月渠道充值活动（8.16-8.25）
--Creator:		郑洵
--Created:		2019/07/16
------------------------------------------------------------------------------------
	tItemFace[3313280] = 2114
	tBackpackLetter_Activity[3313280] = {}
	tBackpackLetter_Activity[3313280]["ActivityTime"] = tActivityTime["AugustChannelRecharge"]["ActivityTime"]
	tBackpackLetter_Activity[3313280]["EventType"] = 200
	tBackpackLetter_Activity[3313280]["DataType"] = 51
	tBackpackLetter_Activity[3313280]["RewardData"] = 1
	tBackpackLetter_Activity[3313280]["RewardItem"] = 3313280
	tBackpackLetter_Activity[3313280]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313280]["NeedLevel"] = 0
	tBackpackLetter_Activity[3313280]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313280]["Cultivation"] = 30
	tBackpackLetter_Activity[3313280]["GlobalId"] = 53513
	tBackpackLetter_Activity[3313280]["GlobalData"] = 1
	tBackpackLetter_Activity[3313280]["GlobalPos"] = 0
	tBackpackLetter_Activity[3313280]["Pathfind"] = {}
	tBackpackLetter_Activity[3313280]["Pathfind"]["NpcId"] = 24561

	tBackpackLetter_Activity_NoGift[3313280] = {}
	tBackpackLetter_Activity_NoGift[3313280]["ActivityTime"] = tActivityTime["AugustChannelRecharge"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3313280]["EventType"] = 200
	tBackpackLetter_Activity_NoGift[3313280]["DataType"] = 51
	tBackpackLetter_Activity_NoGift[3313280]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3313280]["RewardItem"] = 3313280
	tBackpackLetter_Activity_NoGift[3313280]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3313280]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3313280]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3313280]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3313280]["GlobalId"] = 53513
	tBackpackLetter_Activity_NoGift[3313280]["GlobalData"] = 1
	tBackpackLetter_Activity_NoGift[3313280]["GlobalPos"] = 0
	tBackpackLetter_Activity_NoGift[3313280]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3313280]["Pathfind"]["NpcId"] = 24561
	
	-----------------------------------------------------------------------------------
--Name：      190725[英文征服][活动脚本]赛季服-王者服（8.06-9.12）
--Creator:    吴燕柚
--Created:    190725
------------------------------------------------------------------------------------
-- tItemFace[3313343] = 2440
-- tBackpackLetter_Activity[3313343] = {}
-- tBackpackLetter_Activity[3313343]["NewActivityTime"] = tActivityTime["KingServer"]["ActTime"]
-- tBackpackLetter_Activity[3313343]["EventType"] = 201
-- tBackpackLetter_Activity[3313343]["DataType"] = 39
-- tBackpackLetter_Activity[3313343]["RewardData"] = 1
-- tBackpackLetter_Activity[3313343]["RewardItem"] = 3313343
-- tBackpackLetter_Activity[3313343]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3313343]["NeedLevel"] = 0
-- tBackpackLetter_Activity[3313343]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity[3313343]["Pathfind"] = {}
-- tBackpackLetter_Activity[3313343]["Pathfind"]["NpcId"] = 24687
-- tBackpackLetter_Activity[3313343]["GlobalId"] = 53526
-- tBackpackLetter_Activity[3313343]["GlobalData"] = 1
-- tBackpackLetter_Activity[3313343]["GlobalPos"] = 0

-- tBackpackLetter_Activity_NoGift[3313343] = {}
-- tBackpackLetter_Activity_NoGift[3313343]["NewActivityTime"] = tActivityTime["KingServer"]["ActTime"]
-- tBackpackLetter_Activity_NoGift[3313343]["EventType"] = 201
-- tBackpackLetter_Activity_NoGift[3313343]["DataType"] = 39
-- tBackpackLetter_Activity_NoGift[3313343]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3313343]["RewardItem"] = 3313343
-- tBackpackLetter_Activity_NoGift[3313343]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3313343]["NeedLevel"] = 0
-- tBackpackLetter_Activity_NoGift[3313343]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3313343]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3313343]["Pathfind"]["NpcId"] = 24687
-- tBackpackLetter_Activity_NoGift[3313343]["GlobalId"] = 53526
-- tBackpackLetter_Activity_NoGift[3313343]["GlobalData"] = 1
-- tBackpackLetter_Activity_NoGift[3313343]["GlobalPos"] = 0

-- tItemFace[3313369] = 2440
-- tBackpackLetter_Activity[3313369] = {}
-- tBackpackLetter_Activity[3313369]["NewActivityTime"] = tActivityTime["KingServer"]["ActTime"]
-- tBackpackLetter_Activity[3313369]["EventType"] = 201
-- tBackpackLetter_Activity[3313369]["DataType"] = 39
-- tBackpackLetter_Activity[3313369]["RewardData"] = 1
-- tBackpackLetter_Activity[3313369]["RewardItem"] = 3313369
-- tBackpackLetter_Activity[3313369]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3313369]["NeedLevel"] = 0
-- tBackpackLetter_Activity[3313369]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity[3313369]["Pathfind"] = {}
-- tBackpackLetter_Activity[3313369]["Pathfind"]["NpcId"] = 24705
-- tBackpackLetter_Activity[3313369]["GlobalId"] = 53531
-- tBackpackLetter_Activity[3313369]["GlobalData"] = 1
-- tBackpackLetter_Activity[3313369]["GlobalPos"] = 0

-- tBackpackLetter_Activity_NoGift[3313369] = {}
-- tBackpackLetter_Activity_NoGift[3313369]["NewActivityTime"] = tActivityTime["KingServer"]["ActTime"]
-- tBackpackLetter_Activity_NoGift[3313369]["EventType"] = 201
-- tBackpackLetter_Activity_NoGift[3313369]["DataType"] = 39
-- tBackpackLetter_Activity_NoGift[3313369]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3313369]["RewardItem"] = 3313369
-- tBackpackLetter_Activity_NoGift[3313369]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3313369]["NeedLevel"] = 0
-- tBackpackLetter_Activity_NoGift[3313369]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3313369]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3313369]["Pathfind"]["NpcId"] = 24705
-- tBackpackLetter_Activity_NoGift[3313369]["GlobalId"] = 53531
-- tBackpackLetter_Activity_NoGift[3313369]["GlobalData"] = 1
-- tBackpackLetter_Activity_NoGift[3313369]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：180802[简体征服][活动脚本]八月促销活动制作V1.0
--Creator:      林旭
--Created:     2018/08/03
------------------------------------------------------------------------------------
tItemFace[3310376] = 838
tBackpackLetter_Activity[3310376] = {}
tBackpackLetter_Activity[3310376]["ActivityTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
tBackpackLetter_Activity[3310376]["EventType"] = 181
tBackpackLetter_Activity[3310376]["DataType"] = 38
tBackpackLetter_Activity[3310376]["RewardData"] = 1
tBackpackLetter_Activity[3310376]["RewardItem"] = 3310376
tBackpackLetter_Activity[3310376]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3310376]["NeedLevel"] = 80
tBackpackLetter_Activity[3310376]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3310376]["Cultivation"] = 30
tBackpackLetter_Activity[3310376]["Pathfind"] = {}
tBackpackLetter_Activity[3310376]["Pathfind"]["NpcId"] = 21527
-- tBackpackLetter_Activity[3310376]["GlobalId"] = 53017
------------------------------------------------------------------------------------
--Name：180802[简体征服][活动脚本]八月促销活动制作V1.0
--Creator:      林旭
--Created:     2018/08/03
------------------------------------------------------------------------------------
-- tItemFace[3310376] = 838
-- tBackpackLetter_Activity_NoGift[3310376] = {}
-- tBackpackLetter_Activity_NoGift[3310376]["ActivityTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
-- tBackpackLetter_Activity_NoGift[3310376]["EventType"] = 181
-- tBackpackLetter_Activity_NoGift[3310376]["DataType"] = 38
-- tBackpackLetter_Activity_NoGift[3310376]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3310376]["RewardItem"] = 3310376
-- tBackpackLetter_Activity_NoGift[3310376]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3310376]["NeedLevel"] = 80
-- tBackpackLetter_Activity_NoGift[3310376]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3310376]["Cultivation"] = 30
-- tBackpackLetter_Activity_NoGift[3310376]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3310376]["Pathfind"]["NpcId"] = 21527
-- tBackpackLetter_Activity_NoGift[3310376]["GlobalId"] = 53017

------------------------------------------------------------------------------------
--Name：           190806[英文征服][活动脚本]9月耗赠点活动（9.5-9.25）
--Creator:      杨艳
--Created:     2019/08/09
------------------------------------------------------------------------------------
tItemFace[3322920] = 2261
tBackpackLetter_Activity[3322920] = {}
--活动时间
tBackpackLetter_Activity[3322920]["NewActivityTime"] = tActivityTime["SepMoMoAct"]["ActivityTime"]
tBackpackLetter_Activity[3322920]["EventType"] = 202
tBackpackLetter_Activity[3322920]["DataType"] = 23
tBackpackLetter_Activity[3322920]["RewardData"] = 1
tBackpackLetter_Activity[3322920]["RewardItem"] = 3322920
tBackpackLetter_Activity[3322920]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3322920]["Cultivation"] = 30
tBackpackLetter_Activity[3322920]["NeedLevel"] = 1
tBackpackLetter_Activity[3322920]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3322920]["GlobalId"] = 54008
tBackpackLetter_Activity[3322920]["GlobalData"] = 1
tBackpackLetter_Activity[3322920]["GlobalPos"] = 0
-- 寻路
tBackpackLetter_Activity[3322920]["Pathfind"] = {}
tBackpackLetter_Activity[3322920]["Pathfind"]["NpcId"] = 24787	
	
-- tBackpackLetter_Activity_NoGift[3322920] = {}
-- tBackpackLetter_Activity_NoGift[3322920]["ActivityTime"] = tActivityTime["SepMoMoAct"]["ActivityTime"]
-- tBackpackLetter_Activity_NoGift[3322920]["EventType"] = 202
-- tBackpackLetter_Activity_NoGift[3322920]["DataType"] = 23
-- tBackpackLetter_Activity_NoGift[3322920]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3322920]["RewardItem"] = 3322920
-- tBackpackLetter_Activity_NoGift[3322920]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3322920]["NeedLevel"] = 1
-- tBackpackLetter_Activity_NoGift[3322920]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3322920]["Cultivation"] = 30
-- tBackpackLetter_Activity_NoGift[3322920]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3322920]["Pathfind"]["NpcId"] = 24787
	
------------------------------------------------------------------------------------
--Name：	190820[英文征服][活动脚本]内嵌招财进宝促销活动页面及线上预存天石
--Creator:	耿力兀
--Created:	2019/08/20
------------------------------------------------------------------------------------
	tItemFace[3311763] = 1095
	tBackpackLetter_Activity_NoGift[3311763] = {}
	tBackpackLetter_Activity_NoGift[3311763]["NewActivityTime"] = tActivityTime["DepositEmoney"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3311763]["EventType"] = 186
	tBackpackLetter_Activity_NoGift[3311763]["DataType"] = 75
	tBackpackLetter_Activity_NoGift[3311763]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3311763]["RewardItem"] = 3311763
	tBackpackLetter_Activity_NoGift[3311763]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3311763]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3311763]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3311763]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3311763]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3311763]["Pathfind"]["NpcId"] = 23584
	tBackpackLetter_Activity_NoGift[3311763]["GlobalId"] = 53745
	tBackpackLetter_Activity_NoGift[3311763]["GlobalData"] = 1   
	tBackpackLetter_Activity_NoGift[3311763]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name:		190816[英文征服][活动脚本]手拉手拉新活动-线上制作 （9.5-11.05）
--Creator: 	林旭
--Created:	2019-08-16
------------------------------------------------------------------------------------
tItemFace[3313517]= 2220
tBackpackLetter_Activity[3313517] = {}
tBackpackLetter_Activity[3313517]["ActivityTime"] = tActivityTime["NewHandInHand"]["ActivityTime"]
tBackpackLetter_Activity[3313517]["EventType"] = 202
tBackpackLetter_Activity[3313517]["DataType"] = 99
tBackpackLetter_Activity[3313517]["RewardData"] = 1
tBackpackLetter_Activity[3313517]["RewardItem"] = 3313517
tBackpackLetter_Activity[3313517]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3313517]["NeedLevel"] = 0
tBackpackLetter_Activity[3313517]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3313517]["Cultivation"] = 30
tBackpackLetter_Activity[3313517]["Pathfind"] = {}
tBackpackLetter_Activity[3313517]["Pathfind"]["NpcId"] = 24811
------------------------------------------------------------------------------------
--Name:		190816[英文征服][活动脚本]9月答题活动（9.3-9.29）
--Creator: 	郑飞
--Created:	2019/08/17
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3313518] = {}
	tBackpackLetter_Activity_NoGift[3313518]["ActivityTime"] = tActivityTime["SepAnswerActivity"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3313518]["EventType"] = 202
	tBackpackLetter_Activity_NoGift[3313518]["DataType"] = 45
	tBackpackLetter_Activity_NoGift[3313518]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3313518]["RewardItem"] = 3313518
	tBackpackLetter_Activity_NoGift[3313518]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3313518]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3313518]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3313518]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3313518]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3313518]["Pathfind"]["NpcId"] = 24812
	
------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------	
	-- tBackpackLetter_Activity_NoGift[3307005] = {}
	-- tBackpackLetter_Activity_NoGift[3307005]["ActivityTime"] = tActivityTime["RiotOfNether"]["Activity"]
	-- tBackpackLetter_Activity_NoGift[3307005]["EventType"] = 170
	-- tBackpackLetter_Activity_NoGift[3307005]["DataType"] = 90
	-- tBackpackLetter_Activity_NoGift[3307005]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3307005]["RewardItem"] = 3307005
	-- tBackpackLetter_Activity_NoGift[3307005]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3307005]["NeedLevel"] = 80
	-- tBackpackLetter_Activity_NoGift[3307005]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity_NoGift[3307005]["MsgBox"] = 0
	-- tBackpackLetter_Activity_NoGift[3307005]["Cultivation"] = 30
	-- tBackpackLetter_Activity_NoGift[3307005]["Pathfind"] = {}
	-- tBackpackLetter_Activity_NoGift[3307005]["Pathfind"]["PosX"] = 269
	-- tBackpackLetter_Activity_NoGift[3307005]["Pathfind"]["PosY"] = 236
	-- tBackpackLetter_Activity_NoGift[3307005]["Pathfind"]["MapId"] = 1036
	-- tBackpackLetter_Activity_NoGift[3307005]["Pathfind"]["NpcId"] = 21351
------------------------------------------------------------------------------------
--Name：            190821[英文征服][活动脚本]全球共赏月
--Creator:      戴鑫海
--Created:     2019/08/21
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3304526] = {}
	tBackpackLetter_Activity[3304526]["ActivityTime"] = tActivityTime["ZhongQiu"]["ActivityTime"]
	tBackpackLetter_Activity[3304526]["EventType"] = 164
	tBackpackLetter_Activity[3304526]["DataType"] = 60
	tBackpackLetter_Activity[3304526]["RewardData"] = 1
	tBackpackLetter_Activity[3304526]["RewardItem"] = 3304526
	tBackpackLetter_Activity[3304526]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3304526]["NeedLevel"] = 80
	tBackpackLetter_Activity[3304526]["NeedMetempsychosis"] = 0
	
	tItemFace[3310783] = 1780
	--活动时间
	tBackpackLetter_Activity[3310783] = {}
	tBackpackLetter_Activity[3310783]["ActivityTime"] = tActivityTime["ZhongQiu"]["ActivityTime"]
	tBackpackLetter_Activity[3310783]["EventType"] = 183
	tBackpackLetter_Activity[3310783]["DataType"] = 22
	tBackpackLetter_Activity[3310783]["RewardData"] = 1
	tBackpackLetter_Activity[3310783]["RewardItem"] = 3310783
	tBackpackLetter_Activity[3310783]["RewardAttr"] = "0 1 0 1440 1"
	tBackpackLetter_Activity[3310783]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310783]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310783]["Cultivation"] = 30
	
	tBackpackLetter_Activity[3310783]["Pathfind"] = {}
	tBackpackLetter_Activity[3310783]["Pathfind"]["NpcId"] = 24869
	
	tBackpackLetter_Activity_NoGift[3304526] = {}
	tBackpackLetter_Activity_NoGift[3304526]["ActivityTime"] = tActivityTime["ZhongQiu"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3304526]["EventType"] = 164
	tBackpackLetter_Activity_NoGift[3304526]["DataType"] = 60
	tBackpackLetter_Activity_NoGift[3304526]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3304526]["RewardItem"] = 3304526
	tBackpackLetter_Activity_NoGift[3304526]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3304526]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3304526]["NeedMetempsychosis"] = 0
	
	--活动时间
	tBackpackLetter_Activity_NoGift[3310783] = {}
	tBackpackLetter_Activity_NoGift[3310783]["ActivityTime"] = tActivityTime["ZhongQiu"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3310783]["EventType"] = 183
	tBackpackLetter_Activity_NoGift[3310783]["DataType"] = 22
	tBackpackLetter_Activity_NoGift[3310783]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3310783]["RewardItem"] = 3310783
	tBackpackLetter_Activity_NoGift[3310783]["RewardAttr"] = "0 1 0 1440 1"
	tBackpackLetter_Activity_NoGift[3310783]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3310783]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3310783]["Cultivation"] = 30
	
	tBackpackLetter_Activity_NoGift[3310783]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3310783]["Pathfind"]["NpcId"] = 24869
	
------------------------------------------------------------------------------------
--Name：        190815[简体征服][活动脚本]制作全球中秋博饼活动（9.10-9.23）
--Creator:      傅伟龙
--Created:     2019-06-05
------------------------------------------------------------------------------------
	tItemFace[3323246] = 2397
	tBackpackLetter_Activity[3323246] = {}
	tBackpackLetter_Activity[3323246]["ActivityTime"] = tActivityTime["MidAutumnDay_BoBing"]["ActTime"]
	tBackpackLetter_Activity[3323246]["EventType"] = 203
	tBackpackLetter_Activity[3323246]["DataType"] = 58
	tBackpackLetter_Activity[3323246]["RewardData"] = 1
	tBackpackLetter_Activity[3323246]["RewardItem"] = 3323246
	tBackpackLetter_Activity[3323246]["RewardAttr"] = "0 1 0 1440 1"
	tBackpackLetter_Activity[3323246]["NeedLevel"] = 0
	tBackpackLetter_Activity[3323246]["NeedMetempsychosis"] = 80
	tBackpackLetter_Activity[3323246]["Cultivation"] = 30
	tBackpackLetter_Activity[3323246]["Pathfind"] = {}
	tBackpackLetter_Activity[3323246]["Pathfind"]["NpcId"] = 24868
	
	tBackpackLetter_Activity_NoGift[3323246] = {}
	tBackpackLetter_Activity_NoGift[3323246]["ActivityTime"] = tActivityTime["MidAutumnDay_BoBing"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3323246]["EventType"] = 203
	tBackpackLetter_Activity_NoGift[3323246]["DataType"] = 58
	tBackpackLetter_Activity_NoGift[3323246]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3323246]["RewardItem"] = 3323246
	tBackpackLetter_Activity_NoGift[3323246]["RewardAttr"] = "0 1 0 1440 1"
	tBackpackLetter_Activity_NoGift[3323246]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3323246]["NeedMetempsychosis"] = 80
	tBackpackLetter_Activity_NoGift[3323246]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3323246]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3323246]["Pathfind"]["NpcId"] = 24868
	
------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]大型MMO活动--飞翔吧筋斗云
--Purpose:	翻滚筋斗云
--Creator: 	许乐
--Created:	2016/10/31
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3301291] = {}
	tBackpackLetter_Activity_NoGift[3301291]["ActivityTime"] = tActivityTime["MMOJindowin"]["NowTime"]
	tBackpackLetter_Activity_NoGift[3301291]["EventType"] = 152
	tBackpackLetter_Activity_NoGift[3301291]["DataType"] = 02
	tBackpackLetter_Activity_NoGift[3301291]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3301291]["RewardItem"] = 3301291
	tBackpackLetter_Activity_NoGift[3301291]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3301291]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3301291]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3301291]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3301291]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3301291]["Pathfind"]["NpcId"] = 19798

------------------------------------------------------------------------------------
--Name：            190517[简体征服][活动脚本]掷飞镖小游戏发奖ID制作
--Creator:      杨艳
--Created:     2019/05/17
------------------------------------------------------------------------------------
-- 3321668,'李巡欢的邀请函'
tItemFace[3321668] = 2293
tBackpackLetter_Activity[3321668] = {}
-- 活动时间
-- tBackpackLetter_Activity[3321668]["ActivityTime"] = tActivityTime["DartAct"]["ActivityTime"]
tBackpackLetter_Activity[3321668]["NewActivityTime"] = tActivityTime["DartAct"]["ActivityTime"]
tBackpackLetter_Activity[3321668]["EventType"] = 197
tBackpackLetter_Activity[3321668]["DataType"] = 10
tBackpackLetter_Activity[3321668]["RewardData"] = 1
tBackpackLetter_Activity[3321668]["RewardItem"] = 3321668
tBackpackLetter_Activity[3321668]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3321668]["Cultivation"] = 30
tBackpackLetter_Activity[3321668]["NeedLevel"] = 80
tBackpackLetter_Activity[3321668]["NeedMetempsychosis"] = 0
-- 寻路                  
tBackpackLetter_Activity[3321668]["Pathfind"] = {}
tBackpackLetter_Activity[3321668]["Pathfind"]["NpcId"] = 24280
tBackpackLetter_Activity[3321668]["GlobalId"] = 53894

-- 3321668,'李巡欢的邀请函'
-- tItemFace[3321668] = 2293	
-- tBackpackLetter_Activity_NoGift[3321668] = {}
-- tBackpackLetter_Activity_NoGift[3321668]["ActivityTime"] = tActivityTime["DartAct"]["ActivityTime"]
-- tBackpackLetter_Activity_NoGift[3321668]["EventType"] = 197
-- tBackpackLetter_Activity_NoGift[3321668]["DataType"] = 10
-- tBackpackLetter_Activity_NoGift[3321668]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3321668]["RewardItem"] = 3321668
-- tBackpackLetter_Activity_NoGift[3321668]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3321668]["NeedLevel"] = 80
-- tBackpackLetter_Activity_NoGift[3321668]["NeedMetempsychosis"] = 0
                                
-- tBackpackLetter_Activity_NoGift[3321668]["Cultivation"] = 30
-- tBackpackLetter_Activity_NoGift[3321668]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3321668]["Pathfind"]["NpcId"] = 24280

------------------------------------------------------------------------------------
--Name：           171128[英文征服][活动脚本]Domino广告NPC制作（长期）
--Creator:      杨艳
--Created:     2017/11/28
------------------------------------------------------------------------------------
	tItemFace[3326354] = 2519
	tBackpackLetter_Activity[3326354] = {}
	tBackpackLetter_Activity[3326354]["EventType"] = 196
	tBackpackLetter_Activity[3326354]["DataType"] = 87
	tBackpackLetter_Activity[3326354]["RewardData"] = 1
	tBackpackLetter_Activity[3326354]["RewardItem"] = 3326354
	tBackpackLetter_Activity[3326354]["RewardAttr"] = "0 1 0 1440 1"
	tBackpackLetter_Activity[3326354]["NeedLevel"] = 0
	tBackpackLetter_Activity[3326354]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity[3326354]["Cultivation"] = 30
	tBackpackLetter_Activity[3326354]["Pathfind"] = {}
	tBackpackLetter_Activity[3326354]["Pathfind"]["NpcId"] = 24959
	
	tBackpackLetter_Activity_NoGift[3326354] = {}
	tBackpackLetter_Activity_NoGift[3326354]["EventType"] = 196
	tBackpackLetter_Activity_NoGift[3326354]["DataType"] = 87
	tBackpackLetter_Activity_NoGift[3326354]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3326354]["RewardItem"] = 3326354
	tBackpackLetter_Activity_NoGift[3326354]["RewardAttr"] = "0 1 0 1440 1"
	tBackpackLetter_Activity_NoGift[3326354]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3326354]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity_NoGift[3326354]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3326354]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3326354]["Pathfind"]["NpcId"] = 24959
	
------------------------------------------------------------------------------------
--Name：       180831[简体征服][活动脚本]寻宝魔塔活动
--Creator:     fwl
--Created:     2018-09-04
------------------------------------------------------------------------------------

	tItemFace[3310719] = 1778
	tBackpackLetter_Activity[3310719] = {}
	tBackpackLetter_Activity[3310719]["ActivityTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
	tBackpackLetter_Activity[3310719]["EventType"] = 182
	tBackpackLetter_Activity[3310719]["DataType"] = 76
	tBackpackLetter_Activity[3310719]["RewardData"] = 1
	tBackpackLetter_Activity[3310719]["RewardItem"] = 3310719
	tBackpackLetter_Activity[3310719]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3310719]["NeedLevel"] = 80
	tBackpackLetter_Activity[3310719]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3310719]["Cultivation"] = 30
	tBackpackLetter_Activity[3310719]["Pathfind"] = {}
	tBackpackLetter_Activity[3310719]["Pathfind"]["NpcId"] = 23192
	
	tBackpackLetter_Activity_NoGift[3310719] = {}
	tBackpackLetter_Activity_NoGift[3310719]["ActivityTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3310719]["EventType"] = 182
	tBackpackLetter_Activity_NoGift[3310719]["DataType"] = 76
	tBackpackLetter_Activity_NoGift[3310719]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3310719]["RewardItem"] = 3310719
	tBackpackLetter_Activity_NoGift[3310719]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3310719]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3310719]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3310719]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3310719]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3310719]["Pathfind"]["NpcId"] = 23192
	
------------------------------------------------------------------------------------
--Name:		190819[英文征服][活动脚本]以旧换新活动（9.26-10.16）
--Creator: 	兰瑞妹
--Created:	2019/08/19
------------------------------------------------------------------------------------
	-- 3313524,'旧物易宝邀请函'
	tItemFace[3313524] = 1561
	tBackpackLetter_Activity[3313524] = {}
	tBackpackLetter_Activity[3313524]["ActivityTime"] = tActivityTime["TradeNewGoodForOld"]["ActivityTime"]
	tBackpackLetter_Activity[3313524]["EventType"] = 203
	tBackpackLetter_Activity[3313524]["DataType"] = 46
	tBackpackLetter_Activity[3313524]["RewardData"] = 1
	tBackpackLetter_Activity[3313524]["RewardItem"] = 3313524
	tBackpackLetter_Activity[3313524]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313524]["NeedLevel"] = 0
	tBackpackLetter_Activity[3313524]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313524]["Cultivation"] = 30
	tBackpackLetter_Activity[3313524]["Pathfind"] = {}
	tBackpackLetter_Activity[3313524]["Pathfind"]["NpcId"] = 24823
	tBackpackLetter_Activity[3313524]["GlobalId"] = 53779
	tBackpackLetter_Activity[3313524]["OldSever"] = 1
	

------------------------------------------------------------------------------------
--Name：            190827[英文征服][活动脚本]百日畅玩消费包
--Creator:      洪聪敏
--Created:     2018/08/27
------------------------------------------------------------------------------------	
	tBackpackLetter_Activity[3323323] = {}
	tBackpackLetter_Activity[3323323]["ActivityTime"] = tActivityTime["HundredDayPack"]["ActivityTime"]
	tBackpackLetter_Activity[3323323]["EventType"] = 202
	tBackpackLetter_Activity[3323323]["DataType"] = 45
	tBackpackLetter_Activity[3323323]["RewardData"] = 1
	tBackpackLetter_Activity[3323323]["RewardItem"] = 3323323
	tBackpackLetter_Activity[3323323]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3323323]["NeedLevel"] = 0
	tBackpackLetter_Activity[3323323]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3323323]["Cultivation"] = 30
	tBackpackLetter_Activity[3323323]["Pathfind"] = {}
	tBackpackLetter_Activity[3323323]["Pathfind"]["NpcId"] = 24909
------------------------------------------------------------------------------------
--Name:		190904[英文征服][活动脚本]10月日卡包(10.10-10.31）
--Creator: 	冯子鑫
--Created:	2019/09/05
------------------------------------------------------------------------------------
	tItemFace[3323494]= 1560
	-- tBackpackLetter_Activity_NoGift[3323494] = {}
	-- tBackpackLetter_Activity_NoGift[3323494]["ActivityTime"] = tActivityTime["OctoberDayCards"]["ActivityTime"]
	-- tBackpackLetter_Activity_NoGift[3323494]["EventType"] = 204
	-- tBackpackLetter_Activity_NoGift[3323494]["DataType"] = 24
	-- tBackpackLetter_Activity_NoGift[3323494]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3323494]["RewardItem"] = 3323494
	-- tBackpackLetter_Activity_NoGift[3323494]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3323494]["NeedLevel"] = 0
	-- tBackpackLetter_Activity_NoGift[3323494]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity_NoGift[3323494]["Cultivation"] = 30
	-- tBackpackLetter_Activity_NoGift[3323494]["Pathfind"] = {}
	-- tBackpackLetter_Activity_NoGift[3323494]["Pathfind"]["NpcId"] = 24921

	tBackpackLetter_Activity[3323494] = {}
	tBackpackLetter_Activity[3323494]["ActivityTime"] = tActivityTime["OctoberDayCards"]["ActivityTime"]
	tBackpackLetter_Activity[3323494]["EventType"] = 204
	tBackpackLetter_Activity[3323494]["DataType"] = 24
	tBackpackLetter_Activity[3323494]["RewardData"] = 1
	tBackpackLetter_Activity[3323494]["RewardItem"] = 3323494
	tBackpackLetter_Activity[3323494]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3323494]["NeedLevel"] = 0
	tBackpackLetter_Activity[3323494]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3323494]["Cultivation"] = 30
	tBackpackLetter_Activity[3323494]["Pathfind"] = {}
	tBackpackLetter_Activity[3323494]["Pathfind"]["NpcId"] = 24921
------------------------------------------------------------------------------------
--Name:		190907[英文征服][活动脚本]10月科普答题活动（10.10-10.31）
--Creator: 	郑飞
--Created:	2019/09/07
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3323505] = {}
	tBackpackLetter_Activity[3323505]["ActivityTime"] = tActivityTime["OctPopularScience"]["ActivityTime"]
	tBackpackLetter_Activity[3323505]["EventType"] = 204
	tBackpackLetter_Activity[3323505]["DataType"] = 61
	tBackpackLetter_Activity[3323505]["RewardData"] = 1
	tBackpackLetter_Activity[3323505]["RewardItem"] = 3323505
	tBackpackLetter_Activity[3323505]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3323505]["NeedLevel"] = 80
	tBackpackLetter_Activity[3323505]["NeedMetempsychosis"] = 1

-----------------------------------------------------------------------------------
--Name：      190725[英文征服][活动脚本]副职业修行月
--Creator:    吴燕柚
--Created:    190725
------------------------------------------------------------------------------------
tItemFace[3313558] = 2473
tBackpackLetter_Activity[3313558] = {}
tBackpackLetter_Activity[3313558]["ActivityTime"] = tActivityTime["SecondProGrowth"]["ActTime"] 
tBackpackLetter_Activity[3313558]["EventType"] = 202
tBackpackLetter_Activity[3313558]["DataType"] = 76
tBackpackLetter_Activity[3313558]["RewardData"] = 1
tBackpackLetter_Activity[3313558]["RewardItem"] = 3313558
tBackpackLetter_Activity[3313558]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3313558]["NeedLevel"] = 0
tBackpackLetter_Activity[3313558]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3313558]["Pathfind"] = {}
tBackpackLetter_Activity[3313558]["Pathfind"]["NpcId"] = 24861

tBackpackLetter_Activity_NoGift[3313558] = {}
tBackpackLetter_Activity_NoGift[3313558]["ActivityTime"] = tActivityTime["SecondProGrowth"]["ActTime"] 
tBackpackLetter_Activity_NoGift[3313558]["EventType"] = 202
tBackpackLetter_Activity_NoGift[3313558]["DataType"] = 76
tBackpackLetter_Activity_NoGift[3313558]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3313558]["RewardItem"] = 3313558
tBackpackLetter_Activity_NoGift[3313558]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3313558]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3313558]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3313558]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3313558]["Pathfind"]["NpcId"] = 24861

------------------------------------------------------------------------------------
--Name：            190917[英文征服][活动脚本]10月新服1（10.10-11.10）
--Creator:      蔡颖静
--Created:     2019/09/17
------------------------------------------------------------------------------------
tItemFace[3326386] = 1718
tBackpackLetter_Activity[3326386] = {}
tBackpackLetter_Activity[3326386]["NewActivityTime"] = tActivityTime["OctNewServer"]["ActivityTime"]
tBackpackLetter_Activity[3326386]["EventType"] = 205
tBackpackLetter_Activity[3326386]["DataType"] = 38
tBackpackLetter_Activity[3326386]["RewardData"] = 1
tBackpackLetter_Activity[3326386]["RewardItem"] = 3326386
tBackpackLetter_Activity[3326386]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326386]["NeedLevel"] = 0
tBackpackLetter_Activity[3326386]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326386]["Pathfind"] = {}
tBackpackLetter_Activity[3326386]["Pathfind"]["NpcId"] = 24963
tBackpackLetter_Activity[3326386]["GlobalId"] = 53760
tBackpackLetter_Activity[3326386]["GlobalData"] = 1
tBackpackLetter_Activity[3326386]["GlobalPos"] = 0

	

------------------------------------------------------------------------------------
--Name：           190917[英文征服][活动脚本]德州红包活动（10.15-10.25）
--Creator:      杨艳
--Created:     2019/09/17
------------------------------------------------------------------------------------
-- 3323632,'红包雨宣传页
-- tItemFace[3323632] = 1633
-- tBackpackLetter_Activity[3323632] = {}
-- -- 活动时间
-- tBackpackLetter_Activity[3323632]["NewActivityTime"] = tActivityTime["TexRedBag"]["ActivityTime"]
-- tBackpackLetter_Activity[3323632]["EventType"] = 204
-- tBackpackLetter_Activity[3323632]["DataType"] = 65
-- tBackpackLetter_Activity[3323632]["RewardData"] = 1
-- tBackpackLetter_Activity[3323632]["RewardItem"] = 3323632
-- tBackpackLetter_Activity[3323632]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity[3323632]["Cultivation"] = 30
-- tBackpackLetter_Activity[3323632]["NeedLevel"] = 1
-- tBackpackLetter_Activity[3323632]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity[3323632]["GlobalId"] = 53747
-- tBackpackLetter_Activity[3323632]["GlobalData"] = 1
-- tBackpackLetter_Activity[3323632]["GlobalPos"] = 0
-- -- 寻路                  
-- tBackpackLetter_Activity[3323632]["Pathfind"] = {}
-- tBackpackLetter_Activity[3323632]["Pathfind"]["NpcId"] = 24952

-- 3321668,'李巡欢的邀请函'
-- tItemFace[3321668] = 2293	
-- tBackpackLetter_Activity_NoGift[3321668] = {}
-- tBackpackLetter_Activity_NoGift[3321668]["ActivityTime"] = tActivityTime["DartAct"]["ActivityTime"]
-- tBackpackLetter_Activity_NoGift[3321668]["EventType"] = 197
-- tBackpackLetter_Activity_NoGift[3321668]["DataType"] = 10
-- tBackpackLetter_Activity_NoGift[3321668]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3321668]["RewardItem"] = 3321668
-- tBackpackLetter_Activity_NoGift[3321668]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3321668]["NeedLevel"] = 80
-- tBackpackLetter_Activity_NoGift[3321668]["NeedMetempsychosis"] = 0
                                
-- tBackpackLetter_Activity_NoGift[3321668]["Cultivation"] = 30
-- tBackpackLetter_Activity_NoGift[3321668]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3321668]["Pathfind"]["NpcId"] = 24280
------------------------------------------------------------------------------------
--Name：            200331[英文征服][活动脚本]4月德州红包活动（4.14-5.28）
--Creator:      蔡颖静
--Created:     2020-03-31
------------------------------------------------------------------------------------

tItemFace[3323632] = 1633
tBackpackLetter_Activity[3323632] = {}
tBackpackLetter_Activity[3323632]["NewActivityTime"] = tActivityTime["AprilTexasRedBag"]["ActivityTime"]
tBackpackLetter_Activity[3323632]["EventType"] = 204
tBackpackLetter_Activity[3323632]["DataType"] = 65
tBackpackLetter_Activity[3323632]["RewardData"] = 1
tBackpackLetter_Activity[3323632]["RewardItem"] = 3323632
tBackpackLetter_Activity[3323632]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3323632]["NeedLevel"] = 1
tBackpackLetter_Activity[3323632]["Cultivation"] = 30
tBackpackLetter_Activity[3323632]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3323632]["Pathfind"] = {}
tBackpackLetter_Activity[3323632]["Pathfind"]["NpcId"] = 6297
tBackpackLetter_Activity[3323632]["GlobalId"] = 54749
tBackpackLetter_Activity[3323632]["GlobalData"] = 1
tBackpackLetter_Activity[3323632]["GlobalPos"] = 0

-- tBackpackLetter_Activity_NoGift[3323632] = {}
-- tBackpackLetter_Activity_NoGift[3323632]["ActivityTime"] = tActivityTime["AprilTexasRedBag"]["ActivityTime"]
-- tBackpackLetter_Activity_NoGift[3323632]["EventType"] = 204
-- tBackpackLetter_Activity_NoGift[3323632]["DataType"] = 65
-- tBackpackLetter_Activity_NoGift[3323632]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3323632]["RewardItem"] = 3323632
-- tBackpackLetter_Activity_NoGift[3323632]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3323632]["NeedLevel"] = 1
-- tBackpackLetter_Activity_NoGift[3323632]["Cultivation"] = 30
-- tBackpackLetter_Activity_NoGift[3323632]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3323632]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3323632]["Pathfind"]["NpcId"] = 6297

------------------------------------------------------------------------------------
--Name：            190904[英文征服][活动脚本]10月冲刺大对决（10.17-11.6）
--Creator:      周洋
--Created:     2019/09/04
------------------------------------------------------------------------------------
	tItemFace[3313680] = 2482
	tBackpackLetter_Activity[3313680] = {}
	tBackpackLetter_Activity[3313680]["NewActivityTime"] = tActivityTime["SprintDuel"]["ActivityTime"]
	tBackpackLetter_Activity[3313680]["EventType"] = 196
	tBackpackLetter_Activity[3313680]["DataType"] = 82
	tBackpackLetter_Activity[3313680]["RewardData"] = 1
	tBackpackLetter_Activity[3313680]["RewardItem"] = 3313680
	tBackpackLetter_Activity[3313680]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313680]["NeedLevel"] = 1
	tBackpackLetter_Activity[3313680]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313680]["MsgBox"] = 1
	tBackpackLetter_Activity[3313680]["Cultivation"] = 30
	tBackpackLetter_Activity[3313680]["Pathfind"] = {}
	tBackpackLetter_Activity[3313680]["Pathfind"]["NpcId"] = 24920
	tBackpackLetter_Activity[3313680]["GlobalId"] = 53777

	tBackpackLetter_Activity_NoGift[3313680] = {}
	tBackpackLetter_Activity_NoGift[3313680]["NewActivityTime"] = tActivityTime["SprintDuel"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3313680]["EventType"] = 196
	tBackpackLetter_Activity_NoGift[3313680]["DataType"] = 82
	tBackpackLetter_Activity_NoGift[3313680]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3313680]["RewardItem"] = 3313680
	tBackpackLetter_Activity_NoGift[3313680]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3313680]["NeedLevel"] = 1
	tBackpackLetter_Activity_NoGift[3313680]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3313680]["MsgBox"] = 1
	tBackpackLetter_Activity_NoGift[3313680]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3313680]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3313680]["Pathfind"]["NpcId"] = 24920
	tBackpackLetter_Activity_NoGift[3313680]["GlobalId"] = 53777


------------------------------------------------------------------------------------
--Name：       190926[简体征服][活动脚本]10月征服暖暖线上部分(10.24-11.11)
--Creator:     黄啸
--Created:     2019-10-08
------------------------------------------------------------------------------------

	tItemFace[3313895] = 2534
	tBackpackLetter_Activity[3313895] = {}
	tBackpackLetter_Activity[3313895]["ActivityTime"] = tActivityTime["ExchangeCoat"]["ActiveTime"]
	tBackpackLetter_Activity[3313895]["EventType"] = 206
	tBackpackLetter_Activity[3313895]["DataType"] = 14
	tBackpackLetter_Activity[3313895]["RewardData"] = 1
	tBackpackLetter_Activity[3313895]["RewardItem"] = 3313895
	tBackpackLetter_Activity[3313895]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313895]["NeedLevel"] = 0
	tBackpackLetter_Activity[3313895]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313895]["Cultivation"] = 30
	tBackpackLetter_Activity[3313895]["Pathfind"] = {}
	tBackpackLetter_Activity[3313895]["Pathfind"]["NpcId"] = 25009
	
	tBackpackLetter_Activity_NoGift[3313895] = {}
	tBackpackLetter_Activity_NoGift[3313895]["ActivityTime"] = tActivityTime["ExchangeCoat"]["ActiveTime"]
	tBackpackLetter_Activity_NoGift[3313895]["EventType"] = 206
	tBackpackLetter_Activity_NoGift[3313895]["DataType"] = 14
	tBackpackLetter_Activity_NoGift[3313895]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3313895]["RewardItem"] = 3313895
	tBackpackLetter_Activity_NoGift[3313895]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3313895]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3313895]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3313895]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3313895]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3313895]["Pathfind"]["NpcId"] = 25009
------------------------------------------------------------------------------------
--Name：            #190909[英文征服][活动脚本]10与赠点消耗活动（10.22-11.12）
--Creator:      杨艳
--Created:     2019/09/11
------------------------------------------------------------------------------------
-- 3323536,'CP(B)CarnivalInvitation'
tItemFace[3323536] = 2261
tBackpackLetter_Activity[3323536] = {}
-- 活动时间
tBackpackLetter_Activity[3323536]["NewActivityTime"] = tActivityTime["OctMoMoAct"]["ActivityTime"]
tBackpackLetter_Activity[3323536]["EventType"] = 205
tBackpackLetter_Activity[3323536]["DataType"] = 56
tBackpackLetter_Activity[3323536]["RewardData"] = 1
tBackpackLetter_Activity[3323536]["RewardItem"] = 3323536
tBackpackLetter_Activity[3323536]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3323536]["Cultivation"] = 30
tBackpackLetter_Activity[3323536]["NeedLevel"] = 1
tBackpackLetter_Activity[3323536]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3323536]["GlobalId"] = 54008
tBackpackLetter_Activity[3323536]["GlobalData"] = 1
tBackpackLetter_Activity[3323536]["GlobalPos"] = 0
-- 寻路                  
tBackpackLetter_Activity[3323536]["Pathfind"] = {}
tBackpackLetter_Activity[3323536]["Pathfind"]["NpcId"] = 24929

-- 3323536,'CP(B)CarnivalInvitation'
-- tItemFace[3323536] = 2261	
-- tBackpackLetter_Activity_NoGift[3323536] = {}
-- tBackpackLetter_Activity_NoGift[3323536]["ActivityTime"] = tActivityTime["OctMoMoAct"]["ActivityTime"]
-- tBackpackLetter_Activity_NoGift[3323536]["EventType"] = 205
-- tBackpackLetter_Activity_NoGift[3323536]["DataType"] = 56
-- tBackpackLetter_Activity_NoGift[3323536]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3323536]["RewardItem"] = 3323536
-- tBackpackLetter_Activity_NoGift[3323536]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3323536]["NeedLevel"] = 1
-- tBackpackLetter_Activity_NoGift[3323536]["NeedMetempsychosis"] = 0
                                
-- tBackpackLetter_Activity_NoGift[3323536]["Cultivation"] = 30
-- tBackpackLetter_Activity_NoGift[3323536]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3323536]["Pathfind"]["NpcId"] = 24929

------------------------------------------------------------------------------------
--Name:		190422[简体征服][活动脚本]麻将收集活动
--Purpose:	麻将收集活动
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------
	tItemFace[3321983]= 2347
	tBackpackLetter_Activity[3321983] = {}
	tBackpackLetter_Activity[3321983]["ActivityTime"] = tActivityTime["CollectionMahjongr"]["ActTime"]
	tBackpackLetter_Activity[3321983]["EventType"] = 198
	tBackpackLetter_Activity[3321983]["DataType"] = 55
	tBackpackLetter_Activity[3321983]["RewardData"] = 1
	tBackpackLetter_Activity[3321983]["RewardItem"] = 3321983
	tBackpackLetter_Activity[3321983]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3321983]["NeedLevel"] = 0
	tBackpackLetter_Activity[3321983]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3321983]["Cultivation"] = 30
	tBackpackLetter_Activity[3321983]["Pathfind"] = {}
	tBackpackLetter_Activity[3321983]["Pathfind"]["NpcId"] = 24326

	tBackpackLetter_Activity_NoGift[3321983] = {}
	tBackpackLetter_Activity_NoGift[3321983]["ActivityTime"] = tActivityTime["CollectionMahjongr"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3321983]["EventType"] = 198
	tBackpackLetter_Activity_NoGift[3321983]["DataType"] = 55
	tBackpackLetter_Activity_NoGift[3321983]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3321983]["RewardItem"] = 3321983
	tBackpackLetter_Activity_NoGift[3321983]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3321983]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3321983]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3321983]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3321983]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3321983]["Pathfind"]["NpcId"] = 24326
	
------------------------------------------------------------------------------------
--Name：       191010[英文征服][活动脚本]10月新服2
--Creator:     黄啸
--Created:     2019-10-13
------------------------------------------------------------------------------------

	tItemFace[3314069] = 2539
	tBackpackLetter_Activity[3314069] = {}
	tBackpackLetter_Activity[3314069]["ActivityTime"] = tActivityTime["OctoberNewServer"]["ActivityTime"]
	tBackpackLetter_Activity[3314069]["EventType"] = 206
	tBackpackLetter_Activity[3314069]["DataType"] = 19
	tBackpackLetter_Activity[3314069]["RewardData"] = 1
	tBackpackLetter_Activity[3314069]["RewardItem"] = 3314069
	tBackpackLetter_Activity[3314069]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3314069]["NeedLevel"] = 0
	tBackpackLetter_Activity[3314069]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3314069]["Cultivation"] = 30
	tBackpackLetter_Activity[3314069]["Pathfind"] = {}
	tBackpackLetter_Activity[3314069]["Pathfind"]["NpcId"] = 25049
	
	tBackpackLetter_Activity_NoGift[3314069] = {}
	tBackpackLetter_Activity_NoGift[3314069]["ActivityTime"] = tActivityTime["OctoberNewServer"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3314069]["EventType"] = 206
	tBackpackLetter_Activity_NoGift[3314069]["DataType"] = 19
	tBackpackLetter_Activity_NoGift[3314069]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3314069]["RewardItem"] = 3314069
	tBackpackLetter_Activity_NoGift[3314069]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3314069]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3314069]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3314069]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3314069]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3314069]["Pathfind"]["NpcId"] = 25049
------------------------------------------------------------------------------------
--Name：            190926[简体征服][活动脚本]全球万圣节活动-万圣男爵
--Creator:      郑洵
--Created:     2019/09/10
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3313760] = {}
	tBackpackLetter_Activity[3313760]["ActivityTime"] = tActivityTime["HalloweenCarnivalBaron"]["LetterTime"]
	tBackpackLetter_Activity[3313760]["EventType"] = 205
	tBackpackLetter_Activity[3313760]["DataType"] = 59
	tBackpackLetter_Activity[3313760]["RewardData"] = 1
	tBackpackLetter_Activity[3313760]["RewardItem"] = 3313760
	tBackpackLetter_Activity[3313760]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313760]["NeedLevel"] = 80
	tBackpackLetter_Activity[3313760]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313760]["Pathfind"] = {}
	tBackpackLetter_Activity[3313760]["Pathfind"]["NpcId"] = 24993
	tBackpackLetter_Activity_NoGift[3313760] = {}
	tBackpackLetter_Activity_NoGift[3313760]["ActivityTime"] = tActivityTime["HalloweenCarnivalBaron"]["LetterTime"]
	tBackpackLetter_Activity_NoGift[3313760]["EventType"] = 205
	tBackpackLetter_Activity_NoGift[3313760]["DataType"] = 59
	tBackpackLetter_Activity_NoGift[3313760]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3313760]["RewardItem"] = 3313760
	tBackpackLetter_Activity_NoGift[3313760]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3313760]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3313760]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3313760]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3313760]["Pathfind"]["NpcId"] = 24993
------------------------------------------------------------------------------------
--Name:		190916[英文征服][活动脚本]万圣惊喜特卖会
--Creator: 	郑飞
--Created:	2019/09/16
-----------------------------------------------------------------------------------
	tBackpackLetter_Activity[3323633] = {}
	tBackpackLetter_Activity[3323633]["ActivityTime"] = tActivityTime["HalloweenSale"]["ActivityTime"]
	tBackpackLetter_Activity[3323633]["EventType"] = 204
	tBackpackLetter_Activity[3323633]["DataType"] = 71
	tBackpackLetter_Activity[3323633]["RewardData"] = 1
	tBackpackLetter_Activity[3323633]["RewardItem"] = 3323633
	tBackpackLetter_Activity[3323633]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3323633]["NeedLevel"] = 0
	tBackpackLetter_Activity[3323633]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3323633]["Cultivation"] = 30
	tBackpackLetter_Activity[3323633]["Pathfind"] = {}
	tBackpackLetter_Activity[3323633]["Pathfind"]["NpcId"] = 24954
	tBackpackLetter_Activity[3323633]["GlobalId"] = 53845
	tBackpackLetter_Activity[3323633]["GlobalData"] = 1
	tBackpackLetter_Activity[3323633]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：       190917[英文征服][活动脚本]金币消耗活动-777机（10.15-11.04）
--Creator:      杨志翔
--Created:     2019-09-17
------------------------------------------------------------------------------------
	tItemFace[3323631] = 2261
	tBackpackLetter_Activity[3323631] = {}
	tBackpackLetter_Activity[3323631]["ActivityTime"] = tActivityTime["ConsumeGold777"]["ActivityTime"]
	tBackpackLetter_Activity[3323631]["EventType"] = 204
	tBackpackLetter_Activity[3323631]["DataType"] = 63
	tBackpackLetter_Activity[3323631]["RewardData"] = 1
	tBackpackLetter_Activity[3323631]["RewardItem"] = 3323631
	tBackpackLetter_Activity[3323631]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3323631]["NeedLevel"] = 0
	tBackpackLetter_Activity[3323631]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3323631]["Cultivation"] = 30
	tBackpackLetter_Activity[3323631]["Pathfind"] = {}
	tBackpackLetter_Activity[3323631]["Pathfind"]["NpcId"] = 24953
------------------------------------------------------------------------------------
--Name：     190930[英文征服][活动脚本]11月首充（11.5-11.30）
--Creator:      冯子鑫
--Created:     2019/09/30
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3313980] = {}
	tBackpackLetter_Activity[3313980]["ActivityTime"] = tActivityTime["NovemberRecharge"]["ActivityTime"]
	tBackpackLetter_Activity[3313980]["EventType"] = 205
	tBackpackLetter_Activity[3313980]["DataType"] = 79
	tBackpackLetter_Activity[3313980]["RewardData"] = 1
	tBackpackLetter_Activity[3313980]["RewardItem"] = 3313980
	tBackpackLetter_Activity[3313980]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3313980]["NeedLevel"] = 0
	tBackpackLetter_Activity[3313980]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3313980]["Cultivation"] = 30
	tBackpackLetter_Activity[3313980]["GlobalId"] = 53773
	tBackpackLetter_Activity[3313980]["GlobalData"] = 1
	tBackpackLetter_Activity[3313980]["GlobalPos"] = 0
	
	tBackpackLetter_Activity_NoGift[3313980] = {}
	tBackpackLetter_Activity_NoGift[3313980]["ActivityTime"] = tActivityTime["NovemberRecharge"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3313980]["EventType"] = 205
	tBackpackLetter_Activity_NoGift[3313980]["DataType"] = 79
	tBackpackLetter_Activity_NoGift[3313980]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3313980]["RewardItem"] = 3313980
	tBackpackLetter_Activity_NoGift[3313980]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3313980]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3313980]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3313980]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3313980]["GlobalId"] = 53773
	tBackpackLetter_Activity_NoGift[3313980]["GlobalData"] = 1
	tBackpackLetter_Activity_NoGift[3313980]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：            191011[英文征服][活动脚本]11月感恩宴会厅(11.5-12.2)
--Creator:      蔡颖静
--Created:     2019/10/11
------------------------------------------------------------------------------------
tItemFace[3326531] = 1095
tBackpackLetter_Activity[3326531] = {}
tBackpackLetter_Activity[3326531]["NewActivityTime"] = tActivityTime["ThanksGiving2019Dinner"]["ActTime"]
tBackpackLetter_Activity[3326531]["EventType"] = 207
tBackpackLetter_Activity[3326531]["DataType"] = 42
tBackpackLetter_Activity[3326531]["RewardData"] = 1
tBackpackLetter_Activity[3326531]["RewardItem"] = 3326531
tBackpackLetter_Activity[3326531]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326531]["NeedLevel"] = 0
tBackpackLetter_Activity[3326531]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326531]["Pathfind"] = {}
tBackpackLetter_Activity[3326531]["Pathfind"]["NpcId"] = 25042
tBackpackLetter_Activity[3326531]["GlobalId"] = 53779
tBackpackLetter_Activity[3326531]["GlobalData"] = 0
tBackpackLetter_Activity[3326531]["GlobalPos"] = 0

tBackpackLetter_Activity_NoGift[3326531] = {}
tBackpackLetter_Activity_NoGift[3326531]["ActivityTime"] = tActivityTime["ThanksGiving2019Dinner"]["ActTime"]
tBackpackLetter_Activity_NoGift[3326531]["EventType"] = 207
tBackpackLetter_Activity_NoGift[3326531]["DataType"] = 42
tBackpackLetter_Activity_NoGift[3326531]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3326531]["RewardItem"] = 3326531
tBackpackLetter_Activity_NoGift[3326531]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3326531]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3326531]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3326531]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3326531]["Pathfind"]["NpcId"] = 25042
------------------------------------------------------------------------------------
--Name：            191018[英文征服][活动脚本]11月地图猜谜(11.5-11.14)
--Creator:      蔡颖静
--Created:     2019/10/18
------------------------------------------------------------------------------------
tItemFace[3326622] = 2588
tBackpackLetter_Activity[3326622] = {}
tBackpackLetter_Activity[3326622]["NewActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["ActTime"]
tBackpackLetter_Activity[3326622]["EventType"] = 208
tBackpackLetter_Activity[3326622]["DataType"] = 13
tBackpackLetter_Activity[3326622]["RewardData"] = 1
tBackpackLetter_Activity[3326622]["RewardItem"] = 3326622
tBackpackLetter_Activity[3326622]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326622]["NeedLevel"] = 0
tBackpackLetter_Activity[3326622]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326622]["Pathfind"] = {}
tBackpackLetter_Activity[3326622]["Pathfind"]["NpcId"] = 25200
tBackpackLetter_Activity[3326622]["GlobalId"] = 53779
tBackpackLetter_Activity[3326622]["GlobalData"] = 0
tBackpackLetter_Activity[3326622]["GlobalPos"] = 0

tBackpackLetter_Activity_NoGift[3326622] = {}
tBackpackLetter_Activity_NoGift[3326622]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["NogiftTime"]
tBackpackLetter_Activity_NoGift[3326622]["EventType"] = 208
tBackpackLetter_Activity_NoGift[3326622]["DataType"] = 13
tBackpackLetter_Activity_NoGift[3326622]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3326622]["RewardItem"] = 3326622
tBackpackLetter_Activity_NoGift[3326622]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3326622]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3326622]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3326622]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3326622]["Pathfind"]["NpcId"] = 25200
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]巅峰竞速争霸赛(9.17-9.30)
--Creator:		翁清海
--Created:		2019/09/01
------------------------------------------------------------------------------------
	tItemFace[3323370] = 2480
	tBackpackLetter_Activity[3323370] = {}
	tBackpackLetter_Activity[3323370]["ActivityTime"] = tActivityTime["SingleBattleChallenge"]["ActivityTime"]
	tBackpackLetter_Activity[3323370]["EventType"] = 196
	tBackpackLetter_Activity[3323370]["DataType"] = 66
	tBackpackLetter_Activity[3323370]["RewardData"] = 1
	tBackpackLetter_Activity[3323370]["RewardItem"] = 3323370
	tBackpackLetter_Activity[3323370]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3323370]["NeedLevel"] = 80
	tBackpackLetter_Activity[3323370]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3323370]["Cultivation"] = 30
	tBackpackLetter_Activity[3323370]["Pathfind"] = {}
	tBackpackLetter_Activity[3323370]["Pathfind"]["NpcId"] = 24893
	
	tBackpackLetter_Activity_NoGift[3323370] = {}
	tBackpackLetter_Activity_NoGift[3323370]["ActivityTime"] = tActivityTime["SingleBattleChallenge"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3323370]["EventType"] = 196
	tBackpackLetter_Activity_NoGift[3323370]["DataType"] = 66
	tBackpackLetter_Activity_NoGift[3323370]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3323370]["RewardItem"] = 3323370
	tBackpackLetter_Activity_NoGift[3323370]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3323370]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3323370]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3323370]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3323370]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3323370]["Pathfind"]["NpcId"] = 24893
------------------------------------------------------------------------------------
--Name:		191016[英文征服][活动脚本]11月科普答题+活跃礼包（11.7-11.30）
--Creator: 	郑飞
--Created:	2019/10/16
------------------------------------------------------------------------------------
	tItemFace[3326595] = 1637
	tBackpackLetter_Activity[3326595] = {}
	tBackpackLetter_Activity[3326595]["ActivityTime"] = tActivityTime["NovPopularScience"]["ActivityTime"]
	tBackpackLetter_Activity[3326595]["EventType"] = 205
	tBackpackLetter_Activity[3326595]["DataType"] = 83
	tBackpackLetter_Activity[3326595]["RewardData"] = 1
	tBackpackLetter_Activity[3326595]["RewardItem"] = 3326595
	tBackpackLetter_Activity[3326595]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3326595]["NeedLevel"] = 0
	tBackpackLetter_Activity[3326595]["NeedMetempsychosis"] = 2
	tBackpackLetter_Activity[3326595]["Cultivation"] = 30
	tBackpackLetter_Activity[3326595]["Pathfind"] = {}
	tBackpackLetter_Activity[3326595]["Pathfind"]["NpcId"] = 25174
	tBackpackLetter_Activity[3326595]["GlobalId"] = 53779
	tBackpackLetter_Activity[3326595]["OldSever"] = 1


------------------------------------------------------------------------------------
--Name：        191022[英文征服][活动脚本]11月新服1金币天石大爆服（11.7-12.7）
--Creator:      耿力兀
--Created:     2019-10-20
------------------------------------------------------------------------------------
tItemFace[3314178] = 2584
tBackpackLetter_Activity[3314178] = {}
tBackpackLetter_Activity[3314178]["NewActivityTime"] = tActivityTime["NovServer"]["ActivityTime"]
tBackpackLetter_Activity[3314178]["EventType"] = 208
tBackpackLetter_Activity[3314178]["DataType"] = 1
tBackpackLetter_Activity[3314178]["RewardData"] = 1
tBackpackLetter_Activity[3314178]["RewardItem"] = 3314178
tBackpackLetter_Activity[3314178]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3314178]["NeedLevel"] = 0
tBackpackLetter_Activity[3314178]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3314178]["Pathfind"] = {}
tBackpackLetter_Activity[3314178]["Pathfind"]["NpcId"] = 25206
tBackpackLetter_Activity[3314178]["GlobalId"] = 53835
tBackpackLetter_Activity[3314178]["GlobalData"] = 1
tBackpackLetter_Activity[3314178]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：       191009[英文征服][任务脚本]11月VIP乐园（11.12-长期）
--Creator:      兰瑞妹
--Created:     2019-10-09
------------------------------------------------------------------------------------
	-- 3314139,'VIP梦幻城邀请函'
	-- 激情服、绿色服不上
	tItemFace[3314139] = 623
	tBackpackLetter_Activity[3314139] = {}
	tBackpackLetter_Activity[3314139]["EventType"] = 207
	tBackpackLetter_Activity[3314139]["DataType"] = 13
	tBackpackLetter_Activity[3314139]["RewardData"] = 1
	tBackpackLetter_Activity[3314139]["RewardItem"] = 3314139
	tBackpackLetter_Activity[3314139]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3314139]["NeedLevel"] = 0
	tBackpackLetter_Activity[3314139]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3314139]["Cultivation"] = 30
	tBackpackLetter_Activity[3314139]["Pathfind"] = {}
	tBackpackLetter_Activity[3314139]["Pathfind"]["NpcId"] = 25168
	tBackpackLetter_Activity[3314139]["GlobalId"] = 53779
	tBackpackLetter_Activity[3314139]["OldSever"] = 1
	
------------------------------------------------------------------------------------
--Name：        191021[英文征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------

tItemFace[3326666] = 1718
tBackpackLetter_Activity_NoGift[3326666] = {}
tBackpackLetter_Activity_NoGift[3326666]["ActivityTime"] = tActivityTime["NewPetsCultivate"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3326666]["EventType"] = 208
tBackpackLetter_Activity_NoGift[3326666]["DataType"] = 78
tBackpackLetter_Activity_NoGift[3326666]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3326666]["RewardItem"] = 3326666
tBackpackLetter_Activity_NoGift[3326666]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3326666]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3326666]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3326666]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3326666]["Pathfind"]["NpcId"] = 25207
------------------------------------------------------------------------------------
--Name:		191103[简体征服][任务脚本]全球万圣节调查问卷
--Creator: 	兰瑞妹
--Created:	2019/11/03
------------------------------------------------------------------------------------
	-- tItemFace[3314521] = 623
	-- tBackpackLetter_Activity[3314521] = {}
	-- tBackpackLetter_Activity[3314521]["ActivityTime"] = tActivityTime["HalloweenQuestionnaire"]["ActivityTime"]
	-- tBackpackLetter_Activity[3314521]["EventType"] = 209
	-- tBackpackLetter_Activity[3314521]["DataType"] = 76
	-- tBackpackLetter_Activity[3314521]["RewardData"] = 1
	-- tBackpackLetter_Activity[3314521]["RewardItem"] = 3314521
	-- tBackpackLetter_Activity[3314521]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3314521]["NeedLevel"] = 0
	-- tBackpackLetter_Activity[3314521]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3314521]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3314521]["Pathfind"]["NpcId"] =25569
	-- tBackpackLetter_Activity_NoGift[3314521] = {}
	-- tBackpackLetter_Activity_NoGift[3314521]["ActivityTime"] = tActivityTime["HalloweenQuestionnaire"]["ActivityTime"]
	-- tBackpackLetter_Activity_NoGift[3314521]["EventType"] = 209
	-- tBackpackLetter_Activity_NoGift[3314521]["DataType"] = 76
	-- tBackpackLetter_Activity_NoGift[3314521]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3314521]["RewardItem"] = 3314521
	-- tBackpackLetter_Activity_NoGift[3314521]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3314521]["NeedLevel"] = 0
	-- tBackpackLetter_Activity_NoGift[3314521]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity_NoGift[3314521]["Pathfind"] = {}
	-- tBackpackLetter_Activity_NoGift[3314521]["Pathfind"]["NpcId"] =25569
		
------------------------------------------------------------------------------------
--Name：            180410[简体征服][活动脚本]周年庆促销活动-赠点奖池抽奖
--Creator:      兰瑞妹
--Created:     2019/10/12
------------------------------------------------------------------------------------
	-- 激情服和绿色新服不上
	tItemFace[3308512] = 623
	tBackpackLetter_Activity[3308512] = {}
	tBackpackLetter_Activity[3308512]["ActivityTime"] = tActivityTime["AnniversaryPromotionLuckDraw"]["AtivityTime"]
	tBackpackLetter_Activity[3308512]["EventType"] = 176
	tBackpackLetter_Activity[3308512]["DataType"] = 10
	tBackpackLetter_Activity[3308512]["RewardData"] = 1
	tBackpackLetter_Activity[3308512]["RewardItem"] = 3308512
	tBackpackLetter_Activity[3308512]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3308512]["Cultivation"] = 30
	tBackpackLetter_Activity[3308512]["NeedLevel"] = 80
	tBackpackLetter_Activity[3308512]["NeedMetempsychosis"] = 0
	-- -- 寻路
	tBackpackLetter_Activity[3308512]["Pathfind"] = {}
	tBackpackLetter_Activity[3308512]["Pathfind"]["NpcId"] = 22744
	tBackpackLetter_Activity[3308512]["GlobalId"] = 53779
	tBackpackLetter_Activity[3308512]["OldSever"] = 1
------------------------------------------------------------------------------------
--Name：            191105[英文征服][活动脚本]11月火鸡盛宴(11.26-12.2)
--Creator:      周洋
--Created:     2019/11/05
------------------------------------------------------------------------------------
	tItemFace[3314464] = 2633
	tBackpackLetter_Activity[3314464] = {}
	-- tBackpackLetter_Activity[3314464]["ActivityTime"] = tActivityTime["TurkeyFeast"]["ActivityTime"]
	tBackpackLetter_Activity[3314464]["NewActivityTime"] = tActivityTime["TurkeyFeast"]["ActivityTime"]
	tBackpackLetter_Activity[3314464]["EventType"] = 209
	tBackpackLetter_Activity[3314464]["DataType"] = 63
	tBackpackLetter_Activity[3314464]["RewardData"] = 1
	tBackpackLetter_Activity[3314464]["RewardItem"] = 3314464
	tBackpackLetter_Activity[3314464]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3314464]["NeedLevel"] = 1
	tBackpackLetter_Activity[3314464]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3314464]["MsgBox"] = 1
	tBackpackLetter_Activity[3314464]["Cultivation"] = 30
	tBackpackLetter_Activity[3314464]["Pathfind"] = {}
	tBackpackLetter_Activity[3314464]["Pathfind"]["NpcId"] = 25497
	tBackpackLetter_Activity[3314464]["GlobalId"] = 53889
	tBackpackLetter_Activity_NoGift[3314464] = {}
	-- tBackpackLetter_Activity_NoGift[3314464]["ActivityTime"] = tActivityTime["TurkeyFeast"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3314464]["NewActivityTime"] = tActivityTime["TurkeyFeast"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3314464]["EventType"] = 209
	tBackpackLetter_Activity_NoGift[3314464]["DataType"] = 63
	tBackpackLetter_Activity_NoGift[3314464]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3314464]["RewardItem"] = 3314464
	tBackpackLetter_Activity_NoGift[3314464]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3314464]["NeedLevel"] = 1
	tBackpackLetter_Activity_NoGift[3314464]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3314464]["MsgBox"] = 1
	tBackpackLetter_Activity_NoGift[3314464]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3314464]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3314464]["Pathfind"]["NpcId"] = 25497
	tBackpackLetter_Activity_NoGift[3314464]["GlobalId"] = 53889
-----------------------------------------------------------------------------------------------------
--Name:		191015[简体征服][活动脚本]感恩节---活动三小鸡快跑部分
--Purpose:		感恩节---活动三小鸡快跑部分
--Creator: 	洪聪敏
--Created:		2019/10/15
------------------------------------------------------------------------------------------------------

tItemFace[3314342] = 2655
tBackpackLetter_Activity[3314342] = {}
-- tBackpackLetter_Activity[3314342]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
tBackpackLetter_Activity[3314342]["NewActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
tBackpackLetter_Activity[3314342]["EventType"] = 209
tBackpackLetter_Activity[3314342]["DataType"] = 59
tBackpackLetter_Activity[3314342]["RewardData"] = 1
tBackpackLetter_Activity[3314342]["RewardItem"] = 3314342
tBackpackLetter_Activity[3314342]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3314342]["NeedLevel"] = 80
tBackpackLetter_Activity[3314342]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3314342]["Pathfind"] = {}
tBackpackLetter_Activity[3314342]["Pathfind"]["NpcId"] = 25450
tBackpackLetter_Activity[3314342]["GlobalId"] = 53889

-- tBackpackLetter_Activity_NoGift[3314342] = {}
-- tBackpackLetter_Activity_NoGift[3314342]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
-- tBackpackLetter_Activity_NoGift[3314342]["EventType"] = 209
-- tBackpackLetter_Activity_NoGift[3314342]["DataType"] = 59
-- tBackpackLetter_Activity_NoGift[3314342]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3314342]["RewardItem"] = 3314342
-- tBackpackLetter_Activity_NoGift[3314342]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3314342]["NeedLevel"] = 80
-- tBackpackLetter_Activity_NoGift[3314342]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3314342]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3314342]["Pathfind"]["NpcId"] = 25450

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]年终盛典-集字嘉年华(12.5-12.24)
--Creator:		翁清海
--Created:		2019/11/12
------------------------------------------------------------------------------------
tItemFace[3326939] = 2653
tBackpackLetter_Activity[3326939] = {}
tBackpackLetter_Activity[3326939]["NewActivityTime"] = tActivityTime["CharacterCarnival"]["ActivityTime"]
tBackpackLetter_Activity[3326939]["EventType"] = 209
tBackpackLetter_Activity[3326939]["DataType"] = 81
tBackpackLetter_Activity[3326939]["RewardData"] = 1
tBackpackLetter_Activity[3326939]["RewardItem"] = 3326939
tBackpackLetter_Activity[3326939]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326939]["NeedLevel"] = 1
tBackpackLetter_Activity[3326939]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326939]["Pathfind"] = {}
tBackpackLetter_Activity[3326939]["Pathfind"]["NpcId"] = 25596
tBackpackLetter_Activity[3326939]["GlobalId"] = 53892
tBackpackLetter_Activity[3326939]["GlobalData"] = 1
tBackpackLetter_Activity[3326939]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：            191107[英文征服][活动脚本]12月MMO金币消耗活动（12.5-1.1）
--Creator:      兰瑞妹
--Created:     2019-11-07
------------------------------------------------------------------------------------
	-- 激情服和绿色新服不上
	tItemFace[3314499] = 623
	tBackpackLetter_Activity[3314499] = {}
	tBackpackLetter_Activity[3314499]["ActivityTime"] = tActivityTime["MMOGoldConsumption"]["ActivityTime"]
	tBackpackLetter_Activity[3314499]["EventType"] = 209
	tBackpackLetter_Activity[3314499]["DataType"] = 64
	tBackpackLetter_Activity[3314499]["RewardData"] = 1
	tBackpackLetter_Activity[3314499]["RewardItem"] = 3314499
	tBackpackLetter_Activity[3314499]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3314499]["Cultivation"] = 30
	tBackpackLetter_Activity[3314499]["NeedLevel"] = 80
	tBackpackLetter_Activity[3314499]["NeedMetempsychosis"] = 0
	-- -- 寻路
	tBackpackLetter_Activity[3314499]["Pathfind"] = {}
	tBackpackLetter_Activity[3314499]["Pathfind"]["NpcId"] = 25502
	tBackpackLetter_Activity[3314499]["GlobalId"] = 53779
	tBackpackLetter_Activity[3314499]["OldSever"] = 1

-----------------------------------------------------------------------------------------------------
--Name:		190809[简体征服][活动脚本]家族争霸赛
--Purpose:		家族争霸赛
--Creator: 	洪聪敏
--Created:		2019/08/09
------------------------------------------------------------------------------------------------------

tBackpackLetter_Activity[3313451] = {}
tBackpackLetter_Activity[3313451]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
tBackpackLetter_Activity[3313451]["EventType"] = 202
tBackpackLetter_Activity[3313451]["DataType"] = 12
tBackpackLetter_Activity[3313451]["RewardData"] = 1
tBackpackLetter_Activity[3313451]["RewardItem"] = 3313451
tBackpackLetter_Activity[3313451]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3313451]["NeedLevel"] = 1
tBackpackLetter_Activity[3313451]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3313451]["Cultivation"] = 30
tBackpackLetter_Activity[3313451]["Pathfind"] = {}
tBackpackLetter_Activity[3313451]["Pathfind"]["NpcId"] = 24781

tBackpackLetter_Activity_NoGift[3313451] = {}
tBackpackLetter_Activity_NoGift[3313451]["ActivityTime"] = tActivityTime["Familychampions"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3313451]["EventType"] = 202
tBackpackLetter_Activity_NoGift[3313451]["DataType"] = 12
tBackpackLetter_Activity_NoGift[3313451]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3313451]["RewardItem"] = 3313451
tBackpackLetter_Activity_NoGift[3313451]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3313451]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3313451]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3313451]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3313451]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3313451]["Pathfind"]["NpcId"] = 24781

------------------------------------------------------------------------------------
--Name：            191107[英文征服][活动脚本]12月年终盛典-回顾以往，展望2020年新年（12.10-12.23）
--Creator:      杨志翔
--Created:     2019-11-07
------------------------------------------------------------------------------------
tItemFace[3314498] = 2529
tBackpackLetter_Activity[3314498] = {}
tBackpackLetter_Activity[3314498]["ActivityTime"] = tActivityTime["Lookingforward2020NewYear"]["ActivityTime"]
tBackpackLetter_Activity[3314498]["EventType"] = 209
tBackpackLetter_Activity[3314498]["DataType"] = 74
tBackpackLetter_Activity[3314498]["RewardData"] = 1
tBackpackLetter_Activity[3314498]["RewardItem"] = 3314498
tBackpackLetter_Activity[3314498]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3314498]["NeedLevel"] = 0
tBackpackLetter_Activity[3314498]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3314498]["Cultivation"] = 30
tBackpackLetter_Activity[3314498]["Pathfind"] = {}
tBackpackLetter_Activity[3314498]["Pathfind"]["NpcId"] = 25585
tBackpackLetter_Activity[3314498]["GlobalId"] = 53880
tBackpackLetter_Activity[3314498]["GlobalData"] = 1
tBackpackLetter_Activity[3314498]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name:		191118[英文征服][活动脚本]12月德州消费活动（12.12-1.8）
--Creator: 	杨艳
--Created:	2019/11/18
------------------------------------------------------------------------------------
-- 3326993,'锦标赛狂欢邀请函'
tItemFace[3326993] = 1404
tBackpackLetter_Activity[3326993] = {}
-- 活动时间
tBackpackLetter_Activity[3326993]["NewActivityTime"] = tActivityTime["DecTexasCost"]["ActTime"]
tBackpackLetter_Activity[3326993]["EventType"] = 209
tBackpackLetter_Activity[3326993]["DataType"] = 97
tBackpackLetter_Activity[3326993]["RewardData"] = 1
tBackpackLetter_Activity[3326993]["RewardItem"] = 3326993
tBackpackLetter_Activity[3326993]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326993]["Cultivation"] = 30
tBackpackLetter_Activity[3326993]["NeedLevel"] = 1
tBackpackLetter_Activity[3326993]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326993]["GlobalId"] = 54011
tBackpackLetter_Activity[3326993]["GlobalData"] = 1
tBackpackLetter_Activity[3326993]["GlobalPos"] = 0
-- 寻路                  
tBackpackLetter_Activity[3326993]["Pathfind"] = {}
tBackpackLetter_Activity[3326993]["Pathfind"]["NpcId"] = 25618

------------------------------------------------------------------------------------
--Name:		191118[英文征服][活动脚本]12月德州消费活动（12.12-1.8）
--Creator: 	王贤
--Created:	2019/11/18
------------------------------------------------------------------------------------
-- Lightning互通邀请
tItemFace[3327271] = 1592
tBackpackLetter_Activity[3327271] = {}
-- 活动时间
tBackpackLetter_Activity[3327271]["ActivityTime"] = tActivityTime["LightingEternity"]["ActTime"]
tBackpackLetter_Activity[3327271]["EventType"] = 211
tBackpackLetter_Activity[3327271]["DataType"] = 40
tBackpackLetter_Activity[3327271]["RewardData"] = 1
tBackpackLetter_Activity[3327271]["RewardItem"] = 3327271
tBackpackLetter_Activity[3327271]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3327271]["Cultivation"] = 30
tBackpackLetter_Activity[3327271]["NeedLevel"] = 1
tBackpackLetter_Activity[3327271]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity[3327271]["Pathfind"] = {}
tBackpackLetter_Activity[3327271]["Pathfind"]["NpcId"] = 6297

tBackpackLetter_Activity_NoGift[3327271] = {}
-- 活动时间
tBackpackLetter_Activity_NoGift[3327271]["ActivityTime"] = tActivityTime["LightingEternity"]["ActTime"]
tBackpackLetter_Activity_NoGift[3327271]["EventType"] = 211
tBackpackLetter_Activity_NoGift[3327271]["DataType"] = 40
tBackpackLetter_Activity_NoGift[3327271]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3327271]["RewardItem"] = 3327271
tBackpackLetter_Activity_NoGift[3327271]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3327271]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3327271]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3327271]["NeedMetempsychosis"] = 0
-- 寻路
tBackpackLetter_Activity_NoGift[3327271]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3327271]["Pathfind"]["NpcId"] = 6297

------------------------------------------------------------------------------------
--Name：        191111[英文征服][活动脚本]12月线下充值返利（12.17-1.2）
--Creator:      郑洵
--Created:     2019-11-11
------------------------------------------------------------------------------------
	tItemFace[3314522] = 1095
	tBackpackLetter_Activity[3314522] = {}
	tBackpackLetter_Activity[3314522]["ActivityTime"] = tActivityTime["DecemberRecharge2019"]["ActivityTime"]
	tBackpackLetter_Activity[3314522]["EventType"] = 209
	tBackpackLetter_Activity[3314522]["DataType"] = 75
	tBackpackLetter_Activity[3314522]["RewardData"] = 1
	tBackpackLetter_Activity[3314522]["RewardItem"] = 3314522
	tBackpackLetter_Activity[3314522]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3314522]["NeedLevel"] = 0
	tBackpackLetter_Activity[3314522]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3314522]["Cultivation"] = 30
	tBackpackLetter_Activity[3314522]["GlobalId"] = 53779
	tBackpackLetter_Activity[3314522]["OldSever"] = 1
	tBackpackLetter_Activity[3314522]["Pathfind"] = {}
	tBackpackLetter_Activity[3314522]["Pathfind"]["NpcId"] = 25504

	tBackpackLetter_Activity_NoGift[3314522] = {}
	tBackpackLetter_Activity_NoGift[3314522]["ActivityTime"] = tActivityTime["DecemberRecharge2019"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3314522]["EventType"] = 209
	tBackpackLetter_Activity_NoGift[3314522]["DataType"] = 75
	tBackpackLetter_Activity_NoGift[3314522]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3314522]["RewardItem"] = 3314522
	tBackpackLetter_Activity_NoGift[3314522]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3314522]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3314522]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3314522]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3314522]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3314522]["Pathfind"]["NpcId"] = 25504
------------------------------------------------------------------------------------
--Name：        191112[英文征服][活动脚本]新的TTT活动-团队TTT（12.17-1.06）
--Creator:      茅志伟
--Created:      2019/11/12
------------------------------------------------------------------------------------
tItemFace[3326960] = 623
tBackpackLetter_Activity[3326960] = {}
tBackpackLetter_Activity[3326960]["ActivityTime"] = tActivityTime["NewTeamPet"]["ActivityTime"]
tBackpackLetter_Activity[3326960]["EventType"] = 210
tBackpackLetter_Activity[3326960]["DataType"] = 08
tBackpackLetter_Activity[3326960]["RewardData"] = 1
tBackpackLetter_Activity[3326960]["RewardItem"] = 3326960
tBackpackLetter_Activity[3326960]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326960]["NeedLevel"] = 0
tBackpackLetter_Activity[3326960]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3326960]["Pathfind"] = {}
tBackpackLetter_Activity[3326960]["Pathfind"]["NpcId"] = 25603
------------------------------------------------------------------------------------
--Name:			191122[简体征服][活动脚本]全球圣诞元旦活动--引导NPC制作
--Creator:		郑飞
--Created:		2019/11/22
------------------------------------------------------------------------------------

tItemFace[3327108] = 2676
tBackpackLetter_Activity[3327108] = {}
tBackpackLetter_Activity[3327108]["ActivityTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"] 
tBackpackLetter_Activity[3327108]["EventType"] = 210
tBackpackLetter_Activity[3327108]["DataType"] = 65
tBackpackLetter_Activity[3327108]["RewardData"] = 1
tBackpackLetter_Activity[3327108]["RewardItem"] = 3327108
tBackpackLetter_Activity[3327108]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3327108]["NeedLevel"] = 80
tBackpackLetter_Activity[3327108]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3327108]["Pathfind"] = {}
tBackpackLetter_Activity[3327108]["Pathfind"]["NpcId"] = 25661

tBackpackLetter_Activity_NoGift[3327108] = {}
tBackpackLetter_Activity_NoGift[3327108]["ActivityTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"] 
tBackpackLetter_Activity_NoGift[3327108]["EventType"] = 210
tBackpackLetter_Activity_NoGift[3327108]["DataType"] = 65
tBackpackLetter_Activity_NoGift[3327108]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3327108]["RewardItem"] = 3327108
tBackpackLetter_Activity_NoGift[3327108]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3327108]["NeedLevel"] = 80
tBackpackLetter_Activity_NoGift[3327108]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3327108]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3327108]["Pathfind"]["NpcId"] = 25661

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]团购灵珠赢好礼(12.24-1.13)
--Creator:		翁清海
--Created:		2019/11/14
------------------------------------------------------------------------------------
tItemFace[3326992] = 1592
tBackpackLetter_Activity[3326992] = {}
tBackpackLetter_Activity[3326992]["ActivityTime"] = tActivityTime["AnimaGroupPurchase"]["ActivityTime"]
tBackpackLetter_Activity[3326992]["EventType"] = 210
tBackpackLetter_Activity[3326992]["DataType"] = 19
tBackpackLetter_Activity[3326992]["RewardData"] = 1
tBackpackLetter_Activity[3326992]["RewardItem"] = 3326992
tBackpackLetter_Activity[3326992]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3326992]["NeedLevel"] = 15
tBackpackLetter_Activity[3326992]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity[3326992]["Pathfind"] = {}
tBackpackLetter_Activity[3326992]["Pathfind"]["NpcId"] = 25617

tBackpackLetter_Activity_NoGift[3326992] = {}
tBackpackLetter_Activity_NoGift[3326992]["ActivityTime"] = tActivityTime["AnimaGroupPurchase"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3326992]["EventType"] = 210
tBackpackLetter_Activity_NoGift[3326992]["DataType"] = 19
tBackpackLetter_Activity_NoGift[3326992]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3326992]["RewardItem"] = 3326992
tBackpackLetter_Activity_NoGift[3326992]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3326992]["NeedLevel"] = 15
tBackpackLetter_Activity_NoGift[3326992]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity_NoGift[3326992]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3326992]["Pathfind"]["NpcId"] = 25617
------------------------------------------------------------------------------------
--Name：     191202[英文征服][活动脚本]新年活跃福利活动（1.2-1.31）
--Creator:      冯子鑫
--Created:     2019/12/02
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3327252] = {}
	tBackpackLetter_Activity[3327252]["ActivityTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
	tBackpackLetter_Activity[3327252]["EventType"] = 211
	tBackpackLetter_Activity[3327252]["DataType"] = 20
	tBackpackLetter_Activity[3327252]["RewardData"] = 1
	tBackpackLetter_Activity[3327252]["RewardItem"] = 3327252
	tBackpackLetter_Activity[3327252]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3327252]["NeedLevel"] = 0
	tBackpackLetter_Activity[3327252]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3327252]["Cultivation"] = 30
-- 寻路
	tBackpackLetter_Activity[3327252]["Pathfind"] = {}
	tBackpackLetter_Activity[3327252]["Pathfind"]["NpcId"] = 25690
	
	tBackpackLetter_Activity_NoGift[3327252] = {}
	tBackpackLetter_Activity_NoGift[3327252]["ActivityTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3327252]["EventType"] = 211
	tBackpackLetter_Activity_NoGift[3327252]["DataType"] = 20
	tBackpackLetter_Activity_NoGift[3327252]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3327252]["RewardItem"] = 3327252
	tBackpackLetter_Activity_NoGift[3327252]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3327252]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3327252]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3327252]["Cultivation"] = 30
-- 寻路
	tBackpackLetter_Activity_NoGift[3327252]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3327252]["Pathfind"]["NpcId"] = 25690

------------------------------------------------------------------------------------
--Name:		191107[简体征服][活动脚本]新深海活动（12.10-12.23）
--Creator: 	兰瑞妹
--Created:	2019/11/07
------------------------------------------------------------------------------------
	-- tItemFace[3314547] = 1561
	-- tBackpackLetter_Activity[3314547] = {}
	-- tBackpackLetter_Activity[3314547]["ActivityTime"] = tActivityTime["NewDeepSea"]["ActivityTime"]
	-- tBackpackLetter_Activity[3314547]["EventType"] = 210
	-- tBackpackLetter_Activity[3314547]["DataType"] = 61
	-- tBackpackLetter_Activity[3314547]["RewardData"] = 1
	-- tBackpackLetter_Activity[3314547]["RewardItem"] = 3314547
	-- tBackpackLetter_Activity[3314547]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3314547]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3314547]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3314547]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3314547]["Pathfind"]["NpcId"] =25508
	-- tBackpackLetter_Activity_NoGift[3314547] = {}
	-- tBackpackLetter_Activity_NoGift[3314547]["ActivityTime"] = tActivityTime["NewDeepSea"]["ActivityTime"]
	-- tBackpackLetter_Activity_NoGift[3314547]["EventType"] = 210
	-- tBackpackLetter_Activity_NoGift[3314547]["DataType"] = 61
	-- tBackpackLetter_Activity_NoGift[3314547]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3314547]["RewardItem"] = 3314547
	-- tBackpackLetter_Activity_NoGift[3314547]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3314547]["NeedLevel"] = 80
	-- tBackpackLetter_Activity_NoGift[3314547]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity_NoGift[3314547]["Pathfind"] = {}
	-- tBackpackLetter_Activity_NoGift[3314547]["Pathfind"]["NpcId"] =25508
	
------------------------------------------------------------------------------------
--Name：      191211[英文征服][活动脚本]老玩家召回（1.7-1.31）
--Creator:      郑洵
--Created:     2019/12/11
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3314791] = {}
tBackpackLetter_Activity[3314791]["NewActivityTime"] = tActivityTime["RecallOfOldPlayers"]["ActivityTime"] 
tBackpackLetter_Activity[3314791]["EventType"] = 211
tBackpackLetter_Activity[3314791]["DataType"] = 41
tBackpackLetter_Activity[3314791]["RewardData"] = 1
tBackpackLetter_Activity[3314791]["RewardItem"] = 3314791
tBackpackLetter_Activity[3314791]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3314791]["NeedLevel"] = 0
tBackpackLetter_Activity[3314791]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity[3314791]["Cultivation"] = 30
tBackpackLetter_Activity[3314791]["Pathfind"] = {}
tBackpackLetter_Activity[3314791]["Pathfind"]["NpcId"] = 25758
tBackpackLetter_Activity[3314791]["GlobalId"] = 54080
tBackpackLetter_Activity[3314791]["GlobalData"] = 1
tBackpackLetter_Activity[3314791]["GlobalPos"] = 0

tBackpackLetter_Activity_NoGift[3314791] = {}
tBackpackLetter_Activity_NoGift[3314791]["NewActivityTime"] = tActivityTime["RecallOfOldPlayers"]["ActivityTime"] 
tBackpackLetter_Activity_NoGift[3314791]["EventType"] = 211
tBackpackLetter_Activity_NoGift[3314791]["DataType"] = 41
tBackpackLetter_Activity_NoGift[3314791]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3314791]["RewardItem"] = 3314791
tBackpackLetter_Activity_NoGift[3314791]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3314791]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3314791]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity_NoGift[3314791]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3314791]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3314791]["Pathfind"]["NpcId"] = 25758
tBackpackLetter_Activity_NoGift[3314791]["GlobalId"] = 54080
tBackpackLetter_Activity_NoGift[3314791]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3314791]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：            190705[英文征服][活动脚本]金币大狂欢（8.6-8.31）
--Creator:      蔡颖静
--Created:     2019/07/05
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3322489] = {}
	tBackpackLetter_Activity_NoGift[3322489]["ActivityTime"] = tActivityTime["CoinCarnival"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3322489]["EventType"] = 200
	tBackpackLetter_Activity_NoGift[3322489]["DataType"] = 47
	tBackpackLetter_Activity_NoGift[3322489]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3322489]["RewardItem"] = 3322489
	tBackpackLetter_Activity_NoGift[3322489]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3322489]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3322489]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3322489]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3322489]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3322489]["Pathfind"]["NpcId"] = 24483

------------------------------------------------------------------------------------
--Name:			180606[简体征服][活动脚本]金币服点石成金活动(6.14-6.20)
--Creator:		黄啸
--Created:		2018-06-06
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3319354] = {}
	tBackpackLetter_Activity_NoGift[3319354]["NewActivityTime"] = tActivityTime["GoldServeGoldstone"]["ActTime"]
	tBackpackLetter_Activity_NoGift[3319354]["EventType"] = 189
	tBackpackLetter_Activity_NoGift[3319354]["DataType"] = 48
	tBackpackLetter_Activity_NoGift[3319354]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3319354]["RewardItem"] = 3319354
	tBackpackLetter_Activity_NoGift[3319354]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3319354]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3319354]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3319354]["Pathfind"]["NpcId"] = 23704
	tBackpackLetter_Activity_NoGift[3319354]["GlobalId"] = 54008
	tBackpackLetter_Activity_NoGift[3319354]["GlobalData"] = 1
	tBackpackLetter_Activity_NoGift[3319354]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name:		200113[简体征服][活动脚本]电商背包信（1.14-1.20）
--Creator: 	黄啸
--Created:	2020/01/13
------------------------------------------------------------------------------------
	tItemFace[3327521] = 1561
	tBackpackLetter_Activity[3327521] = {}
	tBackpackLetter_Activity[3327521]["ActivityTime"] = tActivityTime["PUBGbusiniess"]["ActivityTime"]
	tBackpackLetter_Activity[3327521]["EventType"] = 214
	tBackpackLetter_Activity[3327521]["DataType"] = 51
	tBackpackLetter_Activity[3327521]["RewardData"] = 1
	tBackpackLetter_Activity[3327521]["RewardItem"] = 3327521
	tBackpackLetter_Activity[3327521]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3327521]["Cultivation"] = 30
	
	tBackpackLetter_Activity_NoGift[3327521] = {}
	tBackpackLetter_Activity_NoGift[3327521]["ActivityTime"] = tActivityTime["PUBGbusiniess"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3327521]["EventType"] = 214
	tBackpackLetter_Activity_NoGift[3327521]["DataType"] = 51
	tBackpackLetter_Activity_NoGift[3327521]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3327521]["RewardItem"] = 3327521
	tBackpackLetter_Activity_NoGift[3327521]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3327521]["Cultivation"] = 30


------------------------------------------------------------------------------------
--Name：        191213[英文征服][活动脚本]博弈玩法集合（1.16-2.5）
--Creator:      耿力兀
--Created:     2019-12-13
------------------------------------------------------------------------------------
tItemFace[3314736] = 2707
tBackpackLetter_Activity[3314736] = {}
tBackpackLetter_Activity[3314736]["NewActivityTime"] = tActivityTime["GameCollection"]["ActivityTime"]
tBackpackLetter_Activity[3314736]["EventType"] = 211
tBackpackLetter_Activity[3314736]["DataType"] = 53
tBackpackLetter_Activity[3314736]["RewardData"] = 1
tBackpackLetter_Activity[3314736]["RewardItem"] = 3314736
tBackpackLetter_Activity[3314736]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3314736]["NeedLevel"] = 1
tBackpackLetter_Activity[3314736]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3314736]["Cultivation"] = 30
tBackpackLetter_Activity[3314736]["Pathfind"] = {}
tBackpackLetter_Activity[3314736]["Pathfind"]["NpcId"] = 25778
tBackpackLetter_Activity[3314736]["GlobalId"] = 54023
tBackpackLetter_Activity[3314736]["GlobalData"] = 1
tBackpackLetter_Activity[3314736]["GlobalPos"] = 0

tBackpackLetter_Activity_NoGift[3314736] = {}
tBackpackLetter_Activity_NoGift[3314736]["NewActivityTime"] = tActivityTime["GameCollection"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3314736]["EventType"] = 211
tBackpackLetter_Activity_NoGift[3314736]["DataType"] = 53
tBackpackLetter_Activity_NoGift[3314736]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3314736]["RewardItem"] = 3314736
tBackpackLetter_Activity_NoGift[3314736]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3314736]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3314736]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3314736]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3314736]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3314736]["Pathfind"]["NpcId"] = 25778
tBackpackLetter_Activity_NoGift[3314736]["GlobalId"] = 54023
tBackpackLetter_Activity_NoGift[3314736]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3314736]["GlobalPos"] = 0



------------------------------------------------------------------------------------
--Name：		191126[英文征服][活动脚本]限时周卡基金消费返利（1.21-2.5）
--Purpose:		限时周卡基金消费返利
--Creator:		方政
--Created:		2019-11-26
------------------------------------------------------------------------------------

tItemFace[3314621] = 623
tBackpackLetter_Activity[3314621] = {}
tBackpackLetter_Activity[3314621]["ActivityTime"] = tActivityTime["WeeklyFundConsumptionRebate"]["BuyTime"]
tBackpackLetter_Activity[3314621]["EventType"] = 210
tBackpackLetter_Activity[3314621]["DataType"] = 78
tBackpackLetter_Activity[3314621]["RewardData"] = 1
tBackpackLetter_Activity[3314621]["RewardItem"] = 3314621
tBackpackLetter_Activity[3314621]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3314621]["NeedLevel"] = 1
tBackpackLetter_Activity[3314621]["Cultivation"] = 30
tBackpackLetter_Activity[3314621]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3314621]["Pathfind"] = {}
tBackpackLetter_Activity[3314621]["Pathfind"]["NpcId"] = 25622

tBackpackLetter_Activity_NoGift[3314621] = {}
tBackpackLetter_Activity_NoGift[3314621]["ActivityTime"] = tActivityTime["WeeklyFundConsumptionRebate"]["BuyTime"]
tBackpackLetter_Activity_NoGift[3314621]["EventType"] = 210
tBackpackLetter_Activity_NoGift[3314621]["DataType"] = 78
tBackpackLetter_Activity_NoGift[3314621]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3314621]["RewardItem"] = 3314621
tBackpackLetter_Activity_NoGift[3314621]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3314621]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3314621]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3314621]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3314621]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3314621]["Pathfind"]["NpcId"] = 25622

------------------------------------------------------------------------------------
--Name：		200217[英文征服][任务脚本]宣传背包信制作
--Purpose:		宣传背包信制作
--Creator:		洪聪敏
--Created:		2020-02-17
------------------------------------------------------------------------------------
tItemFace[3315580] = 623
tBackpackLetter_Activity[3315580] = {}
tBackpackLetter_Activity[3315580]["ActivityTime"] = tActivityTime["ServerConnection"]["ActivityTime"]
tBackpackLetter_Activity[3315580]["EventType"] = 215
tBackpackLetter_Activity[3315580]["DataType"] = 80
tBackpackLetter_Activity[3315580]["RewardData"] = 1
tBackpackLetter_Activity[3315580]["RewardItem"] = 3315580
tBackpackLetter_Activity[3315580]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315580]["NeedLevel"] = 1
tBackpackLetter_Activity[3315580]["Cultivation"] = 30
tBackpackLetter_Activity[3315580]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315580]["Pathfind"] = {}
tBackpackLetter_Activity[3315580]["Pathfind"]["NpcId"] = 6297

tBackpackLetter_Activity_NoGift[3315580] = {}
tBackpackLetter_Activity_NoGift[3315580]["ActivityTime"] = tActivityTime["ServerConnection"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3315580]["EventType"] = 215
tBackpackLetter_Activity_NoGift[3315580]["DataType"] = 80
tBackpackLetter_Activity_NoGift[3315580]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315580]["RewardItem"] = 3315580
tBackpackLetter_Activity_NoGift[3315580]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315580]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3315580]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3315580]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3315580]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3315580]["Pathfind"]["NpcId"] = 6297
------------------------------------------------------------------------------------
--Name：            200102[英文征服][活动脚本]2月针对大R的博弈类活动（2.25-3.10）
--Creator:      杨志翔
--Created:     2020-01-02
------------------------------------------------------------------------------------
tItemFace[3327449] = 1561
tBackpackLetter_Activity[3327449] = {}
tBackpackLetter_Activity[3327449]["NewActivityTime"] = tActivityTime["DragonSoulRouletteGame"]["ActivityTime"] 
tBackpackLetter_Activity[3327449]["EventType"] = 214
tBackpackLetter_Activity[3327449]["DataType"] = 35
tBackpackLetter_Activity[3327449]["RewardData"] = 1
tBackpackLetter_Activity[3327449]["RewardItem"] = 3327449
tBackpackLetter_Activity[3327449]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3327449]["NeedLevel"] = 0
tBackpackLetter_Activity[3327449]["Cultivation"] = 30
tBackpackLetter_Activity[3327449]["Pathfind"] = {}
tBackpackLetter_Activity[3327449]["Pathfind"]["NpcId"] = 25827
tBackpackLetter_Activity[3327449]["GlobalId"] = 54125
tBackpackLetter_Activity[3327449]["GlobalData"] = 1
tBackpackLetter_Activity[3327449]["GlobalPos"] = 0
tBackpackLetter_Activity_NoGift[3327449] = {}
tBackpackLetter_Activity_NoGift[3327449]["NewActivityTime"] = tActivityTime["DragonSoulRouletteGame"]["ActivityTime"]  
tBackpackLetter_Activity_NoGift[3327449]["EventType"] = 214
tBackpackLetter_Activity_NoGift[3327449]["DataType"] = 35
tBackpackLetter_Activity_NoGift[3327449]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3327449]["RewardItem"] = 3327449
tBackpackLetter_Activity_NoGift[3327449]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3327449]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3327449]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3327449]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3327449]["Pathfind"]["NpcId"] = 25827
tBackpackLetter_Activity_NoGift[3327449]["GlobalId"] = 54125
tBackpackLetter_Activity_NoGift[3327449]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3327449]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：            200109[简体征服][活动脚本]全球情人节活动预热(2.6-2.10)
--Creator:      郑飞
--Created:     2020-01-09
------------------------------------------------------------------------------------
	tItemFace[3327500] = 2775
	tBackpackLetter_Activity[3327500] = {}
	tBackpackLetter_Activity[3327500]["ActivityTime"] = tActivityTime["ValentinePreheat"]["ActivityTime"]
	tBackpackLetter_Activity[3327500]["EventType"] = 214
	tBackpackLetter_Activity[3327500]["DataType"] = 37
	tBackpackLetter_Activity[3327500]["RewardData"] = 1
	tBackpackLetter_Activity[3327500]["RewardItem"] = 3327500
	tBackpackLetter_Activity[3327500]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3327500]["NeedLevel"] = 0
	tBackpackLetter_Activity[3327500]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3327500]["Cultivation"] = 30
	tBackpackLetter_Activity[3327500]["Pathfind"] = {}
	tBackpackLetter_Activity[3327500]["Pathfind"]["NpcId"] = 25866

	
	tBackpackLetter_Activity_NoGift[3327500] = {}
	tBackpackLetter_Activity_NoGift[3327500]["ActivityTime"] = tActivityTime["ValentinePreheat"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3327500]["EventType"] = 214
	tBackpackLetter_Activity_NoGift[3327500]["DataType"] = 37
	tBackpackLetter_Activity_NoGift[3327500]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3327500]["RewardItem"] = 3327500
	tBackpackLetter_Activity_NoGift[3327500]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3327500]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3327500]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3327500]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3327500]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3327500]["Pathfind"]["NpcId"] = 25866

------------------------------------------------------------------------------------
--Name:			180302[简体征服][活动脚本]3月幸运树活动
--Purpose:		宝树迎春
--Creator:		wzh
--Created:		2018/03/02
------------------------------------------------------------------------------------
	tBackpackLetter_Activity_NoGift[3307581] = {}
	--活动时间
	tBackpackLetter_Activity_NoGift[3307581]["ActivityTime"] = tActivityTime["LuckyTree"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3307581]["EventType"] = 174
	tBackpackLetter_Activity_NoGift[3307581]["DataType"] = 48
	tBackpackLetter_Activity_NoGift[3307581]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3307581]["RewardItem"] = 3307581
	tBackpackLetter_Activity_NoGift[3307581]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3307581]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3307581]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3307581]["NeedMetempsychosis"] = 0
	-- 寻路                  
	tBackpackLetter_Activity_NoGift[3307581]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3307581]["Pathfind"]["NpcId"] = 22669

------------------------------------------------------------------------------------
--Name：            200218[英文征服][活动脚本]线下充值返利(3.05-3.16)
--Creator:      戴鑫海
--Created:     2020-02-18
------------------------------------------------------------------------------------
tItemFace[3329803] = 1996
tBackpackLetter_Activity[3329803] = {}
tBackpackLetter_Activity[3329803]["ActivityTime"] = tActivityTime["LuckyScratcht"]["ActivityTime"]
tBackpackLetter_Activity[3329803]["EventType"] = 216
tBackpackLetter_Activity[3329803]["DataType"] = 04
tBackpackLetter_Activity[3329803]["RewardData"] = 1
tBackpackLetter_Activity[3329803]["RewardItem"] = 3329803
tBackpackLetter_Activity[3329803]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3329803]["NeedLevel"] = 1
tBackpackLetter_Activity[3329803]["Cultivation"] = 30
tBackpackLetter_Activity[3329803]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3329803]["Pathfind"] = {}
tBackpackLetter_Activity[3329803]["Pathfind"]["NpcId"] = 25988

tBackpackLetter_Activity_NoGift[3329803] = {}
tBackpackLetter_Activity_NoGift[3329803]["ActivityTime"] = tActivityTime["LuckyScratcht"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3329803]["EventType"] = 216
tBackpackLetter_Activity_NoGift[3329803]["DataType"] = 04
tBackpackLetter_Activity_NoGift[3329803]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3329803]["RewardItem"] = 3329803
tBackpackLetter_Activity_NoGift[3329803]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3329803]["NeedLevel"] = 1
tBackpackLetter_Activity_NoGift[3329803]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3329803]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3329803]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3329803]["Pathfind"]["NpcId"] = 25988

------------------------------------------------------------------------------------
--Name： 191231[简体征服][活动脚本]全球情人节活动-部分玩法
--Creator: 林旭
--Created: 2019-12-31
------------------------------------------------------------------------------------
	tItemFace[3315300] = 2797
	tBackpackLetter_Activity[3315300] = {}
	tBackpackLetter_Activity[3315300]["NewActivityTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
	tBackpackLetter_Activity[3315300]["EventType"] = 215
	tBackpackLetter_Activity[3315300]["DataType"] = 10
	tBackpackLetter_Activity[3315300]["RewardData"] = 1
	tBackpackLetter_Activity[3315300]["RewardItem"] = 3315300
	tBackpackLetter_Activity[3315300]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3315300]["NeedLevel"] = 80
	tBackpackLetter_Activity[3315300]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3315300]["Cultivation"] = 30
	tBackpackLetter_Activity[3315300]["Pathfind"] = {}
	tBackpackLetter_Activity[3315300]["Pathfind"]["NpcId"] = 25846
	tBackpackLetter_Activity[3315300]["GlobalId"] = 54337
	tBackpackLetter_Activity[3315300]["GlobalData"] = 1
	tBackpackLetter_Activity[3315300]["GlobalPos"] = 0
	
	tBackpackLetter_Activity_NoGift[3315300] = {}
	tBackpackLetter_Activity_NoGift[3315300]["NewActivityTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3315300]["EventType"] = 215
	tBackpackLetter_Activity_NoGift[3315300]["DataType"] = 10
	tBackpackLetter_Activity_NoGift[3315300]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3315300]["RewardItem"] = 3315300
	tBackpackLetter_Activity_NoGift[3315300]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3315300]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3315300]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3315300]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3315300]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3315300]["Pathfind"]["NpcId"] = 25846
	tBackpackLetter_Activity_NoGift[3315300]["GlobalId"] = 54337
	tBackpackLetter_Activity_NoGift[3315300]["GlobalData"] = 1
	tBackpackLetter_Activity_NoGift[3315300]["GlobalPos"] = 0
	
------------------------------------------------------------------------------------
--Name:			191216[简体征服][活动脚本]职业觉醒预热活动
--Creator: 		茅志伟
--Created:		2019/12/16
------------------------------------------------------------------------------------
-- 传音贝壳
tItemFace[3327325] = 2767
tBackpackLetter_Activity[3327325] = {}
tBackpackLetter_Activity[3327325]["ActivityTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
tBackpackLetter_Activity[3327325]["EventType"] = 213
tBackpackLetter_Activity[3327325]["DataType"] = 49
tBackpackLetter_Activity[3327325]["RewardData"] = 1
tBackpackLetter_Activity[3327325]["RewardItem"] = 3327325
tBackpackLetter_Activity[3327325]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3327325]["NeedLevel"] = 0
tBackpackLetter_Activity[3327325]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3327325]["Pathfind"] = {}
tBackpackLetter_Activity[3327325]["Pathfind"]["NpcId"] = 25800
-- 觉醒密函
tItemFace[3327326] = 2768
tBackpackLetter_Activity[3327326] = {}
tBackpackLetter_Activity[3327326]["ActivityTime"] = tActivityTime["AwakenPreheat"]["ActivityTime2"]
tBackpackLetter_Activity[3327326]["EventType"] = 213
tBackpackLetter_Activity[3327326]["DataType"] = 50
tBackpackLetter_Activity[3327326]["RewardData"] = 1
tBackpackLetter_Activity[3327326]["RewardItem"] = 3327326
tBackpackLetter_Activity[3327326]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3327326]["NeedLevel"] = 0
tBackpackLetter_Activity[3327326]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3327326]["Pathfind"] = {}
tBackpackLetter_Activity[3327326]["Pathfind"]["NpcId"] = 25802
-- 雾隐忍法帖
tItemFace[3327327] = 1561
tBackpackLetter_Activity[3327327] = {}
tBackpackLetter_Activity[3327327]["ActivityTime"] = tActivityTime["AwakenPreheat"]["ActivityTime3"]
tBackpackLetter_Activity[3327327]["EventType"] = 213
tBackpackLetter_Activity[3327327]["DataType"] = 51
tBackpackLetter_Activity[3327327]["RewardData"] = 1
tBackpackLetter_Activity[3327327]["RewardItem"] = 3327327
tBackpackLetter_Activity[3327327]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3327327]["NeedLevel"] = 0
tBackpackLetter_Activity[3327327]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3327327]["Pathfind"] = {}
tBackpackLetter_Activity[3327327]["Pathfind"]["NpcId"] = 25804

-- 传音贝壳
tBackpackLetter_Activity_NoGift[3327325] = {}
tBackpackLetter_Activity_NoGift[3327325]["ActivityTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
tBackpackLetter_Activity_NoGift[3327325]["EventType"] = 213
tBackpackLetter_Activity_NoGift[3327325]["DataType"] = 49
tBackpackLetter_Activity_NoGift[3327325]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3327325]["RewardItem"] = 3327325
tBackpackLetter_Activity_NoGift[3327325]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3327325]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3327325]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3327325]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3327325]["Pathfind"]["NpcId"] = 25800
-- 觉醒密函
tBackpackLetter_Activity_NoGift[3327326] = {}
tBackpackLetter_Activity_NoGift[3327326]["ActivityTime"] = tActivityTime["AwakenPreheat"]["ActivityTime2"]
tBackpackLetter_Activity_NoGift[3327326]["EventType"] = 213
tBackpackLetter_Activity_NoGift[3327326]["DataType"] = 50
tBackpackLetter_Activity_NoGift[3327326]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3327326]["RewardItem"] = 3327326
tBackpackLetter_Activity_NoGift[3327326]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3327326]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3327326]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3327326]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3327326]["Pathfind"]["NpcId"] = 25802
-- 雾隐忍法帖
tBackpackLetter_Activity_NoGift[3327327] = {}
tBackpackLetter_Activity_NoGift[3327327]["ActivityTime"] = tActivityTime["AwakenPreheat"]["ActivityTime3"]
tBackpackLetter_Activity_NoGift[3327327]["EventType"] = 213
tBackpackLetter_Activity_NoGift[3327327]["DataType"] = 51
tBackpackLetter_Activity_NoGift[3327327]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3327327]["RewardItem"] = 3327327
tBackpackLetter_Activity_NoGift[3327327]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3327327]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3327327]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3327327]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3327327]["Pathfind"]["NpcId"] = 25804

------------------------------------------------------------------------------------
--Name:     200224[英文征服][活动脚本]3月金币博弈新服活动（3.12-4.12）
--Creator:  郑飞
--Created:  2020-02-24
------------------------------------------------------------------------------------
	tItemFace[3329919] = 623
	tBackpackLetter_Activity[3329919] = {}
	tBackpackLetter_Activity[3329919]["NewActivityTime"] = tActivityTime["CoinGame"]["ActivityTime"]
	tBackpackLetter_Activity[3329919]["EventType"] = 214
	tBackpackLetter_Activity[3329919]["DataType"] = 89
	tBackpackLetter_Activity[3329919]["RewardData"] = 1
	tBackpackLetter_Activity[3329919]["RewardItem"] = 3329919
	tBackpackLetter_Activity[3329919]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3329919]["NeedLevel"] = 0
	tBackpackLetter_Activity[3329919]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3329919]["Cultivation"] = 30
	tBackpackLetter_Activity[3329919]["Pathfind"] = {}
	tBackpackLetter_Activity[3329919]["Pathfind"]["NpcId"] = 26001
	tBackpackLetter_Activity[3329919]["GlobalId"] = 54272
	tBackpackLetter_Activity[3329919]["GlobalData"] = 1
	tBackpackLetter_Activity[3329919]["GlobalPos"] = 0
	
	tBackpackLetter_Activity_NoGift[3329919] = {}
	tBackpackLetter_Activity_NoGift[3329919]["NewActivityTime"] = tActivityTime["CoinGame"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3329919]["EventType"] = 214
	tBackpackLetter_Activity_NoGift[3329919]["DataType"] = 89
	tBackpackLetter_Activity_NoGift[3329919]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3329919]["RewardItem"] = 3329919
	tBackpackLetter_Activity_NoGift[3329919]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3329919]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3329919]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3329919]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3329919]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3329919]["Pathfind"]["NpcId"] = 26001
	tBackpackLetter_Activity_NoGift[3329919]["GlobalId"] = 54272
	tBackpackLetter_Activity_NoGift[3329919]["GlobalData"] = 1
	tBackpackLetter_Activity_NoGift[3329919]["GlobalPos"] = 0
	
------------------------------------------------------------------------------------
--Name：            200225[英文征服][活动脚本]3月金币博弈新服（3.12-4.12）
--Creator:      耿力兀
--Created:     2020-02-25
------------------------------------------------------------------------------------
tItemFace[3315528] = 2825
tBackpackLetter_Activity[3315528] = {}
tBackpackLetter_Activity[3315528]["NewActivityTime"] = tActivityTime["GoldServer"]["ActivityTime"]
tBackpackLetter_Activity[3315528]["EventType"] = 216
tBackpackLetter_Activity[3315528]["DataType"] = 49
tBackpackLetter_Activity[3315528]["RewardData"] = 1
tBackpackLetter_Activity[3315528]["RewardItem"] = 3315528
tBackpackLetter_Activity[3315528]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315528]["NeedLevel"] = 0
tBackpackLetter_Activity[3315528]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315528]["Pathfind"] = {}
tBackpackLetter_Activity[3315528]["Pathfind"]["NpcId"] = 26011
tBackpackLetter_Activity[3315528]["GlobalId"] = 54271
tBackpackLetter_Activity[3315528]["GlobalData"] = 1
tBackpackLetter_Activity[3315528]["GlobalPos"] = 0

tBackpackLetter_Activity_NoGift[3315528] = {}
tBackpackLetter_Activity_NoGift[3315528]["NewActivityTime"] = tActivityTime["GoldServer"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3315528]["EventType"] = 216
tBackpackLetter_Activity_NoGift[3315528]["DataType"] = 49
tBackpackLetter_Activity_NoGift[3315528]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315528]["RewardItem"] = 3315528
tBackpackLetter_Activity_NoGift[3315528]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315528]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3315528]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3315528]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3315528]["Pathfind"]["NpcId"] = 26011
tBackpackLetter_Activity_NoGift[3315528]["GlobalId"] = 54271
tBackpackLetter_Activity_NoGift[3315528]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3315528]["GlobalPos"] = 0
------------------------------------------------------------------------------------
--Name：        200217[英文征服][活动脚本]3月职业成长之路（3.19-4.10）
--Creator:      茅志伟
--Created:      DATE：2020-02-17
------------------------------------------------------------------------------------

-- 成长嘉年华邀请函
tItemFace[3329842] = 2818
tBackpackLetter_Activity[3329842] = {}
tBackpackLetter_Activity[3329842]["ActivityTime"] = tActivityTime["GrowthInMarch"]["ActivityTime"] 
tBackpackLetter_Activity[3329842]["EventType"] = 216
tBackpackLetter_Activity[3329842]["DataType"] = 41
tBackpackLetter_Activity[3329842]["RewardData"] = 1
tBackpackLetter_Activity[3329842]["RewardItem"] = 3329842
tBackpackLetter_Activity[3329842]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3329842]["NeedLevel"] = 0
tBackpackLetter_Activity[3329842]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3329842]["Pathfind"] = {}
tBackpackLetter_Activity[3329842]["Pathfind"]["NpcId"] = 25990

-- 成长嘉年华邀请函
tBackpackLetter_Activity_NoGift[3329842] = {}
tBackpackLetter_Activity_NoGift[3329842]["ActivityTime"] = tActivityTime["GrowthInMarch"]["ActivityTime"] 
tBackpackLetter_Activity_NoGift[3329842]["EventType"] = 216
tBackpackLetter_Activity_NoGift[3329842]["DataType"] = 41
tBackpackLetter_Activity_NoGift[3329842]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3329842]["RewardItem"] = 3329842
tBackpackLetter_Activity_NoGift[3329842]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3329842]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3329842]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3329842]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3329842]["Pathfind"]["NpcId"] = 25990

------------------------------------------------------------------------------------
--Name：            200206[简体征服][更新包]6605更新包
--Creator:      王贤
--Created:     2020-02-06
------------------------------------------------------------------------------------
	-- tItemFace[3329641] = 2206
	-- tBackpackLetter_Activity[3329641] = {}
	-- tBackpackLetter_Activity[3329641]["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime"]
	-- tBackpackLetter_Activity[3329641]["EventType"] = 215
	-- tBackpackLetter_Activity[3329641]["DataType"] = 56
	-- tBackpackLetter_Activity[3329641]["RewardData"] = 1
	-- tBackpackLetter_Activity[3329641]["RewardItem"] = 3329641
	-- tBackpackLetter_Activity[3329641]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity[3329641]["NeedLevel"] = 80
	-- tBackpackLetter_Activity[3329641]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity[3329641]["Cultivation"] = 30
	-- tBackpackLetter_Activity[3329641]["Pathfind"] = {}
	-- tBackpackLetter_Activity[3329641]["Pathfind"]["NpcId"] = 25937

	-- tBackpackLetter_Activity_NoGift[3329641] = {}
	-- tBackpackLetter_Activity_NoGift[3329641]["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime"]
	-- tBackpackLetter_Activity_NoGift[3329641]["EventType"] = 215
	-- tBackpackLetter_Activity_NoGift[3329641]["DataType"] = 56
	-- tBackpackLetter_Activity_NoGift[3329641]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3329641]["RewardItem"] = 3329641
	-- tBackpackLetter_Activity_NoGift[3329641]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3329641]["NeedLevel"] = 80
	-- tBackpackLetter_Activity_NoGift[3329641]["NeedMetempsychosis"] = 0
	-- tBackpackLetter_Activity_NoGift[3329641]["Cultivation"] = 30
	-- tBackpackLetter_Activity_NoGift[3329641]["Pathfind"] = {}
	-- tBackpackLetter_Activity_NoGift[3329641]["Pathfind"]["NpcId"] = 25937
	
	tItemFace[3315539] = 2800
	tBackpackLetter_Activity[3315539] = {}
	tBackpackLetter_Activity[3315539]["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime2"]
	tBackpackLetter_Activity[3315539]["EventType"] = 215
	tBackpackLetter_Activity[3315539]["DataType"] = 66
	tBackpackLetter_Activity[3315539]["RewardData"] = 1
	tBackpackLetter_Activity[3315539]["RewardItem"] = 3315539
	tBackpackLetter_Activity[3315539]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3315539]["NeedLevel"] = 80
	tBackpackLetter_Activity[3315539]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3315539]["Cultivation"] = 30
	tBackpackLetter_Activity[3315539]["Pathfind"] = {}
	tBackpackLetter_Activity[3315539]["Pathfind"]["NpcId"] = 25948

	tBackpackLetter_Activity_NoGift[3315539] = {}
	tBackpackLetter_Activity_NoGift[3315539]["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime2"]
	tBackpackLetter_Activity_NoGift[3315539]["EventType"] = 215
	tBackpackLetter_Activity_NoGift[3315539]["DataType"] = 66
	tBackpackLetter_Activity_NoGift[3315539]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3315539]["RewardItem"] = 3315539
	tBackpackLetter_Activity_NoGift[3315539]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3315539]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3315539]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3315539]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3315539]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3315539]["Pathfind"]["NpcId"] = 25948

------------------------------------------------------------------------------------
--Name：            200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
--Creator:      冯子鑫
--Created:     2020-02-28
------------------------------------------------------------------------------------
	 tItemFace[3329962] = 2835
	tBackpackLetter_Activity[3329962] = {}
	tBackpackLetter_Activity[3329962]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"] 
	tBackpackLetter_Activity[3329962]["EventType"] = 216
	tBackpackLetter_Activity[3329962]["DataType"] = 59
	tBackpackLetter_Activity[3329962]["RewardData"] = 1
	tBackpackLetter_Activity[3329962]["RewardItem"] = 3329962
	tBackpackLetter_Activity[3329962]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3329962]["NeedLevel"] = 80
	tBackpackLetter_Activity[3329962]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3329962]["Cultivation"] = 30
	tBackpackLetter_Activity[3329962]["Pathfind"] = {}
	tBackpackLetter_Activity[3329962]["Pathfind"]["NpcId"] = 26014
	
	tBackpackLetter_Activity_NoGift[3329962] = {}
	tBackpackLetter_Activity_NoGift[3329962]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"] 
	tBackpackLetter_Activity_NoGift[3329962]["EventType"] = 216
	tBackpackLetter_Activity_NoGift[3329962]["DataType"] = 59
	tBackpackLetter_Activity_NoGift[3329962]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3329962]["RewardItem"] = 3329962
	tBackpackLetter_Activity_NoGift[3329962]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3329962]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3329962]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3329962]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3329962]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3329962]["Pathfind"]["NpcId"] = 26014
	
------------------------------------------------------------------------------------
--Name:		170418[英文征服][活动脚本]精准推送图片更新
--Purpose:	精准推送图片更新
--Creator: 	陈琳
--Created:	2017/04/18
------------------------------------------------------------------------------------
	tItemFace[3330497] = 399
	tBackpackLetter_Activity[3330497] = {}
	tBackpackLetter_Activity[3330497]["ActivityTime"] = tActivityTime["MobileCO"]["ActivityTime"]
	tBackpackLetter_Activity[3330497]["EventType"] = 218
	tBackpackLetter_Activity[3330497]["DataType"] = 30
	tBackpackLetter_Activity[3330497]["RewardData"] = 1
	tBackpackLetter_Activity[3330497]["RewardItem"] = 3330497
	tBackpackLetter_Activity[3330497]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3330497]["NeedLevel"] = 1
	tBackpackLetter_Activity[3330497]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3330497]["Cultivation"] = 30
	
	tBackpackLetter_Activity_NoGift[3330497] = {}
	tBackpackLetter_Activity_NoGift[3330497]["ActivityTime"] = tActivityTime["MobileCO"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3330497]["EventType"] = 218
	tBackpackLetter_Activity_NoGift[3330497]["DataType"] = 30
	tBackpackLetter_Activity_NoGift[3330497]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3330497]["RewardItem"] = 3330497
	tBackpackLetter_Activity_NoGift[3330497]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3330497]["NeedLevel"] = 1
	tBackpackLetter_Activity_NoGift[3330497]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3330497]["Cultivation"] = 30
		
------------------------------------------------------------------------------------
--Name:     200227[英文征服][活动脚本]忍者觉醒普天同庆【初阶】（答题模式）（3.24-4.6）
--Creator:  郑飞
--Created:  2020-02-24
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3329960] = {}
	tBackpackLetter_Activity[3329960]["ActivityTime"] = tActivityTime["NinjaAnswer"]["ActivityTime"]
	tBackpackLetter_Activity[3329960]["EventType"] = 216
	tBackpackLetter_Activity[3329960]["DataType"] = 67
	tBackpackLetter_Activity[3329960]["RewardData"] = 1
	tBackpackLetter_Activity[3329960]["RewardItem"] = 3329960
	tBackpackLetter_Activity[3329960]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3329960]["NeedLevel"] = 120
	tBackpackLetter_Activity[3329960]["NeedMetempsychosis"] = 1
	
	tBackpackLetter_Activity_NoGift[3329960] = {}
	tBackpackLetter_Activity_NoGift[3329960]["ActivityTime"] = tActivityTime["NinjaAnswer"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3329960]["EventType"] = 216
	tBackpackLetter_Activity_NoGift[3329960]["DataType"] = 67
	tBackpackLetter_Activity_NoGift[3329960]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3329960]["RewardItem"] = 3329960
	tBackpackLetter_Activity_NoGift[3329960]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3329960]["NeedLevel"] = 120
	tBackpackLetter_Activity_NoGift[3329960]["NeedMetempsychosis"] = 1

------------------------------------------------------------------------------------
--Name：	200216[简体征服][活动脚本]忍者觉醒前瞻任务
--Creator:	杨志翔
--DATE：2020-02-16
------------------------------------------------------------------------------------

tItemFace[3329922] = 1602
tBackpackLetter_Activity[3329922] = {}
tBackpackLetter_Activity[3329922]["ActivityTime"] = tActivityTime["NAForward"]["ActivityTime"] 
tBackpackLetter_Activity[3329922]["EventType"] = 216
tBackpackLetter_Activity[3329922]["DataType"] = 35
tBackpackLetter_Activity[3329922]["RewardData"] = 1
tBackpackLetter_Activity[3329922]["RewardItem"] = 3329922
tBackpackLetter_Activity[3329922]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3329922]["NeedLevel"] = 80
tBackpackLetter_Activity[3329922]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3329922]["Cultivation"] = 30
tBackpackLetter_Activity[3329922]["Pathfind"] = {}
tBackpackLetter_Activity[3329922]["Pathfind"]["NpcId"] = 25959

tBackpackLetter_Activity_NoGift[3329922] = {}
tBackpackLetter_Activity_NoGift[3329922]["ActivityTime"] = tActivityTime["NAForward"]["ActivityTime"] 
tBackpackLetter_Activity_NoGift[3329922]["EventType"] = 216
tBackpackLetter_Activity_NoGift[3329922]["DataType"] = 35
tBackpackLetter_Activity_NoGift[3329922]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3329922]["RewardItem"] = 3329922
tBackpackLetter_Activity_NoGift[3329922]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3329922]["NeedLevel"] = 80
tBackpackLetter_Activity_NoGift[3329922]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3329922]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3329922]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3329922]["Pathfind"]["NpcId"] = 25959
------------------------------------------------------------------------------------
--Name：	200216[简体征服][活动脚本]60天签到礼包
--Creator:	杨志翔
--DATE：2020-02-16
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3330499] = {}
tBackpackLetter_Activity[3330499]["ActivityTime"] = tActivityTime["Signin60P"]["ActivityTime"]
tBackpackLetter_Activity[3330499]["EventType"] = 218
tBackpackLetter_Activity[3330499]["DataType"] = 40
tBackpackLetter_Activity[3330499]["RewardData"] = 1
tBackpackLetter_Activity[3330499]["RewardItem"] = 3330499
tBackpackLetter_Activity[3330499]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3330499]["NeedLevel"] = 0
tBackpackLetter_Activity[3330499]["NeedMetempsychosis"] = 2



tBackpackLetter_Activity_NoGift[3330499] = {}
tBackpackLetter_Activity_NoGift[3330499]["ActivityTime"] = tActivityTime["Signin60P"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3330499]["EventType"] = 218
tBackpackLetter_Activity_NoGift[3330499]["DataType"] = 40
tBackpackLetter_Activity_NoGift[3330499]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3330499]["RewardItem"] = 3330499
tBackpackLetter_Activity_NoGift[3330499]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3330499]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3330499]["NeedMetempsychosis"] = 2



------------------------------------------------------------------------------------
--Name：      200324[英文征服][活动脚本]4月COP预热活动（4.14-5.28）
--Creator:      郑洵
--Created:     2020-03-23
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3315753] = {}
tBackpackLetter_Activity[3315753]["ActivityTime"] = tActivityTime["AprilCOPPreheat"]["ActivityTime"][1]
tBackpackLetter_Activity[3315753]["EventType"] = 218
tBackpackLetter_Activity[3315753]["DataType"] = 13
tBackpackLetter_Activity[3315753]["RewardData"] = 1
tBackpackLetter_Activity[3315753]["RewardItem"] = 3315753
tBackpackLetter_Activity[3315753]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315753]["NeedLevel"] = 0
tBackpackLetter_Activity[3315753]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315753]["Cultivation"] = 30

tBackpackLetter_Activity_NoGift[3315753] = {}
tBackpackLetter_Activity_NoGift[3315753]["ActivityTime"] = tActivityTime["AprilCOPPreheat"]["ActivityTime"][1]
tBackpackLetter_Activity_NoGift[3315753]["EventType"] = 218
tBackpackLetter_Activity_NoGift[3315753]["DataType"] = 13
tBackpackLetter_Activity_NoGift[3315753]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315753]["RewardItem"] = 3315753
tBackpackLetter_Activity_NoGift[3315753]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315753]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3315753]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3315753]["Cultivation"] = 30

tBackpackLetter_Activity[3315754] = {}
tBackpackLetter_Activity[3315754]["ActivityTime"] = tActivityTime["AprilCOPPreheat"]["ActivityTime"][2]
tBackpackLetter_Activity[3315754]["EventType"] = 218
tBackpackLetter_Activity[3315754]["DataType"] = 14
tBackpackLetter_Activity[3315754]["RewardData"] = 1
tBackpackLetter_Activity[3315754]["RewardItem"] = 3315754
tBackpackLetter_Activity[3315754]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315754]["NeedLevel"] = 0
tBackpackLetter_Activity[3315754]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315754]["Cultivation"] = 30

tBackpackLetter_Activity_NoGift[3315754] = {}
tBackpackLetter_Activity_NoGift[3315754]["ActivityTime"] = tActivityTime["AprilCOPPreheat"]["ActivityTime"][2]
tBackpackLetter_Activity_NoGift[3315754]["EventType"] = 218
tBackpackLetter_Activity_NoGift[3315754]["DataType"] = 14
tBackpackLetter_Activity_NoGift[3315754]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315754]["RewardItem"] = 3315754
tBackpackLetter_Activity_NoGift[3315754]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315754]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3315754]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3315754]["Cultivation"] = 30


------------------------------------------------------------------------------------
--Name：      200310[简体征服][活动脚本]17周年庆预热活动-祈福灵兽
--Creator:      郑洵
--Created:     2020-03-10
------------------------------------------------------------------------------------
tItemFace[3315790] = 2785
tBackpackLetter_Activity[3315790] = {}
tBackpackLetter_Activity[3315790]["ActivityTime"] = tActivityTime["PrayForKirin"]["ActivityTime1"]
tBackpackLetter_Activity[3315790]["EventType"] = 217
tBackpackLetter_Activity[3315790]["DataType"] = 54
tBackpackLetter_Activity[3315790]["RewardData"] = 1
tBackpackLetter_Activity[3315790]["RewardItem"] = 3315790
tBackpackLetter_Activity[3315790]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315790]["NeedLevel"] = 0
tBackpackLetter_Activity[3315790]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315790]["Cultivation"] = 30
tBackpackLetter_Activity[3315790]["Pathfind"] = {}
tBackpackLetter_Activity[3315790]["Pathfind"]["NpcId"] = 26063

tBackpackLetter_Activity_NoGift[3315790] = {}
tBackpackLetter_Activity_NoGift[3315790]["ActivityTime"] = tActivityTime["PrayForKirin"]["ActivityTime1"]
tBackpackLetter_Activity_NoGift[3315790]["EventType"] = 217
tBackpackLetter_Activity_NoGift[3315790]["DataType"] = 54
tBackpackLetter_Activity_NoGift[3315790]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315790]["RewardItem"] = 3315790
tBackpackLetter_Activity_NoGift[3315790]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315790]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3315790]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3315790]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3315790]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3315790]["Pathfind"]["NpcId"] = 26063

tItemFace[3315795] = 2785
tBackpackLetter_Activity[3315795] = {}
tBackpackLetter_Activity[3315795]["ActivityTime"] = tActivityTime["PrayForKirin"]["ActivityTime2"]
tBackpackLetter_Activity[3315795]["EventType"] = 217
tBackpackLetter_Activity[3315795]["DataType"] = 60
tBackpackLetter_Activity[3315795]["RewardData"] = 1
tBackpackLetter_Activity[3315795]["RewardItem"] = 3315795
tBackpackLetter_Activity[3315795]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315795]["NeedLevel"] = 0
tBackpackLetter_Activity[3315795]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315795]["Cultivation"] = 30
tBackpackLetter_Activity[3315795]["Pathfind"] = {}
tBackpackLetter_Activity[3315795]["Pathfind"]["NpcId"] = 26063

tBackpackLetter_Activity_NoGift[3315795] = {}
tBackpackLetter_Activity_NoGift[3315795]["ActivityTime"] = tActivityTime["PrayForKirin"]["ActivityTime2"]
tBackpackLetter_Activity_NoGift[3315795]["EventType"] = 217
tBackpackLetter_Activity_NoGift[3315795]["DataType"] = 60
tBackpackLetter_Activity_NoGift[3315795]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315795]["RewardItem"] = 3315795
tBackpackLetter_Activity_NoGift[3315795]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315795]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3315795]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3315795]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3315795]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3315795]["Pathfind"]["NpcId"] = 26063

------------------------------------------------------------------------------------
--Name：            200224[英文征服][活动脚本]3月忍者觉醒新服-15次签到卡（3.24-4.23）
--Creator:      方政
--Created:     2020-02-24
------------------------------------------------------------------------------------
	tBackpackLetter_Activity[3315582] = {}
	tBackpackLetter_Activity[3315582]["NewActivityTime"] = tActivityTime["NinjaSign"]["ActivityTime"]
	tBackpackLetter_Activity[3315582]["EventType"] = 216
	tBackpackLetter_Activity[3315582]["DataType"] = 48
	tBackpackLetter_Activity[3315582]["RewardData"] = 1
	tBackpackLetter_Activity[3315582]["RewardItem"] = 3315582
	tBackpackLetter_Activity[3315582]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3315582]["NeedLevel"] = 0
	tBackpackLetter_Activity[3315582]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3315582]["GlobalId"] = 54400
	tBackpackLetter_Activity[3315582]["GlobalData"] = 1
	tBackpackLetter_Activity[3315582]["GlobalPos"] = 0
	-- tBackpackLetter_Activity_NoGift[3315582] = {}
	-- tBackpackLetter_Activity_NoGift[3315582]["ActivityTime"] = tActivityTime["NinjaSign"]["ActivityTime"]
	-- tBackpackLetter_Activity_NoGift[3315582]["EventType"] = 216
	-- tBackpackLetter_Activity_NoGift[3315582]["DataType"] = 48
	-- tBackpackLetter_Activity_NoGift[3315582]["RewardData"] = 1
	-- tBackpackLetter_Activity_NoGift[3315582]["RewardItem"] = 3315582
	-- tBackpackLetter_Activity_NoGift[3315582]["RewardAttr"] = "0 1"
	-- tBackpackLetter_Activity_NoGift[3315582]["NeedLevel"] = 0
	-- tBackpackLetter_Activity_NoGift[3315582]["NeedMetempsychosis"] = 0


------------------------------------------------------------------------------------
--Name：            200225[英文征服][活动脚本]3月新服忍者觉醒预约活动（3.24-4.23）
--Creator:      蔡颖静
--Created:     2020-02-25
------------------------------------------------------------------------------------
tItemFace[3329930] = 1704
tBackpackLetter_Activity[3329930] = {}
tBackpackLetter_Activity[3329930]["NewActivityTime"] = tActivityTime["NinjaSignInActivity"]["ActTime"]
tBackpackLetter_Activity[3329930]["EventType"] = 216
tBackpackLetter_Activity[3329930]["DataType"] = 54
tBackpackLetter_Activity[3329930]["RewardData"] = 1
tBackpackLetter_Activity[3329930]["RewardItem"] = 3329930
tBackpackLetter_Activity[3329930]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3329930]["NeedLevel"] = 0
tBackpackLetter_Activity[3329930]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3329930]["Pathfind"] = {}
tBackpackLetter_Activity[3329930]["Pathfind"]["NpcId"] = 26009
tBackpackLetter_Activity[3329930]["GlobalId"] = 54275
tBackpackLetter_Activity[3329930]["GlobalData"] = 1
tBackpackLetter_Activity[3329930]["GlobalPos"] = 0
	
------------------------------------------------------------------------------------
--Name：            200302[英文征服][活动脚本]忍者觉醒普天同庆【终阶】(4.14-5.1)
--Creator:      蔡颖静
--Created:     2020-03-02
------------------------------------------------------------------------------------

tItemFace[3329980] = 2854
tBackpackLetter_Activity[3329980] = {}
tBackpackLetter_Activity[3329980]["NewActivityTime"] = tActivityTime["NinjaFinalCelebration"]["ActTime"]
tBackpackLetter_Activity[3329980]["EventType"] = 216
tBackpackLetter_Activity[3329980]["DataType"] = 90
tBackpackLetter_Activity[3329980]["RewardData"] = 1
tBackpackLetter_Activity[3329980]["RewardItem"] = 3329980
tBackpackLetter_Activity[3329980]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3329980]["NeedLevel"] = 0
tBackpackLetter_Activity[3329980]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3329980]["Pathfind"] = {}
tBackpackLetter_Activity[3329980]["Pathfind"]["NpcId"] = 26016
tBackpackLetter_Activity[3329980]["GlobalId"] = 54279
tBackpackLetter_Activity[3329980]["GlobalData"] = 0
tBackpackLetter_Activity[3329980]["GlobalPos"] = 0

-- tBackpackLetter_Activity_NoGift[3329980] = {}
-- tBackpackLetter_Activity_NoGift[3329980]["ActivityTime"] = tActivityTime["NinjaFinalCelebration"]["ActTime"]
-- tBackpackLetter_Activity_NoGift[3329980]["EventType"] = 216
-- tBackpackLetter_Activity_NoGift[3329980]["DataType"] = 90
-- tBackpackLetter_Activity_NoGift[3329980]["RewardData"] = 1
-- tBackpackLetter_Activity_NoGift[3329980]["RewardItem"] = 3329980
-- tBackpackLetter_Activity_NoGift[3329980]["RewardAttr"] = "0 1"
-- tBackpackLetter_Activity_NoGift[3329980]["NeedLevel"] = 0
-- tBackpackLetter_Activity_NoGift[3329980]["NeedMetempsychosis"] = 0
-- tBackpackLetter_Activity_NoGift[3329980]["Pathfind"] = {}
-- tBackpackLetter_Activity_NoGift[3329980]["Pathfind"]["NpcId"] = 26016
------------------------------------------------------------------------------------
--Name:		[征服][功能脚本]短武器回收增加忍法帖道具
--Purpose:	短兵器追加装备拆解
--Creator: 	郑鋆
--Created:	2020/03/26
------------------------------------------------------------------------------------
-- 3315765,短兵器炼化手册
tItemFace[3315765] = 2874
tBackpackLetter_Activity[3315765] = {}
-- 活动时间
tBackpackLetter_Activity[3315765]["EventType"] = 218
tBackpackLetter_Activity[3315765]["DataType"] = 03
tBackpackLetter_Activity[3315765]["RewardData"] = 1
tBackpackLetter_Activity[3315765]["RewardItem"] = 3315765
tBackpackLetter_Activity[3315765]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315765]["Cultivation"] = 30
tBackpackLetter_Activity[3315765]["NeedLevel"] = 40
tBackpackLetter_Activity[3315765]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315765]["Pathfind"] = {}
tBackpackLetter_Activity[3315765]["Pathfind"]["NpcId"] = 24309
tBackpackLetter_Activity[3315765]["NeedPro"] ={}
tBackpackLetter_Activity[3315765]["NeedPro"]["Pro1"] = G_PRO_Ninja0
tBackpackLetter_Activity[3315765]["NeedPro"]["Pro2"] = G_PRO_Ninja5
	
tBackpackLetter_Activity_NoGift[3315765] = {}
tBackpackLetter_Activity_NoGift[3315765]["EventType"] = 218
tBackpackLetter_Activity_NoGift[3315765]["DataType"] = 03
tBackpackLetter_Activity_NoGift[3315765]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3315765]["RewardItem"] = 3315765
tBackpackLetter_Activity_NoGift[3315765]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3315765]["NeedLevel"] = 40
tBackpackLetter_Activity_NoGift[3315765]["NeedMetempsychosis"] = 0                              
tBackpackLetter_Activity_NoGift[3315765]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3315765]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3315765]["Pathfind"]["NpcId"] = 24309
tBackpackLetter_Activity_NoGift[3315765]["NeedPro"] ={}
tBackpackLetter_Activity_NoGift[3315765]["NeedPro"]["Pro1"] = G_PRO_Ninja0
tBackpackLetter_Activity_NoGift[3315765]["NeedPro"]["Pro2"] = G_PRO_Ninja5

------------------------------------------------------------------------------------
---200120[简体征服][活动脚本]实力验证-爬塔副本
---SQL BY:江宇君
---DATE：2020-01-20
------------------------------------------------------------------------------------
-- 3315568,'百炼塔邀请函'
tItemFace[3315568] = 828
tBackpackLetter_Activity[3315568] = {}
-- 活动时间
tBackpackLetter_Activity[3315568]["ActivityTime"] = tActivityTime["ClimbingTower"]["ActivityTime"]
tBackpackLetter_Activity[3315568]["EventType"] = 215
tBackpackLetter_Activity[3315568]["DataType"] = 75
tBackpackLetter_Activity[3315568]["RewardData"] = 1
tBackpackLetter_Activity[3315568]["RewardItem"] = 3315568
tBackpackLetter_Activity[3315568]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3315568]["Cultivation"] = 30
tBackpackLetter_Activity[3315568]["NeedLevel"] = 50
tBackpackLetter_Activity[3315568]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3315568]["GlobalId"] = 54386
tBackpackLetter_Activity[3315568]["GlobalData"] = 1
------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆-BOSS巢穴副本部分
--Creator:      冯子鑫
--Created:     2020-03-19
------------------------------------------------------------------------------------
	 tItemFace[3330451] = 2876
	tBackpackLetter_Activity[3330451] = {}
	tBackpackLetter_Activity[3330451]["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"] 
	tBackpackLetter_Activity[3330451]["EventType"] = 217
	tBackpackLetter_Activity[3330451]["DataType"] = 90
	tBackpackLetter_Activity[3330451]["RewardData"] = 1
	tBackpackLetter_Activity[3330451]["RewardItem"] = 3330451
	tBackpackLetter_Activity[3330451]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3330451]["NeedLevel"] = 80
	tBackpackLetter_Activity[3330451]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3330451]["Cultivation"] = 30
	tBackpackLetter_Activity[3330451]["Pathfind"] = {}
	tBackpackLetter_Activity[3330451]["Pathfind"]["NpcId"] = 26069

	
	tBackpackLetter_Activity_NoGift[3330451] = {}
	tBackpackLetter_Activity_NoGift[3330451]["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"] 
	tBackpackLetter_Activity_NoGift[3330451]["EventType"] = 217
	tBackpackLetter_Activity_NoGift[3330451]["DataType"] = 90
	tBackpackLetter_Activity_NoGift[3330451]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3330451]["RewardItem"] = 3330451
	tBackpackLetter_Activity_NoGift[3330451]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3330451]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3330451]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3330451]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3330451]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3330451]["Pathfind"]["NpcId"] = 26069

------------------------------------------------------------------------------------
--Name：            200117[简体征服][活动脚本]百鬼夜行活动制作
--Creator:      黄啸
--Created:     2020-01-18
------------------------------------------------------------------------------------
	tItemFace[3315329] = 2788
	tBackpackLetter_Activity[3315329] = {}
	tBackpackLetter_Activity[3315329]["ActivityTime"] = tActivityTime["HundredMonsterGo"]["NowActivity"]
	tBackpackLetter_Activity[3315329]["EventType"] = 218
	tBackpackLetter_Activity[3315329]["DataType"] = 82
	tBackpackLetter_Activity[3315329]["RewardData"] = 1
	tBackpackLetter_Activity[3315329]["RewardItem"] = 3315329
	tBackpackLetter_Activity[3315329]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3315329]["NeedLevel"] = 0
	tBackpackLetter_Activity[3315329]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3315329]["Cultivation"] = 30
	tBackpackLetter_Activity[3315329]["Pathfind"] = {}
	tBackpackLetter_Activity[3315329]["Pathfind"]["NpcId"] = 25828

	tBackpackLetter_Activity_NoGift[3315329] = {}
	tBackpackLetter_Activity_NoGift[3315329]["ActivityTime"] = tActivityTime["HundredMonsterGo"]["NowActivity"]
	tBackpackLetter_Activity_NoGift[3315329]["EventType"] = 218
	tBackpackLetter_Activity_NoGift[3315329]["DataType"] = 82
	tBackpackLetter_Activity_NoGift[3315329]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3315329]["RewardItem"] = 3315329
	tBackpackLetter_Activity_NoGift[3315329]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3315329]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3315329]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3315329]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3315329]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3315329]["Pathfind"]["NpcId"] = 25828
------------------------------------------------------------------------------------
--Name：            200413[简体征服][活动脚本]全球儿童节活动-互动功能和玩具交易部分
--Creator:      冯子鑫
--Created:     2020-04-13
------------------------------------------------------------------------------------
	 tItemFace[3330684] = 2916
	tBackpackLetter_Activity[3330684] = {}
	tBackpackLetter_Activity[3330684]["ActivityTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"] 
	tBackpackLetter_Activity[3330684]["EventType"] = 219
	tBackpackLetter_Activity[3330684]["DataType"] = 19
	tBackpackLetter_Activity[3330684]["RewardData"] = 1
	tBackpackLetter_Activity[3330684]["RewardItem"] = 3330684
	tBackpackLetter_Activity[3330684]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3330684]["NeedLevel"] = 80
	tBackpackLetter_Activity[3330684]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3330684]["Cultivation"] = 30
	tBackpackLetter_Activity[3330684]["Pathfind"] = {}
	tBackpackLetter_Activity[3330684]["Pathfind"]["NpcId"] = 26486

	
	tBackpackLetter_Activity_NoGift[3330684] = {}
	tBackpackLetter_Activity_NoGift[3330684]["ActivityTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"] 
	tBackpackLetter_Activity_NoGift[3330684]["EventType"] = 219
	tBackpackLetter_Activity_NoGift[3330684]["DataType"] = 19
	tBackpackLetter_Activity_NoGift[3330684]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3330684]["RewardItem"] = 3330684
	tBackpackLetter_Activity_NoGift[3330684]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3330684]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3330684]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3330684]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3330684]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3330684]["Pathfind"]["NpcId"] = 26486
------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]5月熔炼炉回收（5.26-6.08）
--Creator:		翁清海
--Created:		2020/04/16
------------------------------------------------------------------------------------
tItemFace[3330679] = 1561
tBackpackLetter_Activity[3330679] = {}
tBackpackLetter_Activity[3330679]["ActivityTime"] = tActivityTime["SmeltingRecovery"]["ActivityTime"]
tBackpackLetter_Activity[3330679]["EventType"] = 219
tBackpackLetter_Activity[3330679]["DataType"] = 90
tBackpackLetter_Activity[3330679]["RewardData"] = 1
tBackpackLetter_Activity[3330679]["RewardItem"] = 3330679
tBackpackLetter_Activity[3330679]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3330679]["NeedLevel"] = 15
tBackpackLetter_Activity[3330679]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity[3330679]["Cultivation"] = 30
tBackpackLetter_Activity[3330679]["Pathfind"] = {}
tBackpackLetter_Activity[3330679]["Pathfind"]["NpcId"] = 26482

tBackpackLetter_Activity_NoGift[3330679] = {}
tBackpackLetter_Activity_NoGift[3330679]["ActivityTime"] = tActivityTime["SmeltingRecovery"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3330679]["EventType"] = 219
tBackpackLetter_Activity_NoGift[3330679]["DataType"] = 90
tBackpackLetter_Activity_NoGift[3330679]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3330679]["RewardItem"] = 3330679
tBackpackLetter_Activity_NoGift[3330679]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3330679]["NeedLevel"] = 15
tBackpackLetter_Activity_NoGift[3330679]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity_NoGift[3330679]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3330679]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3330679]["Pathfind"]["NpcId"] = 26482

------------------------------------------------------------------------------------
--Name:		200506[英文征服][活动脚本]6月夏日祭-花火大会
--Purpose:	6月夏日祭-花火大会（6.2-6.20）
--Creator: 	杨志翔
--Created:	2020/05/06
------------------------------------------------------------------------------------
tItemFace[3331138] = 2788
tBackpackLetter_Activity[3331138] = {}
tBackpackLetter_Activity[3331138]["NewActivityTime"] = tActivityTime["HanabiTaiKai"]["ActivityTime"] 
tBackpackLetter_Activity[3331138]["EventType"] = 221
tBackpackLetter_Activity[3331138]["DataType"] = 95
tBackpackLetter_Activity[3331138]["RewardData"] = 1
tBackpackLetter_Activity[3331138]["RewardItem"] = 3331138
tBackpackLetter_Activity[3331138]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3331138]["NeedLevel"] = 0
tBackpackLetter_Activity[3331138]["NeedMetempsychosis"] = 1
tBackpackLetter_Activity[3331138]["Cultivation"] = 30
tBackpackLetter_Activity[3331138]["Pathfind"] = {}
tBackpackLetter_Activity[3331138]["Pathfind"]["NpcId"] = 26563
tBackpackLetter_Activity[3331138]["GlobalId"] = 54474
tBackpackLetter_Activity[3331138]["GlobalData"] = 1
tBackpackLetter_Activity[3331138]["GlobalPos"] = 0

tBackpackLetter_Activity_NoGift[3331138] = {}
tBackpackLetter_Activity_NoGift[3331138]["NewActivityTime"] = tActivityTime["HanabiTaiKai"]["ActivityTime"] 
tBackpackLetter_Activity_NoGift[3331138]["EventType"] = 221
tBackpackLetter_Activity_NoGift[3331138]["DataType"] = 95
tBackpackLetter_Activity_NoGift[3331138]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3331138]["RewardItem"] = 3331138
tBackpackLetter_Activity_NoGift[3331138]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3331138]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3331138]["NeedMetempsychosis"] = 1
tBackpackLetter_Activity_NoGift[3331138]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3331138]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3331138]["Pathfind"]["NpcId"] = 26563
tBackpackLetter_Activity_NoGift[3331138]["GlobalId"] = 54474
tBackpackLetter_Activity_NoGift[3331138]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3331138]["GlobalPos"] = 0

------------------------------------------------------------------------------------
--Name：        200506[英文征服][活动脚本]6月神兵驾到全民集结（6.2-6.30）
--Creator:      冯子鑫
--Created:     2020-05-08
------------------------------------------------------------------------------------
tBackpackLetter_Activity[3330926] = {}
tBackpackLetter_Activity[3330926]["ActivityTime"] = tActivityTime["LegendArrivedWeb"]["ActivityTime"]
tBackpackLetter_Activity[3330926]["EventType"] = 221
tBackpackLetter_Activity[3330926]["DataType"] = 53
tBackpackLetter_Activity[3330926]["RewardData"] = 1
tBackpackLetter_Activity[3330926]["RewardItem"] = 3330926
tBackpackLetter_Activity[3330926]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3330926]["NeedLevel"] = 0
tBackpackLetter_Activity[3330926]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3330926]["Cultivation"] = 30

tBackpackLetter_Activity_NoGift[3330926] = {}
tBackpackLetter_Activity_NoGift[3330926]["ActivityTime"] = tActivityTime["LegendArrivedWeb"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3330926]["EventType"] = 221
tBackpackLetter_Activity_NoGift[3330926]["DataType"] = 53
tBackpackLetter_Activity_NoGift[3330926]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3330926]["RewardItem"] = 3330926
tBackpackLetter_Activity_NoGift[3330926]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3330926]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3330926]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3330926]["Cultivation"] = 30

	
	
------------------------------------------------------------------------------------
--Name：            180710[简体征服][活动脚本]烦请制作7月暑假促活活动线上部分
--Creator:      陈莺
--Created:     2018/07/10
------------------------------------------------------------------------------------
	tItemFace[3309649] = 1592
	tBackpackLetter_Activity_NoGift[3309649] = {}
	tBackpackLetter_Activity_NoGift[3309649]["ActivityTime"] = tActivityTime["SummerSalesPromotion"]["Now_Time"]
	tBackpackLetter_Activity_NoGift[3309649]["EventType"] = 179
	tBackpackLetter_Activity_NoGift[3309649]["DataType"] = 44
	tBackpackLetter_Activity_NoGift[3309649]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3309649]["RewardItem"] = 3309649
	tBackpackLetter_Activity_NoGift[3309649]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3309649]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3309649]["NeedMetempsychosis"] = 1
	tBackpackLetter_Activity_NoGift[3309649]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3309649]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3309649]["Pathfind"]["NpcId"] = 21523
	-- 2020.02.26复用新增服务器区分
	tBackpackLetter_Activity_NoGift[3309649]["GlobalId"] = 54273
	tBackpackLetter_Activity_NoGift[3309649]["GlobalData"] = 0
	tBackpackLetter_Activity_NoGift[3309649]["GlobalPos"] = 0
	tBackpackLetter_Activity_NoGift[3309649]["OldSever"] = 1


------------------------------------------------------------------------------------
--Name：           200506[简体征服][活动脚本]忍者主题PK活动
--Creator:      杨志翔
--Created:     2020-05-06
------------------------------------------------------------------------------------

tItemFace[3330929] = 1565
tBackpackLetter_Activity[3330929] = {}
tBackpackLetter_Activity[3330929]["ActivityTime"] = tActivityTime["NjThPk"]["ActivityTime"] 
tBackpackLetter_Activity[3330929]["EventType"] = 221
tBackpackLetter_Activity[3330929]["DataType"] = 93
tBackpackLetter_Activity[3330929]["RewardData"] = 1
tBackpackLetter_Activity[3330929]["RewardItem"] = 3330929
tBackpackLetter_Activity[3330929]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3330929]["NeedLevel"] = 80
tBackpackLetter_Activity[3330929]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3330929]["Cultivation"] = 30
tBackpackLetter_Activity[3330929]["Pathfind"] = {}
tBackpackLetter_Activity[3330929]["Pathfind"]["NpcId"] = 26553


tBackpackLetter_Activity_NoGift[3330929] = {}
tBackpackLetter_Activity_NoGift[3330929]["ActivityTime"] = tActivityTime["NjThPk"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3330929]["EventType"] = 221
tBackpackLetter_Activity_NoGift[3330929]["DataType"] = 93
tBackpackLetter_Activity_NoGift[3330929]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3330929]["RewardItem"] = 3330929
tBackpackLetter_Activity_NoGift[3330929]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3330929]["NeedLevel"] = 80
tBackpackLetter_Activity_NoGift[3330929]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3330929]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3330929]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3330929]["Pathfind"]["NpcId"] = 26553
------------------------------------------------------------------------------------
--Name：            200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
--Creator:      江宇君
--Created:     2020/05/14
------------------------------------------------------------------------------------

tItemFace[3316257] = 2075
tBackpackLetter_Activity[3316257] = {}
tBackpackLetter_Activity[3316257]["ActivityTime"] = tActivityTime["IrrigateSacredTree"]["ActivityTime"]
tBackpackLetter_Activity[3316257]["EventType"] = 223
tBackpackLetter_Activity[3316257]["DataType"] = 36
tBackpackLetter_Activity[3316257]["RewardData"] = 1
tBackpackLetter_Activity[3316257]["RewardItem"] = 3316257
tBackpackLetter_Activity[3316257]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3316257]["NeedLevel"] = 0
tBackpackLetter_Activity[3316257]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity[3316257]["Cultivation"] = 30
tBackpackLetter_Activity[3316257]["Pathfind"] = {}
tBackpackLetter_Activity[3316257]["Pathfind"]["NpcId"] = 26588
tBackpackLetter_Activity[3316257]["GlobalId"] = 54482
tBackpackLetter_Activity[3316257]["GlobalData"] = 1
tBackpackLetter_Activity[3316257]["GlobalPos"] = 0
tBackpackLetter_Activity[3316257]["OldSever"] = 1

tBackpackLetter_Activity_NoGift[3316257] = {}
tBackpackLetter_Activity_NoGift[3316257]["ActivityTime"] = tActivityTime["IrrigateSacredTree"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3316257]["EventType"] = 223
tBackpackLetter_Activity_NoGift[3316257]["DataType"] = 36
tBackpackLetter_Activity_NoGift[3316257]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3316257]["RewardItem"] = 3316257
tBackpackLetter_Activity_NoGift[3316257]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3316257]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3316257]["NeedMetempsychosis"] = 2
tBackpackLetter_Activity_NoGift[3316257]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3316257]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3316257]["Pathfind"]["NpcId"] = 26588
tBackpackLetter_Activity_NoGift[3316257]["GlobalId"] = 54482
tBackpackLetter_Activity_NoGift[3316257]["GlobalData"] = 1
tBackpackLetter_Activity_NoGift[3316257]["GlobalPos"] = 0
tBackpackLetter_Activity_NoGift[3316257]["OldSever"] = 1

------------------------------------------------------------------------------------
--Name：        200516[简体征服][活动脚本]全球暑期活动-主Npc(7.7-7.20)
--Creator:      陈莺
--Created:     2020-05-16
------------------------------------------------------------------------------------
	tItemFace[3316210]= 1560
	tBackpackLetter_Activity[3316210] = {}
	tBackpackLetter_Activity[3316210]["ActivityTime"] = tActivityTime["SummerActive"]["Preheat"]
	tBackpackLetter_Activity[3316210]["EventType"] = 222
	tBackpackLetter_Activity[3316210]["DataType"] = 17
	tBackpackLetter_Activity[3316210]["RewardData"] = 1
	tBackpackLetter_Activity[3316210]["RewardItem"] = 3316210
	tBackpackLetter_Activity[3316210]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3316210]["NeedLevel"] = 0
	tBackpackLetter_Activity[3316210]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3316210]["Cultivation"] = 30
	tBackpackLetter_Activity[3316210]["Pathfind"] = {}
	tBackpackLetter_Activity[3316210]["Pathfind"]["NpcId"] = 26578

	tBackpackLetter_Activity_NoGift[3316210] = {}
	tBackpackLetter_Activity_NoGift[3316210]["ActivityTime"] = tActivityTime["SummerActive"]["Preheat"]
	tBackpackLetter_Activity_NoGift[3316210]["EventType"] = 222
	tBackpackLetter_Activity_NoGift[3316210]["DataType"] = 17
	tBackpackLetter_Activity_NoGift[3316210]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3316210]["RewardItem"] = 3316210
	tBackpackLetter_Activity_NoGift[3316210]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3316210]["NeedLevel"] = 0
	tBackpackLetter_Activity_NoGift[3316210]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3316210]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3316210]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3316210]["Pathfind"]["NpcId"] = 26578
 
 ------------------------------------------------------------------------------------
--Name：            200521[简体征服][活动脚本]全球暑期活动-地效环境部分
--Creator:      林嘉鑫
--Created:     2020-05-21
------------------------------------------------------------------------------------
	tItemFace[3331165]= 2968
	tBackpackLetter_Activity[3331165] = {}
	tBackpackLetter_Activity[3331165]["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
	tBackpackLetter_Activity[3331165]["EventType"] = 222
	tBackpackLetter_Activity[3331165]["DataType"] = 78
	tBackpackLetter_Activity[3331165]["RewardData"] = 1
	tBackpackLetter_Activity[3331165]["RewardItem"] = 3331165
	tBackpackLetter_Activity[3331165]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3331165]["NeedLevel"] = 80
	tBackpackLetter_Activity[3331165]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3331165]["Cultivation"] = 30
	tBackpackLetter_Activity[3331165]["Pathfind"] = {}
	tBackpackLetter_Activity[3331165]["Pathfind"]["NpcId"] = 26571

	tBackpackLetter_Activity_NoGift[3331165] = {}
	tBackpackLetter_Activity_NoGift[3331165]["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3331165]["EventType"] = 222
	tBackpackLetter_Activity_NoGift[3331165]["DataType"] = 78
	tBackpackLetter_Activity_NoGift[3331165]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3331165]["RewardItem"] = 3331165
	tBackpackLetter_Activity_NoGift[3331165]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3331165]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3331165]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3331165]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3331165]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3331165]["Pathfind"]["NpcId"] = 26571


------------------------------------------------------------------------------------
--Name:   200615[简体征服][活动脚本]辅助号加强版本内容制作
--Creator:  黄啸
--Created:  2020-06-17
------------------------------------------------------------------------------------
tItemFace[3316504] = 2989
tBackpackLetter_Activity[3316504] = {}
tBackpackLetter_Activity[3316504]["ActivityTime"] = tActivityTime["ArtifactTool"]["ActivityTime"]
tBackpackLetter_Activity[3316504]["EventType"] = 223
tBackpackLetter_Activity[3316504]["DataType"] = 86
tBackpackLetter_Activity[3316504]["RewardData"] = 1
tBackpackLetter_Activity[3316504]["RewardItem"] = 3316504
tBackpackLetter_Activity[3316504]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3316504]["NeedLevel"] = 0
tBackpackLetter_Activity[3316504]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3316504]["Cultivation"] = 30
tBackpackLetter_Activity[3316504]["Pathfind"] = {}
tBackpackLetter_Activity[3316504]["Pathfind"]["NpcId"] = 26709

tBackpackLetter_Activity_NoGift[3316504] = {}
tBackpackLetter_Activity_NoGift[3316504]["ActivityTime"] = tActivityTime["ArtifactTool"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3316504]["EventType"] = 223
tBackpackLetter_Activity_NoGift[3316504]["DataType"] = 86
tBackpackLetter_Activity_NoGift[3316504]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3316504]["RewardItem"] = 3316504
tBackpackLetter_Activity_NoGift[3316504]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3316504]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3316504]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3316504]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3316504]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3316504]["Pathfind"]["NpcId"] = 26709



------------------------------------------------------------------------------------
--Name：      200615[英文征服][活动脚本]海外果园狂欢背包信
--Creator:      郑洵
--Created:     2020-06-15
------------------------------------------------------------------------------------
tItemFace[3316503] = 1331
tBackpackLetter_Activity[3316503] = {}
tBackpackLetter_Activity[3316503]["ActivityTime"] = tActivityTime["OrchardCarnivalLetter"]["ActivityTime"]
tBackpackLetter_Activity[3316503]["EventType"] = 223
tBackpackLetter_Activity[3316503]["DataType"] = 66
tBackpackLetter_Activity[3316503]["RewardData"] = 1
tBackpackLetter_Activity[3316503]["RewardItem"] = 3316503
tBackpackLetter_Activity[3316503]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3316503]["NeedLevel"] = 0
tBackpackLetter_Activity[3316503]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3316503]["Cultivation"] = 30
tBackpackLetter_Activity[3316503]["Pathfind"] = {}
tBackpackLetter_Activity[3316503]["Pathfind"]["NpcId"] = 26694

tBackpackLetter_Activity_NoGift[3316503] = {}
tBackpackLetter_Activity_NoGift[3316503]["ActivityTime"] = tActivityTime["OrchardCarnivalLetter"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3316503]["EventType"] = 223
tBackpackLetter_Activity_NoGift[3316503]["DataType"] = 66
tBackpackLetter_Activity_NoGift[3316503]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3316503]["RewardItem"] = 3316503
tBackpackLetter_Activity_NoGift[3316503]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3316503]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3316503]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3316503]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3316503]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3316503]["Pathfind"]["NpcId"] = 26694
------------------------------------------------------------------------------------
--Name:		200720[简体征服][活动脚本]全球七夕活动预热+七夕抽奖(8.13-8.17)
--Creator: 	兰瑞妹
--Created:	2020/07/20
------------------------------------------------------------------------------------
	-- 3316681,'灵鹊之羽'
	tItemFace[3316681]= 3025
	tBackpackLetter_Activity[3316681] = {}
	tBackpackLetter_Activity[3316681]["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["ActivityTime"]
	tBackpackLetter_Activity[3316681]["EventType"] = 226
	tBackpackLetter_Activity[3316681]["DataType"] = 30
	tBackpackLetter_Activity[3316681]["RewardData"] = 1
	tBackpackLetter_Activity[3316681]["RewardItem"] = 3316681
	tBackpackLetter_Activity[3316681]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity[3316681]["NeedLevel"] = 80
	tBackpackLetter_Activity[3316681]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity[3316681]["Cultivation"] = 30
	tBackpackLetter_Activity[3316681]["Pathfind"] = {}
	tBackpackLetter_Activity[3316681]["Pathfind"]["NpcId"] = 27025
	tBackpackLetter_Activity_NoGift[3316681] = {}
	tBackpackLetter_Activity_NoGift[3316681]["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["ActivityTime"]
	tBackpackLetter_Activity_NoGift[3316681]["EventType"] = 226
	tBackpackLetter_Activity_NoGift[3316681]["DataType"] = 30
	tBackpackLetter_Activity_NoGift[3316681]["RewardData"] = 1
	tBackpackLetter_Activity_NoGift[3316681]["RewardItem"] = 3316681
	tBackpackLetter_Activity_NoGift[3316681]["RewardAttr"] = "0 1"
	tBackpackLetter_Activity_NoGift[3316681]["NeedLevel"] = 80
	tBackpackLetter_Activity_NoGift[3316681]["NeedMetempsychosis"] = 0
	tBackpackLetter_Activity_NoGift[3316681]["Cultivation"] = 30
	tBackpackLetter_Activity_NoGift[3316681]["Pathfind"] = {}
	tBackpackLetter_Activity_NoGift[3316681]["Pathfind"]["NpcId"] = 27025

------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
--Creator:      冯子鑫
--Created:     2020-06-09
------------------------------------------------------------------------------------
tItemFace[3331819] = 3002
tBackpackLetter_Activity[3331819] = {}
tBackpackLetter_Activity[3331819]["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tBackpackLetter_Activity[3331819]["EventType"] = 224
tBackpackLetter_Activity[3331819]["DataType"] = 68
tBackpackLetter_Activity[3331819]["RewardData"] = 1
tBackpackLetter_Activity[3331819]["RewardItem"] = 3331819
tBackpackLetter_Activity[3331819]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3331819]["NeedLevel"] = 80
tBackpackLetter_Activity[3331819]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3331819]["Cultivation"] = 30
tBackpackLetter_Activity[3331819]["Pathfind"] = {}
tBackpackLetter_Activity[3331819]["Pathfind"]["NpcId"] = 26809

tBackpackLetter_Activity_NoGift[3331819] = {}
tBackpackLetter_Activity_NoGift[3331819]["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tBackpackLetter_Activity_NoGift[3331819]["EventType"] = 224
tBackpackLetter_Activity_NoGift[3331819]["DataType"] = 68
tBackpackLetter_Activity_NoGift[3331819]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3331819]["RewardItem"] = 3331819
tBackpackLetter_Activity_NoGift[3331819]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3331819]["NeedLevel"] = 80
tBackpackLetter_Activity_NoGift[3331819]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3331819]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3331819]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3331819]["Pathfind"]["NpcId"] = 26809
------------------------------------------------------------------------------------
--Name：            200728[英文征服][活动脚本]水果机优化活动（8.11-8.31）
--Creator:      江宇君
--Created:     2020-07-28
------------------------------------------------------------------------------------

-- 3316796,'水果机活动邀请函'
tItemFace[3316796] = 629
tBackpackLetter_Activity[3316796] = {}
tBackpackLetter_Activity[3316796]["ActivityTime"] = tActivityTime["FruitMachine"]["ActivityTime"][27059]
tBackpackLetter_Activity[3316796]["EventType"] = 227
tBackpackLetter_Activity[3316796]["DataType"] = 37
tBackpackLetter_Activity[3316796]["RewardData"] = 1
tBackpackLetter_Activity[3316796]["RewardItem"] = 3316796
tBackpackLetter_Activity[3316796]["RewardAttr"] = "0 1"
tBackpackLetter_Activity[3316796]["NeedLevel"] = 0
tBackpackLetter_Activity[3316796]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity[3316796]["Cultivation"] = 30
tBackpackLetter_Activity[3316796]["Pathfind"] = {}
tBackpackLetter_Activity[3316796]["Pathfind"]["NpcId"] = 27059

tBackpackLetter_Activity_NoGift[3316796] = {}
tBackpackLetter_Activity_NoGift[3316796]["ActivityTime"] = tActivityTime["FruitMachine"]["ActivityTime"][27059]
tBackpackLetter_Activity_NoGift[3316796]["EventType"] = 227
tBackpackLetter_Activity_NoGift[3316796]["DataType"] = 37
tBackpackLetter_Activity_NoGift[3316796]["RewardData"] = 1
tBackpackLetter_Activity_NoGift[3316796]["RewardItem"] = 3316796
tBackpackLetter_Activity_NoGift[3316796]["RewardAttr"] = "0 1"
tBackpackLetter_Activity_NoGift[3316796]["NeedLevel"] = 0
tBackpackLetter_Activity_NoGift[3316796]["NeedMetempsychosis"] = 0
tBackpackLetter_Activity_NoGift[3316796]["Cultivation"] = 30
tBackpackLetter_Activity_NoGift[3316796]["Pathfind"] = {}
tBackpackLetter_Activity_NoGift[3316796]["Pathfind"]["NpcId"] = 27059

	
--------------------------------逻辑分割线--------------------------------------
--------------------------------------------------------------------------------
local sBackpackLetter_Log = "0,0,0,0,12000106,2,%d,1"	

local sBackpackLetter_Stc = {}
sBackpackLetter_Stc["Eventype"] = 199
sBackpackLetter_Stc["Datatype"] = 68
-- 上限触发
function BackpackLetter_OnLine()
	-- 判断是否是无赠品服务器
	
	local sTime = tActivityTime["WarriorPackage"]["OpenPingTimeLimit"]
	local nEventVideo = sBackpackLetter_Stc["Eventype"]
	local nDataVideo = sBackpackLetter_Stc["Datatype"]
	local nUserId = Get_UserId()
	
	if Task_StcInterval(nEventVideo,nDataVideo,1,4,nUserId) then
		Task_SetStatistic(nEventVideo,nDataVideo,0,1,nUserId)
		Task_SetStcTimestamp(nEventVideo,nDataVideo,0,nUserId)
	end
	
	if Sys_ChkFullTime(sTime) and Task_ChkStcValue(nEventVideo,nDataVideo,"==",0,nUserId) then
		Task_SetStatistic(nEventVideo,nDataVideo,1,1,nUserId)
		Task_SetStcTimestamp(nEventVideo,nDataVideo,0,nUserId)
		User_OpenVideo(960,1)
	end
	if SpecialServer_ChkNoGiftServer() then
		for i,v in pairs(tBackpackLetter_Activity_NoGift) do
			BackpackLetter_Condition(v)
		end
	
		return
	end
	
	for i,v in pairs(tBackpackLetter_Activity) do
		BackpackLetter_Condition(v)
	end
end

-- 条件判断
function BackpackLetter_Condition(v)
	----------------------------------------- 条件判断
	-- 活动时间判断
	--if v["ActivityTime"] ~= nil and (not Sys_ChkFullTime(v["ActivityTime"])) then
	--	return false
	--end
	local nItemId = v["RewardItem"]
	local nNewActivityTime = v["NewActivityTime"]
	local nActivityTime = v["ActivityTime"]
	local nGlobalId = v["GlobalId"]
	local nGlobalData = v["GlobalData"] or 1
	local nPos = v["GlobalPos"] or 0
	local bGive = false
	
	if v["RewardItem"] == nil then
		return
	end
		
	-- 活动时间判断
	-- 判断是否在活动时间内
	if nActivityTime ~= nil then
		-- 配多个活动时间
		if type(nActivityTime) == "table" then
			for _,nTime in pairs(nActivityTime) do
				if Sys_ChkFullTime(nTime) then
					bGive = true
					break
				end
			end
			
		-- 配一个活动时间
		elseif Sys_ChkFullTime(nActivityTime) then
			bGive = true
		end
	end	
	-- 动态存储表判断
	if v["GlobalId"] ~= nil then
		local nGlobalId = v["GlobalId"]
		local nOldGlobalData = v["GlobalData"] or 0
		local nPos = v["GlobalPos"] or 0
		local nData = Get_SysDynaGlobalData(nGlobalId,nPos)

		
		
		if v["OldSever"] ~= nil then
			if nData ~= nOldGlobalData then
				bGive = false
			elseif nActivityTime == nil then
				bGive = true
			end
		else
			if nData < nGlobalData then
				if v["AllServer"] == nil and nItemId ~= v["AllServer"] then
					bGive = false
				end
			else
				if nNewActivityTime ~=nil then
					if Sys_ChkFullTime(nNewActivityTime) then
						bGive = true
					else
						bGive = false
					end
				else
					bGive = true
				end
			end
		end
	
	end
	if nActivityTime == nil and v["GlobalId"] == nil then
		bGive = true
	end
	-- 条件是否允许
	if not bGive then
		return
	end
	
	
	-- 判断是否有这个物品
	if Item_ChkItem(nItemId) then
		return
	end

	local nEventType = v["EventType"]
	local nDataType = v["DataType"]
	
	-- 掩码判断
	if nEventType ~= nil and nDataType ~= nil and v["RewardData"] ~= nil then
		if Task_ChkStcValue(nEventType,nDataType,">=",v["RewardData"]) then
			return
		end
	end
	
	-- 等级判断
	if v["NeedLevel"] ~= nil and v["NeedMetempsychosis"] ~= nil then
		if not User_JudgeLevelAndMetempsychosis(v["NeedLevel"],v["NeedMetempsychosis"]) then
			return
		end
	end
	--职业判断
	if v["NeedPro"] ~= nil then
		if Get_UserProfession() < v["NeedPro"]["Pro1"] or Get_UserProfession() > v["NeedPro"]["Pro2"] then
			return
		end
	end
	-- 背包空间判断
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tBackpackLetter_Text[nItemId]["NoSpace"])
		return
	end
	
	----------------------------------------- 获得物品
	
	if nEventType ~= nil and nDataType ~= nil and v["RewardData"] ~= nil then
		Task_SetStatistic(nEventType,nDataType,v["RewardData"],1)
	end
	
	local sAttr = v["RewardAttr"]
	
	if v["NewAttr"] ~= nil then
		sAttr = BackpackLetter_GetItemAttr(v["RewardAttr"],v["ActivityTime"])
	end
	
	Item_AddNewItem(nItemId,sAttr)
	
	local sLog = v["Log"] or string.format(sBackpackLetter_Log,nItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	User_TalkChannel2005(tBackpackLetter_Text[nItemId]["RewardItem"])
end

-- 获得时效的时间
function BackpackLetter_GetItemAttr(sAttr,sTime)
	if sTime == nil then
		return sAttr
	end
	
	local tAttr = Sys_Split(sAttr," ")
	local sNewAttr = ""
	
	if tAttr[4] ~= nil and tAttr[4] > 0 then
		return sAttr
	end
	
	-- 时间解析
	local sBeginYear,sBeginMonth,sBeginDay,sBeginHour,sBeginMinute,sEndYear,sEndMonth,sEndDay,sEndHour,sEndMinute = CommonFunc_AnalysisActivityTime(sTime)
	local nNowTime = os.time()
	local nEndTime = os.time{year = tonumber(sEndYear),month = tonumber(sEndMonth),day = tonumber(sEndDay),hour = tonumber(sEndHour),min = tonumber(sEndMinute),sec = 59}
	local nDisTime = nEndTime - nNowTime
	local nAgingTime = math.ceil(nDisTime/60)
	local nLen = #tAttr
	tAttr[4] = nAgingTime
	tAttr[5] = 1
	
	if nLen < 5 then
		nLen = 5
	end
	
	for i = 1,nLen do
		if tAttr[i] == nil then
			tAttr[i] = 0
		end
		
		if i == nLen then
			sNewAttr = sNewAttr .. tAttr[i]
		else
			sNewAttr = sNewAttr .. tAttr[i] .. " "
		end
	end
	
	return sNewAttr
end

-- 背包信使用
function BackpackLetter_UseItem(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tUseItem = {}
		-- 判断是否是无赠品服务器
		if SpecialServer_ChkNoGiftServer() then
			tUseItem = tBackpackLetter_Activity_NoGift
		else
			tUseItem = tBackpackLetter_Activity
		end
		
		if tUseItem[nItemId] == nil then
			return
		end
		
		-- 判断活动时间
		if tUseItem[nItemId]["ActivityTime"] ~= nil and (not Sys_ChkFullTime(tUseItem[nItemId]["ActivityTime"])) then
			if tBackpackLetter_Text[nItemId]["TimeOut"] ~= nil then
				User_TalkChannel2005(tBackpackLetter_Text[nItemId]["TimeOut"])
			end
			return
		end
		
		-- 给修行值
		local nCultivation = tUseItem[nItemId]["Cultivation"] or 30
		User_AddCultivation(nCultivation)
		Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000106,2,6,%d",nItemId,nCultivation))
		local str = tBackpackLetter_Text[nItemId]["Cultivation"] or string.format(tBackpackLetter_Text["Cultivation"],nCultivation)
		User_TalkChannel2005(str)

		-- 自动寻路
		if tUseItem[nItemId]["Pathfind"] ~= nil then
			-- 男女角色区分寻路
			if tUseItem[nItemId]["Pathfind"]["Sex"] ~= nil then
				local nSex = Get_UserSex()
				local nPosX = tUseItem[nItemId]["Pathfind"]["Sex"][nSex]["PosX"]
				local nPosY = tUseItem[nItemId]["Pathfind"]["Sex"][nSex]["PosY"]
				local nMapId = tUseItem[nItemId]["Pathfind"]["Sex"][nSex]["MapId"]
				local nNpcId = tUseItem[nItemId]["Pathfind"]["Sex"][nSex]["NpcId"]
				
				if nPosX ~= nil and nPosY ~= nil and nMapId ~= nil then
					Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
				else
					NpcPosition_PathFind(nNpcId)
				end
				
			-- 正常寻路
			else
				local nPosX = tUseItem[nItemId]["Pathfind"]["PosX"]
				local nPosY = tUseItem[nItemId]["Pathfind"]["PosY"]
				local nMapId = tUseItem[nItemId]["Pathfind"]["MapId"]
				local nNpcId = tUseItem[nItemId]["Pathfind"]["NpcId"]
				
				if nPosX ~= nil and nPosY ~= nil and nMapId ~= nil then
					Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
				else
					NpcPosition_PathFind(nNpcId)
				end
			end
		end
	end
end

-- 物品对白
for i,v in pairs(tBackpackLetter_Text) do
	if v["Text"] ~= nil then
		tItem[i] = tItem[i] or {}
		tItem[i]["Function"] = function(nItemId,sItemName)
			LinkItemGossipFunc_New(nItemId,"1-1")
			-- 判断是否要弹出内嵌网页
			if tBackpackLetter_Activity[nItemId] ~= nil and tBackpackLetter_Activity[nItemId]["Web"] ~= nil then
				User_SendWebDialog(tBackpackLetter_Activity[nItemId]["Web"])
			end
		end
		tItem[i]["Text1-1"] = v["Text"]["1-1"]
		for a,b in pairs (v["Text"]["1-1"]) do
			tItem[i]["Text" .. b] = v["Text"]["" .. b]
		end

		tItem[i]["tOption1-1"] = {1}
		tItem[i]["Option1"] = v["Text"]["Option1"]
		tItem[i]["OptionFunc1"] = string.format("BackpackLetter_UseItem</N>%d",i)
	end
end

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,BackpackLetter_OnLine)