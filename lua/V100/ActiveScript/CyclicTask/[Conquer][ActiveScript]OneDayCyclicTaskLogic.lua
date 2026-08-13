------------------------------------------------------------------------------------
--Name:		181019[口袋征服][任务脚本]24小时循环任务细化逻辑部分
--Creator: 	兰瑞妹
--Created:	2018/10/24
------------------------------------------------------------------------------------

-- 命名前缀
-- OneDay_CyclicTaskLogic_

-- logid 12001190

-- #stc 掩码说明 
-- #stc(186,05) 当前玩家接受的任务id
-- #stc(186,06) 当前阶段玩家是否完成任务==1完成 ==2领取奖励
-- #stc(186,07) 储存玩家杀怪数量或完成情况
-- #怪物大师与组合杀怪记录怪物
-- #stc(187,87) 储存怪物id索引
-- #stc(187,88) 储存怪物id索引
-- #stc(187,89) 储存怪物id索引或怪物数量
-- #stc(187,90) 储存怪物id索引或怪物数量
-- #stc(187,92) 背包信
-- #stc(189,96) 储存玩家当前完成赏金任务次数

--动态存储表说明
-- GlobalId 53075
-- data0 二进制含2^1 表示接受过任务类型1 含2^2表示接受过任务类型2 含2^3表示接受过任务类型3类推，最大值
		-- 每8小时重置一次
-- data1 表示当前此小时的任务id
-- data2 用来储存怪物索引id
-- data3 用来储存怪物索引id
-- data4 用来储存当前时段需击杀怪物数量
-- datastr4 用来标志是否已经执行过清除动态码（点击npc）
-- datastr5 用来标志是否已经执行过清除动态码（时间自检）
-- 试炼神速榜--时间--从小到大
-- GlobalId 53076-53077 储存第一到第5玩家排行信息
-- 试炼战神榜--个数--从大到小
-- GlobalId 53080-53081 储存第一到第5玩家排行信息

-- GlobalId 53232
-- data0 每日全服限量赤炼石+5
-- data1 每周全服限量赤炼石+6
--------------------------------------数据部分配置--------------------------------------
local tOneDay_CyclicTaskLogic_Count = {}
	-- 每小时00分重置任务
	tOneDay_CyclicTaskLogic_Count["Time"] = "00 02"
	tOneDay_CyclicTaskLogic_Count["OutTime"] = "00 02"
	-- 活动等级
	tOneDay_CyclicTaskLogic_Count["Level"] = 120
	tOneDay_CyclicTaskLogic_Count["incarnation"] = 0
	-- 23492,'天下钱庄总管'
	tOneDay_CyclicTaskLogic_Count["MainNpcId"] = 23492
	-- 23519,'天帝宝库'
	tOneDay_CyclicTaskLogic_Count["RewardNpcId"] = 23519
	-- 3311375,'循环赏金令'
	tOneDay_CyclicTaskLogic_Count["TaskItem"] = 3311375
	-- 3311374,'万宝秘钥碎片'
	tOneDay_CyclicTaskLogic_Count["PieceItem"] = 3311374
	tOneDay_CyclicTaskLogic_Count["PieceItemNum"] = 3
	
	-- 杀怪掉落
	tOneDay_CyclicTaskLogic_Count["Min"] = 300
	tOneDay_CyclicTaskLogic_Count["Max"] = 10000
	
	-- 八小时任务重新循环
	tOneDay_CyclicTaskLogic_Count["TurnInterval"] = 510
	-- 倒计时
	tOneDay_CyclicTaskLogic_Count["UserTime"] = 180
	
	-- 动态码
	tOneDay_CyclicTaskLogic_Count["GlobalId"] = 53075
	-- 全服限量动态码
	tOneDay_CyclicTaskLogic_Count["LimitGlobalId"] = 53232
	
	-- 任务id底数
	tOneDay_CyclicTaskLogic_Count["TaskIdBase"] = 10000
	-- 怪物大师-- 数量12
	tOneDay_CyclicTaskLogic_Count["FinishNum"] = 12
	-- 杀怪竞速 -- 3分钟
	tOneDay_CyclicTaskLogic_Count["FinishTime"] = 180
	
	-- 排行榜信息
	tOneDay_CyclicTaskLogic_Count["Ranking"] = {}
	-- 试炼神速榜
	tOneDay_CyclicTaskLogic_Count["Ranking"][1] = {}
	-- 标题
	tOneDay_CyclicTaskLogic_Count["Ranking"][1]["TitleIndex"] = "Text231"
	-- 信息列
	tOneDay_CyclicTaskLogic_Count["Ranking"][1]["InforIndex"] = "Text232"
	-- 说明信息
	tOneDay_CyclicTaskLogic_Count["Ranking"][1]["DesIndex"] = "Text2313"
	-- 排行索引
	tOneDay_CyclicTaskLogic_Count["Ranking"][1]["RankingIndex"] = 234927
	-- 试炼战神榜
	tOneDay_CyclicTaskLogic_Count["Ranking"][2] = {}
	tOneDay_CyclicTaskLogic_Count["Ranking"][2]["TitleIndex"] = "Text241"
	tOneDay_CyclicTaskLogic_Count["Ranking"][2]["InforIndex"] = "Text242"
	tOneDay_CyclicTaskLogic_Count["Ranking"][2]["DesIndex"] = "Text2413"
	tOneDay_CyclicTaskLogic_Count["Ranking"][2]["RankingIndex"] = 234928
	-- 排行具体
	tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"] = {}
	tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][01] = "Text233"
	tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][02] = "Text234"
	tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][03] = "Text235"
	tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][04] = "Text236"
	tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][05] = "Text237"
	-- tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][06] = "Text238"
	-- tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][07] = "Text239"
	-- tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][08] = "Text2310"
	-- tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][09] = "Text2311"
	-- tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"][10] = "Text2312"
	
	-- 珍宝收集--任务对应物品
	tOneDay_CyclicTaskLogic_Count["TreasuresId"] = {}
	-- 提交攻击符交易券3张
	tOneDay_CyclicTaskLogic_Count["TreasuresId"][20001] = 3300971
	-- 提交粉碎符交易券3张
	tOneDay_CyclicTaskLogic_Count["TreasuresId"][20002] = 3300921
	-- 提交抗暴符交易券3张
	tOneDay_CyclicTaskLogic_Count["TreasuresId"][20003] = 3300931
	-- 提交生命符交易券3张
	tOneDay_CyclicTaskLogic_Count["TreasuresId"][20004] = 3300981
	-- 提交坚固符交易券3张
	tOneDay_CyclicTaskLogic_Count["TreasuresId"][20005] = 3300941
	-- 提交减伤符交易券3张
	tOneDay_CyclicTaskLogic_Count["TreasuresId"][20006] = 3300961
	-- 提交数量
	tOneDay_CyclicTaskLogic_Count["TreasuresId"]["ItemNum"] = 3
	
	-- 材料收集--任务对应片区
	tOneDay_CyclicTaskLogic_Count["MaterialCollect"] = {}
	-- 在清风原击败任意妖匪，收集10个清风宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialCollect"][30001] = 1
	-- 在枫溪林击败任意妖匪，收集10个枫溪宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialCollect"][30002] = 2
	-- 在绝情谷击败任意妖匪，收集10个绝情宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialCollect"][30003] = 3
	-- 在大漠击败任意妖匪，收集10个大漠宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialCollect"][30004] = 4
	-- 在白鹭城击败任意妖匪，收集10个白鹭宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialCollect"][30005] = 5
	tOneDay_CyclicTaskLogic_Count["MaterialId"] = {}
	-- 在清风原击败任意妖匪，收集10个清风宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialId"][30001] = 3311396
	-- 在枫溪林击败任意妖匪，收集10个枫溪宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialId"][30002] = 3311397
	-- 在绝情谷击败任意妖匪，收集10个绝情宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialId"][30003] = 3311398
	-- 在大漠击败任意妖匪，收集10个大漠宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialId"][30004] = 3311399
	-- 在白鹭城击败任意妖匪，收集10个白鹭宝珠
	tOneDay_CyclicTaskLogic_Count["MaterialId"][30005] = 3311400
	tOneDay_CyclicTaskLogic_Count["MaterialId"]["ItemNum"] = 10
	
	-- 任务索引对应任务
	tOneDay_CyclicTaskLogic_Count["TaskToIndex"] = {}
	-- 墨守迷城
	tOneDay_CyclicTaskLogic_Count["TaskToIndex"][4] = "TaskToMonsterId"
	-- 野外杀怪
	tOneDay_CyclicTaskLogic_Count["TaskToIndex"][5] = "WildMonsters"
	-- 组合杀怪
	tOneDay_CyclicTaskLogic_Count["TaskToIndex"][6] = "CombinationMonsters"
	-- 怪物大师
	tOneDay_CyclicTaskLogic_Count["TaskToIndex"][7] = "MonsterMaster"
	-- 杀怪竞速
	tOneDay_CyclicTaskLogic_Count["TaskToIndex"][8] = "MonsterRacing"
	
	-- 组合杀怪地宫索引
	tOneDay_CyclicTaskLogic_Count["UnderGround"] = {}
	-- 五湖秘境(3056)
	tOneDay_CyclicTaskLogic_Count["UnderGround"][3056] = 8
	-- 冰封地穴(1926)
	tOneDay_CyclicTaskLogic_Count["UnderGround"][1926] = 7
	-- 敦隍迷宫(1001)
	tOneDay_CyclicTaskLogic_Count["UnderGround"][1001] = 6
	-- 桃源秘境(10029)
	tOneDay_CyclicTaskLogic_Count["UnderGround"][10029] = 10
	
	-- 组合杀怪片区索引
	tOneDay_CyclicTaskLogic_Count["Area"] = {}
	-- 第一片区(1002)
	tOneDay_CyclicTaskLogic_Count["Area"][1002] = 1
	-- 第二片区(1011)
	tOneDay_CyclicTaskLogic_Count["Area"][1011] = 2
	-- 第三片区(1020)
	tOneDay_CyclicTaskLogic_Count["Area"][1020] = 3
	-- 第四片区(1000)
	tOneDay_CyclicTaskLogic_Count["Area"][1000] = 4
	-- 第五片区(1015)
	tOneDay_CyclicTaskLogic_Count["Area"][1015] = 5
	
	-- 怪物大师与组合杀怪记录设置需要乘以的倍数
	tOneDay_CyclicTaskLogic_Count["Multiple"] = {}
	tOneDay_CyclicTaskLogic_Count["Multiple"][1] = 1000000
	tOneDay_CyclicTaskLogic_Count["Multiple"][2] = 1000
	tOneDay_CyclicTaskLogic_Count["Multiple"][3] = 1
	
	-- 杀怪存储基数
	tOneDay_CyclicTaskLogic_Count["KillSave"] = 50
	
-- Log表
local tOneDay_CyclicTaskLogic_Log = {}
	-- 领取任务
	tOneDay_CyclicTaskLogic_Log["AccecptTask"] = "0,0,0,0,12001190,1[1],%d,0"
	tOneDay_CyclicTaskLogic_Log["AccecptEmoneyLog"] = "250	22038	1	1	1	"
	-- 完成任务
	tOneDay_CyclicTaskLogic_Log["FinishTask"] = "0,0,0,0,12001190,2[1],%d,0"
	tOneDay_CyclicTaskLogic_Log["FinishEmoneyLog"] = "250	22039	1	1	1	"
	-- 珍宝收集提交道具
	tOneDay_CyclicTaskLogic_Log["TreasureTask"] = "0,0,%d,%d,12001190,2,%d,0"
	-- 上交任务
	tOneDay_CyclicTaskLogic_Log["HaveTaskItem"] = "0,0,%d,1,12001190,2,%d,0"
	-- 未完成任务删除物品
	tOneDay_CyclicTaskLogic_Log["DelTaskItem"] = "0,0,%d,1,12001190,2[1],%d,0"
	-- 发邮件
	tOneDay_CyclicTaskLogic_Log["Mail"] = "0,0,%d,0,12001190,2,0,0"

-- stc掩码
local tOneDay_CyclicTaskLogic_Stc = {}
	-- 当前玩家接受的任务id
	tOneDay_CyclicTaskLogic_Stc[1] = {}
	tOneDay_CyclicTaskLogic_Stc[1]["EventType"] = 186
	tOneDay_CyclicTaskLogic_Stc[1]["DataType"] = 05
	-- 当前阶段玩家是否完成任务==1完成 ==2领取奖励
	tOneDay_CyclicTaskLogic_Stc[2] = {}
	tOneDay_CyclicTaskLogic_Stc[2]["EventType"] = 186
	tOneDay_CyclicTaskLogic_Stc[2]["DataType"] = 06
	-- 储存玩家杀怪数量
	tOneDay_CyclicTaskLogic_Stc[3] = {}
	tOneDay_CyclicTaskLogic_Stc[3]["EventType"] = 186
	tOneDay_CyclicTaskLogic_Stc[3]["DataType"] = 07
	
	tOneDay_CyclicTaskLogic_Stc[4] = {}
	tOneDay_CyclicTaskLogic_Stc[4][1] = {}
	tOneDay_CyclicTaskLogic_Stc[4][1]["EventType"] = 187
	tOneDay_CyclicTaskLogic_Stc[4][1]["DataType"] = 87
	tOneDay_CyclicTaskLogic_Stc[4][1]["Basic"] = 1000000000
	tOneDay_CyclicTaskLogic_Stc[4][2] = {}
	tOneDay_CyclicTaskLogic_Stc[4][2]["EventType"] = 187
	tOneDay_CyclicTaskLogic_Stc[4][2]["DataType"] = 88
	tOneDay_CyclicTaskLogic_Stc[4][2]["Basic"] = 1000000000
	tOneDay_CyclicTaskLogic_Stc[4][3] = {}
	tOneDay_CyclicTaskLogic_Stc[4][3]["EventType"] = 187
	tOneDay_CyclicTaskLogic_Stc[4][3]["DataType"] = 89
	tOneDay_CyclicTaskLogic_Stc[4][3]["Basic"] = 1000000000
	tOneDay_CyclicTaskLogic_Stc[4][4] = {}
	tOneDay_CyclicTaskLogic_Stc[4][4]["EventType"] = 187
	tOneDay_CyclicTaskLogic_Stc[4][4]["DataType"] = 90
	tOneDay_CyclicTaskLogic_Stc[4][4]["Basic"] = 1000000000
	
	-- 储存玩家接受的任务需击杀怪物数量
	tOneDay_CyclicTaskLogic_Stc[5] = {}
	tOneDay_CyclicTaskLogic_Stc[5]["EventType"] = 189
	tOneDay_CyclicTaskLogic_Stc[5]["DataType"] = 96
-- 当前完成任务
local nOneDay_CyclicTaskLogic_HaveRandom = 0
-- 当前已随机任务id
local nOneDay_CyclicTaskLogic_NowTaskId = 0
local nOneDay_CyclicTaskLogic_NewMonsterIndex = 0
local nOneDay_CyclicTaskLogic_OtherMonsterIndex = 0
-- 组合杀怪任务，随机怪物
local tOneDay_CyclicTaskLogic_MonsterId = {}
local tOneDay_CyclicTaskLogic_UserMonsterId = {}
local tOneDay_CyclicTaskLogic_MonsterNum = {}
-- 怪物大师玩家数量
local tOneDay_CyclicTaskLogic_MonsterType = {}
-- 杀怪计数=--50只记一次掩码
local tOneDay_CyclicTaskLogic_KillMonsterNum = {}

-- 区域对应怪物id
local tOneDay_CyclicTaskLogic_Area = {}
	tOneDay_CyclicTaskLogic_Area[1] = {1,2,3,4,64}
	tOneDay_CyclicTaskLogic_Area[2] = {6,7,8,9,65,66,67,68}
	tOneDay_CyclicTaskLogic_Area[3] = {10,11,12,13,4185}
	tOneDay_CyclicTaskLogic_Area[4] = {14,15,16,17,74,75,76}
	tOneDay_CyclicTaskLogic_Area[5] = {18,19,55,78,79,84,77}
	tOneDay_CyclicTaskLogic_Area[6] = {20,56,57,58,81,82,83,86}
	tOneDay_CyclicTaskLogic_Area[7] = {4236,4237,4238}
	tOneDay_CyclicTaskLogic_Area[8] = {2684,2685,2686,2687,2838}
	tOneDay_CyclicTaskLogic_Area[9] = {2781,2782,2783,3953,3954,3955}
	tOneDay_CyclicTaskLogic_Area[10] = {3944,3945}
	
