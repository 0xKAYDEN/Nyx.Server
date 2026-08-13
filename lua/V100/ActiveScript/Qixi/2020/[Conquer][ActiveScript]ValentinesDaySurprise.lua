------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
--Creator:      冯子鑫
--Created:     2020-06-09
------------------------------------------------------------------------------------
--任务需求：





--前缀 ValentinesDaySurprise_
-- logid:12002030

-- 41887 = V100\ActiveScript\qixi\2020\[Conquer][ActiveScript]ValentinesDaySurprise.lua
-- 41887 = V100\活动脚本\七夕\2020\[征服][活动脚本]全球七夕花魁活动-惊喜事件.lua


-- #stc 掩码说明 
-- #stc(224,68) 记录背包信
-- #stc(224,69) 记录喜鹊妈妈每日任务是否完成
-- #stc(224,70) 记录喜鹊妈妈每日任务采集的喜鹊蛋数量
-- #stc(224,71) 记录喜鹊爸爸每日任务是否完成
-- #stc(224,72) 记录喜鹊爸爸每日任务中 5万银两的掩码 0为错误答案，1为已经被玩家选择了之后删除选项，2为正确答案
-- #stc(224,73) 记录喜鹊爸爸每日任务中 100修为值的掩码 0为错误答案，1为已经被玩家选择了之后删除选项，2为正确答案
-- #stc(224,74) 记录喜鹊爸爸每日任务中 27天石（赠）的掩码 0为错误答案，1为已经被玩家选择了之后删除选项，2为正确答案
-- #stc(224,88) 记录正气令获得揽鹊枝
-- #stc(224,89) 记录每日签到礼包获得揽鹊枝
-- #stc(224,90) 记录显著功勋礼包获得揽鹊枝
-- #stc(224,91) 记录打怪获得揽鹊枝
-- #stc(224,92) 记录喜鹊的赠礼礼包每日开启限量
-- #stc(225,74) 记录击杀魔鸠宝宝掉落揽鹊枝限量




----------------------------------表配置部分--------------------------------------------
local tValentinesDaySurprise_Stc = {}	
	-- 记录背包信
	tValentinesDaySurprise_Stc[1] = {}
	tValentinesDaySurprise_Stc[1]["EventType"] = 224
	tValentinesDaySurprise_Stc[1]["TypeData"] = 68
	
	-- 记录喜鹊妈妈每日任务是否完成
	tValentinesDaySurprise_Stc[2] = {}
	tValentinesDaySurprise_Stc[2]["EventType"] = 224
	tValentinesDaySurprise_Stc[2]["TypeData"] = 69
	
	-- 记录喜鹊妈妈每日任务采集的喜鹊蛋数量
	tValentinesDaySurprise_Stc[3] = {}
	tValentinesDaySurprise_Stc[3]["EventType"] = 224
	tValentinesDaySurprise_Stc[3]["TypeData"] = 70
	
	-- 记录喜鹊爸爸每日任务是否完成
	tValentinesDaySurprise_Stc[4] = {}
	tValentinesDaySurprise_Stc[4]["EventType"] = 224
	tValentinesDaySurprise_Stc[4]["TypeData"] = 71
	
	-- 记录喜鹊爸爸每日任务中 5万银两的掩码 0为错误答案，1为已经被玩家选择了之后删除选项，2为正确答案
	tValentinesDaySurprise_Stc[5] = {}
	tValentinesDaySurprise_Stc[5]["EventType"] = 224
	tValentinesDaySurprise_Stc[5]["TypeData"] = 72
	
	-- 记录喜鹊爸爸每日任务中 100修为值的掩码 0为错误答案，1为已经被玩家选择了之后删除选项，2为正确答案
	tValentinesDaySurprise_Stc[6] = {}
	tValentinesDaySurprise_Stc[6]["EventType"] = 224
	tValentinesDaySurprise_Stc[6]["TypeData"] = 73
	
	-- 记录喜鹊爸爸每日任务中 27天石（赠）的掩码 0为错误答案，1为已经被玩家选择了之后删除选项，2为正确答案
	tValentinesDaySurprise_Stc[7] = {}
	tValentinesDaySurprise_Stc[7]["EventType"] = 224
	tValentinesDaySurprise_Stc[7]["TypeData"] = 74
	
	-- 记录正气令获得揽鹊枝
	tValentinesDaySurprise_Stc[8] = {}
	tValentinesDaySurprise_Stc[8]["EventType"] = 224
	tValentinesDaySurprise_Stc[8]["TypeData"] = 88
	
	-- 记录每日签到礼包获得揽鹊枝
	tValentinesDaySurprise_Stc[9] = {}
	tValentinesDaySurprise_Stc[9]["EventType"] = 224
	tValentinesDaySurprise_Stc[9]["TypeData"] = 89
	
	-- 记录显著功勋礼包获得揽鹊枝
	tValentinesDaySurprise_Stc[10] = {}
	tValentinesDaySurprise_Stc[10]["EventType"] = 224
	tValentinesDaySurprise_Stc[10]["TypeData"] = 90
	
	-- 记录打怪获得揽鹊枝
	tValentinesDaySurprise_Stc[11] = {}
	tValentinesDaySurprise_Stc[11]["EventType"] = 224
	tValentinesDaySurprise_Stc[11]["TypeData"] = 91
	
	-- 记录喜鹊的赠礼礼包每日开启限量
	tValentinesDaySurprise_Stc[12] = {}
	tValentinesDaySurprise_Stc[12]["EventType"] = 224
	tValentinesDaySurprise_Stc[12]["TypeData"] = 92
	
	-- 记录击杀魔鸠宝宝掉落揽鹊枝限量
	tValentinesDaySurprise_Stc[13] = {}
	tValentinesDaySurprise_Stc[13]["EventType"] = 225
	tValentinesDaySurprise_Stc[13]["TypeData"] = 74
	tValentinesDaySurprise_Stc[13]["Limit"] = 3
	
--log表
local tValentinesDaySurprise_Log = {}
	--喜鹊爸爸任务消耗天石（赠）
	tValentinesDaySurprise_Log["DadTask"] = "1000 01977"
	--过期
	tValentinesDaySurprise_Log["OverTime"] = "0,0,%d,%d,12002030,3[6],0,0"
	
	
local tValentinesDaySurprise_Cont = {}
	--刷新NPC的信息
	tValentinesDaySurprise_Cont["Npc"] = {}
	--刷新喜鹊的概率
	tValentinesDaySurprise_Cont["Npc"]["Begin"] = 1
	tValentinesDaySurprise_Cont["Npc"]["End"] = 100
	--任务面板
	tValentinesDaySurprise_Cont["TaskId"] = 4501
	--喜鹊妈妈任务面板
	tValentinesDaySurprise_Cont["XiQueTaskId"] = 4502
	--等级限制
	tValentinesDaySurprise_Cont["Level"] = 80 
	tValentinesDaySurprise_Cont["Metempsychosis"] = 0
	--二转等级限制
	tValentinesDaySurprise_Cont["Level2"] = 0 
	tValentinesDaySurprise_Cont["Metempsychosis2"] = 2
	--怪物掉落不同鹊桥等级限制
	tValentinesDaySurprise_Cont["Monster"] = {}
	tValentinesDaySurprise_Cont["Monster"][0] = 10
	tValentinesDaySurprise_Cont["Monster"][1] = 15
	tValentinesDaySurprise_Cont["Monster"][2] = 20
	tValentinesDaySurprise_Cont["Monster"][3] = 25
	tValentinesDaySurprise_Cont["Monster"][4] = 30
	tValentinesDaySurprise_Cont["Monster"]["Begin"] = 3
	tValentinesDaySurprise_Cont["Monster"]["End"] = 100
	
	tValentinesDaySurprise_Cont["CollectMonster"] = {}
	tValentinesDaySurprise_Cont["CollectMonster"]["Begin"] = 30
	tValentinesDaySurprise_Cont["CollectMonster"]["End"] = 100
	tValentinesDaySurprise_Cont["CollectMonster"]["MonsterId"] = 6545
	--灵鹊赠礼包开启限制
	tValentinesDaySurprise_Cont["ItemLimit"] = 5
	-- 互动光效 
	tValentinesDaySurprise_Cont["TaskEffect"] = "zf2-e128"
	-- 完成喜鹊爸爸任务时播放的光效
	tValentinesDaySurprise_Cont["Effect"] = {}
	tValentinesDaySurprise_Cont["Effect"]["Success"] = "zf2-e128"
	tValentinesDaySurprise_Cont["Effect"]["Failure"] = "BodyDisapear"
	-- 活动地图1
	tValentinesDaySurprise_Cont["Npc"][10911] = {}
	--喜鹊妈妈
	tValentinesDaySurprise_Cont["Npc"][10911][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][1][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][1][1]["Id"] = 26746
	tValentinesDaySurprise_Cont["Npc"][10911][1][1]["GlobalId"] = 54690
	tValentinesDaySurprise_Cont["Npc"][10911][1][1]["ExistPos"] = 0
	
	tValentinesDaySurprise_Cont["Npc"][10911][1][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][1][2]["Id"] = 26747
	tValentinesDaySurprise_Cont["Npc"][10911][1][2]["GlobalId"] = 54690
	tValentinesDaySurprise_Cont["Npc"][10911][1][2]["ExistPos"] = 1
	
	tValentinesDaySurprise_Cont["Npc"][10911][1][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][1][3]["Id"] = 26748
	tValentinesDaySurprise_Cont["Npc"][10911][1][3]["GlobalId"] = 54690
	tValentinesDaySurprise_Cont["Npc"][10911][1][3]["ExistPos"] = 2
	
	--喜鹊爸爸
	tValentinesDaySurprise_Cont["Npc"][10911][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][2][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][2][1]["Id"] = 26749
	tValentinesDaySurprise_Cont["Npc"][10911][2][1]["GlobalId"] = 54690
	tValentinesDaySurprise_Cont["Npc"][10911][2][1]["ExistPos"] = 3
	
	tValentinesDaySurprise_Cont["Npc"][10911][2][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][2][2]["Id"] = 26750
	tValentinesDaySurprise_Cont["Npc"][10911][2][2]["GlobalId"] = 54690
	tValentinesDaySurprise_Cont["Npc"][10911][2][2]["ExistPos"] = 4
	
	tValentinesDaySurprise_Cont["Npc"][10911][2][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10911][2][3]["Id"] = 26751
	tValentinesDaySurprise_Cont["Npc"][10911][2][3]["GlobalId"] = 54690
	tValentinesDaySurprise_Cont["Npc"][10911][2][3]["ExistPos"] = 5
	
	-- 活动地图2
	tValentinesDaySurprise_Cont["Npc"][10912] = {}
	--喜鹊妈妈
	tValentinesDaySurprise_Cont["Npc"][10912][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][1][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][1][1]["Id"] = 26810
	tValentinesDaySurprise_Cont["Npc"][10912][1][1]["GlobalId"] = 54691
	tValentinesDaySurprise_Cont["Npc"][10912][1][1]["ExistPos"] = 0
	
	tValentinesDaySurprise_Cont["Npc"][10912][1][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][1][2]["Id"] = 26811
	tValentinesDaySurprise_Cont["Npc"][10912][1][2]["GlobalId"] = 54691
	tValentinesDaySurprise_Cont["Npc"][10912][1][2]["ExistPos"] = 1
	
	tValentinesDaySurprise_Cont["Npc"][10912][1][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][1][3]["Id"] = 26812
	tValentinesDaySurprise_Cont["Npc"][10912][1][3]["GlobalId"] = 54691
	tValentinesDaySurprise_Cont["Npc"][10912][1][3]["ExistPos"] = 2
	
	--喜鹊爸爸
	tValentinesDaySurprise_Cont["Npc"][10912][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][2][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][2][1]["Id"] = 26813
	tValentinesDaySurprise_Cont["Npc"][10912][2][1]["GlobalId"] = 54691
	tValentinesDaySurprise_Cont["Npc"][10912][2][1]["ExistPos"] = 3
	
	tValentinesDaySurprise_Cont["Npc"][10912][2][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][2][2]["Id"] = 26814
	tValentinesDaySurprise_Cont["Npc"][10912][2][2]["GlobalId"] = 54691
	tValentinesDaySurprise_Cont["Npc"][10912][2][2]["ExistPos"] = 4
	
	tValentinesDaySurprise_Cont["Npc"][10912][2][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10912][2][3]["Id"] = 26815
	tValentinesDaySurprise_Cont["Npc"][10912][2][3]["GlobalId"] = 54691
	tValentinesDaySurprise_Cont["Npc"][10912][2][3]["ExistPos"] = 5
	
	-- 活动地图3
	tValentinesDaySurprise_Cont["Npc"][10913] = {}
	--喜鹊妈妈
	tValentinesDaySurprise_Cont["Npc"][10913][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][1][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][1][1]["Id"] = 26816
	tValentinesDaySurprise_Cont["Npc"][10913][1][1]["GlobalId"] = 54692
	tValentinesDaySurprise_Cont["Npc"][10913][1][1]["ExistPos"] = 0
	
	tValentinesDaySurprise_Cont["Npc"][10913][1][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][1][2]["Id"] = 26817
	tValentinesDaySurprise_Cont["Npc"][10913][1][2]["GlobalId"] = 54692
	tValentinesDaySurprise_Cont["Npc"][10913][1][2]["ExistPos"] = 1
	
	tValentinesDaySurprise_Cont["Npc"][10913][1][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][1][3]["Id"] = 26818
	tValentinesDaySurprise_Cont["Npc"][10913][1][3]["GlobalId"] = 54692
	tValentinesDaySurprise_Cont["Npc"][10913][1][3]["ExistPos"] = 2
	
	--喜鹊爸爸
	tValentinesDaySurprise_Cont["Npc"][10913][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][2][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][2][1]["Id"] = 26819
	tValentinesDaySurprise_Cont["Npc"][10913][2][1]["GlobalId"] = 54692
	tValentinesDaySurprise_Cont["Npc"][10913][2][1]["ExistPos"] = 3
	
	tValentinesDaySurprise_Cont["Npc"][10913][2][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][2][2]["Id"] = 26820
	tValentinesDaySurprise_Cont["Npc"][10913][2][2]["GlobalId"] = 54692
	tValentinesDaySurprise_Cont["Npc"][10913][2][2]["ExistPos"] = 4
	
	tValentinesDaySurprise_Cont["Npc"][10913][2][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10913][2][3]["Id"] = 26821
	tValentinesDaySurprise_Cont["Npc"][10913][2][3]["GlobalId"] = 54692
	tValentinesDaySurprise_Cont["Npc"][10913][2][3]["ExistPos"] = 5
	
	-- 活动地图4
	tValentinesDaySurprise_Cont["Npc"][10914] = {}
	--喜鹊妈妈
	tValentinesDaySurprise_Cont["Npc"][10914][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][1][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][1][1]["Id"] = 26822
	tValentinesDaySurprise_Cont["Npc"][10914][1][1]["GlobalId"] = 54694
	tValentinesDaySurprise_Cont["Npc"][10914][1][1]["ExistPos"] = 0
	
	tValentinesDaySurprise_Cont["Npc"][10914][1][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][1][2]["Id"] = 26823
	tValentinesDaySurprise_Cont["Npc"][10914][1][2]["GlobalId"] = 54694
	tValentinesDaySurprise_Cont["Npc"][10914][1][2]["ExistPos"] = 1
	
	tValentinesDaySurprise_Cont["Npc"][10914][1][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][1][3]["Id"] = 26824
	tValentinesDaySurprise_Cont["Npc"][10914][1][3]["GlobalId"] = 54694
	tValentinesDaySurprise_Cont["Npc"][10914][1][3]["ExistPos"] = 2
	
	--喜鹊爸爸
	tValentinesDaySurprise_Cont["Npc"][10914][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][2][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][2][1]["Id"] = 26825
	tValentinesDaySurprise_Cont["Npc"][10914][2][1]["GlobalId"] = 54694
	tValentinesDaySurprise_Cont["Npc"][10914][2][1]["ExistPos"] = 3
	
	tValentinesDaySurprise_Cont["Npc"][10914][2][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][2][2]["Id"] = 26826
	tValentinesDaySurprise_Cont["Npc"][10914][2][2]["GlobalId"] = 54694
	tValentinesDaySurprise_Cont["Npc"][10914][2][2]["ExistPos"] = 4
	
	tValentinesDaySurprise_Cont["Npc"][10914][2][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10914][2][3]["Id"] = 26827
	tValentinesDaySurprise_Cont["Npc"][10914][2][3]["GlobalId"] = 54694
	tValentinesDaySurprise_Cont["Npc"][10914][2][3]["ExistPos"] = 5
	
	-- 活动地图5
	tValentinesDaySurprise_Cont["Npc"][10915] = {}
	--喜鹊妈妈
	tValentinesDaySurprise_Cont["Npc"][10915][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][1][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][1][1]["Id"] = 26828
	tValentinesDaySurprise_Cont["Npc"][10915][1][1]["GlobalId"] = 54695
	tValentinesDaySurprise_Cont["Npc"][10915][1][1]["ExistPos"] = 0
	
	tValentinesDaySurprise_Cont["Npc"][10915][1][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][1][2]["Id"] = 26829
	tValentinesDaySurprise_Cont["Npc"][10915][1][2]["GlobalId"] = 54695
	tValentinesDaySurprise_Cont["Npc"][10915][1][2]["ExistPos"] = 1
	
	tValentinesDaySurprise_Cont["Npc"][10915][1][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][1][3]["Id"] = 26830
	tValentinesDaySurprise_Cont["Npc"][10915][1][3]["GlobalId"] = 54695
	tValentinesDaySurprise_Cont["Npc"][10915][1][3]["ExistPos"] = 2
	
	--喜鹊爸爸
	tValentinesDaySurprise_Cont["Npc"][10915][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][2][1] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][2][1]["Id"] = 26831
	tValentinesDaySurprise_Cont["Npc"][10915][2][1]["GlobalId"] = 54695
	tValentinesDaySurprise_Cont["Npc"][10915][2][1]["ExistPos"] = 3
	
	tValentinesDaySurprise_Cont["Npc"][10915][2][2] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][2][2]["Id"] = 26832
	tValentinesDaySurprise_Cont["Npc"][10915][2][2]["GlobalId"] = 54695
	tValentinesDaySurprise_Cont["Npc"][10915][2][2]["ExistPos"] = 4
	
	tValentinesDaySurprise_Cont["Npc"][10915][2][3] = {}
	tValentinesDaySurprise_Cont["Npc"][10915][2][3]["Id"] = 26833
	tValentinesDaySurprise_Cont["Npc"][10915][2][3]["GlobalId"] = 54695
	tValentinesDaySurprise_Cont["Npc"][10915][2][3]["ExistPos"] = 5
	
	-- 灵鹊NPC活动地图
	tValentinesDaySurprise_Cont["ActivityMapID"] = {10911,10912,10913,10914,10915}
	-- 读条
	tValentinesDaySurprise_Cont["ArticleRead"] = {}
	tValentinesDaySurprise_Cont["ArticleRead"]["Secs"] = 3
	tValentinesDaySurprise_Cont["ArticleRead"]["ExploreActionId"] = 100
	
	--招鹊盒对应怪物id
	tValentinesDaySurprise_Cont["MonsterId"] = {}
	tValentinesDaySurprise_Cont["MonsterId"][3331823] = 6531
	tValentinesDaySurprise_Cont["MonsterId"][3331824] = 6532
	tValentinesDaySurprise_Cont["MonsterId"][3331825] = 6533
	
	--灵鹊妈妈id
	tValentinesDaySurprise_Cont["MomId"] = {26746,26747,26748,26810,26811,26812,26816,26817,26818,26822,26823,26824,26828,26829,26830}
	--灵鹊爸爸id
	tValentinesDaySurprise_Cont["DadId"] = {26749,26750,26751,26813,26814,26815,26819,26820,26821,26825,26826,26827,26831,26832,26833}
	
	--灵鹊爸爸任务提交礼物的数额
	tValentinesDaySurprise_Cont["Cost"] = {}
	tValentinesDaySurprise_Cont["Cost"]["Money"] = 50000
	tValentinesDaySurprise_Cont["Cost"]["CultureValue"] = 100
	tValentinesDaySurprise_Cont["Cost"]["MonoEMoney"] = 27
	
	-- 招鹊盒使用地图限制
	tValentinesDaySurprise_Cont["MapId"] = {}
	tValentinesDaySurprise_Cont["MapId"]["Normal"] = 1002
	tValentinesDaySurprise_Cont["MapId"]["NoGift"] = 10364
	tValentinesDaySurprise_Cont["GenId"] = 25263
	
	-- 普通服双龙城内
	tValentinesDaySurprise_Cont["Map"] = {}
	tValentinesDaySurprise_Cont["Map"][1] = {}
	tValentinesDaySurprise_Cont["Map"][1]["MinCellx"] = 180
	tValentinesDaySurprise_Cont["Map"][1]["MaxCellx"] = 400
	tValentinesDaySurprise_Cont["Map"][1]["MaxCelly"] = 570
	tValentinesDaySurprise_Cont["Map"][2] = {}
	tValentinesDaySurprise_Cont["Map"][2]["MinCellx"] = 300
	tValentinesDaySurprise_Cont["Map"][2]["MaxCellx"] = 520
	tValentinesDaySurprise_Cont["Map"][2]["MaxCelly"] = 465
	-- 激情服双龙城内
	tValentinesDaySurprise_Cont["NoGiftMap"] = {}
	tValentinesDaySurprise_Cont["NoGiftMap"][1] = {}
	tValentinesDaySurprise_Cont["NoGiftMap"][1]["MinCellx"] = 247
	tValentinesDaySurprise_Cont["NoGiftMap"][1]["MaxCellx"] = 370
	tValentinesDaySurprise_Cont["NoGiftMap"][1]["MaxCelly"] = 333
	--寻路至可以使用招鹊盒的地点
	tValentinesDaySurprise_Cont["FindCanUseBox"] = {}
	tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"] = {}
	tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["MapId"] = 1002
	tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["PosX"] = 610
	tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["PosY"] = 429
	tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"] = {}
	tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"]["MapId"] = 10364
	tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"]["PosX"] = 409
	tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"]["PosY"] = 337
	
	-- 普通服卫兵附近
	tValentinesDaySurprise_Cont["Guard"] = {}
	tValentinesDaySurprise_Cont["Guard"][1] = {}
	tValentinesDaySurprise_Cont["Guard"][1]["MinCellx"] = 520
	tValentinesDaySurprise_Cont["Guard"][1]["MaxCellx"] = 551
	tValentinesDaySurprise_Cont["Guard"][1]["MinCelly"] = 296
	tValentinesDaySurprise_Cont["Guard"][1]["MaxCelly"] = 347
	tValentinesDaySurprise_Cont["Guard"][2] = {}
	tValentinesDaySurprise_Cont["Guard"][2]["MinCellx"] = 430
	tValentinesDaySurprise_Cont["Guard"][2]["MaxCellx"] = 478
	tValentinesDaySurprise_Cont["Guard"][2]["MinCelly"] = 440
	tValentinesDaySurprise_Cont["Guard"][2]["MaxCelly"] = 483
	tValentinesDaySurprise_Cont["Guard"][3] = {}
	tValentinesDaySurprise_Cont["Guard"][3]["MinCellx"] = 656
	tValentinesDaySurprise_Cont["Guard"][3]["MaxCellx"] = 703
	tValentinesDaySurprise_Cont["Guard"][3]["MinCelly"] = 304
	tValentinesDaySurprise_Cont["Guard"][3]["MaxCelly"] = 343
	tValentinesDaySurprise_Cont["Guard"][4] = {}
	tValentinesDaySurprise_Cont["Guard"][4]["MinCellx"] = 547
	tValentinesDaySurprise_Cont["Guard"][4]["MaxCellx"] = 570
	tValentinesDaySurprise_Cont["Guard"][4]["MinCelly"] = 546
	tValentinesDaySurprise_Cont["Guard"][4]["MaxCelly"] = 589
	tValentinesDaySurprise_Cont["Guard"][5] = {}
	tValentinesDaySurprise_Cont["Guard"][5]["MinCellx"] = 30
	tValentinesDaySurprise_Cont["Guard"][5]["MaxCellx"] = 62
	tValentinesDaySurprise_Cont["Guard"][5]["MinCelly"] = 527
	tValentinesDaySurprise_Cont["Guard"][5]["MaxCelly"] = 548
	tValentinesDaySurprise_Cont["Guard"][6] = {}
	tValentinesDaySurprise_Cont["Guard"][6]["MinCellx"] = 328
	tValentinesDaySurprise_Cont["Guard"][6]["MaxCellx"] = 372
	tValentinesDaySurprise_Cont["Guard"][6]["MinCelly"] = 800
	tValentinesDaySurprise_Cont["Guard"][6]["MaxCelly"] = 844
	-- 激情服卫兵附近
	tValentinesDaySurprise_Cont["NoGiftGuard"] = {}
	tValentinesDaySurprise_Cont["NoGiftGuard"][1] = {}
	tValentinesDaySurprise_Cont["NoGiftGuard"][1]["MinCellx"] = 287
	tValentinesDaySurprise_Cont["NoGiftGuard"][1]["MaxCellx"] = 330
	tValentinesDaySurprise_Cont["NoGiftGuard"][1]["MinCelly"] = 341
	tValentinesDaySurprise_Cont["NoGiftGuard"][1]["MaxCelly"] = 392
	tValentinesDaySurprise_Cont["NoGiftGuard"][2] = {}
	tValentinesDaySurprise_Cont["NoGiftGuard"][2]["MinCellx"] = 238
	tValentinesDaySurprise_Cont["NoGiftGuard"][2]["MaxCellx"] = 286
	tValentinesDaySurprise_Cont["NoGiftGuard"][2]["MinCelly"] = 341
	tValentinesDaySurprise_Cont["NoGiftGuard"][2]["MaxCelly"] = 392
	tValentinesDaySurprise_Cont["NoGiftGuard"][3] = {}
	tValentinesDaySurprise_Cont["NoGiftGuard"][3]["MinCellx"] = 312
	tValentinesDaySurprise_Cont["NoGiftGuard"][3]["MaxCellx"] = 346
	tValentinesDaySurprise_Cont["NoGiftGuard"][3]["MinCelly"] = 323
	tValentinesDaySurprise_Cont["NoGiftGuard"][3]["MaxCelly"] = 350
	tValentinesDaySurprise_Cont["NoGiftGuard"][4] = {}
	tValentinesDaySurprise_Cont["NoGiftGuard"][4]["MinCellx"] = 382
	tValentinesDaySurprise_Cont["NoGiftGuard"][4]["MaxCellx"] = 403
	tValentinesDaySurprise_Cont["NoGiftGuard"][4]["MinCelly"] = 232
	tValentinesDaySurprise_Cont["NoGiftGuard"][4]["MaxCelly"] = 288

	-- 招鹊盒
