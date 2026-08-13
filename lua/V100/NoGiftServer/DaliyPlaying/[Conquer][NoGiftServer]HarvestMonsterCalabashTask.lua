------------------------------------------------------------------------------------
--Name:		180926[简体征服][任务脚本]无赠品服务器制作日常玩法
--Creator: 	兰瑞妹
--Created:	2018/09/27
------------------------------------------------------------------------------------
-- 需求
-- 3.4、收妖葫芦任务：根据等级在各片区可领取，越高级的片区可完成次数越多，组队可共享部分杀怪数量，完成后可获得经验、聚神丹和流星奖励

-- 命名前缀
-- HarvestMonster_CalabashTask_

-- logid 12001177

-- #stc 掩码说明 
-- #stc(185,14) 23288,'双龙城总兵' 当天接取任务次数，最多10次，隔天清空
-- #stc(185,15) 23289,'鸣凤堡总兵' 当天接取任务次数，最多20次，隔天清空
-- #stc(185,16) 23290,'黑虎城总兵' 当天接取任务次数，最多25次，隔天清空
-- #stc(185,17) 23291,'云门关总兵' 当天接取任务次数，最多30次，隔天清空
-- #stc(185,18) 23292,'白鹭城总兵' 当天接取任务次数，最多30次，隔天清空
-- #stc(185,19) 23293,'敦煌副总兵' 当天接取任务次数，最多30次，隔天清空
-- #stc(185,20) 23294,'地穴一层总兵' 当天接取任务次数，最多30次，隔天清空
-- #stc(185,21) 23295,'地穴二层总兵' 当天接取任务次数，最多30次，隔天清空
-- #stc(185,22) 23296,'地穴三层总兵' 当天接取任务次数，最多30次，隔天清空

-- #动态码 53018
-- data0 标志4045任务龙珠的上限 10
-- data1 标志4046任务龙珠的上限 10
-- data2 标志4047任务龙珠的上限 10
-- data3 标志4048任务龙珠的上限 10
-- data4 标志4049任务龙珠的上限 10

-- 片区			任务							任务需求等级	每日可领取次数				对应npc			taskid
-- 双龙城		击杀叫天鸡10只				0					10								23288			4014
				-- 击杀斑鸠王15只			10					10								23288			4015
				-- 击杀斑鸠王20只			20					10								23288			4016
				-- 击杀罗罗鸟25只			20					10								23288			4017
-- 枫溪林		击杀鸣凤堡土匪30只			30					20								23289			4018
				-- 击杀土匪35只				30					20								23289			4019
				-- 击杀火鼠40只				40					20								23289			4020
				-- 击杀火精灵45只			40					20								23289			4021
				-- 击杀翼蛇45只				45					20								23289			4022
				-- 击杀翼蛇50只				45					20								23289			4023
-- 绝情谷		击杀须弥猴60只				50					25								23290			4024
				-- 击杀巨臂猿60只			55					25								23290			4025
				-- 击杀秃鹰80只				55					25								23290			4026
				-- 击杀长臂猿90只			60					25								23290			4027
				-- 击杀天雷巨猿100只			60					25								23290			4028
				-- 击杀蛇人100只				65					25								23290			4029
-- 大漠			击杀沙怪120只				70					30								23291			4030
				-- 击杀锤山怪120只			75					30								23291			4031
				-- 击杀震山怪120只			75					30								23291			4032(去掉)
				-- 击杀巨石怪120只			80					30								23291			4033
				-- 击杀鬼刃120只				85					30								23291			4034
-- 芦花荡		击杀金臂鸟人150只			90					30								23292			4035
				-- 击杀狂暴鸟人150只			95					30								23292			4036(去掉)
				-- 击杀银羽鸟人150只			95					30								23292			4037
				-- 击杀银羽鹰魔150只			100				30								23292			4038
				-- 击杀湖岛强匪150只			105				30								23292			4039
				-- 击杀湖岛悍匪150只			105				30								23292			4040
-- 敦煌			击杀土墓蝠180只			110				30								23293			4041
				-- 击杀嗜血蝙蝠180只			110				30								23293			4042
				-- 击杀牛怪180只				115				30								23293			4043
				-- 击杀血影红魔180只			115				30								23293			4044
				-- 击杀吸血蝙蝠180只			120				30								23293			4045
				-- 击杀血魔180只				125				30								23293			4046
-- 冰封1层		击杀冰凌腾蛇200只		130				30								23294			4047
-- 冰封2层	击杀尸魂女妖200只			135				30								23295			4048
-- 冰封3层	击杀鬼蛇兵200只				135				30								23296			4049


-- 打怪任务
tQuestRecruit_TaskStar[23288] = {4014,4015,4016,4017}
tQuestRecruit_TaskStar[23289] = {4018,4019,4020,4021,4022,4023}
tQuestRecruit_TaskStar[23290] = {4024,4025,4026,4027,4028,4029}
tQuestRecruit_TaskStar[23291] = {4030,4031,4033,4034}
tQuestRecruit_TaskStar[23292] = {4035,4037,4038,4039,4040}
tQuestRecruit_TaskStar[23293] = {4041,4042,4043,4044,4045,4046}
tQuestRecruit_TaskStar[23294] = {4047}
tQuestRecruit_TaskStar[23295] = {4048}
tQuestRecruit_TaskStar[23296] = {4049}