-- 杀怪信息
local tOneDay_CyclicTaskLogic_KillData = {}
	-- 墨守迷城
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40002] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40002]["MonsterId"] = 3385
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40002]["MonsterNum"] = 50
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40003] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40003]["MonsterId"] = 3386
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40003]["MonsterNum"] = 50
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40004] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40004]["MonsterId"] = 3387
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40004]["MonsterNum"] = 10
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40005] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40005]["MonsterId"] = 3389
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40005]["MonsterNum"] = 50
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40006] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40006]["MonsterId"] = 3390
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40006]["MonsterNum"] = 50
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40007] = {}
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40007]["MonsterId"] = 3391
	tOneDay_CyclicTaskLogic_KillData["TaskToMonsterId"][40007]["MonsterNum"] = 10
	-- 野外杀怪
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001]["MonsterId"] = 2685
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001]["TaskId"] = 6922
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002]["MonsterId"] = 2686
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003]["MonsterId"] = 2684
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003]["MonsterNum"] = 300
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004]["MonsterId"] = 2687
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004]["MonsterNum"] = 300
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005]["MonsterId"] = {20,56,81,86}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005]["TaskId"] = 6926
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006]["MonsterId"] = {57,82}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007]["MonsterId"] = {58,83}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008]["MonsterId"] = 4236
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009]["MonsterId"] = 4237
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009]["TaskId"] = 6930
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010]["MonsterId"] = 4238
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011]["MonsterId"] = 3944
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012]["MonsterId"] = 3945
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013]["MonsterId"] = 14
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013]["TaskId"] = 6934
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014]["MonsterId"] = 17
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014]["TaskId"] = 6938
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015]["MonsterId"] = 3382
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015]["MonsterNum"] = 500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015]["TaskId"] = 6942
	-- -- 1000只
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016]["MonsterId"] = 2685
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016]["MonsterNum"] = 1000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016]["TaskId"] = 6921
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017]["MonsterId"] = {20,56,81,86}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017]["MonsterNum"] = 1000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017]["TaskId"] = 6925
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018]["MonsterId"] = 4237
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018]["MonsterNum"] = 1000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018]["TaskId"] = 6929
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019]["MonsterId"] = 14
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019]["MonsterNum"] = 1000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019]["TaskId"] = 6933
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020]["MonsterId"] = 17
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020]["MonsterNum"] = 1000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020]["TaskId"] = 6937
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021]["MonsterId"] = 3382
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021]["MonsterNum"] = 1000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021]["TaskId"] = 6941
	-- -- 1500只
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022]["MonsterId"] = 2685
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022]["MonsterNum"] = 1500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022]["TaskId"] = 6920
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023]["MonsterId"] = {20,56,81,86}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023]["MonsterNum"] = 1500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023]["TaskId"] = 6924
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024]["MonsterId"] = 4237
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024]["MonsterNum"] = 1500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024]["TaskId"] = 6928
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025]["MonsterId"] = 14
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025]["MonsterNum"] = 1500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025]["TaskId"] = 6932
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026]["MonsterId"] = 17
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026]["MonsterNum"] = 1500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026]["TaskId"] = 6936
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027]["MonsterId"] = 3382
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027]["MonsterNum"] = 1500
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027]["TaskId"] = 6940
	-- -- 2000只
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028]["MonsterId"] = 2685
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028]["MonsterNum"] = 2000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028]["TaskId"] = 6919
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029]["MonsterId"] = {20,56,81,86}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029]["MonsterNum"] = 2000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029]["TaskId"] = 6923
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030]["MonsterId"] = 4237
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030]["MonsterNum"] = 2000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030]["TaskId"] = 6927
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031]["MonsterId"] = 14
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031]["MonsterNum"] = 2000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031]["TaskId"] = 6931
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032]["MonsterId"] = 17
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032]["MonsterNum"] = 2000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032]["TaskId"] = 6935
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033] = {}
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033]["MonsterId"] = 3382
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033]["MonsterNum"] = 2000
	-- tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033]["TaskId"] = 6939
	
	--500只
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001]["MonsterId"] = 11
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50001]["TaskId"] = 6922
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002]["MonsterId"] = 13
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50002]["TaskId"] = 6926
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003]["MonsterId"] = 14
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50003]["TaskId"] = 6930
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004]["MonsterId"] = 17
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50004]["TaskId"] = 6934
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005]["MonsterId"] = 18
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50005]["TaskId"] = 6938
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006]["MonsterId"] = 55
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50006]["TaskId"] = 6942
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007]["MonsterId"] = 2684
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50007]["TaskId"] = 6952
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008]["MonsterId"] = 2686
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50008]["TaskId"] = 6956
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009]["MonsterId"] = 3967
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50009]["TaskId"] = 6960
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010]["MonsterId"] = 3968
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50010]["TaskId"] = 6964
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011]["MonsterId"] = 3969
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50011]["TaskId"] = 6968
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012]["MonsterId"] = 3974
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012]["MonsterNum"] = 500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50012]["TaskId"] = 6972
	--1000只
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013]["MonsterId"] = 11
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50013]["TaskId"] = 6921
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014]["MonsterId"] = 13
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50014]["TaskId"] = 6925
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015]["MonsterId"] = 14
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50015]["TaskId"] = 6929
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016]["MonsterId"] = 17
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50016]["TaskId"] = 6933
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017]["MonsterId"] = 18
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50017]["TaskId"] = 6937
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018]["MonsterId"] = 55
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50018]["TaskId"] = 6941
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019]["MonsterId"] = 2684
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50019]["TaskId"] = 6951
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020]["MonsterId"] = 2686
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50020]["TaskId"] = 6955
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021]["MonsterId"] = 3967
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50021]["TaskId"] = 6959
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022]["MonsterId"] = 3968
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50022]["TaskId"] = 6963
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023]["MonsterId"] = 3969
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50023]["TaskId"] = 6967
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024]["MonsterId"] = 3974
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024]["MonsterNum"] = 1000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50024]["TaskId"] = 6971
	
	--1500只
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025]["MonsterId"] = 11
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50025]["TaskId"] = 6920
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026]["MonsterId"] = 13
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50026]["TaskId"] = 6924
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027]["MonsterId"] = 14
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50027]["TaskId"] = 6928
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028]["MonsterId"] = 17
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50028]["TaskId"] = 6932
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029]["MonsterId"] = 18
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50029]["TaskId"] = 6936
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030]["MonsterId"] = 55
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50030]["TaskId"] = 6940
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031]["MonsterId"] = 2684
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50031]["TaskId"] = 6950
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032]["MonsterId"] = 2686
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50032]["TaskId"] = 6954
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033]["MonsterId"] = 3967
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50033]["TaskId"] = 6958
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50034] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50034]["MonsterId"] = 3968
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50034]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50034]["TaskId"] = 6962
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50035] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50035]["MonsterId"] = 3969
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50035]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50035]["TaskId"] = 6966
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50036] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50036]["MonsterId"] = 3974
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50036]["MonsterNum"] = 1500
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50036]["TaskId"] = 6970
	--2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50037] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50037]["MonsterId"] = 11
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50037]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50037]["TaskId"] = 6919
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50038] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50038]["MonsterId"] = 13
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50038]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50038]["TaskId"] = 6923
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50039] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50039]["MonsterId"] = 14
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50039]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50039]["TaskId"] = 6927
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50040] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50040]["MonsterId"] = 17
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50040]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50040]["TaskId"] = 6931
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50041] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50041]["MonsterId"] = 18
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50041]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50041]["TaskId"] = 6935
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50042] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50042]["MonsterId"] = 55
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50042]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50042]["TaskId"] = 6939
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50043] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50043]["MonsterId"] = 2684
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50043]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50043]["TaskId"] = 6949
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50044] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50044]["MonsterId"] = 2686
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50044]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50044]["TaskId"] = 6953
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50045] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50045]["MonsterId"] = 3967
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50045]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50045]["TaskId"] = 6957
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50046] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50046]["MonsterId"] = 3968
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50046]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50046]["TaskId"] = 6961
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50047] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50047]["MonsterId"] = 3969
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50047]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50047]["TaskId"] = 6965
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50048] = {}
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50048]["MonsterId"] = 3974
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50048]["MonsterNum"] = 2000
	tOneDay_CyclicTaskLogic_KillData["WildMonsters"][50048]["TaskId"] = 6969
	
	-- 组合杀怪
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"] = {}
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60001] = {}
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60001]["MonsterId"] = {}
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60001]["MonsterNum"] = 100
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60001]["Arear"] = 4
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60002] = {}
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60002]["MonsterId"] = {}
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60002]["MonsterNum"] = 150
	tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][60002]["Arear"] = 5
	-- 怪物大师
	tOneDay_CyclicTaskLogic_KillData["MonsterMaster"] = {}
	-- 杀怪竞速
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80001] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80001]["MonsterId"] = 1
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80001]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80002] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80002]["MonsterId"] = 2
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80002]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80003] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80003]["MonsterId"] = 3
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80003]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80004] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80004]["MonsterId"] = 4
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80004]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80005] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80005]["MonsterId"] = 15
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80005]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80006] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80006]["MonsterId"] = 14
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80006]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80007] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80007]["MonsterId"] = 16
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80007]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80008] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80008]["MonsterId"] = 17
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80008]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80009] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80009]["MonsterId"] = 7
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80009]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80010] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80010]["MonsterId"] = 6
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80010]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80011] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80011]["MonsterId"] = 8
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80011]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80012] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80012]["MonsterId"] = 9
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80012]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80013] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80013]["MonsterId"] = 10
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80013]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80014] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80014]["MonsterId"] = 11
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80014]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80015] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80015]["MonsterId"] = 12
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80015]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80016] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80016]["MonsterId"] = 13
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80016]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80017] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80017]["MonsterId"] = 18
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80017]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80018] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80018]["MonsterId"] = 19
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80018]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80019] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80019]["MonsterId"] = 55
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80019]["MonsterNum"] = 200
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80020] = {}
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80020]["MonsterId"] = 84
	tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][80020]["MonsterNum"] = 200
	
-- 奖励表
local tOneDay_CyclicTaskLogic_Reward = {}
	-- 任务对应基础奖励
	-- 30分钟经验+1赤炼石+万宝秘钥碎片
	tOneDay_CyclicTaskLogic_Reward[1] = {}
	tOneDay_CyclicTaskLogic_Reward[1]["Log"] = "0,0,%d,0,12001190,3[1],730001[4],1[30]"
	tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"][1]["Id"] = 730001
	tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"][2] = {}
	-- tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"][2]["Id"] = 3311374
	-- tOneDay_CyclicTaskLogic_Reward[1]["RewardItem"][2]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"] = {}
	tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"]["Value"] = 30
	tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"]["FullValue"] = 30
	tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"]["FullLog"] = "0,0,%d,0,12001190,3[1],730001[2],1[30]"
	tOneDay_CyclicTaskLogic_Reward[1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	tOneDay_CyclicTaskLogic_Reward[1]["EmoneyLog"] = "350	22040	1	1	1	"
	-- 任务额外奖励
	tOneDay_CyclicTaskLogic_Reward[2] = {}
	tOneDay_CyclicTaskLogic_Reward[2]["Log"] = "0,0,0,0,12001190,3[1],3311374,1"
	tOneDay_CyclicTaskLogic_Reward[2]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[2]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[2]["RewardItem"][1]["Id"] = 3311374
	tOneDay_CyclicTaskLogic_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_Reward[2]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 给任务道具 3311375,'循环赏金令'
	tOneDay_CyclicTaskLogic_Reward[3311375] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375]["Log"] = "0,0,%d,0,12001190,2,3311375,1"
	tOneDay_CyclicTaskLogic_Reward[3311375]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375]["RewardItem"][1]["Id"] = 3311375
	tOneDay_CyclicTaskLogic_Reward[3311375]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_Reward[3311375]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375]["RewardEffect"]["Effect"] = "angelwing"
	-- 3311375,'循环赏金令' 给24小时和3分钟
	tOneDay_CyclicTaskLogic_Reward[3311375][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["Log"] = "0,0,%d,0,12001190,2,3311375,1"
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["RewardItem"][1]["Id"] = 3311375
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][1]["RewardEffect"]["Effect"] = "angelwing"
	tOneDay_CyclicTaskLogic_Reward[3311375][2] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["Log"] = "0,0,%d,0,12001190,2,3311375,1"
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["RewardItem"][1]["Id"] = 3311375
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["RewardItem"][1]["Attr"] = "0 1 0 3 1"
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311375][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 碎片合成
	tOneDay_CyclicTaskLogic_Reward[3311374] = {}
	tOneDay_CyclicTaskLogic_Reward[3311374]["LogId"] = 12001190
	tOneDay_CyclicTaskLogic_Reward[3311374]["DeleteItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311374]["DeleteItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3311374]["DeleteItem"][1]["Id"] = 3311374
	tOneDay_CyclicTaskLogic_Reward[3311374]["DeleteItem"][1]["ItemNum"] = 3
	tOneDay_CyclicTaskLogic_Reward[3311374]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311374]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3311374]["RewardItem"][1]["Id"] = 3311373
	tOneDay_CyclicTaskLogic_Reward[3311374]["RewardItem"][1]["Attr"] = "0 1 0 30 1"
	tOneDay_CyclicTaskLogic_Reward[3311374]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3311374]["RewardEffect"]["Effect"] = "improvesuc_3_2"
	
	-- 概率获得	
	-- 3天时效的喵呜坐骑 神佑1%				1/500
	tOneDay_CyclicTaskLogic_Reward[3] = {}
	tOneDay_CyclicTaskLogic_Reward[3][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3][1]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_Reward[3][1]["ItemSelfChanceSum"] = 5000
	tOneDay_CyclicTaskLogic_Reward[3][1]["ItemChance"] = 10
	tOneDay_CyclicTaskLogic_Reward[3][1]["Log"] = "0,0,0,0,12001190,3[1],200541,1"
	tOneDay_CyclicTaskLogic_Reward[3][1]["Log"] = "350	220	45	45	1	"
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardItem"][1]["Id"] = 200541
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardItem"][1]["Attr"] = "0 1 0 4320 1 0 0 1"
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3天时效的幻月冰凤坐骑 神佑2%				1/3000
	tOneDay_CyclicTaskLogic_Reward[3][2] = {}
	tOneDay_CyclicTaskLogic_Reward[3][2]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_Reward[3][2]["ItemSelfChanceSum"] = 30000
	tOneDay_CyclicTaskLogic_Reward[3][2]["ItemChance"] = 10
	tOneDay_CyclicTaskLogic_Reward[3][2]["Log"] = "0,0,0,0,12001190,3[1],200444,1"
	tOneDay_CyclicTaskLogic_Reward[3][2]["Log"] = "350	220	46	46	1	"
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardItem"][1]["Id"] = 200444
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardItem"][1]["Attr"] = "0 1 0 4320 1 0 0 2"
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 概率获得	限量
	-- 赤炼石+5				1/1000
	tOneDay_CyclicTaskLogic_Reward[3][3] = {}
	tOneDay_CyclicTaskLogic_Reward[3][3]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_Reward[3][3]["ItemSelfChanceSum"] = 10000
	tOneDay_CyclicTaskLogic_Reward[3][3]["ItemChance"] = 10
	tOneDay_CyclicTaskLogic_Reward[3][3]["Log"] = "0,0,0,0,12001190,3[1],730005,1"
	tOneDay_CyclicTaskLogic_Reward[3][3]["EmoneyLog"] = "350	22043	1	1	1	"
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardItem"][1]["Id"] = 730005
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tOneDay_CyclicTaskLogic_Reward[3][3]["GlobalId"] = 53232
	tOneDay_CyclicTaskLogic_Reward[3][3]["Pos"] = 0
	tOneDay_CyclicTaskLogic_Reward[3][3]["MaxData"] = 1
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6				3/10000
	tOneDay_CyclicTaskLogic_Reward[3][4] = {}
	tOneDay_CyclicTaskLogic_Reward[3][4]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_Reward[3][4]["ItemSelfChanceSum"] = 100000
	tOneDay_CyclicTaskLogic_Reward[3][4]["ItemChance"] = 30
	tOneDay_CyclicTaskLogic_Reward[3][4]["Log"] = "0,0,0,0,12001190,3[1],730006,1"
	tOneDay_CyclicTaskLogic_Reward[3][4]["EmoneyLog"] = "350	22044	1	1	1	"
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardItem"][1]["Id"] = 730006
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tOneDay_CyclicTaskLogic_Reward[3][4]["GlobalId"] = 53232
	tOneDay_CyclicTaskLogic_Reward[3][4]["Pos"] = 1
	tOneDay_CyclicTaskLogic_Reward[3][4]["MaxData"] = 1
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardEffect"]["Effect"] = "angelwing"
	
-- 发邮件
local tOneDay_CyclicTaskLogic_MailData = {}
	tOneDay_CyclicTaskLogic_MailData[7] = {}
	tOneDay_CyclicTaskLogic_MailData[7]["ActionId"] = 97305731
	tOneDay_CyclicTaskLogic_MailData[7]["ExistDay"] = 3
	tOneDay_CyclicTaskLogic_MailData[8] = {}
	tOneDay_CyclicTaskLogic_MailData[8]["ActionId"] = 97305732
	tOneDay_CyclicTaskLogic_MailData[8]["ExistDay"] = 3
	
-- 寻路坐标
local tOneDay_CyclicTaskLogic_FindWay = {}
	-- 材料收集
	tOneDay_CyclicTaskLogic_FindWay[3] = {}
	tOneDay_CyclicTaskLogic_FindWay[3][30001] = {}
	tOneDay_CyclicTaskLogic_FindWay[3][30001]["PosX"] = 225
	tOneDay_CyclicTaskLogic_FindWay[3][30001]["PosY"] = 326
	tOneDay_CyclicTaskLogic_FindWay[3][30001]["MapId"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[3][30002] = {}
	tOneDay_CyclicTaskLogic_FindWay[3][30002]["PosX"] = 126
	tOneDay_CyclicTaskLogic_FindWay[3][30002]["PosY"] = 286
	tOneDay_CyclicTaskLogic_FindWay[3][30002]["MapId"] = 1011
	tOneDay_CyclicTaskLogic_FindWay[3][30003] = {}
	tOneDay_CyclicTaskLogic_FindWay[3][30003]["PosX"] = 248
	tOneDay_CyclicTaskLogic_FindWay[3][30003]["PosY"] = 179
	tOneDay_CyclicTaskLogic_FindWay[3][30003]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[3][30004] = {}
	tOneDay_CyclicTaskLogic_FindWay[3][30004]["PosX"] = 296
	tOneDay_CyclicTaskLogic_FindWay[3][30004]["PosY"] = 203
	tOneDay_CyclicTaskLogic_FindWay[3][30004]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[3][30005] = {}
	tOneDay_CyclicTaskLogic_FindWay[3][30005]["PosX"] = 410
	tOneDay_CyclicTaskLogic_FindWay[3][30005]["PosY"] = 522
	tOneDay_CyclicTaskLogic_FindWay[3][30005]["MapId"] = 1015
	-- 墨守迷城
	tOneDay_CyclicTaskLogic_FindWay[4] = {}
	tOneDay_CyclicTaskLogic_FindWay[4][1] = {}
	tOneDay_CyclicTaskLogic_FindWay[4][1]["PosX"] = 194
	tOneDay_CyclicTaskLogic_FindWay[4][1]["PosY"] = 192
	tOneDay_CyclicTaskLogic_FindWay[4][1]["MapId"] = 1000
	-- 野外杀怪
	tOneDay_CyclicTaskLogic_FindWay[5] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50001] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50001]["PosX"] = 430
	tOneDay_CyclicTaskLogic_FindWay[5][50001]["PosY"] = 234
	tOneDay_CyclicTaskLogic_FindWay[5][50001]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50002] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50002]["PosX"] = 222
	tOneDay_CyclicTaskLogic_FindWay[5][50002]["PosY"] = 460
	tOneDay_CyclicTaskLogic_FindWay[5][50002]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50003] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50003]["PosX"] = 586
	tOneDay_CyclicTaskLogic_FindWay[5][50003]["PosY"] = 650
	tOneDay_CyclicTaskLogic_FindWay[5][50003]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50004] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50004]["PosX"] = 162
	tOneDay_CyclicTaskLogic_FindWay[5][50004]["PosY"] = 287
	tOneDay_CyclicTaskLogic_FindWay[5][50004]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50005] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50005]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50005]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50005]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50006] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50006]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50006]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50006]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50007] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50007]["PosX"] =  327
	tOneDay_CyclicTaskLogic_FindWay[5][50007]["PosY"] =  248
	tOneDay_CyclicTaskLogic_FindWay[5][50007]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50008] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50008]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50008]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50008]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50009] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50009]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50009]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50009]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50010] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50010]["PosX"] =  152
	tOneDay_CyclicTaskLogic_FindWay[5][50010]["PosY"] =  354
	tOneDay_CyclicTaskLogic_FindWay[5][50010]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50011] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50011]["PosX"] =  487
	tOneDay_CyclicTaskLogic_FindWay[5][50011]["PosY"] =  434
	tOneDay_CyclicTaskLogic_FindWay[5][50011]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50012] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50012]["PosX"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[5][50012]["PosY"] = 1288
	tOneDay_CyclicTaskLogic_FindWay[5][50012]["MapId"] = 10250
	
	
	tOneDay_CyclicTaskLogic_FindWay[5][50013] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50013]["PosX"] = 430
	tOneDay_CyclicTaskLogic_FindWay[5][50013]["PosY"] = 234
	tOneDay_CyclicTaskLogic_FindWay[5][50013]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50014] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50014]["PosX"] = 222
	tOneDay_CyclicTaskLogic_FindWay[5][50014]["PosY"] = 460
	tOneDay_CyclicTaskLogic_FindWay[5][50014]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50015] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50015]["PosX"] = 586
	tOneDay_CyclicTaskLogic_FindWay[5][50015]["PosY"] = 650
	tOneDay_CyclicTaskLogic_FindWay[5][50015]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50016] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50016]["PosX"] = 162
	tOneDay_CyclicTaskLogic_FindWay[5][50016]["PosY"] = 287
	tOneDay_CyclicTaskLogic_FindWay[5][50016]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50017] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50017]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50017]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50017]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50018] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50018]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50018]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50018]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50019] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50019]["PosX"] =  327
	tOneDay_CyclicTaskLogic_FindWay[5][50019]["PosY"] =  248
	tOneDay_CyclicTaskLogic_FindWay[5][50019]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50020] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50020]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50020]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50020]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50021] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50021]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50021]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50021]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50022] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50022]["PosX"] =  152
	tOneDay_CyclicTaskLogic_FindWay[5][50022]["PosY"] =  354
	tOneDay_CyclicTaskLogic_FindWay[5][50022]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50023] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50023]["PosX"] =  487
	tOneDay_CyclicTaskLogic_FindWay[5][50023]["PosY"] =  434
	tOneDay_CyclicTaskLogic_FindWay[5][50023]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50024] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50024]["PosX"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[5][50024]["PosY"] = 1288
	tOneDay_CyclicTaskLogic_FindWay[5][50024]["MapId"] = 10250
	
	
	tOneDay_CyclicTaskLogic_FindWay[5][50025] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50025]["PosX"] = 430
	tOneDay_CyclicTaskLogic_FindWay[5][50025]["PosY"] = 234
	tOneDay_CyclicTaskLogic_FindWay[5][50025]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50026] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50026]["PosX"] = 222
	tOneDay_CyclicTaskLogic_FindWay[5][50026]["PosY"] = 460
	tOneDay_CyclicTaskLogic_FindWay[5][50026]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50027] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50027]["PosX"] = 586
	tOneDay_CyclicTaskLogic_FindWay[5][50027]["PosY"] = 650
	tOneDay_CyclicTaskLogic_FindWay[5][50027]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50028] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50028]["PosX"] = 162
	tOneDay_CyclicTaskLogic_FindWay[5][50028]["PosY"] = 287
	tOneDay_CyclicTaskLogic_FindWay[5][50028]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50029] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50029]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50029]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50029]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50030] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50030]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50030]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50030]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50031] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50031]["PosX"] =  327
	tOneDay_CyclicTaskLogic_FindWay[5][50031]["PosY"] =  248
	tOneDay_CyclicTaskLogic_FindWay[5][50031]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50032] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50032]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50032]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50032]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50033] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50033]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50033]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50033]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50034] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50034]["PosX"] =  152
	tOneDay_CyclicTaskLogic_FindWay[5][50034]["PosY"] =  354
	tOneDay_CyclicTaskLogic_FindWay[5][50034]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50035] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50035]["PosX"] =  487
	tOneDay_CyclicTaskLogic_FindWay[5][50035]["PosY"] =  434
	tOneDay_CyclicTaskLogic_FindWay[5][50035]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50036] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50036]["PosX"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[5][50036]["PosY"] = 1288
	tOneDay_CyclicTaskLogic_FindWay[5][50036]["MapId"] = 10250
	
	tOneDay_CyclicTaskLogic_FindWay[5][50037] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50037]["PosX"] = 430
	tOneDay_CyclicTaskLogic_FindWay[5][50037]["PosY"] = 234
	tOneDay_CyclicTaskLogic_FindWay[5][50037]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50038] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50038]["PosX"] = 222
	tOneDay_CyclicTaskLogic_FindWay[5][50038]["PosY"] = 460
	tOneDay_CyclicTaskLogic_FindWay[5][50038]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[5][50039] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50039]["PosX"] = 586
	tOneDay_CyclicTaskLogic_FindWay[5][50039]["PosY"] = 650
	tOneDay_CyclicTaskLogic_FindWay[5][50039]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50040] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50040]["PosX"] = 162
	tOneDay_CyclicTaskLogic_FindWay[5][50040]["PosY"] = 287
	tOneDay_CyclicTaskLogic_FindWay[5][50040]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[5][50041] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50041]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50041]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50041]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50042] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50042]["PosX"] =  824
	tOneDay_CyclicTaskLogic_FindWay[5][50042]["PosY"] =  605
	tOneDay_CyclicTaskLogic_FindWay[5][50042]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50043] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50043]["PosX"] =  327
	tOneDay_CyclicTaskLogic_FindWay[5][50043]["PosY"] =  248
	tOneDay_CyclicTaskLogic_FindWay[5][50043]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[5][50044] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50044]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50044]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50044]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50045] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50045]["PosX"] =  123
	tOneDay_CyclicTaskLogic_FindWay[5][50045]["PosY"] =  130
	tOneDay_CyclicTaskLogic_FindWay[5][50045]["MapId"] = 3056
	tOneDay_CyclicTaskLogic_FindWay[5][50046] = {}       
	tOneDay_CyclicTaskLogic_FindWay[5][50046]["PosX"] =  152
	tOneDay_CyclicTaskLogic_FindWay[5][50046]["PosY"] =  354
	tOneDay_CyclicTaskLogic_FindWay[5][50046]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50047] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50047]["PosX"] =  487
	tOneDay_CyclicTaskLogic_FindWay[5][50047]["PosY"] =  434
	tOneDay_CyclicTaskLogic_FindWay[5][50047]["MapId"] = 10137
	tOneDay_CyclicTaskLogic_FindWay[5][50048] = {}
	tOneDay_CyclicTaskLogic_FindWay[5][50048]["PosX"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[5][50048]["PosY"] = 1288
	tOneDay_CyclicTaskLogic_FindWay[5][50048]["MapId"] = 10250

	
	-- 组合杀怪
	-- 怪物大师
	tOneDay_CyclicTaskLogic_FindWay[7] = {}
	tOneDay_CyclicTaskLogic_FindWay[7][1] = {}
	tOneDay_CyclicTaskLogic_FindWay[7][1]["PosX"] = 187
	tOneDay_CyclicTaskLogic_FindWay[7][1]["PosY"] = 329
	tOneDay_CyclicTaskLogic_FindWay[7][1]["MapId"] = 1002
	-- 杀怪竞速
	tOneDay_CyclicTaskLogic_FindWay[8] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80001] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80001]["PosX"] = 233
	tOneDay_CyclicTaskLogic_FindWay[8][80001]["PosY"] = 327
	tOneDay_CyclicTaskLogic_FindWay[8][80001]["MapId"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[8][80002] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80002]["PosX"] = 288
	tOneDay_CyclicTaskLogic_FindWay[8][80002]["PosY"] = 320
	tOneDay_CyclicTaskLogic_FindWay[8][80002]["MapId"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[8][80003] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80003]["PosX"] = 264
	tOneDay_CyclicTaskLogic_FindWay[8][80003]["PosY"] = 272
	tOneDay_CyclicTaskLogic_FindWay[8][80003]["MapId"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[8][80004] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80004]["PosX"] = 322
	tOneDay_CyclicTaskLogic_FindWay[8][80004]["PosY"] = 240
	tOneDay_CyclicTaskLogic_FindWay[8][80004]["MapId"] = 1002
	tOneDay_CyclicTaskLogic_FindWay[8][80005] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80005]["PosX"] = 353
	tOneDay_CyclicTaskLogic_FindWay[8][80005]["PosY"] = 243
	tOneDay_CyclicTaskLogic_FindWay[8][80005]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[8][80006] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80006]["PosX"] = 286
	tOneDay_CyclicTaskLogic_FindWay[8][80006]["PosY"] = 286
	tOneDay_CyclicTaskLogic_FindWay[8][80006]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[8][80007] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80007]["PosX"] = 166
	tOneDay_CyclicTaskLogic_FindWay[8][80007]["PosY"] = 64
	tOneDay_CyclicTaskLogic_FindWay[8][80007]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[8][80008] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80008]["PosX"] = 76
	tOneDay_CyclicTaskLogic_FindWay[8][80008]["PosY"] = 112
	tOneDay_CyclicTaskLogic_FindWay[8][80008]["MapId"] = 1000
	tOneDay_CyclicTaskLogic_FindWay[8][80009] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80009]["PosX"] = 101
	tOneDay_CyclicTaskLogic_FindWay[8][80009]["PosY"] = 269
	tOneDay_CyclicTaskLogic_FindWay[8][80009]["MapId"] = 1011
	tOneDay_CyclicTaskLogic_FindWay[8][80010] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80010]["PosX"] = 247
	tOneDay_CyclicTaskLogic_FindWay[8][80010]["PosY"] = 59
	tOneDay_CyclicTaskLogic_FindWay[8][80010]["MapId"] = 1011
	tOneDay_CyclicTaskLogic_FindWay[8][80011] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80011]["PosX"] = 327
	tOneDay_CyclicTaskLogic_FindWay[8][80011]["PosY"] = 390
	tOneDay_CyclicTaskLogic_FindWay[8][80011]["MapId"] = 1011
	tOneDay_CyclicTaskLogic_FindWay[8][80012] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80012]["PosX"] = 459
	tOneDay_CyclicTaskLogic_FindWay[8][80012]["PosY"] = 481
	tOneDay_CyclicTaskLogic_FindWay[8][80012]["MapId"] = 1011
	tOneDay_CyclicTaskLogic_FindWay[8][80013] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80013]["PosX"] = 212
	tOneDay_CyclicTaskLogic_FindWay[8][80013]["PosY"] = 122
	tOneDay_CyclicTaskLogic_FindWay[8][80013]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[8][80014] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80014]["PosX"] = 209
	tOneDay_CyclicTaskLogic_FindWay[8][80014]["PosY"] = 215
	tOneDay_CyclicTaskLogic_FindWay[8][80014]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[8][80015] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80015]["PosX"] = 135
	tOneDay_CyclicTaskLogic_FindWay[8][80015]["PosY"] = 197
	tOneDay_CyclicTaskLogic_FindWay[8][80015]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[8][80016] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80016]["PosX"] = 85
	tOneDay_CyclicTaskLogic_FindWay[8][80016]["PosY"] = 184
	tOneDay_CyclicTaskLogic_FindWay[8][80016]["MapId"] = 1020
	tOneDay_CyclicTaskLogic_FindWay[8][80017] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80017]["PosX"] = 409
	tOneDay_CyclicTaskLogic_FindWay[8][80017]["PosY"] = 452
	tOneDay_CyclicTaskLogic_FindWay[8][80017]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[8][80018] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80018]["PosX"] = 330
	tOneDay_CyclicTaskLogic_FindWay[8][80018]["PosY"] = 354
	tOneDay_CyclicTaskLogic_FindWay[8][80018]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[8][80019] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80019]["PosX"] = 167
	tOneDay_CyclicTaskLogic_FindWay[8][80019]["PosY"] = 180
	tOneDay_CyclicTaskLogic_FindWay[8][80019]["MapId"] = 1015
	tOneDay_CyclicTaskLogic_FindWay[8][80020] = {}
	tOneDay_CyclicTaskLogic_FindWay[8][80020]["PosX"] = 410
	tOneDay_CyclicTaskLogic_FindWay[8][80020]["PosY"] = 270
	tOneDay_CyclicTaskLogic_FindWay[8][80020]["MapId"] = 1015
	
