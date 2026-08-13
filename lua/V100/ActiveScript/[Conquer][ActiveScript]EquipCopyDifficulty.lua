------------------------------------------------------------------------------------
--Name：            191217[简体征服][活动脚本]装备副本（困难难度）
--Creator:      江宇君
--Created:     2019-12-17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀：EquipCopyDifficulty_

----------------------------------表配置部分--------------------------------------------
-- 副本表配置
local tEquipCopyDifficulty_Instance = {}
	-- 困难装备副本
	tEquipCopyDifficulty_Instance["Difficulty"] = {}
											-- 副本id BOSSid,刷怪数量
	tEquipCopyDifficulty_Instance["Difficulty"][434] = {5933,1}
	tEquipCopyDifficulty_Instance["Difficulty"][435] = {5934,1}
	tEquipCopyDifficulty_Instance["Difficulty"][436] = {5935,1}
	tEquipCopyDifficulty_Instance["Difficulty"][437] = {5936,1}
	tEquipCopyDifficulty_Instance["Difficulty"][438] = {5937,1}
	tEquipCopyDifficulty_Instance["Difficulty"][439] = {5938,1}
	tEquipCopyDifficulty_Instance["Difficulty"][440] = {5939,1}
	tEquipCopyDifficulty_Instance["Difficulty"][441] = {5940,1}
	tEquipCopyDifficulty_Instance["Difficulty"][442] = {5941,1}
	tEquipCopyDifficulty_Instance["Difficulty"][443] = {5942,1}
	tEquipCopyDifficulty_Instance["Difficulty"][444] = {5943,1}
	tEquipCopyDifficulty_Instance["Difficulty"][445] = {5944,1}
	tEquipCopyDifficulty_Instance["Difficulty"][446] = {5945,1}
	tEquipCopyDifficulty_Instance["Difficulty"][447] = {5946,1}
	tEquipCopyDifficulty_Instance["Difficulty"][448] = {5947,1}
	
	-- 噩梦副本 -- 幻影
	tEquipCopyDifficulty_Instance["Difficulty"][382] = {6226,2}
	tEquipCopyDifficulty_Instance["Difficulty"][383] = {6227,2}
	tEquipCopyDifficulty_Instance["Difficulty"][384] = {6228,2}
	tEquipCopyDifficulty_Instance["Difficulty"][385] = {6229,2}
	tEquipCopyDifficulty_Instance["Difficulty"][386] = {6230,2}
	tEquipCopyDifficulty_Instance["Difficulty"][387] = {6231,2}
	tEquipCopyDifficulty_Instance["Difficulty"][388] = {6232,2}
	tEquipCopyDifficulty_Instance["Difficulty"][389] = {6233,2}
	tEquipCopyDifficulty_Instance["Difficulty"][390] = {6234,2}
	tEquipCopyDifficulty_Instance["Difficulty"][391] = {6235,2}
	tEquipCopyDifficulty_Instance["Difficulty"][392] = {6236,2}
	tEquipCopyDifficulty_Instance["Difficulty"][393] = {6237,2}
	tEquipCopyDifficulty_Instance["Difficulty"][394] = {6238,2}
	tEquipCopyDifficulty_Instance["Difficulty"][395] = {6239,2}
	tEquipCopyDifficulty_Instance["Difficulty"][396] = {6240,2}

	-- 通关BOSS
	tEquipCopyDifficulty_Instance["Clearance"] = {}
	tEquipCopyDifficulty_Instance["Clearance"][434] = {5844,1}
	tEquipCopyDifficulty_Instance["Clearance"][435] = {5845,1}
	tEquipCopyDifficulty_Instance["Clearance"][436] = {5846,1}
	tEquipCopyDifficulty_Instance["Clearance"][437] = {5847,1}
	tEquipCopyDifficulty_Instance["Clearance"][438] = {5848,1}
	tEquipCopyDifficulty_Instance["Clearance"][439] = {5849,1}
	tEquipCopyDifficulty_Instance["Clearance"][440] = {5850,1}
	tEquipCopyDifficulty_Instance["Clearance"][441] = {5851,1}
	tEquipCopyDifficulty_Instance["Clearance"][442] = {5852,1}
	tEquipCopyDifficulty_Instance["Clearance"][443] = {5853,1}
	tEquipCopyDifficulty_Instance["Clearance"][444] = {5854,1}
	tEquipCopyDifficulty_Instance["Clearance"][445] = {5855,1}
	tEquipCopyDifficulty_Instance["Clearance"][446] = {5856,1}
	tEquipCopyDifficulty_Instance["Clearance"][447] = {5857,1}
	tEquipCopyDifficulty_Instance["Clearance"][448] = {5858,1}
	
	-- 噩梦副本 通关BOSS
	tEquipCopyDifficulty_Instance["Clearance"][382] = {6209,1}
	tEquipCopyDifficulty_Instance["Clearance"][383] = {6210,1}
	tEquipCopyDifficulty_Instance["Clearance"][384] = {6211,1}
	tEquipCopyDifficulty_Instance["Clearance"][385] = {6212,1}
	tEquipCopyDifficulty_Instance["Clearance"][386] = {6213,1}
	tEquipCopyDifficulty_Instance["Clearance"][387] = {6214,1}
	tEquipCopyDifficulty_Instance["Clearance"][388] = {6215,1}
	tEquipCopyDifficulty_Instance["Clearance"][389] = {6216,1}
	tEquipCopyDifficulty_Instance["Clearance"][390] = {6217,1}
	tEquipCopyDifficulty_Instance["Clearance"][391] = {6218,1}
	tEquipCopyDifficulty_Instance["Clearance"][392] = {6219,1}
	tEquipCopyDifficulty_Instance["Clearance"][393] = {6220,1}
	tEquipCopyDifficulty_Instance["Clearance"][394] = {6221,1}
	tEquipCopyDifficulty_Instance["Clearance"][395] = {6222,1}
	tEquipCopyDifficulty_Instance["Clearance"][396] = {6223,1}

	-- 分身BOSS
	tEquipCopyDifficulty_Instance["Other"] = {}
	tEquipCopyDifficulty_Instance["Other"][434] = {5951,2}
	tEquipCopyDifficulty_Instance["Other"][435] = {5952,2}
	tEquipCopyDifficulty_Instance["Other"][436] = {5953,2}
	tEquipCopyDifficulty_Instance["Other"][437] = {5954,2}
	tEquipCopyDifficulty_Instance["Other"][438] = {5955,2}
	tEquipCopyDifficulty_Instance["Other"][439] = {5956,2}
	tEquipCopyDifficulty_Instance["Other"][440] = {5957,2}
	tEquipCopyDifficulty_Instance["Other"][441] = {5958,2}
	tEquipCopyDifficulty_Instance["Other"][442] = {5959,2}
	tEquipCopyDifficulty_Instance["Other"][443] = {5960,2}
	tEquipCopyDifficulty_Instance["Other"][444] = {5961,2}
	tEquipCopyDifficulty_Instance["Other"][445] = {5962,2}
	tEquipCopyDifficulty_Instance["Other"][446] = {5963,2}
	tEquipCopyDifficulty_Instance["Other"][447] = {5964,2}
	tEquipCopyDifficulty_Instance["Other"][448] = {5965,2}
	
	-- 噩梦副本 分身BOSS
	tEquipCopyDifficulty_Instance["Other"][382] = {6241,1}
	tEquipCopyDifficulty_Instance["Other"][383] = {6242,1}
	tEquipCopyDifficulty_Instance["Other"][384] = {6243,1}
	tEquipCopyDifficulty_Instance["Other"][385] = {6244,1}
	tEquipCopyDifficulty_Instance["Other"][386] = {6245,1}
	tEquipCopyDifficulty_Instance["Other"][387] = {6246,1}
	tEquipCopyDifficulty_Instance["Other"][388] = {6247,1}
	tEquipCopyDifficulty_Instance["Other"][389] = {6248,1}
	tEquipCopyDifficulty_Instance["Other"][390] = {6249,1}
	tEquipCopyDifficulty_Instance["Other"][391] = {6250,1}
	tEquipCopyDifficulty_Instance["Other"][392] = {6251,1}
	tEquipCopyDifficulty_Instance["Other"][393] = {6252,1}
	tEquipCopyDifficulty_Instance["Other"][394] = {6253,1}
	tEquipCopyDifficulty_Instance["Other"][395] = {6254,1}
	tEquipCopyDifficulty_Instance["Other"][396] = {6255,1}

	-- 狂暴分身
	tEquipCopyDifficulty_Instance["RageOther"] = {}
	tEquipCopyDifficulty_Instance["RageOther"][434] = {5966,2}
	tEquipCopyDifficulty_Instance["RageOther"][435] = {5967,2}
	tEquipCopyDifficulty_Instance["RageOther"][436] = {5968,2}
	tEquipCopyDifficulty_Instance["RageOther"][437] = {5969,2}
	tEquipCopyDifficulty_Instance["RageOther"][438] = {5970,2}
	tEquipCopyDifficulty_Instance["RageOther"][439] = {5971,2}
	tEquipCopyDifficulty_Instance["RageOther"][440] = {5972,2}
	tEquipCopyDifficulty_Instance["RageOther"][441] = {5973,2}
	tEquipCopyDifficulty_Instance["RageOther"][442] = {5974,2}
	tEquipCopyDifficulty_Instance["RageOther"][443] = {5975,2}
	tEquipCopyDifficulty_Instance["RageOther"][444] = {5976,2}
	tEquipCopyDifficulty_Instance["RageOther"][445] = {5977,2}
	tEquipCopyDifficulty_Instance["RageOther"][446] = {5978,2}
	tEquipCopyDifficulty_Instance["RageOther"][447] = {5979,2}
	tEquipCopyDifficulty_Instance["RageOther"][448] = {5980,2}
	
	-- 噩梦副本 狂暴分身
	tEquipCopyDifficulty_Instance["RageOther"][382] = {6256,2}
	tEquipCopyDifficulty_Instance["RageOther"][383] = {6257,2}
	tEquipCopyDifficulty_Instance["RageOther"][384] = {6258,2}
	tEquipCopyDifficulty_Instance["RageOther"][385] = {6259,2}
	tEquipCopyDifficulty_Instance["RageOther"][386] = {6260,2}
	tEquipCopyDifficulty_Instance["RageOther"][387] = {6261,2}
	tEquipCopyDifficulty_Instance["RageOther"][388] = {6262,2}
	tEquipCopyDifficulty_Instance["RageOther"][389] = {6263,2}
	tEquipCopyDifficulty_Instance["RageOther"][390] = {6264,2}
	tEquipCopyDifficulty_Instance["RageOther"][391] = {6265,2}
	tEquipCopyDifficulty_Instance["RageOther"][392] = {6266,2}
	tEquipCopyDifficulty_Instance["RageOther"][393] = {6267,2}
	tEquipCopyDifficulty_Instance["RageOther"][394] = {6268,2}
	tEquipCopyDifficulty_Instance["RageOther"][395] = {6269,2}
	tEquipCopyDifficulty_Instance["RageOther"][396] = {6270,2}
	
	tEquipCopyDifficulty_Instance["Boss"] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][1] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][1]["PosX"] = 28
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][1]["PosY"] = 25
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][1]["GeneratorId"] = 30445
	
	-- 噩梦
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][2] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][2]["PosX"] = 28
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][2]["PosY"] = 25
	tEquipCopyDifficulty_Instance["Boss"]["Difficulty"][2]["GeneratorId"] = 30591

	tEquipCopyDifficulty_Instance["Boss"]["Clearance"] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][1] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][1]["PosX"] = 28
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][1]["PosY"] = 25
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][1]["GeneratorId"] = 30445
	
	-- 噩梦
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][2] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][2]["PosX"] = 28
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][2]["PosY"] = 25
	tEquipCopyDifficulty_Instance["Boss"]["Clearance"][2]["GeneratorId"] = 30591

	tEquipCopyDifficulty_Instance["Boss"]["Other"] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Other"][1] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Other"][1]["PosX"] = 27
	tEquipCopyDifficulty_Instance["Boss"]["Other"][1]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["Other"][1]["GeneratorId"] = 30445
	tEquipCopyDifficulty_Instance["Boss"]["Other"][2] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Other"][2]["PosX"] = 17
	tEquipCopyDifficulty_Instance["Boss"]["Other"][2]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["Other"][2]["GeneratorId"] = 30445
	
	-- 噩梦
	tEquipCopyDifficulty_Instance["Boss"]["Other"][3] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Other"][3]["PosX"] = 27
	tEquipCopyDifficulty_Instance["Boss"]["Other"][3]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["Other"][3]["GeneratorId"] = 30591
	tEquipCopyDifficulty_Instance["Boss"]["Other"][4] = {}
	tEquipCopyDifficulty_Instance["Boss"]["Other"][4]["PosX"] = 17
	tEquipCopyDifficulty_Instance["Boss"]["Other"][4]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["Other"][4]["GeneratorId"] = 30591

	tEquipCopyDifficulty_Instance["Boss"]["RageOther"] = {}
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][1] = {}
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][1]["PosX"] = 17
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][1]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][1]["GeneratorId"] = 30445
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][2] = {}
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][2]["PosX"] = 27
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][2]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][2]["GeneratorId"] = 30445
	
	-- 噩梦
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][3] = {}
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][3]["PosX"] = 17
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][3]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][3]["GeneratorId"] = 30591
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][4] = {}
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][4]["PosX"] = 27
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][4]["PosY"] = 33
	tEquipCopyDifficulty_Instance["Boss"]["RageOther"][4]["GeneratorId"] = 30591

