------------------------------------------------------------------------------------
--Name：            200109[简体征服][活动脚本]全球情人节活动预热(2.6-2.10)
--Creator:      郑飞
--Created:     2020-01-09
------------------------------------------------------------------------------------
-- 任务需求：
-- #【总贴】191216【简体征服】全球情人节活动预热
-- #预热时间：2.6-2.10
-- #任务来自：http://forum.nderp.99.com/Forum/TopicList-356833.aspx

-- #stc:(214,37)		背包信领取	1为已领取
-- #stc:(214,38)		累计系上情人花灯的数量
-- #stc:(214,45)		记录邮件发奖	1为已发奖
-- #stc:(214,48)		--记录是否领取奖励	1为已领奖
-- #globalid:54142		data1	赤炼石+5 限量20		data2	晶莹星陨石 限量20		data3	3000气力值 限量20	data4	天灵果 限量20	data5	黄色神纹随机包 限量20

-- logid		12001826

-- 命名规范：
-- ValentinePreheat_

-- 41695 = V100\活动脚本\[征服][活动脚本]情人节预热（2.6-3.12）.lua
-- 41695 = V100\ActiveScript\[Conquer][ActiveScript]ValentinePreheat.lua

----------------------------------表数据配置部分-------------------------------------
local tValentinePreheat_Data = {}
	tValentinePreheat_Data["Time"] = {}
	--活动时间
	tValentinePreheat_Data["Time"]["ActivityTime"] = tActivityTime["ValentinePreheat"]["ActivityTime"]
	tValentinePreheat_Data["Time"]["NpcTime"] = tActivityTime["ValentinePreheat"]["NpcTime"]
	tValentinePreheat_Data["Time"]["RewardTime"] = tActivityTime["ValentinePreheat"]["RewardTime"]
	tValentinePreheat_Data["Time"]["Open"] = tActivityTime["ValentinePreheat"]["Open"]
	
	--等级限制
	tValentinePreheat_Data["nLevel"] = 80
	tValentinePreheat_Data["nMetempsychosis"] = 0
	
	--id
	tValentinePreheat_Data["NpcId"] = 25866
	tValentinePreheat_Data["ItemId"] = 3327498
	tValentinePreheat_Data["RewardId"] = 3327499
	--扣除物品数量
	tValentinePreheat_Data["DelNum"] = 1

--掩码
local tValentinePreheat_Stc = {}
	--记录累计系上情人花灯的数量
	tValentinePreheat_Stc[1] = {}
	tValentinePreheat_Stc[1]["EventType"] = 214
	tValentinePreheat_Stc[1]["DataType"] = 38
	--记录邮件发奖		1为已发奖
	tValentinePreheat_Stc[2] = {}
	tValentinePreheat_Stc[2]["EventType"] = 214
	tValentinePreheat_Stc[2]["DataType"] = 45
	--记录是否领取奖励	1为已领奖
	tValentinePreheat_Stc[3] = {}
	tValentinePreheat_Stc[3]["EventType"] = 214
	tValentinePreheat_Stc[3]["DataType"] = 48

-- 发放邮件id
local tValentinePreheat_SendMail = {}
	tValentinePreheat_SendMail["ActionId"] = {}
	tValentinePreheat_SendMail["ActionId"][1] = 576047
	tValentinePreheat_SendMail["ExistDay"] = 30

--Log
local tValentinePreheat_Log = {}
	tValentinePreheat_Log[1] = "0,0,0,0,12001826,1[1],0,0"
	tValentinePreheat_Log[2] = "0,0,0,0,12001826,1[2],%d,%d"
	tValentinePreheat_Log[3] = "0,0,0,0,12001826,1[3],0,0"

