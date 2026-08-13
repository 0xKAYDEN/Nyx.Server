------------------------------------------------------------------------------------
--Name：        200302[简体征服][活动脚本]全球愚人节活动-藏宝图奖励(3.131-4.13)
--Creator:      陈莺

--Created:     2020-03-02
------------------------------------------------------------------------------------
--任务需求：
        -- 每次完成寻宝，必定可以获得50寻宝积分。
        -- 本服与全服，排行前10的玩家可以获得额外的奖励。

------------------------------------------------------------------------------------
-- logid:12001894 4[]

-- 54278	奖励限制 每小时
-- 54281-54284  排行榜

----------------------------------表配置部分--------------------------------------------
local tTreasureMapReward_Data = {}
	tTreasureMapReward_Data["Index"] = 26014
	tTreasureMapReward_Data["GlobalId"] = 54278
	
	tTreasureMapReward_Data["Stc"] = {}
	tTreasureMapReward_Data["Stc"]["EventType"] = 217
	tTreasureMapReward_Data["Stc"]["DataType"] = 03
	
local tTreasureMapReward_GetItem = {}
	-- ===挖宝奖励1
	-- ===索引:tTreasureMapReward_GetItem[1][1]
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[1] = {}
	tTreasureMapReward_GetItem[1][1] = {}
	tTreasureMapReward_GetItem[1][1]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[1][1]["LogId"] = 12001894
	tTreasureMapReward_GetItem[1][1]["LogStep"] = " 4[1]"
	-- 漂流瓶 - 10%
	tTreasureMapReward_GetItem[1][1][1] = {}
	tTreasureMapReward_GetItem[1][1][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][1]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[1][1][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][1]["RewardItem"][1]["Id"] = 3330026 --  3330026 【库里没有该物品】, 【表格】漂流瓶
	tTreasureMapReward_GetItem[1][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3330026 【库里没有该物品】*1
	tTreasureMapReward_GetItem[1][1][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 10%
	tTreasureMapReward_GetItem[1][1][2] = {}
	tTreasureMapReward_GetItem[1][1][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][2]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[1][1][2]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][2]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][2]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tTreasureMapReward_GetItem[1][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 1000万爵位勋章（赠）*1
	tTreasureMapReward_GetItem[1][1][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3阶灵珠 - 5%
	tTreasureMapReward_GetItem[1][1][3] = {}
	tTreasureMapReward_GetItem[1][1][3]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][3]["ItemChance"] = 500
	tTreasureMapReward_GetItem[1][1][3]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][3]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][3]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tTreasureMapReward_GetItem[1][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tTreasureMapReward_GetItem[1][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTreasureMapReward_GetItem[1][1][3]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tTreasureMapReward_GetItem[1][1][3]["RewardBroadCast"] = tTreasureMapReward_Text["Broad"][1] -- 全服公告 -- 全服公告
	tTreasureMapReward_GetItem[1][1][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54278, data0）】全服限量:（1）, 超限给编号（9）-
	tTreasureMapReward_GetItem[1][1][3]["GlobalId"] = 54278
	tTreasureMapReward_GetItem[1][1][3]["Pos"] = 0
	tTreasureMapReward_GetItem[1][1][3]["MaxData"] = 1
	tTreasureMapReward_GetItem[1][1][3]["FullIndex"] = 9
	-- 赤炼石+4 - 9%
	tTreasureMapReward_GetItem[1][1][4] = {}
	tTreasureMapReward_GetItem[1][1][4]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][4]["ItemChance"] = 900
	tTreasureMapReward_GetItem[1][1][4]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][4]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTreasureMapReward_GetItem[1][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tTreasureMapReward_GetItem[1][1][4]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 2000 - 15%
	tTreasureMapReward_GetItem[1][1][5] = {}
	tTreasureMapReward_GetItem[1][1][5]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][5]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[1][1][5]["RewardRepairValue"] = {}
	tTreasureMapReward_GetItem[1][1][5]["RewardRepairValue"]["Value"] = 2000
	tTreasureMapReward_GetItem[1][1][5]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tTreasureMapReward_GetItem[1][1][6] = {}
	tTreasureMapReward_GetItem[1][1][6]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][6]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[1][1][6]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][6]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[1][1][6]["RewardItem"][1]["Attr"] = "0 25 3" -- 万能神纹精粹*25
	tTreasureMapReward_GetItem[1][1][6]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 11%
	tTreasureMapReward_GetItem[1][1][7] = {}
	tTreasureMapReward_GetItem[1][1][7]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][7]["ItemChance"] = 1100
	tTreasureMapReward_GetItem[1][1][7]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][7]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][7]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tTreasureMapReward_GetItem[1][1][7]["RewardItem"][1]["Attr"] = "0 3" -- 魔武通玄丹*3
	tTreasureMapReward_GetItem[1][1][7]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 5%
	tTreasureMapReward_GetItem[1][1][8] = {}
	tTreasureMapReward_GetItem[1][1][8]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][8]["ItemChance"] = 500
	tTreasureMapReward_GetItem[1][1][8]["RewardItem"] = {}
	tTreasureMapReward_GetItem[1][1][8]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[1][1][8]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTreasureMapReward_GetItem[1][1][8]["RewardItem"][1]["Attr"] = "0 3" -- 龙鳞果*3
	tTreasureMapReward_GetItem[1][1][8]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 20%
	tTreasureMapReward_GetItem[1][1][9] = {}
	tTreasureMapReward_GetItem[1][1][9]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[1][1][9]["ItemChance"] = 2000
	tTreasureMapReward_GetItem[1][1][9]["RewardStrengthValue"] = {}
	tTreasureMapReward_GetItem[1][1][9]["RewardStrengthValue"]["Value"] = 1200 -- 气力值, 【需求】气力值
	tTreasureMapReward_GetItem[1][1][9]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[1][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[1][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[2] = {}
	-- ===挖宝奖励2
	-- ===索引:tTreasureMapReward_GetItem[2][1]
	-- ===LogStep: 2[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[2][1] = {}
	tTreasureMapReward_GetItem[2][1]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[2][1]["LogId"] = 12001894
	tTreasureMapReward_GetItem[2][1]["LogStep"] = " 4[2]"
	-- 漂流瓶 - 10%
	tTreasureMapReward_GetItem[2][1][1] = {}
	tTreasureMapReward_GetItem[2][1][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][1]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[2][1][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][1]["RewardItem"][1]["Id"] = 3330026 --  3330026 【库里没有该物品】, 【表格】漂流瓶
	tTreasureMapReward_GetItem[2][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3330026 【库里没有该物品】*1
	tTreasureMapReward_GetItem[2][1][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 10%
	tTreasureMapReward_GetItem[2][1][2] = {}
	tTreasureMapReward_GetItem[2][1][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][2]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[2][1][2]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][2]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][2]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tTreasureMapReward_GetItem[2][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 1000万爵位勋章（赠）*1
	tTreasureMapReward_GetItem[2][1][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4阶灵珠 - 5%
	tTreasureMapReward_GetItem[2][1][3] = {}
	tTreasureMapReward_GetItem[2][1][3]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][3]["ItemChance"] = 500
	tTreasureMapReward_GetItem[2][1][3]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][3]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][3]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tTreasureMapReward_GetItem[2][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tTreasureMapReward_GetItem[2][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTreasureMapReward_GetItem[2][1][3]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tTreasureMapReward_GetItem[2][1][3]["RewardBroadCast"] = tTreasureMapReward_Text["Broad"][2] -- 全服公告
	tTreasureMapReward_GetItem[2][1][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54278, data1）】全服限量:（1）, 超限给编号（9）-
	tTreasureMapReward_GetItem[2][1][3]["GlobalId"] = 54278
	tTreasureMapReward_GetItem[2][1][3]["Pos"] = 1
	tTreasureMapReward_GetItem[2][1][3]["MaxData"] = 1
	tTreasureMapReward_GetItem[2][1][3]["FullIndex"] = 9
	-- 赤炼石+4 - 9%
	tTreasureMapReward_GetItem[2][1][4] = {}
	tTreasureMapReward_GetItem[2][1][4]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][4]["ItemChance"] = 900
	tTreasureMapReward_GetItem[2][1][4]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][4]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTreasureMapReward_GetItem[2][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tTreasureMapReward_GetItem[2][1][4]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 2500- 15%
	tTreasureMapReward_GetItem[2][1][5] = {}
	tTreasureMapReward_GetItem[2][1][5]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][5]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[2][1][5]["RewardRepairValue"] = {}
	tTreasureMapReward_GetItem[2][1][5]["RewardRepairValue"]["Value"] = 2500
	tTreasureMapReward_GetItem[2][1][5]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tTreasureMapReward_GetItem[2][1][6] = {}
	tTreasureMapReward_GetItem[2][1][6]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][6]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[2][1][6]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][6]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[2][1][6]["RewardItem"][1]["Attr"] = "0 35 3" -- 万能神纹精粹*35
	tTreasureMapReward_GetItem[2][1][6]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 11%
	tTreasureMapReward_GetItem[2][1][7] = {}
	tTreasureMapReward_GetItem[2][1][7]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][7]["ItemChance"] = 1100
	tTreasureMapReward_GetItem[2][1][7]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][7]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][7]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tTreasureMapReward_GetItem[2][1][7]["RewardItem"][1]["Attr"] = "0 3" -- 魔武通玄丹*3
	tTreasureMapReward_GetItem[2][1][7]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 5%
	tTreasureMapReward_GetItem[2][1][8] = {}
	tTreasureMapReward_GetItem[2][1][8]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][8]["ItemChance"] = 500
	tTreasureMapReward_GetItem[2][1][8]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][1][8]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][1][8]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTreasureMapReward_GetItem[2][1][8]["RewardItem"][1]["Attr"] = "0 3" -- 龙鳞果*3
	tTreasureMapReward_GetItem[2][1][8]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 20%
	tTreasureMapReward_GetItem[2][1][9] = {}
	tTreasureMapReward_GetItem[2][1][9]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][1][9]["ItemChance"] = 2000
	tTreasureMapReward_GetItem[2][1][9]["RewardStrengthValue"] = {}
	tTreasureMapReward_GetItem[2][1][9]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】气力值
	tTreasureMapReward_GetItem[2][1][9]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[2][2] = {}
	-- ===挖宝奖励2
	-- ===索引:tTreasureMapReward_GetItem[2][2]
	-- ===LogStep: 2[2]
	tTreasureMapReward_GetItem[2][2]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[2][2]["LogId"] = 12001894
	tTreasureMapReward_GetItem[2][2]["LogStep"] = " 4[2]"
	-- 红色能量块 - 50%
	tTreasureMapReward_GetItem[2][2][1] = {}
	tTreasureMapReward_GetItem[2][2][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][2][1]["ItemChance"] = 5000
	tTreasureMapReward_GetItem[2][2][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[2][2][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[2][2][1]["RewardItem"][1]["Id"] = 3315633 --  3315633 【库里没有该物品】, 【表格】红色能量块
	tTreasureMapReward_GetItem[2][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3315633 【库里没有该物品】*1
	tTreasureMapReward_GetItem[2][2][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1 - 50%
	tTreasureMapReward_GetItem[2][2][2] = {}
	tTreasureMapReward_GetItem[2][2][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[2][2][2]["ItemChance"] = 5000
	tTreasureMapReward_GetItem[2][2][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[2][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[2][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[3] = {}
	-- ===挖宝奖励3
	-- ===索引:tTreasureMapReward_GetItem[3][1]
	-- ===LogStep: 2[3]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3][1] = {}
	tTreasureMapReward_GetItem[3][1]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[3][1]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3][1]["LogStep"] = " 4[3]"
	-- 漂流瓶 - 10%
	tTreasureMapReward_GetItem[3][1][1] = {}
	tTreasureMapReward_GetItem[3][1][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][1]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[3][1][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][1]["RewardItem"][1]["Id"] = 3330026 --  3330026 【库里没有该物品】, 【表格】漂流瓶
	tTreasureMapReward_GetItem[3][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3330026 【库里没有该物品】*1
	tTreasureMapReward_GetItem[3][1][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 10%
	tTreasureMapReward_GetItem[3][1][2] = {}
	tTreasureMapReward_GetItem[3][1][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][2]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[3][1][2]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][2]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][2]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tTreasureMapReward_GetItem[3][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 1000万爵位勋章（赠）*1
	tTreasureMapReward_GetItem[3][1][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4阶灵珠 - 5%
	tTreasureMapReward_GetItem[3][1][3] = {}
	tTreasureMapReward_GetItem[3][1][3]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][3]["ItemChance"] = 500
	tTreasureMapReward_GetItem[3][1][3]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][3]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][3]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tTreasureMapReward_GetItem[3][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tTreasureMapReward_GetItem[3][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTreasureMapReward_GetItem[3][1][3]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tTreasureMapReward_GetItem[3][1][3]["RewardBroadCast"] = tTreasureMapReward_Text["Broad"][3] -- 全服公告
	tTreasureMapReward_GetItem[3][1][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54278, data2）】全服限量:（1）, 超限给编号（9）-
	tTreasureMapReward_GetItem[3][1][3]["GlobalId"] = 54278
	tTreasureMapReward_GetItem[3][1][3]["Pos"] = 2
	tTreasureMapReward_GetItem[3][1][3]["MaxData"] = 1
	tTreasureMapReward_GetItem[3][1][3]["FullIndex"] = 9
	-- 赤炼石+4 - 9%
	tTreasureMapReward_GetItem[3][1][4] = {}
	tTreasureMapReward_GetItem[3][1][4]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][4]["ItemChance"] = 900
	tTreasureMapReward_GetItem[3][1][4]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][4]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTreasureMapReward_GetItem[3][1][4]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*2
	tTreasureMapReward_GetItem[3][1][4]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 2700 - 15%
	tTreasureMapReward_GetItem[3][1][5] = {}
	tTreasureMapReward_GetItem[3][1][5]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][5]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[3][1][5]["RewardRepairValue"] = {}
	tTreasureMapReward_GetItem[3][1][5]["RewardRepairValue"]["Value"] = 2700
	tTreasureMapReward_GetItem[3][1][5]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tTreasureMapReward_GetItem[3][1][6] = {}
	tTreasureMapReward_GetItem[3][1][6]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][6]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[3][1][6]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][6]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[3][1][6]["RewardItem"][1]["Attr"] = "0 40 3" -- 万能神纹精粹*40
	tTreasureMapReward_GetItem[3][1][6]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 11%
	tTreasureMapReward_GetItem[3][1][7] = {}
	tTreasureMapReward_GetItem[3][1][7]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][7]["ItemChance"] = 1100
	tTreasureMapReward_GetItem[3][1][7]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][7]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][7]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tTreasureMapReward_GetItem[3][1][7]["RewardItem"][1]["Attr"] = "0 3" -- 魔武通玄丹*3
	tTreasureMapReward_GetItem[3][1][7]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 11%
	tTreasureMapReward_GetItem[3][1][8] = {}
	tTreasureMapReward_GetItem[3][1][8]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][8]["ItemChance"] = 500
	tTreasureMapReward_GetItem[3][1][8]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][1][8]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][1][8]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTreasureMapReward_GetItem[3][1][8]["RewardItem"][1]["Attr"] = "0 3" -- 龙鳞果*3
	tTreasureMapReward_GetItem[3][1][8]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 20%
	tTreasureMapReward_GetItem[3][1][9] = {}
	tTreasureMapReward_GetItem[3][1][9]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][1][9]["ItemChance"] = 2000
	tTreasureMapReward_GetItem[3][1][9]["RewardStrengthValue"] = {}
	tTreasureMapReward_GetItem[3][1][9]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】气力值
	tTreasureMapReward_GetItem[3][1][9]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[3][2] = {}
	-- ===挖宝奖励3
	-- ===索引:tTreasureMapReward_GetItem[3][2]
	-- ===LogStep: 2[3]
	tTreasureMapReward_GetItem[3][2]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[3][2]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3][2]["LogStep"] = " 4[3]"
	-- 红色能量块 - 75%
	tTreasureMapReward_GetItem[3][2][1] = {}
	tTreasureMapReward_GetItem[3][2][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][2][1]["ItemChance"] = 7500
	tTreasureMapReward_GetItem[3][2][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3][2][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3][2][1]["RewardItem"][1]["Id"] = 3315633 --  3315633 【库里没有该物品】, 【表格】红色能量块
	tTreasureMapReward_GetItem[3][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3315633 【库里没有该物品】*1
	tTreasureMapReward_GetItem[3][2][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1 - 25%
	tTreasureMapReward_GetItem[3][2][2] = {}
	tTreasureMapReward_GetItem[3][2][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[3][2][2]["ItemChance"] = 2500
	tTreasureMapReward_GetItem[3][2][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[4] = {}
	-- ===挖宝奖励4
	-- ===索引:tTreasureMapReward_GetItem[4][1]
	-- ===LogStep: 2[4]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[4][1] = {}
	tTreasureMapReward_GetItem[4][1]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[4][1]["LogId"] = 12001894
	tTreasureMapReward_GetItem[4][1]["LogStep"] = " 4[4]"
	-- 漂流瓶 - 10%
	tTreasureMapReward_GetItem[4][1][1] = {}
	tTreasureMapReward_GetItem[4][1][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][1]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[4][1][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][1]["RewardItem"][1]["Id"] = 3330026 --  3330026 【库里没有该物品】, 【表格】漂流瓶
	tTreasureMapReward_GetItem[4][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3330026 【库里没有该物品】*1
	tTreasureMapReward_GetItem[4][1][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 10%
	tTreasureMapReward_GetItem[4][1][2] = {}
	tTreasureMapReward_GetItem[4][1][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][2]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[4][1][2]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][2]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][2]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tTreasureMapReward_GetItem[4][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 1000万爵位勋章（赠）*1
	tTreasureMapReward_GetItem[4][1][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4阶灵珠 - 5%
	tTreasureMapReward_GetItem[4][1][3] = {}
	tTreasureMapReward_GetItem[4][1][3]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][3]["ItemChance"] = 500
	tTreasureMapReward_GetItem[4][1][3]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][3]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][3]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tTreasureMapReward_GetItem[4][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tTreasureMapReward_GetItem[4][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTreasureMapReward_GetItem[4][1][3]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tTreasureMapReward_GetItem[4][1][3]["RewardBroadCast"] = tTreasureMapReward_Text["Broad"][4] -- 全服公告
	tTreasureMapReward_GetItem[4][1][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54278, data3）】全服限量:（1）, 超限给编号（9）-
	tTreasureMapReward_GetItem[4][1][3]["GlobalId"] = 54278
	tTreasureMapReward_GetItem[4][1][3]["Pos"] = 3
	tTreasureMapReward_GetItem[4][1][3]["MaxData"] = 1
	tTreasureMapReward_GetItem[4][1][3]["FullIndex"] = 9
	-- 赤炼石+4 - 5%
	tTreasureMapReward_GetItem[4][1][4] = {}
	tTreasureMapReward_GetItem[4][1][4]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][4]["ItemChance"] = 500
	tTreasureMapReward_GetItem[4][1][4]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][4]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTreasureMapReward_GetItem[4][1][4]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*2
	tTreasureMapReward_GetItem[4][1][4]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 12%
	tTreasureMapReward_GetItem[4][1][5] = {}
	tTreasureMapReward_GetItem[4][1][5]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][5]["ItemChance"] = 1200
	tTreasureMapReward_GetItem[4][1][5]["RewardRepairValue"] = {}
	tTreasureMapReward_GetItem[4][1][5]["RewardRepairValue"]["Value"] = 3000
	tTreasureMapReward_GetItem[4][1][5]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tTreasureMapReward_GetItem[4][1][6] = {}
	tTreasureMapReward_GetItem[4][1][6]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][6]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[4][1][6]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][6]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[4][1][6]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹*50
	tTreasureMapReward_GetItem[4][1][6]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 14%
	tTreasureMapReward_GetItem[4][1][7] = {}
	tTreasureMapReward_GetItem[4][1][7]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][7]["ItemChance"] = 1400
	tTreasureMapReward_GetItem[4][1][7]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][7]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][7]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tTreasureMapReward_GetItem[4][1][7]["RewardItem"][1]["Attr"] = "0 4" -- 魔武通玄丹*4
	tTreasureMapReward_GetItem[4][1][7]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 9%
	tTreasureMapReward_GetItem[4][1][8] = {}
	tTreasureMapReward_GetItem[4][1][8]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][8]["ItemChance"] = 900
	tTreasureMapReward_GetItem[4][1][8]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][1][8]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][1][8]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTreasureMapReward_GetItem[4][1][8]["RewardItem"][1]["Attr"] = "0 4" -- 龙鳞果*4
	tTreasureMapReward_GetItem[4][1][8]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 20%
	tTreasureMapReward_GetItem[4][1][9] = {}
	tTreasureMapReward_GetItem[4][1][9]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][1][9]["ItemChance"] = 2000
	tTreasureMapReward_GetItem[4][1][9]["RewardStrengthValue"] = {}
	tTreasureMapReward_GetItem[4][1][9]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】气力值
	tTreasureMapReward_GetItem[4][1][9]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[4][2] = {}
	-- ===挖宝奖励4
	-- ===索引:tTreasureMapReward_GetItem[4][2]
	-- ===LogStep: 2[4]
	tTreasureMapReward_GetItem[4][2]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[4][2]["LogId"] = 12001894
	tTreasureMapReward_GetItem[4][2]["LogStep"] = " 4[4]"
	-- 蓝色能量块 - 50%
	tTreasureMapReward_GetItem[4][2][1] = {}
	tTreasureMapReward_GetItem[4][2][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][2][1]["ItemChance"] = 5000
	tTreasureMapReward_GetItem[4][2][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[4][2][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[4][2][1]["RewardItem"][1]["Id"] = 3315634 --  3315634 【库里没有该物品】, 【表格】蓝色能量块
	tTreasureMapReward_GetItem[4][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3315634 【库里没有该物品】*1
	tTreasureMapReward_GetItem[4][2][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1 - 50%
	tTreasureMapReward_GetItem[4][2][2] = {}
	tTreasureMapReward_GetItem[4][2][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[4][2][2]["ItemChance"] = 5000
	tTreasureMapReward_GetItem[4][2][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[4][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[4][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[5] = {}
	-- ===挖宝奖励5
	-- ===索引:tTreasureMapReward_GetItem[5][1]
	-- ===LogStep: 2[5]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[5][1] = {}
	tTreasureMapReward_GetItem[5][1]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[5][1]["LogId"] = 12001894
	tTreasureMapReward_GetItem[5][1]["LogStep"] = " 4[5]"
	-- 漂流瓶 - 10%
	tTreasureMapReward_GetItem[5][1][1] = {}
	tTreasureMapReward_GetItem[5][1][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][1]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[5][1][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][1]["RewardItem"][1]["Id"] = 3330026 --  3330026 【库里没有该物品】, 【表格】漂流瓶
	tTreasureMapReward_GetItem[5][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3330026 【库里没有该物品】*1
	tTreasureMapReward_GetItem[5][1][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 10%
	tTreasureMapReward_GetItem[5][1][2] = {}
	tTreasureMapReward_GetItem[5][1][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][2]["ItemChance"] = 1000
	tTreasureMapReward_GetItem[5][1][2]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][2]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][2]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tTreasureMapReward_GetItem[5][1][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 1000万爵位勋章（赠）*2
	tTreasureMapReward_GetItem[5][1][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4阶灵珠 - 5%
	tTreasureMapReward_GetItem[5][1][3] = {}
	tTreasureMapReward_GetItem[5][1][3]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][3]["ItemChance"] = 500
	tTreasureMapReward_GetItem[5][1][3]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][3]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][3]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tTreasureMapReward_GetItem[5][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tTreasureMapReward_GetItem[5][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTreasureMapReward_GetItem[5][1][3]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tTreasureMapReward_GetItem[5][1][3]["RewardBroadCast"] = tTreasureMapReward_Text["Broad"][5] -- 全服公告
	tTreasureMapReward_GetItem[5][1][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54278, data4）】全服限量:（1）, 超限给编号（9）-
	tTreasureMapReward_GetItem[5][1][3]["GlobalId"] = 54278
	tTreasureMapReward_GetItem[5][1][3]["Pos"] = 4
	tTreasureMapReward_GetItem[5][1][3]["MaxData"] = 1
	tTreasureMapReward_GetItem[5][1][3]["FullIndex"] = 9
	-- 赤炼石+4 - 5%
	tTreasureMapReward_GetItem[5][1][4] = {}
	tTreasureMapReward_GetItem[5][1][4]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][4]["ItemChance"] = 500
	tTreasureMapReward_GetItem[5][1][4]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][4]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTreasureMapReward_GetItem[5][1][4]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*2
	tTreasureMapReward_GetItem[5][1][4]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 9%
	tTreasureMapReward_GetItem[5][1][5] = {}
	tTreasureMapReward_GetItem[5][1][5]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][5]["ItemChance"] = 900
	tTreasureMapReward_GetItem[5][1][5]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][5]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][5]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tTreasureMapReward_GetItem[5][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tTreasureMapReward_GetItem[5][1][5]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tTreasureMapReward_GetItem[5][1][6] = {}
	tTreasureMapReward_GetItem[5][1][6]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][6]["ItemChance"] = 1500
	tTreasureMapReward_GetItem[5][1][6]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][6]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[5][1][6]["RewardItem"][1]["Attr"] = "0 60 3" -- 万能神纹精粹*60
	tTreasureMapReward_GetItem[5][1][6]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 13%
	tTreasureMapReward_GetItem[5][1][7] = {}
	tTreasureMapReward_GetItem[5][1][7]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][7]["ItemChance"] = 1300
	tTreasureMapReward_GetItem[5][1][7]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][7]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][7]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tTreasureMapReward_GetItem[5][1][7]["RewardItem"][1]["Attr"] = "0 5" -- 魔武通玄丹*5
	tTreasureMapReward_GetItem[5][1][7]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 9%
	tTreasureMapReward_GetItem[5][1][8] = {}
	tTreasureMapReward_GetItem[5][1][8]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][8]["ItemChance"] = 900
	tTreasureMapReward_GetItem[5][1][8]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][1][8]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][1][8]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTreasureMapReward_GetItem[5][1][8]["RewardItem"][1]["Attr"] = "0 5" -- 龙鳞果*5
	tTreasureMapReward_GetItem[5][1][8]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 24%
	tTreasureMapReward_GetItem[5][1][9] = {}
	tTreasureMapReward_GetItem[5][1][9]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][1][9]["ItemChance"] = 2400
	tTreasureMapReward_GetItem[5][1][9]["RewardStrengthValue"] = {}
	tTreasureMapReward_GetItem[5][1][9]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】气力值
	tTreasureMapReward_GetItem[5][1][9]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[5][2] = {}
	-- ===挖宝奖励5
	-- ===索引:tTreasureMapReward_GetItem[5][2]
	-- ===LogStep: 2[5]
	tTreasureMapReward_GetItem[5][2]["ItemChanceSum"] = 10000
	tTreasureMapReward_GetItem[5][2]["LogId"] = 12001894
	tTreasureMapReward_GetItem[5][2]["LogStep"] = " 4[5]"
	-- 黄色能量块 - 30%
	tTreasureMapReward_GetItem[5][2][1] = {}
	tTreasureMapReward_GetItem[5][2][1]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][2][1]["ItemChance"] = 3000
	tTreasureMapReward_GetItem[5][2][1]["RewardItem"] = {}
	tTreasureMapReward_GetItem[5][2][1]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[5][2][1]["RewardItem"][1]["Id"] = 3315635 --  3315635 【库里没有该物品】, 【表格】黄色能量块
	tTreasureMapReward_GetItem[5][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3315635 【库里没有该物品】*1
	tTreasureMapReward_GetItem[5][2][1]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1 - 70%
	tTreasureMapReward_GetItem[5][2][2] = {}
	tTreasureMapReward_GetItem[5][2][2]["RandomItemChanceType"] = 2
	tTreasureMapReward_GetItem[5][2][2]["ItemChance"] = 7000
	tTreasureMapReward_GetItem[5][2][2]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[5][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[5][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[3315642] = {}
	-- ===寻宝冠军礼盒
	-- ===索引:tTreasureMapReward_GetItem[3315642]
	-- ===删除: 3315642,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315642]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315642]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315642]["DeleteItem"] = {}
	tTreasureMapReward_GetItem[3315642]["DeleteItem"][1] = {}
	tTreasureMapReward_GetItem[3315642]["DeleteItem"][1]["Id"] = 3315642 -- 【库】 3315642 【库里没有该物品】[属性:]
	tTreasureMapReward_GetItem[3315642]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315642]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315642]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹礼包
	tTreasureMapReward_GetItem[3315642]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹礼包*1
	tTreasureMapReward_GetItem[3315642]["RewardItem"][2] = {}
	tTreasureMapReward_GetItem[3315642]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[3315642]["RewardItem"][2]["Attr"] = "0 1000 3" -- 万能神纹精粹*1000（[错误]物品数量超100个）
	tTreasureMapReward_GetItem[3315642]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315642]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315642]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[3315643] = {}
	-- ===寻宝勇者礼盒
	-- ===索引:tTreasureMapReward_GetItem[3315643]
	-- ===删除: 3315643,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315643]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315643]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315643]["DeleteItem"] = {}
	tTreasureMapReward_GetItem[3315643]["DeleteItem"][1] = {}
	tTreasureMapReward_GetItem[3315643]["DeleteItem"][1]["Id"] = 3315643 -- 【库】 3315643 【库里没有该物品】[属性:]
	tTreasureMapReward_GetItem[3315643]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315643]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315643]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tTreasureMapReward_GetItem[3315643]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*2
	tTreasureMapReward_GetItem[3315643]["RewardItem"][2] = {}
	tTreasureMapReward_GetItem[3315643]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[3315643]["RewardItem"][2]["Attr"] = "0 800 3" -- 万能神纹精粹*800（[错误]物品数量超100个）
	tTreasureMapReward_GetItem[3315643]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315643]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315643]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[3315644] = {}
	-- ===寻宝达人礼盒
	-- ===索引:tTreasureMapReward_GetItem[3315644]
	-- ===删除: 3315644,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315644]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315644]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315644]["DeleteItem"] = {}
	tTreasureMapReward_GetItem[3315644]["DeleteItem"][1] = {}
	tTreasureMapReward_GetItem[3315644]["DeleteItem"][1]["Id"] = 3315644 -- 【库】 3315644 【库里没有该物品】[属性:]
	tTreasureMapReward_GetItem[3315644]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315644]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315644]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tTreasureMapReward_GetItem[3315644]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tTreasureMapReward_GetItem[3315644]["RewardItem"][2] = {}
	tTreasureMapReward_GetItem[3315644]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[3315644]["RewardItem"][2]["Attr"] = "0 600 3" -- 万能神纹精粹*600（[错误]物品数量超100个）
	tTreasureMapReward_GetItem[3315644]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315644]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315644]["RewardEffect"]["Effect"] = "angelwing"


	tTreasureMapReward_GetItem[3315645] = {}
	-- ===寻宝精英礼盒
	-- ===索引:tTreasureMapReward_GetItem[3315645]
	-- ===删除: 3315645,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315645]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315645]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315645]["DeleteItem"] = {}
	tTreasureMapReward_GetItem[3315645]["DeleteItem"][1] = {}
	tTreasureMapReward_GetItem[3315645]["DeleteItem"][1]["Id"] = 3315645 -- 【库】 3315645 【库里没有该物品】[属性:]
	tTreasureMapReward_GetItem[3315645]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315645]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315645]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tTreasureMapReward_GetItem[3315645]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tTreasureMapReward_GetItem[3315645]["RewardItem"][2] = {}
	tTreasureMapReward_GetItem[3315645]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tTreasureMapReward_GetItem[3315645]["RewardItem"][2]["Attr"] = "0 300 3" -- 万能神纹精粹*300（[错误]物品数量超100个）
	tTreasureMapReward_GetItem[3315645]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315645]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315645]["RewardEffect"]["Effect"] = "angelwing"

	tTreasureMapReward_GetItem[3315712] = {}
	-- ===挖宝奖励1
	-- ===索引:tTreasureMapReward_GetItem[3315712]
	-- ===删除: 3315712,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315712]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315712]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315712]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315712]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315712]["RewardItem"][1]["Id"] = 3315712 -- 挖宝奖励1
	tTreasureMapReward_GetItem[3315712]["RewardItem"][1]["Attr"] = "0 1" -- 挖宝奖励1
	tTreasureMapReward_GetItem[3315712]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315712]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315712]["RewardEffect"]["Effect"] = "angelwing"
	
	tTreasureMapReward_GetItem[3315713] = {}
	-- ===挖宝奖励2
	-- ===索引:tTreasureMapReward_GetItem[3315713]
	-- ===删除: 3315713,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315713]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315713]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315713]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315713]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315713]["RewardItem"][1]["Id"] = 3315713 -- 挖宝奖励2
	tTreasureMapReward_GetItem[3315713]["RewardItem"][1]["Attr"] = "0 1" -- 挖宝奖励2
	tTreasureMapReward_GetItem[3315713]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315713]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315713]["RewardEffect"]["Effect"] = "angelwing"

	tTreasureMapReward_GetItem[3315714] = {}
	-- ===挖宝奖励3
	-- ===索引:tTreasureMapReward_GetItem[3315714]
	-- ===删除: 3315714,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315714]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315714]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315714]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315714]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315714]["RewardItem"][1]["Id"] = 3315714 -- 挖宝奖励3
	tTreasureMapReward_GetItem[3315714]["RewardItem"][1]["Attr"] = "0 1" -- 挖宝奖励3
	tTreasureMapReward_GetItem[3315714]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315714]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315714]["RewardEffect"]["Effect"] = "angelwing"
	
	tTreasureMapReward_GetItem[3315715] = {}
	-- ===挖宝奖励4
	-- ===索引:tTreasureMapReward_GetItem[3315715]
	-- ===删除: 3315715,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315715]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315715]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315715]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315715]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315715]["RewardItem"][1]["Id"] = 3315715 -- 挖宝奖励4
	tTreasureMapReward_GetItem[3315715]["RewardItem"][1]["Attr"] = "0 1" -- 挖宝奖励4
	tTreasureMapReward_GetItem[3315715]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315715]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315715]["RewardEffect"]["Effect"] = "angelwing"
	
	tTreasureMapReward_GetItem[3315716] = {}
	-- ===挖宝奖励5
	-- ===索引:tTreasureMapReward_GetItem[3315716]
	-- ===删除: 3315716,1
	-- ===LogStep: 4[2]
	-- ===
	-- ===
	tTreasureMapReward_GetItem[3315716]["LogId"] = 12001894
	tTreasureMapReward_GetItem[3315716]["LogStep"] = "4[2]"
	tTreasureMapReward_GetItem[3315716]["RewardItem"] = {}
	tTreasureMapReward_GetItem[3315716]["RewardItem"][1] = {}
	tTreasureMapReward_GetItem[3315716]["RewardItem"][1]["Id"] = 3315716 -- 挖宝奖励5
	tTreasureMapReward_GetItem[3315716]["RewardItem"][1]["Attr"] = "0 1" -- 挖宝奖励5
	tTreasureMapReward_GetItem[3315716]["RewardEffect"] = {}
	tTreasureMapReward_GetItem[3315716]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTreasureMapReward_GetItem[3315716]["RewardEffect"]["Effect"] = "angelwing"

