------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]第二片区（枫溪林）
--Purpose:	第二片区（枫溪林）
--Creator: 	严振飞
--Created:	2015/10/12
------------------------------------------------------------------------------------
-- 命名前缀
-- QuestArea2nd_


-- task_detail（任务id）说明
-- 前往枫溪林		3488 
-- 翼蛇之乱			3489 
-- 夺回军粮			3490
-- 帮助村长			3491
-- 教训火鼠			3492
-- 自卫队长			3493
-- 火焰之心			3494
-- 二涉日常			3495（去掉）
-- 崭露头角			3561
-- 勤学苦练（一）	3562（去掉）
-- 勤学苦练（二）	3563（去掉）
-- 勤学苦练（三）	3564（去掉）
-- 勤学苦练（四）	3565（去掉）

------------------------------------------------------------------------------------
------------------------------------------NPC任务配置
-- 鸣凤堡总兵
tQuestRecruit_TaskStar[2002] = {3488,3489,3490}
tQuestRecruit_TaskNext[2002] = {3489,3490,3491}
-- 村长
tQuestRecruit_TaskStar[8273] = {3491,3492}
tQuestRecruit_TaskNext[8273] = {3492,3493}
-- 自卫队长
tQuestRecruit_TaskStar[8277] = {3493}
tQuestRecruit_TaskNext[8277] = {3494}
-- 自卫队员阿龙
tQuestRecruit_TaskStar[8279] = {3494}
tQuestRecruit_TaskNext[8279] = {3561}
-- 鸣凤堡副总兵
-- tQuestRecruit_TaskStar[8266] = {3562,3563,3564,3565}

------------------------------------------任务配置
-- 前往枫溪林
-- 接任务
tTaskTemplate[3488] = {}
tTaskTemplate[3488]["IsReceived"] = {400,700}
tTaskTemplate[3488]["FrontTask"] = 3487
tTaskTemplate[3488]["TaskId"] = 3488
tTaskTemplate[3488]["AcceptTask"] = {100}
-- 接任务给旋风状态(时间)
tTaskTemplate[3488]["StatusTime"] = 15

-- 对白编号表
tTaskTemplate[3488]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3488]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3488]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3488]["MeetAccept"] = "10-1"	-- 接任务对白
tTaskTemplate[3488]["HasAccept"] = "10-1"	-- 任务中

-- 交任务
tTaskTemplate[3488]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3488]["NextTaskId"] = 3489
tTaskTemplate[3488]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3488]["Next"] = {}
tTaskTemplate[3488]["Next"]["NpcId"] = 2002
tTaskTemplate[3488]["Next"]["MapId"] = 1011
tTaskTemplate[3488]["Next"]["PosX"] = 227
tTaskTemplate[3488]["Next"]["PosY"] = 257

-- 奖励
tTaskTemplate[3488]["HandOverTask"] = {200,1200,1300}	--交任务的奖励表
-- tTaskTemplate[3488]["RewMoney"] = 10000			-- 1W金币
tTaskTemplate[3488]["RewSpace"] = 2
tTaskTemplate[3488]["RewItemId1"] = 1002020		-- 冷香草*100
tTaskTemplate[3488]["RewItemAttr1"] = "0 5 3"
-- 道士
tTaskTemplate[3488]["RewardProItem"] = {}
tTaskTemplate[3488]["RewardProItem"][1] = {}
tTaskTemplate[3488]["RewardProItem"][1]["MinPro"] = 100
tTaskTemplate[3488]["RewardProItem"][1]["MaxPro"] = 145
tTaskTemplate[3488]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3488]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3488]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*100
tTaskTemplate[3488]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"


---------------------------
-- 翼蛇之乱
-- 接任务
tTaskTemplate[3489] = {}
tTaskTemplate[3489]["IsReceived"] = {400,700}
tTaskTemplate[3489]["FrontTask"] = 3488
tTaskTemplate[3489]["TaskId"] = 3489
tTaskTemplate[3489]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3489]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3489]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3489]["HandOverSpace"] = "4-3" 	--交任务背包达上限
tTaskTemplate[3489]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3489]["HandOverMonster"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3489]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3489]["ReqMonsterId1"] = {6,65} 		-- 交任务需要怪物ID
tTaskTemplate[3489]["ReqMonsterPos1"] = 1 		-- 存储位
tTaskTemplate[3489]["ReqMonsterCount1"] = 5 	-- 怪物数量
tTaskTemplate[3489]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3489]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3489]["IsHandOver"] = {500,900}		--任务交任务条件配置表
tTaskTemplate[3489]["NextTaskId"] = 3490
tTaskTemplate[3489]["NoviceTitle"] = 3 					-- 图片引导编号
tTaskTemplate[3489]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3489]["Next"] = {}
tTaskTemplate[3489]["Next"]["NpcId"] = 0
tTaskTemplate[3489]["Next"]["MapId"] = 1011
tTaskTemplate[3489]["Next"]["PosX"] = 317
tTaskTemplate[3489]["Next"]["PosY"] = 77
-- [中间环节]NPC数据
tTaskTemplate[3489]["Mid"] = {}
tTaskTemplate[3489]["Mid"]["NpcId"] = 2002
tTaskTemplate[3489]["Mid"]["MapId"] = 1011
tTaskTemplate[3489]["Mid"]["PosX"] = 227
tTaskTemplate[3489]["Mid"]["PosY"] = 257

-- 奖励
tTaskTemplate[3489]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3489]["RewExpTime"] = 20			-- 20分钟经验
-- tTaskTemplate[3489]["RewMoney"] = 40000			-- 4W金币
-- tTaskTemplate[3489]["RewSpace"] = 2
-- tTaskTemplate[3489]["RewItemId1"] = 1088000		-- 龙珠*2
-- tTaskTemplate[3489]["RewItemAttr1"] = "0 2"