-- 小怪数据
local tEquipCopyDifficulty_Monster = {}
	-- 进副本刷的小怪
	tEquipCopyDifficulty_Monster[5859] = {}
	tEquipCopyDifficulty_Monster[5859]["Id"] = 5859
	tEquipCopyDifficulty_Monster[5859]["Num"] = 10
	tEquipCopyDifficulty_Monster[5859]["GeneratorId"] = 30445
	tEquipCopyDifficulty_Monster[5859]["PosX"] = 25
	tEquipCopyDifficulty_Monster[5859]["PosY"] = 25
	tEquipCopyDifficulty_Monster[5859]["Range"] = 4
	-- 随机事件触发的小怪
	tEquipCopyDifficulty_Monster[5950] = {}
	tEquipCopyDifficulty_Monster[5950]["Id"] = 5950
	tEquipCopyDifficulty_Monster[5950]["Num"] = math.random(7,15)
	tEquipCopyDifficulty_Monster[5950]["GeneratorId"] = 30445
	tEquipCopyDifficulty_Monster[5950]["PosX"] = 25
	tEquipCopyDifficulty_Monster[5950]["PosY"] = 25
	tEquipCopyDifficulty_Monster[5950]["Range"] = 10
	
	-- 进副本刷的小怪
	tEquipCopyDifficulty_Monster[6224] = {}
	tEquipCopyDifficulty_Monster[6224]["Id"] = 6224
	tEquipCopyDifficulty_Monster[6224]["Num"] = 10
	tEquipCopyDifficulty_Monster[6224]["GeneratorId"] = 30591
	tEquipCopyDifficulty_Monster[6224]["PosX"] = 25
	tEquipCopyDifficulty_Monster[6224]["PosY"] = 25
	tEquipCopyDifficulty_Monster[6224]["Range"] = 4
	-- 随机事件触发的小怪
	tEquipCopyDifficulty_Monster[6225] = {}
	tEquipCopyDifficulty_Monster[6225]["Id"] = 6225
	tEquipCopyDifficulty_Monster[6225]["Num"] = math.random(7,15)
	tEquipCopyDifficulty_Monster[6225]["GeneratorId"] = 30591
	tEquipCopyDifficulty_Monster[6225]["PosX"] = 25
	tEquipCopyDifficulty_Monster[6225]["PosY"] = 25
	tEquipCopyDifficulty_Monster[6225]["Range"] = 10
	
local tEquipCopyDifficulty_Reward = {}
	-- ===3314887,'10分钟经验礼盒'
	-- ===索引: tEquipCopyDifficulty_Reward[3314887]
	-- ===删除: 3314887,1
	tEquipCopyDifficulty_Reward[3314887] = {}
	tEquipCopyDifficulty_Reward[3314887]["LogId"] = 12001802
	tEquipCopyDifficulty_Reward[3314887]["DeleteItem"] = {}
	tEquipCopyDifficulty_Reward[3314887]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_Reward[3314887]["DeleteItem"][1]["Id"] = 3314887 -- 【库】10分钟经验礼盒[属性:267]
	tEquipCopyDifficulty_Reward[3314887]["RewardExpTime"] = {}
	tEquipCopyDifficulty_Reward[3314887]["RewardExpTime"]["Value"] = 10 -- 分钟经验, 【需求】10分钟经验
	tEquipCopyDifficulty_Reward[3314887]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tEquipCopyDifficulty_Reward[3314887]["RewardExpTime"]["FullValue"] = 5 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tEquipCopyDifficulty_Reward[3314887]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001802,2,6,5"
	tEquipCopyDifficulty_Reward[3314887]["RewardEffect"] = {}
	tEquipCopyDifficulty_Reward[3314887]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_Reward[3314887]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_Reward[3314888] = {}
	-- ===3314888,'20分钟经验礼盒'
	-- ===索引: tEquipCopyDifficulty_Reward[3314888]
	-- ===删除: 3314888,1
	tEquipCopyDifficulty_Reward[3314888]["LogId"] = 12001802
	tEquipCopyDifficulty_Reward[3314888]["DeleteItem"] = {}
	tEquipCopyDifficulty_Reward[3314888]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_Reward[3314888]["DeleteItem"][1]["Id"] = 3314888 -- 【库】20分钟经验礼盒[属性:267]
	tEquipCopyDifficulty_Reward[3314888]["RewardExpTime"] = {}
	tEquipCopyDifficulty_Reward[3314888]["RewardExpTime"]["Value"] = 20 -- 分钟经验, 【需求】20分钟经验
	tEquipCopyDifficulty_Reward[3314888]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tEquipCopyDifficulty_Reward[3314888]["RewardExpTime"]["FullValue"] = 10 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tEquipCopyDifficulty_Reward[3314888]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001802,2,6,10"
	tEquipCopyDifficulty_Reward[3314888]["RewardEffect"] = {}
	tEquipCopyDifficulty_Reward[3314888]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_Reward[3314888]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_Reward[3314889] = {}
	-- ===3314889,'30分钟经验礼盒'
	-- ===索引: tEquipCopyDifficulty_Reward[3314889]
	-- ===删除: 3314889,1
	tEquipCopyDifficulty_Reward[3314889]["LogId"] = 12001802
	tEquipCopyDifficulty_Reward[3314889]["DeleteItem"] = {}
	tEquipCopyDifficulty_Reward[3314889]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_Reward[3314889]["DeleteItem"][1]["Id"] = 3314889 -- 【库】30分钟经验礼盒[属性:267]
	tEquipCopyDifficulty_Reward[3314889]["RewardExpTime"] = {}
	tEquipCopyDifficulty_Reward[3314889]["RewardExpTime"]["Value"] = 30 -- 分钟经验, 【需求】30分钟经验
	tEquipCopyDifficulty_Reward[3314889]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tEquipCopyDifficulty_Reward[3314889]["RewardExpTime"]["FullValue"] = 15 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tEquipCopyDifficulty_Reward[3314889]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001802,2,6,15"
	tEquipCopyDifficulty_Reward[3314889]["RewardEffect"] = {}
	tEquipCopyDifficulty_Reward[3314889]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_Reward[3314889]["RewardEffect"]["Effect"] = "angelwing"
	
-- 随机事件 概率配置
local tEquipCopyDifficulty_RandomIndex = {}
	tEquipCopyDifficulty_RandomIndex = {}
	tEquipCopyDifficulty_RandomIndex[1] = {}
	tEquipCopyDifficulty_RandomIndex[1]["ItemChanceSum"] = 10000

	tEquipCopyDifficulty_RandomIndex[1][1] = {}
	tEquipCopyDifficulty_RandomIndex[1][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][1]["ItemChance"] = 3000
	tEquipCopyDifficulty_RandomIndex[1][1]["Item_1"] = 1

	tEquipCopyDifficulty_RandomIndex[1][2] = {}
	tEquipCopyDifficulty_RandomIndex[1][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][2]["ItemChance"] = 1500
	tEquipCopyDifficulty_RandomIndex[1][2]["Item_1"] = 2
	
	tEquipCopyDifficulty_RandomIndex[1][3] = {}
	tEquipCopyDifficulty_RandomIndex[1][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][3]["ItemChance"] = 2000
	tEquipCopyDifficulty_RandomIndex[1][3]["Item_1"] = 3
	
	tEquipCopyDifficulty_RandomIndex[1][4] = {}
	tEquipCopyDifficulty_RandomIndex[1][4]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][4]["ItemChance"] = 1000
	tEquipCopyDifficulty_RandomIndex[1][4]["Item_1"] = 4

	tEquipCopyDifficulty_RandomIndex[1][5] = {}
	tEquipCopyDifficulty_RandomIndex[1][5]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][5]["ItemChance"] = 1000
	tEquipCopyDifficulty_RandomIndex[1][5]["Item_1"] = 5
	
	tEquipCopyDifficulty_RandomIndex[1][6] = {}
	tEquipCopyDifficulty_RandomIndex[1][6]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][6]["ItemChance"] = 500
	tEquipCopyDifficulty_RandomIndex[1][6]["Item_1"] = 6

	tEquipCopyDifficulty_RandomIndex[1][7] = {}
	tEquipCopyDifficulty_RandomIndex[1][7]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RandomIndex[1][7]["ItemChance"] = 1000
	tEquipCopyDifficulty_RandomIndex[1][7]["Item_1"] = 7

