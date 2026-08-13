------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]第一片区（清风原片区）
--Purpose:	新手引导
--Creator: 	严振飞
--Created:	2015/10/19
------------------------------------------------------------------------------------
-- 命名前缀
-- QuestArea1st_

-- task_detail（任务id）说明
-- 牛刀小试			3482 	双龙城总兵出接任务
-- 速递羽书			3483 
-- 斑鸠逞凶			3484
-- 收集箭羽			3485
-- 魂魄研究			3486
-- 初涉日常			3487
-- 初露锋芒			3555
-- 勤能补拙（一）	3556 （去掉）
-- 勤能补拙（二）	3557 （去掉）
-- 勤能补拙（三）	3558 （去掉）
-- 勤能补拙（四）	3559 （去掉）
------------------------------------------------------------------------------------
------------------------------------------NPC任务配置
-- 许良
tQuestRecruit_TaskStar[7992] = {3483}
tQuestRecruit_TaskNext[7992] = {3484}
-- 罗老汉
tQuestRecruit_TaskStar[4467] = {3484}
tQuestRecruit_TaskNext[4467] = {3485}
-- 神算子
tQuestRecruit_TaskStar[600050] = {3485}
tQuestRecruit_TaskNext[600050] = {3486}
-- 郝半仙
tQuestRecruit_TaskStar[7994] = {3486}
tQuestRecruit_TaskNext[7994] = {3487}
-- 日常任务大使
tQuestRecruit_TaskStar[9998] = {3487}
tQuestRecruit_TaskNext[9998] = {3488}
-- 双龙城副总兵
-- tQuestRecruit_TaskStar[7991] = {3556,3557,3558,3559}

------------------------------------------任务配置
-- 小试牛刀
-- 接任务
tTaskTemplate[3482] = {}
tTaskTemplate[3482]["IsReceived"] = {400,700}
tTaskTemplate[3482]["FrontTask"] = 3481
tTaskTemplate[3482]["TaskId"] = 3482
tTaskTemplate[3482]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3482]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3482]["HandOverMoney"] = "1-2" 	--金币达上限
tTaskTemplate[3482]["HandOverSpace"] = "4-3" 	--背包达上限
tTaskTemplate[3482]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3482]["HandOverMonster"] = "3-2" 	-- 已接任务未完成

-- 怪物配置
tTaskTemplate[3482]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3482]["ReqMonsterId1"] = {1} 		-- 交任务需要怪物ID
tTaskTemplate[3482]["ReqMonsterCount1"] = 5 	-- 怪物数量
tTaskTemplate[3482]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3482]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3482]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3482]["NextTaskId"] = 3483
tTaskTemplate[3482]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3482]["Next"] = {}
tTaskTemplate[3482]["Next"]["NpcId"] = 0
tTaskTemplate[3482]["Next"]["MapId"] = 1002
tTaskTemplate[3482]["Next"]["PosX"] = 489
tTaskTemplate[3482]["Next"]["PosY"] = 491
-- 中间环节
tTaskTemplate[3482]["Mid"] = {}
tTaskTemplate[3482]["Mid"]["NpcId"] = 2001
tTaskTemplate[3482]["Mid"]["MapId"] = 1002
tTaskTemplate[3482]["Mid"]["PosX"] = 439
tTaskTemplate[3482]["Mid"]["PosY"] = 467

-- 奖励
tTaskTemplate[3482]["HandOverTask"] = {200,400,1200,1300}	--交任务的奖励表
tTaskTemplate[3482]["RewExp"] = 25000			-- 25000点经验
-- tTaskTemplate[3482]["RewMoney"] = 30000			-- 3W金币
tTaskTemplate[3482]["RewSpace"] = 3				-- 多一个给速递羽书任务物品
tTaskTemplate[3482]["RewItemId1"] = 1002020		-- 冷香草*100
tTaskTemplate[3482]["RewItemAttr1"] = "0 5 3"
-- 道士
tTaskTemplate[3482]["RewardProItem"] = {}
tTaskTemplate[3482]["RewardProItem"][1] = {}
tTaskTemplate[3482]["RewardProItem"][1]["MinPro"] = 100
tTaskTemplate[3482]["RewardProItem"][1]["MaxPro"] = 145
tTaskTemplate[3482]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3482]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3482]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030	-- 三才归化丹*100
tTaskTemplate[3482]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"


---------------------------
-- 速递羽书
-- 接任务
tTaskTemplate[3483] = {}
tTaskTemplate[3483]["IsReceived"] = {400,600}
tTaskTemplate[3483]["FrontTask"] = 3482
tTaskTemplate[3483]["TaskId"] = 3483
tTaskTemplate[3483]["RevSpace"] = 1
tTaskTemplate[3483]["AcceptTask"] = {100,300}
tTaskTemplate[3483]["GetItemId1"] = 712017 -- 信件

-- 对白编号表
tTaskTemplate[3483]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3483]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3483]["HandOverSpace"] = "4-3" 	--交任务背包达上限
tTaskTemplate[3483]["HandOverItem"] = "2-2" 	-- 交任务没任务物品
tTaskTemplate[3483]["MeetAccept"] = "4-2"	-- 接任务对白
tTaskTemplate[3483]["MeetSpace"] = "4-5" 	-- 接任务背包不足
tTaskTemplate[3483]["HasAccept"] = "4-4" 	-- 任务中
tTaskTemplate[3483]["HaveTaskItem"] = "5-1" -- 有任务物品
tTaskTemplate[3483]["NotSpace"] = "5-2" 	-- 没任务物品背包不足
tTaskTemplate[3483]["ReqTaskItem"] = "5-3" 	-- 补领任务物品成功

-- 交任务
tTaskTemplate[3483]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3483]["ReqItemId1"] = 712017
tTaskTemplate[3483]["ReqItemCount1"] = 1
tTaskTemplate[3483]["NextTaskId"] = 3484
tTaskTemplate[3483]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3483]["Next"] = {}
tTaskTemplate[3483]["Next"]["NpcId"] = 7992
tTaskTemplate[3483]["Next"]["MapId"] = 1002
tTaskTemplate[3483]["Next"]["PosX"] = 370
tTaskTemplate[3483]["Next"]["PosY"] = 648

