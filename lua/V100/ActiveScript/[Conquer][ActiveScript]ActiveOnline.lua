------------------------------------------------------------------------------------
--Name：           190416[英文征服][活动脚本]上线活跃有好礼（5.7-5.20）
--Creator:      杨艳
--Created:     2019/04/19
------------------------------------------------------------------------------------
--任务需求：

-- 活动时间：活动时间：5.07-5.20

-- 活动说明：
-- 活动期间，80级以上玩家上线后根据其等级，可以获得一个对应的礼包，每日可免费开启一次，共可以开启10天。礼包不可升级。
-- 活动期间提升至2转或者已经二转以上玩家每日可以多获得1次额外领取机会，所以每日最多2次机会
--命名规范： ActiveOnline_

--掩码说明

--logid: 12001377

-----------------------------------------------------------------------------------
--数据部分
local tActiveOnline_Data = {}
	--等级
	tActiveOnline_Data["Level"] = {}
	tActiveOnline_Data["Mete"] = {}
	
	tActiveOnline_Data["Level"][1] = 80
	tActiveOnline_Data["Mete"][1] = 0
	
	tActiveOnline_Data["Level"][2] = 15
	tActiveOnline_Data["Mete"][2] = 1
	
	tActiveOnline_Data["Level"][3] = 15
	tActiveOnline_Data["Mete"][3] = 2

	--礼包种类
	-- 3321132,'每日活跃惊喜礼包
	-- 3321133,'每日活跃嘉奖礼包
	-- 3321134,'每日活跃豪华礼包
	tActiveOnline_Data["PackageType"] = {}
	tActiveOnline_Data["PackageType"][1] = 3321132
	tActiveOnline_Data["PackageType"][2] = 3321133
	tActiveOnline_Data["PackageType"][3] = 3321134
	
	-- 全服限量
	tActiveOnline_Data["GlobalId"] = {} 
	tActiveOnline_Data["GlobalId"][1] = 53360
	
--掩码
local tActiveOnline_Stc = {}
	tActiveOnline_Stc["EventType"] = {}
	tActiveOnline_Stc["DataType"] = {}
	
	--上线给礼包掩码 data 记录获得的礼包id
	tActiveOnline_Stc["EventType"][1] = 194
	tActiveOnline_Stc["DataType"][1] = 13
	
	--记录玩家取礼包奖励
	tActiveOnline_Stc["EventType"][2] = 194
	tActiveOnline_Stc["DataType"][2] = 14
	
	-- 记录活动期间打开礼包的次数  防刷  礼包最多开启20次
	tActiveOnline_Stc["EventType"][3] = 194
	tActiveOnline_Stc["DataType"][3] = 15
	
	-- 记录开启次数 总共10次 第九次开启删礼包给奖励（测试点，玩家2转以上每天打开两次记录掩码值）
	tActiveOnline_Stc["EventType"][4] = 194
	tActiveOnline_Stc["DataType"][4] = 16

--奖励	
local tActiveOnline_Reward = {}
--给礼包
	tActiveOnline_Reward[3321132] = {}
	tActiveOnline_Reward[3321132]["RewardItem"] = {}
	tActiveOnline_Reward[3321132]["RewardItem"][1] = {}
	tActiveOnline_Reward[3321132]["RewardItem"][1]["Id"] = 3321132
	tActiveOnline_Reward[3321132]["RewardItem"][1]["Attr"] = "0 1"
	tActiveOnline_Reward[3321132]["LogId"] = 12001377
	
	tActiveOnline_Reward[3321133] = {}
	tActiveOnline_Reward[3321133]["RewardItem"] = {}
	tActiveOnline_Reward[3321133]["RewardItem"][1] = {}
	tActiveOnline_Reward[3321133]["RewardItem"][1]["Id"] = 3321133
	tActiveOnline_Reward[3321133]["RewardItem"][1]["Attr"] = "0 1"
	tActiveOnline_Reward[3321133]["LogId"] = 12001377
	
	tActiveOnline_Reward[3321134] = {}
	tActiveOnline_Reward[3321134]["RewardItem"] = {}
	tActiveOnline_Reward[3321134]["RewardItem"][1] = {}
	tActiveOnline_Reward[3321134]["RewardItem"][1]["Id"] = 3321134
	tActiveOnline_Reward[3321134]["RewardItem"][1]["Attr"] = "0 1"
	tActiveOnline_Reward[3321134]["LogId"] = 12001377
	
	--必给奖励
	-- 经验球赠*3-- 【必给】
