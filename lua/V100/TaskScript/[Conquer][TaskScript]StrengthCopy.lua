------------------------------------------------------------------------------------
--Name：            200106[简体征服][任务脚本]内功副本
--Creator:      陈莺
--Created:     2020-01-06
------------------------------------------------------------------------------------
--任务需求：

-- tStrengthCopy_


----------------------------------表配置部分--------------------------------------------
local tStrengthCopy_Data = {}
	tStrengthCopy_Data["Time"] = 60  --定时1分钟
	tStrengthCopy_Data["Level"] = 120 
	tStrengthCopy_Data["Metempsy"] = 2  
	tStrengthCopy_Data["Instancetype"] = {}
	tStrengthCopy_Data["Instancetype"][1] = 472  --初级内功副本
	tStrengthCopy_Data["Instancetype"][2] = 473  --中级内功副本
	tStrengthCopy_Data["Instancetype"][3] = 474  --高级内功副本
	tStrengthCopy_Data["Instancetype"][4] = 475  --特殊内功副本
	
	tStrengthCopy_Data["Log"] = {}
	tStrengthCopy_Data["Log"][1] = "0,0,3315436,1,12001838,3[1],0,0"
	-- 1 领取任务  2 完成任务 3 领取奖励
	tStrengthCopy_Data["TaskId"] = 7108
	tStrengthCopy_Data["MonsterNum"] = 10 --特殊内功副本怪物数量
	tStrengthCopy_Data["MonsterItem"] = 3316143 --修为灵露礼包
	-- 普通服
	tStrengthCopy_Data["Position"] = {}
	tStrengthCopy_Data["Position"][1] = {}
	tStrengthCopy_Data["Position"][1]["MapId"] = 1002
	tStrengthCopy_Data["Position"][1]["PosX"] = 341
	tStrengthCopy_Data["Position"][1]["PosY"] = 441
	-- 激情服
	tStrengthCopy_Data["Position"][2] = {}
	tStrengthCopy_Data["Position"][2]["MapId"] = 10364
	tStrengthCopy_Data["Position"][2]["PosX"] = 302
	tStrengthCopy_Data["Position"][2]["PosY"] = 290

local tStrengthCopy_Instance = {}
	tStrengthCopy_Instance[472] = 5994

	tStrengthCopy_Instance[473] = 5996

	tStrengthCopy_Instance[474] = 5999
	
	tStrengthCopy_Instance[475] = 6271


local tStrengthCopy_Monster = {}
	tStrengthCopy_Monster[472] = {}
	tStrengthCopy_Monster[472][1] = {}
	tStrengthCopy_Monster[472][1]["MapId"] = 10759
	tStrengthCopy_Monster[472][1]["PosX"] = 36
	tStrengthCopy_Monster[472][1]["PosY"] = 39
	tStrengthCopy_Monster[472][1]["GenId"] = 30587

	tStrengthCopy_Monster[472][2] = {}
	tStrengthCopy_Monster[472][2]["MapId"] = 10759
	tStrengthCopy_Monster[472][2]["PosX"] = 40
	tStrengthCopy_Monster[472][2]["PosY"] = 40
	tStrengthCopy_Monster[472][2]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][3] = {}
	tStrengthCopy_Monster[472][3]["MapId"] = 10759
	tStrengthCopy_Monster[472][3]["PosX"] = 39
	tStrengthCopy_Monster[472][3]["PosY"] = 35
	tStrengthCopy_Monster[472][3]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][4] = {}
	tStrengthCopy_Monster[472][4]["MapId"] = 10759
	tStrengthCopy_Monster[472][4]["PosX"] = 44
	tStrengthCopy_Monster[472][4]["PosY"] = 41
	tStrengthCopy_Monster[472][4]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][5] = {}
	tStrengthCopy_Monster[472][5]["MapId"] = 10759
	tStrengthCopy_Monster[472][5]["PosX"] = 49
	tStrengthCopy_Monster[472][5]["PosY"] = 42
	tStrengthCopy_Monster[472][5]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][6] = {}
	tStrengthCopy_Monster[472][6]["MapId"] = 10759
	tStrengthCopy_Monster[472][6]["PosX"] = 49
	tStrengthCopy_Monster[472][6]["PosY"] = 49
	tStrengthCopy_Monster[472][6]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][7] = {}
	tStrengthCopy_Monster[472][7]["MapId"] = 10759
	tStrengthCopy_Monster[472][7]["PosX"] = 39
	tStrengthCopy_Monster[472][7]["PosY"] = 46
	tStrengthCopy_Monster[472][7]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][8] = {}
	tStrengthCopy_Monster[472][8]["MapId"] = 10759
	tStrengthCopy_Monster[472][8]["PosX"] = 44
	tStrengthCopy_Monster[472][8]["PosY"] = 52
	tStrengthCopy_Monster[472][8]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][9] = {}
	tStrengthCopy_Monster[472][9]["MapId"] = 10759
	tStrengthCopy_Monster[472][9]["PosX"] = 48
	tStrengthCopy_Monster[472][9]["PosY"] = 32
	tStrengthCopy_Monster[472][9]["GenId"] = 30587
	
	tStrengthCopy_Monster[472][10] = {}
	tStrengthCopy_Monster[472][10]["MapId"] = 10759
	tStrengthCopy_Monster[472][10]["PosX"] = 43
	tStrengthCopy_Monster[472][10]["PosY"] = 30
	tStrengthCopy_Monster[472][10]["GenId"] = 30587

	
	tStrengthCopy_Monster[473] = {}
	tStrengthCopy_Monster[473][1] = {}
	tStrengthCopy_Monster[473][1]["MapId"] = 10760
	tStrengthCopy_Monster[473][1]["PosX"] = 46
	tStrengthCopy_Monster[473][1]["PosY"] = 46
	tStrengthCopy_Monster[473][1]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][2] = {}
	tStrengthCopy_Monster[473][2]["MapId"] = 10760
	tStrengthCopy_Monster[473][2]["PosX"] = 40
	tStrengthCopy_Monster[473][2]["PosY"] = 45
	tStrengthCopy_Monster[473][2]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][3] = {}
	tStrengthCopy_Monster[473][3]["MapId"] = 10760
	tStrengthCopy_Monster[473][3]["PosX"] = 45
	tStrengthCopy_Monster[473][3]["PosY"] = 50
	tStrengthCopy_Monster[473][3]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][4] = {}
	tStrengthCopy_Monster[473][4]["MapId"] = 10760
	tStrengthCopy_Monster[473][4]["PosX"] = 47
	tStrengthCopy_Monster[473][4]["PosY"] = 49
	tStrengthCopy_Monster[473][4]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][5] = {}
	tStrengthCopy_Monster[473][5]["MapId"] = 10760
	tStrengthCopy_Monster[473][5]["PosX"] = 51
	tStrengthCopy_Monster[473][5]["PosY"] = 52
	tStrengthCopy_Monster[473][5]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][6] = {}
	tStrengthCopy_Monster[473][6]["MapId"] = 10760
	tStrengthCopy_Monster[473][6]["PosX"] = 52
	tStrengthCopy_Monster[473][6]["PosY"] = 42
	tStrengthCopy_Monster[473][6]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][7] = {}
	tStrengthCopy_Monster[473][7]["MapId"] = 10760
	tStrengthCopy_Monster[473][7]["PosX"] = 45
	tStrengthCopy_Monster[473][7]["PosY"] = 40
	tStrengthCopy_Monster[473][7]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][8] = {}
	tStrengthCopy_Monster[473][8]["MapId"] = 10760
	tStrengthCopy_Monster[473][8]["PosX"] = 39
	tStrengthCopy_Monster[473][8]["PosY"] = 34
	tStrengthCopy_Monster[473][8]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][9] = {}
	tStrengthCopy_Monster[473][9]["MapId"] = 10760
	tStrengthCopy_Monster[473][9]["PosX"] = 43
	tStrengthCopy_Monster[473][9]["PosY"] = 32
	tStrengthCopy_Monster[473][9]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][10] = {}
	tStrengthCopy_Monster[473][10]["MapId"] = 10760
	tStrengthCopy_Monster[473][10]["PosX"] = 51
	tStrengthCopy_Monster[473][10]["PosY"] = 37
	tStrengthCopy_Monster[473][10]["GenId"] = 30588

	tStrengthCopy_Monster[473][11] = {}
	tStrengthCopy_Monster[473][11]["MapId"] = 10760
	tStrengthCopy_Monster[473][11]["PosX"] = 55
	tStrengthCopy_Monster[473][11]["PosY"] = 44
	tStrengthCopy_Monster[473][11]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][12] = {}
	tStrengthCopy_Monster[473][12]["MapId"] = 10760
	tStrengthCopy_Monster[473][12]["PosX"] = 52
	tStrengthCopy_Monster[473][12]["PosY"] = 44
	tStrengthCopy_Monster[473][12]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][13] = {}
	tStrengthCopy_Monster[473][13]["MapId"] = 10760
	tStrengthCopy_Monster[473][13]["PosX"] = 53
	tStrengthCopy_Monster[473][13]["PosY"] = 47
	tStrengthCopy_Monster[473][13]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][14] = {}
	tStrengthCopy_Monster[473][14]["MapId"] = 10760
	tStrengthCopy_Monster[473][14]["PosX"] = 52
	tStrengthCopy_Monster[473][14]["PosY"] = 50
	tStrengthCopy_Monster[473][14]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][15] = {}
	tStrengthCopy_Monster[473][15]["MapId"] = 10760
	tStrengthCopy_Monster[473][15]["PosX"] = 36
	tStrengthCopy_Monster[473][15]["PosY"] = 51
	tStrengthCopy_Monster[473][15]["GenId"] = 30588

	tStrengthCopy_Monster[473][16] = {}
	tStrengthCopy_Monster[473][16]["MapId"] = 10760
	tStrengthCopy_Monster[473][16]["PosX"] = 40
	tStrengthCopy_Monster[473][16]["PosY"] = 53
	tStrengthCopy_Monster[473][16]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][17] = {}
	tStrengthCopy_Monster[473][17]["MapId"] = 10760
	tStrengthCopy_Monster[473][17]["PosX"] = 44
	tStrengthCopy_Monster[473][17]["PosY"] = 53
	tStrengthCopy_Monster[473][17]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][18] = {}
	tStrengthCopy_Monster[473][18]["MapId"] = 10760
	tStrengthCopy_Monster[473][18]["PosX"] = 48
	tStrengthCopy_Monster[473][18]["PosY"] = 51
	tStrengthCopy_Monster[473][18]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][19] = {}
	tStrengthCopy_Monster[473][19]["MapId"] = 10760
	tStrengthCopy_Monster[473][19]["PosX"] = 50
	tStrengthCopy_Monster[473][19]["PosY"] = 50
	tStrengthCopy_Monster[473][19]["GenId"] = 30588
	
	tStrengthCopy_Monster[473][20] = {}
	tStrengthCopy_Monster[473][20]["MapId"] = 10760
	tStrengthCopy_Monster[473][20]["PosX"] = 42
	tStrengthCopy_Monster[473][20]["PosY"] = 41
	tStrengthCopy_Monster[473][20]["GenId"] = 30588

	
	tStrengthCopy_Monster[474] = {}
	tStrengthCopy_Monster[474][1] = {}
	tStrengthCopy_Monster[474][1]["MapId"] = 10762
	tStrengthCopy_Monster[474][1]["PosX"] = 48
	tStrengthCopy_Monster[474][1]["PosY"] = 45
	tStrengthCopy_Monster[474][1]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][2] = {}
	tStrengthCopy_Monster[474][2]["MapId"] = 10762
	tStrengthCopy_Monster[474][2]["PosX"] = 45
	tStrengthCopy_Monster[474][2]["PosY"] = 34
	tStrengthCopy_Monster[474][2]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][3] = {}
	tStrengthCopy_Monster[474][3]["MapId"] = 10762
	tStrengthCopy_Monster[474][3]["PosX"] = 44
	tStrengthCopy_Monster[474][3]["PosY"] = 36
	tStrengthCopy_Monster[474][3]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][4] = {}
	tStrengthCopy_Monster[474][4]["MapId"] = 10762
	tStrengthCopy_Monster[474][4]["PosX"] = 46
	tStrengthCopy_Monster[474][4]["PosY"] = 38
	tStrengthCopy_Monster[474][4]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][5] = {}
	tStrengthCopy_Monster[474][5]["MapId"] = 10762
	tStrengthCopy_Monster[474][5]["PosX"] = 49
	tStrengthCopy_Monster[474][5]["PosY"] = 42
	tStrengthCopy_Monster[474][5]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][6] = {}
	tStrengthCopy_Monster[474][6]["MapId"] = 10762
	tStrengthCopy_Monster[474][6]["PosX"] = 44
	tStrengthCopy_Monster[474][6]["PosY"] = 45
	tStrengthCopy_Monster[474][6]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][7] = {}
	tStrengthCopy_Monster[474][7]["MapId"] = 10762
	tStrengthCopy_Monster[474][7]["PosX"] = 48
	tStrengthCopy_Monster[474][7]["PosY"] = 47
	tStrengthCopy_Monster[474][7]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][8] = {}
	tStrengthCopy_Monster[474][8]["MapId"] = 10762
	tStrengthCopy_Monster[474][8]["PosX"] = 42
	tStrengthCopy_Monster[474][8]["PosY"] = 48
	tStrengthCopy_Monster[474][8]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][9] = {}
	tStrengthCopy_Monster[474][9]["MapId"] = 10762
	tStrengthCopy_Monster[474][9]["PosX"] = 43
	tStrengthCopy_Monster[474][9]["PosY"] = 52
	tStrengthCopy_Monster[474][9]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][10] = {}
	tStrengthCopy_Monster[474][10]["MapId"] = 10762
	tStrengthCopy_Monster[474][10]["PosX"] = 49
	tStrengthCopy_Monster[474][10]["PosY"] = 54
	tStrengthCopy_Monster[474][10]["GenId"] = 30589

	tStrengthCopy_Monster[474][11] = {}
	tStrengthCopy_Monster[474][11]["MapId"] = 10762
	tStrengthCopy_Monster[474][11]["PosX"] = 33
	tStrengthCopy_Monster[474][11]["PosY"] = 47
	tStrengthCopy_Monster[474][11]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][12] = {}
	tStrengthCopy_Monster[474][12]["MapId"] = 10762
	tStrengthCopy_Monster[474][12]["PosX"] = 37
	tStrengthCopy_Monster[474][12]["PosY"] = 50
	tStrengthCopy_Monster[474][12]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][13] = {}
	tStrengthCopy_Monster[474][13]["MapId"] = 10762
	tStrengthCopy_Monster[474][13]["PosX"] = 41
	tStrengthCopy_Monster[474][13]["PosY"] = 53
	tStrengthCopy_Monster[474][13]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][14] = {}
	tStrengthCopy_Monster[474][14]["MapId"] = 10762
	tStrengthCopy_Monster[474][14]["PosX"] = 44
	tStrengthCopy_Monster[474][14]["PosY"] = 56
	tStrengthCopy_Monster[474][14]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][15] = {}
	tStrengthCopy_Monster[474][15]["MapId"] = 10762
	tStrengthCopy_Monster[474][15]["PosX"] = 53
	tStrengthCopy_Monster[474][15]["PosY"] = 62
	tStrengthCopy_Monster[474][15]["GenId"] = 30589

	tStrengthCopy_Monster[474][16] = {}
	tStrengthCopy_Monster[474][16]["MapId"] = 10762
	tStrengthCopy_Monster[474][16]["PosX"] = 44
	tStrengthCopy_Monster[474][16]["PosY"] = 30
	tStrengthCopy_Monster[474][16]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][17] = {}
	tStrengthCopy_Monster[474][17]["MapId"] = 10762
	tStrengthCopy_Monster[474][17]["PosX"] = 49
	tStrengthCopy_Monster[474][17]["PosY"] = 33
	tStrengthCopy_Monster[474][17]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][18] = {}
	tStrengthCopy_Monster[474][18]["MapId"] = 10762
	tStrengthCopy_Monster[474][18]["PosX"] = 58
	tStrengthCopy_Monster[474][18]["PosY"] = 36
	tStrengthCopy_Monster[474][18]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][19] = {}
	tStrengthCopy_Monster[474][19]["MapId"] = 10762
	tStrengthCopy_Monster[474][19]["PosX"] = 42
	tStrengthCopy_Monster[474][19]["PosY"] = 31
	tStrengthCopy_Monster[474][19]["GenId"] = 30589
	
	tStrengthCopy_Monster[474][20] = {}
	tStrengthCopy_Monster[474][20]["MapId"] = 10762
	tStrengthCopy_Monster[474][20]["PosX"] = 49
	tStrengthCopy_Monster[474][20]["PosY"] = 35
	tStrengthCopy_Monster[474][20]["GenId"] = 30589
	
	-- 特殊内功副本
	tStrengthCopy_Monster[475] = {}
	tStrengthCopy_Monster[475][1] = {}
	tStrengthCopy_Monster[475][1]["MapId"] = 10762
	tStrengthCopy_Monster[475][1]["PosX"] = 48
	tStrengthCopy_Monster[475][1]["PosY"] = 45
	tStrengthCopy_Monster[475][1]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][2] = {}
	tStrengthCopy_Monster[475][2]["MapId"] = 10762
	tStrengthCopy_Monster[475][2]["PosX"] = 48
	tStrengthCopy_Monster[475][2]["PosY"] = 53
	tStrengthCopy_Monster[475][2]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][3] = {}
	tStrengthCopy_Monster[475][3]["MapId"] = 10762
	tStrengthCopy_Monster[475][3]["PosX"] = 53
	tStrengthCopy_Monster[475][3]["PosY"] = 54
	tStrengthCopy_Monster[475][3]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][4] = {}
	tStrengthCopy_Monster[475][4]["MapId"] = 10762
	tStrengthCopy_Monster[475][4]["PosX"] = 58
	tStrengthCopy_Monster[475][4]["PosY"] = 56
	tStrengthCopy_Monster[475][4]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][5] = {}
	tStrengthCopy_Monster[475][5]["MapId"] = 10762
	tStrengthCopy_Monster[475][5]["PosX"] = 60
	tStrengthCopy_Monster[475][5]["PosY"] = 53
	tStrengthCopy_Monster[475][5]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][6] = {}
	tStrengthCopy_Monster[475][6]["MapId"] = 10762
	tStrengthCopy_Monster[475][6]["PosX"] = 59
	tStrengthCopy_Monster[475][6]["PosY"] = 46
	tStrengthCopy_Monster[475][6]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][7] = {}
	tStrengthCopy_Monster[475][7]["MapId"] = 10762
	tStrengthCopy_Monster[475][7]["PosX"] = 54
	tStrengthCopy_Monster[475][7]["PosY"] = 36
	tStrengthCopy_Monster[475][7]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][8] = {}
	tStrengthCopy_Monster[475][8]["MapId"] = 10762
	tStrengthCopy_Monster[475][8]["PosX"] = 47
	tStrengthCopy_Monster[475][8]["PosY"] = 38
	tStrengthCopy_Monster[475][8]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][9] = {}
	tStrengthCopy_Monster[475][9]["MapId"] = 10762
	tStrengthCopy_Monster[475][9]["PosX"] = 41
	tStrengthCopy_Monster[475][9]["PosY"] = 41
	tStrengthCopy_Monster[475][9]["GenId"] = 30590
	
	tStrengthCopy_Monster[475][10] = {}
	tStrengthCopy_Monster[475][10]["MapId"] = 10762
	tStrengthCopy_Monster[475][10]["PosX"] = 38
	tStrengthCopy_Monster[475][10]["PosY"] = 48
	tStrengthCopy_Monster[475][10]["GenId"] = 30590
	
	
	
	
	
