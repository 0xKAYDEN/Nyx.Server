------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]CB2版本优化任务内容制作-片区任务(10.22)
--Purpose:	片区-芦花荡片区
--Creator: 	兰瑞妹
--Created:	2015/10/15
------------------------------------------------------------------------------------

-- 命名前缀
-- QuestRecruit_
-------------------------芦花荡片区
-- 前往芦花荡 3513
-- 城中巡逻 3514
-- 扫荡金臂 3515
-- 鸟口拔喙 3516
-- 传递军令 3517
-- 清除鹰王 3518
-- 加固结界 3519
-- 联合御敌 3520
-- 副官家书 3521
-- 夺回粮食 3522
-- 慈母手中线 3523
-- 游子身上衣 3524
-- 回禀总兵 3578
-- 锋芒毕露 3579 （去掉）
-- 滴水穿石（循）3580 3581 3582

-- 新增掩码3577--3582

----------------------------------------------------------------------------------------

------------------------------------------NPC任务配置
-- 白鹭城城主
tQuestRecruit_TaskStar[8510] = {3513}
tQuestRecruit_TaskNext[8510] = {3514}

-- 白鹭城守将
tQuestRecruit_TaskStar[8521] = {3514,3515,3516}
tQuestRecruit_TaskNext[8521] = {3515,3516,3517}

-- 湖岛守将
tQuestRecruit_TaskStar[8525] = {3517,3518,3519}
tQuestRecruit_TaskNext[8525] = {3518,3519,3520}

-- 守将副官
tQuestRecruit_TaskStar[8534] = {3520,3524}
tQuestRecruit_TaskNext[8534] = {3521,3578}

-- 王氏
tQuestRecruit_TaskStar[8536] = {3521,3522,3523}
tQuestRecruit_TaskNext[8536] = {3522,3523,3524}

-- 白鹭城副总兵
tQuestRecruit_TaskStar[8512] = {3580,3581,3582}
------------------------------------------自配函数-----------------

------------------------------------------任务配置
----------------------------片区五----------------------------------------
-- 前往芦花荡
-- 接任务
tTaskTemplate[3513] = {}
tTaskTemplate[3513]["IsReceived"] = {400,700}
tTaskTemplate[3513]["TaskId"] = 3513
tTaskTemplate[3513]["FrontTask"] = 3573
tTaskTemplate[3513]["AcceptTask"] = {100}
-- 接任务给旋风状态(时间)
tTaskTemplate[3513]["StatusTime"] = 15

-- 对白编号表
tTaskTemplate[3513]["SubTask"] = "1-1" 		-- 已完成任务对白
tTaskTemplate[3513]["MeetAccept"] = "13-1"	-- 接新任务对白
tTaskTemplate[3513]["HasAccept"] = "13-1" 	-- 已接任务未完成
tTaskTemplate[3513]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3513]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3513]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3513]["NextTaskId"] = 3514
tTaskTemplate[3513]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3513]["Next"] = {}
tTaskTemplate[3513]["Next"]["NpcId"] = 8510
tTaskTemplate[3513]["Next"]["MapId"] = 1015
tTaskTemplate[3513]["Next"]["PosX"] = 710
tTaskTemplate[3513]["Next"]["PosY"] = 572

-- 奖励
tTaskTemplate[3513]["HandOverTask"] = {200,1200,1300}	--交任务的奖励表
tTaskTemplate[3513]["RewSpace"] = 3
-- tTaskTemplate[3513]["RewMoney"] = 10000
tTaskTemplate[3513]["RewItemId1"] = 1002020		-- 冷香草*300
tTaskTemplate[3513]["RewItemAttr1"] = "0 10 3"
-- tTaskTemplate[3513]["RewItemId2"] = 1088000
-- tTaskTemplate[3513]["RewItemAttr2"] = "0 3"
-- 道士
tTaskTemplate[3513]["RewardProItem"] = {}
tTaskTemplate[3513]["RewardProItem"][1] = {}
tTaskTemplate[3513]["RewardProItem"][1]["MinPro"] = 100	
tTaskTemplate[3513]["RewardProItem"][1]["MaxPro"] = 145	
tTaskTemplate[3513]["RewardProItem"][1]["ProItem"] = {}	
tTaskTemplate[3513]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3513]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*300
tTaskTemplate[3513]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"

-- 城中巡逻
-- 接任务
tTaskTemplate[3514] = {}
tTaskTemplate[3514]["IsReceived"] = {400,700}
tTaskTemplate[3514]["TaskId"] = 3514
tTaskTemplate[3514]["FrontTask"] = 3513
tTaskTemplate[3514]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3514]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3514]["MeetAccept"] = "1-2"	-- 接新任务对白
tTaskTemplate[3514]["HandOverDetail"] = "1-3" 	-- 已接任务未完成
-- tTaskTemplate[3514]["HasAccept"] = "1-1" 
tTaskTemplate[3514]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3514]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3514]["IsHandOver"] = {900,1100}		--任务交任务条件配置表
tTaskTemplate[3514]["NextTaskId"] = 3515
tTaskTemplate[3514]["Data1"] = 1
tTaskTemplate[3514]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3514]["Next"] = {}
tTaskTemplate[3514]["Next"]["NpcId"] = 0
tTaskTemplate[3514]["Next"]["MapId"] = 1015
tTaskTemplate[3514]["Next"]["PosX"] = 774
tTaskTemplate[3514]["Next"]["PosY"] = 526
-- 中间环节
tTaskTemplate[3514]["Mid"] = {}
tTaskTemplate[3514]["Mid"]["NpcId"] = 8521
tTaskTemplate[3514]["Mid"]["MapId"] = 1015
tTaskTemplate[3514]["Mid"]["PosX"] = 740
tTaskTemplate[3514]["Mid"]["PosY"] = 624

-- 奖励
tTaskTemplate[3514]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3514]["RewSpace"] = 2
tTaskTemplate[3514]["RewExpTime"] = 150
-- tTaskTemplate[3514]["RewMoney"] = 40000
-- tTaskTemplate[3514]["RewItemId1"] = 720027
-- tTaskTemplate[3514]["RewItemAttr1"] = "0 2"

-- 扫荡金臂
-- 接任务
tTaskTemplate[3515] = {}
tTaskTemplate[3515]["IsReceived"] = {400,700}
tTaskTemplate[3515]["TaskId"] = 3515
tTaskTemplate[3515]["FrontTask"] = 3514
tTaskTemplate[3515]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3515]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[3515]["MeetAccept"] = "1-3"	-- 接新任务对白
tTaskTemplate[3515]["HandOverItem"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[3515]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3515]["HandOverSpace"] = "3-4" 	--背包达上限

-- 交任务
tTaskTemplate[3515]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3515]["ReqItemId1"] = 711438
tTaskTemplate[3515]["ReqItemCount1"] = 5
tTaskTemplate[3515]["NextTaskId"] = 3516
tTaskTemplate[3515]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3515]["MonsterTask"] = {300,500,800} 
tTaskTemplate[3515]["MonsterFunc"] = QuestRecruit_MustKillItem
tTaskTemplate[3515]["ReqItemFunc"] = QuestRecruit_MonsterDone
tTaskTemplate[3515]["ReqMonsterId1"] = {18} 		-- 交任务需要怪物ID
tTaskTemplate[3515]["MustSpace"] = 1 				--怪物掉落需要检测背包空间
tTaskTemplate[3515]["MustDropMode1"] = 2			-- 掉落背包
tTaskTemplate[3515]["MustFallItemId1"] = {}
tTaskTemplate[3515]["MustFallItemId1"][1] = {}
tTaskTemplate[3515]["MustFallItemId1"][1]["ItemId"] = 711438
tTaskTemplate[3515]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3515]["MustFallItemId1"][1]["ItemLimit"] = 5

-- 后续任务NPC数据
tTaskTemplate[3515]["Next"] = {}
tTaskTemplate[3515]["Next"]["NpcId"] = 0
tTaskTemplate[3515]["Next"]["MapId"] = 1015
tTaskTemplate[3515]["Next"]["PosX"] = 883
tTaskTemplate[3515]["Next"]["PosY"] = 581
-- 中间环节
tTaskTemplate[3515]["Mid"] = {}
tTaskTemplate[3515]["Mid"]["NpcId"] = 8521
tTaskTemplate[3515]["Mid"]["MapId"] = 1015
tTaskTemplate[3515]["Mid"]["PosX"] = 740
tTaskTemplate[3515]["Mid"]["PosY"] = 624

-- 奖励
tTaskTemplate[3515]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3515]["RewSpace"] = 2
tTaskTemplate[3515]["RewExpTime"] = 180
-- tTaskTemplate[3515]["RewMoney"] = 70000
-- tTaskTemplate[3515]["RewItemId1"] = 1088000
-- tTaskTemplate[3515]["RewItemAttr1"] = "0 3"

-- 鸟口拔喙
-- 接任务
tTaskTemplate[3516] = {}
tTaskTemplate[3516]["IsReceived"] = {400,700}
tTaskTemplate[3516]["TaskId"] = 3516
tTaskTemplate[3516]["FrontTask"] = 3515
tTaskTemplate[3516]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3516]["SubTask"] = "1-8" 		-- 已完成任务对白
tTaskTemplate[3516]["MeetAccept"] = "1-6"	-- 接新任务对白
tTaskTemplate[3516]["HandOverItem"] = "1-7" 	-- 已接任务未完成
tTaskTemplate[3516]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3516]["HandOverSpace"] = "3-5" 	--背包达上限

-- 交任务
tTaskTemplate[3516]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3516]["ReqItemId1"] = 711445
tTaskTemplate[3516]["ReqItemCount1"] = 1
tTaskTemplate[3516]["NextTaskId"] = 3517
tTaskTemplate[3516]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3516]["MonsterTask"] = {300,500,800} 
tTaskTemplate[3516]["MonsterFunc"] = QuestRecruit_MustKillItem
tTaskTemplate[3516]["ReqItemFunc"] = QuestRecruit_MonsterDone
tTaskTemplate[3516]["ReqMonsterId1"] = {77} 		-- 交任务需要怪物ID
tTaskTemplate[3516]["MustSpace"] = 1 				--怪物掉落需要检测背包空间
tTaskTemplate[3516]["MustDropMode1"] = 2			-- 掉落背包
tTaskTemplate[3516]["MustFallItemId1"] = {}
tTaskTemplate[3516]["MustFallItemId1"][1] = {}
tTaskTemplate[3516]["MustFallItemId1"][1]["ItemId"] = 711445
tTaskTemplate[3516]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3516]["MustFallItemId1"][1]["ItemLimit"] = 1