local tValentinesDaySurprise_Random = {}
	tValentinesDaySurprise_Random[1] = {}
	tValentinesDaySurprise_Random[1]["ItemChanceSum"] = 100000
	tValentinesDaySurprise_Random[1][1] = {}
	tValentinesDaySurprise_Random[1][1]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Random[1][1]["ItemChance"] = 40000
	tValentinesDaySurprise_Random[1][1]["Index"] = 1
	tValentinesDaySurprise_Random[1][2] = {}
	tValentinesDaySurprise_Random[1][2]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Random[1][2]["ItemChance"] = 10000
	tValentinesDaySurprise_Random[1][2]["Index"] = 2
	tValentinesDaySurprise_Random[1][3] = {}
	tValentinesDaySurprise_Random[1][3]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Random[1][3]["ItemChance"] = 36000
	tValentinesDaySurprise_Random[1][3]["Index"] = 3
	tValentinesDaySurprise_Random[1][4] = {}
	tValentinesDaySurprise_Random[1][4]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Random[1][4]["ItemChance"] = 13902
	tValentinesDaySurprise_Random[1][4]["Index"] = 4
	tValentinesDaySurprise_Random[1][5] = {}
	tValentinesDaySurprise_Random[1][5]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Random[1][5]["ItemChance"] = 90
	tValentinesDaySurprise_Random[1][5]["Index"] = 5
	tValentinesDaySurprise_Random[1][6] = {}
	tValentinesDaySurprise_Random[1][6]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Random[1][6]["ItemChance"] = 8
	tValentinesDaySurprise_Random[1][6]["Index"] = 6


-- 寻路至对应采集点
local tValentinesDaySurprise_FindEgg = {}	
	tValentinesDaySurprise_FindEgg[10911] = 26834 	
	tValentinesDaySurprise_FindEgg[10912] = 26837 	
	tValentinesDaySurprise_FindEgg[10913] = 26840	
	tValentinesDaySurprise_FindEgg[10914] = 26843	
	tValentinesDaySurprise_FindEgg[10915] = 26846	

-- 随机对应的坐标
local tValentinesDaySurprise_PosInformation = {}	
	-- 活动地图1
	tValentinesDaySurprise_PosInformation[26834]={}
	tValentinesDaySurprise_PosInformation[26834][1] = {10911,243,249,31398}
	tValentinesDaySurprise_PosInformation[26834][2] = {10911,248,266,31399}
	tValentinesDaySurprise_PosInformation[26834][3] = {10911,268,273,31400}
	tValentinesDaySurprise_PosInformation[26835]={}
	tValentinesDaySurprise_PosInformation[26835][1] = {10911,288,262,31401}
	tValentinesDaySurprise_PosInformation[26835][2] = {10911,287,245,31402}
	tValentinesDaySurprise_PosInformation[26835][3] = {10911,286,223,31403}
	tValentinesDaySurprise_PosInformation[26836]={}
	tValentinesDaySurprise_PosInformation[26836][1] = {10911,265,216,31404}
	tValentinesDaySurprise_PosInformation[26836][2] = {10911,252,211,31405}
	tValentinesDaySurprise_PosInformation[26836][3] = {10911,235,216,31406}
	tValentinesDaySurprise_PosInformation[26837]={}
	tValentinesDaySurprise_PosInformation[26837][1] = {10912,225,108,31407}
	tValentinesDaySurprise_PosInformation[26837][2] = {10912,214,119,31408}
	tValentinesDaySurprise_PosInformation[26837][3] = {10912,238,134,31409}
	tValentinesDaySurprise_PosInformation[26838]={}
	tValentinesDaySurprise_PosInformation[26838][1] = {10912,254,125,31410}
	tValentinesDaySurprise_PosInformation[26838][2] = {10912,223,141,31411}
	tValentinesDaySurprise_PosInformation[26838][3] = {10912,257,146,31412}
	tValentinesDaySurprise_PosInformation[26839]={}
	tValentinesDaySurprise_PosInformation[26839][1] = {10912,237,150,31413}
	tValentinesDaySurprise_PosInformation[26839][2] = {10912,207,134,31414}
	tValentinesDaySurprise_PosInformation[26839][3] = {10912,260,156,31415}
	tValentinesDaySurprise_PosInformation[26840]={}
	tValentinesDaySurprise_PosInformation[26840][1] = {10913,150,136,31416}
	tValentinesDaySurprise_PosInformation[26840][2] = {10913,139,137,31417}
	tValentinesDaySurprise_PosInformation[26840][3] = {10913,143,152,31418}
	tValentinesDaySurprise_PosInformation[26841]={}
	tValentinesDaySurprise_PosInformation[26841][1] = {10913,158,167,31419}
	tValentinesDaySurprise_PosInformation[26841][2] = {10913,175,166,31420}
	tValentinesDaySurprise_PosInformation[26841][3] = {10913,178,150,31421}
	tValentinesDaySurprise_PosInformation[26842]={}
	tValentinesDaySurprise_PosInformation[26842][1] = {10913,155,167,31422}
	tValentinesDaySurprise_PosInformation[26842][2] = {10913,149,177,31423}
	tValentinesDaySurprise_PosInformation[26842][3] = {10913,140,156,31424}
	tValentinesDaySurprise_PosInformation[26843]={}
	tValentinesDaySurprise_PosInformation[26843][1] = {10914,193,159,31425}
	tValentinesDaySurprise_PosInformation[26843][2] = {10914,164,159,31426}
	tValentinesDaySurprise_PosInformation[26843][3] = {10914,158,141,31427}
	tValentinesDaySurprise_PosInformation[26844]={}
	tValentinesDaySurprise_PosInformation[26844][1] = {10914,177,126,31428}
	tValentinesDaySurprise_PosInformation[26844][2] = {10914,195,133,31429}
	tValentinesDaySurprise_PosInformation[26844][3] = {10914,203,148,31430}
	tValentinesDaySurprise_PosInformation[26845]={}
	tValentinesDaySurprise_PosInformation[26845][1] = {10914,165,143,31431}
	tValentinesDaySurprise_PosInformation[26845][2] = {10914,163,156,31432}
	tValentinesDaySurprise_PosInformation[26845][3] = {10914,156,134,31433}
	tValentinesDaySurprise_PosInformation[26846]={}
	tValentinesDaySurprise_PosInformation[26846][1] = {10915,267,284,31434}
	tValentinesDaySurprise_PosInformation[26846][2] = {10915,269,264,31435}
	tValentinesDaySurprise_PosInformation[26846][3] = {10915,283,262,31436}
	tValentinesDaySurprise_PosInformation[26847]={}
	tValentinesDaySurprise_PosInformation[26847][1] = {10915,300,276,31437}
	tValentinesDaySurprise_PosInformation[26847][2] = {10915,303,296,31438}
	tValentinesDaySurprise_PosInformation[26847][3] = {10915,287,308,31439}
	tValentinesDaySurprise_PosInformation[26848]={}
	tValentinesDaySurprise_PosInformation[26848][1] = {10915,269,298,31440}
	tValentinesDaySurprise_PosInformation[26848][2] = {10915,252,279,31441}
	tValentinesDaySurprise_PosInformation[26848][3] = {10915,281,257,31442}
	