-- 任务随机
local tOneDay_CyclicTaskLogic_TaskRandom = {}
	-- 随机任务类型
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1]["ItemChanceSum"] = 7700
	-- 击败敌对玩家	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][1]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][1]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][1]["TaskIndex"] = 1
	-- 珍宝收集	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][2]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][2]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][2]["TaskIndex"] = 2
	-- 材料收集	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][3] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][3]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][3]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][3]["TaskIndex"] = 3
	-- 墨守迷城	7%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][4] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][4]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][4]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][4]["TaskIndex"] = 4
	-- "野外杀怪（组队共享）"	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][5] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][5]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][5]["ItemChance"] = 7700
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][5]["TaskIndex"] = 5
	-- "组合杀怪（组队共享）"	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][6] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][6]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][6]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][6]["TaskIndex"] = 6
	-- 怪物大师	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][7] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][7]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][7]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][7]["TaskIndex"] = 7
	-- "杀怪竞速（未在限定时间内完成则为失败可重新领取任务）"	10%
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][8] = {}
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][8]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][8]["ItemChance"] = 0
	tOneDay_CyclicTaskLogic_TaskRandom["TaskType"][1][8]["TaskIndex"] = 8
	
	-- 击败敌对玩家
	-- 任务目标：击杀1名敌对玩家	10001
	
	-- 珍宝收集
	tOneDay_CyclicTaskLogic_TaskRandom[2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1]["ItemChanceSum"] = 6000
	-- 提交攻击符交易券3张
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][1]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][1]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][1]["SubTaskIndex"] = 20001
	-- 提交粉碎符交易券3张
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][2]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][2]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][2]["SubTaskIndex"] = 20002
	-- 提交抗暴符交易券3张
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][3] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][3]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][3]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][3]["SubTaskIndex"] = 20003
	-- 提交生命符交易券3张
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][4] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][4]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][4]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][4]["SubTaskIndex"] = 20004
	-- 提交坚固符交易券3张
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][5] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][5]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][5]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][5]["SubTaskIndex"] = 20005
	-- 提交减伤符交易券3张
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][6] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][6]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][6]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[2][1][6]["SubTaskIndex"] = 20006
	
	-- 材料收集
	tOneDay_CyclicTaskLogic_TaskRandom[3] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1]["ItemChanceSum"] = 5000
	-- 在清风原击败任意妖匪，收集10个清风宝珠
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][1]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][1]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][1]["SubTaskIndex"] = 30001
	-- 在枫溪林击败任意妖匪，收集10个枫溪宝珠
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][2]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][2]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][2]["SubTaskIndex"] = 30002
	-- 在绝情谷击败任意妖匪，收集10个绝情宝珠
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][3] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][3]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][3]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][3]["SubTaskIndex"] = 30003
	-- 在大漠击败任意妖匪，收集10个大漠宝珠
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][4] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][4]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][4]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][4]["SubTaskIndex"] = 30004
	-- 在白鹭城击败任意妖匪，收集10个白鹭宝珠
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][5] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][5]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][5]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[3][1][5]["SubTaskIndex"] = 30005
	
	-- 墨守迷城	
	tOneDay_CyclicTaskLogic_TaskRandom[4] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1]["ItemChanceSum"] = 7000
	-- 难度1：通关一层墨守迷城						40001
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][1]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][1]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][1]["SubTaskIndex"] = 40001
	-- 难度2：击杀墨守迷城第2层机关血魔 50只	40002
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][2]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][2]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][2]["SubTaskIndex"] = 40002
	-- 难度2：击杀墨守迷城第2层机关鬼刃 50只	40003
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][3] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][3]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][3]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][3]["SubTaskIndex"] = 40003
	-- 难度2：击杀墨守迷城第2层机关狂战 10只 	40004
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][4] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][4]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][4]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][4]["SubTaskIndex"] = 40004
	-- 难度3：击杀墨守迷城第3层机关战偶 50只	40005
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][5] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][5]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][5]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][5]["SubTaskIndex"] = 40005
	-- 难度3：击杀墨守迷城第3层机关牛魔 50只	40006
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][6] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][6]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][6]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][6]["SubTaskIndex"] = 40006
	-- 难度3：击杀墨守迷城第3层机偃盾卫 10只 	40007
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][7] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][7]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][7]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[4][1][7]["SubTaskIndex"] = 40007
	
	-- 野外杀怪（组队共享）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1]["ItemChanceSum"] = 120000
	-- -- 在五湖秘境击杀东海浪人
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][1] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][1]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][1]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][1]["SubTaskIndex"] = 50001
	-- -- 在五湖秘境击杀叛变士兵500只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][2] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][2]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][2]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][2]["SubTaskIndex"] = 50002
	-- -- 在五湖秘境的倭寇喽啰300只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][3] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][3]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][3]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][3]["SubTaskIndex"] = 50003
	-- -- 在五湖秘境的湖郡悍匪300只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][4] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][4]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][4]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][4]["SubTaskIndex"] = 50004
	-- -- 在敦煌击杀蝙蝠（嗜血蝙蝠，血翼蝙蝠，土墓蝠，吸血蝙蝠）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][5] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][5]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][5]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][5]["SubTaskIndex"] = 50005
	-- -- 在敦煌击杀牛怪500只（牛怪，蛮牛怪）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][6] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][6]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][6]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][6]["SubTaskIndex"] = 50006
	-- -- 在敦煌击杀红魔500只（魅影红魔，血影红魔）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][7] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][7]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][7]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][7]["SubTaskIndex"] = 50007
	-- -- 在冰封击杀地穴冰魔500只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][8] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][8]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][8]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][8]["SubTaskIndex"] = 50008
	-- -- 在冰封击杀雪石巨怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][9] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][9]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][9]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][9]["SubTaskIndex"] = 50009
	-- -- 在冰封击杀幽寒冤魂500只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][10] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][10]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][10]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][10]["SubTaskIndex"] = 50010
	-- -- 在桃源秘境击杀枯木妖鬼500只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][11] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][11]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][11]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][11]["SubTaskIndex"] = 50011
	-- -- 在桃源秘境击杀桃源树精500只
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][12] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][12]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][12]["ItemChance"] = 0
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][12]["SubTaskIndex"] = 50012
	-- -- 在大漠击杀沙怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][13] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][13]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][13]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][13]["SubTaskIndex"] = 50013
	-- -- 在大漠击杀鬼刃
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][14] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][14]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][14]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][14]["SubTaskIndex"] = 50014
	-- -- 在墨守迷城1层击杀机关土蝠
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][15] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][15]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][15]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][15]["SubTaskIndex"] = 50015
	
	-- -- 在五湖秘境击杀东海浪人
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][16] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][16]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][16]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][16]["SubTaskIndex"] = 50016
	-- -- 在敦煌击杀蝙蝠（嗜血蝙蝠，血翼蝙蝠，土墓蝠，吸血蝙蝠）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][17] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][17]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][17]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][17]["SubTaskIndex"] = 50017
	-- -- 在冰封击杀雪石巨怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][18] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][18]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][18]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][18]["SubTaskIndex"] = 50018
	-- -- 在大漠击杀沙怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][19] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][19]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][19]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][19]["SubTaskIndex"] = 50019
	-- -- 在大漠击杀鬼刃
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][20] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][20]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][20]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][20]["SubTaskIndex"] = 50020
	-- -- 在墨守迷城1层击杀机关土蝠
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][21] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][21]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][21]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][21]["SubTaskIndex"] = 50021
	
	-- -- 在五湖秘境击杀东海浪人
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][22] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][22]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][22]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][22]["SubTaskIndex"] = 50022
	-- -- 在敦煌击杀蝙蝠（嗜血蝙蝠，血翼蝙蝠，土墓蝠，吸血蝙蝠）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][23] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][23]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][23]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][23]["SubTaskIndex"] = 50023
	-- -- 在冰封击杀雪石巨怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][24] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][24]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][24]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][24]["SubTaskIndex"] = 50024
	-- -- 在大漠击杀沙怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][25] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][25]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][25]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][25]["SubTaskIndex"] = 50025
	-- -- 在大漠击杀鬼刃
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][26] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][26]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][26]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][26]["SubTaskIndex"] = 50026
	-- -- 在墨守迷城1层击杀机关土蝠
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][27] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][27]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][27]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][27]["SubTaskIndex"] = 50027
	
	-- -- 在五湖秘境击杀东海浪人
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][28] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][28]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][28]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][28]["SubTaskIndex"] = 50028
	-- -- 在敦煌击杀蝙蝠（嗜血蝙蝠，血翼蝙蝠，土墓蝠，吸血蝙蝠）
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][29] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][29]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][29]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][29]["SubTaskIndex"] = 50029
	-- -- 在冰封击杀雪石巨怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][30] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][30]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][30]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][30]["SubTaskIndex"] = 50030
	-- -- 在大漠击杀沙怪
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][31] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][31]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][31]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][31]["SubTaskIndex"] = 50031
	-- -- 在大漠击杀鬼刃
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][32] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][32]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][32]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][32]["SubTaskIndex"] = 50032
	-- -- 在墨守迷城1层击杀机关土蝠
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][33] = {}
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][33]["RandomItemChanceType"] = 2
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][33]["ItemChance"] = 5000
	-- tOneDay_CyclicTaskLogic_TaskRandom[5][1][33]["SubTaskIndex"] = 50033
	
	tOneDay_CyclicTaskLogic_TaskRandom[5] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1]["ItemChanceSum"] = 48000
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][1]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][1]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][1]["SubTaskIndex"] = 50001
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][2]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][2]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][2]["SubTaskIndex"] = 50002
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][3] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][3]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][3]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][3]["SubTaskIndex"] = 50003
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][4] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][4]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][4]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][4]["SubTaskIndex"] = 50004
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][5] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][5]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][5]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][5]["SubTaskIndex"] = 50005
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][6] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][6]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][6]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][6]["SubTaskIndex"] = 50006
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][7] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][7]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][7]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][7]["SubTaskIndex"] = 50007
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][8] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][8]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][8]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][8]["SubTaskIndex"] = 50008
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][9] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][9]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][9]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][9]["SubTaskIndex"] = 50009
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][10] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][10]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][10]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][10]["SubTaskIndex"] = 50010
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][11] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][11]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][11]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][11]["SubTaskIndex"] = 50011
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][12] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][12]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][12]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][12]["SubTaskIndex"] = 50012
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][13] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][13]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][13]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][13]["SubTaskIndex"] = 50013
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][14] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][14]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][14]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][14]["SubTaskIndex"] = 50014
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][15] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][15]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][15]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][15]["SubTaskIndex"] = 50015
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][16] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][16]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][16]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][16]["SubTaskIndex"] = 50016
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][17] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][17]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][17]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][17]["SubTaskIndex"] = 50017
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][18] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][18]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][18]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][18]["SubTaskIndex"] = 50018
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][19] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][19]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][19]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][19]["SubTaskIndex"] = 50019
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][20] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][20]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][20]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][20]["SubTaskIndex"] = 50020
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][21] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][21]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][21]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][21]["SubTaskIndex"] = 50021
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][22] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][22]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][22]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][22]["SubTaskIndex"] = 50022
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][23] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][23]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][23]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][23]["SubTaskIndex"] = 50023
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][24] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][24]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][24]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][24]["SubTaskIndex"] = 50024
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][25] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][25]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][25]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][25]["SubTaskIndex"] = 50025
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][26] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][26]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][26]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][26]["SubTaskIndex"] = 50026
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][27] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][27]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][27]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][27]["SubTaskIndex"] = 50027
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][28] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][28]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][28]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][28]["SubTaskIndex"] = 50028
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][29] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][29]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][29]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][29]["SubTaskIndex"] = 50029
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][30] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][30]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][30]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][30]["SubTaskIndex"] = 50030
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][31] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][31]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][31]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][31]["SubTaskIndex"] = 50031
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][32] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][32]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][32]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][32]["SubTaskIndex"] = 50032
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][33] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][33]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][33]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][33]["SubTaskIndex"] = 50033
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][34] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][34]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][34]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][34]["SubTaskIndex"] = 50034
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][35] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][35]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][35]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][35]["SubTaskIndex"] = 50035
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][36] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][36]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][36]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][36]["SubTaskIndex"] = 50036
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][37] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][37]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][37]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][37]["SubTaskIndex"] = 50037
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][38] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][38]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][38]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][38]["SubTaskIndex"] = 50038
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][39] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][39]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][39]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][39]["SubTaskIndex"] = 50039
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][40] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][40]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][40]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][40]["SubTaskIndex"] = 50040
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][41] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][41]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][41]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][41]["SubTaskIndex"] = 50041
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][42] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][42]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][42]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][42]["SubTaskIndex"] = 50042
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][43] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][43]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][43]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][43]["SubTaskIndex"] = 50043
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][44] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][44]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][44]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][44]["SubTaskIndex"] = 50044
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][45] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][45]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][45]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][45]["SubTaskIndex"] = 50045
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][46] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][46]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][46]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][46]["SubTaskIndex"] = 50046
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][47] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][47]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][47]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][47]["SubTaskIndex"] = 50047
	
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][48] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][48]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][48]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[5][1][48]["SubTaskIndex"] = 50048
	
	

	
	-- 组合杀怪（组队共享）
	tOneDay_CyclicTaskLogic_TaskRandom[6] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[6][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[6][1]["ItemChanceSum"] = 2000
	-- "击杀五湖秘境东海浪人100只，敦煌牛魔100只，冰封地穴雪石巨怪100只，桃源秘境枯木妖鬼100只.
	-- （地宫固定，怪物随机搭配，组队共享）"
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][1]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][1]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][1]["SubTaskIndex"] = 60001
	-- "击杀清风源叫天鸡150只，枫溪林土匪150只，击杀云门关沙怪150只，击杀绝情谷须弥猴150只，击杀白鹭城金臂鸟人150只
	-- （地宫固定，怪物随机搭配，组队共享）"
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][2] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][2]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][2]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[6][1][2]["SubTaskIndex"] = 60002
	
	-- 怪物大师
	-- 在野区和地宫，击杀12种以上不同的怪物即可完成任务根据怪物ID去算数量即可 70001
	
	-- 杀怪竞速
	-- （未在限定时间内完成则为失败可重新领取任务）
	tOneDay_CyclicTaskLogic_TaskRandom[8] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1]["ItemChanceSum"] = 20000
	-- 在清风源3分钟内击杀200只以上叫天鸡
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][01] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][01]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][01]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][01]["SubTaskIndex"] = 80001
	-- 在清风源3分钟内击杀200只以上斑鸠王
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][02] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][02]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][02]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][02]["SubTaskIndex"] = 80002
	-- 在清风源3分钟内击杀200只以上蝠妖
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][03] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][03]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][03]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][03]["SubTaskIndex"] = 80003
	-- 在清风源3分钟内击杀200只以上幽冥鬼斧王
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][04] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][04]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][04]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][04]["SubTaskIndex"] = 80004
	-- 在大漠3分钟内击杀200只以上锤山怪
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][05] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][05]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][05]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][05]["SubTaskIndex"] = 80005
	-- 在大漠3分钟内击杀200只以上沙怪
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][06] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][06]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][06]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][06]["SubTaskIndex"] = 80006
	-- 在大漠3分钟内击杀200只以上巨石怪
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][07] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][07]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][07]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][07]["SubTaskIndex"] = 80007
	-- 在大漠3分钟内击杀200只以上鬼刃
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][08] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][08]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][08]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][08]["SubTaskIndex"] = 80008
	-- 在枫溪林3分钟内击杀200只以上土匪
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][09] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][09]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][09]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][09]["SubTaskIndex"] = 80009
	-- 在枫溪林3分钟内击杀200只以上翼蛇
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][10] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][10]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][10]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][10]["SubTaskIndex"] = 80010
	-- 在枫溪林3分钟内击杀200只以上火鼠
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][11] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][11]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][11]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][11]["SubTaskIndex"] = 80011
	-- 在枫溪林3分钟内击杀200只以上火精灵
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][12] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][12]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][12]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][12]["SubTaskIndex"] = 80012
	-- 在绝情谷3分钟击杀200只以上须弥猴
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][13] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][13]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][13]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][13]["SubTaskIndex"] = 80013
	-- 在绝情谷3分钟击杀200只以上巨臂猿
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][14] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][14]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][14]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][14]["SubTaskIndex"] = 80014
	-- 在绝情谷3分钟击杀200只以上天雷巨猿
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][15] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][15]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][15]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][15]["SubTaskIndex"] = 80015
	-- 在绝情谷3分钟击杀200只以上蛇人
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][16] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][16]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][16]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][16]["SubTaskIndex"] = 80016
	-- 在白鹭城谷3分钟击杀200只以上金臂鸟人
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][17] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][17]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][17]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][17]["SubTaskIndex"] = 80017
	-- 在白鹭城谷3分钟击杀200只以上银羽鹰王
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][18] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][18]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][18]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][18]["SubTaskIndex"] = 80018
	-- 在白鹭城谷3分钟击杀200只以上湖岛强匪
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][19] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][19]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][19]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][19]["SubTaskIndex"] = 80019
	-- 在白鹭城谷3分钟击杀200只以上匪兵
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][20] = {}
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][20]["RandomItemChanceType"] = 2
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][20]["ItemChance"] = 1000
	tOneDay_CyclicTaskLogic_TaskRandom[8][1][20]["SubTaskIndex"] = 80020

