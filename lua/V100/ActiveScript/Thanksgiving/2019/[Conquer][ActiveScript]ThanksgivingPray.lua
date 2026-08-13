------------------------------------------------------------------------------------
--Name：     191026[简体征服][活动脚本]全球感恩节活动-跨服祈福
--Creator:      郑洵
--Created:     2019/10/26
------------------------------------------------------------------------------------

--命名前缀
--ThanksgivingPray_

--logid:12001707
--41593 = V100\ActiveScript\Thanksgiving\2019\[Conquer][ActiveScript]ThanksgivingPray.lua
--41593 = V100\活动脚本\感恩节\2019\[征服][活动脚本]全球感恩节活动-跨服祈福.lua

-- stc掩码：209 36 用于隔天判断

-- task_detail	35060
	-- Data1	记录玩家领取中文祈福礼包
	-- Data2	记录玩家领取英文祈福礼包
	-- Data3	记录玩家领取西语祈福礼包
	-- Data4	记录玩家领取阿语祈福礼包

-- task_detail	35061
	-- Data1	记录玩家进入祈福状态
	-- Data2	记录国家 1 中文	2英文	3西语	4阿语
	-- Data3	记录玩家今日是否进入跨服地图
	-- Data4	记录本服用户ID
	-- Data5	记录玩家今日祈福次数
	-- Data6	记录玩家今日是否进入盛宴厅地图

--动态全局表说明
--ID: 53861		Data0位:	标识玩家来自中文
--				Data1位:	记录中文今日感恩节祈福值
--				Data2位:	记录中文昨天感恩节祈福值

--ID: 53862		Data0位:	标识玩家来自英文
--				Data1位:	记录英文今日感恩节祈福值
--				Data2位:	记录英文昨天感恩节祈福值

--ID: 53863		Data0位:	标识玩家来自西语
--				Data1位:	记录西语今日感恩节祈福值
--				Data2位:	记录西语昨天感恩节祈福值

--ID: 53864		Data0位:	标识玩家来自阿语
--				Data1位:	记录阿语今日感恩节祈福值
--				Data2位:	记录阿语昨天感恩节祈福值


---------------------------------------------常量表---------------------------------------------
local tThanksgivingPray_Cont = {}
	--等级限制
	tThanksgivingPray_Cont["Level"] = 80
	tThanksgivingPray_Cont["Metempsychosis"] = 0
	--主任务TaskId
	tThanksgivingPray_Cont["TaskId"] = 35061
	--语种奖励TaskId
	tThanksgivingPray_Cont["RewardTaskId"] = 35060
	--任务面板TaskId
	tThanksgivingPray_Cont["MainTaskId"] = 4291
	--跨国感恩大使
	tThanksgivingPray_Cont["ChgMapNPCId"] = 25577
	--宴会NPC
	tThanksgivingPray_Cont["YanHuiNPCId"] = 25042
	--小精灵
	tThanksgivingPray_Cont["MainNPC"] = {}
	tThanksgivingPray_Cont["MainNPC"][1] = 25578
	tThanksgivingPray_Cont["MainNPC"][2] = 25579
	tThanksgivingPray_Cont["MainNPC"][3] = 25580
	tThanksgivingPray_Cont["MainNPC"][4] = 25581
	--感恩祈福礼包
	tThanksgivingPray_Cont["PrayGift"] = 3314390
	--跨国地图ID
	tThanksgivingPray_Cont["GlobalMapId"] = 10702
	--读条祈福
	tThanksgivingPray_Cont["Secs"] = 3
	tThanksgivingPray_Cont["ActionId"] = 100
	--接任务光效
	tThanksgivingPray_Cont["TaskEffect"] = "zf2-e128"
	--祈福光效
	tThanksgivingPray_Cont["PrayEffect"] = {}
	tThanksgivingPray_Cont["PrayEffect"][1] = "changefig-1"
	tThanksgivingPray_Cont["PrayEffect"][2] = "attackup1"
	tThanksgivingPray_Cont["PrayEffect"][3] = "task156"
	--祈福结束光效
	tThanksgivingPray_Cont["PrayEndEffect"] = "accession"
	--祈福倒计时
	tThanksgivingPray_Cont["SetTimer"] = 180
	--每日祈福礼包物品ID
	tThanksgivingPray_Cont["PrayDayRewardId"] =  3314391
	--感恩祈福礼包
	tThanksgivingPray_Cont["PayrFive"] = 575094
	--每日祈福礼包
	tThanksgivingPray_Cont["PrayDayReward"] = {}
	tThanksgivingPray_Cont["PrayDayReward"][1] = 575095
	tThanksgivingPray_Cont["PrayDayReward"][2] = 575096
	tThanksgivingPray_Cont["PrayDayReward"][3] = 575097
	tThanksgivingPray_Cont["PrayDayReward"][4] = 575098
	tThanksgivingPray_Cont["PrayDayReward"][5] = 575099
	--每日祈福阶段
	tThanksgivingPray_Cont["Score"] = {}
	tThanksgivingPray_Cont["Score"][1] = 10
	tThanksgivingPray_Cont["Score"][2] = 50
	tThanksgivingPray_Cont["Score"][3] = 100
	tThanksgivingPray_Cont["Score"][4] = 150
	tThanksgivingPray_Cont["Score"][5] = 200
	--NPC索引
	tThanksgivingPray_Cont["Languages"] = {}
	tThanksgivingPray_Cont["Languages"][25578] = 1
	tThanksgivingPray_Cont["Languages"][25579] = 2
	tThanksgivingPray_Cont["Languages"][25580] = 3
	tThanksgivingPray_Cont["Languages"][25581] = 4
	--全局表索引
	tThanksgivingPray_Cont["Global"] = {}
	tThanksgivingPray_Cont["Global"][53861] = 1
	tThanksgivingPray_Cont["Global"][53862] = 2
	tThanksgivingPray_Cont["Global"][53863] = 3
	tThanksgivingPray_Cont["Global"][53864] = 4

--各语种对应全局表
local tThanksgivingPray_Global = {}
	tThanksgivingPray_Global[1] = 53861--中
	tThanksgivingPray_Global[2] = 53862--英
	tThanksgivingPray_Global[3] = 53863--西
	tThanksgivingPray_Global[4] = 53864--阿

local tThanksgivingPray_Log = {}
	-- 删除物品LOG
	tThanksgivingPray_Log["Del"] = "0,0,%d,%d,12001707,2,0,0"
	-- 进入跨服LOG
	tThanksgivingPray_Log["GoGlobal"] = "0,0,0,0,12001707,3[1],0,0"
	-- 开始祈福LOG
	tThanksgivingPray_Log["Pray"] = "0,0,0,0,12001707,1[1],0,0"
	-- 每5分钟祈福奖励LOG
	tThanksgivingPray_Log["PrayFive"] = "0,0,0,0,12001707,2[6],3314390,1"
	-- 领取各阶段祈福奖励LOG
	tThanksgivingPray_Log["Level"] = {}
	tThanksgivingPray_Log["Level"][1] = "0,0,0,0,12001707,2[1][%d],3314391,1"
	tThanksgivingPray_Log["Level"][2] = "0,0,0,0,12001707,2[2][%d],3314391,1"
	tThanksgivingPray_Log["Level"][3] = "0,0,0,0,12001707,2[3][%d],3314391,1"
	tThanksgivingPray_Log["Level"][4] = "0,0,0,0,12001707,2[4][%d],3314391,2"
	tThanksgivingPray_Log["Level"][5] = "0,0,0,0,12001707,2[5][%d],3314391,3"

-- 光效
local tThanksgivingPray_Effect = {}
	tThanksgivingPray_Effect[0] = "yanhuijishu0"
	tThanksgivingPray_Effect[1] = "yanhuijishu1"
	tThanksgivingPray_Effect[2] = "yanhuijishu2"
	tThanksgivingPray_Effect[3] = "yanhuijishu3"
	tThanksgivingPray_Effect[4] = "yanhuijishu4"
	tThanksgivingPray_Effect[5] = "yanhuijishu5"
	tThanksgivingPray_Effect[6] = "yanhuijishu6"
	tThanksgivingPray_Effect[7] = "yanhuijishu7"
	tThanksgivingPray_Effect[8] = "yanhuijishu8"
	tThanksgivingPray_Effect[9] = "yanhuijishu9"
	tThanksgivingPray_Effect["yhrsjs"] = "yhrsjs"
	tThanksgivingPray_Effect["yhzbz"] = "yhzbz"
	tThanksgivingPray_Effect["yhrsjs_y"] = "yhrsjs_y"
	tThanksgivingPray_Effect["yhzbz_y"] = "yhzbz_y"
	tThanksgivingPray_Effect["getAward"] = "zf2-e128"


