------------------------------------------------------------------------------------
--Name：       190816[英文征服][活动脚本]副职业提升月（9.12-10.9）
--Creator:     吴燕柚
--Created:     2019/08/20
------------------------------------------------------------------------------------
--任务需求：

--lua.ini 41453
--stc 20259~20277
--log 12001589

--emoney log 
--10000 0806    %d  %d  1   上交票券
--10000 0807    %d  %d  1   获得票券

--命名 SecondProGrowth

--stc(202,59) 使用正气令
--stc(202,60) 每周1次决战冥城
--stc(202,61) 每周1次矿洞冒险
--stc(202,62) 每周1次战场杀敌
--stc(202,63) 个人排位赛每日第一次参与
--stc(202,64) 个人排位赛每日第一次获胜
--stc(202,65) "组队PK赛第4-8名礼包(120+级段才有)"
--stc(202,66) "组队PK赛第三名礼包(120+级段才有)"
--stc(202,67) "组队PK赛第二名礼包(120+级段才有)"
--stc(202,68) "组队PK赛第一名礼包(120+级段才有)"
--stc(202,69) "大众组队PK赛第4-8名礼包(120+级段才有)"
--stc(202,70) "大众组队PK赛第三名礼包(120+级段才有)"
--stc(202,71) "大众组队PK赛第二名礼包(120+级段才有)"
--stc(202,72) "大众组队PK赛第一名礼包(120+级段才有)"
--stc(202,73) "精英PK赛第三名礼包(120+级段才有)"
--stc(202,74) "精英PK赛第二名礼包(120+级段才有)"
--stc(202,75) "精英PK赛第一名礼包(120+级段才有)"

--stc(202,76) 背包信

--stc(203,04) 图坦卡蒙
--stc(203,05) 宙斯
--stc(203,06) 花木兰

--global (53630) 图坦卡蒙
--global (53631) 宙斯
--global (53632) 花木兰

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

--数据
local tSecondProGrowth_Data = {}
tSecondProGrowth_Data["Web"] = "https://coevent.99.com/subclass1909/client/"
tSecondProGrowth_Data["Item"] = 3313587--凭证ID
tSecondProGrowth_Data["nNpcId"] = 24861
tSecondProGrowth_Data["EmoneyLog"] = {}
tSecondProGrowth_Data["EmoneyLog"]["HandUp"] = "10000	0806	0	0	%d	"
tSecondProGrowth_Data["EmoneyLog"]["Get"] = "10000	0807	0	0	1	"
tSecondProGrowth_Data["Price"] = {}
tSecondProGrowth_Data["Price"][1] = 90
tSecondProGrowth_Data["Price"][2] = 900
tSecondProGrowth_Data["Price"][3] = 5000000

--掩码
local tSecondProGrowth_Stc = {}
tSecondProGrowth_Stc["Total"] = {}
tSecondProGrowth_Stc["Total"]["Event"] = 203
tSecondProGrowth_Stc["Total"]["Data"] = 04
tSecondProGrowth_Stc["Choose"] = {}
tSecondProGrowth_Stc["Choose"][1] = {}--图坦卡蒙
tSecondProGrowth_Stc["Choose"][1]["Event"] = 203
tSecondProGrowth_Stc["Choose"][1]["Data"] = 04
tSecondProGrowth_Stc["Choose"][2] = {}--宙斯
tSecondProGrowth_Stc["Choose"][2]["Event"] = 203
tSecondProGrowth_Stc["Choose"][2]["Data"] = 05
tSecondProGrowth_Stc["Choose"][3] = {}--花木兰
tSecondProGrowth_Stc["Choose"][3]["Event"] = 203
tSecondProGrowth_Stc["Choose"][3]["Data"] = 06

--全局表
local tSecondProGrowth_Global = {}
tSecondProGrowth_Global["Choose"] = {}
tSecondProGrowth_Global["Choose"][1] = 53630--图坦卡蒙
tSecondProGrowth_Global["Choose"][2] = 53631--宙斯
tSecondProGrowth_Global["Choose"][3] = 53632--花木兰

--奖励积分和限制数据
local tSecondProGrowth_Score = {}
tSecondProGrowth_Score[1] = {}--使用正气令
tSecondProGrowth_Score[1]["Event"] = 202
tSecondProGrowth_Score[1]["Data"] = 59
tSecondProGrowth_Score[1]["Score"] = 10
tSecondProGrowth_Score[1]["TimeLimit"] = 4--隔天
tSecondProGrowth_Score[1]["Limit"] = 280--活动期间上限
tSecondProGrowth_Score[1]["Action"] = 574309

