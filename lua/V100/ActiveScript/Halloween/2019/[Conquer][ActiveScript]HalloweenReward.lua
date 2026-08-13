------------------------------------------------------------------------------------
--Name：        190926[简体征服][活动脚本]全球万圣节活动(奖励部分)(10.29-11.12)
--Creator:      耿力兀
--Created:     2019-09-26
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：HalloweenReward_
--logid：12001660
--stc掩码：20600-20604
-- 206 00 记录玩家变身收集数量
-- 206 01 记录玩家南瓜头成长值
-- 206 02 记录玩家迈克尔·麦尔斯人物外套碎片赢了几个  （最多5个）
-- 206 03 记录玩家购买南瓜糕点礼包花费  
-- 205 62 迈克尔麦尔斯变身 
-- 20744 - 20748
--207 44 使用正气令
--207 45 显著功勋礼包
--207 46 打怪掉糖果
--207 47 打怪掉南瓜糕点
--207 48 每日签到礼包

--万圣节氛围值  动态全局表ID 53765  data0位
--万圣节好运惊喜包 万圣节光效外套5折券 动态全局表ID 53775 data0位 全服限量  data1位 单日限量
--万圣节好运惊喜包 万圣节光效外套1折券 动态全局表ID 53776 data0位 全服限量  data1位 单日限量