-- 成功
local tTreasureMapReward_Table = {}
-- 事件1
	tTreasureMapReward_Table[1] = {}
	-- 成功
	tTreasureMapReward_Table[1][1] = 2
	-- 失败
	tTreasureMapReward_Table[1][2] = 1
	
-- 事件2
	tTreasureMapReward_Table[2] = {}
	-- 成功
	tTreasureMapReward_Table[2][1] = 3
	-- 失败
	tTreasureMapReward_Table[2][2] = 2
	
-- 事件3
	tTreasureMapReward_Table[3] = {}
	-- 成功
	tTreasureMapReward_Table[3][1] = 4
	-- 失败
	tTreasureMapReward_Table[3][2] = 3
	
-- 事件4
	tTreasureMapReward_Table[4] = {}
	-- 成功
	tTreasureMapReward_Table[4][1] = 5
	-- 失败
	tTreasureMapReward_Table[4][2] = 5
	
local tTreasureMapReward_RewardId = {}
	tTreasureMapReward_RewardId[1] = 3315712
	tTreasureMapReward_RewardId[2] = 3315713
	tTreasureMapReward_RewardId[3] = 3315714
	tTreasureMapReward_RewardId[4] = 3315715
	tTreasureMapReward_RewardId[5] = 3315716
	