--地图配置
local tThanksgivingPray_Map= {}
	--返回双龙城
	tThanksgivingPray_Map["City"] = {}
	tThanksgivingPray_Map["City"]["MapId"]= 1002
	tThanksgivingPray_Map["City"]["PosX"]= 379
	tThanksgivingPray_Map["City"]["PosY"]= 449
	--返回双龙城（激情服）
	tThanksgivingPray_Map["NoGiftCity"] = {}
	tThanksgivingPray_Map["NoGiftCity"]["MapId"]= 1036
	tThanksgivingPray_Map["NoGiftCity"]["PosX"]= 252
	tThanksgivingPray_Map["NoGiftCity"]["PosY"]= 244
	-- 地效坐标
	tThanksgivingPray_Map[25578] = {}
	tThanksgivingPray_Map[25578]["PosX"]= 120
	tThanksgivingPray_Map[25578]["PosY"]= 76
	tThanksgivingPray_Map[25579] = {}
	tThanksgivingPray_Map[25579]["PosX"]= 130
	tThanksgivingPray_Map[25579]["PosY"]= 76
	tThanksgivingPray_Map[25580] = {}
	tThanksgivingPray_Map[25580]["PosX"]= 142
	tThanksgivingPray_Map[25580]["PosY"]= 88
	tThanksgivingPray_Map[25581] = {}
	tThanksgivingPray_Map[25581]["PosX"]= 114
	tThanksgivingPray_Map[25581]["PosY"]= 87


--祈福时间
local tThanksgivingPray_Time = {}
	tThanksgivingPray_Time["PrayTime"] = {}
	tThanksgivingPray_Time["PrayTime"][1] = "00:00 00:30"
	tThanksgivingPray_Time["PrayTime"][2] = "01:00 01:30"
	tThanksgivingPray_Time["PrayTime"][3] = "02:00 02:30"
	tThanksgivingPray_Time["PrayTime"][4] = "03:00 03:30"
	tThanksgivingPray_Time["PrayTime"][5] = "04:00 04:30"
	tThanksgivingPray_Time["PrayTime"][6] = "05:00 05:30"
	tThanksgivingPray_Time["PrayTime"][7] = "06:00 06:30"
	tThanksgivingPray_Time["PrayTime"][8] = "07:00 07:30"
	tThanksgivingPray_Time["PrayTime"][9] = "08:00 08:30"
	tThanksgivingPray_Time["PrayTime"][10] = "09:00 09:30"
	tThanksgivingPray_Time["PrayTime"][11] = "10:00 10:30"
	tThanksgivingPray_Time["PrayTime"][12] = "11:00 11:30"
	tThanksgivingPray_Time["PrayTime"][13] = "12:00 12:30"
	tThanksgivingPray_Time["PrayTime"][14] = "13:00 13:30"
	tThanksgivingPray_Time["PrayTime"][15] = "14:00 14:30"
	tThanksgivingPray_Time["PrayTime"][16] = "15:00 15:30"
	tThanksgivingPray_Time["PrayTime"][17] = "16:00 16:30"
	tThanksgivingPray_Time["PrayTime"][18] = "17:00 17:30"
	tThanksgivingPray_Time["PrayTime"][19] = "18:00 18:30"
	tThanksgivingPray_Time["PrayTime"][20] = "19:00 19:30"
	tThanksgivingPray_Time["PrayTime"][21] = "20:00 20:30"
	tThanksgivingPray_Time["PrayTime"][22] = "21:00 21:30"
	tThanksgivingPray_Time["PrayTime"][23] = "22:00 22:30"
	tThanksgivingPray_Time["PrayTime"][24] = "23:00 23:30"
	tThanksgivingPray_Time["NotPrayTime"] = {}
	tThanksgivingPray_Time["NotPrayTime"][1] = "00:31 00:59"
	tThanksgivingPray_Time["NotPrayTime"][2] = "01:31 01:59"
	tThanksgivingPray_Time["NotPrayTime"][3] = "02:31 02:59"
	tThanksgivingPray_Time["NotPrayTime"][4] = "03:31 03:59"
	tThanksgivingPray_Time["NotPrayTime"][5] = "04:31 04:59"
	tThanksgivingPray_Time["NotPrayTime"][6] = "05:31 05:59"
	tThanksgivingPray_Time["NotPrayTime"][7] = "06:31 06:59"
	tThanksgivingPray_Time["NotPrayTime"][8] = "07:31 07:59"
	tThanksgivingPray_Time["NotPrayTime"][9] = "08:31 08:59"
	tThanksgivingPray_Time["NotPrayTime"][10] = "09:31 09:59"
	tThanksgivingPray_Time["NotPrayTime"][11] = "10:31 10:59"
	tThanksgivingPray_Time["NotPrayTime"][12] = "11:31 11:59"
	tThanksgivingPray_Time["NotPrayTime"][13] = "12:31 12:59"
	tThanksgivingPray_Time["NotPrayTime"][14] = "13:31 13:59"
	tThanksgivingPray_Time["NotPrayTime"][15] = "14:31 14:59"
	tThanksgivingPray_Time["NotPrayTime"][16] = "15:31 15:59"
	tThanksgivingPray_Time["NotPrayTime"][17] = "16:31 16:59"
	tThanksgivingPray_Time["NotPrayTime"][18] = "17:31 17:59"
	tThanksgivingPray_Time["NotPrayTime"][19] = "18:31 18:59"
	tThanksgivingPray_Time["NotPrayTime"][20] = "19:31 19:59"
	tThanksgivingPray_Time["NotPrayTime"][21] = "20:31 20:59"
	tThanksgivingPray_Time["NotPrayTime"][22] = "21:31 21:59"
	tThanksgivingPray_Time["NotPrayTime"][23] = "22:31 22:59"
	tThanksgivingPray_Time["NotPrayTime"][24] = "23:31 23:59"

	--隔天清零掩码
local tThanksgivingPray_Stc = {}
	tThanksgivingPray_Stc[101] = {}
	tThanksgivingPray_Stc[101]["EventType"] = 209
	tThanksgivingPray_Stc[101]["DataType"] = 36