local tActiveOnline_MustReward = {}
	tActiveOnline_MustReward[3321132] = {}
	tActiveOnline_MustReward[3321132]["RewardItem"] = {}
	tActiveOnline_MustReward[3321132]["RewardItem"][1] = {}
	tActiveOnline_MustReward[3321132]["RewardItem"][1]["Id"] = 723911 -- 【库】ExpBall(Bound)[属性:3]【表格】经验球赠*3
	tActiveOnline_MustReward[3321132]["RewardItem"][1]["Attr"] = "0 3" -- ExpBall(Bound)*3
	tActiveOnline_MustReward[3321132]["LogId"] = 12001377
	
	-- 30赠点-- 【必给】
	tActiveOnline_MustReward[3321133] = {}
	tActiveOnline_MustReward[3321133]["RewardItem"] = {}
	tActiveOnline_MustReward[3321133]["RewardItem"][1] = {}
	tActiveOnline_MustReward[3321133]["RewardItem"][1]["Id"] = 3301187 -- 【库】30CPsPack(B)[属性:9]【表格】30赠点
	tActiveOnline_MustReward[3321133]["RewardItem"][1]["Attr"] = "0 1" -- 30CPsPack(B)*1
	tActiveOnline_MustReward[3321133]["LogId"] = 12001377
	
	-- 50赠点-- 【必给】
	tActiveOnline_MustReward[3321134] = {}
	tActiveOnline_MustReward[3321134]["RewardItem"] = {}
	tActiveOnline_MustReward[3321134]["RewardItem"][1] = {}
	tActiveOnline_MustReward[3321134]["RewardItem"][1]["Id"] = 3311738 -- 【库】50CPs(B)Bag[属性:9]【表格】50赠点
	tActiveOnline_MustReward[3321134]["RewardItem"][1]["Attr"] = "0 1" -- 50CPs(B)Bag*1
	tActiveOnline_MustReward[3321134]["LogId"] = 12001377