-- 奖励
tTaskTemplate[3483]["HandOverTask"] = {100,200,400,1200}	--交任务的奖励表
tTaskTemplate[3483]["RewExp"] = 20000		-- 20000点经验
-- tTaskTemplate[3483]["RewMoney"] = 10000		-- 1W金币
-- tTaskTemplate[3483]["RewSpace"] = 1
-- tTaskTemplate[3483]["RewItemId1"] = 1088001 		-- 流星*3
-- tTaskTemplate[3483]["RewItemAttr1"] = "0 3"

---------------------------
-- 斑鸠逞凶
-- 接任务
tTaskTemplate[3484] = {}
tTaskTemplate[3484]["IsReceived"] = {400,700}
tTaskTemplate[3484]["FrontTask"] = 3483
tTaskTemplate[3484]["TaskId"] = 3484
tTaskTemplate[3484]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3484]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3484]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3484]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3484]["HandOverItem"] = "2-2" -- 交任务未完成
tTaskTemplate[3484]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3484]["HasAccept"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3484]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3484]["ReqMonsterId1"] = {2} 		-- 交任务需要怪物ID
tTaskTemplate[3484]["ReqMonsterCount1"] = 5 	-- 怪物数量
tTaskTemplate[3484]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3484]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3484]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3484]["NextTaskId"] = 3485
tTaskTemplate[3484]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3484]["Next"] = {}
tTaskTemplate[3484]["Next"]["NpcId"] = 0
tTaskTemplate[3484]["Next"]["MapId"] = 1002
tTaskTemplate[3484]["Next"]["PosX"] = 368
tTaskTemplate[3484]["Next"]["PosY"] = 667
-- 中间环节
tTaskTemplate[3484]["Mid"] = {}
tTaskTemplate[3484]["Mid"]["NpcId"] = 4467
tTaskTemplate[3484]["Mid"]["MapId"] = 1002
tTaskTemplate[3484]["Mid"]["PosX"] = 342
tTaskTemplate[3484]["Mid"]["PosY"] = 641

-- 奖励
tTaskTemplate[3484]["HandOverTask"] = {200,400,1200,1300}	--交任务的奖励表
tTaskTemplate[3484]["RewExp"] = 50000		-- 50000点经验
-- tTaskTemplate[3484]["RewMoney"] = 30000		-- 3W金币
tTaskTemplate[3484]["RewSpace"] = 3
tTaskTemplate[3484]["RewItemId1"] = 1002020		-- 冷香草*100
tTaskTemplate[3484]["RewItemAttr1"] = "0 5 3"
-- 勇士
tTaskTemplate[3484]["RewardProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][1]["MinPro"] = 10
tTaskTemplate[3484]["RewardProItem"][1]["MaxPro"] = 15
tTaskTemplate[3484]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][1]["ProItem"][1]["Id"] = 130006	-- 皮护甲*1
tTaskTemplate[3484]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1 3"
-- 战士
tTaskTemplate[3484]["RewardProItem"][2] = {}
tTaskTemplate[3484]["RewardProItem"][2]["MinPro"] = 20
tTaskTemplate[3484]["RewardProItem"][2]["MaxPro"] = 25
tTaskTemplate[3484]["RewardProItem"][2]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][2]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][2]["ProItem"][1]["Id"] = 131006	-- 牛皮铠*1
tTaskTemplate[3484]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1 3"
-- 弓手
tTaskTemplate[3484]["RewardProItem"][3] = {}
tTaskTemplate[3484]["RewardProItem"][3]["MinPro"] = 40
tTaskTemplate[3484]["RewardProItem"][3]["MaxPro"] = 45
tTaskTemplate[3484]["RewardProItem"][3]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][3]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][3]["ProItem"][1]["Id"] = 133006	-- 鹿皮猎褂*1
tTaskTemplate[3484]["RewardProItem"][3]["ProItem"][1]["Attr"] = "0 1 3"
-- 忍者
tTaskTemplate[3484]["RewardProItem"][4] = {}
tTaskTemplate[3484]["RewardProItem"][4]["MinPro"] = 50
tTaskTemplate[3484]["RewardProItem"][4]["MaxPro"] = 55
tTaskTemplate[3484]["RewardProItem"][4]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][4]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][4]["ProItem"][1]["Id"] = 135006	-- 下忍服*1
tTaskTemplate[3484]["RewardProItem"][4]["ProItem"][1]["Attr"] = "0 1 3"
-- 武僧
tTaskTemplate[3484]["RewardProItem"][5] = {}
tTaskTemplate[3484]["RewardProItem"][5]["MinPro"] = 60
tTaskTemplate[3484]["RewardProItem"][5]["MaxPro"] = 65
tTaskTemplate[3484]["RewardProItem"][5]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][5]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][5]["ProItem"][1]["Id"] = 136006	-- 粗葛布袍*1
tTaskTemplate[3484]["RewardProItem"][5]["ProItem"][1]["Attr"] = "0 1 3"
-- 海盗
tTaskTemplate[3484]["RewardProItem"][6] = {}
tTaskTemplate[3484]["RewardProItem"][6]["MinPro"] = 70
tTaskTemplate[3484]["RewardProItem"][6]["MaxPro"] = 75
tTaskTemplate[3484]["RewardProItem"][6]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][6]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][6]["ProItem"][1]["Id"] = 139006	-- 淘浪裳*1
tTaskTemplate[3484]["RewardProItem"][6]["ProItem"][1]["Attr"] = "0 1 3"
-- 拳师
tTaskTemplate[3484]["RewardProItem"][7] = {}
tTaskTemplate[3484]["RewardProItem"][7]["MinPro"] = 80
tTaskTemplate[3484]["RewardProItem"][7]["MaxPro"] = 85
tTaskTemplate[3484]["RewardProItem"][7]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][7]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][7]["ProItem"][1]["Id"] = 138006	-- 连身战衣【15级】*1
tTaskTemplate[3484]["RewardProItem"][7]["ProItem"][1]["Attr"] = "0 1 3"
-- 道士
tTaskTemplate[3484]["RewardProItem"][8] = {}
tTaskTemplate[3484]["RewardProItem"][8]["MinPro"] = 100
tTaskTemplate[3484]["RewardProItem"][8]["MaxPro"] = 145
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"][1]["Id"] = 134006	-- 混元道袍*1
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"][1]["Attr"] = "0 1 3"
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"][2] = {}
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"][2]["Id"] = 1002030	-- 三才归化丹*100
tTaskTemplate[3484]["RewardProItem"][8]["ProItem"][2]["Attr"] = "0 5 3"
-- 铁扇门
tTaskTemplate[3484]["RewardProItem"][9] = {}
tTaskTemplate[3484]["RewardProItem"][9]["MinPro"] = 160
tTaskTemplate[3484]["RewardProItem"][9]["MaxPro"] = 165
tTaskTemplate[3484]["RewardProItem"][9]["ProItem"] = {}
tTaskTemplate[3484]["RewardProItem"][9]["ProItem"][1] = {}
tTaskTemplate[3484]["RewardProItem"][9]["ProItem"][1]["Id"] = 101006
tTaskTemplate[3484]["RewardProItem"][9]["ProItem"][1]["Attr"] = "0 1 3"