-- 后续任务NPC数据
tTaskTemplate[3516]["Next"] = {}
tTaskTemplate[3516]["Next"]["NpcId"] = 0
tTaskTemplate[3516]["Next"]["MapId"] = 1015
tTaskTemplate[3516]["Next"]["PosX"] = 694
tTaskTemplate[3516]["Next"]["PosY"] = 674
-- 中间环节
tTaskTemplate[3516]["Mid"] = {}
tTaskTemplate[3516]["Mid"]["NpcId"] = 8521
tTaskTemplate[3516]["Mid"]["MapId"] = 1015
tTaskTemplate[3516]["Mid"]["PosX"] = 740
tTaskTemplate[3516]["Mid"]["PosY"] = 624

-- 奖励
tTaskTemplate[3516]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3516]["RewSpace"] = 1
tTaskTemplate[3516]["RewExpTime"] = 120
-- tTaskTemplate[3516]["RewMoney"] = 70000
-- tTaskTemplate[3516]["RewItemId1"] = 720027
-- tTaskTemplate[3516]["RewItemAttr1"] = "0 2"

-- 传递军令
-- 接任务
tTaskTemplate[3517] = {}
tTaskTemplate[3517]["IsReceived"] = {400,700}
tTaskTemplate[3517]["TaskId"] = 3517
tTaskTemplate[3517]["FrontTask"] = 3516
tTaskTemplate[3517]["RevSpace"] = 1
tTaskTemplate[3517]["AcceptTask"] = {100,300}
tTaskTemplate[3517]["GetItemId1"] = 711451

-- 对白编号表
tTaskTemplate[3517]["MeetSpace"] = "3-3" 	-- 接任务背包不足
tTaskTemplate[3517]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3517]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[3517]["HandOverItem"] = "1-1" 	-- 任务中
tTaskTemplate[3517]["HasAccept"] = "2-2" 	-- 已接任务未完成
tTaskTemplate[3517]["HaveTaskItem"] = "2-4" -- 有任务物品
tTaskTemplate[3517]["NotSpace"] = "2-3" 	-- 没任务物品背包不足
tTaskTemplate[3517]["ReqTaskItem"] = "2-5" 	-- 补领任务物品成功
tTaskTemplate[3517]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3517]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3517]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3517]["ReqItemId1"] = 711451
tTaskTemplate[3517]["ReqItemCount1"] = 1
tTaskTemplate[3517]["NextTaskId"] = 3518
tTaskTemplate[3517]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3517]["Next"] = {}
tTaskTemplate[3517]["Next"]["NpcId"] = 8525
tTaskTemplate[3517]["Next"]["MapId"] = 1015
tTaskTemplate[3517]["Next"]["PosX"] = 586
tTaskTemplate[3517]["Next"]["PosY"] = 735

-- 奖励
tTaskTemplate[3517]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3517]["RewSpace"] = 5
tTaskTemplate[3517]["RewExpTime"] = 180
-- tTaskTemplate[3517]["RewMoney"] = 10000
-- tTaskTemplate[3517]["RewItemId1"] = 1088000
-- tTaskTemplate[3517]["RewItemAttr1"] = "0 5"

-- 清除鹰王
-- 接任务
tTaskTemplate[3518] = {}
tTaskTemplate[3518]["IsReceived"] = {400,700}
tTaskTemplate[3518]["TaskId"] = 3518
tTaskTemplate[3518]["FrontTask"] = 3517
tTaskTemplate[3518]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3518]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[3518]["MeetAccept"] = "1-3"	-- 接新任务对白
tTaskTemplate[3518]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[3518]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3518]["HandOverSpace"] = "3-4" 	--背包达上限

-- 交任务
tTaskTemplate[3518]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3518]["ReqMonsterId1"] = {19,78}
tTaskTemplate[3518]["ReqMonsterPos1"] = 1
tTaskTemplate[3518]["ReqMonsterCount1"] = 5
tTaskTemplate[3518]["NextTaskId"] = 3519
tTaskTemplate[3518]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3518]["MonsterTask"] = {300,700} 
tTaskTemplate[3518]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[3518]["KillMonsterFunc"] = QuestRecruit_MonsterDone

-- 后续任务NPC数据
tTaskTemplate[3518]["Next"] = {}
tTaskTemplate[3518]["Next"]["NpcId"] = 0
tTaskTemplate[3518]["Next"]["MapId"] = 1015
tTaskTemplate[3518]["Next"]["PosX"] = 513
tTaskTemplate[3518]["Next"]["PosY"] = 642
-- 中间环节
tTaskTemplate[3518]["Mid"] = {}
tTaskTemplate[3518]["Mid"]["NpcId"] = 8525
tTaskTemplate[3518]["Mid"]["MapId"] = 1015
tTaskTemplate[3518]["Mid"]["PosX"] = 586
tTaskTemplate[3518]["Mid"]["PosY"] = 735

-- 奖励
tTaskTemplate[3518]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3518]["RewSpace"] = 3
tTaskTemplate[3518]["RewExpTime"] = 180
-- tTaskTemplate[3518]["RewMoney"] = 70000
-- tTaskTemplate[3518]["RewItemId1"] = 720027
-- tTaskTemplate[3518]["RewItemAttr1"] = "0 3"
-- 【流星卷】*3--删除流星，额外弹出105，进入个人90级BOSS副本

-- 加固结界
-- 接任务
tTaskTemplate[3519] = {}
tTaskTemplate[3519]["IsReceived"] = {400,700}
tTaskTemplate[3519]["TaskId"] = 3519
tTaskTemplate[3519]["FrontTask"] = 3518
tTaskTemplate[3519]["RevSpace"] = 1
tTaskTemplate[3519]["AcceptTask"] = {100}
-- tTaskTemplate[3519]["GetItemId1"] = 720990

-- 对白编号表
-- tTaskTemplate[3519]["MeetSpace"] = "3-3" 	-- 接任务背包不足
tTaskTemplate[3519]["SubTask"] = "2-5" 		-- 已完成任务对白
tTaskTemplate[3519]["MeetAccept"] = "1-6"	-- 接新任务对白
-- tTaskTemplate[3519]["HandOverItem"] = "2-1" 	-- 已接任务未完成
-- tTaskTemplate[3519]["HaveTaskItem"] = "2-3" -- 有任务物品
-- tTaskTemplate[3519]["NotSpace"] = "2-2" 	-- 没任务物品背包不足
-- tTaskTemplate[3519]["ReqTaskItem"] = "2-4" 	-- 补领任务物品成功
tTaskTemplate[3519]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3519]["HandOverSpace"] = "3-5" 	--背包达上限

-- 交任务
tTaskTemplate[3519]["IsHandOver"] = {900}		--任务交任务条件配置表
-- tTaskTemplate[3519]["ReqItemId1"] = 720990
-- tTaskTemplate[3519]["ReqItemCount1"] = 1
-- tTaskTemplate[3519]["Data1"] = 1
tTaskTemplate[3519]["NextTaskId"] = 3520
tTaskTemplate[3519]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3519]["Next"] = {}
tTaskTemplate[3519]["Next"]["NpcId"] = 0
tTaskTemplate[3519]["Next"]["MapId"] = 1015
tTaskTemplate[3519]["Next"]["PosX"] = 336
tTaskTemplate[3519]["Next"]["PosY"] = 489
--中间环节
tTaskTemplate[3519]["Mid"] = {}
tTaskTemplate[3519]["Mid"]["NpcId"] = 8525
tTaskTemplate[3519]["Mid"]["MapId"] = 1015
tTaskTemplate[3519]["Mid"]["PosX"] = 586
tTaskTemplate[3519]["Mid"]["PosY"] = 735

-- 奖励
tTaskTemplate[3519]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3519]["RewSpace"] = 2
tTaskTemplate[3519]["RewExpTime"] = 120
-- tTaskTemplate[3519]["RewMoney"] = 40000
-- tTaskTemplate[3519]["RewItemId1"] = 730003
-- tTaskTemplate[3519]["RewItemAttr1"] = "0 1"
-- tTaskTemplate[3519]["RewItemId2"] = 1060020
-- tTaskTemplate[3519]["RewItemAttr2"] = "0 3"

-- 联合御敌
-- 接任务
tTaskTemplate[3520] = {}
tTaskTemplate[3520]["IsReceived"] = {400,700}
tTaskTemplate[3520]["TaskId"] = 3520
tTaskTemplate[3520]["FrontTask"] = 3519
tTaskTemplate[3520]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3520]["SubTask"] = "1-1" 		-- 已完成任务对白
tTaskTemplate[3520]["MeetAccept"] = "2-6"	-- 接新任务对白
-- tTaskTemplate[3520]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[3520]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3520]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3520]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3520]["NextTaskId"] = 3521
tTaskTemplate[3520]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3520]["Next"] = {}
tTaskTemplate[3520]["Next"]["NpcId"] = 8534
tTaskTemplate[3520]["Next"]["MapId"] = 1015
tTaskTemplate[3520]["Next"]["PosX"] = 347
tTaskTemplate[3520]["Next"]["PosY"] = 464

-- 奖励
tTaskTemplate[3520]["HandOverTask"] = {200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3520]["RewSpace"] = 3
tTaskTemplate[3520]["RewExpTime"] = 120
-- tTaskTemplate[3520]["RewMoney"] = 10000
tTaskTemplate[3520]["RewItemId1"] = 1002020		-- 冷香草*300
tTaskTemplate[3520]["RewItemAttr1"] = "0 10 3"
-- 道士
tTaskTemplate[3520]["RewardProItem"] = {}
tTaskTemplate[3520]["RewardProItem"][1] = {}
tTaskTemplate[3520]["RewardProItem"][1]["MinPro"] = 100	
tTaskTemplate[3520]["RewardProItem"][1]["MaxPro"] = 145	
tTaskTemplate[3520]["RewardProItem"][1]["ProItem"] = {}	
tTaskTemplate[3520]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3520]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030	-- 三才归化丹*300
tTaskTemplate[3520]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"

-- 副官家书
-- 接任务
tTaskTemplate[3521] = {}
tTaskTemplate[3521]["IsReceived"] = {400,700}
tTaskTemplate[3521]["TaskId"] = 3521
tTaskTemplate[3521]["FrontTask"] = 3520
tTaskTemplate[3521]["RevSpace"] = 1
tTaskTemplate[3521]["AcceptTask"] = {100,300}
tTaskTemplate[3521]["GetItemId1"] = 711315

