------------------------------------------------------------------------------------
--Name:		181229[简体征服][活动脚本]雷神主线活动制作
--Purpose:	雷神主线活动制作
--Creator: 	傅伟龙
--Created:	2018/10/25
------------------------------------------------------------------------------------
--tNoGiftWorldBoss

--logId:12001245


--限量部分：
--53176
--data0：0表示boss未被击杀  1表示已被击杀

-----------------------------------数据部分配置--------------------------------------

local tThorMainlineActivity_Cont={}
	
	-- tThorMainlineActivity_Cont["BefTime"] = "00:00 18:59"
	-- tThorMainlineActivity_Cont["ActTime"] = "19:00 23:59"
	
	tThorMainlineActivity_Cont["Level"] = 40
	tThorMainlineActivity_Cont["Mete"] = 0
	
	tThorMainlineActivity_Cont["MinPro"] = 90
	tThorMainlineActivity_Cont["MaxPro"] = 95
	
	tThorMainlineActivity_Cont["LigthColor"] = 14535867
	--任务id
	tThorMainlineActivity_Cont["TaskId"] = {}
	tThorMainlineActivity_Cont["TaskId"][1] = 4078
	tThorMainlineActivity_Cont["TaskId"][2] = 4079
	tThorMainlineActivity_Cont["TaskId"][3] = 4080
	tThorMainlineActivity_Cont["TaskId"][4] = 4081
	tThorMainlineActivity_Cont["TaskId"][5] = 4082
	tThorMainlineActivity_Cont["TaskId"][6] = 4083
	--副本id
	tThorMainlineActivity_Cont["InstanceId"]= {}
	tThorMainlineActivity_Cont["InstanceId"][0] = 211
	tThorMainlineActivity_Cont["InstanceId"][1] = 211
	tThorMainlineActivity_Cont["InstanceId"][2] = 212
	tThorMainlineActivity_Cont["InstanceId"][3] = 213
	tThorMainlineActivity_Cont["InstanceId"][4] = 213
	
	--漫画
	tThorMainlineActivity_Cont["Cartoon"] = {}
	tThorMainlineActivity_Cont["Cartoon"][1] = 1044
	tThorMainlineActivity_Cont["Cartoon"][2] = 1045
	tThorMainlineActivity_Cont["Cartoon"][3] = 1046
	tThorMainlineActivity_Cont["Cartoon"][4] = 1047
	
	--任务阶段
	-- tThorMainlineActivity_Cont["TaskStage"] = {}
	-- tThorMainlineActivity_Cont["TaskStage"][23657] = {}
	-- tThorMainlineActivity_Cont["TaskStage"][23657] = 1
	-- tThorMainlineActivity_Cont["TaskStage"][23658] = {}
	-- tThorMainlineActivity_Cont["TaskStage"][23658] = 2
	-- tThorMainlineActivity_Cont["TaskStage"][23659] = {}
	-- tThorMainlineActivity_Cont["TaskStage"][23659] = 3
	
	tThorMainlineActivity_Cont["NumChg"] = {}
	tThorMainlineActivity_Cont["NumChg"][1] = 1
	tThorMainlineActivity_Cont["NumChg"][2] = 2
	tThorMainlineActivity_Cont["NumChg"][4] = 3
	tThorMainlineActivity_Cont["NumChg"][8] = 4
	
	--npc位置
	tThorMainlineActivity_Cont["Pos"] = {}
	-- tThorMainlineActivity_Cont["Pos"][1] = {}
	-- tThorMainlineActivity_Cont["Pos"][1]["NpcId"] = 0
	-- tThorMainlineActivity_Cont["Pos"][1]["MapId"] = 10411
	-- tThorMainlineActivity_Cont["Pos"][1]["PosX"] = 178
	-- tThorMainlineActivity_Cont["Pos"][1]["PosY"] = 175
	
	tThorMainlineActivity_Cont["Pos"][2] = {}
	tThorMainlineActivity_Cont["Pos"][2]["NpcId"] = 0
	tThorMainlineActivity_Cont["Pos"][2]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][2]["PosX"] = 221
	tThorMainlineActivity_Cont["Pos"][2]["PosY"] = 249
	
	tThorMainlineActivity_Cont["Pos"][3] = {}
	tThorMainlineActivity_Cont["Pos"][3]["NpcId"] = 0
	tThorMainlineActivity_Cont["Pos"][3]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][3]["PosX"] = 171
	tThorMainlineActivity_Cont["Pos"][3]["PosY"] = 192
	
	tThorMainlineActivity_Cont["Pos"][23599] = {}
	tThorMainlineActivity_Cont["Pos"][23599]["NpcId"] = 23599
	tThorMainlineActivity_Cont["Pos"][23599]["MapId"] = 1004
	tThorMainlineActivity_Cont["Pos"][23599]["PosX"] = 74
	tThorMainlineActivity_Cont["Pos"][23599]["PosY"] = 74
	
	tThorMainlineActivity_Cont["Pos"][23657] = {}
	tThorMainlineActivity_Cont["Pos"][23657]["NpcId"] = 23657
	tThorMainlineActivity_Cont["Pos"][23657]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][23657]["PosX"] = 166
	tThorMainlineActivity_Cont["Pos"][23657]["PosY"] = 162
	
	tThorMainlineActivity_Cont["Pos"][23658] = {}
	tThorMainlineActivity_Cont["Pos"][23658]["NpcId"] = 23658
	tThorMainlineActivity_Cont["Pos"][23658]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][23658]["PosX"] = 316
	tThorMainlineActivity_Cont["Pos"][23658]["PosY"] = 293
	
	tThorMainlineActivity_Cont["Pos"][23659] = {}
	tThorMainlineActivity_Cont["Pos"][23659]["NpcId"] = 23659
	tThorMainlineActivity_Cont["Pos"][23659]["MapId"] = 10412
	tThorMainlineActivity_Cont["Pos"][23659]["PosX"] = 263
	tThorMainlineActivity_Cont["Pos"][23659]["PosY"] = 67
	
	tThorMainlineActivity_Cont["Pos"][23670] = {}
	tThorMainlineActivity_Cont["Pos"][23670]["NpcId"] = 23670
	tThorMainlineActivity_Cont["Pos"][23670]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][23670]["PosX"] = 214
	tThorMainlineActivity_Cont["Pos"][23670]["PosY"] = 248
	
	tThorMainlineActivity_Cont["Pos"][23671] = {}
	tThorMainlineActivity_Cont["Pos"][23671]["NpcId"] = 23671
	tThorMainlineActivity_Cont["Pos"][23671]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][23671]["PosX"] = 219
	tThorMainlineActivity_Cont["Pos"][23671]["PosY"] = 248
	
	tThorMainlineActivity_Cont["Pos"][23672] = {}
	tThorMainlineActivity_Cont["Pos"][23672]["NpcId"] = 23672
	tThorMainlineActivity_Cont["Pos"][23672]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][23672]["PosX"] = 228
	tThorMainlineActivity_Cont["Pos"][23672]["PosY"] = 251
	
	tThorMainlineActivity_Cont["Pos"][23673] = {}
	tThorMainlineActivity_Cont["Pos"][23673]["NpcId"] = 23673
	tThorMainlineActivity_Cont["Pos"][23673]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][23673]["PosX"] = 223
	tThorMainlineActivity_Cont["Pos"][23673]["PosY"] = 256
	
	tThorMainlineActivity_Cont["Pos"][23674] = {}
	tThorMainlineActivity_Cont["Pos"][23674]["NpcId"] = 23674
	tThorMainlineActivity_Cont["Pos"][23674]["MapId"] = 10413
	tThorMainlineActivity_Cont["Pos"][23674]["PosX"] = 82
	tThorMainlineActivity_Cont["Pos"][23674]["PosY"] = 49
	
	tThorMainlineActivity_Cont["Pos"][4966] = {}
	tThorMainlineActivity_Cont["Pos"][4966]["NpcId"] = 0
	tThorMainlineActivity_Cont["Pos"][4966]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][4966]["PosX"] = 534
	tThorMainlineActivity_Cont["Pos"][4966]["PosY"] = 475
	
	tThorMainlineActivity_Cont["Pos"][4967] = {}
	tThorMainlineActivity_Cont["Pos"][4967]["NpcId"] = 0
	tThorMainlineActivity_Cont["Pos"][4967]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][4967]["PosX"] = 555
	tThorMainlineActivity_Cont["Pos"][4967]["PosY"] = 515
	
	tThorMainlineActivity_Cont["Pos"][4968] = {}
	tThorMainlineActivity_Cont["Pos"][4968]["NpcId"] = 0
	tThorMainlineActivity_Cont["Pos"][4968]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][4968]["PosX"] = 537
	tThorMainlineActivity_Cont["Pos"][4968]["PosY"] = 530
	
	tThorMainlineActivity_Cont["Pos"][4969] = {}
	tThorMainlineActivity_Cont["Pos"][4969]["NpcId"] = 0
	tThorMainlineActivity_Cont["Pos"][4969]["MapId"] = 10411
	tThorMainlineActivity_Cont["Pos"][4969]["PosX"] = 497
	tThorMainlineActivity_Cont["Pos"][4969]["PosY"] = 510
	
	--传送地图
	tThorMainlineActivity_Cont["Map"] = {}
	tThorMainlineActivity_Cont["Map"][1] = {}
	tThorMainlineActivity_Cont["Map"][1]["MapId"] = 1002
	tThorMainlineActivity_Cont["Map"][1]["PosX"] = 449
	tThorMainlineActivity_Cont["Map"][1]["PosY"] = 409
	
	tThorMainlineActivity_Cont["Map"][2] = {}
	tThorMainlineActivity_Cont["Map"][2]["MapId"] = 10364
	tThorMainlineActivity_Cont["Map"][2]["PosX"] = 249
	tThorMainlineActivity_Cont["Map"][2]["PosY"] = 218
	
	--副本内传送
	tThorMainlineActivity_Cont["ChgInstance"] = {}
	tThorMainlineActivity_Cont["ChgInstance"][23658] = {}
	tThorMainlineActivity_Cont["ChgInstance"][23658]["MapId"] = 0
	tThorMainlineActivity_Cont["ChgInstance"][23658]["PosX"] = 331
	tThorMainlineActivity_Cont["ChgInstance"][23658]["PosY"] = 351
	
	tThorMainlineActivity_Cont["ChgInstance"][23659] = {}
	tThorMainlineActivity_Cont["ChgInstance"][23659]["MapId"] = 0
	tThorMainlineActivity_Cont["ChgInstance"][23659]["PosX"] = 261
	tThorMainlineActivity_Cont["ChgInstance"][23659]["PosY"] = 67
	
	tThorMainlineActivity_Cont["ChgInstance"][2227] = {}
	tThorMainlineActivity_Cont["ChgInstance"][2227]["MapId"] = 0
	tThorMainlineActivity_Cont["ChgInstance"][2227]["PosX"] = 534
	tThorMainlineActivity_Cont["ChgInstance"][2227]["PosY"] = 475
	
	--怪物掩码值
	tThorMainlineActivity_Cont["MonsterStc"] = {}
	tThorMainlineActivity_Cont["MonsterStc"][4961] = 1
	tThorMainlineActivity_Cont["MonsterStc"][4962] = 2
	tThorMainlineActivity_Cont["MonsterStc"][4963] = 4
	tThorMainlineActivity_Cont["MonsterStc"][4964] = 8
	
	tThorMainlineActivity_Cont["MonsterStc"][4965] = 1
	tThorMainlineActivity_Cont["MonsterStc"][4966] = 2
	tThorMainlineActivity_Cont["MonsterStc"][4967] = 4
	tThorMainlineActivity_Cont["MonsterStc"][4968] = 8
	--冥王
	tThorMainlineActivity_Cont["Npc"] = {}
	tThorMainlineActivity_Cont["Npc"]["PoxX"] = 82
	tThorMainlineActivity_Cont["Npc"]["PoxY"] = 49
	tThorMainlineActivity_Cont["Npc"]["Task0"] = 97306320
	tThorMainlineActivity_Cont["Npc"]["Lookface"] = 64507
	--怪物id
	tThorMainlineActivity_Cont["MonsterId"] = 4970
	
	--xp值
	tThorMainlineActivity_Cont["AddXp"] = 100
	
	
	tThorMainlineActivity_Cont["Lookface"] = 14720
	tThorMainlineActivity_Cont["Instance"] = {}
	tThorMainlineActivity_Cont["Instance"][1] = {}
	tThorMainlineActivity_Cont["Instance"][1]["PoxX"] = 214
	tThorMainlineActivity_Cont["Instance"][1]["PoxY"] = 248
	
	tThorMainlineActivity_Cont["Instance"][2] = {}
	tThorMainlineActivity_Cont["Instance"][2]["PoxX"] = 219
	tThorMainlineActivity_Cont["Instance"][2]["PoxY"] = 245
	
	tThorMainlineActivity_Cont["Instance"][3] = {}
	tThorMainlineActivity_Cont["Instance"][3]["PoxX"] = 228
	tThorMainlineActivity_Cont["Instance"][3]["PoxY"] = 251
	
	tThorMainlineActivity_Cont["Instance"][4] = {}
	tThorMainlineActivity_Cont["Instance"][4]["PoxX"] = 223
	tThorMainlineActivity_Cont["Instance"][4]["PoxY"] = 256
	
	tThorMainlineActivity_Cont["Task0"] = {}
	tThorMainlineActivity_Cont["Task0"][1] = 97306394
	tThorMainlineActivity_Cont["Task0"][2] = 97306395
	tThorMainlineActivity_Cont["Task0"][3] = 97306396
	tThorMainlineActivity_Cont["Task0"][4] = 97306397
	