---------------------------
-- 夺回军粮
-- 接任务
tTaskTemplate[3490] = {}
tTaskTemplate[3490]["IsReceived"] = {400,700}
tTaskTemplate[3490]["FrontTask"] = 3489
tTaskTemplate[3490]["TaskId"] = 3490
tTaskTemplate[3490]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3490]["SubTask"] = "6-1" 		-- 交任务
tTaskTemplate[3490]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3490]["HandOverSpace"] = "6-3" 	--交任务背包达上限
tTaskTemplate[3490]["MeetAccept"] = "5-1"	-- 接任务对白
tTaskTemplate[3490]["HandOverItem"] = "5-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3490]["MonsterTask"] = {300,500,800}		--怪物任务条件配置表
tTaskTemplate[3490]["ReqMonsterId1"] = {7,66} 				-- 交任务需要怪物ID
tTaskTemplate[3490]["MustSpace"] = 1 					--怪物掉落需要检测背包空间
tTaskTemplate[3490]["MustDropMode1"] = 2				-- 掉落背包
tTaskTemplate[3490]["MustFallItemId1"] = {}
tTaskTemplate[3490]["MustFallItemId1"][1] = {}
tTaskTemplate[3490]["MustFallItemId1"][1]["ItemId"] = 711322
tTaskTemplate[3490]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3490]["MustFallItemId1"][1]["ItemLimit"] = 5
tTaskTemplate[3490]["MonsterFunc"] = QuestRecruit_MustKillItem 	-- 击杀怪物后触发函数
tTaskTemplate[3490]["ReqItemFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时物品数量弹出提示

-- 交任务
tTaskTemplate[3490]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3490]["ReqItemId1"] = 711322
tTaskTemplate[3490]["ReqItemCount1"] = 5
tTaskTemplate[3490]["NextTaskId"] = 3491
tTaskTemplate[3490]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3490]["Next"] = {}
tTaskTemplate[3490]["Next"]["NpcId"] = 0
tTaskTemplate[3490]["Next"]["MapId"] = 1011
tTaskTemplate[3490]["Next"]["PosX"] = 650
tTaskTemplate[3490]["Next"]["PosY"] = 530
-- 中间环节
tTaskTemplate[3490]["Mid"] = {}
tTaskTemplate[3490]["Mid"]["NpcId"] = 2002
tTaskTemplate[3490]["Mid"]["MapId"] = 1011
tTaskTemplate[3490]["Mid"]["PosX"] = 227
tTaskTemplate[3490]["Mid"]["PosY"] = 257

-- 奖励
tTaskTemplate[3490]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
tTaskTemplate[3490]["RewExpTime"] = 20			-- 20分钟经验
-- tTaskTemplate[3490]["RewMoney"] = 40000			-- 4W金币
-- tTaskTemplate[3490]["RewSpace"] = 2
-- tTaskTemplate[3490]["RewItemId1"] = 730001		-- +1赤炼石*2
-- tTaskTemplate[3490]["RewItemAttr1"] = "0 2"


---------------------------
-- 帮助村长
-- 接任务
tTaskTemplate[3491] = {}
tTaskTemplate[3491]["IsReceived"] = {400,700}
tTaskTemplate[3491]["FrontTask"] = 3490
tTaskTemplate[3491]["TaskId"] = 3491
tTaskTemplate[3491]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3491]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3491]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3491]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3491]["MeetAccept"] = "7-1"	-- 接任务对白
tTaskTemplate[3491]["HasAccept"] = "7-1" 	-- 已接未完成

-- 交任务
tTaskTemplate[3491]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3491]["NextTaskId"] = 3492
tTaskTemplate[3491]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3491]["Next"] = {}
tTaskTemplate[3491]["Next"]["NpcId"] = 8273
tTaskTemplate[3491]["Next"]["MapId"] = 1011
tTaskTemplate[3491]["Next"]["PosX"] = 772
tTaskTemplate[3491]["Next"]["PosY"] = 475

-- 奖励
tTaskTemplate[3491]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3491]["RewExpTime"] = 12			-- 12分钟经验
-- tTaskTemplate[3491]["RewMoney"] = 10000			-- 1W金币
tTaskTemplate[3491]["RewSpace"] = 2
-- 【流星】*3、【双龙城回城卷】*2---流星去掉，额外得鞋子，160059
tTaskTemplate[3491]["RewItemId1"] = 160058
tTaskTemplate[3491]["RewItemAttr1"] = "0 1 3"
tTaskTemplate[3491]["RewItemId2"] = 1060020		-- 双龙城回城卷*2
tTaskTemplate[3491]["RewItemAttr2"] = "0 2 3"


---------------------------
-- 教训火鼠
-- 接任务
tTaskTemplate[3492] = {}
tTaskTemplate[3492]["IsReceived"] = {400,700}
tTaskTemplate[3492]["FrontTask"] = 3491
tTaskTemplate[3492]["TaskId"] = 3492
tTaskTemplate[3492]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3492]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3492]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3492]["HandOverSpace"] = "4-3" 	--交任务背包达上限
tTaskTemplate[3492]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3492]["HandOverItem"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3492]["MonsterTask"] = {300,500,800}		--怪物任务条件配置表
tTaskTemplate[3492]["ReqMonsterId1"] = {8,67,3032} 				-- 交任务需要怪物ID
tTaskTemplate[3492]["MustSpace"] = 1 					--怪物掉落需要检测背包空间
tTaskTemplate[3492]["MustDropMode1"] = 2				-- 掉落背包
tTaskTemplate[3492]["MustFallItemId1"] = {}
tTaskTemplate[3492]["MustFallItemId1"][1] = {}
tTaskTemplate[3492]["MustFallItemId1"][1]["ItemId"] = 711325
tTaskTemplate[3492]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3492]["MustFallItemId1"][1]["ItemLimit"] = 5
tTaskTemplate[3492]["MonsterFunc"] = QuestRecruit_MustKillItem 	-- 击杀怪物后触发函数
tTaskTemplate[3492]["ReqItemFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时物品数量弹出提示

-- 交任务
tTaskTemplate[3492]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3492]["ReqItemId1"] = 711325
tTaskTemplate[3492]["ReqItemCount1"] = 5
tTaskTemplate[3492]["NextTaskId"] = 3493
tTaskTemplate[3492]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3492]["Next"] = {}
tTaskTemplate[3492]["Next"]["NpcId"] = 0
tTaskTemplate[3492]["Next"]["MapId"] = 1011
tTaskTemplate[3492]["Next"]["PosX"] = 730
tTaskTemplate[3492]["Next"]["PosY"] = 400
-- 中间环节
tTaskTemplate[3492]["Mid"] = {}
tTaskTemplate[3492]["Mid"]["NpcId"] = 8273
tTaskTemplate[3492]["Mid"]["MapId"] = 1011
tTaskTemplate[3492]["Mid"]["PosX"] = 772
tTaskTemplate[3492]["Mid"]["PosY"] = 475