-- 对白编号表
tTaskTemplate[3521]["MeetSpace"] = "3-3" 	-- 接任务背包不足
tTaskTemplate[3521]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3521]["MeetAccept"] = "1-2"	-- 接新任务对白
tTaskTemplate[3521]["HasAccept"] = "1-3" 	-- 已接任务未完成
tTaskTemplate[3521]["HandOverItem"] = "1-1"	
tTaskTemplate[3521]["HaveTaskItem"] = "1-5" -- 有任务物品
tTaskTemplate[3521]["NotSpace"] = "1-4" 	-- 没任务物品背包不足
tTaskTemplate[3521]["ReqTaskItem"] = "1-6" 	-- 补领任务物品成功
tTaskTemplate[3521]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3521]["HandOverSpace"] = "3-2" 	--背包达上限

-- 交任务
tTaskTemplate[3521]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3521]["ReqItemId1"] = 711315
tTaskTemplate[3521]["ReqItemCount1"] = 1
tTaskTemplate[3521]["NextTaskId"] = 3522
tTaskTemplate[3521]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3521]["Next"] = {}
tTaskTemplate[3521]["Next"]["NpcId"] = 8536
tTaskTemplate[3521]["Next"]["MapId"] = 1015
tTaskTemplate[3521]["Next"]["PosX"] = 360
tTaskTemplate[3521]["Next"]["PosY"] = 393

-- 奖励
tTaskTemplate[3521]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3521]["RewSpace"] = 3
tTaskTemplate[3521]["RewExpTime"] = 620
-- tTaskTemplate[3521]["RewMoney"] = 10000
-- tTaskTemplate[3521]["RewItemId1"] = 1088000
-- tTaskTemplate[3521]["RewItemAttr1"] = "0 3"
-- tTaskTemplate[3521]["RewItemId2"] = 1060020
-- tTaskTemplate[3521]["RewItemAttr2"] = "0 3"

-- 夺回粮食
-- 接任务
tTaskTemplate[3522] = {}
tTaskTemplate[3522]["IsReceived"] = {400,700}
tTaskTemplate[3522]["TaskId"] = 3522
tTaskTemplate[3522]["FrontTask"] = 3521
tTaskTemplate[3522]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3522]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[3522]["MeetAccept"] = "1-3"	-- 接新任务对白
tTaskTemplate[3522]["HandOverItem"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[3522]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3522]["HandOverSpace"] = "3-4" 	--背包达上限

-- 交任务
tTaskTemplate[3522]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3522]["ReqItemId1"] = 711467
tTaskTemplate[3522]["ReqItemCount1"] = 5
tTaskTemplate[3522]["NextTaskId"] = 3523
tTaskTemplate[3522]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3522]["MonsterTask"] = {300,500,800} 
tTaskTemplate[3522]["MonsterFunc"] = QuestRecruit_MustKillItem
tTaskTemplate[3522]["ReqItemFunc"] = QuestRecruit_MonsterDone
tTaskTemplate[3522]["ReqMonsterId1"] = {55,79} 		-- 交任务需要怪物ID
tTaskTemplate[3522]["MustSpace"] = 1 				--怪物掉落需要检测背包空间
tTaskTemplate[3522]["MustDropMode1"] = 2			-- 掉落背包
tTaskTemplate[3522]["MustFallItemId1"] = {}
tTaskTemplate[3522]["MustFallItemId1"][1] = {}
tTaskTemplate[3522]["MustFallItemId1"][1]["ItemId"] = 711467
tTaskTemplate[3522]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3522]["MustFallItemId1"][1]["ItemLimit"] = 5

-- 后续任务NPC数据
tTaskTemplate[3522]["Next"] = {}
tTaskTemplate[3522]["Next"]["NpcId"] = 0
tTaskTemplate[3522]["Next"]["MapId"] = 1015
tTaskTemplate[3522]["Next"]["PosX"] = 275
tTaskTemplate[3522]["Next"]["PosY"] = 187
-- 中间环节
tTaskTemplate[3522]["Mid"] = {}
tTaskTemplate[3522]["Mid"]["NpcId"] = 8536
tTaskTemplate[3522]["Mid"]["MapId"] = 1015
tTaskTemplate[3522]["Mid"]["PosX"] = 360
tTaskTemplate[3522]["Mid"]["PosY"] = 393

-- 奖励
tTaskTemplate[3522]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
tTaskTemplate[3522]["RewSpace"] = 1
tTaskTemplate[3522]["RewExpTime"] = 860
-- tTaskTemplate[3522]["RewMoney"] = 70000
-- 【流星卷】*3--换成鞋子，160199
tTaskTemplate[3522]["RewItemId1"] = 160199
tTaskTemplate[3522]["RewItemAttr1"] = "0 1 3"

-- 慈母手中线
-- 接任务
tTaskTemplate[3523] = {}
tTaskTemplate[3523]["IsReceived"] = {400,700}
tTaskTemplate[3523]["TaskId"] = 3523
tTaskTemplate[3523]["FrontTask"] = 3522
tTaskTemplate[3523]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3523]["SubTask"] = "1-8" 		-- 已完成任务对白
tTaskTemplate[3523]["MeetAccept"] = "1-6"	-- 接新任务对白
tTaskTemplate[3523]["HandOverItem"] = "1-7" 	-- 已接任务未完成
tTaskTemplate[3523]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3523]["HandOverSpace"] = "3-5" 	--背包达上限

-- 交任务
tTaskTemplate[3523]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3523]["ReqItemId1"] = 711476
tTaskTemplate[3523]["ReqItemCount1"] = 1
tTaskTemplate[3523]["NextTaskId"] = 3524
tTaskTemplate[3523]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[3523]["MonsterTask"] = {300,500,800} 
tTaskTemplate[3523]["MonsterFunc"] = QuestRecruit_MustKillItem
tTaskTemplate[3523]["ReqItemFunc"] = QuestRecruit_MonsterDone
tTaskTemplate[3523]["ReqMonsterId1"] = {84} 		-- 交任务需要怪物ID
tTaskTemplate[3523]["MustSpace"] = 1 				--怪物掉落需要检测背包空间
tTaskTemplate[3523]["MustDropMode1"] = 2			-- 掉落背包
tTaskTemplate[3523]["MustFallItemId1"] = {}
tTaskTemplate[3523]["MustFallItemId1"][1] = {}
tTaskTemplate[3523]["MustFallItemId1"][1]["ItemId"] = 711476
tTaskTemplate[3523]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3523]["MustFallItemId1"][1]["ItemLimit"] = 1

-- 后续任务NPC数据
tTaskTemplate[3523]["Next"] = {}
tTaskTemplate[3523]["Next"]["NpcId"] = 0
tTaskTemplate[3523]["Next"]["MapId"] = 1015
tTaskTemplate[3523]["Next"]["PosX"] = 525
tTaskTemplate[3523]["Next"]["PosY"] = 345
-- 中间环节
tTaskTemplate[3523]["Mid"] = {}
tTaskTemplate[3523]["Mid"]["NpcId"] = 8536
tTaskTemplate[3523]["Mid"]["MapId"] = 1015
tTaskTemplate[3523]["Mid"]["PosX"] = 360
tTaskTemplate[3523]["Mid"]["PosY"] = 393

-- 奖励
tTaskTemplate[3523]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3523]["RewSpace"] = 1
tTaskTemplate[3523]["RewExpTime"] = 180
-- tTaskTemplate[3523]["RewMoney"] = 70000
-- tTaskTemplate[3523]["RewItemId1"] = 730003
-- tTaskTemplate[3523]["RewItemAttr1"] = "0 1"

-- 游子身上衣
-- 接任务
tTaskTemplate[3524] = {}
tTaskTemplate[3524]["IsReceived"] = {400,700}
tTaskTemplate[3524]["TaskId"] = 3524
tTaskTemplate[3524]["FrontTask"] = 3523
tTaskTemplate[3524]["RevSpace"] = 1
tTaskTemplate[3524]["AcceptTask"] = {100,300}
tTaskTemplate[3524]["GetItemId1"] = 3007634

-- 对白编号表
tTaskTemplate[3524]["MeetSpace"] = "3-3" 	-- 接任务背包不足
tTaskTemplate[3524]["SubTask"] = "1-8" 		-- 已完成任务对白
tTaskTemplate[3524]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[3524]["HandOverItem"] = "2-2" 	-- 已接任务未完成
tTaskTemplate[3524]["HandOverMoney"] = "3-1" 	--金币达上限
tTaskTemplate[3524]["HandOverSpace"] = "3-4" 	--背包达上限
tTaskTemplate[3524]["HasAccept"] = "2-4"		--任务中
tTaskTemplate[3524]["HaveTaskItem"] = "2-5" 	--有任务物品
tTaskTemplate[3524]["NotSpace"] = "2-6" 		--没任务物品背包不足
tTaskTemplate[3524]["ReqTaskItem"] = "2-7"		--补领成功


-- 交任务
tTaskTemplate[3524]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3524]["ReqItemId1"] = 3007634
tTaskTemplate[3524]["ReqItemCount1"] = 1
tTaskTemplate[3524]["NextTaskId"] = 3578
tTaskTemplate[3524]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3524]["Next"] = {}
tTaskTemplate[3524]["Next"]["NpcId"] = 8534
tTaskTemplate[3524]["Next"]["MapId"] = 1015
tTaskTemplate[3524]["Next"]["PosX"] = 347
tTaskTemplate[3524]["Next"]["PosY"] = 464

-- 奖励
tTaskTemplate[3524]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
-- tTaskTemplate[3524]["RewSpace"] = 2
tTaskTemplate[3524]["RewExpTime"] = 180
-- tTaskTemplate[3524]["RewMoney"] = 10000
-- tTaskTemplate[3524]["RewItemId1"] = 1088000
-- tTaskTemplate[3524]["RewItemAttr1"] = "0 3"

-- 回禀总兵
-- 接任务
tTaskTemplate[3578] = {}
tTaskTemplate[3578]["IsReceived"] = {400,700}
tTaskTemplate[3578]["TaskId"] = 3578
tTaskTemplate[3578]["FrontTask"] = 3524
tTaskTemplate[3578]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3578]["SubTask"] = "14-1" 		-- 已完成任务对白
tTaskTemplate[3578]["MeetAccept"] = "4-1"	-- 接新任务对白
tTaskTemplate[3578]["HandOverSpace"] = "14-2" 	--背包达上限