local tValentinesDaySurprise_MonsterDrop = {}
	tValentinesDaySurprise_MonsterDrop[6531] = {}
	-- ===一阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6531][1]
	-- ===LogStep:3[1][1]
	tValentinesDaySurprise_MonsterDrop[6531][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][1]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6531][1]["LogStep"] = "3[1][1]"
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*2
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardItem"][1]["Attr"] = "0 2" --  3316530 【cnzfjqf14库里没有该物品】*2
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6531][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===一阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6531][2]
	-- ===LogStep:3[1][2]
	tValentinesDaySurprise_MonsterDrop[6531][2] = {}
	tValentinesDaySurprise_MonsterDrop[6531][2]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6531][2]["LogStep"] = "3[1][2]"
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardItem"][1]["Id"] = 3332216 -- 400CP(B)Box[3332216][属性:9][叠加:10000][金币:0], 【表格】400赠点天石
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardItem"][1]["Attr"] = "0 1" -- 400CP(B)Box*1
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6531][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===一阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6531][3]
	-- ===LogStep:3[1][3]
	tValentinesDaySurprise_MonsterDrop[6531][3] = {}
	tValentinesDaySurprise_MonsterDrop[6531][3]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6531][3]["LogStep"] = "3[1][3]"
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardItem"][1]["Id"] = 3332216 -- 400CP(B)Box[3332216][属性:9][叠加:10000][金币:0], 【表格】800赠点天石
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardItem"][1]["Attr"] = "0 2" -- 400CP(B)Box*2
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6531][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===一阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6531][4]
	-- ===LogStep:3[1][4]
	tValentinesDaySurprise_MonsterDrop[6531][4] = {}
	tValentinesDaySurprise_MonsterDrop[6531][4]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6531][4]["LogStep"] = "3[1][4]"
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardItem"][1]["Id"] = 3332216 -- 400CP(B)Box[3332216][属性:9][叠加:10000][金币:0], 【表格】1600赠点天石
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardItem"][1]["Attr"] = "0 4" -- 400CP(B)Box*4
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6531][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===一阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6531][5]
	-- ===LogStep:3[1][5]
	tValentinesDaySurprise_MonsterDrop[6531][5] = {}
	tValentinesDaySurprise_MonsterDrop[6531][5]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6531][5]["LogStep"] = "3[1][5]"
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardItem"][1]["Id"] = 3332216 -- 400CP(B)Box[3332216][属性:9][叠加:10000][金币:0], 【表格】21600赠点天石
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardItem"][1]["Attr"] = "0 54" -- 400CP(B)Box*54（数量超10个）
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6531][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===一阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6531][6]
	-- ===LogStep:3[1][6]
	tValentinesDaySurprise_MonsterDrop[6531][6] = {}
	tValentinesDaySurprise_MonsterDrop[6531][6]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6531][6]["LogStep"] = "3[1][6]"
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardItem"][1]["Id"] = 3332216 -- 400CP(B)Box[3332216][属性:9][叠加:10000][金币:0], 【表格】110400赠点天石
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardItem"][1]["Attr"] = "0 276" -- 400CP(B)Box*276（数量超10个）
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6531][6]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDaySurprise_MonsterDrop[6532] = {}
	-- ===二阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6532][1]
	-- ===LogStep:3[2][1]
	tValentinesDaySurprise_MonsterDrop[6532][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][1]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6532][1]["LogStep"] = "3[2][1]"
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*22
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardItem"][1]["Attr"] = "0 22" --  3316530 【cnzfjqf14库里没有该物品】*22
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6532][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===二阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6532][2]
	-- ===LogStep:3[2][2]
	tValentinesDaySurprise_MonsterDrop[6532][2] = {}
	tValentinesDaySurprise_MonsterDrop[6532][2]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6532][2]["LogStep"] = "3[2][2]"
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardItem"][1]["Id"] = 3332217 -- 4000CP(B)Box[3332217][属性:9][叠加:10000][金币:0], 【表格】4000赠点天石
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardItem"][1]["Attr"] = "0 1" -- 4000CP(B)Box*1
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6532][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===二阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6532][3]
	-- ===LogStep:3[2][3]
	tValentinesDaySurprise_MonsterDrop[6532][3] = {}
	tValentinesDaySurprise_MonsterDrop[6532][3]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6532][3]["LogStep"] = "3[2][3]"
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardItem"][1]["Id"] = 3332217 -- 4000CP(B)Box[3332217][属性:9][叠加:10000][金币:0], 【表格】8000赠点天石
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardItem"][1]["Attr"] = "0 2" -- 4000CP(B)Box*2
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6532][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===二阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6532][4]
	-- ===LogStep:3[2][4]
	tValentinesDaySurprise_MonsterDrop[6532][4] = {}
	tValentinesDaySurprise_MonsterDrop[6532][4]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6532][4]["LogStep"] = "3[2][4]"
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardItem"][1]["Id"] = 3332217 -- 4000CP(B)Box[3332217][属性:9][叠加:10000][金币:0], 【表格】16000赠点天石
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardItem"][1]["Attr"] = "0 4" -- 4000CP(B)Box*4
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6532][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===二阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6532][5]
	-- ===LogStep:3[2][5]
	tValentinesDaySurprise_MonsterDrop[6532][5] = {}
	tValentinesDaySurprise_MonsterDrop[6532][5]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6532][5]["LogStep"] = "3[2][5]"
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardItem"][1]["Id"] = 3332217 -- 4000CP(B)Box[3332217][属性:9][叠加:10000][金币:0], 【表格】216000赠点天石
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardItem"][1]["Attr"] = "0 54" -- 4000CP(B)Box*54（数量超10个）
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6532][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===二阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6532][6]
	-- ===LogStep:3[2][6]
	tValentinesDaySurprise_MonsterDrop[6532][6] = {}
	tValentinesDaySurprise_MonsterDrop[6532][6]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6532][6]["LogStep"] = "3[2][6]"
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardItem"][1]["Id"] = 3332217 -- 4000CP(B)Box[3332217][属性:9][叠加:10000][金币:0], 【表格】1104000赠点天石
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardItem"][1]["Attr"] = "0 276" -- 4000CP(B)Box*276（数量超10个）
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6532][6]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDaySurprise_MonsterDrop[6533] = {}
	-- ===三阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6533][1]
	-- ===LogStep:3[3][1]
	tValentinesDaySurprise_MonsterDrop[6533][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][1]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6533][1]["LogStep"] = "3[3][1]"
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*222
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardItem"][1]["Attr"] = "0 222" --  3316530 【cnzfjqf14库里没有该物品】*222
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6533][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===三阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6533][2]
	-- ===LogStep:3[3][2]
	tValentinesDaySurprise_MonsterDrop[6533][2] = {}
	tValentinesDaySurprise_MonsterDrop[6533][2]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6533][2]["LogStep"] = "3[3][2]"
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardItem"][1]["Id"] = 3332218 -- 40000CP(B)Box[3332218][属性:9][叠加:10000][金币:0], 【表格】40000赠点天石
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardItem"][1]["Attr"] = "0 1" -- 40000CP(B)Box*1
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6533][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===三阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6533][3]
	-- ===LogStep:3[3][3]
	tValentinesDaySurprise_MonsterDrop[6533][3] = {}
	tValentinesDaySurprise_MonsterDrop[6533][3]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6533][3]["LogStep"] = "3[3][3]"
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardItem"][1]["Id"] = 3332218 -- 40000CP(B)Box[3332218][属性:9][叠加:10000][金币:0], 【表格】80000赠点天石
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardItem"][1]["Attr"] = "0 2" -- 40000CP(B)Box*2
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6533][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===三阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6533][4]
	-- ===LogStep:3[3][4]
	tValentinesDaySurprise_MonsterDrop[6533][4] = {}
	tValentinesDaySurprise_MonsterDrop[6533][4]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6533][4]["LogStep"] = "3[3][4]"
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardItem"][1]["Id"] = 3332218 -- 40000CP(B)Box[3332218][属性:9][叠加:10000][金币:0], 【表格】160000赠点天石
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardItem"][1]["Attr"] = "0 4" -- 40000CP(B)Box*4
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6533][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===三阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6533][5]
	-- ===LogStep:3[3][5]
	tValentinesDaySurprise_MonsterDrop[6533][5] = {}
	tValentinesDaySurprise_MonsterDrop[6533][5]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6533][5]["LogStep"] = "3[3][5]"
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardItem"][1]["Id"] = 3332218 -- 40000CP(B)Box[3332218][属性:9][叠加:10000][金币:0], 【表格】2160000赠点天石
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardItem"][1]["Attr"] = "0 54" -- 40000CP(B)Box*54（数量超10个）
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6533][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===三阶灵鹊
	-- ===索引: tValentinesDaySurprise_MonsterDrop[6533][6]
	-- ===LogStep:3[3][6]
	tValentinesDaySurprise_MonsterDrop[6533][6] = {}
	tValentinesDaySurprise_MonsterDrop[6533][6]["LogId"] = 12002030
	tValentinesDaySurprise_MonsterDrop[6533][6]["LogStep"] = "3[3][6]"
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardItem"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardItem"][1] = {}
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardItem"][1]["Id"] = 3332218 -- 40000CP(B)Box[3332218][属性:9][叠加:10000][金币:0], 【表格】11040000赠点天石
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardItem"][1]["Attr"] = "0 276" -- 40000CP(B)Box*276（数量超10个）
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardEffect"] = {}
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_MonsterDrop[6533][6]["RewardEffect"]["Effect"] = "angelwing"