local tStrengthCopy_Reward = {}
	-- ===九阳神功·上篇残页
	-- ===索引:tStrengthCopy_Reward[3315403]
	-- ===删除: 3315403,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315403] = {}
	tStrengthCopy_Reward[3315403]["LogId"] = 12001838
	tStrengthCopy_Reward[3315403]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315403]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315403]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315403]["DeleteItem"][1]["Id"] = 3315403 -- 【库】 3315403 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315403]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315403]["RewardItem"] = {}
	tStrengthCopy_Reward[3315403]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315403]["RewardItem"][1]["Id"] = 3315418 --  3315418 【库里没有该物品】, 【表格】九阳神功·上篇
	tStrengthCopy_Reward[3315403]["RewardItem"][1]["Attr"] = "0 1" --  3315418 【库里没有该物品】*1
	tStrengthCopy_Reward[3315403]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315403]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315403]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315404] = {}
	-- ===
	-- ===九阳神功·中篇残页
	-- ===索引:tStrengthCopy_Reward[3315404]
	-- ===删除: 3315404,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315404]["LogId"] = 12001838
	tStrengthCopy_Reward[3315404]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315404]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315404]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315404]["DeleteItem"][1]["Id"] = 3315404 -- 【库】 3315404 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315404]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315404]["RewardItem"] = {}
	tStrengthCopy_Reward[3315404]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315404]["RewardItem"][1]["Id"] = 3315419 --  3315419 【库里没有该物品】, 【表格】九阳神功·中篇
	tStrengthCopy_Reward[3315404]["RewardItem"][1]["Attr"] = "0 1" --  3315419 【库里没有该物品】*1
	tStrengthCopy_Reward[3315404]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315404]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315405] = {}
	-- ===
	-- ===九阳神功·下篇残页
	-- ===索引:tStrengthCopy_Reward[3315405]
	-- ===删除: 3315405,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315405]["LogId"] = 12001838
	tStrengthCopy_Reward[3315405]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315405]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315405]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315405]["DeleteItem"][1]["Id"] = 3315405 -- 【库】 3315405 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315405]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315405]["RewardItem"] = {}
	tStrengthCopy_Reward[3315405]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315405]["RewardItem"][1]["Id"] = 3315420 --  3315420 【库里没有该物品】, 【表格】九阳神功·下篇
	tStrengthCopy_Reward[3315405]["RewardItem"][1]["Attr"] = "0 1" --  3315420 【库里没有该物品】*1
	tStrengthCopy_Reward[3315405]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315405]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315406] = {}
	-- ===
	-- ===北冥神功·上篇残页
	-- ===索引:tStrengthCopy_Reward[3315406]
	-- ===删除: 3315406,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315406]["LogId"] = 12001838
	tStrengthCopy_Reward[3315406]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315406]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315406]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315406]["DeleteItem"][1]["Id"] = 3315406 -- 【库】 3315406 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315406]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315406]["RewardItem"] = {}
	tStrengthCopy_Reward[3315406]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315406]["RewardItem"][1]["Id"] = 3315421 --  3315421 【库里没有该物品】, 【表格】北冥神功·上篇
	tStrengthCopy_Reward[3315406]["RewardItem"][1]["Attr"] = "0 1" --  3315421 【库里没有该物品】*1
	tStrengthCopy_Reward[3315406]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315406]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315407] = {}
	-- ===
	-- ===北冥神功·中篇残页
	-- ===索引:tStrengthCopy_Reward[3315407]
	-- ===删除: 3315407,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315407]["LogId"] = 12001838
	tStrengthCopy_Reward[3315407]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315407]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315407]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315407]["DeleteItem"][1]["Id"] = 3315407 -- 【库】 3315407 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315407]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315407]["RewardItem"] = {}
	tStrengthCopy_Reward[3315407]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315407]["RewardItem"][1]["Id"] = 3315422 --  3315422 【库里没有该物品】, 【表格】北冥神功·中篇
	tStrengthCopy_Reward[3315407]["RewardItem"][1]["Attr"] = "0 1" --  3315422 【库里没有该物品】*1
	tStrengthCopy_Reward[3315407]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315407]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315408] = {}
	-- ===
	-- ===北冥神功·下篇残页
	-- ===索引:tStrengthCopy_Reward[3315408]
	-- ===删除: 3315408,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315408]["LogId"] = 12001838
	tStrengthCopy_Reward[3315408]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315408]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315408]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315408]["DeleteItem"][1]["Id"] = 3315408 -- 【库】 3315408 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315408]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315408]["RewardItem"] = {}
	tStrengthCopy_Reward[3315408]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315408]["RewardItem"][1]["Id"] = 3315423 --  3315423 【库里没有该物品】, 【表格】北冥神功·下篇
	tStrengthCopy_Reward[3315408]["RewardItem"][1]["Attr"] = "0 1" --  3315423 【库里没有该物品】*1
	tStrengthCopy_Reward[3315408]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315408]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315408]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315409] = {}
	-- ===
	-- ===紫霞神功·上篇残页
	-- ===索引:tStrengthCopy_Reward[3315409]
	-- ===删除: 3315409,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315409]["LogId"] = 12001838
	tStrengthCopy_Reward[3315409]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315409]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315409]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315409]["DeleteItem"][1]["Id"] = 3315409 -- 【库】 3315409 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315409]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315409]["RewardItem"] = {}
	tStrengthCopy_Reward[3315409]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315409]["RewardItem"][1]["Id"] = 3315424 --  3315424 【库里没有该物品】, 【表格】紫霞神功·上篇
	tStrengthCopy_Reward[3315409]["RewardItem"][1]["Attr"] = "0 1" --  3315424 【库里没有该物品】*1
	tStrengthCopy_Reward[3315409]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315409]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315409]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315410] = {}
	-- ===
	-- ===紫霞神功·中篇残页
	-- ===索引:tStrengthCopy_Reward[3315410]
	-- ===删除: 3315410,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315410]["LogId"] = 12001838
	tStrengthCopy_Reward[3315410]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315410]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315410]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315410]["DeleteItem"][1]["Id"] = 3315410 -- 【库】 3315410 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315410]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315410]["RewardItem"] = {}
	tStrengthCopy_Reward[3315410]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315410]["RewardItem"][1]["Id"] = 3315425 --  3315425 【库里没有该物品】, 【表格】紫霞神功·中篇
	tStrengthCopy_Reward[3315410]["RewardItem"][1]["Attr"] = "0 1" --  3315425 【库里没有该物品】*1
	tStrengthCopy_Reward[3315410]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315410]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315410]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315411] = {}
	-- ===
	-- ===紫霞神功·下篇残页
	-- ===索引:tStrengthCopy_Reward[3315411]
	-- ===删除: 3315411,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315411]["LogId"] = 12001838
	tStrengthCopy_Reward[3315411]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315411]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315411]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315411]["DeleteItem"][1]["Id"] = 3315411 -- 【库】 3315411 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315411]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315411]["RewardItem"] = {}
	tStrengthCopy_Reward[3315411]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315411]["RewardItem"][1]["Id"] = 3315426 --  3315426 【库里没有该物品】, 【表格】紫霞神功·下篇
	tStrengthCopy_Reward[3315411]["RewardItem"][1]["Attr"] = "0 1" --  3315426 【库里没有该物品】*1
	tStrengthCopy_Reward[3315411]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315411]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315411]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315412] = {}
	-- ===
	-- ===九阴真经·上篇残页
	-- ===索引:tStrengthCopy_Reward[3315412]
	-- ===删除: 3315412,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315412]["LogId"] = 12001838
	tStrengthCopy_Reward[3315412]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315412]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315412]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315412]["DeleteItem"][1]["Id"] = 3315412 -- 【库】 3315412 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315412]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315412]["RewardItem"] = {}
	tStrengthCopy_Reward[3315412]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315412]["RewardItem"][1]["Id"] = 3315427 --  3315427 【库里没有该物品】, 【表格】九阴真经·上篇
	tStrengthCopy_Reward[3315412]["RewardItem"][1]["Attr"] = "0 1" --  3315427 【库里没有该物品】*1
	tStrengthCopy_Reward[3315412]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315412]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315412]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315413] = {}
	-- ===
	-- ===九阴真经·中篇残页
	-- ===索引:tStrengthCopy_Reward[3315413]
	-- ===删除: 3315413,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315413]["LogId"] = 12001838
	tStrengthCopy_Reward[3315413]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315413]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315413]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315413]["DeleteItem"][1]["Id"] = 3315413 -- 【库】 3315413 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315413]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315413]["RewardItem"] = {}
	tStrengthCopy_Reward[3315413]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315413]["RewardItem"][1]["Id"] = 3315428 --  3315428 【库里没有该物品】, 【表格】九阴真经·中篇
	tStrengthCopy_Reward[3315413]["RewardItem"][1]["Attr"] = "0 1" --  3315428 【库里没有该物品】*1
	tStrengthCopy_Reward[3315413]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315413]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315413]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315414] = {}
	-- ===
	-- ===九阴真经·下篇残页
	-- ===索引:tStrengthCopy_Reward[3315414]
	-- ===删除: 3315414,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315414]["LogId"] = 12001838
	tStrengthCopy_Reward[3315414]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315414]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315414]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315414]["DeleteItem"][1]["Id"] = 3315414 -- 【库】 3315414 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315414]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315414]["RewardItem"] = {}
	tStrengthCopy_Reward[3315414]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315414]["RewardItem"][1]["Id"] = 3315429 --  3315429 【库里没有该物品】, 【表格】九阴真经·下篇
	tStrengthCopy_Reward[3315414]["RewardItem"][1]["Attr"] = "0 1" --  3315429 【库里没有该物品】*1
	tStrengthCopy_Reward[3315414]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315414]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315414]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315415] = {}
	-- ===
	-- ===化功大法·上篇残页
	-- ===索引:tStrengthCopy_Reward[3315415]
	-- ===删除: 3315415,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315415]["LogId"] = 12001838
	tStrengthCopy_Reward[3315415]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315415]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315415]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315415]["DeleteItem"][1]["Id"] = 3315415 -- 【库】 3315415 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315415]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315415]["RewardItem"] = {}
	tStrengthCopy_Reward[3315415]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315415]["RewardItem"][1]["Id"] = 3315430 --  3315430 【库里没有该物品】, 【表格】化功大法·上篇
	tStrengthCopy_Reward[3315415]["RewardItem"][1]["Attr"] = "0 1" --  3315430 【库里没有该物品】*1
	tStrengthCopy_Reward[3315415]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315415]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315415]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315416] = {}
	-- ===
	-- ===化功大法·中篇残页
	-- ===索引:tStrengthCopy_Reward[3315416]
	-- ===删除: 3315416,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315416]["LogId"] = 12001838
	tStrengthCopy_Reward[3315416]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315416]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315416]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315416]["DeleteItem"][1]["Id"] = 3315416 -- 【库】 3315416 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315416]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315416]["RewardItem"] = {}
	tStrengthCopy_Reward[3315416]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315416]["RewardItem"][1]["Id"] = 3315431 --  3315431 【库里没有该物品】, 【表格】化功大法·中篇
	tStrengthCopy_Reward[3315416]["RewardItem"][1]["Attr"] = "0 1" --  3315431 【库里没有该物品】*1
	tStrengthCopy_Reward[3315416]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315416]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315416]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315417] = {}
	-- ===
	-- ===化功大法·下篇残页
	-- ===索引:tStrengthCopy_Reward[3315417]
	-- ===删除: 3315417,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315417]["LogId"] = 12001838
	tStrengthCopy_Reward[3315417]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315417]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315417]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315417]["DeleteItem"][1]["Id"] = 3315417 -- 【库】 3315417 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315417]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3315417]["RewardItem"] = {}
	tStrengthCopy_Reward[3315417]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315417]["RewardItem"][1]["Id"] = 3315432 --  3315432 【库里没有该物品】, 【表格】化功大法·下篇
	tStrengthCopy_Reward[3315417]["RewardItem"][1]["Attr"] = "0 1" --  3315432 【库里没有该物品】*1
	tStrengthCopy_Reward[3315417]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315417]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315417]["RewardEffect"]["Effect"] = "angelwing"

	tStrengthCopy_Reward[3316126] = {}
	-- ===
	-- ===纯阳无极功·上篇残页
	-- ===索引:tStrengthCopy_Reward[3316126]
	-- ===删除: 3316126,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3316126]["LogId"] = 12001838
	tStrengthCopy_Reward[3316126]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3316126]["DeleteItem"] = {}
	tStrengthCopy_Reward[3316126]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3316126]["DeleteItem"][1]["Id"] = 3316126 -- 【库】 3316126 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3316126]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3316126]["RewardItem"] = {}
	tStrengthCopy_Reward[3316126]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3316126]["RewardItem"][1]["Id"] = 3316129 --  3316129 【库里没有该物品】, 【表格】化功大法·下篇
	tStrengthCopy_Reward[3316126]["RewardItem"][1]["Attr"] = "0 1" --  3316129 【库里没有该物品】*1
	tStrengthCopy_Reward[3316126]["RewardEffect"] = {}
	tStrengthCopy_Reward[3316126]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3316126]["RewardEffect"]["Effect"] = "angelwing"

	tStrengthCopy_Reward[3316127] = {}
	-- ===
	-- ===纯阳无极功·中篇残页
	-- ===索引:tStrengthCopy_Reward[3316127]
	-- ===删除: 3316127,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3316127]["LogId"] = 12001838
	tStrengthCopy_Reward[3316127]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3316127]["DeleteItem"] = {}
	tStrengthCopy_Reward[3316127]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3316127]["DeleteItem"][1]["Id"] = 3316127 -- 【库】 3316127 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3316127]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3316127]["RewardItem"] = {}
	tStrengthCopy_Reward[3316127]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3316127]["RewardItem"][1]["Id"] = 3316130 --  3316130 【库里没有该物品】, 【表格】化功大法·下篇
	tStrengthCopy_Reward[3316127]["RewardItem"][1]["Attr"] = "0 1" --  3316130 【库里没有该物品】*1
	tStrengthCopy_Reward[3316127]["RewardEffect"] = {}
	tStrengthCopy_Reward[3316127]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3316127]["RewardEffect"]["Effect"] = "angelwing"

	tStrengthCopy_Reward[3316128] = {}
	-- ===
	-- ===纯阳无极功·下篇残页
	-- ===索引:tStrengthCopy_Reward[3316128]
	-- ===删除: 3316128,10
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3316128]["LogId"] = 12001838
	tStrengthCopy_Reward[3316128]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3316128]["DeleteItem"] = {}
	tStrengthCopy_Reward[3316128]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3316128]["DeleteItem"][1]["Id"] = 3316128 -- 【库】 3316128 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3316128]["DeleteItem"][1]["ItemNum"] = 10
	tStrengthCopy_Reward[3316128]["RewardItem"] = {}
	tStrengthCopy_Reward[3316128]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3316128]["RewardItem"][1]["Id"] = 3316131 --  3316131 【库里没有该物品】, 【表格】化功大法·下篇
	tStrengthCopy_Reward[3316128]["RewardItem"][1]["Attr"] = "0 1" --  3316131 【库里没有该物品】*1
	tStrengthCopy_Reward[3316128]["RewardEffect"] = {}
	tStrengthCopy_Reward[3316128]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3316128]["RewardEffect"]["Effect"] = "angelwing"

	
	tStrengthCopy_Reward[3315435] = {}
	-- ===
	-- ===密匙碎片
	-- ===索引:tStrengthCopy_Reward[3315435]
	-- ===删除: 3315435,20
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315435]["LogId"] = 12001838
	tStrengthCopy_Reward[3315435]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315435]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315435]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315435]["DeleteItem"][1]["Id"] = 3315435 -- 【库】 3315435 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315435]["DeleteItem"][1]["ItemNum"] = 5
	tStrengthCopy_Reward[3315435]["RewardItem"] = {}
	tStrengthCopy_Reward[3315435]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315435]["RewardItem"][1]["Id"] = 3315436 --  3315436 【库里没有该物品】, 【表格】密室钥匙
	tStrengthCopy_Reward[3315435]["RewardItem"][1]["Attr"] = "0 1" --  3315436 【库里没有该物品】*1
	tStrengthCopy_Reward[3315435]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315435]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315435]["RewardEffect"]["Effect"] = "angelwing"

	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315708]
	-- ===删除:3315708,1
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315708] = {}
	tStrengthCopy_Reward[3315708]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStrengthCopy_Reward[3315708]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315708]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315708]["DeleteItem"][1]["Id"] = 3315708 -- 【库】 3315708 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315708]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708]["LogStep"] = " 5[2]"
	-- 龙象般若功上卷 - 0.1%
	tStrengthCopy_Reward[3315708][1] = {}
	tStrengthCopy_Reward[3315708][1]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][1]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][1]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][1]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][1]["RewardItem"][1]["Id"] = 3005397 -- 龙象般若功·上篇[3005397][属性:9][叠加:0][金币:0], 【表格】龙象般若功上卷
	tStrengthCopy_Reward[3315708][1]["RewardItem"][1]["Attr"] = "0 1" -- 龙象般若功·上篇*1
	tStrengthCopy_Reward[3315708][1]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][1]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][1]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][1]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][1]["Star"] = 5
	tStrengthCopy_Reward[3315708][1]["Flag"] = 1
	-- 龙象般若功下卷 - 0.1%
	tStrengthCopy_Reward[3315708][2] = {}
	tStrengthCopy_Reward[3315708][2]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][2]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][2]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][2]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][2]["RewardItem"][1]["Id"] = 3005398 -- 龙象般若功·下篇[3005398][属性:9][叠加:0][金币:0], 【表格】龙象般若功下卷
	tStrengthCopy_Reward[3315708][2]["RewardItem"][1]["Attr"] = "0 1" -- 龙象般若功·下篇*1
	tStrengthCopy_Reward[3315708][2]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][2]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][2]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][2]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][2]["Star"] = 5
	tStrengthCopy_Reward[3315708][2]["Flag"] = 2
	-- 无量心经上卷 - 0.1%
	tStrengthCopy_Reward[3315708][3] = {}
	tStrengthCopy_Reward[3315708][3]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][3]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][3]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][3]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][3]["RewardItem"][1]["Id"] = 3007115 -- 无量心经·上篇[3007115][属性:9][叠加:0][金币:0], 【表格】无量心经上卷
	tStrengthCopy_Reward[3315708][3]["RewardItem"][1]["Attr"] = "0 1" -- 无量心经·上篇*1
	tStrengthCopy_Reward[3315708][3]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][3]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][3]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][3]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][3]["Star"] = 5
	tStrengthCopy_Reward[3315708][3]["Flag"] = 3
	-- 无量心经中卷 - 0.1%
	tStrengthCopy_Reward[3315708][4] = {}
	tStrengthCopy_Reward[3315708][4]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][4]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][4]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][4]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][4]["RewardItem"][1]["Id"] = 3007116 -- 无量心经·中篇[3007116][属性:9][叠加:0][金币:0], 【表格】无量心经中卷
	tStrengthCopy_Reward[3315708][4]["RewardItem"][1]["Attr"] = "0 1" -- 无量心经·中篇*1
	tStrengthCopy_Reward[3315708][4]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][4]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][4]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][4]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][4]["Star"] = 5
	tStrengthCopy_Reward[3315708][4]["Flag"] = 4

	-- 无量心经下卷 - 0.1%
	tStrengthCopy_Reward[3315708][5] = {}
	tStrengthCopy_Reward[3315708][5]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][5]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][5]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][5]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][5]["RewardItem"][1]["Id"] = 3007117 -- 无量心经·下篇[3007117][属性:9][叠加:0][金币:0], 【表格】无量心经下卷
	tStrengthCopy_Reward[3315708][5]["RewardItem"][1]["Attr"] = "0 1" -- 无量心经·下篇*1
	tStrengthCopy_Reward[3315708][5]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][5]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][5]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][5]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][5]["Star"] = 5
	tStrengthCopy_Reward[3315708][5]["Flag"] = 5
	-- 太乙神功上卷 - 0.1%
	tStrengthCopy_Reward[3315708][6] = {}
	tStrengthCopy_Reward[3315708][6]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][6]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][6]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][6]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][6]["RewardItem"][1]["Id"] = 3005399 -- 太乙神功·上篇[3005399][属性:9][叠加:0][金币:0], 【表格】太乙神功上卷
	tStrengthCopy_Reward[3315708][6]["RewardItem"][1]["Attr"] = "0 1" -- 太乙神功·上篇*1
	tStrengthCopy_Reward[3315708][6]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][6]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][6]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][6]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][6]["Star"] = 5
	tStrengthCopy_Reward[3315708][6]["Flag"] = 6
	-- 太乙神功中卷 - 0.1%
	tStrengthCopy_Reward[3315708][7] = {}
	tStrengthCopy_Reward[3315708][7]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][7]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][7]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][7]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][7]["RewardItem"][1]["Id"] = 3005400 -- 太乙神功·中篇[3005400][属性:9][叠加:0][金币:0], 【表格】太乙神功中卷
	tStrengthCopy_Reward[3315708][7]["RewardItem"][1]["Attr"] = "0 1" -- 太乙神功·中篇*1
	tStrengthCopy_Reward[3315708][7]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][7]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][7]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][7]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][7]["Star"] = 5
	tStrengthCopy_Reward[3315708][7]["Flag"] = 7
	-- 太乙神功下卷 - 0.1%
	tStrengthCopy_Reward[3315708][8] = {}
	tStrengthCopy_Reward[3315708][8]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][8]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][8]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][8]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][8]["RewardItem"][1]["Id"] = 3005401 -- 太乙神功·下篇[3005401][属性:9][叠加:0][金币:0], 【表格】太乙神功下卷
	tStrengthCopy_Reward[3315708][8]["RewardItem"][1]["Attr"] = "0 1" -- 太乙神功·下篇*1
	tStrengthCopy_Reward[3315708][8]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][8]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][8]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][8]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][8]["Star"] = 5
	tStrengthCopy_Reward[3315708][8]["Flag"] = 8
	-- 枯荣禅功上卷 - 0.1%
	tStrengthCopy_Reward[3315708][9] = {}
	tStrengthCopy_Reward[3315708][9]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][9]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][9]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][9]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][9]["RewardItem"][1]["Id"] = 3007230 -- 枯荣禅功·上篇[3007230][属性:9][叠加:0][金币:0], 【表格】枯荣禅功上卷
	tStrengthCopy_Reward[3315708][9]["RewardItem"][1]["Attr"] = "0 1" -- 枯荣禅功·上篇*1
	tStrengthCopy_Reward[3315708][9]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][9]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][9]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][9]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][9]["Star"] = 5
	tStrengthCopy_Reward[3315708][9]["Flag"] = 9
	-- 枯荣禅功中卷 - 0.1%
	tStrengthCopy_Reward[3315708][10] = {}
	tStrengthCopy_Reward[3315708][10]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][10]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][10]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][10]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][10]["RewardItem"][1]["Id"] = 3007231 -- 枯荣禅功·中篇[3007231][属性:9][叠加:0][金币:0], 【表格】枯荣禅功中卷
	tStrengthCopy_Reward[3315708][10]["RewardItem"][1]["Attr"] = "0 1" -- 枯荣禅功·中篇*1
	tStrengthCopy_Reward[3315708][10]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][10]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][10]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][10]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][10]["Star"] = 5
	tStrengthCopy_Reward[3315708][10]["Flag"] = 10
	-- 枯荣禅功下卷 - 0.1%
	tStrengthCopy_Reward[3315708][11] = {}
	tStrengthCopy_Reward[3315708][11]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][11]["ItemChance"] = 10
	tStrengthCopy_Reward[3315708][11]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][11]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][11]["RewardItem"][1]["Id"] = 3007232 -- 枯荣禅功·下篇[3007232][属性:9][叠加:0][金币:0], 【表格】枯荣禅功下卷
	tStrengthCopy_Reward[3315708][11]["RewardItem"][1]["Attr"] = "0 1" -- 枯荣禅功·下篇*1
	tStrengthCopy_Reward[3315708][11]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][11]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][11]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][11]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][11]["Star"] = 5
	tStrengthCopy_Reward[3315708][11]["Flag"] = 11
	-- 龙象般若功上卷残页 - 6%
	tStrengthCopy_Reward[3315708][12] = {}
	tStrengthCopy_Reward[3315708][12]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][12]["ItemChance"] = 600
	tStrengthCopy_Reward[3315708][12]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][12]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][12]["RewardItem"][1]["Id"] = 3309947 -- 龙象般若功·上篇残页[3309947][属性:9][叠加:10000][金币:0], 【表格】龙象般若功上卷残页
	tStrengthCopy_Reward[3315708][12]["RewardItem"][1]["Attr"] = "0 1" -- 龙象般若功·上篇残页*1
	tStrengthCopy_Reward[3315708][12]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][12]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][12]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][12]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][12]["Star"] = 4
	tStrengthCopy_Reward[3315708][12]["Flag"] = 12
	-- 龙象般若功下卷残页 - 6%
	tStrengthCopy_Reward[3315708][13] = {}
	tStrengthCopy_Reward[3315708][13]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][13]["ItemChance"] = 600
	tStrengthCopy_Reward[3315708][13]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][13]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][13]["RewardItem"][1]["Id"] = 3309948 -- 龙象般若功·下篇残页[3309948][属性:9][叠加:10000][金币:0], 【表格】龙象般若功下卷残页
	tStrengthCopy_Reward[3315708][13]["RewardItem"][1]["Attr"] = "0 1" -- 龙象般若功·下篇残页*1
	tStrengthCopy_Reward[3315708][13]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][13]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][13]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][13]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][13]["Star"] = 4
	tStrengthCopy_Reward[3315708][13]["Flag"] = 13
	-- 无量心经上卷残页 - 4%
	tStrengthCopy_Reward[3315708][14] = {}
	tStrengthCopy_Reward[3315708][14]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][14]["ItemChance"] = 400
	tStrengthCopy_Reward[3315708][14]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][14]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][14]["RewardItem"][1]["Id"] = 3309949 -- 无量心经·上篇残页[3309949][属性:9][叠加:10000][金币:0], 【表格】无量心经上卷残页
	tStrengthCopy_Reward[3315708][14]["RewardItem"][1]["Attr"] = "0 1" -- 无量心经·上篇残页*1
	tStrengthCopy_Reward[3315708][14]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][14]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][14]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][14]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][14]["Star"] = 4
	tStrengthCopy_Reward[3315708][14]["Flag"] = 14
	-- 无量心经中卷残页 - 4%
	tStrengthCopy_Reward[3315708][15] = {}
	tStrengthCopy_Reward[3315708][15]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][15]["ItemChance"] = 400
	tStrengthCopy_Reward[3315708][15]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][15]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][15]["RewardItem"][1]["Id"] = 3309950 -- 无量心经·中篇残页[3309950][属性:9][叠加:10000][金币:0], 【表格】无量心经中卷残页
	tStrengthCopy_Reward[3315708][15]["RewardItem"][1]["Attr"] = "0 1" -- 无量心经·中篇残页*1
	tStrengthCopy_Reward[3315708][15]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][15]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][15]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][15]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][15]["Star"] = 4
	tStrengthCopy_Reward[3315708][15]["Flag"] = 15
	-- 无量心经下卷残页 - 4%
	tStrengthCopy_Reward[3315708][16] = {}
	tStrengthCopy_Reward[3315708][16]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][16]["ItemChance"] = 400
	tStrengthCopy_Reward[3315708][16]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][16]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][16]["RewardItem"][1]["Id"] = 3309951 -- 无量心经·下篇残页[3309951][属性:9][叠加:10000][金币:0], 【表格】无量心经下卷残页
	tStrengthCopy_Reward[3315708][16]["RewardItem"][1]["Attr"] = "0 1" -- 无量心经·下篇残页*1
	tStrengthCopy_Reward[3315708][16]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][16]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][16]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][16]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][16]["Star"] = 4
	tStrengthCopy_Reward[3315708][16]["Flag"] = 16
	-- 太乙神功上卷残页 - 3%
	tStrengthCopy_Reward[3315708][17] = {}
	tStrengthCopy_Reward[3315708][17]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][17]["ItemChance"] = 300
	tStrengthCopy_Reward[3315708][17]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][17]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][17]["RewardItem"][1]["Id"] = 3309952 -- 太乙神功·上篇残页[3309952][属性:9][叠加:10000][金币:0], 【表格】太乙神功上卷残页
	tStrengthCopy_Reward[3315708][17]["RewardItem"][1]["Attr"] = "0 1" -- 太乙神功·上篇残页*1
	tStrengthCopy_Reward[3315708][17]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][17]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][17]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][17]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][17]["Star"] = 4
	tStrengthCopy_Reward[3315708][17]["Flag"] = 17
	-- 太乙神功中卷残页 - 3%
	tStrengthCopy_Reward[3315708][18] = {}
	tStrengthCopy_Reward[3315708][18]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][18]["ItemChance"] = 300
	tStrengthCopy_Reward[3315708][18]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][18]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][18]["RewardItem"][1]["Id"] = 3309953 -- 太乙神功·中篇残页[3309953][属性:9][叠加:10000][金币:0], 【表格】太乙神功中卷残页
	tStrengthCopy_Reward[3315708][18]["RewardItem"][1]["Attr"] = "0 1" -- 太乙神功·中篇残页*1
	tStrengthCopy_Reward[3315708][18]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][18]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][18]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][18]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][18]["Star"] = 4
	tStrengthCopy_Reward[3315708][18]["Flag"] = 18
	-- 太乙神功下卷残页 - 3%
	tStrengthCopy_Reward[3315708][19] = {}
	tStrengthCopy_Reward[3315708][19]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][19]["ItemChance"] = 300
	tStrengthCopy_Reward[3315708][19]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][19]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][19]["RewardItem"][1]["Id"] = 3309954 -- 太乙神功·下篇残页[3309954][属性:9][叠加:10000][金币:0], 【表格】太乙神功下卷残页
	tStrengthCopy_Reward[3315708][19]["RewardItem"][1]["Attr"] = "0 1" -- 太乙神功·下篇残页*1
	tStrengthCopy_Reward[3315708][19]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][19]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][19]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][19]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][19]["Star"] = 4
	tStrengthCopy_Reward[3315708][19]["Flag"] = 19
	-- 枯荣禅功上卷残页 - 2%
	tStrengthCopy_Reward[3315708][20] = {}
	tStrengthCopy_Reward[3315708][20]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][20]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][20]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][20]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][20]["RewardItem"][1]["Id"] = 3309955 -- 枯荣禅功·上篇残页[3309955][属性:9][叠加:10000][金币:0], 【表格】枯荣禅功上卷残页
	tStrengthCopy_Reward[3315708][20]["RewardItem"][1]["Attr"] = "0 1" -- 枯荣禅功·上篇残页*1
	tStrengthCopy_Reward[3315708][20]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][20]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][20]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][20]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][20]["Star"] = 4
	tStrengthCopy_Reward[3315708][20]["Flag"] = 20
	-- 枯荣禅功中卷残页 - 2%
	tStrengthCopy_Reward[3315708][21] = {}
	tStrengthCopy_Reward[3315708][21]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][21]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][21]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][21]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][21]["RewardItem"][1]["Id"] = 3309956 -- 枯荣禅功·中篇残页[3309956][属性:9][叠加:10000][金币:0], 【表格】枯荣禅功中卷残页
	tStrengthCopy_Reward[3315708][21]["RewardItem"][1]["Attr"] = "0 1" -- 枯荣禅功·中篇残页*1
	tStrengthCopy_Reward[3315708][21]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][21]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][21]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][21]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][21]["Star"] = 4
	tStrengthCopy_Reward[3315708][21]["Flag"] = 21
	-- 枯荣禅功下卷残页 - 2%
	tStrengthCopy_Reward[3315708][22] = {}
	tStrengthCopy_Reward[3315708][22]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][22]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][22]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][22]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][22]["RewardItem"][1]["Id"] = 3309957 -- 枯荣禅功·下篇残页[3309957][属性:9][叠加:10000][金币:0], 【表格】枯荣禅功下卷残页
	tStrengthCopy_Reward[3315708][22]["RewardItem"][1]["Attr"] = "0 1" -- 枯荣禅功·下篇残页*1
	tStrengthCopy_Reward[3315708][22]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][22]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][22]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][22]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][22]["Star"] = 4
	tStrengthCopy_Reward[3315708][22]["Flag"] = 22
	-- 散功丹 - 2.8%
	tStrengthCopy_Reward[3315708][23] = {}
	tStrengthCopy_Reward[3315708][23]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][23]["ItemChance"] = 280
	tStrengthCopy_Reward[3315708][23]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][23]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][23]["RewardItem"][1]["Id"] = 3005412 -- 散功丹[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹
	tStrengthCopy_Reward[3315708][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 散功丹（赠）*1
	tStrengthCopy_Reward[3315708][23]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][23]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][23]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][23]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][23]["Star"] = 5
	tStrengthCopy_Reward[3315708][23]["Flag"] = 23
	-- 10点气力值 - 1%
	tStrengthCopy_Reward[3315708][24] = {}
	tStrengthCopy_Reward[3315708][24]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][24]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][24]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][24]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][24]["RewardItem"][1]["Id"] = 3006537 -- 10点气力值礼包[3006537][属性:9][叠加:999][金币:0], 【表格】10点气力值
	tStrengthCopy_Reward[3315708][24]["RewardItem"][1]["Attr"] = "0 1" -- 10点气力值礼包*1
	tStrengthCopy_Reward[3315708][24]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][24]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][24]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][24]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][24]["Star"] = 3
	tStrengthCopy_Reward[3315708][24]["Flag"] = 24
	-- 50点气力值 - 1%
	tStrengthCopy_Reward[3315708][25] = {}
	tStrengthCopy_Reward[3315708][25]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][25]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][25]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][25]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][25]["RewardItem"][1]["Id"] = 3304321 -- 精巧气力礼包[3304321][属性:9][叠加:0][金币:0], 【表格】50点气力值
	tStrengthCopy_Reward[3315708][25]["RewardItem"][1]["Attr"] = "0 1" -- 精巧气力礼包*1
	tStrengthCopy_Reward[3315708][25]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][25]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][25]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][25]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][25]["Star"] = 3
	tStrengthCopy_Reward[3315708][25]["Flag"] = 25
	-- 100点气力值 - 1%
	tStrengthCopy_Reward[3315708][26] = {}
	tStrengthCopy_Reward[3315708][26]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][26]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][26]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][26]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][26]["RewardItem"][1]["Id"] = 3002027 -- 100点气力值礼包[3002027][属性:11][叠加:100][金币:0], 【表格】100点气力值
	tStrengthCopy_Reward[3315708][26]["RewardItem"][1]["Attr"] = "0 1" -- 100点气力值礼包*1
	tStrengthCopy_Reward[3315708][26]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][26]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][26]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][26]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][26]["Star"] = 3
	tStrengthCopy_Reward[3315708][26]["Flag"] = 26
	-- 200点气力值 - 1%
	tStrengthCopy_Reward[3315708][27] = {}
	tStrengthCopy_Reward[3315708][27]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][27]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][27]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][27]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][27]["RewardItem"][1]["Id"] = 3200660 -- 200点气力值礼包 [3200660][属性:9][叠加:100][金币:0], 【表格】200点气力值
	tStrengthCopy_Reward[3315708][27]["RewardItem"][1]["Attr"] = "0 1" -- 200点气力值礼包 *1
	tStrengthCopy_Reward[3315708][27]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][27]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][27]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][27]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][27]["Star"] = 3
	tStrengthCopy_Reward[3315708][27]["Flag"] = 27
	-- 500点气力值 - 3%
	tStrengthCopy_Reward[3315708][28] = {}
	tStrengthCopy_Reward[3315708][28]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][28]["ItemChance"] = 300
	tStrengthCopy_Reward[3315708][28]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][28]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][28]["RewardItem"][1]["Id"] = 3005126 -- 普通气力礼包[3005126][属性:9][叠加:0][金币:0], 【表格】500点气力值
	tStrengthCopy_Reward[3315708][28]["RewardItem"][1]["Attr"] = "0 1" -- 普通气力礼包*1
	tStrengthCopy_Reward[3315708][28]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][28]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][28]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][28]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][28]["Star"] = 3
	tStrengthCopy_Reward[3315708][28]["Flag"] = 28
	-- 1000点气力值 - 0.5%
	tStrengthCopy_Reward[3315708][29] = {}
	tStrengthCopy_Reward[3315708][29]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][29]["ItemChance"] = 50
	tStrengthCopy_Reward[3315708][29]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][29]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][29]["RewardItem"][1]["Id"] = 3005127 -- 中级气力礼包[3005127][属性:9][叠加:0][金币:0], 【表格】1000点气力值
	tStrengthCopy_Reward[3315708][29]["RewardItem"][1]["Attr"] = "0 1" -- 中级气力礼包*1
	tStrengthCopy_Reward[3315708][29]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][29]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][29]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][29]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][29]["Star"] = 4
	tStrengthCopy_Reward[3315708][29]["Flag"] = 29
	-- 微光星陨石 - 1%
	tStrengthCopy_Reward[3315708][30] = {}
	tStrengthCopy_Reward[3315708][30]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][30]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][30]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][30]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][30]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tStrengthCopy_Reward[3315708][30]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tStrengthCopy_Reward[3315708][30]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][30]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][30]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][30]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][30]["Star"] = 3
	tStrengthCopy_Reward[3315708][30]["Flag"] = 30
	-- 微光星陨石 - 1%
	tStrengthCopy_Reward[3315708][31] = {}
	tStrengthCopy_Reward[3315708][31]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][31]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][31]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][31]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][31]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tStrengthCopy_Reward[3315708][31]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tStrengthCopy_Reward[3315708][31]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][31]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][31]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][31]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][31]["Star"] = 3
	tStrengthCopy_Reward[3315708][31]["Flag"] = 31
	-- 明亮星陨石 - 5%
	tStrengthCopy_Reward[3315708][32] = {}
	tStrengthCopy_Reward[3315708][32]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][32]["ItemChance"] = 500
	tStrengthCopy_Reward[3315708][32]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][32]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][32]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tStrengthCopy_Reward[3315708][32]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tStrengthCopy_Reward[3315708][32]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][32]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][32]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][32]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][32]["Star"] = 3
	tStrengthCopy_Reward[3315708][32]["Flag"] = 32
	-- 明亮星陨石 - 2%
	tStrengthCopy_Reward[3315708][33] = {}
	tStrengthCopy_Reward[3315708][33]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][33]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][33]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][33]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][33]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tStrengthCopy_Reward[3315708][33]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tStrengthCopy_Reward[3315708][33]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][33]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][33]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][33]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][33]["Star"] = 3
	tStrengthCopy_Reward[3315708][33]["Flag"] = 33
	-- 晶莹星陨石 - 0.5%
	tStrengthCopy_Reward[3315708][34] = {}
	tStrengthCopy_Reward[3315708][34]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][34]["ItemChance"] = 50
	tStrengthCopy_Reward[3315708][34]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][34]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][34]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tStrengthCopy_Reward[3315708][34]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tStrengthCopy_Reward[3315708][34]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][34]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][34]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][34]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][34]["Star"] = 4
	tStrengthCopy_Reward[3315708][34]["Flag"] = 34
	--  +1赤炼石 - 1%
	tStrengthCopy_Reward[3315708][35] = {}
	tStrengthCopy_Reward[3315708][35]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][35]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][35]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][35]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][35]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】 +1赤炼石
	tStrengthCopy_Reward[3315708][35]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+1赤炼石（赠）*1
	tStrengthCopy_Reward[3315708][35]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][35]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][35]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][35]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][35]["Star"] = 3
	tStrengthCopy_Reward[3315708][35]["Flag"] = 35
	--  +2赤炼石 - 1%
	tStrengthCopy_Reward[3315708][36] = {}
	tStrengthCopy_Reward[3315708][36]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][36]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][36]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][36]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][36]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】 +2赤炼石
	tStrengthCopy_Reward[3315708][36]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+2赤炼石（赠）*1
	tStrengthCopy_Reward[3315708][36]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][36]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][36]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][36]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][36]["Star"] = 3
	tStrengthCopy_Reward[3315708][36]["Flag"] = 36
	--  +2赤炼石 - 1%
	tStrengthCopy_Reward[3315708][37] = {}
	tStrengthCopy_Reward[3315708][37]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][37]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][37]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][37]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][37]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】 +2赤炼石
	tStrengthCopy_Reward[3315708][37]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 7天时效(激活)的+2赤炼石（赠）*2
	tStrengthCopy_Reward[3315708][37]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][37]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][37]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][37]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][37]["Star"] = 3
	tStrengthCopy_Reward[3315708][37]["Flag"] = 37
	--  +3赤炼石 - 5%
	tStrengthCopy_Reward[3315708][38] = {}
	tStrengthCopy_Reward[3315708][38]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][38]["ItemChance"] = 500
	tStrengthCopy_Reward[3315708][38]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][38]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][38]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】 +3赤炼石
	tStrengthCopy_Reward[3315708][38]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石（赠）*1
	tStrengthCopy_Reward[3315708][38]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][38]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][38]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][38]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][38]["Star"] = 3
	tStrengthCopy_Reward[3315708][38]["Flag"] = 38
	--  +4赤炼石 - 2%
	tStrengthCopy_Reward[3315708][39] = {}
	tStrengthCopy_Reward[3315708][39]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][39]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][39]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][39]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][39]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】 +4赤炼石
	tStrengthCopy_Reward[3315708][39]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+4赤炼石（赠）*1
	tStrengthCopy_Reward[3315708][39]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][39]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][39]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][39]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][39]["Star"] = 3
	tStrengthCopy_Reward[3315708][39]["Flag"] = 39
	--  +5赤炼石 - 0.5%
	tStrengthCopy_Reward[3315708][40] = {}
	tStrengthCopy_Reward[3315708][40]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][40]["ItemChance"] = 50
	tStrengthCopy_Reward[3315708][40]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][40]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][40]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】 +5赤炼石
	tStrengthCopy_Reward[3315708][40]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5赤炼石（赠）*1
	tStrengthCopy_Reward[3315708][40]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][40]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][40]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][40]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][40]["Star"] = 4
	tStrengthCopy_Reward[3315708][40]["Flag"] = 40
	-- 强效护心丹 - 1%
	tStrengthCopy_Reward[3315708][41] = {}
	tStrengthCopy_Reward[3315708][41]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][41]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][41]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][41]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][41]["RewardItem"][1]["Id"] = 3002030 -- 强效护心丹[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹
	tStrengthCopy_Reward[3315708][41]["RewardItem"][1]["Attr"] = "0 10" -- 强效护心丹*10
	tStrengthCopy_Reward[3315708][41]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][41]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][41]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][41]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][41]["Star"] = 3
	tStrengthCopy_Reward[3315708][41]["Flag"] = 41
	-- 免费强炼丹 - 1%
	tStrengthCopy_Reward[3315708][42] = {}
	tStrengthCopy_Reward[3315708][42]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][42]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][42]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][42]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][42]["RewardItem"][1]["Id"] = 3003124 -- 免费强炼丹[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tStrengthCopy_Reward[3315708][42]["RewardItem"][1]["Attr"] = "0 10 3" -- 免费强炼丹（赠）*10
	tStrengthCopy_Reward[3315708][42]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][42]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][42]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][42]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][42]["Star"] = 3
	tStrengthCopy_Reward[3315708][42]["Flag"] = 42
	-- 通神丹 - 1%
	tStrengthCopy_Reward[3315708][43] = {}
	tStrengthCopy_Reward[3315708][43]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][43]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][43]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][43]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][43]["RewardItem"][1]["Id"] = 3003125 -- 通神丹[3003125][属性:0][叠加:10000][金币:0], 【表格】通神丹
	tStrengthCopy_Reward[3315708][43]["RewardItem"][1]["Attr"] = "0 5 3" -- 通神丹（赠）*5
	tStrengthCopy_Reward[3315708][43]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][43]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][43]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][43]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][43]["Star"] = 3
	tStrengthCopy_Reward[3315708][43]["Flag"] = 43
	-- 究极通神丹 - 0.5%
	tStrengthCopy_Reward[3315708][44] = {}
	tStrengthCopy_Reward[3315708][44]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][44]["ItemChance"] = 50
	tStrengthCopy_Reward[3315708][44]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][44]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][44]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tStrengthCopy_Reward[3315708][44]["RewardItem"][1]["Attr"] = "0 3 3" -- 究极通神丹（赠）*3
	tStrengthCopy_Reward[3315708][44]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][44]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][44]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][44]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][44]["Star"] = 3
	tStrengthCopy_Reward[3315708][44]["Flag"] = 44
	-- 秘制免费修炼丹 - 1%
	tStrengthCopy_Reward[3315708][45] = {}
	tStrengthCopy_Reward[3315708][45]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][45]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][45]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][45]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][45]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹[3002926][属性:11][叠加:10000][金币:0], 【表格】秘制免费修炼丹
	tStrengthCopy_Reward[3315708][45]["RewardItem"][1]["Attr"] = "0 10" -- 秘制免费修炼丹*10
	tStrengthCopy_Reward[3315708][45]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][45]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][45]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][45]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][45]["Star"] = 3
	tStrengthCopy_Reward[3315708][45]["Flag"] = 45
	-- 魔武通玄丹 - 0.5%
	tStrengthCopy_Reward[3315708][46] = {}
	tStrengthCopy_Reward[3315708][46]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][46]["ItemChance"] = 50
	tStrengthCopy_Reward[3315708][46]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][46]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][46]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tStrengthCopy_Reward[3315708][46]["RewardItem"][1]["Attr"] = "0 3" -- 魔武通玄丹*3
	tStrengthCopy_Reward[3315708][46]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][46]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][46]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][46]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][46]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][46]["Star"] = 4
	tStrengthCopy_Reward[3315708][46]["Flag"] = 46
	-- 流星 - 3%
	tStrengthCopy_Reward[3315708][47] = {}
	tStrengthCopy_Reward[3315708][47]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][47]["ItemChance"] = 300
	tStrengthCopy_Reward[3315708][47]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][47]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][47]["RewardItem"][1]["Id"] = 1088001 -- 流星[1088001][属性:0][叠加:0][金币:10000], 【表格】流星
	tStrengthCopy_Reward[3315708][47]["RewardItem"][1]["Attr"] = "0 1 3" -- 流星（赠）*1
	tStrengthCopy_Reward[3315708][47]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][47]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][47]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][47]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][47]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][47]["Star"] = 3
	tStrengthCopy_Reward[3315708][47]["Flag"] = 47
	-- 流星卷 - 1%
	tStrengthCopy_Reward[3315708][48] = {}
	tStrengthCopy_Reward[3315708][48]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][48]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][48]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][48]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][48]["RewardItem"][1]["Id"] = 3001269 -- 流星大礼卷[3001269][属性:9][叠加:0][金币:0], 【表格】流星卷
	tStrengthCopy_Reward[3315708][48]["RewardItem"][1]["Attr"] = "0 1" -- 流星大礼卷*1
	tStrengthCopy_Reward[3315708][48]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][48]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][48]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][48]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][48]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][48]["Star"] = 3
	tStrengthCopy_Reward[3315708][48]["Flag"] = 48
	-- 龙珠 - 1%
	tStrengthCopy_Reward[3315708][49] = {}
	tStrengthCopy_Reward[3315708][49]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][49]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][49]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][49]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][49]["RewardItem"][1]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tStrengthCopy_Reward[3315708][49]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙珠（赠）*1
	tStrengthCopy_Reward[3315708][49]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][49]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][49]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][49]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][49]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][49]["Star"] = 3
	tStrengthCopy_Reward[3315708][49]["Flag"] = 49
	-- 龙珠卷 - 1%
	tStrengthCopy_Reward[3315708][50] = {}
	tStrengthCopy_Reward[3315708][50]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][50]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][50]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][50]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][50]["RewardItem"][1]["Id"] = 3300177 -- 龙珠卷(赠)[3300177][属性:11][叠加:0][金币:0], 【表格】龙珠卷
	tStrengthCopy_Reward[3315708][50]["RewardItem"][1]["Attr"] = "0 1" -- 龙珠卷(赠)*1
	tStrengthCopy_Reward[3315708][50]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][50]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][50]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][50]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][50]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][50]["Star"] = 3
	tStrengthCopy_Reward[3315708][50]["Flag"] = 50
	-- 100修行值 - 3.5%
	tStrengthCopy_Reward[3315708][51] = {}
	tStrengthCopy_Reward[3315708][51]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][51]["ItemChance"] = 350
	tStrengthCopy_Reward[3315708][51]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][51]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][51]["RewardItem"][1]["Id"] = 3002553 -- 妙手修行礼包[3002553][属性:9][叠加:100][金币:0], 【表格】100修行值
	tStrengthCopy_Reward[3315708][51]["RewardItem"][1]["Attr"] = "0 1" -- 妙手修行礼包*1
	tStrengthCopy_Reward[3315708][51]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][51]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][51]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][51]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][51]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][51]["Star"] = 3
	tStrengthCopy_Reward[3315708][51]["Flag"] = 51
	-- 300修行值 - 1%
	tStrengthCopy_Reward[3315708][52] = {}
	tStrengthCopy_Reward[3315708][52]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][52]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][52]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][52]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][52]["RewardItem"][1]["Id"] = 3005124 -- 精进修行礼包[3005124][属性:9][叠加:0][金币:0], 【表格】300修行值
	tStrengthCopy_Reward[3315708][52]["RewardItem"][1]["Attr"] = "0 1" -- 精进修行礼包*1
	tStrengthCopy_Reward[3315708][52]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][52]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][52]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][52]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][52]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][52]["Star"] = 3
	tStrengthCopy_Reward[3315708][52]["Flag"] = 52
	-- 黄色神纹精粹 - 0%
	tStrengthCopy_Reward[3315708][53] = {}
	tStrengthCopy_Reward[3315708][53]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][53]["ItemChance"] = 0
	tStrengthCopy_Reward[3315708][53]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][53]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][53]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tStrengthCopy_Reward[3315708][53]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹精粹*1
	tStrengthCopy_Reward[3315708][53]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][53]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][53]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][53]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][53]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][53]["Star"] = 3
	tStrengthCopy_Reward[3315708][53]["Flag"] = 53
	-- 黄色神纹精粹 - 2%
	tStrengthCopy_Reward[3315708][54] = {}
	tStrengthCopy_Reward[3315708][54]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][54]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][54]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][54]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][54]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tStrengthCopy_Reward[3315708][54]["RewardItem"][1]["Attr"] = "0 5 3" -- 黄色神纹精粹*5
	tStrengthCopy_Reward[3315708][54]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][54]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][54]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][54]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][54]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][54]["Star"] = 3
	tStrengthCopy_Reward[3315708][54]["Flag"] = 54
	-- 黄色神纹精粹 - 1.5%
	tStrengthCopy_Reward[3315708][55] = {}
	tStrengthCopy_Reward[3315708][55]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][55]["ItemChance"] = 150
	tStrengthCopy_Reward[3315708][55]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][55]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][55]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tStrengthCopy_Reward[3315708][55]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹*10
	tStrengthCopy_Reward[3315708][55]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][55]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][55]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][55]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][55]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][55]["Star"] = 3
	tStrengthCopy_Reward[3315708][55]["Flag"] = 55
	-- 黄色神纹精粹 - 1%
	tStrengthCopy_Reward[3315708][56] = {}
	tStrengthCopy_Reward[3315708][56]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][56]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][56]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][56]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][56]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tStrengthCopy_Reward[3315708][56]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹*20
	tStrengthCopy_Reward[3315708][56]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][56]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][56]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][56]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][56]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][56]["Star"] = 3
	tStrengthCopy_Reward[3315708][56]["Flag"] = 56
	-- 万能神纹精粹 - 0%
	tStrengthCopy_Reward[3315708][57] = {}
	tStrengthCopy_Reward[3315708][57]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][57]["ItemChance"] = 0
	tStrengthCopy_Reward[3315708][57]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][57]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][57]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tStrengthCopy_Reward[3315708][57]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹*1
	tStrengthCopy_Reward[3315708][57]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][57]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][57]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][57]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][57]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][57]["Star"] = 3
	tStrengthCopy_Reward[3315708][57]["Flag"] = 57
	-- 万能神纹精粹 - 2%
	tStrengthCopy_Reward[3315708][58] = {}
	tStrengthCopy_Reward[3315708][58]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][58]["ItemChance"] = 200
	tStrengthCopy_Reward[3315708][58]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][58]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][58]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tStrengthCopy_Reward[3315708][58]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tStrengthCopy_Reward[3315708][58]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][58]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][58]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][58]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][58]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][58]["Star"] = 3
	tStrengthCopy_Reward[3315708][58]["Flag"] = 58
	-- 万能神纹精粹 - 1.5%
	tStrengthCopy_Reward[3315708][59] = {}
	tStrengthCopy_Reward[3315708][59]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][59]["ItemChance"] = 150
	tStrengthCopy_Reward[3315708][59]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][59]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][59]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tStrengthCopy_Reward[3315708][59]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹*10
	tStrengthCopy_Reward[3315708][59]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][59]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][59]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][59]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][59]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][59]["Star"] = 3
	tStrengthCopy_Reward[3315708][59]["Flag"] = 59
	-- 万能神纹精粹 - 1%
	tStrengthCopy_Reward[3315708][60] = {}
	tStrengthCopy_Reward[3315708][60]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][60]["ItemChance"] = 100
	tStrengthCopy_Reward[3315708][60]["RewardItem"] = {}
	tStrengthCopy_Reward[3315708][60]["RewardItem"][1] = {}
	tStrengthCopy_Reward[3315708][60]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tStrengthCopy_Reward[3315708][60]["RewardItem"][1]["Attr"] = "0 20 3" -- 万能神纹精粹*20
	tStrengthCopy_Reward[3315708][60]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][60]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][60]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][60]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][60]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][60]["Star"] = 3
	tStrengthCopy_Reward[3315708][60]["Flag"] = 60
	-- 100修为值 - 5.1%
	tStrengthCopy_Reward[3315708][61] = {}
	tStrengthCopy_Reward[3315708][61]["RandomItemChanceType"] = 2
	tStrengthCopy_Reward[3315708][61]["ItemChance"] = 510
	tStrengthCopy_Reward[3315708][61]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315708][61]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】100修为值
	tStrengthCopy_Reward[3315708][61]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315708][61]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315708][61]["RewardEffect"]["Effect"] = "angelwing"
	tStrengthCopy_Reward[3315708][61]["LogId"] = 12001838
	tStrengthCopy_Reward[3315708][61]["LogStep"] = " 5[2]"
	tStrengthCopy_Reward[3315708][61]["Star"] = 3
	tStrengthCopy_Reward[3315708][61]["Flag"] = 61


	tStrengthCopy_Reward[3315709] = {}
	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315709][1]
	-- ===删除:3315709,1
	-- ===消耗金币:32400000
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315709][1] = {}
	tStrengthCopy_Reward[3315709][1]["LogId"] = 12001838
	tStrengthCopy_Reward[3315709][1]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315709][1]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315709][1]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315709][1]["DeleteItem"][1]["Id"] = 3315709 -- 【库】 3315709 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315709][1]["CostMoney"] = {}
	tStrengthCopy_Reward[3315709][1]["CostMoney"]["Value"] = 32400000 -- 消耗金币
	tStrengthCopy_Reward[3315709][1]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315709][1]["RewardRepairValue"]["Value"] = 18000 -- 修为值, 【需求】18000修为值
	tStrengthCopy_Reward[3315709][1]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315709][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315709][1]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315709][2] = {}
	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315709][2]
	-- ===删除:3315709,1
	-- ===LogStep: 2[2]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315709][2]["LogId"] = 12001838
	tStrengthCopy_Reward[3315709][2]["LogStep"] = "2[2]"
	tStrengthCopy_Reward[3315709][2]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315709][2]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315709][2]["DeleteItem"][1]["Id"] = 3315709 -- 【库】 3315709 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315709][2]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315709][2]["RewardRepairValue"]["Value"] = 9000 -- 修为值, 【需求】9000修为值
	tStrengthCopy_Reward[3315709][2]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315709][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315709][2]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315710] = {}
	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315710][1]
	-- ===删除:3315710,1
	-- ===消耗金币:21600000
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315710][1] = {}
	tStrengthCopy_Reward[3315710][1]["LogId"] = 12001838
	tStrengthCopy_Reward[3315710][1]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315710][1]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315710][1]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315710][1]["DeleteItem"][1]["Id"] = 3315710 -- 【库】 3315710 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315710][1]["CostMoney"] = {}
	tStrengthCopy_Reward[3315710][1]["CostMoney"]["Value"] = 21600000 -- 消耗金币
	tStrengthCopy_Reward[3315710][1]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315710][1]["RewardRepairValue"]["Value"] = 12000 -- 修为值, 【需求】12000修为值
	tStrengthCopy_Reward[3315710][1]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315710][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315710][1]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315710][2] = {}
	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315710][2]
	-- ===删除:3315710,1
	-- ===LogStep: 2[2]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315710][2]["LogId"] = 12001838
	tStrengthCopy_Reward[3315710][2]["LogStep"] = "2[2]"
	tStrengthCopy_Reward[3315710][2]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315710][2]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315710][2]["DeleteItem"][1]["Id"] = 3315710 -- 【库】 3315710 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315710][2]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315710][2]["RewardRepairValue"]["Value"] = 6000 -- 修为值, 【需求】6000修为值
	tStrengthCopy_Reward[3315710][2]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315710][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315710][2]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315711] = {}
	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315711][1]
	-- ===删除:3315711,1
	-- ===消耗金币:10800000
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315711][1] = {}
	tStrengthCopy_Reward[3315711][1]["LogId"] = 12001838
	tStrengthCopy_Reward[3315711][1]["LogStep"] = "2[1]"
	tStrengthCopy_Reward[3315711][1]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315711][1]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315711][1]["DeleteItem"][1]["Id"] = 3315711 -- 【库】 3315711 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315711][1]["CostMoney"] = {}
	tStrengthCopy_Reward[3315711][1]["CostMoney"]["Value"] = 10800000 -- 消耗金币
	tStrengthCopy_Reward[3315711][1]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315711][1]["RewardRepairValue"]["Value"] = 6000 -- 修为值, 【需求】6000修为值
	tStrengthCopy_Reward[3315711][1]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315711][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315711][1]["RewardEffect"]["Effect"] = "angelwing"


	tStrengthCopy_Reward[3315711][2] = {}
	-- ===伏魔易宝
	-- ===索引:tStrengthCopy_Reward[3315711][2]
	-- ===删除:3315711,1
	-- ===LogStep: 2[2]
	-- ===
	-- ===
	tStrengthCopy_Reward[3315711][2]["LogId"] = 12001838
	tStrengthCopy_Reward[3315711][2]["LogStep"] = "2[2]"
	tStrengthCopy_Reward[3315711][2]["DeleteItem"] = {}
	tStrengthCopy_Reward[3315711][2]["DeleteItem"][1] = {}
	tStrengthCopy_Reward[3315711][2]["DeleteItem"][1]["Id"] = 3315711 -- 【库】 3315711 【库里没有该物品】[属性:]
	tStrengthCopy_Reward[3315711][2]["RewardRepairValue"] = {}
	tStrengthCopy_Reward[3315711][2]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】3000修为值
	tStrengthCopy_Reward[3315711][2]["RewardEffect"] = {}
	tStrengthCopy_Reward[3315711][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_Reward[3315711][2]["RewardEffect"]["Effect"] = "angelwing"


-- 临时表  userid做索引
local tStrengthCopy_MonsterData = {}
-- 副本怪物数量
	tStrengthCopy_MonsterData[5994] = {}
	
	tStrengthCopy_MonsterData[6071] = {}
	
	tStrengthCopy_MonsterData[5995] = {}
	
	tStrengthCopy_MonsterData[5996] = {}
	
	tStrengthCopy_MonsterData[5997] = {}
	
	tStrengthCopy_MonsterData[5998] = {}
	
	tStrengthCopy_MonsterData[5999] = {}
	
	tStrengthCopy_MonsterData[6207] = {}
	
	tStrengthCopy_MonsterData[6208] = {}
	
	tStrengthCopy_MonsterData[6271] = {}
	
local tStrengthCopy_MonsterFlag = {}
--表示第几波
	tStrengthCopy_MonsterFlag[5994] = {}

	
local tStrengthCopy_BrushMonster = {}
	tStrengthCopy_BrushMonster[5994] = {}
	tStrengthCopy_BrushMonster[5994]["GenId"] = 30587
	tStrengthCopy_BrushMonster[5994]["Monster"] = 6071
	tStrengthCopy_BrushMonster[5994]["Num"] = 20
	tStrengthCopy_BrushMonster[5994][1] = {}
	tStrengthCopy_BrushMonster[5994][1]["PosX"] = 36
	tStrengthCopy_BrushMonster[5994][1]["PosY"] = 39
	
	tStrengthCopy_BrushMonster[5994][2] = {}
	tStrengthCopy_BrushMonster[5994][2]["PosX"] = 40
	tStrengthCopy_BrushMonster[5994][2]["PosY"] = 40
	
	tStrengthCopy_BrushMonster[5994][3] = {}
	tStrengthCopy_BrushMonster[5994][3]["PosX"] = 39
	tStrengthCopy_BrushMonster[5994][3]["PosY"] = 35
	
	tStrengthCopy_BrushMonster[5994][4] = {}
	tStrengthCopy_BrushMonster[5994][4]["PosX"] = 44
	tStrengthCopy_BrushMonster[5994][4]["PosY"] = 41
	
	tStrengthCopy_BrushMonster[5994][5] = {}
	tStrengthCopy_BrushMonster[5994][5]["PosX"] = 49
	tStrengthCopy_BrushMonster[5994][5]["PosY"] = 42
	
	tStrengthCopy_BrushMonster[5994][6] = {}
	tStrengthCopy_BrushMonster[5994][6]["PosX"] = 49
	tStrengthCopy_BrushMonster[5994][6]["PosY"] = 49
	
	tStrengthCopy_BrushMonster[5994][7] = {}
	tStrengthCopy_BrushMonster[5994][7]["PosX"] = 39
	tStrengthCopy_BrushMonster[5994][7]["PosY"] = 46
	
	tStrengthCopy_BrushMonster[5994][8] = {}
	tStrengthCopy_BrushMonster[5994][8]["PosX"] = 44
	tStrengthCopy_BrushMonster[5994][8]["PosY"] = 52
	
	tStrengthCopy_BrushMonster[5994][9] = {}
	tStrengthCopy_BrushMonster[5994][9]["PosX"] = 48
	tStrengthCopy_BrushMonster[5994][9]["PosY"] = 32
	
	tStrengthCopy_BrushMonster[5994][10] = {}
	tStrengthCopy_BrushMonster[5994][10]["PosX"] = 43
	tStrengthCopy_BrushMonster[5994][10]["PosY"] = 30
	
	tStrengthCopy_BrushMonster[5994][11] = {}
	tStrengthCopy_BrushMonster[5994][11]["PosX"] = 36
	tStrengthCopy_BrushMonster[5994][11]["PosY"] = 30
	
	tStrengthCopy_BrushMonster[5994][12] = {}
	tStrengthCopy_BrushMonster[5994][12]["PosX"] = 32
	tStrengthCopy_BrushMonster[5994][12]["PosY"] = 31
	
	tStrengthCopy_BrushMonster[5994][13] = {}
	tStrengthCopy_BrushMonster[5994][13]["PosX"] = 37
	tStrengthCopy_BrushMonster[5994][13]["PosY"] = 34
	
	tStrengthCopy_BrushMonster[5994][14] = {}
	tStrengthCopy_BrushMonster[5994][14]["PosX"] = 47
	tStrengthCopy_BrushMonster[5994][14]["PosY"] = 34
	
	tStrengthCopy_BrushMonster[5994][15] = {}
	tStrengthCopy_BrushMonster[5994][15]["PosX"] = 52
	tStrengthCopy_BrushMonster[5994][15]["PosY"] = 37
	
	tStrengthCopy_BrushMonster[5994][16] = {}
	tStrengthCopy_BrushMonster[5994][16]["PosX"] = 52
	tStrengthCopy_BrushMonster[5994][16]["PosY"] = 42
	
	tStrengthCopy_BrushMonster[5994][17] = {}
	tStrengthCopy_BrushMonster[5994][17]["PosX"] = 55
	tStrengthCopy_BrushMonster[5994][17]["PosY"] = 46
	
	tStrengthCopy_BrushMonster[5994][18] = {}
	tStrengthCopy_BrushMonster[5994][18]["PosX"] = 50
	tStrengthCopy_BrushMonster[5994][18]["PosY"] = 45
	
	tStrengthCopy_BrushMonster[5994][19] = {}
	tStrengthCopy_BrushMonster[5994][19]["PosX"] = 47
	tStrengthCopy_BrushMonster[5994][19]["PosY"] = 48
	
	tStrengthCopy_BrushMonster[5994][20] = {}
	tStrengthCopy_BrushMonster[5994][20]["PosX"] = 43
	tStrengthCopy_BrushMonster[5994][20]["PosY"] = 51
	
	
	tStrengthCopy_BrushMonster[6071] = {}
	tStrengthCopy_BrushMonster[6071]["MapId"] = 10759
	tStrengthCopy_BrushMonster[6071]["GenId"] = 30587
	tStrengthCopy_BrushMonster[6071]["Monster"] = 5995
	tStrengthCopy_BrushMonster[6071]["Num"] = 1
	tStrengthCopy_BrushMonster[6071][1] = {}
	tStrengthCopy_BrushMonster[6071][1]["PosX"] = 41
	tStrengthCopy_BrushMonster[6071][1]["PosY"] = 39
-- 中级
	tStrengthCopy_BrushMonster[5996] = {}
	tStrengthCopy_BrushMonster[5996]["MapId"] = 10759
	tStrengthCopy_BrushMonster[5996]["GenId"] = 30588
	tStrengthCopy_BrushMonster[5996]["Monster"] = 5997
	tStrengthCopy_BrushMonster[5996]["Num"] = 1
	tStrengthCopy_BrushMonster[5996][1] = {}
	tStrengthCopy_BrushMonster[5996][1]["PosX"] = 45
	tStrengthCopy_BrushMonster[5996][1]["PosY"] = 40

	tStrengthCopy_BrushMonster[5997] = {}
	tStrengthCopy_BrushMonster[5997]["MapId"] = 10759
	tStrengthCopy_BrushMonster[5997]["GenId"] = 30588
	tStrengthCopy_BrushMonster[5997]["Monster"] = 5998
	tStrengthCopy_BrushMonster[5997]["Num"] = 2
	tStrengthCopy_BrushMonster[5997][1] = {}
	tStrengthCopy_BrushMonster[5997][1]["PosX"] = 52
	tStrengthCopy_BrushMonster[5997][1]["PosY"] = 52
	
	tStrengthCopy_BrushMonster[5997][2] = {}
	tStrengthCopy_BrushMonster[5997][2]["PosX"] = 42
	tStrengthCopy_BrushMonster[5997][2]["PosY"] = 43
-- 高级
	tStrengthCopy_BrushMonster[5999] = {}
	tStrengthCopy_BrushMonster[5999]["MapId"] = 10759
	tStrengthCopy_BrushMonster[5999]["GenId"] = 30589
	tStrengthCopy_BrushMonster[5999]["Monster"] = 6207
	tStrengthCopy_BrushMonster[5999]["Num"] = 1
	tStrengthCopy_BrushMonster[5999][1] = {}
	tStrengthCopy_BrushMonster[5999][1]["PosX"] = 48
	tStrengthCopy_BrushMonster[5999][1]["PosY"] = 45

	-- tStrengthCopy_BrushMonster[5999][2] = {}
	-- tStrengthCopy_BrushMonster[5999][2]["PosX"] = 45
	-- tStrengthCopy_BrushMonster[5999][2]["PosY"] = 34
	

	
	tStrengthCopy_BrushMonster[6207] = {}
	tStrengthCopy_BrushMonster[6207]["MapId"] = 10759
	tStrengthCopy_BrushMonster[6207]["GenId"] = 30589
	tStrengthCopy_BrushMonster[6207]["Monster"] = 6208
	tStrengthCopy_BrushMonster[6207]["Num"] = 18
	tStrengthCopy_BrushMonster[6207][1] = {}
	tStrengthCopy_BrushMonster[6207][1]["PosX"] = 41
	tStrengthCopy_BrushMonster[6207][1]["PosY"] = 39
	
	tStrengthCopy_BrushMonster[6207][2] = {}
	tStrengthCopy_BrushMonster[6207][2]["PosX"] = 44
	tStrengthCopy_BrushMonster[6207][2]["PosY"] = 30
	
	tStrengthCopy_BrushMonster[6207][3] = {}
	tStrengthCopy_BrushMonster[6207][3]["PosX"] = 44
	tStrengthCopy_BrushMonster[6207][3]["PosY"] = 36
	
	tStrengthCopy_BrushMonster[6207][4] = {}
	tStrengthCopy_BrushMonster[6207][4]["PosX"] = 46
	tStrengthCopy_BrushMonster[6207][4]["PosY"] = 38
	
	tStrengthCopy_BrushMonster[6207][5] = {}
	tStrengthCopy_BrushMonster[6207][5]["PosX"] = 49
	tStrengthCopy_BrushMonster[6207][5]["PosY"] = 42
	
	tStrengthCopy_BrushMonster[6207][6] = {}
	tStrengthCopy_BrushMonster[6207][6]["PosX"] = 44
	tStrengthCopy_BrushMonster[6207][6]["PosY"] = 45
	
	tStrengthCopy_BrushMonster[6207][7] = {}
	tStrengthCopy_BrushMonster[6207][7]["PosX"] = 48
	tStrengthCopy_BrushMonster[6207][7]["PosY"] = 47
	
	tStrengthCopy_BrushMonster[6207][8] = {}
	tStrengthCopy_BrushMonster[6207][8]["PosX"] = 42
	tStrengthCopy_BrushMonster[6207][8]["PosY"] = 48
	
	tStrengthCopy_BrushMonster[6207][9] = {}
	tStrengthCopy_BrushMonster[6207][9]["PosX"] = 43
	tStrengthCopy_BrushMonster[6207][9]["PosY"] = 52
	
	tStrengthCopy_BrushMonster[6207][10] = {}
	tStrengthCopy_BrushMonster[6207][10]["PosX"] = 49
	tStrengthCopy_BrushMonster[6207][10]["PosY"] = 54
	
	tStrengthCopy_BrushMonster[6207][11] = {}
	tStrengthCopy_BrushMonster[6207][11]["PosX"] = 33
	tStrengthCopy_BrushMonster[6207][11]["PosY"] = 47
	
	tStrengthCopy_BrushMonster[6207][12] = {}
	tStrengthCopy_BrushMonster[6207][12]["PosX"] = 37
	tStrengthCopy_BrushMonster[6207][12]["PosY"] = 50
	
	tStrengthCopy_BrushMonster[6207][13] = {}
	tStrengthCopy_BrushMonster[6207][13]["PosX"] = 41
	tStrengthCopy_BrushMonster[6207][13]["PosY"] = 53
	
	tStrengthCopy_BrushMonster[6207][14] = {}
	tStrengthCopy_BrushMonster[6207][14]["PosX"] = 44
	tStrengthCopy_BrushMonster[6207][14]["PosY"] = 56
	
	tStrengthCopy_BrushMonster[6207][15] = {}
	tStrengthCopy_BrushMonster[6207][15]["PosX"] = 53
	tStrengthCopy_BrushMonster[6207][15]["PosY"] = 62

	tStrengthCopy_BrushMonster[6207][16] = {}
	tStrengthCopy_BrushMonster[6207][16]["PosX"] = 44
	tStrengthCopy_BrushMonster[6207][16]["PosY"] = 30

	tStrengthCopy_BrushMonster[6207][17] = {}
	tStrengthCopy_BrushMonster[6207][17]["PosX"] = 49
	tStrengthCopy_BrushMonster[6207][17]["PosY"] = 33

	tStrengthCopy_BrushMonster[6207][18] = {}
	tStrengthCopy_BrushMonster[6207][18]["PosX"] = 58
	tStrengthCopy_BrushMonster[6207][18]["PosY"] = 36

	
local tStrengthCopy_BrushMonsterNum = {}
	tStrengthCopy_BrushMonsterNum[5994] = {}
	tStrengthCopy_BrushMonsterNum[5994][1] = 10
	tStrengthCopy_BrushMonsterNum[5994][2] = 20

	---动态NPC位置
local tStrengthCopy_BrushNpc = {}
	tStrengthCopy_BrushNpc[1] = {}
	tStrengthCopy_BrushNpc[1]["PosX"] = 33
	tStrengthCopy_BrushNpc[1]["PosY"] = 38
	tStrengthCopy_BrushNpc[1]["NpcFace"] = 60060
	
	tStrengthCopy_BrushNpc[2] = {}
	tStrengthCopy_BrushNpc[2]["PosX"] = 33
	tStrengthCopy_BrushNpc[2]["PosY"] = 32
	tStrengthCopy_BrushNpc[2]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[3] = {}
	tStrengthCopy_BrushNpc[3]["PosX"] = 35
	tStrengthCopy_BrushNpc[3]["PosY"] = 28
	tStrengthCopy_BrushNpc[3]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[4] = {}
	tStrengthCopy_BrushNpc[4]["PosX"] = 40
	tStrengthCopy_BrushNpc[4]["PosY"] = 26
	tStrengthCopy_BrushNpc[4]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[5] = {}
	tStrengthCopy_BrushNpc[5]["PosX"] = 47
	tStrengthCopy_BrushNpc[5]["PosY"] = 27
	tStrengthCopy_BrushNpc[5]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[6] = {}
	tStrengthCopy_BrushNpc[6]["PosX"] = 49
	tStrengthCopy_BrushNpc[6]["PosY"] = 23
	tStrengthCopy_BrushNpc[6]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[7] = {}
	tStrengthCopy_BrushNpc[7]["PosX"] = 54
	tStrengthCopy_BrushNpc[7]["PosY"] = 29
	tStrengthCopy_BrushNpc[7]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[8] = {}
	tStrengthCopy_BrushNpc[8]["PosX"] = 56
	tStrengthCopy_BrushNpc[8]["PosY"] = 34
	tStrengthCopy_BrushNpc[8]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[9] = {}
	tStrengthCopy_BrushNpc[9]["PosX"] = 58
	tStrengthCopy_BrushNpc[9]["PosY"] = 40
	tStrengthCopy_BrushNpc[9]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[10] = {}
	tStrengthCopy_BrushNpc[10]["PosX"] = 63
	tStrengthCopy_BrushNpc[10]["PosY"] = 45
	tStrengthCopy_BrushNpc[10]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[11] = {}
	tStrengthCopy_BrushNpc[11]["PosX"] = 62
	tStrengthCopy_BrushNpc[11]["PosY"] = 51
	tStrengthCopy_BrushNpc[11]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[12] = {}
	tStrengthCopy_BrushNpc[12]["PosX"] = 59
	tStrengthCopy_BrushNpc[12]["PosY"] = 56
	tStrengthCopy_BrushNpc[12]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[13] = {}
	tStrengthCopy_BrushNpc[13]["PosX"] = 55
	tStrengthCopy_BrushNpc[13]["PosY"] = 61
	tStrengthCopy_BrushNpc[13]["NpcFace"] = 60060
	
	tStrengthCopy_BrushNpc[14] = {}
	tStrengthCopy_BrushNpc[14]["PosX"] = 50
	tStrengthCopy_BrushNpc[14]["PosY"] = 62
	tStrengthCopy_BrushNpc[14]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[15] = {}
	tStrengthCopy_BrushNpc[15]["PosX"] = 42
	tStrengthCopy_BrushNpc[15]["PosY"] = 57
	tStrengthCopy_BrushNpc[15]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[16] = {}
	tStrengthCopy_BrushNpc[16]["PosX"] = 34
	tStrengthCopy_BrushNpc[16]["PosY"] = 53
	tStrengthCopy_BrushNpc[16]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[17] = {}
	tStrengthCopy_BrushNpc[17]["PosX"] = 31
	tStrengthCopy_BrushNpc[17]["PosY"] = 47
	tStrengthCopy_BrushNpc[17]["NpcFace"] = 60060

	tStrengthCopy_BrushNpc[18] = {}
	tStrengthCopy_BrushNpc[18]["PosX"] = 33
	tStrengthCopy_BrushNpc[18]["PosY"] = 42
	tStrengthCopy_BrushNpc[18]["NpcFace"] = 60060

------------后续修改
--临时表 记录玩家进副本的地址
local tStrengthCopy_NewUserPos = {}


local tStrengthCopy_NewPos = {}
--普通服
	tStrengthCopy_NewPos[1] = {}
	tStrengthCopy_NewPos[1]["MapId"] = 1002
	tStrengthCopy_NewPos[1]["PosX"] = 350
	tStrengthCopy_NewPos[1]["PosY"] = 444
-- 激情服
	tStrengthCopy_NewPos[2] = {}
	tStrengthCopy_NewPos[2]["MapId"] = 10364
	tStrengthCopy_NewPos[2]["PosX"] = 300
	tStrengthCopy_NewPos[2]["PosY"] = 400
-- 监狱
	tStrengthCopy_NewPos[3] = {}
	tStrengthCopy_NewPos[3][1] = 6000
	tStrengthCopy_NewPos[3][2] = 6001
	tStrengthCopy_NewPos[3][3] = 6002
	tStrengthCopy_NewPos[3][4] = 6003
	tStrengthCopy_NewPos[3][5] = 6004
	tStrengthCopy_NewPos[3][6] = 10250  --古神灵境
	tStrengthCopy_NewPos[3][7] = 10137  --神龙岛
	
	
local tStrengthCopy_NewData = {}
	tStrengthCopy_NewData["NeedCultureVal"] = 10 ---每次刷新需要的修为值倍数
	tStrengthCopy_NewData["NeedItem"] = 3309946 ---消耗八卦符
local tStrengthCopy_Stc = {}
---记录是否选择过宝箱
	tStrengthCopy_Stc[1] = {}
	tStrengthCopy_Stc[1]["EventType"] = 217
	tStrengthCopy_Stc[1]["DataType"] = 51
	-- 记录伏魔易宝刷新次数
	tStrengthCopy_Stc[2] = {}
	tStrengthCopy_Stc[2]["EventType"] = 217
	tStrengthCopy_Stc[2]["DataType"] = 76
	-- 记录随机的物品序号
	tStrengthCopy_Stc[3] = {}
	tStrengthCopy_Stc[3]["EventType"] = 217
	tStrengthCopy_Stc[3]["DataType"] = 77
	
	-- 记录  特殊副本碎片一周只能合成3次
	tStrengthCopy_Stc[4] = {}
	tStrengthCopy_Stc[4]["EventType"] = 220
	tStrengthCopy_Stc[4]["DataType"] = 41
	tStrengthCopy_Stc[4]["Data"] = {}
	tStrengthCopy_Stc[4]["Data"][1] = "PrizePool"
	tStrengthCopy_Stc[4]["Data"][2] = "ThreeStar"
	tStrengthCopy_Stc[4]["Data"][3] = "FourStar"
	
	tStrengthCopy_Stc[4]["Type"] = {}
	tStrengthCopy_Stc[4]["Type"]["PrizePool"] = 1
	tStrengthCopy_Stc[4]["Type"]["ThreeStar"] = 2
	tStrengthCopy_Stc[4]["Type"]["FourStar"] = 3

	-- 记录随机的物品序号
	tStrengthCopy_Stc[5] = {}
	tStrengthCopy_Stc[5]["EventType"] = 221
	tStrengthCopy_Stc[5]["DataType"] = 00
	
	-- 记录是否在玄机老人领过地图
	tStrengthCopy_Stc[6] = {}
	tStrengthCopy_Stc[6]["EventType"] = 221
	tStrengthCopy_Stc[6]["DataType"] = 11
	
-- 记录收纳了哪些残页  ---三位记一个物品  一个掩码记一套
local tStrengthCopy_NewStc = {}
	-- 龙象般若功
	tStrengthCopy_NewStc[1] = {}
	tStrengthCopy_NewStc[1]["EventType"] = 221
	tStrengthCopy_NewStc[1]["DataType"] = 01
	-- 无量心经
	tStrengthCopy_NewStc[2] = {}
	tStrengthCopy_NewStc[2]["EventType"] = 221
	tStrengthCopy_NewStc[2]["DataType"] = 02
	-- 太乙神功
	tStrengthCopy_NewStc[3] = {}
	tStrengthCopy_NewStc[3]["EventType"] = 221
	tStrengthCopy_NewStc[3]["DataType"] = 03
	-- 枯荣禅功
	tStrengthCopy_NewStc[4] = {}
	tStrengthCopy_NewStc[4]["EventType"] = 221
	tStrengthCopy_NewStc[4]["DataType"] = 04
	-- 九阳神功
	tStrengthCopy_NewStc[5] = {}
	tStrengthCopy_NewStc[5]["EventType"] = 221
	tStrengthCopy_NewStc[5]["DataType"] = 05
	-- 北冥神功
	tStrengthCopy_NewStc[6] = {}
	tStrengthCopy_NewStc[6]["EventType"] = 221
	tStrengthCopy_NewStc[6]["DataType"] = 06
	-- 紫霞神功
	tStrengthCopy_NewStc[7] = {}
	tStrengthCopy_NewStc[7]["EventType"] = 221
	tStrengthCopy_NewStc[7]["DataType"] = 07
	-- 九阴真经
	tStrengthCopy_NewStc[8] = {}
	tStrengthCopy_NewStc[8]["EventType"] = 221
	tStrengthCopy_NewStc[8]["DataType"] = 08
	-- 化功大法
	tStrengthCopy_NewStc[9] = {}
	tStrengthCopy_NewStc[9]["EventType"] = 221
	tStrengthCopy_NewStc[9]["DataType"] = 09
	-- 纯阳无极功
	tStrengthCopy_NewStc[10] = {}
	tStrengthCopy_NewStc[10]["EventType"] = 221
	tStrengthCopy_NewStc[10]["DataType"] = 10
	
local tStrengthCopy_NewItem = {}
--索引掩码表
	tStrengthCopy_NewItem[3309947] = 1
	tStrengthCopy_NewItem[3309948] = 1
	
	tStrengthCopy_NewItem[3309949] = 2
	tStrengthCopy_NewItem[3309950] = 2
	tStrengthCopy_NewItem[3309951] = 2
	
	tStrengthCopy_NewItem[3309952] = 3
	tStrengthCopy_NewItem[3309953] = 3
	tStrengthCopy_NewItem[3309954] = 3
	
	tStrengthCopy_NewItem[3309955] = 4
	tStrengthCopy_NewItem[3309956] = 4
	tStrengthCopy_NewItem[3309957] = 4
	
	tStrengthCopy_NewItem[3315403] = 5
	tStrengthCopy_NewItem[3315404] = 5
	tStrengthCopy_NewItem[3315405] = 5
	
	tStrengthCopy_NewItem[3315406] = 6
	tStrengthCopy_NewItem[3315407] = 6
	tStrengthCopy_NewItem[3315408] = 6
	
	tStrengthCopy_NewItem[3315409] = 7
	tStrengthCopy_NewItem[3315410] = 7
	tStrengthCopy_NewItem[3315411] = 7
	
	tStrengthCopy_NewItem[3315412] = 8
	tStrengthCopy_NewItem[3315413] = 8
	tStrengthCopy_NewItem[3315414] = 8
	
	tStrengthCopy_NewItem[3315415] = 9
	tStrengthCopy_NewItem[3315416] = 9
	tStrengthCopy_NewItem[3315417] = 9
	
	tStrengthCopy_NewItem[3316126] = 10
	tStrengthCopy_NewItem[3316127] = 10
	tStrengthCopy_NewItem[3316128] = 10
	
local tStrengthCopy_NewItemFlag = {}
--需要加的数 乘数
	tStrengthCopy_NewItemFlag[3309947] = 1000000
	tStrengthCopy_NewItemFlag[3309948] = 1
	
	tStrengthCopy_NewItemFlag[3309949] = 1000000
	tStrengthCopy_NewItemFlag[3309950] = 1000
	tStrengthCopy_NewItemFlag[3309951] = 1
	
	tStrengthCopy_NewItemFlag[3309952] = 1000000
	tStrengthCopy_NewItemFlag[3309953] = 1000
	tStrengthCopy_NewItemFlag[3309954] = 1
	
	tStrengthCopy_NewItemFlag[3309955] = 1000000
	tStrengthCopy_NewItemFlag[3309956] = 1000
	tStrengthCopy_NewItemFlag[3309957] = 1
	
	tStrengthCopy_NewItemFlag[3315403] = 1000000
	tStrengthCopy_NewItemFlag[3315404] = 1000
	tStrengthCopy_NewItemFlag[3315405] = 1
	
	tStrengthCopy_NewItemFlag[3315406] = 1000000
	tStrengthCopy_NewItemFlag[3315407] = 1000
	tStrengthCopy_NewItemFlag[3315408] = 1
	
	tStrengthCopy_NewItemFlag[3315409] = 1000000
	tStrengthCopy_NewItemFlag[3315410] = 1000
	tStrengthCopy_NewItemFlag[3315411] = 1
	
	tStrengthCopy_NewItemFlag[3315412] = 1000000
	tStrengthCopy_NewItemFlag[3315413] = 1000
	tStrengthCopy_NewItemFlag[3315414] = 1
	
	tStrengthCopy_NewItemFlag[3315415] = 1000000
	tStrengthCopy_NewItemFlag[3315416] = 1000
	tStrengthCopy_NewItemFlag[3315417] = 1
	
	tStrengthCopy_NewItemFlag[3316126] = 1000000
	tStrengthCopy_NewItemFlag[3316127] = 1000
	tStrengthCopy_NewItemFlag[3316128] = 1

local tStrengthCopy_NewItemIndex = {}
--索引掩码表  第几段
	tStrengthCopy_NewItemIndex[3309947] = 3
	tStrengthCopy_NewItemIndex[3309948] = 1
	
	tStrengthCopy_NewItemIndex[3309949] = 3
	tStrengthCopy_NewItemIndex[3309950] = 2
	tStrengthCopy_NewItemIndex[3309951] = 1
	
	tStrengthCopy_NewItemIndex[3309952] = 3
	tStrengthCopy_NewItemIndex[3309953] = 2
	tStrengthCopy_NewItemIndex[3309954] = 1
	
	tStrengthCopy_NewItemIndex[3309955] = 3
	tStrengthCopy_NewItemIndex[3309956] = 2
	tStrengthCopy_NewItemIndex[3309957] = 1
	
	tStrengthCopy_NewItemIndex[3315403] = 3
	tStrengthCopy_NewItemIndex[3315404] = 2
	tStrengthCopy_NewItemIndex[3315405] = 1
	
	tStrengthCopy_NewItemIndex[3315406] = 3
	tStrengthCopy_NewItemIndex[3315407] = 2
	tStrengthCopy_NewItemIndex[3315408] = 1
	
	tStrengthCopy_NewItemIndex[3315409] = 3
	tStrengthCopy_NewItemIndex[3315410] = 2
	tStrengthCopy_NewItemIndex[3315411] = 1
	
	tStrengthCopy_NewItemIndex[3315412] = 3
	tStrengthCopy_NewItemIndex[3315413] = 2
	tStrengthCopy_NewItemIndex[3315414] = 1
	
	tStrengthCopy_NewItemIndex[3315415] = 3
	tStrengthCopy_NewItemIndex[3315416] = 2
	tStrengthCopy_NewItemIndex[3315417] = 1
	
	tStrengthCopy_NewItemIndex[3316126] = 3
	tStrengthCopy_NewItemIndex[3316127] = 2
	tStrengthCopy_NewItemIndex[3316128] = 1

local tStrengthCopy_NewOptionIndex = {}
	tStrengthCopy_NewOptionIndex[1] = 3309947
	tStrengthCopy_NewOptionIndex[2] = 3309948
	tStrengthCopy_NewOptionIndex[3] = 3309949
	tStrengthCopy_NewOptionIndex[4] = 3309950
	tStrengthCopy_NewOptionIndex[5] = 3309951
	tStrengthCopy_NewOptionIndex[6] = 3309952
	tStrengthCopy_NewOptionIndex[7] = 3309953
	tStrengthCopy_NewOptionIndex[8] = 3309954
	tStrengthCopy_NewOptionIndex[9] = 3309955
	tStrengthCopy_NewOptionIndex[10] = 3309956
	tStrengthCopy_NewOptionIndex[11] = 3309957
	tStrengthCopy_NewOptionIndex[12] = 3315403
	tStrengthCopy_NewOptionIndex[13] = 3315404
	tStrengthCopy_NewOptionIndex[14] = 3315405
	tStrengthCopy_NewOptionIndex[15] = 3315406
	tStrengthCopy_NewOptionIndex[16] = 3315407
	tStrengthCopy_NewOptionIndex[17] = 3315408
	tStrengthCopy_NewOptionIndex[18] = 3315409
	tStrengthCopy_NewOptionIndex[20] = 3315410
	tStrengthCopy_NewOptionIndex[21] = 3315411
	tStrengthCopy_NewOptionIndex[22] = 3315412
	tStrengthCopy_NewOptionIndex[23] = 3315413
	tStrengthCopy_NewOptionIndex[24] = 3315414
	tStrengthCopy_NewOptionIndex[25] = 3315415
	tStrengthCopy_NewOptionIndex[26] = 3315416
	tStrengthCopy_NewOptionIndex[27] = 3315417
	tStrengthCopy_NewOptionIndex[28] = 3316126
	tStrengthCopy_NewOptionIndex[29] = 3316127
	tStrengthCopy_NewOptionIndex[30] = 3316128

	
local tStrengthCopy_NewLog = {}
	--花物品刷新
	tStrengthCopy_NewLog[1] = "0,0,3309946,1,12001838,3[2],0,0"
	-- 花修为值刷新
	tStrengthCopy_NewLog[2] = "0,0,19,%d,12001838,3[2],0,0"
	--删除附魔易宝
	tStrengthCopy_NewLog[3] = "0,0,3315708,1,12001838,5[1],0,0"
	
local tStrengthCopy_NewAction = {}
	tStrengthCopy_NewAction[1] = 94492085
	tStrengthCopy_NewAction[2] = 94492086
	tStrengthCopy_NewAction[3] = 94492087
	tStrengthCopy_NewAction[4] = 94492088
	tStrengthCopy_NewAction[5] = 94492089
	
local tStrengthCopy_NewPosition = {}
	tStrengthCopy_NewPosition["MapId"] = 10762
	tStrengthCopy_NewPosition["NpcFace"] = 24170
	tStrengthCopy_NewPosition[1] = {}
	tStrengthCopy_NewPosition[1]["ItemChanceSum"] = 10000

	tStrengthCopy_NewPosition[1][1] = {}
	tStrengthCopy_NewPosition[1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewPosition[1][1]["ItemChance"] = 2000
	tStrengthCopy_NewPosition[1][1]["PosX"] = 42
	tStrengthCopy_NewPosition[1][1]["PosY"] = 42
	tStrengthCopy_NewPosition[1][1]["Flag"] = 1
	
	tStrengthCopy_NewPosition[1][2] = {}
	tStrengthCopy_NewPosition[1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewPosition[1][2]["ItemChance"] = 2000
	tStrengthCopy_NewPosition[1][2]["PosX"] = 43
	tStrengthCopy_NewPosition[1][2]["PosY"] = 56
	tStrengthCopy_NewPosition[1][2]["Flag"] = 2

	
	tStrengthCopy_NewPosition[1][3] = {}
	tStrengthCopy_NewPosition[1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewPosition[1][3]["ItemChance"] = 2000
	tStrengthCopy_NewPosition[1][3]["PosX"] = 56
	tStrengthCopy_NewPosition[1][3]["PosY"] = 56
	tStrengthCopy_NewPosition[1][3]["Flag"] = 3

	tStrengthCopy_NewPosition[1][4] = {}
	tStrengthCopy_NewPosition[1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewPosition[1][4]["ItemChance"] = 2000
	tStrengthCopy_NewPosition[1][4]["PosX"] = 56
	tStrengthCopy_NewPosition[1][4]["PosY"] = 43
	tStrengthCopy_NewPosition[1][4]["Flag"] = 4

	tStrengthCopy_NewPosition[1][5] = {}
	tStrengthCopy_NewPosition[1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewPosition[1][5]["ItemChance"] = 2000
	tStrengthCopy_NewPosition[1][5]["PosX"] = 40
	tStrengthCopy_NewPosition[1][5]["PosY"] = 50
	tStrengthCopy_NewPosition[1][5]["Flag"] = 5

----普通服奖励
local tStrengthCopy_NewReward = {}
--------------- 珠光宝气箱-------------
----固定奖励
	tStrengthCopy_NewReward[1] = {}
	
	tStrengthCopy_NewReward[1]["Item"] = {}
	-- 普通宝石*4
	tStrengthCopy_NewReward[1]["Item"][1] = {}
	tStrengthCopy_NewReward[1]["Item"][1]["ItemId"] = 3003875
	tStrengthCopy_NewReward[1]["Item"][1]["ItemNum"] = 4
	-- 流星*1
	tStrengthCopy_NewReward[1]["Item"][2] = {}
	tStrengthCopy_NewReward[1]["Item"][2]["ItemId"] = 1088001
	tStrengthCopy_NewReward[1]["Item"][2]["ItemNum"] = 6
	-- 良品宝石*1
	tStrengthCopy_NewReward[1]["Item"][3] = {}
	tStrengthCopy_NewReward[1]["Item"][3]["ItemId"] = 3314224
	tStrengthCopy_NewReward[1]["Item"][3]["ItemNum"] = 1
	--流星*1 
	tStrengthCopy_NewReward[1]["Item"][4] = {}
	tStrengthCopy_NewReward[1]["Item"][4]["ItemId"] = 1088001
	tStrengthCopy_NewReward[1]["Item"][4]["ItemNum"] = 1
-------------随机奖励1-------------
	-- ===珠宝组1
	-- ===索引: tStrengthCopy_NewReward[1]["Pro"][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[1]["Pro"] = {}
	tStrengthCopy_NewReward[1]["Pro"][1] = {}
	tStrengthCopy_NewReward[1]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[1]["Pro"][1]["LogId"] = 12001838
	tStrengthCopy_NewReward[1]["Pro"][1]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[1]["Pro"][1]["Time"] = 5
	-- 良品明月宝石 - 12%
	tStrengthCopy_NewReward[1]["Pro"][1][1] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][1]["ItemChance"] = 1200
	tStrengthCopy_NewReward[1]["Pro"][1][1]["ItemId"] = 700062 -- 良品明月宝石[700062][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][1]["ItemNum"] = 1
	-- 良品紫霞宝石 - 12%
	tStrengthCopy_NewReward[1]["Pro"][1][2] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][2]["ItemChance"] = 1200
	tStrengthCopy_NewReward[1]["Pro"][1][2]["ItemId"] = 700052 -- 良品紫霞宝石[700052][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][2]["ItemNum"] = 1
	-- 良品金麟宝石 - 12%
	tStrengthCopy_NewReward[1]["Pro"][1][3] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][3]["ItemChance"] = 1200
	tStrengthCopy_NewReward[1]["Pro"][1][3]["ItemId"] = 700042 -- 良品金麟宝石[700042][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][3]["ItemNum"] = 1
	-- 良品青虹宝石 - 12%
	tStrengthCopy_NewReward[1]["Pro"][1][4] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][4]["ItemChance"] = 1200
	tStrengthCopy_NewReward[1]["Pro"][1][4]["ItemId"] = 700032 -- 良品青虹宝石[700032][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][4]["ItemNum"] = 1
	-- 良品惊鸿宝石 - 12%
	tStrengthCopy_NewReward[1]["Pro"][1][5] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][5]["ItemChance"] = 1200
	tStrengthCopy_NewReward[1]["Pro"][1][5]["ItemId"] = 700022 -- 良品惊鸿宝石[700022][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][5]["ItemNum"] = 1
	-- 良品龙恨宝石 - 9%
	tStrengthCopy_NewReward[1]["Pro"][1][6] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][6]["ItemChance"] = 900
	tStrengthCopy_NewReward[1]["Pro"][1][6]["ItemId"] = 700012 -- 良品龙恨宝石[700012][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][6]["ItemNum"] = 1
	-- 良品凤吟宝石 - 7%
	tStrengthCopy_NewReward[1]["Pro"][1][7] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][7]["ItemChance"] = 700
	tStrengthCopy_NewReward[1]["Pro"][1][7]["ItemId"] = 700002 -- 良品凤吟宝石[700002][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][7]["ItemNum"] = 1
	-- 良品天怒宝石 - 2%
	tStrengthCopy_NewReward[1]["Pro"][1][8] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][8]["ItemChance"] = 200
	tStrengthCopy_NewReward[1]["Pro"][1][8]["ItemId"] = 700102 -- 良品天怒宝石[700102][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][8]["ItemNum"] = 1
	-- 良品地灵宝石 - 2%
	tStrengthCopy_NewReward[1]["Pro"][1][9] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][9]["ItemChance"] = 200
	tStrengthCopy_NewReward[1]["Pro"][1][9]["ItemId"] = 700122 -- 良品地灵宝石[700122][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][9]["ItemNum"] = 1
	-- 优质明月宝石 - 3%
	tStrengthCopy_NewReward[1]["Pro"][1][10] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][10]["ItemChance"] = 300
	tStrengthCopy_NewReward[1]["Pro"][1][10]["ItemId"] = 700063 -- 优质明月宝石[700063][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][10]["ItemNum"] = 1
	-- 优质紫霞宝石 - 3%
	tStrengthCopy_NewReward[1]["Pro"][1][11] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][11]["ItemChance"] = 300
	tStrengthCopy_NewReward[1]["Pro"][1][11]["ItemId"] = 700053 -- 优质紫霞宝石[700053][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][11]["ItemNum"] = 1 -- 优质紫霞宝石[700053][属性:0]
	-- 优质金麟宝石 - 3%
	tStrengthCopy_NewReward[1]["Pro"][1][12] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][12]["ItemChance"] = 300
	tStrengthCopy_NewReward[1]["Pro"][1][12]["ItemId"] = 700043 -- 优质金麟宝石[700043][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][12]["ItemNum"] = 1 -- 优质金麟宝石[700043][属性:0]
	-- 优质青虹宝石 - 3%
	tStrengthCopy_NewReward[1]["Pro"][1][13] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][13]["ItemChance"] = 300
	tStrengthCopy_NewReward[1]["Pro"][1][13]["ItemId"] = 700033 -- 优质青虹宝石[700033][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][13]["ItemNum"] = 1 -- 优质青虹宝石[700033][属性:0]
	-- 优质惊鸿宝石 - 3%
	tStrengthCopy_NewReward[1]["Pro"][1][14] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][14]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][14]["ItemChance"] = 300
	tStrengthCopy_NewReward[1]["Pro"][1][14]["ItemId"] = 700023 -- 优质惊鸿宝石[700023][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][14]["ItemNum"] = 1 -- 优质惊鸿宝石[700023][属性:0]
	-- 优质龙恨宝石 - 2.25%
	tStrengthCopy_NewReward[1]["Pro"][1][15] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][15]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][15]["ItemChance"] = 225
	tStrengthCopy_NewReward[1]["Pro"][1][15]["ItemId"] = 700013 -- 优质龙恨宝石[700013][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][15]["ItemNum"] = 1 -- 优质龙恨宝石[700013][属性:0]
	-- 优质凤吟宝石 - 1.75%
	tStrengthCopy_NewReward[1]["Pro"][1][16] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][16]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][16]["ItemChance"] = 175
	tStrengthCopy_NewReward[1]["Pro"][1][16]["ItemId"] = 700003 -- 优质凤吟宝石[700003][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][16]["ItemNum"] = 1 -- 优质凤吟宝石[700003][属性:0]
	-- 优质地灵宝石 - 0.5%
	tStrengthCopy_NewReward[1]["Pro"][1][17] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][17]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][17]["ItemChance"] = 50
	tStrengthCopy_NewReward[1]["Pro"][1][17]["ItemId"] = 700123 -- 优质地灵宝石[700123][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][17]["ItemNum"] = 1 -- 优质地灵宝石[700123][属性:0]
	-- 优质天怒宝石 - 0.5%
	tStrengthCopy_NewReward[1]["Pro"][1][18] = {}
	tStrengthCopy_NewReward[1]["Pro"][1][18]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][1][18]["ItemChance"] = 50
	tStrengthCopy_NewReward[1]["Pro"][1][18]["ItemId"] = 700103 -- 优质天怒宝石[700103][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][1][18]["ItemNum"] = 1 -- 优质天怒宝石[700103][属性:0]


	tStrengthCopy_NewReward[1]["Pro"][2] = {}
	-- ===珠宝组2
	-- ===索引: tStrengthCopy_NewReward[1]["Pro"][2]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[1]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[1]["Pro"][2]["LogId"] = 12001838
	tStrengthCopy_NewReward[1]["Pro"][2]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[1]["Pro"][2]["Time"] = 2
	-- 流星 - 50%
	tStrengthCopy_NewReward[1]["Pro"][2][1] = {}
	tStrengthCopy_NewReward[1]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][2][1]["ItemChance"] = 5000
	tStrengthCopy_NewReward[1]["Pro"][2][1]["ItemId"] = 1088001 -- 流星[1088001][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][2][1]["ItemNum"] = 1
	-- 流星*2 - 20%
	tStrengthCopy_NewReward[1]["Pro"][2][2] = {}
	tStrengthCopy_NewReward[1]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][2][2]["ItemChance"] = 2000
	tStrengthCopy_NewReward[1]["Pro"][2][2]["ItemId"] = 1088001 -- 流星*2[1088001][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][2][2]["ItemNum"] = 2
	-- 流星*5 - 10%
	tStrengthCopy_NewReward[1]["Pro"][2][3] = {}
	tStrengthCopy_NewReward[1]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][2][3]["ItemChance"] = 1000
	tStrengthCopy_NewReward[1]["Pro"][2][3]["ItemId"] = 1088001 -- 流星*5[1088001][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][2][3]["ItemNum"] = 5
	-- 袖山玉碎片 - 8%
	tStrengthCopy_NewReward[1]["Pro"][2][4] = {}
	tStrengthCopy_NewReward[1]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][2][4]["ItemChance"] = 800
	tStrengthCopy_NewReward[1]["Pro"][2][4]["ItemId"] = 3008222 -- 袖山玉碎片[3008222][属性:9]
	tStrengthCopy_NewReward[1]["Pro"][2][4]["ItemNum"] = 1
	-- 昆仑玉碎片 - 2%
	tStrengthCopy_NewReward[1]["Pro"][2][5] = {}
	tStrengthCopy_NewReward[1]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][2][5]["ItemChance"] = 200
	tStrengthCopy_NewReward[1]["Pro"][2][5]["ItemId"] = 3008224 -- 昆仑玉碎片[3008224][属性:9]
	tStrengthCopy_NewReward[1]["Pro"][2][5]["ItemNum"] = 1
	-- 流星卷 - 10%
	tStrengthCopy_NewReward[1]["Pro"][2][6] = {}
	tStrengthCopy_NewReward[1]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[1]["Pro"][2][6]["ItemChance"] = 1000
	tStrengthCopy_NewReward[1]["Pro"][2][6]["ItemId"] = 720027 -- 流星卷[720027][属性:0]
	tStrengthCopy_NewReward[1]["Pro"][2][6]["ItemNum"] = 1