-- 奖励
tTaskTemplate[3492]["HandOverTask"] = {100,200,500,1200}	--交任务的奖励表
tTaskTemplate[3492]["RewExpTime"] = 25			-- 25分钟经验
-- tTaskTemplate[3492]["RewMoney"] = 40000			-- 4W金币
-- tTaskTemplate[3492]["RewSpace"] = 2
-- tTaskTemplate[3492]["RewItemId1"] = 1088000		-- 龙珠*2
-- tTaskTemplate[3492]["RewItemAttr1"] = "0 2"

---------------------------
-- 自卫队长
-- 接任务
tTaskTemplate[3493] = {}
tTaskTemplate[3493]["IsReceived"] = {400,700}
tTaskTemplate[3493]["FrontTask"] = 3492
tTaskTemplate[3493]["TaskId"] = 3493
tTaskTemplate[3493]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3493]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3493]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3493]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3493]["MeetAccept"] = "5-1"	-- 接任务对白
tTaskTemplate[3493]["HasAccept"] = "5-1" 	-- 已接未完成

-- 交任务
tTaskTemplate[3493]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3493]["NextTaskId"] = 3494
tTaskTemplate[3493]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3493]["Next"] = {}
tTaskTemplate[3493]["Next"]["NpcId"] = 8277
tTaskTemplate[3493]["Next"]["MapId"] = 1011
tTaskTemplate[3493]["Next"]["PosX"] = 655
tTaskTemplate[3493]["Next"]["PosY"] = 703

-- 奖励
tTaskTemplate[3493]["HandOverTask"] = {100,200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3493]["RewExpTime"] = 20			-- 20分钟经验
-- tTaskTemplate[3493]["RewMoney"] = 10000			-- 1W金币
tTaskTemplate[3493]["RewSpace"] = 2
tTaskTemplate[3493]["RewItemId1"] = 1002020		-- 冷香草*150
tTaskTemplate[3493]["RewItemAttr1"] = "0 5 3"
-- 道士
tTaskTemplate[3493]["RewardProItem"] = {}
tTaskTemplate[3493]["RewardProItem"][1] = {}
tTaskTemplate[3493]["RewardProItem"][1]["MinPro"] = 100
tTaskTemplate[3493]["RewardProItem"][1]["MaxPro"] = 145
tTaskTemplate[3493]["RewardProItem"][1]["ProItem"] = {}
tTaskTemplate[3493]["RewardProItem"][1]["ProItem"][1] = {}
tTaskTemplate[3493]["RewardProItem"][1]["ProItem"][1]["Id"] = 1002030		-- 三才归化丹*150
tTaskTemplate[3493]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 5 3"

---------------------------
-- 火焰之心
-- 接任务
tTaskTemplate[3494] = {}
tTaskTemplate[3494]["IsReceived"] = {400,700}
tTaskTemplate[3494]["FrontTask"] = 3493
tTaskTemplate[3494]["TaskId"] = 3494
tTaskTemplate[3494]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3494]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3494]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3494]["HandOverSpace"] = "1-3" 	--交任务背包达上限
tTaskTemplate[3494]["HandOverItem"] = "2-2" -- 交任务没有物品
tTaskTemplate[3494]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3494]["HasAccept"] = "3-2" 	-- 任务中

-- 怪物配置
tTaskTemplate[3494]["MonsterTask"] = {300,500,800}		--怪物任务条件配置表
tTaskTemplate[3494]["ReqMonsterId1"] = {9,68} 				-- 交任务需要怪物ID
tTaskTemplate[3494]["MustSpace"] = 1 					--怪物掉落需要检测背包空间
tTaskTemplate[3494]["MustDropMode1"] = 2				-- 掉落背包
tTaskTemplate[3494]["MustFallItemId1"] = {}
tTaskTemplate[3494]["MustFallItemId1"][1] = {}
tTaskTemplate[3494]["MustFallItemId1"][1]["ItemId"] = 3306726
tTaskTemplate[3494]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3494]["MustFallItemId1"][1]["ItemLimit"] = 5
tTaskTemplate[3494]["MonsterFunc"] = QuestRecruit_MustKillItem 	-- 击杀怪物后触发函数
tTaskTemplate[3494]["ReqItemFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时物品数量弹出提示

-- 交任务
tTaskTemplate[3494]["IsHandOver"] = {400,900}		--任务交任务条件配置表
tTaskTemplate[3494]["ReqItemId1"] = 3306726
tTaskTemplate[3494]["ReqItemCount1"] = 5
tTaskTemplate[3494]["NextTaskId"] = 3561
tTaskTemplate[3494]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3494]["Next"] = {}
tTaskTemplate[3494]["Next"]["NpcId"] = 0
tTaskTemplate[3494]["Next"]["MapId"] = 1011
tTaskTemplate[3494]["Next"]["PosX"] = 510
tTaskTemplate[3494]["Next"]["PosY"] = 769
-- 中间环节
tTaskTemplate[3494]["Mid"] = {}
tTaskTemplate[3494]["Mid"]["NpcId"] = 8279
tTaskTemplate[3494]["Mid"]["MapId"] = 1011
tTaskTemplate[3494]["Mid"]["PosX"] = 661
tTaskTemplate[3494]["Mid"]["PosY"] = 704

-- 奖励
tTaskTemplate[3494]["HandOverTask"] = {100,200,500,1200,1300}	--交任务的奖励表
tTaskTemplate[3494]["RewExpTime"] = 280			-- 30分钟经验
-- tTaskTemplate[3494]["RewMoney"] = 40000			-- 4W金币
-- tTaskTemplate[3494]["RewSpace"] = 2
-- 帽子（37级上品）、【流星卷】*1-换武器（见表2）
-- tTaskTemplate[3494]["RewItemId1"] = 720027		-- 流星卷*1
-- tTaskTemplate[3494]["RewItemAttr1"] = "0 1"
-- 换武器