local tActiveOnline_RewardRun = {}
	-- ===0转80级每日活跃礼包
	-- ===索引: 3321132
	-- ===删除: 3321132,1
	-- ===
	tActiveOnline_RewardRun[3321132] = {}
	tActiveOnline_RewardRun[3321132]["ItemChanceSum"] = 10000
	tActiveOnline_RewardRun[3321132]["LogId"] = 12001377
	-- 50点赠品天石 - 15.00%
	tActiveOnline_RewardRun[3321132][1] = {}
	tActiveOnline_RewardRun[3321132][1]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321132][1]["ItemChance"] = 1500
	tActiveOnline_RewardRun[3321132][1]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321132][1]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321132][1]["RewardItem"][1]["Id"] = 3311738 -- 【库】50CPs(B)Bag[属性:9]【表格】50点赠品天石
	tActiveOnline_RewardRun[3321132][1]["RewardItem"][1]["Attr"] = "0 1" -- 50CPs(B)Bag*1
	tActiveOnline_RewardRun[3321132][1]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321132][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321132][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹精粹赠*2 - 40.00%
	tActiveOnline_RewardRun[3321132][2] = {}
	tActiveOnline_RewardRun[3321132][2]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321132][2]["ItemChance"] = 4000
	tActiveOnline_RewardRun[3321132][2]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321132][2]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321132][2]["RewardItem"][1]["Id"] = 3309000 -- 【库】YellowRuneEssence(B)*2[属性:9]【表格】黄色神纹精粹赠*2
	tActiveOnline_RewardRun[3321132][2]["RewardItem"][1]["Attr"] = "0 1" -- YellowRuneEssence(B)*2*1
	tActiveOnline_RewardRun[3321132][2]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321132][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321132][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2赠 - 20.00%
	tActiveOnline_RewardRun[3321132][3] = {}
	tActiveOnline_RewardRun[3321132][3]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321132][3]["ItemChance"] = 2000
	tActiveOnline_RewardRun[3321132][3]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321132][3]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321132][3]["RewardItem"][1]["Id"] = 3305436 -- 【库】Bound+2StonePack[属性:9]【表格】赤练石+2赠
	tActiveOnline_RewardRun[3321132][3]["RewardItem"][1]["Attr"] = "0 1" -- Bound+2StonePack*1
	tActiveOnline_RewardRun[3321132][3]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321132][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321132][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷赠*2 - 8.00%
	tActiveOnline_RewardRun[3321132][4] = {}
	tActiveOnline_RewardRun[3321132][4]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321132][4]["ItemChance"] = 800
	tActiveOnline_RewardRun[3321132][4]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321132][4]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321132][4]["RewardItem"][1]["Id"] = 3301827 -- 【库】MeteorScroll(B)[属性:9]【表格】流星卷赠*2
	tActiveOnline_RewardRun[3321132][4]["RewardItem"][1]["Attr"] = "0 2" -- MeteorScroll(B)*2
	tActiveOnline_RewardRun[3321132][4]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321132][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321132][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tActiveOnline_RewardRun[3321132][4]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tActiveOnline_RewardRun[3321132][4]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tActiveOnline_RewardRun[3321132][4]["RewardData"] = 1 -- 每天限制的次数
-- 	tActiveOnline_RewardRun[3321132][4]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tActiveOnline_RewardRun[3321132][4]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tActiveOnline_RewardRun[3321132][4]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tActiveOnline_RewardRun[3321132][4]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tActiveOnline_RewardRun[3321132][4]["GlobalId"] = 53360 -- 需手动配：[cq_dyna_global_data]表id
	tActiveOnline_RewardRun[3321132][4]["Pos"] = 0 -- 全服限量data位
	tActiveOnline_RewardRun[3321132][4]["MaxData"] = 1000 -- 全服限量总数
	tActiveOnline_RewardRun[3321132][4]["FullIndex"] = 3 -- 全服限量超出给其他【下标】奖励

	-- 龙珠赠 - 15.00%
	tActiveOnline_RewardRun[3321132][5] = {}
	tActiveOnline_RewardRun[3321132][5]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321132][5]["ItemChance"] = 1500
	tActiveOnline_RewardRun[3321132][5]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321132][5]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321132][5]["RewardItem"][1]["Id"] = 3301409 -- 【库】DragonBallPack(B)[属性:9]【表格】龙珠赠
	tActiveOnline_RewardRun[3321132][5]["RewardItem"][1]["Attr"] = "0 1" -- DragonBallPack(B)*1
	tActiveOnline_RewardRun[3321132][5]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321132][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321132][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 100赠点 - 2.00%
	tActiveOnline_RewardRun[3321132][6] = {}
	tActiveOnline_RewardRun[3321132][6]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321132][6]["ItemChance"] = 200
	tActiveOnline_RewardRun[3321132][6]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321132][6]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321132][6]["RewardItem"][1]["Id"] = 3311739 -- 【库】100CPs(B)Bag[属性:9]【表格】100赠点
	tActiveOnline_RewardRun[3321132][6]["RewardItem"][1]["Attr"] = "0 1" -- 100CPs(B)Bag*1
	tActiveOnline_RewardRun[3321132][6]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321132][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321132][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tActiveOnline_RewardRun[3321132][6]["GlobalId"] = 53360 -- 需手动配：[cq_dyna_global_data]表id
	tActiveOnline_RewardRun[3321132][6]["Pos"] = 1 -- 全服限量data位
	tActiveOnline_RewardRun[3321132][6]["MaxData"] = 100 -- 全服限量总数
	tActiveOnline_RewardRun[3321132][6]["FullIndex"] = 3 -- 全服限量超出给其他【下标】奖励
	
	
	-- ===一转每日活跃礼包
	-- ===索引: 3321133
	-- ===删除: 3321133,1
	-- ===
	tActiveOnline_RewardRun[3321133] = {}
	tActiveOnline_RewardRun[3321133]["ItemChanceSum"] = 10000
	tActiveOnline_RewardRun[3321133]["LogId"] = 12001377
	-- 流星卷赠*2 - 40.00%
	tActiveOnline_RewardRun[3321133][1] = {}
	tActiveOnline_RewardRun[3321133][1]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321133][1]["ItemChance"] = 4000
	tActiveOnline_RewardRun[3321133][1]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321133][1]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321133][1]["RewardItem"][1]["Id"] = 3301827 -- 【库】MeteorScroll(B)[属性:9]【表格】流星卷赠*2
	tActiveOnline_RewardRun[3321133][1]["RewardItem"][1]["Attr"] = "0 2" -- MeteorScroll(B)*2
	tActiveOnline_RewardRun[3321133][1]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321133][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321133][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 全服cq_dyna_global_data存储表
	tActiveOnline_RewardRun[3321133][1]["GlobalId"] = 53360 -- 需手动配：[cq_dyna_global_data]表id
	tActiveOnline_RewardRun[3321133][1]["Pos"] = 2 -- 全服限量data位
	tActiveOnline_RewardRun[3321133][1]["MaxData"] = 5000 -- 全服限量总数
	tActiveOnline_RewardRun[3321133][1]["FullIndex"] = 2 -- 全服限量超出给其他【下标】奖励
-- 	tActiveOnline_RewardRun[3321133][1]["OtherPos"] = 1 -- 全服单日限量data位
-- 	tActiveOnline_RewardRun[3321133][1]["OtherMaxData"] = 2 -- 全服单日限量总数
-- 	tActiveOnline_RewardRun[3321133][1]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励
	-- 赤练石+2赠 - 20.00%
	tActiveOnline_RewardRun[3321133][2] = {}
	tActiveOnline_RewardRun[3321133][2]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321133][2]["ItemChance"] = 2000
	tActiveOnline_RewardRun[3321133][2]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321133][2]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321133][2]["RewardItem"][1]["Id"] = 3305436 -- 【库】Bound+2StonePack[属性:9]【表格】赤练石+2赠
	tActiveOnline_RewardRun[3321133][2]["RewardItem"][1]["Attr"] = "0 1" -- Bound+2StonePack*1
	tActiveOnline_RewardRun[3321133][2]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321133][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321133][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*4 - 15.00%
	tActiveOnline_RewardRun[3321133][3] = {}
	tActiveOnline_RewardRun[3321133][3]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321133][3]["ItemChance"] = 1500
	tActiveOnline_RewardRun[3321133][3]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321133][3]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321133][3]["RewardItem"][1]["Id"] = 3304569 -- 【库】4TwilightStarStonesBox[属性:11]【表格】微光星陨石*4
	tActiveOnline_RewardRun[3321133][3]["RewardItem"][1]["Attr"] = "0 1" -- 4TwilightStarStonesBox*1
	tActiveOnline_RewardRun[3321133][3]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321133][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321133][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠赠 - 15.00%
	tActiveOnline_RewardRun[3321133][4] = {}
	tActiveOnline_RewardRun[3321133][4]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321133][4]["ItemChance"] = 1500
	tActiveOnline_RewardRun[3321133][4]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321133][4]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321133][4]["RewardItem"][1]["Id"] = 3301409 -- 【库】DragonBallPack(B)[属性:9]【表格】龙珠赠
	tActiveOnline_RewardRun[3321133][4]["RewardItem"][1]["Attr"] = "0 1" -- DragonBallPack(B)*1
	tActiveOnline_RewardRun[3321133][4]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321133][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321133][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*1 - 8.00%
	tActiveOnline_RewardRun[3321133][5] = {}
	tActiveOnline_RewardRun[3321133][5]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321133][5]["ItemChance"] = 800
	tActiveOnline_RewardRun[3321133][5]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321133][5]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321133][5]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石*1
	tActiveOnline_RewardRun[3321133][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tActiveOnline_RewardRun[3321133][5]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321133][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321133][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 150赠点 - 2.00%
	tActiveOnline_RewardRun[3321133][6] = {}
	tActiveOnline_RewardRun[3321133][6]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321133][6]["ItemChance"] = 200
	tActiveOnline_RewardRun[3321133][6]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321133][6]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321133][6]["RewardItem"][1]["Id"] = 3301191 -- 【库】150CPsPack(B)[属性:9]【表格】150赠点
	tActiveOnline_RewardRun[3321133][6]["RewardItem"][1]["Attr"] = "0 1" -- 150CPsPack(B)*1
	tActiveOnline_RewardRun[3321133][6]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321133][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321133][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tActiveOnline_RewardRun[3321133][6]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tActiveOnline_RewardRun[3321133][6]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tActiveOnline_RewardRun[3321133][6]["RewardData"] = 1 -- 每天限制的次数
-- 	tActiveOnline_RewardRun[3321133][6]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tActiveOnline_RewardRun[3321133][6]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tActiveOnline_RewardRun[3321133][6]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tActiveOnline_RewardRun[3321133][6]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tActiveOnline_RewardRun[3321133][6]["GlobalId"] = 53360 -- 需手动配：[cq_dyna_global_data]表id
	tActiveOnline_RewardRun[3321133][6]["Pos"] = 3 -- 全服限量data位
	tActiveOnline_RewardRun[3321133][6]["MaxData"] = 50 -- 全服限量总数
	tActiveOnline_RewardRun[3321133][6]["FullIndex"] = 2 -- 全服限量超出给其他【下标】奖励
	-- tActiveOnline_RewardRun[3321133][6]["OtherPos"] = 3 -- 全服单日限量data位
	-- tActiveOnline_RewardRun[3321133][6]["OtherMaxData"] = 50 -- 全服单日限量总数
	-- tActiveOnline_RewardRun[3321133][6]["OtherFullIndex"] = 2 -- 全服单日限量超出给其他【下标】奖励
	
	
	-- ===二转每日活跃礼包
	-- ===索引: 3321134
	-- ===删除: 3321134,1
	-- ===
	tActiveOnline_RewardRun[3321134] = {}
	tActiveOnline_RewardRun[3321134]["ItemChanceSum"] = 10000
	tActiveOnline_RewardRun[3321134]["LogId"] = 12001377
	-- 流星卷赠*2 - 40.00%
	tActiveOnline_RewardRun[3321134][1] = {}
	tActiveOnline_RewardRun[3321134][1]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321134][1]["ItemChance"] = 4000
	tActiveOnline_RewardRun[3321134][1]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321134][1]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321134][1]["RewardItem"][1]["Id"] = 3301827 -- 【库】MeteorScroll(B)[属性:9]【表格】流星卷赠*2
	tActiveOnline_RewardRun[3321134][1]["RewardItem"][1]["Attr"] = "0 2" -- MeteorScroll(B)*2
	tActiveOnline_RewardRun[3321134][1]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321134][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321134][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tActiveOnline_RewardRun[3321134][1]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tActiveOnline_RewardRun[3321134][1]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tActiveOnline_RewardRun[3321134][1]["RewardData"] = 1 -- 每天限制的次数
-- 	tActiveOnline_RewardRun[3321134][1]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tActiveOnline_RewardRun[3321134][1]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tActiveOnline_RewardRun[3321134][1]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tActiveOnline_RewardRun[3321134][1]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tActiveOnline_RewardRun[3321134][1]["GlobalId"] = 53360 -- 需手动配：[cq_dyna_global_data]表id
	tActiveOnline_RewardRun[3321134][1]["Pos"] = 4 -- 全服限量data位
	tActiveOnline_RewardRun[3321134][1]["MaxData"] = 5000 -- 全服限量总数
	tActiveOnline_RewardRun[3321134][1]["FullIndex"] = 2 -- 全服限量超出给其他【下标】奖励
	-- tActiveOnline_RewardRun[3321134][1]["OtherPos"] = 4 -- 全服单日限量data位
	-- tActiveOnline_RewardRun[3321134][1]["OtherMaxData"] = 5000 -- 全服单日限量总数
	-- tActiveOnline_RewardRun[3321134][1]["OtherFullIndex"] = 2 -- 全服单日限量超出给其他【下标】奖励
	-- 赤炼石+3赠 - 20.00%
	tActiveOnline_RewardRun[3321134][2] = {}
	tActiveOnline_RewardRun[3321134][2]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321134][2]["ItemChance"] = 2000
	tActiveOnline_RewardRun[3321134][2]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321134][2]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321134][2]["RewardItem"][1]["Id"] = 3319284 -- 【库】+3StonePack(B)[属性:9]【表格】赤炼石+3赠
	tActiveOnline_RewardRun[3321134][2]["RewardItem"][1]["Attr"] = "0 1" -- +3StonePack(B)*1
	tActiveOnline_RewardRun[3321134][2]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321134][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321134][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 大爆丹*4赠 - 15.00%
	tActiveOnline_RewardRun[3321134][3] = {}
	tActiveOnline_RewardRun[3321134][3]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321134][3]["ItemChance"] = 1500
	tActiveOnline_RewardRun[3321134][3]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321134][3]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321134][3]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]【表格】大爆丹*4赠
	tActiveOnline_RewardRun[3321134][3]["RewardItem"][1]["Attr"] = "0 4 3" -- SeniorTrainingPill(赠)*4
	tActiveOnline_RewardRun[3321134][3]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321134][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321134][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠赠 - 15.00%
	tActiveOnline_RewardRun[3321134][4] = {}
	tActiveOnline_RewardRun[3321134][4]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321134][4]["ItemChance"] = 1500
	tActiveOnline_RewardRun[3321134][4]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321134][4]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321134][4]["RewardItem"][1]["Id"] = 3301409 -- 【库】DragonBallPack(B)[属性:9]【表格】龙珠赠
	tActiveOnline_RewardRun[3321134][4]["RewardItem"][1]["Attr"] = "0 1" -- DragonBallPack(B)*1
	tActiveOnline_RewardRun[3321134][4]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321134][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321134][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*1 - 8.00%
	tActiveOnline_RewardRun[3321134][5] = {}
	tActiveOnline_RewardRun[3321134][5]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321134][5]["ItemChance"] = 800
	tActiveOnline_RewardRun[3321134][5]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321134][5]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321134][5]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石*1
	tActiveOnline_RewardRun[3321134][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tActiveOnline_RewardRun[3321134][5]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321134][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321134][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 300赠点 - 2.00%
	tActiveOnline_RewardRun[3321134][6] = {}
	tActiveOnline_RewardRun[3321134][6]["RandomItemChanceType"] = 2
	tActiveOnline_RewardRun[3321134][6]["ItemChance"] = 200
	tActiveOnline_RewardRun[3321134][6]["RewardItem"] = {}
	tActiveOnline_RewardRun[3321134][6]["RewardItem"][1] = {}
	tActiveOnline_RewardRun[3321134][6]["RewardItem"][1]["Id"] = 3300794 -- 【库】300CP(B)Pack[属性:9]【表格】300赠点
	tActiveOnline_RewardRun[3321134][6]["RewardItem"][1]["Attr"] = "0 1" -- 300CP(B)Pack*1
	tActiveOnline_RewardRun[3321134][6]["RewardEffect"] = {}
	tActiveOnline_RewardRun[3321134][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActiveOnline_RewardRun[3321134][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tActiveOnline_RewardRun[3321134][6]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tActiveOnline_RewardRun[3321134][6]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tActiveOnline_RewardRun[3321134][6]["RewardData"] = 1 -- 每天限制的次数
-- 	tActiveOnline_RewardRun[3321134][6]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tActiveOnline_RewardRun[3321134][6]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tActiveOnline_RewardRun[3321134][6]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tActiveOnline_RewardRun[3321134][6]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tActiveOnline_RewardRun[3321134][6]["GlobalId"] = 53360 -- 需手动配：[cq_dyna_global_data]表id
	tActiveOnline_RewardRun[3321134][6]["Pos"] = 5 -- 全服限量data位
	tActiveOnline_RewardRun[3321134][6]["MaxData"] = 10 -- 全服限量总数
	tActiveOnline_RewardRun[3321134][6]["FullIndex"] = 2 -- 全服限量超出给其他【下标】奖励
	-- tActiveOnline_RewardRun[3321134][6]["OtherPos"] = 5 -- 全服单日限量data位
	-- tActiveOnline_RewardRun[3321134][6]["OtherMaxData"] = 10 -- 全服单日限量总数
	-- tActiveOnline_RewardRun[3321134][6]["OtherFullIndex"] = 2 -- 全服单日限量超出给其他【下标】奖励
	


--log表
local tActiveOnline_Log = {}
	tActiveOnline_Log["EmoneyLog"] = {}
	tActiveOnline_Log["EmoneyLog"][3321132] = "350	22142	0	0	1	"
	tActiveOnline_Log["EmoneyLog"][3321133] = "350	22143	0	0	1	"
	tActiveOnline_Log["EmoneyLog"][3321134] = "350	22144	0	0	1	"
	
	tActiveOnline_Log["DelItem"] = "0,0,%d,1,12001377,3,0,0" --删除任务物品	

----------------------------------逻辑部分-------------------------------------------
--上线自检等级给礼包
function ActiveOnline_OnLine()

	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ActiveOnline"]["ActTime"]) then
		return
	end
	-- 默认为80级以下
	local nFlag = tActiveOnline_Data["PackageType"][1]
	if not User_JudgeLevelAndMetempsychosis(tActiveOnline_Data["Level"][1],tActiveOnline_Data["Mete"][1],nUserId) then 
		return
	end 
	
	--等级判断
	if User_JudgeLevelAndMetempsychosis(tActiveOnline_Data["Level"][2],tActiveOnline_Data["Mete"][2],nUserId) and not User_JudgeLevelAndMetempsychosis(tActiveOnline_Data["Level"][3],tActiveOnline_Data["Mete"][3],nUserId) then 
		nFlag = tActiveOnline_Data["PackageType"][2]
	elseif User_JudgeLevelAndMetempsychosis(tActiveOnline_Data["Level"][3],tActiveOnline_Data["Mete"][3],nUserId) then 
		nFlag = tActiveOnline_Data["PackageType"][3]
	end
	
	--掩码判断
	local nEvent = tActiveOnline_Stc["EventType"][1] 
	local nType = tActiveOnline_Stc["DataType"][1]

	if Task_ChkStcValue(nEvent,nType,">",0) then
		return
	end
	
	--背包空间判断
	if not RewardTemplate_CheckSpace(tActiveOnline_Reward[nFlag],nUserId) then 
		User_TalkChannel2005(tActiveOnline_Text["Sys"]["LoginBagFull"])
		return
	end 

	--置掩码 给礼包
	Task_SetStatistic(nEvent,nType,nFlag,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	Sys_SaveEmoneyBuy(tActiveOnline_Log["EmoneyLog"][nFlag])
	RewardTemplate_UseItemAndMsg(tActiveOnline_Reward[nFlag])
	User_TalkChannel2005(tActiveOnline_Text["Sys"]["Online"][nFlag] )
end 
--判断玩家能领取礼包几次
function ActiveOnline_GetOpenTimes()
	local nTimes = 1
	--判断等级
	if  User_JudgeLevelAndMetempsychosis(tActiveOnline_Data["Level"][3],tActiveOnline_Data["Mete"][3],nUserId) then 
		nTimes = 2
	end
	return nTimes
	
end 

--隔天重置掩码
function ActiveOnline_ReSetStc()
	local nEvent = tActiveOnline_Stc["EventType"][2] 
	local nType = tActiveOnline_Stc["DataType"][2]
	
	local nEvent_4 = tActiveOnline_Stc["EventType"][4] 
	local nType_4 = tActiveOnline_Stc["DataType"][4]
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
		-- Task_SetStatistic(nEvent_4,nType_4,0,1,nUserId)
		Task_SetStcTimestamp(nEvent_4,nType_4,0,nUserId)
	end

end 


--领取奖励
function ActiveOnline_OpenPack(nItemId)

	local nUserId = Get_UserId()
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tActiveOnline_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tDailyPackge_Text["OverTime"])
			end
		end	
		return
	end
	--80级以下不能打开
	if not User_JudgeLevelAndMetempsychosis(tActiveOnline_Data["Level"][1],tActiveOnline_Data["Mete"][1],nUserId) then 
		return
	end 
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	ActiveOnline_ReSetStc()
	 
	local nEvent = tActiveOnline_Stc["EventType"][2] 
	local nType = tActiveOnline_Stc["DataType"][2]
	local nTimes =  Get_UserStatisticValue(nEvent,nType)
	
	local nEventTimes = tActiveOnline_Stc["EventType"][3] 
	local nTypeTimes = tActiveOnline_Stc["DataType"][3]
	local nTotalTimes =  Get_UserStatisticValue(nEventTimes,nTypeTimes)
	
	local nEvent_4 = tActiveOnline_Stc["EventType"][4] 
	local nType_4 = tActiveOnline_Stc["DataType"][4]
	local nData_4 =  Get_UserStatisticValue(nEvent_4,nType_4)
	if nData_4 >= 10 then 
		if Item_ChkItem(nItemId) then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tActiveOnline_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tActiveOnline_Text["Sys"]["NoTimes"])
			end
		end	
		return
	end 
	
	if nTotalTimes >= 20 then 
		if Item_ChkItem(nItemId) then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tActiveOnline_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tActiveOnline_Text["Sys"]["NoTimes"])
			end
		end	
		return
	end 
	
	local nAllTimes = ActiveOnline_GetOpenTimes()
	if nTimes >= nAllTimes then
		User_TalkChannel2005(tActiveOnline_Text["Sys"]["TimesUsed"])
		return
	end 
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tActiveOnline_MustReward[nItemId],nUserId) 
	local nSpaceRun = RewardTemplate_GetRandomSpace(tActiveOnline_RewardRun,nItemId,nUserId)
	local nSumSpace = nSpace + nSpaceRun
	if not User_CheckLeftSpace(nSumSpace,nUserId) then
		local sSay = string.format(tActiveOnline_Text["Sys"]["SpaceLimit"],nSumSpace)
		User_TalkChannel2005(sSay)
		return
	end
	if nTimes == nAllTimes -1 then 
		if nData_4 == 9 then 
			if Item_ChkItem(nItemId) then
				if Item_DelAllItemByType(nItemId) then
					local sDelItemLog = string.format(tActiveOnline_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					User_TalkChannel2005(tActiveOnline_Text["Sys"]["TenthTimes"])
				end
			end	
		end 
	end
	--置掩码
	Task_AddStatistic(nEventTimes,nTypeTimes,1,1,nUserId)
	Task_SetStcTimestamp(nEventTimes,nTypeTimes,0,nUserId)
	
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	if nTimes == nAllTimes -1 then 
		Task_AddStatistic(nEvent_4,nType_4,1,1,nUserId)
		Task_SetStcTimestamp(nEvent_4,nType_4,0,nUserId)
	end 
	
	RewardTemplate_UseItemAndMsg(tActiveOnline_MustReward[nItemId])
	RewardTemplate_NewRandom(tActiveOnline_RewardRun,nItemId,nUserId)
end

--物品无对白检测时间
function ActiveOnline_CheckTime(nItemId)

	if  CommonFunc_GetBeforeActivityTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tActiveOnline_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tDailyPackge_Text["OverTime"])
			end
		end	
		return 
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--时间自检重置全服限量
function ActiveOnline_ResetReward()
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		return
	end
	
	local nGlobalId = tActiveOnline_Data["GlobalId"][1]
	local sDataStr1 = Get_SysDynaGlobalDataStr1(nGlobalId)
	
	if sDataStr1 == "" or sDataStr1 == nil or sDataStr1 == "0" then 
		
		Sys_SetSynaGlobalData1(nGlobalId,0)

		Sys_SetSynaGlobalData3(nGlobalId,0)

		Sys_SetSynaGlobalData5(nGlobalId,0)
		--设置标识位
		Sys_SetSynaGlobalDataStr1(nGlobalId,"1")
	end

