------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]第三片区（黑虎城）
--Purpose:	第三片区（黑虎城）
--Creator: 	严振飞
--Created:	2015/10/12
------------------------------------------------------------------------------------
-- 命名前缀
-- QuestArea3th_

-- task_detail（任务id）说明
-- 前往绝情谷		3496 
-- 夺回首饰			3497 
-- 慰问木匠			3498
-- 扫清道路			3499
-- 督促懒兵			3500
-- 送药				3501
-- 丢失的丹药		3502
-- 清除蛇人			3503
-- 三涉日常			3504（去掉）
-- 后进之秀			3566
-- 闻鸡起舞（一）	3567 （去掉）
-- 闻鸡起舞（二）	3568 （去掉）
-- 闻鸡起舞（三）	3569 （去掉）
-- 闻鸡起舞（四）	3570（去掉）
------------------------------------------------------------------------------------
------------------------------------------NPC任务配置
-- 黑虎城总兵
tQuestRecruit_TaskStar[2003] = {3496,3497}
tQuestRecruit_TaskNext[2003] = {3497,3498}
-- 张木匠
tQuestRecruit_TaskStar[8291] = {3498}
tQuestRecruit_TaskNext[8291] = {3499}
-- 张伟
tQuestRecruit_TaskStar[8303] = {3499,3500}
tQuestRecruit_TaskNext[8303] = {3500,3501}
-- 火云道人
tQuestRecruit_TaskStar[8293] = {3501}
tQuestRecruit_TaskNext[8293] = {3502}
-- 六合道君
tQuestRecruit_TaskStar[8297] = {3502,3503}
tQuestRecruit_TaskNext[8297] = {3503,3566}
-- 黑虎城副总兵
-- tQuestRecruit_TaskStar[8287] = {3567,3568,3569,3570}

------------------------------------------任务配置
-- 前往绝情谷
-- 接任务
tTaskTemplate[3496] = {}
tTaskTemplate[3496]["IsReceived"] = {400,700}
tTaskTemplate[3496]["FrontTask"] = 3561
tTaskTemplate[3496]["TaskId"] = 3496
tTaskTemplate[3496]["AcceptTask"] = {100}
-- 接任务给旋风状态(时间)
tTaskTemplate[3496]["StatusTime"] = 15

-- 对白编号表
tTaskTemplate[3496]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3496]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3496]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3496]["MeetAccept"] = "11-1"	-- 接任务对白
tTaskTemplate[3496]["HasAccept"] = "11-1"	-- 任务中

-- 交任务
tTaskTemplate[3496]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3496]["NextTaskId"] = 3497
tTaskTemplate[3496]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3496]["Next"] = {}
tTaskTemplate[3496]["Next"]["NpcId"] = 2003
tTaskTemplate[3496]["Next"]["MapId"] = 1020
tTaskTemplate[3496]["Next"]["PosX"] = 566
tTaskTemplate[3496]["Next"]["PosY"] = 620

-- 奖励
tTaskTemplate[3496]["HandOverTask"] = {200,1200,1300}	--交任务的奖励表
-- tTaskTemplate[3496]["RewMoney"] = 10000			-- 1W金币
tTaskTemplate[3496]["RewSpace"] = 2
tTaskTemplate[3496]["RewItemId1"] = 1002020			-- 冷香草*150
tTaskTemplate[3496]["RewItemAttr1"] = "0 5 3"
-- 道士
tTaskTemplate[3496]["RewardProItem"] = {}
tTaskTemplate[3496]["RewardProItem"][1] = {}
tTaskTemplate[3496]["RewardProItem"][1]["MinPro"] = 100
tTaskTemplate[3496]["RewardProItem"][1]["MaxPro"] = 145
tTaskTemplate[3496]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3496]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3496]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*150
tTaskTemplate[3496]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"


---------------------------
-- 夺回首饰
-- 接任务
tTaskTemplate[3497] = {}
tTaskTemplate[3497]["IsReceived"] = {400,700}
tTaskTemplate[3497]["FrontTask"] = 3496
tTaskTemplate[3497]["TaskId"] = 3497
tTaskTemplate[3497]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3497]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3497]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3497]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3497]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3497]["HandOverItem"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3497]["MonsterTask"] = {300,500,800}		--怪物任务条件配置表
tTaskTemplate[3497]["ReqMonsterId1"] = {10} 				-- 交任务需要怪物ID
tTaskTemplate[3497]["MustSpace"] = 1 					--怪物掉落需要检测背包空间
tTaskTemplate[3497]["MustDropMode1"] = 2				-- 掉落背包
tTaskTemplate[3497]["MustFallItemId1"] = {}
tTaskTemplate[3497]["MustFallItemId1"][1] = {}
tTaskTemplate[3497]["MustFallItemId1"][1]["ItemId"] = 711352
tTaskTemplate[3497]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3497]["MustFallItemId1"][1]["ItemLimit"] = 1
tTaskTemplate[3497]["MonsterFunc"] = QuestRecruit_MustKillItem 	-- 击杀怪物后触发函数
tTaskTemplate[3497]["ReqItemFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时物品数量弹出提示

-- 交任务
tTaskTemplate[3497]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3497]["ReqItemId1"] = 711352
tTaskTemplate[3497]["ReqItemCount1"] = 1
tTaskTemplate[3497]["NextTaskId"] = 3498
tTaskTemplate[3497]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3497]["Next"] = {}
tTaskTemplate[3497]["Next"]["NpcId"] = 0
tTaskTemplate[3497]["Next"]["MapId"] = 1020
tTaskTemplate[3497]["Next"]["PosX"] = 626
tTaskTemplate[3497]["Next"]["PosY"] = 576
-- 中间环节
tTaskTemplate[3497]["Mid"] = {}
tTaskTemplate[3497]["Mid"]["NpcId"] = 2003
tTaskTemplate[3497]["Mid"]["MapId"] = 1020
tTaskTemplate[3497]["Mid"]["PosX"] = 566
tTaskTemplate[3497]["Mid"]["PosY"] = 620

-- 奖励
tTaskTemplate[3497]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
tTaskTemplate[3497]["RewExpTime"] = 60			-- 60分钟经验
-- tTaskTemplate[3497]["RewMoney"] = 50000			-- 5W金币
-- tTaskTemplate[3497]["RewSpace"] = 1
-- tTaskTemplate[3497]["RewItemId1"] = 160097		-- 云锦靴*1
-- tTaskTemplate[3497]["RewItemAttr1"] = "0 1"


---------------------------
-- 慰问木匠
-- 接任务
tTaskTemplate[3498] = {}
tTaskTemplate[3498]["IsReceived"] = {400,700}
tTaskTemplate[3498]["FrontTask"] = 3497
tTaskTemplate[3498]["TaskId"] = 3498
tTaskTemplate[3498]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3498]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3498]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3498]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3498]["MeetAccept"] = "5-1"	-- 接任务对白
tTaskTemplate[3498]["HasAccept"] = "5-1" 	-- 已接未完成