local tThorMainlineActivity_NpcTaskNum = {}
	tThorMainlineActivity_NpcTaskNum[23657] = 2
	tThorMainlineActivity_NpcTaskNum[23658] = 4
	tThorMainlineActivity_NpcTaskNum[23659] = 6
	
local tThorMainlineActivity_MonsterNpc = {}

	tThorMainlineActivity_MonsterNpc["Lookface"] = {}
	
	tThorMainlineActivity_MonsterNpc["Lookface"][1] = 64711
	tThorMainlineActivity_MonsterNpc["Lookface"][2] = 14815
	
	tThorMainlineActivity_MonsterNpc["Instance"] = {}
	tThorMainlineActivity_MonsterNpc["Instance"][1] = {}
	tThorMainlineActivity_MonsterNpc["Instance"][1]["PoxX"] = 536
	tThorMainlineActivity_MonsterNpc["Instance"][1]["PoxY"] = 530
	
	tThorMainlineActivity_MonsterNpc["Instance"][2] = {}
	tThorMainlineActivity_MonsterNpc["Instance"][2]["PoxX"] = 532
	tThorMainlineActivity_MonsterNpc["Instance"][2]["PoxY"] = 534
	
	tThorMainlineActivity_MonsterNpc["Task0"] = {}
	tThorMainlineActivity_MonsterNpc["Task0"][1] = 97306434
	tThorMainlineActivity_MonsterNpc["Task0"][2] = 97306435
	
local tThorMainlineActivity_Npc = {}
	tThorMainlineActivity_Npc["Lookface"] = 14837
	tThorMainlineActivity_Npc["Instance"] = {}
	tThorMainlineActivity_Npc["Instance"]["PoxX"] = 82
	tThorMainlineActivity_Npc["Instance"]["PoxY"] = 49
	tThorMainlineActivity_Npc["Task0"] = 97306436
	
local tThorMainlineActivity_CheerNpc = {}

	tThorMainlineActivity_CheerNpc["Instance"] = {}
	tThorMainlineActivity_CheerNpc["Instance"][1] = {}
	tThorMainlineActivity_CheerNpc["Instance"][1]["PoxX"] = 96
	tThorMainlineActivity_CheerNpc["Instance"][1]["PoxY"] = 69
	
	tThorMainlineActivity_CheerNpc["Instance"][2] = {}
	tThorMainlineActivity_CheerNpc["Instance"][2]["PoxX"] = 102
	tThorMainlineActivity_CheerNpc["Instance"][2]["PoxY"] = 64
	
	tThorMainlineActivity_CheerNpc["Instance"][3] = {}
	tThorMainlineActivity_CheerNpc["Instance"][3]["PoxX"] = 108
	tThorMainlineActivity_CheerNpc["Instance"][3]["PoxY"] = 84
	
	tThorMainlineActivity_CheerNpc["Instance"][4] = {}
	tThorMainlineActivity_CheerNpc["Instance"][4]["PoxX"] = 117
	tThorMainlineActivity_CheerNpc["Instance"][4]["PoxY"] = 77
	
	tThorMainlineActivity_CheerNpc["Lookface"] = {}
	tThorMainlineActivity_CheerNpc["Lookface"][1] = 64865
	tThorMainlineActivity_CheerNpc["Lookface"][2] = 64871
	tThorMainlineActivity_CheerNpc["Lookface"][3] = 64885
	tThorMainlineActivity_CheerNpc["Lookface"][4] = 64891
	
	--刷新boss
local tThorMainlineActivity_Monster = {}
	tThorMainlineActivity_Monster[4961] = {}
	tThorMainlineActivity_Monster[4961]["Id"] = 4961
	tThorMainlineActivity_Monster[4961]["MapId"] = 10411
	tThorMainlineActivity_Monster[4961]["Cellx"] = 219
	tThorMainlineActivity_Monster[4961]["Celly"] = 245
	tThorMainlineActivity_Monster[4961]["GenID"] = 26564
	
	tThorMainlineActivity_Monster[4962] = {}
	tThorMainlineActivity_Monster[4962]["Id"] = 4962
	tThorMainlineActivity_Monster[4962]["MapId"] = 10411
	tThorMainlineActivity_Monster[4962]["Cellx"] = 225
	tThorMainlineActivity_Monster[4962]["Celly"] = 245
	tThorMainlineActivity_Monster[4962]["GenID"] = 26565
	
	tThorMainlineActivity_Monster[4963] = {}
	tThorMainlineActivity_Monster[4963]["Id"] = 4963
	tThorMainlineActivity_Monster[4963]["MapId"] = 10411
	tThorMainlineActivity_Monster[4963]["Cellx"] = 219
	tThorMainlineActivity_Monster[4963]["Celly"] = 255
	tThorMainlineActivity_Monster[4963]["GenID"] = 26566
	
	tThorMainlineActivity_Monster[4964] = {}
	tThorMainlineActivity_Monster[4964]["Id"] = 4964
	tThorMainlineActivity_Monster[4964]["MapId"] = 10411
	tThorMainlineActivity_Monster[4964]["Cellx"] = 225
	tThorMainlineActivity_Monster[4964]["Celly"] = 255
	tThorMainlineActivity_Monster[4964]["GenID"] = 26567
	
	tThorMainlineActivity_Monster[4965] = {}
	tThorMainlineActivity_Monster[4965]["Id"] = 4965
	tThorMainlineActivity_Monster[4965]["MapId"] = 10411
	tThorMainlineActivity_Monster[4965]["Cellx"] = 221
	tThorMainlineActivity_Monster[4965]["Celly"] = 249
	tThorMainlineActivity_Monster[4965]["GenID"] = 26572
	
	tThorMainlineActivity_Monster[4966] = {}
	tThorMainlineActivity_Monster[4966]["Id"] = 4966
	tThorMainlineActivity_Monster[4966]["MapId"] = 10411
	tThorMainlineActivity_Monster[4966]["Cellx"] = 534
	tThorMainlineActivity_Monster[4966]["Celly"] = 475
	tThorMainlineActivity_Monster[4966]["GenID"] = 26568
	
	tThorMainlineActivity_Monster[4967] = {}
	tThorMainlineActivity_Monster[4967]["Id"] = 4967
	tThorMainlineActivity_Monster[4967]["MapId"] = 10411
	tThorMainlineActivity_Monster[4967]["Cellx"] = 555
	tThorMainlineActivity_Monster[4967]["Celly"] = 515
	tThorMainlineActivity_Monster[4967]["GenID"] = 26569
	
	tThorMainlineActivity_Monster[4968] = {}
	tThorMainlineActivity_Monster[4968]["Id"] = 4968
	tThorMainlineActivity_Monster[4968]["MapId"] = 10411
	tThorMainlineActivity_Monster[4968]["Cellx"] = 534
	tThorMainlineActivity_Monster[4968]["Celly"] = 534
	tThorMainlineActivity_Monster[4968]["GenID"] = 26570
	
	tThorMainlineActivity_Monster[4969] = {}
	tThorMainlineActivity_Monster[4969]["Id"] = 4969
	tThorMainlineActivity_Monster[4969]["MapId"] = 10411
	tThorMainlineActivity_Monster[4969]["Cellx"] = 497
	tThorMainlineActivity_Monster[4969]["Celly"] = 510
	tThorMainlineActivity_Monster[4969]["GenID"] = 26571
	
	tThorMainlineActivity_Monster[4970] = {}
	tThorMainlineActivity_Monster[4970][1] = {10412,260,180,26572}
	tThorMainlineActivity_Monster[4970][2] = {10412,264,180,26573}
	tThorMainlineActivity_Monster[4970][3] = {10412,260,170,26574}
	tThorMainlineActivity_Monster[4970][4] = {10412,264,170,26575}
	tThorMainlineActivity_Monster[4970][5] = {10412,260,160,26576}
	tThorMainlineActivity_Monster[4970][6] = {10412,264,160,26578}
	tThorMainlineActivity_Monster[4970][7] = {10412,260,150,26579}
	tThorMainlineActivity_Monster[4970][8] = {10412,264,150,26580}
	tThorMainlineActivity_Monster[4970][9] = {10412,260,140,26581}
	tThorMainlineActivity_Monster[4970][10] = {10412,264,140,26582}
	tThorMainlineActivity_Monster[4970][11] = {10412,260,130,26583}
	tThorMainlineActivity_Monster[4970][12] = {10412,264,130,26584}
	tThorMainlineActivity_Monster[4970][13] = {10412,260,120,26585}
	tThorMainlineActivity_Monster[4970][14] = {10412,264,120,26586}
	tThorMainlineActivity_Monster[4970][15] = {10412,260,110,26587}
	tThorMainlineActivity_Monster[4970][16] = {10412,264,110,26588}
	tThorMainlineActivity_Monster[4970][17] = {10412,260,100,26589}
	tThorMainlineActivity_Monster[4970][18] = {10412,264,100,26590}
	tThorMainlineActivity_Monster[4970][19] = {10412,260,90,26591}
	tThorMainlineActivity_Monster[4970][20] = {10412,264,90,26592}
	tThorMainlineActivity_Monster[4970][21] = {10412,260,80,26593}
	tThorMainlineActivity_Monster[4970][22] = {10412,264,80,26594}
	
	tThorMainlineActivity_Monster[4971] = {}
	tThorMainlineActivity_Monster[4971]["Id"] = 4971
	tThorMainlineActivity_Monster[4971]["MapId"] = 10413
	tThorMainlineActivity_Monster[4971]["Cellx"] = 82
	tThorMainlineActivity_Monster[4971]["Celly"] = 49
	tThorMainlineActivity_Monster[4971]["GenID"] = 26577
	
