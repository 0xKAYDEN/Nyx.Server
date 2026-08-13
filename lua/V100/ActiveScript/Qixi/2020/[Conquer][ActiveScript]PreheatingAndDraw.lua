------------------------------------------------------------------------------------
--Name:		200720[简体征服][活动脚本]全球七夕活动预热+七夕抽奖(8.13-8.17)
--Creator: 	兰瑞妹
--Created:	2020/07/20
------------------------------------------------------------------------------------

-- 命名前缀
-- PreheatingAndDraw_

-- logid 12002088

-- taskid 4529-4544

-- #stc 掩码说明 
-- #stc(226,30) 背包信
-- #stc(226,31) 今日完成次数，最多两次 隔天清除
-- #stc(226,32) 目前玩家已领的奖励，二进制掩码
-- == 包含2^1表示领取奖池第一个奖励 包含2^2表示领取奖池第二个奖励 以此类推
-- #stc(226,33) 第五日已领取奖励 
-- #stc(226,34) 每日首次击杀凤凰 隔天清除

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tPreheatingAndDraw_Count = {}
	-- 活动时间
	tPreheatingAndDraw_Count["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["ActivityTime"]
	tPreheatingAndDraw_Count["LastTime"] = tActivityTime["PreheatingAndDraw"]["LastTime"]
	
	-- 等级
	tPreheatingAndDraw_Count["Level"] = 80
	tPreheatingAndDraw_Count["Meto"] = 0
	
	-- 杀怪掉落
	tPreheatingAndDraw_Count["Min"] = 1000
	tPreheatingAndDraw_Count["Max"] = 10000
	
	--  传送范围
	tPreheatingAndDraw_Count["Bound"] = 5
	
	-- 任务初始id
	tPreheatingAndDraw_Count["TaskId"] = 4529
	
	-- 任务索引对应
	tPreheatingAndDraw_Count["IndexToTaskId"] = {}
	tPreheatingAndDraw_Count["IndexToTaskId"][1] = {}
	tPreheatingAndDraw_Count["IndexToTaskId"][2] = {}
	tPreheatingAndDraw_Count["IndexToTaskId"][1][1] = 4529
	tPreheatingAndDraw_Count["IndexToTaskId"][1][2] = 4530
	tPreheatingAndDraw_Count["IndexToTaskId"][1][3] = 4531
	tPreheatingAndDraw_Count["IndexToTaskId"][1][4] = 4532
	tPreheatingAndDraw_Count["IndexToTaskId"][1][5] = 4533
	tPreheatingAndDraw_Count["IndexToTaskId"][1][6] = 4534
	tPreheatingAndDraw_Count["IndexToTaskId"][1][7] = 4535
	tPreheatingAndDraw_Count["IndexToTaskId"][1][8] = 4536
	tPreheatingAndDraw_Count["IndexToTaskId"][2][1] = 4537
	tPreheatingAndDraw_Count["IndexToTaskId"][2][2] = 4538
	tPreheatingAndDraw_Count["IndexToTaskId"][2][3] = 4539
	tPreheatingAndDraw_Count["IndexToTaskId"][2][4] = 4540
	tPreheatingAndDraw_Count["IndexToTaskId"][2][5] = 4541
	tPreheatingAndDraw_Count["IndexToTaskId"][2][6] = 4542
	tPreheatingAndDraw_Count["IndexToTaskId"][2][7] = 4543
	tPreheatingAndDraw_Count["IndexToTaskId"][2][8] = 4544
	
	tPreheatingAndDraw_Count["DialogText"] = {"Text3111","Text3112","Text3113"}
	tPreheatingAndDraw_Count["Interval"] = {5,5,5,5,5,5,8,7,6}
	-- boss的id
	tPreheatingAndDraw_Count["BossMonster"] = 4048
	
	
-- Log表
local tPreheatingAndDraw_Log = {}
	-- 过期删除
	tPreheatingAndDraw_Log["OverDue"] = "0,0,%d,%d,12000751,2,0,0"
	-- 领取任务成功
	tPreheatingAndDraw_Log["AcceptTask"] = "0,0,0,0,12000751,2[1],%d,1"
	-- 完成任务
	tPreheatingAndDraw_Log["FinishTask"] = "0,0,0,0,12000751,2[2],%d,1"

-- stc掩码
local tPreheatingAndDraw_Stc = {}
	-- #stc(226,31)  今日完成次数，最多两次 隔天清除
	tPreheatingAndDraw_Stc[1] = {}
	tPreheatingAndDraw_Stc[1]["EventType"] = 226
	tPreheatingAndDraw_Stc[1]["DataType"] = 31
	-- #stc(226,32) 目前玩家已领的奖励，二进制掩码
	tPreheatingAndDraw_Stc[2] = {}
	tPreheatingAndDraw_Stc[2]["EventType"] = 226
	tPreheatingAndDraw_Stc[2]["DataType"] = 32
	-- #stc(226,33) 第五日已领取奖励 
	tPreheatingAndDraw_Stc[3] = {}
	tPreheatingAndDraw_Stc[3]["EventType"] = 226
	tPreheatingAndDraw_Stc[3]["DataType"] = 33


-- 播放光效
local tPreheatingAndDraw_Effect = {}
	-- 掉落光效
	tPreheatingAndDraw_Effect[1] = {}
	tPreheatingAndDraw_Effect[1]["SzObj"] = "self"
	tPreheatingAndDraw_Effect[1]["Effect"] = "angelwing"
	-- 领取任务
	tPreheatingAndDraw_Effect[2] = {}
	tPreheatingAndDraw_Effect[2]["SzObj"] = "self"
	tPreheatingAndDraw_Effect[2]["Effect"] = "zf2-e128"
	
	

-- 任务对应怪物
local tPreheatingAndDraw_TaskInfo = {}
	-- 普通服
	-- MonsterId:任务对应要杀的怪物ID
	-- MapInfo:任务对应传送位置
	-- RequestNum:完成对应需求数量
	-- DialogIndex:任务对应说明对白
	tPreheatingAndDraw_TaskInfo[1] = {}
	tPreheatingAndDraw_TaskInfo[1][4529] = {}
	tPreheatingAndDraw_TaskInfo[1][4530] = {}
	tPreheatingAndDraw_TaskInfo[1][4531] = {}
	tPreheatingAndDraw_TaskInfo[1][4532] = {}
	tPreheatingAndDraw_TaskInfo[1][4533] = {}
	tPreheatingAndDraw_TaskInfo[1][4534] = {}
	tPreheatingAndDraw_TaskInfo[1][4535] = {}
	tPreheatingAndDraw_TaskInfo[1][4536] = {}
	tPreheatingAndDraw_TaskInfo[1][4529]["MonsterId"] = {1}
	tPreheatingAndDraw_TaskInfo[1][4530]["MonsterId"] = {3}
	tPreheatingAndDraw_TaskInfo[1][4531]["MonsterId"] = {2}
	tPreheatingAndDraw_TaskInfo[1][4532]["MonsterId"] = {18,77}
	tPreheatingAndDraw_TaskInfo[1][4533]["MonsterId"] = {56,81,86}
	tPreheatingAndDraw_TaskInfo[1][4534]["MonsterId"] = {58,83}
	tPreheatingAndDraw_TaskInfo[1][4535]["MonsterId"] = {6,65}
	tPreheatingAndDraw_TaskInfo[1][4536]["MonsterId"] = {4048}
	tPreheatingAndDraw_TaskInfo[1][4529]["MapInfo"] = {1002,498,491}
	tPreheatingAndDraw_TaskInfo[1][4530]["MapInfo"] = {1002,391,750}
	tPreheatingAndDraw_TaskInfo[1][4531]["MapInfo"] = {1002,379,663}
	tPreheatingAndDraw_TaskInfo[1][4532]["MapInfo"] = {1015,965,703}
	tPreheatingAndDraw_TaskInfo[1][4533]["MapInfo"] = {1001,345,433}
	tPreheatingAndDraw_TaskInfo[1][4534]["MapInfo"] = {1001,356,179}
	tPreheatingAndDraw_TaskInfo[1][4535]["MapInfo"] = {1011,327,95}
	tPreheatingAndDraw_TaskInfo[1][4536]["MapInfo"] = {1002,610,478}
	tPreheatingAndDraw_TaskInfo[1][4529]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4530]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4531]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4532]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4533]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4534]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4535]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[1][4536]["RequestNum"] = 1
	tPreheatingAndDraw_TaskInfo[1][4529]["DialogIndex"] = "2-2"
	tPreheatingAndDraw_TaskInfo[1][4530]["DialogIndex"] = "2-3"
	tPreheatingAndDraw_TaskInfo[1][4531]["DialogIndex"] = "2-4"
	tPreheatingAndDraw_TaskInfo[1][4532]["DialogIndex"] = "2-5"
	tPreheatingAndDraw_TaskInfo[1][4533]["DialogIndex"] = "2-6"
	tPreheatingAndDraw_TaskInfo[1][4534]["DialogIndex"] = "2-7"
	tPreheatingAndDraw_TaskInfo[1][4535]["DialogIndex"] = "2-8"
	tPreheatingAndDraw_TaskInfo[1][4536]["DialogIndex"] = "2-9"
	-- 激情服
	tPreheatingAndDraw_TaskInfo[2] = {}
	tPreheatingAndDraw_TaskInfo[2][4537] = {}
	tPreheatingAndDraw_TaskInfo[2][4538] = {}
	tPreheatingAndDraw_TaskInfo[2][4539] = {}
	tPreheatingAndDraw_TaskInfo[2][4540] = {}
	tPreheatingAndDraw_TaskInfo[2][4541] = {}
	tPreheatingAndDraw_TaskInfo[2][4542] = {}
	tPreheatingAndDraw_TaskInfo[2][4543] = {}
	tPreheatingAndDraw_TaskInfo[2][4544] = {}
	tPreheatingAndDraw_TaskInfo[2][4537]["MonsterId"] = {4833}
	tPreheatingAndDraw_TaskInfo[2][4538]["MonsterId"] = {4835}
	tPreheatingAndDraw_TaskInfo[2][4539]["MonsterId"] = {4834}
	tPreheatingAndDraw_TaskInfo[2][4540]["MonsterId"] = {4850,4852}
	tPreheatingAndDraw_TaskInfo[2][4541]["MonsterId"] = {4856,4875,4878}
	tPreheatingAndDraw_TaskInfo[2][4542]["MonsterId"] = {4858,4877}
	tPreheatingAndDraw_TaskInfo[2][4543]["MonsterId"] = {4838}
	tPreheatingAndDraw_TaskInfo[2][4544]["MonsterId"] = {4048}
	tPreheatingAndDraw_TaskInfo[2][4537]["MapInfo"] ={10364,342,418}
	tPreheatingAndDraw_TaskInfo[2][4538]["MapInfo"] ={10364,492,616}
	tPreheatingAndDraw_TaskInfo[2][4539]["MapInfo"] ={10364,537,564}
	tPreheatingAndDraw_TaskInfo[2][4540]["MapInfo"] ={10368,859,701}
	tPreheatingAndDraw_TaskInfo[2][4541]["MapInfo"] ={10369,345,445}
	tPreheatingAndDraw_TaskInfo[2][4542]["MapInfo"] ={10369,356,179}
	tPreheatingAndDraw_TaskInfo[2][4543]["MapInfo"] ={10365,322,127}
	tPreheatingAndDraw_TaskInfo[2][4544]["MapInfo"] ={10364,660,523}
	tPreheatingAndDraw_TaskInfo[2][4537]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4538]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4539]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4540]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4541]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4542]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4543]["RequestNum"] = 5
	tPreheatingAndDraw_TaskInfo[2][4544]["RequestNum"] = 1
	tPreheatingAndDraw_TaskInfo[2][4537]["DialogIndex"] = "2-2"
	tPreheatingAndDraw_TaskInfo[2][4538]["DialogIndex"] = "2-3"
	tPreheatingAndDraw_TaskInfo[2][4539]["DialogIndex"] = "2-4"
	tPreheatingAndDraw_TaskInfo[2][4540]["DialogIndex"] = "2-5"
	tPreheatingAndDraw_TaskInfo[2][4541]["DialogIndex"] = "2-6"
	tPreheatingAndDraw_TaskInfo[2][4542]["DialogIndex"] = "2-7"
	tPreheatingAndDraw_TaskInfo[2][4543]["DialogIndex"] = "2-8"
	tPreheatingAndDraw_TaskInfo[2][4544]["DialogIndex"] = "2-9"
	