-----------------------------------奖励配置-----------------------------------
local tValentinePreheat_Reward = {}
	-- ===情人节甜蜜包
	-- ===索引:tValentinePreheat_Reward[1]
	-- ===删除:3327499,1
	-- ===LogStep:3[1]
	tValentinePreheat_Reward[1] = {}
	tValentinePreheat_Reward[1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentinePreheat_Reward[1]["DeleteItem"] = {}
	tValentinePreheat_Reward[1]["DeleteItem"][1] = {}
	tValentinePreheat_Reward[1]["DeleteItem"][1]["Id"] = 3327499 -- 【库】情人节甜蜜礼包[属性:11]
	tValentinePreheat_Reward[1]["LogId"] = 12001826
	tValentinePreheat_Reward[1]["LogStep"] = "3[1]"
	-- 赤炼石+3 - 20%
	tValentinePreheat_Reward[1][1] = {}
	tValentinePreheat_Reward[1][1]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][1]["ItemChance"] = 2000
	tValentinePreheat_Reward[1][1]["RewardItem"] = {}
	tValentinePreheat_Reward[1][1]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tValentinePreheat_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tValentinePreheat_Reward[1][1]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tValentinePreheat_Reward[1][2] = {}
	tValentinePreheat_Reward[1][2]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][2]["ItemChance"] = 2500
	tValentinePreheat_Reward[1][2]["RewardItem"] = {}
	tValentinePreheat_Reward[1][2]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tValentinePreheat_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tValentinePreheat_Reward[1][2]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 25%
	tValentinePreheat_Reward[1][3] = {}
	tValentinePreheat_Reward[1][3]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][3]["ItemChance"] = 2500
	tValentinePreheat_Reward[1][3]["RewardItem"] = {}
	tValentinePreheat_Reward[1][3]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tValentinePreheat_Reward[1][3]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tValentinePreheat_Reward[1][3]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tValentinePreheat_Reward[1][4] = {}
	tValentinePreheat_Reward[1][4]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][4]["ItemChance"] = 2500
	tValentinePreheat_Reward[1][4]["RewardItem"] = {}
	tValentinePreheat_Reward[1][4]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinePreheat_Reward[1][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tValentinePreheat_Reward[1][4]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 1.5%
	tValentinePreheat_Reward[1][5] = {}
	tValentinePreheat_Reward[1][5]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][5]["ItemChance"] = 150
	tValentinePreheat_Reward[1][5]["RewardItem"] = {}
	tValentinePreheat_Reward[1][5]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tValentinePreheat_Reward[1][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tValentinePreheat_Reward[1][5]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][5]["RewardEffect"]["Effect"] = "angelwing"
	tValentinePreheat_Reward[1][5]["RewardBroadCast"] = tValentinePreheat_Text["RewardBroadCast"][1] -- 全服公告
	tValentinePreheat_Reward[1][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54142, data1）】全服限量:（20）, 超限给编号（3）-
	tValentinePreheat_Reward[1][5]["GlobalId"] = 54142
	tValentinePreheat_Reward[1][5]["Pos"] = 1
	tValentinePreheat_Reward[1][5]["MaxData"] = 20
	tValentinePreheat_Reward[1][5]["FullIndex"] = 3
	-- 晶莹星陨石 - 1%
	tValentinePreheat_Reward[1][6] = {}
	tValentinePreheat_Reward[1][6]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][6]["ItemChance"] = 100
	tValentinePreheat_Reward[1][6]["RewardItem"] = {}
	tValentinePreheat_Reward[1][6]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValentinePreheat_Reward[1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValentinePreheat_Reward[1][6]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][6]["RewardEffect"]["Effect"] = "angelwing"
	tValentinePreheat_Reward[1][6]["RewardBroadCast"] = tValentinePreheat_Text["RewardBroadCast"][2] -- 全服公告
	tValentinePreheat_Reward[1][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54142, data2）】全服限量:（20）, 超限给编号（3）-
	tValentinePreheat_Reward[1][6]["GlobalId"] = 54142
	tValentinePreheat_Reward[1][6]["Pos"] = 2
	tValentinePreheat_Reward[1][6]["MaxData"] = 20
	tValentinePreheat_Reward[1][6]["FullIndex"] = 3
	-- 3000气力值 - 1%
	tValentinePreheat_Reward[1][7] = {}
	tValentinePreheat_Reward[1][7]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][7]["ItemChance"] = 100
	tValentinePreheat_Reward[1][7]["RewardItem"] = {}
	tValentinePreheat_Reward[1][7]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][7]["RewardItem"][1]["Id"] = 3304333 -- 3000气力值极运包[3304333][属性:9][叠加:10000][金币:0], 【表格】3000气力值
	tValentinePreheat_Reward[1][7]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值极运包*1
	tValentinePreheat_Reward[1][7]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][7]["RewardEffect"]["Effect"] = "angelwing"
	tValentinePreheat_Reward[1][7]["RewardBroadCast"] = tValentinePreheat_Text["RewardBroadCast"][3] -- 全服公告
	tValentinePreheat_Reward[1][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54142, data3）】全服限量:（20）, 超限给编号（3）-
	tValentinePreheat_Reward[1][7]["GlobalId"] = 54142
	tValentinePreheat_Reward[1][7]["Pos"] = 3
	tValentinePreheat_Reward[1][7]["MaxData"] = 20
	tValentinePreheat_Reward[1][7]["FullIndex"] = 3
	-- 天灵果 - 0.5%
	tValentinePreheat_Reward[1][8] = {}
	tValentinePreheat_Reward[1][8]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][8]["ItemChance"] = 50
	tValentinePreheat_Reward[1][8]["RewardItem"] = {}
	tValentinePreheat_Reward[1][8]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tValentinePreheat_Reward[1][8]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValentinePreheat_Reward[1][8]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][8]["RewardEffect"]["Effect"] = "angelwing"
	tValentinePreheat_Reward[1][8]["RewardBroadCast"] = tValentinePreheat_Text["RewardBroadCast"][4] -- 全服公告
	tValentinePreheat_Reward[1][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54142, data4）】全服限量:（20）, 超限给编号（3）-
	tValentinePreheat_Reward[1][8]["GlobalId"] = 54142
	tValentinePreheat_Reward[1][8]["Pos"] = 4
	tValentinePreheat_Reward[1][8]["MaxData"] = 20
	tValentinePreheat_Reward[1][8]["FullIndex"] = 3
	-- 黄色神纹随机包 - 1%
	tValentinePreheat_Reward[1][9] = {}
	tValentinePreheat_Reward[1][9]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[1][9]["ItemChance"] = 100
	tValentinePreheat_Reward[1][9]["RewardItem"] = {}
	tValentinePreheat_Reward[1][9]["RewardItem"][1] = {}
	tValentinePreheat_Reward[1][9]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tValentinePreheat_Reward[1][9]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tValentinePreheat_Reward[1][9]["RewardEffect"] = {}
	tValentinePreheat_Reward[1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[1][9]["RewardEffect"]["Effect"] = "angelwing"
	tValentinePreheat_Reward[1][9]["RewardBroadCast"] = tValentinePreheat_Text["RewardBroadCast"][5] -- 全服公告
	tValentinePreheat_Reward[1][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54142, data5）】全服限量:（20）, 超限给编号（3）-
	tValentinePreheat_Reward[1][9]["GlobalId"] = 54142
	tValentinePreheat_Reward[1][9]["Pos"] = 5
	tValentinePreheat_Reward[1][9]["MaxData"] = 20
	tValentinePreheat_Reward[1][9]["FullIndex"] = 3


	tValentinePreheat_Reward[3327499] = {}
	-- ===情人节甜蜜礼包
	-- ===索引:tValentinePreheat_Reward[3327499]
	tValentinePreheat_Reward[3327499]["LogId"] = 12001826
	tValentinePreheat_Reward[3327499]["RewardItem"] = {}
	tValentinePreheat_Reward[3327499]["RewardItem"][1] = {}
	tValentinePreheat_Reward[3327499]["RewardItem"][1]["Id"] = 3327499 -- 情人节甜蜜礼包[3327499][属性:11][叠加:10000][金币:0], 【表格】情人节甜蜜礼包
	tValentinePreheat_Reward[3327499]["RewardItem"][1]["Attr"] = "0 %d" -- 情人节甜蜜礼包*1
	tValentinePreheat_Reward[3327499]["RewardEffect"] = {}
	tValentinePreheat_Reward[3327499]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[3327499]["RewardEffect"]["Effect"] = "angelwing"


	tValentinePreheat_Reward[2] = {}
	-- ===情人节甜蜜包额外
	-- ===索引:tValentinePreheat_Reward[2]
	-- ===LogStep:3[2]
	tValentinePreheat_Reward[2]["ItemChanceSum"] = 10000
	tValentinePreheat_Reward[2]["LogId"] = 12001826
	tValentinePreheat_Reward[2]["LogStep"] = "3[2]"
	-- 50爱情之心 - 35%
	tValentinePreheat_Reward[2][1] = {}
	tValentinePreheat_Reward[2][1]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[2][1]["ItemChance"] = 3500
	tValentinePreheat_Reward[2][1]["RewardItem"] = {}
	tValentinePreheat_Reward[2][1]["RewardItem"][1] = {}
	tValentinePreheat_Reward[2][1]["RewardItem"][1]["Id"] = 3327493 -- 爱情之心[3327493][属性:9][叠加:10000][金币:0], 【表格】50爱情之心
	tValentinePreheat_Reward[2][1]["RewardItem"][1]["Attr"] = "0 50" -- 爱情之心*50（[错误]物品数量超10个）
	tValentinePreheat_Reward[2][1]["RewardEffect"] = {}
	tValentinePreheat_Reward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100爱情之心 - 49%
	tValentinePreheat_Reward[2][2] = {}
	tValentinePreheat_Reward[2][2]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[2][2]["ItemChance"] = 4900
	tValentinePreheat_Reward[2][2]["RewardItem"] = {}
	tValentinePreheat_Reward[2][2]["RewardItem"][1] = {}
	tValentinePreheat_Reward[2][2]["RewardItem"][1]["Id"] = 3327493 -- 爱情之心[3327493][属性:9][叠加:10000][金币:0], 【表格】100爱情之心
	tValentinePreheat_Reward[2][2]["RewardItem"][1]["Attr"] = "0 100" -- 爱情之心*100（[错误]物品数量超10个）
	tValentinePreheat_Reward[2][2]["RewardEffect"] = {}
	tValentinePreheat_Reward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 200爱情之心 - 16%
	tValentinePreheat_Reward[2][3] = {}
	tValentinePreheat_Reward[2][3]["RandomItemChanceType"] = 2
	tValentinePreheat_Reward[2][3]["ItemChance"] = 1600
	tValentinePreheat_Reward[2][3]["RewardItem"] = {}
	tValentinePreheat_Reward[2][3]["RewardItem"][1] = {}
	tValentinePreheat_Reward[2][3]["RewardItem"][1]["Id"] = 3327493 -- 爱情之心[3327493][属性:9][叠加:10000][金币:0], 【表格】200爱情之心
	tValentinePreheat_Reward[2][3]["RewardItem"][1]["Attr"] = "0 200" -- 爱情之心*200（[错误]物品数量超10个）
	tValentinePreheat_Reward[2][3]["RewardEffect"] = {}
	tValentinePreheat_Reward[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinePreheat_Reward[2][3]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
-- 获取掩码值
function ValentinePreheat_GetStcValue(nValentinePreheat_Index,nValentinePreheat_UserId)
	local nValentinePreheat_Event = tValentinePreheat_Stc[nValentinePreheat_Index]["EventType"]
	local nValentinePreheat_Type = tValentinePreheat_Stc[nValentinePreheat_Index]["DataType"]
	local nValentinePreheat_Data = Get_UserStatisticValue(nValentinePreheat_Event,nValentinePreheat_Type,nValentinePreheat_UserId)
	return nValentinePreheat_Data
end

--设置掩码值
function ValentinePreheat_SetStcValue(nValentinePreheat_Index,nValentinePreheat_Data,nValentinePreheat_UserId)
	local nValentinePreheat_Event = tValentinePreheat_Stc[nValentinePreheat_Index]["EventType"]
	local nValentinePreheat_Type = tValentinePreheat_Stc[nValentinePreheat_Index]["DataType"]
	
	Task_SetStatistic(nValentinePreheat_Event,nValentinePreheat_Type,nValentinePreheat_Data,1,nValentinePreheat_UserId)
	Task_SetStcTimestamp(nValentinePreheat_Event,nValentinePreheat_Type,0,nValentinePreheat_UserId)
end

-- 隔天重置
function ValentinePreheat_ClearStcInterval(nValentinePreheat_Index,nValentinePreheat_Data,nValentinePreheat_UserId)
	local nValentinePreheat_Event = tValentinePreheat_Stc[nValentinePreheat_Index]["EventType"]
	local nValentinePreheat_Type = tValentinePreheat_Stc[nValentinePreheat_Index]["DataType"]
	
	if nValentinePreheat_Data == nil then
		nValentinePreheat_Data = 0
	end
	
	if Task_StcInterval(nValentinePreheat_Event,nValentinePreheat_Type,1,4,nValentinePreheat_UserId) then
		Task_SetStatistic(nValentinePreheat_Event,nValentinePreheat_Type,nValentinePreheat_Data,1,nValentinePreheat_UserId)
		Task_SetStcTimestamp(nValentinePreheat_Event,nValentinePreheat_Type,0,nValentinePreheat_UserId)
	end
end

-- 系上情人花灯
function ValentinePreheat_HandIn(nValentinePreheat_NpcId)
	--时间判断
	if not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nValentinePreheat_NpcId, "1-2")
		return
	end
	
	local nValentinePreheat_Event = tValentinePreheat_Stc[1]["EventType"]
	local nValentinePreheat_Type = tValentinePreheat_Stc[1]["DataType"]
	local nValentinePreheat_UserId = Get_UserId()
	
	-- 今日已系过
	if not Task_StcInterval(nValentinePreheat_Event,nValentinePreheat_Type,1,4,nValentinePreheat_UserId) then
		tNpcGossip[25866]["tOption1-4"] = {142}
		return
	end
	
	local nValentinePreheat_ItemId = tValentinePreheat_Data["ItemId"]
	local nValentinePreheat_ItemNum = Get_CountItemType(nValentinePreheat_ItemId,0)
	--背包里没有情人花灯
	if nValentinePreheat_ItemNum <= 0 then
		LinkNpcGossipFunc_New(nValentinePreheat_NpcId, "2-1")
		return
	end
	
	local nValentinePreheat_Num = tValentinePreheat_Data["DelNum"]
	local nValentinePreheat_Data = ValentinePreheat_GetStcValue(1)
	--扣除情人花灯
	if Item_ChkMulItem(nValentinePreheat_ItemId,nValentinePreheat_ItemId,nValentinePreheat_Num) and Item_DelMulItem(nValentinePreheat_ItemId,nValentinePreheat_ItemId,nValentinePreheat_Num) then
		ValentinePreheat_SetStcValue(1,nValentinePreheat_Data + nValentinePreheat_Num)
		-- 打Log
		Sys_SaveActionFestivalLog(string.format(tValentinePreheat_Log[2],nValentinePreheat_ItemId,nValentinePreheat_Num))
		Sys_MsgBox(tValentinePreheat_Text["SystemTips"]["Fasten"])
	end
	
end

-- 领取奖励
function ValentinePreheat_GetReward(nValentinePreheat_NpcId)
	
	--时间判断
	if not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["NpcTime"]) then
		LinkNpcGossipFunc_New(nValentinePreheat_NpcId, "1-2")
		return
	end
		
	-- 无可领取奖励 或 已领奖
	local nValentinePreheat_Data = ValentinePreheat_GetStcValue(1)
	local nValentinePreheat_Reward = ValentinePreheat_GetStcValue(3)
	if (nValentinePreheat_Data == 0) or (nValentinePreheat_Reward == 1) then
		tNpcGossip[25866]["tOption1-5"] = {152}
		return
	end
	
	local nValentinePreheat_UserId = Get_UserId()
	-- 赋值奖励表格
	local tValentinePreheat_ItemReward = CommonFunc_Copy(tValentinePreheat_Reward[3327499])
	tValentinePreheat_ItemReward["RewardItem"][1]["Attr"] = string.format(tValentinePreheat_ItemReward["RewardItem"][1]["Attr"],nValentinePreheat_Data)

	--背包空间判断
	local nValentinePreheat_Space = RewardTemplate_GetRewardSpace(tValentinePreheat_ItemReward,nValentinePreheat_UserId)
	if not User_CheckLeftSpace(nValentinePreheat_Space) then
		Sys_MsgBox(tValentinePreheat_Text["SystemTips"]["NoSpace"])
		return 
	end

	-- 打掩码 领取奖励
	ValentinePreheat_SetStcValue(3,1)
	if RewardTemplate_UseItemAndMsg(tValentinePreheat_ItemReward) then
		Sys_SaveActionFestivalLog(tValentinePreheat_Log[1])
		Sys_MsgBox(string.format(tValentinePreheat_Text["SystemTips"]["Receive105"],nValentinePreheat_Data))
		User_TalkChannel2005(string.format(tValentinePreheat_Text["SystemTips"]["Receive"],nValentinePreheat_Data))
	end

	
end

--邮件发奖
function ValentinePreheat_SendEmail(nValentinePreheat_UserId,nValentinePreheat_Index)
	local nValentinePreheat_ActionId = tValentinePreheat_SendMail["ActionId"][nValentinePreheat_Index]
	local nValentinePreheat_ExistDay = tValentinePreheat_SendMail["ExistDay"]
	local sValentinePreheat_SenderName = tValentinePreheat_Text["Email"]["Sender"]
	local sValentinePreheat_Title = tValentinePreheat_Text["Email"]["Title"]
	local sValentinePreheat_Content = tValentinePreheat_Text["Email"]["Content"]
	Sys_SendMail(nValentinePreheat_UserId,0,0,nValentinePreheat_ActionId,0,nValentinePreheat_ExistDay,sValentinePreheat_SenderName,sValentinePreheat_Title,sValentinePreheat_Content)
	
end

--邮件发放奖励
function ValentinePreheat_RewardItem()
	
	-- 活动后
	if not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["ActivityTime"]) then
		return
	end
	
	local nValentinePreheat_UserId = Get_UserId()
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tValentinePreheat_Data["nLevel"],tValentinePreheat_Data["nMetempsychosis"],nValentinePreheat_UserId) then 
		return
	end
	
	--掩码重置
	ValentinePreheat_ClearStcInterval(2,0,nValentinePreheat_UserId)
	local nValentinePreheat_Data = ValentinePreheat_GetStcValue(2,nValentinePreheat_UserId)
	
	if nValentinePreheat_Data == 0 then
		--发奖
		ValentinePreheat_SendEmail(nValentinePreheat_UserId,1)
		ValentinePreheat_SetStcValue(2,1,nValentinePreheat_UserId)
		Sys_SaveActionFestivalLog(tValentinePreheat_Log[3])
	else
		return
	end
	