---------------------------
-- 二涉日常
-- 接任务
tTaskTemplate[3495] = {}
tTaskTemplate[3495]["IsReceived"] = {400,700}
tTaskTemplate[3495]["FrontTask"] = 3494
tTaskTemplate[3495]["TaskId"] = 3495
tTaskTemplate[3495]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3495]["SubTask"] = "7-1" 		-- 交任务
tTaskTemplate[3495]["HandOverMoney"] = "1-2" 	--交任务金币达上限
tTaskTemplate[3495]["HandOverSpace"] = "7-3" 	--交任务背包达上限
-- tTaskTemplate[3495]["HandOverDetail"] = "7-2" 	-- 交任务data位不满足
tTaskTemplate[3495]["MeetAccept"] = "3-1"		-- 接任务对白
tTaskTemplate[3495]["HasAccept"] = "3-1"	-- 任务中

-- 交任务
tTaskTemplate[3495]["IsHandOver"] = {900}		--任务交任务条件配置表
-- tTaskTemplate[3495]["Data1"] = 1
tTaskTemplate[3495]["NextTaskId"] = 3561 			-- 主线任务
-------------
-- tTaskTemplate[3495]["OtherTaskId1"] = 3562 		-- 支线任务1
-- tTaskTemplate[3495]["OtherLev1"] = 50 			-- 任务领取等级上限
-- tTaskTemplate[3495]["OtherDataPos1"] = 1 		-- Data存储位
-------------
tTaskTemplate[3495]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3495]["Next"] = {}
tTaskTemplate[3495]["Next"]["NpcId"] = 9998
tTaskTemplate[3495]["Next"]["MapId"] = 1002
tTaskTemplate[3495]["Next"]["PosX"] = 183
tTaskTemplate[3495]["Next"]["PosY"] = 284
-- 奖励
tTaskTemplate[3495]["HandOverTask"] = {200,500,1200}	--交任务的奖励表
tTaskTemplate[3495]["RewExpTime"] = 30				-- 30分钟经验
-- tTaskTemplate[3495]["RewMoney"] = 50000				-- 5W金币
tTaskTemplate[3495]["RewSpace"] = 2
tTaskTemplate[3495]["RewItemId1"] = 1088000			-- 龙珠*2
tTaskTemplate[3495]["RewItemAttr1"] = "0 2 3"

---------------------------
-- 崭露头角
-- 接任务
tTaskTemplate[3561] = {}
tTaskTemplate[3561]["IsReceived"] = {400,700}
tTaskTemplate[3561]["FrontTask"] = 3494
tTaskTemplate[3561]["TaskId"] = 3561
tTaskTemplate[3561]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3561]["SubTask"] = "7-5" 			-- 交任务
tTaskTemplate[3561]["HandOverDetail"] = "7-6" 	-- 交任务data位不满足
tTaskTemplate[3561]["HandOverSpace"] = "7-7" 	--交任务背包达上限
tTaskTemplate[3561]["MeetAccept"] = "7-4"		-- 接任务对白

-- 交任务
tTaskTemplate[3561]["IsHandOver"] = {900,1100}		--任务交任务条件配置表
tTaskTemplate[3561]["Data1"] = 50
tTaskTemplate[3561]["NextTaskId"] = 3496
tTaskTemplate[3561]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3561]["Next"] = {}
tTaskTemplate[3561]["Next"]["NpcId"] = 0
tTaskTemplate[3561]["Next"]["MapId"] = 1011
tTaskTemplate[3561]["Next"]["PosX"] = 338
tTaskTemplate[3561]["Next"]["PosY"] = 126

-- 奖励
tTaskTemplate[3561]["HandOverTask"] = {200,1200}		--交任务的奖励表
-- tTaskTemplate[3561]["RewSpace"] = 3
-- tTaskTemplate[3561]["RewItemId1"] = 1088001			-- 流星*3
-- tTaskTemplate[3561]["RewItemAttr1"] = "0 3"
-- 【流星】*3--额外弹出105，点击确定取消都进入个人BOSS副本，50级部分

---------------------------
-- 勤学苦练（一）--杀翼蛇
-- 接任务
tTaskTemplate[3562] = {}
tTaskTemplate[3562]["IsReceived"] = {400,700}
tTaskTemplate[3562]["FrontTask"] = 3495
tTaskTemplate[3562]["TaskId"] = 3562

-- 对白编号表
tTaskTemplate[3562]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3562]["HandOverMonster"] = "2-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3562]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3562]["ReqMonsterId1"] = {6,65} 		-- 交任务需要怪物ID
tTaskTemplate[3562]["ReqMonsterCount1"] = 30 	-- 怪物数量
tTaskTemplate[3562]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3562]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3562]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3562]["NextTaskId"] = 3563
tTaskTemplate[3562]["NextLev"] = 50 			--下个任务等级上限
tTaskTemplate[3562]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3562]["Next"] = {}
tTaskTemplate[3562]["Next"]["NpcId"] = 0
tTaskTemplate[3562]["Next"]["MapId"] = 1011
tTaskTemplate[3562]["Next"]["PosX"] = 245
tTaskTemplate[3562]["Next"]["PosY"] = 65
-- 中间环节
tTaskTemplate[3562]["Mid"] = {}
tTaskTemplate[3562]["Mid"]["NpcId"] = 8266
tTaskTemplate[3562]["Mid"]["MapId"] = 1011
tTaskTemplate[3562]["Mid"]["PosX"] = 171
tTaskTemplate[3562]["Mid"]["PosY"] = 207

-- 奖励
tTaskTemplate[3562]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3562]["RewExpTime"] = 45


---------------------------
-- 勤学苦练（二）--杀土匪
-- 接任务
tTaskTemplate[3563] = {}
tTaskTemplate[3563]["IsReceived"] = {400,700}
tTaskTemplate[3563]["FrontTask"] = 3495
tTaskTemplate[3563]["TaskId"] = 3563