local tValentinesDaySurprise_Reward = {}
	-- ===喜鹊的报恩礼包
	-- ===索引: tValentinesDaySurprise_Reward[3331820]
	-- ===NewEMoneyLog: 1000,01978
	-- ===LogStep:3[4]
	-- ===删除: 3331820,1
	-- RewardTemplate_RandomReward(tValentinesDaySurprise_Reward,3331820)
	tValentinesDaySurprise_Reward[3331820] = {}
	tValentinesDaySurprise_Reward[3331820]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentinesDaySurprise_Reward[3331820]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3331820]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3331820]["DeleteItem"][1]["Id"] = 3331820 -- 【库】灵鹊报恩礼包[属性:9]
	tValentinesDaySurprise_Reward[3331820]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3331820]["LogStep"] = "3[4]"
	-- 天石（赠） - 25%
	tValentinesDaySurprise_Reward[3331820][1] = {}
	tValentinesDaySurprise_Reward[3331820][1]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331820][1]["ItemChance"] = 2500
	tValentinesDaySurprise_Reward[3331820][1]["RewardEMoneyMono"] = {}
	tValentinesDaySurprise_Reward[3331820][1]["RewardEMoneyMono"]["Value"] = 99 -- 天石（赠）, 【需求】天石（赠）
	tValentinesDaySurprise_Reward[3331820][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1978"
	tValentinesDaySurprise_Reward[3331820][1]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331820][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331820][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54696, data0）】全服限量:（280）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331820][1]["GlobalId"] = 54696
	tValentinesDaySurprise_Reward[3331820][1]["Pos"] = 0
	tValentinesDaySurprise_Reward[3331820][1]["MaxData"] = 280
	tValentinesDaySurprise_Reward[3331820][1]["FullIndex"] = 4
			-- 【动态掩码（54696, data1）】单日限量:（20）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331820][1]["OtherPos"] = 1
	tValentinesDaySurprise_Reward[3331820][1]["OtherMaxData"] = 20
	tValentinesDaySurprise_Reward[3331820][1]["OtherFullIndex"] = 4
	-- 精装神器礼包 - 25%
	tValentinesDaySurprise_Reward[3331820][2] = {}
	tValentinesDaySurprise_Reward[3331820][2]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331820][2]["ItemChance"] = 2500
	tValentinesDaySurprise_Reward[3331820][2]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331820][2]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331820][2]["RewardItem"][1]["Id"] = 3314914 -- 精装神器礼包[3314914][属性:8][叠加:1][金币:0], 【表格】精装神器礼包
	tValentinesDaySurprise_Reward[3331820][2]["RewardItem"][1]["Attr"] = "0 1" -- 精装神器礼包*1
	tValentinesDaySurprise_Reward[3331820][2]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331820][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331820][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54696, data2）】全服限量:（1400）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331820][2]["GlobalId"] = 54696
	tValentinesDaySurprise_Reward[3331820][2]["Pos"] = 2
	tValentinesDaySurprise_Reward[3331820][2]["MaxData"] = 1400
	tValentinesDaySurprise_Reward[3331820][2]["FullIndex"] = 4
			-- 【动态掩码（54696, data3）】单日限量:（100）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331820][2]["OtherPos"] = 3
	tValentinesDaySurprise_Reward[3331820][2]["OtherMaxData"] = 100
	tValentinesDaySurprise_Reward[3331820][2]["OtherFullIndex"] = 4
	-- 赤炼石+3 - 30%
	tValentinesDaySurprise_Reward[3331820][3] = {}
	tValentinesDaySurprise_Reward[3331820][3]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331820][3]["ItemChance"] = 3000
	tValentinesDaySurprise_Reward[3331820][3]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331820][3]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331820][3]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tValentinesDaySurprise_Reward[3331820][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tValentinesDaySurprise_Reward[3331820][3]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331820][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331820][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 20%
	tValentinesDaySurprise_Reward[3331820][4] = {}
	tValentinesDaySurprise_Reward[3331820][4]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331820][4]["ItemChance"] = 2000
	tValentinesDaySurprise_Reward[3331820][4]["RewardStrengthValue"] = {}
	tValentinesDaySurprise_Reward[3331820][4]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】气力值
	tValentinesDaySurprise_Reward[3331820][4]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331820][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331820][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊笛*3-- 【自身概率】 - 50%
	tValentinesDaySurprise_Reward[3331820][5] = {}
	tValentinesDaySurprise_Reward[3331820][5]["RandomItemChanceType"] = 3
	tValentinesDaySurprise_Reward[3331820][5]["ItemSelfChanceSum"] = 10000
	tValentinesDaySurprise_Reward[3331820][5]["ItemChance"] = 5000
	tValentinesDaySurprise_Reward[3331820][5]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331820][5]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331820][5]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*3
	tValentinesDaySurprise_Reward[3331820][5]["RewardItem"][1]["Attr"] = "0 3" --  3316530 【cnzfjqf14库里没有该物品】*3
	tValentinesDaySurprise_Reward[3331820][5]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331820][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331820][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊的赠礼礼包
	-- ===索引: tValentinesDaySurprise_Reward[3331821]
	-- ===NewEMoneyLog: 1000,01979
	-- ===LogStep:3[4]
	-- ===删除: 3331821,1
	-- RewardTemplate_RandomReward(tValentinesDaySurprise_Reward,3331821)
	tValentinesDaySurprise_Reward[3331821] = {}
	tValentinesDaySurprise_Reward[3331821]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentinesDaySurprise_Reward[3331821]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3331821]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3331821]["DeleteItem"][1]["Id"] = 3331821 -- 【库】灵鹊赠礼包[属性:9]
	tValentinesDaySurprise_Reward[3331821]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3331821]["LogStep"] = "3[4]"
	-- 天石（赠） - 20%
	tValentinesDaySurprise_Reward[3331821][1] = {}
	tValentinesDaySurprise_Reward[3331821][1]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331821][1]["ItemChance"] = 2000
	tValentinesDaySurprise_Reward[3331821][1]["RewardEMoneyMono"] = {}
	tValentinesDaySurprise_Reward[3331821][1]["RewardEMoneyMono"]["Value"] = 66 -- 天石（赠）, 【需求】天石（赠）
	tValentinesDaySurprise_Reward[3331821][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1979"
	tValentinesDaySurprise_Reward[3331821][1]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331821][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331821][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54697, data4）】全服限量:（280）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331821][1]["GlobalId"] = 54697
	tValentinesDaySurprise_Reward[3331821][1]["Pos"] = 4
	tValentinesDaySurprise_Reward[3331821][1]["MaxData"] = 280
	tValentinesDaySurprise_Reward[3331821][1]["FullIndex"] = 4
			-- 【动态掩码（54697, data5）】单日限量:（20）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331821][1]["OtherPos"] = 5
	tValentinesDaySurprise_Reward[3331821][1]["OtherMaxData"] = 20
	tValentinesDaySurprise_Reward[3331821][1]["OtherFullIndex"] = 4
	-- 精装神器礼包 - 10%
	tValentinesDaySurprise_Reward[3331821][2] = {}
	tValentinesDaySurprise_Reward[3331821][2]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331821][2]["ItemChance"] = 1000
	tValentinesDaySurprise_Reward[3331821][2]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331821][2]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331821][2]["RewardItem"][1]["Id"] = 3314914 -- 精装神器礼包[3314914][属性:8][叠加:1][金币:0], 【表格】精装神器礼包
	tValentinesDaySurprise_Reward[3331821][2]["RewardItem"][1]["Attr"] = "0 1" -- 精装神器礼包*1
	tValentinesDaySurprise_Reward[3331821][2]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331821][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331821][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54697, data0）】全服限量:（1400）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331821][2]["GlobalId"] = 54697
	tValentinesDaySurprise_Reward[3331821][2]["Pos"] = 0
	tValentinesDaySurprise_Reward[3331821][2]["MaxData"] = 1400
	tValentinesDaySurprise_Reward[3331821][2]["FullIndex"] = 4
			-- 【动态掩码（54697, data1）】单日限量:（100）, 超限给编号（4）-
	tValentinesDaySurprise_Reward[3331821][2]["OtherPos"] = 1
	tValentinesDaySurprise_Reward[3331821][2]["OtherMaxData"] = 100
	tValentinesDaySurprise_Reward[3331821][2]["OtherFullIndex"] = 4
	-- 赤炼石+1 - 35%
	tValentinesDaySurprise_Reward[3331821][3] = {}
	tValentinesDaySurprise_Reward[3331821][3]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331821][3]["ItemChance"] = 3500
	tValentinesDaySurprise_Reward[3331821][3]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331821][3]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331821][3]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tValentinesDaySurprise_Reward[3331821][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tValentinesDaySurprise_Reward[3331821][3]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331821][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331821][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 35%
	tValentinesDaySurprise_Reward[3331821][4] = {}
	tValentinesDaySurprise_Reward[3331821][4]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331821][4]["ItemChance"] = 3500
	tValentinesDaySurprise_Reward[3331821][4]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331821][4]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331821][4]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tValentinesDaySurprise_Reward[3331821][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tValentinesDaySurprise_Reward[3331821][4]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331821][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331821][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===领取感恩礼包
	-- ===索引: tValentinesDaySurprise_Reward["GetReward"]
	-- ===LogStep:3[5][1]
	tValentinesDaySurprise_Reward["GetReward"] = {}
	tValentinesDaySurprise_Reward["GetReward"]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["GetReward"]["LogStep"] = "3[5][1]"
	tValentinesDaySurprise_Reward["GetReward"]["RewardItem"] = {}
	tValentinesDaySurprise_Reward["GetReward"]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward["GetReward"]["RewardItem"][1]["Id"] = 3331820 -- 灵鹊报恩礼包[3331820][属性:9][叠加:10000][金币:0], 【表格】喜鹊的报恩礼包
	tValentinesDaySurprise_Reward["GetReward"]["RewardItem"][1]["Attr"] = "0 1" -- 灵鹊报恩礼包*1
	tValentinesDaySurprise_Reward["GetReward"]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["GetReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["GetReward"]["RewardEffect"]["Effect"] = "angelwing"


	-- ===灵鹊极运礼包
	-- ===索引: tValentinesDaySurprise_Reward[3331822]
	-- ===LogStep:3[4]
	-- ===删除: 3331822,1
	-- RewardTemplate_RandomReward(tValentinesDaySurprise_Reward,3331822)
	tValentinesDaySurprise_Reward[3331822] = {}
	tValentinesDaySurprise_Reward[3331822]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentinesDaySurprise_Reward[3331822]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3331822]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3331822]["DeleteItem"][1]["Id"] = 3331822 -- 【库】灵鹊极运礼包[属性:9]
	tValentinesDaySurprise_Reward[3331822]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3331822]["LogStep"] = "3[4]"
	-- 揽鹊笛*2 - 35%
	tValentinesDaySurprise_Reward[3331822][1] = {}
	tValentinesDaySurprise_Reward[3331822][1]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331822][1]["ItemChance"] = 3500
	tValentinesDaySurprise_Reward[3331822][1]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331822][1]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331822][1]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*2
	tValentinesDaySurprise_Reward[3331822][1]["RewardItem"][1]["Attr"] = "0 2" --  3316530 【cnzfjqf14库里没有该物品】*2
	tValentinesDaySurprise_Reward[3331822][1]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331822][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331822][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊笛*3 - 45%
	tValentinesDaySurprise_Reward[3331822][2] = {}
	tValentinesDaySurprise_Reward[3331822][2]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331822][2]["ItemChance"] = 4500
	tValentinesDaySurprise_Reward[3331822][2]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331822][2]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331822][2]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*3
	tValentinesDaySurprise_Reward[3331822][2]["RewardItem"][1]["Attr"] = "0 3" --  3316530 【cnzfjqf14库里没有该物品】*3
	tValentinesDaySurprise_Reward[3331822][2]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331822][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331822][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊笛*4 - 12%
	tValentinesDaySurprise_Reward[3331822][3] = {}
	tValentinesDaySurprise_Reward[3331822][3]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331822][3]["ItemChance"] = 1200
	tValentinesDaySurprise_Reward[3331822][3]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331822][3]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331822][3]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*4
	tValentinesDaySurprise_Reward[3331822][3]["RewardItem"][1]["Attr"] = "0 4" --  3316530 【cnzfjqf14库里没有该物品】*4
	tValentinesDaySurprise_Reward[3331822][3]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331822][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331822][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊笛*6 - 8%
	tValentinesDaySurprise_Reward[3331822][4] = {}
	tValentinesDaySurprise_Reward[3331822][4]["RandomItemChanceType"] = 2
	tValentinesDaySurprise_Reward[3331822][4]["ItemChance"] = 800
	tValentinesDaySurprise_Reward[3331822][4]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3331822][4]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3331822][4]["RewardItem"][1]["Id"] = 3316530 --  3316530 【cnzfjqf14库里没有该物品】, 【表格】揽鹊笛*6
	tValentinesDaySurprise_Reward[3331822][4]["RewardItem"][1]["Attr"] = "0 6" --  3316530 【cnzfjqf14库里没有该物品】*6
	tValentinesDaySurprise_Reward[3331822][4]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3331822][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3331822][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===礼包过期删除 兑换为1气力值
	-- ===索引: tValentinesDaySurprise_Reward["TimeOver"]
	-- ===LogStep:3[6]
	-- ===删除: 3331820,2
	tValentinesDaySurprise_Reward["TimeOver"] = {}
	tValentinesDaySurprise_Reward["TimeOver"]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["TimeOver"]["LogStep"] = "3[6]"
	tValentinesDaySurprise_Reward["TimeOver"]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward["TimeOver"]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward["TimeOver"]["DeleteItem"][1]["Id"] = 3331820 -- 【库】灵鹊报恩礼包[属性:9]
	tValentinesDaySurprise_Reward["TimeOver"]["DeleteItem"][1]["ItemNum"] = 1
	tValentinesDaySurprise_Reward["TimeOver"]["RewardStrengthValue"] = {}
	tValentinesDaySurprise_Reward["TimeOver"]["RewardStrengthValue"]["Value"] = 1 -- 气力值, 【需求】气力值
	tValentinesDaySurprise_Reward["TimeOver"]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["TimeOver"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["TimeOver"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===每日签到礼包和显著功勋礼包获得揽鹊枝
	-- ===索引: tValentinesDaySurprise_Reward["Sign"]
	-- ===LogStep:3[5][2]
	tValentinesDaySurprise_Reward["Sign"] = {}
	tValentinesDaySurprise_Reward["Sign"]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["Sign"]["LogStep"] = "3[5][2]"
	tValentinesDaySurprise_Reward["Sign"]["RewardItem"] = {}
	tValentinesDaySurprise_Reward["Sign"]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward["Sign"]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊笛*5
	tValentinesDaySurprise_Reward["Sign"]["RewardItem"][1]["Attr"] = "0 5" -- 揽鹊笛*5
	tValentinesDaySurprise_Reward["Sign"]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["Sign"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["Sign"]["RewardEffect"]["Effect"] = "angelwing"


	-- ===打怪掉落揽鹊枝
	-- ===索引: tValentinesDaySurprise_Reward["KillMonster"]
	-- ===LogStep:3[5][3]
	tValentinesDaySurprise_Reward["KillMonster"] = {}
	tValentinesDaySurprise_Reward["KillMonster"]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["KillMonster"]["LogStep"] = "3[5][3]"
	tValentinesDaySurprise_Reward["KillMonster"]["RewardItem"] = {}
	tValentinesDaySurprise_Reward["KillMonster"]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward["KillMonster"]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊笛*1
	tValentinesDaySurprise_Reward["KillMonster"]["RewardItem"][1]["Attr"] = "0 1" -- 揽鹊笛*1
	tValentinesDaySurprise_Reward["KillMonster"]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["KillMonster"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["KillMonster"]["RewardEffect"]["Effect"] = "angelwing"
	
	------------------------------------------------------------------------------
	-- ===灵鹊爸爸任务选项错误时给300气力值
	-- ===索引:tValentinesDaySurprise_Reward["WrongAnswer"]
	-- ===LogStep:3[5][4]
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf6
	tValentinesDaySurprise_Reward["WrongAnswer"] = {}
	tValentinesDaySurprise_Reward["WrongAnswer"]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["WrongAnswer"]["LogStep"] = "3[5][4]"
	tValentinesDaySurprise_Reward["WrongAnswer"]["RewardStrengthValue"] = {}
	tValentinesDaySurprise_Reward["WrongAnswer"]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	
	------------------------------------------------------------------------------
	-- ===鹊桥仙·比翼礼包
	-- ===索引:tValentinesDaySurprise_Reward["3332167"]
	-- ===LogStep:4[1]
	-- ===删除:3332167,1
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf6
	tValentinesDaySurprise_Reward[3332167] = {}
	tValentinesDaySurprise_Reward[3332167]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3332167]["LogStep"] = "4[1]"
	tValentinesDaySurprise_Reward[3332167]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3332167]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3332167]["DeleteItem"][1]["Id"] = 3332167 -- 【库】鹊桥仙·比翼[属性:0]
	tValentinesDaySurprise_Reward[3332167]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3332167]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3332167]["RewardItem"][1]["Id"] = 196275 -- 鹊桥仙·比翼[196275][属性:0][叠加:0][金币:0], 【表格】鹊桥仙·比翼
	tValentinesDaySurprise_Reward[3332167]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑鹊桥仙·比翼*1
	tValentinesDaySurprise_Reward[3332167]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3332167]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3332167]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===鹊桥仙礼包
	-- ===索引:tValentinesDaySurprise_Reward["3332168"]
	-- ===LogStep:4[2]
	-- ===删除:3332168,1
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf6
	tValentinesDaySurprise_Reward[3332168] = {}
	tValentinesDaySurprise_Reward[3332168]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3332168]["LogStep"] = "4[2]"
	tValentinesDaySurprise_Reward[3332168]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3332168]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3332168]["DeleteItem"][1]["Id"] = 3332168 -- 【库】鹊桥仙[属性:0]
	tValentinesDaySurprise_Reward[3332168]["RewardItem"] = {}
	tValentinesDaySurprise_Reward[3332168]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward[3332168]["RewardItem"][1]["Id"] = 196285 -- 鹊桥仙[196285][属性:0][叠加:0][金币:0], 【表格】鹊桥仙
	tValentinesDaySurprise_Reward[3332168]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑鹊桥仙*1
	tValentinesDaySurprise_Reward[3332168]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3332168]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3332168]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------
	-- ===400CP（B）Pack
	-- ===索引:tValentinesDaySurprise_Reward[3332216]
	-- ===删除:3332216,1
	-- ===NewEMoneyLog:1000,02131
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf6
	tValentinesDaySurprise_Reward[3332216] = {}
	tValentinesDaySurprise_Reward[3332216]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3332216]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3332216]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3332216]["DeleteItem"][1]["Id"] = 3332216 -- 【库】400CP(B)Box[属性:9]
	tValentinesDaySurprise_Reward[3332216]["RewardEMoneyMono"] = {}
	tValentinesDaySurprise_Reward[3332216]["RewardEMoneyMono"]["Value"] = 400 -- 天石（赠）, 【需求】赠点
	tValentinesDaySurprise_Reward[3332216]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	2131"
	tValentinesDaySurprise_Reward[3332216]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3332216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3332216]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===4000CP（B）Pack
	-- ===索引:tValentinesDaySurprise_Reward[3332217]
	-- ===删除:3332217,1
	-- ===NewEMoneyLog:1000,02132
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf6
	tValentinesDaySurprise_Reward[3332217] = {}
	tValentinesDaySurprise_Reward[3332217]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3332217]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3332217]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3332217]["DeleteItem"][1]["Id"] = 3332217 -- 【库】4000CP(B)Box[属性:9]
	tValentinesDaySurprise_Reward[3332217]["RewardEMoneyMono"] = {}
	tValentinesDaySurprise_Reward[3332217]["RewardEMoneyMono"]["Value"] = 4000 -- 天石（赠）, 【需求】赠点
	tValentinesDaySurprise_Reward[3332217]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	2132"
	tValentinesDaySurprise_Reward[3332217]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3332217]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3332217]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===40000CP（B）Pack
	-- ===索引:tValentinesDaySurprise_Reward[3332218]
	-- ===删除:3332218,1
	-- ===NewEMoneyLog:1000,02133
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf6
	tValentinesDaySurprise_Reward[3332218] = {}
	tValentinesDaySurprise_Reward[3332218]["LogId"] = 12002030
	tValentinesDaySurprise_Reward[3332218]["DeleteItem"] = {}
	tValentinesDaySurprise_Reward[3332218]["DeleteItem"][1] = {}
	tValentinesDaySurprise_Reward[3332218]["DeleteItem"][1]["Id"] = 3332218 -- 【库】40000CP(B)Box[属性:9]
	tValentinesDaySurprise_Reward[3332218]["RewardEMoneyMono"] = {}
	tValentinesDaySurprise_Reward[3332218]["RewardEMoneyMono"]["Value"] = 40000 -- 天石（赠）, 【需求】赠点
	tValentinesDaySurprise_Reward[3332218]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	2133"
	tValentinesDaySurprise_Reward[3332218]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward[3332218]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward[3332218]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------------------------------------------------
	-- ===购买一阶招鹊盒
	-- ===索引:tValentinesDaySurprise_Reward["Buy"][3331823]
	-- ===LogStep:5[1]
	-- ===消耗天石（赠）:800
	-- ===NewEMoneyLog:1000,02213
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf7
	tValentinesDaySurprise_Reward["Buy"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331823] = {}
	tValentinesDaySurprise_Reward["Buy"][3331823]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["Buy"][3331823]["LogStep"] = "5[1]"
	tValentinesDaySurprise_Reward["Buy"][3331823]["CostEMoneyMono"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331823]["CostEMoneyMono"]["Value"] = 800 -- 消耗天石（赠）
	tValentinesDaySurprise_Reward["Buy"][3331823]["CostEMoneyMono"]["EmoneyLog"] = "1000	2213"
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardItem"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardItem"][1]["Id"] = 3331823 -- 一阶招鹊盒[3331823][属性:9][叠加:10000][金币:0], 【表格】一阶招鹊盒
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardItem"][1]["Attr"] = "0 1" -- 一阶招鹊盒*1
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["Buy"][3331823]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------
	-- ===购买二阶招鹊盒
	-- ===索引:tValentinesDaySurprise_Reward["Buy"][3331824]
	-- ===LogStep:5[2]
	-- ===消耗天石（赠）:8000
	-- ===NewEMoneyLog:1000,02214
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf7
	tValentinesDaySurprise_Reward["Buy"][3331824] = {}
	tValentinesDaySurprise_Reward["Buy"][3331824]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["Buy"][3331824]["LogStep"] = "5[2]"
	tValentinesDaySurprise_Reward["Buy"][3331824]["CostEMoneyMono"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331824]["CostEMoneyMono"]["Value"] = 8000 -- 消耗天石（赠）
	tValentinesDaySurprise_Reward["Buy"][3331824]["CostEMoneyMono"]["EmoneyLog"] = "1000	2214"
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardItem"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardItem"][1]["Id"] = 3331824 -- 二阶招鹊盒[3331824][属性:9][叠加:10000][金币:0], 【表格】二阶招鹊盒
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardItem"][1]["Attr"] = "0 1" -- 二阶招鹊盒*1
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["Buy"][3331824]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------
	-- ===购买二阶招鹊盒
	-- ===索引:tValentinesDaySurprise_Reward["Buy"][3331825]
	-- ===LogStep:5[3]
	-- ===消耗天石（赠）:80000
	-- ===NewEMoneyLog:1000,02215
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf7
	tValentinesDaySurprise_Reward["Buy"][3331825] = {}
	tValentinesDaySurprise_Reward["Buy"][3331825]["LogId"] = 12002030
	tValentinesDaySurprise_Reward["Buy"][3331825]["LogStep"] = "5[3]"
	tValentinesDaySurprise_Reward["Buy"][3331825]["CostEMoneyMono"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331825]["CostEMoneyMono"]["Value"] = 80000 -- 消耗天石（赠）
	tValentinesDaySurprise_Reward["Buy"][3331825]["CostEMoneyMono"]["EmoneyLog"] = "1000	2215"
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardItem"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardItem"][1] = {}
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardItem"][1]["Id"] = 3331825 -- 三阶招鹊盒[3331825][属性:9][叠加:10000][金币:0], 【表格】三阶招鹊盒
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardItem"][1]["Attr"] = "0 1" -- 三阶招鹊盒*1
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardEffect"] = {}
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDaySurprise_Reward["Buy"][3331825]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
--每日签到礼包和显著功勋礼包 nValentinesDaySurprise_Index为9为每日签到礼包 10为显著功勋礼包
function ValentinesDaySurprise_DailyPack(nValentinesDaySurprise_Index)
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_Level = tValentinesDaySurprise_Cont["Level"]
	local nValentinesDaySurprise_Metempsychosis = tValentinesDaySurprise_Cont["Metempsychosis"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nValentinesDaySurprise_Level,nValentinesDaySurprise_Metempsychosis,nValentinesDaySurprise_UserId) then
		return
	end
	
	
	local nValentinesDaySurprise_Event = tValentinesDaySurprise_Stc[nValentinesDaySurprise_Index]["EventType"]
	local nValentinesDaySurprise_Type = tValentinesDaySurprise_Stc[nValentinesDaySurprise_Index]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,1,4,nValentinesDaySurprise_UserId) then
		Task_SetStatistic(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,nValentinesDaySurprise_UserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nValentinesDaySurprise_Event, nValentinesDaySurprise_Type, ">", 0) then
		return
	end
	
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["Sign"])
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		return
	end
	
	if Task_SetStatistic(nValentinesDaySurprise_Event, nValentinesDaySurprise_Type, 1, 1) then
		Task_SetStcTimestamp(nValentinesDaySurprise_Event, nValentinesDaySurprise_Type, 0)
		RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["Sign"])
	end	