-- 玩家状态
local tEquipCopyDifficulty_Status = {}
	-- 玩家眩晕
	tEquipCopyDifficulty_Status[1] = {}
	tEquipCopyDifficulty_Status[1]["Status"] = 55
	tEquipCopyDifficulty_Status[1]["Power"] = 100
	tEquipCopyDifficulty_Status[1]["Secs"] = 5
	tEquipCopyDifficulty_Status[1]["Times"] = 1
	tEquipCopyDifficulty_Status[1]["RemainTime"] = 5
	tEquipCopyDifficulty_Status[1]["EndTime"] = 1
	tEquipCopyDifficulty_Status[1]["Recordable"] = 0
	-- 降低玩家移动速度
	tEquipCopyDifficulty_Status[2] = {}
	tEquipCopyDifficulty_Status[2]["Status"] = 50
	tEquipCopyDifficulty_Status[2]["Power"] = 50
	tEquipCopyDifficulty_Status[2]["Secs"] = 30
	tEquipCopyDifficulty_Status[2]["Times"] = 1
	tEquipCopyDifficulty_Status[2]["RemainTime"] = 30
	tEquipCopyDifficulty_Status[2]["EndTime"] = 1
	tEquipCopyDifficulty_Status[2]["Recordable"] = 0

local tEquipCopyDifficulty_InstanceId = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][434] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][435] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][436] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][437] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][438] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][439] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][440] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][441] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][442] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][443] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][444] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][445] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][446] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][447] = {}
	tEquipCopyDifficulty_InstanceId["Difficulty"][448] = {}
	-- 噩梦
	tEquipCopyDifficulty_InstanceId["Nightmare"] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][382] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][383] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][384] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][385] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][386] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][387] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][388] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][389] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][390] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][391] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][392] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][393] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][394] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][395] = {}
	tEquipCopyDifficulty_InstanceId["Nightmare"][396] = {}