end

---------------------------------NPC部分---------------------------------------------
tNpcFace[2253] = 638
tNpcGossip[25866]= tNpcGossip[25866] or DefaultNpc:new{}
tNpcGossip[25866]["OptionHidden"] = 1
tNpcGossip[25866]["DialogueText"] = tValentinePreheat_Text[25866]

--活动前
tNpcGossip[25866]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25866]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tValentinePreheat_Data["Time"]["NpcTime"])
end
tNpcGossip[25866]["tOption1-1"] = {111}

--活动后
tNpcGossip[25866]["Text1-2"] = {111,121}
tNpcGossip[25866]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["NpcTime"])
end
tNpcGossip[25866]["tOption1-2"] = {121}

--活动中 等级未达到
tNpcGossip[25866]["Text1-3"] = {111,131,132,133,134,135,136,137}
tNpcGossip[25866]["ChkFunc1-3"]= function()
	
	if not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["ActivityTime"]) then
		return false
	end
	
	local nValentinePreheat_UserId = Get_UserId()
	--等级达到
	if User_JudgeLevelAndMetempsychosis(tValentinePreheat_Data["nLevel"],tValentinePreheat_Data["nMetempsychosis"],nValentinePreheat_UserId) then 
		return false
	end
	
	return true
end
tNpcGossip[25866]["tOption1-3"] = {131}