-- 妖匪讨伐（双龙城）
-- 双龙城 击杀叫天鸡10只
-- 接任务
tTaskTemplate[4014] = {}
tTaskTemplate[4014]["IsReceived"] = {400,700}
tTaskTemplate[4014]["TaskId"] = 4014
tTaskTemplate[4014]["AcceptTask"] = {100,300,500}
tTaskTemplate[4014]["RevSpace"] = 1
tTaskTemplate[4014]["RevLog"] = "0,0,4014,0,12001176,2,3311061,1"
tTaskTemplate[4014]["GetItemId1"] = 3311061
-- tTaskTemplate[4014]["RevMinLevel"] = 1
-- tTaskTemplate[4014]["RevMaxLevel"] = 10
-- 对白编号表
tTaskTemplate[4014]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4014]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4014]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4014]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4014]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4014]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4014]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4014]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4014]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4014]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4014]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4014]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4014]["ReqMonsterId1"] = {4833}
tTaskTemplate[4014]["ReqMonsterPos1"] = 1
tTaskTemplate[4014]["ReqMonsterCount1"] = 10
tTaskTemplate[4014]["ReqItemId1"] = 3311061
tTaskTemplate[4014]["ReqItemCount1"] = 1
tTaskTemplate[4014]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4014]["MonsterTask"] = {300,700} 
tTaskTemplate[4014]["IsShare"] = true -- 组队触发
tTaskTemplate[4014]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4014]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4014]["Next"] = {}
tTaskTemplate[4014]["Next"]["NpcId"] = 0
tTaskTemplate[4014]["Next"]["MapId"] = 10364
tTaskTemplate[4014]["Next"]["PosX"] = 357
tTaskTemplate[4014]["Next"]["PosY"] = 380
-- 中间环节
tTaskTemplate[4014]["Mid"] = {}
tTaskTemplate[4014]["Mid"]["NpcId"] = 23288
tTaskTemplate[4014]["Mid"]["MapId"] = 10364
tTaskTemplate[4014]["Mid"]["PosX"] = 308
tTaskTemplate[4014]["Mid"]["PosY"] = 337
-- 奖励
tTaskTemplate[4014]["HandOverTask"] = {100,200,500}	--交任务的奖励表
tTaskTemplate[4014]["RewExpTime"] = 6
tTaskTemplate[4014]["FullAddCultivation"] = 100 --满级给修行值
-- 双龙城 击杀斑鸠王15只
tTaskTemplate[4015] = {}
tTaskTemplate[4015]["IsReceived"] = {400,700}
tTaskTemplate[4015]["TaskId"] = 4015
tTaskTemplate[4015]["AcceptTask"] = {100,300,500}
tTaskTemplate[4015]["RevSpace"] = 1
tTaskTemplate[4015]["RevLog"] = "0,0,4015,0,12001176,2,3311061,1"
tTaskTemplate[4015]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4015]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4015]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4015]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4015]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4015]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4015]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4015]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4015]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4015]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4015]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4015]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4015]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4015]["ReqMonsterId1"] = {4834}
tTaskTemplate[4015]["ReqMonsterPos1"] = 1
tTaskTemplate[4015]["ReqMonsterCount1"] = 15
tTaskTemplate[4015]["ReqItemId1"] = 3311061
tTaskTemplate[4015]["ReqItemCount1"] = 1
tTaskTemplate[4015]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4015]["MonsterTask"] = {300,700} 
tTaskTemplate[4015]["IsShare"] = true
tTaskTemplate[4015]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4015]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4015]["Next"] = {}
tTaskTemplate[4015]["Next"]["NpcId"] = 0
tTaskTemplate[4015]["Next"]["MapId"] = 10364
tTaskTemplate[4015]["Next"]["PosX"] = 636
tTaskTemplate[4015]["Next"]["PosY"] = 550
-- 中间环节
tTaskTemplate[4015]["Mid"] = {}
tTaskTemplate[4015]["Mid"]["NpcId"] = 23288
tTaskTemplate[4015]["Mid"]["MapId"] = 10364
tTaskTemplate[4015]["Mid"]["PosX"] = 308
tTaskTemplate[4015]["Mid"]["PosY"] = 337
-- 奖励
tTaskTemplate[4015]["HandOverTask"] = {100,200,500}	--交任务的奖励表
tTaskTemplate[4015]["RewExpTime"] = 8
tTaskTemplate[4015]["FullAddCultivation"] = 100 --满级给修行值
-- 双龙城 击杀斑鸠王20只
tTaskTemplate[4016] = {}
tTaskTemplate[4016]["IsReceived"] = {400,700}
tTaskTemplate[4016]["TaskId"] = 4016
tTaskTemplate[4016]["AcceptTask"] = {100,300,500}
tTaskTemplate[4016]["RevSpace"] = 1
tTaskTemplate[4016]["RevLog"] = "0,0,4016,0,12001176,2,3311061,1"
tTaskTemplate[4016]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4016]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4016]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4016]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4016]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4016]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4016]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4016]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4016]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4016]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4016]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4016]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4016]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4016]["ReqMonsterId1"] = {4834}
tTaskTemplate[4016]["ReqMonsterPos1"] = 1
tTaskTemplate[4016]["ReqMonsterCount1"] = 20
tTaskTemplate[4016]["ReqItemId1"] = 3311061
tTaskTemplate[4016]["ReqItemCount1"] = 1
tTaskTemplate[4016]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4016]["MonsterTask"] = {300,700} 
tTaskTemplate[4016]["IsShare"] = true -- 组队触发
tTaskTemplate[4016]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4016]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4016]["Next"] = {}
tTaskTemplate[4016]["Next"]["NpcId"] = 0
tTaskTemplate[4016]["Next"]["MapId"] = 10364
tTaskTemplate[4016]["Next"]["PosX"] = 636
tTaskTemplate[4016]["Next"]["PosY"] = 550
-- 中间环节
tTaskTemplate[4016]["Mid"] = {}
tTaskTemplate[4016]["Mid"]["NpcId"] = 23288
tTaskTemplate[4016]["Mid"]["MapId"] = 10364
tTaskTemplate[4016]["Mid"]["PosX"] = 308
tTaskTemplate[4016]["Mid"]["PosY"] = 337
-- 奖励
tTaskTemplate[4016]["HandOverTask"] = {100,200,500,900,1600}	--交任务的奖励表
tTaskTemplate[4016]["RewExpTime"] = 12
tTaskTemplate[4016]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4016]["RewardRandom"] = {}
tTaskTemplate[4016]["RewardRandom"][1] = {}
tTaskTemplate[4016]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4016]["RewardRandom"][1][1] = {}
tTaskTemplate[4016]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4016]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4016]["RewardRandom"][1][1]["ItemChance"] = 167
tTaskTemplate[4016]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4016]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4016]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4016]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 双龙城 击杀罗罗鸟25只
tTaskTemplate[4017] = {}
tTaskTemplate[4017]["IsReceived"] = {400,700}
tTaskTemplate[4017]["TaskId"] = 4017
tTaskTemplate[4017]["AcceptTask"] = {100,300,500}
tTaskTemplate[4017]["RevSpace"] = 1
tTaskTemplate[4017]["RevLog"] = "0,0,4017,0,12001176,2,3311061,1"
tTaskTemplate[4017]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4017]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4017]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4017]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4017]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4017]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4017]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4017]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4017]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4017]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4017]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4017]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4017]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4017]["ReqMonsterId1"] = {4835}
tTaskTemplate[4017]["ReqMonsterPos1"] = 1
tTaskTemplate[4017]["ReqMonsterCount1"] = 25
tTaskTemplate[4017]["ReqItemId1"] = 3311061
tTaskTemplate[4017]["ReqItemCount1"] = 1
tTaskTemplate[4017]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4017]["MonsterTask"] = {300,700} 
tTaskTemplate[4017]["IsShare"] = true -- 组队触发
tTaskTemplate[4017]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4017]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4017]["Next"] = {}
tTaskTemplate[4017]["Next"]["NpcId"] = 0
tTaskTemplate[4017]["Next"]["MapId"] = 10364
tTaskTemplate[4017]["Next"]["PosX"] = 456
tTaskTemplate[4017]["Next"]["PosY"] = 634
-- 中间环节
tTaskTemplate[4017]["Mid"] = {}
tTaskTemplate[4017]["Mid"]["NpcId"] = 23288
tTaskTemplate[4017]["Mid"]["MapId"] = 10364
tTaskTemplate[4017]["Mid"]["PosX"] = 308
tTaskTemplate[4017]["Mid"]["PosY"] = 337
-- 奖励
tTaskTemplate[4017]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4017]["RewExpTime"] = 12
tTaskTemplate[4017]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4017]["RewardRandom"] = {}
tTaskTemplate[4017]["RewardRandom"][1] = {}
tTaskTemplate[4017]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4017]["RewardRandom"][1][1] = {}
tTaskTemplate[4017]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4017]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4017]["RewardRandom"][1][1]["ItemChance"] = 167
tTaskTemplate[4017]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4017]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4017]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4017]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 妖匪讨伐（鸣凤堡）
-- 30级至49级
-- 枫溪林 击杀鸣凤堡土匪30只
tTaskTemplate[4018] = {}
tTaskTemplate[4018]["IsReceived"] = {400,700}
tTaskTemplate[4018]["TaskId"] = 4018
tTaskTemplate[4018]["AcceptTask"] = {100,300,500}
tTaskTemplate[4018]["RevSpace"] = 1
tTaskTemplate[4018]["RevLog"] = "0,0,4018,0,12001176,2,3311061,1"
tTaskTemplate[4018]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4018]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4018]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4018]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4018]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4018]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4018]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4018]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4018]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4018]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4018]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4018]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4018]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4018]["ReqMonsterId1"] = {4868}
tTaskTemplate[4018]["ReqMonsterPos1"] = 1
tTaskTemplate[4018]["ReqMonsterCount1"] = 30
tTaskTemplate[4018]["ReqItemId1"] = 3311061
tTaskTemplate[4018]["ReqItemCount1"] = 1
tTaskTemplate[4018]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4018]["MonsterTask"] = {300,700} 
tTaskTemplate[4018]["IsShare"] = true -- 组队触发
tTaskTemplate[4018]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4018]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4018]["Next"] = {}
tTaskTemplate[4018]["Next"]["NpcId"] = 0
tTaskTemplate[4018]["Next"]["MapId"] = 10365
tTaskTemplate[4018]["Next"]["PosX"] = 77
tTaskTemplate[4018]["Next"]["PosY"] = 400
-- 中间环节
tTaskTemplate[4018]["Mid"] = {}
tTaskTemplate[4018]["Mid"]["NpcId"] = 23289
tTaskTemplate[4018]["Mid"]["MapId"] = 10365
tTaskTemplate[4018]["Mid"]["PosX"] = 211
tTaskTemplate[4018]["Mid"]["PosY"] = 312
-- 奖励
tTaskTemplate[4018]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4018]["RewExpTime"] = 16
tTaskTemplate[4018]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4018]["RewardRandom"] = {}
tTaskTemplate[4018]["RewardRandom"][1] = {}
tTaskTemplate[4018]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4018]["RewardRandom"][1][1] = {}
tTaskTemplate[4018]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4018]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4018]["RewardRandom"][1][1]["ItemChance"] = 200
tTaskTemplate[4018]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4018]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4018]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4018]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 枫溪林 击杀土匪35只
tTaskTemplate[4019] = {}
tTaskTemplate[4019]["IsReceived"] = {400,700}
tTaskTemplate[4019]["TaskId"] = 4019
tTaskTemplate[4019]["AcceptTask"] = {100,300,500}
tTaskTemplate[4019]["RevSpace"] = 1
tTaskTemplate[4019]["RevLog"] = "0,0,4019,0,12001176,2,3311061,1"
tTaskTemplate[4019]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4019]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4019]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4019]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4019]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4019]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4019]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4019]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4019]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4019]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4019]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4019]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4019]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4019]["ReqMonsterId1"] = {4839}
tTaskTemplate[4019]["ReqMonsterPos1"] = 1
tTaskTemplate[4019]["ReqMonsterCount1"] = 35
tTaskTemplate[4019]["ReqItemId1"] = 3311061
tTaskTemplate[4019]["ReqItemCount1"] = 1
tTaskTemplate[4019]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4019]["MonsterTask"] = {300,700} 
tTaskTemplate[4019]["IsShare"] = true -- 组队触发
tTaskTemplate[4019]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4019]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4019]["Next"] = {}
tTaskTemplate[4019]["Next"]["NpcId"] = 0
tTaskTemplate[4019]["Next"]["MapId"] = 10365
tTaskTemplate[4019]["Next"]["PosX"] = 240
tTaskTemplate[4019]["Next"]["PosY"] = 399
-- 中间环节
tTaskTemplate[4019]["Mid"] = {}
tTaskTemplate[4019]["Mid"]["NpcId"] = 23289
tTaskTemplate[4019]["Mid"]["MapId"] = 10365
tTaskTemplate[4019]["Mid"]["PosX"] = 211
tTaskTemplate[4019]["Mid"]["PosY"] = 312
-- 奖励
tTaskTemplate[4019]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4019]["RewExpTime"] = 16
tTaskTemplate[4019]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4019]["RewardRandom"] = {}
tTaskTemplate[4019]["RewardRandom"][1] = {}
tTaskTemplate[4019]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4019]["RewardRandom"][1][1] = {}
tTaskTemplate[4019]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4019]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4019]["RewardRandom"][1][1]["ItemChance"] = 200
tTaskTemplate[4019]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4019]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4019]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4019]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 枫溪林 击杀火鼠40只
tTaskTemplate[4020] = {}
tTaskTemplate[4020]["IsReceived"] = {400,700}
tTaskTemplate[4020]["TaskId"] = 4020
tTaskTemplate[4020]["AcceptTask"] = {100,300,500}
tTaskTemplate[4020]["RevSpace"] = 1
tTaskTemplate[4020]["RevLog"] = "0,0,4020,0,12001176,2,3311061,1"
tTaskTemplate[4020]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4020]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4020]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4020]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4020]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4020]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4020]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4020]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4020]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4020]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4020]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4020]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4020]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4020]["ReqMonsterId1"] = {4840}
tTaskTemplate[4020]["ReqMonsterPos1"] = 1
tTaskTemplate[4020]["ReqMonsterCount1"] = 40
tTaskTemplate[4020]["ReqItemId1"] = 3311061
tTaskTemplate[4020]["ReqItemCount1"] = 1
tTaskTemplate[4020]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4020]["MonsterTask"] = {300,700} 
tTaskTemplate[4020]["IsShare"] = true -- 组队触发
tTaskTemplate[4020]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4020]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4020]["Next"] = {}
tTaskTemplate[4020]["Next"]["NpcId"] = 0
tTaskTemplate[4020]["Next"]["MapId"] = 10365
tTaskTemplate[4020]["Next"]["PosX"] = 688
tTaskTemplate[4020]["Next"]["PosY"] = 418
-- 中间环节
tTaskTemplate[4020]["Mid"] = {}
tTaskTemplate[4020]["Mid"]["NpcId"] = 23289
tTaskTemplate[4020]["Mid"]["MapId"] = 10365
tTaskTemplate[4020]["Mid"]["PosX"] = 211
tTaskTemplate[4020]["Mid"]["PosY"] = 312
-- 奖励
tTaskTemplate[4020]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4020]["RewExpTime"] = 18
tTaskTemplate[4020]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4020]["RewardRandom"] = {}
tTaskTemplate[4020]["RewardRandom"][1] = {}
tTaskTemplate[4020]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4020]["RewardRandom"][1][1] = {}
tTaskTemplate[4020]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4020]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4020]["RewardRandom"][1][1]["ItemChance"] = 200
tTaskTemplate[4020]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4020]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4020]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4020]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 枫溪林 击杀火精灵45只
tTaskTemplate[4021] = {}
tTaskTemplate[4021]["IsReceived"] = {400,700}
tTaskTemplate[4021]["TaskId"] = 4021
tTaskTemplate[4021]["AcceptTask"] = {100,300,500}
tTaskTemplate[4021]["RevSpace"] = 1
tTaskTemplate[4021]["RevLog"] = "0,0,4021,0,12001176,2,3311061,1"
tTaskTemplate[4021]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4021]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4021]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4021]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4021]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4021]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4021]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4021]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4021]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4021]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4021]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4021]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4021]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4021]["ReqMonsterId1"] = {4841}
tTaskTemplate[4021]["ReqMonsterPos1"] = 1
tTaskTemplate[4021]["ReqMonsterCount1"] = 45
tTaskTemplate[4021]["ReqItemId1"] = 3311061
tTaskTemplate[4021]["ReqItemCount1"] = 1
tTaskTemplate[4021]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4021]["MonsterTask"] = {300,700} 
tTaskTemplate[4021]["IsShare"] = true -- 组队触发
tTaskTemplate[4021]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4021]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4021]["Next"] = {}
tTaskTemplate[4021]["Next"]["NpcId"] = 0
tTaskTemplate[4021]["Next"]["MapId"] = 10365
tTaskTemplate[4021]["Next"]["PosX"] = 706
tTaskTemplate[4021]["Next"]["PosY"] = 658
-- 中间环节
tTaskTemplate[4021]["Mid"] = {}
tTaskTemplate[4021]["Mid"]["NpcId"] = 23289
tTaskTemplate[4021]["Mid"]["MapId"] = 10365
tTaskTemplate[4021]["Mid"]["PosX"] = 211
tTaskTemplate[4021]["Mid"]["PosY"] = 312
-- 奖励
tTaskTemplate[4021]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4021]["RewExpTime"] = 18
tTaskTemplate[4021]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4021]["RewardRandom"] = {}
tTaskTemplate[4021]["RewardRandom"][1] = {}
tTaskTemplate[4021]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4021]["RewardRandom"][1][1] = {}
tTaskTemplate[4021]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4021]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4021]["RewardRandom"][1][1]["ItemChance"] = 200
tTaskTemplate[4021]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4021]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4021]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4021]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 枫溪林 击杀翼蛇45只
tTaskTemplate[4022] = {}
tTaskTemplate[4022]["IsReceived"] = {400,700}
tTaskTemplate[4022]["TaskId"] = 4022
tTaskTemplate[4022]["AcceptTask"] = {100,300,500}
tTaskTemplate[4022]["RevSpace"] = 1
tTaskTemplate[4022]["RevLog"] = "0,0,4022,0,12001176,2,3311061,1"
tTaskTemplate[4022]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4022]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4022]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4022]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4022]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4022]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4022]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4022]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4022]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4022]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4022]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4022]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4022]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4022]["ReqMonsterId1"] = {4838}
tTaskTemplate[4022]["ReqMonsterPos1"] = 1
tTaskTemplate[4022]["ReqMonsterCount1"] = 45
tTaskTemplate[4022]["ReqItemId1"] = 3311061
tTaskTemplate[4022]["ReqItemCount1"] = 1
tTaskTemplate[4022]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4022]["MonsterTask"] = {300,700} 
tTaskTemplate[4022]["IsShare"] = true -- 组队触发
tTaskTemplate[4022]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4022]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4022]["Next"] = {}
tTaskTemplate[4022]["Next"]["NpcId"] = 0
tTaskTemplate[4022]["Next"]["MapId"] = 10365
tTaskTemplate[4022]["Next"]["PosX"] = 334
tTaskTemplate[4022]["Next"]["PosY"] = 122
-- 中间环节
tTaskTemplate[4022]["Mid"] = {}
tTaskTemplate[4022]["Mid"]["NpcId"] = 23289
tTaskTemplate[4022]["Mid"]["MapId"] = 10365
tTaskTemplate[4022]["Mid"]["PosX"] = 211
tTaskTemplate[4022]["Mid"]["PosY"] = 312
-- 奖励
tTaskTemplate[4022]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4022]["RewExpTime"] = 20
tTaskTemplate[4022]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4022]["RewardRandom"] = {}
tTaskTemplate[4022]["RewardRandom"][1] = {}
tTaskTemplate[4022]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4022]["RewardRandom"][1][1] = {}
tTaskTemplate[4022]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4022]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4022]["RewardRandom"][1][1]["ItemChance"] = 200
tTaskTemplate[4022]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4022]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4022]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4022]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 枫溪林 击杀翼蛇50只
tTaskTemplate[4023] = {}
tTaskTemplate[4023]["IsReceived"] = {400,700}
tTaskTemplate[4023]["TaskId"] = 4023
tTaskTemplate[4023]["AcceptTask"] = {100,300,500}
tTaskTemplate[4023]["RevSpace"] = 1
tTaskTemplate[4023]["RevLog"] = "0,0,4023,0,12001176,2,3311061,1"
tTaskTemplate[4023]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4023]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4023]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4023]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4023]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4023]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4023]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4023]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4023]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4023]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4023]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4023]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4023]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4023]["ReqMonsterId1"] = {4838}
tTaskTemplate[4023]["ReqMonsterPos1"] = 1
tTaskTemplate[4023]["ReqMonsterCount1"] = 50
tTaskTemplate[4023]["ReqItemId1"] = 3311061
tTaskTemplate[4023]["ReqItemCount1"] = 1
tTaskTemplate[4023]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4023]["MonsterTask"] = {300,700} 
tTaskTemplate[4023]["IsShare"] = true -- 组队触发
tTaskTemplate[4023]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4023]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4023]["Next"] = {}
tTaskTemplate[4023]["Next"]["NpcId"] = 0
tTaskTemplate[4023]["Next"]["MapId"] = 10365
tTaskTemplate[4023]["Next"]["PosX"] = 334
tTaskTemplate[4023]["Next"]["PosY"] = 122
-- 中间环节
tTaskTemplate[4023]["Mid"] = {}
tTaskTemplate[4023]["Mid"]["NpcId"] = 23289
tTaskTemplate[4023]["Mid"]["MapId"] = 10365
tTaskTemplate[4023]["Mid"]["PosX"] = 211
tTaskTemplate[4023]["Mid"]["PosY"] = 312
-- 奖励
tTaskTemplate[4023]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4023]["RewExpTime"] = 20
tTaskTemplate[4023]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4023]["RewardRandom"] = {}
tTaskTemplate[4023]["RewardRandom"][1] = {}
tTaskTemplate[4023]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4023]["RewardRandom"][1][1] = {}
tTaskTemplate[4023]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4023]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4023]["RewardRandom"][1][1]["ItemChance"] = 200
tTaskTemplate[4023]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4023]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4023]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4023]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 绝情谷 击杀须弥猴60只
tTaskTemplate[4024] = {}
tTaskTemplate[4024]["IsReceived"] = {400,700}
tTaskTemplate[4024]["TaskId"] = 4024
tTaskTemplate[4024]["AcceptTask"] = {100,300,500}
tTaskTemplate[4024]["RevSpace"] = 1
tTaskTemplate[4024]["RevLog"] = "0,0,4024,0,12001176,2,3311061,1"
tTaskTemplate[4024]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4024]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4024]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4024]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4024]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4024]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4024]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4024]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4024]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4024]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4024]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4024]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4024]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4024]["ReqMonsterId1"] = {4842}
tTaskTemplate[4024]["ReqMonsterPos1"] = 1
tTaskTemplate[4024]["ReqMonsterCount1"] = 60
tTaskTemplate[4024]["ReqItemId1"] = 3311061
tTaskTemplate[4024]["ReqItemCount1"] = 1
tTaskTemplate[4024]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4024]["MonsterTask"] = {300,700} 
tTaskTemplate[4024]["IsShare"] = true -- 组队触发
tTaskTemplate[4024]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4024]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4024]["Next"] = {}
tTaskTemplate[4024]["Next"]["NpcId"] = 0
tTaskTemplate[4024]["Next"]["MapId"] = 10366
tTaskTemplate[4024]["Next"]["PosX"] = 611
tTaskTemplate[4024]["Next"]["PosY"] = 664
-- 中间环节
tTaskTemplate[4024]["Mid"] = {}
tTaskTemplate[4024]["Mid"]["NpcId"] = 23290
tTaskTemplate[4024]["Mid"]["MapId"] = 10366
tTaskTemplate[4024]["Mid"]["PosX"] = 566
tTaskTemplate[4024]["Mid"]["PosY"] = 620
-- 奖励
tTaskTemplate[4024]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4024]["RewSpace"] = 1
tTaskTemplate[4024]["RewExpTime"] = 22
tTaskTemplate[4024]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4024]["RewardRandom"] = {}
tTaskTemplate[4024]["RewardRandom"][1] = {}
tTaskTemplate[4024]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4024]["RewardRandom"][1][1] = {}
tTaskTemplate[4024]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4024]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4024]["RewardRandom"][1][1]["ItemChance"] = 267
tTaskTemplate[4024]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4024]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4024]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4024]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4024]["RewardRandom"][1][2] = {}
tTaskTemplate[4024]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4024]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4024]["RewardRandom"][1][2]["ItemChance"] = 167
tTaskTemplate[4024]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4024]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4024]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4024]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 绝情谷 击杀巨臂猿70只
tTaskTemplate[4025] = {}
tTaskTemplate[4025]["IsReceived"] = {400,700}
tTaskTemplate[4025]["TaskId"] = 4025
tTaskTemplate[4025]["AcceptTask"] = {100,300,500}
tTaskTemplate[4025]["RevSpace"] = 1
tTaskTemplate[4025]["RevLog"] = "0,0,4025,0,12001176,2,3311061,1"
tTaskTemplate[4025]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4025]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4025]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4025]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4025]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4025]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4025]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4025]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4025]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4025]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4025]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4025]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4025]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4025]["ReqMonsterId1"] = {4843}
tTaskTemplate[4025]["ReqMonsterPos1"] = 1
tTaskTemplate[4025]["ReqMonsterCount1"] = 70
tTaskTemplate[4025]["ReqItemId1"] = 3311061
tTaskTemplate[4025]["ReqItemCount1"] = 1
tTaskTemplate[4025]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4025]["MonsterTask"] = {300,700} 
tTaskTemplate[4025]["IsShare"] = true -- 组队触发
tTaskTemplate[4025]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4025]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4025]["Next"] = {}
tTaskTemplate[4025]["Next"]["NpcId"] = 0
tTaskTemplate[4025]["Next"]["MapId"] = 10366
tTaskTemplate[4025]["Next"]["PosX"] = 661
tTaskTemplate[4025]["Next"]["PosY"] = 366
-- 中间环节
tTaskTemplate[4025]["Mid"] = {}
tTaskTemplate[4025]["Mid"]["NpcId"] = 23290
tTaskTemplate[4025]["Mid"]["MapId"] = 10366
tTaskTemplate[4025]["Mid"]["PosX"] = 566
tTaskTemplate[4025]["Mid"]["PosY"] = 620
-- 奖励
tTaskTemplate[4025]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4025]["RewSpace"] = 1
tTaskTemplate[4025]["RewExpTime"] = 25
tTaskTemplate[4025]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4025]["RewardRandom"] = {}
tTaskTemplate[4025]["RewardRandom"][1] = {}
tTaskTemplate[4025]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4025]["RewardRandom"][1][1] = {}
tTaskTemplate[4025]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4025]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4025]["RewardRandom"][1][1]["ItemChance"] = 267
tTaskTemplate[4025]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4025]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4025]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4025]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4025]["RewardRandom"][1][2] = {}
tTaskTemplate[4025]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4025]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4025]["RewardRandom"][1][2]["ItemChance"] = 167
tTaskTemplate[4025]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4025]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4025]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4025]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 绝情谷 击杀秃鹰80只
tTaskTemplate[4026] = {}
tTaskTemplate[4026]["IsReceived"] = {400,700}
tTaskTemplate[4026]["TaskId"] = 4026
tTaskTemplate[4026]["AcceptTask"] = {100,300,500}
tTaskTemplate[4026]["RevSpace"] = 1
tTaskTemplate[4026]["RevLog"] = "0,0,4026,0,12001176,2,3311061,1"
tTaskTemplate[4026]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4026]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4026]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4026]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4026]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4026]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4026]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4026]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4026]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4026]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4026]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4026]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4026]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4026]["ReqMonsterId1"] = {4869}
tTaskTemplate[4026]["ReqMonsterPos1"] = 1
tTaskTemplate[4026]["ReqMonsterCount1"] = 80
tTaskTemplate[4026]["ReqItemId1"] = 3311061
tTaskTemplate[4026]["ReqItemCount1"] = 1
tTaskTemplate[4026]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4026]["MonsterTask"] = {300,700} 
tTaskTemplate[4026]["IsShare"] = true -- 组队触发
tTaskTemplate[4026]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4026]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4026]["Next"] = {}
tTaskTemplate[4026]["Next"]["NpcId"] = 0
tTaskTemplate[4026]["Next"]["MapId"] = 10366
tTaskTemplate[4026]["Next"]["PosX"] = 607
tTaskTemplate[4026]["Next"]["PosY"] = 833
-- 中间环节
tTaskTemplate[4026]["Mid"] = {}
tTaskTemplate[4026]["Mid"]["NpcId"] = 23290
tTaskTemplate[4026]["Mid"]["MapId"] = 10366
tTaskTemplate[4026]["Mid"]["PosX"] = 566
tTaskTemplate[4026]["Mid"]["PosY"] = 620
-- 奖励
tTaskTemplate[4026]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4026]["RewSpace"] = 1
tTaskTemplate[4026]["RewExpTime"] = 25
tTaskTemplate[4026]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4026]["RewardRandom"] = {}
tTaskTemplate[4026]["RewardRandom"][1] = {}
tTaskTemplate[4026]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4026]["RewardRandom"][1][1] = {}
tTaskTemplate[4026]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4026]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4026]["RewardRandom"][1][1]["ItemChance"] = 267
tTaskTemplate[4026]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4026]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4026]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4026]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4026]["RewardRandom"][1][2] = {}
tTaskTemplate[4026]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4026]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4026]["RewardRandom"][1][2]["ItemChance"] = 167
tTaskTemplate[4026]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4026]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4026]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4026]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 绝情谷 击杀长臂猿90只
tTaskTemplate[4027] = {}
tTaskTemplate[4027]["IsReceived"] = {400,700}
tTaskTemplate[4027]["TaskId"] = 4027
tTaskTemplate[4027]["AcceptTask"] = {100,300,500}
tTaskTemplate[4027]["RevSpace"] = 1
tTaskTemplate[4027]["RevLog"] = "0,0,4027,0,12001176,2,3311061,1"
tTaskTemplate[4027]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4027]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4027]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4027]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4027]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4027]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4027]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4027]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4027]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4027]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4027]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4027]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4027]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4027]["ReqMonsterId1"] = {4870}
tTaskTemplate[4027]["ReqMonsterPos1"] = 1
tTaskTemplate[4027]["ReqMonsterCount1"] = 90
tTaskTemplate[4027]["ReqItemId1"] = 3311061
tTaskTemplate[4027]["ReqItemCount1"] = 1
tTaskTemplate[4027]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4027]["MonsterTask"] = {300,700} 
tTaskTemplate[4027]["IsShare"] = true -- 组队触发
tTaskTemplate[4027]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4027]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4027]["Next"] = {}
tTaskTemplate[4027]["Next"]["NpcId"] = 0
tTaskTemplate[4027]["Next"]["MapId"] = 10366
tTaskTemplate[4027]["Next"]["PosX"] = 576
tTaskTemplate[4027]["Next"]["PosY"] = 396
-- 中间环节
tTaskTemplate[4027]["Mid"] = {}
tTaskTemplate[4027]["Mid"]["NpcId"] = 23290
tTaskTemplate[4027]["Mid"]["MapId"] = 10366
tTaskTemplate[4027]["Mid"]["PosX"] = 566
tTaskTemplate[4027]["Mid"]["PosY"] = 620
-- 奖励
tTaskTemplate[4027]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4027]["RewSpace"] = 1
tTaskTemplate[4027]["RewExpTime"] = 30
tTaskTemplate[4027]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4027]["RewardRandom"] = {}
tTaskTemplate[4027]["RewardRandom"][1] = {}
tTaskTemplate[4027]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4027]["RewardRandom"][1][1] = {}
tTaskTemplate[4027]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4027]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4027]["RewardRandom"][1][1]["ItemChance"] = 267
tTaskTemplate[4027]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4027]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4027]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4027]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4027]["RewardRandom"][1][2] = {}
tTaskTemplate[4027]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4027]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4027]["RewardRandom"][1][2]["ItemChance"] = 167
tTaskTemplate[4027]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4027]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4027]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4027]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 绝情谷 击杀天雷巨猿100只
tTaskTemplate[4028] = {}
tTaskTemplate[4028]["IsReceived"] = {400,700}
tTaskTemplate[4028]["TaskId"] = 4028
tTaskTemplate[4028]["AcceptTask"] = {100,300,500}
tTaskTemplate[4028]["RevSpace"] = 1
tTaskTemplate[4028]["RevLog"] = "0,0,4028,0,12001176,2,3311061,1"
tTaskTemplate[4028]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4028]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4028]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4028]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4028]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4028]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4028]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4028]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4028]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4028]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4028]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4028]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4028]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4028]["ReqMonsterId1"] = {4844}
tTaskTemplate[4028]["ReqMonsterPos1"] = 1
tTaskTemplate[4028]["ReqMonsterCount1"] = 100
tTaskTemplate[4028]["ReqItemId1"] = 3311061
tTaskTemplate[4028]["ReqItemCount1"] = 1
tTaskTemplate[4028]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4028]["MonsterTask"] = {300,700} 
tTaskTemplate[4028]["IsShare"] = true -- 组队触发
tTaskTemplate[4028]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4028]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4028]["Next"] = {}
tTaskTemplate[4028]["Next"]["NpcId"] = 0
tTaskTemplate[4028]["Next"]["MapId"] = 10366
tTaskTemplate[4028]["Next"]["PosX"] = 307
tTaskTemplate[4028]["Next"]["PosY"] = 320
-- 中间环节
tTaskTemplate[4028]["Mid"] = {}
tTaskTemplate[4028]["Mid"]["NpcId"] = 23290
tTaskTemplate[4028]["Mid"]["MapId"] = 10366
tTaskTemplate[4028]["Mid"]["PosX"] = 566
tTaskTemplate[4028]["Mid"]["PosY"] = 620
-- 奖励
tTaskTemplate[4028]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4028]["RewSpace"] = 1
tTaskTemplate[4028]["RewExpTime"] = 30
tTaskTemplate[4028]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4028]["RewardRandom"] = {}
tTaskTemplate[4028]["RewardRandom"][1] = {}
tTaskTemplate[4028]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4028]["RewardRandom"][1][1] = {}
tTaskTemplate[4028]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4028]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4028]["RewardRandom"][1][1]["ItemChance"] = 267
tTaskTemplate[4028]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4028]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4028]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4028]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4028]["RewardRandom"][1][2] = {}
tTaskTemplate[4028]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4028]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4028]["RewardRandom"][1][2]["ItemChance"] = 167
tTaskTemplate[4028]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4028]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4028]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4028]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 绝情谷 击杀蛇人100只
tTaskTemplate[4029] = {}
tTaskTemplate[4029]["IsReceived"] = {400,700}
tTaskTemplate[4029]["TaskId"] = 4029
tTaskTemplate[4029]["AcceptTask"] = {100,300,500}
tTaskTemplate[4029]["RevSpace"] = 1
tTaskTemplate[4029]["RevLog"] = "0,0,4029,0,12001176,2,3311061,1"
tTaskTemplate[4029]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4029]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4029]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4029]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4029]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4029]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4029]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4029]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4029]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4029]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4029]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4029]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4029]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4029]["ReqMonsterId1"] = {4845}
tTaskTemplate[4029]["ReqMonsterPos1"] = 1
tTaskTemplate[4029]["ReqMonsterCount1"] = 100
tTaskTemplate[4029]["ReqItemId1"] = 3311061
tTaskTemplate[4029]["ReqItemCount1"] = 1
tTaskTemplate[4029]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4029]["MonsterTask"] = {300,700} 
tTaskTemplate[4029]["IsShare"] = true -- 组队触发
tTaskTemplate[4029]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4029]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4029]["Next"] = {}
tTaskTemplate[4029]["Next"]["NpcId"] = 0
tTaskTemplate[4029]["Next"]["MapId"] = 10366
tTaskTemplate[4029]["Next"]["PosX"] = 471
tTaskTemplate[4029]["Next"]["PosY"] = 791
-- 中间环节
tTaskTemplate[4029]["Mid"] = {}
tTaskTemplate[4029]["Mid"]["NpcId"] = 23290
tTaskTemplate[4029]["Mid"]["MapId"] = 10366
tTaskTemplate[4029]["Mid"]["PosX"] = 566
tTaskTemplate[4029]["Mid"]["PosY"] = 620
-- 奖励
tTaskTemplate[4029]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4029]["RewSpace"] = 1
tTaskTemplate[4029]["RewExpTime"] = 35
tTaskTemplate[4029]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4029]["RewardRandom"] = {}
tTaskTemplate[4029]["RewardRandom"][1] = {}
tTaskTemplate[4029]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4029]["RewardRandom"][1][1] = {}
tTaskTemplate[4029]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4029]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4029]["RewardRandom"][1][1]["ItemChance"] = 267
tTaskTemplate[4029]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4029]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4029]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4029]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4029]["RewardRandom"][1][2] = {}
tTaskTemplate[4029]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4029]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4029]["RewardRandom"][1][2]["ItemChance"] = 167
tTaskTemplate[4029]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4029]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4029]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4029]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 大漠 击杀沙怪120只
tTaskTemplate[4030] = {}
tTaskTemplate[4030]["IsReceived"] = {400,700}
tTaskTemplate[4030]["TaskId"] = 4030
tTaskTemplate[4030]["AcceptTask"] = {100,300,500}
tTaskTemplate[4030]["RevSpace"] = 1
tTaskTemplate[4030]["RevLog"] = "0,0,4030,0,12001176,2,3311061,1"
tTaskTemplate[4030]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4030]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4030]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4030]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4030]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4030]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4030]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4030]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4030]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4030]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4030]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4030]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4030]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4030]["ReqMonsterId1"] = {4846}
tTaskTemplate[4030]["ReqMonsterPos1"] = 1
tTaskTemplate[4030]["ReqMonsterCount1"] = 120
tTaskTemplate[4030]["ReqItemId1"] = 3311061
tTaskTemplate[4030]["ReqItemCount1"] = 1
tTaskTemplate[4030]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4030]["MonsterTask"] = {300,700} 
tTaskTemplate[4030]["IsShare"] = true -- 组队触发
tTaskTemplate[4030]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4030]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4030]["Next"] = {}
tTaskTemplate[4030]["Next"]["NpcId"] = 0
tTaskTemplate[4030]["Next"]["MapId"] = 10367
tTaskTemplate[4030]["Next"]["PosX"] = 644
tTaskTemplate[4030]["Next"]["PosY"] = 651
-- 中间环节
tTaskTemplate[4030]["Mid"] = {}
tTaskTemplate[4030]["Mid"]["NpcId"] = 23291
tTaskTemplate[4030]["Mid"]["MapId"] = 10367
tTaskTemplate[4030]["Mid"]["PosX"] = 536
tTaskTemplate[4030]["Mid"]["PosY"] = 643
-- 奖励
tTaskTemplate[4030]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4030]["RewSpace"] = 1
tTaskTemplate[4030]["RewExpTime"] = 40
tTaskTemplate[4030]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4030]["RewardRandom"] = {}
tTaskTemplate[4030]["RewardRandom"][1] = {}
tTaskTemplate[4030]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4030]["RewardRandom"][1][1] = {}
tTaskTemplate[4030]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4030]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4030]["RewardRandom"][1][1]["ItemChance"] = 500
tTaskTemplate[4030]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4030]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4030]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4030]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4030]["RewardRandom"][1][2] = {}
tTaskTemplate[4030]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4030]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4030]["RewardRandom"][1][2]["ItemChance"] = 500
tTaskTemplate[4030]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4030]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4030]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4030]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 大漠 击杀锤山怪120只
tTaskTemplate[4031] = {}
tTaskTemplate[4031]["IsReceived"] = {400,700}
tTaskTemplate[4031]["TaskId"] = 4031
tTaskTemplate[4031]["AcceptTask"] = {100,300,500}
tTaskTemplate[4031]["RevSpace"] = 1
tTaskTemplate[4031]["RevLog"] = "0,0,4031,0,12001176,2,3311061,1"
tTaskTemplate[4031]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4031]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4031]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4031]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4031]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4031]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4031]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4031]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4031]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4031]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4031]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4031]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4031]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4031]["ReqMonsterId1"] = {4847}
tTaskTemplate[4031]["ReqMonsterPos1"] = 1
tTaskTemplate[4031]["ReqMonsterCount1"] = 120
tTaskTemplate[4031]["ReqItemId1"] = 3311061
tTaskTemplate[4031]["ReqItemCount1"] = 1
tTaskTemplate[4031]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4031]["MonsterTask"] = {300,700} 
tTaskTemplate[4031]["IsShare"] = true -- 组队触发
tTaskTemplate[4031]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4031]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4031]["Next"] = {}
tTaskTemplate[4031]["Next"]["NpcId"] = 0
tTaskTemplate[4031]["Next"]["MapId"] = 10367
tTaskTemplate[4031]["Next"]["PosX"] = 553
tTaskTemplate[4031]["Next"]["PosY"] = 341
-- 中间环节
tTaskTemplate[4031]["Mid"] = {}
tTaskTemplate[4031]["Mid"]["NpcId"] = 23291
tTaskTemplate[4031]["Mid"]["MapId"] = 10367
tTaskTemplate[4031]["Mid"]["PosX"] = 536
tTaskTemplate[4031]["Mid"]["PosY"] = 643
-- 奖励
tTaskTemplate[4031]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4031]["RewSpace"] = 1
tTaskTemplate[4031]["RewExpTime"] = 45
tTaskTemplate[4031]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4031]["RewardRandom"] = {}
tTaskTemplate[4031]["RewardRandom"][1] = {}
tTaskTemplate[4031]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4031]["RewardRandom"][1][1] = {}
tTaskTemplate[4031]["RewardRandom"][1][1]["RandomItemChanceType"] = 3
tTaskTemplate[4031]["RewardRandom"][1][1]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4031]["RewardRandom"][1][1]["ItemChance"] = 500
tTaskTemplate[4031]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4031]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4031]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4031]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4031]["RewardRandom"][1][2] = {}
tTaskTemplate[4031]["RewardRandom"][1][2]["RandomItemChanceType"] = 3
tTaskTemplate[4031]["RewardRandom"][1][2]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4031]["RewardRandom"][1][2]["ItemChance"] = 500
tTaskTemplate[4031]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4031]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4031]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4031]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 1"
-- 大漠 击杀巨石怪120只
tTaskTemplate[4033] = {}
tTaskTemplate[4033]["IsReceived"] = {400,700}
tTaskTemplate[4033]["TaskId"] = 4033
tTaskTemplate[4033]["AcceptTask"] = {100,300,500}
tTaskTemplate[4033]["RevSpace"] = 1
tTaskTemplate[4033]["RevLog"] = "0,0,4033,0,12001176,2,3311061,1"
tTaskTemplate[4033]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4033]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4033]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4033]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4033]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4033]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4033]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4033]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4033]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4033]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4033]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4033]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4033]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4033]["ReqMonsterId1"] = {4848}
tTaskTemplate[4033]["ReqMonsterPos1"] = 1
tTaskTemplate[4033]["ReqMonsterCount1"] = 120
tTaskTemplate[4033]["ReqItemId1"] = 3311061
tTaskTemplate[4033]["ReqItemCount1"] = 1
tTaskTemplate[4033]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4033]["MonsterTask"] = {300,700} 
tTaskTemplate[4033]["IsShare"] = true -- 组队触发
tTaskTemplate[4033]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4033]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4033]["Next"] = {}
tTaskTemplate[4033]["Next"]["NpcId"] = 0
tTaskTemplate[4033]["Next"]["MapId"] = 10367
tTaskTemplate[4033]["Next"]["PosX"] = 394
tTaskTemplate[4033]["Next"]["PosY"] = 359
-- 中间环节
tTaskTemplate[4033]["Mid"] = {}
tTaskTemplate[4033]["Mid"]["NpcId"] = 23291
tTaskTemplate[4033]["Mid"]["MapId"] = 10367
tTaskTemplate[4033]["Mid"]["PosX"] = 536
tTaskTemplate[4033]["Mid"]["PosY"] = 643
-- 奖励
tTaskTemplate[4033]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4033]["RewSpace"] = 2
tTaskTemplate[4033]["RewExpTime"] = 50
tTaskTemplate[4033]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4033]["RewardRandom"] = {}
tTaskTemplate[4033]["RewardRandom"][1] = {}
tTaskTemplate[4033]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4033]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4033]["RewardRandom"][1][1] = {}
tTaskTemplate[4033]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4033]["RewardRandom"][1][1]["ItemChance"] = 467
tTaskTemplate[4033]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4033]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4033]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4033]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4033]["RewardRandom"][1][2] = {}
tTaskTemplate[4033]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4033]["RewardRandom"][1][2]["ItemChance"] = 33
tTaskTemplate[4033]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4033]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4033]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4033]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4033]["RewardRandom"][1][3] = {}
tTaskTemplate[4033]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4033]["RewardRandom"][1][3]["ItemChance"] = 9500
tTaskTemplate[4033]["RewardRandom"][1][4] = {}
tTaskTemplate[4033]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4033]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4033]["RewardRandom"][1][4]["ItemChance"] = 500
tTaskTemplate[4033]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4033]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4033]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4033]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 大漠 击杀鬼刃120只
tTaskTemplate[4034] = {}
tTaskTemplate[4034]["IsReceived"] = {400,700}
tTaskTemplate[4034]["TaskId"] = 4034
tTaskTemplate[4034]["AcceptTask"] = {100,300,500}
tTaskTemplate[4034]["RevSpace"] = 1
tTaskTemplate[4034]["RevLog"] = "0,0,4034,0,12001176,2,3311061,1"
tTaskTemplate[4034]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4034]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4034]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4034]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4034]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4034]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4034]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4034]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4034]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4034]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4034]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4034]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4034]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4034]["ReqMonsterId1"] = {4849}
tTaskTemplate[4034]["ReqMonsterPos1"] = 1
tTaskTemplate[4034]["ReqMonsterCount1"] = 120
tTaskTemplate[4034]["ReqItemId1"] = 3311061
tTaskTemplate[4034]["ReqItemCount1"] = 1
tTaskTemplate[4034]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4034]["MonsterTask"] = {300,700} 
tTaskTemplate[4034]["IsShare"] = true -- 组队触发
tTaskTemplate[4034]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4034]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4034]["Next"] = {}
tTaskTemplate[4034]["Next"]["NpcId"] = 0
tTaskTemplate[4034]["Next"]["MapId"] = 10367
tTaskTemplate[4034]["Next"]["PosX"] = 202
tTaskTemplate[4034]["Next"]["PosY"] = 195
-- 中间环节
tTaskTemplate[4034]["Mid"] = {}
tTaskTemplate[4034]["Mid"]["NpcId"] = 23291
tTaskTemplate[4034]["Mid"]["MapId"] = 10367
tTaskTemplate[4034]["Mid"]["PosX"] = 536
tTaskTemplate[4034]["Mid"]["PosY"] = 643
-- 奖励
tTaskTemplate[4034]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4034]["RewSpace"] = 2
tTaskTemplate[4034]["RewExpTime"] = 60
tTaskTemplate[4034]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4034]["RewardRandom"] = {}
tTaskTemplate[4034]["RewardRandom"][1] = {}
tTaskTemplate[4034]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4034]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4034]["RewardRandom"][1][1] = {}
tTaskTemplate[4034]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4034]["RewardRandom"][1][1]["ItemChance"] = 467
tTaskTemplate[4034]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4034]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4034]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4034]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4034]["RewardRandom"][1][2] = {}
tTaskTemplate[4034]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4034]["RewardRandom"][1][2]["ItemChance"] = 33
tTaskTemplate[4034]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4034]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4034]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4034]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4034]["RewardRandom"][1][3] = {}
tTaskTemplate[4034]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4034]["RewardRandom"][1][3]["ItemChance"] = 9500
tTaskTemplate[4034]["RewardRandom"][1][4] = {}
tTaskTemplate[4034]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4034]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4034]["RewardRandom"][1][4]["ItemChance"] = 500
tTaskTemplate[4034]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4034]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4034]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4034]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 芦花荡 击杀金臂鸟人150只
tTaskTemplate[4035] = {}
tTaskTemplate[4035]["IsReceived"] = {400,700}
tTaskTemplate[4035]["TaskId"] = 4035
tTaskTemplate[4035]["AcceptTask"] = {100,300,500}
tTaskTemplate[4035]["RevSpace"] = 1
tTaskTemplate[4035]["RevLog"] = "0,0,4035,0,12001176,2,3311061,1"
tTaskTemplate[4035]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4035]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4035]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4035]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4035]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4035]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4035]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4035]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4035]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4035]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4035]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4035]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4035]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4035]["ReqMonsterId1"] = {4850}
tTaskTemplate[4035]["ReqMonsterPos1"] = 1
tTaskTemplate[4035]["ReqMonsterCount1"] = 150
tTaskTemplate[4035]["ReqItemId1"] = 3311061
tTaskTemplate[4035]["ReqItemCount1"] = 1
tTaskTemplate[4035]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4035]["MonsterTask"] = {300,700} 
tTaskTemplate[4035]["IsShare"] = true -- 组队触发
tTaskTemplate[4035]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4035]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4035]["Next"] = {}
tTaskTemplate[4035]["Next"]["NpcId"] = 0
tTaskTemplate[4035]["Next"]["MapId"] = 10368
tTaskTemplate[4035]["Next"]["PosX"] = 821
tTaskTemplate[4035]["Next"]["PosY"] = 572
-- 中间环节
tTaskTemplate[4035]["Mid"] = {}
tTaskTemplate[4035]["Mid"]["NpcId"] = 23292
tTaskTemplate[4035]["Mid"]["MapId"] = 10368
tTaskTemplate[4035]["Mid"]["PosX"] = 793
tTaskTemplate[4035]["Mid"]["PosY"] = 566
-- 奖励
tTaskTemplate[4035]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4035]["RewSpace"] = 2
tTaskTemplate[4035]["RewExpTime"] = 70
tTaskTemplate[4035]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4035]["RewardRandom"] = {}
tTaskTemplate[4035]["RewardRandom"][1] = {}
tTaskTemplate[4035]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4035]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4035]["RewardRandom"][1][1] = {}
tTaskTemplate[4035]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4035]["RewardRandom"][1][1]["ItemChance"] = 800
tTaskTemplate[4035]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4035]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4035]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4035]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4035]["RewardRandom"][1][2] = {}
tTaskTemplate[4035]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4035]["RewardRandom"][1][2]["ItemChance"] = 200
tTaskTemplate[4035]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4035]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4035]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4035]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4035]["RewardRandom"][1][3] = {}
tTaskTemplate[4035]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4035]["RewardRandom"][1][3]["ItemChance"] = 9000
tTaskTemplate[4035]["RewardRandom"][1][4] = {}
tTaskTemplate[4035]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4035]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4035]["RewardRandom"][1][4]["ItemChance"] = 1333
tTaskTemplate[4035]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4035]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4035]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4035]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 芦花荡 击杀银羽鸟人150只
tTaskTemplate[4037] = {}
tTaskTemplate[4037]["IsReceived"] = {400,700}
tTaskTemplate[4037]["TaskId"] = 4037
tTaskTemplate[4037]["AcceptTask"] = {100,300,500}
tTaskTemplate[4037]["RevSpace"] = 1
tTaskTemplate[4037]["RevLog"] = "0,0,4037,0,12001176,2,3311061,1"
tTaskTemplate[4037]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4037]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4037]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4037]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4037]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4037]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4037]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4037]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4037]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4037]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4037]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4037]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4037]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4037]["ReqMonsterId1"] = {4851}
tTaskTemplate[4037]["ReqMonsterPos1"] = 1
tTaskTemplate[4037]["ReqMonsterCount1"] = 150
tTaskTemplate[4037]["ReqItemId1"] = 3311061
tTaskTemplate[4037]["ReqItemCount1"] = 1
tTaskTemplate[4037]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4037]["MonsterTask"] = {300,700} 
tTaskTemplate[4037]["IsShare"] = true -- 组队触发
tTaskTemplate[4037]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4037]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4037]["Next"] = {}
tTaskTemplate[4037]["Next"]["NpcId"] = 0
tTaskTemplate[4037]["Next"]["MapId"] = 10368
tTaskTemplate[4037]["Next"]["PosX"] = 460
tTaskTemplate[4037]["Next"]["PosY"] = 635
-- 中间环节
tTaskTemplate[4037]["Mid"] = {}
tTaskTemplate[4037]["Mid"]["NpcId"] = 23292
tTaskTemplate[4037]["Mid"]["MapId"] = 10368
tTaskTemplate[4037]["Mid"]["PosX"] = 793
tTaskTemplate[4037]["Mid"]["PosY"] = 566
-- 奖励
tTaskTemplate[4037]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4037]["RewSpace"] = 2
tTaskTemplate[4037]["RewExpTime"] = 80
tTaskTemplate[4037]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4037]["RewardRandom"] = {}
tTaskTemplate[4037]["RewardRandom"][1] = {}
tTaskTemplate[4037]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4037]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4037]["RewardRandom"][1][1] = {}
tTaskTemplate[4037]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4037]["RewardRandom"][1][1]["ItemChance"] = 800
tTaskTemplate[4037]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4037]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4037]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4037]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4037]["RewardRandom"][1][2] = {}
tTaskTemplate[4037]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4037]["RewardRandom"][1][2]["ItemChance"] = 200
tTaskTemplate[4037]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4037]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4037]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4037]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4037]["RewardRandom"][1][3] = {}
tTaskTemplate[4037]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4037]["RewardRandom"][1][3]["ItemChance"] = 9000
tTaskTemplate[4037]["RewardRandom"][1][4] = {}
tTaskTemplate[4037]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4037]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4037]["RewardRandom"][1][4]["ItemChance"] = 1333
tTaskTemplate[4037]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4037]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4037]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4037]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 芦花荡 击杀银羽鹰魔150只
tTaskTemplate[4038] = {}
tTaskTemplate[4038]["IsReceived"] = {400,700}
tTaskTemplate[4038]["TaskId"] = 4038
tTaskTemplate[4038]["AcceptTask"] = {100,300,500}
tTaskTemplate[4038]["RevSpace"] = 1
tTaskTemplate[4038]["RevLog"] = "0,0,4038,0,12001176,2,3311061,1"
tTaskTemplate[4038]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4038]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4038]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4038]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4038]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4038]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4038]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4038]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4038]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4038]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4038]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4038]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4038]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4038]["ReqMonsterId1"] = {4853}
tTaskTemplate[4038]["ReqMonsterPos1"] = 1
tTaskTemplate[4038]["ReqMonsterCount1"] = 150
tTaskTemplate[4038]["ReqItemId1"] = 3311061
tTaskTemplate[4038]["ReqItemCount1"] = 1
tTaskTemplate[4038]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4038]["MonsterTask"] = {300,700} 
tTaskTemplate[4038]["IsShare"] = true -- 组队触发
tTaskTemplate[4038]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4038]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4038]["Next"] = {}
tTaskTemplate[4038]["Next"]["NpcId"] = 0
tTaskTemplate[4038]["Next"]["MapId"] = 10368
tTaskTemplate[4038]["Next"]["PosX"] = 462
tTaskTemplate[4038]["Next"]["PosY"] = 690
-- 中间环节
tTaskTemplate[4038]["Mid"] = {}
tTaskTemplate[4038]["Mid"]["NpcId"] = 23292
tTaskTemplate[4038]["Mid"]["MapId"] = 10368
tTaskTemplate[4038]["Mid"]["PosX"] = 793
tTaskTemplate[4038]["Mid"]["PosY"] = 566
-- 奖励
tTaskTemplate[4038]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4038]["RewSpace"] = 2
tTaskTemplate[4038]["RewExpTime"] = 90
tTaskTemplate[4038]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4038]["RewardRandom"] = {}
tTaskTemplate[4038]["RewardRandom"][1] = {}
tTaskTemplate[4038]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4038]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4038]["RewardRandom"][1][1] = {}
tTaskTemplate[4038]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4038]["RewardRandom"][1][1]["ItemChance"] = 800
tTaskTemplate[4038]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4038]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4038]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4038]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4038]["RewardRandom"][1][2] = {}
tTaskTemplate[4038]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4038]["RewardRandom"][1][2]["ItemChance"] = 200
tTaskTemplate[4038]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4038]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4038]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4038]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4038]["RewardRandom"][1][3] = {}
tTaskTemplate[4038]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4038]["RewardRandom"][1][3]["ItemChance"] = 9000
tTaskTemplate[4038]["RewardRandom"][1][4] = {}
tTaskTemplate[4038]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4038]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4038]["RewardRandom"][1][4]["ItemChance"] = 1333
tTaskTemplate[4038]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4038]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4038]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4038]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 芦花荡 击杀湖岛强匪150只
tTaskTemplate[4039] = {}
tTaskTemplate[4039]["IsReceived"] = {400,700}
tTaskTemplate[4039]["TaskId"] = 4039
tTaskTemplate[4039]["AcceptTask"] = {100,300,500}
tTaskTemplate[4039]["RevSpace"] = 1
tTaskTemplate[4039]["RevLog"] = "0,0,4039,0,12001176,2,3311061,1"
tTaskTemplate[4039]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4039]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4039]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4039]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4039]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4039]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4039]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4039]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4039]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4039]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4039]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4039]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4039]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4039]["ReqMonsterId1"] = {4874}
tTaskTemplate[4039]["ReqMonsterPos1"] = 1
tTaskTemplate[4039]["ReqMonsterCount1"] = 150
tTaskTemplate[4039]["ReqItemId1"] = 3311061
tTaskTemplate[4039]["ReqItemCount1"] = 1
tTaskTemplate[4039]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4039]["MonsterTask"] = {300,700} 
tTaskTemplate[4039]["IsShare"] = true -- 组队触发
tTaskTemplate[4039]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4039]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4039]["Next"] = {}
tTaskTemplate[4039]["Next"]["NpcId"] = 0
tTaskTemplate[4039]["Next"]["MapId"] = 10368
tTaskTemplate[4039]["Next"]["PosX"] = 408
tTaskTemplate[4039]["Next"]["PosY"] = 279
-- 中间环节
tTaskTemplate[4039]["Mid"] = {}
tTaskTemplate[4039]["Mid"]["NpcId"] = 23292
tTaskTemplate[4039]["Mid"]["MapId"] = 10368
tTaskTemplate[4039]["Mid"]["PosX"] = 793
tTaskTemplate[4039]["Mid"]["PosY"] = 566
-- 奖励
tTaskTemplate[4039]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4039]["RewSpace"] = 2
tTaskTemplate[4039]["RewExpTime"] = 120
tTaskTemplate[4039]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4039]["RewardRandom"] = {}
tTaskTemplate[4039]["RewardRandom"][1] = {}
tTaskTemplate[4039]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4039]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4039]["RewardRandom"][1][1] = {}
tTaskTemplate[4039]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4039]["RewardRandom"][1][1]["ItemChance"] = 800
tTaskTemplate[4039]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4039]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4039]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4039]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4039]["RewardRandom"][1][2] = {}
tTaskTemplate[4039]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4039]["RewardRandom"][1][2]["ItemChance"] = 200
tTaskTemplate[4039]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4039]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4039]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4039]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4039]["RewardRandom"][1][3] = {}
tTaskTemplate[4039]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4039]["RewardRandom"][1][3]["ItemChance"] = 9000
tTaskTemplate[4039]["RewardRandom"][1][4] = {}
tTaskTemplate[4039]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4039]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4039]["RewardRandom"][1][4]["ItemChance"] = 1333
tTaskTemplate[4039]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4039]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4039]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4039]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 芦花荡 击杀湖岛悍匪150只
tTaskTemplate[4040] = {}
tTaskTemplate[4040]["IsReceived"] = {400,700}
tTaskTemplate[4040]["TaskId"] = 4040
tTaskTemplate[4040]["AcceptTask"] = {100,300,500}
tTaskTemplate[4040]["RevSpace"] = 1
tTaskTemplate[4040]["RevLog"] = "0,0,4040,0,12001176,2,3311061,1"
tTaskTemplate[4040]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4040]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4040]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4040]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4040]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4040]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4040]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4040]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4040]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4040]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4040]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4040]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4040]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4040]["ReqMonsterId1"] = {4854}
tTaskTemplate[4040]["ReqMonsterPos1"] = 1
tTaskTemplate[4040]["ReqMonsterCount1"] = 150
tTaskTemplate[4040]["ReqItemId1"] = 3311061
tTaskTemplate[4040]["ReqItemCount1"] = 1
tTaskTemplate[4040]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4040]["MonsterTask"] = {300,700} 
tTaskTemplate[4040]["IsShare"] = true -- 组队触发
tTaskTemplate[4040]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4040]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4040]["Next"] = {}
tTaskTemplate[4040]["Next"]["NpcId"] = 0
tTaskTemplate[4040]["Next"]["MapId"] = 10368
tTaskTemplate[4040]["Next"]["PosX"] = 340
tTaskTemplate[4040]["Next"]["PosY"] = 217
-- 中间环节
tTaskTemplate[4040]["Mid"] = {}
tTaskTemplate[4040]["Mid"]["NpcId"] = 23292
tTaskTemplate[4040]["Mid"]["MapId"] = 10368
tTaskTemplate[4040]["Mid"]["PosX"] = 793
tTaskTemplate[4040]["Mid"]["PosY"] = 566
-- 奖励
tTaskTemplate[4040]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4040]["RewSpace"] = 2
tTaskTemplate[4040]["RewExpTime"] = 120
tTaskTemplate[4040]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4040]["RewardRandom"] = {}
tTaskTemplate[4040]["RewardRandom"][1] = {}
tTaskTemplate[4040]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4040]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4040]["RewardRandom"][1][1] = {}
tTaskTemplate[4040]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4040]["RewardRandom"][1][1]["ItemChance"] = 800
tTaskTemplate[4040]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4040]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4040]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4040]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4040]["RewardRandom"][1][2] = {}
tTaskTemplate[4040]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4040]["RewardRandom"][1][2]["ItemChance"] = 200
tTaskTemplate[4040]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4040]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4040]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4040]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4040]["RewardRandom"][1][3] = {}
tTaskTemplate[4040]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4040]["RewardRandom"][1][3]["ItemChance"] = 9000
tTaskTemplate[4040]["RewardRandom"][1][4] = {}
tTaskTemplate[4040]["RewardRandom"][1][4]["RandomItemChanceType"] = 3
tTaskTemplate[4040]["RewardRandom"][1][4]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4040]["RewardRandom"][1][4]["ItemChance"] = 1333
tTaskTemplate[4040]["RewardRandom"][1][4]["RewardItem"] = {}
tTaskTemplate[4040]["RewardRandom"][1][4]["RewardItem"][1] = {}
tTaskTemplate[4040]["RewardRandom"][1][4]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4040]["RewardRandom"][1][4]["RewardItem"][1]["Attr"] = "0 1"
-- 敦煌 击杀土墓蝠180只
tTaskTemplate[4041] = {}
tTaskTemplate[4041]["IsReceived"] = {400,700}
tTaskTemplate[4041]["TaskId"] = 4041
tTaskTemplate[4041]["AcceptTask"] = {100,300,500}
tTaskTemplate[4041]["RevSpace"] = 1
tTaskTemplate[4041]["RevLog"] = "0,0,4041,0,12001176,2,3311061,1"
tTaskTemplate[4041]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4041]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4041]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4041]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4041]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4041]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4041]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4041]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4041]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4041]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4041]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4041]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4041]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4041]["ReqMonsterId1"] = {4873}
tTaskTemplate[4041]["ReqMonsterPos1"] = 1
tTaskTemplate[4041]["ReqMonsterCount1"] = 180
tTaskTemplate[4041]["ReqItemId1"] = 3311061
tTaskTemplate[4041]["ReqItemCount1"] = 1
tTaskTemplate[4041]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4041]["MonsterTask"] = {300,700} 
tTaskTemplate[4041]["IsShare"] = true -- 组队触发
tTaskTemplate[4041]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4041]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4041]["Next"] = {}
tTaskTemplate[4041]["Next"]["NpcId"] = 0
tTaskTemplate[4041]["Next"]["MapId"] = 10369
tTaskTemplate[4041]["Next"]["PosX"] = 332
tTaskTemplate[4041]["Next"]["PosY"] = 605
-- 中间环节
tTaskTemplate[4041]["Mid"] = {}
tTaskTemplate[4041]["Mid"]["NpcId"] = 23293
tTaskTemplate[4041]["Mid"]["MapId"] = 10369
tTaskTemplate[4041]["Mid"]["PosX"] = 322
tTaskTemplate[4041]["Mid"]["PosY"] = 648
-- 奖励
tTaskTemplate[4041]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4041]["RewSpace"] = 3
tTaskTemplate[4041]["RewExpTime"] = 150
tTaskTemplate[4041]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4041]["RewardRandom"] = {}
tTaskTemplate[4041]["RewardRandom"][1] = {}
tTaskTemplate[4041]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4041]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4041]["RewardRandom"][1][1] = {}
tTaskTemplate[4041]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4041]["RewardRandom"][1][1]["ItemChance"] = 933
tTaskTemplate[4041]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4041]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4041]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4041]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4041]["RewardRandom"][1][2] = {}
tTaskTemplate[4041]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4041]["RewardRandom"][1][2]["ItemChance"] = 333
tTaskTemplate[4041]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4041]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4041]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4041]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4041]["RewardRandom"][1][3] = {}
tTaskTemplate[4041]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4041]["RewardRandom"][1][3]["ItemChance"] = 67
tTaskTemplate[4041]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4041]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4041]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4041]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4041]["RewardRandom"][1][4] = {}
tTaskTemplate[4041]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4041]["RewardRandom"][1][4]["ItemChance"] = 8667
tTaskTemplate[4041]["RewardRandom"][1][5] = {}
tTaskTemplate[4041]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4041]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4041]["RewardRandom"][1][5]["ItemChance"] = 1000
tTaskTemplate[4041]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4041]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4041]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4041]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
-- 敦煌 击杀嗜血蝙蝠180只
tTaskTemplate[4042] = {}
tTaskTemplate[4042]["IsReceived"] = {400,700}
tTaskTemplate[4042]["TaskId"] = 4042
tTaskTemplate[4042]["AcceptTask"] = {100,300,500}
tTaskTemplate[4042]["RevSpace"] = 1
tTaskTemplate[4042]["RevLog"] = "0,0,4042,0,12001176,2,3311061,1"
tTaskTemplate[4042]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4042]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4042]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4042]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4042]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4042]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4042]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4042]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4042]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4042]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4042]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4042]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4042]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4042]["ReqMonsterId1"] = {4875}
tTaskTemplate[4042]["ReqMonsterPos1"] = 1
tTaskTemplate[4042]["ReqMonsterCount1"] = 180
tTaskTemplate[4042]["ReqItemId1"] = 3311061
tTaskTemplate[4042]["ReqItemCount1"] = 1
tTaskTemplate[4042]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4042]["MonsterTask"] = {300,700} 
tTaskTemplate[4042]["IsShare"] = true -- 组队触发
tTaskTemplate[4042]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4042]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4042]["Next"] = {}
tTaskTemplate[4042]["Next"]["NpcId"] = 0
tTaskTemplate[4042]["Next"]["MapId"] = 10369
tTaskTemplate[4042]["Next"]["PosX"] = 344
tTaskTemplate[4042]["Next"]["PosY"] = 446
-- 中间环节
tTaskTemplate[4042]["Mid"] = {}
tTaskTemplate[4042]["Mid"]["NpcId"] = 23293
tTaskTemplate[4042]["Mid"]["MapId"] = 10369
tTaskTemplate[4042]["Mid"]["PosX"] = 322
tTaskTemplate[4042]["Mid"]["PosY"] = 648
-- 奖励
tTaskTemplate[4042]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4042]["RewSpace"] = 3
tTaskTemplate[4042]["RewExpTime"] = 150
tTaskTemplate[4042]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4042]["RewardRandom"] = {}
tTaskTemplate[4042]["RewardRandom"][1] = {}
tTaskTemplate[4042]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4042]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4042]["RewardRandom"][1][1] = {}
tTaskTemplate[4042]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4042]["RewardRandom"][1][1]["ItemChance"] = 933
tTaskTemplate[4042]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4042]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4042]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4042]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4042]["RewardRandom"][1][2] = {}
tTaskTemplate[4042]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4042]["RewardRandom"][1][2]["ItemChance"] = 333
tTaskTemplate[4042]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4042]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4042]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4042]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4042]["RewardRandom"][1][3] = {}
tTaskTemplate[4042]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4042]["RewardRandom"][1][3]["ItemChance"] = 67
tTaskTemplate[4042]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4042]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4042]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4042]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4042]["RewardRandom"][1][4] = {}
tTaskTemplate[4042]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4042]["RewardRandom"][1][4]["ItemChance"] = 8667
tTaskTemplate[4042]["RewardRandom"][1][5] = {}
tTaskTemplate[4042]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4042]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4042]["RewardRandom"][1][5]["ItemChance"] = 1000
tTaskTemplate[4042]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4042]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4042]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4042]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
-- 敦煌 击杀牛怪180只
tTaskTemplate[4043] = {}
tTaskTemplate[4043]["IsReceived"] = {400,700}
tTaskTemplate[4043]["TaskId"] = 4043
tTaskTemplate[4043]["AcceptTask"] = {100,300,500}
tTaskTemplate[4043]["RevSpace"] = 1
tTaskTemplate[4043]["RevLog"] = "0,0,4043,0,12001176,2,3311061,1"
tTaskTemplate[4043]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4043]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4043]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4043]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4043]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4043]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4043]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4043]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4043]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4043]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4043]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4043]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4043]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4043]["ReqMonsterId1"] = {4876}
tTaskTemplate[4043]["ReqMonsterPos1"] = 1
tTaskTemplate[4043]["ReqMonsterCount1"] = 180
tTaskTemplate[4043]["ReqItemId1"] = 3311061
tTaskTemplate[4043]["ReqItemCount1"] = 1
tTaskTemplate[4043]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4043]["MonsterTask"] = {300,700} 
tTaskTemplate[4043]["IsShare"] = true -- 组队触发
tTaskTemplate[4043]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4043]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4043]["Next"] = {}
tTaskTemplate[4043]["Next"]["NpcId"] = 0
tTaskTemplate[4043]["Next"]["MapId"] = 10369
tTaskTemplate[4043]["Next"]["PosX"] = 184
tTaskTemplate[4043]["Next"]["PosY"] = 366
-- 中间环节
tTaskTemplate[4043]["Mid"] = {}
tTaskTemplate[4043]["Mid"]["NpcId"] = 23293
tTaskTemplate[4043]["Mid"]["MapId"] = 10369
tTaskTemplate[4043]["Mid"]["PosX"] = 322
tTaskTemplate[4043]["Mid"]["PosY"] = 648
-- 奖励
tTaskTemplate[4043]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4043]["RewSpace"] = 3
tTaskTemplate[4043]["RewExpTime"] = 180
tTaskTemplate[4043]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4043]["RewardRandom"] = {}
tTaskTemplate[4043]["RewardRandom"][1] = {}
tTaskTemplate[4043]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4043]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4043]["RewardRandom"][1][1] = {}
tTaskTemplate[4043]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4043]["RewardRandom"][1][1]["ItemChance"] = 933
tTaskTemplate[4043]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4043]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4043]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4043]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4043]["RewardRandom"][1][2] = {}
tTaskTemplate[4043]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4043]["RewardRandom"][1][2]["ItemChance"] = 333
tTaskTemplate[4043]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4043]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4043]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4043]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4043]["RewardRandom"][1][3] = {}
tTaskTemplate[4043]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4043]["RewardRandom"][1][3]["ItemChance"] = 67
tTaskTemplate[4043]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4043]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4043]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4043]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4043]["RewardRandom"][1][4] = {}
tTaskTemplate[4043]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4043]["RewardRandom"][1][4]["ItemChance"] = 8667
tTaskTemplate[4043]["RewardRandom"][1][5] = {}
tTaskTemplate[4043]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4043]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4043]["RewardRandom"][1][5]["ItemChance"] = 1000
tTaskTemplate[4043]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4043]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4043]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4043]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
-- 敦煌 击杀血影红魔180只
tTaskTemplate[4044] = {}
tTaskTemplate[4044]["IsReceived"] = {400,700}
tTaskTemplate[4044]["TaskId"] = 4044
tTaskTemplate[4044]["AcceptTask"] = {100,300,500}
tTaskTemplate[4044]["RevSpace"] = 1
tTaskTemplate[4044]["RevLog"] = "0,0,4044,0,12001176,2,3311061,1"
tTaskTemplate[4044]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4044]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4044]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4044]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4044]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4044]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4044]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4044]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4044]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4044]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4044]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4044]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4044]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4044]["ReqMonsterId1"] = {4877}
tTaskTemplate[4044]["ReqMonsterPos1"] = 1
tTaskTemplate[4044]["ReqMonsterCount1"] = 180
tTaskTemplate[4044]["ReqItemId1"] = 3311061
tTaskTemplate[4044]["ReqItemCount1"] = 1
tTaskTemplate[4044]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4044]["MonsterTask"] = {300,700} 
tTaskTemplate[4044]["IsShare"] = true -- 组队触发
tTaskTemplate[4044]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4044]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4044]["Next"] = {}
tTaskTemplate[4044]["Next"]["NpcId"] = 0
tTaskTemplate[4044]["Next"]["MapId"] = 10369
tTaskTemplate[4044]["Next"]["PosX"] = 351
tTaskTemplate[4044]["Next"]["PosY"] = 289
-- 中间环节
tTaskTemplate[4044]["Mid"] = {}
tTaskTemplate[4044]["Mid"]["NpcId"] = 23293
tTaskTemplate[4044]["Mid"]["MapId"] = 10369
tTaskTemplate[4044]["Mid"]["PosX"] = 322
tTaskTemplate[4044]["Mid"]["PosY"] = 648
-- 奖励
tTaskTemplate[4044]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4044]["RewSpace"] = 3
tTaskTemplate[4044]["RewExpTime"] = 180
tTaskTemplate[4044]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4044]["RewardRandom"] = {}
tTaskTemplate[4044]["RewardRandom"][1] = {}
tTaskTemplate[4044]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4044]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4044]["RewardRandom"][1][1] = {}
tTaskTemplate[4044]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4044]["RewardRandom"][1][1]["ItemChance"] = 933
tTaskTemplate[4044]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4044]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4044]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4044]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4044]["RewardRandom"][1][2] = {}
tTaskTemplate[4044]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4044]["RewardRandom"][1][2]["ItemChance"] = 333
tTaskTemplate[4044]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4044]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4044]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4044]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4044]["RewardRandom"][1][3] = {}
tTaskTemplate[4044]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4044]["RewardRandom"][1][3]["ItemChance"] = 67
tTaskTemplate[4044]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4044]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4044]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4044]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4044]["RewardRandom"][1][4] = {}
tTaskTemplate[4044]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4044]["RewardRandom"][1][4]["ItemChance"] = 8667
tTaskTemplate[4044]["RewardRandom"][1][5] = {}
tTaskTemplate[4044]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4044]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4044]["RewardRandom"][1][5]["ItemChance"] = 1000
tTaskTemplate[4044]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4044]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4044]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4044]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
-- 敦煌 击杀吸血蝙蝠180只
tTaskTemplate[4045] = {}
tTaskTemplate[4045]["IsReceived"] = {400,700}
tTaskTemplate[4045]["TaskId"] = 4045
tTaskTemplate[4045]["AcceptTask"] = {100,300,500}
tTaskTemplate[4045]["RevSpace"] = 1
tTaskTemplate[4045]["RevLog"] = "0,0,4045,0,12001176,2,3311061,1"
tTaskTemplate[4045]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4045]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4045]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4045]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4045]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4045]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4045]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4045]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4045]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4045]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4045]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4045]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4045]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4045]["ReqMonsterId1"] = {4878}
tTaskTemplate[4045]["ReqMonsterPos1"] = 1
tTaskTemplate[4045]["ReqMonsterCount1"] = 180
tTaskTemplate[4045]["ReqItemId1"] = 3311061
tTaskTemplate[4045]["ReqItemCount1"] = 1
tTaskTemplate[4045]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4045]["MonsterTask"] = {300,700} 
tTaskTemplate[4045]["IsShare"] = true -- 组队触发
tTaskTemplate[4045]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4045]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4045]["Next"] = {}
tTaskTemplate[4045]["Next"]["NpcId"] = 0
tTaskTemplate[4045]["Next"]["MapId"] = 10369
tTaskTemplate[4045]["Next"]["PosX"] = 445
tTaskTemplate[4045]["Next"]["PosY"] = 169
-- 中间环节
tTaskTemplate[4045]["Mid"] = {}
tTaskTemplate[4045]["Mid"]["NpcId"] = 23293
tTaskTemplate[4045]["Mid"]["MapId"] = 10369
tTaskTemplate[4045]["Mid"]["PosX"] = 322
tTaskTemplate[4045]["Mid"]["PosY"] = 648
-- 奖励
tTaskTemplate[4045]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4045]["RewSpace"] = 4
tTaskTemplate[4045]["RewExpTime"] = 250
tTaskTemplate[4045]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4045]["RewardRandom"] = {}
tTaskTemplate[4045]["RewardRandom"][1] = {}
tTaskTemplate[4045]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4045]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4045]["RewardRandom"][1][1] = {}
tTaskTemplate[4045]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4045]["RewardRandom"][1][1]["ItemChance"] = 933
tTaskTemplate[4045]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4045]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4045]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4045]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4045]["RewardRandom"][1][2] = {}
tTaskTemplate[4045]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4045]["RewardRandom"][1][2]["ItemChance"] = 333
tTaskTemplate[4045]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4045]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4045]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4045]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4045]["RewardRandom"][1][3] = {}
tTaskTemplate[4045]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4045]["RewardRandom"][1][3]["ItemChance"] = 67
tTaskTemplate[4045]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4045]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4045]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4045]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4045]["RewardRandom"][1][4] = {}
tTaskTemplate[4045]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4045]["RewardRandom"][1][4]["ItemChance"] = 8667
tTaskTemplate[4045]["RewardRandom"][1][5] = {}
tTaskTemplate[4045]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4045]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4045]["RewardRandom"][1][5]["ItemChance"] = 2000
tTaskTemplate[4045]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4045]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4045]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4045]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4045]["RewardRandom"][1][6] = {}
tTaskTemplate[4045]["RewardRandom"][1][6]["RandomItemChanceType"] = 3
tTaskTemplate[4045]["RewardRandom"][1][6]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4045]["RewardRandom"][1][6]["ItemChance"] = 67
tTaskTemplate[4045]["RewardRandom"][1][6]["GlobalId"] = 53018
tTaskTemplate[4045]["RewardRandom"][1][6]["Pos"] = 0
tTaskTemplate[4045]["RewardRandom"][1][6]["MaxData"] = 10
tTaskTemplate[4045]["RewardRandom"][1][6]["RewardItem"] = {}
tTaskTemplate[4045]["RewardRandom"][1][6]["RewardItem"][1] = {}
tTaskTemplate[4045]["RewardRandom"][1][6]["RewardItem"][1]["Id"] = 1088000
tTaskTemplate[4045]["RewardRandom"][1][6]["RewardItem"][1]["Attr"] = "0 1"
-- 敦煌 击杀血魔180只
tTaskTemplate[4046] = {}
tTaskTemplate[4046]["IsReceived"] = {400,700}
tTaskTemplate[4046]["TaskId"] = 4046
tTaskTemplate[4046]["AcceptTask"] = {100,300,500}
tTaskTemplate[4046]["RevSpace"] = 1
tTaskTemplate[4046]["RevLog"] = "0,0,4046,0,12001176,2,3311061,1"
tTaskTemplate[4046]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4046]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4046]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4046]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4046]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4046]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4046]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4046]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4046]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4046]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4046]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4046]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4046]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4046]["ReqMonsterId1"] = {4879}
tTaskTemplate[4046]["ReqMonsterPos1"] = 1
tTaskTemplate[4046]["ReqMonsterCount1"] = 180
tTaskTemplate[4046]["ReqItemId1"] = 3311061
tTaskTemplate[4046]["ReqItemCount1"] = 1
tTaskTemplate[4046]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4046]["MonsterTask"] = {300,700} 
tTaskTemplate[4046]["IsShare"] = true -- 组队触发
tTaskTemplate[4046]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4046]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4046]["Next"] = {}
tTaskTemplate[4046]["Next"]["NpcId"] = 0
tTaskTemplate[4046]["Next"]["MapId"] = 10369
tTaskTemplate[4046]["Next"]["PosX"] = 472
tTaskTemplate[4046]["Next"]["PosY"] = 250
-- 中间环节
tTaskTemplate[4046]["Mid"] = {}
tTaskTemplate[4046]["Mid"]["NpcId"] = 23293
tTaskTemplate[4046]["Mid"]["MapId"] = 10369
tTaskTemplate[4046]["Mid"]["PosX"] = 322
tTaskTemplate[4046]["Mid"]["PosY"] = 648
-- 奖励
tTaskTemplate[4046]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4046]["RewSpace"] = 4
tTaskTemplate[4046]["RewExpTime"] = 300
tTaskTemplate[4046]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4046]["RewardRandom"] = {}
tTaskTemplate[4046]["RewardRandom"][1] = {}
tTaskTemplate[4046]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4046]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4046]["RewardRandom"][1][1] = {}
tTaskTemplate[4046]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4046]["RewardRandom"][1][1]["ItemChance"] = 933
tTaskTemplate[4046]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4046]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4046]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4046]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4046]["RewardRandom"][1][2] = {}
tTaskTemplate[4046]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4046]["RewardRandom"][1][2]["ItemChance"] = 333
tTaskTemplate[4046]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4046]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4046]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4046]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4046]["RewardRandom"][1][3] = {}
tTaskTemplate[4046]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4046]["RewardRandom"][1][3]["ItemChance"] = 67
tTaskTemplate[4046]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4046]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4046]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4046]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4046]["RewardRandom"][1][4] = {}
tTaskTemplate[4046]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4046]["RewardRandom"][1][4]["ItemChance"] = 8667
tTaskTemplate[4046]["RewardRandom"][1][5] = {}
tTaskTemplate[4046]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4046]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4046]["RewardRandom"][1][5]["ItemChance"] = 2000
tTaskTemplate[4046]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4046]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4046]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4046]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4046]["RewardRandom"][1][6] = {}
tTaskTemplate[4046]["RewardRandom"][1][6]["RandomItemChanceType"] = 3
tTaskTemplate[4046]["RewardRandom"][1][6]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4046]["RewardRandom"][1][6]["ItemChance"] = 67
tTaskTemplate[4046]["RewardRandom"][1][6]["GlobalId"] = 53018
tTaskTemplate[4046]["RewardRandom"][1][6]["Pos"] = 1
tTaskTemplate[4046]["RewardRandom"][1][6]["MaxData"] = 10
tTaskTemplate[4046]["RewardRandom"][1][6]["RewardItem"] = {}
tTaskTemplate[4046]["RewardRandom"][1][6]["RewardItem"][1] = {}
tTaskTemplate[4046]["RewardRandom"][1][6]["RewardItem"][1]["Id"] = 1088000
tTaskTemplate[4046]["RewardRandom"][1][6]["RewardItem"][1]["Attr"] = "0 1"
-- 冰封1层 击杀冰凌腾蛇200只
tTaskTemplate[4047] = {}
tTaskTemplate[4047]["IsReceived"] = {400,700}
tTaskTemplate[4047]["TaskId"] = 4047
tTaskTemplate[4047]["AcceptTask"] = {100,300,500}
tTaskTemplate[4047]["RevSpace"] = 1
tTaskTemplate[4047]["RevLog"] = "0,0,4047,0,12001176,2,3311061,1"
tTaskTemplate[4047]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4047]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4047]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4047]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4047]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4047]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4047]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4047]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4047]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4047]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4047]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4047]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4047]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4047]["ReqMonsterId1"] = {4860}
tTaskTemplate[4047]["ReqMonsterPos1"] = 1
tTaskTemplate[4047]["ReqMonsterCount1"] = 200
tTaskTemplate[4047]["ReqItemId1"] = 3311061
tTaskTemplate[4047]["ReqItemCount1"] = 1
tTaskTemplate[4047]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4047]["MonsterTask"] = {300,700} 
tTaskTemplate[4047]["IsShare"] = true -- 组队触发
tTaskTemplate[4047]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4047]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4047]["Next"] = {}
tTaskTemplate[4047]["Next"]["NpcId"] = 0
tTaskTemplate[4047]["Next"]["MapId"] = 10370
tTaskTemplate[4047]["Next"]["PosX"] = 266
tTaskTemplate[4047]["Next"]["PosY"] = 187
-- 中间环节
tTaskTemplate[4047]["Mid"] = {}
tTaskTemplate[4047]["Mid"]["NpcId"] = 23294
tTaskTemplate[4047]["Mid"]["MapId"] = 10370
tTaskTemplate[4047]["Mid"]["PosX"] = 297
tTaskTemplate[4047]["Mid"]["PosY"] = 67
-- 奖励
tTaskTemplate[4047]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4047]["RewSpace"] = 4
tTaskTemplate[4047]["RewExpTime"] = 400
tTaskTemplate[4047]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4047]["RewardRandom"] = {}
tTaskTemplate[4047]["RewardRandom"][1] = {}
tTaskTemplate[4047]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4047]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4047]["RewardRandom"][1][1] = {}
tTaskTemplate[4047]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4047]["RewardRandom"][1][1]["ItemChance"] = 1000
tTaskTemplate[4047]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4047]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4047]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4047]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4047]["RewardRandom"][1][2] = {}
tTaskTemplate[4047]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4047]["RewardRandom"][1][2]["ItemChance"] = 500
tTaskTemplate[4047]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4047]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4047]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4047]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4047]["RewardRandom"][1][3] = {}
tTaskTemplate[4047]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4047]["RewardRandom"][1][3]["ItemChance"] = 167
tTaskTemplate[4047]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4047]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4047]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4047]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4047]["RewardRandom"][1][4] = {}
tTaskTemplate[4047]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4047]["RewardRandom"][1][4]["ItemChance"] = 8333
tTaskTemplate[4047]["RewardRandom"][1][5] = {}
tTaskTemplate[4047]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4047]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4047]["RewardRandom"][1][5]["ItemChance"] = 2000
tTaskTemplate[4047]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4047]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4047]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 723700
tTaskTemplate[4047]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4047]["RewardRandom"][1][6] = {}
tTaskTemplate[4047]["RewardRandom"][1][6]["RandomItemChanceType"] = 3
tTaskTemplate[4047]["RewardRandom"][1][6]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4047]["RewardRandom"][1][6]["ItemChance"] = 67
tTaskTemplate[4047]["RewardRandom"][1][6]["GlobalId"] = 53018
tTaskTemplate[4047]["RewardRandom"][1][6]["Pos"] = 2
tTaskTemplate[4047]["RewardRandom"][1][6]["MaxData"] = 10
tTaskTemplate[4047]["RewardRandom"][1][6]["RewardItem"] = {}
tTaskTemplate[4047]["RewardRandom"][1][6]["RewardItem"][1] = {}
tTaskTemplate[4047]["RewardRandom"][1][6]["RewardItem"][1]["Id"] = 1088000
tTaskTemplate[4047]["RewardRandom"][1][6]["RewardItem"][1]["Attr"] = "0 1"
-- 冰封2层 击杀尸魂女妖200只
tTaskTemplate[4048] = {}
tTaskTemplate[4048]["IsReceived"] = {400,700}
tTaskTemplate[4048]["TaskId"] = 4048
tTaskTemplate[4048]["AcceptTask"] = {100,300,500}
tTaskTemplate[4048]["RevSpace"] = 1
tTaskTemplate[4048]["RevLog"] = "0,0,4048,0,12001176,2,3311061,1"
tTaskTemplate[4048]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4048]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4048]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4048]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4048]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4048]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4048]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4048]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4048]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4048]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4048]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4048]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4048]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4048]["ReqMonsterId1"] = {4865}
tTaskTemplate[4048]["ReqMonsterPos1"] = 1
tTaskTemplate[4048]["ReqMonsterCount1"] = 200
tTaskTemplate[4048]["ReqItemId1"] = 3311061
tTaskTemplate[4048]["ReqItemCount1"] = 1
tTaskTemplate[4048]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4048]["MonsterTask"] = {300,700} 
tTaskTemplate[4048]["IsShare"] = true -- 组队触发
tTaskTemplate[4048]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4048]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4048]["Next"] = {}
tTaskTemplate[4048]["Next"]["NpcId"] = 0
tTaskTemplate[4048]["Next"]["MapId"] = 10371
tTaskTemplate[4048]["Next"]["PosX"] = 321
tTaskTemplate[4048]["Next"]["PosY"] = 185
-- 中间环节
tTaskTemplate[4048]["Mid"] = {}
tTaskTemplate[4048]["Mid"]["NpcId"] = 23295
tTaskTemplate[4048]["Mid"]["MapId"] = 10371
tTaskTemplate[4048]["Mid"]["PosX"] = 322
tTaskTemplate[4048]["Mid"]["PosY"] = 98
-- 奖励
tTaskTemplate[4048]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4048]["RewSpace"] = 4
tTaskTemplate[4048]["RewExpTime"] = 480
tTaskTemplate[4048]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4048]["RewardRandom"] = {}
tTaskTemplate[4048]["RewardRandom"][1] = {}
tTaskTemplate[4048]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4048]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4048]["RewardRandom"][1][1] = {}
tTaskTemplate[4048]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4048]["RewardRandom"][1][1]["ItemChance"] = 1000
tTaskTemplate[4048]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4048]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4048]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4048]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4048]["RewardRandom"][1][2] = {}
tTaskTemplate[4048]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4048]["RewardRandom"][1][2]["ItemChance"] = 500
tTaskTemplate[4048]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4048]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4048]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4048]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4048]["RewardRandom"][1][3] = {}
tTaskTemplate[4048]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4048]["RewardRandom"][1][3]["ItemChance"] = 167
tTaskTemplate[4048]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4048]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4048]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4048]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4048]["RewardRandom"][1][4] = {}
tTaskTemplate[4048]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4048]["RewardRandom"][1][4]["ItemChance"] = 8333
tTaskTemplate[4048]["RewardRandom"][1][5] = {}
tTaskTemplate[4048]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4048]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4048]["RewardRandom"][1][5]["ItemChance"] = 333
tTaskTemplate[4048]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4048]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4048]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 3304318
tTaskTemplate[4048]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4048]["RewardRandom"][1][6] = {}
tTaskTemplate[4048]["RewardRandom"][1][6]["RandomItemChanceType"] = 3
tTaskTemplate[4048]["RewardRandom"][1][6]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4048]["RewardRandom"][1][6]["ItemChance"] = 67
tTaskTemplate[4048]["RewardRandom"][1][6]["GlobalId"] = 53018
tTaskTemplate[4048]["RewardRandom"][1][6]["Pos"] = 3
tTaskTemplate[4048]["RewardRandom"][1][6]["MaxData"] = 10
tTaskTemplate[4048]["RewardRandom"][1][6]["RewardItem"] = {}
tTaskTemplate[4048]["RewardRandom"][1][6]["RewardItem"][1] = {}
tTaskTemplate[4048]["RewardRandom"][1][6]["RewardItem"][1]["Id"] = 1088000
tTaskTemplate[4048]["RewardRandom"][1][6]["RewardItem"][1]["Attr"] = "0 1"
-- 冰封3层 击杀鬼蛇兵200只
tTaskTemplate[4049] = {}
tTaskTemplate[4049]["IsReceived"] = {400,700}
tTaskTemplate[4049]["TaskId"] = 4049
tTaskTemplate[4049]["AcceptTask"] = {100,300,500}
tTaskTemplate[4049]["RevSpace"] = 1
tTaskTemplate[4049]["RevLog"] = "0,0,4049,0,12001176,2,3311061,1"
tTaskTemplate[4049]["GetItemId1"] = 3311061
-- 对白编号表
tTaskTemplate[4049]["MeetSpace"] = "2-4" 	-- 接任务背包不足
tTaskTemplate[4049]["NotLevel"] = "1-2"	--不满足等级要求提示
tTaskTemplate[4049]["SubTask"] = "1-5" 		-- 已完成任务对白
tTaskTemplate[4049]["MeetAccept"] = "2-1"	-- 接新任务对白
tTaskTemplate[4049]["HasAccept"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4049]["HandOverItem"] = "1-6" 	-- 交任务中无物品
tTaskTemplate[4049]["HaveTaskItem"] = "1-4" -- 有任务物品
tTaskTemplate[4049]["NotSpace"] = "2-4" 	-- 补领任务物品背包不足
tTaskTemplate[4049]["ReqTaskItem"] = "2-1" 	-- 补领任务物品成功
tTaskTemplate[4049]["HandOverMonster"] = "1-4" 	-- 已接任务未完成
tTaskTemplate[4049]["HandOverSpace"] = "2-3" 	--背包达上限
-- 交任务
tTaskTemplate[4049]["IsHandOver"] = {400,500,900}		--任务交任务条件配置表
tTaskTemplate[4049]["ReqMonsterId1"] = {4867}
tTaskTemplate[4049]["ReqMonsterPos1"] = 1
tTaskTemplate[4049]["ReqMonsterCount1"] = 200
tTaskTemplate[4049]["ReqItemId1"] = 3311061
tTaskTemplate[4049]["ReqItemCount1"] = 1
tTaskTemplate[4049]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
--怪物
tTaskTemplate[4049]["MonsterTask"] = {300,700} 
tTaskTemplate[4049]["IsShare"] = true -- 组队触发
tTaskTemplate[4049]["MonsterFunc"] = QuestRecruit_MustKillCount
tTaskTemplate[4049]["KillMonsterFunc"] = QuestRecruit_MonsterDone
-- 后续任务NPC数据
tTaskTemplate[4049]["Next"] = {}
tTaskTemplate[4049]["Next"]["NpcId"] = 0
tTaskTemplate[4049]["Next"]["MapId"] = 10372
tTaskTemplate[4049]["Next"]["PosX"] = 357
tTaskTemplate[4049]["Next"]["PosY"] = 243
-- 中间环节
tTaskTemplate[4049]["Mid"] = {}
tTaskTemplate[4049]["Mid"]["NpcId"] = 23296
tTaskTemplate[4049]["Mid"]["MapId"] = 10372
tTaskTemplate[4049]["Mid"]["PosX"] = 142
tTaskTemplate[4049]["Mid"]["PosY"] = 213
-- 奖励
tTaskTemplate[4049]["HandOverTask"] = {100,200,500,1600}	--交任务的奖励表
tTaskTemplate[4049]["RewSpace"] = 4
tTaskTemplate[4049]["RewExpTime"] = 540
tTaskTemplate[4049]["FullAddCultivation"] = 100 --满级给修行值
-- 概率获得物品
tTaskTemplate[4049]["RewardRandom"] = {}
tTaskTemplate[4049]["RewardRandom"][1] = {}
tTaskTemplate[4049]["RewardRandom"][1]["LogId"] = 12001177
tTaskTemplate[4049]["RewardRandom"][1]["ItemChanceSum"] = 10000
tTaskTemplate[4049]["RewardRandom"][1][1] = {}
tTaskTemplate[4049]["RewardRandom"][1][1]["RandomItemChanceType"] = 2
tTaskTemplate[4049]["RewardRandom"][1][1]["ItemChance"] = 1000
tTaskTemplate[4049]["RewardRandom"][1][1]["RewardItem"] = {}
tTaskTemplate[4049]["RewardRandom"][1][1]["RewardItem"][1] = {}
tTaskTemplate[4049]["RewardRandom"][1][1]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4049]["RewardRandom"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tTaskTemplate[4049]["RewardRandom"][1][2] = {}
tTaskTemplate[4049]["RewardRandom"][1][2]["RandomItemChanceType"] = 2
tTaskTemplate[4049]["RewardRandom"][1][2]["ItemChance"] = 500
tTaskTemplate[4049]["RewardRandom"][1][2]["RewardItem"] = {}
tTaskTemplate[4049]["RewardRandom"][1][2]["RewardItem"][1] = {}
tTaskTemplate[4049]["RewardRandom"][1][2]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4049]["RewardRandom"][1][2]["RewardItem"][1]["Attr"] = "0 2"
tTaskTemplate[4049]["RewardRandom"][1][3] = {}
tTaskTemplate[4049]["RewardRandom"][1][3]["RandomItemChanceType"] = 2
tTaskTemplate[4049]["RewardRandom"][1][3]["ItemChance"] = 167
tTaskTemplate[4049]["RewardRandom"][1][3]["RewardItem"] = {}
tTaskTemplate[4049]["RewardRandom"][1][3]["RewardItem"][1] = {}
tTaskTemplate[4049]["RewardRandom"][1][3]["RewardItem"][1]["Id"] = 1088001
tTaskTemplate[4049]["RewardRandom"][1][3]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4049]["RewardRandom"][1][4] = {}
tTaskTemplate[4049]["RewardRandom"][1][4]["RandomItemChanceType"] = 2
tTaskTemplate[4049]["RewardRandom"][1][4]["ItemChance"] = 8333
tTaskTemplate[4049]["RewardRandom"][1][5] = {}
tTaskTemplate[4049]["RewardRandom"][1][5]["RandomItemChanceType"] = 3
tTaskTemplate[4049]["RewardRandom"][1][5]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4049]["RewardRandom"][1][5]["ItemChance"] = 333
tTaskTemplate[4049]["RewardRandom"][1][5]["RewardItem"] = {}
tTaskTemplate[4049]["RewardRandom"][1][5]["RewardItem"][1] = {}
tTaskTemplate[4049]["RewardRandom"][1][5]["RewardItem"][1]["Id"] = 3304318
tTaskTemplate[4049]["RewardRandom"][1][5]["RewardItem"][1]["Attr"] = "0 3"
tTaskTemplate[4049]["RewardRandom"][1][6] = {}
tTaskTemplate[4049]["RewardRandom"][1][6]["RandomItemChanceType"] = 3
tTaskTemplate[4049]["RewardRandom"][1][6]["ItemSelfChanceSum"] = 10000
tTaskTemplate[4049]["RewardRandom"][1][6]["ItemChance"] = 67
tTaskTemplate[4049]["RewardRandom"][1][6]["GlobalId"] = 53018
tTaskTemplate[4049]["RewardRandom"][1][6]["Pos"] = 4
tTaskTemplate[4049]["RewardRandom"][1][6]["MaxData"] = 10
tTaskTemplate[4049]["RewardRandom"][1][6]["RewardItem"] = {}
tTaskTemplate[4049]["RewardRandom"][1][6]["RewardItem"][1] = {}
tTaskTemplate[4049]["RewardRandom"][1][6]["RewardItem"][1]["Id"] = 1088000
tTaskTemplate[4049]["RewardRandom"][1][6]["RewardItem"][1]["Attr"] = "0 1"