end

function ActiveOnline_ResetReward2()
	
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["ActiveOnline"]["ItemUseTime"]) then
		return
	end
	local nGlobalId = tActiveOnline_Data["GlobalId"][1]
	local sDataStr1 = Get_SysDynaGlobalDataStr1(nGlobalId)
	
	if sDataStr1 == "1" then
		Sys_SetSynaGlobalDataStr1(nGlobalId,"0")
	end
	
end
----------------------------------物品部分---------------------------------------------
-- 3321132,'每日活跃惊喜礼包
-- 3321133,'每日活跃嘉奖礼包	1031
-- 3321134,'每日活跃豪华礼包	1032

tItem[3321132] = tItem[3321132] or {}
tItem[3321132]["Function"] = function(nItemId,sItemName)
	ActiveOnline_CheckTime(nItemId)
end

tItemFace[3321132] = 424
tItem[3321132]["Text1-1"] = {111}
tItem[3321132]["Text111"] = tActiveOnline_Text[3321132]["Text111"]
tItem[3321132]["ChkFunc1-1"] = function ()
	ActiveOnline_ReSetStc()
	local nEvent = tActiveOnline_Stc["EventType"][2]
	local nType = tActiveOnline_Stc["DataType"][2]
	
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	local nAllTimes = ActiveOnline_GetOpenTimes()
	local nLeftTimes = nAllTimes - nTimes
	if nLeftTimes < 0 then 
		nLeftTimes = 0
	end 
	
	tItem[3321132]["Option111"] = string.format(tActiveOnline_Text[3321132]["Option111"],nLeftTimes)
	return true
