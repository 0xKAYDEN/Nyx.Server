------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]CB2版本优化任务内容制作-片区任务(10.22)
--Purpose:	片区-大漠片区
--Creator: 	兰瑞妹
--Created:	2015/10/15
------------------------------------------------------------------------------------

-- 公用命名前缀
-- QuestRecruit_
-- 文字前置
-- QuestArea4th_
------------------------大漠片区
-- 前往云门关 3505
-- 消弭威胁 3506
-- 解救小村 3507
-- 威慑群妖 3508
-- 翻修小村 3509
-- 送水 3510
-- 鬼之利刃 3511
-- 再涉日常 3512 （去掉）
-- 锋芒再现 3573
-- 奋发图强（循）3574 3575 3576 3577（去掉）
-- 前往芦花荡 3513

-- 新增掩码3573--3577

-- 聚沙成塔 3855 大漠任意怪物100只（100分钟经验）
-- 聚沙成塔 3856 敦煌的蝙蝠100只（300分钟经验）
-- 聚沙成塔 3857 大漠任意怪物100只（100分钟经验）
-- 聚沙成塔 3860 敦煌的牛怪50只（300分钟经验）

-- 聚沙成塔 3861 敦煌的蝙蝠100只（150分钟经验）
-- 聚沙成塔 3862 冰封的地穴冰魔50只（150分钟经验）
-- 聚沙成塔 3863 敦煌的牛怪100只（150分钟经验）
-- 聚沙成塔 3864 冰封的雪石巨怪40只（150分钟经验）
-- 聚沙成塔 3865 敦煌的红魔100只（150分钟经验）
-- 聚沙成塔 3866 冰封的幽寒冤魂30只（150分钟经验）
------------------------------------------NPC任务配置
-- 云门关总兵
tQuestRecruit_TaskStar[2004] = {3505,3506}
tQuestRecruit_TaskNext[2004] = {3506,3507}
-- 云门关副总兵
-- tQuestRecruit_TaskStar[8425] = {3505,3506}
-- tQuestRecruit_TaskNext[8425] = {3506,3507}
-- tQuestRecruit_TaskStar[8425] = {3574,3575,3576,3577,3855,3856,3857,3860,3861,3862,3863,3864,3865,3866}
tQuestRecruit_TaskStar[8425] = {3855,3856,3857,3860,3861,3862,3863,3864,3865,3866}

-- 守将诸葛威德
tQuestRecruit_TaskStar[8437] = {3507,3508}
tQuestRecruit_TaskNext[8437] = {3508,3509}

-- 上官婉莹
tQuestRecruit_TaskStar[8440] = {3509}
tQuestRecruit_TaskNext[8440] = {3510}

-- 韩丞
tQuestRecruit_TaskStar[8441] = {3510}
tQuestRecruit_TaskNext[8441] = {3511}

-- 护泉将军·穆项羽
tQuestRecruit_TaskStar[8445] = {3511}
tQuestRecruit_TaskNext[8445] = {3573}

------------------------------------------自配函数-----------------

------------------------------------------任务配置
-- 前往云门关
-- 接任务
tTaskTemplate[3505] = {}
tTaskTemplate[3505]["IsReceived"] = {400,700}
tTaskTemplate[3505]["TaskId"] = 3505
tTaskTemplate[3505]["FrontTask"] = 3566
tTaskTemplate[3505]["AcceptTask"] = {100}
-- 接任务给旋风状态(时间)
tTaskTemplate[3505]["StatusTime"] = 15

-- 对白编号表
tTaskTemplate[3505]["SubTask"] = "1-1" 		-- 已完成任务对白
tTaskTemplate[3505]["MeetAccept"] = "12-1"	-- 接新任务对白
tTaskTemplate[3505]["HasAccept"] = "12-1" 	-- 已接任务未完成
tTaskTemplate[3505]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3505]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3505]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3505]["NextTaskId"] = 3506
tTaskTemplate[3505]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3505]["Next"] = {}
tTaskTemplate[3505]["Next"]["NpcId"] = 2004
tTaskTemplate[3505]["Next"]["MapId"] = 1000
tTaskTemplate[3505]["Next"]["PosX"] = 476
tTaskTemplate[3505]["Next"]["PosY"] = 631

-- 奖励
tTaskTemplate[3505]["HandOverTask"] = {200,1200,1300}	--交任务的奖励表
tTaskTemplate[3505]["RewSpace"] = 3
-- tTaskTemplate[3505]["RewMoney"] = 10000
tTaskTemplate[3505]["RewItemId1"] = 1002020		-- 冷香草*200
tTaskTemplate[3505]["RewItemAttr1"] = "0 10 3"
-- tTaskTemplate[3505]["RewItemId2"] = 1088000
-- tTaskTemplate[3505]["RewItemAttr2"] = "0 3"
-- 道士
tTaskTemplate[3505]["RewardProItem"] = {}
tTaskTemplate[3505]["RewardProItem"][1] = {}
tTaskTemplate[3505]["RewardProItem"][1]["MinPro"] = 100	
tTaskTemplate[3505]["RewardProItem"][1]["MaxPro"] = 145	
tTaskTemplate[3505]["RewardProItem"][1]["ProItem"] = {}	
tTaskTemplate[3505]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3505]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*200
tTaskTemplate[3505]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"

-- 消弭威胁
-- 接任务
tTaskTemplate[3506] = {}
tTaskTemplate[3506]["IsReceived"] = {400,700}
tTaskTemplate[3506]["TaskId"] = 3506
tTaskTemplate[3506]["FrontTask"] = 3505
tTaskTemplate[3506]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3506]["SubTask"] = "1-4" 		-- 已完成任务对白
tTaskTemplate[3506]["MeetAccept"] = "1-2"	-- 接新任务对白
tTaskTemplate[3506]["HandOverMonster"] = "1-3" 	-- 已接任务未完成
tTaskTemplate[3506]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3506]["HandOverSpace"] = "3-4" 	--背包达上限
 
-- 交任务
tTaskTemplate[3506]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3506]["ReqMonsterId1"] = {14,73}
tTaskTemplate[3506]["ReqMonsterPos1"] = 1
tTaskTemplate[3506]["ReqMonsterCount1"] = 5
tTaskTemplate[3506]["NextTaskId"] = 3507
tTaskTemplate[3506]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3506]["MonsterTask"] = {300,700} -- 计数
tTaskTemplate[3506]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[3506]["KillMonsterFunc"] = QuestRecruit_MonsterDone

-- 后续任务NPC数据
tTaskTemplate[3506]["Next"] = {}
tTaskTemplate[3506]["Next"]["NpcId"] = 0
tTaskTemplate[3506]["Next"]["MapId"] = 1000
tTaskTemplate[3506]["Next"]["PosX"] = 565
tTaskTemplate[3506]["Next"]["PosY"] = 556
-- 中间环节
tTaskTemplate[3506]["Mid"] = {}
tTaskTemplate[3506]["Mid"]["NpcId"] = 2004
tTaskTemplate[3506]["Mid"]["MapId"] = 1000
tTaskTemplate[3506]["Mid"]["PosX"] = 476
tTaskTemplate[3506]["Mid"]["PosY"] = 631

-- 奖励
tTaskTemplate[3506]["HandOverTask"] = {200,500,1200,1300}	--交任务的奖励表
-- tTaskTemplate[3506]["RewSpace"] = 3
tTaskTemplate[3506]["RewExpTime"] = 150
-- tTaskTemplate[3506]["RewMoney"] = 60000
-- tTaskTemplate[3506]["RewItemId1"] = 720027
-- tTaskTemplate[3506]["RewItemAttr1"] = "0 2"

-- 勇士\战士\弓手\忍者\武僧\海盗
-- tTaskTemplate[3506]["RewardProItem"] = {}												--给职业装备奖励
-- tTaskTemplate[3506]["RewardProItem"][1] = {}											--给职业装备奖励
-- tTaskTemplate[3506]["RewardProItem"][1]["MinPro"] = 10									--给该职业装备奖励的最小职业ID
-- tTaskTemplate[3506]["RewardProItem"][1]["MaxPro"] = 85									--给该职业装备奖励的最大职业ID
-- tTaskTemplate[3506]["RewardProItem"][1]["ProItem"] = {}									--职业装备奖励表
-- tTaskTemplate[3506]["RewardProItem"][1]["ProItem"][1] = {}								--职业装备奖励表
-- tTaskTemplate[3506]["RewardProItem"][1]["ProItem"][1]["Id"] = 120128					--职业装备的物品ID
-- tTaskTemplate[3506]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1"
-- 道士
-- tTaskTemplate[3506]["RewardProItem"][2] = {}											--给职业装备奖励
-- tTaskTemplate[3506]["RewardProItem"][2]["MinPro"] = 100									--给该职业装备奖励的最小职业ID
-- tTaskTemplate[3506]["RewardProItem"][2]["MaxPro"] = 145									--给该职业装备奖励的最大职业ID
-- tTaskTemplate[3506]["RewardProItem"][2]["ProItem"] = {}									--职业装备奖励表
-- tTaskTemplate[3506]["RewardProItem"][2]["ProItem"][1] = {}								--职业装备奖励表
-- tTaskTemplate[3506]["RewardProItem"][2]["ProItem"][1]["Id"] = 121128					--职业装备的物品ID
-- tTaskTemplate[3506]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1"
-----------------------------------------------------
-- 解救小村
-- 接任务
tTaskTemplate[3507] = {}
tTaskTemplate[3507]["IsReceived"] = {400,700}
tTaskTemplate[3507]["TaskId"] = 3507
tTaskTemplate[3507]["FrontTask"] = 3506
tTaskTemplate[3507]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3507]["SubTask"] = "1-1" 		-- 已完成任务对白
tTaskTemplate[3507]["MeetAccept"] = "1-5"	-- 接新任务对白
-- tTaskTemplate[3507]["HasAccept"] = "1-1" 	-- 已接任务未完成
tTaskTemplate[3507]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3507]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3507]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3507]["NextTaskId"] = 3508
tTaskTemplate[3507]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3507]["Next"] = {}
tTaskTemplate[3507]["Next"]["NpcId"] = 8437
tTaskTemplate[3507]["Next"]["MapId"] = 1000
tTaskTemplate[3507]["Next"]["PosX"] = 472
tTaskTemplate[3507]["Next"]["PosY"] = 345

-- 奖励
tTaskTemplate[3507]["HandOverTask"] = {200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3507]["RewSpace"] = 3
tTaskTemplate[3507]["RewExpTime"] = 90
-- tTaskTemplate[3507]["RewMoney"] = 10000
tTaskTemplate[3507]["RewItemId1"] = 1002020		-- 冷香草*250
tTaskTemplate[3507]["RewItemAttr1"] = "0 10 3"
-- tTaskTemplate[3507]["RewItemId2"] = 730002
-- tTaskTemplate[3507]["RewItemAttr2"] = "0 2"
-- 道士
tTaskTemplate[3507]["RewardProItem"] = {}
tTaskTemplate[3507]["RewardProItem"][1] = {}
tTaskTemplate[3507]["RewardProItem"][1]["MinPro"] = 100	
tTaskTemplate[3507]["RewardProItem"][1]["MaxPro"] = 145	
tTaskTemplate[3507]["RewardProItem"][1]["ProItem"] = {}	
tTaskTemplate[3507]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3507]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*250
tTaskTemplate[3507]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"