-- 刷新怪物
local tPreheatingAndDraw_RefreshMonster = {}
	-- 普通服
	tPreheatingAndDraw_RefreshMonster[1] = {}
	tPreheatingAndDraw_RefreshMonster[1][1] = {}
	tPreheatingAndDraw_RefreshMonster[1][1]["Generator"] = 31551
	tPreheatingAndDraw_RefreshMonster[1][1]["MonsterId"] = 4048
	tPreheatingAndDraw_RefreshMonster[1][1]["Time"] = 3600
	tPreheatingAndDraw_RefreshMonster[1][1]["Pos"] = {1002,610,478}
	tPreheatingAndDraw_RefreshMonster[1][2] = {}
	tPreheatingAndDraw_RefreshMonster[1][2]["Generator"] = 31552
	tPreheatingAndDraw_RefreshMonster[1][2]["MonsterId"] = 4048
	tPreheatingAndDraw_RefreshMonster[1][2]["Time"] = 3600
	tPreheatingAndDraw_RefreshMonster[1][2]["Pos"] = {1002,549,248}
	tPreheatingAndDraw_RefreshMonster[1][3] = {}
	tPreheatingAndDraw_RefreshMonster[1][3]["Generator"] = 31553
	tPreheatingAndDraw_RefreshMonster[1][3]["MonsterId"] = 4048
	tPreheatingAndDraw_RefreshMonster[1][3]["Time"] = 3600
	tPreheatingAndDraw_RefreshMonster[1][3]["Pos"] = {1002,240,629}
	-- 激情服
	tPreheatingAndDraw_RefreshMonster[2] = {}
	tPreheatingAndDraw_RefreshMonster[2][1] = {}
	tPreheatingAndDraw_RefreshMonster[2][1]["Generator"] = 31551
	tPreheatingAndDraw_RefreshMonster[2][1]["MonsterId"] = 4048
	tPreheatingAndDraw_RefreshMonster[2][1]["Time"] = 3600
	tPreheatingAndDraw_RefreshMonster[2][1]["Pos"] = {10364,660,523}
	tPreheatingAndDraw_RefreshMonster[2][2] = {}
	tPreheatingAndDraw_RefreshMonster[2][2]["Generator"] = 31552
	tPreheatingAndDraw_RefreshMonster[2][2]["MonsterId"] = 4048
	tPreheatingAndDraw_RefreshMonster[2][2]["Time"] = 3600
	tPreheatingAndDraw_RefreshMonster[2][2]["Pos"] = {10364,501,597}
	tPreheatingAndDraw_RefreshMonster[2][3] = {}
	tPreheatingAndDraw_RefreshMonster[2][3]["Generator"] = 31553
	tPreheatingAndDraw_RefreshMonster[2][3]["MonsterId"] = 4048
	tPreheatingAndDraw_RefreshMonster[2][3]["Time"] = 3600
	tPreheatingAndDraw_RefreshMonster[2][3]["Pos"] = {10364,291,448}
	
-- 离开地图坐标
local tPreheatingAndDraw_LeaveMap = {}
	-- 普通服
	tPreheatingAndDraw_LeaveMap[1] = {}
	tPreheatingAndDraw_LeaveMap[1]["MapId"] = 1002
	tPreheatingAndDraw_LeaveMap[1]["PosX"] = 372
	tPreheatingAndDraw_LeaveMap[1]["PosY"] = 444
	tPreheatingAndDraw_LeaveMap[1]["Bound"] = 5
	-- 激情服
	tPreheatingAndDraw_LeaveMap[2] = {}
	tPreheatingAndDraw_LeaveMap[2]["MapId"] = 1036
	tPreheatingAndDraw_LeaveMap[2]["PosX"] = 254
	tPreheatingAndDraw_LeaveMap[2]["PosY"] = 211
	tPreheatingAndDraw_LeaveMap[2]["Bound"] = 5
	