--emoneybuylog  100001020  - 100001024;
--1020 购买外套  1021 购买发型  1023 天石商店
----------------------------------表配置部分--------------------------------------------
local tHalloweenReward_Award = {}

	tHalloweenReward_Award[3313798] = {}
	-- ===使用南瓜糕点
	-- ===索引: tHalloweenReward_Award[3313798]
	-- ===删除:3313798,1
	tHalloweenReward_Award[3313798]["LogId"] = 12001660
	tHalloweenReward_Award[3313798]["DeleteItem"] = {}
	tHalloweenReward_Award[3313798]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313798]["DeleteItem"][1]["Id"] = 3313798 -- 【库】南瓜糕点[属性:9]
	tHalloweenReward_Award[3313798]["DeleteItem"][1]["ItemNum"] = 1
	tHalloweenReward_Award[3313798]["RewardItem"] = {}
	tHalloweenReward_Award[3313798]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313798]["RewardItem"][1]["Id"] = 3313799 -- 南瓜币[3313799][属性:9][叠加:1][金币:0], 【表格】南瓜币
	tHalloweenReward_Award[3313798]["RewardItem"][1]["Attr"] = "0 1" -- 南瓜币*1
	tHalloweenReward_Award[3313798]["RewardEffect"] = {}
	tHalloweenReward_Award[3313798]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313798]["RewardEffect"]["Effect"] = "angelwing"

	-- ===1星鬼怪礼包
	-- ===索引: tHalloweenReward_Award[3313807]
	-- ===删除:3313807,1
	tHalloweenReward_Award[3313807] = {}
	tHalloweenReward_Award[3313807]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313807]["DeleteItem"] = {}
	tHalloweenReward_Award[3313807]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313807]["DeleteItem"][1]["Id"] = 3313807 -- 【库】1星鬼怪礼包[属性:9]
	tHalloweenReward_Award[3313807]["LogId"] = 12001660
	-- 赤炼石+1 - 25%
	tHalloweenReward_Award[3313807][1] = {}
	tHalloweenReward_Award[3313807][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313807][1]["ItemChance"] = 2500
	tHalloweenReward_Award[3313807][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313807][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313807][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tHalloweenReward_Award[3313807][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tHalloweenReward_Award[3313807][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313807][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313807][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 40%
	tHalloweenReward_Award[3313807][2] = {}
	tHalloweenReward_Award[3313807][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313807][2]["ItemChance"] = 4000
	tHalloweenReward_Award[3313807][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313807][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313807][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tHalloweenReward_Award[3313807][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tHalloweenReward_Award[3313807][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313807][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313807][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tHalloweenReward_Award[3313807][3] = {}
	tHalloweenReward_Award[3313807][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313807][3]["ItemChance"] = 2500
	tHalloweenReward_Award[3313807][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313807][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313807][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313807][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹（赠）*1
	tHalloweenReward_Award[3313807][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313807][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313807][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 10%
	tHalloweenReward_Award[3313807][4] = {}
	tHalloweenReward_Award[3313807][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313807][4]["ItemChance"] = 1000
	tHalloweenReward_Award[3313807][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313807][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313807][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313807][4]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tHalloweenReward_Award[3313807][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313807][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313807][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点-- 【必给】
	tHalloweenReward_Award[3313807][5] = {}
	tHalloweenReward_Award[3313807][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313807][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313807][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313807][5]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[3313807][5]["RewardItem"][1]["Attr"] = "0 1" -- 南瓜糕点*1
	tHalloweenReward_Award[3313807][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313807][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313807][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313808] = {}
	-- ===2星鬼怪礼包
	-- ===索引: tHalloweenReward_Award[3313808]
	-- ===删除:3313808,1
	tHalloweenReward_Award[3313808]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313808]["DeleteItem"] = {}
	tHalloweenReward_Award[3313808]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313808]["DeleteItem"][1]["Id"] = 3313808 -- 【库】2星鬼怪礼包[属性:9]
	tHalloweenReward_Award[3313808]["LogId"] = 12001660
	-- 赤炼石+2 - 40%
	tHalloweenReward_Award[3313808][1] = {}
	tHalloweenReward_Award[3313808][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313808][1]["ItemChance"] = 4000
	tHalloweenReward_Award[3313808][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313808][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313808][1]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tHalloweenReward_Award[3313808][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tHalloweenReward_Award[3313808][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313808][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313808][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 30%
	tHalloweenReward_Award[3313808][2] = {}
	tHalloweenReward_Award[3313808][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313808][2]["ItemChance"] = 3000
	tHalloweenReward_Award[3313808][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313808][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313808][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313808][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tHalloweenReward_Award[3313808][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313808][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313808][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tHalloweenReward_Award[3313808][3] = {}
	tHalloweenReward_Award[3313808][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313808][3]["ItemChance"] = 1500
	tHalloweenReward_Award[3313808][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313808][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313808][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313808][3]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tHalloweenReward_Award[3313808][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313808][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313808][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 15%
	tHalloweenReward_Award[3313808][4] = {}
	tHalloweenReward_Award[3313808][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313808][4]["ItemChance"] = 1500
	tHalloweenReward_Award[3313808][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313808][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313808][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313808][4]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tHalloweenReward_Award[3313808][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313808][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313808][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点-- 【必给】
	tHalloweenReward_Award[3313808][5] = {}
	tHalloweenReward_Award[3313808][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313808][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313808][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313808][5]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[3313808][5]["RewardItem"][1]["Attr"] = "0 3" -- 南瓜糕点*3
	tHalloweenReward_Award[3313808][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313808][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313808][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313809] = {}
	-- ===3星鬼怪礼包
	-- ===索引: tHalloweenReward_Award[3313809]
	-- ===删除:3313809,1
	tHalloweenReward_Award[3313809]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313809]["DeleteItem"] = {}
	tHalloweenReward_Award[3313809]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313809]["DeleteItem"][1]["Id"] = 3313809 -- 【库】3星鬼怪礼包[属性:9]
	tHalloweenReward_Award[3313809]["LogId"] = 12001660
	-- 赤炼石+3 - 30%
	tHalloweenReward_Award[3313809][1] = {}
	tHalloweenReward_Award[3313809][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313809][1]["ItemChance"] = 3000
	tHalloweenReward_Award[3313809][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313809][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313809][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tHalloweenReward_Award[3313809][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tHalloweenReward_Award[3313809][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313809][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313809][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tHalloweenReward_Award[3313809][2] = {}
	tHalloweenReward_Award[3313809][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313809][2]["ItemChance"] = 2500
	tHalloweenReward_Award[3313809][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313809][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313809][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313809][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tHalloweenReward_Award[3313809][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313809][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313809][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tHalloweenReward_Award[3313809][3] = {}
	tHalloweenReward_Award[3313809][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313809][3]["ItemChance"] = 2500
	tHalloweenReward_Award[3313809][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313809][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313809][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313809][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tHalloweenReward_Award[3313809][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313809][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313809][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tHalloweenReward_Award[3313809][4] = {}
	tHalloweenReward_Award[3313809][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313809][4]["ItemChance"] = 2000
	tHalloweenReward_Award[3313809][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313809][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313809][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313809][4]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tHalloweenReward_Award[3313809][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313809][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313809][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点-- 【必给】
	tHalloweenReward_Award[3313809][5] = {}
	tHalloweenReward_Award[3313809][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313809][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313809][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313809][5]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[3313809][5]["RewardItem"][1]["Attr"] = "0 10" -- 南瓜糕点*10
	tHalloweenReward_Award[3313809][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313809][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313809][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313810] = {}
	-- ===4星鬼怪礼包
	-- ===索引: tHalloweenReward_Award[3313810]
	-- ===删除:3313810,1
	tHalloweenReward_Award[3313810]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313810]["DeleteItem"] = {}
	tHalloweenReward_Award[3313810]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313810]["DeleteItem"][1]["Id"] = 3313810 -- 【库】4星鬼怪礼包[属性:9]
	tHalloweenReward_Award[3313810]["LogId"] = 12001660
	-- 赤炼石+3 - 15%
	tHalloweenReward_Award[3313810][1] = {}
	tHalloweenReward_Award[3313810][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313810][1]["ItemChance"] = 1500
	tHalloweenReward_Award[3313810][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313810][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313810][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tHalloweenReward_Award[3313810][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tHalloweenReward_Award[3313810][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313810][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313810][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000气力值 - 40%
	tHalloweenReward_Award[3313810][2] = {}
	tHalloweenReward_Award[3313810][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313810][2]["ItemChance"] = 4000
	tHalloweenReward_Award[3313810][2]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313810][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tHalloweenReward_Award[3313810][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313810][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313810][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 15%
	tHalloweenReward_Award[3313810][3] = {}
	tHalloweenReward_Award[3313810][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313810][3]["ItemChance"] = 1500
	tHalloweenReward_Award[3313810][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313810][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313810][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313810][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tHalloweenReward_Award[3313810][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313810][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313810][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 16%
	tHalloweenReward_Award[3313810][4] = {}
	tHalloweenReward_Award[3313810][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313810][4]["ItemChance"] = 1600
	tHalloweenReward_Award[3313810][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313810][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313810][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313810][4]["RewardItem"][1]["Attr"] = "0 25 3" -- 万能神纹精粹*25
	tHalloweenReward_Award[3313810][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313810][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313810][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 14%
	tHalloweenReward_Award[3313810][5] = {}
	tHalloweenReward_Award[3313810][5]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313810][5]["ItemChance"] = 1400
	tHalloweenReward_Award[3313810][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313810][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313810][5]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313810][5]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tHalloweenReward_Award[3313810][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313810][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313810][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点-- 【必给】
	tHalloweenReward_Award[3313810][6] = {}
	tHalloweenReward_Award[3313810][6]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313810][6]["RewardItem"] = {}
	tHalloweenReward_Award[3313810][6]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313810][6]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[3313810][6]["RewardItem"][1]["Attr"] = "0 30" -- 南瓜糕点*30（[错误]物品数量超10个）
	tHalloweenReward_Award[3313810][6]["RewardEffect"] = {}
	tHalloweenReward_Award[3313810][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313810][6]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3600168] = {}
	-- ===5星鬼怪礼包
	-- ===索引: tHalloweenReward_Award[3600168]
	-- ===删除:3600168,1
	tHalloweenReward_Award[3600168]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3600168]["DeleteItem"] = {}
	tHalloweenReward_Award[3600168]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3600168]["DeleteItem"][1]["Id"] = 3600168 -- 【库】5星鬼怪礼包[属性:9]
	tHalloweenReward_Award[3600168]["LogId"] = 12001660
	-- 赤炼石+4 - 16%
	tHalloweenReward_Award[3600168][1] = {}
	tHalloweenReward_Award[3600168][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3600168][1]["ItemChance"] = 1600
	tHalloweenReward_Award[3600168][1]["RewardItem"] = {}
	tHalloweenReward_Award[3600168][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3600168][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tHalloweenReward_Award[3600168][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tHalloweenReward_Award[3600168][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3600168][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3600168][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000气力值 - 40%
	tHalloweenReward_Award[3600168][2] = {}
	tHalloweenReward_Award[3600168][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3600168][2]["ItemChance"] = 4000
	tHalloweenReward_Award[3600168][2]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3600168][2]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tHalloweenReward_Award[3600168][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3600168][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3600168][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 10%
	tHalloweenReward_Award[3600168][3] = {}
	tHalloweenReward_Award[3600168][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3600168][3]["ItemChance"] = 1000
	tHalloweenReward_Award[3600168][3]["RewardItem"] = {}
	tHalloweenReward_Award[3600168][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3600168][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tHalloweenReward_Award[3600168][3]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tHalloweenReward_Award[3600168][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3600168][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3600168][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 20%
	tHalloweenReward_Award[3600168][4] = {}
	tHalloweenReward_Award[3600168][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3600168][4]["ItemChance"] = 2000
	tHalloweenReward_Award[3600168][4]["RewardItem"] = {}
	tHalloweenReward_Award[3600168][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3600168][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3600168][4]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹*30
	tHalloweenReward_Award[3600168][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3600168][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3600168][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 14%
	tHalloweenReward_Award[3600168][5] = {}
	tHalloweenReward_Award[3600168][5]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3600168][5]["ItemChance"] = 1400
	tHalloweenReward_Award[3600168][5]["RewardItem"] = {}
	tHalloweenReward_Award[3600168][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3600168][5]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3600168][5]["RewardItem"][1]["Attr"] = "0 15" -- 人参果*15（[错误]物品数量超10个）
	tHalloweenReward_Award[3600168][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3600168][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3600168][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点-- 【必给】
	tHalloweenReward_Award[3600168][6] = {}
	tHalloweenReward_Award[3600168][6]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3600168][6]["RewardItem"] = {}
	tHalloweenReward_Award[3600168][6]["RewardItem"][1] = {}
	tHalloweenReward_Award[3600168][6]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[3600168][6]["RewardItem"][1]["Attr"] = "0 100" -- 南瓜糕点*100（[错误]物品数量超10个）
	tHalloweenReward_Award[3600168][6]["RewardEffect"] = {}
	tHalloweenReward_Award[3600168][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3600168][6]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award["Weapon"] = {}
	-- ===1星礼包碎片
	-- ===索引:tHalloweenReward_Award["Weapon"][3313807]
	tHalloweenReward_Award["Weapon"][3313807] = {}
	tHalloweenReward_Award["Weapon"][3313807]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Weapon"][3313807]["LogId"] = 12001660
	-- “麦尔斯的厨刀”碎片 - 1%
	tHalloweenReward_Award["Weapon"][3313807][1] = {}
	tHalloweenReward_Award["Weapon"][3313807][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313807][1]["ItemChance"] = 100
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardItem"] = {}
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardItem"][1]["Id"] = 3313815 -- “麦尔斯的厨刀”碎片[3313815][属性:9][叠加:1][金币:0], 【表格】“麦尔斯的厨刀”碎片
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardItem"][1]["Attr"] = "0 1" -- “麦尔斯的厨刀”碎片*1
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Weapon"][3313807][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 99%
	tHalloweenReward_Award["Weapon"][3313807][2] = {}
	tHalloweenReward_Award["Weapon"][3313807][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313807][2]["ItemChance"] = 9900



	tHalloweenReward_Award["Weapon"][3313808] = {}
	-- ===2星礼包碎片
	-- ===索引:tHalloweenReward_Award["Weapon"][3313808]
	tHalloweenReward_Award["Weapon"][3313808]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Weapon"][3313808]["LogId"] = 12001660
	-- “麦尔斯的厨刀”碎片 - 3%
	tHalloweenReward_Award["Weapon"][3313808][1] = {}
	tHalloweenReward_Award["Weapon"][3313808][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313808][1]["ItemChance"] = 300
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardItem"] = {}
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardItem"][1]["Id"] = 3313815 -- “麦尔斯的厨刀”碎片[3313815][属性:9][叠加:1][金币:0], 【表格】“麦尔斯的厨刀”碎片
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardItem"][1]["Attr"] = "0 1" -- “麦尔斯的厨刀”碎片*1
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Weapon"][3313808][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 97%
	tHalloweenReward_Award["Weapon"][3313808][2] = {}
	tHalloweenReward_Award["Weapon"][3313808][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313808][2]["ItemChance"] = 9700



	tHalloweenReward_Award["Weapon"][3313809] = {}
	-- ===3星礼包碎片
	-- ===索引:tHalloweenReward_Award["Weapon"][3313809]
	tHalloweenReward_Award["Weapon"][3313809]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Weapon"][3313809]["LogId"] = 12001660
	-- “麦尔斯的厨刀”碎片 - 10%
	tHalloweenReward_Award["Weapon"][3313809][1] = {}
	tHalloweenReward_Award["Weapon"][3313809][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313809][1]["ItemChance"] = 1000
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardItem"] = {}
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardItem"][1]["Id"] = 3313815 -- “麦尔斯的厨刀”碎片[3313815][属性:9][叠加:1][金币:0], 【表格】“麦尔斯的厨刀”碎片
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardItem"][1]["Attr"] = "0 1" -- “麦尔斯的厨刀”碎片*1
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Weapon"][3313809][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 90%
	tHalloweenReward_Award["Weapon"][3313809][2] = {}
	tHalloweenReward_Award["Weapon"][3313809][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313809][2]["ItemChance"] = 9000



	tHalloweenReward_Award["Weapon"][3313810] = {}
	-- ===4星礼包碎片
	-- ===索引:tHalloweenReward_Award["Weapon"][3313810]
	tHalloweenReward_Award["Weapon"][3313810]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Weapon"][3313810]["LogId"] = 12001660
	-- “麦尔斯的厨刀”碎片 - 30%
	tHalloweenReward_Award["Weapon"][3313810][1] = {}
	tHalloweenReward_Award["Weapon"][3313810][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313810][1]["ItemChance"] = 3000
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardItem"] = {}
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardItem"][1]["Id"] = 3313815 -- “麦尔斯的厨刀”碎片[3313815][属性:9][叠加:1][金币:0], 【表格】“麦尔斯的厨刀”碎片
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardItem"][1]["Attr"] = "0 1" -- “麦尔斯的厨刀”碎片*1
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Weapon"][3313810][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 70%
	tHalloweenReward_Award["Weapon"][3313810][2] = {}
	tHalloweenReward_Award["Weapon"][3313810][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3313810][2]["ItemChance"] = 7000


	tHalloweenReward_Award["Weapon"][3600168] = {}
	-- ===5星礼包碎片
	-- ===索引:tHalloweenReward_Award["Weapon"][3600168]
	tHalloweenReward_Award["Weapon"][3600168]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Weapon"][3600168]["LogId"] = 12001660
	-- “麦尔斯的厨刀”碎片 - 50%
	tHalloweenReward_Award["Weapon"][3600168][1] = {}
	tHalloweenReward_Award["Weapon"][3600168][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3600168][1]["ItemChance"] = 5000
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardItem"] = {}
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardItem"][1]["Id"] = 3313815 -- “麦尔斯的厨刀”碎片[3313815][属性:9][叠加:1][金币:0], 【表格】“麦尔斯的厨刀”碎片
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardItem"][1]["Attr"] = "0 1" -- “麦尔斯的厨刀”碎片*1
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Weapon"][3600168][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 50%
	tHalloweenReward_Award["Weapon"][3600168][2] = {}
	tHalloweenReward_Award["Weapon"][3600168][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Weapon"][3600168][2]["ItemChance"] = 5000
	

	tHalloweenReward_Award[3313812] = {}
	-- ===万圣节好运惊喜包
	-- ===索引: tHalloweenReward_Award[3313812]
	-- ===删除:3313812,1
	tHalloweenReward_Award[3313812]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313812]["DeleteItem"] = {}
	tHalloweenReward_Award[3313812]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313812]["DeleteItem"][1]["Id"] = 3313812 -- 【库】万圣节好运惊喜包[属性:9]
	tHalloweenReward_Award[3313812]["LogId"] = 12001660
	-- 【万圣节时装外套名】碎片 - 42%
	tHalloweenReward_Award[3313812][1] = {}
	tHalloweenReward_Award[3313812][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][1]["ItemChance"] = 4200
	tHalloweenReward_Award[3313812][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][1]["RewardItem"][1]["Id"] = 3313816 -- 【万圣节时装外套名】碎片[3313816][属性:9][叠加:100][金币:0], 【表格】【万圣节时装外套名】碎片
	tHalloweenReward_Award[3313812][1]["RewardItem"][1]["Attr"] = "0 1" -- 【万圣节时装外套名】碎片*1
	tHalloweenReward_Award[3313812][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 【万圣节时装外套名】碎片 - 15%
	tHalloweenReward_Award[3313812][2] = {}
	tHalloweenReward_Award[3313812][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][2]["ItemChance"] = 1500
	tHalloweenReward_Award[3313812][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][2]["RewardItem"][1]["Id"] = 3313816 -- 【万圣节时装外套名】碎片[3313816][属性:9][叠加:100][金币:0], 【表格】【万圣节时装外套名】碎片
	tHalloweenReward_Award[3313812][2]["RewardItem"][1]["Attr"] = "0 2" -- 【万圣节时装外套名】碎片*2
	tHalloweenReward_Award[3313812][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 【万圣节时装外套名】碎片 - 5%
	tHalloweenReward_Award[3313812][3] = {}
	tHalloweenReward_Award[3313812][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][3]["ItemChance"] = 500
	tHalloweenReward_Award[3313812][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][3]["RewardItem"][1]["Id"] = 3313816 -- 【万圣节时装外套名】碎片[3313816][属性:9][叠加:100][金币:0], 【表格】【万圣节时装外套名】碎片
	tHalloweenReward_Award[3313812][3]["RewardItem"][1]["Attr"] = "0 3" -- 【万圣节时装外套名】碎片*3
	tHalloweenReward_Award[3313812][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000气力值 - 36%
	tHalloweenReward_Award[3313812][4] = {}
	tHalloweenReward_Award[3313812][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][4]["ItemChance"] = 3600
	tHalloweenReward_Award[3313812][4]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313812][4]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tHalloweenReward_Award[3313812][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万圣节光效外套9折券 - 0%
	tHalloweenReward_Award[3313812][5] = {}
	tHalloweenReward_Award[3313812][5]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][5]["ItemChance"] = 0
	tHalloweenReward_Award[3313812][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][5]["RewardItem"][1]["Id"] = 3313803 -- 9折万圣节光效外套[3313803][属性:8][叠加:1][金币:0], 【表格】万圣节光效外套9折券
	tHalloweenReward_Award[3313812][5]["RewardItem"][1]["Attr"] = "0 1" -- 9折万圣节光效外套*1
	tHalloweenReward_Award[3313812][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万圣节光效外套7折券 - 0%
	tHalloweenReward_Award[3313812][6] = {}
	tHalloweenReward_Award[3313812][6]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][6]["ItemChance"] = 0
	tHalloweenReward_Award[3313812][6]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][6]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][6]["RewardItem"][1]["Id"] = 3313802 -- 7折万圣节光效外套[3313802][属性:8][叠加:1][金币:0], 【表格】万圣节光效外套7折券
	tHalloweenReward_Award[3313812][6]["RewardItem"][1]["Attr"] = "0 1" -- 7折万圣节光效外套*1
	tHalloweenReward_Award[3313812][6]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万圣节光效外套5折券 - 1.5%
	tHalloweenReward_Award[3313812][7] = {}
	tHalloweenReward_Award[3313812][7]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][7]["ItemChance"] = 150
	tHalloweenReward_Award[3313812][7]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][7]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][7]["RewardItem"][1]["Id"] = 3313801 -- 5折万圣节光效外套[3313801][属性:8][叠加:1][金币:0], 【表格】万圣节光效外套5折券
	tHalloweenReward_Award[3313812][7]["RewardItem"][1]["Attr"] = "0 1" -- 5折万圣节光效外套*1
	tHalloweenReward_Award[3313812][7]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][7]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53775, data0）】全服限量:（130）, 超限给编号（4）-
	tHalloweenReward_Award[3313812][7]["GlobalId"] = 53775
	tHalloweenReward_Award[3313812][7]["Pos"] = 0
	tHalloweenReward_Award[3313812][7]["MaxData"] = 130
	tHalloweenReward_Award[3313812][7]["FullIndex"] = 4
			-- 【动态掩码（53775, data1）】单日限量:（10）, 超限给编号（4）-
	tHalloweenReward_Award[3313812][7]["OtherPos"] = 1
	tHalloweenReward_Award[3313812][7]["OtherMaxData"] = 10
	tHalloweenReward_Award[3313812][7]["OtherFullIndex"] = 4
	-- 万圣节光效外套1折券 - 0.5%
	tHalloweenReward_Award[3313812][8] = {}
	tHalloweenReward_Award[3313812][8]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313812][8]["ItemChance"] = 50
	tHalloweenReward_Award[3313812][8]["RewardItem"] = {}
	tHalloweenReward_Award[3313812][8]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313812][8]["RewardItem"][1]["Id"] = 3313800 -- 1折万圣节光效外套[3313800][属性:8][叠加:1][金币:0], 【表格】万圣节光效外套1折券
	tHalloweenReward_Award[3313812][8]["RewardItem"][1]["Attr"] = "0 1" -- 1折万圣节光效外套*1
	tHalloweenReward_Award[3313812][8]["RewardEffect"] = {}
	tHalloweenReward_Award[3313812][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313812][8]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53776, data0）】全服限量:（13）, 超限给编号（4）-
	tHalloweenReward_Award[3313812][8]["GlobalId"] = 53776
	tHalloweenReward_Award[3313812][8]["Pos"] = 0
	tHalloweenReward_Award[3313812][8]["MaxData"] = 13
	tHalloweenReward_Award[3313812][8]["FullIndex"] = 4
			-- 【动态掩码（53776, data1）】单日限量:（1）, 超限给编号（4）-
	tHalloweenReward_Award[3313812][8]["OtherPos"] = 1
	tHalloweenReward_Award[3313812][8]["OtherMaxData"] = 1
	tHalloweenReward_Award[3313812][8]["OtherFullIndex"] = 4

	tHalloweenReward_Award["Collect"] = {}
	-- ===收集5种变身奖励
	-- ===索引: tHalloweenReward_Award["Collect"][1]
	tHalloweenReward_Award["Collect"][1] = {}
	tHalloweenReward_Award["Collect"][1]["LogId"] = 12001660
	tHalloweenReward_Award["Collect"][1]["RewardItem"] = {}
	tHalloweenReward_Award["Collect"][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Collect"][1]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award["Collect"][1]["RewardItem"][1]["Attr"] = "0 1" -- 迈克尔·麦尔斯时装碎片（赠）*1
	tHalloweenReward_Award["Collect"][1]["RewardItem"][2] = {}
	tHalloweenReward_Award["Collect"][1]["RewardItem"][2]["Id"] = 4060001 --万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award["Collect"][1]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹*50
	tHalloweenReward_Award["Collect"][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Collect"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Collect"][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award["Collect"][2] = {}
	-- ===收集10种变身奖励
	-- ===索引: tHalloweenReward_Award["Collect"][2]
	tHalloweenReward_Award["Collect"][2]["LogId"] = 12001660
	tHalloweenReward_Award["Collect"][2]["RewardItem"] = {}
	tHalloweenReward_Award["Collect"][2]["RewardItem"][1] = {}
	tHalloweenReward_Award["Collect"][2]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award["Collect"][2]["RewardItem"][1]["Attr"] = "0 2" -- 迈克尔·麦尔斯时装碎片（赠）*2
	tHalloweenReward_Award["Collect"][2]["RewardItem"][2] = {}
	tHalloweenReward_Award["Collect"][2]["RewardItem"][2]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tHalloweenReward_Award["Collect"][2]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tHalloweenReward_Award["Collect"][2]["RewardEffect"] = {}
	tHalloweenReward_Award["Collect"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Collect"][2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award["Collect"][3] = {}
	-- ===收集15种变身奖励
	-- ===索引: tHalloweenReward_Award["Collect"][3]
	tHalloweenReward_Award["Collect"][3]["LogId"] = 12001660
	tHalloweenReward_Award["Collect"][3]["RewardItem"] = {}
	tHalloweenReward_Award["Collect"][3]["RewardItem"][1] = {}
	tHalloweenReward_Award["Collect"][3]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award["Collect"][3]["RewardItem"][1]["Attr"] = "0 3" -- 迈克尔·麦尔斯时装碎片（赠）*3
	tHalloweenReward_Award["Collect"][3]["RewardItem"][2] = {}
	tHalloweenReward_Award["Collect"][3]["RewardItem"][2]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tHalloweenReward_Award["Collect"][3]["RewardItem"][2]["Attr"] = "0 3" -- 天灵果*3
	tHalloweenReward_Award["Collect"][3]["RewardEffect"] = {}
	tHalloweenReward_Award["Collect"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Collect"][3]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award["Collect"][4] = {}
	-- ===收集20种变身奖励
	-- ===索引: tHalloweenReward_Award["Collect"][4]
	tHalloweenReward_Award["Collect"][4]["LogId"] = 12001660
	tHalloweenReward_Award["Collect"][4]["RewardItem"] = {}
	tHalloweenReward_Award["Collect"][4]["RewardItem"][1] = {}
	tHalloweenReward_Award["Collect"][4]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award["Collect"][4]["RewardItem"][1]["Attr"] = "0 4" -- 迈克尔·麦尔斯时装碎片（赠）*4
	tHalloweenReward_Award["Collect"][4]["RewardItem"][2] = {}
	tHalloweenReward_Award["Collect"][4]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award["Collect"][4]["RewardItem"][2]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200（[错误]物品数量超100个）
	tHalloweenReward_Award["Collect"][4]["RewardEffect"] = {}
	tHalloweenReward_Award["Collect"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Collect"][4]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award["Collect"][5] = {}
	-- ===收集25种变身奖励
	-- ===索引: tHalloweenReward_Award["Collect"][5]
	tHalloweenReward_Award["Collect"][5]["LogId"] = 12001660
	tHalloweenReward_Award["Collect"][5]["RewardItem"] = {}
	tHalloweenReward_Award["Collect"][5]["RewardItem"][1] = {}
	tHalloweenReward_Award["Collect"][5]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award["Collect"][5]["RewardItem"][1]["Attr"] = "0 5" -- 迈克尔·麦尔斯时装碎片（赠）*5
	tHalloweenReward_Award["Collect"][5]["RewardItem"][2] = {}
	tHalloweenReward_Award["Collect"][5]["RewardItem"][2]["Id"] = 3311821 -- 优质神纹源晶[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶
	tHalloweenReward_Award["Collect"][5]["RewardItem"][2]["Attr"] = "0 2 3" -- 优质神纹源晶（赠）*1
	tHalloweenReward_Award["Collect"][5]["RewardEffect"] = {}
	tHalloweenReward_Award["Collect"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Collect"][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award["Collect"][6] = {}
	-- ===收集30种变身奖励
	-- ===索引: tHalloweenReward_Award["Collect"][6]
	tHalloweenReward_Award["Collect"][6]["LogId"] = 12001660
	tHalloweenReward_Award["Collect"][6]["RewardItem"] = {}
	tHalloweenReward_Award["Collect"][6]["RewardItem"][1] = {}
	tHalloweenReward_Award["Collect"][6]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award["Collect"][6]["RewardItem"][1]["Attr"] = "0 5" -- 迈克尔·麦尔斯时装碎片*5
	tHalloweenReward_Award["Collect"][6]["RewardItem"][2] = {}
	tHalloweenReward_Award["Collect"][6]["RewardItem"][2]["Id"] = 3313817 -- 4星永久坐骑可选礼盒[3313817][属性:9][叠加:1][金币:0], 【表格】4星永久坐骑可选包
	tHalloweenReward_Award["Collect"][6]["RewardItem"][2]["Attr"] = "0 1 3" -- 4星永久坐骑可选礼盒（赠）*1
	tHalloweenReward_Award["Collect"][6]["RewardEffect"] = {}
	tHalloweenReward_Award["Collect"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Collect"][6]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3313817] = {}
	-- ===4星永久坐骑可选包（福来哥）
	-- ===索引: tHalloweenReward_Award[3313817][1]
	-- ===删除:3313817,1
	tHalloweenReward_Award[3313817][1] = {}
	tHalloweenReward_Award[3313817][1]["LogId"] = 12001660
	tHalloweenReward_Award[3313817][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3313817][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313817][1]["DeleteItem"][1]["Id"] = 3313817 -- 【库】4星永久坐骑可选礼盒[属性:9]
	tHalloweenReward_Award[3313817][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313817][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313817][1]["RewardItem"][1]["Id"] = 200500 -- 福来哥[200500][属性:0][叠加:0][金币:0], 【表格】福来哥
	tHalloweenReward_Award[3313817][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑福来哥（赠）*1
	tHalloweenReward_Award[3313817][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313817][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313817][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313817][2] = {}
	-- ===4星永久坐骑可选包（喵呜将军【魅力版】）
	-- ===索引: tHalloweenReward_Award[3313817][2]
	-- ===删除:3313817,1
	tHalloweenReward_Award[3313817][2]["LogId"] = 12001660
	tHalloweenReward_Award[3313817][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3313817][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313817][2]["DeleteItem"][1]["Id"] = 3313817 -- 【库】4星永久坐骑可选礼盒[属性:9]
	tHalloweenReward_Award[3313817][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313817][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313817][2]["RewardItem"][1]["Id"] = 200543 -- 喵呜将军【魅力版】[200543][属性:0][叠加:0][金币:0], 【表格】喵呜将军【魅力版】
	tHalloweenReward_Award[3313817][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑喵呜将军【魅力版】（赠）*1
	tHalloweenReward_Award[3313817][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313817][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313817][2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313817][3] = {}
	-- ===4星永久坐骑可选包（羊驼维克多）
	-- ===索引: tHalloweenReward_Award[3313817][3]
	-- ===删除:3313817,1
	tHalloweenReward_Award[3313817][3]["LogId"] = 12001660
	tHalloweenReward_Award[3313817][3]["DeleteItem"] = {}
	tHalloweenReward_Award[3313817][3]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313817][3]["DeleteItem"][1]["Id"] = 3313817 -- 【库】4星永久坐骑可选礼盒[属性:9]
	tHalloweenReward_Award[3313817][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313817][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313817][3]["RewardItem"][1]["Id"] = 200563 -- 羊驼维克多[200563][属性:0][叠加:0][金币:0], 【表格】羊驼维克多
	tHalloweenReward_Award[3313817][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑羊驼维克多（赠）*1
	tHalloweenReward_Award[3313817][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313817][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313817][3]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313817][4] = {}
	-- ===4星永久坐骑可选包（赤龙圣兽）
	-- ===索引: tHalloweenReward_Award[3313817][4]
	-- ===删除:3313817,1
	tHalloweenReward_Award[3313817][4]["LogId"] = 12001660
	tHalloweenReward_Award[3313817][4]["DeleteItem"] = {}
	tHalloweenReward_Award[3313817][4]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313817][4]["DeleteItem"][1]["Id"] = 3313817 -- 【库】4星永久坐骑可选礼盒[属性:9]
	tHalloweenReward_Award[3313817][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313817][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313817][4]["RewardItem"][1]["Id"] = 200579 -- 赤龙圣兽[200579][属性:8][叠加:0][金币:0], 【表格】赤龙圣兽
	tHalloweenReward_Award[3313817][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑赤龙圣兽（赠）*1
	tHalloweenReward_Award[3313817][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313817][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313817][4]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313817][5] = {}
	-- ===4星永久坐骑可选包（萨摩耶）
	-- ===索引: tHalloweenReward_Award[3313817][5]
	-- ===删除:3313817,1
	tHalloweenReward_Award[3313817][5]["LogId"] = 12001660
	tHalloweenReward_Award[3313817][5]["DeleteItem"] = {}
	tHalloweenReward_Award[3313817][5]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313817][5]["DeleteItem"][1]["Id"] = 3313817 -- 【库】4星永久坐骑可选礼盒[属性:9]
	tHalloweenReward_Award[3313817][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313817][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313817][5]["RewardItem"][1]["Id"] = 200621 -- 萨摩耶[200621][属性:0][叠加:0][金币:0], 【表格】萨摩耶
	tHalloweenReward_Award[3313817][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑萨摩耶（赠）*1
	tHalloweenReward_Award[3313817][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313817][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313817][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313817][6] = {}
	-- ===4星永久坐骑可选包（星际战鸡·希望号）
	-- ===索引: tHalloweenReward_Award[3313817][6]
	-- ===删除:3313817,1
	tHalloweenReward_Award[3313817][6]["LogId"] = 12001660
	tHalloweenReward_Award[3313817][6]["DeleteItem"] = {}
	tHalloweenReward_Award[3313817][6]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313817][6]["DeleteItem"][1]["Id"] = 3313817 -- 【库】4星永久坐骑可选礼盒[属性:9]
	tHalloweenReward_Award[3313817][6]["RewardItem"] = {}
	tHalloweenReward_Award[3313817][6]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313817][6]["RewardItem"][1]["Id"] = 200591 -- 星际战鸡·希望号[200587][属性:8][叠加:0][金币:0], 【表格】星际战鸡·希望号
	tHalloweenReward_Award[3313817][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑星际战鸡·希望号（赠）*1
	tHalloweenReward_Award[3313817][6]["RewardEffect"] = {}
	tHalloweenReward_Award[3313817][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313817][6]["RewardEffect"]["Effect"] = "angelwing"
	
	tHalloweenReward_Award["Monster"] = {}
	-- ===提交“迈克尔·麦尔斯”的头颅给劳瑞
	-- ===索引: tHalloweenReward_Award["Monster"]
	tHalloweenReward_Award["Monster"]["LogId"] = 12001660
	tHalloweenReward_Award["Monster"]["RewardItem"] = {}
	tHalloweenReward_Award["Monster"]["RewardItem"][1] = {}
	tHalloweenReward_Award["Monster"]["RewardItem"][1]["Id"] = 3313813 -- 万圣降魔礼盒[3313813][属性:9][叠加:1][金币:0], 【表格】万圣降魔礼盒
	tHalloweenReward_Award["Monster"]["RewardItem"][1]["Attr"] = "0 1" -- 万圣降魔礼盒*1
	tHalloweenReward_Award["Monster"]["RewardItem"][2] = {}
	tHalloweenReward_Award["Monster"]["RewardItem"][2]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award["Monster"]["RewardItem"][2]["Attr"] = "0 50" -- 南瓜糕点*50（[错误]物品数量超10个）
	tHalloweenReward_Award["Monster"]["RewardEffect"] = {}
	tHalloweenReward_Award["Monster"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Monster"]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313813] = {}
	-- ===万圣降魔礼盒（5000气力值）
	-- ===索引: tHalloweenReward_Award[3313813][1]
	-- ===删除:3313813,1
	tHalloweenReward_Award[3313813][1] = {}
	tHalloweenReward_Award[3313813][1]["LogId"] = 12001660
	tHalloweenReward_Award[3313813][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3313813][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313813][1]["DeleteItem"][1]["Id"] = 3313813 -- 【库】万圣降魔礼盒[属性:9]
	tHalloweenReward_Award[3313813][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313813][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313813][1]["RewardItem"][1]["Id"] = 3008200 -- 5000气力值包[3008200][属性:9][叠加:100][金币:0], 【表格】5000气力值
	tHalloweenReward_Award[3313813][1]["RewardItem"][1]["Attr"] = "0 1" -- 5000气力值包*1
	tHalloweenReward_Award[3313813][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313813][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313813][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313813][2] = {}
	-- ===万圣降魔礼盒（赤炼石+5）
	-- ===索引: tHalloweenReward_Award[3313813][2]
	-- ===删除:3313813,1
	tHalloweenReward_Award[3313813][2]["LogId"] = 12001660
	tHalloweenReward_Award[3313813][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3313813][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313813][2]["DeleteItem"][1]["Id"] = 3313813 -- 【库】万圣降魔礼盒[属性:9]
	tHalloweenReward_Award[3313813][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313813][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313813][2]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tHalloweenReward_Award[3313813][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tHalloweenReward_Award[3313813][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313813][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313813][2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313813][3] = {}
	-- ===万圣降魔礼盒（晶莹星陨石）
	-- ===索引: tHalloweenReward_Award[3313813][3]
	-- ===删除:3313813,1
	tHalloweenReward_Award[3313813][3]["LogId"] = 12001660
	tHalloweenReward_Award[3313813][3]["DeleteItem"] = {}
	tHalloweenReward_Award[3313813][3]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313813][3]["DeleteItem"][1]["Id"] = 3313813 -- 【库】万圣降魔礼盒[属性:9]
	tHalloweenReward_Award[3313813][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313813][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313813][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tHalloweenReward_Award[3313813][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tHalloweenReward_Award[3313813][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313813][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313813][3]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313813][4] = {}
	-- ===万圣降魔礼盒（天灵果）
	-- ===索引: tHalloweenReward_Award[3313813][4]
	-- ===删除:3313813,1
	tHalloweenReward_Award[3313813][4]["LogId"] = 12001660
	tHalloweenReward_Award[3313813][4]["DeleteItem"] = {}
	tHalloweenReward_Award[3313813][4]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313813][4]["DeleteItem"][1]["Id"] = 3313813 -- 【库】万圣降魔礼盒[属性:9]
	tHalloweenReward_Award[3313813][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313813][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313813][4]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tHalloweenReward_Award[3313813][4]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tHalloweenReward_Award[3313813][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313813][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313813][4]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313813][5] = {}
	-- ===万圣降魔礼盒（良品神纹源晶）
	-- ===索引: tHalloweenReward_Award[3313813][5]
	-- ===删除:3313813,1
	tHalloweenReward_Award[3313813][5]["LogId"] = 12001660
	tHalloweenReward_Award[3313813][5]["DeleteItem"] = {}
	tHalloweenReward_Award[3313813][5]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313813][5]["DeleteItem"][1]["Id"] = 3313813 -- 【库】万圣降魔礼盒[属性:9]
	tHalloweenReward_Award[3313813][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313813][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313813][5]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tHalloweenReward_Award[3313813][5]["RewardItem"][1]["Attr"] = "0 3 3" --良品神纹源晶*3
	tHalloweenReward_Award[3313813][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313813][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313813][5]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award["Task"] = {}
	-- ===“糖果OR恶作剧”任务奖励
	-- ===索引: tHalloweenReward_Award["Task"][1]
	tHalloweenReward_Award["Task"][1] = {}
	tHalloweenReward_Award["Task"][1]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Task"][1]["LogId"] = 12001660
	-- 明亮星陨石 - 22%
	tHalloweenReward_Award["Task"][1][1] = {}
	tHalloweenReward_Award["Task"][1][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][1]["ItemChance"] = 2200
	tHalloweenReward_Award["Task"][1][1]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award["Task"][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tHalloweenReward_Award["Task"][1][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 35%
	tHalloweenReward_Award["Task"][1][2] = {}
	tHalloweenReward_Award["Task"][1][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][2]["ItemChance"] = 3500
	tHalloweenReward_Award["Task"][1][2]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][2]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][2]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tHalloweenReward_Award["Task"][1][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tHalloweenReward_Award["Task"][1][2]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 25%
	tHalloweenReward_Award["Task"][1][3] = {}
	tHalloweenReward_Award["Task"][1][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][3]["ItemChance"] = 2500
	tHalloweenReward_Award["Task"][1][3]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][3]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award["Task"][1][3]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tHalloweenReward_Award["Task"][1][3]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tHalloweenReward_Award["Task"][1][4] = {}
	tHalloweenReward_Award["Task"][1][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][4]["ItemChance"] = 1500
	tHalloweenReward_Award["Task"][1][4]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][4]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award["Task"][1][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tHalloweenReward_Award["Task"][1][4]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1%
	tHalloweenReward_Award["Task"][1][5] = {}
	tHalloweenReward_Award["Task"][1][5]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][5]["ItemChance"] = 100
	tHalloweenReward_Award["Task"][1][5]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][5]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][5]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tHalloweenReward_Award["Task"][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tHalloweenReward_Award["Task"][1][5]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 1%
	tHalloweenReward_Award["Task"][1][6] = {}
	tHalloweenReward_Award["Task"][1][6]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][6]["ItemChance"] = 100
	tHalloweenReward_Award["Task"][1][6]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][6]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][6]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tHalloweenReward_Award["Task"][1][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tHalloweenReward_Award["Task"][1][6]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 - 1%
	tHalloweenReward_Award["Task"][1][7] = {}
	tHalloweenReward_Award["Task"][1][7]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][1][7]["ItemChance"] = 100
	tHalloweenReward_Award["Task"][1][7]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][1][7]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][1][7]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tHalloweenReward_Award["Task"][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tHalloweenReward_Award["Task"][1][7]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award["Task"][2] = {}
	-- ===“糖果OR恶作剧”任务奖励
	-- ===索引: tHalloweenReward_Award["Task"][2]
	tHalloweenReward_Award["Task"][2]["ItemChanceSum"] = 10000
	tHalloweenReward_Award["Task"][2]["LogId"] = 12001660
	-- 南瓜糕点 - 35%
	tHalloweenReward_Award["Task"][2][1] = {}
	tHalloweenReward_Award["Task"][2][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][2][1]["ItemChance"] = 3500
	tHalloweenReward_Award["Task"][2][1]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][2][1]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][2][1]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award["Task"][2][1]["RewardItem"][1]["Attr"] = "0 30" -- 南瓜糕点*30（[错误]物品数量超10个）
	tHalloweenReward_Award["Task"][2][1]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点 - 55%
	tHalloweenReward_Award["Task"][2][2] = {}
	tHalloweenReward_Award["Task"][2][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][2][2]["ItemChance"] = 5500
	tHalloweenReward_Award["Task"][2][2]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][2][2]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][2][2]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award["Task"][2][2]["RewardItem"][1]["Attr"] = "0 50" -- 南瓜糕点*50（[错误]物品数量超10个）
	tHalloweenReward_Award["Task"][2][2]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 南瓜糕点 - 10%
	tHalloweenReward_Award["Task"][2][3] = {}
	tHalloweenReward_Award["Task"][2][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award["Task"][2][3]["ItemChance"] = 1000
	tHalloweenReward_Award["Task"][2][3]["RewardItem"] = {}
	tHalloweenReward_Award["Task"][2][3]["RewardItem"][1] = {}
	tHalloweenReward_Award["Task"][2][3]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award["Task"][2][3]["RewardItem"][1]["Attr"] = "0 100" -- 南瓜糕点*100（[错误]物品数量超10个）
	tHalloweenReward_Award["Task"][2][3]["RewardEffect"] = {}
	tHalloweenReward_Award["Task"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Task"][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3313818] = {}
	-- ===万圣party
	-- ===变身派对开心包
	-- ===索引: tHalloweenReward_Award[3313818]
	-- ===删除:3313818,1
	tHalloweenReward_Award[3313818]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313818]["DeleteItem"] = {}
	tHalloweenReward_Award[3313818]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313818]["DeleteItem"][1]["Id"] = 3313818 -- 【库】变身派对开心包[属性:9]
	tHalloweenReward_Award[3313818]["LogId"] = 12001660
	-- 100狗年硬币- 35%
	tHalloweenReward_Award[3313818][1] = {}
	tHalloweenReward_Award[3313818][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313818][1]["ItemChance"] = 3500
	tHalloweenReward_Award[3313818][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313818][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313818][1]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:0][叠加:10000][金币:0], 【表格】狗年硬币
	tHalloweenReward_Award[3313818][1]["RewardItem"][1]["Attr"] = "0 100" -- 100狗年硬币
	tHalloweenReward_Award[3313818][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313818][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313818][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tHalloweenReward_Award[3313818][2] = {}
	tHalloweenReward_Award[3313818][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313818][2]["ItemChance"] = 2000
	tHalloweenReward_Award[3313818][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313818][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313818][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313818][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tHalloweenReward_Award[3313818][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313818][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313818][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tHalloweenReward_Award[3313818][3] = {}
	tHalloweenReward_Award[3313818][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313818][3]["ItemChance"] = 2500
	tHalloweenReward_Award[3313818][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313818][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313818][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313818][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
	tHalloweenReward_Award[3313818][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313818][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313818][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tHalloweenReward_Award[3313818][4] = {}
	tHalloweenReward_Award[3313818][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313818][4]["ItemChance"] = 2000
	tHalloweenReward_Award[3313818][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313818][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313818][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313818][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tHalloweenReward_Award[3313818][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313818][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313818][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 【英文】鬼怪糖果-- 【必给】
	tHalloweenReward_Award[3313818][5] = {}
	tHalloweenReward_Award[3313818][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313818][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313818][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313818][5]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】【英文】鬼怪糖果
	tHalloweenReward_Award[3313818][5]["RewardItem"][1]["Attr"] = "0 5" -- 【英文】鬼怪糖果*5
	tHalloweenReward_Award[3313818][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313818][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313818][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313819] = {}
	-- ===万圣party
	-- ===变身派对欢乐包
	-- ===索引: tHalloweenReward_Award[3313819]
	-- ===删除:3313819,1
	tHalloweenReward_Award[3313819]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313819]["DeleteItem"] = {}
	tHalloweenReward_Award[3313819]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313819]["DeleteItem"][1]["Id"] = 3313819 -- 【库】变身派对欢乐包[属性:9]
	tHalloweenReward_Award[3313819]["LogId"] = 12001660
	-- 100狗年硬币- 35%
	tHalloweenReward_Award[3313819][1] = {}
	tHalloweenReward_Award[3313819][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313819][1]["ItemChance"] = 3500
	tHalloweenReward_Award[3313819][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313819][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313819][1]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:0][叠加:10000][金币:0], 【表格】狗年硬币
	tHalloweenReward_Award[3313819][1]["RewardItem"][1]["Attr"] = "0 100" -- 100狗年硬币
	tHalloweenReward_Award[3313819][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313819][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313819][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tHalloweenReward_Award[3313819][2] = {}
	tHalloweenReward_Award[3313819][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313819][2]["ItemChance"] = 2000
	tHalloweenReward_Award[3313819][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313819][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313819][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313819][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tHalloweenReward_Award[3313819][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313819][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313819][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tHalloweenReward_Award[3313819][3] = {}
	tHalloweenReward_Award[3313819][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313819][3]["ItemChance"] = 2500
	tHalloweenReward_Award[3313819][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313819][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313819][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313819][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
	tHalloweenReward_Award[3313819][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313819][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313819][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tHalloweenReward_Award[3313819][4] = {}
	tHalloweenReward_Award[3313819][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313819][4]["ItemChance"] = 2000
	tHalloweenReward_Award[3313819][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313819][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313819][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313819][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tHalloweenReward_Award[3313819][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313819][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313819][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 【英文】鬼怪糖果-- 【必给】
	tHalloweenReward_Award[3313819][5] = {}
	tHalloweenReward_Award[3313819][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313819][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313819][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313819][5]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】【英文】鬼怪糖果
	tHalloweenReward_Award[3313819][5]["RewardItem"][1]["Attr"] = "0 5" -- 【英文】鬼怪糖果*5
	tHalloweenReward_Award[3313819][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313819][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313819][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 迈克尔·麦尔斯时装碎片-- 【必给】
	tHalloweenReward_Award[3313819][6] = {}
	tHalloweenReward_Award[3313819][6]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313819][6]["RewardItem"] = {}
	tHalloweenReward_Award[3313819][6]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313819][6]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award[3313819][6]["RewardItem"][1]["Attr"] = "0 1" -- 迈克尔·麦尔斯时装碎片*1
	tHalloweenReward_Award[3313819][6]["RewardEffect"] = {}
	tHalloweenReward_Award[3313819][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313819][6]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313820] = {}
	-- ===万圣party
	-- ===变身派对惊喜包
	-- ===索引: tHalloweenReward_Award[3313820]
	-- ===删除:3313820,1
	tHalloweenReward_Award[3313820]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313820]["DeleteItem"] = {}
	tHalloweenReward_Award[3313820]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313820]["DeleteItem"][1]["Id"] = 3313820 -- 【库】变身派对惊喜包[属性:9]
	tHalloweenReward_Award[3313820]["LogId"] = 12001660
	-- 200狗年硬币 - 30%
	tHalloweenReward_Award[3313820][1] = {}
	tHalloweenReward_Award[3313820][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313820][1]["ItemChance"] = 3000
	tHalloweenReward_Award[3313820][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313820][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313820][1]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:0][叠加:10000][金币:0], 【表格】狗年硬币
	tHalloweenReward_Award[3313820][1]["RewardItem"][1]["Attr"] = "0 200" -- 200狗年硬币
	tHalloweenReward_Award[3313820][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313820][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313820][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tHalloweenReward_Award[3313820][2] = {}
	tHalloweenReward_Award[3313820][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313820][2]["ItemChance"] = 2000
	tHalloweenReward_Award[3313820][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313820][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313820][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313820][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tHalloweenReward_Award[3313820][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313820][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313820][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 30%
	tHalloweenReward_Award[3313820][3] = {}
	tHalloweenReward_Award[3313820][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313820][3]["ItemChance"] = 3000
	tHalloweenReward_Award[3313820][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313820][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313820][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313820][3]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tHalloweenReward_Award[3313820][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313820][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313820][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tHalloweenReward_Award[3313820][4] = {}
	tHalloweenReward_Award[3313820][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313820][4]["ItemChance"] = 2000
	tHalloweenReward_Award[3313820][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313820][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313820][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313820][4]["RewardItem"][1]["Attr"] = "0 4" -- 人参果*4
	tHalloweenReward_Award[3313820][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313820][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313820][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 【英文】鬼怪糖果-- 【必给】
	tHalloweenReward_Award[3313820][5] = {}
	tHalloweenReward_Award[3313820][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313820][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313820][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313820][5]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】【英文】鬼怪糖果
	tHalloweenReward_Award[3313820][5]["RewardItem"][1]["Attr"] = "0 10" -- 【英文】鬼怪糖果*10
	tHalloweenReward_Award[3313820][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313820][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313820][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313821] = {}
	-- ===万圣party
	-- ===变身派对狂欢包
	-- ===索引: tHalloweenReward_Award[3313821]
	-- ===删除:3313821,1
	tHalloweenReward_Award[3313821]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313821]["DeleteItem"] = {}
	tHalloweenReward_Award[3313821]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313821]["DeleteItem"][1]["Id"] = 3313821 -- 【库】变身派对狂欢包[属性:9]
	tHalloweenReward_Award[3313821]["LogId"] = 12001660
	-- 狗年硬币 - 30%
	tHalloweenReward_Award[3313821][1] = {}
	tHalloweenReward_Award[3313821][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313821][1]["ItemChance"] = 3000
	tHalloweenReward_Award[3313821][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313821][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313821][1]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:9][叠加:10000][金币:0], 【表格】狗年硬币
	tHalloweenReward_Award[3313821][1]["RewardItem"][1]["Attr"] = "0 200" -- 5天时效(激活)的+3赤炼石（赠）*1
	tHalloweenReward_Award[3313821][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313821][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313821][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tHalloweenReward_Award[3313821][2] = {}
	tHalloweenReward_Award[3313821][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313821][2]["ItemChance"] = 2000
	tHalloweenReward_Award[3313821][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313821][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313821][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313821][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tHalloweenReward_Award[3313821][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313821][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313821][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 30%
	tHalloweenReward_Award[3313821][3] = {}
	tHalloweenReward_Award[3313821][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313821][3]["ItemChance"] = 3000
	tHalloweenReward_Award[3313821][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313821][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313821][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313821][3]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tHalloweenReward_Award[3313821][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313821][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313821][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tHalloweenReward_Award[3313821][4] = {}
	tHalloweenReward_Award[3313821][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313821][4]["ItemChance"] = 2000
	tHalloweenReward_Award[3313821][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313821][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313821][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313821][4]["RewardItem"][1]["Attr"] = "0 4" -- 人参果*4
	tHalloweenReward_Award[3313821][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313821][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313821][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 迈克尔·麦尔斯时装碎片-- 【必给】
	tHalloweenReward_Award[3313821][5] = {}
	tHalloweenReward_Award[3313821][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313821][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313821][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313821][5]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award[3313821][5]["RewardItem"][1]["Attr"] = "0 1" -- 迈克尔·麦尔斯时装碎片*1
	tHalloweenReward_Award[3313821][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313821][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313821][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 【英文】鬼怪糖果-- 【必给】
	tHalloweenReward_Award[3313821][6] = {}
	tHalloweenReward_Award[3313821][6]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313821][6]["RewardItem"] = {}
	tHalloweenReward_Award[3313821][6]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313821][6]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】【英文】鬼怪糖果
	tHalloweenReward_Award[3313821][6]["RewardItem"][1]["Attr"] = "0 10" -- 【英文】鬼怪糖果*10
	tHalloweenReward_Award[3313821][6]["RewardEffect"] = {}
	tHalloweenReward_Award[3313821][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313821][6]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313822] = {}
	-- ===万圣party
	-- ===变身派对极乐包
	-- ===索引: tHalloweenReward_Award[3313822]
	-- ===删除:3313822,1
	tHalloweenReward_Award[3313822]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313822]["DeleteItem"] = {}
	tHalloweenReward_Award[3313822]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313822]["DeleteItem"][1]["Id"] = 3313822 -- 【库】变身派对极乐包[属性:9]
	tHalloweenReward_Award[3313822]["LogId"] = 12001660
	-- 狗年硬币 - 28%
	tHalloweenReward_Award[3313822][1] = {}
	tHalloweenReward_Award[3313822][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313822][1]["ItemChance"] = 2800
	tHalloweenReward_Award[3313822][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313822][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313822][1]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:0][叠加:10000][金币:0], 【表格】狗年硬币
	tHalloweenReward_Award[3313822][1]["RewardItem"][1]["Attr"] = "0 300" -- 300狗年硬币
	tHalloweenReward_Award[3313822][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313822][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313822][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 30%
	tHalloweenReward_Award[3313822][2] = {}
	tHalloweenReward_Award[3313822][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313822][2]["ItemChance"] = 3000
	tHalloweenReward_Award[3313822][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313822][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313822][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHalloweenReward_Award[3313822][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tHalloweenReward_Award[3313822][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313822][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313822][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 32%
	tHalloweenReward_Award[3313822][3] = {}
	tHalloweenReward_Award[3313822][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313822][3]["ItemChance"] = 3200
	tHalloweenReward_Award[3313822][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313822][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313822][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHalloweenReward_Award[3313822][3]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tHalloweenReward_Award[3313822][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313822][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313822][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 30%
	tHalloweenReward_Award[3313822][4] = {}
	tHalloweenReward_Award[3313822][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313822][4]["ItemChance"] = 3000
	tHalloweenReward_Award[3313822][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313822][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313822][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313822][4]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tHalloweenReward_Award[3313822][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313822][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313822][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 【英文】鬼怪糖果-- 【必给】
	tHalloweenReward_Award[3313822][5] = {}
	tHalloweenReward_Award[3313822][5]["RandomItemChanceType"] = 1
	tHalloweenReward_Award[3313822][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313822][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313822][5]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】【英文】鬼怪糖果
	tHalloweenReward_Award[3313822][5]["RewardItem"][1]["Attr"] = "0 30" -- 【英文】鬼怪糖果*30（[错误]物品数量超10个）
	tHalloweenReward_Award[3313822][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313822][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313822][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313823] = {}
	-- ===全球万圣氛围冠军礼盒
	-- ===索引: tHalloweenReward_Award[3313823]
	-- ===删除:3313823,1
	tHalloweenReward_Award[3313823]["LogId"] = 12001660
	tHalloweenReward_Award[3313823]["DeleteItem"] = {}
	tHalloweenReward_Award[3313823]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313823]["DeleteItem"][1]["Id"] = 3313823 -- 【库】全球万圣氛围冠军礼盒[属性:9]
	tHalloweenReward_Award[3313823]["RewardItem"] = {}
	tHalloweenReward_Award[3313823]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313823]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313823]["RewardItem"][1]["Attr"] = "0 300" -- 人参果*300（[错误]物品数量超10个）
	tHalloweenReward_Award[3313823]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313823]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tHalloweenReward_Award[3313823]["RewardEffect"] = {}
	tHalloweenReward_Award[3313823]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313823]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313824] = {}
	-- ===全球万圣氛围亚军礼盒
	-- ===索引: tHalloweenReward_Award[3313824]
	-- ===删除:3313824,1
	tHalloweenReward_Award[3313824]["LogId"] = 12001660
	tHalloweenReward_Award[3313824]["DeleteItem"] = {}
	tHalloweenReward_Award[3313824]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313824]["DeleteItem"][1]["Id"] = 3313824 -- 【库】全球万圣氛围亚军礼盒[属性:9]
	tHalloweenReward_Award[3313824]["RewardItem"] = {}
	tHalloweenReward_Award[3313824]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313824]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313824]["RewardItem"][1]["Attr"] = "0 200" -- 人参果*200（[错误]物品数量超10个）
	tHalloweenReward_Award[3313824]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313824]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tHalloweenReward_Award[3313824]["RewardEffect"] = {}
	tHalloweenReward_Award[3313824]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313824]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313825] = {}
	-- ===全球万圣氛围季军礼盒
	-- ===索引: tHalloweenReward_Award[3313825]
	-- ===删除:3313825,1
	tHalloweenReward_Award[3313825]["LogId"] = 12001660
	tHalloweenReward_Award[3313825]["DeleteItem"] = {}
	tHalloweenReward_Award[3313825]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313825]["DeleteItem"][1]["Id"] = 3313825 -- 【库】全球万圣氛围季军礼盒[属性:9]
	tHalloweenReward_Award[3313825]["RewardItem"] = {}
	tHalloweenReward_Award[3313825]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313825]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313825]["RewardItem"][1]["Attr"] = "0 150" -- 人参果*150（[错误]物品数量超10个）
	tHalloweenReward_Award[3313825]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313825]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000气力值
	tHalloweenReward_Award[3313825]["RewardEffect"] = {}
	tHalloweenReward_Award[3313825]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313825]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313826] = {}
	-- ===全球万圣氛围强者礼盒
	-- ===索引: tHalloweenReward_Award[3313826]
	-- ===删除:3313826,1
	tHalloweenReward_Award[3313826]["LogId"] = 12001660
	tHalloweenReward_Award[3313826]["DeleteItem"] = {}
	tHalloweenReward_Award[3313826]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313826]["DeleteItem"][1]["Id"] = 3313826 -- 【库】全球万圣氛围强者礼盒[属性:9]
	tHalloweenReward_Award[3313826]["RewardItem"] = {}
	tHalloweenReward_Award[3313826]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313826]["RewardItem"][1]["Id"] = 3313804 -- 5折迈克尔·麦尔斯发型[3313804][属性:8][叠加:1][金币:0], 【表格】5折迈克尔·麦尔斯发型
	tHalloweenReward_Award[3313826]["RewardItem"][1]["Attr"] = "0 1" -- 5折迈克尔·麦尔斯发型（赠）*1
	tHalloweenReward_Award[3313826]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313826]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313826]["RewardItem"][2]["Attr"] = "0 80" -- 人参果*80（[错误]物品数量超10个）
	tHalloweenReward_Award[3313826]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313826]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tHalloweenReward_Award[3313826]["RewardEffect"] = {}
	tHalloweenReward_Award[3313826]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313826]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313827] = {}
	-- ===全球万圣氛围精英礼盒
	-- ===索引: tHalloweenReward_Award[3313827]
	-- ===删除:3313827,1
	tHalloweenReward_Award[3313827]["LogId"] = 12001660
	tHalloweenReward_Award[3313827]["DeleteItem"] = {}
	tHalloweenReward_Award[3313827]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313827]["DeleteItem"][1]["Id"] = 3313827 -- 【库】全球万圣氛围精英礼盒[属性:9]
	tHalloweenReward_Award[3313827]["RewardItem"] = {}
	tHalloweenReward_Award[3313827]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313827]["RewardItem"][1]["Id"] = 3313805 -- 7折迈克尔·麦尔斯发型[3313805][属性:8][叠加:1][金币:0], 【表格】7折迈克尔·麦尔斯发型
	tHalloweenReward_Award[3313827]["RewardItem"][1]["Attr"] = "0 1" -- 7折迈克尔·麦尔斯发型（赠）*1
	tHalloweenReward_Award[3313827]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313827]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313827]["RewardItem"][2]["Attr"] = "0 60" -- 人参果*60（[错误]物品数量超10个）
	tHalloweenReward_Award[3313827]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313827]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tHalloweenReward_Award[3313827]["RewardEffect"] = {}
	tHalloweenReward_Award[3313827]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313827]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313828] = {}
	-- ===全球万圣氛围参与礼盒
	-- ===索引: tHalloweenReward_Award[3313828]
	-- ===删除:3313828,1
	tHalloweenReward_Award[3313828]["LogId"] = 12001660
	tHalloweenReward_Award[3313828]["DeleteItem"] = {}
	tHalloweenReward_Award[3313828]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313828]["DeleteItem"][1]["Id"] = 3313828 -- 【库】全球万圣氛围参与礼盒[属性:9]
	tHalloweenReward_Award[3313828]["RewardItem"] = {}
	tHalloweenReward_Award[3313828]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313828]["RewardItem"][1]["Id"] = 3313806 -- 9折迈克尔·麦尔斯发型[3313806][属性:8][叠加:1][金币:0], 【表格】9折迈克尔·麦尔斯发型
	tHalloweenReward_Award[3313828]["RewardItem"][1]["Attr"] = "0 1" -- 9折迈克尔·麦尔斯发型（赠）*1
	tHalloweenReward_Award[3313828]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313828]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tHalloweenReward_Award[3313828]["RewardItem"][2]["Attr"] = "0 30" -- 人参果*30（[错误]物品数量超10个）
	tHalloweenReward_Award[3313828]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313828]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tHalloweenReward_Award[3313828]["RewardEffect"] = {}
	tHalloweenReward_Award[3313828]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313828]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313829] = {}
	-- ===本服南瓜头第1名礼盒
	-- ===索引: tHalloweenReward_Award[3313829]
	-- ===删除:3313829,1
	tHalloweenReward_Award[3313829]["LogId"] = 12001660
	tHalloweenReward_Award[3313829]["DeleteItem"] = {}
	tHalloweenReward_Award[3313829]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313829]["DeleteItem"][1]["Id"] = 3313829 -- 【库】本服南瓜头第1名礼盒[属性:9]
	tHalloweenReward_Award[3313829]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313829]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
	tHalloweenReward_Award[3313829]["RewardItem"] = {}
	tHalloweenReward_Award[3313829]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313829]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tHalloweenReward_Award[3313829]["RewardItem"][1]["Attr"] = "0 1 3" -- (+1)稀有黄色神纹随机包(赠)（赠）*1
	tHalloweenReward_Award[3313829]["RewardEffect"] = {}
	tHalloweenReward_Award[3313829]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313829]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313830] = {}
	-- ===本服南瓜头2-3名礼盒
	-- ===索引: tHalloweenReward_Award[3313830]
	-- ===删除:3313830,1
	tHalloweenReward_Award[3313830]["LogId"] = 12001660
	tHalloweenReward_Award[3313830]["DeleteItem"] = {}
	tHalloweenReward_Award[3313830]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313830]["DeleteItem"][1]["Id"] = 3313830 -- 【库】本服南瓜头2-3名礼盒[属性:9]
	tHalloweenReward_Award[3313830]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313830]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000气力值
	tHalloweenReward_Award[3313830]["RewardItem"] = {}
	tHalloweenReward_Award[3313830]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313830]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tHalloweenReward_Award[3313830]["RewardItem"][1]["Attr"] = "0 1000 3" -- 万能神纹精粹（赠）*1000（[错误]物品数量超100个）
	tHalloweenReward_Award[3313830]["RewardEffect"] = {}
	tHalloweenReward_Award[3313830]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313830]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313831] = {}
	-- ===本服南瓜头4-6名礼盒
	-- ===索引: tHalloweenReward_Award[3313831]
	-- ===删除:3313831,1
	tHalloweenReward_Award[3313831]["LogId"] = 12001660
	tHalloweenReward_Award[3313831]["DeleteItem"] = {}
	tHalloweenReward_Award[3313831]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313831]["DeleteItem"][1]["Id"] = 3313831 -- 【库】本服南瓜头4-6名礼盒[属性:9]
	tHalloweenReward_Award[3313831]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313831]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tHalloweenReward_Award[3313831]["RewardItem"] = {}
	tHalloweenReward_Award[3313831]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313831]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tHalloweenReward_Award[3313831]["RewardItem"][1]["Attr"] = "0 800 3" -- 万能神纹精粹（赠）*800（[错误]物品数量超100个）
	tHalloweenReward_Award[3313831]["RewardEffect"] = {}
	tHalloweenReward_Award[3313831]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313831]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313832] = {}
	-- ===本服南瓜头7-10名礼盒
	-- ===索引: tHalloweenReward_Award[3313832]
	-- ===删除:3313832,1
	tHalloweenReward_Award[3313832]["LogId"] = 12001660
	tHalloweenReward_Award[3313832]["DeleteItem"] = {}
	tHalloweenReward_Award[3313832]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313832]["DeleteItem"][1]["Id"] = 3313832 -- 【库】本服南瓜头7-10名礼盒[属性:9]
	tHalloweenReward_Award[3313832]["RewardStrengthValue"] = {}
	tHalloweenReward_Award[3313832]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tHalloweenReward_Award[3313832]["RewardItem"] = {}
	tHalloweenReward_Award[3313832]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313832]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】500万能神纹精粹
	tHalloweenReward_Award[3313832]["RewardItem"][1]["Attr"] = "0 500 3" -- 万能神纹精粹（赠）*500（[错误]物品数量超100个）
	tHalloweenReward_Award[3313832]["RewardEffect"] = {}
	tHalloweenReward_Award[3313832]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313832]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313833] = {}
	-- ===全球南瓜头冠军礼盒
	-- ===索引: tHalloweenReward_Award[3313833]
	-- ===删除:3313833,1
	tHalloweenReward_Award[3313833]["LogId"] = 12001660
	tHalloweenReward_Award[3313833]["DeleteItem"] = {}
	tHalloweenReward_Award[3313833]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313833]["DeleteItem"][1]["Id"] = 3313833 -- 【库】全球南瓜头冠军礼盒[属性:9]
	tHalloweenReward_Award[3313833]["RewardItem"] = {}
	tHalloweenReward_Award[3313833]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313833]["RewardItem"][1]["Id"] = 3314147 -- 1年时效猎魂者光效武器外套礼盒[3314147][属性:8][叠加:0][金币:0], 【表格】1年时效猎魂者光效武器外套礼盒
	tHalloweenReward_Award[3313833]["RewardItem"][1]["Attr"] = "0 1" -- 1年时效猎魂者光效武器外套礼盒*1
	tHalloweenReward_Award[3313833]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313833]["RewardItem"][2]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】万圣节外套永久光效版
	tHalloweenReward_Award[3313833]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1" -- 惊情圣夜·狂欢*1
	tHalloweenReward_Award[3313833]["RewardItem"][3] = {}
	tHalloweenReward_Award[3313833]["RewardItem"][3]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tHalloweenReward_Award[3313833]["RewardItem"][3]["Attr"] = "0 1" -- 12阶灵珠*1
	tHalloweenReward_Award[3313833]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHalloweenReward_Award[3313833]["RewardEffect"] = {}
	tHalloweenReward_Award[3313833]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313833]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313834] = {}
	-- ===全球南瓜头亚军礼盒
	-- ===索引: tHalloweenReward_Award[3313834]
	-- ===删除:3313834,1
	tHalloweenReward_Award[3313834]["LogId"] = 12001660
	tHalloweenReward_Award[3313834]["DeleteItem"] = {}
	tHalloweenReward_Award[3313834]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313834]["DeleteItem"][1]["Id"] = 3313834 -- 【库】全球南瓜头亚军礼盒[属性:9]
	tHalloweenReward_Award[3313834]["RewardItem"] = {}
	tHalloweenReward_Award[3313834]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313834]["RewardItem"][1]["Id"] = 3314148 -- 180天时效猎魂者光效武器外套礼盒[3314148][属性:8][叠加:0][金币:0], 【表格】180天时效猎魂者光效武器外套礼盒
	tHalloweenReward_Award[3313834]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效猎魂者光效武器外套礼盒*1
	tHalloweenReward_Award[3313834]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313834]["RewardItem"][2]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】1年时效万圣外套永久光效版
	tHalloweenReward_Award[3313834]["RewardItem"][2]["Attr"] = "0 1 0 525600 1 0 0 1" -- 365天时效(激活)的惊情圣夜·狂欢*1
	tHalloweenReward_Award[3313834]["RewardItem"][3] = {}
	tHalloweenReward_Award[3313834]["RewardItem"][3]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tHalloweenReward_Award[3313834]["RewardItem"][3]["Attr"] = "0 1" -- 11阶灵珠*1
	tHalloweenReward_Award[3313834]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHalloweenReward_Award[3313834]["RewardEffect"] = {}
	tHalloweenReward_Award[3313834]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313834]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313835] = {}
	-- ===全球南瓜头季军礼盒
	-- ===索引: tHalloweenReward_Award[3313835]
	-- ===删除:3313835,1
	tHalloweenReward_Award[3313835]["LogId"] = 12001660
	tHalloweenReward_Award[3313835]["DeleteItem"] = {}
	tHalloweenReward_Award[3313835]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313835]["DeleteItem"][1]["Id"] = 3313835 -- 【库】全球南瓜头季军礼盒[属性:9]
	tHalloweenReward_Award[3313835]["RewardItem"] = {}
	tHalloweenReward_Award[3313835]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313835]["RewardItem"][1]["Id"] = 3314149 -- 90天时效猎魂者光效武器外套礼盒[3314149][属性:8][叠加:0][金币:0], 【表格】90天时效猎魂者光效武器外套礼盒
	tHalloweenReward_Award[3313835]["RewardItem"][1]["Attr"] = "0 1" -- 90天时效猎魂者光效武器外套礼盒*1
	tHalloweenReward_Award[3313835]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313835]["RewardItem"][2]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】180天时效万圣外套永久光效版
	tHalloweenReward_Award[3313835]["RewardItem"][2]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的惊情圣夜·狂欢*1
	tHalloweenReward_Award[3313835]["RewardItem"][3] = {}
	tHalloweenReward_Award[3313835]["RewardItem"][3]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tHalloweenReward_Award[3313835]["RewardItem"][3]["Attr"] = "0 1" -- 10阶灵珠*1
	tHalloweenReward_Award[3313835]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHalloweenReward_Award[3313835]["RewardEffect"] = {}
	tHalloweenReward_Award[3313835]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313835]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313836] = {}
	-- ===全球南瓜头强者礼盒
	-- ===索引: tHalloweenReward_Award[3313836]
	-- ===删除:3313836,1
	tHalloweenReward_Award[3313836]["LogId"] = 12001660
	tHalloweenReward_Award[3313836]["DeleteItem"] = {}
	tHalloweenReward_Award[3313836]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313836]["DeleteItem"][1]["Id"] = 3313836 -- 【库】全球南瓜头强者礼盒[属性:9]
	tHalloweenReward_Award[3313836]["RewardItem"] = {}
	tHalloweenReward_Award[3313836]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313836]["RewardItem"][1]["Id"] = 3314150 -- 60天时效猎魂者光效武器外套礼盒[3314150][属性:8][叠加:0][金币:0], 【表格】60天时效猎魂者光效武器外套礼盒
	tHalloweenReward_Award[3313836]["RewardItem"][1]["Attr"] = "0 1" -- 60天时效猎魂者光效武器外套礼盒*1
	tHalloweenReward_Award[3313836]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313836]["RewardItem"][2]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】90天时效万圣外套永久光效版
	tHalloweenReward_Award[3313836]["RewardItem"][2]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的惊情圣夜·狂欢*1
	tHalloweenReward_Award[3313836]["RewardItem"][3] = {}
	tHalloweenReward_Award[3313836]["RewardItem"][3]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tHalloweenReward_Award[3313836]["RewardItem"][3]["Attr"] = "0 1" -- 9阶灵珠*1
	tHalloweenReward_Award[3313836]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHalloweenReward_Award[3313836]["RewardEffect"] = {}
	tHalloweenReward_Award[3313836]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313836]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313837] = {}
	-- ===全球南瓜头精英礼盒
	-- ===索引: tHalloweenReward_Award[3313837]
	-- ===删除:3313837,1
	tHalloweenReward_Award[3313837]["LogId"] = 12001660
	tHalloweenReward_Award[3313837]["DeleteItem"] = {}
	tHalloweenReward_Award[3313837]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313837]["DeleteItem"][1]["Id"] = 3313837 -- 【库】全球南瓜头精英礼盒[属性:9]
	tHalloweenReward_Award[3313837]["RewardItem"] = {}
	tHalloweenReward_Award[3313837]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313837]["RewardItem"][1]["Id"] = 3314151 -- 30天时效猎魂者光效武器外套礼盒[3314151][属性:8][叠加:0][金币:0], 【表格】30天时效猎魂者光效武器外套礼盒
	tHalloweenReward_Award[3313837]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效猎魂者光效武器外套礼盒*1
	tHalloweenReward_Award[3313837]["RewardItem"][2] = {}
	tHalloweenReward_Award[3313837]["RewardItem"][2]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】60天时效万圣外套永久光效版
	tHalloweenReward_Award[3313837]["RewardItem"][2]["Attr"] = "0 1 0 86400 1 0 0 1" -- 60天时效(激活)的惊情圣夜·狂欢*1
	tHalloweenReward_Award[3313837]["RewardItem"][3] = {}
	tHalloweenReward_Award[3313837]["RewardItem"][3]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tHalloweenReward_Award[3313837]["RewardItem"][3]["Attr"] = "0 1" -- 8阶灵珠*1
	tHalloweenReward_Award[3313837]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHalloweenReward_Award[3313837]["RewardEffect"] = {}
	tHalloweenReward_Award[3313837]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313837]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313814] = {}
	-- ===迈克尔·麦尔斯时装碎片（1个）
	-- ===索引: tHalloweenReward_Award[3313814][1]
	tHalloweenReward_Award[3313814][1] = {}
	tHalloweenReward_Award[3313814][1]["ItemChanceSum"] = 10000
	tHalloweenReward_Award[3313814][1]["LogId"] = 12001660
	-- 迈克尔·麦尔斯时装碎片 - 49%
	tHalloweenReward_Award[3313814][1][1] = {}
	tHalloweenReward_Award[3313814][1][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313814][1][1]["ItemChance"] = 4900
	tHalloweenReward_Award[3313814][1][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313814][1][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313814][1][1]["RewardItem"][1]["Id"] = 3313814 -- 迈克尔·麦尔斯时装碎片[3313814][属性:9][叠加:100][金币:0], 【表格】迈克尔·麦尔斯时装碎片
	tHalloweenReward_Award[3313814][1][1]["RewardItem"][1]["Attr"] = "0 2" -- 迈克尔·麦尔斯时装碎片*2
	tHalloweenReward_Award[3313814][1][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313814][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313814][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 51%
	tHalloweenReward_Award[3313814][1][2] = {}
	tHalloweenReward_Award[3313814][1][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313814][1][2]["ItemChance"] = 5100


	tHalloweenReward_Award[3313814][2] = {}
	-- ===迈克尔·麦尔斯时装碎片（20）
	-- ===索引: tHalloweenReward_Award[3313814][2]
	-- ===删除:3313814,20
	tHalloweenReward_Award[3313814][2]["LogId"] = 12001660
	tHalloweenReward_Award[3313814][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3313814][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313814][2]["DeleteItem"][1]["Id"] = 3313814 -- 【库】迈克尔·麦尔斯时装碎片[属性:9]
	tHalloweenReward_Award[3313814][2]["DeleteItem"][1]["ItemNum"] = 20
	tHalloweenReward_Award[3313814][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313814][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313814][2]["RewardItem"][1]["Id"] = 191075 -- 迈克尔·麦尔斯外套[191075][属性:0][叠加:0][金币:0], 【表格】迈克尔·麦尔斯时装外套（赠）
	tHalloweenReward_Award[3313814][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑迈克尔·麦尔斯外套（赠）*1
	tHalloweenReward_Award[3313814][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313814][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313814][2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313816] = {}
	-- ===惊情圣夜碎片1个）
	-- ===索引: tHalloweenReward_Award[3313816][1]
	tHalloweenReward_Award[3313816][1] = {}
	tHalloweenReward_Award[3313816][1]["ItemChanceSum"] = 10000
	tHalloweenReward_Award[3313816][1]["LogId"] = 12001660
	-- 惊情圣夜碎片 - 49%
	tHalloweenReward_Award[3313816][1][1] = {}
	tHalloweenReward_Award[3313816][1][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313816][1][1]["ItemChance"] = 4900
	tHalloweenReward_Award[3313816][1][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313816][1][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313816][1][1]["RewardItem"][1]["Id"] = 3313816 -- 惊情圣夜碎片[3313816][属性:9][叠加:100][金币:0], 【表格】惊情圣夜碎片
	tHalloweenReward_Award[3313816][1][1]["RewardItem"][1]["Attr"] = "0 2" -- 惊情圣夜碎片*2
	tHalloweenReward_Award[3313816][1][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313816][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313816][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 51%
	tHalloweenReward_Award[3313816][1][2] = {}
	tHalloweenReward_Award[3313816][1][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313816][1][2]["ItemChance"] = 5100
	
	-- ===【万圣节时装外套名】碎片（30）
	-- ===索引: tHalloweenReward_Award[3313816][30]
	-- ===删除:3313816,30
	tHalloweenReward_Award[3313816][30] = {}
	tHalloweenReward_Award[3313816][30]["LogId"] = 12001660
	tHalloweenReward_Award[3313816][30]["DeleteItem"] = {}
	tHalloweenReward_Award[3313816][30]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313816][30]["DeleteItem"][1]["Id"] = 3313816 -- 【库】【万圣节时装外套名】碎片[属性:9]
	tHalloweenReward_Award[3313816][30]["DeleteItem"][1]["ItemNum"] = 30
	tHalloweenReward_Award[3313816][30]["RewardItem"] = {}
	tHalloweenReward_Award[3313816][30]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313816][30]["RewardItem"][1]["Id"] = 191085 -- 万圣外套[191085][属性:0][叠加:0][金币:0], 【表格】【万圣节时装外套名】时装外套（赠）
	tHalloweenReward_Award[3313816][30]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑万圣外套（赠）*1
	tHalloweenReward_Award[3313816][30]["RewardEffect"] = {}
	tHalloweenReward_Award[3313816][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313816][30]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3313816][100] = {}
	-- ===【万圣节时装外套名】碎片（100）
	-- ===索引: tHalloweenReward_Award[3313816][100]
	-- ===删除:3313816,100
	tHalloweenReward_Award[3313816][100]["LogId"] = 12001660
	tHalloweenReward_Award[3313816][100]["DeleteItem"] = {}
	tHalloweenReward_Award[3313816][100]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313816][100]["DeleteItem"][1]["Id"] = 3313816 -- 【库】【万圣节时装外套名】碎片[属性:9]
	tHalloweenReward_Award[3313816][100]["DeleteItem"][1]["ItemNum"] = 100
	tHalloweenReward_Award[3313816][100]["RewardItem"] = {}
	tHalloweenReward_Award[3313816][100]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313816][100]["RewardItem"][1]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】【万圣节光效外套名】时装外套（赠）
	tHalloweenReward_Award[3313816][100]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑惊情圣夜·狂欢（赠）*1
	tHalloweenReward_Award[3313816][100]["RewardEffect"] = {}
	tHalloweenReward_Award[3313816][100]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313816][100]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3313815] = {}
	-- ===“麦尔斯的厨刀”碎片
	-- ===索引: tHalloweenReward_Award[3313815]
	-- ===删除:3313815,10
	tHalloweenReward_Award[3313815]["LogId"] = 12001660
	tHalloweenReward_Award[3313815]["DeleteItem"] = {}
	tHalloweenReward_Award[3313815]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313815]["DeleteItem"][1]["Id"] = 3313815 -- 【库】“麦尔斯的厨刀”碎片[属性:9]
	tHalloweenReward_Award[3313815]["DeleteItem"][1]["ItemNum"] = 10
	tHalloweenReward_Award[3313815]["RewardItem"] = {}
	tHalloweenReward_Award[3313815]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313815]["RewardItem"][1]["Id"] = 360044 -- 麦尔斯的厨刀[360044][属性:0][叠加:0][金币:0], 【表格】麦尔斯的厨刀武器外套（赠）
	tHalloweenReward_Award[3313815]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑麦尔斯的厨刀（赠）*1
	tHalloweenReward_Award[3313815]["RewardEffect"] = {}
	tHalloweenReward_Award[3313815]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313815]["RewardEffect"]["Effect"] = "angelwing"

	-- tHalloweenReward_Award["Hair"] = {}
	-- -- ===迈克尔·麦尔斯发型
	-- -- ===索引: tHalloweenReward_Award["Hair"]
	-- tHalloweenReward_Award["Hair"]["LogId"] = 12001660
	-- tHalloweenReward_Award["Hair"]["RewardItem"] = {}
	-- tHalloweenReward_Award["Hair"]["RewardItem"][1] = {}
	-- tHalloweenReward_Award["Hair"]["RewardItem"][1]["Id"] = 3313838 -- 迈克尔·麦尔斯发型[3313838][属性:9][叠加:1][金币:0], 【表格】迈克尔·麦尔斯发型
	-- tHalloweenReward_Award["Hair"]["RewardItem"][1]["Attr"] = "0 1 3" -- 迈克尔·麦尔斯发型（赠）*1
	-- tHalloweenReward_Award["Hair"]["RewardEffect"] = {}
	-- tHalloweenReward_Award["Hair"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tHalloweenReward_Award["Hair"]["RewardEffect"]["Effect"] = "angelwing"
	
	tHalloweenReward_Award["Coat"] = {}
	-- ===惊情圣夜·狂欢
	-- ===索引: tHalloweenReward_Award["Coat"]
	tHalloweenReward_Award["Coat"]["LogId"] = 12001660
	tHalloweenReward_Award["Coat"]["RewardItem"] = {}
	tHalloweenReward_Award["Coat"]["RewardItem"][1] = {}
	tHalloweenReward_Award["Coat"]["RewardItem"][1]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】惊情圣夜·狂欢
	tHalloweenReward_Award["Coat"]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑惊情圣夜·狂欢（赠）*1
	tHalloweenReward_Award["Coat"]["RewardEffect"] = {}
	tHalloweenReward_Award["Coat"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["Coat"]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award["OutTime"] = {}
	-- ===“麦尔斯的厨刀”碎片（过期）
	-- ===索引: tHalloweenReward_Award["OutTime"][3313815]
	-- ===删除:3313815,1
	tHalloweenReward_Award["OutTime"][3313815] = {}
	tHalloweenReward_Award["OutTime"][3313815]["LogId"] = 12001660
	tHalloweenReward_Award["OutTime"][3313815]["DeleteItem"] = {}
	tHalloweenReward_Award["OutTime"][3313815]["DeleteItem"][1] = {}
	tHalloweenReward_Award["OutTime"][3313815]["DeleteItem"][1]["Id"] = 3313815 -- 【库】“麦尔斯的厨刀”碎片[属性:9]
	tHalloweenReward_Award["OutTime"][3313815]["DeleteItem"][1]["ItemNum"] = 1
	tHalloweenReward_Award["OutTime"][3313815]["RewardStrengthValue"] = {}
	tHalloweenReward_Award["OutTime"][3313815]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tHalloweenReward_Award["OutTime"][3313815]["RewardEffect"] = {}
	tHalloweenReward_Award["OutTime"][3313815]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["OutTime"][3313815]["RewardEffect"]["Effect"] = "angelwing"
	
	tHalloweenReward_Award["OutTime"][3313799] = {}
	-- ===南瓜币（过期）
	-- ===索引: tHalloweenReward_Award["OutTime"][3313799]
	-- ===删除:3313799,1
	tHalloweenReward_Award["OutTime"][3313799]["LogId"] = 12001660
	tHalloweenReward_Award["OutTime"][3313799]["DeleteItem"] = {}
	tHalloweenReward_Award["OutTime"][3313799]["DeleteItem"][1] = {}
	tHalloweenReward_Award["OutTime"][3313799]["DeleteItem"][1]["Id"] = 3313799 -- 【库】南瓜币[属性:11]
	tHalloweenReward_Award["OutTime"][3313799]["DeleteItem"][1]["ItemNum"] = 1
	tHalloweenReward_Award["OutTime"][3313799]["RewardStrengthValue"] = {}
	tHalloweenReward_Award["OutTime"][3313799]["RewardStrengthValue"]["Value"] = 1 -- 气力值, 【需求】1气力值
	tHalloweenReward_Award["OutTime"][3313799]["RewardEffect"] = {}
	tHalloweenReward_Award["OutTime"][3313799]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["OutTime"][3313799]["RewardEffect"]["Effect"] = "angelwing"
	
	tHalloweenReward_Award["OutTime"][3313814] = {}
	-- ===迈克尔·麦尔斯时装碎片（过期）
	-- ===索引: tHalloweenReward_Award["OutTime"][3313814]
	-- ===删除:3313814,1
	tHalloweenReward_Award["OutTime"][3313814]["LogId"] = 12001660
	tHalloweenReward_Award["OutTime"][3313814]["DeleteItem"] = {}
	tHalloweenReward_Award["OutTime"][3313814]["DeleteItem"][1] = {}
	tHalloweenReward_Award["OutTime"][3313814]["DeleteItem"][1]["Id"] = 3313814 -- 【库】迈克尔·麦尔斯时装碎片[属性:9]
	tHalloweenReward_Award["OutTime"][3313814]["DeleteItem"][1]["ItemNum"] = 1
	tHalloweenReward_Award["OutTime"][3313814]["RewardStrengthValue"] = {}
	tHalloweenReward_Award["OutTime"][3313814]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tHalloweenReward_Award["OutTime"][3313814]["RewardEffect"] = {}
	tHalloweenReward_Award["OutTime"][3313814]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["OutTime"][3313814]["RewardEffect"]["Effect"] = "angelwing"
	
	tHalloweenReward_Award["OutTime"][3313816] = {}
	-- ===【万圣节时装外套名】碎片（过期）
	-- ===索引: tHalloweenReward_Award["OutTime"][3313816]
	-- ===删除:3313816,1
	tHalloweenReward_Award["OutTime"][3313816]["LogId"] = 12001660
	tHalloweenReward_Award["OutTime"][3313816]["DeleteItem"] = {}
	tHalloweenReward_Award["OutTime"][3313816]["DeleteItem"][1] = {}
	tHalloweenReward_Award["OutTime"][3313816]["DeleteItem"][1]["Id"] = 3313816 -- 【库】【万圣节时装外套名】碎片[属性:9]
	tHalloweenReward_Award["OutTime"][3313816]["DeleteItem"][1]["ItemNum"] = 1
	tHalloweenReward_Award["OutTime"][3313816]["RewardStrengthValue"] = {}
	tHalloweenReward_Award["OutTime"][3313816]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tHalloweenReward_Award["OutTime"][3313816]["RewardEffect"] = {}
	tHalloweenReward_Award["OutTime"][3313816]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award["OutTime"][3313816]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3313840] = {}
	-- ===异国糖果礼包
	-- ===索引: tHalloweenReward_Award[3313840]
	-- ===删除:3313840,1
	-- ===
	tHalloweenReward_Award[3313840]["LogId"] = 12001660
	tHalloweenReward_Award[3313840]["DeleteItem"] = {}
	tHalloweenReward_Award[3313840]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313840]["DeleteItem"][1]["Id"] = 3313840 -- 【库】异国糖果礼包[属性:9]
	tHalloweenReward_Award[3313840]["DeleteItem"][1]["ItemNum"] = 1
	tHalloweenReward_Award[3313840]["RewardItem"] = {}
	tHalloweenReward_Award[3313840]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313840]["RewardItem"][1]["Id"] = 3600166 -- 【中文】鬼怪糖果[3600166][属性:9][叠加:1000][金币:0], 【表格】【中文】鬼怪糖果
	tHalloweenReward_Award[3313840]["RewardItem"][1]["Attr"] = "0 3 " -- 【中文】鬼怪糖果*3
	tHalloweenReward_Award[3313840]["RewardEffect"] = {}
	tHalloweenReward_Award[3313840]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313840]["RewardEffect"]["Effect"] = "angelwing"
	


	tHalloweenReward_Award[3313841] = {}
	-- ===万圣光效外套礼包
	-- ===索引: tHalloweenReward_Award[3313841]
	-- ===删除:3313841,1
	-- ===
	tHalloweenReward_Award[3313841]["LogId"] = 12001660
	tHalloweenReward_Award[3313841]["DeleteItem"] = {}
	tHalloweenReward_Award[3313841]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313841]["DeleteItem"][1]["Id"] = 3313841 -- 【库】万圣光效外套礼包[属性:9]
	tHalloweenReward_Award[3313841]["RewardItem"] = {}
	tHalloweenReward_Award[3313841]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313841]["RewardItem"][1]["Id"] = 191095 -- 惊情圣夜·狂欢[191095][属性:0][叠加:0][金币:0], 【表格】惊情圣夜·狂欢
	tHalloweenReward_Award[3313841]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑惊情圣夜·狂欢*1
	tHalloweenReward_Award[3313841]["RewardEffect"] = {}
	tHalloweenReward_Award[3313841]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313841]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===南瓜糕点随机包
	-- ===索引: tHalloweenReward_Award[3313838]
	-- ===删除:3313838,1
	-- ===
	-- ===
	tHalloweenReward_Award[3313838] = {}
	tHalloweenReward_Award[3313838]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313838]["DeleteItem"] = {}
	tHalloweenReward_Award[3313838]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313838]["DeleteItem"][1]["Id"] = 3313838 -- 【库】南瓜糕点随机包[属性:9]
	tHalloweenReward_Award[3313838]["LogId"] = 12001660
	-- 50个南瓜糕点 - 10%
	tHalloweenReward_Award[3313838][1] = {}
	tHalloweenReward_Award[3313838][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313838][1]["ItemChance"] = 1000
	tHalloweenReward_Award[3313838][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313838][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313838][1]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】50个南瓜糕点
	tHalloweenReward_Award[3313838][1]["RewardItem"][1]["Attr"] = "0 50" -- 南瓜糕点（赠）*50（[错误]物品数量超10个）
	tHalloweenReward_Award[3313838][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313838][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313838][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 80个南瓜糕点 - 25%
	tHalloweenReward_Award[3313838][2] = {}
	tHalloweenReward_Award[3313838][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313838][2]["ItemChance"] = 2500
	tHalloweenReward_Award[3313838][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313838][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313838][2]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】80个南瓜糕点
	tHalloweenReward_Award[3313838][2]["RewardItem"][1]["Attr"] = "0 80" -- 南瓜糕点（赠）*80（[错误]物品数量超10个）
	tHalloweenReward_Award[3313838][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313838][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313838][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100个南瓜糕点 - 50%
	tHalloweenReward_Award[3313838][3] = {}
	tHalloweenReward_Award[3313838][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313838][3]["ItemChance"] = 5000
	tHalloweenReward_Award[3313838][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313838][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313838][3]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】100个南瓜糕点
	tHalloweenReward_Award[3313838][3]["RewardItem"][1]["Attr"] = "0 100" -- 南瓜糕点（赠）*100（[错误]物品数量超10个）
	tHalloweenReward_Award[3313838][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313838][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313838][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 150个南瓜糕点 - 10%
	tHalloweenReward_Award[3313838][4] = {}
	tHalloweenReward_Award[3313838][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313838][4]["ItemChance"] = 1000
	tHalloweenReward_Award[3313838][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313838][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313838][4]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】150个南瓜糕点
	tHalloweenReward_Award[3313838][4]["RewardItem"][1]["Attr"] = "0 150" -- 南瓜糕点（赠）*150（[错误]物品数量超10个）
	tHalloweenReward_Award[3313838][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313838][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313838][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 200个南瓜糕点 - 5%
	tHalloweenReward_Award[3313838][5] = {}
	tHalloweenReward_Award[3313838][5]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313838][5]["ItemChance"] = 500
	tHalloweenReward_Award[3313838][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313838][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313838][5]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】200个南瓜糕点
	tHalloweenReward_Award[3313838][5]["RewardItem"][1]["Attr"] = "0 200" -- 南瓜糕点（赠）*200（[错误]物品数量超10个）
	tHalloweenReward_Award[3313838][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313838][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313838][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3313839] = {}
	-- ===本语种糖果随机包
	-- ===索引: tHalloweenReward_Award[3313839]
	-- ===删除:3313839,1
	-- ===
	-- ===
	tHalloweenReward_Award[3313839]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenReward_Award[3313839]["DeleteItem"] = {}
	tHalloweenReward_Award[3313839]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3313839]["DeleteItem"][1]["Id"] = 3313839 -- 【库】本语种糖果随机包[属性:9]
	tHalloweenReward_Award[3313839]["LogId"] = 12001660
	-- 50个【英文】鬼怪糖果 - 10%
	tHalloweenReward_Award[3313839][1] = {}
	tHalloweenReward_Award[3313839][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313839][1]["ItemChance"] = 1000
	tHalloweenReward_Award[3313839][1]["RewardItem"] = {}
	tHalloweenReward_Award[3313839][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313839][1]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3313839][1]["RewardItem"][1]["Attr"] = "0 50" -- 【英文】鬼怪糖果*50（[错误]物品数量超10个）
	tHalloweenReward_Award[3313839][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3313839][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313839][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 80个【英文】鬼怪糖果 - 25%
	tHalloweenReward_Award[3313839][2] = {}
	tHalloweenReward_Award[3313839][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313839][2]["ItemChance"] = 2500
	tHalloweenReward_Award[3313839][2]["RewardItem"] = {}
	tHalloweenReward_Award[3313839][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313839][2]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3313839][2]["RewardItem"][1]["Attr"] = "0 80" -- 【英文】鬼怪糖果*80（[错误]物品数量超10个）
	tHalloweenReward_Award[3313839][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3313839][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313839][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100个【英文】鬼怪糖果 - 50%
	tHalloweenReward_Award[3313839][3] = {}
	tHalloweenReward_Award[3313839][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313839][3]["ItemChance"] = 5000
	tHalloweenReward_Award[3313839][3]["RewardItem"] = {}
	tHalloweenReward_Award[3313839][3]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313839][3]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3313839][3]["RewardItem"][1]["Attr"] = "0 100" -- 【英文】鬼怪糖果*100（[错误]物品数量超10个）
	tHalloweenReward_Award[3313839][3]["RewardEffect"] = {}
	tHalloweenReward_Award[3313839][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313839][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 150个【英文】鬼怪糖果 - 10%
	tHalloweenReward_Award[3313839][4] = {}
	tHalloweenReward_Award[3313839][4]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313839][4]["ItemChance"] = 1000
	tHalloweenReward_Award[3313839][4]["RewardItem"] = {}
	tHalloweenReward_Award[3313839][4]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313839][4]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3313839][4]["RewardItem"][1]["Attr"] = "0 150" -- 【英文】鬼怪糖果*150（[错误]物品数量超10个）
	tHalloweenReward_Award[3313839][4]["RewardEffect"] = {}
	tHalloweenReward_Award[3313839][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313839][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 200个【英文】鬼怪糖果 - 5%
	tHalloweenReward_Award[3313839][5] = {}
	tHalloweenReward_Award[3313839][5]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[3313839][5]["ItemChance"] = 500
	tHalloweenReward_Award[3313839][5]["RewardItem"] = {}
	tHalloweenReward_Award[3313839][5]["RewardItem"][1] = {}
	tHalloweenReward_Award[3313839][5]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3313839][5]["RewardItem"][1]["Attr"] = "0 200" -- 【英文】鬼怪糖果*200（[错误]物品数量超10个）
	tHalloweenReward_Award[3313839][5]["RewardEffect"] = {}
	tHalloweenReward_Award[3313839][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3313839][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3314147] = {}
	-- ===1年时效猎魂者武器外套礼盒（长武器）
	-- ===索引: tHalloweenReward_Award[3314147][1]
	-- ===删除:3314147,1
	tHalloweenReward_Award[3314147][1] = {}
	tHalloweenReward_Award[3314147][1]["LogId"] = 12001660
	tHalloweenReward_Award[3314147][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3314147][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314147][1]["DeleteItem"][1]["Id"] = 3314147 -- 【库】1年时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314147][1]["RewardItem"] = {}
	tHalloweenReward_Award[3314147][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314147][1]["RewardItem"][1]["Id"] = 350169 -- 猎魂者·惊梦（长武）[350169][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314147][1]["RewardItem"][1]["Attr"] = "0 1 0 525600 1 0 0 1" -- 365天激活时效1%神佑猎魂者·惊梦（长武）*1
	tHalloweenReward_Award[3314147][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3314147][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314147][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3314147][2] = {}
	-- ===1年时效猎魂者武器外套礼盒（短武器）
	-- ===索引: tHalloweenReward_Award[3314147][2]
	-- ===删除:3314147,1
	tHalloweenReward_Award[3314147][2]["LogId"] = 12001660
	tHalloweenReward_Award[3314147][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3314147][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314147][2]["DeleteItem"][1]["Id"] = 3314147 -- 【库】1年时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314147][2]["RewardItem"] = {}
	tHalloweenReward_Award[3314147][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314147][2]["RewardItem"][1]["Id"] = 360306 -- 猎魂者·惊梦（短武）[360306][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314147][2]["RewardItem"][1]["Attr"] = "0 2 0 525600 1 0 0 1" -- 365天激活时效1%神佑猎魂者·惊梦（短武）*2
	tHalloweenReward_Award[3314147][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3314147][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314147][2]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3314148] = {}
	-- ===180天时效猎魂者武器外套礼盒（长武器）
	-- ===索引: tHalloweenReward_Award[3314148][1]
	-- ===删除:3314148,1
	tHalloweenReward_Award[3314148][1] = {}
	tHalloweenReward_Award[3314148][1]["LogId"] = 12001660
	tHalloweenReward_Award[3314148][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3314148][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314148][1]["DeleteItem"][1]["Id"] = 3314148 -- 【库】180天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314148][1]["RewardItem"] = {}
	tHalloweenReward_Award[3314148][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314148][1]["RewardItem"][1]["Id"] = 350169 -- 猎魂者·惊梦（长武）[350169][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314148][1]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天激活时效1%神佑猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314148][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3314148][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314148][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3314148][2] = {}
	-- ===180天时效猎魂者武器外套礼盒（短武器）
	-- ===索引: tHalloweenReward_Award[3314148][2]
	-- ===删除:3314148,1
	tHalloweenReward_Award[3314148][2]["LogId"] = 12001660
	tHalloweenReward_Award[3314148][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3314148][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314148][2]["DeleteItem"][1]["Id"] = 3314148 -- 【库】180天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314148][2]["RewardItem"] = {}
	tHalloweenReward_Award[3314148][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314148][2]["RewardItem"][1]["Id"] = 360306 -- 猎魂者·惊梦（短武）[360306][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314148][2]["RewardItem"][1]["Attr"] = "0 2 0 259200 1 0 0 1" -- 180天激活时效1%神佑猎魂者·惊梦（短武）*2
	tHalloweenReward_Award[3314148][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3314148][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314148][2]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3314149] = {}
	-- ===90天时效猎魂者武器外套礼盒（长武器）
	-- ===索引: tHalloweenReward_Award[3314149][1]
	-- ===删除:3314149,1
	tHalloweenReward_Award[3314149][1] = {}
	tHalloweenReward_Award[3314149][1]["LogId"] = 12001660
	tHalloweenReward_Award[3314149][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3314149][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314149][1]["DeleteItem"][1]["Id"] = 3314149 -- 【库】90天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314149][1]["RewardItem"] = {}
	tHalloweenReward_Award[3314149][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314149][1]["RewardItem"][1]["Id"] = 350169 -- 猎魂者·惊梦（长武）[350169][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314149][1]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天激活时效1%神佑猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314149][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3314149][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314149][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3314149][2] = {}
	-- ===90天时效猎魂者武器外套礼盒（短武器）
	-- ===索引: tHalloweenReward_Award[3314149][2]
	-- ===删除:3314149,1
	tHalloweenReward_Award[3314149][2]["LogId"] = 12001660
	tHalloweenReward_Award[3314149][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3314149][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314149][2]["DeleteItem"][1]["Id"] = 3314149 -- 【库】90天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314149][2]["RewardItem"] = {}
	tHalloweenReward_Award[3314149][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314149][2]["RewardItem"][1]["Id"] = 360306 -- 猎魂者·惊梦（短武）[360306][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314149][2]["RewardItem"][1]["Attr"] = "0 2 0 129600 1 0 0 1" -- 90天激活时效1%神佑猎魂者·惊梦（短武）*2
	tHalloweenReward_Award[3314149][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3314149][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314149][2]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3314150] = {}
	-- ===60天时效猎魂者武器外套礼盒（长武器）
	-- ===索引: tHalloweenReward_Award[3314150][1]
	-- ===删除:3314150,1
	tHalloweenReward_Award[3314150][1] = {}
	tHalloweenReward_Award[3314150][1]["LogId"] = 12001660
	tHalloweenReward_Award[3314150][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3314150][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314150][1]["DeleteItem"][1]["Id"] = 3314150 -- 【库】60天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314150][1]["RewardItem"] = {}
	tHalloweenReward_Award[3314150][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314150][1]["RewardItem"][1]["Id"] = 350169 -- 猎魂者·惊梦（长武）[350169][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314150][1]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1" -- 60天激活时效1%神佑猎魂者·惊梦（长武）*2
	tHalloweenReward_Award[3314150][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3314150][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314150][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3314150][2] = {}
	-- ===60天时效猎魂者武器外套礼盒（短武器）
	-- ===索引: tHalloweenReward_Award[3314150][2]
	-- ===删除:3314150,1
	tHalloweenReward_Award[3314150][2]["LogId"] = 12001660
	tHalloweenReward_Award[3314150][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3314150][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314150][2]["DeleteItem"][1]["Id"] = 3314150 -- 【库】60天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314150][2]["RewardItem"] = {}
	tHalloweenReward_Award[3314150][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314150][2]["RewardItem"][1]["Id"] = 360306 -- 猎魂者·惊梦（短武）[360306][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314150][2]["RewardItem"][1]["Attr"] = "0 2 0 86400 1 0 0 1" -- 60天激活时效1%神佑猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314150][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3314150][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314150][2]["RewardEffect"]["Effect"] = "angelwing"

	tHalloweenReward_Award[3314151] = {}
	-- ===30天时效猎魂者武器外套礼盒（长武器）
	-- ===索引: tHalloweenReward_Award[3314151][1]
	-- ===删除:3314151,1
	tHalloweenReward_Award[3314151][1] = {}
	tHalloweenReward_Award[3314151][1]["LogId"] = 12001660
	tHalloweenReward_Award[3314151][1]["DeleteItem"] = {}
	tHalloweenReward_Award[3314151][1]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314151][1]["DeleteItem"][1]["Id"] = 3314151 -- 【库】30天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314151][1]["RewardItem"] = {}
	tHalloweenReward_Award[3314151][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314151][1]["RewardItem"][1]["Id"] = 350169 -- 猎魂者·惊梦（长武）[350169][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314151][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天激活时效1%神佑猎魂者·惊梦（长武）
	tHalloweenReward_Award[3314151][1]["RewardEffect"] = {}
	tHalloweenReward_Award[3314151][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314151][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenReward_Award[3314151][2] = {}
	-- ===30天时效猎魂者武器外套礼盒（短武器）
	-- ===索引: tHalloweenReward_Award[3314151][2]
	-- ===删除:3314151,1
	tHalloweenReward_Award[3314151][2]["LogId"] = 12001660
	tHalloweenReward_Award[3314151][2]["DeleteItem"] = {}
	tHalloweenReward_Award[3314151][2]["DeleteItem"][1] = {}
	tHalloweenReward_Award[3314151][2]["DeleteItem"][1]["Id"] = 3314151 -- 【库】30天时效猎魂者武器外套礼盒[属性:8]
	tHalloweenReward_Award[3314151][2]["RewardItem"] = {}
	tHalloweenReward_Award[3314151][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[3314151][2]["RewardItem"][1]["Id"] = 360306 -- 猎魂者·惊梦（短武）[360306][属性:0][叠加:0][金币:0], 【表格】猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314151][2]["RewardItem"][1]["Attr"] = "0 2 0 43200 1 0 0 1" -- 30天激活时效1%神佑猎魂者·惊梦（短武）
	tHalloweenReward_Award[3314151][2]["RewardEffect"] = {}
	tHalloweenReward_Award[3314151][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[3314151][2]["RewardEffect"]["Effect"] = "angelwing"
	


	-- 显著功勋礼包 3007108
	tHalloweenReward_Award[3007108] = {}
	tHalloweenReward_Award[3007108]["RewardItem"] = {}
	tHalloweenReward_Award[3007108]["RewardItem"][1] = {}
	tHalloweenReward_Award[3007108]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3007108]["RewardItem"][1]["Attr"] = "0 10" -- 【英文】鬼怪糖果*10

	-- 每日签到礼包 3100011
	tHalloweenReward_Award[3100011] = {}
	tHalloweenReward_Award[3100011]["RewardItem"] = {}
	tHalloweenReward_Award[3100011]["RewardItem"][1] = {}
	tHalloweenReward_Award[3100011]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[3100011]["RewardItem"][1]["Attr"] = "0 20" -- 【英文】鬼怪糖果*20
	tHalloweenReward_Award[3100011]["RewardItem"][2] = {}
	tHalloweenReward_Award[3100011]["RewardItem"][2]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[3100011]["RewardItem"][2]["Attr"] = "0 30" -- 南瓜糕点*30
	
	-- ===怪物掉落
	tHalloweenReward_Award[1] = {}
	tHalloweenReward_Award[1]["ItemChanceSum"] = 10000
	tHalloweenReward_Award[1]["LogId"] = 12001660
	-- 中文鬼怪糖果 - 1%
	tHalloweenReward_Award[1][1] = {}
	tHalloweenReward_Award[1][1]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[1][1]["ItemChance"] = 100
	tHalloweenReward_Award[1][1]["RewardItem"] = {}
	tHalloweenReward_Award[1][1]["RewardItem"][1] = {}
	tHalloweenReward_Award[1][1]["RewardItem"][1]["Id"] = 3600167 -- 【英文】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】英文鬼怪糖果
	tHalloweenReward_Award[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】鬼怪糖果*1
	tHalloweenReward_Award[1][1]["RewardEffect"] = {}
	tHalloweenReward_Award[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（207,46）】1天（零点重置）20个
	tHalloweenReward_Award[1][1]["EventType"] = 207
	tHalloweenReward_Award[1][1]["DataType"] = 46
	tHalloweenReward_Award[1][1]["RewardDelay"] = 1
	tHalloweenReward_Award[1][1]["RewardTimeType"] = 4
	tHalloweenReward_Award[1][1]["RewardData"] = 20
	-- 南瓜糕点 - 0.5%
	tHalloweenReward_Award[1][2] = {}
	tHalloweenReward_Award[1][2]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[1][2]["ItemChance"] = 50
	tHalloweenReward_Award[1][2]["RewardItem"] = {}
	tHalloweenReward_Award[1][2]["RewardItem"][1] = {}
	tHalloweenReward_Award[1][2]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tHalloweenReward_Award[1][2]["RewardItem"][1]["Attr"] = "0 1" -- 南瓜糕点*1
	tHalloweenReward_Award[1][2]["RewardEffect"] = {}
	tHalloweenReward_Award[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenReward_Award[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（207,47）】1天（零点重置）100个
	tHalloweenReward_Award[1][2]["EventType"] = 207
	tHalloweenReward_Award[1][2]["DataType"] = 47
	tHalloweenReward_Award[1][2]["RewardDelay"] = 1
	tHalloweenReward_Award[1][2]["RewardTimeType"] = 4
	tHalloweenReward_Award[1][2]["RewardData"] = 100
	-- 无物品 - 98.5%
	tHalloweenReward_Award[1][3] = {}
	tHalloweenReward_Award[1][3]["RandomItemChanceType"] = 2
	tHalloweenReward_Award[1][3]["ItemChance"] = 9850


	
	
local tHalloweenReward_Stc = {}
	tHalloweenReward_Stc["EventType"] = {}
	tHalloweenReward_Stc["DataType"] = {}
	
--205 62迈克尔 麦尔斯变身
	tHalloweenReward_Stc["EventType"]["Bianshen"] = 205
	tHalloweenReward_Stc["DataType"]["Bianshen"] = 62
	
--206 00 记录玩家变身收集数量
	tHalloweenReward_Stc["EventType"]["Num"] = 206
	tHalloweenReward_Stc["DataType"]["Num"] = 0

--206 01 记录玩家南瓜头成长值
	tHalloweenReward_Stc["EventType"]["GrowUp"] = 206
	tHalloweenReward_Stc["DataType"]["GrowUp"] = 1

--206 02 记录玩家迈克尔·麦尔斯人物外套碎片赢了几个 （赢了+1输了-1，大于105必输）
	tHalloweenReward_Stc["EventType"][3313814] = 206
	tHalloweenReward_Stc["DataType"][3313814] = 2
	
--207 74 记录玩家惊情圣夜碎片赢了几个  （赢了+1输了-1，大于105必输）
	tHalloweenReward_Stc["EventType"][3313816] = 207
	tHalloweenReward_Stc["DataType"][3313816] = 74
	
-- 206 03 记录玩家购买南瓜糕点礼包花费  
	tHalloweenReward_Stc["EventType"]["Food"] = 206
	tHalloweenReward_Stc["DataType"]["Food"] = 3
	
-- 207 45 显著功勋礼包
	tHalloweenReward_Stc["EventType"][3007108] = 207
	tHalloweenReward_Stc["DataType"][3007108] = 45
	
--207 48 每日签到礼包
	tHalloweenReward_Stc["EventType"][3100011] = 207
	tHalloweenReward_Stc["DataType"][3100011] = 48
	
local tHalloweenReward_Date = {}
--party成长值
	tHalloweenReward_Date["Global"] = 53765
--成就
	tHalloweenReward_Date["AchPosition"] = 10022
--南瓜糕点礼包价格
	tHalloweenReward_Date["Food"] = 270
	tHalloweenReward_Date["Debris"] = 100
	tHalloweenReward_Date["CellX"] = 352
	tHalloweenReward_Date["CellY"] = 502
	tHalloweenReward_Date["MapId"] = 1002
	tHalloweenReward_Date["JQCellX"] = 192
	tHalloweenReward_Date["JQCellY"] = 172
	tHalloweenReward_Date["JQMapId"] = 1036
	
--物品对应折扣	
local tHalloweenReward_Discount = {}
	tHalloweenReward_Discount[3313800] = 1
	tHalloweenReward_Discount[3313801] = 5
	tHalloweenReward_Discount[3313802] = 7
	tHalloweenReward_Discount[3313803] = 9
	tHalloweenReward_Discount[3313804] = 5
	tHalloweenReward_Discount[3313805] = 7
	tHalloweenReward_Discount[3313806] = 9
--打折后所需天石
local tHalloweenReward_Money = {}
	tHalloweenReward_Money["Coat"] = {}
	tHalloweenReward_Money["Coat"][1] = 1999
	tHalloweenReward_Money["Coat"][5] = 10000
	tHalloweenReward_Money["Coat"][7] = 14000
	tHalloweenReward_Money["Coat"][9] = 18000
	tHalloweenReward_Money["Hair"] = {}
	tHalloweenReward_Money["Hair"][5] = 500
	tHalloweenReward_Money["Hair"][7] = 700
	tHalloweenReward_Money["Hair"][9] = 900
	
--礼包对应获得的发型时间	
local tHalloweenReward_HairTime = {}
	tHalloweenReward_HairTime[3313833] = 0
	tHalloweenReward_HairTime[3313834] = 525600
	tHalloweenReward_HairTime[3313835] = 259200
	tHalloweenReward_HairTime[3313836] = 129600
	tHalloweenReward_HairTime[3313837] = 86400
	
--Log表
local tHalloweenReward_Log={}
	--购买外套
	tHalloweenReward_Log["Coat"] = "1000	1020"
	--购买发型
	tHalloweenReward_Log["Hair"] = "1000	1021"
	--购买碎片
	tHalloweenReward_Log[3313816] = "1000	1155"
	--删除物品log
	tHalloweenReward_Log["OverTime"] = "0,0,%d,%d,12000400,3,0,0"		
----------------------------------逻辑部分---------------------------------------------
--物品过期给气力值
function HalloweenReward_OutTime(nItemId)
	local tReward = CommonFunc_Copy(tHalloweenReward_Award["OutTime"][nItemId])
	--过期给气力值
	if not Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		--给奖励
		if Item_ChkMulItem(nItemId,nItemId,nItemNum)then
		local nValue = tReward["RewardStrengthValue"]["Value"]*nItemNum
		--修改奖励气力值及删除物品数量
		tReward["RewardStrengthValue"]["Value"] = nValue
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		--给奖励
		RewardTemplate_UseItemAndMsg(tReward)
		Sys_MsgBox(string.format(tHalloweenReward_Text["StrengthValue"],nValue))
			return true 
		end 
	end
	return false
end
--过期删除
function HalloweenReward_DelItem(nItemId)
	if nItemId >=3313804 and nItemId <=3313806 then 
		return false 
	end 
	--过期删除
	if not Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then	
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tHalloweenReward_Log["OverTime"],nItemId,nItemNum))
			Sys_MsgBox(tHalloweenReward_Text["OutTime"])
		end
		return true 
	end
	return false
end

--使用南瓜糕点
function HalloweenReward_UseFood(nItemId)
	if HalloweenReward_DelItem(nItemId)then 
		return 
	end 
	local nItemNum = Get_CountItemType(nItemId,0)
	--判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],1))	
		return
	end
	if nItemNum>=500 then 
		nItemNum = 500
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tHalloweenReward_Text["Multi"],sUserName))
	elseif  nItemNum>=100 and nItemNum<500 then 
		nItemNum = 100
	end 
	local tReward = CommonFunc_Copy(tHalloweenReward_Award[nItemId])
	tReward["RewardItem"][1]["Attr"] = "0 "..nItemNum
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if RewardTemplate_UseItemAndMsg(tReward) then
		--加南瓜成长值
		local nEvent = tHalloweenReward_Stc["EventType"]["GrowUp"]
		local nType = tHalloweenReward_Stc["DataType"]["GrowUp"] 
		Task_AddStatistic(nEvent,nType,nItemNum,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		HalloweenPumpkin_ReSetRankBoard(25010)
		--自动变发型
		HalloweenPumpkin_HairChange()
		HalloweenPumpkin_HairChangeNew(nItemNum)
		--加party气氛
		local nGlobalId = tHalloweenReward_Date["Global"]
		local nNowNum = Get_SysDynaGlobalData(nGlobalId,0)	
		Sys_SetSynaGlobalData0(nGlobalId,nNowNum+nItemNum)
		local nTime = os.time()
		Sys_SetSynaGlobalTime0(nGlobalId,nTime)
		User_TalkChannel2005(string.format(tHalloweenReward_Text["UseItem"],nItemNum,nItemNum,nItemNum))
		
	end
end


--鬼怪礼包
function HalloweenReward_UsePackage(nItemId)
	local nWeaponSpace = RewardTemplate_GetRandomSpace(tHalloweenReward_Award["Weapon"],nItemId)
	local nPackageSpace = RewardTemplate_GetRandomSpace(tHalloweenReward_Award,nItemId)
	--判断背包空间
	local nSpace = nWeaponSpace+nPackageSpace
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	--给礼包奖励
	local tFirstReward,sFirstRewardStr = RewardTemplate_RandomReward(tHalloweenReward_Award,nItemId)
	if sFirstRewardStr ~= nil then 
	--随机给武器碎片播公告
	local tNewReward,sRewardStr=RewardTemplate_NewRandom(tHalloweenReward_Award["Weapon"],nItemId)
	if tNewReward[1]["tAward"][1]["RewardItem"] ~= nil then 
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tHalloweenReward_Text["Braotcast"]["MonsterGift"],sUserName))
		end 
	end 