---------------------------
-- 收集爪子
-- 接任务
tTaskTemplate[3485] = {}
tTaskTemplate[3485]["IsReceived"] = {400,700}
tTaskTemplate[3485]["FrontTask"] = 3484
tTaskTemplate[3485]["TaskId"] = 3485
tTaskTemplate[3485]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3485]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3485]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3485]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3485]["HandOverItem"] = "2-2" -- 交任务没有物品
tTaskTemplate[3485]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3485]["HasAccept"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3485]["MonsterTask"] = {300,500,800}		--怪物任务条件配置表
tTaskTemplate[3485]["ReqMonsterId1"] = {3} 				-- 交任务需要怪物ID
tTaskTemplate[3485]["MustName"] = ""
tTaskTemplate[3485]["MustSpace"] = 1 					--怪物掉落需要检测背包空间
tTaskTemplate[3485]["MustDropMode1"] = 2				-- 掉落背包
tTaskTemplate[3485]["MustFallItemId1"] = {}
tTaskTemplate[3485]["MustFallItemId1"][1] = {}
tTaskTemplate[3485]["MustFallItemId1"][1]["ItemId"] = 711238
tTaskTemplate[3485]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3485]["MustFallItemId1"][1]["ItemLimit"] = 5
tTaskTemplate[3485]["MonsterFunc"] = QuestRecruit_MustKillItem 	-- 击杀怪物后触发函数
tTaskTemplate[3485]["ReqItemFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时物品数量弹出提示

-- 交任务
tTaskTemplate[3485]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3485]["ReqItemId1"] = 711238
tTaskTemplate[3485]["ReqItemCount1"] = 5
tTaskTemplate[3485]["NextTaskId"] = 3486
tTaskTemplate[3485]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3485]["Next"] = {}
tTaskTemplate[3485]["Next"]["NpcId"] = 0
tTaskTemplate[3485]["Next"]["MapId"] = 1002
tTaskTemplate[3485]["Next"]["PosX"] = 356
tTaskTemplate[3485]["Next"]["PosY"] = 765

-- 中间环节
tTaskTemplate[3485]["Mid"] = {}
tTaskTemplate[3485]["Mid"]["NpcId"] = 600050
tTaskTemplate[3485]["Mid"]["MapId"] = 1002
tTaskTemplate[3485]["Mid"]["PosX"] = 489
tTaskTemplate[3485]["Mid"]["PosY"] = 622

-- 奖励
tTaskTemplate[3485]["HandOverTask"] = {100,200,500,1300}	--交任务的奖励表
tTaskTemplate[3485]["RewExpTime"] = 5		-- 5分钟经验
-- tTaskTemplate[3485]["RewMoney"] = 30000		-- 3W金币

---------------------------
-- 魂魄研究
-- 接任务
tTaskTemplate[3486] = {}
tTaskTemplate[3486]["IsReceived"] = {400,700}
tTaskTemplate[3486]["FrontTask"] = 3485
tTaskTemplate[3486]["TaskId"] = 3486
tTaskTemplate[3486]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3486]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3486]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3486]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3486]["HandOverItem"] = "2-2" -- 交任务未完成
tTaskTemplate[3486]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3486]["HasAccept"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3486]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3486]["ReqMonsterId1"] = {4,64} 		-- 交任务需要怪物ID
tTaskTemplate[3486]["ReqMonsterCount1"] = 5 	-- 怪物数量
tTaskTemplate[3486]["ReqMonsterPos1"] = 1
tTaskTemplate[3486]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3486]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3486]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3486]["NextTaskId"] = 3487
tTaskTemplate[3486]["NoviceTitle"] = 2 			-- 图片引导编号
tTaskTemplate[3486]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3486]["Next"] = {}
tTaskTemplate[3486]["Next"]["NpcId"] = 0
tTaskTemplate[3486]["Next"]["MapId"] = 1002
tTaskTemplate[3486]["Next"]["PosX"] = 250
tTaskTemplate[3486]["Next"]["PosY"] = 656
-- 中间环节
tTaskTemplate[3486]["Mid"] = {}
tTaskTemplate[3486]["Mid"]["NpcId"] = 7994
tTaskTemplate[3486]["Mid"]["MapId"] = 1002
tTaskTemplate[3486]["Mid"]["PosX"] = 509
tTaskTemplate[3486]["Mid"]["PosY"] = 624

-- 奖励
tTaskTemplate[3486]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3486]["RewExpTime"] = 12		-- 12分钟经验
-- tTaskTemplate[3486]["RewMoney"] = 30000		-- 3W金币
tTaskTemplate[3486]["RewSpace"] = 1
-- tTaskTemplate[3486]["RewItemId1"] = 1088001		-- 流星*3
-- tTaskTemplate[3486]["RewItemAttr1"] = "0 3"
-- 【流星】*3----换戒指， 150039
tTaskTemplate[3486]["RewItemId1"] = 150038
tTaskTemplate[3486]["RewItemAttr1"] = "0 1 3"



---------------------------
-- 初涉日常
-- 接任务
tTaskTemplate[3487] = {}
tTaskTemplate[3487]["IsReceived"] = {400,700}
tTaskTemplate[3487]["FrontTask"] = 3486
tTaskTemplate[3487]["TaskId"] = 3487
tTaskTemplate[3487]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3487]["SubTask"] = "6-1" 			-- 交任务
tTaskTemplate[3487]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3487]["HandOverSpace"] = "6-3" 	--交任务背包达上限
-- tTaskTemplate[3487]["HandOverDetail"] = "6-2" 	-- 交任务data位不满足
tTaskTemplate[3487]["MeetAccept"] = "3-1"		-- 接任务对白
tTaskTemplate[3487]["HasAccept"] = "3-1"		-- 接任务未完成