-- 威慑群妖
-- 接任务
tTaskTemplate[3508] = {}
tTaskTemplate[3508]["IsReceived"] = {400,700}
tTaskTemplate[3508]["TaskId"] = 3508
tTaskTemplate[3508]["FrontTask"] = 3507
tTaskTemplate[3508]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3508]["SubTask"] = "1-4" 		-- 已完成任务对白
tTaskTemplate[3508]["MeetAccept"] = "1-2"	-- 接新任务对白
tTaskTemplate[3508]["HandOverMonster"] = "1-3" 	-- 已接任务未完成
tTaskTemplate[3508]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3508]["HandOverSpace"] = "3-4" 	--背包达上限

-- 交任务
tTaskTemplate[3508]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3508]["ReqMonsterId1"] = {15,74}
tTaskTemplate[3508]["ReqMonsterPos1"] = 1
tTaskTemplate[3508]["ReqMonsterCount1"] = 5
tTaskTemplate[3508]["NextTaskId"] = 3509
tTaskTemplate[3508]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3508]["MonsterTask"] = {300,700} -- 计数
tTaskTemplate[3508]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[3508]["KillMonsterFunc"] = QuestRecruit_MonsterDone

-- 后续任务NPC数据
tTaskTemplate[3508]["Next"] = {}
tTaskTemplate[3508]["Next"]["NpcId"] = 0
tTaskTemplate[3508]["Next"]["MapId"] = 1000
tTaskTemplate[3508]["Next"]["PosX"] = 485
tTaskTemplate[3508]["Next"]["PosY"] = 396
-- 中间环节
tTaskTemplate[3508]["Mid"] = {}
tTaskTemplate[3508]["Mid"]["NpcId"] = 8437
tTaskTemplate[3508]["Mid"]["MapId"] = 1000
tTaskTemplate[3508]["Mid"]["PosX"] = 472
tTaskTemplate[3508]["Mid"]["PosY"] = 345

-- 奖励
tTaskTemplate[3508]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3508]["RewSpace"] = 4
tTaskTemplate[3508]["RewExpTime"] = 180
-- tTaskTemplate[3508]["RewMoney"] = 60000
-- tTaskTemplate[3508]["RewItemId1"] = 1088000
-- tTaskTemplate[3508]["RewItemAttr1"] = "0 3"
-- tTaskTemplate[3508]["RewItemId2"] = 1060020
-- tTaskTemplate[3508]["RewItemAttr2"] = "0 2"

--翻修小村
-- 接任务
tTaskTemplate[3509] = {}
tTaskTemplate[3509]["IsReceived"] = {400,700}
tTaskTemplate[3509]["TaskId"] = 3509
tTaskTemplate[3509]["FrontTask"] = 3508
tTaskTemplate[3509]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3509]["SubTask"] = "1-2" 		-- 交任务
tTaskTemplate[3509]["MeetAccept"] = "1-5"	-- 接新任务对白
tTaskTemplate[3509]["HandOverItem"] = "1-6" 	-- 已接任务未完成
tTaskTemplate[3509]["HasAccept"] = "1-6"
tTaskTemplate[3509]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3509]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3509]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3509]["ReqItemId1"] = 729092
tTaskTemplate[3509]["ReqItemCount1"] = 5
tTaskTemplate[3509]["NextTaskId"] = 3510
tTaskTemplate[3509]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3509]["MonsterTask"] = {300,500,800} 
tTaskTemplate[3509]["MonsterFunc"] = QuestRecruit_MustKillItem
tTaskTemplate[3509]["ReqItemFunc"] = QuestRecruit_MonsterDone
tTaskTemplate[3509]["ReqMonsterId1"] = {16,75} 		-- 交任务需要怪物ID
tTaskTemplate[3509]["MustSpace"] = 1 				--怪物掉落需要检测背包空间
tTaskTemplate[3509]["MustDropMode1"] = 2			-- 掉落背包
tTaskTemplate[3509]["MustFallItemId1"] = {}
tTaskTemplate[3509]["MustFallItemId1"][1] = {}
tTaskTemplate[3509]["MustFallItemId1"][1]["ItemId"] = 729092
tTaskTemplate[3509]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3509]["MustFallItemId1"][1]["ItemLimit"] = 5

-- 后续任务NPC数据
tTaskTemplate[3509]["Next"] = {}
tTaskTemplate[3509]["Next"]["NpcId"] = 0
tTaskTemplate[3509]["Next"]["MapId"] = 1000
tTaskTemplate[3509]["Next"]["PosX"] = 450
tTaskTemplate[3509]["Next"]["PosY"] = 150
-- 中间环节
tTaskTemplate[3509]["Mid"] = {}
tTaskTemplate[3509]["Mid"]["NpcId"] = 8440
tTaskTemplate[3509]["Mid"]["MapId"] = 1000
tTaskTemplate[3509]["Mid"]["PosX"] = 475
tTaskTemplate[3509]["Mid"]["PosY"] = 331

-- 奖励
tTaskTemplate[3509]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
tTaskTemplate[3509]["RewSpace"] = 1
tTaskTemplate[3509]["RewExpTime"] = 100
-- tTaskTemplate[3509]["RewMoney"] = 60000
-- 【赤练石+2】*2--换成赠品流星卷，720027
tTaskTemplate[3509]["RewItemId1"] = 720027
tTaskTemplate[3509]["RewItemAttr1"] = "0 1 3"

--送水
-- 接任务
tTaskTemplate[3510] = {}
tTaskTemplate[3510]["IsReceived"] = {400,700}
tTaskTemplate[3510]["TaskId"] = 3510
tTaskTemplate[3510]["FrontTask"] = 3509
tTaskTemplate[3510]["RevSpace"] = 1
tTaskTemplate[3510]["AcceptTask"] = {100,300}
tTaskTemplate[3510]["GetItemId1"] = 711348 -- 水

-- 对白编号表
tTaskTemplate[3510]["MeetSpace"] = "3-3" 	-- 接任务背包不足
tTaskTemplate[3510]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3510]["MeetAccept"] = "1-3"	-- 接新任务对白
tTaskTemplate[3510]["HandOverItem"] = "1-1" 	-- 已接任务未完成
tTaskTemplate[3510]["HasAccept"] = "1-4" 	-- 任务中
tTaskTemplate[3510]["HaveTaskItem"] = "1-6" -- 有任务物品
tTaskTemplate[3510]["NotSpace"] = "1-5" 	-- 没任务物品背包不足
tTaskTemplate[3510]["ReqTaskItem"] = "1-7" 	-- 补领任务物品成功
tTaskTemplate[3510]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3510]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3510]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3510]["ReqItemId1"] = 711348
tTaskTemplate[3510]["ReqItemCount1"] = 1
tTaskTemplate[3510]["NextTaskId"] = 3511
tTaskTemplate[3510]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3510]["Next"] = {}
tTaskTemplate[3510]["Next"]["NpcId"] = 8441
tTaskTemplate[3510]["Next"]["MapId"] = 1000
tTaskTemplate[3510]["Next"]["PosX"] = 585
tTaskTemplate[3510]["Next"]["PosY"] = 319

-- 奖励
tTaskTemplate[3510]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3510]["RewSpace"] = 1
tTaskTemplate[3510]["RewExpTime"] = 100
-- tTaskTemplate[3510]["RewMoney"] = 10000
-- tTaskTemplate[3510]["RewItemId1"] = 730003
-- tTaskTemplate[3510]["RewItemAttr1"] = "0 1"

-- 鬼之利刃
-- 接任务
tTaskTemplate[3511] = {}
tTaskTemplate[3511]["IsReceived"] = {400,700}
tTaskTemplate[3511]["TaskId"] = 3511
tTaskTemplate[3511]["FrontTask"] = 3510
tTaskTemplate[3511]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3511]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3511]["MeetAccept"] = "1-3"	-- 接新任务对白
tTaskTemplate[3511]["HandOverItem"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[3511]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3511]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3511]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3511]["ReqItemId1"] = 711406
tTaskTemplate[3511]["ReqItemCount1"] = 5
tTaskTemplate[3511]["NextTaskId"] = 3573
tTaskTemplate[3511]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3511]["MonsterTask"] = {300,500,800} 
tTaskTemplate[3511]["MonsterFunc"] = QuestRecruit_MustKillItem
tTaskTemplate[3511]["ReqItemFunc"] = QuestRecruit_MonsterDone
tTaskTemplate[3511]["ReqMonsterId1"] = {17,76} 		-- 交任务需要怪物ID
tTaskTemplate[3511]["MustSpace"] = 1 				--怪物掉落需要检测背包空间
tTaskTemplate[3511]["MustDropMode1"] = 2			-- 掉落背包
tTaskTemplate[3511]["MustFallItemId1"] = {}
tTaskTemplate[3511]["MustFallItemId1"][1] = {}
tTaskTemplate[3511]["MustFallItemId1"][1]["ItemId"] = 711406
tTaskTemplate[3511]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3511]["MustFallItemId1"][1]["ItemLimit"] = 5

-- 后续任务NPC数据
tTaskTemplate[3511]["Next"] = {}
tTaskTemplate[3511]["Next"]["NpcId"] = 0
tTaskTemplate[3511]["Next"]["MapId"] = 1000
tTaskTemplate[3511]["Next"]["PosX"] = 160
tTaskTemplate[3511]["Next"]["PosY"] = 160
-- 中间环节
tTaskTemplate[3511]["Mid"] = {}
tTaskTemplate[3511]["Mid"]["NpcId"] = 8445
tTaskTemplate[3511]["Mid"]["MapId"] = 1000
tTaskTemplate[3511]["Mid"]["PosX"] = 311
tTaskTemplate[3511]["Mid"]["PosY"] = 481

-- 奖励
tTaskTemplate[3511]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3511]["RewSpace"] = 2
tTaskTemplate[3511]["RewExpTime"] = 900
-- tTaskTemplate[3511]["RewMoney"] = 60000
-- tTaskTemplate[3511]["RewItemId1"] = 1088000
-- tTaskTemplate[3511]["RewItemAttr1"] = "0 3"
-- 【龙珠】*3--删除龙珠，额外弹出105，进入个人80级副本