-- 对白编号表
tTaskTemplate[3563]["SubTask"] = "3-1" 		-- 交任务
tTaskTemplate[3563]["HandOverMonster"] = "3-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3563]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3563]["ReqMonsterId1"] = {7,66} 		-- 交任务需要怪物ID
tTaskTemplate[3563]["ReqMonsterCount1"] = 30 	-- 怪物数量
tTaskTemplate[3563]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3563]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3563]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3563]["NextTaskId"] = 3564
tTaskTemplate[3563]["NextLev"] = 50 			--下个任务等级上限
tTaskTemplate[3563]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3563]["Next"] = {}
tTaskTemplate[3563]["Next"]["NpcId"] = 0
tTaskTemplate[3563]["Next"]["MapId"] = 1011
tTaskTemplate[3563]["Next"]["PosX"] = 187
tTaskTemplate[3563]["Next"]["PosY"] = 153
-- 中间环节
tTaskTemplate[3563]["Mid"] = {}
tTaskTemplate[3563]["Mid"]["NpcId"] = 8266
tTaskTemplate[3563]["Mid"]["MapId"] = 1011
tTaskTemplate[3563]["Mid"]["PosX"] = 171
tTaskTemplate[3563]["Mid"]["PosY"] = 207

-- 奖励
tTaskTemplate[3563]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3563]["RewExpTime"] = 45


---------------------------
-- 勤学苦练（三）--杀火鼠
-- 接任务
tTaskTemplate[3564] = {}
tTaskTemplate[3564]["IsReceived"] = {400,700}
tTaskTemplate[3564]["FrontTask"] = 3495
tTaskTemplate[3564]["TaskId"] = 3564

-- 对白编号表
tTaskTemplate[3564]["SubTask"] = "4-1" 		-- 交任务
tTaskTemplate[3564]["HandOverMonster"] = "4-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3564]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3564]["ReqMonsterId1"] = {8,67} 		-- 交任务需要怪物ID
tTaskTemplate[3564]["ReqMonsterCount1"] = 35 	-- 怪物数量
tTaskTemplate[3564]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3564]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3564]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3564]["NextTaskId"] = 3565
tTaskTemplate[3564]["NextLev"] = 50 			--下个任务等级上限
tTaskTemplate[3564]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3564]["Next"] = {}
tTaskTemplate[3564]["Next"]["NpcId"] = 0
tTaskTemplate[3564]["Next"]["MapId"] = 1011
tTaskTemplate[3564]["Next"]["PosX"] = 238
tTaskTemplate[3564]["Next"]["PosY"] = 407
-- 中间环节
tTaskTemplate[3564]["Mid"] = {}
tTaskTemplate[3564]["Mid"]["NpcId"] = 8266
tTaskTemplate[3564]["Mid"]["MapId"] = 1011
tTaskTemplate[3564]["Mid"]["PosX"] = 171
tTaskTemplate[3564]["Mid"]["PosY"] = 207

-- 奖励
tTaskTemplate[3564]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3564]["RewExpTime"] = 45

---------------------------
-- 勤学苦练（四）--杀火精灵
-- 接任务
tTaskTemplate[3565] = {}
tTaskTemplate[3565]["IsReceived"] = {400,700}
tTaskTemplate[3565]["FrontTask"] = 3495
tTaskTemplate[3565]["TaskId"] = 3565

-- 对白编号表
tTaskTemplate[3565]["SubTask"] = "5-1" 		-- 交任务
tTaskTemplate[3565]["HandOverMonster"] = "5-2" 	-- 交任务未完成

-- 怪物配置
tTaskTemplate[3565]["MonsterTask"] = {300,700}		--怪物任务条件配置表
tTaskTemplate[3565]["ReqMonsterId1"] = {9,68} 		-- 交任务需要怪物ID
tTaskTemplate[3565]["ReqMonsterCount1"] = 35 	-- 怪物数量
tTaskTemplate[3565]["MonsterFunc"] = QuestRecruit_MustKillCount 		-- 击杀怪物后触发函数
tTaskTemplate[3565]["KillMonsterFunc"] = QuestRecruit_MonsterDone 	-- 杀怪满足交任务时怪物数量弹出提示

-- 交任务
tTaskTemplate[3565]["IsHandOver"] = {500}		--任务交任务条件配置表
tTaskTemplate[3565]["NextTaskId"] = 3562
tTaskTemplate[3565]["NextLev"] = 50 			--下个任务等级上限
tTaskTemplate[3565]["HandOverFunc"] = QuestRecruit_CycleTaskFunc -- 交循环任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3565]["Next"] = {}
tTaskTemplate[3565]["Next"]["NpcId"] = 0
tTaskTemplate[3565]["Next"]["MapId"] = 1011
tTaskTemplate[3565]["Next"]["PosX"] = 410
tTaskTemplate[3565]["Next"]["PosY"] = 515
-- 中间环节
tTaskTemplate[3565]["Mid"] = {}
tTaskTemplate[3565]["Mid"]["NpcId"] = 8266
tTaskTemplate[3565]["Mid"]["MapId"] = 1011
tTaskTemplate[3565]["Mid"]["PosX"] = 171
tTaskTemplate[3565]["Mid"]["PosY"] = 207

-- 奖励
tTaskTemplate[3565]["HandOverTask"] = {500}	--交任务的奖励表
tTaskTemplate[3565]["RewExpTime"] = 45


------------------------------------------------------------------------------------
-- 怪物配置
-- 【翼蛇】
tTaskMonster[6] = {3489,3562} -- 翼蛇之乱
tTaskMonster[65] = {3489,3562} -- 翼蛇之乱
-- 【土匪】
tTaskMonster[7] = {3490,3563} -- 夺回军粮
tTaskMonster[66] = {3490,3563} -- 夺回军粮
-- 【火鼠】
tTaskMonster[8] = {3492,3564} -- 教训火鼠
tTaskMonster[67] = {3492,3564} -- 教训火鼠
tTaskMonster[3032] = {3492} -- 教训火鼠
-- 【火精灵】
tTaskMonster[9] = {3494,3565} -- 火焰之心
tTaskMonster[68] = {3494,3565} -- 火焰之心
-----------------------------------------NPC对白配置-------------------------------------------
----------------------------------------【枫溪林片区】-------------------------------------------
-- 【鸣凤堡总兵】
tNpcFace[175] = 77
tNpcGossip[2002] = tNpcGossip[2002] or DefaultNpc:new{}
tNpcGossip[2002]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[2002]["Text1-1"] = {111}
tNpcGossip[2002]["Text111"] = tQuestArea2nd_Text[2002]["Text111"]
tNpcGossip[2002]["tOption1-1"] = {111}
tNpcGossip[2002]["Option111"] = tQuestArea2nd_Text[2002]["111"]