end

-- 获取掩码值
function ValentinesDaySurprise_GetStcValue(nValentinesDaySurprise_Index,nValentinesDaySurprise_NowUserId)
	local nValentinesDaySurprise_UserId = nValentinesDaySurprise_NowUserId or Get_UserId()
	local nValentinesDaySurprise_Event = tValentinesDaySurprise_Stc[nValentinesDaySurprise_Index]["EventType"]
	local nValentinesDaySurprise_Type = tValentinesDaySurprise_Stc[nValentinesDaySurprise_Index]["TypeData"]
	
	local nValentinesDaySurprise_Data = Get_UserStatisticValue(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,nValentinesDaySurprise_UserId)
	return nValentinesDaySurprise_Data
end

--设置掩码值
function ValentinesDaySurprise_SetStcValue(nValentinesDaySurprise_Index,nValentinesDaySurprise_Data,nValentinesDaySurprise_NowUserId)
	local nValentinesDaySurprise_UserId = nValentinesDaySurprise_NowUserId or Get_UserId()
	local nValentinesDaySurprise_Event = tValentinesDaySurprise_Stc[nValentinesDaySurprise_Index]["EventType"]
	local nValentinesDaySurprise_Type = tValentinesDaySurprise_Stc[nValentinesDaySurprise_Index]["TypeData"]
	
	if Task_SetStatistic(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,nValentinesDaySurprise_Data,1,nValentinesDaySurprise_UserId) then
		Task_SetStcTimestamp(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,nValentinesDaySurprise_UserId)
		return true
	end
	return false
end
--击杀活动地图怪物时刷出NPC
function ValentinesDaySurprise_KillMonsterForNpc(nValentinesDaySurprise_MonsterId)
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_MapId = Get_UserMapId(nValentinesDaySurprise_UserId)
	
	local nValentinesDaySurprise_MonMapId = Get_MonsterMapID()
	local nValentinesDaySurprise_MonCellx = Get_MonsterPosX()
	local nValentinesDaySurprise_MonCelly = Get_MonsterPosY()
	
	local tValentinesDaySurprise_NpcPos = {}--记录未刷新的喜鹊爸爸和妈妈对应的全局表data位
	tValentinesDaySurprise_NpcPos[1] = 0
	tValentinesDaySurprise_NpcPos[2] = 0
	--喜鹊妈妈任务隔天重置
	local nValentinesDaySurprise_Event1 = tValentinesDaySurprise_Stc[2]["EventType"]
	local nValentinesDaySurprise_Type1 = tValentinesDaySurprise_Stc[2]["TypeData"]
	
	local nValentinesDaySurprise_Event2 = tValentinesDaySurprise_Stc[3]["EventType"]
	local nValentinesDaySurprise_Type2 = tValentinesDaySurprise_Stc[3]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,1,4,nValentinesDaySurprise_UserId) then
		--完成掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,nValentinesDaySurprise_UserId)
		--收集数量掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,nValentinesDaySurprise_UserId)
	end
	--喜鹊爸爸任务隔天重置
	local nValentinesDaySurprise_Event4 = tValentinesDaySurprise_Stc[4]["EventType"]
	local nValentinesDaySurprise_Type4 = tValentinesDaySurprise_Stc[4]["TypeData"]
	
	local nValentinesDaySurprise_Event5 = tValentinesDaySurprise_Stc[5]["EventType"]
	local nValentinesDaySurprise_Type5 = tValentinesDaySurprise_Stc[5]["TypeData"]
	
	local nValentinesDaySurprise_Event6 = tValentinesDaySurprise_Stc[6]["EventType"]
	local nValentinesDaySurprise_Type6 = tValentinesDaySurprise_Stc[6]["TypeData"]
	
	local nValentinesDaySurprise_Event7 = tValentinesDaySurprise_Stc[7]["EventType"]
	local nValentinesDaySurprise_Type7 = tValentinesDaySurprise_Stc[7]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event4,nValentinesDaySurprise_Type4,1,4,nValentinesDaySurprise_UserId) then
		--完成掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event4,nValentinesDaySurprise_Type4,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event4,nValentinesDaySurprise_Type4,0,nValentinesDaySurprise_UserId)
		--选项掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event5,nValentinesDaySurprise_Type5,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event5,nValentinesDaySurprise_Type5,0,nValentinesDaySurprise_UserId)
		
		Task_SetStatistic(nValentinesDaySurprise_Event6,nValentinesDaySurprise_Type6,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event6,nValentinesDaySurprise_Type6,0,nValentinesDaySurprise_UserId)
		
		Task_SetStatistic(nValentinesDaySurprise_Event7,nValentinesDaySurprise_Type7,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event7,nValentinesDaySurprise_Type7,0,nValentinesDaySurprise_UserId)
		
	end
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	
	--判断喜鹊是否存在
	for i = 1,2 do
		for j = 1,3 do
			local nValentinesDaySurprise_Data = Get_SysDynaGlobalData(tValentinesDaySurprise_Cont["Npc"][nValentinesDaySurprise_MapId][i][j]["GlobalId"],tValentinesDaySurprise_Cont["Npc"][nValentinesDaySurprise_MapId][i][j]["ExistPos"]) or 0
			--如果data为0则该喜鹊未刷新在地图上
			if nValentinesDaySurprise_Data <= 0  then
				tValentinesDaySurprise_NpcPos[i] = j
			end
		end
	end
	local nValentinesDaySurprise_NpcType = 0 --记录本次刷新哪种喜鹊
	--记录喜鹊妈妈任务是否完成
	local nValentinesDaySurprise_TaskStatusMom = ValentinesDaySurprise_GetStcValue(2,nValentinesDaySurprise_UserId)
	--记录喜鹊爸爸任务是否完成
	local nValentinesDaySurprise_TaskStatusDad = ValentinesDaySurprise_GetStcValue(4,nValentinesDaySurprise_UserId) 
	
	if tValentinesDaySurprise_NpcPos[1] > 0 and tValentinesDaySurprise_NpcPos[2] > 0 then
		--如果该玩家两个任务都未完成
		if nValentinesDaySurprise_TaskStatusMom < 2 and nValentinesDaySurprise_TaskStatusDad < 1 then
			--两种喜鹊的数量都未达到上限,则随机刷新一种喜鹊
			nValentinesDaySurprise_NpcType = 1
			if Sys_Random(1,2) then
				nValentinesDaySurprise_NpcType = 2
			end
		elseif nValentinesDaySurprise_TaskStatusMom < 2 and nValentinesDaySurprise_TaskStatusDad >= 1 then
			nValentinesDaySurprise_NpcType = 1
		elseif nValentinesDaySurprise_TaskStatusMom >= 2 and nValentinesDaySurprise_TaskStatusDad < 1 then
			nValentinesDaySurprise_NpcType = 2
		else
			return
		end
	elseif tValentinesDaySurprise_NpcPos[1] > 0 and tValentinesDaySurprise_NpcPos[2] <= 0 and nValentinesDaySurprise_TaskStatusMom < 2 then
		nValentinesDaySurprise_NpcType = 1
	elseif tValentinesDaySurprise_NpcPos[1] <= 0 and tValentinesDaySurprise_NpcPos[2] > 0 and nValentinesDaySurprise_TaskStatusDad < 1 then
		nValentinesDaySurprise_NpcType = 2
	else
		--两种喜鹊的数量都已经达到上限,则不刷新NPC
		return
	end

	
	if Sys_Random(tValentinesDaySurprise_Cont["Npc"]["Begin"],tValentinesDaySurprise_Cont["Npc"]["End"]) then
		local nValentinesDaySurprise_Index = tValentinesDaySurprise_NpcPos[nValentinesDaySurprise_NpcType]
		local nValentinesDaySurprise_Pos = tValentinesDaySurprise_Cont["Npc"][nValentinesDaySurprise_MapId][nValentinesDaySurprise_NpcType][nValentinesDaySurprise_Index]["ExistPos"]
		local nValentinesDaySurprise_GlobalId = tValentinesDaySurprise_Cont["Npc"][nValentinesDaySurprise_MapId][nValentinesDaySurprise_NpcType][nValentinesDaySurprise_Index]["GlobalId"]
		local nValentinesDaySurprise_NpcId = tValentinesDaySurprise_Cont["Npc"][nValentinesDaySurprise_MapId][nValentinesDaySurprise_NpcType][nValentinesDaySurprise_Index]["Id"]
		if Npc_MoveNpcPos(nValentinesDaySurprise_NpcId, nValentinesDaySurprise_MonMapId, nValentinesDaySurprise_MonCellx, nValentinesDaySurprise_MonCelly) then
			
			Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["RefreshNpc"][nValentinesDaySurprise_NpcType], "NpcPosition_PathFind</N>" .. nValentinesDaySurprise_NpcId, nil)
			-- 设置移动NPC的时间戳
			local nValentinesDaySurprise_Time = os.time()
			Sys_SetSynaGlobalData(nValentinesDaySurprise_GlobalId,nValentinesDaySurprise_Pos,1)--记录为已经移出NPC
			Sys_SetSynaGlobalTime(nValentinesDaySurprise_GlobalId,nValentinesDaySurprise_Pos,nValentinesDaySurprise_Time)--记录移出数据
			
		end
	end
	
	--打怪掉落揽鹊枝
	ValentinesDaySurprise_KillMonster()
end
--喜鹊妈妈领奖逻辑
function ValentinesDaySurprise_HandEgg()
	
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_TaskId = tValentinesDaySurprise_Cont["XiQueTaskId"]
	local nValentinesDaySurprise_MapId = Get_UserMapId(nValentinesDaySurprise_UserId)
	local nValentinesDaySurprise_NpcId = tValentinesDaySurprise_FindEgg[nValentinesDaySurprise_MapId]
	
	local nValentinesDaySurprise_Event1 = tValentinesDaySurprise_Stc[2]["EventType"]
	local nValentinesDaySurprise_Type1 = tValentinesDaySurprise_Stc[2]["TypeData"]
	
	local nValentinesDaySurprise_Event2 = tValentinesDaySurprise_Stc[3]["EventType"]
	local nValentinesDaySurprise_Type2 = tValentinesDaySurprise_Stc[3]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,1,4,nValentinesDaySurprise_UserId) then
		--完成掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,nValentinesDaySurprise_UserId)
		if Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
			Task_DelTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
		end
	end
	if Task_StcInterval(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,1,4,nValentinesDaySurprise_UserId) then
		--收集数量掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,nValentinesDaySurprise_UserId)
	end
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
		Task_AddTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
	end
	--0为未领取任务，1为领取任务，2为完成任务
	if Task_ChkStcValue(nValentinesDaySurprise_Event1, nValentinesDaySurprise_Type1, ">=", 2) then
		-- 今日已领过奖励
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["HandEggLimit"], nil, nil, nValentinesDaySurprise_UserId)
		return
	elseif Task_ChkStcValue(nValentinesDaySurprise_Event1, nValentinesDaySurprise_Type1, "<=", 0) then
		--今日未接受过任务
		ValentinesDaySurprise_SetStcValue(2,1,nValentinesDaySurprise_UserId)--设置为接受任务
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["EggNoEnough"], "NpcPosition_PathFind</N>" .. nValentinesDaySurprise_NpcId, nil, nValentinesDaySurprise_UserId)
		return
	end
	--收集的数量不足5个
	if Task_ChkStcValue(nValentinesDaySurprise_Event2, nValentinesDaySurprise_Type2, "<", 5) then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["EggNoEnough"], "NpcPosition_PathFind</N>" .. nValentinesDaySurprise_NpcId, nil, nValentinesDaySurprise_UserId)
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["GetReward"],nValentinesDaySurprise_UserId)
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		local sValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
		Sys_MsgBox(sValentinesDaySurprise_Msg,nil,nil,nValentinesDaySurprise_UserId)
		return
	end
	-- 打掩码 领奖
	if Task_SetStatistic(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,2,1,nValentinesDaySurprise_UserId) then
		Task_SetStcTimestamp(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,nValentinesDaySurprise_UserId)
		RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["GetReward"])
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["CompleteEgg"],nil,nil,nValentinesDaySurprise_UserId)
		
		--判断任务完成
		if Task_ChkTaskDetailValue(nValentinesDaySurprise_TaskId,"CompleteFlag",">=",1,nValentinesDaySurprise_UserId) then
			return
		end
		-- 完成任务
		Task_SetTaskDetailCompleteFlag(nValentinesDaySurprise_TaskId,1, nValentinesDaySurprise_UserId)
		--播放光效
		User_EffectAdd("self",tValentinesDaySurprise_Cont["TaskEffect"])
	end
end
--收集喜鹊蛋逻辑
function ValentinesDaySurprise_CollectEgg()
	local nValentinesDaySurprise_NpcId = Get_NpcId()
	local nValentinesDaySurprise_NpcMapID = Get_NpcMapID(nValentinesDaySurprise_NpcId)
	local nValentinesDaySurprise_NpcPositionX = Get_NpcPositionX(nValentinesDaySurprise_NpcId)
	local nValentinesDaySurprise_NpcPositionY = Get_NpcPositionY(nValentinesDaySurprise_NpcId)
	local nValentinesDaySurprise_GenId = 0
	local nValentinesDaySurprise_TaskId = tValentinesDaySurprise_Cont["XiQueTaskId"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		Npc_MoveNpcPos(nValentinesDaySurprise_NpcId, 5000, 100, 100)--移除npc
		return
	end
	local nValentinesDaySurprise_Event1 = tValentinesDaySurprise_Stc[2]["EventType"]
	local nValentinesDaySurprise_Type1 = tValentinesDaySurprise_Stc[2]["TypeData"]
	
	local nValentinesDaySurprise_Event2 = tValentinesDaySurprise_Stc[3]["EventType"]
	local nValentinesDaySurprise_Type2 = tValentinesDaySurprise_Stc[3]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,1,4,nValentinesDaySurprise_UserId) then
		--完成掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,nValentinesDaySurprise_UserId)
		if Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
			Task_DelTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
		end
	end
	if Task_StcInterval(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,1,4,nValentinesDaySurprise_UserId) then
		--收集数量掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,nValentinesDaySurprise_UserId)
	end
	--0为未领取任务，1为领取任务，2为完成任务
	if Task_ChkStcValue(nValentinesDaySurprise_Event1, nValentinesDaySurprise_Type1, ">=", 2) then
		-- 今日已领过奖励
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["CollectEggLimit"], nil, nil, nValentinesDaySurprise_UserId)
		return
	elseif Task_ChkStcValue(nValentinesDaySurprise_Event1, nValentinesDaySurprise_Type1, "<=", 0) then
		--今日未接受过任务
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["NoCollectEggTask"], nil, nil, nValentinesDaySurprise_UserId)
		return
	end
	--判断收集的数量
	if Task_ChkStcValue(nValentinesDaySurprise_Event2, nValentinesDaySurprise_Type2, ">=", 5) then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["EggEnough"], nil, nil, nValentinesDaySurprise_UserId)
		return
	end
	--判断当前坐标点下对应的怪物generatorId为多少
	for i = 26834,26848 do 
		for j = 1,3 do
			if nValentinesDaySurprise_NpcMapID==tValentinesDaySurprise_PosInformation[i][j][1] and nValentinesDaySurprise_NpcPositionX == tValentinesDaySurprise_PosInformation[i][j][2] and nValentinesDaySurprise_NpcPositionY == tValentinesDaySurprise_PosInformation[i][j][3] then
				nValentinesDaySurprise_GenId = tValentinesDaySurprise_PosInformation[i][j][4]
			end
		end
	end
	--获取下次采集点的刷新坐标
	local nValentinesDaySurprise_Tmp = #tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId]
	local nValentinesDaySurprise_MapIndex = math.random(1,nValentinesDaySurprise_Tmp)
	local nValentinesDaySurprise_NewMapId = tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId][nValentinesDaySurprise_MapIndex][1]
	local nValentinesDaySurprise_NewPosX = tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId][nValentinesDaySurprise_MapIndex][2]
	local nValentinesDaySurprise_NewPosY = tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId][nValentinesDaySurprise_MapIndex][3]
	
	if nValentinesDaySurprise_NewMapId == nValentinesDaySurprise_NpcMapID and nValentinesDaySurprise_NewPosX == nValentinesDaySurprise_NpcPositionX and nValentinesDaySurprise_NewPosY == nValentinesDaySurprise_NpcPositionY then
		-- 如果和当前坐标一致则换下一个坐标
		nValentinesDaySurprise_MapIndex = nValentinesDaySurprise_MapIndex + 1
		if nValentinesDaySurprise_MapIndex == (nValentinesDaySurprise_Tmp+1) then
			nValentinesDaySurprise_MapIndex = 1
		end
		nValentinesDaySurprise_NewMapId = tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId][nValentinesDaySurprise_MapIndex][1]
		nValentinesDaySurprise_NewPosX = tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId][nValentinesDaySurprise_MapIndex][2]
		nValentinesDaySurprise_NewPosY = tValentinesDaySurprise_PosInformation[nValentinesDaySurprise_NpcId][nValentinesDaySurprise_MapIndex][3]
		
	end
	--读条采集
	local nValentinesDaySurprise_Secs = tValentinesDaySurprise_Cont["ArticleRead"]["Secs"]
	local sValentinesDaySurprise_Content = tValentinesDaySurprise_Text["SysMsg"]["SetExplore"]
	local nValentinesDaySurprise_ActionId = tValentinesDaySurprise_Cont["ArticleRead"]["ExploreActionId"]
	local sValentinesDaySurprise_Func = "ValentinesDaySurprise_SetExplore</N>"..nValentinesDaySurprise_TaskId.."</N>"..nValentinesDaySurprise_NpcId.."</N>"..nValentinesDaySurprise_NewMapId.."</N>"..nValentinesDaySurprise_NewPosX.."</N>"..nValentinesDaySurprise_NewPosY.."</N>"..nValentinesDaySurprise_NpcMapID.."</N>"..nValentinesDaySurprise_NpcPositionX.."</N>"..nValentinesDaySurprise_NpcPositionY.."</N>"..nValentinesDaySurprise_GenId
	User_SetExplore(nValentinesDaySurprise_Secs,sValentinesDaySurprise_Content,nValentinesDaySurprise_ActionId,sValentinesDaySurprise_Func,nil,nValentinesDaySurprise_UserId)