local tTreasureMapReward_Stc = {}
	tTreasureMapReward_Stc[1] = {}
	tTreasureMapReward_Stc[1]["EventType"] = 216
	tTreasureMapReward_Stc[1]["DataType"] = 69

local tTreasureMapReward_Log = {}
	tTreasureMapReward_Log["DeleteItem"] = {}
	tTreasureMapReward_Log["DeleteItem"][1] = "0,0,%d,%d,12001894,4[10],0,0"
	tTreasureMapReward_Log["DeleteItem"][2] = "0,0,%d,%d,12001894,4[11],0,0"

----------------------------------逻辑部分---------------------------------------------

-- nIndex 事件（1-4）	BResult 结果（成功 失败）
function TreasureMapReward_GetItemTable(nIndex,BResult)
--成功失败索引的表
	local nTreasureMapReward_nNum = tTreasureMapReward_Table[nIndex][2]
	local nTreasureMapReward_RewardId = tTreasureMapReward_RewardId[nTreasureMapReward_nNum]
	if BResult then
		nTreasureMapReward_nNum = tTreasureMapReward_Table[nIndex][1]
		nTreasureMapReward_RewardId = tTreasureMapReward_RewardId[nTreasureMapReward_nNum]
	end
	return tTreasureMapReward_GetItem[nTreasureMapReward_nNum],tTreasureMapReward_GetItem[nTreasureMapReward_RewardId]