-- 金币达上限
tNpcGossip[2002]["Text1-2"] = {121}
tNpcGossip[2002]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[2002]["tOption1-2"] = {121}
tNpcGossip[2002]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[2002]["Text1-3"] = {131}
tNpcGossip[2002]["Text131"] = tQuestArea2nd_Text[2002]["Text131"]
tNpcGossip[2002]["tOption1-3"] = {131}
tNpcGossip[2002]["Option131"] = tQuestArea2nd_Text[2002]["131"]

--（交）前往枫溪林	任务ID 3488
tNpcGossip[2002]["Text2-1"] = {211}
tNpcGossip[2002]["Text211"] = tQuestArea2nd_Text[2002]["Text211"]
tNpcGossip[2002]["tOption2-1"] = {211}
tNpcGossip[2002]["Option211"] = tQuestArea2nd_Text[2002]["211"]
tNpcGossip[2002]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3488</N>2002</N>1"

--（接）翼蛇之乱	任务ID 3489
tNpcGossip[2002]["Text3-1"] = {311}
tNpcGossip[2002]["Text311"] = tQuestArea2nd_Text[2002]["Text311"]
tNpcGossip[2002]["tOption3-1"] = {311}
tNpcGossip[2002]["Option311"] = tQuestArea2nd_Text[2002]["311"]
tNpcGossip[2002]["OptionFunc311"] = "QuestRecruit_FindWay</N>3489"

--（任务中）翼蛇之乱
tNpcGossip[2002]["Text3-2"] = {321}
tNpcGossip[2002]["Text321"] = tQuestArea2nd_Text[2002]["Text321"]
tNpcGossip[2002]["tOption3-2"] = {321}
tNpcGossip[2002]["Option321"] = tQuestArea2nd_Text[2002]["321"]
tNpcGossip[2002]["OptionFunc321"] = "QuestRecruit_FindWay</N>3489"

--（交）翼蛇之乱	任务ID 3489
tNpcGossip[2002]["Text4-1"] = {411}
tNpcGossip[2002]["Text411"] = tQuestArea2nd_Text[2002]["Text411"]
tNpcGossip[2002]["tOption4-1"] = {411}
tNpcGossip[2002]["Option411"] = tQuestArea2nd_Text[2002]["411"]
tNpcGossip[2002]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3489</N>2002</N>1"

-- 背包达上限
tNpcGossip[2002]["Text4-3"] = {431}
tNpcGossip[2002]["Text431"] = tQuestArea2nd_Text[2002]["Text431"]
tNpcGossip[2002]["tOption4-3"] = {431}
tNpcGossip[2002]["Option431"] = tQuestArea2nd_Text[2002]["431"]

--（接）夺回军粮	任务ID 3490
tNpcGossip[2002]["Text5-1"] = {511,512}
tNpcGossip[2002]["Text511"] = tQuestArea2nd_Text[2002]["Text511"]
tNpcGossip[2002]["Text512"] = tQuestArea2nd_Text[2002]["Text512"]
tNpcGossip[2002]["tOption5-1"] = {511}
tNpcGossip[2002]["Option511"] = tQuestArea2nd_Text[2002]["511"]
tNpcGossip[2002]["OptionFunc511"] = "QuestRecruit_FindWay</N>3490"

--（任务中）夺回军粮
tNpcGossip[2002]["Text5-2"] = {521}
tNpcGossip[2002]["Text521"] = tQuestArea2nd_Text[2002]["Text521"]
tNpcGossip[2002]["tOption5-2"] = {521}
tNpcGossip[2002]["Option521"] = tQuestArea2nd_Text[2002]["521"]
tNpcGossip[2002]["OptionFunc521"] = "QuestRecruit_FindWay</N>3490"

--（交）夺回军粮	任务ID 3490
tNpcGossip[2002]["Text6-1"] = {611}
tNpcGossip[2002]["Text611"] = tQuestArea2nd_Text[2002]["Text611"]
tNpcGossip[2002]["tOption6-1"] = {611}
tNpcGossip[2002]["Option611"] = tQuestArea2nd_Text[2002]["611"]
tNpcGossip[2002]["OptionFunc611"] = "Task_IsHandOverByNpc</N>3490</N>2002</N>1"

-- 背包达上限
tNpcGossip[2002]["Text6-3"] = {631}
tNpcGossip[2002]["Text631"] = tQuestArea2nd_Text[2002]["Text631"]
tNpcGossip[2002]["tOption6-3"] = {631}
tNpcGossip[2002]["Option631"] = tQuestArea2nd_Text[2002]["631"]

--（接）帮助村长	任务ID 3491
tNpcGossip[2002]["Text7-1"] = {711}
tNpcGossip[2002]["Text711"] = tQuestArea2nd_Text[2002]["Text711"]
tNpcGossip[2002]["tOption7-1"] = {711}
tNpcGossip[2002]["Option711"] = tQuestArea2nd_Text[2002]["711"]
tNpcGossip[2002]["OptionFunc711"] = "QuestRecruit_FindWay</N>3491"


------------------------------------------
-- 【村长】
tNpcFace[1125] = 67
tNpcGossip[8273] = tNpcGossip[8273] or DefaultNpc:new{}
tNpcGossip[8273]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8273]["Text1-1"] = {111}
tNpcGossip[8273]["Text111"] = tQuestArea2nd_Text[8273]["Text111"]
tNpcGossip[8273]["tOption1-1"] = {111}
tNpcGossip[8273]["Option111"] = tQuestArea2nd_Text[8273]["111"]