-- 任务随机
local tOneDay_CyclicTaskLogic_KillMonster = {}
	-- 材料收集
	-- 3311396,'清风宝珠'
	tOneDay_CyclicTaskLogic_KillMonster[3] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30001] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["ItemSelfChanceSum"] = 10000
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["ItemChance"] = 300
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["Log"] = "0,0,0,0,12001190,1[1],3311396,1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RewardItem"][1]["Id"] = 3311396
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30001][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3311397,'枫溪宝珠'
	tOneDay_CyclicTaskLogic_KillMonster[3][30002] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["ItemSelfChanceSum"] = 10000
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["ItemChance"] = 300
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["Log"] = "0,0,0,0,12001190,1[1],3311397,1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RewardItem"][1]["Id"] = 3311397
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30002][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3311398,'绝情宝珠'
	tOneDay_CyclicTaskLogic_KillMonster[3][30003] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["ItemSelfChanceSum"] = 10000
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["ItemChance"] = 300
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["Log"] = "0,0,0,0,12001190,1[1],3311398,1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RewardItem"][1]["Id"] = 3311398
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30003][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3311399,'大漠宝珠'
	tOneDay_CyclicTaskLogic_KillMonster[3][30004] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["ItemSelfChanceSum"] = 10000
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["ItemChance"] = 300
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["Log"] = "0,0,0,0,12001190,1[1],3311399,1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RewardItem"][1]["Id"] = 3311399
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30004][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3311400,'白鹭宝珠'
	tOneDay_CyclicTaskLogic_KillMonster[3][30005] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RandomItemChanceType"] = 3
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["ItemSelfChanceSum"] = 10000
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["ItemChance"] = 300
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["Log"] = "0,0,0,0,12001190,1[1],3311400,1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RewardItem"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RewardItem"][1] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RewardItem"][1]["Id"] = 3311400
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RewardItem"][1]["Attr"] = "0 1"
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RewardEffect"] = {}
	tOneDay_CyclicTaskLogic_KillMonster[3][30005][1]["RewardEffect"]["Effect"] = "angelwing"
	

--------------------------------------排行信息--------------------------------------
-- 试炼神速榜--时间--从小到大
tRankingFunc_Info[234927] = {}
tRankingFunc_Info[234927]["DayTime"] = {}
tRankingFunc_Info[234927]["DayTime"][1] = "00:00 23:59"
-- tRankingFunc_Info[234927]["Reset"] = 1
tRankingFunc_Info[234927]["Global"] = {53076,53077}
tRankingFunc_Info[234927]["RankNum"] = 5
tRankingFunc_Info[234927]["RankMode"] = 2
-- 试炼战神榜--个数--从大到小
tRankingFunc_Info[234928] = {}
tRankingFunc_Info[234928]["DayTime"] = {}
tRankingFunc_Info[234928]["DayTime"][1] = "00:00 23:59"
-- tRankingFunc_Info[234928]["Reset"] = 1
tRankingFunc_Info[234928]["Global"] = {53080,53081}
tRankingFunc_Info[234928]["RankNum"] = 5
tRankingFunc_Info[234928]["RankMode"] = 1

--------------------------------------逻辑部分配置--------------------------------------
-- 获取掩码值
function OneDay_CyclicTaskLogic_GetStcValue(nIndex,nUserId)
	local nEvent = tOneDay_CyclicTaskLogic_Stc[nIndex]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

-- 获取掩码时间戳
function OneDay_CyclicTaskLogic_GetStcTime(nIndex,nUserId)
	local nEvent = tOneDay_CyclicTaskLogic_Stc[nIndex]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[nIndex]["DataType"]
	
	local nTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
	return nTime
end

--设置掩码值
function OneDay_CyclicTaskLogic_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tOneDay_CyclicTaskLogic_Stc[nIndex]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function OneDay_CyclicTaskLogic_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tOneDay_CyclicTaskLogic_Stc[nIndex]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加Task掩码值
function OneDay_CyclicTaskLogic_AddTaskData1(nTaskId)
	local nData = Get_TaskDetail(nTaskId,"1")+1
	Task_SetTaskDetailData1(nTaskId,nData)
end