-- 交任务
tTaskTemplate[3487]["IsHandOver"] = {900}		--任务交任务条件配置表
-- tTaskTemplate[3487]["Data1"] = 1
tTaskTemplate[3487]["NextTaskId"] = 3555		-- 主线任务
tTaskTemplate[3487]["NoviceTitle"] = 11 			-- 图片引导编号
-------------
-- tTaskTemplate[3487]["OtherTaskId1"] = 3556 		-- 支线任务1
-- tTaskTemplate[3487]["OtherLev1"] = 30 			-- 任务领取等级上限
-- tTaskTemplate[3487]["OtherDataPos1"] = 1 		-- Data存储位
-- tTaskTemplate[3487]["OtherTaskId2"] = 3560 		-- 支线任务2
-------------
tTaskTemplate[3487]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3487]["Next"] = {}
tTaskTemplate[3487]["Next"]["NpcId"] = 2001
tTaskTemplate[3487]["Next"]["MapId"] = 1002
tTaskTemplate[3487]["Next"]["PosX"] = 439
tTaskTemplate[3487]["Next"]["PosY"] = 464

-- 奖励
tTaskTemplate[3487]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3487]["RewExpTime"] = 65			-- 5分钟经验
-- tTaskTemplate[3487]["RewMoney"] = 50000			-- 5W金币
tTaskTemplate[3487]["RewSpace"] = 2
tTaskTemplate[3487]["RewItemId1"] = 1060020		-- 双龙城回城卷*2
tTaskTemplate[3487]["RewItemAttr1"] = "0 2 3"
-- 额外给头盔
-- 勇士
tTaskTemplate[3487]["RewardProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][1]["MinPro"] = 10
tTaskTemplate[3487]["RewardProItem"][1]["MaxPro"] = 15
tTaskTemplate[3487]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][1]["ProItem"][1]["Id"] = 118008
tTaskTemplate[3487]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1 3"
-- 战士
tTaskTemplate[3487]["RewardProItem"][2] = {}
tTaskTemplate[3487]["RewardProItem"][2]["MinPro"] = 20
tTaskTemplate[3487]["RewardProItem"][2]["MaxPro"] = 25
tTaskTemplate[3487]["RewardProItem"][2]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][2]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][2]["ProItem"][1]["Id"] = 141008
tTaskTemplate[3487]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1 3"
-- 弓手
tTaskTemplate[3487]["RewardProItem"][3] = {}
tTaskTemplate[3487]["RewardProItem"][3]["MinPro"] = 40
tTaskTemplate[3487]["RewardProItem"][3]["MaxPro"] = 45
tTaskTemplate[3487]["RewardProItem"][3]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][3]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][3]["ProItem"][1]["Id"] = 113008
tTaskTemplate[3487]["RewardProItem"][3]["ProItem"][1]["Attr"] = "0 1 3"
-- 忍者
tTaskTemplate[3487]["RewardProItem"][4] = {}
tTaskTemplate[3487]["RewardProItem"][4]["MinPro"] = 50
tTaskTemplate[3487]["RewardProItem"][4]["MaxPro"] = 55
tTaskTemplate[3487]["RewardProItem"][4]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][4]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][4]["ProItem"][1]["Id"] = 112008
tTaskTemplate[3487]["RewardProItem"][4]["ProItem"][1]["Attr"] = "0 1 3"
-- 武僧
tTaskTemplate[3487]["RewardProItem"][5] = {}
tTaskTemplate[3487]["RewardProItem"][5]["MinPro"] = 60
tTaskTemplate[3487]["RewardProItem"][5]["MaxPro"] = 65
tTaskTemplate[3487]["RewardProItem"][5]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][5]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][5]["ProItem"][1]["Id"] = 143008
tTaskTemplate[3487]["RewardProItem"][5]["ProItem"][1]["Attr"] = "0 1 3"
-- 海盗
tTaskTemplate[3487]["RewardProItem"][6] = {}
tTaskTemplate[3487]["RewardProItem"][6]["MinPro"] = 70
tTaskTemplate[3487]["RewardProItem"][6]["MaxPro"] = 75
tTaskTemplate[3487]["RewardProItem"][6]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][6]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][6]["ProItem"][1]["Id"] = 144008
tTaskTemplate[3487]["RewardProItem"][6]["ProItem"][1]["Attr"] = "0 1 3"
-- 拳师
tTaskTemplate[3487]["RewardProItem"][7] = {}
tTaskTemplate[3487]["RewardProItem"][7]["MinPro"] = 80
tTaskTemplate[3487]["RewardProItem"][7]["MaxPro"] = 85
tTaskTemplate[3487]["RewardProItem"][7]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][7]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][7]["ProItem"][1]["Id"] = 148008
tTaskTemplate[3487]["RewardProItem"][7]["ProItem"][1]["Attr"] = "0 1 3"
-- 道士
tTaskTemplate[3487]["RewardProItem"][8] = {}
tTaskTemplate[3487]["RewardProItem"][8]["MinPro"] = 100
tTaskTemplate[3487]["RewardProItem"][8]["MaxPro"] = 145
tTaskTemplate[3487]["RewardProItem"][8]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][8]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][8]["ProItem"][1]["Id"] = 114008
tTaskTemplate[3487]["RewardProItem"][8]["ProItem"][1]["Attr"] = "0 1 3"
-- 铁扇
tTaskTemplate[3487]["RewardProItem"][9] = {}
tTaskTemplate[3487]["RewardProItem"][9]["MinPro"] = 160
tTaskTemplate[3487]["RewardProItem"][9]["MaxPro"] = 165
tTaskTemplate[3487]["RewardProItem"][9]["ProItem"] = {}
tTaskTemplate[3487]["RewardProItem"][9]["ProItem"][1] = {}
tTaskTemplate[3487]["RewardProItem"][9]["ProItem"][1]["Id"] = 170008
tTaskTemplate[3487]["RewardProItem"][9]["ProItem"][1]["Attr"] = "0 1 3"

---------------------------
-- 初露锋芒
-- 接任务
tTaskTemplate[3555] = {}
tTaskTemplate[3555]["IsReceived"] = {400,700}
tTaskTemplate[3555]["FrontTask"] = 3487
tTaskTemplate[3555]["TaskId"] = 3555
tTaskTemplate[3555]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3555]["SubTask"] = "6-5" 			-- 交任务
tTaskTemplate[3555]["HandOverDetail"] = "6-6" 	-- 交任务data位不满足
tTaskTemplate[3555]["HandOverSpace"] = "6-7" 	--交任务背包达上限
tTaskTemplate[3555]["MeetAccept"] = "6-4"		-- 接任务对白

