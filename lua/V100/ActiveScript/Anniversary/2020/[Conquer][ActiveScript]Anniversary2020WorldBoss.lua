------------------------------------------------------------------------------------
--Name：	200311[简体征服][活动脚本]周年庆世界BOSS
--Creator:	林旭
--Created:	2020-03-11
-- 前缀：An2020Boss
-- LOGID：12001906[4]
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 常量
local tAn2020Boss_Data = {}
	tAn2020Boss_Data["Level"] = 100
	tAn2020Boss_Data["GlobalId"] = 54371
	-- 副本开启动态表对应Data位
	tAn2020Boss_Data["BossGlobalData"] = {}
	tAn2020Boss_Data["BossGlobalData"][1295] = 1
	tAn2020Boss_Data["BossGlobalData"][1296] = 2
	tAn2020Boss_Data["BossGlobalData"][1297] = 3
	tAn2020Boss_Data["BossGlobalData"][1298] = 4
	-- Boss坐标
	tAn2020Boss_Data["BossPos"] = {}
	tAn2020Boss_Data["BossPos"][1295] = {}
	tAn2020Boss_Data["BossPos"][1295]["MapId"] = 10807
	tAn2020Boss_Data["BossPos"][1295]["PosX"] = 50
	tAn2020Boss_Data["BossPos"][1295]["PosY"] = 165
	tAn2020Boss_Data["BossPos"][1295]["GenId"] = 30873
	tAn2020Boss_Data["BossPos"][1296] = {}
	tAn2020Boss_Data["BossPos"][1296]["MapId"] = 10807
	tAn2020Boss_Data["BossPos"][1296]["PosX"] = 181
	tAn2020Boss_Data["BossPos"][1296]["PosY"] = 292
	tAn2020Boss_Data["BossPos"][1296]["GenId"] = 30874
	tAn2020Boss_Data["BossPos"][1297] = {}
	tAn2020Boss_Data["BossPos"][1297]["MapId"] = 10807
	tAn2020Boss_Data["BossPos"][1297]["PosX"] = 268
	tAn2020Boss_Data["BossPos"][1297]["PosY"] = 290
	tAn2020Boss_Data["BossPos"][1297]["GenId"] = 30875
	tAn2020Boss_Data["BossPos"][1298] = {}
	tAn2020Boss_Data["BossPos"][1298]["MapId"] = 10807
	tAn2020Boss_Data["BossPos"][1298]["PosX"] = 341
	tAn2020Boss_Data["BossPos"][1298]["PosY"] = 240
	tAn2020Boss_Data["BossPos"][1298]["GenId"] = 30876
	-- 参加副本NPC坐标
	tAn2020Boss_Data["NpcPos"] = {}
	tAn2020Boss_Data["NpcPos"]["Normal"] = {}
	tAn2020Boss_Data["NpcPos"]["Normal"]["MapId"] = 1002
	tAn2020Boss_Data["NpcPos"]["Normal"]["PosX"] = 368
	tAn2020Boss_Data["NpcPos"]["Normal"]["PosY"] = 445
	tAn2020Boss_Data["NpcPos"]["NoGift"] = {}
	tAn2020Boss_Data["NpcPos"]["NoGift"]["MapId"] = 1002
	tAn2020Boss_Data["NpcPos"]["NoGift"]["PosX"] = 350
	tAn2020Boss_Data["NpcPos"]["NoGift"]["PosY"] = 350
	-- 时间对应召唤的Boss
	tAn2020Boss_Data["HourBoss"] = {}
	tAn2020Boss_Data["HourBoss"][8] = 1295
	tAn2020Boss_Data["HourBoss"][9] = 1295
	tAn2020Boss_Data["HourBoss"][10] = 1296
	tAn2020Boss_Data["HourBoss"][11] = 1296
	tAn2020Boss_Data["HourBoss"][12] = 1297
	tAn2020Boss_Data["HourBoss"][13] = 1297
	tAn2020Boss_Data["HourBoss"][14] = 1298
	tAn2020Boss_Data["HourBoss"][15] = 1298
	tAn2020Boss_Data["HourBoss"][16] = 1295
	tAn2020Boss_Data["HourBoss"][17] = 1295
	tAn2020Boss_Data["HourBoss"][18] = 1296
	tAn2020Boss_Data["HourBoss"][19] = 1296
	tAn2020Boss_Data["HourBoss"][20] = 1297
	tAn2020Boss_Data["HourBoss"][21] = 1297
	tAn2020Boss_Data["HourBoss"][22] = 1298
	tAn2020Boss_Data["HourBoss"][23] = 1298
-- 活动时间
local tAn2020Boss_ActivityTime = {}
	tAn2020Boss_ActivityTime["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"] 
	tAn2020Boss_ActivityTime["DailyTime"] = "8:00 23:59"

