------------------------------------------------------------------------------------
--Name：            191217[简体征服][活动脚本]2020年全球中国年活动预热
--Creator:      王贤
--Created:     2019-12-17
------------------------------------------------------------------------------------
--任务需求：
-- 活动时间：1.13-1.16（周一更新）

-- 1、更新春节气氛、按钮、宣传图
-- 2、玩家每天上线可以获得一条拜个早年的祝福语和幸运年货礼包，礼包待1.17小年开始后即可开启
------------------------------------------------------------------------------------
-- 前缀
-- SpringFestival2020Preheat_
-- logid： 12001796
-- 变量前缀: 2020Preheat

----------------------------------表配置部分--------------------------------------------
local tSpringFestival2020Preheat_Data = {}
-- log
tSpringFestival2020Preheat_Data["Log"] = "0,0,%d,%d,12001796,2,0,0"
-- stc
tSpringFestival2020Preheat_Data["Stc"] = {}
tSpringFestival2020Preheat_Data["Stc"]["Event"] = {}
tSpringFestival2020Preheat_Data["Stc"]["Data"] = {}
-- 判断当天是否获得过奖励
tSpringFestival2020Preheat_Data["Stc"]["Event"][1] = 211
tSpringFestival2020Preheat_Data["Stc"]["Data"][1] = 64
-- 发奖action
tSpringFestival2020Preheat_Data["Action"] = 575532

-- 等级限定
tSpringFestival2020Preheat_Data["Level"] = 80
tSpringFestival2020Preheat_Data["Meto"] = 0