-- 奖励表------------------------------------------------------------------------------
	-- ===修复翅膀奖励
	-- ===索引:tPreheatingAndDraw_RandomReward[1][1]
	-- ===NewEMoneyLog:1000,705
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf
local tPreheatingAndDraw_RandomReward = {}
	tPreheatingAndDraw_RandomReward[1] = {}
	-- RewardTemplate_RandomReward(tPreheatingAndDraw_RandomReward[1],1)
	tPreheatingAndDraw_RandomReward[1][1] = {}
	tPreheatingAndDraw_RandomReward[1][1]["ItemChanceSum"] = 9999
	tPreheatingAndDraw_RandomReward[1][1]["LogId"] = 12002088
	tPreheatingAndDraw_RandomReward[1][1]["LogStep"] = "2[3]"
	-- 雪参灵露 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][1]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][1]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][1]["AwardFlag"] = 1
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardItem"][1]["Id"] = 3314212 -- 雪参灵露[3314212][属性:8][叠加:10000][金币:0], 【表格】雪参灵露
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 雪参灵露（赠）*1
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][1]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 明亮星陨石 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][2] = {}
	tPreheatingAndDraw_RandomReward[1][1][2]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][2]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][2]["AwardFlag"] = 2
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:265][叠加:0][金币:0], 【表格】明亮星陨石
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][2]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 150天石（赠） - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][3] = {}
	tPreheatingAndDraw_RandomReward[1][1][3]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][3]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][3]["AwardFlag"] = 3
	tPreheatingAndDraw_RandomReward[1][1][3]["RewardEMoneyMono"] = {}
	tPreheatingAndDraw_RandomReward[1][1][3]["RewardEMoneyMono"]["Value"] = 150 -- 天石（赠）, 【需求】150天石（赠）
	tPreheatingAndDraw_RandomReward[1][1][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	705"
	tPreheatingAndDraw_RandomReward[1][1][3]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][3]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 1000气力值 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][4] = {}
	tPreheatingAndDraw_RandomReward[1][1][4]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][4]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][4]["AwardFlag"] = 4
	tPreheatingAndDraw_RandomReward[1][1][4]["RewardStrengthValue"] = {}
	tPreheatingAndDraw_RandomReward[1][1][4]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tPreheatingAndDraw_RandomReward[1][1][4]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][4]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 赤炼石+4 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][5] = {}
	tPreheatingAndDraw_RandomReward[1][1][5]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][5]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][5]["AwardFlag"] = 5
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][5]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 50个万能神纹精粹 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][6] = {}
	tPreheatingAndDraw_RandomReward[1][1][6]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][6]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][6]["AwardFlag"] = 6
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】50个万能神纹精粹
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][6]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 黄色神纹礼包 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][7] = {}
	tPreheatingAndDraw_RandomReward[1][1][7]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][7]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][7]["AwardFlag"] = 7
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardItem"][1]["Id"] = 3314248 -- 黄色神纹礼包[3314248][属性:8][叠加:10000][金币:0], 【表格】黄色神纹礼包
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹礼包（赠）*1
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][7]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 晶莹星陨石 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][8] = {}
	tPreheatingAndDraw_RandomReward[1][1][8]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][8]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][8]["AwardFlag"] = 8
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:265][叠加:0][金币:0], 【表格】晶莹星陨石
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][8]["RewardEffect"]["Effect"] = "NEW-flower-g-1"
	-- 赤炼石+5 - 11.11%
	tPreheatingAndDraw_RandomReward[1][1][9] = {}
	tPreheatingAndDraw_RandomReward[1][1][9]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[1][1][9]["ItemChance"] = 1111
	tPreheatingAndDraw_RandomReward[1][1][9]["AwardFlag"] = 9
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[1][1][9]["RewardEffect"]["Effect"] = "NEW-flower-g-1"


------------------------------------------------------------------------------
	-- ===击杀凤凰
	-- ===索引:tPreheatingAndDraw_RandomReward[2][1]
	-- ===
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：cnzf
	tPreheatingAndDraw_RandomReward[2] = {}
	-- RewardTemplate_RandomReward(tPreheatingAndDraw_RandomReward[2],1)
	tPreheatingAndDraw_RandomReward[2][1] = {}
	tPreheatingAndDraw_RandomReward[2][1]["ItemChanceSum"] = 10000
	tPreheatingAndDraw_RandomReward[2][1]["LogId"] = 12002088
	tPreheatingAndDraw_RandomReward[2][1]["LogStep"] = "2[4]"
	-- 揽鹊笛 -	 100%
	tPreheatingAndDraw_RandomReward[2][1][1] = {}
	tPreheatingAndDraw_RandomReward[2][1][1]["RandomItemChanceType"] = 2
	tPreheatingAndDraw_RandomReward[2][1][1]["ItemChance"] = 10000
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardItem"] = {}
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardItem"][1] = {}
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊笛
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 揽鹊笛*1
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardEffect"] = {}
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tPreheatingAndDraw_RandomReward[2][1][1]["Talk"] = tPreheatingAndDraw_Text["FirstKill"]
			-- 1天（零点重置）, 可获得1个, 最多可获得:（1）
	tPreheatingAndDraw_RandomReward[2][1][1]["EventType"] = 226
	tPreheatingAndDraw_RandomReward[2][1][1]["DataType"] = 34
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardDelay"] = 1
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardTimeType"] = 4
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardData"] = 1
	tPreheatingAndDraw_RandomReward[2][1][1]["RewardTotalData"] = 1
			-- 【动态掩码（54746, data1）】全服限量:（1200）
	tPreheatingAndDraw_RandomReward[2][1][1]["GlobalId"] = 54746
	tPreheatingAndDraw_RandomReward[2][1][1]["Pos"] = 1
	tPreheatingAndDraw_RandomReward[2][1][1]["MaxData"] = 1200
			-- 【动态掩码（54746, data2）】单日限量:（300）
	tPreheatingAndDraw_RandomReward[2][1][1]["OtherPos"] = 2
	tPreheatingAndDraw_RandomReward[2][1][1]["OtherMaxData"] = 300

--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function PreheatingAndDraw_GetStcValue(nPreheatingAndDraw_Index,nPreheatingAndDraw_UserId)
	local nPreheatingAndDraw_Event = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["EventType"]
	local nPreheatingAndDraw_Type = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["DataType"]
	
	local nPreheatingAndDraw_Data = Get_UserStatisticValue(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,nPreheatingAndDraw_UserId)
	return nPreheatingAndDraw_Data
end

-- 增加掩码值
function PreheatingAndDraw_AddStcValue(nPreheatingAndDraw_Index,nPreheatingAndDraw_Data,nPreheatingAndDraw_UserId)
	local nPreheatingAndDraw_Event = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["EventType"]
	local nPreheatingAndDraw_Type = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["DataType"]
	
	Task_AddStatistic(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,nPreheatingAndDraw_Data,1,nPreheatingAndDraw_UserId)
	Task_SetStcTimestamp(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,0,nPreheatingAndDraw_UserId)
end

-- 隔天重置
function PreheatingAndDraw_ClearStcInterval(nPreheatingAndDraw_Index,nPreheatingAndDraw_UserId)
	local nPreheatingAndDraw_Event = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["EventType"]
	local nPreheatingAndDraw_Type = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["DataType"]
	
	if Task_StcInterval(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,1,4,nPreheatingAndDraw_UserId) then
		Task_SetStatistic(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,0,1,nPreheatingAndDraw_UserId)
		Task_SetStcTimestamp(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,0,nPreheatingAndDraw_UserId)
	end
end

-- 检测是否有二进制
function PreheatingAndDraw_ChkHaveStcInterval(nPreheatingAndDraw_Index,nPreheatingAndDraw_Data,nPreheatingAndDraw_UserId)
	local nPreheatingAndDraw_Event = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["EventType"]
	local nPreheatingAndDraw_Type = tPreheatingAndDraw_Stc[nPreheatingAndDraw_Index]["DataType"]
	local nPreheatingAndDraw_TotalData = Get_UserStatisticValue(nPreheatingAndDraw_Event,nPreheatingAndDraw_Type,nPreheatingAndDraw_UserId)
	
	if Sys_ParseNumbersContain(2^nPreheatingAndDraw_Data,nPreheatingAndDraw_TotalData) then
		return true
	end
	
	return false
end

-- 获取服务器索引标志
function PreheatingAndDraw_GetServerIndex()
	local nPreheatingAndDraw_SerIndex = 1
	if SpecialServer_ChkNoGiftServer() then
		nPreheatingAndDraw_SerIndex = 2
	end
	
	return nPreheatingAndDraw_SerIndex
end