--活动中 等级达到
tNpcGossip[25866]["Text1-4"] = {111,141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[25866]["ChkFunc1-4"]= function()
	
	if not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["ActivityTime"]) then
		return false
	end
	
	local nValentinePreheat_Event = tValentinePreheat_Stc[1]["EventType"]
	local nValentinePreheat_Type = tValentinePreheat_Stc[1]["DataType"]
	local nValentinePreheat_UserId = Get_UserId()
	local nValentinePreheat_Data = ValentinePreheat_GetStcValue(1)
	
	if not Task_StcInterval(nValentinePreheat_Event,nValentinePreheat_Type,1,4,nValentinePreheat_UserId) then
		tNpcGossip[25866]["tOption1-4"] = {142}
	else
		tNpcGossip[25866]["tOption1-4"] = {141}
	end
	
	if nValentinePreheat_Data == 0 then
		tNpcGossip[25866]["Text1-4"] = {111,141,142,143,144,145,147,148,149,1410}
	else
		tNpcGossip[25866]["Text146"] = string.format(tValentinePreheat_Text[25866]["Text146"],nValentinePreheat_Data)
		tNpcGossip[25866]["Text1-4"] = {111,141,142,143,144,146,147,148,149,1410}
	end
	
	return true
end
tNpcGossip[25866]["tOption1-4"] = {141,142}
tNpcGossip[25866]["OptionFunc141"] = "ValentinePreheat_HandIn</N>25866"