local tAn2020Boss_Reward = {}
	-- ===世界BOSS参与奖
	-- ===索引: tAn2020Boss_Reward[3315755]
	-- ===删除:3315755
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315755] = {}
	tAn2020Boss_Reward[3315755]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAn2020Boss_Reward[3315755]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315755]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315755]["DeleteItem"][1]["Id"] = 3315755 -- 【库】仗剑行侠礼包[属性:9]
	tAn2020Boss_Reward[3315755]["LogId"] = 12001906
	tAn2020Boss_Reward[3315755]["LogStep"] = " 1[4]"
	-- 赤炼石+2 - 23%
	tAn2020Boss_Reward[3315755][1] = {}
	tAn2020Boss_Reward[3315755][1]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][1]["ItemChance"] = 2300
	tAn2020Boss_Reward[3315755][1]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][1]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][1]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tAn2020Boss_Reward[3315755][1]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*2
	tAn2020Boss_Reward[3315755][1]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 23%
	tAn2020Boss_Reward[3315755][2] = {}
	tAn2020Boss_Reward[3315755][2]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][2]["ItemChance"] = 2300
	tAn2020Boss_Reward[3315755][2]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][2]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAn2020Boss_Reward[3315755][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAn2020Boss_Reward[3315755][2]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 23%
	tAn2020Boss_Reward[3315755][3] = {}
	tAn2020Boss_Reward[3315755][3]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][3]["ItemChance"] = 2300
	tAn2020Boss_Reward[3315755][3]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][3]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAn2020Boss_Reward[3315755][3]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tAn2020Boss_Reward[3315755][3]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 24%
	tAn2020Boss_Reward[3315755][4] = {}
	tAn2020Boss_Reward[3315755][4]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][4]["ItemChance"] = 2400
	tAn2020Boss_Reward[3315755][4]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][4]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAn2020Boss_Reward[3315755][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tAn2020Boss_Reward[3315755][4]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 1%
	tAn2020Boss_Reward[3315755][5] = {}
	tAn2020Boss_Reward[3315755][5]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][5]["ItemChance"] = 100
	tAn2020Boss_Reward[3315755][5]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][5]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAn2020Boss_Reward[3315755][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tAn2020Boss_Reward[3315755][5]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][5]["RewardEffect"]["Effect"] = "angelwing"
	tAn2020Boss_Reward[3315755][5]["RewardBroadCast"] = tAn2020Boss_Text["Broadcast"]["Reward"][1] -- 全服公告
	tAn2020Boss_Reward[3315755][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 1.5%
	tAn2020Boss_Reward[3315755][6] = {}
	tAn2020Boss_Reward[3315755][6]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][6]["ItemChance"] = 150
	tAn2020Boss_Reward[3315755][6]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][6]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAn2020Boss_Reward[3315755][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tAn2020Boss_Reward[3315755][6]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][6]["RewardEffect"]["Effect"] = "angelwing"
	tAn2020Boss_Reward[3315755][6]["RewardBroadCast"] = tAn2020Boss_Text["Broadcast"]["Reward"][2] -- 全服公告
	tAn2020Boss_Reward[3315755][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 辉月果 - 1.5%
	tAn2020Boss_Reward[3315755][7] = {}
	tAn2020Boss_Reward[3315755][7]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][7]["ItemChance"] = 150
	tAn2020Boss_Reward[3315755][7]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][7]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][7]["RewardItem"][1]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tAn2020Boss_Reward[3315755][7]["RewardItem"][1]["Attr"] = "0 2" -- 辉月果*2
	tAn2020Boss_Reward[3315755][7]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][7]["RewardEffect"]["Effect"] = "angelwing"
	tAn2020Boss_Reward[3315755][7]["RewardBroadCast"] = tAn2020Boss_Text["Broadcast"]["Reward"][3] -- 全服公告
	tAn2020Boss_Reward[3315755][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 万能神纹精粹 - 1.5%
	tAn2020Boss_Reward[3315755][8] = {}
	tAn2020Boss_Reward[3315755][8]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][8]["ItemChance"] = 150
	tAn2020Boss_Reward[3315755][8]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][8]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][8]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAn2020Boss_Reward[3315755][8]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tAn2020Boss_Reward[3315755][8]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][8]["RewardEffect"]["Effect"] = "angelwing"
	tAn2020Boss_Reward[3315755][8]["RewardBroadCast"] = tAn2020Boss_Text["Broadcast"]["Reward"][4] -- 全服公告
	tAn2020Boss_Reward[3315755][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 1000万爵位勋章 - 1.5%
	tAn2020Boss_Reward[3315755][9] = {}
	tAn2020Boss_Reward[3315755][9]["RandomItemChanceType"] = 2
	tAn2020Boss_Reward[3315755][9]["ItemChance"] = 150
	tAn2020Boss_Reward[3315755][9]["RewardItem"] = {}
	tAn2020Boss_Reward[3315755][9]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315755][9]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAn2020Boss_Reward[3315755][9]["RewardItem"][1]["Attr"] = "0 3 3" -- 1000万爵位勋章*3
	tAn2020Boss_Reward[3315755][9]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315755][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315755][9]["RewardEffect"]["Effect"] = "angelwing"
	tAn2020Boss_Reward[3315755][9]["RewardBroadCast"] = tAn2020Boss_Text["Broadcast"]["Reward"][5] -- 全服公告
	tAn2020Boss_Reward[3315755][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】


	tAn2020Boss_Reward[3315756] = {}
	-- ===世界BOSS排名奖
	-- ===索引: tAn2020Boss_Reward[3315756]
	-- ===删除:3315756
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315756]["LogId"] = 12001906
	tAn2020Boss_Reward[3315756]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315756]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315756]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315756]["DeleteItem"][1]["Id"] = 3315756 -- 【库】除魔宗师礼盒[属性:9]
	tAn2020Boss_Reward[3315756]["RewardItem"] = {}
	tAn2020Boss_Reward[3315756]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315756]["RewardItem"][1]["Id"] = 3330461 -- 圣龙果[3330461][属性:11][叠加:10000][金币:0], 【表格】喂养道具大
	tAn2020Boss_Reward[3315756]["RewardItem"][1]["Attr"] = "0 1" -- 圣龙果*1
	tAn2020Boss_Reward[3315756]["RewardStrengthValue"] = {}
	tAn2020Boss_Reward[3315756]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tAn2020Boss_Reward[3315756]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315756]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315756]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315757] = {}
	-- ===世界BOSS排名奖
	-- ===索引: tAn2020Boss_Reward[3315757]
	-- ===删除:3315757
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315757]["LogId"] = 12001906
	tAn2020Boss_Reward[3315757]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315757]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315757]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315757]["DeleteItem"][1]["Id"] = 3315757 -- 【库】除魔英豪礼盒[属性:9]
	tAn2020Boss_Reward[3315757]["RewardItem"] = {}
	tAn2020Boss_Reward[3315757]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315757]["RewardItem"][1]["Id"] = 3330460 -- 灵龙叶[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具小
	tAn2020Boss_Reward[3315757]["RewardItem"][1]["Attr"] = "0 5" -- 灵龙叶*5
	tAn2020Boss_Reward[3315757]["RewardStrengthValue"] = {}
	tAn2020Boss_Reward[3315757]["RewardStrengthValue"]["Value"] = 800 -- 气力值, 【需求】800气力值
	tAn2020Boss_Reward[3315757]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315757]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315757]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315758] = {}
	-- ===世界BOSS排名奖
	-- ===索引: tAn2020Boss_Reward[3315758]
	-- ===删除:3315758
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315758]["LogId"] = 12001906
	tAn2020Boss_Reward[3315758]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315758]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315758]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315758]["DeleteItem"][1]["Id"] = 3315758 -- 【库】除魔高手礼盒[属性:9]
	tAn2020Boss_Reward[3315758]["RewardItem"] = {}
	tAn2020Boss_Reward[3315758]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315758]["RewardItem"][1]["Id"] = 3330460 -- 灵龙叶[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具小
	tAn2020Boss_Reward[3315758]["RewardItem"][1]["Attr"] = "0 4" -- 灵龙叶*4
	tAn2020Boss_Reward[3315758]["RewardStrengthValue"] = {}
	tAn2020Boss_Reward[3315758]["RewardStrengthValue"]["Value"] = 600 -- 气力值, 【需求】600气力值
	tAn2020Boss_Reward[3315758]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315758]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315758]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315759] = {}
	-- ===世界BOSS排名奖
	-- ===索引: tAn2020Boss_Reward[3315759]
	-- ===删除:3315759
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315759]["LogId"] = 12001906
	tAn2020Boss_Reward[3315759]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315759]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315759]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315759]["DeleteItem"][1]["Id"] = 3315759 -- 【库】除魔精英礼盒[属性:9]
	tAn2020Boss_Reward[3315759]["RewardItem"] = {}
	tAn2020Boss_Reward[3315759]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315759]["RewardItem"][1]["Id"] = 3330460 -- 灵龙叶[3330460][属性:11][叠加:10000][金币:0], 【表格】喂养道具小
	tAn2020Boss_Reward[3315759]["RewardItem"][1]["Attr"] = "0 3" -- 灵龙叶*3
	tAn2020Boss_Reward[3315759]["RewardStrengthValue"] = {}
	tAn2020Boss_Reward[3315759]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tAn2020Boss_Reward[3315759]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315759]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315759]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315901] = {}
	-- ===傲天圣龙【绝世版】礼盒
	-- ===索引: tAn2020Boss_Reward[3315901]
	-- ===删除:3315901
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315901]["LogId"] = 12001906
	tAn2020Boss_Reward[3315901]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315901]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315901]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315901]["DeleteItem"][1]["Id"] = 3315901 -- 【库】傲天圣龙【绝世版】礼盒[属性:0]
	tAn2020Boss_Reward[3315901]["RewardItem"] = {}
	tAn2020Boss_Reward[3315901]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315901]["RewardItem"][1]["Id"] = 205003 -- 傲天圣龙【绝世版】[205003][属性:0][叠加:0][金币:0], 【表格】傲天圣龙【绝世版】
	tAn2020Boss_Reward[3315901]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑傲天圣龙【绝世版】*1
	tAn2020Boss_Reward[3315901]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315901]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315901]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315902] = {}
	-- ===锦绣风华礼盒
	-- ===索引: tAn2020Boss_Reward[3315902]
	-- ===删除:3315902
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315902]["LogId"] = 12001906
	tAn2020Boss_Reward[3315902]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315902]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315902]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315902]["DeleteItem"][1]["Id"] = 3315902 -- 【库】锦绣风华礼盒[属性:0]
	tAn2020Boss_Reward[3315902]["RewardItem"] = {}
	tAn2020Boss_Reward[3315902]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315902]["RewardItem"][1]["Id"] = 196215 -- 锦绣风华[196215][属性:0][叠加:0][金币:0], 【表格】锦绣风华
	tAn2020Boss_Reward[3315902]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑锦绣风华*1
	tAn2020Boss_Reward[3315902]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315902]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315902]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315903] = {}
	-- ===锦绣风华·天下礼盒
	-- ===索引: tAn2020Boss_Reward[3315903]
	-- ===删除:3315903
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315903]["LogId"] = 12001906
	tAn2020Boss_Reward[3315903]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315903]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315903]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315903]["DeleteItem"][1]["Id"] = 3315903 -- 【库】锦绣风华·天下礼盒[属性:0]
	tAn2020Boss_Reward[3315903]["RewardItem"] = {}
	tAn2020Boss_Reward[3315903]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315903]["RewardItem"][1]["Id"] = 196225 -- 锦绣风华·天下[196225][属性:0][叠加:0][金币:0], 【表格】锦绣风华·天下
	tAn2020Boss_Reward[3315903]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑锦绣风华·天下*1
	tAn2020Boss_Reward[3315903]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315903]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315903]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315904] = {}
	-- ===周年大吉礼盒前两周
	-- ===索引: tAn2020Boss_Reward[3315904][1]
	-- ===删除:3315904
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315904][1] = {}
	tAn2020Boss_Reward[3315904][1]["LogId"] = 12001906
	tAn2020Boss_Reward[3315904][1]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315904][1]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315904][1]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315904][1]["DeleteItem"][1]["Id"] = 3315904 -- 【库】周年大吉礼盒[属性:8]
	tAn2020Boss_Reward[3315904][1]["RewardItem"] = {}
	tAn2020Boss_Reward[3315904][1]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315904][1]["RewardItem"][1]["Id"] = 3600245 -- 福运火炬[3600245][属性:137][叠加:99][金币:0], 【表格】福运火炬
	tAn2020Boss_Reward[3315904][1]["RewardItem"][1]["Attr"] = "0 5" -- 福运火炬*5
	tAn2020Boss_Reward[3315904][1]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315904][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315904][1]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315904][2] = {}
	-- ===周年大吉礼盒后两周
	-- ===索引: tAn2020Boss_Reward[3315904][2]
	-- ===删除:3315904
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315904][2]["LogId"] = 12001906
	tAn2020Boss_Reward[3315904][2]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315904][2]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315904][2]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315904][2]["DeleteItem"][1]["Id"] = 3315904 -- 【库】周年大吉礼盒[属性:8]
	tAn2020Boss_Reward[3315904][2]["RewardItem"] = {}
	tAn2020Boss_Reward[3315904][2]["RewardItem"][1] = {}
	tAn2020Boss_Reward[3315904][2]["RewardItem"][1]["Id"] = 3600246 -- 魔王挑战令[3600246][属性:523][叠加:10000][金币:0], 【表格】魔王挑战令
	tAn2020Boss_Reward[3315904][2]["RewardItem"][1]["Attr"] = "0 5" -- 魔王挑战令*5
	tAn2020Boss_Reward[3315904][2]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315904][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315904][2]["RewardEffect"]["Effect"] = "angelwing"


	tAn2020Boss_Reward[3315904][3] = {}
	-- ===周年大吉礼盒过期
	-- ===索引: tAn2020Boss_Reward[3315904][3]
	-- ===删除:3315904
	-- ===LogStep: 1[4]
	tAn2020Boss_Reward[3315904][3]["LogId"] = 12001906
	tAn2020Boss_Reward[3315904][3]["LogStep"] = "1[4]"
	tAn2020Boss_Reward[3315904][3]["DeleteItem"] = {}
	tAn2020Boss_Reward[3315904][3]["DeleteItem"][1] = {}
	tAn2020Boss_Reward[3315904][3]["DeleteItem"][1]["Id"] = 3315904 -- 【库】周年大吉礼盒[属性:8]
	tAn2020Boss_Reward[3315904][3]["RewardStrengthValue"] = {}
	tAn2020Boss_Reward[3315904][3]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tAn2020Boss_Reward[3315904][3]["RewardEffect"] = {}
	tAn2020Boss_Reward[3315904][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAn2020Boss_Reward[3315904][3]["RewardEffect"]["Effect"] = "angelwing"
	
-- 邮件发奖
local tAn2020Boss_SendMail = {}
	-- 排行榜数量
	tAn2020Boss_SendMail["RankTotal"] = 10

	tAn2020Boss_SendMail["ExistDay"] = 30 --持续天数
	-- 血夜伯爵 伤害排名奖励
	tAn2020Boss_SendMail[1295] = {}
	tAn2020Boss_SendMail[1295][1] = 576880
	tAn2020Boss_SendMail[1295][2] = 576881
	tAn2020Boss_SendMail[1295][3] = 576881
	tAn2020Boss_SendMail[1295][4] = 576882
	tAn2020Boss_SendMail[1295][5] = 576882
	tAn2020Boss_SendMail[1295][6] = 576882
	tAn2020Boss_SendMail[1295][7] = 576883
	tAn2020Boss_SendMail[1295][8] = 576883
	tAn2020Boss_SendMail[1295][9] = 576883
	tAn2020Boss_SendMail[1295][10] = 576883
	-- 潘神邪灵 伤害排名奖励
	tAn2020Boss_SendMail[1296] = {}
	tAn2020Boss_SendMail[1296][1] = 576880
	tAn2020Boss_SendMail[1296][2] = 576881
	tAn2020Boss_SendMail[1296][3] = 576881
	tAn2020Boss_SendMail[1296][4] = 576882
	tAn2020Boss_SendMail[1296][5] = 576882
	tAn2020Boss_SendMail[1296][6] = 576882
	tAn2020Boss_SendMail[1296][7] = 576883
	tAn2020Boss_SendMail[1296][8] = 576883
	tAn2020Boss_SendMail[1296][9] = 576883
	tAn2020Boss_SendMail[1296][10] = 576883
	-- 法老魔君 伤害排名奖励
	tAn2020Boss_SendMail[1297] = {}
	tAn2020Boss_SendMail[1297][1] = 576880
	tAn2020Boss_SendMail[1297][2] = 576881
	tAn2020Boss_SendMail[1297][3] = 576881
	tAn2020Boss_SendMail[1297][4] = 576882
	tAn2020Boss_SendMail[1297][5] = 576882
	tAn2020Boss_SendMail[1297][6] = 576882
	tAn2020Boss_SendMail[1297][7] = 576883
	tAn2020Boss_SendMail[1297][8] = 576883
	tAn2020Boss_SendMail[1297][9] = 576883
	tAn2020Boss_SendMail[1297][10] = 576883
	-- 僵尸王将臣 伤害排名奖励
	tAn2020Boss_SendMail[1298] = {}
	tAn2020Boss_SendMail[1298][1] = 576880
	tAn2020Boss_SendMail[1298][2] = 576881
	tAn2020Boss_SendMail[1298][3] = 576881
	tAn2020Boss_SendMail[1298][4] = 576882
	tAn2020Boss_SendMail[1298][5] = 576882
	tAn2020Boss_SendMail[1298][6] = 576882
	tAn2020Boss_SendMail[1298][7] = 576883
	tAn2020Boss_SendMail[1298][8] = 576883
	tAn2020Boss_SendMail[1298][9] = 576883
	tAn2020Boss_SendMail[1298][10] = 576883

	tAn2020Boss_SendMail["Join"] = 576879
	
-- boss血量flag
local tAn2020Boss_BossBlood = {}
	tAn2020Boss_BossBlood[1295] = 100
	tAn2020Boss_BossBlood[1296] = 100
	tAn2020Boss_BossBlood[1297] = 100
	tAn2020Boss_BossBlood[1298] = 100
----------------------------------逻辑部分---------------------------------------------
-- 公告链接(前缀屏蔽原因修改
function An2020_Lnk(An2020Boss_nMonsterId,An2020Boss_nUserId)
	local An2020Boss_nUserId = An2020Boss_nUserId or Get_UserId()
	local An2020Boss_nLevel = Get_UserLevel(An2020Boss_nUserId)
	if An2020Boss_nLevel < tAn2020Boss_Data["Level"] then
		return
	end
	local An2020Boss_nMapId
	local An2020Boss_nPosX 
	local An2020Boss_nPosY
	if An2020Boss_nMonsterId == nil or tonumber(An2020Boss_nMonsterId) == 0 then
		if SpecialServer_ChkNoGiftServer() then
			An2020Boss_nMapId = tAn2020Boss_Data["NpcPos"]["NoGift"]["MapId"]
			An2020Boss_nPosX = tAn2020Boss_Data["NpcPos"]["NoGift"]["PosX"]
			An2020Boss_nPosY = tAn2020Boss_Data["NpcPos"]["NoGift"]["PosY"]
		else
			An2020Boss_nMapId = tAn2020Boss_Data["NpcPos"]["Normal"]["MapId"]
			An2020Boss_nPosX = tAn2020Boss_Data["NpcPos"]["Normal"]["PosX"]
			An2020Boss_nPosY = tAn2020Boss_Data["NpcPos"]["Normal"]["PosY"]
		end
	else
		An2020Boss_nMonsterId = tonumber(An2020Boss_nMonsterId)
		An2020Boss_nMapId = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["MapId"]
		An2020Boss_nPosX = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["PosX"]
		An2020Boss_nPosY = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["PosY"]
	end
	User_UserRandBoundTrans(An2020Boss_nMapId,An2020Boss_nPosX,An2020Boss_nPosY,3,3,1,An2020Boss_nUserId)
end

-- 召唤Boss
function An2020Boss_AddMonster()
	if not Sys_ChkFullTime(tAn2020Boss_ActivityTime["ActivityTime"]) then
		return
	end
	if not Sys_ChkDayTime(tAn2020Boss_ActivityTime["DailyTime"]) then
		return
	end
	local An2020Boss_nGlobalId = tAn2020Boss_Data["GlobalId"]
	local An2020Boss_nData0 = Get_SysDynaGlobalData0(An2020Boss_nGlobalId)
	if An2020Boss_nData0 > 0 then
		return
	end
	-- 不同时间召唤不同BOSS
	local nNowHour = os.date("%H")
	nNowHour = math.floor(tonumber(nNowHour))
	local An2020Boss_nMonsterId = tAn2020Boss_Data["HourBoss"][nNowHour]
	local An2020Boss_nMapId = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["MapId"]
	local An2020Boss_nPosX = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["PosX"]
	local An2020Boss_nPosY = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["PosY"]
	local An2020Boss_nGenId = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["GenId"]
	if Monster_AddAndCount(An2020Boss_nMapId,An2020Boss_nPosX,An2020Boss_nPosY,An2020Boss_nGenId,An2020Boss_nMonsterId) then
		An2020Boss_AddMsg(An2020Boss_nMonsterId)
		local An2020Boss_sText = string.format(tAn2020Boss_Text["Broadcast"]["RefreshBoss"][An2020Boss_nMonsterId],An2020Boss_nMonsterId)
		Sys_SetSynaGlobalData0(An2020Boss_nGlobalId,1)
		-- boss数量
		-- local An2020Boss_nGlobalData = Get_SysDynaGlobalData(An2020Boss_nGlobalId,tAn2020Boss_Data["BossGlobalData"][An2020Boss_nMonsterId])+1
		-- Sys_SetSynaGlobalData(An2020Boss_nGlobalId,tAn2020Boss_Data["BossGlobalData"][An2020Boss_nMonsterId],An2020Boss_nGlobalData)
		Sys_SystemBroadcast(An2020Boss_sText)
		Sys_TalkBroadcast(An2020Boss_sText)
	end
end

-- 怪物血量百分比
function An2020Boss_BossPercent(nMonsterType,nLastBloodPercent,nCurrentBloodPercent)
	local An2020Boss_sMonsterName = tAn2020Boss_Text["MonsterName"][nMonsterType]
	local An2020Boss_nBlood = math.ceil(nCurrentBloodPercent/10)*10
	if An2020Boss_nBlood ~= tAn2020Boss_BossBlood[nMonsterType] then
		tAn2020Boss_BossBlood[nMonsterType] = An2020Boss_nBlood
		local An2020Boss_sText = string.format(tAn2020Boss_Text["Broadcast"]["Blood"][An2020Boss_nBlood],An2020Boss_sMonsterName,nMonsterType)
		Sys_SystemBroadcast(An2020Boss_sText)
	end
end

-- 击杀怪物
function An2020Boss_KillMonster(An2020Boss_nMonsterId)
	local An2020Boss_nIndex = tAn2020Boss_Data["BossGlobalData"][An2020Boss_nMonsterId]
	Fireworks2020_LightMoveNPC(An2020Boss_nIndex)
	local An2020Boss_sMonsterName = tAn2020Boss_Text["MonsterName"][An2020Boss_nMonsterId]
	local An2020Boss_sUserName = Get_UserName()
	local An2020Boss_sText = string.format(tAn2020Boss_Text["Broadcast"]["BossDeath"],An2020Boss_sUserName,An2020Boss_sMonsterName)
	local An2020Boss_nGlobalId = 54370
	if Get_SysDynaGlobalData(An2020Boss_nGlobalId,tAn2020Boss_Data["BossGlobalData"][An2020Boss_nMonsterId]) == 0 then
		An2020Boss_sText = string.format(tAn2020Boss_Text["Broadcast"]["BossFirstDeath"],An2020Boss_sUserName,An2020Boss_sMonsterName)
		An2020Boss_MapKillBossMsg(An2020Boss_nMonsterId)
	end
	AnniversaryBossInstance_Open(An2020Boss_nIndex)
	An2020Boss_nGlobalId = tAn2020Boss_Data["GlobalId"]
	-- boss数量
	-- local An2020Boss_nGlobalData = Get_SysDynaGlobalData(An2020Boss_nGlobalId,tAn2020Boss_Data["BossGlobalData"][An2020Boss_nMonsterId])-1
	-- Sys_SetSynaGlobalData(An2020Boss_nGlobalId,tAn2020Boss_Data["BossGlobalData"][An2020Boss_nMonsterId],An2020Boss_nGlobalData)
	Sys_SystemBroadcast(An2020Boss_sText)
	Sys_TalkBroadcast(An2020Boss_sText)
	Sys_TalkBroadcast(An2020Boss_sText)
	Monster_Death(An2020Boss_nMonsterId,tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["MapId"])
end

-- 伤害排行榜
function An2020Boss_BossDamgRank(nServerId,nUserId,nRank,nDmg,An2020Boss_nMonsterId)
	-- if not Sys_ChkFullTime(tAn2020Boss_ActivityTime["ActivityTime"]) then
		-- return
	-- end
	local nRankTotal = tAn2020Boss_SendMail["RankTotal"]
	for nNum = 1, nRankTotal do
		if nNum == nRank then
			local An2020Boss_nActionId = tAn2020Boss_SendMail[An2020Boss_nMonsterId][nRank]
			local An2020Boss_nExistDay = tAn2020Boss_SendMail["ExistDay"]
			local An2020Boss_sSender = tAn2020Boss_Text["Hurt"]["Sender"]
			local An2020Boss_sTitle = tAn2020Boss_Text["Hurt"]["Title"]
			local An2020Boss_sContent = tAn2020Boss_Text["Hurt"]["Content"][nRank]
			Sys_SendMail(nUserId,0,0,An2020Boss_nActionId,0,An2020Boss_nExistDay,An2020Boss_sSender,An2020Boss_sTitle,An2020Boss_sContent,nServerId)
		end
	end
end

-- 参与击杀
function An2020Boss_KillBossJoin(nServerId,nUserId,nRank,nDmg,An2020Boss_nMonsterId)
	-- if not Sys_ChkFullTime(tAn2020Boss_ActivityTime["ActivityTime"]) then
		-- return
	-- end
	if PublicBOSS_AddTempLimit(nUserId) then
		local An2020Boss_nActionId = tAn2020Boss_SendMail["Join"]
		local An2020Boss_nExistDay = tAn2020Boss_SendMail["ExistDay"]
		local An2020Boss_sSender = tAn2020Boss_Text["Join"]["Sender"]
		local An2020Boss_sTitle = tAn2020Boss_Text["Join"]["Title"]
		local An2020Boss_sContent = tAn2020Boss_Text["Join"]["Content"]
		Sys_SendMail(nUserId,0,0,An2020Boss_nActionId,0,An2020Boss_nExistDay,An2020Boss_sSender,An2020Boss_sTitle,An2020Boss_sContent,nServerId)
	end
end

-- 副本开启时的105
function An2020Boss_MapKillBossMsg(An2020Boss_nMonsterId)
	local An2020Boss_sFuncName = "An2020Boss_KillBossMsg</N>"..An2020Boss_nMonsterId
	Map_UserExeFunc(1002, -1, An2020Boss_sFuncName)
	Map_UserExeFunc(10807, -1, An2020Boss_sFuncName)
end

-- 副本开启时的105
function An2020Boss_KillBossMsg(An2020Boss_nMonsterId,An2020Boss_nUserId)
	local An2020Boss_nLevel = Get_UserLevel(An2020Boss_nUserId)
	if An2020Boss_nLevel < tAn2020Boss_Data["Level"] then
		return
	end
	Sys_MsgBox(tAn2020Boss_Text["Msg"]["KillBoss"][An2020Boss_nMonsterId],nil,nil,An2020Boss_nUserId)
end

-- 召唤Boss时的105
function An2020Boss_AddMsg(An2020Boss_nMonsterId)
	local An2020Boss_sFuncName = "An2020Boss_MsgEnterMap</N>"..An2020Boss_nMonsterId
	Map_UserExeFunc(1002, -1, An2020Boss_sFuncName)
	Map_UserExeFunc(10807, -1, An2020Boss_sFuncName)
end

function An2020Boss_MsgEnterMap(An2020Boss_nMonsterId,An2020Boss_nUserId)
	local An2020Boss_nLevel = Get_UserLevel(An2020Boss_nUserId)
	if An2020Boss_nLevel < tAn2020Boss_Data["Level"] then
		return
	end
	local An2020Boss_sFuncName = "An2020_Lnk</N>"..An2020Boss_nMonsterId
	local An2020Boss_sText = tAn2020Boss_Text["Msg"]["RefreshBoss"][An2020Boss_nMonsterId]
	Sys_MsgBox(An2020Boss_sText,An2020Boss_sFuncName,nil,An2020Boss_nUserId)
end
----------------------------------NPC部分---------------------------------------------
tNpcGossip[26223]= tNpcGossip[26223] or DefaultNpc:new{}
tNpcGossip[26223]["OptionHidden"] = 1
tNpcGossip[26223]["DialogueText"] = tAn2020Boss_Text[26223]
tNpcGossip[26223]["Text1-1"] = {111,112,113,114,115,116,117,112}
tNpcGossip[26223]["tOption1-1"] = {111,112,113,114,115}
tNpcGossip[26223]["ChkFunc1-1"] = function ()
	for i = 114,117 do
		-- if Get_SysDynaGlobalData(tAn2020Boss_Data["GlobalId"],i-113) == 0 then
		local An2020Boss_nMonsterId = 1295+i-114
		local An2020Boss_nMapId = tAn2020Boss_Data["BossPos"][An2020Boss_nMonsterId]["MapId"]
		if Get_SysTempData(1,An2020Boss_nMapId,An2020Boss_nMonsterId) == 0 then
			local An2020Boss_nNowHour = math.floor(os.date("%H"))
			if An2020Boss_nNowHour == 23 or An2020Boss_nNowHour == 22 then
				An2020Boss_nNowHour = 0
			end
			An2020Boss_nNowHour = math.floor(An2020Boss_nNowHour/2)*2
			tNpcGossip[26223]["Text"..i] = string.format(tAn2020Boss_Text[26223]["Text"..i],An2020Boss_nNowHour+2)
			-- end
			if Get_SysDynaGlobalData(tAn2020Boss_Data["GlobalId"],0) == 1 and An2020Boss_nMonsterId == tAn2020Boss_Data["HourBoss"][An2020Boss_nNowHour] then
				tNpcGossip[26223]["Text"..i] = tAn2020Boss_Text[26223]["Text"..i+20]
			end
		else
			tNpcGossip[26223]["Text"..i] = tAn2020Boss_Text[26223]["Text"..i+10]
		end
	end
	return true
end
tNpcGossip[26223]["OptionFunc111"] = "An2020_Lnk</N>1295"
tNpcGossip[26223]["OptionFunc112"] = "An2020_Lnk</N>1296"
tNpcGossip[26223]["OptionFunc113"] = "An2020_Lnk</N>1297"
tNpcGossip[26223]["OptionFunc114"] = "An2020_Lnk</N>1298"
tNpcGossip[26223]["OptionChkFunc111"] = function ()
	return Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1295]["MapId"],1295) ~= 0