end

--背包空间判断
function TreasureMapReward_JubBag(nIndex,BResult)
	local tTreasureMapReward_Tab,tTreasureMapReward_Tab2 = TreasureMapReward_GetItemTable(nIndex,BResult)

	if not RewardTemplate_CheckSpace(tTreasureMapReward_Tab2) then
		return false
	end 
	
	return true
end

function TreasureMapReward_OpenPack(nIndex)
	local tTreasureMapReward_Tab = tTreasureMapReward_GetItem[nIndex]
	local nTreasureMapReward_Flag = #tTreasureMapReward_Tab
	local tTreasureMapReward_NewTab = {}
	local nTreasureMapReward_Space = 0
	local nTreasureMapReward_RewardId = tTreasureMapReward_RewardId[nIndex]
	
	-- 活动时间后删除物品
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["NpcActivityTime"]) then
		local nTreasureMapReward_RewardNum = Get_CountItemType(nTreasureMapReward_RewardId,0)
		
		-- 删除背包所有物品
		if not Item_DelMulItem(nTreasureMapReward_RewardId, nTreasureMapReward_RewardId, nTreasureMapReward_RewardNum) then
			return
		end
		Sys_SaveActionRewardLog(string.format(tTreasureMapReward_Log["DeleteItem"][1], nTreasureMapReward_RewardId, nTreasureMapReward_RewardNum))
		return
	end
	
	-- 物品不存在
	if not Item_ChkMulItem(nTreasureMapReward_RewardId,nTreasureMapReward_RewardId,1) then
		return
	end
	
	for i = 1,nTreasureMapReward_Flag do
		nTreasureMapReward_Space = nTreasureMapReward_Space + RewardTemplate_GetRandomSpace(tTreasureMapReward_Tab,i)
	end
	
	if not User_CheckLeftSpace(nTreasureMapReward_Space) then
		User_TalkChannel2005(string.format(tTreasureMapReward_Text["Msg"]["NoSpace"],nTreasureMapReward_Space))
		return
	end 
	
	if not Item_DelMulItem(nTreasureMapReward_RewardId,nTreasureMapReward_RewardId,1) then
		return
	end
	Sys_SaveActionRewardLog(string.format(tTreasureMapReward_Log["DeleteItem"][2], nTreasureMapReward_RewardId, 1))
	for i = 1,nTreasureMapReward_Flag do
		local tTreasureMapReward_NewReward,sTreasureMapReward_RewardStr = RewardTemplate_NewRandom(tTreasureMapReward_Tab,i)
		if sTreasureMapReward_RewardStr ~= ""  then
			table.insert(tTreasureMapReward_NewTab,sTreasureMapReward_RewardStr)
		end
		if tTreasureMapReward_NewReward[1]["tAward"][1]["RewardItem"] ~= nil then
			if tTreasureMapReward_NewReward[1]["tAward"][1]["RewardItem"][1]["Id"] == tTreasureMapReward_GetItem[2][2][1]["RewardItem"][1]["Id"] then
				if TreasureMapReward_SetStc() then
					Sys_MsgBox(tTreasurePlaying_Text["FirstReward"],"</F>TreasureMapReward_FindNpc</N>26015")
				end
			end
		end
	end
	
	return