end 

--提交“迈克尔·麦尔斯”的头颅给劳瑞
function HalloweenReward_SubmitHead()
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tHalloweenReward_Award["Monster"])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	--获得成就
	local nAchPos = tHalloweenReward_Date["AchPosition"]
	local nUserId = Get_UserId()
	if not  User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end 
	--加迈克尔 麦尔斯变身
	local nEvent = tHalloweenReward_Stc["EventType"]["Bianshen"]
	local nType = tHalloweenReward_Stc["DataType"]["Bianshen"]
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--加玩家变身收集数量
	local nNumEvent = tHalloweenReward_Stc["EventType"]["Num"]
	local nNumType = tHalloweenReward_Stc["DataType"]["Num"]
	Task_AddStatistic(nNumEvent,nNumType,1,1)
	Task_SetStcTimestamp(nNumEvent,nNumType,0)
	
	--给礼盒和糕点
	RewardTemplate_UseItemAndMsg(tHalloweenReward_Award["Monster"])
end 

--收集变身奖励
function HalloweenReward_CollectReward(nIndex)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tHalloweenReward_Award["Collect"][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	--给奖励
	RewardTemplate_UseItemAndMsg(tHalloweenReward_Award["Collect"][nIndex])
end

--“糖果OR恶作剧”任务奖励
function HalloweenReward_MischiefReward()
	--判断背包空间
	if not User_CheckLeftSpace(2) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],2))	
		return
	end
	--给奖励
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tHalloweenReward_Award["Task"],1)
	RewardTemplate_NewRandom(tHalloweenReward_Award["Task"],2)