-- 噩梦副本 开奖道具
local tEquipCopyDifficulty_FragmentReward = {}
	-- ===3316028,'靛青仙玉' 碎片 转换经验值
	-- ===索引: tEquipCopyDifficulty_FragmentReward[3316028][1]
	-- ===删除: 3316028,1
	tEquipCopyDifficulty_FragmentReward[3316028] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][1]["LogId"] = 12001958
	tEquipCopyDifficulty_FragmentReward[3316028][1]["DeleteItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][1]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][1]["DeleteItem"][1]["Id"] = 3316028 -- 【库】IndigoJade[属性:9]
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardExpTime"] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardExpTime"]["Value"] = 10 -- 分钟经验, 【需求】10分钟经验值
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardExpTime"]["FullValue"] = 5 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardExpTime"]["FullLog"] = "0,0,3316028,1,12001958,2,6,5"
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardEffect"] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_FragmentReward[3316028][1]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_FragmentReward[3316028][9] = {}
	-- ===3316028,'靛青仙玉' 碎片 合成开奖道具
	-- ===索引: tEquipCopyDifficulty_FragmentReward[3316028][9]
	-- ===删除: 3316028,9
	tEquipCopyDifficulty_FragmentReward[3316028][9]["LogId"] = 12001958
	tEquipCopyDifficulty_FragmentReward[3316028][9]["DeleteItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][9]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][9]["DeleteItem"][1]["Id"] = 3316028 -- 【库】IndigoJade[属性:9]
	tEquipCopyDifficulty_FragmentReward[3316028][9]["DeleteItem"][1]["ItemNum"] = 9
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardItem"][1]["Id"] = 3316030 -- JadeLuster[3316030][属性:9][叠加:10000][金币:0], 【表格】仙玉光华（赠）
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardItem"][1]["Attr"] = "0 1" -- JadeLuster*1
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardNoNeedTip"] = 1
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardEffect"] = {}
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_FragmentReward[3316028][9]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_FragmentReward[3316029] = {}
	-- ===3316029,'虹光仙玉' 高级碎片
	-- ===索引: tEquipCopyDifficulty_FragmentReward[3316029][1]
	-- ===删除: 3316029,1
	tEquipCopyDifficulty_FragmentReward[3316029][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][1]["LogId"] = 12001958
	tEquipCopyDifficulty_FragmentReward[3316029][1]["DeleteItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][1]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][1]["DeleteItem"][1]["Id"] = 3316029 -- 【库】RainbowJade[属性:9]
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardExpTime"] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardExpTime"]["Value"] = 20 -- 分钟经验, 【需求】20分钟经验值
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardExpTime"]["FullValue"] = 10 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardExpTime"]["FullLog"] = "0,0,3316029,1,12001958,2,6,10"
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardEffect"] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_FragmentReward[3316029][1]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_FragmentReward[3316029][3] = {}
	-- ===3316029,'虹光仙玉' 高级碎片 合成开奖道具
	-- ===索引: tEquipCopyDifficulty_FragmentReward[3316029][3]
	-- ===删除: 3316029,3
	tEquipCopyDifficulty_FragmentReward[3316029][3]["LogId"] = 12001958
	tEquipCopyDifficulty_FragmentReward[3316029][3]["DeleteItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][3]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][3]["DeleteItem"][1]["Id"] = 3316029 -- 【库】RainbowJade[属性:9]
	tEquipCopyDifficulty_FragmentReward[3316029][3]["DeleteItem"][1]["ItemNum"] = 3
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardItem"][1]["Id"] = 3316030 -- JadeLuster[3316030][属性:9][叠加:10000][金币:0], 【表格】仙玉光华（赠）
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardItem"][1]["Attr"] = "0 1" -- JadeLuster*1
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardNoNeedTip"] = 1
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardEffect"] = {}
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_FragmentReward[3316029][3]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_FragmentReward[3316030] = {}
	-- ===3316030,'仙玉光华' 开奖道具 投入1个
	-- ===索引: tEquipCopyDifficulty_FragmentReward[3316030][1]
	-- ===删除: 3316030,1
	tEquipCopyDifficulty_FragmentReward[3316030][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][1]["LogId"] = 12001958
	tEquipCopyDifficulty_FragmentReward[3316030][1]["DeleteItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][1]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][1]["DeleteItem"][1]["Id"] = 3316030 -- 【库】JadeLuster[属性:9]
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardItem"][1]["Id"] = 3314189 -- BrightCP(B)Pack[3314189][属性:9][叠加:10000][金币:0], 【表格】天石（赠）福运礼包
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardItem"][1]["Attr"] = "0 1" -- BrightCP(B)Pack*1
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardNoNeedTip"] = 1
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardEffect"] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_FragmentReward[3316030][1]["RewardEffect"]["Effect"] = "angelwing"


	tEquipCopyDifficulty_FragmentReward[3316030][5] = {}
	-- ===3316030,'仙玉光华' 开奖道具 投入5个
	-- ===索引: tEquipCopyDifficulty_FragmentReward[3316030][5]
	-- ===删除: 3316030,5
	tEquipCopyDifficulty_FragmentReward[3316030][5]["LogId"] = 12001958
	tEquipCopyDifficulty_FragmentReward[3316030][5]["DeleteItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][5]["DeleteItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][5]["DeleteItem"][1]["Id"] = 3316030 -- 【库】JadeLuster[属性:9]
	tEquipCopyDifficulty_FragmentReward[3316030][5]["DeleteItem"][1]["ItemNum"] = 5
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardItem"] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardItem"][1] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardItem"][1]["Id"] = 3314189 -- BrightCP(B)Pack[3314189][属性:9][叠加:10000][金币:0], 【表格】天石（赠）福运礼包
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardItem"][1]["Attr"] = "0 1" -- BrightCP(B)Pack*1
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardNoNeedTip"] = 1
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardEffect"] = {}
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEquipCopyDifficulty_FragmentReward[3316030][5]["RewardEffect"]["Effect"] = "angelwing"

-- 噩梦副本 根据使用道具人数 随机奖励档次
local tEquipCopyDifficulty_RewardLevel = {}
	-- ===道具总数 低于300 
	-- ===索引: tEquipCopyDifficulty_RewardLevel[1]
	tEquipCopyDifficulty_RewardLevel[1] = {}
	tEquipCopyDifficulty_RewardLevel[1]["ItemChanceSum"] = 10000
	tEquipCopyDifficulty_RewardLevel[1]["LogId"] = 12001958
	-- 第1档奖励 - 100%
	tEquipCopyDifficulty_RewardLevel[1][1] = {}
	tEquipCopyDifficulty_RewardLevel[1][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[1][1]["ItemChance"] = 10000
	tEquipCopyDifficulty_RewardLevel[1][1]["Reward_Level"] = 1
	-- 第2档奖励 - 0%
	tEquipCopyDifficulty_RewardLevel[1][2] = {}
	tEquipCopyDifficulty_RewardLevel[1][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[1][2]["ItemChance"] = 0
	tEquipCopyDifficulty_RewardLevel[1][2]["Reward_Level"] = 2
	-- 第3档奖励 - 0%
	tEquipCopyDifficulty_RewardLevel[1][3] = {}
	tEquipCopyDifficulty_RewardLevel[1][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[1][3]["ItemChance"] = 0
	tEquipCopyDifficulty_RewardLevel[1][3]["Reward_Level"] = 3


	tEquipCopyDifficulty_RewardLevel[2] = {}
	-- ===道具总数 301-600
	-- ===索引: tEquipCopyDifficulty_RewardLevel[2]
	tEquipCopyDifficulty_RewardLevel[2]["ItemChanceSum"] = 10000
	tEquipCopyDifficulty_RewardLevel[2]["LogId"] = 12001958
	-- 第1档奖励 - 80%
	tEquipCopyDifficulty_RewardLevel[2][1] = {}
	tEquipCopyDifficulty_RewardLevel[2][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[2][1]["ItemChance"] = 8000
	tEquipCopyDifficulty_RewardLevel[2][1]["Reward_Level"] = 1
	-- 第2档奖励 - 20%
	tEquipCopyDifficulty_RewardLevel[2][2] = {}
	tEquipCopyDifficulty_RewardLevel[2][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[2][2]["ItemChance"] = 2000
	tEquipCopyDifficulty_RewardLevel[2][2]["Reward_Level"] = 2
	-- 第3档奖励 - 0%
	tEquipCopyDifficulty_RewardLevel[2][3] = {}
	tEquipCopyDifficulty_RewardLevel[2][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[2][3]["ItemChance"] = 0
	tEquipCopyDifficulty_RewardLevel[2][3]["Reward_Level"] = 3


	tEquipCopyDifficulty_RewardLevel[3] = {}
	-- ===道具总数 601-900
	-- ===索引: tEquipCopyDifficulty_RewardLevel[3]
	tEquipCopyDifficulty_RewardLevel[3]["ItemChanceSum"] = 10000
	tEquipCopyDifficulty_RewardLevel[3]["LogId"] = 12001958
	-- 第1档奖励 - 40%
	tEquipCopyDifficulty_RewardLevel[3][1] = {}
	tEquipCopyDifficulty_RewardLevel[3][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[3][1]["ItemChance"] = 6000
	tEquipCopyDifficulty_RewardLevel[3][1]["Reward_Level"] = 1
	-- 第2档奖励 - 40%
	tEquipCopyDifficulty_RewardLevel[3][2] = {}
	tEquipCopyDifficulty_RewardLevel[3][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[3][2]["ItemChance"] = 3000
	tEquipCopyDifficulty_RewardLevel[3][2]["Reward_Level"] = 2
	-- 第3档奖励 - 20%
	tEquipCopyDifficulty_RewardLevel[3][3] = {}
	tEquipCopyDifficulty_RewardLevel[3][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[3][3]["ItemChance"] = 1000
	tEquipCopyDifficulty_RewardLevel[3][3]["Reward_Level"] = 3


	tEquipCopyDifficulty_RewardLevel[4] = {}
	-- ===道具总数 901-1200
	-- ===索引: tEquipCopyDifficulty_RewardLevel[4]
	tEquipCopyDifficulty_RewardLevel[4]["ItemChanceSum"] = 10000
	tEquipCopyDifficulty_RewardLevel[4]["LogId"] = 12001958
	-- 第1档奖励 - 40%
	tEquipCopyDifficulty_RewardLevel[4][1] = {}
	tEquipCopyDifficulty_RewardLevel[4][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[4][1]["ItemChance"] = 4000
	tEquipCopyDifficulty_RewardLevel[4][1]["Reward_Level"] = 1
	-- 第2档奖励 - 40%
	tEquipCopyDifficulty_RewardLevel[4][2] = {}
	tEquipCopyDifficulty_RewardLevel[4][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[4][2]["ItemChance"] = 4000
	tEquipCopyDifficulty_RewardLevel[4][2]["Reward_Level"] = 2
	-- 第3档奖励 - 20%
	tEquipCopyDifficulty_RewardLevel[4][3] = {}
	tEquipCopyDifficulty_RewardLevel[4][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[4][3]["ItemChance"] = 2000
	tEquipCopyDifficulty_RewardLevel[4][3]["Reward_Level"] = 3


	tEquipCopyDifficulty_RewardLevel[5] = {}
	-- ===道具总数 1201-1500
	-- ===索引: tEquipCopyDifficulty_RewardLevel[5]
	tEquipCopyDifficulty_RewardLevel[5]["ItemChanceSum"] = 10000
	tEquipCopyDifficulty_RewardLevel[5]["LogId"] = 12001958
	-- 第1档奖励 - 20%
	tEquipCopyDifficulty_RewardLevel[5][1] = {}
	tEquipCopyDifficulty_RewardLevel[5][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[5][1]["ItemChance"] = 2000
	tEquipCopyDifficulty_RewardLevel[5][1]["Reward_Level"] = 1
	-- 第2档奖励 - 50%
	tEquipCopyDifficulty_RewardLevel[5][2] = {}
	tEquipCopyDifficulty_RewardLevel[5][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[5][2]["ItemChance"] = 5000
	tEquipCopyDifficulty_RewardLevel[5][2]["Reward_Level"] = 2
	-- 第3档奖励 - 30%
	tEquipCopyDifficulty_RewardLevel[5][3] = {}
	tEquipCopyDifficulty_RewardLevel[5][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[5][3]["ItemChance"] = 3000
	tEquipCopyDifficulty_RewardLevel[5][3]["Reward_Level"] = 3

	tEquipCopyDifficulty_RewardLevel[6] = {}
	-- ===道具总数 1501以上
	-- ===索引: tEquipCopyDifficulty_RewardLevel[6]
	tEquipCopyDifficulty_RewardLevel[6]["ItemChanceSum"] = 10000
	tEquipCopyDifficulty_RewardLevel[6]["LogId"] = 12001958
	-- 第1档奖励 - 0%
	tEquipCopyDifficulty_RewardLevel[6][1] = {}
	tEquipCopyDifficulty_RewardLevel[6][1]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[6][1]["ItemChance"] = 0
	tEquipCopyDifficulty_RewardLevel[6][1]["Reward_Level"] = 1
	-- 第2档奖励 - 60%
	tEquipCopyDifficulty_RewardLevel[6][2] = {}
	tEquipCopyDifficulty_RewardLevel[6][2]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[6][2]["ItemChance"] = 6000
	tEquipCopyDifficulty_RewardLevel[6][2]["Reward_Level"] = 2
	-- 第3档奖励 - 40%
	tEquipCopyDifficulty_RewardLevel[6][3] = {}
	tEquipCopyDifficulty_RewardLevel[6][3]["RandomItemChanceType"] = 2
	tEquipCopyDifficulty_RewardLevel[6][3]["ItemChance"] = 4000
	tEquipCopyDifficulty_RewardLevel[6][3]["Reward_Level"] = 3


local tEquipCopyDifficulty_Log = {}
	-- 记录参与
	tEquipCopyDifficulty_Log["Join"] = "0,0,0,0,12001958,1[1],0,0"
	-- 记录通关
	tEquipCopyDifficulty_Log["Success"] = "0,0,0,0,12001958,1[2],0,0"
	-- 使用道具数量log
	tEquipCopyDifficulty_Log["UseProp"] = "0,0,%d,%d,12001958,1[3],0,0"
	-- 过期删除物品
	tEquipCopyDifficulty_Log["DeleteItem"] = "0,0,%d,%d,12001958,1[10],0,0"
	

-- 掩码
local tEquipCopyDifficulty_Stc = {}
	tEquipCopyDifficulty_Stc[1] = {}
	tEquipCopyDifficulty_Stc[1]["EventType"] = 218
	tEquipCopyDifficulty_Stc[1]["DataType"] = 74
	tEquipCopyDifficulty_Stc[1]["TotalData"] = 5
	
local tEquipCopyDifficulty_Action = {}
	-- 第一档奖励的发奖action
	tEquipCopyDifficulty_Action[1] = {}
	tEquipCopyDifficulty_Action[1][1] = 577155
	tEquipCopyDifficulty_Action[1][2] = 577154
	tEquipCopyDifficulty_Action[1][3] = 577154
	tEquipCopyDifficulty_Action[1][4] = 577153
	tEquipCopyDifficulty_Action[1][5] = 577153
	tEquipCopyDifficulty_Action[1][6] = 577153
	-- 第二档奖励的发奖action
	tEquipCopyDifficulty_Action[2] = {}
	tEquipCopyDifficulty_Action[2][1] = 577156
	tEquipCopyDifficulty_Action[2][2] = 577155
	tEquipCopyDifficulty_Action[2][3] = 577155
	tEquipCopyDifficulty_Action[2][4] = 577154
	tEquipCopyDifficulty_Action[2][5] = 577154
	tEquipCopyDifficulty_Action[2][6] = 577154
	-- 第三档奖励的发奖action
	tEquipCopyDifficulty_Action[3] = {}
	tEquipCopyDifficulty_Action[3][1] = 577157
	tEquipCopyDifficulty_Action[3][2] = 577156
	tEquipCopyDifficulty_Action[3][3] = 577156
	tEquipCopyDifficulty_Action[3][4] = 577155
	tEquipCopyDifficulty_Action[3][5] = 577155
	tEquipCopyDifficulty_Action[3][6] = 577155
	
-- global
local tEquipCopyDifficulty_Global = {}
	tEquipCopyDifficulty_Global[1] = {}
	tEquipCopyDifficulty_Global[1]["Id"] = 54405

-- 判断开奖档次范围
local tEquipCopyDifficulty_WhichLevel = {}
	tEquipCopyDifficulty_WhichLevel[1] = {0,300}
	tEquipCopyDifficulty_WhichLevel[2] = {301,600}
	tEquipCopyDifficulty_WhichLevel[3] = {601,900}
	tEquipCopyDifficulty_WhichLevel[4] = {901,1200}
	tEquipCopyDifficulty_WhichLevel[5] = {1201,1500}
	tEquipCopyDifficulty_WhichLevel[6] = {1501,999999999}

-- 等级限制
local tEquipCopyDifficulty_LevAndMete = {}
	tEquipCopyDifficulty_LevAndMete[1] = {}
	tEquipCopyDifficulty_LevAndMete[1]["Level"] = 130
	tEquipCopyDifficulty_LevAndMete[1]["Mete"] = 0

-- 玩家临时表 记录当前副本ID
local tEquipCopyDifficulty_UserInfo = {}
	tEquipCopyDifficulty_UserInfo["InstanceType"] = {}
	tEquipCopyDifficulty_UserInfo["KillClonedTimes"] = {}
	-- 记录使用开奖道具的玩家的临时表
	tEquipCopyDifficulty_UserInfo["Prop"] = {}
	tEquipCopyDifficulty_UserInfo["Prop"]["UserId"] = {}
	tEquipCopyDifficulty_UserInfo["Prop"]["UserName"] = {}

-- 中奖玩家临时表
local tEquipCopyDifficulty_RewardUser_Id = {}
local tEquipCopyDifficulty_RewardUser_Name = {}


----------------------------------逻辑部分---------------------------------------------

-- 进入副本后触发接口
-- 参1：副本id 参2：副本动态地图id 参3：玩家id
function EquipCopyDifficulty_NewMonster(nEquipCopyDifficulty_Instancetype, nEquipCopyDifficulty_MapId, nEquipCopyDifficulty_UserId)
	-- 不是对应的副本
	if tEquipCopyDifficulty_Instance["Difficulty"][nEquipCopyDifficulty_Instancetype] == nil then
		return
	end
	
	Sys_SaveActionRewardLog(tEquipCopyDifficulty_Log["Join"], nEquipCopyDifficulty_UserId)
	
	-- 玩家临时表 记录当前副本id
	tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId] = nEquipCopyDifficulty_Instancetype
	
	-- 记录噩梦副本时候击杀狂暴分身的次数
	tEquipCopyDifficulty_UserInfo["KillClonedTimes"][nEquipCopyDifficulty_UserId] = 0
	
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_BrushMonster(5859, nEquipCopyDifficulty_MapId)
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_BrushMonster(6224, nEquipCopyDifficulty_MapId)
	end
	
	Sys_IncInstanceRefreshTimes(nEquipCopyDifficulty_Instancetype)
end

-- 刷新小怪
function EquipCopyDifficulty_BrushMonster(nEquipCopyDifficulty_MonsterId, nEquipCopyDifficulty_MapId)

	local nEquipCopyDifficulty_Num = tEquipCopyDifficulty_Monster[nEquipCopyDifficulty_MonsterId]["Num"]
	local nEquipCopyDifficulty_PosX = tEquipCopyDifficulty_Monster[nEquipCopyDifficulty_MonsterId]["PosX"]
	local nEquipCopyDifficulty_PosY = tEquipCopyDifficulty_Monster[nEquipCopyDifficulty_MonsterId]["PosY"]
	local nEquipCopyDifficulty_GenId = tEquipCopyDifficulty_Monster[nEquipCopyDifficulty_MonsterId]["GeneratorId"]
	local nEquipCopyDifficulty_Range = tEquipCopyDifficulty_Monster[nEquipCopyDifficulty_MonsterId]["Range"]
	
	-- 是对应的困难装备副本 刷小怪
	Monster_CreateMonsterRange(0,0,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_PosX,nEquipCopyDifficulty_PosY,nEquipCopyDifficulty_GenId,nEquipCopyDifficulty_MonsterId,0,"",0,nEquipCopyDifficulty_Range,nEquipCopyDifficulty_Range,nEquipCopyDifficulty_Num,0)
	Sys_SetTempData(1,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_MonsterId,nEquipCopyDifficulty_Num)
end

-- 刷新BOSS
function EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, sIndex, nIndex)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	local nEquipCopyDifficulty_PosX = tEquipCopyDifficulty_Instance["Boss"][sIndex][nIndex]["PosX"]
	local nEquipCopyDifficulty_PosY = tEquipCopyDifficulty_Instance["Boss"][sIndex][nIndex]["PosY"]
	local nEquipCopyDifficulty_GenId = tEquipCopyDifficulty_Instance["Boss"][sIndex][nIndex]["GeneratorId"]
	local nEquipCopyDifficulty_BossId = tEquipCopyDifficulty_Instance[sIndex][nEquipCopyDifficulty_Instancetype][1]
	
	-- 噩梦副本要刷两只幻影
	if sIndex == "Difficulty" then
		for i = 1, nIndex do
			Monster_AddMonster(nEquipCopyDifficulty_MapId,math.random(25,30),math.random(18,33),nEquipCopyDifficulty_GenId,nEquipCopyDifficulty_BossId)
			Sys_SetTempData(1,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_BossId,nIndex)
		end
		return
	end
	
	-- 噩梦副本 两只狂暴分身 触发随机事件
	if sIndex == "RageOther" and nIndex == 4 then
		for i = 1, nIndex-2 do
			Monster_AddMonster(nEquipCopyDifficulty_MapId,math.random(17,33),math.random(27,33),nEquipCopyDifficulty_GenId,nEquipCopyDifficulty_BossId)
			Sys_SetTempData(1,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_BossId,nIndex-2)
		end
		return
	end
	
	Monster_AddMonster(nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_PosX,nEquipCopyDifficulty_PosY,nEquipCopyDifficulty_GenId,nEquipCopyDifficulty_BossId)
end

-- 打怪触发
function EquipCopyDifficulty_KillMonster(nEquipCopyDifficulty_MonsterId)
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	-- 怪物数量-1
	Monster_Death(nEquipCopyDifficulty_MonsterId,nEquipCopyDifficulty_MapId)
	-- 获取怪物数量
	local nEquipCopyDifficulty_MonsterNum = Get_SysTempData(1,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_MonsterId)
	
	-- 当前怪物数为0 刷Boss
	if nEquipCopyDifficulty_MonsterNum ~= 0 then
		return
	end
	
	local nEquipCopyDifficulty_Instancetype =  tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		Sys_IncInstanceRefreshTimes(nEquipCopyDifficulty_MapId)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Difficulty", 1)
	-- 噩梦
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		Sys_IncInstanceRefreshTimes(nEquipCopyDifficulty_MapId)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Difficulty", 2)
	end
end

-- 加玩家状态
function EquipCopyDifficulty_AddUserStatus(nIndex)
	local nEquipCopyDifficulty_UserId = Get_UserId()

	local nEquipCopyDifficulty_Status = tEquipCopyDifficulty_Status[nIndex]["Status"]
	local nEquipCopyDifficulty_Power = tEquipCopyDifficulty_Status[nIndex]["Power"]
	local nEquipCopyDifficulty_Secs = tEquipCopyDifficulty_Status[nIndex]["Secs"]
	local nEquipCopyDifficulty_Times = tEquipCopyDifficulty_Status[nIndex]["Times"]
	local nEquipCopyDifficulty_RemainTime = tEquipCopyDifficulty_Status[nIndex]["RemainTime"]
	local nEquipCopyDifficulty_EndTime = tEquipCopyDifficulty_Status[nIndex]["EndTime"]
	local nEquipCopyDifficulty_Recordable = tEquipCopyDifficulty_Status[nIndex]["Recordable"]

	User_AddRoleStatus(nEquipCopyDifficulty_Status,nEquipCopyDifficulty_Power,nEquipCopyDifficulty_Secs,nEquipCopyDifficulty_Times,nEquipCopyDifficulty_RemainTime,nEquipCopyDifficulty_EndTime,nEquipCopyDifficulty_Recordable,0,0,nEquipCopyDifficulty_UserId)
end

-- 复活并刷新一波小怪（小怪数量能随机就随机）
function EquipCopyDifficulty_RandomEvent1()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_BrushMonster(5950, nEquipCopyDifficulty_MapId)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	-- 噩梦
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_BrushMonster(6225, nEquipCopyDifficulty_MapId)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 复活并刷新一波小怪，同时眩晕玩家5秒，降低玩家移动速度30秒
function EquipCopyDifficulty_RandomEvent2()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	EquipCopyDifficulty_AddUserStatus(1)
	EquipCopyDifficulty_AddUserStatus(2)
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_BrushMonster(5950, nEquipCopyDifficulty_MapId)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	-- 噩梦
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_BrushMonster(6225, nEquipCopyDifficulty_MapId)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 复活并刷新两个分身（本体35%血量，50%伤害）
function EquipCopyDifficulty_RandomEvent3()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 1)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 2)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	-- 噩梦
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 3)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 4)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 复活并刷新两个分身，同时眩晕玩家5秒，降低玩家移动速度30秒
function EquipCopyDifficulty_RandomEvent4()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	EquipCopyDifficulty_AddUserStatus(1)
	EquipCopyDifficulty_AddUserStatus(2)
	
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 1)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 2)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 3)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Other", 4)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 复活并刷新两个狂暴分身（本体25%血量，75%伤害）
function EquipCopyDifficulty_RandomEvent5()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新狂暴分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 1)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 2)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新狂暴分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 4)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 复活并刷新两个狂暴分身，同时眩晕玩家5秒，降低玩家移动速度30秒
function EquipCopyDifficulty_RandomEvent6()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	EquipCopyDifficulty_AddUserStatus(1)
	EquipCopyDifficulty_AddUserStatus(2)
	
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新狂暴分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 1)
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 2)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		-- 刷新狂暴分身BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 4)
		-- 刷新通关BOSS
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 完美复活，即刚才的不算，还会多复活一次
function EquipCopyDifficulty_RandomEvent7()
	-- 获取玩家id
	local nEquipCopyDifficulty_UserId = Get_UserId()
	-- 获取地图id
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	
	local nEquipCopyDifficulty_Instancetype = tEquipCopyDifficulty_UserInfo["InstanceType"][nEquipCopyDifficulty_UserId]
	-- 困难
	if tEquipCopyDifficulty_InstanceId["Difficulty"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 1)
	elseif tEquipCopyDifficulty_InstanceId["Nightmare"][nEquipCopyDifficulty_Instancetype] ~= nil then
		EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "Clearance", 2)
	end
