------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆-BOSS巢穴副本部分
--Creator:      冯子鑫
--Created:     2020-03-19
------------------------------------------------------------------------------------
--任务需求：
-- 冯子鑫--BOSS巢穴副本，log步骤:[5]




--前缀 AnniversaryBossInstance_
-- logid:12001906

-- #41767 = V100\ActiveScript\Anniversary\2020\[Conquer][ActiveScript]AnniversaryBossInstance.lua
-- #41767 = V100\活动脚本\周年庆\2020\[征服][活动脚本]全球周年庆-BOSS巢穴副本部分.lua


-- stc 掩码说明 
-- stc 217,80		主NPC引导进度
-- stc 217,89		副本NPC引导进度
-- stc 217,90		记录背包信



-- 全局动态表说明：
-- GlobalId：【54277】



--------------------------------------数据配置部分--------------------------------------
local tAnniversaryBossInstance_Stc = {}	
	-- 主NPC引导进度
	tAnniversaryBossInstance_Stc["MainGuide"] = {}
	tAnniversaryBossInstance_Stc["MainGuide"]["EventType"] = 217
	tAnniversaryBossInstance_Stc["MainGuide"]["TypeData"] = 80
	-- 副本NPC引导进度
	tAnniversaryBossInstance_Stc["InstanceGuide"] = {}
	tAnniversaryBossInstance_Stc["InstanceGuide"]["EventType"] = 217
	tAnniversaryBossInstance_Stc["InstanceGuide"]["TypeData"] = 89
	
local tAnniversaryBossInstance_Cont = {}
	
	-- 等级限制
	tAnniversaryBossInstance_Cont["Level"] = 80
	tAnniversaryBossInstance_Cont["Metempsychosis"] = 0
	
	-- 愚人节引导任务
	tAnniversaryBossInstance_Cont["ActivityTaskId"] = 4405
	--完成引导任务光效
	tAnniversaryBossInstance_Cont["TaskEffect"] = "zf2-e128"
	
	--副本id
	tAnniversaryBossInstance_Cont["InstanceType"] = {}
	tAnniversaryBossInstance_Cont["InstanceType"][1] = 659
	tAnniversaryBossInstance_Cont["InstanceType"][2] = 660
	tAnniversaryBossInstance_Cont["InstanceType"][3] = 661
	tAnniversaryBossInstance_Cont["InstanceType"][4] = 662
	tAnniversaryBossInstance_Cont["InstanceType"][5] = 663
	
	--副本boss id
	tAnniversaryBossInstance_Cont["Boss"] = {}
	tAnniversaryBossInstance_Cont["Boss"][1] = 6302
	tAnniversaryBossInstance_Cont["Boss"][2] = 6303
	tAnniversaryBossInstance_Cont["Boss"][3] = 6304
	tAnniversaryBossInstance_Cont["Boss"][4] = 6305
	tAnniversaryBossInstance_Cont["Boss"][5] = 6306
	
	--地图 id
	tAnniversaryBossInstance_Cont["MapId"] = {}
	tAnniversaryBossInstance_Cont["MapId"][1] = 10802
	tAnniversaryBossInstance_Cont["MapId"][2] = 10803
	tAnniversaryBossInstance_Cont["MapId"][3] = 10804
	tAnniversaryBossInstance_Cont["MapId"][4] = 10805
	tAnniversaryBossInstance_Cont["MapId"][5] = 10806
	
	--刷怪信息
	tAnniversaryBossInstance_Cont["BossInfo"] = {}
	tAnniversaryBossInstance_Cont["BossInfo"][1] = {}
	tAnniversaryBossInstance_Cont["BossInfo"][1]["GenId"] = 30724
	tAnniversaryBossInstance_Cont["BossInfo"][1]["PosX"] = 91
	tAnniversaryBossInstance_Cont["BossInfo"][1]["PosY"] = 97
	tAnniversaryBossInstance_Cont["BossInfo"][2] = {}
	tAnniversaryBossInstance_Cont["BossInfo"][2]["GenId"] = 30725
	tAnniversaryBossInstance_Cont["BossInfo"][2]["PosX"] = 91
	tAnniversaryBossInstance_Cont["BossInfo"][2]["PosY"] = 97
	tAnniversaryBossInstance_Cont["BossInfo"][3] = {}
	tAnniversaryBossInstance_Cont["BossInfo"][3]["GenId"] = 30726
	tAnniversaryBossInstance_Cont["BossInfo"][3]["PosX"] = 60
	tAnniversaryBossInstance_Cont["BossInfo"][3]["PosY"] = 56
	tAnniversaryBossInstance_Cont["BossInfo"][4] = {}
	tAnniversaryBossInstance_Cont["BossInfo"][4]["GenId"] = 30727
	tAnniversaryBossInstance_Cont["BossInfo"][4]["PosX"] = 80
	tAnniversaryBossInstance_Cont["BossInfo"][4]["PosY"] = 68
	tAnniversaryBossInstance_Cont["BossInfo"][5] = {}
	tAnniversaryBossInstance_Cont["BossInfo"][5]["GenId"] = 30728
	tAnniversaryBossInstance_Cont["BossInfo"][5]["PosX"] = 24
	tAnniversaryBossInstance_Cont["BossInfo"][5]["PosY"] = 31

	
	--BOSSid汇总
	tAnniversaryBossInstance_Cont["BossId"] = {6302,6303,6304,6305,6306}
	--主NPC甄小福 id
	tAnniversaryBossInstance_Cont["MainNpcId"] = 26069
	-- 副本NPC傲天圣龙 id
	tAnniversaryBossInstance_Cont["InstanceNpcId"] = 26088
	-- 开启副本任务道具 魔王挑战令
	tAnniversaryBossInstance_Cont["InstanceItemtype"] = 3600246
	
	-- 副本每日开启时间
	tAnniversaryBossInstance_Cont["OpenTime"] = "08:00 23:59"
	
	-- 记录副本开启全局表
	tAnniversaryBossInstance_Cont["InstanceOpenGlobalId"] = 54370
	
	-- 各副本大奖限量全局表记录
	tAnniversaryBossInstance_Cont["Reward"] = {}
	tAnniversaryBossInstance_Cont["Reward"][1] = {}
	tAnniversaryBossInstance_Cont["Reward"][1]["GlobalId"] = 54367
	tAnniversaryBossInstance_Cont["Reward"][1]["Pos"] = 0
	tAnniversaryBossInstance_Cont["Reward"][1]["Limt"] = 5 -- 上限
	tAnniversaryBossInstance_Cont["Reward"][2] = {}
	tAnniversaryBossInstance_Cont["Reward"][2]["GlobalId"] = 54367
	tAnniversaryBossInstance_Cont["Reward"][2]["Pos"] = 4
	tAnniversaryBossInstance_Cont["Reward"][2]["Limt"] = 5 -- 上限
	tAnniversaryBossInstance_Cont["Reward"][3] = {}
	tAnniversaryBossInstance_Cont["Reward"][3]["GlobalId"] = 54368
	tAnniversaryBossInstance_Cont["Reward"][3]["Pos"] = 2
	tAnniversaryBossInstance_Cont["Reward"][3]["Limt"] = 5 -- 上限
	tAnniversaryBossInstance_Cont["Reward"][4] = {}
	tAnniversaryBossInstance_Cont["Reward"][4]["GlobalId"] = 54369
	tAnniversaryBossInstance_Cont["Reward"][4]["Pos"] = 0
	tAnniversaryBossInstance_Cont["Reward"][4]["Limt"] = 5 -- 上限
	
	--光效配置
	tAnniversaryBossInstance_Cont["Effect"] = {}
	--进入副本光效
	tAnniversaryBossInstance_Cont["Effect"][1] = "angelwing"
	