-- 初始化怪物大师与组合杀怪记录数量
function OneDay_CyclicTaskLogic_InitAnaStcValue(nUserId)
	for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
		local nEvent = v["EventType"]
		local nType = v["DataType"]
		local nBasic = v["Basic"]
		Task_SetStatistic(nEvent,nType,nBasic,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 初始化对应
function OneDay_CyclicTaskLogic_InitIndexAnaStcValue(nIndex,nData,nUserId)
	local nEvent = tOneDay_CyclicTaskLogic_Stc[4][nIndex]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[4][nIndex]["DataType"]
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 获得怪物大师与组合杀怪记录数量
function OneDay_CyclicTaskLogic_GetAnaStcValue(nNowTaskId,nUserId)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 怪物大师--获得玩家击杀怪物数量
	local nTotalData = 0
	if nTaskIndex == 7 then
		for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
			local nEvent = v["EventType"]
			local nType = v["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if nData > v["Basic"] then
				for h=1,3 do
					local nMonsterIndex = tonumber(string.sub(nData,2+(h-1)*3,4+(h-1)*3))
					if nMonsterIndex > 0 then
						nTotalData = nTotalData + 1
					end
				end
			end
		end
		return nTotalData
	end
	
	-- 组合杀怪后两个stc计算怪物数量
	if nTaskIndex == 6 then
		for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
			local nEvent = v["EventType"]
			local nType = v["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if i >= 3 and nData > v["Basic"] then
				for h=1,3 do
					local nMonsterNum = tonumber(string.sub(nData,2+(h-1)*3,4+(h-1)*3))
					if nMonsterIndex > 0 then
						nTotalData = nTotalData + nMonsterNum
					end
				end
			end
		end
		return nTotalData
	end
end

-- 设置怪物大师数量-- 设置组合杀怪数量
function OneDay_CyclicTaskLogic_SetAnaStcValue(nNowTaskId,nMonsterId,nMonsterNum,nUserId)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 怪物大师--设置怪物id 只设置前12钟
	local nMonsterIndex = 0
	for a,b in pairs(tOneDay_CyclicTaskLogic_Area) do
		for j,k in pairs(b) do
			if k == nMonsterId then
				nMonsterIndex = tonumber(a..j)
				break
			end
		end
		if nMonsterIndex > 0 then
			break
		end
	end
	if nTaskIndex == 7 then
		local bHaveSet = false
		for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
			local nEvent = v["EventType"]
			local nType = v["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if nData >= v["Basic"] then
				for h=1,3 do
					local nNewMonsterIndex = tonumber(string.sub(nData,2+(h-1)*3,4+(h-1)*3))
					if nNewMonsterIndex == 0 then
						Task_AddStatistic(nEvent,nType,nMonsterIndex*tOneDay_CyclicTaskLogic_Count["Multiple"][h],1,nUserId)
						Task_SetStcTimestamp(nEvent,nType,0,nUserId)
						bHaveSet = true
						break
					end
				end
			end
			if bHaveSet then
				break
			end
		end
		return
	end
	
	if nTaskIndex == 6 then
		local nStcIndex = 0
		local nStcPos = 0
		for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
			local nEvent = v["EventType"]
			local nType = v["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if i <= 2 and nData >= v["Basic"] then
				for h=1,3 do
					local nNewMonsterIndex = tonumber(string.sub(nData,2+(h-1)*3,4+(h-1)*3))
					if nNewMonsterIndex == nMonsterIndex then
						nStcIndex = i + 2
						nStcPos = h
						break
					end
				end
			end
			if nStcPos > 0 then
				break
			end
		end
		if nStcIndex == 3 or nStcIndex == 4 then
			local nNumEvent = tOneDay_CyclicTaskLogic_Stc[4][nStcIndex]["EventType"]
			local nNumType = tOneDay_CyclicTaskLogic_Stc[4][nStcIndex]["DataType"]
			Task_AddStatistic(nNumEvent,nNumType,nMonsterNum*tOneDay_CyclicTaskLogic_Count["Multiple"][nStcPos],1,nUserId)
			Task_SetStcTimestamp(nNumEvent,nNumType,0,nUserId)
		end
		return
	end
end

-- 数字转换时间显示
function OneDay_CyclicTaskLogic_TimeTurn(nTime)
	-- 取分钟数
	local sMinute = ""
	local nMinute = math.floor(nTime/60)
	if nMinute == 0 then
		sMinute = "00"
	elseif nMinute <= 9 then
		sMinute = "0"..nMinute
	else
		sMinute = nMinute
	end
	
	-- 取秒数
	local sSecond = ""
	local nSecond = math.fmod(nTime,60)
	if nSecond == 0 then
		sSecond = "00"
	elseif nSecond <= 9 then
		sSecond = "0"..nSecond
	else
		sSecond = nSecond
	end
	local nNowHour = tonumber(os.date("%H"))
	local sNowHour = ""
	if nNowHour == 0 then
		sNowHour = "00"
	elseif nNowHour <= 9 then
		sNowHour = "0"..nNowHour
	else
		sNowHour = nNowHour
	end
	local sBasicShow = tOneDay_CyclicTaskLogic_Text["TimeShow"] 
	return string.format(sBasicShow,sNowHour,sMinute)
	-- return sMinute..":"..sSecond
end

-- 寻路
function OneDay_CyclicTaskLogic_Goto(nIndex,nNowTaskId)
	local tFindWay = tOneDay_CyclicTaskLogic_FindWay[nIndex][nNowTaskId]
	local nPosX = tFindWay["PosX"]
	local nPosY = tFindWay["PosY"]
	local nMapId = tFindWay["MapId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
end
---------------------------------------------------23492,'天下钱庄总管'-------------------------------------------
-- 初始化文字
function OneDay_CyclicTaskLogic_InitAcceptText()
	local nNpcId = Get_NpcId()
	
	-- 任务名称
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId == 0 then 
		nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	end
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	local nNowHour = os.date("%H")
	local nFinHour = os.date("%H",OneDay_CyclicTaskLogic_GetStcTime(2))
	if nNowTaskId > 0 and nFinishData >= 2  then
		nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	end
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	local sTaskName = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text111"]
	tNpcGossip[nNpcId]["Text111"] = string.format(sTaskName,tOneDay_CyclicTaskLogic_Text["TaskName"][nTaskIndex])
	
	-- 任务内容
	local sTaskDetail = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text115"]
	local sContent,sProgress = OneDay_CyclicTaskLogic_InitAcceptInfor(nNpcId,nNowTaskId,0)
	tNpcGossip[nNpcId]["Text115"] = string.format(sTaskDetail,sContent)
end

-- 初始化选项
function OneDay_CyclicTaskLogic_InitAcceptOption()
	local nNpcId = Get_NpcId()
	
	-- 玩家未接任务
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local sTaskName = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option121"]
	if nNowTaskId <= 0  then
		-- 当前可接任务名字
		tNpcGossip[nNpcId]["Option121"] = sTaskName
		tNpcGossip[nNpcId]["Option126"] = ""
		tNpcGossip[nNpcId]["Option127"] = ""
		tNpcGossip[nNpcId]["Option128"] = ""
		tNpcGossip[nNpcId]["Option123"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option123"]
		tNpcGossip[nNpcId]["Option122"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option122"]
		return
	end
	
	
	local nAllNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	local nNowHour = tonumber(os.date("%H"))
	local nFinHour = tonumber(os.date("%H",OneDay_CyclicTaskLogic_GetStcTime(2)))
	local nEvent = tOneDay_CyclicTaskLogic_Stc[2]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[2]["DataType"]
	-- 无悬赏令牌
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if nFinishData < 2 and not Item_ChkItem(nTaskItem) then
		-- tNpcGossip[nNpcId]["Option121"] = ""
		-- tNpcGossip[nNpcId]["Option126"] = ""
		-- tNpcGossip[nNpcId]["Option127"] = ""
		-- tNpcGossip[nNpcId]["Option128"] = ""
		-- tNpcGossip[nNpcId]["Option123"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option123"]
		-- tNpcGossip[nNpcId]["Option122"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option122"]
		-- return
	-- end
	if nFinishData < 1 and nAllNowTaskId ~= nNowTaskId then
		tNpcGossip[nNpcId]["Option128"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option128"]
		tNpcGossip[nNpcId]["Option123"] = ""
		tNpcGossip[nNpcId]["Option122"] = ""
	else
		tNpcGossip[nNpcId]["Option123"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option123"]
		tNpcGossip[nNpcId]["Option122"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option122"]
		tNpcGossip[nNpcId]["Option128"] = ""
	end
	
	-- 玩家接的任务名称
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 珍宝收集 或者 材料收集
	if nTaskIndex == 2 or nTaskIndex == 3 then
		tNpcGossip[nNpcId]["OptionFunc126"] = "OneDay_CyclicTaskLogic_CollectFinish</N>23492"
	else
		tNpcGossip[nNpcId]["OptionFunc126"] = "OneDay_CyclicTaskLogic_FinishTask</N>23492"
	end
	-- 完成试炼
	if nFinishData >= 2 and (nNowHour == nFinHour) and not Task_StcInterval(nEvent,nType,1,4) then
		local sFinishTaskStatus = tOneDay_CyclicTaskLogic_Text["FinishTaskStatus"]
		local sNowHour = ""
		local nNeedNowHour = nNowHour + 1
		if nNeedNowHour == 24 then
			nNeedNowHour = 0
		end
		if nNeedNowHour == 0 then
			sNowHour = "00"
		elseif nNeedNowHour < 9 then
			sNowHour = "0"..nNeedNowHour
		else
			sNowHour = nNeedNowHour
		end
		tNpcGossip[nNpcId]["Option121"] = string.format(sFinishTaskStatus,sNowHour)
		tNpcGossip[nNpcId]["Option126"] = ""
		tNpcGossip[nNpcId]["Option127"] = ""
		return
	end
	
	-- 完成显示新任务
	if nFinishData >= 2 then
		tNpcGossip[nNpcId]["Option121"] = sTaskName
		tNpcGossip[nNpcId]["Option126"] = ""
		tNpcGossip[nNpcId]["Option127"] = ""
		return
	end
	
	if nFinishData < 1 and nTaskIndex ~= 2 and nTaskIndex ~= 3 then
		tNpcGossip[nNpcId]["Option127"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option127"]
		tNpcGossip[nNpcId]["Option126"] = ""
	elseif nTaskIndex == 2 or nTaskIndex == 3 then
		local sIndex = ""
		if nTaskIndex == 2 then
			sIndex = "TreasuresId"
		else
			sIndex = "MaterialId"
		end
		local nItemNum = tOneDay_CyclicTaskLogic_Count[sIndex]["ItemNum"]
		local nNeedMaterialId = tOneDay_CyclicTaskLogic_Count[sIndex][nNowTaskId]
		if Item_ChkMulItem(nNeedMaterialId,nNeedMaterialId,nItemNum) then
			tNpcGossip[nNpcId]["Option127"] = ""
			tNpcGossip[nNpcId]["Option126"] = OneDay_CyclicTaskLogic_InitFinishInfor(nNpcId,nNowTaskId)
		else
			tNpcGossip[nNpcId]["Option127"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option127"]
			tNpcGossip[nNpcId]["Option126"] = ""
		end
	else
		tNpcGossip[nNpcId]["Option126"] = OneDay_CyclicTaskLogic_InitFinishInfor(nNpcId,nNowTaskId)
		tNpcGossip[nNpcId]["Option127"] = ""
	end
	-- 已接受未完成
	tNpcGossip[nNpcId]["Option121"] = ""
end

-- 初始化完成选项
function OneDay_CyclicTaskLogic_InitFinishInfor(nNpcId,nNowTaskId)
	if nNowTaskId == 0 then
		nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	end
	local nUserId = Get_UserId()
	local nTypeIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 试炼内容
	local sContent = ""
	if nTypeIndex == 8 then
		local sBasicContent = tOneDay_CyclicTaskLogic_Text["FinishTaskContent"][80001]
		local nMonsterId = tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][nNowTaskId]["MonsterId"]
		local sMonsterName = tOneDay_CyclicTaskLogic_Text["MonsterName"][nMonsterId] or tQuestRecruit_Text["MustName"][nMonsterId] or tOfferReward_Text["MonsterName"][nMonsterId]
		sContent = string.format(sBasicContent,sMonsterName)
	else
		sContent = tOneDay_CyclicTaskLogic_Text["FinishTaskContent"][nNowTaskId]
	end
	
	return sContent..tOneDay_CyclicTaskLogic_Text["AccecptTaskStatus"]
end

-- 初始化试炼内容信息
function OneDay_CyclicTaskLogic_InitAcceptInfor(nNpcId,nNowTaskId,nDif)
	if nNowTaskId == 0 then
		nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	end
	local nUserId = Get_UserId()
	local nTypeIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 试炼内容
	local sContent = ""
	if nTypeIndex <= 3 or nTypeIndex == 7 then
		sContent = tOneDay_CyclicTaskLogic_Text["TaskContent"][nNowTaskId]
	elseif nTypeIndex >= 4 and nTypeIndex <= 5 then
		if nNowTaskId == 40001 then
			sContent = tOneDay_CyclicTaskLogic_Text["TaskContent"][nNowTaskId]
		else
			local sBasic = tOneDay_CyclicTaskLogic_Text["TaskContent"][nNowTaskId]
			local sIndex = tOneDay_CyclicTaskLogic_Count["TaskToIndex"][nTypeIndex]
			local nKillNum = tOneDay_CyclicTaskLogic_KillData[sIndex][nNowTaskId]["MonsterNum"]
			sContent = string.format(sBasic,nKillNum)
		end
	elseif nTypeIndex == 6 then
		local sIndex = ""
		local tMapName = {}
		local tMonsterName = {}
		if nNowTaskId == 60001 then
			sIndex = "UnderGround"
		elseif nNowTaskId == 60002 then
			sIndex = "Area"
		end
		local nHaveNum = 0
		if tOneDay_CyclicTaskLogic_UserMonsterId[nUserId] == nil then
			tOneDay_CyclicTaskLogic_UserMonsterId[nUserId] = tOneDay_CyclicTaskLogic_MonsterId
		end
		for i,v in pairs(tOneDay_CyclicTaskLogic_Count[sIndex]) do 
			tMapName[i] = tOneDay_CyclicTaskLogic_Text["Area"][v]
			local nMonsterId = tOneDay_CyclicTaskLogic_UserMonsterId[nUserId][i]
			tMonsterName[i] = tOneDay_CyclicTaskLogic_Text["MonsterName"][nMonsterId] or tQuestRecruit_Text["MustName"][nMonsterId] or tOfferReward_Text["MonsterName"][nMonsterId]
			nHaveNum = nHaveNum + 1
		end
		local sBasicContent = tOneDay_CyclicTaskLogic_Text["BasicContent"]
		local sBasicProgress = tOneDay_CyclicTaskLogic_Text["BasicProgress"]
		local nMonsterNum = tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][nNowTaskId]["MonsterNum"]
		local nNum = 0
		if nDif ~= nil then
			local nTaskIndex = nNowTaskId+2
			local sNeedText = tOneDay_CyclicTaskLogic_Text["TaskContent"][nTaskIndex]
			if nNowTaskId == 60001 then
				sContent = string.format(sNeedText,tMonsterName[3056],tMonsterName[1001],tMonsterName[1926],tMonsterName[10029],nMonsterNum)
			elseif nNowTaskId == 60002 then
				sContent = string.format(sNeedText,tMonsterName[1002],tMonsterName[1011],tMonsterName[1020],tMonsterName[1000],tMonsterName[1015],nMonsterNum)
			end
		else
			for a,b in pairs(tMonsterName) do
				local sText = tMapName[a] .. b
				local nHaveMonsterNum = 0
				if tOneDay_CyclicTaskLogic_MonsterNum[nUserId] == nil then
					nHaveMonsterNum = 0
				else
					nHaveMonsterNum = tOneDay_CyclicTaskLogic_MonsterNum[nUserId][a] or 0
				end
				local sProgressText = string.format(sBasicProgress,nHaveMonsterNum,nMonsterNum)
				if nDif ~= nil then
					sProgressText = nMonsterNum
				end
				local sLastContent = string.format(sBasicContent,sText..sProgressText)
				nNum = nNum + 1
				if nNum == 1 then
					sContent = sLastContent .. "\n"
				elseif nNum < nHaveNum then
					sContent =sContent .. "                " .. sLastContent .. "\n"
				else
					sContent =sContent .. "                " .. sLastContent
				end
			end
		end
	else
		local sBasicContent = tOneDay_CyclicTaskLogic_Text["TaskContent"][80001]
		local nMonsterId = tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][nNowTaskId]["MonsterId"]
		local nMonsterNum = tOneDay_CyclicTaskLogic_KillData["MonsterRacing"][nNowTaskId]["MonsterNum"]
		local nArea = 0
		for i,v in pairs(tOneDay_CyclicTaskLogic_Area) do
			for a,b in pairs(v) do
				if b == nMonsterId then
					nArea = i
					break
				end
			end
		end
		
		local sNewMonsterName = tOneDay_CyclicTaskLogic_Text["MonsterName"][nMonsterId] or tQuestRecruit_Text["MustName"][nMonsterId] or tOfferReward_Text["MonsterName"][nMonsterId]
		sContent = string.format(sBasicContent,tOneDay_CyclicTaskLogic_Text["Area"][nArea],sNewMonsterName,nMonsterNum)
	end
	
	-- 完成进度
	local sProgress = ""
	local sBasicProgress = tOneDay_CyclicTaskLogic_Text["BasicProgress"]
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	local nKillMonsterData = OneDay_CyclicTaskLogic_GetStcValue(3)
	local nUserId = Get_UserId()
	local nKillMonsterNum = tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] or 0
	if nTypeIndex == 1 then
		sProgress = string.format(sBasicProgress,nKillMonsterData,1)
	elseif nTypeIndex == 2 then
		local nItemNum = tOneDay_CyclicTaskLogic_Count["TreasuresId"]["ItemNum"]
		local nNeedTreasuresId = tOneDay_CyclicTaskLogic_Count["TreasuresId"][nNowTaskId]
		local nNewHaveNum = Get_CountItemType(nNeedTreasuresId,0)
		sProgress = string.format(sBasicProgress,nNewHaveNum,nItemNum)
	elseif nTypeIndex == 3 then
		local nItemNum = tOneDay_CyclicTaskLogic_Count["MaterialId"]["ItemNum"]
		local nNeedMaterialId = tOneDay_CyclicTaskLogic_Count["MaterialId"][nNowTaskId]
		local nHaveNum = Get_CountItemType(nNeedMaterialId,0)
		sProgress = string.format(sBasicProgress,nHaveNum,nItemNum)
	elseif nTypeIndex == 4 then
		if nNowTaskId == 40001 then
			sProgress = string.format(sBasicProgress,nKillMonsterData,1)
		else
			nKillMonsterData = nKillMonsterData + nKillMonsterNum
			local sIndex = tOneDay_CyclicTaskLogic_Count["TaskToIndex"][nTypeIndex]
			local nKillNum = tOneDay_CyclicTaskLogic_KillData[sIndex][nNowTaskId]["MonsterNum"]
			sProgress = string.format(sBasicProgress,nKillMonsterData,nKillNum)
		end
	elseif nTypeIndex == 5 or nTypeIndex == 8 then
		nKillMonsterData = nKillMonsterData + nKillMonsterNum
		local sIndex = tOneDay_CyclicTaskLogic_Count["TaskToIndex"][nTypeIndex]
		local nKillNum = tOneDay_CyclicTaskLogic_KillData[sIndex][nNowTaskId]["MonsterNum"]
		sProgress = string.format(sBasicProgress,nKillMonsterData,nKillNum)
	elseif nTypeIndex == 6 then
		-- local sIndex = tOneDay_CyclicTaskLogic_Count["TaskToIndex"][nTypeIndex]
		-- local nKillNum = tOneDay_CyclicTaskLogic_KillData[sIndex][nNowTaskId]["MonsterNum"]
		-- local nAearNum = tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][nNowTaskId]["Arear"]
		sProgress = ""
	else
		sProgress = string.format(sBasicProgress,nKillMonsterData,12)
	end
	return sContent,sProgress
end

-- 接受任务
function OneDay_CyclicTaskLogic_AddTask(nTaskId)
	if Get_UserLevel() >= tOneDay_CyclicTaskLogic_Count["Level"] then
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				return true
			else
				return false
			end
		end
	end
end

-- 放弃任务
function OneDay_CyclicTaskLogic_DelTask(nTaskId)
	if Task_ChkTaskDetail(nTaskId) then
		Task_DelTaskDetail(nTaskId)
	end
end

-- 接受试炼
function OneDay_CyclicTaskLogic_AccpetTask(nNpcId)
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tOneDay_CyclicTaskLogic_Count["Level"],tOneDay_CyclicTaskLogic_Count["incarnation"]) then
		return
	end
	
	-- 当前时段完成过试炼任务
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	local nNowHour = tonumber(os.date("%H"))
	local nFinHour = tonumber(os.date("%H",OneDay_CyclicTaskLogic_GetStcTime(2)))
	local nEvent = tOneDay_CyclicTaskLogic_Stc[2]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[2]["DataType"]
	if nFinishData >= 2 and (nNowHour == nFinHour) and not Task_StcInterval(nEvent,nType,1,4)  then
		local sHaveAccept = tOneDay_CyclicTaskLogic_Text["HaveAccept"]
		local nShowHour = tonumber(nNowHour+1)
		local sShowHour = ""
		if nShowHour < 9 then
			sShowHour = "0"..nShowHour
		elseif nShowHour == 24 then
			sShowHour = "00"
		else
			sShowHour = tostring(nShowHour)
		end
		Sys_MsgBox(string.format(sHaveAccept,sShowHour))
		return
	end
	-- 身上有试炼任务未完成
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nFinishData >= 2 and nNowHour ~= nFinHour then
		nNowTaskId = 0
	end
	-- 初始化试炼内容信息
	OneDay_CyclicTaskLogic_SureAccpetTask(nNpcId)
end

-- 接受试炼
function OneDay_CyclicTaskLogic_SureAccpetTask(nNpcId)
	local nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	local nUserId = Get_UserId()
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	local tReward = {}
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if nTaskIndex == 8 then
		-- tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[nTaskItem][2])
	-- else
		-- tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[nTaskItem][1])
	-- end
	-- -- 背包不足
	-- if not Item_ChkItem(nTaskItem) then
		-- local nSpaceNum = RewardTemplate_GetRewardSpace(tReward,nNowUserId)
		-- if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
			-- Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FullSpace"])
			-- return
		-- end
	-- end
	
	-- 接受试炼
	if nTaskIndex == 6 then
		tOneDay_CyclicTaskLogic_MonsterNum[nUserId] = {}
		OneDay_CyclicTaskLogic_InitIndexAnaStcValue(1,nOneDay_CyclicTaskLogic_NewMonsterIndex,nUserId)
		OneDay_CyclicTaskLogic_InitIndexAnaStcValue(2,nOneDay_CyclicTaskLogic_OtherMonsterIndex,nUserId)
		OneDay_CyclicTaskLogic_InitIndexAnaStcValue(3,tOneDay_CyclicTaskLogic_Stc[4][1]["Basic"],nUserId)
		OneDay_CyclicTaskLogic_InitIndexAnaStcValue(4,tOneDay_CyclicTaskLogic_Stc[4][1]["Basic"],nUserId)
		tOneDay_CyclicTaskLogic_UserMonsterId[nUserId] = tOneDay_CyclicTaskLogic_MonsterId
	end
	if nTaskIndex == 7 then
		OneDay_CyclicTaskLogic_InitAnaStcValue()
		tOneDay_CyclicTaskLogic_MonsterType[nUserId] = {}
	end
	if nTaskIndex == 8 then
		User_SetTimer(tOneDay_CyclicTaskLogic_Count["UserTime"],nil,1,nUserId)
	end
	local nTaskId = tOneDay_CyclicTaskLogic_KillData["WildMonsters"][nNowTaskId]["TaskId"]
	if not OneDay_CyclicTaskLogic_AddTask(nTaskId) then
		return
	end
	OneDay_CyclicTaskLogic_SetStcValue(1,nNowTaskId)
	OneDay_CyclicTaskLogic_SetStcValue(2,0)
	OneDay_CyclicTaskLogic_SetStcValue(3,0)
	tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = 0
	
	-- 领取任务
	-- if not Item_ChkItem(nTaskItem) then
		-- local sLog = tOneDay_CyclicTaskLogic_Reward[nTaskItem]["Log"]
		-- tReward["Log"] = string.format(sLog,nNowTaskId)
		-- RewardTemplate_UseItem(tReward)
	-- end
	-- 领取任务
	local sAccecptTaskLog = tOneDay_CyclicTaskLogic_Log["AccecptTask"]
	Sys_SaveEmoneyBuy(tOneDay_CyclicTaskLogic_Log["AccecptEmoneyLog"])
	Sys_SaveActionFestivalLog(string.format(sAccecptTaskLog,nNowTaskId))
	
	-- 接受试炼成功
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- if nTaskIndex == 3 or nTaskIndex == 4 or nTaskIndex == 5 or nTaskIndex == 8 then
		-- tNpcGossip[nNpcId]["Option211"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Option283"]
	-- else
		-- tNpcGossip[nNpcId]["Option211"] =tOneDay_CyclicTaskLogic_Text[nNpcId]["Option2831"]
	-- end
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 1 试炼神速榜 2 试炼战神榜
function OneDay_CyclicTaskLogic_InitRanking(nNpcId,nIndex)
	local tRankingInfor = tOneDay_CyclicTaskLogic_Count["Ranking"][nIndex]
	-- 标题
	local sTitleIndex = tRankingInfor["TitleIndex"]
	tNpcGossip[nNpcId]["Text231"] = tOneDay_CyclicTaskLogic_Text[nNpcId][sTitleIndex]
	-- 信息列
	local sInforIndex = tRankingInfor["InforIndex"]
	tNpcGossip[nNpcId]["Text232"] = tOneDay_CyclicTaskLogic_Text[nNpcId][sInforIndex]
	-- 说明信息
	local sDesIndex = tRankingInfor["DesIndex"]
	tNpcGossip[nNpcId]["Text2313"] = tOneDay_CyclicTaskLogic_Text[nNpcId][sDesIndex]
	
	local tRankingData = RankingFunc_GetNowData(tRankingInfor["RankingIndex"])
	for i,v in pairs(tOneDay_CyclicTaskLogic_Count["Ranking"]["UserText"]) do
		local sMiddle = tOneDay_CyclicTaskLogic_Text["Null"]
		local sRight = tOneDay_CyclicTaskLogic_Text["Null"]
		if tRankingData[i] ~= nil then
			sMiddle = tRankingData[i]["UserName"]
			if nIndex == 1 then
				sRight = OneDay_CyclicTaskLogic_TimeTurn(tRankingData[i]["Score"])
			else
				sRight = tRankingData[i]["Score"]
			end
		end
		local sLast = tOneDay_CyclicTaskLogic_Text[nNpcId]["RakingLast"]
		if nIndex == 1 then
			if sMiddle == tOneDay_CyclicTaskLogic_Text["Null"] then
				tNpcGossip[nNpcId][v] = Sys_Alignment(i,5,sLast,15,sRight,35,sMiddle,55).."\n"
			else
				tNpcGossip[nNpcId][v] = Sys_Alignment(i,5,sLast,15,sRight,34,sMiddle,52).."\n"
			end
		else
			if sMiddle == tOneDay_CyclicTaskLogic_Text["Null"] then
				tNpcGossip[nNpcId][v] = Sys_Alignment(i,5,sLast,15,sRight,36,sMiddle,57).."\n"
			else
				tNpcGossip[nNpcId][v] = Sys_Alignment(i,5,sLast,15,sRight,39,sMiddle,54).."\n"
			end
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 完成试炼
function OneDay_CyclicTaskLogic_FinishTask(nNpcId,nIndex)
	local tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[1])
	local nFinishNum = OneDay_CyclicTaskLogic_GetStcValue(5)
	local nStoneNum = 1
	if nFinishNum == 0 or nFinishNum == 3 then
		tReward["Log"] = "0,0,%d,0,12001190,3[1],730001[4],5[30]"
		tReward["RewardItem"][1]["Attr"] = "0 5 3"
		tReward["RewardExpTime"]["FullLog"] = "0,0,%d,0,12001190,3[1],730001[2],5[30]"
		tReward["EmoneyLog"] = "350	22041	1	1	1	"
		nStoneNum = 3
	end
	if nFinishNum == 1 or nFinishNum == 4 then
		tReward["Log"] = "0,0,%d,0,12001190,3[1],730001[4],3[30]"
		tReward["RewardItem"][1]["Attr"] = "0 3 3"
		tReward["RewardExpTime"]["FullLog"] = "0,0,%d,0,12001190,3[1],730001[2],3[30]"
		tReward["EmoneyLog"] = "350	22042	1	1	1	"
		nStoneNum = 2
	end
	if nIndex == nil then
		-- 等级不足
		if not User_JudgeLevelAndMetempsychosis(tOneDay_CyclicTaskLogic_Count["Level"],tOneDay_CyclicTaskLogic_Count["incarnation"]) then
			return
		end
		
		-- 未完成任务
		local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
		if nFinishData < 1 then
			Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NoFinishTask"])
			return
		end
		
		-- 已领过奖励
		if nFinishData == 2 then
			Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["HaveReward"])
			return
		end
		
		-- 领奖背包不足
		local nSpaceNum = RewardTemplate_GetRewardSpace(tReward,nNowUserId)+2
		if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
			Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FullSpaceReward"])
			return
		end
	end
	
	-- 有任务物品
	-- local nTaskItemId = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	-- if Item_ChkItem(nTaskItemId) and Item_DelItem(nTaskItemId) then
		-- local sTaskItemLog = tOneDay_CyclicTaskLogic_Log["HaveTaskItem"]
		-- Sys_SaveActionFestivalLog(string.format(sTaskItemLog,nTaskItemId,nNowTaskId))
	-- end
	
	-- 刷新排行榜
	local nTypeIndex = tonumber(string.sub(nNowTaskId,1,1))
	if nNowTaskId == nOneDay_CyclicTaskLogic_NowTaskId and nTypeIndex ~= 7 then
		local nNowMinute = tonumber(os.date("%M"))
		local nNowSecond = tonumber(os.date("%S"))
		local nDisTime = nNowMinute*60+nNowSecond
		RankingFunc_SetInfo(tOneDay_CyclicTaskLogic_Count["Ranking"][1]["RankingIndex"],nDisTime)
	end
	local nNowFinishNum = OneDay_CyclicTaskLogic_GetStcValue(3)
	if nNowTaskId == nOneDay_CyclicTaskLogic_NowTaskId and nTypeIndex == 7 then
		RankingFunc_SetInfo(tOneDay_CyclicTaskLogic_Count["Ranking"][2]["RankingIndex"],nNowFinishNum)
	end
	-- 完成试炼
	local nTaskId = tOneDay_CyclicTaskLogic_KillData["WildMonsters"][nNowTaskId]["TaskId"]
	OneDay_CyclicTaskLogic_DelTask(nTaskId)
	OneDay_CyclicTaskLogic_SetStcValue(2,2)
	OneDay_CyclicTaskLogic_AddStcValue(5,1)
	if nTypeIndex ~= 7 then
		OneDay_CyclicTaskLogic_SetStcValue(3,0)
	end
	-- OneDay_CyclicTaskLogic_SetStcValue(1,0)
	if nTypeIndex == 6 then
		OneDay_CyclicTaskLogic_InitAnaStcValue(nUserId)
	end
	
	-- 领取任务
	local nLev = Get_UserLevel(nUserId)
	local bFull = false
	if nLev >= G_User_MaxLev then
		bFull = true
	end
	local sLog = tOneDay_CyclicTaskLogic_Reward[1]["Log"]
	tReward["Log"] = string.format(sLog,nNowTaskId)
	local sFullLog = tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"]["FullLog"]
	tReward["RewardExpTime"]["FullLog"] = string.format(sFullLog,nNowTaskId)
	RewardTemplate_UseItem(tReward)
	-- 碎片合成
	local nPieceItem = tOneDay_CyclicTaskLogic_Count["PieceItem"]
	local nPieceItemNum = tOneDay_CyclicTaskLogic_Count["PieceItemNum"]
	local bCompose = false
	if Item_ChkMulItem(nPieceItem,nPieceItem,nPieceItemNum) then
		bCompose = true
		RewardTemplate_UseItem(tOneDay_CyclicTaskLogic_Reward[nPieceItem])
	end
	-- 给外套
	local nGuildId = Get_UserGuildId(nUserId)
	local sGuildName = ""
	if nGuildId > 0 then
		sGuildName = Get_UserSynDicateName(nGuildId,nUserId)
	end
	local sBasicUserName = sGuildName..tOneDay_CyclicTaskLogic_Text["BasicUserName"]
	local sBasicBroadMiaowu = string.format(tOneDay_CyclicTaskLogic_Text["BroadMiaowu"],sBasicUserName)
	local sBasicBroadBingfeng = string.format(tOneDay_CyclicTaskLogic_Text["BroadBingfeng"],sBasicUserName)
	local sBasicBroadStone5 = string.format(tOneDay_CyclicTaskLogic_Text["BroadStone5"],sBasicUserName)
	local sBasicBroadStone6 = string.format(tOneDay_CyclicTaskLogic_Text["BroadStone6"],sBasicUserName)
	tOneDay_CyclicTaskLogic_Reward[3][1]["RewardBroadCast"] = sBasicBroadMiaowu
	tOneDay_CyclicTaskLogic_Reward[3][2]["RewardBroadCast"] = sBasicBroadBingfeng
	tOneDay_CyclicTaskLogic_Reward[3][3]["RewardBroadCast"] = sBasicBroadStone5
	tOneDay_CyclicTaskLogic_Reward[3][4]["RewardBroadCast"] = sBasicBroadStone6
	RewardTemplate_NewRandom(tOneDay_CyclicTaskLogic_Reward,3)
	
	-- 完成任务
	local sFinishTaskLog = tOneDay_CyclicTaskLogic_Log["FinishTask"]
	local sNewLast = ""
	Sys_SaveEmoneyBuy(tOneDay_CyclicTaskLogic_Log["FinishEmoneyLog"])
	Sys_SaveActionFestivalLog(string.format(sFinishTaskLog,nNowTaskId))
	local sLastText = ""
	if bFull then
		sLastText = tOneDay_CyclicTaskLogic_Text["FinishTaskRewardFull"][nStoneNum]
		sNewLast = tOneDay_CyclicTaskLogic_Text["FinishTaskRewardFullUser"]
	else
		local sFinishTaskReward = tOneDay_CyclicTaskLogic_Text["FinishTaskReward"][nStoneNum]
		local nExpData = tOneDay_CyclicTaskLogic_Reward[1]["RewardExpTime"]["Value"]
		sLastText = string.format(sFinishTaskReward,nExpData)
		sNewLast = string.format(tOneDay_CyclicTaskLogic_Text["FinishTaskRewardUser"][nStoneNum],nExpData)
	end
	local sUserName = Get_UserName(nUserId)
	local sFinishBroad = tOneDay_CyclicTaskLogic_Text["FinishBroad"]
	local sLastBroadcast = string.format(sFinishBroad,sGuildName,sUserName)
	Sys_SystemBroadcast(sLastBroadcast)
	if bCompose then
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NewFinishTaskReward"],"NpcPosition_PathFind</N>23519")
		User_TalkChannel2005(sNewLast)
	else
		Sys_MsgBox(sLastText)
		User_TalkChannel2005(sNewLast)
	end
end

-- 前往试炼地点
function OneDay_CyclicTaskLogic_FindWay()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	if nTaskIndex == 3 or nTaskIndex == 5 or nTaskIndex == 8 then
		OneDay_CyclicTaskLogic_Goto(nTaskIndex,nNowTaskId)
	elseif nTaskIndex == 4 or nTaskIndex == 7 then
		OneDay_CyclicTaskLogic_Goto(nTaskIndex,1)
	else
		-- 没有寻路位置寻路
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NoFindWay"])
	end
end

-- 放弃并刷新赏金任务
function OneDay_CyclicTaskLogic_RefreshTask(nNpcId)
		-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tOneDay_CyclicTaskLogic_Count["Level"],tOneDay_CyclicTaskLogic_Count["incarnation"]) then
		return
	end
	
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nAllTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	-- if nNowTaskId == nAllTaskId then
		-- return
	-- end
	-- 有任务物品
	-- local nTaskItemId = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	-- if Item_ChkItem(nTaskItemId) and Item_DelItem(nTaskItemId) then
		-- local sTaskItemLog = tOneDay_CyclicTaskLogic_Log["HaveTaskItem"]
		-- Sys_SaveActionFestivalLog(string.format(sTaskItemLog,nTaskItemId,nNowTaskId))
	-- end
	
	local nTaskId = tOneDay_CyclicTaskLogic_KillData["WildMonsters"][nNowTaskId]["TaskId"]
	OneDay_CyclicTaskLogic_DelTask(nTaskId)
	OneDay_CyclicTaskLogic_SetStcValue(2,0)
	OneDay_CyclicTaskLogic_SetStcValue(3,0)
	OneDay_CyclicTaskLogic_SetStcValue(1,0)
	OneDay_CyclicTaskLogic_InitAcceptText()
	OneDay_CyclicTaskLogic_InitAnaStcValue()
	OneDay_CyclicTaskLogic_InitAcceptOption()
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

-- 补领循环赏金令
function OneDay_CyclicTaskLogic_ReplaceItem(nNpcId)
	local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	if Item_ChkItem(nTaskItem) then
		return
	end
	
	-- 背包不足
	local tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[nTaskItem])
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward,nNowUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NewFullSpace"])
		return
	end
	
	local sLog = tOneDay_CyclicTaskLogic_Reward[nTaskItem]["Log"]
	tReward["Log"] = string.format(sLog,0)
	RewardTemplate_UseItem(tReward)
	
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

-- 放弃任务重新领取
function OneDay_CyclicTaskLogic_GiveUpAccept(nNpcId)
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if Item_ChkItem(nTaskItem) then
		-- return
	-- end
	
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- local tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[nTaskItem][1])
	-- -- 背包不足
	-- local nSpaceNum = RewardTemplate_GetRewardSpace(tReward,nNowUserId)
	-- if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		-- Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FullSpace"])
		-- return
	-- end
	
	OneDay_CyclicTaskLogic_SetStcValue(2,0)
	OneDay_CyclicTaskLogic_SetStcValue(3,0)
	OneDay_CyclicTaskLogic_SetStcValue(1,0)
	
	OneDay_CyclicTaskLogic_SureAccpetTask(nNpcId)
end
--------------------------------------击杀敌对玩家
-- nKiller 击杀者 nKilled 被击杀
function OneDay_CyclicTaskLogic_KillOtherPlayer(nKiller,nKilled)
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	
	local nKillerGuildId = Get_UserGuildId(nKiller)
	local nKilledGuildId = Get_UserGuildId(nKilled)
	
	-- 检测是否有帮派
	if nKillerGuildId <= 0 or nKilledGuildId <= 0 then
		return
	end
	local sKilledGuildName = Get_UserSynDicateName(nKilledGuildId)
	
	-- 是否击杀敌对玩家任务
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1,nKiller)
	if nNowTaskId <= 0 or nNowTaskId ~= 10001 then
		return
	end
	-- 完成击杀任务
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2,nKiller)
	if nFinishData >= 1 then
		return
	end
	
	local bEnemy = false
	-- 获取敌对帮派
	local tGuildEnemyName = Get_UserSynHostileGangs(nKillerGuildId,nKiller)
	for i,v in ipairs(tGuildEnemyName) do
		-- 获取指定帮派的帮派ID
		if v == sKilledGuildName then
			bEnemy = true
			break
		end
	end
	
	-- 置任务完成
	if bEnemy then
		OneDay_CyclicTaskLogic_AddStcValue(2,1,nKiller)
		OneDay_CyclicTaskLogic_SetStcValue(3,1,nKiller)
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishTaskt"],nil,nil,nKiller)
	end
end
--------------------------------------珍宝收集/材料收集
function OneDay_CyclicTaskLogic_CollectFinish(nNpcId)
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tOneDay_CyclicTaskLogic_Count["Level"],tOneDay_CyclicTaskLogic_Count["incarnation"]) then
		return
	end
	
	-- 判断是否完成任务
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 2 then
		return
	end
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId <= 0 then
		return
	end
	
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	local sIndex = ""
	if nTaskIndex == 2 then
		sIndex = "TreasuresId"
	else
		sIndex = "MaterialId"
	end
	-- 材料不足
	local nTreasuresId = tOneDay_CyclicTaskLogic_Count[sIndex][nNowTaskId]
	local nItemNum = tOneDay_CyclicTaskLogic_Count[sIndex]["ItemNum"]
	local sItemName = Get_ItemtypeName(nTreasuresId)
	if not Item_ChkMulItem(nTreasuresId,nTreasuresId,nItemNum) then
		local sNoMaterial = tOneDay_CyclicTaskLogic_Text["NoMaterial"]
		Sys_MsgBox(string.format(sNoMaterial,sItemName))
		return
	end
	
	-- 领奖背包不足
	local tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[1])
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward,nNowUserId)+2
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FullSpaceReward"])
		return
	end
	
	-- 提交任务
	if Item_DelMulItem(nTreasuresId,nTreasuresId,nItemNum) then
		-- 提交道具打掩码
		local sTreasureTaskLog = tOneDay_CyclicTaskLogic_Log["TreasureTask"]
		Sys_SaveActionFestivalLog(string.format(sTreasureTaskLog,nTreasuresId,nItemNum,nNowTaskId))
		-- 设置任务完成
		OneDay_CyclicTaskLogic_SetStcValue(2,1)
		OneDay_CyclicTaskLogic_SetStcValue(3,1)
		-- 给奖励
		OneDay_CyclicTaskLogic_FinishTask(nNpcId,1)
		-- 提示
		-- local sText = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text311"]
		-- tNpcGossip[nNpcId]["Text311"] = string.format(sText,nItemNum,sItemName)
		-- LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end