--奖励模板
local tThanksgivingPray_Reward = {}
	-- ===5分钟祈福奖励礼包
	-- ===索引:tThanksgivingPray_Reward[3314390]
	-- ===删除: 3314390,1
	tThanksgivingPray_Reward[3314390] = {}
	tThanksgivingPray_Reward[3314390]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tThanksgivingPray_Reward[3314390]["DeleteItem"] = {}
	tThanksgivingPray_Reward[3314390]["DeleteItem"][1] = {}
	tThanksgivingPray_Reward[3314390]["DeleteItem"][1]["Id"] = 3314390 -- 【库】感恩祈福礼包[属性:9]
	tThanksgivingPray_Reward[3314390]["LogId"] = 12001707
	-- 赤炼石+3 - 30%
	tThanksgivingPray_Reward[3314390][1] = {}
	tThanksgivingPray_Reward[3314390][1]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314390][1]["ItemChance"] = 3000
	tThanksgivingPray_Reward[3314390][1]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314390][1]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314390][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tThanksgivingPray_Reward[3314390][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tThanksgivingPray_Reward[3314390][1]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tThanksgivingPray_Reward[3314390][2] = {}
	tThanksgivingPray_Reward[3314390][2]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314390][2]["ItemChance"] = 2500
	tThanksgivingPray_Reward[3314390][2]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314390][2]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314390][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tThanksgivingPray_Reward[3314390][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tThanksgivingPray_Reward[3314390][2]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tThanksgivingPray_Reward[3314390][3] = {}
	tThanksgivingPray_Reward[3314390][3]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314390][3]["ItemChance"] = 2500
	tThanksgivingPray_Reward[3314390][3]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314390][3]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314390][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tThanksgivingPray_Reward[3314390][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tThanksgivingPray_Reward[3314390][3]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tThanksgivingPray_Reward[3314390][4] = {}
	tThanksgivingPray_Reward[3314390][4]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314390][4]["ItemChance"] = 2000
	tThanksgivingPray_Reward[3314390][4]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314390][4]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314390][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tThanksgivingPray_Reward[3314390][4]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tThanksgivingPray_Reward[3314390][4]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5-- 【自身概率】 - 1%
	tThanksgivingPray_Reward[3314390][5] = {}
	tThanksgivingPray_Reward[3314390][5]["RandomItemChanceType"] = 3
	tThanksgivingPray_Reward[3314390][5]["ItemSelfChanceSum"] = 10000
	tThanksgivingPray_Reward[3314390][5]["ItemChance"] = 100
	tThanksgivingPray_Reward[3314390][5]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314390][5]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314390][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tThanksgivingPray_Reward[3314390][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +5赤炼石（赠）*1
	tThanksgivingPray_Reward[3314390][5]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][5]["RewardEffect"]["Effect"] = "angelwing"
	tThanksgivingPray_Reward[3314390][5]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tThanksgivingPray_Reward[3314390][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石-- 【自身概率】 - 1%
	tThanksgivingPray_Reward[3314390][6] = {}
	tThanksgivingPray_Reward[3314390][6]["RandomItemChanceType"] = 3
	tThanksgivingPray_Reward[3314390][6]["ItemSelfChanceSum"] = 10000
	tThanksgivingPray_Reward[3314390][6]["ItemChance"] = 100
	tThanksgivingPray_Reward[3314390][6]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314390][6]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314390][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tThanksgivingPray_Reward[3314390][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tThanksgivingPray_Reward[3314390][6]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][6]["RewardEffect"]["Effect"] = "angelwing"
	tThanksgivingPray_Reward[3314390][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tThanksgivingPray_Reward[3314390][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值-- 【自身概率】 - 3%
	tThanksgivingPray_Reward[3314390][7] = {}
	tThanksgivingPray_Reward[3314390][7]["RandomItemChanceType"] = 3
	tThanksgivingPray_Reward[3314390][7]["ItemSelfChanceSum"] = 10000
	tThanksgivingPray_Reward[3314390][7]["ItemChance"] = 300
	tThanksgivingPray_Reward[3314390][7]["RewardStrengthValue"] = {}
	tThanksgivingPray_Reward[3314390][7]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tThanksgivingPray_Reward[3314390][7]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314390][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314390][7]["RewardEffect"]["Effect"] = "angelwing"
	tThanksgivingPray_Reward[3314390][7]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tThanksgivingPray_Reward[3314390][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】


	tThanksgivingPray_Reward[3314391] = {}
	-- ===全球祈福礼包
	-- ===索引:tThanksgivingPray_Reward[3314391]
	-- ===删除: 3314391,1
	tThanksgivingPray_Reward[3314391]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tThanksgivingPray_Reward[3314391]["DeleteItem"] = {}
	tThanksgivingPray_Reward[3314391]["DeleteItem"][1] = {}
	tThanksgivingPray_Reward[3314391]["DeleteItem"][1]["Id"] = 3314391 -- 【库】侠士祈福礼包[属性:9]
	tThanksgivingPray_Reward[3314391]["LogId"] = 12001707
	-- 赤炼石+3 - 30%
	tThanksgivingPray_Reward[3314391][1] = {}
	tThanksgivingPray_Reward[3314391][1]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314391][1]["ItemChance"] = 3000
	tThanksgivingPray_Reward[3314391][1]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314391][1]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314391][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tThanksgivingPray_Reward[3314391][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tThanksgivingPray_Reward[3314391][1]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314391][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314391][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tThanksgivingPray_Reward[3314391][2] = {}
	tThanksgivingPray_Reward[3314391][2]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314391][2]["ItemChance"] = 2500
	tThanksgivingPray_Reward[3314391][2]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314391][2]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314391][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tThanksgivingPray_Reward[3314391][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tThanksgivingPray_Reward[3314391][2]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314391][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314391][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tThanksgivingPray_Reward[3314391][3] = {}
	tThanksgivingPray_Reward[3314391][3]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314391][3]["ItemChance"] = 2500
	tThanksgivingPray_Reward[3314391][3]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314391][3]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314391][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tThanksgivingPray_Reward[3314391][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tThanksgivingPray_Reward[3314391][3]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314391][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314391][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 500气力值 - 20%
	tThanksgivingPray_Reward[3314391][4] = {}
	tThanksgivingPray_Reward[3314391][4]["RandomItemChanceType"] = 2
	tThanksgivingPray_Reward[3314391][4]["ItemChance"] = 2000
	tThanksgivingPray_Reward[3314391][4]["RewardStrengthValue"] = {}
	tThanksgivingPray_Reward[3314391][4]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tThanksgivingPray_Reward[3314391][4]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314391][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314391][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1天感恩节光效武器外套-- 【自身概率】 - 20%
	tThanksgivingPray_Reward[3314391][5] = {}
	tThanksgivingPray_Reward[3314391][5]["RandomItemChanceType"] = 3
	tThanksgivingPray_Reward[3314391][5]["ItemSelfChanceSum"] = 10000
	tThanksgivingPray_Reward[3314391][5]["ItemChance"] = 2000
	tThanksgivingPray_Reward[3314391][5]["RewardItem"] = {}
	tThanksgivingPray_Reward[3314391][5]["RewardItem"][1] = {}
	tThanksgivingPray_Reward[3314391][5]["RewardItem"][1]["Id"] = 3314324 -- 1天火鸡串串香外套[3314324][属性:11][叠加:1000][金币:0], 【表格】1天感恩节光效武器外套
	tThanksgivingPray_Reward[3314391][5]["RewardItem"][1]["Attr"] = "0 1" -- 1天火鸡串串香外套*1
	tThanksgivingPray_Reward[3314391][5]["RewardEffect"] = {}
	tThanksgivingPray_Reward[3314391][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[3314391][5]["RewardEffect"]["Effect"] = "angelwing"


	tThanksgivingPray_Reward[1] = {}
	-- ===1小时2倍经验
	-- ===索引:tThanksgivingPray_Reward[1]
	tThanksgivingPray_Reward[1]["LogId"] = 12001707
	tThanksgivingPray_Reward[1]["RewardMulExpTime"] = {}
	tThanksgivingPray_Reward[1]["RewardMulExpTime"]["Percent"] = 200 -- 2倍经验
	tThanksgivingPray_Reward[1]["RewardMulExpTime"]["Time"] = 1 -- 1小时2倍经验
	tThanksgivingPray_Reward[1]["RewardEffect"] = {}
	tThanksgivingPray_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksgivingPray_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


---------------------------------------------逻辑模块---------------------------------------------
--寻路
function ThanksgivingPray_Where(nNpcId)
	--获取玩家和NPC的地图ID
	local nUserId = Get_UserId()
	local nNpcMap = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId(nUserId)

	--判断是否在一张地图
	if nNowMapId == nNpcMap then
		NpcPosition_PathFind(nNpcId)
		return true
	else
		return false
	end
end

--105寻路
function ThanksgivingPray_Where105(nNpcId,nUserId)
	--获取玩家和NPC的地图ID
	local nUserId = nNowUserId or Get_UserId()
	local nNpcMap = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId(nUserId)

	--判断是否在一张地图
	if nNowMapId == nNpcMap then
		NpcPosition_PathFind(nNpcId)
		return true
	else
		return false
	end
end

--寻找前往跨服地图NPC
function ThanksgivingPray_FindFiveStar()
	local nChgMapNPCId = tThanksgivingPray_Cont["ChgMapNPCId"]
	local nPosX = Get_NpcPositionX(nChgMapNPCId)
	local nPosY = Get_NpcPositionY(nChgMapNPCId)

	--寻路到跨服地图NPC
	if not ThanksgivingPray_Where(nChgMapNPCId) then
			--不在同一张地图则提示前往
		Sys_MsgBox(string.format(tThanksgivingPray_Text["FindChgMapNpc"],nPosX,nPosY),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tThanksgivingPray_Text["FindChgMapNpc"],nPosX,nPosY))
	end
end

--前往感恩大厅
function ThanksgivingPray_FindYanHuiNpc105(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nYanHuiNpcId = tThanksgivingPray_Cont["YanHuiNPCId"]

	--前往感恩大厅
	ThanksgivingPray_Where105(nYanHuiNpcId,nUserId)
end

--寻找小精灵福福
function ThanksgivingPray_FindPray(nFlag,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPrayNpcId = tThanksgivingPray_Cont["MainNPC"][nFlag]

	--寻路到小精灵福福
	ThanksgivingPray_Where105(nPrayNpcId,nUserId)
end

-- 祈福
function ThanksgivingPray_Pray(nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nPrayNum = Get_TaskDetailData5(nTaskId, nUserId) or 0
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2

	--判断玩家是否处于祈福状态
	if not Task_ChkTaskDetailValue(nTaskId,"1",">=",1,nUserId) then
		--判断今日祈福次数
		if nPrayNum >= 3 then
			--提示玩家今日已经祈福过3次了，继续祈福只可获得1小时双倍经验
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			--Sys_MsgBox(tThanksgivingPray_Text["LaterThree105"],"ThanksgivingPray_Pray105</N>"..nNpcId,nil,nUserId)
		else
			ThanksgivingPray_Pray105(nNpcId)
		end
	else
		Sys_MsgBox(tThanksgivingPray_Text[nNation]["AlearyPray"],nil,nil,nUserId)
		User_TalkChannel2005(tThanksgivingPray_Text[nNation]["AlearyPray"],nUserId)
	end
end

-- 确认祈福
function ThanksgivingPray_Pray105(nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2

	-- 读条祈福
	local nSecs = tThanksgivingPray_Cont["Secs"]
	local sContent = tThanksgivingPray_Text[nNation]["PrayFive"]
	local nActionId = tThanksgivingPray_Cont["ActionId"]
	local sFunc = "ThanksgivingPray_SetExplore</N>"..nNpcId.."</N>"..nLanguages.."</N>"..nUserId
	User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
end

-- 读条祈福后
function ThanksgivingPray_SetExplore(nNpcId,nLanguages,nUserId)
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local sLanguages = tostring(nLanguages)
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2
	local sLanguagesName = tThanksgivingPray_Text["Languages"][nNation][nLanguages]
	local nGlobal = tThanksgivingPray_Global[nLanguages]
	local nPrayElfin = Get_SysDynaGlobalData1(nGlobal) or 0

	--祈福人数+1
	nPrayElfin = nPrayElfin + 1
	Sys_SetSynaGlobalData1(nGlobal,nPrayElfin)

	--祈福人数达到%d档全服通告
	for i,v in pairs(tThanksgivingPray_Cont["Score"]) do
		if nPrayElfin == v then
			Sys_SystemBroadcast(string.format(tThanksgivingPray_Text["Broadcast"][4],sLanguagesName,nPrayElfin))
		end
	end

	--祈福开始光效
	User_EffectAdd("self",tThanksgivingPray_Cont["PrayEffect"][1],nUserId)
	User_EffectAdd("self",tThanksgivingPray_Cont["PrayEffect"][2],nUserId)
	User_EffectAdd("self",tThanksgivingPray_Cont["PrayEffect"][3],nUserId)

	if Task_SetTaskDetailData1(nTaskId,1, nUserId) then
		-- NPC加光效
		ThanksgivingPray_AddEffect()
		--打LOG出提示
		Sys_SaveActionFestivalLog(tThanksgivingPray_Log["Pray"],nUserId)
		Sys_MsgBox(tThanksgivingPray_Text[nNation]["PrayFive105"],nil,nil,nUserId)
		User_TalkChannel2005(tThanksgivingPray_Text[nNation]["PrayFive105"],nUserId)
		
		--倒计时5分钟
		local nTime = tThanksgivingPray_Cont["SetTimer"]
		local sFunc = "ThanksgivingPray_GetFiveReward</N>"..nLanguages.."</N>"..nUserId
		User_SetTimer(nTime,sFunc,1,nUserId)
	end
end

-- 祈福结束领奖
function ThanksgivingPray_GetFiveReward(nLanguages,nUserId)
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nPrayNum = Get_TaskDetailData5(nTaskId, nUserId) or 0
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2

	--祈福结束删除光效
	User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][1],nUserId)
	User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][2],nUserId)
	User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][3],nUserId)
	--祈福结束光效
	User_EffectAdd("self",tThanksgivingPray_Cont["PrayEndEffect"],nUserId)
	--清除祈福状态掩码
	Task_SetTaskDetailData1(nTaskId,0, nUserId)
	--判断祈福次数
	if Task_SetTaskDetailData5(nTaskId,nPrayNum + 1, nUserId) then
		if not Task_ChkTaskDetailValue(nTaskId,"5",">=",4,nUserId) then
			if ThanksgivingPray_RewardMail(0,nLanguages,nUserId) then
				--打LOG出提示
				Sys_SaveActionFestivalLog(tThanksgivingPray_Log["PrayFive"],nUserId)
				
				local nPrayResidue = 2 - nPrayNum
				if nPrayResidue == 0 then
					Sys_MsgBox(tThanksgivingPray_Text[nNation]["BeforeThreeThird"],nil,nil,nUserId)
					User_TalkChannel2005(tThanksgivingPray_Text[nNation]["BeforeThreeThird"],nUserId)
				else
					Sys_MsgBox(string.format(tThanksgivingPray_Text[nNation]["BeforeThree"],nPrayResidue),nil,nil,nUserId)
					User_TalkChannel2005(string.format(tThanksgivingPray_Text[nNation]["BeforeThree"],nPrayResidue),nUserId)
				end
			end
		else
			--祈福过3次，继续祈福只可获得1小时双倍经验
			if RewardTemplate_UseItemAndMsg(tThanksgivingPray_Reward[1],nUserId) then 
				Sys_MsgBox(tThanksgivingPray_Text[nNation]["LaterThree"],nil,nil,nUserId)
				User_TalkChannel2005(tThanksgivingPray_Text[nNation]["LaterThree"],nUserId)
			end
		end
	end