-- 传送
function PreheatingAndDraw_Trans(nPreheatingAndDraw_TaskId)
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex() 
	local tPreheatingAndDraw_MapInfo = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_TaskId]["MapInfo"]
	local nPreheatingAndDraw_MapId = tPreheatingAndDraw_MapInfo[1]
	local nPreheatingAndDraw_PosX = tPreheatingAndDraw_MapInfo[2]
	local nPreheatingAndDraw_PosY = tPreheatingAndDraw_MapInfo[3]
	local nPreheatingAndDraw_Bound = tPreheatingAndDraw_Count["Bound"]
	User_UserRandBoundTrans(nPreheatingAndDraw_MapId,nPreheatingAndDraw_PosX,nPreheatingAndDraw_PosY,nPreheatingAndDraw_Bound,nPreheatingAndDraw_Bound)
end

function PreheatingAndDraw_TransMap()
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	local tPreheatingAndDraw_MapInfo = tPreheatingAndDraw_LeaveMap[nPreheatingAndDraw_SerIndex]
	local nPreheatingAndDraw_MapId = tPreheatingAndDraw_MapInfo["MapId"]
	local nPreheatingAndDraw_PosX = tPreheatingAndDraw_MapInfo["PosX"]
	local nPreheatingAndDraw_PosY = tPreheatingAndDraw_MapInfo["PosY"]
	local nPreheatingAndDraw_Bound = tPreheatingAndDraw_Count["Bound"]
	User_UserRandBoundTrans(nPreheatingAndDraw_MapId,nPreheatingAndDraw_PosX,nPreheatingAndDraw_PosY,nPreheatingAndDraw_Bound,nPreheatingAndDraw_Bound)
end

-- 播放光效
function PreheatingAndDraw_Effect(nPreheatingAndDraw_Index,nPreheatingAndDraw_NowUserId)
	local nPreheatingAndDraw_UserId = nPreheatingAndDraw_NowUserId or Get_UserId()
	local sPreheatingAndDraw_SzObj = tPreheatingAndDraw_Effect[nPreheatingAndDraw_Index]["SzObj"]
	local sPreheatingAndDraw_Effect = tPreheatingAndDraw_Effect[nPreheatingAndDraw_Index]["Effect"]
	User_EffectAdd(sPreheatingAndDraw_SzObj,sPreheatingAndDraw_Effect,nPreheatingAndDraw_UserId)
end

-- 判断是否接取任务 == 0  无任务 否则返回任务id
function PreheatingAndDraw_ChkHaveTask()
	local nPreheatingAndDraw_NowTaskId = 0
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	for i,v in pairs(tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex]) do
		-- User_TalkChannel2005("Task" .. v)
		if Task_ChkTaskDetail(v) then
			local nPreheatingAndDraw_RequestNum = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][v]["RequestNum"]
			if not Task_ChkTaskDetailValue(v,"1",">=",nPreheatingAndDraw_RequestNum) then
				nPreheatingAndDraw_NowTaskId = v
				return nPreheatingAndDraw_NowTaskId
			end
		end
	end
	
	-- 无任务
	return nPreheatingAndDraw_NowTaskId
end

-- 判断有完成任务
function PreheatingAndDraw_ChkFinTask()
	local nPreheatingAndDraw_FinNum = 0
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	for i,v in pairs(tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex]) do
		if Task_ChkTaskDetail(v) then
			if Task_ChkTaskDetailValue(v,"CompleteFlag",">=",1) then
				nPreheatingAndDraw_FinNum = nPreheatingAndDraw_FinNum + 1
			end
		end
	end
	if nPreheatingAndDraw_FinNum == 0 then
		-- 无任务
		return false
	end
	
	return true
end

-- 判断有可领奖任务
function PreheatingAndDraw_ChkHaveFinTask()
	local nPreheatingAndDraw_NowFinTaskId = 0
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	for i,v in pairs(tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex]) do
		if Task_ChkTaskDetail(v) then
			local nPreheatingAndDraw_RequestNum = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][v]["RequestNum"]
			if Task_ChkTaskDetailValue(v,"1",">=",nPreheatingAndDraw_RequestNum) and not Task_ChkTaskDetailValue(v,"CompleteFlag",">=",1) then
				nPreheatingAndDraw_NowFinTaskId = v
				return nPreheatingAndDraw_NowFinTaskId
			end
		end
	end
	
	-- 无任务
	return nPreheatingAndDraw_NowFinTaskId
end

--------------------------------------npc使用
-- 帮忙寻找羽翼
function PreheatingAndDraw_FindWing(nPreheatingAndDraw_NpcId)
	-- 活动后
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-3")
		return
	end
	
	local nPreheatingAndDraw_NowFinTaskId = PreheatingAndDraw_ChkHaveFinTask()
	if nPreheatingAndDraw_NowFinTaskId > 0 then
		return
	end
	
	-- 玩家已领取任务已完成未领奖
	local nPreheatingAndDraw_NowFinTaskId = PreheatingAndDraw_ChkHaveFinTask()
	if nPreheatingAndDraw_NowFinTaskId > 0  then
		return
	end
	
	-- 玩家已领取任务未完成
	local nPreheatingAndDraw_NowTaskId = PreheatingAndDraw_ChkHaveTask()
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	if nPreheatingAndDraw_NowTaskId > 0 then
		local sPreheatingAndDraw_DialogIndex = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]["DialogIndex"]
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,sPreheatingAndDraw_DialogIndex)
		return
	end
	
	
	-- 玩家今日已完成二次任务
	PreheatingAndDraw_ClearStcInterval(1)
	local nPreheatingAndDraw_Data = PreheatingAndDraw_GetStcValue(1)
	if nPreheatingAndDraw_Data >= 2 then
		Sys_MsgBox(tPreheatingAndDraw_Text["MsgBox"]["FinishAllTask"])
		return
	end
	
	LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"2-1")
end

-- 接受寻找任务
function PreheatingAndDraw_AcceptTask(nPreheatingAndDraw_NpcId,nPreheatingAndDraw_TaskIndex)
	-- 活动后
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-3")
		return
	end
	
	
	-- 玩家已领取任务已完成未领奖
	local nPreheatingAndDraw_NowFinTaskId = PreheatingAndDraw_ChkHaveFinTask()
	if nPreheatingAndDraw_NowFinTaskId > 0  then
		return
	end
	
	-- 玩家已领取任务未完成
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	local nPreheatingAndDraw_NowTaskId = tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_TaskIndex]
	local sPreheatingAndDraw_DialogIndex = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]["DialogIndex"]
	if Task_ChkTaskDetail(nPreheatingAndDraw_NowTaskId) then
		local nPreheatingAndDraw_RequestNum = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]["RequestNum"]
		if not Task_ChkTaskDetailValue(nPreheatingAndDraw_NowTaskId,"1",">=",nPreheatingAndDraw_RequestNum) then
			LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,sPreheatingAndDraw_DialogIndex)
			return
		end
	end 
	
	-- 玩家今日已完成二次任务
	PreheatingAndDraw_ClearStcInterval(1)
	local nPreheatingAndDraw_Data = PreheatingAndDraw_GetStcValue(1)
	if nPreheatingAndDraw_Data >= 2 then
		Sys_MsgBox(tPreheatingAndDraw_Text["MsgBox"]["FinishAllTask"])
		return
	end
	
	-- 玩家未领取任务，领取任务成功
	if Task_AddTaskDetail(nPreheatingAndDraw_NowTaskId) then
		local sPreheatingAndDraw_MonsterName = tPreheatingAndDraw_Text["TaskName"][nPreheatingAndDraw_TaskIndex][1]
		local sPreheatingAndDraw_MapName = tPreheatingAndDraw_Text["TaskName"][nPreheatingAndDraw_TaskIndex][2]
		
		Sys_SaveActionFestivalLog(string.format(tPreheatingAndDraw_Log["AcceptTask"],nPreheatingAndDraw_NowTaskId))
		PreheatingAndDraw_Effect(1)
		
		-- LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,sPreheatingAndDraw_DialogIndex)
		local sFunc = "PreheatingAndDraw_Trans</N>" .. nPreheatingAndDraw_NowTaskId
		Sys_MsgBox(string.format(tPreheatingAndDraw_Text["MsgBox"]["ReceiveTask"],sPreheatingAndDraw_MonsterName,sPreheatingAndDraw_MapName),sFunc)
	else
		-- 任务过多
		Sys_MsgBox(tPreheatingAndDraw_Text["FullTask"])
	end