--------------- 追加箱-------------
----固定奖励
	tStrengthCopy_NewReward[2] = {}
	
	tStrengthCopy_NewReward[2]["Item"] = {}
	-- 赤炼石+1
	tStrengthCopy_NewReward[2]["Item"][1] = {}
	tStrengthCopy_NewReward[2]["Item"][1]["ItemId"] = 730001
	tStrengthCopy_NewReward[2]["Item"][1]["ItemNum"] = 10
-------------随机奖励1-------------
	-- ===追加随机组1
	-- ===索引: tStrengthCopy_NewReward[2]["Pro"][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[2]["Pro"] = {}
	tStrengthCopy_NewReward[2]["Pro"][1] = {}
	tStrengthCopy_NewReward[2]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[2]["Pro"][1]["LogId"] = 12001838
	tStrengthCopy_NewReward[2]["Pro"][1]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[2]["Pro"][1]["Time"] = 3
	-- +1赤炼石（5天） - 80%
	tStrengthCopy_NewReward[2]["Pro"][1][1] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][1]["ItemChance"] = 8000
	tStrengthCopy_NewReward[2]["Pro"][1][1]["ItemId"] = 3321034 -- +1赤炼石[3321034][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][1][1]["ItemNum"] = 1
	-- +2赤炼石（5天） - 12%
	tStrengthCopy_NewReward[2]["Pro"][1][2] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][2]["ItemChance"] = 1200
	tStrengthCopy_NewReward[2]["Pro"][1][2]["ItemId"] = 3321035 -- +2赤炼石[3321035][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][1][2]["ItemNum"] = 1
	-- +3赤炼石（5天） - 4%
	tStrengthCopy_NewReward[2]["Pro"][1][3] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][3]["ItemChance"] = 400
	tStrengthCopy_NewReward[2]["Pro"][1][3]["ItemId"] = 3321036 -- +3赤炼石[3321036][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][1][3]["ItemNum"] = 1
	-- +4赤炼石（5天） - 1%
	tStrengthCopy_NewReward[2]["Pro"][1][4] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][4]["ItemChance"] = 100
	tStrengthCopy_NewReward[2]["Pro"][1][4]["ItemId"] = 3321037 -- +4赤炼石[3321037][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][1][4]["ItemNum"] = 1
	-- +3枣红马礼包 - 1%
	tStrengthCopy_NewReward[2]["Pro"][1][5] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][5]["ItemChance"] = 100
	tStrengthCopy_NewReward[2]["Pro"][1][5]["ItemId"] = 723860 -- +3枣红马礼包[723860][属性:0]
	tStrengthCopy_NewReward[2]["Pro"][1][5]["ItemNum"] = 1
	-- +3雪脂马礼包 - 1%
	tStrengthCopy_NewReward[2]["Pro"][1][6] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][6]["ItemChance"] = 100
	tStrengthCopy_NewReward[2]["Pro"][1][6]["ItemId"] = 723861 -- +3雪脂马礼包[723861][属性:0]
	tStrengthCopy_NewReward[2]["Pro"][1][6]["ItemNum"] = 1
	-- +3黑颈马礼包 - 1%
	tStrengthCopy_NewReward[2]["Pro"][1][7] = {}
	tStrengthCopy_NewReward[2]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][1][7]["ItemChance"] = 100
	tStrengthCopy_NewReward[2]["Pro"][1][7]["ItemId"] = 723862 -- +3黑颈马礼包[723862][属性:0]
	tStrengthCopy_NewReward[2]["Pro"][1][7]["ItemNum"] = 1


	tStrengthCopy_NewReward[2]["Pro"][2] = {}
	-- ===追加随机组2
	-- ===索引: tStrengthCopy_NewReward[2]["Pro"][2]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[2]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[2]["Pro"][2]["LogId"] = 12001838
	tStrengthCopy_NewReward[2]["Pro"][2]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[2]["Pro"][2]["Time"] = 1
	-- +3赤炼石 - 77%
	tStrengthCopy_NewReward[2]["Pro"][2][1] = {}
	tStrengthCopy_NewReward[2]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][2][1]["ItemChance"] = 7700
	tStrengthCopy_NewReward[2]["Pro"][2][1]["ItemId"] = 3321036 -- +3赤炼石[3321036][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][2][1]["ItemNum"] = 1
	-- +4赤炼石 - 5%
	tStrengthCopy_NewReward[2]["Pro"][2][2] = {}
	tStrengthCopy_NewReward[2]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][2][2]["ItemChance"] = 500
	tStrengthCopy_NewReward[2]["Pro"][2][2]["ItemId"] = 3321037 -- +4赤炼石[3321037][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][2][2]["ItemNum"] = 1
	-- +5赤炼石 - 3%
	tStrengthCopy_NewReward[2]["Pro"][2][3] = {}
	tStrengthCopy_NewReward[2]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][2][3]["ItemChance"] = 300
	tStrengthCopy_NewReward[2]["Pro"][2][3]["ItemId"] = 3321038 -- +5赤炼石[3321038][属性:256]
	tStrengthCopy_NewReward[2]["Pro"][2][3]["ItemNum"] = 1
	-- +3枣红马礼包 - 5%
	tStrengthCopy_NewReward[2]["Pro"][2][4] = {}
	tStrengthCopy_NewReward[2]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][2][4]["ItemChance"] = 500
	tStrengthCopy_NewReward[2]["Pro"][2][4]["ItemId"] = 723860 -- +3枣红马礼包[723860][属性:0]
	tStrengthCopy_NewReward[2]["Pro"][2][4]["ItemNum"] = 1
	-- +3雪脂马礼包 - 5%
	tStrengthCopy_NewReward[2]["Pro"][2][5] = {}
	tStrengthCopy_NewReward[2]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][2][5]["ItemChance"] = 500
	tStrengthCopy_NewReward[2]["Pro"][2][5]["ItemId"] = 723861 -- +3雪脂马礼包[723861][属性:0]
	tStrengthCopy_NewReward[2]["Pro"][2][5]["ItemNum"] = 1
	-- +3黑颈马礼包 - 5%
	tStrengthCopy_NewReward[2]["Pro"][2][6] = {}
	tStrengthCopy_NewReward[2]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[2]["Pro"][2][6]["ItemChance"] = 500
	tStrengthCopy_NewReward[2]["Pro"][2][6]["ItemId"] = 723862 -- +3黑颈马礼包[723862][属性:0]
	tStrengthCopy_NewReward[2]["Pro"][2][6]["ItemNum"] = 1