tSecondProGrowth_Score[2] = {}--每周1次决战冥城
tSecondProGrowth_Score[2]["Event"] = 202
tSecondProGrowth_Score[2]["Data"] = 60
tSecondProGrowth_Score[2]["Score"] = 10
tSecondProGrowth_Score[2]["TimeLimit"] = 5--隔周
tSecondProGrowth_Score[2]["Limit"] = 40--活动期间上限
tSecondProGrowth_Score[2]["Action"] = 574309

tSecondProGrowth_Score[3] = {}--每周1次矿洞冒险
tSecondProGrowth_Score[3]["Event"] = 202
tSecondProGrowth_Score[3]["Data"] = 61
tSecondProGrowth_Score[3]["Score"] = 10
tSecondProGrowth_Score[3]["TimeLimit"] = 5--隔周
tSecondProGrowth_Score[3]["Limit"] = 40--活动期间上限
tSecondProGrowth_Score[3]["Action"] = 574309

tSecondProGrowth_Score[4] = {}--每周1次战场杀敌
tSecondProGrowth_Score[4]["Event"] = 202
tSecondProGrowth_Score[4]["Data"] = 62
tSecondProGrowth_Score[4]["Score"] = 10
tSecondProGrowth_Score[4]["TimeLimit"] = 5--隔周
tSecondProGrowth_Score[4]["Limit"] = 40--活动期间上限
tSecondProGrowth_Score[4]["Action"] = 574309

tSecondProGrowth_Score[5] = {}--个人排位赛每日第一次参与
tSecondProGrowth_Score[5]["Event"] = 202
tSecondProGrowth_Score[5]["Data"] = 63
tSecondProGrowth_Score[5]["Score"] = 10
tSecondProGrowth_Score[5]["TimeLimit"] = 4--隔天
tSecondProGrowth_Score[5]["Limit"] = 280--活动期间上限
tSecondProGrowth_Score[5]["Action"] = 574309

tSecondProGrowth_Score[6] = {}--个人排位赛每日第一次获胜
tSecondProGrowth_Score[6]["Event"] = 202
tSecondProGrowth_Score[6]["Data"] = 64
tSecondProGrowth_Score[6]["Score"] = 10
tSecondProGrowth_Score[6]["TimeLimit"] = 4--隔天
tSecondProGrowth_Score[6]["Limit"] = 280--活动期间上限
tSecondProGrowth_Score[6]["Action"] = 574309

tSecondProGrowth_Score[7] = {}--"组队PK赛第4-8名礼包(120+级段才有)"
tSecondProGrowth_Score[7]["Event"] = 202
tSecondProGrowth_Score[7]["Data"] = 65
tSecondProGrowth_Score[7]["Score"] = 70
tSecondProGrowth_Score[7]["Limit"] = 280--活动期间上限
tSecondProGrowth_Score[7]["Action"] = 574860

tSecondProGrowth_Score[8] = {}--"组队PK赛第三名礼包(120+级段才有)"
tSecondProGrowth_Score[8]["Event"] = 202
tSecondProGrowth_Score[8]["Data"] = 66
tSecondProGrowth_Score[8]["Score"] = 80
tSecondProGrowth_Score[8]["Limit"] = 320--活动期间上限
tSecondProGrowth_Score[8]["Action"] = 574861

tSecondProGrowth_Score[9] = {}--"组队PK赛第二名礼包(120+级段才有)"
tSecondProGrowth_Score[9]["Event"] = 202
tSecondProGrowth_Score[9]["Data"] = 67
tSecondProGrowth_Score[9]["Score"] = 100
tSecondProGrowth_Score[9]["Limit"] = 400--活动期间上限
tSecondProGrowth_Score[9]["Action"] = 574862

tSecondProGrowth_Score[10] = {}--"组队PK赛第一名礼包(120+级段才有)"
tSecondProGrowth_Score[10]["Event"] = 202
tSecondProGrowth_Score[10]["Data"] = 68
tSecondProGrowth_Score[10]["Score"] = 130
tSecondProGrowth_Score[10]["Limit"] = 520--活动期间上限
tSecondProGrowth_Score[10]["Action"] = 574863

tSecondProGrowth_Score[11] = {}--"大众组队PK赛第4-8名礼包(120+级段才有)"
tSecondProGrowth_Score[11]["Event"] = 202
tSecondProGrowth_Score[11]["Data"] = 69
tSecondProGrowth_Score[11]["Score"] = 70
tSecondProGrowth_Score[11]["Limit"] = 280--活动期间上限
tSecondProGrowth_Score[11]["Action"] = 574864

tSecondProGrowth_Score[12] = {}--"大众组队PK赛第三名礼包(120+级段才有)"
tSecondProGrowth_Score[12]["Event"] = 202
tSecondProGrowth_Score[12]["Data"] = 70
tSecondProGrowth_Score[12]["Score"] = 80
tSecondProGrowth_Score[12]["Limit"] = 320--活动期间上限
tSecondProGrowth_Score[12]["Action"] = 574865