end

tItem[3321132]["tOption1-1"] = {111, 112}
tItem[3321132]["Option111"] = tActiveOnline_Text[3321132]["Option111"]
tItem[3321132]["Option112"] = tActiveOnline_Text[3321132]["Option112"]
tItem[3321132]["OptionFunc111"] = "ActiveOnline_OpenPack</N>3321132"

tItemFace[3321133] = 1031
tItem[3321133] = tItem[3321133] or {}
tItem[3321133]["Function"] = function(nItemId,sItemName)
	ActiveOnline_CheckTime(nItemId)
end

tItem[3321133]["Text1-1"] = {111}
tItem[3321133]["Text111"] = tActiveOnline_Text[3321133]["Text111"]

tItem[3321133]["ChkFunc1-1"] = function ()
	ActiveOnline_ReSetStc()
	local nEvent = tActiveOnline_Stc["EventType"][2]
	local nType = tActiveOnline_Stc["DataType"][2]
	
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	local nAllTimes = ActiveOnline_GetOpenTimes()
	local nLeftTimes = nAllTimes - nTimes
	if nLeftTimes < 0 then 
		nLeftTimes = 0
	end 
	
	tItem[3321133]["Option111"] = string.format(tActiveOnline_Text[3321133]["Option111"],nLeftTimes)
	return true