end
-- 采集灵鹊蛋触发 
function ValentinesDaySurprise_SetExplore(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_NpcId,nValentinesDaySurprise_NewMapId,nValentinesDaySurprise_NewPosX,nValentinesDaySurprise_NewPosY,nValentinesDaySurprise_NpcMapID,nValentinesDaySurprise_NpcPositionX,nValentinesDaySurprise_NpcPositionY,nValentinesDaySurprise_GenId,nValentinesDaySurprise_UserId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		Npc_MoveNpcPos(nValentinesDaySurprise_NpcId, 5000, 100, 100)--移除npc
		return
	end
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(3,nValentinesDaySurprise_UserId)
	local nValentinesDaySurprise_TaskData = Get_TaskDetailData1(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
	--如果是第五次采集则判断背包空间
	if nValentinesDaySurprise_Data+1 >= 5 then
		
		-- 判断背包空间
		local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["GetReward"],nValentinesDaySurprise_UserId)
		if not User_CheckLeftSpace(nValentinesDaySurprise_Space,nValentinesDaySurprise_UserId) then
			local sValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
			Sys_MsgBox(sValentinesDaySurprise_Msg,nil,nil,nValentinesDaySurprise_UserId)
			return
		end
	end
	if ValentinesDaySurprise_SetStcValue(3,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then
		Task_SetTaskDetailData1(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId)
		
		if nValentinesDaySurprise_Data+1 == 5 then
			--如果是第五次收集则提示去寻找灵鹊妈妈
			--Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["EggEnough"], nil, nil, nValentinesDaySurprise_UserId)
			
			--如果是第五次则给予奖励
			if ValentinesDaySurprise_SetStcValue(2,2,nValentinesDaySurprise_UserId) then
				
				-- 完成任务
				Task_SetTaskDetailCompleteFlag(nValentinesDaySurprise_TaskId,1,nValentinesDaySurprise_UserId)
				
				--播放光效
				User_EffectAdd("self",tValentinesDaySurprise_Cont["TaskEffect"],nValentinesDaySurprise_UserId)
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["GetReward"],nValentinesDaySurprise_UserId,nil)
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["CompleteEgg"],nil,nil,nValentinesDaySurprise_UserId)
				
			end
		else
			Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["CollectEggSuccess"],nil,nil,nValentinesDaySurprise_UserId)
		end		
		--更换NPC位置
		Npc_MoveNpcPos(nValentinesDaySurprise_NpcId, nValentinesDaySurprise_NewMapId, nValentinesDaySurprise_NewPosX, nValentinesDaySurprise_NewPosY)
		--30%的可能出现魔鸠宝宝
		if Sys_Random(tValentinesDaySurprise_Cont["CollectMonster"]["Begin"],tValentinesDaySurprise_Cont["CollectMonster"]["End"]) then
			Monster_AddMonster(nValentinesDaySurprise_NpcMapID,nValentinesDaySurprise_NpcPositionX,nValentinesDaySurprise_NpcPositionY,nValentinesDaySurprise_GenId,tValentinesDaySurprise_Cont["CollectMonster"]["MonsterId"])
		end
	end
	
end
-- 检测npc，超过五分钟的Npc移走
function ValentinesDaySurprise_ChkTimeMoveNpc()
	--判断喜鹊是否存在
	for k,v in pairs(tValentinesDaySurprise_Cont["ActivityMapID"]) do
		for i = 1,2 do
			for j = 1,3 do
				local nValentinesDaySurprise_Time = os.time()
				local nValentinesDaySurprise_NpcTime =  Get_SysDynaGlobalTime(tValentinesDaySurprise_Cont["Npc"][v][i][j]["GlobalId"],tValentinesDaySurprise_Cont["Npc"][v][i][j]["ExistPos"]) or 0
				--npc在外面
				if nValentinesDaySurprise_NpcTime > 0 then
					if (nValentinesDaySurprise_Time - nValentinesDaySurprise_NpcTime) >= 300 then
						--超过五分钟则移走NPC
						if Npc_MoveNpcPos(tValentinesDaySurprise_Cont["Npc"][v][i][j]["Id"], 5000, 100, 100) then
							--清空全局表记录
							Sys_SetSynaGlobalData(tValentinesDaySurprise_Cont["Npc"][v][i][j]["GlobalId"],tValentinesDaySurprise_Cont["Npc"][v][i][j]["ExistPos"],0)
							Sys_SetSynaGlobalTime(tValentinesDaySurprise_Cont["Npc"][v][i][j]["GlobalId"],tValentinesDaySurprise_Cont["Npc"][v][i][j]["ExistPos"],0)
						end
						
					end
				end
			end
		end
	end
end
--喜鹊爸爸任务隔天掩码清零逻辑
function ValentinesDaySurprise_DadTaskClean()
	local nValentinesDaySurprise_UserId = Get_UserId()
	
	local nValentinesDaySurprise_Event1 = tValentinesDaySurprise_Stc[4]["EventType"]
	local nValentinesDaySurprise_Type1 = tValentinesDaySurprise_Stc[4]["TypeData"]
	
	local nValentinesDaySurprise_Event2 = tValentinesDaySurprise_Stc[5]["EventType"]
	local nValentinesDaySurprise_Type2 = tValentinesDaySurprise_Stc[5]["TypeData"]
	
	local nValentinesDaySurprise_Event3 = tValentinesDaySurprise_Stc[6]["EventType"]
	local nValentinesDaySurprise_Type3 = tValentinesDaySurprise_Stc[6]["TypeData"]
	
	local nValentinesDaySurprise_Event4 = tValentinesDaySurprise_Stc[7]["EventType"]
	local nValentinesDaySurprise_Type4 = tValentinesDaySurprise_Stc[7]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,1,4,nValentinesDaySurprise_UserId) then
		--完成掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,nValentinesDaySurprise_UserId)
		--选项掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,nValentinesDaySurprise_UserId)
		
		Task_SetStatistic(nValentinesDaySurprise_Event3,nValentinesDaySurprise_Type3,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event3,nValentinesDaySurprise_Type3,0,nValentinesDaySurprise_UserId)
		
		Task_SetStatistic(nValentinesDaySurprise_Event4,nValentinesDaySurprise_Type4,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event4,nValentinesDaySurprise_Type4,0,nValentinesDaySurprise_UserId)
		
	end
	local nValentinesDaySurprise_Data5 = ValentinesDaySurprise_GetStcValue(5,nValentinesDaySurprise_UserId)
	local nValentinesDaySurprise_Data6 = ValentinesDaySurprise_GetStcValue(6,nValentinesDaySurprise_UserId)
	local nValentinesDaySurprise_Data7 = ValentinesDaySurprise_GetStcValue(7,nValentinesDaySurprise_UserId)
	-- 如果没有正确选项则随机生成一个正确选项
	if not (nValentinesDaySurprise_Data5 == 2 or nValentinesDaySurprise_Data6 == 2 or nValentinesDaySurprise_Data7 == 2) then
		local nValentinesDaySurprise_Index = math.random(5,7)--随机一个选项为正确选项
		--将随机到的正确选项的掩码置为2
		ValentinesDaySurprise_SetStcValue(nValentinesDaySurprise_Index,2,nValentinesDaySurprise_UserId)
	end
end
--找喜鹊爸爸提交银币
function ValentinesDaySurprise_SendGiftMoney()
	local nValentinesDaySurprise_UserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	--隔天掩码清零
	ValentinesDaySurprise_DadTaskClean()
	
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(5,nValentinesDaySurprise_UserId)
	--如果掩码值为1和3则该选项已经被选过了
	if nValentinesDaySurprise_Data == 1 or nValentinesDaySurprise_Data == 3 then
		return
	end
	
	-- 金币不足
	local nValentinesDaySurprise_Cost = tValentinesDaySurprise_Cont["Cost"]["Money"]
	if not User_CanPutMoney2Bag((-1) * nValentinesDaySurprise_Cost) then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["NoMoney"], nil, nil, nValentinesDaySurprise_UserId)
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["GetReward"],nTValentinesDaySurprise_UserId)
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		local sTValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
		Sys_MsgBox(sTValentinesDaySurprise_Msg,nil,nil,nTValentinesDaySurprise_UserId)
		return
	end
	
	--消耗金币
	if User_AddMoney((-1) * nValentinesDaySurprise_Cost) then
		
		
		if nValentinesDaySurprise_Data == 0 then
			--0为错误选项
			if ValentinesDaySurprise_SetStcValue(5,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then
				User_EffectAdd("self",tValentinesDaySurprise_Cont["Effect"]["Failure"],nValentinesDaySurprise_UserId)
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["WrongAnswer"])
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DadTaskFail"])
			end
			
		elseif nValentinesDaySurprise_Data == 2 then
			--2为正确选项
			if ValentinesDaySurprise_SetStcValue(4,1,nValentinesDaySurprise_UserId) then
				ValentinesDaySurprise_SetStcValue(5,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId)
				User_EffectAdd("self",tValentinesDaySurprise_Cont["Effect"]["Success"],nValentinesDaySurprise_UserId)
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DadTaskSuccess"])
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["GetReward"])
			end
		end
			
	end
	
end

--找喜鹊爸爸提交修为值
function ValentinesDaySurprise_SendGiftCultureValue()
	local nValentinesDaySurprise_UserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	--隔天掩码清零
	ValentinesDaySurprise_DadTaskClean()
	
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(6,nValentinesDaySurprise_UserId)
	--如果掩码值为1和3则该选项已经被选过了
	if nValentinesDaySurprise_Data == 1 or nValentinesDaySurprise_Data == 3 then
		return
	end
	
	-- 修为值不足
	local nValentinesDaySurprise_Cost = tValentinesDaySurprise_Cont["Cost"]["CultureValue"]
	local nValentinesDaySurprise_CultureValue = Get_UserCultureValue(nValentinesDaySurprise_UserId)
	if nValentinesDaySurprise_CultureValue < nValentinesDaySurprise_Cost then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["NoCultureValue"], nil, nil, nValentinesDaySurprise_UserId)
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["GetReward"],nTValentinesDaySurprise_UserId)
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		local sTValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
		Sys_MsgBox(sTValentinesDaySurprise_Msg,nil,nil,nTValentinesDaySurprise_UserId)
		return
	end
	
	--消耗修为值
	if User_AddCultureValue((-1) * nValentinesDaySurprise_Cost) then
		
		
		if nValentinesDaySurprise_Data == 0 then
			--0为错误选项
			if ValentinesDaySurprise_SetStcValue(6,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then
				User_EffectAdd("self",tValentinesDaySurprise_Cont["Effect"]["Failure"],nValentinesDaySurprise_UserId)
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["WrongAnswer"])
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DadTaskFail"])
			end
			
		elseif nValentinesDaySurprise_Data == 2 then
			--2为正确选项
			if ValentinesDaySurprise_SetStcValue(4,1,nValentinesDaySurprise_UserId) then
				ValentinesDaySurprise_SetStcValue(6,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId)
				User_EffectAdd("self",tValentinesDaySurprise_Cont["Effect"]["Success"],nValentinesDaySurprise_UserId)
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DadTaskSuccess"])
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["GetReward"])
			end
		end
			
	end
	
end

--找喜鹊爸爸提交赠点
function ValentinesDaySurprise_SendGiftCpB()
	local nValentinesDaySurprise_UserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	--隔天掩码清零
	ValentinesDaySurprise_DadTaskClean()
	
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(7,nValentinesDaySurprise_UserId)
	--如果掩码值为1和3则该选项已经被选过了
	if nValentinesDaySurprise_Data == 1 or nValentinesDaySurprise_Data == 3 then
		return
	end
	
	-- 赠点不足
	local nValentinesDaySurprise_Cost = tValentinesDaySurprise_Cont["Cost"]["MonoEMoney"]
	local nValentinesDaySurprise_MonoEMoney = Get_UserMonoEMoney(nValentinesDaySurprise_UserId)
	if nValentinesDaySurprise_MonoEMoney < nValentinesDaySurprise_Cost then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["NoMonoEMoney"], nil, nil, nValentinesDaySurprise_UserId)
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["GetReward"],nTValentinesDaySurprise_UserId)
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		local sTValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
		Sys_MsgBox(sTValentinesDaySurprise_Msg,nil,nil,nTValentinesDaySurprise_UserId)
		return
	end
	
	--消耗赠点
	if User_AddEMoneyMonoAndLog((-1) * nValentinesDaySurprise_Cost,tValentinesDaySurprise_Log["DadTask"],nValentinesDaySurprise_UserId) then
		
		
		if nValentinesDaySurprise_Data == 0 then
			--0为错误选项
			if ValentinesDaySurprise_SetStcValue(7,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then
				User_EffectAdd("self",tValentinesDaySurprise_Cont["Effect"]["Failure"],nValentinesDaySurprise_UserId)
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["WrongAnswer"])
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DadTaskFail"])
			end
			
		elseif nValentinesDaySurprise_Data == 2 then
			--2为正确选项
			if ValentinesDaySurprise_SetStcValue(4,1,nValentinesDaySurprise_UserId) then
				ValentinesDaySurprise_SetStcValue(7,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId)
				User_EffectAdd("self",tValentinesDaySurprise_Cont["Effect"]["Success"],nValentinesDaySurprise_UserId)
				Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DadTaskSuccess"])
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["GetReward"])
			end
		end
			
	end
	
end

-- 使用招鹊盒前判断时间和位置
function ValentinesDaySurprise_BeforeUseBox(nValentinesDaySurprise_ItemId)
	
	--过期处理
	-- if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		-- if Item_ChkItem(nValentinesDaySurprise_ItemId) and Item_DelItem(nValentinesDaySurprise_ItemId) then
			-- Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DemoBoxOverTime"])
		-- end
		-- return false
	-- end
	
	if ValentinesDaySurprise_InCity() and ValentinesDaySurprise_InActivityMap() then
		if Get_UserHouseId() ~= nValentinesDaySurprise_MapId then
			--出对话框提示传送
			Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["InCity"],"ValentinesDaySurprise_FindCanUseBox")
			return false
		end
	end
	if not ValentinesDaySurprise_AroundGuard() then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["AroundGuard"])
		return false
	end
	return true
end

-- 判断是否在活动地图内
function ValentinesDaySurprise_InActivityMap()
	local nValentinesDaySurprise_MapId = Get_UserMapId()
	for k,v in pairs(tValentinesDaySurprise_Cont["ActivityMapID"]) do
		if v == nValentinesDaySurprise_MapId then
			return false
		end
	end
	return true