end

--语种侠士祈福豪礼
function ThanksgivingPray_DialogThanksLanguages(nNpcId)
	local nUserId = Get_UserId()
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local sLanguages = tostring(nLanguages)
	local nLevel = ThanksgivingPray_GetLevel(nLanguages)
	local nGlobal = tThanksgivingPray_Global[nLanguages]
	local nPrayElfin = Get_SysDynaGlobalData1(nGlobal) or 0
	local nTaskId = tThanksgivingPray_Cont["RewardTaskId"]
	local nData = Get_TaskDetail(nTaskId,sLanguages,nUserId) or 0

	--判断阶段奖励是否全部领完
	if not Task_ChkTaskDetailValue(nTaskId,sLanguages,">=",5,nUserId) then
		tNpcGossip[nNpcId]["tOption2-1"] = {211}
	else
		tNpcGossip[nNpcId]["tOption2-1"] = {212}
	end

	local tLevelReward = {}
	if nData == 0 then
		tLevelReward[1] = tThanksgivingPray_Text["LevelReward1"][nLanguages]["Light"]
	else
		tLevelReward[1] = tThanksgivingPray_Text["LevelReward1"][nLanguages]["Gray"]
	end

	for j = 2,5 do
		if nData >= j then
			tLevelReward[j] = string.format(tThanksgivingPray_Text["Color"]["Gray"],tThanksgivingPray_Text["LevelReward"][nLanguages][j])
		else
			tLevelReward[j] = string.format(tThanksgivingPray_Text["Color"]["Light"],tThanksgivingPray_Text["LevelReward"][nLanguages][j])
		end
	end

	tNpcGossip[nNpcId]["Text221"] = string.format(tThanksgivingPray_Text[nNpcId]["Text221"],tLevelReward[1])
	tNpcGossip[nNpcId]["Text215"] = string.format(tThanksgivingPray_Text[nNpcId]["Text215"],tLevelReward[2])
	tNpcGossip[nNpcId]["Text216"] = string.format(tThanksgivingPray_Text[nNpcId]["Text216"],tLevelReward[3])
	tNpcGossip[nNpcId]["Text217"] = string.format(tThanksgivingPray_Text[nNpcId]["Text217"],tLevelReward[4])
	tNpcGossip[nNpcId]["Text218"] = string.format(tThanksgivingPray_Text[nNpcId]["Text218"],tLevelReward[5])
	tNpcGossip[nNpcId]["Text220"] = string.format(tThanksgivingPray_Text[nNpcId]["Text220"],nPrayElfin)

	return true