end

tItem[3321133]["tOption1-1"] = {111, 112}
tItem[3321133]["Option111"] = tActiveOnline_Text[3321133]["Option111"]
tItem[3321133]["Option112"] = tActiveOnline_Text[3321133]["Option112"]
tItem[3321133]["OptionFunc111"] = "ActiveOnline_OpenPack</N>3321133"


tItemFace[3321134] = 1032
tItem[3321134] = tItem[3321134] or {}
tItem[3321134]["Function"] = function(nItemId,sItemName)
	ActiveOnline_CheckTime(nItemId)
end

tItem[3321134]["Text1-1"] = {111}
tItem[3321134]["Text111"] = tActiveOnline_Text[3321134]["Text111"]

tItem[3321134]["ChkFunc1-1"] = function ()
	ActiveOnline_ReSetStc()
	local nEvent = tActiveOnline_Stc["EventType"][2]
	local nType = tActiveOnline_Stc["DataType"][2]
	
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	local nAllTimes = ActiveOnline_GetOpenTimes()
	local nLeftTimes = nAllTimes - nTimes
	if nLeftTimes < 0 then 
		nLeftTimes = 0
	end 
	
	tItem[3321134]["Option111"] = string.format(tActiveOnline_Text[3321134]["Option111"],nLeftTimes)
	return true