------------------------------------------------数据部分配置
local tHarvestMonster_CalabashTask_Count = {}
	-- 第一个任务id
	tHarvestMonster_CalabashTask_Count["MinTaskId"] = 4014
	-- 最后一个任务id
	tHarvestMonster_CalabashTask_Count["MaxTaskId"] = 4049
	
	-- 动态码
	tHarvestMonster_CalabashTask_Count["GlobalId"] = 53018
	tHarvestMonster_CalabashTask_Count["ClearTime"] = "00:00 00:02"
	
	-- 收妖葫芦
	tHarvestMonster_CalabashTask_Count["CalabashId"] = 3311061

local tHarvestMonster_CalabashTask_Log = {}
	-- 补领物品进度
	tHarvestMonster_CalabashTask_Log["RevLog"] = "0,0,%d,%d,12001176,2,3311061,1"
	-- 删除任务删除物品
	tHarvestMonster_CalabashTask_Log["DelLog"] = "0,0,3311061,1,12001176,2,%d,1"

local tHarvestMonster_CalabashTask_Stc = {}
	-- 23288,'双龙城总兵' 当天接取任务次数，最多10次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23288] = {}
	tHarvestMonster_CalabashTask_Stc[23288]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23288]["DataType"] = 14
	tHarvestMonster_CalabashTask_Stc[23288]["Limit"] = 10
	-- 23289,'鸣凤堡总兵' 当天接取任务次数，最多20次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23289] = {}
	tHarvestMonster_CalabashTask_Stc[23289]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23289]["DataType"] = 15
	tHarvestMonster_CalabashTask_Stc[23289]["Limit"] = 20
	-- 23290,'黑虎城总兵' 当天接取任务次数，最多25次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23290] = {}
	tHarvestMonster_CalabashTask_Stc[23290]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23290]["DataType"] = 16
	tHarvestMonster_CalabashTask_Stc[23290]["Limit"] = 25
	-- 23291,'云门关总兵' 当天接取任务次数，最多30次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23291] = {}
	tHarvestMonster_CalabashTask_Stc[23291]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23291]["DataType"] = 17
	tHarvestMonster_CalabashTask_Stc[23291]["Limit"] = 30
	-- 23292,'白鹭城总兵' 当天接取任务次数，最多10次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23292] = {}
	tHarvestMonster_CalabashTask_Stc[23292]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23292]["DataType"] = 18
	tHarvestMonster_CalabashTask_Stc[23292]["Limit"] = 30
	-- 23293,'敦煌副总兵' 当天接取任务次数，最多30次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23293] = {}
	tHarvestMonster_CalabashTask_Stc[23293]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23293]["DataType"] = 19
	tHarvestMonster_CalabashTask_Stc[23293]["Limit"] = 30
	-- 23294,'地穴一层总兵' 当天接取任务次数，最多30次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23294] = {}
	tHarvestMonster_CalabashTask_Stc[23294]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23294]["DataType"] = 20
	tHarvestMonster_CalabashTask_Stc[23294]["Limit"] = 30
	-- 23295,'地穴二层总兵' 当天接取任务次数，最多30次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23295] = {}
	tHarvestMonster_CalabashTask_Stc[23295]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23295]["DataType"] = 21
	tHarvestMonster_CalabashTask_Stc[23295]["Limit"] = 30
	-- 23296,'地穴三层总兵' 当天接取任务次数，最多30次，隔天清空
	tHarvestMonster_CalabashTask_Stc[23296] = {}
	tHarvestMonster_CalabashTask_Stc[23296]["EventType"] = 185
	tHarvestMonster_CalabashTask_Stc[23296]["DataType"] = 22
	tHarvestMonster_CalabashTask_Stc[23296]["Limit"] = 30
	