end

--自选礼包
function HalloweenReward_OptionalGift(nItemId,nOption)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tHalloweenReward_Award[nItemId][nOption])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	local bFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId][nOption])
	--降魔礼盒出公告
	if nItemId == 3313813 then 
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tHalloweenReward_Text["Braotcast"][nItemId],sUserName,sRewardStr))
		Sys_TalkBroadcast(string.format(tHalloweenReward_Text["Braotcast"][nItemId],sUserName,sRewardStr))
	end 
end



--使用武器碎片
function HalloweenReward_WeaponDebris(nItemId)
	--过期给气力值
	if HalloweenReward_OutTime(nItemId)then
		return
	end
	--判断数量
	local nItemNum = tHalloweenReward_Award[nItemId]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["Defeate"],nItemNum))
		return
	else 
		RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId])
		Sys_MsgBox(tHalloweenReward_Text[nItemId]["Succeed"])
	end 
end 


--使用一个时装碎片
function HalloweenReward_UseOneItem(nItemId)
	--过期给气力值
	if HalloweenReward_OutTime(nItemId)then
		return
	end
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tHalloweenReward_Award[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	--判断单个使用了几次
	local nEvent = tHalloweenReward_Stc["EventType"][nItemId]
	local nType = tHalloweenReward_Stc["DataType"][nItemId]
	--初始化掩码
	if Get_UserStatisticValue(nEvent,nType)<=5 then 
		Task_SetStatistic(nEvent,nType,100,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end 
	--大于105必输
	local nDate = Get_UserStatisticValue(nEvent,nType)
	if nDate >= 105 then 
		--删物品减掩码
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_AddStatistic(nEvent,nType,-1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			Sys_MsgBox(tHalloweenReward_Text[nItemId]["Defeate"])
		end
		return
	end
	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给奖励
		local tNewReward,sRewardStr=RewardTemplate_NewRandom(tHalloweenReward_Award[nItemId],1)
		--赌赢加掩码
		if tNewReward[1]["tAward"][1]["RewardItem"] ~= nil then 
			--加掩码
			Task_AddStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			Sys_MsgBox(tHalloweenReward_Text[nItemId]["OneSucceed"])
			return
		else
			--赌输减掩码
			--减掩码
			Task_AddStatistic(nEvent,nType,-1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		Sys_MsgBox(tHalloweenReward_Text[nItemId]["Defeate"])
		end	
	end 	
end 


--使用多个时装碎片
function HalloweenReward_UseCoatDebris(nItemId,nIndex)
	--过期给气力值
	if HalloweenReward_OutTime(nItemId)then
		return
	end
	tItem[nItemId]["Text211"] = tHalloweenReward_Text[nItemId]["Text211"]
	--数量不够
	local tReward = CommonFunc_Copy(tHalloweenReward_Award[nItemId][nIndex])
	local nItemNum= tReward["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		if nItemId == 3313816 then 
			local nHaveNum = Get_CountItemType(nItemId,0)
			local nNeedNum = nItemNum-nHaveNum
			local nDebrisMoney  = tHalloweenReward_Date["Debris"]
			local nEmoney = nNeedNum*nDebrisMoney
			tItem[nItemId]["Text211"] =string.format(tHalloweenReward_Text[nItemId]["Text211"],nNeedNum,nEmoney)
			tItem[nItemId]["OptionFunc211"]="HalloweenReward_UseItem</N>3313816</N>"..nEmoney.."</N>"..nIndex.."</N>"..nHaveNum
			LinkItemGossipFunc_New(nItemId,"2-1")
			return 
		end 
		Sys_MsgBox(string.format(tHalloweenReward_Text["Defeate"],nItemNum))
		return
	end
	--背包空间判断	
	local nSpace = RewardTemplate_GetRewardSpace(tHalloweenReward_Award[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	--如果得到外套奖励，给发型
	if nItemId == 3313816 then 
		User_NotifyChgHairstyle(84,0)
	else
		User_NotifyChgHairstyle(80,0)
	end
	RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId][nIndex])
	Sys_MsgBox(tHalloweenReward_Text[nItemId]["MultiSucceed"])
	
end
function HalloweenReward_UseItem(nItemId,nEmoney,nIndex,nHaveNum)
	tItem[3313816]["Text311"] = tHalloweenReward_Text[3313816]["Text311"]
	tItem[3313816]["Text311"] =string.format(tHalloweenReward_Text[3313816]["Text311"],nEmoney,tHalloweenReward_Text[3313816][nIndex])
	tItem[nItemId]["OptionFunc311"]="HalloweenReward_BuyDebris</N>3313816</N>"..nEmoney.."</N>"..nIndex.."</N>"..nHaveNum
	LinkItemGossipFunc_New(nItemId,"3-1")
end

--天石补全碎片
function HalloweenReward_BuyDebris(nItemId,nEmoney,nIndex,nHaveNum)
	if nHaveNum ==0 then
		return
	end
--判断天石是否足够
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tHalloweenReward_Text[nItemId]["NoCPs"])
		return 
	end 
--背包空间判断	
	local nSpace = RewardTemplate_GetRewardSpace(tHalloweenReward_Award[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],nSpace))	
		return
	end
	local tReward = CommonFunc_Copy(tHalloweenReward_Award[nItemId][nIndex])
	if not Item_ChkMulItem(nItemId,nItemId,nHaveNum) then
		Sys_MsgBox(tHalloweenReward_Text[nItemId]["NoItem"])
		return 
	end 
	tReward["DeleteItem"][1]["ItemNum"] = nHaveNum
	if User_AddEMoneyAndLog(-nEmoney,tHalloweenReward_Log[nItemId]) then
		--给奖励
		RewardTemplate_UseItemAndMsg(tReward)
	end
end 

--全球排名礼包（返还赠点）
function HalloweenReward_EMoneyPackage(nItemId)
	--成长值是否5000以上
	local nEvent = tHalloweenReward_Stc["EventType"]["GrowUp"]
	local nType = tHalloweenReward_Stc["DataType"]["GrowUp"] 
	local nDate = Get_UserStatisticValue(nEvent,nType)
	
	if nDate >=5000 then 
		if RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId])then 
			User_NotifyChgHairstyle(84,tHalloweenReward_HairTime[nItemId])
		end 
	else
		Sys_MsgBox(tHalloweenReward_Text["NoGrowUp"])
	end	 
end

--使用外套发型折扣券
function HalloweenReward_Discount(sTag,nItemId)
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nEmoney = tHalloweenReward_Money[sTag][nDiscount]
	--判断天石是否足够
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tHalloweenReward_Text[sTag]["NoCPs"])
		return 
	end 
	--背包空间判断	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],1))	
		return
	end
	--判断是否有物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if User_AddEMoneyAndLog(-nEmoney,tHalloweenReward_Log[sTag]) then
			--给奖励
			if sTag =="Hair" then 
				User_NotifyChgHairstyle(80,0)
				return 
			end 
			User_NotifyChgHairstyle(84,0)
			RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[sTag])
		end
	else 
		Sys_MsgBox(tHalloweenReward_Text[sTag]["NoItem"])
	end