end
tNpcGossip[26223]["OptionChkFunc112"] = function ()
	return Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1296]["MapId"],1296) ~= 0
end
tNpcGossip[26223]["OptionChkFunc113"] = function ()
	return Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1297]["MapId"],1297) ~= 0
end
tNpcGossip[26223]["OptionChkFunc114"] = function ()
	return Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1298]["MapId"],1298) ~= 0
end
tNpcGossip[26223]["OptionChkFunc115"] = function ()
	return Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1295]["MapId"],1295) == 0 and Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1296]["MapId"],1296) == 0 and Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1297]["MapId"],1297) == 0 and Get_SysTempData(1,tAn2020Boss_Data["BossPos"][1298]["MapId"],1298) == 0
end

-- 宝贝狐
tNpcGossip[26252]= tNpcGossip[26252] or DefaultNpc:new{}
tNpcGossip[26252]["OptionHidden"] = 1
tNpcGossip[26252]["DialogueText"] = tAn2020Boss_Text[26252]
tNpcGossip[26252]["Text1-1"] = {111,112}
tNpcGossip[26252]["tOption1-1"] = {111}
tNpcGossip[26252]["ChkFunc1-1"] = function ()
	return not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"])
end
tNpcGossip[26252]["Text1-2"] = {121,122,123,124}
tNpcGossip[26252]["tOption1-2"] = {121,122}
tNpcGossip[26252]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"])
end
tNpcGossip[26252]["OptionFunc121"] = "User_OpenDialog</N>0</N>26252"
tNpcGossip[26252]["OptionFunc122"] = "LinkNpcGossipFunc_New</N>21856</S>1-4"
---------------------------------物品部分---------------------------------------------
tItem[3315755] = tItem[3315755] or {}
tItem[3315755]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tAn2020Boss_Reward,nItemId)
end
tItem[3315756] = tItem[3315756] or {}
tItem[3315756]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAn2020Boss_Reward[nItemId])
end
tItem[3315757] = tItem[3315756]
tItem[3315758] = tItem[3315756]
tItem[3315759] = tItem[3315756]
tItem[3315901] = tItem[3315756]
tItem[3315902] = tItem[3315756]
tItem[3315903] = tItem[3315756]
tItem[3315904] = tItem[3315904] or {}
tItem[3315904]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		RewardTemplate_UseItemAndMsg(tAn2020Boss_Reward[nItemId][1])
	elseif Sys_ChkFullTime(tActivityTime["Anniversary2020"]["BossTime"]) then
		RewardTemplate_UseItemAndMsg(tAn2020Boss_Reward[nItemId][2])
	else
		RewardTemplate_UseItemAndMsg(tAn2020Boss_Reward[nItemId][3])
	end