-- 交任务
tTaskTemplate[3555]["IsHandOver"] = {900,1100}		--任务交任务条件配置表
tTaskTemplate[3555]["Data1"] = 30
tTaskTemplate[3555]["NextTaskId"] = 3488
tTaskTemplate[3555]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3555]["Next"] = {}
tTaskTemplate[3555]["Next"]["NpcId"] = 0
tTaskTemplate[3555]["Next"]["MapId"] = 1002
tTaskTemplate[3555]["Next"]["PosX"] = 179
tTaskTemplate[3555]["Next"]["PosY"] = 329

-- 奖励
tTaskTemplate[3555]["HandOverTask"] = {200,1200}		--交任务的奖励表
tTaskTemplate[3555]["RewSpace"] = 2
-- tTaskTemplate[3555]["RewItemId1"] = 1088000		-- 龙珠*1
-- tTaskTemplate[3555]["RewItemAttr1"] = "0 1"
-- 【龙珠】*1---换项链，+1马，项链：120029（道士，121029），马，300000
tTaskTemplate[3555]["RewItemId1"] = 300000
tTaskTemplate[3555]["RewItemAttr1"] = "0 0 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150"
-- 除道士外的其他职业
tTaskTemplate[3555]["RewardProItem"] = {}
tTaskTemplate[3555]["RewardProItem"][1] = {}
tTaskTemplate[3555]["RewardProItem"][1]["MinPro"] = 10
tTaskTemplate[3555]["RewardProItem"][1]["MaxPro"] = 85
tTaskTemplate[3555]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3555]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3555]["RewardProItem"][1]["ProItem"][1]["Id"] = 120028
tTaskTemplate[3555]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1 3"
-- 道士
tTaskTemplate[3555]["RewardProItem"][2] = {}
tTaskTemplate[3555]["RewardProItem"][2]["MinPro"] = 100
tTaskTemplate[3555]["RewardProItem"][2]["MaxPro"] = 145
tTaskTemplate[3555]["RewardProItem"][2]["ProItem"] = {}
tTaskTemplate[3555]["RewardProItem"][2]["ProItem"][1] = {}
tTaskTemplate[3555]["RewardProItem"][2]["ProItem"][1]["Id"] = 121028
tTaskTemplate[3555]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1 3"
-- 铁扇
tTaskTemplate[3555]["RewardProItem"][3] = {}
tTaskTemplate[3555]["RewardProItem"][3]["MinPro"] = 160
tTaskTemplate[3555]["RewardProItem"][3]["MaxPro"] = 165
tTaskTemplate[3555]["RewardProItem"][3]["ProItem"] = {}
tTaskTemplate[3555]["RewardProItem"][3]["ProItem"][1] = {}
tTaskTemplate[3555]["RewardProItem"][3]["ProItem"][1]["Id"] = 120028
tTaskTemplate[3555]["RewardProItem"][3]["ProItem"][1]["Attr"] = "0 1 3"



---------------------------
-- 勤能补拙（一）--杀叫天鸡
-- 接任务
tTaskTemplate[3556] = {}
tTaskTemplate[3556]["IsReceived"] = {400,700}
tTaskTemplate[3556]["FrontTask"] = 3487
tTaskTemplate[3556]["TaskId"] = 3556

-- 对白编号表
tTaskTemplate[3556]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3556]["HandOverMonster"] = "2-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3556]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3556]["ReqMonsterId1"] = {1} 		-- 交任务需要怪物ID
tTaskTemplate[3556]["ReqMonsterCount1"] = 20 	-- 怪物数量
tTaskTemplate[3556]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3556]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3556]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3556]["NextTaskId"] = 3557
tTaskTemplate[3556]["NextLev"] = 30 			--下个任务等级上限
tTaskTemplate[3556]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3556]["Next"] = {}
tTaskTemplate[3556]["Next"]["NpcId"] = 0
tTaskTemplate[3556]["Next"]["MapId"] = 1002
tTaskTemplate[3556]["Next"]["PosX"] = 179
tTaskTemplate[3556]["Next"]["PosY"] = 329
-- 中间环节
tTaskTemplate[3556]["Mid"] = {}
tTaskTemplate[3556]["Mid"]["NpcId"] = 7991
tTaskTemplate[3556]["Mid"]["MapId"] = 1002
tTaskTemplate[3556]["Mid"]["PosX"] = 193
tTaskTemplate[3556]["Mid"]["PosY"] = 285

-- 奖励
tTaskTemplate[3556]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3556]["RewExpTime"] = 15


---------------------------
-- 勤能补拙（二）--杀斑鸠王
-- 接任务
tTaskTemplate[3557] = {}
tTaskTemplate[3557]["IsReceived"] = {400,700}
tTaskTemplate[3557]["FrontTask"] = 3487
tTaskTemplate[3557]["TaskId"] = 3557

-- 对白编号表
tTaskTemplate[3557]["SubTask"] = "3-1" 		-- 交任务
tTaskTemplate[3557]["HandOverMonster"] = "3-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3557]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3557]["ReqMonsterId1"] = {2} 		-- 交任务需要怪物ID
tTaskTemplate[3557]["ReqMonsterCount1"] = 20 	-- 怪物数量
tTaskTemplate[3557]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3557]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3557]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3557]["NextTaskId"] = 3558
tTaskTemplate[3557]["NextLev"] = 30 			--下个任务等级上限
tTaskTemplate[3557]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3557]["Next"] = {}
tTaskTemplate[3557]["Next"]["NpcId"] = 0
tTaskTemplate[3557]["Next"]["MapId"] = 1002
tTaskTemplate[3557]["Next"]["PosX"] = 258
tTaskTemplate[3557]["Next"]["PosY"] = 352
-- 中间环节
tTaskTemplate[3557]["Mid"] = {}
tTaskTemplate[3557]["Mid"]["NpcId"] = 7991
tTaskTemplate[3557]["Mid"]["MapId"] = 1002
tTaskTemplate[3557]["Mid"]["PosX"] = 193
tTaskTemplate[3557]["Mid"]["PosY"] = 285

-- 奖励
tTaskTemplate[3557]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3557]["RewExpTime"] = 15