-- 再涉日常
-- 接任务
tTaskTemplate[3512] = {}
tTaskTemplate[3512]["IsReceived"] = {400,700}
tTaskTemplate[3512]["TaskId"] = 3512
tTaskTemplate[3512]["FrontTask"] = 3511
tTaskTemplate[3512]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3512]["SubTask"] = "9-1" 		-- 已完成任务对白
tTaskTemplate[3512]["MeetAccept"] = "1-3"	-- 接新任务对白
-- tTaskTemplate[3512]["HandOverDetail"] = "9-2" 	-- 交任务data位不满足
tTaskTemplate[3512]["HandOverMoney"] = "1-2" 	--金币达上限
tTaskTemplate[3512]["HandOverSpace"] = "9-3" 	--背包达上限

-- 交任务
tTaskTemplate[3512]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3512]["NextTaskId"] = 3573
-- tTaskTemplate[3512]["Data1"] = 1
-------------
-- tTaskTemplate[3512]["OtherTaskId1"] = 3574 		-- 支线任务1
-- tTaskTemplate[3512]["OtherLev1"] = 85 			-- 任务领取等级上限
-- tTaskTemplate[3512]["OtherDataPos1"] = 1 		-- Data存储位
------------
tTaskTemplate[3512]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3512]["Next"] = {}
tTaskTemplate[3512]["Next"]["NpcId"] = 9998
tTaskTemplate[3512]["Next"]["MapId"] = 1002
tTaskTemplate[3512]["Next"]["PosX"] = 175
tTaskTemplate[3512]["Next"]["PosY"] = 215

-- 奖励
tTaskTemplate[3512]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3512]["RewSpace"] = 2
tTaskTemplate[3512]["RewExpTime"] = 120
-- tTaskTemplate[3512]["RewMoney"] = 50000
tTaskTemplate[3512]["RewItemId1"] = 720027
tTaskTemplate[3512]["RewItemAttr1"] = "0 2"

-- 锋芒再现（主）
-- 接任务
tTaskTemplate[3573] = {}
tTaskTemplate[3573]["IsReceived"] = {400,700}
tTaskTemplate[3573]["TaskId"] = 3573
tTaskTemplate[3573]["FrontTask"] = 3511
tTaskTemplate[3573]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3573]["SubTask"] = "9-5" 		-- 已完成任务对白
tTaskTemplate[3573]["MeetAccept"] = "9-4"	-- 接新任务对白
tTaskTemplate[3573]["HandOverDetail"] = "9-6" 	-- 交任务data位不满足
tTaskTemplate[3573]["HandOverSpace"] = "9-7" 	--背包达上限

-- 交任务
tTaskTemplate[3573]["IsHandOver"] = {900,1100}		--任务交任务条件配置表
tTaskTemplate[3573]["NextTaskId"] = 3513
tTaskTemplate[3573]["Data1"] = 85
tTaskTemplate[3573]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3573]["Next"] = {}
tTaskTemplate[3573]["Next"]["NpcId"] = 2001
tTaskTemplate[3573]["Next"]["MapId"] = 1002
tTaskTemplate[3573]["Next"]["PosX"] = 307
tTaskTemplate[3573]["Next"]["PosY"] = 338

-- 奖励
tTaskTemplate[3573]["HandOverTask"] = {200,1200}
tTaskTemplate[3573]["RewSpace"] = 1
-- tTaskTemplate[3573]["RewItemId1"] = 730003
-- tTaskTemplate[3573]["RewItemAttr1"] = "0 1"
-- 【赤练石+3】*1--换成头盔
-- 额外给头盔
-- 勇士
tTaskTemplate[3573]["RewardProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][1]["MinPro"] = 10
tTaskTemplate[3573]["RewardProItem"][1]["MaxPro"] = 15
tTaskTemplate[3573]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][1]["ProItem"][1]["Id"] = 118079
tTaskTemplate[3573]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1 3"
-- 战士
tTaskTemplate[3573]["RewardProItem"][2] = {}
tTaskTemplate[3573]["RewardProItem"][2]["MinPro"] = 20
tTaskTemplate[3573]["RewardProItem"][2]["MaxPro"] = 25
tTaskTemplate[3573]["RewardProItem"][2]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][2]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][2]["ProItem"][1]["Id"] = 111079
tTaskTemplate[3573]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1 3"
-- 弓手
tTaskTemplate[3573]["RewardProItem"][3] = {}
tTaskTemplate[3573]["RewardProItem"][3]["MinPro"] = 40
tTaskTemplate[3573]["RewardProItem"][3]["MaxPro"] = 45
tTaskTemplate[3573]["RewardProItem"][3]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][3]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][3]["ProItem"][1]["Id"] = 113059
tTaskTemplate[3573]["RewardProItem"][3]["ProItem"][1]["Attr"] = "0 1 3"
-- 忍者
tTaskTemplate[3573]["RewardProItem"][4] = {}
tTaskTemplate[3573]["RewardProItem"][4]["MinPro"] = 50
tTaskTemplate[3573]["RewardProItem"][4]["MaxPro"] = 55
tTaskTemplate[3573]["RewardProItem"][4]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][4]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][4]["ProItem"][1]["Id"] = 112079
tTaskTemplate[3573]["RewardProItem"][4]["ProItem"][1]["Attr"] = "0 1 3"
-- 武僧
tTaskTemplate[3573]["RewardProItem"][5] = {}
tTaskTemplate[3573]["RewardProItem"][5]["MinPro"] = 60
tTaskTemplate[3573]["RewardProItem"][5]["MaxPro"] = 65
tTaskTemplate[3573]["RewardProItem"][5]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][5]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][5]["ProItem"][1]["Id"] = 143079
tTaskTemplate[3573]["RewardProItem"][5]["ProItem"][1]["Attr"] = "0 1 3"
-- 海盗
tTaskTemplate[3573]["RewardProItem"][6] = {}
tTaskTemplate[3573]["RewardProItem"][6]["MinPro"] = 70
tTaskTemplate[3573]["RewardProItem"][6]["MaxPro"] = 75
tTaskTemplate[3573]["RewardProItem"][6]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][6]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][6]["ProItem"][1]["Id"] = 145079
tTaskTemplate[3573]["RewardProItem"][6]["ProItem"][1]["Attr"] = "0 1 3"
-- 拳师
tTaskTemplate[3573]["RewardProItem"][7] = {}
tTaskTemplate[3573]["RewardProItem"][7]["MinPro"] = 80
tTaskTemplate[3573]["RewardProItem"][7]["MaxPro"] = 85
tTaskTemplate[3573]["RewardProItem"][7]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][7]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][7]["ProItem"][1]["Id"] = 148079
tTaskTemplate[3573]["RewardProItem"][7]["ProItem"][1]["Attr"] = "0 1 3"
-- 道士
tTaskTemplate[3573]["RewardProItem"][8] = {}
tTaskTemplate[3573]["RewardProItem"][8]["MinPro"] = 100
tTaskTemplate[3573]["RewardProItem"][8]["MaxPro"] = 145
tTaskTemplate[3573]["RewardProItem"][8]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][8]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][8]["ProItem"][1]["Id"] = 114079
tTaskTemplate[3573]["RewardProItem"][8]["ProItem"][1]["Attr"] = "0 1 3"
-- 铁扇
tTaskTemplate[3573]["RewardProItem"][9] = {}
tTaskTemplate[3573]["RewardProItem"][9]["MinPro"] = 160
tTaskTemplate[3573]["RewardProItem"][9]["MaxPro"] = 165
tTaskTemplate[3573]["RewardProItem"][9]["ProItem"] = {}
tTaskTemplate[3573]["RewardProItem"][9]["ProItem"][1] = {}
tTaskTemplate[3573]["RewardProItem"][9]["ProItem"][1]["Id"] = 170079
tTaskTemplate[3573]["RewardProItem"][9]["ProItem"][1]["Attr"] = "0 1 3"

-- 奋发图强（循）（-）沙怪67级
-- 接任务
tTaskTemplate[3574] = {}
tTaskTemplate[3574]["IsReceived"] = {400,700}
tTaskTemplate[3574]["TaskId"] = 3574
tTaskTemplate[3574]["FrontTask"] = 3512

-- 对白编号表
tTaskTemplate[3574]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3574]["HandOverMonster"] = "1-3" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3574]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3574]["ReqMonsterId1"] = {14} 		-- 交任务需要怪物ID
tTaskTemplate[3574]["ReqMonsterCount1"] = 50 	-- 怪物数量
tTaskTemplate[3574]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3574]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3574]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3574]["NextTaskId"] = 3575
tTaskTemplate[3574]["NextLev"] = 85			--下个任务等级上限
-------------
tTaskTemplate[3574]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3574]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3574]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3574]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3574]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3574]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3574]["Next"] = {}
tTaskTemplate[3574]["Next"]["NpcId"] = 0
tTaskTemplate[3574]["Next"]["MapId"] = 1000
tTaskTemplate[3574]["Next"]["PosX"] = 291
tTaskTemplate[3574]["Next"]["PosY"] = 254
-- 中间环节
tTaskTemplate[3574]["Mid"] = {}
tTaskTemplate[3574]["Mid"]["NpcId"] = 8425
tTaskTemplate[3574]["Mid"]["MapId"] = 1000
tTaskTemplate[3574]["Mid"]["PosX"] = 207
tTaskTemplate[3574]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3574]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3574]["RewExpTime"] = 90

-- 奋发图强（循）（二）锤山怪72级100只
-- 接任务
tTaskTemplate[3575] = {}
tTaskTemplate[3575]["IsReceived"] = {400,700}
tTaskTemplate[3575]["TaskId"] = 3575
tTaskTemplate[3575]["FrontTask"] = 3512

-- 对白编号表
tTaskTemplate[3575]["SubTask"] = "1-4" 		-- 已完成任务对白
tTaskTemplate[3575]["HandOverMonster"] = "1-5" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3575]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3575]["ReqMonsterId1"] = {15} 		-- 交任务需要怪物ID
tTaskTemplate[3575]["ReqMonsterCount1"] = 50 	-- 怪物数量
tTaskTemplate[3575]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3575]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3575]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3575]["NextTaskId"] = 3576
tTaskTemplate[3575]["NextLev"] = 85			--下个任务等级上限
-------------
tTaskTemplate[3575]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3575]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3575]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3575]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3575]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3575]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3575]["Next"] = {}
tTaskTemplate[3575]["Next"]["NpcId"] = 0
tTaskTemplate[3575]["Next"]["MapId"] = 1000
tTaskTemplate[3575]["Next"]["PosX"] = 328
tTaskTemplate[3575]["Next"]["PosY"] = 222
-- 中间环节
tTaskTemplate[3575]["Mid"] = {}
tTaskTemplate[3575]["Mid"]["NpcId"] = 8425
tTaskTemplate[3575]["Mid"]["MapId"] = 1000
tTaskTemplate[3575]["Mid"]["PosX"] = 207
tTaskTemplate[3575]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3575]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3575]["RewExpTime"] = 90

-- 奋发图强（循）（三）巨石怪77级100只
-- 接任务
tTaskTemplate[3576] = {}
tTaskTemplate[3576]["IsReceived"] = {400,700}
tTaskTemplate[3576]["TaskId"] = 3576
tTaskTemplate[3576]["FrontTask"] = 3512

