------------------------------------------------------------------------------------
--Name：       190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
--Creator:     江宇君
--Created:     2019-03-06
------------------------------------------------------------------------------------
--任务需求：
-- 第二阶段（5.2-5.8）：
-- 玩家参与日常跨服任务、各类PK赛等活动，有概率获得勇士觉醒助力礼包。
-- 每个角色每日获得礼包不超过2个。

-- 英文新增需求：
-- 每日首次打开勇士觉醒礼包可以获得一次解锁百兵谱的机会


------------------------------------------------------------------------------------
-- 命名前缀:	TrojanAwakenPhaseII_

-- logid:	12001320
-- emoneybuy:	100000190
-- stc: 	191 37	开显著功勋礼包掩码，隔天清理，每天限量1 概率100%
-- stc: 	191 38	参加pk赛，隔天清理，每天限量1 概率33%
-- stc: 	191 79	玩家是否领取过npc奖励 1为领取过
-- stc: 	193 35	>=1 表示玩家今日已打开勇士觉醒宝箱
-- stc: 	193 36	>=1 表示玩家今日已解锁过百兵决
-- stc: 	193 37	表示玩家解锁的百兵决类型，用二进制表示


----------------------------------表配置部分--------------------------------------------
-- 奖励表
local tTrojanAwakenPhaseII_Reward = {}
	-- ===勇士觉醒宝箱
	-- ===索引:3312101
	tTrojanAwakenPhaseII_Reward[3312101] = {}
	tTrojanAwakenPhaseII_Reward[3312101]["ItemChanceSum"] = 10000
	tTrojanAwakenPhaseII_Reward[3312101]["LogId"] = 12001320
	-- 随机天石（赠）礼包 - 18.00%
	tTrojanAwakenPhaseII_Reward[3312101][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][1]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312101][1]["ItemChance"] = 1800
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardItem"][1]["Id"] = 3312102 -- 【库】随机天石（赠）礼包[属性:11]【表格】随机天石（赠）礼包
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardItem"][1]["Attr"] = "0 1" -- 随机天石（赠）礼包*1
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312101][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹碎片（赠） - 20.00%
	tTrojanAwakenPhaseII_Reward[3312101][2] = {}
	tTrojanAwakenPhaseII_Reward[3312101][2]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312101][2]["ItemChance"] = 2000
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardItem"][1]["Id"] = 3306370 -- 【库】黄色神纹碎片[属性:9]【表格】黄色神纹碎片（赠）
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹碎片*1
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312101][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3（赠） - 16.00%
	tTrojanAwakenPhaseII_Reward[3312101][3] = {}
	tTrojanAwakenPhaseII_Reward[3312101][3]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312101][3]["ItemChance"] = 1600
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3（赠）
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +3赤炼石(赠)*1
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312101][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 - 10.00%
	tTrojanAwakenPhaseII_Reward[3312101][4] = {}
	tTrojanAwakenPhaseII_Reward[3312101][4]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312101][4]["ItemChance"] = 1000
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardItem"][1]["Id"] = 3305426 -- 【库】神兵灵魄碎片[属性:9]【表格】神兵灵魄
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardItem"][1]["Attr"] = "0 1" -- 神兵灵魄碎片*1
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312101][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 神器源晶 - 16.00%
	tTrojanAwakenPhaseII_Reward[3312101][5] = {}
	tTrojanAwakenPhaseII_Reward[3312101][5]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312101][5]["ItemChance"] = 1600
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardItem"][1]["Id"] = 3306885 -- 【库】神器源晶[属性:9]【表格】神器源晶
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardItem"][1]["Attr"] = "0 5" -- 神器源晶*5
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312101][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20.00%
	tTrojanAwakenPhaseII_Reward[3312101][6] = {}
	tTrojanAwakenPhaseII_Reward[3312101][6]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312101][6]["ItemChance"] = 2000
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312101][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===随机天石（赠）礼包
	-- ===索引:3312102
	tTrojanAwakenPhaseII_Reward[3312102] = {}
	tTrojanAwakenPhaseII_Reward[3312102]["ItemChanceSum"] = 10000
	tTrojanAwakenPhaseII_Reward[3312102]["LogId"] = 12001320
	-- 1-10天石（赠） - 5.00%
	tTrojanAwakenPhaseII_Reward[3312102][1] = {}
	tTrojanAwakenPhaseII_Reward[3312102][1]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][1]["ItemChance"] = 500
	tTrojanAwakenPhaseII_Reward[3312102][1]["Item_1"] = 1
	tTrojanAwakenPhaseII_Reward[3312102][1]["Start"] = 1
	tTrojanAwakenPhaseII_Reward[3312102][1]["End"] = 10
	tTrojanAwakenPhaseII_Reward[3312102][1]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 11-20天石（赠） - 25.00%
	tTrojanAwakenPhaseII_Reward[3312102][2] = {}
	tTrojanAwakenPhaseII_Reward[3312102][2]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][2]["ItemChance"] = 2500
	tTrojanAwakenPhaseII_Reward[3312102][2]["Item_1"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][2]["Start"] = 11
	tTrojanAwakenPhaseII_Reward[3312102][2]["End"] = 20
	tTrojanAwakenPhaseII_Reward[3312102][2]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 21-30天石（赠） - 35.00%
	tTrojanAwakenPhaseII_Reward[3312102][3] = {}
	tTrojanAwakenPhaseII_Reward[3312102][3]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][3]["ItemChance"] = 3500
	tTrojanAwakenPhaseII_Reward[3312102][3]["Item_1"] = 3
	tTrojanAwakenPhaseII_Reward[3312102][3]["Start"] = 21
	tTrojanAwakenPhaseII_Reward[3312102][3]["End"] = 30
	tTrojanAwakenPhaseII_Reward[3312102][3]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 31-40天石（赠） - 18.00%
	tTrojanAwakenPhaseII_Reward[3312102][4] = {}
	tTrojanAwakenPhaseII_Reward[3312102][4]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][4]["ItemChance"] = 1800
	tTrojanAwakenPhaseII_Reward[3312102][4]["Item_1"] = 4
	tTrojanAwakenPhaseII_Reward[3312102][4]["Start"] = 31
	tTrojanAwakenPhaseII_Reward[3312102][4]["End"] = 40
	tTrojanAwakenPhaseII_Reward[3312102][4]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 41-50天石（赠） - 12.00%
	tTrojanAwakenPhaseII_Reward[3312102][5] = {}
	tTrojanAwakenPhaseII_Reward[3312102][5]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][5]["ItemChance"] = 1200
	tTrojanAwakenPhaseII_Reward[3312102][5]["Item_1"] = 5
	tTrojanAwakenPhaseII_Reward[3312102][5]["Start"] = 41
	tTrojanAwakenPhaseII_Reward[3312102][5]["End"] = 50
	tTrojanAwakenPhaseII_Reward[3312102][5]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 51-60天石（赠） - 4.00%
	tTrojanAwakenPhaseII_Reward[3312102][6] = {}
	tTrojanAwakenPhaseII_Reward[3312102][6]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][6]["ItemChance"] = 400
	tTrojanAwakenPhaseII_Reward[3312102][6]["Item_1"] = 6
	tTrojanAwakenPhaseII_Reward[3312102][6]["Start"] = 51
	tTrojanAwakenPhaseII_Reward[3312102][6]["End"] = 60
	tTrojanAwakenPhaseII_Reward[3312102][6]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 61-66天石（赠） - 1.00%
	tTrojanAwakenPhaseII_Reward[3312102][7] = {}
	tTrojanAwakenPhaseII_Reward[3312102][7]["RandomItemChanceType"] = 2
	tTrojanAwakenPhaseII_Reward[3312102][7]["ItemChance"] = 100
	tTrojanAwakenPhaseII_Reward[3312102][7]["Item_1"] = 7
	tTrojanAwakenPhaseII_Reward[3312102][7]["Start"] = 61
	tTrojanAwakenPhaseII_Reward[3312102][7]["End"] = 66
	tTrojanAwakenPhaseII_Reward[3312102][7]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Reward[3312102][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Reward[3312102][7]["RewardEffect"]["Effect"] = "angelwing"

-- 获得 勇士觉醒礼包 （1	开显著功勋礼包得宝箱 2	参加pk赛得宝箱）
local tTrojanAwakenPhaseII_Award = {}
	-- ===开显著功勋礼包给勇士觉醒宝箱
	-- ===索引:1
	tTrojanAwakenPhaseII_Award[1] = {}
	tTrojanAwakenPhaseII_Award[1]["LogId"] = 12001320
	-- 勇士觉醒宝箱 - 100.00% 获得
	tTrojanAwakenPhaseII_Award[1]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Award[1]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Award[1]["RewardItem"][1]["Id"] = 3312101 -- 【库】勇士觉醒宝箱[属性:9]【表格】勇士觉醒宝箱
	tTrojanAwakenPhaseII_Award[1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士觉醒宝箱*1
	tTrojanAwakenPhaseII_Award[1]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Award[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Award[1]["RewardEffect"]["Effect"] = "angelwing"

	-- ===参加pk赛给勇士觉醒宝箱
	-- ===索引:2
	tTrojanAwakenPhaseII_Award[2] = {}
	tTrojanAwakenPhaseII_Award[2]["LogId"] = 12001320
	-- 勇士觉醒宝箱 - 33.00% 其他概率不获得东西
	tTrojanAwakenPhaseII_Award[2]["RewardItem"] = {}
	tTrojanAwakenPhaseII_Award[2]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_Award[2]["RewardItem"][1]["Id"] = 3312101 -- 【库】勇士觉醒宝箱[属性:9]【表格】勇士觉醒宝箱
	tTrojanAwakenPhaseII_Award[2]["RewardItem"][1]["Attr"] = "0 1" -- 勇士觉醒宝箱*1
	tTrojanAwakenPhaseII_Award[2]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_Award[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_Award[2]["RewardEffect"]["Effect"] = "angelwing"

-- 投票结束后向npc领取奖励
local tTrojanAwakenPhaseII_GetReward = {}
	-- ===向npc领取通灵宝玉
	-- ===索引:1
	tTrojanAwakenPhaseII_GetReward[1] = {}
	tTrojanAwakenPhaseII_GetReward[1]["LogId"] = 12001320
	tTrojanAwakenPhaseII_GetReward[1]["RewardItem"] = {}
	tTrojanAwakenPhaseII_GetReward[1]["RewardItem"][1] = {}
	tTrojanAwakenPhaseII_GetReward[1]["RewardItem"][1]["Id"] = 3312103 -- 【库】通灵宝玉[属性:9]【表格】通灵宝玉
	tTrojanAwakenPhaseII_GetReward[1]["RewardItem"][1]["Attr"] = "0 %d" -- 通灵宝玉*1
	tTrojanAwakenPhaseII_GetReward[1]["RewardEffect"] = {}
	tTrojanAwakenPhaseII_GetReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenPhaseII_GetReward[1]["RewardEffect"]["Effect"] = "angelwing"

-- 数据表
local tTrojanAwakenPhaseII_Data = {}
	tTrojanAwakenPhaseII_Data["Reward"] = {}
	tTrojanAwakenPhaseII_Data["Reward"]["Limit"] = 66
	tTrojanAwakenPhaseII_Data["Reward"]["LogId"] = 12001320
	tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"] = {}
	tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"][1] = {}
	tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"][1]["Id"] = 3312102
	tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"][1]["ItemNum"] = 1
	tTrojanAwakenPhaseII_Data["Reward"]["RewardEMoneyMono"] = {}
	
	tTrojanAwakenPhaseII_Data["Level"] = 120
	tTrojanAwakenPhaseII_Data["Metempsychosis"] = 1
	
	tTrojanAwakenPhaseII_Data["Web"] = {}
	tTrojanAwakenPhaseII_Data["Web"][1] = "https://co.99.com/guide/event/2019/mysteryofinspiration/1.shtml"
	tTrojanAwakenPhaseII_Data["Web"][2] = "https://co.99.com/guide/event/2019/mysteryofinspiration/2.shtml"
	tTrojanAwakenPhaseII_Data["Web"][3] = "https://co.99.com/guide/event/2019/mysteryofinspiration/3.shtml"
	tTrojanAwakenPhaseII_Data["Web"][4] = "https://co.99.com/guide/event/2019/mysteryofinspiration/4.shtml"
	tTrojanAwakenPhaseII_Data["Web"][5] = "https://co.99.com/guide/event/2019/mysteryofinspiration/5.shtml"
	tTrojanAwakenPhaseII_Data["Web"][6] = "https://co.99.com/guide/event/2019/mysteryofinspiration/6.shtml"
	tTrojanAwakenPhaseII_Data["Web"][7] = "https://co.99.com/guide/event/2019/mysteryofinspiration/7.shtml"
	tTrojanAwakenPhaseII_Data["Web"][8] = "https://co.99.com/guide/event/2019/mysteryofinspiration/8.shtml"
	tTrojanAwakenPhaseII_Data["Web"][9] = "https://co.99.com/guide/event/2019/mysteryofinspiration/9.shtml"
	
-- 掩码表
local tTrojanAwakenPhaseII_Stc = {}
	-- 开显著功勋礼包得宝箱掩码 每日限量1
	tTrojanAwakenPhaseII_Stc[1] = {}
	tTrojanAwakenPhaseII_Stc[1]["EventType"] = 191
	tTrojanAwakenPhaseII_Stc[1]["DataType"] = 37
	tTrojanAwakenPhaseII_Stc[1]["TotalData"] = 1
	
	-- 参加pk赛得宝箱掩码 每日限量1 33%概率可得
	tTrojanAwakenPhaseII_Stc[2] = {}
	tTrojanAwakenPhaseII_Stc[2]["EventType"] = 191
	tTrojanAwakenPhaseII_Stc[2]["DataType"] = 38
	tTrojanAwakenPhaseII_Stc[2]["TotalData"] = 1
	
	-- 玩家是否领取过npc奖励
	tTrojanAwakenPhaseII_Stc[3] = {}
	tTrojanAwakenPhaseII_Stc[3]["EventType"] = 191
	tTrojanAwakenPhaseII_Stc[3]["DataType"] = 79
	tTrojanAwakenPhaseII_Stc[3]["TotalData"] = 1
	
	-- 玩家今日是否开启过勇士觉醒宝箱
	tTrojanAwakenPhaseII_Stc[4] = {}
	tTrojanAwakenPhaseII_Stc[4]["EventType"] = 193
	tTrojanAwakenPhaseII_Stc[4]["DataType"] = 35
	tTrojanAwakenPhaseII_Stc[4]["TotalData"] = 1
	
	-- 玩家今日是否解锁过百兵决
	tTrojanAwakenPhaseII_Stc[5] = {}
	tTrojanAwakenPhaseII_Stc[5]["EventType"] = 193
	tTrojanAwakenPhaseII_Stc[5]["DataType"] = 36
	tTrojanAwakenPhaseII_Stc[5]["TotalData"] = 1
	
	-- 玩家解锁了哪几本百兵决
	tTrojanAwakenPhaseII_Stc[6] = {}
	tTrojanAwakenPhaseII_Stc[6]["EventType"] = 193
	tTrojanAwakenPhaseII_Stc[6]["DataType"] = 37
	tTrojanAwakenPhaseII_Stc[6]["IsRead"] = {}
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][1] = 1
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][2] = 2
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][3] = 4
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][4] = 8
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][5] = 16
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][6] = 32
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][7] = 64
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][8] = 128
	tTrojanAwakenPhaseII_Stc[6]["IsRead"][9] = 256
	
	-- Sys_ParseNumbersContain(nConNum,nTotalNum)