-- 交任务
tTaskTemplate[3578]["IsHandOver"] = {900}		--任务交任务条件配置表
-- tTaskTemplate[3578]["NextTaskId"] = 3606
tTaskTemplate[3578]["NoviceTitle"] = 11 			-- 图片引导编号
-------------
-- tTaskTemplate[3578]["OtherTaskId1"] = 3580 		-- 支线任务1
-- tTaskTemplate[3578]["OtherLev1"] = 120 			-- 任务领取等级上限
-- tTaskTemplate[3578]["OtherDataPos1"] = 1 		-- Data存储位
------------
tTaskTemplate[3578]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3578]["Next"] = {}
tTaskTemplate[3578]["Next"]["NpcId"] = 2001
tTaskTemplate[3578]["Next"]["MapId"] = 1002
tTaskTemplate[3578]["Next"]["PosX"] = 439
tTaskTemplate[3578]["Next"]["PosY"] = 464

-- 奖励
tTaskTemplate[3578]["HandOverTask"] = {200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3578]["RewSpace"] = 3
tTaskTemplate[3578]["RewExpTime"] = 240
-- tTaskTemplate[3578]["RewMoney"] = 10000
tTaskTemplate[3578]["RewItemId1"] = 1002020		-- 冷香草*300
tTaskTemplate[3578]["RewItemAttr1"] = "0 10 3"
-- 道士
tTaskTemplate[3578]["RewardProItem"] = {}
tTaskTemplate[3578]["RewardProItem"][1] = {}
tTaskTemplate[3578]["RewardProItem"][1]["MinPro"] = 100	
tTaskTemplate[3578]["RewardProItem"][1]["MaxPro"] = 145	
tTaskTemplate[3578]["RewardProItem"][1]["ProItem"] = {}	
tTaskTemplate[3578]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3578]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*300
tTaskTemplate[3578]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"
-- 【冷香草】*20、【小还丹】*20--职业进阶，获得技能，开启日常（支线），额外弹105进入100级副本

-- 锋芒毕露
tTaskTemplate[3579] = {}
tTaskTemplate[3579]["IsReceived"] = {400,700}
tTaskTemplate[3579]["TaskId"] = 3579
tTaskTemplate[3579]["FrontTask"] = 3578
tTaskTemplate[3579]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3579]["SubTask"] = "14-5" 		-- 已完成任务对白
tTaskTemplate[3579]["MeetAccept"] = "14-4"	-- 接新任务对白
tTaskTemplate[3579]["HandOverDetail"] = "14-6" 	-- 交任务data位不满足
tTaskTemplate[3579]["HandOverSpace"] = "14-3" 	--背包达上限

-- 交任务
tTaskTemplate[3579]["IsHandOver"] = {1100}		--任务交任务条件配置表
tTaskTemplate[3579]["NextTaskId"] = 3606
tTaskTemplate[3579]["Data1"] = 100
tTaskTemplate[3579]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3579]["Next"] = {}
tTaskTemplate[3579]["Next"]["NpcId"] = 0
tTaskTemplate[3579]["Next"]["MapId"] = 1015
tTaskTemplate[3579]["Next"]["PosX"] = 324
tTaskTemplate[3579]["Next"]["PosY"] = 500

-- 奖励
tTaskTemplate[3579]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3579]["RewSpace"] = 1
tTaskTemplate[3579]["RewItemId1"] = 729242 		-- 回气丹*3
tTaskTemplate[3579]["RewItemAttr1"] = "0 3"

-- 滴水穿石（循）金臂鸟人
-- 接任务
tTaskTemplate[3580] = {}
tTaskTemplate[3580]["IsReceived"] = {400,700}
tTaskTemplate[3580]["TaskId"] = 3580
tTaskTemplate[3580]["FrontTask"] = 3578

-- 对白编号表
tTaskTemplate[3580]["SubTask"] = "1-2" 		-- 已完成任务对白
tTaskTemplate[3580]["HandOverMonster"] = "1-3" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3580]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3580]["ReqMonsterId1"] = {18} 		-- 交任务需要怪物ID
tTaskTemplate[3580]["ReqMonsterCount1"] = 60 	-- 怪物数量
tTaskTemplate[3580]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3580]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3580]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3580]["NextTaskId"] = 3581
tTaskTemplate[3580]["NextLev"] = 120			--下个任务等级上限
-------------
tTaskTemplate[3580]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3580]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3580]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3580]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3580]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3580]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3580]["Next"] = {}
tTaskTemplate[3580]["Next"]["NpcId"] = 0
tTaskTemplate[3580]["Next"]["MapId"] = 1015
tTaskTemplate[3580]["Next"]["PosX"] = 883
tTaskTemplate[3580]["Next"]["PosY"] = 581
-- 中间环节
tTaskTemplate[3580]["Mid"] = {}
tTaskTemplate[3580]["Mid"]["NpcId"] = 8512
tTaskTemplate[3580]["Mid"]["MapId"] = 1015
tTaskTemplate[3580]["Mid"]["PosX"] = 715
tTaskTemplate[3580]["Mid"]["PosY"] = 576

-- 奖励
tTaskTemplate[3580]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3580]["RewExpTime"] = 180

-- 滴水穿石（循）银羽鹰王
-- 接任务
tTaskTemplate[3581] = {}
tTaskTemplate[3581]["IsReceived"] = {400,700}
tTaskTemplate[3581]["TaskId"] = 3581
tTaskTemplate[3581]["FrontTask"] = 3578

-- 对白编号表
tTaskTemplate[3581]["SubTask"] = "1-4" 		-- 已完成任务对白
tTaskTemplate[3581]["HandOverMonster"] = "1-5" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3581]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3581]["ReqMonsterId1"] = {19} 		-- 交任务需要怪物ID
tTaskTemplate[3581]["ReqMonsterCount1"] = 60 	-- 怪物数量
tTaskTemplate[3581]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3581]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3581]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3581]["NextTaskId"] = 3582
tTaskTemplate[3581]["NextLev"] = 120			--下个任务等级上限
-------------
tTaskTemplate[3581]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3581]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3581]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3581]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3581]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3581]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3581]["Next"] = {}
tTaskTemplate[3581]["Next"]["NpcId"] = 0
tTaskTemplate[3581]["Next"]["MapId"] = 1015
tTaskTemplate[3581]["Next"]["PosX"] = 513
tTaskTemplate[3581]["Next"]["PosY"] = 642
-- 中间环节
tTaskTemplate[3581]["Mid"] = {}
tTaskTemplate[3581]["Mid"]["NpcId"] = 8512
tTaskTemplate[3581]["Mid"]["MapId"] = 1015
tTaskTemplate[3581]["Mid"]["PosX"] = 715
tTaskTemplate[3581]["Mid"]["PosY"] = 576

-- 奖励
tTaskTemplate[3581]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3581]["RewExpTime"] = 180

-- 滴水穿石（循）湖岛强匪
-- 接任务
tTaskTemplate[3582] = {}
tTaskTemplate[3582]["IsReceived"] = {400,700}
tTaskTemplate[3582]["TaskId"] = 3582
tTaskTemplate[3582]["FrontTask"] = 3578

-- 对白编号表
tTaskTemplate[3582]["SubTask"] = "1-6" 		-- 已完成任务对白
tTaskTemplate[3582]["HandOverMonster"] = "1-7" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3582]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3582]["ReqMonsterId1"] = {55} 		-- 交任务需要怪物ID
tTaskTemplate[3582]["ReqMonsterCount1"] = 60 	-- 怪物数量
tTaskTemplate[3582]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3582]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3582]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3582]["NextTaskId"] = 3580
tTaskTemplate[3582]["NextLev"] = 120		--下个任务等级上限
-------------
tTaskTemplate[3582]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3582]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3582]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3582]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3582]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3582]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3582]["Next"] = {}
tTaskTemplate[3582]["Next"]["NpcId"] = 0
tTaskTemplate[3582]["Next"]["MapId"] = 1015
tTaskTemplate[3582]["Next"]["PosX"] = 262
tTaskTemplate[3582]["Next"]["PosY"] = 117
-- 中间环节
tTaskTemplate[3582]["Mid"] = {}
tTaskTemplate[3582]["Mid"]["NpcId"] = 8512
tTaskTemplate[3582]["Mid"]["MapId"] = 1015
tTaskTemplate[3582]["Mid"]["PosX"] = 715
tTaskTemplate[3582]["Mid"]["PosY"] = 576

-- 奖励
tTaskTemplate[3582]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3582]["RewExpTime"] = 180

------------------------------------------杀怪物部分-----------------------------------------
-- 金臂鸟人 扫荡金臂
tTaskMonster[18] = {3515,3580}
-- 狂暴鸟人 鸟口拔喙
tTaskMonster[77] = {3516}
-- 银羽鹰王 清除鹰王
tTaskMonster[19] = {3518,3581}
tTaskMonster[78] = {3518}
-- 湖岛强匪 夺回粮食
tTaskMonster[55] = {3522,3582}
tTaskMonster[79] = {3522}
-- 湖岛匪兵 慈母手中线
tTaskMonster[84] = {3523}
--------------------------------------NPC模块-------------------------------------------
-- 白鹭城城主 8510
tNpcFace[1031] = 18
tNpcGossip[8510] = tNpcGossip[8510] or DefaultNpc:new{}
tNpcGossip[8510]["OptionHidden"] = 1
-- 交任务
tNpcGossip[8510]["Text1-1"] = {111,112}
tNpcGossip[8510]["Text111"] = tQuestRecruit_Text[8510]["111"]
tNpcGossip[8510]["Text112"] = tQuestRecruit_Text[8510]["112"]
tNpcGossip[8510]["tOption1-1"] = {1}
tNpcGossip[8510]["Option1"] = tQuestRecruit_Text[8510]["Option1"]
tNpcGossip[8510]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3513</N>8510</N>1"

-- 接城中巡逻任务
tNpcGossip[8510]["Text1-2"] = {121,122}
tNpcGossip[8510]["Text121"] = tQuestRecruit_Text[8510]["121"]
tNpcGossip[8510]["Text122"] = tQuestRecruit_Text[8510]["122"]
tNpcGossip[8510]["tOption1-2"] = {2}
tNpcGossip[8510]["Option2"] = tQuestRecruit_Text[8510]["Option2"]
tNpcGossip[8510]["OptionFunc2"] = "QuestRecruit_FindWay</N>3514"