local tThorMainlineActivity_Stc = {}
	--任务完成情况
	tThorMainlineActivity_Stc["TaskStag"] = {}
	tThorMainlineActivity_Stc["TaskStag"]["EventType"] = 188
	tThorMainlineActivity_Stc["TaskStag"]["DataType"] = 87
	
	-- 任务1 禀报战况
	tThorMainlineActivity_Stc[1] = {}
	tThorMainlineActivity_Stc[1]["EventType"] = 188
	tThorMainlineActivity_Stc[1]["DataType"] = 80
	
	--任务2 雷池试炼
	tThorMainlineActivity_Stc[2] = {}
	tThorMainlineActivity_Stc[2]["EventType"] = 188
	tThorMainlineActivity_Stc[2]["DataType"] = 81
	
	--任务3 直捣冥府
	tThorMainlineActivity_Stc[3] = {}
	tThorMainlineActivity_Stc[3]["EventType"] = 188
	tThorMainlineActivity_Stc[3]["DataType"] = 82
	
	--记入惨死npc
	tThorMainlineActivity_Stc[4] = {}
	tThorMainlineActivity_Stc[4]["EventType"] = 188
	tThorMainlineActivity_Stc[4]["DataType"] = 83
	
	--记录4只魔兽
	tThorMainlineActivity_Stc[5] = {}
	tThorMainlineActivity_Stc[5]["EventType"] = 188
	tThorMainlineActivity_Stc[5]["DataType"] = 84
	
	--记录击杀怪物数量
	tThorMainlineActivity_Stc[6] = {}
	tThorMainlineActivity_Stc[6]["EventType"] = 188
	tThorMainlineActivity_Stc[6]["DataType"] = 85

	--背包信
	tThorMainlineActivity_Stc[7] = {}
	tThorMainlineActivity_Stc[7]["EventType"] = 188
	tThorMainlineActivity_Stc[7]["DataType"] = 86


	
	--任务奖励
	local tThorMainlineActivity_RewandItem = {}
	tThorMainlineActivity_RewandItem["Award"] = {}
	tThorMainlineActivity_RewandItem["Award"]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem["Award"]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem["Award"]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem["Award"]["RewardItem"][1]["Id"] = 3008190
	tThorMainlineActivity_RewandItem["Award"]["RewardItem"][1]["Attr"] = "0 1"
	tThorMainlineActivity_RewandItem["Award"]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem["Award"]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[23658] = {}
	tThorMainlineActivity_RewandItem[23658]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[23658]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem[23658]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem[23658]["RewardItem"][1]["Id"] = 681118
	tThorMainlineActivity_RewandItem[23658]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorMainlineActivity_RewandItem[23658]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem[23658]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[23659] = {}
	tThorMainlineActivity_RewandItem[23659]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[23659]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem[23659]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem[23659]["RewardItem"][1]["Id"] = 680118
	tThorMainlineActivity_RewandItem[23659]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorMainlineActivity_RewandItem[23659]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem[23659]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[23713] = {}
	tThorMainlineActivity_RewandItem[23713]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[23713]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem[23713]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem[23713]["RewardItem"][1]["Id"] = 4011501
	tThorMainlineActivity_RewandItem[23713]["RewardItem"][1]["Attr"] = "0 1 3 "
	tThorMainlineActivity_RewandItem[23713]["RewardItem"][2] = {}
	tThorMainlineActivity_RewandItem[23713]["RewardItem"][2]["Id"] = 4022201
	tThorMainlineActivity_RewandItem[23713]["RewardItem"][2]["Attr"] = "0 1 3"
	tThorMainlineActivity_RewandItem[23713]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem[23713]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[4965] = {}
	tThorMainlineActivity_RewandItem[4965]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[4965]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem[4965]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem[4965]["RewardItem"][1]["Id"] = 3304324
	tThorMainlineActivity_RewandItem[4965]["RewardItem"][1]["Attr"] = "0 1"
	
	
	tThorMainlineActivity_RewandItem["RewandItem"] = {}
	tThorMainlineActivity_RewandItem["RewandItem"]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem["RewandItem"]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem["RewandItem"]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem["RewandItem"]["RewardItem"][1]["Id"] = 3319255
	tThorMainlineActivity_RewandItem["RewandItem"]["RewardItem"][1]["Attr"] = "0 1"
	tThorMainlineActivity_RewandItem["RewandItem"]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem["RewandItem"]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[3319255] = {}
	tThorMainlineActivity_RewandItem[3319255]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[3319255]["DeleteItem"] = {}
	tThorMainlineActivity_RewandItem[3319255]["DeleteItem"][1] = {}
	tThorMainlineActivity_RewandItem[3319255]["DeleteItem"][1]["Id"] = 3319255
	tThorMainlineActivity_RewandItem[3319255]["RewardCultivation"] = {}
	tThorMainlineActivity_RewandItem[3319255]["RewardCultivation"]["Value"] = 30
	tThorMainlineActivity_RewandItem[3319255]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem[3319255]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[3320107] = {}
	tThorMainlineActivity_RewandItem[3320107]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[3320107]["DeleteItem"] = {}
	tThorMainlineActivity_RewandItem[3320107]["DeleteItem"][1] = {}
	tThorMainlineActivity_RewandItem[3320107]["DeleteItem"][1]["Id"] = 3320107
	tThorMainlineActivity_RewandItem[3320107]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem[3320107]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem[3320107]["RewardItem"][1]["Id"] = 4011501
	tThorMainlineActivity_RewandItem[3320107]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorMainlineActivity_RewandItem[3320107]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem[3320107]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_RewandItem[3320108] = {}
	tThorMainlineActivity_RewandItem[3320108]["LogId"] = 12000801
	tThorMainlineActivity_RewandItem[3320108]["DeleteItem"] = {}
	tThorMainlineActivity_RewandItem[3320108]["DeleteItem"][1] = {}
	tThorMainlineActivity_RewandItem[3320108]["DeleteItem"][1]["Id"] = 3320108
	tThorMainlineActivity_RewandItem[3320108]["RewardItem"] = {}
	tThorMainlineActivity_RewandItem[3320108]["RewardItem"][1] = {}
	tThorMainlineActivity_RewandItem[3320108]["RewardItem"][1]["Id"] = 4022201
	tThorMainlineActivity_RewandItem[3320108]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorMainlineActivity_RewandItem[3320108]["RewardEffect"] = {}
	tThorMainlineActivity_RewandItem[3320108]["RewardEffect"]["Effect"] = "zf2-e128"
	
	local tThorMainlineActivity_NoGiftRewandItem = {}
	
	tThorMainlineActivity_NoGiftRewandItem[23658] = {}
	tThorMainlineActivity_NoGiftRewandItem[23658]["LogId"] = 12000801
	tThorMainlineActivity_NoGiftRewandItem[23658]["RewardItem"] = {}
	tThorMainlineActivity_NoGiftRewandItem[23658]["RewardItem"][1] = {}
	tThorMainlineActivity_NoGiftRewandItem[23658]["RewardItem"][1]["Id"] = 681118
	tThorMainlineActivity_NoGiftRewandItem[23658]["RewardItem"][1]["Attr"] = "0 1"
	tThorMainlineActivity_NoGiftRewandItem[23658]["RewardEffect"] = {}
	tThorMainlineActivity_NoGiftRewandItem[23658]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tThorMainlineActivity_NoGiftRewandItem[23659] = {}
	tThorMainlineActivity_NoGiftRewandItem[23659]["LogId"] = 12000801
	tThorMainlineActivity_NoGiftRewandItem[23659]["RewardItem"] = {}
	tThorMainlineActivity_NoGiftRewandItem[23659]["RewardItem"][1] = {}
	tThorMainlineActivity_NoGiftRewandItem[23659]["RewardItem"][1]["Id"] = 680118
	tThorMainlineActivity_NoGiftRewandItem[23659]["RewardItem"][1]["Attr"] = "0 1"
	tThorMainlineActivity_NoGiftRewandItem[23659]["RewardEffect"] = {}
	tThorMainlineActivity_NoGiftRewandItem[23659]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	local tThorMainlineActivity_Rewand = {}
	tThorMainlineActivity_Rewand["ItemId"] = {}
	tThorMainlineActivity_Rewand["ItemId"][1] = 3320107
	tThorMainlineActivity_Rewand["ItemId"][2] = 3320108
	tThorMainlineActivity_Rewand["ItemId"][3] = 3304324
	tThorMainlineActivity_Rewand["ItemId"][4] = 3304324
	tThorMainlineActivity_Rewand["ItemId"][5] = 3304324
	
--光效
local tThorMainlineActivity_Effect = {}

	tThorMainlineActivity_Effect[1] = "self"
	-- tThorMainlineActivity_Effect[2] = "BodyDisapear"
	tThorMainlineActivity_Effect[2204] = "task_spdup"
	tThorMainlineActivity_Effect[2205] = "task_atkup"
	tThorMainlineActivity_Effect[2206] = "task_hpup"
	tThorMainlineActivity_Effect[2207] = "task_defup"
	tThorMainlineActivity_Effect[4966] = "thortask002"
	tThorMainlineActivity_Effect[10000] = "born"
	tThorMainlineActivity_Effect[23655] = "thortask003"
	-- tThorMainlineActivity_Effect[23713] = "zf2-e128"
	
local tThorMainlineActivity_KillEffect = {}
	tThorMainlineActivity_KillEffect[1] = "self"
	tThorMainlineActivity_KillEffect[1000] = "zf2-e233_xh"
	tThorMainlineActivity_KillEffect[4965] = "thortask001"
	tThorMainlineActivity_KillEffect[4966] = "fire4"
	tThorMainlineActivity_KillEffect[4967] = "fire4"
	tThorMainlineActivity_KillEffect[4968] = "fire4"
	tThorMainlineActivity_KillEffect[4969] = "fire4"
	
local tThorMainlineActivity_Trap = {}
	tThorMainlineActivity_Trap[4971] = {}
	tThorMainlineActivity_Trap[4971]["TrapType"] = 2208
	tThorMainlineActivity_Trap[4971]["Look"] = 2204
	
	tThorMainlineActivity_Trap[2272] = {}
	tThorMainlineActivity_Trap[2272]["TrapType"] = 2272
	tThorMainlineActivity_Trap[2272]["Look"] = 811
	
	tThorMainlineActivity_Trap[2234] = {}
	tThorMainlineActivity_Trap[2234]["TrapType"] = 2234
	tThorMainlineActivity_Trap[2234]["Look"] = 2234
	
	tThorMainlineActivity_Trap[23713] = {}
	tThorMainlineActivity_Trap[23713]["TrapType"] = 2273
	tThorMainlineActivity_Trap[23713]["Look"] = 2273
	
-- 地面光效
local tThorMainlineActivity_MapEffect = {}
	tThorMainlineActivity_MapEffect[23658] = "zf2-e233_xh"
	tThorMainlineActivity_MapEffect[23670] = "accession"
	tThorMainlineActivity_MapEffect[4971] = "zf2-e233_xh"
	tThorMainlineActivity_MapEffect[4965] = "accession"
-- 地面坐标
local tThorMainlineActivity_EffectPosition = {}

	tThorMainlineActivity_EffectPosition[23658] = {}
	tThorMainlineActivity_EffectPosition[23658][1] = {}
	tThorMainlineActivity_EffectPosition[23658][1]["PosX"] = 327
	tThorMainlineActivity_EffectPosition[23658][1]["PosY"] = 353
	
	tThorMainlineActivity_EffectPosition[23658][2] = {}
	tThorMainlineActivity_EffectPosition[23658][2]["PosX"] = 333
	tThorMainlineActivity_EffectPosition[23658][2]["PosY"] = 356
	
	tThorMainlineActivity_EffectPosition[23658][3] = {}
	tThorMainlineActivity_EffectPosition[23658][3]["PosX"] = 337
	tThorMainlineActivity_EffectPosition[23658][3]["PosY"] = 350
	
	tThorMainlineActivity_EffectPosition[23658][4] = {}
	tThorMainlineActivity_EffectPosition[23658][4]["PosX"] = 330
	tThorMainlineActivity_EffectPosition[23658][4]["PosY"] = 345
	
	tThorMainlineActivity_EffectPosition[4965] = {}
	tThorMainlineActivity_EffectPosition[4965][1] = {}
	tThorMainlineActivity_EffectPosition[4965][1]["PosX"] = 221
	tThorMainlineActivity_EffectPosition[4965][1]["PosY"] = 248
	
	tThorMainlineActivity_EffectPosition[4965][2] = {}
	tThorMainlineActivity_EffectPosition[4965][2]["PosX"] = 217
	tThorMainlineActivity_EffectPosition[4965][2]["PosY"] = 245
	
	tThorMainlineActivity_EffectPosition[4965][3] = {}
	tThorMainlineActivity_EffectPosition[4965][3]["PosX"] = 216
	tThorMainlineActivity_EffectPosition[4965][3]["PosY"] = 253
	
	tThorMainlineActivity_EffectPosition[4965][4] = {}
	tThorMainlineActivity_EffectPosition[4965][4]["PosX"] = 226
	tThorMainlineActivity_EffectPosition[4965][4]["PosY"] = 254
	
	tThorMainlineActivity_EffectPosition[4965][5] = {}
	tThorMainlineActivity_EffectPosition[4965][5]["PosX"] = 225
	tThorMainlineActivity_EffectPosition[4965][5]["PosY"] = 244
	
	tThorMainlineActivity_EffectPosition[4971] = {}
	tThorMainlineActivity_EffectPosition[4971][1] = {}
	tThorMainlineActivity_EffectPosition[4971][1]["PosX"] = 77
	tThorMainlineActivity_EffectPosition[4971][1]["PosY"] = 54
	
	tThorMainlineActivity_EffectPosition[4971][2] = {}
	tThorMainlineActivity_EffectPosition[4971][2]["PosX"] = 79
	tThorMainlineActivity_EffectPosition[4971][2]["PosY"] = 66
	
	tThorMainlineActivity_EffectPosition[4971][3] = {}
	tThorMainlineActivity_EffectPosition[4971][3]["PosX"] = 88
	tThorMainlineActivity_EffectPosition[4971][3]["PosY"] = 72
	
	tThorMainlineActivity_EffectPosition[4971][4] = {}
	tThorMainlineActivity_EffectPosition[4971][4]["PosX"] = 86
	tThorMainlineActivity_EffectPosition[4971][4]["PosY"] = 63
	
	tThorMainlineActivity_EffectPosition[4971][5] = {}
	tThorMainlineActivity_EffectPosition[4971][5]["PosX"] = 95
	tThorMainlineActivity_EffectPosition[4971][5]["PosY"] = 68
	
	tThorMainlineActivity_EffectPosition[4971][6] = {}
	tThorMainlineActivity_EffectPosition[4971][6]["PosX"] = 101
	tThorMainlineActivity_EffectPosition[4971][6]["PosY"] = 60
	
	tThorMainlineActivity_EffectPosition[4971][7] = {}
	tThorMainlineActivity_EffectPosition[4971][7]["PosX"] = 102
	tThorMainlineActivity_EffectPosition[4971][7]["PosY"] = 48
	
	tThorMainlineActivity_EffectPosition[4971][8] = {}
	tThorMainlineActivity_EffectPosition[4971][8]["PosX"] = 92
	tThorMainlineActivity_EffectPosition[4971][8]["PosY"] = 41
	
	tThorMainlineActivity_EffectPosition[4971][9] = {}
	tThorMainlineActivity_EffectPosition[4971][9]["PosX"] = 83
	tThorMainlineActivity_EffectPosition[4971][9]["PosY"] = 43
	
	tThorMainlineActivity_EffectPosition[4971][10] = {}
	tThorMainlineActivity_EffectPosition[4971][10]["PosX"] = 92
	tThorMainlineActivity_EffectPosition[4971][10]["PosY"] = 51
	
	tThorMainlineActivity_EffectPosition[4971][11] = {}
	tThorMainlineActivity_EffectPosition[4971][11]["PosX"] = 95
	tThorMainlineActivity_EffectPosition[4971][11]["PosY"] = 60
	
	tThorMainlineActivity_EffectPosition[2272] = {}
	tThorMainlineActivity_EffectPosition[2272][1] = {}
	tThorMainlineActivity_EffectPosition[2272][1]["PosX"] = 82
	tThorMainlineActivity_EffectPosition[2272][1]["PosY"] = 49
	
	tThorMainlineActivity_EffectPosition[2234] = {}
	tThorMainlineActivity_EffectPosition[2234][1] = {}
	tThorMainlineActivity_EffectPosition[2234][1]["PosX"] = 79
	tThorMainlineActivity_EffectPosition[2234][1]["PosY"] = 46
	
	tThorMainlineActivity_EffectPosition[23713] = {}
	tThorMainlineActivity_EffectPosition[23713][1] = {}
	tThorMainlineActivity_EffectPosition[23713][1]["PosX"] = 82
	tThorMainlineActivity_EffectPosition[23713][1]["PosY"] = 56
	
	tThorMainlineActivity_EffectPosition[23713][2] = {}
	tThorMainlineActivity_EffectPosition[23713][2]["PosX"] = 90
	tThorMainlineActivity_EffectPosition[23713][2]["PosY"] = 57
	
	tThorMainlineActivity_EffectPosition[23713][3] = {}
	tThorMainlineActivity_EffectPosition[23713][3]["PosX"] = 93
	tThorMainlineActivity_EffectPosition[23713][3]["PosY"] = 51
	
	tThorMainlineActivity_EffectPosition[23713][4] = {}
	tThorMainlineActivity_EffectPosition[23713][4]["PosX"] = 85
	tThorMainlineActivity_EffectPosition[23713][4]["PosY"] = 44
	
	tThorMainlineActivity_EffectPosition[23713][5] = {}
	tThorMainlineActivity_EffectPosition[23713][5]["PosX"] = 75
	tThorMainlineActivity_EffectPosition[23713][5]["PosY"] = 52
	