-- log表
local tTrojanAwakenPhaseII_Log = {}
	tTrojanAwakenPhaseII_Log["Log"] = "0,0,3312102,1,12001320,2,3,%d"

----------------------------------逻辑部分---------------------------------------------
-- 打开 勇士觉醒宝箱
function TrojanAwakenPhaseII_OpenBox(nItemId)
	local nUserId = Get_UserId()
	-- 今日打开勇士宝箱的掩码
	local nEvent = tTrojanAwakenPhaseII_Stc[4]["EventType"]
	local nData = tTrojanAwakenPhaseII_Stc[4]["DataType"]
	-- 今日解锁篇章的掩码
	local nLockedEvent = tTrojanAwakenPhaseII_Stc[5]["EventType"]
	local nLockedData = tTrojanAwakenPhaseII_Stc[5]["DataType"]
	local nDeleteNum = tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"][1]["ItemNum"]
	
	-- 判断物品是否存在
	if not Item_ChkMulItem(nItemId, nItemId, nDeleteNum) then
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"]) then
		return
	end
	
	-- 掩码隔天清零
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		Task_SetStatistic(nLockedEvent, nLockedData, 0, 1, nUserId)
		Task_SetStcTimestamp(nLockedEvent, nLockedData, 0, nUserId)
	end
	
	-- 判断奖励所需要的背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tTrojanAwakenPhaseII_Reward, nItemId, nUserId)
	if not RewardTemplate_ChkRandomSpace(tTrojanAwakenPhaseII_Reward, nItemId, nUserId) then
		User_TalkChannel2005(string.format(tTrojanAwakenPhaseII_Text["NoSpace"], nSpace))
		return 
	end
	
	-- 删物品
	if not Item_DelMulItem(nItemId, nItemId, nDeleteNum) then
		return
	end
	
	-- 打开勇士觉醒宝箱时置掩码
	Task_AddStatistic(nEvent, nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	
	-- 给奖励
	for i = 1, 2 do
		RewardTemplate_NewRandom(tTrojanAwakenPhaseII_Reward, nItemId, nUserId)
	end
	
end

-- 打开 随机天石（赠）礼包
function TrojanAwakenPhaseII_OpenMonoBag(nItemId)
	local nUserId = Get_UserId()
	local nDeleteNum = tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"][1]["ItemNum"]
	
	-- 判断物品是否存在
	if not Item_ChkMulItem(nItemId, nItemId, nDeleteNum) then
		return
	end
	
	-- 等级判断
	-- if not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"]) then
		-- return
	-- end
	
	-- 判断赠点上限
	if Get_UserMonoEMoney(nUserId) + tTrojanAwakenPhaseII_Data["Reward"]["Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tTrojanAwakenPhaseII_Text["EMoneyMonoLimit"])
		return
	end
	
	-- 给奖励
	local flat,tReward = Probabil_RandomAward(tTrojanAwakenPhaseII_Reward, nItemId)
	local nStart = tReward[1]["tAward"][1]["Start"]
	local nEnd = tReward[1]["tAward"][1]["End"]
	local nNum = math.random(nStart,nEnd)
	local tRewardData = CommonFunc_Copy(tTrojanAwakenPhaseII_Data)
	-- tTrojanAwakenPhaseII_Data["Reward"]["DeleteItem"][1]["Id"] = nItemId
	tRewardData["Reward"]["RewardEMoneyMono"]["Value"] = nNum
	tRewardData["Reward"]["RewardEMoneyMono"]["EmoneyLog"] = "10000	0190	0	0	"..nNum.."	"
	
	RewardTemplate_UseItemAndMsg(tRewardData["Reward"])
end

-- 显著功勋包、竞技场礼包接入
function TrojanAwakenPhaseII_GetBox(nIndex)
	local nUserId = Get_UserId()
	local nEvent = tTrojanAwakenPhaseII_Stc[nIndex]["EventType"]
	local nType = tTrojanAwakenPhaseII_Stc[nIndex]["DataType"]
	local nData = tTrojanAwakenPhaseII_Stc[nIndex]["TotalData"]
	
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"]) then
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断是否隔天，隔天重置掩码时间戳
	if Task_StcInterval(nEvent, nType, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nType, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	end
	
	-- 判断玩家今日领取数量
	if Task_ChkStcValue(nEvent, nType, ">=", nData, nUserId) then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tTrojanAwakenPhaseII_Award[nIndex], nUserId) then
		return
	end
	
	if nIndex == 2 then
		if not Sys_Random(3300, 10000) then
			return
		end
	end
	
	Task_AddStatistic(nEvent, nType, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	RewardTemplate_UseItemAndMsg(tTrojanAwakenPhaseII_Award[nIndex], nUserId)
end

-- 向npc领取通灵宝玉的奖励
function TrojanAwakenPhaseII_GetReward(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tTrojanAwakenPhaseII_Stc[3]["EventType"]
	local nType = tTrojanAwakenPhaseII_Stc[3]["DataType"]
	local nData = tTrojanAwakenPhaseII_Stc[3]["TotalData"]
	local nTrojanNums, nOtherNums, nTotalNums = TrojanAwakenI_GetRewardNums()
	local tReward = CommonFunc_Copy(tTrojanAwakenPhaseII_GetReward[1])
	tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"], nTotalNums)
	
	-- 玩家是否领取过奖励
	if Task_ChkStcValue(nEvent, nType, ">=", nData, nUserId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tReward, nUserId) then
		Sys_MsgBox(tTrojanAwakenPhaseII_Text["SpaceLimit"])
		return
	end
	
	Task_AddStatistic(nEvent, nType, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	RewardTemplate_UseItem(tReward, nUserId)
	User_TalkChannel2005(string.format(tTrojanAwakenPhaseII_Text["GetReward"], nTotalNums))
end

function TrojanAwakenPhaseII_ChkOpenWeb(nNpcId, nIndex)
	-- 是否解锁过该篇
	local nReadEvent = tTrojanAwakenPhaseII_Stc[6]["EventType"]
	local nReadData = tTrojanAwakenPhaseII_Stc[6]["DataType"]
	local nRead = tTrojanAwakenPhaseII_Stc[6]["IsRead"][nIndex]
	local nTotalRead = Get_UserStatisticValue(nReadEvent,nReadData)
	
	local sBookName = tTrojanAwakenPhaseII_Text["Book"][nIndex]
	local sText312 = tTrojanAwakenPhaseII_Text[23929]["Text312"]
	local sOption311 = tTrojanAwakenPhaseII_Text[23929]["Option311"]
	
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"]) then
		return
	end
	
	-- 该篇已经解锁过 直接打开线下页面
	if Sys_ParseNumbersContain(nRead, nTotalRead) then
		User_SendWebDialog(tTrojanAwakenPhaseII_Data["Web"][nIndex])
		return
	end
	
	-- 今日是否可以解锁
	if not TrojanAwakenPhaseII_IsLocked(nNpcId) then
		return
	end
	
	-- 该篇未解锁 今日未解锁过
	-- 未隔天 已开启勇士觉醒宝箱 有解锁次数
	tNpcGossip[23929]["Text312"] = string.format(sText312, sBookName)
	tNpcGossip[23929]["OptionFunc311"] = "TrojanAwakenPhaseII_OpenWeb</N>" .. nIndex
	LinkNpcGossipFunc_New(nNpcId, "3-1")
	
end

-- 今日是否可以解锁
function TrojanAwakenPhaseII_IsLocked(nNpcId)
	
	-- 今日是否有解锁次数
	local nTimesEvent = tTrojanAwakenPhaseII_Stc[4]["EventType"]
	local nTimesData = tTrojanAwakenPhaseII_Stc[4]["DataType"]
	local nTimesTotal = tTrojanAwakenPhaseII_Stc[4]["TotalData"]
	
	-- 今日是否解锁过
	local nLockedEvent = tTrojanAwakenPhaseII_Stc[5]["EventType"]
	local nLockedData = tTrojanAwakenPhaseII_Stc[5]["DataType"]
	local nLockedTotal = tTrojanAwakenPhaseII_Stc[5]["TotalData"]
	
	-- 今日已解锁过百兵谱
	if Task_ChkStcValue(nLockedEvent, nLockedData, ">=", nLockedTotal) then
		LinkNpcGossipFunc_New(nNpcId, "4-1")
		return false
	end
	
	-- 该篇未解锁 今日未解锁过
	-- 是否有解锁次数 隔天 无解锁次数
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		LinkNpcGossipFunc_New(nNpcId, "4-1")
		return false
	end
	
	-- 该篇未解锁 今日未解锁过
	-- 未隔天 判断是否开启过勇士觉醒宝箱
	-- 未开启勇士觉醒宝箱 无解锁次数
	if not Task_ChkStcValue(nTimesEvent, nTimesData, ">=", nTimesTotal) then
		LinkNpcGossipFunc_New(nNpcId, "4-1")
		return false
	end
	
	return true
end

-- 解锁百兵谱
function TrojanAwakenPhaseII_OpenWeb(nIndex)
	-- 要解锁的篇章
	local nReadEvent = tTrojanAwakenPhaseII_Stc[6]["EventType"]
	local nReadData = tTrojanAwakenPhaseII_Stc[6]["DataType"]
	local nRead = tTrojanAwakenPhaseII_Stc[6]["IsRead"][nIndex]
	local nTotalRead = Get_UserStatisticValue(nReadEvent,nReadData)
	
	-- 今日已解锁
	local nLockedEvent = tTrojanAwakenPhaseII_Stc[5]["EventType"]
	local nLockedData = tTrojanAwakenPhaseII_Stc[5]["DataType"]
	
	-- 等级不足 不能解锁百兵谱
	if not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断今天是否可以解锁
	if not TrojanAwakenPhaseII_IsLocked(nNpcId) then
		return
	end
	
	-- 打掩码 今日已解锁
	Task_SetStatistic(nLockedEvent, nLockedData, 1, 1)
	Task_SetStcTimestamp(nLockedEvent, nLockedData, 0)
	
	-- 打掩码 解锁的篇章编码
	Task_AddStatistic(nReadEvent, nReadData, nRead, 1)
	Task_SetStcTimestamp(nReadEvent, nReadData, 0)
	
	-- 打开内嵌页
	User_SendWebDialog(tTrojanAwakenPhaseII_Data["Web"][nIndex])
end

function TrojanAwakenPhaseII_ChkOption(nIndex)
	local nReadEvent = tTrojanAwakenPhaseII_Stc[6]["EventType"]
	local nReadData = tTrojanAwakenPhaseII_Stc[6]["DataType"]
	local nRead = tTrojanAwakenPhaseII_Stc[6]["IsRead"][nIndex]
	local nTotalRead = Get_UserStatisticValue(nReadEvent,nReadData)
	
	-- 未解锁该篇 显示 未解锁选项
	if not Sys_ParseNumbersContain(nRead, nTotalRead) then
		tNpcGossip[23929]["Option14".. nIndex] = tTrojanAwakenPhaseII_Text[23929]["Option14".. nIndex]
		return true
	end
	
	-- 已解锁该篇 显示 重读对白
	tNpcGossip[23929]["Option14".. nIndex] = tTrojanAwakenPhaseII_Text[23929]["Option14".. nIndex .."1"]
	return true
end

----------------------------------NPC部分---------------------------------------------
-- 叶修
tNpcFace[6290] = 35
tNpcGossip[23834]= tNpcGossip[23834] or DefaultNpc:new{}
tNpcGossip[23834]["OptionHidden"] = 1
tNpcGossip[23834]["DialogueText"] = tTrojanAwakenPhaseII_Text[23834]

-- 等级不足对白
tNpcGossip[23834]["Text1-1"] = {111, 112, 113, 114, 115, 116}
tNpcGossip[23834]["ChkFunc1-1"]= function()
	return not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"])
end
tNpcGossip[23834]["tOption1-1"] = {111}

tNpcGossip[23834]["Text1-2"] = {121, 122, 123, 124, 125}
tNpcGossip[23834]["ChkFunc1-2"]= function()
	return User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"])
end
tNpcGossip[23834]["tOption1-2"] = {121, 122}
tNpcGossip[23834]["OptionChkFunc121"] = function()
	local nEvent = tTrojanAwakenPhaseII_Stc[3]["EventType"]
	local nType = tTrojanAwakenPhaseII_Stc[3]["DataType"]
	local nData = tTrojanAwakenPhaseII_Stc[3]["TotalData"]
	if Task_ChkStcValue(nEvent, nType, ">=", nData) then
		tNpcGossip[23834]["Option121"] = tTrojanAwakenPhaseII_Text[23834]["Option123"]
		return true
	end
	
	tNpcGossip[23834]["Option121"] = tTrojanAwakenPhaseII_Text[23834]["Option121"]
	local nTrojanNums, nOtherNums, nTotalNums = TrojanAwakenI_GetRewardNums()
	
	if nTotalNums == 0 then
		return false
	end
	
	return true
end
tNpcGossip[23834]["OptionPoint121"] = "2-1"

tNpcGossip[23834]["Text2-1"] = {211, 212, 213, 214, 215, 216}
tNpcGossip[23834]["ChkFunc2-1"]= function()
	local nEvent = tTrojanAwakenPhaseII_Stc[3]["EventType"]
	local nType = tTrojanAwakenPhaseII_Stc[3]["DataType"]
	local nData = tTrojanAwakenPhaseII_Stc[3]["TotalData"]
	if Task_ChkStcValue(nEvent, nType, ">=", nData) then
		return false
	end

	local nTrojanNums, nOtherNums, nTotalNums = TrojanAwakenI_GetRewardNums()
	
	tNpcGossip[23834]["Text213"] = string.format(tTrojanAwakenPhaseII_Text[23834]["Text213"], nTrojanNums)
	tNpcGossip[23834]["Text214"] = string.format(tTrojanAwakenPhaseII_Text[23834]["Text214"], nOtherNums)
	tNpcGossip[23834]["Text216"] = string.format(tTrojanAwakenPhaseII_Text[23834]["Text216"], nTotalNums)
	
	return true
end
tNpcGossip[23834]["tOption2-1"] = {211}
tNpcGossip[23834]["OptionFunc211"] = "TrojanAwakenPhaseII_GetReward</N>23834"


-- 独孤一方
tNpcFace[6536] = 57
tNpcGossip[23929]= tNpcGossip[23929] or DefaultNpc:new{}
tNpcGossip[23929]["OptionHidden"] = 1
tNpcGossip[23929]["DialogueText"] = tTrojanAwakenPhaseII_Text[23929]

-- 活动前对白
tNpcGossip[23929]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[23929]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"])
end
tNpcGossip[23929]["tOption1-1"] = {111}

-- 活动后对白
tNpcGossip[23929]["Text1-2"] = {121, 122}
tNpcGossip[23929]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"])
end
tNpcGossip[23929]["tOption1-2"] = {121}

-- 活动中等级未达到
tNpcGossip[23929]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137}
tNpcGossip[23929]["ChkFunc1-3"]= function()
	return not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"])
end
tNpcGossip[23929]["tOption1-3"] = {131}

-- 活动中等级达到
tNpcGossip[23929]["Text1-4"] = {141, 142, 143, 144, 145, 146, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 147}
tNpcGossip[23929]["ChkFunc1-4"]= function()
	if not User_JudgeLevelAndMetempsychosis(tTrojanAwakenPhaseII_Data["Level"], tTrojanAwakenPhaseII_Data["Metempsychosis"]) then
		return false
	end
	
	local nReadEvent = tTrojanAwakenPhaseII_Stc[6]["EventType"]
	local nReadData = tTrojanAwakenPhaseII_Stc[6]["DataType"]
	local nTotalRead = Get_UserStatisticValue(nReadEvent,nReadData)
	
	-- 等级达到
	for i = 1, 9 do
		if Sys_ParseNumbersContain(tTrojanAwakenPhaseII_Stc[6]["IsRead"][i], nTotalRead) then
			-- 已解锁的点亮
			tNpcGossip[23929]["Text141"..i] = string.format(tTrojanAwakenPhaseII_Text[23929]["Text141"..i], tTrojanAwakenPhaseII_Text["Book"][i])
		else
			-- 未解锁的显示暗色
			local sColorText = string.format(tTrojanAwakenPhaseII_Text["Color"], tTrojanAwakenPhaseII_Text["Book"][i])
			tNpcGossip[23929]["Text141"..i] = string.format(tTrojanAwakenPhaseII_Text[23929]["Text141"..i], sColorText)
		end
	end
	return true
end
tNpcGossip[23929]["tOption1-4"] = {141, 142, 143, 144, 145, 146, 147, 148, 149}
tNpcGossip[23929]["OptionChkFunc141"] = function()
	return TrojanAwakenPhaseII_ChkOption(1)
end
tNpcGossip[23929]["OptionChkFunc142"] = function()
	return TrojanAwakenPhaseII_ChkOption(2)
end
tNpcGossip[23929]["OptionChkFunc143"] = function()
	return TrojanAwakenPhaseII_ChkOption(3)
end
tNpcGossip[23929]["OptionChkFunc144"] = function()
	return TrojanAwakenPhaseII_ChkOption(4)
end
tNpcGossip[23929]["OptionChkFunc145"] = function()
	return TrojanAwakenPhaseII_ChkOption(5)
end
tNpcGossip[23929]["OptionChkFunc146"] = function()
	return TrojanAwakenPhaseII_ChkOption(6)
end
tNpcGossip[23929]["OptionChkFunc147"] = function()
	return TrojanAwakenPhaseII_ChkOption(7)
end
tNpcGossip[23929]["OptionChkFunc148"] = function()
	return TrojanAwakenPhaseII_ChkOption(8)
end
tNpcGossip[23929]["OptionChkFunc149"] = function()
	return TrojanAwakenPhaseII_ChkOption(9)
end
tNpcGossip[23929]["OptionFunc141"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>1"
tNpcGossip[23929]["OptionFunc142"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>2"
tNpcGossip[23929]["OptionFunc143"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>3"
tNpcGossip[23929]["OptionFunc144"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>4"
tNpcGossip[23929]["OptionFunc145"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>5"
tNpcGossip[23929]["OptionFunc146"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>6"
tNpcGossip[23929]["OptionFunc147"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>7"
tNpcGossip[23929]["OptionFunc148"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>8"
tNpcGossip[23929]["OptionFunc149"] = "TrojanAwakenPhaseII_ChkOpenWeb</N>23929</N>9"

tNpcGossip[23929]["Text3-1"] = {311, 312}
tNpcGossip[23929]["tOption3-1"] = {311}

tNpcGossip[23929]["Text4-1"] = {411, 412}
tNpcGossip[23929]["tOption4-1"] = {411}

----------------------------------物品部分---------------------------------------------
tItem[3312101] = tItem[3312101] or {}
tItem[3312101]["Function"] = function(nItemId,sItemName)
	TrojanAwakenPhaseII_OpenBox(nItemId)
end

tItem[3312102] = tItem[3312102] or {}
tItem[3312102]["Function"] = function(nItemId,sItemName)
	TrojanAwakenPhaseII_OpenMonoBag(nItemId)
end