-- 对白编号表
tTaskTemplate[3576]["SubTask"] = "1-6" 		-- 已完成任务对白
tTaskTemplate[3576]["HandOverMonster"] = "1-7" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3576]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3576]["ReqMonsterId1"] = {16} 		-- 交任务需要怪物ID
tTaskTemplate[3576]["ReqMonsterCount1"] = 55 	-- 怪物数量
tTaskTemplate[3576]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3576]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3576]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3576]["NextTaskId"] = 3577
tTaskTemplate[3576]["NextLev"] = 85			--下个任务等级上限
-------------
tTaskTemplate[3576]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3576]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3576]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3576]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3576]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3576]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3576]["Next"] = {}
tTaskTemplate[3576]["Next"]["NpcId"] = 0
tTaskTemplate[3576]["Next"]["MapId"] = 1000
tTaskTemplate[3576]["Next"]["PosX"] = 169
tTaskTemplate[3576]["Next"]["PosY"] = 60
-- 中间环节
tTaskTemplate[3576]["Mid"] = {}
tTaskTemplate[3576]["Mid"]["NpcId"] = 8425
tTaskTemplate[3576]["Mid"]["MapId"] = 1000
tTaskTemplate[3576]["Mid"]["PosX"] = 207
tTaskTemplate[3576]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3576]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3576]["RewExpTime"] = 90

-- 奋发图强（循）（四）鬼刃82级100只
-- 接任务
tTaskTemplate[3577] = {}
tTaskTemplate[3577]["IsReceived"] = {400,700}
tTaskTemplate[3577]["TaskId"] = 3577
tTaskTemplate[3577]["FrontTask"] = 3512

-- 对白编号表
tTaskTemplate[3577]["SubTask"] = "1-8" 		-- 已完成任务对白
tTaskTemplate[3577]["HandOverMonster"] = "1-9" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3577]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3577]["ReqMonsterId1"] = {17} 		-- 交任务需要怪物ID
tTaskTemplate[3577]["ReqMonsterCount1"] = 55 	-- 怪物数量
tTaskTemplate[3577]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3577]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3577]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3577]["NextTaskId"] = 3574
tTaskTemplate[3577]["NextLev"] = 85			--下个任务等级上限
-------------
tTaskTemplate[3577]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3577]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3577]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3577]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3577]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3577]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3577]["Next"] = {}
tTaskTemplate[3577]["Next"]["NpcId"] = 0
tTaskTemplate[3577]["Next"]["MapId"] = 1000
tTaskTemplate[3577]["Next"]["PosX"] = 59
tTaskTemplate[3577]["Next"]["PosY"] = 110
-- 中间环节
tTaskTemplate[3577]["Mid"] = {}
tTaskTemplate[3577]["Mid"]["NpcId"] = 8425
tTaskTemplate[3577]["Mid"]["MapId"] = 1000
tTaskTemplate[3577]["Mid"]["PosX"] = 207
tTaskTemplate[3577]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3577]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3577]["RewExpTime"] = 90

---------------------------
-- 聚沙成塔	大漠任意怪物100只（100分钟经验）
-- 接任务
tTaskTemplate[3855] = {}
tTaskTemplate[3855]["IsReceived"] = {200,400}
tTaskTemplate[3855]["RevMinLevel"] = 100
tTaskTemplate[3855]["RevMaxLevel"] = 109
tTaskTemplate[3855]["TaskId"] = 3855

-- 对白编号表
tTaskTemplate[3855]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3855]["HandOverMonster"] = "2-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3855]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3855]["ReqMonsterId1"] = {14,15,16,17,74,75,76} 		-- 交任务需要怪物ID
tTaskTemplate[3855]["ReqMonsterCount1"] = 100 	-- 怪物数量
tTaskTemplate[3855]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3855]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3855]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3855]["NextTaskId"] = 3856
tTaskTemplate[3855]["NextLev"] = 110 			-- 下个任务等级上限
tTaskTemplate[3855]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3855]["Next"] = {}
tTaskTemplate[3855]["Next"]["NpcId"] = 0
tTaskTemplate[3855]["Next"]["MapId"] = 1000
tTaskTemplate[3855]["Next"]["PosX"] = 302
tTaskTemplate[3855]["Next"]["PosY"] = 253
-- 中间环节
tTaskTemplate[3855]["Mid"] = {}
tTaskTemplate[3855]["Mid"]["NpcId"] = 8425
tTaskTemplate[3855]["Mid"]["MapId"] = 1000
tTaskTemplate[3855]["Mid"]["PosX"] = 207
tTaskTemplate[3855]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3855]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3855]["RewExpTime"] = 100
tTaskTemplate[3855]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	敦煌的蝙蝠100只（300分钟经验）
-- 接任务
tTaskTemplate[3856] = {}
tTaskTemplate[3856]["IsReceived"] = {200,400}
tTaskTemplate[3856]["RevMinLevel"] = 100
tTaskTemplate[3856]["RevMaxLevel"] = 109
tTaskTemplate[3856]["TaskId"] = 3856

-- 对白编号表
tTaskTemplate[3856]["SubTask"] = "2-3" 		-- 交任务
tTaskTemplate[3856]["HandOverMonster"] = "2-4" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3856]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3856]["ReqMonsterId1"] = {20,56,81,86} 		-- 交任务需要怪物ID
tTaskTemplate[3856]["ReqMonsterCount1"] = 100 	-- 怪物数量
tTaskTemplate[3856]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3856]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3856]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3856]["NextTaskId"] = 3857
tTaskTemplate[3856]["NextLev"] = 110 			-- 下个任务等级上限
tTaskTemplate[3856]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3856]["Next"] = {}
tTaskTemplate[3856]["Next"]["NpcId"] = 0
tTaskTemplate[3856]["Next"]["MapId"] = 1001
tTaskTemplate[3856]["Next"]["PosX"] = 138
tTaskTemplate[3856]["Next"]["PosY"] = 228
-- 中间环节
tTaskTemplate[3856]["Mid"] = {}
tTaskTemplate[3856]["Mid"]["NpcId"] = 8425
tTaskTemplate[3856]["Mid"]["MapId"] = 1000
tTaskTemplate[3856]["Mid"]["PosX"] = 207
tTaskTemplate[3856]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3856]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3856]["RewExpTime"] = 300
tTaskTemplate[3856]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	大漠任意怪物100只（100分钟经验）
-- 接任务
tTaskTemplate[3857] = {}
tTaskTemplate[3857]["IsReceived"] = {200,400}
tTaskTemplate[3857]["RevMinLevel"] = 100
tTaskTemplate[3857]["RevMaxLevel"] = 109
tTaskTemplate[3857]["TaskId"] = 3857

-- 对白编号表
tTaskTemplate[3857]["SubTask"] = "2-5" 		-- 交任务
tTaskTemplate[3857]["HandOverMonster"] = "2-6" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3857]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3857]["ReqMonsterId1"] = {14,15,16,17,74,75,76} 		-- 交任务需要怪物ID
tTaskTemplate[3857]["ReqMonsterCount1"] = 100 	-- 怪物数量
tTaskTemplate[3857]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3857]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3857]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3857]["NextTaskId"] = 3860
tTaskTemplate[3857]["NextLev"] = 110 			-- 下个任务等级上限
tTaskTemplate[3857]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3857]["Next"] = {}
tTaskTemplate[3857]["Next"]["NpcId"] = 0
tTaskTemplate[3857]["Next"]["MapId"] = 1000
tTaskTemplate[3857]["Next"]["PosX"] = 302
tTaskTemplate[3857]["Next"]["PosY"] = 253
-- 中间环节
tTaskTemplate[3857]["Mid"] = {}
tTaskTemplate[3857]["Mid"]["NpcId"] = 8425
tTaskTemplate[3857]["Mid"]["MapId"] = 1000
tTaskTemplate[3857]["Mid"]["PosX"] = 207
tTaskTemplate[3857]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3857]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3857]["RewExpTime"] = 100
tTaskTemplate[3857]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	敦煌的牛怪50只（300分钟经验）
-- 接任务
tTaskTemplate[3860] = {}
tTaskTemplate[3860]["IsReceived"] = {200,400}
tTaskTemplate[3860]["RevMinLevel"] = 100
tTaskTemplate[3860]["RevMaxLevel"] = 109
tTaskTemplate[3860]["TaskId"] = 3860

-- 对白编号表
tTaskTemplate[3860]["SubTask"] = "2-7" 		-- 交任务
tTaskTemplate[3860]["HandOverMonster"] = "2-8" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3860]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3860]["ReqMonsterId1"] = {57,82} 		-- 交任务需要怪物ID
tTaskTemplate[3860]["ReqMonsterCount1"] = 50 	-- 怪物数量
tTaskTemplate[3860]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3860]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3860]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3860]["NextTaskId"] = 3855
tTaskTemplate[3860]["NextLev"] = 110 			-- 下个任务等级上限
tTaskTemplate[3860]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3860]["Next"] = {}
tTaskTemplate[3860]["Next"]["NpcId"] = 0
tTaskTemplate[3860]["Next"]["MapId"] = 1001
tTaskTemplate[3860]["Next"]["PosX"] = 189
tTaskTemplate[3860]["Next"]["PosY"] = 141
-- 中间环节
tTaskTemplate[3860]["Mid"] = {}
tTaskTemplate[3860]["Mid"]["NpcId"] = 8425
tTaskTemplate[3860]["Mid"]["MapId"] = 1000
tTaskTemplate[3860]["Mid"]["PosX"] = 207
tTaskTemplate[3860]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3860]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3860]["RewExpTime"] = 300
tTaskTemplate[3860]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	敦煌的蝙蝠100只（150分钟经验）
-- 接任务
tTaskTemplate[3861] = {}
tTaskTemplate[3861]["IsReceived"] = {200,400}
tTaskTemplate[3861]["RevMinLevel"] = 110
tTaskTemplate[3861]["RevMaxLevel"] = 119
tTaskTemplate[3861]["TaskId"] = 3861

-- 对白编号表
tTaskTemplate[3861]["SubTask"] = "3-1" 		-- 交任务
tTaskTemplate[3861]["HandOverMonster"] = "3-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3861]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3861]["ReqMonsterId1"] = {20,56,81,86} 		-- 交任务需要怪物ID
tTaskTemplate[3861]["ReqMonsterCount1"] = 100 	-- 怪物数量
tTaskTemplate[3861]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3861]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3861]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3861]["NextTaskId"] = 3862
tTaskTemplate[3861]["NextLev"] = 120 			-- 下个任务等级上限
tTaskTemplate[3861]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3861]["Next"] = {}
tTaskTemplate[3861]["Next"]["NpcId"] = 0
tTaskTemplate[3861]["Next"]["MapId"] = 1001
tTaskTemplate[3861]["Next"]["PosX"] = 138
tTaskTemplate[3861]["Next"]["PosY"] = 228
-- 中间环节
tTaskTemplate[3861]["Mid"] = {}
tTaskTemplate[3861]["Mid"]["NpcId"] = 8425
tTaskTemplate[3861]["Mid"]["MapId"] = 1000
tTaskTemplate[3861]["Mid"]["PosX"] = 207
tTaskTemplate[3861]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3861]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3861]["RewExpTime"] = 150
tTaskTemplate[3861]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	冰封的地穴冰魔50只（150分钟经验）
-- 接任务
tTaskTemplate[3862] = {}
tTaskTemplate[3862]["IsReceived"] = {200,400}
tTaskTemplate[3862]["RevMinLevel"] = 110
tTaskTemplate[3862]["RevMaxLevel"] = 119
tTaskTemplate[3862]["TaskId"] = 3862