tSecondProGrowth_Score[13] = {}--"大众组队PK赛第二名礼包(120+级段才有)"
tSecondProGrowth_Score[13]["Event"] = 202
tSecondProGrowth_Score[13]["Data"] = 71
tSecondProGrowth_Score[13]["Score"] = 100
tSecondProGrowth_Score[13]["Limit"] = 400--活动期间上限
tSecondProGrowth_Score[13]["Action"] = 574866

tSecondProGrowth_Score[14] = {}--"大众组队PK赛第一名礼包(120+级段才有)"
tSecondProGrowth_Score[14]["Event"] = 202
tSecondProGrowth_Score[14]["Data"] = 72
tSecondProGrowth_Score[14]["Score"] = 130
tSecondProGrowth_Score[14]["Limit"] = 520--活动期间上限
tSecondProGrowth_Score[14]["Action"] = 574867

tSecondProGrowth_Score[15] = {}--"精英PK赛第三名礼包(120+级段才有)"
tSecondProGrowth_Score[15]["Event"] = 202
tSecondProGrowth_Score[15]["Data"] = 73
tSecondProGrowth_Score[15]["Score"] = 80
tSecondProGrowth_Score[15]["Limit"] = 320--活动期间上限
tSecondProGrowth_Score[15]["Action"] = 574311

tSecondProGrowth_Score[16] = {}--"精英PK赛第二名礼包(120+级段才有)"
tSecondProGrowth_Score[16]["Event"] = 202
tSecondProGrowth_Score[16]["Data"] = 74
tSecondProGrowth_Score[16]["Score"] = 100
tSecondProGrowth_Score[16]["Limit"] = 400--活动期间上限
tSecondProGrowth_Score[16]["Action"] = 574312

tSecondProGrowth_Score[17] = {}--"精英PK赛第一名礼包(120+级段才有)"
tSecondProGrowth_Score[17]["Event"] = 202
tSecondProGrowth_Score[17]["Data"] = 75
tSecondProGrowth_Score[17]["Score"] = 130
tSecondProGrowth_Score[17]["Limit"] = 520--活动期间上限
tSecondProGrowth_Score[17]["Action"] = 574313