end

-- 传送回npc
function TreasureMapReward_FindNpc(nNpcId)
	local nMapId, nPosX, nPosY = NpcPosition_Get(nNpcId)
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5)
end

-- 挖宝获得奖励 -- 获得礼包
function TreasureMapReward_GetItem(nIndex,BResult)
	--背包空间判断
	if not TreasureMapReward_JubBag(nIndex,BResult) then
		return
	end
	local tTreasureMapReward_Tab,tTreasureMapReward_Tab2 = TreasureMapReward_GetItemTable(nIndex,BResult)
	
	local bTreasureMapReward_Flag, sTreasureMapReward_Str = RewardTemplate_UseItemAndMsg(tTreasureMapReward_Tab2)
	if not bTreasureMapReward_Flag then
		return
	end
	return sTreasureMapReward_Str
end

---首次获得红玛瑙 打掩码
function TreasureMapReward_SetStc()
	local nTreasureMapReward_Event = tTreasureMapReward_Data["Stc"]["EventType"]
	local nTreasureMapReward_Type = tTreasureMapReward_Data["Stc"]["DataType"]
---判断
	if Task_ChkStcValue(nTreasureMapReward_Event,nTreasureMapReward_Type,">=",1)  then
		return false
	end
	Task_SetStatistic(nTreasureMapReward_Event,nTreasureMapReward_Type,1,1)
	Task_SetStcTimestamp(nTreasureMapReward_Event,nTreasureMapReward_Type,0)
	return true