--------------------------------------材料收集
function OneDay_CyclicTaskLogic_MaterialCollect(nMonsterId)
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	
	-- 判断是否有任务
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 1 then
		return
	end
	-- 非材料收集任务
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	if nNowTaskId <= 0 or nTaskIndex ~= 3 then
		return
	end
	
	-- 击杀是否对应任务怪物
	local nArea = tOneDay_CyclicTaskLogic_Count["MaterialCollect"][nNowTaskId]
	local bMonster = false
	for i,v in pairs(tOneDay_CyclicTaskLogic_Area[nArea]) do
		if v == nMonsterId then
			bMonster = true
			break
		end
	end
	if not bMonster then
		return
	end
	local tKillMonster = tOneDay_CyclicTaskLogic_KillMonster[3][nNowTaskId]
	local nTaskItemId = tKillMonster[1]["RewardItem"][1]["Id"]
	local ItemNum = tOneDay_CyclicTaskLogic_Count["MaterialId"]["ItemNum"]
	if Item_ChkMulItem(nTaskItemId,nTaskItemId,ItemNum) then
		return
	end
	
	-- 对应任务掉落对应物品
	RewardTemplate_NewRandom(tOneDay_CyclicTaskLogic_KillMonster[3],nNowTaskId)
	if Item_ChkMulItem(nTaskItemId,nTaskItemId,ItemNum) then
		-- 给完成任务提示
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishCollect"])
		return
	end
end
--------------------------------------墨守迷城
-- 通关一层
function OneDay_CyclicTaskLogic_FinishFourLayerFirst(nNowUserId)
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	
	-- 是否击通关一层墨守迷城任务
	local nUserId = nNowUserId or Get_UserId()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1,nUserId)
	if nNowTaskId <= 0 or nNowTaskId ~= 40001 then
		return
	end
	
	-- 完成击杀任务
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2,nUserId)
	if nFinishData >= 1 then
		return
	end
	
	OneDay_CyclicTaskLogic_AddStcValue(2,1,nUserId)
	OneDay_CyclicTaskLogic_SetStcValue(3,1,nUserId)
	Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishTaskt"],nil,nil,nUserId)
end
--------------------------------------所有杀怪任务
-- 击杀怪物
function OneDay_CyclicTaskLogic_AllKillMonster(nMonsterId)
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	-- 非击杀怪物任务
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	if nNowTaskId <= 0 or nTaskIndex < 4 or nNowTaskId == 40001 then
		return
	end
	
	local sIndex = tOneDay_CyclicTaskLogic_Count["TaskToIndex"][nTaskIndex]
	local tKillData = tOneDay_CyclicTaskLogic_KillData[sIndex]
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	local nUserId = Get_UserId()
	local nKillMonsterNum = tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] or 0
	local nKillSave = tOneDay_CyclicTaskLogic_Count["KillSave"]
	
	local nAccecptTime = 0
	local nMonsterNum = 0
	local nKillNum = 0
	-- 怪物大师计算类型
	if nTaskIndex == 7 then
		local nNowFinishNum = 0
		if tOneDay_CyclicTaskLogic_MonsterType[nUserId] ~= nil then
			for a,b in pairs(tOneDay_CyclicTaskLogic_MonsterType[nUserId]) do
				if a == nMonsterId then
					return
				end
				nNowFinishNum = nNowFinishNum + 1
			end
			tOneDay_CyclicTaskLogic_MonsterType[nUserId][nMonsterId] = 1
			nNowFinishNum = nNowFinishNum + 1
		else
			tOneDay_CyclicTaskLogic_MonsterType[nUserId] = {}
			tOneDay_CyclicTaskLogic_MonsterType[nUserId][nMonsterId] = 1
			nNowFinishNum = nNowFinishNum + 1
		end
		local nOldNum = OneDay_CyclicTaskLogic_GetStcValue(3)
		local nFinishNum = tOneDay_CyclicTaskLogic_Count["FinishNum"] 
		-- 刷新排行榜
		if nNowFinishNum > nOldNum then
			OneDay_CyclicTaskLogic_AddStcValue(3,1)
			if nNowFinishNum <= nFinishNum then
				OneDay_CyclicTaskLogic_SetAnaStcValue(nNowTaskId,nMonsterId,0)
			end
		end
		if nFinishData >= 2 and nNowTaskId == nOneDay_CyclicTaskLogic_NowTaskId and  nNowFinishNum > nFinishNum then
			RankingFunc_SetInfo(tOneDay_CyclicTaskLogic_Count["Ranking"][2]["RankingIndex"],nNowFinishNum)
		end
		if nNowFinishNum == nFinishNum and nFinishData < 1 then
			-- 置任务完成
			OneDay_CyclicTaskLogic_SetStcValue(2,1)
			-- 提示完成
			Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishTaskt"])
		end
		return
	else
		-- 添加数量
		if nFinishData >= 1 then
			return
		end
		
		-- 计算数量
		local tMonsterId = tKillData[nNowTaskId]["MonsterId"]
		if type(tMonsterId) == "number" then
			if tMonsterId ~= nMonsterId then
				return
			end
		elseif nTaskIndex ~= 6 then
			local bHave = false
			for i,v in pairs(tMonsterId) do
				if v == nMonsterId then
					bHave = true
				end
			end
			if not bHave then
				return
			end
		end
		
		nAccecptTime = OneDay_CyclicTaskLogic_GetStcTime(2)
		nMonsterNum = tKillData[nNowTaskId]["MonsterNum"]
		nTaskId = tKillData[nNowTaskId]["TaskId"]
		OneDay_CyclicTaskLogic_AddTaskData1(nTaskId)
		nKillNum = OneDay_CyclicTaskLogic_GetStcValue(3)
		if nTaskIndex == 8 then
			local nNowTime = os.time()
			local nDisTime = nNowTime-nAccecptTime
			if nDisTime > tOneDay_CyclicTaskLogic_Count["FinishTime"] then
				-- 失败，重新去领取任务
				OneDay_CyclicTaskLogic_SetStcValue(1,0)
				OneDay_CyclicTaskLogic_SetStcValue(3,0)
				tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = 0
				-- local nTaskItemId = tOneDay_CyclicTaskLogic_Count["TaskItem"]
				-- local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
				-- if Item_ChkItem(nTaskItemId) and Item_DelItem(nTaskItemId) then
					-- local sTaskItemLog = tOneDay_CyclicTaskLogic_Log["DelTaskItem"]
					-- Sys_SaveActionFestivalLog(string.format(sTaskItemLog,nTaskItemId,nNowTaskId))
				-- end
				Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FailFinishTaskt"])
				return
			end
		end
		-- 组合杀怪 （组队共享）
		if nTaskIndex == 6 then
			local nNeedKillNum = tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][nNowTaskId]["MonsterNum"]
			local nAearNum = tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][nNowTaskId]["Arear"]
			nMonsterNum = nNeedKillNum*nAearNum
			local nNowKillNum = 0
			local bHaveMonster = false
			if tOneDay_CyclicTaskLogic_UserMonsterId[nUserId] == nil then
				tOneDay_CyclicTaskLogic_UserMonsterId[nUserId] = {}
			end
			for i,v in pairs(tOneDay_CyclicTaskLogic_UserMonsterId[nUserId]) do
				if v == nMonsterId then
					if tOneDay_CyclicTaskLogic_MonsterNum[nUserId] == nil then
						tOneDay_CyclicTaskLogic_MonsterNum[nUserId] = {}
					end
					nNowKillNum = tOneDay_CyclicTaskLogic_MonsterNum[nUserId][i] or 0
					if nNowKillNum < nNeedKillNum then
						tOneDay_CyclicTaskLogic_MonsterNum[nUserId][i] = nNowKillNum + 1
					end
					bHaveMonster = true
					-- OneDay_CyclicTaskLogic_AddStcValue(3,1)
					break
				end
			end
			if not bHaveMonster then
				return
			end
			local nAllKill = 0
			for a,b in pairs(tOneDay_CyclicTaskLogic_MonsterNum[nUserId]) do
				nAllKill = nAllKill + b
			end
			nKillNum = nAllKill
			local nKillNowNum = nNowKillNum+1
			if nKillNowNum < 10 then
				OneDay_CyclicTaskLogic_AddStcValue(3,1,nUserId)
				OneDay_CyclicTaskLogic_SetAnaStcValue(nNowTaskId,nMonsterId,1,nUserId)
			end
			if nKillNowNum <= nNeedKillNum and nKillNowNum > 10 and nKillNowNum%10 == 0 then
				OneDay_CyclicTaskLogic_AddStcValue(3,10,nUserId)
				OneDay_CyclicTaskLogic_SetAnaStcValue(nNowTaskId,nMonsterId,10,nUserId)
			end
		elseif nTaskIndex == 4 then
			if nKillMonsterNum + 1 == 10 then
				OneDay_CyclicTaskLogic_AddStcValue(3,10)
				tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = 0
				nKillNum = nKillNum + 10
			else
				tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = nKillMonsterNum + 1
				nKillNum = nKillNum + 1
			end
		else
			if nKillMonsterNum + 1 == nKillSave then
				OneDay_CyclicTaskLogic_AddStcValue(3,nKillSave)
				tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = 0
				nKillNum = nKillNum + nKillSave
			else
				tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = nKillMonsterNum + 1
				nKillNum = nKillNum + 1
			end
		end
		-- if nTaskIndex == 5 or nTaskIndex == 6 then
			-- local sFunc = "OneDay_CyclicTaskLogic_TeamKillMonster</N>"..nMonsterId.. "</N>"..nNowTaskId
			-- User_TeamExeFuncByLeader(1,sFunc)
		-- end
		nKillNum = Get_TaskDetailData1(nTaskId)
		if nKillNum >= nMonsterNum then
			-- 杀怪竞速
			if nTaskIndex == 8 then
				local nNowTime = os.time()
				local nDisTime = nNowTime-nAccecptTime
				if nDisTime <= tOneDay_CyclicTaskLogic_Count["FinishTime"] then
					OneDay_CyclicTaskLogic_SetStcValue(2,1)
					-- 刷新排行榜
					-- if nNowTaskId == nOneDay_CyclicTaskLogic_NowTaskId then
						-- RankingFunc_SetInfo(tOneDay_CyclicTaskLogic_Count["Ranking"][1]["RankingIndex"],nDisTime)
					-- end
					Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishTaskt"])
				end
			else
				-- 置任务完成
				OneDay_CyclicTaskLogic_SetStcValue(2,1)
				-- 提示完成
				Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishTaskt"])
			end
		end
	end
end

-- 组队杀怪
function OneDay_CyclicTaskLogic_TeamKillMonster(nMonsterId,nUseTaskId,nUserId)
	-- 非击杀怪物任务
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1,nUserId)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	if not (nTaskIndex == 5 or nTaskIndex == 6) then
		return
	end
	if nNowTaskId ~= nUseTaskId then
		return
	end
	local nKillMonsterNum = tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] or 0
	local nKillSave = tOneDay_CyclicTaskLogic_Count["KillSave"]
	local nMonsterNum = 0
	local nKillNum = OneDay_CyclicTaskLogic_GetStcValue(3,nUserId)
	if nTaskIndex == 5 then
		nMonsterNum = tOneDay_CyclicTaskLogic_KillData["WildMonsters"][nNowTaskId]["MonsterNum"]
		if nKillMonsterNum + 1 == nKillSave then
			OneDay_CyclicTaskLogic_AddStcValue(3,nKillSave,nUserId)
			tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = 0
			nKillNum = nKillNum + nKillSave
		else
			tOneDay_CyclicTaskLogic_KillMonsterNum[nUserId] = nKillMonsterNum + 1
			nKillNum = nKillNum + 1
		end
	end
	if nTaskIndex == 6 then
		local nNeedKillNum = tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][nNowTaskId]["MonsterNum"]
		local nAearNum = tOneDay_CyclicTaskLogic_KillData["CombinationMonsters"][nNowTaskId]["Arear"]
		local nNowKillNum = 0
		nMonsterNum = nNeedKillNum*nAearNum
		for i,v in pairs(tOneDay_CyclicTaskLogic_MonsterId[nUserId]) do
			if v == nMonsterId then
				if tOneDay_CyclicTaskLogic_MonsterNum[nUserId] == nil then
					tOneDay_CyclicTaskLogic_MonsterNum[nUserId] = {}
				end
				nNowKillNum = tOneDay_CyclicTaskLogic_MonsterNum[nUserId][i] or 0
				if nNowKillNum < nNeedKillNum then
					tOneDay_CyclicTaskLogic_MonsterNum[nUserId][i] = nNowKillNum + 1 
				end
				break
			end
		end
		local nAllKill = 0
		for a,b in pairs(tOneDay_CyclicTaskLogic_MonsterNum[nUserId]) do
				nAllKill = nAllKill + b
		end
		local nKillNowNum = nNowKillNum+1
		nKillNum = nAllKill
		if nKillNowNum < 10 then
			OneDay_CyclicTaskLogic_AddStcValue(3,1,nUserId)
			OneDay_CyclicTaskLogic_SetAnaStcValue(nNowTaskId,nMonsterId,1,nUserId)
		end
		if nKillNowNum <= nNeedKillNum and nKillNowNum > 10 and nKillNowNum%10 == 0 then
			OneDay_CyclicTaskLogic_AddStcValue(3,10,nUserId)
			OneDay_CyclicTaskLogic_SetAnaStcValue(nNowTaskId,nMonsterId,10,nUserId)
		end
	end
	if nKillNum >= nMonsterNum then
		-- 置任务完成
		OneDay_CyclicTaskLogic_SetStcValue(2,1,nUserId)
		-- 提示完成
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["FinishTaskt"],nil,nil,nUserId)
	end