--活动中 2月11日至2月24日对白
tNpcGossip[25866]["Text1-5"] = {111,151,152,153}
tNpcGossip[25866]["ChkFunc1-5"]= function()
	
	local nValentinePreheat_UserId = Get_UserId()
	-- 等级未达到
	if not User_JudgeLevelAndMetempsychosis(tValentinePreheat_Data["nLevel"],tValentinePreheat_Data["nMetempsychosis"],nValentinePreheat_UserId) then 
		tNpcGossip[25866]["tOption1-5"] = {152}
	end
	
	local nValentinePreheat_Data = ValentinePreheat_GetStcValue(1)
	local nValentinePreheat_Reward = ValentinePreheat_GetStcValue(3)
	if (nValentinePreheat_Data == 0) or (nValentinePreheat_Reward == 1) then
		tNpcGossip[25866]["tOption1-5"] = {152}
	else
		tNpcGossip[25866]["tOption1-5"] = {151}
	end
	
	return true
end
tNpcGossip[25866]["tOption1-5"] = {151,152}
tNpcGossip[25866]["OptionFunc151"] = "ValentinePreheat_GetReward</N>25866"

--接上、系上1盏情人花灯
tNpcGossip[25866]["Text2-1"] = {111,211,212}
tNpcGossip[25866]["tOption2-1"] = {211}