local tThorMainlineActivity_ClrStatus ={}
	tThorMainlineActivity_ClrStatus["Status"] = {49,139,138,6,9}
	
---- 状态
local tThorMainlineActivity_Status = {}
	tThorMainlineActivity_Status[23658] = {}
	tThorMainlineActivity_Status[23658]["Status"] = {49}
	tThorMainlineActivity_Status[23658]["Power"] = 25
	tThorMainlineActivity_Status[23658]["Secs"] = 20
	tThorMainlineActivity_Status[23658]["Times"] = 0
	tThorMainlineActivity_Status[23658]["RemainTime"] = 20
	tThorMainlineActivity_Status[23658]["EndTime"] = 1
	
	tThorMainlineActivity_Status[2204] = {}
	tThorMainlineActivity_Status[2204]["Status"] = {49}
	tThorMainlineActivity_Status[2204]["Power"] = 30
	tThorMainlineActivity_Status[2204]["Secs"] = 60
	tThorMainlineActivity_Status[2204]["Times"] = 0
	tThorMainlineActivity_Status[2204]["RemainTime"] = 20
	tThorMainlineActivity_Status[2204]["EndTime"] = 1
	
	tThorMainlineActivity_Status[2205] = {}
	tThorMainlineActivity_Status[2205]["Status"] = {139}
	tThorMainlineActivity_Status[2205]["Power"] = 30000
	tThorMainlineActivity_Status[2205]["Secs"] = 60
	tThorMainlineActivity_Status[2205]["Times"] = 0
	tThorMainlineActivity_Status[2205]["RemainTime"] = 60
	tThorMainlineActivity_Status[2205]["EndTime"] = 1
	
	tThorMainlineActivity_Status[2206] = {}
	tThorMainlineActivity_Status[2206]["Status"] = {138}
	tThorMainlineActivity_Status[2206]["Power"] = 200000
	tThorMainlineActivity_Status[2206]["Secs"] = 60
	tThorMainlineActivity_Status[2206]["Times"] = 0
	tThorMainlineActivity_Status[2206]["RemainTime"] = 60
	tThorMainlineActivity_Status[2206]["EndTime"] = 1
	tThorMainlineActivity_Status[2206]["AddLife"] = 1
	
	tThorMainlineActivity_Status[2207] = {}
	tThorMainlineActivity_Status[2207]["Status"] = {6,9}
	tThorMainlineActivity_Status[2207]["Power"] = 30000
	tThorMainlineActivity_Status[2207]["Secs"] = 60
	tThorMainlineActivity_Status[2207]["Times"] = 0
	tThorMainlineActivity_Status[2207]["RemainTime"] = 60
	tThorMainlineActivity_Status[2207]["EndTime"] = 1
	
local tThorMainlineActivity_Func = {}
	tThorMainlineActivity_Func[23657] = "ThorMainlineActivity_FindNpc</N>23670"
	tThorMainlineActivity_Func[23658] = "ThorMainlineActivity_FindNpc</N>4966"
	tThorMainlineActivity_Func[23659] = "ThorMainlineActivity_AddEffect</N>23659"
---------------------------------------------npc逻辑---------------------------------------

--自动寻路
function ThorMainlineActivity_FindNpc(nIndex)
	local nPosX = tThorMainlineActivity_Cont["Pos"][nIndex]["PosX"]
	local nPosY = tThorMainlineActivity_Cont["Pos"][nIndex]["PosY"]
	local nMapId = Get_UserMapId()
	local nNpcId = tThorMainlineActivity_Cont["Pos"][nIndex]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
		-- LinkNpcGossipFunc_New(nIndex,"1-1")
	if tThorMainlineActivity_Status[nIndex] ~= nil then
		ThorMainlineActivity_AddRStatus(nIndex)
	end
	
	if tThorMainlineActivity_Effect[nIndex] then
		User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[nIndex])
	end
end
--加buff
function ThorMainlineActivity_AddRStatus(nIndex)
	local nUserId = Get_UserId()
	
	for i = 1,#tThorMainlineActivity_Status[nIndex]["Status"] do
		local nStatus = tThorMainlineActivity_Status[nIndex]["Status"][i]
		local nPower =  tThorMainlineActivity_Status[nIndex]["Power"]
		local nSecs = tThorMainlineActivity_Status[nIndex]["Secs"]
		local nTimes = tThorMainlineActivity_Status[nIndex]["Times"]
		local nRemainTime = tThorMainlineActivity_Status[nIndex]["RemainTime"]
		local nEndTime = tThorMainlineActivity_Status[nIndex]["EndTime"]
		
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,0,0,0,nUserId)
	end
	if tThorMainlineActivity_Status[nIndex]["AddLife"] ~= nil then
		-- 获取玩家最大血量
		local nUserLife = Get_UserMaxLife()
		User_AddLife(nUserLife)
	end
	
	if tThorMainlineActivity_Effect[nIndex] ~= nil then
		User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[nIndex])
	end
	-- if tThorMainlineActivity_Text["TalkChannel"]["AddRStatus"][nIndex] ~= nil then
		-- Sys_MsgBox(tThorMainlineActivity_Text["TalkChannel"]["AddRStatus"][nIndex])
	-- end
	
end

--传送回双龙城
function ThorMainlineActivity_ChgBossMap(nClrStatus)
	local nUserId = Get_UserId()
	--是否删除buff
	if nClrStatus == 1 then
		for i = 1,#tThorMainlineActivity_ClrStatus["Status"] do
			local nStatus = tThorMainlineActivity_ClrStatus["Status"][i]
			if User_ChkRoleStatus(nStatus,nUserId) then
				User_DelRoleStatus(nStatus,nUserId)
			end
		end
	end

	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	local nMapId = tThorMainlineActivity_Cont["Map"][nIndex]["MapId"]
	local nPoX = tThorMainlineActivity_Cont["Map"][nIndex]["PosX"] 
	local nPoY = tThorMainlineActivity_Cont["Map"][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
	
	--是否播放漫画
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",5) then
		local nTitleId = tThorMainlineActivity_Cont["Cartoon"][4]
		User_NoviceTeaching(nTitleId,nUserId)
		
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FromChgMap"],"ThorMainlineActivity_ChkCompiseTask</N>23656","ThorMainlineActivity_ChkCompiseTask</N>23656",nUserId)
	end
	
end

--副本内传送
function ThorMainlineActivity_ChgInstanceMap(nIndex)
	local nMapId = Get_UserMapId()
	local nPoX = tThorMainlineActivity_Cont["ChgInstance"][nIndex]["PosX"] 
	local nPoY = tThorMainlineActivity_Cont["ChgInstance"][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
end

--检测职业，等级
function ThorMainlineActivity_ChkLevelAndPro()
	local nLevel = tThorMainlineActivity_Cont["Level"]
	local nMete = tThorMainlineActivity_Cont["Mete"]
	local nPro=Get_UserProfession()
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
			return true
		else
			return false
		end
	else
		return false
	end
	
end

--创建任务
function ThorMainlineActivity_AddTaskDetail(nTaskId)
	if Task_ChkTaskDetail(nTaskId) then
		
		return true
	end
	
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		
		return true
	else
		
		return false
	end
	
end
--进入副本
function ThorMainlineActivity_EnterInstancep()
	local nUserId = Get_UserId()
	if not ThorMainlineActivity_ChkLevelAndPro() then
		return
	end
	
	if Get_UserTeamNumbers(nUserId) >= 2 then
		Sys_MsgBox(tThorMainlineActivity_Text["MsgTeam"])
		return
	end
	
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",10) then
		return
	end
	
	
	
	local nTaskNum = Get_UserStatisticValue(nTaskEvent,nTaskType)
	local nInstanceId = tThorMainlineActivity_Cont["InstanceId"][nTaskNum]
	
	if nTaskNum == 0 then
		--创建任务
		local nTaskId = tThorMainlineActivity_Cont["TaskId"][1]
		if not ThorMainlineActivity_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	ThorMainlineActivity_ChgBossMap(0)
	
	if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
		if nTaskNum == 0 then
			local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
			local nType = tThorMainlineActivity_Stc[1]["DataType"]
			local nEvent5 = tThorMainlineActivity_Stc[5]["EventType"]
			local nType5 = tThorMainlineActivity_Stc[5]["DataType"]
			
			--创建npc
			ThorMainlineActivity_CreateNpc()
			
			local nData = Get_UserStatisticValue(nEvent,nType)
			if nData == 2 then 
				Task_SetStatistic(nEvent5,nType5,0,1)
				Task_SetStcTimestamp(nEvent5,nType5,0)
				--创建怪物
				for nMonsterId = 4961,4964 do
					ThorMainlineActivity_RefalshBoss(nMonsterId)
				end
			-- elseif nData == 1 then
				-- ThorMainlineActivity_CreateNpc()
			elseif nData == 3 then
				local nMonsterId1 = tThorMainlineActivity_Monster[4965]["Id"]
				ThorMainlineActivity_RefalshBoss(nMonsterId1)
			elseif nData == 0 then
				Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindNpc1"],"ThorMainlineActivity_FindNpc</N>23657","ThorMainlineActivity_FindNpc</N>23657",nUserId)
				User_TalkChannel2005(tThorMainlineActivity_Text["TalkChannel"]["GotoDominions"])
			end
		elseif nTaskNum == 1 then
			local nEvent2 = tThorMainlineActivity_Stc[2]["EventType"]
			local nType2 = tThorMainlineActivity_Stc[2]["DataType"]
			local nData2 = Get_UserStatisticValue(nEvent2,nType2)
			
			if nData2 == 2 then
				return
			end
			
			local nNextMonsterId = 0
			
			if nData2 == 1 then
				nNextMonsterId = tThorMainlineActivity_Monster[4966]["Id"]
			else
				nNextMonsterId = nData2 + 1
			end
			
			if nNextMonsterId ~= tThorMainlineActivity_Monster[4968]["Id"] then
				ThorMainlineActivity_RefalshBoss(nNextMonsterId)
			end
			
			if nNextMonsterId >=  tThorMainlineActivity_Monster[4968]["Id"] then
				for i = 1, 2 do
					local nMapId = Get_UserMapId()
					local nPosX = tThorMainlineActivity_MonsterNpc["Instance"][i]["PoxX"]
					local nPosY = tThorMainlineActivity_MonsterNpc["Instance"][i]["PoxY"]
					local sName = tThorMainlineActivity_Text["MonsterNpcName"][i]
					local nTask0 = tThorMainlineActivity_MonsterNpc["Task0"][i]
					local nLookface = tThorMainlineActivity_MonsterNpc["Lookface"][i]
					
					Npc_DelDynaNpc(nMapId, "name" , sName)
					Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
				end
			end
			
			
		elseif nTaskNum == 2 then
			local nEvent6 = tThorMainlineActivity_Stc[6]["EventType"]
			local nType6 = tThorMainlineActivity_Stc[6]["DataType"]
			
			if Task_ChkStcValue(nEvent6,nType6,">=",22) then
				return
			end
			
			Task_SetStatistic(nEvent6,nType6,0,1)
			Task_SetStcTimestamp(nEvent6,nType6,0)
			-- User_AddXp(tThorMainlineActivity_Cont["AddXp"])
			local nUserMapId =Get_UserMapId()
			local nMonsterId2 = tThorMainlineActivity_Cont["MonsterId"]
			for i,v in pairs(tThorMainlineActivity_Monster[4970]) do
				
				local nCellx = v[2]
				local nCelly = v[3]
				local nGenId = v[4]
				Monster_AddAndCount(nUserMapId,nCellx,nCelly,nGenId,nMonsterId2)
			end
			
			for nMonsterId3 = 4961,4964 do
				Map_CreateDynaGenerator(nUserMapId,255,205,15,15,7,2,2,nMonsterId3,0,0,nUserId)
				-- Map_CreateDynaGenerator(nUserMapId,287,230,30,30,6,1,25,nMonsterId3,0,0,nUserId)
			end
			
			Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["DecisiveBattle"],"User_AddXp</N>100","User_AddXp</N>100",nUserId)
			
		elseif nTaskNum == 3 then
			local nUserMapId = Get_UserMapId()
			local nMonsterId = tThorMainlineActivity_Monster[4971]["Id"]
			Monster_DelMonster(nUserMapId,nMonsterId)
			Monster_Death(nMonsterId,nUserMapId)
			ThorMainlineActivity_CreateInstanceNpc()
			ThorMainlineActivity_CreateMapTrap(2234)
			ThorMainlineActivity_AddRStatus(2205)
			
			for i = 1, 4 do
				local nPosX = tThorMainlineActivity_CheerNpc["Instance"][i]["PoxX"]
				local nPosY = tThorMainlineActivity_CheerNpc["Instance"][i]["PoxY"]
				local sName = tThorMainlineActivity_Text["CheerNpc"][i]
				local nLookface = tThorMainlineActivity_CheerNpc["Lookface"][i]
				Npc_DelDynaNpc(nUserMapId, "name" , sName)
				Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nUserMapId,nPosX,nPosY,0,0,0,0)
			end
			
		else
			local nMapId1 = Get_UserMapId()
			local nPosX1 = tThorMainlineActivity_Npc["Instance"]["PoxX"]
			local nPosY1 = tThorMainlineActivity_Npc["Instance"]["PoxY"]
			local sName1 = tThorMainlineActivity_Text["NpcName2"]
			local nTask01 = tThorMainlineActivity_Npc["Task0"]
			local nLookface1 = tThorMainlineActivity_Npc["Lookface"]
			
			Npc_DelDynaNpc(nMapId1, "name" , sName1)
			Npc_CreateDynaNpc(sName1,2,0,nLookface1,0,0,nMapId1,nPosX1,nPosY1,0,0,0,nTask01)
			
		end
		
		
	end