-- 交任务
tTaskTemplate[3498]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3498]["NextTaskId"] = 3499
tTaskTemplate[3498]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3498]["Next"] = {}
tTaskTemplate[3498]["Next"]["NpcId"] = 8291
tTaskTemplate[3498]["Next"]["MapId"] = 1020
tTaskTemplate[3498]["Next"]["PosX"] = 838
tTaskTemplate[3498]["Next"]["PosY"] = 545

-- 奖励
tTaskTemplate[3498]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3498]["RewExpTime"] = 30			-- 30分钟经验
-- tTaskTemplate[3498]["RewMoney"] = 10000			-- 1W金币
-- tTaskTemplate[3498]["RewSpace"] = 3
-- tTaskTemplate[3498]["RewItemId1"] = 730001			-- +1赤炼石*2
-- tTaskTemplate[3498]["RewItemAttr1"] = "0 2"
-- tTaskTemplate[3498]["RewItemId2"] = 1060020			-- 双龙城回城卷*2
-- tTaskTemplate[3498]["RewItemAttr2"] = "0 2"



---------------------------
-- 扫清道路
-- 接任务
tTaskTemplate[3499] = {}
tTaskTemplate[3499]["IsReceived"] = {400,700}
tTaskTemplate[3499]["FrontTask"] = 3498
tTaskTemplate[3499]["TaskId"] = 3499
tTaskTemplate[3499]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3499]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3499]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3499]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3499]["HandOverMonster"] = "2-2"	-- 未完成
tTaskTemplate[3499]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3499]["HasAccept"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3499]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3499]["ReqMonsterId1"] = {11,70} 		-- 交任务需要怪物ID
tTaskTemplate[3499]["ReqMonsterPos1"] = 1 		-- 存储位
tTaskTemplate[3499]["ReqMonsterCount1"] = 5 	-- 怪物数量
tTaskTemplate[3499]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3499]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3499]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3499]["NextTaskId"] = 3500
tTaskTemplate[3499]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3499]["Next"] = {}
tTaskTemplate[3499]["Next"]["NpcId"] = 0
tTaskTemplate[3499]["Next"]["MapId"] = 1020
tTaskTemplate[3499]["Next"]["PosX"] = 617
tTaskTemplate[3499]["Next"]["PosY"] = 319
-- [中间环节]NPC数据
tTaskTemplate[3499]["Mid"] = {}
tTaskTemplate[3499]["Mid"]["NpcId"] = 8303
tTaskTemplate[3499]["Mid"]["MapId"] = 1020
tTaskTemplate[3499]["Mid"]["PosX"] = 668
tTaskTemplate[3499]["Mid"]["PosY"] = 456

-- 奖励
tTaskTemplate[3499]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3499]["RewExpTime"] = 90			-- 90分钟经验
-- tTaskTemplate[3499]["RewMoney"] = 50000			-- 5W金币
-- tTaskTemplate[3499]["RewSpace"] = 3
-- tTaskTemplate[3499]["RewItemId1"] = 1088000		-- 龙珠*3
-- tTaskTemplate[3499]["RewItemAttr1"] = "0 3"


---------------------------
-- 督促懒兵
-- 接任务
tTaskTemplate[3500] = {}
tTaskTemplate[3500]["IsReceived"] = {400,700}
tTaskTemplate[3500]["FrontTask"] = 3499
tTaskTemplate[3500]["TaskId"] = 3500
tTaskTemplate[3500]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3500]["SubTask"] = "4-1" 			-- 交任务
tTaskTemplate[3500]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3500]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3500]["HandOverDetail"] = "3-2" 	-- 交任务data位不满足
tTaskTemplate[3500]["MeetAccept"] = "3-1"		-- 接任务对白
tTaskTemplate[3500]["SetDetail"] = "2-2"	-- 任务data位打掩码完成

-- 交任务
tTaskTemplate[3500]["IsHandOver"] = {400,900,1100}		--任务交任务条件配置表
tTaskTemplate[3500]["Data1"] = 1
tTaskTemplate[3500]["NextTaskId"] = 3501
tTaskTemplate[3500]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3500]["Next"] = {}
tTaskTemplate[3500]["Next"]["NpcId"] = 8301
tTaskTemplate[3500]["Next"]["MapId"] = 1020
tTaskTemplate[3500]["Next"]["PosX"] = 602
tTaskTemplate[3500]["Next"]["PosY"] = 445
-- [中间环节]NPC数据
tTaskTemplate[3500]["Mid"] = {}
tTaskTemplate[3500]["Mid"]["NpcId"] = 8303
tTaskTemplate[3500]["Mid"]["MapId"] = 1020
tTaskTemplate[3500]["Mid"]["PosX"] = 668
tTaskTemplate[3500]["Mid"]["PosY"] = 456

-- 奖励
tTaskTemplate[3500]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3500]["RewExpTime"] = 30				-- 30分钟经验
-- tTaskTemplate[3500]["RewMoney"] = 30000				-- 3w金币
-- tTaskTemplate[3500]["RewSpace"] = 2
-- tTaskTemplate[3500]["RewItemId1"] = 730001			-- +1赤炼石*2
-- tTaskTemplate[3500]["RewItemAttr1"] = "0 2"


---------------------------
-- 送药
-- 接任务
tTaskTemplate[3501] = {}
tTaskTemplate[3501]["IsReceived"] = {400,700}
tTaskTemplate[3501]["FrontTask"] = 3500
tTaskTemplate[3501]["TaskId"] = 3501
tTaskTemplate[3501]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3501]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3501]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3501]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3501]["MeetAccept"] = "5-1"	-- 接任务对白
tTaskTemplate[3501]["HasAccept"] = "5-1" 	-- 已接未完成

-- 交任务
tTaskTemplate[3501]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3501]["NextTaskId"] = 3502
tTaskTemplate[3501]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3501]["Next"] = {}
tTaskTemplate[3501]["Next"]["NpcId"] = 8293
tTaskTemplate[3501]["Next"]["MapId"] = 1020
tTaskTemplate[3501]["Next"]["PosX"] = 366
tTaskTemplate[3501]["Next"]["PosY"] = 304

-- 奖励
tTaskTemplate[3501]["HandOverTask"] = {200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3501]["RewExpTime"] = 30
-- tTaskTemplate[3501]["RewMoney"] = 10000
tTaskTemplate[3501]["RewSpace"] = 3
-- tTaskTemplate[3501]["RewItemId1"] = 1088000			-- 龙珠*1
-- tTaskTemplate[3501]["RewItemAttr1"] = "0 1"
tTaskTemplate[3501]["RewItemId1"] = 1002020			-- 冷香草*200
tTaskTemplate[3501]["RewItemAttr1"] = "0 10 3"
-- 道士
tTaskTemplate[3501]["RewardProItem"] = {}
tTaskTemplate[3501]["RewardProItem"][1] = {}
tTaskTemplate[3501]["RewardProItem"][1]["MinPro"] = 100
tTaskTemplate[3501]["RewardProItem"][1]["MaxPro"] = 145
tTaskTemplate[3501]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3501]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3501]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*200
tTaskTemplate[3501]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"