end

-- 领取阶段奖励
function ThanksgivingPray_GetPrayReward(nNpcId)
	local nUserId = Get_UserId()
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local sLanguages = tostring(nLanguages)
	local nTaskId = tThanksgivingPray_Cont["RewardTaskId"]
	local nLevel = ThanksgivingPray_GetLevel(nLanguages)
	local nData = Get_TaskDetail(nTaskId,sLanguages,nUserId)

	ThanksgivingPray_GetScoreReward(nLevel,nData,nLanguages,nUserId)
end

-- 判断玩家所在阶段
function ThanksgivingPray_GetLevel(nLanguages)
	local nUserId = Get_UserId()
	--该语种对应全局表
	local nGlobal = tThanksgivingPray_Global[nLanguages]
	--获取语种当前祈福人数
	local nNum = Get_SysDynaGlobalData1(nGlobal)

	--各阶段积分要求
	local nScore1 = tThanksgivingPray_Cont["Score"][1]
	local nScore2 = tThanksgivingPray_Cont["Score"][2]
	local nScore3 = tThanksgivingPray_Cont["Score"][3]
	local nScore4 = tThanksgivingPray_Cont["Score"][4]
	local nScore5 = tThanksgivingPray_Cont["Score"][5]

	--玩家所在阶段
	local nLevel = 0
	--判断玩家所在阶段
	if nNum >= nScore5 then 
		nLevel = 5
	elseif nNum >= nScore4 then 
		nLevel = 4
	elseif nNum >= nScore3 then 
		nLevel = 3
	elseif nNum >= nScore2 then 
		nLevel = 2
	elseif nNum >= nScore1 then 
		nLevel = 1
	else 
		nLevel = 0
	end

	return nLevel
end

--判断阶段奖励领取并发奖
function ThanksgivingPray_GetScoreReward(nLevel,nData,nLanguages,nUserId)
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2

	--判断是否已领取该阶段所有奖励
	local bReward = false
	if nData ~= nil and nData >= nLevel then 
		bReward = true
	end

	--累计到%d再来领取奖励
	local nNextLevel = nLevel+1
	local nNeedScore = tThanksgivingPray_Cont["Score"][nNextLevel]

	if bReward == true then 
		--已领取该阶段所有奖励
		Sys_MsgBox(string.format(tThanksgivingPray_Text[nNation]["NoPrayDayReward"],nNeedScore),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tThanksgivingPray_Text[nNation]["NoPrayDayReward"],nNeedScore),nUserId)
	else
		if nLevel ~= nil and nLevel > 0 then
			--判断可领取的奖励
			for i = 1, nLevel do
				if nData ~= nil and nData < i then 
					--打掩码给奖
					ThanksgivingPray_LevelRewardMail(i,nLanguages)
				end
			end
		end
	end
end

--阶段性奖励邮件发奖
function ThanksgivingPray_LevelRewardMail(nFlag,nLanguages)
	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nOldUserId = Get_TaskDetailData4(nTaskId,nUserId) or 0
	local nTaskId2 = tThanksgivingPray_Cont["RewardTaskId"]
	local sLanguages = tostring(nLanguages)
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2

	if nOldUserId ~= 0 then
		if Task_SetTaskDetailData(nTaskId2,nFlag,sLanguages,nUserId) then
			if ThanksgivingPray_RewardMail(nFlag,nLanguages,nUserId) then
				-- Sys_MsgBox(tThanksgivingPray_Text["PrayDayReward"],nil,nil,nUserId)
				User_TalkChannel2005(tThanksgivingPray_Text[nNation]["PrayDayReward"],nUserId)
				Sys_SaveActionFestivalLog(string.format(tThanksgivingPray_Log["Level"][nFlag],nLanguages),nOldUserId)
			end
		end
	end
end

--邮件发奖
function ThanksgivingPray_RewardMail(nFlag,nLanguages,nUserId)
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nServerId = Get_UserServerId(nUserId)
	local nOldUserId = Get_TaskDetailData4(nTaskId,nUserId) or 0
	local nNation = Get_TaskDetailData2(nTaskId,nUserId) or 2
	
	if nOldUserId ~= 0 then
		local nActionId = tThanksgivingPray_Cont["PayrFive"]
		local sSender = tThanksgivingPray_Text["Elfin"][nNation][nLanguages]
		local sTitle = tThanksgivingPray_Text["Mail"][nNation]["PrayFive"]["Title"]
		local sContent = string.format(tThanksgivingPray_Text["Mail"][nNation]["PrayFive"]["Content"],tThanksgivingPray_Text["Elfin"][nNation][nLanguages])
		
		if nFlag ~= 0 then
			nActionId = tThanksgivingPray_Cont["PrayDayReward"][nFlag]
			sTitle = tThanksgivingPray_Text["Mail"][nNation]["PrayDayReward"]["Title"]
			sContent = string.format(tThanksgivingPray_Text["Mail"][nNation]["PrayDayReward"]["Content"],tThanksgivingPray_Text["Languages"][nNation][nLanguages])
		end
		if Sys_SendMail(nOldUserId,0,0,nActionId,0,30,sSender,sTitle,sContent,nServerId) then
			return true
		else
			return false
		end
	else
		return false
	end
end

--上线触发
function ThanksgivingPray_Login()
	local nUserId = Get_UserId()
	local nTaskId1 = tThanksgivingPray_Cont["TaskId"]
	local nTaskId2 = tThanksgivingPray_Cont["RewardTaskId"]

	ThanksgivingPray_LoginTask(nTaskId1)
	ThanksgivingPray_LoginTask(nTaskId2)
	--隔天重置掩码
	ThanksgivingPray_CleanNextDay()
end

--自动接任务
function ThanksgivingPray_LoginTask(nTaskId)
	local nUserId = Get_UserId()

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ThanksgivingPray"]["ActTime"]) then
		if Task_ChkTaskDetail(nTaskId,0) then
			Task_DelTaskDetail(nTaskId)
		end
		return
	end

	--判断等级
	local nLevel = tThanksgivingPray_Cont["Level"]
	local nMetempsychosis = tThanksgivingPray_Cont["Metempsychosis"]

	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nTaskId,0) then
		Task_AddTaskDetail(nTaskId,0)
		--播放光效
		User_EffectAdd("self",tThanksgivingPray_Cont["TaskEffect"])
	end
end