-- 金币达上限
tNpcGossip[8273]["Text1-2"] = {121}
tNpcGossip[8273]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8273]["tOption1-2"] = {121}
tNpcGossip[8273]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8273]["Text1-3"] = {131}
tNpcGossip[8273]["Text131"] = tQuestArea2nd_Text[8273]["Text131"]
tNpcGossip[8273]["tOption1-3"] = {131}
tNpcGossip[8273]["Option131"] = tQuestArea2nd_Text[8273]["131"]

--（交）帮助村长	任务ID 3491
tNpcGossip[8273]["Text2-1"] = {211}
tNpcGossip[8273]["Text211"] = tQuestArea2nd_Text[8273]["Text211"]
tNpcGossip[8273]["tOption2-1"] = {211}
tNpcGossip[8273]["Option211"] = tQuestArea2nd_Text[8273]["211"]
tNpcGossip[8273]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3491</N>8273</N>1"

--（接）教训火鼠	任务ID 3492
tNpcGossip[8273]["Text3-1"] = {311,312}
tNpcGossip[8273]["Text311"] = tQuestArea2nd_Text[8273]["Text311"]
tNpcGossip[8273]["Text312"] = tQuestArea2nd_Text[8273]["Text312"]
tNpcGossip[8273]["tOption3-1"] = {311}
tNpcGossip[8273]["Option311"] = tQuestArea2nd_Text[8273]["311"]
tNpcGossip[8273]["OptionFunc311"] = "QuestRecruit_FindWay</N>3492"

--（任务中）教训火鼠
tNpcGossip[8273]["Text3-2"] = {321}
tNpcGossip[8273]["Text321"] = tQuestArea2nd_Text[8273]["Text321"]
tNpcGossip[8273]["tOption3-2"] = {321}
tNpcGossip[8273]["Option321"] = tQuestArea2nd_Text[8273]["321"]
tNpcGossip[8273]["OptionFunc321"] = "QuestRecruit_FindWay</N>3492"

--（交）教训火鼠	任务ID 3492
tNpcGossip[8273]["Text4-1"] = {411}
tNpcGossip[8273]["Text411"] = tQuestArea2nd_Text[8273]["Text411"]
tNpcGossip[8273]["tOption4-1"] = {411}
tNpcGossip[8273]["Option411"] = tQuestArea2nd_Text[8273]["411"]
tNpcGossip[8273]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3492</N>8273</N>1"

-- 背包达上限
tNpcGossip[8273]["Text4-3"] = {431}
tNpcGossip[8273]["Text431"] = tQuestArea2nd_Text[8273]["Text431"]
tNpcGossip[8273]["tOption4-3"] = {131}
tNpcGossip[8273]["Option431"] = tQuestArea2nd_Text[8273]["431"]

--（接）自卫队长	任务ID 3493
tNpcGossip[8273]["Text5-1"] = {511}
tNpcGossip[8273]["Text511"] = tQuestArea2nd_Text[8273]["Text511"]
tNpcGossip[8273]["tOption5-1"] = {511}
tNpcGossip[8273]["Option511"] = tQuestArea2nd_Text[8273]["511"]
tNpcGossip[8273]["OptionFunc511"] = "QuestRecruit_FindWay</N>3493"


------------------------------------------
-- 【自卫队长】
tNpcFace[445] = 102
tNpcGossip[8277] = tNpcGossip[8277] or DefaultNpc:new{}
tNpcGossip[8277]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8277]["Text1-1"] = {111}
tNpcGossip[8277]["Text111"] = tQuestArea2nd_Text[8277]["Text111"]
tNpcGossip[8277]["tOption1-1"] = {111}
tNpcGossip[8277]["Option111"] = tQuestArea2nd_Text[8277]["111"]

-- 金币达上限
tNpcGossip[8277]["Text1-2"] = {121}
tNpcGossip[8277]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8277]["tOption1-2"] = {121}
tNpcGossip[8277]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8277]["Text1-3"] = {131}
tNpcGossip[8277]["Text131"] = tQuestArea2nd_Text[8277]["Text131"]
tNpcGossip[8277]["tOption1-3"] = {131}
tNpcGossip[8277]["Option131"] = tQuestArea2nd_Text[8277]["131"]

--（交）自卫队长	任务ID 3493
tNpcGossip[8277]["Text2-1"] = {211}
tNpcGossip[8277]["Text211"] = tQuestArea2nd_Text[8277]["Text211"]
tNpcGossip[8277]["tOption2-1"] = {211}
tNpcGossip[8277]["Option211"] = tQuestArea2nd_Text[8277]["211"]
tNpcGossip[8277]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3493</N>8277</N>1"

--（接）火焰之心	任务ID 3494
tNpcGossip[8277]["Text3-1"] = {311,312}
tNpcGossip[8277]["Text311"] = tQuestArea2nd_Text[8277]["Text311"]
tNpcGossip[8277]["Text312"] = tQuestArea2nd_Text[8277]["Text312"]
tNpcGossip[8277]["tOption3-1"] = {311}
tNpcGossip[8277]["Option311"] = tQuestArea2nd_Text[8277]["311"]
tNpcGossip[8277]["OptionFunc311"] = "QuestRecruit_FindWay</N>3494"

--（任务中）火焰之心
tNpcGossip[8277]["Text3-2"] = {321}
tNpcGossip[8277]["Text321"] = tQuestArea2nd_Text[8277]["Text321"]
tNpcGossip[8277]["tOption3-2"] = {321}
tNpcGossip[8277]["Option321"] = tQuestArea2nd_Text[8277]["321"]
tNpcGossip[8277]["OptionFunc321"] = "QuestRecruit_FindWay</N>3494"


------------------------------------------
-- 【自卫队员阿龙】
tNpcFace[447] = 48
tNpcGossip[8279] = tNpcGossip[8279] or DefaultNpc:new{}
tNpcGossip[8279]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8279]["Text1-1"] = {111}
tNpcGossip[8279]["Text111"] = tQuestArea2nd_Text[8279]["Text111"]
tNpcGossip[8279]["tOption1-1"] = {111}
tNpcGossip[8279]["Option111"] = tQuestArea2nd_Text[8279]["111"]