-- 任务已接未完成
tNpcGossip[8510]["Text1-3"] = {131}
tNpcGossip[8510]["Text131"] = tQuestRecruit_Text[8510]["131"]
tNpcGossip[8510]["tOption1-3"] = {4}
tNpcGossip[8510]["Option4"] = tQuestRecruit_Text[8510]["Option4"]
tNpcGossip[8510]["OptionFunc4"] = "QuestRecruit_FindWay</N>3514"

-- 闲聊
tNpcGossip[8510]["Text1-4"] = {141,142}
tNpcGossip[8510]["Text141"] = tQuestRecruit_Text[8510]["141"]
tNpcGossip[8510]["Text142"] = tQuestRecruit_Text[8510]["142"]
tNpcGossip[8510]["tOption1-4"] = {5}
tNpcGossip[8510]["Option5"] = tQuestRecruit_Text[8510]["Option5"]

-- 金币达上限
tNpcGossip[8510]["Text3-1"] = {311}
tNpcGossip[8510]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8510]["tOption3-1"] = {311}
tNpcGossip[8510]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限 3513
tNpcGossip[8510]["Text3-2"] = {321}
tNpcGossip[8510]["Text321"] = tQuestRecruit_Text[8510]["321"]
tNpcGossip[8510]["tOption3-2"] = {321}
tNpcGossip[8510]["Option321"] = tQuestRecruit_Text[8510]["Option321"]

---------------------------------------------------------
-- 白鹭城守将 8521
tNpcFace[1042] = 30
tNpcGossip[8521] = tNpcGossip[8521] or DefaultNpc:new{}
tNpcGossip[8521]["OptionHidden"] = 1

-- 未完成任务
tNpcGossip[8521]["Text1-1"] = {111}
tNpcGossip[8521]["Text111"] = tQuestRecruit_Text[8521]["111"]
tNpcGossip[8521]["tOption1-1"] = {1}
tNpcGossip[8521]["Option1"] = tQuestRecruit_Text[8521]["Option1"]

-- 完成任务 接扫荡金臂任务
tNpcGossip[8521]["Text1-2"] = {121}
tNpcGossip[8521]["Text121"] = tQuestRecruit_Text[8521]["121"]
tNpcGossip[8521]["tOption1-2"] = {2}
tNpcGossip[8521]["Option2"] = tQuestRecruit_Text[8521]["Option2"]
tNpcGossip[8521]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3514</N>8521</N>1"

-- 扫荡金臂任务
tNpcGossip[8521]["Text1-3"] = {131,132}
tNpcGossip[8521]["Text131"] = tQuestRecruit_Text[8521]["131"]
tNpcGossip[8521]["Text132"] = tQuestRecruit_Text[8521]["132"]
tNpcGossip[8521]["tOption1-3"] = {3}
tNpcGossip[8521]["Option3"] = tQuestRecruit_Text[8521]["Option3"]
tNpcGossip[8521]["OptionFunc3"] = "QuestRecruit_FindWay</N>3515"

-- 【任务已接未完成】
tNpcGossip[8521]["Text1-4"] = {141}
tNpcGossip[8521]["Text141"] = tQuestRecruit_Text[8521]["141"]
tNpcGossip[8521]["tOption1-4"] = {5}
tNpcGossip[8521]["Option5"] = tQuestRecruit_Text[8521]["Option5"]
tNpcGossip[8521]["OptionFunc5"] = "QuestRecruit_FindWay</N>3515"

--【完成任务】接鸟口拔喙任务
tNpcGossip[8521]["Text1-5"] = {151}
tNpcGossip[8521]["Text151"] = tQuestRecruit_Text[8521]["151"]
tNpcGossip[8521]["tOption1-5"] = {6}
tNpcGossip[8521]["Option6"] = tQuestRecruit_Text[8521]["Option6"]
tNpcGossip[8521]["OptionFunc6"] = "Task_IsHandOverByNpc</N>3515</N>8521</N>1"

-- 鸟口拔喙
tNpcGossip[8521]["Text1-6"] = {161,162}
tNpcGossip[8521]["Text161"] = tQuestRecruit_Text[8521]["161"]
tNpcGossip[8521]["Text162"] = tQuestRecruit_Text[8521]["162"]
tNpcGossip[8521]["tOption1-6"] = {7}
tNpcGossip[8521]["Option7"] = tQuestRecruit_Text[8521]["Option7"]
tNpcGossip[8521]["OptionFunc7"] = "QuestRecruit_FindWay</N>3516"

--【任务已接未完成】
tNpcGossip[8521]["Text1-7"] = {171}
tNpcGossip[8521]["Text171"] = tQuestRecruit_Text[8521]["171"]
tNpcGossip[8521]["tOption1-7"] = {9}
tNpcGossip[8521]["Option9"] = tQuestRecruit_Text[8521]["Option9"]
tNpcGossip[8521]["OptionFunc9"] = "QuestRecruit_FindWay</N>3516"

-- 【完成任务】 【接传递军令任务】
tNpcGossip[8521]["Text1-8"] = {181}
tNpcGossip[8521]["Text181"] = tQuestRecruit_Text[8521]["181"]
tNpcGossip[8521]["tOption1-8"] = {10}
tNpcGossip[8521]["Option10"] = tQuestRecruit_Text[8521]["Option10"]
tNpcGossip[8521]["OptionFunc10"] = "Task_IsHandOverByNpc</N>3516</N>8521</N>1"

-- 传递军令
tNpcGossip[8521]["Text2-1"] = {211,212}
tNpcGossip[8521]["Text211"] = tQuestRecruit_Text[8521]["211"]
tNpcGossip[8521]["Text212"] = tQuestRecruit_Text[8521]["212"]
tNpcGossip[8521]["tOption2-1"] = {11}
tNpcGossip[8521]["Option11"] = tQuestRecruit_Text[8521]["Option11"]
tNpcGossip[8521]["OptionFunc11"] = "QuestRecruit_FindWay</N>3517"

-- 【任务已接未完成】
tNpcGossip[8521]["Text2-2"] = {221}
tNpcGossip[8521]["Text221"] = tQuestRecruit_Text[8521]["221"]
tNpcGossip[8521]["tOption2-2"] = {13,14}
tNpcGossip[8521]["Option13"] = tQuestRecruit_Text[8521]["Option13"]
tNpcGossip[8521]["OptionFunc13"] = "QuestRecruit_ReqTaskItem</N>3517</N>8521"
tNpcGossip[8521]["Option14"] = tQuestRecruit_Text[8521]["Option14"]

-- 失败、背包满
tNpcGossip[8521]["Text2-3"] = {231}
tNpcGossip[8521]["Text231"] = tQuestRecruit_Text[8521]["231"]
tNpcGossip[8521]["tOption2-3"] = {15}
tNpcGossip[8521]["Option15"] = tQuestRecruit_Text[8521]["Option15"]

-- 失败、已有将军令
tNpcGossip[8521]["Text2-4"] = {241}
tNpcGossip[8521]["Text241"] = tQuestRecruit_Text[8521]["241"]
tNpcGossip[8521]["tOption2-4"] = {16}
tNpcGossip[8521]["Option16"] = tQuestRecruit_Text[8521]["Option16"]

-- 再领成功
tNpcGossip[8521]["Text2-5"] = {251}
tNpcGossip[8521]["Text251"] = tQuestRecruit_Text[8521]["251"]
tNpcGossip[8521]["tOption2-5"] = {17}
tNpcGossip[8521]["Option17"] = tQuestRecruit_Text[8521]["Option17"]

-- 【闲聊】
tNpcGossip[8521]["Text2-6"] = {261}
tNpcGossip[8521]["Text261"] = tQuestRecruit_Text[8521]["261"]
tNpcGossip[8521]["Text262"] = tQuestRecruit_Text[8521]["262"]
tNpcGossip[8521]["tOption2-6"] = {18}
tNpcGossip[8521]["Option18"] = tQuestRecruit_Text[8521]["Option18"]

-- 金币达上限
tNpcGossip[8521]["Text3-1"] = {311}
tNpcGossip[8521]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8521]["tOption3-1"] = {311}
tNpcGossip[8521]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 接任务空间不足
tNpcGossip[8521]["Text3-3"] = {331}
tNpcGossip[8521]["Text331"] = tQuestRecruit_Text[8521]["331"]
tNpcGossip[8521]["tOption3-3"] = {331}
tNpcGossip[8521]["Option331"] = tQuestRecruit_Text[8521]["Option331"]

-- 背包达上限 3514
tNpcGossip[8521]["Text3-2"] = {321}
tNpcGossip[8521]["Text321"] = tQuestRecruit_Text[8521]["321"]
tNpcGossip[8521]["tOption3-2"] = {321}
tNpcGossip[8521]["Option321"] = tQuestRecruit_Text[8521]["Option321"]

-- 背包达上限 3515
tNpcGossip[8521]["Text3-4"] = {341}
tNpcGossip[8521]["Text341"] = tQuestRecruit_Text[8521]["341"]
tNpcGossip[8521]["tOption3-4"] = {341}
tNpcGossip[8521]["Option341"] = tQuestRecruit_Text[8521]["Option321"]

-- 背包达上限 3516
tNpcGossip[8521]["Text3-5"] = {351}
tNpcGossip[8521]["Text351"] = tQuestRecruit_Text[8521]["351"]
tNpcGossip[8521]["tOption3-5"] = {351}
tNpcGossip[8521]["Option351"] = tQuestRecruit_Text[8521]["Option321"]
--------------------------------------------------
-- 湖岛守将 8525
tNpcFace[1046] = 30
tNpcGossip[8525] = tNpcGossip[8525] or DefaultNpc:new{}
tNpcGossip[8525]["OptionHidden"] = 1

-- 【未完成任务】
tNpcGossip[8525]["Text1-1"] = {111,112}
tNpcGossip[8525]["Text111"] = tQuestRecruit_Text[8525]["111"]
tNpcGossip[8525]["Text112"] = tQuestRecruit_Text[8525]["112"]
tNpcGossip[8525]["tOption1-1"] = {1}
tNpcGossip[8525]["Option1"] = tQuestRecruit_Text[8525]["Option1"]

-- 【完成任务】 接清除鹰王任务
tNpcGossip[8525]["Text1-2"] = {121,122}
tNpcGossip[8525]["Text121"] = tQuestRecruit_Text[8525]["121"]
tNpcGossip[8525]["Text122"] = tQuestRecruit_Text[8525]["122"]
tNpcGossip[8525]["tOption1-2"] = {2}
tNpcGossip[8525]["Option2"] = tQuestRecruit_Text[8525]["Option2"]
tNpcGossip[8525]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3517</N>8525</N>1"