end

--创建怪物
function ThorMainlineActivity_RefalshBoss(nMonsterId)
	local nUserMapId = Get_UserMapId()
	
	-- local nMonsterId = tThorMainlineActivity_Monster[nMonsterId]["Id"]
	-- local nMapId = tThorMainlineActivity_Monster[nMonsterId]["MapId"]
	local nCellx = tThorMainlineActivity_Monster[nMonsterId]["Cellx"]
	local nCelly = tThorMainlineActivity_Monster[nMonsterId]["Celly"]
	local nGenId = tThorMainlineActivity_Monster[nMonsterId]["GenID"]
	Monster_DelMonster(nUserMapId,nMonsterId)
	Monster_Death(nMonsterId,nUserMapId)
	
	-- 刷新怪物
	Monster_AddAndCount(nUserMapId,nCellx,nCelly,nGenId,nMonsterId)
	
end

--创建动态npc
function ThorMainlineActivity_CreateInstanceNpc()
	
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tThorMainlineActivity_Cont["Npc"]["PoxX"]
	local nPosY = tThorMainlineActivity_Cont["Npc"]["PoxY"]
	local sName = tThorMainlineActivity_Text["NpcName"]
	local nTask0 = tThorMainlineActivity_Cont["Npc"]["Task0"]
	local nLookface = tThorMainlineActivity_Cont["Npc"]["Lookface"]
	
	Npc_DelDynaNpc(nMapId, "name" , sName)
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
	
end

--创建陷阱
function ThorMainlineActivity_CreateMapTrap(nIndex)
	if tThorMainlineActivity_Trap[nIndex]["TrapType"] ~= nil then
		for i = 1,#tThorMainlineActivity_EffectPosition[nIndex] do
			local nTrapType = tThorMainlineActivity_Trap[nIndex]["TrapType"]
			local nLook = tThorMainlineActivity_Trap[nIndex]["Look"]
			local nUserMapId = Get_UserMapId()
			local nPosX = tThorMainlineActivity_EffectPosition[nIndex][i]["PosX"]
			local nPosY = tThorMainlineActivity_EffectPosition[nIndex][i]["PosY"]
			local nCount = MoveTrap_GetCount(nTrapType)
			if nCount > #tThorMainlineActivity_EffectPosition[nIndex] then
				Trap_DelMapTrap(nUserMapId,nTrapType)
			end
			-- 创建陷阱
			Trap_CreateMapTrap(nTrapType,nLook,0,nUserMapId,nPosX,nPosY,0,0)
		end
	end
end

--检测任务4完成
function ThorMainlineActivity_ChkCompiseTask(nNpcId)
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",5) then
		return
	end
	
	ThorMainlineActivity_CompleteTask(nNpcId)
end

--完成任务
function ThorMainlineActivity_CompleteTask(nNpcId)
	
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",10) then
		return
	end
	
	
	
	--打开漫画4
	-- local nTitleId = tThorMainlineActivity_Cont["Cartoon"][4]
	
	--完成任务掩码置10
	Task_SetStatistic(nTaskEvent,nTaskType,10,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
	
	-- local nTaskId = tThorMainlineActivity_Cont["TaskId"][6]
	-- Task_SetTaskDetailCompleteFlag(nTaskId,1)
	-- Task_SetTaskDetailData6(nTaskId,1)
	
	local nUserId = Get_UserId()
	-- User_NoviceTeaching(nTitleId,nUserId)
	-- RewardTemplate_Reward(tThorMainlineActivity_RewandItem["Award"])
end

--Npc检测掩码寻路
function ThorMainlineActivity_ChkStcGotoNpc()
	
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	local nTaskNum = Get_UserStatisticValue(nTaskEvent,nTaskType)
	
	if nTaskNum == 0 then
		local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
		local nType = tThorMainlineActivity_Stc[1]["DataType"]
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			ThorMainlineActivity_FindNpc(2)
		else
			ThorMainlineActivity_FindNpc(23657)
		end
		
	elseif nTaskNum == 1 then
		
		local nEvent2 = tThorMainlineActivity_Stc[2]["EventType"]
		local nType2 = tThorMainlineActivity_Stc[2]["DataType"]
		
		if Task_ChkStcValue(nEvent2,nType2,"==",0) then
			ThorMainlineActivity_FindNpc(23658)
		else
			ThorMainlineActivity_FindNpc(4967)
		end
		
	end
	
end

--前置任务是否完成
function ThorMainlineActivity_ChkAcceptedTask(nNpcId,nTaskStage)
	local nUserId = Get_UserId()
	local nEvent6 = tThorMainlineActivity_Stc[6]["EventType"]
	local nType6 = tThorMainlineActivity_Stc[6]["DataType"]
	
	if not Task_ChkStcValue(nEvent6,nType6,">=",22) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	ThorMainlineActivity_AcceptedTask(nNpcId,nTaskStage)
end
--接受任务
function ThorMainlineActivity_AcceptedTask(nNpcId,nTaskStage)
	local nUserId = Get_UserId()
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	-- local nTaskStage = tThorMainlineActivity_Cont["TaskStage"][nNpcId]
	
	local nEvent = tThorMainlineActivity_Stc[nTaskStage]["EventType"]
	local nType = tThorMainlineActivity_Stc[nTaskStage]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",10) then
		return
	end
	
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		ThorMainlineActivity_ChkStcGotoNpc()
		return
	end
	
	-- 前置任务是否完成
	local nBefTaskStage = nTaskStage - 1
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",nBefTaskStage) then
		return
	end
	
	--接受任务打任务阶段掩码
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	
	local nTaskNum = tThorMainlineActivity_NpcTaskNum[nNpcId]
	local nBefTaskId = tThorMainlineActivity_Cont["TaskId"][nTaskNum-1]
	local nNexTaskId = tThorMainlineActivity_Cont["TaskId"][nTaskNum]
	
	--完成任务前置任务   并接受下一个任务
	Task_SetTaskDetailData6(nBefTaskId,1)
	Task_SetTaskDetailCompleteFlag(nBefTaskId,1)
	
	if not ThorMainlineActivity_AddTaskDetail(nNexTaskId) then
		return
	end
	
	if tThorMainlineActivity_Cont["ChgInstance"][nNpcId] ~= nil then
		ThorMainlineActivity_ChgInstanceMap(nNpcId)
	end
	
	if nNpcId == 23657 then
		ThorMainlineActivity_FindNpc(3)
	elseif nNpcId == 23658 then
		ThorMainlineActivity_FindMonster(nNpcId)
	end
	
	if tThorMainlineActivity_Func[nNpcId] ~= nil then
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["Npc"][nNpcId],tThorMainlineActivity_Func[nNpcId],tThorMainlineActivity_Func[nNpcId],nUserId)
	-- else
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
	--打开漫画
	local nTitleId = tThorMainlineActivity_Cont["Cartoon"][nTaskStage]
	User_NoviceTeaching(nTitleId,nUserId)
	--获得奖励
	
	
	if tThorMainlineActivity_RewandItem[nNpcId] ~= nil then
		if SpecialServer_ChkNoGiftServer() then
			RewardTemplate_Reward(tThorMainlineActivity_NoGiftRewandItem[nNpcId])
		else
			RewardTemplate_Reward(tThorMainlineActivity_RewandItem[nNpcId])
		end
	end
	
	--创建地面光效
	if tThorMainlineActivity_MapEffect[nNpcId] ~= nil then
		for i = 1,#tThorMainlineActivity_EffectPosition[nNpcId] do
			
			local sEffect = tThorMainlineActivity_MapEffect[nNpcId]
			local nUserMapId = Get_UserMapId()
			local nPosX = tThorMainlineActivity_EffectPosition[nNpcId][i]["PosX"]
			local nPosY = tThorMainlineActivity_EffectPosition[nNpcId][i]["PosY"]
			Map_Effect(nUserMapId,nPosX,nPosY,sEffect)
			
		end
		-- User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[nNpcId])
	end
	
	
	
end

--创建npc
function ThorMainlineActivity_CreateNpc()
	local nEvent4 = tThorMainlineActivity_Stc[4]["EventType"]
	local nType4 = tThorMainlineActivity_Stc[4]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent4,nType4)
	
	for i = 1, 4 do
		
		if not Sys_ParseNumbersContain(2^(i-1),nValue) then
			--+已打开对白
			
			local nMapId = Get_UserMapId()
			local nPosX = tThorMainlineActivity_Cont["Instance"][i]["PoxX"]
			local nPosY = tThorMainlineActivity_Cont["Instance"][i]["PoxY"]
			local sName = tThorMainlineActivity_Text["NpcName1"][i]
			local nTask0 = tThorMainlineActivity_Cont["Task0"][i]
			local nLookface = tThorMainlineActivity_Cont["Lookface"]
			
			Npc_DelDynaNpc(nMapId, "name" , sName)
			Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		end
		
	end
end
--伤亡士兵
function ThorMainlineActivity_GotoFindNpc(nNpcId,nStcData)

	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
	local nType = tThorMainlineActivity_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",1) then
		return true
	end

	local nEvent4 = tThorMainlineActivity_Stc[4]["EventType"]
	local nType4 = tThorMainlineActivity_Stc[4]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent4,nType4)
	
	if not Sys_ParseNumbersContain(nStcData,nValue) then
		nValue = nValue + nStcData
		Task_SetStatistic(nEvent4,nType4,nValue,1)
		Task_SetStcTimestamp(nEvent4,nType4,0)
		
		
		local sEffect = tThorMainlineActivity_MapEffect[23670]
		local nNum = tThorMainlineActivity_Cont["NumChg"][nStcData]
		local sName = tThorMainlineActivity_Text["NpcName1"][nNum]
		local nUserMapId = Get_UserMapId()
		local nPosX = tThorMainlineActivity_Cont["Instance"][nNum]["PoxX"]
		local nPosY = tThorMainlineActivity_Cont["Instance"][nNum]["PoxY"]
		
		Npc_DelDynaNpc(nUserMapId, "name" , sName)
		
		Map_Effect(nUserMapId,nPosX,nPosY,sEffect)
		
	end
	for i = 1,4 do
		if not Sys_ParseNumbersContain(2^(i-1),nValue) then
			ThorMainlineActivity_FindNpc(nNpcId)
			return
		end
	end
	
	Task_SetStatistic(nEvent,nType,2,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	-- User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[2])
	--创建怪物
	for nMonsterId = 4961,4964 do
		ThorMainlineActivity_RefalshBoss(nMonsterId)
	end
	
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindMonster"])

end

-- 检测惨死npc
function ThorMainlineActivity_Woundcheck(nStcData)
	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
	local nType = tThorMainlineActivity_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",1) then
		return true
	end

	local nEvent4 = tThorMainlineActivity_Stc[4]["EventType"]
	local nType4 = tThorMainlineActivity_Stc[4]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent4,nType4)
	
	local nNum = 0
	for i = 1,4 do
		if Sys_ParseNumbersContain(2^(i-1),nValue) then
			nNum = nNum + 1
		end
	end
	
	if nNum < 2 then
		return true
	else
		Task_SetStatistic(nEvent,nType,2,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		for i = 1,4 do
			if not Sys_ParseNumbersContain(2^(i-1),nValue) then
				nValue = nValue + 2^(i-1)
				Task_SetStatistic(nEvent4,nType4,nValue,1)
				Task_SetStcTimestamp(nEvent4,nType4,0)
				
				
				local sEffect = tThorMainlineActivity_MapEffect[23670]
				-- local nNumChg = tThorMainlineActivity_Cont["NumChg"][i]
				local sName = tThorMainlineActivity_Text["NpcName1"][i]
				local nUserMapId = Get_UserMapId()
				local nPosX = tThorMainlineActivity_Cont["Instance"][i]["PoxX"]
				local nPosY = tThorMainlineActivity_Cont["Instance"][i]["PoxY"]
				
				Npc_DelDynaNpc(nUserMapId, "name" , sName)
				Map_Effect(nUserMapId,nPosX,nPosY,sEffect)
				--
				Map_ChangeLight(nUserMapId,tThorMainlineActivity_Cont["LigthColor"])
			end
		end
		
		--创建怪物
		for nMonsterId = 4961,4964 do
			ThorMainlineActivity_RefalshBoss(nMonsterId)
		end
		
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindMonster"])
		
		return false
	end
	
end

function ThorMainlineActivity_AddEffect(nNpcId)
	-- 播放关效
	--
	User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[23655])
	User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[10000])
	--打开npc对白
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

--
function ThorMainlineActivity_FindMonster(nNpcId)

	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[2]["EventType"]
	local nType = tThorMainlineActivity_Stc[2]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",1) then
		return true
	end
	
	local nMonsterId1 = tThorMainlineActivity_Monster[4966]["Id"]
	ThorMainlineActivity_RefalshBoss(nMonsterId1)
	-- ThorMainlineActivity_FindNpc(4966)
end

--进入冥殿
function ThorMainlineActivity_EnterHadesInstancep()
	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[3]["EventType"]
	local nType = tThorMainlineActivity_Stc[3]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",1) then
		return true
	end
	
	local nInstanceId = tThorMainlineActivity_Cont["InstanceId"][3]
	
	ThorMainlineActivity_ChgBossMap(0)
	
	if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
		local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
		local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
		
		Task_SetStatistic(nTaskEvent,nTaskType,3,1)
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
		--创建npc
		ThorMainlineActivity_CreateInstanceNpc()
		ThorMainlineActivity_CreateMapTrap(2234)
		
		--添加buff
		ThorMainlineActivity_AddRStatus(2205)
		
		for i = 1, 4 do
			local nUserMapId = Get_UserMapId()
			local nPosX = tThorMainlineActivity_CheerNpc["Instance"][i]["PoxX"]
			local nPosY = tThorMainlineActivity_CheerNpc["Instance"][i]["PoxY"]
			local sName = tThorMainlineActivity_Text["CheerNpc"][i]
			local nLookface = tThorMainlineActivity_CheerNpc["Lookface"][i]
			Npc_DelDynaNpc(nUserMapId, "name" , sName)
			Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nUserMapId,nPosX,nPosY,0,0,0,0)
		end
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindBoss"],"ThorMainlineActivity_FindNpc</N>23674","ThorMainlineActivity_FindNpc</N>23674",nUserId)
		
		
	end
	