end

-- 立即前往==点击后传送去怪物位置
function PreheatingAndDraw_GotoDestination(nPreheatingAndDraw_NpcId,nPreheatingAndDraw_TaskIndex)
	-- 活动后
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-3")
		return
	end
	
	-- 玩家已领取任务未完成
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	local nPreheatingAndDraw_NowTaskId = tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_TaskIndex]
	if Task_ChkTaskDetail(nPreheatingAndDraw_NowTaskId) then
		local nPreheatingAndDraw_RequestNum = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]["RequestNum"]
		if not Task_ChkTaskDetailValue(nPreheatingAndDraw_NowTaskId,"1",">=",nPreheatingAndDraw_RequestNum) then
			-- 到目的地
			PreheatingAndDraw_Trans(nPreheatingAndDraw_NowTaskId)
		end
	end 
end

-- 2、查看奖励
function PreheatingAndDraw_LookReward(nPreheatingAndDraw_NpcId)
	-- 活动后
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-3")
		return
	end
	
	-- 对白文字设置
	local tPreheatingAndDraw_NewText = {}
	for i=1,9 do
		local sColor = tPreheatingAndDraw_Text["Color"]
		tPreheatingAndDraw_NewText[i] = tPreheatingAndDraw_Text["RewardName"][i]
		if PreheatingAndDraw_ChkHaveStcInterval(2,i) then
			tPreheatingAndDraw_NewText[i] = tPreheatingAndDraw_Text["ColorRewardName"][i]
		end
		-- local sSpace = ""
		-- for j=1,tPreheatingAndDraw_Count["Interval"][i] do
			-- sSpace = " " .. sSpace
		-- end

		-- if i%3 == 0 then
			-- tNpcGossip[nPreheatingAndDraw_NpcId][sIndex] = string.format(tGlobalFormat[3],tPreheatingAndDraw_NewText[i],sSpace,"\n")
		-- else
			-- if i == 1 or i == 4 or i == 7 then
					-- tNpcGossip[nPreheatingAndDraw_NpcId][sIndex] = string.format(tGlobalFormat[2],tPreheatingAndDraw_NewText[i],sSpace)
			-- else
					-- tNpcGossip[nPreheatingAndDraw_NpcId][sIndex] = string.format(tGlobalFormat[2],tPreheatingAndDraw_NewText[i],sSpace)
			-- end
		-- end
	end
	tNpcGossip[nPreheatingAndDraw_NpcId]["Text3111"] = string.format(tPreheatingAndDraw_Text[nPreheatingAndDraw_NpcId]["Text3111"],tPreheatingAndDraw_NewText[1],tPreheatingAndDraw_NewText[2],tPreheatingAndDraw_NewText[3])
	tNpcGossip[nPreheatingAndDraw_NpcId]["Text3112"] = string.format(tPreheatingAndDraw_Text[nPreheatingAndDraw_NpcId]["Text3112"],tPreheatingAndDraw_NewText[4],tPreheatingAndDraw_NewText[5],tPreheatingAndDraw_NewText[6])
	tNpcGossip[nPreheatingAndDraw_NpcId]["Text3113"] = string.format(tPreheatingAndDraw_Text[nPreheatingAndDraw_NpcId]["Text3113"],tPreheatingAndDraw_NewText[7],tPreheatingAndDraw_NewText[8],tPreheatingAndDraw_NewText[9])
	
	LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"3-1")
end

-- 3、领取奖励
function PreheatingAndDraw_ReceiveReward(nPreheatingAndDraw_NpcId)
	-- 活动后
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-3")
		return
	end
	
	-- 玩家已领取任务未完成
	local nPreheatingAndDraw_NowTaskId = PreheatingAndDraw_ChkHaveTask()
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	if nPreheatingAndDraw_NowTaskId > 0 then
		local sPreheatingAndDraw_DialogIndex = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]["DialogIndex"]
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,sPreheatingAndDraw_DialogIndex)
		return
	end
	
	-- 领取奖励
	local nPreheatingAndDraw_NowFinTaskId = PreheatingAndDraw_ChkHaveFinTask()
	if nPreheatingAndDraw_NowFinTaskId <= 0 then
		return
	end
	
	-- 重置奖励表
	local tPreheatingAndDraw_Random = CommonFunc_Copy(tPreheatingAndDraw_RandomReward[1])
	local bEmonyMono = true
	for i=1,9 do
		if PreheatingAndDraw_ChkHaveStcInterval(2,i) then
			if i == 3 then
				bEmonyMono = false
			end
			tPreheatingAndDraw_Random[1]["ItemChanceSum"] = tPreheatingAndDraw_Random[1]["ItemChanceSum"] - tPreheatingAndDraw_Random[1][i]["ItemChance"]
			tPreheatingAndDraw_Random[1][i]["ItemChance"] = 0
		end
	end
	
	-- 上限及背包空间判断
	local bSpaceFlag,nNeedSpace = RewardTemplate_ChkRandomSpace(tPreheatingAndDraw_Random,1)
	if not bSpaceFlag then
		Sys_MsgBox(string.format(tPreheatingAndDraw_Text["FullSpace"],nNeedSpace))
		return
	end
	
	-- 天石赠判断
	if bEmonyMono then
		local nPreheatingAndDraw_Emoney = Get_UserMonoEMoney()
		if nPreheatingAndDraw_Emoney + tPreheatingAndDraw_RandomReward[1][1][3]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tPreheatingAndDraw_Text["FullEMoneyMono"])
			return
		end
	end
	
	-- 已领取设置
	Task_SetTaskDetailCompleteFlag(nPreheatingAndDraw_NowFinTaskId,1)
	PreheatingAndDraw_AddStcValue(1,1)
	-- 领奖励
	local tPre_NewReward,sPre_RewardStr = RewardTemplate_RandomReward(tPreheatingAndDraw_Random,1)
	-- 领取掩码
	if tPre_NewReward then
		if next(tPre_NewReward) and tPre_NewReward[1]["tAward"] ~= nil then
			local nAwardFlag = tPre_NewReward[1]["tAward"][1]["AwardFlag"]
			PreheatingAndDraw_AddStcValue(2,2^nAwardFlag)
			
			Sys_SaveActionFestivalLog(string.format(tPreheatingAndDraw_Log["FinishTask"],nPreheatingAndDraw_NowFinTaskId))
			LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"3-2")
			local sPreheatingAndDraw_Func = "PreheatingAndDraw_LastRewardMsgBox</N>%d"
			OnTimer_SetUserTimer(2,string.format(sPreheatingAndDraw_Func,nAwardFlag))
		end
	end
end	

-- 延迟弹框
function PreheatingAndDraw_LastRewardMsgBox(nAwardFlag,nPreheatingAndDraw_UserId)
	Sys_MsgBox(string.format(tPreheatingAndDraw_Text["RewardTip"],tPreheatingAndDraw_Text["RewardName"][nAwardFlag]),nil,nil,nPreheatingAndDraw_UserId)
end