---------------------------
-- 勤能补拙（三）--杀罗罗鸟
-- 接任务
tTaskTemplate[3558] = {}
tTaskTemplate[3558]["IsReceived"] = {400,700}
tTaskTemplate[3558]["FrontTask"] = 3487
tTaskTemplate[3558]["TaskId"] = 3558

-- 对白编号表
tTaskTemplate[3558]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3558]["HandOverMonster"] = "4-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3558]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3558]["ReqMonsterId1"] = {3} 		-- 交任务需要怪物ID
tTaskTemplate[3558]["ReqMonsterCount1"] = 25 	-- 怪物数量
tTaskTemplate[3558]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3558]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3558]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3558]["NextTaskId"] = 3559
tTaskTemplate[3558]["NextLev"] = 30 			--下个任务等级上限
tTaskTemplate[3558]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3558]["Next"] = {}
tTaskTemplate[3558]["Next"]["NpcId"] = 0
tTaskTemplate[3558]["Next"]["MapId"] = 1002
tTaskTemplate[3558]["Next"]["PosX"] = 273
tTaskTemplate[3558]["Next"]["PosY"] = 295
-- 中间环节
tTaskTemplate[3558]["Mid"] = {}
tTaskTemplate[3558]["Mid"]["NpcId"] = 7991
tTaskTemplate[3558]["Mid"]["MapId"] = 1002
tTaskTemplate[3558]["Mid"]["PosX"] = 193
tTaskTemplate[3558]["Mid"]["PosY"] = 285

-- 奖励
tTaskTemplate[3558]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3558]["RewExpTime"] = 15

---------------------------
-- 勤能补拙（四）--杀鬼斧王
-- 接任务
tTaskTemplate[3559] = {}
tTaskTemplate[3559]["IsReceived"] = {400,700}
tTaskTemplate[3559]["FrontTask"] = 3487
tTaskTemplate[3559]["TaskId"] = 3559

-- 对白编号表
tTaskTemplate[3559]["SubTask"] = "5-1" 		-- 交任务
tTaskTemplate[3559]["HandOverMonster"] = "5-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3559]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3559]["ReqMonsterId1"] = {4,64} 		-- 交任务需要怪物ID
tTaskTemplate[3559]["ReqMonsterCount1"] = 25 	-- 怪物数量
tTaskTemplate[3559]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3559]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3559]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3559]["NextTaskId"] = 3556
tTaskTemplate[3559]["NextLev"] = 30 			--下个任务等级上限
tTaskTemplate[3559]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3559]["Next"] = {}
tTaskTemplate[3559]["Next"]["NpcId"] = 0
tTaskTemplate[3559]["Next"]["MapId"] = 1002
tTaskTemplate[3559]["Next"]["PosX"] = 313
tTaskTemplate[3559]["Next"]["PosY"] = 248
-- 中间环节
tTaskTemplate[3559]["Mid"] = {}
tTaskTemplate[3559]["Mid"]["NpcId"] = 7991
tTaskTemplate[3559]["Mid"]["MapId"] = 1002
tTaskTemplate[3559]["Mid"]["PosX"] = 193
tTaskTemplate[3559]["Mid"]["PosY"] = 285

-- 奖励
tTaskTemplate[3559]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3559]["RewExpTime"] = 15


------------------------------------------------------------------------------------
-- 怪物配置
-- 【叫天鸡】
tTaskMonster[1] = {3482,3556} -- 小试牛刀
-- 【斑鸠王】
tTaskMonster[2] = {3484,3557} -- 斑鸠逞凶
-- 【罗罗鸟】
tTaskMonster[3] = {3485,3558} -- 收集箭羽
-- 【幽冥鬼斧王】
tTaskMonster[4] = {3486,3559} -- 魂魄研究
tTaskMonster[64] = {3486,3559} -- 魂魄研究

-----------------------------------------NPC对白配置-------------------------------------------
-- 【许良】
tNpcFace[963] = 30
tNpcGossip[7992] = tNpcGossip[7992] or DefaultNpc:new{}
tNpcGossip[7992]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[7992]["Text1-1"] = {111}
tNpcGossip[7992]["Text111"] = tQuestArea1st_Text[7992]["Text111"]
tNpcGossip[7992]["tOption1-1"] = {111}
tNpcGossip[7992]["Option111"] = tQuestArea1st_Text[7992]["111"]

-- 金币达上限
tNpcGossip[7992]["Text1-2"] = {121}
tNpcGossip[7992]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[7992]["tOption1-2"] = {121}
tNpcGossip[7992]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[7992]["Text1-3"] = {131}
tNpcGossip[7992]["Text131"] = tQuestArea1st_Text[7992]["Text131"]
tNpcGossip[7992]["tOption1-3"] = {131}
tNpcGossip[7992]["Option131"] = tQuestArea1st_Text[7992]["131"]

--（交）速递羽书	任务ID 3483
tNpcGossip[7992]["Text2-1"] = {211}
tNpcGossip[7992]["Text211"] = tQuestArea1st_Text[7992]["Text211"]
tNpcGossip[7992]["tOption2-1"] = {211}
tNpcGossip[7992]["Option211"] = tQuestArea1st_Text[7992]["211"]
tNpcGossip[7992]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3483</N>7992</N>1"

--（交）速递羽书	没信件
tNpcGossip[7992]["Text2-2"] = {221}
tNpcGossip[7992]["Text221"] = tQuestArea1st_Text[7992]["Text221"]
tNpcGossip[7992]["tOption2-2"] = {221}
tNpcGossip[7992]["Option221"] = tQuestArea1st_Text[7992]["221"]

--（接）斑鸠逞凶	任务ID 3484
tNpcGossip[7992]["Text3-1"] = {311,312}
tNpcGossip[7992]["Text311"] = tQuestArea1st_Text[7992]["Text311"]
tNpcGossip[7992]["Text312"] = tQuestArea1st_Text[7992]["Text312"]
tNpcGossip[7992]["tOption3-1"] = {311}
tNpcGossip[7992]["Option311"] = tQuestArea1st_Text[7992]["311"]
tNpcGossip[7992]["OptionFunc311"] = "QuestRecruit_FindWay</N>3484"