-- 对白编号表
tTaskTemplate[3862]["SubTask"] = "3-3" 		-- 交任务
tTaskTemplate[3862]["HandOverMonster"] = "3-4" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3862]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3862]["ReqMonsterId1"] = {4236} 		-- 交任务需要怪物ID
tTaskTemplate[3862]["ReqMonsterCount1"] = 50 	-- 怪物数量
tTaskTemplate[3862]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3862]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3862]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3862]["NextTaskId"] = 3863
tTaskTemplate[3862]["NextLev"] = 120 			-- 下个任务等级上限
tTaskTemplate[3862]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3862]["Next"] = {}
tTaskTemplate[3862]["Next"]["NpcId"] = 6135
tTaskTemplate[3862]["Next"]["MapId"] = 1000
tTaskTemplate[3862]["Next"]["PosX"] = 180
tTaskTemplate[3862]["Next"]["PosY"] = 249
-- 中间环节
tTaskTemplate[3862]["Mid"] = {}
tTaskTemplate[3862]["Mid"]["NpcId"] = 8425
tTaskTemplate[3862]["Mid"]["MapId"] = 1000
tTaskTemplate[3862]["Mid"]["PosX"] = 207
tTaskTemplate[3862]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3862]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3862]["RewExpTime"] = 150
tTaskTemplate[3862]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	敦煌的牛怪100只（150分钟经验）
-- 接任务
tTaskTemplate[3863] = {}
tTaskTemplate[3863]["IsReceived"] = {200,400}
tTaskTemplate[3863]["RevMinLevel"] = 110
tTaskTemplate[3863]["RevMaxLevel"] = 119
tTaskTemplate[3863]["TaskId"] = 3863

-- 对白编号表
tTaskTemplate[3863]["SubTask"] = "3-5" 		-- 交任务
tTaskTemplate[3863]["HandOverMonster"] = "3-6" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3863]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3863]["ReqMonsterId1"] = {57,82} 		-- 交任务需要怪物ID
tTaskTemplate[3863]["ReqMonsterCount1"] = 100 	-- 怪物数量
tTaskTemplate[3863]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3863]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3863]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3863]["NextTaskId"] = 3864
tTaskTemplate[3863]["NextLev"] = 120 			-- 下个任务等级上限
tTaskTemplate[3863]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3863]["Next"] = {}
tTaskTemplate[3863]["Next"]["NpcId"] = 0
tTaskTemplate[3863]["Next"]["MapId"] = 1001
tTaskTemplate[3863]["Next"]["PosX"] = 189
tTaskTemplate[3863]["Next"]["PosY"] = 141
-- 中间环节
tTaskTemplate[3863]["Mid"] = {}
tTaskTemplate[3863]["Mid"]["NpcId"] = 8425
tTaskTemplate[3863]["Mid"]["MapId"] = 1000
tTaskTemplate[3863]["Mid"]["PosX"] = 207
tTaskTemplate[3863]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3863]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3863]["RewExpTime"] = 150
tTaskTemplate[3863]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	冰封的雪石巨怪40只（150分钟经验）
-- 接任务
tTaskTemplate[3864] = {}
tTaskTemplate[3864]["IsReceived"] = {200,400}
tTaskTemplate[3864]["RevMinLevel"] = 110
tTaskTemplate[3864]["RevMaxLevel"] = 119
tTaskTemplate[3864]["TaskId"] = 3864

-- 对白编号表
tTaskTemplate[3864]["SubTask"] = "3-7" 		-- 交任务
tTaskTemplate[3864]["HandOverMonster"] = "3-8" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3864]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3864]["ReqMonsterId1"] = {4237} 		-- 交任务需要怪物ID
tTaskTemplate[3864]["ReqMonsterCount1"] = 40 	-- 怪物数量
tTaskTemplate[3864]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3864]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3864]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3864]["NextTaskId"] = 3865
tTaskTemplate[3864]["NextLev"] = 120 			-- 下个任务等级上限
tTaskTemplate[3864]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3864]["Next"] = {}
tTaskTemplate[3864]["Next"]["NpcId"] = 6135
tTaskTemplate[3864]["Next"]["MapId"] = 1000
tTaskTemplate[3864]["Next"]["PosX"] = 180
tTaskTemplate[3864]["Next"]["PosY"] = 249
-- 中间环节
tTaskTemplate[3864]["Mid"] = {}
tTaskTemplate[3864]["Mid"]["NpcId"] = 8425
tTaskTemplate[3864]["Mid"]["MapId"] = 1000
tTaskTemplate[3864]["Mid"]["PosX"] = 207
tTaskTemplate[3864]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3864]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3864]["RewExpTime"] = 150
tTaskTemplate[3864]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	敦煌的红魔100只（150分钟经验）
-- 接任务
tTaskTemplate[3865] = {}
tTaskTemplate[3865]["IsReceived"] = {200,400}
tTaskTemplate[3865]["RevMinLevel"] = 110
tTaskTemplate[3865]["RevMaxLevel"] = 119
tTaskTemplate[3865]["TaskId"] = 3865

-- 对白编号表
tTaskTemplate[3865]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3865]["HandOverMonster"] = "4-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3865]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3865]["ReqMonsterId1"] = {58,83} 		-- 交任务需要怪物ID
tTaskTemplate[3865]["ReqMonsterCount1"] = 100 	-- 怪物数量
tTaskTemplate[3865]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3865]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3865]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3865]["NextTaskId"] = 3866
tTaskTemplate[3865]["NextLev"] = 120 			-- 下个任务等级上限
tTaskTemplate[3865]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3865]["Next"] = {}
tTaskTemplate[3865]["Next"]["NpcId"] = 0
tTaskTemplate[3865]["Next"]["MapId"] = 1001
tTaskTemplate[3865]["Next"]["PosX"] = 249
tTaskTemplate[3865]["Next"]["PosY"] = 184
-- 中间环节
tTaskTemplate[3865]["Mid"] = {}
tTaskTemplate[3865]["Mid"]["NpcId"] = 8425
tTaskTemplate[3865]["Mid"]["MapId"] = 1000
tTaskTemplate[3865]["Mid"]["PosX"] = 207
tTaskTemplate[3865]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3865]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3865]["RewExpTime"] = 150
tTaskTemplate[3865]["RewardEffect"] = "end_task"

---------------------------
-- 聚沙成塔	冰封的幽寒冤魂30只（150分钟经验）
-- 接任务
tTaskTemplate[3866] = {}
tTaskTemplate[3866]["IsReceived"] = {200,400}
tTaskTemplate[3866]["RevMinLevel"] = 110
tTaskTemplate[3866]["RevMaxLevel"] = 119
tTaskTemplate[3866]["TaskId"] = 3866

-- 对白编号表
tTaskTemplate[3866]["SubTask"] = "4-3" 		-- 交任务
tTaskTemplate[3866]["HandOverMonster"] = "4-4" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3866]["MonsterTask"] = {300,700}		-- 怪物任务条件配置表
tTaskTemplate[3866]["ReqMonsterId1"] = {4238} 		-- 交任务需要怪物ID
tTaskTemplate[3866]["ReqMonsterCount1"] = 30 	-- 怪物数量
tTaskTemplate[3866]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3866]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3866]["IsHandOver"] = {500}		-- 任务交任务条件配置表
tTaskTemplate[3866]["NextTaskId"] = 3861
tTaskTemplate[3866]["NextLev"] = 120 			-- 下个任务等级上限
tTaskTemplate[3866]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3866]["Next"] = {}
tTaskTemplate[3866]["Next"]["NpcId"] = 6135
tTaskTemplate[3866]["Next"]["MapId"] = 1000
tTaskTemplate[3866]["Next"]["PosX"] = 180
tTaskTemplate[3866]["Next"]["PosY"] = 249
-- 中间环节
tTaskTemplate[3866]["Mid"] = {}
tTaskTemplate[3866]["Mid"]["NpcId"] = 8425
tTaskTemplate[3866]["Mid"]["MapId"] = 1000
tTaskTemplate[3866]["Mid"]["PosX"] = 207
tTaskTemplate[3866]["Mid"]["PosY"] = 255

-- 奖励
tTaskTemplate[3866]["HandOverTask"] = {500,900}	--交任务的奖励表
tTaskTemplate[3866]["RewExpTime"] = 150
tTaskTemplate[3866]["RewardEffect"] = "end_task"
------------------------------------------杀怪物部分-----------------------------------------
-- 沙怪 消弭威胁
tTaskMonster[14] = {3506,3574,3855,3857}
tTaskMonster[73] = {3506}
-- 锤山怪 威慑群妖
tTaskMonster[15] = {3508,3575,3855,3857}
tTaskMonster[74] = {3508}
-- 巨石怪 彩纹石块
tTaskMonster[16] = {3509,3576,3855,3857}
tTaskMonster[75] = {3509}
-- 鬼刃 鬼之利刃
tTaskMonster[17] = {3511,3577,3855,3857}
tTaskMonster[76] = {3511,3855,3857}
-- 震山怪
tTaskMonster[74] = {3855,3857}
-- 雷石怪
tTaskMonster[75] = {3855,3857}
-- 土墓蝠
tTaskMonster[20] = {3856,3861}
-- 嗜血蝙蝠
tTaskMonster[56] = {3856,3861}
-- 血翼蝙蝠
tTaskMonster[81] = {3856,3861}
-- 吸血蝙蝠
tTaskMonster[86] = {3856,3861}
-- 牛怪
tTaskMonster[57] = {3860,3863}
-- 蛮牛怪
tTaskMonster[82] = {3860,3863}
-- 血影红魔
tTaskMonster[58] = {3865}
-- 魅影红魔
tTaskMonster[83] = {3865}
-- 地穴冰魔
tTaskMonster[4236] = {3862}
-- 雪石巨怪
tTaskMonster[4237] = {3864}
-- 幽寒冤魂
tTaskMonster[4238] = {3866}
--------------------------------------NPC模块-------------------------------------------
-- 云门关总兵
tNpcFace[177] = 94
tNpcGossip[2004] = tNpcGossip[2004] or DefaultNpc:new{}
tNpcGossip[2004]["OptionHidden"] = 1
-- 交任务
tNpcGossip[2004]["Text1-1"] = {111}
tNpcGossip[2004]["Text111"] = tQuestRecruit_Text[2004]["111"]
tNpcGossip[2004]["tOption1-1"] = {1}
tNpcGossip[2004]["Option1"] = tQuestRecruit_Text[2004]["Option1"]
tNpcGossip[2004]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3505</N>2004</N>1"