---------------------------
-- 丢失的丹药
-- 接任务
tTaskTemplate[3502] = {}
tTaskTemplate[3502]["IsReceived"] = {400,700}
tTaskTemplate[3502]["FrontTask"] = 3501
tTaskTemplate[3502]["TaskId"] = 3502
tTaskTemplate[3502]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3502]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3502]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3502]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3502]["HandOverItem"] = "2-2" -- 交任务没有物品
tTaskTemplate[3502]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3502]["HasAccept"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3502]["MonsterTask"] = {300,500,800}		--怪物任务条件配置表
tTaskTemplate[3502]["ReqMonsterId1"] = {12,71} 				-- 交任务需要怪物ID
tTaskTemplate[3502]["MustSpace"] = 1 					--怪物掉落需要检测背包空间
tTaskTemplate[3502]["MustDropMode1"] = 2				-- 掉落背包
tTaskTemplate[3502]["MustFallItemId1"] = {}
tTaskTemplate[3502]["MustFallItemId1"][1] = {}
tTaskTemplate[3502]["MustFallItemId1"][1]["ItemId"] = 720851
tTaskTemplate[3502]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3502]["MustFallItemId1"][1]["ItemLimit"] = 1
tTaskTemplate[3502]["MonsterFunc"] = QuestRecruit_MustKillItem 	-- 击杀怪物后触发函数
tTaskTemplate[3502]["ReqItemFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时物品数量弹出提示

-- 交任务
tTaskTemplate[3502]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3502]["ReqItemId1"] = 720851
tTaskTemplate[3502]["ReqItemCount1"] = 1
tTaskTemplate[3502]["NextTaskId"] = 3503
tTaskTemplate[3502]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3502]["Next"] = {}
tTaskTemplate[3502]["Next"]["NpcId"] = 0
tTaskTemplate[3502]["Next"]["MapId"] = 1020
tTaskTemplate[3502]["Next"]["PosX"] = 200
tTaskTemplate[3502]["Next"]["PosY"] = 177
-- 中间环节
tTaskTemplate[3502]["Mid"] = {}
tTaskTemplate[3502]["Mid"]["NpcId"] = 8297
tTaskTemplate[3502]["Mid"]["MapId"] = 1020
tTaskTemplate[3502]["Mid"]["PosX"] = 265
tTaskTemplate[3502]["Mid"]["PosY"] = 429

-- 奖励
tTaskTemplate[3502]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
tTaskTemplate[3502]["RewExpTime"] = 390				-- 90分钟经验
-- tTaskTemplate[3502]["RewMoney"] = 50000				-- 5W金币
-- tTaskTemplate[3502]["RewSpace"] = 2
-- tTaskTemplate[3502]["RewItemId1"] = 720027			-- 流星卷*1
-- tTaskTemplate[3502]["RewItemAttr1"] = "0 1"
-- tTaskTemplate[3502]["RewItemId2"] = 730002			-- +2赤炼石*1
-- tTaskTemplate[3502]["RewItemAttr2"] = "0 1"
-- 赤炼石+2】*1、【流星卷】*1--奖励换位职业进阶，额外弹出105进入个人60级BOSS副本

---------------------------
-- 清除蛇人
-- 接任务
tTaskTemplate[3503] = {}
tTaskTemplate[3503]["IsReceived"] = {400,700}
tTaskTemplate[3503]["FrontTask"] = 3502
tTaskTemplate[3503]["TaskId"] = 3503
tTaskTemplate[3503]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3503]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3503]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3503]["HandOverSpace"] = "4-3" 	--交任务背包达上限
tTaskTemplate[3503]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3503]["HandOverMonster"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3503]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3503]["ReqMonsterId1"] = {13,72,3050,4185} 		-- 交任务需要怪物ID
tTaskTemplate[3503]["ReqMonsterPos1"] = 1 		-- 存储位
tTaskTemplate[3503]["ReqMonsterCount1"] = 5 	-- 怪物数量
tTaskTemplate[3503]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3503]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3503]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3503]["NextTaskId"] = 3566
tTaskTemplate[3503]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3503]["Next"] = {}
tTaskTemplate[3503]["Next"]["NpcId"] = 0
tTaskTemplate[3503]["Next"]["MapId"] = 1020
tTaskTemplate[3503]["Next"]["PosX"] = 372
tTaskTemplate[3503]["Next"]["PosY"] = 435
-- [中间环节]NPC数据
tTaskTemplate[3503]["Mid"] = {}
tTaskTemplate[3503]["Mid"]["NpcId"] = 8297
tTaskTemplate[3503]["Mid"]["MapId"] = 1020
tTaskTemplate[3503]["Mid"]["PosX"] = 265
tTaskTemplate[3503]["Mid"]["PosY"] = 429

-- 奖励
tTaskTemplate[3503]["HandOverTask"] = {200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3503]["RewExpTime"] = 520				-- 120分钟经验
-- tTaskTemplate[3503]["RewMoney"] = 50000				-- 5W金币
-- tTaskTemplate[3503]["RewSpace"] = 2
-- tTaskTemplate[3503]["RewItemId1"] = 720027			-- 流星卷*1
-- tTaskTemplate[3503]["RewItemAttr1"] = "0 1"
-- 除道士外的其他职业
-- tTaskTemplate[3503]["RewardProItem"] = {}
-- tTaskTemplate[3503]["RewardProItem"][1] = {}
-- tTaskTemplate[3503]["RewardProItem"][1]["MinPro"] = 10
-- tTaskTemplate[3503]["RewardProItem"][1]["MaxPro"] = 85
-- tTaskTemplate[3503]["RewardProItem"][1]["ProItem"] = {}
-- tTaskTemplate[3503]["RewardProItem"][1]["ProItem"][1] = {}
-- tTaskTemplate[3503]["RewardProItem"][1]["ProItem"][1]["Id"] = 150118	-- 碧玉戒指*1
-- tTaskTemplate[3503]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1"
-- 道士
-- tTaskTemplate[3503]["RewardProItem"][2] = {}
-- tTaskTemplate[3503]["RewardProItem"][2]["MinPro"] = 100
-- tTaskTemplate[3503]["RewardProItem"][2]["MaxPro"] = 145
-- tTaskTemplate[3503]["RewardProItem"][2]["ProItem"] = {}
-- tTaskTemplate[3503]["RewardProItem"][2]["ProItem"][1] = {}
-- tTaskTemplate[3503]["RewardProItem"][2]["ProItem"][1]["Id"] = 152108	-- 紫金镯*1
-- tTaskTemplate[3503]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1"