end

--糕点礼包记录掩码
function HalloweenReward_FoodPackage(nItemId)
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tHalloweenReward_Text["NoSpace"],1))	
		return
	end
	local nEvent = tHalloweenReward_Stc["EventType"]["Food"]
	local nType = tHalloweenReward_Stc["DataType"]["Food"]
	Task_AddStatistic(nEvent,nType,tHalloweenReward_Date["Food"],1)
	--给奖励
	RewardTemplate_RandomReward(tHalloweenReward_Award,nItemId)
end 

--物品寻路到NPC
function HalloweenReward_FindNPC()
	if SpecialServer_ChkNoGiftServer() then
		Sys_GotoSomeWhere(tHalloweenReward_Date["JQCellX"],tHalloweenReward_Date["JQCellY"],tHalloweenReward_Date["JQMapId"],0)
	end
	Sys_GotoSomeWhere(tHalloweenReward_Date["CellX"],tHalloweenReward_Date["CellY"],tHalloweenReward_Date["MapId"],0)
end 

--打开显著功勋礼包 3007108
function HalloweenReward_RewardOtherTicket()
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	local nUserId =  nUserId or Get_UserId()
	local nEvent = tHalloweenReward_Stc["EventType"][3007108]
	local nType = tHalloweenReward_Stc["DataType"][3007108] 
	--隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nEvent, nType, ">", 0) then
		return
	end
	if Task_SetStatistic(nEvent, nType, 1, 1) then
		Task_SetStcTimestamp(nEvent, nType, 0)
		RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[3007108])
	end	