end
--npc接入
function ThorMainlineActivity_NpcMain(nNpcId)
	if not ThorMainlineActivity_ChkLevelAndPro() then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function ThorMainlineActivity_NpcMsg()
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindNpc3"])
end

--召唤冥王
function ThorMainlineActivity_CallHades(nNpcId)
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",3) then
		return true
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local sName = tThorMainlineActivity_Text["NpcName"]
	
	Npc_DelDynaNpc(nMapId, "name" , sName)
	
	local nMonsterId = tThorMainlineActivity_Monster[4971]["Id"]
	ThorMainlineActivity_RefalshBoss(nMonsterId)
	
	--屏幕效果
	User_Screffect(1)
	
	--删除地效
	local nTrapType = tThorMainlineActivity_Trap[2234]["TrapType"]
	local nLook = tThorMainlineActivity_Trap[2234]["Look"]
	local nUserMapId = Get_UserMapId()
	local nCount = MoveTrap_GetCount(nTrapType)
	if nCount >0 then
		Trap_DelMapTrap(nUserMapId,nTrapType)
	end
	
	--播放陷阱地效
	ThorMainlineActivity_CreateMapTrap(nMonsterId)
	
	for i = 1, 4 do
		
		local sName = tThorMainlineActivity_Text["CheerNpc"][i]
		Npc_DelDynaNpc(nUserMapId, "name" , sName)
		
	end
	
	-- if tThorMainlineActivity_Trap[nMonsterId]["TrapType"] ~= nil then
		-- for i = 1,#tThorMainlineActivity_EffectPosition[nMonsterId] do
			-- local nTrapType = tThorMainlineActivity_Trap[nMonsterId]["TrapType"]
			-- local nLook = tThorMainlineActivity_Trap[nMonsterId]["Look"]
			-- local nUserMapId = Get_UserMapId()
			-- local nPosX = tThorMainlineActivity_EffectPosition[nMonsterId][i]["PosX"]
			-- local nPosY = tThorMainlineActivity_EffectPosition[nMonsterId][i]["PosY"]
			-- local nCount = MoveTrap_GetCount(nTrapType)
			-- if nCount > #tThorMainlineActivity_EffectPosition[nMonsterId] then
				-- Trap_DelMapTrap(nUserMapId,nTrapType)
			-- end
			-- -- 创建陷阱
			-- Trap_CreateMapTrap(nTrapType,nLook,0,nUserMapId,nPosX,nPosY,0,0)
		-- end
	-- end
	
end

--
function ThorMainlineActivity_RefalshAndFind(nMonsterId)
	
	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[2]["EventType"]
	local nType = tThorMainlineActivity_Stc[2]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,">",0) then
		return
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",2) then
		return
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",nMonsterId) then
		return
	end
	
	Task_SetStatistic(nEvent,nType,nMonsterId,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--记入任务码
	local nBefTaskId = tThorMainlineActivity_Cont["TaskId"][4]
	Task_SetTaskDetailData6(nBefTaskId,3)
	
	local nNextMonsterId = nMonsterId + 1
	
	ThorMainlineActivity_RefalshBoss(nNextMonsterId)
	ThorMainlineActivity_FindNpc(nNextMonsterId)
end

--打开宝箱
function ThorMainlineActivity_OpenBox(nNpcId)

	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	--是否杀死冥王
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",4) then
		return true
	end
	--检测背包空间
	-- local nSpace = RewardTemplate_GetRewardSpace(tThorMainlineActivity_RewandItem[23713])
	-- if not User_CheckLeftSpace(nSpace) then
		-- User_TalkChannel2005(string.format(tThorMainlineActivity_Text["MsgSpace"]))
		-- return 
	-- end
	--打掩码
	Task_SetStatistic(nTaskEvent,nTaskType,5,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
	--删除npc
	local nMapId = Get_UserMapId()
	local sName = tThorMainlineActivity_Text["NpcName2"]
	Npc_DelDynaNpc(nMapId, "name" , sName)
	
	-- RewardTemplate_UseItemAndMsg(tThorMainlineActivity_RewandItem[23713])
	
	-- ThorMainlineActivity_ChgBossMap(1)
	-- Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FromChgMap"])
	
	
	for i = 1, #tThorMainlineActivity_EffectPosition[nNpcId] do
		local nUserMapId = Get_UserMapId()
		local nPosX = tThorMainlineActivity_EffectPosition[nNpcId][i]["PosX"]
		local nPosY = tThorMainlineActivity_EffectPosition[nNpcId][i]["PosY"]
		local nItemId = tThorMainlineActivity_Rewand["ItemId"][i]
		Map_DropItem(nUserMapId,nPosX, nPosY, nItemId)
	end
	
	-- 播放关效
	-- if tThorMainlineActivity_Effect[nNpcId] then
		-- User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[nNpcId])
	-- end
	
	-- 创建陷阱
	ThorMainlineActivity_CreateMapTrap(nNpcId)
	ThorMainlineActivity_CreateMapTrap(2234)
	ThorMainlineActivity_CreateMapTrap(2272)
	
	
end



-------------------------------------------怪物逻辑-----------------------------------
function ThorMainlineActivity_KillMonster(nMonsterId)
	
	local nUserMapId = Get_UserMapId()
	local nUserId = Get_UserId()
	if not (Get_MapDoc(nUserMapId) == 1012) then
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["KillMinMonster"],"ThorMainlineActivity_ChgInstanceMap</N>23659","ThorMainlineActivity_ChgInstanceMap</N>23659",nUserId)
		return
	end
	
	Monster_Death(nMonsterId,nUserMapId)
	
	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
	local nType = tThorMainlineActivity_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",2) then
		return
	end
	
	local nEvent5 = tThorMainlineActivity_Stc[5]["EventType"]
	local nType5 = tThorMainlineActivity_Stc[5]["DataType"]
	
	local nValue = Get_UserStatisticValue(nEvent5,nType5)
	local nStcData = tThorMainlineActivity_Cont["MonsterStc"][nMonsterId]
	
	if not Sys_ParseNumbersContain(nStcData,nValue) then
		nValue = nValue + nStcData
		Task_SetStatistic(nEvent5,nType5,nValue,1)
		Task_SetStcTimestamp(nEvent5,nType5,0)
	end
	
	for i = 1,4 do
		if not Sys_ParseNumbersContain(2^(i-1),nValue) then
			return 
		end
	end
	Task_SetStatistic(nEvent,nType,3,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["MonsterGuard"])
	local nMonsterId1 = tThorMainlineActivity_Monster[4965]["Id"]
	ThorMainlineActivity_RefalshBoss(nMonsterId1)
	User_Screffect(1)
	
end
--杀死冥王护卫
function ThorMainlineActivity_KillMonsterGuard(nMonsterId)
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
	local nType = tThorMainlineActivity_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",3) then
		return
	end
	
	Task_SetStatistic(nEvent,nType,4,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	
	Task_SetStatistic(nTaskEvent,nTaskType,1,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
	
	local nBefTaskId = tThorMainlineActivity_Cont["TaskId"][2]
	local nNexTaskId = tThorMainlineActivity_Cont["TaskId"][3]
	Task_SetTaskDetailData6(nBefTaskId,1)
	Task_SetTaskDetailCompleteFlag(nBefTaskId,1)
	if not ThorMainlineActivity_AddTaskDetail(nNexTaskId) then
		return
	end
	
	User_EffectAdd(tThorMainlineActivity_KillEffect[1],tThorMainlineActivity_KillEffect[nMonsterId])
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindNpc"],"ThorMainlineActivity_FindNpc</N>23658","ThorMainlineActivity_FindNpc</N>23658",nUserId)
	
	if tThorMainlineActivity_RewandItem[nMonsterId] ~= nil then
		RewardTemplate_Reward(tThorMainlineActivity_RewandItem[nMonsterId])
	end
	
	if tThorMainlineActivity_MapEffect[nMonsterId] ~= nil then
		for i = 1,#tThorMainlineActivity_EffectPosition[nMonsterId] do
			
			local sEffect = tThorMainlineActivity_MapEffect[nMonsterId]
			local nPosX = tThorMainlineActivity_EffectPosition[nMonsterId][i]["PosX"]
			local nPosY = tThorMainlineActivity_EffectPosition[nMonsterId][i]["PosY"]
			Map_Effect(nUserMapId,nPosX,nPosY,sEffect)
			
		end
		-- User_EffectAdd(tThorMainlineActivity_Effect[1],tThorMainlineActivity_Effect[nNpcId])
	end
	
end

--4只首领
function ThorMainlineActivity_KillMonsterLeader(nMonsterId)
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	local nUserId = Get_UserId()
	local nEvent = tThorMainlineActivity_Stc[2]["EventType"]
	local nType = tThorMainlineActivity_Stc[2]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,">",0) then
		return
	end
	--任务是否已完成
	if Task_ChkStcValue(nEvent,nType,"==",2) then
		return
	end
	--记入杀死首领id
	Task_SetStatistic(nEvent,nType,nMonsterId,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--播放关效
	-- User_EffectAdd(tThorMainlineActivity_KillEffect[1],tThorMainlineActivity_KillEffect[nMonsterId])
	local sEffect = tThorMainlineActivity_KillEffect[nMonsterId]
	-- local nMonsterMapID = Get_MonsterMapID(nMonsterId)
	local nMonsterPosX = tThorMainlineActivity_Monster[nMonsterId]["Cellx"]
	local nMonsterPosY = tThorMainlineActivity_Monster[nMonsterId]["Celly"]
	
	
	Map_Effect(nUserMapId,nMonsterPosX,nMonsterPosY,sEffect)
	
	--是否为最后一个首领
	if nMonsterId == tThorMainlineActivity_Monster[4969]["Id"] then

		local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
		local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
		--记入任务阶段
		Task_SetStatistic(nTaskEvent,nTaskType,2,1)
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
		--任务阶段完成
		Task_SetStatistic(nEvent,nType,2,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local nBefTaskId = tThorMainlineActivity_Cont["TaskId"][4]
		local nNexTaskId = tThorMainlineActivity_Cont["TaskId"][5]
		Task_SetTaskDetailData6(nBefTaskId,4)
		Task_SetTaskDetailCompleteFlag(nBefTaskId,1)
		if not ThorMainlineActivity_AddTaskDetail(nNexTaskId) then
			return
		end
		
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["KillMonster"][nMonsterId],"ThorMainlineActivity_EnterInstancep","ThorMainlineActivity_EnterInstancep",nUserId)
	--杀死第二个首领，创建npc
	elseif nMonsterId == 4967 then
		
		local nNextMonsterId1 = nMonsterId + 1
		for i = 1, 2 do
			--+已打开对白
			local nMapId = Get_UserMapId()
			local nPosX = tThorMainlineActivity_MonsterNpc["Instance"][i]["PoxX"]
			local nPosY = tThorMainlineActivity_MonsterNpc["Instance"][i]["PoxY"]
			local sName = tThorMainlineActivity_Text["MonsterNpcName"][i]
			local nTask0 = tThorMainlineActivity_MonsterNpc["Task0"][i]
			local nLookface = tThorMainlineActivity_MonsterNpc["Lookface"][i]
			
			Npc_DelDynaNpc(nMapId, "name" , sName)
			Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		end
		
		local nBefTaskId = tThorMainlineActivity_Cont["TaskId"][4]
		Task_SetTaskDetailData6(nBefTaskId,2)
		
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["KillMonster"][nMonsterId],"ThorMainlineActivity_FindNpc</N>" .. nNextMonsterId1,"ThorMainlineActivity_FindNpc</N>" .. nNextMonsterId1,nUserId)
	--创建下一个首领
	else
		local nNextMonsterId = nMonsterId + 1
		
		local nBefTaskId = tThorMainlineActivity_Cont["TaskId"][4]
		Task_SetTaskDetailData6(nBefTaskId,1)
		--播放关效
		local sEffect1 = tThorMainlineActivity_KillEffect[1000]
		-- local nMonsterMapID = Get_MonsterMapID(nMonsterId)
		
		Map_Effect(nUserMapId,nMonsterPosX,nMonsterPosY,sEffect1)
		
		ThorMainlineActivity_RefalshBoss(nNextMonsterId)
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["KillMonster"][nMonsterId],"ThorMainlineActivity_FindNpc</N>" .. nNextMonsterId,"ThorMainlineActivity_FindNpc</N>" .. nNextMonsterId,nUserId)
		
		
	end
end


--冥府死士
function ThorMainlineActivity_KillNolMonster(nMonsterId)
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	local nUserId = Get_UserId()
	local nEvent6 = tThorMainlineActivity_Stc[6]["EventType"]
	local nType6 = tThorMainlineActivity_Stc[6]["DataType"]
	
	if Task_ChkStcValue(nEvent6,nType6,">=",22) then
		return
	end
	
	Task_AddStatistic(nEvent6,nType6,1,1)
	Task_SetStcTimestamp(nEvent6,nType6,0)
	
	
	
	if Task_ChkStcValue(nEvent6,nType6,">=",22) then
		Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FindNpc2"],"ThorMainlineActivity_FindNpc</N>23659","ThorMainlineActivity_FindNpc</N>23659",nUserId)
	else
		User_TalkChannel2005(tThorMainlineActivity_Text["TalkChannel"]["KillMinMonster"])
	end
	
	