--增加任务值
function ThanksgivingPray_AddTask(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["RewardTaskId"]

	--判断是否接受任务
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end

	local nData = Get_TaskDetailData5(nTaskId, nUserId) or 0

	Task_SetTaskDetailData5(nTaskId,nData + 1, nUserId)

	--任务是否完成
	ThanksgivingPray_TaskComplete(nTaskId,nUserId)
end

--任务完成
function ThanksgivingPray_TaskComplete(nTaskId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()

	--判断是否接受任务
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return
	end

	local nData = Get_TaskDetailData5(nTaskId, nUserId)

	if nData ~= nil and nData > 0 then
		Task_SetTaskDetailCompleteFlag(nTaskId,1, nUserId)
		--播放光效
		User_EffectAdd("self",tThanksgivingPray_Cont["TaskEffect"])
	end
end

--【祈福活动开启前，全服公告】
function ThanksgivingPray_InAdvance()
	--全服通告
	Sys_SystemBroadcast(tThanksgivingPray_Text["Broadcast"][1])
end

--【祈福活动开启中，全服公告】
function ThanksgivingPray_PrayStart()
	--全服通告
	Sys_SystemBroadcast(tThanksgivingPray_Text["Broadcast"][2])
end

-- 隔天重置task
function ThanksgivingPray_CleanNextDay()
	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nTaskId1 = tThanksgivingPray_Cont["RewardTaskId"]
	local nEvent = tThanksgivingPray_Stc[101]["EventType"]
	local nType = tThanksgivingPray_Stc[101]["DataType"]

	-- 隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		if not Task_ChkTaskDetail(nTaskId1,nUserId) then
			Task_AddTaskDetail(nTaskId1)
		else
			for i = 1,5 do
				Task_SetTaskDetailData(nTaskId1,0,tostring(i),nUserId)
			end
		end
		if Task_ChkTaskDetail(nTaskId,nUserId) then
			Task_SetTaskDetailData1(nTaskId,0, nUserId)
			Task_SetTaskDetailData3(nTaskId,0, nUserId)
			Task_SetTaskDetailData5(nTaskId,0, nUserId)
			Task_SetTaskDetailData6(nTaskId,0, nUserId)
			Task_SetTaskDetailData7(nTaskId,0, nUserId)
		else
			if not Task_AddTaskDetail(nTaskId) then
				return
			end
		end
		
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

--计算并清理每日祈福人数
function ThanksgivingPray_ResetGlobalData()
	if not Sys_ChkFullTime(tActivityTime["ThanksgivingPray"]["ActTime"]) then
		return
	end
	for i,v in pairs(tThanksgivingPray_Global) do
		if Get_SysDynaGlobalData3(v) >= 1 then
			return
		end
		local nPrayElfin = Get_SysDynaGlobalData1(v) or 0
		Sys_SetSynaGlobalData2(v,nPrayElfin)
		Sys_SetSynaGlobalData1(v,0)
		Sys_SetSynaGlobalData3(v,1)
	end
end

--重置清空标记位
function ThanksgivingPray_ResetGlobalData3()
	if not Sys_ChkFullTime(tActivityTime["ThanksgivingPray"]["ActTime"]) then
		return
	end
	for i,v in pairs(tThanksgivingPray_Global) do
		Sys_SetSynaGlobalData3(v,0)
	end
end

-- 随机礼包逻辑
function ThanksgivingPray_OpenRandomPackage(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end

	local nUserId = Get_UserId()
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tThanksgivingPray_Reward, nItemId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tThanksgivingPray_Text["NoSpace"],nSpace),nil,nil,nUserId)
		return
	end

	RewardTemplate_RandomReward(tThanksgivingPray_Reward,nItemId)
end

----进入跨国
function ThanksgivingPray_GotMulMap()
	-- 隔天重置
	ThanksgivingPray_Login()

	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	-- local nTaskId3 = tThanksgivingPray_Cont["MainTaskId"]

	--任务面板完成
	-- Task_SetTaskDetailData4(nTaskId3,1, nUserId)
	-- ThanksGiving2019Dinner_FinshJudge(nUserId)

	--获取国家存入taskid中
	local nFlag = 0
	for i,v in pairs(tThanksgivingPray_Global) do
		if Get_SysDynaGlobalData0(v) >= 1 then
			nFlag = tThanksgivingPray_Cont["Global"][v]
		end
	end
	Task_SetTaskDetailData2(nTaskId,nFlag) 
	--记录玩家本服userid
	Task_SetTaskDetailData4(nTaskId,nUserId)
	
	--判断玩家是否处于祈福状态
	if Task_ChkTaskDetailValue(nTaskId,"1",">=",1,nUserId) then
		--删除祈福光效
		User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][1],nUserId)
		User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][2],nUserId)
		User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][3],nUserId)
		--清除祈福状态掩码
		Task_SetTaskDetailData1(nTaskId,0, nUserId)
	end
	
	--进入跨国
	if BanquetBance_GotMulMap() then
		--标记玩家今日来祈福
		Task_SetTaskDetailData3(nTaskId,1, nUserId)
		Sys_SaveActionFestivalLog(tThanksgivingPray_Log["GoGlobal"],nUserId)
		
		--寻路去祈福
		--Sys_MsgBox(tThanksgivingPray_Text["ChgMap105"] ,"ThanksgivingPray_FindPray</N>"..nFlag.."</N>"..nUserId,nil,nUserId)
		User_TalkChannel2005(tThanksgivingPray_Text[nFlag]["ChgMapMsg"],nUserId)
	end
end

	-- NPC加光效
function ThanksgivingPray_AddEffect()
	local nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect

	for i,v in pairs(tThanksgivingPray_Cont["MainNPC"]) do
		nPosX = tThanksgivingPray_Map[v]["PosX"]
		nPosY = tThanksgivingPray_Map[v]["PosY"]
		
		if v == tThanksgivingPray_Cont["MainNPC"][1] then
			sYhrsjsEffect = tThanksgivingPray_Effect["yhrsjs"]
			sYhzbzEffect = tThanksgivingPray_Effect["yhzbz"]
		else
			sYhrsjsEffect = tThanksgivingPray_Effect["yhrsjs_y"]
			sYhzbzEffect = tThanksgivingPray_Effect["yhzbz_y"]
		end
		
		-- NPC显示地图祈福人数光效
		ThanksgivingPray_AddNpcEffect(v,nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
	end
end

-- NPC显示地图祈福人数光效
function ThanksgivingPray_AddNpcEffect(nNpcId,nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
-- 删除原有NPC光效
	ThanksgivingPray_RemoveNpcEffect(nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)

	-- 语种祈福人数
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local nGlobalData = Get_SysDynaGlobalData1(tThanksgivingPray_Global[nLanguages])
	local nLen = string.len(tostring(nGlobalData))
	local nMapId = tThanksgivingPray_Cont["GlobalMapId"]

	if nGlobalData <= 0 then
		local nLen = 1
		local i = 1
		Map_Effect(nMapId,nPosX-i,nPosY+i-8,tThanksgivingPray_Effect[0])
		Map_Effect(nMapId,nPosX-nLen,nPosY+nLen,sYhrsjsEffect)
		return
	end
	
	for i = 1,nLen do
		local nIndex
		if i == 1 then
			nIndex = nGlobalData%10
		else
			nIndex = math.modf((nGlobalData%(10^i))/(10^(i-1)))
		end
		Map_Effect(nMapId,nPosX-i,nPosY+i-8,tThanksgivingPray_Effect[nIndex])
	end
	Map_Effect(nMapId,nPosX-nLen,nPosY+nLen,sYhrsjsEffect)
end

-- 删除NPC光效
function ThanksgivingPray_RemoveNpcEffect(nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
	local nMapId = tThanksgivingPray_Cont["GlobalMapId"]
	local nLen = 10
	for i = 1,nLen do
		for j = 0,9 do
			Map_Effect(nMapId,nPosX-i,nPosY+i-8,tThanksgivingPray_Effect[j],1)
		end
		Map_Effect(nMapId,nPosX-i,nPosY+i,sYhrsjsEffect,1)
	end
	Map_Effect(nMapId,nPosX-1,nPosY+1,sYhzbzEffect,1)
end

--小精灵主对白
function ThanksgivingPray_DialogThanksMain(nNpcId)
	local nUserId = Get_UserId()
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local sLanguages = tostring(nLanguages)
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nPrayNum = Get_TaskDetailData5(nTaskId, nUserId) or 0
	local nTaskId2 = tThanksgivingPray_Cont["RewardTaskId"]
	local nLevel = ThanksgivingPray_GetLevel(nLanguages)

	--"我要祈福（%d/3）"
	tNpcGossip[nNpcId]["Option111"] = string.format(tThanksgivingPray_Text[nNpcId]["Option111"],nPrayNum)

	-- NPC加光效
	ThanksgivingPray_AddEffect()
	return true
end

--离开跨服二次确认
function ThanksgivingPray_DialogThanksChgMap(nNpcId)
	local nUserId = Get_UserId()
	local nLanguages = tThanksgivingPray_Cont["Languages"][nNpcId]
	local sLanguages = tostring(nLanguages)
	local nTaskId = tThanksgivingPray_Cont["TaskId"]
	local nPrayNum = Get_TaskDetailData5(nTaskId, nUserId) or 0
	local nTaskId2 = tThanksgivingPray_Cont["RewardTaskId"]
	local nLevel = ThanksgivingPray_GetLevel(nLanguages)

	--判断玩家是否处于祈福状态
	if not Task_ChkTaskDetailValue(nTaskId,"1",">=",1,nUserId) then
		--判断今日祈福次数
		if not Task_ChkTaskDetailValue(nTaskId,"5",">=",3,nUserId) then
			--"我要祈福（%d/3）"
			tNpcGossip[nNpcId]["Option232"] = string.format(tThanksgivingPray_Text[nNpcId]["Option232"],nPrayNum)
			LinkNpcGossipFunc_New(nNpcId,"3-2")
		else
			--回到玩家所属服务器
			BanquetBance_DelEffect(nUserId)
			Sys_ExitOS(nUserId)
			-- if Sys_ExitOS(nUserId) then
				--判断玩家参加感恩宴会
				-- if not Task_ChkTaskDetailValue(nTaskId,"6",">=",1,nUserId) then
					--玩家未参加感恩宴会,105提示玩家前往感恩大厅
					-- Sys_MsgBox(tThanksgivingPray_Text["FindYanHuiNpc105"],"ThanksgivingPray_FindYanHuiNpc105</N>"..nUserId,nil,nUserId)
				-- end
			-- end
		end
	else
		--提示玩家离开会解除祈福状态
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		--Sys_MsgBox(tThanksgivingPray_Text["PrayChgMap"],"</F>ThanksgivingPray_DelPray</N>"..nUserId,nil,nUserId)
	end
end

-- 玩家回到本服
function ThanksgivingPray_ChgMap()
	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]

	--判断玩家是否处于祈福状态
	if not Task_ChkTaskDetailValue(nTaskId,"1",">=",1,nUserId) then
		--回到玩家所属服务器
		BanquetBance_DelEffect(nUserId)
		Sys_ExitOS(nUserId)
	else
		--提示玩家离开会解除祈福状态
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

-- 离开前解除祈福状态
function ThanksgivingPray_DelPray()
	local nUserId = Get_UserId()
	local nTaskId = tThanksgivingPray_Cont["TaskId"]

	--回到玩家所属服务器
	BanquetBance_DelEffect(nUserId)
	if Sys_ExitOS(nUserId) then
		--祈福结束删除光效
		User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][1],nUserId)
		User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][2],nUserId)
		User_EffectDel("self",tThanksgivingPray_Cont["PrayEffect"][3],nUserId)
		--清除祈福状态掩码
		Task_SetTaskDetailData1(nTaskId,0, nUserId)
	end