end
---------------------------------怪物部分---------------------------------------------
local tAn2020Boss_KillMonster = {}
tAn2020Boss_KillMonster["Function"]= An2020Boss_KillMonster
tAn2020Boss_KillMonster["MonsterId"] = {1295,1296,1297,1298}
table.insert(tMonsterDrop_AreaLoad,tAn2020Boss_KillMonster)
--------------------------------------------伤害排行榜--------------------------------------------
-- 排行榜
-- 血夜伯爵
tBossDamageBonus[1295] = tBossDamageBonus[1295] or {}
tBossDamageBonus[1295]["tFunction"] = tBossDamageBonus[1295]["tFunction"] or {}
table.insert(tBossDamageBonus[1295]["tFunction"],An2020Boss_BossDamgRank)
-- 潘神邪灵
tBossDamageBonus[1296] = tBossDamageBonus[1296] or {}
tBossDamageBonus[1296]["tFunction"] = tBossDamageBonus[1296]["tFunction"] or {}
table.insert(tBossDamageBonus[1296]["tFunction"],An2020Boss_BossDamgRank)
-- 法老魔君
tBossDamageBonus[1297] = tBossDamageBonus[1297] or {}
tBossDamageBonus[1297]["tFunction"] = tBossDamageBonus[1297]["tFunction"] or {}
table.insert(tBossDamageBonus[1297]["tFunction"],An2020Boss_BossDamgRank)
-- 僵尸王将臣
tBossDamageBonus[1298] = tBossDamageBonus[1298] or {}
tBossDamageBonus[1298]["tFunction"] = tBossDamageBonus[1298]["tFunction"] or {}
table.insert(tBossDamageBonus[1298]["tFunction"],An2020Boss_BossDamgRank)