end
---------------------------------------------------物品-------------------------------------------
-- 万宝秘钥碎片
function OneDay_CyclicTaskLogic_UseItem(nItemId)
	local nPieceItem = tOneDay_CyclicTaskLogic_Count["PieceItem"]
	local nPieceItemNum = tOneDay_CyclicTaskLogic_Count["PieceItemNum"]
	if not Item_ChkMulItem(nPieceItem,nPieceItem,nPieceItemNum) then
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NoPieceItem"])
		return
	end
	RewardTemplate_UseItem(tOneDay_CyclicTaskLogic_Reward[nPieceItem])
end

-- 循环赏金令
function OneDay_CyclicTaskLogic_OpenItem(nItemId)
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId <= 0 then
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NoTask"])
		return
	end
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	local sContent,sProgress = OneDay_CyclicTaskLogic_InitAcceptInfor(nItemId,nNowTaskId)
	local sBasicText = tOneDay_CyclicTaskLogic_Text[nItemId]["Text113"]
	local sBasicProgress = tOneDay_CyclicTaskLogic_Text[nItemId]["Text114"]
	tItem[nItemId]["Text113"] = string.format(sBasicText,sContent)
	if nTaskIndex == 6 then
		tItem[nItemId]["Text114"] = ""
	else
		tItem[nItemId]["Text114"] = string.format(sBasicProgress,sProgress)
	end
	local nRewardNpcId = tOneDay_CyclicTaskLogic_Count["MainNpcId"]
	local nTextIndex = 0
	if nTaskIndex == 4 or nTaskIndex == 5 or nTaskIndex == 8 then
		nTextIndex = 1
	elseif nTaskIndex == 2 then
		local nItemNum = tOneDay_CyclicTaskLogic_Count["TreasuresId"]["ItemNum"]
		local nNeedMaterialId = tOneDay_CyclicTaskLogic_Count["TreasuresId"][nNowTaskId]
		if Item_ChkMulItem(nNeedMaterialId,nNeedMaterialId,nItemNum) then
			nTextIndex = 2
		else
			nTextIndex = 3
		end
	elseif nTaskIndex == 3 then
		local nItemNum = tOneDay_CyclicTaskLogic_Count["MaterialId"]["ItemNum"]
		local nNeedMaterialId = tOneDay_CyclicTaskLogic_Count["MaterialId"][nNowTaskId]
		if Item_ChkMulItem(nNeedMaterialId,nNeedMaterialId,nItemNum) then
			nTextIndex = 2
		else
			nTextIndex = 1
		end
	else
		nTextIndex = 3
	end
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData == 1 then
		nTextIndex = 2
	end
	-- 选项赋值和寻路
	if nTextIndex == 1 then
		tItem[nItemId]["Option111"] = tOneDay_CyclicTaskLogic_Text[nItemId]["Option111"]
		-- 前往试炼地点
		tItem[nItemId]["OptionFunc111"] = "OneDay_CyclicTaskLogic_FindWay"
	elseif nTextIndex == 2 then
			tItem[nItemId]["Option111"] = tOneDay_CyclicTaskLogic_Text[nItemId]["Option1112"]
			-- 前往完成任务
			tItem[nItemId]["OptionFunc111"] = "NpcPosition_PathFind</N>"..nRewardNpcId
	else
		tItem[nItemId]["Option111"] =tOneDay_CyclicTaskLogic_Text[nItemId]["Option111"]
		tItem[nItemId]["OptionFunc111"] = "OneDay_CyclicTaskLogic_FindWay"
	end
	-- 标题
	local sBasic = tOneDay_CyclicTaskLogic_Text[23492]["Text111"]
	tItem[nItemId]["Text111"] = string.format(sBasic,tOneDay_CyclicTaskLogic_Text["TaskName"][nTaskIndex])
	LinkItemGossipFunc_New(nItemId,"1-1")
end
--------------------------------------时间自检
function OneDay_CyclicTaskLogic_ResetTask()
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId) 
	-- 标志使用npc清除
	local sDataStr4 = Get_SysDynaGlobalDataStr4(nGlobalId) 
	
	if Sys_ChkMinute(tOneDay_CyclicTaskLogic_Count["Time"]) then
		if sDataStr4 == "1" then
			return
		end
		if sDataStr5 == "1" or sDataStr5 == "7" or sDataStr5 == "8" then
			return
		end
	else
		if sDataStr4 == "1" then
			Sys_SetSynaGlobalDataStr4(nGlobalId,"0")
			return
		end
		--清空排行
		if sDataStr5 == "1" then
			Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			return
		elseif sDataStr5 == "7" or sDataStr5 == "8" then
			local nMainNpcId = tOneDay_CyclicTaskLogic_Count["MainNpcId"]
			local nIndex = tonumber(nMainNpcId..sDataStr5)
			for i,v in pairs(tRankingFunc_Info[nIndex]["Global"]) do
				Sys_ResetAllSynaGlobalData(v)
				Sys_ResetAllSynaGlobalDataStr(v)
			end
			OneDay_CyclicTaskLogic_NewResetGlobalData(nIndex,"1")
			RankingFunc_SetInitialData(nIndex)
			Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
		end
		return
	end
	OneDay_CyclicTaskLogic_RandomTask()
end

-- 随机任务
function OneDay_CyclicTaskLogic_RandomTask()
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId) 
	
	-- 每次根据概率从任务库中抽取一个任务，8小时内出过的任务不再出
	local nTurnInterval = tOneDay_CyclicTaskLogic_Count["TurnInterval"]
	if nOneDay_CyclicTaskLogic_HaveRandom >= nTurnInterval then
		-- 重置已接任务
		nOneDay_CyclicTaskLogic_HaveRandom = 0
	end
	
	-- 分解二进制赋值任务随机表概率
	local tRandomTask = CommonFunc_Copy(tOneDay_CyclicTaskLogic_TaskRandom["TaskType"])
	-- for i=1,8 do
		-- if Sys_ParseNumbersContain(2^i,nOneDay_CyclicTaskLogic_HaveRandom) then
			-- tRandomTask[1]["ItemChanceSum"] = tRandomTask[1]["ItemChanceSum"] - tRandomTask[1][i]["ItemChance"]
			-- tRandomTask[1][i]["ItemChance"] = 0
		-- end
	-- end
	
	local nOldTaskIndex = tonumber(string.sub(nOneDay_CyclicTaskLogic_NowTaskId,1,1))
	local nOldTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	-- 随机当前任务id
	local nFlag,tRandom = Probabil_RandomAward(tRandomTask,1)
	local nTaskIndex = tRandom[1]["tAward"][1]["TaskIndex"]
	local nBaseTaskId = tOneDay_CyclicTaskLogic_Count["TaskIdBase"]
	if nTaskIndex == 1 or nTaskIndex == 7 then
		nOneDay_CyclicTaskLogic_NowTaskId = nBaseTaskId*nTaskIndex + 1
	else
		local nFlag,tTaskId = Probabil_RandomAward(tOneDay_CyclicTaskLogic_TaskRandom[nTaskIndex],1)
		nOneDay_CyclicTaskLogic_NowTaskId = tTaskId[1]["tAward"][1]["SubTaskIndex"]
	end
	nOneDay_CyclicTaskLogic_HaveRandom = nOneDay_CyclicTaskLogic_HaveRandom + 2^nTaskIndex
	
	-- 组合杀怪任务，随机怪物
	local sIndex = ""
	if nOneDay_CyclicTaskLogic_NowTaskId == 60001 then
		sIndex = "UnderGround"
	elseif nOneDay_CyclicTaskLogic_NowTaskId == 60002 then
		sIndex = "Area"
	end
	if sIndex ~= "" then
		tOneDay_CyclicTaskLogic_MonsterId = {}
		tOneDay_CyclicTaskLogic_MonsterNum = {}
		local nNum = 1
		local nLastIndex = tOneDay_CyclicTaskLogic_Stc[4][1]["Basic"]
		local nLastNewIndex = tOneDay_CyclicTaskLogic_Stc[4][1]["Basic"]
		for i,v in pairs(tOneDay_CyclicTaskLogic_Count[sIndex]) do
			local tMonster = tOneDay_CyclicTaskLogic_Area[v]
			local nMonsterNum = #tMonster
			local nMonsterIndex = math.random(1,nMonsterNum)
			local nLastMonsterId = tMonster[nMonsterIndex]
			tOneDay_CyclicTaskLogic_MonsterId[i] = nLastMonsterId
			local nMonsterIndex = tonumber(v..nMonsterIndex)
			if nNum <= 3 then
				nLastIndex = nLastIndex + nMonsterIndex*tOneDay_CyclicTaskLogic_Count["Multiple"][nNum]
			else
				nLastNewIndex = nLastNewIndex + nMonsterIndex*tOneDay_CyclicTaskLogic_Count["Multiple"][nNum-3]
			end
			nNum = nNum + 1
		end
		Sys_SetSynaGlobalData(nGlobalId,2,nLastIndex)
		Sys_SetSynaGlobalData(nGlobalId,3,nLastNewIndex)
		nOneDay_CyclicTaskLogic_NewMonsterIndex = nLastIndex
		nOneDay_CyclicTaskLogic_OtherMonsterIndex = nLastNewIndex
	else
		Sys_SetSynaGlobalData(nGlobalId,2,0)
		Sys_SetSynaGlobalData(nGlobalId,3,0)
		nOneDay_CyclicTaskLogic_NewMonsterIndex = 0
		nOneDay_CyclicTaskLogic_OtherMonsterIndex = 0
	end
	
	-- 设置动态表
	Sys_SetSynaGlobalData(nGlobalId,0,nOneDay_CyclicTaskLogic_HaveRandom)
	Sys_SetSynaGlobalData(nGlobalId,1,nOneDay_CyclicTaskLogic_NowTaskId)
	local nSetIndex = 0
	if nOldTaskIndex == 0 then
		nSetIndex = 1
	elseif nOldTaskIndex == 7 then
		nSetIndex = 8
	else
		nSetIndex = 7
	end
	Sys_SetSynaGlobalDataStr5(nGlobalId,tostring(nSetIndex))
	
	-- 邮件发奖	
	-- if sDataStr5 ~= "1" or sDataStr5 ~= "7" or sDataStr5 ~= "8" then
		-- local nRankingIndex = tOneDay_CyclicTaskLogic_Count["Ranking"][1]["RankingIndex"]
		-- if nOldTaskIndex == 7 then
			-- nRankingIndex = tOneDay_CyclicTaskLogic_Count["Ranking"][2]["RankingIndex"]
		-- end
		-- OneDay_CyclicTaskLogic_RewardMail(nRankingIndex)
	-- end
end

-- 发邮件
function OneDay_CyclicTaskLogic_RewardMail(nRankingIndex)
	local tRankingData = RankingFunc_GetNowData(nRankingIndex)
	local tGlobal = tRankingFunc_Info[nRankingIndex]["Global"]
	local sContact = ""
	-- 玩家信息
	for a,b in pairs(tRankingData) do
		local sMailContact = tOneDay_CyclicTaskLogic_Text["Mail"][1]["MailContact"]
		local sNumberIndex = tLuaRes["Special"][a].." "
		local sText = ""
		if b["GuildName"] == nil then
			sText = sNumberIndex.. b["UserName"].."\n"
		else
			sText = string.format(sMailContact,sNumberIndex,b["GuildName"],b["UserName"])
		end
		sContact = sContact..sText
	end
	-- 时间
	local sNeedText = tOneDay_CyclicTaskLogic_Text["Mail"][1]["AddContent"]
	local sFinalData = os.date(sNeedText,os.time()-3600)
	-- 发排名公告和奖励邮件
	for i,v in pairs(tRankingData) do
		local nUserId = v["UserId"]
		local nActionId = tOneDay_CyclicTaskLogic_MailData[7]["ActionId"]
		local nExistDay = tOneDay_CyclicTaskLogic_MailData[7]["ExistDay"]
		local sSender =tOneDay_CyclicTaskLogic_Text["Mail"]["Sender"]
		local sTitle =tOneDay_CyclicTaskLogic_Text["Mail"]["Title"]
		local sContent = tOneDay_CyclicTaskLogic_Text["Mail"][2]["Content"]
		local sBroadcast = tOneDay_CyclicTaskLogic_Text["ContentBroad"]
		if nRankingIndex == tOneDay_CyclicTaskLogic_Count["Ranking"][2]["RankingIndex"] then
			sContent = tOneDay_CyclicTaskLogic_Text["Mail"][2]["NewContent"]
			sBroadcast = tOneDay_CyclicTaskLogic_Text["NewContentBroad"]
		end
		local sLastContent = tOneDay_CyclicTaskLogic_Text["Mail"][1]["MailInfo"]..sContact..sFinalData..string.format(sContent,i)
		local nGlobalId,nPos = RankingFunc_GetPos(tGlobal,i)
		local sPosData = Get_SysDynaGlobalDataStr(nGlobalId,nPos+1)
		if sPosData == "0" and (not v["Reward"]) and (nUserId > 0) then
			if Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sLastContent) then
				local sGuildName = v["GuildName"] 
				if sGuildName == nil then
					sGuildName = ""
				end
				Sys_SystemBroadcast(string.format(sBroadcast,sGuildName,v["UserName"]))
				v["Reward"] = true
				-- 动态存储表设值
				Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"1")
			end
		end
	end
end

-- -每小时58~59分执行重置排行的发奖标志
function OneDay_CyclicTaskLogic_ResetGlobalData()
	local nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	local nRankingIndex = tOneDay_CyclicTaskLogic_Count["Ranking"][1]["RankingIndex"]
	if nTaskIndex == 7 then
		nRankingIndex = tOneDay_CyclicTaskLogic_Count["Ranking"][2]["RankingIndex"]
	end
	local tGlobal = tRankingFunc_Info[nRankingIndex]["Global"]
	
	OneDay_CyclicTaskLogic_NewResetGlobalData(nRankingIndex,"0")
end

-- 重置动态码
function OneDay_CyclicTaskLogic_NewResetGlobalData(nRankingIndex,sData)
	local tGlobal = tRankingFunc_Info[nRankingIndex]["Global"]
	for i=1,5 do
		local nGlobalId,nPos = RankingFunc_GetPos(tGlobal,i)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,sData)
	end
end

-- 重置每日限量赤炼石+5
function OneDay_CyclicTaskLogic_ResetDailyLimit()
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["LimitGlobalId"]
	local nPos = tOneDay_CyclicTaskLogic_Reward[3][3]["Pos"]
	-- 限量标志
	local nData3 = Get_SysDynaGlobalData3(nGlobalId)
	if nData3 == 0 or nData3 == nil then 
		Sys_SetSynaGlobalData3(nGlobalId,1)
		Sys_SetSynaGlobalData(nGlobalId,nPos,0)
	end
end
-- 重置每日限量赤炼石+6
function OneDay_CyclicTaskLogic_ResetWeekLimit()
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["LimitGlobalId"]
	local nPos = tOneDay_CyclicTaskLogic_Reward[3][4]["Pos"]
	-- 限量标志
	local nData4 = Get_SysDynaGlobalData4(nGlobalId)
	if nData4 == 0 or nData4 == nil then 
		Sys_SetSynaGlobalData4(nGlobalId,1)
		Sys_SetSynaGlobalData(nGlobalId,nPos,0)
	end
end
-- 清除每日限量标志
function OneDay_CyclicTaskLogic_ClearDailyLimitFlag()
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["LimitGlobalId"]
	-- 清除限量标志
	Sys_SetSynaGlobalData3(nGlobalId,0)
end
-- 清除每周限量标志
function OneDay_CyclicTaskLogic_ClearWeekLimitFlag()
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["LimitGlobalId"]
	-- 清除限量标志
	Sys_SetSynaGlobalData4(nGlobalId,0)
end
--------------------------------------邮件领取
function OneDay_CyclicTaskLogic_MailReward(nTaskIndex)
	local tReward = CommonFunc_Copy(tOneDay_CyclicTaskLogic_Reward[2])
	-- local sLog = tOneDay_CyclicTaskLogic_Reward[2]["Log"]
	-- tReward["Log"] = string.format(sLog,nTaskIndex)
	RewardTemplate_UseItem(tReward)
	
	-- 碎片合成
	local nPieceItem = tOneDay_CyclicTaskLogic_Count["PieceItem"]
	local nPieceItemNum = tOneDay_CyclicTaskLogic_Count["PieceItemNum"]
	if Item_ChkMulItem(nPieceItem,nPieceItem,nPieceItemNum) then
		RewardTemplate_UseItem(tOneDay_CyclicTaskLogic_Reward[nPieceItem])
		Sys_MsgBox(tOneDay_CyclicTaskLogic_Text["NewFinishTaskReward"],"NpcPosition_PathFind</N>23519")
	end
end

--------------------------------------服务器启动
function OneDay_CyclicTaskLogic_ServerStart()
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	
	local nGlobalId = tOneDay_CyclicTaskLogic_Count["GlobalId"]
	-- 当前完成任务
	nOneDay_CyclicTaskLogic_HaveRandom = Get_SysDynaGlobalData(nGlobalId,0)
	-- 当前已随机任务id
	nOneDay_CyclicTaskLogic_NowTaskId = Get_SysDynaGlobalData(nGlobalId,1)
	nOneDay_CyclicTaskLogic_NewMonsterIndex = Get_SysDynaGlobalData(nGlobalId,2)
	nOneDay_CyclicTaskLogic_OtherMonsterIndex = Get_SysDynaGlobalData(nGlobalId,3)
	
	if nOneDay_CyclicTaskLogic_NowTaskId == 0 then
		OneDay_CyclicTaskLogic_RandomTask()
	end
	
	-- 邮件发奖
	-- for i= 1,2 do
		-- local nRankingIndex = tOneDay_CyclicTaskLogic_Count["Ranking"][i]["RankingIndex"]
		-- local tRankingData = RankingFunc_GetNowData(nRankingIndex)
		-- local tGlobal = tRankingFunc_Info[nRankingIndex]["Global"]
		-- local nNewGlobalId,nPos = RankingFunc_GetPos(tGlobal,1)
		-- local sData = Get_SysDynaGlobalDataStr(nNewGlobalId,nPos+1)
		-- if sData == "0" then
			-- OneDay_CyclicTaskLogic_RewardMail(nRankingIndex)
		-- end
	-- end
	
	-- 组合杀怪随机
	local tData = {}
	tOneDay_CyclicTaskLogic_MonsterId = {}
	tData[1] = tonumber(Get_SysDynaGlobalData(nGlobalId,2))
	tData[2] = tonumber(Get_SysDynaGlobalData(nGlobalId,3))
	local sIndex = ""
	if nOneDay_CyclicTaskLogic_NowTaskId == 60001 then
		sIndex = "UnderGround"
	elseif nOneDay_CyclicTaskLogic_NowTaskId == 60002 then
		sIndex = "Area"
	end
	if sIndex == "" or tData[1] <= 0 then
		return
	end
	for a,b in pairs(tData) do
		for h=1,3 do
			local nMonsterIndex = tonumber(string.sub(b,2+(h-1)*3,4+(h-1)*3))
			local nArea,nMonsterNewIndex = OneDay_CyclicTaskLogic_AreaIndex(nMonsterIndex)
			if nArea > 0 then
				for i,v in pairs(tOneDay_CyclicTaskLogic_Count[sIndex]) do
					if v == nArea then
						tOneDay_CyclicTaskLogic_MonsterId[i] = tOneDay_CyclicTaskLogic_Area[v][nMonsterNewIndex]
						break
					end
				end
			end
		end
	end
end

-- 取地区和怪物索引
function OneDay_CyclicTaskLogic_AreaIndex(nMonsterIndex)
	local nArea,nMonsterNewIndex = 0,0
	if nMonsterIndex <= 0 then
		return nArea,nMonsterNewIndex
	end
	if nMonsterIndex < 100 then
		nArea = tonumber(string.sub(nMonsterIndex,1,1))
		nMonsterNewIndex = tonumber(string.sub(nMonsterIndex,2,2))
	else
		nArea = tonumber(string.sub(nMonsterIndex,1,2))
		nMonsterNewIndex = tonumber(string.sub(nMonsterIndex,3,3))
	end
	return nArea,nMonsterNewIndex