-- 第五天领取奖励
function PreheatingAndDraw_LastReward(nPreheatingAndDraw_NpcId)
	-- 活动后
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,"1-3")
		return
	end
	
	-- 玩家已领取任务未完成
	local nPreheatingAndDraw_NowTaskId = PreheatingAndDraw_ChkHaveTask()
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	if nPreheatingAndDraw_NowTaskId > 0 then
		local sPreheatingAndDraw_DialogIndex = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]["DialogIndex"]
		LinkNpcGossipFunc_New(nPreheatingAndDraw_NpcId,sPreheatingAndDraw_DialogIndex)
		return
	end
	
	local nPreheatingAndDraw_Data = PreheatingAndDraw_GetStcValue(3)
	if nPreheatingAndDraw_Data >= 1 then
		return
	end
	-- 领取奖励
	-- 重置奖励表
	local tPreheatingAndDraw_Random = CommonFunc_Copy(tPreheatingAndDraw_RandomReward[1])
	local bEmonyMono = true
	for i=1,9 do
		if PreheatingAndDraw_ChkHaveStcInterval(2,i) then
			if i == 3 then
				bEmonyMono = false
			end
			tPreheatingAndDraw_Random[1]["ItemChanceSum"] = tPreheatingAndDraw_Random[1]["ItemChanceSum"] - tPreheatingAndDraw_Random[1][i]["ItemChance"]
			tPreheatingAndDraw_Random[1][i]["ItemChance"] = 0
		end
	end
	
	-- 上限及背包空间判断
	local bSpaceFlag,nNeedSpace = RewardTemplate_ChkRandomSpace(tPreheatingAndDraw_Random,1)
	if not bSpaceFlag then
		Sys_MsgBox(string.format(tPreheatingAndDraw_Text["FullSpace"],nNeedSpace))
		return
	end
	
	-- 天石赠判断
	if bEmonyMono then
		local nPreheatingAndDraw_Emoney = Get_UserMonoEMoney()
		if nPreheatingAndDraw_Emoney + tPreheatingAndDraw_RandomReward[1][1][3]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tPreheatingAndDraw_Text["FullEMoneyMono"])
			return
		end
	end
	
	-- 领奖励
	local tPre_NewReward,sPre_RewardStr = RewardTemplate_RandomReward(tPreheatingAndDraw_Random,1)
	if tPre_NewReward then
		if next(tPre_NewReward) and tPre_NewReward[1]["tAward"] ~= nil then
			-- 领取掩码
			local nAwardFlag = tPre_NewReward[1]["tAward"][1]["AwardFlag"]
			PreheatingAndDraw_AddStcValue(2,2^nAwardFlag)
			PreheatingAndDraw_AddStcValue(3,1)
			-- Sys_MsgBox(string.format(tPreheatingAndDraw_Text["RewardTip"],sPre_RewardStr))
			local sPreheatingAndDraw_Func = "PreheatingAndDraw_LastRewardMsgBox</N>%d"
			OnTimer_SetUserTimer(2,string.format(sPreheatingAndDraw_Func,nAwardFlag))
		end
	end
end	

--------------------------------------怪物掉落
function PreheatingAndDraw_KillMonster(nPreheatingAndDraw_MonsterId)
	-- 活动时间
	if Sys_ChkFullTime(tActivityTime["PreheatingAndDraw"]["BeforeTime"]) then
		return
	end
	
	-- 杀死继续生成
	local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
	if nPreheatingAndDraw_MonsterId == tPreheatingAndDraw_Count["BossMonster"] then
		local nPreheatingAndDraw_UserMapId = Get_UserMapId()
		Monster_Death(nPreheatingAndDraw_MonsterId,nPreheatingAndDraw_UserMapId)
		local nPreheatingAndDraw_X = Get_UserPositionX()
		local nPreheatingAndDraw_Y = Get_UserPositionY()
		local nPreheatingAndDraw_Range = 10
		local nPreheatingAndDraw_MonsterIndex = 0
		for j,k in pairs(tPreheatingAndDraw_RefreshMonster[nPreheatingAndDraw_SerIndex]) do
			local nPreheatingAndDraw_Flag = 0
			if nPreheatingAndDraw_X < k["Pos"][2]-nPreheatingAndDraw_Range or nPreheatingAndDraw_X > k["Pos"][2]+nPreheatingAndDraw_Range then
				nPreheatingAndDraw_Flag = nPreheatingAndDraw_Flag + 1
			end
			if nPreheatingAndDraw_Y < k["Pos"][3]-nPreheatingAndDraw_Range or nPreheatingAndDraw_Y > k["Pos"][3]+nPreheatingAndDraw_Range then
				nPreheatingAndDraw_Flag = nPreheatingAndDraw_Flag + 1
			end
			if nPreheatingAndDraw_Flag == 0 then
				nPreheatingAndDraw_MonsterIndex = j
				break
			end
		end
		PreheatingAndDraw_CreateMonster(nPreheatingAndDraw_MonsterIndex)
	end
	
	-- 活动时间
	if not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto) then
		return
	end
	
	if nPreheatingAndDraw_MonsterId == tPreheatingAndDraw_Count["BossMonster"] then
		-- 额外奖励
		RewardTemplate_RandomReward(tPreheatingAndDraw_RandomReward[2],1)
	end
	
	-- 最后一天不需要完成任务
	if Sys_ChkFullTime(tPreheatingAndDraw_Count["LastTime"]) then
		return
	end
	-- 无任务返回
	local nPreheatingAndDraw_NowTaskId = PreheatingAndDraw_ChkHaveTask()
	if nPreheatingAndDraw_NowTaskId <= 0 then
		return
	end
	
	
	-- 不是对应任务
	local tPreheatingAndDraw_NowInfo = tPreheatingAndDraw_TaskInfo[nPreheatingAndDraw_SerIndex][nPreheatingAndDraw_NowTaskId]
	local bHaveTask = false
	for a,b in pairs(tPreheatingAndDraw_NowInfo["MonsterId"]) do
		if b == nPreheatingAndDraw_MonsterId then
			bHaveTask = true
		end
	end
	if not bHaveTask then
		return
	end
	
	local nPreheatingAndDraw_Kill = Get_TaskDetailData1(nPreheatingAndDraw_NowTaskId)
	if nPreheatingAndDraw_Kill >= tPreheatingAndDraw_NowInfo["RequestNum"] then
		return
	end
	
	local sPreheatingAndDraw_Func = "PreheatingAndDraw_TransMap"
	if nPreheatingAndDraw_MonsterId ~= tPreheatingAndDraw_Count["BossMonster"] then
		-- 概率获得
		if Sys_Random(tPreheatingAndDraw_Count["Min"],tPreheatingAndDraw_Count["Max"]) then
			-- 最后一个给105弹框提示
			local nPreheatingAndDraw_NowKill = nPreheatingAndDraw_Kill+1
			Task_SetTaskDetailData1(nPreheatingAndDraw_NowTaskId,nPreheatingAndDraw_NowKill)
			PreheatingAndDraw_Effect(1)
			local sPreheatingAndDraw_MonsterName = tPreheatingAndDraw_Text["TaskName"][1][1]
			local nPreheatingAndDraw_NeedKill = tPreheatingAndDraw_NowInfo["RequestNum"] - nPreheatingAndDraw_NowKill
			local sPreheatingAndDraw_KillTask = string.format(tPreheatingAndDraw_Text["MsgBox"]["KillTask"],nPreheatingAndDraw_NowKill,sPreheatingAndDraw_MonsterName,nPreheatingAndDraw_NeedKill)
			if nPreheatingAndDraw_NowKill == tPreheatingAndDraw_NowInfo["RequestNum"] then
				for g,h in pairs(tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex]) do
					if h == nPreheatingAndDraw_NowTaskId then
						sPreheatingAndDraw_MonsterName = tPreheatingAndDraw_Text["TaskName"][g][1]
						break
					end
				end
				local sFinishTask = string.format(tPreheatingAndDraw_Text["MsgBox"]["FinishTask"],nPreheatingAndDraw_NowKill,sPreheatingAndDraw_MonsterName)
				Sys_MsgBox(sFinishTask,sPreheatingAndDraw_Func)
			else
				User_TalkChannel2005(sPreheatingAndDraw_KillTask)
			end
		end
	else
		-- 秒刷刷新1次，刷在清风原，掉率100%
		-- 最后一个给105弹框提示
		local nPreheatingAndDraw_NowKill = nPreheatingAndDraw_Kill+1
		Task_SetTaskDetailData1(nPreheatingAndDraw_NowTaskId,nPreheatingAndDraw_NowKill)
		PreheatingAndDraw_Effect(1)
		User_TalkChannel2005(string.format(tPreheatingAndDraw_Text["MsgBox"]["FinishTask"],nPreheatingAndDraw_NowKill,tPreheatingAndDraw_Text["TaskName"][8][1]))
		if nPreheatingAndDraw_NowKill == tPreheatingAndDraw_NowInfo["RequestNum"] then
			Sys_MsgBox(string.format(tPreheatingAndDraw_Text["MsgBox"]["FinishTask"],nPreheatingAndDraw_NowKill,tPreheatingAndDraw_Text["TaskName"][8][1]),sPreheatingAndDraw_Func)
		end
	end
end