-- npc对应任务等级
local tHarvestMonster_CalabashTask_ReLevel = {}
	-- 最小等级到最大等级
	tHarvestMonster_CalabashTask_ReLevel[23288] = {}
	tHarvestMonster_CalabashTask_ReLevel[23288]["RevMinLevel"] = 1
	tHarvestMonster_CalabashTask_ReLevel[23288]["RevMaxLevel"] = 29
	tHarvestMonster_CalabashTask_ReLevel[23289] = {}
	tHarvestMonster_CalabashTask_ReLevel[23289]["RevMinLevel"] = 30
	tHarvestMonster_CalabashTask_ReLevel[23289]["RevMaxLevel"] = 49
	tHarvestMonster_CalabashTask_ReLevel[23290] = {}
	tHarvestMonster_CalabashTask_ReLevel[23290]["RevMinLevel"] = 50
	tHarvestMonster_CalabashTask_ReLevel[23290]["RevMaxLevel"] = 69
	tHarvestMonster_CalabashTask_ReLevel[23291] = {}
	tHarvestMonster_CalabashTask_ReLevel[23291]["RevMinLevel"] = 70
	tHarvestMonster_CalabashTask_ReLevel[23291]["RevMaxLevel"] = 89
	tHarvestMonster_CalabashTask_ReLevel[23292] = {}
	tHarvestMonster_CalabashTask_ReLevel[23292]["RevMinLevel"] = 90
	tHarvestMonster_CalabashTask_ReLevel[23292]["RevMaxLevel"] = 109
	tHarvestMonster_CalabashTask_ReLevel[23293] = {}
	tHarvestMonster_CalabashTask_ReLevel[23293]["RevMinLevel"] = 110
	tHarvestMonster_CalabashTask_ReLevel[23293]["RevMaxLevel"] = 129
	tHarvestMonster_CalabashTask_ReLevel[23294] = {}
	tHarvestMonster_CalabashTask_ReLevel[23294]["RevMinLevel"] = 130
	tHarvestMonster_CalabashTask_ReLevel[23294]["RevMaxLevel"] = 134
	tHarvestMonster_CalabashTask_ReLevel[23295] = {}
	tHarvestMonster_CalabashTask_ReLevel[23295]["RevMinLevel"] = 135
	tHarvestMonster_CalabashTask_ReLevel[23295]["RevMaxLevel"] = 139
	tHarvestMonster_CalabashTask_ReLevel[23296] = {}
	tHarvestMonster_CalabashTask_ReLevel[23296]["RevMinLevel"] = 140
	tHarvestMonster_CalabashTask_ReLevel[23296]["RevMaxLevel"] = G_User_MaxLev
	