-- 接消弭威胁任务
tNpcGossip[2004]["Text1-2"] = {121,122}
tNpcGossip[2004]["Text121"] = tQuestRecruit_Text[2004]["121"]
tNpcGossip[2004]["Text122"] = tQuestRecruit_Text[2004]["122"]
tNpcGossip[2004]["tOption1-2"] = {2}
tNpcGossip[2004]["Option2"] = tQuestRecruit_Text[2004]["Option2"]
tNpcGossip[2004]["OptionFunc2"] = "QuestRecruit_FindWay</N>3506"

-- 任务已接未完成
tNpcGossip[2004]["Text1-3"] = {131}
tNpcGossip[2004]["Text131"] = tQuestRecruit_Text[2004]["131"]
tNpcGossip[2004]["tOption1-3"] = {4}
tNpcGossip[2004]["Option4"] = tQuestRecruit_Text[2004]["Option4"]
tNpcGossip[2004]["OptionFunc4"] = "QuestRecruit_FindWay</N>3506"

-- 任务已完成 接解救小村任务
tNpcGossip[2004]["Text1-4"] = {141}
tNpcGossip[2004]["Text141"] = tQuestRecruit_Text[2004]["141"]
tNpcGossip[2004]["tOption1-4"] = {5}
tNpcGossip[2004]["Option5"] = tQuestRecruit_Text[2004]["Option5"]
tNpcGossip[2004]["OptionFunc5"] = "Task_IsHandOverByNpc</N>3506</N>2004</N>1"

-- 解救小村任务
tNpcGossip[2004]["Text1-5"] = {151,152}
tNpcGossip[2004]["Text151"] = tQuestRecruit_Text[2004]["151"]
tNpcGossip[2004]["Text152"] = tQuestRecruit_Text[2004]["152"]
tNpcGossip[2004]["tOption1-5"] = {6}
tNpcGossip[2004]["Option6"] = tQuestRecruit_Text[2004]["Option6"]
tNpcGossip[2004]["OptionFunc6"] = "QuestRecruit_FindWay</N>3507"

-- 闲聊
tNpcGossip[2004]["Text1-6"] = {161,162}
tNpcGossip[2004]["Text161"] = tQuestRecruit_Text[2004]["161"]
tNpcGossip[2004]["Text162"] = tQuestRecruit_Text[2004]["162"]
tNpcGossip[2004]["tOption1-6"] = {8}
tNpcGossip[2004]["Option8"] = tQuestRecruit_Text[2004]["Option8"]

-- 前往芦花荡
tNpcGossip[2004]["Text2-1"] = {211,212}
tNpcGossip[2004]["Text211"] = tQuestRecruit_Text[2004]["211"]
tNpcGossip[2004]["Text212"] = tQuestRecruit_Text[2004]["212"]
tNpcGossip[2004]["tOption2-1"] = {9}
tNpcGossip[2004]["Option9"] = tQuestRecruit_Text[2004]["Option9"]
tNpcGossip[2004]["OptionFunc9"] = "QuestRecruit_FindWay</N>3513"

-- 金币达上限
tNpcGossip[2004]["Text3-1"] = {311}
tNpcGossip[2004]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[2004]["tOption3-1"] = {311}
tNpcGossip[2004]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限 3505
tNpcGossip[2004]["Text3-2"] = {321}
tNpcGossip[2004]["Text321"] = tQuestRecruit_Text[2004]["321"]
tNpcGossip[2004]["tOption3-2"] = {321}
tNpcGossip[2004]["Option321"] = tQuestRecruit_Text[2004]["Option321"]

-- 背包达上限 3506
tNpcGossip[2004]["Text3-4"] = {341}
tNpcGossip[2004]["Text341"] = tQuestRecruit_Text[2004]["341"]
tNpcGossip[2004]["tOption3-4"] = {341}
tNpcGossip[2004]["Option341"] = tQuestRecruit_Text[2004]["Option321"]

---------------------------------------------------------
-- 守将诸葛威德
tNpcFace[1009] = 54
tNpcGossip[8437] = tNpcGossip[8437] or DefaultNpc:new{}
tNpcGossip[8437]["OptionHidden"] = 1

-- 守将诸葛威德（交任务）
tNpcGossip[8437]["Text1-1"] = {111}
tNpcGossip[8437]["Text111"] = tQuestRecruit_Text[8437]["111"]
tNpcGossip[8437]["tOption1-1"] = {1}
tNpcGossip[8437]["Option1"] = tQuestRecruit_Text[8437]["Option1"]
tNpcGossip[8437]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3507</N>8437</N>1"

-- 【接威慑群妖任务】
tNpcGossip[8437]["Text1-2"] = {121,122}
tNpcGossip[8437]["Text121"] = tQuestRecruit_Text[8437]["121"]
tNpcGossip[8437]["Text122"] = tQuestRecruit_Text[8437]["122"]
tNpcGossip[8437]["tOption1-2"] = {2}
tNpcGossip[8437]["Option2"] = tQuestRecruit_Text[8437]["Option2"]
tNpcGossip[8437]["OptionFunc2"] = "QuestRecruit_FindWay</N>3508"

-- 【任务已接未完成】
tNpcGossip[8437]["Text1-3"] = {131}
tNpcGossip[8437]["Text131"] = tQuestRecruit_Text[8437]["131"]
tNpcGossip[8437]["tOption1-3"] = {4}
tNpcGossip[8437]["Option4"] = tQuestRecruit_Text[8437]["Option4"]
tNpcGossip[8437]["OptionFunc4"] = "QuestRecruit_FindWay</N>3508"

-- 【任务已完成】 接翻修小村任务
tNpcGossip[8437]["Text1-4"] = {141}
tNpcGossip[8437]["Text141"] = tQuestRecruit_Text[8437]["141"]
tNpcGossip[8437]["tOption1-4"] = {5}
tNpcGossip[8437]["Option5"] = tQuestRecruit_Text[8437]["Option5"]
tNpcGossip[8437]["OptionFunc5"] = "Task_IsHandOverByNpc</N>3508</N>8437</N>1"

--翻修小村任务
tNpcGossip[8437]["Text1-5"] = {151,152}
tNpcGossip[8437]["Text151"] = tQuestRecruit_Text[8437]["151"]
tNpcGossip[8437]["Text152"] = tQuestRecruit_Text[8437]["152"]
tNpcGossip[8437]["tOption1-5"] = {6}
tNpcGossip[8437]["Option6"] = tQuestRecruit_Text[8437]["Option6"]
tNpcGossip[8437]["OptionFunc6"] = "QuestRecruit_FindWay</N>3509"

-- 【任务已接未完成】
tNpcGossip[8437]["Text1-6"] = {161}
tNpcGossip[8437]["Text161"] = tQuestRecruit_Text[8437]["161"]
tNpcGossip[8437]["tOption1-6"] = {8}
tNpcGossip[8437]["Option8"] = tQuestRecruit_Text[8437]["Option8"]
tNpcGossip[8437]["OptionFunc8"] = "QuestRecruit_FindWay</N>3509"

--闲聊
tNpcGossip[8437]["Text1-7"] = {171,172}
tNpcGossip[8437]["Text171"] = tQuestRecruit_Text[8437]["171"]
tNpcGossip[8437]["Text172"] = tQuestRecruit_Text[8437]["172"]
tNpcGossip[8437]["tOption1-7"] = {9}
tNpcGossip[8437]["Option9"] = tQuestRecruit_Text[8437]["Option9"]

-- 金币达上限
tNpcGossip[8437]["Text3-1"] = {311}
tNpcGossip[8437]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8437]["tOption3-1"] = {311}
tNpcGossip[8437]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限 3507
tNpcGossip[8437]["Text3-2"] = {321}
tNpcGossip[8437]["Text321"] = tQuestRecruit_Text[8437]["321"]
tNpcGossip[8437]["tOption3-2"] = {321}
tNpcGossip[8437]["Option321"] = tQuestRecruit_Text[8437]["Option321"]

-- 背包达上限 3508
tNpcGossip[8437]["Text3-4"] = {341}
tNpcGossip[8437]["Text341"] = tQuestRecruit_Text[8437]["341"]
tNpcGossip[8437]["tOption3-4"] = {341}
tNpcGossip[8437]["Option341"] = tQuestRecruit_Text[8437]["Option321"]

--------------------------------------------------
-- 上官婉莹
tNpcFace[1012] = 159
tNpcGossip[8440] = tNpcGossip[8440] or DefaultNpc:new{}
tNpcGossip[8440]["OptionHidden"] = 1

-- 【未完成任务】
tNpcGossip[8440]["Text1-1"] = {111}
tNpcGossip[8440]["Text111"] = tQuestRecruit_Text[8440]["111"]
tNpcGossip[8440]["tOption1-1"] = {1}
tNpcGossip[8440]["Option1"] = tQuestRecruit_Text[8440]["Option1"]

-- 【完成任务】
tNpcGossip[8440]["Text1-2"] = {121,122}
tNpcGossip[8440]["Text121"] = tQuestRecruit_Text[8440]["121"]
tNpcGossip[8440]["Text122"] = tQuestRecruit_Text[8440]["122"]
tNpcGossip[8440]["tOption1-2"] = {2}
tNpcGossip[8440]["Option2"] = tQuestRecruit_Text[8440]["Option2"]
tNpcGossip[8440]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3509</N>8440</N>1"

-- 【接送水任务】
tNpcGossip[8440]["Text1-3"] = {131,132}
tNpcGossip[8440]["Text131"] = tQuestRecruit_Text[8440]["131"]
tNpcGossip[8440]["Text132"] = tQuestRecruit_Text[8440]["132"]
tNpcGossip[8440]["tOption1-3"] = {3}
tNpcGossip[8440]["Option3"] = tQuestRecruit_Text[8440]["Option3"]
tNpcGossip[8440]["OptionFunc3"] = "QuestRecruit_FindWay</N>3510"

-- 【任务已接未完成】
tNpcGossip[8440]["Text1-4"] = {141}
tNpcGossip[8440]["Text141"] = tQuestRecruit_Text[8440]["141"]
tNpcGossip[8440]["tOption1-4"] = {5,6}
tNpcGossip[8440]["Option5"] = tQuestRecruit_Text[8440]["Option5"]
tNpcGossip[8440]["OptionFunc5"] = "QuestRecruit_ReqTaskItem</N>3510</N>8440"
tNpcGossip[8440]["Option6"] = tQuestRecruit_Text[8440]["Option6"]