end

--每日签到礼包
function HalloweenReward_DailyPack()
	if not Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(2) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tHalloweenReward_Stc["EventType"][3100011]
	local nType = tHalloweenReward_Stc["DataType"][3100011] 
	--隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nEvent, nType, ">", 0) then
		return
	end
	if Task_SetStatistic(nEvent, nType, 1, 1) then
		Task_SetStcTimestamp(nEvent, nType, 0)
		RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[3100011])
	end	
end

--打怪掉落
function HalloweenReward_KillMonster()
	if not Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
		return
	end
		-- 判断背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tHalloweenReward_Text["MonsterNoSpace"])
		return
	end

	RewardTemplate_NewRandom(tHalloweenReward_Award,1)
end 
--天石商店 
function HalloweenReward_EnterShop()
	if not Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
		return
	end
	User_OpenDialog()
end 
--发型使用
function HalloweenReward_UseHair(nItemId,nHairFaceId)
	User_HairFaceDelete(0,nHairFaceId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_NotifyChgHairstyle(nHairFaceId,0)
	end 
end 
---------------------------------NPC部分---------------------------------------------
tNpcFace[2113] = 191
tNpcGossip[25037]= tNpcGossip[25037] or DefaultNpc:new{}
tNpcGossip[25037]["OptionHidden"] = 1
tNpcGossip[25037]["DialogueText"] = tHalloweenReward_Text[25037]
tNpcGossip[25037]["Text1-1"] = {111,112}
tNpcGossip[25037]["tOption1-1"] = {111,112}
tNpcGossip[25037]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"])
end
tNpcGossip[25037]["OptionFunc111"] = "HalloweenReward_EnterShop"
tNpcGossip[25037]["OptionPoint112"] = "2-1"
tNpcGossip[25037]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[25037]["tOption2-1"] = {211,212}
tNpcGossip[25037]["OptionPoint211"] = "3-1"
tNpcGossip[25037]["OptionPoint212"] = "4-1"
tNpcGossip[25037]["Text3-1"] = {311,312,313,314,315,316,317,318,319}
tNpcGossip[25037]["tOption3-1"] = {311,312}
tNpcGossip[25037]["OptionPoint311"] = "2-1"
tNpcGossip[25037]["OptionPoint312"] = "4-1"
tNpcGossip[25037]["Text4-1"] = {411,412,414,414,415,416,417,418,419}
tNpcGossip[25037]["tOption4-1"] = {411,412}
tNpcGossip[25037]["OptionPoint411"] = "2-1"
tNpcGossip[25037]["OptionPoint412"] = "3-1"
---------------------------------物品部分---------------------------------------------
--南瓜糕点
tItem[3313798] = tItem[3313798] or {}
tItem[3313798]["Function"] = function(nItemId)
	HalloweenReward_UseFood(nItemId)
end

--南瓜币
tItem[3313799] = tItem[3313799] or {}
tItem[3313799]["Function"] = function(nItemId)
--  if Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
	if Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActTime"]) then
		HalloweenReward_FindNPC()
	else
		if HalloweenReward_OutTime(nItemId)then
			return
		end
	end
end

--糖果使用
tItem[3600167] = tItem[3600167] or {}
tItem[3600167]["Function"] = function(nItemId)
	if HalloweenReward_DelItem(nItemId)then 
		return 
	end 
	Sys_MsgBox(tHalloweenReward_Text["Candy"])
end
tItem[3600166] = tItem[3600167] or {}

--糕点礼包记录掩码
tItem[3313838] = tItem[3313838] or {}
tItem[3313838]["Function"] = function(nItemId)
	HalloweenReward_FoodPackage(nItemId)
end

--外套折扣券
tItemFace[3313800] = 2597
tItemFace[3313801] = 2597
tItemFace[3313802] = 2597
tItemFace[3313803] = 2597
tItem[3313800] = tItem[3313800] or {}
tItem[3313800]["Function"]=function(nItemId,sItemName)
	if HalloweenReward_DelItem(nItemId)then 
		return 
	end 
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Coat"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Coat"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Coat"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Coat"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Coat"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313800]["Text1-1"] = {111}
tItem[3313800]["Text111"] = tHalloweenReward_Text["Coat"]["Text111"]
tItem[3313800]["tOption1-1"] = {111}
tItem[3313800]["Option111"] = tHalloweenReward_Text["Coat"]["Option111"]
tItem[3313800]["OptionPoint111"]="2-1"
tItem[3313800]["Text2-1"] = {211}
tItem[3313800]["Text211"] = tHalloweenReward_Text["Coat"]["Text211"]
tItem[3313800]["tOption2-1"] = {211,212}
tItem[3313800]["Option211"] = tHalloweenReward_Text["Coat"]["Option211"]
tItem[3313800]["OptionFunc211"]="HalloweenReward_Discount</S>Coat</N>3313800</N>1999"
tItem[3313800]["Option212"] = tHalloweenReward_Text["Coat"]["Option212"]
tItem[3313801] = tItem[3313801] or {}
tItem[3313801]["Function"]=function(nItemId,sItemName)
	if HalloweenReward_DelItem(nItemId)then 
		return 
	end 
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Coat"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Coat"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Coat"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Coat"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Coat"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313801]["Text1-1"] = {111}
tItem[3313801]["Text111"] = tHalloweenReward_Text["Coat"]["Text111"]
tItem[3313801]["tOption1-1"] = {111}
tItem[3313801]["Option111"] = tHalloweenReward_Text["Coat"]["Option111"]
tItem[3313801]["OptionPoint111"]="2-1"
tItem[3313801]["Text2-1"] = {211}
tItem[3313801]["Text211"] = tHalloweenReward_Text["Coat"]["Text211"]
tItem[3313801]["tOption2-1"] = {211,212}
tItem[3313801]["Option211"] = tHalloweenReward_Text["Coat"]["Option211"]
tItem[3313801]["OptionFunc211"]="HalloweenReward_Discount</S>Coat</N>3313801</N>10000"
tItem[3313801]["Option212"] = tHalloweenReward_Text["Coat"]["Option212"]
tItem[3313802] = tItem[3313802] or {}
tItem[3313802]["Function"]=function(nItemId,sItemName)
	if HalloweenReward_DelItem(nItemId)then 
		return 
	end 
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Coat"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Coat"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Coat"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Coat"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Coat"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313802]["Text1-1"] = {111}
tItem[3313802]["Text111"] = tHalloweenReward_Text["Coat"]["Text111"]
tItem[3313802]["tOption1-1"] = {111}
tItem[3313802]["Option111"] = tHalloweenReward_Text["Coat"]["Option111"]
tItem[3313802]["OptionPoint111"]="2-1"
tItem[3313802]["Text2-1"] = {211}
tItem[3313802]["Text211"] = tHalloweenReward_Text["Coat"]["Text211"]
tItem[3313802]["tOption2-1"] = {211,212}
tItem[3313802]["Option211"] = tHalloweenReward_Text["Coat"]["Option211"]
tItem[3313802]["OptionFunc211"]="HalloweenReward_Discount</S>Coat</N>3313802</N>14000"
tItem[3313802]["Option212"] = tHalloweenReward_Text["Coat"]["Option212"]
tItem[3313803] = tItem[3313803] or {}
tItem[3313803]["Function"]=function(nItemId,sItemName)
	if HalloweenReward_DelItem(nItemId)then 
		return 
	end 
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Coat"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Coat"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Coat"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Coat"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Coat"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313803]["Text1-1"] = {111}
tItem[3313803]["Text111"] = tHalloweenReward_Text["Coat"]["Text111"]
tItem[3313803]["tOption1-1"] = {111}
tItem[3313803]["Option111"] = tHalloweenReward_Text["Coat"]["Option111"]
tItem[3313803]["OptionPoint111"]="2-1"
tItem[3313803]["Text2-1"] = {211}
tItem[3313803]["Text211"] = tHalloweenReward_Text["Coat"]["Text211"]
tItem[3313803]["tOption2-1"] = {211,212}
tItem[3313803]["Option211"] = tHalloweenReward_Text["Coat"]["Option211"]
tItem[3313803]["OptionFunc211"]="HalloweenReward_Discount</S>Coat</N>3313803</N>18000"
tItem[3313803]["Option212"] = tHalloweenReward_Text["Coat"]["Option212"]

--发型折扣券
tItemFace[3313804] = 2603
tItemFace[3313805] = 2603
tItemFace[3313806] = 2603
tItem[3313804] = tItem[3313804] or {}
tItem[3313804]["Function"]=function(nItemId,sItemName)
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Hair"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Hair"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Hair"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Hair"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Hair"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313804]["Text1-1"] = {111}
tItem[3313804]["Text111"] = tHalloweenReward_Text["Hair"]["Text111"]
tItem[3313804]["tOption1-1"] = {111}
tItem[3313804]["Option111"] = tHalloweenReward_Text["Hair"]["Option111"]
tItem[3313804]["OptionPoint111"]="2-1"
tItem[3313804]["Text2-1"] = {211}
tItem[3313804]["Text211"] = tHalloweenReward_Text["Hair"]["Text211"]
tItem[3313804]["tOption2-1"] = {211,212}
tItem[3313804]["Option211"] = tHalloweenReward_Text["Hair"]["Option211"]
tItem[3313804]["OptionFunc211"]="HalloweenReward_Discount</S>Hair</N>3313804</N>500"
tItem[3313804]["Option212"] = tHalloweenReward_Text["Hair"]["Option212"]
tItem[3313805] = tItem[3313805] or {}
tItem[3313805]["Function"]=function(nItemId,sItemName)

	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Hair"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Hair"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Hair"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Hair"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Hair"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313805]["Text1-1"] = {111}
tItem[3313805]["Text111"] = tHalloweenReward_Text["Hair"]["Text111"]
tItem[3313805]["tOption1-1"] = {111}
tItem[3313805]["Option111"] = tHalloweenReward_Text["Hair"]["Option111"]
tItem[3313805]["OptionPoint111"]="2-1"
tItem[3313805]["Text2-1"] = {211}
tItem[3313805]["Text211"] = tHalloweenReward_Text["Hair"]["Text211"]
tItem[3313805]["tOption2-1"] = {211,212}
tItem[3313805]["Option211"] = tHalloweenReward_Text["Hair"]["Option211"]
tItem[3313805]["OptionFunc211"]="HalloweenReward_Discount</S>Hair</N>3313805</N>700"
tItem[3313805]["Option212"] = tHalloweenReward_Text["Hair"]["Option212"]
tItem[3313806] = tItem[3313806] or {}
tItem[3313806]["Function"]=function(nItemId,sItemName)
	local nDiscount = tHalloweenReward_Discount[nItemId]
	local nMoney = tHalloweenReward_Money["Hair"][nDiscount]
	tItem[nItemId]["Text111"] = string.format(tHalloweenReward_Text["Hair"]["Text111"],nDiscount,nMoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenReward_Text["Hair"]["Option111"],nMoney)
	tItem[nItemId]["Text211"] = string.format(tHalloweenReward_Text["Hair"]["Text211"],nMoney)
	tItem[nItemId]["Option211"] = string.format(tHalloweenReward_Text["Hair"]["Option211"],nMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313806]["Text1-1"] = {111}
tItem[3313806]["Text111"] = tHalloweenReward_Text["Hair"]["Text111"]
tItem[3313806]["tOption1-1"] = {111}
tItem[3313806]["Option111"] = tHalloweenReward_Text["Hair"]["Option111"]
tItem[3313806]["OptionPoint111"]="2-1"
tItem[3313806]["Text2-1"] = {211}
tItem[3313806]["Text211"] = tHalloweenReward_Text["Hair"]["Text211"]
tItem[3313806]["tOption2-1"] = {211,212}
tItem[3313806]["Option211"] = tHalloweenReward_Text["Hair"]["Option211"]
tItem[3313806]["OptionFunc211"]="HalloweenReward_Discount</S>Hair</N>3313806</N>900"


tItemFace[3313815] = 2604
--“麦尔斯的厨刀”碎片
tItem[3313815] = tItem[3313815] or {}
tItem[3313815]["Function"] = function(nItemId)
	HalloweenReward_WeaponDebris(nItemId)
end


--鬼怪礼包
tItem[3313807] = tItem[3313807] or {}
tItem[3313807]["Function"] = function(nItemId)
	HalloweenReward_UsePackage(nItemId)
end
tItem[3313808] = tItem[3313807] or {}
tItem[3313809] = tItem[3313807] or {}
tItem[3313810] = tItem[3313807] or {}
tItem[3600168] = tItem[3313807] or {}



--party礼包
tItem[3313818] = tItem[3313818] or {}
tItem[3313818]["Function"] = function(nItemId)
	RewardTemplate_RandomReward(tHalloweenReward_Award,nItemId)
end
tItem[3313819] = tItem[3313818] or {}
tItem[3313820] = tItem[3313818] or {}
tItem[3313821] = tItem[3313818] or {}
tItem[3313822] = tItem[3313818] or {}
tItem[3313839] = tItem[3313818] or {}
tItem[3313812] = tItem[3313818] or {}

--排行榜礼包（需要集齐20个变身）
tItem[3313823] = tItem[3313823] or {}
tItem[3313823]["Function"] = function(nItemId)
	--判断收集进度 
	local nNumEvent = tHalloweenReward_Stc["EventType"]["Num"]
	local nNumType = tHalloweenReward_Stc["DataType"]["Num"]
	local nNumDate = Get_UserStatisticValue(nNumEvent,nNumType)
	if nNumDate >= 20 then 
		--前三名给免费发型
		if nItemId >=3313823 and nItemId<=3313825 then 
			User_NotifyChgHairstyle(80,0)
		end
		RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId])
	else
		Sys_MsgBox(tHalloweenReward_Text["NoNum"])
	end	