-- 根据等级显示对应奖励
local tHarvestMonster_CalabashTask_LevelReward = {}
	tHarvestMonster_CalabashTask_LevelReward[1] = {1,9}
	tHarvestMonster_CalabashTask_LevelReward[2] = {10,19}
	tHarvestMonster_CalabashTask_LevelReward[3] = {20,29}
	tHarvestMonster_CalabashTask_LevelReward[4] = {30,39}
	tHarvestMonster_CalabashTask_LevelReward[5] = {40,44}
	tHarvestMonster_CalabashTask_LevelReward[6] = {45,49}
	tHarvestMonster_CalabashTask_LevelReward[7] = {50,54}
	tHarvestMonster_CalabashTask_LevelReward[8] = {55,59}
	tHarvestMonster_CalabashTask_LevelReward[9] = {60,64}
	tHarvestMonster_CalabashTask_LevelReward[10] = {65,69}
	tHarvestMonster_CalabashTask_LevelReward[11] = {70,74}
	tHarvestMonster_CalabashTask_LevelReward[12] = {75,79}
	tHarvestMonster_CalabashTask_LevelReward[13] = {80,84}
	tHarvestMonster_CalabashTask_LevelReward[14] = {85,89}
	tHarvestMonster_CalabashTask_LevelReward[15] = {90,94}
	tHarvestMonster_CalabashTask_LevelReward[16] = {95,99}
	tHarvestMonster_CalabashTask_LevelReward[17] = {100,104}
	tHarvestMonster_CalabashTask_LevelReward[18] = {105,109}
	tHarvestMonster_CalabashTask_LevelReward[19] = {110,114}
	tHarvestMonster_CalabashTask_LevelReward[20] = {115,119}
	tHarvestMonster_CalabashTask_LevelReward[21] = {120,124}
	tHarvestMonster_CalabashTask_LevelReward[22] = {125,129}
	tHarvestMonster_CalabashTask_LevelReward[23] = {130,134}
	tHarvestMonster_CalabashTask_LevelReward[24] = {135,139}
	tHarvestMonster_CalabashTask_LevelReward[25] = {140,150}
	