-- 失败、背包满
tNpcGossip[8440]["Text1-5"] = {151}
tNpcGossip[8440]["Text151"] = tQuestRecruit_Text[8440]["151"]
tNpcGossip[8440]["tOption1-5"] = {7}
tNpcGossip[8440]["Option7"] = tQuestRecruit_Text[8440]["Option7"]

-- 失败、已有水
tNpcGossip[8440]["Text1-6"] = {161}
tNpcGossip[8440]["Text161"] = tQuestRecruit_Text[8440]["161"]
tNpcGossip[8440]["tOption1-6"] = {8}
tNpcGossip[8440]["Option8"] = tQuestRecruit_Text[8440]["Option8"]

-- 【再领成功】
tNpcGossip[8440]["Text1-7"] = {171}
tNpcGossip[8440]["Text171"] = tQuestRecruit_Text[8440]["171"]
tNpcGossip[8440]["tOption1-7"] = {9}
tNpcGossip[8440]["Option9"] = tQuestRecruit_Text[8440]["Option9"]

-- 闲聊
tNpcGossip[8440]["Text1-8"] = {181,182}
tNpcGossip[8440]["Text181"] = tQuestRecruit_Text[8440]["181"]
tNpcGossip[8440]["Text182"] = tQuestRecruit_Text[8440]["182"]
tNpcGossip[8440]["tOption1-8"] = {10}
tNpcGossip[8440]["Option10"] = tQuestRecruit_Text[8440]["Option10"]

-- 金币达上限
tNpcGossip[8440]["Text3-1"] = {311}
tNpcGossip[8440]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8440]["tOption3-1"] = {311}
tNpcGossip[8440]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 背包达上限 3509
tNpcGossip[8440]["Text3-2"] = {321}
tNpcGossip[8440]["Text321"] = tQuestRecruit_Text[8440]["321"]
tNpcGossip[8440]["tOption3-2"] = {321}
tNpcGossip[8440]["Option321"] = tQuestRecruit_Text[8440]["Option321"]

-- 接任务空间不足
tNpcGossip[8440]["Text3-3"] = {331}
tNpcGossip[8440]["Text331"] = tQuestRecruit_Text[8440]["331"]
tNpcGossip[8440]["tOption3-3"] = {331}
tNpcGossip[8440]["Option331"] = tQuestRecruit_Text[8440]["Option331"]

--------------------------------------------------------------------
-- 韩丞
tNpcFace[1013] = 60
tNpcGossip[8441] = tNpcGossip[8441] or DefaultNpc:new{}
tNpcGossip[8441]["OptionHidden"] = 1

-- 【未完成任务】
tNpcGossip[8441]["Text1-1"] = {111}
tNpcGossip[8441]["Text111"] = tQuestRecruit_Text[8441]["111"]
tNpcGossip[8441]["tOption1-1"] = {1}
tNpcGossip[8441]["Option1"] = tQuestRecruit_Text[8441]["Option1"]

-- 【完成任务】
tNpcGossip[8441]["Text1-2"] = {121,122}
tNpcGossip[8441]["Text121"] = tQuestRecruit_Text[8441]["121"]
tNpcGossip[8441]["Text122"] = tQuestRecruit_Text[8441]["122"]
tNpcGossip[8441]["tOption1-2"] = {2}
tNpcGossip[8441]["Option2"] = tQuestRecruit_Text[8441]["Option2"]
tNpcGossip[8441]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3510</N>8441</N>1"

-- 【接鬼之利刃任务】
tNpcGossip[8441]["Text1-3"] = {131,132,133}
tNpcGossip[8441]["Text131"] = tQuestRecruit_Text[8441]["131"]
tNpcGossip[8441]["Text132"] = tQuestRecruit_Text[8441]["132"]
tNpcGossip[8441]["Text133"] = tQuestRecruit_Text[8441]["133"]
tNpcGossip[8441]["tOption1-3"] = {3}
tNpcGossip[8441]["Option3"] = tQuestRecruit_Text[8441]["Option3"]
tNpcGossip[8441]["OptionFunc3"] = "QuestRecruit_FindWay</N>3511"

-- 【任务已接未完成】
tNpcGossip[8441]["Text1-4"] = {141}
tNpcGossip[8441]["Text141"] = tQuestRecruit_Text[8441]["141"]
tNpcGossip[8441]["tOption1-4"] = {5}
tNpcGossip[8441]["Option5"] = tQuestRecruit_Text[8441]["Option5"]
tNpcGossip[8441]["OptionFunc5"] = "QuestRecruit_FindWay</N>3511"

-- 闲聊
tNpcGossip[8441]["Text1-5"] = {151,152}
tNpcGossip[8441]["Text151"] = tQuestRecruit_Text[8441]["151"]
tNpcGossip[8441]["Text152"] = tQuestRecruit_Text[8441]["152"]
tNpcGossip[8441]["tOption1-5"] = {6}
tNpcGossip[8441]["Option6"] = tQuestRecruit_Text[8441]["Option6"]

-- 金币达上限
tNpcGossip[8441]["Text3-1"] = {311}
tNpcGossip[8441]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8441]["tOption3-1"] = {311}
tNpcGossip[8441]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 背包达上限 3510
tNpcGossip[8441]["Text3-2"] = {321}
tNpcGossip[8441]["Text321"] = tQuestRecruit_Text[8441]["321"]
tNpcGossip[8441]["tOption3-2"] = {321}
tNpcGossip[8441]["Option321"] = tQuestRecruit_Text[8441]["Option321"]
--------------------------------------------------------------------
-- 护泉将军·穆项羽
tNpcFace[1017] = 107
tNpcGossip[8445] = tNpcGossip[8445] or DefaultNpc:new{}
tNpcGossip[8445]["OptionHidden"] = 1

-- 【未完成任务】
tNpcGossip[8445]["Text1-1"] = {111}
tNpcGossip[8445]["Text111"] = tQuestRecruit_Text[8445]["111"]
tNpcGossip[8445]["tOption1-1"] = {1}
tNpcGossip[8445]["Option1"] = tQuestRecruit_Text[8445]["Option1"]

-- 【完成任务】
tNpcGossip[8445]["Text1-2"] = {121}
tNpcGossip[8445]["Text121"] = tQuestRecruit_Text[8445]["121"]
tNpcGossip[8445]["tOption1-2"] = {2}
tNpcGossip[8445]["Option2"] = tQuestRecruit_Text[8445]["Option2"]
tNpcGossip[8445]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3511</N>8445</N>1"

-- 【接再涉日常任务】
tNpcGossip[8445]["Text1-3"] = {131}
tNpcGossip[8445]["Text131"] = tQuestRecruit_Text[8445]["131"]
tNpcGossip[8445]["tOption1-3"] = {3}
tNpcGossip[8445]["Option3"] = tQuestRecruit_Text[8445]["Option3"]
-- tNpcGossip[8445]["OptionFunc3"] = "QuestRecruit_FindWay</N>3512"
tNpcGossip[8445]["OptionFunc3"] = "QuestRecruit_TransPos</N>3512"

-- 闲聊
tNpcGossip[8445]["Text1-4"] = {141}
tNpcGossip[8445]["Text141"] = tQuestRecruit_Text[8445]["141"]
tNpcGossip[8445]["tOption1-4"] = {5}
tNpcGossip[8445]["Option5"] = tQuestRecruit_Text[8445]["Option5"]

-- 金币达上限
tNpcGossip[8445]["Text3-1"] = {311}
tNpcGossip[8445]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8445]["tOption3-1"] = {311}
tNpcGossip[8445]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 背包达上限 3511
tNpcGossip[8445]["Text3-2"] = {321}
tNpcGossip[8445]["Text321"] = tQuestRecruit_Text[8445]["321"]
tNpcGossip[8445]["tOption3-2"] = {321}
tNpcGossip[8445]["Option321"] = tQuestRecruit_Text[8445]["Option321"]

----------------------------------------------------
-- 云门关副总兵
tNpcFace[1000] = 53
tNpcGossip[8425] = tNpcGossip[8425] or DefaultNpc:new{}
tNpcGossip[8425]["OptionHidden"] = 1
-- 闲聊对白
tNpcGossip[8425]["Text1-1"] = {111}
tNpcGossip[8425]["Text111"] = tQuestRecruit_Text[8425]["111"]
tNpcGossip[8425]["tOption1-1"] = {1}
tNpcGossip[8425]["Option1"] = tQuestRecruit_Text[8425]["Option1"]

-- 交奋发图强（一）	3574
tNpcGossip[8425]["Text1-2"] = {121}
tNpcGossip[8425]["Text121"] = tQuestRecruit_Text[8425]["121"]
tNpcGossip[8425]["tOption1-2"] = {2}
tNpcGossip[8425]["Option2"] = tQuestRecruit_Text[8425]["Option2"]
tNpcGossip[8425]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3574</N>8425</N>1"

-- 任务已接未完成
tNpcGossip[8425]["Text1-3"] = {131}
tNpcGossip[8425]["Text131"] = tQuestRecruit_Text[8425]["131"]
tNpcGossip[8425]["tOption1-3"] = {3}
tNpcGossip[8425]["Option3"] = tQuestRecruit_Text[8425]["Option3"]
tNpcGossip[8425]["OptionFunc3"] = "QuestRecruit_FindWay</N>3574"

-- 交奋发图强（二）	3575
tNpcGossip[8425]["Text1-4"] = {141}
tNpcGossip[8425]["Text141"] = tQuestRecruit_Text[8425]["141"]
tNpcGossip[8425]["tOption1-4"] = {4}
tNpcGossip[8425]["Option4"] = tQuestRecruit_Text[8425]["Option4"]
tNpcGossip[8425]["OptionFunc4"] = "Task_IsHandOverByNpc</N>3575</N>8425</N>1"

-- 任务已接未完成
tNpcGossip[8425]["Text1-5"] = {151}
tNpcGossip[8425]["Text151"] = tQuestRecruit_Text[8425]["151"]
tNpcGossip[8425]["tOption1-5"] = {5}
tNpcGossip[8425]["Option5"] = tQuestRecruit_Text[8425]["Option5"]
tNpcGossip[8425]["OptionFunc5"] = "QuestRecruit_FindWay</N>3575"

-- 交奋发图强（三）	3576
tNpcGossip[8425]["Text1-6"] = {161}
tNpcGossip[8425]["Text161"] = tQuestRecruit_Text[8425]["161"]
tNpcGossip[8425]["tOption1-6"] = {6}
tNpcGossip[8425]["Option6"] = tQuestRecruit_Text[8425]["Option6"]
tNpcGossip[8425]["OptionFunc6"] = "Task_IsHandOverByNpc</N>3576</N>8425</N>1"

-- 任务已接未完成
tNpcGossip[8425]["Text1-7"] = {171}
tNpcGossip[8425]["Text171"] = tQuestRecruit_Text[8425]["171"]
tNpcGossip[8425]["tOption1-7"] = {7}
tNpcGossip[8425]["Option7"] = tQuestRecruit_Text[8425]["Option7"]
tNpcGossip[8425]["OptionFunc7"] = "QuestRecruit_FindWay</N>3576"