-- 伤害
-- 血夜伯爵
tBossRewardEnd[1295] = tBossRewardEnd[1295] or {}
tBossRewardEnd[1295]["tFunction"] = tBossRewardEnd[1295]["tFunction"] or {}
table.insert(tBossRewardEnd[1295]["tFunction"],An2020Boss_KillBossJoin)
-- 潘神邪灵
tBossRewardEnd[1296] = tBossRewardEnd[1296] or {}
tBossRewardEnd[1296]["tFunction"] = tBossRewardEnd[1296]["tFunction"] or {}
table.insert(tBossRewardEnd[1296]["tFunction"],An2020Boss_KillBossJoin)
-- 法老魔君
tBossRewardEnd[1297] = tBossRewardEnd[1297] or {}
tBossRewardEnd[1297]["tFunction"] = tBossRewardEnd[1297]["tFunction"] or {}
table.insert(tBossRewardEnd[1297]["tFunction"],An2020Boss_KillBossJoin)
-- 僵尸王将臣
tBossRewardEnd[1298] = tBossRewardEnd[1298] or {}
tBossRewardEnd[1298]["tFunction"] = tBossRewardEnd[1298]["tFunction"] or {}
table.insert(tBossRewardEnd[1298]["tFunction"],An2020Boss_KillBossJoin)