-- 根据等级随机任务
local tHarvestMonster_CalabashTask_LevelToTask = {}
	tHarvestMonster_CalabashTask_LevelToTask[1] = {4014}
	tHarvestMonster_CalabashTask_LevelToTask[2] = {4015}
	tHarvestMonster_CalabashTask_LevelToTask[3] = {4016,4017}
	tHarvestMonster_CalabashTask_LevelToTask[4] = {4018,4019}
	tHarvestMonster_CalabashTask_LevelToTask[5] = {4020,4021}
	tHarvestMonster_CalabashTask_LevelToTask[6] = {4022,4023}
	tHarvestMonster_CalabashTask_LevelToTask[7] = {4024}
	tHarvestMonster_CalabashTask_LevelToTask[8] = {4025,4026}
	tHarvestMonster_CalabashTask_LevelToTask[9] = {4027,4028}
	tHarvestMonster_CalabashTask_LevelToTask[10] = {4029}
	tHarvestMonster_CalabashTask_LevelToTask[11] = {4030}
	tHarvestMonster_CalabashTask_LevelToTask[12] = {4031}
	tHarvestMonster_CalabashTask_LevelToTask[13] = {4033}
	tHarvestMonster_CalabashTask_LevelToTask[14] = {4034}
	tHarvestMonster_CalabashTask_LevelToTask[15] = {4035}
	tHarvestMonster_CalabashTask_LevelToTask[16] = {4037}
	tHarvestMonster_CalabashTask_LevelToTask[17] = {4038}
	tHarvestMonster_CalabashTask_LevelToTask[18] = {4039,4040}
	tHarvestMonster_CalabashTask_LevelToTask[19] = {4041,4042}
	tHarvestMonster_CalabashTask_LevelToTask[20] = {4043,4044}
	tHarvestMonster_CalabashTask_LevelToTask[21] = {4045}
	tHarvestMonster_CalabashTask_LevelToTask[22] = {4046}
	tHarvestMonster_CalabashTask_LevelToTask[23] = {4047}
	tHarvestMonster_CalabashTask_LevelToTask[24] = {4048}
	tHarvestMonster_CalabashTask_LevelToTask[25] = {4049}