-- 创建怪物
function PreheatingAndDraw_CreateMonster(nPreheatingAndDraw_Random)
	-- 判断服务器
	local nPreheatingAndDraw_MonsterIndex = PreheatingAndDraw_GetServerIndex()
	if nPreheatingAndDraw_Random == 0 then
		nPreheatingAndDraw_Random = math.random(1,3)
	end
	-- 怪物刷新信息
	local tPreheatingAndDraw_RealInfo = tPreheatingAndDraw_RefreshMonster[nPreheatingAndDraw_MonsterIndex][nPreheatingAndDraw_Random]
	local nPreheatingAndDraw_MonsterId = tPreheatingAndDraw_RealInfo["MonsterId"]
	local nPreheatingAndDraw_GenId = tPreheatingAndDraw_RealInfo["Generator"]
	local nPreheatingAndDraw_Time = tPreheatingAndDraw_RealInfo["Time"]
	local tPreheatingAndDraw_Pos = tPreheatingAndDraw_RealInfo["Pos"]
	
	-- 怪物数量
	local nPreheatingAndDraw_MonsterNum = Get_SysTempData(1,tPreheatingAndDraw_Pos[1],nPreheatingAndDraw_MonsterId)
	if nPreheatingAndDraw_MonsterNum >= 3 then
		return
	end
	
	-- local sPreheatingAndDraw_Name = Get_MonsterName(nPreheatingAndDraw_MonsterId)
	Monster_CreateMonsterRange(0,0,tPreheatingAndDraw_Pos[1],tPreheatingAndDraw_Pos[2],tPreheatingAndDraw_Pos[3],nPreheatingAndDraw_GenId,nPreheatingAndDraw_MonsterId,0,"",0,5,5,1)
	Sys_SetTempData(1,tPreheatingAndDraw_Pos[1],nPreheatingAndDraw_MonsterId,nPreheatingAndDraw_MonsterNum+1)
end

function PreheatingAndDraw_RefreshMonster()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["PreheatingAndDraw"]["ActivityTime"]) then
		return
	end
	
	-- 活动时间
	if Sys_ChkFullTime(tPreheatingAndDraw_Count["LastTime"]) then
		return
	end
	
	for i=1,3 do
		PreheatingAndDraw_CreateMonster(i)
	end
end

-- 传送点
function PreheatingAndDraw_GoMap()
	-- 未开启
	if Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) then
		Sys_MsgBox(tPreheatingAndDraw_Text["NotTime"])
		return
	end
	
	if Sys_ChkFullTime(tActivityTime["PreheatingAndDraw"]["AllTime"]) then
		if Sys_ChkFullTime(tActivityTime["PreheatingAndDraw"]["BeforeTime"]) then
			Sys_MsgBox(tPreheatingAndDraw_Text["BeforeTime"])
			return
		else
			QiXiQuintupleMonster2020_GoMap()
		end
	end
end

function PreheatingAndDraw_DelMonster()
	local nPreheatingAndDraw_MonsterIndex = PreheatingAndDraw_GetServerIndex()
	local tPreheatingAndDraw_RealInfo = tPreheatingAndDraw_RefreshMonster[nPreheatingAndDraw_MonsterIndex][1]
	-- 删除怪物
	Monster_DelMonster(tPreheatingAndDraw_RealInfo["Pos"][1],tPreheatingAndDraw_RealInfo["MonsterId"])
end
--------------------------------------NPC模块--------------------------------------
-- 27025,'折翼的喜鹊'
tNpcFace[6099] = 199
tNpcGossip[27025] = tNpcGossip[27025] or DefaultNpc:new{}
tNpcGossip[27025]["OptionHidden"] = 1
tNpcGossip[27025]["DialogueText"] = tPreheatingAndDraw_Text[27025] 
-- 活动前
tNpcGossip[27025]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[27025]["tOption1-1"] = {111}
tNpcGossip[27025]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tPreheatingAndDraw_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[27025]["Text1-2"] = {111,121}
tNpcGossip[27025]["tOption1-2"] = {121}
tNpcGossip[27025]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"])
end