-- 金币达上限
tNpcGossip[8279]["Text1-2"] = {121}
tNpcGossip[8279]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8279]["tOption1-2"] = {121}
tNpcGossip[8279]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[8279]["Text1-3"] = {131}
tNpcGossip[8279]["Text131"] = tQuestArea2nd_Text[8279]["Text131"]
tNpcGossip[8279]["tOption1-3"] = {131}
tNpcGossip[8279]["Option131"] = tQuestArea2nd_Text[8279]["131"]

--（交）火焰之心	任务ID 3494
tNpcGossip[8279]["Text2-1"] = {211}
tNpcGossip[8279]["Text211"] = tQuestArea2nd_Text[8279]["Text211"]
tNpcGossip[8279]["tOption2-1"] = {211}
tNpcGossip[8279]["Option211"] = tQuestArea2nd_Text[8279]["211"]
tNpcGossip[8279]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3494</N>8279</N>1"

--（交）火焰之心	未完成
tNpcGossip[8279]["Text2-2"] = {221}
tNpcGossip[8279]["Text221"] = tQuestArea2nd_Text[8279]["Text221"]
tNpcGossip[8279]["tOption2-2"] = {221}
tNpcGossip[8279]["Option221"] = tQuestArea2nd_Text[8279]["221"]

--（接）二涉日常	任务ID 3495
tNpcGossip[8279]["Text3-1"] = {311}
tNpcGossip[8279]["Text311"] = tQuestArea2nd_Text[8279]["Text311"]
tNpcGossip[8279]["tOption3-1"] = {311}
tNpcGossip[8279]["Option311"] = tQuestArea2nd_Text[8279]["311"]
tNpcGossip[8279]["OptionFunc311"] = "QuestRecruit_TransPos</N>3495"

----------------------------------------
-- 【鸣凤堡副总兵】
tNpcFace[434] = 95
tNpcGossip[8266] = tNpcGossip[8266] or DefaultNpc:new{}
tNpcGossip[8266]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[8266]["Text1-1"] = {111}
tNpcGossip[8266]["Text111"] = tQuestArea2nd_Text[8266]["Text111"]
tNpcGossip[8266]["tOption1-1"] = {111}
tNpcGossip[8266]["Option111"] = tQuestArea2nd_Text[8266]["111"]

--（交）勤学苦练（一）	任务ID 3562
tNpcGossip[8266]["Text2-1"] = {211}
tNpcGossip[8266]["Text211"] = tQuestArea2nd_Text[8266]["Text211"]
tNpcGossip[8266]["tOption2-1"] = {211}
tNpcGossip[8266]["Option211"] = tQuestArea2nd_Text[8266]["211"]
tNpcGossip[8266]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3562</N>8266</N>1"

--（交）勤学苦练（一）	未完成
tNpcGossip[8266]["Text2-2"] = {221}
tNpcGossip[8266]["Text221"] = tQuestArea2nd_Text[8266]["Text221"]
tNpcGossip[8266]["tOption2-2"] = {221}
tNpcGossip[8266]["Option221"] = tQuestArea2nd_Text[8266]["221"]
tNpcGossip[8266]["OptionFunc221"] = "QuestRecruit_FindWay</N>3562"

---------------------
--（交）勤学苦练（二）	任务ID 3563
tNpcGossip[8266]["Text3-1"] = {311}
tNpcGossip[8266]["Text311"] = tQuestArea2nd_Text[8266]["Text311"]
tNpcGossip[8266]["tOption3-1"] = {311}
tNpcGossip[8266]["Option311"] = tQuestArea2nd_Text[8266]["311"]
tNpcGossip[8266]["OptionFunc311"] = "Task_IsHandOverByNpc</N>3563</N>8266</N>1"

--（交）勤学苦练（二）	未完成
tNpcGossip[8266]["Text3-2"] = {321}
tNpcGossip[8266]["Text321"] = tQuestArea2nd_Text[8266]["Text321"]
tNpcGossip[8266]["tOption3-2"] = {321}
tNpcGossip[8266]["Option321"] = tQuestArea2nd_Text[8266]["321"]
tNpcGossip[8266]["OptionFunc321"] = "QuestRecruit_FindWay</N>3563"

--（交）勤学苦练（三）	任务ID 3564
tNpcGossip[8266]["Text4-1"] = {411}
tNpcGossip[8266]["Text411"] = tQuestArea2nd_Text[8266]["Text411"]
tNpcGossip[8266]["tOption4-1"] = {411}
tNpcGossip[8266]["Option411"] = tQuestArea2nd_Text[8266]["411"]
tNpcGossip[8266]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3564</N>8266</N>1"

--（交）勤学苦练（三）	未完成
tNpcGossip[8266]["Text4-2"] = {421}
tNpcGossip[8266]["Text421"] = tQuestArea2nd_Text[8266]["Text421"]
tNpcGossip[8266]["tOption4-2"] = {421}
tNpcGossip[8266]["Option421"] = tQuestArea2nd_Text[8266]["421"]
tNpcGossip[8266]["OptionFunc421"] = "QuestRecruit_FindWay</N>3564"

--（交）勤学苦练（四）	任务ID 3565
tNpcGossip[8266]["Text5-1"] = {511}
tNpcGossip[8266]["Text511"] = tQuestArea2nd_Text[8266]["Text511"]
tNpcGossip[8266]["tOption5-1"] = {511}
tNpcGossip[8266]["Option511"] = tQuestArea2nd_Text[8266]["511"]
tNpcGossip[8266]["OptionFunc511"] = "Task_IsHandOverByNpc</N>3565</N>8266</N>1"

--（交）勤学苦练（四）	未完成
tNpcGossip[8266]["Text5-2"] = {521}
tNpcGossip[8266]["Text521"] = tQuestArea2nd_Text[8266]["Text521"]
tNpcGossip[8266]["tOption5-2"] = {521}
tNpcGossip[8266]["Option521"] = tQuestArea2nd_Text[8266]["521"]
tNpcGossip[8266]["OptionFunc521"] = "QuestRecruit_FindWay</N>3565"