-- npc对应下一个传送
local tHarvestMonster_CalabashTask_NpcPosition = {}
	tHarvestMonster_CalabashTask_NpcPosition[23288] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23288]["MapId"] = 10364
	tHarvestMonster_CalabashTask_NpcPosition[23288]["NowMapId"] = 10364
	tHarvestMonster_CalabashTask_NpcPosition[23288]["PosX"] = 308
	tHarvestMonster_CalabashTask_NpcPosition[23288]["PosY"] = 337
	tHarvestMonster_CalabashTask_NpcPosition[23289] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23289]["MapId"] = 10365
	tHarvestMonster_CalabashTask_NpcPosition[23289]["NowMapId"] = 10365
	tHarvestMonster_CalabashTask_NpcPosition[23289]["PosX"] = 211
	tHarvestMonster_CalabashTask_NpcPosition[23289]["PosY"] = 312
	tHarvestMonster_CalabashTask_NpcPosition[23290] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23290]["MapId"] = 10366
	tHarvestMonster_CalabashTask_NpcPosition[23290]["NowMapId"] = 10366
	tHarvestMonster_CalabashTask_NpcPosition[23290]["PosX"] = 566
	tHarvestMonster_CalabashTask_NpcPosition[23290]["PosY"] = 620
	tHarvestMonster_CalabashTask_NpcPosition[23291] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23291]["MapId"] = 10367
	tHarvestMonster_CalabashTask_NpcPosition[23291]["NowMapId"] = 10367
	tHarvestMonster_CalabashTask_NpcPosition[23291]["PosX"] = 536
	tHarvestMonster_CalabashTask_NpcPosition[23291]["PosY"] = 643
	tHarvestMonster_CalabashTask_NpcPosition[23292] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23292]["MapId"] = 10368
	tHarvestMonster_CalabashTask_NpcPosition[23292]["NowMapId"] = 10368
	tHarvestMonster_CalabashTask_NpcPosition[23292]["PosX"] = 793
	tHarvestMonster_CalabashTask_NpcPosition[23292]["PosY"] = 566
	tHarvestMonster_CalabashTask_NpcPosition[23293] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23293]["MapId"] = 10367
	tHarvestMonster_CalabashTask_NpcPosition[23293]["NowMapId"] = 10369
	tHarvestMonster_CalabashTask_NpcPosition[23293]["PosX"] = 82
	tHarvestMonster_CalabashTask_NpcPosition[23293]["PosY"] = 316
	tHarvestMonster_CalabashTask_NpcPosition[23294] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23294]["MapId"] = 10367
	tHarvestMonster_CalabashTask_NpcPosition[23294]["NowMapId"] = 10370
	tHarvestMonster_CalabashTask_NpcPosition[23294]["PosX"] = 470
	tHarvestMonster_CalabashTask_NpcPosition[23294]["PosY"] = 643
	tHarvestMonster_CalabashTask_NpcPosition[23295] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23295]["MapId"] = 10367
	tHarvestMonster_CalabashTask_NpcPosition[23295]["NowMapId"] = 10371
	tHarvestMonster_CalabashTask_NpcPosition[23295]["PosX"] = 470
	tHarvestMonster_CalabashTask_NpcPosition[23295]["PosY"] = 643
	tHarvestMonster_CalabashTask_NpcPosition[23296] = {}
	tHarvestMonster_CalabashTask_NpcPosition[23296]["MapId"] = 10367
	tHarvestMonster_CalabashTask_NpcPosition[23296]["NowMapId"] = 10372
	tHarvestMonster_CalabashTask_NpcPosition[23296]["PosX"] = 470
	tHarvestMonster_CalabashTask_NpcPosition[23296]["PosY"] = 643
	
-- 超出等级对应的npc
local tHarvestMonster_CalabashTask_NpcToLevel = {}
	tHarvestMonster_CalabashTask_NpcToLevel[23289] = {30,49}
	tHarvestMonster_CalabashTask_NpcToLevel[23290] = {50,69}
	tHarvestMonster_CalabashTask_NpcToLevel[23291] = {70,89}
	tHarvestMonster_CalabashTask_NpcToLevel[23292] = {90,109}
	tHarvestMonster_CalabashTask_NpcToLevel[23293] = {110,129}
	tHarvestMonster_CalabashTask_NpcToLevel[23294] = {130,134}
	tHarvestMonster_CalabashTask_NpcToLevel[23295] = {135,139}
	tHarvestMonster_CalabashTask_NpcToLevel[23296] = {140,150}
	
------------------------------------------------逻辑部分
-- 获取掩码值
function HarvestMonster_CalabashTask_GetStcValue(nIndex,nUserId)
	if tHarvestMonster_CalabashTask_Stc[nIndex] == nil then
		return
	end
	
	local nEvent = tHarvestMonster_CalabashTask_Stc[nIndex]["EventType"]
	local nType = tHarvestMonster_CalabashTask_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

-- 增加掩码值
function HarvestMonster_CalabashTask_AddStcValue(nIndex,nData,nUserId)
	if tHarvestMonster_CalabashTask_Stc[nIndex] == nil then
		return
	end
	
	local nEvent = tHarvestMonster_CalabashTask_Stc[nIndex]["EventType"]
	local nType = tHarvestMonster_CalabashTask_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function HarvestMonster_CalabashTask_ClearStcInterval(nIndex,nUserId)
	if tHarvestMonster_CalabashTask_Stc[nIndex] == nil then
		return
	end
	
	local nEvent = tHarvestMonster_CalabashTask_Stc[nIndex]["EventType"]
	local nType = tHarvestMonster_CalabashTask_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 获得玩家当前接到的任务
function HarvestMonster_CalabashTask_GetTaskIndex()
	local nNowTaskId = 0
	local nMinTaskId = tHarvestMonster_CalabashTask_Count["MinTaskId"]
	local nMaxTaskId = tHarvestMonster_CalabashTask_Count["MaxTaskId"]
	for i=nMinTaskId,nMaxTaskId do
		if Task_ChkTaskDetail(i) and Task_ChkTaskDetailValue(i,"CompleteFlag","==",0) then
			nNowTaskId = i
			break
		end
	end
	
	return nNowTaskId
end

-- 获得玩家对应等级索引
function HarvestMonster_CalabashTask_GetLevelIndex()
	local nUserLevel = Get_UserLevel()
	local nLevelRewardIndex = 0
	for i,v in pairs(tHarvestMonster_CalabashTask_LevelReward) do
		if nUserLevel >= v[1] and nUserLevel <= v[2] then
			nLevelRewardIndex = i
			break
		end
	end
	
	return nLevelRewardIndex
end

-- 初始化未领取任务
function HarvestMonster_CalabashTask_InitNotHaveTask()
	local nNpcId = Get_NpcId()
	-- 当前讨伐次数
	local nFinishTime = HarvestMonster_CalabashTask_GetStcValue(nNpcId)
	local sFinishText = tHarvestMonster_CalabashTask_Text[nNpcId]["Text134"]
	tNpcGossip[nNpcId]["Text134"] = string.format(sFinishText,nFinishTime)
	
	-- 奖励显示
	local nLevelRewardIndex = HarvestMonster_CalabashTask_GetLevelIndex()
	-- 显示经验点
	local nTaskIndex = tHarvestMonster_CalabashTask_LevelToTask[nLevelRewardIndex][1]
	local nExpData = User_CalcTimeToExp(tTaskTemplate[nTaskIndex]["RewExpTime"])
	local sLevelReward = tHarvestMonster_CalabashTask_Text["LevelReward"][nLevelRewardIndex]
	local sLastReward = string.format(sLevelReward,nExpData)
	local sRewardText = tHarvestMonster_CalabashTask_Text[nNpcId]["Text136"]
	tNpcGossip[nNpcId]["Text136"] = string.format(sRewardText,sLastReward)
	-- 领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
	local nLimit = tHarvestMonster_CalabashTask_Stc[nNpcId]["Limit"]
	if nFinishTime >= nLimit then
		tNpcGossip[nNpcId]["Option131"] = ""
	else
		tNpcGossip[nNpcId]["Option131"] = tHarvestMonster_CalabashTask_Text[nNpcId]["Option131"]
	end
end

-- 初始化领取收妖葫芦
function HarvestMonster_CalabashTask_InitAcceptTask()
	local nNpcId = Get_NpcId()
	-- 当前接到任务
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	-- 任务对应怪物名称
	local nMonsterId = 0
	for a,b in pairs(tTaskTemplate[nNowTaskId]["ReqMonsterId1"]) do
		nMonsterId = b
	end
	local sMonsterName = tQuestRecruit_Text["MustName"][nMonsterId]
	local nMustKillNum =tTaskTemplate[nNowTaskId]["ReqMonsterCount1"]
	-- 怪物对应方位
	local sMonsterPostion = tHarvestMonster_CalabashTask_Text["MonsterPostion"][nMonsterId]
	local sFisrtText = tHarvestMonster_CalabashTask_Text[nNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] = string.format(sFisrtText,sMonsterName,sMonsterPostion,nMustKillNum)
	local sSecondText = tHarvestMonster_CalabashTask_Text[nNpcId]["Text212"]
	tNpcGossip[nNpcId]["Text212"] = string.format(sSecondText,sMonsterName)
	
	tNpcGossip[nNpcId]["OptionFunc211"] = "QuestRecruit_FindWay</N>"..nNowTaskId
	
end

-- npc入口
function HarvestMonster_CalabashTask_NpcMain()
	local nNpcId = Get_NpcId()
	local nMinLevel = tHarvestMonster_CalabashTask_ReLevel[nNpcId]["RevMinLevel"]
	local nMaxLevel = tHarvestMonster_CalabashTask_ReLevel[nNpcId]["RevMaxLevel"]
	local nUserLevel = Get_UserLevel()
	
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	
	-- 等级不足
	if nNowTaskId <= 0 and nUserLevel < nMinLevel then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 超过等级==闲聊对白
	if nNowTaskId <= 0 and nUserLevel > nMaxLevel then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	local bNowNpcTask = false
	for a,b in pairs(tQuestRecruit_TaskStar[nNpcId]) do
		if b == nNowTaskId then
			bNowNpcTask = true
			break
		end
	end
	-- 在别的npc身上接任务
	if nNowTaskId > 0 and not bNowNpcTask then
		-- 寻找已接任务npc
		local nNowTaskNpcId = 0
		for i,v in pairs(tHarvestMonster_CalabashTask_ReLevel) do
			for g,h in pairs(tQuestRecruit_TaskStar[i]) do
				if h == nNowTaskId then
					nNowTaskNpcId = i
					break
				end
			end
		end
		local sText = tHarvestMonster_CalabashTask_Text[nNpcId]["Text251"]
		local sOptionText = tHarvestMonster_CalabashTask_Text[nNpcId]["Option251"]
		local sNpcName = tHarvestMonster_CalabashTask_Text["NpcName"][nNowTaskNpcId]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,sNpcName)
		tNpcGossip[nNpcId]["Option251"] = string.format(sOptionText,sNpcName)
		tNpcGossip[nNpcId]["OptionFunc251"] = "HarvestMonster_CalabashTask_UserChgMap</N>"..nNpcId.."</N>"..nNowTaskNpcId
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 清楚当前的掩码
	HarvestMonster_CalabashTask_ClearStcInterval(nNpcId)
	-- 获得当前使用次数限制
	-- local nLimit = tHarvestMonster_CalabashTask_Stc[nNpcId]["Limit"]
	-- local nFinishTime = HarvestMonster_CalabashTask_GetStcValue(nNpcId)
	-- if nFinishTime >= nLimit then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end
	
	-- 接到接任务判断入口
	if nNowTaskId <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 任务未完成
	if Task_ChkTaskDetail(nNowTaskId) and Task_ChkTaskDetailValue(nNowTaskId,"CompleteFlag","==",0) then
		local nMonsterNum = Get_TaskDetailData1(nNowTaskId)
		if nMonsterNum < tTaskTemplate[nNowTaskId]["ReqMonsterCount1"] then
			LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nNowTaskId]["HasAccept"])
			--交任务函数
			return
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nNowTaskId]["SubTask"])
end

-- 等级超出对白初始化
function HarvestMonster_CalabashTask_InitOutLevel()
	local nNpcId = Get_NpcId()
	-- 判断玩家当前等级
	local nUserLevel = Get_UserLevel()
	local nNextNpcId = 0
	for i,v in pairs(tHarvestMonster_CalabashTask_NpcToLevel) do
		if nUserLevel >= v[1] and nUserLevel <= v[2] then
			nNextNpcId = i
			break
		end
	end
	-- 初始化对白和选项
	tNpcGossip[nNpcId]["Text115"] = tHarvestMonster_CalabashTask_Text[nNextNpcId-1]["Text115"]
	tNpcGossip[nNpcId]["Text116"] = tHarvestMonster_CalabashTask_Text[nNextNpcId-1]["Text116"]
	tNpcGossip[nNpcId]["Option111"] = tHarvestMonster_CalabashTask_Text[nNextNpcId-1]["Option111"]
	
	tNpcGossip[nNpcId]["OptionFunc111"] = "HarvestMonster_CalabashTask_UserChgMap</N>"..nNpcId.."</N>"..nNextNpcId
end