--（任务中）斑鸠逞凶
tNpcGossip[7992]["Text3-2"] = {321}
tNpcGossip[7992]["Text321"] = tQuestArea1st_Text[7992]["Text321"]
tNpcGossip[7992]["tOption3-2"] = {321}
tNpcGossip[7992]["Option321"] = tQuestArea1st_Text[7992]["321"]
tNpcGossip[7992]["OptionFunc321"] = "QuestRecruit_FindWay</N>3484"


----------------------------------------
-- 【罗老汉】
tNpcFace[551] = 51
tNpcGossip[4467] = tNpcGossip[4467] or DefaultNpc:new{}
tNpcGossip[4467]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[4467]["Text1-1"] = {111}
tNpcGossip[4467]["Text111"] = tQuestArea1st_Text[4467]["Text111"]
tNpcGossip[4467]["tOption1-1"] = {111}
tNpcGossip[4467]["Option111"] = tQuestArea1st_Text[4467]["111"]

-- 金币达上限
tNpcGossip[4467]["Text1-2"] = {121}
tNpcGossip[4467]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[4467]["tOption1-2"] = {121}
tNpcGossip[4467]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[4467]["Text1-3"] = {131}
tNpcGossip[4467]["Text131"] = tQuestArea1st_Text[4467]["Text131"]
tNpcGossip[4467]["tOption1-3"] = {131}
tNpcGossip[4467]["Option131"] = tQuestArea1st_Text[4467]["131"]

--（交）斑鸠逞凶	任务ID 3484
tNpcGossip[4467]["Text2-1"] = {211}
tNpcGossip[4467]["Text211"] = tQuestArea1st_Text[4467]["Text211"]
tNpcGossip[4467]["tOption2-1"] = {211}
tNpcGossip[4467]["Option211"] = tQuestArea1st_Text[4467]["211"]
tNpcGossip[4467]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3484</N>4467</N>1"

--（交）斑鸠逞凶	未完成
tNpcGossip[4467]["Text2-2"] = {221}
tNpcGossip[4467]["Text221"] = tQuestArea1st_Text[4467]["Text221"]
tNpcGossip[4467]["tOption2-2"] = {221}
tNpcGossip[4467]["Option221"] = tQuestArea1st_Text[4467]["221"]
tNpcGossip[4467]["OptionFunc221"] = "QuestRecruit_FindWay</N>3484"

--（接）收集箭羽	任务ID 3485
tNpcGossip[4467]["Text3-1"] = {311}
tNpcGossip[4467]["Text311"] = tQuestArea1st_Text[4467]["Text311"]
tNpcGossip[4467]["tOption3-1"] = {311}
tNpcGossip[4467]["Option311"] = tQuestArea1st_Text[4467]["311"]
tNpcGossip[4467]["OptionFunc311"] = "QuestRecruit_FindWay</N>3485"

--（任务中）收集箭羽
tNpcGossip[4467]["Text3-2"] = {321}
tNpcGossip[4467]["Text321"] = tQuestArea1st_Text[4467]["Text321"]
tNpcGossip[4467]["tOption3-2"] = {321}
tNpcGossip[4467]["Option321"] = tQuestArea1st_Text[4467]["321"]
tNpcGossip[4467]["OptionFunc321"] = "QuestRecruit_FindWay</N>3485"

----------------------------------------
-- 【神算子】
tNpcFace[620] = 7
tNpcGossip[600050] = tNpcGossip[600050] or DefaultNpc:new{}
tNpcGossip[600050]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[600050]["Text1-1"] = {111}
tNpcGossip[600050]["Text111"] = tQuestArea1st_Text[600050]["Text111"]
tNpcGossip[600050]["tOption1-1"] = {111}
tNpcGossip[600050]["Option111"] = tQuestArea1st_Text[600050]["111"]

-- 金币达上限
tNpcGossip[600050]["Text1-2"] = {121}
tNpcGossip[600050]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[600050]["tOption1-2"] = {121}
tNpcGossip[600050]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[600050]["Text1-3"] = {131}
tNpcGossip[600050]["Text131"] = tQuestArea1st_Text[600050]["Text131"]
tNpcGossip[600050]["tOption1-3"] = {131}
tNpcGossip[600050]["Option131"] = tQuestArea1st_Text[600050]["131"]

--（交）收集箭羽	任务ID 3485
tNpcGossip[600050]["Text2-1"] = {211,212}
tNpcGossip[600050]["Text211"] = tQuestArea1st_Text[600050]["Text211"]
tNpcGossip[600050]["Text212"] = tQuestArea1st_Text[600050]["Text212"]
tNpcGossip[600050]["tOption2-1"] = {211}
tNpcGossip[600050]["Option211"] = tQuestArea1st_Text[600050]["211"]
tNpcGossip[600050]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3485</N>600050</N>1"

--（交）收集箭羽	未完成
tNpcGossip[600050]["Text2-2"] = {221}
tNpcGossip[600050]["Text221"] = tQuestArea1st_Text[600050]["Text221"]
tNpcGossip[600050]["tOption2-2"] = {221}
tNpcGossip[600050]["Option221"] = tQuestArea1st_Text[600050]["221"]
tNpcGossip[600050]["OptionFunc221"] = "QuestRecruit_FindWay</N>3485"

--（接）魂魄研究	任务ID 3486
tNpcGossip[600050]["Text3-1"] = {311,312}
tNpcGossip[600050]["Text311"] = tQuestArea1st_Text[600050]["Text311"]
tNpcGossip[600050]["Text312"] = tQuestArea1st_Text[600050]["Text312"]
tNpcGossip[600050]["tOption3-1"] = {311}
tNpcGossip[600050]["Option311"] = tQuestArea1st_Text[600050]["311"]
tNpcGossip[600050]["OptionFunc311"] = "QuestRecruit_FindWay</N>3486"

--（任务中）魂魄研究
tNpcGossip[600050]["Text3-2"] = {321}
tNpcGossip[600050]["Text321"] = tQuestArea1st_Text[600050]["Text321"]
tNpcGossip[600050]["tOption3-2"] = {321}
tNpcGossip[600050]["Option321"] = tQuestArea1st_Text[600050]["321"]
tNpcGossip[600050]["OptionFunc321"] = "QuestRecruit_FindWay</N>3486"



----------------------------------------
-- 【郝半仙】
tNpcFace[965] = 67
tNpcGossip[7994] = tNpcGossip[7994] or DefaultNpc:new{}
tNpcGossip[7994]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[7994]["Text1-1"] = {111}
tNpcGossip[7994]["Text111"] = tQuestArea1st_Text[7994]["Text111"]
tNpcGossip[7994]["tOption1-1"] = {111}
tNpcGossip[7994]["Option111"] = tQuestArea1st_Text[7994]["111"]