local tSecondProGrowth_Reward = {}
	-- ===上交令牌
	-- ===索引: tSecondProGrowth_Reward["HandUp"]
	-- ===删除: 3313587, 2
	-- ===LogStep: 1[1]
	tSecondProGrowth_Reward["HandUp"] = {}
	tSecondProGrowth_Reward["HandUp"]["LogId"] = 12001589
	tSecondProGrowth_Reward["HandUp"]["LogStep"] = "1[1]"
	tSecondProGrowth_Reward["HandUp"]["DeleteItem"] = {}
	tSecondProGrowth_Reward["HandUp"]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward["HandUp"]["DeleteItem"][1]["Id"] = 3313587 -- 【库】 3313587 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward["HandUp"]["DeleteItem"][1]["ItemNum"] = 1

	-- ===获得令牌
	-- ===索引: tSecondProGrowth_Reward["Get"]
	-- ===LogStep: 1[1]
	tSecondProGrowth_Reward["Get"] = {}
	tSecondProGrowth_Reward["Get"]["LogId"] = 12001589
	tSecondProGrowth_Reward["Get"]["LogStep"] = "1[1]"
	tSecondProGrowth_Reward["Get"]["RewardItem"] = {}
	tSecondProGrowth_Reward["Get"]["RewardItem"][1] = {}
	tSecondProGrowth_Reward["Get"]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】凭证令牌
	tSecondProGrowth_Reward["Get"]["RewardItem"][1]["Attr"] = "0 " --  3313587 【库里没有该物品】*1
	tSecondProGrowth_Reward["Get"]["RewardEffect"] = {}
	tSecondProGrowth_Reward["Get"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward["Get"]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSecondProGrowth_Reward[3326440] = {}
	tSecondProGrowth_Reward[3326440]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326440]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326440]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326440]["DeleteItem"][1]["Id"] = 3326440 -- 【库】 3326440 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326440]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326440]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326440]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326440]["RewardItem"][1]["Attr"] = "0 70" --  3313587 【库里没有该物品】*70（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326440]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326440]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326440]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326441] = {}
	-- ===组队PK赛季军包
	-- ===索引:tSecondProGrowth_Reward[3326441]
	-- ===删除:3326441,1
	-- ===
	tSecondProGrowth_Reward[3326441]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326441]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326441]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326441]["DeleteItem"][1]["Id"] = 3326441 -- 【库】 3326441 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326441]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326441]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326441]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326441]["RewardItem"][1]["Attr"] = "0 80" --  3313587 【库里没有该物品】*80（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326441]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326441]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326441]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326442] = {}
	-- ===组队PK赛亚军包
	-- ===索引:tSecondProGrowth_Reward[3326442]
	-- ===删除:3326442,1
	-- ===
	tSecondProGrowth_Reward[3326442]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326442]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326442]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326442]["DeleteItem"][1]["Id"] = 3326442 -- 【库】 3326442 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326442]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326442]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326442]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326442]["RewardItem"][1]["Attr"] = "0 100" --  3313587 【库里没有该物品】*100（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326442]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326442]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326442]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326443] = {}
	-- ===组队PK赛冠军包
	-- ===索引:tSecondProGrowth_Reward[3326443]
	-- ===删除:3326443,1
	-- ===
	tSecondProGrowth_Reward[3326443]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326443]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326443]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326443]["DeleteItem"][1]["Id"] = 3326443 -- 【库】 3326443 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326443]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326443]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326443]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326443]["RewardItem"][1]["Attr"] = "0 130" --  3313587 【库里没有该物品】*130（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326443]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326443]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326443]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326444] = {}
	-- ===大众组队PK赛8强包
	-- ===索引:tSecondProGrowth_Reward[3326444]
	-- ===删除:3326444,1
	-- ===
	tSecondProGrowth_Reward[3326444]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326444]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326444]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326444]["DeleteItem"][1]["Id"] = 3326444 -- 【库】 3326444 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326444]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326444]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326444]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326444]["RewardItem"][1]["Attr"] = "0 70" --  3313587 【库里没有该物品】*70（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326444]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326444]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326444]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326445] = {}
	-- ===大众组队PK赛8强包
	-- ===索引:tSecondProGrowth_Reward[3326445]
	-- ===删除:3326445,1
	-- ===
	tSecondProGrowth_Reward[3326445]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326445]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326445]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326445]["DeleteItem"][1]["Id"] = 3326445 -- 【库】 3326445 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326445]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326445]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326445]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326445]["RewardItem"][1]["Attr"] = "0 80" --  3313587 【库里没有该物品】*80（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326445]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326445]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326445]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326446] = {}
	-- ===大众组队PK赛8强包
	-- ===索引:tSecondProGrowth_Reward[3326446]
	-- ===删除:3326446,1
	-- ===
	tSecondProGrowth_Reward[3326446]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326446]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326446]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326446]["DeleteItem"][1]["Id"] = 3326446 -- 【库】 3326446 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326446]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326446]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326446]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326446]["RewardItem"][1]["Attr"] = "0 100" --  3313587 【库里没有该物品】*100（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326446]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326446]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326446]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward[3326447] = {}
	-- ===大众组队PK赛8强包
	-- ===索引:tSecondProGrowth_Reward[3326447]
	-- ===删除:3326447,1
	-- ===
	tSecondProGrowth_Reward[3326447]["LogId"] = 12001589
	tSecondProGrowth_Reward[3326447]["DeleteItem"] = {}
	tSecondProGrowth_Reward[3326447]["DeleteItem"][1] = {}
	tSecondProGrowth_Reward[3326447]["DeleteItem"][1]["Id"] = 3326447 -- 【库】 3326447 【库里没有该物品】[属性:]
	tSecondProGrowth_Reward[3326447]["RewardItem"] = {}
	tSecondProGrowth_Reward[3326447]["RewardItem"][1] = {}
	tSecondProGrowth_Reward[3326447]["RewardItem"][1]["Id"] = 3313587 --  3313587 【库里没有该物品】, 【表格】神祗养成令
	tSecondProGrowth_Reward[3326447]["RewardItem"][1]["Attr"] = "0 130" --  3313587 【库里没有该物品】*130（[错误]物品数量超10个）
	tSecondProGrowth_Reward[3326447]["RewardEffect"] = {}
	tSecondProGrowth_Reward[3326447]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward[3326447]["RewardEffect"]["Effect"] = "angelwing"
	
	tSecondProGrowth_Reward["Exchange"] = {}
	-- ===90天石换10修行令
	-- ===索引: tSecondProGrowth_Reward["Exchange"][1]
	-- ===EMoneyLog:350 22674
	-- ===LogStep: 1[1]
	tSecondProGrowth_Reward["Exchange"][1] = {}
	tSecondProGrowth_Reward["Exchange"][1]["LogId"] = 12001589
	tSecondProGrowth_Reward["Exchange"][1]["LogStep"] = "1[1]"
	tSecondProGrowth_Reward["Exchange"][1]["RewardItem"] = {}
	tSecondProGrowth_Reward["Exchange"][1]["RewardItem"][1] = {}
	tSecondProGrowth_Reward["Exchange"][1]["RewardItem"][1]["Id"] = 3313587 -- WorshipToken[3313587][属性:11][叠加:10000][金币:0], 【表格】10个副职业修行令
	tSecondProGrowth_Reward["Exchange"][1]["RewardItem"][1]["Attr"] = "0 10" -- WorshipToken*10
	tSecondProGrowth_Reward["Exchange"][1]["RewardEMoney"] = {}
	tSecondProGrowth_Reward["Exchange"][1]["RewardEMoney"]["Value"] = -90 -- 天石, 【需求】扣90天石
	tSecondProGrowth_Reward["Exchange"][1]["RewardEMoney"]["NewEmoneyLog"] = "350	22674"
	tSecondProGrowth_Reward["Exchange"][1]["RewardEffect"] = {}
	tSecondProGrowth_Reward["Exchange"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward["Exchange"][1]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward["Exchange"][2] = {}
	-- ===900赠天石换10修行令
	-- ===索引: tSecondProGrowth_Reward["Exchange"][2]
	-- ===EMoneyLog:350 22675
	-- ===LogStep: 1[1]
	tSecondProGrowth_Reward["Exchange"][2]["LogId"] = 12001589
	tSecondProGrowth_Reward["Exchange"][2]["LogStep"] = "1[1]"
	tSecondProGrowth_Reward["Exchange"][2]["RewardItem"] = {}
	tSecondProGrowth_Reward["Exchange"][2]["RewardItem"][1] = {}
	tSecondProGrowth_Reward["Exchange"][2]["RewardItem"][1]["Id"] = 3313587 -- WorshipToken[3313587][属性:11][叠加:10000][金币:0], 【表格】10个副职业修行令
	tSecondProGrowth_Reward["Exchange"][2]["RewardItem"][1]["Attr"] = "0 10" -- WorshipToken*10
	tSecondProGrowth_Reward["Exchange"][2]["RewardEMoneyMono"] = {}
	tSecondProGrowth_Reward["Exchange"][2]["RewardEMoneyMono"]["Value"] = -900 -- 天石（赠）, 【需求】扣900天石赠
	tSecondProGrowth_Reward["Exchange"][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22675"
	tSecondProGrowth_Reward["Exchange"][2]["RewardEffect"] = {}
	tSecondProGrowth_Reward["Exchange"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward["Exchange"][2]["RewardEffect"]["Effect"] = "angelwing"


	tSecondProGrowth_Reward["Exchange"][3] = {}
	-- ===5000000金币换10修行令
	-- ===索引: tSecondProGrowth_Reward["Exchange"][3]
	-- ===EMoneyLog:350 22676
	-- ===LogStep: 1[1]
	tSecondProGrowth_Reward["Exchange"][3]["LogId"] = 12001589
	tSecondProGrowth_Reward["Exchange"][3]["LogStep"] = "1[1]"
	tSecondProGrowth_Reward["Exchange"][3]["RewardItem"] = {}
	tSecondProGrowth_Reward["Exchange"][3]["RewardItem"][1] = {}
	tSecondProGrowth_Reward["Exchange"][3]["RewardItem"][1]["Id"] = 3313587 -- WorshipToken[3313587][属性:11][叠加:10000][金币:0], 【表格】10个副职业修行令
	tSecondProGrowth_Reward["Exchange"][3]["RewardItem"][1]["Attr"] = "0 10" -- WorshipToken*10
	tSecondProGrowth_Reward["Exchange"][3]["RewardMoney"] = {}
	tSecondProGrowth_Reward["Exchange"][3]["RewardMoney"]["Value"] = -5000000 -- 金币, 【需求】扣500万金币
	tSecondProGrowth_Reward["Exchange"][3]["RewardEMoney"] = {}
	tSecondProGrowth_Reward["Exchange"][3]["RewardEMoney"]["Value"] = 0 -- 天石（赠）, 【需求】0
	tSecondProGrowth_Reward["Exchange"][3]["RewardEMoney"]["NewEmoneyLog"] = "350	22676"
	tSecondProGrowth_Reward["Exchange"][3]["RewardEffect"] = {}
	tSecondProGrowth_Reward["Exchange"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondProGrowth_Reward["Exchange"][3]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
function SecondProGrowth_SendPacket(nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["SecondProGrowth"]["ActTime"]) then
        return
    end
	local nActionId = tSecondProGrowth_Score[nIndex]["Action"]
	Sys_SendMail(nUserId, 0, 0, nActionId, 0, 4, tSecondProGrowth_Text["Mail"]["Sender"], tSecondProGrowth_Text["Mail"]["Title"], tSecondProGrowth_Text["Mail"]["Content"])
end
--送凭证
function SecondProGrowth_SendTicket(nIndex, nNowUserId)
    local nUserId = nNowUserId or Get_UserId()

    if not Sys_ChkFullTime(tActivityTime["SecondProGrowth"]["ActTime"]) then
        return
    end

    local nLimitEvent = tSecondProGrowth_Score[nIndex]["Event"]
    local nLimitData = tSecondProGrowth_Score[nIndex]["Data"]
    local nTimeLimit = tSecondProGrowth_Score[nIndex]["TimeLimit"]
    --获得凭证时间间隔
    if tSecondProGrowth_Score[nIndex]["TimeLimit"] ~= nil then
        if not Task_StcInterval(nLimitEvent, nLimitData, 1, nTimeLimit, nUserId) then
            return
        end
    end
    --达到上限
    local nGetNum = Get_UserStatisticValue(nLimitEvent, nLimitData, nUserId)
    local nLimit = tSecondProGrowth_Score[nIndex]["Limit"]
    if nGetNum >= nLimit then
        return
    end
    --打掩码
    local nRewardNum = tSecondProGrowth_Score[nIndex]["Score"]
    Task_AddStatistic(nLimitEvent, nLimitData, nRewardNum, 1, nUserId)
    Task_SetStcTimestamp(nLimitEvent, nLimitData, 0, nUserId)

    --通过邮件发放
    local nActionId = tSecondProGrowth_Score[nIndex]["Action"]
    Sys_SendMail(nUserId, 0, 0, nActionId, 0, 30, tSecondProGrowth_Text["Mail"]["Sender"], tSecondProGrowth_Text["Mail"]["Title"], tSecondProGrowth_Text["Mail"]["Content"])

end

--打开网页
function SecondProGrowth_OpenWeb(nNpcId)
    local nUserId = Get_UserId()

    User_SendWebDialog(tSecondProGrowth_Data["Web"], nUserId)

end

--上缴凭证 选择职业
function SecondProGrowth_HandTicket(nNpcId, nIndex)
    local nUserId = Get_UserId()

    tNpcGossip[nNpcId]["OptionFunc221"] = string.format(tNpcGossip[nNpcId]["OptionFunc221Old"], nIndex)
    tNpcGossip[nNpcId]["OptionFunc222"] = string.format(tNpcGossip[nNpcId]["OptionFunc222Old"], nIndex)
    tNpcGossip[nNpcId]["OptionFunc223"] = string.format(tNpcGossip[nNpcId]["OptionFunc223Old"], nIndex)

    LinkNpcGossipFunc_New(nNpcId, "2-2")--跳转到确认上交页面

end

--确认上交
function SecondProGrowth_ConfirmHand(nNpcId, nIndex, nNum)
    local nUserId = Get_UserId()
    local nItemId = tSecondProGrowth_Data["Item"]--凭证ID
    local nItemNum = nNum

    if nNum == 10 then--全部上交
    	nItemNum = Get_CountItemType(nItemId, 0)
	if nItemNum == 0 then--没有凭证
		User_TalkChannel2005(tSecondProGrowth_Text["Text"]["NoItem"], nUserId)
		return
	end
    end

    if not Item_ChkMulItem(nItemId, nItemId, nItemNum) then--物品不足
        User_TalkChannel2005(tSecondProGrowth_Text["Text"]["NoItem"], nUserId)
        return
    end

    local tReward = CommonFunc_Copy(tSecondProGrowth_Reward["HandUp"])
    tReward["DeleteItem"][1]["ItemNum"] = nItemNum

    if RewardTemplate_UseItem(tReward, nUserId) then
        local nChooseEvent = tSecondProGrowth_Stc["Choose"][nIndex]["Event"]
        local nChooseData = tSecondProGrowth_Stc["Choose"][nIndex]["Data"]
        Task_AddStatistic(nChooseEvent, nChooseData, nItemNum, 1, nUserId)--记录玩家个人投票
        Task_SetStcTimestamp(nChooseEvent, nChooseData, 0, nUserId)

        --记录emoney log
        local sEmoneyLog = string.format(tSecondProGrowth_Data["EmoneyLog"]["HandUp"], nItemNum)
        Sys_SaveEmoneyBuy(sEmoneyLog, nUserId)

        local nChooseGlobal = tSecondProGrowth_Global["Choose"][nIndex]
        local nNowData = Get_SysDynaGlobalData(nChooseGlobal, 0)
        Sys_SetSynaGlobalData(nChooseGlobal, 0, nNowData + nItemNum)--记录全区投票

    else
        User_TalkChannel2005(tSecondProGrowth_Text["Text"]["NoItem"], nUserId)
        return
    end

end

--个人竞技场 参与奖
function SecondProGrowth_PersonalArenic(nUserId, nFieldNum)
    SecondProGrowth_SendTicket(5, nUserId)
end

--兑换副职业修行令
function SecondProGrowth_Exchange(nNpcId, nIndex)
	local nUserId = Get_UserId()

	tNpcGossip[nNpcId]["Text241"] = string.format(tSecondProGrowth_Text["NPC"][nNpcId]["Text241"], tSecondProGrowth_Text["Text"]["Price"][nIndex])
	tNpcGossip[nNpcId]["Option241"] = string.format(tSecondProGrowth_Text["NPC"][nNpcId]["Option241"], tSecondProGrowth_Text["Text"]["Price"][nIndex])
	tNpcGossip[nNpcId]["OptionFunc241"] = string.format(tNpcGossip[24861]["OptionFunc241Old"], nIndex)

	LinkNpcGossipFunc_New(nNpcId, "2-4")

end

--兑换副职业修行令
function SecondProGrowth_ConfirmExchange(nNpcId, nIndex)
	local nUserId = Get_UserId()

	--钱检测
	local nUserEMoney = Get_UserEMoney(nUserId)
	local nUserEMoneyB = Get_UserMonoEMoney(nUserId)

	if (nIndex == 1) then--90天石
		if (nUserEMoney < tSecondProGrowth_Data["Price"][nIndex]) then
			Sys_MsgBox(tSecondProGrowth_Text["Text"]["NoEnoughCP"], nil, nil, nUserId)
			return
		end 
	elseif (nIndex == 2) then--900天石赠
		if (nUserEMoneyB < tSecondProGrowth_Data["Price"][nIndex]) then
			Sys_MsgBox(tSecondProGrowth_Text["Text"]["NoEnoughCPB"], nil, nil, nUserId)
			return
		end
	elseif (nIndex == 3) then--500万金币
		if not User_CanPutMoney2Bag(-tSecondProGrowth_Data["Price"][nIndex]) then
			Sys_MsgBox(tSecondProGrowth_Text["Text"]["NoEnoughSilver"], nil, nil, nUserId)
			return
		end
	end

	local tReward = CommonFunc_Copy(tSecondProGrowth_Reward["Exchange"][nIndex])

	if not RewardTemplate_UpperLimit(tReward, nUserId) then
		return
	end

	RewardTemplate_UseItem(tReward, nUserId)

end

----------------------------------NPC部分---------------------------------------------

----24861,'大神官'
tNpcFace[2108] = 84
tNpcGossip[24861]= tNpcGossip[24861] or DefaultNpc:new{}
tNpcGossip[24861]["OptionHidden"] = 1
tNpcGossip[24861]["DialogueText"] = tSecondProGrowth_Text["NPC"][24861]
--活动前 1-1
tNpcGossip[24861]["Text1-1"] = {111, 112}
tNpcGossip[24861]["tOption1-1"] = {111}
tNpcGossip[24861]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SecondProGrowth"]["ActTime"])
end
--活动后 1-2
tNpcGossip[24861]["Text1-2"] = {121}
tNpcGossip[24861]["tOption1-2"] = {121, 122}
tNpcGossip[24861]["OptionFunc121"] = "SecondProGrowth_OpenWeb</N>24861"--打开页面
tNpcGossip[24861]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["SecondProGrowth"]["ActTime"])
end
--活动中 1-3
tNpcGossip[24861]["Text1-3"] = {131, 132, 133, 134}
tNpcGossip[24861]["tOption1-3"] = {131, 134, 132, 133}
tNpcGossip[24861]["OptionPoint131"] = "2-1"--上交令牌
tNpcGossip[24861]["OptionFunc132"] = "SecondProGrowth_OpenWeb</N>24861"--打开页面
tNpcGossip[24861]["OptionPoint134"] = "2-3"--兑换令牌
tNpcGossip[24861]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["SecondProGrowth"]["ActTime"])
end
--上交神祇养成令 2-1
tNpcGossip[24861]["Text2-1"] = {211}
tNpcGossip[24861]["tOption2-1"] = {211, 212, 213}
tNpcGossip[24861]["OptionFunc211"] = "SecondProGrowth_HandTicket</N>24861</N>1"--图坦卡蒙
tNpcGossip[24861]["OptionFunc212"] = "SecondProGrowth_HandTicket</N>24861</N>2"--宙斯
tNpcGossip[24861]["OptionFunc213"] = "SecondProGrowth_HandTicket</N>24861</N>3"--花木兰
tNpcGossip[24861]["ChkFunc2-1"] = function()
	return Sys_ChkFullTime(tActivityTime["SecondProGrowth"]["ActTime"])
end
--上交神祇养成令数量 2-2
tNpcGossip[24861]["Text2-2"] = {221}
tNpcGossip[24861]["tOption2-2"] = {221, 222, 223}
tNpcGossip[24861]["OptionFunc221Old"] = "SecondProGrowth_ConfirmHand</N>24861</N>%d</N>1"--确认上交 1
tNpcGossip[24861]["OptionFunc222Old"] = "SecondProGrowth_ConfirmHand</N>24861</N>%d</N>5"--确认上交 5
tNpcGossip[24861]["OptionFunc223Old"] = "SecondProGrowth_ConfirmHand</N>24861</N>%d</N>10"--确认上交 10
tNpcGossip[24861]["ChkFunc2-2"] = function()
	return Sys_ChkFullTime(tActivityTime["SecondProGrowth"]["ActTime"])
end
--换取神祇养成令 2-3
tNpcGossip[24861]["Text2-3"] = {231}
tNpcGossip[24861]["tOption2-3"] = {231, 232, 233}
tNpcGossip[24861]["OptionFunc231"] = "SecondProGrowth_Exchange</N>24861</N>1"--90天石兑换
tNpcGossip[24861]["OptionFunc232"] = "SecondProGrowth_Exchange</N>24861</N>2"--900天石（赠）兑换
tNpcGossip[24861]["OptionFunc233"] = "SecondProGrowth_Exchange</N>24861</N>3"--500万金币兑换
--二次确认 2-4
tNpcGossip[24861]["Text2-4"] = {241}
tNpcGossip[24861]["tOption2-4"] = {241, 242}
tNpcGossip[24861]["OptionFunc241Old"] = "SecondProGrowth_ConfirmExchange</N>24861</N>%d"--确认兑换


---------------------------------物品部分---------------------------------------------
tItem[3313587] = tItem[3313587] or {}
tItem[3313587]["Function"] = function(nItemId, sItemName)
    local nUserId = Get_UserId()
    local nNpcId = tSecondProGrowth_Data["nNpcId"]
    local nItemId = tSecondProGrowth_Data["Item"]

    if not Sys_ChkFullTime(tActivityTime["SecondProGrowth"]["ActTime"]) then--过期全部删除
        local nNum = Get_CountItemType(nItemId, 0)
        Item_DelMulItem(nItemId, nItemId, nNum)
        return
    end

    NpcPosition_PathFind(nNpcId)
end

tItem[3326440] = tItem[3326440] or {}
tItem[3326440]["Function"] = function(nItemId, sItemName)
	local nIndex = (nItemId%3326440)+7
	local nEvent
	local nData
	local nUserId = Get_UserId()
	if nIndex <= 10 then 
		for i=7,10 do 
			nEvent = tSecondProGrowth_Score[i]["Event"]
			nData = tSecondProGrowth_Score[i]["Data"]
			if not Task_StcInterval(nEvent,nData,1,5) then 
				Sys_MsgBox(tSecondProGrowth_Text["Text"]["NoInterval"])
				return 
			end
		end
	else 
		for i=11,14 do 
			nEvent = tSecondProGrowth_Score[i]["Event"]
			nData = tSecondProGrowth_Score[i]["Data"]
			if not Task_StcInterval(nEvent,nData,1,5) then 
				Sys_MsgBox(tSecondProGrowth_Text["Text"]["NoInterval"])
				return 
			end
		end
	end
	if not User_CheckLeftSpace(1) then 
		Sys_MsgBox(tSecondProGrowth_Text["Text"]["NoSpace"])
		User_TalkChannel2005(tSecondProGrowth_Text["Text"]["NoSpace"])
		return 
	end
	local nGetNum = Get_UserStatisticValue(nEvent,nData)
	
	local nLimit = tSecondProGrowth_Score[nIndex]["Limit"]
    if nGetNum >= nLimit then
        return
    end
	local nRewardNum = tSecondProGrowth_Score[nIndex]["Score"]
	nEvent = tSecondProGrowth_Score[nIndex]["Event"]
	nData = tSecondProGrowth_Score[nIndex]["Data"]
    Task_AddStatistic(nEvent, nData, nRewardNum, 1, nUserId)
    Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	RewardTemplate_UseItemAndMsg(tSecondProGrowth_Reward[nItemId])
end

tItem[3326441] = tItem[3326440]
tItem[3326442] = tItem[3326440]
tItem[3326443] = tItem[3326440]

tItem[3326444] = tItem[3326440]
tItem[3326445] = tItem[3326440]
tItem[3326446] = tItem[3326440]
tItem[3326447] = tItem[3326440]



---------------------------排位赛----------------------------------
-- 个人排位赛：	参赛场
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"], SecondProGrowth_PersonalArenic)