end
tItem[3313824] = tItem[3313823] or {}
tItem[3313825] = tItem[3313823] or {}
tItem[3313826] = tItem[3313823] or {}
tItem[3313827] = tItem[3313823] or {}

--无需收集变身(普通礼包使用)
tItem[3313828] = tItem[3313828] or {}
tItem[3313828]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId])
end
tItem[3313829] = tItem[3313828] or {}
tItem[3313830] = tItem[3313828] or {}
tItem[3313831] = tItem[3313828] or {}
tItem[3313832] = tItem[3313828] or {}
tItem[3313840] = tItem[3313828] or {}

tItem[3313841] = tItem[3313841] or {}
tItem[3313841]["Function"] = function(nItemId)
	if RewardTemplate_UseItemAndMsg(tHalloweenReward_Award[nItemId]) then 
		if User_HairFaceCheckExist(0,84) then 
			User_HairFaceDelete(0,84)
			User_NotifyChgHairstyle(84,0)
		else
			User_NotifyChgHairstyle(84,0)
		end 
	end 
end

--全球排名礼包（返还赠点）
tItem[3313833] = tItem[3313833] or {}
tItem[3313833]["Function"] = function(nItemId)
	HalloweenReward_EMoneyPackage(nItemId)
end
tItem[3313834] = tItem[3313833] or {}
tItem[3313835] = tItem[3313833] or {}
tItem[3313836] = tItem[3313833] or {}
tItem[3313837] = tItem[3313833] or {}