--------------- 内功箱-------------
----固定奖励
	tStrengthCopy_NewReward[3] = {}
	
	-- tStrengthCopy_NewReward[3]["Item"] = {}
	-- +1赤炼石（5天）*10
	-- tStrengthCopy_NewReward[3]["Item"][1] = {}
	-- tStrengthCopy_NewReward[3]["Item"][1]["ItemId"] = 3321034
	-- tStrengthCopy_NewReward[3]["Item"][1]["ItemNum"] = 10
-------------随机奖励1-------------
	-- ===内功随机组1
	-- ===索引: tStrengthCopy_NewReward[3]["Pro"][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[3]["Pro"] = {}
	tStrengthCopy_NewReward[3]["Pro"][1] = {}
	tStrengthCopy_NewReward[3]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[3]["Pro"][1]["LogId"] = 12001838
	tStrengthCopy_NewReward[3]["Pro"][1]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[3]["Pro"][1]["Time"] = 12
	-- 紫霞神功·上篇残页 - 25%
	tStrengthCopy_NewReward[3]["Pro"][1][1] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][1]["ItemChance"] = 2500
	tStrengthCopy_NewReward[3]["Pro"][1][1]["ItemId"] = 3315409
	tStrengthCopy_NewReward[3]["Pro"][1][1]["ItemNum"] = 1
	-- 紫霞神功·中篇残页 - 16%
	tStrengthCopy_NewReward[3]["Pro"][1][2] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][2]["ItemChance"] = 1600
	tStrengthCopy_NewReward[3]["Pro"][1][2]["ItemId"] = 3315410
	tStrengthCopy_NewReward[3]["Pro"][1][2]["ItemNum"] = 1
	-- 紫霞神功·下篇残页 - 12%
	tStrengthCopy_NewReward[3]["Pro"][1][3] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][3]["ItemChance"] = 1200
	tStrengthCopy_NewReward[3]["Pro"][1][3]["ItemId"] = 3315411
	tStrengthCopy_NewReward[3]["Pro"][1][3]["ItemNum"] = 1
	-- 北冥神功·上篇残页 - 18%
	tStrengthCopy_NewReward[3]["Pro"][1][4] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][4]["ItemChance"] = 1800
	tStrengthCopy_NewReward[3]["Pro"][1][4]["ItemId"] = 3315406
	tStrengthCopy_NewReward[3]["Pro"][1][4]["ItemNum"] = 1
	-- 北冥神功·中篇残页 - 12%
	tStrengthCopy_NewReward[3]["Pro"][1][5] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][5]["ItemChance"] = 1200
	tStrengthCopy_NewReward[3]["Pro"][1][5]["ItemId"] = 3315407
	tStrengthCopy_NewReward[3]["Pro"][1][5]["ItemNum"] = 1
	-- 北冥神功·下篇残页 - 8%
	tStrengthCopy_NewReward[3]["Pro"][1][6] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][6]["ItemChance"] = 800
	tStrengthCopy_NewReward[3]["Pro"][1][6]["ItemId"] = 3315408
	tStrengthCopy_NewReward[3]["Pro"][1][6]["ItemNum"] = 1
	-- 九阴真经·上篇残页 - 2.5%
	tStrengthCopy_NewReward[3]["Pro"][1][7] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][7]["ItemChance"] = 250
	tStrengthCopy_NewReward[3]["Pro"][1][7]["ItemId"] = 3315412
	tStrengthCopy_NewReward[3]["Pro"][1][7]["ItemNum"] = 1
	-- 九阴真经·中篇残页 - 1.5%
	tStrengthCopy_NewReward[3]["Pro"][1][8] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][8]["ItemChance"] = 150
	tStrengthCopy_NewReward[3]["Pro"][1][8]["ItemId"] = 3315413
	tStrengthCopy_NewReward[3]["Pro"][1][8]["ItemNum"] = 1
	-- 九阴真经·下篇残页 - 1%
	tStrengthCopy_NewReward[3]["Pro"][1][9] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][9]["ItemChance"] = 100
	tStrengthCopy_NewReward[3]["Pro"][1][9]["ItemId"] = 3315414
	tStrengthCopy_NewReward[3]["Pro"][1][9]["ItemNum"] = 1
	-- 九阳神功·上篇残页 - 1.25%
	tStrengthCopy_NewReward[3]["Pro"][1][10] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][10]["ItemChance"] = 125
	tStrengthCopy_NewReward[3]["Pro"][1][10]["ItemId"] = 3315403
	tStrengthCopy_NewReward[3]["Pro"][1][10]["ItemNum"] = 1
	-- 九阳神功·中篇残页 - 1%
	tStrengthCopy_NewReward[3]["Pro"][1][11] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][11]["ItemChance"] = 100
	tStrengthCopy_NewReward[3]["Pro"][1][11]["ItemId"] = 3315404
	tStrengthCopy_NewReward[3]["Pro"][1][11]["ItemNum"] = 1
	-- 九阳神功·下篇残页 - 0.75%
	tStrengthCopy_NewReward[3]["Pro"][1][12] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][12]["ItemChance"] = 75
	tStrengthCopy_NewReward[3]["Pro"][1][12]["ItemId"] = 3315405
	tStrengthCopy_NewReward[3]["Pro"][1][12]["ItemNum"] = 1
	-- 紫霞神功·上篇 - 0.3%
	tStrengthCopy_NewReward[3]["Pro"][1][13] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][13]["ItemChance"] = 30
	tStrengthCopy_NewReward[3]["Pro"][1][13]["ItemId"] = 3315424
	tStrengthCopy_NewReward[3]["Pro"][1][13]["ItemNum"] = 1
	-- 紫霞神功·中篇 - 0.2%
	tStrengthCopy_NewReward[3]["Pro"][1][14] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][14]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][14]["ItemChance"] = 20
	tStrengthCopy_NewReward[3]["Pro"][1][14]["ItemId"] = 3315425
	tStrengthCopy_NewReward[3]["Pro"][1][14]["ItemNum"] = 1
	-- 紫霞神功·下篇 - 0.15%
	tStrengthCopy_NewReward[3]["Pro"][1][15] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][15]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][15]["ItemChance"] = 15
	tStrengthCopy_NewReward[3]["Pro"][1][15]["ItemId"] = 3315426
	tStrengthCopy_NewReward[3]["Pro"][1][15]["ItemNum"] = 1
	-- 北冥神功·上篇 - 0.2%
	tStrengthCopy_NewReward[3]["Pro"][1][16] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][16]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][16]["ItemChance"] = 20
	tStrengthCopy_NewReward[3]["Pro"][1][16]["ItemId"] = 3315421
	tStrengthCopy_NewReward[3]["Pro"][1][16]["ItemNum"] = 1
	-- 北冥神功·中篇 - 0.1%
	tStrengthCopy_NewReward[3]["Pro"][1][17] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][17]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][17]["ItemChance"] = 10
	tStrengthCopy_NewReward[3]["Pro"][1][17]["ItemId"] = 3315422
	tStrengthCopy_NewReward[3]["Pro"][1][17]["ItemNum"] = 1
	-- 北冥神功·下篇 - 0.05%
	tStrengthCopy_NewReward[3]["Pro"][1][18] = {}
	tStrengthCopy_NewReward[3]["Pro"][1][18]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][1][18]["ItemChance"] = 5
	tStrengthCopy_NewReward[3]["Pro"][1][18]["ItemId"] = 3315423
	tStrengthCopy_NewReward[3]["Pro"][1][18]["ItemNum"] = 1


	tStrengthCopy_NewReward[3]["Pro"][2] = {}
	-- ===内功随机组2
	-- ===索引: tStrengthCopy_NewReward[3]["Pro"][2]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[3]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[3]["Pro"][2]["LogId"] = 12001838
	tStrengthCopy_NewReward[3]["Pro"][2]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[3]["Pro"][2]["Time"] = 3
	-- 九阴真经·上篇残页 - 26%
	tStrengthCopy_NewReward[3]["Pro"][2][1] = {}
	tStrengthCopy_NewReward[3]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][2][1]["ItemChance"] = 2600
	tStrengthCopy_NewReward[3]["Pro"][2][1]["ItemId"] = 3315412
	tStrengthCopy_NewReward[3]["Pro"][2][1]["ItemNum"] = 1
	-- 九阴真经·中篇残页 - 20%
	tStrengthCopy_NewReward[3]["Pro"][2][2] = {}
	tStrengthCopy_NewReward[3]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][2][2]["ItemChance"] = 2000
	tStrengthCopy_NewReward[3]["Pro"][2][2]["ItemId"] = 3315413
	tStrengthCopy_NewReward[3]["Pro"][2][2]["ItemNum"] = 1
	-- 九阴真经·下篇残页 - 15%
	tStrengthCopy_NewReward[3]["Pro"][2][3] = {}
	tStrengthCopy_NewReward[3]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][2][3]["ItemChance"] = 1500
	tStrengthCopy_NewReward[3]["Pro"][2][3]["ItemId"] = 3315414
	tStrengthCopy_NewReward[3]["Pro"][2][3]["ItemNum"] = 1
	-- 九阳神功·上篇残页 - 16%
	tStrengthCopy_NewReward[3]["Pro"][2][4] = {}
	tStrengthCopy_NewReward[3]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][2][4]["ItemChance"] = 1600
	tStrengthCopy_NewReward[3]["Pro"][2][4]["ItemId"] = 3315403
	tStrengthCopy_NewReward[3]["Pro"][2][4]["ItemNum"] = 1
	-- 九阳神功·中篇残页 - 13%
	tStrengthCopy_NewReward[3]["Pro"][2][5] = {}
	tStrengthCopy_NewReward[3]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][2][5]["ItemChance"] = 1300
	tStrengthCopy_NewReward[3]["Pro"][2][5]["ItemId"] = 3315404
	tStrengthCopy_NewReward[3]["Pro"][2][5]["ItemNum"] = 1
	-- 九阳神功·下篇残页 - 10%
	tStrengthCopy_NewReward[3]["Pro"][2][6] = {}
	tStrengthCopy_NewReward[3]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[3]["Pro"][2][6]["ItemChance"] = 1000
	tStrengthCopy_NewReward[3]["Pro"][2][6]["ItemId"] = 3315405
	tStrengthCopy_NewReward[3]["Pro"][2][6]["ItemNum"] = 1