end

-- 上线触发
function OneDay_CyclicTaskLogic_OnLine()
	-- 非交易服
	-- if CommonFunc_DealServer() then
		-- return
	-- end
	
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	local nUserId = Get_UserId()
	if nTaskIndex == 7 then
		if tOneDay_CyclicTaskLogic_MonsterType[nUserId] ~= nil then
			return
		end
		tOneDay_CyclicTaskLogic_MonsterType[nUserId] = {}
		-- local tArea = {}
		for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
			local nEvent = v["EventType"]
			local nType = v["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if nData >= v["Basic"] then
				for h=1,3 do
					local nMonsterIndex = tonumber(string.sub(nData,2+(h-1)*3,4+(h-1)*3))
					local nArea,nMonsterNewIndex = OneDay_CyclicTaskLogic_AreaIndex(nMonsterIndex)
					if nArea > 0 then
						-- table.insert(tArea,{nArea,nMonsterNewIndex})
						local nMonsterId = tOneDay_CyclicTaskLogic_Area[nArea][nMonsterNewIndex]
						tOneDay_CyclicTaskLogic_MonsterType[nUserId][nMonsterId] = 1
					end
				end
			end
		end
		return
	end
	if nTaskIndex == 6 then
		if tOneDay_CyclicTaskLogic_MonsterNum[nUserId] ~= nil then
			return
		end
		local sIndex = ""
		if nNowTaskId == 60001 then
			sIndex = "UnderGround"
		elseif nNowTaskId == 60002 then
			sIndex = "Area"
		end
		tOneDay_CyclicTaskLogic_MonsterNum[nUserId] = {}
		tOneDay_CyclicTaskLogic_UserMonsterId[nUserId] = {}
		for i,v in pairs(tOneDay_CyclicTaskLogic_Stc[4]) do
			local nEvent = v["EventType"]
			local nType = v["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			if i <= 2 and nData >= v["Basic"] then
				local nStcIndex = i+2
				local nNewEvent = tOneDay_CyclicTaskLogic_Stc[4][nStcIndex]["EventType"]
				local nNewType = tOneDay_CyclicTaskLogic_Stc[4][nStcIndex]["DataType"]
				local nNewData = Get_UserStatisticValue(nNewEvent,nNewType,nUserId)
				for h=1,3 do
					local nMonsterIndex = tonumber(string.sub(nData,2+(h-1)*3,4+(h-1)*3))
					local nArea,nMonsterNewIndex = OneDay_CyclicTaskLogic_AreaIndex(nMonsterIndex)
					if nMonsterIndex > 0 then
						for a,b in pairs(tOneDay_CyclicTaskLogic_Count[sIndex]) do
							if b == nArea then
								tOneDay_CyclicTaskLogic_UserMonsterId[nUserId][a] = tOneDay_CyclicTaskLogic_Area[b][nMonsterNewIndex]
								local nMonsterNum = tonumber(string.sub(nNewData,2+(h-1)*3,4+(h-1)*3))
								local nMonsterId = tOneDay_CyclicTaskLogic_Area[nArea][nMonsterNewIndex]
								tOneDay_CyclicTaskLogic_MonsterNum[nUserId][a] = nMonsterNum
								break
							end
						end
					end
				end
			end
		end
		return
	end
end



--------------------------------------NPC模块-------------------------------------------
-- 23492,'天下钱庄总管'
tNpcFace[6397] = 67
tNpcGossip[23492] = tNpcGossip[23492] or DefaultNpc:new{}
tNpcGossip[23492]["OptionHidden"] = 1
tNpcGossip[23492]["DialogueText"] = tOneDay_CyclicTaskLogic_Text[23492] 
-- 等级不足
tNpcGossip[23492]["Text1-1"] = {111,112,114,115,116,118,119}
tNpcGossip[23492]["tOption1-1"] = {111}
tNpcGossip[23492]["ChkFunc1-1"] = function ()
	if Sys_ChkMinute(tOneDay_CyclicTaskLogic_Count["OutTime"]) then
		-- 随机任务并发奖
		local nGlobalId = tOneDay_CyclicTaskLogic_Count["GlobalId"]
		local sDataStr4 = Get_SysDynaGlobalDataStr4(nGlobalId) 
		local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId) 
		if sDataStr4 ~= "1" and not (sDataStr5 == "1" or sDataStr5 == "7" or sDataStr5 == "8") then
			OneDay_CyclicTaskLogic_RandomTask()
			-- 设置npc标志
			Sys_SetSynaGlobalDataStr4(nGlobalId,"1")
			-- 清空排行
			local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId) 
			if sDataStr5 == "7" or sDataStr5 == "8" then
				local nMainNpcId = tOneDay_CyclicTaskLogic_Count["MainNpcId"]
				local nIndex = tonumber(nMainNpcId..sDataStr5)
				for i,v in pairs(tRankingFunc_Info[nIndex]["Global"]) do
					Sys_ResetAllSynaGlobalData(v)
					Sys_ResetAllSynaGlobalDataStr(v)
				end
				OneDay_CyclicTaskLogic_NewResetGlobalData(nIndex,"1")
				RankingFunc_SetInitialData(nIndex)
			end
			-- 去掉时间自检标志
			Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
		end
	end
	-- 初始化任务内容
	OneDay_CyclicTaskLogic_InitAcceptText()
	local nFinishNum = OneDay_CyclicTaskLogic_GetStcValue(5)
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text116"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text116"]
	if nFinishNum == 0 or nFinishNum == 3 then
		tNpcGossip[nNpcId]["Text116"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text1161"]
	end
	if nFinishNum == 1 or nFinishNum == 4 then
		tNpcGossip[nNpcId]["Text116"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text1162"]
	end
	return not User_JudgeLevelAndMetempsychosis(tOneDay_CyclicTaskLogic_Count["Level"],tOneDay_CyclicTaskLogic_Count["incarnation"])
end

-- 等级达到
tNpcGossip[23492]["Text1-2"] = {111,112,114,115,116,118,119}
tNpcGossip[23492]["tOption1-2"] = {121,127,126,128,123}
tNpcGossip[23492]["ChkFunc1-2"] = function ()
	local nEvent = tOneDay_CyclicTaskLogic_Stc[5]["EventType"]
	local nType = tOneDay_CyclicTaskLogic_Stc[5]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		OneDay_CyclicTaskLogic_SetStcValue(5,0)
	end
	local nFinishNum = OneDay_CyclicTaskLogic_GetStcValue(5)
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text116"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text116"]
	tNpcGossip[nNpcId]["Text119"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text119"]
	if nFinishNum == 0 or nFinishNum == 3 then
		tNpcGossip[nNpcId]["Text116"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text1161"]
	end
	if nFinishNum == 1 or nFinishNum == 4 then
		tNpcGossip[nNpcId]["Text116"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text1162"]
	end
	if nFinishNum == 1 then
		tNpcGossip[nNpcId]["Text119"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text1191"]
	end
	if nFinishNum == 2 then
		tNpcGossip[nNpcId]["Text119"] = tOneDay_CyclicTaskLogic_Text[nNpcId]["Text1192"]
	end
	-- 初始化选项
	OneDay_CyclicTaskLogic_InitAcceptOption()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId <= 0 then
		return true
	end
	
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 2 then
		return true
	end
	
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if Item_ChkItem(nTaskItem) then
		-- return true
	-- end
	
	return true
end
-- 1、接受试炼
tNpcGossip[23492]["OptionFunc121"] = "OneDay_CyclicTaskLogic_AccpetTask</N>23492"
-- 2、试炼神速榜======（前十完成的玩家榜单，2,3,4只显示当前时段任务对应榜单）
tNpcGossip[23492]["OptionFunc122"] = "OneDay_CyclicTaskLogic_InitRanking</N>23492</N>1"
tNpcGossip[23492]["OptionChkFunc122"] = function()
	local nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	if nTaskIndex == 7 then
		return false
	end
	
	return true
end
-- 3、试炼战神榜======（击杀怪物种类玩家榜单）
tNpcGossip[23492]["OptionFunc123"] = "OneDay_CyclicTaskLogic_InitRanking</N>23492</N>2"
tNpcGossip[23492]["OptionChkFunc123"] = function()
	local nNowTaskId = nOneDay_CyclicTaskLogic_NowTaskId
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	if nTaskIndex == 7 then
		return true
	end
	
	return false
end
-- 4、试炼杀神榜=======（击杀怪物数量最多玩家榜单）(暂不要)
-- 放弃任务重新领取
tNpcGossip[23492]["OptionFunc125"] = "OneDay_CyclicTaskLogic_GiveUpAccept</N>23492"
tNpcGossip[23492]["OptionChkFunc125"] = function()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId <= 0 then
		return false
	end
	
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 2 then
		return false
	end
	
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if Item_ChkItem(nTaskItem) then
		return false
	-- end
	
	-- return true
end

-- 前去完成赏金任务
tNpcGossip[23492]["OptionFunc127"] = "OneDay_CyclicTaskLogic_FindWay"
-- 放弃并刷新赏金任务
tNpcGossip[23492]["OptionFunc128"] = "OneDay_CyclicTaskLogic_RefreshTask</N>23492"
-- 补领循环赏金令
tNpcGossip[23492]["OptionFunc129"] = "OneDay_CyclicTaskLogic_ReplaceItem</N>23492"
tNpcGossip[23492]["OptionChkFunc129"] = function()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId <= 0 then
		return false
	end
	
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 2 then
		return false
	end
	
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if Item_ChkItem(nTaskItem) then
		return false
	-- end
	
	-- return true
end

-- 等级达到 时间外
tNpcGossip[23492]["Text1-3"] = {131,112,114,116,118,119}
tNpcGossip[23492]["tOption1-3"] = {131}
tNpcGossip[23492]["ChkFunc1-3"] = function ()
	-- local sOption = tOneDay_CyclicTaskLogic_Text[23492]["Option131"]
	-- local nNowHour = tonumber(os.date("%H"))
	-- tNpcGossip[23492]["Option131"] = string.format(sOption,nNowHour)
	-- 初始化选项
	-- return User_LevelJudge(tOneDay_CyclicTaskLogic_Count["Level"]) and Sys_ChkMinute(tOneDay_CyclicTaskLogic_Count["OutTime"])
	return false
end

tNpcGossip[23492]["Text1-4"] = {111,112,141,112}
tNpcGossip[23492]["tOption1-4"] = {141}
tNpcGossip[23492]["ChkFunc1-4"] = function ()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	if nNowTaskId <= 0 then
		return false
	end
	
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 2 then
		return false
	end
	
	-- local nTaskItem = tOneDay_CyclicTaskLogic_Count["TaskItem"]
	-- if Item_ChkItem(nTaskItem) then
		return false
	-- end
	-- return true
end
tNpcGossip[23492]["OptionFunc141"] = "OneDay_CyclicTaskLogic_RefreshTask</N>23492"

-- 接受失败，身上有试炼任务未完成
tNpcGossip[23492]["Text2-1"] = {211}
tNpcGossip[23492]["tOption2-1"] = {211}
tNpcGossip[23492]["OptionFunc211"] = "OneDay_CyclicTaskLogic_FindWay"
-- 接受试炼
tNpcGossip[23492]["Text2-2"] = {221}
tNpcGossip[23492]["tOption2-2"] = {221}
-- 试炼榜
tNpcGossip[23492]["Text2-3"] = {231,112,232,233,234,235,236,237,112,2313}
tNpcGossip[23492]["tOption2-3"] = {231}
tNpcGossip[23492]["OptionPoint231"] = 1
-- 试炼详情
tNpcGossip[23492]["Text2-6"] = {261,112,262,263,264,112}
tNpcGossip[23492]["tOption2-6"] = {261}
tNpcGossip[23492]["OptionPoint261"] = 1
-- 未接受试炼显示
tNpcGossip[23492]["Text2-7"] = {111,112,271,272,273,112,117}
tNpcGossip[23492]["tOption2-7"] = {271,272}
-- 1-1、接受试炼
tNpcGossip[23492]["OptionFunc271"] = "OneDay_CyclicTaskLogic_SureAccpetTask</N>23492"
-- 1-2、还是算了
-- 接受试炼后显示
tNpcGossip[23492]["Text2-8"] = {111,112,271,272,273,112,117}
tNpcGossip[23492]["tOption2-8"] = {281,282,283}
-- 1-1、一键提交材料===========搜集材料的任务显示这个选项
tNpcGossip[23492]["OptionFunc281"] = "OneDay_CyclicTaskLogic_CollectFinish</N>23492"
tNpcGossip[23492]["OptionChkFunc281"] = function()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 珍宝收集 或者 材料收集
	if nTaskIndex == 2 or nTaskIndex == 3 then
		return true
	end
	
	return false
end
-- 1-1、完成试炼=============其它类型的任务显示这个选项
tNpcGossip[23492]["OptionFunc282"] = "OneDay_CyclicTaskLogic_FinishTask</N>23492"
tNpcGossip[23492]["OptionChkFunc282"] = function()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 珍宝收集 或者 材料收集
	if nTaskIndex == 2 or nTaskIndex == 3 then
		return false
	end
	
	-- 完成任务未提交
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData < 1 then
		return false
	end
	
	return true
end
-- 1-2、前往试炼地点====自动寻路
tNpcGossip[23492]["OptionFunc283"] = "OneDay_CyclicTaskLogic_FindWay"
tNpcGossip[23492]["OptionChkFunc283"] = function()
	local nNowTaskId = OneDay_CyclicTaskLogic_GetStcValue(1)
	local nTaskIndex = tonumber(string.sub(nNowTaskId,1,1))
	-- 珍宝收集 或者 材料收集
	if nTaskIndex == 2 then
		return false
	end
	
	-- 完成任务未提交
	local nFinishData = OneDay_CyclicTaskLogic_GetStcValue(2)
	if nFinishData >= 1 then
		return false
	end
	
	return true
end

-- 提交道具成功
tNpcGossip[23492]["Text3-1"] = {311}
tNpcGossip[23492]["tOption3-1"] = {311}
-- 完成试炼成功
tNpcGossip[23492]["Text3-2"] = {321}
tNpcGossip[23492]["tOption3-2"] = {321}
-- 补领循环赏金令
tNpcGossip[23492]["Text3-3"] = {331}
tNpcGossip[23492]["tOption3-3"] = {331}

--------------------------------------物品模块-------------------------------------------
-- 3311373,'万宝秘钥'
tItem[3311373] = tItem[3311373] or {}
tItem[3311373]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(tOneDay_CyclicTaskLogic_Count["RewardNpcId"])
end

-- 3311374,'万宝秘钥碎片'
tItem[3311374] = tItem[3311374] or {}
tItem[3311374]["Function"] = function(nItemId,sItemName)
	OneDay_CyclicTaskLogic_UseItem(nItemId)
end

-- 3311375,'循环赏金令'
tItem[3311375] = tItem[3311375] or {}
tItem[3311375]["Function"] = function(nItemId,sItemName)
	OneDay_CyclicTaskLogic_OpenItem(nItemId)
end
tItem[3311375]["DialogueText"] = tOneDay_CyclicTaskLogic_Text[3311375]
tItem[3311375]["Text1-1"] = {111,112,113,114,115}
tItem[3311375]["tOption1-1"] = {111}

-- 3311396,'清风宝珠'
tItem[3311396] = tItem[3311396] or {}
tItem[3311396]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(tOneDay_CyclicTaskLogic_Count["MainNpcId"])
end
-- 3311397,'枫溪宝珠'
-- 3311398,'绝情宝珠'
-- 3311399,'大漠宝珠'
-- 3311400,'白鹭宝珠'
tItem[3311397] = tItem[3311396]
tItem[3311398] = tItem[3311396]
tItem[3311399] = tItem[3311396]
tItem[3311400] = tItem[3311396]


--------------------------------------怪物部分--------------------------------------
local tKillMonsterDropItem_Drop = {}
	-- 材料收集
	tKillMonsterDropItem_Drop[1] = {}
	tKillMonsterDropItem_Drop[1]["Function"] = OneDay_CyclicTaskLogic_MaterialCollect
	tKillMonsterDropItem_Drop[1]["Area"] = {1,2,3,4,5}
	-- 墨守迷城
	-- tKillMonsterDropItem_Drop[2] = {}
	-- tKillMonsterDropItem_Drop[2]["Function"] = OneDay_CyclicTaskLogic_AllKillMonster
	-- tKillMonsterDropItem_Drop[2]["MonsterId"] = {3385,3381,3387,3389,3390,3391}
	-- 剩余所有的杀怪任务
	tKillMonsterDropItem_Drop[3] = {}
	tKillMonsterDropItem_Drop[3]["Function"] = OneDay_CyclicTaskLogic_AllKillMonster
	-- tKillMonsterDropItem_Drop[3]["Area"] = {1,2,3,4,5,6,7,8,9,10}
	tKillMonsterDropItem_Drop[3]["MonsterId"] = {11,13,14,17,18,55,2684,2686,3967,3968,3969,3973,3974,3975,4709}
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[1])
-- table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[2])
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[3])

--------------------------------------击杀敌对玩家--------------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],OneDay_CyclicTaskLogic_KillOtherPlayer)

--------------------------------------时间自检--------------------------------------
-- 每小时00点随机任务
tOntimerMin_M[00] = tOntimerMin_M[00] or {}
tOntimerMin_M[01] = tOntimerMin_M[01] or {}
tOntimerMin_M[02] = tOntimerMin_M[02] or {}
tOntimerMin_M[03] = tOntimerMin_M[03] or {}
tOntimerMin_M[04] = tOntimerMin_M[04] or {}
tOntimerMin_M[05] = tOntimerMin_M[05] or {}
table.insert(tOntimerMin_M[00],OneDay_CyclicTaskLogic_ResetTask)
table.insert(tOntimerMin_M[01],OneDay_CyclicTaskLogic_ResetTask)
table.insert(tOntimerMin_M[02],OneDay_CyclicTaskLogic_ResetTask)
table.insert(tOntimerMin_M[03],OneDay_CyclicTaskLogic_ResetTask)
table.insert(tOntimerMin_M[04],OneDay_CyclicTaskLogic_ResetTask)
table.insert(tOntimerMin_M[05],OneDay_CyclicTaskLogic_ResetTask)
-- -每小时58~59分执行重置排行的发奖标志
tOntimerMin_M[58] = tOntimerMin_M[58] or {}
tOntimerMin_M[59] = tOntimerMin_M[59] or {}
table.insert(tOntimerMin_M[58],OneDay_CyclicTaskLogic_ResetGlobalData)
table.insert(tOntimerMin_M[59],OneDay_CyclicTaskLogic_ResetGlobalData)

--每天的00:00 至 00:02执行
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],OneDay_CyclicTaskLogic_ResetDailyLimit)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],OneDay_CyclicTaskLogic_ResetDailyLimit)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],OneDay_CyclicTaskLogic_ResetDailyLimit)
--每天的00:03 至 00:05执行
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],OneDay_CyclicTaskLogic_ClearDailyLimitFlag)
tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
table.insert(tOntimerMin_HM[0004],OneDay_CyclicTaskLogic_ClearDailyLimitFlag)
tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
table.insert(tOntimerMin_HM[0005],OneDay_CyclicTaskLogic_ClearDailyLimitFlag)
-- 周日00:00 至 00:02
tOntimerMin_wHM[00000] = tOntimerMin_wHM[00000] or {}
table.insert(tOntimerMin_wHM[00000],OneDay_CyclicTaskLogic_ResetWeekLimit)
tOntimerMin_wHM[00001] = tOntimerMin_wHM[00001] or {}
table.insert(tOntimerMin_wHM[00001],OneDay_CyclicTaskLogic_ResetWeekLimit)
tOntimerMin_wHM[00002] = tOntimerMin_wHM[00002] or {}
table.insert(tOntimerMin_wHM[00002],OneDay_CyclicTaskLogic_ResetWeekLimit)
-- 周日00:03 至 00:05
tOntimerMin_wHM[00003] = tOntimerMin_wHM[00003] or {}
table.insert(tOntimerMin_wHM[00003],OneDay_CyclicTaskLogic_ClearWeekLimitFlag)
tOntimerMin_wHM[00004] = tOntimerMin_wHM[00004] or {}
table.insert(tOntimerMin_wHM[00004],OneDay_CyclicTaskLogic_ClearWeekLimitFlag)
tOntimerMin_wHM[00005] = tOntimerMin_wHM[00005] or {}
table.insert(tOntimerMin_wHM[00005],OneDay_CyclicTaskLogic_ClearWeekLimitFlag)

-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],OneDay_CyclicTaskLogic_ServerStart)
-- 上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,OneDay_CyclicTaskLogic_OnLine)