end
----宇君那边使用
function TreasureMapReward_JubBagTen(nIndex)
	local tTreasureMapReward_Tab = TreasureMapReward_GetItemTable(nIndex,true)
	local nTreasureMapReward_Flag = #tTreasureMapReward_Tab
	local nTreasureMapReward_Space = 0
		for i = 1,nTreasureMapReward_Flag do
			nTreasureMapReward_Space = nTreasureMapReward_Space + RewardTemplate_GetRandomSpace(tTreasureMapReward_Tab,i)
		end
	return nTreasureMapReward_Space
end

----更新排行榜
function TreasureMapReward_Update()
	local nTreasureMapReward_NowUserId = Get_UserId()
	local nTreasureMapReward_Event = tTreasureMapReward_Stc[1]["EventType"]
	local nTreasureMapReward_Type = tTreasureMapReward_Stc[1]["DataType"]
	local nTreasureMapReward_nScore = Get_UserStatisticValue(nTreasureMapReward_Event,nTreasureMapReward_Type,nTreasureMapReward_NowUserId)
	RankingFunc_SetInfo(tTreasureMapReward_Data["Index"],nTreasureMapReward_nScore,nTreasureMapReward_NowUserId)
end

----清动态表
function TreasureMapReward_ClearGlobal()
	local nTreasureMapReward_GlobalId = tTreasureMapReward_Data["GlobalId"]
	Sys_ResetAllSynaGlobalData(nTreasureMapReward_GlobalId)