end

--获取掩码值
function ThanksgivingPray_GetStcValue(nIndex,nUserId)
	local nEvent = tThanksgivingPray_Stc[nIndex]["EventType"]
	local nType = tThanksgivingPray_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)

	return nData
end

--设置掩码值（定值）
function ThanksgivingPray_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tThanksgivingPray_Stc[nIndex]["EventType"]
	local nType = tThanksgivingPray_Stc[nIndex]["DataType"]

	--打掩码、时间戳
	if Task_SetStatistic(nEvent,nType,nData,1,nUserId) then 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--设置掩码值（增加）
function ThanksgivingPray_AddStatistic(nIndex,nData,nUserId)
	local nEvent = tThanksgivingPray_Stc[nIndex]["EventType"]
	local nType = tThanksgivingPray_Stc[nIndex]["DataType"]

	--打掩码、时间戳
	if Task_AddStatistic(nEvent,nType,nData,1,nUserId) then 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function ThanksgivingPray_ClearStcInterval(nIndex,nUserId)
	local nEvent = tThanksgivingPray_Stc[nIndex]["EventType"]
	local nType = tThanksgivingPray_Stc[nIndex]["DataType"]

	--判断隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--判断背包空间
function ThanksgivingPray_CheckLeftSpace(nIndex,nUserId)
	if not User_CheckLeftSpace(nIndex,nUserId) then
		Sys_MsgBox(string.format(tThanksgivingPray_Text["NoSpace"],nIndex),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tThanksgivingPray_Text["NoSpace"],nIndex),nUserId)
		return false
	else
		return true
	end
end


---------------------------------------------NPC模块---------------------------------------------
--跨国感恩大使
tNpcFace[5402] = 3
tNpcGossip[25577] = tNpcGossip[25577] or DefaultNpc:new{}
tNpcGossip[25577]["DialogueText"] = tThanksgivingPray_Text[25577]
tNpcGossip[25577]["OptionHidden"] = 1

--活动时间前
tNpcGossip[25577]["Text1-1"] = {111,112,114,115,116,117,118}
tNpcGossip[25577]["tOption1-1"] = {111}
tNpcGossip[25577]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThanksgivingPray"]["ActTime"])
end

--活动时间后
tNpcGossip[25577]["Text1-2"] = {111,112,121}
tNpcGossip[25577]["tOption1-2"] = {121}
tNpcGossip[25577]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksgivingPray"]["ActTime"])
end

--活动时间内
tNpcGossip[25577]["Text1-3"] = {111,112,141,142,131,132,116,117,118}
tNpcGossip[25577]["tOption1-3"] = {141,142,131}
tNpcGossip[25577]["ChkFunc1-3"] = function()
	local nUserId = Get_UserId()
	local nLevel = tThanksgivingPray_Cont["Level"]
	local nMetempsychosis = tThanksgivingPray_Cont["Metempsychosis"]
	-- local nTaskId3 = tThanksgivingPray_Cont["MainTaskId"]

	--隔天重置掩码
	ThanksgivingPray_Login()
	-- ThanksGiving2019Dinner_DayClear(nTaskId3)

	--判断活动时间
	if Sys_ChkFullTime(tActivityTime["ThanksgivingPray"]["ActTime"]) then
		--判断等级达到
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			--等级达到
			tNpcGossip[25577]["Text1-3"] = {111,112,141,142,116,118}
			tNpcGossip[25577]["tOption1-3"] = {141,142}
			return true
		else
			--等级不足
			tNpcGossip[25577]["Text1-3"] = {111,112,131,132,116,117,118}
			tNpcGossip[25577]["tOption1-3"] = {131}
			return true
		end
	else
		--不在活动时间内
		return false
	end
end
tNpcGossip[25577]["OptionFunc141"] = "ThanksgivingPray_GotMulMap"--进入极乐岛
tNpcGossip[25577]["OptionFunc142"] = "ThanksgivingPray_Where</N>25450"--我要去抓捕火鸡


--小精灵（中）
tNpcFace[2160] = 177
--小精灵（英）
tNpcFace[2161] = 125
--小精灵（西）
tNpcFace[2162] = 124
--小精灵（阿）
tNpcFace[2163] = 136

for k,v in pairs(tThanksgivingPray_Cont["MainNPC"]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["DialogueText"] = tThanksgivingPray_Text[v]
	tNpcGossip[v]["OptionHidden"] = 1
	
	tNpcGossip[v]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
	tNpcGossip[v]["tOption1-1"] = {111,112,114,113}
	tNpcGossip[v]["ChkFunc1-1"] = function()
		return ThanksgivingPray_DialogThanksMain(v)
	end
	tNpcGossip[v]["OptionFunc111"] = "ThanksgivingPray_Pray</N>"..v
	tNpcGossip[v]["OptionPoint112"] = "2-1"
	tNpcGossip[v]["OptionFunc113"] = "ThanksgivingPray_DialogThanksChgMap</N>"..v
	tNpcGossip[v]["OptionFunc114"] = "ThanksgivingPray_Where</N>25444"
	
	--侠士祈福豪礼
	tNpcGossip[v]["Text2-1"] = {211,212,213,214,221,215,216,217,218,219,220}
	tNpcGossip[v]["tOption2-1"] = {211,212}
	tNpcGossip[v]["ChkFunc2-1"] = function()
		return ThanksgivingPray_DialogThanksLanguages(v)
	end
	tNpcGossip[v]["OptionFunc211"] = "ThanksgivingPray_GetPrayReward</N>"..v
	
	--祈福状态离开跨服二次确认
	tNpcGossip[v]["Text3-1"] = {111,112,241}
	tNpcGossip[v]["tOption3-1"] = {241,242}
	tNpcGossip[v]["OptionFunc241"] = "ThanksgivingPray_DelPray"
	
	--还有祈福奖励次数离开二次确认
	tNpcGossip[v]["Text3-2"] = {111,112,231}
	tNpcGossip[v]["tOption3-2"] = {231,232}
	tNpcGossip[v]["OptionFunc231"] = "ThanksgivingPray_ChgMap"
	tNpcGossip[v]["OptionFunc232"] = "ThanksgivingPray_Pray</N>"..v
	
	--今日已经祈福过3次
	tNpcGossip[v]["Text3-3"] = {111,112,251}
	tNpcGossip[v]["tOption3-3"] = {251,252}
	tNpcGossip[v]["OptionFunc251"] = "ThanksgivingPray_Pray105</N>"..v
end


---------------------------------------------物品模块---------------------------------------------
-- 随机礼包判断
tItem[3314390] = tItem[3314390] or {}
tItem[3314390]["Function"] = function(nItemId,sItemName)
	ThanksgivingPray_OpenRandomPackage(nItemId)
end
tItem[3314391] = tItem[3314390]


---------------------------------------------上线触发---------------------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,ThanksgivingPray_Login)