end
--  判断是否在双龙城内
function ValentinesDaySurprise_InCity()
	local nValentinesDaySurprise_MapId = Get_UserMapId()
	local nCellx = Get_UserPositionX()
	local nCelly = Get_UserPositionY()

	
	-- 判断是否激情服
	if User_ChkLanguage() == 2 then
		if not SpecialServer_ChkNoGiftServer() then
			if nValentinesDaySurprise_MapId ~= tValentinesDaySurprise_Cont["MapId"]["Normal"] then
				return true
			end
			if tValentinesDaySurprise_Cont["Map"][1]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["Map"][1]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["Map"][1]["MaxCelly"] then
				return true
			end
			if tValentinesDaySurprise_Cont["Map"][2]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["Map"][2]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["Map"][2]["MaxCelly"] then
				return true
			end
			return false
		else
			if nValentinesDaySurprise_MapId ~= tValentinesDaySurprise_Cont["MapId"]["NoGift"] then
				return true
			end
			if tValentinesDaySurprise_Cont["NoGiftMap"][1]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["NoGiftMap"][1]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["NoGiftMap"][1]["MaxCelly"] then
				return true
			end
			return false
		end
	else
		if nValentinesDaySurprise_MapId ~= tValentinesDaySurprise_Cont["MapId"]["Normal"] then
			return true
		end
		if tValentinesDaySurprise_Cont["Map"][1]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["Map"][1]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["Map"][1]["MaxCelly"] then
			return true
		end
		if tValentinesDaySurprise_Cont["Map"][2]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["Map"][2]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["Map"][2]["MaxCelly"] then
			return true
		end
		return false
	end
end

--传送至可以使用招鹊盒的地方
function ValentinesDaySurprise_FindCanUseBox()
	if User_ChkLanguage() == 2 then
		-- 判断是否激情服
		if SpecialServer_ChkNoGiftServer() then
			local nValentinesDaySurprise_MapId = tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"]["MapId"]
			local nValentinesDaySurprise_PosX = tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"]["PosX"]
			local nValentinesDaySurprise_PosY = tValentinesDaySurprise_Cont["FindCanUseBox"]["NoGift"]["PosY"]
			User_UserRandBoundTrans(nValentinesDaySurprise_MapId,nValentinesDaySurprise_PosX,nValentinesDaySurprise_PosY,2,2,1)
		else
			local nValentinesDaySurprise_MapId = tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["MapId"]
			local nValentinesDaySurprise_PosX = tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["PosX"]
			local nValentinesDaySurprise_PosY = tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["PosY"]
			User_UserRandBoundTrans(nValentinesDaySurprise_MapId,nValentinesDaySurprise_PosX,nValentinesDaySurprise_PosY,2,2,1)
		end
	else
		local nValentinesDaySurprise_MapId = tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["MapId"]
		local nValentinesDaySurprise_PosX = tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["PosX"]
		local nValentinesDaySurprise_PosY = tValentinesDaySurprise_Cont["FindCanUseBox"]["Normal"]["PosY"]
		User_UserRandBoundTrans(nValentinesDaySurprise_MapId,nValentinesDaySurprise_PosX,nValentinesDaySurprise_PosY,2,2,1)
	end
end

-- 判断是否在卫兵附近
function ValentinesDaySurprise_AroundGuard()
	local nCellx = Get_UserPositionX()
	local nCelly = Get_UserPositionY()
	
	if User_ChkLanguage() == 2 then
		-- 判断是否激情服
		if not SpecialServer_ChkNoGiftServer() then
			for i=1,#tValentinesDaySurprise_Cont["Guard"] do
				if tValentinesDaySurprise_Cont["Guard"][i]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["Guard"][i]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["Guard"][i]["MaxCelly"] and nCelly > tValentinesDaySurprise_Cont["Guard"][i]["MinCelly"] then
					return false
				end
			end
			return true
		else
			for i=1,#tValentinesDaySurprise_Cont["NoGiftGuard"] do
				if tValentinesDaySurprise_Cont["NoGiftGuard"][i]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["NoGiftGuard"][i]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["NoGiftGuard"][i]["MaxCelly"] and nCelly > tValentinesDaySurprise_Cont["NoGiftGuard"][i]["MinCelly"] then
					return false
				end
			end
			return true
		end
	else
		for i=1,#tValentinesDaySurprise_Cont["Guard"] do
			if tValentinesDaySurprise_Cont["Guard"][i]["MinCellx"] < nCellx and nCellx < tValentinesDaySurprise_Cont["Guard"][i]["MaxCellx"] and nCelly < tValentinesDaySurprise_Cont["Guard"][i]["MaxCelly"] and nCelly > tValentinesDaySurprise_Cont["Guard"][i]["MinCelly"] then
				return false
			end
		end
		return true
	end
end
-- 使用招鹊盒
function ValentinesDaySurprise_UseBox(nValentinesDaySurprise_ItemId)
	--过期判断
	-- if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		-- return
	-- end
	if Item_ChkItem(nValentinesDaySurprise_ItemId) and Item_DelItem(nValentinesDaySurprise_ItemId) then
		local nMapId = Get_UserMapId()
		local nCellx = Get_UserPositionX()+math.random(-3,3)
		local nCelly = Get_UserPositionY()+math.random(-3,3)
		local nMonsterId = tValentinesDaySurprise_Cont["MonsterId"][nValentinesDaySurprise_ItemId]
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["Release"])
		Monster_AddMonster(nMapId,nCellx,nCelly,tValentinesDaySurprise_Cont["GenId"],nMonsterId)
		if nValentinesDaySurprise_ItemId == 3331825 then
			Sys_SystemBroadcast(string.format(tValentinesDaySurprise_Text["SysMsg"]["Broadcast"],Get_UserName()))
		end
	end
	return true
end
-- 批量使用招鹊盒
function ValentinesDaySurprise_UseAllBox(nValentinesDaySurprise_ItemId)
	--过期判断
	-- if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		-- return
	-- end
	local nItemNum = Get_CountItemType(nValentinesDaySurprise_ItemId,0)
	if nItemNum > 10 then
		nItemNum = 10
	end
	for i=1,nItemNum do
		ValentinesDaySurprise_UseBox(nValentinesDaySurprise_ItemId)
	end
end
-- 杀怪掉落
function ValentinesDaySurprise_DemonKillMonster(nValentinesDaySurprise_MonsterId)
	
	local tTab = RewardTemplate_Random(tValentinesDaySurprise_Random,1)
	local nNumIndex = tTab[1]["tAward"][1]["Index"]
	
	
	if tValentinesDaySurprise_MonsterDrop[nValentinesDaySurprise_MonsterId][nNumIndex][1] ~= nil then
		ValentinesDaySurprise_RandomReward(tValentinesDaySurprise_MonsterDrop[nValentinesDaySurprise_MonsterId],nNumIndex)
	else
		ValentinesDaySurprise_UseItemAndMsg(tValentinesDaySurprise_MonsterDrop[nValentinesDaySurprise_MonsterId][nNumIndex])
	end
end
-- 强插用
function ValentinesDaySurprise_RandomReward(tTable,nIndex,nNowUserId)
	if type(tTable[nIndex]) ~= "table" then
		return false
	end

	local nUserId = nNowUserId or Get_UserId()
	tRewardTemplate_DelItemTypeLog[nUserId] = ""
	tRewardTemplate_DelItemNumLog[nUserId] = ""

	-- 判断是否给通用提示
	if tTable[nIndex]["NoTip"] == nil then
		tRewardTemplate_NewRewardItem[nUserId] = 1
	else
		tRewardTemplate_NewRewardItem[nUserId] = nil
	end

	-- -- 上限及背包空间判断
	-- if not RewardTemplate_RandomUpperLimit(tTable,nIndex,nUserId) then
		-- return false
	-- end
	
	-- 花费上限判断
	if not RewardTemplate_Cost(tTable[nIndex],nUserId) then
		return false
	end

	-- 删除物品
	if not RewardTemplate_DelItem(tTable[nIndex],nUserId) then
		return false
	end

	local nFlag,tReward = Probabil_RandomAward(tTable,nIndex)
	local tChar = {"tAward","tAbsoluteAward","tSelfItemChanceAward"}
	local sRewardStr = ""
	local tNewReward = {}

	for i = 1,#tReward do
		tNewReward[i] = {}
		for j,v in pairs(tChar) do
			local tAward = tReward[i][v]
			tNewReward[i][v] = {}
			
			if tAward ~= nil and next(tAward) ~= nil then
				for m,n in pairs (tAward) do
					local sTemp,tNewAward = RewardTemplate_GiveRandom(n,tTable[nIndex],nUserId)
					if tNewAward ~= nil then
						table.insert(tNewReward[i][v],tNewAward)
						-- 判断是否需要打emoneybuylog
						if tNewAward["EmoneyLog"] ~= nil then
							Sys_SaveEmoneyBuy(tNewAward["EmoneyLog"],nUserId)
						end
					end
					if sTemp ~= nil and sTemp ~= "" then
						if sRewardStr == nil or sRewardStr == "" then
							sRewardStr = sTemp
						else
							sRewardStr = string.format(tLuaRes[10026],sRewardStr,tRewardTemplate_Text["Punctuat"],sTemp)
						end
					end
				end
			end
		end
	end
	
	return tNewReward,sRewardStr
end

-- 强插用
function ValentinesDaySurprise_UseItemAndMsg(tReward,nNowUserId,bJudge)
	local nUserId = nNowUserId or Get_UserId()
	tRewardTemplate_DelItemTypeLog[nUserId] = ""
	tRewardTemplate_DelItemNumLog[nUserId] = ""
	tRewardTemplate_NewRewardItem[nUserId] = 1
	
	-- 掩码判断
	local nEvent = tReward["EventType"]
	local nType = tReward["DataType"]
	
	if (bJudge ~= nil) and (not bJudge) then
		return false
	end
	
	if bJudge == nil then
		if (nEvent ~= nil or nType ~= nil) and not RewardTemplate_JudgmentStc(tReward,nUserId) then
			return false
		end
		
		-- -- 上限判断
		-- if not RewardTemplate_UpperLimit(tReward,nUserId) then
			-- return false
		-- end
	end
	
	-- 花费上限判断
	if not RewardTemplate_Cost(tReward,nUserId) then
		return false
	end

	-- 是否要删除物品
	if not RewardTemplate_DelItem(tReward,nUserId) then
		return false
	end
	-- 设置掩码
	if (nEvent ~= nil or nType ~= nil) then
		RewardTemplate_SetStc(tReward,nUserId)
	end
	
	-- 给奖励
	local sRewardStr = RewardTemplate_Reward(tReward,nUserId)
	
	if tReward["EmoneyLog"] ~= nil then
		Sys_SaveEmoneyBuy(tReward["EmoneyLog"],nUserId)
	end
	
	return true,sRewardStr
end

--上线自动接七夕任务引导  
function ValentinesDaySurprise_Login()
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_TaskId = tValentinesDaySurprise_Cont["TaskId"]
	local nValentinesDaySurprise_Level = tValentinesDaySurprise_Cont["Level"]
	local nValentinesDaySurprise_Metempsychosis = tValentinesDaySurprise_Cont["Metempsychosis"]

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		if Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
			Task_DelTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
		end
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nValentinesDaySurprise_Level,nValentinesDaySurprise_Metempsychosis,nValentinesDaySurprise_UserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
		Task_AddTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
	end
	
	
	
end

--任务完成接口
function ValentinesDaySurprise_TaskComplete()
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_TaskId = tValentinesDaySurprise_Cont["TaskId"]


	--判断是否接受任务
	if not Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nValentinesDaySurprise_TaskId,"CompleteFlag",">=",1,nValentinesDaySurprise_UserId) then
		return
	end
	-- 完成任务
	Task_SetTaskDetailCompleteFlag(nValentinesDaySurprise_TaskId,1, nValentinesDaySurprise_UserId)
	--播放光效
	User_EffectAdd("self",tValentinesDaySurprise_Cont["TaskEffect"])
end

-- 打开商店
function ValentinesDaySurprise_Shop(nValentinesDaySurprise_NpcId)
	-- 活动过期
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	
	-- 打开天石商店
	User_OpenDialog(0,nValentinesDaySurprise_NpcId)
	return true
end

-- 打开桃源灵玉
function ValentinesDaySurprise_ToTaoYuan()
	-- 活动过期
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	
	-- 打开桃园灵玉
	User_OpenDialog(3009)
	return true
end

--打怪掉落揽鹊枝
function ValentinesDaySurprise_KillMonster()
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_Level = tValentinesDaySurprise_Cont["Level"]
	local nValentinesDaySurprise_Metempsychosis = tValentinesDaySurprise_Cont["Metempsychosis"]
	local nValentinesDaySurprise_Event = tValentinesDaySurprise_Stc[11]["EventType"]
	local nValentinesDaySurprise_Type = tValentinesDaySurprise_Stc[11]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,1,4,nValentinesDaySurprise_UserId) then
		Task_SetStatistic(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,nValentinesDaySurprise_UserId)
	end
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nValentinesDaySurprise_Level,nValentinesDaySurprise_Metempsychosis,nValentinesDaySurprise_UserId) then
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["KillMonster"])
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		return
	end
	
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(11,nValentinesDaySurprise_UserId)
	local nValentinesDaySurprise_BridgeLevel = QixiFestivalNPC_GetUserDate(nValentinesDaySurprise_UserId)--鹊桥等级
	--如果超过4阶鹊桥则为4阶
	if nValentinesDaySurprise_BridgeLevel > 4 then
		nValentinesDaySurprise_BridgeLevel = 4
	end
	local nValentinesDaySurprise_Limit = tValentinesDaySurprise_Cont["Monster"][nValentinesDaySurprise_BridgeLevel] or 10
	
	if nValentinesDaySurprise_Data < nValentinesDaySurprise_Limit then
		if Sys_Random(tValentinesDaySurprise_Cont["Monster"]["Begin"],tValentinesDaySurprise_Cont["Monster"]["End"]) then
			if ValentinesDaySurprise_SetStcValue(11,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then
				RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["KillMonster"])
			end
		end
	end
end
--魔鸠宝宝掉落揽鹊枝
function ValentinesDaySurprise_BabyMonster()
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_Level = tValentinesDaySurprise_Cont["Level"]
	local nValentinesDaySurprise_Metempsychosis = tValentinesDaySurprise_Cont["Metempsychosis"]
	local nValentinesDaySurprise_Event = tValentinesDaySurprise_Stc[13]["EventType"]
	local nValentinesDaySurprise_Type = tValentinesDaySurprise_Stc[13]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,1,4,nValentinesDaySurprise_UserId) then
		Task_SetStatistic(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,nValentinesDaySurprise_UserId)
	end
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nValentinesDaySurprise_Level,nValentinesDaySurprise_Metempsychosis,nValentinesDaySurprise_UserId) then
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["KillMonster"])
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		return
	end
	
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(13,nValentinesDaySurprise_UserId)
	local nValentinesDaySurprise_BridgeLevel = QixiFestivalNPC_GetUserDate(nValentinesDaySurprise_UserId)--鹊桥等级

	local nValentinesDaySurprise_Limit = tValentinesDaySurprise_Stc[13]["Limit"]
	
	if nValentinesDaySurprise_Data < nValentinesDaySurprise_Limit then
		if ValentinesDaySurprise_SetStcValue(13,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then
			RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["KillMonster"])
		end
	end
end
--购买招鹊盒
function ValentinesDaySurprise_BuyBox(nValentinesDaySurprise_ItemId)
	local nValentinesDaySurprise_UserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end
	-- 赠点不足
	local nValentinesDaySurprise_Cost = tValentinesDaySurprise_Reward["Buy"][nValentinesDaySurprise_ItemId]["CostEMoneyMono"]["Value"]
	local nValentinesDaySurprise_MonoEMoney = Get_UserMonoEMoney(nValentinesDaySurprise_UserId)
	if nValentinesDaySurprise_MonoEMoney < nValentinesDaySurprise_Cost then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["NoMonoEMoney"], nil, nil, nValentinesDaySurprise_UserId)
		return
	end
	-- 判断背包空间
	local nValentinesDaySurprise_Space = RewardTemplate_GetRewardSpace(tValentinesDaySurprise_Reward["Buy"][nValentinesDaySurprise_ItemId],nTValentinesDaySurprise_UserId)
	if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
		local sTValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
		Sys_MsgBox(sTValentinesDaySurprise_Msg,nil,nil,nTValentinesDaySurprise_UserId)
		return
	end
	RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward["Buy"][nValentinesDaySurprise_ItemId])
end
----------------------------------NPC部分---------------------------------------------
-- '喜鹊妈妈'
tNpcFace[4378] = 198
tNpcFace[4400] = 198
tNpcFace[4401] = 198
for k,v in pairs(tValentinesDaySurprise_Cont["MomId"]) do
tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
tNpcGossip[v]["OptionHidden"] = 1
tNpcGossip[v]["DialogueText"] = tValentinesDaySurprise_Text[26746]
--活动时间中
tNpcGossip[v]["Text1-1"] = {111,112}
tNpcGossip[v]["tOption1-1"] = {111}
tNpcGossip[v]["ChkFunc1-1"] = function()
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_TaskId = tValentinesDaySurprise_Cont["XiQueTaskId"]
	
	local nValentinesDaySurprise_Event1 = tValentinesDaySurprise_Stc[2]["EventType"]
	local nValentinesDaySurprise_Type1 = tValentinesDaySurprise_Stc[2]["TypeData"]
	
	local nValentinesDaySurprise_Event2 = tValentinesDaySurprise_Stc[3]["EventType"]
	local nValentinesDaySurprise_Type2 = tValentinesDaySurprise_Stc[3]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,1,4,nValentinesDaySurprise_UserId) then
		--完成掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,0,nValentinesDaySurprise_UserId)
		if Task_ChkTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId) then
			Task_DelTaskDetail(nValentinesDaySurprise_TaskId,nValentinesDaySurprise_UserId)
		end
	end
	if Task_StcInterval(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,1,4,nValentinesDaySurprise_UserId) then
		--收集数量掩码重置
		Task_SetStatistic(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,0,nValentinesDaySurprise_UserId)
	end
	
	tNpcGossip[v]["Option111"] = tValentinesDaySurprise_Text[26746]["Option111"]
	-- 已集齐但未领奖
	
	if Task_ChkStcValue(nValentinesDaySurprise_Event2,nValentinesDaySurprise_Type2,">=",5) and Task_ChkStcValue(nValentinesDaySurprise_Event1,nValentinesDaySurprise_Type1,"<",2) then
		
		tNpcGossip[v]["Option111"] = tValentinesDaySurprise_Text[26746]["Option112"]
	end
	
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])
end