--情人花灯
tItem[3327498] = tItem[3327498] or {}
tItem[3327498]["Function"] = function(nValentinePreheat_ItemId,sValentinePreheat_ItemName)
	
	local nValentinePreheat_UserId = Get_UserId()
	
	--判断活动时间
	if not Sys_ChkFullTime(tValentinePreheat_Data["Time"]["ActivityTime"]) then
		
		--获取背包物品数量
		local nValentinePreheat_Num = Get_CountItemType(nValentinePreheat_ItemId,0,nil,nil,nValentinePreheat_UserId)
		if Item_ChkMulItem(nValentinePreheat_ItemId,nValentinePreheat_ItemId,nValentinePreheat_Num) and Item_DelMulItem(nValentinePreheat_ItemId,nValentinePreheat_ItemId,nValentinePreheat_Num) then
			-- 打Log
			Sys_SaveActionFestivalLog(string.format(tValentinePreheat_Log[2],nValentinePreheat_ItemId,nValentinePreheat_Num))
			User_TalkChannel2005(tValentinePreheat_Text["SystemTips"]["NoTime"])
		end
		return
	end
	
	-- 自动寻路至NPC
	local nValentinePreheat_NpcId = tValentinePreheat_Data["NpcId"]
	NpcPosition_PathFind(nValentinePreheat_NpcId)
	