---------------------------
-- 三涉日常
-- 接任务
tTaskTemplate[3504] = {}
tTaskTemplate[3504]["IsReceived"] = {400,700}
tTaskTemplate[3504]["FrontTask"] = 3503
tTaskTemplate[3504]["TaskId"] = 3504
tTaskTemplate[3504]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3504]["SubTask"] = "8-1" 			-- 交任务
tTaskTemplate[3504]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3504]["HandOverSpace"] = "8-3" 	--交任务背包达上限
-- tTaskTemplate[3504]["HandOverDetail"] = "8-2" 	-- 交任务data位不满足
tTaskTemplate[3504]["MeetAccept"] = "5-1"		-- 接任务对白

-- 交任务
tTaskTemplate[3504]["IsHandOver"] = {900}		--任务交任务条件配置表
-- tTaskTemplate[3504]["Data1"] = 1
tTaskTemplate[3504]["NextTaskId"] = 3566
-------------
-- tTaskTemplate[3504]["OtherTaskId1"] = 3567 		-- 支线任务1
-- tTaskTemplate[3504]["OtherLev1"] = 70 			-- 任务领取等级上限
-- tTaskTemplate[3504]["OtherDataPos1"] = 1 		-- Data存储位
-------------

tTaskTemplate[3504]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3504]["Next"] = {}
tTaskTemplate[3504]["Next"]["NpcId"] = 9998
tTaskTemplate[3504]["Next"]["MapId"] = 1002
tTaskTemplate[3504]["Next"]["PosX"] = 309
tTaskTemplate[3504]["Next"]["PosY"] = 279

-- 奖励
tTaskTemplate[3504]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3504]["RewExpTime"] = 60			-- 60分钟经验
-- tTaskTemplate[3504]["RewMoney"] = 50000			-- 5W金币
tTaskTemplate[3504]["RewSpace"] = 3
tTaskTemplate[3504]["RewItemId1"] = 1088000		-- 龙珠*3
tTaskTemplate[3504]["RewItemAttr1"] = "0 3 3"

---------------------------
-- 后进之秀
-- 接任务
tTaskTemplate[3566] = {}
tTaskTemplate[3566]["IsReceived"] = {400,700}
tTaskTemplate[3566]["FrontTask"] = 3503
tTaskTemplate[3566]["TaskId"] = 3566
tTaskTemplate[3566]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3566]["SubTask"] = "8-5" 			-- 交任务
tTaskTemplate[3566]["HandOverDetail"] = "8-6" 	-- 交任务data位不满足
tTaskTemplate[3566]["HandOverSpace"] = "8-7" 	--交任务背包达上限
tTaskTemplate[3566]["MeetAccept"] = "8-4"		-- 接任务对白

-- 交任务
tTaskTemplate[3566]["IsHandOver"] = {900,1100}		--任务交任务条件配置表
tTaskTemplate[3566]["Data1"] = 70
tTaskTemplate[3566]["NextTaskId"] = 3505
tTaskTemplate[3566]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3566]["Next"] = {}
tTaskTemplate[3566]["Next"]["NpcId"] = 0
tTaskTemplate[3566]["Next"]["MapId"] = 1002
tTaskTemplate[3566]["Next"]["PosX"] = 307
tTaskTemplate[3566]["Next"]["PosY"] = 338

-- 奖励
tTaskTemplate[3566]["HandOverTask"] = {200,1200}		--交任务的奖励表
-- tTaskTemplate[3566]["RewSpace"] = 1
-- tTaskTemplate[3566]["RewItemId1"] = 720027		-- 流星卷*1
-- tTaskTemplate[3566]["RewItemAttr1"] = "0 1"
-- 【流星卷】*1--换为开启所有副职业，LUA开启副职业界面

---------------------------
-- 闻鸡起舞（一）--杀须弥猴
-- 接任务
tTaskTemplate[3567] = {}
tTaskTemplate[3567]["IsReceived"] = {400,700}
tTaskTemplate[3567]["FrontTask"] = 3504
tTaskTemplate[3567]["TaskId"] = 3567

-- 对白编号表
tTaskTemplate[3567]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3567]["HandOverMonster"] = "2-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3567]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3567]["ReqMonsterId1"] = {10} 		-- 交任务需要怪物ID
tTaskTemplate[3567]["ReqMonsterCount1"] = 40 	-- 怪物数量
tTaskTemplate[3567]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3567]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3567]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3567]["NextTaskId"] = 3568
tTaskTemplate[3567]["NextLev"] = 70 			--下个任务等级上限
-------------
tTaskTemplate[3567]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3567]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3567]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3567]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3567]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3567]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3567]["Next"] = {}
tTaskTemplate[3567]["Next"]["NpcId"] = 0
tTaskTemplate[3567]["Next"]["MapId"] = 1020
tTaskTemplate[3567]["Next"]["PosX"] = 194
tTaskTemplate[3567]["Next"]["PosY"] = 110
-- 中间环节
tTaskTemplate[3567]["Mid"] = {}
tTaskTemplate[3567]["Mid"]["NpcId"] = 8287
tTaskTemplate[3567]["Mid"]["MapId"] = 1020
tTaskTemplate[3567]["Mid"]["PosX"] = 193
tTaskTemplate[3567]["Mid"]["PosY"] = 131

-- 奖励
tTaskTemplate[3567]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3567]["RewExpTime"] = 60


---------------------------
--闻鸡起舞（二）--杀巨臂猿
-- 接任务
tTaskTemplate[3568] = {}
tTaskTemplate[3568]["IsReceived"] = {400,700}
tTaskTemplate[3568]["FrontTask"] = 3504
tTaskTemplate[3568]["TaskId"] = 3568

-- 对白编号表
tTaskTemplate[3568]["SubTask"] = "3-1" 		-- 交任务
tTaskTemplate[3568]["HandOverMonster"] = "3-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3568]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3568]["ReqMonsterId1"] = {11} 		-- 交任务需要怪物ID
tTaskTemplate[3568]["ReqMonsterCount1"] = 40 	-- 怪物数量
tTaskTemplate[3568]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3568]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3568]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3568]["NextTaskId"] = 3569
tTaskTemplate[3568]["NextLev"] = 70 			--下个任务等级上限
-------------
tTaskTemplate[3568]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3568]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3568]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3568]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3568]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3568]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3568]["Next"] = {}
tTaskTemplate[3568]["Next"]["NpcId"] = 0
tTaskTemplate[3568]["Next"]["MapId"] = 1020
tTaskTemplate[3568]["Next"]["PosX"] = 219
tTaskTemplate[3568]["Next"]["PosY"] = 197
-- 中间环节
tTaskTemplate[3568]["Mid"] = {}
tTaskTemplate[3568]["Mid"]["NpcId"] = 8287
tTaskTemplate[3568]["Mid"]["MapId"] = 1020
tTaskTemplate[3568]["Mid"]["PosX"] = 193
tTaskTemplate[3568]["Mid"]["PosY"] = 142