end

-- 随机事件函数
local tEquipCopyDifficulty_RandomEvent = {}
	tEquipCopyDifficulty_RandomEvent[1] = EquipCopyDifficulty_RandomEvent1
	tEquipCopyDifficulty_RandomEvent[2] = EquipCopyDifficulty_RandomEvent2
	tEquipCopyDifficulty_RandomEvent[3] = EquipCopyDifficulty_RandomEvent3
	tEquipCopyDifficulty_RandomEvent[4] = EquipCopyDifficulty_RandomEvent4
	tEquipCopyDifficulty_RandomEvent[5] = EquipCopyDifficulty_RandomEvent5
	tEquipCopyDifficulty_RandomEvent[6] = EquipCopyDifficulty_RandomEvent6
	tEquipCopyDifficulty_RandomEvent[7] = EquipCopyDifficulty_RandomEvent7

-- 随机事件概率
function EquipCopyDifficulty_KillBossRandom(nEquipCopyDifficulty_BossId)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	local nEquipCopyDifficulty_Flag,tEquipCopyDifficulty_Result = Probabil_RandomAward(tEquipCopyDifficulty_RandomIndex,1)
	local nEquipCopyDifficulty_Index = tEquipCopyDifficulty_Result[1]["tAward"][1]["Item_1"]

	tEquipCopyDifficulty_RandomEvent[nEquipCopyDifficulty_Index]()
end

-- 击杀两只幻影出两只狂暴分身
function EquipCopyDifficulty_KillBossAppearCloned(nEquipCopyDifficulty_BossId)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	-- 怪物数量-1
	Monster_Death(nEquipCopyDifficulty_BossId,nEquipCopyDifficulty_MapId)
	-- 获取怪物数量
	local nEquipCopyDifficulty_MonsterNum = Get_SysTempData(1,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_BossId)
	
	-- 当前怪物数为0 刷两只狂暴分身
	if nEquipCopyDifficulty_MonsterNum ~= 0 then
		return
	end
	
	EquipCopyDifficulty_NewMonsterBoss(nEquipCopyDifficulty_MapId, "RageOther", 4)