--------------------神纹箱------------------------
	tStrengthCopy_NewReward[4] = {}
	tStrengthCopy_NewReward[4]["Item"] = {}
	-- 黄色神纹碎片*3
	tStrengthCopy_NewReward[4]["Item"][1] = {}
	tStrengthCopy_NewReward[4]["Item"][1]["ItemId"] = 3306370
	tStrengthCopy_NewReward[4]["Item"][1]["ItemNum"] = 3
	-- 万能神纹精粹*6
	tStrengthCopy_NewReward[4]["Item"][2] = {}
	tStrengthCopy_NewReward[4]["Item"][2]["ItemId"] = 4060001
	tStrengthCopy_NewReward[4]["Item"][2]["ItemNum"] = 6

	-- ===随机神纹组
	-- ===索引: tStrengthCopy_NewReward[4]["Pro"][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewReward[4]["Pro"] = {}
	tStrengthCopy_NewReward[4]["Pro"][1] = {}
	tStrengthCopy_NewReward[4]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewReward[4]["Pro"][1]["LogId"] = 12001838
	tStrengthCopy_NewReward[4]["Pro"][1]["LogStep"] = " 2[1]"
	tStrengthCopy_NewReward[4]["Pro"][1]["Time"] = 6
	-- 黄色神纹赠随机包 - 1%
	tStrengthCopy_NewReward[4]["Pro"][1][1] = {}
	tStrengthCopy_NewReward[4]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[4]["Pro"][1][1]["ItemChance"] = 100
	tStrengthCopy_NewReward[4]["Pro"][1][1]["ItemId"] = 3306510 -- 黄色神纹(赠)随机包[3306510][属性:9]
	tStrengthCopy_NewReward[4]["Pro"][1][1]["ItemNum"] = 1

	-- 黄色神纹碎片 - 29%
	tStrengthCopy_NewReward[4]["Pro"][1][2] = {}
	tStrengthCopy_NewReward[4]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[4]["Pro"][1][2]["ItemChance"] = 2900
	tStrengthCopy_NewReward[4]["Pro"][1][2]["ItemId"] = 3306370 -- 黄色神纹碎片[3306370][属性:9]
	tStrengthCopy_NewReward[4]["Pro"][1][2]["ItemNum"] = 1
	-- 万能神纹精粹 - 70%
	tStrengthCopy_NewReward[4]["Pro"][1][3] = {}
	tStrengthCopy_NewReward[4]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewReward[4]["Pro"][1][3]["ItemChance"] = 7000
	tStrengthCopy_NewReward[4]["Pro"][1][3]["ItemId"] = 4060001 -- 万能神纹精粹[4060001][属性:9]
	tStrengthCopy_NewReward[4]["Pro"][1][3]["ItemNum"] = 1


----激情服奖励
local tStrengthCopy_NewRewardJiQing = {}
--------------- 珠光宝气箱-------------
----固定奖励
	tStrengthCopy_NewRewardJiQing[1] = {}
	
	tStrengthCopy_NewRewardJiQing[1]["Item"] = {}
	-- 普通宝石*4
	tStrengthCopy_NewRewardJiQing[1]["Item"][1] = {}
	tStrengthCopy_NewRewardJiQing[1]["Item"][1]["ItemId"] = 3003875
	tStrengthCopy_NewRewardJiQing[1]["Item"][1]["ItemNum"] = 4
	-- 龙珠*1
	tStrengthCopy_NewRewardJiQing[1]["Item"][2] = {}
	tStrengthCopy_NewRewardJiQing[1]["Item"][2]["ItemId"] = 1088000
	tStrengthCopy_NewRewardJiQing[1]["Item"][2]["ItemNum"] = 1
	-- 良品宝石*1
	tStrengthCopy_NewRewardJiQing[1]["Item"][3] = {}
	tStrengthCopy_NewRewardJiQing[1]["Item"][3]["ItemId"] = 3314224
	tStrengthCopy_NewRewardJiQing[1]["Item"][3]["ItemNum"] = 1
	--1w银两 
	tStrengthCopy_NewRewardJiQing[1]["Item"][4] = {}
	tStrengthCopy_NewRewardJiQing[1]["Item"][4]["ItemId"] = 3005118
	tStrengthCopy_NewRewardJiQing[1]["Item"][4]["ItemNum"] = 3
-------------随机奖励1-------------
	tStrengthCopy_NewRewardJiQing[1]["Pro"] = {}
	--第一层随机 金币跟物品
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1]["Time"] = 5

	--良品金麟宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][1] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][1]["ItemChance"] = 600
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][1]["ItemId"] = 700042
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][1]["ItemNum"] = 1
	--普通金麟宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][2] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][2]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][2]["ItemId"] = 700041
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][2]["ItemNum"] = 1
	--良品青虹宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][3] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][3]["ItemChance"] = 600
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][3]["ItemId"] = 700032
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][3]["ItemNum"] = 1
	--普通青虹宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][4] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][4]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][4]["ItemId"] = 700031
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][4]["ItemNum"] = 1
	--良品惊鸿宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][5] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][5]["ItemChance"] = 600
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][5]["ItemId"] = 700022
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][5]["ItemNum"] = 1
	--普通惊鸿宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][6] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][6]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][6]["ItemId"] = 700021
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][6]["ItemNum"] = 1
	--良品龙恨宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][7] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][7]["ItemChance"] = 900
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][7]["ItemId"] = 700012
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][7]["ItemNum"] = 1
	--普通龙恨宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][8] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][8]["ItemChance"] = 300
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][8]["ItemId"] = 700011
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][8]["ItemNum"] = 1
	--良品凤吟宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][9] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][9]["ItemChance"] = 300
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][9]["ItemId"] = 700002
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][9]["ItemNum"] = 1
	--普通凤吟宝石
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][10] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][10]["ItemChance"] = 100
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][10]["ItemId"] = 700001
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][10]["ItemNum"] = 1
	--龙珠
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][11] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][11]["ItemChance"] = 2000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][11]["ItemId"] = 1088000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][11]["ItemNum"] = 1
---1w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][12] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][12]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][12]["ItemId"] = 3005118
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][12]["ItemNum"] = 1
---2w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][13] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][13]["ItemChance"] = 1000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][13]["ItemId"] = 3005118
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][13]["ItemNum"] = 2
---4w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][14] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][14]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][14]["ItemChance"] = 1000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][14]["ItemId"] = 3005118
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][14]["ItemNum"] = 4
---6w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][15] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][15]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][15]["ItemChance"] = 1000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][15]["ItemId"] = 3005118
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][15]["ItemNum"] = 6
---8w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][16] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][16]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][16]["ItemChance"] = 500
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][16]["ItemId"] = 3005118
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][16]["ItemNum"] = 8
---10w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][17] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][17]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][17]["ItemChance"] = 300
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][17]["ItemId"] = 3005121
	tStrengthCopy_NewRewardJiQing[1]["Pro"][1][17]["ItemNum"] = 1



-------------随机奖励2-------------
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2]["Time"] = 2

	--龙珠
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][1] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][1]["ItemChance"] = 800
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][1]["ItemId"] = 1088000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][1]["ItemNum"] = 1
	--龙珠卷
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][2] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][2]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][2]["ItemId"] = 720028
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][2]["ItemNum"] = 1
-- 5w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][3] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][3]["ItemChance"] = 5000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][3]["ItemId"] = 3005120
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][3]["ItemNum"] = 1
-- 10w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][4] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][4]["ItemChance"] = 2000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][4]["ItemId"] = 3005121
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][4]["ItemNum"] = 1
-- 30w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][5] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][5]["ItemChance"] = 1000
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][5]["ItemId"] = 3308414
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][5]["ItemNum"] = 1
-- 50w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][6] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][6]["ItemChance"] = 800
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][6]["ItemId"] = 3308413
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][6]["ItemNum"] = 1
-- 100w银两
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][7] = {}
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][7]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][7]["ItemId"] = 3390013
	tStrengthCopy_NewRewardJiQing[1]["Pro"][2][7]["ItemNum"] = 1


--------------- 附魔箱箱-------------
----固定奖励
	tStrengthCopy_NewRewardJiQing[2] = {}
	
	tStrengthCopy_NewRewardJiQing[2]["Item"] = {}
	-- 流星*6
	tStrengthCopy_NewRewardJiQing[2]["Item"][1] = {}
	tStrengthCopy_NewRewardJiQing[2]["Item"][1]["ItemId"] = 1088001
	tStrengthCopy_NewRewardJiQing[2]["Item"][1]["ItemNum"] = 6
-------------随机奖励1-------------
	tStrengthCopy_NewRewardJiQing[2]["Pro"] = {}
	--
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1]["Time"] = 6

	--四阶神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][1] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][1]["ItemChance"] = 800
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][1]["ItemId"] = 3008051
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][1]["ItemNum"] = 1
	--五阶神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][2] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][2]["ItemChance"] = 300
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][2]["ItemId"] = 3008052
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][2]["ItemNum"] = 1
	--六阶武器神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][3] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][3]["ItemChance"] = 25
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][3]["ItemId"] = 3008053
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][3]["ItemNum"] = 1
	--六阶防具配饰神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][4] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][4]["ItemChance"] = 75
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][4]["ItemId"] = 3008054
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][4]["ItemNum"] = 1
	--优质武器淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][5] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][5]["ItemChance"] = 550
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][5]["ItemId"] = 3305023
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][5]["ItemNum"] = 1
	--豪华武器淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][6] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][6]["ItemChance"] = 1595
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][6]["ItemId"] = 3305027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][6]["ItemNum"] = 1
	--至尊武器淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][7] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][7]["ItemChance"] = 55
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][7]["ItemId"] = 3305030
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][7]["ItemNum"] = 1
	--优质防具淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][8] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][8]["ItemChance"] = 1100
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][8]["ItemId"] = 3305023
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][8]["ItemNum"] = 1
	--豪华防具淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][9] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][9]["ItemChance"] = 3190
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][9]["ItemId"] = 3305027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][9]["ItemNum"] = 1
	--至尊防具淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][10] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][10]["ItemChance"] = 110
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][10]["ItemId"] = 3305030
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][10]["ItemNum"] = 1
	--优质饰品淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][11] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][11]["ItemChance"] = 550
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][11]["ItemId"] = 3305023
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][11]["ItemNum"] = 1
---豪华饰品淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][12] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][12]["ItemChance"] = 1595
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][12]["ItemId"] = 3305027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][12]["ItemNum"] = 1
---至尊饰品淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][13] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][13]["ItemChance"] = 55
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][13]["ItemId"] = 3305030
	tStrengthCopy_NewRewardJiQing[2]["Pro"][1][13]["ItemNum"] = 1

---随机奖励2-------------
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2]["Time"] = 3

	--五阶神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][1] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][1]["ItemChance"] = 600
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][1]["ItemId"] = 3008052
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][1]["ItemNum"] = 1
	--六阶武器神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][2] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][2]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][2]["ItemId"] = 3008053
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][2]["ItemNum"] = 1
	--六阶防具配饰神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][3] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][3]["ItemChance"] = 150
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][3]["ItemId"] = 3008054
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][3]["ItemNum"] = 1
	--七阶武器神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][4] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][4]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][4]["ItemId"] = 3008055
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][4]["ItemNum"] = 1
	--七阶防具配饰神魂礼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][5] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][5]["ItemChance"] = 150
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][5]["ItemId"] = 3008056
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][5]["ItemNum"] = 1
	--优质武器淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][6] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][6]["ItemChance"] = 720
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][6]["ItemId"] = 3305023
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][6]["ItemNum"] = 1
	--豪华武器淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][7] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][7]["ItemChance"] = 720
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][7]["ItemId"] = 3305027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][7]["ItemNum"] = 1
	--至尊武器淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][8] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][8]["ItemChance"] = 960
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][8]["ItemId"] = 3305030
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][8]["ItemNum"] = 1
	--优质防具淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][9] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][9]["ItemChance"] = 720
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][9]["ItemId"] = 3305023
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][9]["ItemNum"] = 1
	--豪华防具淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][10] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][10]["ItemChance"] = 720
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][10]["ItemId"] = 3305027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][10]["ItemNum"] = 1
	--至尊防具淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][11] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][11]["ItemChance"] = 960
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][11]["ItemId"] = 3305030
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][11]["ItemNum"] = 1
---优质饰品淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][12] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][12]["ItemChance"] = 720
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][12]["ItemId"] = 3305023
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][12]["ItemNum"] = 1
---豪华饰品淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][13] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][13]["ItemChance"] = 720
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][13]["ItemId"] = 3305027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][13]["ItemNum"] = 1
---至尊饰品淬炼包
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][14] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][14]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][14]["ItemChance"] = 960
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][14]["ItemId"] = 3305030
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][14]["ItemNum"] = 1
---流星卷
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][15] = {}
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][15]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][15]["ItemChance"] = 1800
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][15]["ItemId"] = 720027
	tStrengthCopy_NewRewardJiQing[2]["Pro"][2][15]["ItemNum"] = 1


--------------- 追加箱-------------
----固定奖励
	tStrengthCopy_NewRewardJiQing[3] = {}
	
	tStrengthCopy_NewRewardJiQing[3]["Item"] = {}
	-- +1赤炼石（5天）*10
	tStrengthCopy_NewRewardJiQing[3]["Item"][1] = {}
	tStrengthCopy_NewRewardJiQing[3]["Item"][1]["ItemId"] = 3321034
	tStrengthCopy_NewRewardJiQing[3]["Item"][1]["ItemNum"] = 10
-------------随机奖励1-------------
	tStrengthCopy_NewRewardJiQing[3]["Pro"] = {}
	--
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1]["Time"] = 3

	--+1赤炼石（5天）
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][1] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][1]["ItemChance"] = 8000
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][1]["ItemId"] = 3321034
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][1]["ItemNum"] = 1
	--+2赤炼石（5天）
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][2] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][2]["ItemChance"] = 1200
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][2]["ItemId"] = 3321035
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][2]["ItemNum"] = 1
	--+3赤炼石（5天）
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][3] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][3]["ItemChance"] = 400
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][3]["ItemId"] = 3321036
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][3]["ItemNum"] = 1
	--+4赤炼石（5天）
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][4] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][4]["ItemChance"] = 90
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][4]["ItemId"] = 3321037
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][4]["ItemNum"] = 1
	--+5赤炼石（5天）
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][5] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][5]["ItemChance"] = 10
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][5]["ItemId"] = 3321038
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][5]["ItemNum"] = 1
	--+3枣红马礼包
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][6] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][6]["ItemChance"] = 100
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][6]["ItemId"] = 723860
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][6]["ItemNum"] = 1
	--+3雪脂马礼包
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][7] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][7]["ItemChance"] = 100
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][7]["ItemId"] = 723861
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][7]["ItemNum"] = 1
	--+3黑颈马礼包
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][8] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][8]["ItemChance"] = 100
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][8]["ItemId"] = 723862
	tStrengthCopy_NewRewardJiQing[3]["Pro"][1][8]["ItemNum"] = 1