---------------------------------------------时间自检---------------------------------------------
-- 计算并清理每日祈福人数
-- local tThanksgivingPray_ResetGlobal = {}
	-- tThanksgivingPray_ResetGlobal["ActivityTime"] = tActivityTime["ThanksgivingPray"]["ActTime"]
	-- tThanksgivingPray_ResetGlobal["Type"] = 2
	-- tThanksgivingPray_ResetGlobal["TimeType"] = 4
	-- tThanksgivingPray_ResetGlobal["Time"] = "00:00 00:02"
	-- tThanksgivingPray_ResetGlobal["Func"] = ThanksgivingPray_ResetGlobalData
-- table.insert(tSystemTime_InitialData,tThanksgivingPray_ResetGlobal)

-- 重置清空标记位
-- local tThanksgivingPray_ResetGlobal3 = {}
	-- tThanksgivingPray_ResetGlobal3["ActivityTime"] = tActivityTime["ThanksgivingPray"]["ActTime"]
	-- tThanksgivingPray_ResetGlobal3["Type"] = 2
	-- tThanksgivingPray_ResetGlobal3["TimeType"] = 4
	-- tThanksgivingPray_ResetGlobal3["Time"] = "00:03 00:04"
	-- tThanksgivingPray_ResetGlobal3["Func"] = ThanksgivingPray_ResetGlobalData3
-- table.insert(tSystemTime_InitialData,tThanksgivingPray_ResetGlobal3)


-- 祈福时间到【全服公告】
-- local tThanksgivingPray_PrayStart = {}
	-- tThanksgivingPray_PrayStart["ActivityTime"] = tActivityTime["ThanksgivingPray"]["ActTime"]
	-- tThanksgivingPray_PrayStart["Type"] = 2
	-- tThanksgivingPray_PrayStart["TimeType"] = 4
	-- tThanksgivingPray_PrayStart["Multiple"] = {}
	-- tThanksgivingPray_PrayStart["Multiple"][1] = "00:00 00:01"
	-- tThanksgivingPray_PrayStart["Multiple"][2] = "01:00 01:01"
	-- tThanksgivingPray_PrayStart["Multiple"][3] = "02:00 02:01"
	-- tThanksgivingPray_PrayStart["Multiple"][4] = "03:00 03:01"
	-- tThanksgivingPray_PrayStart["Multiple"][5] = "04:00 04:01"
	-- tThanksgivingPray_PrayStart["Multiple"][6] = "05:00 05:01"
	-- tThanksgivingPray_PrayStart["Multiple"][7] = "06:00 06:01"
	-- tThanksgivingPray_PrayStart["Multiple"][8] = "07:00 07:01"
	-- tThanksgivingPray_PrayStart["Multiple"][9] = "08:00 08:01"
	-- tThanksgivingPray_PrayStart["Multiple"][10] = "09:00 09:01"
	-- tThanksgivingPray_PrayStart["Multiple"][11] = "10:00 10:01"
	-- tThanksgivingPray_PrayStart["Multiple"][12] = "11:00 11:01"
	-- tThanksgivingPray_PrayStart["Multiple"][13] = "12:00 12:01"
	-- tThanksgivingPray_PrayStart["Multiple"][14] = "13:00 13:01"
	-- tThanksgivingPray_PrayStart["Multiple"][15] = "14:00 14:01"
	-- tThanksgivingPray_PrayStart["Multiple"][16] = "15:00 15:01"
	-- tThanksgivingPray_PrayStart["Multiple"][17] = "16:00 16:01"
	-- tThanksgivingPray_PrayStart["Multiple"][18] = "17:00 17:01"
	-- tThanksgivingPray_PrayStart["Multiple"][19] = "18:00 18:01"
	-- tThanksgivingPray_PrayStart["Multiple"][20] = "19:00 19:01"
	-- tThanksgivingPray_PrayStart["Multiple"][21] = "20:00 20:01"
	-- tThanksgivingPray_PrayStart["Multiple"][22] = "21:00 21:01"
	-- tThanksgivingPray_PrayStart["Multiple"][23] = "22:00 22:01"
	-- tThanksgivingPray_PrayStart["Multiple"][24] = "23:00 23:01"
	-- tThanksgivingPray_PrayStart["Func"] = ThanksgivingPray_PrayStart
-- table.insert(tSystemTime_InitialData,tThanksgivingPray_PrayStart)


-- 【祈福活动开启前，全服公告】
-- local tThanksgivingPray_InAdvance = {}
	-- tThanksgivingPray_InAdvance["ActivityTime"] = tActivityTime["ThanksgivingPray"]["ActTime"]
	-- tThanksgivingPray_InAdvance["Type"] = 2
	-- tThanksgivingPray_InAdvance["TimeType"] = 4
	-- tThanksgivingPray_InAdvance["Multiple"] = {}
	-- tThanksgivingPray_InAdvance["Multiple"][1] = "00:57 00:58"
	-- tThanksgivingPray_InAdvance["Multiple"][2] = "01:57 01:58"
	-- tThanksgivingPray_InAdvance["Multiple"][3] = "02:57 02:58"
	-- tThanksgivingPray_InAdvance["Multiple"][4] = "03:57 03:58"
	-- tThanksgivingPray_InAdvance["Multiple"][5] = "04:57 04:58"
	-- tThanksgivingPray_InAdvance["Multiple"][6] = "05:57 05:58"
	-- tThanksgivingPray_InAdvance["Multiple"][7] = "06:57 06:58"
	-- tThanksgivingPray_InAdvance["Multiple"][8] = "07:57 07:58"
	-- tThanksgivingPray_InAdvance["Multiple"][9] = "08:57 08:58"
	-- tThanksgivingPray_InAdvance["Multiple"][10] = "09:57 09:58"
	-- tThanksgivingPray_InAdvance["Multiple"][11] = "10:57 10:58"
	-- tThanksgivingPray_InAdvance["Multiple"][12] = "11:57 11:58"
	-- tThanksgivingPray_InAdvance["Multiple"][13] = "12:57 12:58"
	-- tThanksgivingPray_InAdvance["Multiple"][14] = "13:57 13:58"
	-- tThanksgivingPray_InAdvance["Multiple"][15] = "14:57 14:58"
	-- tThanksgivingPray_InAdvance["Multiple"][16] = "15:57 15:58"
	-- tThanksgivingPray_InAdvance["Multiple"][17] = "16:57 16:58"
	-- tThanksgivingPray_InAdvance["Multiple"][18] = "17:57 17:58"
	-- tThanksgivingPray_InAdvance["Multiple"][19] = "18:57 18:58"
	-- tThanksgivingPray_InAdvance["Multiple"][20] = "19:57 19:58"
	-- tThanksgivingPray_InAdvance["Multiple"][21] = "20:57 20:58"
	-- tThanksgivingPray_InAdvance["Multiple"][22] = "21:57 21:58"
	-- tThanksgivingPray_InAdvance["Multiple"][23] = "22:57 22:58"
	-- tThanksgivingPray_InAdvance["Multiple"][24] = "23:57 23:58"
	-- tThanksgivingPray_InAdvance["Func"] = ThanksgivingPray_InAdvance
-- table.insert(tSystemTime_InitialData,tThanksgivingPray_InAdvance)