-- 奖励
tTaskTemplate[3568]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3568]["RewExpTime"] = 60


---------------------------
--闻鸡起舞（三）--杀天雷巨猿
-- 接任务
tTaskTemplate[3569] = {}
tTaskTemplate[3569]["IsReceived"] = {400,700}
tTaskTemplate[3569]["FrontTask"] = 3504
tTaskTemplate[3569]["TaskId"] = 3569

-- 对白编号表
tTaskTemplate[3569]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3569]["HandOverMonster"] = "4-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3569]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3569]["ReqMonsterId1"] = {12,71} 		-- 交任务需要怪物ID
tTaskTemplate[3569]["ReqMonsterCount1"] = 45 	-- 怪物数量
tTaskTemplate[3569]["ReqMonsterPos1"] = 1
tTaskTemplate[3569]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3569]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3569]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3569]["NextTaskId"] = 3570
tTaskTemplate[3569]["NextLev"] = 70 			--下个任务等级上限
-------------
tTaskTemplate[3569]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3569]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3569]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3569]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3569]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3569]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3569]["Next"] = {}
tTaskTemplate[3569]["Next"]["NpcId"] = 0
tTaskTemplate[3569]["Next"]["MapId"] = 1020
tTaskTemplate[3569]["Next"]["PosX"] = 127 
tTaskTemplate[3569]["Next"]["PosY"] = 183
-- 中间环节
tTaskTemplate[3569]["Mid"] = {}
tTaskTemplate[3569]["Mid"]["NpcId"] = 8287
tTaskTemplate[3569]["Mid"]["MapId"] = 1020
tTaskTemplate[3569]["Mid"]["PosX"] = 193
tTaskTemplate[3569]["Mid"]["PosY"] = 142

-- 奖励
tTaskTemplate[3569]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3569]["RewExpTime"] = 60

---------------------------
--闻鸡起舞（四）--杀蛇人
-- 接任务
tTaskTemplate[3570] = {}
tTaskTemplate[3570]["IsReceived"] = {400,700}
tTaskTemplate[3570]["FrontTask"] = 3504
tTaskTemplate[3570]["TaskId"] = 3570

-- 对白编号表
tTaskTemplate[3570]["SubTask"] = "5-1" 		-- 交任务
tTaskTemplate[3570]["HandOverMonster"] = "5-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3570]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3570]["ReqMonsterId1"] = {13} 		-- 交任务需要怪物ID
tTaskTemplate[3570]["ReqMonsterCount1"] = 45 	-- 怪物数量
tTaskTemplate[3570]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3570]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3570]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3570]["NextTaskId"] = 3567
tTaskTemplate[3570]["NextLev"] = 70 			--下个任务等级上限
-------------
tTaskTemplate[3570]["SoulTaskId"] = 2375		-- 镇魂珠任务ID
tTaskTemplate[3570]["SoulId"] = 729611			-- 镇魂珠ID
tTaskTemplate[3570]["SoulStcEvent"] = 108 		--stc掩码Event
tTaskTemplate[3570]["SoulStcData"] = 57			--stc掩码Data
tTaskTemplate[3570]["SoulValue"] = 300			-- 增加魂值数
-------------
tTaskTemplate[3570]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3570]["Next"] = {}
tTaskTemplate[3570]["Next"]["NpcId"] = 0
tTaskTemplate[3570]["Next"]["MapId"] = 1020
tTaskTemplate[3570]["Next"]["PosX"] = 91
tTaskTemplate[3570]["Next"]["PosY"] = 194
-- 中间环节
tTaskTemplate[3570]["Mid"] = {}
tTaskTemplate[3570]["Mid"]["NpcId"] = 8287
tTaskTemplate[3570]["Mid"]["MapId"] = 1020
tTaskTemplate[3570]["Mid"]["PosX"] = 193
tTaskTemplate[3570]["Mid"]["PosY"] = 142

-- 奖励
tTaskTemplate[3570]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3570]["RewExpTime"] = 60

------------------------------------------------------------------------------------
-- 怪物配置
-- 【须猕猴】
tTaskMonster[10] = {3497,3567} -- 夺回首饰
-- 【巨臂猿】
tTaskMonster[11] = {3499,3568} -- 扫清道路
tTaskMonster[70] = {3499} -- 扫清道路
-- 【天雷巨猿】
tTaskMonster[12] = {3502,3569} -- 丢失的丹药
-- 【暴雷巨猿】
tTaskMonster[71] = {3502,3569} -- 丢失的丹药
-- 【蛇人】
tTaskMonster[13] = {3503,3570} -- 教训火鼠
tTaskMonster[72] = {3503} -- 教训火鼠
tTaskMonster[3050] = {3503} -- 教训火鼠
tTaskMonster[4185] = {3503} -- 清除蛇人

-----------------------------------------NPC对白配置-------------------------------------------
-- 【黑虎城总兵】
tNpcFace[176] = 85
tNpcGossip[2003] = tNpcGossip[2003] or DefaultNpc:new{}
tNpcGossip[2003]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[2003]["Text1-1"] = {111}
tNpcGossip[2003]["Text111"] = tQuestArea3th_Text[2003]["Text111"]
tNpcGossip[2003]["tOption1-1"] = {111}
tNpcGossip[2003]["Option111"] = tQuestArea3th_Text[2003]["111"]

-- 金币达上限
tNpcGossip[2003]["Text1-2"] = {121}
tNpcGossip[2003]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[2003]["tOption1-2"] = {121}
tNpcGossip[2003]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[2003]["Text1-3"] = {131}
tNpcGossip[2003]["Text131"] = tQuestArea3th_Text[2003]["Text131"]
tNpcGossip[2003]["tOption1-3"] = {131}
tNpcGossip[2003]["Option131"] = tQuestArea3th_Text[2003]["131"]

--（交）前往绝情谷	任务ID 3496
tNpcGossip[2003]["Text2-1"] = {211,212}
tNpcGossip[2003]["Text211"] = tQuestArea3th_Text[2003]["Text211"]
tNpcGossip[2003]["Text212"] = tQuestArea3th_Text[2003]["Text212"]
tNpcGossip[2003]["tOption2-1"] = {211}
tNpcGossip[2003]["Option211"] = tQuestArea3th_Text[2003]["211"]
tNpcGossip[2003]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3496</N>2003</N>1"

--（接）夺回首饰	任务ID 3497
tNpcGossip[2003]["Text3-1"] = {311,312}
tNpcGossip[2003]["Text311"] = tQuestArea3th_Text[2003]["Text311"]
tNpcGossip[2003]["Text312"] = tQuestArea3th_Text[2003]["Text312"]
tNpcGossip[2003]["tOption3-1"] = {311}
tNpcGossip[2003]["Option311"] = tQuestArea3th_Text[2003]["311"]
tNpcGossip[2003]["OptionFunc311"] = "QuestRecruit_FindWay</N>3497"