---随机奖励2-------------
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2]["Time"] = 1

	--+3赤炼石
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][1] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][1]["ItemChance"] = 7700
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][1]["ItemId"] = 3321036
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][1]["ItemNum"] = 1
	--+4赤炼石
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][2] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][2]["ItemChance"] = 500
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][2]["ItemId"] = 3321037
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][2]["ItemNum"] = 1
	--+5赤炼石
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][3] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][3]["ItemChance"] = 200
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][3]["ItemId"] = 3321038
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][3]["ItemNum"] = 1
	--+6赤炼石
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][4] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][4]["ItemChance"] = 100
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][4]["ItemId"] = 3321039
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][4]["ItemNum"] = 1
	--+3枣红马礼包
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][5] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][5]["ItemChance"] = 500
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][5]["ItemId"] = 723860
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][5]["ItemNum"] = 1
	--+3雪脂马礼包
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][6] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][6]["ItemChance"] = 500
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][6]["ItemId"] = 723861
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][6]["ItemNum"] = 1
	--+3黑颈马礼包
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][7] = {}
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][7]["ItemChance"] = 500
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][7]["ItemId"] = 723862
	tStrengthCopy_NewRewardJiQing[3]["Pro"][2][7]["ItemNum"] = 1

	tStrengthCopy_NewRewardJiQing[4] = {}
	-- ===内功随机组1
	-- ===索引: tStrengthCopy_NewRewardJiQing[4]["Pro"][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewRewardJiQing[4]["Pro"] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1]["Time"] = 12

	-- 龙象般若功上卷残页 - 7.74%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][1] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][1]["ItemChance"] = 774
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][1]["ItemId"] = 3309947 -- 龙象般若功·上篇残页[3309947][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][1]["ItemNum"] = 1
	-- 龙象般若功下卷残页 - 7.74%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][2] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][2]["ItemChance"] = 774
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][2]["ItemId"] = 3309948 -- 龙象般若功·下篇残页[3309948][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][2]["ItemNum"] = 1
	-- 无量心经上卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][3] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][3]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][3]["ItemId"] = 3309949 -- 无量心经·上篇残页[3309949][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][3]["ItemNum"] = 1
	-- 无量心经中卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][4] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][4]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][4]["ItemId"] = 3309950 -- 无量心经·中篇残页[3309950][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][4]["ItemNum"] = 1
	-- 无量心经下卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][5] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][5]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][5]["ItemId"] = 3309951 -- 无量心经·下篇残页[3309951][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][5]["ItemNum"] = 1
	-- 太乙神功上卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][6] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][6]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][6]["ItemId"] = 3309952 -- 太乙神功·上篇残页[3309952][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][6]["ItemNum"] = 1
	-- 太乙神功中卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][7] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][7]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][7]["ItemId"] = 3309953 -- 太乙神功·中篇残页[3309953][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][7]["ItemNum"] = 1
	-- 太乙神功下卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][8] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][8]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][8]["ItemId"] = 3309954 -- 太乙神功·下篇残页[3309954][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][8]["ItemNum"] = 1
	-- 枯荣禅功上卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][9] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][9]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][9]["ItemId"] = 3309955 -- 枯荣禅功·上篇残页[3309955][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][9]["ItemNum"] = 1
	-- 枯荣禅功中卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][10] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][10]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][10]["ItemId"] = 3309956 -- 枯荣禅功·中篇残页[3309956][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][10]["ItemNum"] = 1
	-- 枯荣禅功下卷残页 - 7.65%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][11] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][11]["ItemChance"] = 765
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][11]["ItemId"] = 3309957 -- 枯荣禅功·下篇残页[3309957][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][11]["ItemNum"] = 1
	-- 九阳神功·上篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][12] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][12]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][12]["ItemId"] = 3315403 -- 九阳神功·上篇残页[3315403][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][12]["ItemNum"] = 1
	-- 九阳神功·中篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][13] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][13]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][13]["ItemId"] = 3315404 -- 九阳神功·中篇残页[3315404][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][13]["ItemNum"] = 1
	-- 九阳神功·下篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][14] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][14]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][14]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][14]["ItemId"] = 3315405 -- 九阳神功·下篇残页[3315405][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][14]["ItemNum"] = 1
	-- 北冥神功·上篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][15] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][15]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][15]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][15]["ItemId"] = 3315406 -- 北冥神功·上篇残页[3315406][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][15]["ItemNum"] = 1
	-- 北冥神功·中篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][16] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][16]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][16]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][16]["ItemId"] = 3315407 -- 北冥神功·中篇残页[3315407][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][16]["ItemNum"] = 1
	-- 北冥神功·下篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][17] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][17]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][17]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][17]["ItemId"] = 3315408 -- 北冥神功·下篇残页[3315408][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][17]["ItemNum"] = 1
	-- 紫霞神功·上篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][18] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][18]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][18]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][18]["ItemId"] = 3315409 -- 紫霞神功·上篇残页[3315409][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][18]["ItemNum"] = 1
	-- 紫霞神功·中篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][19] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][19]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][19]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][19]["ItemId"] = 3315410 -- 紫霞神功·中篇残页[3315410][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][19]["ItemNum"] = 1
	-- 紫霞神功·下篇残页 - 0.45%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][20] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][20]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][20]["ItemChance"] = 45
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][20]["ItemId"] = 3315411 -- 紫霞神功·下篇残页[3315411][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][20]["ItemNum"] = 1
	-- 九阴真经·上篇残页 - 0.27%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][21] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][21]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][21]["ItemChance"] = 27
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][21]["ItemId"] = 3315412 -- 九阴真经·上篇残页[3315412][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][21]["ItemNum"] = 1
	-- 九阴真经·中篇残页 - 0.27%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][22] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][22]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][22]["ItemChance"] = 27
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][22]["ItemId"] = 3315413 -- 九阴真经·中篇残页[3315413][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][22]["ItemNum"] = 1
	-- 九阴真经·下篇残页 - 0.27%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][23] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][23]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][23]["ItemChance"] = 27
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][23]["ItemId"] = 3315414 -- 九阴真经·下篇残页[3315414][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][23]["ItemNum"] = 1
	-- 化功大法·上篇残页 - 0.27%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][24] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][24]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][24]["ItemChance"] = 27
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][24]["ItemId"] = 3315415 -- 化功大法·上篇残页[3315415][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][24]["ItemNum"] = 1
	-- 化功大法·中篇残页 - 0.27%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][25] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][25]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][25]["ItemChance"] = 27
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][25]["ItemId"] = 3315416 -- 化功大法·中篇残页[3315416][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][25]["ItemNum"] = 1
	-- 化功大法·下篇残页 - 0.27%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][26] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][26]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][26]["ItemChance"] = 27
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][26]["ItemId"] = 3315417 -- 化功大法·下篇残页[3315417][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][26]["ItemNum"] = 1
	-- 龙象般若功上卷 - 0.86%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][27] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][27]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][27]["ItemChance"] = 86
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][27]["ItemId"] = 3005397 -- 龙象般若功·上篇[3005397][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][27]["ItemNum"] = 1
	-- 龙象般若功下卷 - 0.86%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][28] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][28]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][28]["ItemChance"] = 86
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][28]["ItemId"] = 3005398 -- 龙象般若功·下篇[3005398][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][28]["ItemNum"] = 1
	-- 无量心经上卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][29] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][29]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][29]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][29]["ItemId"] = 3007115 -- 无量心经·上篇[3007115][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][29]["ItemNum"] = 1
	-- 无量心经中卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][30] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][30]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][30]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][30]["ItemId"] = 3007116 -- 无量心经·中篇[3007116][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][30]["ItemNum"] = 1
	-- 无量心经下卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][31] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][31]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][31]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][31]["ItemId"] = 3007117 -- 无量心经·下篇[3007117][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][31]["ItemNum"] = 1
	-- 太乙神功上卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][32] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][32]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][32]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][32]["ItemId"] = 3005399 -- 太乙神功·上篇[3005399][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][32]["ItemNum"] = 1
	-- 太乙神功中卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][33] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][33]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][33]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][33]["ItemId"] = 3005400 -- 太乙神功·中篇[3005400][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][33]["ItemNum"] = 1
	-- 太乙神功下卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][34] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][34]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][34]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][34]["ItemId"] = 3005401 -- 太乙神功·下篇[3005401][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][34]["ItemNum"] = 1
	-- 枯荣禅功上卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][35] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][35]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][35]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][35]["ItemId"] = 3007230 -- 枯荣禅功·上篇[3007230][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][35]["ItemNum"] = 1
	-- 枯荣禅功中卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][36] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][36]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][36]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][36]["ItemId"] = 3007231 -- 枯荣禅功·中篇[3007231][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][36]["ItemNum"] = 1
	-- 枯荣禅功下卷 - 0.85%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][37] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][37]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][37]["ItemChance"] = 85
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][37]["ItemId"] = 3007232 -- 枯荣禅功·下篇[3007232][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][37]["ItemNum"] = 1
	-- 九阳神功·上篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][38] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][38]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][38]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][38]["ItemId"] = 3315418 -- 九阳神功·上篇[3315418][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][38]["ItemNum"] = 1
	-- 九阳神功·中篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][39] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][39]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][39]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][39]["ItemId"] = 3315419 -- 九阳神功·中篇[3315419][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][39]["ItemNum"] = 1
	-- 九阳神功·下篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][40] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][40]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][40]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][40]["ItemId"] = 3315420 -- 九阳神功·下篇[3315420][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][40]["ItemNum"] = 1
	-- 北冥神功·上篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][41] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][41]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][41]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][41]["ItemId"] = 3315421 -- 北冥神功·上篇[3315421][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][41]["ItemNum"] = 1
	-- 北冥神功·中篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][42] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][42]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][42]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][42]["ItemId"] = 3315422 -- 北冥神功·中篇[3315422][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][42]["ItemNum"] = 1
	-- 北冥神功·下篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][43] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][43]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][43]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][43]["ItemId"] = 3315423 -- 北冥神功·下篇[3315423][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][43]["ItemNum"] = 1
	-- 紫霞神功·上篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][44] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][44]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][44]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][44]["ItemId"] = 3315424 -- 紫霞神功·上篇[3315424][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][44]["ItemNum"] = 1
	-- 紫霞神功·中篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][45] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][45]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][45]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][45]["ItemId"] = 3315425 -- 紫霞神功·中篇[3315425][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][45]["ItemNum"] = 1
	-- 紫霞神功·下篇 - 0.05%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][46] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][46]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][46]["ItemChance"] = 5
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][46]["ItemId"] = 3315426 -- 紫霞神功·下篇[3315426][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][46]["ItemNum"] = 1
	-- 九阴真经·上篇 - 0.03%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][47] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][47]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][47]["ItemChance"] = 3
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][47]["ItemId"] = 3315427 -- 九阴真经·上篇[3315427][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][47]["ItemNum"] = 1
	-- 九阴真经·中篇 - 0.03%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][48] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][48]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][48]["ItemChance"] = 3
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][48]["ItemId"] = 3315428 -- 九阴真经·中篇[3315428][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][48]["ItemNum"] = 1
	-- 九阴真经·下篇 - 0.03%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][49] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][49]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][49]["ItemChance"] = 3
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][49]["ItemId"] = 3315429 -- 九阴真经·下篇[3315429][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][49]["ItemNum"] = 1
	-- 化功大法·上篇 - 0.03%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][50] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][50]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][50]["ItemChance"] = 3
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][50]["ItemId"] = 3315430 -- 化功大法·上篇[3315430][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][50]["ItemNum"] = 1
	-- 化功大法·中篇 - 0.03%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][51] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][51]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][51]["ItemChance"] = 3
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][51]["ItemId"] = 3315431 -- 化功大法·中篇[3315431][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][51]["ItemNum"] = 1
	-- 化功大法·下篇 - 0.03%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][52] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][52]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][52]["ItemChance"] = 3
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][52]["ItemId"] = 3315432 -- 化功大法·下篇[3315432][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][1][52]["ItemNum"] = 1


	tStrengthCopy_NewRewardJiQing[4]["Pro"][2] = {}
	-- ===内功随机组2
	-- ===索引: tStrengthCopy_NewRewardJiQing[4]["Pro"][2]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2]["Time"] = 3

	-- 龙象般若功上卷 - 8.6%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][1] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][1]["ItemChance"] = 860
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][1]["ItemId"] = 3005397 -- 龙象般若功·上篇[3005397][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][1]["ItemNum"] = 1
	-- 龙象般若功下卷 - 8.6%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][2] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][2]["ItemChance"] = 860
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][2]["ItemId"] = 3005398 -- 龙象般若功·下篇[3005398][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][2]["ItemNum"] = 1
	-- 无量心经上卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][3] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][3]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][3]["ItemId"] = 3007115 -- 无量心经·上篇[3007115][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][3]["ItemNum"] = 1
	-- 无量心经中卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][4] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][4]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][4]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][4]["ItemId"] = 3007116 -- 无量心经·中篇[3007116][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][4]["ItemNum"] = 1
	-- 无量心经下卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][5] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][5]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][5]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][5]["ItemId"] = 3007117 -- 无量心经·下篇[3007117][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][5]["ItemNum"] = 1
	-- 太乙神功上卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][6] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][6]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][6]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][6]["ItemId"] = 3005399 -- 太乙神功·上篇[3005399][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][6]["ItemNum"] = 1
	-- 太乙神功中卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][7] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][7]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][7]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][7]["ItemId"] = 3005400 -- 太乙神功·中篇[3005400][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][7]["ItemNum"] = 1
	-- 太乙神功下卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][8] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][8]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][8]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][8]["ItemId"] = 3005401 -- 太乙神功·下篇[3005401][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][8]["ItemNum"] = 1
	-- 枯荣禅功上卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][9] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][9]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][9]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][9]["ItemId"] = 3007230 -- 枯荣禅功·上篇[3007230][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][9]["ItemNum"] = 1
	-- 枯荣禅功中卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][10] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][10]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][10]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][10]["ItemId"] = 3007231 -- 枯荣禅功·中篇[3007231][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][10]["ItemNum"] = 1
	-- 枯荣禅功下卷 - 8.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][11] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][11]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][11]["ItemChance"] = 850
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][11]["ItemId"] = 3007232 -- 枯荣禅功·下篇[3007232][属性:9]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][11]["ItemNum"] = 1
	-- 九阳神功·上篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][12] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][12]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][12]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][12]["ItemId"] = 3315418 -- 九阳神功·上篇[3315418][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][12]["ItemNum"] = 1
	-- 九阳神功·中篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][13] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][13]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][13]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][13]["ItemId"] = 3315419 -- 九阳神功·中篇[3315419][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][13]["ItemNum"] = 1
	-- 九阳神功·下篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][14] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][14]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][14]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][14]["ItemId"] = 3315420 -- 九阳神功·下篇[3315420][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][14]["ItemNum"] = 1
	-- 北冥神功·上篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][15] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][15]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][15]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][15]["ItemId"] = 3315421 -- 北冥神功·上篇[3315421][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][15]["ItemNum"] = 1
	-- 北冥神功·中篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][16] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][16]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][16]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][16]["ItemId"] = 3315422 -- 北冥神功·中篇[3315422][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][16]["ItemNum"] = 1
	-- 北冥神功·下篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][17] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][17]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][17]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][17]["ItemId"] = 3315423 -- 北冥神功·下篇[3315423][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][17]["ItemNum"] = 1
	-- 紫霞神功·上篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][18] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][18]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][18]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][18]["ItemId"] = 3315424 -- 紫霞神功·上篇[3315424][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][18]["ItemNum"] = 1
	-- 紫霞神功·中篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][19] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][19]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][19]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][19]["ItemId"] = 3315425 -- 紫霞神功·中篇[3315425][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][19]["ItemNum"] = 1
	-- 紫霞神功·下篇 - 0.5%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][20] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][20]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][20]["ItemChance"] = 50
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][20]["ItemId"] = 3315426 -- 紫霞神功·下篇[3315426][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][20]["ItemNum"] = 1
	-- 九阴真经·上篇 - 0.3%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][21] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][21]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][21]["ItemChance"] = 30
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][21]["ItemId"] = 3315427 -- 九阴真经·上篇[3315427][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][21]["ItemNum"] = 1
	-- 九阴真经·中篇 - 0.3%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][22] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][22]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][22]["ItemChance"] = 30
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][22]["ItemId"] = 3315428 -- 九阴真经·中篇[3315428][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][22]["ItemNum"] = 1
	-- 九阴真经·下篇 - 0.3%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][23] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][23]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][23]["ItemChance"] = 30
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][23]["ItemId"] = 3315429 -- 九阴真经·下篇[3315429][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][23]["ItemNum"] = 1
	-- 化功大法·上篇 - 0.3%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][24] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][24]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][24]["ItemChance"] = 30
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][24]["ItemId"] = 3315430 -- 化功大法·上篇[3315430][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][24]["ItemNum"] = 1
	-- 化功大法·中篇 - 0.3%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][25] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][25]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][25]["ItemChance"] = 30
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][25]["ItemId"] = 3315431 -- 化功大法·中篇[3315431][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][25]["ItemNum"] = 1
	-- 化功大法·下篇 - 0.3%
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][26] = {}
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][26]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][26]["ItemChance"] = 30
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][26]["ItemId"] = 3315432 -- 化功大法·下篇[3315432][属性:11]
	tStrengthCopy_NewRewardJiQing[4]["Pro"][2][26]["ItemNum"] = 1

--------------------神纹箱------------------------
	tStrengthCopy_NewRewardJiQing[5] = {}
	tStrengthCopy_NewRewardJiQing[5]["Item"] = {}
	-- 黄色神纹碎片*3
	tStrengthCopy_NewRewardJiQing[5]["Item"][1] = {}
	tStrengthCopy_NewRewardJiQing[5]["Item"][1]["ItemId"] = 3306370
	tStrengthCopy_NewRewardJiQing[5]["Item"][1]["ItemNum"] = 4
	-- 万能神纹精粹*6
	tStrengthCopy_NewRewardJiQing[5]["Item"][2] = {}
	tStrengthCopy_NewRewardJiQing[5]["Item"][2]["ItemId"] = 1088000
	tStrengthCopy_NewRewardJiQing[5]["Item"][2]["ItemNum"] = 1

	
	-- ===随机神纹组1
	-- ===索引: tStrengthCopy_NewRewardJiQing[5]["Pro"][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_NewRewardJiQing[5]["Pro"] = {}
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1] = {}
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1]["ItemChanceSum"] = 10000
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1]["Time"] = 6
	-- 黄色神纹赠随机包 - 1%
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][1] = {}
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][1]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][1]["ItemChance"] = 100
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][1]["ItemId"] = 3306510 -- 黄色神纹(赠)随机包[3306510][属性:9]
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][1]["ItemNum"] = 1 -- 黄色神纹(赠)随机包[3306510][属性:9]
	-- 黄色神纹碎片 - 29%
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][2] = {}
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][2]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][2]["ItemChance"] = 2900
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][2]["ItemId"] = 3306370 -- 黄色神纹碎片[3306370][属性:9]
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][2]["ItemNum"] = 1 -- 黄色神纹碎片[3306370][属性:9]
	-- 万能神纹精粹 - 70%
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][3] = {}
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][3]["RandomItemChanceType"] = 2
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][3]["ItemChance"] = 7000
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][3]["ItemId"] = 4060001 -- 万能神纹精粹[4060001][属性:9]
	tStrengthCopy_NewRewardJiQing[5]["Pro"][1][3]["ItemNum"] = 1 -- 万能神纹精粹[4060001][属性:9]






----------宝箱
local tStrengthCopy_LinkBox = {}
	tStrengthCopy_LinkBox["Get"] = {}
	tStrengthCopy_LinkBox["Get"]["LogId"] = 12001838
	tStrengthCopy_LinkBox["Get"]["LogStep"] = "2[1]"
	tStrengthCopy_LinkBox["Get"]["RewardItem"] = {}
	tStrengthCopy_LinkBox["Get"]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox["Get"]["RewardItem"][1]["Id"] = 3315708 --  3315708 【库里没有该物品】, 【表格】化功大法·上篇
	tStrengthCopy_LinkBox["Get"]["RewardItem"][1]["Attr"] = "0 1" --  3315708 【库里没有该物品】*1
	tStrengthCopy_LinkBox["Get"]["RewardEffect"] = {}
	tStrengthCopy_LinkBox["Get"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox["Get"]["RewardEffect"]["Effect"] = "zf2-e250"

	-- ===修为灵露礼包
	-- ===索引:tStrengthCopy_LinkBox[3316143]
	-- ===删除:3316143
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tStrengthCopy_LinkBox[3316143] = {}
	tStrengthCopy_LinkBox[3316143]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStrengthCopy_LinkBox[3316143]["DeleteItem"] = {}
	tStrengthCopy_LinkBox[3316143]["DeleteItem"][1] = {}
	tStrengthCopy_LinkBox[3316143]["DeleteItem"][1]["Id"] = 3316143 -- 【库】 3316143 【库里没有该物品】[属性:]
	tStrengthCopy_LinkBox[3316143]["LogId"] = 12001838
	tStrengthCopy_LinkBox[3316143]["LogStep"] = " 2[1]"
	-- 九花玉露 - 34%
	tStrengthCopy_LinkBox[3316143][1] = {}
	tStrengthCopy_LinkBox[3316143][1]["RandomItemChanceType"] = 2
	tStrengthCopy_LinkBox[3316143][1]["ItemChance"] = 3400
	tStrengthCopy_LinkBox[3316143][1]["RewardItem"] = {}
	tStrengthCopy_LinkBox[3316143][1]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox[3316143][1]["RewardItem"][1]["Id"] = 3314211 -- 九花玉露[3314211][属性:8][叠加:10000][金币:0], 【表格】九花玉露
	tStrengthCopy_LinkBox[3316143][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 九花玉露（赠）*1
	tStrengthCopy_LinkBox[3316143][1]["RewardEffect"] = {}
	tStrengthCopy_LinkBox[3316143][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox[3316143][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 九花玉露 - 32%
	tStrengthCopy_LinkBox[3316143][2] = {}
	tStrengthCopy_LinkBox[3316143][2]["RandomItemChanceType"] = 2
	tStrengthCopy_LinkBox[3316143][2]["ItemChance"] = 3200
	tStrengthCopy_LinkBox[3316143][2]["RewardItem"] = {}
	tStrengthCopy_LinkBox[3316143][2]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox[3316143][2]["RewardItem"][1]["Id"] = 3314211 -- 九花玉露[3314211][属性:8][叠加:10000][金币:0], 【表格】九花玉露
	tStrengthCopy_LinkBox[3316143][2]["RewardItem"][1]["Attr"] = "0 3 3" -- 九花玉露（赠）*3
	tStrengthCopy_LinkBox[3316143][2]["RewardEffect"] = {}
	tStrengthCopy_LinkBox[3316143][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox[3316143][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪参灵露 - 23%
	tStrengthCopy_LinkBox[3316143][3] = {}
	tStrengthCopy_LinkBox[3316143][3]["RandomItemChanceType"] = 2
	tStrengthCopy_LinkBox[3316143][3]["ItemChance"] = 2300
	tStrengthCopy_LinkBox[3316143][3]["RewardItem"] = {}
	tStrengthCopy_LinkBox[3316143][3]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox[3316143][3]["RewardItem"][1]["Id"] = 3314212 -- 雪参灵露[3314212][属性:8][叠加:10000][金币:0], 【表格】雪参灵露
	tStrengthCopy_LinkBox[3316143][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 雪参灵露（赠）*1
	tStrengthCopy_LinkBox[3316143][3]["RewardEffect"] = {}
	tStrengthCopy_LinkBox[3316143][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox[3316143][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪参灵露 - 8%
	tStrengthCopy_LinkBox[3316143][4] = {}
	tStrengthCopy_LinkBox[3316143][4]["RandomItemChanceType"] = 2
	tStrengthCopy_LinkBox[3316143][4]["ItemChance"] = 800
	tStrengthCopy_LinkBox[3316143][4]["RewardItem"] = {}
	tStrengthCopy_LinkBox[3316143][4]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox[3316143][4]["RewardItem"][1]["Id"] = 3314212 -- 雪参灵露[3314212][属性:8][叠加:10000][金币:0], 【表格】雪参灵露
	tStrengthCopy_LinkBox[3316143][4]["RewardItem"][1]["Attr"] = "0 3 3" -- 雪参灵露（赠）*3
	tStrengthCopy_LinkBox[3316143][4]["RewardEffect"] = {}
	tStrengthCopy_LinkBox[3316143][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox[3316143][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 宝莲仙露 - 2.5%
	tStrengthCopy_LinkBox[3316143][5] = {}
	tStrengthCopy_LinkBox[3316143][5]["RandomItemChanceType"] = 2
	tStrengthCopy_LinkBox[3316143][5]["ItemChance"] = 250
	tStrengthCopy_LinkBox[3316143][5]["RewardItem"] = {}
	tStrengthCopy_LinkBox[3316143][5]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox[3316143][5]["RewardItem"][1]["Id"] = 3314213 -- 宝莲仙露[3314213][属性:8][叠加:10000][金币:0], 【表格】宝莲仙露
	tStrengthCopy_LinkBox[3316143][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 宝莲仙露（赠）*1
	tStrengthCopy_LinkBox[3316143][5]["RewardEffect"] = {}
	tStrengthCopy_LinkBox[3316143][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox[3316143][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 宝莲仙露 - 0.5%
	tStrengthCopy_LinkBox[3316143][6] = {}
	tStrengthCopy_LinkBox[3316143][6]["RandomItemChanceType"] = 2
	tStrengthCopy_LinkBox[3316143][6]["ItemChance"] = 50
	tStrengthCopy_LinkBox[3316143][6]["RewardItem"] = {}
	tStrengthCopy_LinkBox[3316143][6]["RewardItem"][1] = {}
	tStrengthCopy_LinkBox[3316143][6]["RewardItem"][1]["Id"] = 3314213 -- 宝莲仙露[3314213][属性:8][叠加:10000][金币:0], 【表格】宝莲仙露
	tStrengthCopy_LinkBox[3316143][6]["RewardItem"][1]["Attr"] = "0 3 3" -- 宝莲仙露（赠）*3
	tStrengthCopy_LinkBox[3316143][6]["RewardEffect"] = {}
	tStrengthCopy_LinkBox[3316143][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_LinkBox[3316143][6]["RewardEffect"]["Effect"] = "angelwing"



local tStrengthCopy_BoxPos = {}
	tStrengthCopy_BoxPos[472] = {}
	tStrengthCopy_BoxPos[472]["PosX"] = 40
	tStrengthCopy_BoxPos[472]["PosY"] = 40
	tStrengthCopy_BoxPos[472]["NpcFace"] = 24880
	tStrengthCopy_BoxPos[472]["Action"] = 94492254
	
	tStrengthCopy_BoxPos[473] = {}
	tStrengthCopy_BoxPos[473]["PosX"] = 40
	tStrengthCopy_BoxPos[473]["PosY"] = 40
	tStrengthCopy_BoxPos[473]["NpcFace"] = 24880
	tStrengthCopy_BoxPos[473]["Action"] = 94492255
	
	tStrengthCopy_BoxPos[474] = {}
	tStrengthCopy_BoxPos[474]["PosX"] = 40
	tStrengthCopy_BoxPos[474]["PosY"] = 40
	tStrengthCopy_BoxPos[474]["NpcFace"] = 24880
	tStrengthCopy_BoxPos[474]["Action"] = 94492256
	
local tStrengthCopy_NewRewardItem = {}
	tStrengthCopy_NewRewardItem["Get"] = {}
	tStrengthCopy_NewRewardItem["Get"]["LogId"] = 12001838
	tStrengthCopy_NewRewardItem["Get"]["LogStep"] = "2[1]"
	tStrengthCopy_NewRewardItem["Get"]["RewardItem"] = {}
	tStrengthCopy_NewRewardItem["Get"]["RewardItem"][1] = {}
	tStrengthCopy_NewRewardItem["Get"]["RewardItem"][1]["Id"] = 3315708 --  3315708 【库里没有该物品】, 【表格】化功大法·上篇
	tStrengthCopy_NewRewardItem["Get"]["RewardItem"][1]["Attr"] = "0 %d" --  3315708 【库里没有该物品】*1
	tStrengthCopy_NewRewardItem["Get"]["RewardEffect"] = {}
	tStrengthCopy_NewRewardItem["Get"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_NewRewardItem["Get"]["RewardEffect"]["Effect"] = "angelwing"

	
	tStrengthCopy_NewRewardItem[11] = {}
	tStrengthCopy_NewRewardItem[11]["LogId"] = 12001838
	tStrengthCopy_NewRewardItem[11]["LogStep"] = "2[2]"
	tStrengthCopy_NewRewardItem[11]["RewardItem"] = {}
	tStrengthCopy_NewRewardItem[11]["RewardItem"][1] = {}
	tStrengthCopy_NewRewardItem[11]["RewardItem"][1]["Id"] = 3315433 --  3315433 【库里没有该物品】, 【表格】化功大法·上篇
	tStrengthCopy_NewRewardItem[11]["RewardItem"][1]["Attr"] = "0 1" --  3315433 【库里没有该物品】*1
	tStrengthCopy_NewRewardItem[11]["RewardEffect"] = {}
	tStrengthCopy_NewRewardItem[11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_NewRewardItem[11]["RewardEffect"]["Effect"] = "angelwing"

	tStrengthCopy_NewRewardItem[12] = {}
	tStrengthCopy_NewRewardItem[12]["LogId"] = 12001838
	tStrengthCopy_NewRewardItem[12]["LogStep"] = "2[3]"
	tStrengthCopy_NewRewardItem[12]["RewardItem"] = {}
	tStrengthCopy_NewRewardItem[12]["RewardItem"][1] = {}
	tStrengthCopy_NewRewardItem[12]["RewardItem"][1]["Id"] = 3316143 --  3316143 【库里没有该物品】, 【表格】化功大法·上篇
	tStrengthCopy_NewRewardItem[12]["RewardItem"][1]["Attr"] = "0 1" --  3316143 【库里没有该物品】*1
	tStrengthCopy_NewRewardItem[12]["RewardEffect"] = {}
	tStrengthCopy_NewRewardItem[12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStrengthCopy_NewRewardItem[12]["RewardEffect"]["Effect"] = "angelwing"
	
	
local tStrengthCopy_NewMonsterRandom = {}
	tStrengthCopy_NewMonsterRandom[5994] = 1000
	tStrengthCopy_NewMonsterRandom[6071] = 1000
	tStrengthCopy_NewMonsterRandom[5996] = 1000
	tStrengthCopy_NewMonsterRandom[5999] = 1000
	
	
	
----------------------------------逻辑部分---------------------------------------------
--判断是否组队
function StrengthCopy_JubTeam()
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum >= 2 then
		return true
	else
		return false
	end
end

----副本一开始就有一个宝箱，打开直接获得内功抽奖礼包，这时副本守卫出现，开始战斗
function StrengthCopy_GotoBrushBox(nStrengthCopy_Instancetype, nStrengthCopy_InstancetypeMapId,nStrengthCopyUserId)
	if nStrengthCopy_Instancetype < 472 or nStrengthCopy_Instancetype > 474 then
		return
	end

	local nStrengthCopyPosX = tStrengthCopy_BoxPos[nStrengthCopy_Instancetype]["PosX"]
	local nStrengthCopyPosY = tStrengthCopy_BoxPos[nStrengthCopy_Instancetype]["PosY"]
	local nStrengthCopyNpcFace = tStrengthCopy_BoxPos[nStrengthCopy_Instancetype]["NpcFace"]
	local sStrengthCopyName = tStrengthCopy_text["Msg"]["Box"][nStrengthCopy_Instancetype]
	local nStrengthCopy_Action = tStrengthCopy_BoxPos[nStrengthCopy_Instancetype]["Action"]
	Npc_CreateDynaNpc(sStrengthCopyName,2,0,nStrengthCopyNpcFace,0,nStrengthCopyUserId,nStrengthCopy_InstancetypeMapId,nStrengthCopyPosX,nStrengthCopyPosY,0,0,0,nStrengthCopy_Action)

end 

---点宝箱
function StrengthCopy_LinkBox(nStrengthCopy_Instancetype)
	---判断空间获得伏魔易宝
	if not RewardTemplate_CheckSpace(tStrengthCopy_LinkBox["Get"]) then
		return
	end
	--删宝箱
	local nStrengthCopyUserId = Get_UserId()
	local nStrengthCopy_MapId = Get_UserMapId(nStrengthCopyUserId)
	local sStrengthCopyName = tStrengthCopy_text["Msg"]["Box"][nStrengthCopy_Instancetype]

	if Npc_DelDynaNpc(nStrengthCopy_MapId,"name",sStrengthCopyName) then
		RewardTemplate_UseItemAndMsg(tStrengthCopy_LinkBox["Get"])
		---刷怪
		StrengthCopy_BrushMonster(nStrengthCopy_Instancetype)
	end
end




--刷怪
function StrengthCopy_BrushMonster(nStrengthCopy_Instancetype)
	if tStrengthCopy_Instance[nStrengthCopy_Instancetype] == nil then
		return
	end

	local nStrengthCopy_InstancetypeMapId = Get_UserMapId()

	local nStrengthCopyMonsterId = tStrengthCopy_Instance[nStrengthCopy_Instancetype]
	local nStrengthCopyUserId = Get_UserId()

	for a,b in pairs(tStrengthCopy_Monster[nStrengthCopy_Instancetype]) do
		local nStrengthCopyPosX = b["PosX"]
		local nStrengthCopyPosY = b["PosY"]
		local nStrengthCopyGenId = b["GenId"]
		Monster_AddMonster(nStrengthCopy_InstancetypeMapId,nStrengthCopyPosX,nStrengthCopyPosY,nStrengthCopyGenId,nStrengthCopyMonsterId)
	end
	if nStrengthCopy_Instancetype == 475 then
		return
	end
	---怪物数量
	local nStrengthCopyMonsterNum = #tStrengthCopy_Monster[nStrengthCopy_Instancetype]

	if tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] == nil then
		tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] = 0
	end
	tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] = nStrengthCopyMonsterNum
	
end

----物品使用
function StrengthCopy_GetItem(nStrengthCopy_ItemId)
	if not Item_ChkItem(nStrengthCopy_ItemId) then
		return
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tStrengthCopy_Reward[nStrengthCopy_ItemId]) then
		return
	end
	local nStrengthCopy_ItemNum = tStrengthCopy_Reward[nStrengthCopy_ItemId]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nStrengthCopy_ItemId,nStrengthCopy_ItemId,nStrengthCopy_ItemNum) then
		Sys_MsgBox(tStrengthCopy_text["Msg"]["NotItem"])
		return
	end
	if nStrengthCopy_ItemId == 3315435 then
		--打掩码
		local nStrengthCopyEvent = tStrengthCopy_Stc[5]["EventType"]
		local nStrengthCopyType = tStrengthCopy_Stc[5]["EventType"]
		Task_AddStatistic(nStrengthCopyEvent,nStrengthCopyType,1,1)
		Task_SetStcTimestamp(nStrengthCopyEvent,nStrengthCopyType,0)
	end
	RewardTemplate_UseItemAndMsg(tStrengthCopy_Reward[nStrengthCopy_ItemId])
end


-- 中低级副本  杀怪逻辑
function StrengthCopy_KillMonster(nStrengthCopyMonsterId)
	local nStrengthCopyUserId = Get_UserId()

	tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] = tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] - 1
	local nMonsterNum = tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId]
	-- User_TalkChannel2005(string.format("%d",nMonsterNum))
	---掉落灵露
	StrengthCopy_NewKillMonster(nStrengthCopyMonsterId)
	-- 不是最后一只
	if nMonsterNum > 0 then
		return
	end
	-- 最后一只怪
	-- 刷18个动态NPC跟145boss
	if nStrengthCopyMonsterId == 5999 then
		-- StrengthCopy_BrushNpc()
		User_PlayPlot(48,nStrengthCopyUserId)
	end

	local nStrengthCopy_InstancetypeMapId = Get_UserMapId()
	for i = 1,tStrengthCopy_BrushMonster[nStrengthCopyMonsterId]["Num"] do
		local nStrengthCopyPosX = tStrengthCopy_BrushMonster[nStrengthCopyMonsterId][i]["PosX"]
		local nStrengthCopyPosY = tStrengthCopy_BrushMonster[nStrengthCopyMonsterId][i]["PosY"]
		local nStrengthCopyGenId = tStrengthCopy_BrushMonster[nStrengthCopyMonsterId]["GenId"]
		local nStrengthCopy_MonsterId = tStrengthCopy_BrushMonster[nStrengthCopyMonsterId]["Monster"]
		Monster_AddMonster(nStrengthCopy_InstancetypeMapId,nStrengthCopyPosX,nStrengthCopyPosY,nStrengthCopyGenId,nStrengthCopy_MonsterId)
		if tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] == nil then
			tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] = 0
		end
		tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] = tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] + 1
	end
end



function StrengthCopy_BrushNpc(nStrengthCopy_nMapId,nUserId)
	local nStrengthCopyUserId = nUserId or Get_UserId()
	local nStrengthCopy_InstancetypeMapId = nStrengthCopy_nMapId or Get_UserMapId()
	for a,b in pairs(tStrengthCopy_BrushNpc) do
		local nStrengthCopyPosX = b["PosX"]
		local nStrengthCopyPosY = b["PosY"]
		local nStrengthCopyNpcFace = b["NpcFace"]
		local sStrengthCopyName = tStrengthCopy_text["Npc"][a]
		-- local nNpcNum = Get_NpcCountByName(sName,nNowUserId)
		-- if nNpcNum == 0 then
		Npc_CreateDynaNpc(sStrengthCopyName,2,0,nStrengthCopyNpcFace,0,nStrengthCopyUserId,nStrengthCopy_InstancetypeMapId,nStrengthCopyPosX,nStrengthCopyPosY,0,0,0,0)
		-- end
	end

	--打个定时器
	-- User_SetTimer(tStrengthCopy_Data["Time"],'StrengthCopy_MoveNpc</N>' .. nStrengthCopy_InstancetypeMapId,1,nStrengthCopyUserId)
end
---移走NPC  刷出boss
function StrengthCopy_MoveNpc()
	local nStrengthCopyUserId = Get_UserId()
	local nStrengthCopy_InstancetypeMapId = Get_UserMapId(nStrengthCopyUserId)
	--删除NPC
	for a,b in pairs(tStrengthCopy_BrushNpc) do
		local sStrengthCopyName = tStrengthCopy_text["Npc"][a]
		Npc_DelDynaNpc(nStrengthCopy_InstancetypeMapId,"name",sStrengthCopyName,nStrengthCopyUserId)
	end
	-- 刷出boss
	for i = 1,tStrengthCopy_BrushMonster[6207]["Num"] do
		local nStrengthCopyPosX =tStrengthCopy_BrushMonster[6207][i]["PosX"]
		local nStrengthCopyPosY = tStrengthCopy_BrushMonster[6207][i]["PosY"]
		local nStrengthCopyGenId = tStrengthCopy_BrushMonster[6207]["GenId"]
		local nStrengthCopy_MonsterId = tStrengthCopy_BrushMonster[6207]["Monster"]
		Monster_AddMonster(nStrengthCopy_InstancetypeMapId,nStrengthCopyPosX,nStrengthCopyPosY,nStrengthCopyGenId,nStrengthCopy_MonsterId)
		if tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] == nil then
			tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] = 0
		end
		tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] = tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopyUserId] + 1
	end
end
---完成任务打掩码
function StrengthCopy_KillBoss(nStrengthCopy_MonsterId)
	local nStrengthCopy_UserId = Get_UserId()
	local nStrengthCopy_TaskId = tStrengthCopy_Data["TaskId"]
	
	BattlePassTaskTest_CompleteInstance(31,nStrengthCopy_UserId)
	
	if not Task_ChkTaskDetail(nStrengthCopy_TaskId,nStrengthCopy_UserId) then
		return
	end
	if tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopy_UserId] == nil or tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopy_UserId] <= 0 then
		return
	end
	tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopy_UserId] = tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopy_UserId] - 1
	if tStrengthCopy_MonsterData[nStrengthCopy_MonsterId][nStrengthCopy_UserId] == 0 then
		local nInternalWorkSecret_Data = Get_TaskDetailData1(nStrengthCopy_TaskId,nStrengthCopy_UserId)
		--已领取奖励
		if nInternalWorkSecret_Data >= 3 then
			return
		end
		--没接任务
		if nInternalWorkSecret_Data < 1 then
			return
		end
		Task_SetTaskDetailData1(nStrengthCopy_TaskId,2,nStrengthCopy_UserId) 
		Task_SetTaskDetailData2(nStrengthCopy_TaskId,1,nStrengthCopy_UserId) 
	end