local tAnniversaryBossInstance_Log = {}
	tAnniversaryBossInstance_Log[3600246] = "0,0,3600246,%d,12001906,5[3],0,0"
	
-- 离开地图坐标
local tAnniversaryBossInstance_LeaveMap = {}
	-- 普通服
	tAnniversaryBossInstance_LeaveMap[1] = {}
	tAnniversaryBossInstance_LeaveMap[1]["MapId"] = 1002
	tAnniversaryBossInstance_LeaveMap[1]["PosX"] = 370
	tAnniversaryBossInstance_LeaveMap[1]["PosY"] = 449
	-- 激情服
	tAnniversaryBossInstance_LeaveMap[2] = {}
	tAnniversaryBossInstance_LeaveMap[2]["MapId"] = 1036
	tAnniversaryBossInstance_LeaveMap[2]["PosX"] = 252
	tAnniversaryBossInstance_LeaveMap[2]["PosY"] = 209
	
local tAnniversaryBossInstance_Data = {}
	-- ===首次副本掉落
	-- ===索引: tAnniversaryBossInstance_Data["Reward"]["Boss"][6302]
	tAnniversaryBossInstance_Data["Reward"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302]["ItemChanceSum"] = 10000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302]["LogId"] = 12001906
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302]["LogStep"] = " 5[1]"
	-- 喂养道具（小）-- 【必给】
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RandomItemChanceType"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardItem"][1]["Id"] = 3330460 --  3330460 【库里没有该物品】, 【表格】喂养道具（小）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardItem"][1]["Attr"] = "0 5" --  3330460 【库里没有该物品】*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 50%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["ItemChance"] = 5000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:1], 【表格】赤炼石+2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2Stone（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 50%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["ItemChance"] = 5000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3Stone（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6302][3]["RewardEffect"]["Effect"] = "angelwing"
	
	


	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303] = {}
	-- ===血夜魔窟副本掉落
	-- ===索引: tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]
	-- ===删除: 3600246,5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["DeleteItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["DeleteItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["DeleteItem"][1]["Id"] = 3600246 -- 【库】魔王挑战令[属性:9]
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["DeleteItem"][1]["ItemNum"] = 5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["LogId"] = 12001906
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303]["LogStep"] = " 5[2]"
	-- 喂养道具（小）-- 【必给】
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RandomItemChanceType"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardItem"][1]["Id"] = 3330460 -- 灵龙草[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具（小）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardItem"][1]["Attr"] = "0 5" -- 灵龙草*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 7阶灵珠-- 【自身概率】 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RandomItemChanceType"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["ItemSelfChanceSum"] = 10000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][1] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54367, data0）】全服限量:（5）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["GlobalId"] = 54367
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["Pos"] = 0
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][2]["MaxData"] = 5
	-- 1阶灵珠 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][13] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54367, data1）】全服限量:（10）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["GlobalId"] = 54367
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["Pos"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][3]["FullIndex"] = 5
	-- 3阶灵珠 - 2.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["ItemChance"] = 250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][2] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54367, data2）】全服限量:（4）, 超限给编号（7）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["GlobalId"] = 54367
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["Pos"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["MaxData"] = 4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][4]["FullIndex"] = 7
	-- 赤炼石+2 - 45%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["ItemChance"] = 4500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 30%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["ItemChance"] = 3000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4 - 14.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["ItemChance"] = 1450
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][3] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][7]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+6 - 3%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["ItemChance"] = 300
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][4] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54367, data3）】全服限量:（10）, 超限给编号（7）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["GlobalId"] = 54367
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["Pos"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6303][8]["FullIndex"] = 7


	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304] = {}
	-- ===潘神魔窟副本掉落
	-- ===索引: tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]
	-- ===删除: 3600246,5
	-- ===NewEMoneyLog:1000,1699
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["DeleteItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["DeleteItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["DeleteItem"][1]["Id"] = 3600246 -- 【库】魔王挑战令[属性:9]
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["DeleteItem"][1]["ItemNum"] = 5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["LogId"] = 12001906
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304]["LogStep"] = " 5[2]"
	-- 喂养道具（小）-- 【必给】
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RandomItemChanceType"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardItem"][1]["Id"] = 3330460 -- 灵龙草[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具（小）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardItem"][1]["Attr"] = "0 5" -- 灵龙草*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石（赠）-- 【自身概率】 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RandomItemChanceType"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["ItemSelfChanceSum"] = 10000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardEMoneyMono"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardEMoneyMono"]["Value"] = 1666 -- 天石（赠）, 【需求】天石（赠）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1699"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][5] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54367, data4）】全服限量:（5）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["GlobalId"] = 54367
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["Pos"] = 4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][2]["MaxData"] = 5
	-- 1阶灵珠 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][13] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54367, data5）】全服限量:（10）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["GlobalId"] = 54367
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["Pos"] = 5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][3]["FullIndex"] = 5
	-- 3阶灵珠 - 2.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["ItemChance"] = 250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][6] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54368, data0）】全服限量:（4）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["GlobalId"] = 54368
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["Pos"] = 0
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["MaxData"] = 4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][4]["FullIndex"] = 5
	-- 明亮星陨石 - 45%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["ItemChance"] = 4500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 32.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["ItemChance"] = 3250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][7] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][6]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 15%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["ItemChance"] = 1500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][8] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54368, data1）】全服限量:（10）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["GlobalId"] = 54368
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["Pos"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6304][7]["FullIndex"] = 5


	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305] = {}
	-- ===法老魔窟副本掉落
	-- ===索引: tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]
	-- ===删除: 3600246,5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["DeleteItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["DeleteItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["DeleteItem"][1]["Id"] = 3600246 -- 【库】魔王挑战令[属性:9]
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["DeleteItem"][1]["ItemNum"] = 5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["LogId"] = 12001906
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305]["LogStep"] = " 5[2]"
	-- 喂养道具（小）-- 【必给】
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RandomItemChanceType"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardItem"][1]["Id"] = 3330460 -- 灵龙草[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具（小）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardItem"][1]["Attr"] = "0 5" -- 灵龙草*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 喂养道具（大）-- 【自身概率】 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RandomItemChanceType"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["ItemSelfChanceSum"] = 10000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardItem"][1]["Id"] = 3330461 -- 圣龙果[3330461][属性:11][叠加:10000][金币:0], 【表格】喂养道具（大）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardItem"][1]["Attr"] = "0 5" -- 圣龙果*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][9] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54368, data2）】全服限量:（5）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["GlobalId"] = 54368
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["Pos"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][2]["MaxData"] = 5
	-- 1阶灵珠 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][13] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54368, data3）】全服限量:（10）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["GlobalId"] = 54368
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["Pos"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][3]["FullIndex"] = 5
	-- 3阶灵珠 - 2.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["ItemChance"] = 250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][10] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54368, data4）】全服限量:（4）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["GlobalId"] = 54368
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["Pos"] = 4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["MaxData"] = 4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][4]["FullIndex"] = 5
	-- 万能神纹精粹 - 45%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["ItemChance"] = 4500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 30%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["ItemChance"] = 3000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["ItemChance"] = 1500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 2.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["ItemChance"] = 250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardItem"][1]["Attr"] = "0 500 3" -- 万能神纹精粹（赠）*500（[错误]物品数量超100个）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54368, data5）】全服限量:（10）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["GlobalId"] = 54368
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["Pos"] = 5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6305][8]["FullIndex"] = 5


	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306] = {}
	-- ===僵尸魔窟副本掉落
	-- ===索引: tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]
	-- ===删除: 3600246,5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["DeleteItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["DeleteItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["DeleteItem"][1]["Id"] = 3600246 -- 【库】魔王挑战令[属性:9]
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["DeleteItem"][1]["ItemNum"] = 5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["LogId"] = 12001906
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306]["LogStep"] = " 5[2]"
	-- 喂养道具（小）-- 【必给】
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RandomItemChanceType"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardItem"][1]["Id"] = 3330460 -- 灵龙草[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具（小）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardItem"][1]["Attr"] = "0 5" -- 灵龙草*5
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石（赠）-- 【自身概率】 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RandomItemChanceType"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["ItemSelfChanceSum"] = 10000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石（赠）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石（赠）*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][11] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54369, data0）】全服限量:（5）
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["GlobalId"] = 54369
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["Pos"] = 0
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][2]["MaxData"] = 5
	-- 1阶灵珠 - 5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["ItemChance"] = 500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][13] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54369, data1）】全服限量:（10）, 超限给编号（6）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["GlobalId"] = 54369
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["Pos"] = 1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][3]["FullIndex"] = 6
	-- 3阶灵珠 - 2.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["ItemChance"] = 250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardItem"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardItem"][1] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardBroadCast"] = tAnniversaryBossInstance_Text["Broad"][12] -- 全服公告
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54369, data2）】全服限量:（4）, 超限给编号（6）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["GlobalId"] = 54369
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["Pos"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["MaxData"] = 4
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][4]["FullIndex"] = 6
	-- 气力值 - 45%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["ItemChance"] = 4500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["RewardStrengthValue"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】气力值
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 30%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["ItemChance"] = 3000
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["RewardStrengthValue"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】气力值
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 15%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["ItemChance"] = 1500
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["RewardStrengthValue"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】气力值
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 2.5%
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["RandomItemChanceType"] = 2
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["ItemChance"] = 250
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["RewardStrengthValue"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】气力值
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["RewardEffect"] = {}
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54369, data3）】全服限量:（10）, 超限给编号（5）-
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["GlobalId"] = 54369
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["Pos"] = 3
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["MaxData"] = 10
	tAnniversaryBossInstance_Data["Reward"]["Boss"][6306][8]["FullIndex"] = 5






----------------------------------逻辑部分---------------------------------------------
function AnniversaryBossInstance_IntoInstance(nAnniversaryBossInstance_Index,nAnniversaryBossInstance_NpcId)
	local nAnniversaryBossInstance_UserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["BossTime"]) then
		return
	end
	--如果是首次副本 不判断副本是否开启
	if nAnniversaryBossInstance_Index ~= 1 then
		tNpcGossip[26088]["Text162"] = string.format(tAnniversaryBossInstance_Text[26088]["Text162"],tAnniversaryBossInstance_Text["Instance"][nAnniversaryBossInstance_Index],tAnniversaryBossInstance_Text["Boss"][nAnniversaryBossInstance_Index])
		-- 如果不在8:00-23:59则不开启副本
		if not Sys_ChkDayTime(tAnniversaryBossInstance_Cont["OpenTime"]) then
			LinkNpcGossipFunc_New(nAnniversaryBossInstance_NpcId, "1-6")
			return
		end
		-- 未击杀世界boss不开启副本
		if not (Get_SysDynaGlobalData(tAnniversaryBossInstance_Cont["InstanceOpenGlobalId"],nAnniversaryBossInstance_Index-1) >0 )then
			LinkNpcGossipFunc_New(nAnniversaryBossInstance_NpcId, "1-6")
			return
		end
		--判断是否有3个挑战令
		if Get_CountItemType(tAnniversaryBossInstance_Cont["InstanceItemtype"],0) < 5 then
			LinkNpcGossipFunc_New(nAnniversaryBossInstance_NpcId, "1-7")
			return
		end
	end
	
	--进入副本
	if User_EnterInstance(tAnniversaryBossInstance_Cont["InstanceType"][nAnniversaryBossInstance_Index],0,0,0,nAnniversaryBossInstance_UserId) then
		local nAnniversaryBossInstance_MonsterId = tAnniversaryBossInstance_Cont["Boss"][nAnniversaryBossInstance_Index]
		
		--传送光效
		User_ChgMapEffectAdd(nAnniversaryBossInstance_UserId)
		--光效
		User_EffectAdd("self",tAnniversaryBossInstance_Cont["Effect"][1],nAnniversaryBossInstance_UserId)
			
		Sys_MsgBox(string.format(tAnniversaryBossInstance_Text["MsgBox"]["IntoInstance"],tAnniversaryBossInstance_Text["Boss"][nAnniversaryBossInstance_Index]))
		User_TalkChannel2005(tAnniversaryBossInstance_Text["MsgBox"]["IntoInstance2"],nAnniversaryBossInstance_UserId)
		
		-- 刷新怪
		AnniversaryBossInstance_RefreshBoss(nAnniversaryBossInstance_MonsterId,nAnniversaryBossInstance_Index)
		
	end
end

--刷新BOSS
function AnniversaryBossInstance_RefreshBoss(nAnniversaryBossInstance_MonsterId,nAnniversaryBossInstance_Index)
	local nAnniversaryBossInstance_UserId = Get_UserId()
	local nAnniversaryBossInstance_MapId = Get_UserMapId(nAnniversaryBossInstance_UserId)
	
	--判断当前地图是否有BOSS，有就不刷新
	if AnniversaryBossInstance_ChkBossExist(nAnniversaryBossInstance_MapId) then
		return false
	end
	
	local nAnniversaryBossInstance_PosX = tAnniversaryBossInstance_Cont["BossInfo"][nAnniversaryBossInstance_Index]["PosX"]
	local nAnniversaryBossInstance_PosY = tAnniversaryBossInstance_Cont["BossInfo"][nAnniversaryBossInstance_Index]["PosY"]
	local nAnniversaryBossInstance_GenId = tAnniversaryBossInstance_Cont["BossInfo"][nAnniversaryBossInstance_Index]["GenId"]
	
	return Monster_AddAndCount(nAnniversaryBossInstance_MapId,nAnniversaryBossInstance_PosX,nAnniversaryBossInstance_PosY,nAnniversaryBossInstance_GenId,nAnniversaryBossInstance_MonsterId)
end
--判断当前地图是否存在BOSS
function AnniversaryBossInstance_ChkBossExist(nAnniversaryBossInstance_MapId)
	for k,v in pairs(tAnniversaryBossInstance_Cont["BossId"]) do
		if Get_SysTempData(1,nAnniversaryBossInstance_MapId,k) > 0 then
			return true
		end
	end
	
	return false
end
--判断掩码是否大于index
function AnniversaryBossInstance_ChkStc(nAnniversaryBossInstance_Event,nAnniversaryBossInstance_Type,nAnniversaryBossInstance_Index,nAnniversaryBossInstance_UserId)
	local nAnniversaryBossInstance_Date = Get_UserStatisticValue(nAnniversaryBossInstance_Event,nAnniversaryBossInstance_Type,nAnniversaryBossInstance_UserId)
	if nAnniversaryBossInstance_Date >= nAnniversaryBossInstance_Index then
		return true
	end
	return false
end
--主NPC对白判断
function AnniversaryBossInstance_MainChk(nAnniversaryBossInstance_NpcId)
	local nAnniversaryBossInstance_UserId = Get_UserId()
	local nAnniversaryBossInstance_Event1 = tAnniversaryBossInstance_Stc["MainGuide"]["EventType"]
	local nAnniversaryBossInstance_Type1  = tAnniversaryBossInstance_Stc["MainGuide"]["TypeData"]
	local nAnniversaryBossInstance_Event2 = tAnniversaryBossInstance_Stc["InstanceGuide"]["EventType"]
	local nAnniversaryBossInstance_Type2  = tAnniversaryBossInstance_Stc["InstanceGuide"]["TypeData"]
	local nAnniversaryBossInstance_Date1  = Get_UserStatisticValue(nAnniversaryBossInstance_Event1,nAnniversaryBossInstance_Type1,nAnniversaryBossInstance_UserId) or 0
	local nAnniversaryBossInstance_Date2  = Get_UserStatisticValue(nAnniversaryBossInstance_Event2,nAnniversaryBossInstance_Type2,nAnniversaryBossInstance_UserId) or 0
	--判断主引导任务掩码是否大于0，大于0则开启引导
	if nAnniversaryBossInstance_Date1 > 0 and nAnniversaryBossInstance_Date1 < 3 then
		-- 判断副本NPC引导掩码 等于0为未挑战副本，等于1为挑战完boss的第一句引导，等于1为挑战完boss的第一句引导
		if nAnniversaryBossInstance_Date2 == 0 then
			return 1
		end
		if nAnniversaryBossInstance_Date2 == 1 then
			return 2
		end
		if nAnniversaryBossInstance_Date2 == 2 then
			return 3
		end
	end
	--判断主引导任务掩码大等于3，大等于3时副本NPC接入主对白
	if nAnniversaryBossInstance_Date1 >= 3 then
		return 4
	end
	-- 接对白引导至主NPC
	return 0
end
--引导对白1接到引导对白2
function AnniversaryBossInstance_OptionPoint(nAnniversaryBossInstance_NpcId)
	local nAnniversaryBossInstance_Event = tAnniversaryBossInstance_Stc["InstanceGuide"]["EventType"]
	local nAnniversaryBossInstance_Type  = tAnniversaryBossInstance_Stc["InstanceGuide"]["TypeData"]
	if Task_SetStatistic(nAnniversaryBossInstance_Event, nAnniversaryBossInstance_Type, 1, 2) then
		Task_SetStcTimestamp(nAnniversaryBossInstance_Event, nAnniversaryBossInstance_Type, 0)
	end
	LinkNpcGossipFunc_New(nAnniversaryBossInstance_NpcId, "1-4")
end
--引导对白1接到引导对白2
function AnniversaryBossInstance_OptionPoint(nAnniversaryBossInstance_NpcId)
	local nAnniversaryBossInstance_Event = tAnniversaryBossInstance_Stc["InstanceGuide"]["EventType"]
	local nAnniversaryBossInstance_Type  = tAnniversaryBossInstance_Stc["InstanceGuide"]["TypeData"]
	-- 设置引导进度
	if Task_SetStatistic(nAnniversaryBossInstance_Event, nAnniversaryBossInstance_Type, 2, 1) then
		Task_SetStcTimestamp(nAnniversaryBossInstance_Event, nAnniversaryBossInstance_Type, 0)
	end
	LinkNpcGossipFunc_New(nAnniversaryBossInstance_NpcId, "1-4")
end
--引导对白2接到完成引导任务 寻路至主NPC甄小福
function AnniversaryBossInstance_CompleteGuide(nAnniversaryBossInstance_NpcId)
	-- 寻路至主NPC甄小福
	NpcPosition_PathFind(tAnniversaryBossInstance_Cont["MainNpcId"])
	-- 完成引导任务打掩码 测试时关闭
	Aniversary2020Rank_Guide(3)
end
---击杀世界boss开启副本 配置全局表，data1-data4分别对应不用boss的副本
function AnniversaryBossInstance_Open(nAnniversaryBossInstance_Index)
	local nAnniversaryBossInstance_SysDyGlobId = tAnniversaryBossInstance_Cont["InstanceOpenGlobalId"]
	-- 如果不在8:00-23:59则不开启副本
	if not Sys_ChkDayTime(tAnniversaryBossInstance_Cont["OpenTime"]) then
		return
	end
	Sys_SetSynaGlobalData(nAnniversaryBossInstance_SysDyGlobId,nAnniversaryBossInstance_Index,1)
end

---寻路到傲天圣龙
function AnniversaryBossInstance_Goto(nAnniversaryBossInstance_Num)
	NpcPosition_PathFind(tAnniversaryBossInstance_Cont["MainNpcId"])
end
-- 离开副本
function AnniversaryBossInstance_LeaveInstance()
	local nAnniversaryBossInstance_Index = 1
	if SpecialServer_ChkNoGiftServer() then
		nAnniversaryBossInstance_Index = 2
	end
	local nAnniversaryBossInstance_MapId = tAnniversaryBossInstance_LeaveMap[nAnniversaryBossInstance_Index]["MapId"]
	local nAnniversaryBossInstance_PosX = tAnniversaryBossInstance_LeaveMap[nAnniversaryBossInstance_Index]["PosX"]
	local nAnniversaryBossInstance_PosY = tAnniversaryBossInstance_LeaveMap[nAnniversaryBossInstance_Index]["PosY"]
	User_UserRandBoundTrans(nAnniversaryBossInstance_MapId,nAnniversaryBossInstance_PosX,nAnniversaryBossInstance_PosY,5,5)
end
--副本BOSS击杀逻辑
function AnniversaryBossInstance_KillBoss(nAnniversaryBossInstance_MonsterId)
	local nAnniversaryBossInstance_UserId = Get_UserId()
	local nAnniversaryBossInstance_MapId = Get_UserMapId(nAnniversaryBossInstance_UserId)
	
	-- 怪物死亡
	Monster_Death(nAnniversaryBossInstance_MonsterId,nAnniversaryBossInstance_MapId)
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["BossTime"]) then
		return
	end
	
	--如果是首次副本 不消耗令牌
	if nAnniversaryBossInstance_MonsterId ~= tAnniversaryBossInstance_Cont["Boss"][1] then
		--判断是否有5个挑战令
		if Get_CountItemType(tAnniversaryBossInstance_Cont["InstanceItemtype"],0) < 5 then
			Sys_MsgBox(tAnniversaryBossInstance_Text["MsgBox"]["NoItem"])
			-- 传送出副本
			AnniversaryBossInstance_LeaveInstance()
			-- 再次寻路至傲天圣龙
			NpcPosition_PathFind(tAnniversaryBossInstance_Cont["MainNpcId"])
			return
		end
	end
	-- 判断背包空间
	local nAnniversaryBossInstance_Space = RewardTemplate_GetRandomSpace(tAnniversaryBossInstance_Data["Reward"]["Boss"],nAnniversaryBossInstance_MonsterId)
	if not User_CheckLeftSpace(nAnniversaryBossInstance_Space) then
		Sys_MsgBox(tAnniversaryBossInstance_Text["MsgBox"]["FullBag"])
		-- 传送出副本
		AnniversaryBossInstance_LeaveInstance()
		-- 再次寻路至傲天圣龙
		NpcPosition_PathFind(tAnniversaryBossInstance_Cont["MainNpcId"])
		return
	end
	--如果是首次副本 打上掩码
	if nAnniversaryBossInstance_MonsterId == tAnniversaryBossInstance_Cont["Boss"][1] then
		local nAnniversaryBossInstance_Event = tAnniversaryBossInstance_Stc["InstanceGuide"]["EventType"]
		local nAnniversaryBossInstance_Type  = tAnniversaryBossInstance_Stc["InstanceGuide"]["TypeData"]
		-- 设置引导进度
		if Task_SetStatistic(nAnniversaryBossInstance_Event, nAnniversaryBossInstance_Type, 1, 1) then
			Task_SetStcTimestamp(nAnniversaryBossInstance_Event, nAnniversaryBossInstance_Type, 0)
		end
	end
	
	local tAnniversaryBossInstance_Reward, sAnniversaryBossInstance_RewardStr = RewardTemplate_RandomReward(tAnniversaryBossInstance_Data["Reward"]["Boss"],nAnniversaryBossInstance_MonsterId)
	
	-- 传送出副本
	AnniversaryBossInstance_LeaveInstance()
	-- 再次寻路至傲天圣龙
	-- NpcPosition_PathFind(tAnniversaryBossInstance_Cont["MainNpcId"])
	-- 出副本给105提示
	if nAnniversaryBossInstance_MonsterId == tAnniversaryBossInstance_Cont["Boss"][1] then
		
		-- 完成引导任务打掩码 
		Aniversary2020Rank_Guide(3)
		-- 首次通关给引导提示
		Sys_MsgBox(tAnniversaryBossInstance_Text["MsgBox"]["FirstSuccess"],string.format("NpcPosition_PathFind</N>%d",tAnniversaryBossInstance_Cont["MainNpcId"]))
	else
		Sys_MsgBox(string.format(tAnniversaryBossInstance_Text["MsgBox"]["Success"],sAnniversaryBossInstance_RewardStr),string.format("NpcPosition_PathFind</N>%d",tAnniversaryBossInstance_Cont["MainNpcId"]))
	end
end

--上线自动接引导任务 
function AnniversaryBossInstance_Login()
	local nAnniversaryBossInstance_UserId = Get_UserId()
	local nAnniversaryBossInstance_TaskId = tAnniversaryBossInstance_Cont["ActivityTaskId"]
	local nAnniversaryBossInstance_Level = tAnniversaryBossInstance_Cont["Level"]
	local nAnniversaryBossInstance_Metempsychosis = tAnniversaryBossInstance_Cont["Metempsychosis"]

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		if Task_ChkTaskDetail(nAnniversaryBossInstance_TaskId,0) then
			Task_DelTaskDetail(nAnniversaryBossInstance_TaskId)
		end
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAnniversaryBossInstance_Level,nAnniversaryBossInstance_Metempsychosis,nAnniversaryBossInstance_UserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nAnniversaryBossInstance_TaskId,0) then
		Task_AddTaskDetail(nAnniversaryBossInstance_TaskId,0)
	end
end
--引导任务完成接口
function AnniversaryBossInstance_TaskComplete()
	local nAnniversaryBossInstance_UserId = Get_UserId()
	local nAnniversaryBossInstance_TaskId = tAnniversaryBossInstance_Cont["ActivityTaskId"]


	--判断是否接受任务
	if not Task_ChkTaskDetail(nAnniversaryBossInstance_TaskId,nAnniversaryBossInstance_UserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nAnniversaryBossInstance_TaskId,"CompleteFlag",">=",1,nAnniversaryBossInstance_UserId) then
		return
	end
	-- 完成任务
	Task_SetTaskDetailCompleteFlag(nAnniversaryBossInstance_TaskId,1, nAnniversaryBossInstance_UserId)
	--播放光效
	User_EffectAdd("self",tAnniversaryBossInstance_Cont["TaskEffect"])
end
---------------------------------------------NPC模块---------------------------------------------

--傲天圣龙
tNpcFace[4943] = 13
tNpcGossip[26088] = tNpcGossip[26088] or DefaultNpc:new{}
tNpcGossip[26088]["DialogueText"] = tAnniversaryBossInstance_Text[26088]
tNpcGossip[26088]["OptionHidden"] = 1

--未开启引导
tNpcGossip[26088]["Text1-1"] = {111,112}
tNpcGossip[26088]["tOption1-1"] = {112,113,114}
tNpcGossip[26088]["ChkFunc1-1"] = function()
	local nAnniversaryBossInstance_Text = math.random(112,114)
	tNpcGossip[26088]["Text112"] = tAnniversaryBossInstance_Text[26088]["Text" .. nAnniversaryBossInstance_Text]
	tNpcGossip[26088]["tOption1-1"] = {nAnniversaryBossInstance_Text}
	return AnniversaryBossInstance_MainChk(26088) == 0
end
--寻路至主NPC甄小福
tNpcGossip[26088]["OptionFunc112"] = "NpcPosition_PathFind</N>26069"
tNpcGossip[26088]["OptionFunc113"] = "NpcPosition_PathFind</N>26069"
tNpcGossip[26088]["OptionFunc114"] = "NpcPosition_PathFind</N>26069"

--开启引导 未通过首次挑战
tNpcGossip[26088]["Text1-2"] = {121,122}
tNpcGossip[26088]["tOption1-2"] = {121}
tNpcGossip[26088]["ChkFunc1-2"] = function()
	return AnniversaryBossInstance_MainChk(26088) == 1
end
tNpcGossip[26088]["OptionFunc121"] = "AnniversaryBossInstance_IntoInstance</N>1</N>26088"
--开启引导 通过首次挑战 进入引导对白1
tNpcGossip[26088]["Text1-3"] = {131,132,133}
tNpcGossip[26088]["tOption1-3"] = {131}
tNpcGossip[26088]["ChkFunc1-3"] = function()
	return AnniversaryBossInstance_MainChk(26088) == 2
end
tNpcGossip[26088]["OptionFunc131"] = "AnniversaryBossInstance_OptionPoint</N>26088"
--开启引导 通过首次挑战 进入引导对白2
tNpcGossip[26088]["Text1-4"] = {141,142}
tNpcGossip[26088]["tOption1-4"] = {141}
tNpcGossip[26088]["ChkFunc1-4"] = function()
	return AnniversaryBossInstance_MainChk(26088) == 3
end
tNpcGossip[26088]["OptionFunc141"] = "AnniversaryBossInstance_CompleteGuide</N>26088"
--结束引导任务，进入主对白
tNpcGossip[26088]["Text1-5"] = {151,152,153,154,155,156,157,158,159,1510,1511,1512,1513,1514}
tNpcGossip[26088]["tOption1-5"] = {151,152,153,154}
tNpcGossip[26088]["ChkFunc1-5"] = function()
	--不在活动时间内则提示未开启
	if not Sys_ChkDayTime(tAnniversaryBossInstance_Cont["OpenTime"]) then
		for i=1,4 do 
			tNpcGossip[26088]["Option15"..i] = string.format(tAnniversaryBossInstance_Text[26088]["Option15"..i],tAnniversaryBossInstance_Text[26088]["Close"])
		end
	else
		--选项显示是否副本开启
		for i=1,4 do 
			if Get_SysDynaGlobalData(tAnniversaryBossInstance_Cont["InstanceOpenGlobalId"],i) > 0 then
				tNpcGossip[26088]["Option15"..i] = string.format(tAnniversaryBossInstance_Text[26088]["Option15"..i],tAnniversaryBossInstance_Text[26088]["Open"])
			else
				tNpcGossip[26088]["Option15"..i] = string.format(tAnniversaryBossInstance_Text[26088]["Option15"..i],tAnniversaryBossInstance_Text[26088]["Close"])
			end
		end
	end
	-- 剩余的大奖数量
	local nAnniversaryBossInstance_LeftNum1 = tAnniversaryBossInstance_Cont["Reward"][1]["Limt"] - Get_SysDynaGlobalData(tAnniversaryBossInstance_Cont["Reward"][1]["GlobalId"],tAnniversaryBossInstance_Cont["Reward"][1]["Pos"])
	local nAnniversaryBossInstance_LeftNum2 = tAnniversaryBossInstance_Cont["Reward"][2]["Limt"] - Get_SysDynaGlobalData(tAnniversaryBossInstance_Cont["Reward"][2]["GlobalId"],tAnniversaryBossInstance_Cont["Reward"][2]["Pos"])
	local nAnniversaryBossInstance_LeftNum3 = tAnniversaryBossInstance_Cont["Reward"][3]["Limt"] - Get_SysDynaGlobalData(tAnniversaryBossInstance_Cont["Reward"][3]["GlobalId"],tAnniversaryBossInstance_Cont["Reward"][3]["Pos"])
	local nAnniversaryBossInstance_LeftNum4 = tAnniversaryBossInstance_Cont["Reward"][4]["Limt"] - Get_SysDynaGlobalData(tAnniversaryBossInstance_Cont["Reward"][4]["GlobalId"],tAnniversaryBossInstance_Cont["Reward"][4]["Pos"])
	
	tNpcGossip[26088]["Text157"] = string.format(tAnniversaryBossInstance_Text[26088]["Text157"],nAnniversaryBossInstance_LeftNum1,nAnniversaryBossInstance_LeftNum2)
	tNpcGossip[26088]["Text1511"] = string.format(tAnniversaryBossInstance_Text[26088]["Text1511"],nAnniversaryBossInstance_LeftNum3,nAnniversaryBossInstance_LeftNum4)
	
	-- return AnniversaryBossInstance_MainChk(26088) == 4
	return true
end
tNpcGossip[26088]["OptionFunc151"] = "AnniversaryBossInstance_IntoInstance</N>2</N>26088"
tNpcGossip[26088]["OptionFunc152"] = "AnniversaryBossInstance_IntoInstance</N>3</N>26088"
tNpcGossip[26088]["OptionFunc153"] = "AnniversaryBossInstance_IntoInstance</N>4</N>26088"
tNpcGossip[26088]["OptionFunc154"] = "AnniversaryBossInstance_IntoInstance</N>5</N>26088"

-- 副本未开启
tNpcGossip[26088]["Text1-6"] = {161,162}
tNpcGossip[26088]["tOption1-6"] = {161}
tNpcGossip[26088]["OptionFunc161"] = "NpcPosition_PathFind</N>26201"

-- 没有挑战令
tNpcGossip[26088]["Text1-7"] = {171,172,173}
tNpcGossip[26088]["tOption1-7"] = {171}
---------------------------------物品部分---------------------------------------------
--3600246  魔王挑战令
tItem[3600246] = tItem[3600246] or {}
tItem[3600246]["Function"] = function(nItemId,sItemName)
	-- 判断是否处于活动期内，过期删除
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		local nAnniversaryBossInstance_Num = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		--过期删除log
		local sAnniversaryBossInstance_str = string.format(tAnniversaryBossInstance_Log[nItemId],nAnniversaryBossInstance_Num)
		Sys_SaveActionFestivalLog(sAnniversaryBossInstance_str)
		User_TalkChannel2005(tAnniversaryBossInstance_Text["MsgBox"]["TimeOut"])
		end 
		return
	end
	--寻路到傲天圣龙
	NpcPosition_PathFind(tAnniversaryBossInstance_Cont["MainNpcId"])
end
---------------------------------------------怪物模块---------------------------------------------
-- 副本地图boss逻辑
local tAnniversaryBossInstance_Boss = {}
	tAnniversaryBossInstance_Boss["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"]
	tAnniversaryBossInstance_Boss["Function"] = AnniversaryBossInstance_KillBoss
	tAnniversaryBossInstance_Boss["MonsterId"] = {6302,6303,6304,6305,6306}
table.insert(tMonsterDrop_AreaLoad,tAnniversaryBossInstance_Boss)
---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,AnniversaryBossInstance_Login)
-------------------------------------------时间自检-----------------------------------------------
tGlobalData_Info[54367] = {}
tGlobalData_Info[54367]["Time"] = {}
tGlobalData_Info[54367]["Time"]["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"]
tGlobalData_Info[54367]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54367]["Rest"] = {}
tGlobalData_Info[54367]["Rest"]["GlobalId"] = {54367}
tGlobalData_Info[54367]["Rest"]["Pos"] = {0,1,2,3,4,5}

tGlobalData_Info[54368] = {}
tGlobalData_Info[54368]["Time"] = {}
tGlobalData_Info[54368]["Time"]["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"]
tGlobalData_Info[54368]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54368]["Rest"] = {}
tGlobalData_Info[54368]["Rest"]["GlobalId"] = {54368}
tGlobalData_Info[54368]["Rest"]["Pos"] = {0,1,2,3,4,5}

tGlobalData_Info[54369] = {}
tGlobalData_Info[54369]["Time"] = {}
tGlobalData_Info[54369]["Time"]["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"]
tGlobalData_Info[54369]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54369]["Rest"] = {}
tGlobalData_Info[54369]["Rest"]["GlobalId"] = {54369}
tGlobalData_Info[54369]["Rest"]["Pos"] = {0,1,2,3,4,5}

tGlobalData_Info[54370] = {}
tGlobalData_Info[54370]["Time"] = {}
tGlobalData_Info[54370]["Time"]["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"]
tGlobalData_Info[54370]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54370]["Rest"] = {}
tGlobalData_Info[54370]["Rest"]["GlobalId"] = {54370}
tGlobalData_Info[54370]["Rest"]["Pos"] = {1,2,3,4}