end

tItem[3321134]["tOption1-1"] = {111, 112}
tItem[3321134]["Option111"] = tActiveOnline_Text[3321134]["Option111"]
tItem[3321134]["Option112"] = tActiveOnline_Text[3321134]["Option112"]
tItem[3321134]["OptionFunc111"] = "ActiveOnline_OpenPack</N>3321134"


-----------------------------------------------上线自检----------------------------------

table.insert(tSystem_PlayLogin_Func,ActiveOnline_OnLine)

--时间自检重置全服限量
local tActiveOnline_Reset = {}
tActiveOnline_Reset["Type"] = 2
tActiveOnline_Reset["TimeType"] = 4
tActiveOnline_Reset["Multiple"] = {}
tActiveOnline_Reset["Multiple"][1]  = "00:00 00:03"
tActiveOnline_Reset["Func"] = ActiveOnline_ResetReward
table.insert(tSystemTime_InitialData,tActiveOnline_Reset)


local tActiveOnline_Reset2 = {}
tActiveOnline_Reset2["Type"] = 2
tActiveOnline_Reset2["TimeType"] = 4
tActiveOnline_Reset2["Multiple"] = {}
tActiveOnline_Reset2["Multiple"][1]  = "00:04 00:06"
tActiveOnline_Reset2["Func"] = ActiveOnline_ResetReward2
table.insert(tSystemTime_InitialData,tActiveOnline_Reset2)