-- 清除鹰王
tNpcGossip[8525]["Text1-3"] = {131,132}
tNpcGossip[8525]["Text131"] = tQuestRecruit_Text[8525]["131"]
tNpcGossip[8525]["Text132"] = tQuestRecruit_Text[8525]["132"]
tNpcGossip[8525]["tOption1-3"] = {3}
tNpcGossip[8525]["Option3"] = tQuestRecruit_Text[8525]["Option3"]
tNpcGossip[8525]["OptionFunc3"] = "QuestRecruit_FindWay</N>3518"

-- 【任务已接未完成】
tNpcGossip[8525]["Text1-4"] = {141}
tNpcGossip[8525]["Text141"] = tQuestRecruit_Text[8525]["141"]
tNpcGossip[8525]["tOption1-4"] = {5}
tNpcGossip[8525]["Option5"] = tQuestRecruit_Text[8525]["Option5"]
tNpcGossip[8525]["OptionFunc5"] = "QuestRecruit_FindWay</N>3518"

-- 【完成任务】 接加固结界任务
tNpcGossip[8525]["Text1-5"] = {151,152}
tNpcGossip[8525]["Text151"] = tQuestRecruit_Text[8525]["151"]
tNpcGossip[8525]["Text152"] = tQuestRecruit_Text[8525]["152"]
tNpcGossip[8525]["tOption1-5"] = {6}
tNpcGossip[8525]["Option6"] = tQuestRecruit_Text[8525]["Option6"]
tNpcGossip[8525]["OptionFunc6"] = "Task_IsHandOverByNpc</N>3518</N>8525</N>1"

-- 加固结界任务
tNpcGossip[8525]["Text1-6"] = {161,162}
tNpcGossip[8525]["Text161"] = tQuestRecruit_Text[8525]["161"]
tNpcGossip[8525]["Text162"] = tQuestRecruit_Text[8525]["162"]
-- tNpcGossip[8525]["Text163"] = tQuestRecruit_Text[8525]["163"]
tNpcGossip[8525]["tOption1-6"] = {7}
tNpcGossip[8525]["Option7"] = tQuestRecruit_Text[8525]["Option7"]
tNpcGossip[8525]["OptionFunc7"] = "QuestRecruit_FindWay</N>3519"

-- 【完成任务】接联合御敌任务
tNpcGossip[8525]["Text2-5"] = {251,252}
tNpcGossip[8525]["Text251"] = tQuestRecruit_Text[8525]["251"]
tNpcGossip[8525]["Text252"] = tQuestRecruit_Text[8525]["252"]
tNpcGossip[8525]["tOption2-5"] = {14}
tNpcGossip[8525]["Option14"] = tQuestRecruit_Text[8525]["Option14"]
tNpcGossip[8525]["OptionFunc14"] = "Task_IsHandOverByNpc</N>3519</N>8525</N>1"

-- 联合御敌任务
tNpcGossip[8525]["Text2-6"] = {261,262}
tNpcGossip[8525]["Text261"] = tQuestRecruit_Text[8525]["261"]
tNpcGossip[8525]["Text262"] = tQuestRecruit_Text[8525]["262"]
tNpcGossip[8525]["tOption2-6"] = {15}
tNpcGossip[8525]["Option15"] = tQuestRecruit_Text[8525]["Option15"]
tNpcGossip[8525]["OptionFunc15"] = "QuestRecruit_FindWay</N>3520"

--闲聊
tNpcGossip[8525]["Text2-7"] = {271,272}
tNpcGossip[8525]["Text271"] = tQuestRecruit_Text[8525]["271"]
tNpcGossip[8525]["Text272"] = tQuestRecruit_Text[8525]["272"]
tNpcGossip[8525]["tOption2-7"] = {17}
tNpcGossip[8525]["Option17"] = tQuestRecruit_Text[8525]["Option17"]

-- 金币达上限
tNpcGossip[8525]["Text3-1"] = {311}
tNpcGossip[8525]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8525]["tOption3-1"] = {311}
tNpcGossip[8525]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 接任务空间不足
tNpcGossip[8525]["Text3-3"] = {331}
tNpcGossip[8525]["Text331"] = tQuestRecruit_Text[8525]["331"]
tNpcGossip[8525]["tOption3-3"] = {331}
tNpcGossip[8525]["Option331"] = tQuestRecruit_Text[8525]["Option331"]

-- 背包达上限 3517
tNpcGossip[8525]["Text3-2"] = {321}
tNpcGossip[8525]["Text321"] = tQuestRecruit_Text[8525]["321"]
tNpcGossip[8525]["tOption3-2"] = {321}
tNpcGossip[8525]["Option321"] = tQuestRecruit_Text[8525]["Option321"]

-- 背包达上限 3518
tNpcGossip[8525]["Text3-4"] = {341}
tNpcGossip[8525]["Text341"] = tQuestRecruit_Text[8525]["341"]
tNpcGossip[8525]["tOption3-4"] = {341}
tNpcGossip[8525]["Option341"] = tQuestRecruit_Text[8525]["Option321"]

-- 背包达上限 3519
tNpcGossip[8525]["Text3-5"] = {351}
tNpcGossip[8525]["Text351"] = tQuestRecruit_Text[8525]["351"]
tNpcGossip[8525]["tOption3-5"] = {351}
tNpcGossip[8525]["Option351"] = tQuestRecruit_Text[8525]["Option321"]
--------------------------------------------------------------------
-- 守将副官 8534
tNpcFace[1055] = 66
tNpcGossip[8534] = tNpcGossip[8534] or DefaultNpc:new{}
tNpcGossip[8534]["OptionHidden"] = 1

-- 守将副官（交任务）
tNpcGossip[8534]["Text1-1"] = {111}
tNpcGossip[8534]["Text111"] = tQuestRecruit_Text[8534]["111"]
tNpcGossip[8534]["tOption1-1"] = {1}
tNpcGossip[8534]["Option1"] = tQuestRecruit_Text[8534]["Option1"]
tNpcGossip[8534]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3520</N>8534</N>1"

-- 接副官家书任务
tNpcGossip[8534]["Text1-2"] = {121,122}
tNpcGossip[8534]["Text121"] = tQuestRecruit_Text[8534]["121"]
tNpcGossip[8534]["Text122"] = tQuestRecruit_Text[8534]["122"]
tNpcGossip[8534]["tOption1-2"] = {2}
tNpcGossip[8534]["Option2"] = tQuestRecruit_Text[8534]["Option2"]
tNpcGossip[8534]["OptionFunc2"] = "QuestRecruit_FindWay</N>3521"

-- 【任务已接未完成】
tNpcGossip[8534]["Text1-3"] = {131}
tNpcGossip[8534]["Text131"] = tQuestRecruit_Text[8534]["131"]
tNpcGossip[8534]["tOption1-3"] = {4,5}
tNpcGossip[8534]["Option4"] = tQuestRecruit_Text[8534]["Option4"]
tNpcGossip[8534]["OptionFunc4"] = "QuestRecruit_ReqTaskItem</N>3521</N>8534"
tNpcGossip[8534]["Option5"] = tQuestRecruit_Text[8534]["Option5"]

-- 失败、背包满
tNpcGossip[8534]["Text1-4"] = {141}
tNpcGossip[8534]["Text141"] = tQuestRecruit_Text[8534]["141"]
tNpcGossip[8534]["tOption1-4"] = {6}
tNpcGossip[8534]["Option6"] = tQuestRecruit_Text[8534]["Option6"]

-- 失败、已有道具
tNpcGossip[8534]["Text1-5"] = {151}
tNpcGossip[8534]["Text151"] = tQuestRecruit_Text[8534]["151"]
tNpcGossip[8534]["tOption1-5"] = {7}
tNpcGossip[8534]["Option7"] = tQuestRecruit_Text[8534]["Option7"]

-- 再领成功
tNpcGossip[8534]["Text1-6"] = {161}
tNpcGossip[8534]["Text161"] = tQuestRecruit_Text[8534]["161"]
tNpcGossip[8534]["tOption1-6"] = {8}
tNpcGossip[8534]["Option8"] = tQuestRecruit_Text[8534]["Option8"]

-- 【闲聊】
tNpcGossip[8534]["Text1-7"] = {171,172}
tNpcGossip[8534]["Text171"] = tQuestRecruit_Text[8534]["171"]
tNpcGossip[8534]["Text172"] = tQuestRecruit_Text[8534]["172"]
tNpcGossip[8534]["tOption1-7"] = {9}
tNpcGossip[8534]["Option9"] = tQuestRecruit_Text[8534]["Option9"]

-- 【完成任务】
tNpcGossip[8534]["Text1-8"] = {181,182}
tNpcGossip[8534]["Text181"] = tQuestRecruit_Text[8534]["181"]
tNpcGossip[8534]["Text182"] = tQuestRecruit_Text[8534]["182"]
tNpcGossip[8534]["tOption1-8"] = {10}
tNpcGossip[8534]["Option10"] = tQuestRecruit_Text[8534]["Option10"]
tNpcGossip[8534]["OptionFunc10"] = "Task_IsHandOverByNpc</N>3524</N>8534</N>1"

-- 金币达上限
tNpcGossip[8534]["Text3-1"] = {311}
tNpcGossip[8534]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8534]["tOption3-1"] = {311}
tNpcGossip[8534]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 接任务空间不足
tNpcGossip[8534]["Text3-3"] = {331}
tNpcGossip[8534]["Text331"] = tQuestRecruit_Text[8534]["331"]
tNpcGossip[8534]["tOption3-3"] = {331}
tNpcGossip[8534]["Option331"] = tQuestRecruit_Text[8534]["Option331"]

-- 背包达上限 3520
tNpcGossip[8534]["Text3-2"] = {321}
tNpcGossip[8534]["Text321"] = tQuestRecruit_Text[8534]["321"]
tNpcGossip[8534]["tOption3-2"] = {321}
tNpcGossip[8534]["Option321"] = tQuestRecruit_Text[8534]["Option321"]

-- 背包达上限 3524
tNpcGossip[8534]["Text3-4"] = {341}
tNpcGossip[8534]["Text341"] = tQuestRecruit_Text[8534]["341"]
tNpcGossip[8534]["tOption3-4"] = {341}
tNpcGossip[8534]["Option341"] = tQuestRecruit_Text[8534]["Option321"]