end

---寻路到万愚之王
function TreasureMapReward_Goto(nNum)
	
	NpcPosition_PathFind(26014)
end
------------------------------------------物品模板--------------------------------------------
tItem[3315642] = tItem[3315642] or {}
tItem[3315642]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tTreasureMapReward_GetItem[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tTreasureMapReward_GetItem[nItemId])
end
tItem[3315643] = tItem[3315642] or {}
tItem[3315644] = tItem[3315642] or {}
tItem[3315645] = tItem[3315642] or {}

-- 3315712,'挖宝奖励1'
tItem[3315712] = tItem[3315712] or {}
tItem[3315712]["Function"] = function(nItemId,sItemName)
	TreasureMapReward_OpenPack(1)
end

-- 3315713,'挖宝奖励2'
tItem[3315713] = tItem[3315713] or {}
tItem[3315713]["Function"] = function(nItemId,sItemName)
	TreasureMapReward_OpenPack(2)
end

-- 3315714,'挖宝奖励3'
tItem[3315714] = tItem[3315714] or {}
tItem[3315714]["Function"] = function(nItemId,sItemName)
	TreasureMapReward_OpenPack(3)
end

-- 3315715,'挖宝奖励4'
tItem[3315715] = tItem[3315715] or {}
tItem[3315715]["Function"] = function(nItemId,sItemName)
	TreasureMapReward_OpenPack(4)