--（任务中）夺回首饰
tNpcGossip[2003]["Text3-2"] = {321}
tNpcGossip[2003]["Text321"] = tQuestArea3th_Text[2003]["Text321"]
tNpcGossip[2003]["tOption3-2"] = {321}
tNpcGossip[2003]["Option321"] = tQuestArea3th_Text[2003]["321"]
tNpcGossip[2003]["OptionFunc321"] = "QuestRecruit_FindWay</N>3497"

--（交）夺回首饰	任务ID 3497
tNpcGossip[2003]["Text4-1"] = {411}
tNpcGossip[2003]["Text411"] = tQuestArea3th_Text[2003]["Text411"]
tNpcGossip[2003]["tOption4-1"] = {411}
tNpcGossip[2003]["Option411"] = tQuestArea3th_Text[2003]["411"]
tNpcGossip[2003]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3497</N>2003</N>1"

-- 背包达上限
tNpcGossip[2003]["Text4-3"] = {431}
tNpcGossip[2003]["Text431"] = tQuestArea3th_Text[2003]["Text431"]
tNpcGossip[2003]["tOption4-3"] = {431}
tNpcGossip[2003]["Option431"] = tQuestArea3th_Text[2003]["431"]

--（接）慰问木匠	任务ID 3498
tNpcGossip[2003]["Text5-1"] = {511}
tNpcGossip[2003]["Text511"] = tQuestArea3th_Text[2003]["Text511"]
tNpcGossip[2003]["tOption5-1"] = {511}
tNpcGossip[2003]["Option511"] = tQuestArea3th_Text[2003]["511"]
tNpcGossip[2003]["OptionFunc511"] = "QuestRecruit_FindWay</N>3498"

------------------------------------------
-- 【张木匠】
tNpcFace[1093] = 9
tNpcGossip[8291] = tNpcGossip[8291] or DefaultNpc:new{}
tNpcGossip[8291]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8291]["Text1-1"] = {111}
tNpcGossip[8291]["Text111"] = tQuestArea3th_Text[8291]["Text111"]
tNpcGossip[8291]["tOption1-1"] = {111}
tNpcGossip[8291]["Option111"] = tQuestArea3th_Text[8291]["111"]

-- 金币达上限
tNpcGossip[8291]["Text1-2"] = {121}
tNpcGossip[8291]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8291]["tOption1-2"] = {121}
tNpcGossip[8291]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8291]["Text1-3"] = {131}
tNpcGossip[8291]["Text131"] = tQuestArea3th_Text[8291]["Text131"]
tNpcGossip[8291]["tOption1-3"] = {131}
tNpcGossip[8291]["Option131"] = tQuestArea3th_Text[8291]["131"]

--（交）慰问木匠	任务ID 3498
tNpcGossip[8291]["Text2-1"] = {211}
tNpcGossip[8291]["Text211"] = tQuestArea3th_Text[8291]["Text211"]
tNpcGossip[8291]["tOption2-1"] = {211}
tNpcGossip[8291]["Option211"] = tQuestArea3th_Text[8291]["211"]
tNpcGossip[8291]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3498</N>8291</N>1"

--（接）扫清道路	任务ID 3499
tNpcGossip[8291]["Text3-1"] = {311,312}
tNpcGossip[8291]["Text311"] = tQuestArea3th_Text[8291]["Text311"]
tNpcGossip[8291]["Text312"] = tQuestArea3th_Text[8291]["Text312"]
tNpcGossip[8291]["tOption3-1"] = {311}
tNpcGossip[8291]["Option311"] = tQuestArea3th_Text[8291]["311"]
tNpcGossip[8291]["OptionFunc311"] = "QuestRecruit_FindWay</N>3499"

--（任务中）扫清道路
tNpcGossip[8291]["Text3-2"] = {321}
tNpcGossip[8291]["Text321"] = tQuestArea3th_Text[8291]["Text321"]
tNpcGossip[8291]["tOption3-2"] = {321}
tNpcGossip[8291]["Option321"] = tQuestArea3th_Text[8291]["321"]
tNpcGossip[8291]["OptionFunc321"] = "QuestRecruit_FindWay</N>3499"


------------------------------------------
-- 【后勤官张伟】
tNpcFace[1082] = 66
tNpcGossip[8303] = tNpcGossip[8303] or DefaultNpc:new{}
tNpcGossip[8303]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8303]["Text1-1"] = {111}
tNpcGossip[8303]["Text111"] = tQuestArea3th_Text[8303]["Text111"]
tNpcGossip[8303]["tOption1-1"] = {111}
tNpcGossip[8303]["Option111"] = tQuestArea3th_Text[8303]["111"]

-- 金币达上限
tNpcGossip[8303]["Text1-2"] = {121}
tNpcGossip[8303]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8303]["tOption1-2"] = {121}
tNpcGossip[8303]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8303]["Text1-3"] = {131}
tNpcGossip[8303]["Text131"] = tQuestArea3th_Text[8303]["Text131"]
tNpcGossip[8303]["tOption1-3"] = {131}
tNpcGossip[8303]["Option131"] = tQuestArea3th_Text[8303]["131"]

--（交）扫清道路	任务ID 3499
tNpcGossip[8303]["Text2-1"] = {211}
tNpcGossip[8303]["Text211"] = tQuestArea3th_Text[8303]["Text211"]
tNpcGossip[8303]["tOption2-1"] = {211}
tNpcGossip[8303]["Option211"] = tQuestArea3th_Text[8303]["211"]
tNpcGossip[8303]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3499</N>8303</N>1"

--（交）扫清道路	未完成
tNpcGossip[8303]["Text2-2"] = {221}
tNpcGossip[8303]["Text221"] = tQuestArea3th_Text[8303]["Text221"]
tNpcGossip[8303]["tOption2-2"] = {221}
tNpcGossip[8303]["Option221"] = tQuestArea3th_Text[8303]["221"]

--（接）督促懒兵	任务ID 3500
tNpcGossip[8303]["Text3-1"] = {311,312}
tNpcGossip[8303]["Text311"] = tQuestArea3th_Text[8303]["Text311"]
tNpcGossip[8303]["Text312"] = tQuestArea3th_Text[8303]["Text312"]
tNpcGossip[8303]["tOption3-1"] = {311}
tNpcGossip[8303]["Option311"] = tQuestArea3th_Text[8303]["311"]
tNpcGossip[8303]["OptionFunc311"] = "QuestRecruit_FindWay</N>3500"

--（任务中）督促懒兵
tNpcGossip[8303]["Text3-2"] = {321}
tNpcGossip[8303]["Text321"] = tQuestArea3th_Text[8303]["Text321"]
tNpcGossip[8303]["tOption3-2"] = {321}
tNpcGossip[8303]["Option321"] = tQuestArea3th_Text[8303]["321"]
tNpcGossip[8303]["OptionFunc321"] = "QuestRecruit_FindWay</N>3500"