end

---离开副本
function StrengthCopy_LeaveMap(nStrengthCopyMonsterId)
	local nStrengthCopyUserId = Get_UserId()
	tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] = tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] - 1
	if tStrengthCopy_MonsterData[nStrengthCopyMonsterId][nStrengthCopyUserId] > 0 then
		return
	end
	--出副本
	StrengthCopy_LeaveCopy()
end

function StrengthCopy_LeaveCopy()
	local nStrengthCopyMapId = tStrengthCopy_Data["Position"][1]["MapId"]
	local nStrengthCopyPosX = tStrengthCopy_Data["Position"][1]["PosX"]
	local nStrengthCopyPosY = tStrengthCopy_Data["Position"][1]["PosY"]
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nStrengthCopyMapId = tStrengthCopy_Data["Position"][2]["MapId"]
		nStrengthCopyPosX = tStrengthCopy_Data["Position"][2]["PosX"]
		nStrengthCopyPosY = tStrengthCopy_Data["Position"][2]["PosY"]
	end
	User_UserRandBoundTrans(nStrengthCopyMapId,nStrengthCopyPosX,nStrengthCopyPosY,5,5,1)
end

----新增物品
function StrengthCopy_OpenItem(nItemId,nIndex)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end 
	---修为值已满
	if not RewardTemplate_RepairValueLimit(tStrengthCopy_Reward[nItemId][nIndex]["RewardRepairValue"]) then
		Sys_MsgBox(tStrengthCopy_text[3315709]["Msg"]["Full"])
		return
	end
	--打开礼包给修为值
	RewardTemplate_UseItemAndMsg(tStrengthCopy_Reward[nItemId][nIndex])
end 

---扣钱
function StrengthCopy_CostOpenItem(nItemId,nIndex)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end 
	---修为值已满
	if not RewardTemplate_RepairValueLimit(tStrengthCopy_Reward[nItemId][nIndex]["RewardRepairValue"]) then
		Sys_MsgBox(tStrengthCopy_text[3315709]["Msg"]["Full"])
		return
	end
	--判断金币
	if not User_CanPutMoney2Bag(-tStrengthCopy_Reward[nItemId][1]["CostMoney"]["Value"]) then
		Sys_MsgBox(tStrengthCopy_text[3315709]["Msg"]["NoMoney"])
		return
	end
	StrengthCopy_OpenItem(nItemId,nIndex)
end

function StrengthCopy_KillMonsterPlot(nUserId,nPlayId,nPlayStatus)
	if nPlayId ~= 48 then
		return
	end
	local nStrengthCopy_nMapId = Get_UserMapId(nUserId)
	StrengthCopy_BrushNpc(nStrengthCopy_nMapId,nUserId)
end

------------------------------------物品逻辑-----------------------------------------
---进副本
function StrengthCopy_GotoCopy(nStrengthCopy_ItemId)
	--判断是否有钥匙
	if not Item_ChkItem(nStrengthCopy_ItemId) then
		return
	end 
	--判断是否有队伍
	if StrengthCopy_JubTeam() then
		Sys_MsgBox(tStrengthCopy_text["Msg"]["NotGoto"])
		return
	end
	local nStrengthCopyUserId = Get_UserId()
	---判断是否在监狱
	if StrengthCopy_JubMap(nStrengthCopyUserId) then
		Sys_MsgBox(tStrengthCopy_text[3315436]["NoGo"])
		return
	end
	--判断是否闪蓝
	if Get_UserCrimeTime(nStrengthCopyUserId) == 1 then
		Sys_MsgBox(tStrengthCopy_text[3315436]["NoMap"])
		return
	end
	---判断是否在副本中
	local nStrengthCopy_MapId = Get_UserMapId(nStrengthCopyUserId)

	local nStrengthCopy_MapDoc = Get_MapDoc(nStrengthCopy_MapId)
	if nStrengthCopy_MapDoc == 10762 then
		Sys_MsgBox(tStrengthCopy_text["NewAdd"]["No"])
		return
	end
	---删物品进副本
	if not Item_DelItem(nStrengthCopy_ItemId) then
		return
	end
	local nStrengthCopy_Event = tStrengthCopy_Stc[1]["EventType"]
	local nStrengthCopy_Type = tStrengthCopy_Stc[1]["DataType"]
	--掩码清零
	Task_SetStatistic(nStrengthCopy_Event,nStrengthCopy_Type,0,1,nStrengthCopyUserId)
	Task_SetStcTimestamp(nStrengthCopy_Event,nStrengthCopy_Type,0,nStrengthCopyUserId)
	StrengthCopy_UserPos(nStrengthCopyUserId)
	
	if User_EnterInstance(tStrengthCopy_Data["Instancetype"][4]) then 
		---进副本刷5个宝箱
		local tStrengthCopy_Tab = StrengthCopy_Random(4,4)
		for i=1,4 do
			local nStrengthCopy_Index = tStrengthCopy_Tab[i]
			local nStrengthCopy_InMapId = Get_UserMapId(nStrengthCopyUserId)
			local nStrengthCopy_PosX = tStrengthCopy_NewPosition[1][nStrengthCopy_Index]["PosX"]
			local nStrengthCopy_PosY = tStrengthCopy_NewPosition[1][nStrengthCopy_Index]["PosY"]
			local nStrengthCopy_NpcFace = tStrengthCopy_NewPosition["NpcFace"]
			local sStrengthCopy_Name = tStrengthCopy_text["Box"][i]
			local nStrengthCopy_Action = tStrengthCopy_NewAction[i]
			Npc_CreateDynaNpc(sStrengthCopy_Name,2,0,nStrengthCopy_NpcFace,0,nStrengthCopyUserId,nStrengthCopy_InMapId,nStrengthCopy_PosX,nStrengthCopy_PosY,0,0,0,nStrengthCopy_Action)
		end
		Sys_SaveActionFestivalLog(tStrengthCopy_Data["Log"][1],nStrengthCopyUserId)
	end
end
function StrengthCopy_JubMap(nStrengthCopyUserId)
	local nStrengthCopyUserMapId = Get_UserMapId(nStrengthCopyUserId)
	for a,b in pairs(tStrengthCopy_NewPos[3]) do
		if nStrengthCopyUserMapId == b then
			return true
		end
	end
	return false
end
	---记录玩家坐标
function StrengthCopy_UserPos(nStrengthCopyUserId)
	if tStrengthCopy_NewUserPos[nStrengthCopyUserId] == nil then
		tStrengthCopy_NewUserPos[nStrengthCopyUserId] = {}
	end
	local nStrengthCopyUserMapId = Get_UserMapId(nStrengthCopyUserId)
	local nStrengthCopyUserPosX = Get_UserPositionX(nStrengthCopyUserId)
	local nStrengthCopyUserPosy = Get_UserPositionY(nStrengthCopyUserId)
	tStrengthCopy_NewUserPos[nStrengthCopyUserId]["MapId"] = nStrengthCopyUserMapId
	tStrengthCopy_NewUserPos[nStrengthCopyUserId]["PosX"] = nStrengthCopyUserPosX
	tStrengthCopy_NewUserPos[nStrengthCopyUserId]["Posy"] = nStrengthCopyUserPosy
end

---重新排列数据
function StrengthCopy_Random(tabNum,indexNum)

	indexNum = indexNum or tabNum

	local t = {}

	local rt = {}

	for i = 1,indexNum do

		local ri = math.random(1,tabNum + 1 - i)

		local v = ri

		for j = 1,tabNum do

			if not t[j] then

				ri = ri - 1

				if ri == 0 then

					table.insert(rt,j)

					t[j] = true

				end

			end

		end

	end

	return rt

end

---点击NPC  奖励刷在地上给玩家捡
function StrengthCopy_LinkNpc(nNum)
	local nStrengthCopyUserId = Get_UserId()
	--打掩码
	local nStrengthCopy_Event = tStrengthCopy_Stc[1]["EventType"]
	local nStrengthCopy_Type = tStrengthCopy_Stc[1]["DataType"]
	--点过一次不能再继续点击NPC
	if Task_ChkStcValue(nStrengthCopy_Event,nStrengthCopy_Type,">=",1,nStrengthCopyUserId)  then
		Sys_MsgBox(tStrengthCopy_text["Msg"]["NoOpen"],"StrengthCopy_LeaveRoom")
		return
	end
	
	Task_SetStatistic(nStrengthCopy_Event,nStrengthCopy_Type,1,1,nStrengthCopyUserId)
	Task_SetStcTimestamp(nStrengthCopy_Event,nStrengthCopy_Type,0,nStrengthCopyUserId)
	-- local nStrengthCopyNpcId = Get_DynaNpcId()
	-- local nStrengthCopy_PosX = Get_DynaNpcPositionX(nStrengthCopyNpcId)
	-- local nStrengthCopy_PosY = Get_DynaNpcPositionY(nStrengthCopyNpcId)
	--删除NPC
	if StrengthCopy_DelNpc(nNum,nStrengthCopyUserId) then
		---刷奖励
		-- if SpecialServer_ChkNoGiftServer() then
		--激情服
			-- StrengthCopy_BrushItem(tStrengthCopy_NewRewardJiQing,nNum)
		-- else
		-- 普通服
			StrengthCopy_BrushItem(tStrengthCopy_NewReward,nNum)
		-- end
	end
end
---删除NPC
function StrengthCopy_DelNpc(nNum,nStrengthCopyUserId)
	local nStrengthCopy_MapId = Get_UserMapId(nStrengthCopyUserId)
	local sStrengthCopyName = tStrengthCopy_text["Box"][nNum]
	if Npc_DelDynaNpc(nStrengthCopy_MapId,"name",sStrengthCopyName) then
		return true
	else
		return false
	end
end
--刷奖励
function StrengthCopy_BrushItem(tStrengthCopy_NewTab,nNum)
	if tStrengthCopy_NewTab[nNum] == nil then
		return
	end
-- 刷奖励
	--固定物品
	-- local nStrengthCopyUserId = Get_DynaNpcId()
	local nStrengthCopy_MapId = Get_UserMapId(nStrengthCopyUserId)
	local nStrengthCopy_PosX = 50--Get_UserPositionX(nStrengthCopyUserId)
	local nStrengthCopy_PosY = 47--Get_UserPositionY(nStrengthCopyUserId)
	if tStrengthCopy_NewTab[nNum]["Item"] ~= nil then
		for a,b in pairs(tStrengthCopy_NewTab[nNum]["Item"]) do
			local nStrengthCopy_ItemId = b["ItemId"]
			local nStrengthCopy_ItemNum = b["ItemNum"]
			Map_DropMultiItems(nStrengthCopy_MapId,nStrengthCopy_ItemId,nStrengthCopy_PosX,nStrengthCopy_PosY,10,10,nStrengthCopy_ItemNum,60)
		end
	end
	--随机掉落
	for i,j in pairs(tStrengthCopy_NewTab[nNum]["Pro"]) do
		for a=1,tStrengthCopy_NewReward[nNum]["Pro"][i]["Time"] do
			local flat,tNum = Probabil_RandomAward(tStrengthCopy_NewTab[nNum]["Pro"],i)  
			local nStrengthCopy_ProItemId = tNum[1]["tAward"][1]["ItemId"]
			local nStrengthCopy_ItemNum = tNum[1]["tAward"][1]["ItemNum"]
			Map_DropMultiItems(nStrengthCopy_MapId,nStrengthCopy_ProItemId,nStrengthCopy_PosX,nStrengthCopy_PosY,10,10,nStrengthCopy_ItemNum,60)
		end
	end
	User_EffectAdd("self",tStrengthCopy_LinkBox["Get"]["RewardEffect"]["Effect"])
end

-------------附魔易宝
function StrengthCopy_ItemOpen(nItemId)
	local nStrengthCopy_FlagEvent = tStrengthCopy_Stc[3]["EventType"]
	local nStrengthCopy_FlagType = tStrengthCopy_Stc[3]["DataType"]
	local nStrengthCopy_Flag = Get_UserStatisticValue(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType)
	local sStrengthCopy_StarNum = ""
	local  sType = ""
	local sRewardItem = ""
	local nStrengthCopy_Event = tStrengthCopy_Stc[4]["EventType"]
	local nStrengthCopy_Type = tStrengthCopy_Stc[4]["DataType"]

	if nStrengthCopy_Flag <= 0 then
		-- local nFlag,tAward = Probabil_RandomAward(tStrengthCopy_Reward,3315708)
		-- nStrengthCopy_Flag = tAward[1]["tAward"][1]["Flag"]
		-- nStrengthCopy_Star = tAward[1]["tAward"][1]["Star"]
		nStrengthCopy_Flag, sType, sRewardItem,sStrengthCopy_StarNum = InternalWorkSecret_RandomReward()
		local nStrengthCopy_Data = tStrengthCopy_Stc[4]["Type"][sType]
		Task_SetStatistic(nStrengthCopy_Event,nStrengthCopy_Type,nStrengthCopy_Data,1)
		Task_SetStcTimestamp(nStrengthCopy_Event,nStrengthCopy_Type,0)

	else
		local nStrengthCopy_Star = InternalWorkSecret_GetStar(nStrengthCopy_Flag)
		local nStrengthCopy_Value = Get_UserStatisticValue(nStrengthCopy_Event,nStrengthCopy_Type)
		local sStrengthCopy_Type = tStrengthCopy_Stc[4]["Data"][nStrengthCopy_Value]
		sStrengthCopy_StarNum = tStrengthCopy_text[3315708]["Star"][nStrengthCopy_Star]
		sRewardItem = InternalWorkSecret_StrengthCopyGetItemName(sStrengthCopy_Type,nStrengthCopy_Flag)
	end

	local sStrengthCopy_Text = Sys_CenterAline(tStrengthCopy_text[3315708]["Flag"][1],4,sRewardItem,22,tStrengthCopy_text[3315708]["Flag"][1],33)
	
	local nStrengthCopy_UserId = Get_UserId()
	local nStrengthCopy_UserCultureValue = Get_UserCultureValue(nStrengthCopy_UserId)
	
	local sStrengthCopy_Star = Sys_CenterAline(tStrengthCopy_text[3315708]["Flag"][1],4,sStrengthCopy_StarNum,21,tStrengthCopy_text[3315708]["Flag"][1],31)

	tItem[3315708]["Text112"] = string.format(tStrengthCopy_text[3315708]["Text112"],nStrengthCopy_UserCultureValue)
	tItem[3315708]["Text114"] = string.format(tStrengthCopy_text[3315708]["Text114"],sStrengthCopy_Text)
	tItem[3315708]["Text115"] = string.format(tStrengthCopy_text[3315708]["Text115"],sStrengthCopy_Star)
	local nStrengthCopy_TimeEvent = tStrengthCopy_Stc[2]["EventType"]
	local nStrengthCopy_TimeType = tStrengthCopy_Stc[2]["DataType"]
	Task_SetStatistic(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,nStrengthCopy_Flag,1)
	Task_SetStcTimestamp(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0)
	---刷新次数
	local nStrengthCopy_Time = Get_UserStatisticValue(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType)
	local nStrengthCopy_NeedCultureValue = StrengthCopy_GetNeedCultureVal()
	tItem[3315708]["Text117"] = string.format(tStrengthCopy_text[3315708]["Text117"],nStrengthCopy_Time)
	tItem[3315708]["Option112"] = string.format(tStrengthCopy_text[3315708]["Option112"],nStrengthCopy_NeedCultureValue)
	LinkItemGossipFunc_New(nItemId,"1-1")
	return true
end


function StrengthCopy_DelItem(nItemId)
	-- 判断是否有物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断是否有八卦符
	if not Item_ChkItem(tStrengthCopy_NewData["NeedItem"]) then
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end
	---随机序号
	local nStrengthCopy_FlagEvent = tStrengthCopy_Stc[3]["EventType"]
	local nStrengthCopy_FlagType = tStrengthCopy_Stc[3]["DataType"]
	local nStrengthCopy_Flag = Get_UserStatisticValue(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType)
	local nStrengthCopy_Star = InternalWorkSecret_GetStar(nStrengthCopy_Flag)
	if nStrengthCopy_Star == 5 then
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
	-- if nStrengthCopy_Star == 4 then
		-- LinkItemGossipFunc_New(nItemId,"2-1")
		-- return
	-- end
	--四星以下删物品更换奖励
	StrengthCopy_DelItemReward(nItemId)
end
--确认更换
function StrengthCopy_DelItemReward(nItemId)
	-- 判断是否有八卦符
	if not Item_ChkItem(tStrengthCopy_NewData["NeedItem"]) then
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end
--删物品 八卦符
	if Item_DelItem(tStrengthCopy_NewData["NeedItem"]) then
		-- 加掩码
		local nStrengthCopy_TimeEvent = tStrengthCopy_Stc[2]["EventType"]
		local nStrengthCopy_TimeType = tStrengthCopy_Stc[2]["DataType"]
		Task_AddStatistic(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType,1,1)
		Task_SetStcTimestamp(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType,0)
		local nStrengthCopy_FlagEvent = tStrengthCopy_Stc[3]["EventType"]
		local nStrengthCopy_FlagType = tStrengthCopy_Stc[3]["DataType"]
		Task_SetStatistic(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0,1)
		Task_SetStcTimestamp(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0)

		--刷新物品
		StrengthCopy_ItemOpen(nItemId)
		--打log
		Sys_SaveActionFestivalLog(tStrengthCopy_NewLog[1])
	end 
end
---判断修为值是否够
function StrengthCopy_JubCultureVal()
	local nStrengthCopy_UserId = Get_UserId()
	local nStrengthCopy_UserCultureValue = Get_UserCultureValue(nStrengthCopy_UserId)
	local nStrengthCopy_TimeEvent = tStrengthCopy_Stc[2]["EventType"]
	local nStrengthCopy_TimeType = tStrengthCopy_Stc[2]["DataType"]
	local nStrengthCopy_Time = Get_UserStatisticValue(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType)
	local nStrengthCopy_NeedCultureValue = StrengthCopy_GetNeedCultureVal()
	if nStrengthCopy_UserCultureValue >= nStrengthCopy_NeedCultureValue then
		return true
	else
		return false
	end
end
--获取所需的修为值
function StrengthCopy_GetNeedCultureVal()
	local nStrengthCopy_TimeEvent = tStrengthCopy_Stc[2]["EventType"]
	local nStrengthCopy_TimeType = tStrengthCopy_Stc[2]["DataType"]
	local nStrengthCopy_Time = Get_UserStatisticValue(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType)
	local nStrengthCopy_NeedCultureValue = tStrengthCopy_NewData["NeedCultureVal"] * (nStrengthCopy_Time + 1)
	return nStrengthCopy_NeedCultureValue
end