local tSpringFestival2020Preheat_RandomReward = {}
	-- ===鼠年鸿运礼包
	-- ===索引: tSpringFestival2020Preheat_RandomReward[3327287]
	-- ===删除:3327287
	tSpringFestival2020Preheat_RandomReward[3327287] = {}
	tSpringFestival2020Preheat_RandomReward[3327287]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Preheat_RandomReward[3327287]["DeleteItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287]["DeleteItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287]["DeleteItem"][1]["Id"] = 3327287 -- 【库】鼠年鸿运礼包[属性:9]
	tSpringFestival2020Preheat_RandomReward[3327287]["LogId"] = 12001796
	-- 年兽孵化池开启道具-- 【必给】
	tSpringFestival2020Preheat_RandomReward[3327287][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RandomItemChanceType"] = 1
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardItem"][1]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】年兽孵化池开启道具
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardItem"][1]["Attr"] = "0 5" -- 赤炎结晶*5
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 300新年赠点红包 - 5%
	tSpringFestival2020Preheat_RandomReward[3327287][2] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][2]["ItemChance"] = 500
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardItem"][1]["Id"] = 3327311 -- 300天石（赠）鼠年红包[3327311][属性:9][叠加:10000][金币:0], 【表格】300新年赠点红包
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardItem"][1]["Attr"] = "0 1" -- 300天石（赠）鼠年红包*1
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（215,45）】1小时（零点重置）3个
	tSpringFestival2020Preheat_RandomReward[3327287][2]["EventType"] = 215
	tSpringFestival2020Preheat_RandomReward[3327287][2]["DataType"] = 45
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardDelay"] = 1
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardTimeType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][2]["RewardData"] = 3
	tSpringFestival2020Preheat_RandomReward[3327287][2]["FullIndex"] = 5
	-- 赤炼石+3 - 14%
	tSpringFestival2020Preheat_RandomReward[3327287][3] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][3]["ItemChance"] = 1400
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 14%
	tSpringFestival2020Preheat_RandomReward[3327287][4] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][4]["ItemChance"] = 1400
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000气力值 - 14%
	tSpringFestival2020Preheat_RandomReward[3327287][5] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][5]["ItemChance"] = 1400
	tSpringFestival2020Preheat_RandomReward[3327287][5]["RewardStrengthValue"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][5]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tSpringFestival2020Preheat_RandomReward[3327287][5]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 8%
	tSpringFestival2020Preheat_RandomReward[3327287][6] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][6]["ItemChance"] = 800
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 9%
	tSpringFestival2020Preheat_RandomReward[3327287][7] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][7]["ItemChance"] = 900
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardItem"][1]["Attr"] = "0 20 3" -- 万能神纹精粹*20
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 未鉴定2级年兽蛋 - 15%
	tSpringFestival2020Preheat_RandomReward[3327287][8] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][8]["ItemChance"] = 1500
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardItem"][1]["Id"] = 3600240 -- 年兽蛋（二阶）[3600240][属性:8][叠加:0][金币:0], 【表格】未鉴定2级年兽蛋
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 年兽蛋（二阶）*1
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 年兽蛋加速道具 - 16%
	tSpringFestival2020Preheat_RandomReward[3327287][9] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][9]["ItemChance"] = 1600
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardItem"][1]["Id"] = 3600238 -- 星纹石[3600238][属性:8][叠加:0][金币:0], 【表格】年兽蛋加速道具
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardItem"][1]["Attr"] = "0 30 3" -- 星纹石*30（[错误]物品数量超10个）
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1.5%
	tSpringFestival2020Preheat_RandomReward[3327287][10] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][10]["ItemChance"] = 150
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestival2020Preheat_RandomReward[3327287][10]["BroadCast"] = 1 -- 全服公告
	-- tSpringFestival2020Preheat_RandomReward[3327287][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+5 - 1%
	tSpringFestival2020Preheat_RandomReward[3327287][11] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][11]["ItemChance"] = 100
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestival2020Preheat_RandomReward[3327287][11]["BroadCast"] = 1 -- 全服公告
	-- tSpringFestival2020Preheat_RandomReward[3327287][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 1%
	tSpringFestival2020Preheat_RandomReward[3327287][12] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][12]["ItemChance"] = 100
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestival2020Preheat_RandomReward[3327287][12]["BroadCast"] = 1 -- 全服公告
	-- tSpringFestival2020Preheat_RandomReward[3327287][12]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 黄色神纹随机包 - 0.5%
	tSpringFestival2020Preheat_RandomReward[3327287][13] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][13]["ItemChance"] = 50
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardItem"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardItem"][1] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestival2020Preheat_RandomReward[3327287][13]["BroadCast"] = 1 -- 全服公告
	-- tSpringFestival2020Preheat_RandomReward[3327287][13]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值 - 1%
	tSpringFestival2020Preheat_RandomReward[3327287][14] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][14]["RandomItemChanceType"] = 2
	tSpringFestival2020Preheat_RandomReward[3327287][14]["ItemChance"] = 100
	tSpringFestival2020Preheat_RandomReward[3327287][14]["RewardStrengthValue"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][14]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tSpringFestival2020Preheat_RandomReward[3327287][14]["RewardEffect"] = {}
	tSpringFestival2020Preheat_RandomReward[3327287][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Preheat_RandomReward[3327287][14]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestival2020Preheat_RandomReward[3327287][14]["BroadCast"] = 1 -- 全服公告
	-- tSpringFestival2020Preheat_RandomReward[3327287][14]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】





----------------------------------逻辑部分---------------------------------------------
-- 上限自检获得礼包
function SpringFestival2020Preheat_UserLogin()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["pringFestival2020Preheat"]["RewardTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2020Preheat_Data["Level"], tSpringFestival2020Preheat_Data["Meto"]) then
		return
	end
	
	-- 判断今天是否已领取
	local n2020Preheat_Event = tSpringFestival2020Preheat_Data["Stc"]["Event"][1]
	local n2020Preheat_Type = tSpringFestival2020Preheat_Data["Stc"]["Data"][1]
	if Task_StcInterval(n2020Preheat_Event, n2020Preheat_Type, 1, 4) then
		Task_SetStatistic(n2020Preheat_Event, n2020Preheat_Type, 0, 1)
		Task_SetStcTimestamp(n2020Preheat_Event, n2020Preheat_Type, 0)
	end
	if Task_ChkStcValue(n2020Preheat_Event, n2020Preheat_Type, ">", 0) then
		return
	end
	
	local n2020Preheat_ActionId = tSpringFestival2020Preheat_Data["Action"]
	local n2020Preheat_ExistDay = 7
	local s2020Preheat_Sender = tSpringFestival2020Preheat_Text["Mail"]["Sender"]
	local s2020Preheat_Title = tSpringFestival2020Preheat_Text["Mail"]["Title"]
	local s2020Preheat_Content = tSpringFestival2020Preheat_Text["Mail"]["Content"]
	-- 发放奖励
	if Task_SetStatistic(n2020Preheat_Event, n2020Preheat_Type, 1, 1, 0) then
		local n2020Preheat_UserId = Get_UserId()
		Task_SetStcTimestamp(n2020Preheat_Event, n2020Preheat_Type, 0, 0)
		Sys_SendMail(n2020Preheat_UserId,0,0,n2020Preheat_ActionId,0,n2020Preheat_ExistDay,s2020Preheat_Sender,s2020Preheat_Title,s2020Preheat_Content)
	end
	
end



-- 鼠年鸿运礼包使用
function SpringFestival2020Preheat_PackageUse(n2020Preheat_ItemId)
	-- 活动时间后
	if CommonFunc_GetAfterActivityTime(tActivityTime["pringFestival2020Preheat"]["UseTime"]) then
		local n2020Preheat_ItemNum = Get_CountItemType(n2020Preheat_ItemId, 0)
		if Item_ChkItem(n2020Preheat_ItemId) and Item_DelAllItemByType(n2020Preheat_ItemId) then
			local s2020Preheat_Log = string.format(tSpringFestival2020Preheat_Data["Log"], n2020Preheat_ItemId, n2020Preheat_ItemNum)
			Sys_SaveActionFestivalLog(s2020Preheat_Log)
			Sys_MsgBox(tSpringFestival2020Preheat_Text["SysMsg"]["TimeOut"])
		end
		return
	end
	-- 活动时间前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["pringFestival2020Preheat"]["UseTime"]) then
		Sys_MsgBox(tSpringFestival2020Preheat_Text["SysMsg"]["BeforeTime"])
		return
	end
	-- 背包空间判断
	if not RewardTemplate_ChkRandomSpace(tSpringFestival2020Preheat_RandomReward, n2020Preheat_ItemId) then
		return
	end
	
	local t2020Preheat_NewReward, s2020Preheat_RewardStr = RewardTemplate_RandomReward(tSpringFestival2020Preheat_RandomReward, n2020Preheat_ItemId)
	if t2020Preheat_NewReward[1]["tAward"][1]["BroadCast"] ~= nil then
		local s2020Preheat_Broadcast = string.format(tSpringFestival2020Preheat_Text["SysMsg"]["RewardGift"], Get_UserName(), s2020Preheat_RewardStr)
		Sys_SystemBroadcast(s2020Preheat_Broadcast)
	end
end

---------------------------------物品部分---------------------------------------------
-- 3327287 鼠年鸿运礼包
tItem[3327287] = tItem[3327287] or {}
tItem[3327287]["Function"] = function(n2020Preheat_ItemId,s2020Preheat_ItemName)
	SpringFestival2020Preheat_PackageUse(n2020Preheat_ItemId)
end

---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func, SpringFestival2020Preheat_UserLogin)