-- 切换地图
function HarvestMonster_CalabashTask_UserChgMap(nNowNpcId,nNextNpcId)
	local nNowMapId = Get_UserMapId()
	if nNowNpcId == 23288 and nNowMapId ~= 10364 then
		return
	elseif nNowMapId ~= tHarvestMonster_CalabashTask_NpcPosition[nNowNpcId]["NowMapId"] then
		return
	end

	local nMapId = tHarvestMonster_CalabashTask_NpcPosition[nNextNpcId]["MapId"]
	local nBoundX = tHarvestMonster_CalabashTask_NpcPosition[nNextNpcId]["PosX"]
	local nBoundY = tHarvestMonster_CalabashTask_NpcPosition[nNextNpcId]["PosY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
end

-- 领取收妖葫芦
function HarvestMonster_CalabashTask_GetCalabash(nNpcId)
	-- 清楚当前的掩码
	HarvestMonster_CalabashTask_ClearStcInterval(nNpcId)
	-- 获得当前使用次数限制
	local nLimit = tHarvestMonster_CalabashTask_Stc[nNpcId]["Limit"]
	local nFinishTime = HarvestMonster_CalabashTask_GetStcValue(nNpcId)
	if nFinishTime >= nLimit then
		return
	end
	
	-- 随机接取任务id
	local nLevelRewardIndex = HarvestMonster_CalabashTask_GetLevelIndex()
	local tTask = tHarvestMonster_CalabashTask_LevelToTask[nLevelRewardIndex]
	local nTaskNum = #tTask
	local nRandom = math.random(1,nTaskNum)
	local nTaskId = tTask[nRandom]
	
	if Task_ChkTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_DelTaskDetail(nTaskId)
	end
	
	-- 是否接到任务
	Task_IsCreatByNpc(nTaskId,nNpcId,1)
	
	-- 弹出对白后再寻路
	-- local sIndex = tTaskTemplate[nTaskId]["ReqTaskItem"]
	-- LinkNpcGossipFunc_New(nNpcId,sIndex)
end

-- 我要放弃讨伐任务
function HarvestMonster_CalabashTask_DelTask()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	if nNowTaskId <= 0 then
		return
	end
	
	if Task_ChkTaskDetail(nNowTaskId) then
		Task_DelTaskDetail(nNowTaskId)
	end
	
	-- 删除葫芦
	local sDelLog = tHarvestMonster_CalabashTask_Log["DelLog"]
	local nItemId = tHarvestMonster_CalabashTask_Count["CalabashId"]
	if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		Sys_SaveActionRewardLog(string.format(sDelLog,nNowTaskId))
	end
	
	User_TalkChannel2005(tHarvestMonster_CalabashTask_Text["SureDel"])
end

-- 重领任务清除进度（暂不要）
function HarvestMonster_CalabashTask_ClearTask()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	-- 无任务
	if nNowTaskId <= 0 then
		return
	end
	local nData = Get_TaskDetailData1(nNowTaskId)
	Task_SetTaskDetailData1(nNowTaskId,0)
	local sLog = tHarvestMonster_CalabashTask_Log["RevLog"]
	Sys_SaveActionRewardLog(string.format(sLog,nNowTaskId,nData),nNowUserId)
end

-- 收妖葫芦使用
function HarvestMonster_CalabashTask_UseItem(nItemId)
	-- 当前接到任务
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	-- 无任务
	if nNowTaskId <= 0 then
		return
	end
	
	local nMustKillNum =tTaskTemplate[nNowTaskId]["ReqMonsterCount1"]
	local nHaveKillNum = Get_TaskDetailData1(nNowTaskId)
	-- 任务对应npc
	local nNpcId = tTaskTemplate[nNowTaskId]["Mid"]["NpcId"]
	local sNpcName = tHarvestMonster_CalabashTask_Text["NpcName"][nNpcId] 
	-- 完成任务领取
	if nHaveKillNum >= nMustKillNum then
		local sFinishTip = tHarvestMonster_CalabashTask_Text[nItemId]["FinishTip"]
		local sFunc = "NpcPosition_PathFind</N>" .. nNpcId
		Sys_MsgBox(string.format(sFinishTip,sNpcName),sFunc)
		return
	end
	-- 未完成
	local nMonsterId = 0
	for a,b in pairs(tTaskTemplate[nNowTaskId]["ReqMonsterId1"]) do
		nMonsterId = b
	end
	local sMonsterName = tQuestRecruit_Text["MustName"][nMonsterId]
	local sTip = tHarvestMonster_CalabashTask_Text[nItemId]["Tip"]
	local nNeedKillNum = nMustKillNum - nHaveKillNum
	Sys_MsgBox(string.format(sTip,nHaveKillNum,sMonsterName,nNeedKillNum,sMonsterName))
end

-- 每日0点清除动态码
function HarvestMonster_CalabashTask_ClearGlobal()
	-- 判断赠品服务器
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	
	local nGlobalId = tHarvestMonster_CalabashTask_Count["GlobalId"] 
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	if Sys_ChkDayTime(tHarvestMonster_CalabashTask_Count["ClearTime"]) then
		if not (sDataStr5 == "1") then
				Sys_ResetAllSynaGlobalData(nGlobalId)
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
		end
	else
		if sDataStr5 == "1" then
			Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
		end
	end
end
------------------------------------------------NPC模块
tNpcFace[1439] = 75
tNpcFace[1440] = 77
tNpcFace[1441] = 85
tNpcFace[1442] = 94
tNpcFace[1443] = 47
tNpcFace[1444] = 107
tNpcFace[1445] = 46
tNpcFace[1446] = 20
tNpcFace[1447] = 19
-- 23288,'双龙城总兵'
tNpcGossip[23288] = tNpcGossip[23288] or DefaultNpc:new{}
tNpcGossip[23288]["OptionHidden"] = 1
tNpcGossip[23288]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23288]
-- 等级超出（闲聊对白）
tNpcGossip[23288]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23288]["tOption1-1"] = {111,112}
tNpcGossip[23288]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23288]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23288]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23288]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23288]["tOption1-3"] = {131,132}
tNpcGossip[23288]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23288]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23288"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23288]["Text1-4"] = {111,112,113,141}
tNpcGossip[23288]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23288]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23288]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23288]["Text1-5"] = {111,112,113,151}
tNpcGossip[23288]["tOption1-5"] = {151}
tNpcGossip[23288]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23288]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23288]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23288]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23288"
-- 2、算了

-- 领取收妖葫芦
tNpcGossip[23288]["Text2-1"] = {211,212,213}
tNpcGossip[23288]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23288]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 让它们尝尝我的厉害
-- 我要放弃讨伐任务
tNpcGossip[23288]["Text2-2"] = {221}
tNpcGossip[23288]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23288]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23288"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23288]["Text2-3"] = {231}
tNpcGossip[23288]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23288]["Text2-4"] = {241}
tNpcGossip[23288]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23288]["Text2-5"] = {251}
tNpcGossip[23288]["tOption2-5"] = {251}

-- 23289,'鸣凤堡总兵'
tNpcGossip[23289] = tNpcGossip[23289] or DefaultNpc:new{}
tNpcGossip[23289]["OptionHidden"] = 1
tNpcGossip[23289]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23289]
-- 等级超出（闲聊对白）
tNpcGossip[23289]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23289]["tOption1-1"] ={111,112}
tNpcGossip[23289]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23289]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23289]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23289]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23289]["tOption1-3"] = {131,132}
tNpcGossip[23289]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23289]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23289"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23289]["Text1-4"] = {111,112,113,141}
tNpcGossip[23289]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23289]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23289]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23289]["Text1-5"] = {111,112,113,151}
tNpcGossip[23289]["tOption1-5"] = {151}
tNpcGossip[23289]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23289]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23289]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23289]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23289"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23289]["Text2-1"] = {211,212,213}
tNpcGossip[23289]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23289]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23289]["Text2-2"] = {221}
tNpcGossip[23289]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23289]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23289"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23289]["Text2-3"] = {231}
tNpcGossip[23289]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23289]["Text2-4"] = {241}
tNpcGossip[23289]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23289]["Text2-5"] = {251}
tNpcGossip[23289]["tOption2-5"] = {251}

-- 23290,'黑虎城总兵'
tNpcGossip[23290] = tNpcGossip[23290] or DefaultNpc:new{}
tNpcGossip[23290]["OptionHidden"] = 1
tNpcGossip[23290]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23290]
-- 等级超出（闲聊对白）
tNpcGossip[23290]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23290]["tOption1-1"] ={111,112}
tNpcGossip[23290]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23290]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23290]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23290]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23290]["tOption1-3"] = {131,132}
tNpcGossip[23290]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23290]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23290"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23290]["Text1-4"] = {111,112,113,141}
tNpcGossip[23290]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23290]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23290]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23290]["Text1-5"] = {111,112,113,151}
tNpcGossip[23290]["tOption1-5"] = {151}
tNpcGossip[23290]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23290]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23290]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23290]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23290"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23290]["Text2-1"] = {211,212,213}
tNpcGossip[23290]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23290]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23290]["Text2-2"] = {221}
tNpcGossip[23290]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23290]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23290"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23290]["Text2-3"] = {231}
tNpcGossip[23290]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23290]["Text2-4"] = {241}
tNpcGossip[23290]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23290]["Text2-5"] = {251}
tNpcGossip[23290]["tOption2-5"] = {251}

-- 23291,'云门关总兵'
tNpcGossip[23291] = tNpcGossip[23291] or DefaultNpc:new{}
tNpcGossip[23291]["OptionHidden"] = 1
tNpcGossip[23291]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23291]
-- 等级超出（闲聊对白）
tNpcGossip[23291]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23291]["tOption1-1"] ={111,112}
tNpcGossip[23291]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23291]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23291]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23291]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23291]["tOption1-3"] = {131,132}
tNpcGossip[23291]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23291]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23291"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23291]["Text1-4"] = {111,112,113,141}
tNpcGossip[23291]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23291]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23291]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23291]["Text1-5"] = {111,112,113,151}
tNpcGossip[23291]["tOption1-5"] = {151}
tNpcGossip[23291]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23291]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23291]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23291]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23291"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23291]["Text2-1"] = {211,212,213}
tNpcGossip[23291]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23291]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23291]["Text2-2"] = {221}
tNpcGossip[23291]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23291]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23291"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23291]["Text2-3"] = {231}
tNpcGossip[23291]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23291]["Text2-4"] = {241}
tNpcGossip[23291]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23291]["Text2-5"] = {251}
tNpcGossip[23291]["tOption2-5"] = {251}

-- 23292,'白鹭城总兵'
tNpcGossip[23292] = tNpcGossip[23292] or DefaultNpc:new{}
tNpcGossip[23292]["OptionHidden"] = 1
tNpcGossip[23292]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23292]
-- 等级超出（闲聊对白）
tNpcGossip[23292]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23292]["tOption1-1"] ={111,112}
tNpcGossip[23292]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23292]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23292]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23292]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23292]["tOption1-3"] = {131,132}
tNpcGossip[23292]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23292]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23292"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23292]["Text1-4"] = {111,112,113,141}
tNpcGossip[23292]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23292]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23292]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23292]["Text1-5"] = {111,112,113,151}
tNpcGossip[23292]["tOption1-5"] = {151}
tNpcGossip[23292]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23292]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23292]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23292]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23292"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23292]["Text2-1"] = {211,212,213}
tNpcGossip[23292]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23292]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23292]["Text2-2"] = {221}
tNpcGossip[23292]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23292]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23292"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23292]["Text2-3"] = {231}
tNpcGossip[23292]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23292]["Text2-4"] = {241}
tNpcGossip[23292]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23292]["Text2-5"] = {251}
tNpcGossip[23292]["tOption2-5"] = {251}
-- 23293,'敦煌副总兵'
tNpcGossip[23293] = tNpcGossip[23293] or DefaultNpc:new{}
tNpcGossip[23293]["OptionHidden"] = 1
tNpcGossip[23293]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23293]
-- 等级超出（闲聊对白）
tNpcGossip[23293]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23293]["tOption1-1"] ={111,112}
tNpcGossip[23293]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23293]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23293]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23293]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23293]["tOption1-3"] = {131,132}
tNpcGossip[23293]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23293]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23293"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23293]["Text1-4"] = {111,112,113,141}
tNpcGossip[23293]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23293]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23293]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23293]["Text1-5"] = {111,112,113,151}
tNpcGossip[23293]["tOption1-5"] = {151}
tNpcGossip[23293]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23293]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23293]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23293]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23293"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23293]["Text2-1"] = {211,212,213}
tNpcGossip[23293]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23293]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23293]["Text2-2"] = {221}
tNpcGossip[23293]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23293]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23293"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23293]["Text2-3"] = {231}
tNpcGossip[23293]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23293]["Text2-4"] = {241}
tNpcGossip[23293]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23293]["Text2-5"] = {251}
tNpcGossip[23293]["tOption2-5"] = {251}
-- 23294,'地穴一层总兵'
tNpcGossip[23294] = tNpcGossip[23294] or DefaultNpc:new{}
tNpcGossip[23294]["OptionHidden"] = 1
tNpcGossip[23294]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23294]
-- 等级超出（闲聊对白）
tNpcGossip[23294]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23294]["tOption1-1"] ={111,112}
tNpcGossip[23294]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23294]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23294]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23294]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23294]["tOption1-3"] = {131,132}
tNpcGossip[23294]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23294]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23294"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23294]["Text1-4"] = {111,112,113,141}
tNpcGossip[23294]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23294]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23294]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23294]["Text1-5"] = {111,112,113,151}
tNpcGossip[23294]["tOption1-5"] = {151}
tNpcGossip[23294]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23294]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23294]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23294]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23294"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23294]["Text2-1"] = {211,212,213}
tNpcGossip[23294]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23294]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23294]["Text2-2"] = {221}
tNpcGossip[23294]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23294]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23294"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23294]["Text2-3"] = {231}
tNpcGossip[23294]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23294]["Text2-4"] = {241}
tNpcGossip[23294]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23294]["Text2-5"] = {251}
tNpcGossip[23294]["tOption2-5"] = {251}
-- 23295,'地穴二层总兵'
tNpcGossip[23295] = tNpcGossip[23295] or DefaultNpc:new{}
tNpcGossip[23295]["OptionHidden"] = 1
tNpcGossip[23295]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23295]
-- 等级超出（闲聊对白）
tNpcGossip[23295]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23295]["tOption1-1"] ={111,112}
tNpcGossip[23295]["ChkFunc1-1"] = function ()
	HarvestMonster_CalabashTask_InitOutLevel()
	return true
end
-- 等级未达到
tNpcGossip[23295]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23295]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23295]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23295]["tOption1-3"] = {131,132}
tNpcGossip[23295]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23295]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23295"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23295]["Text1-4"] = {111,112,113,141}
tNpcGossip[23295]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23295]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23295]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23295]["Text1-5"] = {111,112,113,151}
tNpcGossip[23295]["tOption1-5"] = {151}
tNpcGossip[23295]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23295]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23295]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23295]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23295"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23295]["Text2-1"] = {211,212,213}
tNpcGossip[23295]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23295]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23295]["Text2-2"] = {221}
tNpcGossip[23295]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23295]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23295"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23295]["Text2-3"] = {231}
tNpcGossip[23295]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23295]["Text2-4"] = {241}
tNpcGossip[23295]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23295]["Text2-5"] = {251}
tNpcGossip[23295]["tOption2-5"] = {251}
-- 23296,'地穴三层总兵'
tNpcGossip[23296] = tNpcGossip[23296] or DefaultNpc:new{}
tNpcGossip[23296]["OptionHidden"] = 1
tNpcGossip[23296]["DialogueText"] = tHarvestMonster_CalabashTask_Text[23296]
-- 等级超出（闲聊对白）
tNpcGossip[23296]["Text1-1"] = {111,112,113,114}
tNpcGossip[23296]["tOption1-1"] ={111}
-- 等级未达到
tNpcGossip[23296]["Text1-2"] = {111,112,113,121,122,123,124}
tNpcGossip[23296]["tOption1-2"] = {121}
-- 等级达到 
-- 未领取任务
tNpcGossip[23296]["Text1-3"] = {111,112,113,131,132,133,134,135,136}
tNpcGossip[23296]["tOption1-3"] = {131,132}
tNpcGossip[23296]["ChkFunc1-3"] = function ()
	HarvestMonster_CalabashTask_InitNotHaveTask()
	return true
end
-- 1、领取收妖葫芦 ===（讨伐次数达到上限则屏蔽此选项）
tNpcGossip[23296]["OptionFunc131"] = "HarvestMonster_CalabashTask_GetCalabash</N>23296"
-- 2、告辞
-- 已领取任务，未完成
tNpcGossip[23296]["Text1-4"] = {111,112,113,141}
tNpcGossip[23296]["tOption1-4"] = {141,142}
-- 再和我聊聊这些妖匪的事
tNpcGossip[23296]["OptionPoint141"] = "2-1"
-- 我要放弃讨伐任务
tNpcGossip[23296]["OptionPoint142"] = "2-2"
-- 完成任务
tNpcGossip[23296]["Text1-5"] = {111,112,113,151}
tNpcGossip[23296]["tOption1-5"] = {151}
tNpcGossip[23296]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	local nNowTaskId = HarvestMonster_CalabashTask_GetTaskIndex()
	tNpcGossip[nNpcId]["OptionFunc151"] = "Task_IsHandOverByNpc</N>"..nNowTaskId.."</N>"..nNpcId.."</N>1"
	return true
end
-- 已领取过，但身上没有收妖葫芦
tNpcGossip[23296]["Text1-6"] = {111,112,113,161,162}
tNpcGossip[23296]["tOption1-6"] = {161,162}
-- 1、补领收妖葫芦
tNpcGossip[23296]["OptionFunc161"] = "QuestRecruit_ReqTaskItem</N>4014</N>23296"
-- 2、算了
-- 领取收妖葫芦
tNpcGossip[23296]["Text2-1"] = {211,212,213}
tNpcGossip[23296]["tOption2-1"] = {211}
-- 再和我聊聊这些妖匪的事 等同于1-7
tNpcGossip[23296]["ChkFunc2-1"] = function ()
	HarvestMonster_CalabashTask_InitAcceptTask()
	return true
end
-- 我要放弃讨伐任务
tNpcGossip[23296]["Text2-2"] = {221}
tNpcGossip[23296]["tOption2-2"] = {221,222}
-- 2-1、确定放弃
tNpcGossip[23296]["OptionFunc221"] = "HarvestMonster_CalabashTask_DelTask</N>23296"
-- 2-2、说笑罢了
-- 领取奖励背包空间不足
tNpcGossip[23296]["Text2-3"] = {231}
tNpcGossip[23296]["tOption2-3"] = {231}
-- 接任务背包空间不足
tNpcGossip[23296]["Text2-4"] = {241}
tNpcGossip[23296]["tOption2-4"] = {241}
-- 接到其他任务
tNpcGossip[23296]["Text2-5"] = {251}
tNpcGossip[23296]["tOption2-5"] = {251}

------------------------------------------------物品模块
-- 3311061,'收妖葫芦'
tItem[3311061] = tItem[3311061] or {}
tItem[3311061]["Function"] = function(nItemId,sItemName)
	HarvestMonster_CalabashTask_UseItem(nItemId)
end

--------------------------------------------------时间自检
-- 每日0点清除动态码
local tHarvestMonster_CalabashTask_Clear = {}
	tHarvestMonster_CalabashTask_Clear[1] = {}
	tHarvestMonster_CalabashTask_Clear[1]["Type"] = 1
	tHarvestMonster_CalabashTask_Clear[1]["TimeType"] = 4
	tHarvestMonster_CalabashTask_Clear[1]["Multiple"] = {}
	tHarvestMonster_CalabashTask_Clear[1]["Multiple"][1] = "00:00 00:05"
	tHarvestMonster_CalabashTask_Clear[1]["Func"] = HarvestMonster_CalabashTask_ClearGlobal
table.insert(tSystemTime_InitialData,tHarvestMonster_CalabashTask_Clear[1])