-- 金币达上限
tNpcGossip[7994]["Text1-2"] = {121}
tNpcGossip[7994]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[7994]["tOption1-2"] = {121}
tNpcGossip[7994]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[7994]["Text1-3"] = {131}
tNpcGossip[7994]["Text131"] = tQuestArea1st_Text[7994]["Text131"]
tNpcGossip[7994]["tOption1-3"] = {131}
tNpcGossip[7994]["Option131"] = tQuestArea1st_Text[7994]["131"]

--（交）魂魄研究	任务ID 3486
tNpcGossip[7994]["Text2-1"] = {211,212}
tNpcGossip[7994]["Text211"] = tQuestArea1st_Text[7994]["Text211"]
tNpcGossip[7994]["Text212"] = tQuestArea1st_Text[7994]["Text212"]
tNpcGossip[7994]["tOption2-1"] = {211}
tNpcGossip[7994]["Option211"] = tQuestArea1st_Text[7994]["211"]
tNpcGossip[7994]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3486</N>7994</N>1"

--（交）魂魄研究	未完成
tNpcGossip[7994]["Text2-2"] = {221}
tNpcGossip[7994]["Text221"] = tQuestArea1st_Text[7994]["Text221"]
tNpcGossip[7994]["tOption2-2"] = {221}
tNpcGossip[7994]["Option221"] = tQuestArea1st_Text[7994]["221"]
tNpcGossip[7994]["OptionFunc221"] = "QuestRecruit_FindWay</N>3486"

--（接）初涉日常	任务ID 3487
tNpcGossip[7994]["Text3-1"] = {311}
tNpcGossip[7994]["Text311"] = tQuestArea1st_Text[7994]["Text311"]
tNpcGossip[7994]["tOption3-1"] = {311}
tNpcGossip[7994]["Option311"] = tQuestArea1st_Text[7994]["311"]
tNpcGossip[7994]["OptionFunc311"] = "QuestRecruit_FindWay</N>3487"

----------------------------------------
-- 【双龙城副总兵】
tNpcFace[5445] = 18
tNpcGossip[7991] = tNpcGossip[7991] or DefaultNpc:new{}
tNpcGossip[7991]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[7991]["Text1-1"] = {111}
tNpcGossip[7991]["Text111"] = tQuestArea1st_Text[7991]["Text111"]
tNpcGossip[7991]["tOption1-1"] = {111}
tNpcGossip[7991]["Option111"] = tQuestArea1st_Text[7991]["111"]

--（交）勤能补拙（一）	任务ID 3556
tNpcGossip[7991]["Text2-1"] = {211}
tNpcGossip[7991]["Text211"] = tQuestArea1st_Text[7991]["Text211"]
tNpcGossip[7991]["tOption2-1"] = {211}
tNpcGossip[7991]["Option211"] = tQuestArea1st_Text[7991]["211"]
tNpcGossip[7991]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3556</N>7991</N>1"

--（交）勤能补拙（一）	未完成
tNpcGossip[7991]["Text2-2"] = {221}
tNpcGossip[7991]["Text221"] = tQuestArea1st_Text[7991]["Text221"]
tNpcGossip[7991]["tOption2-2"] = {221}
tNpcGossip[7991]["Option221"] = tQuestArea1st_Text[7991]["221"]
tNpcGossip[7991]["OptionFunc221"] = "QuestRecruit_FindWay</N>3556"

--（交）勤能补拙（二）	任务ID 3557
tNpcGossip[7991]["Text3-1"] = {311}
tNpcGossip[7991]["Text311"] = tQuestArea1st_Text[7991]["Text311"]
tNpcGossip[7991]["tOption3-1"] = {311}
tNpcGossip[7991]["Option311"] = tQuestArea1st_Text[7991]["311"]
tNpcGossip[7991]["OptionFunc311"] = "Task_IsHandOverByNpc</N>3557</N>7991</N>1"

--（交）勤能补拙（二）	未完成
tNpcGossip[7991]["Text3-2"] = {321}
tNpcGossip[7991]["Text321"] = tQuestArea1st_Text[7991]["Text321"]
tNpcGossip[7991]["tOption3-2"] = {321}
tNpcGossip[7991]["Option321"] = tQuestArea1st_Text[7991]["321"]
tNpcGossip[7991]["OptionFunc321"] = "QuestRecruit_FindWay</N>3557"

--（交）勤能补拙（三）	任务ID 3558
tNpcGossip[7991]["Text4-1"] = {411}
tNpcGossip[7991]["Text411"] = tQuestArea1st_Text[7991]["Text411"]
tNpcGossip[7991]["tOption4-1"] = {411}
tNpcGossip[7991]["Option411"] = tQuestArea1st_Text[7991]["411"]
tNpcGossip[7991]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3558</N>7991</N>1"

--（交）勤能补拙（三）	未完成
tNpcGossip[7991]["Text4-2"] = {421}
tNpcGossip[7991]["Text421"] = tQuestArea1st_Text[7991]["Text421"]
tNpcGossip[7991]["tOption4-2"] = {421}
tNpcGossip[7991]["Option421"] = tQuestArea1st_Text[7991]["421"]
tNpcGossip[7991]["OptionFunc421"] = "QuestRecruit_FindWay</N>3558"

--（交）勤能补拙（四）	任务ID 3559
tNpcGossip[7991]["Text5-1"] = {511}
tNpcGossip[7991]["Text511"] = tQuestArea1st_Text[7991]["Text511"]
tNpcGossip[7991]["tOption5-1"] = {511}
tNpcGossip[7991]["Option511"] = tQuestArea1st_Text[7991]["511"]
tNpcGossip[7991]["OptionFunc511"] = "Task_IsHandOverByNpc</N>3559</N>7991</N>1"

--（交）勤能补拙（四）	未完成
tNpcGossip[7991]["Text5-2"] = {521}
tNpcGossip[7991]["Text521"] = tQuestArea1st_Text[7991]["Text521"]
tNpcGossip[7991]["tOption5-2"] = {521}
tNpcGossip[7991]["Option521"] = tQuestArea1st_Text[7991]["521"]
tNpcGossip[7991]["OptionFunc521"] = "QuestRecruit_FindWay</N>3559"