-- boss血量
for i = 1295,1298 do
	tBloodTriggerLua[i] = tBloodTriggerLua[i] or {}
	tBloodTriggerLua[i]["tFunction"] = tBloodTriggerLua[i]["tFunction"] or {}
	table.insert(tBloodTriggerLua[i]["tFunction"],An2020Boss_BossPercent)
end
---------------------------------时间自检---------------------------------------------
-- 整点刷新BOSS
local tAn2020Boss_RefreshBoss = {}
	tAn2020Boss_RefreshBoss[1] = {}
	tAn2020Boss_RefreshBoss[1]["ActivityTime"] = tAn2020Boss_ActivityTime["ActivityTime"]
	tAn2020Boss_RefreshBoss[1]["Type"] = 2
	tAn2020Boss_RefreshBoss[1]["TimeType"] = 5  --每小时
	tAn2020Boss_RefreshBoss[1]["Multiple"] = {}
	tAn2020Boss_RefreshBoss[1]["Multiple"][1]  = "00 00"
	tAn2020Boss_RefreshBoss[1]["Func"] = An2020Boss_AddMonster
	
table.insert(tSystemTime_InitialData,tAn2020Boss_RefreshBoss[1])
------------------ 动态存储表清零------------------
tGlobalData_Info[54371] = {}
tGlobalData_Info[54371]["Time"] = {}
tGlobalData_Info[54371]["Time"]["ClearTime"] = {}
tGlobalData_Info[54371]["Time"]["ClearTime"][1] = "01:57 01:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][2] = "03:57 03:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][3] = "05:57 05:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][4] = "07:57 07:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][5] = "09:57 09:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][6] = "11:57 11:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][7] = "13:57 13:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][8] = "15:57 15:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][9] = "17:57 17:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][10] = "19:57 19:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][11] = "21:57 21:59"
tGlobalData_Info[54371]["Time"]["ClearTime"][12] = "23:57 23:59"
tGlobalData_Info[54371]["Rest"] = {}
tGlobalData_Info[54371]["Rest"]["GlobalId"] = {54371}
tGlobalData_Info[54371]["Rest"]["Pos"] = {0}