-- 接回禀总兵	3578
tNpcGossip[8534]["Text4-1"] = {411}
tNpcGossip[8534]["Text411"] = tQuestRecruit_Text[8534]["411"]
tNpcGossip[8534]["tOption4-1"] = {411}
tNpcGossip[8534]["Option411"] = tQuestRecruit_Text[8534]["Option411"]
tNpcGossip[8534]["OptionFunc411"] = "QuestRecruit_OtherTaskPos</N>3578"

------------------------------------------------------------------------
-- 王氏 8536
tNpcFace[1057] = 111
tNpcGossip[8536] = tNpcGossip[8536] or DefaultNpc:new{}
tNpcGossip[8536]["OptionHidden"] = 1

-- 【未完成任务】
tNpcGossip[8536]["Text1-1"] = {111}
tNpcGossip[8536]["Text111"] = tQuestRecruit_Text[8536]["111"]
tNpcGossip[8536]["tOption1-1"] = {1}
tNpcGossip[8536]["Option1"] = tQuestRecruit_Text[8536]["Option1"]

-- 【完成任务】 接夺回粮食任务
tNpcGossip[8536]["Text1-2"] = {121,122}
tNpcGossip[8536]["Text121"] = tQuestRecruit_Text[8536]["121"]
tNpcGossip[8536]["Text122"] = tQuestRecruit_Text[8536]["122"]
tNpcGossip[8536]["tOption1-2"] = {2}
tNpcGossip[8536]["Option2"] = tQuestRecruit_Text[8536]["Option2"]
tNpcGossip[8536]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3521</N>8536</N>1"

-- 夺回粮食
tNpcGossip[8536]["Text1-3"] = {131,132}
tNpcGossip[8536]["Text131"] = tQuestRecruit_Text[8536]["131"]
tNpcGossip[8536]["Text132"] = tQuestRecruit_Text[8536]["132"]
tNpcGossip[8536]["tOption1-3"] = {3}
tNpcGossip[8536]["Option3"] = tQuestRecruit_Text[8536]["Option3"]
tNpcGossip[8536]["OptionFunc3"] = "QuestRecruit_FindWay</N>3522"

--【任务已接未完成】
tNpcGossip[8536]["Text1-4"] = {141}
tNpcGossip[8536]["Text141"] = tQuestRecruit_Text[8536]["141"]
tNpcGossip[8536]["tOption1-4"] = {5}
tNpcGossip[8536]["Option5"] = tQuestRecruit_Text[8536]["Option5"]
tNpcGossip[8536]["OptionFunc5"] = "QuestRecruit_FindWay</N>3522"

-- 【完成任务】接慈母手中线任务
tNpcGossip[8536]["Text1-5"] = {151}
tNpcGossip[8536]["Text151"] = tQuestRecruit_Text[8536]["151"]
tNpcGossip[8536]["tOption1-5"] = {6}
tNpcGossip[8536]["Option6"] = tQuestRecruit_Text[8536]["Option6"]
tNpcGossip[8536]["OptionFunc6"] = "Task_IsHandOverByNpc</N>3522</N>8536</N>1"

-- 慈母手中线任务
tNpcGossip[8536]["Text1-6"] = {161,162}
tNpcGossip[8536]["Text161"] = tQuestRecruit_Text[8536]["161"]
tNpcGossip[8536]["Text162"] = tQuestRecruit_Text[8536]["162"]
tNpcGossip[8536]["tOption1-6"] = {7}
tNpcGossip[8536]["Option7"] = tQuestRecruit_Text[8536]["Option7"]
tNpcGossip[8536]["OptionFunc7"] = "QuestRecruit_FindWay</N>3523"

-- 【任务已接未完成】
tNpcGossip[8536]["Text1-7"] = {171}
tNpcGossip[8536]["Text171"] = tQuestRecruit_Text[8536]["171"]
tNpcGossip[8536]["tOption1-7"] = {9}
tNpcGossip[8536]["Option9"] = tQuestRecruit_Text[8536]["Option9"]
tNpcGossip[8536]["OptionFunc9"] = "QuestRecruit_FindWay</N>3523"

-- 【完成任务】 接游子身上衣任务
tNpcGossip[8536]["Text1-8"] = {181}
tNpcGossip[8536]["Text181"] = tQuestRecruit_Text[8536]["181"]
tNpcGossip[8536]["tOption1-8"] = {10}
tNpcGossip[8536]["Option10"] = tQuestRecruit_Text[8536]["Option10"]
tNpcGossip[8536]["OptionFunc10"] = "Task_IsHandOverByNpc</N>3523</N>8536</N>1"

-- 接游子身上衣任务
tNpcGossip[8536]["Text2-1"] = {211,212}
tNpcGossip[8536]["Text211"] = tQuestRecruit_Text[8536]["211"]
tNpcGossip[8536]["Text212"] = tQuestRecruit_Text[8536]["212"]
tNpcGossip[8536]["tOption2-1"] = {11}
tNpcGossip[8536]["Option11"] = tQuestRecruit_Text[8536]["Option11"]
tNpcGossip[8536]["OptionFunc11"] = "QuestRecruit_FindWay</N>3524"

-- 【任务已接未完成】
tNpcGossip[8536]["Text2-2"] = {221,222}
tNpcGossip[8536]["Text221"] = tQuestRecruit_Text[8536]["221"]
tNpcGossip[8536]["Text222"] = tQuestRecruit_Text[8536]["222"]
tNpcGossip[8536]["tOption2-2"] = {13}
tNpcGossip[8536]["Option13"] = tQuestRecruit_Text[8536]["Option13"]
tNpcGossip[8536]["OptionFunc13"] = "QuestRecruit_FindWay</N>3524"

-- 闲聊
tNpcGossip[8536]["Text2-3"] = {231}
tNpcGossip[8536]["Text231"] = tQuestRecruit_Text[8536]["231"]
tNpcGossip[8536]["tOption2-3"] = {14}
tNpcGossip[8536]["Option14"] = tQuestRecruit_Text[8536]["Option14"]

-- 任务中
tNpcGossip[8536]["Text2-4"] = {241}
tNpcGossip[8536]["Text241"] = tQuestRecruit_Text[8536]["241"]
tNpcGossip[8536]["tOption2-4"] = {241,242}
tNpcGossip[8536]["Option241"] = tQuestRecruit_Text[8536]["Option241"]
tNpcGossip[8536]["Option242"] = tQuestRecruit_Text[8536]["Option242"]
tNpcGossip[8536]["OptionFunc241"] = "QuestRecruit_ReqTaskItem</N>3524</N>8536"
tNpcGossip[8536]["OptionFunc242"] = "QuestRecruit_FindWay</N>3524"

-- 有任务物品
tNpcGossip[8536]["Text2-5"] = {251}
tNpcGossip[8536]["Text251"] = tQuestRecruit_Text[8536]["251"]
tNpcGossip[8536]["tOption2-5"] = {251,252}
tNpcGossip[8536]["Option251"] = tQuestRecruit_Text[8536]["Option251"]

--没任务物品背包不足
tNpcGossip[8536]["Text2-6"] = {261}
tNpcGossip[8536]["Text261"] = tQuestRecruit_Text[8536]["261"]
tNpcGossip[8536]["tOption2-6"] = {261,262}
tNpcGossip[8536]["Option261"] = tQuestRecruit_Text[8536]["Option261"]

--补领成功
tNpcGossip[8536]["Text2-7"] = {271}
tNpcGossip[8536]["Text271"] = tQuestRecruit_Text[8536]["271"]
tNpcGossip[8536]["tOption2-7"] = {271}
tNpcGossip[8536]["Option271"] = tQuestRecruit_Text[8536]["Option271"]
tNpcGossip[8536]["OptionFunc271"] = "QuestRecruit_FindWay</N>3524"

-- 金币达上限
tNpcGossip[8536]["Text3-1"] = {311}
tNpcGossip[8536]["Text311"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8536]["tOption3-1"] = {311}
tNpcGossip[8536]["Option311"] = tQuestRecruit_Text["MoneyFull"]["Option"] 

-- 接任务空间不足
tNpcGossip[8536]["Text3-3"] = {331}
tNpcGossip[8536]["Text331"] = tQuestRecruit_Text[8536]["331"]
tNpcGossip[8536]["tOption3-3"] = {331}
tNpcGossip[8536]["Option331"] = tQuestRecruit_Text[8536]["Option331"]

-- 背包达上限 3521
tNpcGossip[8536]["Text3-2"] = {321}
tNpcGossip[8536]["Text321"] = tQuestRecruit_Text[8536]["321"]
tNpcGossip[8536]["tOption3-2"] = {321}
tNpcGossip[8536]["Option321"] = tQuestRecruit_Text[8536]["Option321"]

-- 背包达上限 3522
tNpcGossip[8536]["Text3-4"] = {341}
tNpcGossip[8536]["Text341"] = tQuestRecruit_Text[8536]["341"]
tNpcGossip[8536]["tOption3-4"] = {341}
tNpcGossip[8536]["Option341"] = tQuestRecruit_Text[8536]["Option321"]

-- 背包达上限 3523
tNpcGossip[8536]["Text3-5"] = {351}
tNpcGossip[8536]["Text351"] = tQuestRecruit_Text[8536]["351"]
tNpcGossip[8536]["tOption3-5"] = {351}
tNpcGossip[8536]["Option351"] = tQuestRecruit_Text[8536]["Option321"]
------------------------------------------
-- 白鹭城副总兵
tNpcFace[1033] = 47
tNpcGossip[8512] = tNpcGossip[8512] or DefaultNpc:new{}
tNpcGossip[8512]["OptionHidden"] = 1
-- 闲聊对白
tNpcGossip[8512]["Text1-1"] = {111,112}
tNpcGossip[8512]["Text111"] = tQuestRecruit_Text[8512]["111"]
tNpcGossip[8512]["Text112"] = tQuestRecruit_Text[8512]["112"]
tNpcGossip[8512]["tOption1-1"] = {1}
tNpcGossip[8512]["Option1"] = tQuestRecruit_Text[8512]["Option1"]

-- 交滴水穿石（一）	3580
tNpcGossip[8512]["Text1-2"] = {121}
tNpcGossip[8512]["Text121"] = tQuestRecruit_Text[8512]["121"]
tNpcGossip[8512]["tOption1-2"] = {2}
tNpcGossip[8512]["Option2"] = tQuestRecruit_Text[8512]["Option2"]
tNpcGossip[8512]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3580</N>8512</N>1"