end
--杀死冥王
function ThorMainlineActivity_KillBoss(nMonsterId)
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",3) then
		return true
	end
	
	Task_SetStatistic(nTaskEvent,nTaskType,4,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
	--删除地效
	if tThorMainlineActivity_Trap[nMonsterId]["TrapType"] ~= nil then
			local nTrapType = tThorMainlineActivity_Trap[nMonsterId]["TrapType"]
			local nCount = MoveTrap_GetCount(nTrapType)
			if nCount > 0 then
				Trap_DelMapTrap(nUserMapId,nTrapType)
			end
			
	end
	--设置任务掩码
	local nTaskId = tThorMainlineActivity_Cont["TaskId"][6]
	Task_SetTaskDetailData6(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)

	--创建宝箱
	local nPosX = tThorMainlineActivity_Npc["Instance"]["PoxX"]
	local nPosY = tThorMainlineActivity_Npc["Instance"]["PoxY"]
	local sName = tThorMainlineActivity_Text["NpcName2"]
	local nTask0 = tThorMainlineActivity_Npc["Task0"]
	local nLookface = tThorMainlineActivity_Npc["Lookface"]
	Npc_DelDynaNpc(nUserMapId, "name" , sName)
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nUserMapId,nPosX,nPosY,0,0,0,nTask0)
	
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["ChgMap"])
	
end
-------------------------------------------上线逻辑------------------------------
--上线触发
function ThorMainlineActivity_LogIn()
	local nLevel = tThorMainlineActivity_Cont["Level"]
	local nMete = tThorMainlineActivity_Cont["Mete"]
	local nPro=Get_UserProfession()
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return 
	end
	
	if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
		return
	end
	
	
	local nTaskEvent = tThorMainlineActivity_Stc[7]["EventType"]
	local nTaskType = tThorMainlineActivity_Stc[7]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",1) then
		return 
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tThorMainlineActivity_RewandItem["RewandItem"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tThorMainlineActivity_Text["MsgSpace"]))
		return 
	end
	
	-- local nTaskId = tThorMainlineActivity_Cont["TaskId"]
	-- Task_SetTaskDetailData6(nTaskId,1)
	
	Task_SetStatistic(nTaskEvent,nTaskType,1,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
	RewardTemplate_UseItemAndMsg(tThorMainlineActivity_RewandItem["RewandItem"])
	
end


------------------------------------------物品逻辑--------------------------------
function ThorMainlineActivity_UseBackLetter(nItemId,nNpcId)
	NpcPosition_PathFind(nNpcId)
	RewardTemplate_UseItemAndMsg(tThorMainlineActivity_RewandItem[nItemId])
end


------------------------------------------陷阱逻辑------------------------------------
--
function ThorMainlineActivity_TrapFromChg(nTrapId)
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["TrapChgMap"],"ThorMainlineActivity_ChgInstanceMap</N>" .. nTrapId,"ThorMainlineActivity_ChgInstanceMap</N>" .. nTrapId,nUserId)
end



--------------------------------------陷阱模块-------------------------------------------
tTrap[2227]= tTrap[2227] or {}
tTrap[2227]["Function"] = function (nTrapId,nTrapType)
	ThorMainlineActivity_TrapFromChg(nTrapType)
end

tTrap[2204]= tTrap[2204] or {}
tTrap[2204]["Function"] = function (nTrapId,nTrapType)
	ThorMainlineActivity_AddRStatus(nTrapType)
end

tTrap[2205]= tTrap[2204] or {}
tTrap[2206]= tTrap[2204] or {}
tTrap[2207]= tTrap[2204] or {}

tTrap[2238]= tTrap[2238] or {}
tTrap[2238]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["TrapFromMap"],"ThorMainlineActivity_ChgBossMap</N>1","NULL",nUserId)
end

tTrap[2272]= tTrap[2272] or {}
tTrap[2272]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["FromMap"],"ThorMainlineActivity_ChgBossMap</N>1","NULL",nUserId)
end

tTrap[2282]= tTrap[2282] or {}
tTrap[2282]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tThorMainlineActivity_Text["MsgBox"]["Trap"][nTrapType])
end
tTrap[2283]= tTrap[2282] or {}
-------------------------------------------npc模板------------------------------------
tNpcFace[1472] = 14
tNpcFace[1483] = 1805
tNpcFace[6440] = 86
tNpcFace[6441] = 2063
tNpcFace[6442] = 2064
tNpcFace[6443] = 2065
tNpcFace[6444] = 2066
tNpcFace[6445] = 206
tNpcFace[6446] = 2067
tNpcFace[6447] = 122
tNpcFace[6448] = 76
tNpcFace[6449] = 77
tNpcFace[6450] = 62
tNpcFace[6467] = 206
tNpcFace[6468] = 206
tNpcFace[6469] = 206
tNpcFace[6471] = 137
-- tNpcGossip[23655] = tNpcGossip[23655] or DefaultNpc:new{}
-- tNpcGossip[23655]["OptionHidden"] = 1
-- tNpcGossip[23655]["DialogueText"] = tThorMainlineActivity_Text[23655]

-- tNpcGossip[23655]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[23655]["tOption1-1"] = {111}
-- tNpcGossip[23655]["OptionFunc111"] = "ThorMainlineActivity_CompleteTask</N>23655"
-- tNpcGossip[23655]["ChkFunc1-1"] = function ()
	-- local nLevel = tThorMainlineActivity_Cont["Level"]
	-- local nMete = tThorMainlineActivity_Cont["Mete"]
	-- local nPro=Get_UserProfession()
	-- if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		-- if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
			-- return false
		-- else
			-- return true
		-- end
	-- else
		-- return false
	-- end
-- end

tNpcGossip[23656] = tNpcGossip[23656] or DefaultNpc:new{}
tNpcGossip[23656]["OptionHidden"] = 1
tNpcGossip[23656]["DialogueText"] = tThorMainlineActivity_Text[23656]
-- 
tNpcGossip[23656]["Text1-1"] = {111,112,113,114}
tNpcGossip[23656]["tOption1-1"] = {111}
tNpcGossip[23656]["ChkFunc1-1"] = function ()
	
	local nPro=Get_UserProfession()
	if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
		return false
	else
		return true
	end
end


tNpcGossip[23656]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23656]["tOption1-2"] = {121}
tNpcGossip[23656]["ChkFunc1-2"] = function ()
	local nLevel = tThorMainlineActivity_Cont["Level"]
	local nMete = tThorMainlineActivity_Cont["Mete"]
	local nPro=Get_UserProfession()
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
			return true
		else
			return false
		end
	else
		return false
	end
end


tNpcGossip[23656]["Text1-3"] = {131,132,133,134}
tNpcGossip[23656]["tOption1-3"] = {131}
tNpcGossip[23656]["OptionFunc131"] = "ThorMainlineActivity_EnterInstancep"
tNpcGossip[23656]["ChkFunc1-3"] = function ()
	local nLevel = tThorMainlineActivity_Cont["Level"]
	local nMete = tThorMainlineActivity_Cont["Mete"]
	local nPro=Get_UserProfession()
	if  User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
			
			
			local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
			local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
			
			if not Task_ChkStcValue(nTaskEvent,nTaskType,">=",5) then
				return true
			end
			
			return false
		else
			return false
		end
	else
		return false
	end
end

-- 活动中
tNpcGossip[23656]["Text1-4"] = {211,212,213}
tNpcGossip[23656]["tOption1-4"] = {211}
-- tNpcGossip[23656]["OptionPoint141"]="2-1"
tNpcGossip[23656]["OptionFunc211"] = "ThorMainlineActivity_ChkCompiseTask</N>23656"
tNpcGossip[23656]["ChkFunc1-4"] = function ()
	local nLevel = tThorMainlineActivity_Cont["Level"]
	local nMete = tThorMainlineActivity_Cont["Mete"]
	local nPro=Get_UserProfession()
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
			
			local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
			local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
			
			if Task_ChkStcValue(nTaskEvent,nTaskType,">=",5) then
				return true
			end
			
			return false
		else
			return false
		end
	else
		return false
	end
end

-- tNpcGossip[23656]["Text2-1"] = {211,212,213}
-- tNpcGossip[23656]["tOption2-1"] = {211}
-- tNpcGossip[23656]["OptionFunc211"] = "ThorMainlineActivity_ChkCompiseTask</N>23656"
-- tNpcGossip[23656]["ChkFunc2-1"] = function ()
	-- local nLevel = tThorMainlineActivity_Cont["Level"]
	-- local nMete = tThorMainlineActivity_Cont["Mete"]
	-- local nPro=Get_UserProfession()
	-- if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		-- if nPro>=tThorMainlineActivity_Cont["MinPro"] and nPro <= tThorMainlineActivity_Cont["MaxPro"] then
			
			-- local nTaskEvent = tThorMainlineActivity_Stc["TaskStag"]["EventType"]
			-- local nTaskType = tThorMainlineActivity_Stc["TaskStag"]["DataType"]
			
			-- if Task_ChkStcValue(nTaskEvent,nTaskType,">=",5) then
				-- return true
			-- end
			
			-- return false
		-- else
			-- return false
		-- end
	-- else
		-- return false
	-- end
-- end


tNpcGossip[23657] = tNpcGossip[23657] or DefaultNpc:new{}
tNpcGossip[23657]["OptionHidden"] = 1
tNpcGossip[23657]["DialogueText"] = tThorMainlineActivity_Text[23657]

tNpcGossip[23657]["Text1-1"] = {111,112,113,114}
tNpcGossip[23657]["tOption1-1"] = {111}
tNpcGossip[23657]["OptionPoint111"]="1-2"
-- tNpcGossip[23657]["OptionFunc111"] = "ThorMainlineActivity_AcceptedTask</N>23657</N>1"
tNpcGossip[23657]["ChkFunc1-1"] = function ()

	if ThorMainlineActivity_ChkLevelAndPro() then
		
		-- local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
		-- local nType = tThorMainlineActivity_Stc[1]["DataType"]
		-- --完成阶段1任务
		-- if Task_ChkStcValue(nEvent,nType,"==",4) then
			-- return true
		-- end
		-- --未接任务
		-- if Task_ChkStcValue(nEvent,nType,"==",0) then
			-- return true
		-- else
			-- return false
		-- end
		return true
	else
		return false
	end
end

tNpcGossip[23657]["Text1-2"] = {121,122,123}
tNpcGossip[23657]["tOption1-2"] = {121}
tNpcGossip[23657]["OptionFunc121"] = "ThorMainlineActivity_AcceptedTask</N>23657</N>1"
tNpcGossip[23657]["ChkFunc1-2"] = function ()
	if ThorMainlineActivity_ChkLevelAndPro() then
		local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
		local nType = tThorMainlineActivity_Stc[1]["DataType"]
		--完成阶段1任务
		-- if Task_ChkStcValue(nEvent,nType,"==",4) then
			-- return true
		-- end
		--未接任务
		-- if Task_ChkStcValue(nEvent,nType,"==",0) then
			-- return true
		-- else
			-- return false
		-- end
		return true
	else
		return false
	end
end

-- tNpcGossip[23657]["Text1-3"] = {111,112,113,114}
-- tNpcGossip[23657]["tOption1-3"] = {111}
-- tNpcGossip[23657]["ChkFunc1-3"] = function ()
	-- if ThorMainlineActivity_ChkLevelAndPro() then
		-- local nEvent = tThorMainlineActivity_Stc[1]["EventType"]
		-- local nType = tThorMainlineActivity_Stc[1]["DataType"]
		-- if Task_ChkStcValue(nEvent,nType,">",1) then
			-- return true
		-- else
			-- return false
		-- end
	-- else
		-- return false
	-- end
-- end

tNpcGossip[23658] = tNpcGossip[23658] or DefaultNpc:new{}
tNpcGossip[23658]["OptionHidden"] = 1
tNpcGossip[23658]["DialogueText"] = tThorMainlineActivity_Text[23658]

tNpcGossip[23658]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23658]["tOption1-1"] = {111}
tNpcGossip[23658]["OptionPoint111"]="1-2"
-- tNpcGossip[23658]["OptionFunc111"] = "ThorMainlineActivity_AcceptedTask</N>23658</N>2"
tNpcGossip[23658]["ChkFunc1-1"] = function ()

	if ThorMainlineActivity_ChkLevelAndPro() then
		-- local nEvent = tThorMainlineActivity_Stc[2]["EventType"]
		-- local nType = tThorMainlineActivity_Stc[2]["DataType"]
		-- --完成阶段2任务
		-- if Task_ChkStcValue(nEvent,nType,"==",2) then
			-- return true
		-- end
		--未接任务
		-- if Task_ChkStcValue(nEvent,nType,"==",0) then
			-- return true
		-- else
			-- return false
		-- end
		return true
	else
		return false
	end
end

tNpcGossip[23658]["Text1-2"] = {121,122,123}
tNpcGossip[23658]["tOption1-2"] = {121}
tNpcGossip[23658]["OptionFunc121"] = "ThorMainlineActivity_AcceptedTask</N>23658</N>2"
tNpcGossip[23658]["ChkFunc1-2"] = function ()
	
	if ThorMainlineActivity_ChkLevelAndPro() then
		-- local nEvent = tThorMainlineActivity_Stc[2]["EventType"]
		-- local nType = tThorMainlineActivity_Stc[2]["DataType"]
		-- --完成阶段2任务
		-- if Task_ChkStcValue(nEvent,nType,"==",2) then
			-- return true
		-- end
		--未接任务
		-- if Task_ChkStcValue(nEvent,nType,"==",0) then
			-- return true
		-- else
			-- return false
		-- end
		return true
	else
		return false
	end