end

-- 情人节甜蜜包
tItem[3327499] = tItem[3327499] or {}
tItem[3327499]["Function"] = function(nValentinePreheat_ItemId,sValentinePreheat_ItemName)
	--3.4号后开启礼包
	if CommonFunc_GetBeforeActivityTime(tValentinePreheat_Data["Time"]["Open"]) then
		Sys_MsgBox(tValentinePreheat_Text["SystemTips"]["Open"])
		return
	end
	
	local nValentinePreheat_UserId = Get_UserId()
	--背包空间满
	local nValentinePreheat_Space1 = RewardTemplate_GetRandomSpace(tValentinePreheat_Reward,1,nValentinePreheat_UserId)
	local nValentinePreheat_Space2 = RewardTemplate_GetRandomSpace(tValentinePreheat_Reward,2,nValentinePreheat_UserId)
	local nValentinePreheat_Space = nValentinePreheat_Space1+nValentinePreheat_Space2
	if not User_CheckLeftSpace(nValentinePreheat_Space) then
		Sys_MsgBox(string.format(tValentinePreheat_Text["SystemTips"]["NoSp"],nValentinePreheat_Space))
		return
	end
	
	local tValentinePreheat_Reward1,sValentinePreheat_RewardStr1 = RewardTemplate_RandomReward(tValentinePreheat_Reward,1,nValentinePreheat_UserId)
	local tValentinePreheat_Reward2,sValentinePreheat_RewardStr2 = RewardTemplate_RandomReward(tValentinePreheat_Reward,2,nValentinePreheat_UserId)
	if (sValentinePreheat_RewardStr1 ~= "") and (sValentinePreheat_RewardStr2 ~= "") then
		Sys_MsgBox(string.format(tValentinePreheat_Text["SystemTips"]["Reward"],sValentinePreheat_RewardStr1,sValentinePreheat_RewardStr2),nil,nil,nValentinePreheat_UserId)
	end
	
end

---------------------------------时间自检---------------------------------
--时间自检重置全服限量
tGlobalData_Info[54142] = {}
tGlobalData_Info[54142]["Time"] = {}
tGlobalData_Info[54142]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54142]["Rest"] = {}
tGlobalData_Info[54142]["Rest"]["GlobalId"] = {54142}
tGlobalData_Info[54142]["Rest"]["Pos"] = {1,2,3,4,5}

--登录自检
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ValentinePreheat_RewardItem)