end


-- 杀死两只狂暴分身触发随机事件
function EquipCopyDifficulty_KillBossRandomDouble(nEquipCopyDifficulty_BossId)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	local nEquipCopyDifficulty_Flag,tEquipCopyDifficulty_Result = Probabil_RandomAward(tEquipCopyDifficulty_RandomIndex,1)
	local nEquipCopyDifficulty_Index = tEquipCopyDifficulty_Result[1]["tAward"][1]["Item_1"]
	
	local nEquipCopyDifficulty_MapId = Get_UserMapId(nEquipCopyDifficulty_UserId)
	-- 怪物数量-1
	Monster_Death(nEquipCopyDifficulty_BossId,nEquipCopyDifficulty_MapId)
	-- 获取怪物数量
	local nEquipCopyDifficulty_MonsterNum = Get_SysTempData(1,nEquipCopyDifficulty_MapId,nEquipCopyDifficulty_BossId)
	
	-- 当前怪物数为0 刷随机事件
	if nEquipCopyDifficulty_MonsterNum ~= 0 then
		return
	end
	
	-- 如果已经出了3次狂暴分身 则不再出随机事件
	if tEquipCopyDifficulty_UserInfo["KillClonedTimes"][nEquipCopyDifficulty_UserId] == 3 then
		return
	end
	
	tEquipCopyDifficulty_UserInfo["KillClonedTimes"][nEquipCopyDifficulty_UserId] = tEquipCopyDifficulty_UserInfo["KillClonedTimes"][nEquipCopyDifficulty_UserId] + 1
	tEquipCopyDifficulty_RandomEvent[nEquipCopyDifficulty_Index]()
end

function EquipCopyDifficulty_SaveLog(nEquipCopyDifficulty_BossId)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	
	-- 记录log
	Sys_SaveActionRewardLog(tEquipCopyDifficulty_Log["Success"], nEquipCopyDifficulty_UserId)
end

-----------------------------------【开奖道具相关】
-- 碎片合成道具
function EquipCopyDifficulty_FragmentCompound(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_Index)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
		return
	end
	
	-- 等级不足 不能合成
	if not User_JudgeLevelAndMetempsychosis(tEquipCopyDifficulty_LevAndMete[1]["Level"],tEquipCopyDifficulty_LevAndMete[1]["Mete"]) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 物品数量不足
	if not Item_ChkMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_Index) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"][nEquipCopyDifficulty_ItemId]["Fail"])
		return
	end
	
	if not RewardTemplate_CheckSpace(tEquipCopyDifficulty_FragmentReward[nEquipCopyDifficulty_ItemId][nEquipCopyDifficulty_Index]) then
		return
	end
	
	if RewardTemplate_UseItem(tEquipCopyDifficulty_FragmentReward[nEquipCopyDifficulty_ItemId][nEquipCopyDifficulty_Index]) then
		User_TalkChannel2005(tEquipCopyDifficulty_Text["Sys"][nEquipCopyDifficulty_ItemId]["Compound"])
	end
end


-- 开奖道具对白显示
function EquipCopyDifficulty_Dialog(nEquipCopyDifficulty_ItemId,nEquipCopyDifficulty_TextIndex)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	
	local nEquipCopyDifficulty_NowData = EquipCopyDifficulty_GetStcValue(1)
	local nEquipCopyDifficulty_GlobalId = tEquipCopyDifficulty_Global[1]["Id"]
	local nEquipCopyDifficulty_NowData0 = Get_SysDynaGlobalData0(nEquipCopyDifficulty_GlobalId)
	
	tItem[nEquipCopyDifficulty_ItemId]["Text".. nEquipCopyDifficulty_TextIndex.. "2"] = ""
	tItem[nEquipCopyDifficulty_ItemId]["Text".. nEquipCopyDifficulty_TextIndex.. "3"] = ""
	
	local sEquipCopyDifficulty_Text212 = tEquipCopyDifficulty_Text[nEquipCopyDifficulty_ItemId]["Text".. nEquipCopyDifficulty_TextIndex.. "2"]
	local sEquipCopyDifficulty_Text213 = tEquipCopyDifficulty_Text[nEquipCopyDifficulty_ItemId]["Text".. nEquipCopyDifficulty_TextIndex.. "3"]
	
	if not EquipCopyDifficulty_ClearGlobal(1) then
		return false
	end
	
	tItem[nEquipCopyDifficulty_ItemId]["Text".. nEquipCopyDifficulty_TextIndex.. "2"] = string.format(sEquipCopyDifficulty_Text212,nEquipCopyDifficulty_NowData)
	tItem[nEquipCopyDifficulty_ItemId]["Text".. nEquipCopyDifficulty_TextIndex.. "3"] = string.format(sEquipCopyDifficulty_Text213,nEquipCopyDifficulty_NowData0)
	
	return true
end

-- 清空global
function EquipCopyDifficulty_ClearGlobal(nEquipCopyDifficulty_Index)
	local nEquipCopyDifficulty_GlobalId = tEquipCopyDifficulty_Global[nEquipCopyDifficulty_Index]["Id"]
	local nEquipCopyDifficulty_NowData0 = Get_SysDynaGlobalData0(nEquipCopyDifficulty_GlobalId)
	local nEquipCopyDifficulty_NowData1 = Get_SysDynaGlobalData1(nEquipCopyDifficulty_GlobalId)
	
	-- data1 == 1 表示开过奖 清空data0和data1 清空临时表
	if nEquipCopyDifficulty_NowData1 == 1 then
		tEquipCopyDifficulty_UserInfo["Prop"] = {}
		tEquipCopyDifficulty_UserInfo["Prop"]["UserId"] = {}
		tEquipCopyDifficulty_UserInfo["Prop"]["UserName"] = {}
		tEquipCopyDifficulty_RewardUser_Id = {}
		tEquipCopyDifficulty_RewardUser_Name = {}
		-- 清失败
		if not (Sys_SetSynaGlobalData0(nEquipCopyDifficulty_GlobalId,0) and Sys_SetSynaGlobalData1(nEquipCopyDifficulty_GlobalId,0)) then
			return false
		end
	end
	-- 成功
	return true
end

-- 获取掩码值
function EquipCopyDifficulty_GetStcValue(nEquipCopyDifficulty_Index)
	local nEquipCopyDifficulty_UserId = Get_UserId()
	
	local nEquipCopyDifficulty_EventType = tEquipCopyDifficulty_Stc[nEquipCopyDifficulty_Index]["EventType"]
	local nEquipCopyDifficulty_DataType = tEquipCopyDifficulty_Stc[nEquipCopyDifficulty_Index]["DataType"]
	local nEquipCopyDifficulty_NowData = Get_UserStatisticValue(nEquipCopyDifficulty_EventType, nEquipCopyDifficulty_DataType)
	return nEquipCopyDifficulty_NowData
end

-- 开奖道具使用
function EquipCopyDifficulty_UseProp(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_Index)
	local nEquipCopyDifficulty_UserId = Get_UserId()

	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
		return
	end
	
	-- 不在道具使用时间内
	if not Sys_ChkDayTime(tActivityTime["EquipCopyDifficulty"]["UseItemDayTime"]) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"][nEquipCopyDifficulty_ItemId]["TimeOut"])
		return
	end
	
	-- 等级不足 不能合成
	if not User_JudgeLevelAndMetempsychosis(tEquipCopyDifficulty_LevAndMete[1]["Level"],tEquipCopyDifficulty_LevAndMete[1]["Mete"]) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 物品不存在
	if not Item_ChkMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_Index) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["Fail"])
		return
	end
	
	local nEquipCopyDifficulty_EventType = tEquipCopyDifficulty_Stc[1]["EventType"]
	local nEquipCopyDifficulty_DataType = tEquipCopyDifficulty_Stc[1]["DataType"]
	local nEquipCopyDifficulty_TotalData = tEquipCopyDifficulty_Stc[1]["TotalData"]
	local nEquipCopyDifficulty_GlobalId = tEquipCopyDifficulty_Global[1]["Id"]
	local nEquipCopyDifficulty_NowData0 = Get_SysDynaGlobalData0(nEquipCopyDifficulty_GlobalId)
	
	-- 清空失败
	if not EquipCopyDifficulty_ClearGlobal(1) then
		return
	end
	
	-- 隔天清空掩码
	Task_StcReset(nEquipCopyDifficulty_EventType,nEquipCopyDifficulty_DataType)
	
	-- 获取当前掩码值
	local nEquipCopyDifficulty_NowData = EquipCopyDifficulty_GetStcValue(1)
	
	-- 掩码判断 今日已经投入5次
	if nEquipCopyDifficulty_NowData >= nEquipCopyDifficulty_TotalData then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"][nEquipCopyDifficulty_ItemId]["Fail"])
		return
	end
	
	-- 投入总数大于5
	if nEquipCopyDifficulty_NowData+nEquipCopyDifficulty_Index > nEquipCopyDifficulty_TotalData then
		Sys_MsgBox(string.format(tEquipCopyDifficulty_Text["Sys"][nEquipCopyDifficulty_ItemId]["TooMuch"],nEquipCopyDifficulty_NowData))
		return
	end
	
	-- 今日首次投入
	if nEquipCopyDifficulty_NowData == 0 then
		
		-- 背包空间判断
		if not RewardTemplate_CheckSpace(tEquipCopyDifficulty_FragmentReward[nEquipCopyDifficulty_ItemId][nEquipCopyDifficulty_Index]) then
			return
		end
		
		-- 打掩码成功 记时间戳 记global 记临时表 给奖励
		if Task_AddStatistic(nEquipCopyDifficulty_EventType, nEquipCopyDifficulty_DataType, nEquipCopyDifficulty_Index, 1) then
			Task_SetStcTimestamp(nEquipCopyDifficulty_EventType, nEquipCopyDifficulty_DataType,0)
			Sys_SetSynaGlobalData0(nEquipCopyDifficulty_GlobalId,nEquipCopyDifficulty_NowData0+nEquipCopyDifficulty_Index)
			RewardTemplate_UseItemAndMsg(tEquipCopyDifficulty_FragmentReward[nEquipCopyDifficulty_ItemId][nEquipCopyDifficulty_Index])
			for i=1, nEquipCopyDifficulty_Index do
				table.insert(tEquipCopyDifficulty_UserInfo["Prop"]["UserId"],nEquipCopyDifficulty_UserId)
				table.insert(tEquipCopyDifficulty_UserInfo["Prop"]["UserName"],Get_UserName(nEquipCopyDifficulty_UserId))
			end
			tItem[nEquipCopyDifficulty_ItemId]["Text311"] = string.format(tEquipCopyDifficulty_Text[nEquipCopyDifficulty_ItemId]["Text311"],nEquipCopyDifficulty_Index)
			Sys_SaveActionRewardLog(string.format(tEquipCopyDifficulty_Log["UseProp"],nEquipCopyDifficulty_ItemId,nEquipCopyDifficulty_Index))
			LinkItemGossipFunc_New(nEquipCopyDifficulty_ItemId, "3-1")
		end
		return
	end
	
	-- 今日非首次投入
	-- 直接删除1个物品 记掩码 记global
	if not Item_DelMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, 1) then
		return
	end
	
	Sys_SaveActionRewardLog(string.format(tEquipCopyDifficulty_Log["UseProp"],nEquipCopyDifficulty_ItemId,1))
	
	-- 打掩码成功 记时间戳 记global 记临时表
	if Task_AddStatistic(nEquipCopyDifficulty_EventType, nEquipCopyDifficulty_DataType, 1, 1) then
		Task_SetStcTimestamp(nEquipCopyDifficulty_EventType, nEquipCopyDifficulty_DataType,0)
		Sys_SetSynaGlobalData0(nEquipCopyDifficulty_GlobalId,nEquipCopyDifficulty_NowData0+1)
		table.insert(tEquipCopyDifficulty_UserInfo["Prop"]["UserId"],nEquipCopyDifficulty_UserId)
		table.insert(tEquipCopyDifficulty_UserInfo["Prop"]["UserName"],Get_UserName(nEquipCopyDifficulty_UserId))
		tItem[nEquipCopyDifficulty_ItemId]["Text311"] = string.format(tEquipCopyDifficulty_Text[nEquipCopyDifficulty_ItemId]["Text311"],nEquipCopyDifficulty_Index)
		LinkItemGossipFunc_New(nEquipCopyDifficulty_ItemId, "3-1")
	end