--（交）督促懒兵	任务ID 3500
tNpcGossip[8303]["Text4-1"] = {411}
tNpcGossip[8303]["Text411"] = tQuestArea3th_Text[8303]["Text411"]
tNpcGossip[8303]["tOption4-1"] = {411}
tNpcGossip[8303]["Option411"] = tQuestArea3th_Text[8303]["411"]
tNpcGossip[8303]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3500</N>8303</N>1"

-- 背包达上限
tNpcGossip[8303]["Text4-3"] = {431}
tNpcGossip[8303]["Text431"] = tQuestArea3th_Text[8303]["Text431"]
tNpcGossip[8303]["tOption4-3"] = {431}
tNpcGossip[8303]["Option431"] = tQuestArea3th_Text[8303]["431"]

--（接）送药	任务ID 3501
tNpcGossip[8303]["Text5-1"] = {511}
tNpcGossip[8303]["Text511"] = tQuestArea3th_Text[8303]["Text511"]
tNpcGossip[8303]["tOption5-1"] = {511}
tNpcGossip[8303]["Option511"] = tQuestArea3th_Text[8303]["511"]
tNpcGossip[8303]["OptionFunc511"] = "QuestRecruit_FindWay</N>3501"


------------------------------------------
-- 【懒兵张擎】
tNpcFace[1080] = 66
tNpcGossip[8301] = tNpcGossip[8301] or DefaultNpc:new{}
tNpcGossip[8301]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8301]["Text1-1"] = {111}
tNpcGossip[8301]["Text111"] = tQuestArea3th_Text[8301]["Text111"]
tNpcGossip[8301]["tOption1-1"] = {111}
tNpcGossip[8301]["Option111"] = tQuestArea3th_Text[8301]["111"]
tNpcGossip[8301]["ChkFunc1-1"] = function()
	if not Task_ChkTaskDetail(3500) then
		return true
	elseif not Task_ChkTaskDetailValue(3500,"CompleteFlag","==",0) then
		return true
	elseif Task_ChkTaskDetailValue(3500,"1",">=",1) then
		return true
	else
		return false
	end
end
--（中间环节）督促懒兵	任务ID 3500
tNpcGossip[8301]["Text1-2"] = {121}
tNpcGossip[8301]["Text121"] = tQuestArea3th_Text[8301]["Text121"]
tNpcGossip[8301]["tOption1-2"] = {121}
tNpcGossip[8301]["Option121"] = tQuestArea3th_Text[8301]["121"]
tNpcGossip[8301]["OptionFunc121"] = "QuestRecruit_SetMidTaskDetail</N>3500</N>8301</N>1"

--（打掩码）督促懒兵	任务ID 3500
tNpcGossip[8301]["Text2-2"] = {221}
tNpcGossip[8301]["Text221"] = tQuestArea3th_Text[8301]["Text221"]
tNpcGossip[8301]["tOption2-2"] = {221}
tNpcGossip[8301]["Option221"] = tQuestArea3th_Text[8301]["221"]
tNpcGossip[8301]["OptionFunc221"] = "QuestRecruit_FindWay</N>3500</S>Mid"


------------------------------------------
-- 【火云道人】
tNpcFace[1095] = 35
tNpcGossip[8293] = tNpcGossip[8293] or DefaultNpc:new{}
tNpcGossip[8293]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8293]["Text1-1"] = {111}
tNpcGossip[8293]["Text111"] = tQuestArea3th_Text[8293]["Text111"]
tNpcGossip[8293]["tOption1-1"] = {111}
tNpcGossip[8293]["Option111"] = tQuestArea3th_Text[8293]["111"]

-- 金币达上限
tNpcGossip[8293]["Text1-2"] = {121}
tNpcGossip[8293]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8293]["tOption1-2"] = {121}
tNpcGossip[8293]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8293]["Text1-3"] = {131}
tNpcGossip[8293]["Text131"] = tQuestArea3th_Text[8293]["Text131"]
tNpcGossip[8293]["tOption1-3"] = {131}
tNpcGossip[8293]["Option131"] = tQuestArea3th_Text[8293]["131"]

--（交）送药	任务ID 3501
tNpcGossip[8293]["Text2-1"] = {211}
tNpcGossip[8293]["Text211"] = tQuestArea3th_Text[8293]["Text211"]
tNpcGossip[8293]["tOption2-1"] = {211}
tNpcGossip[8293]["Option211"] = tQuestArea3th_Text[8293]["211"]
tNpcGossip[8293]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3501</N>8293</N>1"

--（接）丢失的丹药	任务ID 3502
tNpcGossip[8293]["Text3-1"] = {311,312}
tNpcGossip[8293]["Text311"] = tQuestArea3th_Text[8293]["Text311"]
tNpcGossip[8293]["Text312"] = tQuestArea3th_Text[8293]["Text312"]
tNpcGossip[8293]["tOption3-1"] = {311}
tNpcGossip[8293]["Option311"] = tQuestArea3th_Text[8293]["311"]
tNpcGossip[8293]["OptionFunc311"] = "QuestRecruit_FindWay</N>3502"

--（任务中）丢失的丹药
tNpcGossip[8293]["Text3-2"] = {321}
tNpcGossip[8293]["Text321"] = tQuestArea3th_Text[8293]["Text321"]
tNpcGossip[8293]["tOption3-2"] = {321}
tNpcGossip[8293]["Option321"] = tQuestArea3th_Text[8293]["321"]
tNpcGossip[8293]["OptionFunc321"] = "QuestRecruit_FindWay</N>3502"


------------------------------------------
-- 【六合道君】
tNpcFace[1087] = 67
tNpcGossip[8297] = tNpcGossip[8297] or DefaultNpc:new{}
tNpcGossip[8297]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8297]["Text1-1"] = {111}
tNpcGossip[8297]["Text111"] = tQuestArea3th_Text[8297]["Text111"]
tNpcGossip[8297]["tOption1-1"] = {111}
tNpcGossip[8297]["Option111"] = tQuestArea3th_Text[8297]["111"]

-- 金币达上限
tNpcGossip[8297]["Text1-2"] = {121}
tNpcGossip[8297]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8297]["tOption1-2"] = {121}
tNpcGossip[8297]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8297]["Text1-3"] = {131}
tNpcGossip[8297]["Text131"] = tQuestArea3th_Text[8297]["Text131"]
tNpcGossip[8297]["tOption1-3"] = {131}
tNpcGossip[8297]["Option131"] = tQuestArea3th_Text[8297]["131"]

--（交）丢失的丹药	任务ID 3502
tNpcGossip[8297]["Text2-1"] = {211}
tNpcGossip[8297]["Text211"] = tQuestArea3th_Text[8297]["Text211"]
tNpcGossip[8297]["tOption2-1"] = {211}
tNpcGossip[8297]["Option211"] = tQuestArea3th_Text[8297]["211"]
tNpcGossip[8297]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3502</N>8297</N>1"