-- 修为值
function StrengthCopy_DelCultureVal(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断修为值是否够
	if not StrengthCopy_JubCultureVal() then
		LinkItemGossipFunc_New(nItemId,"3-3")
		return
	end
	---随机序号
	local nStrengthCopy_FlagEvent = tStrengthCopy_Stc[3]["EventType"]
	local nStrengthCopy_FlagType = tStrengthCopy_Stc[3]["DataType"]
	local nStrengthCopy_Flag = Get_UserStatisticValue(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType)
	local nStrengthCopy_Star = InternalWorkSecret_GetStar(nStrengthCopy_Flag)
	-- local nStrengthCopy_Star = tStrengthCopy_Reward[3315708][nStrengthCopy_Flag]["Star"]
	if nStrengthCopy_Star == 5 then
		LinkItemGossipFunc_New(nItemId,"3-2")
		return
	end
	-- if nStrengthCopy_Star == 4 and nNum == nil then
		-- LinkItemGossipFunc_New(nItemId,"3-1")
		-- return
	-- end
	---扣修为
	local nStrengthCopy_Value = StrengthCopy_GetNeedCultureVal()
	if User_AddCultureValue(-nStrengthCopy_Value) then
	-- 加掩码
		local nStrengthCopy_TimeEvent = tStrengthCopy_Stc[2]["EventType"]
		local nStrengthCopy_TimeType = tStrengthCopy_Stc[2]["DataType"]
		Task_AddStatistic(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType,1,1)
		Task_SetStcTimestamp(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType,0)
		local nStrengthCopy_FlagEvent = tStrengthCopy_Stc[3]["EventType"]
		local nStrengthCopy_FlagType = tStrengthCopy_Stc[3]["DataType"]
		Task_SetStatistic(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0,1)
		Task_SetStcTimestamp(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0)

	--刷新物品
		StrengthCopy_ItemOpen(nItemId)
		--打log
		local sStrengthCopy_Log = string.format(tStrengthCopy_NewLog[2],nStrengthCopy_Value)
		Sys_SaveActionFestivalLog(sStrengthCopy_Log)
	end
end

----获得物品
function StrengthCopy_ItemReward(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nStrengthCopy_FlagEvent = tStrengthCopy_Stc[3]["EventType"]
	local nStrengthCopy_FlagType = tStrengthCopy_Stc[3]["DataType"]
	local nStrengthCopy_Flag = Get_UserStatisticValue(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType)
	local nStrengthCopy_Event = tStrengthCopy_Stc[4]["EventType"]
	local nStrengthCopy_Type = tStrengthCopy_Stc[4]["DataType"]
	local nStrengthCopy_Data = Get_UserStatisticValue(nStrengthCopy_Event,nStrengthCopy_Type)
	local sStrengthCopy_Type = tStrengthCopy_Stc[4]["Data"][nStrengthCopy_Data]
	---判断背包空间
	if not InternalWorkSecret_StrengthCopySpace(sStrengthCopy_Type,nStrengthCopy_Flag) then
		
		return
	end
	---删物品
	if not Item_DelItem(nItemId) then
		return
	end
	--掩码置零
	local nStrengthCopy_TimeEvent = tStrengthCopy_Stc[2]["EventType"]
	local nStrengthCopy_TimeType = tStrengthCopy_Stc[2]["DataType"]
	Task_SetStatistic(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType,0,1)
	Task_SetStcTimestamp(nStrengthCopy_TimeEvent,nStrengthCopy_TimeType,0)
	Task_SetStatistic(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0,1)
	Task_SetStcTimestamp(nStrengthCopy_FlagEvent,nStrengthCopy_FlagType,0)

	-- 获取奖励索引表

	-- 给奖励
		InternalWorkSecret_StrengthCopyGet(sStrengthCopy_Type,nStrengthCopy_Flag)
	-- RewardTemplate_UseItemAndMsg(tStrengthCopy_Reward[3315708][nStrengthCopy_Flag])
	--打log
	Sys_SaveActionFestivalLog(tStrengthCopy_NewLog[3])
end

--离开副本
function StrengthCopy_LeaveRoom()
	local nStrengthCopyUserId = Get_UserId()
	if tStrengthCopy_NewUserPos[nStrengthCopyUserId] == nil then
		local nStrengthCopyUserMapId = tStrengthCopy_NewPos[1]["MapId"]
		local nStrengthCopyUserPosX = tStrengthCopy_NewPos[1]["PosX"]
		local nStrengthCopyUserPosy = tStrengthCopy_NewPos[1]["PosY"]
		if SpecialServer_ChkNoGiftServer() then
			nStrengthCopyUserMapId = tStrengthCopy_NewPos[2]["MapId"]
			nStrengthCopyUserPosX = tStrengthCopy_NewPos[2]["PosX"]
			nStrengthCopyUserPosy = tStrengthCopy_NewPos[2]["PosY"]
		end
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nStrengthCopyUserId)
		return
	end
	
	local nStrengthCopyUserMapId = tStrengthCopy_NewUserPos[nStrengthCopyUserId]["MapId"]
	local nStrengthCopyUserPosX = tStrengthCopy_NewUserPos[nStrengthCopyUserId]["PosX"]
	local nStrengthCopyUserPosy = tStrengthCopy_NewUserPos[nStrengthCopyUserId]["Posy"]
	User_UserRandBoundTrans(nStrengthCopyUserMapId,nStrengthCopyUserPosX,nStrengthCopyUserPosy,5,5,1,nStrengthCopyUserId)
end


---秘籍收纳盒
function StrengthCopy_ItemOpenText(nItemId)
	
	for i = 113,122 do
		local sStrengthCopy_Str = string.format(tStrengthCopy_text[3316142]["Flag"],i)
		local tStrengthCopy_Tab = StrengthCopy_ItemOpenGetStc(i-112)
		local strengthCopy_Str1 = string.format(tStrengthCopy_text[3316142][sStrengthCopy_Str][1],tStrengthCopy_Tab[3])
		local strengthCopy_Str2 = tStrengthCopy_text[3316142][sStrengthCopy_Str][2]
		if i ~= 113 then
			strengthCopy_Str2 = string.format(tStrengthCopy_text[3316142][sStrengthCopy_Str][2],tStrengthCopy_Tab[2])
		end
		local strengthCopy_Str3 = string.format(tStrengthCopy_text[3316142][sStrengthCopy_Str][3],tStrengthCopy_Tab[1])
		
		local sStrengthCopy_Text = Sys_Alignment(strengthCopy_Str1,1,strengthCopy_Str2,22,strengthCopy_Str3,42)
		
		tItem[3316142][sStrengthCopy_Str] = sStrengthCopy_Text
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
	return true
end

---获得掩码值
function StrengthCopy_ItemOpenGetStc(nNum)
	local nStrengthCopyEvent = tStrengthCopy_NewStc[nNum]["EventType"]
	local nStrengthCopyType = tStrengthCopy_NewStc[nNum]["DataType"]
	local nStrengthCopyData = Get_UserStatisticValue(nStrengthCopyEvent,nStrengthCopyType)

	local nStrengthCopy_Num1 = math.floor(nStrengthCopyData%1000)
	local nStrengthCopy_Num2 = math.floor(((nStrengthCopyData-nStrengthCopy_Num1)/1000)%1000)
	local nStrengthCopy_Num3 = math.floor((((nStrengthCopyData-nStrengthCopy_Num1)/1000)-nStrengthCopy_Num2)/1000)
	local tStrengthCopy_Tab = {}
	tStrengthCopy_Tab[1] = nStrengthCopy_Num1
	tStrengthCopy_Tab[2] = nStrengthCopy_Num2
	tStrengthCopy_Tab[3] = nStrengthCopy_Num3
	return tStrengthCopy_Tab
end

---收纳
function StrengthCopy_AdmissionItem(nItemId)
	--检测玩家背包物品
	if not StrengthCopy_ChkItem() then
		Sys_MsgBox(tStrengthCopy_text[3316142]["NoItem"])
		return
	end
	-- 删物品 打掩码 打log
	local nStrengthCopyItemIndex = 0
	for a,b in pairs(tStrengthCopy_NewItem) do
		local nStrengthCopyItemNum = Get_CountItemType(a,0)
		if nStrengthCopyItemNum > 0 and StrengthCopy_ChkItemStc(a,nStrengthCopyItemNum) then
			if Item_DelMulItem(a,a,nStrengthCopyItemNum) then
				-- 加掩码
				StrengthCopy_SetItemStc(a,nStrengthCopyItemNum)
			end
			nStrengthCopyItemIndex = nStrengthCopyItemIndex + 1
		end
	end
	if nStrengthCopyItemIndex > 0 then
		Sys_MsgBox(tStrengthCopy_text[3316142]["Item"])
	else 
		Sys_MsgBox(tStrengthCopy_text[3316142]["NoItem"])
	end
end 

function StrengthCopy_ChkItem()
	for a,b in pairs(tStrengthCopy_NewItem) do
		if Item_ChkItem(a) then
			return true
		end
	end
	
	return false
end
---打掩码
function StrengthCopy_SetItemStc(nItemId,nStrengthCopyItemNum)
	local nStrengthCopy_Num = tStrengthCopy_NewItem[nItemId]
	local nStrengthCopyEvent = tStrengthCopy_NewStc[nStrengthCopy_Num]["EventType"]
	local nStrengthCopyType = tStrengthCopy_NewStc[nStrengthCopy_Num]["DataType"]
	
	local nStrengthCopy_AddNum = nStrengthCopyItemNum*tStrengthCopy_NewItemFlag[nItemId]
	Task_AddStatistic(nStrengthCopyEvent,nStrengthCopyType,nStrengthCopy_AddNum,1)
	Task_SetStcTimestamp(nStrengthCopyEvent,nStrengthCopyType,0)
	
end
---判断是否到临界值
function StrengthCopy_ChkItemStc(nItemId,nStrengthCopyItemNum)
	local nStrengthCopy_Num = tStrengthCopy_NewItem[nItemId]
	local tStrengthCopy_Tab = StrengthCopy_ItemOpenGetStc(nStrengthCopy_Num)

	---物品在掩码第几段
	local nStrengthCopy_Index = tStrengthCopy_NewItemIndex[nItemId]
	local nStrengthCopy_Tal = tStrengthCopy_Tab[nStrengthCopy_Index] + nStrengthCopyItemNum
	if nStrengthCopy_Tal > 999 then
		return false
	else
		return true
	end
end

----取出物品文字包装
function StrengthCopy_TakeItemText(nItemId)
	---判断是否有残页
	if not StrengthCopy_TakeItemChk() then
		Sys_MsgBox(tStrengthCopy_text[3316142]["NoItem"])
		return
	end
	---选项文字 残页
	-- tItem[3316142]["tOption2-1"] = {}
	local nStrengthCopy_Flag = 210
	for a,b in pairs(tStrengthCopy_NewOptionIndex) do
		nStrengthCopy_Flag = nStrengthCopy_Flag + 1
		local sOption = string.format(tStrengthCopy_text[3316142]["Index"],nStrengthCopy_Flag)
		tItem[3316142][sOption] = Get_ItemtypeName(b)
	end
	LinkItemGossipFunc_New(nItemId,"2-1")
end

---判断是否有收纳该物品
function StrengthCopy_ChkTake(nItemId)
	local nStrengthCopy_Flag = tStrengthCopy_NewItem[nItemId]
	local tStrengthCopy_Tab = StrengthCopy_ItemOpenGetStc(nStrengthCopy_Flag)

	-- 物品在掩码第几段
	local nStrengthCopy_Index = tStrengthCopy_NewItemIndex[nItemId]
	if tStrengthCopy_Tab[nStrengthCopy_Index] > 0 then
		return true
	end
	return false
end

---判断收纳袋是否有残页
function StrengthCopy_TakeItemChk()
	for a,b in pairs(tStrengthCopy_NewStc) do
		local nStrengthCopyEvent = tStrengthCopy_NewStc[a]["EventType"]
		local nStrengthCopyType = tStrengthCopy_NewStc[a]["DataType"]
		if Task_ChkStcValue(nStrengthCopyEvent,nStrengthCopyType,">",0)  then
			return true
		end
	end
	return false
end

----取出物品
function StrengthCopy_TakeItem(nItemId)
	local nStrengthCopy_Flag = tStrengthCopy_NewItem[nItemId]
	local tStrengthCopy_Tab = StrengthCopy_ItemOpenGetStc(nStrengthCopy_Flag)
	local nStrengthCopy_Num = tStrengthCopy_NewItemIndex[nItemId]
	--需要扣除的数量
	local nStrengthCopy_SubNum = tStrengthCopy_Tab[nStrengthCopy_Num]*tStrengthCopy_NewItemFlag[nItemId]
	local tStrengthCopy_TabRew = CommonFunc_Copy(tStrengthCopy_NewRewardItem["Get"])
	tStrengthCopy_TabRew["RewardItem"][1]["Id"] = nItemId
	tStrengthCopy_TabRew["RewardItem"][1]["Attr"] = string.format(tStrengthCopy_NewRewardItem["Get"]["RewardItem"][1]["Attr"],tStrengthCopy_Tab[nStrengthCopy_Num])
	---判断背包空间
	if not RewardTemplate_CheckSpace(tStrengthCopy_TabRew) then
		return
	end
	-- 扣掩码 给物品
	local nStrengthCopyEvent = tStrengthCopy_NewStc[nStrengthCopy_Flag]["EventType"]
	local nStrengthCopyType = tStrengthCopy_NewStc[nStrengthCopy_Flag]["DataType"]
	local nStrengthCopyValue = Get_UserStatisticValue(nStrengthCopyEvent,nStrengthCopyType) - nStrengthCopy_SubNum
	Task_SetStatistic(nStrengthCopyEvent,nStrengthCopyType,nStrengthCopyValue,1)
	Task_SetStcTimestamp(nStrengthCopyEvent,nStrengthCopyType,0)
	RewardTemplate_UseItemAndMsg(tStrengthCopy_TabRew)
end

---新增 4、第一次引导过来点开对白的时候可以送玩家1张地图
function StrengthCopy_NewlinkInternalWorkSecret()
	local nStrengthCopyEvent = tStrengthCopy_Stc[6]["EventType"]
	local nStrengthCopyType = tStrengthCopy_Stc[6]["DataType"]
	if Task_ChkStcValue(nStrengthCopyEvent,nStrengthCopyType,">=",1)  then
		return
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tStrengthCopy_NewRewardItem[11]) then
		return
	end
	Task_SetStatistic(nStrengthCopyEvent,nStrengthCopyType,1,1)
	Task_SetStcTimestamp(nStrengthCopyEvent,nStrengthCopyType,0)
	RewardTemplate_UseItemAndMsg(tStrengthCopy_NewRewardItem[11])
end

---小怪掉落
function StrengthCopy_NewKillMonster(nMonsterId)
	if nMonsterId ~= 5994 and nMonsterId ~= 6071 and nMonsterId ~= 5996 and nMonsterId ~= 5999 then
		return
	end
	if Sys_Random(tStrengthCopy_NewMonsterRandom[nMonsterId],10000) then
		---刷地板
		Monster_SysDropItem(tStrengthCopy_Data["MonsterItem"])
	end
end

----等级判断
function StrengthCopy_NewLevel()
	if User_JudgeLevelAndMetempsychosis(tStrengthCopy_Data["Level"],tStrengthCopy_Data["Metempsy"]) then
		return true
	else
		return false
	end
end
---------------------------------Npc部分---------------------------------------------
tNpcFace[2488] = 1806
tNpcGossip[26549] = tNpcGossip[26549] or DefaultNpc:new{}
tNpcGossip[26549]["OptionHidden"] = 1
tNpcGossip[26549]["DialogueText"] = tStrengthCopy_text[26549]
-- 初级副本
tNpcGossip[26549]["Text1-1"] = {111}
tNpcGossip[26549]["tOption1-1"] = {111,112}
tNpcGossip[26549]["OptionFunc111"] = "StrengthCopy_LinkBox</N>472"

-- 中级副本
tNpcGossip[26549]["Text2-1"] = {211}
tNpcGossip[26549]["tOption2-1"] = {211,212}
tNpcGossip[26549]["OptionFunc211"] = "StrengthCopy_LinkBox</N>473"

-- 高级副本
tNpcGossip[26549]["Text3-1"] = {311}
tNpcGossip[26549]["tOption3-1"] = {311,312}
tNpcGossip[26549]["OptionFunc311"] = "StrengthCopy_LinkBox</N>474"

tNpcFace[2417] = 1806
tNpcGossip[26548] = tNpcGossip[26548] or DefaultNpc:new{}
tNpcGossip[26548]["OptionHidden"] = 1
tNpcGossip[26548]["DialogueText"] = tStrengthCopy_text[26548]
-- 初级副本
tNpcGossip[26548]["Text1-1"] = {111}
tNpcGossip[26548]["tOption1-1"] = {111,112}
tNpcGossip[26548]["OptionFunc111"] = "StrengthCopy_LinkNpc</N>1"

-- 中级副本
tNpcGossip[26548]["Text2-1"] = {211}
tNpcGossip[26548]["tOption2-1"] = {211,212}
tNpcGossip[26548]["OptionFunc211"] = "StrengthCopy_LinkNpc</N>2"

-- 高级副本
tNpcGossip[26548]["Text3-1"] = {311}
tNpcGossip[26548]["tOption3-1"] = {311,312}
tNpcGossip[26548]["OptionFunc311"] = "StrengthCopy_LinkNpc</N>3"

-- 高级副本
tNpcGossip[26548]["Text4-1"] = {411}
tNpcGossip[26548]["tOption4-1"] = {411,412}
tNpcGossip[26548]["OptionFunc411"] = "StrengthCopy_LinkNpc</N>4"

-- 高级副本
tNpcGossip[26548]["Text5-1"] = {511}
tNpcGossip[26548]["tOption5-1"] = {511,512}
tNpcGossip[26548]["OptionFunc511"] = "StrengthCopy_LinkNpc</N>5"

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
for i = 3315403,3315417 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		StrengthCopy_GetItem(nItemId)
	end
end
-- 新增
for i = 3316126,3316128 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		StrengthCopy_GetItem(nItemId)
	end
end

tItem[3315433] = tItem[3315433] or {}
tItem[3315433]["Function"] = function(nItemId,sItemName)
	User_OpenDialog(2200)
end

tItem[3315435] = tItem[3315435] or {}
tItem[3315435]["Function"] = function(nItemId,sItemName)
---一周只能开3次
	-- local nStrengthCopyEvent = tStrengthCopy_Stc[5]["EventType"]
	-- local nStrengthCopyType = tStrengthCopy_Stc[5]["EventType"]
	-- if Task_StcInterval(nStrengthCopyEvent,nStrengthCopyType,1,5) then  --隔天清零
		-- Task_SetStatistic(nStrengthCopyEvent,nStrengthCopyType,0,1)
		-- Task_SetStcTimestamp(nStrengthCopyEvent,nStrengthCopyType,0)
	-- end
	-- if Task_ChkStcValue(nStrengthCopyEvent,nStrengthCopyType,">",3)  then
		-- Sys_MsgBox(tStrengthCopy_text["Msg"]["NoTime"])
		-- return
	-- end
	
	-- StrengthCopy_GetItem(nItemId)
	NpcPosition_PathFind(23021) 
end
-- 密室钥匙
tItemFace[3315436] = 2823
tItem[3315436] = tItem[3315436] or {}
tItem[3315436]["DialogueText"] = tStrengthCopy_text[3315436]
tItem[3315436]["Text1-1"] = {111,112}
tItem[3315436]["tOption1-1"] = {111,112}
tItem[3315436]["OptionFunc111"] = "StrengthCopy_GotoCopy</N>3315436"

--3315434,'无名古籍'
tItem[3315434] = tItem[3315434] or {}
tItem[3315434]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	Melter_Link()
end


----伏魔易宝礼包逻辑修改 
tItemFace[3315708] = 2245
tItem[3315708] = tItem[3315708] or {}
tItem[3315708]["Function"] = function (nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	--重装对白
	StrengthCopy_ItemOpen(nItemId)

end
tItem[3315708]["DialogueText"] = tStrengthCopy_text[3315708]
tItem[3315708]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3315708]["tOption1-1"] = {111,112,113}
tItem[3315708]["OptionFunc111"] = "StrengthCopy_DelItem</N>3315708"
tItem[3315708]["OptionFunc112"] = "StrengthCopy_DelCultureVal</N>3315708"
tItem[3315708]["OptionFunc113"] = "StrengthCopy_ItemReward</N>3315708"
-- 【奖励为4星】
tItem[3315708]["Text2-1"] = {211}
tItem[3315708]["tOption2-1"] = {211,212}
-- 确认更换
tItem[3315708]["OptionFunc211"] = "StrengthCopy_DelItemReward</N>3315708"
-- 【奖励为5星】
tItem[3315708]["Text2-2"] = {221}
tItem[3315708]["tOption2-2"] = {221,222}
-- 收下宝物
tItem[3315708]["OptionFunc221"] = "StrengthCopy_ItemReward</N>3315708"
-- 【失败，没有八卦符】
tItem[3315708]["Text2-3"] = {231,232,233,234}
tItem[3315708]["tOption2-3"] = {231}

---------修为值更换
-- 【奖励为4星】
tItem[3315708]["Text3-1"] = {311}
tItem[3315708]["tOption3-1"] = {311,312}
-- 确认更换
tItem[3315708]["OptionFunc311"] = "StrengthCopy_DelCultureVal</N>3315708</N>1"
-- 【奖励为5星】
tItem[3315708]["Text3-2"] = {321}
tItem[3315708]["tOption3-2"] = {321,322}
-- 收下宝物
tItem[3315708]["OptionFunc321"] = "StrengthCopy_ItemReward</N>3315708"
-- 【失败，没有八卦符】
tItem[3315708]["Text3-3"] = {331,332,333,334}
tItem[3315708]["tOption3-3"] = {331}

-- 9000点修为值礼包
tItemFace[3315709] = 2862
tItem[3315709] = tItem[3315709] or {}
tItem[3315709]["DialogueText"] = tStrengthCopy_text[3315709]
tItem[3315709]["Text1-1"] = {111}
tItem[3315709]["tOption1-1"] = {111,112}
tItem[3315709]["OptionPoint111"] = "2-1"
tItem[3315709]["OptionFunc112"] = "StrengthCopy_OpenItem</N>3315709</N>2"


tItem[3315709]["Text2-1"] = {211}
tItem[3315709]["tOption2-1"] = {211,212}
tItem[3315709]["OptionFunc211"] = "StrengthCopy_CostOpenItem</N>3315709</N>1"

-- 6000点修为值礼包
tItemFace[3315710] = 2863
tItem[3315710] = tItem[3315710] or {}
tItem[3315710]["DialogueText"] = tStrengthCopy_text[3315710]
tItem[3315710]["Text1-1"] = {111}
tItem[3315710]["tOption1-1"] = {111,112}
tItem[3315710]["OptionPoint111"] = "2-1"
tItem[3315710]["OptionFunc112"] = "StrengthCopy_OpenItem</N>3315710</N>2"


tItem[3315710]["Text2-1"] = {211}
tItem[3315710]["tOption2-1"] = {211,212}
tItem[3315710]["OptionFunc211"] = "StrengthCopy_CostOpenItem</N>3315710</N>1"

-- 3000点修为值礼包
tItemFace[3315711] = 2864
tItem[3315711] = tItem[3315711] or {}
tItem[3315711]["DialogueText"] = tStrengthCopy_text[3315711]
tItem[3315711]["Text1-1"] = {111}
tItem[3315711]["tOption1-1"] = {111,112}
tItem[3315711]["OptionPoint111"] = "2-1"
tItem[3315711]["OptionFunc112"] = "StrengthCopy_OpenItem</N>3315711</N>2"

tItem[3315711]["Text2-1"] = {211}
tItem[3315711]["tOption2-1"] = {211,212}
tItem[3315711]["OptionFunc211"] = "StrengthCopy_CostOpenItem</N>3315711</N>1"

-- 新增物品
-- 秘籍收纳盒
tItemFace[3316142] = 2944
tItem[3316142] = tItem[3316142] or {}
tItem[3316142]["Function"] = function (nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	--重装对白
	StrengthCopy_ItemOpenText(nItemId)

end
tItem[3316142]["DialogueText"] = tStrengthCopy_text[3316142]
tItem[3316142]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,112}
tItem[3316142]["tOption1-1"] = {111,112,113}
tItem[3316142]["OptionFunc111"] = "StrengthCopy_AdmissionItem</N>3316142"
tItem[3316142]["OptionFunc112"] = "StrengthCopy_TakeItemText</N>3316142"


tItem[3316142]["Text2-1"] = {211}
tItem[3316142]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239}

tItem[3316142]["OptionFunc211"] = "StrengthCopy_TakeItem</N>3309947"
tItem[3316142]["OptionChkFunc211"]= function()
	return StrengthCopy_ChkTake(3309947)
end

tItem[3316142]["OptionFunc212"] = "StrengthCopy_TakeItem</N>3309948"
tItem[3316142]["OptionChkFunc212"]= function()
	return StrengthCopy_ChkTake(3309948)
end

tItem[3316142]["OptionFunc213"] = "StrengthCopy_TakeItem</N>3309949"
tItem[3316142]["OptionChkFunc213"]= function()
	return StrengthCopy_ChkTake(3309949)
end
tItem[3316142]["OptionFunc214"] = "StrengthCopy_TakeItem</N>3309950"
tItem[3316142]["OptionChkFunc214"]= function()
	return StrengthCopy_ChkTake(3309950)
end
tItem[3316142]["OptionFunc215"] = "StrengthCopy_TakeItem</N>3309951"
tItem[3316142]["OptionChkFunc215"]= function()
	return StrengthCopy_ChkTake(3309951)
end
tItem[3316142]["OptionFunc216"] = "StrengthCopy_TakeItem</N>3309952"
tItem[3316142]["OptionChkFunc216"]= function()
	return StrengthCopy_ChkTake(3309952)
end
tItem[3316142]["OptionFunc217"] = "StrengthCopy_TakeItem</N>3309953"
tItem[3316142]["OptionChkFunc217"]= function()
	return StrengthCopy_ChkTake(3309953)
end
tItem[3316142]["OptionFunc218"] = "StrengthCopy_TakeItem</N>3309954"
tItem[3316142]["OptionChkFunc218"]= function()
	return StrengthCopy_ChkTake(3309954)
end
tItem[3316142]["OptionFunc219"] = "StrengthCopy_TakeItem</N>3309955"
tItem[3316142]["OptionChkFunc219"]= function()
	return StrengthCopy_ChkTake(3309955)
end
tItem[3316142]["OptionFunc220"] = "StrengthCopy_TakeItem</N>3309956"
tItem[3316142]["OptionChkFunc220"]= function()
	return StrengthCopy_ChkTake(3309956)
end
tItem[3316142]["OptionFunc221"] = "StrengthCopy_TakeItem</N>3309957"
tItem[3316142]["OptionChkFunc221"]= function()
	return StrengthCopy_ChkTake(3309957)
end
tItem[3316142]["OptionFunc222"] = "StrengthCopy_TakeItem</N>3315403"
tItem[3316142]["OptionChkFunc222"]= function()
	return StrengthCopy_ChkTake(3315403)
end
tItem[3316142]["OptionFunc223"] = "StrengthCopy_TakeItem</N>3315404"
tItem[3316142]["OptionChkFunc223"]= function()
	return StrengthCopy_ChkTake(3315404)
end
tItem[3316142]["OptionFunc224"] = "StrengthCopy_TakeItem</N>3315405"
tItem[3316142]["OptionChkFunc224"]= function()
	return StrengthCopy_ChkTake(3315405)
end
tItem[3316142]["OptionFunc225"] = "StrengthCopy_TakeItem</N>3315406"
tItem[3316142]["OptionChkFunc225"]= function()
	return StrengthCopy_ChkTake(3315406)
end
tItem[3316142]["OptionFunc226"] = "StrengthCopy_TakeItem</N>3315407"
tItem[3316142]["OptionChkFunc226"]= function()
	return StrengthCopy_ChkTake(3315407)
end
tItem[3316142]["OptionFunc227"] = "StrengthCopy_TakeItem</N>3315408"
tItem[3316142]["OptionChkFunc227"]= function()
	return StrengthCopy_ChkTake(3315408)
end
tItem[3316142]["OptionFunc228"] = "StrengthCopy_TakeItem</N>3315409"
tItem[3316142]["OptionChkFunc228"]= function()
	return StrengthCopy_ChkTake(3315409)
end
tItem[3316142]["OptionFunc229"] = "StrengthCopy_TakeItem</N>3315410"
tItem[3316142]["OptionChkFunc229"]= function()
	return StrengthCopy_ChkTake(3315410)
end
tItem[3316142]["OptionFunc230"] = "StrengthCopy_TakeItem</N>3315411"
tItem[3316142]["OptionChkFunc230"]= function()
	return StrengthCopy_ChkTake(3315411)
end
tItem[3316142]["OptionFunc231"] = "StrengthCopy_TakeItem</N>3315412"
tItem[3316142]["OptionChkFunc231"]= function()
	return StrengthCopy_ChkTake(3315412)
end
tItem[3316142]["OptionFunc232"] = "StrengthCopy_TakeItem</N>3315413"
tItem[3316142]["OptionChkFunc232"]= function()
	return StrengthCopy_ChkTake(3315413)
end
tItem[3316142]["OptionFunc233"] = "StrengthCopy_TakeItem</N>3315414"
tItem[3316142]["OptionChkFunc233"]= function()
	return StrengthCopy_ChkTake(3315414)
end
tItem[3316142]["OptionFunc234"] = "StrengthCopy_TakeItem</N>3315415"
tItem[3316142]["OptionChkFunc234"]= function()
	return StrengthCopy_ChkTake(3315415)
end
tItem[3316142]["OptionFunc235"] = "StrengthCopy_TakeItem</N>3315416"
tItem[3316142]["OptionChkFunc235"]= function()
	return StrengthCopy_ChkTake(3315416)
end
tItem[3316142]["OptionFunc236"] = "StrengthCopy_TakeItem</N>3315417"
tItem[3316142]["OptionChkFunc236"]= function()
	return StrengthCopy_ChkTake(3315417)
end
tItem[3316142]["OptionFunc237"] = "StrengthCopy_TakeItem</N>3316126"
tItem[3316142]["OptionChkFunc237"]= function()
	return StrengthCopy_ChkTake(3316126)
end
tItem[3316142]["OptionFunc238"] = "StrengthCopy_TakeItem</N>3316127"
tItem[3316142]["OptionChkFunc238"]= function()
	return StrengthCopy_ChkTake(3316127)
end
tItem[3316142]["OptionFunc239"] = "StrengthCopy_TakeItem</N>3316128"
tItem[3316142]["OptionChkFunc239"]= function()
	return StrengthCopy_ChkTake(3316128)
end


-- 修为灵露礼包
tItem[3316143] = tItem[3316143] or {}
tItem[3316143]["Function"] = function(nItemId,sItemName)
	local bIndex,nSpace = RewardTemplate_ChkRandomSpace(tStrengthCopy_LinkBox,3316143)
	if not bIndex then
		local sCoent = string.format(tRewardTemplate_Text["NoSpace"],nSpace)
		User_TalkChannel2005(sCoent)
		return
	end
	RewardTemplate_RandomReward(tStrengthCopy_LinkBox,3316143)
end

---------------------------------怪物部分---------------------------------------------
tMonster[5994] = tMonster[5994] or {}
tMonster[5994]["tFunction"] = tMonster[5994]["tFunction"] or {}
table.insert(tMonster[5994]["tFunction"],StrengthCopy_KillMonster)

tMonster[6071] = tMonster[6071] or {}
tMonster[6071]["tFunction"] = tMonster[6071]["tFunction"] or {}
table.insert(tMonster[6071]["tFunction"],StrengthCopy_KillMonster)

tMonster[5996] = tMonster[5996] or {}
tMonster[5996]["tFunction"] = tMonster[5996]["tFunction"] or {}
table.insert(tMonster[5996]["tFunction"],StrengthCopy_KillMonster)

tMonster[5997] = tMonster[5997] or {}
tMonster[5997]["tFunction"] = tMonster[5997]["tFunction"] or {}
table.insert(tMonster[5997]["tFunction"],StrengthCopy_KillMonster)

tMonster[5999] = tMonster[5999] or {}
tMonster[5999]["tFunction"] = tMonster[5999]["tFunction"] or {}
table.insert(tMonster[5999]["tFunction"],StrengthCopy_KillMonster)
---高级副本第二波怪 杀完移走NPC  刷出大boss
tMonster[6207] = tMonster[6207] or {}
tMonster[6207]["tFunction"] = tMonster[6207]["tFunction"] or {}
table.insert(tMonster[6207]["tFunction"],StrengthCopy_MoveNpc)

--大boss
tMonster[6208] = tMonster[6208] or {}
tMonster[6208]["tFunction"] = tMonster[6208]["tFunction"] or {}
table.insert(tMonster[6208]["tFunction"],StrengthCopy_KillBoss)

tMonster[5998] = tMonster[5998] or {}
tMonster[5998]["tFunction"] = tMonster[5998]["tFunction"] or {}
table.insert(tMonster[5998]["tFunction"],StrengthCopy_KillBoss)

tMonster[5995] = tMonster[5995] or {}
tMonster[5995]["tFunction"] = tMonster[5995]["tFunction"] or {}
table.insert(tMonster[5995]["tFunction"],StrengthCopy_KillBoss)
----特殊内功副本
-- tMonster[6271] = tMonster[6271] or {}
-- tMonster[6271]["tFunction"] = tMonster[6271]["tFunction"] or {}
-- table.insert(tMonster[6271]["tFunction"],StrengthCopy_LeaveMap)


------界面进副本
table.insert(tProcessAfterCreateInstance["tFunction"], StrengthCopy_GotoBrushBox)
---剧情
tLuaEffectEnd["tFunction"] = tLuaEffectEnd["tFunction"] or {}
table.insert(tLuaEffectEnd["tFunction"],StrengthCopy_KillMonsterPlot)

--------------------------------------------陷阱--------------------------------------------
tTrap[2572] = tTrap[2572] or {}
tTrap[2572]["Function"] = function(nTrapId,nTrapType)
	--传送出去
	Sys_MsgBox(tStrengthCopy_text["Msg"]["Leave"],"StrengthCopy_LeaveRoom")
	
end