end

-- 碎片使用
function EquipCopyDifficulty_FragmentReward(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_Index)
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
		return
	end
	
	local tFragement_Reward_1 = CommonFunc_Copy(tEquipCopyDifficulty_FragmentReward[nEquipCopyDifficulty_ItemId])
	
	if nEquipCopyDifficulty_Index ~= 2 then
		-- 物品不存在
		if not Item_ChkMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_Index) then
			Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["Fail"])
			return
		end
		
		RewardTemplate_UseItemAndMsg(tFragement_Reward_1[nEquipCopyDifficulty_Index])
		return
	end
	
	local tFragement_Reward_2 = CommonFunc_Copy(tEquipCopyDifficulty_FragmentReward[nEquipCopyDifficulty_ItemId][1])
	local nEquipCopyDifficulty_ItemNum = Get_CountItemType(nEquipCopyDifficulty_ItemId,0)
	
	if nEquipCopyDifficulty_ItemNum == 0 or nEquipCopyDifficulty_ItemNum == nil then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["Fail"])
		return
	end
	
	tFragement_Reward_2["DeleteItem"][1]["ItemNum"] = nEquipCopyDifficulty_ItemNum
	tFragement_Reward_2["RewardExpTime"]["Value"] = tFragement_Reward_2["RewardExpTime"]["Value"] * nEquipCopyDifficulty_ItemNum
	tFragement_Reward_2["RewardExpTime"]["FullValue"] = tFragement_Reward_2["RewardExpTime"]["FullValue"] * nEquipCopyDifficulty_ItemNum
	
	-- 物品不存在
	if not Item_ChkMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemNum) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["Fail"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tFragement_Reward_2)
end

-- 过期删除背包所有道具
function EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
	-- 在活动时间内
	if Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		return
	end
	
	-- 物品不存在
	if not Item_ChkMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, 1) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["Fail"])
		return
	end
	
	-- 获取玩家背包里物品总数
	local nEquipCopyDifficulty_ItemNum = Get_CountItemType(nEquipCopyDifficulty_ItemId,0)
	-- 全部删除
	if not Item_DelMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemNum) then
		return
	end
	
	Sys_SaveActionRewardLog(string.format(tEquipCopyDifficulty_Log["DeleteItem"],nEquipCopyDifficulty_ItemId,nEquipCopyDifficulty_ItemNum))
end

-- 开奖
function EquipCopyDifficulty_OpenReward()
	local nEquipCopyDifficulty_GlobalId = tEquipCopyDifficulty_Global[1]["Id"]
	local nEquipCopyDifficulty_NowData0 = Get_SysDynaGlobalData0(nEquipCopyDifficulty_GlobalId)
	local nEquipCopyDifficulty_NowData1 = Get_SysDynaGlobalData1(nEquipCopyDifficulty_GlobalId)
	
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkDayTime(tActivityTime["EquipCopyDifficulty"]["OpenRewardTime"]) then
		return
	end
	
	-- data1 == 1 表示今天已经开奖
	if nEquipCopyDifficulty_NowData1 == 1 then
		return
	end
	
	local nEquipCopyDifficulty_WhichLevel = EquipCopyDifficulty_WhichLevel(nEquipCopyDifficulty_NowData0)
	
	-- 根据奖励档次 随机概率今日抽第几档奖励
	local nEquipCopyDifficulty_Flag,tEquipCopyDifficulty_RandomLevel = Probabil_RandomAward(tEquipCopyDifficulty_RewardLevel,nEquipCopyDifficulty_WhichLevel)
	local nEquipCopyDifficulty_ActionIndex = tEquipCopyDifficulty_RandomLevel[1]["tAward"][1]["Reward_Level"]
	
	for i = 1, 6 do
		tEquipCopyDifficulty_RewardUser_Id,tEquipCopyDifficulty_RewardUser_Name  = EquipCopyDifficulty_RandomUser(tEquipCopyDifficulty_RewardUser_Id)
		if tEquipCopyDifficulty_RewardUser_Id[i] == nil then
			break
		end
	end
	
	if #tEquipCopyDifficulty_RewardUser_Id == 0 then
		return
	end
	
	if not (Sys_SetSynaGlobalData0(nEquipCopyDifficulty_GlobalId,0) and Sys_SetSynaGlobalData1(nEquipCopyDifficulty_GlobalId,1)) then
		return
	end
	
	local sEquipCopyDifficulty_Sender = tEquipCopyDifficulty_Text["Mail"][1]["Sender"]
	local sEquipCopyDifficulty_Title = tEquipCopyDifficulty_Text["Mail"][1]["Title"]
	local sEquipCopyDifficulty_Content = tEquipCopyDifficulty_Text["Mail"][1]["Content"]
	
	for i = 1, #tEquipCopyDifficulty_RewardUser_Id do
		Sys_SendMail(tEquipCopyDifficulty_RewardUser_Id[i],0,0,tEquipCopyDifficulty_Action[nEquipCopyDifficulty_ActionIndex][i],0,7,sEquipCopyDifficulty_Sender,sEquipCopyDifficulty_Title,string.format(sEquipCopyDifficulty_Content,tEquipCopyDifficulty_Text["Mail"]["Match"][i]))
		Sys_TalkBroadcast(string.format(tEquipCopyDifficulty_Text["Sys"]["Braotcast"][i],tEquipCopyDifficulty_RewardUser_Name[i],tEquipCopyDifficulty_Text["Reward"][nEquipCopyDifficulty_ActionIndex][i]))
	end
	tEquipCopyDifficulty_UserInfo["Prop"] = {}
	tEquipCopyDifficulty_UserInfo["Prop"]["UserId"] = {}
	tEquipCopyDifficulty_UserInfo["Prop"]["UserName"] = {}
	tEquipCopyDifficulty_RewardUser_Id = {}
	tEquipCopyDifficulty_RewardUser_Name = {}
end

-- 随机中奖玩家
function EquipCopyDifficulty_RandomUser(tEquipCopyDifficulty_RewardUser_Id)

	local nEquipCopyDifficulty_UserId,sEquipCopyDifficulty_Name = EquipCopyDifficulty_GetRandomUser(tEquipCopyDifficulty_UserInfo["Prop"]["UserId"],tEquipCopyDifficulty_UserInfo["Prop"]["UserName"])
	
	-- 无人参与 没有名次产生
	if nEquipCopyDifficulty_UserId == nil then
		table.insert(tEquipCopyDifficulty_RewardUser_Id, nil)
		table.insert(tEquipCopyDifficulty_RewardUser_Name, nil)
		return tEquipCopyDifficulty_RewardUser_Id,tEquipCopyDifficulty_RewardUser_Name
	end
	
	-- 有玩家中奖 插入中奖玩家表
	table.insert(tEquipCopyDifficulty_RewardUser_Id, nEquipCopyDifficulty_UserId)
	table.insert(tEquipCopyDifficulty_RewardUser_Name, sEquipCopyDifficulty_Name)
	
	EquipCopyDifficulty_RemoveUser(tEquipCopyDifficulty_UserInfo["Prop"], nEquipCopyDifficulty_UserId)
	return tEquipCopyDifficulty_RewardUser_Id,tEquipCopyDifficulty_RewardUser_Name
end

-- 获取中奖的玩家id 玩家名字
function EquipCopyDifficulty_GetRandomUser(tEquipCopyDifficulty_RandomUser_Id, tEquipCopyDifficulty_RandomUser_Name)
	local nEquipCopyDifficulty_Length = #tEquipCopyDifficulty_RandomUser_Id
	if nEquipCopyDifficulty_Length == 0 then
		return nil,nil
	end
	-- 根据表场随机下标
	local nEquipCopyDifficulty_Index = math.random(1,nEquipCopyDifficulty_Length)
	-- 
	local nEquipCopyDifficulty_UserId = tEquipCopyDifficulty_RandomUser_Id[nEquipCopyDifficulty_Index]
	local sEquipCopyDifficulty_UserName = tEquipCopyDifficulty_RandomUser_Name[nEquipCopyDifficulty_Index]
	
	-- 返回中奖的玩家id
	return nEquipCopyDifficulty_UserId,sEquipCopyDifficulty_UserName
end

-- 从临时表 剔除已中奖玩家 避免重复中奖
function EquipCopyDifficulty_RemoveUser(tEquipCopyDifficulty_RandomUser, nEquipCopyDifficulty_UserId)
	local nEquipCopyDifficulty_Length = #tEquipCopyDifficulty_RandomUser["UserId"]
	-- 已中奖的玩家 从临时表 剔除
	for i = nEquipCopyDifficulty_Length, 1, -1 do
		if tEquipCopyDifficulty_RandomUser["UserId"][i] == nEquipCopyDifficulty_UserId then
			table.remove(tEquipCopyDifficulty_RandomUser["UserId"], i)
			table.remove(tEquipCopyDifficulty_RandomUser["UserName"], i)
		end
	end
