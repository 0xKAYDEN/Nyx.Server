------------------------------------------------------------------------------------
--Name:		190801[简体征服][任务脚本]积分商店后续内容
--Creator: 	兰瑞妹
--Created:	2019/08/02
------------------------------------------------------------------------------------

-- 命名前缀
-- IntegralShop_ItemUse_

-- logid： 12001546

-- taskid 4207（轮盘）

--------------------------------------数据配置部分--------------------------------------
local tIntegralShop_ItemUse_Reward = {}
	-- ===100枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313391]
	-- ===删除: 3313391,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313391] = {}
	tIntegralShop_ItemUse_Reward[3313391]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313391]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313391]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313391]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313391]["DeleteItem"][1]["Id"] = 3313391 -- 【库】 3313391 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313391]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313391]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313391]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313391]["RewardItem"][1]["Attr"] = "0 100" -- 至尊珍宝令*100
	tIntegralShop_ItemUse_Reward[3313391]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313391]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313391]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313392] = {}
	-- ===300枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313392]
	-- ===删除: 3313392,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313392]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313392]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313392]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313392]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313392]["DeleteItem"][1]["Id"] = 3313392 -- 【库】 3313392 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313392]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313392]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313392]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313392]["RewardItem"][1]["Attr"] = "0 300" -- 至尊珍宝令*300
	tIntegralShop_ItemUse_Reward[3313392]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313392]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313392]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313393] = {}
	-- ===500枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313393]
	-- ===删除: 3313393,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313393]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313393]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313393]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313393]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313393]["DeleteItem"][1]["Id"] = 3313393 -- 【库】 3313393 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313393]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313393]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313393]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313393]["RewardItem"][1]["Attr"] = "0 500" -- 至尊珍宝令*500
	tIntegralShop_ItemUse_Reward[3313393]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313393]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313393]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313394] = {}
	-- ===700枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313394]
	-- ===删除: 3313394,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313394]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313394]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313394]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313394]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313394]["DeleteItem"][1]["Id"] = 3313394 -- 【库】 3313394 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313394]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313394]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313394]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313394]["RewardItem"][1]["Attr"] = "0 700" -- 至尊珍宝令*700
	tIntegralShop_ItemUse_Reward[3313394]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313394]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313394]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313395] = {}
	-- ===1000枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[33133915]
	-- ===删除: 33133915,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313395]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313395]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313395]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313395]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313395]["DeleteItem"][1]["Id"] = 3313395 -- 【库】 33133915 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313395]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313395]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313395]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313395]["RewardItem"][1]["Attr"] = "0 1000" -- 至尊珍宝令*1000
	tIntegralShop_ItemUse_Reward[3313395]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313395]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313395]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313396] = {}
	-- ===1500枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313396]
	-- ===删除: 3313396,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313396]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313396]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313396]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313396]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313396]["DeleteItem"][1]["Id"] = 3313396 -- 【库】 3313396 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313396]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313396]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313396]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313396]["RewardItem"][1]["Attr"] = "0 1500" -- 至尊珍宝令*1500
	tIntegralShop_ItemUse_Reward[3313396]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313396]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313396]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313397] = {}
	-- ===3000枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313397]
	-- ===删除: 3313397,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313397]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313397]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313397]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313397]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313397]["DeleteItem"][1]["Id"] = 3313397 -- 【库】 3313397 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313397]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313397]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313397]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313397]["RewardItem"][1]["Attr"] = "0 3000" -- 至尊珍宝令*3000
	tIntegralShop_ItemUse_Reward[3313397]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313397]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313397]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_Reward[3313398] = {}
	-- ===10000枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3313398]
	-- ===删除: 3313398,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3313398]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3313398]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3313398]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3313398]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313398]["DeleteItem"][1]["Id"] = 3313398 -- 【库】 3313398 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3313398]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3313398]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3313398]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3313398]["RewardItem"][1]["Attr"] = "0 10000" -- 至尊珍宝令*10000
	tIntegralShop_ItemUse_Reward[3313398]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3313398]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3313398]["RewardEffect"]["Effect"] = "angelwing"
	
	tIntegralShop_ItemUse_Reward[3323102] = {}
	-- ===10枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3323102]
	-- ===删除: 3323102,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3323102]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3323102]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3323102]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3323102]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323102]["DeleteItem"][1]["Id"] = 3323102 -- 【库】 3323102 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3323102]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3323102]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323102]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3323102]["RewardItem"][1]["Attr"] = "0 10" -- 至尊珍宝令*10
	tIntegralShop_ItemUse_Reward[3323102]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3323102]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3323102]["RewardEffect"]["Effect"] = "angelwing"
	
	tIntegralShop_ItemUse_Reward[3323103] = {}
	-- ===20枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3323103]
	-- ===删除: 3323103,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3323103]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3323103]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3323103]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3323103]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323103]["DeleteItem"][1]["Id"] = 3323103 -- 【库】 3323103 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3323103]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3323103]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323103]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3323103]["RewardItem"][1]["Attr"] = "0 20" -- 至尊珍宝令*20
	tIntegralShop_ItemUse_Reward[3323103]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3323103]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3323103]["RewardEffect"]["Effect"] = "angelwing"
	
	tIntegralShop_ItemUse_Reward[3323104] = {}
	-- ===30枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3323104]
	-- ===删除: 3323104,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3323104]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3323104]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3323104]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3323104]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323104]["DeleteItem"][1]["Id"] = 3323104 -- 【库】 3323104 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3323104]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3323104]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323104]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3323104]["RewardItem"][1]["Attr"] = "0 30" -- 至尊珍宝令*30
	tIntegralShop_ItemUse_Reward[3323104]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3323104]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3323104]["RewardEffect"]["Effect"] = "angelwing"
	
	tIntegralShop_ItemUse_Reward[3323105] = {}
	-- ===50枚至尊珍宝令礼包
	-- ===索引: tIntegralShop_ItemUse_Reward[3323105]
	-- ===删除: 3323105,1
	-- ===LogStep: 2
	tIntegralShop_ItemUse_Reward[3323105]["LogId"] = 12001546
	tIntegralShop_ItemUse_Reward[3323105]["LogStep"] = "2"
	tIntegralShop_ItemUse_Reward[3323105]["DeleteItem"] = {}
	tIntegralShop_ItemUse_Reward[3323105]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323105]["DeleteItem"][1]["Id"] = 3323105 -- 【库】 3323105 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_Reward[3323105]["RewardItem"] = {}
	tIntegralShop_ItemUse_Reward[3323105]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_Reward[3323105]["RewardItem"][1]["Id"] = 3322775 -- 至尊珍宝令[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tIntegralShop_ItemUse_Reward[3323105]["RewardItem"][1]["Attr"] = "0 50" -- 至尊珍宝令*50
	tIntegralShop_ItemUse_Reward[3323105]["RewardEffect"] = {}
	tIntegralShop_ItemUse_Reward[3323105]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_Reward[3323105]["RewardEffect"]["Effect"] = "angelwing"
	
-- 随机奖励表
	
	local tIntegralShop_ItemUse_RandomReward = {}
	-- ===7天时效黄色神纹随机包
	-- ===索引: tIntegralShop_ItemUse_RandomReward[3313399][1]
	-- ===删除:3313399,1
	-- ===
	tIntegralShop_ItemUse_RandomReward[3313399] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tIntegralShop_ItemUse_RandomReward[3313399][1]["DeleteItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1]["DeleteItem"][1]["Id"] = 3313399 -- 【库】7天时效黄色神纹随机包[属性:11]
	tIntegralShop_ItemUse_RandomReward[3313399][1]["LogId"] = 12001546
	-- 破玄元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的破玄元(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][2] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的撼星诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][3] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的血回元(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][4] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的万物生(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][5] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的无懈可击(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][6] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的狂暴克星(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][7] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的风卷残云(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][8] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的回灵术(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][9] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的杀破狼(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][10] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的追命(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][11] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的奔雷不息(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][12] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的安魂定魄(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][13] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的夺魂(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][14] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的狂暴净化(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][15] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的怒海狂涛(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][16] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的饮血盛宴(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][1][17] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的生命汲取(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][18] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的策马扬鞭(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][19] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的攻城掠地(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][20] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的神罗天征(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][21] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的爆炎诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][22] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的清心诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][23] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的祭灵诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 0.52%
	tIntegralShop_ItemUse_RandomReward[3313399][1][24] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["ItemChance"] = 52
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的横扫千军(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313399][1][25] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的涅槃重生(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][26] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的锋芒毕露(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313399][1][27] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的魂兮归来(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][28] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的玄武护体(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][29] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的天衣无缝(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][30] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的例无虚发(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][31] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的审判(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 0.53%
	tIntegralShop_ItemUse_RandomReward[3313399][1][32] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["ItemChance"] = 53
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的斗转星移(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][33] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的乾坤护法(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][1][34] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的威慑(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 0.75%
	tIntegralShop_ItemUse_RandomReward[3313399][1][35] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["ItemChance"] = 75
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的会心一击(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 0.53%
	tIntegralShop_ItemUse_RandomReward[3313399][1][36] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["ItemChance"] = 53
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的致命准星(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 暴击伤害加成（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][37] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardItem"][1]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】暴击伤害加成（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的绝命破(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][38] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的乾坤妙法(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][39] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的罡气护体(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][40] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的沧澜破(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][41] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的妙手回春(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][42] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的碎魔屏障(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][43] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的天地化盾(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][43]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][44] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的碎玄元(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][44]["RewardEffect"]["Effect"] = "angelwing"
	-- 不死之身（+9） - 0.00%
	tIntegralShop_ItemUse_RandomReward[3313399][1][45] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["ItemChance"] = 0
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardItem"][1]["Id"] = 4034909 -- 不死之身(+9)[4034909][属性:8][叠加:0][金币:0], 【表格】不死之身（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的不死之身(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][1][45]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_RandomReward[3313399][2] = {}
	-- ===7天时效黄色神纹随机包
	-- ===索引: tIntegralShop_ItemUse_RandomReward[3313399][2]
	-- ===删除:3313399,1
	-- ===
	tIntegralShop_ItemUse_RandomReward[3313399][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tIntegralShop_ItemUse_RandomReward[3313399][2]["DeleteItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2]["DeleteItem"][1]["Id"] = 3313399 -- 【库】30天随机黄色神纹宝[属性:11]
	tIntegralShop_ItemUse_RandomReward[3313399][2]["LogId"] = 12001546
	-- 破玄元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的破玄元(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][2] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的撼星诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][3] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的血回元(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][4] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的万物生(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][5] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的无懈可击(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][6] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的狂暴克星(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][7] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的风卷残云(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][8] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的回灵术(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][9] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的杀破狼(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][10] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的追命(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][11] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的奔雷不息(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][12] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的安魂定魄(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][13] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的夺魂(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][14] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的狂暴净化(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][15] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的怒海狂涛(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][16] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的饮血盛宴(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313399][2][17] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的生命汲取(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][18] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的策马扬鞭(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][19] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的攻城掠地(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][20] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的神罗天征(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） -2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][21] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的爆炎诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][22] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的清心诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][23] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的祭灵诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 0.52%
	tIntegralShop_ItemUse_RandomReward[3313399][2][24] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["ItemChance"] = 52
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的横扫千军(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313399][2][25] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的涅槃重生(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][26] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的锋芒毕露(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313399][2][27] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的魂兮归来(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][28] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的玄武护体(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][29] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的天衣无缝(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][30] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的例无虚发(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][31] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的审判(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 0.53%
	tIntegralShop_ItemUse_RandomReward[3313399][2][32] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["ItemChance"] = 53
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的斗转星移(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][33] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的乾坤护法(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313399][2][34] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的威慑(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 0.75%
	tIntegralShop_ItemUse_RandomReward[3313399][2][35] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["ItemChance"] = 75
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的会心一击(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 1.53%
	tIntegralShop_ItemUse_RandomReward[3313399][2][36] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["ItemChance"] = 153
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的致命准星(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 暴击伤害加成（+9） - 0.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][37] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["ItemChance"] = 0
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardItem"][1]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】暴击伤害加成（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的绝命破(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][38] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的乾坤妙法(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][39] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的罡气护体(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][40] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的沧澜破(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][41] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的妙手回春(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][42] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的碎魔屏障(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][43] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的天地化盾(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][43]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][44] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的碎玄元(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][44]["RewardEffect"]["Effect"] = "angelwing"
	-- 不死之身（+9） - 0.00%
	tIntegralShop_ItemUse_RandomReward[3313399][2][45] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["ItemChance"] = 0
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardItem"][1]["Id"] = 4034909 -- 不死之身(+9)[4034909][属性:8][叠加:0][金币:0], 【表格】不死之身（+9）
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的不死之身(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313399][2][45]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_RandomReward[3313400] = {}
	-- ===15天时效黄色神纹随机包
	-- ===索引: tIntegralShop_ItemUse_RandomReward[3313400][1]
	-- ===删除:3313400,1
	-- ===
	tIntegralShop_ItemUse_RandomReward[3313400][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tIntegralShop_ItemUse_RandomReward[3313400][1]["DeleteItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1]["DeleteItem"][1]["Id"] = 3313400 -- 【库】 3313400 【库里没有该物品】[属性:]
	tIntegralShop_ItemUse_RandomReward[3313400][1]["LogId"] = 12001546
	-- 破玄元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的破玄元(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][2] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的撼星诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][3] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的血回元(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][4] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的万物生(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][5] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的无懈可击(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][6] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的狂暴克星(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][7] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的风卷残云(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][8] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的回灵术(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][9] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的杀破狼(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][10] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的追命(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][11] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的奔雷不息(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][12] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的安魂定魄(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][13] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的夺魂(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][14] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的狂暴净化(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][15] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的怒海狂涛(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][16] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的饮血盛宴(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][1][17] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的生命汲取(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][18] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的策马扬鞭(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][19] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的攻城掠地(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][20] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的神罗天征(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][21] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的爆炎诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][22] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的清心诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][23] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的祭灵诀(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 0.52%
	tIntegralShop_ItemUse_RandomReward[3313400][1][24] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["ItemChance"] = 52
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的横扫千军(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313400][1][25] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的涅槃重生(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][26] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的锋芒毕露(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313400][1][27] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的魂兮归来(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][28] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的玄武护体(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][29] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的天衣无缝(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][30] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的例无虚发(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][31] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的审判(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 0.53%
	tIntegralShop_ItemUse_RandomReward[3313400][1][32] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["ItemChance"] = 53
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的斗转星移(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][33] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的乾坤护法(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][1][34] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的威慑(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 0.75%
	tIntegralShop_ItemUse_RandomReward[3313400][1][35] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["ItemChance"] = 75
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的会心一击(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 0.53%
	tIntegralShop_ItemUse_RandomReward[3313400][1][36] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["ItemChance"] = 53
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的致命准星(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 暴击伤害加成（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][37] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardItem"][1]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】暴击伤害加成（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的绝命破(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][38] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的乾坤妙法(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][39] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的罡气护体(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][40] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的沧澜破(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][41] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的妙手回春(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][42] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的碎魔屏障(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][43] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的天地化盾(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][43]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][44] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的碎玄元(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][44]["RewardEffect"]["Effect"] = "angelwing"
	-- 不死之身（+9） - 0.00%
	tIntegralShop_ItemUse_RandomReward[3313400][1][45] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["ItemChance"] = 0
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardItem"][1]["Id"] = 4034909 -- 不死之身(+9)[4034909][属性:8][叠加:0][金币:0], 【表格】不死之身（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的不死之身(+9)*1
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][1][45]["RewardEffect"]["Effect"] = "angelwing"


	tIntegralShop_ItemUse_RandomReward[3313400][2] = {}
	-- ===15天时效黄色神纹随机包
	-- ===索引: tIntegralShop_ItemUse_RandomReward[3313400][2]
	-- ===删除:3313400,1
	-- ===
	tIntegralShop_ItemUse_RandomReward[3313400][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tIntegralShop_ItemUse_RandomReward[3313400][2]["DeleteItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2]["DeleteItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2]["DeleteItem"][1]["Id"] = 3313400 -- 【库】30天随机黄色神纹宝[属性:11]
	tIntegralShop_ItemUse_RandomReward[3313400][2]["LogId"] = 12001546
	-- 破玄元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的破玄元(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][2] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的撼星诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][3] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的血回元(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][4] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的万物生(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][5] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的无懈可击(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][6] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的狂暴克星(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][7] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的风卷残云(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][8] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的回灵术(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][9] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的杀破狼(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][10] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的追命(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][11] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的奔雷不息(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][12] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的安魂定魄(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][13] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的夺魂(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][14] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的狂暴净化(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][15] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的怒海狂涛(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][16] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的饮血盛宴(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 3.81%
	tIntegralShop_ItemUse_RandomReward[3313400][2][17] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["ItemChance"] = 381
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的生命汲取(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][18] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的策马扬鞭(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][19] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的攻城掠地(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][20] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的神罗天征(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][21] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的爆炎诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][22] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的清心诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） - 2.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][23] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["ItemChance"] = 200
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的祭灵诀(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 0.52%
	tIntegralShop_ItemUse_RandomReward[3313400][2][24] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["ItemChance"] = 52
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的横扫千军(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313400][2][25] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的涅槃重生(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][26] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的锋芒毕露(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.70%
	tIntegralShop_ItemUse_RandomReward[3313400][2][27] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["ItemChance"] = 270
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的魂兮归来(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][28] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["ItemChance"] = 50
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的玄武护体(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][29] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的天衣无缝(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][30] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的例无虚发(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][31] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的审判(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 0.53%
	tIntegralShop_ItemUse_RandomReward[3313400][2][32] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["ItemChance"] = 53
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的斗转星移(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][33] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的乾坤护法(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 1.50%
	tIntegralShop_ItemUse_RandomReward[3313400][2][34] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["ItemChance"] = 150
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的威慑(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 0.75%
	tIntegralShop_ItemUse_RandomReward[3313400][2][35] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["ItemChance"] = 75
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的会心一击(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 1.53%
	tIntegralShop_ItemUse_RandomReward[3313400][2][36] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["ItemChance"] = 153
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的致命准星(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 暴击伤害加成（+9） - 0.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][37] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["ItemChance"] = 0
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardItem"][1]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】暴击伤害加成（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的绝命破(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][38] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的乾坤妙法(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][39] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的罡气护体(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][40] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的沧澜破(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][41] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的妙手回春(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][42] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的碎魔屏障(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][43] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的天地化盾(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][43]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][44] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["ItemChance"] = 100
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的碎玄元(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][44]["RewardEffect"]["Effect"] = "angelwing"
	-- 不死之身（+9） - 0.00%
	tIntegralShop_ItemUse_RandomReward[3313400][2][45] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["ItemChance"] = 0
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardItem"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardItem"][1] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardItem"][1]["Id"] = 4034909 -- 不死之身(+9)[4034909][属性:8][叠加:0][金币:0], 【表格】不死之身（+9）
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的不死之身(+9)（赠）*1
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardEffect"] = {}
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIntegralShop_ItemUse_RandomReward[3313400][2][45]["RewardEffect"]["Effect"] = "angelwing"




	

	
-- 随机概率表
local tIntegralShop_ItemUse_RandomItemProperty = {}
	tIntegralShop_ItemUse_RandomItemProperty[3313399] = {}
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1] = {}
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1]["ItemChanceSum"] = 10000
	-- 10%概率表1
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][1] = {}
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][1]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][1]["ItemChance"] = 1000
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][1]["Item"] = 1
	-- 90%概率表1
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][2] = {}
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][2]["RandomItemChanceType"] = 2
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][2]["ItemChance"] = 9000
	tIntegralShop_ItemUse_RandomItemProperty[3313399][1][2]["Item"] = 2


--------------------------------------物品模块--------------------------------------
-- 3313391,'100枚至尊珍宝令礼包'
-- 3313392,'300枚至尊珍宝令礼包'
-- 3313393,'500枚至尊珍宝令礼包'
-- 3313394,'700枚至尊珍宝令礼包'
-- 3313395,'1000枚至尊珍宝令礼包'
-- 3313396,'1500枚至尊珍宝令礼包'
-- 3313397,'3000枚至尊珍宝令礼包'
-- 3313398,'10000枚至尊珍宝令礼包'
tItem[3313391] = tItem[3313391] or {}
tItem[3313391]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tIntegralShop_ItemUse_Reward[nItemId])
end
tItem[3313392] = tItem[3313391]
tItem[3313393] = tItem[3313391]
tItem[3313394] = tItem[3313391]
tItem[3313395] = tItem[3313391]
tItem[3313396] = tItem[3313391]
tItem[3313397] = tItem[3313391]
tItem[3313398] = tItem[3313391]
tItem[3323102] = tItem[3313391]
tItem[3323103] = tItem[3313391]
tItem[3323104] = tItem[3313391]
tItem[3323105] = tItem[3313391]

-- 3313399,'7天时效黄色神纹随机包'
tItem[3313399] = tItem[3313399] or {}
tItem[3313399]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local flat,tNum = Probabil_RandomAward(tIntegralShop_ItemUse_RandomItemProperty[3313399],1) 
	local nIndex = tNum[1]["tAward"][1]["Item"]
	
	RewardTemplate_RandomReward(tIntegralShop_ItemUse_RandomReward[nItemId],nIndex)
end

-- 3313400,'15天时效黄色神纹随机包'
tItem[3313400] = tItem[3313399]