--（交）丢失的丹药	未完成
tNpcGossip[8297]["Text2-2"] = {221}
tNpcGossip[8297]["Text221"] = tQuestArea3th_Text[8297]["Text221"]
tNpcGossip[8297]["tOption2-2"] = {221}
tNpcGossip[8297]["Option221"] = tQuestArea3th_Text[8297]["221"]

--（接）清除蛇人	任务ID 3503
tNpcGossip[8297]["Text3-1"] = {311,312}
tNpcGossip[8297]["Text311"] = tQuestArea3th_Text[8297]["Text311"]
tNpcGossip[8297]["Text312"] = tQuestArea3th_Text[8297]["Text312"]
tNpcGossip[8297]["tOption3-1"] = {311}
tNpcGossip[8297]["Option311"] = tQuestArea3th_Text[8297]["311"]
tNpcGossip[8297]["OptionFunc311"] = "QuestRecruit_FindWay</N>3503"

--（任务中）清除蛇人
tNpcGossip[8297]["Text3-2"] = {321}
tNpcGossip[8297]["Text321"] = tQuestArea3th_Text[8297]["Text321"]
tNpcGossip[8297]["tOption3-2"] = {321}
tNpcGossip[8297]["Option321"] = tQuestArea3th_Text[8297]["321"]
tNpcGossip[8297]["OptionFunc321"] = "QuestRecruit_FindWay</N>3503"

--（交）清除蛇人	任务ID 3503
tNpcGossip[8297]["Text4-1"] = {411}
tNpcGossip[8297]["Text411"] = tQuestArea3th_Text[8297]["Text411"]
tNpcGossip[8297]["tOption4-1"] = {411}
tNpcGossip[8297]["Option411"] = tQuestArea3th_Text[8297]["411"]
tNpcGossip[8297]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3503</N>8297</N>1"

-- 背包达上限
tNpcGossip[8297]["Text4-3"] = {431}
tNpcGossip[8297]["Text431"] = tQuestArea3th_Text[8297]["Text431"]
tNpcGossip[8297]["tOption4-3"] = {431}
tNpcGossip[8297]["Option431"] = tQuestArea3th_Text[8297]["431"]

--（接）三涉日常	任务ID 3504
tNpcGossip[8297]["Text5-1"] = {511}
tNpcGossip[8297]["Text511"] = tQuestArea3th_Text[8297]["Text511"]
tNpcGossip[8297]["tOption5-1"] = {511}
tNpcGossip[8297]["Option511"] = tQuestArea3th_Text[8297]["511"]
tNpcGossip[8297]["OptionFunc511"] = "QuestRecruit_TransPos</N>3504"

----------------------------------------
-- 【黑虎城副总兵】
tNpcFace[1090] = 85
tNpcGossip[8287] = tNpcGossip[8287] or DefaultNpc:new{}
tNpcGossip[8287]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8287]["Text1-1"] = {111}
tNpcGossip[8287]["Text111"] = tQuestArea3th_Text[8287]["Text111"]
tNpcGossip[8287]["tOption1-1"] = {111}
tNpcGossip[8287]["Option111"] = tQuestArea3th_Text[8287]["111"]

--（交）闻鸡起舞（一）	任务ID 3567
tNpcGossip[8287]["Text2-1"] = {211}
tNpcGossip[8287]["Text211"] = tQuestArea3th_Text[8287]["Text211"]
tNpcGossip[8287]["tOption2-1"] = {211}
tNpcGossip[8287]["Option211"] = tQuestArea3th_Text[8287]["211"]
tNpcGossip[8287]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3567</N>8287</N>1"

--（交）闻鸡起舞（一）	未完成
tNpcGossip[8287]["Text2-2"] = {221}
tNpcGossip[8287]["Text221"] = tQuestArea3th_Text[8287]["Text221"]
tNpcGossip[8287]["tOption2-2"] = {221}
tNpcGossip[8287]["Option221"] = tQuestArea3th_Text[8287]["221"]
tNpcGossip[8287]["OptionFunc221"] = "QuestRecruit_FindWay</N>3567"

---------------------
--（交）闻鸡起舞（二）	任务ID 3568
tNpcGossip[8287]["Text3-1"] = {311}
tNpcGossip[8287]["Text311"] = tQuestArea3th_Text[8287]["Text311"]
tNpcGossip[8287]["tOption3-1"] = {311}
tNpcGossip[8287]["Option311"] = tQuestArea3th_Text[8287]["311"]
tNpcGossip[8287]["OptionFunc311"] = "Task_IsHandOverByNpc</N>3568</N>8287</N>1"

--（交）闻鸡起舞（二）	未完成
tNpcGossip[8287]["Text3-2"] = {321}
tNpcGossip[8287]["Text321"] = tQuestArea3th_Text[8287]["Text321"]
tNpcGossip[8287]["tOption3-2"] = {321}
tNpcGossip[8287]["Option321"] = tQuestArea3th_Text[8287]["321"]
tNpcGossip[8287]["OptionFunc321"] = "QuestRecruit_FindWay</N>3568"

--（交）闻鸡起舞（三）	任务ID 3569
tNpcGossip[8287]["Text4-1"] = {411}
tNpcGossip[8287]["Text411"] = tQuestArea3th_Text[8287]["Text411"]
tNpcGossip[8287]["tOption4-1"] = {411}
tNpcGossip[8287]["Option411"] = tQuestArea3th_Text[8287]["411"]
tNpcGossip[8287]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3569</N>8287</N>1"

--（交）闻鸡起舞（三）	未完成
tNpcGossip[8287]["Text4-2"] = {421}
tNpcGossip[8287]["Text421"] = tQuestArea3th_Text[8287]["Text421"]
tNpcGossip[8287]["tOption4-2"] = {421}
tNpcGossip[8287]["Option421"] = tQuestArea3th_Text[8287]["421"]
tNpcGossip[8287]["OptionFunc421"] = "QuestRecruit_FindWay</N>3569"

--（交）闻鸡起舞（四）	任务ID 3570
tNpcGossip[8287]["Text5-1"] = {511}
tNpcGossip[8287]["Text511"] = tQuestArea3th_Text[8287]["Text511"]
tNpcGossip[8287]["tOption5-1"] = {511}
tNpcGossip[8287]["Option511"] = tQuestArea3th_Text[8287]["511"]
tNpcGossip[8287]["OptionFunc511"] = "Task_IsHandOverByNpc</N>3570</N>8287</N>1"

--（交）闻鸡起舞（四）	未完成
tNpcGossip[8287]["Text5-2"] = {521}
tNpcGossip[8287]["Text521"] = tQuestArea3th_Text[8287]["Text521"]
tNpcGossip[8287]["tOption5-2"] = {521}
tNpcGossip[8287]["Option521"] = tQuestArea3th_Text[8287]["521"]
tNpcGossip[8287]["OptionFunc521"] = "QuestRecruit_FindWay</N>3570"