-- 任务已接未完成
tNpcGossip[8512]["Text1-3"] = {131}
tNpcGossip[8512]["Text131"] = tQuestRecruit_Text[8512]["131"]
tNpcGossip[8512]["tOption1-3"] = {3}
tNpcGossip[8512]["Option3"] = tQuestRecruit_Text[8512]["Option3"]
tNpcGossip[8512]["OptionFunc3"] = "QuestRecruit_FindWay</N>3580"

-- 交滴水穿石（二）	3581
tNpcGossip[8512]["Text1-4"] = {141}
tNpcGossip[8512]["Text141"] = tQuestRecruit_Text[8512]["141"]
tNpcGossip[8512]["tOption1-4"] = {4}
tNpcGossip[8512]["Option4"] = tQuestRecruit_Text[8512]["Option4"]
tNpcGossip[8512]["OptionFunc4"] = "Task_IsHandOverByNpc</N>3581</N>8512</N>1"

-- 任务已接未完成
tNpcGossip[8512]["Text1-5"] = {151}
tNpcGossip[8512]["Text151"] = tQuestRecruit_Text[8512]["151"]
tNpcGossip[8512]["tOption1-5"] = {5}
tNpcGossip[8512]["Option5"] = tQuestRecruit_Text[8512]["Option5"]
tNpcGossip[8512]["OptionFunc5"] = "QuestRecruit_FindWay</N>3581"

-- 交滴水穿石（三）	3582
tNpcGossip[8512]["Text1-6"] = {161}
tNpcGossip[8512]["Text161"] = tQuestRecruit_Text[8512]["161"]
tNpcGossip[8512]["tOption1-6"] = {6}
tNpcGossip[8512]["Option6"] = tQuestRecruit_Text[8512]["Option6"]
tNpcGossip[8512]["OptionFunc6"] = "Task_IsHandOverByNpc</N>3582</N>8512</N>1"

-- 任务已接未完成
tNpcGossip[8512]["Text1-7"] = {171}
tNpcGossip[8512]["Text171"] = tQuestRecruit_Text[8512]["171"]
tNpcGossip[8512]["tOption1-7"] = {7}
tNpcGossip[8512]["Option7"] = tQuestRecruit_Text[8512]["Option7"]
tNpcGossip[8512]["OptionFunc7"] = "QuestRecruit_FindWay</N>3582"

-- 回禀总兵 背包不足
tNpcGossip[2001]["Text14-2"] = {1421}
tNpcGossip[2001]["Text1421"] = tQuestRecruit_Text[2001]["Text1421"]
tNpcGossip[2001]["tOption14-2"] = {1421}
tNpcGossip[2001]["Option1421"] = tQuestRecruit_Text[2001]["1421"]

--------------------------------------陷阱模块------------------------------------------
local tQuestRecruit_TrapFindWay = {}
tQuestRecruit_TrapFindWay[920] = {}
tQuestRecruit_TrapFindWay[920]["Data"] = "1"
tQuestRecruit_TrapFindWay[920]["MapId"] = 1015
tQuestRecruit_TrapFindWay[920]["PosX"] = 774
tQuestRecruit_TrapFindWay[920]["PosY"] = 526

tQuestRecruit_TrapFindWay[921] = {}
tQuestRecruit_TrapFindWay[921]["Data"] = "2"
tQuestRecruit_TrapFindWay[921]["MapId"] = 1015
tQuestRecruit_TrapFindWay[921]["PosX"] = 774
tQuestRecruit_TrapFindWay[921]["PosY"] = 606

tQuestRecruit_TrapFindWay[922] = {}
tQuestRecruit_TrapFindWay[922]["Data"] = "3"
tQuestRecruit_TrapFindWay[922]["MapId"] = 1015
tQuestRecruit_TrapFindWay[922]["PosX"] = 693
tQuestRecruit_TrapFindWay[922]["PosY"] = 606

tQuestRecruit_TrapFindWay[923] = {}
tQuestRecruit_TrapFindWay[923]["Data"] = "4"
tQuestRecruit_TrapFindWay[923]["MapId"] = 1015
tQuestRecruit_TrapFindWay[923]["PosX"] = 693
tQuestRecruit_TrapFindWay[923]["PosY"] = 519

-- 寻路函数
function QuestRecruit_TrapFindWay(nTypeId)
	local nMapId = tQuestRecruit_TrapFindWay[nTypeId]["MapId"]
	local nPosX = tQuestRecruit_TrapFindWay[nTypeId]["PosX"]
	local nPosY = tQuestRecruit_TrapFindWay[nTypeId]["PosY"]
	
	-- 自动寻路
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

function QuestRecruit_Trap(nTrapId,nTrapType)
	local nTaskId = 3514
	if Task_ChkTaskDetail(nTaskId) then
		local sChkData = tQuestRecruit_TrapFindWay[nTrapType]["Data"]
		if Task_ChkTaskDetailValue(nTaskId,sChkData,"==",0) then
			QuestRecruit_TaskData(nTaskId,sChkData)
			local sFunc = ""
			
			if Get_TaskDetailData1(nTaskId) == 1 and Get_TaskDetailData2(nTaskId) == 1 and Get_TaskDetailData3(nTaskId) == 1 and Get_TaskDetailData4(nTaskId) == 1 then
				sFunc = string.format("QuestRecruit_FindWay</N>%d</S>%s",nTaskId,"Mid")
				Sys_MsgBox(tQuestRecruit_Text["CompletePatrolArea"],sFunc)
			else
				local nNextId = nTrapType+1
				if nNextId > 923 then
					nNextId = 920
				end
				sFunc = string.format("QuestRecruit_TrapFindWay</N>%d",nNextId)
				Sys_MsgBox(tQuestRecruit_Text["PatrolArea"],sFunc)
			end
		end
	end
end
-- 判断所在data位
function QuestRecruit_TaskData(nTaskId,sChkData)
	if sChkData == "1" then
		Task_SetTaskDetailData1(nTaskId,1)
	elseif sChkData == "2" then
		Task_SetTaskDetailData2(nTaskId,1)
	elseif sChkData == "3" then
		Task_SetTaskDetailData3(nTaskId,1)
	elseif sChkData == "4" then
		Task_SetTaskDetailData4(nTaskId,1)
	end
end
-- 
tTrap[920] = tTrap[920] or {}
tTrap[920]["Function"] = function(nTrapId,nTrapType)
	QuestRecruit_Trap(nTrapId,nTrapType)
end

tTrap[921] = tTrap[921] or {}
tTrap[921]["Function"] = function(nTrapId,nTrapType)
	QuestRecruit_Trap(nTrapId,nTrapType)
end

tTrap[922] = tTrap[922] or {}
tTrap[922]["Function"] = function(nTrapId,nTrapType)
	QuestRecruit_Trap(nTrapId,nTrapType)
end

tTrap[923] = tTrap[923] or {}
tTrap[923]["Function"] = function(nTrapId,nTrapType)
	QuestRecruit_Trap(nTrapId,nTrapType)
end
-----------------------------------------------------------------------------
function QuestRecruit_ReinforceTrap(nTrapId,nTrapType)
	local nTaskId = 3519
	if Task_ChkTaskDetail(nTaskId) then
		if Task_ChkTaskDetailValue(nTaskId,"1","==",0) then
			Task_SetTaskDetailData1(nTaskId,1)
			local sFunc = string.format("QuestRecruit_FindWay</N>%d</S>%s",nTaskId,"Mid")
			Sys_MsgBox(tQuestRecruit_Text["CompleteEnchantment"],sFunc)
		end
	end
end

-- 加固结界陷阱
tTrap[1405] = tTrap[1405] or {}
tTrap[1405]["Function"] = function(nTrapId,nTrapType)
	QuestRecruit_ReinforceTrap(nTrapId,nTrapType)
end
-------------------------------------物品使用模块-----------------------------------
-- local tQuestRecruit_EnchanFindWay = {}
-- tQuestRecruit_EnchanFindWay[1] = {}
-- tQuestRecruit_EnchanFindWay[1]["Data"] = 0
-- tQuestRecruit_EnchanFindWay[1]["MapId"] = 1015
-- tQuestRecruit_EnchanFindWay[1]["PosX"] = 330
-- tQuestRecruit_EnchanFindWay[1]["PosY"] = 488

-- function QuestRecruit_UseItem(nItemId)
	-- local nTaskId = 3519
	-- local nUserId = Get_UserId()
	-- local nMapId = Get_UserMapId()
	-- local nUserX = Get_UserPositionX()
	-- local nUserY = Get_UserPositionY()
	-- local nPosX = tQuestRecruit_EnchanFindWay[1]["PosX"]
	-- local nPosY = tQuestRecruit_EnchanFindWay[1]["PosY"]
	
	-- if not Task_ChkTaskDetail(nTaskId) then
		-- return
	-- end
	
	-- if nMapId == tQuestRecruit_EnchanFindWay[1]["MapId"] then
		-- if QuestRecruit_Distance(nUserX,nUserY,nPosX,nPosY) then
			-- if Task_ChkTaskDetailValue(nTaskId,"1","==",tQuestRecruit_EnchanFindWay[1]["Data"]) then
				-- Task_SetTaskDetailData1(nTaskId,1)
				-- local sFunc = string.format("QuestRecruit_FindWay</N>%d</S>%s",nTaskId,"Mid")
				-- Sys_MsgBox(tQuestRecruit_Text["CompleteEnchantment"],sFunc)
			-- end
		-- else
			-- User_TalkChannel2005(tQuestRecruit_Text["PropOutRange"])
		-- end
	-- else
		-- User_TalkChannel2005(tQuestRecruit_Text["PropOutRange"])
		-- return
	-- end
-- end

--判断距离=>距离内true,距离外false
-- function QuestRecruit_Distance(nUserX,nUserY,nPosX,nPosY)
	-- local nX_Distance = math.abs(nUserX-nPosX)
	-- local nY_Distance = math.abs(nUserY-nPosY)
	-- 比较宝藏的坐标x,y与玩家的坐标差绝对值
	-- if nX_Distance < 5 and nY_Distance < 5 then
		-- return true
	-- else
		-- return false
	-- end
-- end
-- 封界符
-- tItem[720990] = tItem[720990] or {}
-- tItem[720990]["Function"] = function(nItemId,sItemName)
	-- QuestRecruit_UseItem(nItemId)
-- end