end

tNpcGossip[23659] = tNpcGossip[23659] or DefaultNpc:new{}
tNpcGossip[23659]["OptionHidden"] = 1
tNpcGossip[23659]["DialogueText"] = tThorMainlineActivity_Text[23659]

tNpcGossip[23659]["Text1-1"] = {111,112,113,114}
tNpcGossip[23659]["tOption1-1"] = {111}
tNpcGossip[23659]["OptionPoint111"]="1-2"
-- tNpcGossip[23659]["OptionFunc111"] = "ThorMainlineActivity_ChkAcceptedTask</N>23659</N>3"
tNpcGossip[23659]["ChkFunc1-1"] = function ()

	if ThorMainlineActivity_ChkLevelAndPro() then
		
		local nEvent = tThorMainlineActivity_Stc[3]["EventType"]
		local nType = tThorMainlineActivity_Stc[3]["DataType"]
		--完成阶段3任务
		if Task_ChkStcValue(nEvent,nType,"==",2) then
			return true
		end
		-- 未接任务
		if Task_ChkStcValue(nEvent,nType,"==",0) then
			local nEvent6 = tThorMainlineActivity_Stc[6]["EventType"]
			local nType6 = tThorMainlineActivity_Stc[6]["DataType"]
			
			-- if Task_ChkStcValue(nEvent6,nType6,">=",22) then
				-- return true
			-- else
				-- return false
			-- end
			return true
		else
			return false
		end
	else
		return false
	end
end

tNpcGossip[23659]["Text1-2"] = {121,122,123,124}
tNpcGossip[23659]["tOption1-2"] = {121}
tNpcGossip[23659]["OptionFunc121"] = "ThorMainlineActivity_AcceptedTask</N>23659</N>3"
tNpcGossip[23659]["ChkFunc1-2"] = function ()
	if ThorMainlineActivity_ChkLevelAndPro() then
		
		local nEvent = tThorMainlineActivity_Stc[3]["EventType"]
		local nType = tThorMainlineActivity_Stc[3]["DataType"]
		--完成阶段3任务
		if Task_ChkStcValue(nEvent,nType,"==",2) then
			return true
		end
		-- 未接任务
		if Task_ChkStcValue(nEvent,nType,"==",0) then
			local nEvent6 = tThorMainlineActivity_Stc[6]["EventType"]
			local nType6 = tThorMainlineActivity_Stc[6]["DataType"]
			
			-- if Task_ChkStcValue(nEvent6,nType6,">=",22) then
				-- return true
			-- else
				-- return false
			-- end
			return true
		else
			return false
		end
		
	else
		return false
	end
end

tNpcGossip[23659]["Text1-3"] = {131,132,133}
tNpcGossip[23659]["tOption1-3"] = {131}
tNpcGossip[23659]["OptionFunc131"] = "ThorMainlineActivity_EnterHadesInstancep"
tNpcGossip[23659]["ChkFunc1-3"] = function ()
	if ThorMainlineActivity_ChkLevelAndPro() then
		
		local nEvent = tThorMainlineActivity_Stc[3]["EventType"]
		local nType = tThorMainlineActivity_Stc[3]["DataType"]
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			local nEvent6 = tThorMainlineActivity_Stc[6]["EventType"]
			local nType6 = tThorMainlineActivity_Stc[6]["DataType"]
			
			-- if Task_ChkStcValue(nEvent6,nType6,">=",22) then
				-- return true
			-- else
				-- return false
			-- end
			return true
		else
			return false
		end
	else
		return false
	end
end

tNpcGossip[23659]["Text1-4"] = {211,212,213}
tNpcGossip[23659]["tOption1-4"] = {211}


tNpcGossip[23660] = tNpcGossip[23660] or DefaultNpc:new{}
tNpcGossip[23660]["OptionHidden"] = 1
tNpcGossip[23660]["DialogueText"] = tThorMainlineActivity_Text[23660]

tNpcGossip[23660]["Text1-1"] = {111}
tNpcGossip[23660]["tOption1-1"] = {111}
tNpcGossip[23660]["OptionFunc111"] = "ThorMainlineActivity_ChkStcGotoNpc"

tNpcGossip[23661] = tNpcGossip[23661] or DefaultNpc:new{}
tNpcGossip[23661]["OptionHidden"] = 1
tNpcGossip[23661]["DialogueText"] = tThorMainlineActivity_Text[23661]

tNpcGossip[23661]["Text1-1"] = {111}
tNpcGossip[23661]["tOption1-1"] = {111}
tNpcGossip[23661]["OptionFunc111"] = "ThorMainlineActivity_ChkStcGotoNpc"

tNpcGossip[23662] = tNpcGossip[23662] or DefaultNpc:new{}
tNpcGossip[23662]["OptionHidden"] = 1
tNpcGossip[23662]["DialogueText"] = tThorMainlineActivity_Text[23662]

tNpcGossip[23662]["Text1-1"] = {111}
tNpcGossip[23662]["tOption1-1"] = {111}
tNpcGossip[23662]["OptionFunc111"] = "ThorMainlineActivity_ChkStcGotoNpc"

tNpcGossip[23663] = tNpcGossip[23663] or DefaultNpc:new{}
tNpcGossip[23663]["OptionHidden"] = 1
tNpcGossip[23663]["DialogueText"] = tThorMainlineActivity_Text[23663]

tNpcGossip[23663]["Text1-1"] = {111}
tNpcGossip[23663]["tOption1-1"] = {111}
tNpcGossip[23663]["OptionFunc111"] = "ThorMainlineActivity_ChkStcGotoNpc"

tNpcGossip[23664] = tNpcGossip[23664] or DefaultNpc:new{}
tNpcGossip[23664]["OptionHidden"] = 1
tNpcGossip[23664]["DialogueText"] = tThorMainlineActivity_Text[23664]

tNpcGossip[23664]["Text1-1"] = {111}
tNpcGossip[23664]["tOption1-1"] = {111}

tNpcGossip[23665] = tNpcGossip[23665] or DefaultNpc:new{}
tNpcGossip[23665]["OptionHidden"] = 1
tNpcGossip[23665]["DialogueText"] = tThorMainlineActivity_Text[23665]

tNpcGossip[23665]["Text1-1"] = {111}
tNpcGossip[23665]["tOption1-1"] = {111}

tNpcGossip[23666] = tNpcGossip[23666] or DefaultNpc:new{}
tNpcGossip[23666]["OptionHidden"] = 1
tNpcGossip[23666]["DialogueText"] = tThorMainlineActivity_Text[23666]

tNpcGossip[23666]["Text1-1"] = {111}
tNpcGossip[23666]["tOption1-1"] = {111}

tNpcGossip[23669] = tNpcGossip[23669] or DefaultNpc:new{}
tNpcGossip[23669]["OptionHidden"] = 1
tNpcGossip[23669]["DialogueText"] = tThorMainlineActivity_Text[23669]

tNpcGossip[23669]["Text1-1"] = {111}
tNpcGossip[23669]["tOption1-1"] = {111}

tNpcGossip[23670] = tNpcGossip[23670] or DefaultNpc:new{}
tNpcGossip[23670]["OptionHidden"] = 1
tNpcGossip[23670]["DialogueText"] = tThorMainlineActivity_Text[23670]

tNpcGossip[23670]["Text1-1"] = {111}
tNpcGossip[23670]["tOption1-1"] = {111}
tNpcGossip[23670]["OptionFunc111"] = "ThorMainlineActivity_GotoFindNpc</N>23671</N>1"
tNpcGossip[23670]["ChkFunc1-1"] = function ()
	return ThorMainlineActivity_Woundcheck(1)
end

tNpcGossip[23671] = tNpcGossip[23671] or DefaultNpc:new{}
tNpcGossip[23671]["OptionHidden"] = 1
tNpcGossip[23671]["DialogueText"] = tThorMainlineActivity_Text[23671]

tNpcGossip[23671]["Text1-1"] = {111}
tNpcGossip[23671]["tOption1-1"] = {111}
tNpcGossip[23671]["OptionFunc111"] = "ThorMainlineActivity_GotoFindNpc</N>23672</N>2"
tNpcGossip[23671]["ChkFunc1-1"] = function ()
	return ThorMainlineActivity_Woundcheck(2)
end

tNpcGossip[23672] = tNpcGossip[23672] or DefaultNpc:new{}
tNpcGossip[23672]["OptionHidden"] = 1
tNpcGossip[23672]["DialogueText"] = tThorMainlineActivity_Text[23672]

tNpcGossip[23672]["Text1-1"] = {111}
tNpcGossip[23672]["tOption1-1"] = {111}
tNpcGossip[23672]["OptionFunc111"] = "ThorMainlineActivity_GotoFindNpc</N>23673</N>4"
tNpcGossip[23672]["ChkFunc1-1"] = function ()
	return ThorMainlineActivity_Woundcheck(4)
end

tNpcGossip[23673] = tNpcGossip[23673] or DefaultNpc:new{}
tNpcGossip[23673]["OptionHidden"] = 1
tNpcGossip[23673]["DialogueText"] = tThorMainlineActivity_Text[23673]

tNpcGossip[23673]["Text1-1"] = {111}
tNpcGossip[23673]["tOption1-1"] = {111}
tNpcGossip[23673]["OptionFunc111"] = "ThorMainlineActivity_GotoFindNpc</N>23670</N>8"
tNpcGossip[23673]["ChkFunc1-1"] = function ()
	return ThorMainlineActivity_Woundcheck(8)
end

tNpcGossip[23674] = tNpcGossip[23674] or DefaultNpc:new{}
tNpcGossip[23674]["OptionHidden"] = 1
tNpcGossip[23674]["DialogueText"] = tThorMainlineActivity_Text[23674]

tNpcGossip[23674]["Text1-1"] = {111}
tNpcGossip[23674]["tOption1-1"] = {111}
tNpcGossip[23674]["OptionFunc111"] = "ThorMainlineActivity_CallHades</N>23674"

tNpcGossip[23705] = tNpcGossip[23705] or DefaultNpc:new{}
tNpcGossip[23705]["OptionHidden"] = 1
tNpcGossip[23705]["DialogueText"] = tThorMainlineActivity_Text[23705]

tNpcGossip[23705]["Text1-1"] = {111,112,113}
tNpcGossip[23705]["tOption1-1"] = {111}
tNpcGossip[23705]["OptionFunc111"] = "ThorMainlineActivity_RefalshAndFind</N>4968"

tNpcGossip[23713] = tNpcGossip[23713] or DefaultNpc:new{}
tNpcGossip[23713]["OptionHidden"] = 1
tNpcGossip[23713]["DialogueText"] = tThorMainlineActivity_Text[23713]

tNpcGossip[23713]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23713]["tOption1-1"] = {111}
tNpcGossip[23713]["OptionFunc111"] = "ThorMainlineActivity_OpenBox</N>23713"

--------------------------------------------物品模板----------------------------------
tItemFace[3319255] = 2068
tItemFace[3319256] = 2068
tItem[3319255] = tItem[3319255] or {}
tItem[3319255]["DialogueText"] = tThorMainlineActivity_Text[3319255]
tItem[3319255]["Text1-1"] = {111,112}
tItem[3319255]["tOption1-1"] = {111}
tItem[3319255]["OptionFunc111"] = "ThorMainlineActivity_UseBackLetter</N>3319255</N>23599"

tItem[3320107] = tItem[3320107] or {}
tItem[3320107]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tThorMainlineActivity_RewandItem[nItemId])
end
tItem[3320108] = tItem[3320107] or {}

--------------------------------------------怪物模板----------------------------------
local tThorMainlineActivity_Monst ={}

	tThorMainlineActivity_Monst[1] = {}
	tThorMainlineActivity_Monst[1]["Function"] = ThorMainlineActivity_KillMonster
	tThorMainlineActivity_Monst[1]["MonsterId"] = {4961,4962,4963,4964}
	table.insert(tMonsterDrop_AreaLoad,tThorMainlineActivity_Monst[1])
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorMainlineActivity_Monst[1])
	
	tThorMainlineActivity_Monst[2] = {}
	tThorMainlineActivity_Monst[2]["Function"] = ThorMainlineActivity_KillMonsterGuard
	tThorMainlineActivity_Monst[2]["MonsterId"] = {4965}
	table.insert(tMonsterDrop_AreaLoad,tThorMainlineActivity_Monst[2])
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorMainlineActivity_Monst[2])
	
	tThorMainlineActivity_Monst[3] = {}
	tThorMainlineActivity_Monst[3]["Function"] = ThorMainlineActivity_KillMonsterLeader
	tThorMainlineActivity_Monst[3]["MonsterId"] = {4966,4967,4968,4969}
	table.insert(tMonsterDrop_AreaLoad,tThorMainlineActivity_Monst[3])
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorMainlineActivity_Monst[3])
	
	tThorMainlineActivity_Monst[4] = {}
	tThorMainlineActivity_Monst[4]["Function"] = ThorMainlineActivity_KillNolMonster
	tThorMainlineActivity_Monst[4]["MonsterId"] = {4970}
	table.insert(tMonsterDrop_AreaLoad,tThorMainlineActivity_Monst[4])
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorMainlineActivity_Monst[4])
	
	tThorMainlineActivity_Monst[5] = {}
	tThorMainlineActivity_Monst[5]["Function"] = ThorMainlineActivity_KillBoss
	tThorMainlineActivity_Monst[5]["MonsterId"] = {4971}
	table.insert(tMonsterDrop_AreaLoad,tThorMainlineActivity_Monst[5])
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorMainlineActivity_Monst[5])
------------------------------------上线自检------------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,ThorMainlineActivity_LogIn)