end

-- 3315716,'挖宝奖励5'
tItem[3315716] = tItem[3315716] or {}
tItem[3315716]["Function"] = function(nItemId,sItemName)
	TreasureMapReward_OpenPack(5)
end

------------------------------------------排行榜--------------------------------------------
-- 红粉佳人榜前10名玩家
tRankingFunc_Info[26014] = {}
tRankingFunc_Info[26014]["ActiveTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
tRankingFunc_Info[26014]["DayTime"] = {}
tRankingFunc_Info[26014]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[26014]["Reset"] = 1
tRankingFunc_Info[26014]["Global"] = {54281,54282,54283,54284}
tRankingFunc_Info[26014]["RankNum"] = 10
-- 邮件发奖
tRankingFunc_Info[26014]["Mail"] = {}
tRankingFunc_Info[26014]["Mail"]["ActiveTime"] = tActivityTime["AprilFoolsDay"]["RankRewardTime"]
tRankingFunc_Info[26014]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[26014]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[26014]["Mail"]["Reward"] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[26014]["Mail"]["Reward"][1]["ActionId"] = 576514
tRankingFunc_Info[26014]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][1]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][1]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][1]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][1]
tRankingFunc_Info[26014]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[26014]["Mail"]["Reward"][2]["ActionId"] = 576515
tRankingFunc_Info[26014]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][2]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][2]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][2]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][2]
tRankingFunc_Info[26014]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[26014]["Mail"]["Reward"][3]["ActionId"] = 576515
tRankingFunc_Info[26014]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][3]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][3]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][3]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][3]
tRankingFunc_Info[26014]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[26014]["Mail"]["Reward"][4]["ActionId"] = 576516
tRankingFunc_Info[26014]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][4]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][4]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][4]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][4]
tRankingFunc_Info[26014]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[26014]["Mail"]["Reward"][5]["ActionId"] = 576516
tRankingFunc_Info[26014]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][5]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][5]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][5]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][5]
tRankingFunc_Info[26014]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[26014]["Mail"]["Reward"][6]["ActionId"] = 576516
tRankingFunc_Info[26014]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][6]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][6]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][6]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][6]
tRankingFunc_Info[26014]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][7]["ActionId"] = 576517
tRankingFunc_Info[26014]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][7]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][7]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][7]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][7]
tRankingFunc_Info[26014]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[26014]["Mail"]["Reward"][8]["ActionId"] = 576517
tRankingFunc_Info[26014]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][8]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][8]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][8]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][8]
tRankingFunc_Info[26014]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[26014]["Mail"]["Reward"][9]["ActionId"] = 576517
tRankingFunc_Info[26014]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][9]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][9]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][9]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][9]
tRankingFunc_Info[26014]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[26014]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[26014]["Mail"]["Reward"][10]["ActionId"] = 576517
tRankingFunc_Info[26014]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[26014]["Mail"]["Reward"][10]["Title"] = tTreasureMapReward_Text["Mail"]["Title"]
tRankingFunc_Info[26014]["Mail"]["Reward"][10]["Sender"] = tTreasureMapReward_Text["Mail"]["Sender"]
tRankingFunc_Info[26014]["Mail"]["Reward"][10]["Content"] = tTreasureMapReward_Text["Mail"]["Content"][10]
------------------------------------------时间质检--------------------------------------------
local tTreasureMapReward_OnTime = {}
	-- 每小时清动态表
	tTreasureMapReward_OnTime[1] = {}
	tTreasureMapReward_OnTime[1]["Type"] = 2
	tTreasureMapReward_OnTime[1]["TimeType"] = 5
	tTreasureMapReward_OnTime[1]["Multiple"] = {}
	tTreasureMapReward_OnTime[1]["Multiple"][1]  = "00 00"
	tTreasureMapReward_OnTime[1]["Func"] = TreasureMapReward_ClearGlobal
	table.insert(tSystemTime_InitialData,tTreasureMapReward_OnTime[1])