--迈克尔·麦尔斯时装碎片
tItemFace[3313814] = 2598
tItem[3313814] = tItem[3313814] or {}
tItem[3313814]["Function"] = function(nItemId)
	if HalloweenReward_OutTime(nItemId)then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313814]["Text1-1"] = {111}
tItem[3313814]["Text111"] = tHalloweenReward_Text[3313814]["Text111"]
tItem[3313814]["tOption1-1"] = {1,2}
tItem[3313814]["Option1"] = tHalloweenReward_Text[3313814]["Option1"]
tItem[3313814]["OptionFunc1"]="HalloweenReward_UseOneItem</N>3313814"
tItem[3313814]["Option2"] = tHalloweenReward_Text[3313814]["Option2"]
tItem[3313814]["OptionFunc2"]="HalloweenReward_UseCoatDebris</N>3313814</N>2"

--惊情圣夜碎片时装碎片
tItemFace[3313816] = 2599
tItem[3313816] = tItem[3313816] or {}
tItem[3313816]["Function"] = function(nItemId)
	if HalloweenReward_OutTime(nItemId)then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3313816]["Text1-1"] = {111}
tItem[3313816]["Text111"] = tHalloweenReward_Text[3313816]["Text111"]
tItem[3313816]["tOption1-1"] = {111,112,113}
tItem[3313816]["Option111"] = tHalloweenReward_Text[3313816]["Option111"]
tItem[3313816]["OptionFunc111"]="HalloweenReward_UseCoatDebris</N>3313816</N>30"
tItem[3313816]["Option112"] = tHalloweenReward_Text[3313816]["Option112"]
tItem[3313816]["OptionFunc112"]="HalloweenReward_UseCoatDebris</N>3313816</N>100"
tItem[3313816]["Option113"] = tHalloweenReward_Text[3313816]["Option113"]
tItem[3313816]["OptionFunc113"]="HalloweenReward_UseOneItem</N>3313816"

tItem[3313816]["Text2-1"] = {211}
tItem[3313816]["Text211"] = tHalloweenReward_Text[3313816]["Text211"]
tItem[3313816]["tOption2-1"] = {211,212}
tItem[3313816]["Option211"] = tHalloweenReward_Text[3313816]["Option211"]
tItem[3313816]["Option212"] = tHalloweenReward_Text[3313816]["Option212"]
--tItem[3313816]["OptionFunc211"]="3-1"
tItem[3313816]["Text3-1"] = {311}
tItem[3313816]["Text311"] = tHalloweenReward_Text[3313816]["Text311"]
tItem[3313816]["tOption3-1"] = {311,212}
tItem[3313816]["Option311"] = tHalloweenReward_Text[3313816]["Option311"]
tItem[3313816]["Option312"] = tHalloweenReward_Text[3313816]["Option312"]

--万圣降魔礼盒(自选)
tItemFace[3313813] = 2600
tItem[3313813] = tItem[3313813] or {}
tItem[3313813]["Text1-1"] = {111}
tItem[3313813]["Text111"] =tHalloweenReward_Text[3313813]["Text111"]
tItem[3313813]["tOption1-1"] = {1,2,3,4,5}
tItem[3313813]["Option1"] = tHalloweenReward_Text[3313813]["Option1"]
tItem[3313813]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3313813</N>1"

tItem[3313813]["Option2"] = tHalloweenReward_Text[3313813]["Option2"]
tItem[3313813]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3313813</N>2"

tItem[3313813]["Option3"] = tHalloweenReward_Text[3313813]["Option3"]
tItem[3313813]["OptionFunc3"]="HalloweenReward_OptionalGift</N>3313813</N>3"

tItem[3313813]["Option4"] = tHalloweenReward_Text[3313813]["Option4"]
tItem[3313813]["OptionFunc4"]="HalloweenReward_OptionalGift</N>3313813</N>4"

tItem[3313813]["Option5"] = tHalloweenReward_Text[3313813]["Option5"]
tItem[3313813]["OptionChkFunc5"] = function ()
	local nUserId = Get_UserId()
	local nPro = Get_UserProfession(nUserId)
	-- 勇士职业可选
	if nPro >= 10 and nPro <= 15 then

		return true 
	end 
	return false 
end 
tItem[3313813]["OptionFunc5"]="HalloweenReward_OptionalGift</N>3313813</N>5"


--4星永久坐骑可选包(自选)
tItemFace[3313817] = 2601
tItem[3313817] = tItem[3313817] or {}
tItem[3313817]["Text1-1"] = {111}
tItem[3313817]["Text111"] =tHalloweenReward_Text[3313817]["Text111"]
tItem[3313817]["tOption1-1"] = {1,2,3,4,5,6}
tItem[3313817]["Option1"] = tHalloweenReward_Text[3313817]["Option1"]
tItem[3313817]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3313817</N>1"

tItem[3313817]["Option2"] = tHalloweenReward_Text[3313817]["Option2"]
tItem[3313817]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3313817</N>2"

tItem[3313817]["Option3"] = tHalloweenReward_Text[3313817]["Option3"]
tItem[3313817]["OptionFunc3"]="HalloweenReward_OptionalGift</N>3313817</N>3"

tItem[3313817]["Option4"] = tHalloweenReward_Text[3313817]["Option4"]
tItem[3313817]["OptionFunc4"]="HalloweenReward_OptionalGift</N>3313817</N>4"

tItem[3313817]["Option5"] = tHalloweenReward_Text[3313817]["Option5"]
tItem[3313817]["OptionFunc5"]="HalloweenReward_OptionalGift</N>3313817</N>5"

tItem[3313817]["Option6"] = tHalloweenReward_Text[3313817]["Option6"]
tItem[3313817]["OptionFunc6"]="HalloweenReward_OptionalGift</N>3313817</N>6"

--1年猎魂者武器外套礼盒
tItemFace[3314147] = 2602
tItemFace[3314148] = 2602
tItemFace[3314149] = 2602
tItemFace[3314150] = 2602
tItemFace[3314151] = 2602

tItem[3314147] = tItem[3314147] or {}
tItem[3314147]["Text1-1"] = {111}
tItem[3314147]["Text111"] =tHalloweenReward_Text[3314147]["Text111"]
tItem[3314147]["tOption1-1"] = {1,2}
tItem[3314147]["Option1"] = tHalloweenReward_Text[3314147]["Option1"]
tItem[3314147]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3314147</N>1"

tItem[3314147]["Option2"] = tHalloweenReward_Text[3314147]["Option2"]
tItem[3314147]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3314147</N>2"

--180天猎魂者武器外套礼盒
tItem[3314148] = tItem[3314148] or {}
tItem[3314148]["Text1-1"] = {111}
tItem[3314148]["Text111"] =tHalloweenReward_Text[3314148]["Text111"]
tItem[3314148]["tOption1-1"] = {1,2}
tItem[3314148]["Option1"] = tHalloweenReward_Text[3314148]["Option1"]
tItem[3314148]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3314148</N>1"

tItem[3314148]["Option2"] = tHalloweenReward_Text[3314148]["Option2"]
tItem[3314148]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3314148</N>2"

--90天猎魂者武器外套礼盒
tItem[3314149] = tItem[3314149] or {}
tItem[3314149]["Text1-1"] = {111}
tItem[3314149]["Text111"] =tHalloweenReward_Text[3314149]["Text111"]
tItem[3314149]["tOption1-1"] = {1,2}
tItem[3314149]["Option1"] = tHalloweenReward_Text[3314149]["Option1"]
tItem[3314149]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3314149</N>1"

tItem[3314149]["Option2"] = tHalloweenReward_Text[3314149]["Option2"]
tItem[3314149]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3314149</N>2"

--60天猎魂者武器外套礼盒
tItem[3314150] = tItem[3314150] or {}
tItem[3314150]["Text1-1"] = {111}
tItem[3314150]["Text111"] =tHalloweenReward_Text[3314150]["Text111"]
tItem[3314150]["tOption1-1"] = {1,2}
tItem[3314150]["Option1"] = tHalloweenReward_Text[3314150]["Option1"]
tItem[3314150]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3314150</N>1"

tItem[3314150]["Option2"] = tHalloweenReward_Text[3314150]["Option2"]
tItem[3314150]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3314150</N>2"

--30天猎魂者武器外套礼盒
tItem[3314151] = tItem[3314151] or {}
tItem[3314151]["Text1-1"] = {111}
tItem[3314151]["Text111"] =tHalloweenReward_Text[3314151]["Text111"]
tItem[3314151]["tOption1-1"] = {1,2}
tItem[3314151]["Option1"] = tHalloweenReward_Text[3314151]["Option1"]
tItem[3314151]["OptionFunc1"]="HalloweenReward_OptionalGift</N>3314151</N>1"

tItem[3314151]["Option2"] = tHalloweenReward_Text[3314151]["Option2"]
tItem[3314151]["OptionFunc2"]="HalloweenReward_OptionalGift</N>3314151</N>2"

--惊情圣夜发型
tItem[3314268] = tItem[3314268] or {}
tItem[3314268]["Function"] = function(nItemId)
	if User_HairFaceCheckExist(0,84) then 
		Sys_MsgBox(tHalloweenReward_Text["HaveHair"] ,"HalloweenReward_UseHair</N>3314268</N>84",nil)
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_NotifyChgHairstyle(84,0)
	end 
	end
end
--麦可尔迈尔斯发型
tItem[3314267] = tItem[3314267] or {}
tItem[3314267]["Function"] = function(nItemId)
	if User_HairFaceCheckExist(0,80) then 
		Sys_MsgBox(tHalloweenReward_Text["HaveHair"] ,"HalloweenReward_UseHair</N>3314267</N>80",nil)
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_NotifyChgHairstyle(80,0)
		end 
	end 
end
---------------------------------怪物部分---------------------------------------------
-- 普通服
local tHalloweenReward_KillMonster = {}
tHalloweenReward_KillMonster["ActivityTime"] = tActivityTime["HalloweenReward"]["ActivityTime"]
tHalloweenReward_KillMonster["Function"]= HalloweenReward_KillMonster
table.insert(tMonsterDrop_AreaLoad,tHalloweenReward_KillMonster)

-- 激情服
local tHalloweenReward_KillMonster_NoGift = {}
tHalloweenReward_KillMonster_NoGift["ActivityTime"] = tActivityTime["HalloweenReward"]["ActivityTime"]
tHalloweenReward_KillMonster_NoGift["Function"]= HalloweenReward_KillMonster
tHalloweenReward_KillMonster_NoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tHalloweenReward_KillMonster_NoGift)