-- 活动中--等级未达到
tNpcGossip[27025]["Text1-3"] = {111,131,132,133,114,115,116}
tNpcGossip[27025]["tOption1-3"] = {131}
tNpcGossip[27025]["ChkFunc1-3"] = function ()
	local nPreheatingAndDraw_Level = tPreheatingAndDraw_Count["Level"]
	local nPreheatingAndDraw_Meto = tPreheatingAndDraw_Count["Meto"]
	return Sys_ChkFullTime(tPreheatingAndDraw_Count["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(nPreheatingAndDraw_Level,nPreheatingAndDraw_Meto)
end

-- 活动中
tNpcGossip[27025]["Text1-4"] = {111,141,142,143,144,114,116}
tNpcGossip[27025]["tOption1-4"] = {141,142,143}
tNpcGossip[27025]["ChkFunc1-4"] = function ()
	PreheatingAndDraw_ClearStcInterval(1)
	local nPreheatingAndDraw_NowFinTaskId = PreheatingAndDraw_ChkHaveFinTask()
	if nPreheatingAndDraw_NowFinTaskId > 0  then
		tNpcGossip[27025]["Option143"] = tPreheatingAndDraw_Text[27025]["Option143"]
		tNpcGossip[27025]["Option141"] = ""
		tNpcGossip[27025]["Option142"] = ""
	else
		tNpcGossip[27025]["Option143"] = ""
		tNpcGossip[27025]["Option142"] = tPreheatingAndDraw_Text[27025]["Option142"]	
		local nPreheatingAndDraw_FinData = PreheatingAndDraw_GetStcValue(1)
		if nPreheatingAndDraw_FinData == 0 then
			tNpcGossip[27025]["Option141"] = tPreheatingAndDraw_Text[27025]["Option141"]
		elseif nPreheatingAndDraw_FinData == 1 then
			tNpcGossip[27025]["Option141"] = tPreheatingAndDraw_Text[27025]["Option1410"]
		else
			tNpcGossip[27025]["Option141"] = tPreheatingAndDraw_Text[27025]["Option1411"]
		end
	end
	
	return not Sys_ChkFullTime(tPreheatingAndDraw_Count["LastTime"])
end
-- 1、帮忙寻找羽翼
tNpcGossip[27025]["OptionFunc141"] = "PreheatingAndDraw_FindWing</N>27025"
-- 2、查看奖励
tNpcGossip[27025]["OptionFunc142"] = "PreheatingAndDraw_LookReward</N>27025"
-- 3、领取奖励
tNpcGossip[27025]["OptionFunc143"] = "PreheatingAndDraw_ReceiveReward</N>27025"
-- 第五天点击对白--无任务
tNpcGossip[27025]["Text1-5"] = {111,171,172}
tNpcGossip[27025]["tOption1-5"] = {171}
tNpcGossip[27025]["ChkFunc1-5"] = function ()
	local nPreheatingAndDraw_RewData = PreheatingAndDraw_GetStcValue(3) 
	return Sys_ChkFullTime(tPreheatingAndDraw_Count["LastTime"]) and not PreheatingAndDraw_ChkFinTask() and (nPreheatingAndDraw_RewData <= 0)
end

tNpcGossip[27025]["OptionFunc151"] = "PreheatingAndDraw_LastReward</N>27025"
-- 第五天点击对白--有完成任务
tNpcGossip[27025]["Text1-6"] = {111,161,162}
tNpcGossip[27025]["tOption1-6"] = {151}
tNpcGossip[27025]["ChkFunc1-6"] = function ()
	local nPreheatingAndDraw_RewData = PreheatingAndDraw_GetStcValue(3) 
	return Sys_ChkFullTime(tPreheatingAndDraw_Count["LastTime"]) and PreheatingAndDraw_ChkFinTask() and (nPreheatingAndDraw_RewData <= 0)
end

tNpcGossip[27025]["Text1-7"] = {111,171,172}
tNpcGossip[27025]["tOption1-7"] = {171}

-- 帮忙寻找羽翼
tNpcGossip[27025]["Text2-1"] = {111,211,212}
tNpcGossip[27025]["tOption2-1"] = {211,212,213,214,215,216,217,218}
-- 1、叫天鸡之翼
-- 2、罗罗鸟之翼
-- 3、斑鸠王之翼
-- 4、鸟人之翼
-- 5、蝙蝠之翼
-- 6、红魔之翼
-- 7、翼蛇之翼
-- 8、凤凰之翼
-- 初始化选项颜色
tNpcGossip[27025]["ChkFunc2-1"] = function ()
	for nPreheating_I =1,8 do
		local nPreheatingAndDraw_Index = 210 + nPreheating_I
		-- tNpcGossip[27025]["OptionChkFunc" .. nPreheatingAndDraw_Index] = function ()
		local sPreheatingAndDraw_OptionIndex = "Option" .. nPreheatingAndDraw_Index
		local nPreheatingAndDraw_SerIndex = PreheatingAndDraw_GetServerIndex()
		local nPreheatingAndDraw_TaskId = tPreheatingAndDraw_Count["IndexToTaskId"][nPreheatingAndDraw_SerIndex][nPreheating_I]
		tNpcGossip[27025][sPreheatingAndDraw_OptionIndex] = tPreheatingAndDraw_Text[27025][sPreheatingAndDraw_OptionIndex]
		if Task_ChkTaskDetail(nPreheatingAndDraw_TaskId) then
			if Task_ChkTaskDetailValue(nPreheatingAndDraw_TaskId,"CompleteFlag",">=",1) then
				tNpcGossip[27025][sPreheatingAndDraw_OptionIndex] = ""
			end
		end
		-- end
	end
	return true
end
tNpcGossip[27025]["OptionFunc211"] = "PreheatingAndDraw_AcceptTask</N>27025</N>1"
tNpcGossip[27025]["OptionFunc212"] = "PreheatingAndDraw_AcceptTask</N>27025</N>2"
tNpcGossip[27025]["OptionFunc213"] = "PreheatingAndDraw_AcceptTask</N>27025</N>3"
tNpcGossip[27025]["OptionFunc214"] = "PreheatingAndDraw_AcceptTask</N>27025</N>4"
tNpcGossip[27025]["OptionFunc215"] = "PreheatingAndDraw_AcceptTask</N>27025</N>5"
tNpcGossip[27025]["OptionFunc216"] = "PreheatingAndDraw_AcceptTask</N>27025</N>6"
tNpcGossip[27025]["OptionFunc217"] = "PreheatingAndDraw_AcceptTask</N>27025</N>7"
tNpcGossip[27025]["OptionFunc218"] = "PreheatingAndDraw_AcceptTask</N>27025</N>8"

-- 【玩家已领取任务未完成】
tNpcGossip[27025]["Text2-2"] = {111,221,222}
tNpcGossip[27025]["tOption2-2"] = {221}
tNpcGossip[27025]["Text2-3"] = {111,231,222}
tNpcGossip[27025]["tOption2-3"] = {231}
tNpcGossip[27025]["Text2-4"] = {111,241,222}
tNpcGossip[27025]["tOption2-4"] = {241}
tNpcGossip[27025]["Text2-5"] = {111,251,222}
tNpcGossip[27025]["tOption2-5"] = {251}
tNpcGossip[27025]["Text2-6"] = {111,261,222}
tNpcGossip[27025]["tOption2-6"] = {261}
tNpcGossip[27025]["Text2-7"] = {111,271,222}
tNpcGossip[27025]["tOption2-7"] = {271}
tNpcGossip[27025]["Text2-8"] = {111,281,222}
tNpcGossip[27025]["tOption2-8"] = {281}
tNpcGossip[27025]["Text2-9"] = {111,291,222}
tNpcGossip[27025]["tOption2-9"] = {291}
-- 立即前往==点击后传送去怪物位置
tNpcGossip[27025]["OptionFunc221"] = "PreheatingAndDraw_GotoDestination</N>27025</N>1"
tNpcGossip[27025]["OptionFunc231"] = "PreheatingAndDraw_GotoDestination</N>27025</N>2"
tNpcGossip[27025]["OptionFunc241"] = "PreheatingAndDraw_GotoDestination</N>27025</N>3"
tNpcGossip[27025]["OptionFunc251"] = "PreheatingAndDraw_GotoDestination</N>27025</N>4"
tNpcGossip[27025]["OptionFunc261"] = "PreheatingAndDraw_GotoDestination</N>27025</N>5"
tNpcGossip[27025]["OptionFunc271"] = "PreheatingAndDraw_GotoDestination</N>27025</N>6"
tNpcGossip[27025]["OptionFunc281"] = "PreheatingAndDraw_GotoDestination</N>27025</N>7"
tNpcGossip[27025]["OptionFunc291"] = "PreheatingAndDraw_GotoDestination</N>27025</N>8"


-- 【玩家未领取任务，领取任务成功】--105提示
-- 【玩家今日已完成二次任务】--105提示
-- 【完成任务提示】--105提示
-- 接2、查看奖励
tNpcGossip[27025]["Text3-1"] = {111,311,312,3111,3112,3113,3114,3115,3116,3117,3118,3119,313}
tNpcGossip[27025]["tOption3-1"] = {311}
tNpcGossip[27025]["OptionPoint311"] = 1

-- 领取奖励
tNpcGossip[27025]["Text3-2"] = {111,321,322}
tNpcGossip[27025]["tOption3-2"] = {321}
tNpcGossip[27025]["OptionPoint321"] = "1-4"

--------------------------------------物品使用
-- tItem[3316530] = tItem[3316530] or {}
-- tItem[3316530]["Function"] = function(nPreheatingAndDraw_ItemId,sItemName)
	-- Sys_MsgBox(tPreheatingAndDraw_Text["ItemUse"])
-- end

--------------------------------------怪物掉落-------------------------------------------
local tPreheatingAndDraw_Drop = {}
	-- 小怪
	tPreheatingAndDraw_Drop[1] = {}
	tPreheatingAndDraw_Drop[1]["ActivityTime"] = tPreheatingAndDraw_Count["ActivityTime"]
	tPreheatingAndDraw_Drop[1]["Function"] = PreheatingAndDraw_KillMonster
	tPreheatingAndDraw_Drop[1]["MonsterId"] = {1,3,2,18,77,56,81,86,58,83,6,65}
	-- 激情服小怪
	tPreheatingAndDraw_Drop[2] = {}
	tPreheatingAndDraw_Drop[2]["ActivityTime"] = tPreheatingAndDraw_Count["ActivityTime"]
	tPreheatingAndDraw_Drop[2]["Function"] = PreheatingAndDraw_KillMonster
	tPreheatingAndDraw_Drop[2]["MonsterId"] = {4833,4835,4834,4850,4852,4856,4875,4878,4858,4877,4838}
	-- BOSS的掉落
	tPreheatingAndDraw_Drop[3] = {}
	tPreheatingAndDraw_Drop[3]["ActivityTime"] = tPreheatingAndDraw_Count["ActivityTime"]
	tPreheatingAndDraw_Drop[3]["Function"] = PreheatingAndDraw_KillMonster
	tPreheatingAndDraw_Drop[3]["MonsterId"] = {4048}

table.insert(tMonsterDrop_AreaLoad,tPreheatingAndDraw_Drop[1])
table.insert(tMonsterDrop_AreaLoad,tPreheatingAndDraw_Drop[3])
table.insert(tMonsterDrop_AreaLoad_NoGift,tPreheatingAndDraw_Drop[2])


-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],PreheatingAndDraw_RefreshMonster)

-- 限量删除
tGlobalData_Info[54746] = {}
tGlobalData_Info[54746]["Time"] = {}
tGlobalData_Info[54746]["Time"]["ActivityTime"] = tPreheatingAndDraw_Count["ActivityTime"]
tGlobalData_Info[54746]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54746]["Rest"] = {}
tGlobalData_Info[54746]["Rest"]["GlobalId"] = {54746}
tGlobalData_Info[54746]["Rest"]["Pos"] = {2}

-- 时间自检
local tPreheatingAndDraw_DelMonster = {}
tPreheatingAndDraw_DelMonster[1] = {}
tPreheatingAndDraw_DelMonster[1]["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["BeforeTime"]
tPreheatingAndDraw_DelMonster[1]["Type"] = 6
tPreheatingAndDraw_DelMonster[1]["TimeType"] = 4
tPreheatingAndDraw_DelMonster[1]["Time"] = "00:00 00:03"
tPreheatingAndDraw_DelMonster[1]["Func"] = PreheatingAndDraw_DelMonster
-- 生成怪物
tPreheatingAndDraw_DelMonster[2] = {}
tPreheatingAndDraw_DelMonster[2]["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["ActivityTime"]
tPreheatingAndDraw_DelMonster[2]["Type"] = 3
tPreheatingAndDraw_DelMonster[2]["TimeType"] = 4
tPreheatingAndDraw_DelMonster[2]["Time"] = "00:00 00:03"
tPreheatingAndDraw_DelMonster[2]["Func"] = PreheatingAndDraw_RefreshMonster
table.insert(tSystemTime_InitialData,tPreheatingAndDraw_DelMonster[1])
table.insert(tSystemTime_InitialData,tPreheatingAndDraw_DelMonster[2])