tNpcGossip[v]["OptionFunc111"] = "ValentinesDaySurprise_HandEgg"
end

-- '喜鹊爸爸'
tNpcFace[4379] = 199
tNpcFace[4402] = 199
tNpcFace[4403] = 199
for k,v in pairs(tValentinesDaySurprise_Cont["DadId"]) do
tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
tNpcGossip[v]["OptionHidden"] = 1
tNpcGossip[v]["DialogueText"] = tValentinesDaySurprise_Text[26749]
--活动时间中
tNpcGossip[v]["Text1-1"] = {111,112,113,114}
tNpcGossip[v]["tOption1-1"] = {111,112,113,114}
tNpcGossip[v]["ChkFunc1-1"] = function()
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_Event1 = tValentinesDaySurprise_Stc[4]["EventType"]
	local nValentinesDaySurprise_Type1 = tValentinesDaySurprise_Stc[4]["TypeData"]
	--隔天掩码清零
	ValentinesDaySurprise_DadTaskClean()
	
	tNpcGossip[v]["tOption1-1"] = {}
	-- 已领奖
	if Task_ChkStcValue(nValentinesDaySurprise_Event1, nValentinesDaySurprise_Type1, ">", 0) then
		tNpcGossip[v]["tOption1-1"] = {114}
		return true
	end
	
	-- 如果选项的掩码值为0或2则为未被选过
	for i = 5,7 do
		local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(i,nValentinesDaySurprise_UserId)
		if nValentinesDaySurprise_Data == 0 or nValentinesDaySurprise_Data == 2 then
			local nValentinesDaySurprise_Num = i - 4
			local nValentinesDaySurprise_Num2 = 11 .. nValentinesDaySurprise_Num
			table.insert(tNpcGossip[v]["tOption1-1"],nValentinesDaySurprise_Num2)
		end
	end
	
	
	
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])
end

tNpcGossip[v]["OptionFunc111"] = "ValentinesDaySurprise_SendGiftMoney"--5万银两
tNpcGossip[v]["OptionFunc112"] = "ValentinesDaySurprise_SendGiftCultureValue"--100修为值
tNpcGossip[v]["OptionFunc113"] = "ValentinesDaySurprise_SendGiftCpB"--27天石（赠）
end

-- 26953,'天石商店',0032,43817,
tNpcFace[5670] = 189
tNpcGossip[26953] = tNpcGossip[26953] or DefaultNpc:new{}
tNpcGossip[26953]["OptionHidden"] = 1
tNpcGossip[26953]["DialogueText"] = tValentinesDaySurprise_Text[26953]

--活动时间中
tNpcGossip[26953]["Text1-1"] = {111,112,113,114}
tNpcGossip[26953]["tOption1-1"] = {111,112,114,113}
tNpcGossip[26953]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])
end
tNpcGossip[26953]["OptionFunc111"] = "ValentinesDaySurprise_Shop</N>26953"
tNpcGossip[26953]["OptionFunc112"] = "ValentinesDaySurprise_ToTaoYuan"
tNpcGossip[26953]["OptionPoint114"] = "1-2" --购买招鹊盒
--购买招鹊盒
tNpcGossip[26953]["Text1-2"] = {121}
tNpcGossip[26953]["tOption1-2"] = {121,122,123,124}
tNpcGossip[26953]["OptionPoint121"] = "2-1" --购买一阶招鹊盒二次确认
tNpcGossip[26953]["OptionPoint122"] = "2-2" --购买二阶招鹊盒二次确认
tNpcGossip[26953]["OptionPoint123"] = "2-3" --购买三阶招鹊盒二次确认
--购买一阶招鹊盒二次确认
tNpcGossip[26953]["Text2-1"] = {211}
tNpcGossip[26953]["tOption2-1"] = {211,212}
tNpcGossip[26953]["OptionFunc211"] = "ValentinesDaySurprise_BuyBox</N>3331823"
--购买二阶招鹊盒二次确认
tNpcGossip[26953]["Text2-2"] = {221}
tNpcGossip[26953]["tOption2-2"] = {221,222}
tNpcGossip[26953]["OptionFunc221"] = "ValentinesDaySurprise_BuyBox</N>3331824"
--购买三阶招鹊盒二次确认
tNpcGossip[26953]["Text2-3"] = {231}
tNpcGossip[26953]["tOption2-3"] = {231,232}
tNpcGossip[26953]["OptionFunc231"] = "ValentinesDaySurprise_BuyBox</N>3331825"
---------------------------------物品部分---------------------------------------------

-- 一级招鹊盒
tItemFace[3331823] = 1386
tItem[3331823] = tItem[3331823] or {}
tItem[3331823]["Function"] = function(nValentinesDaySurprise_ItemId,sItemName)
	if not ValentinesDaySurprise_BeforeUseBox(nValentinesDaySurprise_ItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nValentinesDaySurprise_ItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nValentinesDaySurprise_ItemId,"1-1")
		return
	else
		ValentinesDaySurprise_UseBox(nValentinesDaySurprise_ItemId)
	end
end

tItem[3331823]["DialogueText"] = tValentinesDaySurprise_Text[3331823]
tItem[3331823]["Text1-1"] = {111,112}
tItem[3331823]["tOption1-1"] = {111,112}
tItem[3331823]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3331823,0)
	tItem[3331823]["Text111"] = string.format(tValentinesDaySurprise_Text[3331823]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3331823]["Option112"] = string.format(tValentinesDaySurprise_Text[3331823]["Option112"],10)
	else
		tItem[3331823]["Option112"] = string.format(tValentinesDaySurprise_Text[3331823]["Option112"],nItemNum)
	end
	return true
end
tItem[3331823]["OptionFunc111"] = "ValentinesDaySurprise_UseBox</N>3331823"
tItem[3331823]["OptionFunc112"] = "ValentinesDaySurprise_UseAllBox</N>3331823"

-- 二级招鹊盒
tItemFace[3331824] = 2307
tItem[3331824] = tItem[3331824] or {}
tItem[3331824]["Function"] = function(nValentinesDaySurprise_ItemId,sItemName)
	if not ValentinesDaySurprise_BeforeUseBox(nValentinesDaySurprise_ItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nValentinesDaySurprise_ItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nValentinesDaySurprise_ItemId,"1-1")
		return
	else
		ValentinesDaySurprise_UseBox(nValentinesDaySurprise_ItemId)
	end
end
tItem[3331824]["DialogueText"] = tValentinesDaySurprise_Text[3331824]
tItem[3331824]["Text1-1"] = {111,112}
tItem[3331824]["tOption1-1"] = {111,112}
tItem[3331824]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3331824,0)
	tItem[3331824]["Text111"] = string.format(tValentinesDaySurprise_Text[3331824]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3331824]["Option112"] = string.format(tValentinesDaySurprise_Text[3331824]["Option112"],10)
	else
		tItem[3331824]["Option112"] = string.format(tValentinesDaySurprise_Text[3331824]["Option112"],nItemNum)
	end
	return true
end
tItem[3331824]["OptionFunc111"] = "ValentinesDaySurprise_UseBox</N>3331824"
tItem[3331824]["OptionFunc112"] = "ValentinesDaySurprise_UseAllBox</N>3331824"

-- 三级招鹊盒
tItemFace[3331825] = 2601
tItem[3331825] = tItem[3331825] or {}
tItem[3331825]["Function"] = function(nValentinesDaySurprise_ItemId,sItemName)
	if not ValentinesDaySurprise_BeforeUseBox(nValentinesDaySurprise_ItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nValentinesDaySurprise_ItemId,0)
	if nItemNum > 1 then
		LinkItemGossipFunc_New(nValentinesDaySurprise_ItemId,"1-1")
		return
	else
		ValentinesDaySurprise_UseBox(nValentinesDaySurprise_ItemId)
	end
end
tItem[3331825]["DialogueText"] = tValentinesDaySurprise_Text[3331825]
tItem[3331825]["Text1-1"] = {111,112}
tItem[3331825]["tOption1-1"] = {111,112}
tItem[3331825]["ChkFunc1-1"] = function()
	local nItemNum = Get_CountItemType(3331825,0)
	tItem[3331825]["Text111"] = string.format(tValentinesDaySurprise_Text[3331825]["Text111"],nItemNum)
	if nItemNum > 10 then
		tItem[3331825]["Option112"] = string.format(tValentinesDaySurprise_Text[3331825]["Option112"],10)
	else
		tItem[3331825]["Option112"] = string.format(tValentinesDaySurprise_Text[3331825]["Option112"],nItemNum)
	end
	return true
end
tItem[3331825]["OptionFunc111"] = "ValentinesDaySurprise_UseBox</N>3331825"
tItem[3331825]["OptionFunc112"] = "ValentinesDaySurprise_UseAllBox</N>3331825"


-- 3331820,'灵鹊报恩礼包'
-- 3331821,'灵鹊赠礼包'
-- 3331822,'灵鹊极运礼包'
tItem[3331820] = tItem[3331820] or {}
tItem[3331820]["Function"] = function(nItemId,sItemName)
	
	-- 过期处理
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		local nValentinesDaySurprise_Num = Get_CountItemType(nItemId,0)
		
		local tValentinesDaySurprise_Reward = CommonFunc_Copy(tValentinesDaySurprise_Reward["TimeOver"])
		tValentinesDaySurprise_Reward["DeleteItem"][1]["Id"] = nItemId
		tValentinesDaySurprise_Reward["DeleteItem"][1]["ItemNum"] = nValentinesDaySurprise_Num
		tValentinesDaySurprise_Reward["RewardStrengthValue"]["Value"] = nValentinesDaySurprise_Num	
		RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward)
		User_TalkChannel2005(tValentinesDaySurprise_Text["SysMsg"]["OverTime"])
		local sValentinesDaySurprise_Log = string.format(tValentinesDaySurprise_Log["OverTime"],nItemId,nValentinesDaySurprise_Num)
		Sys_SaveActionFestivalLog(sValentinesDaySurprise_Log)
		return
	end
	RewardTemplate_RandomReward(tValentinesDaySurprise_Reward,nItemId)
end
tItem[3331822] = tItem[3331820] or {}

tItem[3331821] = tItem[3331821] or {}
tItem[3331821]["Function"] = function(nItemId,sItemName)
	local nValentinesDaySurprise_UserId = Get_UserId()
	local nValentinesDaySurprise_Level = tValentinesDaySurprise_Cont["Level2"]
	local nValentinesDaySurprise_Metempsychosis = tValentinesDaySurprise_Cont["Metempsychosis2"]
	local nValentinesDaySurprise_Event = tValentinesDaySurprise_Stc[12]["EventType"]
	local nValentinesDaySurprise_Type = tValentinesDaySurprise_Stc[12]["TypeData"]
	--隔天
	if Task_StcInterval(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,1,4,nValentinesDaySurprise_UserId) then
		Task_SetStatistic(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,1,nValentinesDaySurprise_UserId)
		Task_SetStcTimestamp(nValentinesDaySurprise_Event,nValentinesDaySurprise_Type,0,nValentinesDaySurprise_UserId)
	end
	
	-- 过期处理
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		local nValentinesDaySurprise_Num = Get_CountItemType(nItemId,0)
		
		local tValentinesDaySurprise_Reward = CommonFunc_Copy(tValentinesDaySurprise_Reward["TimeOver"])
		tValentinesDaySurprise_Reward["DeleteItem"][1]["Id"] = nItemId
		tValentinesDaySurprise_Reward["DeleteItem"][1]["ItemNum"] = nValentinesDaySurprise_Num
		tValentinesDaySurprise_Reward["RewardStrengthValue"]["Value"] = nValentinesDaySurprise_Num	
		RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward)
		User_TalkChannel2005(tValentinesDaySurprise_Text["SysMsg"]["OverTime"])
		local sValentinesDaySurprise_Log = string.format(tValentinesDaySurprise_Log["OverTime"],nItemId,nValentinesDaySurprise_Num)
		Sys_SaveActionFestivalLog(sValentinesDaySurprise_Log)
		return
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nValentinesDaySurprise_Level,nValentinesDaySurprise_Metempsychosis,nValentinesDaySurprise_UserId) then
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["LevelLimit"])
			
		return
	end
	local nValentinesDaySurprise_Data = ValentinesDaySurprise_GetStcValue(12,nValentinesDaySurprise_UserId)
	if nValentinesDaySurprise_Data < tValentinesDaySurprise_Cont["ItemLimit"] then 
		-- 判断背包空间
		local nValentinesDaySurprise_Space = RewardTemplate_GetRandomSpace(tValentinesDaySurprise_Reward,nItemId) 
		if not User_CheckLeftSpace(nValentinesDaySurprise_Space) then
			local sValentinesDaySurprise_Msg = string.format(tValentinesDaySurprise_Text["SysMsg"]["NoSpace"],nValentinesDaySurprise_Space)
			Sys_MsgBox(sValentinesDaySurprise_Msg,nil,nil,nValentinesDaySurprise_UserId)
			return
		end
		if ValentinesDaySurprise_SetStcValue(12,nValentinesDaySurprise_Data+1,nValentinesDaySurprise_UserId) then 
			RewardTemplate_RandomReward(tValentinesDaySurprise_Reward,nItemId)
		end
	else
		Sys_MsgBox(tValentinesDaySurprise_Text["SysMsg"]["DayOpenLimit"],nil,nil,nValentinesDaySurprise_UserId)
	end
	
	
end
tItem[3332167] = tItem[3332167] or {}
tItem[3332167]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tValentinesDaySurprise_Reward[nItemId])
	
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tValentinesDaySurprise_Reward[nItemId])
end
tItem[3332168] = tItem[3332167] or {}
tItem[3332216] = tItem[3332167] or {}
tItem[3332217] = tItem[3332167] or {}
tItem[3332218] = tItem[3332167] or {}

---------------------------------怪物部分---------------------------------------------
--击杀活动地图的怪物时刷出活动NPC 并掉落揽鹊枝
local tValentinesDaySurprise_KillMonsterForNpc = {}
tValentinesDaySurprise_KillMonsterForNpc["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tValentinesDaySurprise_KillMonsterForNpc["Function"]= ValentinesDaySurprise_KillMonsterForNpc
tValentinesDaySurprise_KillMonsterForNpc["MonsterId"] = {6496,6497,6498,6499,6500,6501,6502}
table.insert(tMonsterDrop_AreaLoad,tValentinesDaySurprise_KillMonsterForNpc)

--锁妖盒
local tValentinesDaySurprise_DemonKillMonster = {}
tValentinesDaySurprise_DemonKillMonster["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tValentinesDaySurprise_DemonKillMonster["Function"]= ValentinesDaySurprise_DemonKillMonster
tValentinesDaySurprise_DemonKillMonster["MonsterId"] = {6531,6532,6533}
table.insert(tMonsterDrop_AreaLoad,tValentinesDaySurprise_DemonKillMonster)

--魔鸠宝宝
local tValentinesDaySurprise_BabyMonster = {}
tValentinesDaySurprise_BabyMonster["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tValentinesDaySurprise_BabyMonster["Function"]= ValentinesDaySurprise_BabyMonster
tValentinesDaySurprise_BabyMonster["MonsterId"] = {6545}
table.insert(tMonsterDrop_AreaLoad,tValentinesDaySurprise_BabyMonster)

-- 野外打怪掉落（普通服）
local tValentinesDaySurprise_Monster = {}
	tValentinesDaySurprise_Monster["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tValentinesDaySurprise_Monster["Function"] = ValentinesDaySurprise_KillMonster
table.insert(tMonsterDrop_AreaLoad,tValentinesDaySurprise_Monster)
-- 野外打怪掉落（激情服）
local tValentinesDaySurprise_Monster_NoGift = {}
	tValentinesDaySurprise_Monster_NoGift["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tValentinesDaySurprise_Monster_NoGift["Function"] = ValentinesDaySurprise_KillMonster
	tValentinesDaySurprise_Monster_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tValentinesDaySurprise_Monster_NoGift)


-------------------------------时间自检--------------------------------------------
-- 每分钟时间自检 检测到时间的npc移走
tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func, ValentinesDaySurprise_ChkTimeMoveNpc)

--上线给玩家加上任务面板
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ValentinesDaySurprise_Login)