-- 交奋发图强（四）	3577
tNpcGossip[8425]["Text1-8"] = {181}
tNpcGossip[8425]["Text181"] = tQuestRecruit_Text[8425]["181"]
tNpcGossip[8425]["tOption1-8"] = {8}
tNpcGossip[8425]["Option8"] = tQuestRecruit_Text[8425]["Option8"]
tNpcGossip[8425]["OptionFunc8"] = "Task_IsHandOverByNpc</N>3577</N>8425</N>1"

-- 任务已接未完成
tNpcGossip[8425]["Text1-9"] = {191}
tNpcGossip[8425]["Text191"] = tQuestRecruit_Text[8425]["191"]
tNpcGossip[8425]["tOption1-9"] = {9}
tNpcGossip[8425]["Option9"] = tQuestRecruit_Text[8425]["Option9"]
tNpcGossip[8425]["OptionFunc9"] = "QuestRecruit_FindWay</N>3577"

-- 聚沙成塔	任务ID 3855
tNpcGossip[8425]["Text2-1"] = {211}
tNpcGossip[8425]["Text211"] = tQuestRecruit_Text[8425]["Text211"]
tNpcGossip[8425]["tOption2-1"] = {211}
tNpcGossip[8425]["Option211"] = tQuestRecruit_Text[8425]["211"]
tNpcGossip[8425]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3855</N>8425</N>1"

-- 聚沙成塔	任务ID 3855 未完成
tNpcGossip[8425]["Text2-2"] = {221}
tNpcGossip[8425]["Text221"] = tQuestRecruit_Text[8425]["Text221"]
tNpcGossip[8425]["tOption2-2"] = {221}
tNpcGossip[8425]["Option221"] = tQuestRecruit_Text[8425]["221"]
tNpcGossip[8425]["OptionFunc221"] = "QuestRecruit_FindWay</N>3855"

-- 聚沙成塔	任务ID 3856
tNpcGossip[8425]["Text2-3"] = {231}
tNpcGossip[8425]["Text231"] = tQuestRecruit_Text[8425]["Text231"]
tNpcGossip[8425]["tOption2-3"] = {231}
tNpcGossip[8425]["Option231"] = tQuestRecruit_Text[8425]["231"]
tNpcGossip[8425]["OptionFunc231"] = "Task_IsHandOverByNpc</N>3856</N>8425</N>1"

-- 聚沙成塔	任务ID 3856 未完成
tNpcGossip[8425]["Text2-4"] = {241}
tNpcGossip[8425]["Text241"] = tQuestRecruit_Text[8425]["Text241"]
tNpcGossip[8425]["tOption2-4"] = {241}
tNpcGossip[8425]["Option241"] = tQuestRecruit_Text[8425]["241"]
tNpcGossip[8425]["OptionFunc241"] = "QuestRecruit_FindWay</N>3856"

-- 聚沙成塔	任务ID 3857
tNpcGossip[8425]["Text2-5"] = {251}
tNpcGossip[8425]["Text251"] = tQuestRecruit_Text[8425]["Text251"]
tNpcGossip[8425]["tOption2-5"] = {251}
tNpcGossip[8425]["Option251"] = tQuestRecruit_Text[8425]["251"]
tNpcGossip[8425]["OptionFunc251"] = "Task_IsHandOverByNpc</N>3857</N>8425</N>1"

-- 聚沙成塔	任务ID 3857 未完成
tNpcGossip[8425]["Text2-6"] = {261}
tNpcGossip[8425]["Text261"] = tQuestRecruit_Text[8425]["Text261"]
tNpcGossip[8425]["tOption2-6"] = {261}
tNpcGossip[8425]["Option261"] = tQuestRecruit_Text[8425]["261"]
tNpcGossip[8425]["OptionFunc261"] = "QuestRecruit_FindWay</N>3857"

-- 聚沙成塔	任务ID 3860
tNpcGossip[8425]["Text2-7"] = {271}
tNpcGossip[8425]["Text271"] = tQuestRecruit_Text[8425]["Text271"]
tNpcGossip[8425]["tOption2-7"] = {271}
tNpcGossip[8425]["Option271"] = tQuestRecruit_Text[8425]["271"]
tNpcGossip[8425]["OptionFunc271"] = "Task_IsHandOverByNpc</N>3860</N>8425</N>1"

-- 聚沙成塔	任务ID 3860 未完成
tNpcGossip[8425]["Text2-8"] = {281}
tNpcGossip[8425]["Text281"] = tQuestRecruit_Text[8425]["Text281"]
tNpcGossip[8425]["tOption2-8"] = {281}
tNpcGossip[8425]["Option281"] = tQuestRecruit_Text[8425]["281"]
tNpcGossip[8425]["OptionFunc281"] = "QuestRecruit_FindWay</N>3860"

-- 聚沙成塔	任务ID 3861
tNpcGossip[8425]["Text3-1"] = {311}
tNpcGossip[8425]["Text311"] = tQuestRecruit_Text[8425]["Text311"]
tNpcGossip[8425]["tOption3-1"] = {311}
tNpcGossip[8425]["Option311"] = tQuestRecruit_Text[8425]["311"]
tNpcGossip[8425]["OptionFunc311"] = "Task_IsHandOverByNpc</N>3861</N>8425</N>1"

-- 聚沙成塔	任务ID 3861	未完成
tNpcGossip[8425]["Text3-2"] = {321}
tNpcGossip[8425]["Text321"] = tQuestRecruit_Text[8425]["Text321"]
tNpcGossip[8425]["tOption3-2"] = {321}
tNpcGossip[8425]["Option321"] = tQuestRecruit_Text[8425]["321"]
tNpcGossip[8425]["OptionFunc321"] = "QuestRecruit_FindWay</N>3861"

-- 聚沙成塔	任务ID 3862
tNpcGossip[8425]["Text3-3"] = {331}
tNpcGossip[8425]["Text331"] = tQuestRecruit_Text[8425]["Text331"]
tNpcGossip[8425]["tOption3-3"] = {331}
tNpcGossip[8425]["Option331"] = tQuestRecruit_Text[8425]["331"]
tNpcGossip[8425]["OptionFunc331"] = "Task_IsHandOverByNpc</N>3862</N>8425</N>1"

-- 聚沙成塔	任务ID 3862	未完成
tNpcGossip[8425]["Text3-4"] = {341}
tNpcGossip[8425]["Text341"] = tQuestRecruit_Text[8425]["Text341"]
tNpcGossip[8425]["tOption3-4"] = {341}
tNpcGossip[8425]["Option341"] = tQuestRecruit_Text[8425]["341"]
tNpcGossip[8425]["OptionFunc341"] = "QuestRecruit_FindWay</N>3862"

-- 聚沙成塔	任务ID 3863
tNpcGossip[8425]["Text3-5"] = {351}
tNpcGossip[8425]["Text351"] = tQuestRecruit_Text[8425]["Text351"]
tNpcGossip[8425]["tOption3-5"] = {351}
tNpcGossip[8425]["Option351"] = tQuestRecruit_Text[8425]["351"]
tNpcGossip[8425]["OptionFunc351"] = "Task_IsHandOverByNpc</N>3863</N>8425</N>1"

-- 聚沙成塔	任务ID 3863	未完成
tNpcGossip[8425]["Text3-6"] = {361}
tNpcGossip[8425]["Text361"] = tQuestRecruit_Text[8425]["Text361"]
tNpcGossip[8425]["tOption3-6"] = {361}
tNpcGossip[8425]["Option361"] = tQuestRecruit_Text[8425]["361"]
tNpcGossip[8425]["OptionFunc361"] = "QuestRecruit_FindWay</N>3863"

-- 聚沙成塔	任务ID 3864
tNpcGossip[8425]["Text3-7"] = {371}
tNpcGossip[8425]["Text371"] = tQuestRecruit_Text[8425]["Text371"]
tNpcGossip[8425]["tOption3-7"] = {371}
tNpcGossip[8425]["Option371"] = tQuestRecruit_Text[8425]["371"]
tNpcGossip[8425]["OptionFunc371"] = "Task_IsHandOverByNpc</N>3864</N>8425</N>1"

-- 聚沙成塔	任务ID 3864	未完成
tNpcGossip[8425]["Text3-8"] = {381}
tNpcGossip[8425]["Text381"] = tQuestRecruit_Text[8425]["Text381"]
tNpcGossip[8425]["tOption3-8"] = {381}
tNpcGossip[8425]["Option381"] = tQuestRecruit_Text[8425]["381"]
tNpcGossip[8425]["OptionFunc381"] = "QuestRecruit_FindWay</N>3864"

-- 聚沙成塔	任务ID 3865
tNpcGossip[8425]["Text4-1"] = {411}
tNpcGossip[8425]["Text411"] = tQuestRecruit_Text[8425]["Text411"]
tNpcGossip[8425]["tOption4-1"] = {411}
tNpcGossip[8425]["Option411"] = tQuestRecruit_Text[8425]["411"]
tNpcGossip[8425]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3865</N>8425</N>1"

-- 聚沙成塔	任务ID 3865	未完成
tNpcGossip[8425]["Text4-2"] = {421}
tNpcGossip[8425]["Text421"] = tQuestRecruit_Text[8425]["Text421"]
tNpcGossip[8425]["tOption4-2"] = {421}
tNpcGossip[8425]["Option421"] = tQuestRecruit_Text[8425]["421"]
tNpcGossip[8425]["OptionFunc421"] = "QuestRecruit_FindWay</N>3865"

-- 聚沙成塔	任务ID 3866
tNpcGossip[8425]["Text4-3"] = {431}
tNpcGossip[8425]["Text431"] = tQuestRecruit_Text[8425]["Text431"]
tNpcGossip[8425]["tOption4-3"] = {431}
tNpcGossip[8425]["Option431"] = tQuestRecruit_Text[8425]["431"]
tNpcGossip[8425]["OptionFunc431"] = "Task_IsHandOverByNpc</N>3866</N>8425</N>1"

-- 聚沙成塔	任务ID 3866	未完成
tNpcGossip[8425]["Text4-4"] = {441}
tNpcGossip[8425]["Text441"] = tQuestRecruit_Text[8425]["Text441"]
tNpcGossip[8425]["tOption4-4"] = {441}
tNpcGossip[8425]["Option441"] = tQuestRecruit_Text[8425]["441"]
tNpcGossip[8425]["OptionFunc441"] = "QuestRecruit_FindWay</N>3866"

-- 双龙城总兵
-- 背包空间不足
tNpcGossip[2001]["Text9-7"] = {971}
tNpcGossip[2001]["Text971"] = tQuestRecruit_Text[2001]["Text971"]
tNpcGossip[2001]["tOption9-7"] = {971}
tNpcGossip[2001]["Option971"] = tQuestRecruit_Text[2001]["971"]