end

-- 判断奖励档次
function EquipCopyDifficulty_WhichLevel(nEquipCopyDifficulty_NowData0)
	if nEquipCopyDifficulty_NowData0 <= tEquipCopyDifficulty_WhichLevel[1][2] then
		return 1
	elseif nEquipCopyDifficulty_NowData0 >= tEquipCopyDifficulty_WhichLevel[2][1] and nEquipCopyDifficulty_NowData0 <= tEquipCopyDifficulty_WhichLevel[2][2] then
		return 2
	elseif nEquipCopyDifficulty_NowData0 >= tEquipCopyDifficulty_WhichLevel[3][1] and nEquipCopyDifficulty_NowData0 <= tEquipCopyDifficulty_WhichLevel[3][2] then
		return 3
	elseif nEquipCopyDifficulty_NowData0 >= tEquipCopyDifficulty_WhichLevel[4][1] and nEquipCopyDifficulty_NowData0 <= tEquipCopyDifficulty_WhichLevel[4][2] then
		return 4
	elseif nEquipCopyDifficulty_NowData0 >= tEquipCopyDifficulty_WhichLevel[5][1] and nEquipCopyDifficulty_NowData0 <= tEquipCopyDifficulty_WhichLevel[5][2] then
		return 5
	elseif nEquipCopyDifficulty_NowData0 >= tEquipCopyDifficulty_WhichLevel[6][1] then
		return 6
	end
end

----------------------------------NPC部分---------------------------------------------

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 3314887,'10分钟经验礼盒'
tItem[3314887] = tItem[3314887] or {}
tItem[3314887]["Function"] = function(nEquipCopyDifficulty_ItemId,sItemName)
	if not Item_ChkMulItem(nEquipCopyDifficulty_ItemId, nEquipCopyDifficulty_ItemId, 1) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tEquipCopyDifficulty_Reward[nEquipCopyDifficulty_ItemId])
end

-- 3314888,'20分钟经验礼盒'
tItem[3314888] = tItem[3314887] or {}
-- 3314889,'30分钟经验礼盒'
tItem[3314889] = tItem[3314887] or {}

---------------------------------英文新作道具-----------------------------------------
-- 3316028,'靛青仙玉' 碎片
tItemFace[3316028] = 2857
tItem[3316028] = tItem[3316028] or {}
tItem[3316028]["Function"] = function(nEquipCopyDifficulty_ItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
		return
	else
		LinkItemGossipFunc_New(nEquipCopyDifficulty_ItemId, "1-1")
	end
end
tItem[3316028]["DialogueText"] = tEquipCopyDifficulty_Text[3316028]
tItem[3316028]["Text1-1"] = {111,112}
tItem[3316028]["tOption1-1"] = {111,112,113,114}
tItem[3316028]["OptionFunc111"] = "EquipCopyDifficulty_FragmentReward</N>3316028</N>1"
tItem[3316028]["OptionFunc112"] = "EquipCopyDifficulty_FragmentReward</N>3316028</N>2"
tItem[3316028]["OptionFunc113"] = "EquipCopyDifficulty_FragmentCompound</N>3316028</N>9"

-- 3316029,'虹光仙玉' 高级碎片
tItemFace[3316029] = 2902
tItem[3316029] = tItem[3316029] or {}
tItem[3316029]["Function"] = function(nEquipCopyDifficulty_ItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
		return
	else
		LinkItemGossipFunc_New(nEquipCopyDifficulty_ItemId, "1-1")
	end
end
tItem[3316029]["DialogueText"] = tEquipCopyDifficulty_Text[3316029]
tItem[3316029]["Text1-1"] = {111,112}
tItem[3316029]["tOption1-1"] = {111,112,113,114}
tItem[3316029]["OptionFunc111"] = "EquipCopyDifficulty_FragmentReward</N>3316029</N>1"
tItem[3316029]["OptionFunc112"] = "EquipCopyDifficulty_FragmentReward</N>3316029</N>2"
tItem[3316029]["OptionFunc113"] = "EquipCopyDifficulty_FragmentCompound</N>3316029</N>3"

-- 3316030,'仙玉光华' 开奖道具
tItemFace[3316030] = 1131
tItem[3316030] = tItem[3316030] or {}
tItem[3316030]["Function"] = function(nEquipCopyDifficulty_ItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["EquipCopyDifficulty"]["ActivityTime"]) then
		EquipCopyDifficulty_DelAllProp(nEquipCopyDifficulty_ItemId)
		return
	end
	
	-- 不在道具使用时间内
	if not Sys_ChkDayTime(tActivityTime["EquipCopyDifficulty"]["UseItemDayTime"]) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"][nEquipCopyDifficulty_ItemId]["TimeOut"])
		return
	end
	
	-- 等级不足 不能上交
	if not User_JudgeLevelAndMetempsychosis(tEquipCopyDifficulty_LevAndMete[1]["Level"],tEquipCopyDifficulty_LevAndMete[1]["Mete"]) then
		Sys_MsgBox(tEquipCopyDifficulty_Text["Sys"]["LevelLimit"])
		return
	end
	
	LinkItemGossipFunc_New(nEquipCopyDifficulty_ItemId, "1-1")
end
tItem[3316030]["DialogueText"] = tEquipCopyDifficulty_Text[3316030]
tItem[3316030]["Text1-1"] = {111,112,113,114,115,116,117,118}

tItem[3316030]["tOption1-1"] = {111,112}
tItem[3316030]["OptionPoint111"] = "2-1"
tItem[3316030]["OptionPoint112"] = "2-2"
-- 投入1个
tItem[3316030]["Text2-1"] = {211,212,213}
tItem[3316030]["tOption2-1"] = {211,212}
tItem[3316030]["ChkFunc2-1"] = function ()
	return EquipCopyDifficulty_Dialog(3316030,21)
end
tItem[3316030]["OptionFunc211"] = "EquipCopyDifficulty_UseProp</N>3316030</N>1"
-- 投入5个
tItem[3316030]["Text2-2"] = {221,222,223}
tItem[3316030]["tOption2-2"] = {221,222}
tItem[3316030]["ChkFunc2-2"] = function ()
	return EquipCopyDifficulty_Dialog(3316030,22)
end
tItem[3316030]["OptionFunc221"] = "EquipCopyDifficulty_UseProp</N>3316030</N>5"

-- 成功
tItem[3316030]["Text3-1"] = {311}
tItem[3316030]["tOption3-1"] = {311}


---------------------------------怪物部分---------------------------------------------

local tEquipCopyDifficulty_KillMonster = {}

-- 困难副本击杀小怪召唤BOSS
tEquipCopyDifficulty_KillMonster[1]= {}
tEquipCopyDifficulty_KillMonster[1]["Function"]= EquipCopyDifficulty_KillMonster
tEquipCopyDifficulty_KillMonster[1]["MonsterId"] = {5859}

-- 困难副本击杀幻影发随机事件
tEquipCopyDifficulty_KillMonster[2]= {}
tEquipCopyDifficulty_KillMonster[2]["Function"]= EquipCopyDifficulty_KillBossRandom
tEquipCopyDifficulty_KillMonster[2]["MonsterId"] = {5933,5934,5935,5936,5937,5938,5939,5940,5941,5942,5943,5944,5945,5946,5947}

-- 噩梦副本击杀小怪召唤BOSS
tEquipCopyDifficulty_KillMonster[3]= {}
tEquipCopyDifficulty_KillMonster[3]["Function"]= EquipCopyDifficulty_KillMonster
tEquipCopyDifficulty_KillMonster[3]["MonsterId"] = {6224}

-- 噩梦副本击杀两只幻影后出狂暴分身
tEquipCopyDifficulty_KillMonster[4]= {}
tEquipCopyDifficulty_KillMonster[4]["Function"]= EquipCopyDifficulty_KillBossAppearCloned
tEquipCopyDifficulty_KillMonster[4]["MonsterId"] = {6226,6227,6228,6229,6230,6231,6232,6233,6234,6235,6236,6237,6238,6239,6240}

-- 噩梦副本击杀两只狂暴分身后触发随机事件
tEquipCopyDifficulty_KillMonster[5]= {}
tEquipCopyDifficulty_KillMonster[5]["Function"]= EquipCopyDifficulty_KillBossRandomDouble
tEquipCopyDifficulty_KillMonster[5]["MonsterId"] = {6256,6257,6258,6259,6260,6261,6262,6263,6264,6265,6266,6267,6268,6269,6270}

-- 玩家打死通关BOSS 记一条log
tEquipCopyDifficulty_KillMonster[6]= {}
tEquipCopyDifficulty_KillMonster[6]["Function"]= EquipCopyDifficulty_SaveLog
tEquipCopyDifficulty_KillMonster[6]["MonsterId"] = {6209,6210,6211,6212,6213,6214,6215,6216,6217,6218,6219,6220,6221,6222,6223}


table.insert(tMonsterDrop_AreaLoad,tEquipCopyDifficulty_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tEquipCopyDifficulty_KillMonster[2])
table.insert(tMonsterDrop_AreaLoad,tEquipCopyDifficulty_KillMonster[3])
table.insert(tMonsterDrop_AreaLoad,tEquipCopyDifficulty_KillMonster[4])
table.insert(tMonsterDrop_AreaLoad,tEquipCopyDifficulty_KillMonster[5])
table.insert(tMonsterDrop_AreaLoad,tEquipCopyDifficulty_KillMonster[6])

-- 进入副本后触发接口
table.insert(tProcessAfterCreateInstance["tFunction"], EquipCopyDifficulty_NewMonster)

----------------------------------时间自检---------------------------------
-- 时间自检抽奖
local tEquipCopyDifficulty_OnTime = {}

	-- 美服
	tEquipCopyDifficulty_OnTime[1] = {}
	tEquipCopyDifficulty_OnTime[1]["ActivityTime"] = tActivityTime["EquipCopyDifficulty"]["ActivityTime"]
	tEquipCopyDifficulty_OnTime[1]["Type"] = 2 
	tEquipCopyDifficulty_OnTime[1]["TimeType"] = 4  -- 日时间
	tEquipCopyDifficulty_OnTime[1]["Multiple"] = {}
	tEquipCopyDifficulty_OnTime[1]["Multiple"][1] = tActivityTime["EquipCopyDifficulty"]["OpenRewardTime"]
	tEquipCopyDifficulty_OnTime[1]["Func"] = EquipCopyDifficulty_OpenReward
	
	table.insert(tSystemTime_InitialData,tEquipCopyDifficulty_OnTime[1])